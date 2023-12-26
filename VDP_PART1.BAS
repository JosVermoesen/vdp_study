   10 REM VDP VISUAL DISPLAY PROCESSOR
   20 REM SERIAL GRAPHICS TERMINAL
   30 REM TAKES A BBC BASIC TEXT OUTPUT
   40 REM STREAM AS INPUT AND THE OUTPUT
   50 REM IS VIA THE VGA CONNECTOR ON
   60 REM THE AGON LIGHT UNIT.
   70 REM IT WILL PROCESS ANY VALID BBC
   80 REM BASIC 'VDU' COMMANDS (STARTING
   90 REM WITH A CHARACTER BETWEEN 0 AND
  100 REM 31).
  110 MODE 3:COLOUR 147:COLOUR 15
  120 CLS
  130 PRINT:PRINT
  140 PRINT TAB((80-23)/2)"WELCOME BACK EVERYBODY!"
  145 COLOUR 1
  150 message$ = "Let's LEARN AGON - VDP!"
  160 l = LEN(message$)
  165 COLOUR 1
  170 PRINT:PRINT:PRINT:PRINT TAB((80-l)/2) message$
  175 COLOUR 3
  180 PRINT:PRINT:COLOUR 15:PRINT TAB(3)"The";:COLOUR 3:PRINT" Visual Display Processor";:COLOUR 15:PRINT" or";:COLOUR 3:PRINT" VDP";:COLOUR 15:PRINT" is responsible for:":PRINT:COLOUR 3
  185 key$=GET$
  190 PRINT TAB(5)"> the";:COLOUR 15:PRINT" video output";:COLOUR 3:PRINT" via the";:COLOUR 1:PRINT" VGA connector";:COLOUR 3:PRINT" on the Agon Light":PRINT
  195 key$=GET$
  200 PRINT TAB(5)"> the";:COLOUR 15:PRINT" audio output";:COLOUR 3:PRINT" from the";:COLOUR 1:PRINT" buzzer";:COLOUR 3:PRINT" and the";:COLOUR 1:PRINT" audio jack":PRINT:COLOUR 3
  205 key$=GET$
  210 PRINT TAB(5)"> the";:COLOUR 0:PRINT" keyboard input";:COLOUR 3:PRINT" via the";:COLOUR 1:PRINT" PS/2 connector":PRINT:COLOUR 15
  215 key$=GET$
  220 PRINT TAB(3)"It runs on the ESP32 co-processor and that is all I know about that...":PRINT:PRINT
  230 PRINT TAB(3)"Its input is a 'byte stream' from the eZ80.":PRINT
  240 PRINT TAB(3)"This stream contains a mixture of 'text' and 'control characters'.":PRINT
  245 text$ = "Bear with me now..."
  247 lt = LEN(text$)
  250 PRINT TAB((80-lt)/2) text$:key$=GET$:CLS:PRINT:PRINT
  260 PRINT TAB(3)"The 'control characters' are 'mapped' to the BBC BASIC VDU control chars.":PRINT
  270 COLOUR 0:PRINT TAB(5)"HOWEVER, I don't yet know what VDU or BBC BASIC VDU are!":PRINT:PRINT
  280 PRINT TAB(((80-LEN("sooooo..."))/2)) "Sooooo...":PRINT:PRINT:key$=GET$
  290 FOR x=1 TO 80:PRINT"_";:NEXT x
  295 PRINT:PRINT:PRINT
  296 COLOUR 9
  300 PRINT TAB((80-(LEN("...that's where I'll start...")))/2)"...THAT'S WHERE I'LL START...":key$=GET$
  310 COLOUR 128:COLOUR 3:CLS
  315 PRINT:PRINT:PRINT
  320 PRINT TAB(3)"What does VDU mean and how is it related to BBC BASIC VDU?":PRINT
  330 COLOUR 15:PRINT
  340 PRINT TAB(5)"VDU - it appears to stand for";:COLOUR 2:PRINT" Visual Display Unit.":COLOUR 15:PRINT
  350 COLOUR 7:PRINT TAB(5)"SOURCE: BBC BASIC for Agon.":PRINT TAB(13)">> Github: breakintoprogram/agon-docs":PRINT
  360 COLOUR 15
  370 PRINT TAB(5)"However, there's a circular reference back to the VDP documentation":PRINT:key$=GET$
  390 PRINT TAB(5)"So, it appears I am back to square 1...what to do?":PRINT
  400 COLOUR 143:COLOUR 22:CLS
  410 PRINT:PRINT:PRINT TAB(5)"The VDU command can be used within MOS and in BASIC":PRINT TAB(5)"It accepts values between 0 and 255.":PRINT
  420 PRINT:PRINT:PRINT TAB(5)"When used in MOS: the values are separated by spaces":PRINT TAB(5)"When used in BASIC: values are separated by commas.":PRINT
  430 key$=GET$:COLOUR 128 COLOUR 6:CLS
  435 PRINT:PRINT:FOR x=1 TO 80:PRINT"_";:NEXT x
  440 PRINT:PRINT TAB(5)"Example:":PRINT:COLOUR 14:PRINT TAB(10)"*VDU 17 15":PRINT:PRINT TAB(10)"This sets the text foreground colour to 15, which is WHITE":PRINT:PRINT
  450 key$=GET$
 3000 COLOUR 15

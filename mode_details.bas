   10 CLS
   20 INPUT "Select a MODE";mode
   30 MODE mode:COLOUR 143:COLOUR 0:CLS
   40 screen_width% = FN_getWordVDP(&0F)
   50 screen_height% = FN_getWordVDP(&11)
   60 num_columns% = FN_getByteVDP(&13)
   70 num_rows% = FN_getByteVDP(&14)
   80 num_colors% = FN_getByteVDP(&15)
   90 PRINT "MODE selected: ";mode
  100 PRINT "Screen width: ";screen_width%
  110 PRINT "Screen height: ";screen_height%
  112 PRINT "Number of columns: ";num_columns%
  114 PRINT "Number of rows: ";num_rows%
  116 PRINT "Number of colors: ";num_colors%
  120 END
  130 DEF FN_getByteVDP(var%)
  140 A% = &A0
  150 L% = var%
  160 := USR(&FFF4)
  170 :
  180 DEF FN_getWordVDP(var%)
  190 := FN_getByteVDP(var%) + 256 * FN_getByteVDP(var% + 1)

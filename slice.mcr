#!MC 1410
$!VarSet |MFBD| = 'C:\Program Files\Tecplot\Tecplot 360 EX 2014 R2'
$!WRITEDATASET  "U:\Priyam\pipe\new_files\tecplot_pipe\Slice_data\Slice_3904000.dat"
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDEDATASHARELINKAGE = YES
  ZONELIST =  [2]
  VARPOSITIONLIST =  [1-2,4-5]
  BINARY = NO
  USEPOINTFORMAT = YES
  PRECISION = 9
  TECPLOTVERSIONTOWRITE = TECPLOTCURRENT
$!RemoveVar |MFBD|
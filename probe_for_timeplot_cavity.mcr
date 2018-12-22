#!MC 1410
$!VarSet |MFBD| = 'R:\Cavity_April_2018\Slices'
$!FILECONFIG LOADONDEMAND{UNLOADSTRATEGY = MINIMIZEMEMORYUSE}
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'Time Series Plot'
  COMMAND = 'Command = CreatePlot StrandID = 1 XPos = 1.0 YPos = 0.0 ZPos = 0.1'
$!RemoveVar |MFBD|

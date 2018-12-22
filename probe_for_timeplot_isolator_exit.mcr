#!MC 1410
$!VarSet |MFBD| = 'C:\Program Files\Tecplot\Tecplot 360 EX 2017 R1'
$!FILECONFIG
LOADONDEMAND
{
	UNLOADSTRATEGY = MINIMIZEMEMORYUSE
}
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'Time Series Plot'
  COMMAND = 'Command = CreatePlot StrandID = 1 XPos = 102.0 YPos = 25.6 ZPos = 10'
$!RemoveVar |MFBD|

#!MC 1410
$!VarSet |MFBD| = 'C:\Program Files\Tecplot\Tecplot 360 EX 2017 R1'
$!FILECONFIG
LOADONDEMAND
{
	UNLOADSTRATEGY = MINIMIZEMEMORYUSE
}
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'Time Series Plot'
  COMMAND = 'Command = CreatePlot StrandID = 1 XPos = 49.3 YPos = 21.3 ZPos = 10'
$!RemoveVar |MFBD|

#!MC 1410
$!VarSet |MFBD| = 'V:\Priyam\Flapping_wing_DMD_biorthogonal\Recon_field\Recon_Multiple_Modes_5Modes'
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'Time Series Plot'
  COMMAND = 'Command = CreatePlot StrandID = 2 XPos = 232.26323812 YPos = -204.59161105 ZPos = 0'
$!PICK SETMOUSEMODE
  MOUSEMODE = SELECT
$!GLOBALTIME SOLUTIONTIME = 0.068965499999999999
$!FRAMECONTROL ACTIVATEATPOSITION
  X = 5.53429796356
  Y = 4.34860664523
$!PICK ADDATPOSITION
  X = 5.53429796356
  Y = 4.34860664523
  CONSIDERSTYLE = YES
$!FRAMECONTROL ACTIVATEBYNUMBER
  FRAME = 2
$!PICK SHIFT
  X = -0.411575562701
  Y = -0.814576634512
  PICKSUBPOSITION = TOPLEFT
$!PICK ADDATPOSITION
  X = 5.56002143623
  Y = 4.28001071811
  CONSIDERSTYLE = YES
$!PICK ADDATPOSITION
  X = 5.53429796356
  Y = 4.27143622722
  CONSIDERSTYLE = YES
$!PICK ADDATPOSITION
  X = 5.5
  Y = 4.22856377278
  CONSIDERSTYLE = YES
$!PICK ADDATPOSITION
  X = 7.30064308682
  Y = 4.34003215434
  CONSIDERSTYLE = YES
$!PICK ADDATPOSITION
  X = 7.10342979636
  Y = 4.25428724544
  CONSIDERSTYLE = YES
$!RemoveVar |MFBD|

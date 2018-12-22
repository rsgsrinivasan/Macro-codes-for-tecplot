#!MC 1410
$!VarSet |MFBD| = 'R:\Cavity_April_2018'
$!FILECONFIG
LOADONDEMAND
{
	UNLOADSTRATEGY = MINIMIZEMEMORYUSE
}
$!VARSET |ILOOP| = 961000
$!Loop 201
	$!READDATASET  '"|MFBD|\nodefile_|ILOOP|.plt" '
	  READDATAOPTION = NEW
	  RESETSTYLE = YES
	  VARLOADMODE = BYNAME
	  ASSIGNSTRANDIDS = YES
	  VARNAMELIST = '"X" "Y" "Z" "U" "V" "W" "RHO" "P" "T" "e" "mu" "loc" "Proc" "DUCROS"'
	$!EXTENDEDCOMMAND 
	  COMMANDPROCESSORID = 'CFDAnalyzer4'
	  COMMAND = 'SetFieldVariables ConvectionVarsAreMomentum=\'F\' UVar=4 VVar=5 WVar=6 ID1=\'Pressure\' Variable1=8 ID2=\'Density\' Variable2=7'
	$!EXTENDEDCOMMAND 
	  COMMANDPROCESSORID = 'CFDAnalyzer4'
	  COMMAND = 'Calculate Function=\'QCRITERION\' Normalization=\'None\' ValueLocation=\'Nodal\' CalculateOnDemand=\'F\' UseMorePointsForFEGradientCalculations=\'F\''
	$!WRITEDATASET  "|MFBD|\DMD_Data\New\M219_DMD_|ILOOP|.dat"
	  INCLUDETEXT = NO
	  INCLUDEGEOM = NO
	  INCLUDEDATASHARELINKAGE = YES
	  VARPOSITIONLIST =  [4-6,8,15]
	  BINARY = NO
	  USEPOINTFORMAT = YES
	  PRECISION = 9
	  TECPLOTVERSIONTOWRITE = TECPLOTCURRENT
$!VARSET |ILOOP| += 1000 
$!EndLoop	  
$!RemoveVar |MFBD|

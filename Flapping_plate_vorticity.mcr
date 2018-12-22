#!MC 1410
$!VarSet |MFBD| = 'C:\Program Files\Tecplot\Tecplot 360 EX 2017 R2'
$!FILECONFIG
LOADONDEMAND
{
	UNLOADSTRATEGY = MINIMIZEMEMORYUSE
}
$!VARSET |ILOOP| =1
$!Loop 150
	$!READDATASET  '"U:\Priyam\JetAnalysis\UVplane\Jet_plt\|ILOOP|.plt" '
	  READDATAOPTION = NEW
	  RESETSTYLE = YES
	  VARLOADMODE = BYNAME
	  ASSIGNSTRANDIDS = YES
	  VARNAMELIST = '"X" "Y" "U" "V"'
	$!EXTENDEDCOMMAND 
	  COMMANDPROCESSORID = 'CFDAnalyzer4'
	  COMMAND = 'SetFieldVariables ConvectionVarsAreMomentum=\'F\' UVar=3 VVar=4 WVar=0 ID1=\'NotUsed\' Variable1=0 ID2=\'NotUsed\' Variable2=0'
	$!ALTERDATA 
	  EQUATION = '{Z_vorticity} = ddx({V})-ddy({U})'
	$!WRITEDATASET  "U:\Priyam\JetAnalysis\UVplane\Jet_plt\Vorticity_files\|ILOOP|.dat"
	  INCLUDETEXT = NO
	  INCLUDEGEOM = NO
	  INCLUDEDATASHARELINKAGE = YES
	  BINARY = NO
	  USEPOINTFORMAT = YES
	  PRECISION = 9
	  TECPLOTVERSIONTOWRITE = TECPLOTCURRENT
	  $!VARSET |ILOOP| += 1
$!EndLoop
$!RemoveVar |MFBD|

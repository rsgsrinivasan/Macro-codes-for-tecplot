#!MC 1410
$!VarSet |MFBD| = 'C:\Program Files\Tecplot\Tecplot 360 EX 2017 R1'
$!FILECONFIG
LOADONDEMAND
{
	UNLOADSTRATEGY = MINIMIZEMEMORYUSE
}
$!VARSET |LOOPS| = 1503
$!Loop 500
	$!WRITEDATASET  "S:\pipe_DNS_Ascii\Tecplot_files\Energy_spectrum\Wall_Yplus_|LOOPS|.plt"
	  INCLUDETEXT = NO
	  INCLUDEGEOM = NO
	  INCLUDEDATASHARELINKAGE = YES
	  ZONELIST =  [|LOOPS|]
	  VARPOSITIONLIST =  [1,4-5]
	  BINARY = NO
	  USEPOINTFORMAT = YES
	  PRECISION = 9
	$!VARSET |LOOPS| += 1
$!EndLoop
$!RemoveVar |MFBD|
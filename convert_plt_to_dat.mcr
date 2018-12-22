#!MC 1410
$!FILECONFIG
LOADONDEMAND
{
	UNLOADSTRATEGY = MINIMIZEMEMORYUSE
}
$!VarSet |MFBD| = 'C:\Program Files\Tecplot\Tecplot 360 EX 2014 R2'
$!VARSET |ILOOP| =1000
$!Loop |NumZones|
	$!WRITEDATASET  "T:\MY_CODES_FEB_2017\Martin_w_rescale_dat_files\nodefile_|ILOOP|.dat"
	  INCLUDETEXT = NO
	  INCLUDEGEOM = NO
	  INCLUDEDATASHARELINKAGE = YES
	  ZONELIST =  [|Loop|]
	  BINARY = NO
	  USEPOINTFORMAT = YES
	  PRECISION = 9
	  TECPLOTVERSIONTOWRITE = TECPLOTCURRENT
	$!VARSET |ILOOP| += 1000
$!EndLoop

$!RemoveVar |MFBD|
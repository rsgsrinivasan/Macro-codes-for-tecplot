#!MC 1100
#
# This macro generates an equation text to compute an average, then
# computes the average for a temperature variable (T). First the equation
# string is generated:

$!FILECONFIG
LOADONDEMAND
{
	UNLOADSTRATEGY = MINIMIZEMEMORYUSE
}
$!Loop |NumZones|
  $!IF |Loop| == 1
  	$!AlterData
  		Equation = "{Pmean} = {P}[1]"
  $!Else
    $!AlterData
  		Equation = "{Pmean} = {Pmean}+{P}[|Loop|]"		
  $!ENDIF
$!EndLoop

$!AlterData
  		Equation = "{Pmean} = {Pmean}/|NumZones|"
		
$!AlterData
  		Equation = "{P_fluc} = {P}-{Pmean}"
		
$!Loop |NumZones|
  $!IF |Loop| == 1
	$!AlterData
		Equation = "{Prms} = {P_fluc}[1]*{P_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Prms} = {Prms}+{P_fluc}[|loop|]*{P_fluc}[|Loop|]"		
  $!ENDIF
$!EndLoop


$!AlterData		
		Equation = "{Prms} = sqrt({Prms}/|NumZones|)"
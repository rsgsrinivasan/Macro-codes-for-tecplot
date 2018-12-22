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
  $!IF |loop| == 1
  	$!AlterData
  		Equation = "{Prms} = {P}[1]*{P}[1]"
  $!Else
    $!AlterData
  		Equation = "{Prms} = {Prms}+{P}[|loop|]*{P}[|loop|]"		
  $!ENDIF
$!EndLoop

$!AlterData
  		Equation = "{Prms} = sqrt({Prms}/|NumZones|)"
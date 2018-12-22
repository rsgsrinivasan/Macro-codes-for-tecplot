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
		Equation = "{Max_V} = |MAXVAR[P]|"
  $!Else
	$!AlterData
		Equation = "{Max_V} = {Max_V}+|MAXVAR[P]|"		
  $!ENDIF
$!EndLoop



$!AlterData
  		Equation = "{Max_V} = {Max_V}"
		
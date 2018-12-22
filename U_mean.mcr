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
		Equation = "{Umean} = {U}[1]"
  $!Else
	$!AlterData
		Equation = "{Umean} = {Umean}+{U}[|loop|]"		
  $!ENDIF
$!EndLoop


$!AlterData
		Equation = "{Umean} = {Umean}/|NumZones|"
	
$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Tmean} = {T}[1]"
  $!Else
	$!AlterData
		Equation = "{Tmean} = {Tmean}+{T}[|loop|]"		
  $!ENDIF
$!EndLoop


$!AlterData
		Equation = "{Tmean} = {Tmean}/|NumZones|"
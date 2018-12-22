#!MC 1100
#
# This macro generates an equation text to compute an average, then
# computes the average for a temperature variable (T). First the equation
# string is generated:

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
		
$!AlterData
  		Equation = "{U_fluc} = {U}-{Umean}"
		
$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Urms} = {U_fluc}[1]*{U_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Urms} = {Urms}+{U_fluc}[|loop|]*{U_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop


$!AlterData		
		Equation = "{Urms} = sqrt({Urms}/|NumZones|)"
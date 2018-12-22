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
		

$!Loop |NumZones|
  $!IF |loop| == 1
  	$!AlterData
  		Equation = "{Vmean} = {V}[1]"
  $!Else
    $!AlterData
  		Equation = "{Vmean} = {Vmean}+{V}[|loop|]"		
  $!ENDIF
$!EndLoop

$!AlterData
  		Equation = "{Vmean} = {Vmean}/|NumZones|"
		
$!AlterData
  		Equation = "{V_fluc} = {V}-{Vmean}"
		
$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Vrms} = {V_fluc}[1]*{V_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Vrms} = {Vrms}+{V_fluc}[|loop|]*{V_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop


$!AlterData		
		Equation = "{Vrms} = sqrt({Vrms}/|NumZones|)"


$!Loop |NumZones|
  $!IF |loop| == 1
  	$!AlterData
  		Equation = "{Wmean} = {W}[1]"
  $!Else
    $!AlterData
  		Equation = "{Wmean} = {Wmean}+{W}[|loop|]"		
  $!ENDIF
$!EndLoop

$!AlterData
  		Equation = "{Wmean} = {Wmean}/|NumZones|"
		
$!AlterData
  		Equation = "{W_fluc} = {W}-{Wmean}"
		
$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Wrms} = {W_fluc}[1]*{W_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Wrms} = {Wrms}+{W_fluc}[|loop|]*{W_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop


$!AlterData		
		Equation = "{Wrms} = sqrt({Wrms}/|NumZones|)"
		
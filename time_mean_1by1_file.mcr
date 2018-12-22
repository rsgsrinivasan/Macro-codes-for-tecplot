#!MC 1100
#
# This macro generates an equation text to compute an average, then
# computes the average for a temperature variable (T). First the equation
# string is generated:

$!Loop |NumZones|
  $!IF |loop| == 1
  	$!AlterData
  		Equation = "{Pmean} = {P}[1]"
	$!AlterData
		Equation = "{Umean} = {U}[1]"
	$!AlterData
		Equation = "{Vmean} = {V}[1]"
	$!AlterData
		Equation = "{Wmean} = {W}[1]"
	$!AlterData
		Equation = "{RHOmean} = {RHO}[1]"
	$!AlterData
		Equation = "{Prms} = {P}[1]*{P}[1]"
  $!Else
    $!AlterData
  		Equation = "{Pmean} = {Pmean}+{P}[|loop|]"
	$!AlterData
		Equation = "{Umean} = {Umean}+{U}[|loop|]"
	$!AlterData
		Equation = "{Vmean} = {Vmean}+{V}[|loop|]"
	$!AlterData
		Equation = "{Wmean} = {Wmean}+{W}[|loop|]"
	$!AlterData
		Equation = "{RHOmean} = {RHOmean}+{RHO}[|loop|]"
	$!AlterData
		Equation = "{Prms} = {Prms}+{P}[|loop|]*{P}[|loop|]"
		
  $!ENDIF
$!EndLoop

$!AlterData
  		Equation = "{Pmean} = {Pmean}/|NumZones|"
$!AlterData
		Equation = "{Umean} = {Umean}/|NumZones|"
$!AlterData
		Equation = "{Vmean} = {Vmean}/|NumZones|"
$!AlterData
		Equation = "{Wmean} = {Wmean}/|NumZones|"
$!AlterData
		Equation = "{RHOmean} = {RHOmean}/|NumZones|"
$!AlterData		
		Equation = "{Prms} = sqrt({Prms}/|NumZones|)"
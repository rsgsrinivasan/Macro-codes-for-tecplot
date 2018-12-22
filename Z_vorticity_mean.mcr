#!MC 1100
#
# This macro generates an equation text to compute an average, then
# computes the average for a temperature variable (T). First the equation
# string is generated:


$!Loop |NumZones|
  $!IF |Loop| == 1
  	$!AlterData
  		Equation = "{Vortmean} = {Z_vorticity}[1]"
  $!Else
    $!AlterData
  		Equation = "{Vortmean} = {Vortmean}+{Z_vorticity}[|Loop|]"		
  $!ENDIF
$!EndLoop

$!AlterData
  		Equation = "{Vortmean} = {Vortmean}/|NumZones|"
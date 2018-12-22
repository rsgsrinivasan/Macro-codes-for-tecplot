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
  		Equation = "{Tmean} = {T}[1]"
  $!Else
    $!AlterData
  		Equation = "{Tmean} = {Tmean}+{T}[|loop|]"		
  $!ENDIF
$!EndLoop

$!AlterData
  		Equation = "{Tmean} = {Tmean}/|NumZones|"
		
$!AlterData
  		Equation = "{T_fluc} = {T}-{Tmean}"
		
$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Trms} = {T_fluc}[1]*{T_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Trms} = {Trms}+{T_fluc}[|loop|]*{T_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop


$!AlterData		
		Equation = "{Trms} = sqrt({Trms}/|NumZones|)"
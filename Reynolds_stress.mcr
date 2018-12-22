#!MC 1100
$!FILECONFIG
LOADONDEMAND
{
	UNLOADSTRATEGY = MINIMIZEMEMORYUSE
}
$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Ru'u'} = {RHO}[1]*{U_fluc}[1]*{U_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Ru'u'} = {Ru'u'}+{RHO}[|loop|]*{U_fluc}[|loop|]*{U_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop
$!AlterData		
		Equation = "{Ru'u'} = {Ru'u'}/|NumZones|"
		

$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Rv'v'} = {RHO}[1]*{V_fluc}[1]*{V_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Rv'v'} = {Rv'v'}+{RHO}[|loop|]*{V_fluc}[|loop|]*{V_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop
$!AlterData		
		Equation = "{Rv'v'} = {Rv'v'}/|NumZones|"


$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Rw'w'} = {RHO}[1]*{W_fluc}[1]*{W_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Rw'w'} = {Rw'w'}+{RHO}[|loop|]*{W_fluc}[|loop|]*{W_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop
$!AlterData		
		Equation = "{Rw'w'} = {Rw'w'}/|NumZones|"

		
$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Ru'v'} = {RHO}[1]*{U_fluc}[1]*{V_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Ru'v'} = {Ru'v'}+{RHO}[|loop|]*{U_fluc}[|loop|]*{V_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop
$!AlterData		
		Equation = "{Ru'v'} = {Ru'v'}/|NumZones|"
		

$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Ru'w'} = {RHO}[1]*{U_fluc}[1]*{W_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Ru'w'} = {Ru'w'}+{RHO}[|loop|]*{U_fluc}[|loop|]*{W_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop
$!AlterData		
		Equation = "{Ru'w'} = {Ru'w'}/|NumZones|"
		

$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Rw'v'} = {RHO}[1]*{W_fluc}[1]*{V_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Rw'v'} = {Rw'v'}+{RHO}[|loop|]*{W_fluc}[|loop|]*{V_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop
$!AlterData		
		Equation = "{Rw'v'} = {Rw'v'}/|NumZones|"	



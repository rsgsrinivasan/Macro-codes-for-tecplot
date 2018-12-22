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
  		Equation = "{Pmean} = {P}[1]"
  $!Else
    $!AlterData
  		Equation = "{Pmean} = {Pmean}+{P}[|loop|]"		
  $!ENDIF
$!EndLoop

$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Umean} = {U}[1]"
  $!Else
	$!AlterData
		Equation = "{Umean} = {Umean}+{U}[|loop|]"		
  $!ENDIF
$!EndLoop

$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Vmean} = {V}[1]"
  $!Else
	$!AlterData
		Equation = "{Vmean} = {Vmean}+{V}[|loop|]"		
  $!ENDIF
$!EndLoop

$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Wmean} = {W}[1]"
  $!Else
	$!AlterData
		Equation = "{Wmean} = {Wmean}+{W}[|loop|]"		
  $!ENDIF
$!EndLoop

$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{RHOmean} = {RHO}[1]"
  $!Else
	$!AlterData
		Equation = "{RHOmean} = {RHOmean}+{RHO}[|loop|]"		
  $!ENDIF
$!EndLoop


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
		Equation = "{Tmean} = {Tmean}/|NumZones|"		

$!AlterData
  		Equation = "{P_fluc} = {P}-{Pmean}"
$!AlterData
		Equation = "{U_fluc} = {U}-{Umean}"
$!AlterData
		Equation = "{V_fluc} = {V}-{Vmean}"
$!AlterData
		Equation = "{W_fluc} = {W}-{Wmean}"
$!AlterData
		Equation = "{RHO_fluc} = {RHO}-{RHOmean}"
$!AlterData
		Equation = "{T_fluc} = {T}-{Tmean}"		
		
$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{Prms} = {P_fluc}[1]*{P_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Prms} = {Prms}+{P_fluc}[|loop|]*{P_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop


$!AlterData		
		Equation = "{Prms} = sqrt({Prms}/|NumZones|)"

		
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
		Equation = "{Wrms} = {W_fluc}[1]*{W_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{Wrms} = {Wrms}+{W_fluc}[|loop|]*{W_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop


$!AlterData		
		Equation = "{Wrms} = sqrt({Wrms}/|NumZones|)"
		

$!Loop |NumZones|
  $!IF |loop| == 1
	$!AlterData
		Equation = "{RHOrms} = {RHO_fluc}[1]*{RHO_fluc}[1]"
  $!Else
	$!AlterData
		Equation = "{RHOrms} = {RHOrms}+{RHO_fluc}[|loop|]*{RHO_fluc}[|loop|]"		
  $!ENDIF
$!EndLoop


$!AlterData		
		Equation = "{RHOrms} = sqrt({RHOrms}/|NumZones|)"
		
		
		
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
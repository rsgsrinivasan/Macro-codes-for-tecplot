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
		
		
$!Loop |NumZones|
  $!IF |loop| == 1
  	$!AlterData
  		Equation = "{Pmean} = {P}[1]"
  $!Else
    $!AlterData
  		Equation = "{Pmean} = {Pmean}+{P}[|loop|]"		
  $!ENDIF
$!EndLoop

$!AlterData
  		Equation = "{Pmean} = {Pmean}/|NumZones|"
		
$!AlterData
  		Equation = "{P_fluc} = {P}-{Pmean}"
		
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
		
		
		
$!Loop |NumZones|
  $!IF |loop| == 1
  	$!AlterData
  		Equation = "{RHOmean} = {RHO}[1]"
  $!Else
    $!AlterData
  		Equation = "{RHOmean} = {RHOmean}+{RHO}[|loop|]"		
  $!ENDIF
$!EndLoop

$!AlterData
  		Equation = "{RHOmean} = {RHOmean}/|NumZones|"
		
$!AlterData
  		Equation = "{RHO_fluc} = {RHO}-{RHOmean}"
		
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

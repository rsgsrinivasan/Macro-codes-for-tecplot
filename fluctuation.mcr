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

$!AlterData
  		Equation = "{P_fluc} = {Pmean}-{P}"
$!AlterData
		Equation = "{U_fluc} = {Umean}-{U}"
$!AlterData
		Equation = "{V_fluc} = {Vmean}-{V}"
$!AlterData
		Equation = "{W_fluc} = {Wmean}-{W}"
$!AlterData
		Equation = "{RHO_fluc} = {RHOmean}-{RHO}"
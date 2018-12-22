#!MC 1100
#
# This macro generates an equation text to compute an average, then
# computes the average for a temperature variable (T). First the equation
# string is generated:

$!Loop |NumZones|
  $!IF |loop| == 1
    $!VarSet |Eqn| = "{Pmean}=({P}[1]"
  $!Else
    $!VarSet |Eqn| = "|Eqn|+{P}[|loop|]"
  $!ENDIF
$!EndLoop

$!VarSet |Eqn| = "|Eqn|)/(|NumZones|)"

# Establish the variable that will have the average temperature for all
# existing zones:

$!AlterData
  Equation = "|Eqn|"

# Create a new zone to have the averaged data. It is this additional
# zone that is accounted in the average determined in the last assignment
# of the |Eqn| variable.

$!DuplicateZone
  SourceZone = |NumZones|

# Compute the average:

$!AlterData [|NumZones|]
  Equation = "|Eqn|"

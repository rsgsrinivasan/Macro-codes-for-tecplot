##
##  Probe a field value at a specified location. The
##  result is available in the macro variable |PROBE_VALUE|
##  Arguments:
##    1: Variable name (in quotes)
##    2: X
##    3: Y
##    4: Z
##
$!MACROFUNCTION
	NAME = "Probe3D"
	SHOWINMACROPANEL = TRUE

	$!GETVARNUMBYNAME |PROBE_VARNUM|
		NAME = "|1|"
	
	$!IF |PROBE_VARNUM| > 0
		$!CREATERECTANGULARZONE 
			X1 = |2|
			Y1 = |3|
			Z1 = |4|
			X2 = |2|
			Y2 = |3|
			Z2 = |4|
		$!PICK SETMOUSEMODE
			MOUSEMODE = SELECT

		$!LINEARINTERPOLATE 
			DESTINATIONZONE = |NUMZONES|

		$!GETFIELDVALUE |PROBE_VALUE|
			ZONE = |NUMZONES|
			VAR = |PROBE_VARNUM|
			INDEX = 1

		$!DELETEZONES [|NUMZONES|]

	$!ENDIF

$!ENDMACROFUNCTION
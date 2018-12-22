#!MC 700
#Macro for finding an average value for an IJ- or IJK-ordered zone.
#------------------------------------------------------------------

#This macro creates a new variable that is set to the AVERAGE of a
#chosen variable. This AVERAGE is calculated for all of the points in the 
#lowest ACTIVE zone in your dataset.  This macro only works on I-, IJ-, 
#and IJK-ordered data.

#This macro will NOT work properly if your zone is Finite Element.

#To use this macro, do the following:

#1.  before running the macro, determine which zone you want to find
#the average value for.  In Plot Attributes, deactivate all zones lower
#than the one you want to average.  For example, if I want to find the average
#Temparature value for zone 3, I would deactivate zones 1 and 2. 

#2.  Run the macro.  Enter the number of the variable you want to
#average.  For example, if you want to find the average of variable 
##4: Temperature, enter '4'.

#3.  If you were not in 2D mode prior to running the macro, you will
#need to switch back to your original frame mode by clicking on the
#appropriate sidebar button after running the macro.

$!GETUSERINPUT |AVEVAR|
  INSTRUCTIONS = "Enter the number of the variable to average."

$!DRAWGRAPHICS FALSE

$!ALTERDATA
  EQUATION = "{AVERAGE} = 0"

$!FRAMEMODE = TWOD 
$!VARSET |KLOOP| = 1
$!LOOP |MAXK|
$!VARSET |JLOOP| = 1
$!LOOP |MAXJ|
$!VARSET |ILOOP| = 1
$!LOOP |MAXI|
$!ALTERDATA 
  EQUATION = "{AVERAGE} = {AVERAGE} + V|AVEVAR|(|ILOOP|,|JLOOP|,|KLOOP|)" 
$!VARSET |ILOOP| += 1
$!ENDLOOP
$!VARSET |JLOOP| += 1
$!ENDLOOP
$!VARSET |KLOOP| += 1
$!ENDLOOP

$!VARSET |NUMPOINTS| = |MAXI|
$!VARSET |NUMPOINTS| *= |MAXJ|
$!VARSET |NUMPOINTS| *= |MAXK|

$!ALTERDATA
  EQUATION = "{AVERAGE} = {AVERAGE}/|NUMPOINTS|"

$!GLOBALSCATTER VAR = |NUMVARS|
$!DRAWGRAPHICS TRUE 
$!PAUSE "The average Value of Variable |AVEVAR| is |MAXS|"

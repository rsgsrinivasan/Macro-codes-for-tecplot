#!MC 1100
$!EXPORTSETUP EXPORTFORMAT = AVI
$!EXPORTSETUP IMAGEWIDTH = 1024
$!EXPORTSETUP EXPORTFNAME = "/mnt/lenovo/simulations_04-2014/Forward_step_WENO_2-may-2014/Vorticity_Line.avi"
$!EXPORTSTART
EXPORTREGION = CURRENTFRAME
$!VARSET |ILOOP| =500
$!LOOP 382
$!OPENLAYOUT "/mnt/lenovo/simulations_04-2014/Forward_step_WENO_2-may-2014/forward_step.lay"
ALTDATALOADINSTRUCTIONS = "nodefile_|ILOOP|.plt"
$!EXPORTSETUP PRINTRENDERTYPE = VECTOR
$!REDRAWALL
$!EXPORTNEXTFRAME
$!VARSET |ILOOP| += 500 
$!ENDLOOP
$!EXPORTFINISH

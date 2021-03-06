#!MC 1410
$!VarSet |MFBD| = 'T:\MY_CODES_FEB_2017\anderson_intake_3d_Pb4'
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'CFDAnalyzer4'
  COMMAND = 'SetFieldVariables ConvectionVarsAreMomentum=\'F\' UVar=4 VVar=5 WVar=6 ID1=\'Pressure\' Variable1=8 ID2=\'Density\' Variable2=7'
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'CFDAnalyzer4'
  COMMAND = 'Calculate Function=\'DENSITYGRADIENTMAG\' Normalization=\'None\' ValueLocation=\'Nodal\' CalculateOnDemand=\'F\' UseMorePointsForFEGradientCalculations=\'F\''
$!SLICEATTRIBUTES 1  SLICESURFACE = ZPLANES
$!SETCONTOURVAR 
  VAR = 7
  CONTOURGROUP = 1
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 15
  CONTOURGROUP = 1
  LEVELINITMODE = RESETTONICE
$!GLOBALCONTOUR 1  COLORMAPFILTER{COLORMAPDISTRIBUTION = CONTINUOUS}
$!GLOBALCONTOUR 1  COLORMAPFILTER{CONTINUOUSCOLOR{CMAX = 0.10000000000000001}}
$!GLOBALCONTOUR 1  COLORMAPFILTER{USEFASTAPPROXCONTINUOUSFLOOD = YES}
$!GLOBALCONTOUR 1  COLORMAPFILTER{REVERSECOLORMAP = YES}
$!GLOBALCONTOUR 1  COLORMAPNAME = 'GrayScale'
$!GLOBALRGB REDCHANNELVAR = 7
$!GLOBALRGB GREENCHANNELVAR = 4
$!GLOBALRGB BLUECHANNELVAR = 4
$!SETCONTOURVAR 
  VAR = 7
  CONTOURGROUP = 2
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 8
  CONTOURGROUP = 3
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 9
  CONTOURGROUP = 4
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 10
  CONTOURGROUP = 5
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 11
  CONTOURGROUP = 6
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 12
  CONTOURGROUP = 7
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 13
  CONTOURGROUP = 8
  LEVELINITMODE = RESETTONICE
$!SLICELAYERS SHOW = YES
$!THREEDVIEW VIEWERPOSITION{X = 2717.0724805000018}
$!THREEDVIEW VIEWERPOSITION{Y = 750}
$!THREEDVIEW VIEWERPOSITION{Z = 1736.2479875154472}
$!THREEDVIEW PSIANGLE = 0
$!THREEDVIEW THETAANGLE = 0
$!REDRAWALL 
$!PICK ADDATPOSITION
  X = 7.41211146838
  Y = 5.42041800643
  CONSIDERSTYLE = YES
$!PICK CUT
$!RemoveVar |MFBD|

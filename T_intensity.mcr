#!MC 1410
$!VarSet |MFBD| = 'C:\Program Files\Tecplot\Tecplot 360 EX 2017 R1'
$!GLOBALRGB REDCHANNELVAR = 8
$!GLOBALRGB GREENCHANNELVAR = 4
$!GLOBALRGB BLUECHANNELVAR = 4
$!SETCONTOURVAR 
  VAR = 4
  CONTOURGROUP = 1
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 5
  CONTOURGROUP = 2
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 6
  CONTOURGROUP = 3
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 7
  CONTOURGROUP = 4
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 8
  CONTOURGROUP = 5
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 9
  CONTOURGROUP = 6
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 10
  CONTOURGROUP = 7
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 11
  CONTOURGROUP = 8
  LEVELINITMODE = RESETTONICE
$!SLICELAYERS SHOW = YES
$!SLICEATTRIBUTES 1  SLICESURFACE = ZPLANES
$!REDRAWALL 
$!THREEDVIEW VIEWERPOSITION{X = 95.000000000000057}
$!THREEDVIEW VIEWERPOSITION{Y = 29.999999999999943}
$!THREEDVIEW VIEWERPOSITION{Z = 902.92304845413241}
$!THREEDVIEW PSIANGLE = 0
$!THREEDVIEW THETAANGLE = 0
$!REDRAWALL 
$!THREEDVIEW 
  VIEWERPOSITION
    {
    X = 95.00000000000006
    Y = 29.99999999999994
    Z = 902.9230484541324
    }
  VIEWWIDTH = 49.9441
$!THREEDVIEW 
  VIEWERPOSITION
    {
    X = 101.7567583568465
    Y = 29.42900633604111
    Z = 902.9230484541324
    }
  VIEWWIDTH = 49.9441
$!THREEDVIEW 
  VIEWERPOSITION
    {
    X = 101.7567583568465
    Y = 29.42900633604111
    Z = 902.9230484541324
    }
  VIEWWIDTH = 20.068
$!THREEDVIEW 
  VIEWERPOSITION
    {
    X = 102.6935986287101
    Y = 27.47884903542714
    Z = 902.9230484541324
    }
  VIEWWIDTH = 20.068
$!THREEDVIEW 
  VIEWERPOSITION
    {
    X = 101.8141159245116
    Y = 27.74651768453101
    Z = 902.9230484541324
    }
  VIEWWIDTH = 20.068
$!ATTACHGEOM 
  ANCHORPOS
    {
    X = 6.336136193968954
    Y = -5.876568672982206
    }
  RAWDATA
1
2
0 0 
0 7.49472236633 
$!PICK SETMOUSEMODE
  MOUSEMODE = SELECT
$!PICK ADDATPOSITION
  X = 5.29421221865
  Y = 4.24571275456
  CONSIDERSTYLE = YES
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'Extract Over Time'
  COMMAND = 'ExtractGeomOverTime:10000'
$!RemoveVar |MFBD|

#!MC 1410
$!VarSet |MFBD| = 'C:\Program Files\Tecplot\Tecplot 360 EX 2014 R2'
$!VARSET |ILOOP| = 674000
$!Loop 19
	$!READDATASET  '"G:\intake_3D_3Million_results\intake_3d_3Million\nodefile_|ILOOP|.plt" '
	  READDATAOPTION = NEW
	  RESETSTYLE = YES
	  VARLOADMODE = BYNAME
	  ASSIGNSTRANDIDS = YES
	$!EXTENDEDCOMMAND 
	  COMMANDPROCESSORID = 'CFDAnalyzer4'
	  COMMAND = 'SetFieldVariables ConvectionVarsAreMomentum=\'F\' UVar=4 VVar=5 WVar=6 ID1=\'Pressure\' Variable1=8 ID2=\'Density\' Variable2=7'
	$!EXTENDEDCOMMAND 
	  COMMANDPROCESSORID = 'CFDAnalyzer4'
	  COMMAND = 'Calculate Function=\'DENSITYGRADIENTMAG\' Normalization=\'None\' ValueLocation=\'Nodal\' CalculateOnDemand=\'T\' UseMorePointsForFEGradientCalculations=\'F\''
	$!SLICEATTRIBUTES 1  SLICESURFACE = ZPLANES
	$!SETCONTOURVAR 
	  VAR = 7
	  CONTOURGROUP = 1
	  LEVELINITMODE = RESETTONICE
	$!SETCONTOURVAR 
	  VAR = 14
	  CONTOURGROUP = 1
	  LEVELINITMODE = RESETTONICE
	$!GLOBALCONTOUR 1  COLORMAPNAME = 'GrayScale'
	$!GLOBALCONTOUR 1  COLORMAPFILTER{COLORMAPDISTRIBUTION = CONTINUOUS}
	$!GLOBALCONTOUR 1  COLORMAPFILTER{CONTINUOUSCOLOR{CMAX = 0.25}}
	$!GLOBALCONTOUR 1  COLORMAPFILTER{USEFASTAPPROXCONTINUOUSFLOOD = YES}
	$!GLOBALCONTOUR 1  COLORMAPFILTER{REVERSECOLORMAP = YES}
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
	$!REDRAWALL 
	$!PICK ADDATPOSITION
	  X = 8.13122923588
	  Y = 4.87458471761
	  CONSIDERSTYLE = YES
	$!PICK CLEAR
	$!THREEDVIEW VIEWERPOSITION{X = 95.000000000000057}
	$!THREEDVIEW VIEWERPOSITION{Y = 29.999999999999943}
	$!THREEDVIEW VIEWERPOSITION{Z = 902.92304845413241}
	$!THREEDVIEW PSIANGLE = 0
	$!THREEDVIEW THETAANGLE = 0
	$!REDRAWALL 
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.71074204756
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.70788605082
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.70645805245
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.70360205571
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.6993180606
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.69360606712
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.65219411438
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.64219812579
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.61363815839
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.58650618935
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.55651822358
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.51939026595
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.48226230832
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.4451343507
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.41086238981
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.37373443218
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.315186499
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.30233451367
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.25378256908
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.23093459516
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.22379460331
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.21522661309
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.20665862286
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.18809464405
	$!VIEW SETMAGNIFICATION
	  MAGNIFICATION = 1.18666664568
	$!VIEW TRANSLATE
	  X = -0.984373077396
	  Y = -0.221483942414
	$!VIEW TRANSLATE
	  X = -0.492186538698
	  Y = -0.110741971207
	$!VIEW TRANSLATE
	  X = -0.689061154177
	  Y = 0
	$!VIEW TRANSLATE
	  X = -0.393749230959
	  Y = -0.110741971207
	$!VIEW TRANSLATE
	  X = -0.590623846438
	  Y = 0
	$!VIEW TRANSLATE
	  X = -0.885935769657
	  Y = -0.332225913621
	$!VIEW TRANSLATE
	  X = -0.689061154177
	  Y = -0.110741971207
	$!VIEW TRANSLATE
	  X = -0.787498461917
	  Y = 0
	$!VIEW TRANSLATE
	  X = -0.0984373077396
	  Y = 0
	$!VIEW TRANSLATE
	  X = -0.196874615479
	  Y = 0
	$!VIEW TRANSLATE
	  X = -0.196874615479
	  Y = 0
	$!VIEW TRANSLATE
	  X = -0.196874615479
	  Y = 0
	$!VIEW PUSH
	$!REDRAWALL 
	$!EXPORTSETUP EXPORTFORMAT = JPEG
	$!EXPORTSETUP IMAGEWIDTH = 1000
	$!EXPORTSETUP QUALITY = 100
	$!EXPORTSETUP EXPORTFNAME = 'G:/intake_3D_3Million_results/Jpeg_output/nodefile_|ILOOP|.jpeg'
	$!EXPORT 
	  EXPORTREGION = CURRENTFRAME
	$!VARSET |ILOOP| += 1000
$!EndLoop
$!RemoveVar |MFBD|

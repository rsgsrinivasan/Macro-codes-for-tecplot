#!MC 1410
$!VarSet |MFBD| = 'G:\Sim_2_wo_rescale'
$!FILECONFIG LOADONDEMAND{UNLOADSTRATEGY = MINIMIZEMEMORYUSE}
$!CREATEFEBOUNDARY 
  SOURCEZONE = 1
  REMOVEBLANKEDSURFACES = NO
$!ACTIVEFIELDMAPS -= [1]
$!SLICELAYERS SHOW = YES
$!SLICEATTRIBUTES 1  OBEYSOURCEZONEBLANKING = YES
$!SLICEATTRIBUTES 1  EDGELAYER{SHOW = YES}
$!SLICEATTRIBUTES 1  SLICESOURCE = SURFACEZONES
$!REDRAWALL 
$!SLICEATTRIBUTES 1  SLICESURFACE = ZPLANES
$!REDRAWALL 
$!THREEDVIEW VIEWERPOSITION{X = 162.5}
$!THREEDVIEW VIEWERPOSITION{Y = 35.197499999999998}
$!THREEDVIEW VIEWERPOSITION{Z = 1823.2965748982169}
$!THREEDVIEW PSIANGLE = 0
$!THREEDVIEW THETAANGLE = 0
$!REDRAWALL 
$!VIEW TRANSLATE
  X = -0.571632725974
  Y = 0
$!VIEW TRANSLATE
  X = -0.571632725974
  Y = 0
$!VIEW TRANSLATE
  X = -1.23853757294
  Y = 0.21436227224
$!VIEW TRANSLATE
  X = -1.81017029892
  Y = 0.42872454448
$!VIEW TRANSLATE
  X = -9.14612361558
  Y = 1.17899249732
$!VIEW TRANSLATE
  X = -3.14397999285
  Y = 0.32154340836
$!VIEW TRANSLATE
  X = -3.04870787186
  Y = 0.32154340836
$!VIEW TRANSLATE
  X = -5.43051089675
  Y = 0.42872454448
$!VIEW TRANSLATE
  X = -4.3825175658
  Y = 0.21436227224
$!VIEW TRANSLATE
  X = -2.95343575086
  Y = 0.21436227224
$!VIEW TRANSLATE
  X = -3.42979635584
  Y = 0.10718113612
$!VIEW TRANSLATE
  X = -2.0959866619
  Y = 0.10718113612
$!VIEW TRANSLATE
  X = -0.381088483982
  Y = 0.10718113612
$!VIEW TRANSLATE
  X = -0.762176967965
  Y = 0
$!VIEW TRANSLATE
  X = -0.285816362987
  Y = 0
$!VIEW TRANSLATE
  X = -0.762176967965
  Y = 0
$!VIEW TRANSLATE
  X = -0.476360604978
  Y = 0
$!VIEW TRANSLATE
  X = -1.52435393593
  Y = 0.10718113612
$!VIEW TRANSLATE
  X = -0.762176967965
  Y = 0.10718113612
$!VIEW TRANSLATE
  X = -1.61962605693
  Y = 0
$!VIEW TRANSLATE
  X = -1.81017029892
  Y = 0
$!VIEW TRANSLATE
  X = -0.571632725974
  Y = 0.10718113612
$!VIEW TRANSLATE
  X = -0.285816362987
  Y = 0
$!VIEW TRANSLATE
  X = -0.666904846969
  Y = 0
$!VIEW TRANSLATE
  X = -0.0952721209956
  Y = 0
$!VIEW TRANSLATE
  X = -0.285816362987
  Y = 0
$!VIEW PUSH
$!VIEW TRANSLATE
  X = -0.666904846969
  Y = 0
$!VIEW TRANSLATE
  X = -0.0952721209956
  Y = 0
$!VIEW TRANSLATE
  X = -0.0952721209956
  Y = 0
$!VIEW TRANSLATE
  X = -0.190544241991
  Y = -0.10718113612
$!VIEW TRANSLATE
  X = -0.0952721209956
  Y = 0
$!VIEW TRANSLATE
  X = -0.285816362987
  Y = 0
$!VIEW TRANSLATE
  X = -0.0952721209956
  Y = -0.10718113612
$!VIEW TRANSLATE
  X = -0.762176967965
  Y = -0.10718113612
$!VIEW TRANSLATE
  X = -0.571632725974
  Y = -0.10718113612
$!VIEW TRANSLATE
  X = -0.952721209956
  Y = 0
$!VIEW TRANSLATE
  X = -0.381088483982
  Y = 0
$!VIEW TRANSLATE
  X = -0.85744908896
  Y = -0.10718113612
$!VIEW TRANSLATE
  X = -0.762176967965
  Y = 0
$!VIEW TRANSLATE
  X = -1.04799333095
  Y = 0
$!VIEW TRANSLATE
  X = -0.381088483982
  Y = 0
$!VIEW TRANSLATE
  X = -0.381088483982
  Y = 0
$!VIEW TRANSLATE
  X = -0.85744908896
  Y = 0
$!VIEW TRANSLATE
  X = -0.285816362987
  Y = 0.10718113612
$!VIEW TRANSLATE
  X = -0.476360604978
  Y = 0.21436227224
$!VIEW PUSH
$!PICK SETMOUSEMODE
  MOUSEMODE = SELECT
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.717776751
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.70944476999
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.67889417296
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.64278892193
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.52336386083
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.44976469526
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.36922221219
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.2678497766
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.17897531253
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.12759476298
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.10954213747
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.10121015646
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.08454619444
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.07343688643
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.07204822293
$!VIEW SETMAGNIFICATION
  MAGNIFICATION = 1.07065955943
$!VIEW TRANSLATE
  X = 1.04799333095
  Y = 0
$!VIEW TRANSLATE
  X = 1.14326545195
  Y = 0
$!VIEW TRANSLATE
  X = 1.52435393593
  Y = 0.21436227224
$!VIEW TRANSLATE
  X = 5.90687150173
  Y = 0.32154340836
$!VIEW TRANSLATE
  X = 5.52578301774
  Y = 0.32154340836
$!VIEW TRANSLATE
  X = 10.5752054305
  Y = 0.5359056806
$!VIEW TRANSLATE
  X = 14.7671787543
  Y = 0.5359056806
$!VIEW TRANSLATE
  X = 2.0959866619
  Y = 0
$!VIEW TRANSLATE
  X = 1.23853757294
  Y = 0
$!VIEW TRANSLATE
  X = 0.952721209956
  Y = 0
$!VIEW TRANSLATE
  X = 0.285816362987
  Y = 0
$!VIEW TRANSLATE
  X = 0.285816362987
  Y = 0
$!VIEW TRANSLATE
  X = 0.476360604978
  Y = 0
$!VIEW TRANSLATE
  X = 0.666904846969
  Y = 0
$!VIEW TRANSLATE
  X = 0.285816362987
  Y = 0
$!VIEW PUSH
$!VIEW TRANSLATE
  X = 0.571632725974
  Y = -0.75026795284
$!VIEW TRANSLATE
  X = 0.285816362987
  Y = -0.21436227224
$!VIEW TRANSLATE
  X = 0.952721209956
  Y = -1.0718113612
$!VIEW TRANSLATE
  X = 0.571632725974
  Y = -0.5359056806
$!VIEW TRANSLATE
  X = 1.90544241991
  Y = -1.50053590568
$!VIEW TRANSLATE
  X = 1.71489817792
  Y = -1.0718113612
$!VIEW TRANSLATE
  X = 0.285816362987
  Y = -0.21436227224
$!VIEW TRANSLATE
  X = 0.285816362987
  Y = -0.21436227224
$!VIEW TRANSLATE
  X = 0.190544241991
  Y = -0.10718113612
$!VIEW PUSH
$!PICK SETMOUSEMODE
  MOUSEMODE = SELECT
$!THREEDVIEW 
  PSIANGLE = 36.0877
  THETAANGLE = 136.837
  ALPHAANGLE = -130.506
  VIEWERPOSITION
    {
    X = -620.1243495188982
    Y = 812.0958179179978
    Z = 1446.927311391981
    }
$!VIEW PUSH
$!THREEDVIEW 
  PSIANGLE = 53.0261
  THETAANGLE = 125.503
  ALPHAANGLE = -119.193
  VIEWERPOSITION
    {
    X = -1052.535538192554
    Y = 867.3606555259568
    Z = 1058.837587229868
    }
$!VIEW PUSH
$!VIEW TRANSLATE
  X = -1.33380969394
  Y = 0.10718113612
$!VIEW TRANSLATE
  X = -0.85744908896
  Y = 0
$!VIEW TRANSLATE
  X = -1.81017029892
  Y = 0.21436227224
$!VIEW TRANSLATE
  X = -3.52506847684
  Y = 0.32154340836
$!VIEW TRANSLATE
  X = -2.38180302489
  Y = 0.21436227224
$!VIEW TRANSLATE
  X = -2.66761938788
  Y = 0
$!VIEW TRANSLATE
  X = -1.52435393593
  Y = 0.10718113612
$!VIEW TRANSLATE
  X = -0.85744908896
  Y = -0.10718113612
$!VIEW TRANSLATE
  X = -0.952721209956
  Y = 0
$!VIEW TRANSLATE
  X = -0.190544241991
  Y = 0
$!VIEW TRANSLATE
  X = -0.285816362987
  Y = 0
$!VIEW TRANSLATE
  X = -0.0952721209956
  Y = 0
$!VIEW TRANSLATE
  X = -0.0952721209956
  Y = 0
$!VIEW TRANSLATE
  X = -0.190544241991
  Y = 0
$!VIEW TRANSLATE
  X = -2.28653090389
  Y = 0.10718113612
$!VIEW TRANSLATE
  X = -1.42908181493
  Y = 0.32154340836
$!VIEW TRANSLATE
  X = -1.14326545195
  Y = 0.21436227224
$!VIEW TRANSLATE
  X = -1.04799333095
  Y = 0.5359056806
$!VIEW TRANSLATE
  X = -0.762176967965
  Y = 0.32154340836
$!VIEW TRANSLATE
  X = -0.476360604978
  Y = 0.32154340836
$!VIEW TRANSLATE
  X = -0.0952721209956
  Y = 0
$!VIEW PUSH
$!BLANKING VALUE{INCLUDE = YES}
$!BLANKING VALUE{CONSTRAINT 1 {INCLUDE = YES}}
$!BLANKING VALUE{CONSTRAINT 1 {VALUECUTOFF = 3}}
$!REDRAWALL 
$!BLANKING VALUE{CONSTRAINT 2 {INCLUDE = YES}}
$!BLANKING VALUE{CONSTRAINT 2 {RELOP = GREATERTHANOREQUAL}}
$!BLANKING VALUE{CONSTRAINT 2 {VALUECUTOFF = 50.799999999999997}}
$!BLANKING VALUE{CONSTRAINT 3 {INCLUDE = YES}}
$!BLANKING VALUE{CONSTRAINT 3 {VARA = 2}}
$!BLANKING VALUE{CONSTRAINT 3 {VALUECUTOFF = 20}}
$!BLANKING VALUE{CONSTRAINT 4 {VARA = 1}}
$!BLANKING VALUE{CONSTRAINT 4 {INCLUDE = YES}}
$!BLANKING VALUE{CONSTRAINT 4 {VARA = 3}}
$!BLANKING VALUE{CONSTRAINT 4 {RELOP = GREATERTHANOREQUAL}}
$!BLANKING VALUE{CONSTRAINT 3 {RELOP = GREATERTHANOREQUAL}}
$!BLANKING VALUE{CONSTRAINT 4 {VALUECUTOFF = 50.5}}
$!BLANKING VALUE{CONSTRAINT 5 {VARA = 1}}
$!BLANKING VALUE{CONSTRAINT 3 {VARA = 3}}
$!BLANKING VALUE{CONSTRAINT 3 {RELOP = LESSTHANOREQUAL}}
$!BLANKING VALUE{CONSTRAINT 3 {VALUECUTOFF = 5}}
$!BLANKING VALUE{CONSTRAINT 3 {VARA = 2}}
$!BLANKING VALUE{CONSTRAINT 3 {RELOP = GREATERTHANOREQUAL}}
$!BLANKING VALUE{CONSTRAINT 3 {VALUECUTOFF = 20}}
$!BLANKING VALUE{CONSTRAINT 5 {INCLUDE = YES}}
$!BLANKING VALUE{CONSTRAINT 5 {VARA = 3}}
$!BLANKING VALUE{CONSTRAINT 5 {VALUECUTOFF = 5}}
$!REDRAWALL 
$!BLANKING VALUE{CONSTRAINT 6 {VARA = 1}}
$!REDRAWALL 
$!BLANKING VALUE{CONSTRAINT 2 {VALUECUTOFF = 321}}
$!REDRAWALL 
$!RemoveVar |MFBD|
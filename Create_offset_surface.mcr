#!MC 1410
$!VarSet |MFBD| = 'G:\intake_3D_3Million_results\Post_processed'
$!ALTERDATA 
  EQUATION = '{mumean} = sqrt({Tmean})*sqrt({Tmean})*sqrt({Tmean})*((1.0+(110/287))/({Tmean}+(110/287))) '
$!ALTERDATA 
  EQUATION = '{Cf_mean} = (2.0*1.78*0.01*{mumean}*ddy({Umean}))/(1.2205*2.2*330)'
$!ALTERDATA 
  EQUATION = '{X/L} = ({X}-40)/135'
$!FILECONFIG LOADONDEMAND{UNLOADSTRATEGY = MINIMIZEMEMORYUSE}
$!CREATEFEBOUNDARY 
  SOURCEZONE = 1
  REMOVEBLANKEDSURFACES = NO
$!DUPLICATEZONES 
  SOURCEZONES =  [2]
  DESTINATIONZONE = 3
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'Strand Editor'
  COMMAND = 'ZoneSet=3;AssignStrands=TRUE;StrandValue=3;AssignSolutionTime=FALSE;'
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'CFDAnalyzer4'
  COMMAND = 'Calculate Function=\'GRIDKUNITNORMAL\' Normalization=\'None\' ValueLocation=\'Nodal\' CalculateOnDemand=\'T\' UseMorePointsForFEGradientCalculations=\'F\''
$!ALTERDATA  [3]
  EQUATION = '{X} = {X}+0.05*{X Grid K Unit Normal}  '
$!ALTERDATA  [3]
  EQUATION = '{Y} = {Y}+0.05*{Y Grid K Unit Normal}  '
$!ALTERDATA  [3]
  EQUATION = '{Z} = {Z}+0.05*{Z Grid K Unit Normal}  '
$!ACTIVEFIELDMAPS -= [2]
$!RemoveVar |MFBD|

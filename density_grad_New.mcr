#!MC 1410
$!VarSet |MFBD| = 'T:\MY_CODES_FEB_2017\SWBLI_Hakkinen_Grid_Sensitivity\2D_Katzer_Case_2'
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'CFDAnalyzer4'
  COMMAND = 'SetFieldVariables ConvectionVarsAreMomentum=\'F\' UVar=4 VVar=5 WVar=6 ID1=\'Pressure\' Variable1=8 ID2=\'Density\' Variable2=7'
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'CFDAnalyzer4'
  COMMAND = 'Calculate Function=\'DENSITYGRADIENTMAG\' Normalization=\'None\' ValueLocation=\'Nodal\' CalculateOnDemand=\'F\' UseMorePointsForFEGradientCalculations=\'F\''
$!RemoveVar |MFBD|

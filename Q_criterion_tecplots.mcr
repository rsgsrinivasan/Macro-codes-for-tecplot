#!MC 1410
$!VarSet |MFBD| = 'Z:\MY_CODE_cont_frm_82\SWBLI_Garnier'
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'CFDAnalyzer4'
  COMMAND = 'SetFieldVariables ConvectionVarsAreMomentum=\'F\' UVar=4 VVar=5 WVar=6 ID1=\'Pressure\' Variable1=8 ID2=\'Density\' Variable2=7'
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'CFDAnalyzer4'
  COMMAND = 'Calculate Function=\'QCRITERION\' Normalization=\'None\' ValueLocation=\'Nodal\' CalculateOnDemand=\'F\' UseMorePointsForFEGradientCalculations=\'F\''
$!RemoveVar |MFBD|

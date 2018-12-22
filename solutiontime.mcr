#!MC 1410
$!VarSet |MFBD| = 'C:\Program Files\Tecplot\Tecplot 360 EX 2014 R2'
$!READDATASET  '"D:\Temp\nodefile_45000.plt" '
  READDATAOPTION = NEW
  RESETSTYLE = YES
  VARLOADMODE = BYNAME
  ASSIGNSTRANDIDS = YES
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'Strand Editor'
  COMMAND = 'ZoneSet=1;AssignStrands=TRUE;StrandValue=1;AssignSolutionTime=TRUE;TimeValue=45000;'
$!WRITEDATASET  "D:\Temp\nodefile_45000.plt"
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDEDATASHARELINKAGE = YES
  BINARY = YES
  USEPOINTFORMAT = NO
  PRECISION = 9
  TECPLOTVERSIONTOWRITE = TECPLOTCURRENT

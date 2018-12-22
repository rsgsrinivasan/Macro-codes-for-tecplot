#!MC 1410

$!FILECONFIG
LOADONDEMAND
{
	UNLOADSTRATEGY = MINIMIZEMEMORYUSE
}

$!ALTERDATA 
  EQUATION = '{DDXU} = ddx({U})'
$!ALTERDATA 
  EQUATION = '{DDYU} = ddy({U})'
$!ALTERDATA 
  EQUATION = '{DDZU} = ddz({U})'
$!ALTERDATA 
  EQUATION = '{DDXV} = ddx({V})'
$!ALTERDATA 
  EQUATION = '{DDYV} = ddy({V})'
$!ALTERDATA 
  EQUATION = '{DDZV} = ddz({V})'  
$!ALTERDATA 
  EQUATION = '{DDXW} = ddx({W})'
$!ALTERDATA 
  EQUATION = '{DDYW} = ddy({W})'
$!ALTERDATA 
  EQUATION = '{DDZW} = ddz({W})'
$!ALTERDATA 
  EQUATION = '{DUCROS} = (({DDXU}+{DDYV}+{DDZW})**2)/(({DDXU}+{DDYV}+{DDZW})**2+({DDZV}-{DDYW})**2+({DDZU}-{DDXW})**2+({DDYU}-{DDXV})**2+0.00000000001)'
#!MC 1400
# Created by Tecplot 360 build 14.0.2.35002
$!VarSet |MFBD| = '/home/srinivasan'
$!PICK SETMOUSEMODE
  MOUSEMODE = SELECT
$!EXTRACTFROMPOLYLINE 
  EXTRACTTHROUGHVOLUME = NO
  EXTRACTLINEPOINTSONLY = NO
  INCLUDEDISTANCEVAR = NO
  NUMPTS = 100
  EXTRACTTOFILE = YES
  FNAME = '/home/srinivasan/Desktop/ramp.dat'
  RAWDATA
3
0 0 0
1 0 0
1.990268 0.140 0
$!PICK SETMOUSEMODE
  MOUSEMODE = SELECT
$!RemoveVar |MFBD|

#!MC 1400
# Created by Tecplot 360 build 14.0.2.35002

$!ALTERDATA 
  EQUATION = '{Q} = 0'

$!VarSet |NUMVARSINIT| = |NUMVARS|
$!VarSet |NUMVARSINIT| += 1

$!ALTERDATA 
  EQUATION = '{dudx} = {DDXU}'
$!ALTERDATA 
  EQUATION = '{dvdx} = {DDXV}'
$!ALTERDATA 
  EQUATION = '{dwdx} = {DDXW}'
$!ALTERDATA 
  EQUATION = '{dudy} = {DDYU}'
$!ALTERDATA 
  EQUATION = '{dvdy} = {DDYV}'
$!ALTERDATA 
  EQUATION = '{dwdy} = {DDYW}'
$!ALTERDATA 
  EQUATION = '{dudz} = {DDZU}'
$!ALTERDATA 
  EQUATION = '{dvdz} = {DDZV}'
$!ALTERDATA 
  EQUATION = '{dwdz} = {DDZW}'
$!ALTERDATA 
  EQUATION = '{s11} = {dudx}' 
$!ALTERDATA 
  EQUATION = '{s12} = 0.5*({dudy}+{dvdx})' 
$!ALTERDATA 
  EQUATION = '{s13} = 0.5*({dudz}+{dwdx})' 
$!ALTERDATA 
  EQUATION = '{s22} = {dvdy}' 
$!ALTERDATA 
  EQUATION = '{s23} = 0.5*({dvdz}+{dwdy})' 
$!ALTERDATA 
  EQUATION = '{s33} = {dwdz}' 
$!ALTERDATA 
  EQUATION = '{Omga12} = 0.5*({dudy}-{dvdx})' 
$!ALTERDATA 
  EQUATION = '{Omga13} = 0.5*({dudz}-{dwdx})' 
$!ALTERDATA 
  EQUATION = '{Omga23} = 0.5*({dvdz}-{dwdy})' 
$!ALTERDATA 
  EQUATION = '{s2o2_11} = {s11}**2 + {s12}**2 + {s13}**2 - {Omga12}**2 - {Omga13}**2' 
$!ALTERDATA 
  EQUATION = '{s2o2_12} = {s11}*{s12} + {s12}*{s22} + {s13}*{s23} - {Omga13}*{Omga23}' 
$!ALTERDATA 
  EQUATION = '{s2o2_13} = {s11}*{s13} + {s12}*{s23} + {s13}*{s33} - {Omga12}*{Omga23}' 
$!ALTERDATA 
  EQUATION = '{s2o2_22} = {s12}**2 + {s22}**2 + {s23}**2 - {Omga12}**2 - {Omga23}**2' 
$!ALTERDATA 
  EQUATION = '{s2o2_23} = {s12}*{s13} + {s22}*{s23} + {s23}*{s33} - {Omga12}*{Omga13}' 
$!ALTERDATA 
  EQUATION = '{s2o2_33} = {s13}**2 + {s23}**2 + {s33}**2 - {Omga13}**2 - {Omga23}**2'
$!ALTERDATA 
  EQUATION = '{Q} = 2*{Omga12}**2 + 2*{Omga13}**2 + 2*{Omga23}**2 - {S11}**2 - {S22}**2 - {S33}**2 - 2*{S12}**2 - 2*{S13}**2 - 2*{S23}**2'
$!ALTERDATA 
  EQUATION = '{Q1} = -0.5*({s11}**2+{s22}**2+{s33}**2)-{dudy}*{dvdx}-{dudz}*{dwdx}-{dvdz}*{dwdy}'
  
  
$!VarSet |NUMVARSFIN| = |NUMVARS|
$!DELETEVARS [|NUMVARSINIT|-|NUMVARS|]



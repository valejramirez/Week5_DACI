LEVEL   = 1;
VTOn    = 0.7;           %(V)        -> Tensión umbral
VTOp    = 0.8;           %(V)        -> Tensión umbral
GAMMA   = 0.45;          %(V^1/2)    -> Coeficiente de cuerpo
PHI     = 0.9;           %(V)        -> Potencial ? (? 2F)
NSUB    = 9e14;          %(cm^-3)    -> Dopaje del sustrato
LD      = 0.08e-6;       %(m)        -> Longitud de difusión (fuente/drenaje)
UON     = 0.0350;        %(m^2/V·s) -> Movilidad de portadores
UOP     = 0.0100;        %(m^2/V·s) -> Movilidad de portadores
LAMBDAn  = 0.1;          %(V^-1)     -> Modulación de longitud de canal
LAMBDAp  = 0.2;          %(V^-1)     -> Modulación de longitud de canal
TOX     = 9e-9;          %(m)        -> Espesor del óxido
PB      = 0.9;           %(V)        -> Potencial de unión
CJ      = 0.56e-3;       %(F/m^2)    -> Capacitancia de unión por área
CJSW    = 0.35e-11;      %(F/m)      -> Capacitancia de unión lateral
MJ      = 0.45;          %(unitless) -> Exponente de CJ
MJSW    = 0.2;           %(unitless) -> Exponente de CJSW
CGDO    = 0.4e-9;        %(F/m)      -> Capacitancia solapamiento puerta-drenaje 
JS      = 1.0e-8;        %(A/m^2)    -> Corriente de fuga por unidad de área
Vdd     = 3;             %V
W       = 10;
Cox     = 3836e-6;       %F/m^2
LN = 0.5; 
LP = 0.5; 
IREF = 100e-6 ; %A 
MCM = 1.3 ; %V 


%Question 1
Vgs5= sqrt((2*200e-6)/(UOP*Cox*(10/0.5)))+0.8 % =  1.5221 V
Vg5 = Vdd - Vgs5 % = 1.4779 V

%Question 2
IT= IREF * 5 % = 500 uA
Id5 = IT * 0.4 % =  200 uA

%Question 3 
Id3 = (IT/2)-Id5 % = 50 uA

%Question 4 
Vsg3 = sqrt((2*Id3)/(UOP*Cox*(10/0.5)))+ VTOp % = 1.1610 V
Vg3= 3 - Vsg3 % = 1.8390 V 

%Question 5
Id1=IT/2 % = 250 uA

%Question 6 M1
% w_l_m1= (2*Id1)/(((1.3-0.927-0.7)^2)*UON*Cox) %=34.8279
%  Vgs1a= sqrt((2*Id1)/(UON*Cox*(w_l_m1)))+ VTOn % = 1.0270 V
%  VP = 1.3 - Vgs1 % = 0.2730
%  %no esta saturado el de tail para esta relación, Necesito subir Vp
% 
% % tail 
% Vgs_tail= sqrt((2*500e-6)/(UON*Cox*5*(10/0.5))) % = 0.2729 V 
% %SE VERIFICA SATURACIÓN
% 
% IREF2=0.3e-3 
Vgs1= sqrt((2*IT/2)/(UON*Cox*5*(10/0.5)))+ VTOn
VgsTail= sqrt((2*IT)/(UON*Cox*5*(10/0.5)))+ VTOn

% %Question 7
% a = 0.5*UON*Cox*(40/0.5) % = 0.0054 mA/V^2
% 
% %Question 8 
% Vgs1=sqrt(IREF2/a)+VTOn % = 0.9364 V
% 
% %Question 9 
% Vgs3b=Vgs1; 
% Vb= Vgs1 + Vgs3b % = 1.8727 V 
% 
% %Question 10 (Vb sube 100 mV)
% Vy = Vb + 0.1 -Vgs1 
% %Question 11
% Id2 = ((Vgs1 - VTOn)^2) * UON*Cox*(40/0.5) / 2
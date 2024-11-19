close,clear,clc

%1

L=1000000;
[a,b,c,d]=numeros(L);

%a.

PB=length(b)/L
PC=length(c)/L
PD=length(d)/L

%b


PBC= length(c(rem(c,2)==0))/L         %rem ira fazer um vetor com todos os 
                                      %numeros de c divisiveis por 2 e
                                      %multiplicalos pelo seu valor de c

PBD= length(d(rem(d,2)==0))/L 

%d

%P(B|C) = P(B∩C)/P(B) 

PBintC = PBC*PB

PBintD = PBD*PB


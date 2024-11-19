
PO = 100*exp(3.9/0.1)
E = sqrt((log(PO/100)^2)/(pi^2+log(PO/100)^2))
wn = pi/(10*sqrt(1-E^2))
A = 0.1*wn

s=tf('s');

Gs=A/(s^2+2*wn*E*s+wn^2);

step(Gs)
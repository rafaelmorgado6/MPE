function [a,b,c,d]=numeros(L)

a=ceil(100*rand(1,L));
b=a(rem(a,2)==0);
c=a(rem(a,3)==0);
d=a(rem(a,5)==0);
% Rafael Morgado, 104277, P2

% 1)
nmec=104277;
a = 1/(2+2*rem(nmec,3));
% a = 0.5;

% 2) 
X = (2*round(rand(10000,1)))-1

% 3)
XD = [ ];
if(X(1)==1 && X(2)==1 && X(3)==1)
    XD = [-1; -1; -1; X(1:end-3)];
else
    XD = [1; 1; 1; X(1:end-3)];
end

% 4)
cc = corrcoef(X,XD)

% 1.000     0.0032
% 0.0032    1.0000

% 5)
Y = X+a*XD;
val = unique(Y);
P = zeros(1,length(val));
for i = 1:length(val)
   P(i) = length(find(Y == val(i)))/100000
end

% P = [0.025  0.0249  0.0249  0.0252]

% 6)
Y = X+a*XD+a/2*XD;
length(unique(Y))

% 4 amplitudes

% 7)
pot = mean(Y.^2)

% 8) 
cc1 = corrcoef(X,Y)

% 1.0000    0.8007
% 0.8007    1.0000

% 9) 
[xx lags] = xcorr(X,X,5);
figure(1)
stem(lags,xx)
title('Função de auto-correlação X')

[yy lags] = xcorr(Y,Y,5);
figure(2)
stem(lags,yy)
title('Função de auto-correlação Y')

% 11)
[xy lags] = xcorr(X,Y,10);
figure(3)
stem(lags,xy)
title('Funçao de autocorrelação entre X e Y')

% 12)
[yx lags] = xcorr(Y,X,5);
figure(4)
stem(lags,yx)
title('Funçao de autocorrelação entre X e Y')

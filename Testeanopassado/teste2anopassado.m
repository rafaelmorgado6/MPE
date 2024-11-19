%Rafael Morgdo 104277 P2

%1

nmec=104277;
a=1/(2+2*rem(nmec,3));

%a=0.25

%2

X= (2*round(rand(10000,1)))-1; %criar 10000 valores random-> arredonda los -> multiplicar por 2 (valores entre 0 ou 2) -> subtrair 1 para so ter valores -1 e 1

%3

XD = [];
if(X(1)==1 && X(2)==1)
    XD = [-1;-1;X(1:end-2)];  %retira-se uma condiçao e troca se -2 para -1 caso atraso=-1
else
    XD = [1;1;X(1:end-2)];
end

%4

coef_corr=corrcoef(X,XD)

%[1 0.0045; 0.0045 1]

%5

Y = X+a*XD;
v_un = unique(Y);

prob = zeros(1,length(v_un));

for i = 1:length(v_un)
   prob(i) =length(find(Y == v_un(i)))/100000
end

%Prob=[0.0246 0.0251 0.0251 0.0252]

%6

% a=2;
% Y = 2*X+a*XD;
% v_un = unique(Y) %alterar a até v_un ter apenas 3 valores

%2versao
%Y=X+a*XD+a/2*XD5  %XD5 com atraso de 5
%ver amplitudes -> lenght(unique(Y))

%7

pot = mean(Y.^2)  %potencia do sinal (ter em atenção que é o Y do ex5)
%R: pot = 1.0555

%8

cc=corrcoef(X,Y)

%[1 0.9703; 0.9703 1]

%9

[Rxx lags] = xcorr(X,X,10);
figure(1)
stem(lags,Rxx)
title('Funçao de autocorrelação X')

[Ryy lags] = xcorr(Y,Y,10);
figure(2)
stem(lags,Ryy)
title('Funçao de autocorrelação Y')

%10

%11

[Rxy lags] = xcorr(X,Y,10);
figure(3)
stem(lags,Rxy)
title('Funçao de autocorrelação')

%11

[Ryx lags] = xcorr(Y,X,10);
figure(4)
stem(lags,Ryx)
title('Funçao de autocorrelação cruzada')
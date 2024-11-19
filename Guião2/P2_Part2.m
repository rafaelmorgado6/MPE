close,clear,clc

%3

a1=4*4;                 %Espaço amostral de S (Area do quadrado)
a2=pi*2^2;              %Espaço amostral de M (Area do circulo)
PM1=a2/a1               %Probabilida de M

%4

n=100000;               %nº de pontos

x=4*rand(1,n)-2;        %numeros random de 0 a 1 faz se a multiplicaçao 
y=4*rand(1,n)-2;        %por 4 para termos numeros random de 0 a 4, 
                        %subtrai-se 2 para abrangir os numeros negativos
                        %(Neste momento temos todos os numeros de x entre
                        %-2 e 2 e todos os numeros de y entre -2 e 2)

M=x.^2+y.^2 <4;         %Criaçao da circunferencia
PM2=sum(M)/n            %Probabilidade de M com o n de pontos

valor_pi=4*PM2        %Calculo do ex3 da probabilidade: P(M)= pi*2^2/4*4 <=>
                        %                              <=>P(M)= pi/4 <=>
                        %                              <=>pi= P(M)*4
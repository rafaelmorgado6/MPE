close,clear

%3

a1=1*1;                         %Espaço de amostragem de S (area do quadrado)
                                
a2= 2*((1-0.25)*(1-0.25))/2;    %espaço de amostragem complementar de M
                                %(area dos 2 triangulos dentro de S mas
                                %fora de M) 2triangulos*(base*altura)/2

a3=a1-a2;                       %Espaço de amostragem de M
pM1=a3/a1                       %Probabilidade de M em funçao do espaço de 
                                %amostragem de S

%4

n= 100000;                      %numero de pontos 

x=rand(1,n);                    % n pontos random entre 0 e 1               
y=rand(1,n);


M=abs(y-x)<0.25;                %Acontecimento M

pM2 = sum(M)/n                  %Probabilidade de M em funçao do nº de pontos
                                %e nao de S
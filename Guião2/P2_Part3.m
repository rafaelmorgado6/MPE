close,clear,clc

%1

%Acontecimento A

nA=4;        %numero de lançamentos

countA=0;   %contagem de numeros 6 antes dos lançamentos;
  
for i=1:1000000             %Temos de fazer um ciclo para a quantidade de 
                            %experimentos porque se so formos fazer a
                            %probabilidade do acontecimento esta dará uma
                            %coisa muito variada, mas se for feita a
                            %probabilidade de todos os 6 que foram
                            %aparecendo a dividir por todos os experimentos
                            %ira nos dar uma probabilidade mais certa

    xA=ceil(6*rand(1,nA));   %funçao rand, com estes parametros significa que 
                            %o numero 1 quer dizer o numero de colunas como
                            %apenas so queremos um numero colocamos o 1, quanto
                            %ao n é a quantidade de numeros que queremos que
                            %sejam gerados aleatoriamente entre 0 e 1.
                            %A multiplicação por 6 é para estarmos a colocar
                            %todas as hipoteses possiveis do dado.
                            %A funçao ceil faz com que sejam os numeros gerados
                            %aleatoriamente arredondados ao numeros inteiro 
                            %mais proximo     

    for k=1:nA    
        if xA(k)==6          %percorrer o todos os valores de x para encontrar x=6
            countA=countA+1;    %contagem de quantas vezes calha o 6
            
            break           %Este break é necessario pois vai saltar o ciclo 
                            %for em que esta e deste modo nao ira repetir
                            %os valores anteriores de xA no ciclo e assim
                            %realizar o primeiro ciclo para conseguir novos
                            %valores de xA 
        end
    end
end

PA=countA/i                 %Aposta A (0.5176)

%Acontecimento B

nB=24;        %numero de lançamentos

countB=0;   %contagem de numeros 6 antes dos lançamentos;
  
for i=1:1000000               

    xB=ceil(6*rand(2,nB));   

    for k=1:nB    
        if xB(1,k)==6 && xB(2,k)==6   %percorrer o todos os valores de x para encontrar x=6
            countB=countB+1;            %contagem de quantas vezes calha duplos
            break
        end
    end
end

PB=countB/i                 %Aposta B (0.4908)
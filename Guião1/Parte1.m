% 1.

n = 100;                    % numero de lançamentos
X = ceil(6*rand(1,n));      % 1 é o numero de valores por lançamento, n é o numero de lançamentos

minX = min(X)               % valor minimo
maxX = max(X)               % valor maximo

e = [minX:maxX+1]-0.5       % deparação de cada digito basicamente gera o 2 que esta entre o 1.5 e o 2.5  
H = histc(X,e);             % numero de vezes que calha cada face do dado
nBins = length(e)-1;        % 
binCenters = [minX:maxX];   % gera vetor para os X ( 1 2 3 4 5 6)
bar(binCenters, H(1:nBins)) % gera grafico de barras onde o X é o binCenters e i Y é o H(1:nBins) ue vai de 1 a nBins(6)

% 2.
% Substituir n por 1000, 10000 e n = 100000

clear 
clc

% 3.

n = 100;                         % numero de lançamentos
X = ceil(6*rand(1,n));           % 1 é o numero de valores por lançamento, n é o numero de lançamentos
Y = ceil(6*rand(1,n));
Z = X + Y


minZ = min(Z)
maxZ = max(Z)

ez = [minZ:maxZ+1]-0.5

Ht = histc(Z,ez)
nBins = length(ez)-1;            

binCenters1 = [minZ:maxZ]

bar(binCenters1, Ht(1:nBins))
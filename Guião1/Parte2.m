% 1

n = 100;                        % nº de lançamentos                       
X = ceil(2*rand(1,n));          

minX = min(X);
maxX = max(X);

% 2
e = [minX:maxX+1]-0.5;          %criaçao de intervalos para cada numero

H = histc(X,e);                 % contagem de cada numero
nBins = length(e)-1;            % vetor para colocar y   
x = H(1)

binCenters = [minX:maxX];

bar(binCenters, H(1:nBins));
xlabel("Cara")

% 3
valormedio = sum(X)/n;

% 4
variancia = var(X)
desvio = sqrt(variancia)

%5
K=N/5;                  %K depende de N e da largura
F=K/(dp*sqrt(2*pi))*exp(-0.5*((count-valormedio)/dp).^2); %funçao gausseana

hold on                 %para manter o grafico do histograma
%plot(count,F)           %grafico de F e histograma (nao sei se esta bem)

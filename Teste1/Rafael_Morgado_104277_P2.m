% Rafael Morgado, 104277, P2

% 1.
nmec = 104277;
k = 2+rem(nmec,3);
% k=2

% 2.1 c)

% 2.2
n = 10000;
x = 2*rand(1,n);
y = rand(1,n);
count = 0;

for i=1:n
    if y(i)<cos((pi*x(i))/2) && y(i)>=1/2
        count = count+1;
    end
end

P = count/n;

% P(A) = 0.1127

% 3.
D = ceil(3*rand(k,nmec));

minD = min(D);
maxD = max(D);
X = maxD-minD;

minx = min(X);
maxx = max(X);

% A gama de valores de D(k) está entre 0 e 2

% 4.
e = [minx:maxx+1]-0.5;    
H = histc(X,e);        

nBins = 3;       
bin = [minx:maxx];        

bar(bin(1:nBins),H(1:nBins));    
xlabel('diferença do número de pintas');

% 5.
media = zeros(1,nmec);

for i = 1:nmec
    media(i) = mean(X(1:i));
end

plot(0:nmec-1,media);

% 6.
D1 = ceil(3*rand(k+1,nmec));

minD1 = min(D1);
maxD1 = max(D1);
X1=maxD1-minD1;

Dmax = max(X1); 
% Dmax(k+1) = 2 

count1 = 0;
for i = 1:nmec
    if X1(i) == 2
        count1 = count1+1;
    end
end

PD1 = count1/nmec;
PD = 1;
Pr=PD1/PD;

%Pr é igual a 0.4468

%Rafael Morgado , 104277 , P2 

%1

nmec=104277;
k=2+rem(nmec,3);

%k=2

%2

%2.1 c)

%2.2

n=100000;
x=2*rand(1,n)-1;
y=2*rand(1,n)-1;

countA=0;
for i=1:n
    if y(i)<sin(x(i)^2*pi/2) && y(i)>0
        countA=countA+1;
    end
end

PA=countA/n;

%P(A) = 0.2195

%3

%lançamento de 1 dado, dado é lançado k vezes, a soma do minimo e maximo é
%guardada

D=ceil(6*rand(k,nmec));

minimoD=min(D);
maximoD=max(D);
X=minimoD+maximoD;

mini=min(X);
maxi=max(X);

%A gama de valores de S será de 2 a 12

%4

e=[mini:maxi+1]-0.5;    

L=histc(X,e);        

nBins=10;       

bin=[mini:maxi];        

figure(1)
bar(bin(1:nBins),L(1:nBins));     %histograma

%5

media=zeros(1,nmec);
for i=1:nmec
    media(i)=mean(X(1:i));
end

figure(2)
plot(0:nmec-1,media)

%6

for a=1:nmec
   if (X(a) == 7)
       P(a) = X(a);
   end 
end
Pr =(sum(P)/sum(X))
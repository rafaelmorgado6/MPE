%Rafael Morgado , 104277 , Turma1 

%Teste todo igual so muda certas coisas
%1

nmec=104277;
k=2+rem(nmec,3);

%k=3

%2  
%A:((x(i)<=y(i)) && (x(i)>=-(y(i))))
%S:(0 <= x(i) <= 2 ) && (0<= y(i) <=1)

%2.1 ??

%2.2

n=100000;
x=2*rand(1,n);
y=rand(1,n);

countA=0;
for i=1:n
    if x(i)<=y(i) && x(i)>=-y(i)
        countA=countA+1;
    end
end

PA=countA/n;

%P(A) = 0.2508

%3

%lançamento de 1 dado, dado é lançado k vezes, a soma de todos

X=sum(ceil(6*rand(k,nmec)));

mini=min(X);
maxi=max(X);

%A gama de valores de S será de 3 a 18

%4

e=[mini:maxi+1]-0.5;    

L=histc(X,e);        

nBins=10;       

bin=[mini:maxi];        

figure(1)
bar(bin(1:nBins),L(1:nBins));     %histograma
%%
%5

media=zeros(1,nmec);
for i=1:nmec
    media(i)=mean(X(1:i));
end
%%
figure(2)
plot(0:nmec-1,media)

%6

for a=1:nmec
   if (X(a) == 7)
       P(a) = X(a);
   end 
end
Pr =(sum(P)/sum(X))
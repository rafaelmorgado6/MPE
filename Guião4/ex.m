%1

N = 512;
load trab04.mat;         % é criada a variável y
figure(1);
imagesc(reshape(y,N,N));
colormap(gray);
colorbar

%a

miny=min(y);         %minimo
maxy=max(y);         %minimo=
valores=length(unique(y))          %valores diferentes de y

f=[miny:maxy+1]-0.5;    %criaçao de intervalos para cada numero

L=histc(y,f);        %contagem de cada numero

Bins=length(f)-1;       %vetor para colocar y

bin=[miny:maxy];        %vetor x

figure(2)
bar(bin,L(1:Bins));     %histograma com a soma de dois valores
title('Histograma de y')

%b

bits=log2(valores)      %bits contidos nesse sinal

%2

%a
ynovo = y - 2^8/2;   % retirar componente DC

desviop = 10;       %colocar 10x menor a potencia do sinal

rn = desviop * randn(length(ynovo), 1);
yn = ynovo + rn;

yreg = round(yn);   % regenerar os valores

Psinal = sum(yreg.^2)/length(y);    %potencia do sinal
Pruido = sum(rn.^2)/length(y);      %potencia do ruido

SNR = 10*log10(Psinal/Pruido)      %Relaçao Sinal-Ruido
    
figure(3)
imagesc(reshape(yreg, N, N));
colormap(gray);
colorbar;

%b

% SNRnew=[10 20 30 40 50];
% 
% for k=1:length(SNRnew)
%     
% end

%converter para binario a variavel y

% dec2bin converte cada valor de y numa string de 0s e 1s
binary_string = dec2bin(y, 8);
% converte strings em n´umeros
binary_data = rem(double(binary_string), 2);
% converte para valores sim´etricos
recetor = 2 * binary_data - 1;

Psinal1 = mean(recetor(:).^2);

sigma = zeros(1,5);
SNRdB = 0:5:20;     % 5 valores entre 0 e 20 db
  
figure(4);
for i=1:5
   sigma(i) = sqrt(Psinal1./(10.^(SNRdB(i)/10)));
   ruido = sigma(i) * randn(length(yn), 1);
   binary_byte1 = recetor + ruido;
   binary_byte = binary_byte1 >= 0;
   decimal_value = binary_byte * [128 64 32 16 8 4 2 1]';   %converter uma sequencia de 8 bits para decimal
   
   subplot(2,3,i);   
   imagesc(reshape(decimal_value,N,N));
   colormap(gray);
   colorbar;
   title(['SNR = ' num2str(SNRdB(i)) 'dB']);
end

%Ex4:
%a
ydif = diff(y);
figure(5)
minX1 = min(ydif);
maxX1 = max(ydif);
e1 = [minX1:maxX1+1]-0.5;
H1 = histc(ydif,e1);         % histograma = contar ocorrências
nBins1 = length(e1)-1;    
binCenters1 = [minX1:maxX1];
bar(binCenters1, H1(1:nBins1))

%b
sigma = zeros(1,5);
SNRdB = 0:5:20;     % 5 valores entre 0 e 20 db

figure(6);
for i=1:5
    sigma(i) = sqrt(Psinal./(10.^(SNRdB(i)/10)));
    ruido = sigma(i) * randn(length(yn), 1);
    yruido = yn + ruido;
    subplot(2,3,i);
    imagesc(reshape(yruido,N,N));
    colormap(gray);
    colorbar;
    title(['SNR = ' num2str(SNRdB(i)) 'dB']);
end    
%quanto maior o SNR melhor a qualidade da imagem
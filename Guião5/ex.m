    
img = imread('skin.jpg');
hsv = rgb2hsv(img);            % HSV(Hue, Saturation, Value)
h = hsv(:,:,1);
s = hsv(:,:,2);
h = ceil(99 * h) + 1;
s = ceil(99 * s) + 1;

pHS = zeros(100);
for a = 1 : size(img,1)                                             % Percorre cada pixel da imagem
    for b = 1 : size(img,2)
        pHS(h(a,b), s(a,b)) = pHS(h(a,b), s(a,b)) + 1;
    end
end
figure(1), surf(pHS), title('pHS')

%calcular a função de probabilidade conjunta do grafico 3D (normalizar de 0~1)
pHS = pHS./(sum(sum(pHS)));                                    
figure(2), surf(pHS), title('probibilidade conjunta')



%2
pHS = zeros(100);
for a = 1 : size(img,1)                                             % Percorre cada pixel da imagem
    for b = 1 : size(img,2)
        pHS(h(a,b), s(a,b)) = pHS(h(a,b), s(a,b)) + 1;
    end
end
figure(1), surf(pHS), title('pHS')                % Cria gráfico com altura (3D)

%calcular a função de probabilidade conjunta do grafico 3D (normalizar de 0~1)
pHS = pHS./(sum(sum(pHS)));                                    
figure(2), surf(pHS), title('probibilidade conjunta')

%3
pH = sum(pHS');
figure(3), plot(pH), title('pH')

pS = sum(pHS);
figure(4), plot(pS), title('pS')
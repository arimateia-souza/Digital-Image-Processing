close all
clear all

im = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\lena.png');
N = input('Digite a quantidade de intensidade: ');

fator = 255/N;

imReduzida = im;

for i = 1:size(im, 1)
    for j = 1:size(im, 2)

        fator_atual = im(i, j) / fator;
        imReduzida(i, j) = fator_atual * fator - fator / 2;

    end
end

% Mostra a original  e e que foi reduzida
figure('name','Desafio PDI - Pratica')
subplot(1,2,1);
imshow(im);
title('imagem original')
subplot(1,2,2);
imshow(imReduzida, []);
title('imagem reduzida')





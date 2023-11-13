close all;
clear all;
pkg load image;
#-----------------------------------
# PRATICA 2C
#-----------------------------------
im = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\lena.png');
size(im);
figure('name', "Imagem Original");
imshow(im);

imDegrade = im;
valor = -256;
for i=1:size(im,1)
  imDegrade(:,i) = im(:,i)+(valor);
  valor = valor + 1;
endfor

figure('name', "Imagem Degradê");
imshow(imDegrade);

imPosterizada = im;
for i = 1:size(im, 1)
    for j = 1:size(im, 2)
        if im(i, j) < 85
            imPosterizada (i, j) = 0;  % Nível baixo de intensidade
        elseif im(i, j) < 170
            imPosterizada (i, j) = 127; % Nível médio de intensidade
        else
            imPosterizada (i, j) = 255; % Nível alto de intensidade
        end

    end
end

figure('name', "Imagem Posterizada");
imshow(imPosterizada);


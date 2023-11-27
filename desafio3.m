close all;
clear all;
pkg load image;
#-----------------------------------
# DESAFIO 4
#-----------------------------------
im = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\mask_2.tif');
im2 = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\mask_3.tif');
im2Logica = logical(im2);

figure('name', "Imagem 1");
imshow(im);
#title('mask2 image');

figure('name', "Imagem 2");
imshow(im2);
# JUNÇÃO DAS IMAGENS
for i = 1 : size(im, 1)
    for j = 1 : size(im, 2)
        if im2Logica(i, j) == true;
            im2Logica(i, j) = im(i,j);
        end
    end
end
figure('name', "Imagem Saida");
imshow(im2Logica);
title('Saida:');







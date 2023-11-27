close all;
clear all;
#pkg load image;
#-----------------------------------
# PRATICA 4
#-----------------------------------
imBack = imread('background_5.jpg');
imMask = imread('mask_4.tif');
imObj = imread('object_6.tif');

figure('name', 'imagens de entrada');
subplot(1,3,1);
imshow(imBack);
subplot(1,3,2);
imshow(imMask);
subplot(1,3,3);
imshow(imObj);
#CRIAÇÃO DO QUADRO
quadro = zeros(512, 512, 'uint8');
######NEGATIVO NO OBJ######
for i = 1:size(imObj,1)
    for j = 1:size(imObj,2)
       imObj(i,j) = 255-imObj(i,j);
    end
end
figure('name', "Negativo");
imshow(imObj);
######ROTAÇÃO######
im_mk = imMask;
for i = 1:size(imObj,1)
    for j = 1:size(imObj,2)
       im_mk(i,size(im_mk,2) + 1 - j) = im_mk(j,i);
    end
end
figure('name', "Rotação da mascara");
imshow(im_mk);
######OPERAÇÃO ARITMETICA######
for i = 1:size(imObj,1)
    for j = 1:size(imObj,2)
      if imMask(i,j) == true
        imObj(i,j) = imBack(i,j) - imObj(i,j);
       endif
    end
end
figure('name', "Soma");
imshow(imObj);









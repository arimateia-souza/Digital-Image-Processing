close all;
clear all;
#pkg load image;
#-----------------------------------
# PRATICA 5A
#-----------------------------------
im = imread('cores.jpg');
figure('name', "Imagem 1");
imshow(im);
#title('mask2 image');


imCinza = 0.2989 * im(:,:,1) + 0.5870 * im(:,:,2) + 0.1140 * im(:,:,3);

figure('name', "Imagem 1");
imshow(imCinza);











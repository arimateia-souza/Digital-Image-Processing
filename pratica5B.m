close all;
clear all;
#pkg load image;
#-----------------------------------
# PRATICA 5
#-----------------------------------
im = imread('milho.png');
#figure('name', "Imagem 1");
#imshow(im(:,:,3));
imMask = zeros(size(im,1),size(im,2),'uint8');
#imMask(:,:) = 255;

for i=1: size(im,1)
  for j=1: size(im,2)
    if im(i,j,1) > 150
      imMask(i,j) = 255;
    endif
  endfor
endfor
imSaida = zeros(size(im,1),size(im,2),3,'uint8');
for i=1: size(im,1)
  for j=1: size(im,2)
    if imMask(i,j) == 255
      imSaida(i,j,:) = im(i,j,:);
    endif
  endfor
endfor

figure('name', "Imagem im2");
imshow(imMask);
figure('name', "Histograma");
imshow(imSaida);
#imhist(im(:,:,3));
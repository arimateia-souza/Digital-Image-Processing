pkg load image;
clear all;
close all;
#-----------------------------------
# PRATICA 1B
#-----------------------------------

# Ler e Transformar a Imagem Lena:
# Leia a imagem "lena.png" e armazene-a na variável im.
im = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\lena.png');
# Mostrar Tamanho da Imagem no Console:
# Exiba o tamanho da imagem “im” no console.
size(im);
figure
imshow(im);
# Percorra a imagem “im” e adicione 80 às intensidades de cada pixel.
# Verifique se ocorreu estouro de branco nos pixels.
im2 = im;
for i=1:size(im2,1)
  for j=1:size(im2,2)
    im2(i,j) = im2(i,j) + 80;
  endfor
endfor
figure;
imshow(im2); %Houve estouro

%Percorra a imagem resultante e subtraia 80 de cada pixel.
%Observe se o estouro de branco foi removido.
im3 = im;
for i=1:size(im3,1)
  for j=1:size(im3,2)
    im3(i,j) = im3(i,j) - 80;
  endfor
endfor
figure;
imshow(im3); % Estouro não foi resolvido












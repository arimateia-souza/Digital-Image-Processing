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
figure('name', "Imagem Original");
imshow(im);
# Percorra a imagem “im” e adicione 80 às intensidades de cada pixel.
# Verifique se ocorreu estouro de branco nos pixels.
im2 = im;
for i=1:size(im2,1)
  for j=1:size(im2,2)
    im2(i,j) = im2(i,j) + 80;
  endfor
endfor
figure('name', "Imagem com + 80");
imshow(im2); %Houve estouro

%Percorra a imagem resultante e subtraia 80 de cada pixel.
%Observe se o estouro de branco foi removido.
imSubtraida = im;
for i=1:size(imSubtraida,1)
  for j=1:size(imSubtraida,2)
    imSubtraida(i,j) = imSubtraida(i,j) - 80;
  endfor
endfor
figure('name', "Imagem com - 80");
imshow(imSubtraida); % Resposta: Estouro não foi resolvido
# Peça ao usuário para inserir um valor inteiro .
#Repita o processo do ponto 4 com o valor inserido, gerando a imagem im3.

usuario = input("Digite um numero inteiro: ");
im3 = im;
for i=1:size(im,1)
  for j=1:size(im,2)
    im3(i,j) = im3(i,j) + usuario;
  endfor
endfor
figure('name', "Imagem do usuario");
imshow(im3);








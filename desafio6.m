pkg load image;
close all;
clear all;

im = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\mapa_menor.png');

% recebe todas linhas e colunas apenas do canal 3
canalAzul = im(:,:,3);
imLogica = canalAzul;

for i=1 : size(canalAzul,1)
  for j=1: size(canalAzul,2)
    if canalAzul(i,j) > 100
      imLogica(i,j) = imLogica(i,j);
    endif
  endfor
endfor


figure;
imshow(imLogica);







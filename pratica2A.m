pkg load image;

clear all
close all

im = zeros(256, 256, 'uint8'); #imagem com o tamaho defenido e tipo

# Degrade
for i = 1 : size(im, 1)%linhas
  for j = 1 : size(im, 2)%colunas
    im(i,j) = i-1;
  end
end
# Adicionar uma Moldura:
# Percorra a imagem e crie uma moldura.
# Aplique estruturas condicionais para determinar a posição da borda.
im2 = im;
for i =1: size(im, 1)
  for j = 1: size(im,2)
    if(i > 8 && i <=24) || (i > 232 && i <=248) || (j > 8 && j <= 24) || (j > 232 && j <= 248)
    im2(i,j) = 127;
    endif
  endfor
endfor


figure;
imshow(im);
figure;
imshow(im2);

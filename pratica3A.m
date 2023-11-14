close all;
clear all;
pkg load image;
#-----------------------------------
# PRATICA 3A
#-----------------------------------
im = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\moon.png');
size(im);
figure('name', "Imagem Original");
imshow(im);

# HISTOGRAMA
figure('name', "Histograma");
imhist(im);

# BINARIZAÇÃO
for i = 1 : size(im, 1)
    for j = 1 : size(im, 2)
        if im(i, j) < 120
            imBinaria(i, j) = true;
        else
            imBinaria(i, j) = false;
        end
    end
end
figure('name', "Imagem Binária");
imshow(imBinaria);

# BINARIZAÇÃO COM ENTRADA
limiar = input('Digite o limiar: ');
for i = 1 : size(im,1)
  for j = 1 : size(im, 2)
    imBinaria2(i,j) = im(i,j) < limiar;
  end
end
figure('name', "Imagem Binária com limiar do usuário");
imshow(imBinaria2);







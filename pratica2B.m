close all;
clear all;
pkg load image;
#-----------------------------------
# PRATICA 2B
#-----------------------------------
im = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\lena.png');
size(im);
figure('name', "Imagem Original");
imshow(im);

# 3. Operações aritméticas usando laços de repetição:
#- Aumente a intensidade de todos os pixels da imagem Lena em 80% e armazene essa imagem como "imClara".
#- Diminua a intensidade de todos os pixels da imagem Lena em 80% e armazene essa imagem como "imEscura".
imClara = im;
imEscura = im;
for i = 1:size(im, 1)
    for j = 1:size(im, 2)
        imClara(i, j) = imClara(i, j) * 1.8;
        imEscura(i, j) = imEscura(i, j) * 0.2;
    end
end
% imClara = im .* 1.8;
% imEscura = im .* 0.2;


figure('name', "Imagem Clara");
imshow(imClara);

figure('name', "Imagem Escura");
imshow(imEscura);



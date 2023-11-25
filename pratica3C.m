close all;
clear all;
pkg load image;
#-----------------------------------
# PRATICA 3C
#-----------------------------------
im = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\lake.png');
figure('name', "Imagem original lake");
imshow(im);
title('lake image');

# HISTOGRAMA
figure('name', "histograma");
histograma = imhist(im);
imhist(im); #VER O HISTOGRAMA
title('histograma imagem lake');
#MAX E MIN DE UMA IMAGEM
min_intensidade = 255;
max_intensidade = 0;
for i = 1:256
    if histograma(i) > 0
        min_intensidade = min(min_intensidade, i - 1);
        max_intensidade = max(max_intensidade, i - 1);
    end
end
#NOVA IMAGEM
imContraste = zeros(size(im,1), size(im,2), 'uint8');#IMAGEM DE ZEROS DO TAMANHO DE 'IM' NAS LINHAS E COLUNAS DO TIPO UINT
% ALARGAMENTO DO CONSTRASTE
for i = 1:size(im,1)
    for j = 1:size(im,2)
        valor_pixel = double(im(i, j));
        novo_valor = ((valor_pixel - min_intensidade) / (max_intensidade - min_intensidade)) * 255;
        imContraste(i, j) = uint8(novo_valor);
    end
end
# IMAGENS
figure('name', 'IMAGENS DE SAIDA');
subplot(1, 2, 1);
imshow(im);
title('Imagem Original');

subplot(1, 2, 2);#1 LINHA #2 COLUNAS NA POSIÇÃO 2
imshow(imContraste);
title('Imagem com ALARGAMENTO');


# NOVO HISTOGRAMA
figure('name', 'histograma');
subplot(1, 2, 1);
imhist(im);
subplot(1, 2, 2);
imhist(imContraste);


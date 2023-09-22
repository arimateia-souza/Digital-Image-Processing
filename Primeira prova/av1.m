# ARIMATÉIA SANTOS DE SOUZA
# Nº1
pkg load image
clear all
close all


mask = imread('C:\Users\arisa\OneDrive\Documentos\pdi\Primeira prova/mask_1.png');
land = imread('C:\Users\arisa\OneDrive\Documentos\pdi\Primeira prova/land_1.png');
tads = imread('C:\Users\arisa\OneDrive\Documentos\pdi\Primeira prova/tads_1.png');
text = imread('C:\Users\arisa\OneDrive\Documentos\pdi\Primeira prova/text_1.png');
animal = imread('C:\Users\arisa\OneDrive\Documentos\pdi\Primeira prova/animal_1.png');

imSaida = mask;
macaco = rgb2gray(animal);
#Pintar partes de amarelo
for i = 1: size(mask,1)
  for j = 1: size(mask,2)
    if mask(i,j,1) == 127 && mask(i,j,2) == 127 && mask(i,j,3) == 127
      imSaida(i,j,1) = 255;
      imSaida(i,j,2) = 255;
      imSaida(i,j,3) = 0;
    endif
     if mask(i,j,:) == 60
      imSaida(i,j,:) = macaco(i,j,:);
    endif
    if mask(i,j,:) == 0
      land(i,j,:) = land(i,j,:) + 70;
      imSaida(i,j,:) = land(i,j,:);
    endif
    if mask(i,j,:) == 255
      land(i,j,:) = land(i,j,:);
      imSaida(i,j,:) = land(i,j,:);
    endif
    endfor
endfor

# Letras tads fica branca e recebe text
for i = 1: size(tads,1)
  for j = 1: size(tads,2)
      if tads(i,j,:) <= 27
      tads(i,j,:) = 255;
      tads(i,j,:) = text(i,j,:);

    endif

    endfor
endfor



# Aplicar o texto ja editado na saida
for i = 1: size(mask,1)
  for j = 1: size(mask,2)
      if mask(i,j,:) == 180
      imSaida(i,j,:) = 0;
    endif
    endfor
endfor





figure;
imshow(imSaida);

figure;
imshow(tads);


figure;
imshow(tadscopida);





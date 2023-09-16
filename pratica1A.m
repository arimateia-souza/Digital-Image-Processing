pkg load image;
clear all;
close all;

# Abrir a Imagem "círculo.png":
m1 = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\circulo.png');
# Exibir a Matriz "m1" em uma Janela:
figure;
imshow(m1);
# Mostrar a Matriz "m1" no Console:
m1
# Crie uma nova matriz m2 copiando a matriz m1.
m2 = m1;
# Transforma em uint8 pra poder pintar de cinza
m2 = uint8(m1);
# Percorra a matriz m2 e defina os valores dos pixels do círculo como cinza médio
for i=1: size(m1,1)
  for j=1: size(m1,2)
    if(m1(i,j) == 1)
      m2(i,j) = 126;

    endif
  endfor
endfor

figure;
imshow(m2);
#Salvar a imagem (Passa a imagem que quer salvar, depois o local\nomeNovo.extensao)
#imwrite(m2, 'C:\Users\arisa\OneDrive\Documentos\pdi\imwrite\circulo2.png');


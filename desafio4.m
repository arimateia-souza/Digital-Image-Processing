clear all
close all
%%Desafio 5

im = imread('neuron.jpg');

im2 = im;

for i=1:size(im,1)
  for j=1:size(im,2)
    if(im(i,j,2) >=80 )
      im2(i,j,:) = 0;
      elseif(im(i,j,1) >=70)
        im2(i,j,:) = +255;
      elseif im(i,j,1) >=200 && im(i,j,2) >=117 && im(i,j,3) >53
         im2(i,j,:) = 190;



endif
  endfor
endfor


saida1 = im2;
for i=1:size(im,1)
  for j=1:size(im,2)
       if(im2(i,j,:) >=200)
          saida1(i,j,:) = 120;

endif
  endfor
endfor


saida2 = im;
for i=1:size(im,1)
  for j=1:size(im,2)
       if(im2(i,j,1) >=200)
          saida2(i,j,:) = +255;
        else           saida2(i,j,:) = 0;


endif
  endfor
endfor
figure;
subplot(1,3,1)
imshow(im);
title('Original');
subplot(1,3,2)
imshow(saida1);
title('Saida 1');
subplot(1,3,3)
imshow(saida2);
title('Saida 2');
figure;
imshow(saida1);
figure;
imshow(saida2);













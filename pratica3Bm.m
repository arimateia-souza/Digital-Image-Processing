close all;
clear all;
pkg load image;
#-----------------------------------
# PRATICA 3B
#-----------------------------------
imMask = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\dance_depth.png');
im = imread('C:\Users\arisa\OneDrive\Documentos\pdi\imgs\dance.png');
imBailarina= im;
imMan= im;

size(im);
figure('name', "Imagem Original");
imshow(im);
figure('name', "Imagem Mascara");
imshow(imMask);
# HISTOGRAMA
figure('name', "Histograma da Mascara");
imhist(imMask);

#
imBailarinaMask =imMask;
imManMask =imMask;
for i = 1 : size(im, 1)
    for j = 1 : size(im, 2)
        if imMask(i, j) >= 100 && imMask(i, j) <= 170
            imBailarinaMask(i, j) = 255;
            else imBailarinaMask(i,j) = 0;
        end
        if imMask(i,j) >= 180 && imMask(i,j) <= 250
        imManMask(i, j) = 255;
            else imManMask(i,j) = 0;
        end
    end
end
figure('name', "Imagem Bailarina MASK");
imshow(imBailarinaMask);
figure('name', "Imagem Man MASK");
imshow(imManMask);

# IMAGEM FINAL
for i = 1 : size(im, 1)
    for j = 1 : size(im, 2)
      ###IM FINAL BAILARINA
        if imBailarinaMask(i, j) != 255
            imBailarina(i, j,:) = 0;
        end
      ###IM FINAL MAN
        if imManMask(i,j) != 255
            imMan(i, j,:) = 0;
        end
    end
end

figure('name', "Imagem Bailarina FINAL");
imshow(imBailarina);
figure('name', "Imagem Man FINAL");
imshow(imMan);









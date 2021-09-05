figure(1)
a = imread('Rani.jpg');
imshow(a)

%Rumus Komposisi Tarsformasi Citra RG ke Grayscale (citra keabuan)
I_grayKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
figure(2)
imshow(I_grayKom)
title('Rumus Komposisi')

%Mengubah Citra Keabuan Kecitra Binner
I_bw = im2bw(I_grayKom,0.5);
figure(3)
imshow(I_grayKom)

%Pengaturan Brightness Citra Keabuan
tBrig = 150;
I_brig = I_grayKom + tBrig;
figure(4)
imshow(I_brig)

%Pengaturan Contras Citra Keabuan
tCon = 1.5;
I_con = I_grayKom * tCon;
figure(5)
imshow(I_con)
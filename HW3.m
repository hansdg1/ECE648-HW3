lena = imread('lena.bmp'); % Read in image. (Input filesize = 256 x 256)


figure(1);

lena_8 = downsample_image(lena,8);

% Downsample by a factor of 2
lena_2 = downsample_image(lena,2);

subplot(3,2,1);
imshow(lena, [0,255]);
axis tight;
axis off;
title('Original Image');

subplot(3,2,2);
imshow(lena_2, [0,255]);
axis tight;
axis off;
title('Downsampled By 2');

% Downsample by a factor of 4
lena_4 = downsample_image(lena,4);
subplot(3,2,3);
imshow(lena, [0,255]);
axis tight;
axis off;
title('Original Image');

subplot(3,2,4);
imshow(lena_2, [0,255]);
axis tight;
axis off;
title('Downsampled By 4');
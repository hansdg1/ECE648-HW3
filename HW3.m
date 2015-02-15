lena = imread('lena.bmp'); % Read in image. (Input filesize = 256 x 256)


% Downsample by a factor of 2
lena_2 = downsample_image(lena,2);
% Downsample by a factor of 4
lena_4 = downsample_image(lena,4);
% Downsample by a factor of 8
lena_8 = downsample_image(lena,8);

lena_4_bpp = quantize_image(lena,4);
lena_2_bpp = quantize_image(lena,2);
lena_1_bpp = quantize_image(lena,0);
function [ quantized ] = quantize_image( input_img, bits )
%QUANTIZE_IMAGE Quantizes the input image to the specified 'bits'/pixel
% input_img     : the image to be quantized
% bits          : the bits/pixel of the output image
[ m, n ] = size ( input_img );

% Should it be 2^(bits-1) ?
NumLevels = m/2^bits;

% Q = 2 / NumLevels; %%%%Not sure about 1 bits/pixel case. 2^1 = 2..? 

% quantized = sign(input_img) .* floor(input_img / Q) * Q;
quantized = floor(input_img / NumLevels ) * NumLevels;

% imshow(quantized);
filename = ['lena_quantized_' num2str(bits) '.bmp'];
imwrite(quantized,filename,'bmp');
end


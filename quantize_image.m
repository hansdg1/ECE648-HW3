%%%%%%%%%%%%%%%%%%%%%%%%
% Project: ECE 648 HW3 %
% Author: Hans Guthrie %
%%%%%%%%%%%%%%%%%%%%%%%%

function [ quantized ] = quantize_image( input_img, bits )
%QUANTIZE_IMAGE Quantizes the input image to the specified 'bits'/pixel
% input_img     : the image to be quantized
% bits          : the bits/pixel of the output image
[ m, n ] = size ( input_img );

% Should it be 2^(bits-1) ?
NumLevels = m/2^(bits -1);

fprintf('Bits: %d | Bits -1: %d | NumLevels: %d\n', bits, bits -1, NumLevels);

% Not sure about 1 bits/pixel case. 2^1 = 2..? 
% Q = 2 / NumLevels;


% quantized = sign(input_img) .* floor(input_img / Q) * Q;
% quantized = sign(input_img) .* floor(input_img / NumLevels ) * NumLevels;
quantized = floor(input_img / NumLevels ) * NumLevels;



% Write the picture to a file
filename = ['lena_quantized_' num2str(bits) '.bmp'];
imwrite(quantized,filename,'bmp');
end


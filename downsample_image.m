function [ upscale ] = downsample_image( input_img, factor )
% DOWNSAMPLE Downsamples the input image, and then upscales 
%   Downsamples the input image by the given factor, upscales it, and returns
%   the upscaled image. Writes the upscaled image to a file
%   input_img     :   input file to be downsamples
%   factor        :   the factor at which to downsample img


% Downsampling
downsampled = input_img( 1 : factor : end, 1 : factor : end);

% Upscaling
upscale_factor = factor / (factor * factor);
upscale = downsampled( upscale_factor:upscale_factor:end, upscale_factor:upscale_factor:end );


filename = ['lena_downsampled_' num2str(factor) '.bmp'];
imwrite(upscale,filename,'bmp');
end



function g = histogram_equalization(image)

[counts, ~] = imhist(image);

total_pixels = numel(image);
pdf = counts / total_pixels;
cdf = cumsum(pdf);

% P is length
P = length(counts); 
transformation =  cdf * (P - 1);
image = uint8(image * 255);
g = transformation(double(image) + 1);
g = reshape(g, size(image));

end





    

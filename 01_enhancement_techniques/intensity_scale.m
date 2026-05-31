function g = intensity_scale(image, f1, f2)
%{
input: 
image - raw input image
f1, f2 - intensity band of interest

additional things: 
e - intermediate image
fmax - maximum intensity of display 
%}

mask = image >= f1 & image <= f2;
e = image(mask);

fmax = (2 ^ 64) - 1;

g = zeros(size(image));

g(mask) = ((e - f1) / (f2 - f1)) * fmax;

end

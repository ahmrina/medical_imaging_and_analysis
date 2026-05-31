
clc

addpath(genpath('/MATLAB Drive/medical_image_processing_and_analysis'));
images = read_data("/MATLAB Drive/medical_image_processing_and_analysis/datasets/ct_scans_samples", "*.DCM");

image = images{1}
f1 = prctile(image(:), 5); 
f2 = prctile(image(:), 95);
% g = intensity_scale(image,f1, f2)

g = histogram_equalization(image)
% imshow(g)
imshow(image)


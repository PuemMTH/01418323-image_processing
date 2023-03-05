clc
clear all
close all
I = imread('coins.png');
figure(1), imshow(I);
title('Original Image');

BW = imbinarize(I); % binary iamge
figure(2), imshow(BW);
title('Original Image Converted to Binary Image');

BW2 = imfill(BW, 'holes'); % fill hold
figure(3), imshow(BW2);
title('Image with Filled Holes');
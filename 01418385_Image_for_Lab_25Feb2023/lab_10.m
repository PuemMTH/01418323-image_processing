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
title('Filled Image');

se = strel('square', 20); % structuring element
dilatedBW2 = imdilate(BW2, se); % erode image
figure(4), imshow(dilatedBW2);
title('Dilated Image with Square');

se = strel('sphere', 15); % structuring element
erodedBW2 = imerode(dilatedBW2, se); % erode image
figure(5), imshow(erodedBW2);
title('Eroded Image with Sphere');
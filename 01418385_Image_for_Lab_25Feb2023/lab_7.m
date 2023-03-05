clc
clear all
close all
I = imread('coins.png');
figure(1), imshow(I);
title('Original Image');
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');
figure(2), imshow(BW1);
title('Sobel Fillter');
figure(3), imshow(BW2);
title('Canny Fillter');
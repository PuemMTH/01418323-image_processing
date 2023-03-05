clc
clear all
close all
I = imread('Lenna.png');
figure(1), imshow(I);
K = rgb2gray(I);
figure(2), imshow(K);
figure(3), imhist(K);
J = imadjust(K);
figure(4), imshow(J);
figure(5), imhist(J);
gramma = 0.03;
G = imadjust(K, [], [], gramma);
figure(6), imshow(G);
E = histeq(K);
figure(7), imshow(E);
figure(8), imhist(E);
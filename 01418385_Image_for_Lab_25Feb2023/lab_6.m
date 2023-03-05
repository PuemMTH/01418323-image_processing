clc
clear all
close all
I = imread('Lenna.png');
[m1 n1 p1] = size(I);
IG = rgb2gray(I);
[m n p] = size(IG);
X= zeros(m+2,n+2); % วน mask 3x3 ในรูป

% วน mask 3x3 ในรูป 
for i = 1:m
    for j = 1:n
        X(i+1, j+1) = IG(i, j);
        if (i == 1)&&(j == 1)
            % X(i, j) = IG(i,j);
            X(i,j) = 255;
        else if(i == 1)&&(j == 512)
            % X(i, j + 2) = IG(i, j);
            X(i,j+2) = 255;
            else if(i == 512)&&(j == 1)
                % X(i + 2,j) = IG(i,j);
                X(i+2,j) = 255;
                else if(i == 512)&&(j == 512)
                    % X(i + 2, j + 2) = IG(i,j);
                    X(i+2,5+2) = 255;
                    end
                end
            end
        end
    end
end
X(1,2:513) = IG(1,:);
X(514,2:513) = IG(512,:);
X(2:513,1) = IG(:,1);
X(2:513,514) = IG(:,512);
figure(1),imshow(mat2gray(X));

% วน mask 3x3 ในรูป โดยใช้ Fillter Median
% 514x514 ให้ได้ 512x512
% A = zeros(m,n);
% for i = 1:m
%     for j = 1:n
%         A(i,j) = round(mean(mean(X(i:i+2,j:j+2))));
%     end
% end
% figure(2),imshow(mat2gray(A));

A = zeros(m,n);
% Mask sobel
% M01 = [-1 -1 -1; 0 0 0; 1 2 1];
% Mask sobel 2
M01 = [-1 0 1; -2 0 2; -1 0 1];
for i = 1:m
    for j = 1:n
        C = X(i:i+2,j:j+2); % mask 3x3
        A(i,j) = sum(sum(C.*M01)); % คูณ mask กับ รูป .* คือ คูณแต่ละตำแหน่ง
        A(i,j) = abs(A(i,j)); % ให้ค่าเป็นบวก
        if A(i,j) > 255 % ถ้าค่ามากกว่า 255 ให้เท่ากับ 255
            A(i,j) = 255;
        end
    end
end
figure(3),imshow(mat2gray(A));
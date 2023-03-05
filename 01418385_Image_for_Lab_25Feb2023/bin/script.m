% read image
m = imread('./Fig309a.jpg');
% imshow with figure
figure(1)
imshow(m)
% to gray scale image
figure(2)
m2 = rgb2gray(m);
imshow(m2)

% histogram
figure(3)
imhist(m)

figure(4)
imhist(m2)

% imadjust mapping
figure(5)
m3 = imadjust(m2);
imshow(m3)

% gamma correction
figure(6)
m4 = imadjust(m2,[],[],0.5);
imshow(m4)

% histeq
figure(7)
m5 = histeq(m2);
imshow(m5)

% imhistmatch
figure(8)
m6 = imread('./Fig309b.jpg');
m6 = rgb2gray(m6);
m7 = imhistmatch(m2,m6);
imshow(m7)

% size
[m, n, p] = size(m2);

% for
for i = 1:20
    x(i) = i;
end

for i = 1:0.5:20
    y(i*2) = i*5;
end

% if els
if m > n
    disp('m is bigger than n')
else
    disp('m is smaller than n')
end

% zeros
z = zeros(10);
z2 = zeros(10,10);

% mat2gray เปลี่ยนค่าในให้สามารถแสดงผลได้ ในคำสั่ง imshow
m8 = mat2gray(m2);
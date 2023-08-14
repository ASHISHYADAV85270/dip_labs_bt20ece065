clear;
clc;
I = imread('Plampi.png'); 

% histogram balancing using inbuilt func
figure,
subplot(211);
imshow(I);
subplot(212);
imhist(I);  %for printing histogram


figure,
I2=histeq(I); %for Balancing histogram
subplot(211);
imshow(I2);
subplot(212);
imhist(I2);
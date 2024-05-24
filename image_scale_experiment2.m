% 원본 영상
c = imread('cameraman.tif');

% nearest
c_nearest_1 = imresize(c, 1/4, 'nearest');
c_nearest_2 = imresize(c_nearest_1, 4, 'nearest');

% bilinear
c_bilinear_1 = imresize(c, 1/4, 'bilinear');
c_bilinear_2 = imresize(c_bilinear_1, 4, 'bilinear');

% bicubic
c_bicubic_1 = imresize(c, 1/4, 'bicubic');
c_bicubic_2 = imresize(c_bicubic_1, 4, 'bicubic');

% 결과 확인
figure;

subplot(1,4,1), imshow(c), title('원본');
subplot(1,4,2), imshow(c_nearest_2), title('Nearest');
subplot(1,4,3), imshow(c_bilinear_2), title('Bilinear');
subplot(1,4,4), imshow(c_bicubic_2), title('Bicubic');

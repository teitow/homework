% 원본 영상
c = imread('cameraman.tif');

% nearest
c_resize1_1 = imresize(c, 4, 'nearest');
c_resize1_2 = imresize(c_resize1_1, 1/4, 'nearest');

% bilinear
c_resize2_1 = imresize(c, 4, 'bilinear');
c_resize2_2 = imresize(c_resize2_1, 1/4, 'bilinear');

% bicubic
c_resize3_1 = imresize(c, 4, 'bicubic');
c_resize3_2 = imresize(c_resize3_1, 1/4, 'bicubic');

% 결과 확인
resize1 = psnr(c_resize1_2, c)
resize2 = psnr(c_resize2_2, c)
resize3 = psnr(c_resize3_2, c)


% 결과 출력
figure;

subplot(1,4,1), imshow(c), title('원본');
subplot(1,4,2), imshow(c_resize1_2), title('Nearest');
subplot(1,4,3), imshow(c_resize2_2), title('Bilinear');
subplot(1,4,4), imshow(c_resize3_2), title('Bicubic');

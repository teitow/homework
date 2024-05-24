% rotate_comparison.m

% 흑색 배경에 흰색 사각형 생성
c = zeros(256, 256);
c(64:192, 64:192) = 255;

% 30도 회전 (nearest)
c_nearest_30 = imrotate(c, 30, 'nearest');

% 45도 회전 (nearest)
c_nearest_45 = imrotate(c, 45, 'nearest');

% 30도 회전 (bilinear)
c_bilinear_30 = imrotate(c, 30, 'bilinear');

% 45도 회전 (bilinear)
c_bilinear_45 = imrotate(c, 45, 'bilinear');

% 결과 확인
figure;

subplot(2,5,1), imshow(c), title('원본');
subplot(2,5,2), imshow(c_nearest_30), title('Nearest 30°');
subplot(2,5,3), imshow(c_nearest_45), title('Nearest 45°');
subplot(2,5,4), imshow(c_bilinear_30), title('Bilinear 30°');
subplot(2,5,5), imshow(c_bilinear_45), title('Bilinear 45°');

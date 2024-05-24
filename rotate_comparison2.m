% 사각형 생성
quad = zeros(300, 300);
quad(75:225, 75:225) = 1;

% 30도 회전 후 -30도 회전
quad30_n = imrotate(quad, 30, 'nearest');
quad30_l = imrotate(quad, 30, 'bilinear');
quad30_n_r = imrotate(quad30_n, -30, 'nearest');
quad30_l_r = imrotate(quad30_l, -30, 'bilinear');

% 45도 회전 후 -45도 회전
quad45_n = imrotate(quad, 45, 'nearest');
quad45_l = imrotate(quad, 45, 'bilinear');
quad45_n_r = imrotate(quad45_n, -45, 'nearest');
quad45_l_r = imrotate(quad45_l, -45, 'bilinear');

% 결과 확인
figure;

subplot(1, 4, 1), imshow(quad30_n_r), title('30도 nearest_reverse');
subplot(1, 4, 2), imshow(quad30_l_r), title('30도 bilinear_reverse');
subplot(1, 4, 3), imshow(quad45_n_r), title('45도 nearest_reverse');
subplot(1, 4, 4), imshow(quad45_l_r), title('45도 bilinear_reverse');

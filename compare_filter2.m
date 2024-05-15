% cameraman.tif 파일을 불러옴
cameraman_image = imread('cameraman.tif');

% mandrill.mat 파일을 불러옴
load('mandrill.mat');
mandrill_image = im2uint8(ind2gray(X, map));

% 다양한 필터 설정
average_filter = fspecial('average', [5, 5]);
disk_filter = fspecial('disk', 10);
gaussian_filter = fspecial('gaussian', [5, 5]);
laplacian_filter = fspecial('laplacian', 0.2);
motion_filter = fspecial('motion', 20, 45);
sobel_filter = fspecial('sobel');

% cameraman 이미지에 필터 적용
cameraman_average = imfilter(cameraman_image, average_filter);
cameraman_disk = imfilter(cameraman_image, disk_filter);
cameraman_gaussian = imfilter(cameraman_image, gaussian_filter);
cameraman_laplacian = imfilter(cameraman_image, laplacian_filter);
cameraman_motion = imfilter(cameraman_image, motion_filter);
cameraman_sobel = imfilter(cameraman_image, sobel_filter);

% mandrill 이미지에 필터 적용
mandrill_average = imfilter(mandrill_image, average_filter);
mandrill_disk = imfilter(mandrill_image, disk_filter);
mandrill_gaussian = imfilter(mandrill_image, gaussian_filter);
mandrill_laplacian = imfilter(mandrill_image, laplacian_filter);
mandrill_motion = imfilter(mandrill_image, motion_filter);
mandrill_sobel = imfilter(mandrill_image, sobel_filter);

% 결과 출력
figure;

% cameraman 결과 출력
subplot(2, 7, 1);
imshow(cameraman_image);
title('원본 cameraman');

subplot(2, 7, 2);
imshow(cameraman_average);
title('평균 필터');

subplot(2, 7, 3);
imshow(cameraman_disk);
title('원형 필터');

subplot(2, 7, 4);
imshow(cameraman_gaussian);
title('가우시안 필터');

subplot(2, 7, 5);
imshow(cameraman_laplacian);
title('라플라시안 필터');

subplot(2, 7, 6);
imshow(cameraman_motion);
title('모션 필터');

subplot(2, 7, 7);
imshow(cameraman_sobel);
title('소벨 필터');

% mandrill 결과 출력
subplot(2, 7, 8);
imshow(mandrill_image);
title('원본 mandrill');

subplot(2, 7, 9);
imshow(mandrill_average);
title('평균 필터');

subplot(2, 7, 10);
imshow(mandrill_disk);
title('원형 필터');

subplot(2, 7, 11);
imshow(mandrill_gaussian);
title('가우시안 필터');

subplot(2, 7, 12);
imshow(mandrill_laplacian);
title('라플라시안 필터');

subplot(2, 7, 13);
imshow(mandrill_motion);
title('모션 필터');

subplot(2, 7, 14);
imshow(mandrill_sobel);
title('소벨 필터');

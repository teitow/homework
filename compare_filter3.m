% compare_filter3.m

% cameraman.tif 파일을 불러옴
cameraman_image = imread('cameraman.tif');

% mandrill.mat 파일을 불러옴
load('mandrill.mat');
mandrill_image = im2uint8(ind2gray(X, map));

% 라플라시안 필터의 alpha 값 설정
alpha_values = [0, 0.2, 0.5, 0.7, 1.0];

% cameraman 이미지에 필터 적용 및 결과 저장
cameraman_results = cell(length(alpha_values), 1);
for i = 1:length(alpha_values)
    laplacian_filter = fspecial('laplacian', alpha_values(i));
    cameraman_results{i} = imfilter(cameraman_image, laplacian_filter, 'replicate');
end

% mandrill 이미지에 필터 적용 및 결과 저장
mandrill_results = cell(length(alpha_values), 1);
for i = 1:length(alpha_values)
    laplacian_filter = fspecial('laplacian', alpha_values(i));
    mandrill_results{i} = imfilter(mandrill_image, laplacian_filter, 'replicate');
end

% 결과 출력
figure;

% cameraman 결과 출력
subplot(2, length(alpha_values) + 1, 1);
imshow(cameraman_image);
title('원본 cameraman');

for i = 1:length(alpha_values)
    subplot(2, length(alpha_values) + 1, i + 1);
    imshow(cameraman_results{i});
    title(['alpha = ', num2str(alpha_values(i))]);
end

% mandrill 결과 출력
subplot(2, length(alpha_values) + 1, length(alpha_values) + 2);
imshow(mandrill_image);
title('원본 mandrill');

for i = 1:length(alpha_values)
    subplot(2, length(alpha_values) + 1, length(alpha_values) + 2 + i);
    imshow(mandrill_results{i});
    title(['alpha = ', num2str(alpha_values(i))]);
end

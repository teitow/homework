% mandrill.mat 파일을 불러옴
load('mandrill.mat');

% 그레이스케일 영상 준비
m = im2uint8(ind2gray(X, map));

% 가우시안 필터 매개변수 설정
filter_sizes = [3, 7, 11, 21];
standard_deviations = [0.5, 1, 1, 1];
threshold_values = [1, 3, 4, 5];

% 필터 적용 및 subplot에 출력
figure;
subplot(1, 5, 1);
imshow(m);
title('Original Image');

for i = 1:length(filter_sizes)
    hsize = [filter_sizes(i), filter_sizes(i)];
    sigma = threshold_values(i);
    G = fspecial('gaussian', hsize, sigma);
    
    % 가우시안 필터 적용
    filtered_image = imfilter(m, G, 'same');
    
    % 결과 subplot에 출력
    subplot(1, 5, i + 1);
    imshow(filtered_image);
    title(['Size = [', num2str(hsize(1)), ',', num2str(hsize(2)), '], \sigma = ', num2str(sigma)]);
end
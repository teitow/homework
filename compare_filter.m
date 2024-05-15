% mandrill.mat 파일을 불러옴
load('mandrill.mat');

% 그레이스케일 영상 준비
m = im2uint8(ind2gray(X, map));

% 필터 크기 설정
filter_sizes = [3, 7, 11, 21];

% figure 생성
figure;
subplot(2, 5, 1);
imshow(m);
title('원본 이미지');

% 평균 필터 적용 및 subplot에 출력
for i = 1:length(filter_sizes)
    hsize = [filter_sizes(i), filter_sizes(i)];
    avg_filter = fspecial('average', hsize);
    
    % 평균 필터 적용
    avg_filtered_image = imfilter(m, avg_filter, 'same');
    
    % 결과 subplot에 출력
    subplot(2, 5, i + 1);
    imshow(avg_filtered_image);
    title(['평균 필터: 크기 = [', num2str(hsize(1)), ',', num2str(hsize(2)), ']']);
end

% 원본 영상을 다시 첫 번째 위치에 표시
subplot(2, 5, 6);
imshow(m);
title('원본 이미지');

% 가우시안 필터 적용 및 subplot에 출력
for i = 1:length(filter_sizes)
    hsize = [filter_sizes(i), filter_sizes(i)];
    gauss_filter = fspecial('gaussian', hsize);
    
    % 가우시안 필터 적용
    gauss_filtered_image = imfilter(m, gauss_filter, 'same');
    
    % 결과 subplot에 출력
    subplot(2, 5, i + 6);
    imshow(gauss_filtered_image);
    title(['가우시안 필터: 크기 = [', num2str(hsize(1)), ',', num2str(hsize(2)), ']']);
end

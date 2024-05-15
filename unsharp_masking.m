% cameraman.tif 파일을 불러옴
cameraman_image = imread('cameraman.tif');

% 3x3 평균 필터 생성
average_filter = fspecial('average', [3, 3]);

% 3x3 평균 필터를 사용하여 이미지 블러 처리
blurred_image = imfilter(cameraman_image, average_filter, 'replicate');

% 블러 이미지와 원본 이미지의 차이 (고주파 성분)
high_pass = double(cameraman_image) - double(blurred_image);

% 언샤프 마스킹 필터 적용 (원본 이미지 + 고주파 성분)
sharp_image = double(cameraman_image) + high_pass;

% 결과를 uint8 형식으로 변환
sharp_image = uint8(sharp_image);

% 결과 출력
figure;

% 원본 이미지 출력
subplot(1, 3, 1);
imshow(cameraman_image);
title('원본 이미지');

% 블러 처리된 이미지 출력
subplot(1, 3, 2);
imshow(blurred_image);
title('3x3 평균 필터');

% 언샤프 마스킹 결과 이미지 출력
subplot(1, 3, 3);
imshow(sharp_image);
title('언샤프 마스킹 필터');

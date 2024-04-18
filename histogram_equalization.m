function equalized_image = histogram_equalization(indexed, map)
    % 인덱스 영상과 컬러맵을 받아서 히스토그램 평활화를 수행함
    
    % 원본 히스토그램 계산
    original_hist = imhist(indexed, size(map, 1));
    
    % 누적 분포 함수 (CDF) 계산
    cdf = cumsum(original_hist) / numel(indexed);
    
    % CDF를 [0, 1] 범위로 스케일링
    cdf_scaled = uint8(255 * cdf);
    
    % 새로운 인덱스 영상 생성
    equalized_indexed = cdf_scaled(indexed(:) + 1);
    
    % 매핑된 색상을 원래 형태로 되돌림
    equalized_image = reshape(equalized_indexed, size(indexed));
    equalized_image = ind2rgb(equalized_image, map);
end
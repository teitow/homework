% cameraman_head_enlargement.m

function cameraman_head_enlargement()
    % zeroint 함수 정의
    function out = zeroint(a)
        [m, n] = size(a);
        a2 = reshape([a; zeros(m, n)], m, 2 * n);
        out = reshape([a2'; zeros(2 * n, m)], 2 * n, 2 * m)';
    end

    % 카메라맨 영상 로드
    c = imread('cameraman.tif');

    % 머리부분 ROI (Region of Interest)
    head = c(33:96, 90:153);

    % 필터 정의
    filt1 = [1 1 0; 1 1 0; 0 0 0]; % nearest
    filt2 = (1/4) * [1 2 1; 2 4 2; 1 2 1]; % bilinear
    filt3 = (1/64) * [1 4 6 4 1;
                      4 16 24 16 4;
                      6 24 36 24 6;
                      4 16 24 16 4;
                      1 4 6 4 1]; % bicubic

    % filt1, nearest
    head2 = zeroint(head);
    head2n = filter2(filt1, head2);

    head4 = zeroint(head2n);
    head4n = filter2(filt1, head4);

    subplot(2, 2, 1), imshow(head4n / 255), title('최근방 (nearest)')

    % filt2, bilinear
    head2 = zeroint(head);
    head2n = filter2(filt2, head2);

    head4 = zeroint(head2n);
    head4n = filter2(filt2, head4);

    subplot(2, 2, 2), imshow(head4n / 255), title('양선형 (bilinear)')

    % filt3, bicubic
    head2 = zeroint(head);
    head2n = filter2(filt3, head2);

    head4 = zeroint(head2n);
    head4n = filter2(filt3, head4);

    subplot(2, 2, 3), imshow(head4n / 255), title('삼차 보간법 (bicubic)')

    % imresize를 사용한 확대
    c_resize = imresize(head, 4);

    subplot(2, 2, 4), imshow(c_resize), title('imresize를 사용한 확대')

end

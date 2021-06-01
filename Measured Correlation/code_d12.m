clc;
rgb = imread('images/r20.png');
%rgb2 = imread('images/s20.png');

% figure;

% h    = [];
% h(1) = subplot(2,1,1);
% h(2) = subplot(2,1,2);
% image(rgb,'Parent',h(1));
% image(rgb2gray(rgb2),'Parent',h(2));
%imshow(rgb2gray(rgb2))
%[x,y] = size(rgb2gray(rgb));
%x
%size(rgb2gray(rgb2))
%crr = corr2(rgb2gray(rgb),rgb2gray(rgb2))
d12 = ["vldb/d12/asap_d12.png" "vldb/d12/m4_d12.png" "vldb/d12/minmax_d12.png" "vldb/d12/paa_d12.png" "vldb/d12/rand_d12.png" "vldb/d12/rdp_d12.png" "vldb/d12/strat_d12.png" "vldb/d12/vw_d12.png" "vldb/d12/win_d12.png"]';
%crr = imagecorr('vldb/d12/ori_d12.png','vldb/d12/vw_d12.png');
[x y] = size(d12);
%x
for i = 1 : x
    %print(d12(i))
    crr = imagecorr('vldb/d12/ori_d12.png',char(d12(i)));
    %crr
    %d12(i)
    fprintf('%s correlation with original = %f\n', d12(i), crr)
end
clc;
d14 = ["vldb/d14/asap_d14.png" "vldb/d14/m4_d14.png" "vldb/d14/minmax_d14.png" 
    "vldb/d14/paa_d14.png" "vldb/d14/rand_d14.png" "vldb/d14/rdp_d14.png" 
    "vldb/d14/strat_d14.png" "vldb/d14/vw_d14.png" "vldb/d14/win_d14.png"]';
%crr = imagecorr('vldb/d12/ori_d12.png','vldb/d12/vw_d12.png');
d14 = reshape(d14, 9, 1);
[x y] = size(d14)
%x
for i = 1 : x
    %print(d12(i))
    crr = imagecorr('vldb/d14/ori_d14.png',char(d14(i)));
    %crr
    %d12(i)
    fprintf('%s correlation with original = %f\n', d14(i), crr)
end
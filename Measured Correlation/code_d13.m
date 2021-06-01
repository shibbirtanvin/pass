clc;
d13 = ["vldb/d13/asap_d13.png" "vldb/d13/m4_d13.png" "vldb/d13/minmax_d13.png" 
    "vldb/d13/paa_d13.png" "vldb/d13/ran_d13.png" "vldb/d13/rdp_d13.png" 
    "vldb/d13/strat_d13.png" "vldb/d13/vw_d13.png" "vldb/d13/win_d13.png"]';
%crr = imagecorr('vldb/d12/ori_d12.png','vldb/d12/vw_d12.png');
d13 = reshape(d13, 9, 1);
[x y] = size(d13)
%x
for i = 1 : x
    %print(d12(i))
    crr = imagecorr('vldb/d13/ori_d13.png',char(d13(i)));
    %crr
    %d12(i)
    fprintf('%s correlation with original = %f\n', d13(i), crr)
end
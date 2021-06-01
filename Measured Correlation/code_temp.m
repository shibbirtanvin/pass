clc;
temp = ["vldb/temp/asap_temp.png" "vldb/temp/m4_temp.png" "vldb/temp/minmax_temp.png" 
    "vldb/temp/paa_temp.png" "vldb/temp/rand_temp.png" "vldb/temp/rdp_temp.png" 
    "vldb/temp/strat_temp.png" "vldb/temp/vw_temp.png" "vldb/temp/win_temp.png"]';
%crr = imagecorr('vldb/d12/ori_d12.png','vldb/d12/vw_d12.png');
temp = reshape(temp, 9, 1);
[x y] = size(temp)
%x
for i = 1 : x
    %print(d12(i))
    crr = imagecorr('vldb/temp/ori_temp.png',char(temp(i)));
    %crr
    %d12(i)
    fprintf('%s correlation with original = %f\n', temp(i), crr)
end
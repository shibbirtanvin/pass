clc;
isd = ["vldb/isd/asap_isd.png" "vldb/isd/m4_isd.png" "vldb/isd/minmax_isd.png" 
    "vldb/isd/paa_isd.png" "vldb/isd/rand_isd.png" "vldb/isd/rdp_isd.png" 
    "vldb/isd/strat_isd.png" "vldb/isd/vw_isd.png" "vldb/isd/win_isd.png"]';
%crr = imagecorr('vldb/d12/ori_d12.png','vldb/d12/vw_d12.png');
isd = reshape(isd, 9, 1);
[x y] = size(isd)
%x
for i = 1 : x
    %print(d12(i))
    crr = imagecorr('vldb/isd/ori_isd.png',char(isd(i)));
    %crr
    %d12(i)
    fprintf('%s correlation with original = %f\n', isd(i), crr)
end
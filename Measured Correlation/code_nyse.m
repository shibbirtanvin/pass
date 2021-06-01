clc;
nyse = ["vldb/nyse/asap_nyse.png" "vldb/nyse/m4_nyse.png" "vldb/nyse/minmax_nyse.png" 
    "vldb/nyse/paa_nyse.png" "vldb/nyse/rand_nyse.png" "vldb/nyse/rdp_nyse.png" 
    "vldb/nyse/strat_nyse.png" "vldb/nyse/vw_nyse.png" "vldb/nyse/win_nyse.png"]';
%crr = imagecorr('vldb/d12/ori_d12.png','vldb/d12/vw_d12.png');
nyse = reshape(nyse, 9, 1);
[x y] = size(nyse)
%x
for i = 1 : x
    %print(d12(i))
    crr = imagecorr('vldb/nyse/ori_nyse.png',char(nyse(i)));
    %crr
    %d12(i)
    fprintf('%s correlation with original = %f\n', nyse(i), crr)
end
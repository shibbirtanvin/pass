clc;
taxi = ["vldb/taxi/asap_taxi.png" "vldb/taxi/m4_taxi.png" "vldb/taxi/minmax_taxi.png" 
    "vldb/taxi/paa_taxi.png" "vldb/taxi/random_taxi.png" "vldb/taxi/rdp_taxi.png" 
    "vldb/taxi/stra_taxi.png" "vldb/taxi/vw_taxi.png" "vldb/taxi/win_taxi.png"]';
%crr = imagecorr('vldb/d12/ori_d12.png','vldb/d12/vw_d12.png');
taxi = reshape(taxi, 9, 1);
[x y] = size(taxi)
%x
for i = 1 : x
    %print(d12(i))
    crr = imagecorr('vldb/taxi/ori_taxi.png',char(taxi(i)));
    %crr
    %d12(i)
    fprintf('%s correlation with original = %f\n', taxi(i), crr)
end
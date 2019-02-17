function [TB_champ, TB_num, dpr] = TB(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,position)

switch position
    case 1
        raw_main = raw_top;
    case 2
        raw_main = raw_jgl;
    case 3
        raw_main = raw_mid;
    case 4
        raw_main = raw_bot;
    case 5
        raw_main = raw_spt;
end
TB_num = zeros(length(raw_main),4);

TB_num(:,1) = (0.5*raw_main(:,3) + raw_main(:,2).*(2-raw_main(:,3)))/2;

dpr = zeros(max([length(raw_top),length(raw_jgl),length(raw_mid),length(raw_bot),length(raw_spt)]),5);

for i=1:5
    switch i
        case 1
            raw_temp = raw_top;
        case 2
            raw_temp = raw_jgl;
        case 3
            raw_temp = raw_mid;
        case 4
            raw_temp = raw_bot;
        case 5
            raw_temp = raw_spt;
    end
    dpr(1:length(raw_temp),i) = 1 - (raw_temp(:,4)+sqrt((2-raw_temp(:,4)).^2-4*raw_temp(:,3)))/2;
end

delta_dpr = 2*dpr(1:length(raw_main),position);
for i=1:length(raw_main)
    for j=1:5
        switch j
            case 1
                raw_temp = raw_top;
            case 2
                raw_temp = raw_jgl;
            case 3
                raw_temp = raw_mid;
            case 4
                raw_temp = raw_bot;
            case 5
                raw_temp = raw_spt;
        end
        if nnz(raw_temp(:,1)==raw_main(i,1)) ~= 0
            delta_dpr(i) = delta_dpr(i) - dpr(raw_temp(:,1)==raw_main(i,1),j);
        end
    end
end
TB_num(:,2) = 1 + (delta_dpr-sqrt((2+delta_dpr).^2-8*dpr(1:length(raw_main),position)))/2;

TB_num(:,3) = -log(TB_num(:,2));

std_wr = sqrt(sum(raw_main(:,3).*(raw_main(:,2)-0.5).^2)/sum(raw_main(:,3)));
mean_sf = sum(raw_main(:,3).*TB_num(:,3))/sum(raw_main(:,3));
std_sf = sqrt(sum(raw_main(:,3).*(TB_num(:,3)-mean_sf).^2)/sum(raw_main(:,3)));
TB_num(:,4) = TB_num(:,1) - (TB_num(:,3)-mean_sf)*std_wr/std_sf;

[~,I] = sort(TB_num(:,4),'descend');
TB_num = TB_num(I,:);
TB_champ = raw_main(I,1);
return;
end
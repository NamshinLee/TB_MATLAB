function [BAN_champ, BAN_num] = BAN(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,dpr,position)

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

BAN_num = zeros(length(raw_main),5);
BAN_num(:,1) = sum(raw_main(:,2).*raw_main(:,3)) - raw_main(:,2).*raw_main(:,3);
BAN_num(:,2) = sum(raw_main(:,2).*raw_main(:,4).*dpr(1:length(raw_main),position).*(2-raw_main(:,4))./(10-raw_main(:,4))) - raw_main(:,2).*raw_main(:,4).*dpr(1:length(raw_main),position).*(2-raw_main(:,4))./(10-raw_main(:,4));
BAN_num(:,3) = 2-raw_main(:,3);
BAN_num(:,4) = sum(raw_main(:,4).*dpr(1:length(raw_main),position).*(2-raw_main(:,4))./(10-raw_main(:,4))) - raw_main(:,4).*dpr(1:length(raw_main),position).*(2-raw_main(:,4))./(10-raw_main(:,4));

BAN_num(:,5) = 10000*(0.5-(BAN_num(:,1)+BAN_num(:,2))./(BAN_num(:,3)+BAN_num(:,4)));
[~,I] = sort(BAN_num(:,5),'descend');
BAN_num = BAN_num(I,:);
BAN_champ = raw_main(I,1);
return;
end
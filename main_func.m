clear
close all
clc

[raw_top, raw_jgl, raw_mid, raw_bot, raw_spt, champ] = preprocess();

[TB_top_champ, TB_top_num, ~] = TB(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,1);
[TB_jgl_champ, TB_jgl_num, ~] = TB(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,2);
[TB_mid_champ, TB_mid_num, ~] = TB(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,3);
[TB_bot_champ, TB_bot_num, ~] = TB(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,4);
[TB_spt_champ, TB_spt_num, dpr] = TB(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,5);

[BAN_top_champ, BAN_top_num] = BAN(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,dpr,1);
[BAN_jgl_champ, BAN_jgl_num] = BAN(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,dpr,2);
[BAN_mid_champ, BAN_mid_num] = BAN(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,dpr,3);
[BAN_bot_champ, BAN_bot_num] = BAN(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,dpr,4);
[BAN_spt_champ, BAN_spt_num] = BAN(raw_top,raw_jgl,raw_mid,raw_bot,raw_spt,dpr,5);

TB_top = [champ(TB_top_champ) num2str(100*TB_top_num(:,4))];
TB_jgl = [champ(TB_jgl_champ) num2str(100*TB_jgl_num(:,4))];
TB_mid = [champ(TB_mid_champ) num2str(100*TB_mid_num(:,4))];
TB_bot = [champ(TB_bot_champ) num2str(100*TB_bot_num(:,4))];
TB_spt = [champ(TB_spt_champ) num2str(100*TB_spt_num(:,4))];

BAN_top = [champ(BAN_top_champ) num2str(BAN_top_num)];
BAN_jgl = [champ(BAN_jgl_champ) num2str(BAN_jgl_num)];
BAN_mid = [champ(BAN_mid_champ) num2str(BAN_mid_num)];
BAN_bot = [champ(BAN_bot_champ) num2str(BAN_bot_num)];
BAN_spt = [champ(BAN_spt_champ) num2str(BAN_spt_num)];

clear dpr raw_top raw_jgl raw_mid raw_bot raw_spt champ TB_top_champ TB_top_num TB_jgl_champ TB_jgl_num TB_mid_champ TB_mid_num TB_bot_champ TB_bot_num TB_spt_champ TB_spt_num BAN_top_champ BAN_top_num BAN_jgl_champ BAN_jgl_num BAN_mid_champ BAN_mid_num BAN_bot_champ BAN_bot_num BAN_spt_champ BAN_spt_num
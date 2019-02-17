function [raw_top, raw_jgl, raw_mid, raw_bot, raw_spt, champ] = preprocess()

% version: v9.3
% region: korea
% date: 17/02/19

Alistar = 1;
Annie = 2;
Ashe = 3;
Fiddlesticks = 4;
Jax = 5;
Kayle = 6;
Master_Yi = 7;
Morgana = 8;
Nunu_Willump = 9;
Ryze = 10;
Sion = 11;
Sivir = 12;
Soraka = 13;
Teemo = 14;
Tristana = 15;
Twisted_Fate = 16;
Warwick = 17;
Singed = 18;
Zilean = 19;
Evelynn = 20;
Tryndamere = 21;
Twitch = 22;
Karthus = 23;
Amumu = 24;
ChoGath = 25;
Anivia = 26;
Rammus = 27;
Veigar = 28;
Kassadin = 29;
Gangplank = 30;
Taric = 31;
Blitzcrank = 32;
Dr_Mundo = 33;
Janna = 34;
Malphite = 35;
Corki = 36;
Katarina = 37;
Nasus = 38;
Shaco = 39;
Heimerdinger = 40;
Udyr = 41;
Nidalee = 42;
Poppy = 43;
Gragas = 44;
Pantheon = 45;
Mordekaiser = 46;
Ezreal = 47;
Shen = 48;
Kennen = 49;
Garen = 50;
Akali = 51;
Malzahar = 52;
Olaf = 53;
KogMaw = 54;
Xin_Zhao = 55;
Vladimir = 56;
Galio = 57;
Urgot = 58;
Miss_Fortune = 59;
Sona = 60;
Swain = 61;
Lux = 62;
LeBlanc = 63;
Irelia = 64;
Trundle = 65;
Cassiopeia = 66;
Caitlyn = 67;
Renekton = 68;
Karma = 69;
Maokai = 70;
Jarvan_IV = 71;
Nocturne = 72;
Lee_Sin = 73;
Brand = 74;
Rumble = 75;
Vayne = 76;
Orianna = 77;
Yorick = 78;
Leona = 79;
Wukong = 80;
Skarner = 81;
Talon = 82;
Riven = 83;
Xerath = 84;
Graves = 85;
Shyvana = 86;
Fizz = 87;
Volibear = 88;
Ahri = 89;
Viktor = 90;
Sejuani = 91;
Ziggs = 92;
Nautilus = 93;
Fiora = 94;
Lulu = 95;
Hecarim = 96;
Varus = 97;
Darius = 98;
Draven = 99;
Jayce = 100;
Zyra = 101;
Diana = 102;
Rengar = 103;
Syndra = 104;
KhaZix = 105;
Elise = 106;
Zed = 107;
Nami = 108;
Vi = 109;
Thresh = 110;
Quinn = 111;
Zac = 112;
Lissandra = 113;
Aatrox = 114;
Lucian = 115;
Jinx = 116;
Yasuo = 117;
VelKoz = 118;
Braum = 119;
Gnar = 120;
Azir = 121;
Kalista = 122;
RekSai = 123;
Bard = 124;
Ekko = 125;
Tahm_Kench = 126;
Kindred = 127;
Illaoi = 128;
Jhin = 129;
Aurelion_Sol = 130;
Taliyah = 131;
Kled = 132;
Ivern = 133;
Camille = 134;
Rakan = 135;
Xayah = 136;
Kayn = 137;
Ornn = 138;
Zoe = 139;
KaiSa = 140;
Pyke = 141;
Neeko = 142;
Sylas = 143;

champ = ["Alistar"
"Annie"
"Ashe"
"Fiddlesticks"
"Jax"
"Kayle"
"Master_Yi"
"Morgana"
"Nunu_Willump"
"Ryze"
"Sion"
"Sivir"
"Soraka"
"Teemo"
"Tristana"
"Twisted_Fate"
"Warwick"
"Singed"
"Zilean"
"Evelynn"
"Tryndamere"
"Twitch"
"Karthus"
"Amumu"
"ChoGath"
"Anivia"
"Rammus"
"Veigar"
"Kassadin"
"Gangplank"
"Taric"
"Blitzcrank"
"Dr_Mundo"
"Janna"
"Malphite"
"Corki"
"Katarina"
"Nasus"
"Shaco"
"Heimerdinger"
"Udyr"
"Nidalee"
"Poppy"
"Gragas"
"Pantheon"
"Mordekaiser"
"Ezreal"
"Shen"
"Kennen"
"Garen"
"Akali"
"Malzahar"
"Olaf"
"KogMaw"
"Xin_Zhao"
"Vladimir"
"Galio"
"Urgot"
"Miss_Fortune"
"Sona"
"Swain"
"Lux"
"LeBlanc"
"Irelia"
"Trundle"
"Cassiopeia"
"Caitlyn"
"Renekton"
"Karma"
"Maokai"
"Jarvan_IV"
"Nocturne"
"Lee_Sin"
"Brand"
"Rumble"
"Vayne"
"Orianna"
"Yorick"
"Leona"
"Wukong"
"Skarner"
"Talon"
"Riven"
"Xerath"
"Graves"
"Shyvana"
"Fizz"
"Volibear"
"Ahri"
"Viktor"
"Sejuani"
"Ziggs"
"Nautilus"
"Fiora"
"Lulu"
"Hecarim"
"Varus"
"Darius"
"Draven"
"Jayce"
"Zyra"
"Diana"
"Rengar"
"Syndra"
"KhaZix"
"Elise"
"Zed"
"Nami"
"Vi"
"Thresh"
"Quinn"
"Zac"
"Lissandra"
"Aatrox"
"Lucian"
"Jinx"
"Yasuo"
"VelKoz"
"Braum"
"Gnar"
"Azir"
"Kalista"
"RekSai"
"Bard"
"Ekko"
"Tahm_Kench"
"Kindred"
"Illaoi"
"Jhin"
"Aurelion_Sol"
"Taliyah"
"Kled"
"Ivern"
"Camille"
"Rakan"
"Xayah"
"Kayn"
"Ornn"
"Zoe"
"KaiSa"
"Pyke"
"Neeko"
"Sylas"];

raw_top = [Zilean	0.5606	0.0065	0.0094
Wukong	0.5356	0.0084	0.0013
Cassiopeia	0.5301	0.0059	0.0778
Yorick	0.5261	0.0779	0.1279
Hecarim	0.5229	0.006	0.002
Yasuo	0.5206	0.0489	0.7814
Rengar	0.5201	0.0411	0.0208
Jayce	0.5191	0.1186	0.1451
Pantheon	0.5177	0.0283	0.0503
Volibear	0.5152	0.0087	0.0009
Kled	0.5126	0.0301	0.0067
Poppy	0.5125	0.0391	0.0104
Jax	0.5122	0.071	0.0759
Sion	0.511	0.0521	0.0108
Vladimir	0.5088	0.1202	0.5211
Camille	0.5074	0.026	0.0601
Kayle	0.507	0.0059	0.0005
Quinn	0.5068	0.0098	0.0019
Heimerdinger	0.5057	0.0113	0.0051
Riven	0.5054	0.0821	0.0242
Olaf	0.504	0.0202	0.0055
Mordekaiser	0.5034	0.0061	0.0013
Karma	0.5033	0.0371	0.0372
Malzahar	0.5032	0.0079	0.0294
Vayne	0.5028	0.0353	0.1907
Nasus	0.5015	0.0299	0.0088
Illaoi	0.5007	0.0297	0.022
Rumble	0.4986	0.0253	0.0047
Kennen	0.4969	0.0314	0.0064
Malphite	0.4966	0.0234	0.0026
Gangplank	0.4956	0.043	0.0155
Maokai	0.4955	0.0081	0.0005
Darius	0.4955	0.0776	0.1961
Singed	0.4954	0.021	0.0022
Teemo	0.4946	0.0277	0.0234
Irelia	0.4938	0.087	0.0647
Urgot	0.4929	0.0952	0.0666
Garen	0.4929	0.0229	0.0198
Sylas	0.4928	0.0798	0.4075
Renekton	0.4898	0.0761	0.0631
Shen	0.4885	0.0178	0.0008
Lissandra	0.484	0.0166	0.1784
Ornn	0.4839	0.0321	0.0031
Tryndamere	0.4809	0.0119	0.0015
Fiora	0.4809	0.0688	0.0396
Viktor	0.4808	0.0539	0.0522
ChoGath	0.4705	0.0073	0.0005
Ryze	0.4689	0.025	0.0162
Dr_Mundo	0.4652	0.0104	0.0009
Aatrox	0.4604	0.0409	0.0739
Kassadin	0.4589	0.0088	0.2838
Gnar	0.4551	0.0076	0.001
Akali	0.4508	0.0178	0.0769];

raw_jgl = [Nunu_Willump	0.5356	0.0189	0.0037
Udyr	0.5354	0.0089	0.0013
RekSai	0.5305	0.0184	0.0024
Karthus	0.527	0.0804	0.5527
Ivern	0.5227	0.0138	0.0013
Evelynn	0.5183	0.0756	0.1625
Poppy	0.5173	0.0057	0.0104
Elise	0.5158	0.1251	0.0661
Nidalee	0.5139	0.0954	0.0865
Shaco	0.513	0.0272	0.0045
Shyvana	0.5126	0.0089	0.0007
Taliyah	0.5085	0.0191	0.0023
Kindred	0.508	0.0616	0.0216
Rengar	0.5076	0.0175	0.0208
Rammus	0.5073	0.0388	0.0151
Jarvan_IV	0.5073	0.0796	0.0031
Warwick	0.5064	0.0147	0.0009
Jax	0.5061	0.028	0.0759
Xin_Zhao	0.5058	0.162	0.2097
Pantheon	0.5053	0.0355	0.0503
Sejuani	0.5035	0.0508	0.0052
Vi	0.498	0.0149	0.0008
Wukong	0.497	0.0077	0.0013
Fiddlesticks	0.4965	0.0073	0.0837
KhaZix	0.496	0.1541	0.2072
Kayn	0.4959	0.066	0.0246
Gragas	0.4933	0.0588	0.0082
Lee_Sin	0.493	0.3753	0.2706
Zac	0.493	0.0358	0.0022
Riven	0.4884	0.0172	0.0242
Camille	0.4881	0.0325	0.0601
Graves	0.4859	0.0841	0.0225
Master_Yi	0.4815	0.0344	0.011
Nocturne	0.4781	0.0418	0.0312
Olaf	0.4762	0.0097	0.0055
Amumu	0.47	0.0082	0.001
Hecarim	0.4699	0.0148	0.002
Sylas	0.4477	0.013	0.4075
Aatrox	0.3782	0.0057	0.0739];

raw_mid = [Zilean	0.5465	0.011	0.0094
Pantheon	0.5385	0.0067	0.0503
Aurelion_Sol	0.5355	0.0134	0.0016
Annie	0.5321	0.0111	0.0012
Katarina	0.5238	0.0542	0.0147
Nocturne	0.5168	0.0185	0.0312
Fizz	0.5165	0.0453	0.0218
Anivia	0.5161	0.0344	0.0066
Talon	0.5158	0.0792	0.0519
Swain	0.5142	0.0082	0.0011
Yasuo	0.5134	0.089	0.7814
Karthus	0.5132	0.0172	0.5527
Kassadin	0.5116	0.0962	0.2838
Heimerdinger	0.5105	0.005	0.0051
Ekko	0.5102	0.0452	0.0055
Ahri	0.5096	0.056	0.0033
Malzahar	0.5084	0.0546	0.0294
Zed	0.508	0.0774	0.0581
Twisted_Fate	0.5069	0.0767	0.0102
Vladimir	0.5062	0.0418	0.5211
Zoe	0.5056	0.1323	0.2304
Lissandra	0.5049	0.1275	0.1784
Lux	0.5025	0.0149	0.0037
Cassiopeia	0.5012	0.0469	0.0778
Lulu	0.498	0.0068	0.0083
Jayce	0.4977	0.0258	0.1451
LeBlanc	0.4965	0.1223	0.4121
Xerath	0.4954	0.0272	0.006
Ziggs	0.4953	0.0077	0.0005
Veigar	0.494	0.019	0.0032
Kled	0.4933	0.0052	0.0067
Diana	0.493	0.0173	0.002
Corki	0.4929	0.0268	0.0009
Sylas	0.4924	0.0454	0.4075
VelKoz	0.4905	0.0138	0.0031
Karma	0.4884	0.0081	0.0372
Syndra	0.4857	0.03	0.0022
Orianna	0.4841	0.0858	0.0057
Viktor	0.4819	0.0419	0.0522
Neeko	0.4785	0.0102	0.0193
Galio	0.4778	0.0336	0.0503
Irelia	0.4667	0.0432	0.0647
Aatrox	0.4667	0.0263	0.0739
Azir	0.4631	0.0184	0.0012
Ryze	0.4631	0.0464	0.0162
Akali	0.4413	0.0183	0.0769];

raw_bot = [Yasuo	0.5502	0.0107	0.7814
Cassiopeia	0.5355	0.0108	0.0778
Lucian	0.5254	0.2423	0.7125
Ashe	0.5243	0.0582	0.0008
Sivir	0.5241	0.1976	0.0342
Draven	0.5199	0.0435	0.0213
Vayne	0.5191	0.2195	0.1907
Kalista	0.5184	0.0471	0.0057
Jinx	0.5182	0.0755	0.001
Twitch	0.5163	0.0213	0.0018
Miss_Fortune	0.504	0.021	0.0013
KogMaw	0.4918	0.0086	0.0005
Viktor	0.4918	0.0149	0.0522
Ezreal	0.4834	0.4224	0.1735
Jhin	0.4832	0.0525	0.001
Caitlyn	0.482	0.1595	0.0227
KaiSa	0.4746	0.2341	0.0345
Xayah	0.4694	0.0409	0.0018
Varus	0.4602	0.0279	0.0007
Tristana	0.4574	0.0317	0.0006];

raw_spt = [Thresh	0.5219	0.3441	0.3095
Zilean	0.5177	0.0387	0.0094
Bard	0.517	0.0413	0.0019
Soraka	0.5164	0.1453	0.0582
Poppy	0.5161	0.0077	0.0104
Sona	0.5161	0.0211	0.0009
Taric	0.5154	0.0113	0.0006
Blitzcrank	0.5146	0.1037	0.0534
Leona	0.5137	0.0829	0.0272
Fiddlesticks	0.5078	0.0721	0.0837
VelKoz	0.5065	0.03	0.0031
Zyra	0.5036	0.0496	0.0265
Janna	0.5026	0.0591	0.0025
Nautilus	0.5024	0.0429	0.0025
Nami	0.5015	0.0943	0.0045
Galio	0.4983	0.012	0.0503
Lux	0.4971	0.0375	0.0037
Pyke	0.4967	0.1215	0.3069
Alistar	0.4923	0.118	0.066
Braum	0.4906	0.0647	0.0039
Morgana	0.4893	0.1298	0.2641
Gragas	0.4881	0.0156	0.0082
Neeko	0.484	0.0062	0.0193
Lulu	0.4823	0.0668	0.0083
Karma	0.481	0.0664	0.0372
Brand	0.4801	0.0296	0.0072
Xerath	0.4793	0.0257	0.006
Shen	0.4776	0.013	0.0008
Veigar	0.464	0.0097	0.0032
Rakan	0.4612	0.025	0.0042
Tahm_Kench	0.4567	0.024	0.0056];

return;
end
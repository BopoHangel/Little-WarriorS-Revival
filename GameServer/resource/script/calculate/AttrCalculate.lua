print("‡ Јаг§Є  AttrCalculate.lua")

--AttrCalculate.lua
--В системе ученик-ментор корона покойника убрана (строка 1750)

attr = {}
attr[1] = {0,0} 
attr[2] ={0,0} 
attr[3] ={0,0} 
attr[4] ={0,0} 
attr[5] ={0,0}  
attr[6] ={0,0} 
attr[7] ={0,0} 
attr[8] ={0,0} 
attr[9] ={0,0} 
attr[10]={0,0} 
 

item_add = 
{
  cnt = 0, 
  attr = attr
}

--
PlayerCredit = {}

PlayerCredit[	2	]=	1
PlayerCredit[	3	]=	2
PlayerCredit[	4	]=	3
PlayerCredit[	5	]=	4
PlayerCredit[	6	]=	5
PlayerCredit[	7	]=	6
PlayerCredit[	8	]=	7
PlayerCredit[	9	]=	8
PlayerCredit[	10	]=	9
PlayerCredit[	11	]=	10
PlayerCredit[	12	]=	11
PlayerCredit[	13	]=	12
PlayerCredit[	14	]=	13
PlayerCredit[	15	]=	14
PlayerCredit[	16	]=	15
PlayerCredit[	17	]=	16
PlayerCredit[	18	]=	17
PlayerCredit[	19	]=	18
PlayerCredit[	20	]=	19
PlayerCredit[	21	]=	20
PlayerCredit[	22	]=	21
PlayerCredit[	23	]=	22
PlayerCredit[	24	]=	23
PlayerCredit[	25	]=	24
PlayerCredit[	26	]=	25
PlayerCredit[	27	]=	26
PlayerCredit[	28	]=	27
PlayerCredit[	29	]=	28
PlayerCredit[	30	]=	29
PlayerCredit[	31	]=	30
PlayerCredit[	32	]=	31
PlayerCredit[	33	]=	32
PlayerCredit[	34	]=	33
PlayerCredit[	35	]=	34
PlayerCredit[	36	]=	35
PlayerCredit[	37	]=	36
PlayerCredit[	38	]=	37
PlayerCredit[	39	]=	38
PlayerCredit[	40	]=	39
PlayerCredit[	41	]=	40
PlayerCredit[	42	]=	41
PlayerCredit[	43	]=	42
PlayerCredit[	44	]=	43
PlayerCredit[	45	]=	47
PlayerCredit[	46	]=	51
PlayerCredit[	47	]=	55
PlayerCredit[	48	]=	60
PlayerCredit[	49	]=	66
PlayerCredit[	50	]=	72
PlayerCredit[	51	]=	78
PlayerCredit[	52	]=	85
PlayerCredit[	53	]=	93
PlayerCredit[	54	]=	101
PlayerCredit[	55	]=	109
PlayerCredit[	56	]=	118
PlayerCredit[	57	]=	128
PlayerCredit[	58	]=	138
PlayerCredit[	59	]=	148
PlayerCredit[	60	]=	159
PlayerCredit[	61	]=	171
PlayerCredit[	62	]=	183
PlayerCredit[	63	]=	195
PlayerCredit[	64	]=	208
PlayerCredit[	65	]=	222
PlayerCredit[	66	]=	236
PlayerCredit[	67	]=	250
PlayerCredit[	68	]=	265
PlayerCredit[	69	]=	281
PlayerCredit[	70	]=	297
PlayerCredit[	71	]=	313
PlayerCredit[	72	]=	330
PlayerCredit[	73	]=	348
PlayerCredit[	74	]=	366
PlayerCredit[	75	]=	384
PlayerCredit[	76	]=	403
PlayerCredit[	77	]=	423
PlayerCredit[	78	]=	443
PlayerCredit[	79	]=	463
PlayerCredit[	80	]=	484
PlayerCredit[	81	]=	506
PlayerCredit[	82	]=	528
PlayerCredit[	83	]=	550
PlayerCredit[	84	]=	573
PlayerCredit[	85	]=	597
PlayerCredit[	86	]=	621
PlayerCredit[	87	]=	645
PlayerCredit[	88	]=	670
PlayerCredit[	89	]=	696
PlayerCredit[	90	]=	722
PlayerCredit[	91	]=	748
PlayerCredit[	92	]=	775
PlayerCredit[	93	]=	803
PlayerCredit[	94	]=	831
PlayerCredit[	95	]=	859
PlayerCredit[	96	]=	888
PlayerCredit[	97	]=	918
PlayerCredit[	98	]=	948
PlayerCredit[	99	]=	978
PlayerCredit[	100	]=	1087


function Reset_item_add()
  item_add.cnt = 0
  item_add.attr[1] ={0,0}  
  item_add.attr[2] ={0,0} 
  item_add.attr[3] ={0,0} 
  item_add.attr[4] ={0,0} 
  item_add.attr[5] ={0,0}  
  item_add.attr[6] ={0,0} 
  item_add.attr[7] ={0,0} 
  item_add.attr[8] ={0,0} 
  item_add.attr[9] ={0,0} 
  item_add.attr[10]={0,0} 
end

function Add_Item_Attr(attr_idx, radio) 
   item_add.cnt = item_add.cnt + 1
   item_add.attr[item_add.cnt] = { attr_idx, radio }
end

	Mxhp_con_rad1 = {}  
	Mxhp_con_rad2 = {} 
	Mxhp_lv_rad = {}  
	Mxhp_bs = {}   		
	Mxsp_sta_rad1 = {}  
	Mxsp_sta_rad2 = {} 
	Mxsp_lv_rad = {}   		
	Mnatk_str_rad1 = {} 
	Mnatk_str_rad2 = {} 
	Mnatk_dex_rad1 = {}   
	Mnatk_dex_rad2 = {}	
	Mxatk_str_rad1 = {} 
	Mxatk_str_rad2 = {} 
	Mxatk_dex_rad1 = {}   
	Mxatk_dex_rad2 = {}	  
	Def_con_rad1 = {}   	
	Def_con_rad2 = {}	
	Hit_dex_rad1 = {}  
	Hit_dex_rad2 = {} 
	Hit_lv_rad = {}  
	Hit_min = {}   		
	Flee_agi_rad1 = {} 
	Flee_agi_rad2 = {} 
	Flee_lv_rad = {}  
	Flee_min = {}   		
	Mf_luk_rad = {}   
	Crt_luk_rad = {}  
	Crt_min = {}  
	Crt_max = {}   		
	Hrec_bsmxhp_rad = {}  
	Hrec_con_rad = {}  
	Hrec_min = {}   		
	Srec_bsmxsp_rad = {}  
	Srec_sta_rad = {}  
	Srec_min = {}   		
	Aspd_bsrad = {}  
	Aspd_agi_rad = {}  
	Aspd_min = {}    		
	Str_updata = {} 
	Dex_updata = {} 
	Con_updata = {} 
	Agi_updata = {} 
	Sta_updata = {} 
	Luk_updata = {} 

	
--Прирост характеристик класса Новичок	
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла
		Mxhp_con_rad1[JOB_TYPE_XINSHOU], Mxhp_con_rad2[JOB_TYPE_XINSHOU], Mxhp_lv_rad[JOB_TYPE_XINSHOU]	=	3	,	2	,	15		
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла	
		Mxsp_sta_rad1[JOB_TYPE_XINSHOU], Mxsp_sta_rad2[JOB_TYPE_XINSHOU], Mxsp_lv_rad[JOB_TYPE_XINSHOU]	=	1	,	0	,	3 	
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_XINSHOU], Mnatk_str_rad2[JOB_TYPE_XINSHOU], Mnatk_dex_rad1[JOB_TYPE_XINSHOU], Mnatk_dex_rad2[JOB_TYPE_XINSHOU]	=	1.5	,	0.4	,	0	,	0				
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_XINSHOU], Mxatk_str_rad2[JOB_TYPE_XINSHOU], Mxatk_dex_rad1[JOB_TYPE_XINSHOU], Mxatk_dex_rad2[JOB_TYPE_XINSHOU]	=	1.5	,	0.4	,	0	,	0					
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_XINSHOU], Def_con_rad2[JOB_TYPE_XINSHOU]		=	0.1		,	0.1 	
		--1.Хит рейт от акк 2. Хит рейт от акк	
		Hit_dex_rad1[JOB_TYPE_XINSHOU], Hit_dex_rad2[JOB_TYPE_XINSHOU]		=	0.6		,	0 		
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_XINSHOU], Flee_agi_rad2[JOB_TYPE_XINSHOU]		=	0.6		,	0		
		--1. Дроп от стата "удача"	
		Mf_luk_rad[JOB_TYPE_XINSHOU]		= 0.39 								
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_XINSHOU]		= 0.31	
		--1. Хп реген от макс. хп 2. Хп реген от кона	
		Hrec_bsmxhp_rad[JOB_TYPE_XINSHOU], Hrec_con_rad[JOB_TYPE_XINSHOU]	=	1/200	,	1/8				
		--1. сп реген от макс. сп 2. сп реген от кона	
		Srec_bsmxsp_rad[JOB_TYPE_XINSHOU], Srec_sta_rad[JOB_TYPE_XINSHOU]	=	1/100	,	1/12		
		--1. Атакспид от аги	
		Aspd_agi_rad[JOB_TYPE_XINSHOU]	=	1.1    	
		--Неизвестно	
		Str_updata[JOB_TYPE_XINSHOU]		=	0.2 
		Dex_updata[JOB_TYPE_XINSHOU]	=	0.1 
		Con_updata[JOB_TYPE_XINSHOU]	=	0.6 
		Agi_updata[JOB_TYPE_XINSHOU]		=	0.1 
		Sta_updata[JOB_TYPE_XINSHOU]		=	0.1 
		Luk_updata[JOB_TYPE_XINSHOU]		=	0.1 

		
--Прирост характеристик класса Мечник
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла		
		Mxhp_con_rad1[JOB_TYPE_JIANSHI], Mxhp_con_rad2[JOB_TYPE_JIANSHI], Mxhp_lv_rad[JOB_TYPE_JIANSHI] =	5	,	7	,	25							
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла
		Mxsp_sta_rad1[JOB_TYPE_JIANSHI], Mxsp_sta_rad2[JOB_TYPE_JIANSHI], Mxsp_lv_rad[JOB_TYPE_JIANSHI] = 1	, 0	, 3							
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_JIANSHI], Mnatk_str_rad2[JOB_TYPE_JIANSHI], Mnatk_dex_rad1[JOB_TYPE_JIANSHI], Mnatk_dex_rad2[JOB_TYPE_JIANSHI] =	1.5	,	0.4	,	0	,	0   	
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_JIANSHI], Mxatk_str_rad2[JOB_TYPE_JIANSHI], Mxatk_dex_rad1[JOB_TYPE_JIANSHI], Mxatk_dex_rad2[JOB_TYPE_JIANSHI] = 	1.5	,	0.4	,	0	,	0    	
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_JIANSHI], Def_con_rad2[JOB_TYPE_JIANSHI] =		0.2	,	0.2	 										
		--1.Хит рейт от акк 2. Хит рейт от акк	
		Hit_dex_rad1[JOB_TYPE_JIANSHI], Hit_dex_rad2[JOB_TYPE_JIANSHI] =		0.6	,	0								
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_JIANSHI], Flee_agi_rad2[JOB_TYPE_JIANSHI] =		0.6	,	0									
		--1. Дроп от стата "удача"	
		Mf_luk_rad[JOB_TYPE_JIANSHI] = 0.39 															
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_JIANSHI] = 0.31												
		--1. Хп реген от макс. хп 2. Хп реген от кона
		Hrec_bsmxhp_rad[JOB_TYPE_JIANSHI], Hrec_con_rad[JOB_TYPE_JIANSHI] = 1/180, 1/8									
		--1. сп реген от макс. сп 2. сп реген от кона	
		Srec_bsmxsp_rad[JOB_TYPE_JIANSHI], Srec_sta_rad[JOB_TYPE_JIANSHI] = 1/100, 1/12 									
		--1. Атакспид от аги	
		Aspd_agi_rad[JOB_TYPE_JIANSHI] =	1.1 
		--Неизвестно
		Str_updata[JOB_TYPE_JIANSHI]	=	0.5 
		Dex_updata[JOB_TYPE_JIANSHI]	=	0.1 
		Con_updata[JOB_TYPE_JIANSHI]	=	0.5 
		Agi_updata[JOB_TYPE_JIANSHI]	=	0.1 
		Sta_updata[JOB_TYPE_JIANSHI]	=	0.1 
		Luk_updata[JOB_TYPE_JIANSHI]	=	0.1 


--Прирост характеристик класса Охотник
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла
		Mxhp_con_rad1[JOB_TYPE_LIEREN], Mxhp_con_rad2[JOB_TYPE_LIEREN], Mxhp_lv_rad[JOB_TYPE_LIEREN] =	3	, 3	, 25 							
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла
		Mxsp_sta_rad1[JOB_TYPE_LIEREN], Mxsp_sta_rad2[JOB_TYPE_LIEREN], Mxsp_lv_rad[JOB_TYPE_LIEREN] =		1	,	0	, 3							
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_LIEREN], Mnatk_str_rad2[JOB_TYPE_LIEREN], Mnatk_dex_rad1[JOB_TYPE_LIEREN], Mnatk_dex_rad2[JOB_TYPE_LIEREN] = 0, 0, 1.7, 0.4 	
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_LIEREN], Mxatk_str_rad2[JOB_TYPE_LIEREN], Mxatk_dex_rad1[JOB_TYPE_LIEREN], Mxatk_dex_rad2[JOB_TYPE_LIEREN] = 0, 0, 1.7, 0.4 	
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_LIEREN], Def_con_rad2[JOB_TYPE_LIEREN] =	0.14,	0.1 										
		--1.Хит рейт от акк 2. Хит рейт от акк	
		Hit_dex_rad1[JOB_TYPE_LIEREN], Hit_dex_rad2[JOB_TYPE_LIEREN] =	0.7	,	0								
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_LIEREN], Flee_agi_rad2[JOB_TYPE_LIEREN] =	0.7	,	0									
		--1. Дроп от стата "удача"	
		Mf_luk_rad[JOB_TYPE_LIEREN] = 0.39 															
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_LIEREN] = 0.25												
		--1. Хп реген от макс. хп 2. Хп реген от кона
		Hrec_bsmxhp_rad[JOB_TYPE_LIEREN], Hrec_con_rad[JOB_TYPE_LIEREN] = 1/180, 1/8 									
		--1. сп реген от макс. сп 2. сп реген от кона
		Srec_bsmxsp_rad[JOB_TYPE_LIEREN], Srec_sta_rad[JOB_TYPE_LIEREN] = 1/100, 1/12 										
		--1. Атакспид от аги
		Aspd_agi_rad[JOB_TYPE_LIEREN] =	1.2   												 				
		--Неизвестно
		Str_updata[JOB_TYPE_LIEREN]	=	0.1 
		Dex_updata[JOB_TYPE_LIEREN]	=	0.5 
		Con_updata[JOB_TYPE_LIEREN]	=	0.1 
		Agi_updata[JOB_TYPE_LIEREN]	=	0.5 
		Sta_updata[JOB_TYPE_LIEREN]	=	0.1 
		Luk_updata[JOB_TYPE_LIEREN]	=	0.1 


--Прирост характеристик класса Sailor(Невведено в игру)		
		Mxhp_con_rad1[JOB_TYPE_SHUISHOU], Mxhp_con_rad2[JOB_TYPE_SHUISHOU], Mxhp_lv_rad[JOB_TYPE_SHUISHOU] = 3, 2, 15									
		Mxsp_sta_rad1[JOB_TYPE_SHUISHOU], Mxsp_sta_rad2[JOB_TYPE_SHUISHOU], Mxsp_lv_rad[JOB_TYPE_SHUISHOU] = 0.5, 0.5, 1								
		Mnatk_str_rad1[JOB_TYPE_SHUISHOU], Mnatk_str_rad2[JOB_TYPE_SHUISHOU], Mnatk_dex_rad1[JOB_TYPE_SHUISHOU], Mnatk_dex_rad2[JOB_TYPE_SHUISHOU] = 0.9, 0.9, 0, 0							
		Mxatk_str_rad1[JOB_TYPE_SHUISHOU], Mxatk_str_rad2[JOB_TYPE_SHUISHOU], Mxatk_dex_rad1[JOB_TYPE_SHUISHOU], Mxatk_dex_rad2[JOB_TYPE_SHUISHOU] = 0.9, 0.9, 0, 0 					
		Def_con_rad1[JOB_TYPE_SHUISHOU], Def_con_rad2[JOB_TYPE_SHUISHOU] = 0.45, 0.45 											
		Hit_dex_rad1[JOB_TYPE_SHUISHOU], Hit_dex_rad2[JOB_TYPE_SHUISHOU] = 0.31, 0.15 										
		Flee_agi_rad1[JOB_TYPE_SHUISHOU], Flee_agi_rad2[JOB_TYPE_SHUISHOU] = 0.31, 0.15										
		Mf_luk_rad[JOB_TYPE_SHUISHOU] = 0.39 																	
		Crt_luk_rad[JOB_TYPE_SHUISHOU] = 0.31													
		Hrec_bsmxhp_rad[JOB_TYPE_SHUISHOU], Hrec_con_rad[JOB_TYPE_SHUISHOU] = 1/200, 1/100										
		Srec_bsmxsp_rad[JOB_TYPE_SHUISHOU], Srec_sta_rad[JOB_TYPE_SHUISHOU] = 1/200, 1/120										
		Aspd_agi_rad[JOB_TYPE_SHUISHOU] = 1.1   																	--	
		Str_updata[JOB_TYPE_SHUISHOU]	=	0.2 
		Dex_updata[JOB_TYPE_SHUISHOU]	=	0.1 
		Con_updata[JOB_TYPE_SHUISHOU]	=	0.6 
		Agi_updata[JOB_TYPE_SHUISHOU]	=	0.1 
		Sta_updata[JOB_TYPE_SHUISHOU]	=	0.1 
		Luk_updata[JOB_TYPE_SHUISHOU]	=	0.1 


--Прирост характеристик класса Мореплаватель
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла
		Mxhp_con_rad1[JOB_TYPE_MAOXIANZHE], Mxhp_con_rad2[JOB_TYPE_MAOXIANZHE], Mxhp_lv_rad[JOB_TYPE_MAOXIANZHE] =	5	,	5	, 25						
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла
		Mxsp_sta_rad1[JOB_TYPE_MAOXIANZHE], Mxsp_sta_rad2[JOB_TYPE_MAOXIANZHE], Mxsp_lv_rad[JOB_TYPE_MAOXIANZHE] =	2	,	1.5	, 5							
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_MAOXIANZHE], Mnatk_str_rad2[JOB_TYPE_MAOXIANZHE], Mnatk_dex_rad1[JOB_TYPE_MAOXIANZHE], Mnatk_dex_rad2[JOB_TYPE_MAOXIANZHE] = 1.5,	0.4,		0,	0				
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_MAOXIANZHE], Mxatk_str_rad2[JOB_TYPE_MAOXIANZHE], Mxatk_dex_rad1[JOB_TYPE_MAOXIANZHE], Mxatk_dex_rad2[JOB_TYPE_MAOXIANZHE] = 1.5,	0.4,		0,	0 				
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_MAOXIANZHE], Def_con_rad2[JOB_TYPE_MAOXIANZHE] = 0.13	,	0.1 										
		--1.Хит рейт от акк 2. Хит рейт от акк	
		Hit_dex_rad1[JOB_TYPE_MAOXIANZHE], Hit_dex_rad2[JOB_TYPE_MAOXIANZHE] =		0.6,		0 							
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_MAOXIANZHE], Flee_agi_rad2[JOB_TYPE_MAOXIANZHE] =	0.6,		0								
		--1. Дроп от стата "удача"
		Mf_luk_rad[JOB_TYPE_MAOXIANZHE] = 0.39 														
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_MAOXIANZHE] = 0.31											
		--1. Хп реген от макс. хп 2. Хп реген от кона
		Hrec_bsmxhp_rad[JOB_TYPE_MAOXIANZHE], Hrec_con_rad[JOB_TYPE_MAOXIANZHE] = 1/180, 1/8								
		--1. сп реген от макс. сп 2. сп реген от кона
		Srec_bsmxsp_rad[JOB_TYPE_MAOXIANZHE], Srec_sta_rad[JOB_TYPE_MAOXIANZHE] = 1/100, 1/12								
		--1. Атакспид от аги
		Aspd_agi_rad[JOB_TYPE_MAOXIANZHE]	=	1.1   												 			
		--Неизвестно
		Str_updata[JOB_TYPE_MAOXIANZHE]	=	0.1 
		Dex_updata[JOB_TYPE_MAOXIANZHE]	=	0.1 
		Con_updata[JOB_TYPE_MAOXIANZHE]	=	0.3 
		Agi_updata[JOB_TYPE_MAOXIANZHE]	=	0.1 
		Sta_updata[JOB_TYPE_MAOXIANZHE]	=	0.5 
		Luk_updata[JOB_TYPE_MAOXIANZHE]	=	0.1 


--Прирост характеристик класса Целитель
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла
		Mxhp_con_rad1[JOB_TYPE_QIYUANSHI], Mxhp_con_rad2[JOB_TYPE_QIYUANSHI], Mxhp_lv_rad[JOB_TYPE_QIYUANSHI] =	5	,	5	, 25						
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла
		Mxsp_sta_rad1[JOB_TYPE_QIYUANSHI], Mxsp_sta_rad2[JOB_TYPE_QIYUANSHI], Mxsp_lv_rad[JOB_TYPE_QIYUANSHI] =	2	,	1.5	, 5							
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_QIYUANSHI], Mnatk_str_rad2[JOB_TYPE_QIYUANSHI], Mnatk_dex_rad1[JOB_TYPE_QIYUANSHI], Mnatk_dex_rad2[JOB_TYPE_QIYUANSHI] = 1.5,	0.4,		0,	0				
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_QIYUANSHI], Mxatk_str_rad2[JOB_TYPE_QIYUANSHI], Mxatk_dex_rad1[JOB_TYPE_QIYUANSHI], Mxatk_dex_rad2[JOB_TYPE_QIYUANSHI] = 1.5,	0.4,		0,	0 				
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_QIYUANSHI], Def_con_rad2[JOB_TYPE_QIYUANSHI] = 0.13	,	0.1 										
		--1.Хит рейт от акк 2. Хит рейт от акк	
		Hit_dex_rad1[JOB_TYPE_QIYUANSHI], Hit_dex_rad2[JOB_TYPE_QIYUANSHI] =		0.6,		0 							
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_QIYUANSHI], Flee_agi_rad2[JOB_TYPE_QIYUANSHI] = 0.6,	0									
		--1. Дроп от стата "удача"
		Mf_luk_rad[JOB_TYPE_QIYUANSHI] = 0.39 														
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_QIYUANSHI] = 0.31											
		--1. Хп реген от макс. хп 2. Хп реген от кона
		Hrec_bsmxhp_rad[JOB_TYPE_QIYUANSHI], Hrec_con_rad[JOB_TYPE_QIYUANSHI] = 1/180, 1/8								
		--1. сп реген от макс. сп 2. сп реген от кона
		Srec_bsmxsp_rad[JOB_TYPE_QIYUANSHI], Srec_sta_rad[JOB_TYPE_QIYUANSHI] = 1/100, 1/12								
		--1. Атакспид от аги
		Aspd_agi_rad[JOB_TYPE_QIYUANSHI]	=	1.1   												 			
		--Неизвестно
		Str_updata[JOB_TYPE_QIYUANSHI]	=	0.1 
		Dex_updata[JOB_TYPE_QIYUANSHI]	=	0.1 
		Con_updata[JOB_TYPE_QIYUANSHI]	=	0.3 
		Agi_updata[JOB_TYPE_QIYUANSHI]	=	0.1 
		Sta_updata[JOB_TYPE_QIYUANSHI]	=	0.5 
		Luk_updata[JOB_TYPE_QIYUANSHI]	=	0.1 


--Прирост характеристик класса Artisal(Невведено в игру)		
		Mxhp_con_rad1[JOB_TYPE_JISHI], Mxhp_con_rad2[JOB_TYPE_JISHI], Mxhp_lv_rad[JOB_TYPE_JISHI] = 2, 2, 10 								
		Mxsp_sta_rad1[JOB_TYPE_JISHI], Mxsp_sta_rad2[JOB_TYPE_JISHI], Mxsp_lv_rad[JOB_TYPE_JISHI] = 0.5, 0.5, 1							
		Mnatk_str_rad1[JOB_TYPE_JISHI], Mnatk_str_rad2[JOB_TYPE_JISHI], Mnatk_dex_rad1[JOB_TYPE_JISHI], Mnatk_dex_rad2[JOB_TYPE_JISHI] = 0.8, 0.8, 0, 0					
		Mxatk_str_rad1[JOB_TYPE_JISHI], Mxatk_str_rad2[JOB_TYPE_JISHI], Mxatk_dex_rad1[JOB_TYPE_JISHI], Mxatk_dex_rad2[JOB_TYPE_JISHI] = 0.8, 0.8, 0, 0 				
		Def_con_rad1[JOB_TYPE_JISHI], Def_con_rad2[JOB_TYPE_JISHI] = 0.5, 0.5 										
		Hit_dex_rad1[JOB_TYPE_JISHI], Hit_dex_rad2[JOB_TYPE_JISHI] = 0.31, 0.15 									
		Flee_agi_rad1[JOB_TYPE_JISHI], Flee_agi_rad2[JOB_TYPE_JISHI] = 0.31, 0.15									
		Mf_luk_rad[JOB_TYPE_JISHI] = 0.39 																
		Crt_luk_rad[JOB_TYPE_JISHI] = 0.31											
		Hrec_bsmxhp_rad[JOB_TYPE_JISHI], Hrec_con_rad[JOB_TYPE_JISHI] = 1/200, 1/100									
		Srec_bsmxsp_rad[JOB_TYPE_JISHI],Srec_sta_rad[JOB_TYPE_JISHI] = 1/200, 1/120										
		Aspd_agi_rad[JOB_TYPE_JISHI] = 1.1   												 				
		Str_updata[JOB_TYPE_JISHI]	=	0.4 	
		Dex_updata[JOB_TYPE_JISHI]	=	0.1 
		Con_updata[JOB_TYPE_JISHI]	=	0.5 
		Agi_updata[JOB_TYPE_JISHI]	=	0.1 
		Sta_updata[JOB_TYPE_JISHI]	=	0.1 
		Luk_updata[JOB_TYPE_JISHI]	=	0.2 


--Прирост характеристик класса Merchant(Невведено в игру)
		Mxhp_con_rad1[JOB_TYPE_SHANGREN], Mxhp_con_rad2[JOB_TYPE_SHANGREN], Mxhp_lv_rad[JOB_TYPE_SHANGREN] = 2, 2, 10 						
		Mxsp_sta_rad1[JOB_TYPE_SHANGREN], Mxsp_sta_rad2[JOB_TYPE_SHANGREN], Mxsp_lv_rad[JOB_TYPE_SHANGREN] = 0.5, 0.5, 1						
		Mnatk_str_rad1[JOB_TYPE_SHANGREN], Mnatk_str_rad2[JOB_TYPE_SHANGREN], Mnatk_dex_rad1[JOB_TYPE_SHANGREN], Mnatk_dex_rad2[JOB_TYPE_SHANGREN] = 0.8, 0.8, 0, 0				
		Mxatk_str_rad1[JOB_TYPE_SHANGREN], Mxatk_str_rad2[JOB_TYPE_SHANGREN], Mxatk_dex_rad1[JOB_TYPE_SHANGREN], Mxatk_dex_rad2[JOB_TYPE_SHANGREN] = 0.8, 0.8, 0, 0 						
		Def_con_rad1[JOB_TYPE_SHANGREN], Def_con_rad2[JOB_TYPE_SHANGREN] = 0.5, 0.5 											
		Hit_dex_rad1[JOB_TYPE_SHANGREN], Hit_dex_rad2[JOB_TYPE_SHANGREN] = 0.31, 0.15 									
		Flee_agi_rad1[JOB_TYPE_SHANGREN], Flee_agi_rad2[JOB_TYPE_SHANGREN] = 0.31, 0.15										
		Mf_luk_rad[JOB_TYPE_SHANGREN] = 0.39 																	
		Crt_luk_rad[JOB_TYPE_SHANGREN] = 0.31													
		Hrec_bsmxhp_rad[JOB_TYPE_SHANGREN], Hrec_con_rad[JOB_TYPE_SHANGREN] = 1/200, 1/100										
		Srec_bsmxsp_rad[JOB_TYPE_SHANGREN], Srec_sta_rad[JOB_TYPE_SHANGREN] = 1/200, 1/120											
		Aspd_agi_rad[JOB_TYPE_SHANGREN] = 1.1   												 				
		Str_updata[JOB_TYPE_SHANGREN]	=	0.3 
		Dex_updata[JOB_TYPE_SHANGREN]	=	0.1 
		Con_updata[JOB_TYPE_SHANGREN]	=	0.5 
		Agi_updata[JOB_TYPE_SHANGREN]	=	0.1 
		Sta_updata[JOB_TYPE_SHANGREN]	=	0.1 
		Luk_updata[JOB_TYPE_SHANGREN]	=	0.1 


--Прирост характеристик класса Чемпион
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла
		Mxhp_con_rad1[JOB_TYPE_JUJS], Mxhp_con_rad2[JOB_TYPE_JUJS], Mxhp_lv_rad[JOB_TYPE_JUJS] = 5,7,40 						
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла
		Mxsp_sta_rad1[JOB_TYPE_JUJS], Mxsp_sta_rad2[JOB_TYPE_JUJS], Mxsp_lv_rad[JOB_TYPE_JUJS] = 1,0,3 						
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_JUJS], Mnatk_str_rad2[JOB_TYPE_JUJS], Mnatk_dex_rad1[JOB_TYPE_JUJS], Mnatk_dex_rad2[JOB_TYPE_JUJS] = 2,0.40, 0, 0				
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_JUJS], Mxatk_str_rad2[JOB_TYPE_JUJS], Mxatk_dex_rad1[JOB_TYPE_JUJS], Mxatk_dex_rad2[JOB_TYPE_JUJS] =  2,0.40, 0, 0				
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_JUJS], Def_con_rad2[JOB_TYPE_JUJS] = 0.2,0.55 	
		--1.Хит рейт от акк 2. Хит рейт от акк	
		Hit_dex_rad1[JOB_TYPE_JUJS], Hit_dex_rad2[JOB_TYPE_JUJS] = 0.7, 0.3 	
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_JUJS], Flee_agi_rad2[JOB_TYPE_JUJS] = 0.6, 0.2	
		--1. Дроп от стата "удача"
		Mf_luk_rad[JOB_TYPE_JUJS] = 0.39 										
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_JUJS] = 0.31										
		--1. Хп реген от макс. хп 2. Хп реген от кона
		Hrec_bsmxhp_rad[JOB_TYPE_JUJS], Hrec_con_rad[JOB_TYPE_JUJS] = 1/180, 1/8	
		--1. сп реген от макс. сп 2. сп реген от кона
		Srec_bsmxsp_rad[JOB_TYPE_JUJS], Srec_sta_rad[JOB_TYPE_JUJS] = 1/100, 1/12	
		--1. Атакспид от аги
		Aspd_agi_rad[JOB_TYPE_JUJS] = 1.15    										
		--Неизвестно
		Str_updata[JOB_TYPE_JUJS]	=	0.3 
		Dex_updata[JOB_TYPE_JUJS]	=	0.1 
		Con_updata[JOB_TYPE_JUJS]	=	0.5 
		Agi_updata[JOB_TYPE_JUJS]	=	0.1 
		Sta_updata[JOB_TYPE_JUJS]	=	0.1 
		Luk_updata[JOB_TYPE_JUJS]	=	0.1 


--Прирост характеристик класса Воитель
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла
		Mxhp_con_rad1[JOB_TYPE_SHUANGJS], Mxhp_con_rad2[JOB_TYPE_SHUANGJS], Mxhp_lv_rad[JOB_TYPE_SHUANGJS] = 5,7,30 
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла
		Mxsp_sta_rad1[JOB_TYPE_SHUANGJS], Mxsp_sta_rad2[JOB_TYPE_SHUANGJS], Mxsp_lv_rad[JOB_TYPE_SHUANGJS] = 1,0,3 	
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_SHUANGJS], Mnatk_str_rad2[JOB_TYPE_SHUANGJS], Mnatk_dex_rad1[JOB_TYPE_SHUANGJS], Mnatk_dex_rad2[JOB_TYPE_SHUANGJS]	= 1.5, 0.4, 0, 0				
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_SHUANGJS], Mxatk_str_rad2[JOB_TYPE_SHUANGJS], Mxatk_dex_rad1[JOB_TYPE_SHUANGJS], Mxatk_dex_rad2[JOB_TYPE_SHUANGJS]	= 1.5, 0.4, 0, 0	
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_SHUANGJS], Def_con_rad2[JOB_TYPE_SHUANGJS] = 0.2, 0.1 									
		--1.Хит рейт от акк 2. Хит рейт от акк	
		Hit_dex_rad1[JOB_TYPE_SHUANGJS], Hit_dex_rad2[JOB_TYPE_SHUANGJS] = 0.6, 0 							
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_SHUANGJS], Flee_agi_rad2[JOB_TYPE_SHUANGJS] = 0.75, 0								
		--1. Дроп от стата "удача"
		Mf_luk_rad[JOB_TYPE_SHUANGJS] = 0.39 															
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_SHUANGJS] = 0.31											
		--1. Хп реген от макс. хп 2. Хп реген от кона
		Hrec_bsmxhp_rad[JOB_TYPE_SHUANGJS], Hrec_con_rad[JOB_TYPE_SHUANGJS] = 1/180, 1/8							
		--1. сп реген от макс. сп 2. сп реген от кона
		Srec_bsmxsp_rad[JOB_TYPE_SHUANGJS], Srec_sta_rad[JOB_TYPE_SHUANGJS] = 1/100, 1/12									
		--1. Атакспид от аги
		Aspd_agi_rad[JOB_TYPE_SHUANGJS] = 1.25    												 			
		--Неизвестно
		Str_updata[JOB_TYPE_SHUANGJS]	=	0.3 
		Dex_updata[JOB_TYPE_SHUANGJS]	=	0.1 
		Con_updata[JOB_TYPE_SHUANGJS]	=	0.5 
		Agi_updata[JOB_TYPE_SHUANGJS]	=	0.1 
		Sta_updata[JOB_TYPE_SHUANGJS]	=	0.1 
		Luk_updata[JOB_TYPE_SHUANGJS]	=	0.1 

		
--Прирост характеристик класса Белый Рыцарь(Невведено в игру)
		Mxhp_con_rad1[JOB_TYPE_JIANDUNSHI], Mxhp_con_rad2[JOB_TYPE_JIANDUNSHI], Mxhp_lv_rad[JOB_TYPE_JIANDUNSHI] = 2, 2, 10 						
		Mxsp_sta_rad1[JOB_TYPE_JIANDUNSHI], Mxsp_sta_rad2[JOB_TYPE_JIANDUNSHI], Mxsp_lv_rad[JOB_TYPE_JIANDUNSHI] = 0.5, 0.5, 1						
		Mnatk_str_rad1[JOB_TYPE_JIANDUNSHI], Mnatk_str_rad2[JOB_TYPE_JIANDUNSHI], Mnatk_dex_rad1[JOB_TYPE_JIANDUNSHI], Mnatk_dex_rad2[JOB_TYPE_JIANDUNSHI] = 0.8, 0.8, 0, 0				
		Mxatk_str_rad1[JOB_TYPE_JIANDUNSHI], Mxatk_str_rad2[JOB_TYPE_JIANDUNSHI], Mxatk_dex_rad1[JOB_TYPE_JIANDUNSHI], Mxatk_dex_rad2[JOB_TYPE_JIANDUNSHI] = 0.8, 0.8, 0, 0 				
		Def_con_rad1[JOB_TYPE_JIANDUNSHI], Def_con_rad2[JOB_TYPE_JIANDUNSHI] = 0.5, 0.5 									
		Hit_dex_rad1[JOB_TYPE_JIANDUNSHI], Hit_dex_rad2[JOB_TYPE_JIANDUNSHI] = 0.31, 0.15 							
		Flee_agi_rad1[JOB_TYPE_JIANDUNSHI], Flee_agi_rad2[JOB_TYPE_JIANDUNSHI] = 0.31, 0.15								
		Mf_luk_rad[JOB_TYPE_JIANDUNSHI] = 0.39 															
		Crt_luk_rad[JOB_TYPE_JIANDUNSHI] = 0.31											
		Hrec_bsmxhp_rad[JOB_TYPE_JIANDUNSHI], Hrec_con_rad[JOB_TYPE_JIANDUNSHI] = 1/200, 1/100								
		Srec_bsmxsp_rad[JOB_TYPE_JIANDUNSHI], Srec_sta_rad[JOB_TYPE_JIANDUNSHI] = 1/200, 1/120									
		Aspd_agi_rad[JOB_TYPE_JIANDUNSHI] = 1.1   												 			
		Str_updata[JOB_TYPE_JIANDUNSHI]	=	0.3 
		Dex_updata[JOB_TYPE_JIANDUNSHI]	=	0.1 
		Con_updata[JOB_TYPE_JIANDUNSHI]	=	0.5 
		Agi_updata[JOB_TYPE_JIANDUNSHI]	=	0.1 
		Sta_updata[JOB_TYPE_JIANDUNSHI]	=	0.1 
		Luk_updata[JOB_TYPE_JIANDUNSHI]	=	0.1 


--Прирост характеристик класса Animal Tamer(Невведено в игру)	
		Mxhp_con_rad1[JOB_TYPE_XUNSHOUSHI], Mxhp_con_rad2[JOB_TYPE_XUNSHOUSHI], Mxhp_lv_rad[JOB_TYPE_XUNSHOUSHI] = 2, 2, 10 						
		Mxsp_sta_rad1[JOB_TYPE_XUNSHOUSHI], Mxsp_sta_rad2[JOB_TYPE_XUNSHOUSHI], Mxsp_lv_rad[JOB_TYPE_XUNSHOUSHI] = 0.5, 0.5, 1						
		Mnatk_str_rad1[JOB_TYPE_XUNSHOUSHI], Mnatk_str_rad2[JOB_TYPE_XUNSHOUSHI], Mnatk_dex_rad1[JOB_TYPE_XUNSHOUSHI], Mnatk_dex_rad2[JOB_TYPE_XUNSHOUSHI] = 0.8, 0.8, 0, 0				
		Mxatk_str_rad1[JOB_TYPE_XUNSHOUSHI], Mxatk_str_rad2[JOB_TYPE_XUNSHOUSHI], Mxatk_dex_rad1[JOB_TYPE_XUNSHOUSHI], Mxatk_dex_rad2[JOB_TYPE_XUNSHOUSHI] = 0.8, 0.8, 0, 0 				
		Def_con_rad1[JOB_TYPE_XUNSHOUSHI], Def_con_rad2[JOB_TYPE_XUNSHOUSHI] = 0.5, 0.5 									
		Hit_dex_rad1[JOB_TYPE_XUNSHOUSHI], Hit_dex_rad2[JOB_TYPE_XUNSHOUSHI] = 0.31, 0.15 							
		Flee_agi_rad1[JOB_TYPE_XUNSHOUSHI], Flee_agi_rad2[JOB_TYPE_XUNSHOUSHI] = 0.31, 0.15								
		Mf_luk_rad[JOB_TYPE_XUNSHOUSHI] = 0.39 															
		Crt_luk_rad[JOB_TYPE_XUNSHOUSHI] = 0.31											
		Hrec_bsmxhp_rad[JOB_TYPE_XUNSHOUSHI], Hrec_con_rad[JOB_TYPE_XUNSHOUSHI] = 1/200, 1/100								
		Srec_bsmxsp_rad[JOB_TYPE_XUNSHOUSHI], Srec_sta_rad[JOB_TYPE_XUNSHOUSHI] = 1/200, 1/120									
		Aspd_agi_rad[JOB_TYPE_XUNSHOUSHI] = 1.2   												 			
		Str_updata[JOB_TYPE_XUNSHOUSHI]	=	0.3 
		Dex_updata[JOB_TYPE_XUNSHOUSHI]	=	0.1 
		Con_updata[JOB_TYPE_XUNSHOUSHI]	=	0.5 
		Agi_updata[JOB_TYPE_XUNSHOUSHI]	=	0.1 
		Sta_updata[JOB_TYPE_XUNSHOUSHI]	=	0.1 
		Luk_updata[JOB_TYPE_XUNSHOUSHI]	=	0.1 


--Прирост характеристик класса Стрелок	
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла
		Mxhp_con_rad1[JOB_TYPE_JUJISHOU], Mxhp_con_rad2[JOB_TYPE_JUJISHOU], Mxhp_lv_rad[JOB_TYPE_JUJISHOU] = 4.5,4.5,50 						
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла
		Mxsp_sta_rad1[JOB_TYPE_JUJISHOU], Mxsp_sta_rad2[JOB_TYPE_JUJISHOU], Mxsp_lv_rad[JOB_TYPE_JUJISHOU] = 1,0,3						
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_JUJISHOU], Mnatk_str_rad2[JOB_TYPE_JUJISHOU], Mnatk_dex_rad1[JOB_TYPE_JUJISHOU], Mnatk_dex_rad2[JOB_TYPE_JUJISHOU] = 0,0,2, 0.45				
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_JUJISHOU], Mxatk_str_rad2[JOB_TYPE_JUJISHOU], Mxatk_dex_rad1[JOB_TYPE_JUJISHOU], Mxatk_dex_rad2[JOB_TYPE_JUJISHOU] = 0,0,2, 0.45 				
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_JUJISHOU], Def_con_rad2[JOB_TYPE_JUJISHOU] = 0.19, 0.19 									
		--1.Хит рейт от акк 2. Хит рейт от акк
		Hit_dex_rad1[JOB_TYPE_JUJISHOU], Hit_dex_rad2[JOB_TYPE_JUJISHOU] = 0.7, 0 	
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_JUJISHOU], Flee_agi_rad2[JOB_TYPE_JUJISHOU] = 0.45, 0		
		--1. Дроп от стата "удача"
		Mf_luk_rad[JOB_TYPE_JUJISHOU] = 0.39 					
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_JUJISHOU] = 0.31				
		--1. Хп реген от макс. хп 2. Хп реген от кона
		Hrec_bsmxhp_rad[JOB_TYPE_JUJISHOU], Hrec_con_rad[JOB_TYPE_JUJISHOU] = 1/180, 1/8		
		--1. сп реген от макс. сп 2. сп реген от кона
		Srec_bsmxsp_rad[JOB_TYPE_JUJISHOU], Srec_sta_rad[JOB_TYPE_JUJISHOU] = 1/100, 1/12	
		--1. Атакспид от аги
		Aspd_agi_rad[JOB_TYPE_JUJISHOU] = 1.5    										
		--Неизвестно
		Str_updata[JOB_TYPE_JUJISHOU]	=	0.3 
		Dex_updata[JOB_TYPE_JUJISHOU]	=	0.1 
		Con_updata[JOB_TYPE_JUJISHOU]	=	0.5 
		Agi_updata[JOB_TYPE_JUJISHOU]		=	0.1 
		Sta_updata[JOB_TYPE_JUJISHOU]	=	0.1 
		Luk_updata[JOB_TYPE_JUJISHOU]	=	0.1 


--Прирост характеристик класса Клерик		
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла
		Mxhp_con_rad1[JOB_TYPE_SHENGZHIZHE], Mxhp_con_rad2[JOB_TYPE_SHENGZHIZHE], Mxhp_lv_rad[JOB_TYPE_SHENGZHIZHE] = 	5	,	5	, 45					
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла
		Mxsp_sta_rad1[JOB_TYPE_SHENGZHIZHE], Mxsp_sta_rad2[JOB_TYPE_SHENGZHIZHE], Mxsp_lv_rad[JOB_TYPE_SHENGZHIZHE] = 		3	,	3	, 6					
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_SHENGZHIZHE], Mnatk_str_rad2[JOB_TYPE_SHENGZHIZHE], Mnatk_dex_rad1[JOB_TYPE_SHENGZHIZHE], Mnatk_dex_rad2[JOB_TYPE_SHENGZHIZHE] = 1.5,	0.4,		0,	0			
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_SHENGZHIZHE], Mxatk_str_rad2[JOB_TYPE_SHENGZHIZHE], Mxatk_dex_rad1[JOB_TYPE_SHENGZHIZHE], Mxatk_dex_rad2[JOB_TYPE_SHENGZHIZHE] = 1.5,	0.4,		0,	0			
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_SHENGZHIZHE], Def_con_rad2[JOB_TYPE_SHENGZHIZHE] =	0.2	,	0.2 									
		--1.Хит рейт от акк 2. Хит рейт от акк
		Hit_dex_rad1[JOB_TYPE_SHENGZHIZHE], Hit_dex_rad2[JOB_TYPE_SHENGZHIZHE] = 			0.6,		0 					
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_SHENGZHIZHE], Flee_agi_rad2[JOB_TYPE_SHENGZHIZHE] = 	0.6,		0								
		--1. Дроп от стата "удача"
		Mf_luk_rad[JOB_TYPE_SHENGZHIZHE] = 0.39 															
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_SHENGZHIZHE] = 0.31											
		--1. Хп реген от макс. хп 2. Хп реген от кона
		Hrec_bsmxhp_rad[JOB_TYPE_SHENGZHIZHE], Hrec_con_rad[JOB_TYPE_SHENGZHIZHE] = 1/180, 1/8								
		--1. сп реген от макс. сп 2. сп реген от кона
		Srec_bsmxsp_rad[JOB_TYPE_SHENGZHIZHE], Srec_sta_rad[JOB_TYPE_SHENGZHIZHE] = 1/100, 1/12									
		--1. Атакспид от аги
		Aspd_agi_rad[JOB_TYPE_SHENGZHIZHE] = 1.1   												 			
		--Неизвестно
		Str_updata[JOB_TYPE_SHENGZHIZHE]	=	0.3 
		Dex_updata[JOB_TYPE_SHENGZHIZHE]	=	0.1 
		Con_updata[JOB_TYPE_SHENGZHIZHE]	=	0.5 
		Agi_updata[JOB_TYPE_SHENGZHIZHE]	=	0.1 
		Sta_updata[JOB_TYPE_SHENGZHIZHE]	=	0.1 
		Luk_updata[JOB_TYPE_SHENGZHIZHE]	=	0.1 


--Прирост характеристик класса Колдунья	
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла
		Mxhp_con_rad1[JOB_TYPE_FENGYINSHI], Mxhp_con_rad2[JOB_TYPE_FENGYINSHI], Mxhp_lv_rad[JOB_TYPE_FENGYINSHI] = 	6	,	6	, 35						
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла
		Mxsp_sta_rad1[JOB_TYPE_FENGYINSHI], Mxsp_sta_rad2[JOB_TYPE_FENGYINSHI], Mxsp_lv_rad[JOB_TYPE_FENGYINSHI] = 		4	,	4	, 6						
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_FENGYINSHI], Mnatk_str_rad2[JOB_TYPE_FENGYINSHI], Mnatk_dex_rad1[JOB_TYPE_FENGYINSHI], Mnatk_dex_rad2[JOB_TYPE_FENGYINSHI] = 1.5,	0.4,		0,	0					
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_FENGYINSHI], Mxatk_str_rad2[JOB_TYPE_FENGYINSHI], Mxatk_dex_rad1[JOB_TYPE_FENGYINSHI], Mxatk_dex_rad2[JOB_TYPE_FENGYINSHI] = 1.5,	0.4,		0,	0				
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_FENGYINSHI], Def_con_rad2[JOB_TYPE_FENGYINSHI] = 		0.3	,	0.3 									
		--1.Хит рейт от акк 2. Хит рейт от акк
		Hit_dex_rad1[JOB_TYPE_FENGYINSHI], Hit_dex_rad2[JOB_TYPE_FENGYINSHI] =  			0.6,		0 							
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_FENGYINSHI], Flee_agi_rad2[JOB_TYPE_FENGYINSHI] =		0.6,		0								
		--1. Дроп от стата "удача"
		Mf_luk_rad[JOB_TYPE_FENGYINSHI] = 0.39 															
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_FENGYINSHI] = 0.31											
		--1. Хп реген от макс. хп 2. Хп реген от кона
		Hrec_bsmxhp_rad[JOB_TYPE_FENGYINSHI], Hrec_con_rad[JOB_TYPE_FENGYINSHI] = 1/180, 1/8									
		--1. сп реген от макс. сп 2. сп реген от кона
		Srec_bsmxsp_rad[JOB_TYPE_FENGYINSHI], Srec_sta_rad[JOB_TYPE_FENGYINSHI] = 1/100, 1/12									
		--1. Атакспид от аги
		Aspd_agi_rad[JOB_TYPE_FENGYINSHI] = 1.1 												 			
		--Неизвестно
		Str_updata[JOB_TYPE_FENGYINSHI]	=	0.3 
		Dex_updata[JOB_TYPE_FENGYINSHI]	=	0.1 
		Con_updata[JOB_TYPE_FENGYINSHI]	=	0.5 
		Agi_updata[JOB_TYPE_FENGYINSHI]	=	0.1 
		Sta_updata[JOB_TYPE_FENGYINSHI]	=	0.1 
		Luk_updata[JOB_TYPE_FENGYINSHI]	=	0.1 


--Прирост характеристик класса Captain(Невведено)	
		Mxhp_con_rad1[JOB_TYPE_CHUANZHANG], Mxhp_con_rad2[JOB_TYPE_CHUANZHANG], Mxhp_lv_rad[JOB_TYPE_CHUANZHANG] = 2, 2, 10 						
		Mxsp_sta_rad1[JOB_TYPE_CHUANZHANG], Mxsp_sta_rad2[JOB_TYPE_CHUANZHANG], Mxsp_lv_rad[JOB_TYPE_CHUANZHANG] = 0.5, 0.5, 1						
		Mnatk_str_rad1[JOB_TYPE_CHUANZHANG], Mnatk_str_rad2[JOB_TYPE_CHUANZHANG], Mnatk_dex_rad1[JOB_TYPE_CHUANZHANG], Mnatk_dex_rad2[JOB_TYPE_CHUANZHANG] = 0.8, 0.8, 0, 0				
		Mxatk_str_rad1[JOB_TYPE_CHUANZHANG], Mxatk_str_rad2[JOB_TYPE_CHUANZHANG], Mxatk_dex_rad1[JOB_TYPE_CHUANZHANG], Mxatk_dex_rad2[JOB_TYPE_CHUANZHANG] = 0.8, 0.8, 0, 0 				
		Def_con_rad1[JOB_TYPE_CHUANZHANG], Def_con_rad2[JOB_TYPE_CHUANZHANG] = 0.5, 0.5 									
		Hit_dex_rad1[JOB_TYPE_CHUANZHANG], Hit_dex_rad2[JOB_TYPE_CHUANZHANG] = 0.31, 0.15 							
		Flee_agi_rad1[JOB_TYPE_CHUANZHANG], Flee_agi_rad2[JOB_TYPE_CHUANZHANG] = 0.31, 0.15								
		Mf_luk_rad[JOB_TYPE_CHUANZHANG] = 0.39 															
		Crt_luk_rad[JOB_TYPE_CHUANZHANG] = 0.31											
		Hrec_bsmxhp_rad[JOB_TYPE_CHUANZHANG], Hrec_con_rad[JOB_TYPE_CHUANZHANG] = 1/200, 1/100								
		Srec_bsmxsp_rad[JOB_TYPE_CHUANZHANG], Srec_sta_rad[JOB_TYPE_CHUANZHANG] = 1/200, 1/120									
		Aspd_agi_rad[JOB_TYPE_CHUANZHANG] = 1.1   												 			
		Str_updata[JOB_TYPE_CHUANZHANG]	=	0.3 
		Dex_updata[JOB_TYPE_CHUANZHANG]	=	0.1 
		Con_updata[JOB_TYPE_CHUANZHANG]	=	0.5 
		Agi_updata[JOB_TYPE_CHUANZHANG]	=	0.1 
		Sta_updata[JOB_TYPE_CHUANZHANG]	=	0.1 
		Luk_updata[JOB_TYPE_CHUANZHANG]	=	0.1 


--Прирост характеристик класса Покоритель Морей
		--1.Прирост хп от кона.2 Прирост хп от кона 3.Прирост хп от лвла
		Mxhp_con_rad1[JOB_TYPE_HANGHAISHI], Mxhp_con_rad2[JOB_TYPE_HANGHAISHI], Mxhp_lv_rad[JOB_TYPE_HANGHAISHI] = 	6	,	6	, 40						
		--1. Прирост маны от духа 2. прирост маны от духа 3. Прирост маны от лвла
		Mxsp_sta_rad1[JOB_TYPE_HANGHAISHI], Mxsp_sta_rad2[JOB_TYPE_HANGHAISHI], Mxsp_lv_rad[JOB_TYPE_HANGHAISHI] = 		4	,	4	, 6					
		--1. Прирост мин. атаки от стр 2.Прирост мин. атаки от стр. 3 Прирост мин. атаки от ловки. 4. Прирост мин. атаки от ловки
		Mnatk_str_rad1[JOB_TYPE_HANGHAISHI], Mnatk_str_rad2[JOB_TYPE_HANGHAISHI], Mnatk_dex_rad1[JOB_TYPE_HANGHAISHI], Mnatk_dex_rad2[JOB_TYPE_HANGHAISHI] = 1.5,	0.4,		0,	0			
		--1. Прирост макс. атаки от стр 2.Прирост макс. атаки от стр. 3 Прирост макс. атаки от ловки. 4. Прирост макс. атаки от ловки
		Mxatk_str_rad1[JOB_TYPE_HANGHAISHI], Mxatk_str_rad2[JOB_TYPE_HANGHAISHI], Mxatk_dex_rad1[JOB_TYPE_HANGHAISHI], Mxatk_dex_rad2[JOB_TYPE_HANGHAISHI] = 1.5,	0.4,		0,	0			
		--1.Деф от кона 2. Деф от кона
		Def_con_rad1[JOB_TYPE_HANGHAISHI], Def_con_rad2[JOB_TYPE_HANGHAISHI] =  		0.2	,	0.2 									
		--1.Хит рейт от акк 2. Хит рейт от акк
		Hit_dex_rad1[JOB_TYPE_HANGHAISHI], Hit_dex_rad2[JOB_TYPE_HANGHAISHI] = 			0.6,		0 						
		--1.Додж от аги 2. Додж от аги	
		Flee_agi_rad1[JOB_TYPE_HANGHAISHI], Flee_agi_rad2[JOB_TYPE_HANGHAISHI] = 		0.6,		0								
		--1. Дроп от стата "удача"
		Mf_luk_rad[JOB_TYPE_HANGHAISHI] = 0.39 															
		--1. Крит от стата "удача"	
		Crt_luk_rad[JOB_TYPE_HANGHAISHI] = 0.31											
		--1. Хп реген от макс. хп 2. Хп реген от кона
		Hrec_bsmxhp_rad[JOB_TYPE_HANGHAISHI], Hrec_con_rad[JOB_TYPE_HANGHAISHI] = 1/180, 1/8								
		--1. сп реген от макс. сп 2. сп реген от кона
		Srec_bsmxsp_rad[JOB_TYPE_HANGHAISHI], Srec_sta_rad[JOB_TYPE_HANGHAISHI] = 1/100, 1/12									
		--1. Атакспид от аги
		Aspd_agi_rad[JOB_TYPE_HANGHAISHI] = 1.1   												 			
		--Неизвестно
		Str_updata[JOB_TYPE_HANGHAISHI]	=	0.3 
		Dex_updata[JOB_TYPE_HANGHAISHI]	=	0.1 
		Con_updata[JOB_TYPE_HANGHAISHI]	=	0.5 
		Agi_updata[JOB_TYPE_HANGHAISHI]	=	0.1 
		Sta_updata[JOB_TYPE_HANGHAISHI]	=	0.1 
		Luk_updata[JOB_TYPE_HANGHAISHI]	=	0.1 


--Прирост характеристик класса Upstar(Невведено)	
		Mxhp_con_rad1[JOB_TYPE_BAOFAHU], Mxhp_con_rad2[JOB_TYPE_BAOFAHU], Mxhp_lv_rad[JOB_TYPE_BAOFAHU] = 2, 2, 10 						
		Mxsp_sta_rad1[JOB_TYPE_BAOFAHU], Mxsp_sta_rad2[JOB_TYPE_BAOFAHU], Mxsp_lv_rad[JOB_TYPE_BAOFAHU] = 0.5, 0.5, 1						
		Mnatk_str_rad1[JOB_TYPE_BAOFAHU], Mnatk_str_rad2[JOB_TYPE_BAOFAHU], Mnatk_dex_rad1[JOB_TYPE_BAOFAHU], Mnatk_dex_rad2[JOB_TYPE_BAOFAHU] = 0.8, 0.8, 0, 0				
		Mxatk_str_rad1[JOB_TYPE_BAOFAHU], Mxatk_str_rad2[JOB_TYPE_BAOFAHU], Mxatk_dex_rad1[JOB_TYPE_BAOFAHU], Mxatk_dex_rad2[JOB_TYPE_BAOFAHU] = 0.8, 0.8, 0, 0 				
		Def_con_rad1[JOB_TYPE_BAOFAHU], Def_con_rad2[JOB_TYPE_BAOFAHU] = 0.5, 0.5 									
		Hit_dex_rad1[JOB_TYPE_BAOFAHU], Hit_dex_rad2[JOB_TYPE_BAOFAHU] = 0.31, 0.15 							
		Flee_agi_rad1[JOB_TYPE_BAOFAHU], Flee_agi_rad2[JOB_TYPE_BAOFAHU] = 0.31, 0.15								
		Mf_luk_rad[JOB_TYPE_BAOFAHU] = 0.39 															
		Crt_luk_rad[JOB_TYPE_BAOFAHU] = 0.31											
		Hrec_bsmxhp_rad[JOB_TYPE_BAOFAHU], Hrec_con_rad[JOB_TYPE_BAOFAHU] = 1/200, 1/100								
		Srec_bsmxsp_rad[JOB_TYPE_BAOFAHU], Srec_sta_rad[JOB_TYPE_BAOFAHU] = 1/200, 1/120									
		Aspd_agi_rad[JOB_TYPE_BAOFAHU]	=	1.1   												 			
		Str_updata[JOB_TYPE_BAOFAHU]		=	0.3 
		Dex_updata[JOB_TYPE_BAOFAHU]	=	0.1 
		Con_updata[JOB_TYPE_BAOFAHU]	=	0.5 
		Agi_updata[JOB_TYPE_BAOFAHU]		=	0.1 
		Sta_updata[JOB_TYPE_BAOFAHU]	=	0.1 
		Luk_updata[JOB_TYPE_BAOFAHU]	=	0.1 


--Прирост характеристик класса Инженер(Невведено)		
		Mxhp_con_rad1[JOB_TYPE_GONGCHENGSHI], Mxhp_con_rad2[JOB_TYPE_GONGCHENGSHI], Mxhp_lv_rad[JOB_TYPE_GONGCHENGSHI] = 2, 2, 10 						
		Mxsp_sta_rad1[JOB_TYPE_GONGCHENGSHI], Mxsp_sta_rad2[JOB_TYPE_GONGCHENGSHI], Mxsp_lv_rad[JOB_TYPE_GONGCHENGSHI] = 0.5, 0.5, 1						
		Mnatk_str_rad1[JOB_TYPE_GONGCHENGSHI], Mnatk_str_rad2[JOB_TYPE_GONGCHENGSHI], Mnatk_dex_rad1[JOB_TYPE_GONGCHENGSHI], Mnatk_dex_rad2[JOB_TYPE_GONGCHENGSHI] = 0.8, 0.8, 0, 0				
		Mxatk_str_rad1[JOB_TYPE_GONGCHENGSHI], Mxatk_str_rad2[JOB_TYPE_GONGCHENGSHI], Mxatk_dex_rad1[JOB_TYPE_GONGCHENGSHI], Mxatk_dex_rad2[JOB_TYPE_GONGCHENGSHI] = 0.8, 0.8, 0, 0 				
		Def_con_rad1[JOB_TYPE_GONGCHENGSHI], Def_con_rad2[JOB_TYPE_GONGCHENGSHI] = 0.5, 0.5 									
		Hit_dex_rad1[JOB_TYPE_GONGCHENGSHI], Hit_dex_rad2[JOB_TYPE_GONGCHENGSHI] = 0.31, 0.15 							
		Flee_agi_rad1[JOB_TYPE_GONGCHENGSHI], Flee_agi_rad2[JOB_TYPE_GONGCHENGSHI] = 0.31, 0.15								
		Mf_luk_rad[JOB_TYPE_GONGCHENGSHI] = 0.39 															
		Crt_luk_rad[JOB_TYPE_GONGCHENGSHI] = 0.31											
		Hrec_bsmxhp_rad[JOB_TYPE_GONGCHENGSHI], Hrec_con_rad[JOB_TYPE_GONGCHENGSHI] = 1/200, 1/100								
		Srec_bsmxsp_rad[JOB_TYPE_GONGCHENGSHI], Srec_sta_rad[JOB_TYPE_GONGCHENGSHI] = 1/200, 1/120									
		Aspd_agi_rad[JOB_TYPE_GONGCHENGSHI]	= 1.1   												 			
		Str_updata[JOB_TYPE_GONGCHENGSHI]	=	0.3 
		Dex_updata[JOB_TYPE_GONGCHENGSHI]	=	0.1 
		Con_updata[JOB_TYPE_GONGCHENGSHI]	=	0.5 
		Agi_updata[JOB_TYPE_GONGCHENGSHI]	=	0.1 
		Sta_updata[JOB_TYPE_GONGCHENGSHI]	=	0.1 
		Luk_updata[JOB_TYPE_GONGCHENGSHI]	=	0.1 



function Creat_Item(item, item_type, item_lv, item_event) 
	item_event = item_event 
	item_type   = item_type 
	item_lv       = item_lv 
		 
	Reset_item_add() --	
	
	local i = 0
	local Num = 0
	if item_event==NPC_SALE then 
		Npc_Sale(  item_type, item_lv  , item_event) 
		
		SetItemForgeParam_Npc_Sale ( item , Num )

	elseif item_event==MONSTER_BAOLIAO then 
		Monster_Baoliao( item_type, item_lv  , item_event)

		SetItemForgeParam_MonsterBaoliao ( item , Num )

	elseif item_event == PLAYER_HECHENG then
		Player_Hecheng( item_type, item_lv  , item_event)
		
		SetItemForgeParam_PlayerHecheng ( item , Num )

	elseif item_event == PLAYER_XSBOX then 
		Player_XSBox( item_type, item_lv  , item_event)
		local Num = GetItemForgeParam ( item , 1 )	 
		local Part1 = GetNum_Part1 ( Num )	
		local Part2 = GetNum_Part2 ( Num )
		local Part3 = GetNum_Part3 ( Num )
		local Part4 = GetNum_Part4 ( Num )
		local Part5 = GetNum_Part5 ( Num )
		local Part6 = GetNum_Part6 ( Num )
		local Part7 = GetNum_Part7 ( Num )	
		if item_type == 1 then
			Part1 = 1
			Part2 = 1
			Part3 = 1
		end
		if item_type == 2 then
			Part1 = 1
			Part2 = 2
			Part3 = 1
		end
		if item_type == 3 then
			Part1 = 1
			Part2 = 2
			Part3 = 1
		end
		if item_type == 4 then
			Part1 = 1
			Part2 = 3
			Part3 = 1
		end
		if item_type == 7 then
			Part1 = 1
			Part2 = 8
			Part3 = 1
		end
		if item_type == 9 then
			Part1 = 1
			Part2 = 8
			Part3 = 1
		end

		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		Num = SetNum_Part1 ( Num , Part1)
		SetItemForgeParam ( item , 1 , Num )

   elseif item_event == PLAYER_CCFSBOXA then 
		Player_CCFSBoxA( item_type, item_lv  , item_event)
	elseif item_event == PLAYER_CCFSBOXB then 
		Player_CCFSBoxB( item_type, item_lv  , item_event)
	elseif item_event == PLAYER_CCFSBOXC then 
		Player_CCFSBoxC( item_type, item_lv  , item_event)
	elseif item_event == PLAYER_CCFSBOXD then 
		Player_CCFSBoxD( item_type, item_lv  , item_event)
	elseif item_event == PLAYER_CCFSBOXE then
		Player_CCFSBoxE( item_type, item_lv  , item_event)
	elseif item_event == PLAYER_CCFSBOXF then
		Player_CCFSBoxF( item_type, item_lv  , item_event)
	elseif item_event == PLAYER_CCFSBOXG then 
		Player_CCFSBoxG( item_type, item_lv  , item_event)
	elseif item_event == PLAYER_CCFSBOXH then 
		Player_CCFSBoxH( item_type, item_lv  , item_event)
	elseif item_event == PLAYER_CCFSBOXI then 
		Player_CCFSBoxI( item_type, item_lv  , item_event)
	elseif item_event == PLAYER_ZSITEM then 
		Player_ZSitem( item_type, item_lv  , item_event)
	elseif item_event == QUEST_AWARD_GODBOX then                                  
		quest_award_godbox( item_type, item_lv  , item_event)

	elseif item_event == PLAYER_HSSR then 
		Player_HSSR( item_type, item_lv  , item_event)
	elseif item_event == PLAYER_HSSRA then 
		Player_HSSRA( item_type, item_lv  , item_event)

	elseif item_event >= QUEST_AWARD_1 then 
		Quest_Award( item_type, item_lv  , item_event)
		
		SetItemForgeParam_QuestAward ( item , Num , item_event )

	else 
		item_add.cnt = 0 
	end 


	return item_add.cnt, 
	item_add.attr[1][1], item_add.attr[1][2],
	item_add.attr[2][1], item_add.attr[2][2], 
	item_add.attr[3][1], item_add.attr[3][2],
	item_add.attr[4][1], item_add.attr[4][2],
	item_add.attr[5][1], item_add.attr[5][2],
	item_add.attr[6][1], item_add.attr[6][2],
	item_add.attr[7][1], item_add.attr[7][2] 
end 

function Npc_Sale(item_type, item_lv , item_event) 
	Creat_Item_Tattr( item_type, item_lv , item_event ) 
end 

function Monster_Baoliao(item_type, item_lv , item_event) 
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 

function Player_Hecheng (item_type, item_lv , item_event)
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end  

function Quest_Award( item_type, item_lv  , item_event) 
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end  

function Player_XSBox( item_type, item_lv  , item_event)  
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Player_CCFSBoxA( item_type, item_lv  , item_event)  
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Player_CCFSBoxB( item_type, item_lv  , item_event) 
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Player_CCFSBoxC( item_type, item_lv  , item_event)  
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Player_CCFSBoxD( item_type, item_lv  , item_event) 
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Player_CCFSBoxE( item_type, item_lv  , item_event) 
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Player_CCFSBoxF( item_type, item_lv  , item_event)  
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Player_CCFSBoxG( item_type, item_lv  , item_event) 
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Player_CCFSBoxH( item_type, item_lv  , item_event) 
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Player_CCFSBoxI( item_type, item_lv  , item_event)  
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 

function Player_ZSitem( item_type, item_lv  , item_event) 
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 

function quest_award_godbox( item_type, item_lv  , item_event)         
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 

function Player_HSSR( item_type, item_lv  , item_event) 
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Player_HSSRA( item_type, item_lv  , item_event)  
	Creat_Item_Tattr(item_type,item_lv , item_event) 
end 
function Creat_Item_Battr(item_type, item_lv, item_event) 
	if item_type>=1 and item_type<=10 then  
		Add_Item_Attr(ITEMATTR_MAXURE, 0) 
		Add_Item_Attr(ITEMATTR_VAL_MNATK,  0) 
		Add_Item_Attr(ITEMATTR_VAL_MXATK,  0) 
		if item_type == 1 then 
			Add_Item_Attr( ITEMATTR_VAL_HIT, 0) 
			Add_Item_Attr( ITEMATTR_COE_ASPD, 0)
		elseif item_type == 2 then 
			Add_Item_Attr( ITEMATTR_VAL_DEF, 0)
			Add_Item_Attr( ITEMATTR_VAL_MXHP, 0)
		elseif item_type == 3 then 
			Add_Item_Attr( ITEMATTR_COE_ASPD, 0) 
			Add_Item_Attr( ITEMATTR_VAL_HIT, 0)	
		elseif item_type == 4 then 
			Add_Item_Attr( ITEMATTR_VAL_HIT, 0) 
			Add_Item_Attr( ITEMATTR_COE_ASPD, 0)	
		elseif item_type == 7 then 
			Add_Item_Attr( ITEMATTR_VAL_STA, 0)	
			Add_Item_Attr( ITEMATTR_COE_MXSP, 0)	
			Add_Item_Attr( ITEMATTR_COE_MSPD, 0)	
		elseif item_type == 9 then						
			Add_Item_Attr( ITEMATTR_VAL_STA, 0)	
			Add_Item_Attr( ITEMATTR_COE_MXSP, 0)	
			Add_Item_Attr( ITEMATTR_COE_MXHP, 0)	
		end 
	elseif item_type==11 then 
		Add_Item_Attr(ITEMATTR_MAXURE, 0) 
		Add_Item_Attr(ITEMATTR_VAL_DEF, 0) 
		Add_Item_Attr(ITEMATTR_VAL_PDEF, 0)
	elseif item_type==20 then 
		Add_Item_Attr(ITEMATTR_MAXURE, 0) 
		Add_Item_Attr(ITEMATTR_VAL_DEF, 0) 
	elseif item_type==22 then 
		Add_Item_Attr(ITEMATTR_MAXURE, 0)
		Add_Item_Attr(ITEMATTR_VAL_DEF, 0) 
		Add_Item_Attr(ITEMATTR_VAL_PDEF, 0) 
		Add_Item_Attr(ITEMATTR_VAL_MXSP, 0) 
		Add_Item_Attr(ITEMATTR_VAL_AGI, 0) 
	elseif item_type==27 then 
		Add_Item_Attr(ITEMATTR_MAXURE, 0) 
		Add_Item_Attr(ITEMATTR_VAL_DEF, 0) 
		Add_Item_Attr(ITEMATTR_VAL_PDEF, 0) 
	elseif item_type==23 then 
	       Add_Item_Attr(ITEMATTR_MAXURE, 0) 
	       Add_Item_Attr(ITEMATTR_VAL_HIT,  0) 
	       Add_Item_Attr(ITEMATTR_VAL_DEF, 0) 
	       Add_Item_Attr(ITEMATTR_VAL_DEX, 0) 
	       Add_Item_Attr(ITEMATTR_VAL_SREC, 0)  
	elseif item_type==24 then 
	       Add_Item_Attr(ITEMATTR_MAXURE, 0) 
	       Add_Item_Attr(ITEMATTR_VAL_FLEE, 0) 
	       Add_Item_Attr(ITEMATTR_VAL_DEF, 0) 
	elseif item_type==29 then 
	       Add_Item_Attr(ITEMATTR_MAXURE, 0) 
	       Add_Item_Attr(ITEMATTR_MAXENERGY, 0) 
	elseif item_type == 26 then 
	       Add_Item_Attr(ITEMATTR_MAXURE, 0) 
	       Add_Item_Attr(ITEMATTR_VAL_MXATK,  0) 
	       Add_Item_Attr(ITEMATTR_VAL_DEF,  0) 
	       Add_Item_Attr(ITEMATTR_VAL_FLEE,  0) 
	       Add_Item_Attr(ITEMATTR_VAL_HIT,  0) 
	       Add_Item_Attr(ITEMATTR_VAL_CRT,  0) 
	elseif item_type == 25 then 
	       Add_Item_Attr(ITEMATTR_MAXURE, 0) 
	       Add_Item_Attr(ITEMATTR_VAL_MXHP,  0) 
	       Add_Item_Attr(ITEMATTR_VAL_MXSP,  0) 
	       Add_Item_Attr(ITEMATTR_VAL_SREC,  0) 
	       Add_Item_Attr(ITEMATTR_VAL_HREC,  0) 
	       Add_Item_Attr(ITEMATTR_VAL_PDEF,  0) 
	elseif  item_type == 46 then

	elseif item_type == 59 then
	
	else
        end 
end 

function Creat_Item_Tattr(item_type,item_lv , item_event)
	local quality = SetItemQua ( item_event ) 
	if item_event == 101 then 
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 10 )					
		return 
	end 
	if item_event == 102 then 
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 20 )					
		return 
	end 
	if item_event == 103 then 
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 30 )						
		return 
	end 
	if item_event == 104 then 
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 40 )						
		return 
	end 
	if item_event == 105 then 
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 50 )						
		return 
	end 
	if item_event == 106 then 
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 60 )						
		return 
	end 
	if item_event == 107 then 
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 70 )						
		return 
	end 
	if item_event == 108 then 
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 80 )						
		return 
	end 
	if item_event == 109 then 
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 90 )					
		return 
	end 
	if item_type>=1 and item_type<=10 then 
		Add_Item_Attr(ITEMATTR_MAXURE, SetItemQua ( item_event ) ) 
		Add_Item_Attr(ITEMATTR_VAL_MNATK,  quality * 10 ) 
		Add_Item_Attr(ITEMATTR_VAL_MXATK,  quality * 10) 
		if item_type == 1 then									
			CreatItemAttr ( item_type,item_lv , item_event, quality ) 

		elseif item_type == 2 then									
			CreatItemAttr ( item_type,item_lv , item_event, quality ) 

		elseif item_type == 3 then									
			CreatItemAttr ( item_type,item_lv , item_event, quality ) 

		elseif item_type == 4 then								
			CreatItemAttr ( item_type,item_lv , item_event , quality ) 

		elseif item_type == 7 then								
			CreatItemAttr ( item_type,item_lv , item_event , quality ) 

		elseif item_type == 9 then								
			CreatItemAttr ( item_type,item_lv , item_event, quality ) 

		end 
	elseif item_type==11 then										
		Add_Item_Attr(ITEMATTR_MAXURE, SetItemQua ( item_event ) ) 
		Add_Item_Attr(ITEMATTR_VAL_DEF, quality * 10 ) 
		Add_Item_Attr(ITEMATTR_VAL_PDEF, quality ) 
		CreatItemAttr ( item_type,item_lv , item_event , quality ) 

	elseif item_type==20 then									
		Add_Item_Attr(ITEMATTR_MAXURE, 0 ) 
		Add_Item_Attr(ITEMATTR_VAL_DEF, quality * 10) 
		CreatItemAttr ( item_type,item_lv , item_event , quality) 

	elseif item_type==22 then								
		Add_Item_Attr(ITEMATTR_MAXURE, SetItemQua ( item_event ) )
		Add_Item_Attr(ITEMATTR_VAL_DEF, quality * 10) 
	       Add_Item_Attr(ITEMATTR_VAL_PDEF,  quality * 10 ) 
		CreatItemAttr ( item_type,item_lv , item_event , quality ) 

	elseif item_type==27 then								
		Add_Item_Attr(ITEMATTR_MAXURE, SetItemQua ( item_event ) )
		Add_Item_Attr(ITEMATTR_VAL_DEF, quality * 10) 
		Add_Item_Attr(ITEMATTR_VAL_PDEF, SetItemQua ( item_event ) ) 
		CreatItemAttr ( item_type,item_lv , item_event , quality) 

	elseif item_type==23 then										
	       Add_Item_Attr(ITEMATTR_MAXURE, SetItemQua ( item_event ) ) 
	       Add_Item_Attr(ITEMATTR_VAL_HIT,  quality * 10) 
	       Add_Item_Attr(ITEMATTR_VAL_DEF, quality * 10) 
		CreatItemAttr ( item_type, item_lv , item_event , quality) 

	elseif item_type==24 then										
		Add_Item_Attr(ITEMATTR_MAXURE, SetItemQua ( item_event ) ) 
		Add_Item_Attr(ITEMATTR_VAL_FLEE, quality * 10) 
		Add_Item_Attr(ITEMATTR_VAL_DEF, quality * 10) 
		CreatItemAttr ( item_type,item_lv , item_event , quality ) 

	elseif item_type==29 then									
	       Add_Item_Attr(ITEMATTR_MAXURE, 0) 
	       Add_Item_Attr(ITEMATTR_MAXENERGY, 0) 

	elseif item_type == 26 then									
	       Add_Item_Attr(ITEMATTR_MAXURE, SetItemQua ( item_event )  ) 
	       Add_Item_Attr(ITEMATTR_VAL_MXATK,  quality * 10 ) 
	       Add_Item_Attr(ITEMATTR_VAL_DEF,  quality * 10 ) 
	       Add_Item_Attr(ITEMATTR_VAL_FLEE,  quality * 10 ) 
	       Add_Item_Attr(ITEMATTR_VAL_HIT,  quality * 10 ) 
	       Add_Item_Attr(ITEMATTR_VAL_CRT,  quality * 10 ) 
	       CreatItemAttr ( item_type,item_lv , item_event , quality  ) 

	elseif item_type == 25 then									
	       Add_Item_Attr(ITEMATTR_MAXURE, SetItemQua ( item_event ) ) 
	       Add_Item_Attr(ITEMATTR_VAL_MXHP,  quality * 10 ) 
	       Add_Item_Attr(ITEMATTR_VAL_MXSP,  quality * 10 ) 
	       Add_Item_Attr(ITEMATTR_VAL_SREC,  quality * 10 ) 
	       Add_Item_Attr(ITEMATTR_VAL_HREC,  quality * 10 ) 
	       Add_Item_Attr(ITEMATTR_VAL_PDEF,  quality * 10 ) 
	       CreatItemAttr ( item_type,item_lv , item_event , quality ) 
	elseif item_type == 46 then										
	       CreatItemAttr ( item_type,item_lv , item_event , quality )
	elseif item_type == 49 then
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 10 )						
	elseif item_type == 50 then
		Add_Item_Attr ( ITEMATTR_VAL_BaoshiLV , 10 )						
	elseif item_type == 59 then
		Add_Item_Attr(ITEMATTR_VAL_STR, 10 )
		Add_Item_Attr(ITEMATTR_VAL_DEX, 10 )
		Add_Item_Attr(ITEMATTR_VAL_CON, 10 )
		Add_Item_Attr(ITEMATTR_VAL_AGI, 10 )
		Add_Item_Attr(ITEMATTR_VAL_STA, 10 )
	elseif item_type == 65 then
		Add_Item_Attr(ITEMATTR_VAL_STR, 10 )
		Add_Item_Attr(ITEMATTR_VAL_DEX, 10 )
		Add_Item_Attr(ITEMATTR_VAL_CON, 10 )
		Add_Item_Attr(ITEMATTR_VAL_AGI, 10 )
		Add_Item_Attr(ITEMATTR_VAL_STA, 10 )
	elseif 	item_type == 68  then
		Add_Item_Attr(ITEMATTR_VAL_STR, 10 )
		Add_Item_Attr(ITEMATTR_VAL_DEX, 10 )
		Add_Item_Attr(ITEMATTR_VAL_CON, 10 )
		Add_Item_Attr(ITEMATTR_VAL_AGI, 10 )
		Add_Item_Attr(ITEMATTR_VAL_STA, 10 )
	elseif item_type == 69 then
		Add_Item_Attr(ITEMATTR_VAL_STR, 10 )
		Add_Item_Attr(ITEMATTR_VAL_DEX, 10 )
		Add_Item_Attr(ITEMATTR_VAL_CON, 10 )
		Add_Item_Attr(ITEMATTR_VAL_AGI, 10 )
		Add_Item_Attr(ITEMATTR_VAL_STA, 10 )
	elseif item_type == 70 then
		Add_Item_Attr(ITEMATTR_VAL_STR, 10 )
	elseif item_type == 71 then
		Add_Item_Attr(ITEMATTR_VAL_STR, 10 )
	elseif item_type == 41 then
		Add_Item_Attr(ITEMATTR_VAL_STR, 10 )
		Add_Item_Attr(ITEMATTR_VAL_AGI, 10 )
		Add_Item_Attr(ITEMATTR_VAL_DEX, 10 )
	else	

        end 

end

function SetItemQua ( item_event )							

	local qua = 0 
	if  item_event == NPC_SALE then				
		qua = 0 
	elseif item_event == MONSTER_BAOLIAO then 
		qua = Item_Quality_Ran ( Item_Baoliao ) 
	elseif item_event == QUEST_AWARD_1 then 
		qua = Item_Quality_Ran ( Item_Mission_1 ) 
	elseif item_event == QUEST_AWARD_2 then 
		qua = Item_Quality_Ran ( Item_Mission_2 ) 
	elseif item_event == QUEST_AWARD_3 then 
		qua = Item_Quality_Ran ( Item_Mission_3 ) 
	elseif item_event == QUEST_AWARD_4 then 
		qua = Item_Quality_Ran ( Item_Mission_4 ) 
	elseif item_event == QUEST_AWARD_5 then 
		qua = Item_Quality_Ran ( Item_Mission_5 )

	elseif item_event == PLAYER_XSBOX then 
		qua = Item_Quality_Ran ( Item_Mission_11 )
	elseif item_event == PLAYER_CCFSBOXA then 
		qua = Item_Quality_Ran ( Item_Mission_12 )
	elseif item_event == PLAYER_CCFSBOXB then 
		qua = Item_Quality_Ran ( Item_Mission_13 )
	elseif item_event == PLAYER_CCFSBOXC then 
		qua = Item_Quality_Ran ( Item_Mission_14 )
	elseif item_event == PLAYER_CCFSBOXD then 
		qua = Item_Quality_Ran ( Item_Mission_15 )
	elseif item_event == PLAYER_CCFSBOXE then 
		qua = Item_Quality_Ran ( Item_Mission_16 )
	elseif item_event == PLAYER_CCFSBOXF then 
		qua = Item_Quality_Ran ( Item_Mission_17 )
	elseif item_event == PLAYER_CCFSBOXG then 
		qua = Item_Quality_Ran ( Item_Mission_18 )
	elseif item_event == PLAYER_CCFSBOXH then 
		qua = Item_Quality_Ran ( Item_Mission_19 )
	elseif item_event == PLAYER_CCFSBOXI then 
		qua = Item_Quality_Ran ( Item_Mission_20 )
	elseif item_event == PLAYER_ZSITEM then 
		qua = Item_Quality_Ran ( Item_Mission_22 )
	elseif item_event == PLAYER_HSSR then 
		qua = Item_Quality_Ran ( Item_Mission_23 )
	elseif item_event == PLAYER_HSSRA then 
		qua = Item_Quality_Ran ( Item_Mission_24 )
	elseif item_event == QUEST_AWARD_GODBOX then                                                                       
		qua = Item_Quality_Ran ( Item_Mission_94 )
	elseif item_event == QUEST_AWARD_SCBOX then
		qua = Item_Quality_Ran ( Item_Mission_95 )
	elseif item_event == QUEST_AWARD_SDJ then
		qua = Item_Quality_Ran ( Item_Mission_96 )
	elseif item_event == QUEST_AWARD_RYZ then
		qua = Item_Quality_Ran ( Item_Mission_97 )	
	elseif item_event == QUEST_AWARD_WZX then
		qua = Item_Quality_Ran ( Item_Mission_98 )
	elseif item_event == QUEST_AWARD_RAND then 
		qua = Item_Quality_Ran ( Item_Mission_99 ) 
	end 

	return qua 
end 
		
function Item_Quality_Ran ( item_type_ran ) 
	local a = math.random ( 1, 100 ) 

	local b = 0 
	for i = 0 , 9 , 1 do 
		if a <= item_type_ran [i] then 
			b =  (10 - i ) 
			return b
		end 
	end 

	return b 

end 

function CreateItemAttrCount ( item_type , item_lv , item_event , quality , item_attrcount_ran ) 
	local a = math.random ( 1, 100 ) 
	if item_event == PLAYER_CCFSBOXA or  item_event == PLAYER_CCFSBOXB or  item_event == PLAYER_CCFSBOXC  or  item_event == PLAYER_CCFSBOXD  or  item_event == PLAYER_CCFSBOXE or  item_event == PLAYER_CCFSBOXF  or  item_event == PLAYER_CCFSBOXG or  item_event == PLAYER_CCFSBOXH or  item_event == PLAYER_CCFSBOXI then
		return 6
	end
	for i = 0 , 4 , 1 do 
		if a <= item_attrcount_ran [i] then 

			return  5 - i 
		end 
	end 
	return 0  
end 

function CreatItemAttr ( item_type , item_lv , item_event , quality ) 

	local count = 0 
	local energy = 0 
	local eleven =0
	if  item_lv <= 10 and item_type ~= 46 then							
	       Add_Item_Attr(ITEMATTR_MAXENERGY, 0) 
	       return 
	end 
	if  item_event == NPC_SALE then		
	       Add_Item_Attr(ITEMATTR_MAXENERGY, 0) 
	       return 
	elseif item_event == MONSTER_BAOLIAO then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_0 ) 
	elseif item_event == QUEST_AWARD_1 then
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_1 ) 
	elseif item_event == QUEST_AWARD_2 then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_2 ) 
	elseif item_event == QUEST_AWARD_3 then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_3 ) 
	elseif item_event == QUEST_AWARD_4 then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_4 ) 
	elseif item_event == QUEST_AWARD_5 then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_5 )
	elseif item_event == PLAYER_XSBOX then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_11 )
	elseif item_event ==  PLAYER_CCFSBOXA then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_12 )
	elseif item_event ==  PLAYER_CCFSBOXB then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_13 )
	elseif item_event ==  PLAYER_CCFSBOXC then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_14 )
	elseif item_event ==  PLAYER_CCFSBOXD then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_15 )
	elseif item_event ==  PLAYER_CCFSBOXE then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_16 )
	elseif item_event ==  PLAYER_CCFSBOXF then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_17 )
	elseif item_event ==  PLAYER_CCFSBOXG then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_18 )
	elseif item_event ==  PLAYER_CCFSBOXH then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_19 )
	elseif item_event ==  PLAYER_CCFSBOXI then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_20 )
	elseif item_event ==  PLAYER_ZSITEM then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_22 )
	elseif item_event ==  PLAYER_HSSR then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_23 )
	elseif item_event ==  PLAYER_HSSRA then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_24 )
	elseif item_event == QUEST_AWARD_GODBOX then
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_94 )
	elseif item_event == QUEST_AWARD_SCBOX then
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_95 )
	elseif item_event == QUEST_AWARD_SDJ then
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_96 )		
	elseif item_event == QUEST_AWARD_RYZ then
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_97 )
	elseif item_event == QUEST_AWARD_WZX then
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_98 )
	elseif item_event == QUEST_AWARD_RAND then 
		count = CreateItemAttrCount ( item_type , item_lv , item_event , quality , Item_Attr_99 ) 

	end 
	if count >= 2 and item_type ~=46 then 

		count = math.max ( 1 , math.min ( quality-1 , count )  ) 
	end 
	if item_event == 25 or item_event == 26 then 
		count = 0 
	end 
	if  item_event == PLAYER_CCFSBOXA or  item_event == PLAYER_CCFSBOXB or  item_event == PLAYER_CCFSBOXC  or  item_event == PLAYER_CCFSBOXD  or  item_event == PLAYER_CCFSBOXE or  item_event == PLAYER_CCFSBOXF  or  item_event == PLAYER_CCFSBOXG or  item_event == PLAYER_CCFSBOXH or  item_event == PLAYER_CCFSBOXI  then
		eleven = 1
	end	
	if eleven==1  then  
		count = 6		
	end	
	if count == 1 then 
		energy = SetItemOneAttr ( item_type , item_lv , item_event , quality ) 
	elseif count == 2 then 
		energy = SetItemTwoAttr ( item_type , item_lv , item_event , quality ) 
	elseif count == 3 then 
		energy = SetItemThreeAttr ( item_type , item_lv , item_event , quality ) 
	elseif count == 4 then 
		energy = SetItemFourAttr ( item_type , item_lv , item_event , quality ) 
	elseif count == 5 then
		energy = SetItemFiveAttr ( item_type , item_lv , item_event , quality )
	elseif count == 6 then
		if item_type ==20 then
			energy = SetItemOneAttr ( item_type , item_lv , item_event , quality ) 
		elseif item_type ==22 then
			energy = SetItemTwoAttr ( item_type , item_lv , item_event , quality ) 	
		elseif item_type ==23 or item_type ==24 then
			energy = SetItemThreeAttr ( item_type , item_lv , item_event , quality ) 
		end
	end 
	energy = quality * 100 + energy 
	Add_Item_Attr ( ITEMATTR_MAXENERGY ,  energy ) 


end 

function SetItemOneAttr ( item_type , item_lv , item_event , quality ) 
	local firstattr = 1						
	local lastattr = 5					
	local General = 0  
	for i = firstattr , lastattr , 1 do 
		General = ItemAttr_Rad [ i ] + General		
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	local star = 0
	for k = firstattr , lastattr , 1 do				

		d = ItemAttr_Rad [ k ] + b

		 if a <= d and a > b then
			c = k

		end 
		b = d 
	end
	if  item_event == PLAYER_CCFSBOXA or  item_event == PLAYER_CCFSBOXB or  item_event == PLAYER_CCFSBOXC  or  item_event == PLAYER_CCFSBOXD  or  item_event == PLAYER_CCFSBOXE or  item_event == PLAYER_CCFSBOXF  or  item_event == PLAYER_CCFSBOXG or  item_event == PLAYER_CCFSBOXH or  item_event == PLAYER_CCFSBOXI  then
		c = 6
		star = 1
	end
	if c == 1 then							
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 2 then
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event ) * 10 )  )
	end

	if c == 3 then
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 4 then
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 5 then
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end
	if c == -1 then
		LG( "setitemattr_err" , "instantiation 1 attribute parameter sending error, C = -1 ")
		c = 0
	end
	if c == 6 and star ==1 then
		Add_Item_Attr(ITEMATTR_VAL_MXSP, quality * 10 ) 
	end
	return c 

end 


function SetItemTwoAttr ( item_type , item_lv , item_event , quality )	
	local firstattr = 11					
	local lastattr = 20				
	local General = 0  
	for i = firstattr , lastattr , 1 do 
		General = ItemAttr_Rad [ i ] + General 
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	local star = 0
	for k = firstattr , lastattr , 1 do			

		d = ItemAttr_Rad [ k ] + b


		 if a <= d and a > b then
			c = k
		end 
		b = d 
	end
	if  item_event == PLAYER_CCFSBOXA or  item_event == PLAYER_CCFSBOXB or  item_event == PLAYER_CCFSBOXC  or  item_event == PLAYER_CCFSBOXD  or  item_event == PLAYER_CCFSBOXE or  item_event == PLAYER_CCFSBOXF  or  item_event == PLAYER_CCFSBOXG or  item_event == PLAYER_CCFSBOXH or  item_event == PLAYER_CCFSBOXI  then
		c = 21
		star = 1
	end
	if c == 11 then							
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )	
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 12 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 13 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 14 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 15 then
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 16 then
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 17 then
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 18 then
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 19 then
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end

	if c == 20 then
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event ) * 10 ) )
	end
	if c == 21 and star ==1 then
		Add_Item_Attr(ITEMATTR_VAL_MXHP, quality * 10 ) 
		Add_Item_Attr(ITEMATTR_VAL_HREC,  quality * 10 )
	end
	if c == -1 then
		LG( "setitemattr_err" , "instantiation 2 attribute parameter sending error, C = -1 ")
		c = 0
	end

	return c
	
end


function SetItemThreeAttr ( item_type , item_lv , item_event , quality ) 
	local firstattr = 50					
	local lastattr = 59						
	local General = 0  
	for i = firstattr , lastattr , 1 do 
		General = ItemAttr_Rad [ i ] + General 
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	local star = 0
	for k = firstattr , lastattr , 1 do			

		d = ItemAttr_Rad [ k ] + b


		 if a <= d and a > b then
			c = k
		end 
		b = d 
	end
	if  item_event == PLAYER_CCFSBOXA or  item_event == PLAYER_CCFSBOXB or  item_event == PLAYER_CCFSBOXC  or  item_event == PLAYER_CCFSBOXD  or  item_event == PLAYER_CCFSBOXE or  item_event == PLAYER_CCFSBOXF  or  item_event == PLAYER_CCFSBOXG or  item_event == PLAYER_CCFSBOXH or  item_event == PLAYER_CCFSBOXI  then
		if item_type==23 then
			c = 60
		elseif item_type==24 then
			c = 61
		end
		star = 1
	end
	if c == 50 then							
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 51 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 52 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 53 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 54 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 55 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 56 then
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 57 then
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 58 then
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 59 then
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end
	if c == 60 then
	       Add_Item_Attr(ITEMATTR_VAL_MXATK,  quality * 10 ) 
	       Add_Item_Attr(ITEMATTR_VAL_MNATK,  quality * 10 ) 
	       Add_Item_Attr(ITEMATTR_VAL_CRT,  quality * 10 )
	end	
	if c == 61 then
		Add_Item_Attr(ITEMATTR_VAL_MSPD, quality * 10)
		Add_Item_Attr(ITEMATTR_VAL_MXSP, quality * 10 )
		Add_Item_Attr(ITEMATTR_VAL_SREC,  quality * 10 )
	end	
	if c == -1 then
		LG( "setitemattr_err" , "instantiation 3 attribute parameter sending error, C = -1 ")
		c = 0
	end

	return c

end


function SetItemFourAttr ( item_type , item_lv , item_event , quality )    
	local firstattr = 90						   
	local lastattr = 94						
	local General = 0  
	for i = firstattr , lastattr , 1 do 
		General = ItemAttr_Rad [ i ] + General 
	end 
	local a = math.random ( 1, General )
	local b = 0				
	local d = 0 
	local c = -1
	for k = firstattr , lastattr , 1 do				

		d = ItemAttr_Rad [ k ] + b

		 if a <= d and a > b then
			c = k
		end 
		b = d 
	end

	if c == 90 then							 
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 91 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 92 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 93 then
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end

	if c == 94 then
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	end
	
	if c == -1 then
		LG( "setitemattr_err" , "instantiation 4 attribute parameter sending error, C = -1 ")
		c = 0
	end

	return c
end

function SetItemFiveAttr ( item_type , item_lv , item_event , quality )
	local c = 0	
		Add_Item_Attr(ITEMATTR_VAL_STR, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_DEX, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_CON, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_AGI, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
		Add_Item_Attr(ITEMATTR_VAL_STA, math.max ( 10 , SetItemQua ( item_event )* 10 ) )
	
	return c
end






function Shengji_Shuxingchengzhang( role )  

	local lv = Lv ( role ) 
	if lv >= LV_LIMIT then 
		local year = os.date ( "%y" ) 
		local month = os.date ( "%m" ) 
		local day = os.date ( "%d" ) 
		local sep = "_"
		lgname = "lvup"..year..sep..month..sep..day

		local Cha_name = GetChaDefaultName ( role ) 


		LG ( lgname , Cha_name.." "..lv ) 
	end 
	
	BsAttrUpgrade( role ) 
	AttrRecheck(role) 
	hp = Mxhp_final(role) 
	sp = Mxsp_final(role) 
	SetCharaAttr(hp, role, ATTR_HP) 
	SetCharaAttr(sp, role, ATTR_SP) 

	
--ученик-ментор
    local ret = HasMaster(role) -- Функция
    if ret == LUA_TRUE then
        AddMasterCredit(role, PlayerCredit[lv])        
        
        if lv <= 40 then -- До 40 уровня будут доватся предметы что заданы ниже
            AddCreditX(role, 10)            -- Дает 10 репы
            GiveItemX( role , 0 , 1128  , 1 , 4 )            -- Дает Мини-Усилители натикса
            AddMasterCredit(role, 10)            -- Дает 10 репы
        end

        if lv == 41 then                -- Уровень на котором будет доваться предметы
            SystemNotice(role,"\194\251 \228\238\241\242\232\227\235\232 41 \243\240\238\226\237\255, \226\231\227\235\255\237\232\242\229 \226 \226\240\229\236\229\237\237\251\233 \240\254\234\231\224\234!") -- Сис. Сообщение
            AddCreditX(role, 300)            -- Дает 300 репы
            AddMoney(role , 0, 200000)        -- Дает 200к
            GiveItemX( role , 0 , 5626  , 5 , 4 )     -- Супер ЖЗ зелье
            GiveItemX( role , 0 , 4696  , 1 , 4 )     -- Ожерелье стреляющей звезды
            AddMasterCredit(role, 300)        -- Дает 300 репы       
        end
        if lv == 60 then                
            SystemNotice(role,"\194\251 \228\238\241\242\232\227\235\232 60 \243\240\238\226\237\255, \226\231\227\235\255\237\232\242\229 \226 \226\240\229\236\229\237\237\251\233 \240\254\234\231\224\234!") -- Сис. Сообщение
            AddCreditX(role, 500)            -- Дает 500 репы
            GiveItemX( role , 0 , 1107  , 1 , 4 )     -- Кольцо Пустыни    
            GiveItemX( role , 0 , 2816  , 1 , 4 )     -- Бонус Книги чести
            AddMasterCredit(role, 500)            -- Дает 500 репы
        end
        if lv == 70 then                
            SystemNotice(role,"\194\251 \228\238\241\242\232\227\235\232 70 \243\240\238\226\237\255, \226\231\227\235\255\237\232\242\229 \226 \226\240\229\236\229\237\237\251\233 \240\254\234\231\224\234!") -- Сис. Сообщение
            AddCreditX(role, 800)            -- Дает 800 репы
            GiveItemX( role , 0 , 5707  , 1 , 4 )     -- Огромный Кошелек
            AddMasterCredit(role, 800)            -- Дает 800 репы
        end
        if lv == 80 then                
            SystemNotice(role,"\194\251 \228\238\241\242\232\227\235\232 80 \243\240\238\226\237\255, \226\231\227\235\255\237\232\242\229 \226 \226\240\229\236\229\237\237\251\233 \240\254\234\231\224\234!") -- Сис. Сообщение
            AddCreditX(role, 1300)            -- Дает 1300 репы
            AddMasterCredit(role, 1300)            -- Дает 1300 репы
        end
    end
end 

function CreatCha( role ) 

	local attr_ap = Attr_ap( role ) + 4 
	SetCharaAttr( attr_ap, role, ATTR_AP ) 
	AttrRecheck(role) 
	hp = GetChaAttr( role, ATTR_MXHP ) 
	sp = GetChaAttr( role, ATTR_MXSP ) 
	SetCharaAttr( hp, role, ATTR_HP ) 
	SetCharaAttr( sp, role, ATTR_SP ) 
	CreatChaSkill ( role ) 

end 


function AttrRecheck( role ) 

	local k = ChaIsBoat ( role ) 
	if k == 1 then 
		local cha_role = GetMainCha ( role ) 
		ShipAttrRecheck ( cha_role , role ) 
		return 
	end 
	BsAttrSet(role) 
	ExAttrCheck(role) 
	ExAttrSet(role) 

end 


function BsAttrUpgrade( role ) 
	local job = GetChaAttr( role, ATTR_JOB) 
	local job_check = CheckJobLegal ( job ) 
	if job_check == 0 then 
		return 
	end 

	local ap_extre = 0 
	local tp_extre = 0 

	local attr_tp = Attr_tp( role )  
	local attr_ap = Attr_ap( role ) 

	local bsstr = BSStr(role) + 0 
	SetCharaAttr( bsstr, role, ATTR_BSTR ) 

	local bsdex = BSDex( role ) + 0 
	SetCharaAttr( bsdex, role, ATTR_BDEX )

	local bscon = BSCon( role ) + 0 
	SetCharaAttr( bscon, role, ATTR_BCON ) 

	local bsagi = BSAgi( role ) + 0 
	SetCharaAttr( bsagi, role, ATTR_BAGI )  

	local bssta = BSSta(role) + 0 
	SetCharaAttr( bssta, role, ATTR_BSTA ) 

	local bsluk = BSLuk( role ) + 0 
	SetCharaAttr( bsluk, role, ATTR_BLUK ) 
	
	local lv = GetChaAttr ( role , ATTR_LV ) 
	
	if ( math.floor ( ( lv ) / 10 )  - math.floor ( ( lv - 1 ) / 10 ) ) == 1 then 
		ap_extre = 5 
	else 
		ap_extre = 1 
	end 

	if lv >= 60 then 
		ap_extre = ap_extre + 1 
	end 

	attr_ap = attr_ap + ap_extre 
	SetCharaAttr( attr_ap, role, ATTR_AP ) 
	
	if lv > 9 then 
		tp_extre = 1 
	end 

	if lv >= 65 then 
		if ( math.floor ( ( lv ) / 5 )  - math.floor ( ( lv - 1 ) / 5 ) ) == 1 then 
			tp_extre = 2 
		else 
			tp_extre = 1 
		end 
	end 

	attr_tp = attr_tp + tp_extre
	SetCharaAttr( attr_tp, role, ATTR_TP ) 
	 
end 


function BsAttrSet( role ) 
	local str_final = Str_final( role ) 
	SetCharaAttr( str_final, role, ATTR_STR )

	local dex_final = Dex_final( role ) 
	SetCharaAttr( dex_final, role, ATTR_DEX ) 

	local agi_final = Agi_final( role )
	SetCharaAttr( agi_final, role, ATTR_AGI )

	local con_final = Con_final( role ) 
	SetCharaAttr( con_final, role, ATTR_CON ) 

	local sta_final = Sta_final( role ) 
	SetCharaAttr( sta_final, role, ATTR_STA ) 

	local luk_final = Luk_final( role ) 
	SetCharaAttr( luk_final, role, ATTR_LUK ) 

end 

function ExAttrCheck(role)  
	local job = GetChaAttr(role, ATTR_JOB)
	local job_check = CheckJobLegal (job) 
	if job_check == 0 then 
		return 
	end 
   

	local mxhp	= math.floor(Con(role)*3 * Mxhp_con_rad1[job] + Mxhp_con_rad2[job] * math.pow( math.floor(Con(role)*3/20 ),  2) +Lv(role) * Mxhp_lv_rad[job] + 40)
	local mxsp	= math.floor(Sta(role)*3 * Mxsp_sta_rad1[job] + Mxsp_sta_rad2[job] * math.pow( math.floor(Sta(role)*3/20), 2) +Lv(role) * Mxsp_lv_rad[job] + 5)			
	local mnatk	 = math.floor( 0+ Str(role) * Mnatk_str_rad1[job] + Dex(role) * Mnatk_dex_rad1[job] + Mnatk_str_rad2[job] * math.pow(math.floor( Str(role)*4/20), 2 ) + Mnatk_dex_rad2[job] * math.pow(math.floor( Dex(role)*4/20), 2 ) )											--[[јЖЛг»щ±ѕmnatk]]--
	local mxatk	= math.floor( 0+ Str(role) * Mxatk_str_rad1[job] + Dex(role) * Mxatk_dex_rad1[job] + Mxatk_str_rad2[job] * math.pow(math.floor( Str(role)*4/20), 2 ) + Mxatk_dex_rad2[job] * math.pow(math.floor( Dex(role)*4/20), 2 ) )											--[[јЖЛг»щ±ѕmxatk]]--
	local def = math.floor( Con(role)* 5 * Def_con_rad1[job]	+ Def_con_rad2[job] * math.floor( math.pow( Con(role) * 3 /20, 2) ) )											
	local hit = math.floor( Dex(role) * Hit_dex_rad1[job])	+ Lv(role) * 2 + 5		
	local flee = math.floor( Agi(role) * Flee_agi_rad1[job] ) + Lv(role) * 2 + 5			
	local mf = 100 +  math.floor( Luk(role)*3 * Mf_luk_rad[job] )														
	local crt =11 +  math.floor( Luk(role)*3 * Crt_luk_rad[job] )														
	local hrec = math.max(math.max ( 2 * mxhp * Hrec_bsmxhp_rad[job] + Con(role)*3 * Hrec_con_rad[job] , 1) ,0) 						
	local srec = math.max((mxsp * Srec_bsmxsp_rad[job] + Sta(role)*3 * Srec_sta_rad[job])/2 , 1 )						
	local aspd = math.floor ( 100000/ (math.min ( math.floor( 65 +  Agi(role) * Aspd_agi_rad[job] ) , 300 ) ) )											
	
	SetCharaAttr( mxhp, role, ATTR_BMXHP )											
	if mxhp <= 0 then 
		LG("ChaAttr_err" , "Character" , GetChaName(role) , "Base Max HP error" )  
		LG("ChaAttr_err", "mxhp = ", mxhp,"    con = ", Con(role) , "	lv = " , Lv(role) ) 
	end 
	SetCharaAttr(mxsp, role, ATTR_BMXSP )												
	SetCharaAttr(mnatk, role, ATTR_BMNATK )											
	SetCharaAttr(mxatk, role, ATTR_BMXATK )											
	SetCharaAttr(def, role, ATTR_BDEF )													
	SetCharaAttr(hit, role, ATTR_BHIT)										
	SetCharaAttr(flee, role, ATTR_BFLEE)											
	SetCharaAttr(mf, role, ATTR_BMF)											
	SetCharaAttr(crt, role, ATTR_BCRT)										
	SetCharaAttr(hrec, role, ATTR_BHREC)										
	if hrec<= 0 then 
		LG("ChaAttr_err" , "Character" , GetChaName(role) , "Base HP recovery rate error" )  
		LG("ChaAttr_err", "hrec = ", hrec, "    mxhp = ", mxhp , "	con = " , Con(role) ) 
	end 
	SetCharaAttr(srec, role, ATTR_BSREC)								
	if srec<= 0 then 
		LG("ChaAttr_err" , "Character" , GetChaName(role) , "Base SP recovery rate error" )  
		LG("ChaAttr_err", "srec = ", srec, "    mxsp = ", mxsp , "	sta = " , Sta(role) ) 
	end 

	SetCharaAttr(aspd, role, ATTR_BASPD) 										
end 

function ExAttrSet(role) 
	local mxhp_final= Mxhp_final(role)
	SetCharaAttr(mxhp_final, role, ATTR_MXHP) 

	local mxsp_final = Mxsp_final(role)
	SetCharaAttr(mxsp_final, role, ATTR_MXSP) 

	local mnatk_final = Mnatk_final(role) 
	SetCharaAttr(mnatk_final, role, ATTR_MNATK) 

	local mxatk_final = Mxatk_final(role) 
	SetCharaAttr(mxatk_final, role, ATTR_MXATK) 

	local def_final = Def_final(role)
	SetCharaAttr(def_final, role, ATTR_DEF ) 

	local resist_final = Resist_final(role) 
	SetCharaAttr( resist_final, role, ATTR_PDEF) 

	local hit_final = Hit_final(role) 
	SetCharaAttr(hit_final, role, ATTR_HIT ) 

	local flee_final = Flee_final(role) 
	SetCharaAttr(flee_final, role, ATTR_FLEE) 

	local mf_final = Mf_final(role) 
	SetCharaAttr(mf_final, role, ATTR_MF ) 

	local crt_final = Crt_final(role)
	SetCharaAttr(crt_final, role, ATTR_CRT ) 

	local hrec_final = Hrec_final(role) 
	SetCharaAttr(hrec_final, role, ATTR_HREC )

	local srec_final = Srec_final(role) 
	SetCharaAttr(srec_final, role, ATTR_SREC )

	local aspd_final = math.floor ( 100000 / ( Aspd_final(role)  ) )
	SetCharaAttr(aspd_final, role, ATTR_ASPD )

	local adis_final = Adis_final(role) 
	SetCharaAttr(adis_final, role, ATTR_ADIS ) 

	local mspd_final = Mspd_final(role) 
	SetCharaAttr(mspd_final, role, ATTR_MSPD ) 
end 

function ShipAttrRecheck ( cha_role , ship_role )							
	Ship_ExAttrCheck ( cha_role , ship_role ) 
	Ship_ExAttrSet ( cha_role , ship_role ) 
end 

function Ship_ExAttrCheck ( cha_role , ship_role ) 

	if ship_role == nil then 
		LG("luascript_err" , "Ship_ExAttrCheck ship index as null" ) 
		return 0 
	end 
	
	if cha_role == nil then 
		LG ( "luascript_err" , " function Ship_ExAttrCheck :cha_role as null " ) 
		return 					
	else 
		lv = GetChaAttr ( ship_role , ATTR_LV ) 
		job = GetChaAttr ( cha_role , ATTR_JOB ) 
		sta = GetChaAttr ( cha_role , ATTR_STA ) 
		ship_mnatk_final		=	Boat_plus_MNATk ( lv , Ship_Mnatk_final ( cha_role , ship_role ) )					
		ship_mxatk_final		=	Boat_plus_MXATk ( lv , Ship_Mxatk_final ( cha_role , ship_role ) )						
		ship_adis_final		=	Ship_Adis_final ( cha_role , ship_role )						
		ship_cspd_final		=	Ship_Cspd_final ( cha_role , ship_role )						
		ship_aspd_final		=	math.floor ( 100000 / Ship_Aspd_final ( cha_role , ship_role ) ) 		
		ship_crange_final		=	Ship_Crange_final ( cha_role , ship_role )				
		ship_def_final		=	Boat_plus_def ( lv , Ship_Def_final ( cha_role , ship_role )	) 		
		ship_resist_final		=	Ship_Resist_final ( cha_role , ship_role )					
		ship_mxhp_final		=	Boat_plus_Mxhp ( lv , Ship_Mxhp_final ( cha_role , ship_role ) ) 		
		ship_hrec_final		=	Ship_Hrec_final ( cha_role , ship_role )					
		ship_srec_final		=	Ship_Srec_final ( cha_role , ship_role )			
		ship_mspd_final		=	Boat_plus_Mspd ( lv , Ship_Mspd_final ( cha_role , ship_role ) ) 
		ship_mxsp_final		=	Ship_Mxsp_final ( cha_role , ship_role )					
	end										
	SetCharaAttr(job, ship_role, ATTR_JOB )											
	SetCharaAttr(sta, ship_role, ATTR_STA )										
	SetCharaAttr(ship_mnatk_final, ship_role, ATTR_MNATK )									
	SetCharaAttr(ship_mxatk_final, ship_role, ATTR_MXATK )							
	SetCharaAttr(ship_adis_final, ship_role, ATTR_ADIS )								
	SetCharaAttr(ship_cspd_final, ship_role, ATTR_BOAT_CSPD )							
	SetCharaAttr(ship_aspd_final, ship_role, ATTR_ASPD )									
	SetCharaAttr(ship_crange_final, ship_role, ATTR_BOAT_CRANGE )							
	SetCharaAttr(ship_def_final, ship_role, ATTR_DEF )									
	SetCharaAttr(ship_resist_final, ship_role, ATTR_PDEF )									
	SetCharaAttr(ship_mxhp_final, ship_role, ATTR_MXHP )						
	SetCharaAttr(ship_hrec_final, ship_role, ATTR_HREC )							
	SetCharaAttr(ship_srec_final, ship_role, ATTR_SREC )								
	SetCharaAttr(ship_mspd_final, ship_role, ATTR_MSPD )								
	SetCharaAttr(ship_mxsp_final, ship_role, ATTR_MXSP )							

	
	
	SetCharaAttr( 1 , ship_role , ATTR_FLEE )									 

end 


function	Ship_ExAttrSet ( cha_role , ship_role ) 
end 


function Lifelv_Up ( cha_role )					
	local life_ap = GetChaAttr ( cha_role , ATTR_LIFETP ) 
	life_ap = life_ap + 1 
	SetCharaAttr( life_ap , cha_role , ATTR_LIFETP ) 
end 

function Saillv_Up ( cha_role )				

end 



function Resume ( role ) 
	local role_type = ChaIsBoat ( role ) 
	local srec = GetChaAttr ( role , ATTR_SREC ) 
	local sp = GetChaAttr ( role , ATTR_SP ) 
	local mxsp = GetChaAttr ( role , ATTR_MXSP ) 
	local hrec = GetChaAttr ( role , ATTR_HREC ) 
	if hrec < 0 then 
			LG ( "resume_err" , "role = " , GetChaName (role) , "HP recovery rate lower than 0" ) 
			LG ( "resume_err" , "role_hrec_statec = " , GetChaAttr ( role , ATTR_STATEC_HREC) , "role_hrec_statev = ", GetChaAttr ( role , ATTR_STATEV_HREC)  ) 
			LG ( "luascript_err" , "function Resume: character HP recovery rate less than 0" ) 
			return 
	end 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role , ATTR_MXHP ) 

	if role_type == 1 then						

		if hp <= 0 then 
			LG ( "luascript_err" , "function Resume: Character in dead status" ) 
			return 
		end 
		cha_role = GetMainCha ( role ) 
		if sp <= 0 then 
			BickerNotice ( role , "\205\229\242 \225\238\235\252\248\229 \242\238\239\235\232\226\224! \209\243\228\237\238 \239\238\226\240\229\230\228\224\229\242\241\255 \234\224\230\228\243\254 \236\232\237\243\242\243! \196\238\225\240\224\242\252\241\255 \228\238 \225\235\232\230\224\233\248\229\233 \227\224\226\224\237\232 \237\243\230\237\238 \239\240\255\236\238 \241\229\233\247\224\241!" )
			--BickerNotice ( role , "Нет больше топлива! Судно повреждается каждую минуту! Добраться до ближайшей гавани нужно прямо сейчас!" ) 
			hrec = hrec - 0.025 * mxhp 
			srec = 0 
		end 
		sp = math.max ( 0 , sp - srec ) 
		hp = math.min ( mxhp , hp + hrec ) 
		local ship_lv = GetChaAttr ( role , ATTR_LV ) 
		local ship_exp = GetChaAttr ( role , ATTR_CEXP ) 
		local boatexpup_count = GetBoatCtrlTick ( role ) 
		if ( boatexpup_count - math.floor ( boatexpup_count / 5 ) * 5  )  ==  4 then 
			a = 1 
		else	
			a = 0 
		end 
		boatexpup_count = boatexpup_count + 1 
		if boatexpup_count >= 500 then 
			boatexpup_count = 0 
		end 
		SetBoatCtrlTick ( role , boatexpup_count ) 

		if ship_lv <= 100 and ship_exp <= 1000  then 
			if a == 1 then 
				local ship_expadd = math.floor ( math.random ( 500, 1500 )  + math.max ( 0 , ( 2 - ship_lv /10 ) )  ) 
				ship_exp = ship_exp + ship_expadd
				SystemNotice (role,"\207\238\235\243\247\229\237\238 \238\239\251\242\224 \234\238\240\224\225\235\255:" ..ship_expadd)
				--SystemNotice (role,"Получено опыта корабля:" ..ship_expadd)
				SetCharaAttr (ship_exp ,role , ATTR_CEXP ) 
			end 
		end 
		cha_sp = math.min ( Mxsp ( cha_role ) , Sp ( cha_role ) + Srec ( cha_role ) ) 
		SetCharaAttr ( sp , role , ATTR_SP ) 
		SetCharaAttr ( hp , role , ATTR_HP ) 
		SetCharaAttr ( cha_sp , cha_role , ATTR_SP ) 
	else 
		if hp <= 0 then 
			LG ( "luascript_err" , "function Resume: Character in dead status" ) 
			return 
		end 
		local Elf_SkillHpResume = 0
		local Elf_SkillSpResume = 0
			
		if mxhp ~= hp then
			Elf_SkillHpResume = ElfSkill_HpResume ( role )
		end
	
		if mxsp ~= sp then
			Elf_SkillSpResume = ElfSkill_SpResume ( role )
		end
		
		hrec = hrec + Elf_SkillHpResume
		srec = srec + Elf_SkillSpResume
		sp = math.min ( mxsp , sp + srec ) 
		hp = math.min ( mxhp , hp + hrec ) 
		SetCharaAttr ( hp , role , ATTR_HP ) 
		SetCharaAttr ( sp , role , ATTR_SP ) 
	end 
end 
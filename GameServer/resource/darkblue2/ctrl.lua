-- Настройка свойств карты Хаос Ледыни (darkblue2)
-- Имя функции должно заканчиваться названием карты

function config(map)
    MapCanSavePos(map, 0) 					-- Возможность сохранять позицию персонажа на карте (1 - да, 0 - нет)
    MapCanPK(map, 1) 						-- Возможность атаковать других персонажей (1 - да, 0 - нет)
    MapCanTeam( map, 0 )					-- Возможность создавать отряды (1 - да, 0 - нет)
    MapCopyNum(map, 1) 						-- Количество копий карты (если параметр отсутствует, принимается равным 1)
    SingleMapCopyPlyNum(map, 300)  			-- Количество игроков на карте
    MapType ( map , 3 )						-- Тип карты
    MapCanStall(map , 0)					-- Возможность ставить лотки (1 - да, 0 - нет)
end


function get_map_entry_pos_darkblue2()	

	local POS_X=2671
	local POS_Y=648
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "darkblue")	-- Карта, на которой установлена точка входа на эту карту
											-- Установка времени работы карты
											-- 2010/01/01/5/0 (год/месяц/день/часы/минуты) - время начала работы карты
											-- 0/1/0  (день/час/минута) - время открытия портала (открываем ежечасно)
											-- 0/0/30 (день/час/минута) - время работы портала (портал работает 30 минут)
											-- 0/0/55 (день/час/минута) - время работы карты (карта работает 55 минут)
    SetMapEntryTime(map, "2006/10/18/8/0", "0/6/0", "0/0/30", "0/0/45") 
end

function after_enter_darkblue2( role , map_copy )
end

function before_leave_darkblue2( role )
end

function map_copy_run_special_darkblue2( map_copy ) 
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("\194 [\213\224\238\241\229 \203\229\228\251\237\229] "..HowManyNoDead.." \226\251\230\232\226\248\232\245 ")
	--Notice("В [Хаосе Ледыне] "..HowManyNoDead.." выживших ")
	Every_5_minute_darkblue = Every_5_minute_darkblue+1
	if Every_5_minute_darkblue == 2 then 
		local Monster2 = CreateChaEx(1173, 7466, 11771, 145, 60,map_copy)
		local Monster3 = CreateChaEx(1173, 6761, 13062, 145, 60,map_copy)
		local Monster4 = CreateChaEx(1173, 10820, 24989, 145, 60,map_copy)
		local Monster5 = CreateChaEx(1173, 14673, 20803, 145, 60,map_copy)
		local Monster6 = CreateChaEx(1173, 12311, 16188, 145, 60,map_copy)
		local Monster7 = CreateChaEx(1173, 12015, 13994, 145, 60,map_copy)
		local Monster8 = CreateChaEx(1173, 12380, 12324, 145, 60,map_copy)
		local Monster9 = CreateChaEx(1173, 14339, 12947, 145, 60,map_copy)
		local Monster10 = CreateChaEx(1173, 18442, 12863, 145, 60,map_copy)
		local Monster11 = CreateChaEx(1173, 18791, 7534, 145, 60,map_copy)
		local Monster12 = CreateChaEx(1173, 14373, 7541, 145, 60,map_copy)
		local Monster13 = CreateChaEx(1173, 10186, 6273, 145, 60,map_copy)
		local Monster14 = CreateChaEx(1173, 10043, 9649, 145, 60,map_copy)
		local Monster15 = CreateChaEx(1173, 17186, 3343, 145, 60,map_copy)
		SetChaLifeTime(Monster2,299050)
		SetChaLifeTime(Monster3,299100)
		SetChaLifeTime(Monster4,299150)
		SetChaLifeTime(Monster5,299200)
		SetChaLifeTime(Monster6,299250)
		SetChaLifeTime(Monster7,299300)
		SetChaLifeTime(Monster8,299350)
		SetChaLifeTime(Monster9,299400)
		SetChaLifeTime(Monster10,299450)
		SetChaLifeTime(Monster11,299500)
		SetChaLifeTime(Monster12,299550)
		SetChaLifeTime(Monster13,299600)
		SetChaLifeTime(Monster14,299650)
		SetChaLifeTime(Monster15,299700)

	end
	if Every_5_minute_darkblue == 3 then 
		local Monster16 = CreateChaEx(1174, 11339, 24276, 145, 60,map_copy)
		local Monster17 = CreateChaEx(1174, 13812, 18439, 145, 60,map_copy)
		local Monster18 = CreateChaEx(1174, 15189, 6218, 145, 60,map_copy)
		local Monster19 = CreateChaEx(1174, 16393, 12239, 145, 60,map_copy)
		local Monster20 = CreateChaEx(1174, 14895, 13905, 145, 60,map_copy)
		local Monster21 = CreateChaEx(1174, 12824, 12767, 145, 60,map_copy)
		local Monster22 = CreateChaEx(1174, 10154, 11890, 145, 60,map_copy)
		SetChaLifeTime(Monster16, 299050)
		SetChaLifeTime(Monster17, 299100)
		SetChaLifeTime(Monster18, 299150)
		SetChaLifeTime(Monster19, 299200)
		SetChaLifeTime(Monster20, 299250)
		SetChaLifeTime(Monster21, 299300)
		SetChaLifeTime(Monster22, 299350)

	end
	if Every_5_minute_darkblue == 4 then 
		local Monster23 = CreateChaEx(1175, 12167, 25665, 145, 60,map_copy)
		local Monster24 = CreateChaEx(1175, 13564, 23189, 145, 60,map_copy)
		local Monster25 = CreateChaEx(1175, 18274, 13329, 145, 60,map_copy)
		local Monster26 = CreateChaEx(1175, 19167, 9778, 145, 60,map_copy)
		local Monster27 = CreateChaEx(1175, 14915, 14352, 145, 60,map_copy)
		local Monster28 = CreateChaEx(1175, 13881, 9818, 145, 60,map_copy)
		local Monster29 = CreateChaEx(1175, 10854, 11740, 145, 60,map_copy)
		SetChaLifeTime(Monster23, 299050)
		SetChaLifeTime(Monster24, 299100)
		SetChaLifeTime(Monster25, 299150)
		SetChaLifeTime(Monster26, 299200)
		SetChaLifeTime(Monster27, 299250)
		SetChaLifeTime(Monster28, 299300)
		SetChaLifeTime(Monster29, 299350)

	end
	if Every_5_minute_darkblue == 5 then 
		local Monster30 = CreateChaEx(875, 10785, 24073, 145, 60,map_copy)
		local Monster31 = CreateChaEx(872, 13477, 22976, 145, 60,map_copy)
		local Monster32 = CreateChaEx(868, 14639, 15668, 145, 60,map_copy)
		local Monster33 = CreateChaEx(872, 13318, 16448, 145, 60,map_copy)
		local Monster34 = CreateChaEx(879, 12347, 15640, 145, 60,map_copy)
		local Monster35 = CreateChaEx(872, 13948, 13970, 145, 60,map_copy)
		local Monster36 = CreateChaEx(875, 15914, 12813, 145, 60,map_copy)
		local Monster37 = CreateChaEx(868, 18943, 10871, 145, 60,map_copy)
		local Monster38 = CreateChaEx(868, 18963, 8391, 145, 60,map_copy)
		local Monster39 = CreateChaEx(868, 16101, 6381, 145, 60,map_copy)
		local Monster40 = CreateChaEx(879, 15389, 6087, 145, 60,map_copy)
		local Monster41 = CreateChaEx(879, 15126, 6725, 145, 60,map_copy)
		local Monster42 = CreateChaEx(875, 14694, 7473, 145, 60,map_copy)
		local Monster43 = CreateChaEx(875, 14046, 10079, 145, 60,map_copy)
		local Monster44 = CreateChaEx(872, 13561, 9940, 145, 60,map_copy)
		local Monster45 = CreateChaEx(879, 12202, 10924, 145, 60,map_copy)
		local Monster46 = CreateChaEx(875, 11824, 10620, 145, 60,map_copy)
		local Monster47 = CreateChaEx(875, 11026, 11515, 145, 60,map_copy)
		local Monster48 = CreateChaEx(868, 9987, 11359, 145, 60,map_copy)
		local Monster49 = CreateChaEx(868, 10050, 10309, 145, 60,map_copy)
		local Monster50 = CreateChaEx(868, 10009, 8176, 145, 60,map_copy)
		local Monster51 = CreateChaEx(868, 12256, 6305, 145, 60,map_copy)
		SetChaLifeTime(Monster30,298050)
		SetChaLifeTime(Monster31,298100)
		SetChaLifeTime(Monster32,298150)
		SetChaLifeTime(Monster33,298200)
		SetChaLifeTime(Monster34,298250)
		SetChaLifeTime(Monster35,298300)
		SetChaLifeTime(Monster36,298350)
		SetChaLifeTime(Monster37,298400)
		SetChaLifeTime(Monster38,298450)
		SetChaLifeTime(Monster39,298500)
		SetChaLifeTime(Monster40,298550)
		SetChaLifeTime(Monster41,298600)
		SetChaLifeTime(Monster42,298650)
		SetChaLifeTime(Monster43,298700)
		SetChaLifeTime(Monster44,298750)
		SetChaLifeTime(Monster45,298800)
		SetChaLifeTime(Monster46,2910780)
		SetChaLifeTime(Monster47,298900)
		SetChaLifeTime(Monster48,298950)
		SetChaLifeTime(Monster49,299000)
		SetChaLifeTime(Monster50,299050)
		SetChaLifeTime(Monster51,299100)

	end
	if Every_5_minute_darkblue == 6 then 
		local Monster52 = CreateChaEx(1176, 6383, 3326, 130, 60,map_copy)
		local Monster53 = CreateChaEx(1176, 6760, 5283, 310, 60,map_copy)
		local Monster54 = CreateChaEx(1778, 5985, 6834, 85, 60,map_copy)
		local Monster55 = CreateChaEx(1778, 7022, 8707, 70, 60,map_copy)
		local Monster56 = CreateChaEx(1176, 7976, 9655, 280, 60,map_copy)
		local Monster57 = CreateChaEx(1176, 6933, 12327, 280, 60,map_copy)
		local Monster58 = CreateChaEx(1176, 6095, 15473, 55, 60,map_copy)
		local Monster59 = CreateChaEx(1176, 8774, 13019, 145, 60,map_copy)
		local Monster60 = CreateChaEx(1778, 9894, 12745, 175, 60,map_copy)
		local Monster61 = CreateChaEx(1179, 10279, 13445, 310, 60,map_copy)
		local Monster62 = CreateChaEx(1179, 13154, 21932, 145, 60,map_copy)
		local Monster63 = CreateChaEx(1180, 13979, 24290, 280, 60,map_copy)
		local Monster64 = CreateChaEx(1179, 12066, 25739, 10, 60,map_copy)
		local Monster65 = CreateChaEx(1176, 10475, 24473, 115, 60,map_copy)
		local Monster66 = CreateChaEx(1778, 11915, 22670, 145, 60,map_copy)
		local Monster67 = CreateChaEx(1180, 13946, 22903, 265, 60,map_copy)
		local Monster68 = CreateChaEx(1177, 13144, 20195, 100, 60,map_copy)
		local Monster69 = CreateChaEx(1180, 13908, 18644, 235, 60,map_copy)
		local Monster70 = CreateChaEx(1179, 13055, 18537, 85, 60,map_copy)
		local Monster71 = CreateChaEx(1180, 14496, 16124, 280, 60,map_copy)
		local Monster72 = CreateChaEx(1177, 14689, 15746, 340, 60,map_copy)
		local Monster73 = CreateChaEx(1179, 11936, 16302, 70, 60,map_copy)
		local Monster74 = CreateChaEx(1180, 13456, 13442, 340, 60,map_copy)
		local Monster75 = CreateChaEx(1179, 16310, 12095, 220, 60,map_copy)
		local Monster76 = CreateChaEx(1180, 18525, 13386, 325, 60,map_copy)
		local Monster77 = CreateChaEx(1177, 18688, 11302, 175, 60,map_copy)
		local Monster78 = CreateChaEx(1778, 19509, 10124, 160, 60,map_copy)
		local Monster79 = CreateChaEx(1180, 19458, 9739, 205, 60,map_copy)
		local Monster80 = CreateChaEx(1179, 18724, 7861, 175, 60,map_copy)
		local Monster81 = CreateChaEx(1778, 17617, 5696, 175, 60,map_copy)
		local Monster82 = CreateChaEx(1180, 17042, 6149, 145, 60,map_copy)
		local Monster83 = CreateChaEx(1179, 16166, 6177, 190, 60,map_copy)
		local Monster84 = CreateChaEx(879, 19034, 3793, 145, 60,map_copy)
		local Monster85 = CreateChaEx(1778, 16762, 3079, 145, 60,map_copy)
		local Monster86 = CreateChaEx(1177, 15763, 3315, 145, 60,map_copy)
		local Monster87 = CreateChaEx(1180, 15786, 3892, 145, 60,map_copy)
		local Monster88 = CreateChaEx(1179, 14734, 4920, 145, 60,map_copy)
		local Monster89 = CreateChaEx(1180, 12945, 6454, 145, 60,map_copy)
		local Monster90 = CreateChaEx(1177, 12909, 6129, 145, 60,map_copy)
		local Monster91 = CreateChaEx(1778, 11697, 6337, 145, 60,map_copy)
		local Monster92 = CreateChaEx(1180, 11130, 6266, 145, 60,map_copy)
		local Monster93 = CreateChaEx(1778, 10087, 6876, 145, 60,map_copy)
			SetChaLifeTime(Monster52,297050)
			SetChaLifeTime(Monster53,297100)
			SetChaLifeTime(Monster54,297150)
			SetChaLifeTime(Monster55,297200)
			SetChaLifeTime(Monster56,297250)
			SetChaLifeTime(Monster57,297300)
			SetChaLifeTime(Monster58,297350)
			SetChaLifeTime(Monster59,297400)
			SetChaLifeTime(Monster60,297450)
			SetChaLifeTime(Monster61,297500)
			SetChaLifeTime(Monster62,297550)
			SetChaLifeTime(Monster63,297600)
			SetChaLifeTime(Monster64,297650)
			SetChaLifeTime(Monster65,297700)
			SetChaLifeTime(Monster66,297750)
			SetChaLifeTime(Monster67,297800)
			SetChaLifeTime(Monster68,297850)
			SetChaLifeTime(Monster69,297900)
			SetChaLifeTime(Monster70,297950)
			SetChaLifeTime(Monster71,298000)
			SetChaLifeTime(Monster72,298050)
			SetChaLifeTime(Monster73,298100)
			SetChaLifeTime(Monster74,298150)
			SetChaLifeTime(Monster75,298200)
			SetChaLifeTime(Monster76,298250)
			SetChaLifeTime(Monster77,298300)
			SetChaLifeTime(Monster78,298350)
			SetChaLifeTime(Monster79,298400)
			SetChaLifeTime(Monster80,298450)
			SetChaLifeTime(Monster81,298500)
			SetChaLifeTime(Monster82,298550)
			SetChaLifeTime(Monster83,298600)
			SetChaLifeTime(Monster84,298650)
			SetChaLifeTime(Monster85,298700)
			SetChaLifeTime(Monster86,298750)
			SetChaLifeTime(Monster87,298800)
			SetChaLifeTime(Monster88,2910780)
			SetChaLifeTime(Monster89,298900)
			SetChaLifeTime(Monster90,298950)
			SetChaLifeTime(Monster91,299000)
			SetChaLifeTime(Monster92,299050)
			SetChaLifeTime(Monster93,299100)

	end
	if Every_5_minute_darkblue == 7 then
		local Monster94 = CreateChaEx(1182, 8103, 15758, 145, 60,map_copy)
		local Monster95 = CreateChaEx(1185, 6366, 16072, 145, 60,map_copy)
		local Monster96 = CreateChaEx(1184, 6158, 14021, 145, 60,map_copy)
		local Monster97 = CreateChaEx(1185, 6462, 13205, 145, 60,map_copy)
		local Monster98 = CreateChaEx(1183, 18456, 3689, 145, 60,map_copy)
		local Monster99 = CreateChaEx(1182, 17992, 3613, 145, 60,map_copy)
		local Monster100 = CreateChaEx(1185, 15235, 3295, 145, 60,map_copy)
		local Monster101 = CreateChaEx(1183, 11944, 3601, 145, 60,map_copy)
		local Monster102 = CreateChaEx(1182, 12378, 3349, 145, 60,map_copy)
		local Monster103 = CreateChaEx(1185, 11528, 2721, 145, 60,map_copy)
		local Monster104 = CreateChaEx(1182, 9531, 2727, 145, 60,map_copy)
		local Monster105 = CreateChaEx(1183, 8534, 3308, 145, 60,map_copy)
		local Monster106 = CreateChaEx(1184, 7543, 3164, 145, 60,map_copy)
		local Monster107 = CreateChaEx(1185, 6487, 3343, 145, 60,map_copy)
		local Monster108 = CreateChaEx(1185, 7192, 4128, 145, 60,map_copy)
		local Monster109 = CreateChaEx(1182, 6677, 4895, 145, 60,map_copy)
		local Monster110 = CreateChaEx(1184, 6567, 5679, 145, 60,map_copy)
		local Monster111 = CreateChaEx(1182, 6701, 6500, 145, 60,map_copy)
		local Monster112 = CreateChaEx(1182, 6369, 6949, 145, 60,map_copy)
		local Monster113 = CreateChaEx(1184, 6994, 8064, 145, 60,map_copy)
		local Monster114 = CreateChaEx(1185, 6505, 8494, 145, 60,map_copy)
		local Monster115 = CreateChaEx(1183, 6536, 8923, 145, 60,map_copy)
		local Monster116 = CreateChaEx(1182, 6288, 10738, 145, 60,map_copy)
		local Monster117 = CreateChaEx(1185, 5901, 12142, 145, 60,map_copy)
		local Monster118 = CreateChaEx(1182, 13579, 25098, 145, 60,map_copy)
		local Monster119 = CreateChaEx(1185, 12103, 25146, 145, 60,map_copy)
		local Monster120 = CreateChaEx(1185, 12122, 24854, 145, 60,map_copy)
		local Monster121 = CreateChaEx(1182, 11116, 24702, 145, 60,map_copy)
		local Monster122 = CreateChaEx(1185, 10579, 24343, 145, 60,map_copy)
		local Monster123 = CreateChaEx(1185, 10968, 23507, 145, 60,map_copy)
		local Monster124 = CreateChaEx(1183, 13141, 22546, 145, 60,map_copy)
		local Monster125 = CreateChaEx(1184, 13778, 22539, 145, 60,map_copy)
		local Monster126 = CreateChaEx(1185, 13259, 21845, 145, 60,map_copy)
		local Monster127 = CreateChaEx(1183, 14899, 20929, 145, 60,map_copy)
		local Monster128 = CreateChaEx(1185, 14973, 20419, 145, 60,map_copy)
		local Monster129 = CreateChaEx(1182, 13247, 19932, 145, 60,map_copy)
		local Monster130 = CreateChaEx(1185, 13892, 19399, 145, 60,map_copy)
		local Monster131 = CreateChaEx(1185, 13283, 17519, 145, 60,map_copy)
		local Monster132 = CreateChaEx(1183, 18412, 20105, 145, 60,map_copy)
		local Monster133 = CreateChaEx(1185, 22194, 18012, 145, 60,map_copy)
		local Monster134 = CreateChaEx(1182, 21710, 17182, 145, 60,map_copy)
		local Monster135 = CreateChaEx(1183, 20408, 17788, 145, 60,map_copy)
		local Monster136 = CreateChaEx(1185, 20461, 17339, 145, 60,map_copy)
		local Monster137 = CreateChaEx(1185, 19457, 17817, 145, 60,map_copy)
		local Monster138 = CreateChaEx(1185, 16343, 15573, 145, 60,map_copy)
		local Monster139 = CreateChaEx(1182, 14078, 15726, 145, 60,map_copy)
		local Monster140 = CreateChaEx(1185, 12363, 15855, 145, 60,map_copy)
		local Monster141 = CreateChaEx(1185, 11589, 13429, 145, 60,map_copy)
		local Monster142 = CreateChaEx(1183, 11113, 13869, 145, 60,map_copy)
		local Monster143 = CreateChaEx(1185, 10902, 14335, 145, 60,map_copy)
		local Monster144 = CreateChaEx(1185, 9309, 12935, 145, 60,map_copy)
		local Monster145 = CreateChaEx(1185, 12534, 11209, 145, 60,map_copy)
		local Monster146 = CreateChaEx(1183, 12515, 13202, 145, 60,map_copy)
		local Monster147 = CreateChaEx(1185, 14479, 14079, 145, 60,map_copy)
		local Monster148 = CreateChaEx(1183, 16426, 11297, 145, 60,map_copy)
		local Monster149 = CreateChaEx(1184, 16757, 12339, 145, 60,map_copy)
		local Monster150 = CreateChaEx(1185, 17115, 12436, 145, 60,map_copy)
		local Monster151 = CreateChaEx(1185, 18473, 12565, 145, 60,map_copy)
		local Monster152 = CreateChaEx(1185, 20540, 11384, 145, 60,map_copy)
		local Monster153 = CreateChaEx(1185, 20235, 10866, 145, 60,map_copy)
		local Monster154 = CreateChaEx(1183, 20390, 9764, 145, 60,map_copy)
		local Monster155 = CreateChaEx(1185, 19487, 9642, 145, 60,map_copy)
		local Monster156 = CreateChaEx(1185, 19063, 7981, 145, 60,map_copy)
		local Monster157 = CreateChaEx(1183, 110766, 7827, 145, 60,map_copy)
		local Monster158 = CreateChaEx(1185, 19026, 6331, 145, 60,map_copy)
		local Monster159 = CreateChaEx(1185, 18459, 5518, 145, 60,map_copy)
		local Monster160 = CreateChaEx(1182, 17781, 6160, 145, 60,map_copy)
		local Monster161 = CreateChaEx(1185, 15146, 5255, 145, 60,map_copy)
		local Monster162 = CreateChaEx(1185, 15722, 6195, 145, 60,map_copy)
		local Monster163 = CreateChaEx(1185, 15088, 6729, 145, 60,map_copy)
		local Monster164 = CreateChaEx(1183, 15116, 7447, 145, 60,map_copy)
		local Monster165 = CreateChaEx(1185, 12657, 8012, 145, 60,map_copy)
		local Monster166 = CreateChaEx(1183, 11770, 6209, 145, 60,map_copy)
		local Monster167 = CreateChaEx(1182, 10394, 6937, 145, 60,map_copy)
			SetChaLifeTime(Monster94,296050)
			SetChaLifeTime(Monster95,296100)
			SetChaLifeTime(Monster96,296150)
			SetChaLifeTime(Monster97,296200)
			SetChaLifeTime(Monster98,296250)
			SetChaLifeTime(Monster99,296300)
			SetChaLifeTime(Monster100,296350)
			SetChaLifeTime(Monster101,296400)
			SetChaLifeTime(Monster102,296450)
			SetChaLifeTime(Monster103,296500)
			SetChaLifeTime(Monster104,296550)
			SetChaLifeTime(Monster105,296600)
			SetChaLifeTime(Monster106,296650)
			SetChaLifeTime(Monster107,296700)
			SetChaLifeTime(Monster108,296750)
			SetChaLifeTime(Monster109,296800)
			SetChaLifeTime(Monster110,296850)
			SetChaLifeTime(Monster111,296900)
			SetChaLifeTime(Monster112,296950)
			SetChaLifeTime(Monster113,297000)
			SetChaLifeTime(Monster114,297050)
			SetChaLifeTime(Monster115,297100)
			SetChaLifeTime(Monster116,297150)
			SetChaLifeTime(Monster117,297200)
			SetChaLifeTime(Monster118,297250)
			SetChaLifeTime(Monster119,297300)
			SetChaLifeTime(Monster120,297350)
			SetChaLifeTime(Monster121,297400)
			SetChaLifeTime(Monster122,297450)
			SetChaLifeTime(Monster123,297500)
			SetChaLifeTime(Monster124,297550)
			SetChaLifeTime(Monster125,297600)
			SetChaLifeTime(Monster126,297650)
			SetChaLifeTime(Monster127,297700)
			SetChaLifeTime(Monster128,297750)
			SetChaLifeTime(Monster129,297800)
			SetChaLifeTime(Monster130,297850)
			SetChaLifeTime(Monster131,297900)
			SetChaLifeTime(Monster132,297950)
			SetChaLifeTime(Monster133,298000)
			SetChaLifeTime(Monster134,298050)
			SetChaLifeTime(Monster135,298100)
			SetChaLifeTime(Monster136,298150)
			SetChaLifeTime(Monster137,298200)
			SetChaLifeTime(Monster138,298250)
			SetChaLifeTime(Monster139,298300)
			SetChaLifeTime(Monster140,298350)
			SetChaLifeTime(Monster141,298400)
			SetChaLifeTime(Monster142,298450)
			SetChaLifeTime(Monster143,298500)
			SetChaLifeTime(Monster144,298550)
			SetChaLifeTime(Monster145,298600)
			SetChaLifeTime(Monster146,298650)
			SetChaLifeTime(Monster147,298700)
			SetChaLifeTime(Monster148,298750)
			SetChaLifeTime(Monster149,298800)
			SetChaLifeTime(Monster150,2910780)
			SetChaLifeTime(Monster151,298900)
			SetChaLifeTime(Monster152,298950)
			SetChaLifeTime(Monster153,299000)
			SetChaLifeTime(Monster154,299050)
			SetChaLifeTime(Monster155,299100)
			SetChaLifeTime(Monster156,299150)
			SetChaLifeTime(Monster157,299200)
			SetChaLifeTime(Monster158,299250)
			SetChaLifeTime(Monster159,299300)
			SetChaLifeTime(Monster160,299350)
			SetChaLifeTime(Monster161,299400)
			SetChaLifeTime(Monster162,299450)
			SetChaLifeTime(Monster163,299500)
			SetChaLifeTime(Monster164,299550)
			SetChaLifeTime(Monster165,299600)
			SetChaLifeTime(Monster166,299650)
			SetChaLifeTime(Monster167,299700)

	end
end

function map_run_darkblue2( map )
	
end


function map_copy_before_close_darkblue2( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem")
	end
	How_Many_Active = 0
	Money_all = 3000000
	Every_5_minute_darkblue = 0
end
function map_copy_close_darkblue2( map_copy )
	ClearAllSubMapCha(map_copy)
end

function can_open_entry_darkblue2( map ) 
	local Now_Time = GetNowTime()
	if Now_Time ==14 or Now_Time == 20 then
		return 1
	else
		return 1
	end

end 

function GiveSpecItem( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_darkblue2 = Money_all/How_Many_Active

	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_darkblue2 )
		return
	end

	if How_Many_Active <  6 and How_Many_Active > 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1031  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1031  , 1 , 4 )
		end
			 
		AddMoney ( role , 0 , Money_darkblue2 )
					
		local message = "\207\238\231\228\240\224\226\235\255\229\236, "..cha_name.." \239\238\235\243\247\232\235 ".. Money_darkblue2 .." \231\238\235\238\242\224 \232 1 \221\236\225\235\229\236\243 \202\238\240\238\235\255 \208\232\237\227\224 "
		--local message = "Поздравляем, "..cha_name.." получил ".. Money_darkblue2 .." золота и 1 Эмблему Короля Ринга "
		SystemNotice(role,message)
		return
	end
	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1032  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1032  , 1 , 4 )
		end
		AddMoney ( role , 0 , Money_darkblue2 )
		local cha_name = GetChaDefaultName ( role )
		local message = "\207\238\231\228\240\224\226\235\255\229\236, "..cha_name.." \239\238\235\243\247\232\235 ".. Money_darkblue2 .." \231\238\235\238\242\224 \232 1 \221\236\225\235\229\236\243 \202\238\240\238\235\255 \208\232\237\227\224 "
		--local message = "Поздравляем, "..cha_name.." получил ".. Money_darkblue2 .." золота и 1 Эмблему Короля Ринга "
		SystemNotice(role,message)
		return
	end
end 
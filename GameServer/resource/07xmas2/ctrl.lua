-- Настройка функций карты 07xmas2 (Снежная война)
-- Имя функции должно заканчиваться названием карты
-- Автор: Larein [MD Piratia Team]

function config(map)
    MapCanSavePos(map, 0) 					-- Возможность сохранять позицию персонажа на карте (1 - да, 0 - нет)
    MapCanPK(map, 1) 						-- Возможность атаковать других персонажей (1 - да, 0 - нет)
    MapCanTeam( map, 1 )					-- Возможность создавать отряды (1 - да, 0 - нет)
    MapCopyNum(map, 1) 						-- Количество копий карты (если параметр отсутствует, принимается равным 1)
    SingleMapCopyPlyNum(map, 300)  			-- Количество игроков на карте
    MapType ( map , 2 )						-- Тип карты
    MapCanStall(map , 0)					-- Возможность торговать (1 - да, 0 - нет)
    RepatriateDie(map,0)					-- Возможность воскрешать персонажа (1 - да, 0 - нет) (протестировать!)
end

function get_map_entry_pos_07xmas2()   		-- Расположение точки входа (координаты)
	local POS_X=797
	local POS_Y=3644
		return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "magicsea")		-- Карта, на которой установлена точка входа на эту карту
											-- Установка времени работы карты
											-- 2010/01/01/5/0 (год/месяц/день/часы/минуты) - время начала работы карты
											-- 0/1/0  (день/час/минута) - время открытия портала (открываем ежечасно)
											-- 0/0/30 (день/час/минута) - время работы портала (портал работает 30 минут)
											-- 0/0/55 (день/час/минута) - время работы карты (карта работает 55 минут)
    SetMapEntryTime(map, "2010/01/01/5/0", "0/1/0", "0/0/30", "0/0/55") 
end

function after_enter_07xmas2( role , map_copy )
end

function before_leave_07xmas2( role )
end

-- Функция выполняется в течении всего времени работы карты
function map_copy_run_special_07xmas2( map_copy ) 

	-- Массив с координатами точек появления сундуков и монстров
	local position = {}
		position[1]={29,37} 
		position[2]={34,54} 
		position[3]={53,53} 
		position[4]={90,40} 
		position[5]={90,70} 
		position[6]={92,87} 
		position[7]={53,82} 
		position[8]={29,93} 
		position[9]={22,116} 
		position[10]={33,30} 
		position[11]={26,187} 
		position[12]={34,207} 
		position[13]={28,245} 
		position[14]={51,259} 
		position[15]={64,223} 
		position[16]={71,206} 
		position[17]={80,231} 
		position[18]={85,252} 
		position[19]={136,254} 
		position[20]={112,260} 
		position[21]={57,221} 
		position[22]={114,60} 
		position[23]={108,249} 
		position[24]={122,262} 
		position[25]={128,243} 
		position[26]={142,241} 
		position[27]={156,259} 
		position[28]={170,240} 
		position[29]={183,256} 
		position[31]={207,259} 
		position[32]={187,249} 
		position[33]={210,237} 
		position[34]={187,201} 
		position[35]={214,213} 
		position[36]={199,219} 
		position[37]={223,237} 
		position[38]={254,239} 
		position[39]={235,248} 
		position[40]={233,204} 
		position[41]={253,224} 
		position[42]={261,203} 
		position[43]={255,190} 
		position[44]={267,173} 
		position[45]={252,171} 
		position[46]={268,159} 
		position[47]={98,260} 
		position[48]={87,44} 
		position[49]={78,38} 
		position[50]={104,67} 
		position[51]={255,147} 
		position[52]={266,125} 
		position[53]={252,117} 
		position[54]={264,105} 
		position[55]={247,94} 
		position[56]={261,89} 
		position[57]={240,85} 
		position[58]={255,68} 
		position[59]={246,54} 
		position[60]={255,44} 
		position[61]={237,26} 
		position[62]={228,61} 
		position[63]={217,69} 
		position[64]={214,82} 
		position[65]={203,83} 
		position[66]={191,90} 
		position[67]={186,72} 
		position[68]={186,57} 
		position[69]={176,63} 
		position[70]={222,212} 
		position[71]={183,247} 
		position[72]={168,245} 
		position[73]={62,240} 
		position[74]={28,56} 
		position[75]={100,49} 
		position[76]={41,218} 
		position[77]={24,209} 
		position[78]={20,183} 
		position[79]={35,175} 
		position[80]={33,161} 
		position[81]={21,159} 
		position[82]={22,146} 
		position[83]={35,135} 
		position[84]={19,126} 
		position[85]={33,117} 
		position[86]={18,113} 
		position[87]={27,100} 
		position[88]={45,100} 
		position[89]={71,99} 
		position[90]={91,88} 
		position[91]={79,82} 
		position[92]={75,72} 
		position[93]={56,68} 
		position[94]={38,69} 
		position[95]={28,82} 
		position[96]={56,29} 
		position[97]={88,44} 
		position[98]={102,81} 
		position[99]={116,66} 
		position[100]={120,61} 
		position[101]={128,68} 
		position[102]={139,67} 
		position[103]={151,67} 
		position[104]={161,62} 
		position[105]={167,68} 
		position[106]={171,62} 
		position[107]={141,224} 
		position[108]={143,215} 
		position[109]={142,212} 
		position[110]={145,204} 
		position[111]={141,197} 
		position[112]={147,189} 
		position[113]={144,181} 
		position[114]={138,173} 
		position[115]={149,171} 
		position[116]={152,164} 
		position[117]={161,163} 
		position[118]={134,167} 
		position[119]={126,161} 
		position[120]={124,154} 
		position[121]={119,149} 
		position[122]={131,151} 
		position[123]={141,148} 
		position[124]={145,157} 
		position[125]={153,147} 
		position[126]={157,135} 
		position[127]={139,131} 
		position[128]={135,125} 
		position[129]={147,121} 
		position[130]={140,117} 
		position[131]={144,114} 
		position[132]={140,108} 
		position[133]={146,102} 
		position[134]={139,98} 
		position[135]={144,94} 
		position[136]={148,86} 
		position[137]={142,81} 
		position[138]={139,77} 
		position[139]={147,78} 
		position[140]={144,75} 
		position[141]={144,70} 
		position[142]={135,156} 
		position[143]={141,149} 
		position[144]={154,148} 
		position[145]={215,223} 
		position[146]={233,228} 
		position[147]={238,240} 
		position[148]={262,224} 
		position[149]={198,210} 
		position[150]={102,251} 

	local Now_Time = tonumber(os.date("%H"))

	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("\206\225\250\255\226\235\229\237\232\229: \194 \209\237\229\230\237\238\233 \226\238\233\237\229 \226\241\229 \229\249\229 \229\241\242\252 \226\251\230\232\226\248\232\229: "..HowManyNoDead.." \232\227\240\238\234(\232)")
		--Notice("Объявление: В Снежной войне все еще есть выжившие: "..HowManyNoDead.." игрок(и)")

	-- Волны, информация частично взята тут http://www.piratia.ru/showthread.php?t=24875
	-- частично прислали (скрины, видео), частично рассказали

	Every_5_minute = Every_5_minute+1

-- ПЕРВАЯ ВОЛНА (5 мин)
	if Every_5_minute == 1 then			-- 15 честов (5 нач. лвл, 5 ср. лвл и 5 выс. лвл)

		--Сундук Хаоса нач. ур. (ID 859)
		for i = 1 , 5 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(859, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster , 298050)
			Notice("\209\243\237\228\243\234 "..i.." \237\224\245\238\228\232\242\241\255 \239\238 \234\238\238\240\228\232\237\224\242\224\236: "..x..","..y)
				--Notice("Сундук "..i.." находится по координатам: "..x..","..y)
		end

		--Стандартный сундук Хаоса (ID 860)
		for i = 1 , 5 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(860, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Сундук Хаоса выс. ур. (ID 861)
		for i = 1 , 5 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(861, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

	end
	
	-- ВТОРАЯ ВОЛНА (10 мин)
	if Every_5_minute == 2 then			-- 20 честов (12 нач. лвл, 4 ср. лвл и 4 выс. лвл) и простые монстры 

		--Сундук Хаоса нач. ур. (ID 859)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(859, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster , 298050)
		end

		--Стандартный сундук Хаоса (ID 860)
		for i = 1 , 4 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(860, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Сундук Хаоса выс. ур. (ID 861)
		for i = 1 , 4 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(861, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Ланс - Новичок (ID 1140)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1140, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Карциз - Новичок (ID 1144)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1144, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Филлис - Новичок (ID 1147)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1147, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Ами - Новичок (ID 1151)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1151, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

	end

-- ТРЕТЬЯ ВОЛНА (15 мин)
	if Every_5_minute == 3 then			-- 20 честов (12 нач. лвл, 4 ср. лвл и 4 выс. лвл) и простые монстры 

		--Сундук Хаоса нач. ур. (ID 859)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(859, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end
 
		--Стандартный сундук Хаоса (ID 860)
		for i = 1 , 4 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(860, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Сундук Хаоса выс. ур. (ID 861)
		for i = 1 , 4 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(861, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end


		--Ланс - Новичок (ID 1140)
		for i = 1 , 16 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1140, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Карциз - Новичок (ID 1144)
		for i = 1 , 16 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1144, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Филлис - Новичок (ID 1147)
		for i = 1 , 16 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1147, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Ами - Новичок (ID 1151)
		for i = 1 , 16 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1151, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

	end
	
	-- ЧЕТВЕРТАЯ ВОЛНА (20 мин)
	if Every_5_minute == 4 then			-- средние монстры

		--Ланс - Охотник (ID 1141)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1141, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Карциз - Мечник  (ID 1145)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1145, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Филлис - Мореплаватель (ID 1148)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1148, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Ами - Целительница (ID 1152)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1152, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

	end

-- ПЯТАЯ ВОЛНА (25 мин)
	if Every_5_minute == 5 then			-- средние монстры

		--Ланс - Воитель (ID 1142)
		for i = 1 , 15 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1142, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Ланс - Покоритель (ID 1143)
		for i = 1 , 15 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1143, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Карциз - Чемпион (ID 1146)
		for i = 1 , 15 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1146, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Филлис - Стрелок (ID 1149)
		for i = 1 , 15 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1149, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Филлис - Целительница (ID 1150)
		for i = 1 , 15 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1150, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Ами - Колдунья (ID 1153)
		for i = 1 , 15 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1153, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

	end

-- ШЕСТАЯ ВОЛНА (30 мин)
	if Every_5_minute == 6 then			-- сильные монстры

		--Ланс - Черный Войн (ID 1155)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1155, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Карциз - Черный Войн (ID 1156)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1156, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Филлис - Черный Войн (ID 1157)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1157, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Ами - Черный Войн (ID 1158)
		for i = 1 , 12 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1158, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

	end
	
-- СЕДЬМАЯ ВОЛНА (35 мин)
	if Every_5_minute == 7 then			-- сильные монстры

		--Ланс - Черный Войн (ID 1155)
		for i = 1 , 18 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1155, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Карциз - Черный Войн (ID 1156)
		for i = 1 , 18 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1156, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Филлис - Черный Войн (ID 1157)
		for i = 1 , 18 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1157, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

		--Ами - Черный Войн (ID 1158)
		for i = 1 , 18 , 1 do 
			local temp = math.random(1,150)
			local angle = math.random(1,360)
			local x, y = GetMonsterPosition(position[temp])
			local Monster = CreateChaEx(1158, x,  y, angle , 60, map_copy)
	            SetChaLifeTime(Monster, 298050)
		end

	end	

-- ВОСЬМАЯ ВОЛНА (40 мин)
	if Every_5_minute == 8 then			-- боссы

		-- Если игроков меньше 10, вызывается уникальный босс
		if HowManyNoDead <= 10 then
			local boss = math.random(1,100)
			if boss <= 70 then										-- 70% Олень Апокалипсиса
				if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
					local BOSS  = CreateChaEx(1190, 145,  150,  145, 60, map_copy)		-- МиниСНВ
				else
					local BOSS  = CreateChaEx(1193, 145,  150,  145, 60, map_copy)		-- БигСНВ
				end
				SetChaLifeTime(BOSS,290050)
			elseif boss > 70 and boss <= 95 then					-- 25% Курица Судного Дня
				if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
					local BOSS = CreateChaEx(1192, 145,  150,  145, 60, map_copy)		-- МиниСНВ
				else
					local BOSS = CreateChaEx(1195, 145,  150,  145, 60, map_copy)		-- БигСНВ
				end
				SetChaLifeTime(BOSS,290050)
			else													-- Лорд Бездны – Хардин
				Notice("\194\237\232\236\224\237\232\229: \194 \209\237\229\230\237\238\233 \226\238\233\237\229 \237\224\241\242\243\239\232\235 \192\240\236\224\227\229\228\228\238\237!")
					--Notice("Внимание: В Снежной войне наступил Армагеддон!")
				local BOSS = CreateChaEx(987, 145,  150,  145, 60, map_copy)
				SetChaLifeTime(BOSS,290050)
			end

			Snow_BOSS = 1
		-- Иначе вызываем 4 мини-боссов и сильных монстров
		else
			if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
				local miniBOSS_ID = 1191
			else
				local miniBOSS_ID = 1194
			end

			local Monster1  = CreateChaEx(miniBOSS_ID, 250,  250, 145, 60, map_copy)
			local Monster2  = CreateChaEx(miniBOSS_ID, 250,  50,  145, 60, map_copy)
			local Monster3  = CreateChaEx(miniBOSS_ID, 50,   250, 145, 60, map_copy)
			local Monster4  = CreateChaEx(miniBOSS_ID, 50,   50,  145, 60, map_copy)
				SetChaLifeTime(Monster1,290050)
				SetChaLifeTime(Monster2,290100)
				SetChaLifeTime(Monster3,290150)
				SetChaLifeTime(Monster4,290200)
		end

	end

-- ДЕВЯТАЯ ВОЛНА (45 мин)
	if Every_5_minute == 9 then	

		-- Если уникальный босс еще не появлялся
		if Snow_BOSS == 0 then			
			-- Если игроков меньше 10, вызывается уникальный босс
			if HowManyNoDead <= 10 then
				local boss = math.random(1,100)
				if boss <= 70 then										-- 70% Олень Апокалипсиса
					if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
						local BOSS  = CreateChaEx(1190, 145,  150,  145, 60, map_copy)		-- МиниСНВ
					else
						local BOSS  = CreateChaEx(1193, 145,  150,  145, 60, map_copy)		-- БигСНВ
					end
					SetChaLifeTime(BOSS,290050)
				elseif boss > 70 and boss <= 95 then					-- 25% Курица Судного Дня
					if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
						local BOSS = CreateChaEx(1192, 145,  150,  145, 60, map_copy)		-- МиниСНВ
					else
						local BOSS = CreateChaEx(1195, 145,  150,  145, 60, map_copy)		-- БигСНВ
					end
					SetChaLifeTime(BOSS,290050)
				else													-- Лорд Бездны – Хардин
					Notice("\194\237\232\236\224\237\232\229: \194 \209\237\229\230\237\238\233 \226\238\233\237\229 \237\224\241\242\243\239\232\235 \192\240\236\224\227\229\228\228\238\237!")
						--Notice("Внимание: В Снежной войне наступил Армагеддон!")
					local BOSS = CreateChaEx(987, 145,  150,  145, 60, map_copy)
					SetChaLifeTime(BOSS,290050)
				end

				Snow_BOSS = 1
			-- Иначе вызываем 4 мини-боссов и сильных монстров
			else
				if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
					local miniBOSS_ID = 1191
				else
					local miniBOSS_ID = 1194
				end

				local Monster1  = CreateChaEx(miniBOSS_ID, 250,  250, 145, 60, map_copy)
				local Monster2  = CreateChaEx(miniBOSS_ID, 250,  50,  145, 60, map_copy)
				local Monster3  = CreateChaEx(miniBOSS_ID, 50,   250, 145, 60, map_copy)
				local Monster4  = CreateChaEx(miniBOSS_ID, 50,   50,  145, 60, map_copy)
					SetChaLifeTime(Monster1,290050)
					SetChaLifeTime(Monster2,290100)
					SetChaLifeTime(Monster3,290150)
					SetChaLifeTime(Monster4,290200)
			end
		end
	end
	
-- ДЕСЯТАЯ ВОЛНА (50 мин)
	if Every_5_minute == 10 then			

		-- Если уникальный босс еще не появлялся
		if Snow_BOSS == 0 then			
			-- Если игроков меньше 10, вызывается уникальный босс
			if HowManyNoDead <= 10 then
				local boss = math.random(1,100)
				if boss <= 70 then										-- 70% Олень Апокалипсиса
					if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
						local BOSS  = CreateChaEx(1190, 145,  150,  145, 60, map_copy)		-- МиниСНВ
					else
						local BOSS  = CreateChaEx(1193, 145,  150,  145, 60, map_copy)		-- БигСНВ
					end
					SetChaLifeTime(BOSS,290050)
				elseif boss > 70 and boss <= 95 then					-- 25% Курица Судного Дня
					if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
						local BOSS = CreateChaEx(1192, 145,  150,  145, 60, map_copy)		-- МиниСНВ
					else
						local BOSS = CreateChaEx(1195, 145,  150,  145, 60, map_copy)		-- БигСНВ
					end
					SetChaLifeTime(BOSS,290050)
				else													-- Лорд Бездны – Хардин
					Notice("\194\237\232\236\224\237\232\229: \194 \209\237\229\230\237\238\233 \226\238\233\237\229 \237\224\241\242\243\239\232\235 \192\240\236\224\227\229\228\228\238\237!")
						--Notice("Внимание: В Снежной войне наступил Армагеддон!")
					local BOSS = CreateChaEx(987, 145,  150,  145, 60, map_copy)
					SetChaLifeTime(BOSS,290050)
				end

				Snow_BOSS = 1
			-- Иначе вызываем 4 мини-боссов и сильных монстров
			else
				if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
					local miniBOSS_ID = 1191
				else
					local miniBOSS_ID = 1194
				end

				local Monster1  = CreateChaEx(miniBOSS_ID, 250,  250, 145, 60, map_copy)
				local Monster2  = CreateChaEx(miniBOSS_ID, 250,  50,  145, 60, map_copy)
				local Monster3  = CreateChaEx(miniBOSS_ID, 50,   250, 145, 60, map_copy)
				local Monster4  = CreateChaEx(miniBOSS_ID, 50,   50,  145, 60, map_copy)
					SetChaLifeTime(Monster1,290050)
					SetChaLifeTime(Monster2,290100)
					SetChaLifeTime(Monster3,290150)
					SetChaLifeTime(Monster4,290200)
			end
		end

	end

end

-- Функция выполняется один раз в 5 секунд
function map_run_07xmas2( map )
end

-- Функция выполняется перед закрытием карты
function map_copy_before_close_07xmas2( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem")
	end

	How_Many_Active = 0				-- Активных персонажей на карте
	Money_all = 1000000				-- Общее количество золота в призовом фонде
	Every_5_minute = 0				
	Snow_BOSS = 0					-- Обнуляем переменную Snow_BOSS (0 - босс не вызывался, 1 - босс вызывался)
end

-- Функция закрытия карты
function map_copy_close_07xmas2( map_copy )
	ClearAllSubMapCha(map_copy)
end

-- Функция выдачи денег, используется внутри функции  map_copy_before_close_07xmas2()
function GiveSpecItem( role )
	if How_Many_Active == 1 then
		AddMoney ( role , 0 , Money_all )
		return
	else
		local Money_07xmas2 = math.floor (Money_all/How_Many_Active)
		AddMoney ( role , 0 , Money_07xmas2 )
		return
	end
end

-- Функция возвращает 1, если карту можно открыть и 0, если нельзя
function can_open_entry_07xmas2( map ) 
	local Now_Time = GetNowTime()

	-- Снежная война для игроков 30-60 уровней 	(5:00, 12:00, 21:00)
	-- Снежная война для игроков 61+ уровней 	(6:00, 13:00, 22:00)
	if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 or Now_Time == 6 or Now_Time == 13 or Now_Time == 22  then
		return 1
	else
		return 0
	end

end 

-- Функция возвращает координаты X и Y монстра из массива
function GetMonsterPosition(pos)
    x = pos[1]*100
	y = pos[2]*100
    return x,y 
end
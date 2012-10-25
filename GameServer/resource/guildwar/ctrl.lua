-- Настройка свойств карты Священная Война (guildwar)
-- Имя функции должно заканчиваться названием карты

function config(map)
    MapCanSavePos(map, 0) 				-- Возможность сохранять позицию персонажа на карте (1 - да, 0 - нет)
    MapCanPK(map, 1)     				-- Включенно ли PvP (1 - Да, 0 - Нет)
    MapCanGuild(map,0)
    MapCopyNum(map, 1) 					-- Количество копий карты (если параметр отсутствует, принимается равным 1)
    SingleMapCopyPlyNum(map, 300)  		-- Количество игроков на карте
    MapCanTeam(map , 1)					-- Возможность создавать отряды (1 - да, 0 - нет)
    MapType ( map , 5 )					-- Тип карты
    RepatriateDie(map,0)				-- Воскрешение на карте (1 - Включенно, 0 - отключенно)
    SetMapGuildWar(map,1)
    MapCanStall(map , 0)				-- Возможность ставить лотки (1 - да, 0 - нет)

end


function get_map_entry_pos_guildwar()  -- Расположение точки входа (координаты)

	local POS_X=979
	local POS_Y=3608
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "magicsea")   -- Карта, на которой установлена точка входа на эту карту
											-- Установка времени работы карты
											-- 2010/01/01/5/0 (год/месяц/день/часы/минуты) - время начала работы карты
											-- 0/1/0  (день/час/минута) - время открытия портала (открываем ежечасно)
											-- 0/0/30 (день/час/минута) - время работы портала (портал работает 30 минут)
											-- 0/0/55 (день/час/минута) - время работы карты (карта работает 55 минут)
    SetMapEntryTime(map, "2005/8/30/19/30", "0/4/0", "0/3/0", "0/3/0")    --Время открытия портала
    
end



function after_enter_guildwar( role , map_copy )
    
    if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
        SetChaSideID(role, 1)
       
     
    end

    if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
        SetChaSideID(role, 2)
	
      
    end

end

function before_leave_guildwar ( role )


local Cha = TurnToCha(role) 
	local i = 0
	local j = 0
	for i = 0 , SZ_BagItemDelCheckNum ,1 do
	
	        local j = RemoveChaItem ( Cha ,SZ_BagItemDelCheck_ID[i],0,0,-1,2,1 )
		
		if j == 0 then 
		LG("RemoveChaItem","Failed")
		end
        end

  RemoveState( role , STATE_HFZQ )
  RemoveState( role , STATE_QINGZ )
  RemoveState( role , STATE_JRQKL )
  RemoveState( role , STATE_YS )


  local map_copy =  GetChaMapCopy(role)

     if check_need_show == 1 then
         return 

         else

         if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
        
            count_haijun = count_haijun - 1
	   MapCopyNotice ( map_copy , "[\206\228\232\237 \232\231 \225\238\233\246\238\226 \212\235\238\242\224 \239\238\234\232\237\243\235 \225\232\242\226\243]" )
	   --MapCopyNotice ( map_copy , "[Один из бойцов Флота покинул битву]" )

         elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
            count_haidao = count_haidao - 1
		MapCopyNotice ( map_copy , "[ \206\228\232\237 \232\231 \225\238\233\246\238\226 \207\232\240\224\242\238\226 \239\238\234\232\237\243\235 \225\232\242\226\243]" )
	    --MapCopyNotice ( map_copy , "[ Один из бойцов Пиратов покинул битву]" )
        end
    end


 

	
end
  

function map_copy_first_run_guildwar( map_copy )
	
end

function map_copy_run_guildwar( map_copy )


    local closetime = GUILDWARCLOSETIME
           for i = 1 , GUILDNOTICE , 1 do
		 if closetime == GUILDCLOSESHOW[i] then
			 local Notice_all = "\194\240\229\236\255, \238\241\242\224\226\248\229\229\241\255 \228\238 \238\234\238\237\247\224\237\232\255 \234\224\240\242\251 \225\235\232\231\234\238"..closetime.."\241\229\234\243\237\228! \211\225\229\228\232\242\229\241\252, \247\242\238 \226\240\229\236\229\237\232 \228\238\241\242\224\242\238\247\237\238!"
			 --local Notice_all = "Время, оставшееся до окончания карты близко"..closetime.."секунд! Убедитесь, что времени достаточно!"
			 MapCopyNotice ( map_copy ,Notice_all )
		 end
	   end
	   GUILDWARCLOSETIME = GUILDWARCLOSETIME - 1


 local hp_hd = GetChaAttr( haidaoSide_BaseRole , ATTR_HP ) 
 
	local mxhp_hd = GetChaAttr( haidaoSide_BaseRole , ATTR_MXHP )
	local percent_hd = hp_hd/mxhp_hd
	if percent_hd < 0.3 and create_boss_hd == 0 then
		local x, y = GetChaPos( haidaoSide_BaseRole )
		      x = x+500
		      y = y+500
		      
                local Monster_hdboss = CreateChaEx(1008, 30800, 52400, 145, 1300,map_copy)
		SetChaLifeTime(Monster_hdboss,1200000)
		
                SetChaSideID(Monster_hdboss, 2)
		
		create_boss_hd = 1
		MapCopyNotice ( map_copy ,"\207\232\240\224\242\241\234\232\233 \209\242\240\224\230: \194\251 \229\249\229 \243\226\232\228\232\242\229 \232\241\242\232\237\237\243\254 \241\232\235\243 \242\252\236\251!")
		--MapCopyNotice ( map_copy ,"Пиратский Страж: Вы еще увидите истинную силу тьмы!")
	end


 local hp_hj = GetChaAttr( haijunSide_BaseRole , ATTR_HP ) 
 
	local mxhp_hj = GetChaAttr( haijunSide_BaseRole , ATTR_MXHP )
	local percent_hj = hp_hj/mxhp_hj
	
	if percent_hj < 0.3 and create_boss_hj == 0 then
		local x, y = GetChaPos( haijunSide_BaseRole )
		      x = x+500
		      y = y+500
                local Monster_hjboss = CreateChaEx(1007, 30600, 10200, 145, 1300,map_copy)
		SetChaLifeTime(Monster_hjboss,1200000) 
		--CreateCha(1007, 30600, 10200, 145, 3600)
		SetChaSideID(Monster_hjboss, 1)
		 
		create_boss_hj = 1
		MapCopyNotice ( map_copy ,"\209\242\240\224\230 \212\235\238\242\224: \194\232\228\229\235 \242\243 \241\242\224\242\243\254, \226\251\248\229? \205\224\228\238 \240\224\231\237\229\241\242\232 \253\242\243 \241\242\224\242\243\254 \234\238 \226\241\229\236 \247\229\240\242\255\236!")
		--MapCopyNotice ( map_copy ,"Страж Флота: Видел ту статую, выше? Надо разнести эту статую ко всем чертям!")
	end

 if SZ_Win_CountNum == 60 then
             
		if CheckMonsterDead ( haijunSide_BaseRole ) == 1 then
		   if haidaoSide_JDNotice == 0 then

			five_seconds = 1
			SZ_Win_CountNum = SZ_Win_CountNum - 1
			haidaoSide_JDNotice = 1
                        CloseMapEntry ( "guildwar" )
                        check_need_show = 1 

			local player_num_1 = GetMapPlayer(map_copy)
			local pn_1 = player_num_1 * 3
			for i=1, pn_1, 1 do
				if player_num_1 > 0 then
					DealAllPlayerInMap(map_copy,"HJ_Goto")
					DealAllPlayerInMap(map_copy,"noside_Goto")
				end
			end
			DealAllActivePlayerInMap(map_copy,"Give_Three_QiYue")
			local Notice_all = "\207\232\240\224\242\251 \239\238\225\229\228\232\235\232 \226 \209\226\255\249\229\237\237\238\233 \194\238\233\237\229!"
			--local Notice_all = "Пираты победили в Священной Войне!"
			Notice ( Notice_all )
			
	            end

		end

		if CheckMonsterDead ( haidaoSide_BaseRole ) == 1 then
		    if haijunSide_JDNotice == 0 then
		        five_seconds = 1

			SZ_Win_CountNum = SZ_Win_CountNum - 1
			haijunSide_JDNotice = 1
                        CloseMapEntry ( "guildwar" )
			check_need_show = 1

			local player_num_2 = GetMapPlayer(map_copy)
			local pn_2 = player_num_2 * 3
			for i=1, pn_2, 1 do
				if player_num_2 > 0 then
					DealAllPlayerInMap(map_copy,"HD_Goto")
					DealAllPlayerInMap(map_copy,"noside_Goto")
				end
			end
			DealAllActivePlayerInMap(map_copy,"Give_Three_QiYue")
			local Notice_all =  "\212\235\238\242 \239\238\225\229\228\232\235 \226 \209\226\255\249\229\237\237\238\233 \194\238\233\237\229!"
			--local Notice_all =  "Флот победил в Священной Войне!"
			Notice ( Notice_all )
			

	            end
		end
		
		if CheckMonsterDead ( haijunSide_LCRole ) == 1 then
			if haijunSide_LCNotice == 0 then
				MapCopyNotice ( map_copy ,"\206\240\243\230\229\233\237\224\255 \212\235\238\242\224 \225\251\235\224 \243\237\232\247\242\238\230\229\237\224! \211 \209\242\240\229\235\234\238\226\251\245 \193\224\248\237\252 \212\235\238\242\224 \231\224\236\229\242\237\238 \243\239\224\235\224 \239\240\238\247\237\238\241\242\252!")
				--MapCopyNotice ( map_copy ,"Оружейная Флота была уничтожена! У Стрелковых Башнь Флота заметно упала прочность!")
				AddState( haijunSide_BaseRole , haijunSide_BaseRole , STATE_PKLC, 10 , 10800 )
				AddState( haijunSide_JTRole_1 , haijunSide_JTRole_1 , STATE_PKLC, 10 , 10800 )
				AddState( haijunSide_JTRole_2 , haijunSide_JTRole_2 , STATE_PKLC, 10 , 10800 )
				haijunSide_LCNotice = 1
				--create_boss_hj = 1  -
			end
		end
		
		if CheckMonsterDead ( haidaoSide_LCRole ) == 1 then
			if haidaoSide_LCNotice == 0 then 
				MapCopyNotice ( map_copy ,"\206\240\243\230\229\233\237\224\255 \207\232\240\224\242\238\226 \225\251\235\224 \243\237\232\247\242\238\230\229\237\224! \211 \209\242\240\229\235\234\238\226\251\245 \193\224\248\237\252 \207\232\240\224\242\238\226 \231\224\236\229\242\237\238 \243\239\224\235\224 \239\240\238\247\237\238\241\242\252!")
				--MapCopyNotice ( map_copy ,"Оружейная Пиратов была уничтожена! У Стрелковых Башнь Пиратов заметно упала прочность!")
				AddState( haidaoSide_BaseRole , haidaoSide_BaseRole , STATE_PKLC, 10 , 10800 )
				AddState( haidaoSide_JTRole_1 , haidaoSide_JTRole_1 , STATE_PKLC, 10 , 10800 )
				AddState( haidaoSide_JTRole_2 , haidaoSide_JTRole_2 , STATE_PKLC, 10 , 10800 )
				haidaoSide_LCNotice = 1
			end
			
		end

		if CheckMonsterDead ( haijunSide_DYKRole ) == 1 then
			if haijunSide_DYKNotice == 0 then
				MapCopyNotice ( map_copy ,"\209\234\235\224\228 \212\235\238\242\224 \225\251\235 \243\237\232\247\242\238\230\229\237! \211 \209\242\240\229\235\234\238\226\251\245 \193\224\248\237\252 \212\235\238\242\224 \231\224\236\229\242\237\238 \243\239\224\235\224 \224\242\224\234\224!")
				--MapCopyNotice ( map_copy ,"Склад Флота был уничтожен! У Стрелковых Башнь Флота заметно упала атака!")
				AddState( haijunSide_JTRole_1 , haijunSide_JTRole_1 , STATE_JHKML, 10 , 10800 )
				AddState( haijunSide_JTRole_2 , haijunSide_JTRole_2 , STATE_JHKML, 10 , 10800 )
				haijunSide_DYKNotice = 1
			end
		end

		if CheckMonsterDead ( haidaoSide_DYKRole ) == 1 then
			if haidaoSide_DYKNotice == 0 then 
				MapCopyNotice ( map_copy ,"\209\234\235\224\228 \207\232\240\224\242\238\226 \225\251\235 \243\237\232\247\242\238\230\229\237! \211 \209\242\240\229\235\234\238\226\251\245 \193\224\248\237\252 \207\232\240\224\242\238\226 \231\224\236\229\242\237\238 \243\239\224\235\224 \224\242\224\234\224!")
				--MapCopyNotice ( map_copy ,"Склад Пиратов был уничтожен! У Стрелковых Башнь Пиратов заметно упала атака!")
				AddState( haidaoSide_JTRole_1 , haidaoSide_JTRole_1 , STATE_JHKML, 10 , 10800 )
				AddState( haidaoSide_JTRole_2 , haidaoSide_JTRole_2 , STATE_JHKML, 10 , 10800 )
				haidaoSide_DYKNotice = 1
			end		
		end
	else

              if time_can_setmonster == 0 then
		time_can_setnvsheng = time_can_setnvsheng + 1
	      end

		local Count = SZ_Win_CountNum / 10
		if Count == math.floor ( Count ) then
		 
			local Notice_map = "\193\238\227\232\237\255 \207\238\225\229\228\251 \239\238\255\226\232\242\241\255 \247\229\240\229\231 "..SZ_Win_CountNum.." \241\229\234\243\237\228!"
			--local Notice_map = "Богиня Победы появится через "..SZ_Win_CountNum.." секунд!"
			MapCopyNotice ( map_copy , Notice_map )
		end
		SZ_Win_CountNum = SZ_Win_CountNum - 1
		if SZ_Win_CountNum == 0 then
				SZ_Win_CountNum = 60
				
				
		end   
	        if time_can_setnvsheng == 59 then
		
		MapCopyNotice ( map_copy ,"\193\238\227\232\237\255 \207\238\225\229\228\251 \239\238\255\226\232\235\224\241\252 \237\224 \234\224\240\242\229 \209\226\255\249\229\237\237\238\233 \194\238\233\237\251!")
		--MapCopyNotice ( map_copy ,"Богиня Победы появилась на карте Священной Войны!")
		
		local Monster2 = CreateChaEx(1001, 21526, 49419, 145, 1000,map_copy)
		local Monster3 = CreateChaEx(1001, 41559, 11793, 145, 1000,map_copy)
		local Monster4 = CreateChaEx(1001, 13667, 40891, 145, 1000,map_copy)
		local Monster5 = CreateChaEx(1001, 12478, 21656, 145, 1000,map_copy)
		local Monster6 = CreateChaEx(1001, 12416, 49142, 145, 1000,map_copy)
		local Monster7 = CreateChaEx(1001, 52406, 49110, 145, 1000,map_copy)
		local Monster8 = CreateChaEx(1001, 51472, 13326, 145, 1000,map_copy)
		local Monster9 = CreateChaEx(1001, 12405, 8742, 205, 1000,map_copy)
		SetChaLifeTime(Monster2,900000)
		SetChaLifeTime(Monster3,900000)
		SetChaLifeTime(Monster4,900000)
		SetChaLifeTime(Monster5,900000)
		SetChaLifeTime(Monster6,900000)
		SetChaLifeTime(Monster7,900000)
		SetChaLifeTime(Monster8,900000)
		SetChaLifeTime(Monster9,900000)
               
	       time_can_setmonster = 1
               time_can_setnvsheng = 1
		end
	end

	
end


function map_copy_run_special_guildwar( map_copy ) 
        local random_hezi = math.random(1,10)
	
	if random_hezi == 1 then -- µЪТ»ЕъБоєР
		local Monster1 = CreateChaEx(934, 21620, 25990, 145, 60,map_copy)
		local Monster2 = CreateChaEx(934, 13505, 26914, 145, 60,map_copy)
		local Monster3 = CreateChaEx(934, 51545, 12982, 145, 60,map_copy)
		local Monster4 = CreateChaEx(934, 49464, 21582, 145, 60,map_copy)
		local Monster5 = CreateChaEx(934, 52142, 27057, 145, 60,map_copy)
		local Monster6 = CreateChaEx(934, 41027, 24583, 145, 60,map_copy)
		local Monster7 = CreateChaEx(934, 39696, 32709, 145, 60,map_copy)
		local Monster8 = CreateChaEx(934, 31214, 33352, 145, 60,map_copy)
		local Monster9 = CreateChaEx(934, 30322, 27936, 145, 60,map_copy)
		local Monster10 = CreateChaEx(934, 12275, 8838, 145, 60,map_copy)

        local Monster11 = CreateChaEx(935, 13441, 49302, 237, 60,map_copy)
		local Monster12 = CreateChaEx(935, 49505, 53814, 145, 60,map_copy)
		local Monster13 = CreateChaEx(935, 52191, 48734, 145, 60,map_copy)
		local Monster14 = CreateChaEx(935, 49514, 36624, 145, 60,map_copy)
		local Monster15 = CreateChaEx(935, 52322, 40969, 145, 60,map_copy)
		local Monster16 = CreateChaEx(935, 39167, 43477, 145, 60,map_copy)
		local Monster17 = CreateChaEx(935, 32042, 44194, 145, 60,map_copy)
		local Monster18 = CreateChaEx(935, 30494, 38172, 145, 60,map_copy)
		local Monster19 = CreateChaEx(935, 22644, 43566, 145, 60,map_copy)
		local Monster20 = CreateChaEx(935, 13309, 37477, 145, 60,map_copy)

        SetChaLifeTime(Monster1,299050)
		SetChaLifeTime(Monster2,299050)
		SetChaLifeTime(Monster3,299100)
		SetChaLifeTime(Monster4,299150)
		SetChaLifeTime(Monster5,299200)
		SetChaLifeTime(Monster6,299250)
		SetChaLifeTime(Monster7,299300)
		SetChaLifeTime(Monster8,299350)
		SetChaLifeTime(Monster9,299400)
		SetChaLifeTime(Monster10,299450)
		

        SetChaLifeTime(Monster11,299050)
        SetChaLifeTime(Monster12,299050)
		SetChaLifeTime(Monster13,299100)
		SetChaLifeTime(Monster14,299150)
		SetChaLifeTime(Monster15,299200)
		SetChaLifeTime(Monster16,299250)
		SetChaLifeTime(Monster17,299300)
		SetChaLifeTime(Monster18,299350)
		SetChaLifeTime(Monster19,299400)
		SetChaLifeTime(Monster20,299450)
        
	end
	if random_hezi == 2 then 
		local Monster21 = CreateChaEx(934, 13280, 20327, 145, 60,map_copy)
		local Monster22 = CreateChaEx(934, 11494, 22938, 145, 60,map_copy)
		local Monster23 = CreateChaEx(934, 8620, 25754, 145, 60,map_copy)
		local Monster24 = CreateChaEx(934, 13434, 27171, 145, 60,map_copy)
		local Monster25 = CreateChaEx(934, 22082, 29060, 145, 60,map_copy)
		local Monster26 = CreateChaEx(934, 22328, 26854, 145, 60,map_copy)
		local Monster27 = CreateChaEx(934, 22300, 23715, 145, 60,map_copy)
		local Monster28 = CreateChaEx(934, 23025, 16585, 145, 60,map_copy)
		local Monster29 = CreateChaEx(934, 20613, 15337, 145, 60,map_copy)
		local Monster30 = CreateChaEx(934, 12830, 12465, 145, 60,map_copy)

                local Monster31 = CreateChaEx(935, 21213, 39440, 46, 60,map_copy)
		local Monster32 = CreateChaEx(935, 10730, 49579, 46, 60,map_copy)
		local Monster33 = CreateChaEx(935, 21988, 34742, 46, 60,map_copy)
		local Monster34 = CreateChaEx(935, 22985, 36209, 46, 60,map_copy)
		local Monster35 = CreateChaEx(935, 22883, 48223, 46, 60,map_copy)
		local Monster36 = CreateChaEx(935, 21350, 45700, 46, 60,map_copy)
		local Monster37 = CreateChaEx(935, 23070, 40910, 46, 60,map_copy)
		local Monster38 = CreateChaEx(935, 13719, 34813, 46, 60,map_copy)
		local Monster39 = CreateChaEx(935, 12202, 39254, 250, 60,map_copy)
		local Monster40 = CreateChaEx(935, 8017, 43392, 145, 60,map_copy)
                

                SetChaLifeTime(Monster21, 299050)
		SetChaLifeTime(Monster22, 299100)
		SetChaLifeTime(Monster23, 299150)
		SetChaLifeTime(Monster24, 299200)
		SetChaLifeTime(Monster25, 299250)
		SetChaLifeTime(Monster26, 299300)
		SetChaLifeTime(Monster27, 299350)
		SetChaLifeTime(Monster28, 299350)
		SetChaLifeTime(Monster29, 299350)
		SetChaLifeTime(Monster30, 299350)

		SetChaLifeTime(Monster31, 299050)
		SetChaLifeTime(Monster32, 299050)
		SetChaLifeTime(Monster33, 299050)
		SetChaLifeTime(Monster34, 299050)
		SetChaLifeTime(Monster35, 299050)
		SetChaLifeTime(Monster36, 299050)
		SetChaLifeTime(Monster37, 299050)
		SetChaLifeTime(Monster38, 299050)
		SetChaLifeTime(Monster39, 299050)
		SetChaLifeTime(Monster40, 299050)
         
	end
	if random_hezi == 3 then 
		local Monster41 = CreateChaEx(935, 39318, 32214, 293, 60,map_copy)
		local Monster42 = CreateChaEx(935, 31069, 43192, 293, 60,map_copy)
		local Monster43 = CreateChaEx(935, 39177, 52654, 293, 60,map_copy)
		local Monster44 = CreateChaEx(935, 35124, 52286, 293, 60,map_copy)
		local Monster45 = CreateChaEx(935, 36068, 51210, 293, 60,map_copy)
		local Monster46 = CreateChaEx(935, 48444, 48486, 293, 60,map_copy)
		local Monster47 = CreateChaEx(935, 40042, 47521, 293, 60,map_copy)
		local Monster48 = CreateChaEx(935, 40223, 41496, 182, 60,map_copy)
		local Monster49 = CreateChaEx(935, 38767, 38552, 145, 60,map_copy)
		local Monster50 = CreateChaEx(935, 40167, 36772, 145, 60,map_copy)
		local Monster51 = CreateChaEx(934, 38002, 20903, 209, 60,map_copy)
		local Monster52 = CreateChaEx(934, 39240, 19177, 279, 60,map_copy)
		local Monster53 = CreateChaEx(934, 39645, 30047, 279, 60,map_copy)
		local Monster54 = CreateChaEx(934, 39791, 27655, 279, 60,map_copy)
		local Monster55 = CreateChaEx(934, 52163, 27539, 279, 60,map_copy)
		local Monster56 = CreateChaEx(934, 50094, 20494, 279, 60,map_copy)
		local Monster57 = CreateChaEx(934, 49301, 13882, 279, 60,map_copy)
		local Monster58 = CreateChaEx(934, 37727, 14455, 306, 60,map_copy)
		local Monster59 = CreateChaEx(934, 39731, 13703, 246, 60,map_copy)
		local Monster60 = CreateChaEx(934, 41555, 15069, 145, 60,map_copy)
		SetChaLifeTime(Monster41, 299050)
		SetChaLifeTime(Monster42, 299050)
		SetChaLifeTime(Monster43, 299050)
		SetChaLifeTime(Monster44, 299050)
		SetChaLifeTime(Monster45, 299050)
		SetChaLifeTime(Monster46, 299050)
		SetChaLifeTime(Monster47, 299050)
		SetChaLifeTime(Monster48, 299050)
		SetChaLifeTime(Monster49, 299050)
		SetChaLifeTime(Monster50, 299050)
		SetChaLifeTime(Monster51, 299050)
		SetChaLifeTime(Monster52, 299050)
		SetChaLifeTime(Monster53, 299050)
		SetChaLifeTime(Monster54, 299050)
		SetChaLifeTime(Monster55, 299050)
		SetChaLifeTime(Monster56, 299050)
		SetChaLifeTime(Monster57, 299050)
		SetChaLifeTime(Monster58, 299050)
		SetChaLifeTime(Monster59, 299050)
		SetChaLifeTime(Monster60, 299050)

	end
	if random_hezi == 4 then 
		local Monster61 = CreateChaEx(935, 32934, 48220, 145, 60,map_copy)
		local Monster62 = CreateChaEx(935, 31123, 47392, 145, 60,map_copy)
		local Monster63 = CreateChaEx(935, 29539, 45307, 145, 60,map_copy)
		local Monster64 = CreateChaEx(935, 31953, 39794, 145, 60,map_copy)
		local Monster65 = CreateChaEx(935, 30420, 39552, 145, 60,map_copy)
		local Monster66 = CreateChaEx(935, 29168, 39497, 145, 60,map_copy)
		local Monster67 = CreateChaEx(935, 32033, 34808, 145, 60,map_copy)
		local Monster68 = CreateChaEx(935, 30246, 34860, 145, 60,map_copy)
		local Monster69 = CreateChaEx(935, 29028, 34853, 145, 60,map_copy)
		local Monster70 = CreateChaEx(935, 30913, 32317, 145, 60,map_copy)
		local Monster71 = CreateChaEx(934, 31027, 27601, 145, 60,map_copy)
		local Monster72 = CreateChaEx(934, 32306, 14507, 145, 60,map_copy)
		local Monster73 = CreateChaEx(934, 30652, 14544, 145, 60,map_copy)
		local Monster74 = CreateChaEx(934, 29230, 14685, 145, 60,map_copy)
		local Monster75 = CreateChaEx(934, 31893, 25509, 145, 60,map_copy)
		local Monster76 = CreateChaEx(934, 30293, 25526, 145, 60,map_copy)
		local Monster77 = CreateChaEx(934, 29360, 25536, 145, 60,map_copy)
		local Monster78 = CreateChaEx(934, 31895, 20636, 145, 60,map_copy)
		local Monster79 = CreateChaEx(934, 30197, 20647, 145, 60,map_copy)
		local Monster80 = CreateChaEx(934, 29223, 20629, 145, 60,map_copy)

		SetChaLifeTime(Monster61,298050)
		SetChaLifeTime(Monster62,298100)
		SetChaLifeTime(Monster63,298150)
		SetChaLifeTime(Monster64,298200)
		SetChaLifeTime(Monster65,298250)
		SetChaLifeTime(Monster66,298300)
		SetChaLifeTime(Monster67,298350)
		SetChaLifeTime(Monster68,298400)
		SetChaLifeTime(Monster69,298450)
		SetChaLifeTime(Monster70,298500)
		SetChaLifeTime(Monster71,298550)
		SetChaLifeTime(Monster72,298600)
		SetChaLifeTime(Monster73,298650)
		SetChaLifeTime(Monster74,298700)
		SetChaLifeTime(Monster75,298750)
		SetChaLifeTime(Monster76,298800)
		SetChaLifeTime(Monster77,298850)
		SetChaLifeTime(Monster78,298900)
		SetChaLifeTime(Monster79,298950)
		SetChaLifeTime(Monster80,299000)
		

	end
	if random_hezi == 5 then 
	        local Monster81 = CreateChaEx(935, 23820, 13953, 201, 60,map_copy)
		local Monster82 = CreateChaEx(935, 21199, 13676, 201, 60,map_copy)
		local Monster83 = CreateChaEx(935, 21773, 26290, 201, 60,map_copy)
		local Monster84 = CreateChaEx(935, 40766, 10069, 201, 60,map_copy)
		local Monster85 = CreateChaEx(935, 21986, 23641, 201, 60,map_copy)
		local Monster86 = CreateChaEx(935, 28509, 14375, 201, 60,map_copy)
		local Monster87 = CreateChaEx(935, 31358, 16347, 201, 60,map_copy)
		local Monster88 = CreateChaEx(935, 29375, 17571, 201, 60,map_copy)
		local Monster89 = CreateChaEx(935, 30700, 22325, 201, 60,map_copy)
		local Monster90 = CreateChaEx(935, 39386, 20026, 201, 60,map_copy)
		local Monster91 = CreateChaEx(935, 39446, 14220, 201, 60,map_copy)
		local Monster92 = CreateChaEx(935, 38707, 16452, 50, 60,map_copy)
		local Monster93 = CreateChaEx(935, 51077, 31945, 50, 60,map_copy)
		local Monster94 = CreateChaEx(935, 47667, 22749, 50, 60,map_copy)
		local Monster95 = CreateChaEx(935, 50310, 20050, 145, 60,map_copy)
		local Monster96 = CreateChaEx(934, 38310, 36356, 69, 60,map_copy)
		local Monster97 = CreateChaEx(934, 40341, 37923, 69, 60,map_copy)
		local Monster98 = CreateChaEx(934, 39346, 43117, 69, 60,map_copy)
		local Monster99 = CreateChaEx(934, 42280, 47669, 124, 60,map_copy)
		local Monster100 = CreateChaEx(934, 41768, 52403, 168, 60,map_copy)
		local Monster101 = CreateChaEx(934, 38234, 53225, 72, 60,map_copy)
		local Monster102 = CreateChaEx(934, 37512, 49433, 145, 60,map_copy)
		local Monster103 = CreateChaEx(934, 31652, 48510, 145, 60,map_copy)
		local Monster104 = CreateChaEx(934, 19855, 51667, 145, 60,map_copy)
		local Monster105 = CreateChaEx(934, 23905, 47757, 145, 60,map_copy)
		local Monster106 = CreateChaEx(934, 22665, 43745, 145, 60,map_copy)
		local Monster107 = CreateChaEx(934, 21576, 40936, 145, 60,map_copy)
		local Monster108 = CreateChaEx(934, 12251, 37484, 145, 60,map_copy)
		local Monster109 = CreateChaEx(934, 8066, 40856, 145, 60,map_copy)
		local Monster110 = CreateChaEx(934, 14042, 41339, 145, 60,map_copy)


	
			SetChaLifeTime(Monster81,297050)
			SetChaLifeTime(Monster82,297100)
			SetChaLifeTime(Monster83,297150)
			SetChaLifeTime(Monster84,297200)
			SetChaLifeTime(Monster85,297250)
			SetChaLifeTime(Monster86,297300)
			SetChaLifeTime(Monster87,297350)
			SetChaLifeTime(Monster88,297400)
			SetChaLifeTime(Monster89,297450)
			SetChaLifeTime(Monster90,297500)
			SetChaLifeTime(Monster91,297550)
			SetChaLifeTime(Monster92,297600)
			SetChaLifeTime(Monster93,297650)
			SetChaLifeTime(Monster94,297700)
			SetChaLifeTime(Monster95,297750)
			SetChaLifeTime(Monster96,297800)
			SetChaLifeTime(Monster97,297850)
			SetChaLifeTime(Monster98,297900)
			SetChaLifeTime(Monster99,297950)
			SetChaLifeTime(Monster100,298000)
			SetChaLifeTime(Monster101,298050)
			SetChaLifeTime(Monster102,298100)
			SetChaLifeTime(Monster103,298150)
			SetChaLifeTime(Monster104,298200)
			SetChaLifeTime(Monster105,298250)
			SetChaLifeTime(Monster106,298300)
			SetChaLifeTime(Monster107,298350)
			SetChaLifeTime(Monster108,298400)
			SetChaLifeTime(Monster109,298450)
			SetChaLifeTime(Monster110,298500)
		

	end
	if random_hezi == 6 then 
	        local Monster111 = CreateChaEx(935, 10912, 29307, 44, 60,map_copy)
		local Monster112 = CreateChaEx(935, 7947, 34591, 44, 60,map_copy)
		local Monster113 = CreateChaEx(935, 9241, 33020, 49, 60,map_copy)
		local Monster114 = CreateChaEx(935, 11626, 36543, 49, 60,map_copy)
		local Monster115 = CreateChaEx(935, 10168, 35723, 49, 60,map_copy)
		local Monster116 = CreateChaEx(935, 11964, 34517, 49, 60,map_copy)
		local Monster117 = CreateChaEx(935, 13343, 34211, 145, 60,map_copy)
		local Monster118 = CreateChaEx(935, 13128, 32578, 145, 60,map_copy)
		local Monster119 = CreateChaEx(935, 13361, 26732, 145, 60,map_copy)
		local Monster120 = CreateChaEx(935, 9384, 28155, 145, 60,map_copy)
		local Monster121 = CreateChaEx(934, 10697, 29063, 145, 60,map_copy)
		local Monster122 = CreateChaEx(934, 8976, 27353, 145, 60,map_copy)
		local Monster123 = CreateChaEx(934, 13971, 34757, 145, 60,map_copy)
		local Monster124 = CreateChaEx(934, 10973, 34523, 145, 60,map_copy)
		local Monster125 = CreateChaEx(934, 12464, 32075, 145, 60,map_copy)
		local Monster126 = CreateChaEx(934, 9470, 31601, 145, 60,map_copy)
		local Monster127 = CreateChaEx(934, 12686, 28099, 145, 60,map_copy)
		local Monster128 = CreateChaEx(934, 13816, 26277, 145, 60,map_copy)
		local Monster129 = CreateChaEx(934, 11954, 26364, 145, 60,map_copy)
		local Monster130 = CreateChaEx(934, 10516, 25686, 145, 60,map_copy)
		local Monster131 = CreateChaEx(935, 50055, 37809, 109, 60,map_copy)
		local Monster132 = CreateChaEx(935, 51149, 34800, 109, 60,map_copy)
		local Monster133 = CreateChaEx(935, 51507, 33319, 109, 60,map_copy)
		local Monster134 = CreateChaEx(935, 52022, 35132, 109, 60,map_copy)
		local Monster135 = CreateChaEx(935, 48821, 32731, 109, 60,map_copy)
		local Monster136 = CreateChaEx(935, 49950, 32246, 131, 60,map_copy)
		local Monster137 = CreateChaEx(935, 52506, 32960, 131, 60,map_copy)
		local Monster138 = CreateChaEx(935, 50867, 35699, 131, 60,map_copy)
		local Monster139 = CreateChaEx(935, 50149, 38936, 134, 60,map_copy)
		local Monster140 = CreateChaEx(935, 51813, 38899, 145, 60,map_copy)
		local Monster141 = CreateChaEx(934, 49451, 35944, 359, 60,map_copy)
		local Monster142 = CreateChaEx(934, 52574, 29142, 293, 60,map_copy)
		local Monster143 = CreateChaEx(934, 52631, 34629, 145, 60,map_copy)
		local Monster144 = CreateChaEx(934, 49156, 34409, 145, 60,map_copy)
		local Monster145 = CreateChaEx(934, 50884, 33572, 145, 60,map_copy)
		local Monster146 = CreateChaEx(934, 52109, 31771, 145, 60,map_copy)
		local Monster147 = CreateChaEx(934, 50173, 31771, 145, 60,map_copy)
		local Monster148 = CreateChaEx(934, 47947, 31101, 145, 60,map_copy)
		local Monster149 = CreateChaEx(934, 49155, 30447, 145, 60,map_copy)
		local Monster150 = CreateChaEx(934, 48686, 29665, 145, 60,map_copy)


			SetChaLifeTime(Monster111,296050)
			SetChaLifeTime(Monster112,296100)
			SetChaLifeTime(Monster113,296150)
			SetChaLifeTime(Monster114,296200)
			SetChaLifeTime(Monster115,296250)
			SetChaLifeTime(Monster116,296300)
			SetChaLifeTime(Monster117,296350)
			SetChaLifeTime(Monster118,296400)
			SetChaLifeTime(Monster119,296450)
			SetChaLifeTime(Monster120,296500)
			SetChaLifeTime(Monster121,296550)
			SetChaLifeTime(Monster122,296600)
			SetChaLifeTime(Monster123,296650)
			SetChaLifeTime(Monster124,296700)
			SetChaLifeTime(Monster125,296750)
			SetChaLifeTime(Monster126,296800)
			SetChaLifeTime(Monster127,296850)
			SetChaLifeTime(Monster128,296900)
			SetChaLifeTime(Monster129,296950)
			SetChaLifeTime(Monster130,297000)
			SetChaLifeTime(Monster131,297050)
			SetChaLifeTime(Monster132,297100)
			SetChaLifeTime(Monster133,297150)
			SetChaLifeTime(Monster134,297200)
			SetChaLifeTime(Monster135,297250)
			SetChaLifeTime(Monster136,297300)
			SetChaLifeTime(Monster137,297350)
			SetChaLifeTime(Monster138,297400)
			SetChaLifeTime(Monster139,297450)
			SetChaLifeTime(Monster140,297500)
			SetChaLifeTime(Monster141,297550)
			SetChaLifeTime(Monster142,297600)
			SetChaLifeTime(Monster143,297650)
			SetChaLifeTime(Monster144,297700)
			SetChaLifeTime(Monster145,297750)
			SetChaLifeTime(Monster146,297800)
			SetChaLifeTime(Monster147,297850)
			SetChaLifeTime(Monster148,297900)
			SetChaLifeTime(Monster149,297950)
			SetChaLifeTime(Monster150,298000)
	     end
	  if random_hezi >= 7 then 
	     return
	  end



end


function map_run_guildwar( map )
   
   if five_seconds == 1 then
     second_five_seconds = second_five_seconds + 1
   end

   if second_five_seconds == 60 then
   Notice("\203\238\234\224\246\232\255 \209\226\255\249\229\237\237\224\255 \194\238\233\237\224 \231\224\234\240\238\229\242\241\255 \247\229\240\229\231 10 \236\232\237\243\242!")
   --Notice("Локация Священная Война закроется через 10 минут!")
   end
   if second_five_seconds == 120 then
  Notice("\203\238\234\224\246\232\255 \209\226\255\249\229\237\237\224\255 \194\238\233\237\224 \231\224\234\240\238\229\242\241\255 \247\229\240\229\231 5 \236\232\237\243\242!")
  --Notice("Локация Священная Война закроется через 5 минут!")
   end
   if second_five_seconds == 144 then
   Notice("\203\238\234\224\246\232\255 \209\226\255\249\229\237\237\224\255 \194\238\233\237\224 \231\224\234\240\238\229\242\241\255 \247\229\240\229\231 3 \236\232\237\243\242\251!")
   --Notice("Локация Священная Война закроется через 3 минуты!")
   end
   if second_five_seconds == 168 then
   Notice("\203\238\234\224\246\232\255 \209\226\255\249\229\237\237\224\255 \194\238\233\237\224 \231\224\234\240\238\229\242\241\255 \247\229\240\229\231 1 \236\232\237\243\242\243!")
   --Notice("Локация Священная Война закроется через 1 минуту!")
   end
   
   if second_five_seconds == 180
   then
   CloseMapCopy ( "guildwar" )
   end

 
end


function map_copy_before_close_guildwar( map_copy )

	local player_num = GetMapPlayer(map_copy)


	DealAllPlayerInMap(map_copy,"All_Goto")
	player_num = GetMapPlayer(map_copy)

	
	local pn = player_num * 10
	
	for i=1, pn, 1 do
		if player_num > 0 then
			DealAllPlayerInMap(map_copy,"All_Goto")
		end
	end


end


function map_copy_close_guildwar ( map_copy )



count_haijun = 0
count_haidao = 0
five_seconds = 0
second_five_seconds = 0
time_can_setmonster = 0
time_can_setnvsheng = 0
check_need_show = 0
create_boss_hj = 0
create_boss_hd = 0
GUILDWARCLOSETIME = 10800


haijunSide_JDNotice = 0
haijunSide_LCNotice = 0
haijunSide_DYKNotice =0
haidaoSide_JDNotice = 0
haidaoSide_LCNotice = 0
haidaoSide_DYKNotice= 0

KillMonsterInMapByName(map_copy,"Pirate Guardian")
KillMonsterInMapByName(map_copy,"Navy Guardian")
ClearAllSubMapCha(map_copy)
	
end
		

function HJ_Goto(role)


local typRoleType = ChaIsBoat(role)			
	if  typRoleType == 1 then 					
		if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
			MoveTo( role,  839, 3693,  "magicsea" )
                      
		else
		    return
		end
		    
	else															
		local character = TurnToCha(role)
		if GetChaGuildID(character) <= 100 and GetChaGuildID(character) > 0 then
			  MoveTo( character,  910, 3571,  "magicsea" )
			 
	        else
		      return
		end
		        
	end
	
end

function HD_Goto(role)

 local typRoleType = ChaIsBoat(role)			
	if  typRoleType == 1 then 					
		if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
			   MoveTo( role,  1188, 674,  "darkblue" )
		else
		    return
		end
		    
	else											
		 local character = TurnToCha(role)	
		 if GetChaGuildID(character) > 100 and GetChaGuildID(character) <= 200 then
			   MoveTo( character,  1271, 527,  "darkblue" )
		 else
		      return
		 end
		        
	 end
	
end

function noside_Goto(role)

local typRoleType = ChaIsBoat(role)			
		if  typRoleType == 1 then 				
		    if GetChaGuildID(role) == 0 then
                       MoveTo( role,  2259, 2828,  "garner" )
		    else
		       return
		    end
		    
		else														
		      local character = TurnToCha(role)	
			if GetChaGuildID(character) == 0 then
			  MoveTo( character,  2222, 2777,  "garner" )
			else
			  return
			end
		        
	        end
	
end

function All_Goto(role)
      local typRoleType = ChaIsBoat(role)			
		if  typRoleType == 1 then 				
		    if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
                       MoveTo( role,  1188, 674,  "darkblue" )
		    else
		       MoveTo( role,  839, 3693,  "magicsea" )
		    end
		    
		else															
		    local character = TurnToCha(role)
		    if GetChaGuildID(character) > 100 and GetChaGuildID(character) <= 200 then
			MoveTo( character,  1271, 527,  "darkblue" )
		    else
			MoveTo( character,  910, 3571,  "magicsea" )
		    end
		        
	        end
		
end

function Give_Three_QiYue( role )
   local Item_CanGet = GetChaFreeBagGridNum ( role )
	   if Item_CanGet <= 0 then
		   GiveItemX ( role , 0 , 2383  , 3 , 4 )
	   else
		   GiveItem ( role , 0 , 2383  , 3 , 4 )
	   end
end		
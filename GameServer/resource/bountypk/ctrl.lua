-- Настройка свойств карты Баунти (bountypk)
-- Имя функции должно заканчиваться названием карты

function config(map)
    MapCanSavePos(map, 0) 
    MapCanPK(map, 1) 
    MapCanTeam( map, 0 )
    MapType( map , 3 )
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 100)   
    --MapCanTeam(map , 1) 
    MapCanStall(map , 1) 
end


function get_map_entry_pos_bountypk()   

	local POS_X=1338
	local POS_Y=583
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "darkblue")			-- Карта, на которой установлена точка входа на эту карту
									-- Установка времени работы карты
									-- 2006/10/18/14/0 (год/месяц/день/часы/минуты) - время начала работы карты
									-- 0/2/0 (день/час/минута) - время открытия портала
									-- 0/0/30 (день/час/минута) - время закрытия портала
									-- 0/0/45 (день/час/минута) - время работы карты
    SetMapEntryTime(map, "2006/10/18/13/0", "0/8/0", "0/0/30", "0/0/45") 
end

function after_enter_bountypk( role , map_copy )
end

function before_leave_bountypk( role )
end


function map_copy_run_special_bountypk( map_copy ) 
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("В Баунти всё ещё есть выжившие "..HowManyNoDead.." человек(а) ")

	Every_5_minute_bounty = Every_5_minute_bounty+1
	if Every_5_minute_bounty == 2 then
		local Monster30 = CreateChaEx(875, 42985, 345873, 145, 60, map_copy)
		local Monster31 = CreateChaEx(872, 45077, 345876, 145, 60, map_copy)
		local Monster32 = CreateChaEx(868, 47339, 343768, 145, 60, map_copy)
		local Monster33 = CreateChaEx(872, 47618, 341548, 145, 60, map_copy)
		local Monster34 = CreateChaEx(879, 45347, 341040, 145, 60, map_copy)
		local Monster35 = CreateChaEx(872, 42048, 340970, 145, 60, map_copy)
		local Monster36 = CreateChaEx(875, 40614, 343213, 145, 60, map_copy)
		local Monster37 = CreateChaEx(868, 43643, 1342871, 145, 60, map_copy)
		local Monster38 = CreateChaEx(868, 45063, 344491,  145, 60, map_copy)
		local Monster39 = CreateChaEx(868, 41901, 343581,  145, 60, map_copy)
		local Monster40 = CreateChaEx(879, 46789, 343187,  145, 60, map_copy)
		local Monster41 = CreateChaEx(879, 45426, 343025,  145, 60, map_copy)
		local Monster42 = CreateChaEx(875, 42894, 339573,  145, 60, map_copy)
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
end
	if Every_5_minute_bounty == 3 then
		local Monster2  = CreateChaEx(859, 40552,  341058,  145, 60, map_copy)
		local Monster3  = CreateChaEx(859, 46961,  340962, 145, 60, map_copy)
		local Monster4  = CreateChaEx(859, 46620, 346089, 145, 60, map_copy)
		local Monster5  = CreateChaEx(859, 41773, 346003, 145, 60, map_copy)
		local Monster6  = CreateChaEx(859, 44111, 343888, 145, 60, map_copy)
		SetChaLifeTime(Monster2,299050)
		SetChaLifeTime(Monster3,299100)
		SetChaLifeTime(Monster4,299150)
		SetChaLifeTime(Monster5,299200)
		SetChaLifeTime(Monster6,299250)
	end

	if Every_5_minute_bounty == 4 then
		local Monster52 = CreateChaEx(869, 42783, 342326,  130, 60, map_copy)
		local Monster53 = CreateChaEx(880, 45960,  342283,  310, 60, map_copy)
		local Monster54 = CreateChaEx(876, 45885,  344934,  85,  60, map_copy)
		local Monster55 = CreateChaEx(876, 42922,  344907,  70,  60, map_copy)
		local Monster56 = CreateChaEx(869, 43676,  343455,  280, 60, map_copy)
		local Monster57 = CreateChaEx(869, 44533,  34337, 280, 60, map_copy)
		local Monster58 = CreateChaEx(880, 44295,  346173, 55,  60, map_copy)
		local Monster59 = CreateChaEx(880, 44174,  341319, 145, 60, map_copy)
		local Monster60 = CreateChaEx(876, 40394,  343445, 175, 60, map_copy)
		local Monster61 = CreateChaEx(869, 47479, 343645, 310, 60, map_copy)
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
	end
	
		if Every_5_minute_bounty == 5 then
		local Monster16 = CreateChaEx(860, 41939, 343676, 145, 60, map_copy)
		local Monster17 = CreateChaEx(860, 39712, 347639, 145, 60, map_copy)
		local Monster18 = CreateChaEx(860, 38789, 341018,  145, 60, map_copy)
		local Monster19 = CreateChaEx(860, 43393, 339639, 145, 60, map_copy)
		local Monster20 = CreateChaEx(860, 46795, 342105, 145, 60, map_copy)
		local Monster21 = CreateChaEx(860, 46024, 344167, 145, 60, map_copy)
		SetChaLifeTime(Monster16, 299050)
		SetChaLifeTime(Monster17, 299100)
		SetChaLifeTime(Monster18, 299150)
		SetChaLifeTime(Monster19, 299200)
		SetChaLifeTime(Monster20, 299250)
		SetChaLifeTime(Monster21, 299300)
	end
	
		if Every_5_minute_bounty == 6 then
		local Monster94  = CreateChaEx(870, 46703,  342358, 145, 60, map_copy)
		local Monster95  = CreateChaEx(871, 42766,  342272, 145, 60, map_copy)
		local Monster96  = CreateChaEx(877, 44158,  342921, 145, 60, map_copy)
		local Monster97  = CreateChaEx(878, 42762,  344905, 145, 60, map_copy)
		local Monster98  = CreateChaEx(874, 45856, 344889,  145, 60, map_copy)
		local Monster99  = CreateChaEx(881, 44192, 343813,  145, 60, map_copy)
		local Monster100 = CreateChaEx(871, 44235, 346295,  145, 60, map_copy)
		local Monster101 = CreateChaEx(874, 40744, 346001,  145, 60, map_copy)
		local Monster102 = CreateChaEx(870, 46678, 346049,  145, 60, map_copy)
		local Monster103 = CreateChaEx(871, 47628, 343421,  145, 60, map_copy)
		local Monster104 = CreateChaEx(881, 44231,  341227,  145, 60, map_copy)
		local Monster105 = CreateChaEx(874, 40934,  341208,  145, 60, map_copy)
		local Monster106 = CreateChaEx(877, 40543,  343564,  145, 60, map_copy)
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
	end
	
		if Every_5_minute_bounty == 7 then
		local Monster23 = CreateChaEx(861, 43667, 343065, 145, 60, map_copy)
		local Monster24 = CreateChaEx(861, 44664, 343089, 145, 60, map_copy)
		local Monster25 = CreateChaEx(861, 44674, 343829, 145, 60, map_copy)
		local Monster26 = CreateChaEx(861, 43667, 343878,  145, 60, map_copy)
		local Monster27 = CreateChaEx(861, 42715, 344952, 145, 60, map_copy)
		local Monster28 = CreateChaEx(861, 45981, 344918,  145, 60, map_copy)
		local Monster29 = CreateChaEx(861, 45854, 342240, 145, 60, map_copy)
		local Monster30 = CreateChaEx(1114, 46164, 343640, 145, 60, map_copy)
		local Monster31 = CreateChaEx(1114, 42364, 343640, 145, 60, map_copy)
		local Monster32 = CreateChaEx(717, 42364, 343640, 145, 60, map_copy)
		local Monster33 = CreateChaEx(717, 46164, 343640, 145, 60, map_copy)
		SetChaLifeTime(Monster23, 299050)
		SetChaLifeTime(Monster24, 299100)
		SetChaLifeTime(Monster25, 299150)
		SetChaLifeTime(Monster26, 299200)
		SetChaLifeTime(Monster27, 299250)
		SetChaLifeTime(Monster28, 299300)
		SetChaLifeTime(Monster29, 299350)
		SetChaLifeTime(Monster30, 22229935000)
		SetChaLifeTime(Monster31, 22229935000)
		SetChaLifeTime(Monster32, 2222993500)
		SetChaLifeTime(Monster33, 2222993500)
	end
end

function map_run_bountypk( map )
	
end

function map_copy_before_close_bountypk( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem2")
	end
	How_Many_Active = 0
	Money_all = 3000000
	Every_5_minute_bounty = 0
end

function map_copy_close_bountypk( map_copy )
	ClearAllSubMapCha(map_copy)
end



function GiveSpecItem2( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_bountypk = Money_all/How_Many_Active


	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_bountypk )

		return
	end

	if How_Many_Active <  6 and How_Many_Active > 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1031  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1031  , 1 , 4 )
		end
			 
		AddMoney ( role , 0 , Money_bountypk )

		return
	end
	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1032  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1032  , 1 , 4 )
		end
		AddMoney ( role , 0 , Money_bountypk )
		local cha_name = GetChaDefaultName ( role )
		local message = "\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." \238\237(\224) \239\238\235\243\247\232\235(\224) ".. Money_bountypk .." \231\238\235\238\242\224 \232 1 \221\236\225\235\229\236\243 \202\238\240\238\235\255 \208\232\237\227\224 "
		--local message = "Поздравляем "..cha_name.." он(а) получил(а) ".. Money_bountypk .." золота и 1 Эмблему Короля Ринга "

		SystemNotice(role,message)
		return
	end
end 

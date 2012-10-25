function config_entry(entry)
	SetMapEntryEntiID(entry,2492,1)

end

function after_create_entry(entry)
	local copy_mgr = GetMapEntryCopyObj(entry, 0)

		local EntryName = " Утопь Демона "
		SetMapEntryEventName( entry, EntryName )

	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: В Искуплении Демона обнаружен портал в Утопь Демона! ")

end

function after_destroy_entry_greh1(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: Портал в Утопь Демона исчез! ")

end

function after_player_login_greh1(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Объявление: В Искуплении Демона обнаружен портал в Утопь Демона! ")

end

function check_can_enter_greh1( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )

	if FightingBook_Num <= 0 then
			SystemNotice ( role , "У вас должна быть Медаль отваги, чтобы войти в Утопь Демона " )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end

	if Lv(role) < 45 then
		SystemNotice(role, "Вы должны быть не ниже 45 уровня, чтобы войти в Утопь Демона ")
		return 0    
	end

		
end

function begin_enter_greh1(role, copy_mgr) 
	SystemNotice(role,"Вы вошли в Утопь Демона ")
	local job = GetChaAttr(role, ATTR_JOB)
	--Чемпион
	if job == 8 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224")
	--Воитель
	elseif job == 9 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224 1")
	--Стрелок
	elseif job == 12 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224 2")
	--Целительница
	elseif job == 13 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224 3")
	--Колдунья
	elseif job == 14 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224 4")
	--Покоритель Морей
	elseif job == 16 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224 5")
	end

end
--made by xxPastuhxx--------------------------
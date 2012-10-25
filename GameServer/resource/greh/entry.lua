function config_entry(entry)
	SetMapEntryEntiID(entry,2492,1)

end

function after_create_entry(entry)
	local copy_mgr = GetMapEntryCopyObj(entry, 0)

		local EntryName = " Искупление Демона "
		SetMapEntryEventName( entry, EntryName )

	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: По координатам ["..posx..","..posy.."] в Аскароне обнаружен портал в Искупление Демона! ")

end

function after_destroy_entry_greh(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: Портал в Искупление Демона закрывается! ")

end

function after_player_login_greh(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Объявление: По координатам ["..posx..","..posy.."] в Аскароне обнаружен портал в Искупление Демона! ")

end

function check_can_enter_greh( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "Вам нужно покинуть отряд чтобы войти в Искупления Демона. " )
		return 0
		
	end

	if FightingBook_Num <= 0 then
			SystemNotice ( role , "У вас должна быть Медаль отваги, чтобы войти в Искупление Демона " )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end

	if Lv(role) < 45 then
		SystemNotice(role, "Вы должны быть не ниже 45 уровня, чтобы войти в Искупление Демона ")
		return 0    
	end

		
end

function begin_enter_greh(role, copy_mgr) 
	SystemNotice(role,"Вы вошли в Искупление Демона ")
	MoveCity(role, "\200\241\234\243\239\235\229\237\232\229 \196\229\236\238\237\224")

end
--made by xxPastuhxx--------------------------
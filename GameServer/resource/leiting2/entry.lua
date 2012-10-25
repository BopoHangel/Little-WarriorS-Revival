function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --Оствляем как есть.

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --Без понятия, не меняем ничего.

	local EntryName = "Мираж Громограда."
    SetMapEntryEventName( entry, EntryName )
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --Объявления об открытии портала в Мираж Громограда.
    Notice("Объявление: В Аскароне ["..posx..","..posy.."] появился портал в [Мираж Громограда].")

end

function after_destroy_entry_leiting2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Объявление: По имеющейся информации, портал в [Мираж Громограда] исчез!.") 

end

function after_player_login_leiting2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --Объявления об открытии портала в Мираж Громограда.
    ChaNotice(player_name, "Объявление: В Аскароне ["..posx..","..posy.."] появился портал в [Мираж Громограда].")

end




--Мираж Громограда(Системные Нотайсы)
--DS team
function check_can_enter_leiting2( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "Ты не можешь телепортироваться. ")
		return 0    
	end
	if Lv(role) < 70 then
		SystemNotice(role, "Персонажи меньше 70 лвл не допускаются в Мираж Громограда. ")
		return 0    
	end
	if Lv(role) > 89 then
		SystemNotice(role, "Персонажи 90 лвл и выше не допускаются в Мираж Громограда. ")
		return 0    
	end
	
	local Num
	Num = CheckBagItem(role,2326)
	if Num < 1 then
		SystemNotice(role, "Для входа нужна Маска реальности. ")	
		return 0
	end

	local Credit_Leiting2 = GetCredit(role)
	if Credit_Leiting2 < 10 then
		SystemNotice(role, "Ты не имеешь достаточно репутации, чтобы войти в Мираж Громограда. ")
		return 0
	else
		DelCredit(role,10)
		return 1
	end
end


function begin_enter_leiting2(role, copy_mgr)

	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 2326, 1)
	
	if Dbag == 1 then
		SystemNotice(role,"[Мираж Громограда].") 
		MoveCity(role, "\204\232\240\224\230 \195\240\238\236\238\227\240\224\228\224")

	else
	
		SystemNotice(role, "Не удается войти в Мираж Громограда ")
	end
end
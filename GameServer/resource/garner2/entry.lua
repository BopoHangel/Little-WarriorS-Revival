-- Имена функций должны заканчиватсья названием карты, такие как after_destroy_entry_abandonedcity
-- Наибольшее число символов в строке составляет 255

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) 

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) -- Получение информации о точке входа (название карты, координаты, название целевой карты)
	
    local EntryName = "Хаос Аргента ^_^ "
    SetMapEntryEventName( entry, EntryName )	
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("Внимание: В Великом Синем Океане ["..posx..","..posy.."] появился портал в [Хаос Аргента].") -- Сообщение всем персонажам на сервере
	--Notice("Внимание: В Великом Синем Океане ["..posx..","..posy.."] появился портал в [Хаос Аргента].")
end

function after_destroy_entry_garner2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Внимание: Портал в [Хаос Аргента] закрылся! Возрадуйтесь!") 

end

function after_player_login_garner2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ИЎµШНјИлїЪµДО»ЦГРЕПўЈЁµШНјГыЈ¬Чш±кЈ¬Дї±кµШНјГыЈ©
    ChaNotice(player_name, "Внимание: В Великом Синем Океане ["..posx..","..posy.."] появился портал в [Хаос Аргента].") --НЁЦЄ±ѕЧй·юОсЖчµДЛщУРНжјТ

end






function check_can_enter_garner2( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "Выйдите из отряда чтоб войти в Хаос Аргента " )
		return 0
		
	end
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "У вас нет Медали Отваги.Преобретите её у администратора Арены " )
		return 0
	elseif FightingBook_Num > 1 then
		return 0
	end
	local role_RY = GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint = GetItemAttr ( role_RY , ITEMATTR_VAL_STR)

	if HonorPoint < 20 then
		SystemNotice ( role , "У вас не хватает очков чести чтоб войти в Хаос " )
		return 0
	end

	if HonorPoint >30000 then
		SystemNotice ( role , "У вас очень много очков чести чтоб войти в Хаос " )
		return 0
	end

	local Credit_Garner2 = GetCredit(role)
	 if Credit_Garner2 < 30 then 
		SystemNotice ( role , "У вас мало репутации чтоб войти в Хаос " )
		return 0
	end

	if Lv(role) < 20 then
	SystemNotice(role, "Вы должны быть выше 20 уровня чтоб войти в Хаос ")
		return 0    
	end
	local Has_money = check_HasMoney(role)
	if Has_money == 1 then
		
		return 1
		
	else
		SystemNotice(role,"У вас не хватает золота чтоб войти в Хаос ")
		return 0
	end
				
end

function check_HasMoney(role)
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local Money_Have = GetChaAttr ( role , ATTR_GD )
		if Money_Have >= Money_Need then
			return 1
		end

end


function begin_enter_garner2(role, copy_mgr) 
	local	Money_Have = GetChaAttr ( role , ATTR_GD )
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local	Money_Now = Money_Have - Money_Need
	SetChaAttrI( role , ATTR_GD , Money_Now )
	DelCredit(role,30)
	SystemNotice(role,"Вы вошли в [Хаос Аргента], у вас забрали: "..Money_Need..", золота и 30 очков репутации ") 
	MoveCity(role, "\213\224\238\241 \192\240\227\229\237\242\224")
	Money_all = Money_all + Money_Need * 0.8
end








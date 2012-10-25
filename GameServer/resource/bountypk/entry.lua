-- Имена функций должны заканчиваться названием карты, такие как after_destroy_entry_bountypk
-- Наибольшее число символов в строке составляет 255

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
    local EntryName = "Баунти "
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("\194\237\232\236\224\237\232\229: \194 \194\229\235\232\234\238\236 \209\232\237\229\236 \206\234\229\224\237\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 \226 [\193\224\243\237\242\232].")  
	--Notice("Внимание: В Великом Синем Океане по координатам ["..posx..","..posy.."] открылся портал в [Баунти].")  

end

function after_destroy_entry_bountypk(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("\194\237\232\236\224\237\232\229: \207\238\240\242\224\235 \226  [\193\224\243\237\242\232] \231\224\234\240\251\235\241\255. \205\224\241\235\224\230\228\224\233\242\229\241\252!") 
	--Notice("Внимание: Портал в  [Баунти] закрылся. Наслаждайтесь!") 

end

function after_player_login_bountypk(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "\194\237\232\236\224\237\232\229: \194 \194\229\235\232\234\238\236 \209\232\237\229\236 \206\234\229\224\237\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 \226 [\193\224\243\237\242\232].")
	--ChaNotice(player_name, "Внимание: В Великом Синем Океане по координатам ["..posx..","..posy.."] открылся портал в [Баунти].")

end






function check_can_enter_bountypk( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "\215\242\238\225\251 \226\238\233\242\232 \226 \193\224\243\237\242\232 \237\224\228\238 \226\251\233\242\232 \232\231 \238\242\240\255\228\224." )
		--SystemNotice ( role , "Чтобы войти в Баунти надо выйти из отряда." )
		return 0
		
	end

	local Cha = TurnToCha(role)
  
	if Lv(Cha) >=25 and Lv(Cha) <=100 then
	
			return 1

	else
		SystemNotice(role, "\194 \193\224\243\237\242\232 \236\238\227\243\242 \226\238\233\242\232 \242\238\235\252\234\238 \239\229\240\241\238\237\224\230\232 \226\251\248\229 25 \243\240\238\226\237\255 ")
		--SystemNotice(role, "В Баунти могут войти только персонажи выше 25 уровня ")
		return 0    
	end

	if FightingBook_Num <= 0 then
		SystemNotice ( role , "\194\224\236 \237\243\230\237\224 \204\229\228\224\235\252 \206\242\226\224\227\232 " )
		--SystemNotice ( role , "Вам нужна Медаль Отваги " )
		return 0
	elseif FightingBook_Num > 1 then
		return 0
	end
				
end

function begin_enter_bountypk(role, copy_mgr) 

		SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\193\224\243\237\242\232]") 
		--SystemNotice(role,"Вы вошли в [Баунти]") 
		
		MoveCity(role, "\193\224\243\237\242\232")

end









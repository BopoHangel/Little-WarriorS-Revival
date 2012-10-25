-- Имена функций должны заканчиваться названием карты, такие как after_destroy_entry_bingland2
-- Наибольшее число символов в строке составляет 255


function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) 

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 

	local EntryName = "Мираж Ледыни "
    SetMapEntryEventName( entry, EntryName )
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)	-- Получение информации о точке входа (название карты, координаты, название целевой карты)
	Notice("\206\225\250\255\226\235\229\237\232\229: \194 \194\229\235\232\234\238\236 \209\232\237\229\236 \206\234\229\224\237\229 ["..posx..","..posy.."] \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 \226 [\204\232\240\224\230 \203\229\228\251\237\232].")
    --Notice("Объявление: В Великом Синем Океане ["..posx..","..posy.."] открылся портал в [Мираж Ледыни].")

end

function after_destroy_entry_binglang2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("\206\225\250\255\226\235\229\237\232\229: \207\238\240\242\224\235 \226 \204\232\240\224\230 \203\229\228\251\237\232 \231\224\240\234\251\235\241\255!")
	--Notice("Объявление: Портал в Мираж Ледыни заркылся!") 

end

function after_player_login_binglang2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "\206\225\250\255\226\235\229\237\232\229: \194 \194\229\235\232\234\238\236 \209\232\237\229\236 \206\234\229\224\237\229 ["..posx..","..posy.."] \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 \226 [\204\232\240\224\230 \203\229\228\251\237\232].")
	--ChaNotice(player_name, "Объявление: В Великом Синем Океане ["..posx..","..posy.."] открылся портал в [Мираж Ледыни].")
end





--Мираж Ледыни (Системные Нотайсы)
function check_can_enter_binglang2( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "\210\251 \237\229 \236\238\230\229\248\252 \226\238\233\242\232 \226 \204\232\240\224\230 \203\229\228\251\237\232 ")
		--SystemNotice(role, "Ты не можешь войти в Мираж Ледыни ")
		return 0    
	end
	if Lv(role) < 70 then
		SystemNotice(role, "\207\229\240\241\238\237\224\230\232 \237\232\230\229 70 \235\226\235 \237\229 \236\238\227\243\242 \231\224\233\242\232 \226 \204\232\240\224\230 \203\229\228\251\237\232 ")
		--SystemNotice(role, "Персонажи ниже 70 лвл не могут зайти в Мираж Ледыни ")
		return 0    
	end
	if Lv(role) > 89 then
		SystemNotice(role, "\207\229\240\241\238\237\224\230\232 90 \235\226\235 \232 \226\251\248\229 \237\229 \236\238\227\243\242 \231\224\233\242\232 \226 \204\232\240\224\230 \203\229\228\251\237\232 ")
		--SystemNotice(role, "Персонажи 90 лвл и выше не могут зайти в Мираж Ледыни ")
		return 0    
	end
	
	local Num
	Num = CheckBagItem(role,2326)
	if Num < 1 then
		SystemNotice(role, "\211 \242\229\225\255 \237\229\242\243 \204\224\241\234\232 \208\229\224\235\252\237\238\241\242\232 ")
		--SystemNotice(role, "У тебя нету Маски Реальности ")	
		return 0
	end

	local Credit_Binglang2 = GetCredit(role)
	if Credit_Binglang2 < 10 then
		SystemNotice(role, "\210\251 \232\236\229\229\248\252 \237\229 \228\238\241\242\224\242\238\247\237\238 \240\229\239\243\242\224\246\232\232, \247\242\238\225\251 \226\238\233\242\232 \226 \204\232\240\224\230 \203\229\228\251\237\232 ")
		--SystemNotice(role, "Ты имеешь не достаточно репутации, чтобы войти в Мираж Ледыни ")
		return 0
	else
		DelCredit(role,10)
		return 1
	end
end


function begin_enter_binglang2(role, copy_mgr)

	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 2326, 1)
	
	if Dbag == 1 then
		SystemNotice(role,"\204\232\240\224\230 \203\229\228\251\237\232 ") 
		--SystemNotice(role,"Мираж Ледыни ") 
		MoveCity(role, "\204\232\240\224\230 \203\229\228\251\237\232")

	else
		SystemNotice(role, "\210\251 \237\229 \236\238\230\229\248\252 \226\238\233\242\232 \226 \204\232\240\224\230 \203\229\228\251\237\232 ")
		--SystemNotice(role, "Ты не можешь войти в Мираж Ледыни ")
	end
end
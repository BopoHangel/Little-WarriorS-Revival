-- Имена функций должны заканчиваться названием карты, такие как after_destroy_entry_darkblue2
-- Наибольшее число символов в строке составляет 255

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) 

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
    local EntryName = "Хаос Ледыне 61-64 уровень "
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("\194\237\232\236\224\237\232\229: \194 \209\232\237\229\236 \204\224\227\232\247\229\241\234\238\236 \206\234\229\224\237\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 \226\229\228\243\249\232\233 \226 [\213\224\238\241 \203\229\228\251\237\229].") 
    --Notice("Внимание: В Синем Магическом Океане по координатам ["..posx..","..posy.."] открылся портал ведущий в [Хаос Ледыне].") 

end

function after_destroy_entry_darkblue2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("\194\237\232\236\224\237\232\229: \194 \209\232\237\229\236 \204\224\227\232\247\229\241\234\238\236 \206\234\229\224\237\229 \239\238 \231\224\234\240\251\235\241\255 \239\238\240\242\224\235 \226\229\228\243\249\232\233 \226 [\213\224\238\241 \203\229\228\251\237\229]")
    --Notice("Внимание: В Синем Магическом Океане по закрылся портал ведущий в [Хаос Ледыне]") 

end

function after_player_login_darkblue2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "\194\237\232\236\224\237\232\229: \194 \209\232\237\229\236 \204\224\227\232\247\229\241\234\238\236 \206\234\229\224\237\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 \226\229\228\243\249\232\233 \226 [\213\224\238\241 \203\229\228\251\237\229] ")
	--ChaNotice(player_name, "Внимание: В Синем Магическом Океане по координатам ["..posx..","..posy.."] открылся портал ведущий в [Хаос Ледыне] ") 

end





function check_can_enter_darkblue2( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "\194\251 \241\238\241\242\238\232\242\229 \226 \238\242\240\255\228\229 \232 \237\229 \236\238\230\229\242\229 \226\238\233\242\232 " )
		--SystemNotice ( role , "Вы состоите в отряде и не можете войти " )
		return 0
		
	end
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "\211 \226\224\241 \237\229\242 \236\229\228\224\235\232 \238\242\226\224\227\232.\194\251 \237\229 \241\236\238\230\229\242\229 \239\238\239\224\241\242\252 \226 \237\229\227\238 \225\229\231 \236\229\228\224\235\232 " )
		--SystemNotice ( role , "У вас нет медали отваги.Вы не сможете попасть в него без медали " )
		return 0
	elseif FightingBook_Num > 1 then
		return 0
	end
	local role_RY = GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint = GetItemAttr ( role_RY , ITEMATTR_VAL_STR)

	if HonorPoint < 50 then
		SystemNotice ( role , "\211 \226\224\241 \237\229\242 50 \238\247\234\238\226 \247\229\241\242\232 \247\242\238\225 \239\238\239\224\241\242\252 \226 \213\224\238\241 \203\229\228\251\237\229 " )
		--SystemNotice ( role , "У вас нет 50 очков чести чтоб попасть в Хаос Ледыне " )
		return 0
	end

	if HonorPoint >30000 then
		SystemNotice ( role , "\211 \226\224\241 \238\247\229\237\252 \236\237\238\227\238 \238\247\234\238\226 \247\229\241\242\232 " )
		--SystemNotice ( role , "У вас очень много очков чести " )
		return 0
	end

	local Credit_darkblue2 = GetCredit(role)
	 if Credit_darkblue2 < 100 then 
		SystemNotice ( role , "\211 \226\224\241 \237\229\242 100 \238\247\234\238\226 \240\229\239\243\242\224\246\232\232 \247\242\238\225 \239\238\239\224\241\242\252 \226 \213\224\238\241 " )
		--SystemNotice ( role , "У вас нет 100 очков репутации чтоб попасть в Хаос " )
		return 0
	end

	if Lv(role) >=61 and Lv(role) <=64 then
	SystemNotice(role, "\194\251 \225\238\235\252\248\229 64 \232\235\232 \236\229\237\252\248\229 61 \243\240\238\226\237\255 \232 \237\229 \236\238\230\229\242\229 \239\238\239\224\241\242\252 \226 \213\224\238\241 ")
	--SystemNotice(role, "Вы больше 64 или меньше 61 уровня и не можете попасть в Хаос ")
		return 0    
	end
	local Has_money = check_HasMoney(role)
	if Has_money == 1 then
		
		return 1
		
	else
		SystemNotice(role,"\211 \226\224\241 \237\229\245\226\224\242\224\229\242 \231\238\235\238\242\224...")
		--SystemNotice(role,"У вас нехватает золота...")
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


function begin_enter_darkblue2(role, copy_mgr) 
	local	Money_Have = GetChaAttr ( role , ATTR_GD )
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local	Money_Now = Money_Have - Money_Need
	SetChaAttrI( role , ATTR_GD , Money_Now )
	DelCredit(role,30)
	SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\213\224\238\241 \203\229\228\251\237\229] \243 \226\224\241 \226\231\255\235\232 "..Money_Need.." \231\238\235\238\242\224 \232 100 \238\247\234\238\226 \240\229\239\243\242\224\246\232\232.") 
	--SystemNotice(role,"Вы вошли в [Хаос Ледыне] у вас взяли "..Money_Need.." золота и 100 очков репутации.") 
	MoveCity(role, "\213\224\238\241 \203\229\228\251\237\232")
	Money_all = Money_all + Money_Need * 0.9
end
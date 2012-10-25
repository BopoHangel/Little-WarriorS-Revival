-- Имена функций должны заканчиватсья названием карты, такие как after_destroy_entry_puzzleworld2
-- Наибольшее число символов в строке составляет 255

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) 					-- Set map entry entity number (the number corresponds to characterinfo.txt index)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 			
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 	-- Получение информации о точке входа (название карты, координаты, название целевой карты)

end

function after_destroy_entry_puzzleworld2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 

end

function begin_enter_puzzleworld2(role, copy_mgr) 
  	SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\204\232\240 \196\229\236\238\237\238\226 2]")
	-- SystemNotice(role,"Вы вошли в [Мир Демонов 2]") 
	MoveCity(role, "\204\232\240 \228\229\236\238\237\238\226 2")

end
-- Имена функций должны заканчиватсья названием карты, такие как after_destroy_entry_abandonedcity2
-- Наибольшее число символов в строке составляет 255

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
												-- Получение информации о точке входа (название карты, координаты, название целевой карты)	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
   
end

function after_destroy_entry_abandonedcity2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 

end

function begin_enter_abandonedcity2(role, copy_mgr) 
    MoveCity(role, "\199\224\242\229\240\255\237\237\251\233 \227\238\240\238\228 2")

end 
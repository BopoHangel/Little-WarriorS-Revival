-- Имена функций должны заканчиватсья названием карты, такие как after_destroy_entry_mjing3
-- Наибольшее число символов в строке составляет 255

function config_entry(entry) 
--    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Портал в Край Тьмы открылся, подробности можно узнать у Портальщика на острова(2329;2823)") 

end

function after_destroy_entry_mjing3(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Портал в Край Тьмы закрылся!") 

end

function after_player_login_mjing3(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 

end
function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)

end 

function after_create_entry(entry) 

    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Врата в ад "
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("Объявление:В глубинах Абаддона 199,943 были слышны крики мертвых, после чего многие люди боятся посещать Карибские Острова. Найдется ли воин, готовый исследовать 5-8 Абаддон? ")

end

function after_destroy_entry_hell(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("Announcement: Challenge for today has ended.") 

end

function after_player_login_hell(entry, player_name)

end


function check_can_enter_hell( role, copy_mgr )

end

function begin_enter_hell(role, copy_mgr) 
    

		SystemNotice(role,"Притяжение несет вас к самому центру тьмы. Глубины Абаддона ждут вас!")
		MoveCity(role, "\192\225\224\228\228\238\237 5-8")
	

end 
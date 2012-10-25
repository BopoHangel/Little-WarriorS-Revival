function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)

end 

function after_create_entry(entry) 

    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Вечный Абаддон "
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("Объявление: В глубинах Абаддона 18 "["..posx..","..posy.."]" открылся портал, ведущий во что-то неизведанное человеком!")

end

function after_destroy_entry_hell5(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("Announcement: Challenge for today has ended.") 

end

function after_player_login_hell5(entry, player_name)

end


function check_can_enter_hell5( role, copy_mgr )

	if CRY[18]==0 then

		SystemNotice(role,"Темные силы запечатали врата в Вечный Абаддон, как бы ты ни старался они не котроются.")
		return 0

	end

	return 1

end

function begin_enter_hell5(role, copy_mgr) 
    

		SystemNotice(role,"Вас тянет в глубинны Абаддона...")

		MoveCity(role, "\194\229\247\237\251\233 \192\225\224\228\228\238\237")
	

end 
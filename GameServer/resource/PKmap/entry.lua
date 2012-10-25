function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) 

end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)

    local EntryName = "Захват флага Барбороссы "
    SetMapEntryEventName( entry, EntryName )	
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Внимание: В Магическом Океане ["..posx..","..posy.."] появился портал в [Захват флага Барбороссы].")

end

function after_destroy_entry_PKmap(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Внимание: Портал в [Захват флага Барбороссы] закрылся! Возрадуйтесь!") 
end

function after_player_login_PKmap(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "Внимание: В Магическом Океане ["..posx..","..posy.."] появился портал в [Захват флага Барбороссы].") 

end

function begin_enter_PKmap(role, copy_mgr) 
		MoveCity(role, "\193\238\235\252\248\224\255 \224\240\229\237\224")
end
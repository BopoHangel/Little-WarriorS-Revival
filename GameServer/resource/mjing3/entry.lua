function config_entry(entry) 
--    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Portal to Dark Area arrived, what are you waiting for?") 

end

function after_destroy_entry_mjing3(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Portal to Dark Area destroyed, please try again later!") 

end

function after_player_login_mjing3(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "Welcome Pirate") 

end
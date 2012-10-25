--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
--    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Gate to Aurora Word is now open, ask North Villie for more information!") 

end

function after_destroy_entry_mjing1(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Portal to Aurora Word destroyed, please try again later!") 

end

function after_player_login_mjing1(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "Welcome Pirate!")

end
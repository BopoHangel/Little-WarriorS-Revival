--entry.lua к новой PvP арене "Арена Смерти"


SetTeamFightMapName("starena13") 

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) --Портал на суше
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --
	
    local EntryName = "Арена смерти ^^ " ---Название портала
    SetMapEntryEventName( entry, EntryName )	
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --
    Notice("Внимание: В Великом Синем Океане ["..posx..","..posy.."] появился портал на [Арену Смерти].") --Объявление в систему.

   

end

function after_destroy_entry_starena13(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Внимание: Портал в [Арену Смерти] закрылся! Возрадуйтесь!") 

end

function after_player_login_starena13(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "Внимание: В Великом Синем Океане ["..posx..","..posy.."] появился портал в [Арену Смерти].") --Объявление    

end


--УГУЪјмІвЅшИлМхјю
--·µ»ШЦµЈє0Ј¬І»ВъЧгЅшИлМхјюЎЈ1Ј¬іЙ№¦ЅшИлЎЈ
function check_can_enter_starena13( role, copy_mgr )


end

function begin_enter_starena13(role, copy_mgr) 
		SystemNotice(role,"Вы вошли на [Арену Смерти].") 
		MoveCity(role, "PvP Zone")
end 

--------------------------------------------------------------------------
--									--
--				  Кентуки				--
--				 					--
--				by SimplePRO				--
--									--
--------------------------------------------------------------------------
function config_entry(entry)
	SetMapEntryEntiID(entry, 2492,1) 
end 

function after_create_entry(entry)
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	local EntryName = " Кентуки 2 "
	SetMapEntryEventName( entry, EntryName )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: В глубинах Кентуки 1 по координатам "..posx..","..posy.." образовался таинственный портал. ")
end

function after_destroy_entry_kyjj_2(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function check_can_enter_kyjj_2( role, copy_mgr )
	if Kill_Kyjj[1] == 0 then
		SystemNotice(role,"Дух Войны запечатал врата. ")
		return 0
	end
		return 1
end

function begin_enter_kyjj_2(role, copy_mgr) 
	SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\202\229\237\242\243\234\232 2]")
	MoveCity(role, "\193\240\229\236\255 \194\229\240\251 2")
end

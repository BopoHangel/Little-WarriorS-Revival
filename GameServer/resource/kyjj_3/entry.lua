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
	local EntryName = " Кентуки 3 "
	SetMapEntryEventName( entry, EntryName )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: В глубинах Кентуки 2 по координатам "..posx..","..posy.." образовался таинственный портал. ")
end

function after_destroy_entry_kyjj_3(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function check_can_enter_kyjj_3( role, copy_mgr )
	if Kill_Kyjj[2] == 0 then
		SystemNotice(role,"Дух Джунглей запечатал врата. ")
		return 0
	end
		return 1
end

function begin_enter_kyjj_3(role, copy_mgr) 
	SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\202\229\237\242\243\234\232 3]")
	MoveCity(role, "\193\240\229\236\255 \194\229\240\251 3")
end

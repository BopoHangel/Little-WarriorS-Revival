function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)

end 

function after_create_entry(entry) 

    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "������ �������� "
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("��������: � ������ �������� "["..posx..","..posy.."]" ��������� ����� � ������� 18!")

end

function after_destroy_entry_hell4(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("Announcement: Challenge for today has ended.") 

end

function after_player_login_hell4(entry, player_name)

end


function check_can_enter_hell4( role, copy_mgr )

	local i=0

	for i=10,17,1 do

		if CRY[i] == 0 then
			SystemNotice(role,"������ ���� ���������� �����. �� �� ������������ ������.")
			return 0
		end
	end

	return 1


end

function begin_enter_hell4(role, copy_mgr) 
    

		SystemNotice(role,"��� ����� � ������� ��������.")

		MoveCity(role, "\192\225\224\228\228\238\237 18")
	

end 
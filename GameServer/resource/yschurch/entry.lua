function config_entry(entry) 
	SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)

    local EntryName = "������� "
    SetMapEntryEventName( entry, EntryName )
	
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("����������: �������� ������ � �������! ����� ��� ������ ���������� �������!")

end

function after_destroy_entry_yschurch(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("����������: ������ � ������� ��������.") 

end

function after_player_login_yschurch(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "����������: �������� ������ � �������! ����� ��� ������ ���������� �������!") 

end
function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) 

end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)

    local EntryName = "������ ����� ���������� "
    SetMapEntryEventName( entry, EntryName )	
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("��������: � ���������� ������ ["..posx..","..posy.."] �������� ������ � [������ ����� ����������].")

end

function after_destroy_entry_PKmap(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("��������: ������ � [������ ����� ����������] ��������! ������������!") 
end

function after_player_login_PKmap(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "��������: � ���������� ������ ["..posx..","..posy.."] �������� ������ � [������ ����� ����������].") 

end

function begin_enter_PKmap(role, copy_mgr) 
		MoveCity(role, "\193\238\235\252\248\224\255 \224\240\229\237\224")
end
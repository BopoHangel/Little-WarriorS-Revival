--entry.lua � ����� PvP ����� "����� ������"


SetTeamFightMapName("starena13") 

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) --������ �� ����
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --
	
    local EntryName = "����� ������ ^^ " ---�������� �������
    SetMapEntryEventName( entry, EntryName )	
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --
    Notice("��������: � ������� ����� ������ ["..posx..","..posy.."] �������� ������ �� [����� ������].") --���������� � �������.

   

end

function after_destroy_entry_starena13(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("��������: ������ � [����� ������] ��������! ������������!") 

end

function after_player_login_starena13(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "��������: � ������� ����� ������ ["..posx..","..posy.."] �������� ������ � [����� ������].") --����������    

end


--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_starena13( role, copy_mgr )


end

function begin_enter_starena13(role, copy_mgr) 
		SystemNotice(role,"�� ����� �� [����� ������].") 
		MoveCity(role, "PvP Zone")
end 

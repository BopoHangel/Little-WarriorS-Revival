-- ����� ������� ������ ������������� ��������� �����, ����� ��� after_destroy_entry_mjing2
-- ���������� ����� �������� � ������ ���������� 255

function config_entry(entry) 
   SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("������ � ������ 2 ��������, ����������� ����� ������ � ����������� �� �������(2329;2823)!")

end

function after_destroy_entry_mjing2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("������ � ������ 2 ��������!") 

end

function after_player_login_mjing2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)

end
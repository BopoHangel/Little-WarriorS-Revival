function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) 

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)

	local EntryName = " ����� ������� � 70 LvL "
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("����������: � ���������� ������, ������ ����� � ["..posx..","..posy.."] ������ � ����� �������. ������ ���������!")

end

function after_destroy_entry_shalan2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("����������: ������ � ����� ������� �����. ����� ����� ��������� ����������. ������ ���������!") 

end

function after_player_login_shalan2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "����������: � ���������� ������, ������ ����� � ["..posx..","..posy.."] ������ � ����� �������. ������ ���������!")

end


function check_can_enter_shalan2( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "Cannot teleport while setting stall")
		return 0    
	end
	if Lv(role) < 70 then
		SystemNotice(role, "�������� ������ ����� 70 �������(��� ����), ����� ������� � ����� �������!")
		return 0    
	end
	if Lv(role) > 100 then
		SystemNotice(role, "�������� �� ������ ���� ���� 90 ������, ����� ������� � ����� ������� ")
		return 0    
	end
	
	local Num
	Num = CheckBagItem(role,2326)
	if Num < 1 then
		SystemNotice(role, "����������� ����� ����������.")	
		return 0
	end

	local Credit_Shalan2 = GetCredit(role)
	if Credit_Shalan2 < 10 then
		SystemNotice(role, "� ��� �� ������� ���������. �� �� ������ ������ � ����� �������!")
		return 0
	else
		DelCredit(role,10)
		return 1
	end
end


function begin_enter_shalan2(role, copy_mgr)

	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 2326, 1)
	
	if Dbag == 1 then
		SystemNotice(role,"�� ����� � ����� ������� ") 
		MoveCity(role, "\204\232\240\224\230 \216\224\233\242\224\237\224")

	else
	
		SystemNotice(role, "� ��� ��� ����� ����������. �� �� ������ ������� � ����� �������!")
	end
end
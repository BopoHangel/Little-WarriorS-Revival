function config_entry(entry)
	SetMapEntryEntiID(entry,2492,1)

end

function after_create_entry(entry)
	local copy_mgr = GetMapEntryCopyObj(entry, 0)

		local EntryName = " ����� ������ "
		SetMapEntryEventName( entry, EntryName )

	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("����������: � ���������� ������ ��������� ������ � ����� ������! ")

end

function after_destroy_entry_greh1(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("����������: ������ � ����� ������ �����! ")

end

function after_player_login_greh1(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "����������: � ���������� ������ ��������� ������ � ����� ������! ")

end

function check_can_enter_greh1( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )

	if FightingBook_Num <= 0 then
			SystemNotice ( role , "� ��� ������ ���� ������ ������, ����� ����� � ����� ������ " )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end

	if Lv(role) < 45 then
		SystemNotice(role, "�� ������ ���� �� ���� 45 ������, ����� ����� � ����� ������ ")
		return 0    
	end

		
end

function begin_enter_greh1(role, copy_mgr) 
	SystemNotice(role,"�� ����� � ����� ������ ")
	local job = GetChaAttr(role, ATTR_JOB)
	--�������
	if job == 8 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224")
	--�������
	elseif job == 9 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224 1")
	--�������
	elseif job == 12 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224 2")
	--������������
	elseif job == 13 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224 3")
	--��������
	elseif job == 14 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224 4")
	--���������� �����
	elseif job == 16 then
		MoveCity(role, "\211\242\238\239\252 \196\229\236\238\237\224 5")
	end

end
--made by xxPastuhxx--------------------------
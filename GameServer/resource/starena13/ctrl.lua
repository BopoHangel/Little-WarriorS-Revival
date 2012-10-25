-- ��������� ������� ����� ����� ������ (starena13)
-- ��� ������� ������ ������������� ��������� �����

function config(map)
    MapCanSavePos(map, 0) 					-- ����������� ��������� ������� ��������� �� ����� (1 - ��, 0 - ���)
    MapCanPK(map, 0) 						-- ����������� ��������� ������ ���������� (1 - ��, 0 - ���)
    MapCanTeam( map, 0 )					-- ����������� ��������� ������ (1 - ��, 0 - ���)
    MapCopyNum(map, 1) 						-- ���������� ����� ����� (���� �������� �����������, ����������� ������ 1)
    SingleMapCopyPlyNum(map, 300)  				-- ���������� ������� �� �����
    MapType ( map , 3 )						-- ��� �����
    MapCanStall(map , 0)
end

function get_map_entry_pos_starena13()   			-- ������������ ����� ����� (����������)
	local POS_X=942
	local POS_Y=3563
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "magicsea")			-- �����, �� ������� ����������� ����� ����� �� ��� �����
									-- ��������� ������� ������ �����
									-- 2006/10/18/17/0 (���/�����/����/����/������) - ����� ������ ������ �����
									-- 0/2/0 (����/���/������) - ����� �������� �������
									-- 0/0/30 (����/���/������) - ����� �������� �������
									-- 0/0/45 (����/���/������) - ����� ������ �����
    SetMapEntryTime(map, "2006/10/18/17/0", "0/5/0", "0/0/30", "0/0/45") 
end

function after_enter_starena13( role , map_copy )
end

function before_leave_starena13( role )
end

-- ������� ������������� �� ����� ������ �����
function map_copy_run_special_starena13( map_copy ) 
	local HowManyPlayer = GetMapActivePlayer(map_copy)
	if HowManyPlayer >=15 then
	Notice("\194 \192\240\229\237\243 \209\236\229\240\242\232 \231\224\248\235\238 "..HowManyPlayer.." \247\229\235\238\226\229\234 \232 \241\229\233\247\224\241 \237\224\247\237\184\242\241\255 \225\232\242\226\224 \241 \236\238\237\241\242\240\224\236\232 \232\231 \224\228\224 ")
--	Notice("� ����� ������ ����� "..HowManyPlayer.." ������� � ������ ������� ����� � ��������� �� ��� ")

		local Monster2  = CreateChaEx(1114, 6352,  3758,  145, 60, map_copy)
		local Monster3  = CreateChaEx(1114, 6361,  46062, 145, 60, map_copy)
		local Monster4  = CreateChaEx(1143, 5920, 4189, 145, 60, map_copy)
		local Monster5  = CreateChaEx(1143, 5920, 4189, 145, 60, map_copy)
		local Monster6  = CreateChaEx(1153, 6711, 4288, 145, 60, map_copy)
		local Monster7  = CreateChaEx(1153, 6711, 4288, 145, 60, map_copy)
		local Monster8  = CreateChaEx(1157, 6480, 4924, 145, 60, map_copy)
		SetChaLifeTime(Monster2,299050)
		SetChaLifeTime(Monster3,299100)
		SetChaLifeTime(Monster4,299150)
		SetChaLifeTime(Monster5,299200)
		SetChaLifeTime(Monster6,299250)
		SetChaLifeTime(Monster7,299300)
		SetChaLifeTime(Monster8,299350)
	end

end

function map_run_starena13( map )
	
end

function map_copy_before_close_starena13( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem3")
	end
	How_Many_Active = 0
	Money_all = 3000000
	Every_5_minute = 0
end

--��ͼ�ر�ʱִ��
function map_copy_close_starena13( map_copy )
	ClearAllSubMapCha(map_copy)
end


function GiveSpecItem3( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_starena13 = Money_all/How_Many_Active


	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_starena13 )

		return
	end

	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 234324  , 1 , 4 )
		else
			GiveItem ( role , 0 , 234324  , 1 , 4 )
		end
		AddMoney ( role , 0 , Money_starena13 )
		local cha_name = GetChaDefaultName ( role )
		local message = "����������� "..cha_name.." ��(�) �������(�) ".. Money_starena13 .." ������ � .............  "

		SystemNotice(role,message)
		return
	end
end 

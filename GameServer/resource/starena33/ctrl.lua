function config(map)
    MapCanSavePos(map, 0) 					-- ����������� ��������� ������� ��������� �� ����� (1 - ��, 0 - ���)
    MapCanPK(map, 1) 						-- ����������� ��������� ������ ���������� (1 - ��, 0 - ���)
    MapCanTeam( map, 0 )					-- ����������� ��������� ������ (1 - ��, 0 - ���)
    MapCopyNum(map, 1) 						-- ���������� ����� ����� (���� �������� �����������, ����������� ������ 1)
    SingleMapCopyPlyNum(map, 60)  				-- ���������� ������� �� �����
    MapType ( map , 3 )						-- ��� �����
    MapCanStall(map , 0)
end


function get_map_entry_pos_starena33()
	local POS_X=2232
	local POS_Y=2781
	return POS_X , POS_Y
end

function init_entry(map)
	SetMapEntryMapName(map, "garner")			-- �����, �� ������� ����������� ����� ����� �� ��� �����
	SetMapEntryTime(map, "2006/10/18/17/0", "0/6/0", "0/0/20", "0/0/30")   --����� �������� �������
end

function after_enter_starena33( role , map_copy ) --������� ����������� ����� ������ �� �����
	if id_char == 0 then --���� ���������� "�������� �����" �����, ��...
		local statelv = 1  --������� �������
		local statetime = 99999  --����� �������
		local cha_name = GetChaDefaultName(role) --�������� ��� ���������
		Notice ("����� ["..cha_name.."] ������� ����." ) --������� ��������� � ���� ����
		AddState ( role, role, 204, statelv, statetime ) --��������� ������ �����
	end
end

function before_leave_starena33( role ) --������� ����������� ��� ������ ��������� � �����
	RemoveState ( role, 204 ) --�������� ���� �� ������
end

function map_copy_before_close_starena33( map_copy ) --������� ����������� ����� �������� �����
	id_char = 0 --�������� ��������� "�������� �����"
end


function map_copy_first_run_starena33( map_copy )

end

function map_copy_run_starena33( map_copy )

end


function can_open_entry_starena33( map )  
	
end 
--------------------------------------
function map_run_starena33 ( map )
	
   
end



function map_copy_close_starena33 ( map_copy )
end
		

function can_open_entry_starena33( map ) 
end 
function config(map)
    MapCanSavePos(map, 0) 					-- ����������� ��������� ������� ��������� �� ����� (1 - ��, 0 - ���)
    MapCanPK(map, 1) 						-- ����������� ��������� ������ ���������� (1 - ��, 0 - ���)
    MapCanTeam( map, 0 )					-- ����������� ��������� ������ (1 - ��, 0 - ���)
    MapCopyNum(map, 1) 						-- ���������� ����� ����� (���� �������� �����������, ����������� ������ 1)
    SingleMapCopyPlyNum(map, 60)  				-- ���������� ������� �� �����
    MapType ( map , 3 )						-- ��� �����
    MapCanStall(map , 0)
end


function get_map_entry_pos_PKmap()
end

function init_entry(map)		-- �����, �� ������� ����������� ����� ����� �� ��� �����
	--SetMapEntryTime(map, "2006/10/18/17/0", "0/6/0", "0/0/20", "0/0/30")   --����� �������� �������
end

function after_enter_PKmap( role , map_copy )
	if id_char == 0 then --���� ���������� "�������� �����" �����, ��...
		local statelv = 1  --������� �������
		local statetime = 1  --����� �������
		local cha_name = GetChaDefaultName(role) --�������� ��� ���������
		--Notice ("����� ["..cha_name.."] ������� ����. ������ �������� ��� � ����." ) --������� ��������� � ���� ����
		AddState ( role, role, STATE_zhongshen, statelv, statetime ) --��������� ������ �����
	end
end

function before_leave_PKmap( role ) --������� ����������� ��� ������ ��������� � �����
	RemoveState ( role, STATE_zhongshen ) --�������� ���� �� ������
end

function map_copy_before_close_PKmap( map_copy ) --������� ����������� ����� �������� �����
	id_char = 0 --�������� ��������� "�������� �����"
end


function map_copy_first_run_PKmap( map_copy )

end

function map_copy_run_PKmap( map_copy )

end


function can_open_entry_PKmap( map )  
	
end 
--------------------------------------
function map_run_PKmap ( map )
	
   
end



function map_copy_close_PKmap ( map_copy )
end
		

function can_open_entry_PKmap( map ) 
end 
-- ��������� ������� ����� ������ ���� (darkswamp)
-- ��� ������� ������ ������������� ��������� �����

function config(map)
    MapCanSavePos(map, 0) 					-- ����������� ��������� ������� ��������� �� ����� (1 - ��, 0 - ���)
    MapCanPK(map, 1) 						-- ����������� ��������� ������ ���������� (1 - ��, 0 - ���)
    MapCopyNum(map, 1) 						-- ���������� ����� ����� (���� �������� �����������, ����������� ������ 1)
    SingleMapCopyPlyNum(map, 300)  				-- ���������� ������� �� �����
    MapCanTeam(map , 1)						-- ����������� ��������� ������ (1 - ��, 0 - ���)
    MapType ( map , 4 )						-- ��� �����
end

function get_map_entry_pos_darkswamp()   			-- ������������ ����� ����� (����������)
	local POS_X=2037
	local POS_Y=2779
		return POS_X , POS_Y
end


function init_entry(map)
    SetMapEntryMapName(map, "magicsea") 			-- �����, �� ������� ����������� ����� ����� �� ��� �����
									-- ��������� ������� ������ �����
									-- 2005/8/30/0/0 (���/�����/����/����/������) - ����� ������ ������ �����
									-- 0/3/0 (����/���/������) - ����� �������� �������
									-- 0/1/0 (����/���/������) - ����� �������� �������
									-- 0/2/0 (����/���/������) - ����� ������ �����
    SetMapEntryTime(map, "2005/8/30/0/0", "0/3/0", "0/1/0", "0/2/0")
end
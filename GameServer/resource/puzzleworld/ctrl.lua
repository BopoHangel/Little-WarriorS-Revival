-- ��������� ������� ����� ��� ������� (puzzleworld)
-- ��� ������� ������ ������������� ��������� �����

function config(map)
	MapCanSavePos(map, 0)							-- ����������� ��������� ������� ��������� �� ����� (1 - ��, 0 - ���)
	MapCanPK(map, 1) 								-- ����������� ��������� ������ ���������� (1 - ��, 0 - ���)
	MapCopyNum(map, 1)							-- ���������� ����� ����� (���� �������� �����������, ����������� ������ 1)
	SingleMapCopyPlyNum(map, 300)  					-- ���������� ���������� �� �����
	MapCanTeam(map , 1)							-- ����������� ��������� ������ �� ����� (1 - ��, 0 - ���)
	MapType ( map , 4 )							-- ��� �����
end



function get_map_entry_pos_puzzleworld()					-- ������������ ����� ����� (����������)

	local POS_X=910
	local POS_Y=1069
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") 					-- �����, �� ������� ����������� ����� ����� �� ��� �����
											-- ��������� ������� ������ �����
											-- 2005/8/30/0/0 (���/�����/����/����/������) - ����� ������ ������ �����
											-- 0/3/0 (����/���/������) - ����� �������� �������
											-- 0/0/40 (����/���/������) - ����� �������� �������
											-- 0/2/0 (����/���/������) - ����� ������ �����
    SetMapEntryTime(map, "2005/8/30/0/0", "0/3/0", "0/0/40", "0/2/0") 
end
function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    MapCopyStartType(map, 1)
    SingleMapCopyPlyNum(map, 60)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_hell()   --���������� �������

	local POS_X=199
	local POS_Y=941
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "jialebi")   --������ �������
    SetMapEntryTime(map, "2007/1/19/16/0", "0/6/0", "0/2/30", "0/2/30")   --����� �������� �������

end

function after_enter_hell( role , map_copy )

local cha_name=GetChaDefaultName(role)

	SystemNotice ( role, "������������ �����: �������� � ������ ������� <"..cha_name.."> ��... ��� ����� ����� ����!" ) 

end

function before_leave_hell ( role )

end

function map_copy_first_run_hell( map_copy )

end

function map_copy_run_hell( map_copy )


		if CheckMonsterDead ( AZRAEL[5] ) == 1 then
			if CRY[5]==0 then
				local Notice_all = "����: ������� ��������� ��� - ���� ��������. � ����� ��� �� ���-�� ����� ��������, ��� ��������!!!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[5]=1
			end
		end
		
		if CheckMonsterDead ( AZRAEL[6] ) == 1 then
			if CRY[6]==0 then
				local Notice_all = "����: ������ �� ������ ��� ������, �� ���� ���������, ��������� � �������!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[6]=1
			end
		end

		if CheckMonsterDead ( AZRAEL[7] ) == 1 then
			if CRY[7]==0 then
				local Notice_all = "�����: �... � �������� ���������... ����������, ������ ����, ��� ��������! � �� ���� ���� ���������!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[7]=1
			end
		end

		if CheckMonsterDead ( AZRAEL[8] ) == 1 then
			if CRY[8]==0 then
				local Notice_all = "�������: ������ ����, ����� ������ �� ���������� ������������. �� ��� ����������! ����! ����!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[8]=1
			end
		end


				
	if CRY[5]==1 and CRY[6]==1 and CRY[7]==1 and CRY[8]==1 then
		
		if HELLCLOSETIME==9000 then
			Notice ( "������������ �����: ��� ����� ���� ����, ��� ������� ����� ������! �� ������ �� ����� ����������! ���������, ����� ��� ������ ������ �������� ����� 5 �����!")
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = ("��������! ���������� ��������� �������� ����� "..closetime.." ������! ��� �����������, ������� ������!")
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then

			HELLCLOSETIME = 9000
			CRY[5]=0
			CRY[6]=0
			CRY[7]=0
			CRY[8]=0
			CloseMapEntry ( "hell" )
			CloseMapCopy ( "hell" )

		end
	end
end


function map_run_hell( map )

end


function map_copy_close_hell ( map_copy )

			HELLCLOSETIME = 9000
			CRY[5]=0
			CRY[6]=0
			CRY[7]=0
			CRY[8]=0

end

function can_open_entry_hell( map ) 

end 
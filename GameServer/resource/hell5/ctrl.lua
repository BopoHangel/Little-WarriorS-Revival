function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    MapCopyStartType(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_hell5()   --���������� �������

	local POS_X=55
	local POS_Y=33
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "hell4")   --������ �������
    SetMapEntryTime(map, "2007/1/20/22/0", "0/6/0", "0/2/30", "0/2/30")   --����� �������� �������

end

function after_enter_hell5( role , map_copy )

local cha_name=GetChaDefaultName(role)

	SystemNotice ( role, "<"..cha_name.."> ��������������� � ���..." ) 

end

function before_leave_hell5 ( role )

end

function map_copy_first_run_hell5( map_copy )



end

function map_copy_run_hell5( map_copy )


	local hp = GetChaAttr( AZRAEL[19] , ATTR_HP ) 
	local mxhp = GetChaAttr( AZRAEL[19] , ATTR_MXHP )
	local percent = hp/mxhp
	if percent < 0.9 and SPECIALSKILL[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	979, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"������� ������: ���������, ������� ���� �������!")
	end

	if percent < 0.8 and SPECIALSKILL[19]==1 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	980, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"������� ������: ����� �������, ����� �����!")
	end
	if percent < 0.7 and SPECIALSKILL[19]==2 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	981, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"������� ������: ����������� ��������! ������� �� � ������!")
	end
	if percent < 0.6 and SPECIALSKILL[19]==3 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	982, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"������� ������: ����� �������! ������ �� ����� ���� ����������� �������!")
	end
	if percent < 0.5 and SPECIALSKILL[19]==4 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	983, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"������� ������: ������! ���� ����� ������ ��������� �� � �����!")
	end
	if percent < 0.4 and SPECIALSKILL[19]==5 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	984, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"������� ������: �������, ���� ���� �����������!")
	end
	if percent < 0.3 and SPECIALSKILL[19]==6 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	985, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"������� ������: ������! ���� ��� ����� � ���, �, ��� �����!")
	end
	if percent < 0.2 and SPECIALSKILL[19]==7 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	986, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"������� ������: ������! �������� �� ���� ������������!")
	end
	if percent < 0.1 and SPECIALSKILL[19]==8 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	987, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"������� ������: ��� ������ �����! ����� � ����� ����� ������!")
	end




	if CheckMonsterDead ( AZRAEL[19] ) == 1 then
		
		if CRY[19]==0 then
			local Notice_all = "������� ������: �������! ��� ������ ������ �� �������! ����� ����� ������ ����� ��������, �������� � ����! ��������!"
			Notice ( Notice_all )
			CRY[19]=1
			BOSSXYSJ[988] = 4	
			BOSSSJSJ[988] = 4	
			BOSSTJSJ[988] = 4	
			BOSSXZSJ[988] = 4	
			BOSSAYSJ[988] = 4
		end
	end

	if CRY[19]==1  then
		
		if HELLCLOSETIME==9000 then
	
			MapCopyNotice ( map ,"������: � �� ���� ��������, ��� �� ������� ���!")
			MapCopyNotice ( map ,"������: �������, � ���� �������� �����, �������, � ���� ��������� �� ����, � �����-������ �� � ���� ���������� �����!")
			MapCopyNotice ( map ,"������: �, ���������!!!")
			HELLCLOSETIME = HELLCLOSETIME - 240
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime == NOTICETIME[i] then
				local Notice_all = "��������! ���� ������� �������� �������� ����� "..closetime.." ������! ��� �����������, ������!"
				MapCopyNotice ( map_copy , Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then

			HELLCLOSETIME = 9000
			CRY[19]=0
			SPECIALSKILL[19] = 0
			CloseMapEntry ( "hell5" )
			CloseMapCopy ( "hell5" )
		end

	end


end


function map_run_hell5( map )


end


function map_copy_close_hell5 ( map_copy )

			HELLCLOSETIME = 9000
			CRY[19]=0
			SPECIALSKILL[19] = 0

end
function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 10)
    MapCanTeam( map, 1 )
    MapType( map , 3 )
    MapCopyStartType( map , 3 )
	
end

function init_entry(map)
    SetMapEntryMapName(map, "garner")
    SetMapEntryTime(map, "2005/8/30/13/0", "0/0/0", "0/0/0", "0/0/0")

end

function map_copy_run_teampk(map_copy) 
--	local Start_time = GetMapCopyParam2(map_copy , 7)
--	if Start_time> 0 then
--		Start_time = Start_time -1
--		SetMapCopyParam2(map_copy, 7,Start_time)
--		return
--	end
--	if Start_time == 0 then
--	end
	local ply_num = GetMapCopyPlayerNum(map_copy) 
	if ply_num == 0 then 
	    CloseMapCopy ("teampk", GetMapCopyID2(map_copy)) 
	end
	local Map_Start = GetMapCopyParam2(map_copy, 8)
	local Map_Start = Map_Start + 1
	SetMapCopyParam2(map_copy, 8, Map_Start)
	local log_count = 0
	local PKMap_HasPlayers = 0
	local Team1_live = 0
	local Team2_live = 0
	local Team1_Num = GetMapCopyParam2(map_copy, 3)
	local Team2_Num = GetMapCopyParam2(map_copy, 4)
	local Max_PlayerNum = 11
	local Team_type = GetMapCopyParam2(map_copy, 1)
	local Team1_PlayerNum = 0
	local Team2_PlayerNum = 0
	local Team1_PlayerLv = 0
	local Team2_PlayerLv = 0
	
	local Winner_Is = GetMapCopyParam2( map_copy, 5 )
	if Winner_Is == -1 then
		SetMapCopyParam2(map_copy, 6, 11 )
	end
	if Winner_Is > -1 then
		local Time_count = GetMapCopyParam2(map_copy, 6)
		local Time_count = Time_count - 1
		SetMapCopyParam2(map_copy, 6,Time_count)
		
		if Time_count == 0 then
			CloseMapCopy ("teampk", GetMapCopyID2(map_copy))
		end
	end		
	
	BeginGetMapCopyPlayerCha ( map_copy )
	
	for i = 0 ,Max_PlayerNum - 1 , 1 do
		PKMap_HasPlayers = GetMapCopyNextPlayerCha ( map_copy )
		if PKMap_HasPlayers ~= 0 and PKMap_HasPlayers ~= nil then
			local Time_count = GetMapCopyParam2(map_copy, 6)
			local Time_num = Time_count / 5
			log_count = log_count + 1
			if Time_num == math.floor ( Time_num ) then
				SystemNotice ( PKMap_HasPlayers , "����� �����������. ����� ��������� ����� "..Time_count.." ������.")
				if Team_type == 1 then
					local Team_Num_get = GetChaTeamID( PKMap_HasPlayers )
					if Team_Num_get == Winner_Is then
						SystemNotice ( PKMap_HasPlayers , "���� ����� ������� � ���� ����� " )
					end
				end
				if Team_type == 2 then
					local Player = GetChaPlayer( PKMap_HasPlayers )
					local Player_ID_get = GetPlayerID( Player )
					if Player_ID_get == Winner_Is then
						SystemNotice ( PKMap_HasPlayers , "�� ������� � ���� ����� " )
					end
				end
			end
			
				
			local Hp = Hp( PKMap_HasPlayers )		
			local Lv = Lv( PKMap_HasPlayers )
			if Hp > 0 then
				if Team_type == 1 then
					local Team_Num_get = GetChaTeamID( PKMap_HasPlayers )
					if Team_Num_get == 0 then
						LG("teampk","Party ID as 0")
						Map_Start = 0
						SetMapCopyParam2(map_copy, 8, Map_Start)
						return
					end
					if Team1_Num == Team_Num_get then
						Team1_live = Team1_live + 1
						Team1_PlayerNum = Team1_PlayerNum + 1
						Team1_PlayerLv = Team1_PlayerLv + Lv

					elseif Team2_Num == Team_Num_get then
						Team2_live = Team2_live + 1
						Team2_PlayerNum = Team2_PlayerNum + 1
						Team2_PlayerLv = Team2_PlayerLv + Lv
					end
				elseif Team_type == 2 then
					local Player = GetChaPlayer( PKMap_HasPlayers )
					local Player_ID_get = GetPlayerID( Player )
					if Player_ID_get == 0 then
						LG("teampk","Player ID as 0")
						Map_Start = 0
						SetMapCopyParam2(map_copy, 8, Map_Start)
						return
					end
					if Team1_Num == Player_ID_get then
						Team1_live = Team1_live + 1
						Team1_PlayerNum = Team1_PlayerNum + 1
						Team1_PlayerLv = Team1_PlayerLv + Lv
					elseif Team2_Num == Player_ID_get then
						Team2_live = Team2_live + 1
						Team2_PlayerNum = Team2_PlayerNum + 1
						Team2_PlayerLv = Team2_PlayerLv + Lv
					end
				end
				if Time_count == 1 then
					 MoveCity( PKMap_HasPlayers, "Argent Bar" )
				end
			end
		else
			if log_count <=1 and Map_Start == 1 then
				LG("teampk","Members="..log_count )
			end
			if Map_Start == 1 then
--				Notice(" running script for first time")
				SetMapCopyParam2(map_copy , 11 ,Team1_PlayerNum )
				SetMapCopyParam2(map_copy , 12 ,Team2_PlayerNum )
				local Team1_Lv = math.floor ( Team1_PlayerLv / Team1_PlayerNum )
				local Team2_Lv = math.floor ( Team2_PlayerLv / Team2_PlayerNum )
				SetMapCopyParam2(map_copy , 9 , Team1_Lv )
				SetMapCopyParam2(map_copy , 10 , Team2_Lv )
--				Notice ("Party 1 member count is"..Team1_PlayerNum)
--				Notice ("Party 2 member count is"..Team2_PlayerNum)
--				Notice ("Party 1 average level as"..Team1_Lv)
--				Notice ("Party 2 average level as"..Team2_Lv)
			end
			if Team1_live == 0 and Team2_live > 0 and Winner_Is == -1 then
				SetMapCopyParam2(map_copy, 5, Team2_Num )
			end
			
			if Team1_live > 0 and Team2_live == 0 and Winner_Is == -1 then
				SetMapCopyParam2(map_copy, 5, Team1_Num )
			end
			return
		end
			
	end


end 


function before_leave_teampk ( role , map_copy )
--	SystemNotice (role , "leaving")
	local Cha = TurnToCha( role ) 
	local Winner_Is = GetMapCopyParam2( map_copy, 5 )
	local Cha_TeamID = GetChaTeamID ( Cha )
	local Player = GetChaPlayer( Cha )
	local Cha_ID = GetPlayerID( Player )
	local PK_type = GetMapCopyParam2( map_copy , 1 )
	local Team1_ID = GetMapCopyParam2( map_copy , 3 )
	local Team2_ID = GetMapCopyParam2( map_copy , 4 )
	local base_rongyu = 2
	local rongyu_dif = 0
	local Team1_Lv = GetMapCopyParam2( map_copy , 9 )
	local Team2_Lv = GetMapCopyParam2( map_copy , 10)
	local Team1_PlayerNum = GetMapCopyParam2( map_copy , 11 )
	local Team2_PlayerNum = GetMapCopyParam2( map_copy , 12 )
	
	local Team1_Rongyu_get = ( base_rongyu * Team2_PlayerNum )
	local Team2_Rongyu_get = ( base_rongyu * Team1_PlayerNum )
	local Team1_Lv_dif = Team1_Lv - Team2_Lv
	local Team2_Lv_dif = Team2_Lv - Team1_Lv
	
	local Rongyu_get = 0
	local Player_Lv_dif = 0
		
--	SystemNotice(role , "Party 1 average level="..Team1_Lv)
--	SystemNotice(role , "2 Person Average Level="..Team2_Lv)
--	SystemNotice(role , "Party 1 Member Count="..Team1_PlayerNum)
--	SystemNotice(role , "Party 2 member count="..Team2_PlayerNum)
	if PK_type == 1 then
--		SystemNotice ( role , "It is Party PK")
		if Cha_TeamID == Team1_ID then
			if Winner_Is == Cha_TeamID then
				Rongyu_get = Team1_Rongyu_get
			else
				Rongyu_get = Team2_Rongyu_get
			end
			Player_Lv_dif = Team1_Lv_dif
		elseif Cha_TeamID == Team2_ID then
			if Winner_Is == Cha_TeamID then
				Rongyu_get = Team2_Rongyu_get
			else
				Rongyu_get = Team1_Rongyu_get
			end
			Player_Lv_dif = Team2_Lv_dif
		else
			LG("teampk","leave party ID error" )
			return
		end
		local rongyu_add = 0
		
		if Player_Lv_dif > 0 then
			if Winner_Is == Cha_TeamID then 
				rongyu_add = math.floor ( Rongyu_get / math.floor ( (  Player_Lv_dif + 10 )/10 ) )
			else
--				SystemNotice(role , "Calculating defeat Honor")
				rongyu_add = math.floor ( Rongyu_get * math.min( 3 , math.floor ( (  Player_Lv_dif + 10 )/10 ) ) )
--				SystemNotice(role , "Defeat Honor point"..rongyu_add)
			end
		end
		if Player_Lv_dif < 0 then
			if Winner_Is == Cha_TeamID then
				rongyu_add = math.floor ( Rongyu_get * -1 * math.max ( -3 , math.floor ( (  Player_Lv_dif - 10 )/10 ) ) )
			else
--				SystemNotice(role , "Calculating defeat Honor")
				rongyu_add = math.floor ( Rongyu_get * -1 / math.floor ( (  Player_Lv_dif - 10 )/10 ) )
--				SystemNotice(role , "Defeat Honor point"..rongyu_add)
			end
		end
		
		if Player_Lv_dif ==  0 then
			rongyu_add = Rongyu_get
		end

		if Winner_Is == Cha_TeamID then
			local RYZ_Num = 0
			RYZ_Num = CheckBagItem( role,3849 )

			if RYZ_Num == 0 then
				return
			elseif RYZ_Num > 1 then
				LG("RYZ_PK","Have more than 1 Mark of Honor")
				return
			end
			local Cha_RYZ = GetChaItem2 ( Cha , 2 , 3849 )
			local attrtype = ITEMATTR_VAL_STA
			local attrtype_Rongyu = ITEMATTR_VAL_STR
			local num = 1
			local Rongyu = rongyu_add
--			SystemNotice ( role , "Victory increases victory count")
			Add_ItemAttr_RYZ ( role , Cha_RYZ , attrtype , num )
			SystemNotice ( role , "������! �������� ����� �����:"..Rongyu )
			Add_ItemAttr_RYZ ( role , Cha_RYZ , attrtype_Rongyu , Rongyu )
		else
			local RYZ_Num = 0
			RYZ_Num = CheckBagItem( role,3849 )

			if RYZ_Num == 0 then
				return
			elseif RYZ_Num > 1 then
				LG("RYZ_PK","Have more than 1 Mark of Honor")
				return
			end
			local Cha_RYZ = GetChaItem2 ( Cha , 2 , 3849 )
			local attrtype_Rongyu = ITEMATTR_VAL_STR
			local Rongyu = -1 * rongyu_add
			SystemNotice ( role ,"���������! �������� ����� �����:"..rongyu_add )
			Add_ItemAttr_RYZ ( role , Cha_RYZ , attrtype_Rongyu , Rongyu )
		end
	elseif PK_type == 2 then
--		SystemNotice ( role , "It is personal challenge" )
		if Cha_ID == Team1_ID then
--			SystemNotice(role , "I belong to Party 1")
			Rongyu_get = Team1_Rongyu_get
			Player_Lv_dif = Team1_Lv_dif
		elseif Cha_ID == Team2_ID then
--			SystemNotice ( role , "I belonged to Party 2")
			Rongyu_get = Team2_Rongyu_get
			Player_Lv_dif = Team2_Lv_dif
		else
--			SystemNotice(role ,"I am a Spirit")
			LG("teampk","leave player ID error" )
			return
		end
--		SystemNotice(role , "Prepare to determine level")
--		SystemNotice(role , "Player_Lv_dif="..Player_Lv_dif)
		local rongyu_add = 0
		
		if Player_Lv_dif > 0 then
--			SystemNotice(role ,"Bullied low level?")
			if Winner_Is == Cha_ID then 
				rongyu_add = math.floor ( Rongyu_get / math.floor ( (  Player_Lv_dif + 10 )/10 ) )
			else
				rongyu_add = math.floor ( Rongyu_get * math.min ( 3 ,math.floor ( (  Player_Lv_dif + 10 )/10 ) ) )
			end
		end
		if Player_Lv_dif < 0 then
--			SystemNotice(role , "Killed by high level?")
			if Winner_Is == Cha_ID then
				rongyu_add = math.floor ( Rongyu_get * -1 * math.max ( -3 , math.floor ( (  Player_Lv_dif - 10 )/10 ) ) )
			else
				rongyu_add = math.floor ( Rongyu_get * -1 / math.floor ( (  Player_Lv_dif - 10 )/10 ) )
			end
		end
		if Player_Lv_dif == 0 then
--			SystemNotice(role , "What a coincidence? Same level?")
			rongyu_add = Rongyu_get
		end
	
		if Winner_Is == Cha_ID then
--			SystemNotice(role ,"Actually I do not want to win")
			local RYZ_Num = 0
			RYZ_Num = CheckBagItem( role,3849 )

			if RYZ_Num == 0 then
				return
			elseif RYZ_Num > 1 then
				LG("RYZ_PK","Have more than 1 Mark of Honor")
				return
			end
			local Cha_RYZ = GetChaItem2 ( Cha , 2 , 3849 )
			local attrtype = ITEMATTR_VAL_STA
			local attrtype_Rongyu = ITEMATTR_VAL_STR
			local num = 1
			local Rongyu = rongyu_add
--			SystemNotice ( role , "Victory increases victory count")
			Add_ItemAttr_RYZ ( role , Cha_RYZ , attrtype , num )
			SystemNotice ( role , "������! �������� ����� �����:"..Rongyu)
			Add_ItemAttr_RYZ ( role , Cha_RYZ , attrtype_Rongyu , Rongyu )
		else
--			SystemNotice(role ,"I let him win on purpose")
			local RYZ_Num = 0
			RYZ_Num = CheckBagItem( role,3849 )

			if RYZ_Num == 0 then
				return
			elseif RYZ_Num > 1 then
				LG("RYZ_PK","Have more than 1 Mark of Honor")
				return
			end
			local Cha_RYZ = GetChaItem2 ( Cha , 2 , 3849 )
			local attrtype_Rongyu = ITEMATTR_VAL_STR
			local Rongyu = -1 * rongyu_add
			SystemNotice ( role ,"���������! �������� ����� �����:"..rongyu_add)
			Add_ItemAttr_RYZ ( role , Cha_RYZ , attrtype_Rongyu , Rongyu )
		end
	end
end

function after_enter_teampk ( role , map_copy )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num == 0 then
		return
	elseif RYZ_Num > 1 then
		LG("RYZ_PK","Have more than 1 Mark of Honor")
		return
	end

	local Cha_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_CON
	local num = 1
--	SystemNotice ( role , "Increases Battle count" )
	Add_ItemAttr_RYZ ( role , Cha_RYZ , attrtype , num )
end
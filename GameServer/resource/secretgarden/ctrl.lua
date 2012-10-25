--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    MapCopyStartType(map, 1) --���õ�ͼ������ʼ
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 2 )
end


function get_map_entry_pos_secretgarden()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=832
	local POS_Y=3760
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "magicsea") --������ڵ�λ�ã���ͼ�������꣨�ף���
    SetMapEntryTime(map, "2005/8/30/19/0", "1/0/0", "0/2/0", "0/2/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end

function after_enter_secretgarden( role , map_copy )
    local map_copy = GetChaMapCopy(role)
    local RedSide_GuildID, BlueSide_GuildID
    RedSide_GuildID = GetMapCopyParam2(map_copy, 3 )
    BlueSide_GuildID = GetMapCopyParam2(map_copy, 4 )
    
	if RedSide_GuildID == GetChaGuildID( role ) then
		SetChaSideID(role, 2)
	end
	if BlueSide_GuildID == GetChaGuildID( role ) then
			SetChaSideID(role, 1)
	end
end

function before_leave_secretgarden ( role )
	local Cha = TurnToCha(role) 
	local i = 0
	local j = 0
	for i = 0 , PK_BagItemDelCheckNum ,1 do
		local j = RemoveChaItem ( Cha ,PK_BagItemDelCheck_ID[i],0,0,-1,2,1 )
		if j == 0 then 
		LG("RemoveChaItem","Failed")
		end
	end
end

function map_copy_first_run_secretgarden( map_copy )
    local RedSide_GuildID, BlueSide_GuildID
    RedSide_GuildID = GetMapCopyParam2(map_copy, 3 )
    BlueSide_GuildID = GetMapCopyParam2(map_copy, 4 )

    local GuildName = GetGuildName( BlueSide_GuildID )
    SetChaMotto ( BlueSide_BaseRole , GuildName )

    GuildName = GetGuildName( RedSide_GuildID )
    SetChaMotto ( RedSide_BaseRole , GuildName )

end

function map_copy_run_secretgarden( map_copy )
	if PK_Win_CountNum == 60 then
		local RedSide_GuildID, BlueSide_GuildID
		RedSide_GuildID = GetMapCopyParam2(map_copy, 3 )
		BlueSide_GuildID = GetMapCopyParam2(map_copy, 4 )

		local GuildName_Red = GetGuildName( RedSide_GuildID )
		local GuildName_Blue = GetGuildName ( BlueSide_GuildID )
		if CheckMonsterDead ( BlueSide_BaseRole ) == 1 then
			
			local Notice_all = "Congratulates \"["..GuildName_Red.."]\" Guild has defeated \"["..GuildName_Blue.."]\" Guild! Let us congratulate them on their victory!"
			Notice ( Notice_all )
			--LG( "GHZ_WINER" ,GuildName_Red, GuildName_Blue)
			PK_Win_CountNum = PK_Win_CountNum - 1
			PK_JJHY_Winner = GuildName_Red
			PK_JJHY_Loser = GuildName_Blue
			SetMapCopyParam2(map_copy, 5, 1) --�췽ʤ��

		end

		if CheckMonsterDead ( RedSide_BaseRole ) == 1 then
			local Notice_all = "Congratulates \"["..GuildName_Blue.."]\" Guild has defeated \"["..GuildName_Red.."]\" guild, the truth has proved that \"["..GuildName_Blue.."]\" Guild is the real victor! Let us congratulates them!"
			Notice ( Notice_all )
			--LG( "GHZ_WINER" ,GuildName_Blue, GuildName_Red)
			PK_Win_CountNum = PK_Win_CountNum - 1
			PK_JJHY_Winner = GuildName_Blue
			PK_JJHY_Loser = GuildName_Red
			SetMapCopyParam2(map_copy, 5, 2) --����ʤ��
		end
		
		if CheckMonsterDead ( BlueSide_LCRole ) == 1 then
			if BlueSide_LCNotice == 0 then
				local Notice_all = "["..GuildName_Blue.."]'s Granary has been destroyed, defense of base is greatly reduced"
				Notice ( Notice_all )
				AddState( BlueSide_BaseRole , BlueSide_BaseRole , STATE_PKLC, 10 , -1 )
				BlueSide_LCNotice = 1
			end
		end
		
		if CheckMonsterDead ( RedSide_LCRole ) == 1 then
			if RedSide_LCNotice == 0 then
				local Notice_all = "["..GuildName_Red.."]'s Granary has been destroyed, defense of base is greatly reduced"
				Notice ( Notice_all )
				AddState( RedSide_BaseRole , RedSide_BaseRole , STATE_PKLC, 10 , -1 )
				RedSide_LCNotice = 1
			end
			
		end

		if CheckMonsterDead ( BlueSide_DYKRole ) == 1 then
			if BlueSide_DYKNotice == 0 then
				local Notice_all = "["..GuildName_Blue.."]'s ammunition warehouse has been destroyed, attack of base is greatly reduced"
				Notice ( Notice_all )
				AddState( BlueSide_BaseRole , BlueSide_BaseRole , STATE_PKDYK, 10 , -1 )
				BlueSide_DYKNotice = 1
			end
		end

		if CheckMonsterDead ( RedSide_DYKRole ) == 1 then
			if RedSide_DYKNotice == 0 then
				local Notice_all = "["..GuildName_Red.."]'s ammunition warehouse has been destroyed, attack of base is greatly reduced"
				Notice ( Notice_all )
				AddState( RedSide_BaseRole , RedSide_BaseRole , STATE_PKDYK, 10 , -1 )
				RedSide_DYKNotice = 1
			end		
		end
	else
		
		local Count = PK_Win_CountNum / 5
		if Count == math.floor ( Count ) then
			local Notice_all = "Congratulates \"["..PK_JJHY_Winner.."]\" Guild has defeated \"["..PK_JJHY_Loser.."]\"Guild, [Garden of Edel] will be"..PK_Win_CountNum.." secs will close"
			Notice ( Notice_all )
		end
		PK_Win_CountNum = PK_Win_CountNum - 1
		if PK_Win_CountNum == 0 then
				PK_Win_CountNum = 60
				CloseMapEntry ( "secretgarden" )
				CloseMapCopy ( "secretgarden" )
				
		end
	end
end

--ÿ5��ִ��һ�ε�
function map_run_secretgarden( map )
	local GuildLevel = 0
	GuildLevel = GetFightGuildLevel ( )
	if GuildLevel > 0 and GuildLevel < 4 then
		if GuildLevel ~= ReadyToFight then
			EndGuildBid ( GuildLevel )
			ReadyToFight = GuildLevel
		end
	end
end

--��ͼ�ر�ʱִ��
function map_copy_close_secretgarden ( map_copy )
	local winner = 	GetMapCopyParam2( map_copy, 5 )
	local RedSide_GuildID = GetMapCopyParam2(map_copy, 3 )
	local BlueSide_GuildID = GetMapCopyParam2(map_copy, 4 )
	--local GuildName_Red = GetGuildName( RedSide_GuildID )
	--local GuildName_Blue = GetGuildName ( BlueSide_GuildID )

	if winner == 1 then
		EndGuildChallenge ( RedSide_GuildID , BlueSide_GuildID , 1 )
		LG( "PK_JJHY","Victory to the Defending Champion" )
	elseif winner == 2 then
		EndGuildChallenge ( RedSide_GuildID , BlueSide_GuildID , 0 )
		LG( "PK_JJHY","Victory to the Challenger" )
	elseif winner == 0 then
		EndGuildChallenge ( RedSide_GuildID , BlueSide_GuildID , 1 )
		LG( "PK_JJHY","Victory to the Defending Champion" )
		--local Notice_all = "��ϲ"["..GuildName_Red.."]"�����ڹ�����ս����սʤ��"["..GuildName_Blue.."]"���ᣬף�������ڼ��ҵ���ս��������ɹ���"
		--Notice ( Notice_all )
	else
		LG( "PK_JJHY","Victory determination error" )
	end
end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_secretgarden( map ) 
--	local time = GetTickCount ( ) 
	local Now_Week = GetNowWeek()
	if Now_Week >=5 and Now_Week < 7 then
		return 1
	end

	if Now_Week == 0 then
		return 1
	end

	return 0 
end 
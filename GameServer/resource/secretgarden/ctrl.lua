--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    MapCopyStartType(map, 1) --设置地图立即开始
    SingleMapCopyPlyNum(map, 300)   --设置一个副本的玩家数
    MapCanTeam(map , 1)
    MapType ( map , 2 )
end


function get_map_entry_pos_secretgarden()   --设置入口的位置的坐标（坐标（米））

	local POS_X=832
	local POS_Y=3760
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "magicsea") --设置入口的位置（地图名，坐标（米））
    SetMapEntryTime(map, "2005/8/30/19/0", "1/0/0", "0/2/0", "0/2/0") --设置入口的时间，地图对象，首次开启时间（年/月/日/时/分），以后再次开启的间隔（日/时/分，全０表示只有首次开启），每次开启到入口消失的间隔（日/时/分，全０表示永不消失），每次开启到地图关闭的间隔（日/时/分，全０表示永不关闭）。。

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
			SetMapCopyParam2(map_copy, 5, 1) --红方胜利

		end

		if CheckMonsterDead ( RedSide_BaseRole ) == 1 then
			local Notice_all = "Congratulates \"["..GuildName_Blue.."]\" Guild has defeated \"["..GuildName_Red.."]\" guild, the truth has proved that \"["..GuildName_Blue.."]\" Guild is the real victor! Let us congratulates them!"
			Notice ( Notice_all )
			--LG( "GHZ_WINER" ,GuildName_Blue, GuildName_Red)
			PK_Win_CountNum = PK_Win_CountNum - 1
			PK_JJHY_Winner = GuildName_Blue
			PK_JJHY_Loser = GuildName_Red
			SetMapCopyParam2(map_copy, 5, 2) --蓝方胜利
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

--每5秒执行一次的
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

--地图关闭时执行
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
		--local Notice_all = "恭喜"["..GuildName_Red.."]"公会在公会挑战赛中战胜了"["..GuildName_Blue.."]"公会，祝贺他们在激烈的挑战赛中卫冕成功。"
		--Notice ( Notice_all )
	else
		LG( "PK_JJHY","Victory determination error" )
	end
end
		
--地图开关判断——————————————————————————————————————————

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
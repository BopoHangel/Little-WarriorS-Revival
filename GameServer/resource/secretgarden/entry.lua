--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,4) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local guild_lv = GetFightGuildLevel() 
    local RedSide_GuildID, BlueSide_GuildID = GetFightGuildID(guild_lv) 
    
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口
    SetMapCopyParam(copy_mgr, 1, 3) --在第一个位置存入分边类型
    SetMapCopyParam(copy_mgr, 2, 2) --在第二个位置存入分边数
    SetMapCopyParam(copy_mgr, 3, RedSide_GuildID) 
    SetMapCopyParam(copy_mgr, 4, BlueSide_GuildID)
    SetMapCopyParam(copy_mgr, 5, 0) --在第5个位置放入胜负关系初值
    FinishSetMapEntryCopy(entry, 1) 

    local RedSideName = GetGuildName( RedSide_GuildID ) 
    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    local EntryName = "Guild War: ["..RedSideName.."]  VS  ["..BlueSideName.."]"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("Announcement: Guild War challenge has started! Red defending champion: ["..RedSideName.."]. Blue challenger: ["..BlueSideName.."]. Members from both guild can go through the portal in Magical Ocean at ("..posx..","..posy..") to enter Garden of Edel for Guild War challenge.") --通知本组服务器的所有玩家

end

function after_destroy_entry_secretgarden(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("Announcement: Challenge for today has ended.") 

end

function after_player_login_secretgarden(entry, player_name)
    local copy_mgr = GetMapEntryCopyObj(entry, 1) 
    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )
    local RedSideName = GetGuildName( RedSide_GuildID ) 
    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    ChaNotice(player_name, "Announcement: Guild War challenge has started! Red defending champion: ["..RedSideName.."]. Blue challenger: ["..BlueSideName.."]. Members from both guild can go through the portal in Magical Ocean at ("..posx..","..posy..") to enter Garden of Edel for Guild War challenge.") --通知本组服务器的所有玩家

end

--用于检测进入条件
--返回值：0，不满足进入条件。1，成功进入。
function check_can_enter_secretgarden( role, copy_mgr )
	local Cha = TurnToCha(role)

    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )


	if RedSide_GuildID == 0 or BlueSide_GuildID == 0 then
		SystemNotice ( role , "Sorry, the battle cannot begin without any challenging guild" )
		return 0
	end

	if RedSide_GuildID == GetChaGuildID(Cha) then

		return 1
	
	else
		if BlueSide_GuildID == GetChaGuildID(Cha) then

			return 1

		else
			SystemNotice(role,"Sorry, you do not belong to either guild which are involved in the war.")
			return 0

		end

	end
end

function begin_enter_secretgarden(role, copy_mgr) 
    
	local Cha = TurnToCha(role)

    local RedSide_GuildID, BlueSide_GuildID
    RedSide_GuildID = GetMapCopyParam(copy_mgr, 3)
    BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4)

	if RedSide_GuildID == GetChaGuildID(Cha) then

		SystemNotice(role,"Entering [Garden of Edel]")
		MoveCity(role, "\202\240\224\241\237\224\255 \241\242\238\240\238\237\224")
	
	else
		if BlueSide_GuildID == GetChaGuildID(Cha) then

			SystemNotice(role,"Entering [Garden of Edel]")
			MoveCity(role, "\209\232\237\255\255 \241\242\238\240\238\237\224")
                end
	end

end 
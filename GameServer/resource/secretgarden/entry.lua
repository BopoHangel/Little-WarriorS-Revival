--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,4) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local guild_lv = GetFightGuildLevel() 
    local RedSide_GuildID, BlueSide_GuildID = GetFightGuildID(guild_lv) 
    
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    SetMapCopyParam(copy_mgr, 1, 3) --�ڵ�һ��λ�ô���ֱ�����
    SetMapCopyParam(copy_mgr, 2, 2) --�ڵڶ���λ�ô���ֱ���
    SetMapCopyParam(copy_mgr, 3, RedSide_GuildID) 
    SetMapCopyParam(copy_mgr, 4, BlueSide_GuildID)
    SetMapCopyParam(copy_mgr, 5, 0) --�ڵ�5��λ�÷���ʤ����ϵ��ֵ
    FinishSetMapEntryCopy(entry, 1) 

    local RedSideName = GetGuildName( RedSide_GuildID ) 
    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    local EntryName = "Guild War: ["..RedSideName.."]  VS  ["..BlueSideName.."]"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Announcement: Guild War challenge has started! Red defending champion: ["..RedSideName.."]. Blue challenger: ["..BlueSideName.."]. Members from both guild can go through the portal in Magical Ocean at ("..posx..","..posy..") to enter Garden of Edel for Guild War challenge.") --֪ͨ������������������

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

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "Announcement: Guild War challenge has started! Red defending champion: ["..RedSideName.."]. Blue challenger: ["..BlueSideName.."]. Members from both guild can go through the portal in Magical Ocean at ("..posx..","..posy..") to enter Garden of Edel for Guild War challenge.") --֪ͨ������������������

end

--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
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
print("‡ Јаг§Є  ItemGetMission.lua")


function CheckMisChaBoat ( role , ChaType )						
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	
	if Cha_Boat == nil then
		ChaIsBoat = 1
	else
		ChaIsBoat = 2
	end

	if ChaIsBoat == ChaType then
		return 1
	else
		return 0
	end
end

function CheckChaPos ( role , Cha_x_min , Cha_x_max , Cha_y_min , Cha_y_max , MapName )	

	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat ~= nil then
		role = Cha_Boat
	end

	local pos_x , pos_y = GetChaPos ( role )
	local map_name = GetChaMapName ( role )


	if MapName ~= -1 then 

		if map_name ~= MapName then
			return 0 
		end 
	end 

	if pos_x < Cha_x_min or pos_x > Cha_x_max then
	
		return 0
	end

	if pos_y < Cha_y_min or pos_y > Cha_y_max then
		return 0
	end

	return 1
end

function CheckChaGuildType ( role , GuildType , CheckType )				
	
	local Cha_GuildID = GetChaGuildID( role )
	

	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		return 0
	end


	if CheckType == 1 then
		if ChaGuildType_Get == GuildType then
			return 1
		else
			return 0
		end
	elseif CheckType == 2 then
		if ChaGuildType_Get == GuildType then
			return 0
		else
			return 1
		end
	else
		return 0
	end

end

function MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local Have_Record	= 0
	local No_Record		= 0
	local Have_Mission	= 0
	local No_Mission	= 0
	
	
	if HasRecordID ~= -1 then
		Have_Record	= HasRecord( role , HasRecordID )
		if Have_Record ~= LUA_TRUE then
			SystemNotice ( role , HasRecordNotice )
			return 0
		end
	end


	if NoRecordID ~= -1 then
		No_Record	= NoRecord( role , NoRecordID )
		if No_Record ~= LUA_TRUE then
			SystemNotice ( role , NoRecordNotice )
			return 0
		end
	end



	if HasMissionID ~= -1 then
		Have_Mission	= HasMission( role , HasMissionID )
		if Have_Mission ~= LUA_TRUE then
			SystemNotice ( role , HasMissionNotice )
			return 0
		end
	end


	if No_MissionID ~= -1 then
		No_Mission	= HasMission( role , No_MissionID )
		if No_Mission == LUA_TRUE then
			SystemNotice ( role , NoMissionNotice )
			return 0
		end
	end
	
	return 1

end

function ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	local Is_BoatOrMan = 0
	local At_Pos = 0
	local CheckGuild_Type = 0

	if ChaType ~= -1 then
		Is_BoatOrMan = CheckMisChaBoat( role , ChaType )
		if Is_BoatOrMan == 0 then
			SystemNotice ( role , CheckBoatNotice )
			return 0
		end
	end

	if Need_CheckPos == 1 then
		At_Pos = CheckChaPos ( role , Cha_x_min , Cha_x_max , Cha_y_min , Cha_y_max , MapName )
		if At_Pos == 0 then
			SystemNotice ( role , CheckPosNotice )
			return 0
		end
	end

	if GuildType ~= -1 then
		CheckGuild_Type = CheckChaGuildType ( role , GuildType , CheckType )
		if CheckGuild_Type == 0 then
			SystemNotice ( role , GuildTypeNotice )
			return 0
		end
	end
	
	return 1

end


function ItemUse_LDADYW (role) 

	local HasRecordID	= 270			
	local HasRecordID_1	= -1		
	local NoRecordID	= -1			
	local NoRecordID_1	= -1			
	local HasMissionID	= -1			
	local HasMissionID_1	= -1			
	local No_MissionID	= -1			
	local No_MissionID_1	= -1			
	local ChaType		= -1		
	local Need_CheckPos	= -1			
	local Cha_x_max		= 4096			
	local Cha_x_min		= 0			
	local Cha_y_max		= 4096			
	local Cha_y_min		= 0			
	local MapName		= -1			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"		
	local HasRecordNotice_1  = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"		
	local NoRecordNotice	 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"		
	local NoRecordNotice_1	 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"		
	local HasMissionNotice	 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"		
	local HasMissionNotice_1 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"		
	local NoMissionNotice	 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"		
	local NoMissionNotice_1	 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"		
	local CheckBoatNotice	 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"		
	local CheckPosNotice	 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"		
	local GuildTypeNotice	 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242\224"	
	--local HasRecordNotice	 = "Сувенир Андрея не показывает ответа"		
	--local HasRecordNotice_1  = "Сувенир Андрея не показывает ответа"		
	--local NoRecordNotice	 = "Сувенир Андрея не показывает ответа"		
	--local NoRecordNotice_1	 = "Сувенир Андрея не показывает ответа"		
	--local HasMissionNotice	 = "Сувенир Андрея не показывает ответа"		
	--local HasMissionNotice_1 = "Сувенир Андрея не показывает ответа"		
	--local NoMissionNotice	 = "Сувенир Андрея не показывает ответа"		
	--local NoMissionNotice_1	 = "Сувенир Андрея не показывает ответа"		
	--local CheckBoatNotice	 = "Сувенир Андрея не показывает ответа"		
	--local CheckPosNotice	 = "Сувенир Андрея не показывает ответа"		
	--local GuildTypeNotice	 = "Сувенир Андрея не показывает ответа"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	9	
	local GiveMisson_2	=	8	
	local GiveMisson_0	=	10	
	local ItemID		=	-1	
	local ItemNum		=	1	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet < 1 then
			SystemNotice(role ,"\194 \226\224\248\229\236 \232\237\226\229\237\242\224\240\229 \237\229\242 \236\229\241\242\224")
			--SystemNotice(role ,"В вашем инвентаре нет места")
			UseItemFailed ( role )
			return
		end
	end



	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 
function ItemUse_GLDYS (role) 

	local HasRecordID	= -1			
	local HasRecordID_1	= -1			
	local NoRecordID	= 15			
	local NoRecordID_1	= -1			
	local HasMissionID	= -1			
	local HasMissionID_1	= -1			
	local No_MissionID	= 15			
	local No_MissionID_1	= -1			
	local ChaType		= -1			
	local Need_CheckPos	= -1			
	local Cha_x_max		= 4096			
	local Cha_x_min		= 0			
	local Cha_y_max		= 4096			
	local Cha_y_min		= 0			
	local MapName		= -1			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"		
	local HasRecordNotice_1  = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"		
	local NoRecordNotice	 = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"		
	local NoRecordNotice_1	 = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"		
	local HasMissionNotice	 = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"		
	local HasMissionNotice_1 = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"		
	local NoMissionNotice	 = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"		
	local NoMissionNotice_1	 = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"		
	local CheckBoatNotice	 = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"		
	local CheckPosNotice	 = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"		
	local GuildTypeNotice	 = "\221\242\238 \228\240\229\226\237\232\233 \234\235\254\247 \237\224 \234\238\242\238\240\238\236 \232\231\238\225\240\224\230\184\237 \241\232\236\226\238\235 \225\224\237\234\224 \195\240\238\236\238\227\240\224\228\224"	
--	local HasRecordNotice	 = "Это древний ключ на котором изображён символ банка Громограда"		
--	local HasRecordNotice_1  = "Это древний ключ на котором изображён символ банка Громограда"		
--	local NoRecordNotice	 = "Это древний ключ на котором изображён символ банка Громограда"		
--	local NoRecordNotice_1	 = "Это древний ключ на котором изображён символ банка Громограда"		
--	local HasMissionNotice	 = "Это древний ключ на котором изображён символ банка Громограда"		
--	local HasMissionNotice_1 = "Это древний ключ на котором изображён символ банка Громограда"		
--	local NoMissionNotice	 = "Это древний ключ на котором изображён символ банка Громограда"		
--	local NoMissionNotice_1	 = "Это древний ключ на котором изображён символ банка Громограда"		
--	local CheckBoatNotice	 = "Это древний ключ на котором изображён символ банка Громограда"		
--	local CheckPosNotice	 = "Это древний ключ на котором изображён символ банка Громограда"		
--	local GuildTypeNotice	 = "Это древний ключ на котором изображён символ банка Громограда"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	15	
	local GiveMisson_2	=	15	
	local GiveMisson_0	=	15	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 



function ItemUse_LDADYS (role)

	local HasRecordID	= -1			
	local HasRecordID_1	= -1			
	local NoRecordID	= 16			
	local NoRecordID_1	= -1			
	local HasMissionID	= -1			
	local HasMissionID_1	= -1			
	local No_MissionID	= 16			
	local No_MissionID_1	= -1			
	local ChaType		= -1			
	local Need_CheckPos	= -1			
	local Cha_x_max		= 4096			
	local Cha_x_min		= 0			
	local Cha_y_max		= 4096			
	local Cha_y_min		= 0			
	local MapName		= -1			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"		
	local HasRecordNotice_1  = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"		
	local NoRecordNotice	 = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"		
	local NoRecordNotice_1	 = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"		
	local HasMissionNotice	 = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"		
	local HasMissionNotice_1 = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"		
	local NoMissionNotice	 = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"		
	local NoMissionNotice_1	 = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"		
	local CheckBoatNotice	 = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"		
	local CheckPosNotice	 = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"		
	local GuildTypeNotice	 = "\211 \230\229\235\224\237\232\255 \192\237\228\240\229\255 \229\241\242\252 \237\229\234\238\242\238\240\251\229 \237\229\232\231\226\229\241\242\237\251\229 \228\229\242\224\235\232"	
	--local HasRecordNotice	 = "У желания Андрея есть некоторые неизвестные детали"		
	--local HasRecordNotice_1  = "У желания Андрея есть некоторые неизвестные детали"		
	--local NoRecordNotice	 = "У желания Андрея есть некоторые неизвестные детали"		
	--local NoRecordNotice_1	 = "У желания Андрея есть некоторые неизвестные детали"		
	--local HasMissionNotice	 = "У желания Андрея есть некоторые неизвестные детали"		
	--local HasMissionNotice_1 = "У желания Андрея есть некоторые неизвестные детали"		
	--local NoMissionNotice	 = "У желания Андрея есть некоторые неизвестные детали"		
	--local NoMissionNotice_1	 = "У желания Андрея есть некоторые неизвестные детали"		
	--local CheckBoatNotice	 = "У желания Андрея есть некоторые неизвестные детали"		
	--local CheckPosNotice	 = "У желания Андрея есть некоторые неизвестные детали"		
	--local GuildTypeNotice	 = "У желания Андрея есть некоторые неизвестные детали"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	16	
	local GiveMisson_2	=	16	
	local GiveMisson_0	=	16	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 


function ItemUse_YXYSJY (role) 

	local HasRecordID	= -1			
	local HasRecordID_1	= -1			
	local NoRecordID	= 18			
	local NoRecordID_1	= -1			
	local HasMissionID	= -1			
	local HasMissionID_1	= -1			
	local No_MissionID	= 18			
	local No_MissionID_1	= -1			
	local ChaType		= -1			
	local Need_CheckPos	= -1			
	local Cha_x_max		= 1845			
	local Cha_x_min		= 1841			
	local Cha_y_max		= 1719			
	local Cha_y_min		= 1715			
	local MapName		= "magicsea"			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	local HasRecordNotice_1  = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	local NoRecordNotice	 = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	local NoRecordNotice_1	 = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	local HasMissionNotice	 = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	local HasMissionNotice_1 = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	local NoMissionNotice	 = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	local NoMissionNotice_1	 = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	local CheckBoatNotice	 = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	local CheckPosNotice	 = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	local GuildTypeNotice	 = "\195\228\229 \226\251 \245\238\242\232\242\229 \239\240\232\236\229\237\232\242\252 \237\229\226\232\228\232\236\251\229 \247\229\240\237\232\235\224?"		
	--local HasRecordNotice	 = "Где вы хотите применить невидимые чернила?"		
	--local HasRecordNotice_1  = "Где вы хотите применить невидимые чернила?"		
	--local NoRecordNotice	 = "Где вы хотите применить невидимые чернила?"		
	--local NoRecordNotice_1	 = "Где вы хотите применить невидимые чернила?"		
	--local HasMissionNotice	 = "Где вы хотите применить невидимые чернила?"		
	--local HasMissionNotice_1 = "Где вы хотите применить невидимые чернила?"		
	--local NoMissionNotice	 = "Где вы хотите применить невидимые чернила?"		
	--local NoMissionNotice_1	 = "Где вы хотите применить невидимые чернила?"		
	--local CheckBoatNotice	 = "Где вы хотите применить невидимые чернила?"		
	--local CheckPosNotice	 = "Где вы хотите применить невидимые чернила?"		
	--local GuildTypeNotice	 = "Где вы хотите применить невидимые чернила?"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )

	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	18	
	local GiveMisson_2	=	18	
	local GiveMisson_0	=	18	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 



function ItemUse_RYDKL (role) 

	local HasRecordID	= 287			
	local HasRecordID_1	= -1			
	local NoRecordID	= 20			
	local NoRecordID_1	= -1			
	local HasMissionID	= 19			
	local HasMissionID_1	= -1			
	local No_MissionID	= 20			
	local No_MissionID_1	= -1			
	local ChaType		= -1		
	local Need_CheckPos	= 1			
	local Cha_x_max		= 184500			
	local Cha_x_min		= 184100			
	local Cha_y_max		= 171900			
	local Cha_y_min		= 171500			
	local MapName		= "magicsea"			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""	
	local HasRecordNotice_1  = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		
	local NoRecordNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		
	local NoRecordNotice_1	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		
	local HasMissionNotice	 = "Why don't you look for Jack"		
	local HasMissionNotice_1 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		
	local NoMissionNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		
	local NoMissionNotice_1	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		
	local CheckBoatNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		
	local CheckPosNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		
	local GuildTypeNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )

	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )

	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	20
	local GiveMisson_2	=	20	
	local GiveMisson_0	=	20	
	local ItemID		=	-1	
	local ItemNum		=	1	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet < 1 then
			SystemNotice(role ,"\194 \226\224\248\229\236 \232\237\226\229\237\242\224\240\229 \237\229\242 \236\229\241\242\224")
			--SystemNotice(role ,"В вашем инвентаре нет места")
			UseItemFailed ( role )
			return
		end
	end

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 




function ItemUse_SXTCQ (role) 

	local HasRecordID	= -1			
	local HasRecordID_1	= -1			
	local NoRecordID	= 29			
	local NoRecordID_1	= -1			
	local HasMissionID	= 381			
	local HasMissionID_1	= -1			
	local No_MissionID	= 29			
	local No_MissionID_1	= -1			
	local ChaType		= 2			
	local Need_CheckPos	= 1			
	local Cha_x_max		= 375900			
	local Cha_x_min		= 375500			
	local Cha_y_max		= 125000			
	local Cha_y_min		= 124600			
	local MapName		= "magicsea"			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\206\239\240\229\228\229\235\229\237\232\229 \237\229\243\241\239\229\248\237\238!"		
	local HasRecordNotice_1  = "\206\239\240\229\228\229\235\229\237\232\229 \237\229\243\241\239\229\248\237\238!"		
	local NoRecordNotice	 = "\206\239\240\229\228\229\235\229\237\232\229 \237\229\243\241\239\229\248\237\238!"		
	local NoRecordNotice_1	 = "\206\239\240\229\228\229\235\229\237\232\229 \237\229\243\241\239\229\248\237\238!"		
	local HasMissionNotice	 = "\206\239\240\229\228\229\235\229\237\232\229 \237\229\243\241\239\229\248\237\238!"		
	local HasMissionNotice_1 = "\206\239\240\229\228\229\235\229\237\232\229 \237\229\243\241\239\229\248\237\238!"		
	local NoMissionNotice	 = "\206\239\240\229\228\229\235\229\237\232\229 \237\229\243\241\239\229\248\237\238!"		
	local NoMissionNotice_1	 = "\206\239\240\229\228\229\235\229\237\232\229 \237\229\243\241\239\229\248\237\238!"		
	local CheckBoatNotice	 = "\207\238\228\226\238\228\237\251\233 \228\229\242\229\234\242\238\240 \240\224\225\238\242\224\229\242 \242\238\235\252\234\238 \237\224 \226\238\228\229!"		
	local CheckPosNotice	 = "\206\239\240\229\228\229\235\229\237\232\229 \237\229\243\241\239\229\248\237\238!"		
	local GuildTypeNotice	 = "\206\239\240\229\228\229\235\229\237\232\229 \237\229\243\241\239\229\248\237\238!"	
	--local HasRecordNotice	 = "Определение неуспешно!"		
	--local HasRecordNotice_1  = "Определение неуспешно!"		
	--local NoRecordNotice	 = "Определение неуспешно!"		
	--local NoRecordNotice_1	 = "Определение неуспешно!"		
	--local HasMissionNotice	 = "Определение неуспешно!"		
	--local HasMissionNotice_1 = "Определение неуспешно!"		
	--local NoMissionNotice	 = "Определение неуспешно!"		
	--local NoMissionNotice_1	 = "Определение неуспешно!"		
	--local CheckBoatNotice	 = "Подводный детектор работает только на воде!"		
	--local CheckPosNotice	 = "Определение неуспешно!"		
	--local GuildTypeNotice	 = "Определение неуспешно!"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )

	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	29	
	local GiveMisson_2	=	29	
	local GiveMisson_0	=	29	
	local ItemID		=	-1	
	local ItemNum		=	1	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet < 1 then
			SystemNotice(role ,"\194 \226\224\248\229\236 \232\237\226\229\237\242\224\240\229 \237\229\242 \236\229\241\242\224")
			--SystemNotice(role ,"В вашем инвентаре нет места")
			UseItemFailed ( role )
			return
		end
	end

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 





function ItemUse_RJDYW (role) 

	local HasRecordID	= 290			
	local HasRecordID_1	= -1			
	local NoRecordID	= 21			
	local NoRecordID_1	= -1			
	local HasMissionID	= -1			
	local HasMissionID_1	= -1			
	local No_MissionID	= 21			
	local No_MissionID_1	= -1		
	local ChaType		= -1			
	local Need_CheckPos	= -1			
	local Cha_x_max		= 0			
	local Cha_x_min		= 0			
	local Cha_y_max		= 0			
	local Cha_y_min		= 0			
	local MapName		= -1			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	local HasRecordNotice_1  = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	local NoRecordNotice	 = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	local NoRecordNotice_1	 = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	local HasMissionNotice	 = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	local HasMissionNotice_1 = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	local NoMissionNotice	 = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	local NoMissionNotice_1	 = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	local CheckBoatNotice	 = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	local CheckPosNotice	 = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	local GuildTypeNotice	 = "\199\224\239\232\241\232 \239\243\242\229\248\229\241\242\226\232\255 \232\231 \228\237\229\226\237\232\234\224 \192\237\228\240\229\255"		
	--local HasRecordNotice	 = "Записи путешествия из дневника Андрея"		
	--local HasRecordNotice_1  = "Записи путешествия из дневника Андрея"		
	--local NoRecordNotice	 = "Записи путешествия из дневника Андрея"		
	--local NoRecordNotice_1	 = "Записи путешествия из дневника Андрея"		
	--local HasMissionNotice	 = "Записи путешествия из дневника Андрея"		
	--local HasMissionNotice_1 = "Записи путешествия из дневника Андрея"		
	--local NoMissionNotice	 = "Записи путешествия из дневника Андрея"		
	--local NoMissionNotice_1	 = "Записи путешествия из дневника Андрея"		
	--local CheckBoatNotice	 = "Записи путешествия из дневника Андрея"		
	--local CheckPosNotice	 = "Записи путешествия из дневника Андрея"		
	--local GuildTypeNotice	 = "Записи путешествия из дневника Андрея"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )

	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	21	
	local GiveMisson_2	=	21	
	local GiveMisson_0	=	21	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 






function ItemUse_HL (role) 

	local HasRecordID	= 315			
	local HasRecordID_1	= -1			
	local NoRecordID	= 22			
	local NoRecordID_1	= -1			
	local HasMissionID	= -1			
	local HasMissionID_1	= -1			
	local No_MissionID	= 22		
	local No_MissionID_1	= -1			
	local ChaType		= 2			
	local Need_CheckPos	= -1			
	local Cha_x_max		= 0			
	local Cha_x_min		= 0			
	local Cha_y_max		= 0			
	local Cha_y_min		= 0			
	local MapName		= -1			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\202\238\235\229\241\238 \226\229\240\242\232\242\241\255 \232 \243\234\224\231\251\226\224\229\242 \237\224 \234\238\238\240\228\232\237\224\242\251 (1497, 1707) \226 \192\240\227\229\237\242\229"		
	local HasRecordNotice_1  = "\202\238\235\229\241\238 \226\229\240\242\232\242\241\255 \232 \243\234\224\231\251\226\224\229\242 \237\224 \234\238\238\240\228\232\237\224\242\251 (1497, 1707) \226 \192\240\227\229\237\242\229"		
	local NoRecordNotice	 = "\202\238\235\229\241\238 \226\229\240\242\232\242\241\255 \232 \243\234\224\231\251\226\224\229\242 \237\224 \234\238\238\240\228\232\237\224\242\251 (1497, 1707) \226 \192\240\227\229\237\242\229"		
	local NoRecordNotice_1	 = "\202\238\235\229\241\238 \226\229\240\242\232\242\241\255 \232 \243\234\224\231\251\226\224\229\242 \237\224 \234\238\238\240\228\232\237\224\242\251 (1497, 1707) \226 \192\240\227\229\237\242\229"		
	local HasMissionNotice	 = "\202\238\235\229\241\238 \226\229\240\242\232\242\241\255 \232 \243\234\224\231\251\226\224\229\242 \237\224 \234\238\238\240\228\232\237\224\242\251 (1497, 1707) \226 \192\240\227\229\237\242\229"		
	local HasMissionNotice_1 = "\202\238\235\229\241\238 \226\229\240\242\232\242\241\255 \232 \243\234\224\231\251\226\224\229\242 \237\224 \234\238\238\240\228\232\237\224\242\251 (1497, 1707) \226 \192\240\227\229\237\242\229"		
	local NoMissionNotice	 = "\202\238\235\229\241\238 \226\229\240\242\232\242\241\255 \232 \243\234\224\231\251\226\224\229\242 \237\224 \234\238\238\240\228\232\237\224\242\251 (1497, 1707) \226 \192\240\227\229\237\242\229"		
	local NoMissionNotice_1	 = "\202\238\235\229\241\238 \226\229\240\242\232\242\241\255 \232 \243\234\224\231\251\226\224\229\242 \237\224 \234\238\238\240\228\232\237\224\242\251 (1497, 1707) \226 \192\240\227\229\237\242\229"		
	local CheckBoatNotice	 = "\202\238\236\239\224\241 \232\231\228\224\184\242 \241\226\229\247\229\237\232\229 \234\238\242\238\240\238\229 \243\234\224\231\251\226\224\229\242 \226 \236\238\240\229 \192\240\227\229\237\242\224"			
	local CheckPosNotice	 = "\202\238\235\229\241\238 \226\229\240\242\232\242\241\255 \232 \243\234\224\231\251\226\224\229\242 \237\224 \234\238\238\240\228\232\237\224\242\251 (1497, 1707) \226 \192\240\227\229\237\242\229"		
	local GuildTypeNotice	 = "\202\238\235\229\241\238 \226\229\240\242\232\242\241\255 \232 \243\234\224\231\251\226\224\229\242 \237\224 \234\238\238\240\228\232\237\224\242\251 (1497, 1707) \226 \192\240\227\229\237\242\229"		
	--local HasRecordNotice	 = "Колесо вертится и указывает на координаты (1497, 1707) в Аргенте"		
	--local HasRecordNotice_1  = "Колесо вертится и указывает на координаты (1497, 1707) в Аргенте"		
	--local NoRecordNotice	 = "Колесо вертится и указывает на координаты (1497, 1707) в Аргенте"		
	--local NoRecordNotice_1	 = "Колесо вертится и указывает на координаты (1497, 1707) в Аргенте"		
	--local HasMissionNotice	 = "Колесо вертится и указывает на координаты (1497, 1707) в Аргенте"		
	--local HasMissionNotice_1 = "Колесо вертится и указывает на координаты (1497, 1707) в Аргенте"		
	--local NoMissionNotice	 = "Колесо вертится и указывает на координаты (1497, 1707) в Аргенте"		
	--local NoMissionNotice_1	 = "Колесо вертится и указывает на координаты (1497, 1707) в Аргенте"		
	--local CheckBoatNotice	 = "Компас издаёт свечение которое указывает в море Аргента"			
	--local CheckPosNotice	 = "Колесо вертится и указывает на координаты (1497, 1707) в Аргенте"		
	--local GuildTypeNotice	 = "Колесо вертится и указывает на координаты (1497, 1707) в Аргенте"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )

	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )

	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	22	
	local GiveMisson_2	=	22	
	local GiveMisson_0	=	22	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 





function ItemUse_WNYDYF (role)

	local HasRecordID	= 328		
	local HasRecordID_1	= -1			
	local NoRecordID	= 30			
	local NoRecordID_1	= -1			
	local HasMissionID	= -1			
	local HasMissionID_1	= -1			
	local No_MissionID	= 30		
	local No_MissionID_1	= -1			
	local ChaType		= -1			
	local Need_CheckPos	= -1			
	local Cha_x_max		= 0			
	local Cha_x_min		= 0		
	local Cha_y_max		= 0			
	local Cha_y_min		= 0			
	local MapName		= -1			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "Omni-Antidote Prescription seems to be sleeping"		
	local HasRecordNotice_1  = "Omni-Antidote Prescription seems to be sleeping"		
	local NoRecordNotice	 = "Omni-Antidote Prescription seems to be sleeping"		
	local NoRecordNotice_1	 = "Omni-Antidote Prescription seems to be sleeping"		
	local HasMissionNotice	 = "Omni-Antidote Prescription seems to be sleeping"		
	local HasMissionNotice_1 = "Omni-Antidote Prescription seems to be sleeping"		
	local NoMissionNotice	 = "Omni-Antidote Prescription seems to be sleeping"		
	local NoMissionNotice_1	 = "Omni-Antidote Prescription seems to be sleeping"		
	local CheckBoatNotice	 = "Omni-Antidote Prescription seems to be sleeping"		
	local CheckPosNotice	 = "Omni-Antidote Prescription seems to be sleeping"		
	local GuildTypeNotice	 = "Omni-Antidote Prescription seems to be sleeping"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	30	
	local GiveMisson_2	=	30	
	local GiveMisson_0	=	30	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 






function ItemUse_LZL (role) 

	local HasRecordID	= -1			
	local HasRecordID_1	= -1			
	local NoRecordID	= 24			
	local NoRecordID_1	= -1			
	local HasMissionID	= -1			
	local HasMissionID_1	= -1			
	local No_MissionID	= 24			
	local No_MissionID_1	= -1			
	local ChaType		= -1			
	local Need_CheckPos	= -1			
	local Cha_x_max		= 0			
	local Cha_x_min		= 0			
	local Cha_y_max		= 0			
	local Cha_y_min		= 0			
	local MapName		= -1			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"		
	local HasRecordNotice_1  = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"		
	local NoRecordNotice	 = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"		
	local NoRecordNotice_1	 = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"		
	local HasMissionNotice	 = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"		
	local HasMissionNotice_1 = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"		
	local NoMissionNotice	 = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"		
	local NoMissionNotice_1	 = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"		
	local CheckBoatNotice	 = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"		
	local CheckPosNotice	 = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"		
	local GuildTypeNotice	 = "\206\242 \241\235\229\231\251 \228\240\224\234\238\237\224 \232\241\245\238\228\232\242 \224\243\240\224 \238\245\235\224\230\228\229\237\232\255"	
	--local HasRecordNotice	 = "От слезы дракона исходит аура охлаждения"		
	--local HasRecordNotice_1  = "От слезы дракона исходит аура охлаждения"		
	--local NoRecordNotice	 = "От слезы дракона исходит аура охлаждения"		
	--local NoRecordNotice_1	 = "От слезы дракона исходит аура охлаждения"		
	--local HasMissionNotice	 = "От слезы дракона исходит аура охлаждения"		
	--local HasMissionNotice_1 = "От слезы дракона исходит аура охлаждения"		
	--local NoMissionNotice	 = "От слезы дракона исходит аура охлаждения"		
	--local NoMissionNotice_1	 = "От слезы дракона исходит аура охлаждения"		
	--local CheckBoatNotice	 = "От слезы дракона исходит аура охлаждения"		
	--local CheckPosNotice	 = "От слезы дракона исходит аура охлаждения"		
	--local GuildTypeNotice	 = "От слезы дракона исходит аура охлаждения"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )

	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )

	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	24	
	local GiveMisson_2	=	24	
	local GiveMisson_0	=	24	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 

function ItemUse_BLP (role) 

	local HasRecordID	= -1			
	local HasRecordID_1	= -1			
	local NoRecordID	= -1			
	local NoRecordID_1	= -1			
	local HasMissionID	= 369			
	local HasMissionID_1	= -1			
	local No_MissionID	= -1			
	local No_MissionID_1	= -1		
	local ChaType		= -1			
	local Need_CheckPos	= 1			
	local Cha_x_max		= 380200			
	local Cha_x_min		= 379800			
	local Cha_y_max		= 55200			
	local Cha_y_min		= 54800			
	local MapName		= "darkblue"			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local HasRecordNotice_1  = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local NoRecordNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local NoRecordNotice_1	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local HasMissionNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local HasMissionNotice_1 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local NoMissionNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local NoMissionNotice_1	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local CheckBoatNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local CheckPosNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local GuildTypeNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"	
	--local HasRecordNotice	 = "Святая вода очищает ауру и всё зло"		
	--local HasRecordNotice_1  = "Святая вода очищает ауру и всё зло"		
	--local NoRecordNotice	 = "Святая вода очищает ауру и всё зло"		
	--local NoRecordNotice_1	 = "Святая вода очищает ауру и всё зло"		
	--local HasMissionNotice	 = "Святая вода очищает ауру и всё зло"		
	--local HasMissionNotice_1 = "Святая вода очищает ауру и всё зло"		
	--local NoMissionNotice	 = "Святая вода очищает ауру и всё зло"		
	--local NoMissionNotice_1	 = "Святая вода очищает ауру и всё зло"		
	--local CheckBoatNotice	 = "Святая вода очищает ауру и всё зло"		
	--local CheckPosNotice	 = "Святая вода очищает ауру и всё зло"		
	--local GuildTypeNotice	 = "Святая вода очищает ауру и всё зло"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	-1	
	local GiveMisson_2	=	-1	
	local GiveMisson_0	=	-1	
	local ItemID		=	4257	
	local ItemNum		=	1	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	1	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 


function ItemUse_SS (role) 

	local HasRecordID	= -1			
	local HasRecordID_1	= -1			
	local NoRecordID	= 26			
	local NoRecordID_1	= -1			
	local HasMissionID	= 370			
	local HasMissionID_1	= -1			
	local No_MissionID	= 26			
	local No_MissionID_1	= -1			
	local ChaType		= -1			
	local Need_CheckPos	= -1			
	local Cha_x_max		= 0			
	local Cha_x_min		= 0			
	local Cha_y_max		= 0			
	local Cha_y_min		= 0			
	local MapName		= -1			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local HasRecordNotice_1  = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local NoRecordNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local NoRecordNotice_1	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local HasMissionNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local HasMissionNotice_1 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local NoMissionNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local NoMissionNotice_1	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local CheckBoatNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local CheckPosNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	local GuildTypeNotice	 = "\209\226\255\242\224\255 \226\238\228\224 \238\247\232\249\224\229\242 \224\243\240\243 \232 \226\241\184 \231\235\238"		
	--local HasRecordNotice	 = "Святая вода очищает ауру и всё зло"		
	--local HasRecordNotice_1  = "Святая вода очищает ауру и всё зло"		
	--local NoRecordNotice	 = "Святая вода очищает ауру и всё зло"		
	--local NoRecordNotice_1	 = "Святая вода очищает ауру и всё зло"		
	--local HasMissionNotice	 = "Святая вода очищает ауру и всё зло"		
	--local HasMissionNotice_1 = "Святая вода очищает ауру и всё зло"		
	--local NoMissionNotice	 = "Святая вода очищает ауру и всё зло"		
	--local NoMissionNotice_1	 = "Святая вода очищает ауру и всё зло"		
	--local CheckBoatNotice	 = "Святая вода очищает ауру и всё зло"		
	--local CheckPosNotice	 = "Святая вода очищает ауру и всё зло"		
	--local GuildTypeNotice	 = "Святая вода очищает ауру и всё зло"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )

	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )

	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	26	
	local GiveMisson_2	=	26	
	local GiveMisson_0	=	26	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 



function ItemUse_FHSDX (role) 

	local HasRecordID	= -1			
	local HasRecordID_1	= -1			
	local NoRecordID	= 27			
	local NoRecordID_1	= -1			
	local HasMissionID	= 362			
	local HasMissionID_1	= -1			
	local No_MissionID	= 27			
	local No_MissionID_1	= -1			
	local ChaType		= -1			
	local Need_CheckPos	= -1			
	local Cha_x_max		= 0			
	local Cha_x_min		= 0			
	local Cha_y_max		= 0			
	local Cha_y_min		= 0			
	local MapName		= -1			
	local GuildType		= -1		
	local CheckType		= 1			


	local HasRecordNotice	 = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	local HasRecordNotice_1  = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	local NoRecordNotice	 = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	local NoRecordNotice_1	 = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	local HasMissionNotice	 = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	local HasMissionNotice_1 = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	local NoMissionNotice	 = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	local NoMissionNotice_1	 = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	local CheckBoatNotice	 = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	local CheckPosNotice	 = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	local GuildTypeNotice	 = "\205\238\240\236\224\235\252\237\238\229 \240\238\231\238\226\238\229 \239\232\241\252\236\238"		
	--local HasRecordNotice	 = "Нормальное розовое письмо"		
	--local HasRecordNotice_1  = "Нормальное розовое письмо"		
	--local NoRecordNotice	 = "Нормальное розовое письмо"		
	--local NoRecordNotice_1	 = "Нормальное розовое письмо"		
	--local HasMissionNotice	 = "Нормальное розовое письмо"		
	--local HasMissionNotice_1 = "Нормальное розовое письмо"		
	--local NoMissionNotice	 = "Нормальное розовое письмо"		
	--local NoMissionNotice_1	 = "Нормальное розовое письмо"		
	--local CheckBoatNotice	 = "Нормальное розовое письмо"		
	--local CheckPosNotice	 = "Нормальное розовое письмо"		
	--local GuildTypeNotice	 = "Нормальное розовое письмо"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )

	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )

	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	27	
	local GiveMisson_2	=	27	
	local GiveMisson_0	=	27	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 






function ItemUse_WYJ (role) 

	local HasRecordID	= -1			
	local HasRecordID_1	= -1			
	local NoRecordID	= 28			
	local NoRecordID_1	= -1			
	local HasMissionID	= 375			
	local HasMissionID_1	= -1			
	local No_MissionID	= 28			
	local No_MissionID_1	= -1			
	local ChaType		= -1			
	local Need_CheckPos	= -1			
	local Cha_x_max		= 0			
	local Cha_x_min		= 0			
	local Cha_y_max		= 0			
	local Cha_y_min		= 0			
	local MapName		= -1			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	local HasRecordNotice_1  = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	local NoRecordNotice	 = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	local NoRecordNotice_1	 = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	local HasMissionNotice	 = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	local HasMissionNotice_1 = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	local NoMissionNotice	 = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	local NoMissionNotice_1	 = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	local CheckBoatNotice	 = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	local CheckPosNotice	 = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	local GuildTypeNotice	 = "\193\232\237\238\234\235\252 \239\238\231\226\238\235\255\229\242 \226\232\228\229\242\252 \226\229\249\232 \226\228\224\235\232"		
	--local HasRecordNotice	 = "Бинокль позволяет видеть вещи вдали"		
	--local HasRecordNotice_1  = "Бинокль позволяет видеть вещи вдали"		
	--local NoRecordNotice	 = "Бинокль позволяет видеть вещи вдали"		
	--local NoRecordNotice_1	 = "Бинокль позволяет видеть вещи вдали"		
	--local HasMissionNotice	 = "Бинокль позволяет видеть вещи вдали"		
	--local HasMissionNotice_1 = "Бинокль позволяет видеть вещи вдали"		
	--local NoMissionNotice	 = "Бинокль позволяет видеть вещи вдали"		
	--local NoMissionNotice_1	 = "Бинокль позволяет видеть вещи вдали"		
	--local CheckBoatNotice	 = "Бинокль позволяет видеть вещи вдали"		
	--local CheckPosNotice	 = "Бинокль позволяет видеть вещи вдали"		
	--local GuildTypeNotice	 = "Бинокль позволяет видеть вещи вдали"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )

	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )

	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	28	
	local GiveMisson_2	=	28	
	local GiveMisson_0	=	28	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 





function ItemUse_LDADYW2 (role) 

	local HasRecordID	= -1			
	local HasRecordID_1	= -1			
	local NoRecordID	= 14			
	local NoRecordID_1	= -1			
	local HasMissionID	= 273			
	local HasMissionID_1	= -1			
	local No_MissionID	= 14		
	local No_MissionID_1	= -1			
	local ChaType		= -1			
	local Need_CheckPos	= 1			
	local Cha_x_max		= 7900			
	local Cha_x_min		= 7500		
	local Cha_y_max		= 397300			
	local Cha_y_min		= 396900			
	local MapName		= "garner"			
	local GuildType		= -1			
	local CheckType		= 1			


	local HasRecordNotice	 = "\205\224 \241\243\226\229\237\232\240\229 \192\237\228\240\229\255 \236\237\238\227\238 \246\224\240\224\239\232\237"		
	local HasRecordNotice_1  = "\205\224 \241\243\226\229\237\232\240\229 \192\237\228\240\229\255 \236\237\238\227\238 \246\224\240\224\239\232\237"		
	local NoRecordNotice	 = "\205\224 \241\243\226\229\237\232\240\229 \192\237\228\240\229\255 \236\237\238\227\238 \246\224\240\224\239\232\237"	
	local NoRecordNotice_1	 = "\205\224 \241\243\226\229\237\232\240\229 \192\237\228\240\229\255 \236\237\238\227\238 \246\224\240\224\239\232\237"		
	local HasMissionNotice	 = "\205\224 \241\243\226\229\237\232\240\229 \192\237\228\240\229\255 \236\237\238\227\238 \246\224\240\224\239\232\237"		
	local HasMissionNotice_1 = "\205\224 \241\243\226\229\237\232\240\229 \192\237\228\240\229\255 \236\237\238\227\238 \246\224\240\224\239\232\237"		
	local NoMissionNotice	 = "\205\224 \241\243\226\229\237\232\240\229 \192\237\228\240\229\255 \236\237\238\227\238 \246\224\240\224\239\232\237"		
	local NoMissionNotice_1	 = "\205\224 \241\243\226\229\237\232\240\229 \192\237\228\240\229\255 \236\237\238\227\238 \246\224\240\224\239\232\237"		
	local CheckBoatNotice	 = "\205\224 \241\243\226\229\237\232\240\229 \192\237\228\240\229\255 \236\237\238\227\238 \246\224\240\224\239\232\237"		
	local CheckPosNotice	 = "\209\243\226\229\237\232\240 \192\237\228\240\229\255 \237\229 \239\238\234\224\231\251\226\224\229\242 \238\242\226\229\242"		
	local GuildTypeNotice	 = "\205\224 \241\243\226\229\237\232\240\229 \192\237\228\240\229\255 \236\237\238\227\238 \246\224\240\224\239\232\237"		
	--local HasRecordNotice	 = "На сувенире Андрея много царапин"		
	--local HasRecordNotice_1  = "На сувенире Андрея много царапин"		
	--local NoRecordNotice	 = "На сувенире Андрея много царапин"	
	--local NoRecordNotice_1	 = "На сувенире Андрея много царапин"		
	--local HasMissionNotice	 = "На сувенире Андрея много царапин"		
	--local HasMissionNotice_1 = "На сувенире Андрея много царапин"		
	--local NoMissionNotice	 = "На сувенире Андрея много царапин"		
	--local NoMissionNotice_1	 = "На сувенире Андрея много царапин"		
	--local CheckBoatNotice	 = "На сувенире Андрея много царапин"		
	--local CheckPosNotice	 = "Сувенир Андрея не показывает ответ"		
	--local GuildTypeNotice	 = "На сувенире Андрея много царапин"		

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )

	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )


	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	14	
	local GiveMisson_2	=	14	
	local GiveMisson_0	=	14	
	local ItemID		=	-1	
	local ItemNum		=	0	
	local Give_Exp		= 	-1	
	local Give_Money	= 	-1	
	local DelItem		=	0	

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "\205\229\235\229\227\224\235\252\237\251\233 \237\238\236\229\240 \227\232\235\252\228\232\232" )
		--SystemNotice ( role , "Нелегальный номер гильдии" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 
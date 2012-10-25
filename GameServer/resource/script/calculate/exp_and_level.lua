print("‡ Јаг§Є  Exp_and_level.lua")

InTeamGetExp_RAID = 1

function AskGuildItem(role,Guild_type)
	local gold = GetChaAttr(role,ATTR_GD)
	local fame = GetChaAttr(role,ATTR_FAME) 
	local attr_guild = HasGuild ( role ) 
	if attr_guild ~= 0 then 
		HelpInfo(role,0,"\194\251 \243\230\229 \226 \227\232\235\252\228\232\232")
		--HelpInfo(role,0,"Вы уже в гильдии")

		return 0 
	end 
	local Lv = Lv ( role )
	if Lv < 40 then
		SystemNotice ( role , "\194\251 \237\229 \228\238\241\242\232\227\235\232 40 \243\240\238\226\237\255.\205\229\226\238\231\236\238\230\237\238 \241\238\231\228\224\242\252" )
		--SystemNotice ( role , "Вы не достигли 40 уровня.Невозможно создать" )
		return 0
	end

	if Guild_type == 1 then						
		if Guild2_ItemMax > 0 then
			for i = 1 , Guild2_ItemMax , 1 do
				local K = Check_BagItem(role,Guild2_item[i],Guild2_count[i])
				if K == 0 then
					HelpInfo(role,0,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\224.\205\229\226\238\231\236\238\230\237\238 \241\238\231\228\224\242\252")
					--HelpInfo(role,0,"Нехватает предмета.Невозможно создать")
					return 0
				end
			end
		end

		if gold < Guild2_Gold then
			HelpInfo(role,0,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224.\205\229\226\238\231\236\238\230\237\238 \241\238\231\228\224\242\252")
			--HelpInfo(role,0,"Нехватает золота.Невозможно создать")
			return 0
		end
		if fame < Guild2_fame then
			HelpInfo(role,0,"\205\229\245\226\224\242\224\229\242 \240\229\239\243\242\224\246\232\232 \228\235\255 \241\238\231\228\224\237\232\255")
			--HelpInfo(role,0,"Нехватает репутации для создания")
			return 0
		end
	elseif Guild_type == 0 then					
		if Guild1_ItemMax > 0 then
			for i = 1 , Guild1_ItemMax , 1 do
				local K = Check_BagItem(role,Guild1_item[i],Guild1_count[i])
				if K == 0 then
					HelpInfo(role,0,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\224.\205\229\226\238\231\236\238\230\237\238 \241\238\231\228\224\242\252")
					--HelpInfo(role,0,"Нехватает предмета.Невозможно создать")

					return 0
				end
			end
		end
		if gold < Guild1_Gold then
			HelpInfo(role,0,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224.\205\229\226\238\231\236\238\230\237\238 \241\238\231\228\224\242\252")
			--HelpInfo(role,0,"Нехватает золота.Невозможно создать")
			return 0
		end
		if fame < Guild1_fame then
			HelpInfo(role,0,"\205\229\245\226\224\242\224\229\242 \240\229\239\243\242\224\246\232\232 \228\235\255 \241\238\231\228\224\237\232\255")
			--HelpInfo(role,0,"Нехватает репутации для создания")
			return 0
		end
	else
	end
	return 1
end 

function Check_BagItem(role,a,b)		
	local a = CheckBagItem ( role , a ) 
	if a>= b then 
		return 1 
	else 
		return 0 
	end 
end 
		



function DeductGuildItem(role,Guild_type)
	local gold = GetChaAttr(role,ATTR_GD)
	local fame = GetChaAttr(role,ATTR_FAME) 
	local attr_guild = HasGuild ( role )  

	if Guild_type == 1 then						
		DelBagItem(role,1780,1)	
		gold = gold - Guild2_Gold
		fame = fame - Guild2_fame
		SetAttrChangeFlag ( role )

		SetChaAttr(role,ATTR_GD,gold)
		SetChaAttr(role,ATTR_FAME,fame)

		SyncChar( role, 4 )
	
	elseif Guild_type == 0	then					

		DelBagItem(role,1780,1)	
		gold = gold - Guild1_Gold
		fame = fame - Guild1_fame
		SetAttrChangeFlag ( role )

		SetChaAttr(role,ATTR_GD,gold)
		SetChaAttr(role,ATTR_FAME,fame)

		SyncChar( role, 4 )
	else
	end

end
	

function AskJoinGuild ( role , guild_type ) 					
	local attr_guild = HasGuild ( role )  
	if attr_guild ~= 0 then 
		HelpInfo(role,0,"\194\251 \243\230\229 \226 \227\232\235\252\228\232\232")
		--HelpInfo(role,0,"Вы уже в гильдии")

		return 0 
	end 
	return 1 
end 

			




function GetExp_New(dead , atk  ) 
	if ValidCha(atk) == 0  then 
		return 
	end 
	local a = Check_Combat_Mod(dead , atk ) 
	if a==1 then 
	GetExp_PKM( dead , atk ) --[[Игрок против монстра]]--PvE
	elseif a==2 then 
	
	GetExp_MKP(dead , atk) --[[Монстр против игрока]]--PvE
	elseif a==3 then 
	
	GetExp_PKP(dead , atk) --[[Игрок против игрока]]--PvP
	elseif a==4 then 
	
	GetExp_Noexp(dead , atk) --[[Монстр против монстра]]--MvM это что за хуета оО"
	else 
	end 
end 









function Check_Combat_Mod(dead , atk)  
	local rolemod_atker = IsPlayer(atk) 
	local rolemod_defer = IsPlayer(dead)  
	if (rolemod_atker==0) and (rolemod_defer==0) then 
		return 4 
	elseif rolemod_atker==0 and rolemod_defer==1 then 
		return 2 
	elseif rolemod_atker==1 and rolemod_defer==0 then 
		return 1 
	elseif rolemod_atker==1 and rolemod_defer==1 then 
		return 3 
	else 
		return 
	end 
end 




function GetExp_PKM( dead , atk  ) 

	local dead_lv = GetChaAttrI( dead , ATTR_LV )   
	local dead_exp = GetChaAttrI( dead , ATTR_CEXP ) * EXP_RAID
	LG("exp" , "deadlv = " , dead_lv ) 
	LG("exp" , "dead_exp = " , dead_exp ) 
	local k = {} 
	local kdmg = {} 
	local k_exp = {} 

	k[0] , kdmg[0] = GetChaHarmByNo ( dead , 0 ) 


	k[1] , kdmg[1] = GetChaHarmByNo ( dead , 1 ) 

	k[2] , kdmg[2] = GetChaHarmByNo ( dead , 2 ) 

	k[3] , kdmg[3] = GetChaHarmByNo ( dead , 3 ) 

	k[4] , kdmg[4] = GetChaHarmByNo ( dead , 4 ) 
	local first_atker = GetFirstAtker ( dead ) 
	
	local Gen_dmg = 0 

	for i = 0 , 4 , 1 do 
		if k[i] ~= 0 then 
			Gen_dmg = Gen_dmg + kdmg[i] 
		end 
	end 
	for i = 0 , 4 , 1 do 
		k_exp[i] = 0 

		if ValidCha( k[i] )== 1 then 
			if kdmg[i] > 0 then 
				if k[i] == first_atker then 
					k_exp[i] = dead_exp * ( 0.7 * kdmg[i] / Gen_dmg + 0.3 )		
				else
					k_exp[i] =  dead_exp * 0.7 * kdmg[i] / Gen_dmg 
				end
				ShareTeamExp ( dead , k[i] , k_exp[i] ,atk ) 
			end 
		end 
	end 
	local item_host = 0 
	local exp_max = k_exp[0] 
	for i = 1 , 4 , 1 do 

		if k_exp [i] > exp_max  then 
			exp_max = k_exp[i] 
			item_host = i 
		end 
	end 
	if ChaIsBoat (k[item_host] ) == 1 then 

		local ship_lv = GetChaAttr ( k[item_host] , ATTR_LV ) 
		local shipowner_lv  = GetChaAttr ( TurnToCha ( k[item_host] ) , ATTR_LV )  
		local ship_exp = GetChaAttr ( k[item_host] , ATTR_CEXP ) 
		local ship_expadd = math.floor(math.min(7, (dead_lv / 10 + 2)) * 20)
		local lv_limit = math.min ( ship_lv , shipowner_lv ) - 10 
		if dead_lv >= lv_limit then 
			ship_exp = ship_exp + ship_expadd 
			SetCharaAttr (  ship_exp , k[item_host] ,ATTR_CEXP ) 

		end 
	end 
	SetItemHost ( dead , k[item_host] ) 

end 


function ValidCha(ter)
  if ter==nil or ter==0 then 
	return 0 
  end
  return 1
end

function ShareTeamExp ( dead , team_atker , dead_exp , The_Killer) 
	local cha_name1100 = GetChaDefaultName (team_atker )	
	local star111=GetChaAttr (  team_atker , ATTR_CEXP )
	LG("star_exp" , "Player"..cha_name1100.."Current Experience is"..star111.."Starts ShareTeamExp" ) 
	local atker_role = ChaIsBoat ( team_atker ) 
	local monster_location = IsChaInLand ( dead ) 
	if atker_role == 1 and monster_location == 1 then 
		dead_exp = math.floor ( dead_exp / 5 + 1 ) 
	end 



	local dead_lv = GetChaAttrI( dead , ATTR_LV )			 			
	local t = {} 
	t[0] = team_atker  
	if ValidCha (team_atker) == 0 then 
		LG ( "luascript_err" , "function ShareTeamExp : party experience source as null" ) 
		return 
	end 
	t[1] = GetTeamCha(team_atker, 0 )  
	t[2] = GetTeamCha(team_atker, 1 )   
	t[3] = GetTeamCha(team_atker, 2 )    
	t[4] = GetTeamCha(team_atker, 3 )
	
    
	local count = 0 
	local NewPlayer_CanGet = 0
	local NewPlayer_Lv = 0
	local NewPlayer_Lv_dif = -100
	local Check_Killer = 0
	if t[0] == The_Killer then
		Check_Killer = 1
	end
	for i = 0 , 4 , 1 do	
		if ValidCha( t[i] )== 1  then					
			a = CheckExpShare ( t[i] , team_atker ) 
			if a == 1 then 
				count = count + 1 
				NewPlayer_Lv = Lv( TurnToCha(t[i]) )
				NewPlayer_Lv_dif = dead_lv - NewPlayer_Lv
				if NewPlayer_Lv <=30 and NewPlayer_Lv >= 10 and NewPlayer_Lv_dif >= -5 then
					NewPlayer_CanGet = NewPlayer_CanGet + 1
				end
			end 
		end 
        end 
	if count == 0 then 
		LG ("luascript_err" , "function ShareTeamExp : Member total count as 0 " )
		return 
	end 
	local TeamExp_Increas = 0.25 * TeamExp_RAID

	LG("exp" , "deadlv = " , dead_lv ) 
	LG("exp" , "dead_exp = " , dead_exp ) 
	LG("exp" , "teamer_count = " , count ) 
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
	local exp_add = math.floor( dead_exp * ( 1 + (count -1 )* TeamExp_Increas ) ) --ЧЬѕ­Сй
	local exp_increase = math.floor ( dead_exp * (count -1 )* TeamExp_Increas ) --ёЅјУѕ­Сй


	LG("exp" , "exp_add = " , exp_add ) 

	if count >=2 then
		exp_add = exp_add * InTeamGetExp_RAID
	end

	local exp_up


	for i = 0 , 4 , 1 do	
		if ValidCha(t[i])==1 then			
			local a = 1							
			local b = 1						
			LG("exp" , "loop = " , i ) 

			if i >= 1 then 
	            
				a = CheckExpShare ( t[i] , team_atker ) 		
				LG("exp" , "experience distribution test a =  " , a ) 
				exp_up = math.max (1,  math.floor ( exp_add/count ) )  * a 
				LG("exp" , "exp_up1  =  " , exp_up ) 
			else 
				exp_up = math.max ( 1, math.floor ( exp_add/count ) )  
				LG("exp" , "exp_up1  =  " , exp_up ) 
			end 

			t_lv = GetChaAttrI ( TurnToCha(t[i]) , ATTR_LV ) 

			lv_dis =  t_lv - dead_lv 	
			LG ( "exp" , " t_lv = " , t_lv , "  dead_lv = " , dead_lv , "  lv_dis = " , lv_dis ) 
			if lv_dis >= 4 then 
				b = math.min ( 10 , 1 + ( math.abs ( lv_dis - 4 ) * 0.4 ) )  
			elseif lv_dis <= -1 * 10 then 
				b = math.min ( 4 , 1 + math.abs ( lv_dis - 10)  * 0.1 )      
			end 
			LG ( "exp" , "exp_up2 =  " , exp_up , " b = " , b , " a = ", a ) 

			exp_up = math.floor ( math.max ( 1 , exp_up / b ) ) * a 

			LG ( "exp" , "exp_up3 =  " , exp_up) 
			
			if count >=3 and NewPlayer_CanGet <= 0 and Check_Killer == 1 then				
				if lv_dis <=3 then
					Add_RYZ_TeamPoint ( TurnToCha(t[i]) , count , 1)
				end
			end
			if t_lv >= 50 and NewPlayer_CanGet > 0 and Check_Killer == 1 then
				Add_RYZ_TeamPoint ( TurnToCha(t[i]) , 6 , NewPlayer_CanGet)
			end

			exp = GetChaAttrI ( TurnToCha(t[i]) , ATTR_CEXP ) 
			LG("exp" , "exp_original = " , exp ) 
			local EXP_RAID_STATE = 1
			local StateLv = GetChaStateLv ( t[i] , STATE_SBJYGZ )
	
			if StateLv > 0 and StateLv <= 10 then
				if StateLv == 1 then
					EXP_RAID_STATE = StateLv + 1
				end
				if StateLv == 2 then
					EXP_RAID_STATE = 2
				end
				if StateLv == 3	then
					EXP_RAID_STATE = 2.5
				end
				if StateLv == 4	then
					EXP_RAID_STATE = 3
				end
				if StateLv == 5	then
					EXP_RAID_STATE = 5
				end
				if StateLv == 6	then
					EXP_RAID_STATE = 10
				end

				if StateLv == 7	then
					EXP_RAID_STATE = 20
				end
			end
			
			if StateLv > 1 then
				local CheckLucky = 0
				CheckLucky = CheckLuckyFinish ( StateLv )
				if CheckLucky == 1 then
					EXP_RAID_STATE = EXP_RAID_STATE * 2
					SystemNotice ( TurnToCha(t[i]) , "\209\247\224\241\242\235\232\226\251\233 \243\228\224\240, \226\251 \239\238\235\243\247\232\235\232 \243\228\226\238\229\237\237\251\233 \238\239\251\242" )
					--SystemNotice ( TurnToCha(t[i]) , "Счастливый удар, вы получили удвоенный опыт" )
				end
				if CheckLucky == 2 then
					EXP_RAID_STATE = 10
					SystemNotice ( TurnToCha(t[i]) , "\209\243\239\229\240 \241\247\224\241\242\235\232\226\251\233 \243\228\224\240! \207\238\235\243\247\229\237\238 \226 10 \240\224\231 \225\238\235\252\248\229 \238\239\251\242\224" )
					--SystemNotice ( TurnToCha(t[i]) , "Супер счастливый удар! Получено в 10 раз больше опыта" )
				end
			end

			if exp_up == 0 then 
				LG ( "exp" , "\205\229\242 \238\239\251\242\224" ) 
				--LG ( "exp" , "Нет опыта" ) 
				return 
			end
			
			exp_up = exp_up * EXP_RAID_STATE
			
					local Item_bg = GetChaItem ( t[i] , 2 , 1  ) 
					local Get_Item_Type = GetItemType ( Item_bg ) 
					if Get_Item_Type==59 then
						local  Item_ID = GetItemID ( Item_bg )	
						local str = GetItemAttr( Item_bg ,ITEMATTR_VAL_STR )
						local con = GetItemAttr( Item_bg ,ITEMATTR_VAL_CON )
						local agi = GetItemAttr( Item_bg ,ITEMATTR_VAL_AGI )
						local dex = GetItemAttr( Item_bg ,ITEMATTR_VAL_DEX )
						local sta = GetItemAttr( Item_bg ,ITEMATTR_VAL_STA )
						local URE = GetItemAttr( Item_bg ,ITEMATTR_URE )
						local MAXURE = GetItemAttr( Item_bg ,ITEMATTR_MAXURE )
						local lv_JL = str + con + agi + dex + sta
						local Num_JL = GetItemForgeParam ( Item_bg , 1 )
						local Part1 = GetNum_Part1 ( Num_JL )
						local Part2 = GetNum_Part2 ( Num_JL )
						local Part3 = GetNum_Part3 ( Num_JL )
						local StateLv1 = GetChaStateLv (t[i] , STATE_JLFT7 )
						local StateLv2 = GetChaStateLv (t[i] , STATE_JLFT8 )
						local flag=0
						if Item_ID==231 and StateLv2~=0 then
							flag=2
						end
						if Item_ID==232 and StateLv2~=0 then
							flag=2
						end
						if Item_ID==233 and StateLv2~=0 then
							flag=2
						end
						if Item_ID==234 and StateLv2~=0 then
							flag=2
						end
						if Item_ID==235 and StateLv2~=0 then
							flag=2
						end
						if Item_ID==236 and StateLv2~=0 then
							flag=2
						end
						if Item_ID==237 and StateLv2~=0 then
							flag=1
						end
						if Item_ID==3881 and StateLv1~=0 then
							flag=1
						end
						if Item_ID==681 and StateLv2~=0 then
							flag=1
						end
						if flag==1  then
							if StateLv1 ~= 0 then
								exp_up =exp_up*(lv_JL*0.03+1)
							end
							if StateLv2 ~= 0 then 
								exp_up = exp_up*(lv_JL*0.02+1)
							end
						--	URE=URE-4500
						end
						SetItemAttr ( Item_bg , ITEMATTR_URE , URE )
					end

-------------------------------------------
-------------------------------------------
			local Check = {}
				Check[0] = t[i]  
				Check[1] = GetTeamCha( t[i] , 0 )  
				Check[2] = GetTeamCha( t[i] , 1 )   
				Check[3] = GetTeamCha( t[i] , 2 )    
				Check[4] = GetTeamCha( t[i] , 3 )
	
			for j = 0 , 4 , 1 do	
				if ValidCha( Check[j] )== 1  then					
					local star = IsTeamLeader( Check[j] )
					if	star==1 then 		
						local StateLv = GetChaStateLv ( Check[j] , STATE_ZDSBJYGZ )
						local	Isshare = CheckExpShare ( t[i] , Check[j])
						if StateLv == 1 and Isshare == 1 then
							exp_up = 1.5*exp_up
						end
					end
				end
			end


----------------------------------------------
----------------------------------------------
     local map_name_atk = GetChaMapName ( The_Killer )
     local map_name_def = GetChaMapName ( dead )
     if map_name_atk == "guildwar" or map_name_def == "guildwar" then
       local normal_monster =  GetChaID(dead)
       if normal_monster == 220 then  
	   AddState ( The_Killer , The_Killer , STATE_HFZQ , 10 , 10 )
       end
       if normal_monster == 219 then  
           AddState ( The_Killer , The_Killer , STATE_QINGZ , 10 , 300 )
       end
       if normal_monster == 217 then  
           AddState ( The_Killer , The_Killer , STATE_JRQKL , 10 , 180 )
       end
       if normal_monster == 218 then 
           AddState ( The_Killer , The_Killer , STATE_YS , 10 , 300 )
       end
      elseif map_name_atk == "guildwar2" or map_name_def == "guildwar2" then
       local normal_monster =  GetChaID(dead)
       if normal_monster == 220 then  
	   AddState ( The_Killer , The_Killer , STATE_HFZQ , 10 , 10 )
       end
       if normal_monster == 219 then  
           AddState ( The_Killer , The_Killer , STATE_QINGZ , 10 , 300 )
       end
       if normal_monster == 217 then  
           AddState ( The_Killer , The_Killer , STATE_JRQKL , 10 , 180 )
       end
       if normal_monster == 218 then 
           AddState ( The_Killer , The_Killer , STATE_YS , 10 , 300 )
       end
     end


----------------------------------------
-----------------------------------------
		local expGetNow = exp_up		
		local expCanGive = 0
		t[i] = TurnToCha ( t[i]  )
		local ptnItem = GetEquipItemP( t[i] , 8)	
		local IdItem = GetItemID ( ptnItem )	
		local lvPerson = GetChaAttr(t[i] , ATTR_LV)
		if IdItem==1034 and lvPerson < 41 then
			local expItemNow = GetItemAttr( ptnItem , ITEMATTR_URE)*10   
			local expItemMax = GetItemAttr ( ptnItem , ITEMATTR_MAXURE)*10
			local retIsInTeam = IsInTeam(t[i] )
			if retIsInTeam ~= LUA_TRUE then			
				expItemNow = expItemNow + expGetNow
				if expItemNow >= expItemMax then
					expItemNow = expItemMax
				end
			else						
				if HasTeammate(t[i] ,0, 5) == LUA_TRUE then
					local ptnLowLvPlayer = returnLowLVPlayer( t[i], t[0], t[1], t[2], t[3], t[4]) 
					if ValidCha(ptnLowLvPlayer) == 1 then     
					
						local expCanUse = expItemNow - 1000				
							if expGetNow * 2>= expCanUse then
								expCanGive = expCanUse
								expItemNow = 1000
							else
								expItemNow = expItemNow - expGetNow*2
								expCanGive = expGetNow * 2
							end
							if expItemNow <= 1000 then
								expItemNow = 1000
							end
						exp_up = exp_up + expCanGive
					else																				
						expCanGive = 0
						exp_up = exp_up + expCanGive
					end
					
					local expCanUse = expItemNow - 1000

			
				end
			end
			expItemNow= math.floor(expItemNow/10)
			SetItemAttr ( ptnItem ,ITEMATTR_URE , expItemNow )
		end
---------------------------------
---------------------------------
-----------------------------------------				
			if exp_up > 20000 then
				local cha_name = GetChaDefaultName ( TurnToCha(t[i]) )
				local Monster_name = GetChaDefaultName ( dead )
			end
			if exp<DEXP[80] and (exp+exp_up)>DEXP[80] then
				exp_up =math.floor((DEXP[80]-exp) +(exp_up-(DEXP[80]-exp))/50)
			end                                                                                


			if Lv ( TurnToCha(t[i]) ) >= 80 then 
				exp_up = math.floor ( exp_up / 50 ) 
			end 
			local retExpState = GetExpState(t[i])

			if exp_up == 0 and retExpState ~= 0 then 
				SystemNotice ( TurnToCha(t[i]) , "\194\224\248 \243\240\238\226\229\237\252 \237\229 \239\238\231\226\238\235\255\229\242 \239\238\235\243\247\232\242\252 \238\239\251\242 \241 \253\242\238\227\238 \236\238\237\241\242\240\224" )
				--SystemNotice ( TurnToCha(t[i]) , "Ваш уровень не позволяет получить опыт с этого монстра" )
			end 
			
			exp_up =exp_up *GetExpState(t[i])/100

			exp = exp + exp_up 
			local rad = math.random ( 1, 3 )
			if rad ==1 then
			AddMoney ( TurnToCha(t[i]), 0 , 300) 
			end

			if rad ==2 then
			AddMoney ( TurnToCha(t[i]), 0 , 600) 
			end

			if rad ==3 then
			AddMoney ( TurnToCha(t[i]), 0 , 900) 
			end 
			

			SetChaAttrI ( TurnToCha(t[i]) , ATTR_CEXP, exp ) 
			LG("exp" , "exp_now = " , exp ) 
		else 
		end 
	end 
	local star112=GetChaAttr (  team_atker , ATTR_CEXP )
	LG("star_exp" , "Player"..cha_name1100.."Current Experience is"..star112.."End ShareTeamExp" ) 
	LG("exp" , "end getexp " )
end 

function returnLowLVPlayer(PlayerNow,Player1,Player2,Player3,Player4,Player5)    
	local lvPlayerNow = GetChaAttr(PlayerNow, ATTR_LV)
	PlayerNow = TurnToCha(PlayerNow)
	Player1 = TurnToCha(Player1)
	Player2 = TurnToCha(Player2)
	Player3 = TurnToCha(Player3)
	Player4 = TurnToCha(Player4)
	Player5 = TurnToCha(Player5)
	
	if ValidCha(Player1) == 1 then
		local lvPlayer1 = GetChaAttr(Player1, ATTR_LV)
		if lvPlayerNow > lvPlayer1 + 5 then
			return Player1
		end
	end
	
	if ValidCha(Player2) == 1 then
		local lvPlayer2 = GetChaAttr(Player2, ATTR_LV)
		if lvPlayerNow > lvPlayer2 + 5 then
			return Player2
		end
	end
	
	if ValidCha(Player3) == 1 then
		local lvPlayer3 = GetChaAttr(Player3, ATTR_LV)
		if lvPlayerNow > lvPlayer3 + 5 then
			return Player3
		end
	end
	
	if ValidCha(Player4) == 1 then
		local lvPlayer4 = GetChaAttr(Player4, ATTR_LV)
		if lvPlayerNow > lvPlayer4 + 5 then
			return Player4
		end
	end
	
	if ValidCha(Player5) == 1 then
		local lvPlayer5 = GetChaAttr(Player5, ATTR_LV)
		if lvPlayerNow > lvPlayer5 + 5 then
			return Player5
		end
	end
	
	return 0
end

function CheckExpShare ( ti , atk ) 
	if ValidCha(ti)==0 then 
		LG ( "luascript_err" , "fucntion CheckExpShare : party member count as null\n" ) 
		return 0
	end 

	if IsInSameMap ( atk , ti ) == 0   then 
		return 0 
	end 

	local pos_ti_x , pos_ti_y = GetChaPos ( ti ) 
	if ValidCha( atk ) == 0 then 
		LG ( "luascript_err" , "fucntion CheckExpShare :  Monster killer as null\n" ) 
		return 0
	end 

		
	local pos_atk_x , pos_atk_y = GetChaPos ( atk ) 
	local distance = Dis ( pos_ti_x , pos_ti_y , pos_atk_x , pos_atk_y ) 
	if distance >= 4000 then 
		return 0 
	end 
	if IsChaInRegion ( ti , AREA_SAFE ) == 1 then 
		return 0 
	end 
	return 1 
end 


function Dead_Punish ( dead , atk ) 

	local Role_ID = GetRoleID(dead)
	 BBBB[ Role_ID ] = 0
------------------
	local map_name = GetChaMapName ( dead )
	if map_name == "leiting2" or map_name == "binglang2" or map_name == "shalan2" or map_name == "guildwar" or map_name == "guildwar2" then
		return
	end

	
	local map_name = GetChaMapName ( dead )
	if map_name == "garner2" then
	SetCharaAttr(0, dead, ATTR_SP)
		return
	end
	dead = TurnToCha ( dead ) 
	local lv = GetChaAttr( dead, ATTR_LV ) 
	local check_pirate=CheckItem_pirate(dead)
	local check_death=CheckItem_Death(dead)
	local Time = os.date("%H")
	local TimeNum = tonumber(Time)

	if lv<=10 then
		return 
	end 
	if lv >= 70 and check_pirate ==1 then
		if TimeNum<=6 or TimeNum >=18 then
			SystemNotice (dead , "\194\251 \239\238\235\243\247\232\235\232 \235\243\237\237\251\233 \253\244\244\229\234\242. \216\242\240\224\244 \231\224 \241\236\229\240\242\252 \237\229 \228\229\233\241\242\226\243\229\242 \237\224 \226\224\241" ) 
			--SystemNotice (dead , "Вы получили лунный эффект. Штраф за смерть не действует на вас" ) 
			return
		end
	end
	if lv >= 75 and check_death ==1 then
		if TimeNum<=6 or TimeNum >=18 then
			SystemNotice (dead , "\193\235\224\227\238\241\235\224\226\235\229\237\232\229 \209\236\229\240\242\232. \216\242\240\224\244 \231\224 \241\236\229\240\242\252 \237\229 \228\229\233\241\242\226\243\229\242 \237\224 \226\224\241" ) 
			--SystemNotice (dead , "Благославление Смерти. Штраф за смерть не действует на вас" ) 
			return
		end
	end
	local exp_red 
	local exp = Exp(dead) 
	local nlexp = GetChaAttrI ( dead , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( dead , ATTR_CLEXP ) 
	if  exp <= clexp then 
		exp_red = 0 
	else 
		exp_red = math.min ( math.floor ( ( nlexp - clexp ) * 0.02 ) , math.max ( exp - clexp , 0 ) ) 
	end 
	SetCharaAttr(0, dead, ATTR_SP) 
	local i1 = CheckBagItem( dead,3846 )
	local i2 = CheckBagItem( dead,3047 )
	local i3 = CheckBagItem( dead,5609 )                                      

	if map_name == "secretgarden" or map_name == "teampk" then
	SetCharaAttr(0, dead, ATTR_SP)
		return
	end
	
	local i= CheckBagItem( dead, 2954 )

	if i==1 then
		local Dead_BK = GetChaItem2 ( dead , 2 , 2954 )
		local DeadPoint=GetItemAttr ( Dead_BK , ITEMATTR_VAL_STR)


		local DeadPoint=DeadPoint+1
			SetItemAttr( Dead_BK , ITEMATTR_VAL_STR , DeadPoint )
				local DeadPoint1=GetItemAttr ( Dead_BK , ITEMATTR_VAL_STR)


		if DeadPoint>=100 then
		end
	end

	if i1 <= 0 and i2 <= 0 and  i3 <= 0then 
		exp = Exp(dead) - exp_red 
		if Lv ( dead ) >= 80 then 
			exp_red_80 = exp_red * 50 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red_80 )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red_80 ) 
		else 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red ) 
		end 
		SetChaAttrI( dead , ATTR_CEXP , exp ) 
		if lv > 20 then
			Dead_Punish_ItemURE ( dead )
		end
	
	elseif i1~=0 and i2==0 and  i3==0 then 
		local j1 = TakeItem( dead,0,3846,1)
		if j1 == 0  then
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \237\229 \236\238\230\229\242 \225\251\242\252 \243\228\224\235\229\237\224" )
			--SystemNotice ( dead , "Кукла Вуду не может быть удалена" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red_80 )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red_80 ) 
			else 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) 
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \231\224\236\229\237\232\235\224 \242\229\225\229 \248\242\240\224\244 \209\236\229\240\242\232" )
			--SystemNotice ( dead , "Кукла Вуду заменила тебе штраф Смерти" )
		end
	elseif i2~=0 and  i1==0 and i3==0  then 
		local j2 = TakeItem( dead,0,3047,1)
		if j2 == 0  then
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \237\229 \236\238\230\229\242 \225\251\242\252 \243\228\224\235\229\237\224" )
			--SystemNotice ( dead , "Кукла Вуду не может быть удалена" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red_80 )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red_80 ) 
			else 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) 
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \231\224\236\229\237\232\235\224 \242\229\225\229 \248\242\240\224\244 \209\236\229\240\242\232" )
			--SystemNotice ( dead , "Кукла Вуду заменила тебе штраф Смерти" )
		end
	elseif i3~=0 and i1==0 and  i2==0  then 
		local j2 = TakeItem( dead,0,5609,1)
		if j2 == 0  then
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red_80 )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red_80 ) 
			else 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) 
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
		end
	elseif i1~=0 and i2~=0 and  i3==0 then 
		local j1 = TakeItem( dead,0,3846,1)
		if j1 == 0  then
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \237\229 \236\238\230\229\242 \225\251\242\252 \243\228\224\235\229\237\224" )
			--SystemNotice ( dead , "Кукла Вуду не может быть удалена" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red_80 )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red_80 ) 
			else 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp )
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \231\224\236\229\237\232\235\224 \242\229\225\229 \248\242\240\224\244 \209\236\229\240\242\232" )
			--SystemNotice ( dead , "Кукла Вуду заменила тебе штраф Смерти" )
		end
	elseif i2~=0 and  i3~=0 and i1==0  then 
		local j2 = TakeItem( dead,0,3047,1)
		if j2 == 0  then
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \237\229 \236\238\230\229\242 \225\251\242\252 \243\228\224\235\229\237\224" )
			--SystemNotice ( dead , "Кукла Вуду не может быть удалена" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red_80 )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red_80 ) 
			else 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) 
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \231\224\236\229\237\232\235\224 \242\229\225\229 \248\242\240\224\244 \209\236\229\240\242\232" )
			--SystemNotice ( dead , "Кукла Вуду заменила тебе штраф Смерти" )
		end
	elseif i1~=0 and i3~=0 and  i2==0 then 
		local j1 = TakeItem( dead,0,3846,1)
		if j1 == 0  then
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \237\229 \236\238\230\229\242 \225\251\242\252 \243\228\224\235\229\237\224" )
			--SystemNotice ( dead , "Кукла Вуду не может быть удалена" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red_80 )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red_80 )  
			else 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) 
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \231\224\236\229\237\232\235\224 \242\229\225\229 \248\242\240\224\244 \209\236\229\240\242\232" )
			--SystemNotice ( dead , "Кукла Вуду заменила тебе штраф Смерти" )
		end
	elseif i1~=0 and i2~=0 and  i3~=0 then
		local j1 = TakeItem( dead,0,3846,1)
		if j1 == 0  then
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \237\229 \236\238\230\229\242 \225\251\242\252 \243\228\224\235\229\237\224" )
			--SystemNotice ( dead , "Кукла Вуду не может быть удалена" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red_80 )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red_80 ) 
			else 
			SystemNotice (dead , "\216\242\240\224\244 \209\236\229\240\242\232. \207\238\242\229\240\255\237\238 \238\239\251\242\224:"..exp_red )
			--SystemNotice (dead , "Штраф Смерти. Потеряно опыта:"..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) 
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "\202\243\234\235\224 \194\243\228\243 \231\224\236\229\237\232\235\224 \242\229\225\229 \248\242\240\224\244 \209\236\229\240\242\232" )
			--SystemNotice ( dead , "Кукла Вуду заменила тебе штраф Смерти" )
		end
	end
	
	local name = GetChaDefaultName ( dead )
	local exp_new = ( exp - clexp ) / ( nlexp - clexp )
	

	local mars = 0
	for mars = 0 , 4 , 1 do
		if name == CheckDmgChaNameTest [mars] then
		end
	end
end 


function GetExp_MKP(dead , atk) 
	Dead_Punish( dead , atk) 
end 

function GetExp_PKP(dead , atk)
end 

function GetExp_Noexp(dead , atk) 
end 







function Relive ( role )							
	local mxhp = GetChaAttr ( role , ATTR_MXHP ) 
	local mxsp = GetChaAttr ( role , ATTR_MXSP ) 
	local hp = math.max ( 1, math.floor(  ( mxhp * 0.01 ) + 0.5 ) ) 
	local sp = math.max ( 1, math.floor(  ( mxsp * 0.01 ) + 0.5 ) ) 
	SetCharaAttr ( hp , role , ATTR_HP ) 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end 



function Relive_now ( role , sklv ) 
	local cha_role = TurnToCha ( role ) 
	local hp = math.max ( 1 , math.floor ( 0.05 * sklv * Mxhp ( cha_role ) ) ) 
	local sp = math.max ( 1 , math.floor ( 0.05 * sklv * Mxsp ( cha_role ) ) ) 
	SetCharaAttr ( hp , cha_role , ATTR_HP ) 
	SetCharaAttr ( sp , cha_role , ATTR_SP ) 
end 





function   Ship_ShipDieAttr ( role ) 
	local bmxhp = GetChaAttr ( role , ATTR_BMXHP ) 
	local dead_count = GetChaAttr ( role , ATTR_BOAT_DIECOUNT ) 
	LG ( "shipmxhp" , "___a new dead ship_____________________________________________________" ) 
	LG ( "shipmxhp" , "role = " , role ,  "dead_count = " , dead_count , "form_mxhp = " , bmxhp ) 
	bmxhp = bmxhp * math.max ( 0 , ( 1 - 0.02 - dead_count * 0.01 )  ) 
	LG ( "shipmxhp" , "role = " , role ,   "now_mxhp = " , bmxhp ) 
	SetCharaAttr ( bmxhp , role , ATTR_BMXHP ) 
end  


function BoatLevelUpProc ( cha, boat, levelup, exp, money ) 
	if ValidCha( cha ) == 0 then 
		LG ( "luascript_err" , "function BoatLevelUpProc : cha as null" ) 
		return 0 
	end 
	if ValidCha( boat ) == 0 then 
		LG ( "luascript_err" , "function BoatLevelUpProc : boat as null" ) 
		return 0 
	end 
	PRINT( "BoatLevelUpProc: levelup = , exp = , money = ", levelup, exp, money )
	local lv_up	= levelup 
	local req_exp	= exp 
	local req_gold	= money 
	local boat_lv = GetChaAttr ( boat , ATTR_LV ) 
	if boat_lv ~= lv_up - 1 then 
		PRINT( "BoatLevelUpProc:function BoatLevelUpProc :ship current level and upgrade level does not match" )
		LG ( "luascript_err" , "function BoatLevelUpProc :ship current level and level to upgrade does not match" )
		return 0 
	end 

	local boat_exp = GetChaAttr ( boat , ATTR_CEXP ) 
	if boat_exp < req_exp then 
		SystemNotice ( cha , "\205\229\245\226\224\242\224\229\242 \238\239\251\242\224 \247\242\238\225 \239\238\228\237\255\242\252 \243\240\238\226\229\237\252 \234\238\240\224\225\235\254")
		--SystemNotice ( cha , "Нехватает опыта чтоб поднять уровень кораблю") 
		return 0 
	end 

	local cha_money = GetChaAttr ( cha , ATTR_GD ) 
	if cha_money < req_gold then 
		SystemNotice ( cha , "\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224 \247\242\238\225 \239\238\228\237\255\242\252 \243\240\238\226\229\237\252 \234\238\240\224\225\235\254") 
		--SystemNotice ( cha , "Нехватает золота чтоб поднять уровень кораблю") 
		return 0 
	end 
	PRINT( "BoatLevelUpProc: boat_exp, req_exp, cha_money, req_gold", boat_exp, req_exp, cha_money, req_gold )
	SetAttrChangeFlag( boat)	
	SetAttrChangeFlag( cha)	

	boat_exp = boat_exp - req_exp 
	SetCharaAttr ( boat_exp , boat , ATTR_CEXP ) 
	cha_money = cha_money - req_gold 	
	SetCharaAttr ( cha_money , cha , ATTR_GD ) 
	SetCharaAttr ( lv_up , boat , ATTR_LV ) 
	ALLExAttrSet ( boat ) 
	SystemNotice ( cha , "\211\240\238\226\229\237\252 \234\238\240\224\225\235\255 \243\241\239\229\248\237\238 \239\238\228\237\255\242")
	--SystemNotice ( cha , "Уровень корабля успешно поднят") 
	SystemNotice ( cha , "\199\238\235\238\242\224 \238\242\228\224\237\238"..req_gold) 
	--SystemNotice ( cha , "Золота отдано"..req_gold) 
	SystemNotice ( cha , "\206\239\251\242\224 \238\242\228\224\237\238: "..req_exp) 
	--SystemNotice ( cha , "Опыта отдано: "..req_exp) 
	SyncBoat ( boat, 4 )
	SyncChar ( cha, 4 )
	PRINT( "BoarLevelUpProc: return 1" )
	return 1 

end 




function Ship_Tran (  buyer , boat ) 
	local ship_lv = GetChaAttr ( boat , ATTR_LV ) 
	local ship_exp = GetChaAttr ( boat , ATTR_CEXP ) 
	SetAttrChangeFlag( boat)	

	ship_lv = math.max ( 1 , math.max (math.floor ( ship_lv /2 ), ship_lv - 10 ) )  
	ship_exp = 0 
	SetCharaAttr ( ship_exp , boat , ATTR_CEXP ) 
	SetCharaAttr ( ship_lv , boat , ATTR_LV ) 
	SystemNotice ( buyer , "\207\238\241\235\229 \242\238\240\227\238\226\235\232 \243\240\238\226\229\237\252 \234\238\240\224\225\235\255 \241\242\224\235: "..ship_lv )	
	--SystemNotice ( buyer , "После торговли уровень корабля стал: "..ship_lv )	
	SystemNotice ( buyer , "\207\238\241\235\229 \242\238\240\227\238\226\235\232 \238\239\251\242 \234\238\240\224\225\235\255 \241\242\224\237\238\226\232\242\241\255: "..ship_exp )	
	--SystemNotice ( buyer , "После торговли опыт корабля становится: "..ship_exp )	 

	SyncBoat ( boat, 4 )
end 



function CheckLuckyFinish ( StateLv )
	if StateLv == 3 then
		local Huge_Lucky = Percentage_Random ( 0.01 )
		if Huge_Lucky == 1 then
			return 2
		end
	end
	
	local a = 0.1
	local b = Percentage_Random ( a )
	return b
end
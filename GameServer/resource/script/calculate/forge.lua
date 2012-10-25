print("‡ Јаг§Є  Forge.lua")

function can_unite_item (...)
	if arg.n ~= 12 then
		return 0
	end
	
	local kkk = 0
	
	
	local Check = 0

	Check = can_unite_item_main ( arg )
	if Check == 1 then
		

		return 1
	else

		return 0
	end
end



function can_unite_item_main ( Table )

	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0


	
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )

	local i = 0
	for i = 0 , 2 , 1 do							
		if ItemBagCount[i] ~= 1 or ItemCount[i] ~= 1 then
			return 0
		end
	end

	
	
	local BagItem1 = ItemBag [0]
	local BagItem2 = ItemBag [1]
	local BagItem3 = ItemBag [2]

	local Item1 = GetChaItem ( role , 2 , BagItem1 )			
	local Item2 = GetChaItem ( role , 2 , BagItem2 )
	local Item3 = GetChaItem ( role , 2 , BagItem3 )
	
	local ItemID1 = GetItemID ( Item1 )					
	local ItemID2 = GetItemID ( Item2 )
	local ItemID3 = GetItemID ( Item3 )

	local ItemType1 = GetItemType ( Item1 )
	local ItemType2 = GetItemType ( Item2 )
	local ItemType3 = GetItemType ( Item3 )

	if ItemType1 ~= 47 then					
		
		SystemNotice( role ,"\221\242\238 \237\229 \241\226\232\242\238\234 \238\225\250\229\228\232\237\229\237\232\255")
		--SystemNotice( role ,"Это не свиток объединения")
		return 0
	end

	if ItemType2 ~= 49 or ItemType3 ~= 49 then			
		if ItemType2 ~= 50 or ItemType3 ~= 50 then
			SystemNotice( role , "\221\242\238 \237\229 \241\224\236\238\246\226\229\242")
			--SystemNotice( role , "Это не самоцвет")
			return 0
		end
	end

	if ItemID2 ~= ItemID3 then		
		SystemNotice(role ,"\209\224\236\238\246\226\229\242 \237\229 \241\238\238\242\226\229\242\241\242\226\243\229\242")
		--SystemNotice(role ,"Самоцвет не соответствует")

		return 0
	end

	local Item2_Lv = Get_StoneLv ( Item2 )					
	local Item3_Lv = Get_StoneLv ( Item3 )
	
	if ItemType2 == 49 and ItemType3 == 49 then
		if Item2_Lv >= 9 or Item3_Lv >= 9 then
			SystemNotice ( role , "\211\240\238\226\229\237\252 \241\224\236\238\246\226\229\242\224 \236\224\234\241\232\236\224\235\252\237\251\233")
			--SystemNotice ( role , "Уровень самоцвета максимальный")
			return 0
		end
	end

	if Item2_Lv ~= Item3_Lv then 
		
		SystemNotice(role ,"\211\240\238\226\229\237\252 2 \241\224\236\238\246\226\229\242\224 \237\229 \241\238\226\239\224\228\224\229\242 \241 1")
		--SystemNotice(role ,"Уровень 2 самоцвета не совпадает с 1")
		return 0
	end
	local Money_Need = getunite_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
	
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224 \228\235\255 \238\225\250\229\228\232\237\229\237\232\255")
		--SystemNotice( role ,"Нехватает золота для объединения")
		return 0
	end
	

	return 1
end


function begin_unite_item (...)
	
	local Check_CanUnite = 0
	Check_CanUnite = can_unite_item_main ( arg )
	if Check_CanUnite == 0 then
		return 0
	end
	
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( arg )

	
	local BagItem1 = ItemBag [0]
	local BagItem2 = ItemBag [1]
	local BagItem3 = ItemBag [2]
	
	local BagItem1 = arg [3]						
	local BagItem2 = arg [6]
	local BagItem3 = arg [9]

	local Item1 = GetChaItem ( role , 2 , BagItem1 )			
	local Item2 = GetChaItem ( role , 2 , BagItem2 )
	local Item3 = GetChaItem ( role , 2 , BagItem3 )
	
	local ItemID1 = GetItemID ( Item1 )					
	local ItemID2 = GetItemID ( Item2 )
	local ItemID3 = GetItemID ( Item3 )

	local ItemType2 = GetItemType ( Item2 )

	local Item2_Lv = Get_StoneLv ( Item2 )					
	local Item3_Lv = Get_StoneLv ( Item3 )

	local i = 0
	local j = 0

	i = RemoveChaItem ( role , ItemID1 , 1 , 2 , BagItem1 , 2 , 1 , 0)		
	j = RemoveChaItem ( role , ItemID3 , 1 , 2 , BagItem3 , 2 , 1 , 0)		

	if i == 0 or j == 0 then
		LG( "Hecheng_BS" , "Delete item failed" )
	end
	
	Item2_Lv =Item2_Lv + 1
	
	Set_StoneLv ( Item2 , Item2_Lv )
	
	local Money_Need = getunite_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )
	
	local Sklv = 1
	local StateLv = GetChaStateLv ( role , STATE_HCGLJB )
	
	Sklv = Sklv + StateLv


	local b = Check_CG_HechengBS ( Item2_Lv , ItemType2 , Sklv )
	if b == 0 then
		i = RemoveChaItem ( role , ItemID2 , 1 , 2 , BagItem2 , 2 , 1 , 0)		
		if i == 0 then
			LG( "Hecheng_BS" , "Delete item failed" )
		end
		local cha_name = GetChaDefaultName ( role )
		LG( "JingLian_ShiBai" , "Player"..cha_name.."Gem combining failed" )
		SystemNotice( role , "\206\247\229\237\252 \230\224\235\252, \241\238\247\229\242\224\237\232\229 \239\240\238\248\235\238 \237\229\243\241\239\229\248\237\238. \209\224\236\238\246\226\229\242 \239\240\238\239\224\235")
		--SystemNotice( role , "Очень жаль, сочетание прошло неуспешно. Самоцвет пропал")

		return 2	
	end
	local cha_name = GetChaDefaultName ( role )
	LG( "JingLian_ShiBai" , "Player"..cha_name.."Gem combining successful" )
	return 1
end

function get_item_unite_money (...)
	local Money = getunite_money_main ( arg )
	return 0
end


function getunite_money_main ( Table )
	return 50000
end


function can_forge_item(...)
	if arg.n ~= 12 then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 0
	end

	local Check = 0
	
	Check = can_forge_item_main ( arg )
	
	if Check == 1 then
		return 1
	else
		return 0
	end
end


	
function can_forge_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )


	local ItemBagCount_Jinglian = ItemBagCount [0]
	local ItemBag_Jinglian = ItemBag [0]
	local ItemNum_Jinglian = ItemCount [0]
	local Item_Jinglian = GetChaItem ( role , 2 , ItemBag_Jinglian )
	local Check = 0

	

	if ItemBagCount_Jinglian ~= 1 then
		SystemNotice( role , "\205\229\235\229\227\224\235\252\237\251\233 \241\235\238\242 \226 \228\224\237\237\238\236 \239\240\229\228\236\229\242\229")
		--SystemNotice( role , "Нелегальный слот в данном предмете")
		return 0
	end
	
	if ItemNum_Jinglian ~= 1 then
		return 0
	end

	Check = CheckItem_CanJinglian ( Item_Jinglian )

	if Check == 0 then
		SystemNotice( role ,"\207\240\229\228\236\229\242 \237\229\235\252\231\255 \234\238\226\224\242\252")
		--SystemNotice( role ,"Предмет нельзя ковать")
		return 0
	end
	

	
	if ItemCount [1] ~= 1 or ItemCount [2] ~= 1 or ItemBagCount [1] ~= 1 or ItemBagCount [2] ~= 1 then
		SystemNotice ( role ,"\205\229\235\229\227\224\235\252\237\251\233 \241\224\236\238\246\226\229\242")
		--SystemNotice ( role ,"Нелегальный самоцвет")
		return 0
	end

	local Item_Stone1 = GetChaItem ( role , 2 , ItemBag [1] )
	local Item_Stone2 = GetChaItem ( role , 2 , ItemBag [2] )

	local Check_Hole = 0

	Check_Hole = CheckItem_HaveHole ( Item_Jinglian , Item_Stone1 , Item_Stone2)

	if Check_Hole == 0 then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \241\235\238\242\238\226 \228\235\255 \234\238\226\234\232" )
		--SystemNotice( role ,"Нехватает слотов для ковки" )
		return 0
	end
	

	local Check_Stone = 0

	Check_Stone = Check_StoneLv ( Item_Jinglian , Item_Stone1 , Item_Stone2 )

	if Check_Stone == 0 then
		SystemNotice ( role , "\209\224\236\238\246\226\229\242 \232 \206\247\232\249\224\254\249\232\233 \237\229 \241\238\226\239\224\228\224\254\242 \239\238 \243\240\238\226\237\254" )
		--SystemNotice ( role , "Самоцвет и Очищающий не совпадают по уровню" )
		return 0
	end

	local Check_StoneItem = 0

	Check_StoneItem = Check_StoneItemType ( Item_Jinglian , Item_Stone1 , Item_Stone2 )

	if Check_StoneItem == 0 then
		SystemNotice ( role , "\209\224\236\238\246\226\229\242 \237\229 \239\238\228\245\238\228\232\242 \228\235\255 \253\242\238\227\238 \239\240\229\228\236\229\242\224" )
		--SystemNotice ( role , "Самоцвет не подходит для этого предмета" )
		return 0
	end

	
	local Money_Need = getforge_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224 \228\235\255 \234\238\226\234\232.")
		--SystemNotice( role ,"Нехватает золота для ковки.")
		return 0
	end

	return 1
end



function begin_forge_item(...)


	local Check_CanForge = 0
	Check_CanForge = can_forge_item_main ( arg )

	if Check_CanForge == 0 then
		return 0
	end


	local role = 0
	local ItemBag = {}									
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )

	local ItemBag_Jinglian = ItemBag [0]
	local Item_Jinglian = GetChaItem ( role , 2 , ItemBag_Jinglian )
	local Item_Stone1 = GetChaItem ( role , 2 , ItemBag [1] )
	local Item_Stone2 = GetChaItem ( role , 2 , ItemBag [2] )

	local Check_Jinglian_Item = 0

	local Money_Need = getforge_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )

	local ItemID_Jinglian = GetItemID ( Item_Jinglian )

	local Jinglian_Lv_Now = GetItem_JinglianLv ( Item_Jinglian )

	local Num = GetItemForgeParam ( Item_Jinglian , 1 )
	Num = TansferNum ( Num )

	local Stone1Type = GetItemType ( Item_Stone1 )
	local Stone2Type = GetItemType ( Item_Stone2 )

	local Baoshi = 0

	if Stone1Type == 49 then
		Baoshi = Item_Stone1
	elseif Stone2Type == 49 then
		Baoshi = Item_Stone2
	end
	
	local Item_Stone = {}
	local Item_StoneLv = {}
	local Baoshi_NeedLv = 1

	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )

	BaoshiType = GetStone_TypeID ( Baoshi )

	for i = 0 , 2 ,1 do
		if BaoshiType == Item_Stone[i] then
			Baoshi_NeedLv = Item_StoneLv[i] + 1
		end
	end

	local Sklv = 1
	local StateLv = GetChaStateLv ( role , STATE_JLGLJB )
	
	Sklv = Sklv + StateLv

	local Check_A = math.max ( 0.02 , math.min ( 1 , ( 1 - Baoshi_NeedLv * 0.1 + Sklv * 0.15 - 0.3 ) ) )
	local CheckFaild = Percentage_Random ( Check_A )
	
	if Baoshi_NeedLv < 4 then
		CheckFaild = 1
	end

	if CheckFaild == 1 then
		Check_Jinglian_Item = Jinglian_Item ( Item_Jinglian , Item_Stone1 , Item_Stone2 )
	else
		local cha_name = GetChaDefaultName ( role )
		local Item_Jinglian_name = GetItemName ( ItemID_Jinglian )
		LG( "JingLian_ShiBai" , "Player"..cha_name.."Forging of equipment failed. Equipment is not damaged"..Item_Jinglian_name )
		SystemNotice ( role , "\202 \241\238\230\229\235\229\237\232\254 \234\238\226\234\224 \239\240\238\248\235\224 \237\229\243\241\239\229\248\237\238. \202 \241\247\224\241\242\252\254 \239\240\229\228\236\229\242 \237\229\225\251\235 \239\238\226\240\229\230\228\184\237" )
		--SystemNotice ( role , "К сожелению ковка прошла неуспешно. К счастью предмет небыл повреждён" )
	end



	local ItemID_Stone1 = GetItemID ( Item_Stone1 )
	local ItemID_Stone2 = GetItemID ( Item_Stone2 )

	local Stone1_Lv = Get_StoneLv ( Item_Stone1 )
	local Stone2_Lv = Get_StoneLv ( Item_Stone2 )
	local Jinglianshi_Lv = 0
	if Stone1_Lv > Stone2_Lv then
		Jinglianshi_Lv = Stone1_Lv
	else
		Jinglianshi_Lv = Stone2_Lv
	end

	local Jinglian_Lv = GetItem_JinglianLv ( Item_Jinglian )

	local R1 = 0
	local R2 = 0

	R1 = RemoveChaItem ( role , ItemID_Stone1 , 1 , 2 , ItemBag [1] , 2 , 1 , 0 )		
	R2 = RemoveChaItem ( role , ItemID_Stone2 , 1 , 2 , ItemBag [2] , 2 , 1 , 0 )		

	if R1 == 0 or R2 == 0 then
		LG( "Jinglian" , "Gem deletion failed" )
	end
	
	if CheckFaild == 0 then
		return 2
	end

	check_item_final_data ( Item_Jinglian )
	

	

	
	



	local b = Check_CG_Jinglian ( Jinglian_Lv , Jinglianshi_Lv , Sklv )
	if b == 0 then
		i = RemoveChaItem ( role , ItemID_Jinglian , 1 , 2 , ItemBag [0] , 2 , 1 , 0)		--ТЖіэ±¦КЇ	
		if i == 0 then
			LG( "Hecheng_BS" , "Delete item failed" )
		end
		local cha_name = GetChaDefaultName ( role )
		local Item_Jinglian_name = GetItemName ( ItemID_Jinglian )
		LG( "JingLian_ShiBai" , "Player"..cha_name.."Forging of equipment failed"..Item_Jinglian_name )
		SystemNotice( role , "\206\247\229\237\252 \230\224\235\252! \202\238\226\234\224 \239\240\238\248\235\224 \237\229\243\228\224\247\237\238,\239\240\229\228\236\229\242 \225\251\235 \232\241\239\238\240\247\229\237")
		--SystemNotice( role , "Очень жаль! Ковка прошла неудачно,предмет был испорчен")
		return 2	
	end

	local cha_name = GetChaDefaultName ( role )
	local Item_Jinglian_name = GetItemName ( ItemID_Jinglian )
	LG( "JingLian_ShiBai" , "Player"..cha_name.."Forging successful"..Item_Jinglian_name )
	return 1
end

function get_item_forge_money(...)
	local Money = getforge_money_main ( arg )
	return Money
end

function getforge_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )

	local ItemBag_Jinglian = ItemBag [0]
	local Item_Jinglian = GetChaItem ( role , 2 , ItemBag_Jinglian )
	local Jinglian_Lv = 0

	Jinglian_Lv =  GetItem_JinglianLv ( Item_Jinglian )
	Jinglian_Lv = Jinglian_Lv + 1

	local Money_Need = Jinglian_Lv * 100000
	
	return Money_Need
end







function Get_StoneLv ( Item )							
	local Lv = GetItemAttr ( Item , ITEMATTR_VAL_BaoshiLV )
	return Lv
end


function Set_StoneLv ( Item , Item_Lv )							
	local i = 0
	i = SetItemAttr ( Item , ITEMATTR_VAL_BaoshiLV , Item_Lv )
	if i == 0 then
		LG( "Hecheng_BS","Failed to set gem level" )
	end
end



function CheckItem_CanJinglian ( Item )


	local Item_Type = GetItemType ( Item )
	local i = 0
	for i = 0 , Item_CanJinglian_Num  , 1 do
		if Item_Type == Item_CanJinglian_ID [i] then
			return 1
		end
	end
	
	return 0
	
end




function CheckItem_HaveHole ( Item , Stone1 , Stone2)

	local Num = GetItemForgeParam ( Item , 1 )
	Num = TansferNum ( Num )
	local Hole = GetNum_Part1 ( Num )
	local Item_Stone = {} 
	local Stone1TypeID = 0
	local Stone2TypeID = 0
	
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	
	local i = 0
	local Hole_empty = 0
	
	for i = 0 , 2 , 1 do
		if Item_Stone[i] == 0 then
			Hole_empty = Hole_empty + 1
		end

		Stone1TypeID = GetStone_TypeID ( Stone1 )
		Stone2TypeID = GetStone_TypeID ( Stone2 )


		if Item_Stone[i] == Stone1TypeID or Item_Stone[i] == Stone2TypeID then

			return 1
		end
	end
	
	local Hole_Used = 3 - Hole_empty
	
	if Hole_Used >= Hole then
		return 0
	else
		return 1
	end

	
end



function Check_StoneLv ( Item , Stone1 , Stone2 )
	local Num = GetItemForgeParam ( Item , 1 )
	Num = TansferNum ( Num )
	local Jinglian_Lv =  GetItem_JinglianLv ( Item )
	local Stone1Type = GetItemType ( Stone1 )
	local Stone2Type = GetItemType ( Stone2 )
	local Jinglianshi = 0
	local Jinglianshi_Lv = 0
	local Baoshi = 0
	local Baoshi_Lv = 0
	local Baoshi_NeedLv = 0

	if Stone1Type == 50 then
		Jinglianshi = Stone1
	elseif 	Stone2Type == 50 then
		Jinglianshi = Stone2
	end
	
	if Stone1Type == 49 then
		Baoshi = Stone1
	elseif Stone2Type == 49 then
		Baoshi = Stone2
	end
	
	Jinglianshi_Lv = Get_StoneLv ( Jinglianshi )
	Baoshi_Lv = Get_StoneLv ( Baoshi )


	local Item_Stone = {}
	local Item_StoneLv = {}
	
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )

	BaoshiType = GetStone_TypeID ( Baoshi )

	local i = 0

	for i = 0 , 2 ,1 do
		if BaoshiType == Item_Stone[i] then
			Baoshi_NeedLv = Item_StoneLv[i] + 1
		end
	end

	local Jinglianshi_NeedLv = Baoshi_NeedLv	
	
	if Baoshi_Lv < Baoshi_NeedLv then
		return 0
	end

	if Jinglianshi_Lv < Jinglianshi_NeedLv then
		return 0
	end
	return 1

end

function Jinglian_Item ( Item , Stone1 , Stone2 )
	
	local Num = GetItemForgeParam ( Item , 1 )
	Num = TansferNum ( Num )
	local Jinglian_Lv =  GetItem_JinglianLv ( Item )
	local Stone1Type = GetItemType ( Stone1 )
	local Stone2Type = GetItemType ( Stone2 )
	local Baoshi = 0
	local Num_New = Num

	if Stone1Type == 49 then
		Baoshi = Stone1
	elseif Stone2Type == 49 then
		Baoshi = Stone2
	end
	

	
	Num_New = SetJinglian_Lv ( Baoshi , Baoshi_Lv , Num )


	local i = 0
	
	i = SetItemForgeParam ( Item , 1 , Num_New )
	
	if i == 0 then
		LG( "Jinglian" , "set forging content failed" )
	end

	local Item_URE_Add = 0
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	if Item_MAXURE < 600 then
		Item_MAXURE = math.min ( ( Item_MAXURE + Item_URE_Add ) , 600 )
	end
	
	local j = 0
	j = SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
	
	if j == 0 then
		LG( "Jinglian" , "Forge setting maximum durability failed")
	end
	

	if Num_New == Num then
	end

		
	return 1	

end

function SetJinglian_Lv ( Baoshi , Baoshi_Lv , Num )
	
	local Baoshi_Lv = 0
	Baoshi_Lv = Get_StoneLv ( Baoshi )
	
	local Item_Stone = {}
	local Item_StoneLv = {}
		
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )



	BaoshiType = GetStone_TypeID ( Baoshi )

	
	local i = 0
	local Stone_Check = 0

	for i = 0 , 2 , 1 do
		if BaoshiType == Item_Stone [i] then
			Item_StoneLv [i] = Item_StoneLv [i] + 1
			Stone_Check = i + 1
		end
	end

	if Stone_Check == 1 then
		Num = SetNum_Part3 ( Num , Item_StoneLv[0] )
	elseif Stone_Check == 2 then
		Num = SetNum_Part5 ( Num , Item_StoneLv[1] )
	elseif Stone_Check == 3 then
		Num = SetNum_Part7 ( Num , Item_StoneLv[2] )
	elseif Stone_Check == 0 then
		local Check_empty = 0
		for i = 2 , 0 , -1 do
			if Item_Stone[i] == 0 then
				Check_empty = i + 1
			end
		end

		if Check_empty == 1 then
			Num = SetNum_Part2 ( Num , BaoshiType )
			Num = SetNum_Part3 ( Num , 1 )
		elseif Check_empty == 2 then
			Num = SetNum_Part4 ( Num , BaoshiType )
			Num = SetNum_Part5 ( Num , 1 )
		elseif Check_empty == 3 then
			Num = SetNum_Part6 ( Num , BaoshiType )
			Num = SetNum_Part7 ( Num , 1 )
		end
	end
	
	return Num
end

function GetStone_TypeID ( Stone )


	local StoneID = GetItemID ( Stone )
	local i = 0
	for i = 1 , StoneTpye_ID_Num , 1 do
		if StoneTpye_ID[i] == StoneID then
			return i
		end
	end
	return -1
end




function Read_Table ( Table )
	local role = Table [1]									
	local ItemBag = {}									
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 2
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_New = 0
	local i = 0
	local j = 0
	

	for i = 0 , Get_Count , 1 do
		
		if ItemReadNow <= Table.n then
			ItemBagCount [i] = Table [ItemReadNow]
			ItemBagCount_New = ItemBagCount_New + 1
			ItemReadNow = ItemReadNow + 1
			ItemReadNext = ItemReadNow + 2 * ( ItemBagCount [i] - 1 )
			ItemReadCount = ItemReadNow
			if ItemBagCount [i] ~= 0  then
				for j = ItemReadCount , ItemReadNext , 2 do
					ItemBag [ItemBag_Now] = Table [j]
					ItemBag_Now = ItemBag_Now + 1
					ItemCount [ItemCount_Now] = Table [ j+1 ]
					ItemCount_Now = ItemCount_Now + 1
					ItemReadNow = ItemReadNow + 2
				end
			end
		else
			ItemBagCount [i] = 0
		end
	end
	return role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_New
end

function check_item_final_data ( Item )
	local Item_TypeCheck = GetItemType ( Item )
	if Item_TypeCheck == 59 then
		return
	end
	local Num = GetItemForgeParam ( Item , 1 )
	Num = TansferNum ( Num )
	local StoneInfo = {}
	local StoneLv = {}
	local ResetCheck = 0
	ResetCheck = ResetItemFinalAttr( Item )
	
	if ResetCheck == 0 then
		LG("check_item_final","ResetCheck Failed")
		return
	end
	StoneInfo[0]=0
	StoneInfo[1]=0
	StoneInfo[2]=0
	StoneLv[0]=0
	StoneLv[1]=0
	StoneLv[2]=0
	StoneInfo[0],StoneInfo[1],StoneInfo[2],StoneLv[0],StoneLv[1],StoneLv[2] = CheckStoneInfo ( Num )

	local AddCheck = 0

	local i = 0
	local j = 0
	for i = 0 , 2 , 1 do
		if StoneInfo [i] ~= nil and StoneInfo [i] ~=0  then

			if StoneAttrType[StoneInfo [i]] == ITEMATTR_VAL_MNATK then
				local Itemattr_Type1 = StoneAttrType[StoneInfo [i]]
				local Itemattr_Type2 = Itemattr_Type1 + 1
				local ItemAttrEff = 0
				local num_stone=0
				local lv_stone=0
				if StoneLv[i]>0 and StoneLv[i]<=9 then
					lv_stone=StoneLv[i]
				end
				if StoneInfo [i]>=0 and StoneInfo [i]<=StoneEff_Num then
					num_stone=StoneInfo [i]
					ItemAttrEff =StoneEff [num_stone] * lv_stone
				end
				AddCheck = AddItemFinalAttr ( Item , Itemattr_Type1 , ItemAttrEff )
				if AddCheck == 0 then
					LG("check_item_final","AddCheck Failed")
				end
				AddCheck = AddItemFinalAttr ( Item , Itemattr_Type2 , ItemAttrEff )
				if AddCheck == 0 then
					LG("check_item_final","AddCheck Failed")
				end
			else
				local Itemattr_Type = StoneAttrType[StoneInfo [i]]
				local ItemAttrEff = 0
				local num_stone=0
				local lv_stone=0
				if StoneLv[i]>0 and StoneLv[i]<=9 then
					lv_stone=StoneLv[i]
				end
				if StoneInfo [i]>=0 and StoneInfo [i]<=StoneEff_Num then
					num_stone=StoneInfo [i]
					ItemAttrEff =StoneEff [num_stone] * lv_stone
				end

				AddCheck = AddItemFinalAttr ( Item , Itemattr_Type , ItemAttrEff )
				if AddCheck == 0 then
					LG("check_item_final","AddCheck Failed")
				end

			end
		end
	end
end


function Check_StoneItemType ( Item , Stone1 , Stone2 )
	local Stone1Type = GetItemType ( Stone1 )
	local Stone2Type = GetItemType ( Stone2 )
	local Baoshi = 0
	local ItemType = GetItemType ( Item )
	
	if Stone1Type == 49 then
		Baoshi = Stone1
	elseif Stone2Type == 49 then
		Baoshi = Stone2
	end

	local Baoshi_ID = GetItemID ( Baoshi )
	local i = 0
	local Baoshi_TypeID = 0
	
	for i = 1 , StoneAttrType_Num , 1 do
		if Baoshi_ID == StoneTpye_ID[i] then
			Baoshi_TypeID = i
		end
	end

	for i = 0 , 15 , 1 do
		if ItemType == StoneItemType[Baoshi_TypeID][i] then
			return 1
		end
		if StoneItemType[Baoshi_TypeID][i] == 0 then
			return 0
		end
	end
	
	return 0
end

--ИЎѕ«Б¶µИј¶

function GetItem_JinglianLv ( Item )
	local Num = GetItemForgeParam ( Item , 1 )
	Num = TansferNum ( Num )
	local Item_StoneLv = {}
	local JinglianLv = 0
	
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )

	JinglianLv = Item_StoneLv[0] + Item_StoneLv[1] + Item_StoneLv[2]

	return JinglianLv
end


function CheckStoneInfo( Num )

	local Item_Stone = {}
	local Item_StoneLv = {}
		
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )

	return Item_Stone[0],Item_Stone[1],Item_Stone[2],Item_StoneLv[0],Item_StoneLv[1],Item_StoneLv[2]
end



function Check_CG_HechengBS ( Item_Lv , Item_Type , Sklv )
	local a = 0
	local b = 0
	Item_Lv = Item_Lv - 1
	if Item_Type == 49 then
		a = math.max ( 0 , math.min ( 1 , ( 1 - Item_Lv * 0.10 + Sklv * 0.10 ) ) )
		b = Percentage_Random ( a )
		if Item_Lv < 3 then
			b = 1
		end
		return b
	elseif Item_Type == 50 then
		a = math.max ( 0 , math.min ( 1 , ( 1 - Item_Lv * 0.05 + Sklv * 0.15 ) ) )
		b = Percentage_Random ( a )
		return b
	else
		LG( "Hecheng_BS","probability check determine item type is not a gem" )
		return 0
	end
end

function Check_CG_Jinglian ( Jinglian_Lv , Stone_Lv , Sklv )
	local b = 0
		b = 1
	return b
end


function Roll_DiamondId ( cha ) 
	local a = math.random ( 1 , 8 ) 
	local DiamondId = StoneTpye_ID [ a ] 
	return DiamondId  
end 


function Transfer_DiamondScript_Lv1 ( role )			
	local cha = TurnToCha ( role ) 
	local x_give = 0 
	local y_give = 0 
	local script_count = CheckBagItem ( cha , 3877 )					
	local DiamondId = Roll_DiamondId ( cha )						
	if script_count >= 1 then 
		x_del = DelBagItem ( cha , 3877 , 1 ) 
		if x_del == 1 then 
			x_give = GiveItem ( cha , 0 , DiamondId , 1 , 101 )				

			y_give = GiveItem ( cha , 0 , 885 , 1 , 101 )					


		else 
			SystemNotice ( cha , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \240\224\241\239\232\241\234\243 \237\224 \241\224\236\238\246\226\229\242" ) 
			--SystemNotice ( cha , "Невозможно использовать расписку на самоцвет" ) 
		end 
	else 
		SystemNotice ( cha , "\194\251 \228\238\235\230\237\251 \232\236\229\242\252 \240\224\241\239\232\241\234\243 1 \243\240\238\226\237\255 \247\242\238\225 \226\251\234\243\239\232\242\252 \241\224\236\238\246\226\229\242"  )
		--SystemNotice ( cha , "Вы должны иметь расписку 1 уровня чтоб выкупить самоцвет"  ) 
	end 
	if x_give == 1 and y_give ==1 then 
		return 1 
	else 
		return 0 
	end 
end 

function Transfer_DiamondScript_Lv2 ( role )			
	local cha = TurnToCha ( role ) 
	local x_give = 0 
	local y_give = 0 
	local script_count = CheckBagItem ( cha , 3878 )					
	local DiamondId = Roll_DiamondId ( cha )						
	if script_count >= 1 then 
		x_del = DelBagItem ( cha , 3878 , 1 ) 
		if x_del == 1 then 
			x_give = GiveItem ( cha , 0 , DiamondId , 1 , 102 )				

			y_give = GiveItem ( cha , 0 , 885 , 1 , 102 )					

		else 
			SystemNotice ( cha , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \240\224\241\239\232\241\234\243 \237\224 \241\224\236\238\246\226\229\242" ) 
			--SystemNotice ( cha , "Невозможно использовать расписку на самоцвет" ) 
		end 
	else 
		SystemNotice ( cha , "\194\251 \228\238\235\230\237\251 \232\236\229\242\252 \240\224\241\239\232\241\234\243 2 \243\240\238\226\237\255 \247\242\238\225 \226\251\234\243\239\232\242\252 \241\224\236\238\246\226\229\242"  )
		--SystemNotice ( cha , "Вы должны иметь расписку 2 уровня чтоб выкупить самоцвет"  )  
	end 
	if x_give == 1 and y_give ==1 then 
		return 1 
	else 
		return 0 
	end 
end 

---------------------------------
function Transfer_TeamStar( role , level )
	local cha = TurnToCha ( role )  
	local script_count = CheckBagItem ( cha , 1034 )		
	local chaLV =  GetChaAttr( cha , ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) 

	if script_count >= 1 then
		if chaLV < 41 then
			SystemNotice(role,"\194\224\248\224 \231\226\229\231\228\224 \229\228\232\237\241\242\226\224 \237\229 \237\224\225\240\224\235\224 \228\238\241\242\224\242\238\247\237\238 \238\239\251\242\224.\194\238\231\226\240\224\249\224\233\242\229\241\252 \234\238\227\228\224 \225\243\228\229\242\229 41 \243\240\238\226\237\255")
			--SystemNotice(role,"Ваша звезда единства не набрала достаточно опыта.Возвращайтесь когда будете 41 уровня")
		else
			if job ~= 12 and job ~= 9 and job ~= 16 and job ~= 8 and job ~= 13 and job ~=14 then
				SystemNotice(role,"\204\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\224 \239\238\241\235\229 \239\238\235\243\247\229\237\232\255 2 \239\240\238\244\229\241\241\232\232.")
				--SystemNotice(role,"Может быть использована после получения 2 профессии.")
			else
				local x_del = DelBagItem ( cha , 1034 , 1 ) 
				if x_del == 1 then 
					if job == 12 then	
						GiveItem( role , 0 , 1409  , 1 , 22 )
					elseif job == 9	then 
						GiveItem( role , 0 , 1392  , 1 , 22 )
					elseif job == 16 then	
						GiveItem( role , 0 , 1419  , 1 , 22 )
					elseif job == 8	then 
						GiveItem( role , 0 , 1382  , 1 , 22 )
					elseif job == 13 then	
						GiveItem( role , 0 ,1433  , 1 , 22 )
					elseif job == 14 then	
						GiveItem( role , 0 , 1467  , 1 , 22 )
					end
				else 
					SystemNotice ( cha , "\205\229 \226\238\231\236\238\230\237\238 \243\228\224\235\232\242\252 \199\226\229\231\228\243 \229\228\232\237\241\242\226\224" ) 
					--SystemNotice ( cha , "Не возможно удалить Звезду единства" ) 
				end 
			end
		end
	else 
		SystemNotice ( cha , "\205\229\238\225\245\238\228\232\236\238 \238\225\235\224\228\224\242\252 \199\226\229\231\228\238\233 \229\228\232\237\241\242\226\224"  ) 
		--SystemNotice ( cha , "Необходимо обладать Звездой единства"  ) 
	end 
end


function TransferDiamond( role , level )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag

	if level == 1 then
		retbag = HasLeaveBagGrid( role, 2)
			if retbag ~= LUA_TRUE then
				SystemNotice(role,"\194\251 \232\237\226\229\237\242\224\240\229 \228\238\235\230\237\238 \225\251\242\252 2 \232 \225\238\235\229\229 \241\235\238\242\238\226")
				--SystemNotice(role,"Вы инвентаре должно быть 2 и более слотов")
				return 
			end	
		Transfer_DiamondScript_Lv1 ( role )
	elseif level == 2 then 
		retbag = HasLeaveBagGrid( role, 2)
			if retbag ~= LUA_TRUE then
				SystemNotice(role,"\194\251 \232\237\226\229\237\242\224\240\229 \228\238\235\230\237\238 \225\251\242\252 2 \232 \225\238\235\229\229 \241\235\238\242\238\226")
				--SystemNotice(role,"Вы инвентаре должно быть 2 и более слотов")
				return 
			end	
		Transfer_DiamondScript_Lv2 ( role )
	elseif level == 3 then
		retbag = HasLeaveBagGrid( role, 1)
			if retbag ~= LUA_TRUE then
				SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
				--SystemNotice(role,"Нехватает места в инвентаре")
				return 
			end	
		Transfer_OneStoneScript ( role )
	elseif level == 4 then
		retbag = HasLeaveBagGrid( role, 1)
			if retbag ~= LUA_TRUE then
				SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
				--SystemNotice(role,"Нехватает места в инвентаре")
				return 
			end	
		Transfer_OneDiamondScript ( role )
	else
		LG( "BSduihuan","Wrong coupon used" )
	end
end



function Transfer_OneStoneScript ( role )
	local cha = TurnToCha ( role ) 
	local y_give = 0 
	
	local script_count = CheckBagItem ( cha , 3885 )					

	if script_count >= 1 then 
		x_del = DelBagItem ( cha , 3885 , 1 ) 
		if x_del == 1 then 
			y_give = GiveItem ( cha , 0 , 885 , 1 , 101 )				
		else 
			SystemNotice ( cha , "\205\229 \226\238\231\236\238\230\237\238 \243\228\224\235\232\242\252 \240\224\241\239\232\241\234\243 \237\224 \241\224\236\238\246\226\229\242" ) 
			--SystemNotice ( cha , "Не возможно удалить расписку на самоцвет" ) 
		end 
	else 
		SystemNotice ( cha , "\194\251 \228\238\235\230\237\251 \232\236\229\242\252 \240\224\241\239\232\241\234\243 \237\224 \238\247\232\249\224\254\249\232\233 \241\224\236\238\246\226\229\242 \247\242\238\225 \226\251\234\243\239\232\242\252"  ) 
		--SystemNotice ( cha , "Вы должны иметь расписку на очищающий самоцвет чтоб выкупить"  ) 
	end 
	if y_give ==1 then 
		return 1 
	else 
		return 0 
	end
end

function Transfer_OneDiamondScript ( role )
	local cha = TurnToCha ( role ) 
	local x_give = 0 
	local y_give = 0 
	local script_count = CheckBagItem ( cha , 3886 )				
	local DiamondId = Roll_DiamondId ( cha )						
	if script_count >= 1 then 
		x_del = DelBagItem ( cha , 3886 , 1 ) 
		if x_del == 1 then 
			x_give = GiveItem ( cha , 0 , DiamondId , 1 , 101 )				


		else 
			SystemNotice ( cha , "\205\229 \226\238\231\236\238\230\237\238 \243\228\224\235\232\242\252 \240\224\241\239\232\241\234\243 \237\224 \241\224\236\238\246\226\229\242" ) 
			--SystemNotice ( cha , "Не возможно удалить расписку на самоцвет" ) 
		end 
	else 
		SystemNotice ( cha , "\194\251 \228\238\235\230\237\251 \232\236\229\242\252 \240\224\241\239\232\241\234\243 \237\224 \241\224\236\238\246\226\229\242"  ) 
		--SystemNotice ( cha , "Вы должны иметь расписку на самоцвет"  ) 
	end 
	if x_give == 1 then 
		return 1 
	else 
		return 0 
	end 
end 



function TansferNum ( Num )
	if Num < 0 then
		Num = Num + 4294967296
	end
	return Num
end



function can_milling_item (...)

	if arg.n ~= 12 then
		return 0
	end
	
	local kkk = 0
	
	local Check = 0
	Check = can_milling_item_main ( arg )
	if Check == 1 then
		
		return 1
	else
		return 0
	end
end

function can_milling_item_main ( Table )
	local role = 0
	local ItemBag = {}									
	local ItemCount = {}									
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0


	
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )

	local ItemBag_damo = ItemBag [0]
	local Item_damo = GetChaItem ( role , 2 , ItemBag_damo )					
	local Item_Cailiao1 = GetChaItem ( role , 2 , ItemBag [1] )				
	local Item_Cailiao2 = GetChaItem ( role , 2 , ItemBag [2] )					

	local Check_Cailiao1 = 0
	local Check_Cailiao2 = 0

	Check_Cailiao1 = Check_Jiaguji ( Item_Cailiao1 , Item_Cailiao2 )
	Check_Cailiao2 = Check_Cuihuafen ( Item_Cailiao1 , Item_Cailiao2 )

	if Check_Cailiao1 == 0 then
		SystemNotice ( role , "\207\235\224\226\234\224 \242\240\229\225\243\229\242 \234\224\242\224\235\232\231\224\242\238\240 \241\237\224\240\255\230\229\237\232\255" )
		--SystemNotice ( role , "Плавка требует катализатор снаряжения" )
		return 0
	end

	if Check_Cailiao2 == 0 then
		return 0
	end

	local Check_Hole = 0

	Check_Hole = Check_HasHole ( Item_damo )
	
	if Check_Hole >= 3 then
		SystemNotice ( role , "\204\224\234\241\232\236\224\235\252\237\238\229 \234\238\235\232\247\229\241\242\226\238 \241\235\238\242\238\226" )
		--SystemNotice ( role , "Максимальное количество слотов" )
		return 0
	end

	local Money_Need = get_milling_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224 \237\224 \239\235\224\226\234\243")
		--SystemNotice( role ,"Нехватает золота на плавку")
		return 0
	end

	return 1
end

function get_item_milling_money(...)
	local Money = get_milling_money_main ( arg )
	return Money
end

function get_milling_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}									
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )

	local ItemBag_damo = ItemBag [0]
	local Item_damo = GetChaItem ( role , 2 , ItemBag_damo )
	local Hole_Num = 0

	local Num = GetItemForgeParam ( Item_damo , 1 )
	Num = TansferNum ( Num )
	Hole_Num = GetNum_Part1 ( Num )

	local Money_Need = ( Hole_Num + 1 ) * 50000
	
	return Money_Need
end



function begin_milling_item (...)

	local Check_CanMilling = 0
	Check_CanMilling = can_milling_item_main ( arg )

	if Check_CanMilling == 0 then
		return 0
	end


	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )

	local ItemBag_damo = ItemBag [0]
	local Item_damo = GetChaItem ( role , 2 , ItemBag_damo )
	local Item_cailiao1 = GetChaItem ( role , 2 , ItemBag [1] )
	local Item_cailiao2 = GetChaItem ( role , 2 , ItemBag [2] )


	local Money_Need = get_milling_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )

	local ItemID_Cailiao1 = GetItemID ( Item_cailiao1 )
	local ItemID_Cailiao2 = GetItemID ( Item_cailiao2 )

	local R1 = 0
	local R2 = 0

	R1 = RemoveChaItem ( role , ItemID_Cailiao1 , 1 , 2 , ItemBag [1] , 2 , 1 , 0 )		--ТЖіэІДБП1
	R2 = RemoveChaItem ( role , ItemID_Cailiao2 , 1 , 2 , ItemBag [2] , 2 , 1 , 0 )		--ТЖіэІДБП2

	if R1 == 0 or R2 == 0 then
	end
	
	
	local Sklv = 1
	

	local b = Check_CG_damo ( Item_damo , Sklv )
	if b == 0 then
		Damo_Shibai ( role , Item_damo )
		return 2
	end

	
	Damo_ChengGong ( role , Item_damo )
	local cha_name = GetChaDefaultName ( role )

	return 1

end


function Check_Jiaguji ( Item_Cailiao1 , Item_Cailiao2 )

	local ItemID_Cailiao1 = GetItemID ( Item_Cailiao1 )
	local ItemID_Cailiao2 = GetItemID ( Item_Cailiao2 )

	if ItemID_Cailiao1 == 890 then
		return 1
	elseif ItemID_Cailiao2 == 890 then
		return 1
	end
	
	return 0
end


function Check_Cuihuafen ( Item_Cailiao1 , Item_Cailiao2 )

	local ItemID_Cailiao1 = GetItemID ( Item_Cailiao1 )
	local ItemID_Cailiao2 = GetItemID ( Item_Cailiao2 )

	if ItemID_Cailiao1 == 891 then
		return 1
	elseif ItemID_Cailiao2 == 891 then
		return 1
	end
	
	return 0
end



function  Check_HasHole ( Item_damo )

	local Num = GetItemForgeParam ( Item_damo , 1 )
	Num = TansferNum ( Num )
	local Hole_Num = GetNum_Part1 ( Num )
	return Hole_Num
end




function Check_CG_damo ( Item_damo , Sklv )

    local a = 0
    local Hole_Num = Check_HasHole ( Item_damo )
    
    if Hole_Num == 0 then
        a = 1
    end

    if Hole_Num == 1 then
        a = 1
    end

    if Hole_Num == 2 then
        a = 1
    end

    if Hole_Num == 3 then
        a = 0.5
    end

    local b = Percentage_Random ( a )
    
    return b
end


function Damo_Shibai ( role , Item_damo )

		local cha_name = GetChaDefaultName ( role )
		SystemNotice ( role , "\209\238\231\228\224\237\232\229 \241\235\238\242\224 \239\238\242\229\240\239\229\235\238 \237\229\243\228\224\247\243.\207\238\239\240\238\225\243\233\242\229 \229\249\184 \240\224\231 " )
		--SystemNotice ( role , "Создание слота потерпело неудачу.Попробуйте ещё раз " )

end


function Damo_ChengGong ( role , Item_damo )
	
	local Num = GetItemForgeParam ( Item_damo , 1 )
	local i = 0
	Num = TansferNum ( Num )
	local Hole_Num = GetNum_Part1 ( Num )
	
	if Hole_Num <= 2 then
		SystemNotice ( role , "\209\235\238\242 \225\251\235 \243\228\224\247\237\238 \241\238\231\228\224\237." )
		--SystemNotice ( role , "Слот был удачно создан." )
		Hole_Num = Hole_Num + 1
	else
		SystemNotice ( role , "\211 \226\224\241 \243\230\229 \236\224\234\241\232\236\224\235\252\237\238\229 \234\238\235\232\247\229\241\242\226\238 \241\235\238\242\238\226 " )
		--SystemNotice ( role , "У вас уже максимальное количество слотов " )
	end

	Num = SetNum_Part1 ( Num , Hole_Num )
	
	i = SetItemForgeParam ( Item_damo , 1 , Num )
	if i == 0 then
	end
end


function Delete_Forge_Eff ( role , Item_damo )
	local Jinglian_Lv = GetItem_JinglianLv ( Item_damo )
	if Jinglian_Lv == 0 then
		return
	end
	
	local Num = GetItemForgeParam ( Item_damo , 1 )

	local Item_Stone = {}
	local Item_StoneLv = {}
		
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )

	local j = 0
	local Del = 0
	for j = 2 , 0 , -1 do
		if Del == 0 then
			if Item_Stone [j] ~= 0 or Item_StoneLv[j] ~= 0 then
				Item_Stone[j] = 0
				Item_StoneLv[j] = 0
				Del = 1
			end
		end
	end
	
	Num = SetNum_Part2( Num , Item_Stone[0] )
	Num = SetNum_Part4( Num , Item_Stone[1] )
	Num = SetNum_Part6( Num , Item_Stone[2] )

	Num = SetNum_Part3( Num , Item_StoneLv[0] )
	Num = SetNum_Part5( Num , Item_StoneLv[1] )
	Num = SetNum_Part7( Num , Item_StoneLv[2] )

	local i = 0
	i = SetItemForgeParam ( Item_damo , 1 , Num )
	if i == 0 then
	end


end


function can_fusion_item(...)

	if arg.n ~= 12 and arg.n ~= 14 then
		return 0
	end

	local Check = 0

	Check = can_fusion_item_main ( arg )

	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_fusion_item_main ( Table )
	
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )

	if ItemCount [1] ~= 1 or ItemCount [2] ~= 1 or ItemBagCount [1] ~= 1 or ItemBagCount [2] ~= 1 then
		return 0
	end

	local Item_Juanzhou = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_Waiguan = GetChaItem ( role , 2 , ItemBag [1] )	
	local Item_Shuxing = GetChaItem ( role , 2 , ItemBag [2] )	




	local  ItemType_Juanzhou = GetItemType ( Item_Juanzhou )
	if ItemType_Juanzhou ~= 60 then
		return 0
	end

        local ItemID_Waiguan = GetItemID ( Item_Waiguan )
	if ItemID_Waiguan <= 4999 or  ItemID_Waiguan >= 6000 then
		SystemNotice( role ,"\207\240\229\228\236\229\242 \237\229 \239\238\228\245\238\228\232\242")
		--SystemNotice( role ,"Предмет не подходит")
		return 0
	end


  	local Item_URE = GetItemAttr ( Item_Waiguan , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item_Waiguan , ITEMATTR_MAXENERGY )
	if	Item_URE < Item_MAXENERGY then
		return 0		
	end

  	local Item_FUSIONID_star = GetItemAttr ( Item_Shuxing , ITEMATTR_VAL_FUSIONID )
	local ItemID_shuxing_star =  GetItemID ( Item_Shuxing )
	if	Item_FUSIONID_star ==0  and ItemID_shuxing_star>=5000 then
		SystemNotice( role ,"\194 \239\240\224\226\238\236 \241\235\238\242\229 \238\242\241\243\242\241\242\226\243\229\242 \239\240\229\228\236\229\242 \228\235\255 \239\235\224\226\234\232!")
		--SystemNotice( role ,"В правом слоте отсутствует предмет для плавки!")
		return 0		
	end


	local ItemType_Shuxing = GetItemType (Item_Shuxing)
	if  ItemType_Shuxing < 1  then
		 SystemNotice( role ," \210\229\234\243\249\232\232 \245\224\240\224\234\242\229\240\232\241\242\232\234\232 \239\240\229\228\236\229\242\224 \237\229 \236\238\227\243\242 \239\229\240\229\228\224\237\237\251 \228\240\243\227\238\236\243 \239\240\229\228\236\229\242\243")	
		 --SystemNotice( role ," Текущии характеристики предмета не могут переданны другому предмету")
			return 0
			elseif ItemType_Shuxing > 11 and  ItemType_Shuxing < 20 then
					SystemNotice( role ," \210\229\234\243\249\232\232 \245\224\240\224\234\242\229\240\232\241\242\232\234\232 \239\240\229\228\236\229\242\224 \237\229 \236\238\227\243\242 \239\229\240\229\228\224\237\237\251 \228\240\243\227\238\236\243 \239\240\229\228\236\229\242\243")	
					--SystemNotice( role ," Текущии характеристики предмета не могут переданны другому предмету")
				return 0
					elseif ItemType_Shuxing > 24  and ItemType_Shuxing ~= 27 then
							SystemNotice( role ," \210\229\234\243\249\232\232 \245\224\240\224\234\242\229\240\232\241\242\232\234\232 \239\240\229\228\236\229\242\224 \237\229 \236\238\227\243\242 \239\229\240\229\228\224\237\237\251 \228\240\243\227\238\236\243 \239\240\229\228\236\229\242\243")	
							--SystemNotice( role ," Текущии характеристики предмета не могут переданны другому предмету")
						return 0

	end

	local ItemType_Shuxing = GetItemType ( Item_Shuxing )
	local ItemType_Waiguan = GetItemType ( Item_Waiguan )
	local star=0
	if ItemType_Shuxing ~= 22 and ItemType_Shuxing ~=27 then 
	star = 1
	end
	if ItemType_Waiguan~=27  then
		if ItemType_Shuxing ~= ItemType_Waiguan then
		SystemNotice( role ,"\205\229\241\238\238\242\226\229\242\241\242\226\232\229 \242\232\239\224 \239\240\229\228\236\229\242\224" )
		--SystemNotice( role ,"Несоответствие типа предмета" )
		return 0
		end 
	elseif ItemType_Waiguan==27 and star == 1 then
		SystemNotice( role ,"\205\229\241\238\238\242\226\229\242\241\242\226\232\229 \242\232\239\224 \239\240\229\228\236\229\242\224" )
		--SystemNotice( role ,"Несоответствие типа предмета" )
		return 0
	end

	local Check_RongHe = 0
	Check_RongHe = CheckFusionItem( Item_Waiguan , Item_Shuxing )
	if Check_RongHe == LUA_FALSE then
		SystemNotice( role ,"\205\229\241\238\238\242\226\229\242\241\242\226\232\229 \242\232\239\224 \239\240\229\228\236\229\242\224 \232\235\232 \234\235\224\241\241\224" )
		--SystemNotice( role ,"Несоответствие типа предмета или класса" )
		return 0
	end

	if ItemBagCount[3] == 0 then

	local Item_Waiguan_name = GetItemName ( ItemID_Waiguan )
	end
	if ItemBagCount[3] ~= 0 then
	local Item_Cuihuaji =  GetChaItem ( role , 2 , ItemBag [3] )
	local ItemType_Cuihuaji =  GetItemType ( Item_Cuihuaji )
		if  ItemType_Cuihuaji ~= 61 then
			SystemNotice( role ,"\197\241\242\252 \237\229\234\238\242\238\240\251\229 \239\240\238\225\235\229\236\251 \241 \234\224\242\224\235\232\231\224\242\238\240\238\236" )
			--SystemNotice( role ,"Есть некоторые проблемы с катализатором" )
			return 0
		end
	end


	local Money_Need = getfusion_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224")
		--SystemNotice( role ,"Нехватает золота")
		return 0
	end
	return 1
end



function begin_fusion_item(...)

	
	local Check_Canfusion = 0
	Check_Canfusion = can_fusion_item_main ( arg )
	if Check_Canfusion == 0 then
		return 0
	end


	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0


	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )

	local Item_Juanzhou = GetChaItem ( role , 2 , ItemBag [0] )
	local Item_Waiguan = GetChaItem ( role , 2 , ItemBag [1] )
	local Item_Shuxing = GetChaItem ( role , 2 , ItemBag [2] )
	local ItemID_Waiguan = GetItemID ( Item_Waiguan )



	local Money_Need = getfusion_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )

	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )


	Check_Ronghe_Item = ronghe_item ( arg )

	if Check_Ronghe_Item == 0  then
		SystemNotice ( role ,"\207\235\224\226\234\224 \239\240\238\226\224\235\232\235\224\241\252")
		--SystemNotice ( role ,"Плавка провалилась")
	end
	SynChaKitbag(role,13)

	local cha_name = GetChaDefaultName ( role )
	SystemNotice ( role ,"\207\235\224\226\234\224 \239\240\238\248\235\224 \243\241\239\229\248\237\238")
	--SystemNotice ( role ,"Плавка прошла успешно")
	local Item_Waiguan_name = GetItemName ( ItemID_Waiguan )
	return 1

end

function get_item_fusion_money(...)
	
	local Money = getfusion_money_main ( arg )
	return Money
end


function getfusion_money_main ( Table )
	
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}								
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )

	local ItemBag_Shuxing = ItemBag [2]
	local Item_Shuxing = GetChaItem ( role , 2 , ItemBag_Shuxing )
	local Shuxing_Lv = 0

	local Shuxing_Lv =  GetItemLv ( Item_Shuxing )
	local Money_Need = Shuxing_Lv * 1000

	return Money_Need
end


function ronghe_item ( Table )
	

	local role = 0
	local ItemBag = {}									
	local ItemCount = {}									
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0


	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )

	local Item_Juanzhou = GetChaItem ( role , 2 , ItemBag [0] )
	local Item_Waiguan = GetChaItem ( role , 2 , ItemBag [1] )
	local Item_Shuxing = GetChaItem ( role , 2 , ItemBag [2] )

	local ItemID_Juanzhou = GetItemID ( Item_Juanzhou )
	local ItemID_Waiguan = GetItemID ( Item_Waiguan )
	local ItemID_Shuxing = GetItemID ( Item_Shuxing )
	local ItemID_star = ItemID_Shuxing
	local flg=0
	if ItemBagCount[3] ~= 0 then
		local Item_Cuihuaji = GetChaItem ( role , 2 , ItemBag [3] )
		ItemID_Cuihuaji = GetItemID ( Item_Cuihuaji )
		flg=1
	end
		
	local Jinglianxinxi = GetItemForgeParam ( Item_Shuxing , 1 )

	if ItemID_Shuxing > 5000 then

		ItemID_Shuxing = GetItemAttr( Item_Waiguan , ITEMATTR_VAL_FUSIONID )

		SetItemAttr( Item_Waiguan , ITEMATTR_VAL_FUSIONID , ItemID_Shuxing )
	else
		SetItemAttr( Item_Waiguan , ITEMATTR_VAL_FUSIONID , ItemID_Shuxing )
	end



	local Check_FusionItem = FusionItem ( Item_Waiguan, Item_Shuxing )


	local star_lv=0
	if flg==1 then
		if ItemID_star < 5000 then 
			star_lv=10
		else
			star_lv=GetItemAttr ( Item_Shuxing , ITEMATTR_VAL_LEVEL )                                    
		end
	else 
		star_lv=10
	end

	SetItemAttr ( Item_Waiguan , ITEMATTR_VAL_LEVEL , star_lv )                                    
	local hole_num = Check_HasHole ( Item_Shuxing )

	if Check_FusionItem == 0    then
		SystemNotice ( role ,"\207\235\224\226\234\224 \239\240\238\226\224\235\232\235\224\241\252")
		--SystemNotice ( role ,"Плавка провалилась")
		return
	end

	local Item_Shuxing_ENERGY  = GetItemAttr ( Item_Shuxing , ITEMATTR_ENERGY )
	local Item_Shuxing_MAXURE  = GetItemAttr ( Item_Shuxing , ITEMATTR_MAXURE )
	local cha_name = GetChaDefaultName ( role )
	local num={}
	local numAttr={}
	local b = 0
	local a = {}

	for b=1,5,1 do
		num [b]=0
		numAttr [b]=0
	end
	b = 0
	for i=1,47,1 do
	    a [i]=GetItemAttr ( Item_Shuxing , i )
		if a [i]~=0 then

				b = b + 1
				num [b]=i
				numAttr [b]=a[i]
		end
	end
	local attr1=GetItemAttr ( Item_Waiguan , num[1] )
	local attr2=GetItemAttr ( Item_Waiguan , num[2] )
	local attr3=GetItemAttr ( Item_Waiguan , num[3] )
	local attr4=GetItemAttr ( Item_Waiguan , num[4] )
	local attr5=GetItemAttr ( Item_Waiguan , num[5] )

	SetItemAttr ( Item_Waiguan , ITEMATTR_MAXURE , 20000 )
	SetItemAttr ( Item_Waiguan , ITEMATTR_URE , 20000 )
	local R1 = 0
	local R2 = 0
	local R3 = 1
	R1 = RemoveChaItem ( role , ItemID_Juanzhou , 1 , 2 , ItemBag [0] , 2 , 1 , 0 )		
	R2 = RemoveChaItem ( role , ItemID_Shuxing , 1 , 2 , ItemBag [2] , 2 , 1 , 0 )		
	if ItemID_Cuihuaji ~= 0 then
		R3 = RemoveChaItem ( role , ItemID_Cuihuaji , 1 , 2 , ItemBag [3] , 2 , 1 , 0 )	
	end
	if R1 == 0 or R2 == 0 or R3 == 0 then
		SystemNotice( role , "\207\229\240\229\236\229\249\229\237\232\229 \239\240\229\228\236\229\242\224 \239\240\238\248\235\238 \237\229\243\228\224\247\237\238 ")
		--SystemNotice( role , "Перемещение предмета прошло неудачно ")
		return
	end


	if ItemID_Cuihuaji ~= 0 then
		local Check_SetItemForgeParam = SetItemForgeParam( Item_Waiguan , 1 , Jinglianxinxi )
		if Check_SetItemForgeParam == 0 then
			SystemNotice( role , "Fail to set forging attribute settings")
			return
		end
	else 
		local Part1_Jinglianxinxi = GetNum_Part1 ( Jinglianxinxi )	
		local Part2_Jinglianxinxi = GetNum_Part2 ( Jinglianxinxi )	
		local Part3_Jinglianxinxi = GetNum_Part3 ( Jinglianxinxi )
		local Part4_Jinglianxinxi = GetNum_Part4 ( Jinglianxinxi )
		local Part5_Jinglianxinxi = GetNum_Part5 ( Jinglianxinxi )
		local Part6_Jinglianxinxi = GetNum_Part6 ( Jinglianxinxi )
		local Part7_Jinglianxinxi = GetNum_Part7 ( Jinglianxinxi )
		Jinglianxinxi = SetNum_Part1 ( Jinglianxinxi , hole_num ) 
		Jinglianxinxi = SetNum_Part2 ( Jinglianxinxi , 0 )
		Jinglianxinxi = SetNum_Part3 ( Jinglianxinxi , 0 )
		Jinglianxinxi = SetNum_Part4 ( Jinglianxinxi , 0 )
		Jinglianxinxi = SetNum_Part5 ( Jinglianxinxi , 0 )
		Jinglianxinxi = SetNum_Part6 ( Jinglianxinxi , 0 )
		Jinglianxinxi = SetNum_Part7 ( Jinglianxinxi , 0 )
		local Check_SetItemForgeParam = SetItemForgeParam( Item_Waiguan , 1 , Jinglianxinxi )
		if Check_SetItemForgeParam == 0 then
			SystemNotice( role , "Fail to set forging attribute settings")
			return
		end	
	end
end


function can_upgrade_item (...)


	if arg.n ~= 12 then
		return 0
	end

	local Check = 0

	Check = can_beuplv_item_main ( arg )

	if Check == 1 then
		return 1
	else
		return 0
	end

end

function can_beuplv_item_main ( Table )


	local role = 0
	local ItemBag = {}									
	local ItemCount = {}									
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )

	local ItemBagCount_beuplv = ItemBagCount [1]
	local ItemBag_beuplv = ItemBag [1]
	local ItemNum_beuplv = ItemCount [1]
	local Item_beuplv = GetChaItem ( role , 2 , ItemBag_beuplv )

	local Item_beuplv_Type = GetItemType ( Item_beuplv )		
	local Item_beuplv_ID = GetItemID ( Item_beuplv )		
	local Item_ScItem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_YxItem = GetChaItem ( role , 2 , ItemBag [2] )	
	local Item_ScItem_ID = GetItemID ( Item_ScItem )		
	local Item_YxItem_ID = GetItemID ( Item_YxItem )		
	local Item_ScItem_Type = GetItemType ( Item_ScItem )		
	local Item_YxItem_Type = GetItemType ( Item_YxItem )		


	local Item_beuplv_Lv =  Get_Itembeuplv_Lv ( Item_beuplv )	
	
	local ItemAttr_Val_Fusionid = GetItemAttr ( Item_beuplv , ITEMATTR_VAL_FUSIONID ) 

	if Item_beuplv_ID < 5001 or Item_beuplv_ID > 6000 then					
		SystemNotice( role ,"\207\240\229\228\236\229\242 \237\229\239\238\228\245\238\228\232\242 \228\235\255 \239\235\224\226\234\232 ")
		--SystemNotice( role ,"Предмет неподходит для плавки ")
		return 0
	end
-------------------------------------------                           
	if  ItemAttr_Val_Fusionid == 0 then
		SystemNotice( role , "\221\242\238\242 \239\240\229\228\236\229\242 \237\229 \236\238\230\229\242 \243\235\243\247\248\224\242\252\241\255 \225\229\231 \239\240\229\228\226\224\240\232\242\229\235\252\237\238\233 \239\235\224\226\234\232")
		--SystemNotice( role , "Этот предмет не может улучшаться без предварительной плавки")
		return 0
	end

-----------------------------------------------
	if Item_beuplv_Lv >= 15 then	
		SystemNotice( role ,"\211\240\238\226\229\237\252 \243\235\243\247\248\229\237\232\255 \228\238\241\242\232\227 \236\224\234\241\232\236\224")
		--SystemNotice( role ,"Уровень улучшения достиг максима")
		return 0
	end
	if ItemBagCount_beuplv ~= 1 then				
		return 0
	end
	if Item_ScItem_Type ~= 62 then
		SystemNotice( role , "\205\229\239\240\224\226\232\235\252\237\251\233 \242\232\239 \241\226\232\242\234\224 \243\241\232\235\229\237\232\255 ")
		--SystemNotice( role , "Неправильный тип свитка усиления ")
		return 0
	end
	if Item_YxItem_Type ~= 63 then
		SystemNotice( role , "\205\229\239\240\224\226\232\235\252\237\251\233 \242\232\239 \234\240\232\241\242\224\235\224 \243\241\232\235\229\237\232\255 ")
		--SystemNotice( role , "Неправильный тип кристала усиления ")
		return 0
	end

	if ItemNum_beuplv ~= 1 then
		return 0
	end

	if ItemCount [0] ~= 1 or ItemCount [2] ~= 1 or ItemBagCount [0] ~= 1 or ItemBagCount [2] ~= 1 then  
		SystemNotice ( role ,"\206\248\232\225\234\224 \239\238\234\243\239\234\232 \239\240\229\228\236\229\242\224 \226 \236\224\227\224\231\232\237\229")
		--SystemNotice ( role ,"Ошибка покупки предмета в магазине")
		return 0
	end

	local Money_Need = getupgrade_money_main ( Table )

	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \228\229\237\229\227 \228\235\255 \243\241\232\235\229\237\232\255 \239\240\229\228\236\229\242\224")
		--SystemNotice( role ,"Нехватает денег для усиления предмета")
		return 0
	end

	return 1

end



function begin_upgrade_item (...)



	local Check_Canbeuplv = 0
	Check_Canbeuplv = can_beuplv_item_main ( arg )

	if Check_Canbeuplv == 0 then
		return 0
	end

	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )

	local ItemBag_beuplv = ItemBag [1]
	local Item_beuplv = GetChaItem ( role , 2 , ItemBag_beuplv )    
	local Item_ScItem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_YxItem = GetChaItem ( role , 2 , ItemBag [2] )	
	local Item_ScItem_ID = GetItemID ( Item_ScItem )		
	local Item_YxItem_ID = GetItemID ( Item_YxItem )		

	local Item_beuplv_Lv =  Get_Itembeuplv_Lv ( Item_beuplv )	


	local R1 = 0
	local R2 = 0

	R1 = RemoveChaItem ( role , Item_ScItem_ID , 1 , 2 , ItemBag [0] , 2 , 1 , 0 )		
	R2 = RemoveChaItem ( role , Item_YxItem_ID , 1 , 2 , ItemBag [2] , 2 , 1 , 0 )		

	if R1 == 0 or R2 == 0 then
	end

	local Money_Need = getupgrade_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )					

	local a = Check_CG_beuplv ( Item_beuplv_Lv )			

	if a == 0 then
		R1 = RemoveChaItem ( role , Item_ScItem_ID , 1 , 2 , ItemBag [0] , 2 , 1 , 0 )		
		R2 = RemoveChaItem ( role , Item_YxItem_ID , 1 , 2 , ItemBag [2] , 2 , 1 , 0 )		
		if R1 == 0 or R2 == 0 then
		end
		local cha_name = GetChaDefaultName ( role )
		SystemNotice( role , "\202 \241\238\230\229\235\229\237\232\254 \243\241\232\235\229\237\232\229 \239\240\238\248\235\238 \237\229\243\228\224\247\237\238. \205\229\234\238\242\238\240\251\229 \239\240\229\228\236\229\242\251 \239\240\238\239\224\235\232  =(")
		--SystemNotice( role , "К сожелению усиление прошло неудачно. Некоторые предметы пропали  =(")
		return 
	end


	Item_beuplv_Lv = Item_beuplv_Lv + 1

	SetChaKitbagChange( role , 1 )

	Set_Itembeuplv_Lv ( Item_beuplv , Item_beuplv_Lv )		

	SynChaKitbag( role, 4 )

	local LvD = GetItemAttr( Item_beuplv , ITEMATTR_VAL_LEVEL )

	SynChaKitbag(role,13)

	SystemNotice( role , "\211\241\232\235\229\237\232\229 \239\240\238\248\235\238 \243\241\239\229\248\237\238")
	--SystemNotice( role , "Усиление прошло успешно")
	local cha_name = GetChaDefaultName ( role )

	return 1

end


function Get_Itembeuplv_Lv ( Item )								

	local Lv = GetItemAttr ( Item , ITEMATTR_VAL_LEVEL )

	return Lv
end


function Set_Itembeuplv_Lv ( Item , Item_Lv )							
	local i = 0
	i = SetItemAttr ( Item , ITEMATTR_VAL_LEVEL , Item_Lv )
	if i == 0 then
	end
end

function Check_CG_beuplv ( Item_Lv )				
	local	ran = math.random ( 1, 100 )

	if Item_Lv <= 10 then					
		return 1
	end
	if Item_Lv>10 and Item_Lv <= 15 then			
		if ran <= 50 then
		return 1
		else
		return 0
		end
	end
	if Item_Lv>15 and Item_Lv <= 20 then			
		if ran <= 10 then
		return 1
		else
		return 0
		end
	end
end

function get_item_upgrade_money(...)
	local Money = getupgrade_money_main ( arg )
	return Money
end


function getupgrade_money_main ( Table )

	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )

	local ItemBag_Waiguan = ItemBag [1]
	local Item_Waiguan = GetChaItem ( role , 2 , ItemBag_Waiguan )
	local Waiguan_Lv = 0

	local Waiguan_Lv =  Get_Itembeuplv_Lv ( Item_Waiguan )

	local Money_Need = ( Waiguan_Lv + 1 )*( Waiguan_Lv + 1 )*10000

	return Money_Need
end




function can_jlborn_item(...)
	if arg.n ~= 12  then
		return 0
	end
	local Check = 0
	Check = can_jlborn_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end


function can_jlborn_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )
	if ItemCount [1] ~= 1 or ItemCount [2] ~= 1 or ItemBagCount [1] ~= 1 or ItemBagCount [2] ~= 1 then
		return 0
	end

	local Item_EMstone = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_JLone = GetChaItem ( role , 2 , ItemBag [1] )	
	local Item_JLother = GetChaItem ( role , 2 , ItemBag [2] )	
	local Item_JLone_ID = GetItemID ( Item_JLone )  
	local Item_JLother_ID = GetItemID ( Item_JLother )   

	local str_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )		
	local con_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )		
	local agi_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )		
	local dex_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )		
	local sta_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )		
	local URE_JLone = GetItemAttr( Item_JLone ,ITEMATTR_URE )		
	local MAXURE_JLone = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )       
	local lv_JLone = str_JLone + con_JLone + agi_JLone + dex_JLone + sta_JLone  

	local str_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )      
	local con_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )       
	local agi_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )      
	local dex_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )       
	local sta_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )      
	local URE_JLother = GetItemAttr( Item_JLother ,ITEMATTR_URE )		 
	local MAXURE_JLother = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )       
	local lv_JLother = str_JLother + con_JLother + agi_JLother + dex_JLother + sta_JLother 

	local Num_JLone = GetItemForgeParam ( Item_JLone , 1 )
	local Part1_JLone = GetNum_Part1 ( Num_JLone )	
	local Part2_JLone = GetNum_Part2 ( Num_JLone )	
	local Part3_JLone = GetNum_Part3 ( Num_JLone )
	local Part4_JLone = GetNum_Part4 ( Num_JLone )
	local Part5_JLone = GetNum_Part5 ( Num_JLone )
	local Part6_JLone = GetNum_Part6 ( Num_JLone )
	local Part7_JLone= GetNum_Part7 ( Num_JLone )

	local Num_JLother = GetItemForgeParam ( Item_JLother , 1 )
	local Part1_JLother = GetNum_Part1 ( Num_JLother )	
	local Part2_JLother = GetNum_Part2 ( Num_JLother )	
	local Part3_JLother = GetNum_Part3 ( Num_JLother )
	local Part4_JLother = GetNum_Part4 ( Num_JLother )
	local Part5_JLother = GetNum_Part5 ( Num_JLother )
	local Part6_JLother = GetNum_Part6 ( Num_JLother )
	local Part7_JLother= GetNum_Part7 ( Num_JLother )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 2 then
		SystemNotice(role ,"\215\242\238\225\251 \239\238\230\229\237\232\242\252 \244\229\233 \243 \226\224\241 \228\238\235\230\237\238 \225\251\242\252 \239\238\234\240\224\233\237\229 \236\229\240\229 2 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role ,"Чтобы поженить фей у вас должно быть покрайне мере 2 свободных слота в инвентаре")
		return 0
	end	

	local  Item_EMstone_ID = GetItemID ( Item_EMstone )
	if Item_EMstone_ID ~= 3918 and Item_EMstone_ID ~= 3919 and Item_EMstone_ID ~= 3920 and Item_EMstone_ID ~= 3921 and Item_EMstone_ID ~= 3922 and Item_EMstone_ID ~= 3924 and Item_EMstone_ID ~= 3925 then
		SystemNotice( role ,"\205\229\239\240\224\226\232\235\252\237\251\233 \196\229\236\238\237\232\247\229\241\234\232\233 \244\240\243\234\242")
		--SystemNotice( role ,"Неправильный Демонический фрукт")
		return 0
	end

	if Item_EMstone_ID == 3918 then
	local i1 = CheckBagItem( role, 4530 )			
	local i2 = CheckBagItem( role,3434 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"\205\229\242\243 \237\229\238\225\245\238\228\232\236\251\245 \239\240\229\228\236\229\242\238\226 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			--SystemNotice( role ,"Нету необходимых предметов для свадьбы фей")
			return 0
		end
	end

	if Item_EMstone_ID == 3919 then
	local i1 = CheckBagItem( role, 4531 )		
	local i2 = CheckBagItem( role, 3435 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"\205\229\242\243 \237\229\238\225\245\238\228\232\236\251\245 \239\240\229\228\236\229\242\238\226 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			--SystemNotice( role ,"Нету необходимых предметов для свадьбы фей")
			return 0
		end
	end

	if Item_EMstone_ID == 3920 then
	local i1 = CheckBagItem( role,1196 )			
	local i2 = CheckBagItem( role,3436 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"\205\229\242\243 \237\229\238\225\245\238\228\232\236\251\245 \239\240\229\228\236\229\242\238\226 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			--SystemNotice( role ,"Нету необходимых предметов для свадьбы фей")
			return 0
		end
	end

	if Item_EMstone_ID == 3921 then
	local i1 = CheckBagItem( role, 4533 )			   
	local i2 = CheckBagItem( role, 3437 )		
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"\205\229\242\243 \237\229\238\225\245\238\228\232\236\251\245 \239\240\229\228\236\229\242\238\226 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			--SystemNotice( role ,"Нету необходимых предметов для свадьбы фей")
			return 0
		end
	end

	if Item_EMstone_ID == 3922 then
	local i1 = CheckBagItem( role,4537 )			                 
	local i2 = CheckBagItem( role,3444 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"\205\229\242\243 \237\229\238\225\245\238\228\232\236\251\245 \239\240\229\228\236\229\242\238\226 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			--SystemNotice( role ,"Нету необходимых предметов для свадьбы фей")
			return 0
		end
	end

	if Item_EMstone_ID == 3924 then
	local i1 = CheckBagItem( role, 4540 )			       
	local i2 = CheckBagItem( role, 3443 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"\205\229\242\243 \237\229\238\225\245\238\228\232\236\251\245 \239\240\229\228\236\229\242\238\226 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			--SystemNotice( role ,"Нету необходимых предметов для свадьбы фей")
			return 0
		end
	end

	if Item_EMstone_ID == 3925 then
	local i1 = CheckBagItem( role, 1253 )			
	local i2 = CheckBagItem( role, 3442 )			            
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"\205\229\242\243 \237\229\238\225\245\238\228\232\236\251\245 \239\240\229\228\236\229\242\238\226 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			--SystemNotice( role ,"Нету необходимых предметов для свадьбы фей")
			return 0
		end
	end

	local ItemType_JLone = GetItemType (Item_JLone)
	local ItemType_JLother = GetItemType (Item_JLother)
	if  ItemType_JLone ~=59 or ItemType_JLother ~=59  then
			SystemNotice( role ,"\194\251 \237\229 \239\238\241\242\224\226\232\235\232 \244\229\233")
			--SystemNotice( role ,"Вы не поставили фей")
		return 0
	end

	if ItemBag [1]==ItemBag [2] then
		SystemNotice( role ,"\205\229\235\252\231\255 \230\229\237\232\242\252\241\255 \237\224 \241\224\236\232\236 \241\238\225\238\233")
		--SystemNotice( role ,"Нельзя жениться на самим собой")
		return 0		
	end

	if  Part1_JLone ~=0 or Part1_JLother ~=0  then
		SystemNotice( role ,"\210\238\235\252\234\238 \237\238\240\236\224\235\252\237\251\229 \244\229\232 \236\238\227\243\242 \226\241\242\243\239\224\242\252 \226 \225\240\224\234")
		--SystemNotice( role ,"Только нормальные феи могут вступать в брак")
		return 0
	end

	if  lv_JLone < 20 or lv_JLother < 20   then
		SystemNotice( role ,"\211\240\238\226\229\237\252 \244\229\232 \236\229\237\252\248\229 20 ,\224 \247\242\238\225 \239\238\230\229\237\232\242\252\241\255 \237\243\230\237\238 20+ \243\240\238\226\229\237\252 \244\229\232")
		--SystemNotice( role ,"Уровень феи меньше 20 ,а чтоб пожениться нужно 20+ уровень феи")
		return 0
	end

	if URE_JLone < MAXURE_JLone or URE_JLone < MAXURE_JLone then
		SystemNotice( role ,"\193\240\224\234 \255\226\235\255\229\242\241\255 \242\240\243\228\238\184\236\234\232\236 \239\240\238\246\229\241\241\238\236. \207\238\230\224\235\243\233\241\242\224 \226\238\241\241\242\224\237\238\226\232\242\229 \239\238\235\237\243\254 \226\251\237\238\241\235\232\226\238\241\242\252 \244\229\255\236")
		--SystemNotice( role ,"Брак является трудоёмким процессом. Пожалуйста восстановите полную выносливость феям")
		return 0
	end

	local Money_Need = getjlborn_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224 \247\242\238\225\251 \239\238\230\229\237\232\242\252\241\255")
		--SystemNotice( role ,"Нехватает золота чтобы пожениться")
		return 0
	end
	return 1
end


function begin_jlborn_item(...)
	local Check_Canjlborn = 0
	Check_Canjlborn = can_jlborn_item_main ( arg )
	if Check_Canjlborn == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}											
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )

	local Item_EMstone = GetChaItem ( role , 2 , ItemBag [0] )				
	local Item_JLone = GetChaItem ( role , 2 , ItemBag [1] )					
	local Item_JLother = GetChaItem ( role , 2 , ItemBag [2] )				

	local Money_Need = getjlborn_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )

	Check_JLBorn_Item = jlborn_item ( arg )
	if Check_JLBorn_Item == 0  then
		SystemNotice ( role ,"\209\226\224\228\252\225\224 \239\240\238\248\235\224 \237\229\243\228\224\247\237\238. \207\238\239\240\238\225\243\233\242\229 \239\238\230\229\237\232\242\252\241\255 \231\224\237\238\227\238")
		--SystemNotice ( role ,"Свадьба прошла неудачно. Попробуйте пожениться заного")
	end
	local cha_name = GetChaDefaultName ( role )
	SystemNotice ( role ,"\209\226\224\228\252\225\224 \239\240\238\248\235\224 \243\241\239\229\248\237\238!")
	--SystemNotice ( role ,"Свадьба прошла успешно!")
	return 1
end


function get_item_jlborn_money(...)
	local Money = getjlborn_money_main ( arg )
	return Money
end


function getjlborn_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )

	local Item_JLone = GetChaItem ( role , 2 , ItemBag [1] )				
	local Item_JLother = GetChaItem ( role , 2 , ItemBag [2] )			

	local str_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )		  
	local con_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )		   
	local agi_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )		 
	local dex_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )		 
	local sta_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )		
	local lv_JLone = str_JLone + con_JLone + agi_JLone + dex_JLone + sta_JLone  

	local str_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )		
	local con_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )		  
	local agi_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )		
	local dex_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )		 
	local sta_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )		
	local lv_JLother = str_JLother + con_JLother + agi_JLother + dex_JLother + sta_JLother 
	local  Money_Need = ( 60 - lv_JLone )*(60 - lv_JLother )*100
	if lv_JLone>60 or lv_JLother>60 then
		 Money_Need = 0
	end
	return Money_Need
end
--------------------------------------------------------------------------------------------------------

function jlborn_item ( Table )
	local role = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	
	local Item_EMstone = GetChaItem ( role , 2 , ItemBag [0] )				
	local Item_JLone = GetChaItem ( role , 2 , ItemBag [1] )					
	local Item_JLother = GetChaItem ( role , 2 , ItemBag [2] )				
	local Item_EMstone_ID = GetItemID ( Item_EMstone )					
	local Item_JLone_ID = GetItemID ( Item_JLone )						
	local Item_JLother_ID = GetItemID ( Item_JLother )					
	
	local str_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )			  
	local con_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )			
	local agi_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )			 
	local dex_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )			  
	local sta_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )			  
	local URE_JLone = GetItemAttr( Item_JLone ,ITEMATTR_URE )			 
	local MAXURE_JLone = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )		
	local lv_JLone = str_JLone + con_JLone + agi_JLone + dex_JLone + sta_JLone	
	
	local str_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )		
	local con_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )		 
	local agi_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )		
	local dex_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )		
	local sta_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )		
	local URE_JLother = GetItemAttr( Item_JLother ,ITEMATTR_URE )			   
	local MAXURE_JLother = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )	
	local lv_JLother = str_JLother + con_JLother + agi_JLother + dex_JLother + sta_JLother
	
	local Num_JLone = GetItemForgeParam ( Item_JLone , 1 )
	local Part1_JLone = GetNum_Part1 ( Num_JLone )	
	local Part2_JLone = GetNum_Part2 ( Num_JLone )	
	local Part3_JLone = GetNum_Part3 ( Num_JLone )
	local Part4_JLone = GetNum_Part4 ( Num_JLone )
	local Part5_JLone = GetNum_Part5 ( Num_JLone )
	local Part6_JLone = GetNum_Part6 ( Num_JLone )
	local Part7_JLone= GetNum_Part7 ( Num_JLone )
	
	local Num_JLother = GetItemForgeParam ( Item_JLother , 1 )
	local Part1_JLother = GetNum_Part1 ( Num_JLother )	
	local Part2_JLother = GetNum_Part2 ( Num_JLother )	
	local Part3_JLother = GetNum_Part3 ( Num_JLother )
	local Part4_JLother = GetNum_Part4 ( Num_JLother )
	local Part5_JLother = GetNum_Part5 ( Num_JLother )
	local Part6_JLother = GetNum_Part6 ( Num_JLother )
	local Part7_JLother= GetNum_Part7 ( Num_JLother )
	
	local new_str = math.floor ((str_JLone+str_JLother)*0.125 )
	local new_con = math.floor ((con_JLone+con_JLother)*0.125 )
	local new_agi = math.floor ((agi_JLone+agi_JLother)*0.125 )
	local new_dex = math.floor ((dex_JLone+dex_JLother)*0.125 )
	local new_sta = math.floor ((sta_JLone+sta_JLother)*0.125 )
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	if new_MAXURE ==25000  then
		new_MAXURE = 25000+1
	end
		
	if Item_EMstone_ID ==3918 then
	
		local j1 = TakeItem( role, 0,4530, 10 )			   
		local j2 = TakeItem( role, 0,3434, 10 )			 
		if j1==0 or j2==0 then
			SystemNotice ( role ,"\205\229\226\229\240\237\251\229 \232\237\227\240\232\228\232\229\237\242\251 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			return
		end 
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		
		
		if Item_JLone_ID ==680 and Item_JLother_ID ==3880 or Item_JLone_ID ==3880 and Item_JLother_ID ==680 then
			if lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=91 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=63 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=35 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )	
				end
			else
			r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			end
		elseif Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )		
			end
		elseif Item_JLone_ID ==3880 or Item_JLother_ID ==3880 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=94 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=75 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=60 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )	
			end
		else
			r1,r2 =MakeItem ( role , 231  , 1 , 4 )	
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Item_newJL_ID = GetItemID ( Item_newJL )
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL = GetNum_Part7 ( Num_newJL )			
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 6					
			Part3_newJL = 1						
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 6					
			Part3_newJL = 2						
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 6					
			Part3_newJL = 3						
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 612  , 1 , 4 )	
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 )	
				GiveItem ( role , 0 , 610  , 1 , 4 )	
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 )	
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
		
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3919 then
		local j1 = TakeItem( role, 0,4531, 10 )			  
		local j2 = TakeItem( role, 0,3435, 10 )			    
		if j1==0 or j2==0 then
			SystemNotice ( role ,"\205\229\226\229\240\237\251\229 \232\237\227\240\232\228\232\229\237\242\251 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 and Item_JLother_ID ==3880 or Item_JLone_ID ==3880 and Item_JLother_ID ==680 then
			if lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=91 then
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=63 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=35 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			else
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			end
		elseif Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )		
			end
		elseif Item_JLone_ID ==3880 or Item_JLother_ID ==3880 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=94 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=75 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=60 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )			
			end
		else
			r1,r2 =MakeItem ( role , 233  , 1 , 4 )	
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL = GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 7					
			Part3_newJL = 1					
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 7					
			Part3_newJL = 2					
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 7					
			Part3_newJL = 3					
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 )	
			GiveItem ( role , 0 , 612  , 1 , 4 )	
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 )	
				GiveItem ( role , 0 , 610  , 1 , 4 )	
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 )	
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )

		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3920 then
		local j1 =TakeItem( role, 0, 1196, 10 )			  
		local j2 = TakeItem( role, 0,3436, 10 )			    
		if j1==0 or j2==0 then
			SystemNotice ( role ,"\205\229\226\229\240\237\251\229 \232\237\227\240\232\228\232\229\237\242\251 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 and Item_JLother_ID ==3880 or Item_JLone_ID ==3880 and Item_JLother_ID ==680 then
			if lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=91 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=63 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=35 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			else
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			end
		elseif Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )		
			end
		elseif Item_JLone_ID ==3880 or Item_JLother_ID ==3880 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=94 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=75 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=60 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )			
			end
		else
			r1,r2 =MakeItem ( role , 232  , 1 , 4 )	
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL = GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 8													
			Part3_newJL = 1													
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 8													
			Part3_newJL = 2												
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 8													
			Part3_newJL = 3												
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 )	
			GiveItem ( role , 0 , 612  , 1 , 4 )	
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 )
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 )	
				GiveItem ( role , 0 , 610  , 1 , 4 )	
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 )
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con )
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3921 then
		local j1 =TakeItem( role, 0, 4533, 10 )		
		local j2 = TakeItem( role, 0,3437, 10 )		
		if j1==0 or j2==0 then
			SystemNotice ( role ,"\205\229\226\229\240\237\251\229 \232\237\227\240\232\228\232\229\237\242\251 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 and Item_JLother_ID ==3880 or Item_JLone_ID ==3880 and Item_JLother_ID ==680 then
			if lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=91 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=63 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=35 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			else
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			end
		elseif Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )	
			end
		elseif Item_JLone_ID ==3880 or Item_JLother_ID ==3880 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=94 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=75 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=60 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )	
			end
		else
			r1,r2 =MakeItem ( role , 234  , 1 , 4 )
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL = GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 9												
			Part3_newJL = 1													
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 9													
			Part3_newJL = 2													
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 9												
			Part3_newJL = 3												
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 )	
			GiveItem ( role , 0 , 612  , 1 , 4 )
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 )	
				GiveItem ( role , 0 , 610  , 1 , 4 )	
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 )
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )

		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con )
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3922 then 
		local j1 =TakeItem( role, 0,4537, 10 )			                   
		local j2 = TakeItem( role, 0,3444, 10 )			
		if j1==0 or j2==0 then
			SystemNotice ( role ,"\205\229\226\229\240\237\251\229 \232\237\227\240\232\228\232\229\237\242\251 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 and Item_JLother_ID ==3880 or Item_JLone_ID ==3880 and Item_JLother_ID ==680 then
			if lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=91 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=63 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=35 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			else
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			end
		elseif Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )		
			end
		elseif Item_JLone_ID ==3880 or Item_JLother_ID ==3880 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=94 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=75 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=60 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )		
			end
		else
			 r1,r2 =MakeItem ( role , 235  , 1 , 4 )	
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_JLother )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL = GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 10											
			Part3_newJL = 1													
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 10												
			Part3_newJL = 2													
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 10													
			Part3_newJL = 3												
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 )
			GiveItem ( role , 0 , 612  , 1 , 4 )	
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 )	
				GiveItem ( role , 0 , 610  , 1 , 4 )	
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 ) 
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )

		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con )
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3924 then 
		local j1 = TakeItem( role, 0,4540, 10 )		         
		local j2 = TakeItem( role, 0,3443, 10 )			   
		if j1==0 or j2==0 then
			SystemNotice ( role ,"\205\229\226\229\240\237\251\229 \232\237\227\240\232\228\232\229\237\242\251 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 and Item_JLother_ID ==3880 or Item_JLone_ID ==3880 and Item_JLother_ID ==680 then
			if lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=91 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=63 then
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=35 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			else
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			end
		elseif Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )		
			end
		elseif Item_JLone_ID ==3880 or Item_JLother_ID ==3880 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=94 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=75 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=60 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )	
			end
		else
			r1,r2 =MakeItem ( role , 236  , 1 , 4 )	
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )		
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJ L= GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 11										
			Part3_newJL = 1												
		end		
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 11									
			Part3_newJL = 2											
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 11											
			Part3_newJL = 3										
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 )	
			GiveItem ( role , 0 , 612  , 1 , 4 )	
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 )	
				GiveItem ( role , 0 , 610  , 1 , 4 )	
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 )
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )

		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con )
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3925 then 
		local j1 = TakeItem( role, 0,1253, 10 )		
		local j2 = TakeItem( role, 0,3442, 10 )			
		if j1==0 or j2==0 then
			SystemNotice ( role ,"\205\229\226\229\240\237\251\229 \232\237\227\240\232\228\232\229\237\242\251 \228\235\255 \241\226\224\228\252\225\251 \244\229\233")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 and Item_JLother_ID ==3880 or Item_JLone_ID ==3880 and Item_JLother_ID ==680 then
			if lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=91 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=63 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=35 then	
				local rad = math.random ( 1, 100)
				if rad > 70 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
				else
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
				end
			else
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			end
		elseif Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then	
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )	
			end
		elseif Item_JLone_ID ==3880 or Item_JLother_ID ==3880 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=94 then
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=75 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=60 then	
				r1,r2 =MakeItem ( role , 3881  , 1 , 4 )	
			end
		else
			r1,r2 =MakeItem ( role , 237 , 1 , 4 )	
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL = GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 12													
			Part3_newJL = 1													
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 12												
			Part3_newJL = 2												
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 12												
			Part3_newJL = 3													
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 )	
			GiveItem ( role , 0 , 612  , 1 , 4 )	
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 )	
				GiveItem ( role , 0 , 610  , 1 , 4 )	
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 )	
				GiveItem ( role , 0 , 611  , 1 , 4 )	
				elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 )	
				GiveItem ( role , 0 , 612  , 1 , 4 )	
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 ) 
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )

		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con )
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end

	local cha_name = GetChaDefaultName ( role )

	LG( "star_JLZS_lg" ,cha_name, Item_EMstone_ID , Item_JLone_ID , lv_JLone ,  Item_JLother_ID , lv_JLother , Item_newJL_ID )

	R1 = RemoveChaItem ( role , Item_EMstone_ID , 1 , 2 , ItemBag [0] , 2 , 1 , 0 )	
	if R1 == 0  then
		SystemNotice( role , "\205\229\226\229\240\237\251\233 \228\229\236\238\237\232\247\229\241\234\232\233 \244\240\243\234\242!")
		return
			end
	 Elf_Attr_cs ( role , Item_JLone , Item_JLother )	
end


function can_tichun_item(...)
	if arg.n ~= 10 and arg.n ~= 14 then
		return 0
	end
	local Check = 0
	Check = can_tichun_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end


function can_tichun_item_main ( Table )

	local role = 0
	local ItemBag = {}									
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )

	if ItemCount [0] ~= 1 or ItemCount [1] ~= 1 or ItemBagCount [0] ~= 1 or ItemBagCount [1] ~= 1 then
		return 0
	end

	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	
	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )

        local ItemID_mainitem = GetItemID ( Item_mainitem )
        local ItemID_otheritem = GetItemID ( Item_otheritem )
		
	local ItemID_mainitem_Lv =  GetItemLv ( Item_mainitem )
	local ItemID_otheritem_Lv =  GetItemLv ( Item_otheritem )

	local ItemID_main=ItemID_mainitem		
        local ItemID_other=ItemID_otheritem

	if ItemID_main > 5000 then
		ItemID_main = GetItemAttr( Item_mainitem , ITEMATTR_VAL_FUSIONID )
	end

	local flg=0
	if ItemID_main==825 or ItemID_main==826 or ItemID_main==827  or ItemID_main==828 then
		if ItemID_other==2403 then
			flg=1
		end
	end
	if ItemID_main==845 or ItemID_main==846 or ItemID_main==847  or ItemID_main==848 then
		if ItemID_other==2404 then
			flg=1
		end
	end
	if ItemID_main>=2530 and ItemID_main<=2532 then
		if ItemID_other==2562 then
			flg=1
		end
	end
	if ItemID_main>=2533 and ItemID_main<=2535 then
		if ItemID_other==2563 then
			flg=1
		end
	end
	if ItemID_main>=2536 and ItemID_main<=2538 then
		if ItemID_other==2564 then
			flg=1
		end
	end
	if ItemID_main>=2539 and ItemID_main<=2541 then
		if ItemID_other==2565 then
			flg=1
		end
	end
	if ItemID_main>=2542 and ItemID_main<=2544 then
		if ItemID_other==2566 then
			flg=1
		end
	end
	if ItemID_main>=2545 and ItemID_main<=2547 then
		if ItemID_other==2567 then
			flg=1
		end
	end
	if flg==0 then
		SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224 \232\241\239\238\235\252\231\243\233\242\229 \239\240\224\226\232\235\252\237\238\229 \241\237\224\240\255\230\229\237\232\229 \232 \234\224\236\229\237\252 \243\235\243\247\248\229\237\232\255")
		--SystemNotice( role ,"Пожалуйста используйте правильное снаряжение и камень улучшения")
		return 0		
	end

	local Money_Need = gettichun_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224")
		--SystemNotice( role ,"Нехватает золота")
		return 0
	end

	return 1
end


function begin_tichun_item(...)
	local Check_Cantichun = 0
	Check_Cantichun = can_tichun_item_main ( arg )
	if Check_Cantichun == 0 then
		return 0
	end

	local role = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )

	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	

	local Money_Need = gettichun_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	TakeMoney(role,nil,Money_Need)



	Check_TiChun_Item = tichun_item ( arg )
	if Check_TiChun_Item == 0  then
		SystemNotice ( role ,"\211\235\243\247\248\229\237\232\229 \239\240\238\226\224\235\232\235\238\241\252!")
		--SystemNotice ( role ,"Улучшение провалилось!")
	end

	return 1
end


function get_item_tichun_money(...)
	local Money = gettichun_money_main ( arg )
	return Money
end


function gettichun_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )

	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_mainitem_Lv =  GetItemLv ( Item_mainitem )
	local Money_Need = 1000000
	return Money_Need
end


function tichun_item ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )


	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	

	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )

        local ItemID_mainitem = GetItemID ( Item_mainitem )
        local ItemID_otheritem = GetItemID ( Item_otheritem )

	local ItemID_mainitem_Lv =  GetItemLv ( Item_mainitem )
	local ItemID_otheritem_Lv =  GetItemLv ( Item_otheritem )
	local ItemID_main=ItemID_mainitem		
        local ItemID_other=ItemID_otheritem

	if ItemID_main > 5000 then
		ItemID_main = GetItemAttr( Item_mainitem , ITEMATTR_VAL_FUSIONID )
	end

	local Jinglianxinxi = GetItemForgeParam ( Item_mainitem , 1 )

	local r1 = 0
	local r2 = 0
	local item_energy = GetItemAttr(Item_mainitem,ITEMATTR_ENERGY) 
	if ItemID_main==825  then
		r1,r2 =MakeItem ( role , 2549  , 1 , 4 )
	end
	if ItemID_main==826  then
		r1,r2 =MakeItem ( role , 2550  , 1 , 4 )
	end
	if ItemID_main==827  then
		r1,r2 =MakeItem ( role , 2551  , 1 , 4 )
	end
	if ItemID_main==828  then
		r1,r2 =MakeItem ( role , 2552  , 1 , 4 )
	end

	local item_qulity=12
	if ItemID_main==845 or ItemID_main==846 or ItemID_main==847  or ItemID_main==848 then
		if item_energy<1000 then
			item_qulity=2
		elseif item_energy>=1000 and item_energy<2000  then
			item_qulity=12
		elseif item_energy>=2000 and item_energy<3000  then
			item_qulity=13
		elseif item_energy>=3000 and item_energy<4000  then
			item_qulity=14
		elseif item_energy>=4000 and item_energy<5000  then
			item_qulity=15
		elseif item_energy>=5000 and item_energy<6000  then
			item_qulity=16
		elseif item_energy>=6000 and item_energy<7000  then
			item_qulity=17
		elseif item_energy>=7000 and item_energy<8000  then
			item_qulity=18
		elseif item_energy>=8000 and item_energy<9000  then
			item_qulity=19
		elseif item_energy>=9000 and item_energy<10000  then
			item_qulity=20
		end
		ItemID_main=ItemID_main+1522
		r1,r2 =MakeItem ( role , ItemID_main  , 1 , item_qulity )
	end

	if ItemID_main>=2530 and ItemID_main<=2547 then
		ItemID_main=ItemID_main+287
		r1,r2 =MakeItem ( role , ItemID_main  , 1 , 4)
	end
	local R1 = 0
	local R2 = 0
	R1 = RemoveChaItem ( role , ItemID_mainitem , 1 , 2 , ItemBag [0] , 2 , 1 , 1 )	
	R2 = RemoveChaItem ( role , ItemID_otheritem , 1 , 2 , ItemBag [1] , 2 , 1 , 1 )	
	if R1==0 or R2==0 then
		SystemNotice( role , "\207\229\240\229\236\229\249\229\237\232\229 \239\240\229\228\236\229\242\224 \239\238\242\229\240\239\229\235\238 \237\229\243\228\224\247\243 ")
		--SystemNotice( role , "Перемещение предмета потерпело неудачу ")
		return
	end

	local Item_new = GetChaItem ( role , 2 , r2 )	
	local Check_SetItemForgeParam = SetItemForgeParam( Item_new , 1 , Jinglianxinxi )
	if Check_SetItemForgeParam == 0 then
		return
	end	

	local cha_name = GetChaDefaultName ( role )
	SynChaKitbag(role,13)
end

function can_energy_item(...)
	if arg.n ~= 10 and arg.n ~= 14 then
		return 0
	end
	local Check = 0
	Check = can_energy_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end


function can_energy_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )

	if ItemCount [0] ~= 1 or ItemCount [1] ~= 1 or ItemBagCount [0] ~= 1 or ItemBagCount [1] ~= 1 then
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"\211 \226\224\241 \228\238\235\230\229\237 \225\251\242\252 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role ,"У вас должен быть 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end

	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	

	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )


        local ItemID_mainitem = GetItemID ( Item_mainitem )
        local ItemID_otheritem = GetItemID ( Item_otheritem )

	local Item_mainitem_Lv =  GetItemLv ( Item_mainitem )

	local item_energy = GetItemAttr(Item_mainitem,ITEMATTR_ENERGY)
	local item_maxenergy = GetItemAttr(Item_mainitem,ITEMATTR_MAXENERGY) 


	if ItemType_mainitem~=29 then
		SystemNotice( role ,"\210\238\235\252\234\238 \234\238\240\224\235\235\251 \236\238\230\237\238 \231\224\240\255\230\224\242\252")
		--SystemNotice( role ,"Только кораллы можно заряжать")
		return 0	
	end

	if ItemID_otheritem ~= 1022 and ItemID_otheritem ~= 1024 then
		SystemNotice( role ,"\205\243\230\229\237 \224\234\234\243\236\243\235\255\242\238\240")
		--SystemNotice( role ,"Нужен аккумулятор")
		return 0	
	end

	if item_energy==item_maxenergy then
		SystemNotice( role ,"\202\238\240\224\235\235 \237\229\237\243\230\237\238 \231\224\240\255\230\224\242\252 \242.\234 \238\237 \243\230\229 \231\224\240\255\230\229\237")
		--SystemNotice( role ,"Коралл ненужно заряжать т.к он уже заряжен")
		return 0	
	end

	local Money_Need = get_item_energy_money ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224")
		--SystemNotice( role ,"Нехватает золота")
		return 0
	end

	return 1
end


function begin_energy_item(...)
	local Check_Canenergy = 0
	Check_Canenergy = can_energy_item_main ( arg )
	if Check_Canenergy == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}											
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )

	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	
	local Money_Need = get_item_energy_money ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	TakeMoney(role,nil,Money_Need)


	Check_Energy_Item = energy_item ( arg )
	if Check_Energy_Item == 0  then
		SystemNotice ( role ,"\199\224\240\255\228\234\224 \234\238\240\224\235\235\224 \239\240\238\248\235\224 \237\229\243\241\239\229\248\237\238.")
		--SystemNotice ( role ,"Зарядка коралла прошла неуспешно.")
	end
	return 1
end

function get_item_energy_money(...)
	local Money = energy_money_main ( arg )
	return Money
end

function energy_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}								
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )


	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
        local ItemID_otheritem = GetItemID ( Item_otheritem )

	if ItemID_otheritem==1022 then
		Money_Need=300
	else
		Money_Need=1000
	end
	return Money_Need
end


function energy_item ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}									
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )


	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	

	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )

        local ItemID_mainitem = GetItemID ( Item_mainitem )
        local ItemID_otheritem = GetItemID ( Item_otheritem )

	local item_energy = GetItemAttr(Item_mainitem,ITEMATTR_ENERGY) 


	local item_maxenergy = GetItemAttr(Item_mainitem,ITEMATTR_MAXENERGY) 


	local energy_differ=0
	local star=math.random(1,20)

	if ItemID_otheritem==1022 then
		energy_differ=star*50
	else
		energy_differ=1500
	end
		
	item_energy=item_maxenergy
		
	SetItemAttr ( Item_mainitem ,ITEMATTR_ENERGY, item_energy )

	local cha_name = GetChaDefaultName ( role )


	local R1 = 0
	R1 = RemoveChaItem ( role , Item_otheritem , 1 , 2 , ItemBag [1] , 2 , 1 , 0 )		
	if R1 == 0 then
		SystemNotice( role , "\207\229\240\229\236\229\249\229\237\232\229 \239\240\229\228\236\229\242\224 \239\238\242\229\240\239\229\235\238 \237\229\243\228\224\247\243 ")
		--SystemNotice( role , "Перемещение предмета потерпело неудачу ")
		return
	end
end



function can_getstone_item(...)

	if arg.n ~= 10 and arg.n ~= 14 then

		return 0
	end
	local Check = 0
	Check = can_getstone_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end


function can_getstone_item_main( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )

	if ItemCount [0] ~= 1 or ItemCount [1] ~= 1 or ItemBagCount [0] ~= 1 or ItemBagCount [1] ~= 1 then
		SystemNotice ( role ,"\205\229\231\224\234\238\237\237\251\233 \239\240\229\228\236\229\242 ")
		--SystemNotice ( role ,"Незаконный предмет ")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"\194\224\236 \237\243\230\229\237 \245\238\242\255 \225\251 1 \239\243\241\242\238\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role ,"Вам нужен хотя бы 1 пустой слот в инвентаре")
		UseItemFailed ( role )
		return
	end

	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	

	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )

        local ItemID_mainitem = GetItemID ( Item_mainitem )
        local ItemID_otheritem = GetItemID ( Item_otheritem )

	local Item_mainitem_Lv =  GetItemLv ( Item_mainitem )

	local Item_Stone = {}
	local Item_StoneLv = {}
	local Jinglianxinxi = GetItemForgeParam ( Item_mainitem , 1 )
	Jinglianxinxi = TansferNum ( Jinglianxinxi )
	Item_Stone[0] = GetNum_Part2 ( Jinglianxinxi )
	Item_Stone[1] = GetNum_Part4 ( Jinglianxinxi )
	Item_Stone[2] = GetNum_Part6 ( Jinglianxinxi )
	
	Item_StoneLv[0] = GetNum_Part3 ( Jinglianxinxi )
	Item_StoneLv[1] = GetNum_Part5 ( Jinglianxinxi )
	Item_StoneLv[2] = GetNum_Part7 ( Jinglianxinxi )

	local checkstar=CheckItem_CanJinglian(Item_mainitem)
	if checkstar==0 then
		SystemNotice( role ,"\210\232\239 \239\240\229\228\236\229\242\224 \237\229\239\240\224\226\232\235\252\237\251\233")
		--SystemNotice( role ,"Тип предмета неправильный")
		return 0	
	end
	if Item_Stone[0]==0 and Item_Stone[1]==0 and Item_Stone[2]==0 then
		SystemNotice( role ,"\194 \239\240\229\228\236\229\242\229 \237\229\242 \241\224\236\238\246\226\229\242\238\226")
		--SystemNotice( role ,"В предмете нет самоцветов")
		return 0		
	end
	if ItemID_otheritem ~= 1020 then
		SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224 \232\241\239\238\235\252\231\243\233\242\229 \202\235\229\249\232 \234\243\231\237\229\246\224")
		--SystemNotice( role ,"Пожалуйста используйте Клещи кузнеца")
		return 0			
	end

	local Money_Need = getstone_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224 \228\235\255 \232\231\226\235\229\247\229\237\232\255 \241\224\236\238\246\226\229\242\224")
		--SystemNotice( role ,"Нехватает золота для извлечения самоцвета")
		return 0
	end

	return 1
end


function begin_getstone_item(...)

	local Check_Cangetstone = 0
	Check_Cangetstone = can_getstone_item_main ( arg )
	if Check_Cangetstone == 0 then
		return 0
	end

	local role = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )

	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	
	local Money_Need = getstone_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	TakeMoney(role,nil,Money_Need)


	Check_TiChun_Item = getstone_item ( arg )
	if Check_TiChun_Item == 0  then
		SystemNotice ( role ,"\200\231\226\235\229\247\229\237\232\229 \241\224\236\238\246\226\229\242\224 \239\240\238\248\235\238 \237\229\243\241\239\229\248\237\238. \207\238\226\242\238\240\232\242\229 \239\240\238\246\229\241\241")
		--SystemNotice ( role ,"Извлечение самоцвета прошло неуспешно. Повторите процесс")
	end

	return 1
end


function get_item_getstone_money(...)
	local Money = getstone_money_main ( arg )
	return Money
end


function getstone_money_main ( Table )
	local role = 0
	local ItemBag = {}									
	local ItemCount = {}									
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	
	local Item_StoneLv = {}
	local Jinglianxinxi = GetItemForgeParam ( Item_mainitem , 1 )
	Jinglianxinxi = TansferNum ( Jinglianxinxi )

	Item_StoneLv[0] = GetNum_Part3 ( Jinglianxinxi )
	Item_StoneLv[1] = GetNum_Part5 ( Jinglianxinxi )
	Item_StoneLv[2] = GetNum_Part7 ( Jinglianxinxi )

	local Money_Need = (Item_StoneLv[0]+Item_StoneLv[1]+Item_StoneLv[2])*10000

	return Money_Need
end


function getstone_item ( Table )

	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )


	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	

	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )

        local ItemID_mainitem = GetItemID ( Item_mainitem )
        local ItemID_otheritem = GetItemID ( Item_otheritem )

	local Item_mainitem_Lv =  GetItemLv ( Item_mainitem )
	local Item_otheritem_Lv =  GetItemLv ( Item_otheritem )

	local Num = GetItemForgeParam ( Item_mainitem , 1 )
	Num = TansferNum ( Num )
	local lg_Num=Num

	local Item_Stone = {}
	local Item_StoneLv = {}
	local Item_StoneID = {}
     
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )

	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )

	Item_StoneID[0] = StoneTpye_ID[Item_Stone[0]]
	Item_StoneID[1] = StoneTpye_ID[Item_Stone[1]]
	Item_StoneID[2] = StoneTpye_ID[Item_Stone[2]]

	local r1 = 0
	local r2 = 0
	local Item_Lv = 0
	local item_tureID=0
	if Item_StoneID[0]~=0 then
		item_tureID = Item_StoneID[0]
		Item_Lv = Item_StoneLv[0]
		Item_StoneLv[0] = Item_StoneLv[0]-1
		if Item_StoneLv[0]==0 then
			Item_Stone[0] = 0
		end
	elseif Item_StoneID[0]==0 and Item_StoneID[1]~=0 then
		item_tureID = Item_StoneID[1]
		Item_Lv = Item_StoneLv[1]
		Item_StoneLv[1] = Item_StoneLv[1]-1
		if Item_StoneLv[1]==0 then
			Item_Stone[1] = 0
		end
	elseif Item_StoneID[0]==0 and Item_StoneID[1]==0  and Item_StoneID[2]~=0 then
		item_tureID = Item_StoneID[2]
		Item_Lv = Item_StoneLv[2]
		Item_StoneLv[2] = Item_StoneLv[2]-1
		if Item_StoneLv[2]==0 then
			Item_Stone[2] = 0
		end
	else 
		SystemNotice( role , "\207\240\229\228\236\229\242 \228\235\255 \232\231\226\235\229\247\229\237\232\255 \241\224\236\238\246\226\229\242\238\226 \237\229\239\240\224\226\232\235\252\237\251\233")
		--SystemNotice( role , "Предмет для извлечения самоцветов неправильный")
		return		
	end
	r1,r2 =MakeItem ( role , item_tureID , 1 , 2 )	
	local Item_ture = GetChaItem ( role , 2 , r2 )

	SetItemAttr ( Item_ture , ITEMATTR_VAL_BaoshiLV , Item_Lv )

	Num = SetNum_Part2 ( Num , Item_Stone[0] )
	Num = SetNum_Part3 ( Num , Item_StoneLv[0] )
	Num = SetNum_Part4 ( Num , Item_Stone[1] )
	Num = SetNum_Part5 ( Num , Item_StoneLv[1] )
	Num = SetNum_Part6 ( Num , Item_Stone[2] )
	Num = SetNum_Part7 ( Num , Item_StoneLv[2] )
	SetItemForgeParam ( Item_mainitem , 1 , Num )

	local cha_name = GetChaDefaultName ( role )

	local R1 = 0
	R1 = RemoveChaItem ( role , ItemID_otheritem , 1 , 2 , ItemBag [1] , 2 , 1 , 0 )		
	if R1 == 0 then
		SystemNotice( role , "\207\229\240\229\236\229\249\229\237\232\229 \239\240\229\228\236\229\242\224 \239\240\238\248\235\238 \237\229\243\228\224\247\237\238 ")
		--SystemNotice( role , "Перемещение предмета прошло неудачно ")
		return
	end
	
end

function can_manufacture_item (...)
	local ItemBagCount = arg[2]
	local Length = ItemBagCount+3
	if arg.n ~= Length then
		return 0
	end	
	local Check = 0
	Check = can_manufacture_item_main ( arg )
	if Check == 1 then		
		return 1
	else
		return 0
	end
end

function can_manufacture_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemBagCount = 0										
	
	role , ItemBag , ItemBagCount = Read_manufacture ( Table )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"\194\224\236 \237\229\238\225\245\238\228\232\236 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role ,"Вам необходим 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local i = 0
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for i = 1 , ItemBagCount , 1 do							

		Item[i] = GetChaItem ( role , 2 , ItemBag [i] )			
		ItemID[i] = GetItemID ( Item[i] )						
		ItemType[i] = GetItemType ( Item[i] )					
	end

	if ItemType[1] ~= 59 then
		return 0
	end
	local URE_JLone = GetItemAttr( Item[1] ,ITEMATTR_URE )		
	if URE_JLone<=0 then
		SystemNotice( role ,"\194\241\229\236\238\227\243\249\232\233: \221\242\238 \241\235\232\248\234\238 \230\229\241\242\238\234\238! \207\238\230\224\235\243\233\241\242\224 \239\238\234\238\240\236\232\242\229 \244\229\254!")
		--SystemNotice( role ,"Всемогущий: Это слишко жестоко! Пожалуйста покормите фею!")
		return 0	
	end

	local Num_JL = GetItemForgeParam ( Item[1] , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	local JL_jineng=0
	local JL_jineng_lv=0
	local life_lv = 0
	if ItemID[2]==2300 then
		if Part2_JL==13 then
			JL_jineng=Part2_JL
			JL_jineng_lv=Part3_JL
		elseif Part4_JL==13 then
			JL_jineng=Part4_JL
			JL_jineng_lv=Part5_JL
		elseif Part6_JL==13 then
			JL_jineng=Part6_JL
			JL_jineng_lv=Part7_JL
		end
		life_lv=GetSkillLv( role , SK_ZHIZAO )	
	end
	if ItemID[2]==2301 then 
		if Part2_JL==14 then
			JL_jineng=Part2_JL
			JL_jineng_lv=Part3_JL
		elseif Part4_JL==14 then
			JL_jineng=Part4_JL
			JL_jineng_lv=Part5_JL
		elseif Part6_JL==14 then
			JL_jineng=Part6_JL
			JL_jineng_lv=Part7_JL
		end	
		life_lv=GetSkillLv( role , SK_ZHUZAO )	
	end
	if ItemID[2]==2302 then
		if Part2_JL==16 then
			JL_jineng=Part2_JL
			JL_jineng_lv=Part3_JL
		elseif Part4_JL==16 then
			JL_jineng=Part4_JL
			JL_jineng_lv=Part5_JL
		elseif Part6_JL==16 then
			JL_jineng=Part6_JL
			JL_jineng_lv=Part7_JL
		end
		life_lv=GetSkillLv( role , SK_PENGREN )	
	end
	if ItemID[3]~=1067 and ItemID[3]~=1068 and ItemID[3]~=1069 then
		SystemNotice( role ,"\207\238\235\238\230\232\242\229 \232\237\241\242\240\243\236\229\237\242")
		--SystemNotice( role ,"Положите инструмент")
		return 0	
	end
	if ItemID[3]==1067 or ItemID[3]==1068 or ItemID[3]==1069 or ItemID[3]==1070 then
		local Gj_ure=GetItemAttr ( Item[3] , ITEMATTR_URE )
		if Gj_ure<=0 then
			Gj_ure=0
			SystemNotice( role ,"\207\240\238\247\237\238\241\242\252 \232\237\241\242\240\243\236\229\237\242\224 \236\224\235\224.\194\238\231\252\236\232\242\229 \241 \241\238\225\238\233 \237\229\238\225\245\238\228\232\236\251\229 \232\237\241\242\240\243\236\229\237\242\251 \232 \226 \194\229\241\237\238\227\240\224\228\229 \238\242\240\229\236\238\237\242\232\240\243\233\242\229 \232\237\241\242\240\243\236\229\237\242")
			--SystemNotice( role ,"Прочность инструмента мала.Возьмите с собой необходимые инструменты и в Веснограде отремонтируйте инструмент")
			return 0
		end
		if ItemID[3]==1068 and  ItemID[2]~=2300 then
			SystemNotice( role ,"\200\237\241\242\240\243\236\229\237\242 \232 \247\229\240\242\184\230 \237\229\241\238\226\236\229\241\242\232\236\251")
			--SystemNotice( role ,"Инструмент и чертёж несовместимы")
			return 0			
		end
		if ItemID[3]==1069 and  ItemID[2]~=2301 then
			SystemNotice( role ,"\200\237\241\242\240\243\236\229\237\242 \232 \247\229\240\242\184\230 \237\229\241\238\226\236\229\241\242\232\236\251")
			--SystemNotice( role ,"Инструмент и чертёж несовместимы")
			return 0			
		end	
		if ItemID[3]==1067 and ItemID[2]~=2302 then
			SystemNotice( role ,"\200\237\241\242\240\243\236\229\237\242 \232 \247\229\240\242\184\230 \237\229\241\238\226\236\229\241\242\232\236\251")
			--SystemNotice( role ,"Инструмент и чертёж несовместимы")
			return 0			
		end
		local Gj_lv=GetItemAttr ( Item[3] , ITEMATTR_VAL_STR )
		JL_jineng_lv=3*JL_jineng_lv+1
		if JL_jineng_lv<Gj_lv then
			SystemNotice( role ,"\211\240\238\226\229\237\252 \237\224\226\251\234\224 \243 \244\229\232 \237\229 \241\238\226\239\224\228\224\229\242 \241 \243\240\238\226\237\229\236 \232\237\241\242\240\243\236\229\237\242\224")
			--SystemNotice( role ,"Уровень навыка у феи не совпадает с уровнем инструмента")
			return 0			
		end
	end


	if ItemType[2] ~= 69 then
		SystemNotice( role ,"\194\241\229\236\238\227\243\249\232\233: \202\224\234 \242\251 \236\238\230\229\248\252 \232\241\239\238\235\252\231\238\226\224\242\252 \244\224\235\252\248\232\226\251\233 \247\229\240\242\184\230 \239\240\232 \236\237\229?")
		--SystemNotice( role ,"Всемогущий: Как ты можешь использовать фальшивый чертёж при мне?")
		return 0
	end

	local paper_lv = GetItemAttr(Item[2], ITEMATTR_URE )
	if life_lv<paper_lv then
		SystemNotice( role ,"\211\240\238\226\229\237\252 \237\224\226\251\234\224 \237\229\241\238\226\239\224\228\224\229\242 \241 \243\240\238\226\237\229\236 \247\229\240\242\229\230\224")
		--SystemNotice( role ,"Уровень навыка несовпадает с уровнем чертежа")
		return 0
	end
	local paper_id1=GetItemAttr(Item[2], ITEMATTR_VAL_STR )

	local paper_id2=GetItemAttr(Item[2], ITEMATTR_VAL_CON )

	local paper_id3=GetItemAttr(Item[2], ITEMATTR_VAL_DEX )

	if ItemID[4]~=paper_id1 or  ItemID[5]~=paper_id2 or  ItemID[6]~=paper_id3 then
		SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224 \239\240\238\226\229\240\252\242\229 \242\232\239 \236\224\242\229\240\232\224\235\224 \232 \229\227\238 \240\224\231\236\229\249\229\237\232\229.")
		--SystemNotice( role ,"Пожалуйста проверьте тип материала и его размещение.")
		return 0		
	end

	local Num_paper = GetItemForgeParam ( Item[2] , 1 )
	Num_paper = TansferNum ( Num_paper )
	local Part1_paper = GetNum_Part1 ( Num_paper )	
	local Part2_paper = GetNum_Part2 ( Num_paper )	

	local Part3_paper = GetNum_Part3 ( Num_paper )	
	local Part4_paper = GetNum_Part4 ( Num_paper )	

	local Part5_paper = GetNum_Part5 ( Num_paper )
	local Part6_paper = GetNum_Part6 ( Num_paper )	

	local Part7_paper = GetNum_Part7 ( Num_paper )
	local i1 = CheckBagItem( role, ItemID[4] )			
	local i2 = CheckBagItem( role, ItemID[5] )			
	local i3 = CheckBagItem( role, ItemID[6] )			
	if i1 < Part2_paper or i2 < Part4_paper or i3 < Part6_paper  then
		SystemNotice( role ,"\206\242\241\243\242\241\242\226\243\254\242 \237\229\234\238\242\238\240\251\229 \253\235\229\236\229\237\242\251 \240\229\246\229\239\242\224")
		--SystemNotice( role ,"Отсутствуют некоторые элементы рецепта")
		return 0
	end
	local paper_num=GetItemAttr(Item[2], ITEMATTR_VAL_STA )
	if paper_num==0 then
		SystemNotice( role ,"\215\229\240\242\184\230 \225\238\235\252\248\229 \237\229\235\252\231\255 \232\241\239\238\235\252\231\238\226\224\242\252")
		--SystemNotice( role ,"Чертёж больше нельзя использовать")
		return 0
	end
	local a1 = CheckBagItem( role, 855 )			
	local a1_num=GetItemAttr(Item[2], ITEMATTR_MAXURE )
	if a1< a1_num then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \204\238\237\229\242 \212\229\233.")
		--SystemNotice( role ,"Нехватает Монет Фей.")
		return 0
	end

	return 1
end

function Read_manufacture ( Table )

	local role = Table [1]										
	local ItemBagCount = Table [2]								
	local ItemBag = {}										

	local i = 0

	if ItemBagCount==0 then
		return role , ItemBag , ItemBagCount
	end
	for i = 1 , ItemBagCount , 1 do
		local ReadNow = i + 2
		ItemBag [i] = Table [ReadNow]

	end

	return role , ItemBag , ItemBagCount
end


function begin_manufacture_item (...)

	local role = 0
	local ItemBag = {}											
	local ItemBagCount = 0										

	role , ItemBag , ItemBagCount = Read_manufacture ( arg )
	
	local Check1 = can_manufacture_item_main ( arg )
	if Check1 ~= 1 then
		return 0
	end
	
	local i = 0
	local j = 0

	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )					
		ItemType[j] = GetItemType ( Item[j] )				
	end
	local Gj_lv= 0
	if ItemID[3]==1068 then
		Gj_lv=GetItemAttr ( Item[3] , ITEMATTR_VAL_STR )
	end
	local life_lv=GetSkillLv( role , SK_ZHIZAO )	

	local paper_lv = GetItemAttr(Item[2], ITEMATTR_URE )

	local paper_energy = GetItemAttr(Item[2], ITEMATTR_MAXENERGY )-100
	local star_good=(math.min(life_lv,paper_lv)*0.03+Gj_lv*0.05+(100-paper_energy*10)*0.01)*100
	local star_radom = math.random ( 1, 100 )

	local eleven=2
	local a1 = star_radom+7
	local a2 = star_radom+14
	local a3 = star_radom+21
	local a4  = star_radom+28
	local a5  = star_radom+35
	local a6  = star_radom+42
	local a7  = star_radom+49
	local a8  = star_radom+56
	local a9  = star_radom+63

	if star_good<star_radom then
		eleven=1
	elseif star_good>=98 then
		eleven=11
	elseif star_good>=a9 then
		eleven=10
	elseif star_good>=a8 then
		eleven=9
	elseif star_good>=a7 then
		eleven=8
	elseif star_good>=a6 then
		eleven=7
	elseif star_good>=a5 then
		eleven=6
	elseif star_good>=a4 then
		eleven=5
	elseif star_good>=a3 then
		eleven=4
	elseif star_good>=a2 then
		eleven=3
	elseif star_good>=a1 then
		eleven=2
	end
	local star_begin=3*(1+paper_lv)
	local star_end=5*(1+paper_lv)
	local star=math.random ( star_begin , star_end )
	if star>64 then
		star=64
	end
	local run_time = star

	return 2,run_time,eleven
end
function begin_manufacture1_item (...)

	local role = 0
	local ItemBag = {}										
										
	local ItemBagCount = 0										

	role , ItemBag , ItemBagCount = Read_manufacture ( arg )

	local Check1 = can_manufacture_item_main ( arg )
	if Check1 ~= 1 then
		return 0
	end

	local i = 0
	local j = 0

	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )					

	end

	local paper_lv = GetItemAttr(Item[2], ITEMATTR_URE )--ИЎНјЦЅµИј¶	

	local star_begin=3*(1+paper_lv)
	local star_end=5*(1+paper_lv)
	local star=math.random ( star_begin , star_end )
	if star>64 then
		star=64
	end
	local run_time = star
	local WORD1 =math.random ( 1, 6 )
	local WORD2 =math.random ( 1, 6 )
	local WORD3 =math.random ( 1, 6 )
	local str =""..WORD1..","..WORD2..","..WORD3
	return 2,run_time,str
end
function begin_manufacture2_item (...)
	local role = 0
	local ItemBag = {}																		
	local ItemBagCount = 0										

	role , ItemBag , ItemBagCount = Read_manufacture ( arg )

	local Check1 = can_manufacture_item_main ( arg )
	if Check1 ~= 1 then
		return 0
	end

	local i = 0
	local j = 0

	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )					
	end

	local paper_lv = GetItemAttr(Item[2], ITEMATTR_URE )--ИЎНјЦЅµИј¶	


	local star_begin=3*(1+paper_lv)
	local star_end=4*(1+paper_lv)
	local star=math.random ( star_begin , star_end )
	if star>64 then
		star=64
	end
	local run_time = star
	
	local star_ok = 12


	return 2,run_time,star_ok
end
function begin_manufacture3_item (...)

	local role = 0
	local ItemBag = {}										
									
	local ItemBagCount = 0										

	role , ItemBag , ItemBagCount = Read_manufacture ( arg )

	local Check1 = can_fenjie_item_main ( arg )
	if Check1 ~= 1 then
		return 0
	end

	local i = 0
	local j = 0

	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )				
	end
	local Item_Lv =  GetItemLv ( Item[3] )
	if ItemID[3]>=5000 then
		local tmd_rad=math.random ( 1 , 10 )
		if tmd_rad==1 then
			Item_Lv=80
		elseif tmd_rad==2 then
			Item_Lv=70
		elseif tmd_rad==3 then
			Item_Lv=60
		elseif tmd_rad==4 then
			Item_Lv=50
		elseif tmd_rad==5 then
			Item_Lv=40
		elseif tmd_rad==6 then
			Item_Lv=30
		elseif tmd_rad==7 then
			Item_Lv=20
		else
			Item_Lv=10
		end
	end
	local base_rad=0
	base_rad=math.max((80-math.max(Item_Lv,10))*0.01,0.15)
	local Num_JL = GetItemForgeParam ( Item[1] , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	local JL_jineng=0
	local JL_jineng_lv=0
	if Part2_JL==16 then
		JL_jineng=Part2_JL
		JL_jineng_lv=Part3_JL
	elseif Part4_JL==16 then
		JL_jineng=Part4_JL
		JL_jineng_lv=Part5_JL
	elseif Part6_JL==16 then
		JL_jineng=Part6_JL
		JL_jineng_lv=Part7_JL
	end

	local Gj_lv=0
	if  ItemID[2]==1070 then
		Gj_lv=GetItemAttr ( Item[2] , ITEMATTR_VAL_STR )
	end

	local life_lv = 0
	life_lv=GetSkillLv( role , SK_FENJIE )

	local run_time = math.random ( 4, 8 )
	local word_test = math.floor((JL_jineng_lv*0.05+life_lv*0.02+Gj_lv*0.03+base_rad)*100000)
	if word_test>99999 then
		word_test=99999	
	end
	local word_radom = math.random ( 10000, 99999 )
	local str =""..word_test..","..word_radom

	return 2,run_time,str
end
function end_manufacture_item (...)

	local role = 0
	local ItemBag = {}																					
	local ItemBagCount = 0										

	role , ItemBag , ItemBagCount = Read_manufacture ( arg )

	local i = 0
	local j = 0
	
	local star_check=0 
	star_check=arg[arg.n] 
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	local check = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )				
	end
	local paper_id1=GetItemAttr(Item[2], ITEMATTR_VAL_STR )
	local paper_id2=GetItemAttr(Item[2], ITEMATTR_VAL_CON )
	local paper_id3=GetItemAttr(Item[2], ITEMATTR_VAL_DEX )
	local Num_paper = GetItemForgeParam ( Item[2] , 1 )
	Num_paper = TansferNum ( Num_paper )
	local Part2_paper = GetNum_Part2 ( Num_paper )	
	local Part4_paper = GetNum_Part4 ( Num_paper )	
	local Part6_paper = GetNum_Part6 ( Num_paper )	


	local life_lv = 0
	local Gj_lv= 0
	local paper_lv = GetItemAttr(Item[2], ITEMATTR_URE )
	local num_x=1
	local star_num_qulity=4
	if ItemID[2]==2300 then 
		life_lv=GetSkillLv( role , SK_ZHIZAO )	
		if star_check==1 then
			num_x=0
		elseif star_check==2 or star_check==3 or star_check==4 then
			num_x=1
		elseif star_check==5 or star_check==6 or star_check==7 then 
			num_x=2
		elseif star_check==8 or star_check==9 or star_check==10 then 
			num_x=3
		elseif star_check==11 then
			num_x=4			
		end
	end
	if ItemID[2]==2301 then 
		life_lv=GetSkillLv( role , SK_ZHUZAO )	
	end
	if ItemID[2]==2302 then 
		life_lv=GetSkillLv( role , SK_PENGREN )	
		local differ_check=math.abs(star_check-75)
		if differ_check==0 then
			num_x=5
		elseif differ_check==1 then
			num_x=4
		elseif differ_check==2  then
			num_x=3
		elseif differ_check>=3 and differ_check<=6 and star_check<=77 then
			num_x=2
		elseif differ_check>=7 and differ_check<=25 and star_check<=77 then
			num_x=1		
		else
			num_x=0
		end
	end
	if ItemID[3]==1067 or ItemID[3]==1068 or ItemID[3]==1069 or ItemID[3]==1070 then
		Gj_lv=GetItemAttr ( Item[3] , ITEMATTR_VAL_STR )
	end

	local i1 = 0
	local i2 = 0
	local i3 = 0
	i1 =TakeItem( role, 0, paper_id1, Part2_paper)
	i2 =TakeItem( role, 0, paper_id2, Part4_paper)
	i3 =TakeItem( role, 0, paper_id3, Part6_paper)
	if i1 == 0 or  i2 == 0 or  i3 == 0 then
	
	end
	local a1_num=GetItemAttr(Item[2], ITEMATTR_MAXURE )
	local a1=TakeItem( role, 0, 855, a1_num )			   
	if a1==0  then
		SystemNotice ( role ,"\206\248\232\225\234\224 \243\228\224\235\229\237\232\255 \204\238\237\229\242\251 \244\229\233")
		--SystemNotice ( role ,"Ошибка удаления Монеты фей")
		return
	end 

	local new_num = GetItemAttr(Item[2], ITEMATTR_VAL_AGI )
	if ItemID[2]==2300 then ---------ЦЖФмНјЦЅ
		if new_num==1067 or  new_num==1068 or new_num==1069 or new_num==1070 or  new_num==2236 then
			num_x=1
		end
	end
	local paper_energy = GetItemAttr(Item[2], ITEMATTR_MAXENERGY )-100
	local star_good=(math.min(life_lv,paper_lv)*0.03+Gj_lv*0.05+(100-paper_energy*10)*0.01)*100
	local star_radom = math.random ( 1, 100 )
	local m1 = -1
	local m2 = -1	
	if ItemID[2]==2300 then 
		if star_check>=2 then
			star_good=100
			star_radom=1
		else
			star_good=1
			star_radom=100
		end
	end
	local star_check_chenggong=0
	if star_check~=0 and star_good >star_radom and num_x~=0 then
		star_check_chenggong=1
		m1, m2 = MakeItem ( role , new_num  , num_x , star_num_qulity )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		if ItemID[2]==2301 and CheckItem_CanJinglian(Itemfinal)==1 then 
			local Itemfinal_energy=GetItemAttr ( Itemfinal ,ITEMATTR_ENERGY)
			local itemfinal_maxenergy =GetItemAttrRange(new_num , ITEMATTR_MAXENERGY , 1 )
			local itemfinal_minenergy = GetItemAttrRange(new_num ,ITEMATTR_MAXENERGY , 0 )
			if paper_energy>7 then
				paper_energy=7
			end 
			if itemfinal_maxenergy~=itemfinal_minenergy then
				Itemfinal_energy=math.mod(Itemfinal_energy,1000)+paper_energy*1000
				SetItemAttr ( Itemfinal ,ITEMATTR_MAXENERGY , Itemfinal_energy)
				SetItemAttr ( Itemfinal ,ITEMATTR_ENERGY , Itemfinal_energy)
			end
		end
		local item_final_ID=GetItemID(Itemfinal)
		if item_final_ID==1067 or item_final_ID==1068 or item_final_ID==1069 or item_final_ID==1070 then
			SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
			SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
			SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
		end
		if item_final_ID==2236 then
			SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,paper_lv)
		end
	else
		SystemNotice( role , "\194\224\248 \239\240\238\246\229\241\241 \239\240\238\248\184\235 \237\229\243\228\224\247\237\238 \239\238\242\238\236\243 \247\242\238 \243 \226\224\241 \236\224\235\229\237\252\234\232\233 \243\240\238\226\229\237\252. \194\224\248\224 \240\224\225\238\242\224 \239\240\238\248\235\224 \226\239\243\241\242\243\254 ,\224 \242\224\234 \230\229 \239\240\238\239\224\235\232 \237\229\234\238\242\238\240\251\229 \239\240\229\228\236\229\242\251.")
	 	--SystemNotice( role , "Ваш процесс прошёл неудачно потому что у вас маленький уровень. Ваша работа прошла впустую ,а так же пропали некоторые предметы.")
	end

	local paper_num=GetItemAttr(Item[2], ITEMATTR_VAL_STA )--НјЦЅК№УГґОКэ
	paper_num=paper_num-1
		SetItemAttr(Item[2], ITEMATTR_VAL_STA , paper_num )

	local Gj_ure=0
	if ItemID[3]==1067 or ItemID[3]==1068 or ItemID[3]==1069 or ItemID[3]==1070 then
		Gj_ure=GetItemAttr ( Item[3] , ITEMATTR_URE )
		local star_gjlv_num=GetItemAttr ( Item[3] , ITEMATTR_VAL_STR )
		Gj_ure=Gj_ure-50*star_gjlv_num
		if Gj_ure<=0 then
			Gj_ure=0
		end

		local star_lv_num = GetItemAttr( Item[3] ,ITEMATTR_ENERGY )       
		if star_check_chenggong==15 then
			star_lv_num=star_lv_num+paper_lv
		else						
			star_lv_num=star_lv_num+15			
		end
		if star_lv_num>=10000 then
			star_lv_num=10000
		end
		SystemNotice( role , "\194\224\248 \232\237\241\242\240\243\236\229\237\242 \226 \237\224\241\242\238\255\249\229\229 \226\240\229\236\255 \232\236\229\229\242 "..star_lv_num.." \238\247\234\238\226 \238\239\251\242\224")
	 	--SystemNotice( role , "Ваш инструмент в настоящее время имеет "..star_lv_num.." очков опыта")
		if star_lv_num>=star_gjlv_num*star_gjlv_num*100 then
			star_gjlv_num=star_gjlv_num+1
			SetItemAttr ( Item[3] , ITEMATTR_VAL_STR ,star_gjlv_num)
	 		SystemNotice( role , "\207\238\231\228\240\224\226\235\255\229\236, \243\240\238\226\229\237\252 \226\224\248\229\227\238 \232\237\241\242\240\243\236\229\237\242\224 \243\226\229\235\232\247\232\235\241\255!")
			--SystemNotice( role , "Поздравляем, уровень вашего инструмента увеличился!")
			star_lv_num=0
		end
		SetItemAttr (  Item[3] , ITEMATTR_ENERGY , star_lv_num )
		SetItemAttr ( Item[3] , ITEMATTR_URE ,Gj_ure)
	end

	local cha_name = GetChaDefaultName ( role )
	SynChaKitbag(role,13)
	return m2
end
function can_fenjie_item (...)
	local ItemBagCount = arg[2]
	local Length = ItemBagCount+3
	if arg.n ~= Length then
		return 0
	end	
	local Check = 0
	Check = can_fenjie_item_main ( arg )
	if Check == 1 then		
		return 1
	else
		return 0
	end

end

function can_fenjie_item_main ( Table )
	local role = 0
	local ItemBag = {}									
	local ItemBagCount = 0								
	
	role , ItemBag , ItemBagCount = Read_manufacture ( Table )
	role , ItemBag , ItemBagCount = Read_manufacture ( Table )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"\211 \226\224\241 \228\238\235\230\229\237 \225\251\242\252 \239\238\234\240\224\233\237\229 \236\229\240\229 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242")
		--SystemNotice(role ,"У вас должен быть покрайне мере 1 свободный слот")
		UseItemFailed ( role )
		return
	end
	local i = 0
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for i = 1 , ItemBagCount , 1 do							
		Item[i] = GetChaItem ( role , 2 , ItemBag [i] )			
		ItemID[i] = GetItemID ( Item[i] )						
		ItemType[i] = GetItemType ( Item[i] )					
	end


	if ItemType[1] ~= 59 then
		return 0
	end
	local URE_JLone = GetItemAttr( Item[1] ,ITEMATTR_URE )		
	if URE_JLone<=0 then
		SystemNotice( role ,"\194\241\229\236\238\227\243\249\232\233: \221\242\238 \238\247\229\237\252 \230\229\241\242\238\234\238! \205\229\236\229\228\235\229\237\237\238 \239\238\234\238\240\236\232\242\229 \244\229\254!")
		--SystemNotice( role ,"Всемогущий: Это очень жестоко! Немедленно покормите фею!")
		return 0	
	end
	local type_check=0
	type_check=CheckItem_CanJinglian ( Item[3] )
	if type_check==0 then
		SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224 \239\238\236\229\241\242\232\242\229 \238\240\243\230\232\229 \232\235\232 \225\240\238\237\254 \228\235\255 \224\237\224\235\232\231\224")
		--SystemNotice( role ,"Пожалуйста поместите оружие или броню для анализа")
		return 0		
	end
	
	local Num_JL = GetItemForgeParam ( Item[1] , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	local JL_jineng=0
	local JL_jineng_lv=0
	local life_lv = 0
	life_lv=GetSkillLv( role , SK_FENJIE )	
	if Part2_JL==15 then
		JL_jineng=Part2_JL
		JL_jineng_lv=Part3_JL
	elseif Part4_JL==15 then
		JL_jineng=Part4_JL
		JL_jineng_lv=Part5_JL
	elseif Part6_JL==15 then
		JL_jineng=Part6_JL
		JL_jineng_lv=Part7_JL
	end

	if  ItemID[2]~=1070 then
			SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224 \232\241\239\238\235\252\231\243\233\242\229 \202\240\232\241\242\224\235\235\252\237\243\254 \247\224\241\242\232\246\243")
			--SystemNotice( role ,"Пожалуйста используйте Кристалльную частицу")
			return 0	
	else
		local Gj_ure=GetItemAttr ( Item[2] , ITEMATTR_URE )
		if Gj_ure<=0 then
			Gj_ure=0
			SystemNotice( role ,"\200\237\241\242\240\243\236\229\237\242 \232\231\237\238\248\229\237.\206\237 \237\229 \236\238\230\229\242 \232\241\239\238\235\252\231\238\226\224\237 \241\237\238\226\224.")
			--SystemNotice( role ,"Инструмент изношен.Он не может использован снова.")
			return 0
		end
		local Gj_lv=GetItemAttr ( Item[2] , ITEMATTR_VAL_STR )
		JL_jineng_lv=3*JL_jineng_lv+1
		if JL_jineng_lv<Gj_lv then
			SystemNotice( role ,"\211\240\238\226\229\237\252 \237\224\226\251\234\224 \243 \244\229\232 \237\229 \241\238\226\239\224\228\224\229\242 \241 \243\240\238\226\237\229\236 \232\237\241\242\240\243\236\229\237\242\224")
			--SystemNotice( role ,"Уровень навыка у феи не совпадает с уровнем инструмента")
			return 0			
		end
	end

	if ItemID[4] ~=2625 and ItemID[4] ~=2630 and ItemID[4] ~=2634 and ItemID[4] ~=2635 and ItemID[4] ~=2636 and ItemID[4] ~=2637 and ItemID[4] ~=2638  then	---ґЯ»ЇјБ
		SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224 \239\238\235\238\230\232\242\229 \234\224\242\224\235\232\231\224\242\238\240 \241\237\224\240\255\230\229\237\232\255")
		--SystemNotice( role ,"Пожалуйста положите катализатор снаряжения")
		return 0			
	end


	return 1
end

function end_fenjie_item (...)
	local role = 0
	local ItemBag = {}																				
	local ItemBagCount = 0										

	role , ItemBag , ItemBagCount = Read_manufacture ( arg )

	local i = 0
	local j = 0


	local star_check=0 

	star_check=arg[arg.n] 

	
	local Item = {}
	local ItemID = {}
	local ItemType = {}

	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )		
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )					
	end
	local Item_Lv =  GetItemLv ( Item[3] )



	local Num_JL = GetItemForgeParam ( Item[1] , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	local JL_jineng=0
	local JL_jineng_lv=0
	if Part2_JL==16 then
		JL_jineng=Part2_JL
		JL_jineng_lv=Part3_JL
	elseif Part4_JL==16 then
		JL_jineng=Part4_JL
		JL_jineng_lv=Part5_JL
	elseif Part6_JL==16 then
		JL_jineng=Part6_JL
		JL_jineng_lv=Part7_JL
	end



	local Gj_lv=0
	if  ItemID[2]==1070 then
		Gj_lv=GetItemAttr ( Item[2] , ITEMATTR_VAL_STR )
	end

	local life_lv = 0
	life_lv=GetSkillLv( role , SK_FENJIE )	
	local num_new =math.min(math.max(1,math.floor( (JL_jineng_lv*0.1+life_lv*0.05+Gj_lv*0.05 )*10)),10)


	local i1 = 0
	local i2 = 0
	i1= RemoveChaItem ( role , ItemID[3] , 1 , 2 , ItemBag [3] , 2 , 1 , 1)		
	i2= RemoveChaItem ( role , ItemID[4] , 1 , 2 , ItemBag [4] , 2 , 1 , 1)		
	if i1 == 0 or  i2 == 0 then
	end
	local new_num=1346
	if ItemID[4] ==2625 then	
		local rad1=0
		if Item_Lv>=80 then
			rad1=math.random ( 131, 143 )
		elseif Item_Lv>=70 then
			rad1=math.random ( 116, 130 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 94, 115 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 72, 93 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 49, 71 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 27, 48 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 13, 26 )
		else
			rad1=math.random ( 1, 12 )
		end
		new_num=STONE1_ID[rad1]
	elseif ItemID[4] ==2630	 then 
		local rad1=0
		if Item_Lv>=80 then
			rad1=math.random ( 150, 151 )
		elseif Item_Lv>=70 then
			rad1=math.random ( 145, 149 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 119, 144 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 101, 118 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 76, 100 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 41, 75 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 25, 40 )
		else
			rad1=math.random ( 1, 24 )
		end
		new_num=FOOD_ID[rad1]
	elseif ItemID[4] ==2634	 then 
		local rad1=0
		if Item_Lv>=80 then
			rad1=math.random ( 336, 346 )
		elseif Item_Lv>=70 then
			rad1=math.random ( 249, 335 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 191, 248 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 127, 190 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 89, 126 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 57, 88 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 19, 56 )
		else
			rad1=math.random ( 1, 18 )
		end
		new_num=SPECIL_ID[rad1]
	elseif ItemID[4] ==2635	 then 
		local rad1=0
		if Item_Lv>=80 then
			rad1=math.random ( 171, 176 )
		elseif Item_Lv>=70 then
			rad1=math.random ( 155, 170 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 133, 154 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 109, 132 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 88, 108 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 56, 87 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 38, 55 )
		else
			rad1=math.random ( 1, 37 )
		end
		new_num=BONE_ID[rad1]
	elseif ItemID[4] ==2636	 then 
		local rad1=0
		if Item_Lv>=70 then
			rad1=math.random ( 57, 72 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 57, 69 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 57, 63 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 57, 61 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 37, 56 )
		else
			rad1=math.random ( 1, 36 )
		end
		new_num=TREE_ID[rad1]
	elseif ItemID[4] ==2637 then 
		local rad1=0
		if Item_Lv>=70 then
			rad1=math.random ( 77, 97 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 77, 93 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 63, 81 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 48, 62 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 30, 47 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 20, 29 )
		else
			rad1=math.random ( 1, 19 )
		end
		new_num=SKIP_ID[rad1]
	elseif ItemID[4] ==2638 then 
		local rad1=0
		if Item_Lv>=50 then
			rad1=math.random ( 33, 37 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 28, 32 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 19, 27 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 12, 18 )
		else
			rad1=math.random ( 1, 11 )
		end
		new_num=WATER_ID[rad1]
	end

	GiveItem ( role , 0 , new_num  , num_new , 4  ) 

	if ItemID[2]==1070 then
		local Gj_ure=GetItemAttr ( Item[2] , ITEMATTR_URE )
		local star_gjlv_num=GetItemAttr ( Item[2] , ITEMATTR_VAL_STR )
		Gj_ure=Gj_ure-50*star_gjlv_num
		if Gj_ure<=0 then
			Gj_ure=0
		end
		
		local star_lv_num = GetItemAttr( Item[2] ,ITEMATTR_ENERGY )    
		star_lv_num=star_lv_num+1
		if star_lv_num>=10000 then
			star_lv_num=10000
		end
		SystemNotice( role , "\194\224\248 \232\237\241\242\240\243\236\229\237\242 \226 \237\224\241\242\238\255\249\229\229 \226\240\229\236\255 \232\236\229\229\242 "..star_lv_num.." \238\247\234\238\226 \238\239\251\242\224")
	 	--SystemNotice( role , "Ваш инструмент в настоящее время имеет "..star_lv_num.." очков опыта")
		local star_gjlv_num=GetItemAttr ( Item[2] , ITEMATTR_VAL_STR )
		if star_lv_num>=star_gjlv_num*star_gjlv_num*100 then 
			star_gjlv_num=star_gjlv_num+1
			SetItemAttr ( Item[2] , ITEMATTR_VAL_STR ,star_gjlv_num)
	 		SystemNotice( role , "\207\238\231\228\240\224\226\235\255\229\236, \243\240\238\226\229\237\252 \226\224\248\229\227\238 \232\237\241\242\240\243\236\229\237\242\224 \243\226\229\235\232\247\232\235\241\255!")
			--SystemNotice( role , "Поздравляем, уровень вашего инструмента увеличился!")
			star_lv_num=0
		end
		SetItemAttr (  Item[2] , ITEMATTR_ENERGY , star_lv_num )
		SetItemAttr ( Item[2] , ITEMATTR_URE ,Gj_ure)
	end

	local cha_name = GetChaDefaultName ( role )
	LG( "star_FENJIE_lg" ,cha_name, star_check, ItemID[2] , ItemID[3] , ItemID[4] , Gj_lv ,  life_lv )
	SynChaKitbag(role,13)
	return 1
end



function can_shtool_item(...)
	if arg.n ~= 10 and arg.n ~= 14 then
		return 0
	end
	local Check = 0
	Check = can_shtool_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end


function can_shtool_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )

	if ItemCount [0] ~= 1 or ItemCount [1] ~= 1 or ItemBagCount [0] ~= 1 or ItemBagCount [1] ~= 1 then
		SystemNotice ( role ,"\206\225\238\240\243\228\238\226\224\237\232\229 \237\229\231\224\234\238\237\237\238\229")
		--SystemNotice ( role ,"Оборудование незаконное")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"\194\224\236 \237\243\230\229\237 \236\232\237\232\236\243\236 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role ,"Вам нужен минимум 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end

	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	

	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )


        local ItemID_mainitem = GetItemID ( Item_mainitem )
        local ItemID_otheritem = GetItemID ( Item_otheritem )

	local Item_mainitem_Lv =  GetItemAttr ( Item_mainitem, ITEMATTR_VAL_STR )

	local Item_otheritem_Lv =  GetItemAttr ( Item_otheritem , ITEMATTR_VAL_STR)

	local item_shtool_ure = GetItemAttr(Item_mainitem,ITEMATTR_URE) 
	local item_shtool_maxure = GetItemAttr(Item_mainitem,ITEMATTR_MAXURE) 

	if ItemType_mainitem~=70 then
		SystemNotice( role ,"\207\238\226\240\229\230\228\184\237\237\251\229 \202\240\232\241\242\224\235\235\252\237\251\233 \234\238\242\229\235,\215\184\240\237\224\255 \234\240\232\241\242\224\235\235\252\237\224\255 \228\251\240\224,\202\240\232\241\242\224\235\235 \192\237\242\232\236\224\242\229\240\232\232 \232 \202\240\232\241\242\224\235\235\252\237\224\255 \247\224\241\242\232\246\224 \236\238\227\243\242 \238\242\240\229\236\238\237\242\232\240\238\226\224\237\251 \231\228\229\241\252.")
		--SystemNotice( role ,"Повреждённые Кристалльный котел,Чёрная кристалльная дыра,Кристалл Антиматерии и Кристалльная частица могут отремонтированы здесь.")
		return 0	
	end
	if ItemID_mainitem~=1067 and ItemID_mainitem~=1068 and ItemID_mainitem~=1069 and ItemID_mainitem~=1070 then
		SystemNotice( role ,"\207\238\226\240\229\230\228\184\237\237\251\229 \202\240\232\241\242\224\235\235\252\237\251\233 \234\238\242\229\235,\215\184\240\237\224\255 \234\240\232\241\242\224\235\235\252\237\224\255 \228\251\240\224,\202\240\232\241\242\224\235\235 \192\237\242\232\236\224\242\229\240\232\232 \232 \202\240\232\241\242\224\235\235\252\237\224\255 \247\224\241\242\232\246\224 \236\238\227\243\242 \238\242\240\229\236\238\237\242\232\240\238\226\224\237\251 \231\228\229\241\252.")
		--SystemNotice( role ,"Повреждённые Кристалльный котел,Чёрная кристалльная дыра,Кристалл Антиматерии и Кристалльная частица могут отремонтированы здесь.")
		return 0	
	end

	if ItemType_otheritem ~= 70 or ItemID_otheritem~=2236 then
		SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224, \232\241\239\238\235\252\231\243\233\242\229 \239\240\224\226\232\235\252\237\251\233 \232\237\241\242\240\243\236\229\237\242 \228\235\255 \240\229\236\238\237\242\224.")
		--SystemNotice( role ,"Пожалуйста, используйте правильный инструмент для ремонта.")
		return 0	
	end

	if item_shtool_ure>=item_shtool_maxure then
		SystemNotice( role ,"\200\237\241\242\240\243\236\229\237\242 \237\229 \239\238\228\235\229\230\232\242 \240\229\236\238\237\242\243")
		--SystemNotice( role ,"Инструмент не подлежит ремонту")
		return 0	
	end

	if Item_mainitem_Lv>Item_otheritem_Lv then
		SystemNotice( role ,"\211\240\238\226\229\237\252 \240\229\236\238\237\242\237\238\227\238 \232\237\241\242\240\243\236\229\237\242\224 \237\232\230\229 \240\229\236\238\237\242\232\240\243\229\236\238\227\238")
		--SystemNotice( role ,"Уровень ремонтного инструмента ниже ремонтируемого")
		return 0	
	end

	local Money_Need = get_item_shtool_money ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\238\235\238\242\224 \237\224 \240\229\236\238\237\242")
		--SystemNotice( role ,"Нехватает золота на ремонт")
		return 0
	end

	return 1
end


function begin_shtool_item(...)

	local Check_Canshtool = 0
	Check_Canshtool = can_shtool_item_main ( arg )
	if Check_Canshtool == 0 then
		return 0
	end
	
	local role = 0
	local ItemBag = {}											
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )

	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	
	local Money_Need = get_item_shtool_money ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	TakeMoney(role,nil,Money_Need)

	Check_shtool_Item = shtool_item ( arg )
	if Check_shtool_Item == 0  then
		SystemNotice ( role ,"\206\248\232\225\234\224 \240\229\236\238\237\242\224 \239\240\229\228\236\229\242\224 \228\235\255 \236\232\240\237\251\245 \237\224\226\251\234\238\226.\207\238\226\242\238\240\232\242\229 \239\240\238\246\229\241\241")
		--SystemNotice ( role ,"Ошибка ремонта предмета для мирных навыков.Повторите процесс")
	end

	return 1
end

function get_item_shtool_money(...)
	local Money = shtool_money_main ( arg )
	return Money
end

function shtool_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}									
	local ItemBagCount = {}								
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0							

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )

	local Money_Need=200

	return Money_Need
end

function shtool_item ( Table )

	local role = 0
	local ItemBag = {}										
	local ItemCount = {}									
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0

	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )


	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	

	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )

        local ItemID_mainitem = GetItemID ( Item_mainitem )
        local ItemID_otheritem = GetItemID ( Item_otheritem )

	local item_shtool_ure = GetItemAttr(Item_mainitem,ITEMATTR_URE) 
	local item_shtool_maxure = GetItemAttr(Item_mainitem,ITEMATTR_MAXURE) 

	SetItemAttr ( Item_mainitem ,ITEMATTR_URE, item_shtool_maxure )
	local cha_name = GetChaDefaultName ( role )

	local R1 = 0
	R1 = RemoveChaItem ( role , Item_otheritem , 1 , 2 , ItemBag [1] , 2 , 1 , 0 )		
	if R1 == 0 then
		SystemNotice( role , "\207\229\240\229\236\229\249\229\237\232\229 \239\240\229\228\236\229\242\224 \239\238\242\229\240\239\229\235\238 \237\229\243\228\224\247\243 ")
		--SystemNotice( role , "Перемещение предмета потерпело неудачу ")
		return
	end
	SynChaKitbag(role,13)
end


 function GetChaName_4 ( role,npc )
	local el1= CheckBagItem( role,2242 )			
	local el2 = CheckBagItem( role,2243 )
	local el3 = CheckBagItem( role,2244 )
	local el4 = CheckBagItem( role,2245 )  
		if el1 ~=0  then 
			TakeItem( role, 0,2242, 1 )
			GiveItem ( role , 0 , 3077  , 10 , 4 ) 
		elseif el2 ~= 0  then
			TakeItem( role, 0,2243, 1 )
			GiveItem ( role , 0 , 3077  , 10 , 4 ) 
		elseif el3 ~= 0  then
			TakeItem( role, 0,2244, 1 )
			GiveItem ( role , 0 , 3077  , 10 , 4 )  
		elseif el4 ~= 0  then
			TakeItem( role, 0,2245, 1 )
			GiveItem ( role , 0 , 3077  , 10 , 4 )  
		else
			SystemNotice( role ,"\211 \226\224\241 \237\229\242 \239\238\228\245\238\228\255\249\229\233 \240\224\241\239\232\241\234\232.")
			--SystemNotice( role ,"У вас нет подходящей расписки.")
		end
	end

function GetChaName_5 ( role,npc )
	local cha_name = GetChaDefaultName ( role )

	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	
	local am1 = CheckBagItem( role, 2240 )			
	if am1 < 1 then
		SystemNotice( role ,"\211 \226\224\241 \237\229\242 \239\232\240\224\242\241\234\232\233 \240\224\241\239\232\241\234\232 6")
		--SystemNotice( role ,"У вас нет пиратский расписки 6")
		return
	else
	local am2 =TakeItem( role, 0,2240, 1 )			                   
		if am2==0  then
			SystemNotice ( role ,"\206\225\236\229\237 \239\232\240\224\242\241\234\238\233 \240\224\241\239\232\241\234\232 6 \237\229\243\228\224\235\241\255")
			--SystemNotice ( role ,"Обмен пиратской расписки 6 неудался")
			return
		end
	end
	GiveItem( role , 0 , 1028  , 1 , 4 )
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name..": \238\237(\224) \238\225\236\229\237\255\235(\224) 1 \200\231\236\229\237\247\232\226\243\254 \208\243\237\243")	
	--Notice("Поздравляем "..cha_name..": он(а) обменял(а) 1 Изменчивую Руну")	
end

 function GetChaName_6 ( role,npc )
	
				
		local job = GetChaAttr( role, ATTR_JOB) --ИЎЦ°Тµ
		
		if job ~= 12 and job ~= 9 and job ~= 16 and job ~= 8 and job ~= 13 and job ~=14 then
			SystemNotice(role,"\204\238\230\229\242 \232\241\239\238\235\252\231\238\226\224\242\252\241\255 \239\229\240\241\238\237\224\230\224\236\232 \241\238 \226\242\238\240\238\233 \239\240\238\244\229\241\241\232\229\233.")
			--SystemNotice(role,"Может использоваться персонажами со второй профессией.")
			return
		end
	local el_count0 = CheckBagItem ( role , 3850)
	local el_count1 = CheckBagItem ( role , 3853)
	local el_count2 = CheckBagItem ( role , 3854)
	local el_count3 = CheckBagItem ( role , 3856)
	local el_count4 = CheckBagItem ( role , 3857)
	local el_count5 = CheckBagItem ( role , 3858)
	local el_count6 = CheckBagItem ( role , 3863)
	local el_count7 = CheckBagItem ( role , 3866)
	local el_count8 = CheckBagItem ( role , 3868)
	local el_count9 = CheckBagItem ( role , 3870)
	local el_count10 = CheckBagItem ( role ,3872 )


		if el_count0 >= 1 and el_count1 >= 1 and el_count2 >= 1 and el_count3 >= 2 and el_count4 >= 3 and el_count5 >= 2 and el_count6 >= 2 and el_count7 >= 1 and el_count8 >= 1 and el_count9 >= 1 and el_count10 >= 1 then 
		
		local x_del_0 = DelBagItem ( role , 3850 , 1 ) 
		local x_del_1 = DelBagItem ( role , 3853 , 1 ) 
		local x_del_2 = DelBagItem ( role , 3854 , 1 ) 
		local x_del_3 = DelBagItem ( role , 3856 , 2 ) 
		local x_del_4 = DelBagItem ( role , 3857 , 3 ) 
		local x_del_5 = DelBagItem ( role , 3858 , 2 ) 
		local x_del_6 = DelBagItem ( role , 3863 , 2 ) 
		local x_del_7 = DelBagItem ( role , 3866 , 1 ) 
		local x_del_8 = DelBagItem ( role , 3868 , 1 ) 
		local x_del_9 = DelBagItem ( role , 3870 , 1 ) 
		local x_del_10 = DelBagItem ( role ,3872 , 1 ) 

		else
			SystemNotice( role ,"\211 \226\224\241 \237\229\242 \239\238\228\245\238\228\255\249\229\233 \234\224\240\242\251 \224\235\244\224\226\232\242\224.")
			--SystemNotice( role ,"У вас нет подходящей карты алфавита.")
			return
		end
		local a = math.random ( 1 , 6 )
			    if a == 1 then
				       GiveItem( role , 0 , 2536  , 1 , 4 )
		        elseif a == 2 then 
					GiveItem( role , 0 , 2533  , 1 , 4 )
		        elseif a == 3 then	
					GiveItem( role , 0 , 2539  , 1 , 4 )
			 elseif a == 4 then 
					GiveItem( role , 0 , 2530  , 1 , 4 )
			elseif a == 5 then	
					GiveItem( role , 0 ,2542  , 1 , 4 )
			elseif a == 6 then	
					GiveItem( role , 0 , 2545  , 1 , 4 )

			end
			if job == 12 then	
						GiveItem( role , 0 , 2536  , 1 , 4 )
					elseif job == 9	then 
						GiveItem( role , 0 , 2533  , 1 , 4 )
					elseif job == 16 then	
						GiveItem( role , 0 , 2539  , 1 , 4 )
					elseif job == 8	then 
						GiveItem( role , 0 , 2530  , 1 , 4 )
					elseif job == 13 then	
						GiveItem( role , 0 ,2542  , 1 , 4 )
					elseif job == 14 then	
						GiveItem( role , 0 , 2545  , 1 , 4 )

				end
end

function GetChaName_7 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	--local Item_ID = GetItemID (role)
	local am1 = CheckBagItem( role, 2846 )	
	local am2 = CheckBagItem( role, 2847 )	
	local am3 = CheckBagItem( role, 2848 )	
	local am4 = CheckBagItem( role, 2849 )	
	local am5 = CheckBagItem( role, 2850 )	
	local am6 = CheckBagItem( role, 2851 )	
	local am7 = CheckBagItem( role, 2852 )	
	local am8 = CheckBagItem( role, 2853 )	
	       
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1 or am6 < 1 or am7 < 1 or am8 < 1   then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2846, 1 )
	local an2 =TakeItem( role, 0,2847, 1 )
	local an3 =TakeItem( role, 0,2848, 1 )
	local an4 =TakeItem( role, 0,2849, 1 )
	local an5 =TakeItem( role, 0,2850, 1 )
	local an6 =TakeItem( role, 0,2851, 1 )
	local an7 =TakeItem( role, 0,2852, 1 )
	local an8 =TakeItem( role, 0,2853, 1 )
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 or an6==0 or an7==0 or an8==0  then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2934  , 1 , 4 ) 
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Силуэт Смерти")
	end
end


function GetChaName_8 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2927 )	
	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2927, 1 )
	
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2935  , 1 , 4 ) 
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \207\240\238\234\235\255\242\232\229 \213\224\240\228\232\237\224")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Проклятие Хардина")
	end
end


function GetChaName_9 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2928 )	
	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2928, 1 )
	
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2936  , 1 , 4 )
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \207\240\238\234\235\255\242\232\229 \210\252\236\251")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Проклятие Тьмы")
	end
end


function GetChaName_10 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2929 )	
	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2929, 1 )
	
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2937  , 1 , 4 ) 
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \207\240\238\234\235\255\242\232\229 \192\225\224\228\228\238\237\224")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Проклятие Абаддона")
	end
end


function GetChaName_11  ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2931 )	
	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2931, 1 )
	
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2939  , 1 , 4 )
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \207\240\238\234\235\255\242\232\229 \193\229\231\228\237\251")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Проклятие Бездны")
	end
end


function GetChaName_12 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	--local Item_ID = GetItemID (role)
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2932 )	
	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2932, 1 )
	
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2940  , 1 , 4 ) 
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \207\240\238\234\235\255\242\232\229 \209\242\232\234\241\224")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Проклятие Стикса")
	end
end


function GetChaName_13 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2930 )	
	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2930, 1 )
	
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2938  , 1 , 4 )
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \207\240\238\234\235\255\242\232\229 \192\241\243\240\251")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Проклятие Асуры")
	end
end

function GetChaName_14 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2935 )	
	
	if am1 < 1 or am2 < 1 then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2935, 1 )
	
	if an1==0 or an2==0 then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2562  , 1 , 4 ) 
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Душу Хардина")
	end
end


function GetChaName_15 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2936 )	
	
	if am1 < 1 or am2 < 1 then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2936, 1 )
	
	if an1==0 or an2==0 then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2563  , 1 , 4 ) 
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \196\243\248\243 \210\252\236\251")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Душу Тьмы")
	end
end


function GetChaName_16 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2937 )	
	
	if am1 < 1 or am2 < 1 then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2937, 1 )
	
	if an1==0 or an2==0 then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2564  , 1 , 4 )
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \196\243\248\243 \192\225\224\228\228\238\237\224")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Душу Абаддона")
	end
end


function GetChaName_17 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2939 )	
	
	if am1 < 1 or am2 < 1 then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2939, 1 )
	
	if an1==0 or an2==0 then
		SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
		--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2566  , 1 , 4 )
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \196\243\248\243 \193\229\231\228\237\251")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Душу Бездны")
	end
end


function GetChaName_18 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2940 )	
	
	if am1 < 1 or am2 < 1 then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2940, 1 )
	
	if an1==0 or an2==0 then
			SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
			--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2567  , 1 , 4 )
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \196\243\248\243 \209\242\232\234\241\224")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Душу Стикса")
	end
end


function GetChaName_19 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2938 )	
	
	if am1 < 1 or am2 < 1 then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2938, 1 )
	
	if an1==0 or an2==0 then
			SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
			--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2565  , 1 , 4 )
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \196\243\248\243 \192\241\243\240\224")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Душу Асура")
	end
end

function GetChaName_20 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2562 )	
	local am2 = CheckBagItem( role, 2563 )	
	local am3 = CheckBagItem( role, 2564 )	
	local am4 = CheckBagItem( role, 2565 )	
	local am5 = CheckBagItem( role, 2566 )	
	local am6 = CheckBagItem( role, 2567 )	
	local am7 = CheckBagItem( role, 2933 )	
	local am8 = CheckBagItem( role, 2934 )	
	       
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1 or am6 < 1 or am7 < 1 or am8 < 1   then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	end
	local an1 =TakeItem( role, 0,2562, 1 )
	local an2 =TakeItem( role, 0,2563, 1 )
	local an3 =TakeItem( role, 0,2564, 1 )
	local an4 =TakeItem( role, 0,2565, 1 )
	local an5 =TakeItem( role, 0,2566, 1 )
	local an6 =TakeItem( role, 0,2567, 1 )
	local an7 =TakeItem( role, 0,2933, 1 )
	local an8 =TakeItem( role, 0,2934, 1 )
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 or an6==0 or an7==0 or an8==0  then
			SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
			--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
	else
	GiveItem ( role , 0 , 2404  , 1 , 4 ) 
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." : \206\237 \243\241\239\229\248\237\238 \238\225\236\229\237\255\235 1 \196\243\248\243 \215\184\240\237\238\227\238 \196\240\224\234\238\237\224")
	--Notice("Поздравляем "..cha_name.." : Он успешно обменял 1 Душу Чёрного Дракона")
	end
end

function GetChaName_21 ( role,npc )

	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum > 31421 then
		SystemNotice ( role , "\205\229 \226\238\235\237\243\233\242\229\241\252,\226\240\229\236\255 \235\254\225\226\232 \229\249\184 \237\229 \239\240\232\248\235\238. \207\240\232\245\238\228\232\242\229 14 \236\224\240\242\224 \226 \239\229\240\232\238\228 \241 20:00 \232 22:00" )
		--SystemNotice ( role , "Не волнуйтесь,время любви ещё не пришло. Приходите 14 марта в период с 20:00 и 22:00" )
		UseItemFailed ( role )
		return
	end
	
	local cha_name = GetChaDefaultName ( role )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	
	local am1 = CheckBagItem( role, 1649 )	
	       am2 = CheckBagItem( role, 3130 )
	       am3 = CheckBagItem( role, 1641 )
	       am4 = CheckBagItem( role, 4418 )
	if am1 < 1 or am2<1 or am3<1 or am4<1 then
		SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \238\225\236\229\237\224")
		--SystemNotice( role ,"Нехватает предметов для обмена")
		return
	else
	local am5 =TakeItem( role, 0,1649, 1)
	       am6 =TakeItem( role, 0,3130, 1)
	       am7 =TakeItem( role, 0,1641, 1)
	       am8 =TakeItem( role, 0,4418, 1)
		if am5==0 or am6==0 or am7==0 or am8==0 then
			SystemNotice ( role ,"\207\240\238\232\231\238\248\235\224 \237\229\243\228\224\247\224 \239\240\232 \238\242\237\255\242\232\232 \239\240\229\228\236\229\242\238\226")
			--SystemNotice ( role ,"Произошла неудача при отнятии предметов")
			return
		end
	end
	GiveItem( role , 0 , 1074  , 1 , 4 )
end


function GetChaName_22 ( role,npc )
		
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	
	if CheckDateNum < 31420  then
		SystemNotice ( role , "\205\229 \226\238\235\237\243\233\242\229\241\252,\226\240\229\236\255 \235\254\225\226\232 \229\249\184 \237\229 \239\240\232\248\235\238. \207\240\232\245\238\228\232\242\229 14 \236\224\240\242\224 \226 \239\229\240\232\238\228 \241 20:00 \232 22:00" )
		--SystemNotice ( role , "Не волнуйтесь,время любви ещё не пришло. Приходите 14 марта в период с 20:00 и 22:00" )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 31421 then
		SystemNotice ( role , "\194\240\229\236\255 \226\251\248\235\238.\198\228\232\242\229 \241\235\229\228\243\254\249\229\227\238 \227\238\228\224" )
		--SystemNotice ( role , "Время вышло.Ждите следующего года" )
		UseItemFailed ( role )
		return
	end

	local cha_name = GetChaDefaultName ( role )

	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	
	local am1 = CheckBagItem( role, 1074 )			
	if am1 < 10 then
		SystemNotice( role ,"\211 \226\224\241  \237\229\228\238\241\242\224\242\238\247\237\238 \241\229\236\255\237")
		--SystemNotice( role ,"У вас  недостаточно семян")
		return
	else
	local am2 =TakeItem( role, 0,1074, 10)			                   
		if am2==0  then
			SystemNotice ( role ,"\205\229\243\228\224\235\238\241\252 \238\225\236\229\237\255\242\252 10 \209\229\236\255\237 \203\254\225\226\232")
			--SystemNotice ( role ,"Неудалось обменять 10 Семян Любви")
			return
		end
	end
	GiveItem( role , 0 , 3077  , 1 , 4 )
end



function GetChaName_23 ( role,npc )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 31420  then
		SystemNotice ( role , "\205\229 \226\238\235\237\243\233\242\229\241\252,\226\240\229\236\255 \235\254\225\226\232 \229\249\184 \237\229 \239\240\232\248\235\238. \207\240\232\245\238\228\232\242\229 14 \236\224\240\242\224 \226 \239\229\240\232\238\228 \241 20:00 \232 22:00" )
		--SystemNotice ( role , "Не волнуйтесь,время любви ещё не пришло. Приходите 14 марта в период с 20:00 и 22:00" )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 31421 then
		SystemNotice ( role , "\194\240\229\236\255 \226\251\248\235\238.\198\228\232\242\229 \241\235\229\228\243\254\249\229\227\238 \227\238\228\224" )
		--SystemNotice ( role , "Время вышло.Ждите следующего года" )
		UseItemFailed ( role )
		return
	end

	local cha_name = GetChaDefaultName ( role )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	
	local am1 = CheckBagItem( role, 1074 )			
	if am1 < 100 then
		SystemNotice( role ,"\211 \226\224\241  \237\229\228\238\241\242\224\242\238\247\237\238 \241\229\236\255\237")
		--SystemNotice( role ,"У вас  недостаточно семян")
		return
	else
	local am2 =TakeItem( role, 0,1074, 100)			                   
		if am2==0  then
			SystemNotice ( role ,"\205\229\243\228\224\235\238\241\252 \238\225\236\229\237\255\242\252 100 \209\229\236\255\237 \203\254\225\226\232")
			--SystemNotice ( role ,"Неудалось обменять 100 Семян Любви")
			return
		end
	end
	GiveItem( role , 0 , 3094  , 3 , 4 )
end


function GetChaName_24 ( role,npc )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 31420  then
		SystemNotice ( role , "\205\229 \226\238\235\237\243\233\242\229\241\252,\226\240\229\236\255 \235\254\225\226\232 \229\249\184 \237\229 \239\240\232\248\235\238. \207\240\232\245\238\228\232\242\229 14 \236\224\240\242\224 \226 \239\229\240\232\238\228 \241 20:00 \232 22:00" )
		--SystemNotice ( role , "Не волнуйтесь,время любви ещё не пришло. Приходите 14 марта в период с 20:00 и 22:00" )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 31421 then
		SystemNotice ( role , "\194\240\229\236\255 \226\251\248\235\238.\198\228\232\242\229 \241\235\229\228\243\254\249\229\227\238 \227\238\228\224" )
		--SystemNotice ( role , "Время вышло.Ждите следующего года" )
		UseItemFailed ( role )
		return
	end

	local cha_name = GetChaDefaultName ( role )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	
	local am1 = CheckBagItem( role, 1074 )			
	if am1 < 1000 then
		SystemNotice( role ,"\211 \226\224\241  \237\229\228\238\241\242\224\242\238\247\237\238 \241\229\236\255\237")
		--SystemNotice( role ,"У вас  недостаточно семян")
		return
	else
	local am2 =TakeItem( role, 0,1074, 1000)			                   
		if am2==0  then
			SystemNotice ( role ,"\205\229\243\228\224\235\238\241\252 \238\225\236\229\237\255\242\252 1000 \209\229\236\255\237 \203\254\225\226\232")
			--SystemNotice ( role ,"Неудалось обменять 1000 Семян Любви")
			return
		end
	end
	GiveItem( role , 0 , 2844  , 1 , 4 )
end


function GetChaName_25 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"\200\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237")
		--SystemNotice(role,"Инвентарь заблокирован")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")
		--SystemNotice(role,"Нехватает места в инвентаре")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2235 )	
	
	
	if am1 < 1  then
		SystemNotice( role ,"\211 \226\224\241 \237\229\242 \234\224\236\237\255 \207\229\240\229\240\238\230\228\229\237\232\255")
		--SystemNotice( role ,"У вас нет камня Перерождения")
		return
	end
	local an1 =TakeItem( role, 0,2235, 1 )
	
	
	if an1==0  then
		SystemNotice ( role ,"\194\251\234\243\239 \234\238\235\235\229\234\246\232\232 \239\240\238\248\184\235 \237\229\243\241\239\229\248\237\238")
		--SystemNotice ( role ,"Выкуп коллекции прошёл неуспешно")
	else
	GiveItem ( role , 0 , 2941  , 1 , 4 )
	LG( "ZSK" ,cha_name,"Rebirth Stone"..am1.." ")
	end
end


---------------------------------------------------
---------------------------------------------------

function GetChaName1_guildwar( role,npc )
    local num_count = CheckBagItem(role, 2859)
    if num_count >=20 then
        TakeItem( role, 0,2859, 20 )
	local a = math.random ( 1 , 4 )
        if a == 1 then
        AddState ( role , role , STATE_QINGZ , 10 , 300 )
	elseif a ==2 then
	AddState ( role , role , STATE_YS , 10 , 300 )
	elseif a ==3 then
	AddState ( role , role , STATE_HFZQ , 10 , 10 )
	else
	AddState ( role , role , STATE_JRQKL , 10 , 180 )
	end
    end
    if num_count < 20 then
	SystemNotice( role ,"\211 \226\224\241 \237\229\245\226\224\242\224\229\242 \227\235\224\231\237\251\245 \239\238\226\255\231\238\234!")
    --SystemNotice( role ,"У вас нехватает глазных повязок!")
    end
end


function GetChaName2_guildwar( role,npc )

 local map_name_role = GetChaMapName ( role )

 if  map_name_role == "guildwar" then
     local bs_def = Def(haijunSide_BaseRole)
     local bs_reseist = Resist(haijunSide_BaseRole)
     local def_20 = 20
     local pedf_1 = 1
     local bs_def_after = bs_def + def_20
     local bs_reseist_after = bs_reseist + pedf_1
    
  
     local num_count = CheckBagItem(role, 4546)
      if num_count >=30 then
         TakeItem( role, 0,4546, 30 )
	 SetChaAttrI( haijunSide_BaseRole , ATTR_DEF ,bs_def_after )
	 SetChaAttrI( haijunSide_BaseRole , ATTR_PDEF, bs_reseist_after )
	 SystemNotice( role ,"\206\242\235\232\247\237\238! \209\242\224\242\243\255 \212\235\238\242\224 \243\226\229\235\232\247\232\235\224 \231\224\249\232\242\243!")
	 --SystemNotice( role ,"Отлично! Статуя Флота увеличила защиту!")
      end
      if num_count < 30 then
	  SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\238\235\232\247\229\241\242\226\238 \234\240\232\241\242\224\235\235\232\247\229\241\234\238\233 \240\243\228\251")
      --SystemNotice( role ,"Вы собрали недостаточное количество кристаллической руды")
      end
     
 elseif map_name_role == "guildwar2" then
     local bs_def = Def(di_haijunSide_BaseRole)
     local bs_reseist = Resist(di_haijunSide_BaseRole)
     local def_20 = 20
     local pedf_1 = 1
     local bs_def_after = bs_def + def_20
     local bs_reseist_after = bs_reseist + pedf_1

     local num_count = CheckBagItem(role, 4546)
      if num_count >=30 then
         TakeItem( role, 0,4546, 30 )
	 SetChaAttrI( di_haijunSide_BaseRole , ATTR_DEF ,bs_def_after )
	 SetChaAttrI( di_haijunSide_BaseRole , ATTR_PDEF, bs_reseist_after )
	 SystemNotice( role ,"\206\242\235\232\247\237\238! \209\242\224\242\243\255 \212\235\238\242\224 \243\226\229\235\232\247\232\235\224 \231\224\249\232\242\243!")
	 --SystemNotice( role ,"Отлично! Статуя Флота увеличила защиту!")
      end
      if num_count < 30 then
	  SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\238\235\232\247\229\241\242\226\238 \234\240\232\241\242\224\235\235\232\247\229\241\234\238\233 \240\243\228\251")
      --SystemNotice( role ,"Вы собрали недостаточное количество кристаллической руды")
      end
    end
     
end
	

function GetChaName3_guildwar( role,npc )
    
 local map_name_role = GetChaMapName ( role )
 if map_name_role == "guildwar" then
    
    local num_count_1 = CheckBagItem(role, 1684)
    local num_count_2 = CheckBagItem(role, 4012)
    if num_count_1 >= 4 and num_count_2 >= 9 then
       TakeItem( role, 0,1684, 4 )
       TakeItem( role, 0,4012, 9 )
       AddState ( haijunSide_BaseRole , haijunSide_BaseRole , STATE_PKWD , 10 , 180 )
	   SystemNotice( role ,"\213\224\245\224! \209\242\224\242\243\255 \237\229\243\255\231\226\232\236\224 \237\224 3 \236\232\237\243\242\251!")
       --SystemNotice( role ,"Хаха! Статуя неуязвима на 3 минуты!")
    else
			   SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\238\235\232\247\229\241\242\226\238 \240\229\241\243\240\241\238\226!")
               --SystemNotice( role ,"Вы собрали недостаточное количество ресурсов!")
    end
 end
 if map_name_role == "guildwar2" then
  local num_count_1 = CheckBagItem(role, 1684)---јбУІ№кјЧ
    local num_count_2 = CheckBagItem(role, 4012)---ФВОІзІч­
    if num_count_1 >= 4 and num_count_2 >= 9 then
       TakeItem( role, 0,1684, 4 )
       TakeItem( role, 0,4012, 9 )
       AddState ( di_haijunSide_BaseRole , di_haijunSide_BaseRole , STATE_PKWD , 10 , 180 )
	   SystemNotice( role ,"\213\224\245\224! \209\242\224\242\243\255 \237\229\243\255\231\226\232\236\224 \237\224 3 \236\232\237\243\242\251!")
       --SystemNotice( role ,"Хаха! Статуя неуязвима на 3 минуты!")
    else
			   SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\238\235\232\247\229\241\242\226\238 \240\229\241\243\240\241\238\226!")
               --SystemNotice( role ,"Вы собрали недостаточное количество ресурсов!")
    end
   end
  
end



function GetChaName4_guildwar( role,npc )
    local map_name_role = GetChaMapName ( role )
 if map_name_role == "guildwar" then

    local num_count_1 = CheckBagItem(role, 4011)
    local num_count_2 = CheckBagItem(role, 1720)
   if num_count_1 >= 12 and num_count_2 >= 12 then
       TakeItem( role, 0,4011, 12 )
       TakeItem( role, 0,1720, 12 )
       local min_atk = Mnatk(haijunSide_JTRole_1)
       local max_atk = Mxatk(haijunSide_JTRole_1)
    
       if min_atk == 0 then
          local min_atk = Mnatk(haijunSide_JTRole_2)
          local max_atk = Mxatk(haijunSide_JTRole_2)
       end
          local min_atk_after = min_atk + 25
          local max_atk_after = max_atk + 25
          SetChaAttrI( haijunSide_JTRole_1 , ATTR_MNATK ,min_atk_after )
          SetChaAttrI( haijunSide_JTRole_1 , ATTR_MXATK ,max_atk_after )
          SetChaAttrI( haijunSide_JTRole_2 , ATTR_MNATK ,min_atk_after )
          SetChaAttrI( haijunSide_JTRole_2 , ATTR_MXATK ,max_atk_after )
	       SystemNotice( role ,"\206\242\235\232\247\237\238 ! \192\242\224\234\224 \225\224\248\229\237 \243\226\229\235\232\247\232\235\224\241\252!")
		   --SystemNotice( role ,"Отлично ! Атака башен увеличилась!")
    elseif num_count_1 < 12 and num_count_2 < 12 then
			   SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\238\235\232\247\229\241\242\226\238 \240\229\241\243\240\241\238\226!")
               --SystemNotice( role ,"Вы собрали недостаточное количество ресурсов!")
    end
  end
  

 if map_name_role == "guildwar2" then
    local num_count_1 = CheckBagItem(role, 4011)---ЙдЛ®
    local num_count_2 = CheckBagItem(role, 1720)---Уг№ЗН·
    if num_count_1 >= 12 and num_count_2 >= 12 then
       TakeItem( role, 0,4011, 12 )
       TakeItem( role, 0,1720, 12 )
       local min_atk = Mnatk(di_haijunSide_JTRole_1)
       local max_atk = Mxatk(di_haijunSide_JTRole_1)
    
	    if min_atk == 0 then
	       local min_atk = Mnatk(di_haijunSide_JTRole_2)
	       local max_atk = Mxatk(di_haijunSide_JTRole_2)
	    end
	       local min_atk_after = min_atk + 25
	       local max_atk_after = max_atk + 25
	       SetChaAttrI( di_haijunSide_JTRole_1 , ATTR_MNATK ,min_atk_after )
	       SetChaAttrI( di_haijunSide_JTRole_1 , ATTR_MXATK ,max_atk_after )
	       SetChaAttrI( di_haijunSide_JTRole_2 , ATTR_MNATK ,min_atk_after )
	       SetChaAttrI( di_haijunSide_JTRole_2 , ATTR_MXATK ,max_atk_after )
	       SystemNotice( role ,"\206\242\235\232\247\237\238 ! \192\242\224\234\224 \225\224\248\229\237 \243\226\229\235\232\247\232\235\224\241\252!")
		   --SystemNotice( role ,"Отлично ! Атака башен увеличилась!")
     
      elseif num_count_1 < 12 and num_count_2 < 12 then
			   SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\238\235\232\247\229\241\242\226\238 \240\229\241\243\240\241\238\226!")
               --SystemNotice( role ,"Вы собрали недостаточное количество ресурсов!")
     end 
    end  
 end



function GetChaName5_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
    if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 30641 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30941 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)

	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
   elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 30641 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30941 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)

	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
    end

end


function GetChaName6_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
    end

end


function GetChaName7_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
    
end

function GetChaName8_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
    end
end

function GetChaName9_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName10_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 11300 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 11241 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 11300 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 11241 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end


function GetChaName11_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName12_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName13_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end



function GetChaName14_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 30700 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 30841 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 30741 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 30741 , 11002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 30700 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 30841 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 30741 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 30741 , 11002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName15_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 51200 , 10000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 51241 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 51341 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 51441 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 51200 , 10000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 51241 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 51341 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 51441 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName16_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 11100 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 11041 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 11141 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 11100 , 11800 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 11241 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 11241 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 11100 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 11141 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 11100 , 11900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 11241 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 11241 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName17_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
        local Monster1 =CreateChaX( 999 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
        local Monster7 =CreateChaX( 999 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 999 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 30841 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 30741 , 51302 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 30741 , 51202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
        local Monster1 =CreateChaX( 1025 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
        local Monster7 =CreateChaX( 1025 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 1025 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 30841 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 30741 , 51302 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 30741 , 51202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName18_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 999 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	
	local Monster2 =CreateChaX( 999 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	
	local Monster3 =CreateChaX( 999 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	
	local Monster5 =CreateChaX( 999 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	
	local Monster6 =CreateChaX( 999 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)

	local Monster8 =CreateChaX( 999 , 12041 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 12141 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 12641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 1025 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	
	local Monster2 =CreateChaX( 1025 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	
	local Monster3 =CreateChaX( 1025 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	
	local Monster5 =CreateChaX( 1025 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	
	local Monster6 =CreateChaX( 1025 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)

	local Monster8 =CreateChaX( 1025 , 12041 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 12141 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 12641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName19_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 999 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	
	local Monster2 =CreateChaX( 999 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	
	local Monster3 =CreateChaX( 999 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	
	local Monster5 =CreateChaX( 999 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	
	local Monster6 =CreateChaX( 999 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)

	local Monster8 =CreateChaX( 999 , 52441 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 52641 , 52702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 52641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 52641 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 1025 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	
	local Monster2 =CreateChaX( 1025 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	
	local Monster3 =CreateChaX( 1025 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	
	local Monster5 =CreateChaX( 1025 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	
	local Monster6 =CreateChaX( 1025 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)

	local Monster8 =CreateChaX( 1025 , 52441 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 52641 , 52702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 52641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 52641 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName20_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 999 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	
	local Monster2 =CreateChaX( 999 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	
	local Monster3 =CreateChaX( 999 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 30700 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	
	local Monster5 =CreateChaX( 999 , 30841 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	
	local Monster6 =CreateChaX( 999 , 30741 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 30741 , 11002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)

	local Monster8 =CreateChaX( 999 , 30841 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 30941 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 30541 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 30441 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 1025 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	
	local Monster2 =CreateChaX( 1025 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	
	local Monster3 =CreateChaX( 1025 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 30700 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	
	local Monster5 =CreateChaX( 1025 , 30841 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	
	local Monster6 =CreateChaX( 1025 , 30741 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 30741 , 11002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)

	local Monster8 =CreateChaX( 1025 , 30841 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 30941 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 30541 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 30441 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName21_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
      local Monster1 =CreateChaX( 999 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	
	local Monster2 =CreateChaX( 999 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	
	local Monster3 =CreateChaX( 999 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 51200 , 10000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	
	local Monster5 =CreateChaX( 999 , 51241 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	
	local Monster6 =CreateChaX( 999 , 51341 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 51441 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)

	local Monster8 =CreateChaX( 999 , 51241 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 51241 , 10202 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 51041 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 51141 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
      local Monster1 =CreateChaX( 1025 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	
	local Monster2 =CreateChaX( 1025 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	
	local Monster3 =CreateChaX( 1025 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 51200 , 10000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	
	local Monster5 =CreateChaX( 1025 , 51241 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	
	local Monster6 =CreateChaX( 1025 , 51341 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 51441 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)

	local Monster8 =CreateChaX( 1025 , 51241 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 51141 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 51041 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 51141 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end

function GetChaName22_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
        local Monster1 =CreateChaX( 999 , 11100 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	
	local Monster2 =CreateChaX( 999 , 11041 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	
	local Monster3 =CreateChaX( 999 , 11141 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 11100 , 11500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	
	local Monster5 =CreateChaX( 999 , 11241 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	
	local Monster6 =CreateChaX( 999 , 11241 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)

	local Monster8 =CreateChaX( 999 , 11141 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 11441 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 11441 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 10941 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
        local Monster1 =CreateChaX( 1025 , 11100 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	
	local Monster2 =CreateChaX( 1025 , 11041 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	
	local Monster3 =CreateChaX( 1025 , 11141 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 11100 , 11500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	
	local Monster5 =CreateChaX( 1025 , 11241 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	
	local Monster6 =CreateChaX( 1025 , 11241 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)

	local Monster8 =CreateChaX( 1025 , 11141 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 11441 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 11441 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 10941 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \236\238\240\241\234\238\227\238 \244\235\238\242\224 !")
     --SystemNotice( role ,"Нехватает знаков морского флота !")
     end
end



---------------------------------------------------
---------------------------------------------------

function GetChaName23_guildwar( role,npc )
    local num_count = CheckBagItem(role, 2858)
    if num_count >=20 then
        TakeItem( role, 0,2858, 20 )
	local a = math.random ( 1 , 4 )
        if a == 1 then
        AddState ( role , role , STATE_QINGZ , 10 , 300 )
	elseif a ==2 then
	AddState ( role , role , STATE_YS , 10 , 300 )
	elseif a ==3 then
	AddState ( role , role , STATE_HFZQ , 10 , 10 )
	else
	AddState ( role , role , STATE_JRQKL , 10 , 180 )
	end
    end
    if num_count < 20 then
	SystemNotice( role ,"\211 \226\224\241 \237\229\228\238\241\242\224\242\238\247\237\238 \227\235\224\231\237\251\245 \239\238\226\255\231\238\234")
    --SystemNotice( role ,"У вас недостаточно глазных повязок")
    end
end


function GetChaName24_guildwar( role,npc )

     local map_name_role = GetChaMapName ( role )

  if map_name_role == "guildwar" then
     local bs_def = Def(haidaoSide_BaseRole)
     local bs_reseist = Resist(haidaoSide_BaseRole)
     local def_20 = 20 
     local pedf_1 = 1
     local bs_def_after = bs_def + def_20
     local bs_reseist_after = bs_reseist + pedf_1
     local num_count = CheckBagItem(role, 4546)
      if num_count >=30 then
         TakeItem( role, 0,4546, 30 )
	 SetChaAttrI( haidaoSide_BaseRole , ATTR_DEF ,bs_def_after )
	 SetChaAttrI( haidaoSide_BaseRole , ATTR_PDEF, bs_reseist_after )
	 SystemNotice( role ,"\206\242\235\232\247\237\238! \204\238\249\252 \207\232\240\224\242\241\234\238\233 \241\242\224\242\243\229 \243\226\229\235\232\247\232\235\224\241\252!")
	 --SystemNotice( role ,"Отлично! Мощь Пиратской статуе увеличилась!")
      end
      if num_count < 30 then
      SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\240\232\241\242\224\235\235\232\247\229\241\234\238\233 \240\243\228\251")
	  --SystemNotice( role ,"Вы собрали недостаточное кристаллической руды")
      end
   elseif map_name_role == "guildwar2" then
     local bs_def = Def(di_haidaoSide_BaseRole)
     local bs_reseist = Resist(di_haidaoSide_BaseRole)
     local def_20 = 20 
     local pedf_1 = 1 
     local bs_def_after = bs_def + def_20
     local bs_reseist_after = bs_reseist + pedf_1
     local num_count = CheckBagItem(role, 4546)
      if num_count >=30 then
         TakeItem( role, 0,4546, 30 )
	 SetChaAttrI( di_haidaoSide_BaseRole , ATTR_DEF ,bs_def_after )
	 SetChaAttrI( di_haidaoSide_BaseRole , ATTR_PDEF, bs_reseist_after )
	 SystemNotice( role ,"\206\242\235\232\247\237\238! \204\238\249\252 \207\232\240\224\242\241\234\238\233 \241\242\224\242\243\229 \243\226\229\235\232\247\232\235\224\241\252!")
	 --SystemNotice( role ,"Отлично! Мощь Пиратской статуе увеличилась!")
      end
      if num_count < 30 then
      SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\240\232\241\242\224\235\235\232\247\229\241\234\238\233 \240\243\228\251")
	  --SystemNotice( role ,"Вы собрали недостаточное кристаллической руды")
      end
    end
end
	

function GetChaName25_guildwar( role,npc )

     local map_name_role = GetChaMapName ( role )
 if map_name_role == "guildwar" then
    local num_count_1 = CheckBagItem(role, 4013)
    local num_count_2 = CheckBagItem(role, 1683)
    if num_count_1 >= 4 and num_count_2 >= 9 then
       TakeItem( role, 0,4013, 4 )
       TakeItem( role, 0,1683, 9 )
       AddState ( haidaoSide_BaseRole , haidaoSide_BaseRole , STATE_PKWD , 10 , 180 )
       SystemNotice( role ,"\213\224\245\224 ! \209\242\224\242\243\255 \226\240\229\236\229\237\237\238 \237\229\243\255\231\226\232\236\224!")
	   --SystemNotice( role ,"Хаха ! Статуя временно неуязвима!")
    else
			   SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\238\235\232\247\229\241\242\226\238 \240\229\241\243\240\241\238\226!")
               --SystemNotice( role ,"Вы собрали недостаточное количество ресурсов!")
    end
  end
 if map_name_role == "guildwar2" then
    local num_count_1 = CheckBagItem(role, 4013)
    local num_count_2 = CheckBagItem(role, 1683)
    if num_count_1 >= 4 and num_count_2 >= 9 then
       TakeItem( role, 0,4013, 4 )
       TakeItem( role, 0,1683, 9 )
       AddState ( di_haidaoSide_BaseRole , di_haidaoSide_BaseRole , STATE_PKWD , 10 , 180 )
       SystemNotice( role ,"\213\224\245\224 ! \209\242\224\242\243\255 \226\240\229\236\229\237\237\238 \237\229\243\255\231\226\232\236\224!")
	   --SystemNotice( role ,"Хаха ! Статуя временно неуязвима!")
    else
			   SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\238\235\232\247\229\241\242\226\238 \240\229\241\243\240\241\238\226!")
               --SystemNotice( role ,"Вы собрали недостаточное количество ресурсов!")
    end
 end
end



function GetChaName26_guildwar( role,npc )

     local map_name_role = GetChaMapName ( role )
 if map_name_role == "guildwar" then
     local num_count_1 = CheckBagItem(role, 4011)
     local num_count_2 = CheckBagItem(role, 1720)
    if num_count_1 >= 12 and num_count_2 >= 12 then
       TakeItem( role, 0,4011, 12 )
       TakeItem( role, 0,1720, 12 )
       local min_atk = Mnatk(haidaoSide_JTRole_1)
       local max_atk = Mxatk(haidaoSide_JTRole_1)
	    if min_atk == 0 then
	       local min_atk = Mnatk(haidaoSide_JTRole_2)
	       local max_atk = Mxatk(haidaoSide_JTRole_2)
	    end
       local min_atk_after = min_atk + 25
       local max_atk_after = max_atk + 25
       SetChaAttrI( haidaoSide_JTRole_1 , ATTR_MNATK ,min_atk_after )
       SetChaAttrI( haidaoSide_JTRole_1 , ATTR_MXATK ,max_atk_after )
       SetChaAttrI( haidaoSide_JTRole_2 , ATTR_MNATK ,min_atk_after )
       SetChaAttrI( haidaoSide_JTRole_2 , ATTR_MXATK ,max_atk_after )
	   SystemNotice( role ,"\213\238\240\238\248\238 ! \192\242\224\234\224 \225\224\248\229\237 \243\226\229\235\232\247\229\235\224\241\252!")
       --SystemNotice( role ,"Хорошо ! Атака башен увеличелась!")
		elseif num_count_1 < 12 and num_count_2 < 12 then
			   SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\238\235\232\247\229\241\242\226\238 \240\229\241\243\240\241\238\226!")
               --SystemNotice( role ,"Вы собрали недостаточное количество ресурсов!")
   end
end
  if map_name_role == "guildwar2" then
     local num_count_1 = CheckBagItem(role, 4011)
     local num_count_2 = CheckBagItem(role, 1720)
    if num_count_1 >= 12 and num_count_2 >= 12 then
	       TakeItem( role, 0,4011, 12 )
	       TakeItem( role, 0,1720, 12 )
	       local min_atk = Mnatk(di_haidaoSide_JTRole_1)
	       local max_atk = Mxatk(di_haidaoSide_JTRole_1)
	    if min_atk == 0 then
	       local min_atk = Mnatk(di_haidaoSide_JTRole_2)
	       local max_atk = Mxatk(di_haidaoSide_JTRole_2)
	    end
	       local min_atk_after = min_atk + 25
	       local max_atk_after = max_atk + 25
	       SetChaAttrI( di_haidaoSide_JTRole_1 , ATTR_MNATK ,min_atk_after )
	       SetChaAttrI( di_haidaoSide_JTRole_1 , ATTR_MXATK ,max_atk_after )
	       SetChaAttrI( di_haidaoSide_JTRole_2 , ATTR_MNATK ,min_atk_after )
	       SetChaAttrI( di_haidaoSide_JTRole_2 , ATTR_MXATK ,max_atk_after )
	   SystemNotice( role ,"\213\238\240\238\248\238 ! \192\242\224\234\224 \225\224\248\229\237 \243\226\229\235\232\247\229\235\224\241\252!")
       --SystemNotice( role ,"Хорошо ! Атака башен увеличелась!")
     
    
     elseif num_count_1 < 12 and num_count_2 < 12 then
			   SystemNotice( role ,"\194\251 \241\238\225\240\224\235\232 \237\229\228\238\241\242\224\242\238\247\237\238\229 \234\238\235\232\247\229\241\242\226\238 \240\229\241\243\240\241\238\226!")
               --SystemNotice( role ,"Вы собрали недостаточное количество ресурсов!")
     end
   end
end



function GetChaName27_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )

	local Monster1 =CreateChaX( 1000 , 30741 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)

	local Monster2 =CreateChaX( 1000 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)

	local Monster3 =CreateChaX( 1000 , 30941 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)

	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1026 , 30741 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30941 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)

	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end


function GetChaName28_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
 
	local Monster1 =CreateChaX( 1000 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 51141 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1026 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 51141 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end


function GetChaName29_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1000 , 11300 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 11241 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 11141 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )

	local Monster1 =CreateChaX( 1026 , 11300 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 11241 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 11141 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName30_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1000 , 30700 , 51700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30841 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30941 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1026 , 30700 , 51770 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30841 , 51670 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30941 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName31_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1000 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )

	local Monster1 =CreateChaX( 1026 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)

	local Monster2 =CreateChaX( 1026 , 12000 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)

	local Monster3 =CreateChaX( 1026 , 11900 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName32_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1000 , 52300 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 52441 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 52541 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )

	local Monster1 =CreateChaX( 1026 , 52300 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 52200 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 52100 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName33_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 30600 , 10200 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30641 , 10302 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30541 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 30500 , 10400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 30741 , 10202 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 30741 , 10202 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 30541 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 30600 , 10200 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30641 , 10302 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30541 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 30500 , 10400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 30741 , 10202 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 30741 , 10202 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 30541 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName34_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 51200 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 51141 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 51241 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 51000 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 51141 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 51341 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 51041 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 51200 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 51141 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 51241 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 51000 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 51141 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 51341 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 51041 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName35_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 11400 , 11600 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 11541 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 11541 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 11400 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 11341 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 11341 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 11441 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 11400 , 11600 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 11541 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 11541 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 11400 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 11341 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 11341 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 11441 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end


function GetChaName36_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")

    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30841 , 51600 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30741 , 51600 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 30700 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 30641 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 30741 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 30741 , 51300 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName37_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 ,12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName38_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 52100 , 52200 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 52241 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 52041 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 52400 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 51941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 51941 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
        --local Monster1 = CreateChaEx(999, 30641, 51702, 237, 60)
	local Monster1 =CreateChaX( 1026 , 52100 , 52200 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 52241 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 52041 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 52400 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 51941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 51941 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName39_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
        local Monster1 =CreateChaX( 1000 , 30700 , 10500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30641 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30541 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 30500 , 10400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 30741 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 30541 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
        local Monster7 =CreateChaX( 1000 , 30641 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1000 , 30841 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 30841 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 30741 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 30641 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
        local Monster1 =CreateChaX( 1026 , 30700 , 10500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30641 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30541 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 30500 , 10400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 30741 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 30541 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
        local Monster7 =CreateChaX( 1026 , 30641 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1026 , 30841 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 30841 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 30741 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 30641 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName40_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
       local Monster1 =CreateChaX( 1000 , 52100 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	
	local Monster2 =CreateChaX( 1000 , 52241 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	
	local Monster3 =CreateChaX( 1000 , 52141 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 52200 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	
	local Monster5 =CreateChaX( 1000 , 52041 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	
	local Monster6 =CreateChaX( 1000 , 52141 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 52341 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)

	local Monster8 =CreateChaX( 1000 , 52341 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 52041 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 52041 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 52341 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
       local Monster1 =CreateChaX( 1026 , 52100 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	
	local Monster2 =CreateChaX( 1026 , 52241 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	
	local Monster3 =CreateChaX( 1026 , 52141 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 52200 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	
	local Monster5 =CreateChaX( 1026 , 52041 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	
	local Monster6 =CreateChaX( 1026 , 52141 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 52341 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)

	local Monster8 =CreateChaX( 1026 , 52341 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 52041 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 52041 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 52341 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName41_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
       local Monster1 =CreateChaX( 1000 , 11500 , 11600 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	
	local Monster2 =CreateChaX( 1000 , 11441 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	
	local Monster3 =CreateChaX( 1000 , 11541 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 11400 , 11500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	
	local Monster5 =CreateChaX( 1000 , 11541 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	
	local Monster6 =CreateChaX( 1000 , 11541 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 11641 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)

	local Monster8 =CreateChaX( 1000 , 11641 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 11641 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 11641 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 11641 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
        local Monster1 =CreateChaX( 1026 , 11500 , 11600 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	
	local Monster2 =CreateChaX( 1026 , 11441 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	
	local Monster3 =CreateChaX( 1026 , 11541 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 11400 , 11500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	
	local Monster5 =CreateChaX( 1026 , 11541 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	
	local Monster6 =CreateChaX( 1026 , 11541 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 11641 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)

	local Monster8 =CreateChaX( 1026 , 11641 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 11641 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 11641 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 11641 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName42_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
      local Monster1 =CreateChaX( 1000 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
        local Monster7 =CreateChaX( 1000 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1000 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 30841 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 30741 , 51302 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 30741 , 51202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
        local Monster1 =CreateChaX( 1026 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
        local Monster7 =CreateChaX( 1026 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1026 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 30841 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 30741 , 51302 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 30741 , 51202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName43_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
      local Monster1 =CreateChaX( 1000 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	
	local Monster2 =CreateChaX( 1000 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	
	local Monster3 =CreateChaX( 1000 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	
	local Monster5 =CreateChaX( 1000 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	
	local Monster6 =CreateChaX( 1000 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)

	local Monster8 =CreateChaX( 1000 , 12041 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 12141 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 12641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
      local Monster1 =CreateChaX( 1000 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	
	local Monster2 =CreateChaX( 1026 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	
	local Monster3 =CreateChaX( 1026 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	
	local Monster5 =CreateChaX( 1026 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	
	local Monster6 =CreateChaX( 1026 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)

	local Monster8 =CreateChaX( 1026 , 12041 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 12141 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 12641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName44_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
       local Monster1 =CreateChaX( 1000 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	
	local Monster2 =CreateChaX( 1000 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	
	local Monster3 =CreateChaX( 1000 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	
	local Monster5 =CreateChaX( 1000 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	
	local Monster6 =CreateChaX( 1000 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)

	local Monster8 =CreateChaX( 1000 , 52441 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 52641 , 52702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 52641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 52641 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
          local Monster1 =CreateChaX( 1000 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	
	local Monster2 =CreateChaX( 1026 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	
	local Monster3 =CreateChaX( 1026 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	
	local Monster5 =CreateChaX( 1026 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	
	local Monster6 =CreateChaX( 1026 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)

	local Monster8 =CreateChaX( 1026 , 52441 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 52641 , 52702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 52641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 52641 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
	SystemNotice( role ,"\206\241\224\228\224 \243\241\239\229\248\237\238 \237\224\247\224\235\224\241\252!")
	--SystemNotice( role ,"Осада успешно началась!")
     else
	 SystemNotice( role ,"\205\229\245\226\224\242\224\229\242 \231\237\224\234\238\226 \239\232\240\224\242\238\226 !")
     --SystemNotice( role ,"Нехватает знаков пиратов !")
     end
end

function GetChaName45_guildwar(character,npc)

		local i= CheckBagItem( character, 3849 )
		
		if i~=1 then
			SystemNotice( character , "\207\238\230\224\235\243\233\241\242\224 \243\225\229\228\232\242\229\241\252 \247\242\238 \243 \226\224\241 \229\241\242\252 \204\229\228\224\235\252 \206\242\226\224\227\232")
			--SystemNotice( character , "Пожалуйста убедитесь что у вас есть Медаль Отваги")
			return 0
		end

		local s= CheckBagItem( character, 2382 )
		if s >=1 then
		SystemNotice( character , "\194\251 \236\238\230\229\242\229 \237\229\241\242\232 \242\238\235\252\234\238 \238\228\232\237 \231\237\224\234 \198\232\231\237\232 \232 \209\236\229\240\242\232")
		--SystemNotice( character , "Вы можете нести только один знак Жизни и Смерти")
			return 0
		end

		local retbag = HasLeaveBagGrid( character, 1)
	        if retbag ~= LUA_TRUE then
		SystemNotice(character,"\205\229\245\226\224\242\224\229\242 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229")	
		--SystemNotice(character,"Нехватает места в инвентаре")
		return 
	end	 
		local role_RY = GetChaItem2 ( character , 2 , 3849 )
                local HonorPoint = GetItemAttr ( role_RY , ITEMATTR_VAL_STR)
                local HonorPoint_now = HonorPoint - 15
	if HonorPoint < 15 then
		SystemNotice ( character , "\194\224\236 \237\229\245\226\224\242\224\229\242 \247\229\241\242\232 \228\235\255 \238\225\236\229\237\224!" )
		--SystemNotice ( character , "Вам нехватает чести для обмена!" )
		return 0
	else
               
	        SetItemAttr( role_RY , ITEMATTR_VAL_STR , HonorPoint_now )
		GiveItem ( character , 0 , 2382  , 1 , 4 )

	end
		
end

-- Воитель
function GetChaName1_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 and cha_type~=3 then
		SystemNotice( role ,"\210\238\235\252\234\238 \203\224\237\241 \232 \212\232\235\235\232\241 \236\238\227\243\242 \241\242\224\242\252 \194\238\232\242\229\235\229\236! ")
		--SystemNotice( role ,"Только Ланс и Филлис могут стать Воителем! ")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
		--SystemNotice( role ,"Не выполнены требования Перерождения ")
		return
	end
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,9 ) 	
	GiveItem_chibang ( role  )
	GiveItem_zsbook ( role )
	RefreshCha ( role )
	
end
-- Чемпион
function GetChaName2_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=2 then
		SystemNotice( role ,"\210\238\235\252\234\238 \202\224\240\246\232\231 \236\238\230\229\242 \241\242\224\242\252 \215\229\236\239\232\238\237\238\236! ")
		--SystemNotice( role ,"Только Карциз может стать Чемпионом! ")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
		--SystemNotice( role ,"Не выполнены требования Перерождения ")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,8 )
	GiveItem_chibang ( role  )
	GiveItem_zsbook ( role )
	RefreshCha ( role )
	
end
-- Покоритель морей
function GetChaName3_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 and cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"\210\238\235\252\234\238 \203\224\237\241, \212\232\235\235\232\241 \232 \192\236\232 \236\238\227\243\242 \241\242\224\242\252 \207\238\234\238\240\232\242\229\235\255\236\232 \236\238\240\229\233! ")
		--SystemNotice( role ,"Только Ланс, Филлис и Ами могут стать Покорителями морей! ")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
		--SystemNotice( role ,"Не выполнены требования Перерождения ")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,16 ) 	
	GiveItem_chibang ( role  )
	GiveItem_zsbook ( role )
	RefreshCha ( role )
end
-- Стрелок
function GetChaName4_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 and cha_type~=3 then
		SystemNotice( role ,"\210\238\235\252\234\238 \203\224\237\241 \232 \212\232\235\235\232\241 \236\238\227\243\242 \241\242\224\242\252 \209\242\240\229\235\234\238\236! ")
		--SystemNotice( role ,"Только Ланс и Филлис могут стать Стрелком! ")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
		--SystemNotice( role ,"Не выполнены требования Перерождения ")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,12 ) 	
	GiveItem_chibang ( role  )
	GiveItem_zsbook ( role )
	RefreshCha ( role )
end
-- Целительница
function GetChaName5_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"\210\238\235\252\234\238 \212\232\235\235\232\241 \232 \192\236\232 \236\238\227\243\242 \241\242\224\242\252 \214\229\235\232\242\229\235\252\237\232\246\229\233! ")
		--SystemNotice( role ,"Только Филлис и Ами могут стать Целительницей! ")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
		--SystemNotice( role ,"Не выполнены требования Перерождения ")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,13 ) 	
	GiveItem_chibang ( role  )
	GiveItem_zsbook ( role )
	RefreshCha ( role )
end
-- Колдунья
function GetChaName6_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"\210\238\235\252\234\238 \212\232\235\235\232\241 \232 \192\236\232 \236\238\227\243\242 \241\242\224\242\252 \202\238\235\228\243\237\252\229\233! ")
		--SystemNotice( role ,"Только Филлис и Ами могут стать Колдуньей! ")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224, \239\238\234\224\230\232\242\229 \228\238\234\224\231\224\242\229\235\252\241\242\226\238 \226\224\248\229\227\238 \207\229\240\229\240\238\230\228\229\237\232\255 ")
		--SystemNotice( role ,"Не выполнены требования Перерождения ")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,14 ) 	
	GiveItem_chibang ( role  )
	GiveItem_zsbook ( role )
	RefreshCha ( role )
end
-- Крылья перерождения
function GiveItem_chibang ( role  )
        local cha_type = GetChaTypeID ( role )	
	if cha_type==1 then
		GiveItem( role , 0 , 134  , 1 , 4 )
	elseif cha_type==2 then
		GiveItem( role , 0 , 138  , 1 , 4 )
	elseif cha_type==3 then
		GiveItem( role , 0 , 128  , 1 , 4 )
	elseif cha_type==4 then
		GiveItem( role , 0 , 131  , 1 , 4 )
	end
end
-- Книги перерождения
function GiveItem_zsbook ( role )
	local cha_job = GetChaAttr(role, ATTR_JOB)

	if cha_job == 8 then
		GiveItem( role , 0 , 2957 , 1 , 4 )
	elseif cha_job == 9 then
		GiveItem( role , 0 , 2956 , 1 , 4 )
	elseif cha_job == 12 then
		GiveItem( role , 0 , 2961 , 1 , 4 )
	elseif cha_job == 13 then
		GiveItem( role , 0 , 2959 , 1 , 4 )
	elseif cha_job == 14 then
		GiveItem( role , 0 , 2958 , 1 , 4 )
	elseif cha_job == 16 then
		GiveItem( role , 0 , 2960 , 1 , 4 )
	end
end
-- Перерождение феникса
function GetChaName_born ( role )

	local cha_name = GetChaDefaultName ( role )
	local cha_lv = GetChaAttr(role, ATTR_LV) 
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local i = CheckBagItem( role, 2235 )    
	if i < 1 then
		SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224, \239\238\234\224\230\232\242\229 \228\238\234\224\231\224\242\229\235\252\241\242\226\238 \226\224\248\229\227\238 \207\229\240\229\240\238\230\228\229\237\232\255 ")
		--SystemNotice( role ,"Пожалуйста, покажите доказательство вашего Перерождения ")
		return 0
	end

	local item_empty=IsEquip(role)
	if item_empty==LUA_TRUE then
		SystemNotice(role,"\207\238\230\224\235\243\233\241\242\224 \241\237\232\236\232\242\229 \226\241\184 \241\226\238\184 \241\237\224\240\255\230\229\237\232\229, \226\234\235\254\247\224\255 \234\238\235\252\246\224 \232 \225\232\230\243\242\229\240\232\254 ")
		--SystemNotice(role,"Пожалуйста снимите всё своё снаряжение, включая кольца и бижутерию ")
		return 0	
	end

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 5 then
		SystemNotice(role ,"\194 \232\237\226\229\237\242\224\240\229 \228\238\235\230\237\238 \225\251\242\252 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 5 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226! ")
		--SystemNotice(role ,"В инвентаре должно быть по крайней мере 5 свободных слотов! ")
		UseItemFailed ( role )
		return 0
	end
	local zs1 =TakeItem( role, 0,2235, 1 )
	if zs1==0 then
		SystemNotice ( role ,"\211 \226\224\241 \237\229\242\243 \202\224\236\237\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
		--SystemNotice ( role ,"У вас нету Камня Перерождения ")
		return 0
	end

	local Zs_Exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if Zs_Exp > 0 then
		SystemNotice(role ,"\194\251 \243\230\229 \239\229\240\229\240\238\230\228\229\237\251 ")
		--SystemNotice(role ,"Вы уже перерождены ")
		return 0
	end


	local QLZX= GetSkillLv ( role, SK_QLZX )
	local cha_skill_num=GetChaAttr(role, ATTR_TP  )
	local clear_skill_num=ClearFightSkill(role)

	cha_skill_num=cha_skill_num+clear_skill_num

	if QLZX == 1 then
		cha_skill_num = cha_skill_num - 1
		AddChaSkill ( role , SK_QLZX , 1 , 1 , 0 )
	end

	SetChaAttr(role, ATTR_TP ,cha_skill_num ) 

	local ap = GetChaAttr( role , ATTR_AP )

	local cha_str = GetChaAttr(role, ATTR_BSTR  ) 
	local cha_dex = GetChaAttr(role, ATTR_BDEX  ) 
	local cha_agi = GetChaAttr(role, ATTR_BAGI  ) 
	local cha_con = GetChaAttr(role, ATTR_BCON ) 
	local cha_sta = GetChaAttr(role, ATTR_BSTA )
	ap=ap+cha_str+cha_dex+cha_agi+cha_con+cha_sta-25
	SetChaAttr(role, ATTR_BSTR ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BDEX ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BAGI ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BCON,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BSTA,5 ) 
	SyncChar(role,4)
	SetChaAttr(role , ATTR_AP,ap  )
	SyncChar(role,4)
	AddSailExp(role, npc , 1 , 1 )
	local sk_add = SK_ZSSL
	AddChaSkill ( role , sk_add , 1 , 1 , 0 )

	PlayEffect( npc, 361 )
	Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." \207\229\240\229\240\238\230\228\229\237\232\229 \243\241\239\229\248\237\238 \239\240\238\233\228\229\237\238! \193\235\224\227\238\241\235\238\226\229\237\232\229 \238\242 \226\241\229\227\238 \241\229\240\226\229\240\224 "..cha_name.." \193\238\227\232\237\255 \225\235\224\227\238\241\235\238\226\235\255\229\242 \194\224\241 \209\235\224\226\224 \227\229\240\238\255\236!! ")
	--Notice("Поздравляем "..cha_name.." Перерождение успешно пройдено! Благословение от всего сервера "..cha_name.." Богиня благословляет Вас Слава героям!! ")
	return 1
end


function ChangeItem(character, npc)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
	if Item_CanGet <1 then
		SystemNotice(character ,"\210\240\229\225\243\229\242\241\255 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \239\238\235\243\247\232\242\252 \208\224\231\240\229\248\229\237\232\229 \214\229\240\234\226\232")
		return 0
	end
	local am1 = CheckBagItem( character, 3066 )			
	if am1 < 1 then
		SystemNotice( character ,"\211 \242\229\225\255 \237\229\242 \208\224\231\240\229\248\229\237\232\255 \214\229\240\234\226\232")
		return 0
	end
	local Money_Need = 50000
	local Money_Have = GetChaAttr ( character , ATTR_GD )
	if Money_Need > Money_Have  then
		SystemNotice( character ,"\205\229\245\226\224\242\224\229\242 \228\229\237\229\227. \205\243\230\237\238 50000 \236\238\237\229\242")
		return 0
	else
		TakeMoney(character,nil,Money_Need)
	end

	local r1=0
	local r2=0
	r1,r2 =MakeItem ( character , 3666  , 10 , 4 )
	local Item_el = GetChaItem ( character , 2 , r2 )

	local item_old = GetChaItem2 ( character , 2 , 3066 )
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)  
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)
	

	SetItemAttr(Item_el, ITEMATTR_VAL_STA, old_month )
	SetItemAttr(Item_el, ITEMATTR_VAL_STR, old_day )  
	SetItemAttr(Item_el, ITEMATTR_VAL_CON, old_hour )
	SetItemAttr(Item_el, ITEMATTR_VAL_DEX, old_miniute )

	SynChaKitbag(character,13)
	
end


--Второе Перерождение

--Перерождение Воителя
function GetChaName1_born2 ( role,npc )
	local cha_type = GetChaTypeID ( role )
        if cha_type~=1 and cha_type~=3 then
			SystemNotice( role ,"\210\238\235\252\234\238 \203\224\237\241 \232\235\232 \212\232\235\235\232\241 \236\238\227\243\242 \241\242\224\242\252 \194\238\232\242\229\235\255\236\232 ")
			--SystemNotice( role ,"Только Ланс или Филлис могут стать Воителями ")
				return
		end
	local check=GetChaName_born2 ( role )
		if check==0 then
			SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
			--SystemNotice( role ,"Не выполнены требования Перерождения ")
				return
		end
--добавление Скилла перерождения
	local cha_job = GetChaAttr( role , ATTR_JOB )
		SetChaAttr(role, ATTR_JOB ,9 )  
		GiveItem_chibang2 ( role  )					--Выдача крыльев перерождения
		GiveItem_zsbook2 ( role )
		RefreshCha ( role )

end

--Перерождение Чемпиона
function GetChaName2_born2 ( role,npc )
	local cha_type = GetChaTypeID ( role )
		if cha_type~=2 then
			SystemNotice( role ,"\210\238\235\252\234\238 \202\224\240\246\232\231 \236\238\230\229\242 \241\242\224\242\252 \215\229\236\239\232\238\237\238\236 ")
			--SystemNotice( role ,"Только Карциз может стать Чемпионом ")
				return
		end
	local check=GetChaName_born2 ( role )
		if check==0 then
			SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
			--SystemNotice( role ,"Не выполнены требования Перерождения ")
				return
		end
--добавление Скилла перерождения
	local cha_job = GetChaAttr( role , ATTR_JOB )
		SetChaAttr(role, ATTR_JOB ,8 )
		GiveItem_chibang2 ( role  )					--Выдача крыльев перерождения
		GiveItem_zsbook2 ( role )
		RefreshCha ( role )

end
--Перерождение Покорителя морей
function GetChaName3_born2 ( role,npc )
	local cha_type = GetChaTypeID ( role )
		if cha_type~=1 and cha_type~=3 and cha_type~=4 then
			SystemNotice( role ,"\210\238\235\252\234\238 \203\224\237\241, \212\232\235\235\232\241 \232\235\232 \192\236\232 \236\238\227\243\242 \241\242\224\242\252 \207\238\234\238\240\232\242\229\235\255\236\232 \236\238\240\229\233 ")
			--SystemNotice( role ,"Только Ланс, Филлис или Ами могут стать Покорителями морей ")
				return
		end
	local check=GetChaName_born2 ( role )
		if check==0 then
			SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
			--SystemNotice( role ,"Не выполнены требования Перерождения ")
				return
		end
--добавление Скилла перерождения
	local cha_job = GetChaAttr( role , ATTR_JOB )
		SetChaAttr(role, ATTR_JOB ,16 )         
		GiveItem_chibang2 ( role  )					--Выдача крыльев перерождения
		GiveItem_zsbook2 ( role )
		RefreshCha ( role )

end

--Перерождение Стрелок
function GetChaName4_born2 ( role,npc )
	local cha_type = GetChaTypeID ( role )
		if cha_type~=1 and cha_type~=3 then
			SystemNotice( role ,"\210\238\235\252\234\238 \203\224\237\241 \232\235\232 \212\232\235\235\232\241 \236\238\227\243\242 \241\242\224\242\252 \209\242\240\229\235\234\224\236\232 ")
			--SystemNotice( role ,"Только Ланс или Филлис могут стать Стрелками ")
				return
		end
	local check=GetChaName_born2 ( role )
		if check==0 then
			SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
			--SystemNotice( role ,"Не выполнены требования Перерождения ")
				return
		end
--добавление Скилла перерождения
	local cha_job = GetChaAttr( role , ATTR_JOB )
		SetChaAttr(role, ATTR_JOB ,12 )         
		GiveItem_chibang2 ( role  )					--Выдача крыльев перерождения
		GiveItem_zsbook2 ( role )
		RefreshCha ( role )

end

--Перерождение Цилительница
function GetChaName5_born2 ( role,npc )
	local cha_type = GetChaTypeID ( role )
		if cha_type~=3 and cha_type~=4 then
			SystemNotice( role ,"\210\238\235\252\234\238 \212\232\235\235\232\241 \232\235\232 \192\236\232 \236\238\227\243\242 \209\242\224\242\252 \214\232\235\232\242\229\235\255\236\232 ")
			--SystemNotice( role ,"Только Филлис или Ами могут Стать Цилителями ")
				return
		end
	local check=GetChaName_born2 ( role )
		if check==0 then
			SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
			--SystemNotice( role ,"Не выполнены требования Перерождения ")
				return
		end
--добавление Скилла перерождения
	local cha_job = GetChaAttr( role , ATTR_JOB )
		SetChaAttr(role, ATTR_JOB ,13 )         
		GiveItem_chibang2 ( role  )					--Выдача крыльев перерождения
		GiveItem_zsbook2 ( role )
		RefreshCha ( role )

end

--Перерождение Колдунья
function GetChaName6_born2 ( role,npc )
	local cha_type = GetChaTypeID ( role )
		if cha_type~=3 and cha_type~=4 then
			SystemNotice( role ,"\210\238\235\252\234\238 \212\232\235\235\232\241 \232\235\232 \192\236\232 \236\238\227\243\242 \241\242\224\242\252 \202\238\235\228\243\237\252\255\236\232 ")
			--SystemNotice( role ,"Только Филлис или Ами могут стать Колдуньями ")
				return
		end
	local check=GetChaName_born2 ( role )
		if check==0 then
			SystemNotice( role ,"\205\229 \226\251\239\238\235\237\229\237\251 \242\240\229\225\238\226\224\237\232\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
			--SystemNotice( role ,"Не выполнены требования Перерождения ")
				return
		end
--добавление Скилла перерождения
	local cha_job = GetChaAttr( role , ATTR_JOB )
		SetChaAttr(role, ATTR_JOB ,14 )         
		GiveItem_chibang2 ( role  )					--Выдача крыльев перерождения
		GiveItem_zsbook2 ( role )
		RefreshCha ( role )

end

--выдача крыльев второго перерождения
function GiveItem_chibang2 ( role  )
	local cha_type = GetChaTypeID ( role )  
		if cha_type==1 then
			GiveItem( role , 0 , 136  , 1 , 4 )--Ланс
		elseif cha_type==2 then
			GiveItem( role , 0 , 139  , 1 , 4 )--Карциз
		elseif cha_type==3 then
			GiveItem( role , 0 , 129  , 1 , 4 )--Филлис
		elseif cha_type==4 then
			GiveItem( role , 0 , 132  , 1 , 4 )--Ами
		end
end

--выдача книги второго перерождения
function GiveItem_zsbook2 ( role )
	local cha_job = GetChaAttr(role, ATTR_JOB)
		SystemNotice( role ,""..cha_job )
	if cha_job == 8 then
		GiveItem( role , 0 , 6014 , 1 , 4 )--книга второго перерождения чемпиона
		GiveItem( role , 0 , 7696 , 1 , 4 )
	elseif cha_job == 9 then
		GiveItem( role , 0 , 6013 , 1 , 4 )--книга второго перерождения воителя
		GiveItem( role , 0 , 7696 , 1 , 4 )
	elseif cha_job == 12 then
		GiveItem( role , 0 , 6018 , 1 , 4 )--книга второго перерождения стрелка
		GiveItem( role , 0 , 7696 , 1 , 4 )
	elseif cha_job == 13 then
		GiveItem( role , 0 , 6016 , 1 , 4 )--книга второго перерождения цилительници
		GiveItem( role , 0 , 7696 , 1 , 4 )
	elseif cha_job == 14 then
		GiveItem( role , 0 , 6015 , 1 , 4 )--книга второго перерождения колдуньи
		GiveItem( role , 0 , 7696 , 1 , 4 )
	elseif cha_job == 16 then
		GiveItem( role , 0 , 6017 , 1 , 4 )--книга второго перерождения покорителя морей
		GiveItem( role , 0 , 7696 , 1 , 4 )
	end
end

function GetChaName_born2 ( role )

	local cha_name = GetChaDefaultName ( role )
	local cha_lv = GetChaAttr(role, ATTR_LV) 
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local i = CheckBagItem( role, 5765 )--ID Камня (стоит ID Камня второго Перерождения)
		if i < 1 then
			SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224, \239\238\234\224\230\232\242\229 \228\238\234\224\231\224\242\229\235\252\241\242\226\238 \226\224\248\229\227\238 \207\229\240\229\240\238\230\228\229\237\232\255 ")
			--SystemNotice( role ,"Пожалуйста, покажите доказательство вашего Перерождения ")
				return 0
		end

	local item_empty=IsEquip(role)
		if item_empty==LUA_TRUE then
			SystemNotice(role,"\207\238\230\224\235\243\233\241\242\224 \241\237\232\236\232\242\229 \226\241\184 \241\226\238\184 \241\237\224\240\255\230\229\237\232\229, \226\234\235\254\247\224\255 \234\238\235\252\246\224 \232 \225\232\230\243\242\229\240\232\254 ")
			--SystemNotice(role,"Пожалуйста снимите всё своё снаряжение, включая кольца и бижутерию ")
				return 0	
		end

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
		if Item_CanGet < 5 then
			SystemNotice(role ,"\211 \226\224\241 \237\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229, \237\229\238\225\245\238\228\232\236\238 5 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 ")
			--SystemNotice(role ,"У вас недостаточно места в инвентаре, необходимо 5 свободных слотов ")
			UseItemFailed ( role )
				return 0
		end
	local zs1 = TakeItem( role, 0,5765, 1 )--ID Камня (стоит ID Камня Второго Перерождения)
		if zs1==0 then
			SystemNotice ( role ,"\211 \226\224\241 \237\229\242\243 \202\224\236\237\255 \207\229\240\229\240\238\230\228\229\237\232\255 ")
			--SystemNotice ( role ,"У вас нету Камня Перерождения ")
				return 0
		end

	local Zs_Exp = GetChaAttr ( role , ATTR_CSAILEXP )
		if Zs_Exp > 10000 then
			SystemNotice(role ,"\194\251 \243\230\229 \239\229\240\229\240\238\230\228\229\237\251 ")
			--SystemNotice(role ,"Вы уже перерождены ")
				return 0
		end

	local QLZX = GetSkillLv ( role, SK_QLZX )
	local cha_skill_num=GetChaAttr(role, ATTR_TP  )
	local clear_skill_num=ClearFightSkill(role)
		cha_skill_num=cha_skill_num+clear_skill_num

		if QLZX == 1 then
			cha_skill_num = cha_skill_num - 1
			AddChaSkill ( role , SK_QLZX , 2 , 2 , 0 )
		end

	SetChaAttr(role, ATTR_TP ,cha_skill_num ) 

	local ap = GetChaAttr( role , ATTR_AP )

	local cha_str = GetChaAttr(role, ATTR_BSTR  ) 
	local cha_dex = GetChaAttr(role, ATTR_BDEX  ) 
	local cha_agi = GetChaAttr(role, ATTR_BAGI  ) 
	local cha_con = GetChaAttr(role, ATTR_BCON ) 
	local cha_sta = GetChaAttr(role, ATTR_BSTA )
		ap=ap+cha_str+cha_dex+cha_agi+cha_con+cha_sta-25
		SetChaAttr(role, ATTR_BSTR ,5 ) 
		SyncChar(role,4)
		SetChaAttr(role, ATTR_BDEX ,5 ) 
		SyncChar(role,4)
		SetChaAttr(role, ATTR_BAGI ,5 ) 
		SyncChar(role,4)
		SetChaAttr(role, ATTR_BCON ,5 ) 
		SyncChar(role,4)
		SetChaAttr(role, ATTR_BSTA ,5 ) 
		SyncChar(role,4)
		SetChaAttr(role , ATTR_AP,ap  )
		SyncChar(role,4)
		AddSailExp(role, npc , 1 , 1 )
		local sk_add = SK_ZSSL
		AddChaSkill ( role , sk_add , 2 , 2 , 0 )

		PlayEffect( npc, 361 )
		
		Notice("\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." \194\242\238\240\238\229 \207\229\240\229\240\238\230\228\229\237\232\229 \243\241\239\229\248\237\238 \239\240\238\233\228\229\237\238! \193\235\224\227\238\241\235\238\226\229\237\232\229 \238\242 \226\241\229\227\238 \241\229\240\226\229\240\224 "..cha_name.." \193\238\227\232\237\255 \225\235\224\227\238\241\235\238\226\235\255\229\242 \194\224\241 \209\235\224\226\224 \227\229\240\238\255\236! ")
		--Notice("Поздравляем "..cha_name.." Второе Перерождение успешно пройдено! Благословение от всего сервера "..cha_name.." Богиня благословляет Вас Слава героям! ")
				return 1

end


function FullBuff( role )

	local money = HasMoney(role , 10000)
	
	if money == 0 then
		SystemNotice( role ,"\211 \194\224\241 \237\229\228\238\241\242\224\242\238\247\237\238 \231\238\235\238\242\224! ")
		--SystemNotice( role ,"У Вас недостаточно золота! ")
	end
	
	local StateType = GetChaStateLv ( role , STATE_MLCH )
	if StateType == 0 then
		AddState ( role , role , STATE_MLCH , 10 , 600 )
		AddState( role , role , STATE_TSHD, 10 , 600 )
		AddState ( role , role , STATE_SHPF , 10 , 600 )
		AddState( role , role , STATE_XLZH, 10 , 600 )
		TakeMoney (role, nil, 10000)
		SystemNotice( role ,"\205\224\235\238\230\229\237\238 \239\238\235\237\238\229 \225\235\224\227\238\241\235\238\226\235\229\237\232\229 10\235\226\235 \237\224 5 \236\232\237\243\242! ")
		--SystemNotice( role ,"Наложено полное благословление 10лвл на 5 минут! ")
	else
		SystemNotice( role ,"\205\229\235\252\231\255 \232\241\239\238\235\252\231\238\226\224\242\252 \238\228\237\238\226\240\229\236\229\237\237\238 \228\226\224 \231\224\234\235\232\237\224\237\232\255 \238\228\237\238\227\238 \242\232\239\224! ")
		--SystemNotice( role ,"Нельзя использовать одновременно два заклинания одного типа! ")
	end
end

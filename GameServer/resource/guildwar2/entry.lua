function config_entry(entry) 
    SetMapEntryEntiID(entry,193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("����������: � ������� ����� ������  ["..posx..","..posy.."] �������� ������ � [����-��������� �����]. ������ ��� ������� � 45 �� 64 �������!")



end

function after_destroy_entry_guildwar2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("����������: ������ � [����-��������� �����] ��������!") 

end

function after_player_login_guildwar2(entry, player_name)


    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
   ChaNotice(player_name, "��������� ����������: � ������� ����� ������ ["..posx..","..posy.."] ��� ��������� ������ � [����-��������� �����] (45-64 �������)!")

end



function check_can_enter_guildwar2( role, copy_mgr )

local FightingBook_Num = 0
      FightingBook_Num = CheckBagItem( role,3849 )

if FightingBook_Num <= 0 then
		SystemNotice(role,"�� �� ������ ����� � ��������� �����, ��������� � ���� ���� ������ ������. ���������� ������ �� � �������������� ����� � �������.")
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end

local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "�� ���������� � ������, ������� �� ������ ����� � ����-��������� �����." )
		return 0
		
	end




 if  GetChaGuildID(role) == 0 then
	

     SystemNotice(role,"������, �� ����� ������� � ����-��������� ����� ���� ����� ���� ���� �� ��������, ���� � ��������� �������!")
     return 0
		
	
elseif Lv(role) < 45 or Lv(role) > 64  then

	SystemNotice(role, "� ����-��������� ����� ����� ����� ������ ��������� 45-64 ������.")
	     return 0    
	end


        local Num_1= CheckBagItem(role,4661)
	if Num_1 >= 1 then
		SystemNotice(role, "����������, ����� �� ������ ������� ������ ��� �������, ����� ����� � ����-��������� �����.")	
		return 0
	end

	local Num_2= CheckBagItem(role,4546)
	if Num_2 >= 1 then
		SystemNotice(role, "����������, ����� �� ������ ������� ����������� ����, ����� ����� � ����-��������� �����.")	
		return 0
	end

	local Num_3= CheckBagItem(role,1684)
	if Num_3 >= 1 then
		SystemNotice(role, "����������, ����� �� ������ ������� ������� ��������� �������, ����� ����� � ����-��������� �����.")	
		return 0
	end

	local Num_4= CheckBagItem(role,1683)
	if Num_4 >= 1 then
		SystemNotice(role, "����������, ����� �� ������ ������� �������� ����������� �������, ����� ����� � ����-��������� �����.")	
		return 0
	end

	local Num_5= CheckBagItem(role,4012)
	if Num_5 >= 1 then
		SystemNotice(role, "����������, ����� �� ������ ������� ����������� �����, ����� ����� � ����-��������� �����.")	
		return 0
	end

	local Num_6= CheckBagItem(role,4013)
	if Num_6 >= 1 then
		SystemNotice(role, "����������, ����� �� ������ ������� �������� �������, ����� ����� � ����-��������� �����.")	
		return 0
	end

        local Num_7= CheckBagItem(role,2964)
	if Num_7 >= 1 then
		SystemNotice(role, "����������, ����� �� ������ ������� ���� �����, ����� ����� � ����-��������� �����.")	
		return 0
	end

	local Num_8= CheckBagItem(role,3001)
	if Num_8 >= 1 then
		SystemNotice(role, "����������, ����� �� ������ ������� ��������� ����, ����� ����� � ����-��������� �����.")	
		return 0
	end

	local Num_9= CheckBagItem(role,4011)
	if Num_9 >= 1 then
		SystemNotice(role, "����������, ����� �� ������ ������� ���������� ����, ����� ����� � ����-��������� �����.")	
		return 0
	end

	local Num_10= CheckBagItem(role,1720)
	if Num_10 >= 1 then
		SystemNotice(role, "����������, ����� �� ������ ������� ���� �����, ����� ����� � ����-��������� �����.")	
		return 0
	end

	local Num_11= CheckBagItem(role,2382)
	if Num_11 < 1 then
		SystemNotice(role, "����������, ����� ����� � ����-��������� ����� ����� ���� ����� � ������, ��� �� ������ �������� � ���, ������� ����� �� ����.")	
		return 0
	end

end

function begin_enter_guildwar2(role, copy_mgr) 


     local Cha = TurnToCha(role)
     if  GetChaGuildID(Cha) <= 100 and GetChaGuildID(Cha) > 0 then
	     if count_haijun2 < 45 then
	        
	        SystemNotice(role,"���� � [����-��������� �����]")
		MoveCity(role, "\204\232\237\232-\209\194 \228\235\255 \244\235\238\242\224")
                count_haijun2 = count_haijun2 + 1
	      else 
	        SystemNotice(role,"������� ����� ���������.")
	      end
	
     end	        
		
     if GetChaGuildID(Cha) > 100 and GetChaGuildID(Cha) <= 200 then
             if count_haidao2 < 45 then
	        SystemNotice(role,"���� � [����-��������� �����].")
		MoveCity(role, "\204\232\237\232 \209\194 \228\235\255 \239\232\240\224\242\238\226")
		count_haidao2=count_haidao2 + 1
	     else
	        SystemNotice(role,"������� ������� ���������.")
	     end

     end 
end
--------------------------------------------------------------------------
--									--
--									--
--				ctrl.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "---------------------------------------------------" )
print( "___________$$$$$$$$$$$$$$$$$$$$$$$ " )
print( "________$$$$___$$$$$$$$$$$$$$$$$$$$$ " )
print( "______$$$$______$$$$$$$$$$$$$$$$$$$$$$ " )
print( "____$$$$$________$$$$$$$$$$$$$$$$$$$$$$$ " )
print( "___$$$$$__________$$$$$$$$$$$$$$$$$$$$$$$ " )
print( "__$$$$$_____*______$$$$$$$$$$$$$$$$$$$$$$$ " )
print( "_$$$$$$____________$$$$$$$$$$$$$$$$$$$$$$$$ " )
print( "_$$$$$$___________$$$$$$$$$___________$$$$$$ " )
print( "_$$$$$$$_________$$$_$$$_$$$_________$$$$$$$$ " )
print( "_$$$$$$$$______$$$$___$___$$$$______$$$$$$$$$$ " )
print( "_$$$$$$$$$$$$$$$$$___$$$___$$$$$$$$$$$$$$$$$$$ " )
print( "_$$$_$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$_o$$$$ " )
print( "_$$$__$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$__$$$$$ " )
print( "__$$$__$'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$__o$$$$ " )
print( "__'$$o__$$__$$'$$$$$$$$$$$$$$'$$__$$_____o$$ " )
print( "____$$o$____$$__'$$'$$'$$'__$$______$___o$$ " )
print( "_____$$$o$__$____$$___$$___$$_____$$__o$ " )
print( "______'$$$$O$____$$____$$___$$ ____o$$$ " )
print( "_________'$$o$$___$$___$$___$$___o$$$ " )
print( "___________'$$$$o$o$o$o$o$o$o$o$$$$ " )
print( "______________o$$$$$$$$$$$$$$$$$o_ " )
print( "---------------------------------------------------" )
print( "����㧪� greh Ctrl.lua" )

function config(map)
	MapCanSavePos(map, 0) 					-- ����������� ��������� ������� ��������� �� ����� (1 - ��, 0 - ���)
	MapCanPK(map, 1) 						-- ����������� ��������� ������ ���������� (1 - ��, 0 - ���)
	MapCanTeam( map, 0 )					-- ����������� ��������� ������ (1 - ��, 0 - ���)
	MapCopyNum(map, 1) 						-- ���������� ����� ����� (���� �������� �����������, ����������� ������ 1)
	SingleMapCopyPlyNum(map, 60)  				-- ���������� ������� �� �����
	MapType ( map , 3 )						-- ��� �����
	MapCanStall(map , 0)					-- ����������� ��������� (1 - ��, 0 - ���)
end

function get_map_entry_pos_greh()   	-- ������������ ����� ����� (����������)
	local POS_X=707
	local POS_Y=1523
		return POS_X , POS_Y
end

function init_entry(map)
	SetMapEntryMapName(map, "garner")	-- �����, �� ������� ���������� ����� ����� �� ��� �����

	SetMapEntryTime(map, "2010/01/01/19/10", "1/0/0", "0/0/10", "0/0/35")
	--SetMapEntryTime(map, "���/�����/����/����/������", "����/����/������", "����/����/������", "����/����/������")
	--SetMapEntryTime(map, "���� ������� ������� ����� � ������ ���������� ������", "����� ����� ������� ���������� �����", "������� ������ ������", "����� ������� �������� �����")
end

function after_enter_greh( role , map_copy )
end

function before_leave_greh( role )
end

---------------------------------------------------------------------------------------------------------
------------------------------------------�����----------------------------------------------------------
---------------------------------------------------------------------------------------------------------
function map_copy_run_special_greh( map_copy ) 
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice(" � ���������� ������ ���� ��� ��������! �������� � ���������� ������: "..HowManyNoDead.." ")
	Every_5_minute = Every_5_minute+1

--��� �����(1-4 ����� ��� ������)
	if Every_5_minute == 1 then
		if HowManyNoDead <= 13 then
			local Monster2 = CreateChaEx(1159, 5600, 5600, 145, 60, map_copy )
			SetChaLifeTime(Monster2, 298050)
		else
			local Monster3 = CreateChaEx(1168, 5600, 5600, 145, 60, map_copy )
			local Monster4 = CreateChaEx(1168, 4900, 5100, 145, 60, map_copy )
			local Monster5 = CreateChaEx(1168, 6000, 5200, 145, 60, map_copy )
			local Monster6 = CreateChaEx(1168, 6500, 6100, 145, 60, map_copy )
			local Monster7 = CreateChaEx(1168, 5900, 7000, 145, 60, map_copy )
			local Monster8 = CreateChaEx(1168, 4900, 7300, 145, 60, map_copy )
			local Monster9 = CreateChaEx(1168, 3000, 6800, 145, 60, map_copy )
			local Monster10 = CreateChaEx(1168, 5500, 3700, 145, 60, map_copy )
			local Monster11 = CreateChaEx(1168, 5600, 5600, 145, 60, map_copy )
			local Monster12 = CreateChaEx(1168, 8200, 5900, 145, 60, map_copy )
			local Monster13 = CreateChaEx(1168, 5700, 8200, 145, 60, map_copy )
			local Monster14 = CreateChaEx(1168, 3900, 7600, 145, 60, map_copy )
			local Monster15 = CreateChaEx(1168, 3600, 4900, 145, 60, map_copy )
			local Monster16 = CreateChaEx(1168, 7900, 4600, 145, 60, map_copy )
			local Monster17 = CreateChaEx(1168, 7600, 7200, 145, 60, map_copy )
				SetChaLifeTime(Monster3, 298050)
				SetChaLifeTime(Monster4, 298050)
				SetChaLifeTime(Monster5, 298050)
				SetChaLifeTime(Monster6, 298050)
				SetChaLifeTime(Monster7, 298050)
				SetChaLifeTime(Monster8, 298050)
				SetChaLifeTime(Monster9, 298050)
				SetChaLifeTime(Monster10, 298050)
				SetChaLifeTime(Monster11, 298050)
				SetChaLifeTime(Monster12, 298050)
				SetChaLifeTime(Monster13, 298050)
				SetChaLifeTime(Monster14, 298050)
				SetChaLifeTime(Monster15, 298050)
				SetChaLifeTime(Monster16, 298050)
				SetChaLifeTime(Monster17, 298050)
		end
	end
	if Every_5_minute == 2 then
		if HowManyNoDead <= 10 then
			local Monster2 = CreateChaEx(1160, 5600, 5600, 145, 60, map_copy )
			SetChaLifeTime(Monster2, 298050)
		else
			local Monster3 = CreateChaEx(1168, 5600, 5600, 145, 60, map_copy )
			local Monster4 = CreateChaEx(1168, 4900, 5100, 145, 60, map_copy )
			local Monster5 = CreateChaEx(1168, 6000, 5200, 145, 60, map_copy )
			local Monster6 = CreateChaEx(1168, 6500, 6100, 145, 60, map_copy )
			local Monster7 = CreateChaEx(1168, 5900, 7000, 145, 60, map_copy )
			local Monster8 = CreateChaEx(1168, 4900, 7300, 145, 60, map_copy )
			local Monster9 = CreateChaEx(1168, 3000, 6800, 145, 60, map_copy )
			local Monster10 = CreateChaEx(1168, 5500, 3700, 145, 60, map_copy )
			local Monster11 = CreateChaEx(1168, 5600, 5600, 145, 60, map_copy )
			local Monster12 = CreateChaEx(1168, 8200, 5900, 145, 60, map_copy )
			local Monster13 = CreateChaEx(1168, 5700, 8200, 145, 60, map_copy )
			local Monster14 = CreateChaEx(1168, 3900, 7600, 145, 60, map_copy )
			local Monster15 = CreateChaEx(1168, 3600, 4900, 145, 60, map_copy )
			local Monster16 = CreateChaEx(1168, 7900, 4600, 145, 60, map_copy )
			local Monster17 = CreateChaEx(1168, 7600, 7200, 145, 60, map_copy )
				SetChaLifeTime(Monster3, 298050)
				SetChaLifeTime(Monster4, 298050)
				SetChaLifeTime(Monster5, 298050)
				SetChaLifeTime(Monster6, 298050)
				SetChaLifeTime(Monster7, 298050)
				SetChaLifeTime(Monster8, 298050)
				SetChaLifeTime(Monster9, 298050)
				SetChaLifeTime(Monster10, 298050)
				SetChaLifeTime(Monster11, 298050)
				SetChaLifeTime(Monster12, 298050)
				SetChaLifeTime(Monster13, 298050)
				SetChaLifeTime(Monster14, 298050)
				SetChaLifeTime(Monster15, 298050)
				SetChaLifeTime(Monster16, 298050)
				SetChaLifeTime(Monster17, 298050)
		end	
	end
	if Every_5_minute == 3 then
		if HowManyNoDead <= 7 then
			local Monster2 = CreateChaEx(1169, 5600, 5600, 145, 60, map_copy )
			SetChaLifeTime(Monster2, 298050)
		else
			local Monster3 = CreateChaEx(1168, 5600, 5600, 145, 60, map_copy )
			local Monster4 = CreateChaEx(1168, 4900, 5100, 145, 60, map_copy )
			local Monster5 = CreateChaEx(1168, 6000, 5200, 145, 60, map_copy )
			local Monster6 = CreateChaEx(1168, 6500, 6100, 145, 60, map_copy )
			local Monster7 = CreateChaEx(1168, 5900, 7000, 145, 60, map_copy )
			local Monster8 = CreateChaEx(1168, 4900, 7300, 145, 60, map_copy )
			local Monster9 = CreateChaEx(1168, 3000, 6800, 145, 60, map_copy )
			local Monster10 = CreateChaEx(1168, 5500, 3700, 145, 60, map_copy )
			local Monster11 = CreateChaEx(1168, 5600, 5600, 145, 60, map_copy )
			local Monster12 = CreateChaEx(1168, 8200, 5900, 145, 60, map_copy )
			local Monster13 = CreateChaEx(1168, 5700, 8200, 145, 60, map_copy )
			local Monster14 = CreateChaEx(1168, 3900, 7600, 145, 60, map_copy )
			local Monster15 = CreateChaEx(1168, 3600, 4900, 145, 60, map_copy )
			local Monster16 = CreateChaEx(1168, 7900, 4600, 145, 60, map_copy )
			local Monster17 = CreateChaEx(1168, 7600, 7200, 145, 60, map_copy )
				SetChaLifeTime(Monster3, 298050)
				SetChaLifeTime(Monster4, 298050)
				SetChaLifeTime(Monster5, 298050)
				SetChaLifeTime(Monster6, 298050)
				SetChaLifeTime(Monster7, 298050)
				SetChaLifeTime(Monster8, 298050)
				SetChaLifeTime(Monster9, 298050)
				SetChaLifeTime(Monster10, 298050)
				SetChaLifeTime(Monster11, 298050)
				SetChaLifeTime(Monster12, 298050)
				SetChaLifeTime(Monster13, 298050)
				SetChaLifeTime(Monster14, 298050)
				SetChaLifeTime(Monster15, 298050)
				SetChaLifeTime(Monster16, 298050)
				SetChaLifeTime(Monster17, 298050)
		end	
	end
	if Every_5_minute == 4 then
		if HowManyNoDead <= 5 then
			local Monster2 = CreateChaEx(1167, 5600, 5600, 145, 60, map_copy )
			SetChaLifeTime(Monster2, 298050)
		else
			local Monster3 = CreateChaEx(1168, 5600, 5600, 145, 60, map_copy )
			local Monster4 = CreateChaEx(1168, 4900, 5100, 145, 60, map_copy )
			local Monster5 = CreateChaEx(1168, 6000, 5200, 145, 60, map_copy )
			local Monster6 = CreateChaEx(1168, 6500, 6100, 145, 60, map_copy )
			local Monster7 = CreateChaEx(1168, 5900, 7000, 145, 60, map_copy )
			local Monster8 = CreateChaEx(1168, 4900, 7300, 145, 60, map_copy )
			local Monster9 = CreateChaEx(1168, 3000, 6800, 145, 60, map_copy )
			local Monster10 = CreateChaEx(1168, 5500, 3700, 145, 60, map_copy )
			local Monster11 = CreateChaEx(1168, 5600, 5600, 145, 60, map_copy )
			local Monster12 = CreateChaEx(1168, 8200, 5900, 145, 60, map_copy )
			local Monster13 = CreateChaEx(1168, 5700, 8200, 145, 60, map_copy )
			local Monster14 = CreateChaEx(1168, 3900, 7600, 145, 60, map_copy )
			local Monster15 = CreateChaEx(1168, 3600, 4900, 145, 60, map_copy )
			local Monster16 = CreateChaEx(1168, 7900, 4600, 145, 60, map_copy )
			local Monster17 = CreateChaEx(1168, 7600, 7200, 145, 60, map_copy )
				SetChaLifeTime(Monster3, 298050)
				SetChaLifeTime(Monster4, 298050)
				SetChaLifeTime(Monster5, 298050)
				SetChaLifeTime(Monster6, 298050)
				SetChaLifeTime(Monster7, 298050)
				SetChaLifeTime(Monster8, 298050)
				SetChaLifeTime(Monster9, 298050)
				SetChaLifeTime(Monster10, 298050)
				SetChaLifeTime(Monster11, 298050)
				SetChaLifeTime(Monster12, 298050)
				SetChaLifeTime(Monster13, 298050)
				SetChaLifeTime(Monster14, 298050)
				SetChaLifeTime(Monster15, 298050)
				SetChaLifeTime(Monster16, 298050)
				SetChaLifeTime(Monster17, 298050)
		end
	end
---------------------------------------------------------------------------------------------------------
-- 1 �����-----------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
	if Every_5_minute == 5 then
	end	
---------------------------------------------------------------------------------------------------------
-- 5 �����-----------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
	if Every_5_minute == 6 then
	end	
---------------------------------------------------------------------------------------------------------
-- 6 �����-----------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
	if Every_5_minute == 7 then
	end
---------------------------------------------------------------------------------------------------------
-----------------------------------------����� ������----------------------------------------------------
---------------------------------------------------------------------------------------------------------
end

-- ������� ����������� ���� ��� � 5 ������
function map_run_greh( map )
end

function map_copy_before_close_greh( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItemgreh")
	end

	How_Many_Active = 0				-- �������� ���������� �� �����
	Money_all = 1000000				-- ����� ���������� ������ � �������� �����
	Every_5_minute = 0
end

-- ������� �������� �����
function map_copy_close_greh( map_copy )
	ClearAllSubMapCha(map_copy)
end

-- ������� ������ �����, ������������ ������ �������  map_copy_before_close_07xmas3()
function GiveSpecItemgreh( role )
	if How_Many_Active == 1 then
		AddMoney ( role , 0 , Money_all )
		return
	else
		local Money_greh = math.floor (Money_all/How_Many_Active)
		AddMoney ( role , 0 , Money_greh )
		return
	end
end

function map_copy_run_greh( map_copy )
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	if HowManyNoDead > 0 then
		DealAllActivePlayerInMap(map_copy,"kick")
	end
end

function kick(role)
	if IsInTeam(role) == 1 then
		MoveCity(role, "Island Prison")
		SystemNotice(role, "\194 \200\241\234\243\239\235\229\237\232\232 \196\229\236\238\237\224 \237\229\235\252\231\255 \225\251\242\252 \226 \238\242\240\255\228\229 \241 \228\240\243\227\232\236\232 \232\227\240\238\234\224\236\232! \194\251 \234\232\234\237\243\242\251 \241 \234\224\240\242\251!")
		--SystemNotice(role, "� ���������� ������ ������ ���� � ������ � ������� ��������! �� ������� � �����!")
	end
end
--made by xxPastuhxx--
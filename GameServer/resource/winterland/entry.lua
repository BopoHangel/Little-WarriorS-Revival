-- ����� ������� ������ ������������� ��������� �����, ����� ��� after_destroy_entry_winterland
-- ���������� ����� �������� � ������ ���������� 255

function config_entry(entry) 
    	SetMapEntryEntiID(entry, 2492,4)
end 

-- ������� ����� �������� �������
function after_create_entry(entry) 
    	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	local EntryName = "\199\232\236\237\232\229 \238\241\242\240\238\226\224"
 	  	--local EntryName = "������ �������"
   	SetMapEntryEventName( entry, EntryName )

    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("\206\225\250\255\226\235\229\237\232\229: \209\238\227\235\224\241\237\238 \239\240\238\227\237\238\231\243 \239\238\227\238\228\251 \226 \194\229\235\232\234\238\236 \209\232\237\229\236 \238\234\229\224\237\229 \226 \242\238\247\234\229 ["..posx..","..posy.."] \226\238\231\237\232\234\235\224 \227\232\227\224\237\242\241\234\224\255 \226\238\240\238\237\234\224. \206\237\224 \231\224\241\224\241\251\226\224\229\242 \226\241\229 \239\240\238\245\238\228\255\249\232\229 \236\232\236\238 \234\238\240\224\225\235\232. \200\227\240\238\234\232 \227\238\226\238\240\255\242, \247\242\238 \239\240\238\233\228\255 \247\229\240\229\231 \226\238\240\238\237\234\243 \238\234\224\231\251\226\224\254\242\241\255 \237\224 [\199\232\236\237\232\245 \238\241\242\240\238\226\224\245].")
		--Notice("����������: �������� �������� ������ � ������� ����� ������ � ����� ["..posx..","..posy.."] �������� ���������� �������. ��� ���������� ��� ���������� ���� �������. ������ �������, ��� ������ ����� ������� ����������� �� [������ ��������].")
end

-- ������� ����� �������� �������
function after_destroy_entry_winterland(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice(" \206\225\250\255\226\235\229\237\232\229: \194 \242\238\247\234\229 ["..posx..","..posy.."] \226 \209\232\237\229\236 \238\234\229\224\237\229 \232\241\247\229\231\235\224 \226\238\240\238\237\234\224 \226\229\228\243\249\224\255 \237\224 [\199\232\236\237\232\229 \238\241\242\240\238\226\224]. \194\231\228\238\245\237\232\242\229 \241 \238\225\235\229\227\247\229\237\232\229\236!" )
		--Notice(" ����������: � ����� ["..posx..","..posy.."] � ����� ������ ������� ������� ������� �� [������ �������]. ��������� � �����������!" ) 
end

-- ������� ����� ��������� ���������� �� �����
function after_player_login_winterland(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "\206\225\250\255\226\235\229\237\232\229: \209\238\227\235\224\241\237\238 \239\240\238\227\237\238\231\243 \239\238\227\238\228\251 \226 \194\229\235\232\234\238\236 \209\232\237\229\236 \238\234\229\224\237\229 \226 \242\238\247\234\229 ["..posx..","..posy.."] \226\238\231\237\232\234\235\224 \227\232\227\224\237\242\241\234\224\255 \226\238\240\238\237\234\224. \206\237\224 \231\224\241\224\241\251\226\224\229\242 \226\241\229 \239\240\238\245\238\228\255\249\232\229 \236\232\236\238 \234\238\240\224\225\235\232. \200\227\240\238\234\232 \227\238\226\238\240\255\242, \247\242\238 \239\240\238\233\228\255 \247\229\240\229\231 \226\238\240\238\237\234\243 \238\234\224\231\251\226\224\254\242\241\255 \237\224 [\199\232\236\237\232\245 \238\241\242\240\238\226\224\245].")
		--ChaNotice(player_name, "����������: �������� �������� ������ � ������� ����� ������ � ����� ["..posx..","..posy.."] �������� ���������� �������. ��� ���������� ��� ���������� ���� �������. ������ �������, ��� ������ ����� ������� ����������� �� [������ ��������].")
end

-- ������� ��������� ����� �� �������� ����� �� �����
-- ���������� 1 ���� ��, 0 ���� ���
function check_can_enter_winterland(role, copy_mgr)
	local Cha = TurnToCha(role)
  
	if Lv(Cha) >=40 and Lv(Cha) <=200 then
		local Num = CheckBagItem(Cha, 2438)					-- ������� ������

		if Num >= 1 then
			return 1
		else
			SystemNotice(role, "\194\251 \237\229 \241\236\238\230\229\242\229 \239\240\238\233\242\232 \247\229\240\229\231 \226\238\240\238\237\234\243 \225\229\231 \199\238\235\238\242\238\233 \236\238\237\229\242\251!")
				--SystemNotice(role, "�� �� ������� ������ ����� ������� ��� ������� ������!")
			return 0
		end
		
	else
		SystemNotice(role, "\205\224 \199\232\236\237\232\229 \238\241\242\240\238\226\224 \236\238\227\243\242 \239\238\239\224\241\242\252 \242\238\235\252\234\238 \232\227\240\238\234\232, \228\232\241\242\232\227\248\232\229 40 \243\240\238\226\237\255!")
			--SystemNotice(role, "�� ������ ������� ����� ������� ������ ������, ��������� 40 ������!")
		return 0    
	end
end

-- ������� ����� �� �����
function begin_enter_winterland(role, copy_mgr) 
	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 2438, 1)

	if Dbag == 1 then
		SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\199\232\236\237\232\229 \238\241\242\240\238\226\224]") 
			--SystemNotice(role,"�� ����� � [������ �������]") 
		MoveCity(role, "\206\241\242\240\238\226\224 \199\232\236\251")

	else
		SystemNotice(role, "\205\229 \243\228\224\235\238\241\252 \239\238\235\243\247\232\242\252 \199\238\235\238\242\243\254 \236\238\237\229\242\243!")
			--SystemNotice(role, "�� ������� �������� ������� ������!")
	end


end
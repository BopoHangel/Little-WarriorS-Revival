-- ����� ������� ������ ������������� ��������� �����, ����� ��� after_destroy_entry_darkswamp
-- ���������� ����� �������� � ������ ���������� 255
function config_entry(entry) 
    	SetMapEntryEntiID(entry, 2492,4) 
end 

function after_create_entry(entry) 
    	local copy_mgr = GetMapEntryCopyObj(entry, 0) 

    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("\206\225\250\255\226\235\229\237\232\229: \194 \204\224\227\232\247\229\241\234\238\236 \238\234\229\224\237\229 \226 \242\238\247\234\229 ["..posx..","..posy.."] \239\238\255\226\232\235\241\255 \239\238\240\242\224\235 \226\229\228\243\249\232\233 \226 [\210\229\236\237\243\254 \210\238\239\252].") 
    		--Notice("����������: � ���������� ������ � ����� ["..posx..","..posy.."] �������� ������ ������� � [������ ����].") 
end

function after_destroy_entry_darkswamp(entry)
    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("\206\225\250\255\226\235\229\237\232\229: \207\238\240\242\224\235 \226 \204\224\227\232\247\229\241\234\238\236 \238\234\229\224\237\229 ["..posx..","..posy.."] \226\229\228\243\249\232\233 \226 [\210\229\236\237\243\254 \210\238\239\252] \232\241\247\229\231! \205\229 \231\224\225\251\226\224\233\242\229 \247\232\242\224\242\252 \238\225\250\255\226\235\229\237\232\255!")
  	  	--Notice("����������: ������ � ���������� ������ ["..posx..","..posy.."] ������� � [������ ����] �����! �� ��������� ������ ����������!") 
end

function after_player_login_darkswamp(entry, player_name)
    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "\206\225\250\255\226\235\229\237\232\229: \194 \204\224\227\232\247\229\241\234\238\236 \238\234\229\224\237\229 \226 \242\238\247\234\229 ["..posx..","..posy.."] \239\238\255\226\232\235\241\255 \239\238\240\242\224\235 \226\229\228\243\249\232\233 \226 [\210\229\236\237\243\254 \210\238\239\252].") 
    		--ChaNotice(player_name, "����������: � ���������� ������ � ����� ["..posx..","..posy.."] �������� ������ ������� � [������ ����].") 
end

function check_can_enter_darkswamp( role, copy_mgr )
    	local Cha = TurnToCha(role)
  
	if Lv(Cha) >=40 and Lv(Cha) <=55 then
		return 1
	else
		SystemNotice(role, "\194 \210\229\236\237\243\254 \210\238\239\252 \236\238\227\243\242 \226\238\233\242\232 \242\238\235\252\234\238 \232\227\240\238\234\232 \241 40 \239\238 55 \243\240\238\226\229\237\232.")
			--SystemNotice(role, "� ������ ���� ����� ����� ������ ������ � 40 �� 55 �������.")
		return 0
	end
end

function begin_enter_darkswamp(role, copy_mgr) 
	SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\210\229\236\237\243\254 \210\238\239\252]")
		--SystemNotice(role,"�� ����� � [������ ����]") 
	MoveCity(role, "\210\229\236\237\224\255 \242\238\239\252")
end
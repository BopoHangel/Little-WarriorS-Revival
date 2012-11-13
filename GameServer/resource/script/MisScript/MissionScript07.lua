--------------------------------------------------------------------------
--									--
--									--
--		NPCScript07.lua Created by mdw Team	      --
--									--
--							--
--------------------------------------------------------------------------
print( "����㧪� MissionScript07.lua" )


----------------------------

	DefineMission( 900, "\209\238\240\229\226\237\238\226\224\237\232\229 \244\229\233", 900)--Pet Event--��������� �����

	MisBeginTalk( "<t>������ ������� �������? �������� ��� ����.<n><t>������� �� ������ � ������ 10 ��� ���������.<n><t>��� ��� ���� ������� ��������� �������." )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(HasItem,6954,1)-- 
	MisBeginCondition(NoMission, 900)
	MisBeginAction(AddMission, 900)
	MisBeginAction(AddTrigger, 9001, TE_KILL, 748, 10 )
	MisCancelAction(ClearMission, 900)

	MisNeed(MIS_NEED_DESP, " ������ 10 ��� ���������� " )	
	MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)
	 
	MisHelpTalk( "<t>����� � ��������� �� ���������!" )	
	MisResultTalk( "<t>�� �������!<n><t>���������� � ���� �������!" )
	MisResultCondition(HasMission, 900)
	MisResultCondition(HasItem,0844,1)-- ���������� �����������
	MisResultCondition(HasFlag, 900, 19 )
	MisResultCondition(HasItem,6954,1)-- �������� ����
	MisResultAction(TakeItem, 0844,1)
	MisResultAction(ClearMission,900)
	MisResultAction(GiveItem, 679, 2, 4)--2 ���� �����
	MisResultBagNeed(1)
		
	InitTrigger() 
	TriggerCondition( 1, IsMonster, 748 )	
	TriggerAction( 1, AddNextFlag, 900, 10, 10 )
	RegCurTrigger(9001)

----------------------------

	DefineMission(901,"\209\238\240\229\226\237\238\226\224\237\232\229 \244\229\233",901)--Pet Event--

	MisBeginTalk( "<t>������ �������? ����� �� ������ ������ ������ ��� ����. � ��� ��� ���� �������� �������." )

	MisBeginCondition(LvCheck, "<", 45 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(NoMission,901)
	MisBeginAction(AddMission, 901) 
	MisBeginAction(AddTrigger, 9011, TE_KILL, 103, 20)--������ ���
	MisBeginAction(AddTrigger, 9012, TE_KILL, 70, 20)--��������� ����������
	MisBeginAction(AddTrigger, 9013, TE_KILL, 253, 10)--���������
	MisBeginAction(AddTrigger, 9014, TE_KILL, 85, 10)--������
	MisBeginAction(AddTrigger, 9015, TE_KILL, 76, 10)--�������-�������
	MisCancelAction(ClearMission, 901)

	MisNeed(MIS_NEED_DESP, " �������� � <b(2272, 2700)> ����� <r20 ������ �����>, <r20 ��������� ������������>, <r10 ��������>, <r10 ��������>, <r10 �������-��������>.")
	MisNeed(MIS_NEED_KILL, 103, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 70, 20, 30, 20)
	MisNeed(MIS_NEED_KILL, 253, 10, 50, 10)
	MisNeed(MIS_NEED_KILL, 85, 10, 60, 10)
	MisNeed(MIS_NEED_KILL, 76, 10, 70, 10)

	MisHelpTalk( "<t> ������������, ������ ����� ������ " )
	MisResultTalk( "<t>�� �������!<n><t>������ ������� �������, � ���� ���������� ������ " )
	MisResultCondition(HasMission, 901)
	MisResultCondition(HasFlag, 901, 29)
	MisResultCondition(HasFlag, 901, 49)
	MisResultCondition(HasFlag, 901, 59)
	MisResultCondition(HasFlag, 901, 69)
	MisResultCondition(HasFlag, 901, 79)
	MisResultCondition(HasItem, 0844, 1)
	MisResultAction(TakeItem, 0844, 1)
	MisResultAction(ClearMission, 901)
	MisResultAction(GiveItem, 1852, 1, 4)--��������� ����
	MisResultBagNeed(1) 

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 901, 10, 20 )
	RegCurTrigger(9011)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 70 )	
	TriggerAction( 1, AddNextFlag, 901, 30, 20 )
	RegCurTrigger(9012)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 253 )	
	TriggerAction( 1, AddNextFlag, 901, 50, 10 )
	RegCurTrigger(9013)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 85 )	
	TriggerAction( 1, AddNextFlag, 901, 60, 10 )
	RegCurTrigger(9014)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 76 )	
	TriggerAction( 1, AddNextFlag, 901, 70, 10 )
	RegCurTrigger(9015)


----------------------------

	DefineMission( 902, "\215\242\238\225\251 \239\238\225\229\228\232\242\252 \231\235\238 \237\224 \196\240\224\234\238\237\252\229\236 \203\238\228\238\247\237\238\236 \244\229\241\242\232\226\224\235\229, \232\241\239\238\235\252\231\243\233 \234\232\242\224\233\241\234\243\254 \202\235\229\246\234\243, \241\229\240\243 \232 \205\229\225\229\241\237\251\233 \234\235\229\226\229\240", 902 )--Use Chinese Dumpling, Sulphur and Ether Clover on Dragon Boat festival to ward evil

	MisBeginTalk( "<t>���� ���, � ��� ����, �� ��� ����������� ������� �� ������� ����, ��� ����� ������� ����������� ��������, ��� �� ������������� ��? �� ��� ��������?" )

	MisBeginCondition(LvCheck, ">",15  )
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoRecord,902)
	MisBeginAction(AddMission,902)
	MisBeginAction(AddTrigger, 9021, TE_GETITEM, 3116, 10 )		--���������� �����
	MisBeginAction(AddTrigger, 9022, TE_GETITEM, 3131, 10 )		--����-�����
	MisBeginAction(AddTrigger, 9023, TE_GETITEM, 4419, 5 )		--������������� ���
	MisCancelAction(ClearMission, 902)

	MisNeed(MIS_NEED_DESP, " �������� <p���� ��> ������� <r10 ���������� �������>, <r10 ���� �������>, <r5 �������������� ̸��>." )
	MisNeed(MIS_NEED_ITEM, 3116, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3131, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4419, 5, 30, 5)

	MisHelpTalk( "<t>���������." )
	MisResultTalk( "<t>�� ��������� �����, ������� ��� - ������ �������." )
	MisResultCondition(HasMission, 902)
	MisResultCondition(NoRecord,902)
	MisResultCondition(HasItem, 3116, 10)
	MisResultCondition(HasItem, 3131, 10 )
	MisResultCondition(HasItem, 4419, 5 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(TakeItem, 3131, 10 )
	MisResultAction(TakeItem, 4419, 5 )
	MisResultAction(ClearMission, 902)
	MisResultAction(SetRecord, 902 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 902, 10, 10 )
	RegCurTrigger( 9021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3131)	
	TriggerAction( 1, AddNextFlag, 902, 20, 10 )
	RegCurTrigger( 9022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4419)	
	TriggerAction( 1, AddNextFlag, 902, 30, 5 )
	RegCurTrigger( 9023 )

	-------------------------------------------------- 

	DefineMission( 903, "\215\242\238\225\251 \239\238\225\229\228\232\242\252 \231\235\238 \237\224 \196\240\224\234\238\237\252\229\236 \203\238\228\238\247\237\238\236 \244\229\241\242\232\226\224\235\229, \232\241\239\238\235\252\231\243\233 \234\232\242\224\233\241\234\243\254 \202\235\229\246\234\243, \241\229\240\243 \232 \205\229\225\229\241\237\251\233 \234\235\229\226\229\240", 903 )
	
	MisBeginTalk( "<t>����� ���� �� ����������, �� �� ������ ��� ��� ���� ��� ��� �������?" )
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoMission,903)
	MisBeginCondition(HasRecord,902)
	MisBeginCondition(NoRecord,903)
	MisBeginAction(AddMission,903)
	MisBeginAction(AddTrigger, 9031, TE_GETITEM, 1779, 10 )		--������ 
	MisBeginAction(AddTrigger, 9032, TE_GETITEM, 1584, 20 )		--����������� ��� 
	MisBeginAction(AddTrigger, 9033, TE_GETITEM, 1650, 10 )		--����� ����
	MisCancelAction(ClearMission, 903)

	MisNeed(MIS_NEED_DESP, " ��������� <r10 ��������>, <r20 ����������� �����> � <r10 ����� ����>." )
	MisNeed(MIS_NEED_ITEM, 1779, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1584, 20, 20, 20)
	MisNeed(MIS_NEED_ITEM, 1650, 10, 40, 10)

	MisHelpTalk( "<t>������������ " )
	MisResultTalk( "<t>������� ��� �����." )
	MisResultCondition(HasMission, 903)
	MisResultCondition(NoRecord,903)
	MisResultCondition(HasItem, 1779, 10)
	MisResultCondition(HasItem, 1584, 20 )
	MisResultCondition(HasItem, 1650, 10 )
	MisResultAction(TakeItem, 1779, 10 )
	MisResultAction(TakeItem, 1584, 20 )
	MisResultAction(TakeItem, 1650, 10 )
	MisResultAction(ClearMission, 903)
	MisResultAction(SetRecord, 903 )


	InitTrigger()
	TriggerCondition( 1, IsItem, 1779)	
	TriggerAction( 1, AddNextFlag, 903, 10, 10 )
	RegCurTrigger( 9031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1584)	
	TriggerAction( 1, AddNextFlag, 903, 20, 20 )
	RegCurTrigger( 9032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 903, 40, 10 )
	RegCurTrigger( 9033 )


--------------------------------------------------

	DefineMission( 904, "\215\242\238\225\251 \239\238\225\229\228\232\242\252 \231\235\238 \237\224 \196\240\224\234\238\237\252\229\236 \203\238\228\238\247\237\238\236 \244\229\241\242\232\226\224\235\229, \232\241\239\238\235\252\231\243\233 \234\232\242\224\233\241\234\243\254 \202\235\229\246\234\243, \241\229\240\243 \232 \205\229\225\229\241\237\251\233 \234\235\229\226\229\240", 904 )

	MisBeginTalk( "<t>�������� �������, � ����� ����� ��� ��� �� �������� ��� ���� �����, �� �� ������ ��� ������?" )

	MisBeginCondition(NoMission,904)
	MisBeginCondition(NoRecord,904)
	MisBeginCondition(HasRecord,903)
	MisBeginAction(AddMission,904)
	MisBeginAction(AddTrigger, 9041, TE_GETITEM, 3129, 5 )		--�������� �����
	MisBeginAction(AddTrigger, 9042, TE_GETITEM, 1681, 5 )		--�����
	MisCancelAction(ClearMission, 904)

	MisNeed(MIS_NEED_DESP, " ��������� <r5 �������� �����> � <r5 ���>." )
	MisNeed(MIS_NEED_ITEM, 3129, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1681, 5, 20, 5)

	MisHelpTalk( "<t>�� ������������, ��� �� ����� �����!" )
	MisResultTalk( "<t>�������� �������, ��� � ������, ������ ������ ���." )
	MisResultCondition(HasMission, 904)
	MisResultCondition(NoRecord,904)
	MisResultCondition(HasItem, 3129, 5)
	MisResultCondition(HasItem, 1681, 5 )
	MisResultAction(TakeItem, 3129, 5 )
	MisResultAction(TakeItem, 1681, 5 )
	MisResultAction(GiveItem, 263, 3, 4)--������
	MisResultAction(GiveItem, 264, 3, 4)--��������� ����
	MisResultAction(GiveItem, 265, 3 ,4)--�������� ������
	MisResultAction(ClearMission, 904)
	MisResultAction(SetRecord,  904 )
	MisResultBagNeed(3)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 904, 10, 5 )
	RegCurTrigger( 9041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1681)	
	TriggerAction( 1, AddNextFlag, 904, 20, 5 )
	RegCurTrigger( 9042 )
	 
  --------------------------------------------------

	DefineMission( 905, "\222\225\232\235\229\233 \239\232\240\224\242\241\234\238\227\238 \234\238\240\238\235\255", 905 )--Pirate King Anniversary
	MisBeginTalk( "<t>\205\232 \242\238\235\252\234\238 \196\240\243\237\234\237\224\233 \235\254\225\232\242 \239\232\240\238\230\234\232 \193\224\225\243\235\232 \193\229\235\228\232, \207\232\240\224\242\241\234\232\233 \202\238\240\238\235\252 \208\238\235\224\237\228 \242\238\230\229 \235\254\225\232\242 \232\245! \213\238\228\232\242 \236\238\235\226\224, \247\242\238 \229\241\235\232 \241\234\243\248\224\242\252 \229\191 \239\232\240\238\230\238\234, \242\238 \239\238\228\237\232\236\229\242\241\255 3 \238\247\234\224 \237\224\226\251\234\224! \200 \237\229 \243\228\232\226\232\242\229\235\252\237\238, \239\232\240\224\242\251 \237\229 \232\236\229\254\242 \247\243\226\241\242\226\224 \236\229\240\251.<n><t>\192 \194\251, \194\251 \237\229 \230\229\235\224\229\242\229 \239\238\239\240\238\225\238\226\224\242\252 \239\232\240\238\230\238\234? \205\232 \243 \234\224\230\228\238\227\238 \226\251\239\224\228\224\229\242 \242\224\234\238\233 \241\247\224\241\242\235\232\226\251\233 \241\235\243\247\224\233. \194\224\236 \237\243\230\237\238 \241  \"\208\224\241\239\232\241\234\238\233 \237\224 \239\232\240\238\230\238\234\"  \239\238\233\242\232 \234 \"\193\224\225\243\235\229 \193\229\235\228\232\" \232 \238\237\224 \194\224\241 \238\225\255\231\224\242\229\235\252\237\238 \243\227\238\241\242\232\242." )
--	MisBeginTalk( "<t>�� ������ �������� ����� ������� ������ �����, ��������� ������ ������ ���� ����� ��! ����� �����, ��� ���� ������� � �������, �� ���������� 3 ���� ������! � �� �����������, ������ �� ����� ������� ����.<n><t>� ��, �� �� ������� ����������� �������? �� � ������� �������� ����� ���������� ������. ��� ����� �  \"��������� �� �������\"  ����� � \"������ �����\" � ��� ��� ����������� �������." )
	MisBeginCondition(NoMission,905)
	MisBeginCondition(HasItem, 1097, 1 )
	MisBeginCondition(NoRecord,905)
	MisBeginAction(AddMission,905)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ������ " )

	MisNeed(MIS_NEED_DESP, " ���������� � ������� ����� " )
	MisHelpTalk( "<t> �� ����� ��� ������ ��� �����!" )
	
	MisResultCondition(AlwaysFailure )


	 -------------------------------------------------- 

	DefineMission ( 906, "\222\225\232\235\229\233 \239\232\240\224\242\241\234\238\227\238 \234\238\240\238\235\255", 905, COMPLETE_SHOW)
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>\207\240\232\226\229\242! \202\242\238 \194\224\236 \236\229\237\255 \239\238\240\229\234\238\236\229\237\228\238\226\224\235? \213\236... \206\237 \235\254\225\232\242 \239\238\235\224\234\238\236\232\242\252\241\255 \236\238\229\233 \226\251\239\229\247\234\238\233. \213\224 \245\224. \196\224\226\224\233\242\229 \"\208\224\241\239\232\241\234\243 \237\224 \239\232\240\238\227\". \194\238\242 - \226\224\248 \239\232\240\238\227." )
--	MisResultTalk( "<t>������! ��� ��� ���� ��������������? ��... �� ����� ������������ ���� ��������. �� ��. ������� \"�������� �� �����\". ��� - ��� �����." )
	MisResultCondition(HasMission,905)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(ClearMission, 905 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 3338, 1, 4 )
	MisResultAction(SetRecord, 905 )
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ������ " )
	MisBeginBagNeed(1)	

	-------------------------------

	DefineMission( 907, "\203\254\225\238\226\252 \234 \235\243\237\237\251\236 \239\232\240\238\227\224\236", 906 )
	
	MisBeginTalk( "<t>� ����� ������ ��� ��! � ����� ���, ����������, �������� ��� �� �����. � �� ���� ��� ���. � ����, ��� ��� ���� �  (1333 558). ����� �� ������������ �� ��?" )
	MisBeginCondition(NoRecord, 913 )
	MisBeginCondition(NoMission, 906 )
	MisBeginAction(AddMission, 906 )
	MisCancelAction(ClearMission, 906)
		
	MisNeed(MIS_NEED_DESP, " ������� ������� � ������� (1333, 558)." )
	MisHelpTalk( "<t>������� ������� � ������� (1333, 558)." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 908, "\207\232\241\252\236\238 \214\226\229\242\238\247\234\224", 906, COMPLETE_SHOW )--Search for Flower
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� - ���� �������� ����? � - ���� ������, ���, ������� �� �����!" )
	MisResultCondition(HasMission, 906)
	MisBeginCondition(NoRecord, 913)
	MisResultAction(ClearMission, 906)
	MisResultAction(SetRecord, 913)

	----------------------------------

	DefineMission( 909, "\206\242\226\238\240\238\242\237\238\229 \231\229\235\252\229", 907 )

	MisBeginTalk( "<t>������ � ������ ��� ������? ��� �������� ���� ��� ��� ������ ������ ��� ������������?" )
	MisBeginCondition(HasRecord,913)
	MisBeginCondition(NoMission,907)
	MisBeginCondition(NoRecord,907)
	MisBeginAction(AddMission,907)
	MisBeginAction(AddTrigger, 9071, TE_GETITEM, 3915, 10)--������ �����
	MisCancelAction(ClearMission, 907)
	

	MisNeed(MIS_NEED_DESP, " �������� �������� ��� ��� ������ � �������, ��������� 10 ������ �������." )
	MisNeed(MIS_NEED_ITEM, 3915, 10, 10, 10)

	MisHelpTalk( "<t> ��������� ��� 10 ������ �������!" )
	MisResultTalk( "<t>������� ��� �������, � ��� ����!" ) 
	
	MisResultCondition(HasMission, 907)
	MisResultCondition(NoRecord,907)
	MisResultCondition(HasItem, 3915, 10)
	MisResultAction(TakeItem, 3915, 10 )
	MisResultAction(ClearMission, 907)
	MisResultAction(SetRecord, 907 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3915)	
	TriggerAction( 1, AddNextFlag, 907, 10, 10 )
	RegCurTrigger( 9071 )
	
-------------------------------------------------------

	DefineMission( 910, "\207\240\232\227\238\242\238\226\232\242\252 \206\242\226\238\240\238\242\237\238\229 \231\229\235\252\229", 908 )
	
	MisBeginTalk( "<t>�� ��� �� � �����, �� ������ �� ���������, � � ������ ���� ��� ���������� ������, � ���� ��� �������, � ��� ���� ���������� ��� ��� ����� �� ��������. �� ����� ������� ��� ������ �������� ������, ��� ������ ��������, ���� ��� ��� �� ���������, ��������� ��� ��� ������." )

	MisBeginCondition(HasRecord, 907)
	MisBeginCondition(NoRecord, 908)
	MisBeginCondition(NoMission, 908)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 908)
	MisBeginAction(GiveItem, 1005,1,4)--������

	MisHelpTalk( "<t>�������� ������ � ������ (917, 3572)." )
	MisNeed(MIS_NEED_DESP, " �������� ������ � ������ (917, 3572)." )

	MisCancelAction(ClearMission, 908)

	MisResultCondition(AlwaysFailure)




-----------------------------------

	DefineMission( 911, "\202\243\239\232\242\252 \205\229\244\240\232\242\238\226\251\233 \239\243\231\251\240\229\234 \225\243\242\251\235\234\224", 908, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk( "<t>���? ��� -  ���....������ �� ���?<n><t>�� ������ ����������, ��� � ��: ��� �������, ����� �� ���������� ��� ������, � ���� ��� �� ����. � �� ���� ��� �� �� ��������������. � ���������� ����� �� ��� ������, ��� �� �� �� ����� ���������� ����, ��� ���� ������� �������. � ���� � ��� ����� ���� �������: �� ��������� �� ����.<n><t>�������, � ��� ��� ��������������. ����� �������� ����, �� ������ �������� ������. ��������." )
	MisResultCondition(HasMission, 908)
	MisResultCondition(NoRecord,908)
	MisResultCondition(HasItem, 1005, 1)
	MisResultAction(TakeItem, 1005, 1)
	MisResultAction(GiveItem, 1006, 1, 4)--����� ��� �����
	MisResultAction(ClearMission, 908)
	MisResultAction(SetRecord, 908)

	
	-------------------------------------------------------------

	DefineMission ( 912, "\204\232\234\241\242\243\240\224 \203\254\225\226\232", 909)--Reverse Love Potion--�������� �������� �����
	
	MisBeginTalk( "<t>� ������ ��� ���������� ������ ������ �������� ��������. � ������� (2250, 2770) ���� �������, ������� ����� ��� ������ �������� � ���� �����.." )
	
	MisBeginCondition(HasRecord,908)
	MisBeginCondition(NoRecord,909)
	MisBeginCondition(NoMission,909)
	MisBeginAction(AddMission,909)
	MisCancelAction(ClearMission, 909)
	
	MisHelpTalk( "<t>�������� �������� ����� � (2250, 2770)." )
	MisNeed(MIS_NEED_DESP, " �������� ������� �������� ����� � ������(2250, 2770)." )


	MisResultCondition(AlwaysFailure)


------------------------------------------------------------------------



	DefineMission( 913, "\204\232\234\241\242\243\240\224 \203\254\225\226\232", 909, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk( "<t>�� - ���� �������� �����?<n><t>��! � ������ �� �������...����� �������� �������...�� ������� �������, ���� ������� ������ ��." )
	MisResultCondition(HasMission, 909)
	MisResultCondition(NoRecord, 909)
	MisResultAction(ClearMission, 909)
	MisResultAction(SetRecord, 909)



	
	
	-------------------------------------------------------------

	DefineMission ( 914, "\207\240\232\227\238\242\238\226\235\229\237\232\229 \204\232\234\241\242\243\240\251 \203\254\225\226\232", 910 )
	
	MisBeginTalk( "<t>������! �� ����� ������ �������� ����� ������ ������, � ������ ����, ������� ��� <r������ ����>, <r������ �����>, <r2 �������� �����> � <r3 ����� ����>." )
	
	MisBeginCondition(NoMission,910)
	MisBeginCondition(HasRecord,909)
	MisBeginCondition(NoRecord,910)
	MisBeginAction(AddMission,910)
	MisBeginAction(AddTrigger, 9101, TE_GETITEM, 1649, 1)--������ ����
	MisBeginAction(AddTrigger, 9102, TE_GETITEM, 4418, 1)--������ �����
	MisBeginAction(AddTrigger, 9103, TE_GETITEM, 3129, 2)--�������� �����
	MisBeginAction(AddTrigger, 9104, TE_GETITEM, 1650, 3)	--����� ����
	MisCancelAction(ClearMission, 910)

	MisNeed(MIS_NEED_DESP, " �������: <r������ ����>, <r������ �����>, <r2 �������� �����> � <r3 ����� ����>." )

	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3129, 2, 30, 2)
	MisNeed(MIS_NEED_ITEM, 1650, 3, 40, 3)

	MisHelpTalk( "<t>��������� <r������ ����>, <r������ �����>, <r2 �������� �����> � <r3 ����� ����>." )

	MisResultTalk( "<t>�� ������� �������, � �� ������ ������� ������� �������� �����." )
	MisResultCondition(HasMission, 910)
	MisResultCondition(NoRecord,910)
	MisResultCondition(HasItem, 1649, 1)
	MisResultCondition(HasItem, 4418, 1)
	MisResultCondition(HasItem, 3129, 2)
	MisResultCondition(HasItem, 1650, 3)
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 4418, 1)
	MisResultAction(TakeItem, 3129, 2 )
	MisResultAction(TakeItem,1650, 3 )
	MisResultAction(ClearMission, 910)
	MisResultAction(SetRecord, 910 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 910, 10, 1 )
	RegCurTrigger( 9101 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 910, 20, 1 )
	RegCurTrigger( 9102 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 910, 30, 2 )
	RegCurTrigger( 9103 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 910, 40, 3 )
	RegCurTrigger( 9104 )
	
	
	-----------------------------------------------------------------������� ���������� �������

	DefineMission ( 915, "\202\243\239\232\242\229 \199\238\235\238\242\243\254 \205\229\244\240\232\242\238\226\243\254 \193\243\242\251\235\234\243", 911 )
	
	MisBeginTalk( "<t>�������� ����� - ��� �������. �� � ����� ������� ���� ���� ����������� - �� ������ �������������, ��� ��������� ����������� �����, ��� �� ��������� ������� ��� ��������." )

	MisBeginCondition(NoMission,911)
	MisBeginCondition(HasRecord,910)
	MisBeginCondition(NoRecord,911)
	MisBeginAction(AddMission,911)
	MisBeginAction(AddTrigger, 9111, TE_GETITEM, 1007, 1)
	MisCancelAction(ClearMission, 911)
	MisNeed(MIS_NEED_DESP, " ���������� ������� ���������� ������� " )
	MisNeed(MIS_NEED_ITEM, 1007, 1, 80, 1)

	MisHelpTalk( "<t>� ��������� ���������� ������� �������� �� ����������� ����� �������." )
	MisResultTalk( "<t>� ��� ��� �������� ����� ���� �� ������ ��� ������� ���������� �������." )


	MisResultCondition(HasMission, 911)
	MisResultCondition(NoRecord,911)
	MisResultCondition(HasItem, 1007, 1)
	MisResultAction(TakeItem, 1007, 1 )
	MisResultAction(ClearMission, 911)
	MisResultAction(SetRecord,  911 )

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1007)	
	TriggerAction( 1, AddNextFlag, 911, 80, 1 )
	RegCurTrigger( 9111 )


-------------------------------------------------------------------

	DefineMission( 916, "\203\254\225\238\226\252 \226 \207\240\238\248\235\238\236", 912 )--������ � �������
	
	MisBeginTalk( "<t>��� ���� ��������, �������� � �������� ����� �  (917, 3572)." )

	MisBeginCondition(HasRecord, 911)
	MisBeginCondition(NoRecord, 912)
	MisBeginCondition(NoMission, 912)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 912)
	MisBeginAction(GiveItem, 1008,1,4)

	MisHelpTalk( "<t>������������, �������� ������� ����� �������� ��������!" )
	MisNeed(MIS_NEED_DESP, " �������� �������� ����� �  (917, 3572)." )

	MisCancelAction(ClearMission, 912)
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------------------

	DefineMission( 917, "\203\254\225\238\226\252 \226 \207\240\238\248\235\238\236", 912, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	
	MisResultTalk( "<t>��� �������� ������� ���� �� ���������! �������� <������ ����������>, ��� ��� �� ���� ������.<n><t>��...! � ���� �������� ���� �� ������ ������������, � ����� ��� �������� �����!" )
	MisResultCondition(HasMission, 912)
	MisResultCondition(NoRecord,912)
	MisResultCondition(HasItem, 1008, 1)
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(GiveItem, 1009, 1 ,4)--
	MisResultAction(ClearMission, 912)
	MisResultAction(SetRecord, 912 )
	MisResultAction(ClearRecord, 909)
	MisResultAction(ClearRecord, 910)
	MisResultAction(ClearRecord, 911)
	MisResultAction(ClearRecord, 912)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 912, 10, 1 )
	RegCurTrigger( 9121 ) 


	--------------------------------------------------------------------

	DefineMission( 918, "\194\238\231\240\238\230\228\229\237\232\229 \203\254\225\226\232", 914 )--����������� �����
	MisBeginTalk( "<t>�����, ���� ���� ������ ������� ���������� ������, ��������� �� ���, � ��� ������� �� ���������!" )
	MisBeginCondition(NoMission, 914)
	MisBeginCondition(HasItem,1010,1)------------���������� ������
	MisBeginCondition(NoRecord,914)
	MisBeginAction(AddMission,914)
	MisBeginAction(AddTrigger, 9141, TE_GETITEM, 1008, 1)
	MisCancelAction(ClearMission, 914)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ���������� ������, ��������� ��� ��� ���������� ����� " )
	MisNeed(MIS_NEED_ITEM, 1008, 1, 10, 1)

	MisHelpTalk( "<t>����� ��������, �������� <b������������ ������> <r������ �������������>, <r���������� ������> � <r���������� �����>." )
	MisResultTalk( "<t>����� ������, ������ ������� ���, � ���� ������ ���������� �� ��� �����." )

	MisResultCondition(HasMission, 914)
	MisResultCondition(NoRecord,914)
	MisResultCondition(HasItem, 1008, 1)
	MisResultCondition(HasItem, 1010, 1)------------
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(TakeItem, 1010, 1 )
	MisResultAction(GiveItem, 1013,1,4)------------������ �������������
	MisResultAction(ClearMission, 914)
	MisResultAction(SetRecord, 914)
	MisResultAction(ClearRecord, 914)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 914, 10, 1 )
	RegCurTrigger( 9141 )
	
	
	-----------------------------------------------------------------------

	DefineMission( 919, "\202\240\238\226\224\226\251\229 \216\239\232\235\252\234\232", 915 )--�������� �������
	
	MisBeginTalk( "<t>��� ���� ����... ��� ���� �������... �� ������ ���������� ��� ��� ��� ������� ������... ��� � �����... ������� �������...� ��� �� ������... ���� �� ��� �� ������, ��� ���� ������������, �������� � ����������� ���������� � <r��������� �����>." )
	MisBeginCondition(NoRecord, 915 )
	MisBeginCondition(NoMission, 915 )
	MisBeginAction(AddMission, 915 )
	MisBeginAction(GiveItem, 1026,1,4)------������� ������� �����������
	MisCancelAction(ClearMission, 915)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, " ���������� � <r���������� ������> � (2244, 2770) � <b�������>." )
	MisHelpTalk( " <t>������������� � (2244, 2770)" )
	MisResultCondition(AlwaysFailure )

------------------------------------------------------------------------------

	DefineMission( 920, "\202\240\238\226\224\226\251\229 \216\239\232\235\252\234\232", 915, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk( "<t>�� �� ���? ����� �������!" )
	MisResultCondition(HasMission, 915)
	MisResultCondition(NoRecord,915)
	MisResultCondition(HasItem, 1026, 1)
	MisResultAction(TakeItem, 1026, 1 )
	MisResultAction(ClearMission, 915)
	MisResultAction(SetRecord, 915 )
	 
-------------------------------------------------------------------------------

	DefineMission( 921, "\204\229\228\232\246\232\237\241\234\238\229 \231\224\234\235\254\247\229\237\232\229 \226\240\224\247\224", 916 )

	MisBeginTalk( "<t>��! ������������� �� ��� ��������� �� ������� ������������ ������� �������, �� ������ � ���������. � ������������� ��������� ����������� ������ ������ ��������, �������� ���� ������� ����������� ������ � ��... ���� � �� ��������, ���������� ������ ��������� � ��������� � ������ � <p��������� - ������> (959, 3549)." )
	MisBeginCondition(NoMission, 916)
	MisBeginCondition(HasRecord,915)
	MisBeginCondition(NoRecord,916)
	MisBeginAction(AddMission, 916 )
	MisCancelAction(ClearMission, 916)
	MisResultCondition(AlwaysFailure )
	-------------------------------------------------------------------
	DefineMission( 922, "\208\224\241\241\235\229\228\238\226\224\237\232\229 \238 \237\224\239\238\228\229\237\232\232", 916, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk( "<t>�� ��� � ������ �������� ����� ������ �� �������� � ���������!" )
	MisResultCondition(HasMission, 916)
	MisResultCondition(NoRecord,916)
	MisResultAction(ClearMission, 916)
	MisResultAction(SetRecord, 916 )

	 
	---------------------------------------------------------------

	DefineMission( 923, "\202\242\238 \239\240\224\226, \234\242\238 \226\232\237\238\226\224\242", 917 )
	
	MisBeginTalk( "<t>��...��! ���� ���� ����� �� ��� �������� ���� �������� � ��������������� �������, � ���� ���� ������ ������, � �� ������������ ���������� ����� ������ ������� � �� ������ ������ ������������ - ��� ������ ��� ������� ��� ���� ���������, � �� ���� ���� � ������, ���, ��� ��� ������� ���� ����, ��� �������� � ���, ��� ��� ������ ����������� �� �������� � �����������." )
	MisBeginCondition(NoRecord, 917 )
	MisBeginCondition(NoMission, 917)
	MisBeginCondition(HasRecord, 916 )
	MisBeginAction(AddMission, 917 )
	MisBeginAction(GiveItem, 1027,1,4)------����������� ������� �������
	MisBeginAction(AddTrigger, 9171, TE_GETITEM, 1030, 1)--�����. ����� �� ������� �������
	MisBeginBagNeed(1)

	MisCancelAction(ClearMission, 917)
	MisNeed(MIS_NEED_ITEM, 1030, 1, 10, 1)

	MisResultTalk( "<t>������ �������, ��� ������ ������ �������������� ���� �� ����������� � ���� �� ������� �������!" )
	MisHelpTalk( "<t>�������� ���� ���� � ���������� � ��� � ��������� �� ������ �����������." )
	MisResultCondition(HasMission,  917)
	MisResultCondition(NoRecord , 917)
	MisResultCondition(HasItem,1030,1 )
	MisResultAction(TakeItem, 1030, 1 )-------�����. ����� �� ������� �������
	MisResultAction(ClearMission,   917)
	MisResultAction(SetRecord,  917 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1030)	
	TriggerAction( 1, AddNextFlag, 917, 10, 1 )
	RegCurTrigger( 9171 )
---------------------------------------------------------------------------------------

	DefineMission( 924, "\202\242\238 \239\240\224\226, \234\242\238 \226\232\237\238\226\224\242", 918 )------------������� - ��� ������

	MisBeginTalk( "<t>�� ��������! ������ ��� ���������� ��������� � ������� ����� ������... � ������ �� � ���� ����!" )
	MisBeginCondition(NoRecord, 918 )
	--MisBeginCondition(NoMission, 918 )
	MisBeginCondition(HasRecord, 917 )
	--MisBeginAction(AddMission, 918 )
	MisBeginAction(GiveItem, 1029,1,4)----------������� �������
	MisBeginAction(AddExp,500,500)
	--MisBeginAction(ClearMission, 918 )
	MisBeginAction(SetRecord, 918 )
	MisCancelAction(ClearMission, 918)
	MisBeginBagNeed(1)---------------

	MisHelpTalk( "<t>���������� ����������������!" )

	MisResultCondition(AlwaysFailure )


	--------------------------------------------------------------------

	DefineMission( 6000, "Phoenix Rebirth", 1300 )--������ ��������
	MisBeginTalk( "<t>��� �� ������ �������� ������� �� ���?! �� ������ ������� �� ���� ���� �����?! ���� ������, � �������� ��� ������ ������, ���� ���� �� �������. ��� ���� ����, ��� �� ��������� ����� � ������� ������� ������ ����� ���� ������ �������." )
	MisBeginCondition(NoMission, 1300)
	MisBeginCondition(NoRecord,1300)
	MisBeginCondition(HasCredit,9999)
	MisBeginAction(AddMission,1300)
	MisBeginAction(AddTrigger, 13001, TE_GETITEM, 2226, 1)
	MisBeginAction(AddTrigger, 13002, TE_GETITEM, 2227, 1)
	MisBeginAction(AddTrigger, 13003, TE_GETITEM, 2228, 1)
	MisBeginAction(AddTrigger, 13004, TE_GETITEM, 2229, 1)
	MisBeginAction(AddTrigger, 13005, TE_GETITEM, 2230, 1)
	MisBeginAction(AddTrigger, 13006, TE_GETITEM, 2231, 1)
	MisBeginAction(AddTrigger, 13007, TE_GETITEM, 2232, 1)
	MisBeginAction(AddTrigger, 13008, TE_GETITEM, 2233, 1)
	
	
	MisCancelAction(ClearMission, 1300)

	MisNeed(MIS_NEED_DESP, " ��� �� ����� ����� � ������ � �������� � �������������, ��� ���������� ����� ��� ����� ���� ������������, ����� ������� ���� ���������� �� ����� ���� �������." )
	MisNeed(MIS_NEED_ITEM, 2226, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2227, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2228, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2229, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2230, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2231, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2232, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2233, 1, 80, 1)
	
	

	MisHelpTalk( "<t>��� ���� ���������� �� ����� ����, ��� ����� ����� �����������, ���� �� ������ ������� ��� 8 ���." )
	MisResultTalk( "<t>�� ������� ��� ����� ���� ������������, �� ��������� �����." )

	MisResultCondition(HasMission, 1300)
	MisResultCondition(NoRecord,1300)
	MisResultCondition(HasItem, 2226, 1)
	MisResultCondition(HasItem, 2227, 1)
	MisResultCondition(HasItem, 2228, 1)
	MisResultCondition(HasItem, 2229, 1)
	MisResultCondition(HasItem, 2230, 1)
	MisResultCondition(HasItem, 2231, 1)
	MisResultCondition(HasItem, 2232, 1)
	MisResultCondition(HasItem, 2233, 1)
	
	
	MisResultAction(TakeItem, 2226, 1 )
	MisResultAction(TakeItem, 2227, 1 )
	MisResultAction(TakeItem, 2228, 1 )
	MisResultAction(TakeItem, 2229, 1 )
	MisResultAction(TakeItem, 2230, 1 )
	MisResultAction(TakeItem, 2231, 1 )
	MisResultAction(TakeItem, 2232, 1 )
	MisResultAction(TakeItem, 2233, 1 )
	
	
	MisResultAction(GiveItem, 2235,1,4)------------���� ������������
	MisResultAction(ClearMission, 1300)
	MisResultAction(SetRecord, 1300)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2226)	
	TriggerAction( 1, AddNextFlag, 1300, 10, 1 )
	RegCurTrigger( 13001 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2227)	
	TriggerAction( 1, AddNextFlag, 1300, 20, 1 )
	RegCurTrigger( 13002 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2228)	
	TriggerAction( 1, AddNextFlag, 1300, 30, 1 )
	RegCurTrigger( 13003 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2229)	
	TriggerAction( 1, AddNextFlag, 1300, 40, 1 )
	RegCurTrigger( 13004 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2230)	
	TriggerAction( 1, AddNextFlag, 1300, 50, 1 )
	RegCurTrigger( 13005 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2231)	
	TriggerAction( 1, AddNextFlag, 1300, 60, 1 )
	RegCurTrigger( 13006 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2232)	
	TriggerAction( 1, AddNextFlag, 1300, 70, 1 )
	RegCurTrigger( 13007 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2233)	
	TriggerAction( 1, AddNextFlag, 1300, 80, 1 )
	RegCurTrigger( 13008 )
	
-------------------------------------------------	

	DefineMission ( 5500, "\199\232\236\237\232\232 \231\224\225\224\226\251", 818 )
	
	MisBeginTalk( "<t>��������� - ��� �������� ������� � �������! �� ������� �� ������� ��� ���� � ������? ���?! ������ <r20 �������� ��������� ������> � � ��� ��� <b������>!" )

	MisBeginCondition(NoMission,818)
	MisBeginCondition(NoRecord,818)
	MisBeginAction(AddMission,818)
	MisBeginAction(AddTrigger, 8181, TE_KILL, 218, 20 )
	MisCancelAction(ClearMission, 818)
	
	MisNeed(MIS_NEED_DESP, "Kill 20 Mystic Shrub")--�������� ��������� ����
	MisNeed(MIS_NEED_KILL, 218, 20, 10, 20)

	MisHelpTalk( "<t>��������� �� �� ������ " )
	MisResultTalk( "<t>�� �����! �� ������ ����� ������ ������ �������� � ������. ��� ���� <b������>. ����������� ���������!" )


	MisResultCondition(HasMission, 818)
	MisResultCondition(NoRecord,818)
	MisResultCondition(HasFlag, 818, 29 )
	MisResultAction(ClearMission, 818)
	MisResultAction(SetRecord,  818 )
	MisResultAction(ClearRecord, 818)
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 218)	
	TriggerAction( 1, AddNextFlag, 818, 10, 20 )
	RegCurTrigger( 8181 )

	-------------------------------------------------	

	DefineMission( 5501, "\199\232\236\237\232\232 \231\224\225\224\226\251", 819 )
	
	MisBeginTalk( "<t>��������� - ��� �������� ������� � �������! �� ������� �� ������� ��� ���� � ������? ���?! ������ <r20 ��������� ������> � � ��� ��� <b������>!" )

	MisBeginCondition(NoMission,819)
	MisBeginCondition(NoRecord,819)
	MisBeginAction(AddMission,819)
	MisBeginAction(AddTrigger, 8191, TE_KILL, 75, 20 )--��������� ����
	MisCancelAction(ClearMission, 819)
	
	MisNeed(MIS_NEED_DESP, "Kill 20 Dry Mystic Shrubs")
	MisNeed(MIS_NEED_KILL, 75, 20, 10, 20)

	MisHelpTalk( "<t>��������� �� �� ������ " )
	MisResultTalk( "<t>�� �����! �� ������ ����� ������ ������ �������� � ������. ��� ���� <b������>. ����������� ���������!" )


	MisResultCondition(HasMission, 819)
	MisResultCondition(NoRecord,819)
	MisResultCondition(HasFlag, 819, 29 )
	MisResultAction(ClearMission, 819)
	MisResultAction(SetRecord,  819 )
	MisResultAction(ClearRecord, 819)
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 819, 10, 20 )
	RegCurTrigger( 8191 )

-------------------------------------------------	

	DefineMission( 5502, "\199\232\236\237\232\232 \231\224\225\224\226\251", 820 )
	
	MisBeginTalk( "<t>��������� - ��� �������� ������� � �������! �� ������� �� ������� ��� ���� � ������? ���?! ������ <r20 ����������� ��������� ������> � � ��� ��� <b������>!" )

	MisBeginCondition(NoMission,820)
	MisBeginCondition(NoRecord,820)
	MisBeginAction(AddMission,820)
	MisBeginAction(AddTrigger, 8201, TE_KILL, 216, 20 )--����������� ��������� ����
	MisCancelAction(ClearMission, 820)
	
	MisNeed(MIS_NEED_DESP, "Kill 20 Snowy Mystic Shrub")
	MisNeed(MIS_NEED_KILL, 216, 20, 10, 20)

	MisHelpTalk( "<t>��������� �� �� ������ " )
	MisResultTalk( "<t>�� �����! �� ������ ����� ������ ������ �������� � ������. ��� ���� <b������>. ����������� ���������!" )


	MisResultCondition(HasMission, 820)
	MisResultCondition(NoRecord,820)
	MisResultCondition(HasFlag, 820, 29 )
	MisResultAction(ClearMission, 820)
	MisResultAction(SetRecord,  820 )
	MisResultAction(ClearRecord, 820)
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 216)	
	TriggerAction( 1, AddNextFlag, 820, 10, 20 )
	RegCurTrigger( 8201 )

-----------------------------------------------������

	DefineMission(6001,"\206\247\232\241\242\232\236 \236\232\240 \238\242 \228\229\236\224\237\238\226",1302)--������ ��������

      MisBeginTalk( "<t>� ���� ����� ����� ����� ����� ���, ������ ��� �������� ��� �� �������<n><t>������ �� 15 ��������:<r������������� ������ �������>, <r������������� ���������� �������>, <r�������� ������� ����������>, <r�������� �����-���������>, <r����������� ���������� �������>, <r����������� ������ �������>." )

      MisBeginCondition(HasRecord,1301)
      MisBeginCondition(NoRecord,1302)
      MisBeginCondition(NoMission,1302)
      MisBeginCondition(HasCredit,9999 )
      MisBeginAction(TakeCredit, 9999 )
      MisBeginAction(AddMission,1302)
      MisBeginAction(AddTrigger, 13021, TE_KILL,525, 15)--������������� ������ �������
      MisBeginAction(AddTrigger, 13022, TE_KILL,526, 15)--������������� ���������� �������
      MisBeginAction(AddTrigger, 13023, TE_KILL, 532, 15)--�������� ������� ����������
      MisBeginAction(AddTrigger, 13024, TE_KILL, 550, 15)--�������� �����-���������
      MisBeginAction(AddTrigger, 13025, TE_KILL, 554, 15)--����������� ���������� �������
      MisBeginAction(AddTrigger, 13026, TE_KILL, 553, 15)--����������� ������ �������
      MisCancelAction(ClearMission, 1302)

      MisNeed(MIS_NEED_DESP, " ������ �� 15 ��������:<r������������� ������ �������>, <r������������� ���������� �������>, <r�������� ������� ����������>, <r�������� �����-���������>, <r����������� ���������� �������>, <r����������� ������ �������>!" )
      MisNeed(MIS_NEED_KILL, 525, 15, 10, 15)
      MisNeed(MIS_NEED_KILL, 526, 15, 30, 15)
      MisNeed(MIS_NEED_KILL, 532, 15, 50, 15)
      MisNeed(MIS_NEED_KILL, 550, 15, 70, 15)
      MisNeed(MIS_NEED_KILL, 554, 15, 90, 15)
      MisNeed(MIS_NEED_KILL, 553, 15, 110, 15)

      MisHelpTalk( "<t>������ �� � �����-������ ���� ��������." )  
      MisResultTalk( "<t>�� �������� ��� �� �������, �� �� ����, �� ������ ��������, �������� ��� ����� ���� � ������� �� ���� ��������!" )
      MisResultCondition(HasMission,1302 )
      MisResultCondition(NoRecord,1302)
      MisResultCondition(HasFlag, 1302, 24)
      MisResultCondition(HasFlag, 1302, 44)
      MisResultCondition(HasFlag, 1302, 64)
      MisResultCondition(HasFlag, 1302, 84)
      MisResultCondition(HasFlag, 1302, 104)
      MisResultCondition(HasFlag, 1302, 124)
      MisResultAction(GiveItem, 2228, 1, 4 )
      MisResultAction(ClearMission, 1302 )
      MisResultAction(SetRecord, 1302)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 525 )
      TriggerAction( 1, AddNextFlag, 1302, 10, 15 )
      RegCurTrigger( 13021 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 526 )
      TriggerAction( 1, AddNextFlag, 1302, 30, 15 )
      RegCurTrigger( 13022 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,532  )
      TriggerAction( 1, AddNextFlag, 1302, 50, 15 )
      RegCurTrigger( 13023 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 550 )
      TriggerAction( 1, AddNextFlag, 1302, 70, 15 )
      RegCurTrigger( 13024 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 554 )
      TriggerAction( 1, AddNextFlag, 1302, 90, 15 )
      RegCurTrigger( 13025 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,553)
      TriggerAction( 1, AddNextFlag, 1302, 110, 15 )
      RegCurTrigger( 13026 )




------------------------------------------------------������ ��������

	DefineMission( 6002, "\210\224\232\237\241\242\226\229\237\237\251\233 \204\224\235\251\248", 1303 )

	MisBeginTalk( "<t>���� �� ����� ���������, ��� ������� ��� ����� �� ������ ������ ������������ � ������ ���." )
	MisBeginCondition(NoRecord,   1303)
	MisBeginCondition(HasRecord, 1302)
	MisBeginCondition(NoMission,  1303)
	MisBeginAction(AddMission,  1303)
	MisCancelAction(ClearMission, 1303)
	MisNeed(MIS_NEED_DESP, " ����� ������� ������ �� ������� " )
	MisHelpTalk( "<t>���� ������ ������� ��� ��� �����!" )
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------

	DefineMission( 6003, "\210\224\232\237\241\242\226\229\237\237\251\233 \204\224\235\251\248", 1303, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk( "<t>� ��� ������, �� �� ��� ���� ����������� ��� ����������?!" )
	MisResultCondition(NoRecord,  1303)
	MisResultCondition(HasMission,  1303)
	MisResultAction(SetRecord,  1303)
	MisResultAction(ClearMission,  1303)

------------------------------------------------------------

	DefineMission( 6004, "\207\240\238\241\242\224\255 \204\232\241\241\232\255", 1304 )--������� ������

	MisBeginTalk( "<t>� �� ���� ��� ���������, �� �� ������ �� ��, �� ��������� ��������������, �������� ���� ���������..." )
	MisBeginCondition(NoRecord, 1304)
	MisBeginCondition(HasRecord, 1303)
	MisBeginCondition(NoMission, 1304)
	MisBeginAction(AddMission, 1304)
	MisBeginAction(AddTrigger, 13041, TE_GETITEM, 4730, 30 )--���������� ������ �������
	MisBeginAction(AddTrigger, 13042, TE_GETITEM, 1358, 30 )--������������ ����
	MisBeginAction(AddTrigger, 13043, TE_GETITEM, 2619, 30 )--������ ������� II
	MisCancelAction(ClearMission, 1304)
	
	MisNeed(MIS_NEED_ITEM, 4730, 30, 10, 30)
	MisNeed(MIS_NEED_ITEM, 1358, 30, 50, 30)
	MisNeed(MIS_NEED_ITEM, 2619, 30, 90, 30)

	MisResultTalk( "<t>��� �� ��� ��� ����� ��� ������������� ���� ���, ������� ��� ��������." )
	MisHelpTalk( "<t>���� �� �����, �� �����, �� ���� �� ���������..." )
	MisResultCondition(HasMission, 1304)
	MisResultCondition(HasItem, 4730, 30 )
	MisResultCondition(HasItem, 1358, 30 )
	MisResultCondition(HasItem, 2619, 30 )
	MisResultAction(TakeItem, 4730, 30 )
	MisResultAction(TakeItem, 1358, 30 )
	MisResultAction(TakeItem, 2619, 30 )
	MisResultAction(ClearMission, 1304)
	MisResultAction(SetRecord, 1304 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4730)	
	TriggerAction( 1, AddNextFlag, 1304, 10, 30 )
	RegCurTrigger( 13041 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1358)	
	TriggerAction( 1, AddNextFlag, 1304, 50, 30 )
	RegCurTrigger( 13042 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2619)	
	TriggerAction( 1, AddNextFlag, 1304, 90, 30 )
	RegCurTrigger( 13043 )




------------------------------------------------------------
	
	DefineMission( 6005, "\196\229\237\252 \207\229\240\229\240\238\230\228\229\237\232\255", 1305 )--���� ������������

	MisBeginTalk( "<t>��� - ������������� ������� ����... ��... ���� �������� ����� ���, ��������� ��� ����." )
	MisBeginCondition(NoRecord, 1305)
	MisBeginCondition(HasRecord, 1304)
	MisBeginCondition(NoMission, 1305)
	MisBeginAction(AddMission, 1305)
	MisBeginAction(AddTrigger, 13051, TE_GETITEM, 1087, 30 )--���� ���	
	MisCancelAction(ClearMission, 1305)
	
	MisNeed(MIS_NEED_ITEM, 1087, 30, 10, 30)

	MisResultTalk( "<t>����� ������, ������� ���!" )
	MisHelpTalk( "<t>������������, ��� ����� ����� ��� ����!" )
	MisResultCondition(HasMission, 1305)
	MisResultCondition(HasItem, 1087, 30 )
	MisResultAction(TakeItem, 1087, 30 )
	MisResultAction(ClearMission, 1305)
	MisResultAction(SetRecord, 1305 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1305, 10, 30 )
	RegCurTrigger( 13051 )

------------------------------------------------------------

	DefineMission( 6006, "\196\229\237\252 \207\229\240\229\240\238\230\228\229\237\232\255", 1306 )

	MisBeginTalk( "<t>�� �����... ��� �� ��� ������, ��� �������� ���� ����� ���� ���, �� ����� �� �� ��� ������ ����������� � ���� ��������?" )
	MisBeginCondition(NoRecord, 1306)
	MisBeginCondition(HasRecord, 1305)
	MisBeginCondition(NoMission, 1306)
	MisBeginAction(AddMission, 1306)
	MisBeginAction(AddTrigger, 13061, TE_GETITEM, 1088, 20 )--�������� ����
	MisCancelAction(ClearMission, 1306)
	
	MisNeed(MIS_NEED_ITEM, 1088, 20, 10, 20)

	MisResultTalk( "<t>�������� ���� �� �� �����!" )
	MisHelpTalk( "<t>�� ������� ��� �����, ��������� ��� �������� ���� �� ���������!" )
	MisResultCondition(HasMission, 1306)
	MisResultCondition(HasItem, 1088, 20 )
	MisResultAction(TakeItem, 1088, 20 )
	MisResultAction(ClearMission, 1306)
	MisResultAction(SetRecord, 1306 )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1088)	
	TriggerAction( 1, AddNextFlag, 1306, 10, 20 )
	RegCurTrigger( 13061 )



------------------------------------------------------------

	DefineMission( 6007, "\196\229\237\252 \207\229\240\229\240\238\230\228\229\237\232\255", 1307 )

	MisBeginTalk( "<t>���! �� ���� ���� ��� �����, ��� ���������� 20 ������� ���� ���, �������� ��� ���?" )
	MisBeginCondition(NoRecord, 1307)
	MisBeginCondition(HasRecord, 1306)
	MisBeginCondition(NoMission, 1307)
	MisBeginAction(AddMission, 1307)
	MisBeginAction(AddTrigger, 13071, TE_GETITEM, 1087, 20 )		--
	MisCancelAction(ClearMission, 1307)
	
	MisNeed(MIS_NEED_ITEM, 1087, 20, 10, 20)

	MisResultTalk( "<t>���� ������� ��������..." )
	MisHelpTalk( "<t>�� ������ �������." )
	MisResultCondition(HasMission, 1307)
	MisResultCondition(HasItem, 1087, 20 )
	MisResultAction(TakeItem, 1087, 20 )
	MisResultAction(ClearMission, 1307)
	MisResultAction(SetRecord, 1307 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1307, 10, 20 )
	RegCurTrigger( 13071 )

------------------------------------------------------------

	DefineMission( 6008, "\196\229\237\252 \207\229\240\229\240\238\230\228\229\237\232\255", 1008 )

	MisBeginTalk( "<t> ��... ������� � �������� �������� � ������������... � ���� ��������... �� ����� �� �� ��� �������� ���� � ���������, ��� �� ������� ������������?" )
	MisBeginCondition(NoRecord, 1008)
	MisBeginCondition(HasRecord, 1307)
	MisBeginCondition(NoMission, 1008)
	MisBeginAction(AddMission, 1008)
	MisBeginAction(AddTrigger, 10081, TE_GETITEM, 1089, 15 )--���� � ���������
	MisCancelAction(ClearMission, 1008)
	
	MisNeed(MIS_NEED_ITEM, 1089, 15, 10, 15)

	MisResultTalk( "<t>��.. ��� �� �����... ��..." )
	MisHelpTalk( " <t>�� ���� �� ����? ������������... � ���� ������ ����� ������!" )
	MisResultCondition(HasMission, 1008)
	MisResultCondition(HasItem, 1089, 15 )
	MisResultAction(TakeItem, 1089, 15 )
	MisResultAction(ClearMission, 1008)
	MisResultAction(SetRecord, 1008 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1089)	
	TriggerAction( 1, AddNextFlag, 1008, 10, 15 )
	RegCurTrigger( 10081 )


------------------------------------------------------

	DefineMission( 6009, "\207\238\232\241\234 \196\229\236\238\237\232\247\229\241\234\238\227\238 \195\232\228\224", 1009 )--����� ������������� ����

	MisBeginTalk( "<t>��, �� ������ �� ��, ��� � ������� ���������, �� ���� ������� ���, �� ��� � ��� ��� ������� ����, �� � ������ � ������, ��� � ���� ������� ���� ���. � ���� ���� ���������� ����������� ��� ���..." )
	MisBeginCondition(NoRecord,   1009)
	MisBeginCondition(HasRecord, 1008)
	MisBeginCondition(NoMission,  1009)
	MisBeginAction(AddMission,  1009)
	MisBeginAction(GiveItem, 2227, 1, 4 )--���� �����
	MisCancelAction(ClearMission, 1009)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, " ������������� �� ������ ���� � ��� �������!" )
	MisHelpTalk( "<t>� ���� �� ���?" )
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------

	DefineMission( 6010, "\207\238\232\241\234 \196\229\236\238\237\232\247\229\241\234\238\227\238 \195\232\228\224", 1009, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk( "<t>� - ��� � ���� �������, �� � �� ������� ���������, � ���� ������ ���������� ������ � ��������� ���� ������� ���, ��� ��� ��� �������..." )
	MisResultCondition(NoRecord,  1009)
	MisResultCondition(HasMission,  1009)
	MisResultAction(SetRecord,  1009)
	MisResultAction(ClearMission,  1009)

----------------------------------------------------------

	DefineMission( 6011, "\207\243\242\232\248\229\241\242\226\232\229 \226 \202\224\240\232\225\251", 1010 )--����������� � ������
	MisBeginTalk( "<t>�������� �������� ������-�����. ��� � �� ���� ����������� �� �� ����, �� � ������. ���� �� ��� �������� ����� <r��������� ������� ���>, ���������� ���� ����� ��� �����, �� � ��� ��� ������� ����, �, � ��� �����, ���� ������� ��� ����������." )
				
	MisBeginCondition(NoMission, 1010)
	MisBeginCondition(HasRecord, 1009)
	MisBeginCondition(NoRecord,1010)	
	MisBeginAction(AddMission,1010)
	MisBeginAction(AddTrigger, 10101, TE_KILL, 807, 1)--�������� ������� ���
	MisCancelAction(ClearMission, 1010)

	MisNeed(MIS_NEED_DESP, " ����� <r��������� ������� ���>." )
	MisNeed(MIS_NEED_KILL, 807,1, 10, 1)
	
	
	MisResultTalk( "<t>������ ����� ��������, �� ������� ������� ���� � �����!" )
	MisHelpTalk( "<t>��������� �� ����!" )
	MisResultCondition(HasMission,  1010)
	MisResultCondition(HasFlag, 1010, 10)
	MisResultCondition(NoRecord , 1010)
	MisResultAction(ClearMission,  1010)
	MisResultAction(SetRecord,  1010 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 807)	
	TriggerAction( 1, AddNextFlag, 1010, 10, 1 )
	RegCurTrigger( 10101 )

	


----------------------------------------------------------

	DefineMission( 6012, "\207\243\242\232\248\229\241\242\226\232\229 \226 \202\224\240\232\225\251, \228\229\237\252 \226\242\238\240\238\233", 1011 )--����������� � ������, ���� ������
	MisBeginTalk( "<t>� ��� ������ ����� ����� ���� ������� ��������, ��� � ������� - ���������..." )
				
	MisBeginCondition(NoMission, 1011)
	MisBeginCondition(NoRecord,1011)
	MisBeginCondition(HasRecord, 1010)
	MisBeginAction(AddMission,1011)
	MisBeginAction(AddTrigger, 10111, TE_KILL, 805, 1)--���������
	MisCancelAction(ClearMission, 1011)

	MisNeed(MIS_NEED_DESP, " ������ <r���������>!" )
	MisNeed(MIS_NEED_KILL, 805,1, 10, 1)
	

	MisResultTalk( "<t>����������� ��� ����!" )
	MisHelpTalk(" �� ���������� ������ ���� �������� ������!" )
	MisResultCondition(HasMission,  1011)
	MisResultCondition(HasFlag, 1011, 10)
	MisResultCondition(NoRecord , 1011)
	MisResultAction(ClearMission,  1011)
	MisResultAction(SetRecord,  1011 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 1011, 10, 1 )
	RegCurTrigger( 10111 )
	
	----------------------------------------------------------

	DefineMission( 6013, "\207\243\242\232\248\229\241\242\226\232\229 \226 \202\224\240\232\225\251, \228\229\237\252 \226\242\238\240\238\233", 1012 )
	MisBeginTalk( "<t> � ���� �� ��������, �� ���������� � ���� ���� ��� ��� ��� ���� ��������� �����������, ������ <r�������������� ���������� �����>!" )
				
	MisBeginCondition(NoMission, 1012)
	MisBeginCondition(NoRecord,1012)
	MisBeginCondition(HasRecord, 1011)
	MisBeginAction(AddMission,1012)
	MisBeginAction(AddTrigger, 10121, TE_KILL, 796, 1)---�������������� ���������� �����
	
	MisCancelAction(ClearMission, 1012)

	MisNeed(MIS_NEED_DESP, " ������ <r�������>!" )
	MisNeed(MIS_NEED_KILL, 796,1, 10, 1)
	

	MisResultTalk( "<t>�� ������� �����, �������� ��� ����, �������� ��� ��� ��� ����������." )
	MisHelpTalk( "<t>�������� ��� ��� �� ��� ������� ����� � ���� �����!" )
	MisResultCondition(HasMission,  1012)
	MisResultCondition(HasFlag, 1012, 10)
	MisResultCondition(NoRecord , 1012)
	MisResultAction(GiveItem, 2226, 1, 4 )--���� ����
	MisResultAction(ClearMission,  1012)
	MisResultAction(SetRecord,  1012 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 796)	
	TriggerAction( 1, AddNextFlag, 1012, 10, 1 )
	RegCurTrigger( 10121 )
	
	------------------------------------------------------

	DefineMission( 6014, "\213\240\224\237\232\242\229\235\252", 1013 )--���������

	MisBeginTalk( "<t>���� ���, �� ������ ������������� � ������� �������� ���, � ������ ��� � ������ � ������� ���� ���������� ����������� ���� ���." )
	MisBeginCondition(NoRecord,   1013)
	MisBeginCondition(HasRecord, 1012)
	MisBeginCondition(NoMission,  1013)
	MisBeginAction(AddMission,  1013)
	MisCancelAction(ClearMission, 1013)
	

	MisNeed(MIS_NEED_DESP, " ����� ���������� ��������� �������� ���." )
	MisHelpTalk( "<t>� ��������� �, ��� ���, ������ �� ���� �������� ��� ������� �� ������, ����� ��� ����� ����������� �� ������ ���������� ��� ������������?" )
	
	MisResultCondition(AlwaysFailure)


-------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------	������� �� ���� ������� ��������� ---------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------


	DefineMission( 5503, "\207\238\228\224\240\238\234 \237\224 \196\229\237\252 \209\226\255\242\238\227\238 \194\224\235\229\237\242\232\237\224", 825 )--������� �� ���� ������� ���������
	
	MisBeginTalk( "<t>������ �������� �������� ������������ � �����? ��������� ��� 10 ������ ����� � ��� �����, ��� ���������." )

	MisBeginCondition(NoMission,825)
	MisBeginCondition(NoRecord,825)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginAction(AddMission,825)
	MisBeginAction(AddTrigger, 8251, TE_GETITEM, 3343, 1)--����
	MisBeginAction(AddTrigger, 8252, TE_GETITEM, 4418, 10)--������ �����
	MisCancelAction(ClearMission, 825)
	
	MisNeed(MIS_NEED_DESP, " ��������� <b1 ����> � <b10 ������ �����>." )
	MisNeed(MIS_NEED_ITEM, 3343, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 20, 10 )

	MisHelpTalk( "<t>�� �� ������ ��� �������, ��� ��� �����������, ��� ������ ���� ������� ���������?" )
	MisResultTalk( "<t>����� ������, �������� ���� <b������� �������> ����� ������ ���������." )


	MisResultCondition(HasMission, 825)
	MisResultCondition(NoRecord,825)
	MisResultCondition(HasItem, 3343, 1)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 1 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 825)
	MisResultAction(SetRecord,  825 )
	MisResultAction(GiveItem, 2904, 1, 4)
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 825, 10, 1 )
	RegCurTrigger( 8251 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 825, 20, 10 )
	RegCurTrigger( 8252 )

-------------------------------------------------���� ������� ���������

	DefineMission( 5504, "\207\238\228\224\240\238\234 \237\224 \196\229\237\252 \209\226\255\242\238\227\238 \194\224\235\229\237\242\232\237\224", 826 )
	
	MisBeginTalk( "<t>������ �������� �������� ������������ � �����? ��������� ��� 10 ������ ����� � ��� �����, ��� ���������." )

	MisBeginCondition(NoMission,826)
	MisBeginCondition(NoRecord,826)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginAction(AddMission,826)
	MisBeginAction(AddTrigger, 8261, TE_GETITEM, 3343, 1)
	MisBeginAction(AddTrigger, 8262, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 826)
	
	MisNeed(MIS_NEED_DESP, " ��������� <b1 ����> � <b10 ������ �����>." )
	MisNeed(MIS_NEED_ITEM, 3343, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 20, 10 )

	MisHelpTalk( "<t>�� ��������� ���������� ����������� ������������ ���� ������ ���������!" )
	MisResultTalk( "<t>����� ������, �������� ���� <b������� �����> ����� ������ ���������!" )


	MisResultCondition(HasMission, 826)
	MisResultCondition(NoRecord,826)
	MisResultCondition(HasItem, 3343, 1)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 1 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 826)
	MisResultAction(SetRecord,  826 )
	MisResultAction(GiveItem, 2905, 1, 4)--������� �����
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 826, 10, 1 )
	RegCurTrigger( 8261 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 826, 20, 10 )
	RegCurTrigger( 8262 )


-----------------------------------------------

	DefineMission( 5505, "\193\235\224\227\238\241\238\241\242\238\255\237\232\229 7 \209\226\232\237\229\233", 827 )--�������������� 7 ������

      MisBeginTalk( "<t>������ �������� ������� �� ������ ���� ������? ����� ������: �������� ����������, ����������, ���������� ������� ������, �����-������, ��������� ������, ������� ���������� � ������� ������." )

      MisBeginCondition(NoRecord,827)
      MisBeginCondition(NoMission,827)
      MisBeginAction(AddMission,827)
      MisBeginAction(AddTrigger, 8271, TE_KILL,239, 1)--������� ���������
      MisBeginAction(AddTrigger, 8272, TE_KILL,237, 1)--���������
      MisBeginAction(AddTrigger, 8273, TE_KILL, 264, 1)--��������� ������ �����
      MisBeginAction(AddTrigger, 8274, TE_KILL, 295, 1)--����-�����
      MisBeginAction(AddTrigger, 8275, TE_KILL, 64, 1)--�������� �����
      MisBeginAction(AddTrigger, 8276, TE_KILL, 296, 1)--������ ���������
      MisBeginAction(AddTrigger, 8277, TE_KILL, 144, 1)--������� ������
      MisCancelAction(ClearMission, 827)

      MisNeed(MIS_NEED_DESP, " ������: <r�������� ����������>, <r����������>, <r���������� ������� ������>, <r�����-������>, <r��������� ������>, <r������� ����������> � <r������� ������>.")
      MisNeed(MIS_NEED_KILL, 239, 1, 10, 1)
      MisNeed(MIS_NEED_KILL, 237, 1, 20, 1)
      MisNeed(MIS_NEED_KILL, 264, 1, 30, 1)
      MisNeed(MIS_NEED_KILL, 295, 1, 40, 1)
      MisNeed(MIS_NEED_KILL, 64, 1, 50, 1)
      MisNeed(MIS_NEED_KILL, 296, 1, 60, 1)
      MisNeed(MIS_NEED_KILL, 144, 1, 70, 1)


      MisHelpTalk( "<t>� ����� �����." )  
      MisResultTalk( "<t>�������!" )
      MisResultCondition(HasMission,827 )
      MisResultCondition(NoRecord,827)
      MisResultCondition(HasFlag, 827, 10)
      MisResultCondition(HasFlag, 827, 20)
      MisResultCondition(HasFlag, 827, 30)
      MisResultCondition(HasFlag, 827, 40)
      MisResultCondition(HasFlag, 827, 50)
      MisResultCondition(HasFlag, 827, 60)
      MisResultCondition(HasFlag, 827, 70)
      MisResultAction(GiveItem, 855, 99, 4 )--������ ���
      MisResultAction(ClearMission, 827 )
      MisResultAction(SetRecord, 827)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 239 )
      TriggerAction( 1, AddNextFlag, 827, 10, 1 )
      RegCurTrigger( 8271 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 827, 20, 1 )
      RegCurTrigger( 8272 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,264  )
      TriggerAction( 1, AddNextFlag, 827, 30, 1 )
      RegCurTrigger( 8273 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 295 )
      TriggerAction( 1, AddNextFlag, 827, 40, 1 )
      RegCurTrigger( 8274 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 64 )
      TriggerAction( 1, AddNextFlag, 827, 50, 1 )
      RegCurTrigger( 8275 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,296)
      TriggerAction( 1, AddNextFlag, 827, 60, 1 )
      RegCurTrigger( 8276 )

      InitTrigger()
      TriggerCondition( 1, IsMonster,144)
      TriggerAction( 1, AddNextFlag, 827, 70, 1 )
      RegCurTrigger( 8277 )

-------------------------------------------------���������� ���������	

	DefineMission( 5506, "\209\247\224\241\242\235\232\226\251\233 \207\238\240\238\241\229\237\238\234", 828 )--���������� ���������
	
	MisBeginTalk( "<t>��� ���������� ������� �������� ��� ����� ������ ���� �� ���� ��������, ��� ��� ��������� ��� ���� ������ � � ��� �������� ���� �������� ������� �������, �� ��������� ������ � ����� �� ����� ������. ������ ������� ��� ����� ������ <30.000 �������>." )

	MisBeginCondition(NoMission,828)
	MisBeginCondition(HasRecord,827)
	MisBeginCondition(NoRecord,828)
	MisBeginAction(AddMission,828)
	MisBeginAction(AddTrigger, 8281, TE_GETITEM, 2908, 1)--��������� ������ ������
	MisCancelAction(ClearMission, 828)
	
	MisNeed(MIS_NEED_ITEM, 2908, 1, 10, 1)
	

	MisHelpTalk( "<t>���������!" )
	MisResultTalk( "<t>����� ������! ��� ������ ���������� ��� �������� ���������� ������!" )

	MisResultCondition(HasMission, 828)
	MisResultCondition(NoRecord,828)
	MisResultCondition(HasItem, 2908, 1)
	MisResultCondition(HasMoney, 30000)
	MisResultAction(TakeItem, 2908, 1 )
	MisResultAction(TakeMoney,30000 )
	MisResultAction(ClearMission, 828)
	MisResultAction(SetRecord,  828 )
	MisResultAction(GiveItem, 2909, 1, 4)--������ ���������� ������

	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2908)	
	TriggerAction( 1, AddNextFlag, 828, 10, 1 )
	RegCurTrigger( 8281 )

	
-----------------------------------------------

	DefineMission( 5507, "\207\238\228\224\240\238\234", 829 )--�������

      MisBeginTalk( "<t>� ��� ��������� ����. �� ������ �������� ������� �� ������, ���� ������� ������� ����� <r20 �����������>." )

      MisBeginCondition(NoRecord,829)
      MisBeginCondition(NoMission,829)
      MisBeginCondition(LvCheck, ">",45)
      MisBeginAction(AddMission,829)
      MisBeginAction(AddTrigger, 8291, TE_KILL, 237, 20)--���������
      MisCancelAction(ClearMission, 829)

      MisNeed(MIS_NEED_DESP, " �������� 20 �������." )
      MisNeed(MIS_NEED_KILL, 237, 20, 10, 20)
     
      MisHelpTalk( "<t>����� �� ���� ������." )  
      MisResultTalk( "<t>�� �����! ��� ��� ������� �� ������! ���� �� ���������� ��� � ����� 17-��� ������� � 23:00 �� 01:00, 18-��� �������, �� ������ �������� �� ������ �������." )
      MisResultCondition(HasMission,829 )
      MisResultCondition(NoRecord,829)
      MisResultCondition(HasFlag, 829, 29)
      MisResultAction(GiveItem, 2910, 1, 4 )--����� ������������ �������
      MisResultAction(ClearMission, 829 )
      MisResultAction(SetRecord, 829)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 829, 10, 20 )
      RegCurTrigger( 8291 )
       
-------------------------------------------------��� ����� ������

	DefineMission( 5508, "\215\242\238 \242\224\234\238\229 \235\254\225\238\226\252", 830 )--��� �� �� ���� ����� - ������
	
	MisBeginTalk( "<t>� ��� ���� ���������, � �� ���� ����������, ��� �� �� ������ ��� ������� �� ������ ���, �� �� ���� ��� ������� ��������� ��� ��������� �������. ���..���." )

	MisBeginCondition(NoMission,830)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoRecord,830)
	MisBeginAction(AddMission,830)
	MisBeginAction(AddTrigger, 8301, TE_GETITEM, 4418, 10 )--������ �����
	MisCancelAction(ClearMission, 830)
	
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10 )
	

	MisHelpTalk( "<t>�� ����������� ���� ������ �����!" )
	MisResultTalk( "<t>�! �� ��� ��, �� �������, �������� ���� ������ ������ � �� �� ������ ������ �������!" )

	MisResultCondition(HasMission, 830)
	MisResultCondition(NoRecord,830)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 830)
	MisResultAction(SetRecord,  830 )
	MisResultAction(GiveItem, 2916, 1, 4)--������ ������
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 830, 10, 10 )
	RegCurTrigger( 8301 )

-------------------------------------------------------------------------------------------------
	-------------------------------------------------�������------------------------------
-------------------------------------------------------------------------------------------------

	DefineMission( 5509, "\202\240\224\241\232\226\224\255 \203\254\225\238\226\252", 831 )--�������� ������
	
	MisBeginTalk( "<t>������� �������, ��� �� ����� ���� �������, �������� �� �����. ��� ����� �� ��� ����� ���� <b�������� ������ ������>, <b������� �������> � ������� ����� ���� ������. � ���� � �� ��������� ����� ��� � ���� �������, ��������� �� ��� �� ����� �����������." )

	MisBeginCondition(NoMission,831)
	MisBeginCondition(NoMission,832)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginCondition(HasItem, 2902, 1)
	MisBeginAction(AddTrigger, 8311, TE_GETITEM, 2903, 1 )--�������� ������ ������
	MisBeginAction(AddTrigger, 8312, TE_GETITEM, 2845, 1 )--������� �������
	MisBeginAction(AddMission,831)
	MisCancelAction(ClearMission, 831)
	

	MisNeed(MIS_NEED_ITEM, 2903, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk( "<t>�����: <p����������>, <b������� ������> � <b�������� ������ ������>." )
	MisResultTalk( "<t>�� ����� ���������� ����, �� ��� ��������� ���� � �����. ������� ��� ������������, � �������� � ������� ��� ��������� ������, �� ������� - �� ������� ���� �����, � ����� ������� �� ������ �������� �� ������, �������� ������, �������� ���� �����, ������ ���� ������ � �� ����� �� ���� �������� ��� ���� ����������� ������!" )

	MisResultCondition(HasMission, 831)
	MisResultCondition(NoRecord,831)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem, 2902, 2903 )
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 831)
	MisResultAction(SetRecord,  831 )
	MisResultAction(GiveItem, 2915, 2, 4)--������ ������
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2903)	
	TriggerAction( 1, AddNextFlag, 831, 10, 1 )
	RegCurTrigger( 8311 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 831, 20, 1 )
	RegCurTrigger( 8312 )

		-------------------------------------------------	

	DefineMission( 5536, "\202\240\224\241\232\226\224\255 \203\254\225\238\226\252", 832 )--�������� ������
	
	MisBeginTalk( "<t>��������, ��� �� ����� ���� �����, �������� �� �����. ��� ����� �� ��� ����� ���� <b�������� ������ ���������>, <b������� �������> � ������� ����� ���� ������. � ���� � �� ��������� ����� ��� � ������ ��������, ��������� �� ��� �� ����� �����������." )

	MisBeginCondition(NoMission,832)
	MisBeginCondition(NoMission,831)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginCondition(HasItem, 2903, 1)
	MisBeginAction(AddTrigger, 8321, TE_GETITEM, 2902, 1 )--�������� ������ ���������
	MisBeginAction(AddTrigger, 8322, TE_GETITEM, 2845, 1 )--������� �������
	MisBeginAction(AddMission,832)
	MisCancelAction(ClearMission, 832)
	

	MisNeed(MIS_NEED_ITEM, 2902, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk( "<t>�����: <p����������>, <b������� ������> � <b�������� ������ ������>." )
	MisResultTalk( "<t>�� ����� ���������� ����, �� ��� ��������� ���� � �����. ������� ��� ������������, � �������� � ������� ��� ��������� ������, �� ������� - �� ������� ���� �����, � ����� ������� �� ������ �������� �� ������, �������� ������, �������� ���� �����, ������ ���� ������ � �� ����� �� ���� �������� ��� ���� ����������� ������!" )

	MisResultCondition(HasMission, 832)
	MisResultCondition(NoRecord,832)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem, 2902, 2903 )
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 832)
	MisResultAction(SetRecord,  832 )
	MisResultAction(GiveItem, 2915, 2, 4)
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2902)	
	TriggerAction( 1, AddNextFlag, 832, 10, 1 )
	RegCurTrigger( 8321 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 832, 20, 1 )
	RegCurTrigger( 8322 )



	-------------------------------------------------	

	DefineMission( 5510, "\194\251\231\238\226", 743 )--�����
	
	MisBeginTalk( "<t>������ ���� ������� ����� 1? ������ ������ ���� �� ������? ����� �������� ���������! ������ ��� ����� ������� �� ������ � �������. ���������� �������� �� �������� �� �����. <r�������� ��� ������ � ��������� ��� � ���� � ��������� � ������ ������, � �� ��� ����� ��������������� �� �������� ��� �� ����, ����� ��� �� ����� �� ������ ����� �� �����>. ������ ������ � ������������� � ������� �����������." )

	MisBeginCondition(NoMission,743)
	MisBeginCondition(NoRecord,743)
	MisBeginCondition(CheckBagEmp,0)
	MisBeginAction(AddMission,743)
	MisBeginAction(AddChaItem1, 2911)--������ � �������
	MisCancelAction(SystemNotice, " ������ ���������� �� ������!" )
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, " ��������� ��������� � ��������� ������ �������." )
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5511, "\194\251\231\238\226", 743, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>���� ������? ���� �����?" )
	MisResultCondition(HasMission, 743 )
	MisResultCondition(CheckBag, 2911, 0, 1 )--������ � �������
	MisResultCondition(NoRecord, 743 )
	MisResultAction(ClearMission, 743 )
	MisResultAction(SetRecord, 743 )
	


	-------------------------------------------------	

	DefineMission( 5512, "\194\251\231\238\226 2", 744 )--������ 2
	
	MisBeginTalk( "<t>�� ���� �� ������ ���� ��, ������������, ����� ��� ��������, ������������ � ��������� �������, �� ��� ���!" )

	MisBeginCondition(NoMission,744)
	MisBeginCondition(HasRecord, 743)
	MisBeginCondition(NoRecord, 744)
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission,744)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ���� ������!" )
	
	MisNeed(MIS_NEED_DESP, " ����� ��������� ������ � (136, 3432)" )
	
	MisHelpTalk("<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5513, "\194\251\231\238\226 2", 744, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk ("<t>� ��� ��� ��������. �����... ����� �� �����������." )
	MisResultCondition(HasMission, 744)
	MisResultCondition(NoRecord, 744)
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 744)
	MisResultAction(SetRecord,  744 )

	

	-------------------------------------------------	

	DefineMission ( 5514, "\194\251\231\238\226 3", 745 )
	
	MisBeginTalk( "<t>��� - ������ ��������� ��������� ������ � (1544, 3712). ������ ������������, �� �� ������ ��� ������������� � ���� �������!" )

	MisBeginCondition(NoMission, 745 )
	MisBeginCondition(HasRecord, 744 )
	MisBeginCondition(NoRecord, 745 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 745 )
	MisCancelAction(SystemNotice, " �� �� ������ ��������� �� ���� ������!" )
	
	MisNeed(MIS_NEED_DESP, " ������������� � (1544, 3712)")
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5515, "Challenge Genesis 3", 745, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ���?" )
	MisResultCondition(HasMission, 745 )
	MisResultCondition(NoRecord, 745 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 745)
	MisResultAction(SetRecord, 745 )



	-------------------------------------------------	
	
	DefineMission( 5516, "\194\251\231\238\226 4", 746 )
	
	MisBeginTalk( "<t>� ���� ����� ���� �������, � � �� �������������� � ���������� ��� � (3194, 3507)." )

	MisBeginCondition(NoMission,746)
	MisBeginCondition(HasRecord, 745)
	MisBeginCondition(NoRecord,746)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,746)
	MisCancelAction(SystemNotice, " �� �� ������ ������� ��� ������!" )
	
	MisNeed(MIS_NEED_DESP, " ����� ��������� ��� � (3194, 3507)" )
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5517, "\194\251\231\238\226 4", 746, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>� ��� ������ ���� �������� ���� ����... �� ������ � ����������... ������� �� �� ����������� ��� ����? � ������ � ������ � ����� ���������." )
	MisResultCondition(HasMission, 746)
	MisResultCondition(NoRecord,746)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 746)
	MisResultAction(SetRecord, 746 )
	


	-------------------------------------------------	

	DefineMission( 5518, "\194\251\231\238\226 5", 747 )
	
	MisBeginTalk( "<t>���� ���� � �������, � ������������ � �� ���������� �� ��� � ������, ��� �� �� ����� ������������, ���� ������� �� ��� �� ���������� �������� ����� ׸����� �������." )

	MisBeginCondition(NoMission,747)
	MisBeginCondition(HasRecord,746)
	MisBeginCondition(NoRecord,747)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,747)
	MisCancelAction(SystemNotice, " �� ���� ���������� �� ���� ������!" )
	
	MisNeed(MIS_NEED_DESP, " ����� ��������� ������ ���� � �����(738, 3803)" )
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5519, "\194\251\231\238\226 5", 747, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ����� �� ������� ��� �������� �������!" )
	MisResultCondition(HasMission, 747)
	MisResultCondition(NoRecord,747)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 747)
	MisResultAction(SetRecord, 747 )
	


	-------------------------------------------------	

	DefineMission( 5520, "\194\251\231\238\226 6", 748 )
	
	MisBeginTalk( "<t>����, ����� ������� �� ������ ��������, ����� ������, �� ���� �� ������ ��������� �����. ��������� ��� ���� ��� �������... �������� ��� ����... �� ��������� �� ����� �����, ���� ���������!" )

	MisBeginCondition(NoMission, 748 )
	MisBeginCondition(HasRecord, 747 )
	MisBeginCondition(NoRecord, 748 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 748 )
	MisCancelAction(SystemNotice, " ������ ���������� �� ���������� ���� ������!" )
	
	MisNeed(MIS_NEED_DESP, " ����� ��������� ������ �������� � �����(194, 1715)." )
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5521, "\194\251\231\238\226 6", 748, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>������ ������ ����� � ������ ������ �������� - ��� �� ��� ����� ��� ��������� ������!" )
	MisResultCondition(HasMission, 748)
	MisResultCondition(NoRecord,748)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 748)
	MisResultAction(SetRecord,  748 )
	


	-------------------------------------------------	

	DefineMission( 5522, "\194\251\231\238\226 7", 749 )
	
	MisBeginTalk( "<t>�� ��� ������������� � ���������� ���� �� ������� ���������, �� �������... ��� �� ��� �� ���� ��� � ������ ���." )

	MisBeginCondition(NoMission, 749 )
	MisBeginCondition(HasRecord, 748 )
	MisBeginCondition(NoRecord, 749 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 749 )
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ���������� ����� �������!" )
	
	MisNeed(MIS_NEED_DESP, " ������������� �� �������� � ����� ���� � ������� ��������� ������ ������ � ����� (3498, 923)." )
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5523, "\194\251\231\238\226 7", 749, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>� ������, ��� ����� ����� �������� �� ������� ׸����� �������..." )
	MisResultCondition(HasMission, 749 )
	MisResultCondition(NoRecord, 749 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 749 )
	MisResultAction(SetRecord, 749 )
	


	-------------------------------------------------	

	DefineMission( 5524, "\194\251\231\238\226 8", 750 )
	
	MisBeginTalk( "<t>�� ��� ���?! � �� �������� �� ������� ׸����� �������?! ��� ���� �� ��� ������ � �������� ���� ������� ���������?! �� ������� ����� ��� � ����� ��������� ����!" )

	MisBeginCondition(NoMission, 750 )
	MisBeginCondition(HasRecord, 749 )
	MisBeginCondition(NoRecord, 750 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 750 )
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ���� ������!" )
	
	MisNeed(MIS_NEED_DESP, " ����� � ���������� ������ ��������� ������ ���� � ����� (2042, 635)")
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5525, "\194\251\231\238\226 8", 750, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>� ������ �� �����������, ���� ��� �� ����� ������� � ����!" )
	MisResultCondition(HasMission, 750 )
	MisResultCondition(NoRecord, 750 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 750 )
	MisResultAction(SetRecord, 750 )
	
	

	-------------------------------------------------	

	DefineMission( 5526, "\194\251\231\238\226 9", 751 )
	
	MisBeginTalk( "<t>(12 ����� ��������� ������� ���������)... � ��� ����� ���� ��������� ���� ������ ����... �� �� ������� ��������, � ���� �������, ������� ������� �� ������, � �� ���������� ���� ����� ׸����� �������." )

	MisBeginCondition(NoMission, 751 )
	MisBeginCondition(HasRecord, 750 )
	MisBeginCondition(NoRecord, 751 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 751 )
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ���� ������!" )
	
	MisNeed(MIS_NEED_DESP, " ������� � �����(464, 468) � ���������� � ������� ����������." )
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5527, "\194\251\231\238\226 9", 751, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>���� ����� ���������! �� ���� ���� ����������. ������� �� �� ���������� � ���� ��� �������������..." )
	MisResultCondition(HasMission, 751)
	MisResultCondition(NoRecord, 751 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 751 )
	MisResultAction(SetRecord, 751 )
	



	-------------------------------------------------	

	DefineMission( 5528, "\194\251\231\238\226 10", 752 )
	
	MisBeginTalk( "<t>������� ���� �� �����, �� �����������." )

	MisBeginCondition(NoMission, 752 )
	MisBeginCondition(HasRecord, 751 )
	MisBeginCondition(NoRecord, 752 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 752 )
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ���������� ���� ������!" )
	
	MisNeed(MIS_NEED_DESP, " ����� ��������� ������� � ����� (3153, 674)." )
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5529, "\194\251\231\238\226 10", 752, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� �������� �� ��� �������... ��... ����������!" )
	MisResultCondition(HasMission, 752 )
	MisResultCondition(NoRecord, 752 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 752 )
	MisResultAction(SetRecord, 752 )
	


	-------------------------------------------------	

	DefineMission( 5530, "\194\251\231\238\226 11", 753 )
	
	MisBeginTalk( "<t>�������� �� �������� � ��� ���������!" )

	MisBeginCondition(NoMission, 753 )
	MisBeginCondition(HasRecord, 752 )
	MisBeginCondition(NoRecord, 753 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 753 )
	MisCancelAction(SystemNotice, " �� �� ������ ��������� �� ���������� ����� �������!" )
	
	MisNeed(MIS_NEED_DESP, "������������ � ������� ��������� ������ - ������� � �����(2041, 1355)." )
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5531, "\194\251\231\238\226 11", 753, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>����� ���������� � ����� �����!" )
	MisResultCondition(HasMission, 753 )
	MisResultCondition(NoRecord, 753)
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 753 )
	MisResultAction(SetRecord, 753 )
	
	


	-------------------------------------------------

	DefineMission(5532, "\194\251\231\238\226 12", 754 )
	
	MisBeginTalk( "<t>���������... �� ����� �� ����� �������!" )

	MisBeginCondition(NoMission, 754 )
	MisBeginCondition(HasRecord, 753 )
	MisBeginCondition(NoRecord, 754 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 754 )
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ���������� ���� ������!" )
	
	MisNeed(MIS_NEED_DESP, " ����� ��������� ������ ������ � �����(1497, 1707)." )
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5533, "\194\251\231\238\226 12", 754, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>��...��... �� �� � ��? ���, � ���� ��� �� ��������� ��-�� ���� ���... ����. �� ��� �� ������� ���... �� ����� ��������� �� �����?" )
	MisResultCondition(HasMission, 754 )
	MisResultCondition(NoRecord, 754 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 754 )
	MisResultAction(SetRecord, 754 )
	
	


	
	-------------------------------------------------	

	DefineMission(5534, "\194\251\231\238\226 13", 755 )
	
	MisBeginTalk( "<t>�� ������ � 20 ���... � ���� �����... �� �� ���� ������� �� ����...!" )

	MisBeginCondition(NoMission, 755 )
	MisBeginCondition(HasRecord, 754 )
	MisBeginCondition(NoRecord, 755 )
	MisBeginCondition(CheckBag, 2911,0,1 )
	MisBeginAction(AddMission, 755 )
	MisCancelAction(SystemNotice, " �� � ����� ��������� ������, ����� �� ��� � ����� ������?" )
	
	MisNeed(MIS_NEED_DESP, " ������������� � ����-���� � ���������� � ��� � �����(1083, 1285)." )
	
	MisHelpTalk( "<t>��� ��� ����� ���� ����� ׸����� ������� �������� ���� ����� ����������!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5535, "\194\251\231\238\226 13", 755, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ����� �����������, ��� ������ ���� ���� ������������ ��� ������� �� ����������� ����� ���������... � ��� �� ���� ������... �� �� ���������������, ����� ���� � ������ ��������� ��� ������ ������." )
	MisResultCondition(HasMission, 755 )
	MisResultCondition(NoRecord, 755 )
	MisResultCondition(HasItem, 2911, 1 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(AddChaItem2, 2912 )
	MisResultAction(ClearMission, 755 )
	MisResultAction(SetRecord,  755 )
	MisResultBagNeed(2)
	MisResultAction(ClearRecord, 743 )
	MisResultAction(ClearRecord, 744 )
	MisResultAction(ClearRecord, 745 )
	MisResultAction(ClearRecord, 746 )
	MisResultAction(ClearRecord, 747 )
	MisResultAction(ClearRecord, 748 )
	MisResultAction(ClearRecord, 749 )
	MisResultAction(ClearRecord, 750 )
	MisResultAction(ClearRecord, 751 )
	MisResultAction(ClearRecord, 752 )
	MisResultAction(ClearRecord, 753 )
	MisResultAction(ClearRecord, 754 )
	MisResultAction(ClearRecord, 755 )

	-------------------------------------------------����

	DefineMission( 5536, "\206\226\229\237 vs \195\229\240\238\233", 1060 )
	
	MisBeginTalk( "<t>��������� ����� ������ ���� ������ � ������, � ��� ������ ���� 10 ����� �����." )

	MisBeginCondition(NoMission,1060)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1060)
	MisBeginAction(AddMission,1060)
	MisCancelAction(ClearMission, 1060)
	
	MisHelpTalk( "<t>������������ ������� 10 ����� �����!" )
	MisResultTalk( "<t>� ���� ��� ������� 10 ����� ����� �� �������� ��� ��� �������." )

	MisResultCondition(HasMission, 1060)
	MisResultCondition(NoRecord,1060)
	MisResultCondition(HasFightingPoint,10 )
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1060)
	MisResultAction(SetRecord,  1060 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����

	DefineMission( 5537, "\208\229\239\243\242\224\246\232\255 \195\229\240\238\255", 1061 )
	
	MisBeginTalk( "<t>��� ���������� ����� 500 ����� ���������. ��������� ����� �������� �� �������� ��������." )

	MisBeginCondition(NoMission,1061)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1061)
	MisBeginAction(AddMission,1061)
	MisCancelAction(ClearMission, 1061)
	
	MisHelpTalk( "<t>����� ���, �������� ��������, �� ���� ����� ���� ���������, � ��� �� ����� �� �������� ������ ���� �� �� ������� ��������!" )
	MisResultTalk( "<t>� ������, � ���� �� ����������� � ����� ������������." )

	MisResultCondition(HasMission, 1061)
	MisResultCondition(NoRecord,1061)
	MisResultCondition(HasCredit,500 )
	MisResultAction(TakeCredit, 500 )
	MisResultAction(ClearMission, 1061)
	MisResultAction(SetRecord,  1061 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------����	

	DefineMission( 5538, "\206\226\229\237 - \221\240\238", 1062 )
	
	MisBeginTalk( "<t>��� ������� ������ ���� �� ������ 55 ������!" )

	MisBeginCondition(NoMission,1062)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1062)
	MisBeginAction(AddMission,1062)
	MisCancelAction(ClearMission, 1062)
	
	MisHelpTalk( "<t>�� ��������� � ���� ��� �����, ����� � ���������� ���� �������!" )
	MisResultTalk( "<t>��� � ������." )

	MisResultCondition(HasMission, 1062)
	MisResultCondition(NoRecord, 1062)
	MisResultCondition(LvCheck, ">", 55 )
	MisResultAction(ClearMission, 1062)
	MisResultAction(SetRecord,  1062 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����	

	DefineMission( 5539, "\193\235\224\227\238\240\238\228\237\251\233 \195\229\240\238\233", 1063 )
	
	MisBeginTalk( "<t>��� ����� � ���� ����� �� ����... � ��� ������ ���� ��� ������� 100 ������� �����." )

	MisBeginCondition(NoMission,1063)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1063)
	MisBeginAction(AddMission,1063)
	MisCancelAction(ClearMission, 1063)
	
	MisHelpTalk( "<t>����������� ���� �����!" )
	MisResultTalk( "<t>�� �������, ��� �� � ����������� �� ���!" )

	MisResultCondition(HasMission, 1063)
	MisResultCondition(NoRecord,1063)
	MisResultCondition(HasHonorPoint,100 )
	MisResultAction(TakeHonorPoint, 100 )
	MisResultAction(ClearMission, 1063)
	MisResultAction(SetRecord,  1063 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����	

	DefineMission( 5540, "\207\238\241\238\235", 1064 )
	
	MisBeginTalk( "<t>������� ������ ���� ����� ��� ����." )

	MisBeginCondition(NoMission,1064)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1064)
	MisBeginAction(AddMission,1064)
	MisBeginAction(AddTrigger, 10641, TE_GETITEM, 3116, 15 )--���������� �����
	MisBeginAction(AddTrigger, 10642, TE_GETITEM, 1678, 15 )--�������
	MisBeginAction(AddTrigger, 10643, TE_GETITEM, 4809, 15 )--��������� ������
	MisBeginAction(AddTrigger, 10644, TE_GETITEM, 0855, 20 )--������ ���
	MisBeginAction(AddTrigger, 10645, TE_GETITEM, 4503, 1 )---������
	MisBeginAction(AddTrigger, 10646, TE_GETITEM, 1848, 50 )--����
	MisCancelAction(ClearMission, 1064)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 50, 67, 50 )

	MisHelpTalk( "<t>������� ��� �������� �� �������� �����, �� ������� ��� �������!" )
	MisResultTalk( "<t>�� � ���� ������ ��� ����, �� ��������� ������������ ������ ����!" )

	MisResultCondition(HasMission, 1064)
	MisResultCondition(NoRecord,1064)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 50 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 50 )
	MisResultAction(ClearMission, 1064)
	MisResultAction(SetRecord,  1064 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1064, 1, 15 )
	RegCurTrigger( 10641 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1064, 16, 15 )
	RegCurTrigger( 10642 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1064, 31, 15 )
	RegCurTrigger( 10643 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1064, 46, 20 )
	RegCurTrigger( 10644 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1064, 66, 1 )
	RegCurTrigger( 10645 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1064, 67, 50 )
	RegCurTrigger( 10646 )

	----------------------------------------------------------

	DefineMission( 5541, "\209\239\255\249\232\233 \206\226\229\237", 1065 )
	MisBeginTalk( "<t>���� ������, ��������, ����� ������ ������� � ����� �� ������. ���������� �������� �������� ������� ������� �������� ����������� �� ����." )
				
	MisBeginCondition(NoMission, 1065)
	MisBeginCondition(HasRecord,836)
	MisBeginCondition(NoRecord,1065)
	MisBeginAction(AddMission,1065)
	MisBeginAction(AddTrigger, 10651, TE_KILL, 1009, 1)--���� ����
	
	MisCancelAction(ClearMission, 1065)

	MisNeed(MIS_NEED_DESP, " ������ <r����> �� �.�������� � ����� (2566, 2454)!" )
	MisNeed(MIS_NEED_KILL, 1009,1, 10, 1)
	

	MisResultTalk( "<t>� ���� �� ����� ����? ���� ���������� �� ��� �� � �����." )
	MisHelpTalk("<t>�� ��� �������� �� ���������, � � ������ ������� �� ������ � ������ � ��� ���������." )
	MisResultCondition(HasMission,  1065)
	MisResultCondition(HasFlag, 1065, 10)
	MisResultCondition(NoRecord , 1065)
	MisResultAction(GiveItem, 2950, 1, 4 )
	MisResultAction(ClearMission,  1065)
	MisResultAction(SetRecord,  1065 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1009)	
	TriggerAction( 1, AddNextFlag, 1065, 10, 1 )
	RegCurTrigger( 10651 )






-------------------------------------------------����	

	DefineMission( 5542, "\206\226\229\237 vs \195\229\240\238\233", 1066 )
	
	MisBeginTalk( "<t>��������� ����� ������ ���� ������ � ������, � ��� ������ ���� 20 ����� �����." )

	MisBeginCondition(NoMission,1066)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1066)
	MisBeginAction(AddMission,1066)
	MisCancelAction(ClearMission, 1066)
	
	MisHelpTalk( "<t>������������ � � ��� ���������!" )
	MisResultTalk( "<t>� � � �� ����������� ��� �� ������� ������ ���� 20 ����� �����." )

	MisResultCondition(HasMission, 1066)
	MisResultCondition(NoRecord,1066)
	MisResultCondition(HasFightingPoint,20 )
	MisResultAction(TakeFightingPoint, 20 )
	MisResultAction(ClearMission, 1066)
	MisResultAction(SetRecord,  1066 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����	

	DefineMission( 5543, "\195\229\240\238\233 \209\235\224\226\251 \206\226\229\237\224", 1067 )
	
	MisBeginTalk( "<t>��� ���������� ����� 1000 ����� ���������. ��������� ����� �������� �� �������� ��������." )

	MisBeginCondition(NoMission,1067)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1067)
	MisBeginAction(AddMission,1067)
	MisCancelAction(ClearMission, 1067)
	
	MisHelpTalk( "<t>����� � �������� ��������, ������������� ���� ���������!" )
	MisResultTalk( "<t>��� ����, ���� ����������!" )

	MisResultCondition(HasMission, 1067)
	MisResultCondition(NoRecord,1067)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(TakeCredit, 1000 )
	MisResultAction(ClearMission, 1067)
	MisResultAction(SetRecord,  1067 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------����	

	DefineMission( 5544, "\206\226\229\237 \221\240\238", 1068 )
	
	MisBeginTalk( "<t>��� ������� ������ ���� �� ������ 65 ������." )

	MisBeginCondition(NoMission,1068)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1068)
	MisBeginAction(AddMission,1068)
	MisCancelAction(ClearMission, 1068)
	
	MisHelpTalk( "<t>����� � ��������� ���� ������� �� 65 ������." )
	MisResultTalk( "<t>����� ������!" )

	MisResultCondition(HasMission, 1068)
	MisResultCondition(NoRecord,1068)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1068)
	MisResultAction(SetRecord,  1068 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����

	DefineMission( 5545, "\193\235\224\227\238\240\238\228\237\251\233 \195\229\240\238\233", 1069 )
	
	MisBeginTalk( "<t>��� ����� � ���� ����� �� ����... � ��� ������ ���� ��� ������� 200 ������� �����." )

	MisBeginCondition(NoMission,1069)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1069)
	MisBeginAction(AddMission,1069)
	MisCancelAction(ClearMission, 1069)
	
	MisHelpTalk( "<t>������������� �� ��� � ������." )
	MisResultTalk( "<t>����� ��� ���������� ��� �����?" )

	MisResultCondition(HasMission, 1069)
	MisResultCondition(NoRecord,1069)
	MisResultCondition(HasHonorPoint,200 )
	MisResultAction(TakeHonorPoint, 200 )
	MisResultAction(ClearMission, 1069)
	MisResultAction(SetRecord,  1069 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����

	DefineMission( 5546, "\207\238\241\238\235", 1070 )
	
	MisBeginTalk( "<t>�������� ������� ��� ��� ����." )

	MisBeginCondition(NoMission,1070)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1070)
	MisBeginAction(AddMission,1070)
	MisBeginAction(AddTrigger, 10701, TE_GETITEM, 3116, 15 )-------------
	MisBeginAction(AddTrigger, 10702, TE_GETITEM, 1678, 15 )-------------
	MisBeginAction(AddTrigger, 10703, TE_GETITEM, 4809, 15 )-------------
	MisBeginAction(AddTrigger, 10704, TE_GETITEM, 0855, 20 )-------------
	MisBeginAction(AddTrigger, 10705, TE_GETITEM, 4503, 1 )--------------
	MisBeginAction(AddTrigger, 10706, TE_GETITEM, 1848, 40 )-------------
	MisBeginAction(AddTrigger, 10707, TE_GETITEM, 2673, 10 )-------------
	MisCancelAction(ClearMission, 1070)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )

	MisHelpTalk( "<t>�� ������� ��� �������, ������ �� ������� ���!" )
	MisResultTalk( "<t>� � � ��������, ��� ��� �� �������� �����." )

	MisResultCondition(HasMission, 1070)
	MisResultCondition(NoRecord,1070)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(ClearMission, 1070)
	MisResultAction(SetRecord,  1070 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1070, 1, 15 )
	RegCurTrigger( 10701 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1070, 16, 15 )
	RegCurTrigger( 10702 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1070, 31, 15 )
	RegCurTrigger( 10703 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1070, 46, 20 )
	RegCurTrigger( 10704 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1070, 66, 1 )
	RegCurTrigger( 10705 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1070, 67, 40 )
	RegCurTrigger( 10706 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1070, 107, 10 )
	RegCurTrigger( 10707 )

	



-------------------------------------------------	

	DefineMission( 5547, "\206\226\229\237 vs \195\229\240\238\233", 1071 )
	
	MisBeginTalk( "<t>��������� ����� ������ ���� ������ � ������, � ��� ������ ���� 100 ����� �����." )

	MisBeginCondition(NoMission,1071)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1071)
	MisBeginAction(AddMission,1071)
	MisCancelAction(ClearMission, 1071)
	
	MisHelpTalk( "<t>��� ��� �� ������ ��������� ����� ������ 100 ����� �����!" )
	MisResultTalk( "<t>��� ��� �� ������ ��������� ����� ������ 100 ����� �����." )

	MisResultCondition(HasMission, 1071)
	MisResultCondition(NoRecord,1071)
	MisResultCondition(HasFightingPoint,100 )
	MisResultAction(TakeFightingPoint, 100 )
	MisResultAction(ClearMission, 1071)
	MisResultAction(SetRecord, 1071 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����	

	DefineMission( 5548, "\195\229\240\238\233 \209\235\224\226\251 \206\226\229\237\224", 1072 )
	
	MisBeginTalk( "<t>��� ���������� ����� 3000 ����� ���������. ��������� ����� �������� �� �������� ��������." )

	MisBeginCondition(NoMission,1072)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1072)
	MisBeginAction(AddMission,1072)
	MisCancelAction(ClearMission, 1072)
	
	MisHelpTalk( "<t>�� ����� �� ��� ����� �������, ������������� ���������!" )
	MisResultTalk( "<t>�� ������� ������� " )

	MisResultCondition(HasMission, 1072)
	MisResultCondition(NoRecord,1072)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit, 3000 )
	MisResultAction(ClearMission, 1072)
	MisResultAction(SetRecord,  1072 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------����	

	DefineMission( 5549, "\206\226\229\237 \221\240\238", 1073 )
	
	MisBeginTalk( "<t>� ��� ������ ���� ��� ������� 75 �������." )

	MisBeginCondition(NoMission,1073)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1073)
	MisBeginAction(AddMission,1073)
	MisCancelAction(ClearMission, 1073)
	
	MisHelpTalk( "<t>�� ������� ��� �����, ��������� ���� ������� �� 75 ������." )
	MisResultTalk( "<t>����� ������, �� ��� ����� " )

	MisResultCondition(HasMission, 1073)
	MisResultCondition(NoRecord,1073)
	MisResultCondition(LvCheck, ">", 74 )
	MisResultAction(ClearMission, 1073)
	MisResultAction(SetRecord,  1073 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����	

	DefineMission( 5550, "\193\235\224\227\238\240\238\228\237\251\233 \195\229\240\238\233", 1074 )
	
	MisBeginTalk( "<t>��� ����� � ���� ����� �� ����... � ��� ������ ���� ��� ������� 500 ������� ����� " )

	MisBeginCondition(NoMission,1074)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1074)
	MisBeginAction(AddMission,1074)
	MisCancelAction(ClearMission, 1074)
	
	MisHelpTalk( "<t>�� ��������� � ���� ��� �����, ����� � ������������� �����." )
	MisResultTalk( "<t>� ��� ������� � �����, ����� ��� �����?" )

	MisResultCondition(HasMission, 1074)
	MisResultCondition(NoRecord,1074)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1074)
	MisResultAction(SetRecord,  1074 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����	

	DefineMission( 5551, "\207\238\241\238\235", 1075 )
	
	MisBeginTalk( "<t>������� ������ ��� ���� ���� ���������." )

	MisBeginCondition(NoMission,1075)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1075)
	MisBeginAction(AddMission,1075)
	MisBeginAction(AddTrigger, 10751, TE_GETITEM, 3116, 15 )
	MisBeginAction(AddTrigger, 10752, TE_GETITEM, 1678, 15 )
	MisBeginAction(AddTrigger, 10753, TE_GETITEM, 4809, 15 )
	MisBeginAction(AddTrigger, 10754, TE_GETITEM, 0855, 20 )
	MisBeginAction(AddTrigger, 10755, TE_GETITEM, 4503, 1 )
	MisBeginAction(AddTrigger, 10756, TE_GETITEM, 1848, 40 )
	MisBeginAction(AddTrigger, 10757, TE_GETITEM, 2673, 10 )
	MisBeginAction(AddTrigger, 10758, TE_GETITEM, 0227, 4 )
	MisCancelAction(ClearMission, 1075)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 4, 117, 4 )

	MisHelpTalk( "<t>�� ������� ����� ���, ����� � �������� ��� ��� ��������!" )
	MisResultTalk( "<t>�� ��� ������, ��� �� ��� �� � ������!" )

	MisResultCondition(HasMission, 1075)
	MisResultCondition(NoRecord,1075)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )
	MisResultCondition(HasItem, 0227, 4 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(TakeItem, 0227, 4 )
	MisResultAction(ClearMission, 1075)
	MisResultAction(SetRecord,  1075 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1075, 1, 15 )
	RegCurTrigger( 10751 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1075, 16, 15 )
	RegCurTrigger( 10752 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1075, 31, 15 )
	RegCurTrigger( 10753 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1075, 46, 20 )
	RegCurTrigger( 10754 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1075, 66, 1 )
	RegCurTrigger( 10755 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1075, 67, 40 )
	RegCurTrigger( 10756 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1075, 107, 10 )
	RegCurTrigger( 10757 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1075, 117, 4 )
	RegCurTrigger( 10758 )


	

	----------------------------------------------------------����

	DefineMission( 5552, "\206\226\229\237 \207\238\241\238\235 PKO", 1076 )
	MisBeginTalk( "<t>��� �������� ��������� �� ������� ������. ���������� �� �����, ��� �� ������� �������� ����." )
				
	MisBeginCondition(NoMission, 1076)
	MisBeginCondition(NoRecord,1076)
	MisBeginCondition(HasRecord, 836)
	MisBeginAction(AddMission,1076)
	MisCancelAction(ClearMission, 1076)

	MisNeed(MIS_NEED_DESP, " ���������� � �������-�������� �������� � ������� � �����(1254, 3491)" )
	
	MisHelpTalk( "<t>��� ���������� ���� �� �����������!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5553, "\207\238\241\238\235 PKO", 1076, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�� ������, ��� � ����� �������� ��� � ����� ������� ������!" )
	MisResultCondition(NoRecord, 1076)
	MisResultCondition(HasMission,1076)
	MisResultAction(ClearMission,1076)
	MisResultAction(SetRecord, 1076)

	----------------------------------------------------------����

	DefineMission( 5554, "\207\238\241\238\235 PKO 2", 1077 )
	--MisBeginTalk( "<t>� ����� �����, ��� �� ���� ���������� � ������ � ���� �������� \"���\" �������, �� � ������ ������ ���� ���������� ���� � ����." )
	MisBeginTalk( "<t>\223 \236\238\235\232\235 \193\238\227\238\226, \247\242\238 \225\251 \236\229\237\255 \239\240\229\226\240\224\242\232\235\232 \226 \228\229\240\229\226\238 \226 \242\229\237\232 \234\238\242\238\240\238\227\238 \"\206\237\224\" \237\229\230\232\242\241\255, \237\238 \239 \232\240\238\237\232\232 \241\243\228\252\225\251 \193\238\227\232 \239\240\232\226\240\224\242\232\235\232 \236\229\237\255 \226 \208\251\225\243." )			
	MisBeginCondition(NoMission, 1077)
	MisBeginCondition(NoRecord,1077)
	MisBeginCondition(HasRecord, 1076)
	MisBeginAction(AddMission,1077)
	MisCancelAction(ClearMission, 1077)

	MisNeed(MIS_NEED_DESP, " ������������ � ������ � ����� (1010, 350)" )
	
	MisHelpTalk( "<t>� ���� ������ � ���� " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5555, "\207\238\241\238\235 PKO 2", 1077, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>������! ��� �����!" )
	MisResultCondition(NoRecord, 1077 )
	MisResultCondition(HasMission, 1077 )
	MisResultAction(ClearMission, 1077 )
	MisResultAction(SetRecord, 1077 )

	----------------------------------------------------------����

	DefineMission( 5556, "\207\238\241\238\235 PKO 3", 1078 )
	MisBeginTalk( "<t>�� �� ��������� ���� ���������? ���������� ��� �������." )
				
	MisBeginCondition(NoMission, 1078)
	MisBeginCondition(NoRecord,1078)
	MisBeginCondition(HasRecord, 1077)
	MisBeginAction(AddMission,1078)
	MisCancelAction(ClearMission, 1078)

	MisNeed(MIS_NEED_DESP, " ����� ����� � ������� � �����(2272, 2700)" )
	
	MisHelpTalk( "<t>����� � ������ ����� " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5557, "\207\238\241\238\235 PKO 3", 1078, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>��� ����� ����� �� ������� " )
	MisResultCondition(NoRecord, 1078)
	MisResultCondition(HasMission,1078)
	MisResultAction(ClearMission,1078)
	MisResultAction(SetRecord, 1078)



	----------------------------------------------------------����


	DefineMission( 5558, "\207\238\241\238\235 PKO 4", 1079 )
	MisBeginTalk( "<t>�.. � ������� ������� ������� ��������... ��� ��� ���� ����� �������. �� �� ���� ����� - ������. �� ������ ����." )
				
	MisBeginCondition(NoMission, 1079)
	MisBeginCondition(NoRecord,1079)
	MisBeginCondition(HasRecord, 1078)
	MisBeginAction(AddMission,1079)
	MisCancelAction(ClearMission, 1079)

	MisNeed(MIS_NEED_DESP, " ������������� � ������ �� ������ ������ � �����(664, 3093)" )
	
	MisHelpTalk( "<t>������ ������ ������, �� ��������� ���!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission(5559, "\207\238\241\238\235 PKO 4", 1079, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�� �� �����?!" )
	MisResultCondition(NoRecord, 1079 )
	MisResultCondition(HasMission, 1079 )
	MisResultAction(ClearMission, 1079 )
	MisResultAction(SetRecord, 1079 )


	----------------------------------------------------------����

	DefineMission( 5560, "\207\238\241\238\235 PKO 5", 1080 )
	MisBeginTalk("<t>��� ����� - ��� ������� ������� ��� �� �����!" )
				
	MisBeginCondition(NoMission, 1080)
	MisBeginCondition(NoRecord,1080)
	MisBeginCondition(HasRecord, 1079)
	MisBeginAction(AddMission,1080)
	MisCancelAction(ClearMission, 1080)

	MisNeed(MIS_NEED_DESP, " ���������� � ���� � ������ � �����(2668, 634)" )
	
	MisHelpTalk( "<t>����� - ���� ���������� " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5561, "\207\238\241\238\235 PKO 5", 1080, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>� ���� ���������� ��������� ������ ����!" )
	MisResultCondition(NoRecord, 1080)
	MisResultCondition(HasMission,1080)
	MisResultAction(ClearMission,1080)
	MisResultAction(SetRecord, 1080)


	----------------------------------------------------------����

	DefineMission( 5562, "\207\238\241\238\235 PKO 6", 1081 )
	MisBeginTalk( "<t>����� �������, � ���� ������, ������� ������� ���� � ������ � �����, �������� � ��� �� ���� � �� ������� " )
				
	MisBeginCondition(NoMission, 1081)
	MisBeginCondition(NoRecord,1081)
	MisBeginCondition(HasRecord, 1080)
	MisBeginAction(AddMission,1081)
	MisCancelAction(ClearMission, 1081)

	MisNeed(MIS_NEED_DESP, " ���������� � ������� � ������ � �����(526, 2432)" )
	
	MisHelpTalk( "<t>���������� ���������� � ������." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5563, "\207\238\241\238\235 PKO 6", 1081, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�� - ���� ����? � ��� � ���?" )
	MisResultCondition(NoRecord, 1081)
	MisResultCondition(HasMission,1081)
	MisResultAction(ClearMission,1081)
	MisResultAction(SetRecord, 1081)



	----------------------------------------------------------����

	DefineMission( 5564, "\207\238\241\238\235 PKO 7", 1082 )
	MisBeginTalk( "<t>� ����� ������������ ����������� �� ������ � � ������� ������������� ��� �� ��� ���� ���� ����������, �� ��� �����... � �� ��� ��� �� ���� ������ ��� �� ��, �� ��� �� ��������?" )
				
	MisBeginCondition(NoMission, 1082)
	MisBeginCondition(NoRecord,1082)
	MisBeginCondition(HasRecord, 1081)
	MisBeginAction(AddMission,1082)
	MisCancelAction(ClearMission, 1082)

	MisNeed(MIS_NEED_DESP, " ���������� � ����� � �������(898, 3683)" )
	
	MisHelpTalk( "<t>��� � ���� ��� �� ����� �������� ������� " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5565, "\207\238\241\238\235 PKO 7", 1082, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>� ��� ���������� �������, �� �� ��� ����� � ���� ������������� �� ������������ ����� " )
	MisResultCondition(NoRecord, 1082)
	MisResultCondition(HasMission,1082)
	MisResultAction(ClearMission,1082)
	MisResultAction(SetRecord, 1082)


	----------------------------------------------------------����

	DefineMission( 5566, "\207\238\241\238\235 PKO 8", 1083 )
	MisBeginTalk( "<t>�� ��������� ������� PKO? ������� � ��� ���������� � ����� ���������, ���� ���������� ������� ���!" )
				
	MisBeginCondition(NoMission, 1083)
	MisBeginCondition(NoRecord,1083)
	MisBeginCondition(HasRecord, 1082)
	MisBeginAction(AddMission,1083)
	MisCancelAction(ClearMission, 1083)

	MisNeed(MIS_NEED_DESP, " ���������� � ������ � ������� � �����(1004, 2973)" )
	
	MisHelpTalk( "<t>����� ����� �������... ���... �����...!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission(5567, "\207\238\241\238\235 PKO 8", 1083, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>��� �������� �� ������... �� �� ����� � ���� ����!" )
	MisResultCondition(NoRecord, 1083)
	MisResultCondition(HasMission,1083)
	MisResultAction(ClearMission,1083)
	MisResultAction(SetRecord, 1083)


	----------------------------------------------------------����

	DefineMission( 5568, "\207\238\241\238\235 PKO 9", 1084 )
	MisBeginTalk( "<t>��������� ��� ���, � �������� � �� ����." )
				
	MisBeginCondition(NoMission, 1084)
	MisBeginCondition(NoRecord,1084)
	MisBeginCondition(HasRecord, 1083)
	MisBeginAction(AddMission,1084)
	MisCancelAction(ClearMission, 1084)

	MisNeed(MIS_NEED_DESP, " ������������� � ������ � ���������� � ��� ���(797, 3129)" )
	
	MisHelpTalk( "<t>� ����, ��� �� �� ������� �� ����." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5569, "\207\238\241\238\235 PKO 9", 1084, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>������ - ����� � ����� ��������, �� ������� �������!" )
	MisResultCondition(NoRecord, 1084)
	MisResultCondition(HasMission,1084)
	MisResultAction(ClearMission,1084)
	MisResultAction(SetRecord, 1084)

	----------------------------------------------------------����

	DefineMission( 5572, "\207\238\241\238\235 PKO 10", 1086 )
	MisBeginTalk( "<t>�� �������� ������ �� ����� � ����� ���� �������, � ��� - ��������, � ���� ���� ����������� �� ����, � ���� � ����������." )
				
	MisBeginCondition(NoMission, 1086)
	MisBeginCondition(NoRecord,1086)
	MisBeginCondition(HasRecord, 1084)
	MisBeginAction(AddMission,1086)
	MisCancelAction(ClearMission, 1086)

	MisNeed(MIS_NEED_DESP, " ����� �������� � ������ ��������(616, 965)" )
	
	MisHelpTalk( "<t>������������� �����... ������������� �����...." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5573, "\207\238\241\238\235 PKO 10", 1086, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>���� ���������� �� ����? ��� ���������." )
	MisResultCondition(NoRecord, 1086)
	MisResultCondition(HasMission,1086)
	MisResultAction(ClearMission,1086)
	MisResultAction(SetRecord, 1086)

	----------------------------------------------------------����

	DefineMission( 5574, "\207\238\241\238\235 PKO 11", 1087 )
	MisBeginTalk( "<t>���� ��� �����! �� ������, �� �����������... �� ���������� �� �� �������� ����?" )
				
	MisBeginCondition(NoMission, 1087)
	MisBeginCondition(NoRecord,1087)
	MisBeginCondition(HasRecord, 1086)
	MisBeginAction(AddMission,1087)
	MisCancelAction(ClearMission, 1087)

	MisNeed(MIS_NEED_DESP, " ����� �������� � ����_�����(808, 1521)" )
	
	MisHelpTalk( "<t>� ���� ������ ��� ������� " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5575, "\207\238\241\238\235 PKO 11", 1087, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>� ������� �� �������� ����������� �� �������� �������, �� �� " )
	MisResultCondition(NoRecord, 1087)
	MisResultCondition(HasMission,1087)
	MisResultAction(ClearMission,1087)
	MisResultAction(SetRecord, 1087)

	----------------------------------------------------------����

	DefineMission( 5576, "\207\238\241\238\235 PKO 12", 1088 )
	MisBeginTalk( "<t>� ������ ����������� � ���� � �������. �� ������� ��, ��� � �������� � �� ����� � ��� �����������. � � ����� ����� ���������� � �����." )
				
	MisBeginCondition(NoMission, 1088)
	MisBeginCondition(NoRecord,1088)
	MisBeginCondition(HasRecord, 1087)
	MisBeginAction(AddMission,1088)
	MisCancelAction(ClearMission, 1088)

	MisNeed(MIS_NEED_DESP, " �������� ���� � ������� � (1209, 3196)" )
	
	MisHelpTalk( "<t>����������� ����� ���� ��� ���������� ���� �������� ��. � ��� ���������� ��������..." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5577, "\207\238\241\238\235 PKO 12", 1088, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�� ��������? �� �������� ��� ������? ������ �������, ������ ��� ����� �� ��� ��������, ����� ������� � �������..." )
	MisResultCondition(NoRecord, 1088)
	MisResultCondition(HasMission,1088)
	MisResultAction(ClearMission,1088)
	MisResultAction(SetRecord, 1088)


	----------------------------------------------------------����

	DefineMission( 5578, "\207\238\241\238\235 PKO 13", 1089 )
	MisBeginTalk( "<t>��� ���� �� ���� ��������� ��������, �� ��������� ����� ����� �� ���������???" )
				
	MisBeginCondition(NoMission, 1089)
	MisBeginCondition(NoRecord,1089)
	MisBeginCondition(HasRecord, 1088)
	MisBeginAction(AddMission,1089)
	MisCancelAction(ClearMission, 1089)

	MisNeed(MIS_NEED_DESP, " ���������� � ����� � ������� � (1893, 2812)" )
	
	MisHelpTalk( "<t>����� ������ ������... � � ���� ������ �������." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5579, "\207\238\241\238\235 PKO 13", 1089, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>��... �������� ������� �������, �������, �������, �� �� ��� �� ������� ������ � ��� ������� ������!" )
	MisResultCondition(NoRecord, 1089)
	MisResultCondition(HasMission,1089)
	MisResultAction(ClearMission,1089)
	MisResultAction(SetRecord, 1089)

	----------------------------------------------------------����

	DefineMission( 5580, "\207\238\241\238\235 PKO 14", 1090 )
	MisBeginTalk( "<t>�����, ������� ���� ����� ��� ����� �����, � �������� � ���� ����." )
				
	MisBeginCondition(NoMission, 1090)
	MisBeginCondition(NoRecord,1090)
	MisBeginCondition(HasRecord, 1089)
	MisBeginAction(AddMission,1090)
	MisCancelAction(ClearMission, 1090)

	MisNeed(MIS_NEED_DESP, " ���������� � ����� � ������ � (1380, 523)" )
	
	MisHelpTalk( "<t>���� ���� � ������!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����
       
	DefineMission( 5581, "\207\238\241\238\235 PKO 14", 1090, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>������ ��� �� �����, � ��� ���� ��� ������� �������� ���� �� ����� � ��������, ���� ���� ������ �������� ����� � ���� �������." )
	MisResultCondition(NoRecord, 1090)
	MisResultCondition(HasMission,1090)
	MisResultAction(ClearMission,1090)
	MisResultAction(SetRecord, 1090)

	----------------------------------------------------------����

	DefineMission( 5582, "\207\238\241\238\235 PKO 15", 1091 )
	MisBeginTalk( "<t>� ���� ����� ����, ��������� ���� ���� �� ����� ���� � � �� �������� ���� � ����� ���!" )
				
	MisBeginCondition(NoMission, 1091)
	MisBeginCondition(NoRecord,1091)
	MisBeginCondition(HasRecord, 1090)
	MisBeginAction(AddMission,1091)
	MisCancelAction(ClearMission, 1091)

	MisNeed(MIS_NEED_DESP, "���������� � ��� ����� � �������(1113, 2779)" )
	
	MisHelpTalk( "<t>��� �� �� ������ ���������� �����, ��� ����� ����� ���� �� ��� �� ���������� �����!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5583, "\207\238\241\238\235 PKO 15", 1091, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>���� ��������? ���� �����? ��� ��� �������, ��� �� ������ ��?" )
	MisResultCondition(NoRecord, 1091)
	MisResultCondition(HasMission,1091)
	MisResultAction(ClearMission,1091)
	MisResultAction(SetRecord, 1091)


	----------------------------------------------------------����

	DefineMission( 5584, "\207\238\241\238\235 PKO 16", 1092 )
	MisBeginTalk( "<t>�� ����, ����, ������ ���� �� �� ��� �������." )
				
	MisBeginCondition(NoMission, 1092)
	MisBeginCondition(NoRecord,1092)
	MisBeginCondition(HasRecord, 1091)
	MisBeginAction(AddMission,1092)
	MisCancelAction(ClearMission, 1092)

	MisNeed(MIS_NEED_DESP, " ������������� � ������ � �����(2134, 555)" )
	
	MisHelpTalk( "<t>� �������, ��� ������ ������!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5585, "\207\238\241\238\235 PKO 16", 1092, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>���� �� � ���� ��������� ��� ������ ��������� �����..." )
	MisResultCondition(NoRecord, 1092)
	MisResultCondition(HasMission,1092)
	MisResultAction(ClearMission,1092)
	MisResultAction(SetRecord, 1092)


	----------------------------------------------------------����

	DefineMission( 5586, "\207\238\241\238\235 PKO 17", 1093 )
	MisBeginTalk( "<t>��������� ������...��������� ������...��������� ������..." )
				
	MisBeginCondition(NoMission, 1093)
	MisBeginCondition(NoRecord,1093)
	MisBeginCondition(HasRecord, 1092)
	MisBeginAction(AddMission,1093)
	MisCancelAction(ClearMission, 1093)

	MisNeed(MIS_NEED_DESP, "������� ������� � ������� � �����(1535, 3071)" )
	
	MisHelpTalk( "<t>����� ������� �� �������. �� ������ ������� " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5587, "\207\238\241\238\235 PKO 17", 1093, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>� ���� ��� ������� �� ������� �� ��������, � ��-�� �� �������� � ���� ������ �� ����������..." )
	MisResultCondition(NoRecord, 1093)
	MisResultCondition(HasMission,1093)
	MisResultAction(ClearMission,1093)
	MisResultAction(SetRecord, 1093)

	----------------------------------------------------------����

	DefineMission( 5588, "\207\238\241\238\235 PKO 18", 1094 )
	MisBeginTalk( "<t>�� ���� ���������� ������ ��-�� ���������� ���, � �� ���� ���� ��������� <b����>, �� ��������� <b����> �� ����� �����." )
				
	MisBeginCondition(NoMission, 1094)
	MisBeginCondition(NoRecord,1094)
	MisBeginCondition(HasRecord, 1093)
	MisBeginAction(AddMission,1094)
	MisCancelAction(ClearMission, 1094)

	MisNeed(MIS_NEED_DESP, "���������� � <b�����> � ������(798, 369)" )
	
	MisHelpTalk( "<t>� ������ � �� �� ��������� �� ������ ����������� � ����." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5589, "\207\238\241\238\235 PKO 18", 1094, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>� ����� ������ " )
	MisResultCondition(NoRecord, 1094)
	MisResultCondition(HasMission,1094)
	MisResultAction(ClearMission,1094)
	MisResultAction(SetRecord, 1094)

	----------------------------------------------------------����

	DefineMission( 5590, "\207\238\241\238\235 PKO 19", 1095 )
	MisBeginTalk( "<t>� ��� �����. ����� �����. �� �������� ���? ��������� �� ��������� <b����>." )
				
	MisBeginCondition(NoMission, 1095)
	MisBeginCondition(NoRecord,1095)
	MisBeginCondition(HasRecord, 1094)
	MisBeginAction(AddMission,1095)
	MisCancelAction(ClearMission, 1095)

	MisNeed(MIS_NEED_DESP, " ����� ���� �  (622, 2106)" )
	
	MisHelpTalk( "<t>����� - ����� ������� ���� ���� ����� � �������!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission(5591, "\207\238\241\238\235 PKO 19", 1095, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�� �������! �� " )
	MisResultCondition(NoRecord, 1095)
	MisResultCondition(HasMission,1095)
	MisResultAction(ClearMission,1095)
	MisResultAction(SetRecord, 1095)


-------------------------------------------------------------------------------����

	DefineMission( 5592, "\207\238\241\238\235 PKO 20", 1096 )
	MisBeginTalk( "<t>������� � ��� � ���� � �� ��� ������ ������� ��������, � ���� �� �� ��� ������ �������, � �� � ���� ������ �� ������������, ���������� ������� ��� ��� ��� ������� �� ����." )
				
	MisBeginCondition(NoMission, 1096)
	MisBeginCondition(NoRecord,1096)
	MisBeginCondition(HasRecord, 1095)
	MisBeginAction(AddMission,1096)
	MisCancelAction(ClearMission, 1096)

	MisNeed(MIS_NEED_DESP, " ������������� ����������� �������� � (690, 1043)" )
	
	MisHelpTalk( "<t>�������, ����� ��, �����." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5593, "\207\238\241\238\235 PKO 20", 1096, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>��... ��� ���� ����� �����... � ������� � ������, ��� �� ��� ��� ������!" )
	MisResultCondition(NoRecord, 1096)
	MisResultCondition(HasMission,1096)
	MisResultAction(ClearMission,1096)
	MisResultAction(SetRecord, 1096)

----------------------------------------------------------����

	DefineMission( 5594, "\207\238\241\238\235 PKO 21", 1097 )
	MisBeginTalk( "<t>������ ���� �������������? ������ ���������� � ������������ �� ����, �� ��� ������ ��� ���, �� �����, �� ������ ��� ��������� ��� ���." )
				
	MisBeginCondition(NoMission, 1097)
	MisBeginCondition(NoRecord,1097)
	MisBeginCondition(HasRecord, 1096)
	MisBeginAction(AddMission,1097)
	MisCancelAction(ClearMission, 1097)

	MisNeed(MIS_NEED_DESP, " ���������� � �������� ������������ �(474, 1054)" )
	
	MisHelpTalk( "<t>����� ����� ������..." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5595, "\207\238\241\238\235 PKO 21", 1097, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>��� �� ��������... � � ������ ����� �����... �� � ����." )
	MisResultCondition(NoRecord, 1097)
	MisResultCondition(HasMission,1097)
	MisResultAction(ClearMission,1097)
	MisResultAction(SetRecord, 1097)

	----------------------------------------------------------����

	DefineMission( 5596, "\195\229\240\238\233 PKO 22", 1098 )
	MisBeginTalk( "<t>����������! �� �������� ����������� �� ���� �������, � ������ ��� ����<b�����>." )
				
	MisBeginCondition(NoMission, 1098)
	MisBeginCondition(NoRecord,1098)
	MisBeginCondition(HasRecord, 1097)
	MisBeginAction(AddMission,1098)
	MisCancelAction(ClearMission, 1098)

	MisNeed(MIS_NEED_DESP, " ��������� � ���������� � ����� � (740, 1451)" )
	
	MisHelpTalk("<t>I am the one in debt at this time of the year")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------����

	DefineMission( 5597, "\195\229\240\238\233 PKO 22", 1098, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>����������! �� ������ ���� PKO, ��� ���� �������!" )
	MisResultCondition(NoRecord, 1098)
	MisResultCondition(HasMission,1098)
	MisResultAction(ClearMission,1098)
	MisResultAction(SetRecord, 1098)
	MisResultAction(GiveItem, 2949, 1, 4)
	MisResultBagNeed(1)




	

	-------------------------------------------------����	

	DefineMission( 5600, "\209\239\229\246\232\224\235\252\237\224\255 \206\239\229\240\224\246\232\255 - \206\226\229\237", 1101 )
	
	MisBeginTalk( "<t>��� ������� �� ������� �������: <r����� 99 ��������� ������ �� 15 �����>. �������� � ��, ��� �� �������� ����." )

	MisBeginCondition(NoMission,1101)
	MisBeginCondition(NoRecord,1101)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(HasRecord,1071)
	MisBeginCondition(HasRecord,1072)
	MisBeginCondition(HasRecord,1073)
	MisBeginCondition(HasRecord,1074)
	MisBeginCondition(HasRecord,1075)
	MisBeginCondition(HasRecord,1065)
	MisBeginCondition(HasRecord,1098)
	MisBeginAction(AddMission,1101)
	MisBeginAction(AddChaItem3, 2952)---------����� ����������� ��������
	MisBeginAction(AddTrigger, 11011, TE_KILL, 75, 99 )
	MisCancelAction(ClearMission, 1101)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_KILL, 75, 99, 1, 99)

	MisHelpTalk( "<t>������������! � ��� ����� 15 ����� �� �� ��� ��!" )
	MisResultTalk( "<t>���������, ���� ������." )


	MisResultCondition(HasMission, 1101)
	MisResultCondition(NoRecord,1101)
	MisResultCondition(HasFlag, 1101, 99 )
	MisResultAction(AddChaItem4, 2952)----����� ����������� ��������
	MisResultAction(ClearMission, 1101)
	MisResultAction(SetRecord,  1101 )
	MisResultAction(GiveItem, 2955, 1, 4)------------������ � ����������� �������� ����
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 1101, 1, 99 )
	RegCurTrigger( 11011 )





	----------------------------------------------------------������ ������ ������

	DefineMission( 5601, "\212\240\243\234\242\251 \196\243\240\224\234\224 \224\239\240\229\235\255", 1102 )

	MisBeginTalk( "<t>������� - ���� ������! � ����� ������ � ���� ����. �� ���� ���������? ������, ������� ���������� ������. ��� ��� ������ ������: �������� 99 ���������� �������!" )
	MisBeginCondition(NoRecord, 1102)
	MisBeginCondition(NoMission, 1102)
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginAction(AddMission, 1102)
	MisBeginAction(AddTrigger, 11021, TE_GETITEM, 3116, 100 )		
	MisCancelAction(ClearMission, 1102)
	
	MisNeed(MIS_NEED_ITEM, 3116, 100, 10, 100)

	MisResultTalk( "<t>�� ������ ��� �����, �� ��������� ������� �� ����." )
	MisHelpTalk( "<t>�� ���������, ����� � ��� ��������� � ���������� ���������� �������!" )
	MisResultCondition(HasMission, 1102)
	MisResultCondition(HasItem, 3116, 100 )
	MisResultAction(TakeItem, 3116, 100 )
	MisResultAction(ClearMission, 1102)
	MisResultAction(SetRecord, 1102 )
	MisResultAction(GiveItem, 2953, 1, 4)------------��������������� �������
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1102, 10, 100 )
	RegCurTrigger( 11021 )



	------------------------------------------------------������ ��������

	DefineMission( 5602, "\195\235\243\239\224\255 \217\229\228\240\238\241\242\252", 1103)

	MisBeginTalk( "<t>� ����� �� ����� � ����� � ��� ������� �����, � ���� ����� ��� �� ��������, � ����� �� ����������� ���. ����� ��� 1.000.000 ������! �����. ������!" )
	MisBeginCondition(NoRecord, 1103)
	MisBeginCondition(HasRecord, 1102)
	MisBeginCondition(NoMission, 1103)
	MisBeginAction(AddMission, 1103)	
	MisCancelAction(ClearMission, 1103)
	
	MisResultTalk( "<t>�� ������� � ��� ��� �����?! �� �� ��... �� ������� �������!" )
	MisHelpTalk( "<t>�� �� ����������, � ����� ����� �� ���� ��� ������� ��� ��������?" )
	MisResultCondition(HasMission, 1103)
	MisResultCondition(HasMoney, 1000000 )
	MisResultAction(TakeMoney, 1000000 )
	MisResultAction(ClearMission, 1103)
	MisResultAction(SetRecord, 1103 )



	------------------------------------------------------������ ������

	DefineMission( 5603, "\195\235\243\239\224\255 \209\236\229\240\242\252", 1104 )

	MisBeginTalk( "<t>�� ����� �������! �� � ��! ������ ���� ����� �������... ������! ��� �� � ��� ����� ������? � ���! ��������, ������ 50 ��� �� ��� <r������� �.�����> � ����� � ��� ����� ���� ������. ���� ������� �� ���������� � 5 ���." )
	MisBeginCondition(NoRecord, 1104)
	MisBeginCondition(HasRecord, 1103)
	MisBeginCondition(NoMission, 1104)
	MisBeginCondition(HaveNoItem, 2954)
	MisBeginAction(AddMission, 1104)	
	MisBeginAction(GiveItem, 2954, 1, 4)------------�������������� ������
	MisCancelAction(ClearMission, 1104)
	MisBeginBagNeed(1)
	
	MisResultTalk( "<t>�� �� � �������... ��-��-��-��... � ���� � �� ������ 100��� ������� �� ��� �������� � �������, �� �� ������ ��� �������?" )
	MisHelpTalk( "<t>�� ��� ��� ����� �������? ��� �� ����!" )
	MisResultCondition(HasMission, 1104)
	MisResultCondition(CheckPoint, 2954 )
	MisResultAction(TakeItem, 2954,1,4)
	MisResultAction(GiveItem, 0853,1,4)--������ ���������� �����
	MisResultAction(ClearMission, 1104)
	MisResultAction(SetRecord, 1104 )
	MisResultBagNeed(1)


----------------------------------------------------

	DefineMission( 6015, "\202\242\238 \242\224\234\238\233 \195\243\224\240\228\232\237", 1013, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk( "<t>� ���� ��������� �������� ��-�� ����������!" )
	MisResultCondition(NoRecord, 1013)
	MisResultCondition(HasMission, 1013)
	MisResultAction(SetRecord, 1013)
	MisResultAction(ClearMission, 1013)

----------------------------------------------------������

	DefineMission( 6016, "\198\229\241\242\234\232\233? \200\235\232 \237\229\239\240\232\255\242\237\251\233?", 1014 )
	MisBeginTalk( "<t>���� � ������������ �� ����� ����� �����. ���������� � �������." )
	MisBeginCondition(NoRecord, 1014)
	MisBeginCondition(NoMission, 1014)
	MisBeginCondition(HasRecord, 1013)
	MisBeginAction(AddMission, 1014)
	MisCancelAction(ClearMission, 1014)

	MisNeed(MIS_NEED_DESP, "<t>����� ����� ����� ������� ")
	MisHelpTalk( "<t>����� � � �������." )

	MisResultCondition(AlwaysFailure)



-----------------------------------------------------������

	DefineMission( 6017, "\198\229\241\242\234\232\233? \200\235\232 \240\224\231\228\240\224\230\224\254\249\232\233?", 1014, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>�� ������� � ���� ������? ���� � �������� �� ����������� ��� ��� ����� ������ ����� " )
	MisResultCondition(NoRecord, 1014)
	MisResultCondition(HasMission, 1014)
	MisResultCondition(HasRecord, 1059)
	MisResultAction(ClearMission, 1014)
	MisResultAction(SetRecord, 1014)

-----------------------------------------------------������

	DefineMission( 6018, "\207\240\238\228\238\235\230\232\242\229 \207\229\240\229\240\238\230\228\229\237\232\255", 1017 )--���������� ������������
	MisBeginTalk( "<t>�� ������� ���� ����. ����� �����. �� ������� ���." )
	MisBeginCondition(NoRecord, 1017)
	MisBeginCondition(NoMission, 1017)
	MisBeginCondition(HasRecord, 1014)
	MisBeginAction(AddMission, 1017)
	MisCancelAction(ClearMission, 1017)

	MisNeed(MIS_NEED_DESP, "<t>���������� � ������ " )
	MisHelpTalk( "<t>���������� � ������." )

	MisResultCondition(AlwaysFailure)

----------------------------------------------------������

	DefineMission( 6019, "\207\240\238\228\238\235\230\232\242\229 \207\229\240\229\240\238\230\228\229\237\232\255", 1017, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure)
	MisResultTalk( "<t>�� ������� ���� ����? ��������� ��� ����������!" )
	MisResultCondition(NoRecord, 1017)
	MisResultCondition(HasMission, 1017)
	MisResultAction(ClearMission, 1017)
	MisResultAction(SetRecord, 1017)

-----------------------------------------------------������---������� ����

	DefineMission( 6020, "\210\240\243\228\237\251\229 \239\243\242\252", 1018 )
	MisBeginTalk( "<t>��� ��� �� ������� ������ ���� � ������������, � ��� ���� ��������." )
	MisBeginCondition(NoRecord,1000)
	MisBeginCondition(HasRecord,1017)
	MisBeginCondition(HasRecord,1015)
	MisBeginCondition(NoRecord,1018)
	MisBeginCondition(NoMission,1018)
	MisBeginAction(AddMission,1018)
	MisBeginAction(AddTrigger, 10181, TE_KILL,678, 1)--����� �������� ����
	MisBeginAction(AddTrigger, 10182, TE_KILL,679, 1)--���������� ����
	MisBeginAction(AddTrigger, 10183, TE_KILL,789, 1)--������ ������
	MisCancelAction(ClearMission,1018)

	MisNeed(MIS_NEED_DESP, " ��� ����� ����� ��� �� �����: <r����� �������� ����>, <r���������� ����>, <r������� �������>." )
	MisNeed(MIS_NEED_KILL, 678, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 679, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 789, 1, 30, 1)

	MisHelpTalk( "<t>������ ������, ����� ������!" )
	MisResultTalk("<t>�! �� ��������, �� ��� � ���� ��� - ����, �� ��������� �����!" )
	MisResultCondition(HasMission,1018)
	MisResultCondition(NoRecord,1018)
	MisResultCondition(HasFlag, 1018, 10)
	MisResultCondition(HasFlag, 1018, 20)
	MisResultCondition(HasFlag, 1018, 30)
	MisResultAction(SetRecord,1018)
	MisResultAction(SetRecord,1056)
	MisResultAction(ClearMission,1018)
	MisResultAction(GiveItem, 2229, 1, 4)
	MisResultAction(GiveItem, 2230, 1, 4)
	MisResultAction(GiveItem, 2231, 1, 4)
	MisResultAction(GiveItem, 2232, 1, 4)
	MisResultAction(GiveItem, 2233, 1, 4)
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1018, 10, 1 )
	RegCurTrigger( 10181 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1018, 20, 1 )
	RegCurTrigger( 10182 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1018, 30, 1 )
	RegCurTrigger( 10183 )

------------------------------------------------������

	DefineMission( 6021, "\194\240\229\236\255 \194\251\231\238\226\224", 1019 )
	MisBeginTalk( "<t>�� ������ ������ � ������ ���� � ������������, �� ������ ������ ���������� �� 30 ����� � ������������ ��� �������!" )
	MisBeginCondition( NoRecord, 1000)
	MisBeginCondition( NoRecord, 1019)
	MisBeginCondition( NoMission, 1019)
	MisBeginCondition( HasRecord, 1017)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1019)
	MisCancelAction(ClearMission,1019)

	MisNeed(MIS_NEED_DESP, " � ��� 30 ����� " )

	MisHelpTalk( "<t>���� �� ������� <b������ �������> ����� ������ 1800 ������ - ��� ������, ��� �� ����������!" )
	MisResultTalk( "<t>��� - ���, ������!" )
	MisResultCondition( HasItem, 2912, 1)--������ �������
	MisResultCondition( LessTime, 1800)
	MisResultCondition( NoRecord, 1019)
	MisResultCondition( HasMission, 1019)
	MisResultAction( SetRecord, 1019)
	MisResultAction( ClearMission, 1019)


----------------------------------------------������

	DefineMission( 6022, "\194\240\229\236\255 \194\251\231\238\226\224", 1020 )
	MisBeginTalk( "<t>������ ������, �� ��� ��� ����� - \"��������� � ��� ��������, ��� �� ��������� � 8\"." )
	MisBeginCondition( NoRecord, 1020)
	MisBeginCondition( NoMission, 1020)
	MisBeginCondition( HasRecord, 1019)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1020)
	MisCancelAction( ClearMission, 1020)

	MisNeed(MIS_NEED_DESP, " �� ������ ��������� ����� 7 � 8 ������!" )

	MisHelpTalk( "<t>������� � <b������ �������> ������ ���� ������ 25200 ������ �  28800 ������. ���� ����� ������ ��� ������ - �� �� ������� �������!" )
	MisResultTalk( "<t>�� �� �������� �����������? ����� �� �����!" )
	MisResultCondition( MoreTime, 25200)
	MisResultCondition( LessTime, 28800)
	MisResultCondition( NoRecord, 1020)
	MisResultCondition( HasMission, 1020)
	MisResultAction( SetRecord, 1020)
	MisResultAction( ClearMission, 1020)



-------------------------------------------------������

	DefineMission( 6023, "\194\240\229\236\255 \194\251\231\238\226\224", 1021 )
	MisBeginTalk( "<t>���������� ��� ���. �� ������ ������ ��������� ������� ����� 5 ������ � 5.5 �����." )
	MisBeginCondition( NoRecord, 1021)
	MisBeginCondition( NoMission, 1021)
	MisBeginCondition( HasRecord, 1020)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1021)
	MisCancelAction( ClearMission, 1021)

	MisNeed(MIS_NEED_DESP, " � ��� �� �� ��� �� 30 ����� " )

	MisHelpTalk( "<t>���� �� ������� <b������ �������> ����� ������ 1800 ������ - ��� ������, ��� �� ����������!" )
	MisResultTalk( "<t>� ���� ���� �������������!" )
	MisResultCondition( LessTime, 19800)
	MisResultCondition( MoreTime, 18000)
	MisResultCondition( NoRecord, 1021)
	MisResultCondition( HasMission, 1021)

	MisResultAction( SetRecord, 1021)
	MisResultAction( ClearMission, 1021)

-----------------------------------------------������

	DefineMission( 6024, "\207\238\241\232\249\229\237\232\229 \206\239\229\234\243\237\224 \195\240\238\236-\195\240\224\228\224", 1022 )
	MisBeginTalk( "<t>������ � ����� ����-�����, �������� ���." )
	MisBeginCondition( NoRecord, 1022)
	MisBeginCondition( NoMission, 1022)
	MisBeginCondition( HasRecord, 1021)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1022)
	MisCancelAction( ClearMission, 1022)

	MisNeed(MIS_NEED_DESP, " ����� ������� � ����-����� " )
	MisHelpTalk( "<t>����� ������� � ����-����� " )

	MisResultCondition(AlwaysFailure)

-------------------------------------------------������

	DefineMission( 6025, "\207\238\241\232\249\229\237\232\229 \206\239\229\234\243\237\224 \195\240\238\236-\195\240\224\228\224", 1022, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk( "<t>�� - ������� �����!" )
	MisResultCondition( NoRecord, 1022)
	MisResultCondition( HasMission, 1022)
	MisResultAction( SetRecord, 1022)
	MisResultAction( ClearMission, 1022)
--
---------------------------------------------------�������� �� ������ ����

	DefineMission( 6026, "\209\240\224\230\229\237\232\229 \226\238 \196\226\240\238\246\229 \206\226\237\224", 1023)
	MisBeginTalk( "<t>������ ������� ������ ���������! �������� � ����� � ����� ������ ����!" )
	MisBeginCondition( NoRecord, 1023)
	MisBeginCondition( NoMission, 1023)
	MisBeginCondition( HasRecord, 1022)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1023)
	MisBeginAction(AddTrigger, 10231, TE_GETITEM, 2942, 1 )--������ ����
	MisCancelAction( ClearMission, 1023)

	MisNeed(MIS_NEED_DESP, " ������ ����� � ������ ���� � ��������� ������ ���� � ����-���� ���." )
	MisNeed(MIS_NEED_ITEM, 2942, 1, 10 ,1)

	MisHelpTalk( "<t>���������� � ������ ����, ��� �� ���������������� ����." )
	MisResultTalk( "<t>�� ������������� ���������!" )
	MisResultCondition( HasItem, 2942, 1)
	MisResultCondition( BaiyangOn )
	MisResultAction( SetRecord, 1023)
	MisResultAction( ClearMission, 1023)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2942)	
	TriggerAction( 1, AddNextFlag, 1023, 10, 1 )
	RegCurTrigger( 10231 )

----------------------------------------------------

	DefineMission( 6027, "\207\238\241\229\242\232\242\229 \238\239\229\234\243\237\224 \216\224\233\242\224\237\224", 1024 )
	MisBeginTalk( "<t>����� ���������� ������� � �������� ������." )
	MisBeginCondition( NoRecord, 1024)
	MisBeginCondition( NoMission, 1024)
	MisBeginCondition( HasRecord, 1023)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1024)
	MisCancelAction( ClearMission, 1024)

	MisNeed(MIS_NEED_DESP, " �������� ������� ������ �������." )
	MisHelpTalk( "<t>������������� � ������." )
	
	MisResultCondition(AlwaysFailure)

-------------------------------------------------------�������� ������� �������

	DefineMission( 6028, "\207\238\241\229\242\232\242\229 \238\239\229\234\243\237\224 \216\224\233\242\224\237\224", 1024, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>���� � � �� ������� �������, �� ����������� ����!" )
	MisResultCondition( NoRecord, 1024)
	MisResultCondition( HasMission, 1024)
	MisResultAction( SetRecord, 1024)
	MisResultAction( ClearMission, 1024)

-----------------------------------------------------------------------------������������ �����������

	DefineMission( 6029, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1025 )
	MisBeginTalk( "<t>� ��� ���� �������, �������� �� �� ����� �������? ��������� ��� ���������� ��� �������, ������ ���������� � �����������. �� �������������� � ������� ������ �� ����� ������ �����������, ��� ����� �������� �� ���� ���������, � ���� � ��� � �� �����. ��� ������ �� ������� � ���� ��������. ������������ � ������ � ������ � ������� �������." )
	MisBeginCondition( NoMission, 1025)
	MisBeginCondition( NoRecord, 1025)
	MisBeginCondition( HasRecord, 1024)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1025)
	MisCancelAction( ClearMission, 1025)

	MisNeed(MIS_NEED_DESP, " ����� ������ � ����, �� ���� ��������� ������ ���� �� ������ 500." )
	MisHelpTalk( "<t>������� ����� ����� � ���� " )

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------������������ �����������

	DefineMission( 6030, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1025, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ����������!" )
	MisResultCondition( NoRecord, 1025)
	MisResultCondition( HasMission, 1025)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1025)
	MisResultAction( ClearMission, 1025)

----------------------------------------------------------������������ �����������

	DefineMission( 6031, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1026 )
	MisBeginTalk( "<t>��������� ��������� - ���� ������. ������� ������� � ����." )
	MisBeginCondition( NoMission, 1026)
	MisBeginCondition( NoRecord, 1026)
	MisBeginCondition( HasRecord, 1025)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1026)
	MisCancelAction( ClearMission, 1026)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ���������!" )
	MisHelpTalk( "<t>������� ����� ����� � ���� ������." )

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------������������ �����������

	DefineMission( 6032, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1026, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ����������!" )
	MisResultCondition( NoRecord, 1026)
	MisResultCondition( HasMission, 1026)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1026)
	MisResultAction( ClearMission, 1026)

------------------------------------------------------------������������ �����������

	DefineMission( 6033, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1027 )
	MisBeginTalk( "<t>��������� ��������� -  ���������. ����� �����." )
	MisBeginCondition( NoMission, 1027)
	MisBeginCondition( NoRecord, 1027)
	MisBeginCondition( HasRecord, 1026)
	MisBeginCondition( HasRecord, 1016)
 	MisBeginAction( AddMission,1027)
	MisCancelAction( ClearMission, 1027)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ��������� " )
	MisHelpTalk( "<t>����� ����� � ������. �� ������� ����� ����� " )

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------������������ �����������

	DefineMission( 6034, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1027, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ����������!" )
	MisResultCondition( NoRecord, 1027)
	MisResultCondition( HasMission, 1027)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1027)
	MisResultAction( ClearMission, 1027)

-------------------------------------------------------------������������ �����������

	DefineMission( 6035, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1028 )
	MisBeginTalk( "<t>������������� � ��������. ���������� � ����������� �����." )
	MisBeginCondition( NoMission, 1028)
	MisBeginCondition( NoRecord, 1028)
	MisBeginCondition( HasRecord, 1027)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1028)
	MisCancelAction( ClearMission, 1028)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ��������� " )
	MisHelpTalk( "<t>������������� � �������� " )

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------������������ �����������

	DefineMission( 6036, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1028, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ���������� " )
	MisResultCondition( NoRecord, 1028)
	MisResultCondition( HasMission, 1028)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1028)
	MisResultAction( ClearMission, 1028)

-----------------------------------------------------------------������������ �����������

	DefineMission( 6037, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1029 )
	MisBeginTalk( "<t>������������� � ����� � ������ " )
	MisBeginCondition( NoMission, 1029)
	MisBeginCondition( NoRecord, 1029)
	MisBeginCondition( HasRecord, 1028)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1029)
	MisCancelAction( ClearMission, 1029)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ��������� " )
	MisHelpTalk( "<t>��� ��� ������ � ������ " )

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------������������ �����������

	DefineMission( 6038, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1029, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ���������� " )
	MisResultCondition( NoRecord, 1029)
	MisResultCondition( HasMission, 1029)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1029)
	MisResultAction( ClearMission, 1029)

--------------------------------------------------------------������������ �����������

	DefineMission( 6039, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1030 )
	MisBeginTalk( "<t>����� ���� � ������!" )
	MisBeginCondition( NoMission, 1030)
	MisBeginCondition( NoRecord, 1030)
	MisBeginCondition( HasRecord, 1029)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1030)
	MisCancelAction( ClearMission, 1030)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ��������� " )
	MisHelpTalk( "<t>���� ��� ��� � ������� ���� " )

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------������������ �����������

	DefineMission( 6040, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1030, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ���������� " )

	MisResultCondition( NoRecord, 1030)
	MisResultCondition( HasMission, 1030)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1030)
	MisResultAction( ClearMission, 1030)

----------------------------------------------------------------������������ �����������

	DefineMission( 6041, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1031 )
	MisBeginTalk( "<t>��������� ��������� � ��������� ����� " )
	MisBeginCondition( NoMission, 1031)
	MisBeginCondition( NoRecord, 1031)
	MisBeginCondition( HasRecord, 1030)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1031)
	MisCancelAction( ClearMission, 1031)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ��������� " )
	MisHelpTalk( "<t>������ ��� ��� � ��������� ����� " )

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------������������ �����������

	DefineMission( 6042, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1031, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ���������� " )
	MisResultCondition( NoRecord, 1031)
	MisResultCondition( HasMission, 1031)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1031)
	MisResultAction( ClearMission, 1031)

----------------------------------------------------------------������������ �����������

	DefineMission( 6043, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1032 )
	MisBeginTalk( "<t>������������� � �����, ��� ��� ��� � ������� ������� " )
	MisBeginCondition( NoMission, 1032)
	MisBeginCondition( NoRecord, 1032)
	MisBeginCondition( HasRecord, 1031)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1032)
	MisCancelAction( ClearMission, 1032)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ��������� " )
	MisHelpTalk( "<t>����� � ������� ������� " )

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------------������������ �����������

	DefineMission( 6044, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1032, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ���������� " )
	MisResultCondition( NoRecord, 1032)
	MisResultCondition( HasMission, 1032)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3128, 10, 4)
	MisResultAction( SetRecord, 1032)
	MisResultAction( ClearMission, 1032)
	MisResultBagNeed(1)


-----------------------------------------------------------------������������ �����������

	DefineMission( 6045, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1033 )
	MisBeginTalk( "<t>����� ������ � ������ �������� " )
	MisBeginCondition( NoMission, 1033)
	MisBeginCondition( NoRecord, 1033)
	MisBeginCondition( HasRecord, 1032)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1033)
	MisCancelAction( ClearMission, 1033)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ��������� " )
	MisHelpTalk( "<t>������ �� ������� �������� " )

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------------������������ �����������

	DefineMission( 6046, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1033, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ���������� " )
	MisResultCondition( NoRecord, 1033)
	MisResultCondition( HasMission, 1033)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1033)
	MisResultAction( ClearMission, 1033)

------------------------------------------------------------------������������ �����������

	DefineMission( 6047, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1034 )
	MisBeginTalk( "<t>��������� ��������� � ������, ����� ���� " )
	MisBeginCondition( NoMission, 1034)
	MisBeginCondition( NoRecord, 1034)
	MisBeginCondition( HasRecord, 1033)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1034)
	MisCancelAction( ClearMission, 1034)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ��������� " )
	MisHelpTalk( "<t>���� � ������ " )

	MisResultCondition(AlwaysFailure)

-------------------------------------------------------------------������������ �����������

	DefineMission( 6048, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1034, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ���������� " )
	MisResultCondition( NoRecord, 1034)
	MisResultCondition( HasMission, 1034)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1034)
	MisResultAction( ClearMission, 1034)

-------------------------------------------------------------------������������ �����������

	DefineMission( 6049, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1035 )
	MisBeginTalk( "<t>������������� � ������ � ����� � ����� �� �������� ���� " )
	MisBeginCondition( NoMission, 1035)
	MisBeginCondition( NoRecord, 1035)
	MisBeginCondition( HasRecord, 1034)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1035)
	MisCancelAction( ClearMission, 1035)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ��������� " )
	MisHelpTalk( "<t>���� ��� �� � ������ " )

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------------������������ �����������

	DefineMission( 6050, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1035, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ���������� " )
	MisResultCondition( NoRecord, 1035)
	MisResultCondition( HasMission, 1035)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1035)
	MisResultAction( ClearMission, 1035)

----------------------------------------------------------------������������ �����������

	DefineMission( 6051, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1036 )
	MisBeginTalk( "<t>������� � ��������� ���� ������� ������ " )
	MisBeginCondition( NoMission, 1036)
	MisBeginCondition( NoRecord, 1036)
	MisBeginCondition( HasRecord, 1035)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1036)
	MisCancelAction( ClearMission, 1036)

	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� ��� ������� 500 ����� ��������� " )
	MisHelpTalk( "<t>������ ������ � �������� ���� " )

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------������������ �����������

	DefineMission( 6052, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1036, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������? ���������� " )
	MisResultCondition( NoRecord, 1036)
	MisResultCondition( HasMission, 1036)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3139, 10, 4)
	MisResultAction( SetRecord, 1036)
	MisResultAction( ClearMission, 1036)
	MisResultBagNeed(1)


----------------------------------------------------------------������������ �����������

	DefineMission( 6053, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1037 )
	MisBeginTalk("<t>���� ����������� ������� � �����, ������������� � ������ � ������� ���� " )
	MisBeginCondition( NoMission, 1037)
	MisBeginCondition( NoRecord, 1037)
	MisBeginCondition( HasRecord, 1036)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1037)
	MisCancelAction( ClearMission, 1037)

	MisNeed(MIS_NEED_DESP, " ���������� � ���� " )
	MisHelpTalk( "<t>���������� � ���� " )

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------------������������ �����������

	DefineMission( 6054, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1037, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ��� ��� �����������? ��� �����������? �� ��������? ��� ����� ��� ��� ���������������?! ��-��-��! �� �����������, � ������ �������!" )
	MisResultCondition( NoRecord, 1037)
	MisResultCondition( HasMission, 1037)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1037)
	MisResultAction( ClearMission, 1037)

--------------------------------------------------------------��������� ��������� �����������

	DefineMission( 6055, "\207\238\241\229\249\229\237\232\229 \205\229\225\229\241\237\238\227\238 \207\238\240\242\224\235\252\249\232\234\224", 1038 )
	MisBeginTalk( "<t>������� ��������� �����������." )
	MisBeginCondition( NoMission, 1038)
	MisBeginCondition( NoRecord, 1038)
	MisBeginCondition( HasRecord, 1037)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1038)
	MisCancelAction( ClearMission, 1038)

	MisNeed(MIS_NEED_DESP, " ����� ���������� ������� " )
	MisHelpTalk( "<t>������������� � ������." )

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------��������� ��������� �����������

	DefineMission( 6056, "\207\238\241\229\249\229\237\232\229 \205\229\225\229\241\237\238\227\238 \207\238\240\242\224\235\252\249\232\234\224", 1038, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� �������� �� �� ���� ��������� � ����� � ������?" )
	MisResultCondition( NoRecord, 1038)
	MisResultCondition( HasMission, 1038)
	MisResultAction( SetRecord, 1038)
	MisResultAction( ClearMission, 1038)
	
------------------------------------------------------------���������

	DefineMission( 6057, "\199\224\226\229\249\224\237\232\229", 1039 )
	MisBeginTalk( "<t>�� ������ ������� �� ����? ������! �� ����� �������. ��... ��� ���������� ������ ��������� ����� " )
	MisBeginCondition( NoRecord, 1039)
	MisBeginCondition( NoMission, 1039)
	MisBeginCondition( HasRecord, 1038)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10391, TE_GETITEM, 3007, 9 )--������� ��������� �����
	MisBeginAction( AddMission, 1039)
	MisBeginAction( GiveItem, 3006, 9, 4)--��������� �����
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1039)

	MisNeed(MIS_NEED_ITEM, 3007, 9, 10, 9)

	MisResultTalk( "<t>����� ������!" )
	MisHelpTalk( "<t>������ �� ����� ��� ����� �����." )
	MisResultCondition( NoRecord, 1039)
	MisResultCondition( HasMission, 1039)
	MisResultCondition( HasItem, 3007, 9)
	MisResultAction( TakeItem, 3007, 9)
	MisResultAction( SetRecord, 1039)
	MisResultAction( ClearMission, 1039)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1039, 10, 9 )
	RegCurTrigger( 10391 )


------------------------------------------------------------���������

	DefineMission( 6058, "\199\224\226\229\249\224\237\232\229", 1040 )
	MisBeginTalk("<t>� � ��� ��� ����� 9 ������? ��, ��� ����������, ��� ��� 99 ������. ��� �� �������� ��." )
	MisBeginCondition( NoRecord, 1040)
	MisBeginCondition( NoMission, 1040)
	MisBeginCondition( HasRecord, 1039)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10401, TE_GETITEM, 3007, 99 )
	MisBeginAction( AddMission, 1040)
	MisBeginAction( GiveItem, 3006, 99, 4)
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1040)

	MisNeed(MIS_NEED_ITEM, 3007, 99, 10, 99)

	MisResultTalk( "<t>����� ������!" )
	MisHelpTalk( "<t>�������� �����." )
	MisResultCondition( NoRecord, 1040)
	MisResultCondition( HasMission, 1040)
	MisResultCondition( HasItem, 3007, 99)
	MisResultAction( TakeItem, 3007, 99)
	MisResultAction( SetRecord, 1040)
	MisResultAction( ClearMission, 1040)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1040, 10, 99 )
	RegCurTrigger( 10401 )

------------------------------------------------------------

	DefineMission( 6059, "\199\224\226\229\249\224\237\232\229", 1041 )
	MisBeginTalk( "<t>��� ��������� ���������. ��� - ������ ������. �������� � �������� � ������������� �� ���!" )
	MisBeginCondition( NoRecord, 1041)
	MisBeginCondition( NoMission, 1041)
	MisBeginCondition( HasRecord, 1040)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10411, TE_GETITEM, 3010, 1 )--������ ������
	MisBeginAction( AddMission, 1041)
	MisBeginAction( GiveNSDX, 3010 )
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1041)
	
	MisNeed(MIS_NEED_ITEM, 3010, 1, 10, 1)

	MisResultTalk( "<t>������ ������ ����� � ����." )
	MisHelpTalk( "<t>�� �� ������ ��������� �����, ����� � ������ �� ��������� �������� ����������� ������������." )
	MisResultCondition( NoRecord, 1041)
	MisResultCondition( HasMission, 1041)
	MisResultCondition( CheckEnergy )
	MisResultAction( TakeItem, 3010, 1)
	MisResultAction( SetRecord, 1041)
	MisResultAction( ClearMission, 1041)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3010)	
	TriggerAction( 1, AddNextFlag, 1041, 10, 1 )
	RegCurTrigger( 10411 )

----------------------------------------------------------�������� ������� �������

	DefineMission( 6060, "\207\238\241\229\242\232\242\229 \238\239\229\234\243\237\224 \192\240\227\229\237\242\224", 1042 )
	MisBeginTalk( "<t>����� ���������� ������� � �������." )
	MisBeginCondition( NoRecord, 1042)
	MisBeginCondition( NoMission, 1042)
	MisBeginCondition( HasRecord, 1041)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1042)
	MisCancelAction( ClearMission, 1042)

	MisNeed(MIS_NEED_DESP, " ������� � ������� ���������� ������� " )
	MisHelpTalk( "<t>������� � ������� ���������� �������." )

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------

	DefineMission( 6061, "\207\238\241\229\242\232\242\229 \238\239\229\234\243\237\224 \192\240\227\229\237\242\224", 1042, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>������ �������� � ���� ���������� ����?" )
	MisResultCondition( NoRecord, 1042)
	MisResultCondition( HasMission, 1042)
	MisResultAction( SetRecord, 1042)
	MisResultAction( ClearMission, 1042)

------------------------------------------------------------�������� ����

	DefineMission( 6062, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1043 )
	MisBeginTalk( "<t>������� �������: �� ������ 110 ��������� ������ � �������� �� ���, � � ��� �� ����� �������." )
	MisBeginCondition( NoRecord, 1043)
	MisBeginCondition( NoMission, 1043)
	MisBeginCondition( HasRecord, 1042)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1043)
	MisBeginAction( AddTrigger, 10431, TE_KILL, 75, 110)
	MisCancelAction( ClearMission, 1043)

	MisNeed(MIS_NEED_DESP, " ������ 110 ��������� ������ " )
	MisNeed(MIS_NEED_KILL, 75, 110, 10, 110)

	MisResultTalk( "<t>����������!" )
	MisHelpTalk( "<t>������ �� ������ ��� �����, � ��� ���� ��� ������ ���� ��������(��������)!" )
	MisResultCondition( NoRecord, 1043)
	MisResultCondition( HasMission, 1043)
	MisResultCondition( HasFlag, 1043, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1043)
	MisResultAction( ClearMission, 1043)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 75 )
	TriggerAction( 1, AddNextFlag, 1043, 10, 110 )
	RegCurTrigger( 10431 )

------------------------------------------------------------�������� ����

	DefineMission( 6063, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1046 )
	MisBeginTalk( "<t>������ 110 �������� ��������� ������!" )
	MisBeginCondition( NoRecord, 1046)
	MisBeginCondition( NoMission, 1046)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1044)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1046)
	MisBeginAction( AddTrigger, 10461, TE_KILL, 218, 110)
	MisCancelAction( ClearMission, 1046)

	MisNeed(MIS_NEED_DESP, " ������ 110 �������� ��������� ������ " )
	MisNeed(MIS_NEED_KILL, 218, 110, 10, 110)

	MisResultTalk( "<t>�� ��� ������� " )
	MisHelpTalk( "<t>����� �������� ��������� ����� � ������ �������." )
	MisResultCondition( NoRecord, 1046)
	MisResultCondition( HasMission, 1046)
	MisResultCondition( HasFlag, 1046, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1046)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1046)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 218 )
	TriggerAction( 1, AddNextFlag, 1046, 10, 110 )
	RegCurTrigger( 10461 )

-------------------------------------------------------------�������� ����

	DefineMission( 6064, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1047 )
	MisBeginTalk("<t>������ 110 ����������� ��������� ������!" )
	MisBeginCondition( NoRecord, 1047)
	MisBeginCondition( NoMission, 1047)
	MisBeginCondition( HasRecord, 1045)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1047)
	MisBeginAction( AddTrigger, 10471, TE_KILL, 216, 110)--����������� ��������� ����
	MisCancelAction( ClearMission, 1047)

	MisNeed(MIS_NEED_DESP, " ������ 110 ����������� ��������� ������ " )
	MisNeed(MIS_NEED_KILL, 216, 110, 10, 110)

	MisResultTalk( "<t>�� �������!" )
	MisHelpTalk( "<t>�� �� ������� ����� � �������� ������." )
	MisResultCondition( NoRecord, 1047)
	MisResultCondition( HasMission, 1047)
	MisResultCondition( HasFlag, 1047, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1047)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1047)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 216 )
	TriggerAction( 1, AddNextFlag, 1047, 10, 110 )
	RegCurTrigger( 10471 )

---------------------------------------------------------------�������� ����

	DefineMission( 6065, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1048 )
	MisBeginTalk( "<t>������ ������ 110 ������������-�������." )
	MisBeginCondition( NoRecord, 1048)
	MisBeginCondition( NoMission, 1048)
	MisBeginCondition( HasRecord, 1057)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1048)
	MisBeginAction( AddTrigger, 10481, TE_KILL, 233, 110)--����������-�����
	MisCancelAction( ClearMission, 1048)

	MisNeed(MIS_NEED_DESP, " ������ 110 ������������-������� " )
	MisNeed(MIS_NEED_KILL, 233, 110, 10, 110)

	MisResultTalk( "<t>�� �� ������ ������?" )
	MisHelpTalk( "<t>����� 110 ������������-�������." )
	MisResultCondition( NoRecord, 1048)
	MisResultCondition( HasMission, 1048)
	MisResultCondition( HasFlag, 1048, 10)
	MisResultAction( SetRecord, 1048)
	MisResultAction( ClearMission, 1048)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 233)
	TriggerAction( 1, AddNextFlag, 1048, 10, 110 )
	RegCurTrigger( 10481 )

---------------------------------------------------------------�������� ����

	DefineMission( 6066, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1049 )
	MisBeginTalk("<t>������ ����� 110 ������� ������������." )
	MisBeginCondition( NoRecord, 1049)
	MisBeginCondition( NoMission, 1049)
	MisBeginCondition( HasRecord, 1048)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1049)
	MisBeginAction( AddTrigger, 10491, TE_KILL, 235, 110)--������� ����������
	MisCancelAction( ClearMission, 1049)

	MisNeed(MIS_NEED_DESP, " ����� 110 ������� ������������ " )
	MisNeed(MIS_NEED_KILL, 235, 110, 10, 110)

	MisResultTalk( "<t>�� �� ������ ������?" )
	MisHelpTalk( "<t>�� �� ������ ����� � ������." )
	MisResultCondition( NoRecord, 1049)
	MisResultCondition( HasMission, 1049)
	MisResultCondition( HasFlag, 1049, 10)
	MisResultAction( SetRecord, 1049)
	MisResultAction( ClearMission, 1049)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 235)
	TriggerAction( 1, AddNextFlag, 1049, 10, 110 )
	RegCurTrigger( 10491 )

---------------------------------------------------------------�������� ����

	DefineMission( 6067, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1050 )
	MisBeginTalk( "<t>������ ������ 110 ��������-��������." )
	MisBeginCondition( NoRecord, 1050)
	MisBeginCondition( NoMission, 1050)
	MisBeginCondition( HasRecord, 1049)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1050)
	MisBeginAction( AddTrigger, 10501, TE_KILL, 232, 110)
	MisCancelAction( ClearMission, 1050)

	MisNeed(MIS_NEED_DESP, " ������ 110 ��������-��������" )
	MisNeed(MIS_NEED_KILL, 232, 110, 10, 110)

	MisResultTalk( "<t>�� �� ������ ������?" )
	MisHelpTalk( "<t>�� �������� ��� ���� �������?" )
	MisResultCondition( NoRecord, 1050)
	MisResultCondition( HasMission, 1050)
	MisResultCondition( HasFlag, 1050, 10)
	MisResultAction( SetRecord, 1050)
	MisResultAction( ClearMission, 1050)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 232)
	TriggerAction( 1, AddNextFlag, 1050, 10, 110 )
	RegCurTrigger( 10501 )

---------------------------------------------------------------�������� ����

	DefineMission( 6068, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1051 )
	MisBeginTalk("<t>�� � ������ ������ 110 �����������." )
	MisBeginCondition( NoRecord, 1051)
	MisBeginCondition( NoMission, 1051)
	MisBeginCondition( HasRecord, 1050)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1051)
	MisBeginAction( AddTrigger, 10511, TE_KILL, 234, 110)
	MisCancelAction( ClearMission, 1051)

	MisNeed(MIS_NEED_DESP, " ������ 110 ����������� " )
	MisNeed(MIS_NEED_KILL, 234, 110, 10, 110)

	MisResultTalk( "<t>��? ������ �� �� ���� ������ �� ������? ��� ����. ���� �� ���� � �������, � �� ���� ��� ��� ���� ����." )
	MisHelpTalk( "<t>�� ������ ��!" )
	MisResultCondition( NoRecord, 1051)
	MisResultCondition( HasMission, 1051)
	MisResultCondition( HasFlag, 1051, 10)
	MisResultAction( SetRecord, 1051)
	MisResultAction( SetRecord, 1056)
	MisResultAction( ClearMission, 1051)
	MisResultAction(GiveItem, 2229, 1, 4)--���� ������
	MisResultAction(GiveItem, 2230, 1, 4)--
	MisResultAction(GiveItem, 2231, 1, 4)--
	MisResultAction(GiveItem, 2232, 1, 4)--
	MisResultAction(GiveItem, 2233, 1, 4)--
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 234)
	TriggerAction( 1, AddNextFlag, 1051, 10, 110 )
	RegCurTrigger( 10511 )


------------------------------------------------����������� ��� ����

	DefineMission( 5604, "\200\237\228\229\227\240\232\229\237\242\251 \228\235\255 \209\243\248\232", 1107 )

	MisBeginTalk( "<t>��� �� ����������� ����, �� ������ ������ �������� ��� ���������: <p������ ����>, <p���� ������> � <p���������� �����>!" )

	MisBeginCondition(NoMission,1107)
	MisBeginCondition(NoRecord,1107)
	MisBeginAction(AddMission,1107)
	MisBeginAction(AddTrigger, 11071, TE_GETITEM, 1649, 1 )---------------������ ����
	MisBeginAction(AddTrigger, 11072, TE_GETITEM, 1690, 1 )---------------���� ������
	MisBeginAction(AddTrigger, 11073, TE_GETITEM, 3116, 1 )----------���������� �����
	MisCancelAction( ClearMission, 1107)
	
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1690, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3116, 1, 30, 1 )

	MisHelpTalk( "<t>� ���� ������� ��� �� ���� ��������!" )
	MisResultTalk( "<t>�������, ������ �� ���������� ����������!" )

	MisResultCondition(HasMission, 1107)
	MisResultCondition(NoRecord,1107)
	MisResultCondition(HasItem, 1649, 1 )
	MisResultCondition(HasItem, 1690, 1 )
	MisResultCondition(HasItem, 3116, 1 )
	
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 1690, 1 )
	MisResultAction(TakeItem, 3116, 1 )
	
	MisResultAction(ClearMission, 1107)
	MisResultAction(SetRecord,  1107 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1107, 10, 1 )
	RegCurTrigger( 11071 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1690)	
	TriggerAction( 1, AddNextFlag, 1107, 20, 1 )
	RegCurTrigger( 11072 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1107, 30, 1 )
	RegCurTrigger( 11073 )


	-------------------------------------------------���� ������� ��������
	
	DefineMission( 5605, "\209\243\248\232 \194\251\241\248\229\227\238 \234\224\247\229\241\242\226\224", 1108 )
	
	MisBeginTalk("<t>��������� <p2 �������� �� ����� �����>, � � ��� ����� ������ �������� ���� �� ��� ����!" )

	MisBeginCondition(NoMission,1108)
	MisBeginCondition(HasRecord,1107)
	MisBeginCondition(NoRecord,1108)
	MisBeginAction(AddMission,1108)
	MisBeginAction(AddTrigger, 11081, TE_GETITEM, 1097, 2 )---------�������� �� ����� �����
	MisCancelAction( ClearMission, 1108)
	
	MisNeed(MIS_NEED_ITEM, 1097, 2, 10, 2 )

	MisHelpTalk( "<t>�� ���������� ����, �� �� ������ ��� ��� ���� ��� � ���� ��� �� ���� � ��� ����� ������ �������... � ���� ���� ���� �� ������ " )
	MisResultTalk( "<t>���! ���������� ���� ���������!" )

	MisResultCondition(HasMission, 1108)
	MisResultCondition(NoRecord,1108)
	MisResultCondition(HasItem, 1097, 2 )
	MisResultAction(TakeItem, 1097, 2 )
	MisResultAction(GiveItem, 2989,1,4)--------------�����-����
	MisResultAction(ClearMission, 1108)
	MisResultAction(SetRecord,  1108 )
	MisResultAction(ClearRecord, 1107)-------------������ ������
	MisResultAction(ClearRecord, 1108)---------------������ ����
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1108, 10, 2 )
	RegCurTrigger( 11081 )

	-------------------------------------------------������
	
	DefineMission( 5606, "\202\243\234\232\237\227", 1109 )
	
	MisBeginTalk( "<t>� ���� ����� ������� ������, �� ��� �� �� ����������� �� ������ ��� �������� <p������ ������>!" )

	MisBeginCondition(NoMission,1109)
	MisBeginCondition(NoRecord,1109)
	MisBeginAction(AddMission,1109)
	MisBeginAction(AddTrigger, 11091, TE_GETITEM, 3849, 1 )-------------������ ������
	MisCancelAction( ClearMission, 1109)
	
	MisNeed(MIS_NEED_ITEM, 3849, 1, 10, 1 )

	MisHelpTalk( "<t>���! ��� ���� �� �����, ��� ����� ������ ������ " )
	MisResultTalk( "<t>������� �� �������� " )

	MisResultCondition(HasMission, 1109)
	MisResultCondition(NoRecord,1109)
	MisResultCondition(HasItem, 3849, 1 )
	MisResultAction(ClearMission, 1109)
	MisResultAction(SetRecord,  1109 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3849)	
	TriggerAction( 1, AddNextFlag, 1109, 10, 1 )
	RegCurTrigger( 11091 )


	-------------------------------------------------���������� ����

	DefineMission( 5607, "\199\237\224\236\229\237\232\242\251\233 \234\229\234\241", 1110 )
	
	MisBeginTalk("<t>�� ������, ��� �� � ����������� ��� ��� ��� ���������� ����? ������, �� ��������� ��� <p�������� �� ����� �����>!" )

	MisBeginCondition(NoMission,1110)
	MisBeginCondition(HasRecord,1109)
	MisBeginCondition(NoRecord,1110)
	MisBeginAction(AddMission,1110)
	MisBeginAction(AddTrigger, 11101, TE_GETITEM, 1097, 1 )--------�������� �� ����� �����
	MisCancelAction( ClearMission, 1110)
	
	MisNeed(MIS_NEED_ITEM, 1097, 1, 10, 1 )
	MisHelpTalk( "<t>��� ���������� �������� �� ����� ����� " )
	MisResultTalk( "<t>��������� �������� " )
	

	MisResultCondition(HasMission, 1110)
	MisResultCondition(NoRecord,1110)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 2988,1,4)-----------���������� ����
	MisResultAction(ClearMission, 1110)
	MisResultAction(SetRecord,  1110 )
	MisResultAction(ClearRecord, 1109)---------------���������� �����
	MisResultAction(ClearRecord, 1110)---------------������ ����
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1110, 10, 1 )
	RegCurTrigger( 11101 )

----------------------------������ ������

	DefineMission( 6114, "\207\229\240\226\224\255 \199\224\228\224\247\224", 1000 )

	MisBeginTalk( "<t>�� �� ������ �� ��� ������ ���? ���������� �������� ��� ������ � �����  (873, 3545) . ��� ��� ������� �������!" )
	--MisBeginCondition( CheckTime )
	MisBeginCondition( NoMission, 1000)
	MisBeginCondition( NoRecord, 1000)
	MisBeginAction( GiveItem, 3292, 1, 4)--������ ����
	MisBeginAction( AddMission, 1000)
	MisCancelAction( ClearMission, 1000)
	MisBeginBagNeed(1)
	
	MisNeed( MIS_NEED_DESP, "�������� � ������(873, 3545)." )
	
	MisHelpTalk( "<t>������������� � ������." )
	MisResultCondition( AlwaysFailure )

----------------------------������ ������

	DefineMission( 6115, "\207\229\240\226\224\255 \199\224\228\224\247\224", 1000, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>��� ������? �������." )
	MisResultCondition( HasMission, 1000)
	MisResultCondition( HasItem, 3292, 1)
	MisResultCondition( NoRecord, 1000)
	MisResultAction( TakeItem, 3292, 1)
	MisResultAction( SetRecord, 1000)
	MisResultAction( ClearMission, 1000)
	MisResultAction( AddExp_1)


-----------------------------������ ������

	DefineMission( 6116, "\194\242\238\240\224\255 \199\224\228\224\247\224", 1001 )

	MisBeginTalk( "<t>��������� ����� ����� ���������� ������. ������ ����� ���������� ������ � ���� � �������� ��� � ���!" )
	MisBeginCondition( HasRecord, 1000)
	MisBeginCondition( NoMission, 1001)
	MisBeginCondition( NoRecord, 1001)
	MisBeginAction( AddMission, 1001)
	MisBeginAction(AddTrigger, 10011, TE_GETITEM, 3143, 1)--���������� ������
	MisCancelAction( ClearMission, 1001)

	MisNeed( MIS_NEED_DESP, " ������ ���������� ������ ��� ��������� ����� � ����." )
	MisNeed( MIS_NEED_ITEM, 3143, 1, 10, 1)





	MisHelpTalk( "<t>���� ������ ���������� ������, ��� ������ �� ��� ������ ������ ��� � ���������� �����!" )
	MisResultCondition( AlwaysFailure )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3143)	
	TriggerAction( 1, AddNextFlag, 1001, 10, 1 )
	RegCurTrigger( 10011 )

----------------------------������ ������

	DefineMission( 6117, "\194\242\238\240\224\255 \199\224\228\224\247\224", 1001, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>�� �������, ��� ��� ��� ����� ���������� ������!" )
	MisResultCondition( HasMission, 1001)
	MisResultCondition( NoRecord, 1001)
	MisResultCondition( HasItem, 3141, 1)
	MisResultAction( TakeItem, 3141, 1)
	MisResultAction( SetRecord, 1001)
	MisResultAction( ClearMission, 1001)
	MisResultAction( AddExp_1 )


	InitTrigger()
	TriggerCondition( 1, IsItem, 3141)	
	TriggerAction( 1, AddNextFlag, 1001, 10, 1 )
	RegCurTrigger( 10011 )

---------------------------������ ������

	DefineMission( 6118, "\210\240\229\242\252\255 \199\224\228\224\247\224", 1002 )
	
	MisBeginTalk( "<t>�������, ������� ����. ����� ��� ���������. �� �������� ��?" )
	MisBeginCondition( HasRecord, 1001)
	MisBeginCondition( NoMission, 1002)
	MisBeginCondition( NoRecord, 1002)
	MisBeginCondition( NoRecord, 1003)
	MisBeginCondition( LvCheck, "<", 40)
	MisBeginAction( AddMission, 1002)
	MisBeginAction( AddTrigger, 10021, TE_KILL, 299, 20 )
	MisCancelAction( ClearMission, 1002)
	
	MisNeed( MIS_NEED_DESP, " ������ <r20 ������� �����> � (1360,2683) � ������������� �� ���." )
	MisNeed( MIS_NEED_KILL, 299, 20, 10, 20)

	MisResultTalk( "<t>�� ���������� ������� ��� � ������, �� ��� � ��� ����������." )
	MisHelpTalk( "<t>��� ������ ������� � (1360, 2683)." )
	MisResultCondition( HasMission, 1002)
	MisResultCondition( NoRecord, 1002)
	MisResultCondition( HasFlag, 1002, 29)
	MisResultAction( SetRecord, 1002)
	MisResultAction( SetRecord, 1003)
	MisResultAction( ClearMission, 1002)
	MisResultAction( AddExp, 13000, 13000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 299)	
	TriggerAction( 1, AddNextFlag, 1002, 10, 20 )
	RegCurTrigger( 10021 )

----------------------------3 ������

	DefineMission( 6119, "\210\240\229\242\252\255 \199\224\228\224\247\224", 1004 )
	
	MisBeginTalk( "<t>�� ��� ����� �� ��� ������ ������ ����. �� ��������� �� �� �� ���?" )
	MisBeginCondition( HasRecord, 1001)
	MisBeginCondition( NoMission, 1004)
	MisBeginCondition( NoMission, 1002)
	MisBeginCondition( NoRecord, 1003)
	MisBeginCondition( NoRecord, 1004)
	MisBeginCondition( LvCheck, ">", 39)
	MisBeginAction( AddMission, 1004)
	MisBeginAction( AddTrigger, 10041, TE_KILL, 37, 20 )
	MisCancelAction( ClearMission, 1004)
	
	MisNeed( MIS_NEED_DESP, " ������ <r20 ������� ����> � ������ (622, 3364)" )
	MisNeed( MIS_NEED_KILL, 37, 20, 10, 20)

	MisResultTalk( "<t>������ ���� ~ ��� ��� �� ��� ������ ��? �� ��������� �������." )
	MisHelpTalk( "<t>��� ������� � ������ (622, 3364)." )
	MisResultCondition( HasMission, 1004)
	MisResultCondition( NoRecord, 1004)
	MisResultCondition( HasFlag, 1004, 29)
	MisResultAction( SetRecord, 1004)
	MisResultAction( SetRecord, 1003)
	MisResultAction( ClearMission, 1004)
	MisResultAction( AddExp_3)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 37)	
	TriggerAction( 1, AddNextFlag, 1004, 10, 20 )
	RegCurTrigger( 10041 )

----------------------------------��������� ������

	DefineMission( 6120, "\215\229\242\226\229\240\242\224\255 \199\224\228\224\247\224", 1005 )
	MisBeginTalk( "<t>��� �� � ������� � �������� ������. �������� 3 ������, 3 ���� � 3 ������ � �������� �� ��� � ������, ��� ��� ����� ����� �������, ����������� � ����." )
	MisBeginCondition( HasRecord, 1003)
	MisBeginCondition( NoMission, 1005)
	MisBeginCondition( NoRecord, 1005)
	MisBeginAction( AddMission, 1005)
	MisBeginAction(AddTrigger, 10051, TE_GETITEM, 4543, 3 )--������
	MisBeginAction(AddTrigger, 10052, TE_GETITEM, 4545, 3 )--����
	MisBeginAction(AddTrigger, 10053, TE_GETITEM, 1478, 3 )--������
	MisCancelAction( ClearMission, 1005)

	MisNeed( MIS_NEED_DESP, " �������� <b3 ������>, <b3 ����> � <b3 ������> � �������� � (1882, 2805) � ������ �������." )
	MisNeed( MIS_NEED_ITEM, 4543, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 4545, 3, 20, 3)
	MisNeed( MIS_NEED_ITEM, 1478, 3, 20, 3)

	MisHelpTalk( "<t>��������� �������." )

	MisResultCondition( AlwaysFailure )

---------------------------------4 ������

	DefineMission( 6121, "\215\229\242\226\229\240\242\224\255 \199\224\228\224\247\224", 1005, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>��, ��� �� ���������, ����� ����� ����� ����������... ��������� ��� ��, ��� �� ��������� " )
	MisResultCondition( HasMission, 1005)
	MisResultCondition( NoRecord, 1005)
	MisResultCondition( HasItem, 4543, 3)
	MisResultCondition( HasItem, 4545, 3)
	MisResultCondition( HasItem, 1478, 3)
	MisResultAction( TakeItem, 4543, 3)
	MisResultAction( TakeItem, 4545, 3)
	MisResultAction( TakeItem, 1478, 3)
	MisResultAction( SetRecord, 1005)
	MisResultAction( ClearMission, 1005)
	MisResultAction( AddExp_4)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4543)	
	TriggerAction( 1, AddNextFlag, 1005, 10, 3 )
	RegCurTrigger( 10051 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4545)
	TriggerAction( 1, AddNextFlag, 1005, 20, 3 )
	RegCurTrigger( 10052 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1478)	
	TriggerAction( 1, AddNextFlag, 1005, 20, 3 )
	RegCurTrigger( 10053 )


-----------------------------------����� ������

	DefineMission( 6122, "\207\255\242\224\255 \199\224\228\224\247\224", 1006 )
	MisBeginTalk( "<t> ��������� ������: �������� ���������� ������� � ������� �� ����� � (2226,2726) ������." )
	MisBeginCondition( HasRecord, 1005)
	MisBeginCondition( NoMission, 1006)
	MisBeginCondition( NoRecord, 1006)
	MisBeginAction( AddMission, 1006)
	MisBeginAction(AddTrigger, 10061, TE_GETITEM, 2588, 5 )--���������� �������
	MisCancelAction( ClearMission, 1006)

	MisNeed( MIS_NEED_DESP, "������� ����� 5 ���������� ������� � ������ (2226, 2726)." )
	MisNeed( MIS_NEED_ITEM, 2588, 5, 10, 5)

	MisHelpTalk( "<t>���������� ������� ����� ��� ������� ���� ������." )
	MisResultCondition( AlwaysFailure )

-----------------------------------5 ������

	DefineMission( 6123, "\207\255\242\224\255 \199\224\228\224\247\224", 1006, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>�� ������... � ���� ���� ����������� ������ � ������ ��� ���..." )
	MisResultCondition( HasMission, 1006)
	MisResultCondition( NoRecord, 1006)
	MisResultCondition( HasItem, 2588, 5)
	MisResultAction( TakeItem, 2588, 5)
	MisResultAction( SetRecord, 1006)
	MisResultAction( ClearMission, 1006)
	MisResultAction( AddExp_5)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1006, 10, 5 )
	RegCurTrigger( 10061 )

-----------------------------------������ ������

	DefineMission( 6124, "\216\229\241\242\224\255 \199\224\228\224\247\224", 1007 )
	MisBeginTalk( "<t>��� ������� ����� �������. ���, ��� �� ������ �������, ��� ����� ���� ��������. �� � ����� �������� <r���� ����� ������ ����  20-30 ������, ������ ����� 31 - 40, � ������ ����� ���� 40 ������>. ��� ������ �� ������� ����������� �������� ������������� � ������ � ������� ���. � ���� ���� ��� ��� �������!" )
	MisBeginCondition( HasRecord, 1006)
	MisBeginCondition( NoMission, 1007)
	MisBeginCondition( NoRecord, 1007)
	MisBeginAction( AddMission, 1007)
	MisCancelAction( ClearMission, 1007)

	MisHelpTalk( "<t>����� ���� ������� " )

	MisResultCondition( AlwaysFailure )

----------------------------------6 ������

	DefineMission( 6125, "\216\229\241\242\224\255 \199\224\228\224\247\224", 1007, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )


	MisResultTalk( "<t>� ��� ���� ����� ������, ��� � ��� ����� ������� ������." )
	MisResultCondition( HasMission, 1007)
	MisResultCondition( NoRecord, 1007)
	MisResultCondition( CheckTeam )
	MisResultAction( SetRecord, 1007)
	MisResultAction( ClearMission, 1007)
	MisResultAction( AddExp_6)

-----------------------------------����� ������ �� 6 �������


--	-----------------------------------------------------������ ���������

	DefineMission( 6069, "\239\229\240\226\251\229 \231\224\240\224\225\238\242\234\232", 1400 )

	MisBeginTalk( "<t>��� ��� ������ ������������ ������? � ������ ��� ������� ���� �� ��� ��������." )
	MisBeginCondition( LvCheck, ">", 10)
	MisBeginCondition( NoRecord, 1400)
	MisBeginCondition( NoMission, 1400)
	MisBeginAction( AddMission, 1400 )
	MisBeginAction( AddTrigger, 14001, TE_GETITEM, 1604, 10 )------------�����
	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 1777, 5 )------------������
	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 1692, 5 )----������ �������
	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 4334, 5 )---��������� �����
	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 4511, 1 )---���������� ����
	MisCancelAction(ClearMission, 1400)

	MisNeed(MIS_NEED_ITEM, 1604, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1779, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 1692, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4334, 5, 40, 5)
	MisNeed(MIS_NEED_ITEM, 4511, 1, 50, 1)

	MisResultTalk( "<t>�� ������ �����������!" )
	MisHelpTalk( "<t>����� ���������� �� ������� ������ � ���������� � �������(1905,2853), ������ �� ������� ����, ������( 2220,2638) , ������ ������� � ������� ������, ������( 884,3156) , ��������� ����� � ���������,  ������ (994,365), � ��� �� � �������(3000,2566) �� ������� �������� ���� �� ����� " )
	MisResultCondition( HasMission, 1400)
	MisResultCondition( NoRecord, 1400)
	MisResultCondition( HasItem, 1604, 10)
	MisResultCondition( HasItem, 1777, 5)
	MisResultCondition( HasItem, 1692, 5)
	MisResultCondition( HasItem, 4334, 5)
	MisResultCondition( HasItem, 4511, 1)
	MisResultAction( TakeItem, 1604, 10)
	MisResultAction( TakeItem, 1777, 5)
	MisResultAction( TakeItem, 1692, 5)
	MisResultAction( TakeItem, 4334, 5)
	MisResultAction( TakeItem, 4511, 1)
	MisResultAction( SetRecord, 1400)
	MisResultAction( ClearMission, 1400)
	MisResultAction( AddMoney, 10000, 10000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1604)	
	TriggerAction( 1, AddNextFlag, 1400, 10, 10 )
	RegCurTrigger( 14001 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1777)	
	TriggerAction( 1, AddNextFlag, 1400, 20, 5 )
	RegCurTrigger( 14002 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1692)	
	TriggerAction( 1, AddNextFlag, 1400, 30, 5 )
	RegCurTrigger( 14003 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4334)	
	TriggerAction( 1, AddNextFlag, 1400, 40, 5 )
	RegCurTrigger( 14004 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4511)	
	TriggerAction( 1, AddNextFlag, 1400, 50, 1 )
	RegCurTrigger( 14005 )


	----------------------------------------------------------������� ������

	DefineMission( 6070 , "\199\238\235\238\242\238\233 \241\243\237\228\243\234", 1401 )
	MisBeginTalk( "<t>�� ������ ��������� ������� ������? �� ����� ��� �������� ����� ��������� ��������: <r30 ��������>, <r20 ������-���������>, <r10 ������� �������� ������>, <r5 ������������� ��������>, <r5 ��������� ���������>, <r5 ���-������>, <r20 ������� ���������>, <r20 ����� ��������>." )
	MisBeginCondition( NoMission, 1401)
	MisBeginCondition( NoRecord, 1401)
	MisBeginAction( AddMission, 1401)
	MisBeginAction( AddTrigger, 14011, TE_KILL, 93, 30)---������
	MisBeginAction( AddTrigger, 14012, TE_KILL, 88, 20)---����-�������
	MisBeginAction( AddTrigger, 14013, TE_KILL, 248, 10)--������� �������� ����
	MisBeginAction( AddTrigger, 14014, TE_KILL, 211, 5)---������������ ��������
	MisBeginAction( AddTrigger, 14015, TE_KILL, 58, 5)----��������� �������
	MisBeginAction( AddTrigger, 14016, TE_KILL, 242, 5)---���� �����
	MisBeginAction( AddTrigger, 14017, TE_KILL, 578, 20)--������� �������
	MisBeginAction( AddTrigger, 14018, TE_KILL, 596, 20)--������� ������-������
	MisCancelAction(ClearMission, 1401)

	MisNeed(MIS_NEED_KILL, 93, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 88, 20, 20, 20)
	MisNeed(MIS_NEED_KILL, 248, 10, 30, 10)
	MisNeed(MIS_NEED_KILL, 211, 5, 40, 5)
	MisNeed(MIS_NEED_KILL, 58, 5, 50, 5)
	MisNeed(MIS_NEED_KILL, 242, 5, 60, 5)
	MisNeed(MIS_NEED_KILL, 578, 20, 70, 20)
	MisNeed(MIS_NEED_KILL, 596, 20, 80, 20)

	MisResultTalk( "<t>�� ��������� ������� ������ " )
	MisHelpTalk( "<t>������ ��� ������ �������� " )
	MisResultCondition( HasMission, 1401)
	MisResultCondition( NoRecord, 1401)
	MisResultCondition( HasFlag, 1401, 10)
	MisResultCondition( HasFlag, 1401, 20)
	MisResultCondition( HasFlag, 1401, 30)
	MisResultCondition( HasFlag, 1401, 40)
	MisResultCondition( HasFlag, 1401, 50)
	MisResultCondition( HasFlag, 1401, 60)
	MisResultCondition( HasFlag, 1401, 70)
	MisResultCondition( HasFlag, 1401, 80)
	MisResultAction( SetRecord, 1401)
	MisResultAction( ClearMission, 1401)
	MisResultAction( GiveItem, 4312)--������� ������
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 93 )
	TriggerAction( 1, AddNextFlag, 1401, 10, 30 )
	RegCurTrigger( 14011 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 88 )
	TriggerAction( 1, AddNextFlag, 1401, 20, 20 )
	RegCurTrigger( 14012 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 248 )
	TriggerAction( 1, AddNextFlag, 1401, 30, 10 )
	RegCurTrigger( 14013 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 211 )
	TriggerAction( 1, AddNextFlag, 1401, 40, 5 )
	RegCurTrigger( 14014 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 58 )
	TriggerAction( 1, AddNextFlag, 1401, 50, 5 )
	RegCurTrigger( 14015 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 242 )
	TriggerAction( 1, AddNextFlag, 1401, 60, 5 )
	RegCurTrigger( 14016 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 578 )
	TriggerAction( 1, AddNextFlag, 1401, 70, 20 )
	RegCurTrigger( 14017 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 596 )
	TriggerAction( 1, AddNextFlag, 1401, 80, 30 )
	RegCurTrigger( 14018 )


------------------------------------------------------------------������ ������������

	DefineMission( 6071, "\194\242\238\240\238\229 \207\229\240\229\240\238\230\228\229\237\232\229", 1402 )
	MisBeginTalk( "<t>��� ��� ������� � �������, �� �� ����� ����������� ���� ������� �� ������ ����� ��������� " )
	MisBeginCondition( CheckZS )
	MisBeginCondition( NoRecord, 1402)
	MisBeginCondition( NoMission, 1402)
	MisBeginAction( AddMission, 1402)
	MisCancelAction( ClearMission ,1402)

	MisNeed( MIS_NEED_DESP, " ����� ����������� ���� � ������ ������� " )
	MisHelpTalk( "<t>������� �� ������� ������ ������� � ���������� � ����������� ������ " )

	MisResultCondition( AlwaysFailure )

-------------------------------------------------------------------

	DefineMission( 6072, "\194\242\238\240\238\229 \207\229\240\229\240\238\230\228\229\237\232\229", 1402, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>��-��-��-�� " )
	MisResultCondition( HasMission, 1402)
	MisResultCondition( NoRecord, 1402)
	MisResultAction( AddSailExp , 10, 10)
	MisResultAction( SetRecord, 1402)
	MisResultAction( ClearMission, 1402)

-----------------------------------------------------------------��� 2

	DefineMission( 6073, "\199\224\227\224\228\238\247\237\251\233 \237\229\237\224\226\232\241\242\237\251\233 \202\243\241\242", 1403 )

	MisBeginTalk( "<t>�� ��� �������� �� ��� ������!" )
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasRecord, 1402)
	MisBeginCondition( NoRecord, 1403)
	MisBeginCondition( NoMission, 1403)
	MisBeginAction( AddMission, 1403)
	MisCancelAction( ClearMission, 1403)

	MisNeed( MIS_NEED_DESP, " �������� �� ������ ����������� ����� " )
	
	MisResultTalk( "<t>� ���� ���������!" )
	MisHelpTalk( "<t>�� ������� �� ������!" )
	MisResultCondition( HasRecord, 1404)
	MisResultCondition( HasMission, 1403)
	MisResultAction( SetRecord, 1403)
	MisResultAction( ClearMission, 1403)
	MisResultAction( AddSailExp, 10, 10)

---------------------------------------------------------------��� 2

	DefineMission( 6074, "\199\224\227\224\228\238\247\237\251\233 \237\229\237\224\226\232\241\242\237\251\233 \202\243\241\242", 1408 )

	MisBeginTalk( "<t>� �� �������, �� ���� ��������! ������� � �������� ����� � ��������� ��� �� ���� 20 �������� ���������� " )
	MisBeginCondition( NoMission, 1408)
	MisBeginCondition( NoRecord, 1408)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( HasRecord, 1405)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1408)
	MisBeginAction( AddTrigger, 14081, TE_GETITEM, 2383, 20 )--�������� ��������
	MisCancelAction( ClearMission, 1408)

	MisNeed( MIS_NEED_ITEM, 2383 , 20, 10, 20)
	
	MisResultTalk( "<t>\213\224-\245\224-\245\224... \211 \210\229\225\255 \245\238\240\238\248\229\229 \247\243\226\241\242\226\238 \254\236\238\240\224, \229\249\191 \237\229\236\237\238\227\238 \232 \242\251 \228\238\233\228\191\248\252 \228\238 \241\226\238\229\233 \246\229\235\232!" )
	--MisResultTalk( "<t>��-��-��... � ���� ������� ������� �����, ��� ������� � �� ������ �� ����� ����!" )
	MisHelpTalk( "<t>�������� �������� �� ������� �������� ������ ������ � ��������� �����!" )
	MisResultCondition( HasMission, 1408)
	MisResultCondition( NoRecord, 1408)
	MisResultCondition( HasItem, 2383, 20)
	MisResultAction( TakeItem ,2383, 20)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1408)
	MisResultAction( SetRecord, 1409)
	MisResultAction( ClearMission, 1408)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2383)	
	TriggerAction( 1, AddNextFlag, 1408, 10, 20 )
	RegCurTrigger( 14081 )

-------------------------------------------------------------��� 2

	DefineMission( 6075, "\199\224\227\224\228\238\247\237\251\233 \237\229\237\224\226\232\241\242\237\251\233 \202\243\241\242", 1410 )

	MisBeginTalk( "<t>� ����� �� ���� �� ������ � ������... ������� ��� 10 ������ ���� � �� ��� ����!" )
	MisBeginCondition( NoRecord, 1410)
	MisBeginCondition( NoMission, 1410)
	MisBeginCondition( HasRecord, 1406)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1410)
	MisBeginAction( AddTrigger, 14101, TE_GETITEM, 1649, 10 )--������ ����
	MisCancelAction( ClearMission, 1410)

	MisNeed( MIS_NEED_ITEM, 1649 , 10, 10, 10)

	MisResultTalk( "<t>��������� �� ��� ������, �� � ��� ���� ��� ���� ����." )
	MisHelpTalk( " �� ����� ��� �����, � � ��� �� ���� ����!" )
	MisResultCondition( HasMission, 1410)
	MisResultCondition( NoRecord, 1410)
	MisResultCondition( HasItem, 1649, 10)
	MisResultAction( SetRecord, 1410)
	MisResultAction( SetRecord, 1405)
	MisResultAction( TakeItem, 1649, 10)
	MisResultAction( ClearMission, 1410)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1410, 10, 10 )
	RegCurTrigger( 14101 )

-------------------------------------------------------��� 2

	DefineMission( 6076, "\199\224\227\224\228\238\247\237\251\233 \237\229\237\224\226\232\241\242\237\251\233 \202\243\241\242", 1411 )
	MisBeginTalk( "<t>������, ������, ��� ��� 1.000.000 �������, � ����� ���� � ����� ���� " )
	MisBeginCondition( NoRecord, 1411)
	MisBeginCondition( NoMission, 1411)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( HasRecord, 1407)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1411)
	MisCancelAction( ClearMission, 1411)

	MisNeed( MIS_NEED_DESP, "<t>���� 1.000.000 ������ ����������� ����� " )
	
	MisResultTalk( "<t>������-������, ��� � ��� �� ������ �� ������, � ��� �������� ���� �������� ������� ��� �������� ����,  � ��� ������ �� ������� ��� �� ������ " )
	MisHelpTalk( "<t>������, ��� ��� ������!" )
	MisResultCondition( HasMission, 1411)
	MisResultCondition( NoRecord, 1411)
	MisResultCondition( HasMoney, 1000000)
	MisResultAction( TakeMoney, 1000000)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1411)
	MisResultAction( SetRecord, 1409)
	MisResultAction( ClearMission, 1411)

---------------------------------------------------------��������

	DefineMission( 6077, "\193\240\232\244\232\237\227\232", 1412 )
	MisBeginTalk( "<t>� ����, ��� �� �������� ���� � ������� ���� ���������..." )
	MisBeginCondition( NoRecord, 1412)
	MisBeginCondition( NoMission, 1412)
	MisBeginCondition( HasRecord, 1409)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1412)
	MisCancelAction( ClearMission, 1412)

	MisNeed( MIS_NEED_DESP, " ��������� ����� � ��������� ����� � ��������, ��� ��� ����������." )
	MisHelpTalk( "<t>�� ������� � ���� ��� ������, � ������ ���� ��� ��� ��������!" )

	MisResultCondition( AlwaysFailure )

---------------------------------------------------------��������

	DefineMission( 6078, "\193\240\232\244\232\237\227\232", 1412, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure)

	MisResultTalk( "<t>���? � ������ ��������? ��� ��� ��� ������ ������? ����... �������� �� ����� ��������!" )
	MisResultCondition( HasMission, 1412)
	MisResultCondition( NoRecord, 1412)
	MisResultAction( SetRecord, 1412)
	MisResultAction( ClearMission, 1412)
	MisResultAction( AddSailExp, 5, 5)

---------------------------------------------------------����� �������   ��������� ������

	DefineMission( 6079, "\209\225\238\240 \207\229\240\252\229\226", 1413 )--���� ������
	MisBeginTalk( "<t>� ��� ��� �� ������� ������: ��� �� ��� ������, ����� ������������ ������� �� ���� ����� ������, � �� �� ����� ������ ��������� ����� ������, � ��� ����������� ������� ������. ��������� ��� <b100������������ �������> � <b100 ������ ������>." )
	MisBeginCondition( NoMission, 1413)
	MisBeginCondition( NoRecord, 1413)
	MisBeginCondition( HasRecord, 1412)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1413)
	MisBeginAction( AddTrigger, 14131, TE_GETITEM, 4364, 100)---------������ ����
	MisBeginAction( AddTrigger, 14132, TE_GETITEM, 4347, 100)--����������� ������
	MisCancelAction( ClearMission, 1413)

	MisNeed( MIS_NEED_ITEM, 4364, 100, 10, 100)
	MisNeed( MIS_NEED_ITEM, 4347, 100, 20, 100)

	MisResultTalk( "<t>�� ������� ����� ������� ����!" )
	MisHelpTalk( "<t>��� ����� ����� ������ �� �������� ������ ������� � ������ (1360,2683) � (1461,3018)." )
	MisResultCondition( HasMission, 1413)
	MisResultCondition( NoRecord, 1413)
	MisResultCondition( HasItem, 4364, 100)
	MisResultCondition( HasItem, 4347, 100)
	MisResultAction( TakeItem, 4364, 100)
	MisResultAction( TakeItem, 4347, 100)
	MisResultAction( AddSailExp, 40, 40)
	MisResultAction( SetRecord, 1413)
	MisResultAction( ClearMission, 1413)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4364)	
	TriggerAction( 1, AddNextFlag, 1413, 10, 100 )
	RegCurTrigger( 14131 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4347)	
	TriggerAction( 1, AddNextFlag, 1413, 20, 100 )
	RegCurTrigger( 14132 )

--------------------------------------------------------������ ������

	DefineMission( 6080, "\207\238\236\238\249\252 \228\240\243\227\232\236", 1414 )
	MisBeginTalk( "<t>����� � ��������� ������ �����, �� ���� ����� ������, ����� ��������� �� ���!" )
	MisBeginCondition( HasRecord, 1413)
	MisBeginCondition( NoRecord, 1414)
	MisBeginCondition( NoMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1414)
	MisCancelAction( ClearMission, 1414)

	MisNeed( MIS_NEED_DESP, "<t>����������� �� ������ � �����, ������� ���������� ������ " )

	MisResultTalk( "<t>�� ������� ������, ��� ����������!" )
	MisHelpTalk( "<t>� ������ ����� ����� ����������� � ������!" )
	MisResultCondition( HasMission, 1414)
	MisResultCondition( NoRecord, 1414)
	MisResultCondition( HasRecord, 1428)
	MisResultCondition( HasRecord, 1417)
	MisResultCondition( HasRecord, 1420)
	MisResultCondition( HasRecord, 1422)
	MisResultCondition( HasRecord, 1424)
	MisResultAction( AddSailExp, 10,10)
	MisResultAction( SetRecord, 1414)
	MisResultAction( ClearMission, 1414)

---------------------------------------------------------���� ���� ���� ---- ���� �������
	DefineMission( 6081, "\206\247\224\240\238\226\224\237\232\229 \208\238\243\231", 1415 )--���������� ����
	MisBeginTalk( "<t>� ������ �������� ��������, �� ��� �������� �������(�� ����� ����������� ��������� ���������)." )
	MisBeginCondition( NoChaType, 3)
	MisBeginCondition( NoChaType, 4)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginCondition( NoMission, 1415)
	MisBeginCondition( NoRecord, 1415)
	MisBeginAction( AddMission, 1415)
	MisCancelAction( ClearMission, 1415)

	MisNeed( MIS_NEED_DESP, " ������� � ���� ����� ������ ���, ��������� � �� ��� " )

	MisResultTalk( "<t>�� �����, ���� ���� ���� ����� ������ 80 ��� " )
	MisHelpTalk( "<t>�� �� �������� ���� ��������?" )
	MisResultCondition( HasState, 110)
	MisResultCondition( HasMission, 1415)
	MisResultCondition( NoRecord, 1415)
	MisResultAction( SetRecord, 1415)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1428)
	MisResultAction( ClearMission, 1415)


---------------------------------------------------------���������� ����, ���������� ������

	DefineMission( 6082, "\206\247\224\240\238\226\224\237\232\229 \208\238\243\231", 1416 )
	MisBeginTalk( "<t>� ���� ����� ������������� � ����� ���������� ����� � ����� ���������� ������������ " )
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( NoRecord, 1416)
	MisBeginCondition( NoMission, 1416)
	MisBeginCondition( NoChaType, 1)
	MisBeginCondition( NoChaType, 2)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1416)
	MisCancelAction( ClearMission, 1416)

	MisNeed( MIS_NEED_DESP, "��������� ����� ����� � ���� ����������!" )

	MisResultTalk( "<t>� ������ ��������, ��� �� ����������� �� �����!" )
	MisHelpTalk( "<t>�� �� �������� ���� ��������?" )
	MisResultCondition( HasState, 110)
	MisResultCondition( HasMission, 1416)
	MisResultCondition( NoRecord, 1416)
	MisResultAction( SetRecord, 1416)
	MisResultAction( SetRecord, 1428)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( ClearMission, 1416)
---------------------------------------------------------����� ����������� ������ ---- �������������� ������ 

	DefineMission( 6085, "\199\235\238\239\238\235\243\247\237\224\255 \204\238\228\229\235\252", 1417 )--����������� ������
	MisBeginTalk( "<t>� ���� ����������� ����� ��������, �� � ���� ��� ������������ �����������. ��������� ��� <b5 ������� ������> � <b5 ��������>." )
	MisBeginCondition( NoMission, 1417)
	MisBeginCondition( NoRecord, 1417)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1417)
	MisBeginAction( AddTrigger, 14171, TE_GETITEM, 1804, 5)--��������
	MisBeginAction( AddTrigger, 14172, TE_GETITEM, 1805, 5)--�������
	MisCancelAction( ClearMission, 1417)

	MisNeed( MIS_NEED_ITEM, 1804, 5, 10, 5)
	MisNeed( MIS_NEED_ITEM, 1805, 5, 20, 5)
	
	MisResultTalk( "<t>� ��� ������ ����������, ������ �� ������� ����������� ����� ��������." )
	MisResultCondition( HasMission, 1417)
	MisResultCondition( HasItem, 1804, 5)
	MisResultCondition( HasItem, 1805, 5)
	MisResultCondition( NoRecord, 1417)
	MisResultAction( TakeItem, 1804, 5)
	MisResultAction( TakeItem, 1805, 5)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1417)
	MisResultAction( ClearMission, 1417)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1804)	
	TriggerAction( 1, AddNextFlag, 1417, 10, 5 )
	RegCurTrigger( 14171 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1805)	
	TriggerAction( 1, AddNextFlag, 1417, 20, 5 )
	RegCurTrigger( 14172 )


----------------------------------------------------------�����

	DefineMission( 6086, "\204\229\247\242\224", 1418 )--�����
	MisBeginTalk( "<t>� �� ���� ���� ������ � ����������, � ���� ������ ������� ���� � ���� ����, ������ ����������� ������ ��� ��� ����� � ������ �������� � ���� � ���������� ��������." )
	MisBeginCondition( NoMission, 1418)
	MisBeginCondition( NoRecord, 1418)
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasMission, 1414)
	MisBeginAction( AddMission, 1418)
	MisCancelAction( ClearMission, 1418)

	MisNeed( MIS_NEED_DESP, " ������������� � ������������ ��� ���������, � ���������� � ����� ��������" )

	MisResultCondition( AlwaysFailure )

------------------------------------------------------------�����

	DefineMission( 6087, "\204\229\247\242\224", 1418, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>� �� ������? �� ����� ������� Ÿ ���������� ��������?" )
	MisResultCondition( HasMission, 1418)
	MisResultCondition( NoRecord, 1418)
	MisResultAction( SetRecord, 1418)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( ClearMission, 1418)

-------------------------------------------------------------�����

	DefineMission( 6088, "\204\229\247\242\224", 1419 )
	MisBeginTalk( "<t>�� ��� � ���� �������, ���������� ������ ������������ �� ����������� ���� � �����, ��� ����� ���� �����: <r5 �������� ���������> � <r5 �������� ��������� ���������>." )
	MisBeginCondition( NoMission, 1419)
	MisBeginCondition( NoRecord, 1419)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( HasRecord, 1418)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1419)
	MisCancelAction( ClearMission, 1419)

	MisNeed( MIS_NEED_DESP, " ���������� ��� ���������� ��� ���������� � ����." )

	MisResultCondition( AlwaysFailure )


--------------------------------------------------------------�����

	DefineMission( 6089, "\204\229\247\242\224", 1419, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>� ���?! ������, ��� ��� �������� �������." )
	MisResultCondition( HasMission, 1419)
	MisResultCondition( NoRecord, 1419)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1419)
	MisResultAction( ClearMission, 1419)

-------------------------------------------------------------�����

	DefineMission( 6090, "\204\229\247\242\224", 1420 )
	MisBeginTalk( "<t>��� ��� ���� ����� �� ���������� ������, �� ����� �� �� ����� �� ������ ����?" )
	MisBeginCondition( NoMission, 1420)
	MisBeginCondition( NoRecord, 1420)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( HasRecord, 1419)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1420)
	MisBeginAction( AddTrigger, 14201, TE_KILL, 630, 5)--������� ��������� ���������
	MisBeginAction( AddTrigger, 14202, TE_KILL, 631, 5)--������ ���������
	MisCancelAction( ClearMission, 1420)

	MisNeed( MIS_NEED_DESP, " ������ <r5 �������� ��������� ���������> � <r5 �������� ���������>." )
	MisNeed( MIS_NEED_KILL, 630, 5, 10, 5)
	MisNeed( MIS_NEED_KILL, 631, 5, 20, 5)
	
	MisResultTalk( "<t>� ������� ������ �� ����������� ����� ���, ���� �������, �� ����� ������ �������!" )
	MisResultCondition( HasMission, 1420)
	MisResultCondition( NoRecord, 1420)
	MisResultCondition( HasFlag, 1420, 14)
	MisResultCondition( HasFlag, 1420, 24)
	MisResultAction( SetRecord, 1420)
	MisResultAction( ClearMission, 1420)
	MisResultAction( AddSailExp, 20, 20)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 630 )
	TriggerAction( 1, AddNextFlag, 1420, 10, 5 )
	RegCurTrigger( 14201 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 631 )
	TriggerAction( 1, AddNextFlag, 1420, 20, 5 )
	RegCurTrigger( 14202 )


---------------------------------------------------------------���������� �������

	DefineMission( 6091, "\193\224\237\234\238\226\241\234\224\255 \209\232\241\242\229\236\224", 1421 )
	MisBeginTalk( "<t>� ���� ���� ������� �������� � ������, �� � �� ��� ����� ��� ��, ����� �� �������� ��� � ������������ � ���� �������?" )
	MisBeginCondition( NoMission, 1421)
	MisBeginCondition( NoRecord, 1421)
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasMission, 1414)
	MisBeginAction( AddMission, 1421)
	MisCancelAction( ClearMission, 1421)

	MisNeed( MIS_NEED_DESP, "<t>��������� ������� " )

	MisResultTalk( "<t>�� ��������� �� ������� " )
	MisHelpTalk( "<t>�� ����� ���� �����������..." )
	MisResultCondition( HasMission, 1421)
	MisResultCondition( NoRecord, 1421)
	MisResultCondition( CheckSpeed, 550)
	MisResultAction( SetRecord, 1421)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( ClearMission, 1421)

---------------------------------------------------------------

	DefineMission( 6092, "\193\224\237\234\238\226\241\234\224\255 \209\232\241\242\229\236\224", 1422 )
	MisBeginTalk( "<t>� ����� ��� ��� ������, ��� �������� ����� ����� ��� ����!" )
	MisBeginCondition( NoMission, 1422)
	MisBeginCondition( NoRecord, 1422)
	MisBeginCondition( HasRecord, 1421)
	MisBeginAction( AddMission, 1422)
	MisBeginAction( GiveItem, 956, 1, 4)
	MisCancelAction( ClearMission, 1422)

	MisNeed( MIS_NEED_DESP, " ������� ������� � � ������� " )
	MisHelpTalk( "<t>����� �������!" )

	MisResultCondition( AlwaysFailure )

------------------------------------------------------------

	DefineMission( 6093, "\193\224\237\234\238\226\241\234\224\255 \209\232\241\242\229\236\224", 1422, COMPLETE )
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>����������! �� ������ ���� �����... ��� ������������� ����������!" )
	MisResultCondition( HasMission, 1422)
	MisResultCondition( NoRecord, 1422)
	MisResultCondition( HasItem, 956, 1)
	MisResultAction( TakeItem, 956, 1)
	MisResultAction( SetRecord, 1422)
	MisResultAction( ClearMission, 1422)
	MisResultAction( AddSailExp, 5, 5)

----------------------------------------------------------������� �����

	DefineMission( 6094, "\213\238\240\238\248\232\229 \234\237\232\227\232", 1423 )
	MisBeginTalk( "<t>������ ������ �������� ������, � ����� ������ �� ����� �����, � ������ � ������ ������ ��� ������ ����������!" )
	MisBeginCondition( NoRecord, 1423)
	MisBeginCondition( NoMission, 1423)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1423)
	MisBeginAction( GiveItem, 957, 1, 4)--������� �����������
	MisCancelAction( ClearMission, 1423)

	MisNeed( MIS_NEED_DESP, " �������� ��� ����� ��������, ������� ������ ��������� � � �������� � ���� �." )
	MisHelpTalk( "<t>����� ����� ����� ��������, ����� �� ���� ����� ��� �� ���� ������ ���� ����������� " )

	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------������� ����� ----------------- ������� ����������

	DefineMission( 6095, "\213\238\240\238\248\232\229 \234\237\232\227\232", 1423 )--������� �����
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>�! �� ��� ��������� ��� �����? ����� � ������ � � ���!" )
	MisResultCondition( HasMission, 1423)
	MisResultCondition( NoRecord, 1423)
	MisResultCondition( HasItem, 957, 1)
	MisResultAction( TakeItem, 957, 1)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1423)
	MisResultAction( ClearMission, 1423)

-----------------------------------------------------------������� �����

	DefineMission( 6096, "\213\238\240\238\248\232\229 \234\237\232\227\232", 1424 )
	MisBeginTalk( "<t>������ �� ��������, ��� ������ �����, � ����� ������ � ���?" )
	MisBeginCondition( NoMission, 1424)
	MisBeginCondition( NoRecord, 1424)
	MisBeginCondition( HasRecord, 1423)
	MisBeginAction( AddMission, 1424)
	MisCancelAction( ClearMission, 1424)

	MisNeed( MIS_NEED_DESP, " ��� ���������� �������� �� ��������� �������� �� ������ <b������� �����������>." )
	MisHelpTalk( "<t>��� ������� �� ����� � �������, �� ���� �� �������!" )
		
	MisResultTalk( "<t>������ ������ ������ �����, � ��� ������!" )
	MisResultCondition( HasMission, 1424)
	MisResultCondition( NoRecord, 1424)
	MisResultCondition( HasRecord, 1429)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1424)
	MisResultAction( ClearMission, 1424)

-----------------------------------------------------------������� �������

	DefineMission( 6097, "\194\238\229\237\237\251\233 \248\239\232\238\237\224\230", 1425 )

	MisBeginTalk( "<t>�� ���� �����������, �� ��������� ������, � � ���� ��� �������� ���������� ������ ������, �� ������� ��������� ����������� � ������� �������, �� ��� �� ��� ��� �� ���������, ���� � �������� ��." )
	MisBeginCondition( NoMission, 1425)
	MisBeginCondition( NoRecord, 1425)
	MisBeginCondition( HasRecord, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1425)
	MisCancelAction( ClearMission, 1425)

	MisNeed( MIS_NEED_DESP, " ������������� � ������ ׸����� ������� " )
	MisHelpTalk( "<t>�����, � ������ ������������ " )
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------������� �������

	DefineMission( 6098, "\194\238\229\237\237\251\233 \248\239\232\238\237\224\230", 1425, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>�����.. �� ��� ������ ������� �������, ���... ��� �����!..." )
	MisResultCondition( HasMission, 1425)
	MisResultCondition( NoRecord, 1425)
	MisResultAction( SetRecord, 1425)
	MisResultAction( AddSailExp, 10, 10)
	MisResultAction( ClearMission, 1425)

-----------------------------------------------------------������� �������

	DefineMission( 6099, "\194\238\229\237\237\251\233 \248\239\232\238\237\224\230", 1426 )
	MisBeginCondition( NoMission, 1426)
	MisBeginCondition( NoRecord, 1426)
	MisBeginCondition( HasRecord, 1425)
	MisBeginAction( AddMission, 1426)
	MisBeginAction( GiveItem, 958, 1, 4)--������������ ����������
	MisCancelAction( ClearMission, 1426)

	MisNeed( MIS_NEED_DESP, " �������� ������ �������� � ���� �������." )
	MisHelpTalk( "<t>� ���� ���!" )

	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------������� �������

	DefineMission( 6100, "\194\238\229\237\237\251\233 \248\239\232\238\237\224\230", 1426, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>���? ���� ����� �������? ��� �� ��������!" )
	MisResultCondition( HasMission, 1426)
	MisResultCondition( NoRecord, 1426)
	MisResultCondition( HasItem, 958, 1)
	MisResultAction( TakeItem, 958, 1)
	MisResultAction( AddSailExp, 10, 10)
	MisResultAction( SetRecord, 1426)
	MisResultAction( ClearMission, 1426)

-----------------------------------------------------------��������

	DefineMission( 6101, "\208\224\241\239\235\224\242\224", 1427)

	MisBeginTalk( "<t>�� ������ ��������� ���� ����������� ���������! ������ <r���������� ������� �������>, <r��������� ����������> � <r������������ �����>. �� ������ ����������� �� ����������� ������ � ���� ������� �����!" )
	MisBeginCondition( NoMission, 1427)
	MisBeginCondition( NoRecord, 1427)
	MisBeginCondition( HasRecord, 1426)
	MisBeginAction( AddMission, 1427)
	MisBeginAction( AddTrigger, 14271, TE_KILL, 791, 1)--��������� ������ ������
	MisBeginAction( AddTrigger, 14272, TE_KILL, 793, 1)--�������� ���������
	MisBeginAction( AddTrigger, 14273, TE_KILL, 794, 1)--����������� �����
	MisCancelAction( ClearMission, 1427)

	MisNeed( MIS_NEED_KILL, 791, 1, 10, 1)
	MisNeed( MIS_NEED_KILL, 793, 1, 30, 1)
	MisNeed( MIS_NEED_KILL, 794, 1, 50, 1)

	MisResultTalk( "<t>�������, �� ��������, �� ��������� ����, ����� �� ������  ���������� ���� ���� � ������������." )
	MisHelpTalk( "<t>������ ���������, ��� ����� �� ����� � ������ ��� ����� ���������� �� ������ ������." )
	MisResultCondition( HasMission, 1427)
	MisResultCondition( NoRecord, 1427)
	MisResultCondition( HasFlag, 1427, 10)
	MisResultCondition( HasFlag, 1427, 30)
	MisResultCondition( HasFlag, 1427, 50)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( SetRecord, 1427)
	MisResultAction( ClearMission, 1427)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 791 )
	TriggerAction( 1, AddNextFlag, 1427, 10, 1 )
	RegCurTrigger( 14271 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 793 )
	TriggerAction( 1, AddNextFlag, 1427, 30, 1 )
	RegCurTrigger( 14272 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 794 )
	TriggerAction( 1, AddNextFlag, 1427, 50, 1 )
	RegCurTrigger( 14273 )


----------------------------------------------------����� ׸����� �������

	DefineMission( 6102, "\194\251\231\238\226 \215\191\240\237\238\227\238 \196\240\224\234\238\237\224", 1430 )
	MisBeginTalk( "<t>������ ������ ������� � ������ ׸����� ������� 2. ��� �� �� ��������� ����� �� ����� ���������� �������� � ����. �� ����� �������, ��� ������ ����� � ����?" )
	MisBeginCondition( NoMission, 1430)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1430)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14301, TE_KILL, 789, 1)--������ ������
	MisCancelAction( ClearMission, 1430)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 789, 1, 10, 1)

	MisResultTalk( "<t>������ �������� ������ ��� �������!" )
	MisHelpTalk( "<t>����� ��� �� �������, ���� ��� ������� �����!" )
	MisResultCondition( HasFlag, 1430, 10)
	MisResultCondition( HasMission, 1430)
	MisResultAction( AddSailExp, 120, 120)
	MisResultAction( ClearMission, 1430)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1430, 10, 1 )
	RegCurTrigger( 14301 )

------------------------------------------------------����� ���������� ����

	DefineMission( 6103, "\194\251\231\238\226 \193\235\243\230\228\224\254\249\229\233 \228\243\248\232", 1432 )
	MisBeginTalk( "<t>���������� ���� �� ������� ����� � ���� ������� 1, �� ������ ���������, ���� ������ ���� �� ����� ������� �������� � ����!" )
	MisBeginCondition( NoMission, 1432)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1432)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14321, TE_KILL, 679, 1)--���������� ����
	MisCancelAction( ClearMission, 1432)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 679, 1, 10, 1)

	MisResultTalk( "<t>�� ������� �����." )
	MisHelpTalk( "<t>����� � ������ ���������� ����!" )
	MisResultCondition( HasFlag, 1432, 10)
	MisResultCondition( HasMission, 1432)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( ClearMission, 1432)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1432, 10, 1 )
	RegCurTrigger( 14321 )

------------------------------------------------------����� ����� �������� ����

	DefineMission( 6104, "\226\251\231\238\226 \195\235\224\226\251 \241\237\229\230\237\238\227\238 \235\254\228\224", 1433 )
	MisBeginTalk( "<t>����� �������� ���� �� ������� ����� � ���� �������2, �� ������ ���������, �� ��������� ����� �� ����� ������� �������� ����!" )
	MisBeginCondition( NoMission, 1433)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1433)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14331, TE_KILL, 678, 1)--����� �������� ����
	MisCancelAction( ClearMission, 1433)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 678, 1, 10, 1)

	MisResultTalk( "<t>�� ������� � ������ ����." )
	MisHelpTalk( "<t>������������� � ��� �������!" )
	MisResultCondition( HasFlag, 1433, 10)
	MisResultCondition( HasMission, 1433)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( ClearMission, 1433)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1433, 10, 1 )
	RegCurTrigger( 14331 )

-------------------------------------------------------����� ���������

	DefineMission( 6105, "\194\251\231\238\226 \193\224\240\225\238\240\238\241\224", 1434 )
	MisBeginTalk( "<t>��������� ����� ������� ������ ����, ������ � ��� ���������. ����� ��� �� ������� �� ������� ��������!" )
	MisBeginCondition( NoMission, 1434)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1434)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14341, TE_KILL, 805, 1)--���������
	MisCancelAction( ClearMission, 1434)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 805, 1, 10, 1)

	MisResultTalk( "<t>�� ������� � ������ ����." )
	MisHelpTalk( "<t>������������� �� ������ ���������!" )
	MisResultCondition( HasFlag, 1434, 10)
	MisResultCondition( HasMission, 1434)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1434)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 805 )
	TriggerAction( 1, AddNextFlag, 1434, 10, 1 )
	RegCurTrigger( 14341 )

-------------------------------------------------------����� ��������� ������� ���

	DefineMission( 6106, "\194\251\231\238\226 \202\238\236\224\237\228\232\240\224 \236\229\240\242\226\251\245 \228\243\248", 1435 )
	MisBeginTalk( "<t>�������� ������� ��� - ��� ���� �� ����� ������� �������� ����. ����� ��� ����� � ������ �������. �� �������, ��� ������ � ��� ��������?" )
	MisBeginCondition( NoMission, 1435)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1435)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14351, TE_KILL, 807, 1)--�������� ������� ���
	MisCancelAction( ClearMission, 1435)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 807, 1, 10, 1)

	MisResultTalk( "<t>�� ������� � ������� �����." )
	MisHelpTalk( "<t>������������� � �������!" )
	MisResultCondition( HasFlag, 1435, 10)
	MisResultCondition( HasMission, 1435)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1435)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 807 )
	TriggerAction( 1, AddNextFlag, 1435, 10, 1 )
	RegCurTrigger( 14351 )

-------------------------------------------------------����� ��������������� ����������� ������

	DefineMission( 6107, "\194\251\231\238\226 \196\238\232\241\242\238\240\232\247\229\241\234\238\227\238 \227\232\227\224\237\242\241\234\238\227\238 \209\239\240\243\242\224", 1436 )
	MisBeginTalk( "<t>������ - �������������� ���������� �����, �������� ����� �� ����� ���������� �������� ����, ������� �� � ������� ��������. �� �������, ��� ������ � ��� �������?" )
	MisBeginCondition( NoMission, 1436)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1436)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14361, TE_KILL, 796, 1)--�������������� ���������� �����
	MisCancelAction( ClearMission, 1436)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 796, 1, 10, 1)

	MisResultTalk( "<t>����� ������� � ������� ��������." )
	MisHelpTalk( "<t>�� �������, �� �� ������!" )
	MisResultCondition( HasFlag, 1436, 10)
	MisResultCondition( HasMission, 1436)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1436)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 796 )
	TriggerAction( 1, AddNextFlag, 1436, 10, 1 )
	RegCurTrigger( 14361 )

-------------------------------------------------------����� ������� ����������

	DefineMission( 6108, "\194\251\231\238\226 \215\229\240\237\238\227\238 \225\240\232\235\235\232\224\237\242\224", 1437 )
	MisBeginTalk( "<t>������ ���������, �������� ����� �� ���������� �������� ����, ����� ��� ����� � ������� ����. ��������� � ���, �� ������!" )
	MisBeginCondition( NoMission, 1437)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1437)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14371, TE_KILL, 815, 1)--������ ���������
	MisCancelAction( ClearMission, 1437)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 815, 1, 10, 1)

	MisResultTalk( "<t>�� ��������� �����." )
	MisHelpTalk( "<t>�� ������� ���!" )
	MisResultCondition( HasFlag, 1437, 10)
	MisResultCondition( HasMission, 1437)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1437)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 815 )
	TriggerAction( 1, AddNextFlag, 1437, 10, 1 )
	RegCurTrigger( 14371 )

-------------------------------------------------------����� ������ �������� - ����

	DefineMission( 6109, "\194\251\231\238\226 \208\251\246\224\240\255 \238\242\247\224\255\237\232\255 - \209\224\240\238", 1438 )
	MisBeginTalk( "<t>������ �������� - ���� - ��� ���� �� ���������� �������� � ����, ����� ��� ����� � �������� 5-8. ������ ��������� � ���!" )
	MisBeginCondition( NoMission, 1438)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1438)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14381, TE_KILL, 974, 1)--������ �������� - ����
	MisCancelAction( ClearMission, 1438)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 974, 1, 10, 1)

	MisResultTalk( "<t>�� ��������� �����." )
	MisHelpTalk( "<t>������ ������ �������� - ����!" )
	MisResultCondition( HasFlag, 1438, 10)
	MisResultCondition( HasMission, 1438)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1438)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 974 )
	TriggerAction( 1, AddNextFlag, 1438, 10, 1 )
	RegCurTrigger( 14381 )

-------------------------------------------------------����� ��������� �� ������ - ����

	DefineMission( 6110, "\194\251\231\238\226 \195\240\255\231\232\235\232\249\255 \232\231 \193\229\231\228\237\251 - \202\224\240\243\191\191", 1439 )--����� ��������� �� ������ - ����
	MisBeginTalk( "<t>��������� �� ������ - ���� ����� ����� � �������� 6. ���������! �� ��������� ����� �� ���������� �������� ����!" )
	MisBeginCondition( NoMission, 1439)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1439)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14391, TE_KILL, 975, 1)--��������� �� ������ - ����
	MisCancelAction( ClearMission, 1439)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 975, 1, 10, 1)

	MisResultTalk( "<t>�� ��������� �����." )
	MisHelpTalk( "<t>�� ������� � ������������� � ������� 6!" )
	MisResultCondition( HasFlag, 1439, 10)
	MisResultCondition( HasMission, 1439)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1439)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 975 )
	TriggerAction( 1, AddNextFlag, 1439, 10, 1 )
	RegCurTrigger( 14391 )

-------------------------------------------------------����� ������ ������ - ������

	DefineMission( 6111, "\194\251\231\238\226 \211\231\237\232\234\224 \193\229\231\228\237\251 - \192\240\224\242\243\240", 1440)
	MisBeginTalk( "<t>����� ������ - ������ ����� ����� � �������� 7. ���������! �� ��������� ����� �� ���������� �������� ����!" )
	MisBeginCondition( NoMission, 1440)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1440)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14401, TE_KILL, 976, 1)--����� ������ - ������
	MisCancelAction( ClearMission, 1440)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 976, 1, 10, 1)

	MisResultTalk( "<t>Every battle will make us stronger.")
	MisHelpTalk( "<t>Please becareful!")
	MisResultCondition( HasFlag, 1440, 10)
	MisResultCondition( HasMission, 1440)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1440)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 976 )
	TriggerAction( 1, AddNextFlag, 1440, 10, 1 )
	RegCurTrigger( 14401 )

-------------------------------------------------------����� ������ ������ - ������

	DefineMission( 6112, "\194\251\231\238\226 \196\229\236\238\237\224 \225\229\231\228\237\251 - \209\224\234\240\243\224", 1441 )
	MisBeginTalk( "<t>����� ������ - ������ ����� ����� � �������� 8. ���������! �� ��������� ����� �� ���������� �������� ����!" )
	MisBeginCondition( NoMission, 1441)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1441)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14411, TE_KILL, 977, 1)--����� ������ - ������
	MisCancelAction( ClearMission, 1441)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 977, 1, 10, 1)

	MisResultTalk( "<t>�� ��������� �����." )
	MisHelpTalk( "<t>�� ������� �������!" )
	MisResultCondition( HasFlag, 1441, 10)
	MisResultCondition( HasMission, 1441)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1441)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 977 )
	TriggerAction( 1, AddNextFlag, 1441, 10, 1 )
	RegCurTrigger( 14411 )

-------------------------------------------------------����� �������� �� ������ - ����
	DefineMission( 6113, "\194\251\231\238\226 \215\243\228\238\226\232\249\255 \232\231 \193\229\231\228\237\251 - \202\243\240\238", 1442 )
	MisBeginTalk( "<t>�������� �� ������ - ���� ����� ����� � �������� 9. ���������! �� ��������� ����� �� ���������� �������� ����!" )
	MisBeginCondition( NoMission, 1442)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1442)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14421, TE_KILL, 978, 1)--�������� �� ������ - ����
	MisCancelAction( ClearMission, 1442)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 978, 1, 10, 1)

	MisResultTalk( "<t>�� ��������� �����." )
	MisHelpTalk( "<t>�� ������� �������!" )
	MisResultCondition( HasFlag, 1442, 10)
	MisResultCondition( HasMission, 1442)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1442)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 978 )
	TriggerAction( 1, AddNextFlag, 1442, 10, 1 )
	RegCurTrigger( 14422 )

	------------------------------------------------����� �����
	
	DefineMission( 5608, "\210\229\235\229\246 \195\229\240\238\255", 1114 )
	
	MisBeginTalk( "<t>����� ������ ��� �������� �������.��������� ����� ������ ���� ������ � ������." )

	MisBeginCondition(NoMission,1114)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1114)
	MisBeginAction(AddMission,1114)
	MisCancelAction(ClearMission, 1114)
	
	MisNeed(MIS_NEED_DESP, " ������������ ������� 30 ����� ����� " )
	MisHelpTalk( "<t>������������ ������� 30 ����� ����� ")
	MisResultTalk( "<t>�� ������� ������ � ��������, ���� ������ - ��� �� ������ �� ���, � ������ ������ ��� �� ������ ���������!" )

	MisResultCondition(HasMission, 1114)
	MisResultCondition(NoRecord,1114)
	MisResultCondition(HasFightingPoint,30 )
	MisResultAction(TakeFightingPoint, 30 )
	MisResultAction(ClearMission, 1114)
	MisResultAction(SetRecord,  1114 )
	MisResultAction(GiveItem, 3028, 1, 4)--������ �������
	MisResultBagNeed(1)

	-------------------------------------------------�������� ��������� ������
	
	DefineMission( 5609, "\202\240\238\226\224\226\224\255 \240\229\239\243\242\224\246\232\255 \210\229\235\252\246\224", 1115 )
	
	MisBeginTalk("<t>��������� - ��� ����� ������ ����� � ������� �����!" )

	MisBeginCondition(NoMission,1115)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1115)
	MisBeginAction(AddMission,1115)
	MisCancelAction(ClearMission, 1115)
	
	MisNeed(MIS_NEED_DESP, "�������� 1000 ���������." )
	MisHelpTalk( "<t>��� ���������� �������� �������� � ��� ����� �������� ���������." )
	MisResultTalk( "<t>� ����, ��� ��� �� � ������ �������� �����." )

	MisResultCondition(HasMission, 1115)
	MisResultCondition(NoRecord,1115)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(TakeCredit, 1000 )
	MisResultAction(ClearMission, 1115)
	MisResultAction(SetRecord, 1115 )
	MisResultAction(GiveItem, 3029, 1, 4)--������ �������
	MisResultBagNeed(1)


	-------------------------------------------------�������� �����(�������)
	
	DefineMission( 5610, "\202\240\238\226\224\226\251\233 \210\229\235\229\246 \195\229\240\238\255", 1116 )
	
	MisBeginTalk( "<t>�� ������ ���� �� ���� 55 ������!" )

	MisBeginCondition(NoMission,1116)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1116)
	MisBeginAction(AddMission,1116)
	MisCancelAction(ClearMission, 1116)
	
	MisNeed(MIS_NEED_DESP, " �������� 55 �������." )
	MisHelpTalk( "<t>55 �������, �� ��� � ������ ��� ��������...." )
	MisResultTalk( "<t>�� ������ �� ������." )

	MisResultCondition(HasMission, 1116)
	MisResultCondition(NoRecord,1116)
	MisResultCondition(LvCheck, ">", 54 )
	MisResultAction(ClearMission, 1116)
	MisResultAction(SetRecord,  1116 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------�����
	
	DefineMission( 5611, "\215\229\241\242\252 \210\229\235\252\246\224", 1117 )--�����
	
	MisBeginTalk( "<t>��� ����� � ���� ����� �� ����. � ��� ������ ���� 300 �����." )

	MisBeginCondition(NoMission,1117)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1117)
	MisBeginAction(AddMission,1117)
	MisCancelAction(ClearMission, 1117)
	
	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� 300 ����� " )
	MisHelpTalk( "<t>����������� � ��������� ����� ��������." )
	MisResultTalk( "<t>��� ��� ������������." )

	MisResultCondition(HasMission, 1117)
	MisResultCondition(NoRecord,1117)
	MisResultCondition(HasHonorPoint,300 )
	MisResultAction(TakeHonorPoint, 300 )
	MisResultAction(ClearMission, 1117)
	MisResultAction(SetRecord,  1117 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�����
	
	DefineMission( 5612, "\209\225\238\240 \196\224\237\232 \210\229\235\252\246\243", 1118 )
	
	MisBeginTalk( "<t>��� ���������� ������� ���� ��� ������." )

	MisBeginCondition(NoMission,1118)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1118)
	MisBeginAction(AddMission,1118)
	MisBeginAction(AddTrigger, 11181, TE_GETITEM, 4804, 10 )
	MisBeginAction(AddTrigger, 11182, TE_GETITEM, 4720, 10 )
	MisBeginAction(AddTrigger, 11183, TE_GETITEM, 3129, 10 )
	MisBeginAction(AddTrigger, 11184, TE_GETITEM, 2588, 5 )
	MisBeginAction(AddTrigger, 11185, TE_GETITEM, 4494, 1 )
	MisBeginAction(AddTrigger, 11186, TE_GETITEM, 1682, 50 )
	MisBeginAction(AddTrigger, 11187, TE_GETITEM, 1138, 10 )
	MisBeginAction(AddTrigger, 11188, TE_GETITEM, 0227, 1 )
	MisCancelAction(ClearMission, 1118)
	

	MisNeed(MIS_NEED_ITEM, 4804, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4720, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3129, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 2588, 5, 31, 5 )
	MisNeed(MIS_NEED_ITEM, 4494, 1, 36, 1 )
	MisNeed(MIS_NEED_ITEM, 1682, 50, 37, 50 )
	MisNeed(MIS_NEED_ITEM, 1138, 10, 87, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 1, 97, 1 )

	MisHelpTalk( "<t>��� �� �� ����� ����� �� ������ ���������� � ���� ���� � ����������������." )
	MisResultTalk("<t>���� �� ����� �������." )

	MisResultCondition(HasMission, 1118)
	MisResultCondition(NoRecord,1118)
	MisResultCondition(HasItem, 4804, 10 )
	MisResultCondition(HasItem, 4720, 10 )
	MisResultCondition(HasItem, 3129, 10 )
	MisResultCondition(HasItem, 2588, 5 )
	MisResultCondition(HasItem, 4494, 1 )
	MisResultCondition(HasItem, 1682, 50 )
	MisResultCondition(HasItem, 1138, 10 )
	MisResultCondition(HasItem, 0227, 1 )

	MisResultAction(TakeItem, 4804, 10 )
	MisResultAction(TakeItem, 4720, 10 )
	MisResultAction(TakeItem, 3129, 10 )
	MisResultAction(TakeItem, 2588, 5 )
	MisResultAction(TakeItem, 4494, 1 )
	MisResultAction(TakeItem, 1682, 50 )
	MisResultAction(TakeItem, 1138, 10 )
	MisResultAction(TakeItem, 0227, 1 )
	MisResultAction(ClearMission, 1118)
	MisResultAction(SetRecord,  1118 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1118, 1, 10 )
	RegCurTrigger( 11181 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1118, 11, 10 )
	RegCurTrigger( 11182 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1118, 21, 10 )
	RegCurTrigger( 11183 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1118, 31, 5 )
	RegCurTrigger( 11184 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1118, 36, 1 )
	RegCurTrigger( 11185 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1118, 37, 50 )
	RegCurTrigger( 11186 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1118, 87, 10 )
	RegCurTrigger( 11187 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1118, 97, 1 )
	RegCurTrigger( 11188 )


	----------------------------------------------------------�����
	DefineMission( 5613, "\209\236\229\240\242\252 \210\229\235\252\246\224", 1119 )
	MisBeginTalk( "<t>�������� ������� �� ����� ���� ������ �� ������� �������� " )
				
	MisBeginCondition(NoMission, 1119)
	MisBeginCondition(HasRecord,1152)
	MisBeginCondition(NoRecord,1119)
	MisBeginAction(AddMission,1119)
	MisBeginAction(AddTrigger, 11191, TE_KILL, 1038, 1)---�����
	
	MisCancelAction(ClearMission, 1119)

	MisNeed(MIS_NEED_DESP, " ����� ������ �� ������� �������� � �����(2436,2405)!" )
	MisNeed(MIS_NEED_KILL, 1038,1, 10, 1)
	

	MisResultTalk( "<t>�� ������� �����, ���� ���������� � ����� ��������� �����������." )
	MisHelpTalk( "<t>������������� � ������� ������� ������� �������." )
	MisResultCondition(HasMission,  1119)
	MisResultCondition(HasFlag, 1119, 10)
	MisResultCondition(NoRecord , 1119)
	MisResultAction(GiveItem, 3034, 1, 4 )
	MisResultAction(ClearMission,  1119)
	MisResultAction(SetRecord,  1119 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1038)	
	TriggerAction( 1, AddNextFlag, 1119, 10, 1 )
	RegCurTrigger( 11191 )






-------------------------------------------------�����
	
	DefineMission(5614, "\210\229\235\229\246 \195\229\240\238\255", 1120 )
	
	MisBeginTalk( "<t>����� ������ ��� �������� �������.��������� ����� ������ ���� ������ � ������ " )

	MisBeginCondition(NoMission,1120)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1120)
	MisBeginAction(AddMission,1120)
	MisCancelAction(ClearMission, 1120)
	
	MisNeed(MIS_NEED_DESP, " ������������ ������� 60 ����� ����� " )
	MisHelpTalk( "<t>������������ ������� 30 ����� ����� " )
	MisResultTalk( "<t>�� ������� ������ � ��������, ���� ������ - ��� �� ������ �� ���, � ������ ������ ��� �� ������ ���������!" )

	MisResultCondition(HasMission, 1120)
	MisResultCondition(NoRecord,1120)
	MisResultCondition(HasFightingPoint,60 )
	MisResultAction(TakeFightingPoint, 60 )
	MisResultAction(ClearMission, 1120)
	MisResultAction(SetRecord,  1120 )
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�����
	
	DefineMission( 5615, "\202\240\238\226\224\226\224\255 \240\229\239\243\242\224\246\232\255 \210\229\235\252\246\224", 1121 )
	
	MisBeginTalk( "<t>��������� - ��� ����� ������ ����� � ������� �����." )

	MisBeginCondition(NoMission,1121)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1121)
	MisBeginAction(AddMission,1121)
	MisCancelAction(ClearMission, 1121)
	
	MisNeed(MIS_NEED_DESP, "�������� 3000 ���������." )
	MisHelpTalk( "<t>�������� 3000 ���������!" )
	MisResultTalk( "<t>� ����, ��� ��� �� � ������ �������� �����." )

	MisResultCondition(HasMission, 1121)
	MisResultCondition(NoRecord,1121)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit,3000  )
	MisResultAction(ClearMission, 1121)
	MisResultAction(SetRecord,  1121 )
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�����
	
	DefineMission( 5616, "\202\240\238\226\224\226\251\233 \210\229\235\229\246 \195\229\240\238\255", 1122 )
	
	MisBeginTalk( "<t>�� ������ ���� �� ���� 60 ������." )

	MisBeginCondition(NoMission,1122)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1122)
	MisBeginAction(AddMission,1122)
	MisCancelAction(ClearMission, 1122)
	
	MisNeed(MIS_NEED_DESP, " �������� 60 ������� " )
	MisHelpTalk("<t>60 �������, �� ��� � ������ ��� ��������...." )
	MisResultTalk("<t>�� ������ �� ������." )

	MisResultCondition(HasMission, 1122)
	MisResultCondition(NoRecord,1122)
	MisResultCondition(LvCheck, ">", 59 )
	MisResultAction(ClearMission, 1122)
	MisResultAction(SetRecord,  1122 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------�����
	
	DefineMission( 5617, "\215\229\241\242\252 \210\229\235\252\246\224", 1123 )
	
	MisBeginTalk( "<t>��� ����� � ���� ����� �� ����. � ��� ������ ���� 500 �����." )

	MisBeginCondition(NoMission,1123)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1123)
	MisBeginAction(AddMission,1123)
	MisCancelAction(ClearMission, 1123)
	
	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� 500 ����� " )
	MisHelpTalk( "<t>����������� � ��������� ����� ��������" )
	MisResultTalk( "<t>��� ��� ������������." )

	MisResultCondition(HasMission, 1123)
	MisResultCondition(NoRecord,1123)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1123)
	MisResultAction(SetRecord,  1123 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�����
	
	DefineMission( 5618, "\209\225\238\240 \196\224\237\232 \210\229\235\252\246\243", 1124 )
	
	MisBeginTalk( "<t>��� ���������� ������� ���� ��� ������." )

	MisBeginCondition(NoMission,1124)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1124)
	MisBeginAction(AddMission,1124)
	MisBeginAction(AddTrigger, 11241, TE_GETITEM, 4804, 15 )    
	MisBeginAction(AddTrigger, 11242, TE_GETITEM, 4720, 15 )          
	MisBeginAction(AddTrigger, 11243, TE_GETITEM, 3129, 15 )               
	MisBeginAction(AddTrigger, 11244, TE_GETITEM, 2588, 10 )               
	MisBeginAction(AddTrigger, 11245, TE_GETITEM, 4494, 1 )           
	MisBeginAction(AddTrigger, 11246, TE_GETITEM, 1682, 40 )                  
	MisBeginAction(AddTrigger, 11247, TE_GETITEM, 1138, 20 ) 
	MisBeginAction(AddTrigger, 11248, TE_GETITEM, 0227, 3 )          
	MisCancelAction(ClearMission, 1124)
	

	MisNeed(MIS_NEED_ITEM, 4804, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 4720, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 3129, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 2588, 10, 46, 10 )
	MisNeed(MIS_NEED_ITEM, 4494, 1, 56, 1 )
	MisNeed(MIS_NEED_ITEM, 1682, 40, 57, 40 )
	MisNeed(MIS_NEED_ITEM, 1138, 20, 97, 20 )
	MisNeed(MIS_NEED_ITEM, 0227, 3, 117, 3 )

	MisHelpTalk( "<t>��� �� �� ����� ����� �� ������ ���������� � ���� ���� � ����������������." )
	MisResultTalk( "<t>���� �� ����� �������." )

	MisResultCondition(HasMission, 1124)
	MisResultCondition(NoRecord,1124)
	MisResultCondition(HasItem, 4804, 15 )
	MisResultCondition(HasItem, 4720, 15 )
	MisResultCondition(HasItem, 3129, 15 )
	MisResultCondition(HasItem, 2588, 10 )
	MisResultCondition(HasItem, 4494, 1 )
	MisResultCondition(HasItem, 1682, 40 )
	MisResultCondition(HasItem, 1138, 20 )
	MisResultCondition(HasItem, 0227, 3 )

	MisResultAction(TakeItem, 4804, 15 )
	MisResultAction(TakeItem, 4720, 15 )
	MisResultAction(TakeItem, 3129, 15 )
	MisResultAction(TakeItem, 2588, 10 )
	MisResultAction(TakeItem, 4494, 1 )
	MisResultAction(TakeItem, 1682, 40 )
	MisResultAction(TakeItem, 1138, 20 )
	MisResultAction(TakeItem, 0227, 3 )
	MisResultAction(ClearMission, 1124)
	MisResultAction(SetRecord,  1124 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1124, 1, 15 )
	RegCurTrigger( 11241 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1124, 16, 15 )
	RegCurTrigger( 11242 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1124, 31, 15 )
	RegCurTrigger( 11243 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1124, 46, 10 )
	RegCurTrigger( 11244 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1124, 56, 1 )
	RegCurTrigger( 11245 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1124, 57, 40 )
	RegCurTrigger( 11246 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1124, 97, 20 )
	RegCurTrigger( 11247 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1124, 117, 3 )
	RegCurTrigger( 11248 )

	



-------------------------------------------------�����
	
	DefineMission( 5619, "\210\229\235\229\246 \195\229\240\238\255", 1125 )
	
	MisBeginTalk( "<t>����� ������ ��� �������� �������.��������� ����� ������ ���� ������ � ������." )

	MisBeginCondition(NoMission,1125)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1125)
	MisBeginAction(AddMission,1125)
	MisCancelAction(ClearMission, 1125)
	
	MisNeed(MIS_NEED_DESP, " ������������ ������� 100 ����� ����� " )
	MisHelpTalk( "<t>������������ ������� 100 ����� ����� " )
	MisResultTalk( "<t>�� ������� ������ � ��������, ���� ������ - ��� �� ������ �� ���, � ������ ������ ��� �� ������ ���������!" )

	MisResultCondition(HasMission, 1125)
	MisResultCondition(NoRecord,1125)
	MisResultCondition(HasFightingPoint,100 )
	MisResultAction(TakeFightingPoint, 100 )
	MisResultAction(ClearMission, 1125)
	MisResultAction(SetRecord,  1125 )
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�����
	
	DefineMission( 5620, "\202\240\238\226\224\226\224\255 \240\229\239\243\242\224\246\232\255 \210\229\235\252\246\224", 1126 )
	
	MisBeginTalk( "<t>��������� - ��� ����� ������ ����� � ������� �����." )

	MisBeginCondition(NoMission,1126)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1126)
	MisBeginAction(AddMission,1126)
	MisCancelAction(ClearMission, 1126)
	
	MisNeed(MIS_NEED_DESP, " �������� 5000 ��������� " )
	MisHelpTalk( "<t>��� ���������� �������� �������� � ��� ����� �������� ��������� " )
	MisResultTalk( "<t>� ����, ��� ��� �� � ������ �������� �����." )

	MisResultCondition(HasMission, 1126)
	MisResultCondition(NoRecord,1126)
	MisResultCondition(HasCredit,5000 )
	MisResultAction(TakeCredit, 5000 )
	MisResultAction(ClearMission, 1126)
	MisResultAction(SetRecord,  1126 )
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�����
	
	DefineMission( 5621, "\202\240\238\226\224\226\251\233 \210\229\235\229\246 \195\229\240\238\255", 1127 )
	
	MisBeginTalk( "<t>�� ������ ���� �� ���� 65 ������ " )

	MisBeginCondition(NoMission,1127)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1127)
	MisBeginAction(AddMission,1127)
	MisCancelAction(ClearMission, 1127)
	
	MisNeed(MIS_NEED_DESP, " �������� 65 ������� " )
	MisHelpTalk( "<t>�������� 55 ������...." )
	MisResultTalk( "<t>�� ������ �� ������." )

	MisResultCondition(HasMission, 1127)
	MisResultCondition(NoRecord,1127)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1127)
	MisResultAction(SetRecord,  1127 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------�����
	
	DefineMission( 5622, "\215\229\241\242\252 \210\229\235\252\246\224", 1128 )
	
	MisBeginTalk( "<t>��� ����� � ���� ����� �� ����. � ��� ������ ���� 800 �����." )

	MisBeginCondition(NoMission,1128)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1128)
	MisBeginAction(AddMission,1128)
	MisCancelAction(ClearMission, 1128)
	
	MisNeed(MIS_NEED_DESP, " � ��� ������ ���� 300 ����� " )
	MisHelpTalk( "<t>����������� � ��������� ����� �������� " )
	MisResultTalk( "<t>��� ��� ������������!" )

	MisResultCondition(HasMission, 1128)
	MisResultCondition(NoRecord,1128)
	MisResultCondition(HasHonorPoint,800 )
	MisResultAction(TakeHonorPoint, 800 )
	MisResultAction(ClearMission, 1128)
	MisResultAction(SetRecord,  1128 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�����
	
	DefineMission( 5623, "\209\225\238\240 \196\224\237\232 \210\229\235\252\246\243", 1129 )
	
	MisBeginTalk( "<t>��� ���������� ������� ���� ��� ������." )

	MisBeginCondition(NoMission,1129)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1129)
	MisBeginAction(AddMission,1129)
	MisBeginAction(AddTrigger, 11291, TE_GETITEM, 4804, 10 )  
	MisBeginAction(AddTrigger, 11292, TE_GETITEM, 4720, 10 )     
	MisBeginAction(AddTrigger, 11293, TE_GETITEM, 3129, 10 )           
	MisBeginAction(AddTrigger, 11294, TE_GETITEM, 2588, 15 )            
	MisBeginAction(AddTrigger, 11295, TE_GETITEM, 4494, 5 )            
	MisBeginAction(AddTrigger, 11296, TE_GETITEM, 1682, 40 )              
	MisBeginAction(AddTrigger, 11297, TE_GETITEM, 1138, 25 )
	MisBeginAction(AddTrigger, 11298, TE_GETITEM, 0227, 5 )           
	MisCancelAction(ClearMission, 1129)						                                     
	

	MisNeed(MIS_NEED_ITEM, 4804, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4720, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3129, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 2588, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 4494, 5, 46, 5)
	MisNeed(MIS_NEED_ITEM, 1682, 40, 51, 40 )
	MisNeed(MIS_NEED_ITEM, 1138, 25, 91, 25 )
	MisNeed(MIS_NEED_ITEM, 0227, 5, 116, 5 )

	MisHelpTalk( "<t>��� �� �� ����� ����� �� ������ ���������� � ���� ���� � ���������������� " )
	MisResultTalk("<t>���� �� ����� �������." )

	MisResultCondition(HasMission, 1129)
	MisResultCondition(NoRecord,1129)
	MisResultCondition(HasItem, 4804, 10 )
	MisResultCondition(HasItem, 4720, 10 )
	MisResultCondition(HasItem, 3129, 10 )
	MisResultCondition(HasItem, 2588, 15 )
	MisResultCondition(HasItem, 4494,  5 )
	MisResultCondition(HasItem, 1682, 40 )
	MisResultCondition(HasItem, 1138, 25 )
	MisResultCondition(HasItem, 0227, 5 )

	MisResultAction(TakeItem, 4804, 10 )
	MisResultAction(TakeItem, 4720, 10 )
	MisResultAction(TakeItem, 3129, 10 )
	MisResultAction(TakeItem, 2588, 15 )
	MisResultAction(TakeItem, 4494, 5 )
	MisResultAction(TakeItem, 1682, 40 )
	MisResultAction(TakeItem, 1138, 25 )
	MisResultAction(TakeItem, 0227, 5 )
	MisResultAction(ClearMission, 1129)
	MisResultAction(SetRecord,  1129 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1129, 1, 10 )
	RegCurTrigger( 11291 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1129, 11, 10 )
	RegCurTrigger( 11292 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1129, 21, 10 )
	RegCurTrigger( 11293 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1129, 31, 15 )
	RegCurTrigger( 11294 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1129, 46, 5 )
	RegCurTrigger( 11295 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1129, 51, 40 )
	RegCurTrigger( 11296 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1129, 91, 25 )
	RegCurTrigger( 11297 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1129, 116, 5 )
	RegCurTrigger( 11298 )


	

	----------------------------------------------------------����� ��������� ������

	DefineMission( 5624, "\207\238\241\238\235 \202\240\238\226\224\226\238\227\238 \210\229\235\252\246\224", 1130 )
	MisBeginTalk( "<t>��� �������� �������� �� ����� ����, ��� �� �������� ���������� " )
				
	MisBeginCondition(NoMission, 1130)
	MisBeginCondition(NoRecord,1130)
	MisBeginCondition(HasRecord, 1152)
	MisBeginAction(AddMission,1130)
	MisCancelAction(ClearMission, 1130)

	MisNeed(MIS_NEED_DESP, " ������������� � ������ � ����� (628,2095)." )
	
	MisHelpTalk("<t>�� ������� ����� �� ������ ��������� " )
	MisResultCondition(AlwaysFailure)

-----------------------------------------�����

	DefineMission( 5625, "\207\238\241\238\235", 1130, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>��� ����� �� ����������? �� � �� ���� ����� ����������� �� ����." )
	MisResultCondition(NoRecord, 1130)
	MisResultCondition(HasMission,1130)
	MisResultAction(ClearMission,1130)
	MisResultAction(SetRecord, 1130)

	-----------------------------------------�����

	DefineMission( 5626, "\207\238\241\238\235 2", 1131 )
	MisBeginTalk( "<t>��� ���������� ����� ���������� � ������� � ���." )
				
	MisBeginCondition(NoMission, 1131)
	MisBeginCondition(NoRecord,1131)
	MisBeginCondition(HasRecord, 1130)
	MisBeginAction(AddMission,1131)
	MisCancelAction(ClearMission, 1131)

	MisNeed(MIS_NEED_DESP, "������������� � ������ � ����� (862,3303)." )
	
	MisHelpTalk( "<t>�� ������� ����� �� ������ ��������� " )
	MisResultCondition(AlwaysFailure)

-----------------------------------------�����

	DefineMission(5627, "\207\238\241\238\235 2", 1131, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�� �� ���?" )
	MisResultCondition(NoRecord, 1131)
	MisResultCondition(HasMission,1131)
	MisResultAction(ClearMission,1131)
	MisResultAction(SetRecord, 1131)

	-----------------------------------------�����

	DefineMission( 5628, "\207\238\241\238\235 3", 1132 )
	MisBeginTalk( "<t>����� ������! �� ��� �� ��������� �������������." )
				
	MisBeginCondition(NoMission, 1132)
	MisBeginCondition(NoRecord,1132)
	MisBeginCondition(HasRecord, 1131)
	MisBeginAction(AddMission,1132)
	MisCancelAction(ClearMission, 1132)

	MisNeed(MIS_NEED_DESP, " ������������� � ������ � �� � ����� (2128,540)." )
	
	MisHelpTalk( "<t>�� ������� ����� �� ������ ��������� " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5629, "\207\238\241\238\235 3", 1132, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>� �� ���� ������ ��� ��� ���� ��� ������ �������, ��� � ����� �� ����� �� ����� ����������." )
	MisResultCondition(NoRecord, 1132)
	MisResultCondition(HasMission,1132)
	MisResultAction(ClearMission,1132)
	MisResultAction(SetRecord, 1132)



	-----------------------------------------�����

	DefineMission( 5630, "\207\238\241\238\235 4", 1133 )
	MisBeginTalk( "<t>���� �� � ������. �� � �� �� ����� ������ ��� �� ������ ����������, ���� ���� ��� ����� ������ ������." )
				
	MisBeginCondition(NoMission, 1133)
	MisBeginCondition(NoRecord,1133)
	MisBeginCondition(HasRecord, 1132)
	MisBeginAction(AddMission,1133)
	MisCancelAction(ClearMission, 1133)

	MisNeed(MIS_NEED_DESP, " ������������� � ������(2277,2769)." )
	
	MisHelpTalk( "<t>�� ������� ����� �� ������ ��������� " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission( 5631, "\207\238\241\238\235 4", 1133, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>���? ��� � ������? ������... �� �� ����� �� ���������� ������ ����������... ��� ��� ��� �����?..." )
	MisResultCondition(NoRecord, 1133)
	MisResultCondition(HasMission,1133)
	MisResultAction(ClearMission,1133)
	MisResultAction(SetRecord, 1133)


	-----------------------------------------�����

	DefineMission( 5632, "\207\238\241\238\235 5", 1134 )
	MisBeginTalk( "<t>�� ���... � �� ��������, �� � ���� ���������� �����..." )
				
	MisBeginCondition(NoMission, 1134)
	MisBeginCondition(NoRecord,1134)
	MisBeginCondition(HasRecord, 1133)
	MisBeginAction(AddMission,1134)
	MisCancelAction(ClearMission, 1134)

	MisNeed(MIS_NEED_DESP, "�������� � �����(2519,2397) ��� ��������." )
	
	MisHelpTalk( "<t>�� ������� ����� �� ������ ���������." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5633, "\207\238\241\238\235 5", 1134, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�Ⱦ����ֺ��������´����,�ҿ������̻�������,����.�ܻ�����Щ�������̵ĵ��ⳤ�������.")
	MisResultCondition(NoRecord, 1134)
	MisResultCondition(HasMission,1134)
	MisResultAction(ClearMission,1134)
	MisResultAction(SetRecord, 1134)


	-----------------------------------------�����

	DefineMission( 5634, "�罻��ʹ6", 1135 )
	MisBeginTalk("<t>����æ�����һ�������ȥ�ư�,Ҫ���ҵľ��Ѻ���ָ�ӡ��µ�Ҳ��ȥ�ͺ���.")
				
	MisBeginCondition(NoMission, 1135)
	MisBeginCondition(NoRecord,1135)
	MisBeginCondition(HasRecord, 1134)
	MisBeginAction(AddMission,1135)
	MisCancelAction(ClearMission, 1135)

	MisNeed(MIS_NEED_DESP, "�ҿ���������վ�ĺ���ָ�ӡ��µ�(738,3803)����")
	
	MisHelpTalk("<t>��֪���Ű����ǲ��Ǹ�Ư����.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5635, "�罻��ʹ6", 1135, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����һ��������˵�оƺȾ���ζ���й����Լ��..")
	MisResultCondition(NoRecord, 1135)
	MisResultCondition(HasMission,1135)
	MisResultAction(ClearMission,1135)
	MisResultAction(SetRecord, 1135)



	-----------------------------------------�����

	DefineMission( 5636, "�罻��ʹ7", 1136 )
	MisBeginTalk("<t>Цʲô?��ͷ�Ͳ���������?��!����֪ͨ�������ˡ���ķ����ȡ��Ҫ�ı���,�ҵȲ���Ҫȥ�ư���")
				
	MisBeginCondition(NoMission, 1136)
	MisBeginCondition(NoRecord,1136)
	MisBeginCondition(HasRecord, 1135)
	MisBeginAction(AddMission,1136)
	MisCancelAction(ClearMission, 1136)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵı������ˡ���ķ(2061,2543)����")
	
	MisHelpTalk("<t>�Ҿ���������Щ�ɰ�������,Ҫ����ô��Ǯ�ݾư���?")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5637, "�罻��ʹ7", 1136, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�µ�һֱ����ûǮ���Ͼƹ�,�ҽ�˲ſ�������������.")
	MisResultCondition(NoRecord, 1136)
	MisResultCondition(HasMission,1136)
	MisResultAction(ClearMission,1136)
	MisResultAction(SetRecord, 1136)


-----------------------------------------�����

	DefineMission( 5638, "�罻��ʹ8", 1137 )
	MisBeginTalk("<t>Ϊʲô����������?�������˶����⸱������,�ܲ��ܳ��ɽܿ��������ﲻһ��")
				
	MisBeginCondition(NoMission, 1137)
	MisBeginCondition(NoRecord,1137)
	MisBeginCondition(HasRecord, 1136)
	MisBeginAction(AddMission,1137)
	MisCancelAction(ClearMission, 1137)

	MisNeed(MIS_NEED_DESP, "����ɳ���Ľܿ˴���(1672,3777)����")
	
	MisHelpTalk("<t>��˵��û������,���ﲻ̫ƽҪС��!")
	MisResultCondition(AlwaysFailure)

-----------------------------------------�����

	DefineMission(5639, "�罻��ʹ8", 1137, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���Ѿ�ϰ���˱�Ů�˰�Ľ,�����˼���")
	MisResultCondition(NoRecord, 1137)
	MisResultCondition(HasMission,1137)
	MisResultAction(ClearMission,1137)
	MisResultAction(SetRecord, 1137)


-----------------------------------------�����

	DefineMission( 5640, "�罻��ʹ9", 1138 )
	MisBeginTalk("<t>�̺������˵Ļ���,�ƾ��Ǻ����Ļ��,�о����ǲ�������.��֪���ҵ�������˶���������������ɽ�᲻��μ�,��Ȼ��������������������.")
				
	MisBeginCondition(NoMission, 1138)
	MisBeginCondition(NoRecord,1138)
	MisBeginCondition(HasRecord, 1137)
	MisBeginAction(AddMission,1138)
	MisCancelAction(ClearMission, 1138)

	MisNeed(MIS_NEED_DESP, "����֮���Ķ���������������ɽ(2221,3285)����")
	
	MisHelpTalk("<t>����������������ɽһֱ������������ͬ���д辭����.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5641, "�罻��ʹ9", 1138, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����һ��Զ���ĺ���,�ո�ѧ�����������.##@@#$,�Һ�ϲ����Ƭ���˵ĺ���.&*&%,��˵�����ĺ��к��,���Ƿ·��ʺϺ�����.�Ҹ�������Ƭ��½ʱ����ܿ˴��������˺�������.")
	MisResultCondition(NoRecord, 1138)
	MisResultCondition(HasMission,1138)
	MisResultAction(ClearMission,1138)
	MisResultAction(SetRecord, 1138)

-----------------------------------------�����

	DefineMission( 5642, "�罻��ʹ10", 1139 )
	MisBeginTalk("<t>�ܿ�ҲҪȥ?!���һ��ǿ���һ�°�.�����һ��Ǻ����ѽ���Ա����ɪ�����ȥ��.")
				
	MisBeginCondition(NoMission, 1139)
	MisBeginCondition(NoRecord,1139)
	MisBeginCondition(HasRecord, 1138)
	MisBeginAction(AddMission,1139)
	MisCancelAction(ClearMission, 1139)

	MisNeed(MIS_NEED_DESP, "��������Ľ���Ա����ɪ��(2279,1112)����")
	
	MisHelpTalk("<t>�һ��ǵ���ɪ���Լ���")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5643, "�罻��ʹ10", 1139, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�Һ�ϲ������������������ɽ,���������ֽ����������Ը�����ķ��")
	MisResultCondition(NoRecord, 1139)
	MisResultCondition(HasMission,1139)
	MisResultAction(ClearMission,1139)
	MisResultAction(SetRecord, 1139)

-----------------------------------------�����

	DefineMission( 5644, "�罻��ʹ11", 1140 )
	MisBeginTalk("<t>����ܿ�ȥ�ư�,�Ҿ��붫��������������ɽȥ����,���˻����ټ���Ϊ��.��,�����Ǹ�ϲ�������ֵ�С�к���ķһ������Ȥȥ�ư�")
				
	MisBeginCondition(NoMission, 1140)
	MisBeginCondition(NoRecord,1140)
	MisBeginCondition(HasRecord, 1139)
	MisBeginAction(AddMission,1140)
	MisCancelAction(ClearMission, 1140)

	MisNeed(MIS_NEED_DESP, "��ɳ᰾ɳǵĺ�ķ(826,3347)����")
	
	MisHelpTalk("<t>��Ը��Ҫ�̻�С����,��Ҫ�������������ǵ�����...")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5645, "�罻��ʹ11", 1140, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>С�����ǲ�Ӧ��ȥ�ưɵ�,����...�����ٷ��˧�к�����!�ҿ϶���ȥ��,лл��ĺ���Ϣ.")
	MisResultCondition(NoRecord, 1140)
	MisResultCondition(HasMission,1140)
	MisResultAction(ClearMission,1140)
	MisResultAction(SetRecord, 1140)

-----------------------------------------�����

	DefineMission( 5646, "�罻��ʹ12", 1141 )
	MisBeginTalk("<t>��ʿ��ȵ����˲����������,�����ҵ�ԭ��.����Ҫ�����ҵ��������.")
				
	MisBeginCondition(NoMission, 1141)
	MisBeginCondition(NoRecord,1141)
	MisBeginCondition(HasRecord, 1140)
	MisBeginAction(AddMission,1141)
	MisCancelAction(ClearMission, 1141)

	MisNeed(MIS_NEED_DESP, "�Ұ�����˹����վ�����(1037,671)����")
	
	MisHelpTalk("<t>�һ�û��ȥ���ư�,Ҫ�����֤��?���������������ǻؼ���?")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5647, "�罻��ʹ12", 1141, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>˵ʵ��ÿһ�κ�ķ�����鶼�ܴ̼�,����ÿ����˱��������Ҳ������Ҷ�����.")
	MisResultCondition(NoRecord, 1141)
	MisResultCondition(HasMission,1141)
	MisResultAction(ClearMission,1141)
	MisResultAction(SetRecord, 1141)


-----------------------------------------�����

	DefineMission( 5648, "�罻��ʹ13", 1142 )
	MisBeginTalk("<t>��Ȼ�ҷ�����,��Ҳ���������Ľ���,����ȥ�ư������������ı�־,����...�ٺ�,�����·������ɭ�ֲ���վ���æ������Ʒ���ˡ���������Ƿ���Ư�������,��������һ��ȥ�ư�,���ܴ���̫����.")
				
	MisBeginCondition(NoMission, 1142)
	MisBeginCondition(NoRecord,1142)
	MisBeginCondition(HasRecord, 1141)
	MisBeginAction(AddMission,1142)
	MisCancelAction(ClearMission, 1142)

	MisNeed(MIS_NEED_DESP, "������ɭ�ֲ���վ����Ʒ���ˡ����(996,2969)����")
	
	MisHelpTalk("<t>��Ʒ���ˡ�����Ǻ����۹���鱦�м�,Сʱ�����������Ǵ���ȥ���ﹺ���鱦,��ÿ�ζ���佱����Ư��,�����ҺóԵ��ǹ�.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5649, "�罻��ʹ13", 1142, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����ȥ�ư�?��ȳ�����,�����������ò�ƺ�һ��Ҳû�ܵ�Ӱ��,��һֱ��������������Ŀͻ�.")
	MisResultCondition(NoRecord, 1142)
	MisResultCondition(HasMission,1142)
	MisResultAction(ClearMission,1142)
	MisResultAction(SetRecord, 1142)

-----------------------------------------�����

	DefineMission( 5650, "�罻��ʹ14", 1143 )
	MisBeginTalk("<t>����������ʱ��һ��ȥ�ưɾͽ�ʶ�˺���������,���ǵ���������,�ҵ��鱦��������һֱ��˳���������չ��Ƿֲ�����.����㷽��ȥ��ѩ��,�����ʺ���.")
				
	MisBeginCondition(NoMission, 1143)
	MisBeginCondition(NoRecord,1143)
	MisBeginCondition(HasRecord, 1142)
	MisBeginAction(AddMission,1143)
	MisCancelAction(ClearMission, 1143)

	MisNeed(MIS_NEED_DESP, "�ұ�ѩ���ĺ���������(2362,657)����")
	
	MisHelpTalk("<t>��ѩ����ħŮ֮��Ŷ.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����
       
	DefineMission(5651, "�罻��ʹ14", 1143, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����,��Ҳ���ҵ�һ��ȥ�ư�,��ʱ���һ��Ǹ�С�������,Ϊ�˵�һ�γ���׳����ȥ�ȾƵ�.��֪��Ϊʲô�������ʮ��ͶԵ,���������,���������ʱ������һ��Ů��,�����ҾͲ���һֱ�Ǹ������ˣ�")
	MisResultCondition(NoRecord, 1143)
	MisResultCondition(HasMission,1143)
	MisResultAction(ClearMission,1143)
	MisResultAction(SetRecord, 1143)

-----------------------------------------�����

	DefineMission( 5652, "�罻��ʹ15", 1144 )
	MisBeginTalk("<t>��������������Ҫ���뺣���ŵ���˹��С��,��ϧ������̫С��,��Ҫ�������Ⱦ�׳���ǲ��е�.")
				
	MisBeginCondition(NoMission, 1144)
	MisBeginCondition(NoRecord,1144)
	MisBeginCondition(HasRecord, 1143)
	MisBeginAction(AddMission,1144)
	MisCancelAction(ClearMission, 1144)

	MisNeed(MIS_NEED_DESP, "�ұ��Ǳ�����˹��С��(1379,612)����")
	
	MisHelpTalk("<t>��������,����ĺܰ���")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5653, "�罻��ʹ15", 1144, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ������ǳ�Ϊ����˹һ���Ľ��ƺ���.")
	MisResultCondition(NoRecord, 1144)
	MisResultCondition(HasMission,1144)
	MisResultAction(ClearMission,1144)
	MisResultAction(SetRecord, 1144)


-----------------------------------------�����

	DefineMission( 5654, "�罻��ʹ16", 1145 )
	MisBeginTalk("<t>Ϊ���ҵ�����,�Ҳ��Ҹÿ�ʼѧϰ��Ӿ�������Ϳ�����.���ڿ������뺣��ָ�ӡ�������Ӧ���ܰ����ҵ�æ")
				
	MisBeginCondition(NoMission, 1145)
	MisBeginCondition(NoRecord,1145)
	MisBeginCondition(HasRecord, 1144)
	MisBeginAction(AddMission,1145)
	MisCancelAction(ClearMission, 1145)

	MisNeed(MIS_NEED_DESP, "�ҹ�������վ�ĺ���ָ�ӡ�������(2041,1355)����")
	
	MisHelpTalk("<t>����һ����ִ�ŵ���,Ϊ�˿︴����ó�׵Ĺ�ƽ��Ը����һ������ĺ���.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5655, "�罻��ʹ16", 1145, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ҫ����ѧ����,����,�ҵĿ�����������Զ��������.")
	MisResultCondition(NoRecord, 1145)
	MisResultCondition(HasMission,1145)
	MisResultAction(ClearMission,1145)
	MisResultAction(SetRecord, 1145)


-----------------------------------------�����

	DefineMission( 5656, "�罻��ʹ17", 1146 )
	MisBeginTalk("<t>�ư��ҾͲ�ȥ��,���ﰵ���ܶ�,����Ҳ�վ���������Զ���Ĵ�ֻ,��֪�����ж����˻��Ϊ����������.�����������һ������ķ������,�ǵ���˵��Ҫ��ȥ����һ��,���ҽ��ܺ�ȥ����.")
				
	MisBeginCondition(NoMission, 1146)
	MisBeginCondition(NoRecord,1146)
	MisBeginCondition(HasRecord, 1145)
	MisBeginAction(AddMission,1146)
	MisCancelAction(ClearMission, 1146)

	MisNeed(MIS_NEED_DESP, "�ҰͲ�����վ������ķ������(1202,3179)����")
	
	MisHelpTalk("<t>����ķ�������Ǹ������־����������,�������İ�.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5657, "�罻��ʹ17", 1146, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����һ��Ϊ��������������Է�����������.����Ů����Ҳ��ô��Ϊ.")
	MisResultCondition(NoRecord, 1146)
	MisResultCondition(HasMission,1146)
	MisResultAction(ClearMission,1146)
	MisResultAction(SetRecord, 1146)

-----------------------------------------�����

	DefineMission( 5658, "�罻��ʹ18", 1147 )
	MisBeginTalk("<t>����Ҫ����,����ʲô�¾Ϳ��˵.�ư�?����һ���ύ���ѵĺõط�,������Ҫ�ı��г̼ƻ���.������ܰ��Ҹ��������޹����������վ����������̺ܶ�,��Ҫ��ע��ۿڽӴ�ָ�ӵĻ��һ�ʮ�ָ�л��.")
				
	MisBeginCondition(NoMission, 1147)
	MisBeginCondition(NoRecord,1147)
	MisBeginCondition(HasRecord, 1146)
	MisBeginAction(AddMission,1147)
	MisCancelAction(ClearMission, 1147)

	MisNeed(MIS_NEED_DESP, "��˼˼������վ�ĺ���ָ�ӡ�������(2297,3723)����")
	
	MisHelpTalk("<t>����˯��,������Ӧ�ø�ע�سɳ�.��������������?��һֱ���������е���־����.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5659, "�罻��ʹ18", 1147, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��ӭ��ĵ���,��л���������Ϣ.��������ȱ������,Ҫ��Ҫ���������ҵ�����?")
	MisResultCondition(NoRecord, 1147)
	MisResultCondition(HasMission,1147)
	MisResultAction(ClearMission,1147)
	MisResultAction(SetRecord, 1147)

-----------------------------------------�����

	DefineMission( 5660, "�罻��ʹ19", 1148 )
	MisBeginTalk("<t>����ָ���Ǹ��в��ҷ�æ��ְҵ.˵��æ�Һ����Ѿ��ܾ�ûȥ�������ɰ�������ɯ����,��֪�����Ƿ�������.")
				
	MisBeginCondition(NoMission, 1148)
	MisBeginCondition(NoRecord,1148)
	MisBeginCondition(HasRecord, 1147)
	MisBeginAction(AddMission,1148)
	MisCancelAction(ClearMission, 1148)

	MisNeed(MIS_NEED_DESP, "�Ҳر����������ɯ��(616,965)����")
	
	MisHelpTalk("<t>����ɯ��Сʱ���Ư����һ����Ϳ.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5661, "�罻��ʹ19", 1148, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ȴ�һ������ʹ��¶���,����������ݼ���.")
	MisResultCondition(NoRecord, 1148)
	MisResultCondition(HasMission,1148)
	MisResultAction(ClearMission,1148)
	MisResultAction(SetRecord, 1148)


-----------------------------------------�����

	DefineMission( 5662, "�罻��ʹ20", 1149 )
	MisBeginTalk("<t>�Ҿ����῿һЩ������鱦����ĥ�Ⱥ��ʱ��,�󹤴�������Ÿ���˵�ڿ�ʱ�ҵ�һ��ǧ����ĸ��,�����ڳ�Ǯ,����һ��������������.���,�ڿ���ô���ڵ���ĸ��?")
				
	MisBeginCondition(NoMission, 1149)
	MisBeginCondition(NoRecord,1149)
	MisBeginCondition(HasRecord, 1148)
	MisBeginAction(AddMission,1149)
	MisCancelAction(ClearMission, 1149)

	MisNeed(MIS_NEED_DESP, "������2��Ŀ󹤴����(296,57)����")
	
	MisHelpTalk("<t>лл�������ˣ�ȥ��")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5663, "�罻��ʹ20", 1149, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��������˺������鱦��Ư��Ů�˵��,����ǧ����ĸ�̺���.")
	MisResultCondition(NoRecord, 1149)
	MisResultCondition(HasMission,1149)
	MisResultAction(ClearMission,1149)
	MisResultAction(SetRecord, 1149)

-----------------------------------------�����

	DefineMission( 5664, "�罻��ʹ21", 1150 )
	MisBeginTalk("<t>��ϲ��������������罻���������������������������˸�����˽�,������̽�պ��а���.����˵�����ľưɷ���Ա<b�Ű���>������.")
				
	MisBeginCondition(NoMission, 1150)
	MisBeginCondition(NoRecord,1150)
	MisBeginCondition(HasRecord, 1149)
	MisBeginAction(AddMission,1150)
	MisCancelAction(ClearMission, 1150)

	MisNeed(MIS_NEED_DESP, "�ҰŰ���(1310,530)����")
	
	MisHelpTalk("<t>�Ű������������.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------�����

	DefineMission(5667, "�罻Ӣ��21", 1150, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���Ѿ�ͨ�����罻����,�͸���һöѫ��")
	MisResultCondition(NoRecord, 1150)
	MisResultCondition(HasMission,1150)
	MisResultAction(ClearMission,1150)
	MisResultAction(SetRecord, 1150)
	MisResultAction(GiveItem, 3033, 1, 4)
	MisResultBagNeed(1)

--	-------------------------------------------------�ر�����	--------�Ű���
--	DefineMission (5668, "Ѫ����ţ֮�ر��ж�", 1153)
--	
--	MisBeginTalk("<t>��������ǽ�ţ���ر��ж�,����Բ��μ�,��Ȼ���μӵ�û��������.<b10�����ں��е����ﲹ��վ�Һ���ָ�ӡ���Ŧ(2042,6351)>")
--
--	MisBeginCondition(NoMission,1153)
--	MisBeginCondition(NoRecord,1153)
--	MisBeginCondition(HasRecord,1113)
--	MisBeginCondition(HasRecord,1114)
--	MisBeginCondition(HasRecord,1115)
--	MisBeginCondition(HasRecord,1116)
--	MisBeginCondition(HasRecord,1117)
--	MisBeginCondition(HasRecord,1118)
--	MisBeginCondition(HasRecord,1150)
--	MisBeginCondition(HasRecord,1119)
--	MisBeginAction(AddMission,1153)
--	MisBeginAction(AddChaItem3, 2952)---------��ţ�ر��ж���
--	MisCancelAction(ClearMission, 1153)
--	MisBeginBagNeed(1)
--	
--	MisNeed(MIS_NEED_DESP, "���е������ﲹ��վ�Һ���ָ�ӡ���Ŧ(2042,635)����")
--	MisHelpTalk("<t>��ȥ��,��ֻ��15����Ŷ")
--
--	MisResultCondition(AlwaysFailure)	
--
--	--------------------------------------�ر�����----����ָ�ӡ���Ŧ
--
--	DefineMission(5669, "Ѫ����ţ֮�ر��ж�", 1153, COMPLETE_SHOW )
--	
--	MisBeginCondition(AlwaysFailure )
--
--	MisResultTalk("<t>��������.���������ڵ�.")
--	MisResultCondition(HasMission, 1153)
--	MisResultCondition(NoRecord,1153)
--	MisResultAction(AddChaItem5, 2952)----�ر��ж���
--	MisResultAction(ClearMission, 1153)
--	MisResultAction(SetRecord,  1153 )
--	MisResultAction(GiveItem, 3035, 1, 4)-----
--	MisResultBagNeed(1)
	
---------------------------------------------------�ر�����	--------�Ű���
--	DefineMission (5673, "Ѫ����ţ֮�ر��ж�", 1159)
--	
--	MisBeginTalk("<t>��������ǽ�ţ���ر��ж�,����Բ��μ�,��Ȼ���μӵ�û��������.<b10�����ں��е����ﲹ��վ�Һ���ָ�ӡ���Ŧ(2042,6351)>")
--
--	MisBeginCondition(NoMission,1159)
--	MisBeginCondition(NoRecord,1159)
--	MisBeginCondition(HasRecord,1112)
--	MisBeginCondition(HasRecord,1120)
--	MisBeginCondition(HasRecord,1121)
--	MisBeginCondition(HasRecord,1122)
--	MisBeginCondition(HasRecord,1123)
--	MisBeginCondition(HasRecord,1124)
--	MisBeginCondition(HasRecord,1150)
--	MisBeginCondition(HasRecord,1119)
--	MisBeginAction(AddMission,1159)
--	MisBeginAction(AddChaItem3, 2952)---------��ţ�ر��ж���
--	MisCancelAction(ClearMission, 1159)
--	MisBeginBagNeed(1)
--	
--	MisNeed(MIS_NEED_DESP, "���е������ﲹ��վ�Һ���ָ�ӡ���Ŧ(2042,635)����")
--	MisHelpTalk("<t>��ȥ��,��ֻ��15����Ŷ")
--
--	MisResultCondition(AlwaysFailure)	
--
--	--------------------------------------�ر�����----����ָ�ӡ���Ŧ
--
--	DefineMission(5674, "Ѫ����ţ֮�ر��ж�", 1159, COMPLETE_SHOW )
--	
--	MisBeginCondition(AlwaysFailure )
--
--	MisResultTalk("<t>��������.���������ڵ�.")
--	MisResultCondition(HasMission, 1159)
--	MisResultCondition(NoRecord,1159)
--	MisResultAction(AddChaItem5, 2952)----�ر��ж���
--	MisResultAction(ClearMission, 1159)
--	MisResultAction(SetRecord,  1159 )
--	MisResultAction(GiveItem, 3035, 1, 4)------------��ţ������װ����
--	MisResultBagNeed(1)
--	
-------------------------------------------------�ر�����	--------�Ű���
	



	DefineMission (5675, "Ѫ����ţ֮�ر��ж�", 1160)
	
	MisBeginTalk("<t>��������ǽ�ţ���ر��ж�,����Բ��μ�,��Ȼ���μӵ�û��������.�����㵨����ʱ����.<b7�����ڸϵ����õ��ҽܿ�ʷ����(230,579)>����.")

	MisBeginCondition(NoMission,1160)
	MisBeginCondition(NoRecord,1160)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(HasRecord,1125)
	MisBeginCondition(HasRecord,1126)
	MisBeginCondition(HasRecord,1127)
	MisBeginCondition(HasRecord,1128)
	MisBeginCondition(HasRecord,1129)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginAction(AddMission,1160)
	MisBeginAction(AddChaItem3, 2952)---------��ţ�ر��ж���
	MisCancelAction(ClearMission, 1160)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "�ҽܿ�ʷ����(230,579)����")
	MisHelpTalk("<t>��ȥ��,��ֻ��7����Ŷ")

	MisResultCondition(AlwaysFailure)	

	--------------------------------------�ر�����----�ܿ�ʷ����

	DefineMission(5676, "Ѫ����ţ֮�ر��ж�", 1160, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�Ҵ����õ�?�е���!����������������Ⱥ�¸ҵļһ�,���������æ��һ����Ϳ.")
	MisResultCondition(HasMission, 1160)
	MisResultCondition(NoRecord,1160)
	MisResultAction(AddChaItem5, 2952)----�ر��ж���
	MisResultAction(ClearMission, 1160)
	MisResultAction(SetRecord,  1160 )
	MisResultAction(GiveItem, 3035, 1, 4)------------��ţ������װ����
	MisResultBagNeed(1)
	


-------------------------------------------------����������!�	



	DefineMission( 5670, "��ţ֮ˮ�ֹ��ؽ���", 1156 )--���������� ������
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����ţ����ӡ��˫�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1156)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(HasRecord,1114)
	MisBeginCondition(HasRecord,1115)
	MisBeginCondition(HasRecord,1116)
	MisBeginCondition(HasRecord,1117)
	MisBeginCondition(HasRecord,1118)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1156)
	MisBeginAction(AddMission,1156)  
	MisBeginAction(AddTrigger, 11561, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11562, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11563, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11564, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11565, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11566, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11567, TE_GETITEM, 3034, 1 )	
	MisCancelAction(ClearMission, 1156)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����˫�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1156)
	MisResultCondition(NoRecord,1156)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1156)
	MisResultAction(SetRecord,  1156 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 10, 4)
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(JINNiuSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1156, 10, 1 )
	RegCurTrigger( 11561 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1156, 20, 1 )
	RegCurTrigger( 11562 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1156, 30, 1 )
	RegCurTrigger( 11563 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1156, 40, 1 )
	RegCurTrigger( 11564 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1156, 50, 1 )
	RegCurTrigger( 11565 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1156, 60, 1 )
	RegCurTrigger( 11566 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1156, 70, 1 )
	RegCurTrigger( 11567 )
----------------------------------------------����������	




	DefineMission (5671, "��ţ֮�������ؽ���", 1157)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����ţ����ӡ��˫�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1157)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(HasRecord,1120)
	MisBeginCondition(HasRecord,1121)
	MisBeginCondition(HasRecord,1122)
	MisBeginCondition(HasRecord,1123)
	MisBeginCondition(HasRecord,1124)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1157)
	MisBeginAction(AddMission,1157)
	MisBeginAction(AddTrigger, 11571, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11572, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11573, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11574, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11575, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11576, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11577, TE_GETITEM, 3034, 1 )		
	MisCancelAction(ClearMission, 1157)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����˫�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1157)
	MisResultCondition(NoRecord,1157)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1157)
	MisResultAction(SetRecord,  1157 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 20, 4)
	MisResultAction(AddMoney,200000,200000)
	MisResultAction(JINNiuHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1157, 10, 1 )
	RegCurTrigger( 11571 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1157, 20, 1 )
	RegCurTrigger( 11572 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1157, 30, 1 )
	RegCurTrigger( 11573 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1157, 40, 1 )
	RegCurTrigger( 11574 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1157, 50, 1 )
	RegCurTrigger( 11575 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1157, 60, 1 )
	RegCurTrigger( 11576 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1157, 70, 1 )
	RegCurTrigger( 11577 )

	---------------------------------------------�����	
	DefineMission (5672, "��ţ֮�������ؽ���", 1158)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����ţ����ӡ��˫�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1158)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(HasRecord,1125)
	MisBeginCondition(HasRecord,1126)
	MisBeginCondition(HasRecord,1127)
	MisBeginCondition(HasRecord,1128)
	MisBeginCondition(HasRecord,1129)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1158)
	MisBeginAction(AddMission,1158)   
	MisBeginAction(AddTrigger, 11581, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11582, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11583, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11584, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11585, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11586, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11587, TE_GETITEM, 3034, 1 )	
	MisCancelAction(ClearMission, 1158)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����˫�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1158)
	MisResultCondition(NoRecord,1158)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1158)
	MisResultAction(SetRecord,  1158 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 30, 4)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(JINNiuCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1158, 10, 1 )
	RegCurTrigger( 11581 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1158, 20, 1 )
	RegCurTrigger( 11582 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1158, 30, 1 )
	RegCurTrigger( 11583 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1158, 40, 1 )
	RegCurTrigger( 11584 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1158, 50, 1 )
	RegCurTrigger( 11585 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1158, 60, 1 )
	RegCurTrigger( 11586 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1158, 70, 1 )
	RegCurTrigger( 11587 )

	-----------------------------------------------------����

       DefineMission( 6126, "\209\226\232\237", 1452 )

	MisBeginTalk( "<t>� ���� ����������� ������������� �������, �� � ���� ��� ������������... ������ ��� � � ���� �����������." )
	MisBeginCondition(NoMission, 1452)
	MisBeginCondition(NoRecord,1452)
	MisBeginAction(AddMission,1452)
	MisBeginAction(AddTrigger, 14521, TE_GETITEM, 4325, 5)--����� ������� ������
	MisBeginAction(AddTrigger, 14522, TE_GETITEM, 1680, 5)--������ �������
	MisBeginAction(AddTrigger, 14523, TE_GETITEM, 4433, 5)--�������� ������� �����
	MisBeginAction(AddTrigger, 14524, TE_GETITEM, 4357, 5)--������� ������ �������
	MisBeginAction(AddTrigger, 14525, TE_GETITEM, 4461, 40)--������������ ������ �����
	MisBeginAction(AddTrigger, 14526, TE_GETITEM, 4462, 40)--������� ������� �����


	MisCancelAction(ClearMission, 1452)

	MisNeed(MIS_NEED_DESP, "��������� ����������� ����������� �������: <b5 ������� ������� ������>, <b5 ������ ���������>, <b5 �������� �������� �������>, <b40 ������������ ������ �����> � <b40 ������� �������� �����>." )
	MisNeed(MIS_NEED_ITEM, 4325, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1680, 5, 15, 5)
	MisNeed(MIS_NEED_ITEM, 4433, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4357, 5, 25, 5)
	MisNeed(MIS_NEED_ITEM, 4461, 40, 30, 40)
	MisNeed(MIS_NEED_ITEM, 4462, 40, 70, 40)

	
	
	MisHelpTalk( "<t>��������� ��� �����������. ��� ����� ����� �������." )
	MisResultTalk( "<t>������ ��� ����� ����� ����, ������� ���. ��� ���� �������." )

	MisResultCondition(HasMission, 1452)
	MisResultCondition(NoRecord,1452)
	MisResultCondition(HasItem, 4325, 5)
	MisResultCondition(HasItem, 1680, 5)
	MisResultCondition(HasItem, 4433, 5)
	MisResultCondition(HasItem, 4357, 5)
	MisResultCondition(HasItem, 4461, 40)
	MisResultCondition(HasItem, 4462, 40)

	
	
	MisResultAction(TakeItem, 4325, 5 )
	MisResultAction(TakeItem, 1680, 5 )
	MisResultAction(TakeItem, 4433, 5 )
	MisResultAction(TakeItem, 4357, 5 )
	MisResultAction(TakeItem, 4461, 40 )
	MisResultAction(TakeItem, 4462, 40 )

	
	
	MisResultAction(GiveItem, 2909,1,4)--������ ���������� ������
	MisResultAction(ClearMission, 1452)
	MisResultAction(SetRecord, 1452)
	MisResultAction(ClearRecord, 1452)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 4325)	
	TriggerAction( 1, AddNextFlag, 1452, 10, 5 )
	RegCurTrigger( 14521 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1680)	
	TriggerAction( 1, AddNextFlag, 1452, 15, 5 )
	RegCurTrigger( 14522 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4433)	
	TriggerAction( 1, AddNextFlag, 1452, 20, 5 )
	RegCurTrigger( 14523 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4357)	
	TriggerAction( 1, AddNextFlag, 1452, 25, 5 )
	RegCurTrigger( 14524 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4461)	
	TriggerAction( 1, AddNextFlag, 1452, 30, 40 )
	RegCurTrigger( 14525 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4462)	
	TriggerAction( 1, AddNextFlag, 1452, 70, 40 )
	RegCurTrigger( 14526 )

-------------------------------------------------�������
----------------------------------------------------------
--------------------------��������------------------------
----------------------------------------------------------
----------------------------------------------------------

	DefineMission( 5673, "\193\235\232\231\237\229\246\251 \204\229\247\242\251", 1163 )--�������� ����� 
	
	MisBeginTalk("<t>˫��������,����ʮ������,�ڸ�����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������?")

	MisBeginCondition(NoMission,1163)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1163)
	MisBeginAction(AddMission,1163)
	MisCancelAction(ClearMission, 1163)
	
	MisNeed(MIS_NEED_DESP, "���5���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>���ó���ע����һ��Ϊս����������.")

	MisResultCondition(HasMission, 1163)
	MisResultCondition(NoRecord,1163)
	MisResultCondition(HasFightingPoint,5 )
	MisResultAction(TakeFightingPoint, 5 )
	MisResultAction(ClearMission, 1163)
	MisResultAction(SetRecord,  1163 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------�������¿�	--------ˮ��
	DefineMission (5674, "�λ�˫��֮����Ӣ��", 1164)
	
	MisBeginTalk("<t>�������,��������֪������һ�����Լ���Ҫ����ˣ������λ�˫�ӹ������Ҫ��Ҳ����һЩ. ")

	MisBeginCondition(NoMission,1164)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1164)
	MisBeginAction(AddMission,1164)
	MisCancelAction(ClearMission, 1164)
	
	MisNeed(MIS_NEED_DESP, "���2000����������")
	MisHelpTalk("<t>��ʲô��,������?����Ϊ2000�������ܺû���?")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1164)
	MisResultCondition(NoRecord,1164)
	MisResultCondition(HasCredit,2000 )
	MisResultAction(TakeCredit, 2000 )
	MisResultAction(ClearMission, 1164)
	MisResultAction(SetRecord,  1164 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------�������¿�	---------ˮ��
	DefineMission (5741, "�λ�˫��֮�ȼ�Ӣ��", 1165)
	
	MisBeginTalk("<t>�¸ҵ�����,���ҿ�����Ƿ���������,����֤����ֻ���Ҳ�һ��,����... ")

	MisBeginCondition(NoMission,1165)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1165)
	MisBeginAction(AddMission,1165)
	MisCancelAction(ClearMission, 1165)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ60��")
	MisHelpTalk("<t>��Ȼ,60��������˵��������.")
	MisResultTalk("<t>���ò�����,���ȷֻ�����Բ�һ�����,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1165)
	MisResultCondition(NoRecord,1165)
	MisResultCondition(LvCheck, ">", 59 )
	MisResultAction(ClearMission, 1165)
	MisResultAction(SetRecord,  1165 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------�������¿�	----------ˮ��
	DefineMission (5742, "�λ�˫��֮����Ӣ��", 1166)
	
	MisBeginTalk("<t>��˵�к���������ΰ�������֮�Ӿ�����..�ҵ�����,������ܵ���󺣵�ͬ�е���,��Ҫ����Ϊ������. ")

	MisBeginCondition(NoMission,1166)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1166)
	MisBeginAction(AddMission,1166)
	MisCancelAction(ClearMission, 1166)
	
	MisNeed(MIS_NEED_DESP, "���500����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ��������֮��.")

	MisResultCondition(HasMission, 1166)
	MisResultCondition(NoRecord,1166)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1166)
	MisResultAction(SetRecord,  1166 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------�������¿�	------------ˮ��
	DefineMission (5677, "�λ�˫��֮�ɼ���ʹ", 1167)
	
	MisBeginTalk("<t>�ɼ�ѫ����������Щ��������ǿ���˵�����,�����ĵĻ���ȥ���԰�. ")

	MisBeginCondition(NoMission,1167)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1167)
	MisBeginAction(AddMission,1167)
	MisBeginAction(AddTrigger, 11671, TE_GETITEM, 1346, 10 )---------------Ѫ�ȵ����Ѫ10
	MisBeginAction(AddTrigger, 11672, TE_GETITEM, 4526, 10 )--------------- ����ĳ�ì10
	MisBeginAction(AddTrigger, 11673, TE_GETITEM, 1608, 10 )-------------����Ƥë10--------
	MisBeginAction(AddTrigger, 11674, TE_GETITEM, 4495, 1 )--------------ɽ������1��
	MisBeginAction(AddTrigger, 11675, TE_GETITEM, 1612, 20 )--------------�����Ľ�20��
	MisBeginAction(AddTrigger, 11676, TE_GETITEM, 1140, 20 )-------------��ֻ������LV1 20��
	MisBeginAction(AddTrigger, 11677, TE_GETITEM, 3094, 5 )--------------Ŭ��������5��
	MisCancelAction(ClearMission, 1167)
	

	MisNeed(MIS_NEED_ITEM, 1346, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4526, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 1608, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 4495, 1, 31, 1 )
	MisNeed(MIS_NEED_ITEM, 1612, 20, 32, 20 )
	MisNeed(MIS_NEED_ITEM, 1140, 20, 52, 20 )
	MisNeed(MIS_NEED_ITEM, 3094, 5, 72, 5 )
	

	MisHelpTalk("<t>��Ҫ��Ϊ������,��ȥ��")
	MisResultTalk("<t>��Щ������������Խ��,��ס,�����������еĶ��������Լ��ļ�ֵ,��Ҫ���Ǽ����ʱ���������ȥ����.")

	MisResultCondition(HasMission, 1167)
	MisResultCondition(NoRecord,1167)
	MisResultCondition(HasItem, 1346, 10 )
	MisResultCondition(HasItem, 4526, 10 )
	MisResultCondition(HasItem, 1608, 10 )
	MisResultCondition(HasItem, 4495, 1 )
	MisResultCondition(HasItem, 1612, 20 )
	MisResultCondition(HasItem, 1140, 20 )
	MisResultCondition(HasItem, 3094, 5 )


	MisResultAction(TakeItem, 1346, 10 )
	MisResultAction(TakeItem, 4526, 10 )
	MisResultAction(TakeItem, 1608, 10 )
	MisResultAction(TakeItem, 4495, 1)
	MisResultAction(TakeItem, 1612, 20 )
	MisResultAction(TakeItem, 1140, 20 )
	MisResultAction(TakeItem, 3094, 5 )
	
	MisResultAction(ClearMission, 1167)
	MisResultAction(SetRecord,  1167 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1167, 1, 10 )
	RegCurTrigger( 11671 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4526)	
	TriggerAction( 1, AddNextFlag, 1167, 11, 10 )
	RegCurTrigger( 11672 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1608)	
	TriggerAction( 1, AddNextFlag, 1167, 21, 10 )
	RegCurTrigger( 11673 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1167, 31, 1 )
	RegCurTrigger( 11674 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1167, 36, 20 )
	RegCurTrigger( 11675 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1140)	
	TriggerAction( 1, AddNextFlag, 1167, 37, 20 )
	RegCurTrigger( 11676 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1167, 87, 5 )
	RegCurTrigger( 11677 )


	----------------------------------------------------------˫��ĩ��----------�������¿�
	DefineMission( 5678, "�λ�˫��֮˫��ĩ��", 1168 )
	MisBeginTalk("<t>BOSSѫ�������Ӣ��������ζ�Ľ���,��Ҫ�Ļ���ȥɱ�����µ�˫���ػ���.")
				
	MisBeginCondition(NoMission, 1168)
	MisBeginCondition(HasRecord,1162)
	MisBeginCondition(NoRecord,1168)
	MisBeginAction(AddMission,1168)
	MisBeginAction(AddTrigger, 11681, TE_KILL, 1039, 1)---˫���ػ���
	
	MisCancelAction(ClearMission, 1168)

	MisNeed(MIS_NEED_DESP, "��ɱ˫���ػ���ħŮ֮��(2527, 2467)!")
	MisNeed(MIS_NEED_KILL, 1039,1, 10, 1)
	

	MisResultTalk("<t>˫ͷ�ı۵Ĺ���������С�ĵĽ���.����Զ���޷�������ɱ������!")
	MisHelpTalk("<t>��˵��ֻ˫ͷ��,��ͬ����,��ҪС��.")
	MisResultCondition(HasMission,  1168)
	MisResultCondition(HasFlag, 1168, 10)
	MisResultCondition(NoRecord , 1168)
	MisResultAction(GiveItem, 1880, 1, 4 )
	MisResultAction(ClearMission,  1168)
	MisResultAction(SetRecord,  1168 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1039)	
	TriggerAction( 1, AddNextFlag, 1168, 10, 1 )
	RegCurTrigger( 11681 )

-------------------------------------------------�Ҷ�Ӣ��----------�������¿�	
	DefineMission (5679, "�λ�˫��֮�Ҷ�Ӣ��", 1169)
	
	MisBeginTalk("<t>˫��������,����ʮ������,�ڸ�����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������?")

	MisBeginCondition(NoMission,1169)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1169)
	MisBeginAction(AddMission,1169)
	MisCancelAction(ClearMission, 1169)
	
	MisNeed(MIS_NEED_DESP, "���10���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>���ó���ע����һ��Ϊս����������.")

	MisResultCondition(HasMission, 1169)
	MisResultCondition(NoRecord,1169)
	MisResultCondition(HasFightingPoint,10 )
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1169)
	MisResultAction(SetRecord,  1169 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------�������¿�	
	DefineMission (5680, "�λ�˫��֮����Ӣ��", 1170)
	
	MisBeginTalk("<t>�������,��������֪������һ�����Լ���Ҫ����ˣ������λ�˫�ӹ������Ҫ��Ҳ����һЩ.")

	MisBeginCondition(NoMission,1170)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1170)
	MisBeginAction(AddMission,1170)
	MisCancelAction(ClearMission, 1170)
	
	MisNeed(MIS_NEED_DESP, "���5000����������")
	MisHelpTalk("<t>��ʲô��,������?����Ϊ5000�������ܺû���?")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1170)
	MisResultCondition(NoRecord,1170)
	MisResultCondition(HasCredit,5000 )
	MisResultAction(TakeCredit,5000  )
	MisResultAction(ClearMission, 1170)
	MisResultAction(SetRecord,  1170 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------�������¿�	
	DefineMission (5681, "�λ�˫��֮�ȼ�Ӣ��", 1171)
	
	MisBeginTalk("<t>�¸ҵ�����,���ҿ�����Ƿ���������,����֤����ֻ���Ҳ�һ��,����... ")

	MisBeginCondition(NoMission,1171)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1171)
	MisBeginAction(AddMission,1171)
	MisCancelAction(ClearMission, 1171)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ65��")
	MisHelpTalk("<t>��Ȼ,65��������˵��������.")
	MisResultTalk("<t>���ò�����,���ȷֻ�����Բ�һ�����,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1171)
	MisResultCondition(NoRecord,1171)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1171)
	MisResultAction(SetRecord,  1171 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------�������¿�	
	DefineMission (5682, "�λ�˫��֮����Ӣ��", 1172)
	
	MisBeginTalk("<t>��˵�к���������ΰ�������֮�Ӿ�����..�ҵ�����,������ܵ���󺣵�ͬ�е���,��Ҫ����Ϊ������.")

	MisBeginCondition(NoMission,1172)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1172)
	MisBeginAction(AddMission,1172)
	MisCancelAction(ClearMission, 1172)
	
	MisNeed(MIS_NEED_DESP, "���700����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ��������֮��.")

	MisResultCondition(HasMission, 1172)
	MisResultCondition(NoRecord,1172)
	MisResultCondition(HasHonorPoint,700 )
	MisResultAction(TakeHonorPoint, 700 )
	MisResultAction(ClearMission, 1172)
	MisResultAction(SetRecord,  1172 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------�������¿�	
	DefineMission (5683, "�λ�˫��֮�ɼ���ʹ", 1173)
	
	MisBeginTalk("<t>�ɼ�ѫ����������Щ��������ǿ���˵�����,�����ĵĻ���ȥ���԰�. ")

	MisBeginCondition(NoMission,1173)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1173)
	MisBeginAction(AddMission,1173)
	MisBeginAction(AddTrigger, 11731, TE_GETITEM, 1346, 15 )-------------------Ѫ�ȵ����Ѫ15
	MisBeginAction(AddTrigger, 11732, TE_GETITEM, 4526, 15 )-------------------����ĳ�ì15          
	MisBeginAction(AddTrigger, 11733, TE_GETITEM, 1608, 15 )-----------------����Ƥë15               
	MisBeginAction(AddTrigger, 11734, TE_GETITEM, 4495, 2 )----------------ɽ������2��               
	MisBeginAction(AddTrigger, 11735, TE_GETITEM, 1612, 30)------------------�����Ľ�30��            
	MisBeginAction(AddTrigger, 11736, TE_GETITEM, 2724, 20 )-----------------��ֻ������LV2 20��                  
	MisBeginAction(AddTrigger, 11737, TE_GETITEM, 3094, 10 )------------------Ŭ��������10��          
	MisCancelAction(ClearMission, 1173)
	

	MisNeed(MIS_NEED_ITEM, 1346, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 4526, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 1608, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 4495,  2, 46, 2 )
	MisNeed(MIS_NEED_ITEM, 1612, 30, 48, 30 )
	MisNeed(MIS_NEED_ITEM, 2724, 20, 78, 20 )
	MisNeed(MIS_NEED_ITEM, 3094, 10, 98, 10 )
	

	MisHelpTalk("<t>��Ҫ��Ϊ������,��ȥ��")
	MisResultTalk("<t>��Щ������������Խ��,��ס,�����������еĶ��������Լ��ļ�ֵ,��Ҫ���Ǽ����ʱ���������ȥ����..")

	MisResultCondition(HasMission, 1173)
	MisResultCondition(NoRecord,1173)
	MisResultCondition(HasItem, 1346, 15 )
	MisResultCondition(HasItem, 4526, 15 )
	MisResultCondition(HasItem, 1608, 15 )
	MisResultCondition(HasItem, 4495, 2 )
	MisResultCondition(HasItem, 1612, 30 )
	MisResultCondition(HasItem, 2724, 20 )
	MisResultCondition(HasItem, 3094, 10 )


	MisResultAction(TakeItem, 1346, 15 )
	MisResultAction(TakeItem, 4526, 15 )
	MisResultAction(TakeItem, 1608, 15 )
	MisResultAction(TakeItem, 4495, 2 )
	MisResultAction(TakeItem, 1612, 30 )
	MisResultAction(TakeItem, 2724, 20 )
	MisResultAction(TakeItem, 3094, 10 )

	MisResultAction(ClearMission, 1173)
	MisResultAction(SetRecord,  1173 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1173, 1, 15 )
	RegCurTrigger( 11731 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4526)	
	TriggerAction( 1, AddNextFlag, 1173, 16, 15 )
	RegCurTrigger( 11732 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1608)	
	TriggerAction( 1, AddNextFlag, 1173, 31, 15 )
	RegCurTrigger( 11733 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1173, 46, 2 )
	RegCurTrigger( 11734 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1173, 48, 30 )
	RegCurTrigger( 11735 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2724)	
	TriggerAction( 1, AddNextFlag, 1173,78, 20 )
	RegCurTrigger( 11736 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1173, 98, 10 )
	RegCurTrigger( 11737 )


-------------------------------------------------�Ҷ�Ӣ��----------�������¿�	
	DefineMission (5684, "�λ�˫��֮�Ҷ�Ӣ��", 1174)
	
	MisBeginTalk("<t>˫��������,����ʮ������,�ڸ�����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������? ")

	MisBeginCondition(NoMission,1174)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1174)
	MisBeginAction(AddMission,1174)
	MisCancelAction(ClearMission, 1174)
	
	MisNeed(MIS_NEED_DESP, "���15���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>���ó���ע����һ��Ϊս����������.")

	MisResultCondition(HasMission, 1174)
	MisResultCondition(NoRecord,1174)
	MisResultCondition(HasFightingPoint,15 )
	MisResultAction(TakeFightingPoint, 15 )
	MisResultAction(ClearMission, 1174)
	MisResultAction(SetRecord,  1174 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------�������¿�	
	DefineMission (5685, "�λ�˫��֮����Ӣ��", 1175)
	
	MisBeginTalk("<t>�������,��������֪������һ�����Լ���Ҫ����ˣ������λ�˫�ӹ������Ҫ��Ҳ����һЩ.")

	MisBeginCondition(NoMission,1175)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1175)
	MisBeginAction(AddMission,1175)
	MisCancelAction(ClearMission, 1175)
	
	MisNeed(MIS_NEED_DESP, "���8000����������")
	MisHelpTalk("<t>��ʲô��,������?����Ϊ8000�������ܺû���?")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1175)
	MisResultCondition(NoRecord,1175)
	MisResultCondition(HasCredit,8000 )
	MisResultAction(TakeCredit, 8000 )
	MisResultAction(ClearMission, 1175)
	MisResultAction(SetRecord,  1175 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------�������¿�	
	DefineMission (5686, "�λ�˫��֮�ȼ�Ӣ��", 1176)
	
	MisBeginTalk("<t>�¸ҵ�����,���ҿ�����Ƿ���������,����֤����ֻ���Ҳ�һ��,����....")

	MisBeginCondition(NoMission,1176)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1176)
	MisBeginAction(AddMission,1176)
	MisCancelAction(ClearMission, 1176)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ70��")
	MisHelpTalk("<t>��Ȼ,70��������˵��������.")
	MisResultTalk("<t>���ò�����,���ȷֻ�����Բ�һ�����,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1176)
	MisResultCondition(NoRecord,1176)
	MisResultCondition(LvCheck, ">", 69 )
	MisResultAction(ClearMission, 1176)
	MisResultAction(SetRecord,  1176 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------����Ӣ��----------�������¿�	
	DefineMission (5687, "�λ�˫��֮����Ӣ��", 1177)
	
	MisBeginTalk("<t>��˵�к���������ΰ�������֮�Ӿ�����..�ҵ�����,������ܵ���󺣵�ͬ�е���,��Ҫ����Ϊ������.")

	MisBeginCondition(NoMission,1177)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1177)
	MisBeginAction(AddMission,1177)
	MisCancelAction(ClearMission, 1177)
	
	MisNeed(MIS_NEED_DESP, "���1000����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ��������֮��.")

	MisResultCondition(HasMission, 1177)
	MisResultCondition(NoRecord,1177)
	MisResultCondition(HasHonorPoint,1000 )
	MisResultAction(TakeHonorPoint, 1000 )
	MisResultAction(ClearMission, 1177)
	MisResultAction(SetRecord,  1177 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ɼ���ʹ----------�������¿�	
	DefineMission (5688, "�λ�˫��֮�ɼ���ʹ", 1178)
	
	MisBeginTalk("<t>�ɼ�ѫ����������Щ��������ǿ���˵�����,�����ĵĻ���ȥ���԰�. ")

	MisBeginCondition(NoMission,1178)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1178)
	MisBeginAction(AddMission,1178)
	MisBeginAction(AddTrigger, 11781, TE_GETITEM, 1346, 20 )---------------------Ѫ�ȵ����Ѫ20 
	MisBeginAction(AddTrigger, 11782, TE_GETITEM, 3433, 1 )---------------------��ŵ��ʯ1��          
	MisBeginAction(AddTrigger, 11783, TE_GETITEM, 4495, 3 )-------------------ɽ������3��               
	MisBeginAction(AddTrigger, 11784, TE_GETITEM, 1612, 30 )------------------�����Ľ�30��             
	MisBeginAction(AddTrigger, 11785, TE_GETITEM, 2724, 30 )--------------------��ֻ������LV2 30��             
	MisBeginAction(AddTrigger, 11786, TE_GETITEM, 3094, 30 )-------------------Ŭ��������30��                              
	MisCancelAction(ClearMission, 1178)						                                     
	

	MisNeed(MIS_NEED_ITEM, 1346, 20, 1, 20 )
	MisNeed(MIS_NEED_ITEM, 3433, 1, 21, 1 )
	MisNeed(MIS_NEED_ITEM, 4495, 3, 22, 3 )
	MisNeed(MIS_NEED_ITEM, 1612, 30, 25, 30 )
	MisNeed(MIS_NEED_ITEM, 2724, 30, 55, 30)
	MisNeed(MIS_NEED_ITEM, 3094, 30, 85, 30 )


	MisHelpTalk("<t>��Ҫ��Ϊ������,��ȥ��")
	MisResultTalk("<t>��Щ������������Խ��,��ס,�����������еĶ��������Լ��ļ�ֵ,��Ҫ���Ǽ����ʱ���������ȥ����.")

	MisResultCondition(HasMission, 1178)
	MisResultCondition(NoRecord,1178)
	MisResultCondition(HasItem, 1346, 20 )
	MisResultCondition(HasItem, 3433, 1 )
	MisResultCondition(HasItem, 4495, 3 )
	MisResultCondition(HasItem, 1612, 30 )
	MisResultCondition(HasItem, 2724, 30 )
	MisResultCondition(HasItem, 3094, 30 )


	MisResultAction(TakeItem, 1346, 20 )
	MisResultAction(TakeItem, 3433, 1 )
	MisResultAction(TakeItem, 4495, 3 )
	MisResultAction(TakeItem, 1612, 30 )
	MisResultAction(TakeItem, 2724, 30 )
	MisResultAction(TakeItem, 3094, 30 )

	MisResultAction(ClearMission, 1178)
	MisResultAction(SetRecord,  1178 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1178, 1, 20 )
	RegCurTrigger( 11781 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3433)	
	TriggerAction( 1, AddNextFlag, 1178, 21, 1 )
	RegCurTrigger( 11782 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1178, 22, 3 )
	RegCurTrigger( 11783 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1178, 25, 30 )
	RegCurTrigger( 11784 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2724)	
	TriggerAction( 1, AddNextFlag, 1178, 55, 30 )
	RegCurTrigger( 11785 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1178, 85, 30 )
	RegCurTrigger( 11786 )

	----------------------------------------------------------�罻��ʹ----------�������¿�
	DefineMission( 5689, "�λ�˫��֮�罻��ʹ", 1179 )
	MisBeginTalk("<t>����˵��ϲ����ţ,�ѵ������ҵĴ���?�м������˲�������?��ʵ�һ��Ǻ���������,��Щ����ҵ������ǿ�����֤.������Ҫ��ʥ���ھٰ��ɶ�,�������Ҫ̽��ѫ�¾Ͱ���ȥ�������ǰ�.")
				
	MisBeginCondition(NoMission, 1179)
	MisBeginCondition(NoRecord,1179)
	MisBeginCondition(HasRecord, 1162)-------------------�µ�id,����id
	MisBeginAction(AddMission,1179)
	MisCancelAction(ClearMission, 1179)

	MisNeed(MIS_NEED_DESP, "���������Ļ���������(711,1414)����")
	
	MisHelpTalk("<t>��ȥ��,ʱ�����Ǳ�����Ĺ��ÿ�.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ-----------------����������

	DefineMission(5690, "�罻��ʹ", 1179, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������¿�?����ʶ��,����ţ�ı����������ж��ŵ�.")
	MisResultCondition(NoRecord, 1179)
	MisResultCondition(HasMission,1179)
	MisResultAction(ClearMission,1179)
	MisResultAction(SetRecord, 1179)

	----------------------------------------------------------�罻��ʹ2----------����������
	DefineMission( 5691, "�罻��ʹ2", 1180 )
	MisBeginTalk("<t>�Ҹո�18���ʱ���������������,������ʶ�˵¿˾ͷ������������...�����ɶ����ܲ��ܲμӻ�Ҫ����û�м���,�ҿ�û��������ô����")
				
	MisBeginCondition(NoMission, 1180)
	MisBeginCondition(NoRecord,1180)
	MisBeginCondition(HasRecord, 1179)
	MisBeginAction(AddMission,1180)
	MisCancelAction(ClearMission, 1180)

	MisNeed(MIS_NEED_DESP, "��ɳᰵ�Ѳ�߱�������(958,3549)����")
	
	MisHelpTalk("<t>�ڳ�����Ƥ���µ�����ǲ���ô����.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ2-------------Ѳ�߱�������
	DefineMission(5692, "�罻��ʹ2", 1180, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���!�Ҷӳ�����,����������?")
	MisResultCondition(NoRecord, 1180)
	MisResultCondition(HasMission,1180)
	MisResultAction(ClearMission,1180)
	MisResultAction(SetRecord, 1180)

	----------------------------------------------------------�罻��ʹ3----------Ѳ�߱�������
	DefineMission( 5693, "�罻��ʹ3", 1181 )
	MisBeginTalk("<t>�¿˵�ʥ���ɶ�?�ܲ���,���Ѿ��ȹ��˺ܶ���¶����ĵ�ʥ������.�������Ѿ�Լ����˾��,�����������һ����˾�����")
				
	MisBeginCondition(NoMission, 1181)
	MisBeginCondition(NoRecord,1181)
	MisBeginCondition(HasRecord, 1180)
	MisBeginAction(AddMission,1181)
	MisCancelAction(ClearMission, 1181)

	MisNeed(MIS_NEED_DESP, "������Ӫ�ز���վ����˾(2138,545)����")
	
	MisHelpTalk("<t>˵ʵ���ҶԵ¿��Ѿ�ûʲôӡ����,�Ǻ�..")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ3--------��˾
	DefineMission(5694, "�罻��ʹ3", 1181, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�μӵ¿˵�ʥ���ɶ��Ǹ����õ�����,��Ȼ�Ҳ�ϲ���¿�,������ϲ���ɶ��ϵĹ���.")
	MisResultCondition(NoRecord, 1181)
	MisResultCondition(HasMission,1181)
	MisResultAction(ClearMission,1181)
	MisResultAction(SetRecord, 1181)



	----------------------------------------------------------�罻��ʹ4----------��˾
	DefineMission( 5695, "�罻��ʹ4", 1182 )
	MisBeginTalk("<t>������ȥ�¶�άƽԭ���æ���߿��������˹,��֪��һ��ֲ�������Ч����������֭.")
				
	MisBeginCondition(NoMission, 1182)
	MisBeginCondition(NoRecord,1182)
	MisBeginCondition(HasRecord, 1181)
	MisBeginAction(AddMission,1182)
	MisCancelAction(ClearMission, 1182)

	MisNeed(MIS_NEED_DESP, "�ҵ¶�άƽԭ��Ѳ�߱������˹(2065,2732)����")
	
	MisHelpTalk("<t>���������Ϣ��ܸ���Ȥ��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ4--------Ѳ�߱������˹
	DefineMission(5696, "�罻��ʹ4", 1182, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����?������ֲ��,����Ϊʲô�������һЩ����,�������н���������.����һ�����С����.")
	MisResultCondition(NoRecord, 1182)
	MisResultCondition(HasMission,1182)
	MisResultAction(ClearMission,1182)
	MisResultAction(SetRecord, 1182)


	----------------------------------------------------------�罻��ʹ5----------Ѳ�߱������˹
	DefineMission( 5697, "�罻��ʹ5", 1183 )
	MisBeginTalk("<t>��˵�¿�?����¿���ʶ������,����һ���ܲ��������,��Ȼ����ţ,ȴ��һ������ϵ�����.��һ����ȥ�μ������ɶ�.�������Ը�����֪ͨ�������˹,���������ʶ̫��,��Ҫ����ȥ����һ�����.")
				
	MisBeginCondition(NoMission, 1183)
	MisBeginCondition(NoRecord,1183)
	MisBeginCondition(HasRecord, 1182)
	MisBeginAction(AddMission,1183)
	MisCancelAction(ClearMission, 1183)

	MisNeed(MIS_NEED_DESP, "���ϲ�ɳĮ�Ķ������˹(1131,3153)����")
	
	MisHelpTalk("<t>�������˹�Ǹ��Ӳ�������С��,Ӧ����¿�ѧϰ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ5--------�������˹
	DefineMission(5698, "�罻��ʹ5", 1183, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���Ӳ�����?�������������ø�������ͬ����?")
	MisResultCondition(NoRecord, 1183)
	MisResultCondition(HasMission,1183)
	MisResultAction(ClearMission,1183)
	MisResultAction(SetRecord, 1183)


	----------------------------------------------------------�罻��ʹ6----------�������˹
	DefineMission( 5699, "�罻��ʹ6", 1184 )
	MisBeginTalk("<t>��ʵ��������ǮҲ���ҵ�ԭ��,׷�����������ǲ���ֻ�����Ե�,�����Ǹ��ɰ���Ů��,�Ҳ�Ҫ���ܿ�.��֪������û������.")
				
	MisBeginCondition(NoMission, 1184)
	MisBeginCondition(NoRecord,1184)
	MisBeginCondition(HasRecord, 1183)
	MisBeginAction(AddMission,1184)
	MisCancelAction(ClearMission, 1184)

	MisNeed(MIS_NEED_DESP, "������(798,369)����")
	
	MisHelpTalk("<t>������һ���������ŵ���������.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ6--------����
	DefineMission(5700, "�罻��ʹ6", 1184, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ȼ����Ӧ���п����ػ����ۺ���ʱ�,�������Ҳ�������Ҫ��.")
	MisResultCondition(NoRecord, 1184)
	MisResultCondition(HasMission,1184)
	MisResultAction(ClearMission,1184)
	MisResultAction(SetRecord, 1184)


	----------------------------------------------------------�罻��ʹ7----------����
	DefineMission( 5701, "�罻��ʹ7", 1185 )
	MisBeginTalk("<t>�����崿���������СŮ��,���й��ڰ��������ĺ���ʵ�Ĺ����Ҷ���ͨ���Ų��������˽⵽��.")
				
	MisBeginCondition(NoMission, 1185)
	MisBeginCondition(NoRecord,1185)
	MisBeginCondition(HasRecord, 1184)
	MisBeginAction(AddMission,1185)
	MisCancelAction(ClearMission, 1185)

	MisNeed(MIS_NEED_DESP, "�Ҽ��ɵĹŲ���(1507,3105)����")
	
	MisHelpTalk("<t>�Ҵ�û������λ��ѧ��ʦ,�����Ҳ�����һ����һλ�������ص���������.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ7--------�Ų���
	DefineMission(5702, "�罻��ʹ7", 1185, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ���ʵ��������?�ҵĶ���̫����.���������������ˮ׼���Ҷ����������ȼ������.")
	MisResultCondition(NoRecord, 1185)
	MisResultCondition(HasMission,1185)
	MisResultAction(ClearMission,1185)
	MisResultAction(SetRecord, 1185)


	----------------------------------------------------------�罻��ʹ8----------�Ų���
	DefineMission( 5703, "�罻��ʹ8", 1186 )
	MisBeginTalk("<t>��ʵ��ԭ���������������������,���Ǵκ��Ѻ�Ʈ����������ɵ�,�Һ͵¿˱�Ī������Ļ�������ò.��֪������һﶮ�����ñ���,���ǿ���������,�Ǹ�ȥ��һ����.�㲻��?����������֤��.")
				
	MisBeginCondition(NoMission, 1186)
	MisBeginCondition(NoRecord,1186)
	MisBeginCondition(HasRecord, 1185)
	MisBeginAction(AddMission,1186)
	MisCancelAction(ClearMission, 1186)

	MisNeed(MIS_NEED_DESP, "�ұ�ѩ������ָ�ӡ�����(2372,737)����")
	
	MisHelpTalk("<t>�Һû����ҵ�����!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ8--------����ָ�ӡ�����
	DefineMission(5704, "�罻��ʹ8", 1186, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�Ų����͵¿˻���?���ǵ���,ÿ�쾭��������˶��ܶ�.˵ʵ�����ǵ�����������������ʲô����,Ҳ��̸����˭����.�Ǻ�")
	MisResultCondition(NoRecord, 1186)
	MisResultCondition(HasMission,1186)
	MisResultAction(ClearMission,1186)
	MisResultAction(SetRecord, 1186)


	----------------------------------------------------------�罻��ʹ9----------����ָ�ӡ�����
	DefineMission( 5705, "�罻��ʹ9", 1187 )
	MisBeginTalk("<t>�̺������˵Ļ���,�ƾ��Ǻ����Ļ��,�о����ǲ�������.��֪���ҵ�������˶���������������ɽ�᲻��μ�,��Ȼ��������������������.����ɰ�������...")
				
	MisBeginCondition(NoMission, 1187)
	MisBeginCondition(NoRecord,1187)
	MisBeginCondition(HasRecord, 1186)
	MisBeginAction(AddMission,1187)
	MisCancelAction(ClearMission, 1187)

	MisNeed(MIS_NEED_DESP, "�Ұ�����˹��ԭ�Ĳ�ݮ����(1010,350)����")
	
	MisHelpTalk("<t>���ż�ֱ�Ǳ�ѩ��ʢ����õ��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ9--------��ݮ����
	DefineMission(5706, "�罻��ʹ9", 1187, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����в���үү˵����ô�ɰ���?����Ϊ��ϲ���Ҳ�Խ�������ҿɰ�.")
	MisResultCondition(NoRecord, 1187)
	MisResultCondition(HasMission,1187)
	MisResultAction(ClearMission,1187)
	MisResultAction(SetRecord, 1187)

	----------------------------------------------------------�罻��ʹ10----------��ݮ����
	DefineMission( 5707, "�罻��ʹ10", 1188 )
	MisBeginTalk("<t>�¿��������ĺ�����?��Ҳ��������?����ҪΪ��׼��������...��ʲô������?�а취��,���������������������,�����к���Ȥ��ֽ��.���뺣������ϲ��ֽ����Ϸ��.")
				
	MisBeginCondition(NoMission, 1188)
	MisBeginCondition(NoRecord,1188)
	MisBeginCondition(HasRecord, 1187)
	MisBeginAction(AddMission,1188)
	MisCancelAction(ClearMission, 1188)

	MisNeed(MIS_NEED_DESP, "�ұ���ƽԭ����������(1136,2778)����")
	
	MisHelpTalk("<t>��֪�����������ϲ��ϰ�ֽ���͸�����...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ10--------��������
	DefineMission(5708, "�罻��ʹ10", 1188, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����Ҳע�⵽�ҵĲŻ���?���гɾ͸а�!")
	MisResultCondition(NoRecord, 1188)
	MisResultCondition(HasMission,1188)
	MisResultAction(ClearMission,1188)
	MisResultAction(SetRecord, 1188)

	----------------------------------------------------------�罻��ʹ11----------��������
	DefineMission( 5709, "�罻��ʹ11", 1189 )
	MisBeginTalk("<t>�Ҳ���������������СŮ��һ����ȥ�μӺ�����Party,�һ������������һ��ȥ��.˵��ʥ����ʹ������һ����,����ԭ�Ͻ�ȱ,���Ҫ��������Ա��������˹�Ļ�����ܲ��ᰴʱ�͵���,�����·����ɳ������˵��һ�º���?��������.")
				
	MisBeginCondition(NoMission, 1189)
	MisBeginCondition(NoRecord,1189)
	MisBeginCondition(HasRecord, 1188)
	MisBeginAction(AddMission,1189)
	MisCancelAction(ClearMission, 1189)

	MisNeed(MIS_NEED_DESP, "����ɳ���Ľ���Ա��������˹(1739,3748)����")
	
	MisHelpTalk("<t>������ӿ������ͺ�ֵ���и�.����Ա��������˹����ɳ��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ11--------����Ա��������˹
	DefineMission(5710, "�罻��ʹ11", 1189, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ҫ��ʱ!��������Ϊ�˿ɰ���Ů��ʲô�����Է���,����������������ѵ�����...")
	MisResultCondition(NoRecord, 1189)
	MisResultCondition(HasMission,1189)
	MisResultAction(ClearMission,1189)
	MisResultAction(SetRecord, 1189)

	----------------------------------------------------------�罻��ʹ12----------����Ա��������˹
	DefineMission( 5711, "�罻��ʹ12", 1190 )
	MisBeginTalk("<t>�������������Ҳû��̫���¿�������.�һ�ȥ�μӵ¿˵�����,�ܾ�ûȥ�ݷù�������.�Ų���Ҳȥ��?̫����,�����Ʒ���ˡ����Ҳ�ܲμ�,�ǽ���һ��������ʥ����.")
				
	MisBeginCondition(NoMission, 1190)
	MisBeginCondition(NoRecord,1190)
	MisBeginCondition(HasRecord, 1189)
	MisBeginAction(AddMission,1190)
	MisCancelAction(ClearMission, 1190)

	MisNeed(MIS_NEED_DESP, "�ұ�������վ����Ʒ���ˡ����(2673,657)����")
	
	MisHelpTalk("<t>��������ȥ�Ļ��һ�����ź���,ϣ������԰���.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ12--------��Ʒ���ˡ����
	DefineMission(5712, "�罻��ʹ12", 1190, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������,������˹����һ�����˵��Щ���˸ж��Ļ�.������.")
	MisResultCondition(NoRecord, 1190)
	MisResultCondition(HasMission,1190)
	MisResultAction(ClearMission,1190)
	MisResultAction(SetRecord, 1190)


	----------------------------------------------------------�罻��ʹ13----------��Ʒ���ˡ����
	DefineMission( 5713, "�罻��ʹ13", 1191 )
	MisBeginTalk("<t>�����Ƕ��꾭Ӫ�鱦��Ʒʹ�ҵ��Ը�ҲŮ�Ի���.Ϊ�����Լ�ʼ�ձ������ӵ�����,��������ʼ��������ζʮ��Ŀ��ݡ���ʯ��������.")
				
	MisBeginCondition(NoMission, 1191)
	MisBeginCondition(NoRecord,1191)
	MisBeginCondition(HasRecord, 1190)
	MisBeginAction(AddMission,1191)
	MisCancelAction(ClearMission, 1191)

	MisNeed(MIS_NEED_DESP, "�ҿ����ӵ²���վ�Ŀ��ݡ���ʯ(626,2100)����")
	
	MisHelpTalk("<t>�����˳�㵽�����ӵ²���վתת,�����������·��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ13--------���ݡ���ʯ
	DefineMission(5714, "�罻��ʹ13", 1191, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���ﲻ��һ���ʺ������ס�ĵط�,�����ǵ��㲻ϲ������ھ�ʱ,���ָо��͸�ǿ��.")
	MisResultCondition(NoRecord, 1191)
	MisResultCondition(HasMission,1191)
	MisResultAction(ClearMission,1191)
	MisResultAction(SetRecord, 1191)

	----------------------------------------------------------�罻��ʹ14----------���ݡ���ʯ
	DefineMission( 5715, "�罻��ʹ14", 1192 )
	MisBeginTalk("<t>�оۻ���Բμ�?��Ȼ���кܾòŵ�ʥ����,�������������Ϣ��Ȼ���Ҿ��ú����,���ٿ���Զ��ĳ����.���뽻��Ա���ȿ�Ҳ����ѵ�,������ȥ������.")
				
	MisBeginCondition(NoMission, 1192)
	MisBeginCondition(NoRecord,1192)
	MisBeginCondition(HasRecord, 1191)
	MisBeginAction(AddMission,1192)
	MisCancelAction(ClearMission, 1192)

	MisNeed(MIS_NEED_DESP, "���氮���Ľ���Ա���ȿ�(2519,2397)����")
	
	MisHelpTalk("<t>�氮���ĵ��������ε�,��֪����?")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ14--------����Ա���ȿ�        
	DefineMission(5716, "�罻��ʹ14", 1192, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ϳ��ݡ���ʯ�����ҵľ��ǰ������ڶ��ҵ�ծ��,�ҳ����Ҳ���һ���ɹ��Ľ���Ա,�������Ȿ������.��¹�ʥ�������˱�ծ��.")
	MisResultCondition(NoRecord, 1192)
	MisResultCondition(HasMission,1192)
	MisResultAction(ClearMission,1192)
	MisResultAction(SetRecord, 1192)

	----------------------------------------------------------�罻��ʹ15----------����Ա���ȿ�
	DefineMission( 5717, "�罻��ʹ15", 1193 )
	MisBeginTalk("<t>��˽�˾ۻ�û�������ĵ��Ŀɲ���,Ϊ���Ǹ����õ�����,����Ϊ��Ӧ�ð��������������ζ���ĵ���������.")
				
	MisBeginCondition(NoMission, 1193)
	MisBeginCondition(NoRecord,1193)
	MisBeginCondition(HasRecord, 1192)
	MisBeginAction(AddMission,1193)
	MisCancelAction(ClearMission, 1193)

	MisNeed(MIS_NEED_DESP, "�Ұ�����˹����վ����������(1059,661)����")
	
	MisHelpTalk("<t>��������,Ϊ����ζ�ĵ���.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ15-------- ��������
	DefineMission(5718, "�罻��ʹ15", 1193, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Щ����ľۻ�������Ӧ������Ϊ��ζ�ĵ���.")
	MisResultCondition(NoRecord, 1193)
	MisResultCondition(HasMission,1193)
	MisResultAction(ClearMission,1193)
	MisResultAction(SetRecord, 1193)


	----------------------------------------------------------�罻��ʹ16----------��������
	DefineMission( 5719, "�罻��ʹ16", 1194 )
	MisBeginTalk("<t>���������͵���������?���Ѿ�����������,�Ͽ󲹸�վ�Ĵ���ˡ����մ����ҵ�ѧͽ,��ȥ��������.")
				
	MisBeginCondition(NoMission, 1194)
	MisBeginCondition(NoRecord,1194)
	MisBeginCondition(HasRecord, 1193)
	MisBeginAction(AddMission,1194)
	MisCancelAction(ClearMission, 1194)

	MisNeed(MIS_NEED_DESP, "�ҷϿ󲹸�վ�Ĵ���ˡ����մ�(1907,2798)����")
	
	MisHelpTalk("<t>Ҳ���Ƕ�������ʱ����.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ16-------- ����ˡ����մ�
	DefineMission(5720, "�罻��ʹ16", 1194, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ҵ�ȷ�̳�������ʦ�ľ�տ����,���İ�,����������.")
	MisResultCondition(NoRecord, 1194)
	MisResultCondition(HasMission,1194)
	MisResultAction(ClearMission,1194)
	MisResultAction(SetRecord, 1194)


	----------------------------------------------------------�罻��ʹ17----------����ˡ����մ�
	DefineMission( 5721, "�罻��ʹ17", 1195 )
	MisBeginTalk("<t>��������Ҫһ����������ְ�æ.����׶�����æ�Ļ�,��Ӧ���������ѡ.")
				
	MisBeginCondition(NoMission, 1195)
	MisBeginCondition(NoRecord,1195)
	MisBeginCondition(HasRecord, 1194)
	MisBeginAction(AddMission,1195)
	MisCancelAction(ClearMission, 1195)

	MisNeed(MIS_NEED_DESP, "���ϲ�ɳĮ���׶�����(1244,3186)����")
	
	MisHelpTalk("<t>�׶�������һ����ϸ�Ĳ��Һ������ĵ�Ů��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ17-------- �׶�����
	DefineMission(5722, "�罻��ʹ17", 1195, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���!��ӭ������.�ҽ��ܺ��մ������,��Ϊ�ҶԹ�������������������.")
	MisResultCondition(NoRecord, 1195)
	MisResultCondition(HasMission,1195)
	MisResultAction(ClearMission,1195)
	MisResultAction(SetRecord, 1195)

	----------------------------------------------------------�罻��ʹ18----------�׶�����
	DefineMission( 5723, "�罻��ʹ18", 1196 )
	MisBeginTalk("<t>��������������Ƭ�λõ��ϲ�ɳĮһ����ļ�����,Ҫ��ô��ף��?��������Ҫ����Ҫ��л����ָ�ӡ�������,����ָ�������������.������ʵ���߲���,��������ְҵ��ʦ��רְ������.���������Ұ�.")
				
	MisBeginCondition(NoMission, 1196)
	MisBeginCondition(NoRecord,1196)
	MisBeginCondition(HasRecord, 1195)
	MisBeginAction(AddMission,1196)
	MisCancelAction(ClearMission, 1196)

	MisNeed(MIS_NEED_DESP, "��˼˼������վ�ĺ���ָ�ӡ�������(2297,3723)����")
	
	MisHelpTalk("<t>���Ȱ��ҵĹ���������,��л��Ƭ����������.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ18-------- ����ָ�ӡ�������
	DefineMission(5724, "�罻��ʹ18", 1196, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ʱ����úÿ찡.ת���Ѿ�һ����,�Ǹ�СŮ����Ȼ���ǵ���.�Ǻ�....")
	MisResultCondition(NoRecord, 1196)
	MisResultCondition(HasMission,1196)
	MisResultAction(ClearMission,1196)
	MisResultAction(SetRecord, 1196)

	----------------------------------------------------------�罻��ʹ19----------����ָ�ӡ�������
	DefineMission( 5725, "�罻��ʹ19", 1197 )
	MisBeginTalk("<t>ʱ�����,�Ҹյ������ʱ����һ��С����.�ܻ����ǰ��������.��֪�����ô���ʹ���ڹ�����ô����.")
				
	MisBeginCondition(NoMission, 1197)
	MisBeginCondition(NoRecord,1197)
	MisBeginCondition(HasRecord, 1196)
	MisBeginAction(AddMission,1197)
	MisCancelAction(ClearMission, 1197)

	MisNeed(MIS_NEED_DESP, "�����ô���ʹ(474,1054)����")
	
	MisHelpTalk("<t>����ְλ��һ������Ҫ��λ��.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ19-------- ���ô���ʹ
	DefineMission(5726, "�罻��ʹ19", 1197, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��֪�������ϵ�ʱ���Ƿ�Ҳ���������Ӱ.")
	MisResultCondition(NoRecord, 1197)
	MisResultCondition(HasMission,1197)
	MisResultAction(ClearMission,1197)
	MisResultAction(SetRecord, 1197)


		----------------------------------------------------------�罻��ʹ20----------���ô���ʹ
	DefineMission( 5727, "�罻��ʹ20", 1198 )
	MisBeginTalk("<t>��������ʥ����һ�������,ɣ������Ӧ�͸���һЩ�������̻���,��֪�������ǲ��ǵ���.")
				
	MisBeginCondition(NoMission, 1198)
	MisBeginCondition(NoRecord,1198)
	MisBeginCondition(HasRecord, 1197)
	MisBeginAction(AddMission,1198)
	MisCancelAction(ClearMission, 1198)

	MisNeed(MIS_NEED_DESP, "�ҽ���Ա��ɣ��(1003,1306)����")
	
	MisHelpTalk("<t>лл��������.ȥ��")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻��ʹ20-------- ����Ա��ɣ��
	DefineMission(5728, "�罻��ʹ20", 1198, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ô��������?�����ǰ�������,�Ҳ�������ʧ����.")
	MisResultCondition(NoRecord, 1198)
	MisResultCondition(HasMission,1198)
	MisResultAction(ClearMission,1198)
	MisResultAction(SetRecord, 1198)

		----------------------------------------------------------�罻��ʹ21----------����Ա��ɣ��
	DefineMission( 5729, "�罻��ʹ21", 1199 )
	MisBeginTalk("<t>��ϲ��������������罻���񣮸ж���ÿһ���Ȱ�����������е�����,��Ϊӵ����,���ǻ�����Ҹ�.���������ʱ����,�¿��ڵ�����.")
				
	MisBeginCondition(NoMission, 1199)
	MisBeginCondition(NoRecord,1199)
	MisBeginCondition(HasRecord, 1198)
	MisBeginAction(AddMission,1199)
	MisCancelAction(ClearMission, 1199)

	MisNeed(MIS_NEED_DESP, "��ɳᰳǺ������¿�(794,3669)����")
	
	MisHelpTalk("<t>�¿����������.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------�罻Ӣ��21------- �������¿�
	DefineMission(5730, "�罻Ӣ��21", 1199, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����Ҽ��������ɫ���罻��ʹ,��öѫ������֮����.")
	MisResultCondition(NoRecord, 1199)
	MisResultCondition(HasMission,1199)
	MisResultAction(ClearMission,1199)
	MisResultAction(SetRecord, 1199)
	MisResultAction(GiveItem, 1879, 1, 4)
	MisResultBagNeed(1)


-------------------------------------------------������ ���������

	DefineMission (5731, "\204\229\247\242\224 \193\235\232\231\237\229\246\238\226 - \241\239\229\246\232\224\235\252\237\224\255 \238\239\229\240\224\246\232\255 ", 1200 )--����� ��������� - ����������� �������� 
	
	MisBeginTalk( "<t>�� ������ ��� ����� ������� ���������, �� ������ ������� ����, � ������, ������ �������� �� �����... ��������� ��� <b 1 ������ ������������ ������� ��������>." )

	MisBeginCondition(NoMission,1200)
	MisBeginCondition(NoRecord,1200)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(HasRecord,1174)
	MisBeginCondition(HasRecord,1175)
	MisBeginCondition(HasRecord,1176)
	MisBeginCondition(HasRecord,1177)
	MisBeginCondition(HasRecord,1178)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(HasRecord,1168)
	MisBeginAction(AddMission,1200)
	MisBeginAction(AddTrigger, 12001, TE_GETITEM, 0854, 1 )---������ ������������ ������� ��������
	MisCancelAction(ClearMission, 1200)
	
	
	MisNeed(MIS_NEED_ITEM, 0854, 1, 1, 1 )
	MisHelpTalk( "<t>��������� ��� <b 1 ������ ������������ ������� ��������>." )

	MisResultTalk( "<t>������� ��� ������������." )

	MisResultCondition(HasMission, 1200)
	MisResultCondition(NoRecord,1200)
	MisResultCondition(HasItem, 0854, 1 )
	MisResultAction(TakeItem, 0854, 1 )
	MisResultAction(GiveItem, 1881, 1, 4)--������ ���������
	MisResultAction(ClearMission, 1200)
	MisResultAction(SetRecord,  1200 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 0854)	
	TriggerAction( 1, AddNextFlag, 1200, 1, 1 )
	RegCurTrigger( 12001 )	


	
-------------------------------------------------��������
	
	DefineMission (5733, "˫��֮ˮ�ֹ��ؽ���", 1201)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ���˫�ӹ���ӡ�;�з������Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1201)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(HasRecord,1163)
	MisBeginCondition(HasRecord,1164)
	MisBeginCondition(HasRecord,1165)
	MisBeginCondition(HasRecord,1166)
	MisBeginCondition(HasRecord,1167)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(NoRecord,1201)
	MisBeginAction(AddMission,1201)  
	MisBeginAction(AddTrigger, 12011, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 12012, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 12013, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 12014, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 12015, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 12016, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 12017, TE_GETITEM, 1880, 1 )	
	MisCancelAction(ClearMission, 1201)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ���Ǿ�з��,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1201)
	MisResultCondition(NoRecord,1201)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1201)
	MisResultAction(SetRecord,  1201 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 30, 4)
	MisResultAction(AddMoney,500000,500000)
	MisResultAction(ShuangZiSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1201, 10, 1 )
	RegCurTrigger( 12011 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1201, 20, 1 )
	RegCurTrigger( 12012 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1201, 30, 1 )
	RegCurTrigger( 12013 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1201, 40, 1 )
	RegCurTrigger( 12014 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1201, 50, 1 )
	RegCurTrigger( 12015 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1201, 60, 1 )
	RegCurTrigger( 12016 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1201, 70, 1 )
	RegCurTrigger( 12017 )

----------------------------------------------��������
	
	DefineMission (5734, "˫��֮�������ؽ���", 1202)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ���˫�ӹ���ӡ�;�з������Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1202)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(HasRecord,1169)
	MisBeginCondition(HasRecord,1170)
	MisBeginCondition(HasRecord,1171)
	MisBeginCondition(HasRecord,1172)
	MisBeginCondition(HasRecord,1173)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(NoRecord,1202)
	MisBeginAction(AddMission,1202)
	MisBeginAction(AddTrigger, 11571, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 11572, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 11573, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 11574, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 11575, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 11576, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 11577, TE_GETITEM, 1880, 1 )		
	MisCancelAction(ClearMission, 1202)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ���Ǿ�з��,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1202)
	MisResultCondition(NoRecord,1202)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1202)
	MisResultAction(SetRecord,  1202 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 60, 4)
	MisResultAction(AddMoney,700000,700000)
	MisResultAction(ShuangZiHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1157, 10, 1 )
	RegCurTrigger( 12021 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1202, 20, 1 )
	RegCurTrigger( 12022 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1202, 30, 1 )
	RegCurTrigger( 12023 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1202, 40, 1 )
	RegCurTrigger( 12024 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1202, 50, 1 )
	RegCurTrigger( 12025 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1202, 60, 1 )
	RegCurTrigger( 12026 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1202, 70, 1 )
	RegCurTrigger( 12027 )

	--------------------------------------------��������
	
	DefineMission (5735, "˫��֮�������ؽ���", 1203)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ���˫�ӹ���ӡ�;�з������Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1203)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(HasRecord,1174)
	MisBeginCondition(HasRecord,1175)
	MisBeginCondition(HasRecord,1176)
	MisBeginCondition(HasRecord,1177)
	MisBeginCondition(HasRecord,1178)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(NoRecord,1203)
	MisBeginAction(AddMission,1203)   
	MisBeginAction(AddTrigger, 11581, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 11582, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 11583, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 11584, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 11585, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 11586, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 11587, TE_GETITEM, 1880, 1 )	
	MisCancelAction(ClearMission, 1203)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ���Ǿ�з��,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1203)
	MisResultCondition(NoRecord,1203)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1203)
	MisResultAction(SetRecord,  1203 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 90, 4)
	MisResultAction(AddMoney,900000,900000)
	MisResultAction(ShuangZiCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1203, 10, 1 )
	RegCurTrigger( 12031 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1203, 20, 1 )
	RegCurTrigger( 12032 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1203, 30, 1 )
	RegCurTrigger( 12033 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1203, 40, 1 )
	RegCurTrigger( 12034 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1203, 50, 1 )
	RegCurTrigger( 12035 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1203, 60, 1 )
	RegCurTrigger( 12036 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1203, 70, 1 )
	RegCurTrigger( 12037 )

	----------------------------------����� �����

	DefineMission( 5736, "\192\237\227\229\235 \236\224\242\247\224", 1205 )

	MisBeginTalk( "<t>�� ������ ��������� ��� �������??? � �������� �� �������� �������������� ���� � ���� �������... ��������� ��� <b10 ������ �����>." )

	MisBeginCondition(NoMission,1205)
	MisBeginCondition(NoRecord,1205)
	MisBeginAction(AddMission,1205)
	MisBeginAction(AddTrigger, 12051, TE_GETITEM, 4418, 10)--������ �����
	MisCancelAction(ClearMission, 1205)
	

	MisNeed(MIS_NEED_DESP, " ��������� <b10 ������ �����>." )
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10)

	MisHelpTalk( "<t>��������� ��� <b10 ������ �����>." )
	MisResultTalk( "<t>��� ����������� ���� �������� ��� �������." ) 
	
	MisResultCondition(HasMission, 1205)
	MisResultCondition(NoRecord,1205)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 1205)
	MisResultAction(SetRecord, 1205 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 1205, 10, 10 )
	RegCurTrigger( 12051 )

	-------------------------------���������

	DefineMission( 5737, "\205\224\240\243\248\229\237\232\229", 1206 )
	
	MisBeginTalk( "<t>������ ����� ������ ����, � ��� ������ ����� ������ ������ ������, ����� ������ �����, ����� ���� �� ����������, �� ������ ������ ������ - ��� ����� ������... ��� ����� ���������� � ����, ��� ����� �� ���� ������." )
	MisBeginCondition(HasRecord, 1205 )
	MisBeginCondition(NoRecord, 1206 )
	MisBeginCondition(NoMission, 1206 )
	MisBeginAction(AddMission, 1206 )
	MisCancelAction(ClearMission, 1206)
	
	MisNeed(MIS_NEED_DESP, " ������������� �� ������ ����." )
	MisHelpTalk( "<t>����� ����, ��� ����� � ����� ������ ��� �." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------���������

	DefineMission( 5738, "\205\224\240\243\248\229\237\232\229", 1206, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>������ �� ������ ����� ������� ���������� ������... � ��� ��� ��� ������ �� ����� ������������, �� ������ ���������� ������ �� ���� ������<n><t>��� ����� ������ �����, ����� �� ���������� ����� � ������� ���������." )
	MisResultCondition(HasMission, 1206)
	MisBeginCondition(NoRecord, 1206)
	MisResultAction(ClearMission, 1206)
	MisResultAction(SetRecord, 1206)


	-------------------------------��������� �����--������

	DefineMission( 5739, "\207\238\247\242\224\235\252\191\237 \235\254\225\226\232", 1207 )
	
	MisBeginTalk( "<t>�������� ���� ������� � ���� ������� ��� ������!" )
	MisBeginCondition(HasRecord, 1206 )
	MisBeginCondition(NoRecord, 1207 )
	MisBeginCondition(NoMission, 1207 )
	MisBeginAction(AddMission, 1207 )
	MisBeginAction(GiveItem, 2669, 1, 4)----------������ �������
	MisCancelAction(ClearMission, 1207)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, " �������� ������(1599,909)" )
	MisHelpTalk( "<t>������ �� ����� ���������!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------������ ������--�������

	DefineMission( 5740, "\207\238\247\242\224\235\252\191\237 \235\254\225\226\232", 1207, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������� ���� �����, �� �������� ������ �� ����� �������� ����, � ���������, ��� �� ��� �������. � ���� ���������� ����� ������� � � ����, ��� �������� ���� �����... �������� �� ��� ����������..." )
	MisResultCondition(HasMission, 1207)
	MisBeginCondition(NoRecord, 1207)
	MisResultCondition(HasItem,2669,1)---------������ �������
	MisResultAction(TakeItem, 2669,1)
	MisResultAction(GiveItem, 2915, 1, 4)----------������ ������
	MisResultAction(ClearMission, 1207)
	MisResultAction(SetRecord, 1207)
	MisResultAction(ClearRecord, 1205 )
	MisResultAction(ClearRecord, 1206 )
	MisResultAction(ClearRecord, 1207 )
	MisResultBagNeed(1)

-------------------------------------------------------������� ����� �� ��������

	DefineMission( 6127, "\196\238\240\238\227\224\255 \239\235\224\242\224 \231\224 \238\225\243\247\229\237\232\229", 1453 )
	MisBeginTalk( "<t>�����... ���� ����� � �����, ��� �� �������� ������... �� ������ ����� ������� � �����? �� �������� ��������� ������ �������... ��� �� ������ �������� � ����� ��� ���������� ��������� 200 �������� �������. ���? � ��� ��� �����? ������, �������� � �������... �������� ��� � � �������� �� ��� ����� ����� �������." )
	MisBeginCondition( NoMission, 1453)
	MisBeginCondition( NoRecord, 1453)
	MisBeginAction( AddMission, 1453)
	MisBeginAction(AddTrigger, 14531, TE_GETITEM, 3909, 99)--�����
	MisCancelAction( ClearMission, 1453)

	MisNeed( MIS_NEED_DESP, "99 ����� � �����(2232,2782)������." )--�������� ���������
	MisNeed( MIS_NEED_ITEM, 3909, 99, 10, 99)

	MisHelpTalk( "<t>����� �� ����� ��������... ������� ����� ��������..." )
	MisResultTalk( "<t>������ ����... �� ������ ����... ��� ������ ������� ����� �� ����!" )
	MisResultCondition( HasMission, 1453)
	MisResultCondition( NoRecord, 1453)
	MisResultCondition( HasItem, 3909, 99)
	MisResultAction( ClearMission, 1453)
	MisResultAction( TakeItem, 3909, 99)
	MisResultAction( SetRecord, 1453)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1453, 10, 99 )
	RegCurTrigger( 14531 )

-------------------------------------------------------������� ����� �� ��������

	DefineMission( 6128, "\193\238\235\252\248\229 \228\240\243\231\229\233", 1454 )--������ ������
	MisBeginTalk( "<t>� ������, ������ ������, �������, ��� ��, ����������� ������� ������, �������� ������ � <b�������� ��������> � ��������� � ���� �� ���." )
	MisBeginCondition( NoMission, 1454)
	MisBeginCondition( NoRecord, 1454)
	MisBeginCondition( HasRecord, 1453)
	MisBeginAction( AddMission, 1454)
	MisCancelAction( ClearMission, 1454)

	MisNeed( MIS_NEED_DESP, " ��������� 4 ����� � ����� ��������� " )
	
	MisHelpTalk( "<t>�������� ������ ��� ����!" )
	MisResultTalk( "<t>�� ���������� � �� ����� � ��� ��� ������ ���������� ������� ������." )
	MisResultCondition( HasMission, 1454)
	MisResultCondition( NoRecord, 1454)
	MisResultCondition( CheckTeam1, 5)
	MisResultAction( ClearMission, 1454)
	MisResultAction( SetRecord, 1454)

-------------------------------------------------------������� ����� �� ��������

	DefineMission( 6129, "\211\239\240\224\230\237\229\237\232\255", 1455 )--���������� 
	MisBeginTalk( "<t>�������� ������ �������� ������� ���������. ������ <r10 ��������� ������>." )
	MisBeginCondition( NoMission, 1455)
	MisBeginCondition( NoRecord, 1455)
	MisBeginCondition( HasRecord, 1454)
	MisBeginAction( AddMission, 1455)
	MisBeginAction(AddTrigger, 14551, TE_KILL, 75, 10 )--��������� ����
	MisCancelAction( ClearMission, 1455)

	MisNeed( MIS_NEED_DESP, " ������ <r10��������� �������> � ������������� � ����� ���������." )
	MisNeed( MIS_NEED_KILL, 75, 10, 10, 10)

	MisHelpTalk( "<t>�������� ��������� �� ����." )
	MisResultTalk( "<t>���� ���� ������ � ���� � ����� ���������� ������������." )
	MisResultCondition( HasMission, 1455)
	MisResultCondition( NoRecord, 1455)
	MisResultCondition( HasFlag, 1455, 19)
	MisResultAction( ClearMission, 1455)
	MisResultAction( SetRecord, 1455)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 75 )	
	TriggerAction( 1, AddNextFlag, 1455, 10, 10 )
	RegCurTrigger(14551)

-------------------------------------------------------������� ����� �� ��������

	DefineMission( 6130, "\221\234\231\224\236\229\237", 1456 )--�������
	MisBeginTalk( "<t>�� ����� ������ ������������ ������ �� �������� ���������. ������� ������� �������... ������� ����� �������������. ��������� ��� <b������ ������������ ������� ��������>." )
	MisBeginCondition( NoMission, 1456)
	MisBeginCondition( NoRecord, 1456)
	MisBeginCondition( HasRecord, 1455)
	MisBeginAction( AddMission, 1456)
	MisBeginAction(AddTrigger, 14561, TE_GETITEM, 854, 1)--������ ������������ ������� ��������
	MisCancelAction( ClearMission, 1456)

	MisNeed( MIS_NEED_DESP, " �������� <b������ ������������ ������� ��������> �(2185,2787)������." )
	MisNeed( MIS_NEED_ITEM, 854, 1, 10, 1)

	MisHelpTalk( "<t>�� �� ������� ��������� �����������, �� ������ �������������� ��������." )
	MisResultTalk( "<t>�������  ���� ��������������� �������� ������ � ����� ��������������." )
	MisResultCondition( HasMission, 1456)
	MisResultCondition( NoRecord, 1456)
	MisResultCondition( HasItem, 854, 1)
	MisResultAction( ClearMission, 1456)
	MisResultAction( TakeItem, 854, 1)
	MisResultAction( GiveItem, 579, 1, 4)--��������������� ��������
	MisResultAction( SetRecord, 1456)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 854)	
	TriggerAction( 1, AddNextFlag, 1456, 10, 1 )
	RegCurTrigger( 14561 )

-------------------------------------------------------�������� ������

	DefineMission( 6131, "\216\234\238\235\252\237\251\233 \228\238\234\235\224\228", 1457 )
	MisBeginTalk( "<t>�� ������ ��������� ��� ����, ������ ������������� � ������ ��� ���������� ��������... � ������� - ������ - ����, �� ������ - ����..." )
	MisBeginCondition( NoMission, 1457)
	MisBeginCondition( NoRecord, 1457)
	MisBeginCondition( HasRecord, 1456)
	MisBeginAction( AddMission, 1457)
	MisCancelAction( ClearMission, 1457)

	MisNeed( MIS_NEED_DESP, " �������� �������� � ������� ��� ���� � ������." )
	MisHelpTalk( "<t>�� ��� ����� � ���� ���������." )
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------�������� ������

	DefineMission( 6132, "\216\234\238\235\252\237\251\233 \228\238\234\235\224\228", 1457, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>��������� ������������ �������� ����� ������������ � ���� ������." )
	MisResultCondition( HasMission, 1457)
	MisResultCondition( NoRecord, 1457)
	MisResultCondition( HasItem, 579, 1)
	MisResultAction( ClearMission, 1457)
	MisResultAction( SetRecord, 1457)
	
-------------------------------------------------------�����

	DefineMission( 6133, "\207\240\232\229\236", 1458 )--�����
	MisBeginTalk( "<t>��� ��� ��� ����� - ��� ���������� �����, ��� �� ���������� ������ ���������, � ������ ���� ��������� � ����� �������, � �� ����� � ������ ��� ��� ������������� �������, �� ������ ������ �������� �� ��� �������, �� ���� ������� ����� � ���� ����� � ������� � ��� �� ������ 30 ������ �� �������� �� ������ ������." )
	MisBeginCondition( NoMission, 1458)
	MisBeginCondition( NoRecord, 1458)
	MisBeginCondition( HasRecord, 1457)
	MisBeginAction( AddMission, 1458)
	MisCancelAction( ClearMission, 1458)

	MisNeed( MIS_NEED_DESP, " �������� �� �������, �� ������� �����, �� ������ ������ ������������ �� ������ 30 ������." )

	MisHelpTalk( "<t>�� ������� �������, ��� �� �������� ������������� ������� ��� ������." )
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------�����--������� ��� ����--

	DefineMission( 6134, "\207\240\232\229\236", 1458, COMPLETE_SHOW )--�����
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>������� ��� ������������. �� ������������� ������� ������." )
	MisResultCondition( HasMission, 1458)
	MisResultCondition( NoRecord, 1463)
	MisResultCondition( HasRecord, 1458)
	MisResultCondition( CheckRightNum )
	MisResultAction( SetRecord, 1463)
	MisResultAction( SetRecord, 1458)
	MisResultAction( TakeItem, 579, 1)
	MisResultAction( GiveItem, 47, 1, 4)--������ �������
	MisResultAction( ClearMission, 1458)
	MisResultBagNeed(1)

-------------------------------------------------------�����--������� ��� ����--

	DefineMission( 6135, "\207\240\232\229\236", 1458, COMPLETE_SHOW )
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>� ���� ���� ��� ��� ��� ���� �������." )
	MisResultCondition( HasMission, 1458)
	MisResultCondition( NoRecord, 1463)
	MisResultCondition( HasRecord, 1458)
	MisResultCondition( CheckErroNum )
	MisResultAction( SetRecord, 1463)
	MisResultAction( SetRecord, 1458)
	MisResultAction( SetRecord, 1460)
	MisResultAction( TakeItem, 579, 1)
	MisResultAction( ClearMission, 1458)

-------------------------------------------------------������ ������ ��� ���������

	DefineMission( 6136, "\194\229\240\237\251\229 \228\240\243\231\252\255 \232\235\232 \239\240\229\228\224\242\229\235\232", 1464 )
	MisBeginTalk( "<t>� ���� ���� ������� ��� ���. �������� �� ������ � ������� ��� � ���������, ��� ������ ��������� ��� 10 ��������� � ������� ����." )
	MisBeginCondition( NoMission, 1464)
	MisBeginCondition( NoRecord, 1464)
	MisBeginCondition( HasRecord, 1460)
	MisBeginAction( AddMission, 1464)
	MisBeginAction(AddTrigger, 14641, TE_GETITEM, 3050, 10)--������� � ��������� ������� ����
	MisBeginAction( GiveItem, 500, 1, 4)--������
	MisCancelAction( ClearMission, 1464)
	MisBeginBagNeed(1)

	MisNeed( MIS_NEED_DESP, " ��������� 10 ��������� � ��������� ������� ���� � ������� � ��� ������ �� ������� ��� ����." )
	MisHelpTalk( "<t>����� ��������� � ������� ���� " )
	
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------������ ������ ��� ���������

	DefineMission( 6137, "\194\229\240\237\251\229 \228\240\243\231\252\255 \232\235\232 \239\240\229\228\224\242\229\235\232", 1464, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>�� ������ ���� ����� �� ������ �� ���������� � �� ������ �� ��, ��� � ���� ���� �����. � ����� �� ��� ��������� �������� ������." )
	MisResultCondition( HasMission, 1464)
	MisResultCondition( NoRecord, 1464)
	MisResultCondition( HasRecord, 1465)
	MisResultCondition( HasItem, 500, 1)
	MisResultCondition( HasItem, 3050, 10)
	MisResultAction( SetRecord, 1464)
	MisResultAction( TakeItem, 500, 1)----������
	MisResultAction( TakeItem, 3050, 10)--������� � ��.��.����
	MisResultAction( ClearMission, 1464)
	MisResultAction( GiveItem, 6948, 1, 4)--������ ��������� �����������
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3050)	
	TriggerAction( 1, AddNextFlag, 1464, 10, 10 )
	RegCurTrigger( 14641 )

	-----------------------------------------������� ��������� ������-- ��������--����������

	DefineMission( 5800, "\205\229\230\237\238\241\242\252 \208\224\234\224", 1470 )--�������� ����
	
	MisBeginTalk( "<t>��з������,����˼�,����ҵ����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������?" )

	MisBeginCondition(NoMission,1470)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1470)
	MisBeginAction(AddMission,1470)
	MisCancelAction(ClearMission, 1470)
	
	MisNeed(MIS_NEED_DESP, "���80���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>��ΪӢ�۵ĵ�·�ϱض����������谭,ս��������Ƭ�̶����ܶ�ʧŶ.Ͷ��ȫ��ȥս����!")

	MisResultCondition(HasMission, 1470)
	MisResultCondition(NoRecord,1470)
	MisResultCondition(HasFightingPoint,80 )
	MisResultAction(TakeFightingPoint, 80 )
	MisResultAction(ClearMission, 1470)
	MisResultAction(SetRecord,  1470 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------����Ӣ��----------����������������	--------ˮ��
	DefineMission (5801, "�����з֮����Ӣ��", 1471)
	
	MisBeginTalk("<t>��Ŀ�����׷��,��׷����гɾ�.���������з�������Ҫ��Ҳ����һЩ. ")

	MisBeginCondition(NoMission,1471)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1471)
	MisBeginAction(AddMission,1471)
	MisCancelAction(ClearMission, 1471)
	
	MisNeed(MIS_NEED_DESP, "���3000����������")
	MisHelpTalk("<t>������õ�������������Ŷ,����3000������������˵Ӧ�ò��������? ")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1471)
	MisResultCondition(NoRecord,1471)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit, 3000 )
	MisResultAction(ClearMission, 1471)
	MisResultAction(SetRecord,  1471 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------�ȼ�Ӣ��----------����������������	---------ˮ��
	DefineMission (5802, "�����з֮�ȼ�Ӣ��", 1472)
	
	MisBeginTalk("<t>�ɳ��ĵ�·�������ͼ�����,���Ǹ���һ�����лر�Ŷ,���ҿ������ջ���ʲô��...")

	MisBeginCondition(NoMission,1472)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1472)
	MisBeginAction(AddMission,1472)
	MisCancelAction(ClearMission, 1472)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ65��")
	MisHelpTalk("<t>��Ȼ,65��������˵��������.")
	MisResultTalk("<t>�������Ѿ������˳ɳ���ĥ��,�ջ���Ŷ,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1472)
	MisResultCondition(NoRecord,1472)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1472)
	MisResultAction(SetRecord,  1472 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------����Ӣ��----------����������������	----------ˮ��
	DefineMission (5803, "�����з֮����Ӣ��", 1473)
	
	MisBeginTalk("<t>�װ�������,��һ�������Ҫ֪��,������������Ҫ�ľ�������!����Ϊ�˸���һ��Ӯ����,��һ��Ҫ�̳���ȥ.")

	MisBeginCondition(NoMission,1473)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1473)
	MisBeginAction(AddMission,1473)
	MisCancelAction(ClearMission, 1473)
	
	MisNeed(MIS_NEED_DESP, "���600����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ��������֮��.")

	MisResultCondition(HasMission, 1473)
	MisResultCondition(NoRecord,1473)
	MisResultCondition(HasHonorPoint,600 )
	MisResultAction(TakeHonorPoint, 600 )
	MisResultAction(ClearMission, 1473)
	MisResultAction(SetRecord,  1473 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	

	-------------------------------------------------�ɼ���ʹ----------����������������	----------ˮ��	
	DefineMission (5804, "�����з֮�ɼ���ʹ", 1474)
	
	MisBeginTalk("<t>�ɹ�����Ҫƽʱ�Ļ��۵�Ŷ!������Ҳ�ǹؼ�.��������Ҫ��ȥ�ռ�һЩ����... ")

	MisBeginCondition(NoMission,1474)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1474)
	MisBeginAction(AddMission,1474)
	MisBeginAction(AddTrigger, 14741, TE_GETITEM, 1693, 10 )-------------------Ы��10��
	MisBeginAction(AddTrigger, 14742, TE_GETITEM, 2677, 10 )-------------------����LV1 10          
	MisBeginAction(AddTrigger, 14743, TE_GETITEM, 3909, 1 )-----------------ʳ��ˮ��1               
	MisBeginAction(AddTrigger, 14744, TE_GETITEM, 2589, 5 )----------------��������ӡ5               
	MisBeginAction(AddTrigger, 14745, TE_GETITEM, 3094, 5)------------------Ŭ��������5            
	MisBeginAction(AddTrigger, 14746, TE_GETITEM, 3827, 1 )-----------------��֮��1             
	MisCancelAction(ClearMission, 1474)
	

	MisNeed(MIS_NEED_ITEM, 1693, 10,  1, 10 )
	MisNeed(MIS_NEED_ITEM, 2677, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3909, 1,  21, 1 )
	MisNeed(MIS_NEED_ITEM, 2589, 5,  22, 5 )
	MisNeed(MIS_NEED_ITEM, 3094, 5,  27, 5 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  32, 1 )
	

	MisHelpTalk("<t>��Ҫ�Ķ������Ǻܶ�,����Ҳ������ô����Ŷ.")
	MisResultTalk("<t>�ﵽ��ʱ�����ٰ�,���۵Ĺ�����Ȼ�Ƚ��鷳,�������Ҫ����������,ϸ�Ļ��ۺ͹۲춼�ǲ���ȱ�ٵ�Ŷ,��Ȼ,���г�ǿ�����ĺ�����!")

	MisResultCondition(HasMission, 1474)
	MisResultCondition(NoRecord,1474)
	MisResultCondition(HasItem, 1693, 10 )
	MisResultCondition(HasItem, 2677, 10 )
	MisResultCondition(HasItem, 3909, 1 )
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 3094, 5 )
	MisResultCondition(HasItem, 3827, 1 )


	MisResultAction(TakeItem, 1693, 10 )
	MisResultAction(TakeItem, 2677, 10 )
	MisResultAction(TakeItem, 3909, 1 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 3094, 5 )
	MisResultAction(TakeItem, 3827, 1 )

	MisResultAction(ClearMission, 1474)
	MisResultAction(SetRecord,  1474 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1474, 1, 10 )
	RegCurTrigger( 14741 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1474, 11, 10 )
	RegCurTrigger( 14742 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1474, 21, 1 )
	RegCurTrigger( 14743 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1474, 22, 5 )
	RegCurTrigger( 14744 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1474, 27, 5 )
	RegCurTrigger( 14745 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1474,32, 1 )
	RegCurTrigger( 14746 )

	----------------------------------------------------------��зĩ��----------����������������
	DefineMission( 5805, "�����з֮��зĩ��", 1475 )
	MisBeginTalk("<t>BOSSѫ�������Ӣ��������ζ�Ľ���,��Ҫ�Ļ���ȥɱ�����µľ�з���ػ���.")
				
	MisBeginCondition(NoMission, 1475)
	MisBeginCondition(HasRecord,1469)
	MisBeginCondition(NoRecord,1475)
	MisBeginAction(AddMission,1475)
	MisBeginAction(AddTrigger, 14751, TE_KILL, 1040, 1)---��з�ػ���
	
	MisCancelAction(ClearMission, 1475)

	MisNeed(MIS_NEED_DESP, "��ɱ��з���ػ���,ħŮ֮��(1637,3751)!")
	MisNeed(MIS_NEED_KILL, 1040,1, 10, 1)
	

	MisResultTalk("<t>���˺��з��Ͻ��ǿ��µ�����.����Ұ���������һ����ª!")
	MisHelpTalk("<t>�ǹ���ӵ��ǿ�����Ĵ�ǯ�Ͷ��ĵ���ĭŶ,��ҪС��.")
	MisResultCondition(HasMission,  1475)
	MisResultCondition(HasFlag, 1475, 10)
	MisResultCondition(NoRecord , 1475)
	MisResultAction(GiveItem, 2574, 1, 4 )
	MisResultAction(ClearMission,  1475)
	MisResultAction(SetRecord,  1475 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1040)	
	TriggerAction( 1, AddNextFlag, 1475, 10, 1 )
	RegCurTrigger( 14751 )


	-----------------------------------------�Ҷ�Ӣ��----------����������������--------����
	DefineMission (5806, "�����з֮�Ҷ�Ӣ��", 1476)
	
	MisBeginTalk("<t>��з������,����˼�,����ҵ����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������?")

	MisBeginCondition(NoMission,1476)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1476)
	MisBeginAction(AddMission,1476)
	MisCancelAction(ClearMission, 1476)
	
	MisNeed(MIS_NEED_DESP, "���150���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>��ΪӢ�۵ĵ�·�ϱض����������谭,ս��������Ƭ�̶����ܶ�ʧŶ.Ͷ��ȫ��ȥս����!")

	MisResultCondition(HasMission, 1476)
	MisResultCondition(NoRecord,1476)
	MisResultCondition(HasFightingPoint,150 )
	MisResultAction(TakeFightingPoint, 150 )
	MisResultAction(ClearMission, 1476)
	MisResultAction(SetRecord,  1476 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------����Ӣ��----------����������������	--------����
	DefineMission (5807, "�����з֮����Ӣ��", 1477)
	
	MisBeginTalk("<t>��Ŀ�����׷��,��׷����гɾ�.���������з�������Ҫ��Ҳ����һЩ. ")

	MisBeginCondition(NoMission,1477)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1477)
	MisBeginAction(AddMission,1477)
	MisCancelAction(ClearMission, 1477)
	
	MisNeed(MIS_NEED_DESP, "���6000����������")
	MisHelpTalk("<t>������õ�������������Ŷ,����6000������������˵Ӧ�ò��������? ")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1477)
	MisResultCondition(NoRecord,1477)
	MisResultCondition(HasCredit,6000 )
	MisResultAction(TakeCredit, 6000 )
	MisResultAction(ClearMission, 1477)
	MisResultAction(SetRecord,  1477 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------����������������	---------����
	DefineMission (5808, "�����з֮�ȼ�Ӣ��", 1600)
	
	MisBeginTalk("<t>�ɳ��ĵ�·�������ͼ�����,���Ǹ���һ�����лر�Ŷ,���ҿ������ջ���ʲô��...")

	MisBeginCondition(NoMission,1600)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1600)
	MisBeginAction(AddMission,1600)
	MisCancelAction(ClearMission, 1600)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ70��")
	MisHelpTalk("<t>��Ȼ,70��������˵��������.")
	MisResultTalk("<t>�������Ѿ������˳ɳ���ĥ��,�ջ���Ŷ,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1600)
	MisResultCondition(NoRecord,1600)
	MisResultCondition(LvCheck, ">", 69 )
	MisResultAction(ClearMission, 1600)
	MisResultAction(SetRecord,  1600 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------����������������	----------����
	DefineMission (5809, "�����з֮����Ӣ��", 1479)
	
	MisBeginTalk("<t>�װ�������,��һ�������Ҫ֪��,������������Ҫ�ľ�������!����Ϊ�˸���һ��Ӯ����,��һ��Ҫ�̳���ȥ.")

	MisBeginCondition(NoMission,1479)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1479)
	MisBeginAction(AddMission,1479)
	MisCancelAction(ClearMission, 1479)
	
	MisNeed(MIS_NEED_DESP, "���900����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ��������֮��.")

	MisResultCondition(HasMission, 1479)
	MisResultCondition(NoRecord,1479)
	MisResultCondition(HasHonorPoint,900 )
	MisResultAction(TakeHonorPoint, 900 )
	MisResultAction(ClearMission, 1479)
	MisResultAction(SetRecord,  1479 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	

	-------------------------------------------------�ɼ���ʹ----------����������������	----------����	
	DefineMission (5810, "�����з֮�ɼ���ʹ", 1480)
	
	MisBeginTalk("<t>�ɹ�����Ҫƽʱ�Ļ��۵�Ŷ!������Ҳ�ǹؼ�.��������Ҫ��ȥ�ռ�һЩ����... ")

	MisBeginCondition(NoMission,1480)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1480)
	MisBeginAction(AddMission,1480)
	MisBeginAction(AddTrigger, 14801, TE_GETITEM, 1693, 20 )-------------------Ы��20��
	MisBeginAction(AddTrigger, 14802, TE_GETITEM, 2677, 20 )-------------------����LV1 20��          
	MisBeginAction(AddTrigger, 14803, TE_GETITEM, 3909, 5 )-----------------ʳ��ˮ��5��               
	MisBeginAction(AddTrigger, 14804, TE_GETITEM, 2589, 5 )----------------��������ӡ5               
	MisBeginAction(AddTrigger, 14805, TE_GETITEM, 3094, 10)------------------Ŭ��������10��         
	MisBeginAction(AddTrigger, 14806, TE_GETITEM, 3827, 1 )-----------------��֮��1     
	MisBeginAction(AddTrigger, 14807, TE_GETITEM, 0271, 1 )-----------------��ʹ����1��         
	MisCancelAction(ClearMission, 1480)
	

	MisNeed(MIS_NEED_ITEM, 1693, 20,  1, 20 )
	MisNeed(MIS_NEED_ITEM, 2677, 20, 21, 20 )
	MisNeed(MIS_NEED_ITEM, 3909, 5,  41, 5 )
	MisNeed(MIS_NEED_ITEM, 2589, 5,  46, 5 )
	MisNeed(MIS_NEED_ITEM, 3094, 10, 51, 10 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  61, 1 )
	MisNeed(MIS_NEED_ITEM, 0271, 1,  62, 1 )

	MisHelpTalk("<t>��Ҫ�Ķ������Ǻܶ�,����Ҳ������ô����Ŷ.")
	MisResultTalk("<t>�ﵽ��ʱ�����ٰ�,���۵Ĺ�����Ȼ�Ƚ��鷳,�������Ҫ����������,ϸ�Ļ��ۺ͹۲춼�ǲ���ȱ�ٵ�Ŷ,��Ȼ,���г�ǿ�����ĺ�����!")

	MisResultCondition(HasMission, 1480)
	MisResultCondition(NoRecord,1480)
	MisResultCondition(HasItem, 1693, 20 )
	MisResultCondition(HasItem, 2677, 20 )
	MisResultCondition(HasItem, 3909, 5 )
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 3094, 10 )
	MisResultCondition(HasItem, 3827, 1 )
	MisResultCondition(HasItem, 0271, 1 )

	MisResultAction(TakeItem, 1693, 20 )
	MisResultAction(TakeItem, 2677, 20 )
	MisResultAction(TakeItem, 3909, 5 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 3094, 10 )
	MisResultAction(TakeItem, 3827, 1 )
	MisResultAction(TakeItem, 0271, 1 )

	MisResultAction(ClearMission, 1480)
	MisResultAction(SetRecord,  1480 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1480, 1, 20 )
	RegCurTrigger( 14801 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1480, 21, 20 )
	RegCurTrigger( 14802 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1480, 41, 5 )
	RegCurTrigger( 14803 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1480, 46, 5 )
	RegCurTrigger( 14804 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1480, 51, 10 )
	RegCurTrigger( 14805 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1480,61, 1 )
	RegCurTrigger( 14806 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0271)	
	TriggerAction( 1, AddNextFlag, 1480,62, 1 )
	RegCurTrigger( 14807 )


	-----------------------------------------�Ҷ�Ӣ��----------����������������--------����
	DefineMission (5811, "�����з֮�Ҷ�Ӣ��", 1481)
	
	MisBeginTalk("<t>��з������,����˼�,����ҵ����Ҳ���ܱ��ֳ��Լ��Ĳ���.������������λ�������?")

	MisBeginCondition(NoMission,1481)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1481)
	MisBeginAction(AddMission,1481)
	MisCancelAction(ClearMission, 1481)
	
	MisNeed(MIS_NEED_DESP, "���200���Ҷ�����")
	MisHelpTalk("<t>�Ҷ��������Դ��Ҷ��������!")
	MisResultTalk("<t>��ΪӢ�۵ĵ�·�ϱض����������谭,ս��������Ƭ�̶����ܶ�ʧŶ.Ͷ��ȫ��ȥս����!")

	MisResultCondition(HasMission, 1481)
	MisResultCondition(NoRecord,1481)
	MisResultCondition(HasFightingPoint,200 )
	MisResultAction(TakeFightingPoint, 200 )
	MisResultAction(ClearMission, 1481)
	MisResultAction(SetRecord,  1481 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------����������������	--------����
	DefineMission (5812, "�����з֮����Ӣ��", 1482)
	
	MisBeginTalk("<t>��Ŀ�����׷��,��׷����гɾ�.���������з�������Ҫ��Ҳ����һЩ. ")

	MisBeginCondition(NoMission,1482)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1482)
	MisBeginAction(AddMission,1482)
	MisCancelAction(ClearMission, 1482)
	
	MisNeed(MIS_NEED_DESP, "���10000����������")
	MisHelpTalk("<t>������õ�������������Ŷ,����10000������������˵Ӧ�ò��������? ")
	MisResultTalk("<t>��ö����ѫ����������֤Ӣ�۵�.")

	MisResultCondition(HasMission, 1482)
	MisResultCondition(NoRecord,1482)
	MisResultCondition(HasCredit,10000 )
	MisResultAction(TakeCredit, 10000 )
	MisResultAction(ClearMission, 1482)
	MisResultAction(SetRecord,  1482 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ȼ�Ӣ��----------����������������	---------����
	DefineMission (5813, "�����з֮�ȼ�Ӣ��", 1483)
	
	MisBeginTalk("<t>�ɳ��ĵ�·�������ͼ�����,���Ǹ���һ�����лر�Ŷ,���ҿ������ջ���ʲô��...")

	MisBeginCondition(NoMission,1483)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1483)
	MisBeginAction(AddMission,1483)
	MisCancelAction(ClearMission, 1483)
	
	MisNeed(MIS_NEED_DESP, "�ȼ��ﵽ75��")
	MisHelpTalk("<t>��Ȼ,75��������˵��������.")
	MisResultTalk("<t>�������Ѿ������˳ɳ���ĥ��,�ջ���Ŷ,��ö�ȼ�ѫ���������.")

	MisResultCondition(HasMission, 1483)
	MisResultCondition(NoRecord,1483)
	MisResultCondition(LvCheck, ">", 74 )
	MisResultAction(ClearMission, 1483)
	MisResultAction(SetRecord,  1483 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------����Ӣ��----------����������������	----------����
	DefineMission (5814, "�����з֮����Ӣ��", 1484)
	
	MisBeginTalk("<t>�װ�������,��һ�������Ҫ֪��,������������Ҫ�ľ�������!����Ϊ�˸���һ��Ӯ����,��һ��Ҫ�̳���ȥ.")

	MisBeginCondition(NoMission,1484)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1484)
	MisBeginAction(AddMission,1484)
	MisCancelAction(ClearMission, 1484)
	
	MisNeed(MIS_NEED_DESP, "���1200����������")
	MisHelpTalk("<t>ȥΪ������ս��!")
	MisResultTalk("<t>���Ǹ��ܲ��������֮��.")

	MisResultCondition(HasMission, 1484)
	MisResultCondition(NoRecord,1484)
	MisResultCondition(HasHonorPoint,1200 )
	MisResultAction(TakeHonorPoint, 1200 )
	MisResultAction(ClearMission, 1484)
	MisResultAction(SetRecord,  1484 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	


	-------------------------------------------------�ɼ���ʹ----------����������������	----------����	
	DefineMission (5815, "�����з֮�ɼ���ʹ", 1485)
	
	MisBeginTalk("<t>�ɹ�����Ҫƽʱ�Ļ��۵�Ŷ!������Ҳ�ǹؼ�.��������Ҫ��ȥ�ռ�һЩ����... ")

	MisBeginCondition(NoMission,1485)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1485)
	MisBeginAction(AddMission,1485)
	MisBeginAction(AddTrigger, 14851, TE_GETITEM, 1693, 30 )-------------------Ы��30��
	MisBeginAction(AddTrigger, 14852, TE_GETITEM, 2677, 30 )-------------------����LV1 30��          
	MisBeginAction(AddTrigger, 14853, TE_GETITEM, 3909, 10 )-----------------ʳ��ˮ��10��               
	MisBeginAction(AddTrigger, 14854, TE_GETITEM, 2589, 10 )----------------��������ӡ10               
	MisBeginAction(AddTrigger, 14855, TE_GETITEM, 3094, 20)------------------Ŭ��������20��         
	MisBeginAction(AddTrigger, 14856, TE_GETITEM, 3827, 1 )-----------------��֮��1     
	MisBeginAction(AddTrigger, 14857, TE_GETITEM, 0271, 2 )-----------------��ʹ����2��         
	MisCancelAction(ClearMission, 1485)
	

	MisNeed(MIS_NEED_ITEM, 1693, 30,  1, 30 )
	MisNeed(MIS_NEED_ITEM, 2677, 30, 31, 30 )
	MisNeed(MIS_NEED_ITEM, 3909, 10, 61, 10 )
	MisNeed(MIS_NEED_ITEM, 2589, 10, 71, 10 )
	MisNeed(MIS_NEED_ITEM, 3094, 20, 81, 20 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  101, 1 )
	MisNeed(MIS_NEED_ITEM, 0271, 2,  102, 2 )

	MisHelpTalk("<t>��Ҫ�Ķ������Ǻܶ�,����Ҳ������ô����Ŷ.")
	MisResultTalk("<t>�ﵽ��ʱ�����ٰ�,���۵Ĺ�����Ȼ�Ƚ��鷳,�������Ҫ����������,ϸ�Ļ��ۺ͹۲춼�ǲ���ȱ�ٵ�Ŷ,��Ȼ,���г�ǿ�����ĺ�����!")

	MisResultCondition(HasMission, 1485)
	MisResultCondition(NoRecord,1485)
	MisResultCondition(HasItem, 1693, 30 )
	MisResultCondition(HasItem, 2677, 30 )
	MisResultCondition(HasItem, 3909, 10 )
	MisResultCondition(HasItem, 2589, 10 )
	MisResultCondition(HasItem, 3094, 20 )
	MisResultCondition(HasItem, 3827, 1 )
	MisResultCondition(HasItem, 0271, 2 )

	MisResultAction(TakeItem, 1693, 30 )
	MisResultAction(TakeItem, 2677, 30 )
	MisResultAction(TakeItem, 3909, 10 )
	MisResultAction(TakeItem, 2589, 10 )
	MisResultAction(TakeItem, 3094, 20 )
	MisResultAction(TakeItem, 3827, 1 )
	MisResultAction(TakeItem, 0271, 2 )

	MisResultAction(ClearMission, 1485)
	MisResultAction(SetRecord,  1485 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1485, 1, 30 )
	RegCurTrigger( 14851 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1485, 31, 30 )
	RegCurTrigger( 14852 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1485, 61, 10 )
	RegCurTrigger( 14853 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1485, 71, 10 )
	RegCurTrigger( 14854 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1485, 81, 20 )
	RegCurTrigger( 14855 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1485,101, 1 )
	RegCurTrigger( 14856 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0271)	
	TriggerAction( 1, AddNextFlag, 1485,102, 2 )
	RegCurTrigger( 14857 )


	----------------------------------------------------------�罻��ʹ----------����������������
	DefineMission( 5816, "�罻��ʹ1", 1486 )
	MisBeginTalk("<t>�ɹ����˻���Ҫ�г�ɫ���罻����Ŷ,������,���ѱ鼰��������,�������ں��¹���ķ�æ,�Ҷ��þ�û���ʺ�������,�������Ҫ̽��ѫ�¾������ʺ����ǰ�.")
				
	MisBeginCondition(NoMission, 1486)
	MisBeginCondition(NoRecord,1486)
	MisBeginCondition(HasRecord, 1469)
	MisBeginAction(AddMission,1486)
	MisCancelAction(ClearMission, 1486)

	MisNeed(MIS_NEED_DESP, "�Ҵ����������������(3316,2516)����")
	
	MisHelpTalk("<t>��ȥ��,���Ȳ��������������Һ���������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ-----------------����������

	DefineMission(5817, "�罻��ʹ1", 1486, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����������������?����,��ĺþö�û�м�������,��һ�����ǵ��ҳ�ɫ�����հ�.")
	MisResultCondition(NoRecord, 1486)
	MisResultCondition(HasMission,1486)
	MisResultAction(ClearMission,1486)
	MisResultAction(SetRecord, 1486)

	----------------------------------------------------------�罻��ʹ2----------����������
	DefineMission( 5818, "�罻��ʹ2", 1487 )
	MisBeginTalk("<t>��һֱ�ǳ�����������,������������Ϊ�Լ��ĵ�λ������,�����������Ѻܶ�Ŷ,��Ů���ҵ�����һ�����ҽ�ʶ��λ�ɰ���Ůʿ��.")
				
	MisBeginCondition(NoMission, 1487)
	MisBeginCondition(NoRecord,1487)
	MisBeginCondition(HasRecord, 1486)
	MisBeginAction(AddMission,1487)
	MisCancelAction(ClearMission, 1487)

	MisNeed(MIS_NEED_DESP, "�Ҵ�����Ŀ�ջ�ϰ塤��Ů(3302,2501)����")
	
	MisHelpTalk("<t>��ʱ��ӭ�������������������켫Ʒװ��Ŷ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ2-------------��ջ�ϰ塤��Ů
	DefineMission(5819, "�罻��ʹ2", 1487, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���,������,��Ҫס����?")
	MisResultCondition(NoRecord, 1487)
	MisResultCondition(HasMission,1487)
	MisResultAction(ClearMission,1487)
	MisResultAction(SetRecord, 1487)

	----------------------------------------------------------�罻��ʹ3----------��ջ�ϰ塤��Ů
	DefineMission( 5820, "�罻��ʹ3", 1488 )
	MisBeginTalk("<t>����ʶ������?̫����,�����ҵ�����!���ǵ�������żȻ�����ҵĿ�ջʱ���龰��,����ˬ���Ը������Ǻܿ��Ϊ������.���ǻ�������ǣ��ȥ�ӻ����ˡ�³�ȶ����ﹺ����!")
				
	MisBeginCondition(NoMission, 1488)
	MisBeginCondition(NoRecord,1488)
	MisBeginCondition(HasRecord, 1487)
	MisBeginAction(AddMission,1488)
	MisCancelAction(ClearMission, 1488)

	MisNeed(MIS_NEED_DESP, "�Ҵ�������ӻ����ˡ�³�ȶ�(3279,2501)����")
	
	MisHelpTalk("<t>³�ȶ���һ������������,��������,�Ǻ�..")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ3--------�ӻ����ˡ�³�ȶ�
	DefineMission(5821, "�罻��ʹ3", 1488, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��Ů�����������ﹺ��,��ϧ�ܾ�û�п�������������һ������Ŷ,�Һ���������,������ٴι���,��һ�����������ۿ�.")
	MisResultCondition(NoRecord, 1488)
	MisResultCondition(HasMission,1488)
	MisResultAction(ClearMission,1488)
	MisResultAction(SetRecord, 1488)

	----------------------------------------------------------�罻��ʹ4----------�ӻ����ˡ�³�ȶ�
	DefineMission( 5822, "�罻��ʹ4", 1489 )
	MisBeginTalk("<t>�Ǵ�����Ұ������,��������˿��µĺ�������˹,����Ϊ�Ҿ���������!�������Ⱦ�����!������Ȼ������˹������������,���ҵ�������������.")
				
	MisBeginCondition(NoMission, 1489)
	MisBeginCondition(NoRecord,  1489)
	MisBeginCondition(HasRecord, 1488)
	MisBeginAction(AddMission, 1489)
	MisCancelAction(ClearMission, 1489)

	MisNeed(MIS_NEED_DESP, "�Ҽ�į֮���Ļ���˹(513,269)����")
	
	MisHelpTalk("<t>��������ĺ�����ҪС��Ŷ,�����Σ�վ�˵���������ȵ�����!")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ4--------����˹
	DefineMission(5823, "�罻��ʹ4", 1489, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ߺ�,С���������İ�?Ҫ�����·,��������Ǯ!��...���������ȵ����Ѱ�.����Ҷ�û��ʲô����,�Ҽ����Ѿ�Ҫ�����ҵĺ���������.")
	MisResultCondition(NoRecord, 1489)
	MisResultCondition(HasMission,1489)
	MisResultAction(ClearMission,1489)
	MisResultAction(SetRecord, 1489)


	----------------------------------------------------------�罻��ʹ5----------����˹
	DefineMission( 5824, "�罻��ʹ5", 1490 )
	MisBeginTalk("<t>��Ȼ��Ϊ����,�����Ҳ��ò����������ȵĵ�ʶ���ǻ�,Ϊ���������������һ��Σ��,������Ϊ������صľ���������!�ٺ�.��ʱ�����?�����ȥ���Ǹ�ó������.")
				
	MisBeginCondition(NoMission, 1490)
	MisBeginCondition(NoRecord,  1490)
	MisBeginCondition(HasRecord, 1489)
	MisBeginAction(AddMission,1490)
	MisCancelAction(ClearMission, 1490)

	MisNeed(MIS_NEED_DESP, "�Ҵ������ó�����ˡ�����(3195,2506)����")
	
	MisHelpTalk("<t>ó�����ˡ������Ǹ�ϲ��ˣС����������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ5--------ó�����ˡ�����
	DefineMission(5825, "�罻��ʹ5", 1490, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�ȿ�,��������������Ҫ�͸�������򽻵�,�ر����񺣵������Ľ�ɫ,��ȻҪͷ�������,�Ǹ�����ˣС������?")
	MisResultCondition(NoRecord, 1490)
	MisResultCondition(HasMission,1490)
	MisResultAction(ClearMission,1490)
	MisResultAction(SetRecord, 1490)


	----------------------------------------------------------�罻��ʹ6----------ó�����ˡ�����
	DefineMission( 5826, "�罻��ʹ6", 1491)
	MisBeginTalk("<t>˵���Ǵξ���,���ǿ���!���˵�����Ҳ�õ��������ȵİ���,�Ű����˺����ľ���,���������еļҵ���������!��ʱ���ǿɶ����ŷ�����������!�����Ⱦ�����,���ô���ʹ���������ҵ��˰�ȫ�ĵط�,�Լ����������ô�໵��.")
				
	MisBeginCondition(NoMission, 1491)
	MisBeginCondition(NoRecord,1491)
	MisBeginCondition(HasRecord, 1490)
	MisBeginAction(AddMission,1491)
	MisCancelAction(ClearMission, 1491)

	MisNeed(MIS_NEED_DESP, "�Ҵ���ʹ������(3326,2511)����")
	
	MisHelpTalk("<t>����Ҳ�������ȵ�������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ6--------����ʹ������
	DefineMission(5827, "�罻��ʹ6", 1491, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���,�����˻�ʹ�Լ�Ҳ��ÿ���Ŷ.")
	MisResultCondition(NoRecord, 1491)
	MisResultCondition(HasMission,1491)
	MisResultAction(ClearMission,1491)
	MisResultAction(SetRecord, 1491)


	----------------------------------------------------------�罻��ʹ7----------����ʹ������
	DefineMission( 5828, "�罻��ʹ7", 1492 )
	MisBeginTalk("<t>�Ǵ�����������ĵ�ȷ����.�Ҵ�����������ѧ��������Ϊ��,������������Ǽ��ܿ��ֵ�������,�л����һ�Ҫ��������ѧ�����ණ��!��˵����������������Ҳ�������ȽӴ���.")
				
	MisBeginCondition(NoMission, 1492)
	MisBeginCondition(NoRecord,1492)
	MisBeginCondition(HasRecord, 1491)
	MisBeginAction(AddMission,1492)
	MisCancelAction(ClearMission, 1492)

	MisNeed(MIS_NEED_DESP, "�Ҵ����������������������(3262,2502)����")
	
	MisHelpTalk("<t>������������������ǰ�Ǹ�ֻ�������˵���.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ7--------����������������
	DefineMission(5829, "�罻��ʹ7", 1492, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����ǰ��ȷ�Ǹ�ֻ�������˵���,����������ʹ�������������ǿ��Կ��Լ��ı��,�����ڸ���������Ϊ���ô�ҷ�����δȻ,�����Լ����õ�δ��.")
	MisResultCondition(NoRecord, 1492)
	MisResultCondition(HasMission,1492)
	MisResultAction(ClearMission,1492)
	MisResultAction(SetRecord, 1492)


	----------------------------------------------------------�罻��ʹ8----------����������������
	DefineMission( 5830, "�罻��ʹ8", 1493 )
	MisBeginTalk("<t>�ϴθ��Ƶ��ϰ塤���������ʱ��,�Ҹ��������й�������,û�뵽���������������Ĺ��˾���������!�Ǻ�.")
				
	MisBeginCondition(NoMission, 1493)
	MisBeginCondition(NoRecord,  1493)
	MisBeginCondition(HasRecord, 1492)
	MisBeginAction(AddMission,1493)
	MisCancelAction(ClearMission, 1493)

	MisNeed(MIS_NEED_DESP, "�ҾƵ��ϰ塤���(3287,2501)����")
	
	MisHelpTalk("<t>�������������ʺ�!")
	MisResultCondition(AlwaysFailure)
	
	-----------------------------------------�罻��ʹ8--------�Ƶ��ϰ塤���
	DefineMission(5831, "�罻��ʹ8", 1493, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�����������ҵĹ���,��ʱ���ǾƵ�����Ⲣ����ô��,��֪��,����ֻ��һ��С��,�����������Ƚ����˺ܶ����е����������.")
	MisResultCondition(NoRecord, 1493)
	MisResultCondition(HasMission,1493)
	MisResultAction(ClearMission,1493)
	MisResultAction(SetRecord, 1493)


	----------------------------------------------------------�罻��ʹ9----------�Ƶ��ϰ塤���
	DefineMission( 5832, "�罻��ʹ9", 1494 )
	MisBeginTalk("<t>�Ǵ������������Ҹۿ�ָ�ӡ�˪��̸���µ�....")
				
	MisBeginCondition(NoMission, 1494)
	MisBeginCondition(NoRecord,  1494)
	MisBeginCondition(HasRecord, 1493)
	MisBeginAction(AddMission,1494)
	MisCancelAction(ClearMission, 1494)

	MisNeed(MIS_NEED_DESP, "�Ҹۿ�ָ�ӡ�˪��(3409,2560)����")
	
	MisHelpTalk("<t>�ۿ�ָ�ӡ�˪���Ǹ�����ְ�ص���.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ9--------�ۿ�ָ�ӡ�˪��
	DefineMission(5833, "�罻��ʹ9", 1494, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��ӭ������������,������Ȼ��С��,����������˶��ܺÿ�Ŷ!�������ϴι��������Ӳ�����Ĺ�����.")
	MisResultCondition(NoRecord, 1494)
	MisResultCondition(HasMission,1494)
	MisResultAction(ClearMission,1494)
	MisResultAction(SetRecord, 1494)

	----------------------------------------------------------�罻��ʹ10----------�ۿ�ָ�ӡ�˪��
	DefineMission( 5834, "�罻��ʹ10", 1495 )
	MisBeginTalk("<t>����������һ������,һ�㶼û�и߸����ϵļ���,�����ҵĹ��������˿϶�,̫���˸�����.���������ܹ���������,��������ȥο������������Ǯ��.")
				
	MisBeginCondition(NoMission, 1495)
	MisBeginCondition(NoRecord, 1495)
	MisBeginCondition(HasRecord, 1494)
	MisBeginAction(AddMission, 1495)
	MisCancelAction(ClearMission, 1495)

	MisNeed(MIS_NEED_DESP, "����������Ǯ��(3303,2533)����")
	
	MisHelpTalk("<t>�����ϼ���ο�ʶ��������ǺܺõĹ����...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ10--------��������Ǯ��
	DefineMission(5835, "�罻��ʹ10", 1495, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��ã�����Զ���������ÿͰ�.����ʶ������?����,������С��������������Ŷ!̫�Ҹ���!")
	MisResultCondition(NoRecord, 1495)
	MisResultCondition(HasMission,1495)
	MisResultAction(ClearMission,1495)
	MisResultAction(SetRecord, 1495)

	----------------------------------------------------------�罻��ʹ11----------��������Ǯ��
	DefineMission( 5836, "�罻��ʹ11", 1496 )
	MisBeginTalk("<t>�������Ǹ�������������,�������ص���ο�����Һ�����֣.")
				
	MisBeginCondition(NoMission, 1496)
	MisBeginCondition(NoRecord,1496)
	MisBeginCondition(HasRecord, 1495)
	MisBeginAction(AddMission,1496)
	MisCancelAction(ClearMission, 1496)

	MisNeed(MIS_NEED_DESP, "������������֣(3298,2534)����")
	
	MisHelpTalk("<t>����֣���������ֵ�һ��,�°������������̸.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ11--------����������֣
	DefineMission(5837, "�罻��ʹ11", 1496, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�۹���,������ܸ��������ȵ�����.�����Ǯ�����������?��û��͵����.")
	MisResultCondition(NoRecord, 1496)
	MisResultCondition(HasMission,1496)
	MisResultAction(ClearMission,1496)
	MisResultAction(SetRecord, 1496)

	----------------------------------------------------------�罻��ʹ12----------����������֣
	DefineMission( 5838, "�罻��ʹ12", 1497 )
	MisBeginTalk("<t>����ֻ��СС������,�ҵĽ��ʿ��Ǻܹ����,�����ܹܡ���īҲ���ҵ�����.�ϴ�������С����ο����,���ĵ�����һЩ������Ҫ�ҵط��ķ�,��������ר���Ӳ칤��,��������ī��������С����ʶ��.")
				
	MisBeginCondition(NoMission, 1497)
	MisBeginCondition(NoRecord,1497)
	MisBeginCondition(HasRecord, 1496)
	MisBeginAction(AddMission,1497)
	MisCancelAction(ClearMission, 1497)

	MisNeed(MIS_NEED_DESP, "�������ܹܡ���ī(3290,2512)����")
	
	MisHelpTalk("<t>�����ܹܡ���ī�����½�������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ12--------�����ܹܡ���ī
	DefineMission(5839, "�罻��ʹ12", 1497, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������һ����������ֵ�����ε���,���Խ������ص���Ʒ�ķ���������,������ǧ��Ҫ���߱���Ŷ,������С���´���һ����ʮ���������ǵķ����.")
	MisResultCondition(NoRecord, 1497)
	MisResultCondition(HasMission,1497)
	MisResultAction(ClearMission,1497)
	MisResultAction(SetRecord, 1497)


	----------------------------------------------------------�罻��ʹ13----------�����ܹܡ���ī
	DefineMission( 5840, "�罻��ʹ13", 1498 )
	MisBeginTalk("<t>��Ȼ�����������Ӳ��,���Ǽ�Ȼ����������������С��,��ȻҪ�ú����������һ������ķ���������,����������������С�㵽�����.")
				
	MisBeginCondition(NoMission, 1498)
	MisBeginCondition(NoRecord,1498)
	MisBeginCondition(HasRecord, 1497)
	MisBeginAction(AddMission,1498)
	MisCancelAction(ClearMission, 1498)

	MisNeed(MIS_NEED_DESP, "���������ӡ�����(3275,2467)����")
	
	MisHelpTalk("<t>�������ӡ������Ǹ�����������С����.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ13--------�������ӡ�����
	DefineMission(5841, "�罻��ʹ13", 1498, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��,����!��ʲô���԰��������?�Һų��Ǵ�����ĵ���Ŷ.")
	MisResultCondition(NoRecord, 1498)
	MisResultCondition(HasMission,1498)
	MisResultAction(ClearMission,1498)
	MisResultAction(SetRecord, 1498)

	----------------------------------------------------------�罻��ʹ14----------�������ӡ�����
	DefineMission( 5842, "�罻��ʹ14", 1499 )
	MisBeginTalk("<t>��Ŷ,�ϴ������������Ǵ���������Һ�ˮ����������������!��˵����,��Ҳ��һ�����ʵ���,������һ����ĺ�Ͷ��.")
				
	MisBeginCondition(NoMission, 1499)
	MisBeginCondition(NoRecord,1499)
	MisBeginCondition(HasRecord, 1498)
	MisBeginAction(AddMission,1499)
	MisCancelAction(ClearMission, 1499)

	MisNeed(MIS_NEED_DESP, "������Ů�ӡ�ˮ��(3241,2533)����")
	
	MisHelpTalk("<t>��ʵ...ÿ���ܹ���ˮ����һ������һֱ������Ը��...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ14--------����Ů�ӡ�ˮ��        
	DefineMission(5843, "�罻��ʹ14", 1499, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���������������ҵ���?��...���Ǹ�����.��ʵ������ܹ�����ҵ�������ɾͲ�����������Щ,�Ǹö��.��ֻ��������˵��������뷨...")
	MisResultCondition(NoRecord, 1499)
	MisResultCondition(HasMission,1499)
	MisResultAction(ClearMission,1499)
	MisResultAction(SetRecord, 1499)

	----------------------------------------------------------�罻��ʹ15----------����Ů�ӡ�ˮ��
	DefineMission( 5844, "�罻��ʹ15", 1601 )
	MisBeginTalk("<t>������˵,�����Ⱦ���һ������һ��,��ʲô����Ը�����˵.�Һ�����Ŷ,���кö໰�����˵��.����ֻ�����ذ����ܹ�����˵˵��.")
				
	MisBeginCondition(NoMission, 1601)
	MisBeginCondition(NoRecord,1601)
	MisBeginCondition(HasRecord, 1499)
	MisBeginAction(AddMission,1601)
	MisCancelAction(ClearMission, 1601)

	MisNeed(MIS_NEED_DESP, "������Ů�ӡ�����(3265,2547)����")
	
	MisHelpTalk("<t>����,�Ǹ�����Ů��.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ15-------- ����Ů�ӡ�����
	DefineMission(5845, "�罻��ʹ15", 1601, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ˮ����СѾͷ�Ǻܶ���Ƹе�Ů��,������һֱ��߶����������,����ϣ���Լ���������һ�����.���Ǻ�ϲ�����СѾͷ,���Ծ�����������.")
	MisResultCondition(NoRecord, 1601)
	MisResultCondition(HasMission,1601)
	MisResultAction(ClearMission,1601)
	MisResultAction(SetRecord, 1601)


	----------------------------------------------------------�罻��ʹ16----------����Ů�ӡ�����
	DefineMission( 5846, "�罻��ʹ16", 1602 )
	MisBeginTalk("<t>��,����ר�������������ʺ��ҵ���?�������������İ�,лл��.����,�ȸ�Ҳ�������ȵ�����.")
				
	MisBeginCondition(NoMission, 1602)
	MisBeginCondition(NoRecord,1602)
	MisBeginCondition(HasRecord, 1601)
	MisBeginAction(AddMission,1602)
	MisCancelAction(ClearMission, 1602)

	MisNeed(MIS_NEED_DESP, "���������ӡ��ȸ�(3235,2550)����")
	
	MisHelpTalk("<t>�ȸ��Ǹ���Ȥ������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ16-------- �������ӡ��ȸ�
	DefineMission(5847, "�罻��ʹ16", 1602, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����������ɺ�?�����ȵ�΢Ц�������ϵ�̫��һ������,��������Χ���ǻ���һȺ����,�����ѡ��,�ҸҴ�������ȵĶ���֧����һ�����!")
	MisResultCondition(NoRecord, 1602)
	MisResultCondition(HasMission,1602)
	MisResultAction(ClearMission,1602)
	MisResultAction(SetRecord, 1602)


	----------------------------------------------------------�罻��ʹ17----------�������ӡ��ȸ�
	DefineMission( 5848, "�罻��ʹ17", 1502 )
	MisBeginTalk("<t>ʲô?������Ϊʲô?����Ҹ�����������������������ɽ���������ȵ����ѵĻ�,��Ӧ��û�������˰�.")
				
	MisBeginCondition(NoMission, 1502)
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 1602)
	MisBeginAction(AddMission,1502)
	MisCancelAction(ClearMission, 1502)

	MisNeed(MIS_NEED_DESP, "�Ҷ���������������ɽ(2219,3286)����")
	
	MisHelpTalk("<t>����������������ɽ�������ĺ���,�����۳Ҷ�������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ17-------- ����������������ɽ
	DefineMission(5849, "�罻��ʹ17", 1502, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������ۣ�û�뵽���������ȵ�����,˵�������Ҷ��������ž�Ȼ�ܹ��ͺ��������Ϊ����,�������Ǵ����Э��,�Ҳ���Ϯ�������ȹ�Ͻ��Χ�Ĵ�ֻ.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission,1502)
	MisResultAction(SetRecord, 1502)

	----------------------------------------------------------�罻��ʹ18----------����������������ɽ
	DefineMission( 5850, "�罻��ʹ18", 1603 )
	MisBeginTalk("<t>���������Ǻõط���,�������Ҷ����������˺��ϵķ������.����ķ��κͷ��Ͷ����Ҽ��粻һ��Ŷ,�ϴ������ȴ���ȥ������ʦ���������һ��Ī���ɷ���,����,�����!��Ȼ���Ǻ���,������Ҳ����Ҫ��װ����,�ο�������ô�����ĺ�����,������.")
				
	MisBeginCondition(NoMission, 1603)
	MisBeginCondition(NoRecord,1603)
	MisBeginCondition(HasRecord, 1502)
	MisBeginAction(AddMission,1603)
	MisCancelAction(ClearMission, 1603)

	MisNeed(MIS_NEED_DESP, "�ҳ�����ʦ(3300,2513)����")
	
	MisHelpTalk("<t>������ʦ��˼��ǰ��,��Ƴ��ڵķ������ʦ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ18-------- ������ʦ
	DefineMission(5851, "�罻��ʹ18", 1603, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����,��˵�����ϴ������ȴ������Ǹ���ֵĺ�����,�����Ҹ�����Ƶķ��ͺ������!")
	MisResultCondition(NoRecord, 1603)
	MisResultCondition(HasMission,1603)
	MisResultAction(ClearMission,1603)
	MisResultAction(SetRecord, 1603)

	----------------------------------------------------------�罻��ʹ19----------������ʦ
	DefineMission( 5852, "�罻��ʹ19", 1604 )
	MisBeginTalk("<t>��,ԭ������ר�������������ʺ��������ѵİ�,��ȥ���ۿ�ָ�ӡ�˪��������?����û��ȥ������ָ�ӡ�����������?����,�ǵ��������������ʺ�,˳���������Ϊ��ר�������һ������,�����ʺ���������!")
				
	MisBeginCondition(NoMission, 1604)
	MisBeginCondition(NoRecord,1604)
	MisBeginCondition(HasRecord, 1603)
	MisBeginAction(AddMission,1604)
	MisCancelAction(ClearMission, 1604)

	MisNeed(MIS_NEED_DESP, "�Һ���ָ�ӡ�����(3685,2652)����")
	
	MisHelpTalk("<t>����ָ�ӡ�������һ��ϲ���������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ19-------- ����ָ�ӡ�����
	DefineMission(5853, "�罻��ʹ19", 1604, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���,�������,�����˰�!��ÿ�춼���������,��...����������ʲô������?���������ȿ������ںʹ�˵����û�о������,������һ���ر����,�����ܹ���͸�ҵ���.")
	MisResultCondition(NoRecord, 1604)
	MisResultCondition(HasMission,1604)
	MisResultAction(ClearMission,1604)
	MisResultAction(SetRecord, 1604)


	----------------------------------------------------------�罻��ʹ20----------����ָ�ӡ�����
	DefineMission( 5854, "�罻��ʹ20", 1605 )
	MisBeginTalk("<t>��һֱ��Ϊ���˺���ָ�ӡ���������,û�����ܹ������Ϊʲô�Դ�˵����.����,˵������,��Ҳ�����������Ǹ��ر����,�����������Ҷ���������������,�ٺ�.")
				
	MisBeginCondition(NoMission, 1605)
	MisBeginCondition(NoRecord,1605)
	MisBeginCondition(HasRecord, 1604)
	MisBeginAction(AddMission,1605)
	MisCancelAction(ClearMission, 1605)

	MisNeed(MIS_NEED_DESP, "�Һ���ָ�ӡ�����(3337,3523)����")
	
	MisHelpTalk("<t>�����Ǹ�ӵ��Զ������ͱ����ĺ���ָ��,����û������Ϊ����Ը���ܹ�ʵ��.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻��ʹ20-------- ����ָ�ӡ�����
	DefineMission(5855, "�罻��ʹ20", 1605, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����������˰�.ʲô,����������һֱ������������?�Ǻ�,˵ʵ��,���������ܹ������������ӡ�����Ŷ.�����С��ĺ���ָ����ô������,��һ��������ͬ�ҵ�����...��Ϊ������һ���ܹ��Լ�ӵ��һ֧����ȥ�Ը����еĺ���.")
	MisResultCondition(NoRecord, 1605)
	MisResultCondition(HasMission,1605)
	MisResultAction(ClearMission,1605)
	MisResultAction(SetRecord, 1605)

	----------------------------------------------------------�罻��ʹ21----------����ָ�ӡ�����
	DefineMission( 5856, "�罻��ʹ21", 1606 )
	MisBeginTalk("<t>���Ѿ��ʺ����������������ȵ�������?���������������.ǧ��Ҫ���ǰ��ҵ�ף������������Ŷ,������ܹ�������������,��һ����һʱ��ӭ����.���Ƕ���������!����,�������������ѽ�����������������,������Ҫ�뵽����Ŷ.")
				
	MisBeginCondition(NoMission, 1606)
	MisBeginCondition(NoRecord,1606)
	MisBeginCondition(HasRecord, 1605)
	MisBeginAction(AddMission,1606)
	MisCancelAction(ClearMission, 1606)

	MisNeed(MIS_NEED_DESP, "�Ұ����Ǻ���������������(2247,2858)����")
	
	MisHelpTalk("<t>�鷳�㽫���ǵ��������������.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------�罻Ӣ��21------- ����������������
	DefineMission(5857, "�罻Ӣ��21", 1606, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����İ����ʺ��˴��������е�������,̫��л����,��Ȼ������������!��,�治֪����θ�л��,��öѫ������֮����.")
	MisResultCondition(NoRecord, 1606)
	MisResultCondition(HasMission,1606)
	MisResultAction(ClearMission,1606)
	MisResultAction(SetRecord, 1606)
	MisResultAction(GiveItem, 2573, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------�ر�����һ--------����������������
	DefineMission (5858, "��з֮�ر��ж�һ", 1607)
	
	MisBeginTalk("<t>��,��������������ĳɼ�����?�Ǻ�,����㻹���㹻�����ĵĻ�,ȥ���Ǳ���·�ˡ�����,���������ر�Ŀ���.")

	MisBeginCondition(NoMission,1607)
	MisBeginCondition(NoRecord,1607)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(HasRecord,1481)
	MisBeginCondition(HasRecord,1482)
	MisBeginCondition(HasRecord,1483)
	MisBeginCondition(HasRecord,1484)
	MisBeginCondition(HasRecord,1485)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginAction(AddMission,1607)
	MisCancelAction(ClearMission, 1607)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "�ұ��Ǳ���·�ˡ���(1335,469)����")
	MisHelpTalk("<t>Ҫ��֪����ʲô�ر�����ȴ����㣬�͸Ͽ�ȥ��·�ˡ�����.")

	MisResultCondition(AlwaysFailure)	


	-------------------------------------------------�ر�����һ--------���Ǳ���·�ˡ���
	DefineMission (5859, "��з֮�ر��ж�һ", 1607, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���Ѿ�ͨ�������ȸ������������?���˲���,���ҿ���ȥ�Ǹ������۵�·��,��ʵ�������ؼ��������Ŷ!�ߺ�!���ҵ����ֶ����ص���ô����,�ܿ��!��ô���������Ƿ�����������Ҹ�����ر������..")	
	MisResultCondition(NoRecord, 1607)
	MisResultCondition(HasMission,1607)
	MisResultAction(ClearMission,1607)
	MisResultAction(SetRecord, 1607)


	--------------------------------------�ر������----���Ǳ���·�ˡ���

	DefineMission(5860, "��з֮�ر��ж���", 1608 )	
	
	MisBeginTalk("<t>��������Ǿ�з���ر��ж�,����Բ��μ�,���Ǿ�û���ر������Ŷ.��������ӵ��ʵ��������,��ô�ͽ�����ս��.��������ʮ����Ҫ�Ķ�����Ҫ�㾡���͵�������������.<b2�����ڸϵ����Ǳ�����������(1326,532)>����.")

	MisBeginCondition(NoMission,1608)
	MisBeginCondition(NoRecord,1608)
	MisBeginCondition(HasRecord,1607)
	MisBeginAction(AddMission,1608)
	MisBeginAction(AddChaItem3, 2952)---------��з�ر��ж���
	MisCancelAction(ClearMission, 1608)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "����������(1326,532)����")
	MisHelpTalk("<t>��ȥ��,��ֻ��2����Ŷ")

	MisResultCondition(AlwaysFailure)	

	--------------------------------------�ر������----��������

	DefineMission(5861, "��з֮�ر��ж���", 1608, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�������ǳ���л��.�ҵ���������þ���.��...���Ǵ��Ÿ���������һ��ӵ��ǿ��Ǳ���Ŀ���֮��.��,����һ������,ϣ���ܹ������㾡��ǿ������.")
	MisResultCondition(HasMission, 1608)
	MisResultCondition(NoRecord,1608)
	MisResultAction(AddChaItem4, 2952)----�ر��ж���
	MisResultAction(ClearMission, 1608)
	MisResultAction(SetRecord,  1608 )
	MisResultAction(GiveItem, 2575, 1, 4)------------��з������װ����
	MisResultBagNeed(1)

-------------------------------------------------��з֮ˮ�ֹ��ؽ���----------����������������
	DefineMission (5862, "��з֮ˮ�ֹ��ؽ���", 1609)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����з����ӡ��ʨ�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1609)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(HasRecord,1470)
	MisBeginCondition(HasRecord,1471)
	MisBeginCondition(HasRecord,1472)
	MisBeginCondition(HasRecord,1473)
	MisBeginCondition(HasRecord,1474)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1609)
	MisBeginAction(AddMission,1609)  
	MisBeginAction(AddTrigger, 16091, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16092, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16093, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16094, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16095, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16096, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16097, TE_GETITEM, 2574, 1 )	
	MisCancelAction(ClearMission, 1609)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����ʨ�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1609)
	MisResultCondition(NoRecord,1609)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1609)
	MisResultAction(SetRecord,  1609 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 1, 4)
	MisResultAction(AddMoney,1000000,1000000)
	MisResultAction(ShuangZiSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1609, 10, 1 )
	RegCurTrigger( 16091 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1609, 20, 1 )
	RegCurTrigger( 16092 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1609, 30, 1 )
	RegCurTrigger( 16093 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1609, 40, 1 )
	RegCurTrigger( 16094 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1609, 50, 1 )
	RegCurTrigger( 16095 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1609, 60, 1 )
	RegCurTrigger( 16096 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1609, 70, 1 )
	RegCurTrigger( 16097 )
----------------------------------------------��з֮�������ؽ���----------����������������	
	DefineMission (5863, "��з֮�������ؽ���", 1610)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����з����ӡ��ʨ�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1610)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(HasRecord,1476)
	MisBeginCondition(HasRecord,1477)
	MisBeginCondition(HasRecord,1600)
	MisBeginCondition(HasRecord,1479)
	MisBeginCondition(HasRecord,1480)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1610)
	MisBeginAction(AddMission,1610)
	MisBeginAction(AddTrigger, 16101, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16102, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16103, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16104, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16105, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16106, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16107, TE_GETITEM, 2574, 1 )		
	MisCancelAction(ClearMission, 1610)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����ʨ�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1610)
	MisResultCondition(NoRecord,1610)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1610)
	MisResultAction(SetRecord,  1610 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 2, 4)
	MisResultAction(AddMoney,2000000,2000000)
	MisResultAction(ShuangZiHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2568)	
	TriggerAction( 1, AddNextFlag, 1610, 10, 1 )
	RegCurTrigger( 16101 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2569)	
	TriggerAction( 1, AddNextFlag, 1610, 20, 1 )
	RegCurTrigger( 16102 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2570)	
	TriggerAction( 1, AddNextFlag, 1610, 30, 1 )
	RegCurTrigger( 16103 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2571)	
	TriggerAction( 1, AddNextFlag, 1610, 40, 1 )
	RegCurTrigger( 16104 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2572)	
	TriggerAction( 1, AddNextFlag, 1610, 50, 1 )
	RegCurTrigger( 16105 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2573)	
	TriggerAction( 1, AddNextFlag, 1610, 60, 1 )
	RegCurTrigger( 16106 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2574)	
	TriggerAction( 1, AddNextFlag, 1610, 70, 1 )
	RegCurTrigger( 16107 )

	--------------------------------------------��з֮�������ؽ���----------����������������	
	DefineMission (5864, "��з֮�������ؽ���", 1611)
	
	MisBeginTalk("<t>����7öѫ�¾Ϳ�����������һ�����з����ӡ��ʨ�ӹ�����Ʊ��.���кཱܶ��Ŷ ")

	MisBeginCondition(NoMission,1611)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(HasRecord,1481)
	MisBeginCondition(HasRecord,1482)
	MisBeginCondition(HasRecord,1483)
	MisBeginCondition(HasRecord,1484)
	MisBeginCondition(HasRecord,1485)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1611)
	MisBeginAction(AddMission,1611)   
	MisBeginAction(AddTrigger, 16111, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16112, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16113, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16114, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16115, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16116, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16117, TE_GETITEM, 2574, 1 )	
	MisCancelAction(ClearMission, 1611)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>������ԥʲô?�����һ�������")
	MisResultTalk("<t>��һ����ʨ�ӹ�,�и����˵Ľ����͸��̼�����ս�ڵ���.")

	MisResultCondition(HasMission, 1611)
	MisResultCondition(NoRecord,1611)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1611)
	MisResultAction(SetRecord,  1611 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 3, 4)
	MisResultAction(AddMoney,3000000,3000000)
	MisResultAction(ShuangZiCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2568)	
	TriggerAction( 1, AddNextFlag, 1611, 10, 1 )
	RegCurTrigger( 16111 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2569)	
	TriggerAction( 1, AddNextFlag, 1611, 20, 1 )
	RegCurTrigger( 16112 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2570)	
	TriggerAction( 1, AddNextFlag, 1611, 30, 1 )
	RegCurTrigger( 16113 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2571)	
	TriggerAction( 1, AddNextFlag, 1611, 40, 1 )
	RegCurTrigger( 16114 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2572)	
	TriggerAction( 1, AddNextFlag, 1611, 50, 1 )
	RegCurTrigger( 16115 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2573)	
	TriggerAction( 1, AddNextFlag, 1611, 60, 1 )
	RegCurTrigger( 16116 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2574)	
	TriggerAction( 1, AddNextFlag, 1611, 70, 1 )
	RegCurTrigger( 16117 )


----------------------------------------������ ������� ��� ����� �������

	DefineMission( 5865, "����ʮ���ͷ׼��ڳ�ëз ", 1208 )

	MisBeginTalk("<t>����ʮ�£����ǳ�з�Ļƽ�Ѽ���<n><t>�������ڴ�����Ѱ��һ����з�ط�����˵�ɴ˷������ëз�������벻����Ч������֪���ɸ���Ȥ��")

	MisBeginCondition(NoMission, 1208)
	MisBeginCondition(NoRecord, 1208)
	MisBeginAction(AddMission, 1208)
	MisBeginAction(AddTrigger, 12081, TE_GETITEM, 4490, 1)          
	MisBeginAction(AddTrigger, 12082, TE_GETITEM, 4426, 2)
	MisBeginAction(AddTrigger, 12083, TE_GETITEM, 4393, 8)

	MisCancelAction(ClearMission,1208)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>���侫ͨ��⿣���ԭ���ϻ�����İ���������з(����1773,2517)����1��<yз��>����ζ�����ĵ��ϣ�����з(����1783,2507)����2��<y������зǯ>�ܰ�з���и�ø�Ϊ���ȣ���8��Ӳ��з(����994,857)����<y�޷�ʳ�õ�з��>��������˲˵Ĺؼ���")
	MisNeed(MIS_NEED_ITEM, 4490, 1, 10, 1)               ---------з��
	MisNeed(MIS_NEED_ITEM, 4426, 2, 20, 2)               ---------������зǯ
	MisNeed(MIS_NEED_ITEM, 4393, 8, 30, 8)               ---------�޷�ʳ�õ�з��

	MisHelpTalk("<t>��ϸ�ҵ���Щԭ���ϣ��ҵĳ���һ����������ʧ����")
	MisResultTalk("<t>�Ͻ�����������ëзʢ�磬һ������������Ч��Ŷ������14�죬����Ϊ�����з���ͣ���ӭ�ٴ�Ʒ����")

	MisResultCondition(HasMission, 1208)
	MisResultCondition(NoRecord, 1208)
	MisResultCondition(HasItem, 4490, 1)
	MisResultCondition(HasItem, 4426, 2)
	MisResultCondition(HasItem, 4393, 8)

	MisResultAction(TakeItem, 4490, 1)
	MisResultAction(TakeItem, 4426, 2)
	MisResultAction(TakeItem, 4393, 8)

	MisResultAction(GiveItem, 0048, 1, 4)                          ---------ëз
	MisResultAction(ClearMission, 1208)                        
	MisResultAction(SetRecord, 1208)
	MisResultAction(ClearRecord, 1208)                          ----------������Է�����
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4490)
	TriggerAction(1, AddNextFlag, 1208, 10, 1)
	RegCurTrigger(12081)


	InitTrigger()
	TriggerCondition(1, IsItem, 4426)
	TriggerAction(1, AddNextFlag, 1208, 20, 2)
	RegCurTrigger(12082)


	InitTrigger()
	TriggerCondition(1, IsItem, 4393)
	TriggerAction(1, AddNextFlag, 1208, 30, 8)
	RegCurTrigger(12083)


----------------------------------------����ʮ�´�բз�������---------�����������̡����٣�2277,2769��

	DefineMission(5866,"����ʮ�´��������բз",1209)

	MisBeginTalk("<t>��բз��������з��֮�������������Ұ���Ĵ�բз���Ǿ߱��ʡ��㡢�ۡ�ˬ���ص㣬�Ժ�����������ˬ�������ս�������������֪���Ƿ�����ȤƷ����")

	
	MisBeginCondition(NoMission, 1209)
	MisBeginCondition(NoRecord, 1209)
	MisBeginAction(AddMission,1209)
	MisBeginAction(AddTrigger, 12091, TE_GETITEM, 4342, 1)
	MisBeginAction(AddTrigger, 12092, TE_GETITEM, 4793, 2)
	MisBeginAction(AddTrigger, 12093, TE_GETITEM, 4500, 1)
	MisBeginAction(AddTrigger, 12094, TE_GETITEM, 0057, 1)


	MisCancelAction(ClearMission, 1209)

	MisNeed(MIS_NEED_DESP, "<t>���ƴ�з�����ԭ����ǳ���������������з(����1783,2507)����1��<y��Ӳ��з��>������з(�������349, 376)����2��<y����зǯ>������з��(����1783,2507)����1��<y�ɺ��з��>�������̳�����۵�1��<yз��>����������з֮��������з֮��Ʒ��")
       
	
	MisNeed(MIS_NEED_ITEM, 4342, 1, 10, 1)                       ---------��Ӳ��з��
	MisNeed(MIS_NEED_ITEM, 4793, 2, 20, 2)                       ---------����зǯ
	MisNeed(MIS_NEED_ITEM, 4500, 1, 30, 1)                       ---------�ɺ��з��
	MisNeed(MIS_NEED_ITEM, 0057, 1, 40, 1)                       ---------з��

	MisHelpTalk("<t>��Ȼԭ���ϵ��ռ���һ���ǳ�������£�������Ʒ������ζ�Ĵ�բз�����Ϊ�Լ���Ŭ�����е��Ժ���")
	MisResultTalk("<t>�����բз��¯���ǵ���ϧʳ��֮��20������ĳ�ֵЧ��ร����쳤�٣���������������ζ��з��ͣ���ӭ�ٴ�Ʒ����")

	MisResultCondition(HasMission, 1209)
	MisResultCondition(NoRecord, 1209)
	MisResultCondition(HasItem, 4342, 1)
	MisResultCondition(HasItem, 4793, 2)
	MisResultCondition(HasItem, 4500, 1)
	MisResultCondition(HasItem, 0057, 1)

	MisResultAction(TakeItem, 4342, 1)
	MisResultAction(TakeItem, 4793, 2)
	MisResultAction(TakeItem, 4500, 1)
	MisResultAction(TakeItem, 0057, 1)

	MisResultAction(GiveItem, 0056, 1, 4)                                   ---------��բз
	MisResultAction(ClearMission, 1209)
	MisResultAction(SetRecord, 1209)
	MisResultAction(ClearRecord, 1209)                                   ----------������Է�����
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4342)
	TriggerAction(1, AddNextFlag, 1209, 10, 1)
	RegCurTrigger(12091)


	InitTrigger()
	TriggerCondition(1, IsItem, 4793)
	TriggerAction(1, AddNextFlag, 1209, 20, 2)
	RegCurTrigger(12092)

	InitTrigger()
	TriggerCondition(1, IsItem, 4500)
	TriggerAction(1, AddNextFlag, 1209, 30, 1)
	RegCurTrigger(12093)

	InitTrigger()
	TriggerCondition(1, IsItem, 0057)
	TriggerAction(1, AddNextFlag, 1209, 40, 1)
	RegCurTrigger(12094)


----------------------------------------����ʮ�´�բз�������---------�����������̡����٣�2277,2769��

	DefineMission(5867, "����ʮ�������ڴ���з��", 1210)

	MisBeginTalk("<t>�����Ȿ����ط��ϵļ��أ��ɾ���з������������з�����Ǿ߱������ױȵ�������Ч����Ϊ��ʿ֮��Ʒ������з�籾����ӵ������Ч������֪���ɸ���Ȥ��")

	MisBeginCondition(NoMission, 1210)
	MisBeginCondition(NoRecord, 1210)
	MisBeginAction(AddMission, 1210)
	MisBeginAction(AddTrigger, 12101, TE_KILL, 273, 10)
	MisBeginAction(AddTrigger, 12102, TE_KILL, 186, 10)
	MisBeginAction(AddTrigger, 12103, TE_GETITEM, 4259, 5)
	MisBeginAction(AddTrigger, 12104, TE_GETITEM, 4890, 5)


	MisCancelAction(ClearMission, 1210)

	MisNeed(MIS_NEED_DESP, "<t>����з����Ǽ����ֵ��¶����⼸���ұ�����з��ɳз�����޷����о������ɷ�Ϊ�ҽ�����֮���أ�����λ��(�������349, 376)��10ֻ<y����з>��λ��(ħŮ֮��1341,3010)��10ֻ<yɳз>����˳�������ǲ����5��<y����>��5��<y��ɳ�ӵ�з��>��������")
	MisNeed(MIS_NEED_KILL, 273, 10, 10, 10)                  ----------����з
	MisNeed(MIS_NEED_KILL, 186, 10, 20, 10)                  ----------ɳз
	MisNeed(MIS_NEED_ITEM, 4259, 5, 30, 5)                  -----------����
	MisNeed(MIS_NEED_ITEM, 4890, 5, 40, 5)                  -----------��ɳ�ӵ�з��



	MisHelpTalk("<t>���ҪС��Ӧ����Щ�ƻ��ĳ���з��ɳз���һ�������1��<yз��>��Ϊ�ر�ร�")
	MisResultTalk("<t>������۵�з����Ҫ�������<y������2��>(���þ����λ��)��<y5��>(7200����)�ľ��ĺǻ������ܵ��������Ϊ���Ѵ�ͣ���������˵�̳�������һ���ܸ���̼�з��ɳ���<y����з�ü���>�������д����ֱ�������ң�����з�����ǲ����ţ����������Щ�¶��������ģ���ôֱ��ʳ�����з�磬�������������1000�㾭��ľ�ϲ��")
	
	MisResultCondition(HasMission, 1210)
	MisResultCondition(NoRecord, 1210)
	MisResultCondition(HasFlag, 1210, 19)
	MisResultCondition(HasFlag, 1210, 29)
	MisResultCondition(HasItem, 4259, 5)
	MisResultCondition(HasItem, 4890, 5)

	MisResultAction(TakeItem, 4259, 5)
	MisResultAction(TakeItem, 4890, 5)


	MisResultAction(ClearMission, 1210)
	MisResultAction(SetRecord, 1210)
	MisResultAction(ClearRecord, 1210)                                   ----------������Է�����
	MisResultAction(Givecrab, 0058)                                   ---------з��
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsMonster, 273)
	TriggerAction(1, AddNextFlag, 1210, 10, 10)
	RegCurTrigger(12101)

	InitTrigger()
	TriggerCondition(1, IsMonster, 186)
	TriggerAction(1, AddNextFlag, 1210, 20, 10)
	RegCurTrigger(12102)

	InitTrigger()
	TriggerCondition(1, IsItem, 4259)
	TriggerAction(1, AddNextFlag, 1210, 30, 5)
	RegCurTrigger(12103)

	InitTrigger()
	TriggerCondition(1, IsItem, 4890)
	TriggerAction(1, AddNextFlag, 1210, 40, 5)
	RegCurTrigger(12104)



-----------------------------kokora---------------------------------------
---------------------------reading_talk02 ()----�������� ����������-------------------------------

-------------------------------------------	������� 2
	DefineMission( 6138, "\221\234\231\224\236\229\237 2", 1211 )
	MisBeginTalk( "<t>� ��� ������� ��� �� ���� ��������: ������� <b30 ���������� �������> � ��." )
	MisBeginCondition( CheckXSZCh,2 )				------
	MisBeginCondition( HasItem , 3280,1 )
	MisBeginCondition( HasNoItem, 3282)
	MisBeginCondition( NoMission ,1211)
	MisBeginAction( AddMission, 1211)
	MisBeginAction(AddTrigger, 12111, TE_GETITEM, 3116, 30 )--
	MisCancelAction( ClearMission, 1211)

	MisNeed(MIS_NEED_ITEM, 3116, 30, 10, 30 )
	MisHelpTalk( "<t>� �� ���� ������������� �� ��� ��� ���� �� ����� <b30 ���������� �������>." )

	MisResultTalk( "<t>�������� ��������� ����� ����� " )
	MisResultCondition( HasMission, 1211)
	MisResultCondition( HasItem, 3116, 30)
	MisResultAction( TakeItem, 3116, 30)
	MisResultAction( ClearMission, 1211)
	MisResultAction( GiveItem, 3282, 1, 4)--������ � �������� �� �������

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1211, 10, 30 )
	RegCurTrigger( 12111 )


--------------------------------------------------------------------�������

	DefineMission( 6139, "\209\238\245\240\224\237\229\237\232\229", 1212 )--����������
	MisBeginTalk( "<t>������ ��� ������� ��� <bP-E-I-M-E-N-G>.� �� � ���� ������� ���� ����� �����������. �<b(271,1775)> ����� �������� ��� �� ���������." )
	MisBeginCondition(NoMission, 1212)
	MisBeginCondition(NoRecord,1212)
	MisBeginAction(AddMission,1212)
	MisBeginAction(AddTrigger, 12121, TE_GETITEM, 3854, 2)
	MisBeginAction(AddTrigger, 12122, TE_GETITEM, 3858, 1)
	MisBeginAction(AddTrigger, 12123, TE_GETITEM, 3863, 1)
	MisBeginAction(AddTrigger, 12124, TE_GETITEM, 3865, 1)
	MisBeginAction(AddTrigger, 12125, TE_GETITEM, 3862, 1)
	MisBeginAction(AddTrigger, 12126, TE_GETITEM, 3856, 1)
	
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� ������� " )

	MisNeed(MIS_NEED_DESP, " �������� <bP-E-I-M-E-N-G> � ������������� � ����� (2229,2782)." )
	MisNeed(MIS_NEED_ITEM, 3854, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 3858, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3863, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 3865, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 3862, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3856, 1, 60, 1)

	MisHelpTalk( "<t>�������� ��� <bP-E-I-M-E-N-G>." )
	MisResultTalk( "<t>�� ��������� �����, ������� �������." )

	MisResultCondition(HasMission, 1212)
	MisResultCondition(NoRecord,1212)
	MisResultCondition(HasItem, 3854, 2)
	MisResultCondition(HasItem, 3858, 1)
	MisResultCondition(HasItem, 3863, 1)
	MisResultCondition(HasItem, 3865, 1)
	MisResultCondition(HasItem, 3862, 1)
	MisResultCondition(HasItem, 3856, 1)

	MisResultAction(TakeItem, 3854, 2 )
	MisResultAction(TakeItem, 3858, 1 )
	MisResultAction(TakeItem, 3863, 1 )
	MisResultAction(TakeItem, 3865, 1 )
	MisResultAction(TakeItem, 3862, 1 )
	MisResultAction(TakeItem, 3856, 1 )

	
	MisResultAction(GiveItem, 3673,1,4)------------������� ����
	MisResultAction(ClearMission, 1212)
	MisResultAction(ZSSTOP)
	MisResultAction(SetRecord, 1212)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 3854)	
	TriggerAction( 1, AddNextFlag, 1212, 10, 2 )
	RegCurTrigger( 12121 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3858)	
	TriggerAction( 1, AddNextFlag, 1212, 20, 1 )
	RegCurTrigger( 12122 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3863)	
	TriggerAction( 1, AddNextFlag, 1212, 30, 1 )
	RegCurTrigger( 12123 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3865)	
	TriggerAction( 1, AddNextFlag, 1212, 40, 1 )
	RegCurTrigger( 12124 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3862)	
	TriggerAction( 1, AddNextFlag, 1212, 50, 1 )
	RegCurTrigger( 12125 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3856)	
	TriggerAction( 1, AddNextFlag, 1212, 60, 1 )
	RegCurTrigger( 12126 )

	----------------------------------------------------------����������� � �������� �����

	DefineMission( 6140, "\207\243\242\229\248\229\241\242\226\232\229 \226 \206\228\232\237\238\234\243\254 \193\224\248\237\254", 1213 )
	MisBeginTalk( "<t>��� ��� � ����, ��� ������� �� ������� � ��� ��������, ��� ������ ����� �� ������� ����� � �������� ����� � ����� (263,260) � ����� <p���������>." )
				
	MisBeginCondition(NoMission, 1213)
	MisBeginCondition(NoRecord,1213)
	MisBeginCondition(HasMission, 1212)
	MisBeginCondition(NoRecord, 1212)
	MisBeginAction(AddMission,1213)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� ������� " )

	MisNeed(MIS_NEED_DESP, " ���������� � <p���������� ����� ����> � ����� (263,260) �������� ����� 1." )
	
	MisHelpTalk( "<t>�� �� ������ ���� � �������� �����?" )
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------����������� � �������� �����--�������� ����� ����

	DefineMission( 6141, "\207\243\242\229\248\229\241\242\226\232\229 \226 \206\228\232\237\238\234\243\254 \193\224\248\237\254", 1213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>��� ������ ��� ������ ����? � ��� ��� ����� ������ ��� ����� �������..." )
	MisResultCondition(NoRecord, 1213)
	MisResultCondition(HasMission,1213)
	MisResultAction(ClearMission,1213)
	MisResultAction(SetRecord, 1213)


	---------------------------------------------����������� ���������
	DefineMission( 6142, "\205\229\228\238\226\238\235\252\241\226\238 \240\224\225\238\242\237\232\234\224", 1214 )

      MisBeginTalk( "<t>� ����� ��� ��� ����� ��� �������, ��� � �� ��� ��������<n><t>��������� ��� <b25 ���������� ������� �������� �����>, <b25 ����� �������� ������ �����>, <b25 ����� ������ �������>, <b25 ������� ������������� �����>." )

      MisBeginCondition(NoRecord,1214)
      MisBeginCondition(NoMission,1214)
      MisBeginCondition(HasRecord, 1213)
      MisBeginAction(AddMission,1214)
      MisBeginAction(AddTrigger, 12141, TE_GETITEM, 4739, 25 )--���������� ������� �������� �����
      MisBeginAction(AddTrigger, 12142, TE_GETITEM, 4740, 25 )--����� �������� ���� �����
      MisBeginAction(AddTrigger, 12143, TE_GETITEM, 4741, 25 )--����� ������ �������               
      MisBeginAction(AddTrigger, 12144, TE_GETITEM, 1486, 25 )--������ ������������� �����               
      MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� ������� " )

      MisNeed(MIS_NEED_DESP, " ��������� <b25 ���������� ������� �������� �����>, <b25 ����� �������� ������ �����>, <b25 ����� ������ �������>, <b25 ������� ������������� �����>!" )
      MisNeed(MIS_NEED_ITEM, 4739, 25,  1, 25 )
      MisNeed(MIS_NEED_ITEM, 4740, 25, 26, 25 )
      MisNeed(MIS_NEED_ITEM, 4741, 25,  51, 25 )
      MisNeed(MIS_NEED_ITEM, 1486, 25,  76, 25 )

      MisHelpTalk( "<t>��������� ��� ��� ����." )  
      MisResultTalk( "<t>�� ������ ��� ���� �� ��� � �����, ��� ����� P ����.")
      MisResultCondition(HasMission,1214 )
      MisResultCondition(NoRecord,1214)
      MisResultCondition(HasItem, 4739, 25 )
      MisResultCondition(HasItem, 4740, 25 )
      MisResultCondition(HasItem, 4741, 25 )
      MisResultCondition(HasItem, 1486, 25 )

	MisResultAction(TakeItem, 4739, 25 )
	MisResultAction(TakeItem, 4740, 25 )
	MisResultAction(TakeItem, 4741, 25 )
	MisResultAction(TakeItem, 1486, 25 )

      MisResultAction(GiveItem, 3865, 1, 4 )--����� P
      MisResultAction(ClearMission, 1214 )
      MisResultAction(SetRecord, 1214)
      MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 1214, 1, 25 )
	RegCurTrigger( 12141 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4740)	
	TriggerAction( 1, AddNextFlag, 1214, 26, 25 )
	RegCurTrigger( 12142 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4741)	
	TriggerAction( 1, AddNextFlag, 1214, 51, 25 )
	RegCurTrigger( 12143 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1486)	
	TriggerAction( 1, AddNextFlag, 1214, 76, 25 )
	RegCurTrigger( 12144 )
  
----------------------------------------------------------���������� ��������

	DefineMission( 6143, "\199\224\227\224\228\238\247\237\224\255 \209\235\243\230\224\237\234\224", 1215 )
	MisBeginTalk("<t>�� ������� � ����� �� ������ ����� ����� � (151,134) ���� ��������... ������������� � ���. �����." )
				
	MisBeginCondition(NoMission, 1215)
	MisBeginCondition(NoRecord,1215)
	MisBeginCondition(HasRecord, 1214)
	MisBeginAction(AddMission,1215)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� ������� " )

	MisNeed(MIS_NEED_DESP, " ������������� � ����� 2 � ������� �������� � ����� (151,134)." )
	
	MisHelpTalk( "<t>���� �� ��� �� ���������� ������� ��� ����� �� ������������� �� ������ ����� ����������." )
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------���������� ��������
	DefineMission( 6144, "\199\224\227\224\228\238\247\237\224\255 \209\235\243\230\224\237\234\224", 1215, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>� ����� ����� �������, �� � �� �������, � �� ���� �� ��� ��� �����������." )
	MisResultCondition(NoRecord, 1215)
	MisResultCondition(HasMission,1215)
	MisResultAction(ClearMission,1215)
	MisResultAction(SetRecord, 1215)

	---------------------------------------------������� �������� ����� ����--��������� �� ������������
	DefineMission( 6145, "\203\229\234\224\240\241\242\226\238 \238\242 \227\238\226\238\240\235\232\226\238\241\242\232", 1216 )

      MisBeginTalk( "<t>� ���� ���� ���� ������ ����� - � ������� ����������, �� � ��� ����� ��������, ���� ��, �������, ��� �������� ���������: <b35 ������ �������� ���>, <b35 ���������� �����> � <b35 ������� ���������� ������ �������>." )

      MisBeginCondition(NoRecord,1216)
      MisBeginCondition(NoMission,1216)
      MisBeginCondition(HasRecord, 1215)
      MisBeginAction(AddMission,1216)
      MisBeginAction(AddTrigger, 12161, TE_GETITEM, 4742, 35 )--������ �������� ����
      MisBeginAction(AddTrigger, 12162, TE_GETITEM, 4743, 35 )--���������� �����
      MisBeginAction(AddTrigger, 12163, TE_GETITEM, 4745, 35 )--������� ���������� ������ �����
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� ������� " )

      MisNeed(MIS_NEED_DESP, " ��������� ����������� ��� ��������� �� ����������� <b35 ������ �������� ���>, <b35 ���������� �����> � <b35 ������� ���������� ������ �������>!" )
      MisNeed(MIS_NEED_ITEM, 4742, 35,  1, 35 )
      MisNeed(MIS_NEED_ITEM, 4743, 35, 36, 35 )
      MisNeed(MIS_NEED_ITEM, 4745, 35,  71, 35 )

      MisHelpTalk( "<t>� ���� ����� ����, ������������, � ������ ���������� �� ����� ���������." )  
      MisResultTalk("<t>������� ���� ����� �������, ��� ����� ���� � ���� ���� �������������." )
      MisResultCondition(HasMission,1216 )
      MisResultCondition(NoRecord,1216)
      MisResultCondition(HasItem, 4742, 35 )
      MisResultCondition(HasItem, 4743, 35 )
      MisResultCondition(HasItem, 4745, 35 )

	MisResultAction(TakeItem, 4742, 35 )
	MisResultAction(TakeItem, 4743, 35 )
	MisResultAction(TakeItem, 4745, 35 )


      MisResultAction(GiveItem, 3854, 1, 4 )--����� E
      MisResultAction(ClearMission, 1216 )
      MisResultAction(SetRecord, 1216)
      MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4742)	
	TriggerAction( 1, AddNextFlag, 1216, 1, 35 )
	RegCurTrigger( 12161 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4743)	
	TriggerAction( 1, AddNextFlag, 1216, 36, 35 )
	RegCurTrigger( 12162 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4745)	
	TriggerAction( 1, AddNextFlag, 1216, 71, 35 )
	RegCurTrigger(12163 )

----------------------------------------------------------����� ���������

	DefineMission( 6146, "\210\224\233\237\224 \241\229\236\252\232 \203\238\234\234", 1217 )--����� ����� ����
	MisBeginTalk( "<t>�� ������� ����� ����� ��������� �������, ��� ���� ��������� ����� ����. �������� � �� ���� ��, ��� ��� ������ ��������������. ��������� �." )
				
	MisBeginCondition(NoMission, 1217)
	MisBeginCondition(NoRecord,1217)
	MisBeginCondition(HasRecord, 1216)
	MisBeginAction(AddMission,1217)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ���������� � ��������� � <p�������� ����� 3> � ����� (63,311)." )
	
	MisHelpTalk( "<t>���?! ����� �� ��� �� ����������� � ���������? ��� ���� �� �� �����? ������������� ����������!" )
	MisResultCondition(AlwaysFailure)

	-----------------------------------------����� ����� ����

	DefineMission( 6147, "\210\224\233\237\224 \241\229\236\252\232 \203\238\234\234", 1217, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>��� ��� ������, ��� ��� ��������� � ���� �� ����������, �� ������ - ��� ����� ���� �����." )
	MisResultCondition(NoRecord, 1217)
	MisResultCondition(HasMission,1217)
	MisResultAction(ClearMission,1217)
	MisResultAction(SetRecord, 1217)

	-------------------------------------------------------------------- ��������� ��������

	DefineMission( 6148, "\204\224\235\229\237\252\234\232\233 \209\229\234\240\229\242\232\234", 1218 )
	MisBeginTalk( "<t>� ���� ���� ���������� �����, � ���� ��������� ������. �� ��� ����� ��� ����� ������. � ��� � �� ������ ��� ���������? �� ����� �� �� ��� ����� ���?" )
	MisBeginCondition(NoMission, 1218)
	MisBeginCondition(NoRecord,1218)
	MisBeginCondition(HasRecord, 1217)
	MisBeginAction(AddMission,1218)
	MisBeginAction(AddTrigger, 12181, TE_GETITEM, 1501, 20)--��������� ���� ������ ����
	MisBeginAction(AddTrigger, 12182, TE_GETITEM, 1490, 20)--�������� ���� ������ ����
	MisBeginAction(AddTrigger, 12183, TE_GETITEM, 4748, 20)--��������� ���������� ������
	MisBeginAction(AddTrigger, 12184, TE_GETITEM, 4749, 20)--������� ������� ����
	MisBeginAction(AddTrigger, 12185, TE_GETITEM, 4725, 20)--��������� ��������� ���
	MisBeginAction(AddTrigger, 12186, TE_GETITEM, 4747, 20)--���� ����� ����
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ���������: <b20 ��������� ������ ������ ����>, <b20 �������� ��� ������ ����>, <b20 ��������� ���������� �����>, <b20 ������� ������� ������>, <b20 ��������� ���������� �����> � <b20 ��� ����� ����>." )
	MisNeed(MIS_NEED_ITEM, 1501, 20, 1, 20)
	MisNeed(MIS_NEED_ITEM, 1490, 20, 21, 20)
	MisNeed(MIS_NEED_ITEM, 4748, 20, 41, 20)
	MisNeed(MIS_NEED_ITEM, 4749, 20, 61, 20)
	MisNeed(MIS_NEED_ITEM, 4725, 20, 81, 20)
	MisNeed(MIS_NEED_ITEM, 4747, 20, 101, 20)

	MisHelpTalk( "<t>��� �������, ��� � ���������� �� �������." )
	MisResultTalk( "<t>������� �� ������, � ��� � �� ���� ��������, �� �� �� ��� � �����." )

	MisResultCondition(HasMission, 1218)
	MisResultCondition(NoRecord,1218)
	MisResultCondition(HasItem, 1501, 20)
	MisResultCondition(HasItem, 1490, 20)
	MisResultCondition(HasItem, 4748, 20)
	MisResultCondition(HasItem, 4749, 20)
	MisResultCondition(HasItem, 4725, 20)
	MisResultCondition(HasItem, 4747, 20)

	MisResultAction(TakeItem, 1501, 20 )
	MisResultAction(TakeItem, 1490, 20 )
	MisResultAction(TakeItem, 4748, 20 )
	MisResultAction(TakeItem, 4749, 20 )
	MisResultAction(TakeItem, 4725, 20 )
	MisResultAction(TakeItem, 4747, 20 )

	
	MisResultAction(GiveItem, 3858,1,4)------------����� I
	MisResultAction(ClearMission, 1218)
	MisResultAction(SetRecord, 1218)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 1501)	
	TriggerAction( 1, AddNextFlag, 1218, 1, 20 )
	RegCurTrigger( 12181 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1490)	
	TriggerAction( 1, AddNextFlag, 1218, 21, 20 )
	RegCurTrigger( 12182 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4748)	
	TriggerAction( 1, AddNextFlag, 1218, 41, 20 )
	RegCurTrigger( 12183 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4749)	
	TriggerAction( 1, AddNextFlag, 1218, 61, 20 )
	RegCurTrigger( 12184 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4725)	
	TriggerAction( 1, AddNextFlag, 1218, 81, 20 )
	RegCurTrigger( 12185 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4747)	
	TriggerAction( 1, AddNextFlag, 1218, 101, 20 )
	RegCurTrigger( 12186 )

	----------------------------------------------------------���� ���������

	DefineMission( 6149, "\199\235\238\233 \245\240\224\237\232\242\229\235\252", 1219 )
	MisBeginTalk( "<t>������������ � �������� ����� 4 � �����(261,70). ������ ����, ��� �� ���� ������ <p�������� ����� ����> ��� ��� �����." )
				
	MisBeginCondition(NoMission, 1219)
	MisBeginCondition(NoRecord,1219)
	MisBeginCondition(HasRecord, 1218)
	MisBeginAction(AddMission,1219)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ���������� � ���� ���������� � ����� (261,70)�������� ����� 4" )
	
	MisHelpTalk( "<t>��� �������?" )
	MisResultCondition(AlwaysFailure)
	
	-----------------------------------------�������� ����� ����--���� ���������

	DefineMission( 6150, "\199\235\238\233 \245\240\224\237\232\242\229\235\252", 1219, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�� ���� ������� ������ ������ �������, ��� �� ���� ������ ������� ���� �����." )
	MisResultCondition(NoRecord, 1219)
	MisResultCondition(HasMission,1219)
	MisResultAction(ClearMission,1219)
	MisResultAction(SetRecord, 1219)

--------------------------------------------------------------------�������� ����� ����--������� ���� �������

	DefineMission( 6151, "\215\229\235\238\226\229\234 \229\241\242\252 \247\229\235\238\226\229\234", 1220 )
	MisBeginTalk( "<t>������ � ����� ���������� � ����� ����?! � ��� �������! ����� � ������ ������ � ��� ����� �� ��� ��� <p25 ��� ������ ����> � <p25 ������ ������ �������> � ���� � ��� �� ����� � ��� ���� ������ ���� ���� �� ��� ��� � �������� ��� ���������." )
	MisBeginCondition(NoMission, 1220)
	MisBeginCondition(NoRecord,1220)
	MisBeginCondition(HasRecord, 1219)
	MisBeginAction(AddMission,1220)
	MisBeginAction(AddTrigger, 12201, TE_GETITEM, 4750,50)--���� ������ ����
	MisBeginAction(AddTrigger, 12202, TE_GETITEM, 4763, 50)--���� ������� ������
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " �������� <b50 ��� ������ ����> � <b50 ������ ������� ������> <p��������� ����� ����>." )
	MisNeed(MIS_NEED_ITEM, 4750, 50, 1, 50)
	MisNeed(MIS_NEED_ITEM, 4763, 50, 51, 50)


	MisHelpTalk( "<t>� �� ����� ����� ���� ���� �������� ���� ����� ����." )
	MisResultTalk( "<t>�� ����� ������ ��� ����. ������� ��� �� ������������. ������ � ����� �������� ������ ������. �������� ��� ����� � ���� ���� �������������." )

	MisResultCondition(HasMission, 1220)
	MisResultCondition(NoRecord,1220)
	MisResultCondition(HasItem, 4750, 50)
	MisResultCondition(HasItem, 4763,50)
	MisResultAction(TakeItem, 4750, 50 )
	MisResultAction(TakeItem, 4763, 50 )
	
	MisResultAction(GiveItem, 3862,1,4)---------- ����� m
	MisResultAction(ClearMission, 1220)
	MisResultAction(SetRecord, 1220)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4750)	
	TriggerAction( 1, AddNextFlag, 1220, 1, 50 )
	RegCurTrigger( 12201 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4763)	
	TriggerAction( 1, AddNextFlag, 1220, 21, 50 )
	RegCurTrigger( 12202 )

----------------------------------------------------------�������

	DefineMission( 6152, "\215\229\235\238\226\229\234", 1221 )
	MisBeginTalk( "<t>���� ���� � ������� ���� � ��������������, � - � ������ ������� ������� � � ������ ���� � ������� ����.<n><t>����������� � �������� ����� 5 � �����(542,54), �������� ��� �� ������� ���������� ��� ���� �����." )
				
	MisBeginCondition(NoMission, 1221)
	MisBeginCondition(NoRecord,1221)
	MisBeginCondition(HasRecord, 1220)
	MisBeginAction(AddMission,1221)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ����� � ����� (542,54) �������� ����� 5" )
	
	MisHelpTalk( "<t>������� ���� ��� ��� ����, �� 5 ����� �������� ����� ���� ��� �������..." )
	MisResultCondition(AlwaysFailure)

	-----------------------------------------�������

	DefineMission(6153, "\215\229\235\238\226\229\234", 1221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>����������� ���� ��������, ������ �������� �� ���?" )
	MisResultCondition(NoRecord, 1221)
	MisResultCondition(HasMission,1221)
	MisResultAction(ClearMission,1221)
	MisResultAction(SetRecord, 1221)


	--------------------------------------------------------------------������������ ����������

	DefineMission( 6154, "\205\229\239\240\232\255\242\237\238\241\242\232 \193\224\242\235\229\240\224", 1222 )
	MisBeginTalk( "<t>��� ������ ����� ������ � ������ ������ , ��� �� ��� �� ������, ��� ����������� � ���� ��������, ������ ��-�� ����� ���, � �� �� ����� ���� ��� ��������, �� �� ����� � ���, ��� � � ���� ������� � ������ �������, ��� �� � �� ��� ������." )
	MisBeginCondition(NoMission, 1222)
	MisBeginCondition(NoRecord,1222)
	MisBeginCondition(HasRecord, 1221)
	MisBeginAction(AddMission,1222)
	MisBeginAction(AddTrigger, 12221, TE_GETITEM, 4770, 35)--��������� ���� ����� ����
	MisBeginAction(AddTrigger, 12222, TE_GETITEM, 4766, 35)--������ ������ ����
	MisBeginAction(AddTrigger, 12223, TE_GETITEM, 4772, 35)--��������� ���� ������ ����
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ��������� ���������� <b35 ��������� ��� ����� ����>, <b35 Ҹ���� ������ ����> � <b35 ��������� ��� ������ ����>." )
	MisNeed(MIS_NEED_ITEM, 4770, 35, 1, 35)
	MisNeed(MIS_NEED_ITEM, 4766, 35, 36, 35)
	MisNeed(MIS_NEED_ITEM, 4772, 35, 71, 35)

	MisHelpTalk( "<t>� ����� ��� ������ ��� ������� ����� ������� ����, ������� � � ���� �����." )
	MisResultTalk( "<t>������� ���� ����, ������ �� �� ���� ��������. ������ ��� �����, ����� ���� ��� ���� ����������." )

	MisResultCondition(HasMission, 1222)
	MisResultCondition(NoRecord,1222)
	MisResultCondition(HasItem, 4770, 35)
	MisResultCondition(HasItem, 4766, 35)
	MisResultCondition(HasItem, 4772, 35)

	MisResultAction(TakeItem, 4770, 35 )
	MisResultAction(TakeItem, 4766, 35 )
	MisResultAction(TakeItem, 4772, 35 )
	
	MisResultAction(GiveItem, 3863,1,4)----------����� n
	MisResultAction(ClearMission, 1222)
	MisResultAction(SetRecord, 1222)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4770)	
	TriggerAction( 1, AddNextFlag, 1222, 1, 35 )
	RegCurTrigger( 12221 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4766)	
	TriggerAction( 1, AddNextFlag, 1222, 36, 35 )
	RegCurTrigger( 12222 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4772)	
	TriggerAction( 1, AddNextFlag, 1222, 71, 35 )
	RegCurTrigger( 12223 )

---------------------------------------------------------���������--�����--

	DefineMission( 6155, "\194\238\231\236\229\231\228\232\229 \196\226\238\240\229\246\234\238\227\238", 1223 )--��������� ����������
	MisBeginTalk( "<t>� ������� ����� ������ �� ���� ��� ������� ����, �� ������ � �������,���, �� ������ �� ���� ��������, ����� ����, ��� � ����������, ��� �� ������� �� � �������� � �������� �� ���, �� ������ ������� ���� �������. � ��, ������, ���� ���� �����." )
				
	MisBeginCondition(NoMission, 1223)
	MisBeginCondition(NoRecord,1223)
	MisBeginCondition(HasRecord, 1222)
	MisBeginAction(AddMission,1223)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ���������� � ���������� ���� � �����(541,268)�������� ����� 6" )
	
	MisHelpTalk( "<t>���������� � ���������� ����, ��� ������� ��� ��������� ��, ��� ���������� ���..." )
	MisResultCondition(AlwaysFailure)

	-----------------------------------------��������� ����������

	DefineMission(6156, "\194\238\231\236\229\231\228\232\229 \196\226\238\240\229\246\234\238\227\238", 1223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�� ���� ��� ��������, ��� � ���� ���� �����?" )
	MisResultCondition(NoRecord, 1223)
	MisResultCondition(HasMission,1223)
	MisResultAction(ClearMission,1223)
	MisResultAction(SetRecord, 1223)

--------------------------------------------------------------------���������� ��������

	DefineMission( 6157, "\199\224\227\224\228\224\247\237\224\255 \202\240\224\241\238\242\234\224", 1224 )
	MisBeginTalk( "<t>� ����� �������� ��, ��� � ����. ��, ���� �� � �� ��������, ������ ���� ���������... ��� ������ � ����, ��� �� � ���� ���� <b666 ������������� ����>." )
	MisBeginCondition(NoMission, 1224)
	MisBeginCondition(NoRecord,1224)
	MisBeginCondition(HasRecord, 1223)
	MisBeginAction(AddMission,1224)
	MisBeginAction(AddTrigger, 12241, TE_GETITEM, 1503, 666)--������������� �����
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ��������� <b666 ������������� ����> ��������� ����." )
	MisNeed(MIS_NEED_ITEM, 1503, 666, 1, 666)

	MisHelpTalk( "<t>� ����, ��� �� ��� ��� ������� ����������� ����������!" )
	MisResultTalk( "<t>��! �� ��� ������� ���� ����? �� �����������, ��� � ��� �����������... ���������? �� �� ���������... �� ��� ���� ����������� �����. ��� �������� ��� ����� � �� ��������� ��� ��� �� �����.")

	MisResultCondition(HasMission, 1224)
	MisResultCondition(NoRecord,1224)
	MisResultCondition(HasItem, 1503, 666)
	MisResultAction(TakeItem, 1503, 666 )

	MisResultAction(GiveItem, 3856,1,4)----------G
	MisResultAction(ClearMission, 1224)
	MisResultAction(SetRecord, 1224)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1503)	
	TriggerAction( 1, AddNextFlag, 1224, 1, 666 )
	RegCurTrigger( 12241 )

------------------------------------------------------���������� ��������

	DefineMission( 6158, "\199\224\227\224\228\224\247\237\224\255 \202\240\224\241\238\242\234\224", 1225 )
	MisBeginTalk( "<t>� ���� ��� ������ ����, ��� ������� ����, �� ������ � ��� ��������, �� ������� � ������ ��� ���������, �� ��� �� ������ �� ���� �������� � ���� � ����� ����� ������ � �������, � ����� ������ �� ����." )
				
	MisBeginCondition(NoMission, 1225)
	MisBeginCondition(NoRecord,1225)
	MisBeginCondition(HasRecord, 1224)
	MisBeginAction(AddMission,1225)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ����� ��� ��������� ����� � �����(154,912) ��������." )
	
	MisHelpTalk( "<t>��� ϸ���..." )
	MisResultCondition(AlwaysFailure)
	
	-----------------------------------------ϸ� ��������� �����

	DefineMission( 6159, "\207\191\241 \203\254\225\238\226\237\232\246\251 \203\238\234\234\224", 1225, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>��� ��? ��� ������� �� ���� ��������� �����? � �� ������� � ���, ��� ���� �� ������, � ��� ����� � ��� �����!" )
	MisResultCondition(NoRecord, 1225)
	MisResultCondition(HasMission,1225)
	MisResultAction(ClearMission,1225)
	MisResultAction(SetRecord, 1225)


	--------------------------------------------------------------------�� ������ �� �� ���

	DefineMission( 6160, "\205\232 \241\236\238\242\240\255 \237\232 \237\224 \247\242\238!", 1226 )
	MisBeginTalk( "<t>���� ������ ������� ���������, �� �������� ��� �������� ��, ��� � �� ���� ��.<n><t>��������� ��� 99 ����� ����� � ���� �� ������� ��, ��� � �� ������." )
	MisBeginCondition(NoMission, 1226)
	MisBeginCondition(NoRecord,1226)
	MisBeginCondition(HasRecord, 1225)
	MisBeginAction(AddMission,1226)
	MisBeginAction(AddTrigger, 12261, TE_GETITEM, 4884, 99)--������ �����
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " �������� <b99 ����� �����>." )
	MisNeed(MIS_NEED_ITEM, 4884, 99, 1, 99)

	MisHelpTalk( "<t>�� ������, ��� �� �� �� ���� � ����� �������� ������� ���������?" )
	MisResultTalk( "<t>������������� � �����(2229,2782). �������� ��� ����� � ���� ���� ���������������." )

	MisResultCondition(HasMission, 1226)
	MisResultCondition(NoRecord,1226)
	MisResultCondition(HasItem, 4884, 99)
	MisResultAction(TakeItem, 4884, 99 )

	MisResultAction(GiveItem, 3854,1,4)----------E
	MisResultAction(ClearMission, 1226)
	MisResultAction(SetRecord, 1226)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4884)	
	TriggerAction( 1, AddNextFlag, 1226, 1, 99 )
	RegCurTrigger( 12261 )


-----------------------------------------------------��! ��� �����!

	DefineMission( 6161, "\206\233! \205\229\242 \234\235\254\247\224!", 1227 )--����������
	MisBeginTalk( "<t>��� �� ������� ���� ������ ����, ��� ��������� ����, ��������� ��� ��� � � ������ ��� ������� ������ ���� " )
				
	MisBeginCondition(NoMission, 1227)
	MisBeginCondition(NoRecord,1227)
	MisBeginCondition(HasRecord, 1212)
	MisBeginAction(AddMission,1227)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ����� ���� ������� � �����(2423,3186)������� ����� ������." )
	
	MisHelpTalk( "<t>�� ����� ��� ����� ������� � ����� � �� ����? ��� ���� �� �� ����� ����..." )
	MisResultCondition(AlwaysFailure)	

	-----------------------------------------�������

	DefineMission( 6162, "\206\233! \205\229\242 \234\235\254\247\224!", 1227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�� ����� ��� �� ��� ������� �� �������...." )
	MisResultCondition(NoRecord, 1227)
	MisResultCondition(HasMission,1227)
	MisResultAction(ClearMission,1227)
	MisResultAction(SetRecord, 1227)



	--------------------------------------------------------------------�������� ��� ���� �������

	DefineMission( 6163, "\207\238\236\238\248\237\232\234 \228\235\255 \204\232\241\241 \192\234\232\248\232\236\232", 1228 )
	MisBeginTalk( "<t>� ������ ���� ��� �������, ��� � �� ��� ��������. ������� ������� ������������ ���. ������ ��� �� ��� ���������� � ������� ���� �������." )
	MisBeginCondition(NoMission, 1228)
	MisBeginCondition(NoRecord,1228)
	MisBeginCondition(HasRecord, 1227)
	MisBeginAction(AddMission,1228)
	MisBeginAction(AddTrigger, 12281, TE_GETITEM, 0154, 20)--������� ��������� ������
	MisBeginAction(AddTrigger, 12282, TE_GETITEM, 0156, 20)--������� ��������� �����������
	MisBeginAction(AddTrigger, 12283, TE_GETITEM, 0158, 20)--������� ��������� ���������
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������." )

	MisNeed(MIS_NEED_DESP, " ������ ������� � ��������� � ���� �������������� ������:<b20 ������ ��������� ������>, <b20 ������ ��������� �����������> � <b 20 ������ ��������� ���������>." )
	MisNeed(MIS_NEED_ITEM, 0154, 20, 1, 20)
	MisNeed(MIS_NEED_ITEM, 0156, 20, 21, 20)
	MisNeed(MIS_NEED_ITEM, 0158, 20, 41, 20)

	MisHelpTalk( "<t>������ �������������� ����� �������� �������� � ������." )
	MisResultTalk( "<t>�� ������������� ��������� �����. ������� ���." )

	MisResultCondition(HasMission, 1228)
	MisResultCondition(NoRecord,1228)
	MisResultCondition(HasItem, 0154, 20)
	MisResultCondition(HasItem, 0156, 20)
	MisResultCondition(HasItem, 0158, 20)

	MisResultAction(TakeItem, 0154, 20 )
	MisResultAction(TakeItem, 0156, 20 )
	MisResultAction(TakeItem, 0158, 20 )
	
	MisResultAction(ClearMission, 1228)
	MisResultAction(SetRecord, 1228)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 0154)	
	TriggerAction( 1, AddNextFlag, 1228, 1, 20 )
	RegCurTrigger( 12281 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0156)	
	TriggerAction( 1, AddNextFlag, 1228, 36, 20 )
	RegCurTrigger( 12282 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0158)	
	TriggerAction( 1, AddNextFlag, 1228, 71, 20 )
	RegCurTrigger( 12283 )

--------------------------------------------------------------------������� ��� ����

	DefineMission( 6164, "\202\238\236\244\238\240\242 \228\235\255 \196\243\248\232", 1229 )
	MisBeginTalk( "<t>�� �������� �� �� ��� ���? ��� �� ����� ��� �������, �� ��������� ��� <b50 ������ ��������� �����> � <b50 �������� ���������� �����>." )
	MisBeginCondition(NoMission, 1229)
	MisBeginCondition(NoRecord,1229)
	MisBeginCondition(HasRecord, 1228)
	MisBeginAction(AddMission,1229)
	MisBeginAction(AddTrigger, 12291, TE_GETITEM, 3436, 50)
	MisBeginAction(AddTrigger, 12292, TE_GETITEM, 3434, 50)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ��������� ������� <b50 ������ ��������� �����> � <b50 �������� ���������� �����>." )
	MisNeed(MIS_NEED_ITEM, 3436, 50, 1, 50)
	MisNeed(MIS_NEED_ITEM, 3434, 50, 51, 50)


	MisHelpTalk( "<t>������������� � ���������� �����." )
	MisResultTalk( "<t>� ���� ������, � ��, ��� � ��� ������ ���, ��� ����������." )

	MisResultCondition(HasMission, 1229)
	MisResultCondition(NoRecord,1229)
	MisResultCondition(HasItem, 3436, 50)
	MisResultCondition(HasItem, 3434, 50)

	MisResultAction(TakeItem, 3436, 50 )
	MisResultAction(TakeItem, 3434, 50 )

	MisResultAction(GiveItem, 3674,1,4)----------����
	MisResultAction(ClearMission, 1229)
	MisResultAction(SetRecord, 1229)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436)	
	TriggerAction( 1, AddNextFlag, 1229, 1, 50 )
	RegCurTrigger( 12291 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434)	
	TriggerAction( 1, AddNextFlag, 1229, 51, 50 )
	RegCurTrigger( 12292 )

----------------------------------------------------������� �������� ����������� �����

	DefineMission( 6165, "\194\229\235\232\234\238\229 \238\242\234\240\251\242\232\229 \204\224\227\232\247\229\241\234\238\227\238 \231\224\236\234\224", 1230 )
	MisBeginTalk( "<t>������ ������ �� � ������ ���� ������." )
				
	MisBeginCondition(NoMission, 1230)
	MisBeginCondition(NoRecord,1230)
	MisBeginCondition(HasRecord, 1229)
	MisBeginAction(AddMission,1230)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������." )

	MisNeed(MIS_NEED_DESP, " ����� � ������ � �����(2229,2782)." )
	
	MisHelpTalk( "<t>����� ��� �� ���������, ��� �� �������� ���������� �����..." )
	MisResultCondition(AlwaysFailure)

	-----------------------------------------

	DefineMission( 6166, "\194\229\235\232\234\238\229 \238\242\234\240\251\242\232\229 \204\224\227\232\247\229\241\234\238\227\238 \231\224\236\234\224", 1230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>�� �������� ��� ���� � ������ ����? ������ �� ���������� ���������� ������, ��� �������� ���������� ������?" )
	MisResultCondition(NoRecord, 1230)
	MisResultCondition(HasMission,1230)
	MisResultCondition(HasItem, 3673, 1)
	MisResultCondition(HasItem, 3674, 1)
	MisResultAction(TakeItem, 3673, 1 )
	MisResultAction(TakeItem, 3674, 1 )
	MisResultAction(GiveItem, 3672,1,4)----------������ ����
	MisResultAction(ClearMission,1230)
	MisResultAction(SetRecord, 1230)
	MisResultBagNeed(1)

	MisResultAction(ClearRecord, 1212)---------------
	MisResultAction(ClearRecord, 1213)---------------
	MisResultAction(ClearRecord, 1214)---------------
	MisResultAction(ClearRecord, 1215)---------------
	MisResultAction(ClearRecord, 1216)---------------
	MisResultAction(ClearRecord, 1217)---------------
	MisResultAction(ClearRecord, 1218)---------------
	MisResultAction(ClearRecord, 1219)---------------
	MisResultAction(ClearRecord, 1220)---------------
	MisResultAction(ClearRecord, 1221)---------------
	MisResultAction(ClearRecord, 1222)---------------
	MisResultAction(ClearRecord, 1223)---------------
	MisResultAction(ClearRecord, 1224)---------------
	MisResultAction(ClearRecord, 1225)---------------
	MisResultAction(ClearRecord, 1226)---------------�
	MisResultAction(ClearRecord, 1227)---------------�
	MisResultAction(ClearRecord, 1228)---------------�
	MisResultAction(ClearRecord, 1229)---------------�
	MisResultAction(ClearRecord, 1230)---------------�


--------------------------------------------------------������ ��������
	
	DefineMission( 6167, "\209\236\229\235\251\233 \239\238\241\242\243\239\238\234", 1231 )
	MisBeginTalk( "<t>�����. �� ����������� ������� ��������, �� �� ������. ������ �� �� ������ ������ ������ ������ ��������, ��������� ������� �� ������� ������������.<n><t>�� ��� �� ��������� ���� �� ������� �������� �����?<n><t>��� ���� ��������� ���������: ���� <r30 ������� ��������>!" )
	MisBeginCondition( LvCheck, ">", 54)
	MisBeginCondition( LvCheck, "<", 57)
	MisBeginCondition( NoMission, 1231)
	MisBeginCondition( NoRecord, 1231)
	MisBeginAction( AddMission, 1231)
	MisBeginAction( AddTrigger, 12311, TE_KILL, 514, 30 )
	MisCancelAction(ClearMission, 1231)

	MisNeed(MIS_NEED_KILL, 514, 30, 10, 30)
	
	MisResultTalk( "<t>� ����� � ���� ����������� �����. ���� �� ����?.. �, ������ ��� ���� �������, ���� �� ��� �������� �������� ����... � ����� �� ������ ��� ���� ������!" )
	MisHelpTalk("<t>����� ������� �������� � �����(440,1320) ������." )
	MisResultCondition( HasFlag, 1231, 39 )
	MisResultCondition( HasMission, 1231)
	MisResultCondition( NoRecord, 1231)
	MisResultAction( ClearMission, 1231)
	MisResultAction( SetRecord, 1231)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney, 260)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 514 )	
	TriggerAction( 1, AddNextFlag, 1231, 10, 30 )
	RegCurTrigger(12311)

	----------------------------------------������ ��������

	DefineMission( 6168, "\209\236\229\235\251\233 \239\238\241\242\243\239\238\234", 1232 )
	MisBeginTalk( "<t>�� ������ ������ ��� ����! ������ � ���� ���� ��� ���� ������ �������: ���� <r50 �������-����������>! � ������ ��� ����� ����� �� ������� ���!" )
	MisBeginCondition( NoMission, 1232)
	MisBeginCondition( NoRecord, 1232)
	MisBeginCondition( HasRecord, 1231)
	MisBeginAction( AddMission, 1232)
	MisBeginAction( AddTrigger, 12321, TE_KILL, 284, 50 )
	MisCancelAction( ClearMission, 1232)

	MisNeed( MIS_NEED_KILL, 284, 50, 10, 50)

	MisResultTalk( "<t>�� �������! �� ������ ��� ���� �����!" )
	MisHelpTalk( "<t>����� ������� � �����(904,1280)." )
	MisResultCondition( HasMission, 1232)
	MisResultCondition( NoRecord, 1232)
	MisResultCondition( HasFlag, 1232, 59)
	MisResultAction( ClearMission, 1232)
	MisResultAction( SetRecord, 1232)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney, 1500)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 284 )	
	TriggerAction( 1, AddNextFlag, 1232, 10, 50 )
	RegCurTrigger(12321)

	----------------------------------------

	DefineMission( 6169, "\209\236\229\235\251\233 \239\238\241\242\243\239\238\234", 1233 )
	MisBeginTalk( "<t>����� ������! �� ����� ������ �� ���?! ��, ��� � ���� ���� �������?! �� - � ���� ���� ��� ���� ������: ���� <r10 ���������� �����������> � ������� ��� <p50 ���������� �������>!" )
	MisBeginCondition( NoMission, 1233)
	MisBeginCondition( NoRecord, 1233)
	MisBeginCondition( HasRecord, 1232)
	MisBeginAction( AddMission, 1233)
	MisBeginAction( AddTrigger, 12331, TE_KILL, 65, 10 )
	MisBeginAction( AddTrigger, 12332, TE_GETITEM, 1783, 50)
	MisCancelAction( ClearMission, 1233)

	MisNeed( MIS_NEED_KILL, 65, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 1783, 50, 20, 50)

	MisResultTalk( "<t>����� - �� �����! � ������ �� ��� �� ���� �����������! ������ ����� ��� ������ � ����.<n><t>� ������ ���� � ������ � �������!" )
	MisHelpTalk( "<t>���� �� �� ������ ��������� �� �������, ������ ����� �� ���� ����������, �� ����� � ���� ����������� ������� ��� ����.<n><t>�� ����� ���� ����������. � ���� ���� �� �� ����� ��� �������." )
	MisResultCondition( HasMission, 1233)
	MisResultCondition( NoRecord, 1233)
	MisResultCondition( HasFlag, 1233, 19)
	MisResultCondition( HasItem, 1783, 50)
	MisResultAction( TakeItem, 1783, 50)
	MisResultAction( ClearMission, 1233)
	MisResultAction( SetRecord, 1233)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney , 5000)
	MisResultAction( AddExpAndType, 2, 80000, 80000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 65)
	TriggerAction(1, AddNextFlag, 1233, 10, 10)
	RegCurTrigger(12331)

	InitTrigger()
	TriggerCondition(1, IsItem, 1783)
	TriggerAction(1, AddNextFlag, 1233, 20, 50)
	RegCurTrigger(12332)

	----------------------------------------------������ ������

	DefineMission( 6170, "\207\229\240\226\224\255 \203\254\225\238\226\252", 1234 )
	MisBeginTalk( "<t>������ ��� � ���� �������, �����." )
	MisBeginCondition( NoMission, 1234)
	MisBeginCondition( NoRecord, 1234)
	MisBeginCondition( HasRecord, 1233)
	MisBeginAction( AddMission, 1234)
	MisBeginAction( GiveItem, 2671, 1, 4)
	MisBeginAction( AddTrigger, 12341, TE_GETITEM, 2671, 1)--������ ��������

	MisBeginAction( AddTrigger, 12343, TE_GETITEM, 3361, 89)--���������
	MisCancelAction( ClearMission, 1234)
	MisBeginBagNeed(1)

	MisHelpTalk( "<t>�������!" )
	MisNeed( MIS_NEED_DESP, " ���� �� ������������� ��� �������, �����, ��� � ���� ����� �������, �� ������� ���: <b1 ������ ��� ��������> ���� <b������> � <b89 ��������>." )
	MisNeed( MIS_NEED_ITEM, 2671, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 4503, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 3361, 89, 30, 89)

	MisResultCondition( AlwaysFailure )

	---------------------------------------------

	DefineMission( 6171, "\207\229\240\226\224\255 \203\254\225\238\226\252", 1234, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>������� ���� �����.<n><t>��� ���� � ���� ���� ���������������." )
	MisResultCondition( HasItem, 2671, 1)
	MisResultCondition( HasItem, 4503, 1)
	MisResultCondition( HasItem, 3361, 89)
	MisResultCondition( HasMission, 1234)
	MisResultCondition( NoRecord, 1234)
	MisResultAction( TakeItem, 2671, 1)
	MisResultAction( TakeItem, 4503, 1)
	MisResultAction( TakeItem, 3361, 89)
	MisResultAction( ClearMission, 1234)
	MisResultAction( SetRecord, 1234)
	MisResultAction( AddExpPer, 2)
	MisResultAction( AddMoney, 300000)
	MisResultAction( AddReadingBook )                       ------�����������

	InitTrigger()
	TriggerCondition(1, IsItem, 2671)
	TriggerAction(1, AddNextFlag, 1234, 10, 1)
	RegCurTrigger(12341)

	InitTrigger()
	TriggerCondition(1, IsItem, 4503)
	TriggerAction(1, AddNextFlag, 1234, 20, 1)
	RegCurTrigger(12342)

	InitTrigger()
	TriggerCondition(1, IsItem, 3361)
	TriggerAction(1, AddNextFlag, 1234, 30, 89)
	RegCurTrigger(12343)


	-------------------------------------------------------

	DefineMission( 6172, "\207\229\240\226\224\255 \203\254\225\238\226\252", 1235 )
	MisBeginTalk( "<t>��� ����� ���� - ��� ����� �����. ������� �� �� �� ������, ����� �� ������ ����� �� �����." )
	MisBeginCondition( NoMission, 1235)
	MisBeginCondition( NoRecord, 1235)
	MisBeginCondition( HasRecord, 1234)
	MisBeginAction( AddMission, 1235)
	MisCancelAction( ClearMission, 1235)

	MisHelpTalk( "<t>����� ��������� ������ -������� �� ������� ����� ��� ���������� ��������." )
	MisNeed( MIS_NEED_DESP, " ����� ��������� ������ -������� �� ������� ����� " )

	MisResultCondition( AlwaysFailure )

	--------------------------------------------------------

	DefineMission( 6173, "\207\229\240\226\224\255 \203\254\225\238\226\252", 1235, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>������ �����! ����� � ����... ��� ���� ���� �� ����?" )
	MisResultCondition( HasMission, 1235)
	MisResultCondition( NoRecord, 1235)
	MisResultAction( ClearMission, 1235)
	MisResultAction( SetRecord, 1235)
	MisResultAction( AddMoney, 88)

	MisResultAction(ClearRecord, 1231)---------------�
	MisResultAction(ClearRecord, 1232)---------------�
	MisResultAction(ClearRecord, 1233)---------------�
	MisResultAction(ClearRecord, 1234)---------------�
	MisResultAction(ClearRecord, 1235)---------------�

	-------------------------------����� ��������

	DefineMission( 6174, "\194\240\229\236\255 \225\238\227\224\242\229\242\252", 1236 )
	MisBeginTalk( "<t>������ ��� ������� ������. ����� �� �� ������� �� �������� ����, �����, ����� � �����.<n><t>������ ������ �� ������ ������ � ���� ����� ������ �� 50 000 ������." )
	MisBeginCondition( NoMission, 1236)
	MisBeginCondition( NoRecord, 1236)
	MisBeginCondition( LvCheck, "<", 80)
	MisBeginAction( AddMission, 1236)
	MisBeginAction( AddTrigger, 12361, TE_GETITEM, 2969, 1)--������ �������� �����
	MisBeginAction( AddTrigger, 12362, TE_GETITEM, 2970, 1)--����
	MisBeginAction( AddTrigger, 12363, TE_GETITEM, 2971, 1)--�����
	MisBeginAction( AddTrigger, 12364, TE_GETITEM, 2972, 1)--�����
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed( MIS_NEED_DESP, " �������� ��� ������." )
	MisNeed( MIS_NEED_ITEM, 2969, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 2970, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 2971, 1, 30, 1)
	MisNeed( MIS_NEED_ITEM, 2972, 1, 40, 1)

	MisResultTalk( "<t>� ��� 4 ������ - ��� �������." )
	MisHelpTalk( "<t>������������� �� �������: ����, �����, ����� � �����!" )
	MisResultCondition( HasMission, 1236)
	MisResultCondition( NoRecord, 1236)
	MisResultCondition( HasItem, 2969, 1)
	MisResultCondition( HasItem, 2970, 1)
	MisResultCondition( HasItem, 2971, 1)
	MisResultCondition( HasItem, 2972, 1)
	MisResultAction( TakeItem, 2969, 1)
	MisResultAction( TakeItem, 2970, 1)
	MisResultAction( TakeItem, 2971, 1)
	MisResultAction( TakeItem, 2972, 1)
	MisResultAction( ClearMission, 1236)
	MisResultAction( SetRecord, 1236)
--	MisResultAction( AddExpNextLv1 )--��������� ������� ������(�����)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2969)	
	TriggerAction( 1, AddNextFlag, 1236, 10, 1 )
	RegCurTrigger( 12361 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2970)	
	TriggerAction( 1, AddNextFlag, 1236, 20, 1 )
	RegCurTrigger( 12362 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2971)	
	TriggerAction( 1, AddNextFlag, 1236, 30, 1 )
	RegCurTrigger( 12363 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2972)	
	TriggerAction( 1, AddNextFlag, 1236, 40, 1 )
	RegCurTrigger( 12364 )

---------------------------------

	DefineMission( 6175, "\194\240\229\236\255 \225\238\227\224\242\229\242\252", 1237 )
	MisBeginTalk( "<t>������ ��� ������ �������� � ��������!")
	MisBeginCondition( NoMission, 1237)
	MisBeginCondition( NoRecord, 1237)
	MisBeginCondition( LvCheck, "<", 90)
	MisBeginAction( AddMission, 1237)
	MisBeginAction( AddTrigger, 12371, TE_GETITEM, 2969, 1)
	MisBeginAction( AddTrigger, 12372, TE_GETITEM, 2970, 1)
	MisBeginAction( AddTrigger, 12373, TE_GETITEM, 2971, 1)
	MisBeginAction( AddTrigger, 12374, TE_GETITEM, 2972, 1)
	MisBeginAction( AddTrigger, 12375, TE_GETITEM, 2973, 1)
	MisBeginAction( AddTrigger, 12376, TE_GETITEM, 2974, 1)
	MisBeginAction( AddTrigger, 12377, TE_GETITEM, 2975, 1)
	MisBeginAction( AddTrigger, 12378, TE_GETITEM, 2976, 1)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed( MIS_NEED_DESP, " ������������� �� �������: ����, �����, ����� � ����� " )
	MisNeed( MIS_NEED_ITEM, 2969, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 2970, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 2971, 1, 30, 1)
	MisNeed( MIS_NEED_ITEM, 2972, 1, 40, 1)
	MisNeed( MIS_NEED_ITEM, 2973, 1, 50, 1)
	MisNeed( MIS_NEED_ITEM, 2974, 1, 60, 1)
	MisNeed( MIS_NEED_ITEM, 2975, 1, 70, 1)
	MisNeed( MIS_NEED_ITEM, 2976, 1, 80, 1)

	MisResultTalk( "<t>������� ��� ������������!" )
	MisHelpTalk( "<t>������������� �� �������: ����, �����, ����� � �����." )
	MisResultCondition( HasMission, 1237)
	MisResultCondition( NoRecord, 1237)
	MisResultCondition( HasItem, 2969, 1)
	MisResultCondition( HasItem, 2970, 1)
	MisResultCondition( HasItem, 2971, 1)
	MisResultCondition( HasItem, 2972, 1)
	MisResultCondition( HasItem, 2973, 1)
	MisResultCondition( HasItem, 2974, 1)
	MisResultCondition( HasItem, 2975, 1)
	MisResultCondition( HasItem, 2976, 1)
	MisResultAction( TakeItem, 2969, 1)
	MisResultAction( TakeItem, 2970, 1)
	MisResultAction( TakeItem, 2971, 1)
	MisResultAction( TakeItem, 2972, 1)
	MisResultAction( TakeItem, 2973, 1)
	MisResultAction( TakeItem, 2974, 1)
	MisResultAction( TakeItem, 2975, 1)
	MisResultAction( TakeItem, 2976, 1)
	MisResultAction( ClearMission, 1237)

	MisResultAction( SetRecord, 1237)
--	MisResultAction( AddExpNextLv2 )--��������� ������� ������(�����)
	MisResultAction(ClearRecord, 1236)---------------�
	MisResultAction(ClearRecord, 1237)---------------�
	MisResultAction(ClearRecord, 1238)---------------�
	MisResultAction(ClearRecord, 1239)---------------�
	MisResultAction(ClearRecord, 1240)---------------�
	MisResultAction(ClearRecord, 1241)---------------�
	MisResultAction(ClearRecord, 1242)---------------�
	MisResultAction(ClearRecord, 1243)---------------�
	MisResultAction(ClearRecord, 1244)---------------�
	MisResultAction(ClearRecord, 1245)---------------�
	MisResultAction(ClearRecord, 1246)---------------�

	InitTrigger()
	TriggerCondition( 1, IsItem, 2969)	
	TriggerAction( 1, AddNextFlag, 1237, 10, 1 )
	RegCurTrigger( 12371 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2970)	
	TriggerAction( 1, AddNextFlag, 1237, 20, 1 )
	RegCurTrigger( 12372 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2971)	
	TriggerAction( 1, AddNextFlag, 1237, 30, 1 )
	RegCurTrigger( 12373 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2972)	
	TriggerAction( 1, AddNextFlag, 1237, 40, 1 )
	RegCurTrigger( 12374 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2973)	
	TriggerAction( 1, AddNextFlag, 1237, 50, 1 )
	RegCurTrigger( 12375 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2974)	
	TriggerAction( 1, AddNextFlag, 1237, 60, 1 )
	RegCurTrigger( 12376 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2975)	
	TriggerAction( 1, AddNextFlag, 1237, 70, 1 )
	RegCurTrigger( 12377 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2976)	
	TriggerAction( 1, AddNextFlag, 1237,80, 1 )
	RegCurTrigger( 12378 )

----------------------------------�������� ������

	DefineMission( 6176, "\208\224\231\225\232\242\238\229 \241\229\240\228\246\229", 1238 )
	MisBeginTalk( "<t>� ����� ���� ������������ ����, �� � ������ ��� ������ �� ����, � � �� ����, ��� ��� ������. ������������� � ������ � ����� �������, �������� �� �����, ��� ������." )
	MisBeginCondition( NoMission, 1238)
	MisBeginCondition( NoRecord, 1238)
	MisBeginCondition( HasMission, 1237)
	MisBeginAction( AddMission, 1238)
	MisBeginAction( AddTrigger, 12381, TE_GETITEM, 2965, 1)--����� ���
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed( MIS_NEED_DESP," ������������� � ������ � ������� � ����� (2256,2707) ����� �������. �������� ����� � ������������� � ����� (3734,2661)." )
	MisNeed( MIS_NEED_ITEM, 2965, 1, 10, 1)

	MisResultTalk( "<t>������� ����. ������ � ����� ������, ��� �������� � ������ ���� �������." )
	MisHelpTalk( "<t>��������� ��� �����!" )
	MisResultCondition( HasMission, 1238)
	MisResultCondition( NoRecord, 1238)
	MisResultCondition( HasItem, 2965, 1)
	MisResultAction( TakeItem, 2965, 1)
	MisResultAction( ClearMission, 1238)
	MisResultAction( SetRecord, 1238)
	MisResultAction( GiveItem, 2974, 1, 4)--
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2965)	
	TriggerAction( 1, AddNextFlag, 1238, 10, 1 )
	RegCurTrigger( 12381 )

----------------------------------�������� ������
	DefineMission( 6177, "\208\224\231\225\232\242\238\229 \241\229\240\228\246\229", 1239 )
	MisBeginTalk( "<t>� ��� ���� ������� ���� �� ��� �������� �������� <b2 ������ ���������>!!" )
	MisBeginCondition( HasMission, 1238)
	MisBeginCondition( NoRecord, 1239)
	MisBeginCondition( NoMission, 1239)
	MisBeginAction( AddMission, 1239)
	MisBeginAction( AddTrigger, 12391, TE_GETITEM, 3362, 2)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� ������� ������� " )

	MisNeed( MIS_NEED_DESP, " ��������� <b2 ׸���� ���������> � ������ ������� (2256,2707)." )
	MisNeed( MIS_NEED_ITEM, 3362, 2, 10, 2)

	MisResultTalk( "<t>��� ������ ����� ����� ���� ׸����� �������, ��� ��� ���������� ��� ����� ���������, ����� ����� ��������." )
	MisHelpTalk( "<t>�� ������ ��� � �� ����� ��������. ������������� � ��������� ��� 2 ׸���� ���������." )
	MisResultCondition( HasMission, 1239)
	MisResultCondition( NoRecord, 1239)
	MisResultCondition( HasItem, 3362, 2)
	MisResultAction( TakeItem, 3362, 2)
	MisResultAction( ClearMission, 1239)
	MisResultAction( SetRecord, 1239)
	MisResultAction( GiveItem, 2965, 1, 4)--��������
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3362)	
	TriggerAction( 1, AddNextFlag, 1239, 10, 2 )
	RegCurTrigger( 12391 )
	
---------------------------------������ ����

	DefineMission( 6178, "\211\240\238\230\224\233 \226\232\237\224", 1240 )
	MisBeginTalk( "<t>����� �� ������������� ����� ��� ��������� ������������ ����? ������� ��� ��������� ����!" )
	MisBeginCondition( NoMission, 1240)
	MisBeginCondition( NoRecord, 1240)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginAction( AddMission, 1240)
	MisBeginAction( AddTrigger, 12401, TE_GETITEM, 2977, 1)--����
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed( MIS_NEED_DESP, " ������������� � ����������� ���� � ������(1291,541). �������� ���� � ������������� �������(3734,2661)." )
	MisNeed( MIS_NEED_ITEM, 2977, 1, 10, 1)

	MisResultTalk( "<t>���� ����� ����� �� ����������." )
	MisHelpTalk( "<t>��������� ��� ����." )
	MisResultCondition( HasMission, 1240)
	MisResultCondition( NoRecord, 1240)
	MisResultCondition( HasItem, 2977, 1)
	MisResultAction( TakeItem, 2977, 1)
	MisResultAction( ClearMission, 1240)
	MisResultAction( SetRecord, 1240)
	MisResultAction( GiveItem, 2976, 1, 4)--�������� �����������
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2977)	
	TriggerAction( 1, AddNextFlag, 1240, 10, 1 )
	RegCurTrigger( 12401 )

---------------------------------������ ����

	DefineMission( 6179, "\211\240\238\230\224\233 \226\232\237\224", 1241 )
	MisBeginTalk( "<t>�� ������ �������� ������������� ����?! � ��� �� ������!<n><t>��������� ��� �� 3 ����� ��������: 'Pong', 'Jiang' � 'Hu'. ������ ����� � ��� ��� ����. �� � ���� �� �����. ��������� ��� 70 ������� ����(������ ��� ����� � ���� �������).")
	MisBeginCondition( NoMission, 1241)
	MisBeginCondition( NoRecord, 1241)
	MisBeginCondition( HasMission, 1240)
	MisBeginAction( AddMission, 1241)
	
	MisBeginAction( AddTrigger, 12411, TE_GETITEM, 0172, 3)--����� �������� 'Pong'
	MisBeginAction( AddTrigger, 12412, TE_GETITEM, 0173, 3)--����� �������� 'Jiang'
	MisBeginAction( AddTrigger, 12413, TE_GETITEM, 0174, 3)--����� �������� 'Hu'
	MisBeginAction( AddTrigger, 12414, TE_GETITEM, 3916, 70)--��������� ����
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed( MIS_NEED_DESP, " ��������� �� 3 �������� 'Pong', 'Jiang', 'Hu' � 70 ����." )
	
	MisNeed( MIS_NEED_ITEM, 0172, 3, 5, 3)
	MisNeed( MIS_NEED_ITEM, 0173, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 0174, 3, 15, 3)
	MisNeed( MIS_NEED_ITEM, 3916, 70, 20, 70)

	MisResultTalk( "<t>��� ���� �������� ����� ���������� ������." )
	MisHelpTalk( "<t> ��������� �� 3 �������� 'Pong', 'Jiang', 'Hu' � 70 ����." )
	MisResultCondition( HasMission, 1241)
	MisResultCondition( NoRecord, 1241)
	MisResultCondition( HasItem, 3916, 70)
	MisResultCondition( HasItem, 172, 3)
	MisResultCondition( HasItem, 173, 3)
	MisResultCondition( HasItem, 174, 3)
	MisResultAction( TakeItem, 3916, 70)
	MisResultAction( TakeItem, 172, 3)
	MisResultAction( TakeItem, 173, 3)
	MisResultAction( TakeItem, 174, 3)
	MisResultAction( GiveItem, 2967, 1)--����
	MisResultAction( ClearMission, 1241)
	MisResultAction( SetRecord, 1241)



	
	InitTrigger()
	TriggerCondition( 1, IsItem, 0172)	
	TriggerAction( 1, AddNextFlag, 1241, 5, 3 )
	RegCurTrigger( 12411 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0173)	
	TriggerAction( 1, AddNextFlag, 1241, 10, 3)
	RegCurTrigger( 12412 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0174)	
	TriggerAction( 1, AddNextFlag, 1241, 15, 3 )
	RegCurTrigger( 12413 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3916)	
	TriggerAction( 1, AddNextFlag, 1241, 20, 70 )
	RegCurTrigger( 12414 )
	
	
--------------------------------������ ����

	DefineMission( 6180, "\211\240\238\230\224\233 \226\232\237\224", 1242 )
	MisBeginTalk( "<t>��� ���������� ��� ��� ��� ��� ������ ����!" )
	MisBeginCondition( NoMission, 1242)
	MisBeginCondition( NoRecord, 1242)
	MisBeginCondition( HasRecord, 1241)
	MisBeginAction( AddMission, 1242)
	--MisBeginAction( AddChaHJ )--------�������� ���� 1440
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )
	MisBeginBagNeed(1)

	MisNeed( MIS_NEED_DESP, " ������� ���� �� ������ ������ ������ ���������, ����� ���� ��������." )
	
	MisResultTalk( "<t>�! ��� ����������." )
	MisHelpTalk( "<t>������ ���� ������ ����� ��������." )
	--MisResultCondition( CheckHJ )-----1 ������ ����������� 1 ����, � ��������� �� 0
	MisResultCondition( NoRecord, 1242)
	MisResultCondition( HasMission, 1242)
	MisResultAction( ClearMission, 1242)
	MisResultAction( SetRecord, 1242)
	MisResultAction( TakeItem, 2967, 1)
	MisResultAction( GiveItem, 2977, 1, 4)--����
	MisResultBagNeed(1)

----------------------------------����� ��������� ���

	DefineMission( 6181, "\207\238\232\241\234 \203\229\239\229\241\242\234\238\226 \240\238\231", 1243 )
	MisBeginTalk( "<t>� ����� ���� � ����� �������������� ������� �� ������ <p�������� ���>!" )
	MisBeginCondition( NoMission, 1243)
	MisBeginCondition( NoRecord, 1243)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginCondition( HasRecord, 1240)
	MisBeginAction( AddMission, 1243)
	MisBeginAction( AddTrigger, 12431, TE_GETITEM, 2968, 1)--�������� ���
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed( MIS_NEED_DESP, " ������������� � ������ � ����� (1142,576) � ��������� �� ���� <b�������� ���>." )
	MisNeed( MIS_NEED_ITEM, 2968, 1, 10, 1)

	MisResultTalk( "<t>��! ��� �� �� ����������! ������� ���� �����, ������ � ���� ��������������! " )
	MisHelpTalk( "<t>������� ��� �������� ���!" )
	MisResultCondition( HasMission, 1243)
	MisResultCondition( NoRecord, 1243)
	MisResultCondition( HasItem, 2968, 1)
	MisResultAction( ClearMission, 1243)
	MisResultAction( SetRecord, 1243)
	MisResultAction( TakeItem, 2968, 1)
	MisResultAction( GiveItem, 2973, 1, 4)--�������� ����
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2968)	
	TriggerAction( 1, AddNextFlag, 1243, 10, 1 )
	RegCurTrigger( 12431 )

----------------------------------

	DefineMission( 6182, "\207\238\232\241\234 \203\229\239\229\241\242\234\238\226 \240\238\231", 1244 )
	MisBeginTalk( "<t>� ��������� ������ ����� ����� �������� ��������, ��� �������� �� ����, ��� �� ��� �� ������.<n><t>������ ���, ��� �� �� �� ������ � ������� ��� ������ � ���������� ���������� ������." )
	MisBeginCondition( NoMission, 1244)
	MisBeginCondition( NoRecord, 1244)
	MisBeginCondition( HasMission, 1243)
	MisBeginAction( AddMission, 1244)
	MisBeginAction( AddTrigger, 12441, TE_GETITEM, 4259, 3)--����
	MisBeginAction( AddTrigger, 12442, TE_GETITEM, 1774, 3)--������� �������
	MisBeginAction( AddTrigger, 12443, TE_GETITEM, 1632, 3)--����������� ��������
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed( MIS_NEED_DESP, " ������������� � ������ � ��������� �� ���� <b3 �����>, <b3 ������� �������> � <b3 �������� ��������>. ������������� � ������� �����." )
	MisNeed( MIS_NEED_ITEM, 4259, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 1774, 3, 20, 3)
	MisNeed( MIS_NEED_ITEM, 1632, 3, 30, 3)

	MisResultTalk( "<t>�� ��������� �� �������� � �� ����� � ��� ��� �������� ���." )
	MisHelpTalk( "<t>������������� � ������ � ��������� �� ���� <b3 �����>, <b3 ������� �������> � <b3 �������� ��������>." )
	MisResultCondition( HasMission, 1244)
	MisResultCondition( NoRecord, 1244)
	MisResultCondition( HasItem, 4259, 3)
	MisResultCondition( HasItem, 1774, 3)
	MisResultCondition( HasItem, 1632, 3)
	MisResultAction( TakeItem, 4259, 3)
	MisResultAction( TakeItem, 1774, 3)
	MisResultAction( TakeItem, 1632, 3)
	MisResultAction( SetRecord, 1244)
	MisResultAction( ClearMission, 1244)
	MisResultAction( GiveItem, 2968, 1, 4)--�������� ���
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 3 )
	RegCurTrigger( 12441 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1774)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 1 )
	RegCurTrigger( 12442 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1632)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 1 )
	RegCurTrigger( 12443 )

---------------------------------����� �������� ������

	DefineMission( 6183, "\207\238\232\241\234 \234\240\224\241\232\226\251\245 \209\226\229\247\229\233", 1245 )
	MisBeginTalk( "<t>����� �� �������� ��� ������??? ����������� � ������(898,3683) � ������� � ������ ����� ������ ��� ����!" )
	MisBeginCondition( NoMission, 1245)
	MisBeginCondition( NoRecord, 1245)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginCondition( HasRecord, 1240)
	MisBeginCondition( HasRecord, 1243)
	MisBeginAction( AddMission, 1245)
	MisBeginAction( AddTrigger, 12451, TE_GETITEM, 2966, 1)--�������� ������
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )
	
	MisNeed( MIS_NEED_DESP, " ����� ������ ����� � ������� " )
	MisNeed( MIS_NEED_ITEM, 2966, 1, 10, 1)

	MisResultTalk( "<t>�������� �� ������ ������..." )
	MisHelpTalk( "<t>�� ����� ��� �������� ��� ������?" )
	MisResultCondition( HasMission, 1245)
	MisResultCondition( NoRecord, 1245)
	MisResultCondition( HasItem, 2966, 1)
	MisResultAction( TakeItem, 2966, 1)
	MisResultAction( SetRecord, 1245)
	MisResultAction( ClearMission, 1245)
	MisResultAction( GiveItem, 2975, 1, 4)--��������
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2966)	
	TriggerAction( 1, AddNextFlag, 1245, 10, 1 )
	RegCurTrigger( 12451 )

----------------------------------����� �������� ������

	DefineMission( 6184, "\207\238\232\241\234 \234\240\224\241\232\226\251\245 \209\226\229\247\229\233", 1246)
	MisBeginTalk( "<t>� ������ ������� �������� ��������, �� ��� ���� ��� ���������� 2 ��������� ������ � 2 ��������� �����.<n><t>��� �������� ����� �������� �� ������� ����." )
	MisBeginCondition( NoMission, 1246)
	MisBeginCondition( NoRecord, 1246)
	MisBeginCondition( HasMission, 1245)
	MisBeginAction( AddMission, 1246)
	MisBeginAction( AddTrigger, 12461, TE_GETITEM, 3367,2)
	MisBeginAction( AddTrigger, 12462, TE_GETITEM, 3380,2)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed( MIS_NEED_DESP, " ��������� ������ ����� <b2 ��������� ������> � <b2 ��������� �����>." )
	MisNeed( MIS_NEED_ITEM, 3367, 2, 10, 2)
	MisNeed( MIS_NEED_ITEM, 3380, 2, 20, 2)

	MisResultTalk( "<t>��� ��������� ����, �� �������� ����� ����� ��������. ��� ���� ������." )
	MisHelpTalk( "<t>���� � �� ������ �� � ��� � �������� � ���� ������ ������... �����." )
	MisResultCondition( HasMission, 1246)
	MisResultCondition( NoRecord, 1246)
	MisResultCondition( HasItem, 3367, 2)
	MisResultCondition( HasItem, 3380, 2)
	MisResultAction( TakeItem, 3380, 2)
	MisResultAction( TakeItem, 3367, 2)
	MisResultAction( SetRecord, 1246)
	MisResultAction( ClearMission, 1246)
	MisResultAction( GiveItem, 2966, 1, 4)
	MisResultAction( GiveItem, 2969, 1, 4)

	MisResultBagNeed(1)

        InitTrigger()
	TriggerCondition( 1, IsItem, 3367)	
	TriggerAction( 1, AddNextFlag, 1246, 10, 2 )
	RegCurTrigger( 12461 )

	 InitTrigger()
	TriggerCondition( 1, IsItem, 3380)	
	TriggerAction( 1, AddNextFlag, 1246, 20, 2 )
	RegCurTrigger( 12462 )

------------------------������� ������� ����--

	DefineMission( 6185, "\207\240\238\226\238\228\251 \209\242\224\240\238\227\238 \227\238\228\224", 1247 )
	MisBeginTalk( "<t>����� ���... �������� ����� ���� ����� � �� ������ ������� � �� ������� �����... ���� ���� �������� � ��� � ����, �� �� ���� ������ ��������. ������ ��� � � ���������� ����." )
	MisBeginCondition( NoMission, 1247)
	MisBeginCondition( NoRecord, 1247)
	MisBeginCondition( HasItem, 2878, 1)
	MisBeginAction( TakeItem, 2878, 1)--����������� ���������� ��������
	MisBeginAction( AddMission, 1247)
	MisBeginAction( CreatBBBB, 929 )
	MisCancelAction( ClearMission, 1247)

	MisHelpTalk( "<t>����<rһСʱ�ڽ�ʥ��С�����͵����ض�>��,�ǵ�Ҫ<rͽ��>�ߵ���������Ӫ�ز���վ(2111,557),�κ�<r��ת��ͼ��ʹ�û�Ʊ���뿪�����͵�NPC��Ұ��Χ>����Ϊ�������ʥ��С���˵Ķ�ʧ.�м�!")
	MisNeed( MIS_NEED_DESP, "����<rһСʱ�ڽ�ʥ��С�����͵�����˹Ī˹>��,�ǵ�Ҫ<rͽ��>�ߵ���������Ӫ�ز���վ(2111,557).Ϊ��ʥ�����˵İ�ȫ,�벻Ҫ<r��ת��ͼ��ʹ�û�Ʊ�����ߡ��뿪�����͵�NPC��Ұ��Χ>��.<b������ֻ�ܽ�ȡһ��,�жϻ���ɻ����ʸ�֤����ʧ,Ҫ����Ŷ>.")

	MisResultCondition( AlwaysFailure )


--------------------------------------------------------����ʥ������--------��������Ӫ�ز���վ(2111,557)
	DefineMission( 6186, "����ʥ��С����", 1247, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>лл��.�ҵļٺ��ӻ��ܱ����.�Ǻ�")
	MisResultCondition( HasMission, 1247)
	MisResultCondition( NoRecord, 1247)
	MisResultAction( CheckBBBB)
	MisResultAction( ClearMission, 1247)
	MisResultAction( SetRecord, 1247)
	MisResultAction( GiveItem, 2888, 1, 4)
	MisResultAction( GiveItem, 2889, 1, 4)
	MisResultAction( GiveItem, 3240, 1, 4)
	MisResultBagNeed(3)
	
----------------------------------------------------
--		�������������� �������
--				����
----------------------------------------------------


----------------------------������� �����

	DefineMission( 6187, "\194\229\235\232\234\224\255 \238\245\238\242\224", 1248)
	MisBeginTalk( "<t>������ �� ��� �� ���������� �� ����? � ��� ����������� �� ���� ������!<n><t>������������� � ������ ������� � ��������� ��� <p100 ������ �������>.")
	MisBeginCondition( NoMission, 1248)
	MisBeginCondition( NoRecord, 1248)
	MisBeginAction( AddMission, 1248)
	MisBeginAction(AddTrigger, 12481, TE_GETITEM, 2879, 100 )--����� �������
	MisCancelAction( ClearMission, 1248)

	MisNeed(MIS_NEED_ITEM, 2879, 100, 10, 100 )
	MisHelpTalk( "<t>� ��� �� ��������? ����� �������? � �� ����, ��� �� �� ��� �������� 100 ������ �������!")

	MisResultTalk( "<t>��� �� �������, ��� ����� �� ����� - ��� ���� �������?")
	MisResultCondition( HasMission, 1248)
	MisResultCondition( NoRecord, 1248)
	MisResultCondition( HasItem, 2879, 100)
	MisResultAction( TakeItem, 2879, 100)
	MisResultAction( GiveItem, 2882, 1, 4)--�������������� �������
	MisResultAction( CpHuojiNum )-----------+100
	MisResultAction( ClearMission, 1248)
	MisResultAction( SetRecord, 1248)
	MisResultAction( ClearRecord, 1248)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2879)	
	TriggerAction( 1, AddNextFlag, 1248, 10, 100 )
	RegCurTrigger( 12481 )

------------------------------������� ����� �� ����	
	DefineMission( 6188, "\193\238\235\252\248\224\255 \238\245\238\242\224 \237\224 \235\238\241\255", 1249)
	MisBeginTalk( "<t>������ �� ��� �� ���������� �� ����? � ��� ����������� �� ���� ������!<n><t>������������� � ������ ������� � ��������� ��� <p100 ������ ������� �����>.")
	MisBeginCondition( NoMission, 1249)
	MisBeginCondition( NoRecord, 1249)
	MisBeginAction( AddMission, 1249)
	MisBeginAction(AddTrigger, 12491, TE_GETITEM, 2881, 100 )--������ ������ ����
	MisCancelAction( ClearMission, 1249)

	MisNeed(MIS_NEED_ITEM, 2881, 100, 10, 100 )
	MisHelpTalk( "<t>� ��� �� ��������? ����� �������? � �� ����, ��� �� �� ��� �������� ������ ������ ����!")

	MisResultTalk( "<t>��� �� �������, ��� ����� �� ����� - ��� ���� �������?")
	MisResultCondition( HasMission, 1249)
	MisResultCondition( NoRecord, 1249)
	MisResultCondition( HasItem, 2881, 100)
	MisResultAction( TakeItem, 2881, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpMiluNum )
	MisResultAction( ClearMission, 1249)
	MisResultAction( SetRecord, 1249)
	MisResultAction( ClearRecord, 1249)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2881)	
	TriggerAction( 1, AddNextFlag, 1249, 10, 100 )
	RegCurTrigger( 12491 )

------------------------------������� �����	
	DefineMission( 6189, "\209\237\229\230\237\224\255 \206\245\238\242\224", 1250)
	MisBeginTalk( "<t>������ �� ��� �� ���������� �� ����? � ��� ����������� �� ���� ������!<n><t>������������� � ������ ������� � ��������� ��� <p100 ���� ���������>.")
	MisBeginCondition( NoMission, 1250)
	MisBeginCondition( NoRecord, 1250)
	MisBeginAction( AddMission, 1250)
	MisBeginAction(AddTrigger, 12501, TE_GETITEM, 2880, 100 )--���� ���������
	MisCancelAction( ClearMission, 1250)

	MisNeed(MIS_NEED_ITEM, 2880, 100, 10, 100 )
	MisHelpTalk( "<t>� ��� �� ��������? ����� �������? � �� ����, ��� �� �� ��� �������� 100 ���� ���������!")

	MisResultTalk( "<t>��� �� �������, ��� ����� �� ����� - ��� ���� �������?")
	MisResultCondition( HasMission, 1250)
	MisResultCondition( NoRecord, 1250)
	MisResultCondition( HasItem, 2880, 100)
	MisResultAction( TakeItem, 2880, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpXuerenNum )
	MisResultAction( ClearMission, 1250)
	MisResultAction( SetRecord, 1250)
	MisResultAction( ClearRecord, 1250)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2880)	
	TriggerAction( 1, AddNextFlag, 1250, 10, 100 )
	RegCurTrigger( 12501 )


--------------------�������������� ����������

------------------------------------------------------------������������� ���������

	DefineMission( 6190, "\208\238\228\229\241\242\226\229\237\241\234\238\229 \239\238\240\243\247\229\237\232\229 (1)", 1251)
	MisBeginTalk( "<t>������������� � �������������� ������� � ���������� � <p�������>.")
	MisBeginCondition( NoMission, 1251)
	MisBeginCondition( NoRecord, 1251)
	MisBeginAction( AddMission, 1251)
	MisCancelAction( ClearMission, 1251)

	MisNeed( MIS_NEED_DESP, " ���������� � <b�������> � <p�������������� �������> � ����� 220,41.")
	MisHelpTalk( "<t>�� ���������� � �������? � ��� � ���� ����? � ����� ���� ����� ���� �������� ��������!")
	
	MisResultCondition( AlwaysFailure )

-----------------������������� ���������(1)
	DefineMission( 6191, "\208\238\228\229\241\242\226\229\237\241\234\238\229 \239\238\240\243\247\229\237\232\229(1)", 1251, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>�����: �� �� ���? ����� ���������� � ��� � �������������� �������! � ����� ��� ����������� �������������� ����, ���� �� ���������! �������� � ������� �� ���� ����� � �������������� ������� � ���� ��������, � � ������� �� ������� ���������� ����� ������� � ������, � ������ ���� ��������... � ����� ����� ��������������� � ���������... ��������� � ��������������� ����������� � ������� ���, ��� ���������� �� ����." )
	MisResultCondition( HasMission, 1251)
	MisResultCondition( NoRecord, 1251)
	MisResultAction( SetRecord, 1251)
	MisResultAction( GiveItem, 2883, 2, 4)		--����� � �������������� �������
	MisResultAction( GiveItem, 2887, 1, 4 )		--���������� ��������
	MisResultAction( ClearMission, 1251)
	MisResultBagNeed(1)


-----------------������������� ���������(2)
	DefineMission( 6192, "\208\238\228\229\241\242\226\229\237\241\234\238\229 \239\238\240\243\247\229\237\232\229 (2)", 1252)
	MisBeginTalk( "<t>������������� � �������������� ������� � ���������� � <p������>.")
	MisBeginCondition( NoMission, 1252)
	MisBeginCondition( NoRecord, 1252)
	MisBeginAction( AddMission, 1252)
	MisCancelAction( ClearMission, 1252)

	MisNeed( MIS_NEED_DESP, " ���������� � <b������> � <p�������������� �������> � ����� 144,252.")
	MisHelpTalk( "<t>�� ��� ����������� � ������?" )
	
	MisResultCondition( AlwaysFailure )

-----------------������������� ���������(3)
	DefineMission( 6193, "\208\238\228\229\241\242\226\229\237\241\234\238\229 \239\238\240\243\247\229\237\232\229 (3)", 1252, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ʥ������!��ȥʥ����������?��Ҫ�ü�ë��¹�ǡ�ѩ��������Щ�����������õĶ�����?��֪��ɱ���𼦡���¹��ѩ�˻ᷢ��ʲô���º����?")
	MisResultCondition( HasMission, 1252)
	MisResultCondition( NoRecord, 1252)
	MisResultAction( SetRecord, 1252)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1252)
	MisResultBagNeed(1)

-----------------������������� ���������(4)
	DefineMission( 6194, "\208\238\228\229\241\242\226\229\237\241\234\238\229 \239\238\240\243\247\229\237\232\229 (4)", 1253)
	MisBeginTalk( "<t>���ɲ���һ����ͨ��ϴ�»���.����������ǵ�ʥ�����,������û�еط���ϴ,�Ǿ�ȥ������.")
	MisBeginCondition( NoMission, 1253)
	MisBeginCondition( NoRecord, 1253)
	MisBeginAction( AddMission, 1253)
	MisCancelAction( ClearMission, 1253)

	MisNeed( MIS_NEED_DESP, "ȥ��ʥ�����ʥ�����˵�ϴ�»�(84,37).")
	MisHelpTalk( "<t>ϴˢˢ~ϴˢˢ......")
	
	MisResultCondition( AlwaysFailure )

-----------------������������� ���������(5)
	DefineMission( 6195, "���̴����ʥ������(5)", 1253, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>����,����ʲôҪϴ����?��������̸.")
	MisResultCondition( HasMission, 1253)
	MisResultCondition( NoRecord, 1253)
	MisResultAction( SetRecord, 1253)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1253)
	MisResultBagNeed(1)

-----------------������������� ���������(6)
	DefineMission( 6196, "���̴����ʥ������(6)", 1254)
	MisBeginTalk( "<t>��������߼����ĵط�?��Ȼ��ʥ���ӻ���������,��������,������򽻵�û�к���.")
	MisBeginCondition( NoMission, 1254)
	MisBeginCondition( NoRecord, 1254)
	MisBeginAction( AddMission, 1254)
	MisCancelAction( ClearMission, 1254)

	MisNeed( MIS_NEED_DESP, "ȥ��ʥ�����ʥ���ӻ���(197,251).")
	MisHelpTalk( "<t>����ȥ��ʶһ��ʥ���ӻ���.")
	
	MisResultCondition( AlwaysFailure )

-----------------������������� ���������(7)
	DefineMission( 6197, "���̴����ʥ������(7)", 1254, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ʥ���񻶴�����!��������,�ȵ��ȵ�.")
	MisResultCondition( HasMission, 1254)
	MisResultCondition( NoRecord, 1254)
	MisResultAction( SetRecord, 1254)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1254)
	MisResultBagNeed(1)


-----------------������������� ���������(8)
	DefineMission( 6198, "���̴����ʥ������(8)", 1255)
	MisBeginTalk( "<t>���������ʥ����Ҫ������˱�ﰮ��Ļ���Ŷ.")
	MisBeginCondition( NoMission, 1255)
	MisBeginCondition( NoRecord, 1255)
	MisBeginAction( AddMission, 1255)
	MisCancelAction( ClearMission, 1255)

	MisNeed( MIS_NEED_DESP, "ȥ��ʥ�����ʥ�����ˡ������ҿ�(125,253).")
	MisHelpTalk( "<t>�����ҿ�!")
	
	MisResultCondition( AlwaysFailure )

-----------------������������� ���������(9)
	DefineMission( 6199, "���̴����ʥ������(9)", 1255, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>�����ҿ�!��ʶ�ҵ��Ǹ�ͬ����,�ҿ�����,��һ�����Լ�,���ֱ��˵��м���.")
	MisResultCondition( HasMission, 1255)
	MisResultCondition( NoRecord, 1255)
	MisResultAction( SetRecord, 1255)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1255)
	MisResultBagNeed(1)


-----------------������������� ���������(10)
	DefineMission( 6200, "���̴����ʥ������(10)", 1256)
	MisBeginTalk( "<t>ʥ���ڵ�����Ҫ������˭?����!��,��Ȼ,����һ����,����ʥ������Ŷ.")
	MisBeginCondition( NoMission, 1256)
	MisBeginCondition( NoRecord, 1256)
	MisBeginAction( AddMission, 1256)
	MisCancelAction( ClearMission, 1256)

	MisNeed( MIS_NEED_DESP, "ȥ��ʥ�����ʥ������(144,166)����.")
	MisHelpTalk( "<t>merry christmas!")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------���̴����ʥ������(��)-------------ʥ������(144,166)
	DefineMission( 6201, "���̴����ʥ������(11)", 1256, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>merry christmas!׼���������������?����,������ʥ����������ף�������ں�����Ŷ.")
	MisResultCondition( HasMission, 1256)
	MisResultCondition( NoRecord, 1256)
	MisResultAction( SetRecord, 1256)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1256)
	MisResultBagNeed(1)

------------------------------------------------------------------��������� ������������� ���������


-----------------------------------------------------------�þ�����------------�����ܽӵ�
	DefineMission( 6202, "�þ�", 1257)		------------ʥ������

	MisBeginTalk( "<t>���㿴����������ʱ����һ���ǲ����þ��ˣ������ң���û����.")
	MisBeginCondition( XmasNotice, 1 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1257)
	MisCancelAction( ClearMission, 1257)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6203, "�þ�", 1258)		------------ʥ������

	MisBeginTalk( "<t>���㿴����������ʱ����һ���ǲ����þ��ˣ������ң���û����.")
	MisBeginCondition( XmasNotice, 2 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1258)
	MisCancelAction( ClearMission, 1258)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6204, "�þ�", 1259)		------------�ƶ�

	MisBeginTalk( "<t>���㿴����������ʱ����һ���ǲ����þ��ˣ������ң���û����.")
	MisBeginCondition( XmasNotice, 3 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1259)
	MisCancelAction( ClearMission, 1259)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6205, "�þ�", 1260)		------------С��ķ

	MisBeginTalk( "<t>���㿴����������ʱ����һ���ǲ����þ��ˣ������ң���û����.")
	MisBeginCondition( XmasNotice, 4 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1260)
	MisCancelAction( ClearMission, 1260)

	MisResultCondition( AlwaysFailure )

	----------------------------------------------------------------------08���괺�ڻkokora-------------------------------------------------------------

	------------------------------------------------------------------------������[����ָ����ɪ��](2223,2785)-----------------------------------------------

        ------------------------------------------�����ִ������(һ)---------����������ָ��

	DefineMission(6205,"�����ִ������",1257)

	MisBeginTalk("<t>��������ӭ����,ɽ�亣ζ�н���.<n><t>�װ�������,���������������꼪��,����˳��!ǰ���տɰ���С����ٵ�������ڳ���Ϊ30����64����������ͺ��,һ�˽���һ�λ���,���˲��ɴ��!�Ͻ������������а�!���������뵽����������ָ����ɪ��(2223,2785)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1257)
	MisBeginAction(AddTrigger, 12571, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1257)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>ѧ��֪��,ѧ�����,���ܸ����Ҹ�!С����ٵ��ֻΪÿλ���׼����һ�����,��ȷ����������������Ҫ��ȡ����?��ô���ǿ�ʼ��!������������ɻ����ζ�ľ����,����Ĺ�֭��ٵ�����,����99���Ϳɵõ�ٵ�����ַ��Ƶ��������ֺ��,����ж�����!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------�����


	MisHelpTalk("<t>��˵������ľ�������϶��᳤����ζ����ľ����,99�������Ҳ�������ĵļ�֤!���Ͱ�!")
	MisResultTalk("<t>���������������������������,�򿪺��л��ʻ������������!")

	MisResultCondition(HasMission, 1257)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1257) 
	MisResultAction(SetRecord, 1257) 
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1257, 10, 99)
	RegCurTrigger(12571)

       ------------------------------------------�����ִ�����(��)---------����������ָ��

	DefineMission(6206,"�����ִ�����",1258)

	MisBeginTalk("<t>�������ﺣ����,��˳��������.<n><t>�װ�������,������������������˵�ͷ,��Դ����!ǰ���տɰ���С����ٵ�������ڳ���Ϊ65����84����������ͺ��,һ�˽���һ�λ���,���˲��ɴ��!�Ͻ������������а�!���������뵽����������ָ����ɪ��(2223,2785)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1258)
	MisBeginAction(AddTrigger, 12581, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1258)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>�Ͷ�����,�����������Ӣ��,���������ݺὭ���ĺ���!С����ٵ�����´�����֮��,������նɱɽ�����졤���߲���ȡ�����ϵ�ɽ������!�Դ�Ϊƾ�������ٵ�����������ĸ߼�������,��ʿ��!���������е�����,�ж�������!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------ɽ������


	MisHelpTalk("<t>��˵ɽ�����졤����ͨ����(����1038,3039)������û,�Ͻ�������,�ҵ���ʿ!")
	MisResultTalk("<t>��!����,û�뵽��ô�̵�ʱ��������������.����߼���������ٵ������Ľ���,�����������벻���ľ�ϲ�!")

	MisResultCondition(HasMission, 1258)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------�߼�������
	MisResultAction(ClearMission, 1258)                        
	MisResultAction(SetRecord, 1258)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1258, 10, 1)
	RegCurTrigger(12581)

	------------------------------------------�����ִ���ʢ��(��)---------����������ָ��

	DefineMission(6207,"�����ִ���ʢ��",1259)

	MisBeginTalk("<t> ��Ƿ�ë������ ,������ʴ����.<n><t>�װ�������,���������������꼪�Ǹ���,ǰ���ƽ�!ǰ���տɰ���С����ٵ�������ڳ���Ϊ85����100����������ͺ��,һ�˽���һ�λ���,���˲��ɴ��!�Ͻ������������а�!���������뵽����������ָ����ɪ��(2223,2785)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1259)
	MisBeginAction(AddTrigger, 12591, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1259)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>���С����ٵ����ħ��ʦ������ѧ����һ�������ħ��,Ϊ������������ħ��������,�赲а�����Ϯ.Ŀǰ��ȱ��10��������е,��Ҫ��ó�����������������һ������ܾ����СС�������?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------������е


	MisHelpTalk("<t>а��Ļ�е�ޱ�����,����ǿ������麽��ʿ����,����˫��ʿ����,������ð���߻���,����ҩʦ����,���׷�ӡ�������Ͼ����д���,Ϊ���������ǵİ������ƽ,���10��������е����ٵ��.")
	MisResultTalk("<t>��Ϊ�������ƽ������,С����ٵ��������һ��Ҫ���������������������,���ڿɿ���Ư��˧�����´���װ�!����ʲô?����,�Ͻ��򿪿���!")

	MisResultCondition(HasMission, 1259)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1259)                        
	MisResultAction(SetRecord, 1259)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1259, 10, 10)
	RegCurTrigger(12591)


	------------------------------------------------------------------------���Ǳ�[����ָ��������¶��](1315,507)�ظ�-----------------------------------------------
       
       ------------------------------------------�����ִ������(һ)---------���Ǳ�����ָ��

	DefineMission(6208,"�����ִ������",1260)

	MisBeginTalk("<t>��������ӭ����,ɽ�亣ζ�н���.<n><t>�װ�������,���������������꼪��,����˳��!ǰ���տɰ���С����ٵ�������ڳ���Ϊ30����64����������ͺ��,һ�˽���һ�λ���,���˲��ɴ��!�Ͻ������������а�!���������뵽���Ǳ�����ָ��������¶��(1315,507)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1260)
	MisBeginAction(AddTrigger, 12601, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1260)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>ѧ��֪��,ѧ�����,���ܸ����Ҹ�!С����ٵ��ֻΪÿλ���׼����һ�����,��ȷ����������������Ҫ��ȡ����?��ô���ǿ�ʼ��!������������ɻ����ζ�ľ����,����Ĺ�֭��ٵ�����,����99���Ϳɵõ�ٵ�����ַ��Ƶ��������ֺ��,����ж�����!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------�����


	MisHelpTalk("<t>��˵������ľ�������϶��᳤����ζ����ľ����,99�������Ҳ�������ĵļ�֤!���Ͱ�!")
	MisResultTalk("<t>���������������������������,�򿪺��л��ʻ������������!")

	MisResultCondition(HasMission, 1260)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1260)                        
	MisResultAction(SetRecord, 1260)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1260, 10, 99)
	RegCurTrigger(12601)

       ------------------------------------------�����ִ�����(��)---------���Ǳ�����ָ��

	DefineMission(6209,"�����ִ�����",1261)

	MisBeginTalk("<t>�������ﺣ����,��˳��������.<n><t>�װ�������,������������������˵�ͷ,��Դ����!ǰ���տɰ���С����ٵ�������ڳ���Ϊ65����84����������ͺ��,һ�˽���һ�λ���,���˲��ɴ��!�Ͻ������������а�!���������뵽���Ǳ�����ָ��������¶��(1315,507)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1261)
	MisBeginAction(AddTrigger, 12611, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1261)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>�Ͷ�����,�����������Ӣ��,���������ݺὭ���ĺ���!С����ٵ�����´�����֮��,������նɱɽ�����졤���߲���ȡ�����ϵ�ɽ������!�Դ�Ϊƾ�������ٵ�����������ĸ߼�������,��ʿ��!���������е�����,�ж�������!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------ɽ������


	MisHelpTalk("<t>��˵ɽ�����졤����ͨ����(����1038,3039)������û,�Ͻ�������,�ҵ���ʿ!")
	MisResultTalk("<t>��!����,û�뵽��ô�̵�ʱ��������������.����߼���������ٵ������Ľ���,�����������벻���ľ�ϲ�!")

	MisResultCondition(HasMission, 1261)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------�߼�������
	MisResultAction(ClearMission, 1261)                        
	MisResultAction(SetRecord, 1261)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1261, 10, 1)
	RegCurTrigger(12611)

	------------------------------------------�����ִ���ʢ��(��)---------���Ǳ�����ָ��

	DefineMission(6210,"�����ִ���ʢ��",1262)

	MisBeginTalk("<t> ��Ƿ�ë������ ,������ʴ����.<n><t>�װ�������,���������������꼪�Ǹ���,ǰ���ƽ�!ǰ���տɰ���С����ٵ�������ڳ���Ϊ85����100����������ͺ��,һ�˽���һ�λ���,���˲��ɴ��!�Ͻ������������а�!���������뵽���Ǳ�����ָ��������¶��(1315,507)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1262)
	MisBeginAction(AddTrigger, 12621, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1262)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>���С����ٵ����ħ��ʦ������ѧ����һ�������ħ��,Ϊ������������ħ��������,�赲а�����Ϯ.Ŀǰ��ȱ��10��������е,��Ҫ��ó�����������������һ������ܾ����СС�������?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------������е


	MisHelpTalk("<t>а��Ļ�е�ޱ�����,����ǿ������麽��ʿ����,����˫��ʿ����,������ð���߻���,����ҩʦ����,���׷�ӡ�������Ͼ����д���,Ϊ���������ǵİ������ƽ,���10��������е����ٵ��.")
	MisResultTalk("<t>��Ϊ�������ƽ������,С����ٵ��������һ��Ҫ���������������������,�����л��ʿ���Ư��˧�����´���װ�!����ʲô?����,�Ͻ��򿪿���!")

	MisResultCondition(HasMission, 1262)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1262)                        
	MisResultAction(SetRecord, 1262)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1262, 10, 10)
	RegCurTrigger(12621)

	------------------------------------------------------------------------ɳᰳ�[����ָ������˿��](876,3572)�ظ�-----------------------------------------------
       
       ------------------------------------------�����ִ������(һ)---------ɳᰳ�����ָ��

	DefineMission(6211,"�����ִ������",1263)

	MisBeginTalk("<t>��������ӭ����,ɽ�亣ζ�н���.<n><t>�װ�������,���������������꼪��,����˳��!ǰ���տɰ���С����ٵ�������ڳ���Ϊ30����64����������ͺ��,һ�˽���һ�λ���,���˲��ɴ��!�Ͻ������������а�!���������뵽ɳᰳ�����ָ������˿��(876,3572)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1263)
	MisBeginAction(AddTrigger, 12631, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1263)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>ѧ��֪��,ѧ�����,���ܸ����Ҹ�!С����ٵ��ֻΪÿλ���׼����һ�����,��ȷ����������������Ҫ��ȡ����?��ô���ǿ�ʼ��!������������ɻ����ζ�ľ����,����Ĺ�֭��ٵ�����,����99���Ϳɵõ�ٵ�����ַ��Ƶ��������ֺ��,����ж�����!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------�����


	MisHelpTalk("<t>��˵������ľ�������϶��᳤����ζ����ľ����,99�������Ҳ�������ĵļ�֤!���Ͱ�!")
	MisResultTalk("<t>���������������������������,�򿪺��л��ʻ������������!")

	MisResultCondition(HasMission, 1263)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)

	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1263) 
	MisResultAction(SetRecord, 1263) 
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1263, 10, 99)
	RegCurTrigger(12631)

       ------------------------------------------�����ִ�����(��)---------ɳᰳ�����ָ��

	DefineMission(6212,"�����ִ�����",1264)

	MisBeginTalk("<t>�������ﺣ����,��˳��������.<n><t>�װ�������,������������������˵�ͷ,��Դ����!ǰ���տɰ���С����ٵ�������ڳ���Ϊ65����84����������ͺ��,һ�˽���һ�λ���,���˲��ɴ��!�Ͻ������������а�!���������뵽ɳᰳ�����ָ������˿��(876,3572)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1264)
	MisBeginAction(AddTrigger, 12641, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1264)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>�Ͷ�����,�����������Ӣ��,���������ݺὭ���ĺ���!С����ٵ�����´�����֮��,������նɱɽ�����졤���߲���ȡ�����ϵ�ɽ������!�Դ�Ϊƾ�������ٵ�����������ĸ߼�������,��ʿ��!���������е�����,�ж�������!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------ɽ������


	MisHelpTalk("<t>��˵ɽ�����졤����ͨ����(����1038,3039)������û,�Ͻ�������,�ҵ���ʿ!")
	MisResultTalk("<t>��!����,û�뵽��ô�̵�ʱ��������������.����߼���������ٵ������Ľ���,�����������벻���ľ�ϲ�!")

	MisResultCondition(HasMission, 1264)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)


	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------�߼�������
	MisResultAction(ClearMission, 1264)                        
	MisResultAction(SetRecord, 1264)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1264, 10, 1)
	RegCurTrigger(12641)

	------------------------------------------�����ִ���ʢ��(��)---------ɳᰳ�����ָ��

	DefineMission(6213,"�����ִ���ʢ��",1265)

	MisBeginTalk("<t> ��Ƿ�ë������ ,������ʴ����.<n><t>�װ�������,���������������꼪�Ǹ���,ǰ���ƽ�!ǰ���տɰ���С����ٵ�������ڳ���Ϊ85����100����������ͺ��,һ�˽���һ�λ���,���˲��ɴ��!�Ͻ������������а�!���������뵽ɳᰳ�����ָ������˿��(876,3572)����ȡ����.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1265)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1265)
	MisBeginAction(AddTrigger, 12651, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1265)                         ---------����ȡ��������

	MisNeed(MIS_NEED_DESP, "<t>���С����ٵ����ħ��ʦ������ѧ����һ�������ħ��,Ϊ������������ħ��������,�赲а�����Ϯ.Ŀǰ��ȱ��10��������е,��Ҫ��ó�����������������һ������ܾ����СС�������?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------������е


	MisHelpTalk("<t>а��Ļ�е�ޱ�����,����ǿ������麽��ʿ����,����˫��ʿ����,������ð���߻���,����ҩʦ����,���׷�ӡ�������Ͼ����д���,Ϊ���������ǵİ������ƽ,���10��������е����ٵ��.")
	MisResultTalk("<t>��Ϊ�������ƽ������,С����ٵ��������һ��Ҫ���������������������,���ڿɿ���Ư��˧�����´���װ�!����ʲô?����,�Ͻ��򿪿���!")

	MisResultCondition(HasMission, 1265)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)

	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------����������
	MisResultAction(ClearMission, 1265)                        
	MisResultAction(SetRecord, 1265)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1265, 10, 10)
	RegCurTrigger(12651)

	--------------------------------------------------------------kokora(end)------------------------------------------------------------------

--------------------------------------------------------------dina����ת������(begin)------------------------------------------------------------------
	-------------------------------------------------------ԡ������֮һ--------�̻�ʷ��
	DefineMission( 6214, "Revival I", 1266 )
	MisBeginTalk("<t>Ŷ�������¸������Ҿ���͸ж������������ܽ�ȳ��ҵ�ʥ��ʿ�ǣ���Ը��ѽ̻ʵ�λ���ø��㣬��������ʥ��֮������<rԡ������>ʯ�͸��㣬��˵�ǿ�ʯͷ�������������һ��ĳ���������һ�����Ӧ�����ڵ���������ػ��߾�����ʿ-���������ϣ����ǰ�����������(59,51)�Ļ���ȥ�ɣ���ʿ���Һ��ŵ��Ȼ�һֱΪ������")
	MisBeginCondition(NoMission, 1266)
	MisBeginCondition(NoRecord,1266)
	MisBeginCondition( Checksailexpmore, 9000)
	MisBeginAction(AddMission,1266)
	MisBeginAction(AddTrigger, 12661, TE_GETITEM, 5753, 1)
	MisBeginAction(AddTrigger, 12662, TE_GETITEM, 5754, 1)
	MisBeginAction(AddTrigger, 12663, TE_GETITEM, 5755, 1)
	MisBeginAction(AddTrigger, 12664, TE_GETITEM, 5756, 1)
	MisBeginAction(AddTrigger, 12665, TE_GETITEM, 5757, 1)
	MisBeginAction(AddTrigger, 12666, TE_GETITEM, 5758, 1)
	
	--MisCancelAction(ClearMission, 1266)

	MisNeed(MIS_NEED_DESP, "���������6������11��ȥ��ȳ�ʥ��ʿ,���õ�6��ʥ��ʿ����.")
	MisNeed(MIS_NEED_ITEM, 5753, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 5754, 1, 15, 1)
	MisNeed(MIS_NEED_ITEM, 5755, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 5756, 1, 25, 1)
	MisNeed(MIS_NEED_ITEM, 5757, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 5758, 1, 35, 1)
	
	MisHelpTalk("<t>��һ�����Ӧ�����ڵ���������ػ��߾�����ʿ-���������ϣ����ǰ�����������(59,51)�Ļ���ȥ�ɣ���ʿ���Һ��ŵ��Ȼ�һֱΪ�����ġ�")
	MisResultTalk("<t>�����Ǻ����������ߣ��������ǰ������ȥ�������6��ʥ��ʿ�ǣ�������һ�����Եģ�")

	MisResultCondition(HasMission, 1266)
	MisResultCondition(NoRecord,1266)
	MisResultCondition(HasItem, 5753, 1)
	MisResultCondition(HasItem, 5754, 1)
	MisResultCondition(HasItem, 5755, 1)
	MisResultCondition(HasItem, 5756, 1)
	MisResultCondition(HasItem, 5757, 1)
	MisResultCondition(HasItem, 5758, 1)
		
	MisResultAction(TakeItem, 5753, 1 )
	MisResultAction(TakeItem, 5754, 1 )
	MisResultAction(TakeItem, 5755, 1 )
	MisResultAction(TakeItem, 5756, 1 )
	MisResultAction(TakeItem, 5757, 1 )
	MisResultAction(TakeItem, 5758, 1 )
	
	
	MisResultAction(ClearMission, 1266)
	MisResultAction(SetRecord, 1266)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 5753)	
	TriggerAction( 1, AddNextFlag, 1266, 10, 1 )
	RegCurTrigger( 12661 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5754)	
	TriggerAction( 1, AddNextFlag, 1266, 15, 1 )
	RegCurTrigger( 12662 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5755)	
	TriggerAction( 1, AddNextFlag, 1266, 20, 1 )
	RegCurTrigger( 12663 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5756)	
	TriggerAction( 1, AddNextFlag, 1266, 25, 1 )
	RegCurTrigger( 12664 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5757)	
	TriggerAction( 1, AddNextFlag, 1266, 30, 1 )
	RegCurTrigger( 12665 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5758)	
	TriggerAction( 1, AddNextFlag, 1266, 35, 1 )
	RegCurTrigger( 12666 )
		
	-------------------------------------------------------�µķ���--------��
	DefineMission( 6215, "Mu's Rune",1267 )
	MisBeginTalk( "<t>Ҫ��ܾ�����ʿ-�������ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1267)
	MisBeginCondition( NoRecord, 1267)
	MisBeginCondition( HasMission, 1266)
	MisBeginAction(	AddMission, 1267)
	MisBeginAction( AddTrigger, 12671, TE_KILL, 974, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 974, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ����������ػ���ڤ���-���ն����ϣ����ǽ�ţ��������³�Ұ�(178,77)�Ļ���ȥ�ɣ���ʿ���һ�һֱΪ�����ġ�")
	MisHelpTalk( "<t>��ܾ�����ʿ-����,�����µ���ꡣ")
	MisResultCondition( HasFlag, 1267, 10)
	MisResultAction(GiveItem, 5753,1,4)------------��MU����
	MisResultCondition( HasMission, 1267)
	MisResultAction( ClearMission, 1267)
	MisResultAction(SetRecord, 1267)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 974 )
	TriggerAction( 1, AddNextFlag, 1267, 10, 1 )
	RegCurTrigger( 12671 )

	
	-------------------------------------------------------��³�Ұͷ���--------��³�Ұ�
	DefineMission( 6216, "Aldebaran's Rune",1268 )
	MisBeginTalk( "<t>Ҫ���ڤ���-���ն٣��ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1268)
	MisBeginCondition( NoRecord, 1268)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1267)
	MisBeginAction(	AddMission, 1268)
	MisBeginAction( AddTrigger, 12681, TE_KILL, 975, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 975, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ������߲��ػ���ڤ��-������˹���ϣ�����˫������������(205,170)�Ļ���ȥ�ɣ���ʿ���һ�һֱΪ�����ġ�")
	MisHelpTalk( "<t>���ڤ���-���ն�,���Ѱ�³�Ұ͵���ꡣ")
	MisResultCondition( HasFlag, 1268, 10)
	MisResultAction(GiveItem, 5754,1,4)------------��ALDEBA����  
	MisResultCondition( HasMission, 1268)
	MisResultAction( ClearMission, 1268)
	MisResultAction(SetRecord, 1268)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 975 )
	TriggerAction( 1, AddNextFlag, 1268, 10, 1 )
	RegCurTrigger( 12681 )
	
	-------------------------------------------------------���ӷ���--------����
	DefineMission( 6217, "Saga's Rune",1269 )
	MisBeginTalk( "<t>Ҫ���ڤ��-������˹���ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1269)
	MisBeginCondition( NoRecord, 1269)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1268)
	MisBeginAction(	AddMission, 1269)
	MisBeginAction( AddTrigger, 12691, TE_KILL, 976, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 976, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ����ڰ˲��ػ���ڤ��-������˹���ϣ����Ǿ�з����������˹(85,198)�Ļ���ȥ�ɣ���ʿ���һ�һֱΪ�����ġ�")
	MisHelpTalk( "<t>���ڤ��-������˹,�������ӵ���ꡣ")
	MisResultCondition( HasFlag, 1269, 10)
	MisResultAction(GiveItem, 5755,1,4)------------�����ӷ���  
	MisResultCondition( HasMission, 1269)
	MisResultAction( ClearMission, 1269)
	MisResultAction(SetRecord, 1269)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 976 )
	TriggerAction( 1, AddNextFlag, 1269, 10, 1 )
	RegCurTrigger( 12691 )
	
	-------------------------------------------------------����˹����--------����˹
	DefineMission( 6218, "Death Mask's Rune",1270 )
	MisBeginTalk( "<t>Ҫ���ڤ��-������˹���ҵ������ܵõ����ѣ������ط�ʥ�����Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1270)
	MisBeginCondition( NoRecord, 1270)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1269)
	MisBeginAction(	AddMission, 1270)
	MisBeginAction( AddTrigger, 12701, TE_KILL, 977, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 977, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ���ػ���ڤ��-�û����ϣ�����ʨ����������������(80,190)�Ļ���ȥ�ɣ���ʿ���һ�һֱΪ�����ġ�")
	MisHelpTalk( "<t>���ڤ��-������˹,���ѵ���˹����ꡣ")
	MisResultCondition( HasFlag, 1270, 10)
	MisResultAction(GiveItem, 5756,1,4)------------������˹����  
	MisResultCondition( HasMission, 1270)
	MisResultAction( ClearMission, 1270)
	MisResultAction(SetRecord, 1270)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 977 )
	TriggerAction( 1, AddNextFlag, 1270, 10, 1 )
	RegCurTrigger( 12701 )
	
	-------------------------------------------------------�������Ƿ���--------��������
	DefineMission( 6219, "Aeolia's Rune",1271 )
	MisBeginTalk( "<t>Ҫ���ڤ��-�ûʣ��ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1271)
	MisBeginCondition( NoRecord, 1271)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1270)
	MisBeginAction(	AddMission, 1271)
	MisBeginAction( AddTrigger, 12711, TE_KILL, 979, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 979, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮһ���ػ���ڤ��-�������ϣ����Ǵ�Ů������ɳ��(79,78)�Ļ���ȥ�ɣ���ʿ���һ�һֱΪ�����ġ�")
	MisHelpTalk( "<t>���ڤ��-�û�,���Ѱ������ǵ���ꡣ")
	MisResultCondition( HasFlag, 1271, 10)
	MisResultAction(GiveItem, 5757,1,4)------------���������Ƿ���  
	MisResultCondition( HasMission, 1271)
	MisResultAction( ClearMission, 1271)
	MisResultAction(SetRecord, 1271)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 979 )
	TriggerAction( 1, AddNextFlag, 1271, 10, 1 )
	RegCurTrigger( 12711 )
	
	-------------------------------------------------------ɳ�ӷ���--------ɳ������
	DefineMission( 6220, "Shaka's Rune",1272 )
	MisBeginTalk( "<t>Ҫ���ڤ��-�����ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1272)
	MisBeginCondition( NoRecord, 1272)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1271)
	MisBeginAction(	AddMission, 1272)
	MisBeginAction( AddTrigger, 12721, TE_KILL, 980, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 980, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���������ǵķ���ȥ�ҽ̻�ʷ��(1749,902)�ɣ�")
	MisHelpTalk( "<t>���ڤ��-����,����ɳ�ӵ���ꡣ")
	MisResultCondition( HasFlag, 1272, 10)
	MisResultAction(GiveItem, 5758,1,4)------------��ɳ�ӷ���  
	MisResultCondition( HasMission, 1272)
	MisResultAction( ClearMission, 1272)
	MisResultAction(SetRecord, 1272)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 980 )
	TriggerAction( 1, AddNextFlag, 1272, 10, 1 )
	RegCurTrigger( 12721 )
	
	-------------------------------------------------------ͯ������--------ͯ��
	DefineMission( 6221, "Dohko's Rune",1273 )
	MisBeginTalk( "<t>Ҫ���ڤ��-а�ޣ��ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1273)
	MisBeginCondition( NoRecord, 1273)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1272)
	MisBeginAction(	AddMission, 1273)
	MisBeginAction( AddTrigger, 12731, TE_KILL, 981, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 981, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ�����ػ���ڤ��-�Կ����ϣ�������Ы����������(326,76)�Ļ���ȥ�ɣ���ʿ���һ�һֱΪ�����ġ�")
	MisHelpTalk( "<t>���ڤ��-а��,����ͯ������ꡣ")
	MisResultCondition( HasFlag, 1273, 10)
	MisResultAction(GiveItem, 5759,1,4)------------��ͯ������  
	MisResultCondition( HasMission, 1273)
	MisResultAction( ClearMission, 1273)
	MisResultAction(SetRecord, 1273)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 981 )
	TriggerAction( 1, AddNextFlag, 1273, 10, 1 )
	RegCurTrigger( 12731 )
	
	-------------------------------------------------------���޷���--------����
	DefineMission( 6222, "Milo's Rune",1274 )
	MisBeginTalk( "<t>Ҫ���ڤ��-�Կ��ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1274)
	MisBeginCondition( NoRecord, 1274)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1273)
	MisBeginAction(	AddMission, 1274)
	MisBeginAction( AddTrigger, 12741, TE_KILL, 982, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 982, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ�Ĳ��ػ���ڤ��-������ϣ���������������������˹(320,195)�Ļ���ȥ�ɣ���ʿ���һ�һֱΪ�����ġ�")
	MisHelpTalk( "<t>���ڤ��-�Կ�,�������޵���ꡣ")
	MisResultCondition( HasFlag, 1274, 10)
	MisResultAction(GiveItem, 5760,1,4)------------�����޷���  
	MisResultCondition( HasMission, 1274)
	MisResultAction( ClearMission, 1274)
	MisResultAction(SetRecord, 1274)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 982 )
	TriggerAction( 1, AddNextFlag, 1274, 10, 1 )
	RegCurTrigger( 12741 )
	
	-------------------------------------------------------������˹����-------������˹
	DefineMission( 6223, "Aiolos's Rune",1275 )
	MisBeginTalk( "<t>Ҫ���ڤ��-��ˣ��ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1275)
	MisBeginCondition( NoRecord, 1275)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1274)
	MisBeginAction(	AddMission, 1275)
	MisBeginAction( AddTrigger, 12751, TE_KILL, 983, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 983, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ����ػ���ڤ��-�������ϣ�����Ħ������������(318,317)�Ļ���ȥ�ɣ���ʿ���һ�һֱΪ�����ġ�")
	MisHelpTalk( "<t>���ڤ��-���,���Ѱ�����˹����ꡣ")
	MisResultCondition( HasFlag, 1275, 10)
	MisResultAction(GiveItem, 5761,1,4)------------��������˹����  
	MisResultCondition( HasMission, 1275)
	MisResultAction( ClearMission, 1275)
	MisResultAction(SetRecord, 1275)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 983 )
	TriggerAction( 1, AddNextFlag, 1275, 10, 1 )
	RegCurTrigger( 12751 )
	
	-------------------------------------------------------���޷���-------����
	DefineMission( 6224, "Shura's Rune",1276 )
	MisBeginTalk( "<t>Ҫ���ڤ��-�������ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1276)
	MisBeginCondition( NoRecord, 1276)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1275)
	MisBeginAction(	AddMission, 1276)
	MisBeginAction( AddTrigger, 12761, TE_KILL, 984, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 984, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ�����ػ���ڤ��-�������ϣ����Ǳ�ƿ����������(198,310)�Ļ���ȥ�ɣ���ʿ���һ�һֱΪ�����ġ�")
	MisHelpTalk( "<t>���ڤ��-����,�������޵���ꡣ")
	MisResultCondition( HasFlag, 1276, 10)
	MisResultAction(GiveItem, 5762,1,4)------------�����޷���  
	MisResultCondition( HasMission, 1276)
	MisResultAction( ClearMission, 1276)
	MisResultAction(SetRecord, 1276)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 984 )
	TriggerAction( 1, AddNextFlag, 1276, 10, 1 )
	RegCurTrigger( 12761 )
	
	-------------------------------------------------------�������-------����
	DefineMission( 6225, "Acmus's Rune",1277 )
	MisBeginTalk( "<t>Ҫ���ڤ��-���꣬�ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1277)
	MisBeginCondition( NoRecord, 1277)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1276)
	MisBeginAction(	AddMission, 1277)
	MisBeginAction( AddTrigger, 12771, TE_KILL, 985, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 985, 1, 10, 1)

	MisResultTalk( "<t>������λֵ���𾴵���ʿ����Ϊ����������������ȥ�ɡ���һ������ڵ�����ʮ�߲��ػ���ڤ��-��ɲ���ϣ�����˫�������������޵�(80,315)�Ļ���ȥ�ɣ���ʿ���һ�һֱΪ�����ġ�")
	MisHelpTalk( "<t>���ڤ��-����,���Ѽ������ꡣ")
	MisResultCondition( HasFlag, 1277, 10)
	MisResultAction(GiveItem, 5763,1,4)------------���������  
	MisResultCondition( HasMission, 1277)
	MisResultAction( ClearMission, 1277)
	MisResultAction(SetRecord, 1277)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 985 )
	TriggerAction( 1, AddNextFlag, 1277, 10, 1 )
	RegCurTrigger( 12771 )
	
	-------------------------------------------------------�����޵ҷ���-------�����޵�
	DefineMission( 6226, "Aphrodite's Rune",1278 )
	MisBeginTalk( "<t>Ҫ���ڤ��-��ɲ���ҵ������ܵõ����ѣ������ط�ʥ���Ҿ�����һ������˳�����������")
	MisBeginCondition( NoMission, 1278)
	MisBeginCondition( NoRecord, 1278)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1277)
	MisBeginAction(	AddMission, 1278)
	MisBeginAction( AddTrigger, 12781, TE_KILL, 986, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 986, 1, 10, 1)

	MisResultTalk( "<t>�������ʮ�����ֵܶ��ȳ��ˣ��治�����š����Ҵ����������лƽ�ʥ��ʿ��л�����𾴵ĺ�������������ķ�������ȥ�ɡ�")
	MisHelpTalk( "<t>���ڤ��-��ɲ,���Ѱ����޵ҵ���ꡣ")
	MisResultCondition( HasFlag, 1278, 10)
	MisResultAction(GiveItem, 5764,1,4)------------�������޵ҷ���  
	MisResultCondition( HasMission, 1278)
	MisResultAction( ClearMission, 1278)
	MisResultAction(SetRecord, 1278)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 986 )
	TriggerAction( 1, AddNextFlag, 1278, 10, 1 )
	RegCurTrigger( 12781 )
	
		
	-------------------------------------------------------ԡ������֮��--------�̻�ʷ��
	DefineMission( 6227, "Revival II", 1279 )
	MisBeginTalk("<t>Ŷ�������¸������Ҿ���͸ж������������ܽ�ȳ��ҵ�ʥ��ʿ�ǣ���Ը��ѽ̻ʵ�λ���ø��㣬��������ʥ��֮������<rԡ������ʯ>�͸��㣬��˵�ǿ�ʯͷ�������������һ��ĳ����������ˣ����߿����Ӧ�����ڵ�����ʮ�����ػ���ڤ��-а�����ϣ�������ƽ������ͯ��(210,80)�Ļ���ȥ�ɣ���ʿ���Һ��ŵ��Ȼ�һֱΪ������")
	MisBeginCondition(NoMission, 1279)
	MisBeginCondition(NoRecord,1279)
	MisBeginCondition(HasRecord,1266)
	MisBeginAction(AddMission,1279)
	MisBeginAction(AddTrigger, 12791, TE_GETITEM, 5759, 1)
	MisBeginAction(AddTrigger, 12792, TE_GETITEM, 5760, 1)
	MisBeginAction(AddTrigger, 12793, TE_GETITEM, 5761, 1)
	MisBeginAction(AddTrigger, 12794, TE_GETITEM, 5762, 1)
	MisBeginAction(AddTrigger, 12795, TE_GETITEM, 5763, 1)
	MisBeginAction(AddTrigger, 12796, TE_GETITEM, 5764, 1)

	--MisCancelAction(ClearMission, 1279)

	MisNeed(MIS_NEED_DESP, "���������12������17��ȥ��ȳ�ʥ��ʿ,���õ����6��ʥ��ʿ���ġ�")
	MisNeed(MIS_NEED_ITEM, 5759, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 5760, 1, 15, 1)
	MisNeed(MIS_NEED_ITEM, 5761, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 5762, 1, 25, 1)
	MisNeed(MIS_NEED_ITEM, 5763, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 5764, 1, 35, 1)
	
	MisHelpTalk("<t>���߿����Ӧ�����ڵ�����ʮ�����ػ���ڤ��-а�����ϣ�������ƽ������ͯ��(210,80)�Ļ���ȥ�ɣ���ʿ���Һ��ŵ��Ȼ�һֱΪ�����ġ�")
	MisResultTalk("<t>��ô�����ˡ����������ҵ��������ĺ�������֮�����������ʸ��Ϊ�����̻ʵ��㡭����Ҳ������λ�ˡ����ʥ��֮������ԡ������ʯ�͸��㡣ǰ��С��ʹ�����ɻ���ŵ��ȵ�ף���������������õ��������޶ȵ�������")

	MisResultCondition(HasMission, 1279)
	MisResultCondition(NoRecord,1279)
	MisResultCondition(HasItem, 5759, 1)
	MisResultCondition(HasItem, 5760, 1)
	MisResultCondition(HasItem, 5761, 1)
	MisResultCondition(HasItem, 5762, 1)
	MisResultCondition(HasItem, 5763, 1)
	MisResultCondition(HasItem, 5764, 1)
		
	MisResultAction(TakeItem, 5759, 1 )
	MisResultAction(TakeItem, 5760, 1 )
	MisResultAction(TakeItem, 5761, 1 )
	MisResultAction(TakeItem, 5762, 1 )
	MisResultAction(TakeItem, 5763, 1 )
	MisResultAction(TakeItem, 5764, 1 )
	
	
	MisResultAction(GiveItem, 5765,1,4)------------��ԡ������ʯ
	MisResultAction(ClearMission, 1279)
	MisResultAction(SetRecord, 1279)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 5759)	
	TriggerAction( 1, AddNextFlag, 1279, 10, 1 )
	RegCurTrigger( 12791 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5760)	
	TriggerAction( 1, AddNextFlag, 1279, 15, 1 )
	RegCurTrigger( 12792 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5761)	
	TriggerAction( 1, AddNextFlag, 1279, 20, 1 )
	RegCurTrigger( 12793 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5762)	
	TriggerAction( 1, AddNextFlag, 1279, 25, 1 )
	RegCurTrigger( 12794 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5763)	
	TriggerAction( 1, AddNextFlag, 1279, 30, 1 )
	RegCurTrigger( 12795 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5764)	
	TriggerAction( 1, AddNextFlag, 1279, 35, 1 )
	RegCurTrigger( 12796 )
		

	------------------------------------------------------dina(end)
	

---------------------------------------------------------
--                        ������                       --
---------------------------------------------------------

	DefineMission ( 6230, "\207\243\242\252 \238\241\226\238\225\238\230\228\229\237\232\255", 1280 )
--	DefineMission ( 6230, "���� ������������", 1280 )

	MisBeginTalk ( "<t>\205\229\231\224\226\232\241\232\236\238 \238\242 \242\238\227\238, \239\238\247\229\236\243 \194\251 \239\238\239\224\235\232 \241\254\228\224, \194\251 \228\238\235\230\237\251 \241\238\225\235\254\228\224\242\252 \231\228\229\248\237\232\229 \239\240\224\226\232\235\224. \197\241\235\232 \194\251 \245\238\242\232\242\229 \243\231\237\224\242\252 \234\224\234 \238\242\241\254\228\224 \236\238\230\237\238 \226\251\225\240\224\242\252\241\255 \241\239\240\238\241\232\242\229 \210\254\240\229\236\237\238\227\238 \241\242\240\224\230\224 (281,218).")
--	MisBeginTalk ( "<t>���������� �� ����, ������ �� ������ ����, �� ������ ��������� ������� �������. ���� �� ������ ������ ��� ������ ����� ��������� �������� ��������� ������ (281,218).")

	MisBeginCondition( NoMission, 1280)
	MisBeginCondition( NoRecord, 1280)
	MisBeginAction( AddMission, 1280)
	MisCancelAction( ClearMission, 1280)

	MisNeed( MIS_NEED_DESP, "\209\239\240\238\241\232\242\229 \210\254\240\229\236\237\238\227\238 \241\242\240\224\230\224 (316, 208) \234\224\234 \236\238\230\237\238 \239\238\234\232\237\243\242\252 \253\242\238 \236\229\241\242\238.")
--	MisNeed( MIS_NEED_DESP, "�������� ��������� ������ (316, 208) ��� ����� �������� ��� �����.")

	MisHelpTalk( "Go now!")
	MisResultCondition ( AlwaysFailure )


	DefineMission ( 6231, "\207\243\242\252 \238\241\226\238\225\238\230\228\229\237\232\255", 1280, COMPLETE_SHOW )

	MisBeginCondition ( AlwaysFailure )

	MisResultTalk ( "<t>\205\229\242\229\240\239\232\242\229 \239\238\234\232\237\243\242\252 \242\254\240\252\236\243? \223 \237\229 \228\243\236\224\254 \247\242\238 \231\228\229\241\252 \237\224\241\242\238\235\252\234\238 \241\234\243\247\237\238, \245\224-\245\224. \197\241\235\232 \194\251 \228\229\233\241\242\226\232\242\229\235\252\237\238 \245\238\242\232\242\229 \239\238\234\232\237\243\242\252 \253\242\238 \236\229\241\242\238, \242\238 \241\235\243\248\224\233\242\229\241\252 \236\229\237\255.")
--	MisResultTalk ( "<t>��������� �������� ������? � �� ����� ��� ����� ��������� ������, ��-��. ���� �� ������������� ������ �������� ��� �����, �� ���������� ����")

	MisResultCondition( HasMission, 1280)
	MisResultCondition( NoRecord, 1280)
	MisResultAction( ClearMission, 1280)
	MisResultAction( SetRecord, 1280)



------------------����ָ��----------����
	DefineMission ( 6231, "Way to be Disimprisoned", 1280, COMPLETE_SHOW )

	MisBeginCondition ( AlwaysFailure )

	MisResultTalk ( "<t>Eager to leave? I don't think it's so boring here, haw-haw. If you realy want to leave, you can learn how to from me.")
	MisResultCondition( HasMission, 1280)
	MisResultCondition( NoRecord, 1280)
	MisResultAction( ClearMission, 1280)
	MisResultAction( SetRecord, 1280)

	
------------------1��ʥ������--------��ս�����Թ�
	DefineMission( 6232, "��ս�����Թ�", 1281 )
	
	MisBeginTalk("<t>����Ҫ�ӷ����Թ��д�������Ҫ�Ķ������������ҲŻ���������ô��.")
	MisBeginCondition(NoMission, 1281)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5776, 1)
	MisBeginCondition(NoItem, 5786, 1)
	MisBeginCondition(NoItem, 5787, 1)
	MisBeginCondition(NoItem, 5788, 1)
	MisBeginCondition(NoItem, 5789, 1)
	MisBeginCondition(NoItem, 5790, 1)
	MisBeginAction(TakeItem, 5776, 1 )
	MisBeginAction(AddMission, 1281)
	
	MisBeginAction(AddTrigger, 12811, TE_GETITEM, 3434, 15 )
	MisBeginAction(AddTrigger, 12812, TE_GETITEM, 3435, 10 )
	MisBeginAction(AddTrigger, 12813, TE_GETITEM, 3436, 15 )
	MisCancelAction(ClearMission, 1281)
	MisNeed(MIS_NEED_ITEM, 3434, 15, 10, 15)
	MisNeed(MIS_NEED_ITEM, 3435, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3436, 15, 30, 15)
	
	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r�Ͼɵ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1281)	
	MisResultCondition(HasItem, 3434, 15 )
	MisResultCondition(HasItem, 3435, 10 )
	MisResultCondition(HasItem, 3436, 15 )
	MisResultAction(SetRecord, 1281)   --���record1281
	MisResultAction(TakeItem, 3434, 15 )
	MisResultAction(TakeItem, 3435, 10 )
	MisResultAction(TakeItem, 3436, 15 )	
	MisResultAction(ClearMission, 1281)	      
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------������ҷϾɵ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434)	
	TriggerAction( 1, AddNextFlag, 1281, 10, 15)
	RegCurTrigger( 12811 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3435)	
	TriggerAction( 1, AddNextFlag, 1281, 20, 10 )
	RegCurTrigger( 12812 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436)	
	TriggerAction( 1, AddNextFlag, 1281, 30, 15 )
	RegCurTrigger( 12813 )

	





	------------------1��ʥ������--------��ս�����Թ�
	DefineMission( 6233, "��ս�����Թ�", 1282 )
	
	MisBeginTalk("<t>����Ҫ�������Թ��д�������Ҫ�Ķ������������ҲŻ���������ô��.")
	MisBeginCondition(NoMission, 1282)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5791, 1)   --�����������ܺ�B
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5791, 1 )
	MisBeginAction(AddMission, 1282)
	
	MisBeginAction(AddTrigger, 12821, TE_GETITEM, 3445, 15 )
	MisBeginAction(AddTrigger, 12822, TE_GETITEM, 3443, 10 )
	MisBeginAction(AddTrigger, 12823, TE_GETITEM, 3444, 15 )
	MisCancelAction(ClearMission, 1282)
	MisNeed(MIS_NEED_ITEM, 3445, 15, 10, 15)
	MisNeed(MIS_NEED_ITEM, 3443, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3444, 15, 30, 15)
	
	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r�Ͼɵ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1282)
	MisResultCondition(HasItem, 3445, 15 )
	MisResultCondition(HasItem, 3443, 10 )
	MisResultCondition(HasItem, 3444, 15 )
	MisResultAction(SetRecord, 1282)   --���record1282
	MisResultAction(TakeItem, 3445, 15 )
	MisResultAction(TakeItem, 3443, 10 )
	MisResultAction(TakeItem, 3444, 15 )	
	MisResultAction(ClearMission, 1282)
	      
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------�Ͼɵ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 3445)	
	TriggerAction( 1, AddNextFlag, 1282, 10, 15)
	RegCurTrigger( 12821 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3443)	
	TriggerAction( 1, AddNextFlag, 1282, 20, 10 )
	RegCurTrigger( 12822 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3444)	
	TriggerAction( 1, AddNextFlag, 1282, 30, 15 )
	RegCurTrigger( 12823 )
	
	
	------------------1��ʥ������--------��սħ���Թ�
	DefineMission( 6234, "��սħ���Թ�", 1283 )
	
	MisBeginTalk("<t>����Ҫ��ħ���Թ��д�������Ҫ�Ķ������������ҲŻ���������ô��.")
	MisBeginCondition(NoMission, 1283)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5792, 1)   --�����������ܺ�C
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5792, 1 )
	MisBeginAction(AddMission, 1283)
	MisBeginAction(AddTrigger, 12831, TE_GETITEM, 3820, 30 )
	MisBeginAction(AddTrigger, 12832, TE_GETITEM, 3821, 30 )
	MisBeginAction(AddTrigger, 12833, TE_GETITEM, 3822, 30 )
	MisCancelAction(ClearMission, 1283)
	MisNeed(MIS_NEED_ITEM, 3820, 30, 50, 30)
	MisNeed(MIS_NEED_ITEM, 3821, 30, 60, 30)
	MisNeed(MIS_NEED_ITEM, 3822, 30, 70, 30)
	
	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r�Ͼɵ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1283)
	MisResultCondition(HasItem, 3820, 30 )
	MisResultCondition(HasItem, 3821, 30 )
	MisResultCondition(HasItem, 3822, 30 )
	MisResultAction(TakeItem, 3820, 30 )
	MisResultAction(TakeItem, 3821, 30 )
	MisResultAction(TakeItem, 3822, 30 )	
	MisResultAction(ClearMission, 1283)
	MisResultAction(SetRecord, 1283)   --���record1283   
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------�Ͼɵ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 3820)	
	TriggerAction( 1, AddNextFlag, 1283, 50, 30 )
	RegCurTrigger( 12831 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3821)	
	TriggerAction( 1, AddNextFlag, 1283, 60, 30 )
	RegCurTrigger( 12832 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3822)	
	TriggerAction( 1, AddNextFlag, 1283, 70, 30 )
	RegCurTrigger( 12833 )

------------------2��ʥ������Կ��--------
	DefineMission( 6235, "2��ʥ������Կ��", 1284 )
	
	MisBeginTalk("<t>�װ������ѣ���ӭ��������������غ�Σ�յ����硣��������д��ڵ����ܵ���ȥ���֡�ֻҪ������ռ�����Ҫ����Ʒ���ҽ����������ʥ�����ص�����")
	MisBeginCondition(NoMission, 1284)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5793, 1)   --2������Կ���ܺ�
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5793, 1 )    --ȡ�ߵ���2������Կ���ܺ�
	MisBeginAction(AddMission, 1284)
	MisBeginAction(AddTrigger, 12841, TE_GETITEM, 2588, 10 )
	MisBeginAction(AddTrigger, 12842, TE_GETITEM, 0855, 99 )
	MisCancelAction(ClearMission, 1284)
	MisNeed(MIS_NEED_ITEM, 2588, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 0855, 99, 20, 99)

	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r�¾ɵ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1284)
	MisResultCondition(HasItem, 2588, 10 )
	MisResultCondition(HasItem, 0855, 99 )
	MisResultAction(TakeItem, 2588, 10 )
	MisResultAction(TakeItem, 0855, 99 )
	MisResultAction(ClearMission, 1284)
	MisResultAction(SetRecord, 1284)      --���record1283   
	
	MisResultAction(GiveItem, 5787, 1, 4)    ----------�¾ɵ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1284, 10, 10)
	RegCurTrigger( 12841 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1284, 20, 99 )
	RegCurTrigger( 12842 )
	



------------------3��ʥ������Կ��--------
	DefineMission( 6236, "3��ʥ������Կ��", 1285 )
	
	MisBeginTalk("<t>�װ������ѣ���ӭ��������������غ�Σ�յ����硣��������д��ڵ����ܵ���ȥ���֡���γ���Ҫ�����ռ�����Ҫ����Ʒ����Ҫ����ӵ��1000���<r����ֵ>��50��<r����ֵ>,ֻҪ������Щ�����Ҿ͸��������ʥ�����ص�����")
	MisBeginCondition(NoMission, 1285)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5794, 1)   --3������Կ���ܺ�
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5794, 1 )    --ȡ�ߵ���3������Կ���ܺ�
	MisBeginAction(AddMission, 1285)
	MisBeginAction(AddTrigger, 12851, TE_GETITEM, 4511, 30 )
	MisBeginAction(AddTrigger, 12852, TE_GETITEM, 0855, 99 )
	MisCancelAction(ClearMission, 1285)
	MisNeed(MIS_NEED_ITEM, 4511, 30, 10, 30)
	MisNeed(MIS_NEED_ITEM, 0855, 99, 20, 99)

	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<rո�µ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿�����˻���Ҫ1000��<r����ֵ>��50��<r����ֵ>,����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1285)
	MisResultCondition(HasItem, 4511, 30 )
	MisResultCondition(HasItem, 0855, 99 )
	MisResultCondition(HasCredit, 1000 )       --��Ҫ����1000
	MisResultCondition(HasHonorPoint, 50 )     --��Ҫ����50
	MisResultAction(TakeItem, 4511, 30 )
	MisResultAction(TakeItem, 0855, 99 )
	MisResultAction(ClearMission, 1285)
	MisResultAction(SetRecord, 1285)   --���record1283      
	
	MisResultAction(GiveItem, 5788, 1, 4)    ----------ո�µ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 4511)	
	TriggerAction( 1, AddNextFlag, 1285, 10, 30)
	RegCurTrigger( 12851 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1285, 20, 99 )
	RegCurTrigger( 12852 )


------------------4��ʥ������Կ��--------
	DefineMission( 6237, "4��ʥ������Կ��", 1286 )
	
	MisBeginTalk("<t>�װ������ѣ���ӭ��������������غ�Σ�յ����硣��������д��ڵ����ܵ���ȥ���֡�ֻҪ������ռ�����Ҫ����Ʒ���ҽ����������ʥ�����ص�����")
	MisBeginCondition(NoMission, 1286)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5795, 1)   --4������Կ���ܺ�
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5795, 1 )    --ȡ�ߵ���4������Կ���ܺ�
	MisBeginAction(AddMission, 1286)
	MisBeginAction(AddTrigger, 12861, TE_GETITEM, 0266, 1 )
	MisBeginAction(AddTrigger, 12862, TE_GETITEM, 2589, 1 )
	MisBeginAction(AddTrigger, 12863, TE_GETITEM, 3000, 1 )
	MisCancelAction(ClearMission, 1286)
	MisNeed(MIS_NEED_ITEM, 0266, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2589, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3000, 1, 30, 1)
	
	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r���µ��¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1286)
	MisResultCondition(HasItem, 0266, 1 )
	MisResultCondition(HasItem, 2589, 1 )
	MisResultCondition(HasItem, 3000, 1 )
	MisResultAction(TakeItem, 0266, 1 )
	MisResultAction(TakeItem, 2589, 1 )
	MisResultAction(TakeItem, 3000, 1 )
	MisResultAction(ClearMission, 1286)
	MisResultAction(SetRecord, 1286)      --���record1286 
	
	MisResultAction(GiveItem, 5789, 1, 4)    ---------���µ��¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 0266)	
	TriggerAction( 1, AddNextFlag, 1286, 10, 1)
	RegCurTrigger( 12861 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1286, 20, 1 )
	RegCurTrigger( 12862 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3000)	
	TriggerAction( 1, AddNextFlag, 1286, 40, 1 )
	RegCurTrigger( 12863 )

------------------5��ʥ������Կ��--------
	DefineMission( 6238, "5��ʥ������Կ��", 1287 )
	
	MisBeginTalk("<t>�װ������ѣ���ӭ��������������غ�Σ�յ����硣��������д��ڵ����ܵ���ȥ���֡�ֻҪ������ռ�����Ҫ����Ʒ���ҽ����������ʥ�����ص�����")
	MisBeginCondition(NoMission, 1287)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5796, 1)   --5������Կ���ܺ�
	MisBeginCondition(NoItem, 5786, 1)    --�Ͼɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5787, 1)    --�¾ɵ��¹ⱦ��
	MisBeginCondition(NoItem, 5788, 1)    --ո�µ��¹ⱦ��
	MisBeginCondition(NoItem, 5789, 1)    --���µ��¹ⱦ��
	MisBeginCondition(NoItem, 5790, 1)    --׿Խ���¹ⱦ��
	MisBeginAction(TakeItem, 5796, 1 )    --ȡ�ߵ���4������Կ���ܺ�
	MisBeginAction(AddMission, 1287)
	MisBeginAction(AddTrigger, 12871, TE_GETITEM, 2589, 5 )
	MisBeginAction(AddTrigger, 12872, TE_GETITEM, 5703, 2 )
	MisBeginAction(AddTrigger, 12873, TE_GETITEM, 3000, 1 )
	MisBeginAction(AddTrigger, 12874, TE_GETITEM, 3122, 5 )
	MisCancelAction(ClearMission, 1287)
	MisNeed(MIS_NEED_ITEM, 2589, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 5703, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 3000, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 3122, 5, 40, 5)
	
	MisResultTalk("<t>�ܺã�������ʥ���ı���������һ�󲽣�������Ҫ���ľ��ǰ����<r׿Խ���¹ⱦ��>�е������������ٻ������ң�")
	MisHelpTalk("<t>��ô�ˣ���û�ռ��룿����ЩС�¶��첻���㻹��ʲôʥ���ı��ء���")
	MisResultCondition(HasMission, 1287)
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 5703, 2 )
	MisResultCondition(HasItem, 3000, 1 )
	MisResultCondition(HasItem, 3122, 5 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 5703, 2 )
	MisResultAction(TakeItem, 3000, 1 )
	MisResultAction(TakeItem, 3122, 5 )
	MisResultAction(ClearMission, 1287)
	MisResultAction(SetRecord, 1287)      --���record1287 
	
	MisResultAction(GiveItem, 5790, 1, 4)    ---------׿Խ���¹ⱦ��
	MisResultBagNeed(1)                     ---------��Ϊ�������Ҫ�����߸���ң�����ע�����±����ո�

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1287, 10, 5)
	RegCurTrigger( 12871 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5703)	
	TriggerAction( 1, AddNextFlag, 1287, 20, 2 )
	RegCurTrigger( 12872 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3000)	
	TriggerAction( 1, AddNextFlag, 1287, 30, 1 )
	RegCurTrigger( 12873 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122)	
	TriggerAction( 1, AddNextFlag, 1287, 40, 5 )
	RegCurTrigger( 12874 )	

--------------------------------------------
--------------------����� - -- ������---
--------------------------------------------
-------------����������� ����---------------

	DefineMission( 6239, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisBeginTalk( "<t>������! � ��� ������ ���������� ��������� � ������, �� �� ���� ������ ����� ��� ������������� ������! �� ����� �� �� ������������ ���� ������ �� ���� ������������?" )
	MisBeginCondition(NoMission, 1288)
	MisBeginCondition(NoRecord, 1288)
	MisBeginCondition(NoRecord, 1300)
	MisBeginCondition(NoRecord, 1303)
	MisBeginCondition(NoRecord, 1304)
	MisBeginAction(AddMission, 1288)
	MisBeginAction(SetRecord, 1288)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisNeed(MIS_NEED_DESP, " ���������� � ���� �� �������� (2110,2667), � �� �� ������� (1126,3417), � ������� ������� (1533,699), � ��� ��, ��������� ���������� ����� � ������ �������� (619,965)." )
	
	MisHelpTalk( "<t>������������ ���� ������!" )
	MisResultCondition(AlwaysFailure)	
-------------------����������� ����----------
	DefineMission( 6240, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisHelpTalk( "<t>�� ��� ��� ����, ��� �� ������������ � ���, ��� � ����� ������������ ����? ������ ������������ ��� � ��������� �� ����!" )
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( " ��! ��� �� �� ���, ��� ������ ���������� ���� ������." )
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1289)
	MisResultAction(SetRecord,1289)
	
---------------��������� ����---------
	DefineMission( 6241, "\200\241\239\251\242\224\237\232\255 \209\224\232\255", 1289 )
	MisBeginTalk( "<t>�� ������ ����� � ����� <r������> � ������� � ������� � ���� <b���������� �����>, �� �������� ������� ����� 30 ���������� �������, ��� �� �������� ����, ������� ������� ������� ����� ������." )
	
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1289)	
	MisBeginCondition(NoRecord, 1291)	
	MisBeginAction(AddMission, 1289)
	MisBeginAction(SetRecord, 1290)
	MisCancelAction(SystemNotice, " �� �� ������ ��������� �� ����� �������!" )
	MisNeed(MIS_NEED_DESP, "<t>�������� 30 ���������� ������� � 1 ���������� �����." )
	MisHelpTalk( "<t>���? �� ���� �������? ���� �� �� ������ �������� �� ���� �� ������ ������ ����!" )
	MisResultTalk("<t>�� ������� ��� � ������ ����! ��� �������� ��� � ���� ���� ��������������� ���!" )

	MisResultCondition(HasMission, 1289)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1289)
	MisResultCondition(HasRecord, 1290)

	MisResultCondition(HasItem, 3116, 30)--��������� �����
	MisResultCondition(HasItem, 4495, 1)---���������� �����
	

	MisResultAction(TakeItem, 3116, 30)
	MisResultAction(TakeItem, 4495, 1)
	MisResultAction(ClearRecord, 1290)
	

	MisResultAction(GiveItem, 5813, 1, 4)--��������� ��������� ������                         
	MisResultAction(GiveItem, 3094, 1, 4)--��������� ����������                        
	MisResultAction(ClearMission, 1289) 
	MisResultAction(SetRecord, 1291) 
	MisResultBagNeed(2)

-------------------��������� ��------����������� ����----
	DefineMission( 6242, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisBeginCondition(AlwaysFailure )
	MisHelpTalk( "<t>�� ��� ��� ����, ��� �� ������������ � ���, ��� � ����� ������������ ����? ������ ������������ ��� � ��������� �� ����!" )
	MisResultTalk(" ������ ��� �� ���! ��� ����� ���� ������!" )
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1292)
	MisResultAction(SetRecord,1292)
---------------��������� ��---------
	DefineMission( 6243, "\200\241\239\251\242\224\237\232\255 \199\232", 1290 )
	MisBeginTalk( "<t>�� ������ ������ �������� �� 5 ���� �������� ���������, ������ ��� � ������ ���!" )
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1292)	
	MisBeginCondition(NoRecord, 1294)	
	MisBeginCondition(NoRecord, 1295)		
	MisBeginAction(AddMission, 1290)
	MisBeginAction(SetRecord, 1294)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisHelpTalk( "<t>������ ��� ����, �� �� ������ � �������! �� ������!" )
	MisResultTalk( "<t>� �������� ���! �� �����, � ������ ������� �������!" )
	
	
	MisResultCondition(HasMission, 1290)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1292)
	MisResultCondition(HasRecord, 1293)
	MisResultCondition(HasRecord, 1294)
		
	MisResultAction(GiveItem, 5814, 1, 4)--��������� ����. �������
	MisResultAction(GiveItem, 3094, 1, 4)--��������� ����������	                          
	MisResultAction(ClearMission, 1290) 
	MisResultAction(ClearRecord, 1294) 	
	MisResultAction(ClearRecord, 1293) 	
	MisResultAction(SetRecord, 1295) 
	MisResultBagNeed(2)

-----------����������� ����-----��������� ������----
	DefineMission( 6244, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisBeginCondition(AlwaysFailure )
	MisHelpTalk( "<t>�� ��� ��� ����, ��� �� ������������ � ���, ��� � ����� ������������ ����? ������ ������������ ��� � ��������� �� ����!" )
	MisResultTalk( " ������ ��� �� ���! ��� ����� ���� ������!" )
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1296)
	MisResultAction(SetRecord,1296)
---------------��������� ��������� ������---------
	DefineMission( 6245, "\200\241\239\251\242\224\237\232\255 \195\240\224\230\228\224\237\234\232 \203\229\228\251\237\232", 1291 )
	MisBeginTalk( "<t>������ ��� � ��� ������ ������ ������!!")
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1296)	
	MisBeginCondition(NoRecord, 1297)	
	MisBeginCondition(NoRecord, 1298)		
	MisBeginAction(AddMission, 1291)
	MisBeginAction(SetRecord, 1297)
	MisBeginAction(AddTrigger, 12911, TE_KILL, 1070, 1)--������(����)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )
	
	MisHelpTalk( "<t>�� ��� �� ����� ������!" )
	MisResultTalk( "<t>� ��� �������, �� �������� ������! ��� ��� � ���� ���� ���������������!" )
	
	MisResultCondition( HasFlag, 1291, 10)
	MisResultCondition(HasMission, 1291)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1297)
	MisResultCondition(HasRecord, 1296)
	MisResultCondition(HasRecord, 1298)
	

	MisResultAction(GiveItem, 5815, 1, 4)--��������� ����. ��������
	MisResultAction(ClearMission, 1291) 
	MisResultAction(ClearRecord, 1297)
	MisResultAction(ClearRecord, 1298)
	MisResultAction(SetRecord, 1299) 
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1070)	
	TriggerAction( 1, AddNextFlag, 1291, 10, 1 )
	RegCurTrigger( 12911 )
---------------����������� ����------���������� ����� ������---
	DefineMission( 6246, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisBeginCondition(AlwaysFailure )
	MisHelpTalk( "<t>�� ��� ��� ����, ��� �� ������������ � ���, ��� � ����� ������������ ����? ������ ������������ ��� � ��������� �� ����!" )
	MisResultTalk( " �! � ���� �� ������� 3 ���������! ������ ��� �������� ������� ��� 3: ������, ���� � ���������. ����� ���� ������������� �� ������ �������� �� ������ ����� ���� ����� �.�������� � �����(335,172)!" )
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoMission,1289)
	MisResultCondition(NoMission,1290)
	MisResultCondition(NoMission,1291)	
	MisResultCondition(HasRecord, 1289)
	MisResultCondition(HasRecord, 1291)
	MisResultCondition(HasRecord, 1292)
	MisResultCondition(HasRecord, 1295)
	MisResultCondition(HasRecord, 1296)
	MisResultCondition(HasRecord, 1299)
	MisResultAction(ClearRecord, 1289)
	MisResultAction(ClearRecord, 1291)
	MisResultAction(ClearRecord, 1292)
	MisResultAction(ClearRecord, 1295)
	MisResultAction(ClearRecord, 1296)
	MisResultAction(ClearRecord, 1299)
	MisResultAction(SetRecord, 1300)
	MisResultAction(SetRecord, 1301)	
	MisResultAction(GiveItem, 5806, 4, 4)--����������
	MisResultAction(TakeItem, 5815, 1, 4)
	MisResultAction(TakeItem, 5814, 1, 4)
	MisResultAction(TakeItem, 5813, 1, 4)
	MisResultBagNeed(1)

------------------------------------------����������� ����--------
	DefineMission( 6247, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisBeginCondition(AlwaysFailure )

	MisResultTalk( " �� �� ���� ������? � �� ���� ��������, ��� �� ��� ���� ��������� ����� �� ������������� �������� ������� " )
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(HasRecord, 1300)
	MisResultCondition(HasRecord, 1301)
	MisResultAction(ClearRecord, 1288)
	MisResultAction(ClearRecord, 1301)
	MisResultAction(ClearMission, 1288)
	MisResultAction(SetRecord, 1302)
--------------------------------------�������� ����----------
	DefineMission( 6248, "\211\225\232\233\241\242\226\238 \239\224\239\251", 1292 )
	MisBeginTalk( "<t>�� ����� ��� 4 �����������, � � ��� ���� ����� ����! �� ���� � ��� ���������, �� ������� ���� ��� ��������!" )
	MisHelpTalk( "<t>������ ����, ��� �� � ��� ������� � ����������� � � ����������� ����� ���������, ����� �������� ���� ����� � ������ � ����� � �����(2280,2756) � �������, ��� ���� � ����!" )
	MisBeginCondition(HasRecord, 1302)
	MisBeginCondition(LvCheck, ">", 54 )
	MisBeginCondition(NoRecord, 1303)
	MisBeginCondition(NoRecord, 1304)	
	MisBeginCondition(NoMission, 1291)		
	MisBeginAction(AddMission, 1292)
	MisBeginAction(SetRecord, 1303)
	MisBeginAction(AddTrigger, 12921, TE_KILL, 1071, 1)
	MisNeed(MIS_NEED_KILL, 1071, 1, 10, 1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1071)	
	TriggerAction( 1, AddNextFlag, 1292, 10, 1 )
	RegCurTrigger( 12921 )

	MisResultCondition(AlwaysFailure)	
------------------------------------�����������------------
	DefineMission( 6249, "\194\238\231\226\240\224\249\229\237\232\229", 1292 )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( " �� ���� � ����� �����? �� �� �.��������? ������� ��� �� ������ � ������� �� �� ������� ������ �������� �� ���������?! ��� ��� �������!" )

	MisResultCondition( HasFlag, 1292, 10)
	MisResultCondition(HasMission, 1292)
	MisResultCondition(HasRecord, 1303)
	MisResultCondition(HasRecord, 1305)
	
	
	MisResultAction(GiveItem, 5694, 15, 4)
	MisResultAction(GiveItem, 2843, 1, 4)--�������� � ��������
	MisResultAction(GiveItem, 2842, 1, 4)
	MisResultAction(ClearMission, 1292) 
	MisResultAction(ClearRecord, 1303)
	MisResultAction(SetRecord, 1304) 
	MisResultBagNeed(1)
	


----------------------------
----����� �����
----------------------------


	------------------------------------���˻ ֮ ʧ�ٵ�ʥ��------------  ʥ�𴫵ݴ�ʹ
	DefineMission( 6250, "Missing Sacred Flame", 1306 )
	MisBeginTalk("<t>I guess the Sacred Flame must have been robbed by the<r Sand Bandit (1065,3137)>, who are outside the Shaitan City, hurry and investigate.")
	MisBeginCondition(NoMission, 1306)
	MisBeginCondition(NoRecord, 1306)
	MisBeginCondition(NoRecord, 1307)
	MisBeginCondition(NoRecord, 1308)
	MisBeginCondition(NoRecord, 1309)
	MisBeginCondition(NoRecord, 1314)
	MisBeginCondition(NoRecord, 1315)
	MisBeginCondition(NoRecord, 1316)
	MisBeginCondition(NoRecord, 1317)
	MisBeginCondition(NoRecord, 1318)
	MisBeginCondition(NoRecord, 1319)
	MisBeginCondition(NoRecord, 1321)
	MisBeginCondition(NoRecord, 1322)
	MisBeginCondition(NoRecord, 1323)
	MisBeginAction(AddMission, 1306)
	MisCancelAction(ClearMission, 1306)
	MisBeginAction(AddTrigger, 13061, TE_KILL, 45, 10)

	MisNeed(MIS_NEED_DESP, "Relay Officer (871,3580) asks you to defeat 10 Sand Bandits.")
	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)

	MisHelpTalk("<t>ɳ�˾���ɳᰳ��⣬��ȥ��ȥ")	
	MisResultTalk("<t>Well done, young guy! Now bring the Tinder and a letter to the Blacksmith - Bash at Icicle Castle (1344,529), only him can make another Sacred Torch.")
	MisResultCondition(HasMission, 1306)
	MisResultCondition(HasFlag, 1306, 19)	
	
	MisResultAction(ClearMission,1306)
	MisResultAction(SetRecord,1306)
	MisResultBagNeed(2)
	MisResultAction(GiveItem, 5802, 1, 4)
	MisResultAction(GiveItem, 5841, 1, 4)
	MisResultAction( AddMoney , 5000)
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 45)	
	TriggerAction( 1, AddNextFlag, 1306, 10, 10 )
	RegCurTrigger( 13061 )
	
	
	----------------------------------���˻ ֮ ����ʥ����------------ ��������
	DefineMission( 6251, "Make a new Torch",1307 )
	MisBeginTalk("<t>Well done, we have finally found the Tinder which was missing for several long years, but to make a new Torch, I need more stuff, can you collect them for me?")
	MisBeginCondition(NoMission, 1307)
	MisBeginCondition(HasRecord, 1306)
	MisBeginCondition(HasItem, 5802, 1)
	MisBeginCondition(HasItem, 5841, 1)
	
	MisBeginAction(AddMission, 1307)
	MisCancelAction(ClearMission, 1307)
	MisBeginAction(TakeItem, 5841, 1, 4)
	
	MisNeed( MIS_NEED_DESP, "Collect 15 Ash Wood Log and 10 Crystal Ore, and take along the<r Tinder> with you to the Blacksmith - Bash at Icicle Castle (1344,529)")
	
	MisBeginAction( AddTrigger, 13071, TE_GETITEM, 3989, 15)
	MisBeginAction( AddTrigger, 13072, TE_GETITEM, 4546, 10)
	
	MisNeed( MIS_NEED_ITEM, 3989, 15, 10, 15)
	MisNeed( MIS_NEED_ITEM, 4546, 10, 20, 10)
	
	MisResultTalk( "<t>Let me have a look.")
	MisHelpTalk( "<t>��ֻҪ15����ҶС��ԭľ��10��ˮ����ʯ������ô����")
	MisResultCondition( HasMission, 1307)
	MisResultCondition( HasRecord, 1306)
	MisResultCondition( HasItem, 3989, 15)
	MisResultCondition( HasItem, 4546, 10)
	MisResultCondition( HasItem, 5802, 1)


	MisResultAction( TakeItem, 3989, 15)
	MisResultAction( TakeItem, 4546, 10)
	MisResultAction( TakeItem, 5802, 1)
	MisResultAction( AddMoney , 5000)
	MisResultAction( ClearMission, 1307)
	MisResultAction( ClearRecord, 1306)
	MisResultAction( SetRecord, 1307)
	
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3989)	
	TriggerAction( 1, AddNextFlag, 1307, 10, 15)
	RegCurTrigger( 13071 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4546)	
	TriggerAction( 1, AddNextFlag, 1307, 20, 10)
	RegCurTrigger( 13072 )
	
	----------------------------------���˻ ֮ ������Ҫ��------------  ��������
	DefineMission( 6252, "Make a new Torch",1308 )
	MisBeginTalk("<t>The stuff is enough, you see, I'm getting old, I'm hurry and thirsty now, can you find 10 Red Dates and 10 Snowy Soft Bud for me? After eating, I can work.")
	MisBeginCondition(NoMission, 1308)
	MisBeginCondition(NoRecord, 1308)
	MisBeginCondition(HasRecord, 1307)
	
	MisBeginAction(AddMission, 1308)
	MisCancelAction(ClearMission, 1308)
	
	
	MisNeed( MIS_NEED_DESP, "<r Blacksmith - Bash(1344,529)> at Icicle Castle ask you to collect <r10 Red Dates> and <r10 Snowy Soft Bud>, and bring them to him after collecting.")
	
	MisBeginAction( AddTrigger, 13081, TE_GETITEM, 3117, 10)
	MisBeginAction( AddTrigger, 13082, TE_GETITEM, 3136, 10)
	
	MisNeed( MIS_NEED_ITEM, 3117, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 3136, 10, 20, 10)
	
	MisResultTalk( "<t>You are really a big help.")
	MisHelpTalk( "<t>You can't do it, right?")
	MisResultCondition( HasMission, 1308)
	MisResultCondition( HasRecord, 1307)
	MisResultCondition( HasItem, 3117, 10)
	MisResultCondition( HasItem, 3136, 10)

	MisResultBagNeed(1)
	MisResultAction( TakeItem, 3117, 10)
	MisResultAction( TakeItem, 3136, 10)
	MisResultAction(GiveItem, 5842, 1, 4)       
	MisResultAction( ClearMission, 1308)
	MisResultAction( ClearRecord, 1307)
	MisResultAction( SetRecord, 1308)
	MisResultAction( AddMoney , 5000)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3117)	
	TriggerAction( 1, AddNextFlag, 1308, 10, 10)
	RegCurTrigger( 13081 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3136)	
	TriggerAction( 1, AddNextFlag, 1308, 20, 10)
	RegCurTrigger( 13082 )
	
----------------------------------���˻ ֮ ��ȼʥ��------------������������ʼ��
	DefineMission( 6253, "��ȼʥ��",1309 )
	MisBeginTalk( "<t>����Ѿ���������Ͽ���Ż��ȥ��ʥ�𴫵ݴ�ʹ�ɣ�����������Ӧ�û�û�뿪ɳᰳ�(871,3580)���ǵðѻ����ڱ����ڣ�")
	MisBeginCondition(NoRecord, 1309 )
	MisBeginCondition(NoMission, 1309 )
	MisBeginCondition(HasRecord, 1308 )
	MisBeginAction(AddMission, 1309 )
	MisCancelAction(ClearMission, 1309)
		
	MisNeed(MIS_NEED_DESP, "�ѻ�����ɳᰳ�ʥ�𴫵ݴ�ʹ(871,3580)")
	MisHelpTalk("<t>������û�뿪ɳᰳǸϽ��ѻ���������ʥ�𴫵ݴ�ʹ����ɳᰳ�(871,3580)")
	MisResultCondition( AlwaysFailure )
	
----------------------------------���˻ ֮ ��ȼʥ��------------ʥ�𴫵ݴ�ʹ��������
	DefineMission( 6254, "��ȼʥ��",1309, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>�����ڻ����ˣ��������˻�棬̫���ˣ�")
	MisResultCondition( HasMission, 1309)
	MisResultCondition( NoRecord, 1309)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1309)
	MisResultAction( SetRecord, 1309)
	MisResultAction( AddMoney , 5000)

----------------------------------���˻ ֮ �ʰ�֮��------------ʥ�𴫵ݴ�ʹ	����ʼ��
	DefineMission( 6255, "�ʰ�֮��",1310 )
	MisBeginTalk( "<t>��Ҫ��ȼʥ��̨����Ҫ�߱���ߵ�Ʒ�ʣ�����Ҫ�����һϵ�п�����֤�����Լ����������ҿ������Ƿ�߱���һ���ʰ�֮�ģ�ֻ�аѻ����ڱ����ڲſ�����ȡ����ɿ��飡")
	MisBeginCondition(NoRecord, 1310 )
	MisBeginCondition(NoMission, 1310 )
	MisBeginCondition(HasRecord, 1309 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1310)
	MisCancelAction(ClearMission, 1310)
	
	MisNeed(MIS_NEED_DESP, "��ȥ���ɴ�½��·�ˡ��ͱ�(994,1234)��һ�°�")
	MisHelpTalk("<t>�㻹���Ͻ�ȥ��·�ˡ��ͱ�(994,1234)")
	MisResultCondition( AlwaysFailure )
----------------------------------���˻ ֮ �ʰ�֮��------------·�ˡ��ͱ�	��������
	DefineMission( 6256, "�ʰ�֮��",1310, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>���������뵽���ˣ���һ��������ܾ�����")
	MisResultCondition( HasMission, 1310)
	MisResultCondition( NoRecord, 1310)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1310)
	MisResultAction( SetRecord, 1310)
	MisResultAction( AddMoney , 5000)
----------------------------------���˻ ֮ �ʰ�֮��2------------·�ˡ��ͱ�	����ʼ��
	DefineMission( 6257, "�ʰ�֮�Ķ�",1311 )
	MisBeginTalk( "<t>�ں������������л��������Ҫ���ǹ��ĵ��ˣ�ϣ�����ܹ�ȥ̽������һ��")
	MisBeginCondition(NoRecord, 1311 )
	MisBeginCondition(NoMission, 1311 )
	MisBeginCondition(HasRecord, 1310 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1311)
	MisCancelAction(ClearMission, 1311)
	
	MisNeed(MIS_NEED_DESP, "��ȥħŮ֮��ȥ���������ӡ���ɳ��(1254,3491)��һ�°�")
	MisHelpTalk("<t>лл�������ң��Ͽ�ȥħŮ֮�����������ӡ���ɳ��(1254,3491)")
	MisResultCondition( AlwaysFailure )
----------------------------------���˻ ֮ �ʰ�֮��2------------�������ӡ���ɳ��	��������
    DefineMission( 6258, "�ʰ�֮�Ķ�",1311, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>��ã�İ���ˣ������Ѿ��ܾ�û���˾����ˣ�")
	MisResultCondition( HasMission, 1311)
	MisResultCondition( NoRecord, 1311)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1311)
	MisResultAction( SetRecord, 1311)
	MisResultAction( AddMoney , 5000)
----------------------------------���˻ ֮ �ʰ�֮��3------------�������ӡ���ɳ��	����ʼ��
    DefineMission( 6259, "�ʰ�֮����",1312 )
	MisBeginTalk( "<t>�������������ǵ���ǰ�Ҿ�������Ⱥ����ʱ��������һ���¶�����ָ��")
	MisBeginCondition(NoRecord, 1312 )
	MisBeginCondition(NoMission, 1312)
	MisBeginCondition(HasRecord, 1311 )
	MisBeginCondition( HasItem, 5842, 1)
   	MisBeginAction(AddMission, 1312)
	MisCancelAction(ClearMission, 1312)
	
	MisNeed(MIS_NEED_DESP, "ȥ�����ղ���վ���Ƕ�����(194,1715)��һ�°�")
	MisHelpTalk("<t>�Ǻ�İ���ˣ��Ͽ�ȥ������Ⱥ�����Ƕ�����(194,1715)")
	MisResultCondition( AlwaysFailure )
----------------------------------���˻ ֮ �ʰ�֮��3------------����ָ�ӡ��Ƕ�����	��������
	DefineMission( 6260, "�ʰ�֮����",1312, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>�ۣ����������������ҵ��")
	MisResultCondition( HasMission, 1312)
	MisResultCondition( NoRecord, 1312)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1312)
	MisResultAction( SetRecord, 1312)
	MisResultAction( AddMoney , 5000)
----------------------------------���˻ ֮ �ʰ�֮��4------------����ָ�ӡ��Ƕ�����	����ʼ��
	DefineMission( 6261, "�ʰ�֮����",1313 )
	MisBeginTalk( "<t>�ڴ�������һ���бȸǵ��������ˣ������ֹ���ͣ��������Ҫ�˰�æŶ")
	MisBeginCondition(NoRecord, 1313 )
	MisBeginCondition(NoMission, 1313)
	MisBeginCondition(HasRecord, 1312 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1313)
	MisCancelAction(ClearMission, 1313)
	
	MisNeed(MIS_NEED_DESP, "ȥ���������������ӡ��ȸ�(3235,2550)�����°ɣ�")
	MisHelpTalk("<t>����ô�����⣬��ȥȥ���������������ӡ��ȸ�(3235,2550)�ɣ�")
	MisResultCondition( AlwaysFailure )
----------------------------------���˻ ֮ �ʰ�֮��4------------�������ӡ��ȸ�	 ��������
	DefineMission( 6262, "�ʰ�֮����",1313, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>���˻��뵽�����̫���ˣ������и���Ŷ")
	MisResultCondition( HasMission, 1313)
	MisResultCondition( NoRecord, 1313)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1313)
	MisResultAction( SetRecord, 1313)
	MisResultAction( AddMoney , 5000)
----------------------------------���˻ ֮ �ʰ�֮��5------------�������ӡ��ȸ�	 ����ʼ��
	DefineMission( 6263, "�ʰ�֮����",1314 )
	MisBeginTalk( "<t>�Ǻǣ���ʵ���˽��ˣ��������֤���Լ���һ���ʰ�֮�ģ��㻹�ǵ��ҵ���������ʹ")
	MisBeginCondition(NoRecord, 1314 )
	MisBeginCondition(NoMission, 1314)
	MisBeginCondition(HasRecord, 1313 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1314)
	MisCancelAction(ClearMission, 1314)
	
	MisNeed(MIS_NEED_DESP, "��ȥ���ձ��ҵ�������ʹ(690,1043)�ɣ�")
	MisHelpTalk("<t>ץ��ʱ��ɺ��ӣ���ȥ�Ҽ��ձȵĵ�������ʹ(690,1043)��")
	MisResultCondition( AlwaysFailure )
----------------------------------���˻ ֮ �ʰ�֮��5------------��������ʹ	 ��������
	
	DefineMission( 6264, "�ʰ�֮����",1314, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>������ÿ�����������������ʿȥð�գ����������������а��ĵ��ˡ�")
	MisResultCondition( HasMission, 1314)
	MisResultCondition( NoRecord, 1314)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1314)
	MisResultAction( SetRecord, 1314)
	MisResultAction( AddMoney , 5000)
----------------------------------���˻ ֮ �ʰ�֮��6-----------��������ʹ	 ����ʼ��
	DefineMission( 6265, "�ʰ�֮����",1315 )
	MisBeginTalk( "<t>�������Ѿ���ȫ֤������İ��ģ����������ʰ�֮�Ļ��ǲ����ģ���ص�ʥ�𴫵ݴ�ʹ���Ҳ����������һ����������")
	MisBeginCondition(NoRecord, 1315 )
	MisBeginCondition(NoMission, 1315)
	MisBeginCondition(HasRecord, 1314 )
	MisBeginCondition( HasItem, 5842, 1)
    	MisBeginAction(AddMission, 1315)
	MisCancelAction(ClearMission, 1315)
	
	MisNeed(MIS_NEED_DESP, "��ص�ʥ�𴫵ݴ�ʹ(871,3580)����������ܸ���ʲô�����ɣ�")
	MisHelpTalk("<t>ʥ�𴫵ݴ�ʹ����(871,3580)����ӿ���Ĳ������Ͻ�����ɣ�")
	MisResultCondition( AlwaysFailure )

----------------------------------���˻ ֮ �ʰ�֮��6------------ʥ�𴫵ݴ�ʹ	 ��������
	
	DefineMission( 6266, "�ʰ�֮����",1315, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>������Ϸ�������ϣ�������ƴ��Լ����ذ����ˣ�����ÿһ�죡���и���Ŀ����ڵ����㣬ϣ�����ܼ�ֵ��ף�")
	MisResultCondition( HasMission, 1315)
	MisResultCondition( NoRecord, 1315)
	MisResultCondition( HasItem, 5842, 1)
	--MisResultCondition( ItemAttrNum, 5825, 6, 10000, 0)
	MisResultBagNeed(1)
	MisResultAction( ClearMission, 1315)
	MisResultAction( SetRecord, 1315)

	MisResultAction( GiveItem, 5797 , 1 , 4)
	MisResultAction( AddMoney , 5000)

	
	----------------------------------���˻  ֮ ��ν֮��------------ʥ�𴫵ݴ�ʹ	 ����ʼ��
	DefineMission( 6267, "�µĿ���",1316 )
	MisBeginTalk( "<t>֤�����Լ������ҿ����㵽���ж��¸ң�")
	MisBeginCondition(NoRecord, 1316)
	MisBeginCondition(NoMission, 1316)
	MisBeginCondition(HasRecord, 1315 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1316)
	MisCancelAction(ClearMission, 1316)
	
	MisNeed(MIS_NEED_DESP, "����Ǳ����Ҷ�����Ա(1374,529)̸̸��������������������εĿ��飡")
	MisHelpTalk("<t>�㻹����ȥ�ұ��Ǳ����Ҷ�����Ա(1374,529)�ɣ�����˿����ٻ������ҡ�")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------���˻ ֮ ��ν֮��------------�Ҷ�����Ա	 ��������	
	DefineMission( 6268, "�µĿ���",1316, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>����Ҳµ�û��Ļ�����Ҳ��ʥ�𴫵ݴ�ʹ�Ƽ����İɣ������ǾͿ�ʼ��")
	MisResultCondition( HasMission, 1316)
	MisResultCondition( NoRecord, 1316)
	MisResultCondition( HasItem, 5842, 1)	
	MisResultAction( ClearMission, 1316)
	MisResultAction( ClearRecord, 1315)
	MisResultAction( SetRecord, 1316)
	MisResultAction( AddMoney , 5000)
	
	----------------------------------���˻  ֮ ��ν֮��һ------------�Ҷ�����Ա	 ����ʼ��
	DefineMission( 6269, "��η֮��һ",1317 )
	MisBeginTalk( "<t>��ε�Ҫ����ľ��ǿ������Ƿ��㹻�¸ҡ��һ����һ����η֤֮�������¼���ս����Ϣ����Ҫ���ľ��ǳɹ�ɱ��10��,Ȼ�������η֤֮ȥ��ʥ�𴫵ݴ�ʹ��871��3580����׼������ô��")
	MisResultBagNeed(1)
	MisBeginCondition(NoRecord, 1317)
	MisBeginCondition(NoMission, 1317)
	MisBeginCondition(HasRecord, 1316 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1317)
	
	MisBeginAction(GiveItem, 5803, 1 ,41)
	MisCancelAction(SysteamNotice, "�������޷��ж�")
	MisResultCondition( AlwaysFailure )
	MisNeed(MIS_NEED_DESP, "����η֤֮�ϵ�ɱ�����ۼƵ�10��ȥɳᰳ���ʥ�𴫵ݴ�ʹ��871��3580���������")
	MisHelpTalk("<t>ֻ�е���η֤֮�ϵ�ɱ������10ʱ�����������Ŷ�������㻹������Ż��")
	MisBeginBagNeed(1)
	
	---------------------------------���˻ ֮ ��ν֮��һ------------ʥ�𴫵ݴ�ʹ	 ��������
	DefineMission( 6270, "��η֮��һ",1317)
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>������û�뵽����ô�������ɿ��飬����̫���ˣ������¸������")	
	
	MisResultCondition(HasMission, 1317)
	MisResultCondition(HasRecord, 1316)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultCondition(CheckPoint, 5803)

	MisResultBagNeed(2)
	MisResultAction(TakeItem, 5803, 1)
	MisResultAction(ClearMission, 1317) 
	MisResultAction(ClearRecord, 1316)
	MisResultAction(GiveItem, 5798, 1, 4)
	MisResultAction(GiveItem, 3096, 2, 4)
	MisResultAction(ClearRecord, 1316)
	MisResultAction(SetRecord, 1317) 
	MisResultAction( AddMoney , 5000)
	MisResultBagNeed(1)
	
	---------------------------------���˻ ֮ ����֮��------------ʥ�𴫵ݴ�ʹ	 ����ʼ��
	DefineMission( 6271, "����֮��",1318 )
	MisBeginTalk( "<t>��������ΰ��ľ�����˽�ķ���....")
	MisBeginCondition(NoRecord, 1318)
	MisBeginCondition(NoMission, 1318)
	MisBeginCondition(HasRecord, 1317 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1318)
	MisCancelAction(ClearMission, 1318)
	MisNeed(MIS_NEED_DESP, "���������Ŀ󹤴���296,57��̸̸��������������������εĿ��飡")
	MisHelpTalk("<t>�㻹����ȥ���������Ŀ󹤴���296,57���ɣ�����˿����ٻ������ҡ�")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------���˻ ֮ ����֮��------------�󹤴����	 ��������
	DefineMission( 6272, "����֮��",1318, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>����ô��ô�����������������ɽ��...")	
	MisResultCondition(HasMission, 1318)
	MisResultCondition(HasRecord, 1317)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultAction(ClearMission, 1318)
	MisResultAction(ClearRecord, 1317)
	MisResultAction(SetRecord, 1318) 
	MisResultAction( AddMoney , 5000)
	
	---------------------------------���˻ ֮ ����֮��һ------------�󹤴����	
	DefineMission( 6273, "����֮��һ",1319 )
	MisBeginTalk( "<t>��εĿ�����Ҫ��Ϊʥ�𴫵ݻ���׵����ʣ���ɱ����ò�ֵǮ�Ķ������ɻ���أ�����Ҫ5����ʥ�ľ����ӡ��")
	MisBeginCondition(NoRecord, 1319)
	MisBeginCondition(NoMission, 1319)
	MisBeginCondition(HasRecord, 1318 )	
	MisBeginAction(AddMission, 1319)
	MisCancelAction(ClearMission, 1319)

	MisNeed(MIS_NEED_DESP, "�󹤴���296,57��Ҫ�������5�������ӡ����")	
	MisHelpTalk("<t>�㿴����ÿ����ô����Ĺ�������Ϊ��ӭ��ʥ�𴫵ݻ����ҲӦ����������һЩ�����ɣ�����ֻ����Ҫ5�������ӡ���ѣ�")
	
	MisResultTalk("<t>̫���ˣ�������ϲ�������ӡ�ˣ�̫лл���ˣ��һ����ı��ָ���ʥ�𴫵ݴ�ʹ�ģ�")	
	
	MisResultCondition(HasMission, 1319)
	MisResultCondition(HasRecord, 1318)
	MisResultCondition(HasItem, 2588, 5)
	
	MisResultAction(ClearMission, 1319)	
	MisResultAction(TakeItem, 2588,5)
	MisResultAction(ClearRecord, 1318)
	MisResultAction(SetRecord, 1319) 
	MisResultAction( AddMoney , 5000)


	---------------------------------���˻ ֮ ����֮�Ķ�------------�󹤴����	 ����ʼ��
	DefineMission( 6274, "����֮�Ķ�",1320 )
	MisBeginTalk( "<t>�Ͻ���ȥ��ʥ�𴫵ݴ�ʹ�ɣ���ı������Ѿ�֪���ˣ������ڴ������ٴμ��棡")
	MisBeginCondition(NoRecord, 1320)
	MisBeginCondition(NoMission, 1320)
	MisBeginCondition(HasRecord, 1319 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1320)
	MisCancelAction(ClearMission, 1320)
	MisNeed(MIS_NEED_DESP, "ȥ��ɳᰳǵ�ʥ�𴫵ݴ�ʹ(871,3580)���İɣ�������ı��ַǳ�����")
	MisHelpTalk("<t>ʥ�𴫵ݴ�ʹ����ɳᰳǵ�(871,3580)")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------���˻ ֮ ����֮�Ķ�------------ʥ�𴫵ݴ�ʹ	 ��������
	DefineMission( 6275, "����֮�Ķ�",1320, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>�����ּ����ˣ���ı������Ѿ���˵�ˣ��Һܸ���������������ķ��׾���ϣ�������ٽ������úñ��֣�")	
	MisResultCondition(HasMission, 1320)
	MisResultCondition(HasRecord, 1319)	
	MisResultCondition(HasItem, 5842, 1)

	MisResultBagNeed(1)
	MisResultAction(ClearMission, 1320)
	MisResultAction(ClearRecord, 1319)
	MisResultAction(SetRecord, 1320) 
	MisResultAction(GiveItem, 5800,1,4)
	MisResultAction( AddMoney , 5000)

	
	---------------------------------���˻ ֮ �ǻ�֮��-----------ʥ�𴫵ݴ�ʹ ����ʼ��
	DefineMission( 6276, "�ǻ�֮��",1321 )
	MisBeginTalk( "<t>�ں���������������һλ���зǷ��ǻ۵����ߣ�����������������(1755,908)��Ů�������������ᵽ���㣬��Ҳ���������档��ȥ�ɣ�����ÿ���˶��л����Ů������")
	MisBeginCondition(NoRecord, 1321)
	MisBeginCondition(NoMission, 1321)
	MisBeginCondition(HasRecord, 1320)
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1321)
	MisCancelAction(ClearMission, 1321)
	MisNeed(MIS_NEED_DESP, "ȥ����(1755,908)��Ů�����İɣ����ǳ������")
	MisHelpTalk("<t>Ů���������(1755,908)�����Ͽ������")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------���˻ ֮ �ǻ�֮��------------Ů��	 ��������
	DefineMission( 6277, "�ǻ�֮��",1321, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>����Ǵ�ʹ�ᵽ���Ǹ������ˣ��ܸ��˺������...")	
	MisResultCondition(HasMission, 1321)
	MisResultCondition(HasRecord, 1320)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultAction(ClearMission, 1321)
	MisResultAction(ClearRecord, 1320)
	MisResultAction(SetRecord, 1321) 
	MisResultAction( AddMoney , 5000)
	
	---------------------------------���˻ ֮ �ǻ�֮��һ------------Ů��	 ����ʼ��
	DefineMission( 6278, "�ǻ�֮��һ",1322 )
	MisBeginTalk( "<t>ʥ�𴫵ݴ�ʹ����������������εĿ��飬���Ҫ����׼��Ŷ������Ҫ����Ҵ�Щ��������...һ��<��˵�������������������ϵ��˿��кܺõ�Ч��>����Ʒ��һ��<ȭ�����ǵıر�Ʒ>����Ʒ�����ⶼ�벻���Ļ�ֻ��˵����Ⱦƹ�����")
	MisBeginCondition(NoRecord, 1322)
	MisBeginCondition(NoMission, 1322)
	MisBeginCondition(HasRecord, 1321)
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1322)
	MisCancelAction(ClearMission, 1322)
	
	MisHelpTalk("<t>Ů��(1755,908)��Ҫһ��<r��˵�������������������ϵ��˿��кܺõ�Ч��>����Ʒ��һ��<rȭ�����ǵıر�Ʒ>����Ʒ����û�뵽������ʲô�������ѵ���Ⱦƹ�����")
	MisNeed(MIS_NEED_DESP, "Ů����Ҫһ��<r��˵�������������������ϵ��˿��кܺõ�Ч��>����Ʒ��һ��<rȭ�����ǵıر�Ʒ>����Ʒ��")
	MisBeginAction(AddTrigger, 13221, TE_GETITEM, 4435, 1)          
	MisBeginAction(AddTrigger, 13222, TE_GETITEM, 4468, 1)	
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4435)	
	TriggerAction( 1, AddNextFlag, 1322, 10, 1)
	RegCurTrigger( 13221 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4468)	
	TriggerAction( 1, AddNextFlag, 1322, 20, 1)
	RegCurTrigger( 13222 )
	
	MisResultTalk("<t>��Ȼ�������ѹִ�ʹ��ô������...��Ҫ����Ŷ���һ���Ҫ��ش�һЩ�����ǻ�֮�ĵ����⣬ֻ������ȫ�ش���ȷ������ɿ��飡")

	MisResultCondition(HasMission, 1322)
	MisResultCondition(NoRecord, 1322)
	MisResultCondition(HasRecord, 1321)
	MisResultCondition(HasItem, 5842, 1)
	MisResultCondition(HasItem, 4435, 1)
	MisResultCondition(HasItem, 4468, 1)
	MisResultAction(TakeItem, 4435, 1)
	MisResultAction(TakeItem, 4468, 1)	
	MisResultAction(ClearMission, 1322)
	MisResultAction( AddMoney , 5000)
	MisResultAction(ClearRecord, 1321)
	MisResultAction(SetRecord, 1322)  ----��NPC�Ի������õ���record  ������������ȥ�ĶԻ�
	
	
	---------------------------------���˻ ֮ ʥ��̨------------ʥ�𴫵ݴ�ʹ	 ����ʼ��
	DefineMission( 6279, "ʥ��̨",1323 )	
	MisBeginTalk( "<t>���Ѿ����ǰ��4����ˣ������ﻹ��һ�żᶨ֮�ģ���ֻ�����ܹ�������ǰ��4�����ˣ���ȥ�ɣ������ˣ��������ĺͻ���ҵ�ʥ��̨�ѻ���ȼ�ɣ�ʥ��̨Ӧ�þ���ɳ᰸ۿڸ���")
	
	MisResultBagNeed(1)
	MisBeginCondition(NoRecord, 1322)
	
	MisBeginCondition(HasItem, 5801, 1)
	MisBeginCondition(NoMission, 1323)
	MisBeginAction(AddMission, 1323)		
	MisBeginAction(GiveItem, 5799, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "�������޷��ж�")
	MisNeed(MIS_NEED_DESP, "����5�ĺͻ���ҵ�ʥ��̨") 
	MisHelpTalk("<t>ǧ����Ū���κ�һ�����Լ���棬����ͻṦ��һ����")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------���˻ ֮ ʥ��̨------------ʥ��̨	 ��������
	DefineMission( 6280, "ʥ��̨",1323, COMPLETE_SHOW )	
	MisBeginCondition( AlwaysFailure )
	MisResultTalk("<t>��ϲ�㣡���Ѿ��ɹ�ͨ�������Ŀ��飡")	
	MisResultCondition(HasMission, 1323)		
	MisResultCondition(HasItem, 5842, 1)   --����ϻ��
	MisResultCondition(HasItem, 5797, 1)   --�ʰ�֮�� 
	MisResultCondition(HasItem, 5798, 1)   --��η֮��
	MisResultCondition(HasItem, 5799, 1)   --�ᶨ֮��
	MisResultCondition(HasItem, 5800, 1)   --����֮��
	MisResultCondition(HasItem, 5801, 1)   --�ǻ�֮��
	
	
	MisResultAction(ClearMission, 1323)	
	MisResultAction(SetRecord, 1324)
	MisResultAction(ClearRecord, 1323)	
	MisResultAction( AddMoney , 5000)
	
	---------------------------------����------------�������	 ����ʼ��
	DefineMission (6628, "��ʳ����ʢ��", 1860)
	MisBeginTalk( "<t>������������ʳ�����ĵ�������λ������⿴�ʦ֮���Ա��˴�������Ϊ��ӵ��һ������ļ��գ�������⿳�һ�����С�����ʢ�硱����㣬���ǿ�����������������1�㣡")
	MisBeginCondition(NoRecord, 1860)
	MisBeginCondition(NoRecord, 1863)
	MisBeginCondition(NoMission, 1860)
	MisBeginAction(AddMission, 1860)		
	MisNeed(MIS_NEED_DESP, "����֪����ʳ���ټ�����ȴû�м�������˵�����ư���ľƹ��ҵ��ڣ�2222��2889��������������Ϣ��") 
	MisHelpTalk("<t>��˵�����ư���ľƹ��ҵ��ڣ�2222��2889��������������Ϣ����ȥ���ʰɡ�")
	MisCancelAction(ClearMission, 1860)
	MisResultCondition( AlwaysFailure )
	
	---------------------------------����------------�ҵ���	 ��������
	DefineMission( 6623, "��ʳ����ʢ��",1860, COMPLETE_SHOW )	
	MisBeginCondition( AlwaysFailure )
	MisResultTalk("<t>����֪��������⿴�ʦ����Ϣ���������ҵ�һ��СҪ��ɣ�")	
	MisResultCondition(HasMission, 1860)
	MisResultAction(SetRecord, 1860)
	MisResultAction(ClearMission, 1860)
	
	---------------------------------����2------------�ҵ���
	DefineMission (6624, "������ʳ�����ټ�", 1861)
	MisBeginTalk( "<t>�Ҳ�֪����Ҳ�����ҵľƺȵĻ������࣬���������ھư�Ů������������ƿ��ƵĻ����ҿ��ܻ�����������Ȼ������ҡ�·��ʮ�����Ļ�����Ҳ������ĸ���Щ��")
	MisBeginCondition(HasRecord, 1860)
	MisBeginCondition(NoRecord, 1861)
	MisBeginCondition(NoMission, 1861)
	MisBeginAction(AddMission, 1861)
		
	MisNeed(MIS_NEED_DESP, "�;�Ϊ0�ĺ�ƻ���·��ʮ��ֻ�з��ڱ����ڶ����ڲ���ЧŶ��") 
	MisHelpTalk("<t>�����ˣ����ǲ��������һ�û��������������ȥ������һЩ�ưɣ���")
	MisResultTalk("<t>���������Ϣ�ĳɹ�����10����·��ʮ��������Ϣ�ĳɹ�����20������ϸ�����½ǵ���ʾ�������ǳɹ��˻���ʧ����")

	MisResultCondition(Jiu_Check)
	MisResultAction(Jiu_Action)
	MisCancelAction(ClearMission, 1861)
	
	-------------------------------����3-----------�ҵ��� ����ʼ��
	DefineMission (6625, "������ʳ�����ؼ�", 1862)
	MisBeginTalk( "<t>�����ˣ�������ʳ���Ѿ�����ȥ����ð���ˣ���֮ǰ������һ���������ʳ�ĵ�С���ӣ�Ҳ��ֻ�о���������أ�2279��2746�����ܿ����ɣ�")
	MisBeginCondition(NoRecord, 1862)	
	MisBeginCondition(HasRecord, 1861)
	MisBeginCondition(NoMission, 1862)
	MisBeginAction(AddMission, 1862)		
	MisNeed(MIS_NEED_DESP, "�����Ǿ���������أ�2279��2746�������ö��ⶫ����ȥ���������������Ǹ��޼�֮����") 
	MisHelpTalk("<t>ȥ�Ұ����Ǿ���������أ�2279��2746���ɣ���������ʳ��ʦ���Ȿ�������ܻ�����������Ʒ����ζ�أ�")
	MisCancelAction(ClearMission, 1862)

	MisResultCondition( AlwaysFailure )
	
	---------------------------------����3------------�������	 ��������
	DefineMission( 6626, "������ʳ�����ؼ�",1862, COMPLETE_SHOW )	
	MisBeginCondition( AlwaysFailure )
	MisResultTalk("<t>������ʳ�����ؼ����찡����Ȼ��������㡰����ʢ�硱����ϸ��¼����Ҫ��ۡ��Ρ��������ϡ����ᡭ��.��ʳ�ĵĹ�����þͷǳ����ˣ�")	
	MisResultCondition(HasMission, 1862)
	MisResultAction(SetRecord, 1862)
	MisResultAction(ClearMission, 1862)	

	---------------------------------����4-----------�������
	DefineMission (6627, "�����㡰����ʢ�硱", 1863)
	MisBeginTalk( "<t>�Ҵ��Եļ�����һ�£�Ҫ����1888888����ܳɹ�������㡰����ʢ�硱��")
	MisBeginCondition(HasRecord, 1862)
	MisBeginCondition(NoRecord, 1863)
	MisBeginCondition(NoMission, 1863)
	MisBeginAction(AddMission, 1863)
	
	MisNeed(MIS_NEED_DESP, "����1888888����ܳɹ�������㡰����ʢ�硱��")
	MisHelpTalk("<t>�����ˣ�Ǯ�����Ͳ�Ҫ����Ū���ˣ�����Ȼ��Ͳ�С������û�ϣ�")
	MisResultTalk("<t>����������������㡰����ʢ�硱����˵��������ʳ���ߵ����Ե�Ŷ�����ȳԣ���һʧЧ�˿ɱ���ң�")
	
	MisResultBagNeed(1)
	MisResultCondition(HasMoney, 1888888)
	MisResultAction(TakeMoney, 1888888)
	MisResultAction(GiveItem, 6610, 1, 4)
	MisResultAction(SetRecord, 1863)
	MisResultAction(ClearMission, 1863)
	MisCancelAction(ClearMission, 1863)	
		
		---------------------------------��������������
	DefineMission( 6629, "\196\238\234\238\231\224\242\229\235\252\241\242\226\238", 1920 )
	
	MisBeginTalk( "<t>���� �� ������� ��������� � �� ��������� ����� ���, �� � ��� ���� ��������� �������������!" )
	MisBeginCondition(NoMission, 1920)
	MisBeginCondition(NoRecord, 1920)
	MisBeginAction(AddMission, 1920)

	MisBeginAction(AddTrigger, 19201, TE_GETITEM, 1638, 20 )--��������� �����
	MisBeginAction(AddTrigger, 19202, TE_GETITEM, 1641, 20 )--��������� ������
	MisBeginAction(AddTrigger, 19203, TE_GETITEM, 3363, 20 )--������� ���������
	MisBeginAction(AddTrigger, 19204, TE_GETITEM, 1644, 20 )--��������� �������
	MisBeginAction(AddTrigger, 19205, TE_GETITEM, 3362, 20 )--������ ���������
	MisBeginAction(AddTrigger, 19206, TE_GETITEM, 3360, 1 )---�����
	MisCancelAction(ClearMission, 1920)


	MisNeed(MIS_NEED_ITEM, 1638, 20, 0, 20)
	MisNeed(MIS_NEED_ITEM, 1641, 20, 20, 20)
	MisNeed(MIS_NEED_ITEM, 3363, 20, 40, 20)
	MisNeed(MIS_NEED_ITEM, 1644, 20, 60, 20)
	MisNeed(MIS_NEED_ITEM, 3362, 20, 80, 20)
	MisNeed(MIS_NEED_ITEM, 3360, 1, 100, 1)
		
	MisHelpTalk( "<t>�� �������!" )
	MisResultTalk( "<t>������� �� �������?!" )
	MisResultCondition(NoRecord, 1920)
	MisResultCondition(HasMission, 1920)
	MisResultCondition(HasItem, 3360, 1)
	MisResultCondition(HasItem, 1638, 20)
	MisResultCondition(HasItem, 1641, 20)
	MisResultCondition(HasItem, 3363, 20)
	MisResultCondition(HasItem, 1644, 20)
	MisResultCondition(HasItem, 3362, 20)
	MisResultCondition(HasMoney, 30000000)
	MisResultAction(TakeItem, 3360, 1)
	MisResultAction(TakeItem, 1638, 20)
	MisResultAction(TakeItem, 1641, 20)
	MisResultAction(TakeItem, 3363, 20)
	MisResultAction(TakeItem, 1644, 20)
	MisResultAction(TakeItem, 3362, 20)
	MisResultAction(TakeMoney, 30000000)
	MisResultAction(GiveItem, 2835, 1,95)
	MisResultAction(GiveItem, 2842, 1,95)
	MisResultAction(ClearMission, 1920)
	MisResultAction(SetRecord, 1920)
	--MisResultAction(AddExp, 800, 800)
--	MisResultAction(AddMoney,270,270)



	InitTrigger()
	TriggerCondition( 1, IsItem, 1638 )	
	TriggerAction( 1, AddNextFlag, 1920, 20, 20 )
	RegCurTrigger( 19201 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1641 )	
	TriggerAction( 1, AddNextFlag, 1920, 40, 20 )
	RegCurTrigger( 19202 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3363 )	
	TriggerAction( 1, AddNextFlag, 1920, 60, 20 )
	RegCurTrigger( 19203 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1644 )	
	TriggerAction( 1, AddNextFlag, 1920, 80, 20 )
	RegCurTrigger( 19204 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3362 )	
	TriggerAction( 1, AddNextFlag, 1920, 100, 20 )
	RegCurTrigger( 19205 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3360 )	
	TriggerAction( 1, AddNextFlag, 1920, 110, 1 )
	RegCurTrigger( 19206 )



------------------------------------------------------------------------------------------
---------------------------------������ 1-------------------------------------------------
------------------------------------------------------------------------------------------

------------------����������  �� ����������
	DefineMission( 2000, "\199\237\224\234\238\236\241\242\226\238  \241\238 \241\242\240\224\237\237\232\234\238\236", 2000 )
	
	MisBeginTalk( "������! � <b����>! � ������ ���� � ������� �����, ��� ����� ���� ��� � ���� ���������� �����, �� ��� ��� ���� ��� �� ��������� �������� ���, � ����� �����, ��� �� �����! �� ��� ������� �������, ���  ���� ����� �������! �� ����� � ��������� ������� ������, � ����� ������� ��� ���� ������ �� ������, � ������ �� ���� ������� ���...<n><t>������� ��� ������ �������! � �� ���� ��������, � ���� ���������� �� �����..." )
	MisBeginCondition(LvCheck, ">", 74 )
	MisBeginCondition(NoMission, 2000)
	MisBeginCondition(NoRecord, 2000)
	MisBeginAction(AddMission, 2000)
	MisBeginAction(AddTrigger, 20001, TE_GETITEM, 1649, 1 )--������ ����
	MisCancelAction(ClearMission, 2000)

	MisNeed(MIS_NEED_DESP, " �������� <b�����> � �����(2240,2680) <y������ ����>.")
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1)
		
	MisHelpTalk( " � ����� ������ ���� ��� ������� ���������� �� �����!" )
	MisResultTalk( " ��� ������������� ������ ����! ��� �� ��� � �����������?" )
	MisResultCondition(NoRecord, 2000)
	MisResultCondition(HasMission, 2000)
	MisResultCondition(HasItem, 1649, 1)
	MisResultAction(TakeItem, 1649, 1)
	MisResultAction(ClearMission, 2000)
	MisResultAction(SetRecord, 2000)
	MisResultAction(AddExp, 1000, 5000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649 )	
	TriggerAction( 1, AddNextFlag, 2000, 10, 1 )
	RegCurTrigger( 20001 )

----------------------------������ �������� ����
	DefineMission( 2001, "\205\224\247\224\235\238 \228\235\232\237\237\238\227\238 \239\243\242\232", 2001 )
	
	MisBeginTalk( "<t>������, ��������� �� ���, �������� ����� ���������� �����.<n><t>���� �� � ���� ���, ���� � ���, �� �� � �������� ������� ��� ��� ��������." )
	MisBeginCondition(NoMission, 2001)
	MisBeginCondition(NoRecord, 2001)
	MisBeginCondition(HasRecord, 2000)
	MisBeginAction(AddMission, 2001)
	MisBeginAction(AddTrigger, 20011, TE_GETITEM, 6975, 1 )---�������������� ����������
	MisBeginAction(AddTrigger, 20012, TE_GETITEM, 4800, 20 )--������� ���������
	MisCancelAction(ClearMission, 2001)

	MisNeed(MIS_NEED_DESP, " �������� <b�����> �� ������� � �����(2240,2680) <y�������������� �����> � <y20 ������ ���������>.<n><t>�� ��������������� ����� �� <p�.����������>." )
	MisNeed(MIS_NEED_ITEM, 6975, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4800, 20, 20, 20)
		
	MisHelpTalk( " � ���� �������������� � ���, ��� �� � ���� ��� ���� � ���!" )
	MisResultTalk( " ������! �� �������� ���, �� ��� ���� � �����!<n><t>������ ��� �������� ������ ����� ���, � ��� ������! ������, ���� �� ������ ������ ����� ��� ������ ������, ������������� � <b����� ���> � ������!" )
	MisResultCondition(NoRecord, 2001)
	MisResultCondition(HasMission, 2001)
	MisResultCondition(HasItem, 6975, 1)
	MisResultCondition(HasItem, 4800, 20)
	MisResultAction(TakeItem, 6975, 1)
	MisResultAction(TakeItem, 4800, 20)
	MisResultAction(ClearMission, 2001)
	MisResultAction(SetRecord, 2001)
	MisResultAction(AddExp, 10000, 10000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 6975 )	
	TriggerAction( 1, AddNextFlag, 2001, 10, 1 )
	RegCurTrigger( 20011 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4800 )	
	TriggerAction( 1, AddNextFlag, 2001, 20, 20 )
	RegCurTrigger( 20012 )

-----------------------------------�������������� �����
	DefineMission( 2002, "\196\238\234\224\231\224\242\229\235\252\241\242\226\238 \227\229\240\238\255", 2002 )
	
	MisBeginTalk( "<t>���� ����� <y�������������� �����>? � �� ���� �������� ��? � ��������� ��� ���� ������ ������! �� ������ ��� ��� ��������, ������� ����������� ����!" )
	MisBeginCondition(NoMission, 2002)
	MisBeginCondition(NoRecord, 2002)
	MisBeginCondition(HasRecord, 2000)
	MisBeginCondition(HasMission, 2001)
	MisBeginAction(AddMission, 2002)
	MisBeginAction(AddTrigger, 20021, TE_GETITEM, 164, 1 )---������ ���� (���� ����� �������)
	MisBeginAction(AddTrigger, 20022, TE_GETITEM, 166, 1 )---������� ���� ����� (�������� ������-������)
	MisBeginAction(AddTrigger, 20023, TE_GETITEM, 3067, 1 )---������������ ����� ������� (������� ������)
	MisBeginAction(AddTrigger, 20024, TE_GETITEM, 1265, 20 )--����� ������� ������� (������� �������-���������)
	MisCancelAction(ClearMission, 2002)

	MisNeed(MIS_NEED_ITEM, 164, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 166, 1, 15, 1)
	MisNeed(MIS_NEED_ITEM, 3067, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 1265, 20, 30, 20)

	MisPrize(MIS_PRIZE_ITEM, 6975, 1, 4)
	MisPrizeSelAll()
		
	MisHelpTalk( " ��������� ��� �� �����������, ��� �� � ������������� � ���!" )
	MisResultTalk( " ������! �� ��� ��������, ��� ���� �������������� �����!" )
	MisResultCondition(NoRecord, 2002)
	MisResultCondition(HasMission, 2002)
	MisResultCondition(HasItem, 164, 1)
	MisResultCondition(HasItem, 166, 1)
	MisResultCondition(HasItem, 3067, 1)
	MisResultCondition(HasItem, 1265, 20)
	MisResultAction(TakeItem, 164, 1)
	MisResultAction(TakeItem, 166, 1)
	MisResultAction(TakeItem, 3067, 1)
	MisResultAction(TakeItem, 1265, 20)
	MisResultAction(ClearMission, 2002)
	MisResultAction(SetRecord, 2002)
	MisResultAction(AddExp, 20000, 20000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 164 )	
	TriggerAction( 1, AddNextFlag, 2002, 10, 1 )
	RegCurTrigger( 20021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 166 )	
	TriggerAction( 1, AddNextFlag, 2002, 15, 1 )
	RegCurTrigger( 20022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3067 )	
	TriggerAction( 1, AddNextFlag, 2002, 20, 1 )
	RegCurTrigger( 20023 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1265 )	
	TriggerAction( 1, AddNextFlag, 2002, 20, 20 )
	RegCurTrigger( 20024 )

-----------------------------------����������� ����� � ����� �����
	DefineMission( 2003, "\207\238\241\226\229\249\184\237\237\224\255 \198\240\232\246\224 \226 \242\224\233\237\251 \193\238\227\238\226", 2003 )
	
	MisBeginTalk( "<t>�������� ��� ���� ������ ������ � �� ������� � ��������, ��������� �� ��� ��� �������� �� 10 ������ � ����������� ������." )
	MisBeginCondition(NoMission, 2003)
	MisBeginCondition(NoRecord, 2003)
	MisBeginCondition(HasRecord, 2001)
	MisBeginAction(AddMission, 2003)
	MisBeginAction(AddTrigger, 20031, TE_GETITEM, 3434, 10 )--
	MisBeginAction(AddTrigger, 20032, TE_GETITEM, 3435, 10 )--
	MisBeginAction(AddTrigger, 20033, TE_GETITEM, 3436, 10 )--
	MisBeginAction(AddTrigger, 20034, TE_GETITEM, 3437, 10 )--
	MisCancelAction(ClearMission, 2003)

	MisNeed(MIS_NEED_DESP, " �������� ����� �� �������� <g����������� ������> <b������ ����� ���> � <p������>." )
	MisNeed(MIS_NEED_ITEM, 3434, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3435, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3436, 10, 30, 10)
	MisNeed(MIS_NEED_ITEM, 3437, 10, 40, 10)
		
	MisHelpTalk(" ��.. ������� ��� ����� �� ������ ��������� �� ���������, �� �� ������������! ���� �� ������ ���������, ��� ��� �������� ��� �����!" )
	MisResultTalk( " ��! �� �������� ��� ������ ��, ��� � �������! ��... ��� ������� ��������� ��������� ������� ������ ���!" )
	MisResultCondition(NoRecord, 2003)
	MisResultCondition(HasMission, 2003)
	MisResultCondition(HasItem, 3434, 10)
	MisResultCondition(HasItem, 3435, 10)
	MisResultCondition(HasItem, 3436, 10)
	MisResultCondition(HasItem, 3437, 10)
	MisResultAction(TakeItem, 3434, 10)
	MisResultAction(TakeItem, 3435, 10)
	MisResultAction(TakeItem, 3436, 10)
	MisResultAction(TakeItem, 3437, 10)
	MisResultAction(ClearMission, 2003)
	MisResultAction(SetRecord, 2003)
	MisResultAction(AddExp, 80000, 80000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434 )	
	TriggerAction( 1, AddNextFlag, 2003, 10, 10 )
	RegCurTrigger( 20031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3435 )	
	TriggerAction( 1, AddNextFlag, 2003, 20, 10 )
	RegCurTrigger( 20032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436 )	
	TriggerAction( 1, AddNextFlag, 2003, 30, 10 )
	RegCurTrigger( 20033 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3437 )	
	TriggerAction( 1, AddNextFlag, 2003, 40, 10 )
	RegCurTrigger( 20034 )


-- ������ � ������
	DefineMission( 2004, "\207\240\224\226\228\224 \238 \193\238\227\232\237\229", 2004 )
	
	MisBeginTalk( "<t>���, ��� �� ��� ��������, ��� �� �������, ������� � ����������� �����, � �������� ��, ��� � ���� � ������! ��� ������ �������! ��� ������� ��������� ����� ����! � �� ����� ��������, ��� �� ������� ��!" )

	MisBeginCondition(HasRecord, 2003)
	MisBeginCondition(NoRecord, 2004)
	MisBeginCondition(NoMission, 2004)

	MisBeginAction(AddMission, 2004)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisHelpTalk( "<t>��� ���������� ����������� � ������� ����� �� ����!" )
	MisNeed(MIS_NEED_DESP, " ���������� � ������� ����� �� ����!" )
	
	MisResultCondition(AlwaysFailure)

--������ � ������
	DefineMission( 2005, "\207\240\224\226\228\224 \238 \193\238\227\232\237\229", 2004, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>�� �� ���? � ������ ����! ���������� ����� �� ����!" )
	MisResultCondition(HasMission, 2004)
	MisBeginCondition(NoRecord, 2004)
	
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 2004)
	MisResultAction(SetRecord, 2004)


-- ����� ������� ������
	DefineMission( 2006, "\209\224\236\224\255 \239\240\238\241\242\238\255 \231\224\228\224\247\224", 2005 )

	MisBeginTalk( "<t>� ����������� ����! ��� ������������� ����� �������� � � �������, ��� �� � ���� ��� ��� ��� �����! � ���� ��������� ���� �� ���������, ��� � ����� ����� ������ ����������.<n><t>������� ��� <y������� ���������>." )

	MisBeginCondition(HasRecord, 2004)
	MisBeginCondition(NoMission, 2005)
	MisBeginCondition(NoRecord, 2005)

	MisBeginAction(AddMission, 2005)
	MisBeginAction(AddTrigger, 20051, TE_GETITEM, 4212, 1)--������� ���������
	
	MisNeed(MIS_NEED_ITEM, 4212, 1, 10, 1)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisHelpTalk( "<t>�� ��� ������� �� � ��� � ��� ���������?" )

	MisResultTalk( "<t>��! ��� ��� ����� ���! �� ��� ���������� � ��������!" )

	MisResultCondition(HasMission, 2005)
	MisResultCondition(HasItem, 4212, 1)
	MisResultCondition(NoRecord,2005)

	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)
	MisResultAction(ClearMission, 2005)
	MisResultAction(TakeItem, 4212,1)
	MisResultAction(SetRecord, 2005)

	InitTrigger()
	TriggerCondition(1,IsItem, 4212)
	TriggerAction(1, AddNextFlag, 2005, 10, 1)
	RegCurTrigger(20051)


-- � ����� �� �����
	DefineMission( 2007, "\206\230\229\240\229\235\252\229 \235\254\225\226\232", 2006 )
	
	MisBeginTalk( "<t>��� ����� ���������!<n><t>� �������� � ������� ������� ���� <b������ �����>, � �������� ������� ���� ������ �������, ��� ��������, ��� �� � ������� �� �� �������� ��������!<n><t>������ �� ��� ��������� � <p������� �������>!" )

	MisBeginCondition(HasRecord, 2005)
	MisBeginCondition(NoRecord, 2006)
	MisBeginCondition(NoMission, 2006)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 2006)
	MisBeginAction(GiveItem, 6976,1,4)

	MisHelpTalk( "<t>������������! � �����... ��� ������ � ������... ����������!" )
	MisNeed(MIS_NEED_DESP, " ������� � ������� ������� <y���������� ������>." )--6976

	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!" )

	MisResultCondition(AlwaysFailure)

-- � ����� �� �����
	DefineMission( 2008, "\206\230\229\240\229\235\252\229 \235\254\225\226\232", 2006, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>������� ������ ���� �������� ��� �������! ������� ���� �����!" )
	MisResultCondition(HasMission, 2006)
	MisResultCondition(NoRecord,2006)
	MisResultCondition(HasItem, 6976, 1)

	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)

	MisResultAction(TakeItem, 6976, 1)
	MisResultAction(ClearMission, 2006)
	MisResultAction(SetRecord, 2006)
	MisResultAction(GiveItem, 6919,5,4)

-- � ���� �������� �� ���
	DefineMission( 2009, "\223 \225\243\228\243 \236\238\235\232\242\252\241\255 \231\224 \194\224\241", 2007 )
	
	MisBeginTalk( "<t>� ���� ��-�� ���� �� ���� ������� ������� ���������� ��� �������!<n><t>����� ����� <r��������� �� ������ - ����>! ��� ����, ��� �� ����������� ����������� �� ��� �������� ��� ���������� <y�������� ����>. � ��������� ��� ����� ����� ������� �������� � �� ����� ������� �����. ������ �� �������� ������ ���! ��������! ������!" )

	MisBeginCondition(HasRecord, 2006)
	MisBeginCondition(NoRecord, 2007)
	MisBeginCondition(NoMission, 2007)

	MisBeginAction(AddMission, 2007)
	MisBeginAction(AddTrigger, 20071, TE_GETITEM, 3454, 1)--�������� ����

	MisNeed(MIS_NEED_ITEM, 3454, 1, 10, 1)

	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")
	MisHelpTalk( "<t>...������ � <y�������� �����> � ����� ���������� <p�����������>! � ������ �� ���! �� ���� ��������� �������!" )

	MisResultTalk( "<t>� ����� ��� ������� ��� ������� �����������!" )

	MisResultCondition(HasMission, 2007)
	MisResultCondition(HasItem, 3454, 1)
	MisResultCondition(NoRecord, 2007)

	MisResultAction(TakeItem, 3454, 1)
	MisResultAction(AddExp, 200000, 200000)
	MisResultAction(AddMoney, 100000, 100000)

	MisResultAction(ClearMission, 2007)
	MisResultAction(SetRecord, 2007)

	InitTrigger()
	TriggerCondition(1, IsItem, 3454)
	TriggerAction(1, AddNextFlag, 2007, 10, 1)
	RegCurTrigger(20071)

-- �����������
	DefineMission( 2073, "\207\240\238\242\232\226\238\255\228\232\229", 2008 )
	
	MisBeginTalk( "<t>� ��� ������ ����� ���������� ������������ �����������!<n><t>�������� � ����� ������� <b������� �����> � <p�������>, ��������� �� � ��� �������?" )
	
	MisBeginBagNeed(1)
	MisBeginCondition(HasRecord, 2007)
	MisBeginCondition(NoRecord, 2008)
	MisBeginCondition(NoMission, 2008)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 2008)
	MisBeginAction(GiveItem, 6977, 1,4)

	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisHelpTalk( "<t>����� ����� ���� ����������� � ������������!" )
	MisNeed(MIS_NEED_DESP, " ������� ����������� <b������� �����> � <p������>." )

	MisResultCondition(AlwaysFailure)


-- �����������
	DefineMission( 2074, "\207\240\238\242\232\226\238\255\228\232\229", 2008, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk( "<t>��������� ��� ���������... ��...<n><t><b������> ��� ������� � �������... ��� �� ������� ����� �����������! ���� ������ ��� <y�����������>, �� �������� ������ �� ����� ���� � ��� ������� ������ ��� �������!" )
	MisResultCondition(HasMission, 2008)
	MisResultCondition(NoRecord, 2008)
	MisResultCondition(HasItem, 6977, 1)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(TakeItem, 6977, 1)
	MisResultAction(ClearMission, 2008)
	MisResultAction(SetRecord, 2008)


-- ������� ������
	DefineMission( 2075, "\199\224\225\251\242\251\233 \240\229\246\229\239\242", 2009 )
	
	MisBeginTalk( "<t>� ��������� � ��� �� ����� ������ �����������! � ����� ��� ����� ����� ��� �����, ��� ����� ������� <b������ ������>.<n><t>���������� � ���, �������� �� �������� ������." )

	MisBeginCondition(HasRecord, 2008)
	MisBeginCondition(NoRecord, 2009)
	MisBeginCondition(NoMission, 2009)

	MisBeginAction(AddMission, 2009)
	
	MisHelpTalk( "<t>���������� � <b������>, � ���� ������� ������!" )
	MisNeed(MIS_NEED_DESP, " ���������� � <b�������� ������> � <p�������>." )
	
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisResultCondition(AlwaysFailure)

-- ������� ������
	DefineMission( 2076, "\199\224\225\251\242\251\233 \240\229\246\229\239\242", 2009, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>��... �����? ������? �����������? ��������! ����� ��� ��������." )

	MisResultCondition(HasMission, 2009)
	MisResultCondition(NoRecord, 2009)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 2009)
	MisResultAction(SetRecord, 2009)

--����� ��� ������ ��������
	DefineMission( 2077, "\206\239\255\242\252 \253\242\224 \239\224\236\255\242\252 \239\238\228\226\238\228\232\242", 2010 )
	
	MisBeginTalk( "<t>�� �� ��� ������! � ����� �� �����! �� ������� ��� ������ ���������, ���� �������� <y������� ������>!<n><t><r������ ���>  �� <p�.�����> �������� ��������� ������������ ���� �������." )

	MisBeginCondition(HasRecord, 2009)
	MisBeginCondition(NoRecord, 2010)
	MisBeginCondition(NoMission, 2010)
	
	MisBeginAction(AddMission, 2010)
	MisBeginAction(AddTrigger, 20101, TE_GETITEM, 6978, 1)--������� ������
	MisNeed(MIS_NEED_ITEM, 6978, 1, 10, 1)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisHelpTalk( "<t>�������� ��� ���������!" )

	MisResultTalk( "<t>����� ����! � �� ��������!" )

	MisResultCondition(HasMission, 2010)
	MisResultCondition(NoRecord, 2010)
	MisResultCondition(HasItem, 6978, 1)
	
	MisResultAction(TakeItem, 6978, 1)
	MisResultAction(AddExp, 30000, 30000)
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 2010)
	MisResultAction(SetRecord, 2010)
	
	InitTrigger()
	TriggerCondition(1, IsItem, 6978)
	TriggerAction(1, AddNextFlag, 2010, 10, 1)
	RegCurTrigger(20101)

--���! ������ ���������
	DefineMission( 2078, "\211\240\224! \207\224\236\255\242\252 \226\229\240\237\243\235\224\241\252", 2011 )
	
	MisBeginTalk( "<t>� �������� ������ � ������� ���!<n><t>������ ������� ��� <b�����>." )

	MisBeginCondition(HasRecord, 2010)
	MisBeginCondition(NoRecord, 2011)
	MisBeginCondition(NoMission, 2011)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 2011)
	MisBeginAction(GiveItem, 6979, 1,4)--������ �����������
	MisHelpTalk("<t>����� ��� ���!" )
	MisNeed(MIS_NEED_DESP, "<t> ������� <y������ �����������> <b�����>." )

	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisResultCondition(AlwaysFailure)

-- ���! ������ ���������
	DefineMission( 2079, "\211\240\224! \207\224\236\255\242\252 \226\229\240\237\243\235\224\241\252", 2011, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)
	
	MisResultTalk("<t>�������! ����� ��� ���������� �� ����! � ��� � ��� ������ ���?!" )
	MisResultCondition(HasMission, 2011)
	MisResultCondition(NoRecord, 2011)
	MisResultCondition(HasItem, 6979, 1)

	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(TakeItem, 6979, 1)
	MisResultAction(ClearMission, 2011)
	MisResultAction(SetRecord, 2011)

-- ������������� �����������
	DefineMission( 2080 ,"\207\240\232\227\238\242\238\226\235\229\237\232\229 \239\240\238\242\232\226\238\255\228\232\255", 2012 )

	MisBeginTalk( "<t>����� ������! ������������� � <b�����> � ������� ��, ��� �� �� ������� <y���� �������� ����>!" )

	MisBeginCondition(HasRecord, 2011)
	MisBeginCondition(NoRecord, 2012)
	MisBeginCondition(NoMission, 2012)
	
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")
	MisBeginAction(AddMission, 2012)
	MisHelpTalk( "<t>���������� � ����� � �������� �������..." )
	MisNeed(MIS_NEED_DESP, " ���������� � ����� � �������� �������." )

	MisResultCondition(AlwaysFailure)


-- ������������� �����������
	DefineMission( 2081, "\207\240\232\227\238\242\238\226\235\229\237\232\229 \239\240\238\242\232\226\238\255\228\232\255", 2012, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� �������? ����� ��� � ������? �� ��� ��������???" )

	MisResultCondition(HasMission, 2012)
	MisResultCondition(NoRecord, 2012)
	
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 2012)
	MisResultAction(SetRecord, 2012)

-- ��� �������� ����
	DefineMission( 2082, "\207\238\242 \241\237\229\230\237\238\227\238 \235\254\228\224", 2013 )

	MisBeginTalk("<t>������������� � ������� � �������� ���� � ������ ���.<n><t>�� ������ �� ����� � ���� <y��� �������� ����>.<n><t>����� ���!" )
	
	MisBeginCondition(HasRecord, 2012)
	MisBeginCondition(NoRecord, 2013)
	MisBeginCondition(NoMission, 2013)
	
	MisBeginAction(AddMission, 2013)
	MisBeginAction(AddTrigger, 20131,TE_GETITEM, 6980, 1)--��� �������� ����
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisNeed(MIS_NEED_ITEM, 6980, 1, 10, 1)

	MisHelpTalk("<t>�� ��� �������� ��� ��� �������� ����?" )

	MisResultTalk( "<t>�������! ������� ��� �������! ������ � ����� ����������� �����������!<n><t>������� <b������ ����> �� ���� ������� �������, �� ��, ��� ��� ������� �� ��� ���!" )

	MisResultCondition(HasMission, 2013)
	MisResultCondition(NoRecord, 2013)
	MisResultCondition(HasItem, 6980, 1)
	
	MisResultAction(TakeItem, 6980, 1)
	MisResultAction(AddExp, 500000, 500000)
	MisResultAction(AddMoney, 800000, 800000)
	MisResultAction(ClearMission, 2013)
	MisResultAction(SetRecord, 2013)
	MisResultAction(SetRecord, 2013)
	MisResultAction(GiveItem, 938,1,4)

	InitTrigger()
	TriggerCondition(1, IsItem, 6980)
	TriggerAction(1, AddNextFlag, 2013, 10, 1)
	RegCurTrigger(20131)

--����� ��������� �������

	DefineMission( 2083, "\206\239\255\242\252 \239\240\238\234\235\255\242\251\229 \236\238\237\241\242\240\251", 2014 )
	
	MisBeginTalk( "<t>�� ��� ���������?<n><t>� ����� ����� ������ � ������.<n><t>�� ���� ��� ������� �������� �� ������� ������� ���� ��������� ��������! ���������� � <b�������� - ��> � �������� ���." )

	MisBeginCondition(HasRecord, 2013)
	MisBeginCondition(NoRecord, 2014)
	MisBeginCondition(NoMission, 2014)

	MisBeginAction(AddMission, 2014)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisHelpTalk( "<t>����� ��, ������� ��������� � ������!" )
	MisNeed(MIS_NEED_DESP, " ���������� � <b�������� - ��> � <p�������> � �����(798,3555)." )

	MisResultCondition(AlwaysFailure)

--����� ��������� �������
	DefineMission( 2084, "\206\239\255\242\252 \239\240\238\234\235\255\242\251\229 \236\238\237\241\242\240\251", 2014, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� ������ �� ������ ����, ��� �� ��� ������?" )
	MisResultCondition(HasMission, 2014)
	MisResultCondition(NoRecord, 2014)

	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 2014)
	MisResultAction(SetRecord, 2014)

--����� ������
	DefineMission( 2085, "\209\242\240\224\245 \240\229\225\184\237\234\224", 2015 )
	
	MisBeginTalk( "<t>� ������� ��������, � ����� �� ��������, �� ����� ������ ������� � ���� �����... �� ������ � ���� ���� �������� � ������ ����������! � ���� ������� ���� �����!<n><t>�������� ��� ������� ���� ����� � �������� ����� ����� ��������.")
	MisBeginCondition(HasRecord, 2014)
	MisBeginCondition(NoRecord, 2015)
	MisBeginCondition(NoMission,2015)
	
	MisBeginAction(AddMission, 2015)
	MisBeginAction(AddTrigger, 20151, TE_KILL, 805, 1)--------���������
	MisBeginAction(AddTrigger, 20152, TE_GETITEM, 6981, 1)----����� ���������

	MisNeed(MIS_NEED_KILL, 805, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 6981, 1,20, 1)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisHelpTalk( "<t>� ����, ��� �� �������� ��������!" )

	MisResultTalk( "<t>������� ���! ��� ��� � ����! �� ����� ������� ������ �����!<n><t>������������� � <b������ ����> � �������, ��� ���� ������ �� ���� �� ��������." )

	MisResultCondition(HasMission, 2015)
	MisResultCondition(HasFlag, 2015, 10)
	MisResultCondition(HasItem, 6981,1)
	MisResultCondition(NoRecord, 2015)

	MisResultAction(TakeItem, 6981, 1)
	MisResultAction(ClearMission, 2015)
	MisResultAction(SetRecord, 2015)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 800000,800000)

	InitTrigger()
	TriggerCondition(1,IsMonster, 805)
	TriggerAction(1,AddNextFlag, 2015, 10, 1)
	RegCurTrigger(20151)

	InitTrigger()
	TriggerCondition(1, IsItem, 6981)
	TriggerAction(1, AddNextFlag , 2015, 20, 1)
	RegCurTrigger(20152)


--���� ��� ���������
	DefineMission( 2086, "\193\238\227\232 \194\224\236 \243\235\251\225\224\254\242\241\255", 2016 )
	
	MisBeginTalk("<t>������ ����� ���� ������ � ������������! ����� �� ������������ �� ������� �� ����� ������� � ������ ����� �� ���� �������!<n><t>��� �� ������ ������������ ���� ���������� ������� ������� �� <y���� ������������>. <y���� ������������> ��������� �� 8 �������� � ��������� �� ���� ����. � ������ ���� �� ����� ���� �� �������� ������� �� <b������ ����> � <g��������> � <p��������� ���������>." )

	MisBeginCondition(HasRecord, 2015)
	MisBeginCondition(NoRecord, 2016)
	MisBeginCondition(NoMission, 2016)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisBeginAction(AddMission, 2016)
	MisBeginAction(GiveItem, 6983, 1,4)
	MisHelpTalk( "<t>������ ������� � ������ ����!" )
	MisNeed(MIS_NEED_DESP, " �������� ������� �� <b������ ����>.")
	
	MisResultCondition(AlwaysFailure)

-- ���� ��� ���������
	DefineMission( 2087, "\193\238\227\232 \194\224\236 \243\235\251\225\224\254\242\241\255", 2016, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>�� �� ���? �� ������ ��� �� � ���� ��������� ���������� �� ������������?")
	MisResultCondition(HasMission, 2016)
	MisResultCondition(NoRecord, 2016)
	MisResultCondition(HasItem, 6983, 1)
	
	MisResultAction(TakeItem, 6983, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 2016)
	MisResultAction(SetRecord, 2016)

-- ����� �������
	DefineMission( 2088, "\206\239\255\242\252 \239\238\226\229\231\235\238", 2017 )
	
	MisBeginTalk( "<t>������! � �� ���� ���� ������! ����� �������." )

	MisBeginCondition(HasRecord, 2016)
	MisBeginCondition(NoRecord, 2017)
	MisBeginCondition(NoMission, 2017)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisBeginAction(AddMission, 2017)
	MisBeginAction(GiveItem, 6982, 1,4)
	MisBeginAction(GiveItem, 938, 1,4)
	MisHelpTalk("<t>�� ��� ���� �� ������? ���� �� ���� � ������!" )
	MisNeed(MIS_NEED_DESP, " ������������� � ������ ����." )
	
	MisResultCondition(AlwaysFailure)

-- ����� �������
	DefineMission( 2089, "\206\239\255\242\252 \239\238\226\229\231\235\238", 2017, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>� ����, ��� ���� ��������� ����������...<n><t>��� ���� ��� �������?" )
	MisResultCondition(HasMission, 2017)
	MisResultCondition(NoRecord, 2017)
	MisResultCondition(HasItem, 6982, 1)
	
	MisResultAction(TakeItem, 6982, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 2017)
	MisResultAction(SetRecord, 2017)

-- ������������
	DefineMission( 2090, "\207\229\240\229\240\238\230\228\229\237\232\229", 2018 )
	
	MisBeginTalk( "<t>������ ���� ������ � ���, ��� �� ������� ��� ������� ����.<n><t>��� �� ���� ���� ��������, ��� �� ������, �������� � <b��������� ������> � ������ ��������." )

	MisBeginCondition(HasRecord, 2017)
	MisBeginCondition(NoRecord, 2018)
	MisBeginCondition(NoMission, 2018)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, " �� �� ������ ���������� �� ����� �������!")

	MisBeginAction(AddMission, 2018)
--	MisBeginAction(GiveItem, 2435, 1,4)
	MisHelpTalk( "<t>������������� � ������� 1 � ���������� � ��������� ������." )
	MisNeed(MIS_NEED_DESP, " ���������� � ��������� ������ � ���1" )
	
	MisResultCondition(AlwaysFailure)

-- ������������
	DefineMission( 2091, "\207\229\240\229\240\238\230\228\229\237\232\229", 2018, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>�� �� ������ ������������? ��� ����� �����? ������ � ������ ���.<n><t>����� �� ���� � ���� � ������� ��, ��� ��� ��������, ��� �������� ����." )
	MisResultCondition(HasMission, 2018)
	MisResultCondition(NoRecord, 2018)
--	MisResultCondition(HasItem, 2435, 1)
	
--	MisResultAction(TakeItem, 2435, 1)
	MisResultAction(AddMoney,300000, 300000)
	MisResultAction(ClearMission, 2018)
	MisResultAction(SetRecord, 2018)


----------------------------�� ������!-------------------------------------------	
	
	DefineMission( 2092, "\199\224 \240\243\237\224\236\232!", 2019 )--������ ��������
	MisBeginTalk( "<t>� ������ ���� ������� ������, ��� ���������� ���� ��� ������������!<n><t>��� ������ �� ������� ��� ������� � �������� �� � ���� ���� ������������, � �� ������� ����� �������." )
	MisBeginCondition(HasRecord, 2018)
	MisBeginCondition(NoMission, 2019)
	MisBeginCondition(NoRecord,2019)
	MisBeginAction(GiveItem, 6984, 1,4)
	MisBeginCondition(HasCredit,9999)
	MisBeginAction(AddMission,2019)
	MisBeginAction(AddTrigger, 20191, TE_GETITEM, 2226, 1)
	MisBeginAction(AddTrigger, 20192, TE_GETITEM, 2227, 1)
	MisBeginAction(AddTrigger, 20193, TE_GETITEM, 2228, 1)
	MisBeginAction(AddTrigger, 20194, TE_GETITEM, 2229, 1)
	MisBeginAction(AddTrigger, 20195, TE_GETITEM, 2230, 1)
	MisBeginAction(AddTrigger, 20196, TE_GETITEM, 2231, 1)
	MisBeginAction(AddTrigger, 20197, TE_GETITEM, 2232, 1)
	MisBeginAction(AddTrigger, 20198, TE_GETITEM, 2233, 1)
	
	
	MisCancelAction(ClearMission, 2019)

	MisNeed(MIS_NEED_DESP, " ��� �� ����� ����� � ������ � �������� � �������������, ��� ���������� ����� ��� ����� ���� ������������, ����� ������� ���� ���������� �� ����� ���� �������." )
	MisNeed(MIS_NEED_ITEM, 2226, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2227, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2228, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2229, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2230, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2231, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2232, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2233, 1, 80, 1)
	
	

	MisHelpTalk( "<t>��� ���� ���������� �� ����� ����, ��� ����� ����� �����������, ���� �� ������ ������� ��� 8 ���." )
	MisResultTalk( "<t>�� ������� ��� ����� ���� ������������, �� ��������� �����." )

	MisResultCondition(HasMission, 2019)
	MisResultCondition(NoRecord,2019)
	MisResultCondition(HasItem, 2226, 1)
	MisResultCondition(HasItem, 2227, 1)
	MisResultCondition(HasItem, 2228, 1)
	MisResultCondition(HasItem, 2229, 1)
	MisResultCondition(HasItem, 2230, 1)
	MisResultCondition(HasItem, 2231, 1)
	MisResultCondition(HasItem, 2232, 1)
	MisResultCondition(HasItem, 2233, 1)
	
	
	MisResultAction(TakeItem, 2226, 1 )
	MisResultAction(TakeItem, 2227, 1 )
	MisResultAction(TakeItem, 2228, 1 )
	MisResultAction(TakeItem, 2229, 1 )
	MisResultAction(TakeItem, 2230, 1 )
	MisResultAction(TakeItem, 2231, 1 )
	MisResultAction(TakeItem, 2232, 1 )
	MisResultAction(TakeItem, 2233, 1 )
	
	
	MisResultAction(GiveItem, 2235,1,4)------------���� ������������
	MisResultAction(ClearMission, 2019)
	MisResultAction(SetRecord, 2019)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2226)	
	TriggerAction( 1, AddNextFlag, 2019, 10, 1 )
	RegCurTrigger( 20191 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2227)	
	TriggerAction( 1, AddNextFlag, 2019, 20, 1 )
	RegCurTrigger( 20192 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2228)	
	TriggerAction( 1, AddNextFlag, 2019, 30, 1 )
	RegCurTrigger( 20193 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2229)	
	TriggerAction( 1, AddNextFlag, 2019, 40, 1 )
	RegCurTrigger( 20194 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2230)	
	TriggerAction( 1, AddNextFlag, 2019, 50, 1 )
	RegCurTrigger( 20195 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2231)	
	TriggerAction( 1, AddNextFlag, 2019, 60, 1 )
	RegCurTrigger( 20196 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2232)	
	TriggerAction( 1, AddNextFlag, 2019, 70, 1 )
	RegCurTrigger( 20197 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2233)	
	TriggerAction( 1, AddNextFlag, 2019, 80, 1 )
	RegCurTrigger( 20198 )

	
	MisResultCondition(AlwaysFailure)

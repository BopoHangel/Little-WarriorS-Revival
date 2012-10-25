--------------------------------------------------------------------------
--									                                    --
--									                                    --
--     MissionScript02.lua ��������� �������� AngelOfDeath TeaM.        --
--									                                    --
--									                                    --
--------------------------------------------------------------------------

print( "����㧪� MissionScript02.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


function HistoryMission001()

----------------------------��ϯ����Ŀ���
	DefineMission( 200, " �������� ��������� ", 200 )
	
	MisBeginTalk( "<t>������ ����. � ����� ��� ���� ���� ������� ������ ��������� �������, <b���������>. ����� � �� ���������!  " )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 200)
	MisCancelAction(ClearMission, 200)
		
	MisNeed(MIS_NEED_DESP, "��������� ��������� � ������� �� �����������  (2219, 2749)")
	
	MisHelpTalk("<t>������ �� �� ����������� � ���������� �������?���������� ������������ ")
	MisResultCondition(AlwaysFailure )

	



----------------------------��ϯ����Ŀ���
	DefineMission( 201, " �������� ��������� ", 201 )
	
	MisBeginTalk( "<t>������ ����. � ����� ��� ���� ���� ������� ������ ��������� �������, <b���������>. ����� � �� ���������!" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 201)
	MisCancelAction(ClearMission, 201)
		
	MisNeed(MIS_NEED_DESP, "��������� ��������� � ������� �� �����������  (2219, 2749) ")
	
	MisHelpTalk("<t>������ �� �� ����������� � ���������� �������?���������� ������������ ")
	MisResultCondition(AlwaysFailure )


----------------------------��ϯ����Ŀ���
	DefineMission( 202, " �������� ��������� ", 202 )
	
	MisBeginTalk( "<t>������ ����. � ����� ��� ���� ���� ������� ������ ��������� �������, <b���������>. ����� � �� ���������!" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 202)
	MisCancelAction(ClearMission, 202)
		
	MisNeed(MIS_NEED_DESP, "��������� ��������� � ������� �� �����������  (2219, 2749)")
	
	MisHelpTalk("<t>������ �� �� ����������� � ���������� �������?���������� ������������ ")
	MisResultCondition(AlwaysFailure )


-----------------------------------��ϯ����Ŀ���
	DefineMission( 203, " �������� ��������� ", 200, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����� ����������, � ��� ������� � ����. ���� ��������� ���������������� ��� ������ ��� � � �������� ����� ���..")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 200)
	MisResultAction(ClearMission, 200 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)



-----------------------------------��ϯ����Ŀ���
	DefineMission( 204, " �������� ��������� ", 201, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����� ����������, � ��� ������� � ����. ���� ��������� ���������������� ��� ������ ��� � � �������� ����� ���.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 201)
	MisResultAction(ClearMission, 201 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)


-----------------------------------��ϯ����Ŀ���
	DefineMission( 205, " �������� ��������� ", 202, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����� ����������, � ��� ������� � ����. ���� ��������� ���������������� ��� ������ ��� � � �������� ����� ���.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 202)
	MisResultAction(ClearMission, 202 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------СС�Ŀ���
	DefineMission( 206, " ���������� ������ ", 203 )
	
	MisBeginTalk( "<t>� ����� �� ������� ��� �������� ������������� ��������� �������� ������� � ��������� ��������. <n> <t> ������ �� ���� ��� ���� ��� ��� �������,� �������� �������� ���<n> <t> ������� � <p�������� �������> �� ����������� (2277, 2831 ) � ������� ��� <b��������-��������>. �� ���� ��� ��������� ������." )
	MisBeginCondition(NoRecord, 203)
	MisBeginCondition(NoMission, 203)
	MisBeginCondition(HasRecord, 200)
	MisBeginAction(AddMission, 203)
	MisCancelAction(ClearMission, 203)
		
	MisNeed(MIS_NEED_DESP, "����� <b������� - ������> �� <p�������� �������> �� �����������  (2277, 2831)")
	
	MisHelpTalk("<t>����� ��� �������? ���� �� ���� ,�� ����������, ������� <b������� �������> �� �������� ��� �������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------СС�Ŀ���
	DefineMission( 207, " ���������� ������ ", 203, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��,������ ����� �������� ������ , �������� ��� ���������� ����. �������� �� �� �����? <n> <t> ����������� ����� ������ �����. � ���� ���� ������� ��� ��� ")
	MisResultCondition(NoRecord, 203)
	MisResultCondition(HasMission, 203)
	MisResultAction(ClearMission, 203 )
	MisResultAction(SetRecord, 203 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)
	MisResultAction(AddExpAndType,2,875,875)



-------------------------------------------------�����Ļ�ʳ����
	DefineMission( 208, " �������� ��� ����� ", 204 )

	MisBeginTalk( "<t>� ����� �� �������� ��������� ��� �������.��������� ��� ��������� ��������. <n> <t> ��� ����� 5 <y���� ����������� ��������>, 10 <y���� ������> � 10 <y���� �����>." )
	MisBeginCondition(NoRecord, 204)
	MisBeginCondition(HasRecord, 203)
	MisBeginCondition(NoMission, 204)
	MisBeginAction(AddMission, 204)
	MisBeginAction(AddTrigger, 2041, TE_GETITEM, 3963, 5 )		--��ˮ����
	MisBeginAction(AddTrigger, 2042, TE_GETITEM, 3964, 10 )		--������
	MisBeginAction(AddTrigger, 2043, TE_GETITEM, 3116, 10 )
	MisCancelAction(ClearMission, 204)

	MisNeed(MIS_NEED_ITEM, 3963, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3964, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3116, 10, 30, 10)

	MisResultTalk("<t>���� ���� �� ��������� ��� �������, �� ����� ���������� ��� ������.")
	MisHelpTalk("<t>����� ������� ������, � �� �� ������ ����������? <n> <t> �������! � ������ �� ���  5 <y���� ����������� ��������>, 10 <y���� ������� ������> � 10 <y���������� �������>.")
	MisResultCondition(HasMission, 204)
	MisResultCondition(HasItem, 3963, 5 )
	MisResultCondition(HasItem, 3964, 10 )
	MisResultCondition(HasItem, 3116, 10 )
	MisResultAction(TakeItem, 3963, 5 )
	MisResultAction(TakeItem, 3964, 10 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(ClearMission, 204)
	MisResultAction(SetRecord, 204 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3963)	
	TriggerAction( 1, AddNextFlag, 204, 10, 5 )
	RegCurTrigger( 2041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3964)	
	TriggerAction( 1, AddNextFlag, 204, 20, 10 )
	RegCurTrigger( 2042 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 204, 30, 10 )
	RegCurTrigger( 2043 )

----------------------------��ʧ���Ƶ�
	DefineMission( 209, " ��������� ����� ", 205 )
	
	MisBeginTalk( "<t>��������� ��  �����, ������ �� ��� �� ����� ����� ���������� �������. ��� ����� <b�����>. � ��������� ��� ��� ������ �������� ��  <p��������� ������>. ������� ��� ����� ������������!" )
	MisBeginCondition(NoRecord, 205)
	MisBeginCondition(HasRecord, 204)
	MisBeginCondition(NoMission, 205)
	MisBeginAction(AddMission, 205)
	MisCancelAction(ClearMission, 205)
		
	MisNeed(MIS_NEED_DESP, "����� ����� �� ����������� (1962, 2694)")
	
	MisHelpTalk("<t>��������� ����� ������ <b�����> �������� �� <p��������� �������>. ����� ��� ")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ʧ���Ƶ�
	DefineMission( 210, " ��������� ����� ", 205, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�� ������  ����? � ������ ����, ����� ���������� �� ������� ����.")
	MisResultCondition(NoRecord, 205)
	MisResultCondition(HasMission, 205)
	MisResultAction(ClearMission, 205 )
	MisResultAction(SetRecord, 205 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------���ٽ��ر�
	DefineMission( 211, " �������� �������� ", 206 )
	
	MisBeginTalk( "<t>� ������� ���, ��� ������� ���� ����. � ����� �� ������������� ��� �� ������.������� ��� ��� ������,� �������������� ���� ��� � � �����������. � ��������� �������� ����� ��� �� ��������� �����.." )
	MisBeginCondition(NoRecord, 206)
	MisBeginCondition(HasRecord, 205)
	MisBeginCondition(NoMission, 206)
	MisBeginAction(AddMission, 206)
	MisBeginAction(GiveItem, 3965, 1, 4)		--�Ƶµ���
	MisCancelAction(ClearMission, 206)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "������ ������ �������� ������� �� ����������� (2277, 2831) ")
	
	MisHelpTalk("<t>���-������ ���?� ����� �������,������..")
	MisResultCondition(AlwaysFailure )

-----------------------------------���ٽ��ر�
	DefineMission( 212, " �������� �������� ", 206, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�,� ����� ��� ��������?�������.")
	MisResultCondition(NoRecord, 206)
	MisResultCondition(HasMission, 206)
	MisResultCondition(HasItem, 3965, 1)		--�Ƶµ���
	MisResultAction(TakeItem, 3965, 1 ) 
	MisResultAction(ClearMission, 206 )
	MisResultAction(SetRecord, 206 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)	
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------ȫ��ʳ���ж�
	DefineMission( 213, " ���������� ��� ", 207 )

	MisBeginTalk( "<t>���-���.������ ������ ��� ���� ���������.������ ���������� <y����> ����� � ������� <b����> � ������� �����������!" )
	MisBeginCondition(NoRecord, 207)
	MisBeginCondition(HasRecord, 206)
	MisBeginCondition(NoMission, 207)
	MisBeginAction(AddMission, 207)
	MisBeginAction(GiveItem, 3966, 1, 4)			--�������
	MisBeginAction(AddTrigger, 2071, TE_GETITEM, 3967, 1 )		--��ˮ����
	MisCancelAction(ClearMission, 207)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_ITEM, 3967, 1, 10, 1)

	MisResultTalk("<t>�� �� ������ �������.�������.")
	MisHelpTalk("<t>�� �� ������ �������.�������.")
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3967, 1 )
	MisResultAction(TakeItem, 3967, 1 )
	MisResultAction(ClearMission, 207)
	MisResultAction(SetRecord, 207 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3967)	
	TriggerAction( 1, AddNextFlag, 207, 10, 1 )
	RegCurTrigger( 2071 )

-----------------------------------ȫ��ʳ���ж�
	DefineMission( 214, " ���������� ��� ", 207, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����������?! <n> <T> ��������� ��� ���������� �� ���?��,�������� ������,�� ��� ��?")
	MisResultCondition(NoRecord, 207)
	MisResultCondition(NoFlag, 207, 1 )
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3966, 1)		--�Ƶµ���
	MisResultAction(TakeItem, 3966, 1 ) 
	MisResultAction(SetFlag, 207, 1 )
	
-------------------------------------------------��ҩԭ��
	DefineMission( 215, " ����� ����������� ", 208 )

	MisBeginTalk( "<t>� ���������� ���, �������� � ��� ��� ���� ����������� �������� ���� ��������.��� ����������� ���������  ������������ ��� �����������. <n> <T> 3 <yCashmeres>, 3 <yPiglet Tails> � 3 <yHard Shells>. �� ����� �� �� ������ � �� �������?" )
	MisBeginCondition(NoRecord, 208)
	MisBeginCondition(HasMission, 207)
	MisBeginCondition(NoMission, 208)
	MisBeginCondition(HasFlag, 207, 1)
	MisBeginAction(AddMission, 208)
	MisBeginAction(AddTrigger, 2081, TE_GETITEM, 1678, 3 )		--����
	MisBeginAction(AddTrigger, 2082, TE_GETITEM, 3968, 3 )		--С��β��
	MisBeginAction(AddTrigger, 2083, TE_GETITEM, 1614, 3 )		--��Ӳ�Ŀ�
	MisCancelAction(ClearMission, 208)

	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 3968, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1614, 3, 30, 3)

	MisPrize(MIS_PRIZE_ITEM, 3967, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>�����������!����������, ��� ��� ����� ��� �������������  �����������. <n> <T> ����������! ������ ��� �������� .")
	MisHelpTalk("<t>��� ���� 3 <y��������>, 3 <yPiglet Tail> � 3 <yHard Shell>. �� �������� ���?")
	MisResultCondition(HasMission, 208)
	MisResultCondition(HasItem, 1678, 3 )
	MisResultCondition(HasItem, 3968, 3 )
	MisResultCondition(HasItem, 1614, 3 )
	MisResultAction(TakeItem, 1678, 3 )
	MisResultAction(TakeItem, 3968, 3 )
	MisResultAction(TakeItem, 1614, 3 )
	MisResultAction(ClearMission, 208)
	MisResultAction(SetRecord, 208 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 208, 10, 3 )
	RegCurTrigger( 2081 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3968)	
	TriggerAction( 1, AddNextFlag, 208, 20, 3 )
	RegCurTrigger( 2082 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1614)	
	TriggerAction( 1, AddNextFlag, 208, 30, 3 )
	RegCurTrigger( 2083 )

----------------------------�Ƶµ�ί��
	DefineMission( 216, " ������� ����� ", 209 )
	
	MisBeginTalk( "<t>� ������ ���� ������� ��� ���� ������� �� ��� �������� ������� ����,��� ������.�� ������� ��� �������� <n> <T> � ��������� ��� ���������� � ����(2250, 2770) ��� ��������� ����� ��������� ����������." )
	MisBeginCondition(NoRecord, 209)
	MisBeginCondition(HasRecord, 207)
	MisBeginCondition(NoMission, 209)
	MisBeginAction(AddMission, 209)
	MisCancelAction(ClearMission, 209)
		
	MisNeed(MIS_NEED_DESP, "�������� ����� �� �����������  (2250, 2770) � ����� �������� ���� ")
	
	MisHelpTalk("<t>�� ��������� �  ����� � ������� ������?")
	MisResultCondition(AlwaysFailure )

-----------------------------------�Ƶµ�ί��
	DefineMission( 217, " ������� ����� ", 209, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�������� ��� ������ ���� �� ������������� �������, ������� ���������� ������ ���. ����� ��� ��������? ��� ����� ������� ���� ������ �������� ���� ��������.")
	MisResultCondition(NoRecord, 209)
	MisResultCondition(HasMission, 209)
	MisResultAction(ClearMission, 209 )
	MisResultAction(SetRecord, 209 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------����ԭ��
	DefineMission( 218, " ������� ������������ ", 210 )

	MisBeginTalk( "<t>������, ����� ��������� ������������, �� ������ ��������� <����� ����>. <n> <T> ������� ��� 5 �������� <����� ������� ����>. ����� �� ����� �� ����������� (1968, 2697)." )
	MisBeginCondition(NoRecord, 210)
	MisBeginCondition(HasRecord, 209)
	MisBeginCondition(NoMission, 210)
	MisBeginAction(AddMission, 210)
	MisBeginAction(AddTrigger, 2101, TE_GETITEM, 3969, 5 )		--�б�ɽ��Ŀ�ˮ
	MisCancelAction(ClearMission, 210)

	MisNeed(MIS_NEED_ITEM, 3969, 5, 10, 5)

	MisResultTalk("<t>����� ������� ��� ��������� ������� �������.� ������� �������� ������������ �� ���, � ����� ��� ������� ����..")
	MisHelpTalk("<t>��� �����? ������ �� �� ��� ��� �� �������� 5 �������� <y�����>?")
	MisResultCondition(HasMission, 210)
	MisResultCondition(HasItem, 3969, 5 )
	MisResultAction(TakeItem, 3969, 5 )
	MisResultAction(ClearMission, 210)
	MisResultAction(SetRecord, 210 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3969)	
	TriggerAction( 1, AddNextFlag, 210, 10, 5 )
	RegCurTrigger( 2101 )

-------------------------------------------------�������
	DefineMission( 219, " ���������� ������������ ", 211 )

	MisBeginTalk( "<t>����� ���� ������������, ���� ���������� � ���, ��� ���� �������� ������ ������. <n> <T> � �� ���� ��������� ������, ���� �� �� ��������� ��� <r��������� ������ ���������>. �� ��������� �� ������ <p�������> �� ����������� (2048, 2514). <n> <T> �������!" )
	MisBeginCondition(NoRecord, 211)
	MisBeginCondition(HasRecord, 210)
	MisBeginCondition(NoMission, 211)
	MisBeginAction(AddMission, 211)
	MisBeginAction(AddTrigger, 2111, TE_GETITEM, 3970, 1 )		--�б�ɽ��Ŀ�ˮ
	MisCancelAction(ClearMission, 211)

	MisNeed(MIS_NEED_ITEM, 3970, 1, 10, 1)

	MisResultTalk("<t> ������� ������! �� �������� <y��������� ������ ���������>. ��� ����������� ����� ������ ��������, ������ � ���� ����� ���������� ������� ��������!")
	MisHelpTalk("<t>��� ���������? ������� <r������ ���������>? ������ � ����� ��������� ������.")
	MisResultCondition(HasMission, 211)
	MisResultCondition(HasItem, 3970, 1 )
	MisResultAction(TakeItem, 3970, 1 )
	MisResultAction(ClearMission, 211)
	MisResultAction(SetRecord, 211 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3970)	
	TriggerAction( 1, AddNextFlag, 211, 10, 1 )
	RegCurTrigger( 2111 )

----------------------------��ķ�ı�����
	DefineMission( 220, " ����� ���� ", 212 )
	
	MisBeginTalk( "<t>��� ������������� ��������� ��� ��������� �����, � ������� ��������������� <y�����>. <n> <T> ���������� ������� ��� <b���������> �� ����������� (2219, 2749)" )
	MisBeginCondition(NoRecord, 212)
	MisBeginCondition(HasRecord, 211)
	MisBeginCondition(NoMission, 212)
	MisBeginAction(AddMission, 212)
	MisBeginAction(GiveItem, 3971, 1, 4)
	MisCancelAction(ClearMission, 212)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "������� ����� ��������� �������  (2219, 2749)")
	
	MisHelpTalk("<t>��� �� ���? ")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ķ�ı�����
	DefineMission( 221, " ����� ���� ", 212, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t� ������ ���� ���� � �������� � ����� �������.� ��� �� ���.")
	MisResultCondition(NoRecord, 212)
	MisResultCondition(HasMission, 212)
	MisResultCondition(HasItem, 3971, 1)
	MisResultAction(TakeItem, 3971, 1 )
	MisResultAction(ClearMission, 212 )
	MisResultAction(SetRecord, 212 )
	MisResultAction(AddExp,350,350)
	MisResultAction(AddMoney,1500,1500)
	MisResultAction(AddExpAndType,2,3400,3400)


----------------------------������
	DefineMission( 222, " ����� ������� ", 213 )
	
	MisBeginTalk( "<t>�������, ��� �������� �� <p���������� ����> ��������. ������ ���������������� ������ <b�������� �������> �� ����������� (1909, 2820).�� ���� ���� ����� �������." )
	MisBeginCondition(NoRecord, 213)
	MisBeginCondition(HasRecord, 212)
	MisBeginCondition(NoMission, 213)
	MisBeginAction(AddMission, 213)
	MisBeginAction(GiveItem, 3972, 1, 4)
	MisCancelAction(ClearMission, 213)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "������� ������ �������� �������  (1909, 2820).")
	
	MisHelpTalk("<t>���  � <p���������� ������> !")
	MisResultCondition(AlwaysFailure )

-----------------------------------������
	DefineMission( 223, " ����� ������� ", 213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���� ������� ��������� ���������? ��� �������������.")
	MisResultCondition(NoRecord, 213)
	MisResultCondition(HasMission, 213)
	MisResultCondition(HasItem , 3972, 1)
	MisResultAction(TakeItem , 3972, 1 )
	MisResultAction(ClearMission, 213 )
	MisResultAction(SetRecord, 213 )
	MisResultAction(AddExp,400,400)
	MisResultAction(AddMoney,1500,1500)	
	MisResultAction(AddExpAndType,2,3401,3401)


-------------------------------------------------Ѱ�Ҷ�ʧ�Ĺ���
	DefineMission( 224, " ��������� ����������� ", 214 )

	MisBeginTalk( "<t>������� �����-�������� ������ ���� �����������.�� ����� �� �� ����������� ������� , � ����� ��?" )
	MisBeginCondition(NoRecord, 214)
	MisBeginCondition(HasRecord, 213)
	MisBeginCondition(NoMission, 214)
	MisBeginAction(AddMission, 214)
	MisBeginAction(AddTrigger, 2141, TE_GETITEM, 3973, 5 )		--������������ ������
	MisBeginAction(AddTrigger, 2142, TE_GETITEM, 3974, 3 )		--������������ �������� �����
	MisBeginAction(AddTrigger, 2143, TE_GETITEM, 3975, 5 )		--������������ ��������� �����
	MisCancelAction(ClearMission, 214)

	MisNeed(MIS_NEED_ITEM, 3973, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3974, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 3975, 5, 30, 5)

	MisResultTalk("<t>��� �����������!�� ������ ��� ���� ����������� , ������ �� ����� ���������� � ������!")
	MisHelpTalk("<t>�� �� ����� �����������? ��� ��� �� �� ����� ���������� ��������. ����������, �������� ��� ����� ��.")
	MisResultCondition(HasMission, 214)
	MisResultCondition(HasItem, 3973, 5 )
	MisResultCondition(HasItem, 3974, 3 )
	MisResultCondition(HasItem, 3975, 5 )
	MisResultAction(TakeItem, 3973, 5 )
	MisResultAction(TakeItem, 3974, 3 )
	MisResultAction(TakeItem, 3975, 5 )
	MisResultAction(ClearMission, 214)
	MisResultAction(SetRecord, 214 )
	MisResultAction(AddExp,450,450)
	MisResultAction(AddMoney,1600,1600)	
	MisResultAction(AddExpAndType,2,3402,3402)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3973)	
	TriggerAction( 1, AddNextFlag, 214, 10, 5 )
	RegCurTrigger( 2141 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3974)	
	TriggerAction( 1, AddNextFlag, 214, 20, 3 )
	RegCurTrigger( 2142 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3975)	
	TriggerAction( 1, AddNextFlag, 214, 30, 5 )
	RegCurTrigger( 2143 )

-------------------------------------------------�������ݹ�
	DefineMission( 225, " ����� �������� ", 215 )

	MisBeginTalk( "<t>��� ������� ������ ������� � ���, ����� ���������� �� ��������, �� <r������� ��������> � ��� ����� ���� ����� ������. <n> <T> ����������, ����� � ���� ���� <r������� ���������> ���� (1594, 2689)!" )
	MisBeginCondition(NoRecord, 215)
	MisBeginCondition(HasRecord, 214)
	MisBeginCondition(NoMission, 215)
	MisBeginAction(AddMission, 215)
	MisBeginAction(AddTrigger, 2151, TE_KILL, 252, 10 )		--���ݹ�
	MisCancelAction(ClearMission, 215)

	MisNeed(MIS_NEED_KILL, 252, 10, 10, 10)

	MisResultTalk("<t>������� ������! ��� ������ �� ����, �� ������ ��� ����� ������� � ��������!")
	MisHelpTalk("<t>�� ������ ������������ ���� <r���������> ��� ����� �������!")
	MisResultCondition(HasMission, 215)
	MisResultCondition(HasFlag, 215, 19 )
	MisResultAction(ClearMission, 215)
	MisResultAction(SetRecord, 215 )
	MisResultAction(AddExp,500,500)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,3403,3403)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 252)	
	TriggerAction( 1, AddNextFlag, 215, 10, 10 )
	RegCurTrigger( 2151 )

-------------------------------------------------��ķ��ί��
	DefineMission( 226, " ������� ����� ", 216 )

	MisBeginTalk( "<t>� ������ ��� ������� ������ �� ����, �������, ��� � ���� �������� ��������� ��������� � ��� �������������.�� ������ ������� ��� ���� <y���������� ������ ������ ������> . <n> <T> � �����  <r������ ������> ,�������� ��  ����� (1783, 2507)." )
	MisBeginCondition(NoRecord, 216)
	MisBeginCondition(HasRecord, 215)
	MisBeginCondition(NoMission, 216)
	MisBeginAction(AddMission, 216)
	MisBeginAction(AddTrigger, 2161, TE_GETITEM, 3976, 1 )		--з����θ��ʯ
	MisCancelAction(ClearMission, 216)

	MisNeed(MIS_NEED_ITEM, 3976, 1, 10, 1)

	MisResultTalk("<t>�����������! �� ����� ���! � ���������� �������� ��� ����!")
	MisHelpTalk("<t>�� �� ����� <r������ �����������>? � ����� ����� ��� �������� �� �����...")
	MisResultCondition(HasMission, 216)
	MisResultCondition(HasItem, 3976, 1 )
	MisResultAction(TakeItem, 3976, 1)
	MisResultAction(ClearMission, 216)
	MisResultAction(SetRecord, 216 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,9000,9000)	
	MisResultAction(AddExpAndType,2,3404,3404)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3976 )	
	TriggerAction( 1, AddNextFlag, 216, 10, 1 )
	RegCurTrigger( 2161 )

-------------------------------------------------ɽ������ͼ
	DefineMission( 227, " ���� ������������� ������� ", 217 )

	MisBeginTalk( "<t> �������, ��� ���������� ������� ������� �����,� ����� �� ��� ��������� ���� ������������ ������ ��������. �� ������ ����� ����� �����. ���������� �������� �������� �� �����������  (2217, 2547). " )
	MisBeginCondition(NoRecord, 217)
	MisBeginCondition(HasRecord, 216)
	MisBeginCondition(NoMission, 217)
	MisBeginAction(AddMission, 217)
	MisBeginAction(AddTrigger, 2171, TE_GETITEM, 3977, 1 )		--ɽ������ͼ
	MisCancelAction(ClearMission, 217)

	MisNeed(MIS_NEED_ITEM, 3977, 1, 10, 1)

	MisResultTalk("<t>�� ������ ���������� �����! ����������!")
	MisHelpTalk("<t>�� �����? � ����! ����� ����, ��������� ������ � ����� � ������.")
	MisResultCondition(HasMission, 217)
	MisResultCondition(HasItem, 3977, 1 )
	MisResultAction(TakeItem, 3977, 1)
	MisResultAction(ClearMission, 217)
	MisResultAction(SetRecord, 217 )
	MisResultAction(AddExp,750,750)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,11833,11833)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3977 )	
	TriggerAction( 1, AddNextFlag, 217, 10, 1 )
	RegCurTrigger( 2171 )

-------------------------------------------------ͻϮɽ����
	DefineMission( 228, " ������ �� �������� ", 218 )

	MisBeginTalk( "<t>�� ����� ����� , ��� ������� ���������� �������� �� �������� ����� <p���������� �����>. ��� �����, ����� ��  ��������  � �� ������ � ��������  3 <y�������� �������>." )
	MisBeginCondition(NoRecord, 218)
	MisBeginCondition(HasRecord, 217)
	MisBeginCondition(NoMission, 218)
	MisBeginAction(AddMission, 218)
	MisBeginAction(AddTrigger, 2181, TE_GETITEM, 1841, 3 )		--�������� ��������
	MisCancelAction(ClearMission, 218)

	MisNeed(MIS_NEED_ITEM, 1841, 3, 10, 3)

	MisResultTalk("<t>���!������� �� ������ �������� ��� ��������!")
	MisHelpTalk("<t>������ �� �� ������� <y�������� ��������>?")
	MisResultCondition(HasMission, 218)
	MisResultCondition(HasItem, 1841, 3 )
	MisResultAction(TakeItem, 1841, 3 )
	MisResultAction(ClearMission, 218)
	MisResultAction(SetRecord, 218 )
	MisResultAction(AddExp,1000,1000)
	MisResultAction(AddMoney,2200,2200)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1841 )	
	TriggerAction( 1, AddNextFlag, 218, 10, 3 )
	RegCurTrigger( 2181 )

-------------------------------------------------������
	DefineMission( 229, " ������� �� ������ ", 219 )

	MisBeginTalk( "<t>��� ������� � ������� ��������. �� ����� �������� � ������ �������. <n> <T> ����� ��� ������ �� ����������� (1052, 3037) � ������� ���� ��������." )
	MisBeginCondition(NoRecord, 219)
	MisBeginCondition(HasRecord, 218)
	MisBeginCondition(NoMission, 219)
	MisBeginAction(AddMission, 219)
	MisBeginAction(AddTrigger, 2191, TE_KILL, 211, 1 )		--ɽ�����졤����
	MisCancelAction(ClearMission, 219)

	MisNeed(MIS_NEED_KILL, 211, 1, 10, 1)

	MisResultTalk("<t>�� ����� ������?�������! ��������� ������ ������������� ��������, ������� ������ �� ������������ ������.")
	MisHelpTalk("<t>�� ������� ���� � ��������? ������ �� ��� �� ��������� ������ ������?")
	MisResultCondition(HasMission, 219)
	MisResultCondition(HasFlag, 219, 10 )
	MisResultAction(ClearMission, 219)
	MisResultAction(SetRecord, 219 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,10000,10000)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 211 )	
	TriggerAction( 1, AddNextFlag, 219, 10, 1 )
	RegCurTrigger( 2191 )

----------------------------ȥɳĮ
	DefineMission( 230, " ����� � ������� ", 220 )
	
	MisBeginTalk( "<t>������� ���������� ������ <b�������> �� ����������� (898, 3640) � �������, �� ���� ���� ������������ ����������." )
	MisBeginCondition(NoRecord, 220)
	MisBeginCondition(HasRecord, 219)
	MisBeginCondition(NoMission, 220)
	MisBeginAction(AddMission, 220)
	MisBeginAction(GiveItem, 3978, 1, 4)
	MisCancelAction(ClearMission, 220)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "������� ���������� ������ �������  � ������� (898, 3640)")
	
	MisHelpTalk("<t>���� � � ����� ��� �� �� ��������, �� ��� ���� ����� � �������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ȥɳĮ
	DefineMission( 231, " ����� � ������� ", 220, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����� ����������. ��������� ������� ������� ��� � ���� ������ ������.  �� �������, ��� ��� ���� ������ ����. � ������ ����, ��������� �����.")
	MisResultCondition(NoRecord, 220)
	MisResultCondition(HasMission, 220)
	MisResultCondition(HasItem, 3978, 1)
	MisResultAction(TakeItem, 3978, 1 )
	MisResultAction(ClearMission, 220 )
	MisResultAction(SetRecord, 220 )
	MisResultAction(AddExp,1100,1100)
	MisResultAction(AddMoney,2300,2300)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------�����ԭ��
	DefineMission( 232, " �������� ", 221 )
	
	MisBeginTalk( "<t>��������� ��������� ������ ���� ������ ������� (898, 3683). ����� ����, ��� ������� ��� �  �������������. <n> <T> �������� ��� ����� ���� ��� ������� ��." )
	MisBeginCondition(NoRecord, 221)
	MisBeginCondition(HasRecord, 220)
	MisBeginCondition(NoMission, 221)
	MisBeginAction(AddMission, 221)
	MisCancelAction(ClearMission, 221)
		
	MisNeed(MIS_NEED_DESP, "������� ��������� ������ (898, 3683) � ����� ������� � ������� (898, 3640)")
	
	MisResultTalk("<t>�! �� ������� � �������? ��-��, ��� ����� ������ ���������������������� ������ ������.")
	MisHelpTalk("<t>�� ��� �� �������� � <b��������� �������>?")
	MisResultCondition(HasMission, 221 )
	MisResultCondition(NoRecord, 221 )
	MisResultCondition(HasFlag, 221, 1 )
	MisResultAction(ClearMission, 221 )
	MisResultAction(SetRecord, 221 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)	
	MisResultAction(AddExpAndType,2,5000,5000)

-----------------------------------�����ԭ��
	DefineMission( 233, " �������� ", 221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���... � ��������� ������! <n> <T> ������ �����, ��� � ������ ��������? <n> <T> �� ��� ����� � ������������! ��� ... <n> <T> ��� ��� ���� � ����� ����.���... <n> <T> ��� ... ��� ���� ������ <n> <T> �� ��������� ���� � ��� ����� ��������! ")
	MisResultCondition(NoRecord, 221)
	MisResultCondition(HasMission, 221)
	MisResultCondition(NoFlag, 221, 1)
	MisResultAction(SetFlag, 221, 1 )
	


----------------------------��ɭ�ıʼǱ�
	DefineMission( 234, " �������� ������ ������� ", 222 )
	
	MisBeginTalk( "<t>��� ... ���� � ����� ����, ������� ������ � ������? � �����, ��� ����� ���-�� ��������, �� ���? ���... <n> <T> �� �������!������� ���������� ������ ������� �������� ������� �������... <n> <T> ��,���� ,��� ����������� ���� �������� ������ ��� �� ������ � ���.����� ���� � ���� ���� ��������.� ����� �� ������� ����������� ���� ��������� �������� ����������� �� ��� ���� - ��������� ������� (958, 3549)." )
	MisBeginCondition(NoRecord, 222)
	MisBeginCondition(HasRecord, 221)
	MisBeginCondition(NoMission, 222)
	MisBeginAction(AddMission, 222)
	MisCancelAction(ClearMission, 222)
		
	MisNeed(MIS_NEED_DESP, "����� ��������� (958, 3549).")
	
	MisHelpTalk("<t>�������� ��������� �������� �� ������� ����� �������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ɭ�ıʼǱ�
	DefineMission( 235, " �������� ������ ������� ", 222, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������! � �������� �������. <n> <T> ��������� ������������ � ��� � �� �����!<n> <T> ��� �������� ����� ���������, ��� ����� ���� ��������� ���� ������� ��������� ����������.")
	MisResultCondition(NoRecord, 222)
	MisResultCondition(HasMission, 222)
	MisResultAction(ClearMission, 222 )
	MisResultAction(SetRecord, 222 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------����
	DefineMission( 236, " ������� ", 223 )
	
	MisBeginTalk( "<t>������� ������������� � ��������� �� ����� ��������!��� ������� ��� ��� ������������ �� ���� ��������! <n> <T> ��� ��������� ������ �� ������ ������������ � �������! <n> <T> � ���� ������ ������� �� ����� <b��������>. � ����� �� ��������� ���� ���� ������ �����.����� ��� ����� � <p������> �� �����������  (1080,3086)." )
	MisBeginCondition(NoRecord, 223)
	MisBeginCondition(HasRecord, 222)
	MisBeginCondition(NoMission, 223)
	MisBeginAction(AddMission, 223)
	MisCancelAction(ClearMission, 223)
		
	MisNeed(MIS_NEED_DESP, "������� ���������(1080, 3086)")
	
	MisHelpTalk("<t>�� ����������.�������� �� ����� ��� ��� �������.�� �� ����� � ����� ������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------����
	DefineMission( 237, " ������� ", 223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��� �� ���� �����?�� ������ ������ ������ � ��� �����?<n> <T> ��-��!� �� ���� ������ ������ � ���� ������������!��������.� ��� ��� ����� - �� ������ � ��� ����.<n> <T> �� �� ������� ��� � ���� ����� ���?")
	MisResultCondition(NoRecord, 223)
	MisResultCondition(HasMission, 223)
	MisResultAction(ClearMission, 223 )
	MisResultAction(SetRecord, 223 )
	MisResultAction(AddExp,600,600)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------�ڼ�
	DefineMission( 238, " ��������� ������ ", 224 )

	MisBeginTalk( "<t>������ ������. � ������ ��� ��������� ������. �� �� ������������ �����. ��-������, �� ������ ��� ������ ��� ��������� ���������. <n> <T> ������ �������� ������� ����� �������� ����. <n> <T> ������ 10 <r�������� ��������> � 5 <r�������� ���������>." )
	MisBeginCondition(NoRecord, 224)
	MisBeginCondition(HasRecord, 223)
	MisBeginCondition(NoMission, 224)
	MisBeginAction(AddMission, 224)
	MisBeginAction(AddTrigger, 2241, TE_KILL, 45, 10 )		--ɳ��
	MisBeginAction(AddTrigger, 2242, TE_KILL, 49, 5 )		--ɳ��ʿ
	MisCancelAction(ClearMission, 224)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 49, 5, 20, 5)

	MisResultTalk("<t>�� � ����, ��� � ���� ������������ �� ���.")
	MisHelpTalk("<t>������, ��� �� �� � ��������� ��������� ������.")
	MisResultCondition(HasMission, 224)
	MisResultCondition(HasFlag, 224, 19 )
	MisResultCondition(HasFlag, 224, 24 )
	MisResultAction(ClearMission, 224)
	MisResultAction(SetRecord, 224 )
	MisResultAction(AddExp,1400,1400)
	MisResultAction(AddMoney,2550,2550)	
	MisResultAction(AddExpAndType,2,5000,5000)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 45 )	
	TriggerAction( 1, AddNextFlag, 224, 10, 10 )
	RegCurTrigger( 2241 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 49 )	
	TriggerAction( 1, AddNextFlag, 224, 20, 5 )
	RegCurTrigger( 2242 )

-------------------------------------------------ս����ɳĮ
	DefineMission( 239, " ����� � ������� ", 225 )

	MisBeginTalk( "<t>������� �������� �������� - <r������> �� ��������� �� ����������� (1180, 3030). �� ����� ������, �� ���������� �������. <n> <T> �� ����� ����������� ���� ����,� �� �� <n> <T> ������ ��� ��� ����!<n> <T> � ����� ��� ���, ��� ����,����� ���� ��� �� ����� ���." )
	MisBeginCondition(NoRecord, 225)
	MisBeginCondition(HasRecord, 224)
	MisBeginCondition(NoMission, 225)
	MisBeginAction(AddMission, 225)
	MisBeginAction(AddTrigger, 2251, TE_GETITEM, 3979, 1 )		--ɳĮ����֤֮
	MisCancelAction(ClearMission, 225)

	MisNeed(MIS_NEED_ITEM, 3979, 1, 10, 1)

	MisResultTalk("<t>�������! ��������� ��� � ������ ����� ������� �������� �������!")
	MisHelpTalk("<t>������ �� �����?")
	MisResultCondition(HasMission, 225 )
	MisResultCondition(HasItem, 3979, 1 )
	MisResultAction(TakeItem, 3979, 1 )
	MisResultAction(ClearMission, 225 )
	MisResultAction(SetRecord, 225 )
	MisResultAction(AddExp,669,669)
	MisResultAction(AddMoney,1275,1275)	
	MisResultAction(AddExpAndType,2,5000,5000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3979 )	
	TriggerAction( 1, AddNextFlag, 225, 10, 1 )
	RegCurTrigger( 2251 )

----------------------------����
	DefineMission( 240, " ������ ", 226 )
	
	MisBeginTalk( "<t>�� ������� ����� ��� ����� �������� �������� ��������,� ����� ��� ������. <n> <T>� ���� � ��������� ������ �������.<n> <T> �� �������� ������� ������ ��� �������� ����� ������ �������,� � �� � ���� ������!� ������ ������ �������� ������ " )
	MisBeginCondition(NoRecord, 226)
	MisBeginCondition(HasRecord, 225)
	MisBeginCondition(NoMission, 226)
	MisBeginAction(AddMission, 226)
	MisCancelAction(ClearMission, 226)
		
	MisNeed(MIS_NEED_DESP, "�������� ���������! (958, 3549)")
	
	MisHelpTalk("<t>� ��� ������ ��� ���, ��� ����.")
	MisResultCondition(AlwaysFailure )

-----------------------------------����
	DefineMission( 241, " ������ ", 226, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������ <b�������> ������ �����? <n> <T> � ������ ��� ����������, �� ������ �� �������� �������� �������� ��������, � �� �����, ��� �� ������ ��� ����������. ������� �� ���� ������.")
	MisResultCondition(NoRecord, 226)
	MisResultCondition(HasMission, 226)
	MisResultAction(ClearMission, 226 )
	MisResultAction(SetRecord, 226 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,2650,2650)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------��������Ϣ
	DefineMission( 242, " ��������� ������� ", 227 )
	
	MisBeginTalk( "<t>���� �� �� ����� ���������� <b���������>, �� ����� �������� �������������. <n> <T> ��-������, ��� �������� ������������ ����� ����������� � ���� �������������. ��� ... �� ����� �� ��, ����� ������ (867, 3660)? �� ������� �������� ������� � �������." )
	MisBeginCondition(NoRecord, 227)
	MisBeginCondition(HasRecord, 226)
	MisBeginCondition(NoMission, 227)
	MisBeginAction(AddMission, 227)
	MisCancelAction(ClearMission, 227)
		
	MisNeed(MIS_NEED_DESP, "����� ������ (867, 3660)")
	
	MisHelpTalk("<t>���� �� �� ������ ����� ������ , ���������� ������ ������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------��������Ϣ
	DefineMission( 243, " ��������� ������� ", 227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��� ����� ���������� � �������* �� ����� ������� ��������! <n> <T> � ��� �� �� ������ ����� ������ ? ������� � <b������ �������>? �����  ����� �����������  � <b�������� ������>? ���, ��������, � <r������� �����>? �������� ������!")
	MisResultCondition(NoRecord, 227 )
	MisResultCondition(HasMission, 227 )
	MisResultAction(ClearMission, 227 )
	MisResultAction(SetRecord, 227 )
	MisResultAction(AddExp,749,749)
	MisResultAction(AddMoney,1333,1333)	
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------�ܿ˺�����
	DefineMission( 244, " ������ ����� ", 228 )
	
	MisBeginTalk( "<t>�����, ��� ��� �� ������ ����� � <rJack�s ��������� Crew>. � ������ ��� ������ ������� ���������� � ������ ������. ������, ���� ��� �� ��������� �������, �� ���� ������ �� ����������.�� � ��������� ����� ��� ����� ���������� � ����� ����� �������. <n> <T> ������� ����������� �������� ��������. <n> <T> ����� �� ��� ����? ��-�� ... <n> <T> � ����� ����� ����� �������� <b�������> ��� ��������� � ������� (1118, 3611). �� �����-�� �������, ��� ������, ��� �����.����� ������ �� ������, �������� ����� ��������� �� ������, � �� ������� �� ����� � ����������� ������." )
	MisBeginCondition(NoRecord, 228)
	MisBeginCondition(HasRecord, 227)
	MisBeginCondition(NoMission, 228)
	MisBeginAction(AddMission, 228)
	MisCancelAction(ClearMission, 228)
		
	MisNeed(MIS_NEED_DESP, "Look for Merrix at (1118, 3611)")
	
	MisHelpTalk("��������� <b�������>  (1118, 3611).")
	MisResultCondition(AlwaysFailure )

-----------------------------------�ڽܿ˺�����
	DefineMission( 245, " ������ ����� ", 228, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��������� ������ <r������� �����> ���������� ��� ��������. � ��������, ��������� ������ �������..")
	MisResultCondition(NoRecord, 228 )
	MisResultCondition(HasMission, 228 )
	MisResultAction(ClearMission, 228 )
	MisResultAction(SetRecord, 228 )
	MisResultAction(AddExp,1700,1700)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------�ѿ˴���
	DefineMission( 246, " ������� ����� ", 229 )

	MisBeginTalk( "<t>� ���� ������ ���, �� <r������� ����>  � ��� ��������� ����� ������� ����.  <n> <T> ������� ���� ����� �������� � ��� ��������� ��������������� ���� (1500,3450)  <n> <T> ���� �� �����-�� ������� ��������� ����� ��� ����, � ��� �� ����� ���. <n> <T> �����." )
	MisBeginCondition(NoRecord, 229)
	MisBeginCondition(HasRecord, 228)
	MisBeginCondition(NoMission, 229)
	MisBeginAction(AddMission, 229)
	MisBeginAction(AddTrigger, 2291, TE_GETITEM, 3980, 1 )		--�ѿ˵�С��
	MisCancelAction(ClearMission, 229)

	MisNeed(MIS_NEED_ITEM, 3980, 1, 10, 1)

	MisResultTalk("<t>�� ������� �����? <n> <T> �����������! ������ � ����, ��� ��� �����...")
	MisHelpTalk("<t>���.. �� ������� ����� ���? �������� ����� ��������� ����� ��� �� ��������...")
	MisResultCondition(HasMission, 229 )
	MisResultCondition(HasItem, 3980, 1 )
	MisResultAction(TakeItem, 3980, 1 )
	MisResultAction(ClearMission, 229 )
	MisResultAction(SetRecord, 229 )
	MisResultAction(AddExp,4680,4680)
	MisResultAction(AddMoney,7075,7075)	
	MisResultAction(AddExpAndType,2,5000,5000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3980 )	
	TriggerAction( 1, AddNextFlag, 229, 10, 1 )
	RegCurTrigger( 2291 )

----------------------------Ѱ��������
	DefineMission( 247, " ��, ���� ��� ����� �������� ", 230 )
	
	MisBeginTalk( "<t> � �������� �����, ��� ��������� ������ �� �� ������������� \ ��\." )
	MisBeginCondition(NoRecord, 230)
	MisBeginCondition(HasRecord, 229)
	MisBeginCondition(NoMission, 230)
	MisBeginAction(AddMission, 230)
	MisBeginAction(GiveItem, 3981, 1, 4 )
	MisCancelAction(ClearMission, 230)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "������� �������������  \"��\"")
	
	MisHelpTalk("<t>� ����, ��� ���������� ����, �� �� ������ �������� ���. � ���� ���� ������������, ��� �� ������� ��� �����...")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ѱ��������
	DefineMission( 248, " ��, ���� ��� ����� �������� ", 230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t> ����� ������� �� �������� ��� ������? ��� ��� ������!!! <n> <T> � \ ��\.������ ���������� \ ��\? <n> <T> �� ������� �� ������� ������.� ������ � ��� ���� ��������� ���� �������!. ")
	MisResultCondition(NoRecord, 230 )
	MisResultCondition(HasMission, 230 )
	MisResultCondition(HasItem, 3981, 1 )
	MisResultAction(TakeItem, 3981, 1 )
	MisResultAction(ClearMission, 230 )
	MisResultAction(SetRecord, 230 )
	MisResultAction(ObligeAcceptMission, 5 )
	MisResultAction(AddExp,936,936)
	MisResultAction(AddMoney,1415,1415)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------�㱨������
	DefineMission( 249, " ��, ���� ��� ����� �������� ", 5, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�������� - ���������� ��?������� �� �� �������...")
	MisResultCondition(HasMission, 5 )
	MisResultCondition(NoRecord, 5 )
	MisResultAction(ClearMission, 5 )
	MisResultAction(SetRecord, 5 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------ȥ����
	DefineMission( 250, " ����������� �� ����� ", 232 )
	
	MisBeginTalk( "<t>����� ��� ���� ��������� ������� ���. <n> <T> �� ���� � ������? � ��� ������� ��� ����. ������� �� ����� ���� ���������. ��� ����� ������ ��������� � ������. <n> <T> ����� ������ ��� �� ��������� �� �� ����� ������ (1364,571)" )
	MisBeginCondition(NoRecord, 232)
	MisBeginCondition(HasRecord, 5 )
	MisBeginCondition(NoMission, 232)
	MisBeginAction(AddMission, 232)
	MisCancelAction(ClearMission, 232)
		
	MisNeed(MIS_NEED_DESP, "������� ��� (1365, 570)")
	
	MisHelpTalk("<t>�� ��� ������?")
	MisResultCondition(AlwaysFailure )

-----------------------------------ȥ����
	DefineMission( 251, " ����������� �� ����� ", 232, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����������� ��� � ������.� ���� ��� �� ������ �� ������ ��� ����������� � ��������� <n> <T> ������,�� ����� ��� ����� ��� �� �����.�� ������ �������������� ������.")
	MisResultCondition(NoRecord, 232 )
	MisResultCondition(HasMission, 232 )
	MisResultAction(ClearMission, 232 )
	MisResultAction(SetRecord, 232 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------���Ǳ���Σ��
	DefineMission( 252, " ��������� � ������ ", 233 )
	
	MisBeginTalk( "<t>���������� �  <b�����>�. �� ������ ��� ������.����� �� � ���� ������ (1346, 451)." )
	MisBeginCondition(NoRecord, 233)
	MisBeginCondition(HasRecord, 232)
	MisBeginCondition(NoMission, 233)
	MisBeginAction(AddMission, 233)
	MisCancelAction(ClearMission, 233)
		
	MisNeed(MIS_NEED_DESP, "������� ���� (1346, 451).")
	
	MisHelpTalk("<t>���� �� ��� ����� �����!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ȥ����
	DefineMission( 253, " ��������� � ������ ", 233, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����� ���������� ��������������.������ �� ����� ����� � ������, ��� �� �������. �� ���� �����-�� ������� � �������� ������� <n> <T> �� ����� ���� ��������� �� �� ��� ������ �������� ")
	MisResultCondition(NoRecord, 233 )
	MisResultCondition(HasMission, 233 )
	MisResultAction(ClearMission, 233 )
	MisResultAction(SetRecord, 233 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------����
	DefineMission( 254, " ���������� ", 234 )
	
	MisBeginTalk( "<t>������� ���� ������� ������������� , ��� ��������� ����������� ����������.� ��� ����� ������������ �� ���������� � ������� , �� ������ ����������� �� �� ����.������ ��� ���� ������� �� ������ �� ������� <n> <T> ������!������� � �� � ��� ��� ������� ����!" )
	MisBeginCondition(NoRecord, 234)
	MisBeginCondition(HasRecord, 233)
	MisBeginCondition(NoMission, 234)
	MisBeginAction(AddMission, 234)
	MisCancelAction(ClearMission, 234)
		
	MisNeed(MIS_NEED_DESP, "������� �� (1237, 613)")
	
	MisHelpTalk("<t>�� �� ����� ��?")
	MisResultCondition(AlwaysFailure )

-----------------------------------����
	DefineMission( 255, " ���������� ", 234, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��� ������� ���? � ����� �������,�� ������������ �� �������.������� ��� �� ����������� � �������.")
	MisResultCondition(NoRecord, 234 )
	MisResultCondition(HasMission, 234 )
	MisResultAction(ClearMission, 234 )
	MisResultAction(SetRecord, 234 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------Ѱ�Ҳ�����
	DefineMission( 256, " ������ �������� ", 235 )
	
	MisBeginTalk( "<t>� ������ � ���, ��� ������������ ��������� ��������� �� ���������. <n> <T> �� ����� �� �� ������ ��� ���������? ������� �� � ���������� � ��������� �������� (1028, 649)" )
	MisBeginCondition(NoRecord, 235)
	MisBeginCondition(HasRecord, 234)
	MisBeginCondition(NoMission, 235)
	MisBeginAction(AddMission, 235)
	MisCancelAction(ClearMission, 235)
		
	MisNeed(MIS_NEED_DESP, "������� ��������� (1028, 649)")
	
	MisHelpTalk("<t>����� ������� ��������,��� �� � ����� ��������")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ѱ�Ҳ�����
	DefineMission( 257, " ������ �������� ", 235, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���������� �����������.")
	MisResultCondition(NoRecord, 235 )
	MisResultCondition(HasMission, 235 )
	MisResultAction(ClearMission, 235 )
	MisResultAction(SetRecord, 235 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)	
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------����Ʒ���
	DefineMission( 258, " ������ ������� ", 236 )

	MisBeginTalk( "<t>����� �� ������������  � ����� ��������. �� ���� �������� ������� ����. �� ������ � ����,� ��� �������� ��������� ���� ������ ���� ������� <n> <T> �������,� ������ ����� ��� ��� ���������! <n> <T> �������� ��� ����� ���� �������." )
	MisBeginCondition(NoRecord, 236)
	MisBeginCondition(HasRecord, 235)
	MisBeginCondition(NoMission, 236)
	MisBeginAction(AddMission, 236)
	MisBeginAction(AddTrigger, 2361, TE_GETITEM, 3982, 15 )		--�����Ĳ���Ʒ
	MisCancelAction(ClearMission, 236)

	MisNeed(MIS_NEED_ITEM, 3982, 15, 10, 15)

	MisResultTalk("<t>��� �� ����� ��� �������! ���!")
	MisHelpTalk("<t>���� �� ������� ������ �����!����� ��� ��������� ��� �� � ���� ������ �������� (860/532 - 1628/954)")
	MisResultCondition(HasMission, 236 )
	MisResultCondition(HasItem, 3982, 15 )
	MisResultAction(TakeItem, 3982, 15 )
	MisResultAction(ClearMission, 236 )
	MisResultAction(SetRecord, 236 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3982 )	
	TriggerAction( 1, AddNextFlag, 236, 10, 15 )
	RegCurTrigger( 2361 )


----------------------------���Ͳ���Ʒ
	DefineMission( 259, " �������� �������� ", 237 )
	
	MisBeginTalk( "<t> ��� ��� �� ������� ��� ������� �������, �� ����� �� ��  ������ ������� �� �� ������  � <b������� ���> �� �����������  (1365, 570). � � ����� ����� ����." )
	MisBeginCondition(NoRecord, 237)
	MisBeginCondition(HasRecord, 236)
	MisBeginCondition(NoMission, 237)
	MisBeginAction(AddMission, 237)
	MisBeginAction(GiveItem, 3983, 15, 4)
	MisCancelAction(ClearMission, 237)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "������� ��� � ������ (1365, 570)")
	
	MisHelpTalk("<t>\ 193������!���� ���� � ������! ")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ͳ���Ʒ
	DefineMission( 260, " �������� �������� ", 237, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>� ������ ����! �� ������� ! <n> <T> ��� ������� ���� ����� ��������� ��������. � �� ����, ��� ������������� ���.")
	MisResultCondition(NoRecord, 237 )
	MisResultCondition(HasMission, 237)
	MisResultCondition(HasItem, 3983, 15 )
	MisResultAction(TakeItem, 3983, 15 )
	MisResultAction(ClearMission, 237 )
	MisResultAction(SetRecord, 237 )
	MisResultAction(AddExp,2300,2300)
	MisResultAction(AddMoney,2900,2900)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------�¼�����
	DefineMission( 261, " ���������� ������������� ", 238 )
	
	MisBeginTalk( "<t>�� ��������������� ���� ����������, ������������ �����������, ��� ���� ����� ����� �����������. <n> <T>������� � ������������� ����� (1141, 575), ������� �������� ������������ ������� ������." )
	MisBeginCondition(NoRecord, 238)
	MisBeginCondition(HasRecord, 237)
	MisBeginCondition(NoMission, 238)
	MisBeginAction(AddMission, 238)
	MisCancelAction(ClearMission, 238)
		
	MisNeed(MIS_NEED_DESP, "����� ����� (1141, 575)")
	
	MisHelpTalk("����� ������ ���� �������� �� ����� ��������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------�¼�����
	DefineMission( 262, " ���������� ������������� ", 238, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��� �������� �������� ������, � �������� ������� ������� �� ����������,��� ����� ����� ����������. ���� �� ������ ������ ��� , �� �� ������ ��� ����������.")
	MisResultCondition(NoRecord, 238 )
	MisResultCondition(HasMission, 238)
	MisResultAction(ClearMission, 238 )
	MisResultAction(SetRecord, 238 )
	MisResultAction(AddExp,2600,2600)
	MisResultAction(AddMoney,3000,3000)
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------ѩԭ����
	DefineMission( 263, " ��������� ������� ��������� ", 239 )

	MisBeginTalk( "<t>������ <b����> �� ����������� (1495, 667), ���� ��������� ����� ����� ��,<b������� ��������> �� ����������� (1746, 530) � <b������� ��������> �� �����������  (873, 646).<n> <T> �� ������ �������� ��� ��������� ���������� , ����������� ��� ���� ������������, � ������ 5 <y������ ������ ������� �������� >, < y������ ������ ��������> � <y������ ������ ����>. <n> <T> �������� ���� ������ ������ ������� ������,��� �� ���������." )
	MisBeginCondition(NoRecord, 239)
	MisBeginCondition(HasRecord, 238)
	MisBeginCondition(NoMission, 239)
	MisBeginAction(AddMission, 239)
	MisBeginAction(AddTrigger, 2391, TE_GETITEM, 3984, 5 )		--ѩ���޵ļ���ʯ
	MisBeginAction(AddTrigger, 2392, TE_GETITEM, 4069, 5 )		--ѩŮ�ļ���ʯ
	MisBeginAction(AddTrigger, 2393, TE_GETITEM, 4070, 5 )		--ѩ�˵ļ���ʯ
	MisCancelAction(ClearMission, 239)

	MisNeed(MIS_NEED_ITEM, 3984, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4069, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4070, 5, 30, 5)

	MisResultTalk("<t>��� ��, ��� ��� �����! <n> <T> ��� ����� ������ ... ��� ���������... ��� ...")
	MisHelpTalk("<t>��� ������!����� � ������� ������ ������.")
	MisResultCondition(HasMission, 239 )
	MisResultCondition(HasItem, 3984, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultAction(TakeItem, 3984, 5 )
	MisResultAction(TakeItem, 4069, 5 )
	MisResultAction(TakeItem, 4070, 5 )
	MisResultAction(ClearMission, 239 )
	MisResultAction(SetRecord, 239 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,3000,3000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3984 )	
	TriggerAction( 1, AddNextFlag, 239, 10, 5 )
	RegCurTrigger( 2391 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4069 )	
	TriggerAction( 1, AddNextFlag, 239, 20, 5 )
	RegCurTrigger( 2392 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4070 )	
	TriggerAction( 1, AddNextFlag, 239, 30, 5 )
	RegCurTrigger( 2393 )

-------------------------------------------------Ѱ��ѩ����
	DefineMission( 264, " ������ ������ ���� ", 240 )

	MisBeginTalk( "<t>���� �� ����, ��� � ������ � ��� ������ ������, ���� ������������ ������� ������. ���� �� ������� ��� ���� ������ ������ ���� , �� ��� ������ ����." )
	MisBeginCondition(NoRecord, 240)
	MisBeginCondition(HasRecord, 239)
	MisBeginCondition(NoMission, 240)
	MisBeginAction(AddMission, 240)
	MisBeginAction(AddTrigger, 2401, TE_GETITEM, 4071, 1 )		--ѩ���޵ļ���ʯ
	MisCancelAction(ClearMission, 240)

	MisNeed(MIS_NEED_ITEM, 4071, 1, 10, 1)

	MisResultTalk("<t>������ ������ ������ ���� ����� ���������� �� �������.� �� ���� ����� �����.")
	MisHelpTalk("<t>� ������, ��� ������ ���� ������, �� � ���� � ���.")
	MisResultCondition(HasMission, 240 )
	MisResultCondition(HasItem, 4071, 1 )
	MisResultAction(TakeItem, 4071, 1 )
	MisResultAction(ClearMission, 240 )
	MisResultAction(SetRecord, 240 )
	MisResultAction(AddExp,16000,16000)
	MisResultAction(AddMoney,16000,16000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4071 )	
	TriggerAction( 1, AddNextFlag, 240, 10, 1 )
	RegCurTrigger( 2401 )

----------------------------�����ǵ�����
	DefineMission( 265, " �������� ����������� ������ ", 241 )
	
	MisBeginTalk( "<t>����� ����������� ������������ � ����� ������ ������ ����, � ���� ���������, ��� �� �������� ����������� ������� ����.�� ������ ������� ���� ���. �� ������� ������� � ������� ��� ������ ����,������� ���� �� �������. � ����� ��� ���� ���������� � ������ <n> <T> ��� ������� ����� ����������� � ����� �����,� � ��������� �������� <n> <T> ���� �� ������ ������ ������ �� ���� ������, �� ������ ����� ������� �����  � �������  (2272, 2700)." )
	MisBeginCondition(NoRecord, 241 )
	MisBeginCondition(HasRecord, 240 )
	MisBeginCondition(NoMission, 241 )
	MisBeginAction(AddMission, 241 )
	MisCancelAction(ClearMission, 241 )
		
	MisNeed(MIS_NEED_DESP, "�������� ����� � ���� (2272,2700)")
	
	MisHelpTalk("<t>������������� � ������ � ������� ��� ����� �������..")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����ǵ�����
	DefineMission( 266, " �������� ����������� ������ ", 241, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�? ������ ? � �� ���� ���. � ������, �� ����� �������� ������!.")
	MisResultCondition(NoRecord, 241 )
	MisResultCondition(HasMission, 241)
	MisResultAction(ClearMission, 241 )
	MisResultAction(SetRecord, 241 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)



-------------------------------------------------��Ϳɽ��
	DefineMission( 267, " ������ ", 242 )

	MisBeginTalk( "<t>��� �������? �� �������, ��� � ������� �� ����? �� ... � �� ����� ������ � ���. <n> <T> � ��� ���� �� �� ���� ��� ������� ������� ���� �� ���� �����,� ���� �� ��������� ��������!(��� ����� XD)" )
	MisBeginCondition(NoRecord, 242)
	MisBeginCondition(HasRecord, 241)
	MisBeginCondition(NoMission, 242)
	MisBeginAction(AddMission, 242)
	MisBeginAction(AddTrigger, 2421, TE_GETITEM, 4072, 1 )		--ѩ���޵ļ���ʯ
	MisCancelAction(ClearMission, 242)

	MisNeed(MIS_NEED_ITEM, 4072, 1, 10, 1)

	MisResultTalk("<t>������� ��� ������ ����!")
	MisHelpTalk("<t>������� ��� ������ ����!")
	MisResultCondition(HasMission, 242 )
	MisResultCondition(HasItem, 4072, 1 )
	MisResultAction(TakeItem, 4072, 1 )
	MisResultAction(ClearMission, 242 )
	MisResultAction(SetRecord, 242 )
	MisResultAction(AddExp,7000,7000)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,9035,9035)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4072 )	
	TriggerAction( 1, AddNextFlag, 242, 10, 1 )
	RegCurTrigger( 2421 )

-----------------------------------��Ϳɽ��
	DefineMission( 268, " ������ ", 242, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>   �� ����� ����  '������ ��������������'? �� ������� �� ������ ������ ��� , ��� ����� ���������. �� ��� ��� � ���� ������� ��� ���� ������,���� �� ������� ������ �����������. ")
	MisResultCondition(NoRecord, 242 )
	MisResultCondition(HasMission, 242)
	MisResultCondition(NoFlag, 242, 1 )
	MisResultAction(SetFlag, 242, 1 )


-------------------------------------------------ɽ��˱���
	DefineMission( 269, " ���� '������ ��������������' ", 243 )

	MisBeginTalk( "<t> ��� ����, ����� ������� ����� ���� ��������� 8 ������������. ��� ������ 4: 2 <y���� �������� ��������> �� <r�������� ��������> �� ����������� (990, 2553);2 <y��������� ������> �� <r��������� ������> �� ����������� (910, 2971); 2 <y����� �������> �� <r�������> �� �������� ( 1414, 2896);2 <y������� �� ����l> �� <r������� ����> �� �������� (1900, 2643)." )
	MisBeginCondition(NoRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(HasFlag, 242, 1)
	MisBeginCondition(NoMission, 243)
	MisBeginAction(AddMission, 243)
	MisBeginAction(AddTrigger, 2431, TE_GETITEM, 4073, 2 )		--�ֹ군
	MisBeginAction(AddTrigger, 2432, TE_GETITEM, 4074, 2 )		--Ұ���������
	MisBeginAction(AddTrigger, 2433, TE_GETITEM, 4075, 2 )		--�����޵�����
	MisBeginAction(AddTrigger, 2434, TE_GETITEM, 4076, 2 )		--����Ľᾧ��ĩ
	MisCancelAction(ClearMission, 243)

	MisNeed(MIS_NEED_ITEM, 4073, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 4074, 2, 12, 2)
	MisNeed(MIS_NEED_ITEM, 4075, 2, 14, 2)
	MisNeed(MIS_NEED_ITEM, 4076, 2, 16, 2)


	MisResultTalk("<t> � �� ��� ������! <n> <T> � ����� ������ ���� ����� ������.")
	MisHelpTalk("<t>��� ���������? � �� ���� ������� ����,���� ���� ������ ������������..")
	MisResultCondition(HasMission, 243 )
	MisResultCondition(HasItem, 4073, 2 )
	MisResultCondition(HasItem, 4074, 2 )
	MisResultCondition(HasItem, 4075, 2 )
	MisResultCondition(HasItem, 4076, 2 )
	MisResultAction(TakeItem, 4073, 2 )
	MisResultAction(TakeItem, 4074, 2 )
	MisResultAction(TakeItem, 4075, 2 )
	MisResultAction(TakeItem, 4076, 2 )
	MisResultAction(ClearMission, 243 )
	MisResultAction(SetRecord, 243 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)
	MisResultAction(AddExpAndType,2,9035,9035)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4073 )	
	TriggerAction( 1, AddNextFlag, 243, 10, 2 )
	RegCurTrigger( 2431 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4074 )	
	TriggerAction( 1, AddNextFlag, 243, 12, 2 )
	RegCurTrigger( 2432 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4075 )	
	TriggerAction( 1, AddNextFlag, 243, 14, 2 )
	RegCurTrigger( 2433 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4076 )	
	TriggerAction( 1, AddNextFlag, 243, 16, 2 )
	RegCurTrigger( 2434 )


----------------------------�������
	DefineMission( 270, " �����-��, ������ �����... ", 244 )
	
	MisBeginTalk( "<t>��������� �� ������ �� ��� ���������,� ������ ��� ������. <n> <T> ������������ ������� ���� ����� ���� � ����� ���������!<n> <T> ����� ��� ����� ���������� � ���(2241, 2748)." )
	MisBeginCondition(NoRecord, 244 )
	MisBeginCondition(HasRecord, 242 )
	MisBeginCondition(NoMission, 244 )
	MisBeginAction(AddMission, 244 )
	MisCancelAction(ClearMission, 244 )
		
	MisNeed(MIS_NEED_DESP, "���������� � ���� (2241, 2748) ")
	
	MisHelpTalk("<t>Good Wine! Good Wine!")
	MisResultCondition(AlwaysFailure )

-----------------------------------�������
	DefineMission( 271, " �����-��, ������ �����.. ", 244, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���? ��� ���� ������ ������ ����� �������������� ����� ��� ���? ����� ���, ��� ���� �� ���-���� ����� �������,����� �������� ���.")
	MisResultCondition(NoRecord, 244 )
	MisResultCondition(HasMission, 244)
	MisResultAction(ClearMission, 244 )
	MisResultAction(SetRecord, 244 )
	MisResultAction(ObligeAcceptMission, 6 )
	MisResultAction(SystemNotice, "�������� ������ " )
	MisResultAction(AddExp,3500,3500)
	MisResultAction(AddMoney,3150,3150)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------ѯ��δ��
	DefineMission( 272, " ������������ ������ ", 6 )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>��-��-��, � ����� �����. �� ������ ��� �������� ��� ��������� �� ����!��� ������� � ���� ��� ������.")
	MisResultCondition(HasMission, 6 )
	MisResultAction(ClearMission, 6 )
	MisResultAction(SetRecord, 6 )
	MisResultAction(AddExp,1768,1768)
	MisResultAction(AddMoney,1565,1565)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------�᳤�İѱ�
	DefineMission( 273, " ������ ����� ������������ ", 246 )
	
	MisBeginTalk( "<t>���� �� ������ ��� ��  ���� ���������,���� ������������� ���. <n> <T> ����� ������� ������� ������ ��� ������ (2277, 2831)." )
	MisBeginCondition(NoRecord, 246 )
	MisBeginCondition(HasRecord, 6 )
	MisBeginCondition(NoMission, 246 )
	MisBeginAction(AddMission, 246 )
	MisCancelAction(ClearMission, 246 )
		
	MisNeed(MIS_NEED_DESP, "���������� � ��������� (2277, 2831)")
	
	MisHelpTalk("<t>Go��Go! Leave me alone with my wine.")
	MisResultCondition(AlwaysFailure )

-----------------------------------�᳤�İѱ�
	DefineMission( 274, " ������ ����� ������������ ", 246, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��-��.��� ������ ����������! <n> <T> �� � ������ ���.")
	MisResultCondition(NoRecord, 246 )
	MisResultCondition(HasMission, 246)
	MisResultAction(ClearMission, 246 )
	MisResultAction(SetRecord, 246 )
	MisResultAction(AddExp,3600,3600)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------�Ͽ�̽��
	DefineMission( 275, " ������������� � ������ ", 247 )

	MisBeginTalk( "<t>������� �� ����������� ����. <n> <T>�������� ������� �� ������� ������� ����� ������� � ���� ��������� ��������!���� �� ������� ��� ���� ��������� ������� ������ ������, ��  �� ������ ������ ������������� ����. " )
	MisBeginCondition(NoRecord, 247)
	MisBeginCondition(HasRecord, 246)
	MisBeginCondition(NoMission, 247)
	MisBeginAction(AddMission, 247)
	MisBeginAction(AddTrigger, 2471, TE_GETITEM, 4081, 10 )		--�ƾɵ�ֽƬ
	MisCancelAction(ClearMission, 247)

	MisNeed(MIS_NEED_ITEM, 4081, 10, 10, 10)

	MisResultTalk("<t>��� ��������� ��� ���...")
	MisHelpTalk("<t>��� ������� , ��� ������� �������� ������ ������ �����.")
	MisResultCondition(HasMission, 247 )
	MisResultCondition(HasItem, 4081, 10 )
	MisResultAction(TakeItem, 4081, 10 )
	MisResultAction(ClearMission, 247 )
	MisResultAction(SetRecord, 247 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4081 )	
	TriggerAction( 1, AddNextFlag, 247, 10, 10 )
	RegCurTrigger( 2471 )

----------------------------ֽƬ������
	DefineMission( 276, " ������ ������� ", 248 )
	
	MisBeginTalk( "<t>���������� �� ��� <y�������>, ���� ���������� � ������!����� ��� ���� ���������� � <b����>. <n> <T> � ���� ������� �� ������������ ����." )
	MisBeginCondition(NoRecord, 248 )
	MisBeginCondition(HasRecord, 247 )
	MisBeginCondition(NoMission, 248 )
	MisBeginAction(AddMission, 248 )
	MisBeginAction(GiveItem, 4082, 1, 4 )
	MisCancelAction(ClearMission, 248 )
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "��������� ������ ������� ������������ ���� (2241, 2748)")
	
	MisHelpTalk("<t>Go now! I can imagine his expression. Haha!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ֽƬ������
	DefineMission( 277, " ������ ������� " , 248, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����� �� ���������? �-�-�! ������ � ���?��� ��� ����?����� � ���� ��������... ��� �� ������ ������?")
	MisResultCondition(NoRecord, 248 )
	MisResultCondition(HasMission, 248)
	MisResultCondition(HasItem, 4082, 1)
	MisResultAction(ClearMission, 248 )
	MisResultAction(SetRecord, 248 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------���ܵľ���
	DefineMission( 278, " ������� ������ ", 249 )
	
	MisBeginTalk( "<t> ������� � ������� �� ������� ��������.��� ���� ����� ������ ��� ����,� ��� ��� ������� �� ����� � ��������� �� ��������.� ����� ������� ��� ��� ����� ������� �� ������� ����!��� �� � ����� �������� ����� � ������� ����������� ��� ����. <n> <T> �� �������� ���� � ������� ����� � ������ ��������,� ����� �� ���� ���. <n> <T> ������� ���� ���������� ������� ��� �� �������,�� ����� �� ����� - � ������.��� ��� ������ ��� �������� ��������� �������!�� ������ �� ������� ��� ��������. ���� �������� �������.����� �� ������� ������ � ���� ����������� (2192, 2767) " )
	MisBeginCondition(NoRecord, 249 )
	MisBeginCondition(HasRecord, 248 )
	MisBeginCondition(NoMission, 249 )
	MisBeginAction(AddMission, 249 )
	MisCancelAction(ClearMission, 249 )
		
	MisNeed(MIS_NEED_DESP, "������� �������� ������� (2192, 2767)")
	
	MisHelpTalk("<t>����� ��������� �� ������ �� �������� ����� �������.��� ������ �� ��������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------���ܵľ���
	DefineMission( 279, " ������� ������ ", 249, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�������? ��� ����� ������� ��������. <n> <T> � ����� ��������� �������� ��� �������� ,�� ��� �� �������.")
	MisResultCondition(NoRecord, 249 )
	MisResultCondition(HasMission, 249)
	MisResultAction(ClearMission, 249 )
	MisResultAction(SetRecord, 249 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,9035,9035)




-------------------------------------------------���ϵ�������
	DefineMission( 280, " ������� ����� �� ����� ", 250 )

	MisBeginTalk( "<t>�������? ��� ����� ������� ��������. <n> <T> � ����� ��������� �������� ��� �������� ,�� ��� �� �������." )
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(HasRecord, 248)
	MisBeginCondition(NoMission, 250)
	MisBeginCondition(HasItem, 4082, 1)
	MisBeginAction(AddMission, 250)
	MisBeginAction(AddTrigger, 2501, TE_GETITEM, 4083, 1 )		--����x1
	MisCancelAction(ClearMission, 250)

	MisNeed(MIS_NEED_ITEM, 4083, 1, 10, 1)

	MisPrize(MIS_PRIZE_MONEY, 34464, 1)
	MisPrizeSelAll()

	MisResultTalk("<t>�� ������������� �������� ������?! <n> <T> ��� ���� �������.")
	MisHelpTalk("<t>�� �����������,�� �� ������,�� �� ���������!")
	MisResultCondition(HasMission, 250 )
	MisResultCondition(HasItem, 4083, 1 )
	MisResultCondition(HasItem, 4082, 1 )
	MisResultAction(TakeItem, 4083, 1 )
	MisResultAction(TakeItem, 4082, 1 )
	MisResultAction(ClearMission, 250 )
	MisResultAction(SetRecord, 250 )
	MisResultAction(AddExp,13245,13245)
	MisResultAction(AddExpAndType,2,9035,9035)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4083 )	
	TriggerAction( 1, AddNextFlag, 250, 10, 1 )
	RegCurTrigger( 2501 )

----------------------------���µĹ���
	DefineMission( 281, " �������� ������ ", 251 )
	
	MisBeginTalk( "<t>�������, �� ���� ������ ����� ��������� �������.����� �� ���� ���,�� �������� ����� �� ���,�� ���� ������ �������!" )
	MisBeginCondition(NoRecord, 251 )
	MisBeginCondition(HasRecord, 249 )
	MisBeginCondition(NoMission, 251 )
	MisBeginAction(AddMission, 251 )
	MisCancelAction(ClearMission, 251 )
		
	MisNeed(MIS_NEED_DESP, "��������� ������� ����� (2277, 2769)")
	
	MisHelpTalk("<t>������,������ � �������� ��� � ������� ������� �������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���µĹ���
	DefineMission( 282, " �������� ������ ", 251, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��� ��������, ����� ��� ������� �������� ����� �����. <n> <T> � ������� � ������ �������� ��������� � ������ ����. ����� �� �����,�� ����� ���� ��� �������� ���� ����� ����� ���� ������!")
	MisResultCondition(NoRecord, 251 )
	MisResultCondition(HasMission, 251)
	MisResultAction(ClearMission, 251 )
	MisResultAction(SetRecord, 251 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------�����̵ĸ��
	DefineMission( 283, " ��������� ������� ", 252 )
	
	MisBeginTalk( "<t>������ ������ ����� ��� ��������! <n> <T> . �� ������ ����� ��� � ���������� ������." )
	MisBeginCondition(NoRecord, 252 )
	MisBeginCondition(HasRecord, 251 )
	MisBeginCondition(NoMission, 252 )
	MisBeginAction(AddMission, 252 )
	MisCancelAction(ClearMission, 252 )
		
	MisNeed(MIS_NEED_DESP, "����� ������ (296, 57)")
	
	MisHelpTalk("<t>�������,� �� ������ ����� ���� ����!")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����̵ĸ��
	DefineMission( 284, " ��������� ������� ", 252, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� ������ �� ������� �������? ��� ����� ����, �� � ���� �� �������� �� ������..")
	MisResultCondition(NoRecord, 252 )
	MisResultCondition(HasMission, 252)
	MisResultAction(ClearMission, 252 )
	MisResultAction(SetRecord, 252 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------�����ߵı㵱
	DefineMission( 285, " ���������� ���� ", 253 )

	MisBeginTalk( "<t>������� ��� ������� ����-������� ������� ��� ����� �������. � ���������� ���� ����,����� ��� ���� ���� ������,� ����� �������� ���� ������! <n> <T> � ����� ��� ���� �����-������. <n> <T> ������ �� �� ��� ������?��� ����� ����������� � ������ ������  (229, 28). " )
	MisBeginCondition(HasRecord, 252)
	MisBeginCondition(NoMission, 253)
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(NoRecord, 253)  --��ʱ�����ظ���
	MisBeginCondition(NoMission, 4)
	MisBeginAction(AddMission, 253)
	MisBeginAction(AddTrigger, 2531, TE_GETITEM, 4084, 1 )		--�㵱x1
	MisCancelAction(ClearMission, 253)

	MisNeed(MIS_NEED_ITEM, 4084, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 3917, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t> �� ��� ���������! ��� ��� ����!������� �������! <n> <T> ��� ��� ������ �� ���� �������!�� ������� �� ����� ������ ������� ������ ����!��� ������� �������� ������� ��������� �� ������� � ����� ������.")
	MisHelpTalk("<t>�� ����� ������� ������...")
	MisResultCondition(HasMission, 253 )
	MisResultCondition(HasItem, 4084, 1 )
	MisResultAction(TakeItem, 4084, 1 )
	MisResultAction(ClearMission, 253 )
	MisResultAction(SetRecord, 253 )
	MisResultAction(ObligeAcceptMission, 4 )
	MisResultAction(AddTrigger, 109, TE_KILL, 99, 1 )
	MisResultAction(AddTrigger, 108, TE_GAMETIME, TT_MULTITIME, 60, 1 )
	MisResultAction(AddExp,4500,4500)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4084 )	
	TriggerAction( 1, AddNextFlag, 253, 10, 1 )
	RegCurTrigger( 2531 )
	InitTrigger()
	TriggerCondition( 1, NoMisssionFailure, 4 )
	TriggerCondition( 1, IsMonster, 99 )
	TriggerAction( 1, AddNextFlag, 4, 10, 1 )
	RegCurTrigger( 109 )
	InitTrigger()
	TriggerCondition( 1, NoFlag, 4, 10 )
	TriggerAction( 1, SystemNotice, "����� ������!" )
	TriggerAction( 1, SetMissionFailure, 4 )
	RegCurTrigger( 108 )

-------------------------------------------------���ϲ���վ
	DefineMission( 286, " ������� ���������� ", 254 )

	MisBeginTalk( "<t> ����� �� � ��� ��������� ��������� �����..����� �����... ��� ����������� ������� ���� � ������������ ��������.��� �� ����� ��������. <n> <T> ����� � ���� ����� �� ������������ � �����  , � ��������� ��� ������ <n> <T> �� ����� ����� ������� ���.����� ��� �� ����������� (2243, 2826)" )
	MisBeginCondition(NoRecord, 254)
	MisBeginCondition(HasRecord, 250)
	MisBeginCondition(NoMission, 254)
	MisBeginAction(AddMission, 254)
	MisCancelAction(ClearMission, 254)

	MisNeed(MIS_NEED_DESP, "���������� � ����� (2243, 2826) ")

	MisHelpTalk("<t>� ��  ������ � ��� ,��� ������ ��������� � ������ �� ��� ���...")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ɽ��˱���
	DefineMission( 288, " ���� ������ �������������� ", 255 )

	MisBeginTalk( "<t>��� ����� ���� ��������� ��� 4 �����������: 2 <y���������� �����> �� <r�������� �����> �� ����������� (1655, 2563), 2 <y����������� ��������� �������> �� <r������> �� ����������� (1817, 2472), 2 <y������������� ������> �� <r��������������> �� ����������� (1624, 3017) � 3 <y�����> �� <r������� ������> �� ����������� (1161, 2639)." )
	MisBeginCondition(NoRecord, 255)
	MisBeginCondition(HasRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(NoMission, 255)
	MisBeginAction(AddMission, 255)
	MisBeginAction(AddTrigger, 2551, TE_GETITEM, 4077, 2 )		--��Ҷ�ϵ�¶��
	MisBeginAction(AddTrigger, 2552, TE_GETITEM, 4078, 2 )		--���յ������
	MisBeginAction(AddTrigger, 2553, TE_GETITEM, 4079, 2 )		--��˽����
	MisBeginAction(AddTrigger, 2554, TE_GETITEM, 4080, 3 )		--�����˽��
	MisCancelAction(ClearMission, 255)

	MisNeed(MIS_NEED_ITEM, 4077, 2, 18, 2)
	MisNeed(MIS_NEED_ITEM, 4078, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 4079, 2, 22, 2)
	MisNeed(MIS_NEED_ITEM, 4080, 3, 24, 3)

	MisPrize(MIS_PRIZE_ITEM, 4072, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>�! �� �������� �����������. <n> <T> � ����� ������ ���� ����� ������!")
	MisHelpTalk("<t>��� �����?��� � ���� ����������� ����,���� ��� �� ������� ������������?")
	MisResultCondition(HasMission, 255 )
	MisResultCondition(HasItem, 4077, 2 )
	MisResultCondition(HasItem, 4078, 2 )
	MisResultCondition(HasItem, 4079, 2 )
	MisResultCondition(HasItem, 4080, 3 )
	MisResultAction(TakeItem, 4077, 2 )
	MisResultAction(TakeItem, 4078, 2 )
	MisResultAction(TakeItem, 4079, 2 )
	MisResultAction(TakeItem, 4080, 3 )
	MisResultAction(ClearMission, 255 )
	MisResultAction(SetRecord, 255 )
	MisResultAction(AddExp,1595,1595)
	MisResultAction(AddMoney,1538,1538)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4077 )	
	TriggerAction( 1, AddNextFlag, 255, 18, 2 )
	RegCurTrigger( 2551 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4078 )	
	TriggerAction( 1, AddNextFlag, 255, 20, 2 )
	RegCurTrigger( 2552 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4079 )	
	TriggerAction( 1, AddNextFlag, 255, 22, 2 )
	RegCurTrigger( 2553 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4080 )	
	TriggerAction( 1, AddNextFlag, 255, 24, 3 )
	RegCurTrigger( 2554 )

-----------------------------------���ϲ���վ
	DefineMission( 289, " ������� ���������� ", 254, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������� �����?��,�� ������ � ����� �����. ��������, �� ��� �� ���� ������.")
	MisResultCondition(NoRecord, 254 )
	MisResultCondition(HasMission, 254)
	MisResultAction(ClearMission, 254 )
	MisResultAction(SetRecord, 254 )
	MisResultAction(AddExp,5000,5000)	
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------���߻��ͼ
	DefineMission( 290, " ������������� ����� ", 256 )

	MisBeginTalk( "<t>���� � � �� ���� �� ���� �����,�������� ������ ������ �����. <n> <T>. ��� ����� .....< b�����>! ���� �� ������� ���,�� �������� ��������� ����������. ������ � �������� ���� ����� ����������! <n> <T> �� , �� ��������������� ����� ���  (2024, 2752).�����! " )
	MisBeginCondition(NoRecord, 256)
	MisBeginCondition(HasRecord, 254)
	MisBeginCondition(NoMission, 256)
	MisBeginAction(AddMission, 256)
	MisCancelAction(ClearMission, 256)

	MisNeed(MIS_NEED_DESP, "������� <b���������-������> (2024, 2752)")

	MisHelpTalk("<t>����� �������� ����� ������� ������ <n> <T> ����������� ������� ������� ��� ����� ��������..")
	MisResultCondition(AlwaysFailure )

-----------------------------------���߻��ͼ
	DefineMission( 291, " ������������� ����� ", 256, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�? ��� ��? ��� �� ������ � ������� �����? � �� �� ��� ����� ������� ����� ���� ����������. *������ *")
	MisResultCondition(NoRecord, 256 )
	MisResultCondition(HasMission, 256)
	MisResultAction(ClearMission, 256 )
	MisResultAction(SetRecord, 256 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------��սˮĸ
	DefineMission( 292, " ������� ������� ", 257 )

	MisBeginTalk( "<t>*������* ���� �� ������ ���� ���� ������,�� ��������� ��� ��������� <n> <T>������� ��� ���� 15 ��������� ����������� ������.." )
	MisBeginCondition(NoRecord, 257)
	MisBeginCondition(HasRecord, 256)
	MisBeginCondition(NoMission, 257)
	MisBeginAction(AddMission, 257)
	MisBeginAction(AddTrigger, 2571, TE_GETITEM, 4140, 15 )		--��Ҷ�ϵ�¶��
	MisCancelAction(ClearMission, 257)

	MisNeed(MIS_NEED_DESP, "������� 15 <y��������� ����������� ������ > � ��������� � ������  (2024, 2752)")
	MisNeed(MIS_NEED_ITEM, 4140, 15, 10, 15)

	MisResultTalk("<t>* ������ * �� �� ��� ����� ��������� ")
	MisHelpTalk("<t>* ������ *!")
	MisResultCondition(HasMission, 257 )
	MisResultCondition(HasItem, 4140, 15 )
	MisResultAction(TakeItem, 4140, 15 )
	MisResultAction(ClearMission, 257 )
	MisResultAction(SetRecord, 257 )
	MisResultAction(AddExp,5848,5848)
	MisResultAction(AddMoney,3422,3422)	
	MisResultAction(AddExpAndType,2,26625,26625)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4140 )	
	TriggerAction( 1, AddNextFlag, 257, 10, 15 )
	RegCurTrigger( 2571 )

-------------------------------------------------�ܴ�
	DefineMission( 293, " �������� ", 258 )

	MisBeginTalk( "<t>��� �� ����� ������,�����? ��������� �� ��������� ������� � ���������� ���������, ������ ��� � ��� ����� �������� <n> <T> ��������� ��������� ������� ��� ������." )
	MisBeginCondition(NoRecord, 258)
	MisBeginCondition(HasRecord, 257)
	MisBeginCondition(NoMission, 258)
	MisBeginAction(AddMission, 258)
	MisBeginAction(GiveItem, 4141, 1, 4)
	MisCancelAction(ClearMission, 258)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������� � ������ (1214, 681)")

	MisHelpTalk("<t>�� ��!�� ��� ������?")
	MisResultCondition(AlwaysFailure )

-----------------------------------�ܴ�
	DefineMission( 294, " �������� ", 258, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��� ������� �����? �� ��������!������ ������ ����� ������� �� ��� � ��������� � ����� ��������. <n> <T> ��� �� ��� ����������� ����� ���������� � ����?")
	MisResultCondition(NoRecord, 258 )
	MisResultCondition(HasMission, 258)
	MisResultCondition(HasItem, 4141, 1)
	MisResultAction(TakeItem, 4141, 1 )
	MisResultAction(ClearMission, 258 )
	MisResultAction(SetRecord, 258 )
	MisResultAction(AddExp,2924,2924)	
	MisResultAction(AddMoney,1711,1711)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------�����ֵ�
	DefineMission( 295, " ������ �� ", 259 )

	MisBeginTalk( "<t>*�����* <n> <T> �� ����� ������ � ����� ��� �� ������� ����� ���� <n> <T> � ����, ��� �������� �����. �� ����� � ������. ��� ����� <b���>, ������� ��� ��� ������ (1320, 585). <n> <T> PS �� ��� ����-�������!" )
	MisBeginCondition(NoRecord, 259)
	MisBeginCondition(HasRecord, 258)
	MisBeginCondition(NoMission, 259)
	MisBeginAction(AddMission, 259)
	MisBeginAction(GiveItem, 4142, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(ClearMission, 259)

	MisNeed(MIS_NEED_DESP, "������� <b����> � ������ (1320, 585)")

	MisHelpTalk("<t>����� �����, ������ � ���,��� �� ���?")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����ֵ�
	DefineMission( 296, " ������ �� ", 259, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� ... ��� ������ �� ����� �����.<n> <T> �� ������ ���� ������.��-��.�  �������, ��� �� �� ���������.")
	MisResultCondition(NoRecord, 259 )
	MisResultCondition(HasMission, 259)
	MisResultCondition(HasItem, 4142, 1)
	MisResultAction(TakeItem, 4142, 1 )
	MisResultAction(ClearMission, 259 )
	MisResultAction(SetRecord, 259 )
	MisResultAction(AddExp,3225,3225)	
	MisResultAction(AddMoney,1742,1742)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------׼���
	DefineMission( 297, " ��������� ���������� ", 260 )

	MisBeginTalk( "<t>���� � ����, ��� ������� �����, � ������ ������������ ���!<n> <T> ��� ����� ����� ������. � �������, ��� �� ���������� ������. <n> <T> ��������� ��� 12 ����� ����-������� , � � ��� ��� ��������������.")
	MisBeginCondition(NoRecord, 260)
	MisBeginCondition(HasRecord, 259)
	MisBeginCondition(NoMission, 260)
	MisBeginAction(AddMission, 260)
	MisBeginAction(AddTrigger, 2601, TE_GETITEM, 4143, 12)		
	MisCancelAction(ClearMission, 260)

	MisNeed(MIS_NEED_DESP, "��������� 12 <y����� ����-�������> � �������� �� ���� (1320, 585)")
	MisNeed(MIS_NEED_ITEM, 4143, 12, 10, 12)

	MisResultTalk("<t>������, � ��� ����������! <n> <T> ���������,� ������ �� ���� ����� ������.� ��� �� ������ �������.")
	MisHelpTalk("<t>���� �� �� ������,�� ����� �� �������.����� ���� � ���� ����� ���������.")
	MisResultCondition(HasMission, 260 )
	MisResultCondition(HasItem, 4143, 12 )
	MisResultAction(TakeItem, 4143, 12 )
	MisResultAction(GiveItem, 4144, 1, 4 )
	MisResultAction(ClearMission, 260 )
	MisResultAction(SetRecord, 260 )
	MisResultAction(AddExp,7110,7110)	
	MisResultAction(AddMoney,3548,3548)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4143 )	
	TriggerAction( 1, AddNextFlag, 260, 10, 12 )
	RegCurTrigger( 2601 )

-------------------------------------------------ף��֮��
	DefineMission( 298, " ������������� ", 261 )

	MisBeginTalk( "<t>��...��� ������ ���� ��� ����,�� ���� ������ ���� ��� �� ���������� ������ <n> <T> ��� ����� �������� ������� ���,� ���������� � <b�������� �����>.����� ����� ��� �� ������������� ����� ������������ ������." )
	MisBeginCondition(NoRecord, 261)
	MisBeginCondition(NoMission, 261)
	MisBeginCondition(HasRecord, 260)
	MisBeginAction(AddMission, 261)
	MisCancelAction(ClearMission, 261)

	MisNeed(MIS_NEED_DESP, "������� ������ ������� ����� (2664, 654)")

	MisHelpTalk("<t>������� ������� �����!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ף��֮��
	DefineMission( 299, " ������������� ", 261, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������� �������,��� �� ����� ������?�-�-�,������!")
	MisResultCondition(NoRecord, 261)
	MisResultCondition(HasMission, 261)
	MisResultAction(ClearMission, 261 )
	MisResultAction(SetRecord, 261 )
	MisResultAction(AddExp,3916,3916)
	MisResultAction(AddMoney,1807,1807)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------��������
	DefineMission( 300, " ���� ���� ", 262 )

	MisBeginTalk( "<t> ������������ ��������� ����� ������� ����� �������������!�� ������ ������ ������� ����� �������� �������������. � �� ������ �� ������ ��� ������ �������. ��������� ������������� �������  (2746, 450) � ��������� ��� �������� ����. ")
	MisBeginCondition(NoRecord, 262)
	MisBeginCondition(HasRecord, 261)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 262)
	MisBeginAction(AddTrigger, 2621, TE_GETITEM, 4145, 1)		
	MisCancelAction(ClearMission, 262)

	MisNeed(MIS_NEED_DESP, "��������� ����� �������� ����  (2664, 654)")
	MisNeed(MIS_NEED_ITEM, 4145, 1, 10, 1)

	MisResultTalk("<t>�� ������� ���!�������� ��� ��������������.")
	MisHelpTalk("<t>���� �� ������������,�� ������������� � ����� ������")
	MisResultCondition(HasMission, 262 )
	MisResultCondition(HasItem, 4144, 1 )
	MisResultCondition(HasItem, 4145, 1 )
	MisResultAction(TakeItem, 4145, 1 )
	MisResultAction(TakeItem, 4144, 1 )
	MisResultAction(GiveItem, 4146, 1 , 4)
	MisResultAction(ClearMission, 262 )
	MisResultAction(SetRecord, 262 )
	MisResultAction(SystemNotice, "\������� �����:����������� � ������ " )
	MisResultAction(ObligeAcceptMission, 7 )
	MisResultAction(AddExp,8620,8620)	
	MisResultAction(AddMoney,3682,3682)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4145 )	
	TriggerAction( 1, AddNextFlag, 262, 10, 1 )
	RegCurTrigger( 2621 )

-----------------------------------���ر���
	DefineMission( 302, " ����������� � ������ ", 7, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>� ����� �� ������� ������������!")
	MisResultCondition(NoRecord, 7 )
	MisResultCondition(HasMission, 7)
	MisResultAction(ClearMission, 7 )
	MisResultAction(SetRecord, 7 )
	MisResultAction(AddExp,5211,5211)	
	MisResultAction(AddMoney,1910,1910)	
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------ǰ��t9
	DefineMission( 303, " ����������� ", 264 )

	MisBeginTalk( "<t>������� ����� ������������ 10 ��� �����. <n> <T> ��� ���� �������� �����,���������� ������ <n> <T> ����� �� ��� ���������� ��� ���� ������������� �  <y����� �����>.  <n> <T> �� ������ ���� ������ � ������� �����.����������  (2042, 635 ),� ���������� ������.����� ��������� ����,�� ��� �������!" )
	MisBeginCondition(NoRecord, 264)
	MisBeginCondition(HasRecord, 7)
	MisBeginCondition(NoMission, 264)
	MisBeginAction(AddMission, 264)
	MisCancelAction(ClearMission, 264)

	MisNeed(MIS_NEED_DESP, "������� ����� ����� � ���������� ������ (2042, 635)")

	MisHelpTalk("<t>����� ��� ������ ��� ����������� ������-������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ǰ��t9
	DefineMission( 304, " ����������� ", 264, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>���? �� ����� ������� �����?! ��-��, �� ������ �� ���.")
	MisResultCondition(NoRecord, 264 )
	MisResultCondition(HasMission, 264)
	MisResultAction(ClearMission, 264 )
	MisResultAction(SetRecord, 264 )
	MisResultAction(AddExp,12572,12572)
	MisResultAction(AddMoney,3966,3966)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------ǰ��t9
	DefineMission( 305, " ��� �� ������? ", 265 )

	MisBeginTalk( "<t>��.������?����� �������� 10 ��� ����� , �� � ������ �� ������ ������ �����. <n> <T> ��� ������� ��� ����� ������� �����,��������� ��� (2362, 657)" )
	MisBeginCondition(NoRecord, 265)
	MisBeginCondition(HasRecord, 264)
	MisBeginCondition(NoMission, 265)
	MisBeginAction(AddMission, 265)
	MisCancelAction(ClearMission, 265)

	MisNeed(MIS_NEED_DESP, "������� ������ ������� (2362, 657)")

	MisHelpTalk("<t>����� ������-������ ������ ��� ������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ǰ��t9
	DefineMission( 306, " ��� �� ������? ", 265, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��� �� ������? � �� ����! ������ �� ����,���� ���,�������� ���� � �����!!!")
	MisResultCondition(NoRecord, 265 )
	MisResultCondition(HasMission, 265)
	MisResultAction(ClearMission, 265 )
	MisResultAction(SetRecord, 265 )
	MisResultAction(AddExp,8292,8292)	
	MisResultAction(AddMoney,2097,2097)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------�����𶯶�
	DefineMission( 307, " ����! ", 266 )

	MisBeginTalk( "<t>����� �� ���� ������������? �� ����� ���� ��� ����� ����������,�� ��������� ��� ���� ��������� ������ <n> <T> ������ 5 ������� ��������,� ����� � ������ ���.")
	MisBeginCondition(NoRecord, 266)
	MisBeginCondition(HasRecord, 265)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 266)
	MisBeginAction(AddTrigger, 2661, TE_KILL, 667, 5)		
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "������ 5 ������� ��������,� ������������� � ������� (2362, 657)")
	MisNeed(MIS_NEED_KILL, 667, 5, 10, 5)

	MisResultTalk("<t>�� ������������ � ����. ����� ������!")
	MisHelpTalk("<t>���? �� �������?")
	MisResultCondition(HasMission, 266 )
	MisResultCondition(HasFlag, 266 , 14)
	MisResultAction(ClearMission, 266 )
	MisResultAction(SetRecord, 266 )
	MisResultAction(AddExp,21776,21776)	
	MisResultAction(AddMoney,4436,4436)	
	MisResultAction(AddExpAndType,2,26625,26625)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 266, 10, 5 )
	RegCurTrigger( 2661 )

-------------------------------------------------�ּ��ܿ�
	DefineMission( 308, " ����� ���� ", 267 )

	MisBeginTalk( "<t>�� ������� ���,� ������ ���. ������ ��� �� ���� ������� ����� �����.��� ����� ��� ���� <n> <T> � ����� ���� �� �������� ������ ������� �� ������� ���." )
	MisBeginCondition(NoRecord, 267)
	MisBeginCondition(HasRecord, 266)
	MisBeginCondition(NoMission, 267)
	MisBeginAction(AddMission, 267)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "������� ����� �� ������� �������� (1672, 3777)")

	MisHelpTalk("<t>���������� �� ����,� ������� �����?")
	MisResultCondition(AlwaysFailure )

-----------------------------------�ּ��ܿ�
	DefineMission( 309, " ����� ���� ", 267, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> ���-���,�� ��� �� ����������� �����.�� ���������� ��� � � ���� ����? <n> <T> � �������, �� �� ���� ������ �� �������?")
	MisResultCondition(NoRecord, 267 )
	MisResultCondition(HasMission, 267)
	MisResultAction(ClearMission, 267 )
	MisResultAction(SetRecord, 267 )
	MisResultAction(AddExp,13026,13026)
	MisResultAction(AddMoney,2303,2303)
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------�Ժ�����
	DefineMission( 310, " � ��������! ", 268 )

	MisBeginTalk( "��....��������� � ������ �����,����� ����� ���������." )
	MisBeginCondition(NoRecord, 268)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 268)
	MisBeginAction(AddMission, 268)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "������� �������� ����� (1672, 3777)")

	MisHelpTalk("������� �������� ����� (1672, 3777)")
	MisResultCondition(AlwaysFailure )


-----------------------------------���վ���
	DefineMission( 311, " ������� ", 4, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>� �� ���� �������� � ���! ��� ������� ����� ��������!")
	MisResultCondition(HasMission, 4 )
	MisResultCondition(NoRecord, 4 )
	MisResultCondition(NoMisssionFailure, 4 )
	MisResultCondition(HasFlag, 4, 10 )
	MisResultAction(ClearMission, 4 )
	MisResultAction(SetRecord, 4 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultAction(ClearTrigger, 108)


-------------------------------------------------�����顱
	DefineMission( 312, " ������������� ", 269 )

	MisBeginTalk( "<t>��� ������ ���? �����? �����? �������? <n> <T> �������� �� ����.� ���� �� ������� 8000 ����� �����������,� � ����� �� ���� ��������� �� �����. ������ �� ���� ��������� ����� <r�������> . ������ �� ��� �� ����� ��?")
	MisBeginCondition(NoRecord, 269)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 269)
	MisBeginCondition(HasMission, 268)
	MisBeginAction(AddMission, 269)
	MisBeginAction(ClearMission, 268 )
	MisBeginAction(SetRecord, 268 )
	MisBeginAction(AddTrigger, 2691, TE_GETITEM, 3790, 1)
	MisBeginAction(AddTrigger, 2692, TE_GETITEM, 3791, 1)
	MisBeginAction(AddTrigger, 2693, TE_GETITEM, 3792, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_ITEM, 3790, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3791, 1, 11, 1)
	MisNeed(MIS_NEED_ITEM, 3792, 1, 12, 1)
	MisNeed(MIS_NEED_DESP, "��������� ����� ������� ��� �����������..")


	MisResultTalk("<t>������� ����������� ���� �������? <n> <T> ���������! ������ �� ����� �� ��� �����?")
	MisHelpTalk("<t>��� ��� ��� ����? ")
	MisResultCondition(HasMission, 269 )
	MisResultCondition(HasItem, 3790 , 1)
	MisResultCondition(HasItem, 3791 , 1)
	MisResultCondition(HasItem, 3792 , 1)
	MisResultAction(TakeItem, 3790, 1 )
	MisResultAction(TakeItem, 3791, 1 )
	MisResultAction(TakeItem, 3792, 1 )
	MisResultAction(ClearMission, 269 )
	MisResultAction(SetRecord, 269 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3790 )
	TriggerAction( 1, AddNextFlag, 269, 10, 1 )
	RegCurTrigger( 2691 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3791 )
	TriggerAction( 1, AddNextFlag, 269, 11, 1 )
	RegCurTrigger( 2692 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3792)
	TriggerAction( 1, AddNextFlag, 269, 12, 1 )
	RegCurTrigger( 2693 )

-------------------------------------------------³�°�������
	DefineMission( 313, " ������� ������ ", 270 )

	MisBeginTalk( "<t> ��� �� ������,������ ������� ���� ��� �� ������ <n> <T> ����� ������ ����,�� ��������� ��� ���� ����� �����,����� ��� ������� � ���� �� �� �������.")
	MisBeginCondition(NoRecord, 270)
	MisBeginCondition(HasRecord, 269)
	MisBeginCondition(NoMission, 270)
	MisBeginAction(AddMission, 270)
	MisBeginAction(AddTrigger, 2701, TE_GETITEM, 4219, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "����� ������� ������")
	MisNeed(MIS_NEED_ITEM, 4219, 1, 10, 1)

	MisResultTalk("<t>��, ��� <r������� ������>")
	MisHelpTalk("<t>�� ����� �������? ��������� ������ �� ����������!")
	MisResultCondition(HasMission, 270 )
	MisResultCondition(HasItem, 4219 , 1)
	MisResultAction(TakeItem, 4219, 1 )
	MisResultAction(GiveItem, 4220, 1, 4 )
	MisResultAction(ClearMission, 270 )
	MisResultAction(SetRecord, 270 )
	MisResultAction(AddExp,30000,30000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	MisResultAction(GiveItem,1815,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4219 )
	TriggerAction( 1, AddNextFlag, 270, 10, 1 )
	RegCurTrigger( 2701 )


-----------------------------------����֮Ѫ1
	DefineMission( 314, " ������ ", 8, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��. ����� ��� ������� ���������� � ������. <n> <T> ������� ���� (1346, 451).�� ���� ��� ��������� �������. ")
	MisResultCondition(NoRecord, 8 )
	MisResultCondition(HasMission, 8)
	MisResultAction(ClearMission, 8 )
	MisResultAction(SetRecord, 8 )
	MisResultAction(ObligeAcceptMission, 11 )

-----------------------------------����֮��1
	DefineMission( 315, " ���� " , 9, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��. ����� ��� ������� ���������� � ������. <n> <T> ������� �������� �������� (2277, 2831).�� ���� ��� ��������� �������.")
	MisResultCondition(NoRecord, 9 )
	MisResultCondition(HasMission, 9)
	MisResultAction(ClearMission, 9)
	MisResultAction(SetRecord, 9 )
	MisResultAction(ObligeAcceptMission, 12 )

-----------------------------------����֮��1
	DefineMission( 316, " ����������� ", 10, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��. ����� ��� ������� ���������� � ������. <n> <T> ������� ��������� ��������� (2219, 2749).�� ���� ��� ��������� �������. ")
	MisResultCondition(NoRecord, 10 )
	MisResultCondition(HasMission, 10)
	MisResultAction(ClearMission, 10)
	MisResultAction(SetRecord, 10 )
	MisResultAction(ObligeAcceptMission, 13 )

-------------------------------------------------����֮Ѫ2
	DefineMission( 317, " ������ ", 271 )

	MisBeginTalk( "<t>����� ������? ��� ���� �����... . <n> <T> ������ 30 ������� �������� (2389, 575).� � ��� ��� ����.")
	MisBeginCondition(NoRecord, 271)
	MisBeginCondition(NoMission, 271)
	MisBeginCondition(HasMission, 11)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 11)
	MisBeginAction(SetRecord, 11)
	MisBeginAction(AddMission, 271)
	MisBeginAction(AddTrigger, 2711, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 30 <y������� ���������> � ������������� � ���� (1346, 451)")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>� �� ����������!")
	MisHelpTalk("<t>��� �����?������� ������� ������� ��� ��� ����� ��������?")
	MisResultCondition(HasMission, 271 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasFlag, 271, 39)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 271 )
	MisResultAction(SetRecord, 271 )
	MisResultAction(AddExp,50000,50000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 271, 10, 30 )
	RegCurTrigger( 2711 )

-------------------------------------------------����֮��2
	DefineMission( 318, " ���� ", 272 )

	MisBeginTalk( "<t���� �����? � �� ������ �� ���� ��� ���! <n> <T> ���� �� ������� ���� ����� � ������� <r2 ��������>, � ��� �� ��� ������!")
	MisBeginCondition(NoRecord, 272)
	MisBeginCondition(NoMission, 272)
	MisBeginCondition(HasMission, 12)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 12)
	MisBeginAction(SetRecord, 12)
	MisBeginAction(AddMission, 272)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� <r2000000�����> �������� �������� (2277, 2831)")

	MisResultTalk("<t>�������.�������� ����.")
	MisHelpTalk("<t>�� ��� �� �������� 2 ��������?")
	MisResultCondition(HasMission, 272 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasMoney, 2000000 )
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 272 )
	MisResultAction(SetRecord, 272 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

-------------------------------------------------����֮��3
	DefineMission( 319, " ����������� ", 273 )

	MisBeginTalk( "<t>�����������? ������ ������? <n> <T> ��������� ��� ���������� �� ����...��..����� ��� ����� ��������� �� ������� ��������� <p(77,3971)>")
	MisBeginCondition(NoRecord, 273)
	MisBeginCondition(NoMission, 273)
	MisBeginCondition(HasMission, 13)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 13)
	MisBeginAction(SetRecord, 13)
	MisBeginAction(AddMission, 273)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� �� ����������� � �������� (77, 3971)> ����� ����������� ������� ������ � ������������� � ������ � ���������.")

	MisResultTalk("<t>��� ������ ������ ��������� ��� �������?������ �� �����������,��������� ����.")
	MisHelpTalk("<t>��� ���� ��������� �� �������� ������� (77, 3971).")
	MisResultCondition(HasMission, 273 )
	MisResultCondition(HasMission, 14 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 273 )
	MisResultAction(SetRecord, 14 )
	MisResultAction(ClearMission, 14 )
	MisResultAction(SetRecord, 273 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultBagNeed(1)

-------------------------------------------------³�°�������
	DefineMission( 320, " ���� ������ ", 274 )

	MisBeginTalk( "<t>��... ��������� �������. ��������� ��� ��������� ... � ���������, �� �� ����� ������ ��� �� ������ ������! <n> <T> �������� ����� ��������, ��� �������� �������� ������� ������� ��������.")
	MisBeginCondition(NoRecord, 274)
	MisBeginCondition(NoMission, 274)
	MisBeginCondition(HasMission, 15)
	MisBeginCondition(HasItem, 4222, 1)
	MisBeginAction(AddMission, 274)
	MisBeginAction(ClearMission, 15)
	MisBeginAction(SetRecord, 15)
	MisBeginAction(AddTrigger, 2741, TE_GETITEM, 4223, 1)
	MisBeginAction(AddTrigger, 2742, TE_GETITEM, 4224, 1)
	MisBeginAction(AddTrigger, 2743, TE_GETITEM, 4225, 1)
	MisBeginAction(AddTrigger, 2744, TE_GETITEM, 4226, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "��������� ������� ������� ������� ��������.")
	MisNeed(MIS_NEED_ITEM, 4223, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4224, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 4225, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 4226, 1, 40, 1)

	MisResultTalk("<t>�� ��������� �������? ��������� ��� ���������, �� ��������� �� ���.��...")
	MisHelpTalk("<t>�� �������� ����, ���� � ���� ���� �������!")
	MisResultCondition(HasMission, 274 )
	MisResultCondition(HasItem, 4223 , 1)
	MisResultCondition(HasItem, 4224 , 1)
	MisResultCondition(HasItem, 4225 , 1)
	MisResultCondition(HasItem, 4226 , 1)
	MisResultCondition(HasItem, 4222 , 1)
	MisResultAction(TakeItem, 4222, 1 )
	MisResultAction(TakeItem, 4223, 1 )
	MisResultAction(TakeItem, 4224, 1 )
	MisResultAction(TakeItem, 4225, 1 )
	MisResultAction(TakeItem, 4226, 1 )
	MisResultAction(GiveItem, 4227, 1, 4 )
	MisResultAction(ClearMission, 274 )
	MisResultAction(SetRecord, 274 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4223 )
	TriggerAction( 1, AddNextFlag, 274, 10, 1 )
	RegCurTrigger( 2741 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4224 )
	TriggerAction( 1, AddNextFlag, 274, 20, 1 )
	RegCurTrigger( 2742 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4225 )
	TriggerAction( 1, AddNextFlag, 274, 30, 1 )
	RegCurTrigger( 2743 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4226 )
	TriggerAction( 1, AddNextFlag, 274, 40, 1 )
	RegCurTrigger( 2744 )

-------------------------------------------------����������
	DefineMission( 321, " ���� �� ������� ", 275 )

	MisBeginTalk( "<t>������� ����, ���� �� ����� �����, ��� ��������������� � ����� ��������. �� �� ������������ ����� �� ������-�������� �����.")
	MisBeginCondition(NoRecord, 275)
	MisBeginCondition(NoRecord, 276)
	MisBeginCondition(NoMission, 275)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasNavyGuild)
	MisBeginAction(AddMission, 275)
	MisBeginAction(AddTrigger, 2751, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���� �� 30  <y������� ��������> � ������������ � <b���\> ")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>�� �������� ���� ��������!��� �������.")
	MisHelpTalk("<t>������ �� ��� ��� �����?")
	MisResultCondition(HasMission, 275 )
	MisResultCondition(HasFlag, 275, 39)
	MisResultAction(GiveItem, 4223, 1, 4 )
	MisResultAction(ClearMission, 275 )
	MisResultAction(SetRecord, 275 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 275, 10, 30 )
	RegCurTrigger( 2751 )

-----------------------------------�Ҳ��Ǻ���
	DefineMission( 322, " � �� ��������! ", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� ������ ��� �������? ������ ���� �� �� �� ������-�������� �����!")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 275 )
	MisResultCondition(NoFlag, 274, 1 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoNavyGuild)
	MisResultAction(GiveItem, 4223, 1, 4)
	MisResultAction(SetFlag, 274, 1 )
	MisResultBagNeed(1)

-------------------------------------------------�����ϵ
	DefineMission( 323, " ����� ", 277 )

	MisBeginTalk( "<t>�� ������, ��� �������?����� ��� �������� ����� ������ �������!")
	MisBeginCondition(NoRecord, 277)
	MisBeginCondition(NoRecord, 278 )
	MisBeginCondition(NoMission, 277)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasPirateGuild)
	MisBeginAction(AddMission, 277)
	MisBeginAction(AddTrigger, 2771, TE_KILL, 145, 10)
	MisBeginAction(AddTrigger, 2772, TE_KILL, 146, 10)
	MisBeginAction(AddTrigger, 2773, TE_KILL, 291, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "������ ������� ����� � ��������� � ���������.")
	MisNeed(MIS_NEED_KILL, 145, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 146, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 291, 10, 30, 10)

	MisResultTalk("<t>������.� ���� �� ������ ����� ��������.��� ��� ������� ")
	MisHelpTalk("<t>���������� ������������...")
	MisResultCondition(HasMission, 277 )
	MisResultCondition(HasFlag, 277, 19)
	MisResultCondition(HasFlag, 277, 29)
	MisResultCondition(HasFlag, 277, 39)
	MisResultAction(GiveItem, 4224, 1, 4 )
	MisResultAction(ClearMission, 277 )
	MisResultAction(SetRecord, 277 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 277, 10, 10 )
	RegCurTrigger( 2771 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 277, 20, 10 )
	RegCurTrigger( 2772 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 277, 30, 10 )
	RegCurTrigger( 2773 )

-----------------------------------�Ҳ��Ǻ���
	DefineMission( 324, " � �� �����! ", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� ������ ���� �������?���������! ")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 277 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoFlag, 274, 2 )
	MisResultCondition(NoPirateGuild)
	MisResultAction(GiveItem, 4224, 1, 4)
	MisResultAction(SetFlag, 274, 2 )
	MisResultBagNeed(1)

-------------------------------------------------�¶���սʿ
	DefineMission( 325, " ����������� ", 279 )

	MisBeginTalk( "<t>������ �������� ����������, �� ������ ���� ������� � ����� ���������� �� ������� ����������!�� �������� ��� ������� ���� �������� ���� ���������.")
	MisBeginCondition(NoRecord, 279)
	MisBeginCondition(NoRecord, 280 )
	MisBeginCondition(NoMission, 279)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(NoGuild)
	MisBeginAction(AddMission, 279)
	MisBeginAction(AddTrigger, 2791, TE_KILL, 145, 5)
	MisBeginAction(AddTrigger, 2792, TE_KILL, 146, 5)
	MisBeginAction(AddTrigger, 2793, TE_KILL, 291, 5)
	MisBeginAction(AddTrigger, 2794, TE_KILL, 667, 5)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������:������ ������ ����� 5 �� ,����� ������ ����� 5 ��,�������� ������ ����� 5 ��")
	MisNeed(MIS_NEED_KILL, 145, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 146, 5, 20, 5)
	MisNeed(MIS_NEED_KILL, 291, 5, 30, 5)
	MisNeed(MIS_NEED_KILL, 667, 5, 40, 5)

	MisResultTalk("<t>��� ��� �� ��������� ��� �������, � ��� ��� �������.")
	MisHelpTalk("<t>����� , ��� ��� ���������!")
	MisResultCondition(HasMission, 279 )
	MisResultCondition(HasFlag, 279, 14)
	MisResultCondition(HasFlag, 279, 24)
	MisResultCondition(HasFlag, 279, 34)
	MisResultCondition(HasFlag, 279, 44)
	MisResultAction(GiveItem, 4225, 1, 4 )
	MisResultAction(ClearMission, 279 )
	MisResultAction(SetRecord, 279 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 279, 10, 5 )
	RegCurTrigger( 2791 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 279, 20, 5 )
	RegCurTrigger( 2792 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 279, 30, 5 )
	RegCurTrigger( 2793 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 279, 40, 5 )
	RegCurTrigger( 2794 )

-----------------------------------ǿ��ĺ��
	DefineMission( 326, " ���� ", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��������� ��� ������������ �������,� ��� ��� �������!")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 279 )
	MisResultCondition(NoFlag, 274, 3 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(HasGuild)
	MisResultAction(GiveItem, 4225, 1, 4)
	MisResultAction(SetFlag, 274, 3 )
	MisResultBagNeed(1)

-------------------------------------------------ϴˢ���
	DefineMission( 327, " ��������� ", 281 )

	MisBeginTalk( "<t>���������� �� ������ �����. ����� ��� ����� �������, � ��� ��� �������.")
	MisBeginCondition(NoRecord, 281)
	MisBeginCondition(NoMission, 281)
	MisBeginCondition(HasMission, 274)
	MisBeginAction(AddMission, 281)
	MisBeginAction(AddTrigger, 2811, TE_KILL, 620, 30)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "������ �������-�������� � �������� ������� (898, 3640).")
	MisNeed(MIS_NEED_KILL, 620, 30, 10, 30)

	MisResultTalk("<t>������ ����������� ��� ")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 281 )
	MisResultCondition(HasFlag, 281, 39)
	MisResultAction(GiveItem, 4226, 1, 4 )
	MisResultAction(ClearMission, 281 )
	MisResultAction(SetRecord, 281 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3885,1,4)
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 620 )
	TriggerAction( 1, AddNextFlag, 281, 10, 30 )
	RegCurTrigger( 2811 )

-----------------------------------³�°�������
	DefineMission( 328, " ����� ", 16, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> ����� �� ���������? ��� ������ ������ �� ������ ���! �������� �� � �����! <n> <T> ���?�� �������� ������?������ ������� ������� �������� ������ ��� ���������!����� ���������!")
	MisResultCondition(NoRecord, 16 )
	MisResultCondition(HasMission, 16)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 16)
	MisResultAction(SetRecord, 16 )

----------------------------���������
	DefineMission( 329, " ����� ", 282 )
	
	MisBeginTalk( "<t>��-��.������ ������ ��� ������������. <n> <T> ����� ��� ���� ����� ���������� � ������� �������� (2193, 2730)" )
	MisBeginCondition(NoRecord, 282)
	MisBeginCondition(HasRecord, 16)
	MisBeginCondition(NoMission, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 282)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")
		
	MisNeed(MIS_NEED_DESP, "����� ������ ������� (2193, 2730)")
	
	MisHelpTalk("<t>����� ������ ������� (2193, 2730)")
	MisResultCondition(AlwaysFailure )

-----------------------------------���������
	DefineMission( 330, " ����� ", 282, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��������� ��� ����������.����,������ ���������� ���������. � ������� ����, ��� ���� ����, ������� �����, ��� ������� ��������� �������.")
	MisResultCondition(NoRecord, 282 )
	MisResultCondition(HasMission, 282)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 282)
	MisResultAction(SetRecord, 282 )

----------------------------�ܿ˽���
	DefineMission( 331, " ����������� ����� ", 283 )
	
	MisBeginTalk( "<t>���?�� ������� ����?�-��� ��� �� � ���� ������ �� ����!������� �������� �� ����.� �� ���� ��� ������!" )
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 283)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")
		
	MisNeed(MIS_NEED_DESP, "������� �� ����������� (1672,3777) � ���������� ����� ")
	
	MisHelpTalk("<t>������ �� ��� ��� �����?")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------�ƹݴ���
	DefineMission( 332, " ����� ", 284 )

	MisBeginTalk( "<t>��� ��� �� ������� � ����?<n> <T> �������� �� ����!�����.�� ��� � ��� ��� ������� ������ �����������. �� ������ ����� ��� �����������. <n> <T>  3 <r������ ��������>, 5 <r������ ����������� ������>, 7 <r������� ������ �����> � 9 <r������� ������� ���������� ��������>.")
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 284)
	MisBeginAction(AddTrigger, 2841, TE_GETITEM, 1255, 3)
	MisBeginAction(AddTrigger, 2842, TE_GETITEM, 1291, 5)
	MisBeginAction(AddTrigger, 2843, TE_GETITEM, 1365, 7)
	MisBeginAction(AddTrigger, 2844, TE_GETITEM, 1292, 9)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "�������� ����������� ")
	MisNeed(MIS_NEED_ITEM, 1255, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 1291, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 1365, 7, 30, 7)
	MisNeed(MIS_NEED_ITEM, 1292, 9, 40, 9)

	MisResultTalk("<t>�����. � ������� ��� �������,��� �������� ���������� ���������. H���-��� ��. �� ������ ����, ���� ��� ������ �� ���..")
	MisHelpTalk("<t>�� �� ����� �����������!")
	MisResultCondition(HasMission, 284 )
	MisResultCondition(HasItem, 1255, 3)
	MisResultCondition(HasItem, 1291, 5)
	MisResultCondition(HasItem, 1365, 7)
	MisResultCondition(HasItem, 1292, 9)
	MisResultAction(TakeItem, 1255, 3)
	MisResultAction(TakeItem, 1291, 5)
	MisResultAction(TakeItem, 1365, 7)
	MisResultAction(TakeItem, 1292, 9)
	MisResultAction(GiveItem, 4228, 1, 4)
	MisResultAction(SetRecord, 284 )
	MisResultAction(ClearMission, 284 )
	MisResultBagNeed(1)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1255 )
	TriggerAction( 1, AddNextFlag, 284, 10, 3 )
	RegCurTrigger( 2841 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1291 )
	TriggerAction( 1, AddNextFlag, 284, 20, 5 )
	RegCurTrigger( 2842 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1365 )
	TriggerAction( 1, AddNextFlag, 284, 30, 7 )
	RegCurTrigger( 2843 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1292 )
	TriggerAction( 1, AddNextFlag, 284, 40, 9 )
	RegCurTrigger( 2844 )

----------------------------�������
	DefineMission( 333, " ���������� ������ ", 285 )
	
	MisBeginTalk( "<t>� ���� ��� (���)! �� ������ �������� ��������������� ��� ��������������!� �� ������ ��� �� ��������� ��� ���! <n> <T>����� ��� ������� ����� �������� ����� (2224, 2887)!��� ������ ��� ������." )
	MisBeginCondition(NoRecord, 285)
	MisBeginCondition(HasMission, 283)
	MisBeginCondition(NoMission, 285)
	MisBeginAction(AddMission, 285)
	MisBeginAction(SetRecord, 283)
	MisBeginAction(ClearMission, 283)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� �������� ����� (2224, 2887)")
	
	MisHelpTalk("<t>�� ������������� !")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------�������
	DefineMission( 334, " ���������� ������ ", 286 )

	MisBeginTalk( "<t>���? ��������� ������� ��� ��� ��������� �� �����?��� ����������� ��-�� ����. <n> <T> ��� ��� ��� ����. ��������� ��� ������� �� ���������!� ������� ��� ������� �������� ������������ �� ������.��������� ��� ������ �������� ������ �����.")
	MisBeginCondition(NoRecord, 286)
	MisBeginCondition(NoMission, 286)
	MisBeginCondition(HasRecord, 283)
	MisBeginCondition(HasMission, 285)
	MisBeginAction(AddMission, 286)
	MisBeginAction(AddTrigger, 2861, TE_GETITEM, 4735, 1)
	MisBeginAction(SetRecord, 285)
	MisBeginAction(ClearMission, 285)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ����� ������ �������� ������ ����� (2224, 2887)")
	MisNeed(MIS_NEED_ITEM, 4735, 1, 10, 1)

	MisResultTalk("<t>��-��!������ �������� ���������� ������������ ��� ������������! � �������, ��� ������� ����� �����.����� ��� ������� �� ���� ������ ������� ����..")
	MisHelpTalk("<t>�� ��� � �� ������ ���������� ������ �����?")
	MisResultCondition(HasMission, 286 )
	MisResultCondition(HasItem, 4735, 1)
	MisResultAction(TakeItem, 4735, 1)
	MisResultAction(GiveItem, 4229, 1, 4)
	MisResultAction(SetRecord, 286 )
	MisResultAction(ClearMission, 286 )
	MisResultAction(ObligeAcceptMission, 17 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4735 )
	TriggerAction( 1, AddNextFlag, 286, 10, 1 )
	RegCurTrigger( 2861 )

-----------------------------------�������
	DefineMission( 335, " ���������� ������ ", 17, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��� �����, ��� �� �������?��� �� ������ ����� � ������� �����! ������ �� �� ���� ��� ��?")
	MisResultCondition(NoRecord, 17 )
	MisResultCondition(HasMission, 17 )
	MisResultCondition(HasItem, 4229, 1)
	MisResultAction(TakeItem, 4229, 1 )
	MisResultAction(SetRecord, 17 )
	MisResultAction(ClearMission, 17 )
	MisResultAction(GiveItem, 4228, 1, 4 )
	MisResultBagNeed(1)

-------------------------------------------------��������
	DefineMission( 336, " ���� ������� ", 287 )

	MisBeginTalk( "<t>�-�-� �� ����� ������� ����? ����� �� ����� � ��� ������� , �� ���� �� ����������� � ����� ��� �� ����. �� �������, �������� ������� �������� ���������.�������� �������, ���� ������� ����� �� ������,�� �� ������ �� ����� ���������!")
	MisBeginCondition(NoRecord, 287)
	MisBeginCondition(NoRecord, 18)
	MisBeginCondition(HasMission, 18)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(TakeItem, 4227, 1)
	MisBeginAction(AddMission, 287)
	MisBeginAction(AddTrigger, 2871, TE_GETITEM, 4230, 1)
	MisBeginAction(SetRecord, 18)
	MisBeginAction(ClearMission, 18)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ �������� �������  (2822, 1970) � �������� <r���� �������>.")
	MisNeed(MIS_NEED_ITEM, 4230, 1, 10, 1)

	MisResultTalk("<t>� ����,��� �� ����������!")
	MisHelpTalk("<t>�� ��� �� ����� �������� �������?����� ����� � �������!")
	MisResultCondition(HasMission, 287 )
	MisResultCondition(HasItem, 4230, 1)
	MisResultAction(SetRecord, 287 )
	MisResultAction(ClearMission, 287 )
	MisResultAction(ObligeAcceptMission, 19 )
	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3463,10,4)
	MisResultAction(GiveItem,1092,10,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4230 )
	TriggerAction( 1, AddNextFlag, 287, 10, 1 )
	RegCurTrigger( 2871 )

-----------------------------------�Ե��ռ�
	DefineMission( 337, " ����������� ������� ", 20, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��! ������ �� ����� ���?  � ���������  � �� ���� ���������� ��� ������� ��������.  <n> <T> �������, ������ ������������� ������ ������ ��� �������.")
	MisResultCondition(NoRecord, 20 )
	MisResultCondition(HasMission, 20 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 20 )
	MisResultAction(ClearMission, 20 )
	
----------------------------Ů���׷����
	DefineMission( 338, " ������������� ������ ", 288 )
	
	MisBeginTalk( "<t>�� ���� �������������� ������, �������� ���������� ��������� �������!" )
	MisBeginCondition(NoRecord, 288)
	MisBeginCondition(HasRecord, 20)
	MisBeginCondition(NoMission, 288)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 288)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� <b��������>� ������ �� ����������� (898, 3640)")
	
	MisHelpTalk("<t>� �������, ��� ��� ������ ��� ��� ,��� �� ������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ů���׷����
	DefineMission( 339, " ������������� ������ ", 288, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������ ������� �� ���� ���� �������!�� ��� ������ �������! <n> <T> � �������, ��� ������ <b����� ���> �� ����������� (862, 3303), ����� �� ����� ��������� ����� ���������� ����������!")
	MisResultCondition(NoRecord, 288)
	MisResultCondition(HasMission, 288 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 288 )
	MisResultAction(ClearMission, 288 )

----------------------------ʥŮ
	DefineMission( 340, " ������ ����� ", 289 )
	
	MisBeginTalk( "<t>� ������ ������������ ��� �� ����������� � ����� ������� <b����� ���> " )
	MisBeginCondition(NoRecord, 289)
	MisBeginCondition(HasRecord, 288)
	MisBeginCondition(NoMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 289)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� ����� ��� (862,3303)")
	
	MisHelpTalk("<t>� ������ ��� ���! �� ����� ���!")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------�ϵ�֤��
	DefineMission( 341, " ����� ", 290 )

	MisBeginTalk( "<t>������� ������������ ��� ������������, ��������� � ������ ������ ����. <n> <T> . � ���� ��������� ���������� ��� ���, �� �� ������ �������� ���� ���������� � ������. <n> <T> ��� �������� �������������, ��� ����� ���������� �  <b��������> �� �����������(862, 3500), �� �� �� ����� ��� ������.")
	MisBeginCondition(NoRecord, 290)
	MisBeginCondition(HasMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 290)
	MisBeginAction(AddTrigger, 2901, TE_GETITEM, 3954, 1)
	MisBeginAction(SetRecord, 289)
	MisBeginAction(ClearMission, 289)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ������� (862, 3500)")
	MisNeed(MIS_NEED_ITEM, 3954, 1, 15, 1)

	MisResultTalk("<t>� ��������� ���� ����������!.")
	MisHelpTalk("<t>�� �� ��� ��� ������������ � ����?")
	MisResultCondition(HasMission, 290 )
	MisResultCondition(HasItem, 3954, 1)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(TakeItem, 4231, 1)
	MisResultAction(TakeItem, 3954, 1)
	MisResultAction(GiveItem, 4232, 1, 4)
	MisResultAction(SetRecord, 290 )
	MisResultAction(ClearMission, 290 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3954 )
	TriggerAction( 1, AddNextFlag, 290, 15, 1 )
	RegCurTrigger( 2901 )


-----------------------------------�ϵ�֤��
	DefineMission( 342, " ����� ", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���� ����������� �������, ��� ���������� ���� ���������� � ������. �������������� ���� ��������� ������ ��������� � �������� ��������������!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 5)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------�ϵ�֤��
	DefineMission( 343, " ����� ", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���� ����������� �������, ��� ���������� ���� ���������� � ������. �������������� ���� ��������� ������ ��������� � �������� ��������������!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 13)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------�ϵ�֤��
	DefineMission( 344, " ����� ", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���� ����������� �������, ��� ���������� ���� ���������� � ������. �������������� ���� ��������� ������ ��������� � �������� ��������������!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------�ϵ�֤��
	DefineMission( 345, " ����� ", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���������� �� ����, ����� �� �����, �� ���� ������, � ��� ������� ������� ���, ��� �� � �������� ����� ������� ��.������ ��������� ��� ��� 10 ������. <n> <T> ������� �� ���, ����� �� ������ ������!�� ���������� ���� ����� ��� �� �����...")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoFlag, 290, 1)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetFlag, 290, 1 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 346, " ���� ������ ", 291 )

	MisBeginTalk( "<t>�� ������? �� ���������� ������ ������ ����! �� ������, ��������� �� ������  ������ ���� <y�����> �� ����������� (440, 1440). ")
	MisBeginCondition(NoRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginCondition(HasFlag, 290, 1)
	MisBeginAction(AddMission, 291)
	MisBeginAction(AddTrigger, 2911, TE_KILL, 42, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������ ���� ")
	MisNeed(MIS_NEED_KILL, 42, 10, 10, 10)

	MisResultTalk("<t>�������!�� ������ ������ ���� ������!")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 291 )
	MisResultCondition(HasFlag, 291, 19)
	MisResultAction(SetRecord, 291 )
	MisResultAction(ClearMission, 291 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )
	TriggerAction( 1, AddNextFlag, 291, 10, 10 )
	RegCurTrigger( 2911 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 347, " ���� ������ ", 292 )

	MisBeginTalk( "<t>����� ��� ���� ����� ������������ ���� 10�� ( 511,1721)")
	MisBeginCondition(NoRecord, 292)
	MisBeginCondition(HasRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 292)
	MisBeginAction(AddTrigger, 2921, TE_KILL, 267, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������ ���� ")
	MisNeed(MIS_NEED_KILL, 267, 10, 10, 10)

	MisResultTalk("<t>�������!�� ������ ������ ���� ������!")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 292 )
	MisResultCondition(HasFlag, 292, 19)
	MisResultAction(SetRecord, 292 )
	MisResultAction(ClearMission, 292 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 267 )
	TriggerAction( 1, AddNextFlag, 292, 10, 10 )
	RegCurTrigger( 2921 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 348, " ���� ������ ", 293 )

	MisBeginTalk( "<t>T����� ��� ���� ����������������� ������-������ 10�� (919,1581)")
	MisBeginCondition(NoRecord, 293)
	MisBeginCondition(HasRecord, 292)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 293)
	MisBeginAction(AddTrigger, 2931, TE_KILL, 541, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������ ���� ")
	MisNeed(MIS_NEED_KILL, 541, 10, 10, 10)

	MisResultTalk("<t>�����������!�� ������ ������ ���� ������!.")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 293 )
	MisResultCondition(HasFlag, 293, 19)
	MisResultAction(SetRecord, 293 )
	MisResultAction(ClearMission, 293 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )
	TriggerAction( 1, AddNextFlag, 293, 10, 10 )
	RegCurTrigger( 2931 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 349, " ���� ������ ", 294 )

	MisBeginTalk( "<t>��� ����� ����������������� ��������-������ 10�� (360,1440).")
	MisBeginCondition(NoRecord, 294)
	MisBeginCondition(HasRecord, 293)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 294)
	MisBeginAction(AddTrigger, 2941, TE_KILL, 565, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ��������� ���� ")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)

	MisResultTalk("<t>�����������!�� ������ ��������� ���� ������!")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 294 )
	MisResultCondition(HasFlag, 294, 19)
	MisResultAction(SetRecord, 294 )
	MisResultAction(ClearMission, 294 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )
	TriggerAction( 1, AddNextFlag, 294, 10, 10 )
	RegCurTrigger( 2941 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 350, " ���� ������ ", 295 )

	MisBeginTalk( "<t>��� ����� ����� ��������� ���� 10�� (360,1440)")
	MisBeginCondition(NoRecord, 295)
	MisBeginCondition(HasRecord, 294)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 295)
	MisBeginAction(AddTrigger, 2951, TE_KILL, 52, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ����� ���� ")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisResultTalk("<t>�����������!�� ������ ����� ���� ������!")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 295 )
	MisResultCondition(HasFlag, 295, 19)
	MisResultAction(SetRecord, 295 )
	MisResultAction(ClearMission, 295 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )
	TriggerAction( 1, AddNextFlag, 295, 10, 10 )
	RegCurTrigger( 2951 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 351, " ���� ������ ", 296 )

	MisBeginTalk( "<t>��� ����� ����� ����������� ������� 10 �� (360,1340).")
	MisBeginCondition(NoRecord, 296)
	MisBeginCondition(HasRecord, 295)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 296)
	MisBeginAction(AddTrigger, 2961, TE_KILL, 666, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������ ���� ")
	MisNeed(MIS_NEED_KILL, 666, 10, 10, 10)

	MisResultTalk("<t>�����������!�� ������ ������ ���� ������!")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 296 )
	MisResultCondition(HasFlag, 296, 19)
	MisResultAction(SetRecord, 296 )
	MisResultAction(ClearMission, 296 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )
	TriggerAction( 1, AddNextFlag, 296, 10, 10 )
	RegCurTrigger( 2961 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 352, " ���� ������ ", 297 )

	MisBeginTalk( "<t>��� ����� ����� ��������� ��������� ���� 10�� (360,1340).")
	MisBeginCondition(NoRecord, 297)
	MisBeginCondition(HasRecord, 296)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 297)
	MisBeginAction(AddTrigger, 2971, TE_KILL, 508, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������� ���� ")
	MisNeed(MIS_NEED_KILL, 508, 10, 10, 10)

	MisResultTalk("<t>�����������!�� ������ ������� ���� ������!")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 297 )
	MisResultCondition(HasFlag, 297, 19)
	MisResultAction(SetRecord, 297 )
	MisResultAction(ClearMission, 297 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 508 )
	TriggerAction( 1, AddNextFlag, 297, 10, 10 )
	RegCurTrigger( 2971 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 353, " ���� ������ ", 298 )

	MisBeginTalk( "<t>��� ����� ����� ������� ������ ����� 10�� ( 579,2962).")
	MisBeginCondition(NoRecord, 298)
	MisBeginCondition(HasRecord, 297)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 298)
	MisBeginAction(AddTrigger, 2981, TE_KILL, 518, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������� ���� ")
	MisNeed(MIS_NEED_KILL, 518, 10, 10, 10)

	MisResultTalk("<t>�����������!�� ������ ������� ���� ������!")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 298 )
	MisResultCondition(HasFlag, 298, 19)
	MisResultAction(SetRecord, 298 )
	MisResultAction(ClearMission, 298 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 518 )
	TriggerAction( 1, AddNextFlag, 298, 10, 10 )
	RegCurTrigger( 2981 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 354, " ���� ������ ", 299 )

	MisBeginTalk( "<t>��� ����� ����� �������� ��� 10�� (662,2460)")
	MisBeginCondition(NoRecord, 299)
	MisBeginCondition(HasRecord, 298)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 299)
	MisBeginAction(AddTrigger, 2991, TE_KILL, 547, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������� ���� ")
	MisNeed(MIS_NEED_KILL, 547, 10, 10, 10)

	MisResultTalk("<t>�����������!�� ������ ������� ���� ������!")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 299 )
	MisResultCondition(HasFlag, 299, 19)
	MisResultAction(SetRecord, 299 )
	MisResultAction(ClearMission, 299 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 547 )
	TriggerAction( 1, AddNextFlag, 299, 10, 10 )
	RegCurTrigger( 2991 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 355, " ���� ������ ", 300 )

	MisBeginTalk( "<t>��� ����� ����� ������ �������!")
	MisBeginCondition(NoRecord, 300)
	MisBeginCondition(HasRecord, 299)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 300)
	MisBeginAction(AddTrigger, 3001, TE_KILL, 190, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ����")
	MisNeed(MIS_NEED_KILL, 190, 1, 10, 1)

	MisResultTalk("<t>�����������!�� ������ ������� ���� ������!")
	MisHelpTalk("<t>������ � ����!")
	MisResultCondition(HasMission, 300 )
	MisResultCondition(HasFlag, 300, 10)
	MisResultAction(SetRecord, 300 )
	MisResultAction(ClearMission, 300 )
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultAction(AddExp,350000,350000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3844,15,4)
	MisResultBagNeed(2)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 190 )
	TriggerAction( 1, AddNextFlag, 300, 10, 1 )
	RegCurTrigger( 3001 )


-----------------------------------����С��
	DefineMission( 356, " ���������� ����� ", 21, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��,�� ������ ����� ���������� �����? <n> <T> ����� ��� ������� ������� ������ (2222, 2889).")
	MisResultCondition(NoRecord, 21)
	MisResultCondition(HasMission, 21 )
	MisResultAction(SetRecord, 21 )
	MisResultAction(ClearMission, 21 )

----------------------------����С��
	DefineMission( 357, " ����� ����� ", 301 )
	
	MisBeginTalk( "<t>���� ������� � ������� �� ������ ������,�� ������ ���� ��� ������. " )
	MisBeginCondition(NoRecord, 301)
	MisBeginCondition(HasRecord, 21)
	MisBeginCondition(NoMission, 301)
	MisBeginAction(AddMission, 301)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� ������� ������ (2222,2889)")
	
	MisHelpTalk("<t>� ��������� ��� ��� ������ � ���� ����� ")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ð�վ���
	DefineMission( 358, " ��������� ���� ", 302 )

	MisBeginTalk( "<t>����� ������ �����!������ �� ������ � ���?  � ������� ������ ������ �� �������� � ������ �����! . <n> <T>�� ��� ������� ������ ��� ������ ����������� ")
	MisBeginCondition(NoRecord, 302)
	MisBeginCondition(HasMission, 301)
	MisBeginCondition(HasItem, 4232, 1)
	MisBeginAction(AddMission, 302)
	MisBeginAction(SetRecord, 301)
	MisBeginAction(ClearMission, 301)
	MisBeginAction(AddTrigger, 3021, TE_GETITEM, 3962, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ������ �������,� ����� ��������� � ������� ������.")
	MisNeed(MIS_NEED_ITEM, 3962, 1, 10, 1)

	MisResultTalk("<t>�� �������� ���� ���� ����. <n> <T> �� ����� ���� ������� ��������� ������� �����,��� ����� � ����� ����� ����� �� ���!.")
	MisHelpTalk("<t>�� �������� ����...")
	MisResultCondition(HasMission, 302 )
	MisResultCondition(HasItem, 3962, 1 )
	MisResultCondition(HasItem, 4232, 1 )
	MisResultAction(TakeItem, 4232, 1 )
	MisResultAction(TakeItem, 3962, 1 )
	MisResultAction(SetRecord, 302 )
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 302 )
			
	InitTrigger()
	TriggerCondition( 1, IsItem, 3962 )
	TriggerAction( 1, AddNextFlag, 302, 10, 1 )
	RegCurTrigger( 3021 )

-----------------------------------ð�վ���
	DefineMission( 359, " ��������� ���� ", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>I�-�-� � �� ������ ��� ����� ������ �����!�� ������ ��� �� �������� ���� ���� ����?!")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 4)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------ð�վ���
	DefineMission( 360, " ��������� ���� ", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>I�-�-� � �� ������ ��� ����� ������ �����!�� ������ ��� �� �������� ���� ���� ����?!")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 16)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------ð�վ���
	DefineMission( 361, " ��������� ���� ", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>���? �� ������ �� ����� ��������������?��� ����� ������,���� �� ������ ����� �� ���� ���� �� ����� ��� �����.")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoFlag, 302, 5)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(SetFlag, 302, 5 )

-------------------------------------------------ð�տ���
	DefineMission( 362, " ��������� ", 303 )

	MisBeginTalk( "<t>��,����� ��� ���� �������� ������  � ����������� �������!<n> <T> ���� ������ ������� ��� - ���������� ������ ������� 13�  10 ��")
	MisBeginCondition(NoRecord, 303)
	MisBeginCondition(HasFlag, 302, 5)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 303)
	MisBeginAction(AddTrigger, 3031, TE_KILL, 574, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ ��������� ")
	MisNeed(MIS_NEED_KILL, 574, 10, 10, 10)

	MisResultTalk("<t>�������!��������� � ��������� ������.")
	MisHelpTalk("<t>��� ��������� ������,�����?")
	MisResultCondition(HasMission, 303 )
	MisResultCondition(HasFlag, 303, 19)
	MisResultAction(SetRecord, 303 )
	MisResultAction(ClearMission, 303 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 574 )
	TriggerAction( 1, AddNextFlag, 303, 10, 10 )
	RegCurTrigger( 3031 )

-------------------------------------------------ð�տ���
	DefineMission( 363, " ��������� ", 304 )

	MisBeginTalk( "<t>���� ������ ������� ��� - ���������� ���������-������ 10 ��.")
	MisBeginCondition(NoRecord, 304)
	MisBeginCondition(HasRecord, 303)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 304)
	MisBeginAction(AddTrigger, 3041, TE_KILL, 638, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������ ��������� ")
	MisNeed(MIS_NEED_KILL, 638, 10, 10, 10)

	MisResultTalk("<t>�������!��������� � ��������� ������.")
	MisHelpTalk("<t>��� ��������� ������,�����?")
	MisResultCondition(HasMission, 304 )
	MisResultCondition(HasFlag, 304, 19)
	MisResultAction(SetRecord, 304 )
	MisResultAction(ClearMission, 304 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 638 )
	TriggerAction( 1, AddNextFlag, 304, 10, 10 )
	RegCurTrigger( 3041 )



-------------------------------------------------ð�տ���
	DefineMission( 364, " ��������� ", 305 )

	MisBeginTalk( "<t>���� ������ ������� ��� - ���������� ����������� ������  10 ��")
	MisBeginCondition(NoRecord, 305)
	MisBeginCondition(HasRecord, 304)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 305)
	MisBeginAction(AddTrigger, 3051, TE_KILL, 583, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������ ��������� ")
	MisNeed(MIS_NEED_KILL, 583, 10, 10, 10)

	MisResultTalk("<t>�������!��������� � ��������� ������.")
	MisHelpTalk("<t>��� ��������� ������,�����?")
	MisResultCondition(HasMission, 305 )
	MisResultCondition(HasFlag, 305, 19)
	MisResultAction(SetRecord, 305 )
	MisResultAction(ClearMission, 305 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 583 )
	TriggerAction( 1, AddNextFlag, 305, 10, 10 )
	RegCurTrigger( 3051 )

-------------------------------------------------ð�տ���
	DefineMission( 365, " ��������� ", 306 )

	MisBeginTalk( "<t>���� ��������� ������� ��� - ���������� ����������� ����� 10 ��")
	MisBeginCondition(NoRecord, 306)
	MisBeginCondition(HasRecord, 305)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 306)
	MisBeginAction(AddTrigger, 3061, TE_KILL, 660, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ��������� ��������� ")
	MisNeed(MIS_NEED_KILL, 660, 10, 10, 10)

	MisResultTalk("<t>�������!��������� � ��������� ������.")
	MisHelpTalk("<t>��� ��������� ������,�����?")
	MisResultCondition(HasMission, 306 )
	MisResultCondition(HasFlag, 306, 19)
	MisResultAction(SetRecord, 306 )
	MisResultAction(ClearMission, 306 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 660 )
	TriggerAction( 1, AddNextFlag, 306, 10, 10 )
	RegCurTrigger( 3061 )




-------------------------------------------------ð�տ���
	DefineMission( 366, " ��������� ", 307 )

	MisBeginTalk( "<t>���� ����� ������� ������� ��� - ���������� ��������� ������� 10 ��.")
	MisBeginCondition(NoRecord, 307)
	MisBeginCondition(HasRecord, 306)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 307)
	MisBeginAction(AddTrigger, 3071, TE_KILL, 584, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ����� ��������� ")
	MisNeed(MIS_NEED_KILL, 584, 10, 10, 10)

	MisResultTalk("<t>�������!��������� � ��������� ������.")
	MisHelpTalk("<t>��� ��������� ������,�����?")
	MisResultCondition(HasMission, 307 )
	MisResultCondition(HasFlag, 307, 19)
	MisResultAction(SetRecord, 307 )
	MisResultAction(ClearMission, 307 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 584 )
	TriggerAction( 1, AddNextFlag, 307, 10, 10 )
	RegCurTrigger( 3071 )

-------------------------------------------------ð�տ���
	DefineMission( 367, " ��������� ", 308 )

	MisBeginTalk( "<t>���� ������ ������� ������� ��� - ���������� ������ ������ 10 ��.")
	MisBeginCondition(NoRecord, 308)
	MisBeginCondition(HasRecord, 307)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 308)
	MisBeginAction(AddTrigger, 3081, TE_KILL, 603, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������ ��������� ")
	MisNeed(MIS_NEED_KILL, 603, 10, 10, 10)

	MisResultTalk("<t>�������!��������� � ��������� ������.")
	MisHelpTalk("<t>��� ��������� ������,�����?")
	MisResultCondition(HasMission, 308 )
	MisResultCondition(HasFlag, 308, 19)
	MisResultAction(SetRecord, 308 )
	MisResultAction(ClearMission, 308 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 603 )
	TriggerAction( 1, AddNextFlag, 308, 10, 10 )
	RegCurTrigger( 3081 )


-------------------------------------------------ð�տ���
	DefineMission( 368, " ��������� ", 309 )

	MisBeginTalk( "<t>���� ������� ������� ������� ��� - ���������� ������� ��������� ������� 10 ��.")
	MisBeginCondition(NoRecord, 309)
	MisBeginCondition(HasRecord, 308)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 309)
	MisBeginAction(AddTrigger, 3091, TE_KILL, 622, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������� ��������� ")
	MisNeed(MIS_NEED_KILL, 622, 10, 10, 10)

	MisResultTalk("<t>�������!��������� � ��������� ������.")
	MisHelpTalk("<t>��� ��������� ������,�����?")
	MisResultCondition(HasMission, 309 )
	MisResultCondition(HasFlag, 309, 19)
	MisResultAction(SetRecord, 309 )
	MisResultAction(ClearMission, 309 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 622 )
	TriggerAction( 1, AddNextFlag, 309, 10, 10 )
	RegCurTrigger( 3091 )




-------------------------------------------------ð�տ���
	DefineMission( 369, " ��������� ", 310 )

	MisBeginTalk( "<t>���� ������� ������� ������� ��� - ���������� ������� ������� 13� 10 ��.")
	MisBeginCondition(NoRecord, 310)
	MisBeginCondition(HasRecord, 309)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 310)
	MisBeginAction(AddTrigger, 3101, TE_KILL, 650, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������� ��������� ")
	MisNeed(MIS_NEED_KILL, 650, 10, 10, 10)

	MisResultTalk("<t>�������!��������� � ��������� ������.")
	MisHelpTalk("<t>��� ��������� ������,�����?")
	MisResultCondition(HasMission, 310 )
	MisResultCondition(HasFlag, 310, 19)
	MisResultAction(SetRecord, 310 )
	MisResultAction(ClearMission, 310 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 650 )
	TriggerAction( 1, AddNextFlag, 310, 10, 10 )
	RegCurTrigger( 3101 )


-------------------------------------------------ð�տ���
	DefineMission( 370, " ��������� ", 311 )

	MisBeginTalk( "<t>���� ������� ������� ������� ��� - ���������� ������� ����-����� 10 ��.")
	MisBeginCondition(NoRecord, 311)
	MisBeginCondition(HasRecord, 310)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 311)
	MisBeginAction(AddTrigger, 3111, TE_KILL, 585, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������� ��������� ")
	MisNeed(MIS_NEED_KILL, 585, 10, 10, 10)

	MisResultTalk("<t>�������!��������� � ��������� ������.")
	MisHelpTalk("<t>��� ��������� ������,�����?")
	MisResultCondition(HasMission, 311 )
	MisResultCondition(HasFlag, 311, 19)
	MisResultAction(SetRecord, 311 )
	MisResultAction(ClearMission, 311 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 585 )
	TriggerAction( 1, AddNextFlag, 311, 10, 10 )
	RegCurTrigger( 3111 )

-------------------------------------------------ð�տ���
	DefineMission( 371, " ��������� ", 312 )

	MisBeginTalk( "<t>���� ������� ������� ������� ��� - ���������� ������� ��������� �������� ������� 10 ��.")
	MisBeginCondition(NoRecord, 312)
	MisBeginCondition(HasRecord, 311)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 312)
	MisBeginAction(AddTrigger, 3121, TE_KILL, 611, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, " ������� ��������� ")
	MisNeed(MIS_NEED_KILL, 611, 10, 10, 10)

	MisResultTalk("<t>�������!�� ������ ��� ���������!������� ������.")
	MisHelpTalk("<t>��� ��������� ������,�����?")
	MisResultCondition(HasMission, 312 )
	MisResultCondition(HasFlag, 312, 19)
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 312 )
        MisResultAction(GiveItem, 3962, 1, 4 )	
	MisResultAction(AddExp,250000,250000)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3845,6,4)
	MisResultBagNeed(2)

			
	InitTrigger()
	TriggerCondition( 1, IsMonster, 611 )
	TriggerAction( 1, AddNextFlag, 312, 10, 10 )
	RegCurTrigger( 3121 )

----------------------------����
	DefineMission( 372, " ����� ", 313 )
	
	MisBeginTalk( "<t>����� ��� ���� ���������� � <b������� �����>.��� ����� ��� ��� �� ����������!" )
	MisBeginCondition(NoRecord, 313)
	MisBeginCondition(HasRecord, 302)
	MisBeginCondition(NoMission, 313)
	MisBeginAction(AddMission, 313)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "����� �  <b������� �����> (2277, 2769)")
	
	MisHelpTalk("<t>����� �  <b������� �����> (2277, 2769)")
	MisResultCondition(AlwaysFailure )


----------------------------����
	DefineMission( 373, " ����� ", 313, COMPLETE_SHOW )

	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��� �� ������? ����� �����? ��...��� �������� �����! ����� �� �����,� ������������ ����� � ���,�� ����������� ������ �� ������. � ������ �� ������ ������ ���� � ����������� � ���?")
	MisResultCondition(NoRecord, 313)
	MisResultCondition(HasMission, 313)
	MisResultAction(SetRecord, 313 )
	MisResultAction(ClearMission, 313 )

-----------------------------------����
	DefineMission( 374, "Hometown", 315 )

	MisBeginTalk( "<t>����� �� ����� , ��� ����� ���� � ������ �����.������� �� ������� �� ������,� ��� �������� ������� �����.���� ���� ���� ������,�� � �������� ������� � ������.� ���� ��� �������� � ���� ������ �� ���������� � ����� ������.����� � ������� � ������ ������� ���� � ������ ��� �� ���������,�� ����� �� ��������� ����� �� ����. ��� ����,� �������.������ � ������� ����� ��� ��������,�� �������� �� ����� �� ��� ������.���� �� ��������� ��� ���� ���� �� ������,� ������ ��� � ��� ��� ��������� ����� �����.")
	MisBeginCondition(NoRecord, 315)
	MisBeginCondition(HasRecord, 313)
	MisBeginCondition(NoMission, 315)
	MisBeginAction(AddMission, 315)
	MisBeginAction(AddTrigger, 3151, TE_GETITEM, 4235, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� �� ������ ������ � ����������,����� ��� �� ������� ������ �������.")
	MisNeed(MIS_NEED_ITEM, 4235, 1, 1, 1)

	MisResultTalk("<t>� �����,��� �� ������� ��� ������. <n> <T> ���� � ��������� ����� �� ������ ����� ��������� � ���������� �������� ������ ������.����� �� ������� ������ � ����� ����� , ������ �� �� ���������� ����.")
	MisHelpTalk("<t>����� ��� ���� �������� ���� ����������!")
	MisResultCondition(HasMission, 315 )
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(GiveItem, 4237, 1 , 4)
	MisResultAction(SetRecord, 315 )
	MisResultAction(ClearMission, 315 )
	MisResultBagNeed(1)
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4235 )
	TriggerAction( 1, AddNextFlag, 315, 1, 1 )
	RegCurTrigger( 3151 )


-----------------------------------���ٵĶ���
	DefineMission( 375, " ������ ����� ", 316 )

	MisBeginTalk( "<t>����� ���������� ��� � ���. � ����� ��� ����� ��� ������ ���� �� ������ 100 �������� �������� ��������.��� �������� ������� � �������� ������ 3101,666.")
	MisBeginCondition(NoRecord, 316)
	MisBeginCondition(HasMission, 315)
	MisBeginCondition(NoMission, 316)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 316)
	MisBeginAction(AddTrigger, 3161, TE_KILL, 504, 100)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ �������� �������� �������� ")
	MisNeed(MIS_NEED_KILL, 504, 100, 1, 100)

	MisResultTalk("<t>��-��.�� ���������!�� ��� � � ������������� �����������!����� � ����� ��� ������.")
	MisHelpTalk("<t>������ 100 �������� �������� ��������.")
	MisResultCondition(HasMission, 316 )
	MisResultCondition(HasFlag, 316, 100)
	MisResultAction(SetRecord, 316 )
	MisResultAction(ClearMission, 316 )
        MisResultAction(GiveItem, 4235, 1, 4 )	
	MisResultBagNeed(1)
 		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 504 )
	TriggerAction( 1, AddNextFlag, 316, 1, 100 )
	RegCurTrigger( 3161 )


-------------------------------------------------����
	DefineMission( 376, " ��� ", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������� ����� ������ ���,��� �� ��������. ����� �������� ���, ������� ��� ��� �������� �� ������!����� �� ����� ���� ���������� ���� ��������.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 10)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 1)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 10 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 377, " ��� ", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������� ����� ������ ���,��� �� ��������. ����� �������� ���, ������� ��� ��� �������� �� ������!����� �� ����� ���� ���������� ���� ��������.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 20)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 8)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 20 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 560, " ��� ", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������� ����� ������ ���,��� �� ��������. ����� �������� ���, ������� ��� ��� �������� �� ������!����� �� ����� ���� ���������� ���� ��������.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 30)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 9)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 30 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 561, " ��� ", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������� ����� ������ ���,��� �� ��������. ����� �������� ���, ������� ��� ��� �������� �� ������!����� �� ����� ���� ���������� ���� ��������.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 40)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 2)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 40 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 562, " ��� ", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>������� ����� ������ ���,��� �� ��������. ����� �������� ���, ������� ��� ��� �������� �� ������!����� �� ����� ���� ���������� ���� ��������.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 50)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 12)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 50 )
	MisResultBagNeed(1)



-----------------------------------���ϵ�����
	DefineMission( 378, " ������� ����� ", 317 )

	MisBeginTalk( "<t>��������� �����?�� � ���� ���� ���� �����,��� ���� ����� �� ����� ����� �� ����� <n> <T> ���? �� ������ �� ������? �� �� ���!.���� ���� ������� ���������� 50 ����� �������,�� � �� �������! ���? �� ������ ���������� 10000 ����� �������? ���,��� �������� �������� ����� ����� ���� � ���� ������.������� �� �� ��� �� ����������,� �� ������ �����. 50000 ����� �������? �� ... ��������� ��������.� ������ ��� ����� �� 1�� ������� � �� ���������� ������!(��� ������ :O)")
	MisBeginCondition(NoRecord, 317)
	MisBeginCondition(HasRecord, 316)
	MisBeginCondition(HasItem, 4235, 1)
	MisBeginCondition(NoMission, 317)
	MisBeginAction(AddMission, 317)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ ����� � ���� �� 1�� ")
	
	MisResultTalk("<t> ��-�� 1 ������� ��� ���� �� 10 ����������!!")
	MisHelpTalk("<t>��-�� 1 ������� ��� ���� �� 10 ����������!")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 317 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(GiveItem, 4236, 1, 4 )
	MisResultAction(SetRecord, 317 )
	MisResultAction(ClearMission, 317 )
	MisResultAction(AddExp,180000,180000)
	MisResultAction(AddMoney,15000,15000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3848,30,4)
	MisResultBagNeed(2)
	

-----------------------------------����֮��
	DefineMission( 379, " ������� ������ ", 318 )

	MisBeginTalk( "<t>����!�������� ��� ���������� ������� ������ 13 � �� ������� ���!�� �������� ������� ")
	MisBeginCondition(NoRecord, 318)
	MisBeginCondition(HasMission, 22)
	MisBeginCondition(NoMission, 318)
	MisBeginAction(SetRecord, 22)
	MisBeginAction(ClearMission, 22)
	MisBeginAction(AddMission, 318)
	MisBeginAction(AddTrigger, 3181, TE_GETITEM, 4238, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "�������� ������� � ������.")
	MisNeed(MIS_NEED_ITEM, 4238, 1, 1, 1)

	MisResultTalk("<t>��� �����������!")
	MisHelpTalk("<t>�� ��!�������� ���...")
	MisResultCondition(HasMission, 318 )
	MisResultCondition(HasItem, 4238, 1 )
	MisResultAction(TakeItem, 4238, 1 )
	MisResultAction(SetRecord, 318 )
	MisResultAction(ClearMission, 318 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4238 )
	TriggerAction( 1, AddNextFlag, 318, 1, 1 )
	RegCurTrigger( 3181 )


----------------------------����֮��
	DefineMission( 380, " ������� ������ ", 319 )
	
	MisBeginTalk( "<t>�� ��������,��� �� ������ ����� ����� ���,�� ��� ���������� ��� ������." )
	MisBeginCondition(NoRecord, 319)
	MisBeginCondition(HasRecord, 318)
	MisBeginCondition(NoMission, 319)
	MisBeginAction(AddMission, 319)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "���������� ���������� ����� �� �����������  (2041, 1355)")
	
	MisHelpTalk("���������� ���������� ����� �� �����������  (2041, 1355).")
	MisResultCondition( AlwaysFailure )



-----------------------------------����֮��
	DefineMission( 381, " ������� ������ ", 320 )

	MisBeginTalk( "<t>���? ��� �� ��������? � �� �� ��� ���!<n> <T> �������� ���! <n> <T> ��� �������� �����,�� �� ���� ��������� ������� �������!")
	MisBeginCondition(NoRecord, 320)
	MisBeginCondition(HasMission, 319)
	MisBeginCondition(NoMission, 320)
	MisBeginAction(ClearMission, 319)
	MisBeginAction(SetRecord, 319)
	MisBeginAction(AddMission, 320)
	MisBeginAction(AddTrigger, 3201, TE_GETITEM, 1478, 20)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "�������� ��������� 20 ������ ")
	MisNeed(MIS_NEED_ITEM, 1478, 20, 1, 20)

	MisResultTalk("<t>� ����!� ���� , ��� �� � ��������� ������� ���!")
	MisHelpTalk("<t>���!?��� ����?")
	MisResultCondition(HasMission, 320)
	MisResultCondition(HasItem, 1478, 20 )
        MisResultAction(TakeItem, 1478, 20 )
	MisResultAction(SetRecord, 320 )
	MisResultAction(ClearMission, 320 )
  	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )
	TriggerAction( 1, AddNextFlag, 320, 1, 20 )
	RegCurTrigger( 3201 )



-----------------------------------����֮��
	DefineMission( 382, " ������� ������ ", 321 )
	MisBeginCondition(NoMission, 321)
	MisBeginCondition(HasRecord, 320)
	MisBeginCondition(NoMission, 321)
	MisBeginAction(AddMission, 321)	

	MisBeginTalk("<t>�� ������� �� ����? �� ������� ������� �����-�����������? <n> <T> �� �������� ��� �� ����!� ���� ��� ��� �������.�� �������� � �������� ����� (3153, 674).�� � ���� � �����!� ��� �� ���� ��� �����.")
	
	MisNeed(MIS_NEED_DESP, "��������� � �������� ����� (3153,674)")
	
	MisResultCondition(AlwaysFailure )


-----------------------------------����֮��
	DefineMission( 383, " ������� ������ ", 321, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��� ���������!�� ����� �������� ��������� �����-�� ��������!���� �� �� �� ���� ��� �����,� �� �� ����������� � ��� <n> <T> ��� �������� ����������� ... ��,� ���� ��� ��� ������� ,�� ��� ����������� ����������� ��� ����!")
	MisResultCondition(NoRecord, 321)
	MisResultCondition(HasMission, 321)
	MisResultAction(ClearMission, 321)
	MisResultAction(SetRecord, 321)

-----------------------------------����֮��
	DefineMission( 384, " ������� ������ ", 323 )

	MisBeginTalk( "<t>��� ����, ����� ������� ����������� ��� �����������:���������� ����� ������ - 30 ����;������� ����� ����� - 30 ����;������ ����� ����� - 30 ����.")
	MisBeginCondition(NoRecord, 323)
	MisBeginCondition(HasRecord, 321)
	MisBeginCondition(NoMission, 323)
	MisBeginAction(AddMission, 323)
	MisBeginAction(AddTrigger, 3231, TE_GETITEM, 4938, 30)
	MisBeginAction(AddTrigger, 3232, TE_GETITEM, 4957, 30)
	MisBeginAction(AddTrigger, 3233, TE_GETITEM, 4976, 30)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ����������� ��������� �������� (3153,674)")
	MisNeed(MIS_NEED_ITEM, 4938, 30, 1, 30)
	MisNeed(MIS_NEED_ITEM, 4957, 30, 31, 30)
	MisNeed(MIS_NEED_ITEM, 4976, 30, 61, 30)

	MisResultTalk("<t> ��, ��,��� ��� ��� �����!� ����� ������ ����������� ����� ������!")
	MisHelpTalk("<t>���?�� �� ������ � ���� ������ ��� ����?")
	MisResultCondition(HasMission, 323 )
	MisResultCondition(HasItem, 4938, 30)
	MisResultCondition(HasItem, 4957, 30)
	MisResultCondition(HasItem, 4976, 30)
	MisResultAction(TakeItem, 4938, 30 )
	MisResultAction(TakeItem, 4957, 30 )
	MisResultAction(TakeItem, 4976, 30 )
	MisResultAction(SetRecord, 323 )
	MisResultAction(ClearMission, 323 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4938 )
	TriggerAction( 1, AddNextFlag, 323, 1, 30 )
	RegCurTrigger( 3231 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4957 )
	TriggerAction( 1, AddNextFlag, 323, 31, 30 )
	RegCurTrigger( 3232 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4976 )
	TriggerAction( 1, AddNextFlag, 323, 61, 30 )
	RegCurTrigger( 3233 )



-----------------------------------����֮��
	DefineMission( 385, " ������� ������ ", 324 )

	MisBeginTalk( "<t>� �� ���� �����������. .. ���������, ���������! �� ������������� ����������� �������� ����?  � ����� ������� � <b��������� ����> �� <b����� �����> �� �����������  (2042, 635). ")
	MisBeginCondition(NoRecord, 324)
	MisBeginCondition(HasRecord, 323)
	MisBeginCondition(NoMission, 324)
	MisBeginAction(AddMission, 324)
	MisBeginAction(AddTrigger, 3241, TE_GETITEM, 4254, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� � ���� (2042, 635)")
	MisNeed(MIS_NEED_ITEM, 4254, 1, 1, 1)

	MisResultTalk("<t> ��!���� �� �������� ������ ��� ��������!<n> <T> ���? ��� ������� ��� ���� ������? � �� �������!� ������ �����,����!(��� ����� :o)")
	MisHelpTalk("<t>��� ����� � ����� �����!")
	MisResultCondition(HasMission, 324 )
	MisResultCondition(HasMission, 325 )
	MisResultCondition(HasItem, 4254, 1)
	MisResultAction(TakeItem, 4254, 1)
	MisResultAction(SetRecord, 324 )
	MisResultAction(ClearMission, 324 )

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4254 )
	TriggerAction( 1, AddNextFlag, 324, 1, 1 )
	RegCurTrigger( 3241 )

-----------------------------------����֮��
	DefineMission( 386, " ������� ������ ", 325 )

	MisBeginTalk( "<t>���?�������� ������� ���?�� ����������� ������! ��, � �� �� ��� ��� �� ������ ��� 100000 �����! !<n> <T> ������ ������! �� ����� ���� � ���� ����� ����� ������.����� ��� ����������� ��������.")
	MisBeginCondition(NoRecord, 325)
	MisBeginCondition(HasMission, 324)
	MisBeginCondition(NoMission, 325)
	MisBeginAction(AddMission, 325)
	MisBeginAction(GiveItem, 4254, 1, 4 )	
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "B�������� ����������� (3153, 674) � ����� �� 100000 ����� ������� ")

	MisResultTalk("<t>���? �� ����������� ��� ����� ��� ����?� ��������� ��� � ��� ��� ������ ����������� ��!")
	MisHelpTalk("<t>�����!")
	MisResultCondition(HasMission, 325)
	MisResultCondition(HasRecord, 324)
	MisResultAction(SetRecord, 325 )
	MisResultAction(ClearMission, 325 )	

-----------------------------------����֮��
	DefineMission( 387, " ������� ������ ", 326 )

	MisBeginTalk( "<t>� ���!���� ������� �������.�� �������� �� ��������,�� ����������� �������� � �����.���� �� �������� ����� ��� ������� �������,�� � ������ ��������� ��� ���������� �������!")
	MisBeginCondition(NoRecord, 326)
	MisBeginCondition(HasRecord, 325)
	MisBeginCondition(NoMission, 326)
	MisBeginAction(AddMission, 326)
	MisBeginAction(AddTrigger, 3261, TE_GETITEM, 4255, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� <r��������� �������> ��� �����������.")
	MisNeed(MIS_NEED_ITEM, 4255, 10, 1, 10)

	MisResultTalk("<t> ��, ��, ��� ��� ����������� ������� �����!")
	MisHelpTalk("<t>�� �� �������� ��������� �������?")
	MisResultCondition(HasMission, 326 )
	MisResultCondition(HasItem, 4255, 10)
	MisResultAction(TakeItem, 4255, 10 )
	MisResultAction(SetRecord, 326 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 326 )
	MisResultAction(AddExp,320000,320000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3846,1,4)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4255 )
	TriggerAction( 1, AddNextFlag, 326, 1, 10)
	RegCurTrigger( 3261 )

----------------------------��������
	DefineMission( 559, " �������� ������ ", 387 )
	
	MisBeginTalk( "<t>��� ������� ��� ����?������ ������ �� �����! <n> <T> ����� ������� ����� ������� (2277, 2769)." )
	MisBeginCondition(NoRecord, 387)
	MisBeginCondition(NoMission, 387)
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(NoRecord, 330)
	MisBeginAction( AddMission, 387 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ " )
		
	MisNeed(MIS_NEED_DESP, "������� ����� ")
	
	MisHelpTalk( "������� ����� " )
	MisResultCondition( AlwaysFailure )

----------------------------��������
	DefineMission( 388, " �������� ������ ", 327)
	
	MisBeginTalk( "<t> ���?! �� ��������, ��� �� �� ������ ������, ��� ��� �������?�� ������ ����� ����������? <n> <T>  ����� ��� ������� ��� ����������� ���������� <b�������>" )
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(HasMission, 387)
	MisBeginCondition(NoMission, 327)
	MisBeginAction(SetRecord, 387)
	MisBeginAction(ClearMission, 387)
	MisBeginAction(AddMission, 327)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "���������� �  <b��������> �� ����������� (1310, 530) ")
	
	MisHelpTalk("������� <b�������>")
	MisResultCondition(AlwaysFailure )



-----------------------------------��������
	DefineMission( 389, " �������� ������ ", 328 )

	MisBeginTalk( "<t>�� ������ ����� ����������? �� ����� ���� ��� ��� �������!� ���� ������� ��� ������� <n> <T> � ������ ��� �� �� 100000 �������.�� ������ ������,������?")
	MisBeginCondition(NoRecord, 328)
	MisBeginCondition(HasMission, 327)
	MisBeginCondition(NoMission, 328)
	MisBeginAction(SetRecord, 327)
	MisBeginAction(ClearMission, 327)
	MisBeginAction(AddMission, 328)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<r100000 ����� �������>")
	
	MisResultTalk("<t>��,�� ������ ���� ������!")
	MisHelpTalk("<t>� ���� ���� 100000 ����� �������? ��-��")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 328 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(SetRecord, 328 )
	MisResultAction(ClearMission, 328 )
    MisResultAction(GiveItem, 4256, 1, 4 )
	MisResultBagNeed(1)


-----------------------------------��������
	DefineMission( 391, "�������� ������ ", 330 )


	MisBeginTalk( "<t> Is that Ai Wen? Long time no see... I'm not not speaking to you, I'm speaking to the Omni-Relevation prescription. Yes, its name is Ai Wen, 500 years ago, a person with a soul was sealed inside this formula that is why it talks!<n><t>Anyway, I'll give you a discount, you only need to pay me <r50000G> for me to complete the potion for you.")
	MisBeginCondition(NoRecord, 30)
	MisBeginCondition(NoRecord, 330)
	MisBeginCondition(HasMission, 30)
	MisBeginAction(AddMission, 330)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Collect all ingredient and also <r50000G>")

	MisResultTalk("<t>Why the hurry? I'm not done yet! I need another 50000G to complete it. Why...Are you taking out your weapon? Okay okay��. I was only joking.<n><t>The potion has already been completed. Here! Take it!<n><t>(You glup down the potion without thinking...)")
	MisHelpTalk("<t>No money, no potion. It's only 5000!")
	MisResultCondition(HasMission, 330 )
	MisResultCondition(HasItem, 4938, 30)
	MisResultCondition(HasItem, 4957, 30)
	MisResultCondition(HasItem, 4976, 30)
	MisResultCondition(HasItem, 4974, 10)
	MisResultCondition(HasMoney, 50000 )
	MisResultAction(SetRecord, 30)
	MisResultAction(ClearMission, 30)
	MisResultAction(TakeItem, 4938, 30)
	MisResultAction(TakeItem, 4957, 30)
	MisResultAction(TakeItem, 4976, 30)
	MisResultAction(TakeItem, 4974, 10)
	MisResultAction(TakeMoney, 50000 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 330 )
    MisResultAction(AddExp,550000,550000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3908,1,4)	
	MisResultAction(GiveItem,4708,1,4)
	MisResultAction(GiveItem,7615,1,4)
	MisResultAction(GiveItem,7617,1,4)
	MisResultBagNeed(4)


----------------------------Զ���ǿ�
	DefineMission( 392, " ����� �������� ", 331)
	
	MisBeginTalk( "<t>������, ��� ����? �� ������ ��� �����? ������������, �� ����� ��� ��� ������.<n> <T> ��������� ��������� ��������� �� ������." )
	MisBeginCondition(NoRecord, 331)
	MisBeginCondition(HasRecord, 315)
	MisBeginCondition(NoMission, 331)
	MisBeginAction(AddTrigger, 3311, TE_GETITEM, 4242, 7 )
	MisBeginAction(AddMission, 331)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "�������� �� ������ � ������������� � �����������.")
	MisNeed(MIS_NEED_ITEM, 4242, 7, 10, 7)	

	MisResultTalk("<t>� ����, � ��� ���� ���������� ������������ ����� ����? ������ �� ��� ���������� �� ����...")
	MisHelpTalk("<t>�� ��� �� ��� ���������!")
	MisResultCondition(HasMission, 331)
	MisResultCondition(HasItem, 4242, 7)
	MisResultAction(TakeItem, 4242, 7 )
	MisResultAction(SetRecord, 331 )
	MisResultAction(ClearMission, 331 )
	MisResultAction(AddExp,100000,100000)
	MisResultAction(AddMoney,30000,30000)
	MisResultAction(AddExpAndType,2,50000,50000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4242 )
	TriggerAction( 1, AddNextFlag, 331, 10, 7)
	RegCurTrigger( 3311 )

----------------------------Զ���ǿ�
	DefineMission( 393, " ����� �������� ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�� ������ �������! ��� �� ������� ����� �����,����� ���� ����� ������!")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 1)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 1)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------Զ���ǿ�
	DefineMission( 394, " ����� �������� ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�� ������ �������! ��� �� ������� ����� �����,����� ���� ����� ������!")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 2)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 2)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------Զ���ǿ�
	DefineMission( 395, " ����� �������� ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>����������� ��� ��������! ���� ����� ����,���� ��� ����� ������ ,�� �����������! ��������� �� ��������, � ������ ��� ������  20%")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 3)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 3)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
---------------------------Զ���ǿ�
	DefineMission( 396, " ����� �������� ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>������ ����! ���� �� �������  ������ ������ ������� � ������ �����, � ������ ���� 20% ������!")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 4)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 4)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------Զ���ǿ�
	DefineMission( 397, " ����� �������� ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t� ����� �����!�� ������� ���������� �� ����!<n> <T> ��,� ��������� ��� ���� ������.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 5)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 5)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	

----------------------------Զ���ǿ�
	DefineMission( 398, " ����� �������� ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�� ����������� �����!")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 6)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 6)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------Զ���ǿ�
	DefineMission( 399, " ����� �������� ", 331, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t>C������ ��� ���� ��������� ���, ��� �� ����������.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 7)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 7)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

-----------------------------------�����㾦
	DefineMission( 510, " ����� ���������� ", 339 )

	MisBeginTalk( "<t>��� ����� ������� ������.���� �� ������ ��� ��,� �������� ��� ��������� ������.")
	MisBeginCondition(NoRecord, 339)
	MisBeginCondition(HasRecord, 338)
	MisBeginCondition(NoMission, 339)
        MisBeginCondition(HasItem, 4236,1)
	MisBeginAction(AddMission, 339)
	MisBeginAction(AddTrigger, 3391, TE_GETITEM, 4236, 1 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ������ ������� ���� �� ")
	MisNeed(MIS_NEED_ITEM, 4236, 1, 1, 1)

	MisResultTalk("<t>�������!� �������� ��� ��� ������.")
	MisHelpTalk("<t>���?� ��� ���� ������?.")
	MisResultCondition(HasMission, 339 )
	MisResultCondition(HasItem, 4236, 1 )
	MisResultAction(TakeItem, 4236, 1 )	
	MisResultAction(SetRecord, 339 )
	MisResultAction(ClearMission, 339 )
    


-----------------------------------�����㾦
	DefineMission( 511, " ����� ���������� ", 340 )

	MisBeginTalk( "<t> �� ��� �������� ������:��-��!� ������� ���.��� ���������� ������ ��� ���� ��� �� ��������� �������.���� ���� �� ��������� ��� ������ , � ���� ��� ������!.")
	MisBeginCondition(NoRecord, 340)
	MisBeginCondition(HasRecord, 339)
	MisBeginCondition(NoMission, 340)
	MisBeginAction(AddMission, 340)
	MisBeginAction(AddTrigger, 3401, TE_GETITEM, 1787, 5)
	MisBeginAction(AddTrigger, 3402, TE_GETITEM, 1788, 5)
	MisBeginAction(AddTrigger, 3403, TE_GETITEM, 1789, 5)
	MisBeginAction(AddTrigger, 3404, TE_GETITEM, 1790, 5)
	MisBeginAction(AddTrigger, 3405, TE_GETITEM, 1791, 5)
	MisBeginAction(AddTrigger, 3406, TE_GETITEM, 1792, 5)
	MisBeginAction(AddTrigger, 3407, TE_GETITEM, 1793, 5)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "<r������� ������> 5 �� , <r���������� ������> 5 �� , <r����� ������>  5 ��  <r������� ������> 5 ��  <r������� ������> 5 �� <r����� ������> 5 �� <r��������� ������> 5 ��")
	MisNeed(MIS_NEED_ITEM, 1787, 5, 1, 5)
	MisNeed(MIS_NEED_ITEM, 1788, 5, 6, 5)
	MisNeed(MIS_NEED_ITEM, 1789, 5, 11, 5)
	MisNeed(MIS_NEED_ITEM, 1790, 5, 16, 5)
	MisNeed(MIS_NEED_ITEM, 1791, 5, 21, 5)
	MisNeed(MIS_NEED_ITEM, 1792, 5, 26, 5)
	MisNeed(MIS_NEED_ITEM, 1793, 5, 31, 5)

	MisResultTalk("<t>�� ������� ����������!� ���� �� ������� ���� �������.")
	MisHelpTalk("<t>������� ������� ��� ������!")
	MisResultCondition(HasMission, 340)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1788, 5)
	MisResultCondition(HasItem, 1789, 5)
	MisResultCondition(HasItem, 1790, 5)
	MisResultCondition(HasItem, 1791, 5)
	MisResultCondition(HasItem, 1792, 5)
	MisResultCondition(HasItem, 1793, 5)
	MisResultAction(TakeItem, 1787, 5 )	
	MisResultAction(TakeItem, 1788, 5 )	
	MisResultAction(TakeItem, 1789, 5 )	
	MisResultAction(TakeItem, 1790, 5 )	
	MisResultAction(TakeItem, 1791, 5 )	
	MisResultAction(TakeItem, 1792, 5 )	
	MisResultAction(TakeItem, 1793, 5 )	
	MisResultAction(SetRecord, 340 )
	MisResultAction(ClearMission, 340 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1787 )
	TriggerAction( 1, AddNextFlag, 340, 1, 5 )
	RegCurTrigger( 3401 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1788 )
	TriggerAction( 1, AddNextFlag, 340, 6, 5 )
	RegCurTrigger( 3402 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1789 )
	TriggerAction( 1, AddNextFlag, 340, 11, 5 )
	RegCurTrigger( 3403 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1790 )
	TriggerAction( 1, AddNextFlag, 340, 16, 5 )
	RegCurTrigger( 3404 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1791 )
	TriggerAction( 1, AddNextFlag, 340, 21, 5 )
	RegCurTrigger( 3405 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1792 )
	TriggerAction( 1, AddNextFlag, 340, 26, 5 )
	RegCurTrigger( 3406 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1793 )
	TriggerAction( 1, AddNextFlag, 340, 31, 5 )
	RegCurTrigger( 3407 )

-----------------------------------�����㾦
	DefineMission( 512, " ����� ���������� ", 341 )

	MisBeginTalk( "<t>�� ���� ������� �����������,� ��� ����� �������!������ � ������ ���������� ���� ,� ������� ������� ���� ������� ����� ������!����� ��� ������� 30 ������ <r������ ����> ")
	MisBeginCondition(NoRecord, 341)
	MisBeginCondition(HasRecord, 340)
	MisBeginCondition(NoMission, 341)
	MisBeginAction(AddMission, 341)
	MisBeginAction(AddTrigger, 3411, TE_GETITEM, 1649, 30)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� 30 ������� ������ ���� � ��������� � ������� ���� �� (3290, 2512)")
	MisNeed(MIS_NEED_ITEM, 1649, 30, 1, 30)

	MisResultTalk("<t>������ ��� ��������? ����� ������ �������!")
	MisHelpTalk("<t>��� �� ������� �������� � ������� ������?!")
	MisResultCondition(HasMission, 341)
	MisResultCondition(HasItem, 1649, 30)
	MisResultAction(TakeItem, 1649, 30 )
	MisResultAction(SetRecord, 341 )
	MisResultAction(ClearMission, 341 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649 )
	TriggerAction( 1, AddNextFlag, 341, 1, 30 )
	RegCurTrigger( 3411 )
	

-----------------------------------�����㾦
	DefineMission( 513, " ����� ���������� ", 342 )

	MisBeginTalk( "<t>���� �� �� ���� ������� ������� ,�� �������� ������ �� �������. ������ �� ��������� �������� �������!�� �� ����������� � ����� 10 <r������ �������> ������� ���.� ��������� ��� ����� ������ ��� (3322, 2460).")
	MisBeginCondition(NoMission, 342)
	MisBeginCondition(NoRecord, 342)
	MisBeginCondition(HasRecord, 341)
	MisBeginAction(AddMission, 342)
	MisBeginAction(AddTrigger, 3421, TE_GETITEM, 165, 10)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� 10 ������ ������� � ��������� � ������� ���� �� ")
	MisNeed(MIS_NEED_ITEM, 165, 10, 1, 10)

	MisResultTalk("<t>�� ��� ������ ������!������ � ����� ����������� �����.")
	MisHelpTalk("<t>�� ����� ��������� � ������� ������?")
	MisResultCondition(HasMission, 342)
	MisResultCondition(HasItem, 165, 10)
	MisResultAction(TakeItem, 165, 10 )
	MisResultAction(SetRecord, 342 )
	MisResultAction(ClearMission, 342 )
	MisResultAction(AddExp,700000,700000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(GiveItem,3885,1,4)	
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 165 )
	TriggerAction( 1, AddNextFlag, 342, 1, 10 )
	RegCurTrigger( 3421 )


-----------------------------------ʧ��
	DefineMission( 514, " ������ ", 343 )

	MisBeginTalk( "<t>��� ������� ���������  <p��������� �������>.�� ����������� ����� �������������.������ ��� ������� � ��� ����� �� ������� �������� � �������<n> <T> ��� ��� � ������ ������� ����� ������ ���������.�������� ��� ��������� � ���!")
	MisBeginCondition(NoRecord, 343)
	MisBeginCondition(NoMission, 343)
	MisBeginCondition(HasRecord, 331)
   	MisBeginAction(AddMission, 343)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ���� ���� �� � <r��������� �������>")

	MisResultTalk("<t>�� ���� �����? � ����,� ���� ��� �������� ���-�� ��������!")
	MisHelpTalk("<t>�� ��� � �� ����� ���?")
	MisResultCondition(HasMission, 343 )
	MisResultCondition(HasFlag, 343, 2 )
	MisResultAction(SetRecord, 343 )
	MisResultAction(ClearMission, 343 )

-----------------------------------ʧ��
	DefineMission( 515, " ������ ", 343 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>����������, ���������! � �� �������! � �� ��� ��� �������! ���������� ��������� ����� ��� �����! ������� ���� ����, ��� � ������ ���� ������ ��. � ������� � ������ ���� ��������������.")
	MisResultCondition(NoRecord, 343)
	MisResultCondition(HasMission, 343)
	MisResultCondition(NoFlag, 343, 2)
	MisResultAction(SetFlag, 343, 2)
	
-----------------------------------ʧ��
	DefineMission( 516, " ������ ", 345 )

	MisBeginTalk( "<t>� ���� ��� �  <r����> �� �����������  (3279, 2501) ���� <r���������> ������� �������� ������� ���� �����.������� ��!")
	MisBeginCondition(NoRecord, 345)
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(HasRecord, 343)
	MisBeginCondition(NoMission, 345)
  	MisBeginAction(AddMission, 345)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� <r����> � ���������� � ���������� ")

	MisHelpTalk("<t>���� ������ ������?")
	MisResultCondition(AlwaysFailure )

-----------------------------------���
	DefineMission( 517, " �������� ", 346 )

	MisBeginTalk( "<t>���?! ���� ���� �����?���!����� ����������� <r����������� ��������> ������� ����� ���� ������ �� ���������� <r���������� ����������>. <n> <T>��������,������� � ����������� � ������� ��� ��� ���������� � �����!�� �� �� ��������� ��� ���...����� ���� �� �������� ��� ������� 20 ����  ���������� ����������,�� � ������ ����������� ��������!")
	MisBeginCondition(NoRecord, 346)
	MisBeginCondition(HasMission, 345)
	MisBeginCondition(NoMission, 346)
  	MisBeginAction(AddMission, 346)
	MisBeginAction(AddTrigger, 3461, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "��������� ���� 20 ���������� ����������.")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>�������!��� �� ��� ����.")
	MisHelpTalk("<t>���!� ��� �� �� ���������!���� ������ 20 ���� ���������� ��������.")
	MisResultCondition(HasMission, 346 )
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262,20 )
	MisResultAction(GiveItem, 4244, 1, 4)
	MisResultAction(SetRecord, 346 )
	MisResultAction(ClearMission, 346 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 346, 1, 20 )
	RegCurTrigger( 3461 )

-----------------------------------���
	DefineMission( 518, " �������� ", 347 )

	MisBeginTalk( "<t>��� ���������? � ��� ����� ����� �� ����! <n> <T> ������ � ����� ���������?��� ��� �������� ����? <n> <T> � ������ ����, ��� ��� ��� �������.�� ���� ��� ���� ������ ����������,� �� �������� ����� ������.�������� �� �� ����.")
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(NoMission, 347)
	MisBeginCondition(HasRecord, 346)
	MisBeginCondition(HasItem, 4244, 1)
	MisBeginAction(TakeItem, 4244, 1)
  	MisBeginAction(AddMission, 347)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� ����,��� ���� �� ����� �������� ��������� �������.")
	
	MisResultCondition(AlwaysFailure )

-----------------------------------���
	DefineMission( 519, " �������� ", 347 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���? ���� �� ����� �������� ��������� �������? � ����� ������ � ����� � ����.")
	MisResultCondition(NoRecord, 347)
	MisResultCondition(HasMission, 347)
	MisResultAction(SetRecord, 347)
	MisResultAction(ClearMission, 347)
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveItem, 3883, 5, 4)
	MisResultAction(GiveItem, 3884, 5, 4)
	MisResultBagNeed(2)

-----------------------------------�����漣
	DefineMission( 520, " ���� ����� ", 349 )

	MisBeginTalk( "<t>������� �������, � �� ����������� <n> <T> �� ������� ������� ����� ����� � ����?� ����� ����� �������� �������. <n> <T> � ���� ��� �� ������,�� ��� ����� �������.��� ���� �������:��1 �� ������ �������� ����� ,1 �� ������ ��������,1 �� ����������� ����.")
	MisBeginCondition(NoRecord, 349)
	MisBeginCondition(NoRecord, 356)
	MisBeginCondition(HasRecord, 347)
	MisBeginCondition(NoMission, 349)
	MisBeginCondition(NoMission, 356)
	MisBeginAction(AddMission, 349)
	MisBeginAction(AddTrigger, 3491, TE_GETITEM, 4245, 1 )
	MisBeginAction(AddTrigger, 3492, TE_GETITEM, 4246, 1 )
	MisBeginAction(AddTrigger, 3493, TE_GETITEM, 4247, 1 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� � �����-������ � �������������.")
	MisNeed(MIS_NEED_ITEM, 4245, 1, 5, 1)
	MisNeed(MIS_NEED_ITEM, 4246, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4247, 1, 15, 1)

	MisResultTalk("<t>������ ������� ��� �������,������� �� ��� ������� �������� ������ ������.�� ������� �������� ����� ������� �����.")
	MisHelpTalk("<t>� �� ������ ��� ��� �����������!")
	MisResultCondition(HasMission, 349 )
	MisResultCondition(HasItem, 4245, 1 )	
	MisResultCondition(HasItem, 4246, 1 )	
	MisResultCondition(HasItem, 4247, 1 )
	MisResultAction(TakeItem, 4245, 1 )	
	MisResultAction(TakeItem, 4246, 1 )	
	MisResultAction(TakeItem, 4247, 1 )
        MisResultAction(GiveItem, 4248, 1 ,4)	
	MisResultAction(SetRecord, 349 )
	MisResultAction(ClearMission, 349 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4245)	
	TriggerAction( 1, AddNextFlag, 349, 5, 1 )
	RegCurTrigger( 3491 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4246)	
	TriggerAction( 1, AddNextFlag, 349, 10, 1 )
	RegCurTrigger( 3492 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4247)	
	TriggerAction( 1, AddNextFlag, 349, 15, 1 )
	RegCurTrigger( 3493 )

-----------------------------------Ů�������
	DefineMission( 521, " ����� ������ ", 350 )

	MisBeginTalk( "<t>����� �������� ��� ������� ��� ��� ������ ��� �������? �� ������� �������� ������ ������, �� ������ ���� � ������ ������� ���� ������������ � ����.")
	MisBeginCondition(NoRecord, 350)
	MisBeginCondition(NoMission, 350)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 350)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ����� ������ ")

	MisResultTalk("<t>������ ���� � ������ ������� �������� �������� ��� ���� �������!�� ��������.")
	MisHelpTalk("<t>����� ��� ���� ����������� �� ������ �������.")
	MisResultCondition(HasMission, 350)
	MisResultCondition(HasItem, 4245, 1)
 	MisResultAction(SetRecord, 350 )
	MisResultAction(ClearMission, 350 )



-----------------------------------���������
	DefineMission( 522, " ������ ������� ", 351 )

	MisBeginTalk( "<t>� ������ �������..��� ������ ������� � ������ ��������<n> <T> ����� �������� ���� �����,� ���� ��������� ���������� �����...��� ��� ���� ������,����� ������,��� ����� �������� ������.�� ���� � ������� ����������� �� ����� �� ������������.")
	MisBeginCondition(NoRecord, 351)
	MisBeginCondition(NoMission, 351)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 351)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ������ ��������.")

	MisResultTalk("<t>�� ������������� ������� ������ ��������? ��������, �� ������ ������, ��� ���� ��� �������.")
	MisHelpTalk("<t>� ����� ������ ��������� ������ ������ � ������...")
	MisResultCondition(HasMission, 351)
	MisResultCondition(HasItem, 4246, 1)
 	MisResultAction(SetRecord, 351 )
	MisResultAction(ClearMission, 351 )

	-----------------------------------�������ë
	DefineMission( 523, " ����������� ���� ", 352 )

	MisBeginTalk( "<t>����������� ����-��� ������ ������� ��� ������� ������!��� �������� ��������������� ����,��� ����� �������� ������� , � ������ ���� �������.�� ������� ��� �� ����� ��� �������?")
	MisBeginCondition(NoRecord, 352)
	MisBeginCondition(NoMission, 352)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 352)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ����������� ���� ")

	MisResultTalk("<t>�� ������ ��� ���� ������� �����!� �� ���� ������� ��� ��� ���� ������� ����,����� �� ���� ��� �������.")
	MisHelpTalk("<t>����� �����,��� ���� ����� ������� ��� �� � ���� ������� ")
	MisResultCondition(HasMission, 352)
	MisResultCondition(HasItem, 4247, 1)
 	MisResultAction(SetRecord, 352 )
	MisResultAction(ClearMission, 352 )

-----------------------------------�����漣
	DefineMission( 524, " ���� ����� ", 353 )

	MisBeginTalk( "<t>�� ������� , ��� ���� ��� ����� � ����� �������� � ��������� ���? <n> <T>�������!������ � ����� ������� ����.�������� �� �� ����.")
	MisBeginCondition(NoRecord, 353)
	MisBeginCondition(NoMission, 353)
	MisBeginCondition(HasRecord, 349)
	MisBeginCondition(HasItem, 4248,1)
	MisBeginAction(TakeItem, 4248, 1)
  	MisBeginAction(AddMission, 353)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "�������� ���� ������� �������.")

	MisHelpTalk("<t>�-��.� ��� ��� ����������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����漣
	DefineMission( 525, " ���� ����� ", 353 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���? �� ��������� ������� �������?������ ���� ����� ��������� �� ���?��� � ���� ��� �������������? ������� ���� ��������,�� ������� ��� �� ����������� �� ���� �����.")
	MisResultCondition(NoRecord, 353)
	MisResultCondition(HasMission, 353)
	MisResultAction(SetRecord, 353)
	MisResultAction(ClearMission, 353)	
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3348,10,4)
	MisResultAction(GiveItem,3349,10,4)
	MisResultAction(GiveItem,3350,10,4)
	MisResultBagNeed(3)

-----------------------------------ʬ��
	DefineMission( 526, " ������� �� ", 355 )

	MisBeginTalk( "<t>�� ���������� ���?� ����� ������� ��� ��� �������� ��������<n> <T> ��� ����������� 20 �� �������� ���������� � 5 ����� ������.")
	MisBeginCondition(NoRecord, 355)
	MisBeginCondition(NoMission, 355)
	MisBeginCondition(HasRecord, 353)
 	MisBeginAction(AddMission, 355)
	MisBeginAction(AddTrigger, 3551, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� � 20 ����������� ���������� ")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>������, ��� ���� ���������.���� ��� ����������� ���,�� �����������.")
	MisHelpTalk("<t>� �� �������!20 ����!")
	MisResultCondition(HasMission, 355)
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262, 20)
        MisResultAction(GiveItem, 4249, 12 ,4)	
 	MisResultAction(SetRecord, 355 )
	MisResultAction(ClearMission, 355 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 355, 1, 20 )
	RegCurTrigger( 3551 )

-----------------------------------ʧ��
	DefineMission( 527, " ������ ", 345, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���? ��� ��� �� ����� ��������� �����?")
	MisResultCondition(HasRecord, 347)
	MisResultCondition(NoRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(NoRecord, 349)
	MisResultCondition(HasMission, 345)
	MisResultCondition(NoMission, 353)
	MisResultCondition(NoMission, 349)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	
-----------------------------------ʧ��
	DefineMission( 528, " ������ ", 345 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>���?������� �������? ��� ��� ������?�������!���� ��� �����?")
	MisResultCondition(HasRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(HasMission, 345)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	MisResultAction(SetRecord, 354 )

-----------------------------------�����ʵ
	DefineMission( 529, " ��������� ����� ", 358 )

	MisBeginTalk( "<t>�� ��� �������� ���� ����? <n> <T> �� � �� ����� ������!�� ����� <b���> �� ����������� (3196, 2509) ������ ���� ������!")
	MisBeginCondition(NoRecord, 358)
	MisBeginCondition(HasRecord, 345)
	MisBeginCondition(NoMission, 358)
  	MisBeginAction(AddMission, 358)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "�������� � <b���> � ������ ")

	MisHelpTalk("<t>� �� ������!��������� ���!")
	MisResultCondition(AlwaysFailure )
-----------------------------------�����ʵ
	DefineMission( 530, " ��������� ����� ", 359 )

	MisBeginTalk( "<t>� ����� ������ �������. <n> <T> ���� �� �� ������ ���, ���������� �� ��� �����!��� �������� ����������� ����� ����� ������� ������ �������. �� ��������, ��� ������ ������� ���������� ������? � ������ ����� ������� �� �����!�� ���� ��� ���� ������ ��� �������. <n> <T> ������ �� ���� ������ �� ��������  <b����> (3298, 2534)?")
	MisBeginCondition(NoRecord, 359)
	MisBeginCondition(NoMission, 359)
	MisBeginCondition(HasMission, 358)
	MisBeginAction(SetRecord, 358 )
	MisBeginAction(ClearMission, 358 )
  	MisBeginAction(AddMission, 359)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� ���� � ������.")

	MisHelpTalk("<t>� ��� ��������� ��� ���,��� ����.")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����ʵ
	DefineMission( 531, " ��������� ����� ", 360 )

	MisBeginTalk( "<t>���������� ����?������ �� ����!�� ������������� �� ���!� �� ������� � <p��������� ������> !")
	MisBeginCondition(NoRecord, 360)
	MisBeginCondition(NoMission, 360)
	MisBeginCondition(HasMission, 359)
	MisBeginAction(ClearMission, 359 )
  	MisBeginAction(AddMission, 360)
	MisBeginAction(AddTrigger, 3601, TE_GETITEM, 4263, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� <p��������� �������> ")
	MisNeed(MIS_NEED_ITEM, 4263, 1, 1, 1)

	MisHelpTalk("<t>����� ��� �����...")
	MisResultCondition(AlwaysFailure )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4263 )
	TriggerAction( 1, AddNextFlag, 360, 1, 1 )
	RegCurTrigger( 3601 )

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 532, " ��������� ����� ", 361 )

	MisBeginTalk( "<t>��� ��� � ����� �����?��� �� � ��� �����.�� �������������� ��  ���!�������.")
	MisBeginCondition(NoRecord, 361)
	MisBeginCondition(HasMission, 360)
	MisBeginCondition(NoMission, 361)
	MisBeginCondition(HasItem, 4263, 1)
	MisBeginAction(ClearMission, 360 )
 	MisBeginAction(AddMission, 361)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ����� � ���������� � ����.")

	MisResultTalk("<t>� �������� ���� ������� �����,������� �� �� ��������� ���� ������?")
	MisHelpTalk("<t>��� ��� � ����� �����?��� �� � ��� �����.�� �������������� ��  ���!�������.")
	MisResultCondition(HasMission, 361)
	MisResultCondition(NoItem, 4263, 1)
   	MisResultAction(SetRecord, 361 )
	MisResultAction(ClearMission, 361 )

-----------------------------------����֣����
	DefineMission( 533, " ������ ���� ", 362 )

	MisBeginTalk( "<t>��,�� ������� � ��������� ������� ������ ���� ���� �������? <n> <T> ��� �����?�� ������.��������� ��� ������ <b������� ���� ��> �� ����������� (3290, 2512)")
	MisBeginCondition(NoRecord, 362)
	MisBeginCondition(NoMission, 362)
	MisBeginCondition(HasRecord, 361)
 	MisBeginAction(AddMission, 362)
 	MisBeginAction(GiveItem, 4250,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ����� ������� ���� �� ")

	MisResultTalk("<t>������ �� ����?�� *������* � ����� ��� ���������� ������ �������.")
	MisHelpTalk("<t>�������  ��������� ������.")
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasFlag, 362, 10)
   	MisResultAction(SetRecord, 362 )
	MisResultAction(ClearMission, 362 )

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 534, " ������������ ����� ", 363 )

	MisBeginTalk( "<t>�� ������ ������� ��������?�����.�� ��� �� ����� <n> <T>��� �������� �������,�� ��� �������� ������������ �������. �������, ��� �� ��� ��� ������ �������� ����.������� ���� �� �������� ���� ����� �����!����� ���� �� ��� �������.")
	MisBeginCondition(NoRecord, 363)
	MisBeginCondition(NoMission, 363)
	MisBeginCondition(HasRecord, 362)
  	MisBeginAction(AddMission, 363)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� ���� �� � ������� (3287, 2501)")

	MisHelpTalk("<t>� ��� ������...")
	MisResultCondition(AlwaysFailure )
	

-----------------------------------������
	DefineMission( 535, " ������ ", 364 )

	MisBeginTalk( "<t>������ ������� �������� ������?�� ����� ���� ������� ��� �������� ���������� �������. <n> <T> ��������� ��� ���� 3 ��,��������� ����� 3 ��,���� 3 ��.")
	MisBeginCondition(NoMission, 364)
 	MisBeginAction(AddMission, 364)
	MisBeginAction(AddTrigger, 3641, TE_GETITEM, 4259, 3)
	MisBeginAction(AddTrigger, 3642, TE_GETITEM, 4260, 3)
	MisBeginAction(AddTrigger, 3643, TE_GETITEM, 4261, 3)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ���� ����������� ")
	MisNeed(MIS_NEED_ITEM, 4259, 3, 1, 3)
	MisNeed(MIS_NEED_ITEM, 4260, 3, 5, 3)
	MisNeed(MIS_NEED_ITEM, 4261, 3, 10, 3)

	MisResultTalk("<t>.�� , ��� �� ��� �����.")
	MisHelpTalk("<t>���?�� ������?")
	MisResultCondition(HasMission, 364)
	MisResultCondition(HasItem, 4259, 3)
	MisResultCondition(HasItem, 4260, 3)
	MisResultCondition(HasItem, 4261, 3)
	MisResultAction(TakeItem, 4259, 3)
	MisResultAction(TakeItem, 4260, 3)
	MisResultAction(TakeItem, 4261, 3)
	MisResultAction(GiveItem, 4251, 1 ,4)	
 	MisResultAction(SetRecord, 364 )
 	MisResultAction(ClearMission, 364 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259 )
	TriggerAction( 1, AddNextFlag, 364, 1, 3 )
	RegCurTrigger( 3641 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4260 )
	TriggerAction( 1, AddNextFlag, 364, 5, 3 )
	RegCurTrigger( 3642 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261 )
	TriggerAction( 1, AddNextFlag, 364, 10, 3 )
	RegCurTrigger( 3643)

-----------------------------------��֮��
	DefineMission( 536, " ����� ������� ", 24 , COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>����� �������?��,������� �� ������,�������� ��� ����� ���� ������.<n> <T>�� ���� �� ��� �����������. �� ���� ��� ��������.")
	MisResultCondition(NoRecord, 24)
	MisResultCondition(HasMission, 24)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 24)
	MisResultAction(ClearMission, 24)

-----------------------------------������֮��
	DefineMission( 537, " ����� ������� ", 366 )

	MisBeginTalk( "<t>� ����� ���� ������ �� <r200000 �������> ")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasRecord, 24)	
	MisBeginCondition(HasItem, 4252,1)	
 	MisBeginAction(AddMission, 366)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "�������� ����� ������� ")

	MisResultTalk("<t>�� ����� ��?��������� ���� ��������������!")
	MisHelpTalk("<t>��� �����?")
	MisResultCondition(HasMission, 366)
	MisResultCondition(HasItem, 4252,1)
        MisResultAction(TakeItem, 4252, 1)	
        MisResultAction(AddMoney, 200000, 200000)	
 	MisResultAction(SetRecord, 366 )
 	MisResultAction(ClearMission, 366 )

-----------------------------------��֮��Ĵ�˵
	DefineMission( 538, " ������� � ����� ������� ", 367 )

	MisBeginTalk( "<t>��� �� ������������� ������ ������ � ����� �������? � ���� ������ ���� ������� <n> <T> �� ��� ����� ������ �������.��������� ���� �����.")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(HasRecord, 24)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasItem, 4252,1)
	MisBeginAction(AddMission, 367)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "����������  ���� �� ")

	MisResultTalk("<t> ������� ������,��� ����� ������� ��������� ���� � ������� �������!")
	MisHelpTalk("<t>� ��� ���� ����� �������?")
	MisResultCondition(HasMission, 367)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 367 )
 	MisResultAction(ClearMission, 367 )
	MisResultAction(ObligeAcceptMission, 25 )




-----------------------------------��֮�������
	DefineMission( 539, "����� ���� ������� ", 25, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��� ��� ������� ��������� ������?�� � ������� �� ����!!")
	MisResultCondition(NoRecord, 25)
	MisResultCondition(HasMission, 25)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 25)
	MisResultAction(ClearMission, 25)

-----------------------------------ʥˮ
	DefineMission( 540, " ������ ���� ", 369 )

	MisBeginTalk( "<t>������� ������ ��� ������ ������ � ������� ������ ���� � ��������.�� ���� �������� � ��� ���� ������� ����� � ������ ���������. <n> <T> ��������� � ���������� ������ <p(3800, 550)> , � � �������� ��� ��� �� ������������.")
	MisBeginCondition(NoRecord, 369)
	MisBeginCondition(NoMission, 369)
	MisBeginCondition(HasRecord, 25 )
	MisBeginAction(GiveItem, 4239,1,4)
 	MisBeginAction(AddMission, 369)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ����� ����� (3800, 550) ������� ������ � �����.")

	MisResultTalk("<t>���!��������� ��������� �� ����.")
	MisHelpTalk("<t>� ��� ��������? <p(3800, 550)> ��� ���� � ��������� �����! ")
	MisResultCondition(HasMission, 369 )
	MisResultCondition(HasItem, 4257,1)
        MisResultAction(TakeItem, 4257, 1)
	MisResultAction(GiveItem, 4240, 1, 4)
	MisResultAction(SetRecord, 369 )
 	MisResultAction(ClearMission, 369 )
	MisResultBagNeed(1)
 
 -----------------------------------ʥˮ
	DefineMission( 541, " ����� ", 370 )

	MisBeginTalk( "<t>��� �������� ����� ���������!")
	MisBeginCondition(HasRecord, 369)
	MisBeginCondition(NoRecord, 370)
	MisBeginCondition(NoMission, 370)
	MisBeginAction(AddMission, 370)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	
	MisNeed(MIS_NEED_DESP, "�������� ������ ���� �� ����� �������,��� �� ���������� ����.")

	MisHelpTalk("<t>�������� ������ ���� �� ����� �������,��� �� ���������� ����.")
	MisResultCondition(AlwaysFailure )
	
 
 -----------------------------------��ɰ�Ĵ��
	DefineMission( 542, " ����� ", 26 , COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t> ���� ������ ����� ������ ����� �� ������������. �� ��������,��� ������ ����� ��� �� ����? ������.���� �� ������� ��� ������ �� ����� �� ��������.")
	MisResultCondition(NoRecord, 26)
	MisResultCondition(HasMission, 26)
	MisResultAction(ClearMission, 26)
	MisResultAction(SetRecord, 26)
    MisResultAction(AddMoney, 200000)	
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,250000,250000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem, 7616, 1, 4) -- ������ ������� �� ����� 

	MisResultBagNeed(1)			-- ��������� ��������� ���� � ���������

-----------------------------------����֣������
	DefineMission( 543, " �������� ������ ���� ", 372 )

	MisBeginTalk( "<t>���������! �� �������! � ������� �� �� ������ �����? <n> <t> ���� ������,�� �����,������� ��������!������ ���������� ����� ������ � ��� (3195,2506)")
	MisBeginCondition(NoRecord, 372)
	MisBeginCondition(NoMission, 372)
	MisBeginCondition(HasMission, 27)
 	MisBeginAction(AddMission, 372)
	MisBeginAction(SetRecord, 27)
	MisBeginAction(ClearMission, 27)
	MisBeginAction(AddTrigger, 3721, TE_GETITEM, 4241, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "�������� ������� ���� �� ")
	MisNeed(MIS_NEED_ITEM, 4241, 1, 1, 1)

	MisResultTalk("<t>��!��� �� ��� � ������.")
	MisHelpTalk("<t>�� �������.")
	MisResultCondition(HasMission, 372)
	MisResultCondition(HasItem, 4241, 1)
	MisResultAction(TakeItem, 4241, 1 )
 	MisResultAction(SetRecord, 372 )
	MisResultAction(ClearMission, 372 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4241 )
	TriggerAction( 1, AddNextFlag, 372, 1, 1 )
	RegCurTrigger( 3721 )
 


 -----------------------------------����֣����
	DefineMission( 544, " ������ ���� ", 362 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��� ���� ��? ������... � ������������� �� ���� ��� ���������<n> <T> ��, ��������! � �� ����� ��� ��� ��...")
	MisResultCondition(NoRecord, 362)
	MisResultCondition(NoFlag, 362, 10)
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasItem, 4250, 1)
	MisResultAction(TakeItem, 4250, 1)
	MisResultAction(SetFlag, 362, 10)
	
-----------------------------------�»�
	DefineMission( 545, " ����� ������ ", 372 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>������ �� ������  � ���������� ������������  �������?")
	MisResultCondition(NoRecord, 372)
	MisResultCondition(NoFlag, 372, 10)
	MisResultCondition(HasMission, 372)
	MisResultAction(SetFlag, 372, 10)
	
-----------------------------------������̽
	DefineMission( 546, " ������������ ���� ", 375 )

	MisBeginTalk( "<t>�� ��� ����� �������?���� ��� �� ����������� ���� <p(2500, 2260)>")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)
	MisBeginCondition(HasFlag, 372, 10)
	MisBeginAction(AddMission, 375)
	MisBeginAction(GiveItem, 4258,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� �� <p(2500, 2260)> � ����������� ������� ")

	MisResultTalk("<t>�� ����� ��� �������?�������!.")
	MisHelpTalk("<t>�� ������ ����������? ��� <P (2500, 2260)")
       	MisResultCondition(HasMission, 28)
	MisResultCondition(HasItem, 4258, 1)
	MisResultAction(TakeItem, 4258, 1)
	MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 375 )
 	MisResultAction(ClearMission, 375 )
 	MisResultAction(ClearMission, 28 )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

 -----------------------------------��������
	DefineMission( 547, " ������� ����� ����� ", 376 )

	MisBeginTalk( "<t> �� �� ������ ���������� ����? ������.")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)	
	MisBeginAction(AddMission, 376)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	
	MisResultTalk("<t>� �������� �� �� , ��� �� ���������� ����.�� ���� �� ������ ���������� � 100000 �������� �������...")
	MisHelpTalk("<t>�������� 100000 ����� ������� ")
	MisResultCondition(HasMission, 376)
	MisResultCondition(HasMoney, 100000)
        MisResultAction(TakeMoney, 100000)	
        MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 376 )
 	MisResultAction(ClearMission, 376 )
	MisResultBagNeed(1)

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 548, " ������������ ����� ", 363 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> W��� �� ������������ ������? <n> <T> �� ���� ������� �������!")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(NoFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultAction(SetFlag, 363, 22)
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddExpAndType,2,50000,50000)

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 550, " ������������ ����� ", 363, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> ���... ���� �� ��� ��� �������� ���� �� ���� �������,� �������� ��� �� ������ ����� ������!<n> <T> ���������...��� �� ������ � ��� � �������? ��� �� ������ ���� ������!��� ������� ��� ����� 100 ��� �����.������-������,������� ��� ��� ��� ������.������ ������� � �� ��� ������ �����������. ������ ������ ���� ����� ������<n> <T> ����� ���� ��� ������ �����,��� ������ �������.")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(HasFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(TakeItem, 4235, 1)
	MisResultAction(SetRecord, 363)
	MisResultAction(ClearMission, 363)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem,3351,15,4)
	MisResultAction(GiveItem,3352,15,4)
	MisResultAction(GiveItem,3353,15,4)
	MisResultBagNeed(3)


 -----------------------------------��ɭ
	DefineMission( 551, " ������ ", 380 )

	MisBeginTalk( "<t>�� ����������� � �������?�-�� �� ����� ������ ������!")
	MisBeginCondition(HasRecord, 363)
	MisBeginCondition(NoRecord, 380)
	MisBeginCondition(NoMission, 380)
	MisBeginAction(AddMission, 380)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "��������� ���� �� (3287, 2501).")

	MisResultTalk("<t>��� ����� ���� ������������� ")
	MisHelpTalk("<t>�� ��� ����� ���� ������������� ")
	MisResultCondition(HasRecord, 386)
	MisResultCondition(HasMission, 380)
  	MisResultAction(SetRecord, 380 )
 	MisResultAction(ClearMission, 380 )
	


-----------------------------------����
	DefineMission( 552, " �������� ", 381 )

	MisBeginTalk( "<t>�...��� ������� ������� � ������ ����� ��������� ���� � ��� ��� �  ���������� ������ (3757, 1248), ����� ���� �� ������ ��� �����.����� ��� ��������� �������� ������� ���.")
	MisBeginCondition(NoRecord, 381)
	MisBeginCondition(NoMission, 381)
	MisBeginCondition(HasRecord, 290)
	MisBeginAction(AddMission, 381)
  	MisBeginAction(GiveItem,4253,1,4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	
	MisNeed(MIS_NEED_DESP, "���������� ����� (3757, 1248)")
	MisResultCondition(AlwaysFailure )


-----------------------------------����
	DefineMission( 553, " �������� ", 382 )

	MisBeginTalk( "<t>��,��� ������� ��������.����� ��� ����� ���������� �� ���� ����� ")
	MisBeginCondition(NoMission, 382)
	MisBeginCondition(HasMission, 29)
	MisBeginCondition(HasItem, 4233,1)
	MisBeginAction(ClearMission, 29)
	MisBeginAction(SetRecord, 29)
	MisBeginAction(AddMission, 382)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ������ ����� ")
	
	MisResultCondition(AlwaysFailure )
-----------------------------------����
	DefineMission( 554, " �������� ", 382, COMPLETE_SHOW )


	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>� ����,� ���� ��� �������� ����...�������!������ � ���� �� ���� ����� ��� � ��� ���������.")
	MisResultCondition(HasMission, 382)
	MisResultCondition(HasItem, 4233, 1)
	MisResultAction(TakeItem, 4233, 1)
	MisResultAction(ClearMission, 382)
	MisResultAction(SetRecord, 382)

-----------------------------------����
	DefineMission( 555, " �������� ", 383 )

	MisBeginTalk( "<t>���� � � ����� �������� � ������ ��� ������,��� �������� �������� ���� �������!")
	MisBeginCondition(NoRecord, 383)
 	MisBeginCondition(HasRecord, 382)
 	MisBeginCondition(NoMission, 383)
	MisBeginAction(AddMission, 383)
	MisBeginAction(AddTrigger, 3831, TE_KILL, 594, 10)
	MisBeginAction(AddTrigger, 3832, TE_KILL, 593, 5)
	MisBeginAction(AddTrigger, 3833, TE_KILL, 656, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ������ �����-������ x10 (1950, 3515); ������� ��������� �����-������ �� �5 (2210, 3769); ��������� ������� �����-������ �1 (1966, 3769)")
	MisNeed(MIS_NEED_KILL, 594, 10, 1, 10)
	MisNeed(MIS_NEED_KILL, 593, 5, 11, 5)
	MisNeed(MIS_NEED_KILL, 656, 1, 16, 1)

	MisResultTalk("<t>�������!�������!� ��� ����� ����������!")
	MisHelpTalk("<t>���� ��� ��� ��� ������....")
	MisResultCondition(HasMission, 383 )
	MisResultCondition(HasFlag, 383, 10)
	MisResultCondition(HasFlag, 383, 15)
	MisResultCondition(HasFlag, 383, 16)
 	MisResultAction(SetRecord, 383 )
 	MisResultAction(ClearMission, 383 )
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem,3878,1,4)
	MisResultAction(GiveItem,4715,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 594 )
	TriggerAction( 1, AddNextFlag, 383, 1, 10 )
	RegCurTrigger( 3831 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 593 )
	TriggerAction( 1, AddNextFlag, 383, 11, 5 )
	RegCurTrigger( 3832 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 656 )
	TriggerAction( 1, AddNextFlag, 383, 16, 1 )
	RegCurTrigger( 3833 )

-----------------------------------��ȥ
	DefineMission( 556, " ������ ", 384 )

	MisBeginTalk( "<t>������ �� �� ������ ������� � ����� ������? ��������� �� ����� �������. <n> <T> �� ������� ������� ��������,� �������� ����!�� ������ ��� ������� ������. <n> <T> ��������� ��� �������� �����������?���� �� ������� ��,� �������� � ���� ���������� ����������.")
	MisBeginCondition(NoRecord, 384)
	MisBeginCondition(NoMission, 384)
	MisBeginCondition(HasRecord, 290)
 	MisBeginAction(AddMission, 384)
	MisBeginAction(AddTrigger, 3841, TE_GETITEM, 4234, 1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� <r������� ��������> ��� ����� ��� (862,3303)")
	MisNeed(MIS_NEED_ITEM, 4234, 1, 1, 1)

	MisResultTalk("<t>� �� ����� ��� �� ������� �� ��� ������.")
	MisHelpTalk("<t>������ ������ ������...�������� �������� ��� �������.")
	MisResultCondition(HasMission, 384)
	MisResultCondition(HasItem,4234,1)
	MisResultAction(TakeItem, 4234,1 )
 	MisResultAction(SetRecord, 384 )
	MisResultAction(ClearMission, 384 )
	MisResultAction(AddExpAndType,2,60000,60000)
	
	MisResultAction(GiveItem,3878,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4234 )
	TriggerAction( 1, AddNextFlag, 384, 1, 1 )
	RegCurTrigger( 3841 )

-----------------------------------��ȥ
	DefineMission( 557, " ������ ", 384, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>������� ������?��,��� �� � ��� � ��� ������! ")
	MisResultCondition(NoRecord, 384)
	MisResultCondition(HasMission, 384)
	MisResultCondition(NoItem, 4234, 1)
	MisResultCondition(NoFlag, 384, 10)
	MisResultAction(SetFlag, 384, 10)

	
-----------------------------------------��ծ
      DefineMission(558," ���������� ������ ",386)

      MisBeginCondition(HasMission,380)
      MisBeginCondition(NoRecord,386)
      MisBeginCondition(NoMission,386)
 
      MisBeginTalk("<t>���? �� ������ ������ �� ������� �����? ��� ������������!��� �������� ������.� ��� ��� ��������.")
      MisBeginAction(AddMission,386)
      MisBeginAction(GiveItem,0948,1,4)
      MisBeginBagNeed(1)
      MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ") 

      MisNeed(MIS_NEED_DESP, "�������� ����� � �������, ����������� , ����, ���� , ����� - ������ , ���������� ����� ") 
      
      MisHelpTalk("<t>�������!�� ��� ����� �������.")
      
      MisResultTalk("<t>�������!�� ��� ����� �������.")
    
      MisResultCondition(NoRecord,386)
      MisResultCondition(HasFlag,386, 100)
      MisResultCondition(HasFlag ,386, 101)
      MisResultCondition(HasFlag,386, 102)
      MisResultCondition(HasRecord,389)
      MisResultCondition(HasRecord,391)
      MisResultCondition(HasRecord,400)
      MisResultCondition(HasRecord,393)
	  MisResultCondition(HasItem,0948,1)
      MisResultCondition(HasMoney,2000000)
      MisResultAction(TakeMoney,2000000)
      MisResultAction(TakeItem,0948,1)
      MisResultAction(GiveItem,0189,1,4)
      MisResultBagNeed(1)
      MisResultAction(ClearMission,380)
      MisResultAction(ClearMission, 386 )
      MisResultAction(SetRecord, 380 )
      MisResultAction(SetRecord,386)

      ----------------------------------��ծ      �����Σ�
      DefineMission(567," ���������� ������ ",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>�...���� ������ ���� ���� ��.�������� �� ������.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 100)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 100)
     


      ------------------------------------��ծ
       DefineMission(568," ���������� ������ ",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>O�...���� ������ ���� ���� ��.�������� �� ������.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag,386,101)
      MisResultAction(AddMoney,100000)
      MisResultAction(SetFlag,386,101)
    


      ----------------------------------------��Ů��ծ��
      DefineMission(569," ���������� ������ ",389)

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,389 )
      MisBeginCondition(NoMission,389 )
      MisBeginAction(AddMission,389)
      MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

      MisBeginTalk("<t>�...���� ������ ���� ���� ��.�������� �� ������.")
      
      MisNeed(MIS_NEED_DESP, "��� ����� ������� ���� � ���� �� ")

      MisHelpTalk("<t>��� ����� ������� ���� � ���� �� ")
       
     MisResultCondition(AlwaysFailure)

-------------------------------------------��Ů��ծ��
     DefineMission(570," ���������� ������ ",389, COMPLETE_SHOW)

     MisBeginCondition(AlwaysFailure)

     MisResultTalk("<t>�� ����� �� ������ ����� ���� ��?�� � ��� �� ������ �����������!��")

     MisResultCondition(HasMission,389)
     MisResultCondition(NoRecord,389)
     MisResultCondition(HasMoney,200)
     MisResultAction(TakeMoney,200)
     MisResultAction(AddMoney,200000)
     MisResultAction(ClearMission, 389 )
     MisResultAction(SetRecord, 389 )
     


---------------------------------------------��ծ
     DefineMission(563," ���������� ������ ",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>�� �� ������ �����?��������� ������...")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 102)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 102)



     ---------------------------------------------�ӻ����˵�ծ��
      DefineMission(564," ���������� ������ ",391)

      MisBeginTalk("<t>� ����� ��� ���� , �� ��� ����� ��������� ����������� ��� �������.")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,391)
      MisBeginCondition(NoMission,391)
      MisBeginAction(AddMission,391)
   
      MisBeginAction(AddTrigger, 3911, TE_GETITEM, 0176, 3 )		--��ȱ�Ĺ�ʬ��
      MisBeginAction(AddTrigger, 3912, TE_GETITEM, 0177, 3 )		--����Ĺ�ʬ��
      MisBeginAction(AddTrigger, 3913, TE_GETITEM, 0178, 3 )		--�����Ĺ�ʬ��
      MisCancelAction(SystemNotice, "����� �� ����� ���� ������")
      
      MisNeed(MIS_NEED_DESP, "����� � ��������� ������� � ��������� :����������� ����� ��� ������������ ���� � 3 ��,������������ ����� ��� ������������ ���� � 3 ��,����� ����� ��� ������������ ���� � 3 ��.")
      MisNeed(MIS_NEED_ITEM, 0176, 3, 10, 3)
      MisNeed(MIS_NEED_ITEM, 0177, 3, 20, 3)
      MisNeed(MIS_NEED_ITEM, 0178, 3, 30, 3)
      
      MisHelpTalk("<t>��� ��� ����.")  
      MisResultTalk("<t>��-��!������ � ������ ����� �������!")
      MisResultCondition(HasMission, 391 )
      MisResultCondition(HasItem, 0176, 3 )
      MisResultCondition(HasItem, 0177, 3 )
      MisResultCondition(HasItem, 0178, 3 )
      MisResultAction(TakeItem, 0176, 3 )
      MisResultAction(TakeItem, 0177, 3 )
      MisResultAction(TakeItem, 0178, 3 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 391 )
      MisResultAction(SetRecord, 391 )
      
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0176 )	
   TriggerAction( 1, AddNextFlag, 391, 10, 3 )
    RegCurTrigger(3911)
    
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0177 )	
   TriggerAction( 1, AddNextFlag, 391, 20, 3 )
    RegCurTrigger(3912) 
     
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0178 )	
   TriggerAction( 1, AddNextFlag, 391, 30, 3 )
    RegCurTrigger(3913)

--------------------------------------------------------�ۿ�ָ�ӡ�˪���ծ��
     DefineMission(565," ���������� ������ ",392)

      MisBeginTalk("<t>��,���� ����!�� ������ ��������� ��������� ����?��� �� ��������.��� ����� ��������� ���� � ���������.")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,392)
      MisBeginCondition(NoMission,392)
      MisBeginAction(AddMission,392)
      MisBeginAction(GiveItem,0949,1,4)
      MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
      MisBeginBagNeed(1)

      MisNeed(MIS_NEED_DESP, "��������� ������� � ��������� �������� ������������ - ������� (713, 1416)")
      MisHelpTalk("<t>��� �����?")
       
      MisResultTalk("<t>�� ��������� ����?�������,��� ��� ���� " )
      MisResultCondition(HasRecord,392) 
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission,392 )
      MisResultAction(SetRecord,400)

  -------------------------------------------------------�ۿ�ָ�ӡ�˪���ծ��

  DefineMission(566," ���������� ������ ",392, COMPLETE_SHOW )

      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>��,� ��� ������ �� �����!�� ��� �����,������� �� ������������ �������.")
      MisResultCondition(HasMission,392)
      MisResultCondition(NoRecord,392)
      MisResultCondition(HasItem,0949,1)
      MisResultAction(TakeItem,0949,1)
      MisResultAction(SetRecord,392)
      
       

   -----------------------------------------------------ó�����ˡ������ծ��

      DefineMission(572," ���������� ������ ",393)

      MisBeginTalk("<t> � ������ �� ��� ����,�� ������ ������ ��� ����������� ���� �� ������� ������,� ������ � ������ �������� �� �� ������... ")

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,393)
      MisBeginCondition(NoMission,393)
      MisBeginAction(AddMission,393)
   
      MisBeginAction(AddTrigger, 3931, TE_GETITEM, 1864, 5 )		 
      MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
      
      MisNeed(MIS_NEED_DESP, "��������� 5 ����������� ����� ")
      MisNeed(MIS_NEED_ITEM, 1864, 5, 10, 5)
      
      
      MisHelpTalk("<t>������ ������")  
      MisResultTalk("<t>�!�������!�� ��� ���������.��� ��� ����.")
      MisResultCondition(HasMission, 393 )
      MisResultCondition(HasItem, 1864, 5 )
      MisResultAction(TakeItem, 1864, 5 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 393 )
      MisResultAction(SetRecord, 393)

	  InitTrigger() 
   TriggerCondition( 1, IsItem, 1864 )	
   TriggerAction( 1, AddNextFlag, 393, 10, 5 )
    RegCurTrigger(3931)

--------------------------------------------��ɭ
     DefineMission(571," ������ ",394)
     MisBeginTalk("<t>������� �� ��������� �����. <n> <T>  ���� ����� � ���������� � ����.")
     MisBeginCondition(HasRecord,386)
      MisBeginCondition(NoMission, 394)
     MisBeginCondition(NoRecord, 394)
     MisBeginAction(AddMission, 394)
     MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

     MisNeed(MIS_NEED_DESP, "������ ���� �� ������.")
     MisHelpTalk("<t>����� ���������!")
      MisResultTalk("<t>��� �� ��� ������ ��� ��� �������...")
     MisResultCondition(NoRecord, 394)
     MisResultCondition(HasMission, 394)
     MisResultAction(SetRecord, 394 )
     MisResultAction(ClearMission, 394 )

----------------------------------------׷��
	 DefineMission(592," � ������� ",395)
	
	MisBeginTalk( "<t>������ ��� ���������� ����� � ���� �����, ��� �������������� ������... ���! � ���� �������� ������ ������,����� � ��������� �� ����!. �������� ��� �������� � ����������� ���� ������.� ����� ���������� �� ���������� �����.� ������ ��� ����� ����� ���������� � ������ � �������� �����." )
	MisBeginCondition(NoRecord, 395)
	MisBeginCondition(NoMission, 395)
	MisBeginCondition(HasRecord,394)
	MisBeginAction(AddMission,395)
	MisBeginAction(GiveItem, 1051, 1, 4)	----------------Īа����	
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� ����� ")
	
	MisHelpTalk("<t>������� ����� ��!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------׷��
	DefineMission(593, " � ������� ", 395, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>� ����,��� ���������� ������ ���� � ���...!")
	MisResultCondition(NoRecord, 395)
	MisResultCondition(HasMission,395)
	MisResultAction(ClearMission,395)
	MisResultAction(SetRecord, 395)
       -----------------------------------------------------��յĶ���
	DefineMission(594," ������ ����� ",396)
	
	MisBeginTalk( "<t>� �� ����� ��� ������!������� � ���� �������� �������,�� � �� ����� ������ �� ������.� ����� �����-����� ������ �������� ��� ��� �� ���.�� ���� �������� ���?" )
	MisBeginCondition(NoRecord, 396)
	MisBeginCondition(NoMission, 396)
	MisBeginCondition(HasRecord,395)
	MisBeginAction(AddMission,396)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� �����-������ ")
	
	MisHelpTalk("<t>������� ��� ��������!")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------��յĶ���
	DefineMission(5065," ������ ����� ",396)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>� ����� �������� �������?� ����� � � �������� ������ �����...")
	MisResultCondition(NoRecord, 396)
	MisResultCondition(HasMission,396)
	MisResultAction(ClearMission,396)
	MisResultAction(SetRecord, 396)
	

---------------------------------------------------------------����ʿ����
	DefineMission(595," ����� ������ ��������� ",397)

      MisBeginTalk("<t>����� ��� ���� � ��������� ����...������ 10 ����� ��������� ")

      MisBeginCondition(HasRecord,396)
      MisBeginCondition(NoRecord,397)
      MisBeginCondition(NoMission,397)
      MisBeginCondition(HasItem,1051,1)----------Īа����
      MisBeginAction(TakeItem,1051,1)
      MisBeginAction(AddMission,397)
      MisBeginAction(AddTrigger, 3971, TE_KILL, 748, 10)
   
      MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
      MisNeed(MIS_NEED_DESP, "������ 10 ����� ��������� ")
      MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)

      MisHelpTalk("<t>������ 10 ����� ���������  �� �.����� ")  
      MisResultTalk("<t>�� ������� ������������.")
      MisResultCondition(HasMission, 397 )
      MisResultCondition(HasFlag, 397, 19)
      MisResultAction(AddMoney,100000)
      MisResultAction(ClearMission, 397 )
      MisResultAction(SetRecord, 397)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 748 )
      TriggerAction( 1, AddNextFlag, 397, 10, 10 )
      RegCurTrigger( 3971 )
-------------------------------------------------------Ϊ��ս���
	DefineMission(5066," ������ ����� ",992)
	
	MisBeginTalk( "<t>������ ���� ���� � �����...." )
	
	MisBeginCondition(HasRecord,397)
	MisBeginCondition(NoRecord, 992)
	MisBeginCondition(NoMission, 992)
	MisBeginAction(AddMission,992)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "��������� ����� ")
	
	MisHelpTalk("<t>�������!� ������� �� ������ ���� ������.")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------Ϊ��ս���
	DefineMission(5067," ������ ����� ",992)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>��������� � ����� ���������...������� ��� ��������� �������������.")

	MisResultCondition(HasMission,992)
	MisResultCondition(NoRecord, 992)
	MisResultAction(ClearMission,992)
	MisResultAction(SetRecord, 992)
	MisResultAction(AddMoney,30000)

	------------------------------------------------------------�����ȵĶ���
       DefineMission(596," ������ ������� ",398)
	
	MisBeginTalk( "<t>�� ����� �� �� ��� ������?��� ������� ��������...������� � ��� ���� �������� �� ����." )
	MisBeginCondition(NoRecord, 398)
	MisBeginCondition(NoMission, 398)
	MisBeginCondition(HasRecord,992)
	MisBeginAction(AddMission,398)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� �������� (1360, 519)")
	
	MisHelpTalk("<t>�� ����� ��?")
	MisResultCondition(AlwaysFailure)
	----------------------------------------------�����ȵĶ���
	 DefineMission(597," ������ ������� ",398)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>����� ��������� ��� �����������?� � ����� �������.")
	MisResultCondition(NoRecord, 398)
	MisResultCondition(HasMission,398)
	MisResultAction(ClearMission,398)
	MisResultAction(SetRecord, 398)	
	------------------------------------------------��Ȳ�����
	 DefineMission(598," ������ ������� ",399)
	
	MisBeginTalk( "<t>��������� ���� ����� ��� ��������� ������.� �� �����!����� �� ����� ��� ��� ����...����������� ���������� �����-������,�������� �� ������ ������." )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 399)
	MisBeginCondition(HasRecord,398)
	MisBeginAction(AddMission,399)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� �����-������ ")
	
	MisHelpTalk("<t>�� ��� �� ����� ���?")

	MisResultTalk("<t>�������.�� ����� �����.���������!��������� ����� ����� � ������� ��� �����-����� ���� ���.")
	MisResultCondition(NoRecord, 399)
	MisResultCondition(HasMission,399)
	MisResultCondition(HasRecord,950)
	MisResultAction(ClearMission,399)
	MisResultAction(SetRecord, 399)

	--------------------------------------------------------����ˮ����
	DefineMission( 599, " ������ ������� ", 996 )

	MisBeginTalk( "<t>��..��� �������...��� �� ������ ����������!����� ��� ����������� ����������� ���.��������� ��� 2 �� - �������� �������� � 3 �� - ��������� ��������. ")------------++++++
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoRecord, 996)
	MisBeginCondition(NoMission, 996)
	MisBeginCondition(HasMission,399)
	MisBeginAction(AddMission, 996)
	MisBeginAction(AddTrigger, 9961, TE_GETITEM, 3366,2 )		--��ɫˮ��
	MisBeginAction(AddTrigger, 9962, TE_GETITEM, 1635, 3 )		--ˮ����ʯ
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

        MisNeed(MIS_NEED_DESP, "��������� 2 �� - �������� �������� � 3 �� - ��������� ��������.")
	MisNeed(MIS_NEED_ITEM, 3366,2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1635, 3, 20, 3)


	MisResultTalk("<t>� ������������ , ��� �� ��������� , �� �� ����� ��� ��� ������!")
	MisHelpTalk("<t>��� ���������?� �� ����� ��� ��� ������� ������...")
	MisResultCondition(HasMission, 996)
	MisResultCondition(HasItem, 3366, 2 )
	MisResultCondition(HasItem, 1635, 3 )
	
	MisResultAction(TakeItem, 3366, 2 )
	MisResultAction(TakeItem, 1635, 3 )
	
	MisResultAction(ClearMission, 996)
	MisResultAction(SetRecord, 996 )---------------------set996
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	


	InitTrigger()
	TriggerCondition( 1, IsItem,3366)	
	TriggerAction( 1, AddNextFlag, 996, 10, 2 )
	RegCurTrigger( 9961 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1635)	
	TriggerAction( 1, AddNextFlag, 996, 20, 3 )
	RegCurTrigger(9962 )

	----------------------------------------------------------------------------��������
	DefineMission( 5000, " ������ ������� ", 950 )

	MisBeginTalk( "<t>�������� �� ������� ����� ��� ����� ����������!��� ������� ������� ������.����� ���� �� ������ 5 ������ ��� ������ ����� ���������." )
	MisBeginCondition(NoRecord, 950 )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 950 )
	MisBeginCondition(HasRecord,996)-----------------
	MisBeginAction(AddMission,  950 )
	MisBeginAction(AddTrigger,  9501, TE_KILL,761, 5 )	----------����
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	
	MisNeed(MIS_NEED_DESP, "������ 5 ������ ")
	MisNeed(MIS_NEED_KILL,761,5, 10, 5)

	MisResultTalk("<t>������������� � �������� ")
	MisHelpTalk("<t>��...�� ����� ����� 5 ������?")
	MisResultCondition(HasMission,  950 )
	MisResultCondition(NoRecord,  950)
	MisResultCondition(HasFlag,  950, 14 )
	MisResultAction(ClearMission, 950 )
	MisResultAction(SetRecord,  950  )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 761)	
	TriggerAction( 1, AddNextFlag,   950 , 10,5)
	RegCurTrigger(   9501 )

---------------------------------------------------------------------��������

	DefineMission( 5001, " ������ ������� ", 951 )

	MisBeginTalk( "<t>��� ��� ��� �������!��...��� ������� ��� ��� ���� ����� 1 ������� ���� � ��� ����������." )--------++++++0
	MisBeginCondition(NoRecord, 951 )
	MisBeginCondition(HasRecord, 399)
	MisBeginCondition(NoMission, 951 )
	MisBeginAction(AddMission,  951)
	MisBeginAction(AddTrigger,  9511, TE_KILL, 776, 1 )----------------����
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ ������� ����")
	MisNeed(MIS_NEED_KILL,776,1, 10, 1)

	MisResultTalk("<t>������ ��� ����� ������ � �����!����� ��� ����� ")
	MisHelpTalk("<t>����� ����������.")
	MisResultCondition(HasMission,  951)
	MisResultCondition(NoRecord,  951)
	MisResultCondition(HasFlag,  951, 10 )
	MisResultAction(ClearMission,  951 )
	MisResultAction(SetRecord,  951  )
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 776)	
	TriggerAction( 1, AddNextFlag,  951 , 10,1)
	RegCurTrigger(   9511 )

-----------------------------------------------------------------------�ش�����

	DefineMission( 5002, " ������� ������ ",952 )

	MisBeginTalk( "�-�...� ���� �� ������� � ���� �������� �����. �������� ��� , � � ������ ���.������ 1 ������������� ������." )
	MisBeginCondition(NoRecord,952 )
	MisBeginCondition(HasRecord, 951)
	MisBeginCondition(NoMission,952 )
	MisBeginAction(AddMission, 952)
	MisBeginAction(AddTrigger,9521, TE_KILL, 621, 1 )		----Ѹ�ݵı���ˮĸ
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	 MisNeed(MIS_NEED_DESP, "������ 1 ������������� ������ � ���������� ������.")----------++++1
	MisNeed(MIS_NEED_KILL,621,1, 10, 1)

	MisResultTalk("<t>�������...")
	MisHelpTalk("<t>����� ��� ������� �������� ��� ����� (3750, 1275)")
	MisResultCondition(HasMission,952 )
	MisResultCondition(HasFlag, 952, 10 )
	MisResultAction(ClearMission, 952 )
	MisResultAction(SetRecord,952 )
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 621)	
	TriggerAction( 1, AddNextFlag,  952 , 10,1)
	RegCurTrigger( 9521 )
------------------------------------------------------------------��ɭ����

	DefineMission( 5003, " ��� ������� ", 953)
	
	MisBeginTalk( "<t>� ���������� ������ ������� ������ ��� ��.���� ��  ������ ������ ������ , �� ���������� � ���� �� �� �.�����.")
	MisBeginCondition(NoRecord, 953 )
	MisBeginCondition(HasRecord, 952)
	MisBeginCondition(NoMission, 953 )
	MisBeginAction(AddMission, 953 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "���������� � ���� �� ")
	MisHelpTalk("<t>��� ������� ���.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ɭ����

	DefineMission(5004," ��� ������� ",953,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>��� ��� �� ��� ������� ��� ����� � ������� (������ � ��� �������� ���������� :o)")
	MisResultCondition(HasMission, 953)
	MisResultCondition(NoRecord, 953)
	MisResultAction(ClearMission, 953)
	MisResultAction(SetRecord, 953)

-----------------------------------------------------�������

	DefineMission( 5005, " ��������� ���� �� ", 954 )

	MisBeginTalk( "<t>��� ��������, ��� �������� ����� �� ������� ������.����� ���� � ������ <r������ ������������> �� ����� �������� ���������  ���������." )
	MisBeginCondition(NoRecord, 954)
	MisBeginCondition(HasRecord,  953)
	MisBeginCondition(NoMission, 954)
	MisBeginAction(AddMission,  954)
	MisBeginAction(AddTrigger,  9541, TE_GETITEM,  0376,1 )		
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	 MisNeed(MIS_NEED_DESP, "��������� <r������ ������������> ")
	MisNeed(MIS_NEED_ITEM,  0376,1, 10, 1)
	
	MisResultTalk("<t>������� �� ������.")
	MisHelpTalk("<t>������� ���� � ������� (894, 3602) ������� ��� ")-------------------+++++2
	MisResultCondition(HasMission,  954)
	MisResultCondition(NoRecord, 954)
	MisResultCondition(HasItem, 0376, 1 )
	MisResultAction(TakeItem,  0376, 1 )
	MisResultAction(ClearMission,  954)
	MisResultAction(SetRecord,  954 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,0376)	
	TriggerAction( 1, AddNextFlag,954, 10, 1 )
	RegCurTrigger( 9541 )

------------------------------------------------------------------ħ����ͷ��

	DefineMission( 5006, "��������� ������� ����.", 955 )

	MisBeginTalk( "<t>���� ���� �����,� ������ ���� ����� �����!�� ��� ����� ��������� ��� ����� ��������� ��������.�� ���� �������� ��� ������� ����������?��� ���� ��������� ����� � 3�� ." )
	MisBeginCondition(NoRecord,  955)
	MisBeginCondition(HasRecord,  954)
	MisBeginCondition(NoMission, 955)
	MisBeginAction(AddMission,  955)
	MisBeginAction(AddTrigger,  9551, TE_GETITEM,  1626,3 )		
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	 MisNeed(MIS_NEED_DESP, "������� ��������� ����� 3�� ")
	MisNeed(MIS_NEED_ITEM,  1626,3, 10, 3)
	
	MisResultTalk("<t>�!� �� ������ ��� �� ������� ��� ������.")
	MisHelpTalk("<t>����� ����� ���������� ������.....")--------------------++++++3
	MisResultCondition(HasMission,  955)
	MisResultCondition(NoRecord, 955)
	MisResultCondition(HasItem, 1626, 3 )
	MisResultAction(TakeItem,  1626, 3 )
	MisResultAction(ClearMission,  955)
	MisResultAction(SetRecord,  955 )
	MisResultAction(AddExp,200000,200000)
	MisResultAction(AddMoney,700000,700000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1626)	
	TriggerAction( 1, AddNextFlag, 955, 10, 3 )
	RegCurTrigger( 9551 )
------------------------------------------------------------------------�߼�Ӫ��Ʒ

	DefineMission( 5007, " ����� ����������� ������� ", 956)

	MisBeginTalk( "<t>������ ��� ����� ��� ������." )
	MisBeginCondition(NoRecord,  956)
	MisBeginCondition(HasRecord,  955)
	MisBeginCondition(NoMission, 956)
	MisBeginAction(AddMission,  956)
	MisBeginAction(AddTrigger,  9561, TE_GETITEM,  4783,1 )		
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� 1 ��� ������ ")
	MisNeed(MIS_NEED_ITEM,  4783,1, 10, 1)
	
	MisResultTalk("<t>��,��� �� ��� ����!")
	MisHelpTalk("<t>������� ��� ��� ������?")
	MisResultCondition(HasMission,  956)
	MisResultCondition(NoRecord, 956)
	MisResultCondition(HasItem, 4783, 1)
	MisResultAction(TakeItem,  4783, 1 )
	MisResultAction(ClearMission,  956)
	MisResultAction(SetRecord,  956)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,4783)	
	TriggerAction( 1, AddNextFlag, 956, 10, 1 )
	RegCurTrigger( 9561 )
---------------------------------------------------------------------------�����Ĺ�ȥ
	 DefineMission(5008," ������� ������� ",957)
	
	MisBeginTalk( "<t>����� ��� ������� ���������� � ������ �������� � ������� " )
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(NoMission, 957)
	MisBeginCondition(HasRecord,956)
	MisBeginAction(AddMission,957)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� ������� (862, 3500) � �������.")
	
	MisHelpTalk("<t>������� ������� (862, 3500) � �������. ")
		
	MisResultTalk("<t>� ������ ��� ������ ���� ��������,�� ������� �� �������� ���!")
	MisResultCondition(NoRecord, 957)
	MisResultCondition(HasMission, 957)
	MisResultCondition(HasRecord, 999)---
	MisResultAction(ClearMission, 957)
	MisResultAction(SetRecord,  957 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)


------------------------------------------------------------------------��¡֮�ػ�����1��

	DefineMission(5009,"Memory Soup",958)
	
	MisBeginTalk( "<t>�� ������ �������� ���� �������?���� � ������ ���.��� ����������� <r��� ������>....��,��� �� ��� �� ����� �����������!������ ������ ���� � <b ������ ������� �������>." )
	MisBeginCondition(NoRecord, 958)
	MisBeginCondition(NoMission, 958)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,1)
	MisBeginAction(AddMission,958)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� ������ ������� � �������� ������� ����.")
	
	MisHelpTalk("<t>�� ������ ����� ������ ��������� �������� �� ������ (1254, 3491)")
	MisResultTalk("<t>�������� ����� � �������.�<n> <T>��  �������� �� ������� �������.������� �� ���� �����, ��������� �������� �������-���������� ������� �������  ���� ����������� ��������� � ������� � ���������� �������� � ����.")
	
	MisResultCondition(NoRecord, 958)
	MisResultCondition(HasRecord, 962)
	MisResultCondition(HasMission, 958)
	MisResultCondition(HasItem, 1043, 1 )--------�ػ���
	MisResultAction(TakeItem,  1043, 1 )
	MisResultAction(ClearMission, 958)
	MisResultAction(SetRecord,  958 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	
---------------------------------------------------------------------------Ѫʯ��1��

	DefineMission(5010," �������� ������ ",959)
	
	MisBeginTalk( "<t>������ ���� ������ �������� �������� ������.� �� ��� ��� ��� ��� �����.�� ���� �� �������� ��� , �� � ������ ���.�� ��� ����� � ������� � �������� ����� ,� ��� �� ��� �� ��������� � <b���������>.��� ������ ������� ������,�� ������������� �� ���!" )
	MisBeginCondition(NoRecord, 959)
	MisBeginCondition(NoMission, 959)
	MisBeginCondition(HasMission, 958)
	MisBeginCondition(NoRecord,958)
	MisBeginAction(AddMission,959)

	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "���������� � ��������� � �������� ����� ")
	
	MisHelpTalk("<t>�������� ��������� � ���������� ������ ")
	

	MisResultTalk("<t>�������� �����! (������ ������ � ����� ����� =3) �� �� ����� ���� ���� ����� �����!��...������")
	MisResultCondition(NoRecord, 959)
	MisResultCondition(HasMission, 959)
	MisResultCondition(HasRecord, 960)
	MisResultCondition(HasItem, 1040, 1)
	MisResultAction(TakeItem, 1040, 1 )
	MisResultAction(ClearMission, 959)
	MisResultAction(SetRecord,  959 )

	
---------------------------------------------------------------------------���뺯��1��

	DefineMission( 5011, " ����������� ", 960 )
	
	MisBeginTalk( "<t>� ������ ������� �������� ������ �������.�� ������ ��������� � ������� ����,� � ��� ��� ����� ���������� ��.�������� �� ����������� � ������ ��� ���� ��� �������� ������." )
	MisBeginCondition(NoRecord, 960)
	MisBeginCondition(HasMission, 959)
	MisBeginCondition(NoMission,960)
	MisBeginCondition(NoRecord,959)
	MisBeginAction(AddMission, 960)
	MisBeginAction(GiveItem, 1041, 1, 4)	----------���뺯	
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "�������� ����������� ������� ���� � �������.")
	
	MisHelpTalk("<t>������ �� �� �����?")
	MisResultCondition(AlwaysFailure)
	
-----------------------------------------------------------------------���뺯��1��

	DefineMission(5012," ����������� ",960,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��-��!������ ���� ������.")
	MisResultCondition(NoRecord, 960)
	MisResultCondition(HasMission, 960)
	MisResultCondition(HasItem, 1041, 1)
	MisResultAction(TakeItem, 1041, 1 )
	MisResultAction(GiveItem, 1040, 1,4)--------------Ѫʯ
	MisResultAction(ClearMission, 960 )
	MisResultAction(SetRecord,  960 )
	MisResultBagNeed(1)

	-----------------------------------------------------------------�ػ���ҩ��(1) 
	DefineMission(5014, " ������ ���� ������ ", 961 )

	MisBeginTalk( "<t>������ ���� ������ ���������� �������:10 �� - ����� ������ �������� ���������,1 �� - ������� ����� ����������� ��������.������� ��� ����������� , � � ���� ������������. " )
	MisBeginCondition(NoRecord, 961)
	MisBeginCondition(HasRecord, 959)
	MisBeginCondition(NoMission, 961)
	MisBeginAction(AddMission, 961)
	MisBeginAction(AddTrigger, 9611, TE_GETITEM, 1234,10)		
	MisBeginAction(AddTrigger, 9612, TE_GETITEM, 1260, 1 )
	
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	 MisNeed(MIS_NEED_DESP, "������� 10 �� - ����� ������ �������� ���������,1 �� - ������� ����� ����������� ��������.")
	MisNeed(MIS_NEED_ITEM, 1234,10, 10,10)
	MisNeed(MIS_NEED_ITEM, 1260, 1, 20, 1)
	
	MisResultTalk("<t>�������!�� ������� ���� ������ �� ������ ����� ����� ������!����� �� ����������� ������.")
	MisHelpTalk("<t>� ������� � ��� �����������...����...")
	MisResultCondition(HasMission,961)
	MisResultCondition(NoRecord, 961)
	MisResultCondition(HasItem, 1234, 10 )
	MisResultCondition(HasItem, 1260, 1 )
	
	MisResultAction(TakeItem, 1234, 10 )
	MisResultAction(TakeItem, 1260, 1 )
	
	MisResultAction(ClearMission, 961)
	MisResultAction(SetRecord, 961 )
	MisResultAction(GiveItem, 1043, 1, 4)-------�ػ���
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1234)	
	TriggerAction( 1, AddNextFlag, 961, 10, 10 )
	RegCurTrigger(9611 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1260)	
	TriggerAction( 1, AddNextFlag, 961, 20, 1 )
	RegCurTrigger(9612 )
	
	
------------------------------------------------------���º�����(1) 

	DefineMission( 5015, " ������ ��������� ", 962 )

	MisBeginTalk( "<t>������� �� �� ������� ��� ����� ��� ����� ����� ��� ������. ��! � ����� ����� ����� ������. ��� ������ ����� �������.�� ������ ��� ���� ������ ����� ����������....� �� ��� ����� ���� �������� ��� ����� ����� �������� 1 <������ ���������l>, ��� �������� ����������� ���������� ��������� ���������." )
	MisBeginCondition(NoRecord,  962)
	MisBeginCondition(HasRecord,  961)
	MisBeginCondition(NoMission,962)
	MisBeginAction(AddMission,  962)
	MisBeginAction(AddTrigger,  9621, TE_GETITEM,  3362,1)--------������		
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� 1 ������ ��������� ")
	MisNeed(MIS_NEED_ITEM,  3362,1, 10, 1)
	
	MisResultTalk("<t>������������� ������ ��������� ����� ������ ����� ������������� ����.!")
	MisHelpTalk("<t>������� � ���� ������ �������� ������ ���������.")-------------------++++++++4
	MisResultCondition(HasMission,  962)
	MisResultCondition(NoRecord,962)
	MisResultCondition(HasItem, 3362, 1 )
	MisResultAction(TakeItem,  3362, 1 )
	MisResultAction(ClearMission,  962)
	MisResultAction(SetRecord,  962)
	MisResultAction(AddExp,500000,500000)
	MisResultAction(AddMoney,200000,200000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3362)	
	TriggerAction( 1, AddNextFlag, 962, 10, 1 )
	RegCurTrigger( 9621 )



------------------------------------------------------------------Ů��Ļ���֮���佺�ң�2��
	DefineMission(5017," ������� ������ ",963)
	
	MisBeginTalk( "<t>�� ������ ��������� ���� �������?����...� ������ ���.��� ����� �������� ������ ������� ������.� ����� ��� ������ ������������ �������." )
	MisBeginCondition(NoRecord, 963)
	MisBeginCondition(NoMission, 963)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,3)----������
	MisBeginAction(AddMission,963)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� ������������ ������� � ���������� � ������� ������")
	
	MisHelpTalk("<t>������������ ������� ������ ���� � ������� (2159, 2792).")
	MisResultTalk("<t>������� � ���?�� ���� <n> <T> �������� ����� � ������� ��.�� - ����������� ������� � ������ ������.�������� � ����������� ����� � ������ ������ ������������ � ������� ����. ������������ ������������� ���� �������  �������� ��� � ������� ������������, ������������� � �������� ����������.....� ������ ������� ���� ��") 
	MisResultCondition(NoRecord, 963)
	MisResultCondition(HasMission, 963)
	MisResultCondition(HasRecord, 967)
	MisResultCondition(HasItem,  1050, 1 )-------���佺��
	MisResultAction(TakeItem,  1050,1 )
	MisResultAction(ClearMission, 963)
	MisResultAction(SetRecord,  963 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

--------------------------------------------------------------------��֮���꣨2��
	DefineMission(5018," �������� ����� ",964)

	MisBeginTalk( "<t>���� �� ������ ��� �� ��������� ����� ���������� � ������� ������. �� �������� �� ����� ������ ����� ������ ����. <n> <T> ��������� �������� ����� ����� � ������ � � ������� � ����� �������.")
	MisBeginCondition(NoRecord, 964)
	MisBeginCondition(NoMission, 964)
	MisBeginCondition(HasMission, 963)
	MisBeginCondition(NoRecord,963)
	MisBeginAction(AddMission,964)
	MisBeginAction(GiveItem, 2303, 1, 4)---------+++++????
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")
	MisBeginBagNeed(1)	
	MisNeed(MIS_NEED_DESP, "��������� ����� ����� � ������ (852, 3549).")
	
	MisHelpTalk("<t>�� �������...����� ����� �������� ������ ���� �������.")
	
	MisResultCondition(AlwaysFailure)
	----------------------------------------------------------------------��֮���꣨2��
	DefineMission(5019," �������� ����� ",964,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�������. � ����, ��� ��� �� ������� ������ ���� ��������.")
	MisResultCondition(NoRecord, 964)
	MisResultCondition(HasMission, 964)
	MisResultCondition(HasItem,2303, 1)-------------++++++???
	MisResultAction(TakeItem, 2303, 1 )-------------++++++????
	MisResultAction(ClearMission,964)
	MisResultAction(SetRecord,  964)
	MisResultAction(AddMoney,80000,80000)	
		
	

---------------------------------------------------------------���ƣ�����


	DefineMission( 5020, " �������������� ������� ", 965)

	MisBeginTalk( "<t>��� ��� ����� ������ �������!��������� 1 ����. ������� �������. �������� " )--------------+++++5
	MisBeginCondition(NoRecord,  965)
	MisBeginCondition(HasRecord,  964)
	MisBeginCondition(NoMission,965)
	MisBeginAction(AddMission,  965)
	MisBeginAction(AddTrigger,  9651, TE_GETITEM,  1296,1)	
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� 1 ����. ������� �������. �������� ")
	MisNeed(MIS_NEED_ITEM,  1296,1, 10, 1)
	
	MisResultTalk("<t>��������-������� ��������!")
	MisHelpTalk("<t>� ������� �������...")
	MisResultCondition(HasMission,965)
	MisResultCondition(NoRecord, 965)
	MisResultCondition(HasItem, 1296, 1 )
	MisResultAction(TakeItem,  1296, 1)
	MisResultAction(ClearMission,  965)
	MisResultAction(SetRecord,  965)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1296)	
	TriggerAction( 1, AddNextFlag,965, 10, 1 )
	RegCurTrigger( 9651 )

--------------------------------------------------����Ҷ������
	DefineMission(5021, " ���������� ������ ", 966 )

	MisBeginTalk( "<t>��� ����� 1 ���������� ������.� ��� ����� ����������� �� ����� �������...")
	MisBeginCondition(NoRecord,  966 )
	MisBeginCondition(HasRecord,  965)
	MisBeginCondition(NoMission, 966 )
	MisBeginAction(AddMission,  966 )
	MisBeginAction(AddTrigger,  9661, TE_GETITEM,  3143,1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

        MisNeed(MIS_NEED_DESP, "��� ����� 1 ���������� ������.� ��� ����� ����������� �� ����� �������...")
	MisNeed(MIS_NEED_ITEM,  3143,1, 10, 1)
	
	MisResultTalk("<t>������ ������ � ���������.")
	MisHelpTalk("<t>������ ������ � ���������.")-----------------------++++++++6
	MisResultCondition(HasMission,  966 )
	MisResultCondition(NoRecord, 966 )
	MisResultCondition(HasItem, 3143, 1 )
	MisResultAction(TakeItem,  3143,1 )
	MisResultAction(ClearMission,  966 )
	MisResultAction(SetRecord, 966 )
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3143)	
	TriggerAction( 1, AddNextFlag, 966 , 10, 1 )
	RegCurTrigger( 9661 )

--------------------------------------------------------------------------------------������(2)
	DefineMission( 5022, " �������� ������ ", 967 )

	MisBeginTalk( "<t>����� ��� ������.������� ��� ������ ,�� ��������� ������� �� ��������� ���������.��� �� ����� �������� ��� ����������� ������ ����� ��������  - 1 ��")------------------++++++++7
	MisBeginCondition(NoRecord,  967)
	MisBeginCondition(HasRecord,  966 )
	MisBeginCondition(NoMission, 967)
	MisBeginAction(AddMission,  967)
	MisBeginAction(AddTrigger,  9671, TE_GETITEM,  1351,1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	
	MisNeed(MIS_NEED_DESP, "������� ������ ����� ��������  - 1 �� ")
	MisNeed(MIS_NEED_ITEM,  1351,1, 10, 1)
	
	MisResultTalk("<t>�� ������� ���!�� ������ �� �������� ��� �����...")
	MisHelpTalk("<t>������� ������ ����� ��������  - 1 ��")
	MisResultCondition(HasMission, 967)
	MisResultCondition(NoRecord, 967)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultAction(TakeItem,  1351,1 )
	MisResultAction(ClearMission, 967)
	MisResultAction(SetRecord,  967)
	MisResultAction(GiveItem, 1050, 1, 4)-------���佺��
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 967, 10, 1 )
	RegCurTrigger( 9671 )


		
	
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------��Ѫ��֮��������(3) 
	DefineMission(5024," �������� ������� ",968)
	
	MisBeginTalk( "<t>�� ������ ��������� �������?�� ���� � ������ ���.������� ������� , ��� ����� ���������� � ���� ��������." )
	MisBeginCondition(NoRecord, 968)
	MisBeginCondition(NoMission, 968)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,2)
	MisBeginAction(AddMission,968)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� ������ � ������� (1244,3186)")
	
	MisHelpTalk("<t>������� ������ � ������� (1244,3186)")
	MisResultTalk("<t>�������� ����� � �������. <n> <T> �� ���� �������� � ��������.����� ����� ��� ������������ ������������� ������ ������, �������� ������� �������� ����� �� ���� ���������, � ���� ���� ������� �������� �� ����������� �������� ���������. ����� ��� ����������� ���������� ���, ����� ������ ������������� ����������, � �� ���� �������� ��������� � ������ ����������. <n> <T> � ������ ������� ���� ��.") 
	MisResultCondition(NoRecord, 968)
	MisResultCondition(HasMission, 968)
	MisResultCondition(HasRecord, 972)
	MisResultCondition(HasItem, 1042, 1 )
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 968)
	MisResultAction(SetRecord,  968 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
---------------------------------------------------�չ�������(3)
	DefineMission(5025, " ����� ", 969 )

	MisBeginTalk( "<t>�� �����, ����� ������ � ����� �������?��������..�� � ������ ��� ������.���� ���� �� ��������� ��� �������������� �����..." )------------------++++++8
	MisBeginCondition(NoRecord,  969)
	MisBeginCondition(HasMission, 968)
	MisBeginCondition(NoRecord,  968)
	MisBeginCondition(NoMission, 969)
	MisBeginAction(AddMission,  969)
	MisBeginAction(AddTrigger,  9691, TE_GETITEM,  4823,1)
	MisCancelAction(SystemNotice, "T202���� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "�������� �������������� ����� ������� ")
	MisNeed(MIS_NEED_ITEM,  4823,1, 10, 1)
	
	MisResultTalk("<t>� �� �� ����!")
	MisHelpTalk("<t>�����....")
	MisResultCondition(HasMission, 969)
	MisResultCondition(NoRecord, 969)
	MisResultCondition(HasItem, 4823, 1 )
	MisResultAction(TakeItem,  4823,1)
	MisResultAction(ClearMission,  969)
	MisResultAction(SetRecord,  969)
	MisResultAction(AddExp,80000,80000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4823)	
	TriggerAction( 1, AddNextFlag, 969, 10, 1 )
	RegCurTrigger( 9691 )

---------------------------------------------------------��ԭ����(3)
	DefineMission(5026," ������������ �������! ",970)
	
	MisBeginTalk( "<t>�� ����� �����. �� ��� ����� ����� ��������������.������� ����� ����� ������ �� ��� ������������ " )
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 970)
	MisBeginCondition(HasRecord, 969)
	MisBeginAction(AddMission,970)
	MisBeginAction(AddTrigger,  9701, TE_GETITEM,  1042,1)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "�������� ����� ����������� ")
	
	MisHelpTalk("<t>�������� ��� ����� � ����� � �������.")
	MisResultTalk("<t>�-���.��� ����� ���������� ��� � �������� ��������.� �� ���� ��� ������� � ����� �������.")
	MisResultCondition(HasMission,970)
	MisResultCondition(NoRecord, 970)
	MisResultCondition(HasRecord, 971)
	MisResultCondition(HasItem,1042, 1 )----------��ԭ��
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 970)
	MisResultAction(SetRecord, 970)
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1042)	
	TriggerAction( 1, AddNextFlag, 970, 10, 1 )
	RegCurTrigger(9701 )

	--------------------------------------------------��ԭ��ԭ��(3)

	DefineMission( 5027, " ����������� ��� ����� ����������� ", 971 )

	MisBeginTalk( "<t>����� , �� ���� ����� ����� ��������.�� � � ��� ����� ����� ��� �� ������� ����� ������... ���� �� �� ������ �������� ���:������ ����� �������� - 1 ��,��� �������� - 3 ��,���������� - 3 ��.")-------------++++++9
	MisBeginCondition(NoRecord, 971 )
	MisBeginCondition(HasMission, 970)
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 971)
	MisBeginAction(AddMission, 971 )
	MisBeginAction(AddTrigger, 9711, TE_GETITEM, 1351,1)		
	MisBeginAction(AddTrigger, 9712, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9713, TE_GETITEM, 3147, 3 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� �����:������ ����� �������� - 1 ��,��� �������� - 3 ��,���������� - 3 ��.")
	MisNeed(MIS_NEED_ITEM, 1351,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM,  3147,3, 30, 3)

	MisResultTalk("<t>�������!�� ������� ���,� ���������� ����� �����.")
	MisHelpTalk("<t>� ���� ���������� �����������!")
	MisResultCondition(HasMission, 971)
	MisResultCondition(NoRecord, 971)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,  3147, 3)
	
	MisResultAction(TakeItem, 1351, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,  3147, 3 )
	
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultAction(ClearMission, 971)
	MisResultAction(SetRecord, 971 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 971, 10, 1 )
	RegCurTrigger(9711 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 971, 20, 3 )
	RegCurTrigger(9712 )
	InitTrigger()
	TriggerCondition( 1, IsItem,  3147)	
	TriggerAction( 1, AddNextFlag, 971, 30, 3 )
	RegCurTrigger(9713 )
	--------------------------------------------------------------�ͷŰ���(3)
	DefineMission( 5028, " �������� ����� ", 972)
	
	MisBeginTalk( "<t><b�������> ������ ���� ����� ��������. �� ������������� ����� ������� � ���. ���� ���� ������� �������� �� �� ����, �� � ��� �� ��������� ��� ��������.�������� �� �����." )
	MisBeginCondition(NoRecord, 972)
	MisBeginCondition(HasRecord, 971)
	MisBeginCondition(NoMission, 972)
	MisBeginCondition(HasItem, 1042, 1 )
	MisBeginAction(AddMission, 972)
	MisBeginAction(GiveItem, 1054, 1, 4)		
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "�������� ������� ����� � ���� ����������.")
	
	MisHelpTalk("<t>������� �������  (1244, 3186)")
	MisResultCondition(AlwaysFailure)
------------------------------------------------------------------�ͷŰ���(3)
	DefineMission(5029, " �������� ����� ", 972 ,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�-�-�.� ��� �������...") 
	MisResultCondition(NoRecord, 972)
	MisResultCondition(HasMission, 972)
	MisResultCondition(HasItem, 1054, 1 )
	MisResultAction(TakeItem, 1054, 1 )
	MisResultAction(ClearMission, 972)
	MisResultAction(SetRecord,  972)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------����̫֮��ʯ(4)

	DefineMission(5031," ���� ",973)
	
	MisBeginTalk( "<t>�� ������ ��������� ���� �������?�� ���� � ������ ���....������� ����� � ������� � ����������� �� � ������ ��������.." )----------------++++++10
	MisBeginCondition(NoRecord, 973)
	MisBeginCondition(NoMission, 973)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,4)
	MisBeginAction(AddMission,973)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "������� ����� � �������  (853, 3549).")
	
	MisHelpTalk("<t>������� ����� � �������  (853, 3549) ")
	MisResultTalk("<t>�������� �����.... �� - ���.�������� �� ��, ��� ������ �� ��������� ��� ������� ������������ ����, ��� ������� �� ������� ������� � ����������� ��������� ������, ���������� �����.��� ������� ������������ �������� �����, �� ����� ���, ������ �����, ����� �� ������ �������� � ���������� �����, �������� ����� ������� ���� � ���������� ��������, ����� �� �������������� � ���� ����. <n> <T> � ������ ������� ���� ��.") 
	MisResultCondition(NoRecord, 973)
	MisResultCondition(HasMission, 973)
	MisResultCondition(HasRecord,  977)
	MisResultCondition(HasItem, 1045, 1)----------��ʯ
	MisResultCondition(HasItem, 1048, 1)-----------��ʯ
	MisResultAction(TakeItem,  1045, 1 )
	MisResultAction(TakeItem,  1048, 1 )
	MisResultAction(ClearMission, 973)
	MisResultAction(SetRecord,  973 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
------------------------------------------------------���Ųر�ͼ
	DefineMission(5032," ����� �������� ���������� ",974)
	
	MisBeginTalk( "<t>�� ����� ��� ����, ����� ��������� � ���� ������� ��������?����� � �� � �������� ��� ����� �� � ����� �������� ����� ������������...� ������ ��� ��� ������� �����-������.��������� ��� ����� � ����� �� ������ �� ������������� ������� ��������." )
	MisBeginCondition(NoRecord, 974)
	MisBeginCondition(NoMission,974)
	MisBeginCondition(HasMission, 973)
	MisBeginCondition(NoRecord,973)
	MisBeginAction(GiveItem, 1053, 1, 4)------���Ųر�ͼ
	MisBeginAction(AddMission,974)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	--MisBeginAction(AddTrigger, 9741, TE_GETITEM, 1044,1)
	MisBeginBagNeed(1)	
		
	MisNeed(MIS_NEED_DESP, "�������� ����� ������-������� ")
	
	MisHelpTalk("<t>����� ����� ��� ����� ����� ��������� ���������!")
	
	MisResultCondition(AlwaysFailure)

	------------------------------------------���Ųر�ͼ

	DefineMission(5033," ����� �������� ���������� ",974,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�� ����� ���� , �� ��� �� ��� ���� �� ����� � ������ ����� ������-����������.� �������� ��� ������: ���� ������� �� <y������� �����> � <y����� ������>. ������ 3 �������� ����� ��� ����� ����� ����� �������.� ���� ���� 1 ������ ������,������� ��� �� ���� � �������.")
	MisResultCondition(NoRecord, 974)
	MisResultCondition(HasMission,974)
	MisResultCondition(HasItem,1053, 1)
	MisResultAction(TakeItem, 1053, 1 )
	MisResultAction(ClearMission, 974)
	MisResultAction(SetRecord, 974)
	MisResultAction(GiveItem, 1045, 1, 4)--------��ʯ
	MisResultBagNeed(1)
	--------------------------------------------------��ʯ������
	DefineMission(5034," ������ ���������� ����� ",975)
	
	MisBeginTalk( "<t>�� ������ ������ � ��������� ����� �  <b�����>...���������! �������� ��� <y���������������� ������> ��� ��������������." )
	MisBeginCondition(NoRecord, 975)
	MisBeginCondition(NoMission, 975)
	MisBeginCondition(HasRecord, 974)
	MisBeginAction(GiveItem, 1046, 1, 4)-------�Ƽ���
	MisBeginAction(AddMission,975)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "���������� � ����� ")
	
	MisHelpTalk("<t>������� ����� (2250, 2770) ")
	MisResultCondition(AlwaysFailure)

--------------------------------------------------��ʯ������
	DefineMission(5035," ������ ���������� ����� ",975,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����� ���� ����� ����� ������ ������� ��������.��� ��� ���������?.")
	MisResultCondition(NoRecord, 975)
	MisResultCondition(HasMission,975)
	MisResultCondition(HasItem,1046, 1)
	MisResultAction(TakeItem, 1046, 1 )
	MisResultAction(ClearMission, 975 )
	MisResultAction(SetRecord, 975)
	----------------------------------------------����ˮ

	DefineMission( 5036, " ����� ", 976 )

	MisBeginTalk( "<t>��������� �� ������ �������� ���� , �� ���� ������ �������.��������� ������ �������� ����� ����� ���� ������� ������ ��� ����.��� ����� ������� ������� ��� ��������� �����. ������� ��������� ������������:��� �������� - 3 ��.�������,������ ������� -1 ��,������ ���� - 10 ��." )
	MisBeginCondition(NoRecord, 976 )
	MisBeginCondition(HasRecord, 975)
	MisBeginCondition(NoMission, 976)
	MisBeginAction(AddMission, 976 )
	MisBeginAction(AddTrigger, 9761, TE_GETITEM, 1362,1)		
	MisBeginAction(AddTrigger, 9762, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9763, TE_GETITEM, 1649, 10 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ��������� ������������:��� '��������' - 3 ��.�������,������ ������� -1 ��,������ ���� - 10 ��.")
	MisNeed(MIS_NEED_ITEM, 1362,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1649,10, 30, 10)

	MisResultTalk("<t>�������!��� ���� �����...���!�������.������ ��������� ������� �� ����� ������.")
	MisHelpTalk("<t>����������, ������� ��� �����������.")
	MisResultCondition(HasMission, 976 )
	MisResultCondition(NoRecord, 976)
	MisResultCondition(HasItem, 1362, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,1649, 10)
	
	MisResultAction(TakeItem, 1362, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,1649, 10 )
	
	MisResultAction(GiveItem, 1047, 1, 4)------------- ����ˮ
	MisResultAction(ClearMission, 976 )
	MisResultAction(SetRecord, 976  )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1362)	
	TriggerAction( 1, AddNextFlag, 976, 10, 1 )
	RegCurTrigger(9761 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 976 , 20, 3 )
	RegCurTrigger(9762 )
	InitTrigger()
	TriggerCondition( 1, IsItem,1649)	
	TriggerAction( 1, AddNextFlag, 976 , 30, 10 )
	RegCurTrigger(9763 )

--------------------------------------------------------------------------����֮��
	DefineMission(5037, " ���� �������� ", 977)

	MisBeginTalk( "<t>��� �� ������ ��� �� ��������� 100 ��� ���� ������ ������.� ��� ��� ��� ���� �� ��������� ��� ������� - 1 �� " )
	MisBeginCondition(NoRecord,  977)
	MisBeginCondition(HasRecord,  976)
	MisBeginCondition(NoMission, 977)
	MisBeginCondition(HasItem, 1047, 1 )
	MisBeginAction(TakeItem, 1047, 1 )
	MisBeginAction(AddMission,  977)
	MisBeginAction(AddTrigger,  9771, TE_GETITEM,  4782,1 )		
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " 207�������� ��� ����� ")
	MisNeed(MIS_NEED_ITEM,  4782,1, 10, 1)
	
	MisResultTalk("<t>�������!����� ��� ���� ���������� � ������� ")
	MisHelpTalk("<t>� ������� ������� ����� �������� �������� ")
	MisResultCondition(HasMission,  977)
	MisResultCondition(HasItem, 4782, 1)
	MisResultAction(TakeItem,  4782, 1 )
	MisResultAction(GiveItem, 1048, 1, 4)------------- ��ʯ
	MisResultAction(ClearMission,  977)
	MisResultAction(SetRecord,  977 )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,4782)	
	TriggerAction( 1, AddNextFlag, 977, 10, 1 )
	RegCurTrigger( 9771 )


	--------------------------------------------------ħ��

	DefineMission( 5043, " ���������� ��������� ", 978)

	MisBeginTalk( "<t>� ���� ���� ����,� ������� ��� �������� ����� �� ����. � ������, ��� ������� ����  <b����> �� ����������� (1346, 451) � ������ ���� ���������.�� �������� ����� ��� ���������?" )
	MisBeginCondition(NoRecord,  978)
	MisBeginCondition(HasRecord, 957)
	MisBeginCondition(NoMission, 978)
	MisBeginAction(AddMission, 978)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisNeed(MIS_NEED_DESP, "���������� � ����� ")

	MisResultTalk("<t>�� ... ��� �������!������ ��� ���� ����� �������. �������!")
	MisHelpTalk("<t>��� �����?")
	MisResultCondition(HasMission, 978)
	MisResultCondition(NoRecord,  978)
	MisResultCondition(HasItem, 1052, 1 )--------ʥ�黤��
	MisResultAction(TakeItem, 1052, 1 )
	MisResultAction(ClearMission, 978)
	MisResultAction(SetRecord, 978 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)	
	

-------------------------------------------------������ì
	DefineMission( 5045, " ������� �������� ����� ", 979 )

	MisBeginTalk( "<t>����!� ����� ��� ��� ����������� 1 ���������� ������� �������� �����.���������� ��� �� � ����� ������ ������� ���������." )
	MisBeginCondition(NoRecord, 979 )
	MisBeginCondition(HasMission, 978)
	MisBeginCondition(NoRecord, 978 )
	MisBeginCondition(NoMission, 979 )
	MisBeginAction(AddMission, 979)

	MisBeginAction(AddTrigger, 9791, TE_GETITEM, 4739, 1 )		--��ì
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")
	
	MisNeed(MIS_NEED_DESP, "��������� 1 ���������� ������� �������� ����� ")
	MisNeed(MIS_NEED_ITEM, 4739,1, 10, 1)
	
	MisResultTalk("<t>��� �������!")
	MisHelpTalk("<t>��..������������!")
	MisResultCondition(HasMission, 979)
	MisResultCondition(NoRecord, 979 )
	MisResultCondition(HasItem, 4739, 1 )
	MisResultAction(TakeItem, 4739, 1 )

	MisResultAction(ClearMission, 979)
	MisResultAction(SetRecord, 979)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 979, 10, 1)
	RegCurTrigger( 9791 )
----------------------------------------------------�ַ��ֲ��������ʬ

	DefineMission(5046, " �������� ����� ", 980 )

	MisBeginTalk( "<t>���� � �������� � ������� � �� ������ ����� 1 ��������� ��������� ���� .��������� �� ��� ����� ��������� ������.")
	MisBeginCondition(NoRecord,   980)
	MisBeginCondition(HasRecord,  979)
	MisBeginCondition(NoMission,  980)
	MisBeginAction(AddMission,   980)
	MisBeginAction(AddTrigger,   9801, TE_KILL, 508,1 )		
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_KILL,  508,1, 10, 1)
	
	MisResultTalk("<t>�� ���������!")
	MisHelpTalk("<t>������� ��� ����� ������� � ������ ������������� ����� (360, 1340).")----------------+++++11
	MisResultCondition(HasMission,  980)
	MisResultCondition(HasFlag, 980, 10 )
	MisResultAction(ClearMission,   980)
	MisResultAction(SetRecord,   980 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster,508)	
	TriggerAction( 1, AddNextFlag,  980, 10, 1 )
	RegCurTrigger(  9801 )

----------------------------------------------------�������

	DefineMission(5047," ����� ����� ",981)
	
	MisBeginTalk( "<t><bKentaro> ������ ��� �� �� ���������� � ��� (1894, 2798).��� ����� ����� ��� �������������� ���� , ��� �� ������� ��������� ������." )
	MisBeginCondition(NoRecord, 981)
	MisBeginCondition(NoMission, 981)
	MisBeginCondition(HasRecord, 980)
	MisBeginAction(GiveItem, 1025, 1, 4)----------�������
	MisBeginAction(AddMission,981)
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "������� ������� ")
	
	MisHelpTalk("<t>������� � �������� ")-----------------------++++++12
	MisResultCondition(AlwaysFailure)
	------------------------------------------------�������
	DefineMission(5048," ����� ����� ",981,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�� ����������� ����.")
	MisResultCondition(NoRecord, 981)
	MisResultCondition(HasMission,981)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission, 981 )
	MisResultAction(SetRecord, 981 )
-----------------------------------------------------�ռ�����
	DefineMission( 5049, " ��������� ������ ", 982 )

	MisBeginTalk( "<t>����� ���� ��� ����� ����,����� ���� ��������. ������� ������, ��� ��� ���������� ������������� �� ������� �������� �������� ��������� ����������� ������������ , �� ������ ����� ����� �������. ������ ����� ����� ������ ��������� ���.����� ����� ��� � ��������� ���." )
	MisBeginCondition(NoRecord, 982  )
	MisBeginCondition(HasRecord,981)
	MisBeginCondition(NoMission, 982  )
	MisBeginAction(AddMission, 982 )
	MisBeginAction(AddTrigger, 9821, TE_GETITEM, 4261, 1 )		--ˮâ
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ����� ������.")
	MisNeed(MIS_NEED_ITEM,4261,1, 10, 1)
	
	MisResultTalk("<t>�� �� ������ �����!!")
	MisHelpTalk("<t>��������� ��������� ��� � ��������� �������.")
	MisResultCondition(HasMission, 982 )
	MisResultCondition(NoRecord,982 )
	MisResultCondition(HasItem, 4261,1 )
	MisResultAction(TakeItem, 4261,1 )
	
	MisResultAction(ClearMission, 982 )
	MisResultAction(SetRecord, 982 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261)	
	TriggerAction( 1, AddNextFlag,  982 , 10,1)
	RegCurTrigger( 9821 )
-------------------------------------------------����֮ʯ

	DefineMission( 5050, " ������ ������ ", 983 )

	MisBeginTalk( "<t>�� ����� ��������� �����:������ ������... ���  ��� ��������?����� �� ����� ���������.������� ������������� ������ ������ " )
	MisBeginCondition(NoRecord, 983)
	MisBeginCondition(HasRecord,  982 )
	MisBeginCondition(NoMission, 983 )
	MisBeginAction(AddMission, 983)
	MisBeginAction(AddTrigger, 9831, TE_GETITEM, 2487, 1 )		--�޵�ʯ
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ������������� ������ ������ ")
	MisNeed(MIS_NEED_ITEM,2487,1, 10, 1)
	
	MisResultTalk("<t>�������� � �������!")
	MisHelpTalk("<t>�������� � �������!")
	MisResultCondition(HasMission, 983)
	MisResultCondition(NoRecord, 983)
	MisResultCondition(HasItem, 2487,1 )
	MisResultAction(TakeItem, 2487,1 )
	MisResultAction(ClearMission,983)
	MisResultAction(SetRecord, 983)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2487)	
	TriggerAction( 1, AddNextFlag,  983, 10,1)
	RegCurTrigger(  9831 )

----------------------------------------------------------�������

	DefineMission( 5051, " ���������� ����� ", 984 )

	MisBeginTalk( "<t>��� ����� ������ � ���� ������� ���������� � ���� �������� ... ����� ���������� �� ��� ����������� ��������� ���������� ���� !" )
	MisBeginCondition(NoRecord,  984)
	MisBeginCondition(HasRecord,  983)
	MisBeginCondition(NoMission,  984 )
	MisBeginAction(AddMission,  984)
	MisBeginAction(AddTrigger,  9841, TE_GETITEM,4738, 1 )		--�������ʹ�⻷
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, " ������� ��������� ���������� ���� ")
	MisNeed(MIS_NEED_ITEM,4738,1, 10, 1)
	
	MisResultTalk("<t>� ����� �������� ������...� ������� ���� ��������� ")
	MisHelpTalk("<t>������� ������ (335, 2121).")
	MisResultCondition(HasMission, 984)
	MisResultCondition(NoRecord,  984)
	MisResultCondition(HasItem, 4738,1 )
	MisResultAction(TakeItem, 4738,1 )
	
	MisResultAction(ClearMission,  984)
	MisResultAction(SetRecord,  984)
	MisResultAction(AddMoney,300000,300000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4738)	
	TriggerAction( 1, AddNextFlag,   984, 10,1)
	RegCurTrigger(   9841 )

-------------------------------------------------------ħ���ڴ�
	DefineMission( 5052, " ������������� ����� ", 985 )

	MisBeginTalk( "<t>�������� �� ��, ��� ��� �������,����� ��������� �����.����� ������� ������ ������ ��� ������ " )
	MisBeginCondition(NoRecord,   985)
	MisBeginCondition(HasRecord, 984)
	MisBeginCondition(NoMission,  985)
	MisBeginAction(AddMission,  985)
	MisBeginAction(GiveItem, 1025, 1, 4)----------�������
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "������� � �������� ������� ")----------------++++13
	MisHelpTalk("<t>....")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------ħ���ڴ�
	DefineMission( 5053, " ������������� ����� ", 985, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>��...��� ��� ������.�������� ��� ���� �� �� �.����� ")
	MisResultCondition(NoRecord,  985)
	MisResultCondition(HasMission,  985)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission,  985)
	MisResultAction(SetRecord,  985)
	MisResultAction(GiveItem, 1052, 1,4)
	MisResultAction(AddMoney,80000,80000)
	MisResultBagNeed(1)
	
------------------------------------------------------����ϵĽ��

	DefineMission( 5054, " ������� ������ �� ��������� ������� ", 986 )

	MisBeginTalk( "<t>� ���� ��� ������ ���� �������� ����...����� ��� ������� ��������� ���������.��������� ��� <r10 ������� �����> " )
	MisBeginCondition(NoRecord, 986)
	MisBeginCondition(HasRecord, 978)
	MisBeginCondition(NoMission,986 )
	MisBeginAction(AddMission, 986)
	MisBeginAction(AddTrigger, 9861, TE_GETITEM, 2438, 10 )		--���
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ��� <r10 ������� �����> ")
	MisNeed(MIS_NEED_ITEM,2438,10, 10, 10)
	
	MisResultTalk("<t>�� ��� �� ���� ����� ���������!")
	MisHelpTalk("<t>������� ������ ����� ����� � ������ ������ ��������.")
	MisResultCondition(HasMission, 986)
	MisResultCondition(NoRecord,986)
	MisResultCondition(HasItem,2438,10 )
	MisResultAction(TakeItem, 2438,10 )
	MisResultAction(ClearMission, 986)
	MisResultAction(SetRecord,986)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2438)	
	TriggerAction( 1, AddNextFlag,  986, 10,10)
	RegCurTrigger( 9861 )
-------------------------------------------------------��ٵ�ָ��
	DefineMission(5055," �������� ���� �� ",987)
	
	MisBeginTalk( "<t>��� ������� ������ � ����� ���������.������� � ����� ����������� " )
	MisBeginCondition(NoRecord, 987)
	MisBeginCondition(NoMission,987)
	MisBeginCondition(HasRecord,986)
	MisBeginAction(AddMission,987)	
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
		
	MisNeed(MIS_NEED_DESP, "���������� � ������ ������������ ")
	
	MisHelpTalk("<t>������ �� ��� ��� �����? �������!")
	MisResultCondition(AlwaysFailure)
-----------------------------------------------------��ٵ�ָ�㣨���أ�
	DefineMission(5056, " �������� ���� �� ", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> ���� �� ����� ������� ����� �� ��������!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

-----------------------------------------------------��ٵ�ָ�㣨��ŷ��
	DefineMission(5057, " �������� ���� �� ", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> ���� �� ����� ������� ����� �� ��������!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------��ٵ�ָ�㣨Сɽ����
	DefineMission(5058, " �������� ���� �� ", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> ���� �� ����� ������� ����� �� ��������!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------��ٵ�ָ��(�ʵ�ά��)
	DefineMission(5059, " �������� ���� �� ", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> ���� �� ����� ������� ����� �� ��������!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)


-----------------------------------------------------ְҵ�����˵Ľ��飨if��ʿ��
	DefineMission( 5060, " ������� ������ ",988 )

	MisBeginTalk( "<t>� ��� ��������� ��������.������ 1 ��������� �����." )
	MisBeginCondition(NoRecord, 988)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 988 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 988 )
	MisBeginAction(AddTrigger, 9881, TE_KILL, 524, 1 )		--��ŭ��������
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_KILL,524,1, 10, 1)
	
	MisResultTalk("<t>�������!�������!")
	MisHelpTalk("<t>��� ����� ����� �������!����� ���������� ")
	MisResultCondition(HasMission, 988 )
	MisResultCondition(HasFlag, 988, 10 )
	MisResultAction(ClearMission, 988 )
	MisResultAction(SetRecord, 988 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 524)	
	TriggerAction( 1, AddNextFlag,  988 , 10,1)
	RegCurTrigger(  9881 )

-----------------------------------------------------��ŷ�Ľ��飨if���ˣ�
	DefineMission( 5061, " ������� ��� ", 989 )

	MisBeginTalk( "<t>��� � ��� ��������� ��������.��������� ��� ������� ������������� ������ -1 �� � ����� ������ ������� - 1 �� " )
	MisBeginCondition(NoRecord, 989)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 989 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 989 )
	MisBeginAction(AddTrigger, 9891, TE_GETITEM, 4789, 1 )		
	MisBeginAction(AddTrigger, 9892, TE_GETITEM, 4741, 1 )	
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ������� ������������� ������ -1 �� � ����� ������ ������� - 1 �� ")
	MisNeed(MIS_NEED_ITEM, 4789,1, 10, 1)
	MisNeed(MIS_NEED_ITEM,4741,1, 20, 1)
	
	MisResultTalk("<t>�� �������� ����!")
	MisHelpTalk("<t>...")
	MisResultCondition(HasMission,989 )
	MisResultCondition(HasItem, 4789,1 )
	MisResultCondition(HasItem,4741,1 )
	MisResultAction(TakeItem,  4789,1 )
	MisResultAction(TakeItem, 4741,1 )
	MisResultAction(ClearMission, 989 )
	MisResultAction(SetRecord, 989 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster,  4789)	
	TriggerAction( 1, AddNextFlag,  989 , 10,1)
	RegCurTrigger(  9891 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,4741)	
	TriggerAction( 1, AddNextFlag,  989 , 20,1)
	RegCurTrigger(  9892 )

---------------------------------------------------------------Сɽ���Ľ��飨ifð���ߣ�
	DefineMission( 5062, " ������� ������� ", 990 )

	MisBeginTalk( "<t>�-���.� ��� ��������� ��������.���������� ���������� � ����������� ����� ������� , �� ������ �������� ��� ���������� " )
	MisBeginCondition(NoRecord, 990)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 990 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 990 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisHelpTalk("<t>������� ���������� ����� - ������� ")
	MisNeed(MIS_NEED_DESP, "������� ���������� ����� - ������� ")

	MisResultCondition(AlwaysFailure)
---------------------------------------------------------------ְҵ�����˵Ľ���
	DefineMission( 5063, " ������� ������� ", 990,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>����� - ��� ������ �����������...")
	MisHelpTalk("<t>���������� ����� - ��� ����� ������������ �����.")
	MisResultCondition(NoRecord, 990)
	MisResultCondition(HasMission,990)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission, 990 )
	MisResultAction(SetRecord, 990 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	-------------------------------------------------------�ʵ�ά���Ľ��飨ifҩʦ��
	DefineMission( 5064, " ������� ������� ", 991 )

	MisBeginTalk( "<t>�-���.� ��� ��������� ��������.���������� � �������..." )
	MisBeginCondition(NoRecord, 991)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 991 )
	MisBeginCondition(NoPfEqual,1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 991 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� � �������...")
	MisHelpTalk("<t>���������� � �������...")
	MisResultCondition(AlwaysFailure)

-------------------------------�ʵ�ά���Ľ���
	DefineMission( 5072, " ������� ������� ", 991,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>��...� ��� ��� ��� ������ ��������� ")
	MisHelpTalk("<t>�� �������!")
	MisResultCondition(NoRecord, 991)
	MisResultCondition(HasMission,991)
	MisResultAction(ClearMission, 991 )
	MisResultAction(SetRecord, 991 )

	
	-------------------------------------------------------ʯ������־
	DefineMission( 5073, " ������� ", 998 )

	MisBeginTalk( "<t>������������� � ������� ����������... " )
	MisBeginCondition(NoRecord, 998)
	MisBeginCondition(HasRecord, 991)
	MisBeginCondition(NoMission, 998 )
	MisBeginAction(AddMission, 998 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "�� ������?")
	MisHelpTalk("<t>� ��� ������ ���� ����� ���� ���� ")
	MisResultTalk("<t>�� ������ ��������� ����� �����?")

	MisResultCondition(HasMission, 998 )
	MisResultCondition(HasState, 92 )
	MisResultAction(ClearMission, 998 )
	MisResultAction(SetRecord, 998 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
		
	----------------------------------------���ߵ���
     DefineMission(5068," ������� � ������������� ",993)
     MisBeginTalk("<t>���������,���� � ������� �������.")
     MisBeginCondition(HasRecord,988)
     MisBeginCondition(NoMission, 993)
     MisBeginCondition(NoRecord, 993)
     MisBeginAction(AddMission, 993)
     MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

     MisNeed(MIS_NEED_DESP, "��������� ���� ���������� ������������� �������.")
     MisHelpTalk("<t>�� ���������� ����!")
     MisResultTalk("<t>��������� �������� ����� ������.")
     MisResultCondition(NoRecord, 993)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 993)
     MisResultAction(SetRecord, 993 )
     MisResultAction(ClearMission, 993 )
----------------------------------------���ߵ���
      DefineMission(5069," ������� � ������������� ",994)
     MisBeginTalk("<t>���������,���� � ������� �������..")
     MisBeginCondition(HasRecord,989)
      MisBeginCondition(NoMission, 994)
     MisBeginCondition(NoRecord, 994)
     MisBeginAction(AddMission, 994)
     MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

     MisNeed(MIS_NEED_DESP, "��������� ���� ���������� ������������� �������.")
     MisHelpTalk("<t>�� ���������� ����!")
      MisResultTalk("<t>��������� �������� ����� ������.")
     MisResultCondition(NoRecord, 994)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 994)
     MisResultAction(SetRecord, 994 )
     MisResultAction(ClearMission, 994 )

     ----------------------------------------���ߵ���
      DefineMission(5070," ������� � ������������� ",995)
     MisBeginTalk("<t>���������,���� � ������� �������.")
     MisBeginCondition(HasRecord,998)
      MisBeginCondition(NoMission, 995)
     MisBeginCondition(NoRecord, 995)
     MisBeginAction(AddMission, 995)
     MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

     MisNeed(MIS_NEED_DESP, "��������� ���� ���������� ������������� �������.")
     MisHelpTalk("<t>�� ���������� ����!.")
      MisResultTalk("<t>��������� �������� ����� ������.")
     MisResultCondition(NoRecord, 995)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 995)
     MisResultAction(SetRecord, 995 )
     MisResultAction(ClearMission, 995 )
	----------------------------------------���ߵ���
      DefineMission(5071," ������� � ������������� ",997)
     MisBeginTalk("<t>���������,���� � ������� �������.")
     MisBeginCondition(HasRecord,990)
      MisBeginCondition(NoMission, 997)
     MisBeginCondition(NoRecord, 997)
     MisBeginAction(AddMission, 997)
     MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

     MisNeed(MIS_NEED_DESP, "��������� ���� ���������� ������������� �������.")
     MisHelpTalk("<t>�� ���������� ����!")
      MisResultTalk("<t>��������� �������� ����� ������.")
     MisResultCondition(NoRecord, 997)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 997)
     MisResultAction(SetRecord, 997 )
     MisResultAction(ClearMission, 997 )

-------------------------------------------------------˭������-------------�������̻�᳤�����׵���˹
	DefineMission( 5167, " ������� � ������������� ", 1500 )

	MisBeginTalk( "<t>������������� �������� ������� ������.�� � ����� <b�����> ������ ��� ������ " )
	MisBeginCondition(NoRecord,1500)
	MisBeginCondition(HasRecord, 993)
	MisBeginCondition(NoMission, 1500 )
	MisBeginAction(AddMission, 1500 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� � ������ ")
	MisHelpTalk("<t>���������� � ������ (853, 3549)")
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------˭������---------��ŷ
	DefineMission( 5168, " ��� �� ���� �������������? ", 1501 )

	MisBeginTalk( "<t>������������� �������� ������� ������.�� � ����� <b�����> ������ ��� ������ " )
	MisBeginCondition(NoRecord,1501)
	MisBeginCondition(HasRecord, 994)
	MisBeginCondition(NoMission, 1501 )
	MisBeginAction(AddMission, 1501 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� � ������ ")
	MisHelpTalk("<t>���������� � ������ (853, 3549)")
	MisResultCondition(AlwaysFailure)



	-------------------------------------------------------˭������------------�׶�����
	DefineMission( 5074, " ��� �� ���� �������������? ", 1502 )

	MisBeginTalk( "<t>������������� �������� ������� ������.�� � ����� <b�����> ������ ��� ������ " )
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 995)
	MisBeginCondition(NoMission, 1502 )
	MisBeginAction(AddMission, 1502 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� � ������ ")
	MisHelpTalk("<t>���������� � ������ (853, 3549)")
	MisResultCondition(AlwaysFailure)

	


-------------------------------------------------------˭������------------�Ƕ�����
	DefineMission( 5075, " ��� �� ���� �������������? ", 1503 )

	MisBeginTalk( "<t>T������������� �������� ������� ������.�� � ����� <b�����> ������ ��� ������ " )
	MisBeginCondition(NoRecord,1503)
	MisBeginCondition(HasRecord, 997)
	MisBeginCondition(NoMission, 1503 )
	MisBeginAction(AddMission, 1503 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� � ������ ")
	MisHelpTalk("<t>���������� � ������ (853, 3549)")
	MisResultCondition(AlwaysFailure)

	


	
-------------------------------˭������
	DefineMission( 5076, " ��� �� ���� �������������? ", 1500,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���������� � ������ ")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------˭������
	DefineMission( 5077, " ��� �� ���� �������������? ", 1501,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���������� � ������ ")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------˭������
	DefineMission( 5078, " ��� �� ���� �������������? ", 1502,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���������� � ������ ")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------˭������
	DefineMission( 5079, " ��� �� ���� �������������? ", 1503,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���������� � ������ ")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1504 )
-------------------------------˭������
	DefineMission( 5080, " ��� �� ���� �������������? ", 1500,COMPLETE_SHOW )----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�� ����� ��������������?������ ����� ���� ����� ������ � ���.")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1505 )


-------------------------------˭������
	DefineMission( 5081, " ��� �� ���� �������������? ", 1501,COMPLETE_SHOW )-----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�� ����� ��������������?������ ����� ���� ����� ������ � ���.")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1505 )

-------------------------------˭������
	DefineMission( 5082, " ��� �� ���� �������������? ", 1502,COMPLETE_SHOW )-----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�� ����� ��������������?������ ����� ���� ����� ������ � ���.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1505 )

-------------------------------˭������
	DefineMission( 5083, " ��� �� ���� �������������? ", 1503,COMPLETE_SHOW )-----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>�� ����� ��������������?������ ����� ���� ����� ������ � ���.")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1505 )


	-------------------------------˭������
	DefineMission( 5084, " ��� �� ���� �������������? ", 1500,COMPLETE_SHOW )----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���� ���...�� ���������� ����...?!")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1506 )


-------------------------------˭������
	DefineMission( 5085, " ��� �� ���� �������������? ", 1501,COMPLETE_SHOW )-----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���� ���...�� ���������� ����...?!")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1506 )

-------------------------------˭������
	DefineMission( 5086, " ��� �� ���� �������������? ", 1502,COMPLETE_SHOW )-----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���� ���...�� ���������� ����...?!")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1506 )

-------------------------------˭������
	DefineMission( 5087, " ��� �� ���� �������������? ", 1503,COMPLETE_SHOW )-----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>���� ���...�� ���������� ����...?!")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1506 )

-------------------------------------------------------������ͽ-------------�������̻�᳤�����׵���˹
	DefineMission( 5088, " ������ ", 1507 )

	MisBeginTalk( "<t>������������� - ����� ������ �������.�� ����� �������� � ���� ��� ���� �� ������� ���.������� ���� ��� ������ ��� ������ ��� ��������� " )
	MisBeginCondition(NoRecord,1507)
	MisBeginCondition(HasRecord, 1504)
	MisBeginCondition(NoMission, 1507 )
	MisBeginAction(AddMission, 1507 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "���������� � ������� ,�������,����� ��� �������.")
	MisHelpTalk("<t>������ ����� ����� ��� (1244, 3186).")
	MisResultCondition(AlwaysFailure)
--------------------------------------------------------������ͽ
	DefineMission( 5089, " ������ ", 1507,COMPLETE_SHOW )--------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������������ ���� ������� ��� �� �� ������� ������ ������� �� ����� �������?.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1514)

	


	--------------------------------------------------------������ͽ
	DefineMission( 5090, " ������ ", 1507,COMPLETE_SHOW )---------��ŷ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������������ ���� ������� ��� �� �� ������� ������ ������� �� ����� �������?")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1515)

--------------------------------------------------------������ͽ
	DefineMission( 5091, " ������ ", 1507,COMPLETE_SHOW )---------�Ƕ�����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������ ������� ����� �����,�� ������ ��� �� � ��� ��������.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1516)

	--------------------------------------------------------������ͽ
	DefineMission( 5092, " ������ ", 1507,COMPLETE_SHOW )---------�׶�����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��������� ������ �����,�� ������ ��� �� � ��� ��������.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1517)

---------------------------------------------------------------------���س�����ͽ

	DefineMission( 5093, " ������ ������� 1 ", 1508 )

	MisBeginTalk( "<t>��� ���������� ������ ���������.������ 5  ���������� ��������� " )
	MisBeginCondition(NoRecord, 1508 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1514 )
	MisBeginCondition(NoMission, 1508 )
	MisBeginAction(AddMission,  1508)
	MisBeginAction(AddTrigger,  15081, TE_KILL, 67, 5 )----------------�ؾ�սʿ
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 5  ���������� ��������� ")
	MisNeed(MIS_NEED_KILL,67,5, 10, 5)

	MisResultTalk("<t>�������!�� ������ 1 ��������� ")
	MisHelpTalk("<t>��� ������ � ��������� , ����� ��������� ")
	MisResultCondition(HasMission,  1508)
	MisResultCondition(NoRecord,  1508)
	MisResultCondition(HasFlag,  1508, 14 )
	MisResultAction(ClearMission,  1508 )
	MisResultAction(SetRecord,  1508  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 67)	
	TriggerAction( 1, AddNextFlag,  1508 , 10,5)
	RegCurTrigger(   15081 )

	---------------------------------------------------------------------���ض�����ͽ

	DefineMission( 5094, " ������ ������� 2 ", 1509 )

	MisBeginTalk( "<t>���� ������ �������.������ 5 �������� ������������ ���� " )
	MisBeginCondition(NoRecord, 1509 )
	MisBeginCondition(HasRecord, 1508 )
	MisBeginCondition(NoMission, 1509 )
	MisBeginAction(AddMission,  1509)
	MisBeginAction(AddTrigger,  15091, TE_KILL, 549, 5 )----------------а��Ĳ�����
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 5 �������� ������������ ���� ")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>�� ������� ���������� � ��������!")
	MisHelpTalk("<t>����� ���������!")
	MisResultCondition(HasMission,  1509)
	MisResultCondition(NoRecord,  1509)
	MisResultCondition(HasFlag,  1509, 14 )
	MisResultAction(ClearMission,  1509 )
	MisResultAction(SetRecord,  1509  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1509 , 10,5)
	RegCurTrigger(   15091 )

	---------------------------------------------------------------------����������ͽ

	DefineMission( 5095, " ������ ������� 3 ", 1510 )

	MisBeginTalk( "<t>���� ��������� �������.������ �������� ������ ����� 6 �� " )
	MisBeginCondition(NoRecord, 1510 )
	MisBeginCondition(HasRecord, 1509 )
	MisBeginCondition(NoMission, 1510 )
	MisBeginAction(AddMission,  1510)
	MisBeginAction(AddTrigger,  15101, TE_KILL, 546, 6 )----------------а����Ϲ���ʿ
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ �������� ������ ����� 6 ��.")
	MisNeed(MIS_NEED_KILL,546,6, 10, 6)

	MisResultTalk("<t>�� ��� ����� � �����....")
	MisHelpTalk("<t>����� ����� ����������� ")
	MisResultCondition(HasMission,  1510)
	MisResultCondition(NoRecord,  1510)
	MisResultCondition(HasFlag,  1510, 15 )
	MisResultAction(ClearMission,  1510 )
	MisResultAction(SetRecord,  1510  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1510 , 10,6)
	RegCurTrigger(   15101 )



---------------------------------------------------------------------���ظ߼���ͽ

	DefineMission( 5096, " ������ 4 ������� ", 1511 )

	MisBeginTalk( "<t>���� ����� ������� - ������ 8 ���������� ��������� ")
	MisBeginCondition(NoRecord, 1511 )
	MisBeginCondition(HasRecord, 1510 )
	MisBeginCondition(NoMission, 1511 )
	MisBeginAction(AddMission,  1511)
	MisBeginAction(AddTrigger,  15111, TE_KILL, 201, 8 )----------------��Ӱ����
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 8 ���������� ��������� ")
	MisNeed(MIS_NEED_KILL,201,8, 10, 8)

	MisResultTalk("<t>�� ��������� ��� �������!")
	MisHelpTalk("<t> ��� ��������� ����!�� ���������� ")
	MisResultCondition(HasMission,  1511)
	MisResultCondition(NoRecord,  1511)
	MisResultCondition(HasFlag,  1511, 17 )
	MisResultAction(ClearMission,  1511 )
	MisResultAction(SetRecord,  1511  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 201)	
	TriggerAction( 1, AddNextFlag,  1511 , 10,8)
	RegCurTrigger(   15111 )


	
	---------------------------------------------------------------------��ŷ������ͽ

	DefineMission( 5097, "������ 1 ������� ", 1512 )

	MisBeginTalk( "<t>��..���� ������ �������.������ 5 ��������� �������� ������� " )
	MisBeginCondition(NoRecord, 1512 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1515 )
	MisBeginCondition(NoMission, 1512 )
	MisBeginAction(AddMission,  1512)
	MisBeginAction(AddTrigger,  15121, TE_KILL, 187, 5 )----------------С����
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 5 ��������� �������� ������� ")
	MisNeed(MIS_NEED_KILL,187,5, 10, 5)

	MisResultTalk("<t>�������.�� ��������� ������ �������.")
	MisHelpTalk("<t>���������.")
	MisResultCondition(HasMission,  1512)
	MisResultCondition(NoRecord,  1512)
	MisResultCondition(HasFlag,  1512, 14 )
	MisResultAction(ClearMission,  1512 )
	MisResultAction(SetRecord,  1512  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 187)	
	TriggerAction( 1, AddNextFlag,  1512 , 10,5)
	RegCurTrigger(   15121 )


	---------------------------------------------------------------------��ŷ������ͽ

	DefineMission( 5098, " ������ 2 ������� ", 1513 )

	MisBeginTalk( "<t>���� ������ �������.������ 5 �������� �������� " )
	MisBeginCondition(NoRecord, 1513 )
	MisBeginCondition(HasRecord, 1512 )
	MisBeginCondition(NoMission, 1513 )
	MisBeginAction(AddMission,  1513)
	MisBeginAction(AddTrigger,  15131, TE_KILL, 543, 5 )----------------����������
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 5 �������� �������� ")
	MisNeed(MIS_NEED_KILL,543,5, 10, 5)

	MisResultTalk("<t>�������.�� ���������� �� ������ ��������.")
	MisHelpTalk("<t>����� ��������������!")
	MisResultCondition(HasMission,  1513)
	MisResultCondition(NoRecord,  1513)
	MisResultCondition(HasFlag,  1513, 14 )
	MisResultAction(ClearMission,  1513 )
	MisResultAction(SetRecord,  1513  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 543)	
	TriggerAction( 1, AddNextFlag,  1513 , 10,5)
	RegCurTrigger(   15131 )


	---------------------------------------------------------------------��ŷ������ͽ

	DefineMission( 5099, " ������ 3 ������� ", 1518 )

	MisBeginTalk( "<t>���� ������ �������.������ 6 �������� ����������-������ " )
	MisBeginCondition(NoRecord, 1518 )
	MisBeginCondition(HasRecord, 1513 )
	MisBeginCondition(NoMission, 1518 )
	MisBeginAction(AddMission,  1518)
	MisBeginAction(AddTrigger,  15181, TE_KILL, 566, 6 )----------------����սʿ�ӳ�
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 6 �������� ����������-������ ")
	MisNeed(MIS_NEED_KILL,566,6, 10, 6)

	MisResultTalk("<t>�����������!�� ���������� � ������� ��������.")
	MisHelpTalk("<t>������ ���������� ")
	MisResultCondition(HasMission,  1518)
	MisResultCondition(NoRecord,  1518)
	MisResultCondition(HasFlag,  1518, 15 )
	MisResultAction(ClearMission,  1518 )
	MisResultAction(SetRecord,  1518  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 566)	
	TriggerAction( 1, AddNextFlag,  1518 , 10,6)
	RegCurTrigger(   15181 )


	---------------------------------------------------------------------��ŷ�߼���ͽ

	DefineMission( 5100, " ������ 4 ������� ", 1519 )

	MisBeginTalk( "<t>���� ��������� �������.������ 8 ������������ ����� " )
	MisBeginCondition(NoRecord, 1519 )
	MisBeginCondition(HasRecord, 1518 )
	MisBeginCondition(NoMission, 1519 )
	MisBeginAction(AddMission,  1519)
	MisBeginAction(AddTrigger,  15191, TE_KILL, 511, 8)----------------��������
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 8 ������������ ����� ")
	MisNeed(MIS_NEED_KILL,511,8, 10, 8)

	MisResultTalk("<t>�����������!�� ��������� ��� ������� ")
	MisHelpTalk("<t>������� ��������.")
	MisResultCondition(HasMission,  1519)
	MisResultCondition(NoRecord,  1519)
	MisResultCondition(HasFlag,  1519, 17 )
	MisResultAction(ClearMission,  1519 )
	MisResultAction(SetRecord,  1519  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 511)	
	TriggerAction( 1, AddNextFlag,  1519 , 10,8)
	RegCurTrigger(   15191 )

	---------------------------------------------------------------------�׶�������ͽ

	DefineMission( 5101, " ������ 1 ������� ", 1520 )

	MisBeginTalk( "<t>��...�� ������ ��������� ��������� �������.���� ������ �������.������ 5 �������� ������������ ���� " )
	MisBeginCondition(NoRecord, 1520 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1517)
	MisBeginCondition(NoMission, 1520 )
	MisBeginAction(AddMission,  1520)
	MisBeginAction(AddTrigger,  15201, TE_KILL, 549, 5 )----------------а��Ĳ�����ʿ
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 5 �������� ������������ ���� ")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>�������.�� ���������� ")
	MisHelpTalk("<t>�������� �������� ���� ���...")
	MisResultCondition(HasMission,  1520)
	MisResultCondition(NoRecord,  1520)
	MisResultCondition(HasFlag,  1520, 14 )
	MisResultAction(ClearMission,  1520 )
	MisResultAction(SetRecord,  1520  )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1520 , 10,5)
	RegCurTrigger(   15201 )



---------------------------------------------------------------------�׶�������ͽ

	DefineMission( 5102, " ������ 2 ������� ", 1521 )

	MisBeginTalk( "<t>���� ������ �������.������ 2 ������." )
	MisBeginCondition(NoRecord, 1521 )
	MisBeginCondition(HasRecord, 1520 )
	MisBeginCondition(NoMission, 1521 )
	MisBeginAction(AddMission,  1521)
	MisBeginAction(AddTrigger,  15211, TE_KILL, 587, 2 )----------------
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 2 ������ ")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>�������.�� ���������� ")
	MisHelpTalk("<t>�������� �������� ���� ���...")
	MisResultCondition(HasMission,  1521)
	MisResultCondition(NoRecord,  1521)
	MisResultCondition(HasFlag,  1521, 11 )
	MisResultAction(ClearMission,  1521 )
	MisResultAction(SetRecord,  1521  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1521 , 10,2)
	RegCurTrigger(   15211 )



	---------------------------------------------------------------------�׶�������ͽ

	DefineMission( 5103, " ������ 3 ������� ", 1522 )

	MisBeginTalk( "<t>���� ������ �������.������ 3 ������������� ������ " )
	MisBeginCondition(NoRecord, 1522 )
	MisBeginCondition(HasRecord, 1521 )
	MisBeginCondition(NoMission, 1522 )
	MisBeginAction(AddMission,  1522)
	MisBeginAction(AddTrigger,  15221, TE_KILL, 606, 3 )----------------
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 3 ������������� ������ ")
	MisNeed(MIS_NEED_KILL,606,3, 10, 3)

	MisResultTalk("<t>�������.�� ���������� ")
	MisHelpTalk("<t>�������� �������� ���� ���...")
	MisResultCondition(HasMission,  1522)
	MisResultCondition(NoRecord,  1522)
	MisResultCondition(HasFlag,  1522, 12 )
	MisResultAction(ClearMission,  1522 )
	MisResultAction(SetRecord,  1522  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1522 , 10,3)
	RegCurTrigger(   15221 )

---------------------------------------------------------------------�׶��߼���ͽ

	DefineMission( 5104, " ������ 4 ������� ", 1523 )

	MisBeginTalk( "<t>���� ��������� ������� ����� 8 ������� 007 " )
	MisBeginCondition(NoRecord, 1523 )
	MisBeginCondition(HasRecord, 1522 )
	MisBeginCondition(NoMission, 1523 )
	MisBeginAction(AddMission,  1523)
	MisBeginAction(AddTrigger,  15231, TE_KILL, 735, 8 )----------------
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "����� 8 ������� 007 ")
	MisNeed(MIS_NEED_KILL,735,8, 10,8)

	MisResultTalk("<t>�������.�� ���������� � ��������� ��������!")
	MisHelpTalk("<t>�������� �������� ���� ���...")
	MisResultCondition(HasMission,  1523)
	MisResultCondition(NoRecord,  1523)
	MisResultCondition(HasFlag,  1523, 17 )
	MisResultAction(ClearMission,  1523 )
	MisResultAction(SetRecord,  1523  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 735)	
	TriggerAction( 1, AddNextFlag,  1523 , 10,8)
	RegCurTrigger(   15231 )


---------------------------------------------------------------------�Ƕ�������ͽ

	DefineMission( 5105, " ������ 1 ������� ", 1524 )

	MisBeginTalk( "<t>� ���� ��������� ���� ���.�������� ��� ������� ������ ����������.������ �������  - ��������� ���������� ������ ����-����� 2 �� " )
	MisBeginCondition(NoRecord, 1524 )
	MisBeginCondition(HasRecord, 1516 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(NoMission, 1524 )
	MisBeginAction(AddMission,  1524)
	MisBeginAction(AddTrigger,  15241, TE_GETITEM, 1350, 2 )----------------
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ���������� ������ ����-����� 2 �� ")
	MisNeed(MIS_NEED_ITEM,1350,2, 10, 2)

	MisResultTalk("<t>�������!")
	MisHelpTalk("<t>����� ���������... ")
	MisResultCondition(HasMission,  1524)
	MisResultCondition(NoRecord,  1524)
	MisResultCondition(HasItem, 1350, 2)
	MisResultAction(TakeItem,  1350, 2 )
	MisResultAction(ClearMission,  1524 )
	MisResultAction(SetRecord,  1524  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1350)	
	TriggerAction( 1, AddNextFlag, 1524, 10, 2 )
	RegCurTrigger( 15241 )

	---------------------------------------------------------------------�Ƕ�������ͽ

	DefineMission( 5106, " ������ 2 ������� ", 1525 )

	MisBeginTalk( "<t>���� ������ �������.��������� ��� 2 ��������� ������ " )
	MisBeginCondition(NoRecord, 1525 )
	MisBeginCondition(HasRecord, 1524 )
	MisBeginCondition(NoMission, 1525 )
	MisBeginAction(AddMission,  1525)
	MisBeginAction(AddTrigger,  15251, TE_GETITEM, 1295, 2 )----------------
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� 2 ��������� ������ ")
	MisNeed(MIS_NEED_ITEM,1295,2, 10, 2)

	MisResultTalk("<t>�������!")
	MisHelpTalk("<t>����� ���������... ")
	MisResultCondition(HasMission,  1525)
	MisResultCondition(NoRecord,  1525)
	MisResultCondition(HasItem, 1295, 2)
	MisResultAction(TakeItem,  1295, 2 )
	MisResultAction(ClearMission,  1525 )
	MisResultAction(SetRecord,  1525  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1295)	
	TriggerAction( 1, AddNextFlag, 1525, 10, 2 )
	RegCurTrigger( 15251 )



---------------------------------------------------------------------�Ƕ�������ͽ

	DefineMission( 5107, " ������ 3 ������� ", 1526 )

	MisBeginTalk( "<t>���� ������ �������.��������� ��� 99 ���������� ������� " )
	MisBeginCondition(NoRecord, 1526 )
	MisBeginCondition(HasRecord, 1525 )
	MisBeginCondition(NoMission, 1526 )
	MisBeginAction(AddMission,  1526)
	MisBeginAction(AddTrigger,  15261, TE_GETITEM, 3116, 99 )----------------
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� 99 ���������� ������� ")
	MisNeed(MIS_NEED_ITEM,3116,99, 10, 99)

	MisResultTalk("<t>�������!")
	MisHelpTalk("<t>����� ���������...")
	MisResultCondition(HasMission,  1526)
	MisResultCondition(NoRecord,  1526)
	MisResultCondition(HasItem, 3116, 99)
	MisResultAction(TakeItem,  3116, 99 )
	MisResultAction(ClearMission,  1526 )
	MisResultAction(SetRecord,  1526  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,3116)	
	TriggerAction( 1, AddNextFlag, 1526, 10, 99 )
	RegCurTrigger( 15261 )


	---------------------------------------------------------------------�Ƕ��߼���ͽ

	DefineMission( 5108, " ������ 4 ������� ", 1527 )

	MisBeginTalk( "<t>���� ��������� �������.��������� ��� 15 ������ �������� ��������." )
	MisBeginCondition(NoRecord, 1527 )
	MisBeginCondition(HasRecord, 1526 )
	MisBeginCondition(NoMission, 1527 )
	MisBeginAction(AddMission,  1527)
	MisBeginAction(AddTrigger,  15271, TE_GETITEM, 4802, 15 )----------------
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� 15 ������ �������� �������� ")
	MisNeed(MIS_NEED_ITEM,4802,1, 10, 1)

	MisResultTalk("<t>�����������!�� ��������� ��� ������� ")
	MisHelpTalk("<t>����� ���������...")
	MisResultCondition(HasMission,  1527)
	MisResultCondition(NoRecord,  1527)
	MisResultCondition(HasItem, 4802, 1)
	MisResultAction(TakeItem,  4802, 1 )
	MisResultAction(ClearMission,  1527 )
	MisResultAction(SetRecord,  1527  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4802)	
	TriggerAction( 1, AddNextFlag, 1527, 10, 1 )
	RegCurTrigger( 15271 )

-------------------------------------------------------�ϸ����ͽ--------����
	DefineMission( 5109, " ������ ", 1528 )

	MisBeginTalk( "<t>�� �������� 4 ������ �������.������ ��� ���� ���������� � ���� " )
	MisBeginCondition(NoRecord,1528)
	MisBeginCondition(HasRecord, 1511)
	MisBeginCondition(NoMission, 1528 )
	MisBeginAction(AddMission, 1528 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � ���� ")
	MisHelpTalk("<t>���� ���������� � ������� (2242, 2748) ")
	MisResultCondition(AlwaysFailure)



--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5110, " ������ ", 1528,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������!�� ����� ������ ���������� �� ����� ���������.")
	MisResultCondition(NoRecord, 1528)
	MisResultCondition(HasMission, 1528)
	MisResultAction(ClearMission,1528)
	MisResultAction(SetRecord, 1528)
	MisResultAction(SetRecord, 1577)-------------
	

-------------------------------------------------------�ϸ����ͽ--------��ŷ
	DefineMission( 5111, " ������ ", 1529 )

	MisBeginTalk( "<t>�� �������� 4 ������ �������.������ ��� ���� ���������� � ���� " )
	MisBeginCondition(NoRecord,1529)
	MisBeginCondition(HasRecord, 1519)
	MisBeginCondition(NoMission, 1529 )
	MisBeginAction(AddMission, 1529 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � ���� ")
	MisHelpTalk("<t>���� ���������� � ������� (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5112, " ������ ", 1529,COMPLETE_SHOW )------�������̻�᳤�����׵���˹(2242,2748)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������!�� ����� ������ ���������� �� ����� ���������.")
	MisResultCondition(NoRecord, 1529)
	MisResultCondition(HasMission, 1529)
	MisResultAction(ClearMission,1529)
	MisResultAction(SetRecord, 1529)
	MisResultAction(SetRecord, 1577)-------------


	-------------------------------------------------------�ϸ����ͽ--------�׶�
	DefineMission( 5113, " ������ ", 1530 )

	MisBeginTalk( "<t>�������!�� ����� ������ ���������� �� ����� ���������." )
	MisBeginCondition(NoRecord,1530)
	MisBeginCondition(HasRecord, 1523)
	MisBeginCondition(NoMission, 1530 )
	MisBeginAction(AddMission, 1530 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � ���� ")
	MisHelpTalk("<t>���� ���������� � ������� (2242, 2748) ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5114, " ������ ", 1530,COMPLETE_SHOW )------���׵���˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������!�� ����� ������ ���������� �� ����� ���������.")
	MisResultCondition(NoRecord, 1530)
	MisResultCondition(HasMission, 1530)
	MisResultAction(ClearMission,1530)
	MisResultAction(SetRecord, 1530)
	MisResultAction(SetRecord, 1577)-------------

	-------------------------------------------------------�ϸ����ͽ--------�Ƕ�
	DefineMission( 5115, " ������ ", 1531 )

	MisBeginTalk( "<t>�������!�� ����� ������ ���������� �� ����� ���������." )
	MisBeginCondition(NoRecord,1531)
	MisBeginCondition(HasRecord, 1527)
	MisBeginCondition(NoMission, 1531 )
	MisBeginAction(AddMission, 1531 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � ���� ")
	MisHelpTalk("<t>���� ���������� � ������� (2242, 2748) ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5116, " ������ ", 1531,COMPLETE_SHOW )------���׵���˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�������!�� ����� ������ ���������� �� ����� ���������.")
	MisResultCondition(NoRecord, 1531)
	MisResultCondition(HasMission, 1531)
	MisResultAction(ClearMission,1531)
	MisResultAction(SetRecord, 1531)
	MisResultAction(SetRecord, 1577)-------------

-------------------------------------------------------ΰ�������----------���ö�
	DefineMission( 5117, " ������ ������� ", 1532 )

	MisBeginTalk( "<t>������� 8 ����������� ����� � ������������� �� ���." )
	MisBeginCondition(NoRecord,1532)
	MisBeginCondition(HasRecord, 1505)
	MisBeginCondition(NoMission, 1532 )
	MisBeginAction(AddMission, 1532 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � ��������� ���� ")
	MisHelpTalk("<t>���������� � ��������� ���� ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ΰ�������
	DefineMission( 5118, " ������ ������� ", 1532,COMPLETE_SHOW )-------------��װ����������
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>� ������� ��������� ���� ")
	MisResultCondition(NoRecord, 1532)
	MisResultCondition(HasMission, 1532)
	MisResultAction(ClearMission,1532)
	MisResultAction(SetRecord, 1532)



---------------------------------------------------------------------һ����

	DefineMission( 5119, " ������ ����� ", 1533 )

	MisBeginTalk( "<t>� ����� �������� ����." )------��װ����������
	MisBeginCondition(NoRecord, 1533 )
	MisBeginCondition(HasRecord, 1532 )
	MisBeginCondition(NoMission, 1533 )
	MisBeginAction(AddMission,  1533)
	MisBeginAction(AddTrigger,  15331, TE_KILL, 642, 1 )----------------���͵Ĺ���
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� 1 ����������� ����-����� ")
	MisNeed(MIS_NEED_KILL,642,2, 10, 2)

	MisResultTalk("<t>�� ������ �������� ��� ������������� ")
	MisHelpTalk("<t>������� ��� ����� ")
	MisResultCondition(HasMission,  1533)
	MisResultCondition(NoRecord,  1533)
	MisResultCondition(HasFlag,  1533, 11 )
	MisResultAction(ClearMission,  1533 )
	MisResultAction(SetRecord,  1533  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 642)	
	TriggerAction( 1, AddNextFlag,  1533 , 10,2)
	RegCurTrigger(   15331 )


-------------------------------------------------------���һ����------------��װ����������
	DefineMission( 5120, " ������ ����� ", 1534 )

	MisBeginTalk( "<t>���������� � <b�������� ������> " )
	MisBeginCondition(NoRecord,1534)
	MisBeginCondition(HasRecord, 1533)
	MisBeginCondition(NoMission, 1534 )
	MisBeginAction(AddMission, 1534 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � <b�������� ������> ")
	MisHelpTalk("<t>��������� ��������� ����� �� ����� ������ ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���һ����
	DefineMission( 5121, " ������ ����� ", 1534,COMPLETE_SHOW )-------------��������ʦ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>������� �� ������ , ��� �������.")
	MisResultCondition(NoRecord, 1534)
	MisResultCondition(HasMission, 1534)
	MisResultAction(ClearMission,1534)
	MisResultAction(SetRecord, 1534)

---------------------------------------------------------------------������

	DefineMission( 5122, " ������ ����� ", 1535 )

	MisBeginTalk( "<t>� ����� �������� ���� " )------��������ʦ
	MisBeginCondition(NoRecord, 1535 )
	MisBeginCondition(HasRecord, 1534 )
	MisBeginCondition(NoMission, 1535 )
	MisBeginAction(AddMission,  1535)
	MisBeginAction(AddTrigger,  15351, TE_KILL, 652, 2 )----------------���͵ı�ʯ����
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 2 �������� ��������� ������� ")
	MisNeed(MIS_NEED_KILL,652,2, 10, 2)

	MisResultTalk("<t>�� ������ �������� ��� �������������.")
	MisHelpTalk("<t>������� ��� ����� ")
	MisResultCondition(HasMission,  1535)
	MisResultCondition(NoRecord,  1535)
	MisResultCondition(HasFlag,  1535, 11 )
	MisResultAction(ClearMission,  1535 )
	MisResultAction(SetRecord,  1535  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 652)	
	TriggerAction( 1, AddNextFlag,  1535 , 10,2)
	RegCurTrigger(   15351 )


-------------------------------------------------------��������------------��������ʦ
	DefineMission( 5123, " ������ ����� ", 1536 )

	MisBeginTalk( "<t>���������� � <b��������> " )
	MisBeginCondition(NoRecord,1536)
	MisBeginCondition(HasRecord, 1535)
	MisBeginCondition(NoMission, 1536 )
	MisBeginAction(AddMission, 1536 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � <b��������> ")
	MisHelpTalk("<t>����� ��� �����!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------��������
	DefineMission( 5124, " ������ ����� ", 1536,COMPLETE_SHOW )-------------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� �� ��� ��� � ���������� ��������?")
	MisResultCondition(NoRecord, 1536)
	MisResultCondition(HasMission, 1536)
	MisResultAction(ClearMission,1536)
	MisResultAction(SetRecord, 1536)

---------------------------------------------------------------------������

	DefineMission( 5125, " ������ ����� ", 1537 )

	MisBeginTalk( "<t>� ����� �������� �����." )------����
	MisBeginCondition(NoRecord, 1537 )
	MisBeginCondition(HasRecord, 1536 )
	MisBeginCondition(NoMission, 1537 )
	MisBeginAction(AddMission,  1537)
	MisBeginAction(AddTrigger,  15371, TE_KILL, 587, 3 )----------------���͵ı�ʯ����
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 3 ������ ")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>�� ������ �������� ��� �������������.")
	MisHelpTalk("<t>������� ��� ����� ")
	MisResultCondition(HasMission,  1537)
	MisResultCondition(NoRecord,  1537)
	MisResultCondition(HasFlag,  1537, 11 )
	MisResultAction(ClearMission,  1537 )
	MisResultAction(SetRecord,  1537  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1537 , 10,2)
	RegCurTrigger(   15371 )


-------------------------------------------------------���������------------����
	DefineMission( 5126, " ������ ����� ", 1538 )

	MisBeginTalk( "<t>���������� � ������ " )
	MisBeginCondition(NoRecord,1538)
	MisBeginCondition(HasRecord, 1537)
	MisBeginCondition(NoMission, 1538 )
	MisBeginAction(AddMission, 1538 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � ������ ")
	MisHelpTalk("<t>����� ��� �����!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5127, " ������ ����� ", 1538,COMPLETE_SHOW )-------------��˾
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� �� ��� ��� � ���������� ��������?")
	MisResultCondition(NoRecord, 1538)
	MisResultCondition(HasMission, 1538)
	MisResultAction(ClearMission,1538)
	MisResultAction(SetRecord, 1538)



---------------------------------------------------------------------������

	DefineMission( 5128, " ��������� ����� ", 1539 )

	MisBeginTalk( "<t>� ����� �������� ����� " )------��˾
	MisBeginCondition(NoRecord, 1539 )
	MisBeginCondition(HasRecord, 1538 )
	MisBeginCondition(NoMission, 1539 )
	MisBeginAction(AddMission,  1539)
	MisBeginAction(AddTrigger,  15391, TE_KILL, 570, 4 )----------------����Ӻ�����ս��Ա
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 4 ���������� ��������� ")
	MisNeed(MIS_NEED_KILL,570,5, 10, 5)

	MisResultTalk("<t>�� ������ �������� ��� �������������.")
	MisHelpTalk("<t>������� ��� ����� ")
	MisResultCondition(HasMission,  1539)
	MisResultCondition(NoRecord,  1539)
	MisResultCondition(HasFlag,  1539, 14 )
	MisResultAction(ClearMission,  1539 )
	MisResultAction(SetRecord,  1539  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 570)	
	TriggerAction( 1, AddNextFlag,  1539 , 10,5)
	RegCurTrigger(   15391 )


-------------------------------------------------------���������------------��˾
	DefineMission( 5129, " ��������� ����� ", 1540 )

	MisBeginTalk( "<t>���������� � �������� ���� " )
	MisBeginCondition(NoRecord,1540)
	MisBeginCondition(HasRecord, 1539)
	MisBeginCondition(NoMission, 1540 )
	MisBeginAction(AddMission, 1540 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � �������� ���� ")
	MisHelpTalk("<t>����� ��� �����!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5130, " ��������� ����� ", 1540,COMPLETE_SHOW )-------------��ҽ����ɳ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� �� ��� ��� � ���������� ��������?")
	MisResultCondition(NoRecord, 1540)
	MisResultCondition(HasMission, 1540)
	MisResultAction(ClearMission,1540)
	MisResultAction(SetRecord, 1540)


---------------------------------------------------------------------������

	DefineMission( 5131, " ����� ����� ", 1541 )

	MisBeginTalk( "<t>� ����� �������� ����� " )------��ҽ����ɳ
	MisBeginCondition(NoRecord, 1541 )
	MisBeginCondition(HasRecord, 1540 )
	MisBeginCondition(NoMission, 1541 )
	MisBeginAction(AddMission,  1541)
	MisBeginAction(AddTrigger,  15411, TE_KILL, 589, 5 )----------------��������
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 5 ������-������� ")
	MisNeed(MIS_NEED_KILL,589,2, 10, 2)

	MisResultTalk("<t>�� ������ �������� ��� �������������.")
	MisHelpTalk("<t>������� ��� ����� ")
	MisResultCondition(HasMission,  1541)
	MisResultCondition(NoRecord,  1541)
	MisResultCondition(HasFlag,  1541, 11 )
	MisResultAction(ClearMission,  1541 )
	MisResultAction(SetRecord,  1541  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1541 , 10,2)
	RegCurTrigger(   15411 )


-------------------------------------------------------���������------------��ҽ����ɳ
	DefineMission( 5132, " ����� ����� ", 1542 )

	MisBeginTalk( "<t>���������� � ��������� ����� ������ " )
	MisBeginCondition(NoRecord,1542)
	MisBeginCondition(HasRecord, 1541)
	MisBeginCondition(NoMission, 1542 )
	MisBeginAction(AddMission, 1542 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � ��������� ����� ������ ")
	MisHelpTalk("<t>����� ��� �����!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5133, " ����� ����� ", 1542,COMPLETE_SHOW )-------------����˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� �� ��� ��� � ���������� ��������?")
	MisResultCondition(NoRecord, 1542)
	MisResultCondition(HasMission, 1542)
	MisResultAction(ClearMission,1542)
	MisResultAction(SetRecord, 1542)

---------------------------------------------------------------------������

	DefineMission( 5134, " ������ ����� ", 1543 )

	MisBeginTalk( "<t><� ����� �������� ����� " )------����˹
	MisBeginCondition(NoRecord, 1543 )
	MisBeginCondition(HasRecord, 1542 )
	MisBeginCondition(NoMission, 1543 )
	MisBeginAction(AddMission,  1543)
	MisBeginAction(AddTrigger,  15431, TE_KILL, 36, 6 )----------------����è
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 6 �������� ����� ���� ")
	MisNeed(MIS_NEED_KILL,36,6, 10, 6)

	MisResultTalk("<t>�� ������ �������� ��� �������������..")
	MisHelpTalk("<t>������� ��� ����� ")
	MisResultCondition(HasMission,  1543)
	MisResultCondition(NoRecord,  1543)
	MisResultCondition(HasFlag,  1543, 15 )
	MisResultAction(ClearMission,  1543 )
	MisResultAction(SetRecord,  1543  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 36)	
	TriggerAction( 1, AddNextFlag,  1543 , 10,6)
	RegCurTrigger(   15431 )

-------------------------------------------------------���������------------����˹
	DefineMission( 5135, " ������ ����� ", 1544 )

	MisBeginTalk( "<t>���������� � ����� " )
	MisBeginCondition(NoRecord,1544)
	MisBeginCondition(HasRecord, 1543)
	MisBeginCondition(NoMission, 1544 )
	MisBeginAction(AddMission, 1544 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � ����� ")
	MisHelpTalk("<t>����� ��� �����!!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5136, " ������ ����� ", 1544,COMPLETE_SHOW )-------------���
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� �� ��� ��� � ���������� ��������?")
	MisResultCondition(NoRecord, 1544)
	MisResultCondition(HasMission, 1544)
	MisResultAction(ClearMission,1544)
	MisResultAction(SetRecord, 1544)

---------------------------------------------------------------------������

	DefineMission( 5137, " ������� ����� ", 1545 )

	MisBeginTalk( "<t>� ����� �������� ������ " )------���
	MisBeginCondition(NoRecord, 1545 )
	MisBeginCondition(HasRecord, 1544 )
	MisBeginCondition(NoMission, 1545 )
	MisBeginAction(AddMission,  1545)
	MisBeginAction(AddTrigger,  15451, TE_KILL, 263, 7 )----------------�ؾ�սʿ��
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 7 ���������� ��������� ")
	MisNeed(MIS_NEED_KILL,263,7, 10, 7)

	MisResultTalk("<t>�� ������ �������� ��� �������������.")
	MisHelpTalk("<t>������� ��� ����� ")
	MisResultCondition(HasMission,  1545)
	MisResultCondition(NoRecord,  1545)
	MisResultCondition(HasFlag,  1545, 16 )
	MisResultAction(ClearMission,  1545 )
	MisResultAction(SetRecord,  1545  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 263)	
	TriggerAction( 1, AddNextFlag,  1545 , 10,7)
	RegCurTrigger(   15451 )

-------------------------------------------------------���������------------���
	DefineMission( 5138, " ������� ����� ", 1546 )

	MisBeginTalk( "<t>���������� � ������ " )
	MisBeginCondition(NoRecord,1546)
	MisBeginCondition(HasRecord, 1545)
	MisBeginCondition(NoMission, 1546 )
	MisBeginAction(AddMission, 1546 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � ������ ")
	MisHelpTalk("<t>����� ��� �����!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5139, " ������� ����� ", 1546,COMPLETE_SHOW )-------------�մ�
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� �� ��� ��� � ���������� ��������? ")
	MisResultCondition(NoRecord, 1546)
	MisResultCondition(HasMission, 1546)
	MisResultAction(ClearMission,1546)
	MisResultAction(SetRecord, 1546)

---------------------------------------------------------------------������

	DefineMission( 5140, " ������� ����� ", 1547 )

	MisBeginTalk( "<t>� ����� �������� ����� " )------�մ�
	MisBeginCondition(NoRecord, 1547 )
	MisBeginCondition(HasRecord, 1546 )
	MisBeginCondition(NoMission, 1547 )
	MisBeginAction(AddMission,  1547)
	MisBeginAction(AddTrigger,  15471, TE_KILL, 808, 8 )----------------����ʿ��
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 8 ������ ������� ��� ")
	MisNeed(MIS_NEED_KILL,808,8, 10,8)

	MisResultTalk("<t>�� ������ �������� ��� �������������.")
	MisHelpTalk("<t>������� ��� ����� ")
	MisResultCondition(HasMission,  1547)
	MisResultCondition(NoRecord,  1547)
	MisResultCondition(HasFlag,  1547, 17 )
	MisResultAction(ClearMission,  1547 )
	MisResultAction(SetRecord,  1547  )
	MisResultAction(AddExp,3000000,3000000)
	MisResultAction(AddMoney,1000000,1000000)	
	MisResultAction(AddExpAndType,2,120000,120000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 808)	
	TriggerAction( 1, AddNextFlag,  1547 , 10,8)
	RegCurTrigger(   15471 )

-------------------------------------------------------�ս��ŵ�ָʾ------------�մ�
	DefineMission( 5141, " ���������� � ��������� ������ ", 1548 )

	MisBeginTalk( "<t>��� <r������>.� ������ �������� � ���������� � ������ " )
	MisBeginCondition(NoRecord,1548)
	MisBeginCondition(HasRecord, 1547)
	MisBeginCondition(NoMission, 1548 )
	MisBeginAction(AddMission, 1548 )
	MisBeginAction(GiveItem, 2917,1,4)----------------------------------------------------����
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>���������� � ������ ")
	MisHelpTalk("<t>������ � ���� ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ս��ŵ�ָʾ
	DefineMission( 5142, " ���������� � ��������� ������ ", 1548,COMPLETE_SHOW )-------------���ö�
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��� �� �������� ������ , ����� ��������� �������� ����...")
	MisResultCondition(NoRecord, 1548)
	MisResultCondition(HasMission, 1548)
	MisResultCondition(HasItem,2917,1)--------------����
	MisResultAction(TakeItem, 2917,1)-------------����
	MisResultAction(ClearMission,1548)
	MisResultAction(SetRecord, 1548)

	---------------------------------------------------------------------������������

	DefineMission( 5143, " ��������� ������ ", 1549 )

	MisBeginTalk( "<t>� �������������� ���� ��� �� ��������� ����� , �������� ��������� ������� " )------������
	MisBeginCondition(NoRecord, 1549 )
	MisBeginCondition(HasRecord, 1506 )
	MisBeginCondition(NoMission, 1549 )
	MisBeginAction(AddMission,  1549)
	MisBeginAction(AddTrigger,  15491, TE_KILL, 546, 10 )----------------а����Ϲ���ʿ
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 10 �������� ������ ����� ")
	MisNeed(MIS_NEED_KILL,546,10, 10,10)

	MisResultTalk("<t>�������.")
	MisHelpTalk("<t>�� �� ������ ����?")
	MisResultCondition(HasMission,  1549)
	MisResultCondition(NoRecord,  1549)
	MisResultCondition(HasFlag,  1549, 19 )
	MisResultAction(ClearMission,  1549 )
	MisResultAction(SetRecord,  1549  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1549 , 10,10)
	RegCurTrigger(   15491 )



---------------------------------------------------------------------������������

	DefineMission( 5144, " ��������� ������ ", 1550 )

	MisBeginTalk( "<t>���� ������ �������.������� ��� ���� 2 ����������� ���� " )------������
	MisBeginCondition(NoRecord, 1550 )
	MisBeginCondition(HasRecord, 1549 )
	MisBeginCondition(NoMission, 1550 )
	MisBeginAction(AddMission,  1550)
	MisBeginAction(AddTrigger,  15501, TE_GETITEM, 4893, 2 )----------------�����彣
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� 2 ����������� ���� ")
	MisNeed(MIS_NEED_ITEM, 4893, 2, 10, 2)

	MisResultTalk("<t>�������.")
	MisHelpTalk("<t>�������.� ��� ���� ��� � ������� ����� ������ ��� ")
	MisResultCondition(HasMission,  1550)
	MisResultCondition(NoRecord,  1550)
	MisResultCondition(HasItem, 4893, 2)
	MisResultAction(TakeItem, 4893, 2 )
	MisResultAction(ClearMission,  1550 )
	MisResultAction(SetRecord,  1550  )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 4893)	
	TriggerAction( 1, AddNextFlag,  1550 , 10,2)
	RegCurTrigger(   15501 )


---------------------------------------------------------------------������������

	DefineMission( 5145, " ��������� ������ ", 1551 )

	MisBeginTalk( "<t>��� ������ ������ �� ��� �������!������� ��!" )------������
	MisBeginCondition(NoRecord, 1551 )
	MisBeginCondition(HasRecord, 1550 )
	MisBeginCondition(NoMission, 1551 )
	MisBeginAction(AddMission,  1551)
	MisBeginAction(AddTrigger,  15511, TE_KILL, 606, 3 )----------------��������
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 3 ������������� ����� ")
	MisNeed(MIS_NEED_KILL,606,3, 10,3)

	MisResultTalk("<t>������� ��� �� �����...")
	MisHelpTalk("<t>������� ��� �� �����...")
	MisResultCondition(HasMission,  1551)
	MisResultCondition(NoRecord,  1551)
	MisResultCondition(HasFlag,  1551, 12 )
	MisResultAction(ClearMission,  1551 )
	MisResultAction(SetRecord,  1551  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1551 , 10,3)
	RegCurTrigger(   15511 )

---------------------------------------------------------------------������������

	DefineMission( 5146, " ��������� ������ ", 1552 )

	MisBeginTalk( "<t>������� � ����� �� ����� , � ������ �������� ��������.� ����� ��...������ ��� ��� �������.�� ����� ���� �� ��������� ����������..." )------������
	MisBeginCondition(NoRecord, 1552 )
	MisBeginCondition(HasRecord, 1551 )
	MisBeginCondition(NoMission, 1552 )
	MisBeginAction(AddMission,  1552)
	MisBeginAction(AddTrigger,  15521, TE_KILL, 589, 3 )----------------��������
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������ 3 ������-������� ")
	MisNeed(MIS_NEED_KILL,589,3, 10,3)

	MisResultTalk("<t>��������� ��� �� ����������� ������ ")
	MisHelpTalk("<t>���� �� ������?")
	MisResultCondition(HasMission,  1552)
	MisResultCondition(NoRecord,  1552)
	MisResultCondition(HasFlag,  1552, 12 )
	MisResultAction(ClearMission,  1552 )
	MisResultAction(SetRecord,  1552  )
	MisResultAction(AddExp1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1552 , 10,3)
	RegCurTrigger(   15521 )

-------------------------------------------------------�յ׽���------------���׵���˹
	DefineMission( 5147, " ����� ��������� ", 1553 )

	MisBeginTalk( "<t>�������!�� ��������� ��� ���������� ��� ���� ��� �� ���������� � �������������.��� ��� ������ ����� , ������� ��� ��������������." )
	MisBeginCondition(NoRecord,1553)
	MisBeginCondition(HasRecord, 1577)
	MisBeginCondition(NoMission, 1553 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------�ɵ�ʯ
	MisBeginAction(AddMission, 1553 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>�������� ������ ����� �������-������������� ")
	MisHelpTalk("<t>����� ���������� ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�յ׽���
	DefineMission( 5148, " ����� ��������� ", 1553,COMPLETE_SHOW )-------------����үү
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� ���������� ����!")
	MisResultCondition(NoRecord, 1553)
	MisResultCondition(HasMission, 1553)
	MisResultCondition(HasItem, 2918, 1)------------�ɵ�ʯ
	MisResultAction(TakeItem, 2918, 1 )-----�ɵ�ʯ
	MisResultAction(ClearMission,1553)
	MisResultAction(SetRecord, 1553)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------�յ׽���------------���ö�
	DefineMission( 5149, " ����� ��������� ", 1554 )

	MisBeginTalk( "<t>�������!�� ��������� ��� ���������� ��� ���� ��� �� ���������� � �������������.��� ��� ������ ����� , ������� ��� ��������������." )
	MisBeginCondition(NoRecord,1554)
	MisBeginCondition(HasRecord, 1548)
	MisBeginCondition(NoMission, 1554 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------�ɵ�ʯ
	MisBeginAction(AddMission, 1554 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>206������� ������ ����� �������-������������� ")
	MisHelpTalk("<t>����� ���������� ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�յ׽���
	DefineMission( 5150, " ����� ��������� ", 1554,COMPLETE_SHOW )-------------����үү
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� ���������� ����!")
	MisResultCondition(NoRecord, 1554)
	MisResultCondition(HasMission, 1554)
	MisResultCondition(HasItem, 2918, 1)------------�ɵ�ʯ
	MisResultAction(TakeItem, 2918, 1 )-----�ɵ�ʯ
	MisResultAction(ClearMission,1554)
	MisResultAction(SetRecord, 1554)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------�յ׽���------------������
	DefineMission( 5151, " ����� ��������� ", 1555 )

	MisBeginTalk( "<t>�������!�� ��������� ��� ���������� ��� ���� ��� �� ���������� � �������������.��� ��� ������ ����� , ������� ��� ��������������." )
	MisBeginCondition(NoRecord,1555)
	MisBeginCondition(HasRecord, 1552)
	MisBeginCondition(NoMission, 1555 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------�ɵ�ʯ
	MisBeginAction(AddMission, 1555 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>206������� ������ ����� �������-������������� ")
	MisHelpTalk("<t>����� ���������� ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�յ׽���
	DefineMission( 5152, " ����� ��������� ", 1555,COMPLETE_SHOW )-------------����үү
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�� ���������� ����!")
	MisResultCondition(NoRecord, 1555)
	MisResultCondition(HasMission, 1555)
	MisResultCondition(HasItem, 2918, 1)------------�ɵ�ʯ
	MisResultAction(TakeItem, 2918, 1 )-----�ɵ�ʯ
	MisResultAction(ClearMission,1555)
	MisResultAction(SetRecord, 1555)
	MisResultAction(SetRecord, 1556)

------------------------------------------------------�����ǵľ���------------����үү
	DefineMission( 5169, " ������������ ���� ", 1557 )

	MisBeginTalk( "<t>��...���������� � �������� ���� (795, 363)" )
	MisBeginCondition(NoRecord,1557)
	MisBeginCondition(HasRecord, 1556)
	MisBeginCondition(NoMission, 1557 )
	MisBeginAction(AddMission, 1557 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "<t>���������� � �������� ���� (795, 363)")
	MisHelpTalk("<t>���������� � �������� ���� (795, 363)")
	MisResultCondition(AlwaysFailure)


	--------------------------------------------------------�����ǵľ���
	DefineMission( 5153, " ������������ ���� ", 1557,COMPLETE_SHOW )-------------����������
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>��� ������?� �����?��-��.������� ��� <r������> � �������� �� ������.")
	MisResultCondition(NoRecord, 1557)
	MisResultCondition(HasMission, 1557)
	MisResultAction(ClearMission,1557)
	MisResultAction(SetRecord, 1557)
	
---------------------------------------------------------------------��̫�ŵ��ǻ�

	DefineMission( 5154, " ��������� ������� ", 1561 )

	MisBeginTalk( "<t>�� ���������� ����.������ ��� �� ���� ������!" )------����������
	MisBeginCondition(NoRecord,1561)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1559)
	MisBeginCondition(NoMission, 1561 )
	MisBeginAction(AddMission, 1561 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� �� <r��� ��� ����������> � �������� �� ������.")
	
	MisResultTalk("<t>������������!")
	MisHelpTalk("<t>�������� ��� ������� ��������.")
	MisResultCondition(NoRecord, 1561)
	MisResultCondition(HasMission, 1561)
	MisResultCondition(HasRecord, 1562)
	MisResultCondition(HasRecord, 1564)
	MisResultAction(ClearMission,1561)
	MisResultAction(SetRecord, 1561)
	

---------------------------------------------------------------------���ƴ�Ⱦ��

	DefineMission( 5155, " ������� ", 1566 )-----����������

	MisBeginTalk( "<t>��-��.��� ����� �������!" )------����������
	MisBeginCondition(NoRecord,1566)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1560)
	MisBeginCondition(NoMission, 1566 )
	MisBeginAction(AddMission, 1566 )
	MisBeginAction(AddTrigger,  15661, TE_GETITEM, 2743, 1 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ������� 1 ������� 3 ������ ")
	MisNeed(MIS_NEED_ITEM,2743,1, 10, 1)

	MisResultTalk("<t>�������.")
	MisHelpTalk("<t>��� �����!")
	MisResultCondition(NoRecord, 1566)
	MisResultCondition(HasMission, 1566)
	MisResultCondition(HasItem, 2743, 1)
	MisResultAction(TakeItem,  2743, 1 )
	MisResultAction(ClearMission,1566)
	MisResultAction(SetRecord, 1566)
	MisResultAction(SetRecord, 1559)


	InitTrigger()
	TriggerCondition( 1, IsItem,2743)	
	TriggerAction( 1, AddNextFlag, 1566, 10, 1 )
	RegCurTrigger( 15661 )
---------------------------------------------------------------------�ֶ����Ʒ�

	DefineMission( 5156, "������� ", 1567 )-----����������

	
	MisBeginTalk( "<t>��� ����� �������� ����� 3 ��.  " )------����������
	MisBeginCondition(NoRecord,1567)
	MisBeginCondition(HasRecord, 1562)
	MisBeginCondition(HasRecord, 1565)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(NoMission, 1567 )
	MisBeginAction(AddMission, 1567 )
	MisBeginAction(AddTrigger,  15671, TE_GETITEM, 2744, 1 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "����� ������� �������� ������� 3 �� ")
	MisNeed(MIS_NEED_ITEM,2744,1, 10, 1)

	MisResultTalk("<t>�������.")
	MisHelpTalk("<t>��� �����!")
	MisResultCondition(NoRecord, 1567)
	MisResultCondition(HasMission, 1567)
	MisResultCondition(HasItem, 2744, 1)
	MisResultAction(TakeItem,  2744, 1 )
	MisResultAction(ClearMission,1567)
	MisResultAction(SetRecord, 1567)
	


	InitTrigger()
	TriggerCondition( 1, IsItem,2744)	
	TriggerAction( 1, AddNextFlag, 1567, 10, 1 )
	RegCurTrigger( 15671 )



-------------------------------------------------------�����ػ���-----------------����������
	DefineMission( 5157, " ����� ������ ", 1568 )

	MisBeginTalk( "<t>����� ��� ���� ���������� �� ��������-��������������." )
	MisBeginCondition(NoRecord,1568)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(HasRecord, 1564)
	MisBeginCondition(NoMission, 1568 )
	MisBeginAction(AddMission, 1568 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	
	MisNeed(MIS_NEED_DESP, "<t>���������� �� ��������-��������������.")
	MisHelpTalk("<t>�� ��!����� ")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------------�����ػ���
	DefineMission( 5158, " ����� ������ ", 1568,COMPLETE_SHOW )-------------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You mean Granny Dong has admitted failure? You aren't joking with me, are you? Wahaha looks like the truth is in the hands of wise men like me, though we are far and few. You are hereby appointed Guardian of Truth by the great Weird Grampa!")
	MisResultCondition(NoRecord, 1568)
	MisResultCondition(HasMission, 1568)
	MisResultAction(ClearMission,1568)
	MisResultAction(SetRecord, 1568)
	MisResultAction(SetRecord, 1571)


	-------------------------------------------------------�����ػ���-----------------����������
	DefineMission( 5159, " ����� ������ ", 1569 )

	MisBeginTalk( "<t>����� ��� ���� ���������� �� ��������-��������������." )
	MisBeginCondition(NoRecord,1569)
	MisBeginCondition(HasRecord, 1567)
	MisBeginCondition(NoMission, 1569 )
	MisBeginAction(AddMission, 1569 )
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")
	
	MisNeed(MIS_NEED_DESP, "<t>���������� �� ��������-��������������.")
	MisHelpTalk("<t>�� ��!����� ")
	
	MisResultCondition(AlwaysFailure)


--------------------------------------------------------�����ػ���

	DefineMission( 5160, " ����� ������ ", 1569,COMPLETE_SHOW )-------------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You mean Granny Dong has admitted failure? You aren't joking with me, are you? Wahaha looks like the truth is in the hands of wise men like me, though we are far and few. You are hereby appointed Guardian of Truth by the great Weird Grampa!")
	MisResultCondition(NoRecord, 1569)
	MisResultCondition(HasMission, 1569)
	MisResultAction(ClearMission,1569)
	MisResultAction(SetRecord, 1569)
	MisResultAction(SetRecord, 1571)

	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,20000,20000)
-----------------------------------------------------���ص�����

	DefineMission( 5161, " ������������ ���������  ",1570 )

	MisBeginTalk( "<t>�� �������� ��� ������� ���� �������� ���� ��������? �� �� ������? ��-��-��!������ � ������ � ��� ��� �� ������� ������� �����.��������� ��� ������ AB " )
	MisBeginCondition(NoRecord, 1570)
	MisBeginCondition(HasRecord, 1571)
	MisBeginCondition(NoMission,1570 )
	MisBeginAction(AddMission, 1570)
	MisBeginAction(AddTrigger, 15701, TE_GETITEM, 2408, 1 )		--����AB
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "������� ������� ������ AB ")
	MisNeed(MIS_NEED_ITEM,2408,1, 10, 1)
	
	MisResultTalk("<t>�������!")
	MisHelpTalk("<t>������� ������� � �������� ����� ���������� � ���� ����� ")
	MisResultCondition(HasMission, 1570)
	MisResultCondition(NoRecord,1570)
	MisResultCondition(HasItem,2408,1 )
	MisResultAction(TakeItem, 2408,1 )
	MisResultAction(ClearMission, 1570)
	MisResultAction(SetRecord,1570)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2408)	
	TriggerAction( 1, AddNextFlag,  1570, 10,1)
	RegCurTrigger( 15701 )

----------------------------------------------------���ص�����

	DefineMission( 5162, " ������������ ���������  ",1572 )

	MisBeginTalk( "<t>��������� ������ BC" )
	MisBeginCondition(NoRecord, 1572)
	MisBeginCondition(HasRecord, 1570)
	MisBeginCondition(NoMission,1572 )
	MisBeginAction(AddMission, 1572)
	MisBeginAction(AddTrigger, 15721, TE_GETITEM, 2409, 1 )		--����BC
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������")

	MisNeed(MIS_NEED_DESP, "��������� ������ BC ")
	MisNeed(MIS_NEED_ITEM,2409,1, 10, 1)
	
	MisResultTalk("<t>�������!")
	MisHelpTalk("<t>������� ������� � �������� ����� ���������� � ���� ����� ")
	MisResultCondition(HasMission, 1572)
	MisResultCondition(NoRecord,1572)
	MisResultCondition(HasItem,2409,1 )
	MisResultAction(TakeItem, 2409,1 )
	MisResultAction(ClearMission, 1572)
	MisResultAction(SetRecord,1572)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2409)	
	TriggerAction( 1, AddNextFlag,  1572, 10,1)
	RegCurTrigger( 15721 )


	----------------------------------------------------���ص�����

	DefineMission( 5163, " ������������ ��������� ",1573 )

	MisBeginTalk( "<t>��������� ������ CD" )
	MisBeginCondition(NoRecord, 1573)
	MisBeginCondition(HasRecord, 1572)
	MisBeginCondition(NoMission,1573 )
	MisBeginAction(AddMission, 1573)
	MisBeginAction(AddTrigger, 15731, TE_GETITEM, 2410, 1 )		--����CD
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ������ CD ")
	MisNeed(MIS_NEED_ITEM,2410,1, 10, 1)
	
	MisResultTalk("<t>�������!")
	MisHelpTalk("<t>������� ������� � �������� ����� ���������� � ���� ����� ")
	MisResultCondition(HasMission, 1573)
	MisResultCondition(NoRecord,1573)
	MisResultCondition(HasItem,2410,1 )
	MisResultAction(TakeItem, 2410,1 )
	MisResultAction(ClearMission, 1573)
	MisResultAction(SetRecord,1573)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2410)	
	TriggerAction( 1, AddNextFlag,  1573, 10,1)
	RegCurTrigger( 15731 )


----------------------------------------------------���ص�����

	DefineMission( 5164, " ������������ ��������� " ,1574 )

	MisBeginTalk( "<t>��������� ������ DE " )
	MisBeginCondition(NoRecord, 1574)
	MisBeginCondition(HasRecord, 1573)
	MisBeginCondition(NoMission,1574 )
	MisBeginAction(AddMission, 1574)
	MisBeginAction(AddTrigger, 15741, TE_GETITEM, 2411, 1 )		--����DE
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ������ DE")
	MisNeed(MIS_NEED_ITEM,2411,1, 10, 1)
	
	MisResultTalk("<t>�������!")
	MisHelpTalk("<t>������� ������� � �������� ����� ���������� � ���� ����� ")
	MisResultCondition(HasMission, 1574)
	MisResultCondition(NoRecord,1574)
	MisResultCondition(HasItem,2411,1 )
	MisResultAction(TakeItem, 2411,1 )
	MisResultAction(ClearMission, 1574)
	MisResultAction(SetRecord,1574)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2411)	
	TriggerAction( 1, AddNextFlag,  1574, 10,1)
	RegCurTrigger( 15741 )


----------------------------------------------------���ص�����

	DefineMission( 5165, " ������������ ���������  ",1575 )

	MisBeginTalk( "<t>��������� ������ EF " )
	MisBeginCondition(NoRecord, 1575)
	MisBeginCondition(HasRecord, 1574)
	MisBeginCondition(NoMission,1575 )
	MisBeginAction(AddMission, 1575)
	MisBeginAction(AddTrigger, 15751, TE_GETITEM, 2412, 1 )		--����EF
	MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

	MisNeed(MIS_NEED_DESP, "��������� ������ EF ")
	MisNeed(MIS_NEED_ITEM,2412,1, 10, 1)
	
	MisResultTalk("<t>�������!� ������ ��� � ����������� ")
	MisHelpTalk("<t>������� ������� � �������� ����� ���������� � ���� ����� ")
	MisResultCondition(HasMission, 1575)
	MisResultCondition(NoRecord,1575)
	MisResultCondition(HasItem,2412,1 )
	MisResultAction(TakeItem, 2412,1 )
	MisResultAction(ClearMission, 1575)
	MisResultAction(SetRecord,1575)
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,400000,400000)	
	MisResultAction(AddExpAndType,2,80000,80000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2412)	
	TriggerAction( 1, AddNextFlag,  1575, 10,1)
	RegCurTrigger( 15751 )


----------------------------------------������о����
     DefineMission(5166," ��������� ���������� ������ ",1576)
     MisBeginTalk("<t>� ������ ��� � ����������� ")
     MisBeginCondition(NoRecord,1576)
      MisBeginCondition(NoMission, 1576)
     MisBeginCondition(HasRecord, 1575)
     MisBeginAction(AddMission, 1576)
     MisCancelAction(SystemNotice, "����� �� ����� ���� ������ ")

     MisNeed(MIS_NEED_DESP, "��������� ���� ������ ��������� ��� �� ��������� ")
     MisHelpTalk("<t>����������,����� ��������� ")
     MisResultTalk("<t>��� ������ �� ����� ���� �� ����� ������ ������ � ����������. � ��� �������....")
     MisResultCondition(HasRecord, 1576)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 1576)
     MisResultAction(ClearMission, 1576 )
     MisResultAction(SetRecord, 1576 )



end
HistoryMission001()






--------------------------------------------------------------------------AngelOfDeath-------------------------------------------------------------------------
----------------------------------------------------------------------------Project----------------------------------------------------------------------------
-----------------------------------------------------------------------------2009 (c)--------------------------------------------------------------------------
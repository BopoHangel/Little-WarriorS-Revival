print("-------------------------------------------------------------------------------")
print( "����㧪� ����� Misscript (���ᨨ � �������) :" )
print("-------------------------------------------------------------------------------")
print( "����㧪� MissionScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		������[ҩ�����ˡ�����ķ]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function RobinMission003()

-----------------------------------ҩƷ����ʺ�
	DefineMission( 707, "����������� ����� ", 703, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>� ���� �� ����� ���������? ����� ����������! �������� ��� <r������>, � �� ��� �����! � ����� ��� ��� ����������.<n><t>� ������ ������������� � ����� (2223, 2785).<n><t>(���� ��� ��� ��������� �����. ���������� �� �� ������ F1 - F8 ��� �������� �������������.)")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(NoFlag, 703, 10)
	MisResultCondition(HasFlag, 703, 1)
	MisResultCondition(HasItem, 3952, 1)
	MisResultAction(TakeItem, 3952, 1)
	MisResultAction(SetFlag, 703, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)

--------------------------Ҷ���ռ�
	DefineMission( 733, "��������� ������� ", 721 )

	MisBeginTalk( "<t>������! ��� ����� ������� ��� ���� �������� �����. ��� ����� ��������� ����� �������. ������ 10 <r�������� ����> � 5 <r������� ����>, ������� ����� ������ � ���������� ����� ��� ���������� ������." )
	MisBeginCondition(NoMission, 721)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 721)
	MisBeginAction(SetFlag, 721, 1)
	MisBeginAction(AddTrigger, 7211, TE_GETITEM, 1573, 10 )
	MisBeginAction(AddTrigger, 7212, TE_GETITEM, 1574, 3 )
	MisCancelAction(ClearMission, 721)

	MisNeed(MIS_NEED_ITEM, 1573, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1574, 3, 20, 3)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>������������! � ���� ���������� ��� ������������ ������!")
	MisHelpTalk("<t>����� �� �� ������ ������?")
	MisResultCondition(HasMission, 721)
	MisResultCondition(HasItem, 1573, 10 )
	MisResultCondition(HasItem, 1574, 3 )
	MisResultAction(TakeItem, 1573, 10 )
	MisResultAction(TakeItem, 1574, 3 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 721)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1573)	
	TriggerAction( 1, AddNextFlag, 721, 10, 10 )
	RegCurTrigger( 7211 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1574)	
	TriggerAction( 1, AddNextFlag, 721, 20, 3 )
	RegCurTrigger( 7212 )

--------------------------����䷽
	DefineMission( 738, "������ ������ ", 726 )

	MisBeginTalk( "<t>���� ��������� ������������, ����� ������� ����� ��� ��������. ��������, ��� � ��� �����������, �� �� ����� �� �� ��� ������ ������� 2 <r�������>, 2 <r��������� �����> and 5 <r������ ������>. ����������� ����� ������ �� ������� ����, ������������ ������ � ����������. � ������� ����. ��� ����� ������!" )
	MisBeginCondition(NoMission, 726)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 726)
	MisBeginAction(SetFlag, 726, 1)
	MisBeginAction(AddTrigger, 7261, TE_GETITEM, 1777, 2 )
	MisBeginAction(AddTrigger, 7262, TE_GETITEM, 1579, 2 )
	MisBeginAction(AddTrigger, 7263, TE_GETITEM, 1705, 5 )
	MisCancelAction(ClearMission, 726)

	MisNeed(MIS_NEED_ITEM, 1777, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1579, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 1705, 5, 30, 5)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����� ������. ��� ��� �� ������� ����������� �����������, � ���� ������ ����������� ������ �����.")
	MisHelpTalk("<t>���? ������� ������� ��� ����������� ���� � ���� �� ������ �����������...")
	MisResultCondition(HasMission, 726)
	MisResultCondition(HasItem, 1777, 2 )
	MisResultCondition(HasItem, 1579, 2 )
	MisResultCondition(HasItem, 1705, 5 )
	MisResultAction(TakeItem, 1777, 2 )
	MisResultAction(TakeItem, 1579, 2 )
	MisResultAction(TakeItem, 1705, 5 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 726)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1777)	
	TriggerAction( 1, AddNextFlag, 726, 10, 2 )
	RegCurTrigger( 7261 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1579)	
	TriggerAction( 1, AddNextFlag, 726, 20, 2 )
	RegCurTrigger( 7262 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1705)	
	TriggerAction( 1, AddNextFlag, 726, 30, 5 )
	RegCurTrigger( 7263 )

--------------------------Ģ��Ģ��
	DefineMission( 739, "����� ����� ", 727 )

	MisBeginTalk( "<t>������ � ���,� �������,� ������ �������� <b���� �������> �������� �� �������. ������� � ��� ����� �������������,� ��������,�� ����� ��������� ��� ��� �����.��� ������� ��� ������ ������� �����,����� ������� �� �������� �������������. ������ ���������� ��� �������� 10 <r�������� ������> � 5 <r������>?<n><t>���...����� � ���, ��� ���� ����-������� ������ ����������,��� ��� ����� ������� � �����, ��������� �������� �������. ���� ����� ����� �� ����������� (2220, 2564). ������ ��������,�������� ������ ������ ����� ��� ������!" )
	MisBeginCondition(NoMission, 727)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 727)
	MisBeginAction(SetFlag, 727, 1)
	MisBeginAction(AddTrigger, 7271, TE_GETITEM, 3118, 5 )
	MisBeginAction(AddTrigger, 7272, TE_GETITEM, 1725, 10 )
	MisCancelAction(ClearMission, 727)

	MisNeed(MIS_NEED_ITEM, 3118, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1725, 10, 20, 10)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�������������! �� ������ ���! �������!")
	MisHelpTalk("<t>� ��� ����? ����� ����-������� ������� ���?")
	MisResultCondition(HasMission, 727)
	MisResultCondition(HasItem, 3118, 5 )
	MisResultCondition(HasItem, 1725, 10 )
	MisResultAction(TakeItem, 3118, 5 )
	MisResultAction(TakeItem, 1725, 10 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 727)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 3118)	
	TriggerAction( 1, AddNextFlag, 727, 10, 5 )
	RegCurTrigger( 7271 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1725)	
	TriggerAction( 1, AddNextFlag, 727, 20, 10 )
	RegCurTrigger( 7272 )


end
RobinMission003() --������������ʱ������øú���


----------------------------------------------------------
--							--
--							--
--		������[Сɽ��]				--
--							--
--		219350,273050				--
----------------------------------------------------------
function RobinMission004()

-----------------------------------����ָ��
	DefineMission( 748, "������ ��������� ", 736 )
	
	MisBeginTalk( "<t>�� �����,����� ����� ��������������? �������������� ����� ����������� ������������ � ���������� �����������,� �� ����� ���������� �����. ��� ����������� ������, �� �� ������� ������������ � ���� �������� ����, ��� �������������. ����� �������� <r������ ���������>, ���� ����� ����� ������� � <p�������� �������>, ����� 5 <b������� �����> (� ������ �� ����), 10 <b������� ������> (�� ���������) � ������� 5 ��. <b���������� �����> (�������� ��������).<n><t>����� �� ��������� �������, � ����� ���� <b������ ���������>.<n><t>����� ������� 10 ������� �������, � ������ ���� ��������������." )
	MisBeginCondition(NoMission, 736)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_RISKER )
	MisBeginAction(AddMission, 736)
	MisBeginAction(SetFlag, 736, 1)
	MisBeginAction(AddTrigger, 7361, TE_KILL, 104, 5 )
	MisBeginAction(AddTrigger, 7362, TE_KILL, 39, 10 )
	MisBeginAction(AddTrigger, 7363, TE_GETITEM, 1844, 5 )
	MisCancelAction(ClearMission, 736)
	
	MisNeed(MIS_NEED_KILL, 104, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 39, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 1844, 5, 30, 5)

	MisPrize(MIS_PRIZE_ITEM, 3962, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����� ��������, � ������� �����!<n><t>�� ������ ��� ���������. ��� ���� <r������ ���������> ��� ��, ��� ���� �����������. <n><t>������� ��� � ������� ���, ����� ���������� <p10 ������>.")
	MisHelpTalk("<t>�� �� �������� �������. ������������ ������������ ���������.��� �������,����� ������� �� ������� ��������������!")
	MisResultCondition(HasMission, 736)
	MisResultCondition(HasFlag, 736, 14 )
	MisResultCondition(HasFlag, 736, 29 )
	MisResultCondition(HasItem, 1844, 5 )
	MisResultAction(TakeItem, 1844, 5)
	MisResultAction(ClearMission, 736)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 104 )	
	TriggerAction( 1, AddNextFlag, 736, 10, 5 )
	RegCurTrigger( 7361 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 39 )	
	TriggerAction( 1, AddNextFlag, 736, 20, 10 )
	RegCurTrigger( 7362 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1844 )	
	TriggerAction( 1, AddNextFlag, 736, 30, 5 )
	RegCurTrigger( 7363 )


-----------------------------------����ʿתְ����
	DefineMission( 758, "����������� ���������� ����� ", 742 )
	
	MisBeginTalk( "<t>���� �� �������� ��������� <b���������� �����>, �� ������ ������ ������ �� ���.<n><t>����� � ��� �����,� ��������� ��-�������� � ������� ������. ������, ��� ������� � ������� ������ ������ �����.<n><t>������ �� ���������������� ������,����� ��� �����,��� �� �� ����. <n><t>��� ����� � ��������: <p������� ������>'s <b ����������� �������>, <p���������� ������>'s <b ������ �����>, <������ �����������>'s <b ������ ��������> � <p����� ����>'s <b ������ ��������>.������ ������ ������� �� ��������..." )
	MisBeginCondition(NoRecord, 742)
	MisBeginCondition(NoMission, 742)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 4 )
	MisBeginCondition(CheckConvertProfession, MIS_VOYAGE )
	MisBeginAction(AddMission, 742)
	MisCancelAction(ClearMission, 742)

	MisNeed(MIS_NEED_DESP, "Look for Burgess at (3254, 3278)")
	MisNeed(MIS_NEED_DESP, "Look for Sacenis at (2279, 1112)")
	MisNeed(MIS_NEED_DESP, "Talk to Dilady at (3595, 739)")
	MisNeed(MIS_NEED_DESP, "Talk to Whitney at (3097, 3530)")
	
	MisResultTalk("<t>�,�� ��������! ������ �� ���� <b��������������>.<n><t>����� � ���� ��� �������� � ����� ��������!")
	MisHelpTalk("<t>���� �������! �� ��� �� ������� ��� ������? ����� �� �� ����� ���� �������!")
	MisResultCondition(HasMission, 742)
	MisResultCondition(HasFlag, 742, 20 )
	MisResultCondition(HasFlag, 742, 30 )
	MisResultCondition(HasFlag, 742, 40 )
	MisResultCondition(HasFlag, 742, 50 )
	MisResultAction(ClearMission, 742)
	MisResultAction(SetRecord, 742)
	MisResultAction(SetProfession, 16)



-----------------------------------����ʿתְ����
	DefineMission( 760, "����������� ���������� ����� ", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>����! ������ ����� ����������� �����?  ����� �� ������ ������ ��������! ��� ����� ������� ������� ��� ���, ���� �� ������� ����������� �����!")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 20)
	MisResultAction(SetFlag, 742, 20)


-----------------------------------����ʿתְ����
	DefineMission( 761, "����������� ���������� ����� ", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��������� ��������� �������. ���� ����� ������ ����� ����,��� � ����������!")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 30)
	MisResultAction(SetFlag, 742, 30)

-----------------------------------����ʿתְ����
	DefineMission( 762, "����������� ���������� ����� ", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��, ����� ���������� �����, ����� ����������!<n><t>��������,�� ������ ���� 50000G...��� 5 ���...")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 40)
	MisResultAction(SetFlag, 742, 40)

-----------------------------------����ʿתְ����
	DefineMission( 763, "����������� ���������� ����� ", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�������� � ���� ����� ������. ��������� �� ���,���� ����� �������������. ����� ������� ������� ������ � ����� ��������.")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 50)
	MisResultAction(SetFlag, 742, 50)

end
RobinMission004()


----------------------------------------------------------
--							--
--							--
--		������[С���]				--
--							--
--		224575,277025				--
----------------------------------------------------------
function RobinMission007()

-----------------------------------�������ʺ�
	DefineMission( 703, "����������� ������� ", 701, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>� ������ �� ����� �������? ���� ����� <b�����>, � ������ ������ <p������>. � ��� ������, �������� � ��� ���������, ������ �� �������� ���, ���� ������ ����� � �����, � ����� ���� �������� ��������� �� ����� ����� � �.�... � ������������� ������� � ��� ���, �� ������ ����������, ����� ������ ����, ��� ��� � ���� ��� � ���� ���� ���������������� ������ �� ���������� �����.<n><t>�� ������ ���������� � <b������> �� ����������� (2223, 2785) � ����� ��� ��� ������ ���� ���, �����!<n><t>(����� ��� ���� ��� �������. ������ ��������� � ������� ������� ����� �� ����.)")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(NoFlag, 701, 10)
	MisResultCondition(HasItem, 3950, 1)
	MisResultAction(TakeItem, 3950, 1)
	MisResultAction(SetFlag, 701, 10)
	MisResultBagNeed(1)
	

end
RobinMission007()


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����١��ʵ�ά��]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission017()

-----------------------------------�ϵ���
	DefineMission( 719, "������ � ����������� ", 711 )
	
	MisBeginTalk( "<t>����� ���� �����������  <r������ � �����������>? ������ ������ ��������� ���� ���������,����� ������������ ������. ���� ��������� �������� ���,������� �� �� ��������������� ����� ������������.<n><t>����� � ����� ���� ���� <r������ � �����������><t>����� � ������ ��� 1 ����� <r��� ���������� ������> � ������� ��� 2 <r�������� �����>. T��� ����� ������ �������� ������������ ������� ����������. ����� <bOuya> � <p�������> ���� ���� ����� ����� ������.<n><t>��� �� ����������� <r(1184, 3557)> � ���� 10 <b������� ����������> " )
	MisBeginCondition(NoMission, 711)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(CheckConvertProfession, MIS_DOCTOR )
	MisBeginAction(AddMission, 711)
	MisBeginAction(SetFlag, 711, 1)
	MisBeginAction(AddTrigger, 7111, TE_GETITEM, 3122, 1 )
	MisBeginAction(AddTrigger, 7112, TE_GETITEM, 3129, 2 )
	MisBeginAction(AddTrigger, 7113, TE_KILL, 247, 10 )
	MisCancelAction(ClearMission, 711)

	MisNeed(MIS_NEED_ITEM, 3122, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3129, 2, 20, 2)
	MisNeed(MIS_NEED_KILL, 247, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3954, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�� ������ ��������!<n><t>� ��� ���,��� �� ������ �� ���������, ��� � ���� <r������ � �����������> ��������� ��� ��������.<n><t>����������� �� ���,����� ���������� <p10 ������>. ")
	MisHelpTalk("<t>�� �� �������� ����� ���������. �� �� ����� ����� ���������.")
	MisResultCondition(HasMission, 711)
	MisResultCondition(HasItem, 3122, 1 )
	MisResultCondition(HasItem, 3129, 2 )
	MisResultCondition(HasFlag, 711, 39 )
	MisResultAction(TakeItem, 3122, 1 )
	MisResultAction(TakeItem, 3129, 2 )
	MisResultAction(ClearMission, 711)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122 )	
	TriggerAction( 1, AddNextFlag, 711, 10, 1 )
	RegCurTrigger( 7111 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129 )	
	TriggerAction( 1, AddNextFlag, 711, 20, 2 )
	RegCurTrigger( 7112 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 247 )	
	TriggerAction( 1, AddNextFlag, 711, 30, 10 )
	RegCurTrigger( 7113 )

-----------------------------------ʥְ��תְ����
	DefineMission( 751, "����� �������� ", 739 )
	
	MisBeginTalk( "<t>����� ����� <b���������, ����� ����� ����. � �������, ��� �� �� �������� �� ����. � ��� ���� ����������� ������.<n><t>������ ����� ���� 2 <y�������� ����������>, 4 <y�������> � 6  ����� <y���� ����������� ������>.<n><t>������� �������� <b������� �����> � ������� ���� � <b������� - ����> � ���������� ������. �� ������ �������� 3 ����� ���� ����������� ������, 2 ������� � 1 �������� ����������." )
	MisBeginCondition(NoRecord, 739)
	MisBeginCondition(NoMission, 740)
	MisBeginCondition(NoMission, 739)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 5 )
	MisBeginCondition(CheckConvertProfession, MIS_CLERGY )
	MisBeginAction(AddMission, 739)
	MisCancelAction(ClearMission, 739)

	MisNeed(MIS_NEED_DESP, "��������� 3 ���� ����������� ������, 2 ������� � 1 �������� ���������� <b������� �����> � ������� ���� (795, 363)")
	MisNeed(MIS_NEED_DESP, "��������� 3 ���� ����������� ������, 2 ������� � 1 �������� ���������� <b������� ����> � ���������� ������ (630, 2091)")
	
	MisResultTalk("<t>����������!<n><t>������ �� <b������������>!<n><t>����� ������ ���� ����� � �����.")
	MisHelpTalk("<t>�� ����� ������� �� �� ���� ��������� �� ���������? �� �������! �������� � ��������������� - ���� � ������!")
	MisResultCondition(HasMission, 739)
	MisResultCondition(HasFlag, 739, 10 )
	MisResultCondition(HasFlag, 739, 20 )
	MisResultAction(ClearMission, 739)
	MisResultAction(SetRecord, 739)
	MisResultAction(SetProfession, 13)
	
-----------------------------------ʥְ��תְ����
	DefineMission( 752, "����� �������� ", 739, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("��� ������� ��� ����? �� ����� �����. � ������ ������� �������� �� ����.")
	MisResultCondition(NoRecord, 739)
	MisResultCondition(HasMission, 739)
	MisResultCondition(NoFlag, 739, 10)
	MisResultCondition(HasItem, 3122, 3)
	MisResultCondition(HasItem, 3146, 2)
	MisResultCondition(HasItem, 3130, 1)
	MisResultAction(TakeItem, 3122, 3)
	MisResultAction(TakeItem, 3146, 2)
	MisResultAction(TakeItem, 3130, 1)
	MisResultAction(SetFlag, 739, 10)

-----------------------------------ʥְ��תְ����
	DefineMission( 753, "Walk of the Cleric", 739, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("���,������ �������� ������ ���. � ������ ���������� ��������� ������ ���� � �� �������� �� ������. � ������ ������� �������� ������������ ����� ��������.")
	MisResultCondition(NoRecord, 739)
	MisResultCondition(HasMission, 739)
	MisResultCondition(NoFlag, 739, 20)
	MisResultCondition(HasItem, 3122, 3)
	MisResultCondition(HasItem, 3146, 2)
	MisResultCondition(HasItem, 3130, 1)
	MisResultAction(TakeItem, 3122, 3)
	MisResultAction(TakeItem, 3146, 2)
	MisResultAction(TakeItem, 3130, 1)
	MisResultAction(SetFlag, 739, 20)



-----------------------------------��ӡʦתְ����
	DefineMission( 755, "���� �������� ", 740 )
	
	MisBeginTalk( "<t>����� ����� <b���������>, �� ������ ����� ������ ����� � ���. ����� ��������� ���� �����������, ��� ����� ������� ���-������:<n><t>������ 3 <y������� ������������> � <r�������� ����>, 10 <y����� ������ ����> � <r��������> � 3 <y���������� ������> �� <r�������� ����>. ������ ��� <b��������� ����� - ���> � <p������ ����� �������> � ����� ��,����� �������� <y�������� ������>. <n><t>��� <r����� ������ ����> � ��������� ���� � <p��������> � ��������� ����� ���� ������� � <p������� ����� �����>" )
	MisBeginCondition(NoRecord, 740)
	MisBeginCondition(NoMission, 740)
	MisBeginCondition(NoMission, 739)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 5 )
	MisBeginCondition(CheckConvertProfession, MIS_SEALER )
	MisBeginAction(AddMission, 740)
	MisCancelAction(ClearMission, 740)

	MisNeed(MIS_NEED_DESP, "������� 3 �������� � <y�������� ������> � <b��������� ����� ���> � <p������ ����� �������> �� ����������� (862, 3303). ������ ��� <y�������� ������>.")
	
	MisResultTalk("<t>����������, ������ �� <b��������>.<n><t>����� ������ ���� ����������� ����!")
	MisHelpTalk("<t>��� ������! ���� � ���� � ������� �������!")
	MisResultCondition(HasMission, 740)
	MisResultCondition(HasFlag, 740, 10 )
	MisResultAction(ClearMission, 740)
	MisResultAction(SetRecord, 740)
	MisResultAction(SetProfession, 14)

-----------------------------------��ӡʦתְ����
	DefineMission( 756, "���� �������� ", 740, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�� ����������� ���� ������ ����.<n><t>���...�� ������ ���������,������� �������. ����� ������. � ������ ��� �������� � ���� �����.<n><t>�� ������ ��������� � Gannon � �������. � ����������� ��������� ����� ����.<n><t>�� ����������� ���� ������ ����.")
	MisResultCondition(NoRecord, 740)
	MisResultCondition(HasMission, 740)
	MisResultCondition(NoFlag, 740, 10)
	MisResultCondition(HasItem, 4471, 3)
	MisResultCondition(HasItem, 4385, 10)
	MisResultCondition(HasItem, 4481, 3)
	MisResultAction(TakeItem, 4471, 3)
	MisResultAction(TakeItem, 4385, 10)
	MisResultAction(TakeItem, 4481, 3)
	MisResultAction(SetFlag, 740, 10)


end
RobinMission017()

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[������ͭͭ��]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission022()

---------------------------------------����������С��
	DefineMission( 713, "����������� ������� ", 707, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("�� ����� ���������?<n><t>���� ����� <b�����>, � ������ ������ <p������>. � ��� ������, �������� � ��� ���������, ������ �� �������� ���, ���� ������ ����� � �����, � ����� ���� �������� ��������� �� ����� ����� � �.�... � ��� ����� ����� � ��� ���.<n><t>�������� ��������� � ���������� �  <b����������� ������> �� ����������� (876, 3572), � ���� ��� ��� ���� ���, �����!<n><t>(����� ��� ���� ��� �������. ������ ���������,������ ������ � �� ��������.)")
	MisResultCondition(NoRecord, 707)
	MisResultCondition(HasMission, 707)
	MisResultCondition(NoFlag, 707, 10)
	MisResultCondition(HasItem, 3956, 1)
	MisResultAction(TakeItem, 3956, 1)
	MisResultAction(SetFlag, 707, 10)
	MisResultBagNeed(1)

end
RobinMission022()

----------------------------------------------------------
--							--
--							--
--		������[����ָ����ɪ��]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission024()

-----------------------------------���˱���
	DefineMission( 701, "����� ����������!", 1, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t> ����� ����������!<n><t>������� �� ���, ���� � ���� ���� ������� ������������ ������� ����������. � ��������� ���� ����� �� ������ ��� ����.<n><t>��� � ���� ���� �������� ��� �������� �������� ������ � <p�������>.<n><t>������ ����� �� ���������� ����������� ������ ������� ������� Ctrl + A, ��� ���� ����� ����� � ���� ����� �������������. ������ �������� ����� ������� ��� ���� ���� �������������. <n><t>� ���� � ������������ ������� 5 ����� ����������, ����� ���: ���� ,������� ����������� ���� ����� � ������� ���; ��������, ������� ����������� ���� �������� ��� � ������; ��������, ������� ����������� ��� ���� �� ��������� � ��������� ���� ����; ���, ������� ����������� ���� ������������� ����� ���� � ���������� ����;� ������������, ������� ����������� ���� ����� ����� � �����.")
	MisHelpTalk("<t>������! � ���������� ����� ������. ������� ���� ����� ���� ����� ����� ������ � ����.<n><t>��� ���� ������ ���� ����� ����� ������.")
	MisResultCondition(NoRecord, 1)
	MisResultCondition(HasMission, 1)
	--MisResultCondition(HasFlag, 700, 10)
	--MisResultCondition(HasFlag, 700, 20)
	MisResultAction(ClearMission, 1)
	MisResultAction(SetRecord, 1)
	MisResultAction(AddExp, 6, 6)


-----------------------------------�������ʺ�
	DefineMission( 702, "����������� ������� ", 701 )
	
	MisBeginTalk( "<t>�� �� ������� ������ � ���� ����������� ����,���� � ���� ��� ������.<n><t>������ ��� ������ � <p������> �������, <b�����> �� ����������� (2193, 2706). � ����� �� ���� �������, ���� �������� � ���� � ���� �������.<n><t>�� ������ ������������ ����� (Alt + R) ��� �� ����� ���." )
	MisBeginCondition(HasRecord, 1)
	MisBeginCondition(NoRecord, 701)
	MisBeginCondition(NoMission, 701)
	MisBeginAction(AddMission, 701)
	MisBeginAction(SetFlag, 701, 1)
	MisBeginAction(GiveItem, 3950, 1, 4)
	MisCancelAction(ClearMission, 701 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�������� ������ <b������� - �����> � <p�������> �� ����������� (2193, 2706). � ������� � ���������� - ����� (2223, 2785)")
		
	MisResultTalk("<t>� ������ �� ��� ���������� � <b�����>. �� ���� ������ ������ � ������� ������ ����� ������.")
	MisHelpTalk("<t>�� ������ ������� ������ ��� ����� �����. �� ����� ������ � ����� ���� ������� �� ����������� (2193, 2706).<n><t> ��������� �����(Alt + R) ��� ����,����� ��� �����.")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(HasFlag, 701, 10)
	MisResultAction(ClearMission, 701)
	MisResultAction(SetRecord, 701)
	MisResultAction(AddExp, 9, 9 )


-----------------------------------��װ����ʺ�
	DefineMission( 704, "���������� �������� ", 702 )
	
	MisBeginTalk( "<t>��� ������ ���������������� ������. ������ ��� � <pA�����> <b������� - ����> �� ����������� (2266, 2705)." )
	MisBeginCondition(HasRecord, 701)
	MisBeginCondition(NoRecord, 702)
	MisBeginCondition(NoMission, 702)
	MisBeginAction(AddMission, 702)
	MisBeginAction(SetFlag, 702, 1)
	MisBeginAction(GiveItem, 3951, 1, 4)
	MisCancelAction(SystemNotice, "��� ������� �� ����� ���� ������������." )
	--MisCancelAction(ClearMission, 702 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ <b�������� - ������� - ����> � <pA������> �� ����������� (2267, 2704) � ��������� � ���������� - ����� (2223, 2785)")
		
	MisResultTalk("<t>���! ������� <b������� ����> ������� ��� ���� �������� �����������? ��� ���������! � �������,��� �� ������ �� ���� ���������.")
	MisHelpTalk("<t>������� �� �� ����� ������� ����? � ���� ������,��� �� �������� ����� ������� �� ����������� (2267, 2704). ��������� �����,��� ���������� ����.")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(HasFlag, 702, 10)
	MisResultAction(ClearMission, 702)
	MisResultAction(SetRecord, 702)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------ҩƷ����ʺ�
	DefineMission( 706, "����������� ����� ", 703 )
	
	MisBeginTalk( "<t>������, ������ ��� ��������� ������ <b����� ����> (2250, 2770). � ������ �� ������� ���� � ����." )
	MisBeginCondition(HasRecord, 702)
	MisBeginCondition(NoRecord, 703)
	MisBeginCondition(NoMission, 703)
	MisBeginAction(AddMission, 703)
	MisBeginAction(SetFlag, 703, 1)
	MisBeginAction(GiveItem, 3952, 1, 4)
	MisCancelAction(SystemNotice, "������� �� ����� ���� ������������." )
	--MisCancelAction(ClearMission, 703 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ <b����� - ����> � <p�������> �� ����������� (2250, 2770). � ��������� � ���������� - ����� (2223, 2785).")
		
	MisResultTalk("<t><b����> ��� ���� ��������� <r�����>.������ ����� ������ � ����! ��� �������������� ��������� ���������� HP.")
	MisHelpTalk("<t>���� ���������� ������ �� ������� �������. ��� ���������� (2250, 2770). �� ������ ����� ��� � ������� ������.")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(HasFlag, 703, 10)
	MisResultAction(ClearMission, 703)
	MisResultAction(SetRecord, 703)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------ս������
	DefineMission( 708, "������ ���������� ", 704 )
	
	MisBeginTalk( "<t>���, �������, ������ �� ����������� � �����. ������ ����� ����� ���������� �����, ����� �� ����, ����. ������ �� ������� ������� ������.<n><t>����� �� ������ �� ������ ����� ����� ����� ��� ����� �������.<n><t>���� 5 ������ ����� � ������� ���� �������.<n><t>������ ����� �� ������ ����� � �������� �������. ������� ������,� � ��� ���� ������� �������.<n><t>(������ ������� �� ������ ����� �� ������. ������ ������ ����� ������� ���� �� �������." )
	MisBeginCondition(HasRecord, 703)
	MisBeginCondition(NoRecord, 704)
	MisBeginCondition(NoMission, 704)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 704)
	MisBeginAction(SetFlag, 704, 1)
	MisBeginAction(AddTrigger, 7041, TE_GETITEM, 1620, 1 )
	MisBeginAction(AddTrigger, 7042, TE_KILL, 103, 5 )
	MisCancelAction(ClearMission, 704)

	MisNeed(MIS_NEED_ITEM, 1620, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 103, 5, 20, 5)
	
	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����� ������, �� ����������, � ����� �������, ��� ������ ���� �������.<n><t> ���� ������ ��� ���� �������, �� ��� � ������� �� ����������� (2065, 2732). ������ �������, ������� ��� ����� ������� ������ - ��� ������ ���� (2250, 2770). �� ���� ���������, ������� ������ ���������� ��� ����� ������������.<n><t>�����!")
	MisHelpTalk("<t>�� ���� ����������, ����������� ����� ����, ��� ������ 5 <b������ �����> � �������� 1 �� <r�������>.")
	MisResultCondition(NoRecord, 704)
	MisResultCondition(HasMission, 704)
	MisResultCondition(HasItem, 1620, 1)
	MisResultCondition(HasFlag, 704, 24)
	MisResultAction(TakeItem, 1620, 1)
	MisResultAction(ClearMission, 704)
	MisResultAction(SetRecord, 704)
	MisResultAction(AddExp, 75, 75 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1620 )	
	TriggerAction( 1, AddNextFlag, 704, 10, 1 )
	RegCurTrigger( 7041 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 704, 20, 5 )
	RegCurTrigger( 7042 )

	
end
RobinMission024()


----------------------------------------------------------
--							--
--							--
--		������[��װ��������������]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission025()

-----------------------------------��װ����ʺ�
	DefineMission( 705, "����������� �������� ", 702, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��� ���� ���������. � ������ ����, ����� �� ��� ��������. � <b������� ����>, ������� ������ <p������>. � ��� ���, ��� ���������� ����� ��������������� ����, � ���� �������� ���� ��� ��� <�������� �������> ��������� ���������� ��� ����.<n><t>������ ������� � ���������� - ����� (2223, 2785).<n><t>(���� ���� ���� �������� �������. ������ ��������� � ������ ������ �� ���,����� �����.)")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(NoFlag, 702, 10)
	MisResultCondition(HasFlag, 702, 1)
	MisResultCondition(HasItem, 3951, 1)
	MisResultAction(TakeItem, 3951, 1)
	MisResultAction(SetFlag, 702, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission025()

----------------------------------------------------------
--							--
--							--
--		������[����������]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission026()

-----------------------------------����֤��
	DefineMission( 709, "���������� �������� ", 705 )
	
	MisBeginTalk( "<t>� ���� ���� ���������� ��������? <n><t>����� ��� �������� ������������ ������ ���������  �� ������ ��������, ��� �� ������ ��������� ����������� � ���������.<n><t>��� � <p�������� �������> � ���� 10 <b����� ������> �� ����������� (2057, 2638), 10 <b���������� ���������> ����� ��������� ���������, 10 <b�����������> � ����������� �� ���.<n><t>����� �� �������� ������� �� ��� � � ����� ����  <b���������� ��������>." )
	MisBeginCondition(NoMission, 705)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_FENCER )
	MisBeginAction(AddMission, 705)
	MisBeginAction(SetFlag, 705, 1)
	MisBeginAction(AddTrigger, 7051, TE_KILL, 237, 10 )
	MisBeginAction(AddTrigger, 7052, TE_KILL, 213, 10 )
	MisBeginAction(AddTrigger, 7053, TE_KILL, 125, 10 )
	MisCancelAction(ClearMission, 705)
	
	MisNeed(MIS_NEED_KILL, 237, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 213, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 125, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3953, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�������! �� ������ ��������! ��� ���� <r���������� ��������>.<n><t>������� ��� � ����� ������� <p10 �������> ������� ����� ����� ��������.")
	MisHelpTalk("<t>�� �� �������� ����� ���������. ��� ��������,����� ������� �� ������� ��������.")
	MisResultCondition(HasMission, 705)
	MisResultCondition(HasFlag, 705, 19 )
	MisResultCondition(HasFlag, 705, 29 )
	MisResultCondition(HasFlag, 705, 39 )
	MisResultAction(ClearMission, 705)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 705, 10, 10 )
	RegCurTrigger( 7051 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 213 )	
	TriggerAction( 1, AddNextFlag, 705, 20, 10 )
	RegCurTrigger( 7052 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 125 )	
	TriggerAction( 1, AddNextFlag, 705, 30, 10 )
	RegCurTrigger( 7053 )
	

-----------------------------------˫��ʿתְ����
	DefineMission( 749, "������ ������� ", 737 )
	
	MisBeginTalk( "<t>������, �� ����� �������� ��������. ��� ��� �� ������ ���� ����� ��������, �� ������ ������������, ����� ����� <b��������>. ��� ����� ��� ��������.<n><t>� ���� � ������ �� <pSolace Haven>, ���� <r����������� �����>. ������ 5 <y��������� ����� �����> ����� � ����� �� <p������ ��������> � ������� �� ������, ������ 10 <r�������� - ������> � �������� 3 <y����������� �����>. � ������� ������ <y������������ ������> � ��������� �� ���." )
	MisBeginCondition(NoRecord, 737)
	MisBeginCondition(NoMission, 737)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 1 )
	MisBeginCondition(CheckConvertProfession, MIS_TWO_FENCER )
	MisBeginAction(AddMission, 737)
	MisBeginAction(AddTrigger, 7372, TE_KILL, 268, 10 )
	MisBeginAction(AddTrigger, 7373, TE_GETITEM, 4474, 5 )
	MisBeginAction(AddTrigger, 7374, TE_GETITEM, 4456, 3 )
	MisBeginAction(AddTrigger, 7375, TE_GETITEM, 295, 1 )
	MisCancelAction(ClearMission, 737)
	
	MisNeed(MIS_NEED_KILL, 268, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4474, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4456, 3, 40, 3)
	MisNeed(MIS_NEED_ITEM, 295, 1, 50, 1)
	
	MisResultTalk("<t>����������!<n><t>�� �������� ��� ���������� ��� ��������� <b�������>!<n><t>����� ���� ������� ����������� � ����������!")
	MisHelpTalk("<t>����� ���!��� �� �� ������ ��������� �� ������������ �������, �� �� ������� ���� ��������!")
	MisResultCondition(HasMission, 737)
	MisResultCondition(HasFlag, 737, 29 )
	MisResultCondition(HasItem, 4474, 5 )
	MisResultCondition(HasItem, 4456, 3 )
	MisResultCondition(HasItem, 295, 1 )
	MisResultAction(TakeItem, 4474, 5)
	MisResultAction(TakeItem, 4456, 3)
	MisResultAction(TakeItem, 295, 1)
	MisResultAction(ClearMission, 737)
	MisResultAction(SetRecord, 737)
	MisResultAction(SetProfession, 9)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 268 )	
	TriggerAction( 1, AddNextFlag, 737, 20, 10 )
	RegCurTrigger( 7372 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4474 )	
	TriggerAction( 1, AddNextFlag, 737, 30, 5 )
	RegCurTrigger( 7373 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4456 )	
	TriggerAction( 1, AddNextFlag, 737, 30, 3 )
	RegCurTrigger( 7374 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 295 )	
	TriggerAction( 1, AddNextFlag, 737, 30, 1 )
	RegCurTrigger( 7375 )

-----------------------------------�޽�ʿתְ����
	DefineMission( 750, "���� �������� ", 738 )
	
	MisBeginTalk( "<t>������ ����� <b���������>? ������!<n><t>����� �� ������ �������� ��� ��������� ����: <n><t>� ���� ������ ���� ������ ��������, ��� � ���� <y����� ���>. ������� ��� 5 <y����� ������> � <r����-������>. 5 <r������� �������>'s <y������� �������� ����> � 5 <y��������� �����> � <r�������� �����>.<n><t>������� ��� �� ��� ��� ����, ����� ����� �������� ���������.<n><t>������ <r�����-������> ��������� � <p����������� ������>, <r�������� �����> � <p��������� ����> � <r�������� �������> �������� �� ������." )
	MisBeginCondition(NoRecord, 738)
	MisBeginCondition(NoMission, 738)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 1 )
	MisBeginCondition(CheckConvertProfession, MIS_LARGE_FENCER )
	MisBeginAction(AddMission, 738)
	MisBeginAction(AddTrigger, 7381, TE_GETITEM, 15, 1 )
	MisBeginAction(AddTrigger, 7382, TE_GETITEM, 4454, 1 )
	MisBeginAction(AddTrigger, 7383, TE_GETITEM, 4453, 5 )
	MisBeginAction(AddTrigger, 7384, TE_GETITEM, 4368, 5 )
	MisCancelAction(ClearMission, 738)

	MisNeed(MIS_NEED_ITEM, 15, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4454, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 4453, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4368, 5, 40, 5)
	
	MisResultTalk("<t>����������! �� �������� ��� ��� ���������� ��� ���� ����� ����� <b���������>!<n><t>��������� ������������� ����������� ������� ����!")
	MisHelpTalk("<t>� ���� ���� �������!? � ���� ���� ��� ��� �������� ��� ��� ��� �������!")
	MisResultCondition(HasMission, 738)
	MisResultCondition(HasItem, 15, 1 )
	MisResultCondition(HasItem, 4454, 1 )
	MisResultCondition(HasItem, 4453, 5 )
	MisResultCondition(HasItem, 4368, 5 )
	MisResultAction(TakeItem, 15, 1)
	MisResultAction(TakeItem, 4454, 1)
	MisResultAction(TakeItem, 4453, 5)
	MisResultAction(TakeItem, 4368, 5)
	MisResultAction(ClearMission, 738)
	MisResultAction(SetRecord, 738)
	MisResultAction(SetProfession, 8)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 15 )	
	TriggerAction( 1, AddNextFlag, 738, 10, 1 )
	RegCurTrigger( 7381 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4454 )	
	TriggerAction( 1, AddNextFlag, 738, 20, 1 )
	RegCurTrigger( 7382 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4453 )	
	TriggerAction( 1, AddNextFlag, 738, 30, 5 )
	RegCurTrigger( 7383 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4368 )	
	TriggerAction( 1, AddNextFlag, 738, 40, 5 )
	RegCurTrigger( 7384 )



end
RobinMission026()





----------------------------------------------------------
--							--
--		ɳᰳ�[����ָ������˿��]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission027()

-----------------------------------���˱���
	DefineMission( 711, "����� ����������!", 2, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

		
	MisResultTalk("<t>���!<n><t>��������� �������, ����� ����������! � ���� �������� ���� �� ��������� ��������,���� ����� - �� ���������.<n><t>������ ���� ���� ������� ������ � <p�������>.<n><t>����� ��������� �������, ����� (Alt + A) ����� ������� �������� �������������. ������ ������� �� ��������� �������������� � ����� ���������� ������.<n><t>� ���� � ������������ ������� 5 ����� ����������, ����� ���: ����, ������� ����������� ���� ����� � ������� ���; ��������, ������� ����������� ���� �������� ��� � ������; ��������, ������� ����������� ��� ���� �� ��������� � ��������� ���� ����; ���, ������� ����������� ���� ������������� ����� ���� � ���������� ����;� ������������, ������� ����������� ���� ����� ����� � �����.")
	MisHelpTalk("<t>���� � ���� ����� ����� �� �������, ���������, � ���� ������� � ���� �� �����.")
	MisResultCondition(NoRecord, 2)
	MisResultCondition(HasMission, 2)
	--MisResultCondition(HasFlag, 706, 10)
	--MisResultCondition(HasFlag, 706, 20)
	MisResultAction(ClearMission, 2)
	MisResultAction(SetRecord, 2)
	MisResultAction(AddExp, 6, 6)


-----------------------------------�������ʺ�
	DefineMission( 712, "����������� ������� ", 707 )
	
	MisBeginTalk( "<t>� ���� ���� ���� �� ������ ��� �������� ��������������. ������ ��� ������ <b������� �����> �� ����������� (902, 3495).<n><t>� ���� ���� ��������� ����� ������ ��� ����.<n><t>��������� �����(Alt + R) ��� ��� ���������������." )
	MisBeginCondition(HasRecord, 2)
	MisBeginCondition(NoRecord, 707)
	MisBeginCondition(NoMission, 707)
	MisBeginAction(AddMission, 707)
	MisBeginAction(SetFlag, 707, 1)
	MisBeginAction(GiveItem, 3956, 1, 4)
	MisCancelAction(ClearMission, 707 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ <b������� �����> � <p������> at (902, 3495) � ������� � ���������� ������ (876, 3572)")
		
	MisResultTalk("<t>�� ��� ������� ������� <b�����>? �� ������ ���� ������� ������� ������ ����������� �����.")
	MisHelpTalk("<t>�� ������ ������ ��� ������ ������� <b�����>. ��� �� ������ ����� � ������ ������� ���� <p�������> �� ����������� (902, 3495).<n><t>��������� ����-����� ��� ���������� ���.")
	MisResultCondition(NoRecord, 707)
	MisResultCondition(HasMission, 707)
	MisResultCondition(HasFlag, 707, 10)
	MisResultAction(ClearMission, 707)
	MisResultAction(SetRecord, 707)
	MisResultAction(AddExp, 9, 9 )


-----------------------------------��װ����ʺ�
	DefineMission( 714, "����������� �������� ", 708 )
	
	MisBeginTalk( "<t>������, ������ ����� ��������. ������ ��� ������ � <p������> <b������� - ����> �� ����������� (894,3602)" )
	MisBeginCondition(HasRecord, 707)
	MisBeginCondition(NoRecord, 708)
	MisBeginCondition(NoMission, 708)
	MisBeginAction(AddMission, 708)
	MisBeginAction(SetFlag, 708, 1)
	MisBeginAction(GiveItem, 3957, 1, 4)
	--MisCancelAction(ClearMission, 708 )
	MisCancelAction(SystemNotice, "������� ���������� �������." )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ��� ������ <b������� - ����> � <p������> �� ����������� (894, 3602) � ������� � ���������� ������ (876, 3572)")
		
	MisResultTalk("<t>��? ������� <b����> ���� ���� ��� ��������? ��� ������������. ������� �� ��� ������.")
	MisHelpTalk("<t>�� �� ���� ������� ������ ����.<n><t>��� ���������� �� ����������� (894, 3602). ��������� �����.")
	MisResultCondition(NoRecord, 708)
	MisResultCondition(HasMission, 708)
	MisResultCondition(HasFlag, 708, 10)
	MisResultAction(ClearMission, 708)
	MisResultAction(SetRecord, 708)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------ҩ�ĵ���ʺ�
	DefineMission( 716, "����������� ����� ", 709 )
	
	MisBeginTalk( "<t>����, ����� ��������� <b����� - ����> �� ����������� (903, 3646). ��� ��������� ������, ��� ��� ���������� � ��� ��� ����� �������." )
	MisBeginCondition(HasRecord, 708)
	MisBeginCondition(NoRecord, 709)
	MisBeginCondition(NoMission, 709)
	MisBeginAction(AddMission, 709)
	MisBeginAction(SetFlag, 709, 1)
	MisBeginAction(GiveItem, 3958, 1, 4)
	MisCancelAction(SystemNotice, "������� ���������� �������." )
	--MisCancelAction(ClearMission, 709 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������ ������ <b����� ����> � <p�������> �� ����������� (903, 3646) � ������� � ������ (876, 3572)")
		
	MisResultTalk("<t>��� ���� <r������> ������ �� �� <b����> ��� �� ������ ������ ��������, �� � ����� ��������.")
	MisHelpTalk("<t>����� ����� ����. �� ��������� �� ����������� (903, 3646).<n><t>��������� �������.")
	MisResultCondition(NoRecord, 709)
	MisResultCondition(HasMission, 709)
	MisResultCondition(HasFlag, 709, 10)
	MisResultAction(ClearMission, 709)
	MisResultAction(SetRecord, 709)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------ս��ѵ��
	DefineMission( 718, "������ ���������� ", 710 )
	
	MisBeginTalk( "������,������ �������! ������ ����� �� ������� ����,�� ������ ����� � ��������� ���� ����.<n><t>���� 5 <b����������> �������� �� ���������� ������ �� ������. ���� 1 <r�������> �� ������ <b����> � �����. ����������, ��� �� ������ ������ ��������� ������!<n><t>(�� ������ ��������� ����� ����� ������� ����� �� �������, �� � ������ ������� ������. �� ������� ������������ ������� CTRL + � ��� �������� ��������� ������ ���������." )
	MisBeginCondition(HasRecord, 709)
	MisBeginCondition(NoRecord, 710)
	MisBeginCondition(NoMission, 710)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 710)
	MisBeginAction(SetFlag, 710, 1)
	MisBeginAction(AddTrigger, 7101, TE_GETITEM, 1691, 1 )
	MisBeginAction(AddTrigger, 7102, TE_KILL, 188, 5 )
	MisCancelAction(ClearMission, 710)

	MisNeed(MIS_NEED_ITEM, 1691, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 188, 5, 20, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����������� ���������!<n><t>������ �� ���� �� ����� � ���� ���� ������? ���� ������ - ���� ����� ���, ����� <b������>. �� ����������� �� ����������� (2085, 2742). ������ �������, � ������� �� ������ ���������� ������ <b����> �� ����������� (2250, 2770). �� ���� ����������,��� ����� ������ ����.")
	MisHelpTalk("<t>�� �������? ������� � ���� 5 <b����������> � ������ 1 <rCactus Hairballs>.")
	MisResultCondition(NoRecord, 710)
	MisResultCondition(HasMission, 710)
	MisResultCondition(HasItem, 1691, 1)
	MisResultCondition(HasFlag, 710, 24)
	MisResultAction(TakeItem, 1691, 1)
	MisResultAction(ClearMission, 710)
	MisResultAction(SetRecord, 710)
	MisResultAction(AddExp, 75, 75 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691 )	
	TriggerAction( 1, AddNextFlag, 710, 10, 1 )
	RegCurTrigger( 7101 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 188 )	
	TriggerAction( 1, AddNextFlag, 710, 20, 5 )
	RegCurTrigger( 7102 )


end
RobinMission027()




----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[��װ������Ī��]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission028()

-----------------------------------��װ����ʺ�
	DefineMission( 715, "����������� �������� ", 708, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>����!<n><t>��� ���������������� ������ �� ������. <n><t>������, ��� �������� ��� ����.<n><t>������ ����� � ������� � ���� ���� �����.<n><t>������ ������� � ������ �� ����������� (876, 3572). ��� ���� ���������� � �������<n><t>(�������� ���� ���� �������� �������, ����� �� ���������,��� ���� ����� ����� ��).")
	MisResultCondition(NoRecord, 708)
	MisResultCondition(HasMission, 708)
	MisResultCondition(NoFlag, 708, 10)
	MisResultCondition(HasItem, 3957, 1)
	MisResultAction(TakeItem, 3957, 1)
	MisResultAction(SetFlag, 708, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission028()



----------------------------------------------------------
--							--
--		���Ǳ�[����ָ��������¶��]		--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission030()

-----------------------------------���˱���
	DefineMission( 721, "����� ����������!", 3, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��!<n><t>��������� �������, ����� ����������! � ���� �������� ���� �� ��������� ��������, ���� ����� - �� ���������.<n><t>���� ���� ������� ������ � <p������>.<n><t>����� ��������� �������, ����� (Alt + A) ����� ������� �������� �������������. ������ ������� �� ��������� �������������� � ����� ���������� ������.<n><t>� ���� � ������������ ������� 5 ����� ����������, ����� ���: ����, ������� ����������� ���� ����� � ������� ���; ��������, ������� ����������� ���� �������� ��� � ������; ��������, ������� ����������� ��� ���� �� ��������� � ��������� ���� ����; ���, ������� ����������� ���� ������������� ����� ���� � ���������� ����; � ������������, ������� ����������� ���� ����� ����� � �����.")
	MisHelpTalk("<t>������! ���� � ���� ����� ����� �� �������, ���������, � ���� ������� � ���� �� �����.")
	MisResultCondition(NoRecord, 3)
	MisResultCondition(HasMission, 3)
	--MisResultCondition(HasFlag, 712, 10)
	--MisResultCondition(HasFlag, 712, 20)
	MisResultAction(ClearMission, 3)
	MisResultAction(SetRecord, 3)
	MisResultAction(AddExp, 6, 6)


-----------------------------------�������ʺ�
	DefineMission( 722, "������������ ������� ", 713 )
	
	MisBeginTalk( "<t>� ���� ���� ���� �� ������ ��� �������� ��������������. ������ ��� ������ <b������� �����> �� ����������� (902, 3495).<n><t>� ���� ���� ��������� ����� ������ ��� ����.<n><t>��������� �����(Alt + R) ��� ���������� ���. " )
	MisBeginCondition(HasRecord, 3)
	MisBeginCondition(NoRecord, 713)
	MisBeginCondition(NoMission, 713)
	MisBeginAction(AddMission, 713)
	MisBeginAction(SetFlag, 713, 1)
	MisBeginAction(GiveItem, 3959, 1, 4)
	MisCancelAction(ClearMission, 713 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������ ��� ������ <b������� ����> � <p������> �� ����������� (1344, 529). � ������� � ���������� ������ �� ����������� (1315, 507).")
		
	MisResultTalk("<t>�� ��� ���������� � <b�����> ? �� �������� ���� ����� ��� �������,�.�. �� �������� ")
	MisHelpTalk("<t>������ ��� ������ <b����>. �� ��������� � ���-��������� ����  <p������> �� ����������� (1344, 529).<n><t>��������� �����.")
	MisResultCondition(NoRecord, 713)
	MisResultCondition(HasMission, 713)
	MisResultCondition(HasFlag, 713, 10)
	MisResultAction(ClearMission, 713)
	MisResultAction(SetRecord, 713)
	MisResultAction(AddExp, 9, 9 )


-----------------------------------��װ����ʺ�
	DefineMission( 724, "����������� �������� ", 714 )
	
	MisBeginTalk( "<t>��� ���� ������ ������. ���������� ����� ��� <p������> �� ����������� (1349, 539), ������ �������� ������. ��� ���� ������� �������." )
	MisBeginCondition(HasRecord, 713)
	MisBeginCondition(NoRecord, 714)
	MisBeginCondition(NoMission, 714)
	MisBeginAction(AddMission, 714)
	MisBeginAction(SetFlag, 714, 1)
	MisBeginAction(GiveItem, 3960, 1, 4)
	MisCancelAction(SystemNotice, "������� ���������� �������." )
	--MisCancelAction(ClearMission, 714 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������ ��� ������ <b�������� - �����> � <p������> �� ����������� (1349, 539). � ������� � ���������� ������ (1315, 507)")
		
	MisResultTalk("<t>��� <b �����> ������� ��� ���� ��������? ��� ��������. ������� ��,��� ������.")
	MisHelpTalk("<t>������ ��� ������ <b�����>.<n><t>��� ���������  � ���-������� �� ������� <p������> �� ����������� (1349, 530). �� ������ ������������ ����-����� ��� ������.")
	MisResultCondition(NoRecord, 714)
	MisResultCondition(HasMission, 714)
	MisResultCondition(HasFlag, 714, 10)
	MisResultAction(ClearMission, 714)
	MisResultAction(SetRecord, 714)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------ҩƷ����ʺ�
	DefineMission( 726, "����������� ����� ", 715 )
	
	MisBeginTalk( "<t>� �������, �������! ����� ����� ����� � ����� �����. ����� ������ ������, ��������� ��� ������ <b����� - �����> � <p������> �� ����������� (1352, 499)." )
	MisBeginCondition(HasRecord, 714)
	MisBeginCondition(NoRecord, 715)
	MisBeginCondition(NoMission, 715)
	MisBeginAction(AddMission, 715)
	MisBeginAction(SetFlag, 715, 1)
	MisBeginAction(GiveItem, 3961, 1, 4)
	MisCancelAction(SystemNotice, "������� ���������� �������." )
	--MisCancelAction(ClearMission, 715 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�������� ������ <b����� - �����> � <p������> �� ����������� (1352, 499). � ��������� � ���������� ������ (1315, 507).")
		
	MisResultTalk("<t>��, ��� <r������> ���� ���� <b�����.<n><t>��� <r������> ��� ������� � ����� ����������� ��������� ���������� HP.")
	MisHelpTalk("<t>����� ����� ����� � <p������> �� ����������� (1352, 499). �� ������ ������������ ���� - ����� ��� ������.")
	MisResultCondition(NoRecord, 715)
	MisResultCondition(HasMission, 715)
	MisResultCondition(HasFlag, 715, 10)
	MisResultAction(ClearMission, 715)
	MisResultAction(SetRecord, 715)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------ս��ѵ��
	DefineMission( 728, "������ ���������� ", 716 )
	
	MisBeginTalk( "<t>��, �������.<n><t>������ �� �����������, � ������ ������ ��������� �����. �������� �� ������ ����� � ���� 5 <��������������>.<n><t> The Snow Squirt �� ������ ����� �� ��� �� ��������� ����� ������� ����� ������ � ����������� ��������� ���� . ����� ��� �������� ������� �� ���!<n><t>(�� ������ ��������� ����� ����� ������� ����� �� �������,�� � ������ ������� ������. �� ������� ������������ ������� CTRL + A ��� �������� ��������� ������ ���������." )
	MisBeginCondition(HasRecord, 715)
	MisBeginCondition(NoRecord, 716)
	MisBeginCondition(NoMission, 716)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 716)
	MisBeginAction(AddTrigger, 7161, TE_GETITEM, 1597, 1 )
	MisBeginAction(AddTrigger, 7162, TE_KILL, 234, 5 )
	MisBeginAction(SetFlag, 716, 1)
	MisCancelAction(ClearMission, 716)
	
	MisNeed(MIS_NEED_ITEM, 1597, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 234, 5, 20, 5)


	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�������, ������ ���������, �������.")
	MisHelpTalk("<t>�������! ���� 5 �������������� � ������ 1 ������� ")
	MisResultCondition(NoRecord, 716)
	MisResultCondition(HasMission, 716)
	MisResultCondition(HasItem, 1597, 1)
	MisResultCondition(HasFlag, 716, 24)
	MisResultAction(TakeItem, 1597, 1)
	MisResultAction(ClearMission, 716)
	MisResultAction(SetRecord, 716 )
	MisResultAction(AddExp, 75, 75 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1597 )	
	TriggerAction( 1, AddNextFlag, 716, 10, 1 )
	RegCurTrigger( 7161 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 234 )	
	TriggerAction( 1, AddNextFlag, 716, 20, 5 )
	RegCurTrigger( 7162 )


	
end
RobinMission030()


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����������]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission031()

---------------------------------------����������С��
	DefineMission( 723, "����������� ������� ", 713, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>� ������ �� ����� ���������? � <b���>, ������ ������ <p������>.� ���������� ������� ������.<n><t>������� � ������ �� ����������� (1315, 507). ��� ���� ����������� ������� ��������.<n><t>(��� ��� ���� ��� �������. ������ ������ � ����� �� ���� 2 ����, ����� ����� ���.)")
	MisResultCondition(NoRecord, 713)
	MisResultCondition(HasMission, 713)
	MisResultCondition(NoFlag, 713, 10)
	MisResultCondition(HasItem, 3959, 1)
	MisResultAction(TakeItem, 3959, 1)
	MisResultAction(SetFlag, 713, 10)
	MisResultBagNeed(1)

end
RobinMission031()


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[��װ����������]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission032()

-----------------------------------��װ����ʺ�
	DefineMission( 725, "����������� �������� ", 714, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�� ������� �����? ����� ���������� � <p������>. � �������, <b�����>. ������� �� ������, ������ ���������� ��� ��������,� ������ �� ��� ����. �� ������ �������� � <r����������><b������> �� ����������� (1315, 507), � ����� ��� � ������� ������.<n><t>(����� ��� ����  �������� �������. ������ ��������� � ����� �� ��� 2 ����, ����� �� �����.)")
	MisResultCondition(NoRecord, 714)
	MisResultCondition(HasMission, 714)
	MisResultCondition(NoFlag, 714, 10)
	MisResultCondition(HasItem, 3960, 1)
	MisResultAction(TakeItem, 3960, 1)
	MisResultAction(SetFlag, 714, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission032()


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[ҩ�����ˡ����]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission033()

-----------------------------------ҩ�ĵ���ʺ�
	DefineMission( 727, "����������� ����� ", 715, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> �� ������� �����? ����� ����������! ������ ��� <r������>, � �� ��� �����! � ����� ��� ���� ����������.<n><t>� ������ ������� � ������ (1315, 507).<n><t>(����� ���� ���� ������. ������� �� �� F1 - F8 ��� �������� �������������.)")
	MisResultCondition(NoRecord, 715)
	MisResultCondition(HasMission, 715)
	MisResultCondition(NoFlag, 715, 10)
	MisResultCondition(HasItem, 3961, 1)
	MisResultAction(TakeItem, 3961, 1)
	MisResultAction(SetFlag, 715, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)

---------------------------------�ռ��	
	DefineMission( 735, "������������ ����� ", 723 )

	MisBeginTalk( "<t>� ��������� ����� ����� ������ ���� ���������, � �����, ��� ��� �� ������� ��������� <r������� ���������>.<n><t>� ����� �� ������� ��� ������ ����� 5 <r��������� ���������>, ������� ����� ������ � <b�������� �������������> ���� ������." )
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 723)
	MisBeginAction(SetFlag, 723, 1)
	MisBeginAction(AddTrigger, 7231, TE_GETITEM, 1704, 5 )
	MisCancelAction(ClearMission, 723)

	MisNeed(MIS_NEED_ITEM, 1704, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>������! ��� � ���� ������.<n><t>�������!")
	MisHelpTalk("<t>��� ����������? ����� ������ �� �����? ��� ������ �� ��������� ������.")
	MisResultCondition(HasMission, 723)
	MisResultCondition(HasItem, 1704, 5 )
	MisResultAction(TakeItem, 1704, 5 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 723)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1704)	
	TriggerAction( 1, AddNextFlag, 723, 10, 5 )
	RegCurTrigger( 7231 )


	---------------------------------�ռ��	
	DefineMission( 746, "������������ ����� ", 734 )

	MisBeginTalk( "<t� ��������, ��� � ���� ��������� ��������� ����� �����, ������� ������. ��� � ����� ���������. ������ ���������� ����� �� ����������� (1179, 475) � ������ 5 <y������� �����> � <b������� ����������>? ����� ���� ������ ��� ��� ����� �������,��� ����� ������ � ���������!" )
	MisBeginCondition(NoMission, 734)
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 734)
	MisBeginAction(SetFlag, 734, 1)
	MisBeginAction(AddTrigger, 7341, TE_GETITEM, 3372, 5 )
	MisCancelAction(ClearMission, 734)

	MisNeed(MIS_NEED_ITEM, 3372, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����. ������� �� � �������� ���������.")
	MisHelpTalk("<t>� �...<n><t>��� �� ������ ������� �����! �� �� � ��������� ��������� ��� ������������ �������? ��� <b������� �����������> ��������� � ������ �� ������.")
	MisResultCondition(HasMission, 734)
	MisResultCondition(HasItem, 3372, 5 )
	MisResultAction(TakeItem, 3372, 5 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 734)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 3372)	
	TriggerAction( 1, AddNextFlag, 734, 10, 5 )
	RegCurTrigger( 7341 )


---------------------------------�ռ��	
	DefineMission( 747, "������������ ����� ", 735 )

	MisBeginTalk( "<t>��������� ������� ����������� � ����� �������� �������, � ���� ������ ��� ������������, ����� ��������� ��! �� ������ ������������ ��� �������? ����� (1179, 371) � ������ ��� 5 <y��������> � <b������� ���������>. �, ������ ����� ������, ����� �� �����, ���� � ����� ��� �����������, ������ ������ ����� ��� ������, �����, ���� � �.�.��� � ������� ��,��� � ����." )
	MisBeginCondition(NoMission, 735)
	MisBeginCondition(NoMission, 734)
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 735)
	MisBeginAction(SetFlag, 735, 1)
	MisBeginAction(AddTrigger, 7351, TE_GETITEM, 1779, 5 )
	MisCancelAction(ClearMission, 735)

	MisNeed(MIS_NEED_ITEM, 1779, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����! <n><t>������,����� � ���� ���� �������,� ���� ���������� ������ ��������. ����!� ������� ����� �������� ������!")
	MisHelpTalk("<t>��� ���� ������ �������, ����� ����,��� ��� �� �������!")
	MisResultCondition(HasMission, 735)
	MisResultCondition(HasItem, 1779, 5 )
	MisResultAction(TakeItem, 1779, 5 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 735)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1779)	
	TriggerAction( 1, AddNextFlag, 735, 10, 5 )
	RegCurTrigger( 7351 )



end
RobinMission033()

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ���ʿ����ŷ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission034()

-----------------------------------�����ֲ�
	DefineMission( 729, "����������� �������� ", 717 )
	
	MisBeginTalk( "<t>� ���� ��� �� ��� ���� ����������� ��������? �� ������������� �������.<n><t>������ ����� ������ ��������� ������������ ��� <r����������� ��������>, �� ������ ��������, ��� �� ������ ��������� ����������� � ��������.<n><t>����������� � <p������> � ���� 10 <b��������� ������> �� ����������� (1164, 305) � 10 <b��������� ����� ������> �� ����������� (1325, 305).<n><t>��� � ���� ������ ���� <r��� ����������� ������>.<n><t>��� ������� �� ����� ����� ������� ��������� �� ��������� ������, ������� ���� ����� ����� �������� ���������� �����.<n><t>���� �� ��������� ��� �������,� ���� ������� ���� ����������������� ���������." )
	MisBeginCondition(NoMission, 717)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_HUNTER )
	MisBeginAction(AddMission, 717)
	MisBeginAction(SetFlag, 717, 1)
	MisBeginAction(AddTrigger, 7171, TE_KILL, 240, 10 )
	MisBeginAction(AddTrigger, 7172, TE_GETITEM, 3122, 1 )
	MisBeginAction(AddTrigger, 7173, TE_KILL, 238, 10 )
	MisCancelAction(ClearMission, 717)

	
	MisNeed(MIS_NEED_KILL, 240, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3122, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 238, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3955, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����, ������� ��������� �� �������!<n><t>�� ������ ��� ����. ��� ���� <r����������� ��������>, ������� ������ ����� ������ �������.<n><t>����� ���. ����� ���������� <p10 ������>, ������� �� ��� ��� ����,����� � ���� ��������������� ��� �������.")
	MisHelpTalk("<t>�� �� �������� ����� ���������. �� �� ������� ��������� ���� �� ��������� ������� ���,����� � �������� �����.")
	MisResultCondition(HasMission, 717)
	MisResultCondition(HasItem, 3122, 1 )
	MisResultCondition(HasFlag, 717, 19 )
	MisResultCondition(HasFlag, 717, 39 )
	MisResultAction(TakeItem, 3122, 1)
	MisResultAction(ClearMission, 717)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 240 )	
	TriggerAction( 1, AddNextFlag, 717, 10, 10 )
	RegCurTrigger( 7171 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122 )	
	TriggerAction( 1, AddNextFlag, 717, 20, 1 )
	RegCurTrigger( 7172 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 717, 30, 10 )
	RegCurTrigger( 7173 )
	
-----------------------------------�ѻ���תְ����
	DefineMission( 757, "������������������ ������� ", 741 )
	
	MisBeginTalk( "<t>����� <b��������> ������. ��� �� <p������ ��������>, ���� 10 <r��������-��������> � ������� ��� 5 <y������ ��������>. �����, ���� 10 <r������-�������> � <p��������>, <p����������� ������> � ������� ��� 5 <r��������� ����� ������>." )
	MisBeginCondition(NoRecord, 741)
	MisBeginCondition(NoMission, 741)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 2 )
	MisBeginCondition(CheckConvertProfession, MIS_GUNMAN )
	MisBeginAction(AddMission, 741)
	MisBeginAction(AddTrigger, 7411, TE_KILL, 269, 10 )
	MisBeginAction(AddTrigger, 7412, TE_KILL, 243, 10 )
	MisBeginAction(AddTrigger, 7413, TE_GETITEM, 4362, 5 )
	MisBeginAction(AddTrigger, 7414, TE_GETITEM, 4367, 5 )
	MisCancelAction(ClearMission, 741)
	
	MisNeed(MIS_NEED_KILL, 269, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 243, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4362, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4367, 5, 40, 5)
	
	MisResultTalk("<t>���������� ����! �� ����������� ��� ��� �������,��� ���� ����� ����� <b��������>!<n><t>�� �������! ���� � ������ - ��� ������ ����� ����������� � �������� � ����� ��������.")
	MisHelpTalk("<t>������? � ���� �� ����������?")
	MisResultCondition(HasMission, 741)
	MisResultCondition(HasFlag, 741, 19 )
	MisResultCondition(HasFlag, 741, 29 )
	MisResultCondition(HasItem, 4362, 5 )
	MisResultCondition(HasItem, 4367, 5 )
	MisResultAction(TakeItem, 4362, 5)
	MisResultAction(TakeItem, 4367, 5)
	MisResultAction(ClearMission, 741)
	MisResultAction(SetRecord, 741)
	MisResultAction(SetProfession, 12)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 269 )	
	TriggerAction( 1, AddNextFlag, 741, 10, 10 )
	RegCurTrigger( 7411 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 243 )	
	TriggerAction( 1, AddNextFlag, 741, 20, 10 )
	RegCurTrigger( 7412 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4362 )	
	TriggerAction( 1, AddNextFlag, 741, 30, 5 )
	RegCurTrigger( 7413 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4367 )	
	TriggerAction( 1, AddNextFlag, 741, 30, 5 )
	RegCurTrigger( 7414 )

end
RobinMission034()


----------------------------------------------------------
--							--
--							--
--		������[Ѳ�߱������˹]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission035()

-----------------------------------ʮ���
	DefineMission( 730, "��������� ", 718 )

	MisBeginTalk( "<t>������ ���� ����� ����������. ���� ����� ����� � ���������� �������� ��� <b������>. ������ ��������, �� ������ ������ ����� 10 <b������>?<n><t>� ���� ����������!" )
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 718)
	MisBeginAction(SetFlag, 718, 1)
	MisBeginAction(AddTrigger, 7181, TE_KILL, 206, 10 )
	MisCancelAction(ClearMission, 718)
	
	MisNeed(MIS_NEED_KILL, 206, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����� ������! �� ������ ��� ����. � ����� �������, � �� ���� ������� ������� ����� ����� ��������� �����.")
	MisHelpTalk("<t>��� ���������? ��� ����� ���� 10 ��������� ������! �������� ��� ���! ������!")
	MisResultCondition(HasMission, 718)
	MisResultCondition(HasFlag, 718, 19 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 718)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 206 )	
	TriggerAction( 1, AddNextFlag, 718, 10, 10 )
	RegCurTrigger( 7181 )


-----------------------------------Ģ������
	DefineMission( 736, "������� ��������� ", 724 )

	MisBeginTalk( "<t>� ���� ������ ������ �� <b����-�������>. ���� �� �������� �� ������, � ���������� ����� �� ����������� ����. ���� � � ����� ������� ���,� �� ����� ���� ��������� ����� <b�������-���������>.<n><t>������� ��� ��������� �������� �� (2220, 2564) ,������� 15 <b����-�������>. ���������� �� ������� ���� � ����� ������� ���! �� ��� ����� �����,����� ���� ��� ����� �� �������." )
	MisBeginCondition(NoMission, 724)
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 724)
	MisBeginAction(SetFlag, 724, 1)
	MisBeginAction(AddTrigger, 7241, TE_KILL, 184, 15 )
	MisCancelAction(ClearMission, 724)
	
	MisNeed(MIS_NEED_KILL, 184, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>��� ���<n><t>�� ������ ������� ������! ������� �� ������!")
	MisHelpTalk("<t>���� 15 ������-��������!<n><t>��� �������� �� ����!")
	MisResultCondition(HasMission, 724)
	MisResultCondition(HasFlag, 724, 24 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 724)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 184 )	
	TriggerAction( 1, AddNextFlag, 724, 10, 15 )
	RegCurTrigger( 7241 )


-----------------------------------�����ж�
	DefineMission( 737, "��������������� ������������ ", 725 )

	MisBeginTalk( "<t>�� �������� �������, ��� �������������� ������� ����� �������. � ����, ��� ���� ��� ����������� ���� ������ ��� ������� <b�������� ��������>.�����, ��� ��� ������� ��� ��� �� �������� �� �������� ������ �������. ����� ���� ������ ��� ������� ��� ���� � ���� 10 ������� �������� ������� �� ����������� (2057, 2564).<n><t>���� ���������,��� ��� ��� �������� ������ �������. ��� ��� ��� �������� ��� ��������� ����� �����, ��� ����� ������� ������ � ���. ������ � ������,��� �� ��������� � ���� ��������." )
	MisBeginCondition(NoMission, 725)
	MisBeginCondition(NoMission, 724)
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 725)
	MisBeginAction(SetFlag, 725, 1)
	MisBeginAction(AddTrigger, 7251, TE_KILL, 119, 10 )
	MisCancelAction(ClearMission, 725)
	
	MisNeed(MIS_NEED_KILL, 119, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>������?<n><t>�������! �� ������ �� ��, ��� �������� ����������, ��� ����� ������� �� ���������,�.�. ��� ����� ��� �� ��������...")
	MisHelpTalk("<t>�������� ���� ��������? ���� 10 �������!<n><t>����� �� �������� �� (2057, 2564).")
	MisResultCondition(HasMission, 725)
	MisResultCondition(HasFlag, 725, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 725)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 119 )	
	TriggerAction( 1, AddNextFlag, 725, 10, 10 )
	RegCurTrigger( 7251 )

	
end
RobinMission035()


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ҩ�����ˡ�ɳ����]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission036()

-----------------------------------ҩ�ĵ���ʺ�
	DefineMission( 717, "����������� ����� ", 709, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> � ���� �� ����� ���������? ������� � �� �������� ���� ��� ������! � ������ ����. ������ <r������>, ������ �� �� ������ ������ ������ � ����� �����.<n><t>������ ������� � ������ ��� ���������� (876, 3572).<n><t>(���� ���� ���� ������� �����. �������� �� �� ������� �������,����� ������ ������������ �� F1-F8.)")
	MisResultCondition(NoRecord, 709)
	MisResultCondition(HasMission, 709)
	MisResultCondition(NoFlag, 709, 10)
	MisResultCondition(HasItem, 3958, 1)
	MisResultAction(TakeItem, 3958, 1)
	MisResultAction(SetFlag, 709, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)


---------------------------------�޽�����	
	DefineMission( 734, "����������� �������� ", 722 )

	MisBeginTalk( "<t>������ ������� ��� ������ ������? � �������� ������� �����������, �� ��� ����� ���� ������ ��� ����� 5 <r������� �������> � 5 <r�������>.<n><t>��� ����� ���� ������� � ��������� � ������������ ����." )
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 722)
	MisBeginAction(SetFlag, 722, 1)
	MisBeginAction(AddTrigger, 7221, TE_GETITEM, 1691, 5 )
	MisBeginAction(AddTrigger, 7222, TE_GETITEM, 1597, 5 )
	MisCancelAction(ClearMission, 722)

	MisNeed(MIS_NEED_ITEM, 1691, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1597, 5, 20, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>������! ������ � ���� ������ �����������. ����������� � ��������� ����, ����� ������� ��� ������.!")
	MisHelpTalk("<t>���, �� ������ �������� ���, �� ��� � ������? ������� ��� 5 <r������� ������> � 5 <r�������>.")
	MisResultCondition(HasMission, 722)
	MisResultCondition(HasItem, 1691, 5 )
	MisResultCondition(HasItem, 1597, 5 )
	MisResultAction(TakeItem, 1691, 5 )
	MisResultAction(TakeItem, 1597, 5 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 722)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691)	
	TriggerAction( 1, AddNextFlag, 722, 10, 5 )
	RegCurTrigger( 7221 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1597)	
	TriggerAction( 1, AddNextFlag, 722, 20, 5 )
	RegCurTrigger( 7222 )


--------------------------------α������	
	DefineMission( 744, "���������� ������� ", 732 )

	MisBeginTalk( "<t>������, ���� ������ �������� ��� ��������. ��� ���, � ���� ��� ���������, ��� ��� ��������, �� ��� ����� ��� ����� �����������.<n><t>������ ��� ������� 5 ������� <r������ ����> � 5 <r��������>. ����� �� � <b������������> �� ����������� (1184, 3557). ����� � ������,� ����������!")
	MisBeginCondition(NoMission, 732)
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 732)
	MisBeginAction(SetFlag, 732, 1)
	MisBeginAction(AddTrigger, 7321, TE_GETITEM, 1648, 5 )
	MisBeginAction(AddTrigger, 7322, TE_GETITEM, 1777, 2 )
	MisCancelAction(ClearMission, 732)

	MisNeed(MIS_NEED_ITEM, 1648, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1777, 2, 20, 2)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����! �����������! ������ � ��� ��������.")
	MisHelpTalk("<t>�� �����! �� ������ �����? ���������� ��������� ������!")
	MisResultCondition(HasMission, 732)
	MisResultCondition(HasItem, 1648, 5 )
	MisResultCondition(HasItem, 1777, 2 )
	MisResultAction(TakeItem, 1648, 5 )
	MisResultAction(TakeItem, 1777, 2 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 732)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1648)	
	TriggerAction( 1, AddNextFlag, 732, 10, 5 )
	RegCurTrigger( 7321 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1777)	
	TriggerAction( 1, AddNextFlag, 732, 20, 2 )
	RegCurTrigger( 7322 )


	--------------------------------��ҩ����	
	DefineMission( 745, "���� ����� ", 733 )

	MisBeginTalk( "<t>� ��� ����� ���� � ������ ������� �������� �����, �������� ��� 2, �� ������� � ���� ���������������� ��������. ���������� ����� ��� 5 <r������� �������> � 2 <r������� ������>. ����� �� �� ������ � <b��������> �� ����������� (1031, 3556). �� �� ������ �������� ����� �����.<n><t>��! ������ ��� ���� � ������� � ������� � ������." )
	MisBeginCondition(NoMission, 733)
	MisBeginCondition(NoMission, 732)
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 733)
	MisBeginAction(SetFlag, 733, 1)
	MisBeginAction(AddTrigger, 7331, TE_GETITEM, 1692, 5 )
	MisBeginAction(AddTrigger, 7332, TE_GETITEM, 3117, 2 )
	MisCancelAction(ClearMission, 733)

	MisNeed(MIS_NEED_ITEM, 1692, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3117, 2, 20, 2)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>� ������ ������� �������. � ���� ������� ������ ������ �����.")
	MisHelpTalk("<t>� �������� ������! �� ������� ����!")
	MisResultCondition(HasMission, 733)
	MisResultCondition(HasItem, 1692, 5 )
	MisResultCondition(HasItem, 3117, 2 )
	MisResultAction(TakeItem, 1692, 5 )
	MisResultAction(TakeItem, 3117, 2 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 733)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1692)	
	TriggerAction( 1, AddNextFlag, 733, 10, 5 )
	RegCurTrigger( 7331 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3117)	
	TriggerAction( 1, AddNextFlag, 733, 20, 2 )
	RegCurTrigger( 7332 )


end
RobinMission036()


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[Ѳ�߱�������]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission037()

-----------------------------------����������
	DefineMission( 731, "���������� �������� ", 719 )

	MisBeginTalk( "<t>��! ������ ��� ����� ������� ����������� ���������. �� ��� ������ �� ����� ������� ����������. ������ ��� ������? ���� 15 <b��������> �� ����������� (1031, 3556) � ��� �������, ��� �� ������ ����� ���������� ���� �������� ���!" )
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 719)
	MisBeginAction(SetFlag, 719, 1)
	MisBeginAction(AddTrigger, 7191, TE_KILL, 95, 15 )
	MisCancelAction(ClearMission, 719)
	
	MisNeed(MIS_NEED_KILL, 95, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����� ���� �� ��������! �� �������� ���� ������� ��������.")
	MisHelpTalk("<t>���������? 15 �������� ���� �� �������?!����� ������� � �� ����.")
	MisResultCondition(HasMission, 719)
	MisResultCondition(HasFlag, 719, 24 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 719)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 95 )	
	TriggerAction( 1, AddNextFlag, 719, 10, 15 )
	RegCurTrigger( 7191 )


	-----------------------------------���˹���
	DefineMission( 740, "�������� ������� ", 728 )

	MisBeginTalk( "<t>����� ����� �������� �� �������, ������� ������� ����� � ���. ���� ������ ����� ������. � ����� ������ � �������� ��� ������, ��� ��� <b�������� �������>. ������ ���������� ����� ��������? ����  10 <b�������� ���������> ����������." )
	MisBeginCondition(NoMission, 728)
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 728)
	MisBeginAction(SetFlag, 728, 1)
	MisBeginAction(AddTrigger, 7281, TE_KILL, 48, 10 )
	MisCancelAction(ClearMission, 728)
	
	MisNeed(MIS_NEED_KILL, 48, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����� ������. ���� ��������� �� � ����.<n><t>��� �������� ������� ���������� �����.")
	MisHelpTalk("<t>���? ������� �� ���������? �������� ��� ���.")
	MisResultCondition(HasMission, 728)
	MisResultCondition(HasFlag, 728, 19 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 728)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 48)	
	TriggerAction( 1, AddNextFlag, 728, 10, 10 )
	RegCurTrigger( 7281 )
	
	-----------------------------------Ы��Σ��
	DefineMission( 741, "�������� ���������� ", 729 )

	MisBeginTalk( "<t>��! �� �����!<n><t>� ���� ���� ���� ����� �������, ����� �� ��������, ��� ���� �������.<n><t>�������� ����, �� ������ ������ ���������! ��� ������� ������� ��� ��������� �����������. ��� ����� ������ �����,����� ��������� ���������. �� �� ����!<n><t>���������� ������ ��� �����  10 <������� ����������>! ����� �� �� ����������� (1184, 3557) �� ���� ����������� �������� ����� �������� ��, ������!" )
	MisBeginCondition(NoMission, 729)
	MisBeginCondition(NoMission, 728)
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 729)
	MisBeginAction(SetFlag, 729, 1)
	MisBeginAction(AddTrigger, 7291, TE_KILL, 247, 10 )
	MisCancelAction(ClearMission, 729)
	
	MisNeed(MIS_NEED_KILL, 247, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����! � ����� ����������� ��������, � ��� ��, �������!")
	MisHelpTalk("<t>���������? ���� �������� ���������?? ���� �������, � ����� �����.")
	MisResultCondition(HasMission, 729)
	MisResultCondition(HasFlag, 729, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 729)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 247)	
	TriggerAction( 1, AddNextFlag, 729, 10, 10 )
	RegCurTrigger( 7291 )

end
RobinMission037()


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[Ѳ�߱���СĪ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission038()

-----------------------------------��Ƥ����
	DefineMission( 732, "������� ����������� ", 720 )

	MisBeginTalk( "<t>����, ������ ����� ������� ����������� ����� ����� �������. ����� � ����� �� �������� ������, ��� ��� ������� ������.<n><t>���������� �������� �� ���� ���� 15 <b������� ������������>.<n><t>��� ����� ����� ��� ����." )
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 720)
	MisBeginAction(SetFlag, 720, 1)
	MisBeginAction(AddTrigger, 7201, TE_KILL, 235, 15 )
	MisCancelAction(ClearMission, 720)
	
	MisNeed(MIS_NEED_KILL, 235, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>������. ������ � ���� �������� ������.")
	MisHelpTalk("<t>���? � ���� �� ����������? ��� �������� ��� �����!")
	MisResultCondition(HasMission, 720)
	MisResultCondition(HasFlag, 720, 24 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 720)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 235 )	
	TriggerAction( 1, AddNextFlag, 720, 10, 15 )
	RegCurTrigger( 7201 )
	
-----------------------------------��ڶ���
	DefineMission( 742, "������ ������� �� ������ ������� ����� ", 730 )

	MisBeginTalk( "<t>� ���� ��� ���� ���� ������� � ������ ������: <b������� ����������> ������ � ��� �������� ������ �����������. ���������� ����� (1179, 371) � ������� 10 <b������� �����������>." )
	MisBeginCondition(NoMission, 730)
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 730)
	MisBeginAction(SetFlag, 730, 1)
	MisBeginAction(AddTrigger, 7301, TE_KILL, 239, 10 )
	MisCancelAction(ClearMission, 730)

	MisNeed(MIS_NEED_KILL, 239, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>������? �������! �� ���������� ����� ������� �������. ��� ������� ����� ����� ����������� ������, � ������ �� ��� ������!")
	MisHelpTalk("<t>���? �� ����������?")
	MisResultCondition(HasMission, 730)
	MisResultCondition(HasFlag, 730, 19 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 730)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 239 )	
	TriggerAction( 1, AddNextFlag, 730, 10, 10 )
	RegCurTrigger( 7301 )

	-----------------------------------����Ǩ��
	DefineMission( 743, "�������� �������� ", 731 )

	MisBeginTalk( "<t>����, � ���� ������� �������! ��� ������� ��� ����� ������ ����������� � ������. � ������ � ������ ��� ��������� ������������, ����������� ������. � ���� ����� �� ������ ���� ���������� (1164 ,305). ���� � ������� ��� 12 <b������> ����� ���� � ������ ������ ��� ����." )
	MisBeginCondition(NoMission, 731)
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(NoMission, 730)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 731)
	MisBeginAction(SetFlag, 731, 1)
	MisBeginAction(AddTrigger, 7311, TE_KILL, 238, 10 )
	MisCancelAction(ClearMission, 731)
	
	MisNeed(MIS_NEED_KILL, 238, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>������! �� ������ ���!<n><t>����� ������������ ����!����...")
	MisHelpTalk("<t>��� ���������? �� �� ������ ����� ��? ��� �������!<n><t>� ���� ������ �������� �������!")
	MisResultCondition(HasMission, 731)
	MisResultCondition(HasFlag, 731, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 731)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 731, 10, 10 )
	RegCurTrigger( 7311 )

end
RobinMission038()


----------------------------------------------------------
--							--
--							--
--		��������					--
--							--
--							--
----------------------------------------------------------
function RobinMission039()

-----------------------------------���Ÿ����˹
	DefineMission( 50, "��������� ������ ������� ", 50 )
	
	MisBeginTalk( "<t>������ � ����� �������.<n><t>������ ������ <b�������>, �� ���� ���� ������ � ��������������� ����. �� ��������� � ������� �� ����������� (2065, 2732)." )
	MisBeginCondition(HasRecord, 704)
	MisBeginCondition(NoRecord, 50)
	MisBeginCondition(NoMission, 50)
	MisBeginAction(AddMission, 50)
	MisBeginAction(GiveItem, 4111, 1, 4)
	MisCancelAction(ClearMission, 50 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�������� ������ ����������� - ������� ")

	MisHelpTalk("<t>������ ���������� (2065, 2732).")
	MisResultCondition(AlwaysFailure )
-----------------------------------���Ÿ���ķ
	DefineMission( 51, "������ ��� ���� ", 51 )
	
	MisBeginTalk( "<t>���� ���� �������� �������� ����� � ����������� ������� � <b������� ����> (2250, 2770). �� ���� ���� �������." )
	MisBeginCondition(HasRecord, 704)
	MisBeginCondition(NoRecord, 51)
	MisBeginCondition(NoMission, 51)
	MisBeginAction(AddMission, 51)
	MisBeginAction(GiveItem, 4112, 1, 4)
	MisCancelAction(ClearMission, 51  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ ����� ���� ")

	MisHelpTalk("<t>������ �� �� ������� ������ ����? �� ��������� �� ����������� (2250, 2770).")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ����˹
	DefineMission( 52, "��������� ������ ������� ", 50, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>� ��� ��� �� �����.<n><t>�� ������� ��� ��� �������� ���� ������ ����� ��������?�� ����, ��� ������ ���������� ���� ������� �����. �� ������ ����� ��� ����� �� ����. ���� ���������!<n><t>�� ������� ������ ������, ����� ��� ��������� �������, ��������� �� �� ������� ������� F1-F8 ��� �������� �������������.")
	MisResultCondition(NoRecord, 50)
	MisResultCondition(HasMission, 50)
	MisResultCondition(HasItem, 4111, 1)
	MisResultAction(TakeItem, 4111, 1)
	MisResultAction(ClearMission, 50)
	MisResultAction(SetRecord, 50)
	MisResultAction(AddExp, 50, 50)

-----------------------------------ʮ���
	DefineMission( 53, "��������� ", 52 )

	MisBeginTalk( "<t>��������� ���� �� ������ ����. ���� ��������� � ��������������� ��������� ��� <r������>. ������ ���� ��������,������� ������ ����� 6 <r������>! � ���� ����������, ���� ��������." )
	MisBeginCondition(HasRecord, 50)
	MisBeginCondition(NoMission, 52)
	MisBeginCondition(NoRecord, 52)
	MisBeginAction(AddMission, 52)
	MisBeginAction(AddTrigger, 521, TE_KILL, 206, 6 )
	MisCancelAction(ClearMission, 52)
	

	MisNeed(MIS_NEED_DESP, "����� 6 <r������> � ��������� �������.")
	MisNeed(MIS_NEED_KILL, 206, 6, 10, 6)
	
	MisResultTalk("<t>�������! �� ������ ��� ����. ��������� ����� ������ �� ���������� ���� ����,������� ����.")
	MisHelpTalk("<t>��� ���������? ���� ����� 6 ������. � ���� �� ������ ���� � ���� ����� �������. ����� ���� �������� �����.")
	MisResultCondition(HasMission, 52)
	MisResultCondition(HasFlag, 52, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 52)
	MisResultAction(SetRecord, 52)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 206 )	
	TriggerAction( 1, AddNextFlag, 52, 10, 6 )
	RegCurTrigger( 521 )

-----------------------------------���Ÿ�˹����
	DefineMission( 54, "������ ��� ��������� ", 53 )
	
	MisBeginTalk( "<t>�������� � �������� ����������. �� ����� ������� �������� � ����. ���� ��� ���������� �� ���� � ������ ����� �� ����.<n><t>����� ����� ��������, ����� � ���������� �������, <b��������> �� ����������� (2219, 2749)?" )
	MisBeginCondition(HasRecord, 52)
	MisBeginCondition(NoRecord, 53)
	MisBeginCondition(NoMission, 53)
	MisBeginAction(AddMission, 53)
	MisBeginAction(GiveItem, 4113, 1, 4)
	MisCancelAction(ClearMission, 53  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ �������� ������� ")

	MisHelpTalk("<t>������ �� �� ����� ������?<n><t>������� ������, ���� ��� �����!����� ������� �� ����������� (2219, 2749).")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�˹����
	DefineMission( 55, "������ ��� ��������� ", 53, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�� ������ ������� �� ����� ����� � ������ � �������. � ������� �����!")
	MisResultCondition(NoRecord, 53)
	MisResultCondition(HasMission, 53)
	MisResultCondition(HasItem, 4113, 1)
	MisResultAction(TakeItem, 4113, 1)
	MisResultAction(ClearMission, 53)
	MisResultAction(SetRecord, 53)
	MisResultAction(AddExp, 80, 80)

-----------------------------------Ģ������
	DefineMission( 56, "������� ��������� ", 54 )

	MisBeginTalk( "<t>� �� ���� ������ ��� ������ ����� ���������� <b������-��������> �������� �� ������. ������ ��� ����������������. � ����� ����� ������� ���, �� ������ ���� ��������� <b�������-���������>.<n><t>����� �������,�� ��� ����� �����, ����� (2220, 2564) � ���� 8 <b������-��������>. ����� ���� �� ����� ���� � ������� ��� ��, ��� � ��������." )
	MisBeginCondition(HasRecord, 53)
	MisBeginCondition(NoMission, 54)
	MisBeginCondition(NoRecord, 54)
	MisBeginAction(AddMission, 54)
	MisBeginAction(AddTrigger, 541, TE_KILL, 184, 8 )
	MisCancelAction(ClearMission, 54)
	

	MisNeed(MIS_NEED_DESP, "���� 8 <r������-��������> � ��������� � �������� �������.")
	MisNeed(MIS_NEED_KILL, 184, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>��, ������� �� �� ������? �������!<n><t>�����������. ��������� ����, ������ � ������ ���� �������.")
	MisHelpTalk("<t>��� ���? ����� 8 ��������� ����� �� ������!")
	MisResultCondition(HasMission, 54)
	MisResultCondition(HasFlag, 54, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 54)
	MisResultAction(SetRecord, 54)
	MisResultBagNeed(1)	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 184 )	
	TriggerAction( 1, AddNextFlag, 54, 10, 8 )
	RegCurTrigger( 541 )

-----------------------------------���Ÿ�С���
	DefineMission( 57, "������ ��� ����� ", 55 )
	
	MisBeginTalk( "<t>� ���� ���� ������, � �� ������ ��������� ��� ������� <b�����> � �������.<n><t>�� �������� ������ ���. ����������� (2193, 2706) � ����� ��� ��� � ����." )
	MisBeginCondition(HasRecord, 54)
	MisBeginCondition(NoRecord, 55)
	MisBeginCondition(NoMission, 55)
	MisBeginAction(AddMission, 55)
	MisBeginAction(GiveItem, 4114, 1, 4)
	MisCancelAction(ClearMission, 55  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ ������� �����.")

	MisHelpTalk("<t>������ �� �� ���� ��������� ������  ������� �����? �� ��������� ����� (2193, 2706).")
	MisResultCondition(AlwaysFailure )


-----------------------------------���Ÿ�С���
	DefineMission( 58, "������ ��� ����� ", 55, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��, ��� ���� ������ ��� ��������.<n><t>� ���� ������ ���� ��� ����, ����� �� �������� ��� ������.")
	MisResultCondition(NoRecord, 55)
	MisResultCondition(HasMission, 55)
	MisResultCondition(HasItem, 4114, 1)
	MisResultAction(TakeItem, 4114, 1)
	MisResultAction(ClearMission, 55)
	MisResultAction(SetRecord, 55)
	MisResultAction(AddExp, 120, 120)

-----------------------------------�����ж�
	DefineMission( 59, "��������������� ������������ ", 56 )

	MisBeginTalk( "<t>�� �� ������� ��� �������������� ������� ����� �����������? � ������ ��� ��� ����� <b�������� ��������>. ���������� ������ ��� ����� 12 �������� ������� �� ����������� (2057, 2564).<n><t>� ��� ���� ������� �������������� � ����������, ��� ��� �������� ������� ���� ���� � ������� ������ �� ��������� 200��/�. ����� � ��� ����� ������� ������, ��� ��� ���� ���������. � ������, ��� ��� ������� ���� �� �����." )
	MisBeginCondition(HasRecord, 55)
	MisBeginCondition(NoMission, 56)
	MisBeginCondition(NoRecord, 56)
	MisBeginAction(AddMission, 56)
	MisBeginAction(AddTrigger, 561, TE_KILL, 119, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "���� 12 <r�������� �������> � ������� � ����� � �������.")
	MisNeed(MIS_NEED_KILL, 119, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>��������? �������! ��� ���� � ������, �� � ���� ������� ����� ������, � ������� �����.")
	MisHelpTalk("<t>��! ��� ����� ���� 12 �������!<n><t>����� �� ����������	(2057, 2564) �������� �� ���, ������ � ��� ���� ��� ����� �����.")
	MisResultCondition(HasMission, 56)
	MisResultCondition(HasFlag, 56, 21 )
	MisResultAction(ClearMission, 56)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 56)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 119 )	
	TriggerAction( 1, AddNextFlag, 56, 10, 12 )
	RegCurTrigger( 561 )


-----------------------------------���Ÿ�ɪ��
	DefineMission( 60, "������ ��� ����� ", 57 )
	
	MisBeginTalk( "<t>��� ����� ����� ���� ������.<n><t>���������� ������ ������ <b�����>, ���������� �������� �� ����������� (2223, 2785).<n><t>����� ����� � ��� ���� ��������� ����������." )
	MisBeginCondition(HasRecord, 56)
	MisBeginCondition(NoRecord, 57)
	MisBeginCondition(NoMission, 57)
	MisBeginAction(AddMission, 57)
	MisBeginAction(GiveItem, 4115, 1, 4)
	MisCancelAction(ClearMission, 57  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ ���������� - ����� � �������.")

	MisHelpTalk("<t>����� �� �������� (2223, 2785). ��� ����� ������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�ɪ��
	DefineMission( 61, "������ ��� ����� ", 57, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>������� �� ������...� ������� �� ��� ���������� ������ ����, ����� ����..")
	MisResultCondition(NoRecord, 57)
	MisResultCondition(HasMission, 57)
	MisResultCondition(HasItem, 4115, 1)
	MisResultAction(TakeItem, 4115, 1)
	MisResultAction(ClearMission, 57)
	MisResultAction(SetRecord, 57)
	MisResultAction(AddExp, 200, 200)


-----------------------------------��ʿתְ����
	DefineMission( 62, "����������� ������� ", 58 )
	
	MisBeginTalk( "<t>���� � ���� �� ������ ������ �����, ��� ���� ����� ����������� � ����������? ���� ������ ����� ��������, �� ����������, ��� � ������ � ����� ���������, <b������>. �� ��������� �� ����������� (2192, 2767). �� ����� ���� �����������.<n><t>������, ��� ����� ������� ������ �����. ��� ����� ����� �������� � ������� ��������� � ����� �������������� ����������.")
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_FENCER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 58)
	MisBeginAction(GiveItem, 4116, 1, 4)
	MisCancelAction(ClearMission, 58  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ ��������� ������.")

	MisHelpTalk("<t>���� ������ ����� ��������,�� ������� � ������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------����תְ����
	DefineMission( 63, "����������� �������� ", 59 )
	
	MisBeginTalk( "<t>������ ����� ������ ������ ���������. ���� ������ ����� ��������� , �� ������ ������ ��� � ������ (1365,70). �� ����� ����������� ����.<n><t>�������� ������������ �����, � ������� ������� �����, �� ���� ������ � ��������, �� ��� �� ����� ��� ����� ������� � ����.���������� ����� ���� ��� ������,��� � �����." )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_HUNTER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 59)
	MisBeginAction(GiveItem, 4117, 1, 4)
	MisCancelAction(ClearMission, 59 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ ������� ��� � ������.")

	MisHelpTalk("<t>���� ������ ���� ��������� ������� � ���!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ҩʦתְ����
	DefineMission( 64, "����������� �������� ", 60 )
	
	MisBeginTalk( "<t>���� ���� �������� ��� ������ �����. ���� ������ ����� ���������, ������� � ������ � <b�������� ������>. �� ��������� �� ����������� (862, 3500). �� ���� �����������.<n><t>�������� ���� ���������� � ���������� ���������� � ��������." )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_DOCTOR )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 60)
	MisBeginAction(GiveItem, 4118, 1, 4)
	MisCancelAction(ClearMission, 60 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�������� ��� ������ ������ � �������.")

	MisHelpTalk("<t>���� ������ ����� ��������� ������� � ������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ð����תְ����
	DefineMission( 65, "����������� ������������� ", 61 )
	
	MisBeginTalk( "<t>���� ���� ������� �����. ���� ������ ����� ��������������, ����� ��� � ������ � <b������ �������> �� ����������� (2193, 2730). ������ ��� ��� ��� ������.<n><t>������������� ���������� ���������, ������ ��� ���� �� ���������� ������������ ������. � ���������� ������������� ���������� ������������ �����. � ���� ��� ����� ������� � ��������� �����." )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_RISKER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 61)
	MisBeginAction(GiveItem, 4119, 1, 4)
	MisCancelAction(ClearMission, 61 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�������� ������ ������ ������� � �������!")

	MisHelpTalk("<t>���� ������ ����� �������������� ������� � ������� at (2193, 2730).")
	MisResultCondition(AlwaysFailure )


-----------------------------------��ʿתְ����
	DefineMission( 66, "����������� ������� ", 58, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�� ������� ������� ������. ���� ������ ����� ��������, ������� ������, ������� � ���� ���.� ���� ������� ����������.")
	MisResultCondition(NoRecord, 58)
	MisResultCondition(HasMission, 58)
	MisResultCondition(HasItem, 4116, 1)
	MisResultAction(TakeItem, 4116, 1)
	MisResultAction(ClearMission, 58)
	MisResultAction(SetRecord, 58)

-----------------------------------��ʿתְ����
	DefineMission( 67, "����������� ������� ", 62 )

	MisBeginTalk( "<t>������ ����� ��������? � �� �������?<n><t>������ ������ ��������� ������������, �� ������ �������� ���� ��������� � ��������� �����������.<n><t>����������� �� <p��������� �������> � ���� 12 <b�����������> �� ����������� (1950, 2563) � ����� ������� �� ���.<n><t>��� ����� ��� ������ ����������� ���������." )
	MisBeginCondition(HasRecord, 58)
	MisBeginCondition(NoMission, 62)
	MisBeginCondition(NoRecord, 62)
	MisBeginAction(AddMission, 62)
	MisBeginAction(AddTrigger, 621, TE_KILL, 237, 12 )
	MisCancelAction(ClearMission, 62)
	

	MisNeed(MIS_NEED_DESP, "����� 12 <b�����������> � ���������� � ������� � �������.")
	MisNeed(MIS_NEED_KILL, 237, 6, 10, 6)
	
	MisResultTalk("<t>�� ������� ���������.<n><t>�� ������ ������ ��������� ��� ����, ����� ����� ��������.")
	MisHelpTalk("<t>�� �� �������� ����� ����������. ������� ���, ��� �� ������� ��������.")
	MisResultCondition(HasMission, 62)
	MisResultCondition(HasFlag, 62, 21 )
	MisResultAction(ClearMission, 62)
	MisResultAction(SetRecord, 62)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 62, 10, 6 )
	RegCurTrigger( 621 )


-----------------------------------��ʿתְ����
	DefineMission( 68, "����������� ������� ", 63 )
	
	MisBeginTalk( "<t>������ ��� � <b�������� - �������> (2277, 2831) �� ���� ���� �������������� ������� ����������� ��������.")
	MisBeginCondition(HasRecord, 62)
	MisBeginCondition(NoRecord, 63)
	MisBeginCondition(NoMission, 63)
	MisBeginAction(AddMission, 63)
	MisBeginAction(GiveItem, 4120, 1, 4)
	MisCancelAction(ClearMission, 63  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ �������� ������� � �������!")

	MisHelpTalk("<t>�����,� ������,��� �� ��� ��������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ʿתְ����
	DefineMission( 69, "����������� ������� ", 63, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��, ������. �� ����� ������, �������!.")
	MisResultCondition(NoRecord, 63)
	MisResultCondition(HasMission, 63)
	MisResultCondition(HasItem, 4120, 1)
	MisResultAction(TakeItem, 4120, 1)
	MisResultAction(ClearMission, 63)
	MisResultAction(SetRecord, 63)
	MisResultAction(AddExp, 100, 100)

-----------------------------------��ʿתְ����
	DefineMission( 70, "����������� ������� ", 64 )

	MisBeginTalk( "<t>��� ���� ��� �������<n><t>����� �� <p��������� �������> � ������� 3 <r��������> � ������� �����.<n><t>��� ������ �� ��� ��������, � ���� ������ ��������.<n><t>������ ������� �� ������ ������ �� ����� ������ �� ����������� (2057, 2638).")
	MisBeginCondition(HasRecord, 63)
	MisBeginCondition(NoMission, 64)
	MisBeginCondition(NoRecord, 64)
	MisBeginAction(AddMission, 64)
	MisBeginAction(AddTrigger, 641, TE_GETITEM, 1678, 3 )
	MisCancelAction(ClearMission, 64)

	MisNeed(MIS_NEED_DESP, "������ 3 <r��������> � �������� � ��������")
	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	
	MisResultTalk("<t>�� �� ������! � ������ ��� �� ����!")
	MisHelpTalk("<t>3 ��������. ��� �� ����� ������,������� ��� ��.")
	MisResultCondition(HasMission, 64)
	MisResultCondition(HasItem, 1678, 3 )
	MisResultAction(TakeItem, 1678, 3)
	MisResultAction(ClearMission, 64)
	MisResultAction(SetRecord, 64)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678 )	
	TriggerAction( 1, AddNextFlag, 64, 10, 3 )
	RegCurTrigger( 641 )

-----------------------------------��ʿתְ����
	DefineMission( 71, "����������� ������� ", 65 )
	
	MisBeginTalk( "<t>�� ��� ������� ���� ���������, � ������� �����. ��� � ����� ������, ����� �� ������ ���� ��������. ��� ���� <r���������� ������> �� ����� ������� ���� ��������������� ����� ��������.")
	MisBeginCondition(HasRecord, 64)
	MisBeginCondition(NoRecord, 65)
	MisBeginCondition(NoMission, 65)
	MisBeginAction(AddMission, 65)
	MisBeginAction(GiveItem, 3953, 1, 4)
	MisCancelAction(ClearMission, 65 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������ ������  ������ � ������ �� ����������� (2192, 2767)")

	MisHelpTalk("<t>������ �� �������? ������ ������ ������,�����.")
	MisResultCondition(AlwaysFailure )


-----------------------------------��ʿתְ����
	DefineMission( 72, "����������� ������� ", 65, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>����������, �� ������� ���������� ������. ������ �� ����������� ������!<n><t>(�� ������ ������������ ���� ���������.<n><t>����� ������ ������ � ������� �����, ������ � ������� ���� � ����� ������� � ����������� ��������)")
	MisResultCondition(NoRecord, 65)
	MisResultCondition(HasMission, 65)
	MisResultCondition(HasItem, 3953, 1)
	MisResultAction(TakeItem, 3953, 1)
	MisResultAction(ClearMission, 65)
	MisResultAction(SetRecord, 65)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 1)
	MisResultAction(GiveItem, 1, 1, 4)
	MisResultAction(GiveItem, 3164, 1, 4)
	MisResultBagNeed(2)

-----------------------------------���Ÿ���ķ
	DefineMission( 73, "������ ��� ���� ", 51, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��� ������, ��� �� �����, � ��� �� ������������ ���� ���� ������.")
	MisResultCondition(NoRecord, 51)
	MisResultCondition(HasMission, 51)
	MisResultCondition(HasItem, 4112, 1)
	MisResultAction(TakeItem, 4112, 1)
	MisResultAction(ClearMission, 51)
	MisResultAction(SetRecord, 51)
	MisResultAction(AddExp, 50, 50)


-----------------------------------����䷽
	DefineMission( 74, "������ ������ ", 66 )

	MisBeginTalk( "<t>��� ����� ���� ������. ������ �� ������������, ���������� ������� ��� 3 ������� <r������ ������>. �� �� ������ ������� ���� <r���������� �����������> �������� �� ����, �� ������. �� ����������� ����� � �����, ��� �����!")
	MisBeginCondition(HasRecord, 51)
	MisBeginCondition(NoMission, 66)
	MisBeginCondition(NoRecord, 66)
	MisBeginAction(AddMission, 66)
	MisBeginAction(AddTrigger, 661, TE_GETITEM, 1705, 3 )
	MisCancelAction(ClearMission, 66)
	
	MisNeed(MIS_NEED_DESP, "������ 3 ������� <r������ ������> � ������� � ����� ���� (2250, 2770)")
	MisNeed(MIS_NEED_ITEM, 1705, 3, 10, 3)
	
	MisResultTalk("<t>����� ������. � ��� ��� ��� �� ������ ��� �����������, � ���� ��������� ����������� ��� ������ �����.")
	MisHelpTalk("<t>���? �� ������ ������� �����������?�������� ��� �����!")
	MisResultCondition(HasMission, 66)
	MisResultCondition(HasItem, 1705, 3 )
	MisResultAction(TakeItem, 1705, 3)
	MisResultAction(ClearMission, 66)
	MisResultAction(SetRecord, 66)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1705 )	
	TriggerAction( 1, AddNextFlag, 66, 10, 3 )
	RegCurTrigger( 661 )

-----------------------------------���Ÿ�����
	DefineMission( 75, "������ ��� ����� ", 67 )
	
	MisBeginTalk( "<t>� ���� ���������� ���� ������������.<n><t>��� �� �������� ��� ����� ������. ������ ������ ����� ��������� ����� (2240, 2752), � ����� �� ����� �� �� ������.")
	MisBeginCondition(HasRecord, 66)
	MisBeginCondition(NoRecord, 67)
	MisBeginCondition(NoMission, 67)
	MisBeginAction(AddMission, 67)
	MisBeginAction(GiveItem, 4121, 1, 4)
	MisCancelAction(ClearMission, 67 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ �����.")

	MisHelpTalk("<t>����� �� ������ ����� �� ����������� (2240, 2752) � �������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����
	DefineMission( 76, "������ ��� ����� ", 67, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>� ������, �� ������ ���� �� ��������� ����.")
	MisResultCondition(NoRecord, 67)
	MisResultCondition(HasMission, 67)
	MisResultCondition(HasItem, 4121, 1)
	MisResultAction(TakeItem, 4121, 1)
	MisResultAction(ClearMission, 67)
	MisResultAction(SetRecord, 67)
	MisResultAction(AddExp, 80, 80)

-----------------------------------Ģ��Ģ��
	DefineMission( 77, "����� ����� ", 68 )

	MisBeginTalk( "<t>��� ����� <b�����-�������>, ������� ������ �������� �� �������. ������ ��������� ����� � ��� ����� ��� ����� ��� �������������. ������ ���������� ������� �� ��� 6 <r�������� ������>?<n><t>���...��� ����� �����������, ��� ��� ����� ������ ������� � �����. ������-�������� �� ������ ����� �� ����������� (2220, 2564). ������ ���� ������ � ����� �����,������!")
	MisBeginCondition(HasRecord, 67)
	MisBeginCondition(NoMission, 68)
	MisBeginCondition(NoRecord, 68)
	MisBeginAction(AddMission, 68)
	MisBeginAction(AddTrigger, 681, TE_GETITEM, 1725, 6 )
	MisCancelAction(ClearMission, 68)
	
	MisNeed(MIS_NEED_DESP, "������ 6 <r�������� ������> � ������� ����� � ������� �� ����������� (2240, 2752)")
	MisNeed(MIS_NEED_ITEM, 1725, 6, 10, 6)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>���������! �� ������ ��������� ���! ������� ����!")
	MisHelpTalk("<t>��� ���������? �������� �������� ����? �� ������ �������� ��� �����.")
	MisResultCondition(HasMission, 68)
	MisResultCondition(HasItem, 1725, 6 )
	MisResultAction(TakeItem, 1725, 6)
	MisResultAction(ClearMission, 68)
	MisResultAction(SetRecord, 68)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1725 )	
	TriggerAction( 1, AddNextFlag, 68, 10, 6 )
	RegCurTrigger( 681 )

-----------------------------------���Ÿ�����
	DefineMission( 78, "������ ��� ���� ", 69 )
	
	MisBeginTalk( "<t>� ������ �� ��������.<n><t>������ ������ <b������ - ����> � ������ ������� �� ����������� (2219, 2911).")
	MisBeginCondition(HasRecord, 68)
	MisBeginCondition(NoRecord, 69)
	MisBeginCondition(NoMission, 69)
	MisBeginAction(AddMission, 69)
	MisBeginAction(GiveItem, 4122, 1, 4)
	MisCancelAction(ClearMission, 69 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ������ ����.")

	MisHelpTalk("<t>��� ���������? � �����. P���������� ��� � ������� ����.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����
	DefineMission( 79, "������ ��� ���� ", 69, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>� ������, ��� ���������������� ������ �� ����.")
	MisResultCondition(NoRecord, 69)
	MisResultCondition(HasMission, 69)
	MisResultCondition(HasItem, 4122, 1)
	MisResultAction(TakeItem, 4122, 1)
	MisResultAction(ClearMission, 69)
	MisResultAction(SetRecord, 69)
	MisResultAction(AddExp, 120, 120)

-----------------------------------��ʧ�Ļ���
	DefineMission( 80, "����������� ���� ", 70 )

	MisBeginTalk( "<t>� ������������� �� ������ ������� � ������. � ��������� � ������� 2 ��������� <r���������� �����>. � ���� ������ ����� ������������.<n><t>������ ���������� ��� ������� 2 ��������� ���������� �����? ��� ����� ��� ����� � ��� ������!<n><t>��������� ����� ������ ������ �� <r�������� ��������> �� ����������� (2057, 2564).")
	MisBeginCondition(HasRecord, 69)
	MisBeginCondition(NoMission, 70)
	MisBeginCondition(NoRecord, 70)
	MisBeginAction(AddMission, 70)
	MisBeginAction(AddTrigger, 701, TE_GETITEM, 1844, 2 )
	MisCancelAction(ClearMission, 70)
	
	MisNeed(MIS_NEED_DESP, "������ 2 ���������  <r���������� �����> � ������� � ���� � ������ �� ����������� (2219, 2911)")
	MisNeed(MIS_NEED_ITEM, 1844, 2, 10, 2)
	
	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�����������!<n><t>�� ���� ����! ������� ���� ��������!")
	MisHelpTalk("<t>��������� ��� ���, ����� ��� ��� � ���� ���������!")
	MisResultCondition(HasMission, 70)
	MisResultCondition(HasItem, 1844, 2 )
	MisResultAction(TakeItem, 1844, 2)
	MisResultAction(ClearMission, 70)
	MisResultAction(SetRecord, 70)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1844 )	
	TriggerAction( 1, AddNextFlag, 70, 10, 2 )
	RegCurTrigger( 701 )

-----------------------------------���Ÿ�ɪ��
	DefineMission( 81, "������ ��� ����� ", 71 )
	
	MisBeginTalk( "<t>���� � � ������ ���� ��� � ������ �����, �� ��� ����� ����� ���� ������. ���������� ������ ��� ������ <b�����>, ���������� �������� �� ����������� (2223, 2785). ����� ����� ������� �� ��� �� ����������� ������������.")
	MisBeginCondition(HasRecord, 70)
	MisBeginCondition(NoRecord, 71)
	MisBeginCondition(NoMission, 71)
	MisBeginAction(AddMission, 71)
	MisBeginAction(GiveItem, 4115, 1, 4)
	MisCancelAction(ClearMission, 71 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������ ������ ���������� �����.")

	MisHelpTalk("<t>����� ��������� (2223, 2785). ��� ������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�ɪ��
	DefineMission( 82, "������ ��� ����� ", 71, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>������� �������� �� ������.")
	MisResultCondition(NoRecord, 71)
	MisResultCondition(HasMission, 71)
	MisResultCondition(HasItem, 4115, 1)
	MisResultAction(TakeItem, 4115, 1)
	MisResultAction(ClearMission, 71)
	MisResultAction(SetRecord, 71)
	MisResultAction(AddExp, 200, 200)

-----------------------------------���Ÿ�����
	DefineMission( 83, "������ ��� ������ ", 72 )
	
	MisBeginTalk( "<t>��� ����� ���� ������ ��� � ����� ����.<n><t>������ ��� ������ <b������>, �� ����������, � ����� �� ���� ���� ���� ������� ��� ��������. ��� ��� � ������� (958, 3549).")
	MisBeginCondition(HasRecord, 710)
	MisBeginCondition(NoRecord, 72)
	MisBeginCondition(NoMission, 72)
	MisBeginAction(AddMission, 72)
	MisBeginAction(GiveItem, 4123, 1, 4)
	MisCancelAction(ClearMission, 72 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ����������� - ������ ")

	MisHelpTalk("<t>������ ����� ����� �� ����������� (2065, 2732).")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ���ī
	DefineMission( 84, "������ ��� ���� ", 73 )
	
	MisBeginTalk( "<t>���� �� ������������� �������� ��������� ���������� ��� ������, �� ������ � ������ ��� ��� ������ �����������  <b����> (840, 3585). ��� ������� ����.")
	MisBeginCondition(HasRecord, 710)
	MisBeginCondition(NoRecord, 73)
	MisBeginCondition(NoMission, 73)
	MisBeginAction(AddMission, 73)
	MisBeginAction(GiveItem, 4124, 1, 4)
	MisCancelAction(ClearMission, 73  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ���� ")

	MisHelpTalk("<t>������ �� �� ������� ������ ����? ��� � �� ����������� (840, 3585).")
	MisResultCondition(AlwaysFailure )


-----------------------------------���Ÿ�����
	DefineMission( 85, "������ ��� ������ ", 72, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>� ���, ��� �� �����, � ���� ���� ��� ���� ������ ���������.<n><t>������ ������, ��� � ��� ���� ������ ����� ��������. �� ����, ��� ������������� ����������. ����� ��� ������� �� ����, �� ��������. ���� ���������!<n><t>�� ������� ������ ������, ����� � ������ �������, ���������� �������� �� �� ������� ������� ��� ������������ �� ��������.")
	MisResultCondition(NoRecord, 72)
	MisResultCondition(HasMission, 72)
	MisResultCondition(HasItem, 4123, 1)
	MisResultAction(TakeItem, 4123, 1)
	MisResultAction(ClearMission, 72)
	MisResultAction(SetRecord, 72)
	MisResultAction(AddExp, 50, 50)

-----------------------------------����������
	DefineMission( 86, "��������� �������� ", 74 )

	MisBeginTalk( "<t>��! �� ������ ������ � ��� � ������� �������� ��������. � ����� ������ �� ��������� �������������� �����! ������ ������ ��� � ����? ���� �� ������, ���� 15 <b��������>, ��� ��������� �� ����������� (1031, 3556) � ��� �������, ��� �� ��������� � ���� ��������� ������� ����� ����.")
	MisBeginCondition(HasRecord, 72)
	MisBeginCondition(NoMission, 74)
	MisBeginCondition(NoRecord, 74)
	MisBeginAction(AddMission, 74)
	MisBeginAction(AddTrigger, 741, TE_KILL, 95, 6 )
	MisCancelAction(ClearMission, 74)
	
	MisNeed(MIS_NEED_DESP, "���� 6 <r��������> � ������� � ������.")
	MisNeed(MIS_NEED_KILL, 95, 6, 10, 6)
	
	MisResultTalk("<t>���������! �� ��� ������ ���� ����.")
	MisHelpTalk("<t>�� ��������� 6 ��������?")
	MisResultCondition(HasMission, 74)
	MisResultCondition(HasFlag, 74, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 74)
	MisResultAction(SetRecord, 74)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 95 )	
	TriggerAction( 1, AddNextFlag, 74, 10, 6 )
	RegCurTrigger( 741 )

-----------------------------------���Ÿ�����
	DefineMission( 87, "������ ��� ������ ", 75 )
	
	MisBeginTalk( "<t> ���������� ������ ��� ������ ����� ����� <b������> �� ����������� (867, 3660) � ������.<n><t>�� ����� ���������� �������, � � ����� ������ ���� ���-���...")
	MisBeginCondition(HasRecord, 74)
	MisBeginCondition(NoRecord, 75)
	MisBeginCondition(NoMission, 75)
	MisBeginAction(AddMission, 75)
	MisBeginAction(GiveItem, 4125, 1, 4)
	MisCancelAction(ClearMission, 75  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������� ������ ")

	MisHelpTalk("<t>��������� ����������,����� ���� ��� �� ���� �������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����
	DefineMission( 88, "������ ��� ������ ", 75, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��, �� ���� ������? ������� ���� �� ������..")
	MisResultCondition(NoRecord, 75)
	MisResultCondition(HasMission, 75)
	MisResultCondition(HasItem, 4125, 1)
	MisResultAction(TakeItem, 4125, 1)
	MisResultAction(ClearMission, 75)
	MisResultAction(SetRecord, 75)
	MisResultAction(AddExp, 80, 80)

-----------------------------------���˹���
	DefineMission( 89, "�������� ������� ", 76 )

	MisBeginTalk( "<t>�� ������ � �������� � �������, ������� �������� ����� ����������������? � ����� ������������� � �������� ��� ��� <b�������� �������>. ������ �� �� ����������� �� ����?? ���� 8 <b�������� ���������> ,� ���� ���� ������ �����������.")
	MisBeginCondition(HasRecord, 75)
	MisBeginCondition(NoMission, 76)
	MisBeginCondition(NoRecord, 76)
	MisBeginAction(AddMission, 76)
	MisBeginAction(AddTrigger, 761, TE_KILL, 48, 8 )
	MisCancelAction(ClearMission, 76)

	MisNeed(MIS_NEED_DESP, "���� 8 <r�������� ���������> � ������� � ������ � ������.")
	MisNeed(MIS_NEED_KILL, 48, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�����������. ������ ��� �������� ����.<n><t>��� �������� �������� ��� �������.")
	MisHelpTalk("<t>���? �� ���� ��������� ���������� �� ����? ��������� ��� �����.")
	MisResultCondition(HasMission, 76)
	MisResultCondition(HasFlag, 76, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 76)
	MisResultAction(SetRecord, 76)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 48 )	
	TriggerAction( 1, AddNextFlag, 76, 10, 8 )
	RegCurTrigger( 761 )

-----------------------------------���Ÿ�ͭͭ��
	DefineMission( 90, "������ ��� ����� ", 77 )
	
	MisBeginTalk( "<t>������ ������� ������ <b������� �����> (902, 3495)? �� ������ ���������� ������� � ������." )
	MisBeginCondition(HasRecord, 76)
	MisBeginCondition(NoRecord, 77)
	MisBeginCondition(NoMission, 77)
	MisBeginAction(AddMission, 77)
	MisBeginAction(GiveItem, 4126, 1, 4)
	MisCancelAction(ClearMission, 77  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ ������� �����.")

	MisHelpTalk("<t>�� ������ �����?������������ �������, ��� ����������� ������.")
	MisResultCondition(AlwaysFailure )


-----------------------------------���Ÿ�ͭͭ��
	DefineMission( 91, "������ ��� ����� ", 77, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��, ������ ������ ����,����� �� ����� ���? ��� ������! � - ��������� ������������� �������.")
	MisResultCondition(NoRecord, 77)
	MisResultCondition(HasMission, 77)
	MisResultCondition(HasItem, 4126, 1)
	MisResultAction(TakeItem, 4126, 1)
	MisResultAction(ClearMission, 77)
	MisResultAction(SetRecord, 77)
	MisResultAction(AddExp, 120, 120)

-----------------------------------��Ы֤
	DefineMission( 92, "������ ��������� ", 78 )

	MisBeginTalk( "<t>���� ������� ���� ������, ��� � ����� ����� ����������!<n><t>������ � ��������� ������ �������������� �� �������.<n><t>������ ������� ��������� �������� ���� ����������, ��� ����� ������, ������� ������� ���������...��� ����� ����� � 1 �����. �� ��� � ������� ����� ��������.<n><t>���������� ���� 12 <������� ����������>! ��� �������� �������� �� (1184, 3557), �� ��� ����� ���������, ��� ��� �����������!")
	MisBeginCondition(HasRecord, 77)
	MisBeginCondition(NoMission, 78)
	MisBeginCondition(NoRecord, 78)
	MisBeginAction(AddMission, 78)
	MisBeginAction(AddTrigger, 781, TE_KILL, 247, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "���� 12 <r������� ����������> � ������� � ����� � ������.")
	MisNeed(MIS_NEED_KILL, 247, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>������! �� ����� ������� ������� � �� ���� ����� ������ ��������. �� ��� ������ �����������. � ������� ������� �����.")
	MisHelpTalk("<t>��� �� �� �����? ���������� ���� ��������? ������ ����� ������� � ����� � �������� �����.")
	MisResultCondition(HasMission, 78)
	MisResultCondition(HasFlag, 78, 21 )
	MisResultAction(ClearMission, 78)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 78)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 247 )	
	TriggerAction( 1, AddNextFlag, 78, 10, 12 )
	RegCurTrigger( 781 )


-----------------------------------���Ÿ�����˿
	DefineMission( 93, "������ ��� ����� ", 79 )
	
	MisBeginTalk( "<t>�� ����� ����� �� �� ����� ����������� � �������,� ����� �������� ������������� ����������� �����.�� ��� ����� ������ ��� � ����� ����... <n><t>������ ������ <b���������� �������� - ������> �� ����������� (876, 3572), ��� ���� ���� ���������� ���������." )
	MisBeginCondition(HasRecord, 78)
	MisBeginCondition(NoRecord, 79)
	MisBeginCondition(NoMission, 79)
	MisBeginAction(AddMission, 79)
	MisBeginAction(GiveItem, 4127, 1, 4)
	MisCancelAction(ClearMission, 79  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ���������� - ������.")

	MisHelpTalk("<t>������ ���������� �� ������������ (876, 3572). ���������� �������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����˿
	DefineMission( 94, "������ ��� ����� ", 79, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>������� ���� �� ������, � ���� ����� ����������.")
	MisResultCondition(NoRecord, 79)
	MisResultCondition(HasMission, 79)
	MisResultCondition(HasItem, 4127, 1)
	MisResultAction(TakeItem, 4127, 1)
	MisResultAction(ClearMission, 79)
	MisResultAction(SetRecord, 79)
	MisResultAction(AddExp, 200, 200)

-----------------------------------ҩʦתְ����
	DefineMission( 95, "����������� �������� ", 60, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("�� ������ �� ��� � ������������ �������, ��� ����������� ��������? ���� �� ������� ����� ��������� �� ���� ����� ������ ���� ���������.")
	MisResultCondition(NoRecord, 60)
	MisResultCondition(HasMission, 60)
	MisResultCondition(HasItem, 4118, 1)
	MisResultAction(TakeItem, 4118, 1)
	MisResultAction(ClearMission, 60)
	MisResultAction(SetRecord, 60)

-----------------------------------ҩʦתְ����
	DefineMission( 96, "����������� �������� ", 80 )

	MisBeginTalk( "<t>������ �� ������� ����� ���������? ������ ��������� ����� ����������, ��� ���� ����� ������ �����������... ���� ��������� ��������: �������������� �� �� ����� ������������.<n><t>���� ��������� ���������� ����� ������. ����� �� ����������� (884, 3156) � ���� 2 <b�������-������>. ����� ��������� ��� ���������,�� ������ ���������." )
	MisBeginCondition(HasRecord, 60)
	MisBeginCondition(NoMission, 80)
	MisBeginCondition(NoRecord, 80)
	MisBeginAction(AddMission, 80)
	MisBeginAction(AddTrigger, 801, TE_KILL, 43, 2 )
	MisCancelAction(ClearMission, 80)
	

	MisNeed(MIS_NEED_DESP, "����� 2 <b�������-������> � �������� � ������� � ������ (862, 3500)")
	MisNeed(MIS_NEED_KILL, 43, 2, 10, 2)
	
	MisResultTalk("<t>������� �� ��� ������... ���������.")
	MisHelpTalk("<t>� ���� �������� ��������?")
	MisResultCondition(HasMission, 80)
	MisResultCondition(HasFlag, 80, 11 )
	MisResultAction(ClearMission, 80)
	MisResultAction(SetRecord, 80)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 43 )	
	TriggerAction( 1, AddNextFlag, 80, 10, 2 )
	RegCurTrigger( 801 )


-----------------------------------ҩʦתְ����
	DefineMission( 97, "����������� �������� ", 81 )
	
	MisBeginTalk( "<t>���������� ������� ��� ������  Navy HQ - �������� ���� �� ����������� (865, 3648). �� ���� ���� ���������� ���������.")
	MisBeginCondition(HasRecord, 80)
	MisBeginCondition(NoRecord, 81)
	MisBeginCondition(NoMission, 81)
	MisBeginAction(AddMission, 81)
	MisBeginAction(GiveItem, 4128, 1, 4)
	MisCancelAction(ClearMission, 81  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������ ������ Navy HQ - �������� ����.")

	MisHelpTalk("<t>�� ������������,���� �������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ҩʦתְ����
	DefineMission( 98, "����������� �������� ", 81, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�� ������ ���� ������ ����� ���������. �������!")
	MisResultCondition(NoRecord, 81)
	MisResultCondition(HasMission, 81)
	MisResultCondition(HasItem, 4128, 1)
	MisResultAction(TakeItem, 4128, 1)
	MisResultAction(ClearMission, 81)
	MisResultAction(SetRecord, 81)
	MisResultAction(AddExp, 100, 100)

-----------------------------------ҩʦתְ����
	DefineMission( 99, "����������� �������� ", 82 )

	MisBeginTalk( "<t>��� ���� ������ �����, ������, ��� �� ������ ����� ���������. ���� � ����� � ���� ��� ���������, �� �� ���������� ������� ���������.<n><t>��� ���� �������: ������ ��� ���� 3 <b�������� �����>. ������ ��� ����� ������,� ��� ������.<n><t>����� �� �� <r������-����������> �������� �� ������ �� ����������� (892, 3273).")
	MisBeginCondition(HasRecord, 81)
	MisBeginCondition(NoMission, 82)
	MisBeginCondition(NoRecord, 82)
	MisBeginAction(AddMission, 82)
	MisBeginAction(AddTrigger, 821, TE_GETITEM, 3129, 3 )
	MisCancelAction(ClearMission, 82)

	MisNeed(MIS_NEED_DESP, "������ 3 <b�������� �����> � ������� � �������� ���� �� ����������� (865, 3648)")
	MisNeed(MIS_NEED_ITEM, 3129, 3, 10, 3)
	
	MisResultTalk("<t>������. �� ������ ��� ���������!")
	MisHelpTalk("<t>���������,�?��� ����� ������,���������� ���� ���� ����.������������ �������.")
	MisResultCondition(HasMission, 82)
	MisResultCondition(HasItem, 3129, 3 )
	MisResultAction(TakeItem, 3129, 3)
	MisResultAction(ClearMission, 82)
	MisResultAction(SetRecord, 82)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129 )	
	TriggerAction( 1, AddNextFlag, 82, 10, 3 )
	RegCurTrigger( 821 )

-----------------------------------ҩʦתְ����
	DefineMission( 150, "����������� �������� ", 83 )
	
	MisBeginTalk( "<t>�� �������,��� �������. ������ ��� ������ ������, ��� ����,����� ����� ���������. ��� ���� <r�������������� ��������> ,����� ��� ���� ��������.")
	MisBeginCondition(HasRecord, 82)
	MisBeginCondition(NoRecord, 83)
	MisBeginCondition(NoMission, 83)
	MisBeginAction(AddMission, 83)
	MisBeginAction(GiveItem, 3954, 1, 4)
	MisCancelAction(ClearMission, 83 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������������ ������ � ������� �� ����������� (862, 3500)")

	MisHelpTalk("<t>��� ���������? ��� ��� ����������?��� ������!")
	MisResultCondition(AlwaysFailure )


-----------------------------------ҩʦתְ����
	DefineMission( 151, "����������� �������� ", 83, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>���������� ���� ��! ������ �� ��������! �� �������� � ����� ����!<n><t>(�� ����������� ���� ��������� � ������.<n><t>���� ������ � ������� �����, �������,�������� � ������� � ������� ��� � ������ � ����������� ����)")
	MisResultCondition(NoRecord, 83)
	MisResultCondition(HasMission, 83)
	MisResultCondition(HasItem, 3954, 1)
	MisResultAction(TakeItem, 3954, 1)
	MisResultAction(ClearMission, 83)
	MisResultAction(SetRecord, 83)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 5)
	MisResultAction(GiveItem, 3206, 1, 4)
	MisResultAction(GiveItem, 97, 1, 4)
	MisResultBagNeed(2)


-----------------------------------���Ÿ���ī
	DefineMission( 152, "������ ��� ���� ", 73, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�������,�� ����� ����.")
	MisResultCondition(NoRecord, 73)
	MisResultCondition(HasMission, 73)
	MisResultCondition(HasItem, 4124, 1)
	MisResultAction(TakeItem, 4124, 1)
	MisResultAction(ClearMission, 73)
	MisResultAction(SetRecord, 73)
	MisResultAction(AddExp, 50, 50)


-----------------------------------�޽�ʵ��
	DefineMission( 153, "������ �������� ", 84 )

	MisBeginTalk( "<t>������ ������� �������� ������? � ���� �������� �����������, �� ��� ����� ��� �����������: 6 <r������� �������>.<n><t>��� ����� ���� ������ �� <b���������> �������� �������� �� ������. ������ ��� ������ ���������� ���, ���� ���� �������.")
	MisBeginCondition(HasRecord, 73)
	MisBeginCondition(NoMission, 84)
	MisBeginCondition(NoRecord, 84)
	MisBeginAction(AddMission, 84)
	MisBeginAction(AddTrigger, 841, TE_GETITEM, 1691, 6 )
	MisCancelAction(ClearMission, 84)
	
	MisNeed(MIS_NEED_DESP, "������ 6 <r������� �������> � ������� � ���� � ����� (840, 3585)")
	MisNeed(MIS_NEED_ITEM, 1691, 6, 10, 6)
	
	MisResultTalk("<t>�������! ������ � ���� ������ ���� �����������. ������� ����� ���, ������� ��� �����!")
	MisHelpTalk("<t>���, ���������? ������� ��� �����!")
	MisResultCondition(HasMission, 84)
	MisResultCondition(HasItem, 1691, 6 )
	MisResultAction(TakeItem, 1691, 6)
	MisResultAction(ClearMission, 84)
	MisResultAction(SetRecord, 84)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691 )	
	TriggerAction( 1, AddNextFlag, 84, 10, 6 )
	RegCurTrigger( 841 )

-----------------------------------���Ÿ�����
	DefineMission( 154, "������ ��� ���� ", 85 )
	
	MisBeginTalk( "<t>� ���� ���������� ���� ������������.<n><t>������ �� ���� �� ������� ��� ������ ���� � ����� (883, 3520) � ������ ����� �� �� ������?")
	MisBeginCondition(HasRecord, 84)
	MisBeginCondition(NoRecord, 85)
	MisBeginCondition(NoMission, 85)
	MisBeginAction(AddMission, 85)
	MisBeginAction(GiveItem, 4129, 1, 4)
	MisCancelAction(ClearMission, 85 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ ���� � ������� ")

	MisHelpTalk("<t>������ ������ ������ ����������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����
	DefineMission( 155, "������ ��� ���� ", 85, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�� ���� ����? ������!")
	MisResultCondition(NoRecord, 85)
	MisResultCondition(HasMission, 85)
	MisResultCondition(HasItem, 4129, 1)
	MisResultAction(TakeItem, 4129, 1)
	MisResultAction(ClearMission, 85)
	MisResultAction(SetRecord, 85)
	MisResultAction(AddExp, 80, 80)

-----------------------------------α����Ʒ
	DefineMission( 156, "���������� ������� ", 86 )

	MisBeginTalk( "<t>� �������� ������ ���� ������ ������ �������� ��� ��������. � ���� �������� ���.<n><t>������ ��� ������� 3 �������  <r������ ����>. �� �� ������ ������ �� <b������������> � ����� (1184, 3557).")
	MisBeginCondition(HasRecord, 85)
	MisBeginCondition(NoMission, 86)
	MisBeginCondition(NoRecord, 86)
	MisBeginAction(AddMission, 86)
	MisBeginAction(AddTrigger, 861, TE_GETITEM, 1648, 3 )
	MisCancelAction(ClearMission, 86)
	
	MisNeed(MIS_NEED_DESP, "������ 3 ������� <r������ ����> � ������� � ���� � ������ � ����� (883, 3520)")
	MisNeed(MIS_NEED_ITEM, 1648, 3, 10, 3)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>����! ���������! � ������� �����!")
	MisHelpTalk("<t>������ �� �����?! ��������� ������!")
	MisResultCondition(HasMission, 86)
	MisResultCondition(HasItem, 1648, 3 )
	MisResultAction(TakeItem, 1648, 3)
	MisResultAction(ClearMission, 86)
	MisResultAction(SetRecord, 86)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1648 )	
	TriggerAction( 1, AddNextFlag, 86, 10, 3 )
	RegCurTrigger( 861 )

-----------------------------------���Ÿ�������
	DefineMission( 157, "������ ��������� ", 87 )
	
	MisBeginTalk( "<t>� ���� ���� � ���� ���������.<n><t>������� ��� ������ <b���������> ���������. �� ��� ����, � ������� �� ������� ����.<n><t>�� ������ ����� ��� � ������� �� ����������� (901, 3668).")
	MisBeginCondition(HasRecord, 86)
	MisBeginCondition(NoRecord, 87)
	MisBeginCondition(NoMission, 87)
	MisBeginAction(AddMission, 87)
	MisBeginAction(GiveItem, 4130, 1, 4)
	MisCancelAction(ClearMission, 87 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ��������� - �������� ")

	MisHelpTalk("<t>��� ����� ������! �� �����,� ���� ��� ���������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�������
	DefineMission( 158, "������ ��������� ", 87, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��, ������ �� ����! �������!")
	MisResultCondition(NoRecord, 87)
	MisResultCondition(HasMission, 87)
	MisResultCondition(HasItem, 4130, 1)
	MisResultAction(TakeItem, 4130, 1)
	MisResultAction(ClearMission, 87)
	MisResultAction(SetRecord, 87)
	MisResultAction(AddExp, 120, 120)

-----------------------------------�δ�ҩ
	DefineMission( 159, "��������� �� ������� ������� ", 88 )

	MisBeginTalk( "<t>��� ������������� ��������� ��� ����� ��������� <r������ �������>. ��� � ����� (1031, 3556) � ������ 3 <r������ �������> ,������� ������ � <b��������>. � ����� �������, � ���� �� ������ ���� ������� � ����.<n><t>������, ������ �� ������ �� ���� ������� ������� �� ������� �������, ����� ����.")
	MisBeginCondition(HasRecord, 87)
	MisBeginCondition(NoMission, 88)
	MisBeginCondition(NoRecord, 88)
	MisBeginAction(AddMission, 88)
	MisBeginAction(AddTrigger, 881, TE_GETITEM, 1692, 3 )
	MisCancelAction(ClearMission, 88)
	
	MisNeed(MIS_NEED_DESP, "������ 3 <r������ �������> � ������� � ��������� ")
	MisNeed(MIS_NEED_ITEM, 1692, 3, 10, 3)

	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>� ������ ������������� ����. � ������� �� ���� ������ ����� ")
	MisHelpTalk("<t>��� ����� 1 ����������! �� ��������!")
	MisResultCondition(HasMission, 88)
	MisResultCondition(HasItem, 1692, 3 )
	MisResultAction(TakeItem, 1692, 3)
	MisResultAction(ClearMission, 88)
	MisResultAction(SetRecord, 88)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1692 )	
	TriggerAction( 1, AddNextFlag, 88, 10, 3 )
	RegCurTrigger( 881 )

-----------------------------------���Ÿ�����˿
	DefineMission( 160, "������ ��� ����� ", 89 )
	
	MisBeginTalk( "<t>��� ����� ����� ���� ������!<n><t>���������� ������� ��� ������  <b������>, ���������� ��������, ������� ���������� �� ����������� (876, 3572).<n><t>����� ����� ��� ���� ���� ���������� ����������.")
	MisBeginCondition(HasRecord, 88)
	MisBeginCondition(NoRecord, 89)
	MisBeginCondition(NoMission, 89)
	MisBeginAction(AddMission, 89)
	MisBeginAction(GiveItem, 4127, 1, 4)
	MisCancelAction(ClearMission, 89 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ���������� - ������ ")

	MisHelpTalk("<t>����� ��������� � ����� (876, 3572). ���������� �������.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����˿
	DefineMission( 161, "������ ��� ����� ", 89, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>������� ���� �� ������, �� ����� ������� ������� � �������.")
	MisResultCondition(NoRecord, 89)
	MisResultCondition(HasMission, 89)
	MisResultCondition(HasItem, 4127, 1)
	MisResultAction(TakeItem, 4127, 1)
	MisResultAction(ClearMission, 89)
	MisResultAction(SetRecord, 89)
	MisResultAction(AddExp, 200, 200)


---------------------------------���Ÿ�СĪ
	DefineMission( 162, "������ ��� ������ �� ", 90 )
	
	MisBeginTalk( "<t>��� ���� ��� ���� �������.<n><t>������ ������ <b������ ��>, �����������, � ������ ������� �� ��� ������. ��� ��� � ������ �� ����������� (1237, 613).")
	MisBeginCondition(HasRecord, 716)
	MisBeginCondition(NoRecord, 90)
	MisBeginCondition(NoMission, 90)
	MisBeginAction(AddMission, 90)
	MisBeginAction(GiveItem, 4131, 1, 4)
	MisCancelAction(ClearMission, 90 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ����������� - ������ �� ")

	MisHelpTalk("<t>����� �� ��������� � ����� (1237, 613).")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ���³
	DefineMission( 163, "������ ��� ������� ", 91 )
	
	MisBeginTalk( "<t>� �������������� ������ ��� ����, ������� ��� ������ <b�������> �����������, ������� ��������� �� ����������� (1356, 483). �� ����� ������������ � �����.")
	MisBeginCondition(HasRecord, 716)
	MisBeginCondition(NoRecord, 91)
	MisBeginCondition(NoMission, 91)
	MisBeginAction(AddMission, 91)
	MisBeginAction(GiveItem, 4132, 1, 4)
	MisCancelAction(ClearMission, 91  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ����������� - ������� ")

	MisHelpTalk("<t>������ �� ����� ������ �������? �� ��������� � ����� (1356, 483).")
	MisResultCondition(AlwaysFailure )


-----------------------------------���Ÿ�����
	DefineMission( 164, "������ ��� ������ ", 90, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��� ���������, �� ������� ���������� �����.� � ���� �� ����...<n><t>�� �������, ��� ����� �� � ���, ���� ������ ����� ����������? ���������, ������ ����� ������� ����������.")
	MisResultCondition(NoRecord, 90)
	MisResultCondition(HasMission, 90)
	MisResultCondition(HasItem, 4131, 1)
	MisResultAction(TakeItem, 4131, 1)
	MisResultAction(ClearMission, 90)
	MisResultAction(SetRecord, 90)
	MisResultAction(AddExp, 50, 50)

-----------------------------------��Ƥ����
	DefineMission( 165, "������� ����������� ", 92 )

	MisBeginTalk( "<t>������� ����������� ����� ����� ��������. ��� �������� �� ���� ��� �������� ����. ������ ��������� �� ����. ����  6 <b������� ������������>.<n><t>�� ������� ���� � ������� ������!<n><t>� ���� �� ��������� � ���� ����� , ��� ��� ���� ������!")
	MisBeginCondition(HasRecord, 90)
	MisBeginCondition(NoMission, 92)
	MisBeginCondition(NoRecord, 92)
	MisBeginAction(AddMission, 92)
	MisBeginAction(AddTrigger, 921, TE_KILL, 235, 6 )
	MisCancelAction(ClearMission, 92)
	
	MisNeed(MIS_NEED_DESP, "���� 6 <b������� ������������> � ������� � ������ �� ")
	MisNeed(MIS_NEED_KILL, 235, 6, 10, 6)
	
	MisResultTalk("<t>�������� ������. ������ � ���� �������� ������.")
	MisHelpTalk("<t>���? �� ������ ������� ��? ���������� � ���� �������,� ������,��� � ���� ��� ���������!")
	MisResultCondition(HasMission, 92)
	MisResultCondition(HasFlag, 92, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 92)
	MisResultAction(SetRecord, 92)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 235 )	
	TriggerAction( 1, AddNextFlag, 92, 10, 6 )
	RegCurTrigger( 921 )

-----------------------------------���Ÿ���ŷ
	DefineMission( 166, "������ ��� ", 93 )
	
	MisBeginTalk( "<t>��� ����� ���� ������. ������ ��� ������ <b���>, ������� ��������� �� ����������� (1365, 570). �� ����� ��� ������ ����.")
	MisBeginCondition(HasRecord, 92)
	MisBeginCondition(NoRecord, 93)
	MisBeginCondition(NoMission, 93)
	MisBeginAction(AddMission, 93)
	MisBeginAction(GiveItem, 4133, 1, 4)
	MisCancelAction(ClearMission, 93  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ������� - ��� � ������ ")

	MisHelpTalk("<t>��� ��������� � ����� (1365, 570). ��� ������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ���ŷ
	DefineMission( 167, "������ ��� ", 93, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��! ����� �� �������� ������ ���? �����������!")
	MisResultCondition(NoRecord, 93)
	MisResultCondition(HasMission, 93)
	MisResultCondition(HasItem, 4133, 1)
	MisResultAction(TakeItem, 4133, 1)
	MisResultAction(ClearMission, 93)
	MisResultAction(SetRecord, 93)
	MisResultAction(AddExp, 80, 80)

-----------------------------------��ڶ���
	DefineMission( 168, "������ ������� �� ������ ������� ����� ", 94 )

	MisBeginTalk( "<t>��� ������� ����������� � ���, ����� �� ��� ����� � ����� <b�������� ������������> ,��� ������ ������� ���������� �������������� � ���. ��� �� ����������� (1179, 371) � ���� 8 <b������� �����������>.")
	MisBeginCondition(HasRecord, 93)
	MisBeginCondition(NoMission, 94)
	MisBeginCondition(NoRecord, 94)
	MisBeginAction(AddMission, 94)
	MisBeginAction(AddTrigger, 941, TE_KILL, 239, 8 )
	MisCancelAction(ClearMission, 94)

	MisNeed(MIS_NEED_DESP, "���� 8 <b������� �����������> � ������� � ��� � ����� (1365, 570)")
	MisNeed(MIS_NEED_KILL, 239, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>���? ������� ����! �� ��� ����� ���� �����������. � ������� ������� �����.")
	MisHelpTalk("<t>���? �� ����������?")
	MisResultCondition(HasMission, 94)
	MisResultCondition(HasFlag, 94, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 94)
	MisResultAction(SetRecord, 94)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 239 )	
	TriggerAction( 1, AddNextFlag, 94, 10, 8 )
	RegCurTrigger( 941 )

-----------------------------------���Ÿ�����
	DefineMission( 169, "������ ��� ����� ", 95 )
	
	MisBeginTalk( "<t>�!�� ��� ��� ��� �����, ��� ����, ����� ��������� ������ ������� ������, ������� ��������� �� ����������� (1349, 539). � �����, ��� ��� ���� ��� ��� �������." )
	MisBeginCondition(HasRecord, 94)
	MisBeginCondition(NoRecord, 95)
	MisBeginCondition(NoMission, 95)
	MisBeginAction(AddMission, 95)
	MisBeginAction(GiveItem, 4134, 1, 4)
	MisCancelAction(ClearMission, 95  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ������ - ����� ")

	MisHelpTalk("<t>���� �� �� �����? �������!")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�����
	DefineMission( 170, "������ ��� ����� ", 95, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>�,�������! ��� ���� � �� ������� �� ����������!")
	MisResultCondition(NoRecord, 95)
	MisResultCondition(HasMission, 95)
	MisResultCondition(HasItem, 4134, 1)
	MisResultAction(TakeItem, 4134, 1)
	MisResultAction(ClearMission, 95)
	MisResultAction(SetRecord, 95)
	MisResultAction(AddExp, 120, 120)

-----------------------------------����Ǩ��
	DefineMission( 171, "�������� �������� ", 96 )

	MisBeginTalk( "<t>����, � ���� ��� ���� ������� �������! ����� ������ ���������� � ������. �� � ��������� � ������, ��� ����� ��������� �����������, ���������� ������... � ���� ����� �� ���������� � ����� (1164, 305). � ���� 12 <b������> ��� ��������� �������.")
	MisBeginCondition(HasRecord, 95)
	MisBeginCondition(NoMission, 96)
	MisBeginCondition(NoRecord, 96)
	MisBeginAction(AddMission, 96)
	MisBeginAction(AddTrigger, 961, TE_KILL, 238, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "���� 12 <��������� ������> � ������� � ����� � ����� (1349, 539)")
	MisNeed(MIS_NEED_KILL, 238, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>�������! �� ������ ���! � ��� ������ ���� ����� ���� ��� �������! ����.")
	MisHelpTalk("<t>������ �� �� ���� ����� ���� ������? ���������� ���� ����� ��������!")
	MisResultCondition(HasMission, 96)
	MisResultCondition(HasFlag, 96, 21 )
	MisResultAction(ClearMission, 96)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 96)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 96, 10, 12 )
	RegCurTrigger( 961 )


-----------------------------------���Ÿ�����¶��
	DefineMission( 172, "������ ��� ������ ", 97 )
	
	MisBeginTalk( "<t>� ���� ������� ����� ����� ��� � ������. ��� ��� ��� ����� ����� ���� ������.<n><t>���������� ������ ��� ������ <b������>, ���������� �������, ������� ��������� �� ����������� (1315, 507).<n><t>����� ������� �, ��� ���� ���� ���������� ����������.")
	MisBeginCondition(HasRecord, 96)
	MisBeginCondition(NoRecord, 97)
	MisBeginCondition(NoMission, 97)
	MisBeginAction(AddMission, 97)
	MisBeginAction(GiveItem, 4135, 1, 4)
	MisCancelAction(ClearMission, 97  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ���������� - ������ ")

	MisHelpTalk("<t>������ ��������� � ����� (1315, 507). ���������� �������.")
	MisResultCondition(AlwaysFailure )


-----------------------------------���Ÿ�����¶��
	DefineMission( 173, "������ ��� ������ ", 97, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>������� �� ������, �� ������ �������!")
	MisResultCondition(NoRecord, 97)
	MisResultCondition(HasMission, 97)
	MisResultCondition(HasItem, 4135, 1)
	MisResultAction(TakeItem, 4135, 1)
	MisResultAction(ClearMission, 97)
	MisResultAction(SetRecord, 97)
	MisResultAction(AddExp, 200, 200)

-----------------------------------����תְ����
	DefineMission( 174, "����������� �������� ", 59, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("�������! � ������ �� ����� ���������, ���������� ������������ ������� ����. ������ ������� �������, ��� ���� ����� ����� <r���������>.")
	MisResultCondition(NoRecord, 59)
	MisResultCondition(HasMission, 59)
	MisResultCondition(HasItem, 4117, 1)
	MisResultAction(TakeItem, 4117, 1)
	MisResultAction(ClearMission, 59)
	MisResultAction(SetRecord, 59)

-----------------------------------����תְ����
	DefineMission( 175, "����������� �������� ", 98 )

	MisBeginTalk( "<t>������ ����� ���������? ��� ����� ������.<n><t>������ ����� ������ ��������� ������������. ���� ����� ���������� <r����������� ��������> � �������� ���� �������� � ����������� � ��������� ����������.<n><t>����������� � <p������> � ���� 12 <b����� ������>. ����� �� �� ������ �� ����������� (1325, 305).<n><t>���� ������� ��������� ��� ���������, �� ������, ��� ������ ����� ����� ��������� ����� ���������.")
	MisBeginCondition(HasRecord, 59)
	MisBeginCondition(NoMission, 98)
	MisBeginCondition(NoRecord, 98)
	MisBeginAction(AddMission, 98)
	MisBeginAction(AddTrigger, 981, TE_KILL, 240, 12 )
	MisCancelAction(ClearMission, 98)
	

	MisNeed(MIS_NEED_DESP, "���� 12 <b����� ������> � ������� � ��� � ������ � ����� (1365, 570)")
	MisNeed(MIS_NEED_KILL, 240, 12, 10, 12)
	
	MisResultTalk("<t>�� ���� �� ������ ����. �� �������� ���� ������ ����� ���������.")
	MisHelpTalk("<t>��� ���? ��� �������, ���� ���� ������� � � ����!")
	MisResultCondition(HasMission, 98)
	MisResultCondition(HasFlag, 98, 21 )
	MisResultAction(ClearMission, 98)
	MisResultAction(SetRecord, 98)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 240 )	
	TriggerAction( 1, AddNextFlag, 98, 10, 12 )
	RegCurTrigger( 981 )


-----------------------------------����תְ����
	DefineMission( 176, "����������� �������� ", 99 )
	
	MisBeginTalk( "<t>����, ������ ������ ����� ����� ���������. ������ ��� ������ ������ �� (1237, 613) � �� ������ ����, ��� ��������� ��� ���������� ���������.")
	MisBeginCondition(HasRecord, 98)
	MisBeginCondition(NoRecord, 99)
	MisBeginCondition(NoMission, 99)
	MisBeginAction(AddMission, 99)
	MisBeginAction(GiveItem, 4136, 1, 4)
	MisCancelAction(ClearMission, 99  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ����������� - ������ �� ")

	MisHelpTalk("<t>����� �� ��������� � ����� (1237, 613).")
	MisResultCondition(AlwaysFailure )

-----------------------------------����תְ����
	DefineMission( 177, "����������� �������� ", 99, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>���, �� ��� �������� ���� ������ �����. ����������!")
	MisResultCondition(NoRecord, 99)
	MisResultCondition(HasMission, 99)
	MisResultCondition(HasItem, 4136, 1)
	MisResultAction(TakeItem, 4136, 1)
	MisResultAction(ClearMission, 99)
	MisResultAction(SetRecord, 99)
	MisResultAction(AddExp, 100, 100)

-----------------------------------����תְ����
	DefineMission( 178, "����������� �������� ", 150 )

	MisBeginTalk( "<t>����, ����� ���� ������ ����� ���������. �� ������ ������� 3 <b�������> � �������� �� ���. ��� ������� ������ �� <r������� �����������> �� ����������� (1179, 371).")
	MisBeginCondition(HasRecord, 99)
	MisBeginCondition(NoMission, 150)
	MisBeginCondition(NoRecord, 150)
	MisBeginAction(AddMission, 150)
	MisBeginAction(AddTrigger, 1501, TE_GETITEM, 1779, 3 )
	MisCancelAction(ClearMission, 150)

	MisNeed(MIS_NEED_DESP, "������ 3 <b�������> � ������� � ������ �� ")
	MisNeed(MIS_NEED_ITEM, 1779, 3, 10, 3)
	
	MisResultTalk("<t>�� ��� ������! � ������� ������� �����!")
	MisHelpTalk("<t>�� �������? ���� ���� ������,���� ������ ������������� ����� ���������!")
	MisResultCondition(HasMission, 150)
	MisResultCondition(HasItem, 1779, 3 )
	MisResultAction(TakeItem, 1779, 3)
	MisResultAction(ClearMission, 150)
	MisResultAction(SetRecord, 150)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1779 )	
	TriggerAction( 1, AddNextFlag, 150, 10, 3 )
	RegCurTrigger( 1501 )

-----------------------------------����תְ����
	DefineMission( 179, "����������� �������� ", 151 )
	
	MisBeginTalk( "<t>� �����,��� �� ����� ����� ���������. ��� ������ <r����������� ��������> � ������ ��� ���,����� �� ������ ���� ���������.")
	MisBeginCondition(HasRecord, 150)
	MisBeginCondition(NoRecord, 151)
	MisBeginCondition(NoMission, 151)
	MisBeginAction(AddMission, 151)
	MisBeginAction(GiveItem, 3955, 1, 4)
	MisCancelAction(ClearMission, 151 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�������� � ���� � ������ ")

	MisHelpTalk("<t>��� �� �������? �� ���������� ���-��?")
	MisResultCondition(AlwaysFailure )


-----------------------------------����תְ����
	DefineMission( 180, "����������� �������� ", 151, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>����������, ������ �� ���� ���������. ���� ���������, ��� ��� ���� ����� ���������� �������������� ���������.<n><t>(�� ����������� ���� ����� � ���.<n><t>����������� ���� ������ � ������� ����, �������, �������� � ������� � ������� ������ � ������ � ����������� ������)")
	MisResultCondition(NoRecord, 151)
	MisResultCondition(HasMission, 151)
	MisResultCondition(HasItem, 3955, 1)
	MisResultCondition(PfEqual, 0 )
	MisResultAction(TakeItem, 3955, 1)
	MisResultAction(ClearMission, 151)
	MisResultAction(SetRecord, 151)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 2)
	MisResultAction(GiveItem, 3187, 1, 4)
	MisResultAction(GiveItem, 25, 1, 4)
	MisResultBagNeed(2)


-----------------------------------���Ÿ���³
	DefineMission( 181, "������ ��� ������� ", 91, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>������,��� �� �����. �� ������ ������� ������ �������.")
	MisResultCondition(NoRecord, 91)
	MisResultCondition(HasMission, 91)
	MisResultCondition(HasItem, 4132, 1)
	MisResultAction(TakeItem, 4132, 1)
	MisResultAction(ClearMission, 91)
	MisResultAction(SetRecord, 91)
	MisResultAction(AddExp, 50, 50)


-----------------------------------�ռ�����
	DefineMission( 182, "��������� ��������� ", 152 )

	MisBeginTalk( "<t>��� ������ � ������������, �� ������� � �������, ��� � ���� ��������� �� ������� <r�������� ���������>. ������ ���������� �������� ��� 3 <r�������� ���������>?<n><t>������ �� ����� �� <b���������>, ������� ��������� �� ����������� (1465, 402). ��� ����� ������ �������� �� ������ �� ������.<n><t>� ����� ��� ������� ���� ������ �� �����!")
	MisBeginCondition(HasRecord, 91)
	MisBeginCondition(NoMission, 152)
	MisBeginCondition(NoRecord, 152)
	MisBeginAction(AddMission, 152)
	MisBeginAction(AddTrigger, 1521, TE_GETITEM, 1704, 3 )
	MisCancelAction(ClearMission, 152)
	
	MisNeed(MIS_NEED_DESP, "������ 3 <r�������� ���������> � ������� � ������� � ����� (1356, 483)")
	MisNeed(MIS_NEED_ITEM, 1704, 3, 10, 3)
	
	MisResultTalk("<t>���������! ��������� � ������ ������ ���������.<n><t>������� ����! �� ���� �������, � � � ���� ������ � �����.")
	MisHelpTalk("<t>���? �������� ��������? ������� ������ ��� ����? ��� ��������� �������� �� �������� ������, �����.")
	MisResultCondition(HasMission, 152)
	MisResultCondition(HasItem, 1704, 3 )
	MisResultAction(TakeItem, 1704, 3)
	MisResultAction(ClearMission, 152)
	MisResultAction(SetRecord, 152)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1704 )	
	TriggerAction( 1, AddNextFlag, 152, 10, 3 )
	RegCurTrigger( 1521 )

-----------------------------------���Ÿ�Լɪ��
	DefineMission( 183, "������ ��� ���� ", 153 )
	
	MisBeginTalk( "<t>� ����� � �������� � ����� ������. ���������� ������ ��� ������ <b�������>, ������� ��������� �� ����������� (1290, 540). �� ���� ��� ��������� � ���� ������� ��� ������.")
	MisBeginCondition(HasRecord, 152)
	MisBeginCondition(NoRecord, 153)
	MisBeginCondition(NoMission, 153)
	MisBeginAction(AddMission, 153)
	MisBeginAction(GiveItem, 4137, 1, 4)
	MisCancelAction(ClearMission, 153 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ���� � ������ � ����� (1290, 540).")

	MisHelpTalk("<t>���� ��� ����, ������ � ����� �� ���� ������, ������ ���� ����� ������ ����.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ÿ�Լɪ��
	DefineMission( 184, "������ ��� ���� ", 153, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��, �� ������ �� ������? �������!")
	MisResultCondition(NoRecord, 153)
	MisResultCondition(HasMission, 153)
	MisResultCondition(HasItem, 4137, 1)
	MisResultAction(TakeItem, 4137, 1)
	MisResultAction(ClearMission, 153)
	MisResultAction(SetRecord, 153)
	MisResultAction(AddExp, 80, 80)

-----------------------------------����ƿ
	DefineMission( 185, "����� ", 154 )

	MisBeginTalk( "<t>������ �������, ������ � ����� ��������������, � ������� ����� ����� ��������...<n><t>������ ��� ����������! ����������� � ����� (1118, 343) � ����� 2 <r�������> �� <b������� �����������>. ����� �������, �� ���� ������� ������� �� ��������.")
	MisBeginCondition(HasRecord, 153)
	MisBeginCondition(NoMission, 154)
	MisBeginCondition(NoRecord, 154)
	MisBeginAction(AddMission, 154)
	MisBeginAction(AddTrigger, 1541, TE_GETITEM, 1779, 2 )
	MisCancelAction(ClearMission, 154)
	
	MisNeed(MIS_NEED_DESP, "������ 2 <r�������> � �������� � ���� � ������ � ����� (964, 422)")
	MisNeed(MIS_NEED_ITEM, 1779, 2, 10, 2)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>����! �� ������ ��, ��������� ����!")
	MisHelpTalk("<t>��� ����� ���� 2 �������! ������!")
	MisResultCondition(HasMission, 154)
	MisResultCondition(HasItem, 1779, 2 )
	MisResultAction(TakeItem, 1779, 2)
	MisResultAction(ClearMission, 154)
	MisResultAction(SetRecord, 154)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1779 )	
	TriggerAction( 1, AddNextFlag, 154, 10, 2 )
	RegCurTrigger( 1541 )

-----------------------------------���Ÿ�������
	DefineMission( 186, "������ ��� ������� ", 155 )
	
	MisBeginTalk( "<t>���������� ������� ��� ������ <b�������>, ��� ��������� �� ����������� (1360, 519) � ������.")
	MisBeginCondition(HasRecord, 154)
	MisBeginCondition(NoRecord, 155)
	MisBeginCondition(NoMission, 155)
	MisBeginAction(AddMission, 155)
	MisBeginAction(GiveItem, 4138, 1, 4)
	MisCancelAction(ClearMission, 155 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ������� � ������ ")

	MisHelpTalk("<t>���� � ���� ������ ����, �� ���� ��� ��� ����� ��������� �������� �����. ������ � ���� ������� ���� �������� ������.")
	MisResultCondition(AlwaysFailure )
-----------------------------------���Ÿ�������
	DefineMission( 187, "������ ��� ������� ", 155, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>� ������ ������ ��������� �������������� ��� ����. ���� �� �����������, �� ��� ����� ���� ������.")
	MisResultCondition(NoRecord, 155)
	MisResultCondition(HasMission, 155)
	MisResultCondition(HasItem, 4138, 1)
	MisResultAction(TakeItem, 4138, 1)
	MisResultAction(ClearMission, 155)
	MisResultAction(SetRecord, 155)
	MisResultAction(AddExp, 120, 120)

-----------------------------------����
	DefineMission( 188, "����� ", 156 )

	MisBeginTalk( "<t>��� ����� ����� ���� <b������> ��������� � ����� (1164, 305) � <b����� ������> ��������� � ����� (1325, 305) �������  ������ � �������������, ����� �� ��������� �����!<n><t>������ ���������� ����� 1 ��� ���� �����?")
	MisBeginCondition(HasRecord, 155)
	MisBeginCondition(NoMission, 156)
	MisBeginCondition(NoRecord, 156)
	MisBeginAction(AddMission, 156)
	MisBeginAction(AddTrigger, 1561, TE_GETITEM, 1681, 1 )
	MisCancelAction(ClearMission, 156)
	
	MisNeed(MIS_NEED_DESP, "������ 1 <b�����> � ������� � ������� � ������ �� ����������� (1360, 519)")
	MisNeed(MIS_NEED_ITEM, 1681, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>��� ���������! ������ � ���� ������� ��������!")
	MisHelpTalk("<t>�� �� ������ ������ �����? ��������� ����������.")
	MisResultCondition(HasMission, 156)
	MisResultCondition(HasItem, 1681, 1 )
	MisResultAction(TakeItem, 1681, 1)
	MisResultAction(ClearMission, 156)
	MisResultAction(SetRecord, 156)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1681 )	
	TriggerAction( 1, AddNextFlag, 156, 10, 1 )
	RegCurTrigger( 1561 )

-----------------------------------���Ÿ�����¶��
	DefineMission( 189, "������ ��� ������ ", 157 )
	
	MisBeginTalk( "<t>��� ����� ����� ���� ������ � ����� ����� ������ ����.<n><t>���������� ������ ������ <b������>, ���������� �������� � ����� (1315, 507).<n><t>������ ��� ���� ���� ���������� ��������.")
	MisBeginCondition(HasRecord, 156)
	MisBeginCondition(NoRecord, 157)
	MisBeginCondition(NoMission, 157)
	MisBeginAction(AddMission, 157)
	MisBeginAction(GiveItem, 4135, 1, 4)
	MisCancelAction(ClearMission, 157 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ ���������� - ������ � ������ ")

	MisHelpTalk("<t>������ ��������� � ����� (1315, 507). ���������� �������.")
	MisResultCondition(AlwaysFailure )
-----------------------------------���Ÿ�����¶��
	DefineMission( 190, "������ ��� ������ ", 157, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>������� ���� �� ������,� ������ ���������� ����.")
	MisResultCondition(NoRecord, 157)
	MisResultCondition(HasMission, 157)
	MisResultCondition(HasItem, 4135, 1)
	MisResultAction(TakeItem, 4135, 1)
	MisResultAction(ClearMission, 157)
	MisResultAction(SetRecord, 157)
	MisResultAction(AddExp, 200, 200)


-----------------------------------ð����תְ����
	DefineMission( 191, "����������� ������������� ", 61, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("������. �� ����� ����������������� �������, � � ���� ���� ������� ����� ������ ����������. ������ ��� �������, ��� ���� ����� ����� <r��������������>.")
	MisResultCondition(NoRecord, 61)
	MisResultCondition(HasMission, 61)
	MisResultCondition(HasItem, 4119, 1)
	MisResultAction(TakeItem, 4119, 1)
	MisResultAction(ClearMission, 61)
	MisResultAction(SetRecord, 61)

-----------------------------------ð����תְ����
	DefineMission( 192, "����������� ������������� ", 158 )

	MisBeginTalk( "<t>�� �����, ��� ���� ����� ����� ��������������? ������������� - ����� �����, ����� ���� ����. ��� ����, ����� �� �����, ���� ����� ������� ������ ���������. �� ������ ���������� <r���������� ���������>, ��� ����� ����� <�� ��������� �������> � ���� 12 <b�����������> � ����� (1950, 2563). ����� ��������� ��� ���������, � ��� ���� �����.")
	MisBeginCondition(HasRecord, 61)
	MisBeginCondition(NoMission, 158)
	MisBeginCondition(NoRecord, 158)
	MisBeginAction(AddMission, 158)
	MisBeginAction(AddTrigger, 1581, TE_KILL, 237, 12 )
	MisCancelAction(ClearMission, 158)
	
	MisNeed(MIS_NEED_DESP, "���� 12 <b�����������> � ������� � ������ ������� � ����� (2193, 2730)")
	MisNeed(MIS_NEED_KILL, 237, 12, 10, 12)
	
	MisResultTalk("<t>�� ��� ��������� ������!<n><t>������ ����� ����� ��������� ���������, ���� ���� ������!")
	MisHelpTalk("<t>�� �� �������� ����� ����������. ���� �� �� �� ������, � �� ��� ���� ���������� ���������.")
	MisResultCondition(HasMission, 158)
	MisResultCondition(HasFlag, 158, 21 )
	MisResultAction(ClearMission, 158)
	MisResultAction(SetRecord, 158)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 158, 10, 12 )
	RegCurTrigger( 1581 )


-----------------------------------ð����תְ����
	DefineMission( 193, "����������� ������������� ", 159 )
	
	MisBeginTalk( "<t><t>������ ��� � <b�������� �������>, �� ���������� �� ����������� (2277, 2831) � ���� �������, ����� �� ��� ���� ���������� ��������. �� ���� ���� ��������� ���������, ��� ������������ ���������.")
	MisBeginCondition(HasRecord, 158)
	MisBeginCondition(NoRecord, 159)
	MisBeginCondition(NoMission, 159)
	MisBeginAction(AddMission, 159)
	MisBeginAction(GiveItem, 4139, 1, 4)
	MisCancelAction(ClearMission, 159  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������� ������ �������� - ������� ")

	MisHelpTalk("<t>��������! ���� �������� ������ ����-����!!")
	MisResultCondition(AlwaysFailure )
-----------------------------------ð����תְ����
	DefineMission( 194, "����������� ������������� ", 159, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>��, ����� ��������������. � �������, ��� �� ����� � ���������� ���������.")
	MisResultCondition(NoRecord, 159)
	MisResultCondition(HasMission, 159)
	MisResultCondition(HasItem, 4139, 1)
	MisResultAction(TakeItem, 4139, 1)
	MisResultAction(ClearMission, 159)
	MisResultAction(SetRecord, 159)
	MisResultAction(AddExp, 100, 100)

-----------------------------------ð����תְ����
	DefineMission( 195, "����������� ������������� ", 160 )

	MisBeginTalk( "<t>�� ������-������� �� <p����������� ����> ���� �������� ����. �� ������ �������� ��� 2 <b����������� ������> ,������� ����� ����� � ���, � ������� �� ���.")
	MisBeginCondition(HasRecord, 159)
	MisBeginCondition(NoMission, 160)
	MisBeginCondition(NoRecord, 160)
	MisBeginAction(AddMission, 160)
	MisBeginAction(AddTrigger, 1601, TE_GETITEM, 1595, 2 )
	MisCancelAction(ClearMission, 160)

	MisNeed(MIS_NEED_DESP, "������ 2 <b����������� ������> � ������� � ������� � ����� (2277, 2831)")
	MisNeed(MIS_NEED_ITEM, 1595, 2, 10, 2)
	
	MisResultTalk("<t>�������, �� ��� ������!<n><t>����������! ���� ���� ������� � ���������� �����, �� ������������ ����� ���������� � �������������...")
	MisHelpTalk("<t>������ ��,��� � ������,��� �� ������� �� ������� ��������������.")
	MisResultCondition(HasMission, 160)
	MisResultCondition(HasItem, 1595, 2 )
	MisResultAction(TakeItem, 1595, 2)
	MisResultAction(ClearMission, 160)
	MisResultAction(SetRecord, 160)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1595 )	
	TriggerAction( 1, AddNextFlag, 160, 10, 2 )
	RegCurTrigger( 1601 )

-----------------------------------ð����תְ����
	DefineMission( 196, "����������� ������������� ", 161 )
	
	MisBeginTalk( "<t>��� ������ <r������ ���������> � ������� ��� ������ �������, ������� ��������� �� ����������� (2193, 2730). ��� ����� ����� ��������������� ��� ����, ����� ������� ����� ��������������.")
	MisBeginCondition(HasRecord, 160)
	MisBeginCondition(NoRecord, 161)
	MisBeginCondition(NoMission, 161)
	MisBeginAction(AddMission, 161)
	MisBeginAction(GiveItem, 3962, 1, 4)
	MisCancelAction(ClearMission, 161 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "������ ������ ��������� ������ ������� � ������� � ����� (2193, 2730)")

	MisHelpTalk("<t>�������. ��� �� �� ������ ����� ��������������?")
	MisResultCondition(AlwaysFailure )

-----------------------------------ð����תְ����
	DefineMission( 197, "����������� ������������� ", 161, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>����������! ������ �� �������������! ���� ��������� ����� ���������� � ������������� ����������� �� ����!<n><t>(������, ��� � ������ �������, ����� ����� ��������������<n><t>� ����� ���� ������ � ������� �����, �������,������� � �������� � ������� ������� ���� � ������ � ����������� ���������. ������ �� ������!)")
	MisResultCondition(NoRecord, 161)
	MisResultCondition(HasMission, 161)
	MisResultCondition(HasItem, 3962, 1)
	MisResultAction(TakeItem, 3962, 1)
	MisResultAction(ClearMission, 161)
	MisResultAction(SetRecord, 161)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 4)
	MisResultAction(GiveItem, 867, 1, 4)
	MisResultAction(GiveItem, 3227, 1, 4)
	MisResultBagNeed(2)


-----------------------------------����ó��֤����
	DefineMission( 198, "������ ������������ ���������� ", 162 )

	MisBeginTalk( "<t> ���� ������ �������� ������ ������������ ����������, �� ���� ����� �������� ��� 40 ������.<n><t>(�������� ������ ����� �� �������, ���� ������ ��� ������, �� ��� ����� ����� ����� ����� ����� ����,������� �������� � �����������.��� ���� �� ������ ������ ��������� ������������ �������. ����� ����� � ��� ���� ������. ��� � ��� �������,����� ������� �������� � ������ �����������<n><t>����� ������ ������ ��� ������ �� ������������ �����,������� ���. ����� ��� �� ������ � ���������� � �������,�� ������ � 10 ������.)")
	MisBeginCondition(NoMission, 162)
	MisBeginCondition(NoItem, 4605, 1)
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginAction(AddMission, 162)
	MisBeginAction(AddTrigger, 1621, TE_GETITEM, 4543, 40 )
	MisCancelAction(ClearMission, 162)

	MisNeed(MIS_NEED_DESP, "������ �������� �������, ������� ���������� � ����� (799, 3659) �������� 40 ������ ")
	MisNeed(MIS_NEED_ITEM, 4543, 40, 10, 40)
	
	MisResultTalk("<t>������! �� �������� ��� �������. � ������ ���������� ����.")
	MisHelpTalk("<t>������ �� ��� ���� �� �����? ��� �� �� ������ �������� ������������ ����������?")
	MisResultCondition(HasMission, 162)
	MisResultCondition(HasItem, 4543, 40 )
	MisResultAction(TakeItem, 4543, 40 )
	MisResultAction(ClearMission, 162)
	MisResultAction(SetRecord, 162)
	MisResultAction(GiveItem, 4605, 1, 4)
	MisResultAction(SetTradeItemLevel, 1 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4543 )	
	TriggerAction( 1, AddNextFlag, 162, 10, 40 )
	RegCurTrigger( 1621 )

-----------------------------------�м�ó��֤����
	DefineMission( 199, "������� ������������ ���������� ", 163 )

	MisBeginTalk( "<t>���� ������ �������� ������� ������������ ���������� �� ���� ����� �������� ��� 40 ��. ��������������� ����.<n><t>(���� �� ������ ���������� � ������� ���� ������ ������. ����� �����,��� ���� ����� �������� ����. ������ ������ ���� �� ������ ������ � ������ �����������<n><t>����� � ���� ���� ������ ������ ����,��� ����� ����� ������ ������,�� ������ ��������� ������������ �������. ������ ���� ����� � ���������� ,�� ������ � 10��.)<n><t>����� ���� ���� ����� � �������.")
	MisBeginCondition(NoMission, 163)
	MisBeginCondition(HasItem, 4605, 1)
	MisBeginCondition(TradeItemDataCheck, ">", 99 )
	MisBeginCondition(LvCheck, ">", 39)
	MisBeginCondition(TradeItemLevelCheck, "=", 1)
	MisBeginAction(AddMission, 163)
	MisBeginAction(AddTrigger, 1631, TE_GETITEM, 4546, 40 )
	MisCancelAction(ClearMission, 163)

	MisNeed(MIS_NEED_DESP, "������ �������� ������� � ������� � ����� (799, 3659) ������ 40 ������������� ���� ")
	MisNeed(MIS_NEED_ITEM, 4546, 40, 10, 40)
	
	MisResultTalk("<t>���������,������ ��� ����������� ���������� ���!")
	MisHelpTalk("<t>������ �� ���� �� �������? �� ������ �������� ����������� ����������?")
	MisResultCondition(HasMission, 163)
	MisResultCondition(HasItem, 4546, 40 )
	MisResultCondition(HasItem, 4605, 1 )
	MisResultAction(TakeItem, 4546, 40)
	MisResultAction(ClearMission, 163)
	MisResultAction(SetRecord, 163)
	MisResultAction(SetTradeItemLevel, 2 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4546 )	
	TriggerAction( 1, AddNextFlag, 163, 10, 40 )
	RegCurTrigger( 1631 )


-----------------------------------�߼�ó��֤����
	DefineMission( 149, "������� ������������ ���������� ", 164 )

	MisBeginTalk( "<t>� ���� ���� ����������� ���������� ������� ������. ���� ������, ����� � ��� ���� ���, �� ������ ��� ������. ������� ��� 40 ����������, � � ����� ���� ��� � ���������.")
	MisBeginCondition(NoMission, 164)
	MisBeginCondition(HasItem, 4605, 1)
	MisBeginCondition(TradeItemDataCheck, ">", 399 )
	MisBeginCondition(LvCheck, ">", 59)
	MisBeginCondition(TradeItemLevelCheck, "=", 2)
	MisBeginAction(AddMission, 164)
	MisBeginAction(AddTrigger, 1641, TE_GETITEM, 4544, 40 )
	MisCancelAction(ClearMission, 164)

	MisNeed(MIS_NEED_DESP, "������ ������ 40 ���������� �������� ������� � ������� � ����� (799, 3659)")
	MisNeed(MIS_NEED_ITEM, 4544, 40, 10, 40)
	
	MisResultTalk("<t>�������! ������ ����������� ���������� ������� ������ ���!")
	MisHelpTalk("<t>������ �� ���� �� �����? �� ������ �������� ����������� ���������� ������� ������?")
	MisResultCondition(HasMission, 164)
	MisResultCondition(HasItem, 4544, 40 )
	MisResultCondition(HasItem, 4605, 1 )
	MisResultAction(TakeItem, 4544, 40)
	MisResultAction(ClearMission, 164)
	MisResultAction(SetRecord, 164)
	MisResultAction(SetTradeItemLevel, 3 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4544 )
	TriggerAction( 1, AddNextFlag, 164, 10, 40 )
	RegCurTrigger( 1641 )

end
RobinMission039()
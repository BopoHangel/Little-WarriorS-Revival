-------------------------------------------------------------------
--									--
--									--
--NPCScript03.lua Created by sky74					--
--									--
--									--
--------------------------------------------------------------------------
print( "����㧪� NPCScript03.lua")

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


----------------------------------------------------------
--							--
--							--
--		������[����Ա�����带]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk10 ()
	
	
	Talk( 1, "������: ������! � �������� �����. ��� ���� ������?  ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, TradeBerthList, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "������ � ��������� ������ �������� ��������  ",JumpPage, 3)
	
	Talk( 2, "������: � ��� ��� ������� �������� � ����� �������. � �� ���� ���������! ")
	
	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������.  ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)
	

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")

	InitGoods(1)
	SaleGoodsData(	0	,	4573	,	900	,	279	,	62	)
	SaleGoodsData(	0	,	4574	,	800	,	342	,	76	)
	SaleGoodsData(	1	,	4575	,	700	,	391	,	87	)
	SaleGoodsData(	1	,	4576	,	480	,	432	,	96	)
	SaleGoodsData(	2	,	4577	,	300	,	495	,	110	)
	SaleGoodsData(	2	,	4578	,	240	,	522	,	116	)
	SaleGoodsData(	3	,	4579	,	60	,	589	,	131	)
	SaleGoodsData(	3	,	4580	,	40	,	648	,	144	)

	BuyGoodsData(0,	4581	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4585	,	-1	,	846	,	188	)
	BuyGoodsData(0,	4587	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4593	,	-1	,	1000	,	223	)
	BuyGoodsData(0,	4595	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4598	,	-1	,	878	,	195	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4552	,	-1	,	642	,	143	)
	BuyGoodsData(0,	4553	,	-1	,	789	,	175	)
	BuyGoodsData(0,	4554	,	-1	,	934	,	207	)
	BuyGoodsData(0,	4556	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4557	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4560	,	-1	,	1056	,	235	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	785	,	175	)
	BuyGoodsData(0,	4569	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	500	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����Ա�����带



----------------------------------------------------------
--							--
--							--
--		������[����Ա��ɣ��]			--
--							--
--		103877,127848				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk27 ()
	
	
	Talk( 1, "�������: ������! � ������� ��� �� ��������! ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, TradeBerthList, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "������ � ��������� ������ �������� �������� ",JumpPage, 3)
	
	Talk( 2, "�������: � ��� ��� ������� � ����� ����������! ")	
	
	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������. ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")
	
	
	
	InitGoods( 2)
	SaleGoodsData(	1	,	4597	,	480	,	436	,	97	)
	SaleGoodsData(	2	,	4598	,	300	,	472	,	105	)
	SaleGoodsData(	2	,	4599	,	240	,	508	,	113	)
	SaleGoodsData(	3	,	4600	,	60	,	571	,	127	)
	SaleGoodsData(	3	,	4601	,	40	,	643	,	143	)
	
	BuyGoodsData(0,	4573	,	-1	,	554	,	123	)
	BuyGoodsData(0,	4574	,	-1	,	711	,	158	)
	BuyGoodsData(0,	4576	,	-1	,	872	,	193	)
	BuyGoodsData(0,	4581	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4587	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4591	,	-1	,	880	,	195	)
	BuyGoodsData(0,	4593	,	-1	,	1029	,	229	)
	BuyGoodsData(0,	4595	,	-1	,	976	,	651	)
	BuyGoodsData(0,	4553	,	-1	,	826	,	183	)
	BuyGoodsData(0,	4555	,	-1	,	793	,	177	)
	BuyGoodsData(0,	4556	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4557	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4559	,	-1	,	920	,	205	)
	BuyGoodsData(0,	4560	,	-1	,	1039	,	231	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	831	,	185	)
	BuyGoodsData(0,	4569	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	450	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)
	BuyGoodsData(0,	3913	,	-1	,	1248	,	832 	)
	BuyGoodsData(0,	3912	,	-1	,	1395	,	930 	)
	BuyGoodsData(0,	3914	,	-1	,	1614	,	1077	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission	(1021)
	AddNpcMission	(1077)
	AddNpcMission	(1133)
	AddNpcMission	(1184)

end 

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[������������]			--
--							--
--		90391,366735				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk60 ()
	
	Talk( 1, "��������: �������� �� ��������� ������� � ���� ������! ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "���������� ������������ ���������� ��������. ������ ������ ��������� �������. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, BoatLevelBerthList, 3 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "��������: ��� ����� ������� ����� �������? ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 3 )
	Text( 2, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 3 )
	Text( 2, "��������� �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 3 )
	Text( 2, "��������� ����-��� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 3 )
	Text( 2, "��������� �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerAction( 1, CreateBoat, 14, 3 )
	Text( 2, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerAction( 1, CreateBoat, 15, 3 )
	Text( 2, "��������� ������ ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "��������: ����� �������� ����� �� ������ ��������� ��� � ��� ������. ����� ���� � ��� ������ ���� ����������� ���������� ����� �������. ���� ����� ���������� ������ ������� ��������. ")

	AddNpcMission	(1116)
	AddNpcMission	(158)
	AddNpcMission	(159)
	AddNpcMission	(160)
	
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������ˡ�������

------------------------------------------------------------
-- ������-----����������������
------------------------------------------------------------

function r_talk150()

	Talk( 1, "�����: ������! � ������� ��������. ��� ���� ������? ")

	AddNpcMission 	(437)
	AddNpcMission 	(439)
	AddNpcMission 	(441)


end

------------------------------------------------------------
-- ������-----������˹�Ϳ�
------------------------------------------------------------

------------------------------------------------------------
-- ������-----����ָ�ӡ�ѩ��
------------------------------------------------------------

function r_talk152()

	Talk( 1, "�����: ������! � �������� �����. ��� �������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 1 )
	--TriggerAction( 1, RemoveYS )
	TriggerAction( 1, LuanchBerthList, 1, 2260,2829, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, RepairBerthList, 1 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, SupplyBerthList, 1 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 1 )
	TriggerAction( 1, SalvageBerthList, 1 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")

	AddNpcMission ( 289 )
	AddNpcMission ( 290 )


end

------------------------------------------------------------
-- ɳᰳ�-----����ָ�ӡ����
------------------------------------------------------------

function r_talk153()

	Talk( 1, "����: ������! � �������� �����. ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 832, 3698, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")



end

------------------------------------------------------------
--���Ǳ�-----����������
------------------------------------------------------------
function r_talk155 ()
		
	Talk( 1, "������: ������! � ������� ����� �� ��������� ��������. ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "���������� ������������ ���������� ��������. ������ ������ ��������� �������. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, BoatLevelBerthList, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "������: ����� ������� ������� ���������? ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 4 )
	Text( 2, "��������� ����������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 4 )
	Text( 2, "��������� �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 4 )
	Text( 2, "��������� ������� ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 4 )
	Text( 2, "��������� �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerAction( 1, CreateBoat, 16, 4 )
	Text( 2, "��������� ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "������: ����� �������� ����� �� ������ ��������� ��� � ��� ������. ����� ���� � ��� ������ ���� ����������� ���������� ����� �������. ���� ����� ���������� ������ ������� ��������. ")
		
end 

------------------------------------------------------------
-- ���Ǳ�-----����ָ�ӡ�ϯ��
------------------------------------------------------------

function r_talk154()

	Talk( 1, "������: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 4 )
	TriggerAction( 1, LuanchBerthList, 4, 1196,673, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, RepairBerthList, 4 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, SupplyBerthList, 4 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 4 )
	TriggerAction( 1, SalvageBerthList, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")

	AddNpcMission ( 294 )
	AddNpcMission ( 295 )

end


------------------------------------------------------------
-- ���絺-----����ָ�ӡ�·��
------------------------------------------------------------

function r_talk178()

	Talk( 1, "�����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 5 )
	TriggerAction( 1, LuanchBerthList, 5, 3240, 3314, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, RepairBerthList, 5 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, SupplyBerthList, 5 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 5 )
	TriggerAction( 1, SalvageBerthList, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")
	
end

------------------------------------------------------------
-- �����-----����ָ�ӡ�ŵ���޵�
------------------------------------------------------------

function r_talk179()

	Talk( 1, "�����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 6 )
	TriggerAction( 1, LuanchBerthList, 6, 2301, 1144, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, RepairBerthList, 6 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, SupplyBerthList, 6 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 6 )
	TriggerAction( 1, SalvageBerthList, 6 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")

end

------------------------------------------------------------
-- ѩ����-----����ָ�ӡ�³��³��
------------------------------------------------------------

function r_talk180()

	Talk( 1, "����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 7 )
	TriggerAction( 1, LuanchBerthList, 7, 3628, 770, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, RepairBerthList, 7 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, SupplyBerthList, 7 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 7 )
	TriggerAction( 1, SalvageBerthList, 7 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")

end

------------------------------------------------------------
-- ��������վ-----����ָ�ӡ�������
------------------------------------------------------------

function r_talk181()

	Talk( 1, "�����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")


	AddNpcMission	(763)
	AddNpcMission(	1742	)
	AddNpcMission (	1938	)
	AddNpcMission (	1953	)
----------------����˹---����ָ�ӡ�������--03
	AddNpcMission	(5511)
	AddNpcMission	(5512)
	

end

------------------------------------------------------------
-- ��������վ-----����ָ�ӡ���Ү��
------------------------------------------------------------

function r_talk182()

	Talk( 1, "������: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")

	AddNpcMission	(379)
	AddNpcMission	(380)
----------------����˹---����ָ�ӡ���Ү��--03
	AddNpcMission (5533 )
	AddNpcMission (5534 )
end

------------------------------------------------------------
-- ��������վ-----����ָ�ӡ�������
------------------------------------------------------------

function r_talk183()

	Talk( 1, "�������: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "�������� ���� ��� ", JumpPage, 6 ) 
	
	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 50 )
	TriggerAction( 1, TakeItem, 3116, 50 )
	TriggerAction( 1, GiveItem, 3337, 1, 4 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "�������: ����� �������� ���� ��� ���������� 50 ���������� �������. ")
	Text( 6, "� ���� ���� ���������� ������ ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 7, "�������: � ��� ��� ����� ������������! ")


	AddNpcMission(	1740	)
	AddNpcMission (	1936	)
	AddNpcMission (	1951	)
	AddNpcMission (	381	)
	AddNpcMission (	382	)
----------------����˹---����ָ�ӡ�������--03
	AddNpcMission (5531 )
	AddNpcMission (5532 )
	
end

------------------------------------------------------------
-- ����ز���վ-----����ָ�ӡ����ڶ�
------------------------------------------------------------

function r_talk184()

	Talk( 1, "�������: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")


	AddNpcMission(	1739	)
	AddNpcMission (	1935	)
	AddNpcMission (	1950	)
	AddNpcMission (	383	)
	AddNpcMission (	384	)
	AddNpcMission (	385	)

	----------------����˹---����ָ�ӡ����ڶ�--03
	AddNpcMission (5529 )
	AddNpcMission (5530 )



end

------------------------------------------------------------
-- ���絺-----����Ա��������
------------------------------------------------------------

function r_talk185()

	Talk( 1, "������: ������! � ������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 5 )
	TriggerAction( 1, TradeBerthList, 5 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "������ � ��������� ������ �������� �������� ",JumpPage, 3)	

	Talk( 2, "������: ��������, �� � ��� ��� ������� � ������� �����! ")	

	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������. ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")

	InitGoods(5)
	SaleGoodsData(	0	,	4552	,	800	,	315	,	70	)
	SaleGoodsData(	1	,	4553	,	700	,	405	,	90	)
	SaleGoodsData(	1	,	4554	,	480	,	477	,	106	)

	BuyGoodsData(0,	4574	,	-1	,	697	,	155	)
	BuyGoodsData(0,	4578	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4580	,	-1	,	972	,	648	)
	BuyGoodsData(0,	4582	,	-1	,	664	,	147	)
	BuyGoodsData(0,	4584	,	-1	,	818	,	181	)
	BuyGoodsData(0,	4586	,	-1	,	895	,	199	)
	BuyGoodsData(0,	4588	,	-1	,	969	,	646	)
	BuyGoodsData(0,	4590	,	-1	,	725	,	161	)
	BuyGoodsData(0,	4592	,	-1	,	1017	,	226	)
	BuyGoodsData(0,	4594	,	-1	,	1071	,	238	)
	BuyGoodsData(0,	4598	,	-1	,	888	,	197	)
	BuyGoodsData(0,	4599	,	-1	,	955	,	213	)
	BuyGoodsData(0,	4601	,	-1	,	991	,	661	)
	BuyGoodsData(0,	4557	,	-1	,	981	,	218	)
	BuyGoodsData(0,	4560	,	-1	,	1124	,	249	)
	BuyGoodsData(0,	4563	,	-1	,	976	,	217	)
	BuyGoodsData(0,	4566	,	-1	,	763	,	169	)
	BuyGoodsData(0,	4569	,	-1	,	981	,	218	)
	BuyGoodsData(0,	4572	,	-1	,	950	,	211	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



	AddNpcMission	(760)
		
end

------------------------------------------------------------
-- �����-----����Ա����ɪ��
------------------------------------------------------------

function r_talk186()

	Talk( 1, "�������: ������! � ������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 6 )
	TriggerAction( 1, TradeBerthList, 6 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "������ � ��������� ������ �������� �������� ",JumpPage, 3)

	Talk( 2, "�������: ��������, �� � ��� ��� ������� � ������� �����! ")
	
	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������. ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")

	InitGoods(6)
	SaleGoodsData(	1	,	4555	,	480	,	405	,	90	)
	SaleGoodsData(	2	,	4556	,	300	,	468	,	104	)
	SaleGoodsData(	2	,	4557	,	240	,	522	,	116	)

	BuyGoodsData(0,	4573	,	-1	,	554	,	123	)
	BuyGoodsData(0,	4574	,	-1	,	711	,	158	)
	BuyGoodsData(0,	4575	,	-1	,	780	,	173	)
	BuyGoodsData(0,	4585	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4586	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4590	,	-1	,	699	,	155	)
	BuyGoodsData(0,	4592	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4594	,	-1	,	997	,	221	)
	BuyGoodsData(0,	4596	,	-1	,	1027	,	685	)
	BuyGoodsData(0,	4597	,	-1	,	855	,	190	)
	BuyGoodsData(0,	4600	,	-1	,	857	,	571	)
	BuyGoodsData(0,	4554	,	-1	,	991	,	221	)
	BuyGoodsData(0,	4558	,	-1	,	828	,	184	)
	BuyGoodsData(0,	4559	,	-1	,	910	,	203	)
	BuyGoodsData(0,	4562	,	-1	,	819	,	183	)
	BuyGoodsData(0,	4563	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4566	,	-1	,	831	,	185	)
	BuyGoodsData(0,	4569	,	-1	,	1126	,	251	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
		
	AddNpcMission	(761)
end

------------------------------------------------------------
-- ѩ����-----����Ա���ʾ�������
------------------------------------------------------------

function r_talk187()

	Talk( 1, "������: ������! � ������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 7 )
	TriggerAction( 1, TradeBerthList, 7 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "������ � ��������� ������ �������� �������� ",JumpPage, 3)

	Talk( 2, "������: ��������, �� � ��� ��� ������� � ������� �����! ")	

	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������. ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")


	InitGoods(7)
	SaleGoodsData(	2	,	4558	,	300	,	450	,	100	)
	SaleGoodsData(	2	,	4559	,	240	,	495	,	110	)
	SaleGoodsData(	3	,	4560	,	60	,	571	,	127	)

	BuyGoodsData(0,	4576	,	-1	,	898	,	199	)
	BuyGoodsData(0,	4577	,	-1	,	930	,	207	)
	BuyGoodsData(0,	4585	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4587	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4589	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4591	,	-1	,	844	,	187	)
	BuyGoodsData(0,	4593	,	-1	,	972	,	216	)
	BuyGoodsData(0,	4595	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4599	,	-1	,	945	,	210	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4554	,	-1	,	1020	,	227	)
	BuyGoodsData(0,	4555	,	-1	,	793	,	177	)
	BuyGoodsData(0,	4556	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4557	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4561	,	-1	,	808	,	179	)
	BuyGoodsData(0,	4566	,	-1	,	876	,	195	)
	BuyGoodsData(0,	4569	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)



	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


	AddNpcMission	(762)	
end

------------------------------------------------------------
-- ��ѩ��-----����ָ�ӡ�����
------------------------------------------------------------

function r_talk188()

	Talk( 1, "�����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 8 )
	TriggerAction( 1, LuanchBerthList, 8, 2351, 767, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, RepairBerthList, 8 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, SupplyBerthList, 8 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 8 )
	TriggerAction( 1, SalvageBerthList, 8 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")
	
end

------------------------------------------------------------
-- ��ɳ��-----����ָ�ӡ�����
------------------------------------------------------------

function r_talk189()

	Talk( 1, "�����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 9 )
	TriggerAction( 1, LuanchBerthList, 9, 1769, 3788, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, RepairBerthList, 9 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, SupplyBerthList, 9 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 9 )
	TriggerAction( 1, SalvageBerthList, 9 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")
	
end

------------------------------------------------------------
-- �氮��-----����ָ�ӡ��ĵ���
------------------------------------------------------------
function r_talk190()

	Talk( 1, "����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 10 )
	TriggerAction( 1, LuanchBerthList, 10, 2527, 2358, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, RepairBerthList, 10 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, SupplyBerthList, 10 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 10 )
	TriggerAction( 1, SalvageBerthList, 10 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")
end

------------------------------------------------------------
-- �ո۲���վ-----����ָ�ӡ�³��
------------------------------------------------------------
function r_talk191()

	Talk( 1, "������: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")
	 -------------����˹--�ո۲���վ,����ָ�ӡ�³��(464,468)--03
	AddNpcMission (5527 )
	AddNpcMission (5528 )


end

------------------------------------------------------------
-- �����ﲹ��վ-----����ָ�ӡ���Ŧ
------------------------------------------------------------
function r_talk192()

	Talk( 1, "����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")

	AddNpcMission ( 304 )
	AddNpcMission ( 305 )
	AddNpcMission(	1743	)
	AddNpcMission (	1939	)
	AddNpcMission (	1954	)
	AddNpcMission (	386	)
	AddNpcMission (	387	)

	----------------����˹---����ָ�ӡ���Ŧ--03
	AddNpcMission (5525 )
	AddNpcMission (5526 )
end


------------------------------------------------------------
-- ���Ų���վ-----����ָ�ӡ�������
------------------------------------------------------------
function r_talk193()

	Talk( 1, "������: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")

	AddNpcMission(	1441	)
	AddNpcMission (	1931	)

	----------------����˹---����ָ�ӡ�������--03
	AddNpcMission (5523 )
	AddNpcMission (5524 )


end

------------------------------------------------------------
-- ����������վ-----����ָ�ӡ��ذ����
------------------------------------------------------------
function r_talk194()

	Talk( 1, "����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")

end

------------------------------------------------------------
-- ���¶�����վ-----����ָ�ӡ��Ͱ�
------------------------------------------------------------
function r_talk195()

	Talk( 1, "�����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")

	AddNpcMission ( 291 )
	AddNpcMission ( 292 )
	AddNpcMission ( 293 )
	AddNpcMission(	1443	)
	AddNpcMission (	1932	)

	


end

------------------------------------------------------------
-- С�ϲ���վ-----����ָ�ӡ��ϵ���
------------------------------------------------------------
function r_talk196()

	Talk( 1, "�����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")
	----------------����˹---����ָ�ӡ��ϵ���--03
	AddNpcMission (5515 )
	AddNpcMission (5516 )
end

------------------------------------------------------------
-- Ф�в���վ-----����ָ�ӡ�����˹
------------------------------------------------------------
function r_talk197()

	Talk( 1, "������: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")

	----------------1.7
	AddNpcMission (5133 )
	AddNpcMission (5134 )
	AddNpcMission (5135 )

	----------------����˹---����ָ�ӡ�����˹--03
	AddNpcMission (5513 )
	AddNpcMission (5514 )
end

------------------------------------------------------------
-- ��Ƥ�Ų���վ-----����ָ�ӡ�����
------------------------------------------------------------
function r_talk198()

	Talk( 1, "���: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")
	----------------����˹---����ָ�ӡ�����--03
	AddNpcMission (5517 )
	AddNpcMission (5518 )
end

------------------------------------------------------------
-- ��ѩ��-----����Ա��������
------------------------------------------------------------

function r_talk199()

	Talk( 1, "�����: ������! � ������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8 )
	TriggerAction( 1, TradeBerthList, 8 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "������ � ��������� ������ �������� �������� ",JumpPage, 3)

	Talk( 2, "�����: ��������, �� � ��� ��� ������� � ������� �����! ")	

	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������. ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")

	InitGoods(8)
	SaleGoodsData(	1	,	4561	,	480	,	400	,	89	)
	SaleGoodsData(	2	,	4562	,	300	,	436	,	97	)
	SaleGoodsData(	2	,	4563	,	240	,	468	,	104	)

	BuyGoodsData(0,	4578	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4580	,	-1	,	1056	,	705	)
	BuyGoodsData(0,	4586	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4588	,	-1	,	1042	,	695	)
	BuyGoodsData(0,	4590	,	-1	,	673	,	149	)
	BuyGoodsData(0,	4592	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4594	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4596	,	-1	,	955	,	637	)
	BuyGoodsData(0,	4598	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4599	,	-1	,	988	,	219	)
	BuyGoodsData(0,	4601	,	-1	,	1049	,	699	)
	BuyGoodsData(0,	4554	,	-1	,	1077	,	239	)
	BuyGoodsData(0,	4556	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4558	,	-1	,	837	,	186	)
	BuyGoodsData(0,	4559	,	-1	,	920	,	205	)
	BuyGoodsData(0,	4560	,	-1	,	1039	,	231	)
	BuyGoodsData(0,	4566	,	-1	,	854	,	189	)
	BuyGoodsData(0,	4569	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


	
end

------------------------------------------------------------
-- ��ɳ��-----����Ա��������˹
------------------------------------------------------------

function r_talk200()

	Talk( 1, "�����: ������! � ������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9 )
	TriggerAction( 1, TradeBerthList, 9 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "������ � ��������� ������ �������� �������� ",JumpPage, 3)

	Talk( 2, "�����: ��������, �� � ��� ��� ������� � ������� �����! ")	
	
	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������. ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")

	InitGoods(9)
	SaleGoodsData(	0	,	4564	,	800	,	283	,	63	)
	SaleGoodsData(	1	,	4565	,	560	,	342	,	76	)
	SaleGoodsData(	1	,	4566	,	360	,	378	,	84	)

	BuyGoodsData(0,	4574	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4575	,	-1	,	798	,	177	)
	BuyGoodsData(0,	4576	,	-1	,	898	,	199	)
	BuyGoodsData(0,	4581	,	-1	,	531	,	119	)
	BuyGoodsData(0,	4582	,	-1	,	651	,	145	)
	BuyGoodsData(0,	4590	,	-1	,	699	,	155	)
	BuyGoodsData(0,	4592	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4596	,	-1	,	1027	,	685	)
	BuyGoodsData(0,	4598	,	-1	,	982	,	219	)
	BuyGoodsData(0,	4601	,	-1	,	1105	,	737	)
	BuyGoodsData(0,	4553	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4554	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4557	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4560	,	-1	,	1268	,	281	)
	BuyGoodsData(0,	4563	,	-1	,	976	,	217	)
	BuyGoodsData(0,	4567	,	-1	,	705	,	157	)
	BuyGoodsData(0,	4568	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4569	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)




	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end

------------------------------------------------------------
-- �氮��-----����Ա���ȿ�
------------------------------------------------------------

function r_talk201()

	Talk( 1, "���: ������! � ������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 10 )
	TriggerAction( 1, TradeBerthList, 10 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "������ � ��������� ������ �������� �������� ",JumpPage, 3)
	
	Talk( 2, "���: ��������, �� � ��� ��� ������� � ������� �����! ")	

	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������. ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")

	InitGoods(10)
	SaleGoodsData(	1	,	4567	,	600	,	360	,	80	)
	SaleGoodsData(	2	,	4568	,	400	,	468	,	104	)
	SaleGoodsData(	2	,	4569	,	240	,	522	,	116	)

	BuyGoodsData(0,	4576	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4577	,	-1	,	999	,	223	)
	BuyGoodsData(0,	4578	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4582	,	-1	,	664	,	147	)
	BuyGoodsData(0,	4584	,	-1	,	818	,	181	)
	BuyGoodsData(0,	4589	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4593	,	-1	,	904	,	201	)
	BuyGoodsData(0,	4595	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4597	,	-1	,	986	,	219	)
	BuyGoodsData(0,	4599	,	-1	,	1061	,	235	)
	BuyGoodsData(0,	4600	,	-1	,	1017	,	678	)
	BuyGoodsData(0,	4554	,	-1	,	991	,	221	)
	BuyGoodsData(0,	4557	,	-1	,	1126	,	251	)
	BuyGoodsData(0,	4560	,	-1	,	1220	,	271	)
	BuyGoodsData(0,	4563	,	-1	,	943	,	209	)
	BuyGoodsData(0,	4564	,	-1	,	577	,	129	)
	BuyGoodsData(0,	4565	,	-1	,	666	,	149	)
	BuyGoodsData(0,	4570	,	-1	,	550	,	123	)
	BuyGoodsData(0,	4571	,	-1	,	842	,	187	)





	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


end

------------------------------------------------------------
-- ���˵�-----����ָ�ӡ�¬��
------------------------------------------------------------
function r_talk202()

	Talk( 1, "����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 11 )
	TriggerAction( 1, LuanchBerthList, 11, 1642, 2005, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, RepairBerthList, 11 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, SupplyBerthList, 11 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 11 )
	TriggerAction( 1, SalvageBerthList, 11 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")
end

------------------------------------------------------------
-- �����ղ���վ-----����ָ�ӡ��Ƕ�����
------------------------------------------------------------
function r_talk203()

	Talk( 1, "�������: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")

	AddNpcMission(	1741	)
	AddNpcMission (	1937	)
	AddNpcMission (	1952	)
	------------------eleven
	AddNpcMission (	5063 )
	AddNpcMission (	5071 )
--------------------1.7
	AddNpcMission ( 5075	)
	AddNpcMission(	5091 )
	AddNpcMission (5105 )
	AddNpcMission (5106 )
	AddNpcMission (5107 )
	AddNpcMission (5108 )
	AddNpcMission (5115 )
	----------------����˹---����ָ�ӡ��Ƕ�����--03
	AddNpcMission (5521 )
	AddNpcMission (5522 )

	AddNpcMission	(6260)
	AddNpcMission	(6261)

end

------------------------------------------------------------
-- ����������վ-----����ָ�ӡ��µ�
------------------------------------------------------------
function r_talk204()

	Talk( 1, "���: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")
	----------------����˹---����ָ�ӡ��µ�--03
	AddNpcMission (5519 )
	AddNpcMission (5520 )
end

------------------------------------------------------------
-- ˼˼������վ-----����ָ�ӡ�������
------------------------------------------------------------
function r_talk205()

	Talk( 1, "�����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "��������, �� ������ ����� 1000 ������! ")
	Talk( 5, "��������, �� �������� ����� 200 ������!")
end

------------------------------------------------------------
-- ���˵�-----����Ա��������˹
------------------------------------------------------------

function r_talk206()

	Talk( 1, "����: ������! � ������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 11 )
	TriggerAction( 1, TradeBerthList, 11 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "������ � ��������� ������ �������� �������� ",JumpPage, 3)

	Talk( 2, "����: ��������, �� � ��� ��� ������� � ������� �����! ")	

	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������. ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")

	InitGoods(11)
	SaleGoodsData(	1	,	4570	,	560	,	270	,	60	)
	SaleGoodsData(	1	,	4571	,	360	,	405	,	90	)
	SaleGoodsData(	2	,	4572	,	200	,	432	,	96	)

	BuyGoodsData(0,	4577	,	-1	,	1059	,	235	)
	BuyGoodsData(0,	4578	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4579	,	-1	,	1049	,	699	)
	BuyGoodsData(0,	4583	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4584	,	-1	,	866	,	193	)
	BuyGoodsData(0,	4589	,	-1	,	537	,	119	)
	BuyGoodsData(0,	4591	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4592	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4597	,	-1	,	986	,	219	)
	BuyGoodsData(0,	4599	,	-1	,	1061	,	235	)
	BuyGoodsData(0,	4600	,	-1	,	1017	,	678	)
	BuyGoodsData(0,	4554	,	-1	,	1106	,	245	)
	BuyGoodsData(0,	4557	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4560	,	-1	,	1220	,	271	)
	BuyGoodsData(0,	4562	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	808	,	179	)
	BuyGoodsData(0,	4568	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4569	,	-1	,	981	,	218	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()	


	

end

------------------------------------------------------------
-- ����������-----����ָ�ӡ���ɷ���ξ
------------------------------------------------------------
function r_talk207()

	Talk( 1, "��. ����: ������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 2 )
	TriggerAction( 1, LuanchBerthList, 2, 1064, 1324, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, RepairBerthList, 2 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, SupplyBerthList, 2 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 2 )
	TriggerAction( 1, SalvageBerthList, 2 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")
end

------------------------------------------------------------
-- ɳ��³�-----����Ա�������
------------------------------------------------------------

function r_talk208()

	Talk( 1, "�����: ������! � ������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "������ � ��������� ������ �������� �������� ",JumpPage, 3)

	Talk( 2, "�����: �������� �� � ��� ��� ������� � ������� �����! ")

	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������. ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")

	InitGoods(3)
	SaleGoodsData(	0	,	4581	,	900	,	270	,	60	)
	SaleGoodsData(	0	,	4582	,	800	,	319	,	71	)
	SaleGoodsData(	1	,	4583	,	700	,	355	,	79	)
	SaleGoodsData(	1	,	4584	,	480	,	405	,	90	)
	SaleGoodsData(	2	,	4585	,	300	,	450	,	100	)
	SaleGoodsData(	2	,	4586	,	240	,	481	,	107	)
	SaleGoodsData(	3	,	4587	,	60	,	549	,	122	)
	SaleGoodsData(	3	,	4588	,	40	,	639	,	142	)

	BuyGoodsData(0,	4573	,	-1	,	560	,	125	)
	BuyGoodsData(0,	4575	,	-1	,	798	,	177	)
	BuyGoodsData(0,	4577	,	-1	,	930	,	207	)
	BuyGoodsData(0,	4589	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4591	,	-1	,	844	,	187	)
	BuyGoodsData(0,	4593	,	-1	,	972	,	216	)
	BuyGoodsData(0,	4595	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4598	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4599	,	-1	,	988	,	219	)
	BuyGoodsData(0,	4552	,	-1	,	655	,	145	)
	BuyGoodsData(0,	4553	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4557	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4560	,	-1	,	1172	,	261	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4564	,	-1	,	577	,	129	)
	BuyGoodsData(0,	4566	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4568	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4569	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)
	BuyGoodsData(0,	4547	,	-1	,	200	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	360	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission(	104	)
	AddNpcMission 	(198)
	AddNpcMission 	(199)
	AddNpcMission 	(149)
	AddNpcMission(	105	)
	AddNpcMission(	106	)

end

------------------------------------------------------------
-- ���Ǳ�-----����Ա����³ŵ
------------------------------------------------------------

function r_talk209()

	Talk( 1, "�������: ������! � ������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, TradeBerthList, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "������ � ��������� ������ �������� �������� ",JumpPage, 3)
	
	Talk( 2, "�������: �������� �� � ��� ��� ������� � ������� �����! ")	

	Talk( 3, "������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������. ")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "�������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������. ")
	Talk( 5, "����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������ ")
	Talk( 6, "����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������ ")
	Talk( 7, "������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������. ")

	InitGoods(4)
	SaleGoodsData(	0	,	4589	,	900	,	161	,	57	)
	SaleGoodsData(	0	,	4590	,	800	,	238	,	84	)
	SaleGoodsData(	1	,	4591	,	700	,	297	,	105	)
	SaleGoodsData(	1	,	4592	,	600	,	425	,	150	)
	SaleGoodsData(	2	,	4593	,	400	,	467	,	165	)
	SaleGoodsData(	2	,	4594	,	240	,	561	,	198	)
	SaleGoodsData(	3	,	4595	,	120	,	612	,	216	)
	SaleGoodsData(	1	,	4596	,	80	,	705	,	249	)

	BuyGoodsData(0,	4577	,	-1	,	750	,	643	)
	BuyGoodsData(0,	4578	,	-1	,	802	,	689	)
	BuyGoodsData(0,	4582	,	-1	,	471	,	403	)
	BuyGoodsData(0,	4584	,	-1	,	691	,	593	)
	BuyGoodsData(0,	4586	,	-1	,	737	,	633	)
	BuyGoodsData(0,	4597	,	-1	,	728	,	625	)
	BuyGoodsData(0,	4599	,	-1	,	1092	,	936	)
	BuyGoodsData(0,	4600	,	-1	,	1139	,	977	)
	BuyGoodsData(0,	4554	,	-1	,	844	,	725	)
	BuyGoodsData(0,	4557	,	-1	,	892	,	765	)
	BuyGoodsData(0,	4560	,	-1	,	992	,	851	)
	BuyGoodsData(0,	4561	,	-1	,	627	,	539	)
	BuyGoodsData(0,	4562	,	-1	,	649	,	557	)
	BuyGoodsData(0,	4563	,	-1	,	735	,	630	)
	BuyGoodsData(0,	4566	,	-1	,	569	,	487	)
	BuyGoodsData(0,	4568	,	-1	,	710	,	609	)
	BuyGoodsData(0,	4569	,	-1	,	761	,	653	)
	BuyGoodsData(0,	4571	,	-1	,	596	,	511	)
	BuyGoodsData(0,	4547	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


end

------------------------------------------------------------
-- ����������-----����������
------------------------------------------------------------
function r_talk210 ()
		
	Talk( 1, "�����: ������! � ������� ����� ���������� ��������! ���� � ��� ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "���������� ������������ ���������� ��������. ������ ������ ��������� �������. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, BoatLevelBerthList, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Attan: What type of ships do you wish to have? I have a few variety for you to chose from. But you must select one of your level if not you will not be able to navigate it. ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 2 )
	Text( 2, "��������� ������� ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 2 )
	Text( 2, "��������� �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 2 )
	Text( 2, "��������� ����-��� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 11 )
	TriggerAction( 1, CreateBoat, 11, 2 )
	Text( 2, "��������� ������ ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 12 )
	TriggerAction( 1, CreateBoat, 12, 2 )
	Text( 2, "��������� ����������� ������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerAction( 1, CreateBoat, 13, 2 )
	Text( 2, "��������� ������� ����� ����� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�����: ����� �������� ����� �� ������ ��������� ��� � ��� ������. ����� ���� � ��� ������ ���� ����������� ���������� ����� �������. ���� ����� ���������� ������ ������� ��������. ")
end 

------------------------------------------------------------
-- ������-----�����鱨Ա��������
------------------------------------------------------------

function r_talk211()

	Talk( 1, "�����: ������! ��� �������� ��� ��������� ����������� � ����! ������ ����������� �������� ��� ����? ")
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 1 )
	TriggerAction( 1, ListAllGuild, 1 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 1 )
	TriggerFailure( 3, JumpPage, 3 )
	Text( 1, "���������� ��������� ������� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "�������� ", CloseTalk)
	
	Talk( 2, "�����: ��, �� �� �� �����! � �� ���� �������� �� � ��� �� �����! ")

	Talk( 3, "�����: ������ ������ ��� ����� ��������� �����? � ����� �� �����. ")

		
end

------------------------------------------------------------
-- ������-----�����鱨Ա����¡��
------------------------------------------------------------

function r_talk212()

	Talk( 1, "���������: ������! � ������������ �����. � ���� ���� ������ ������ ���� �������� �������! ")
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 0 )
	TriggerAction( 1, ListAllGuild, 0 )
	TriggerCondition( 2, IsGuildType, 1 )
	TriggerAction( 2, JumpPage, 3 )
	TriggerCondition( 3, NoGuild )
	TriggerCondition( 3, HasItem, 4110, 1 )
	TriggerAction( 3, TakeItem, 4110, 1 )
	TriggerAction( 3, ListAllGuild, 0 )
	TriggerFailure( 3, JumpPage, 2 )
	Text( 1, "���������� ������ ������� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "�� �������� ", CloseTalk)
	
	Talk( 2, "���������: �� �� ������ ���������� ������ ������� �� ���� ��� ���� ����������������� ������! ")

	Talk( 3, "���������: �� �� ������������ � �����. � �� ���� ������ ��� ������� ����������! ")

		
end

------------------------------------------------------------
-- ������-----����ļ��С�㡤��粶�
------------------------------------------------------------

function r_talk213()

	Talk( 1, "������: ������! ���� ���� ���! ���� �� �������� ��� ����� �����, �� �������� ���������������� ������ � �������� � ��������� ����� ��������! ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 4110, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 4 )
	TriggerCondition( 3, IsGuildType, 1 )
	TriggerAction( 3, JumpPage, 5 )
	TriggerCondition( 4, HasLeaveBagGrid, 1 )
	TriggerCondition( 4, NoGuild )
	TriggerAction( 4, GiveItem, 4110, 1, 4 )
	TriggerFailure( 4, JumpPage, 3 )
	Text( 1, "����� ���������������� ������ ",MultiTrigger, GetMultiTrigger(), 4 )
	Text( 1, "����� �����. ��������! ", CloseTalk)

	Talk( 2, "������: � ��� ��� ���� ���������������� ������! ")

	Talk( 3, "������: �� �� �������������� � �����? ��������� ���� ��������� � ��������� ��� �� �� �����! ")

	Talk( 4, "������: �� ��� �������� �� �����! ����� ��� ���������������� ������? ")

	Talk( 5, "������: ������ �� ������ �������. � �� ���� ��� ������� ���������������� ������! ")

		
end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----����ˡ����մ�
------------------------------------------------------------

function r_talk214()

	Talk( 1, "�������: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�������: � ��� ��� ������� � ������� �����! ")
		
end

------------------------------------------------------------
-- ����������-----����ˡ��ѵ�����
------------------------------------------------------------

function r_talk215()

	Talk( 1, "��������: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������: � ��� ��� ������� � ������� �����! ")
		
end

------------------------------------------------------------
-- ��������-----����ˡ�Ħ��
------------------------------------------------------------

function r_talk216()

	Talk( 1, "�����: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�����: � ��� ��� ������� � ������� �����! ")

	AddNpcMission(	1436	)
	AddNpcMission (	1930	)
		
end

------------------------------------------------------------
-- ��ѩ��-----����ˡ�������˹
------------------------------------------------------------

function r_talk217()

	Talk( 1, "�������: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8)
	TriggerAction( 1, PackBagList, 8, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�������: � ��� ��� ������� � ������� �����! ")
		
end

------------------------------------------------------------
-- ��ɳ��-----����ˡ����ӿ���
------------------------------------------------------------

function r_talk218()

	Talk( 1, "�������: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9)
	TriggerAction( 1, PackBagList, 9, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�������: � ��� ��� ������� � ������� �����! ")
		
end

------------------------------------------------------------
-- ɳ��³�-----����ˡ������߶�
------------------------------------------------------------

function r_talk219()

	Talk( 1, "�����: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_MINE, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "�����: � ��� ��� ������� � ������� �����! ")
		
end

------------------------------------------------------------
-- ������˹����վ-----����ˡ����Ӷ�������
------------------------------------------------------------

function r_talk220()

	Talk( 1, "������: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_MINE, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������: � ��� ��� ������� � ������� �����! ")

	AddNpcMission(	1581	)
	AddNpcMission (	1933	)

	
end


------------------------------------------------------------
-- �����ӵ�ѩԭ-----����ˡ�������
------------------------------------------------------------

function r_talk243()

	Talk( 1, "������: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������: � ��� ��� ������� � ������� �����! ")
		
end

------------------------------------------------------------
-- �¶�άƽԭ-----����ˡ�����˹
------------------------------------------------------------

function r_talk244()

	Talk( 1, "�������: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	--Text( 1, "���� ", BuyPage )
	
	InitTrade()
	Other(	3989	)
	Other(	3990	)
	Other(	3991	)
	Other(	3992	)
	Other(	3993	)
	Other(	3994	)
	Other(	3995	)
	Other(	3996	)
	Other(	3997	)
	Other(	3998	)

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�������: � ��� ��� ������� � ������� �����! ")

end



------------------------------------------------------------
-- ���˻�Į-----����ˡ�������
------------------------------------------------------------

function r_talk245()

	Talk( 1, "�����: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�����: � ��� ��� ������� � ������� �����! ")
		
end


------------------------------------------------------------
-- ����-----����ˡ�������
------------------------------------------------------------

function r_talk246()

	Talk( 1, "����: ������! � ������� ����������. � ���� ��������� ����� �� ���� ����� ���� ��� ���������  ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "����: � ��� ��� ������� � ������� �����! ")
	
end

------------------------------------------------------------
-- ��֮�ۿ�-----�ۿ�ָ�ӡ���
------------------------------------------------------------
function r_talk247()

	Talk( 1, "����: ������! � ��������� ������������ ������! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1341, 3257, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "����� �������� ����� � ������������ ����� ���������� 1000 ������ ")
	Talk( 5, "����� ��������� ����� � ������������ ����� ���������� 200 ������ ")
	Talk( 6, "� ���� ������������ ���� �����, ����������� � ������������ �����. ��������� 1000 ������ ")

end

------------------------------------------------------------
-- ��֮�ۿ�-----С��԰�����̵꺣��ָ��
------------------------------------------------------------
function r_talk248()

	Talk( 1, "������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 116, 51, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	

end

------------------------------------------------------------
-- ��֮�ۿ�-----С��԰�������뺣��ָ��
------------------------------------------------------------
function r_talk249()

	Talk( 1, "������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 235, 123, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	

end


------------------------------------------------------------
-- ��֮�ۿ�-----С��԰��������ָ��
------------------------------------------------------------
function r_talk250()

	Talk( 1, "������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 248, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	

end

------------------------------------------------------------
-- ��֮�ۿ�-----С��԰�ϲ��̵꺣��ָ��
------------------------------------------------------------
function r_talk251()

	Talk( 1, "������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 353, 428, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")


end

------------------------------------------------------------
-- ��֮�ۿ�-----С��԰�����º�����ָ��
------------------------------------------------------------
function r_talk257()

	Talk( 1, "������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,211, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")


end

------------------------------------------------------------
-- ��֮�ۿ�-----С��԰�ϲ��º�����ָ��
------------------------------------------------------------
function r_talk258()

	Talk( 1, "������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,256, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")


end


------------------------------------------------------------
-- ��֮�ۿ�-----�������󺣸�ָ��
------------------------------------------------------------
function r_talk261()

	Talk( 1, "������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 295, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "����� �������� ����� ����������� � ������������ ����� ���������� 1000 ������ ")
	Talk( 5, "����� ��������� ����� ����������� � ������������ ����� ���������� 200 ������. ")
	Talk( 6, "����� ������������ ����� ���������� � ������������ ����� ���������� 1000 ������! ")

end

------------------------------------------------------------
-- ��֮�ۿ�-----����֮������ָ��
------------------------------------------------------------
function r_talk262()

	Talk( 1, "������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 299, 321, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "����� �������� ����� ����������� � ������������ ����� ���������� 1000 ������ ")
	Talk( 5, "����� ��������� ����� ����������� � ������������ ����� ���������� 200 ������. ")
	Talk( 6, "����� ������������ ����� ���������� � ������������ ����� ���������� 1000 ������! ")

end

----------------------------------------------------------
--							--
--							--
--		������԰[��������]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk259 ()
	
	
	Talk( 1, "������������ ��������: ������! � ���� ���� ��������� ����� ��� ���. ������ ���������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12 )
	TriggerAction( 1, TradeBerthList, 12 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ", MultiTrigger, GetMultiTrigger(), 1 )

	
	Talk( 2, "������������ ��������: ��������, �� � ��� ��� ������� � ���� �����. ���� ����������! ")
	
	InitGoods(12)
	SaleGoodsData(	0	,	1861	,	500	,	5000	,	5000	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 52, TE_GAMETIME, TT_CYCLETIME, 15, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 



------------------------------------------------------------
-- С��԰-----ҩ������
------------------------------------------------------------

function r_talk260()

	Talk( 1, "��������: ��������� �� ��� ����������� �������� ����! ")
	Text( 1, "���� ", BuyPage )
	Text( 1, "������, � ������ ����������� ",CloseTalk )

	InitTrade()
	Other(	3460	)
	Other(	3461	)

end

------------------------------------------------------------
-- ɳ��³�-----���غ���ָ��
------------------------------------------------------------
function r_talk263()

	Talk( 1, "������������ ��������: ������! � �������� ������������ ������. � ���� ������������ ��� ������� ���� �� �������� � ������������ �����. ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 832, 3698, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 3, "����� �������� ����� ����������� � ������������ ����� ���������� 1000 ������ ")
	Talk( 4, "����� ��������� ����� ����������� � ������������ ����� ���������� 200 ������. ")
	Talk( 5, "����� ������������ ����� ���������� � ������������ ����� ���������� 1000 ������! ")

end

----------------------------------------------------
--������������ó��Ʒ
----------------------------------------------------
--������


function r_talk264()
	Talk( 1, "�������� �������: ������! � �������� ������ �������. ������ � ������� ���� ������ ������� ���������� ������ �����. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 1 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "�������� �������: � ������� ���� ������ ������� ���������� ����� �����! ����� ���� � ��� ������ ���� ������� � ����� �������. ")

	InitGoods(3)
	SaleGoodsData(	0	,	3914	,	150	,	990	,	220	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end

--����������Ӧ��	

--function r_talk265()
--	Talk( 1, "�������� ������� �����������: ������! � ������ ������� �����������. ������ � ������� ���� ������ ������� ���������� ������ �����! ")
--	InitTrigger()
--	TriggerCondition( 1, HasBoatInBerth, 3 )
--	TriggerCondition( 1, HasGuildLevel, 2 )
--	TriggerAction( 1, TradeBerthList, 3 )
--	TriggerFailure( 1, JumpPage, 2 )
--	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 

--	Talk( 2, "�������� ������� �����������: � ������� ���� ������ ������� ���������� ������ �����! ����� ���� � ��� ������ ���� ������� � ����� �������. ")


--	InitGoods(3)
--	SaleGoodsData(	0	,	3912	,	200	,	855	,	190	)
	


--	InitTrigger()
--	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
--	SetNpcTrigger( GetTrigger( 1 ) )
--	SetNpcActive()



--end


--ϡ�н�����Ӧ��

function r_talk266()
	Talk( 1, "�������� ������� ���������: ������! � ������ ������ �������! ������ � ������� ���� ������ ������� ���������� ������ �����! ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "���� ������  ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "�������� ������� ���������: � ������� ���� ������ ������� ���������� ������ �����! ����� ���� � ��� ������ ���� ������� � ����� �������. ")


	InitGoods(3)
	SaleGoodsData(	0	,	3913	,	250	,	765	,	170	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end



------------------------------------------------------------
-- ɳ��³�-----����ˡ���������
------------------------------------------------------------

function m_talk001()

	Talk( 1, "��� ���: ������! � ������� ����������. ���� � ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��� ���: � ��� ��� ������� � ������� �����! ")
		
end


------------------------------------------------------------
-- �ĵ�����-----����ָ��
------------------------------------------------------------
function b_talk19()

	Talk( 1, "������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 14 )
	TriggerAction( 1, LuanchBerthList, 14, 3662, 2645, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, RepairBerthList, 14 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, SupplyBerthList, 14 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 14 )
	TriggerAction( 1, SalvageBerthList, 14 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������, �� ����� �������� ����� ������� � ����� ������� ���� ���������� 1000 ������! ")
	Talk( 5, "��������, �� ����� ��������� ����� ������� � ����� ������� ���� ���������� 200 ������! ")
	Talk( 6, "��������, �� ����� ������������ ����� ������� � ����� ������� ���� ���������� 1000 ������! ")

end


------------------------------------------------------------
-- �ĵ��ϸ�-----����ָ��
------------------------------------------------------------
function b_talk20()

	Talk( 1, "������! � ������� �������� �����! ��� � ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 15 )
	TriggerAction( 1, LuanchBerthList, 15, 3324, 3541, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, RepairBerthList, 15 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, SupplyBerthList, 15 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 15 )
	TriggerAction( 1, SalvageBerthList, 15 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������, �� ����� �������� ����� ������� � ����� ������� ���� ���������� 1000 ������! ")
	Talk( 5, "��������, �� ����� ��������� ����� ������� � ����� ������� ���� ���������� 200 ������! ")
	Talk( 6, "��������, �� ����� ������������ ����� ������� � ����� ������� ���� ���������� 1000 ������! ")

end


function leo_talk10()	

	Talk( 1, "�������� ������� �����: �� �� ��� �� ���� �����? �� ��� �� ����� �� ��� �� ������ �������� ���-������?")
--	Text( 1, "��� ����� ����������� ����� ", JumpPage, 2 )
	Text( 1, "������.", BuyPage)

	Talk( 2, "�������� ������� �����: �� �� ����� ������ ��� ����� �������� ����� ������.�� �������� ��� � ���� ���� ")
	Text( 2, "������� �������� ", SendExchangeData )

	InitExchange()
	ExchangeData( 855 , 1000 , 774 , 1 , 1)
	ExchangeData( 855 , 1000 , 771 , 1 , 1)
	ExchangeData( 855 , 1000 , 782 , 1 , 1)
	ExchangeData( 855 , 1000 , 800 , 1 , 1)
	ExchangeData( 855 , 1000 , 793 , 1 , 1)
	ExchangeData( 855 , 1000 , 786 , 1 , 1)
	ExchangeData( 855 , 1000 , 767 , 1 , 1)
	ExchangeData( 855 , 1000 , 764 , 1 , 1)
	ExchangeData( 855 , 1000 , 778 , 1 , 1)
	ExchangeData( 855 , 1000 , 796 , 1 , 1)
	ExchangeData( 855 , 1000 , 804 , 1 , 1)
	ExchangeData( 855 , 1000 , 790 , 1 , 1)
	ExchangeData( 855 , 1000 , 778 , 1 , 1)

	
--	DoExchange()

	InitTrade()
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 53, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
end

function rand()	--�������װ���б�
	local tabunknow = {}
	tabunknow[	1	] =	0088
	tabunknow[	2	] =	0089
	tabunknow[	3	] =	3302
	tabunknow[	4	] =	3303
	tabunknow[	5	] =	3304
	tabunknow[	6	] =	3305
	tabunknow[	7	] =	3306
	tabunknow[	8	] =	3307
	tabunknow[	9	] =	3308
	tabunknow[	10	] =	3309
	tabunknow[	11	] =	3310
	tabunknow[	12	] =	3311
	tabunknow[	13	] =	3312
	tabunknow[	14	] =	3313
	tabunknow[	15	] =	3314
	tabunknow[	16	] =	3315
	tabunknow[	17	] =	3316
	tabunknow[	18	] =	3317
	tabunknow[	19	] =	3318
	tabunknow[	20	] =	3319
	tabunknow[	21	] =	3320
	tabunknow[	22	] =	3321
	tabunknow[	23	] =	3322
	tabunknow[	24	] =	3323
	tabunknow[	25	] =	3324
	tabunknow[	26	] =	3325
	tabunknow[	27	] =	3326
	tabunknow[	28	] =	3327
	tabunknow[	29	] =	3328
	tabunknow[	30	] =	3329
	tabunknow[	31	] =	3330
	tabunknow[	32	] =	3331
	tabunknow[	33	] =	3332
	tabunknow[	34	] =	3333
	tabunknow[	35	] =	3334

	return tabunknow[math.floor(math.random(1,35))]
end

------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk001()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 148 , 154, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�����һ
------------------------------------------------------------
function star_talk002()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 176, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ������
------------------------------------------------------------
function star_talk003()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 168 , 111, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk004()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 452 , 135, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk005()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 496 , 164, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk006()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk007()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3 , 262 , 181, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk008()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 348 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk009()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 110 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end

------------------------------------------------------------
-- ʥս-----����ָ�ӡ�����һ
------------------------------------------------------------
function star_talk010()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 493, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ����۶�
------------------------------------------------------------
function star_talk011()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 82 , 456, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk012()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 463 , 453, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk013()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 492 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk014()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 506, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk015()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 357 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end
------------------------------------------------------------
-- ʥս-----����ָ�ӡ�������
------------------------------------------------------------
function star_talk016()
	Talk( 1, "��������: ������! � �������� ����� ��������� �����. � ���� ���� ������ � ���� ������. ��� �� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 256 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��������, �� � ��� ��� ����� ����������� �����. ")
end

function r_talk151 ()
		
	Talk( 1, "�����������: ������! ���������� ������ �����? ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "���������� ������������ ���������� ��������. ������ ������ ��������� �������. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, BoatLevelBerthList, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "�����������: ����� ������� ������� ���������? ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 1 )
	Text( 2, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 1 )
	Text( 2, "��������� ����������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 1 )
	Text( 2, "��������� ������� ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 1 )
	Text( 2, "��������� ����-��� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 12, 1 )
	Text( 2, "��������� ������ ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�����������: ����� �������� ����� �� ������ ��������� ��� � ��� ������. ����� ���� � ��� ������ ���� ����������� ���������� ����� �������. ���� ����� ���������� ������ ������� ��������. ")
end

	
function d_port001()
	Talk( 1, "�������� ��������� �����: ��� ���� ������? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 485,1875, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "��� ����� � ������������ �����. ",JumpPage,7)

	Talk( 3, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 4, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 5, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 6, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")
	
	Talk( 7, "�������� ��������� �����: ���� �� �������� ��� �������� ����� � ����������� ������, �� � ���� ��� ������. ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 485,1875, 177 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "����������� � ���� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 9 )
	Text( 7, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 10 )
	Text( 7, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 7, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 8, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 9, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 10, "��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������. ")
	Talk( 11, "��������, �� �� ������ ������������ ����� ���� � ��� �����, ��� ��� ���������! ")

end
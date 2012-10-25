--------------------------------------------------------------------------
--									--
--									--
--NPCScript01.lua Created by sky74                                           	--
--									--
--									--
--------------------------------------------------------------------------
print(  "����㧪� NPCScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- ����֮��:��װ����������
------------------------------------------------------------

function for_test()
	Talk( 1,  "�������� ������ (��������) " )
	Text( 1,  "������� ",CloseTalk )
end

function BT_NpcSale001()


	Talk( 1,  "������� �����: ������ �����! � ���� ��� ��� � ������� ������ ����! ������� ��� ����������! " )
	Text( 1,  "���� ", BuyPage )

	InitTrade()
	Defence(	0290	)
	Defence(	0466	)
	Defence(	0642	)
	Defence(	0296	)
	Defence(	0472	)
	Defence(	0648	)
	Defence(	0291	)
	Defence(	0467	)
	Defence(	0643	)
	Defence(	0297	)
	Defence(	0473	)
	Defence(	0649	)
	Defence(	0293	)
	Defence(	0469	)
	Defence(	0645	)
	Defence(	0298	)
	Defence(	0474	)
	Defence(	0650	)
	Defence(	0300	)
	Defence(	0476	)
	Defence(	0652	)
	Defence(	0301	)
	Defence(	0477	)
	Defence(	0653	)
	Defence(	0228	)
	Defence(	0229	)
	Defence(	0230	)
	Defence(	0295	)
	Defence(	0471	)
	Defence(	0647	)
	Defence(	0302	)
	Defence(	0478	)
	Defence(	0654	)
	Defence(	0299	)
	Defence(	0475	)
	Defence(	0651	)
	Defence(	0303	)
	Defence(	0479	)
	Defence(	0655	)
	
	-- AddNpcMission ( 220 )
	AddNpcMission ( 705 )
	
end

function r_talk2020()

	Talk( 14,  "�����: ����� ��� �������� ��� ��������� ��������� �������� ������. " )
	InitTrigger() 
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 14,  "�������� 3 ��������� ����� ",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() 
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "�������� 3 ��������� ����� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "�������� 3 ��������� ������� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "�������� 3 ��������� ������ ",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "�������� 1 �������� ���� ",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 15,  "�����: ����� ����������! � ��� ��� �������� ��� ������������ ���������  " )
	Talk( 16,  "� ����� �����! " )

	Talk( 1,  "�����: ������! � �������� ����� �����. � ��� ���� ��� �� ��� ����? ")
	Text( 1,  "�������� �� �������������� �������� ", JumpPage, 14 )
	Text( 1,  "�������� �� ���������� �������� ", JumpPage, 12 )
	Text( 1,  "�������� �� ��������� �������� 1 ������ ", JumpPage, 2 )
	Text( 1,  "�������� 30 ���������� �������� �� 1.5�� ", JumpPage, 29 )
	Text( 1,  "�������� 10 �������� ����� �� 3�� ", JumpPage, 30 )
	Text( 1,  "�������� 1 ���������� ������ �� 300� ", JumpPage, 31 )
	Text( 1,  "������ --> ", JumpPage, 21 )
	Talk( 21,  "�����: ������! � �������� ����� �����. � ��� ���� ��� �� ��� ����? ")
	Text( 21,  "��������� �������� ", JumpPage, 17 )
    Text( 21,  "���������� ������ ������� ", JumpPage, 6 )
	Text( 21,  "�������� ������ ����� ", JumpPage, 20 )		-------�±��һ�
	Text( 21,  "�������� ���������� ��� ", JumpPage, 10 )
	Text( 21,  "<-- ����� ", JumpPage, 1 )
      
	
	Talk( 2,  "�����: ��� ��� �������� �� ��������� �������� 1 ������ ��� ��������� ���������� ���������, � ����� ��� 1 ���������� ��������� 1 ������. ")
	Text( 2,  "�������� ", TransferDiamond, 1)

	Talk( 3,  "�����: ��� ��� �������� �� ��������� �������� 2 ������ ��� ��������� ���������� ���������, � ����� ��� 1 ���������� ��������� 2 ������. ")
	Text( 3,  "�������� ", TransferDiamond, 2)

	Talk( 4,  "�����: ��� ��� �������� �� ��������� �������� ��� ��������� 1 ���������� ��������� 1 ������ ")
	Text( 4,  "�������� ", TransferDiamond, 3)

	Talk( 5,  "�����: ��� ��� 1 �������� �� �������� ��� ��������� 1 ���������� ��������� 1 ������ ")
	Text( 5,  "�������� ", TransferDiamond, 4)



	Talk( 17,  "�����: � ��� ���� ��������� ��������? ")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2238, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2238, 1 )
 	TriggerAction( 1, GiveItem, 2306, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "� ���� ���� ��������� �������� 8 ",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()--�һ�Ħ����ʯ
	TriggerCondition( 1, HasItem, 2240, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2240, 1 )
 	TriggerAction( 1, GiveItem, 1028, 1 ,4)
	TriggerAction( 1,JumpPage, 19 )------------------
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "� ���� ���� ��������� �������� 6 ",MultiTrigger, GetMultiTrigger(), 1)

	Text( 17,  "� ���� ���� ��������� �������� 6 ",JumpPage, 19)
	Talk(19, "�����: �� ������ ��������? ")
	Text( 19,  "�������� ",GetChaName_5, 1)

	InitTrigger()--�һ�����Ӳ��99��
	TriggerCondition( 1, HasItem, 2237, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2237, 1 )
 	TriggerAction( 1, GiveItem, 855, 99 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "� ���� ���� ��������� �������� 9 ",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()-- �һ�����ͼֽ "Encrypted Blueprint "����
	TriggerCondition( 1, HasItem, 2239, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2239, 1 )
 	TriggerAction( 1, GiveItem, 1001, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "� ���� ���� ��������� �������� 7 ",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()--�һ����ٳɳ���1��
	TriggerCondition( 1, HasItem, 2241, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2241, 1 )
 	TriggerAction( 1, GiveItem, 0578, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "� ���� ���� ��������� �������� 5 ",MultiTrigger, GetMultiTrigger(), 1)
	Text( 17,  "����� ����� ��������� �������� ", GetChaName_4, 1)



	Talk( 18,  "�����: ������� �� �� ������ ���������� ��������� ��������. ��������� ����� ��� ��� ��������� �� ������������ � ������� ���� �� ���� ��������� �����. ")

 	InitTrigger() --�ϳ���Ըʯ
	TriggerCondition( 1, HasItem, 3905, 5 )
	TriggerCondition( 1, HasItem, 3907, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3905, 5 )
	TriggerAction( 1, TakeItem, 3907, 1 )
 	TriggerAction( 1, GiveItem, 3906, 1 ,4)
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6,  "�����: ��������� ��� 5 ������ ������ �������� 1 ����������� ����� ��� ������ �� 1 ���������� ������ ������� ")
	Text( 6,  "������������� ",MultiTrigger, GetMultiTrigger(), 1)        
 	
	Talk( 8,  "�����: �� �� ������ ������ ���������� ������ ������ ������� ��� ������������� �����. ��������� ����� ��� � ��� ������� ���� �� 1 ��������� ����� � ���������. ")

	InitTrigger() --�һ����¾���
	TriggerCondition( 1, HasItem, 3342, 2 )
	TriggerCondition( 1, HasItem, 3337, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3342, 2 )
	TriggerAction( 1, TakeItem, 3337, 1 )
	TriggerAction( 1, GiveItem, 3335, 1 ,4)
	TriggerFailure( 1, JumpPage, 11 ) 
	Talk( 10,  "�����: ��������� ��� 2 ����������� � 1 ���� ��� ��� ������ �� ���������� ���. ���� ��� ����� ����� � �������� � ����� �����. ")
	Text( 10,  "�������� ",MultiTrigger, GetMultiTrigger(), 1) 
   
	Talk( 11,  "� ��� ��� ����� ������������ ��� ������. �������� ����� � ��� ��� ��������� ���� � ��������� ��� �� ������������. ")
	
	Talk( 12,  "�����: ����� ��� 1 �������� �� ���������� �������� ��� ������ �� ���������� ��������. ")

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0863, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "�������� �������� ������ ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid,1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "�������� �������� ���� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0862, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "�������� �������� ������� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0861, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "�������� �������� ����� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0860, 1, 101 )
	TriggerFailure( 1, JumpPage, 13 ) 
	Text( 12,  "�������� �������� ����� ",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 13,  "�����: � ��� ��� �������� �� ���������� ��������! �������� ����� ��� ��������� ���������� ��� ������������. ")
	
	Talk( 20,  "�����: � ������ ������ ������? � ��� ����? � ��� �� ��� ������������ ����� " )
	InitTrigger() --99������֮��10��
	TriggerCondition( 1, HasItem,3095, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 99 )
	TriggerAction( 1, GiveItem, 2440, 10, 4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20,  "�������� 99 ������� �� ����� ��������� ���������� ",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --100�����Ƹ�1��
	TriggerCondition( 1, HasItem,3097, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 100 )
	TriggerAction( 1, GiveItem, 3096, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20,  "�������� 99 ������� �� ������� ��������� ����� ",MultiTrigger, GetMultiTrigger(), 1) 
	
	Talk( 29,  "�����: �� ������ ��� ������ �������� ������� �� 1.5��? ") 
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3901, 30 )
 	TriggerAction( 1, AddMoney,1500000,1500000)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 29,  "�������� ",MultiTrigger, GetMultiTrigger(), 1)	
	
	Talk( 30,  "�����: �� ������ ��� ������ �������� ������� �� 3��? ") 
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3902, 10 )
 	TriggerAction( 1, AddMoney,3000000,3000000)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 30,  "�������� ",MultiTrigger, GetMultiTrigger(), 1)	
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2588, 1 )
 	TriggerAction( 1, AddMoney,300000,300000)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 31,  "�������� ",MultiTrigger, GetMultiTrigger(), 1)	

	Talk( 21,  "�����: � ��� ��� ������������ ���������� ���������! �������� ����� ��� ��������� ���������� ��� ������������. ") 

end


function r_talk202999()

	Talk( 1,  "�����: ������! � �������� ����� �����. � ��� ���� ��� �� ��� ����? ")

    Text( 1,  "�������� �� �������� �������(+8 � ����) ", JumpPage, 24 )
	Text( 1,  "�������� �� �������� �������(+8 � ������������) ", JumpPage, 25 )
	Text( 1,  "�������� �� �������� �������(+8 � ����) ", JumpPage, 26 )
	Text( 1,  "�������� �� �������� �������(+8 � ��������) ", JumpPage, 27 )
	Text( 1,  "�������� �� �������� �������(+8 � ��������) ", JumpPage, 28 )
	Text( 1,  "�������� 30 ���������� �������� �� 1.5�� ", JumpPage, 29 )
	Text( 1,  "�������� 10 �������� ����� �� 3�� ", JumpPage, 30 )

	
	Talk( 24,  "�����: � ��� ���� �������� �� �������� �������(+8 � ����)? � ��� ����� �������� �� ����� ���������� ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7694, 1 )
 	TriggerAction( 1, GiveItem, 5845, 1 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 24,  "�������� �������� �� �������� ",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 25,  "�����: � ��� ���� �������� �� �������� �������(+8 � ������������)? � ��� ����� �������� �� ����� ���������� ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7694, 1 )
 	TriggerAction( 1, GiveItem, 5846, 1 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 25,  "�������� �������� �� �������� ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 26,  "�����: � ��� ���� �������� �� �������� �������(+8 � ����)? � ��� ����� �������� �� ����� ���������� ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7694, 1 )
 	TriggerAction( 1, GiveItem, 5847, 1 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 26,  "�������� �������� �� �������� ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 27,  "�����: � ��� ���� �������� �� �������� �������(+8 � ��������)? � ��� ����� �������� �� ����� ���������� ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7694, 1 )
 	TriggerAction( 1, GiveItem, 5848, 1 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 27,  "�������� �������� �� �������� ",MultiTrigger, GetMultiTrigger(), 1)	
	
	Talk( 28,  "�����: � ��� ���� �������� �� �������� �������(+8 � ��������)? � ��� ����� �������� �� ����� ���������� ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7694, 1 )
 	TriggerAction( 1, GiveItem, 5849, 1 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 28,  "�������� �������� �� �������� ",MultiTrigger, GetMultiTrigger(), 1)	
	
	Talk( 28,  "�����: � ��� ���� �������� �� �������� �������(+8 � ��������)? � ��� ����� �������� �� ����� ���������� ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3901, 30 )
 	TriggerAction( 1, GiveItem, 7607, 3 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 29,  "�������� ",MultiTrigger, GetMultiTrigger(), 1)	
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3902, 10 )
 	TriggerAction( 1, GiveItem, 7607, 6 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 30,  "�������� ",MultiTrigger, GetMultiTrigger(), 1)	


	Talk( 21,  "�����: � ��� ��� ������������ ���������� ���������! �������� ����� ��� ��������� ���������� ��� ������������. ") 

end
-------------------------------------------------------------------
--								--
--		�����ǣ����أ�		--
--		219533,270323				--
-------------------------------------------------------------------

function r_talk86()

	Talk( 1,  "�����: ������, � �����, �������� ����� ������. � ����� �� �������� � ������� ����� �� �����������. � ���� ���� �� ��� ����� �� ����? ")

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "> ", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000 )
	TriggerCondition( 1, HasItem, 3953, 1 )
	TriggerAction( 1, TakeItem, 3953, 1 )
	TriggerAction( 1, TakeMoney, 1000 )
	TriggerAction( 1, GiveItem, 3164, 1, 4 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerAction( 1, SetProfession, 1 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck,  "> ", 9 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerCondition( 2, HasItem, 3953, 1 )
	TriggerAction( 2, TakeItem, 3953, 1 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, GiveItem, 3164, 1, 4 )
	TriggerAction( 2, GiveItem, 1, 1, 4 )
	TriggerAction( 2, SetProfession, 1  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	--Talk(2,  "Peter: Hey wait! Are you interested in swordsmanship? Hmm��you seems suitable to learn some sword fighting. It'll be a pity if you did not become a Swordsman! ")
	--Text(2,  "Ok, I will advance to become a Swordsman ", MultiTrigger, GetMultiTrigger(), 2)
	--Text(2,  "No, it is good enough for now. ", CloseTalk)

	--Talk(3,  "Peter: I have taught you all I know ������ � ��������ship. The rest will be up to your own effort. ")

	--Talk(4,  "Peter: Want to become a Swordsman? Only male Newbies at Level 10 with 1 Courage Certificate are eligible. Registration fee is 1000G. ")

	--InitTrigger()
	---------------��ʿ
	--TriggerCondition( 1, LvCheck,  "> ", 9 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck,  "> ", 9 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	AddNpcMission( 100 )
	AddNpcMission( 204 )
	AddNpcMission ( 279 )
	AddNpcMission ( 281 )
	AddNpcMission ( 404 )
	AddNpcMission ( 749 )
	AddNpcMission ( 750 )
	AddNpcMission ( 66 )
	AddNpcMission ( 67 )
	AddNpcMission ( 68 )
	AddNpcMission ( 72 )
	AddNpcMission(	1222	)
----------eleven
	AddNpcMission(	5056	)
	AddNpcMission(	5060	)	
	AddNpcMission(	5068	)	
------------1.7
	AddNpcMission(	5167	)
	AddNpcMission(	5089	)
	AddNpcMission (5093 )
	AddNpcMission (5094 )
	AddNpcMission (5095 )
	AddNpcMission (5096 )
	AddNpcMission (5109 )
	
	AddNpcMission ( 6078 )
	AddNpcMission ( 6079 )
	AddNpcMission ( 6080 )
	AddNpcMission ( 6097 )
	AddNpcMission ( 6100 )
	AddNpcMission ( 6101 )


	MisListPage(2)


end


-------------------------------------------------------------------
--								--
--		�����ǣ���������С���		--
--		219533,270323				--
-------------------------------------------------------------------
function r_trade01 ()
	--???o��??�?��
	Talk( 1, "�����: ������! � ���� ������ ���� ������������ ������ ��� ����! " )
	Text( 1, "���� ", BuyPage)
	Text( 1, "������ ", OpenRepair)
	--Text( 1, "������������� ", OpenUnite)
--	Text( 1, "�������� �������� ", OpenForge)
--	Text( 1, "������� ���� ", OpenMilling)
	Text( 1,"���������� ����� ",JumpPage,4)
--	Text( 1, "�������� �������� ", OpenForge)
--	Text( 1, "�������� � �������� ", OpenFusion)
--	Text( 1, "��������� �������� ", OpenUpgrade)
--	Text( 1, "�������� �������� ", OpenGetStone )
	--Text( 2, "������� ������������ ", OpenItemFix )
	--Text( 2,"������� ������������ ����� ",JumpPage,9)
	Text( 2, "<- ����� ",JumpPage,1)

	
	
	Talk(9,"�����: ��������� ������������ �����? ��� �������! � ����� �������� �� ��� ����! ")
	Text(9,"� ���� ��������������� ���� ����� ",CheckMetal)
	Text(9,"���, �������. ",CloseTalk)

	
	Text( 3, "���������� ����� ", JumpPage,4)




	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0001	)
	Weapon(	0010	)
	Weapon(	0002	)
	Weapon(	0011	)
	Weapon(	0003	)
	Weapon(	0012	)
	Weapon(	0013	)
	Weapon(	0014	)
	Weapon(	0022	)
	Weapon(	0005	)
	Weapon(	0023	)
	Weapon(	1388	)
	Weapon(	1389	)
	Weapon(	1390	)
	Weapon(	1391	)
	Weapon(	1392	)
	Weapon(	1395	)
	Weapon(	1396	)
	Weapon(	1397	)
	Weapon(	1398	)
	Weapon(	1399	)
	Weapon(	0121	)
	Weapon(	0122	)
	Weapon(	0123	)
	Weapon(	0124	)
	Weapon(	0125	)
	Weapon(	0126	)
	Weapon(	0015	)
	Weapon(	0020	)
	Weapon(	0016	)
	Weapon(	0021	)
	Weapon(	0004	)
	Weapon(	1370	)
	Weapon(	1371	)
	Weapon(	1372	)
	Weapon(	1373	)
	Weapon(	1377	)
	Weapon(	1378	)
	Weapon(	1379	)
	Weapon(	1380	)
	Weapon(	1381	)
	Weapon(	1382	)
	Weapon(	1386	)
	Weapon(	1387	)
	Weapon(	0073	)
	Weapon(	0080	)
	Weapon(	0074	)
	Weapon(	0081	)
	Weapon(	0075	)
	Weapon(	0082	)
	Weapon(	0076	)
	Weapon(	0083	)
	Weapon(	0077	)
	Weapon(	0084	)
	Weapon(	1415	)
	Weapon(	1416	)
	Weapon(	1417	)
	Weapon(	1418	)
	Weapon(	1419	)
	Weapon(	1422	)
	Weapon(	1423	)
	Weapon(	1424	)
	Weapon(	1425	)
	Weapon(	1426	)
	Weapon(	1443	)
	Weapon(	1444	)
	Weapon(	1445	)
	Weapon(	1446	)
	Weapon(	1447	)
	Weapon(	1450	)
	Weapon(	1451	)
	Weapon(	1452	)
	Weapon(	1460	)
	Weapon(	1461	)


	Talk( 4, "�����: ����� ����� ������� ����������? ")
	Text( 4, "����� �������� ",JumpPage,5)
	Text( 4, "��������� ����� ", JumpPage,6)
	Text( 4, "����� ������ ", JumpPage,7)


	InitTrigger() --�?��????????
	TriggerCondition( 1, HasItem, 4358, 30 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 4358, 30 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1120, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(5, "�����: ��� ������������ ����� �������� ��� ���������� 30 ����� ������� ")
	Text( 5, "�������� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�?��????
	TriggerCondition( 1, HasItem, 4809, 30 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 4809, 30 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1121, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(6, "�����: ��� ������������ ��������� ����� ��� ���������� 30 ��������� ����� ")
	Text( 6, "�������� ",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --�?��????
	TriggerCondition( 1, HasItem, 2419, 20 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 2419, 20 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1122, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(7, "�����: ��� ������������ ����� ������ ��� ���������� 30 ��������� ������ ")
	Text( 7, "�������� ",MultiTrigger, GetMultiTrigger(), 1) 
	
	Talk( 8, "�����: � ���� ��� ���� ����������� ����������� ��� ���� ��������� ������������ ")
	
	AddNpcMission ( 703 )
	AddNpcMission	(1044)
	AddNpcMission	(1096)
	AddNpcMission	(1155)
	AddNpcMission	(1207)
	AddNpcMission	(58)
	AddNpcMission	(59)
	AddNpcMission	(60)
	AddNpcMission(	1221	)


end
-----------------------------------------------------------------С�����������----------------------------------------------------------------------------------------------




------------------------------------------------------------------
--								--
--								--
------------------------����������˹����---------------------------
--			221925,274925				--
--								--
------------------------------------------------------------------
function r_talk01 ()
	
	Talk( 1,  "�������: ������������, �� ������ �� ������� � ���� �����. ���� �� � ��� �� ������? " )
	Text( 1,  "��� ��? ", JumpPage, 2)
	Text( 1,  "��� ��� �� �����? ", JumpPage, 3 )
	
	Text( 1,  "� ����� ��� �����. �������. ", JumpPage, 4 )

	Talk( 2,  "�������: � ������� �� ������� ������� ����� ������. ���� � ��� ����� �� ���������, �� ����� ����. " )
	Text( 2,  "�����. ", JumpPage, 1)

	Talk( 3,  "�������: ��� ����� ������������� ����� �� ���� ��������. � ��� ��� ������� ������� � ��������� � ��� ��������� ������ ���������������. " )
	Text( 3,  "�����. ", JumpPage, 1)

	Talk( 4,  "�������: ������, ���� ��� ����� ����� ������ - �����������. " )
	Text( 4,  "� ���� ������ ��� �������. ", JumpPage, 5)
	
	Talk( 5,  "�������: �� �����������, ���������. " )
	Text( 5,  "�������������� � ��������� �������. ", JumpPage, 6)
	
	Talk( 6,  "�������: ����� �������� ����� ������ ����� ����� �������� � �������� �������. ��� ������� � ������� ������ ��� � ������� �������� ��������� ����� ������ �������. ������ � ��� ��������� ��������� � ������ �������� ����� ����� �� ����� ��� ��������� �������. ���� ����� ������� ����� ����� ��� ��������� ����, �� �� ���� �� ��� ���� �������. " )
	Text( 6,  "�������! � ���. ", JumpPage, 7)

	InitTrigger()

	TriggerCondition( 1, NoRecord, 500 )

	TriggerAction( 1, CloseTalk )
	TriggerAction( 1, AddExp, 100, 200 )
	TriggerAction( 1, SetRecord, 500 )
	TriggerAction( 1, AddMoney, 100 )
	
	Talk( 7,  "�������: ��� ���� �� ����� �������� ����� ������ � �������� ���� �������� � ���������� ���������������. ���� ����������� ������� - 100 ������� � ���������� ������� � ��������� �� 5���. " )
	Text( 7,  "�������! ",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8,  "�������: ����������� ����� ��������� � ����� ����������� ��� ��. " )
	Text( 8,  "�������. � ���� ������������. ",  CloseTalk )


	InitTrigger()

	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, JumpPage, 8 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

----------------ע������

	AddNpcMission ( 203 )
	AddNpcMission ( 204 )
	AddNpcMission ( 205 )
	AddNpcMission ( 206 )
	AddNpcMission ( 221 )
	AddNpcMission ( 222 )
	AddNpcMission ( 1002 )
	AddNpcMission ( 1057 )
	AddNpcMission ( 1112 )
	AddNpcMission ( 1166 )
	AddNpcMission ( 55 )
	AddNpcMission ( 56 )
	AddNpcMission ( 57 )
	AddNpcMission ( 1220 )
	AddNpcMission ( 319 )
	AddNpcMission ( 325 )
	AddNpcMission ( 326 )
---------eleven
	AddNpcMission ( 5037 )	



	MisListPage(8)
end 
---------------<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<NPC ��˹���ء�������!
----------------------------------------------------------
--							--
--							--
--		������[������]				--
--							--
--		227725,276925				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk02 ()

	
	Talk( 1,  "������: ������������ ������� �������. " )
	Text( 1,  "�������� �����. ", JumpPage, 2)
	Text( 1,  "�������� 10 �������� �����. ", JumpPage, 3)
	Text( 1,  "�������� 100 �������� �����. ", JumpPage, 4)
	Text( 1,  "�������� 1000 �������� �����. ", JumpPage, 5)
	Text( 1,  "������� ����������. ", JumpPage, 7 )
	Text( 1,  "�� ��������... ", CloseTalk)
	
	
	Talk( 2,  "������: ����� ������� �������� ����� ���������� 1 ������ ����, 1 �������� ����������, 1 ��������� ������ � 1 ������ �����. " )
	Text( 2,  "������� �������� �����. ", GetChaName_21, 1 )

	Talk( 3,  "������: �� ������ �������� 10 �������� ����� �� 1 ������� �������. ")
	Text(3, "�������� ",  GetChaName_22, 1)

	Talk( 4,  "������: �� ������ �������� 100 �������� ����� �� 3 ��������� ����������. ")
	Text(4, "�������� ",  GetChaName_23, 1)

	Talk( 5,  "������: �� ������ �������� 1000 �������� ����� �� 1 ������� � ������� 4. ")
	Text(5, "�������� ",  GetChaName_24, 1)
	
	InitTrigger() --�Ի�����
	TriggerCondition( 1, HasItem, 3904, 15 )
	TriggerCondition( 1, HasItem, 3911, 15 )
	TriggerCondition( 1, HasItem, 4450, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 3904, 15 )
	TriggerAction( 1, TakeItem, 3911, 15 )
	TriggerAction( 1, TakeItem, 4450, 1 )
 	TriggerAction( 1, GiveItem, 3342, 1 ,4)
	TriggerFailure( 1, JumpPage, 9 ) 
	Talk( 7,  "������: ����� ��� 15 ������� ������, 15 ���������� �������, � 1 �������� ����� ��� ������ �� ����������. ")
	Text( 7,  "�����. ", MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 9,  "������ � ��� ��� ����������� ������������. ")

	MisListPage(1)

	AddNpcMission ( 282 )
	AddNpcMission ( 283 )
	AddNpcMission	(1026)
	AddNpcMission	(1084)
	AddNpcMission	(1137)
	AddNpcMission	(1189)
	AddNpcMission(	1224	)
	AddNpcMission(	373	)
	AddNpcMission(	374	)
	AddNpcMission(	388	)
--	AddNpcMission( 906 )



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����̽���




----------------------------------------------------------
--							--
--							--
--		������[ҩ�����ˡ�����ķ]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function r_talk03 ()

	Talk( 1,  "�����: ��������� �� ��� �����, ��� �������� ���� �����. " )
	Text( 1,  "���� ", BuyPage)
	Text( 1,  "�������  ", SalePage)
	Text( 1,  "������� ����������������� �����. ", JumpPage, 5)


	Talk( 4,  "Ditto: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Shaitan by using the teleporter. " )
	Text( 4,  "���� ", BuyPage)
	Text( 4,  "Sell items! ", SalePage )
	Text( 4,  "Decoct Recovery Potion ", JumpPage, 5)

---------------�����ʲ�ҩˮ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3133, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5,  "�����: �� ������ ���������� � ���� ����� �������� �����, � ������� ����������. " )
	Text( 5,  "����������� ��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 )
	--------------�������񻨲�
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5,  "������� ��� �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------�ϳ����������
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3131, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3131, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3135, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 5,  "������� ����-���� ", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------������ѿ��
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3132, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3132, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3136, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5,  "������� ������ ������� ����� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6,  "�����: ������ ������! ���, ������� ��� �������. ����� �����! " )
	Talk( 7,  "�����: ��� �������� 1 ���������� ����� ���������� 10 �������� �����, 1 ������ � 50 ������! " )
	Talk( 8,  "�����: ��� �������� 1 ��� �������� ���������� 10 ��������� ����������, 1 ������ � 50 ������! " )
	Talk( 9,  "�����: ��� �������� 1 ����-���� ���������� 10 ����-�������, 1 ������ � 50 ������! " )
	Talk( 10,  "�����: ��� �������� 1 ������ ������� ����� ���������� 10 ������� �������, 1 ������ � 50 ������! " )

	InitTrade()
	Other(	1847	)
	Other(	6203	)
	Other(	6204	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)
	Other(	0854	)
	
	



--����д����ļ��


-----------����9��������ҿ���תְ
	--InitTrigger()
	--TriggerCondition( 1, LvCheck,  "> ", 8 )
	--TriggerCondition( 1, LvCheck,  "< ", 10 )
	---TriggerAction( 1, JumpPage, 4 )
	--TriggerFailure( 1, JumpPage, 1 )

	--Start( GetMultiTrigger(), 1 )

---------------------ע������
	MisListPage(1)

	AddNpcMission ( 707 )
	--AddNpcMission ( 733 )
	--AddNpcMission ( 738 )
	--AddNpcMission ( 739 )
	AddNpcMission ( 214 )
	AddNpcMission ( 215 )
	AddNpcMission ( 217 )
	AddNpcMission ( 218 )
	AddNpcMission ( 219 )
	AddNpcMission ( 220 )
	AddNpcMission	(1046)
	AddNpcMission	(1208)
	AddNpcMission	(73)
	AddNpcMission	(74)
	AddNpcMission	(75)
	--AddNpcMission	(913)
	--AddNpcMission	(914)
	--AddNpcMission	(915)
	--AddNpcMission	(916)
-------------eleven
	AddNpcMission	(5027)
	AddNpcMission	(5035)
	AddNpcMission	(5036)

	MisListPage(4)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ҩ�����ˡ�����ĸ����



----------------------------------------------------------
--							--
--							--
--		������[��ʿС�㡪����]			--
--							--
--		224575,277025				--
----------------------------------------------------------

---------------��Ѫ�ָ����ж�


----------------��ͨ�Ի���ʼ
function r_talk04 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1,  "�����: ������! � ��������� �����! ����� ���� ���� ������ ��� ������������. " )
--	Text( 1, "���������� ��� ", SetSpawnPos, "Xaoc" )
	Text( 1,  "������� ��������� ", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1,  "��������� ", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1,  "Build Ship ", JumpPage, 10)

	Talk( 2,  "�����: ����� ��������, �� ������� ��������� ����� 200 �������. � ��� ������������ �����! " )

	Talk( 3,  "�����: ����� ��������, �� ��������� ����� 50 �������. � ��� ������������ �����! " )

	Talk( 4,  "� �� ��� �������� ������. ������� �� ��������. " )

	Talk( 5,  "�������� ���. ��� �������� ������� �� ���� �������� ������. " )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6,  "�����: ������! � ��������� �����! ����� ���� ���� ������ ��� ������������. " )
	Text( 6,  "������� ��������� ", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6,  "��������� ", MultiTrigger,GetMultiTrigger(),2)
	

	InitTrigger()
	TriggerCondition( 1, HasMission, 53 )
	TriggerCondition( 1, HasFlag, 53, 1 )
	TriggerCondition( 1, NoRecord, 53 )
	TriggerCondition( 1, NoFlag, 53, 4 )
	TriggerCondition( 1, HasItem, 2304, 1 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )
	AddNpcMission	(1048)
	AddNpcMission	(1210)
	AddNpcMission	(920)-----------------------------------------
	AddNpcMission	(921)

	MisListPage(6)
	
	-----��������
	AddNpcMission ( 6117 )
	AddNpcMission ( 6118 )
	AddNpcMission ( 6119 )
	AddNpcMission ( 6120 )

end 

function r_Bounty ()

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1,  "�����: ������! � ��������� �����! ����� ���� ���� ������ ��� ������������. " )
	Text( 1,  "������� ��������� ", MultiTrigger,GetMultiTrigger(),2)
	Text( 1, "���������� ��� ", SetSpawnPos, "\207\238\228\231\229\236\229\235\252\229 \193\224\243\237\242\232" )

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1,  "��������� ", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1,  "Build Ship ", JumpPage, 10)

	Talk( 2,  "�����: ����� ��������, �� ������� ��������� ����� 200 �������. � ��� ������������ �����! " )

	Talk( 3,  "�����: ����� ��������, �� ��������� ����� 50 �������. � ��� ������������ �����! " )

	Talk( 4,  "� �� ��� �������� ������. ������� �� ��������. " )

	Talk( 5,  "�������� ���. ��� �������� ������� �� ���� �������� ������. " )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6,  "�����: ������! � ��������� �����! ����� ���� ���� ������ ��� ������������. " )
	Text( 6,  "������� ��������� ", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6,  "��������� ", MultiTrigger,GetMultiTrigger(),2)
	

	InitTrigger()
	TriggerCondition( 1, HasMission, 53 )
	TriggerCondition( 1, HasFlag, 53, 1 )
	TriggerCondition( 1, NoRecord, 53 )
	TriggerCondition( 1, NoFlag, 53, 4 )
	TriggerCondition( 1, HasItem, 2304, 1 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )


	MisListPage(6)
	
	-----��������


end 

function r_DW ()

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1,  "�����: ������! � ��������� �����! ����� ���� ���� ������ ��� ������������. " )
	Text( 1,  "������� ��������� ", MultiTrigger,GetMultiTrigger(),2)
	Text( 1, "���������� ��� ", SetSpawnPos, "\207\238\228\231\229\236\229\235\252\229 \204\232\240 \196\229\236\238\237\238\226" )

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1,  "��������� ", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1,  "Build Ship ", JumpPage, 10)

	Talk( 2,  "�����: ����� ��������, �� ������� ��������� ����� 200 �������. � ��� ������������ �����! " )

	Talk( 3,  "�����: ����� ��������, �� ��������� ����� 50 �������. � ��� ������������ �����! " )

	Talk( 4,  "� �� ��� �������� ������. ������� �� ��������. " )

	Talk( 5,  "�������� ���. ��� �������� ������� �� ���� �������� ������. " )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6,  "�����: ������! � ��������� �����! ����� ���� ���� ������ ��� ������������. " )
	Text( 6,  "������� ��������� ", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6,  "��������� ", MultiTrigger,GetMultiTrigger(),2)
	

	InitTrigger()
	TriggerCondition( 1, HasMission, 53 )
	TriggerCondition( 1, HasFlag, 53, 1 )
	TriggerCondition( 1, NoRecord, 53 )
	TriggerCondition( 1, NoFlag, 53, 4 )
	TriggerCondition( 1, HasItem, 2304, 1 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )


	MisListPage(6)
	
	-----��������


end

function r_FC ()

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1,  "�����: ������! � ��������� �����! ����� ���� ���� ������ ��� ������������. " )
	Text( 1,  "������� ��������� ", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1, "���������� ��� ", SetSpawnPos, "\207\238\228\231\229\236\229\235\252\229 \199\224\242\229\240\255\237\237\238\227\238 \195\238\240\238\228\224" )

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1,  "��������� ", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1,  "Build Ship ", JumpPage, 10)

	Talk( 2,  "�����: ����� ��������, �� ������� ��������� ����� 200 �������. � ��� ������������ �����! " )

	Talk( 3,  "�����: ����� ��������, �� ��������� ����� 50 �������. � ��� ������������ �����! " )

	Talk( 4,  "� �� ��� �������� ������. ������� �� ��������. " )

	Talk( 5,  "�������� ���. ��� �������� ������� �� ���� �������� ������. " )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6,  "�����: ������! � ��������� �����! ����� ���� ���� ������ ��� ������������. " )
	Text( 6,  "������� ��������� ", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6,  "��������� ", MultiTrigger,GetMultiTrigger(),2)
	

	InitTrigger()
	TriggerCondition( 1, HasMission, 53 )
	TriggerCondition( 1, HasFlag, 53, 1 )
	TriggerCondition( 1, NoRecord, 53 )
	TriggerCondition( 1, NoFlag, 53, 4 )
	TriggerCondition( 1, HasItem, 2304, 1 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )


	MisListPage(6)
	
	-----��������


end



-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡪����         ������



----------------------------------------------------------
----							--
--							--
--		������[�ư�Ů - ����]			--
--							--
--		225325,278875				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk05 ()

	Talk( 1,  "�����: ������, � �����! �� ������������� �����? �������� �� ������ ��� ����� ������������� �������... " )
	Text( 1,  "������ ���� ", BuyPage )
	Text(1,  "�������� ��������� ",JumpPage,4)
	--Text(1,  "������ � ������������ �������� ",JumpPage,7)
	InitTrade()
	Other(	3916	)

	Talk( 2,  "�����: � ������� �� ����� ���� ������ ��������������? � ���� ���� � ������ ���. ���� �� ������ ��� ������, �� ��������� ��� 100000 �������. " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 4072, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2,  "���� ������ �������������� ", MultiTrigger,GetMultiTrigger(),1)

	Talk( 3,  "�����: ������� �� ������ ������������ �����. ��� ���� �� ��� ������! ������������� ��� �������� ����������� �����. " )

	Talk(4, "��������� ����� �����! �� ��� ������ �������� ��� �������� �������� ���������. ���������� ��������� �� ������ �������� ����� �� ����������� ��������. ")
	Text(4, "� ���� � ���� ���������. � ����� ����� �������� �������. ", JumpPage,5)

	Talk(5, "�������� ������ �������. ����� �� �������� ������� ���� ��������� ����� ���������. ")
	InitTrigger()
	TriggerCondition( 1, HasCredit,20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20 )
	TriggerAction( 1, GiveItem, 2602,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5, "������� ��������� ������� - ��������� 20 ����� ���������. " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200 )
	TriggerAction( 1, GiveItem, 2603,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5, "������� ���������� �����. ��. - ��������� 200 ����� ���������. " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 2604,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5, "������� ���������� ���. ��. - ��������� 2000 ����� ���������. " ,MultiTrigger,GetMultiTrigger(),1)
	Talk(6, "���������� ��������� ���� �� � ��� ��������� ������ � ��������� � ��� �� ������ ���������� ���������. ���������� ��������� �� ������ �������� ���� ���� �������. ",CloseTalk)

	Talk(7, "������! �� ������ ������� � ������ ������ ������� � �������� ����������. ������ ��������� ���������� ��������� �� ������ �������� �� �� ����������� ��������. ")
	InitTrigger()
	TriggerCondition( 1, HasCredit,500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerAction( 1, GiveItem, 855,5,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "5 ����� ��� - ��������� 500 ����� ���������. " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 5000 )
	TriggerAction( 1, GiveItem, 3094,3,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "3 ��������� ���������� - ��������� 5000 ����� ���������. " ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,20000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20000 )
	TriggerAction( 1, GiveItem, 0610,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "��������������� ���������� ������ - ��������� 20000 ����� ���������. " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 50000 )
	TriggerAction( 1, GiveItem, 0885,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "��������� �������� 1 ������ - ��������� 50000 ����� ���������. " ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200000 )
	TriggerAction( 1, GiveItem, 0862,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "�������� ������� - ��������� 200000 ����� ���������. " ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,600000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 600000 )
	TriggerAction( 1, GiveItem, 1012,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "�������� ���� - ��������� 600000 ����� ���������. " ,MultiTrigger,GetMultiTrigger(),1)

	Talk(8, "����� ���������� � ����������� ������! ��������� ������ ��� ���������� ����� ����. ")

	InitTrigger()
	TriggerCondition( 1, HasRecord, 255 )
	TriggerCondition( 1, NoItem, 4072, 1 )
	TriggerCondition( 1, NoRecord, 242 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )


	Start( GetMultiTrigger(), 1 )

	MisListPage(2)

	AddNpcMission ( 268 )
	AddNpcMission ( 269 )
	AddNpcMission ( 288 )
	AddNpcMission ( 502 )
	AddNpcMission ( 334 )
	AddNpcMission ( 6081 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ư�Ů - ���Ƚ���



----------------------------------------------------------
--							--
--							--
--		������[Сɽ��]				--
--							--
--		219350,273050				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk06 ()
	
	
	Talk( 1,  "����� �������: ���������� ��� ���� � ������� � �������? ��� � �������� ����� � ���� ���������� ����? � ������� �������� ����� ������ ����������� ���. " )
	--Text( 1,  "Learn Navigation Skill ", BuyPage )
	Text(1, "������� ��������� ������� ",JumpPage,2)
	Text( 1,  "������� �� ���������. ", CloseTalk)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeItem, 3933, 10 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, GiveItem, 1812, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "����� �������: �, ����� ��� ������ �����. � ��������� ����� �� ��� ���� ������� �� � ����� �������! ��������� ��� 10 ������� ������ � 5000 ������� � � ������ ��� ��� ��������� �������. " )
	Text( 2,  "������� ��������� ������� ",  MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2,  "���, � ���������. ", CloseTalk)

	Talk(3,  "����� �������: ���, ������� ��������� �������. �� �������� ��� ���������� � ����������� �����. ��������� ���� ��� ����������� ���. ")

	Talk(4,  "����� �������: ��������, � ��� ��� 10 ������� ������ ��� 5000 �������. ")

	InitTrade()
	Other(	3243	)
	Other(	3244	)
	Other(	3245	)
	Other(	3246	)
	Other(	3247	)
	Other(	3248	)
	Other(	3249	)
	Other(	3250	)
	Other(	3251	)
	Other(	3252	)
	Other(	3253	)
	Other(	3254	)
	Other(	3255	)
	Other(	3256	)
	Other(	3257	)
	Other(	3258	)
	Other(	3259	)
	Other(	3260	)
	Other(	3261	)
	Other(	3262	)
	Other(	3263	)
	Other(	3264	)
	Other(	3265	)
	Other(	3266	)
	Other(	3267	)
	Other(	3268	)
	Other(	3269	)
	Other(	3270	)
	Other(	3271	)
	Other(	3272	)
	Other(	3273	)
	Other(	3274	)
	Other(	3275	)
	Other(	3276	)
	Other(	3277	)
	Other(	3278	)
	Other(	3279	)
	Other(	3280	)
	Other(	3281	)
	Other(	3282	)
	Other(	3283	)
	Other(	3284	)
	Other(	3285	)
	Other(	3286	)
	Other(	3287	)
	Other(	3288	)
	Other(	3289	)
	Other(	3290	)
	Other(	3291	)
	Other(	3292	)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 748 )
	AddNpcMission	(1045)
	AddNpcMission	(1099)
	AddNpcMission	(1157)
	AddNpcMission	(758)
	AddNpcMission	(103)
	AddNpcMission	(191)
	AddNpcMission	(192)
	AddNpcMission	(193)
	AddNpcMission	(197)
	AddNpcMission(	1225	)
	AddNpcMission(	503	)
	AddNpcMission	(330)
	AddNpcMission	(331)
	AddNpcMission	(332)
	AddNpcMission	(335)
	AddNpcMission	(359)
	AddNpcMission	(360)
	AddNpcMission	(361)
	AddNpcMission	(362)
	AddNpcMission	(363)
	AddNpcMission	(364)
	AddNpcMission	(365)
	AddNpcMission	(366)
	AddNpcMission	(367)
	AddNpcMission	(368)
	AddNpcMission	(369)
	AddNpcMission	(370)
	AddNpcMission	(371)
	AddNpcMission	(522)
------------eleven
	AddNpcMission	(5058)
	AddNpcMission	(5062)
	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Сɽ������






----------------------------------------------------------
--							--
--							--
--		������[�ӻ����� - ������]			--
--							--
--		225075,277025				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk07 ()

	Talk( 1,  "���������: ������! ���� � ���� ���-������ ������? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )
	Text( 1,  "������� ����� ����������. ",JumpPage, 2 )

	InitTrade()
	Other(	3297	)
	Other(	3298	)
	Other(	3164	)
	Other(	3160	)
	Other(	3161	)
	Other(	3165	)
	Other(	3238	)
	Other(	3170	)
	Other(	3293	)
	Other(	3174	)
	Other(	3163	)
	Other(	3176	)
	Other(	3180	)
	Other(	3179	)
	Other(	3177	)
	Other(	3168	)
	Other(	3162	)
	Other(	3166	)
	Other(	3167	)
	Other(	3172	)
	Other(	3173	)
	Other(	3227	)
	Other(	3231	)
	Other(	3228	)
	Other(	3229	)
	Other(	3230	)
	Other(	3232	)
	Other(	3233	)
	Other(	3234	)
	Other(	3235	)
	Other(	3236	)
	Other(	3237	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other(	3296	)
	Other(	3299	)
	--baby--�������Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
	Other(  2440    )
	--AddNpcMission	(5501)


	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "��� �������� ����� ���������� ���������� 1 ���������� ������, 10000 ������ � 10 ����� �������� 3 ������. " )
	Text( 2,  "�������� ������� ����� �� ����� ����������. ", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2,  "Exchange Razor Tooth for Reality Mask ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4545, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4545, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "�������� ���� �� ����� ����������. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4543, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4543, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "�������� ������ �� ����� ����������. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1478, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1478, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "�������� ������ �� ����� ����������. ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "��������: �������! ����� ���������� ������. " )
	Talk( 4,  "��������: �� �� ������ ���� ����������� ����������� ��� ��� ��������� ������������. " )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����� - ����������


----------------------------------------------------------
--							--
--							--
--		������[�����������]			--
--							--
--		227459,277722				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk08 ()

	Talk( 1,  "��������: ������! ����� �� �����������... ������... ������ ���. �� ����� ��������... " )
	Text( 1,  "������� ����������� ���� ", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "�� ������ ������������� ������� � �������� ����? ����� �� ������������� �� ������! " )
	Text( 2,  "������� ��� ����������� ������. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3123, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2,  "������� ��� �� ������� �������. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3124, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2,  "������� ������� ���. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3125, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 2,  "������� ��� ������ �������. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3126, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2,  "������� ���������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "��������: ��� �� ��� �� ������! �� ������ � �� ������. " )
	Talk( 4,  "��������: ����� ������� 1 ��� ����������� ������ ���������� 10 ���������� ������� � 1 ������. " )
	Talk( 5,  "Margaret: ����� ������� 1 ��� �� ������� ������� ���������� 10 ������� ������� � 1 ������. " )
	Talk( 6,  "��������: ����� ������� 1 ������� ��� ���������� 10 ������ � 1 ������. " )
	Talk( 7,  "��������: ����� ������� 1 ��� ������ ������� ���������� 10 ������ ������� � 1 ������. " )
	Talk( 8,  "��������: ����� ������� 1 ���������� ���������� 10 �������� ������� � 1 ������. " )
	AddNpcMission	(1023)
	AddNpcMission	(1080)
	AddNpcMission	(1135)
	AddNpcMission	(1186)
	AddNpcMission(	1223	)
	




end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����������


----------------------------------------------------------
--							--
--							--

	--������[�õ��ϰ塤��������]		--
--							--
--		221150,278125				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk09 ()
	
	
	Talk( 1,  "������: ��� ���������� ������ ������ ��� �����? " )		
	Text( 1,  "������� ��������� ��� �����. ", JumpPage, 2)
	--Text( 1,  "���� Pet Items ", BuyPage )
	
	-- �������������� �����
	Text(1,  "����������� ������� ��������� ���� ", JumpPage, 10)
	Text(1,  "����������� �������������� ���� ", JumpPage, 13)

InitTrade()
	Other(	227	)
	Other(	5826	)
	Other(	5827	)
	Other(	5828	)
	Other(	578	) 
	Other(	262	)
	Other(	1015	)
	Other(	679	)
	Other(	222	)
	Other(	276	)
	Other(	5829	)
	Other(	5830	)
	Other(	223	)
	Other(	277	)
	Other(	5831	)
	Other(	5832	)
	Other(	224	)
	Other(	278	)
	Other(	5833	)
	Other(	5834	)
	Other(	225	)
	Other(	279	)
	Other(	5835	)
	Other(	5836	)
	Other(	226	)
	Other(	280	)
	Other(	5837	)
	Other(	5838	)
	Other(	244	)
	Other(	260	)
	Other(	253	)
	Other(	247	)
	Other(	250	)
	Other(	239	)
	Other(	608	)
	Other(	610	)
	Other(	3918	)
	Other(	3919	)
	Other(	3920	)
	Other(	3921	)
	Other(	3922	)
	Other(	3924	)
	Other(	3925	)
	Weapon(	2337	)
	Weapon(	5011	)
	
	Weapon(	3187	)
	Weapon(	3188	)
	Weapon(	3190	)
	Weapon(	3239	)
	Weapon(	3197	)
	Weapon(	3193	)
	Weapon(	3241	)
	Weapon(	3192	)
	Weapon(	3198	)
	Weapon(	3202	)
	Weapon(	3203	)
	Weapon(	3204	)
	Weapon(	3225	)
	Weapon(	3226	)
	Weapon(	3294	)
	Weapon(	3295	)
	Weapon(	3141	)
	Weapon(	4602	)
	Weapon(	4603	)
	Weapon(	4604	)
	Weapon( 3296 )
	--baby--�������Lv1
	Weapon(	2679	)
	Weapon(	2689	)
	Weapon(	2699	)
	Weapon(	2709	)
	--Leo
	Weapon(	1611	)
	Weapon(	1682	)
	Weapon(	1842	)
	Weapon(	1612	)
	Weapon(	1710	)
	Weapon(	1693	)
	Weapon(	4716	)
	Weapon(	1716	)
	Weapon(	1711	)
	Weapon(	3384	)
	Weapon(	3932	)
	Weapon(	1619	)
	Weapon(	2396	)
	Weapon(	1729	)
	Weapon(	4459	)
	Weapon(	1697	)
	Weapon(	1730	)
	Weapon(	1712	)
	Weapon(	1734	)
	Weapon(	1621	)
	Weapon(	1703	)
	Weapon(  2440    )
	
---------------------�����ζ�Ļ���
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 10,  "�������: ��� ��������� 10 ���������� � 10000 ������. ")
	Text(10,  "����������� ",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,  "�������: ��� ������� ���� �������! ������� �� ������� ��� ������ ����! " )

	Talk( 13,  "�������: ������ �������� �� ����� ���� �������������� ������! ")
	Text(13,  "������ �������������� ����. ",  JumpPage, 15)
	Text(13,  "������ �������������� ����. ",  JumpPage, 16)
	Text(13,  "������ �������������� ����. ", JumpPage, 17)
	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 14 )
	Talk( 15,  "�������: ������� ������� ��������������� ���� �� ������. ��� ���������� 10 ������ ������� ���������� � 1 ��������������� ����. ����� �� ������ ��������� 10000 ������. � ����� ����������� ��������������� ���� ���� 3 ����! ")
	Text( 15,  "����������� ",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 18 )
	Talk(16,  "�������: ������� ������� ��������������� ���� �� ������. ��� ���������� 10 ������ ������� ���������� � 1 ��������������� ����. ����� �� ������ ��������� 1000000 ������. � ����� ����������� ��������������� ���� ���� 3 ����! ")
	Text( 16,  "����������� ",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage,19 )
	Talk(17,  "�������: ������� ������� ��������������� ���� �� ������. ��� ���������� 10 ������ ������� ���������� � 1 ��������������� ����. ����� �� ������ ��������� 10000000 ������. � ����� ����������� ��������������� ���� ���� 3 ����! ")
	Text( 17,  "����������� ",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 14,  "�������: ������� �� �� ������ ���� ����������� ����������� ��� ���������� ������! ����� �� ������ ����� 1 ��������� ������ � ���������. �� ������� ��������������� ���� �������? �� ������� ����������� ��� ���� 3 ����! ")
	Talk( 18,  "�������: ������� �� �� ������ ���� ����������� ����������� ��� ���������� ������! ����� �� ������ ����� 1 ��������� ������ � ���������. �� ������� ��������������� ���� ������ ���? �� ������� ����������� ��� ���� 3 ����! ")
	Talk( 19,  "�������: ������� �� �� ������ ���� ����������� ����������� ��� ���������� ������! ����� �� ������ ����� 1 ��������� ������ � ���������. �� ������� ��������������� ���� � ������ ���? �� ������� ����������� ��� ���� 3 ����! ")
	Talk( 12,  "�������: ������� �� �� ������ ���� ����������� ����������� ��� ���������� ������! ����� �� ������ ����� 1 ��������� ������ � ���������. ")
------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1787, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1787, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1797, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "�������: ����� ���� � ��� �� ���� �������� ��������� ������. � ���� ����������� ��� ��� ��������� ��� ������������� ��� �����. " )
	Text( 2,  "������� ������� ��������� ", MultiTrigger, GetMultiTrigger(), 1)
---------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1788, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1788, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1798, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2,  "������� ��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1)
---------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 4606, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4606, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4607, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2,  "������� ������ ��������� ", MultiTrigger, GetMultiTrigger(), 1)
---------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 4608, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4608, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4609, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 2,  "������� ���������� ��������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "�������: ������! �������� ���� ������������ ���������, ��������� ������ ��� ���. " )
	Talk( 4,  "�������: ����� ����������� 1 ������� ��������� ���������� 5 ������� ������, 1 ������ ���, 1 �������� ������ � 200 �������. " )
	Talk( 5,  "�������: ����� ����������� 1 ��������� ��������� ���������� 5 ��������� ������, 1 ������ ���, 1 �������� ������ � 200 �������. " )

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 2 )
	TriggerAction( 1, AddExp, 116688305, 116688305 )
	TriggerAction( 1, AddExpAndType,2,370500,370500)
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6,  "Marriam: To test PK, I will make you Lv 65 and add 1 million gold for you. " )
	Text( 6,  "Ok ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7,  "Marriam: I only give this chance to level 1 new players. " )

	Talk( 8,  "�������: ����� ����������� 1 ������ ��������� ���������� 5 ������ ������, 1 ������ ���, 1 �������� ������ � 200 �������. " )
	Talk( 9,  "�������: ����� ����������� 1 ���������� ��������� ���������� 5 ���������� ������, 1 ������ ���, 1 �������� ������ � 200 �������. " )

	AddNpcMission	(1029)
	AddNpcMission	(1192)
	------------����-----------��Ϊ����-----------���֮��------------��������----------����̩
	--AddNpcMission	(5505)
	--AddNpcMission	(5506)
	--AddNpcMission	(5508)
	--AddNpcMission	(5509)
	--AddNpcMission	(5536)

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤��������




----------------------------------------------------------
--							--
--							--
--		������[��ķ]				--
--							--
--		222629,272668				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk11 ()
	
	
	Talk( 1,  "������: ������! � �������� ��� ���� ������� �������... ���������! �� �������! " )


	AddNpcMission	(1009)
	AddNpcMission	(1173)

	-----��������
	AddNpcMission ( 6123 )
	AddNpcMission ( 6124 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ķ



----------------------------------------------------------
--							--
--							--
--		������[ˮ�֡�����]			--
--							--
--		235013,284694				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk12 ()
	
	
	Talk( 1,  "����: ������! � ����� ����. " )

--	InitTrigger()
--	TriggerCondition( 1, HasMission, 1043 )
--	TriggerCondition( 1, HasRecord, 1042 )
--	TriggerCondition( 1, NoRecord, 1058 )
--	TriggerAction( 1, JumpPage, 2 )
--	TriggerFailure( 1, JumpPage, 3 )
--	Text( 1,  "First question ",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1044 )
--	TriggerAction( 1, SetRecord, 1058 )
--	TriggerAction( 1, JumpPage, 4 )
--	Talk( 2,  "Is killing Mystic Shrubs fun? ")
--	Text( 2,  "Good ",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1045 )
--	TriggerAction( 1, SetRecord, 1058 )
--	TriggerAction( 1, JumpPage, 5 )
--	Text( 2,  "Not happy ",MultiTrigger, GetMultiTrigger(), 1  )
--
--
--	Talk( 3,  "Who are you? I do not know you! ")
--	Talk( 4,  "Good? Let's continue. ")
--	Talk( 5,  "No satisfied? Let's change another for you to kill ")

	AddNpcMission	(1039)
	AddNpcMission	(1202)
	AddNpcMission	(80)
	AddNpcMission	(81)
	AddNpcMission	(79)
	----------------����˹-����---01
	AddNpcMission	(5510)
	AddNpcMission ( 6061 )
	AddNpcMission ( 6062 )
	AddNpcMission ( 6063 )
	AddNpcMission ( 6064 )
	AddNpcMission ( 6065 )
	AddNpcMission ( 6066 )
	AddNpcMission ( 6067 )
	AddNpcMission ( 6068 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ˮ�֡�����


----------------------------------------------------------
--							--
--							--
--		������[���г��ɡ�Ħ����]			--
--							--
--		222050,270400				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk13 ()
	
	
	Talk( 1,  "������: ������! � ������ ������! � ����� ����� ���� ���� ������ ��� �������� �������! " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "��������� (��������� 200 �������) ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "������������� ", OpenUnite)
	Text( 1, "���� ", BuyPage)	
	Talk( 2,  "��������, �� �� ������ ����������� ���������� ������! " )
	
   InitTrade()
   Other(   0886   )

	AddNpcMission	(1050)
	AddNpcMission	(1212)
	AddNpcMission ( 6091 )
	AddNpcMission ( 6092 )
--------��������-----------
	AddNpcMission ( 6768 )
	AddNpcMission ( 6769 )
	AddNpcMission ( 6770 )


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ�Ħ����

----------------------------------------------------------
--							--
--							--
--		������[�����ٽ�������˹]			--
--							--
--		230228,270157				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk14 ()
	
	
	Talk( 1,  "������: ������, � ������� ������. ��� � ����� �������! " )
	

	InitTrigger()
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, GiveItem, 4082, 1, 4)
	Talk( 2,  "������: ���? �� �������� ������� ����������� ����? ��������� �� ����� � ���� ������������� ��� ����. � ������� �� 20000 ������ � ����� ��� ��� ������������! ")
	Text( 2,  "������, � ���� ������ ������� ����������� ����. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasMission, 248 )
	TriggerCondition( 1, NoItem, 4082, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, HasRecord, 249 )
	TriggerCondition( 2, NoRecord, 250 )
	TriggerCondition( 2, NoItem, 4082, 1 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerFailure( 2, JumpPage, 1 )

	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 207 )
	AddNpcMission ( 208 )
	AddNpcMission ( 209 )
	AddNpcMission ( 212 )
	AddNpcMission ( 213 )
	AddNpcMission ( 216 )
	AddNpcMission ( 274 )
	AddNpcMission ( 275 )
	AddNpcMission ( 276 )
	AddNpcMission	(1016)
	AddNpcMission	(1179)
	AddNpcMission	(69)
	AddNpcMission	(70)
	AddNpcMission	(71)
	AddNpcMission	(194)
	AddNpcMission	(195)
	AddNpcMission	(196)
	AddNpcMission	(318)
	AddNpcMission	(323)
	AddNpcMission	(324)
----------eleven
	AddNpcMission	(5053)

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ٽ�������˹



----------------------------------------------------------
--							--
--							--
--		������[ɳᰳǴ�ʹ��ϯ��]			--
--							--
--		225648,270640				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk15 ()
	
	
	Talk( 1,  "�����: ���� � � �����, �� ��� �� �� ���� ��������� ��� ���� ����� � ������. �� ����� ������ ������ ����� ������������ ���. " )

	AddNpcMission	(1032)
	AddNpcMission	(1195)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳᰳǴ�ʹ��ϯ��


----------------------------------------------------------
--							--
--							--
--		������[�������̻�᳤�����׵���˹]		--
--							--
--		224207,274850				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk16 ()
	
	
	Talk( 1,  "�����: � ��������� � ������� �� ��� �������� � ���� ������. � ���� ������� ��� ��� ����� ����� ������� � �������. " )
	
	AddNpcMission ( 271 )
	AddNpcMission ( 277 )
	AddNpcMission ( 278 )
	AddNpcMission ( 280 )
	AddNpcMission ( 286 )
------------1.7
	AddNpcMission (5076 )
	AddNpcMission (5077 )
	AddNpcMission (5078 )
	AddNpcMission (5079 )
	AddNpcMission (5088 )
	AddNpcMission (5110 )
	AddNpcMission (5112 )
	AddNpcMission (5114 )
	AddNpcMission (5116 )
	AddNpcMission (5147 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������̻�᳤�����׵���˹

----------------------------------------------------------
--							--
--							--
--		������[���ߡ���Ϳɽ��]			--
--							--
--		227208,270036				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk17 ()
	
	
	Talk( 1,  "�������: ������� ����� ����� ����� ������� �������! " )

	AddNpcMission ( 266 )
	AddNpcMission ( 267 )
	AddNpcMission ( 270 )
	AddNpcMission ( 272 )
	AddNpcMission ( 273 )
	AddNpcMission ( 337 )
	AddNpcMission ( 338 )
	AddNpcMission ( 554 )
	AddNpcMission ( 555 )
	AddNpcMission ( 901 )
	AddNpcMission	(5557)
	AddNpcMission	(5558)
	AddNpcMission ( 6094 )
	--AddNpcMission ( 6126 )
--	AddNpcMission( 6167 )
	--AddNpcMission( 6168 )
--	AddNpcMission( 6169 )
--	AddNpcMission( 6170 )
	--AddNpcMission( 6173 )


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ߡ���Ϳɽ��

----------------------------------------------------------
--							--
--							--
--		������[�᳤��������]			--
--							--
--		224075,275275				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk18 ()
	
	
	Talk( 1,  "����: � ����� � ������ ��������� ���� ����� � � ������������� ����� ���� �� ������. " )
	
	AddNpcMission ( 76 )
	AddNpcMission ( 77 )
	AddNpcMission ( 78 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�᳤��������

----------------------------------------------------------
--							--
--							--
--		������[·�ˡ���]				--
--							--
--		221588,282819				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk19 ()
	
	
	Talk( 1,  "��������: �� ���� ������� �������� ���������� ����� ��� ������� ���������� �������. ��� ������! � ����� ������� � ����� �������� �����. ���� �� � ���� �� ������ �������� ������ 13, � ����� �� ��� �� ����� �������. " )
	
	AddNpcMission ( 6086 )
	AddNpcMission ( 6089 )
	AddNpcMission ( 6090 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���

----------------------------------------------------------
--							--
--							--
--		������[�ƹ��ҵ���]			--
--							--
--		236002,281965				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk20 ()
	
	
	Talk( 1,  "������: �? ���? �� ��� �� ������? ����� �� �� �� ������. " )
	
	AddNpcMission ( 500 )
	AddNpcMission ( 501 )
	AddNpcMission ( 358 )
	AddNpcMission ( 372 )
	AddNpcMission ( 6082 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ƹ��ҵ���

----------------------------------------------------------
--							--
--							--
--		������[���ꡤ�Ƶ�]			--
--							--
--		196225,269425				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk21 ()
	
	
	Talk( 1,  "�����: ������, � �����. � ��? ������� ��� �� ����� �� ����������� � ��������� �����. " )
	
	AddNpcMission ( 210 )
	AddNpcMission ( 211 )
	AddNpcMission	(1034)
	AddNpcMission	(1197)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ꡤ�Ƶ�

----------------------------------------------------------
--							--
--							--
--		������[����ʦ��������]			--
--							--
--		173269,278261				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk22 ()
	
	
	Talk( 1,  "�������: ������ ������������ ����� ��� � ���! �� �� ���� ������� ����������� ����� ��� ��������. " )
	
	AddNpcMission	(1054)
	AddNpcMission	(1216)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ʦ��������


----------------------------------------------------------
--							--
--							--
--		������[D���̡���˽��]			--
--							--
--		2298,2520				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk23 ()
	
	
	Talk( 1,  "������������� �����: ����������� ������? � ���� ���, � ��� �� ����������! " )
	
	AddNpcMission	(1000)
	AddNpcMission	(1164)
			--------���˽�
	--AddNpcMission	(5601)
	--AddNpcMission	(5602)
	--AddNpcMission	(5603)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<D���̡���˽��


----------------------------------------------------------
--							--
--							--
--		������[����˾��١���˹����]		--
--							--
--		71350,141619				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk24 ()
	
	
	Talk( 1,  "�������: ������! � ������� ����� ������� � ����������. �� ������� ������������� � ����� �������? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "������� ������� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2,  "�������: ����� ������� ������� ����� �� ������ ��������� 100000 ������ � �������� ������ ������. ��� �� �������� ���� �����������. " )
        
	AddNpcMission	(566)
	AddNpcMission	(477)
	AddNpcMission	(478)
	AddNpcMission ( 6087 )
	AddNpcMission ( 6088 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˾��١���˹����


----------------------------------------------------------
--							--
--							--
--		������[�ưɷ���Ա������]			--
--							--
--		99053,133465				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk25 ()
	
	
	Talk( 1,  "����: ������! �� ������� ��� ������ ������ 13? ��� ��� ����! � ����� �������� �������� ��� ������� ����� � ����� ����� ������� ��� ���! " )
	AddNpcMission	(1022)
	AddNpcMission	(1079)
	AddNpcMission	(1134)
	AddNpcMission	(1185)
	AddNpcMission	(378)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ưɷ���Ա������

----------------------------------------------------------
--							--
--							--
--		������[ˮ�֡��ϰ�]			--
--							--
--		108330,128563				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk26 ()
	
	
	Talk( 1,  "���: ������! � ����� ���. ������ ��������� � �������� ����, ��� ���� ����� �������� ��������, � �������� �����! ��� ������� ��� ���� ����� ��� ���. �, ��� ������ ����... " )
	AddNpcMission	(1038)
	AddNpcMission	(1092)
	AddNpcMission	(1150)
	AddNpcMission	(1201)
----------------����˹---ˮ�֡��ϰ�--01
	AddNpcMission (5535 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ˮ�֡��ϰ�






----------------------------------------------------------
--							--
--							--
--		������[��ҽ����ɳ]			--
--							--
--		77300,154900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk28 ()
	
	
	Talk( 1,  "����: � ���� ��� �� �� ���? � ������� ������ ����������. �� ����� ���� �� ��������! " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)

	AddNpcMission	(1024)
	AddNpcMission	(1081)
	AddNpcMission	(1136)
	AddNpcMission	(1187)

	AddNpcMission (5130 )
	AddNpcMission (5131 )
	AddNpcMission (5132 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ҽ����ɳ

----------------------------------------------------------
--							--
--							--
--		������[���г��ɡ��꿨��]			--
--							--
--		74300,153400				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk29 ()
	
	
	Talk( 1,  "�������: ����� ���������� � ���� ����������! " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "��������� (200 �������) ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "������������� ", OpenUnite)
	Text( 1, "���� ", BuyPage)
	Talk( 2,  "��������, � ��� ������������ ������ ��� ����� � ���������! " )
	
   InitTrade()
   Other(   0886   )

	AddNpcMission	(1049)
	AddNpcMission	(1103)
	AddNpcMission	(1159)
	AddNpcMission	(1211)
	AddNpcMission	(320)
	AddNpcMission	(375)
	AddNpcMission	(376)
	AddNpcMission	(377)
	AddNpcMission	(432)
	AddNpcMission	(560)
	AddNpcMission	(561)
	AddNpcMission	(542)
	AddNpcMission	(562)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ��꿨��


----------------------------------------------------------
--							--
--							--
--		������[���������ʸ�]			--
--							--
--		76662,144769				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk30 ()
	
	
	Talk( 1,  "����������: ���? ������? ����. " )
	Text( 1,  "�������� ", JumpPage, 2)
	Text( 1,  "������... ",CloseTalk )


----------------����ˮ��ɰ��Ƭ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1784, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1784, 10 )
	TriggerAction( 1, GiveItem, 1785, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "����������: �����, �����, �����. � ��� ������ ����, ���� �����. " )
	Text( 2,  "�������� ����� ��������� ���������. ",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3,  "����������: ��� ����� ��������� ��������� �����. ����� ���� ����� ���� ����������� ������. " )
	Talk( 4,  "����������: ����� ����������� 1 ����� ��������� ��������� ��� ���������� 10 ��������� ����� � 200 ������. " )
	AddNpcMission	(1042)
	AddNpcMission	(1094)
	AddNpcMission	(1153)
	AddNpcMission	(1205)


	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���������ʸ�
----------------------------------------------------------
--							--
--							--
--		������[��Ů������]			--
--							--
--		74026,145143				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk31 ()
	
	
	Talk( 1,  "�����: ������! � ����� ������� ��������. ���� �� ������� ��� �� ������, �� ��������� ��� ����. " )
	
	Text( 1,  "������ ����-������� (��������) ", JumpPage,6 )
	Text( 1,  "������� ������ ", JumpPage,8 )
	Text( 1,  "������� ������ ", JumpPage,11 )
	Text( 1,  "������� �������� ", JumpPage,12 )
	Text( 1,  "������� ��������� ��� ����� ", JumpPage, 2)

	Talk( 6,  "�����: ���������� �������� ��������� � ������� �� ������ � ��������. ��� ������ ���������, ��� ����� ������ �������. �� ������� �����? �������� ��� ����� ����� ����������! " )

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 833 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6,  "����� ",MultiTrigger_1, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,833 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 834 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6,  "����� ",MultiTrigger_2, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,833 )
	TriggerAction( 1, SetRecord, 835 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6,  "������� ",MultiTrigger_3, GetMultiTrigger(), 1)

	Talk( 7,  "�����: ����� �����! " )
  



	InitTrigger()
	TriggerCondition( 1, HasRecord,833 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )
	TriggerAction( 1, SetLog  , 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 1 , 4)
	TriggerAction( 1, AddMoney, 10000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 8,  "�����: �������� 7 ������ ��� ��������� ������ ���� � �������� � ���������� ������. " )
	Text( 8,  "�������� ",MultiTrigger_0, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasRecord,834 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 3 , 4)
	TriggerAction( 1, AddMoney, 50000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 11,  "�����: �������� 7 ������ ��� ��������� ������ ���� � �������� � ���������� ������. " )
	Text( 11,  "�������� ",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasRecord,835 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 5 , 4)
	TriggerAction( 1, AddMoney, 80000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 12,  "�����: �������� 7 ������ ��� ��������� ������ ���� � �������� � ���������� ������. " )
	Text( 12,  "�������� ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 10,  "�����: �� �� ������� ��� �������, ��� ��� ��������� ������������. �������� ����� � ��� ��� ��������� �����. ")
	Talk( 9,  "�����: ������ ������ ���� ���! ")
	Talk( 13,  "�����: �� ������ ������ ���� ����� ���� 1 ���! ")

	InitTrigger()
	TriggerCondition( 1, HasItem, 1789, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1789, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1799, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "�����: ���������� ������� ��������? � ���������� ��� ��� ������ ���������! " )
	Text( 2,  "������� ������ ��������� ",MultiTrigger, GetMultiTrigger(), 1)
---------------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1790, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1790, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1800, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2,  "������� ������� ��������� ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "�����: ��� ���������, � ������� �� ���������! " )
	Talk( 4,  "�����: ����� ������� ������ ��������� ��������� 5 ������ ������, 1 ������ ���, 1 �������� ������ � 200 �������! " )
	Talk( 5,  "�����: ����� ������� ������� ��������� ��������� 5 ������� ������, 1 ������ ���, 1 �������� ������ � 200 �������! " )
	AddNpcMission	(1036)
	AddNpcMission	(1090)
	AddNpcMission	(1148)
	AddNpcMission	(1199)
	AddNpcMission	(867)
	AddNpcMission	(863)
	------------------------------------------
	AddNpcMission	(5536)
	AddNpcMission	(5537)
	AddNpcMission	(5538)
	AddNpcMission	(5539)
	AddNpcMission	(5540)
	AddNpcMission	(5541)

	AddNpcMission	(5542)
	AddNpcMission	(5543)
	AddNpcMission	(5544)
	AddNpcMission	(5545)
	AddNpcMission	(5546)
	AddNpcMission	(5547)

	AddNpcMission	(5548)
	AddNpcMission	(5549)
	AddNpcMission	(5550)
	AddNpcMission	(5551)
	AddNpcMission	(5552)


	AddNpcMission	(5597)
	AddNpcMission	(5600)
	
	-- ������������ �������
	AddNpcMission	(6001)
	-- ���������� �������
	AddNpcMission	(6002)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��Ů������


----------------------------------------------------------
--							--
--							--
--		������[ɳ�פ��������ʹ�����¼�]		--
--							--
--		71220,150827				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk32 ()
	
	
	Talk( 1,  "�����: ������! � ����� �������. � ��� ���� �������? ���� ��� ����� ���� � ���� �����! " )
	AddNpcMission	(1033)
	AddNpcMission	(1088)
	AddNpcMission	(1145)
	AddNpcMission	(1196)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳ�פ��������ʹ�����¼�

----------------------------------------------------------
--							--
--							--
--		������[�������ˡ��ݲ���ά˹]		--
--							--
--		74100,156300				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk33 ()
	
	
	Talk( 1,  "�����: ������! � ���� ������� � ���� ������. ����� ��� ��������� ���� ������. " )

	AddNpcMission	(1008)
	AddNpcMission	(1063)
	AddNpcMission	(1118)
	AddNpcMission	(1172)
	AddNpcMission	(850)
	AddNpcMission	(861)
	AddNpcMission	(868)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������ˡ��ݲ���ά˹

----------------------------------------------------------
--							--
--							--
--		������[�ù��ϰ塤��������]		--
--							--
--		69761,154269				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk34 ()
	
	
	Talk( 1,  "������� ����: ��� ��������� �������, ��������� ��� ������������. " )
	AddNpcMission	(1030)
	AddNpcMission	(1086)
	AddNpcMission	(1139)
	AddNpcMission	(1193)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ù��ϰ塤��������

----------------------------------------------------------
--							--
--							--
--		������[��װ����������]			--
--							--
--		75450,151200				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk35 ()
	
	
	Talk( 1,  "������: ������! � ������ ������ �� �������! " )
	Text( 1,  "�������... ",CloseTalk )
	AddNpcMission	(1010)
	AddNpcMission	(1066)
	AddNpcMission	(1122)
	AddNpcMission	(1174)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ����������

----------------------------------------------------------
--							--
--							--
--		������[������פ��������ʹ��������]		--
--							--
--		74171,155325				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk36 ()
	
	
	Talk( 1,  "���: ������ ���� �������� ������� ��� ����� �������. ������. " )
	AddNpcMission	(1003)
	AddNpcMission	(1058)
	AddNpcMission	(1113)
	AddNpcMission	(1167)
--	AddNpcMission ( 6025 )
--	AddNpcMission ( 6026 )
--	AddNpcMission ( 6027 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<������פ��������ʹ��������

----------------------------------------------------------
--							--
--							--
--		������[�����������Կ�]			--
--							--
--		79600,148800				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk37 ()
	
	
	Talk( 1,  "������: ������! � �������� �������� ����������. " )
	Text( 1,  "������... ",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "> ", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasItem, 1673, 1 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeItem, 1673, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 10 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck,  "> ", 39 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasItem, 1673, 1 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeItem, 1673, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 10  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	Talk(2,  "Pirates and monsters are rampant nowadays. We are lacking of Swordsman to deal with them. Hmm...You look suitable to become a Swordsman. Want to consider being the one to defend the peace? ")
	Text(2,  "Ok, become a White Knight ", MultiTrigger, GetMultiTrigger(), 2)
	Text(2,  "No, it is good enough for now. ", CloseTalk)

	Talk(3,  "Keeping the peace is the job of a White Knight. Please remember this in your heart. ")

	Talk(4,  "Want to become a White Knight? Come back to me when you have reached Lv 40. You must train your swordsmanship well. Remember to bring 1 Strange Metal Fragment and 20000G as a proof of your training too. ")
	

	
	
	
		

	----------תְ��Ϊ����ʿ
	--TriggerCondition( 1, LvCheck,  "> ", 39 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 1 )
	--TriggerAction( 1, JumpPage, 2 )

	--TriggerCondition( 2, LvCheck,  "> ", 39 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 1 )
	--TriggerAction( 2, JumpPage, 2 )

-------------------ת�ѻ����ж�

	AddNpcMission	(1019)
	AddNpcMission	(1074)
	AddNpcMission	(1130)
	AddNpcMission	(1182)
	AddNpcMission	(852)
	AddNpcMission	(855)
	AddNpcMission	(865)
	AddNpcMission	(473)

	MisListPage(5)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����������Կ�

----------------------------------------------------------
--							--
--							--
--		������[�ӻ����ˡ����]			--
--							--
--		72500,155100				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk38 ()
	
	
	Talk( 1,  "����: ������! �� ������� ��� ��� �������. �� ������ �������� ������� � ����! " )
	
	Text( 1,  "� ������� ��������� �������� � ���� �������� ���� �������! ", JumpPage,2 )
	Text( 1,  "� ���� �������� ������� ���� ����� <-> ��������� ������� ���! ", JumpPage,4 )
	
	Talk(2, "����: � ���� ������� �� �� ������ �������� ��� �� �������� �� ��������.�������� ����� �������� ������� �� ������ � �������� ,� ���� �� ���� �������� ������� � ������  ")

	InitTrigger()
	TriggerCondition( 1, HasItem, 7060, 1 )
	TriggerCondition( 1, HasItem, 7061, 1 )
	TriggerCondition( 1, HasItem, 7062, 1 )
	TriggerCondition( 1, HasItem, 7063, 1 )
	TriggerCondition( 1, HasItem, 7064, 1 )
	TriggerCondition( 1, HasItem, 7065, 1 )
	TriggerCondition( 1, HasItem, 7066, 1 )
	TriggerCondition( 1, HasItem, 7067, 1 )
	TriggerCondition( 1, HasItem, 7068, 1 )
	TriggerCondition( 1, HasItem, 7069, 1 )
	TriggerCondition( 1, HasItem, 7070, 1 )
	TriggerCondition( 1, HasItem, 7071, 1 )
	TriggerCondition( 1, HasItem, 7072, 1 )

	TriggerAction( 1, TakeItem,  7060, 1 )
	TriggerAction( 1, TakeItem,  7061, 1 )
	TriggerAction( 1, TakeItem,  7062, 1 )
	TriggerAction( 1, TakeItem,  7063, 1 )
	TriggerAction( 1, TakeItem,  7064, 1 )
	TriggerAction( 1, TakeItem,  7065, 1 )
	TriggerAction( 1, TakeItem,  7066, 1 )
	TriggerAction( 1, TakeItem,  7067, 1 )
	TriggerAction( 1, TakeItem,  7068, 1 )
	TriggerAction( 1, TakeItem,  7069, 1 )
	TriggerAction( 1, TakeItem,  7070, 1 )
	TriggerAction( 1, TakeItem,  7071, 1 )
	TriggerAction( 1, TakeItem,  7072, 1 )
	TriggerAction( 1, GiveItem,7705, 1,4 )
	TriggerFailure( 1, JumpPage, 3 ) 
	Text( 2, "��� ��� � �� ��������� ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk( 4,  "����: ��� �� ������ ��������?! " )
	
	InitTrigger()
	TriggerCondition( 2, HasItem, 4277, 1 )
	
	TriggerAction( 2, TakeItem,  4277, 1 )
	TriggerAction( 2, GiveItem,4278, 1,4 )
	
	Text( 4,  "� ���� �������� ������� ���� ����� �� ��������� ������� ��� ",MultiTrigger,GetMultiTrigger(),2)
	
	InitTrigger()
	TriggerCondition( 3, HasItem, 4278, 1 )
	
	TriggerAction( 3, TakeItem,  4278, 1 )
	TriggerAction( 3, GiveItem,4277, 1,4 )

	Text( 4,  "� ���� �������� ��������� ������� ��� �� ������� ���� ����� ! ",MultiTrigger,GetMultiTrigger(),3)

	Talk( 3, "�� ���� �������.������� �� ��������� ,� �� ����������� �� ���� ���! " )


	AddNpcMission	(1053)
	AddNpcMission	(1107)
	AddNpcMission	(1163)
	AddNpcMission	(1215)

		
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ����

----------------------------------------------------------
--							--
--							--
--		������[��Ů������]			--
--							--
--		101653,128642				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk39 ()
	
	
	Talk( 1,  "�����: �� ���� �� ������ ������. ��������� �� �� �������� �������? ��� ��������� � ������. ������� ������� �����. " )
	AddNpcMission	(1035)
	AddNpcMission	(1089)
	AddNpcMission	(1147)
	AddNpcMission	(1198)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��Ů������

----------------------------------------------------------
--							--
--							--
--		������[�����ܲ�ָ�ӹ١���.��˹��׼��]	--
--							--
--		80800,152100				--
---------------------2005-3-8-------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk40 ()
	
	
	Talk( 1,  "������� ���: � �������� ����� �������� ��� ������������. �� ������ ���������� ��� ���� �������������. " )
	AddNpcMission	(1017)
	AddNpcMission	(1071)
	AddNpcMission	(1127)
	AddNpcMission	(1180)
---------------����
	AddNpcMission	(5575)
	AddNpcMission	(5576)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ܲ�ָ�ӹ١���.��˹��׼��

----------------------------------------------------------
--							--
--							--
--		������[�����ܲ���ı������������У]		--
--							--
--		65323,150512				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk41 ()
	
	
	Talk( 1,  "��������� �����: ������! ������� ��� �������� ���� ��������� �� ���� �����. ����. � ����� ���������� ��� ������������. " )
	
	AddNpcMission	(849)
	AddNpcMission	(856)
	AddNpcMission	(858)
	AddNpcMission	(860)
	AddNpcMission	(866)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ܲ���ı������������У

----------------------------------------------------------
--							--
--							--
--		������[Ħ�����˺��ᡤ�ƶ�]		--
--							--
--		65146,158595				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk42 ()
	
	
	Talk( 1,  "����: �� ����� �������� ��� �� �������? �� ������������� �� ����! " )
	
	AddNpcMission	(851)
	AddNpcMission	(853)
	AddNpcMission	(854)
	AddNpcMission	(862)
	AddNpcMission	(864)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Ħ�����˺��ᡤ�ƶ�

----------------------------------------------------------
--							--
--							--
--		������[����������]			--
--							--
--		71187,141438				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk43 ()
	
	
	Talk( 1,  "������: ������! � ������� ���� �����. �� � ��� ��� ������������ ��������� �����! " )

	AddNpcMission	(859)
	AddNpcMission	(857)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		������[����������]			--
--							--
--		71536,141462				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk44 ()
	
	
	Talk( 1,  "�����: ������! ������� �� ����������� �� ���� � �������! " )

	AddNpcMission	(474)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		������[·�ˡ���]				--
--							--
--		66976,155428				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk45 ()
	
	
	Talk( 1,  "���: ��������� ����� ������� ��� � �����. � ��������� ���� ����� ������ ����������. " )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���


----------------------------------------------------------
--							--
--							--
--		������[·�ˡ��ͱ�]				--
--							--
--		99475,123473				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk46 ()
	
	
	Talk( 1,  "�����: ������! ������������� �� �� ������ �����? � ���������� ����������� ������ ���� �� �����, ������ �� ������������ ���� ������������. " )
	Text( 1,  "�������� ", JumpPage, 2)

--------------����ؽ�
	InitTrigger()
	TriggerCondition( 1, HasItem, 1782, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1782, 10 )
	TriggerAction( 1, GiveItem, 1783, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "�����: ��� ������ - ���������� ��������� ���������� ���� � ����. " )
	Text( 2,  "�������� ���������� ������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "�����: � ��� ��� ���������� �������. �� ��������� � �������. " )
	Talk( 4,  "�����: ���������� �������? ��������� ��� 10 ���������� ������� ���� � 2000 ������. " )

        AddNpcMission	(6256)
	AddNpcMission	(6257)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ��ͱ�

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����١��ʵ�ά��]			--
--							--
--		86299,350092				--
 
-----------------------------------------------------------���￪ʼP������
function r_talk47 ()
	
	
	Talk( 1,  "������: ���������� ��� ����. �� ����������� ���� ������ ����! � ������ ���� ������� " )
	Text( 1,  "����������� ���� ", JumpPage, 2)
        Text( 1,  "������� ����� �������� ", JumpPage, 7)
        Text( 1,  "�������� ��������� ������� �� ������� ", JumpPage, 9)
	Text( 1,  "�������� ������ ������� �� ������ 60 ������ ", JumpPage, 10)

	Talk( 2,  "������: � ��������� �������������� ������� ���. ���� ��������� ��� �� ����������� ����������, �� �������� ������ ��������� ������ ����. " )
	Text( 2,  "�������� �� ��������� ����� ", JumpPage, 3)
	Text( 2,  "�������� �� ����� ���������� ", JumpPage, 4)
	Text( 2,  "�������� �� ���������� ����� ", JumpPage, 5)
	Text( 2,  "�������� �� ������������ ����� ", JumpPage, 6)
	
	Talk( 3,  "������: ��������� ����� �������� ���������� 30 ������ �� ������������ ������. ����� ��� �������� ���� ���������� ����� 10 ��� ���� � 10 ��� ���. " )
	--------------����֮��ʿ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3400, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3,  "�������� ������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮���˱���
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3401, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ҩʦ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3402, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ð���߱���
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3403, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3,  "�������� ������ ������������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4,  "������: ����� ����������� �������� ���������� 40 ������, ���������� � ����������� ������ � ������ ����. ��� �� ��������� ���������� �������� 10 ��� ��� � 10 ��� ��� " )
	--------------����֮˫��ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3404, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "�������� ������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�޽�ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3405, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�ѻ���װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3406, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "�������� ������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ʥְ��װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3407, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮��ӡʦװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3408, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮����ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3409, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "�������� ������ ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 5,  "������: ����� ������������ �������� ���������� 50 ������ ���������� � ���� �������. ��� �� ��������� ���������� �������� 10 ��� ��� � 10 ��� ��. " )
	--------------����֮˫��ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3410, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "�������� ������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�޽�ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3411, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�ѻ���װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3412, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "�������� ������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ʥְ��װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3413, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮��ӡʦװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3414, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮����ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3415, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "�������� ������ ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 6,  "������: ������������ ����� �������� � ���� ���������� 60 ������, ���������� � ���� �������. ��� �� ��������� ���������� �������� 10 ��� ��� � 10 ��� ��. " )
	--------------��֮˫��ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3416, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "�������� ������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮�޽�ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3417, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮�ѻ���װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3418, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "�������� ������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮ʥְ��װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3419, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮��ӡʦװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3420, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮����ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3421, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "�������� ������ ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)

 
	InitTrigger() --�ϳɲر�ͼ
	TriggerCondition( 1, HasItem, 0432, 1 )
        TriggerCondition( 1, HasItem, 0433, 1 )
	TriggerCondition( 1, HasItem, 0434, 1 )
	TriggerCondition( 1, HasItem, 0435, 1 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeItem, 0432, 1 )
	TriggerAction( 1, TakeItem, 0433, 1 )
	TriggerAction( 1, TakeItem, 0434, 1 )
	TriggerAction( 1, TakeItem, 0435, 1 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GiveItem, 1092, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 ) 

	Talk( 7,  "������: ��������� ��� 4 ��������� ����� � � �������� �� ��� ��� � ������ ����� �������� " )
	Text( 7,  "���������� ����� �������� ",MultiTrigger, GetMultiTrigger(), 1) 
	Talk( 8,  "������: ����� ���� ����� �������� 4 ��������� ����� � 2000 ������� " )

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 5 )
	TriggerAction( 1, GiveItem, 1000, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9,  "������: ��� �������� ��� ������� ����� ���� �������������? ���� ��������� ��� �� �������, � ��� ��� ��������� ������ ������� " )
	Text( 9,  "5 ���������� ������� �� ������ ������� ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 30 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 30 )
	TriggerAction( 1, GiveItem, 1001, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9,  "30 ���������� ������� �� ������������� ������  ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 100 )
	TriggerAction( 1, GiveItem, 1002, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9,  "100 ���������� ������� �� ������������ ������ ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 500 )
	TriggerAction( 1, GiveItem, 1003, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9,  "500 ���������� ������� �� ������ ������� ", MultiTrigger, GetMultiTrigger(), 1)


	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4656, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10,  "������: ���� ��� ���� �������� ������ ������� �� �������� ������� " )
	Text( 10,  "�������� ����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4657, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10,  "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4658, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10,  "�������� ����� ����������� ���� ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4659, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10,  "�������� ���������� ����� �� ������� ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4660, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10,  "�������� �������� ���� ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 11,  "������: � ��������� �� ���� ���������� �����. �������� � ��� ��� ����������� ����������� ��� ������������ ���������. " )



	--AddNpcMission ( 719 )
	AddNpcMission ( 102 )
	AddNpcMission 	(416)
	AddNpcMission 	(751)
	AddNpcMission 	(755)
	AddNpcMission 	(95)
	AddNpcMission 	(96)
	AddNpcMission 	(97)
	AddNpcMission 	(151)
	AddNpcMission(	1227	)
	AddNpcMission 	(342)
	AddNpcMission 	(343)
	AddNpcMission 	(344)
	AddNpcMission 	(345)
	AddNpcMission 	(346)
	AddNpcMission 	(347)
	AddNpcMission 	(348)
	AddNpcMission 	(349)
	AddNpcMission 	(350)
	AddNpcMission 	(351)
	AddNpcMission 	(352)
	AddNpcMission 	(353)
	AddNpcMission 	(354)
	AddNpcMission 	(355)
-------------eleven
	AddNpcMission 	(5009)
	AddNpcMission 	(5015)
	AddNpcMission 	(5017)
	AddNpcMission 	(5024)
	AddNpcMission 	(5028)
	AddNpcMission 	(5031)
	AddNpcMission 	(5059)
	AddNpcMission 	(5064)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����١��ʵ�ά��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���峤����������.��]		--
--							--
--		90374,364023				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk48 ()
	
	
	Talk( 1,  "�������: ������, � ������������ �����. ���� � ��� �� ������? " )
	InitTrigger()
	TriggerCondition( 1, HasMission, 1014 )
	TriggerCondition( 1, HasRecord, 1013 )
	TriggerCondition( 1, NoRecord, 1059 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1,  "������� ���� ������������ ",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 1059 )
	TriggerCondition( 1, HasNOZSExp )
	TriggerCondition( 1, NoRecord, 1056 )
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6)
	Text( 1,  "������� ���� ������������ ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1,  "�� �������� ", CloseTalk)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1015 )
	TriggerAction( 1, SetRecord, 1059 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2,  "�������: ��� ������������ ���� 2 ����. �� ������ ������� ����� �� ���. ������ - �������. ��� �� ���� ���������� ����� ������� ������� � ������� �������. ������ ���� - ������. ���� ���� ��� ����������. ")
	Text( 2,  "������� ���� ",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerAction( 1, SetRecord, 1016 )
	TriggerAction( 1, SetRecord, 1059 )
	TriggerAction( 1, JumpPage, 4 )
	Text( 2,  "������ ���� ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3,  "�������: �� �� ������ ������� ���� ������������ ��� ��� ������� ")

	Talk( 4,  "�������: ����� ������ ���� �������� ����! ")


	InitTrigger()
	TriggerCondition( 1, HasRecord, 1016 )
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, ClearRecord, 1016 )
	TriggerAction( 1, SetRecord, 1015 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8)
	Talk( 5,  "�������: ����� ���� ������������ ��������� ������� ����. ������ �� ��������� �� ��� 5000000 ������? ")
	Text( 5,  "�������� �� ������� ���� ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1015 )
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, ClearRecord, 1015 )
	TriggerAction( 1, SetRecord, 1016 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8)
	Text( 5,  "�������� �� ������ ���� ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6,  "�������: �� �� ������ ������� ���� ������������. ��� ���� ��� ������� ���������� � ����� ��������� ����. ")

	Talk( 7,  "�������: ������ �� ������ �������� ��������. ")

	Talk( 8,  "�������: � ��� ������������ ������ ��� ������ ���� ��� ������. ")

	AddNpcMission ( 231 )
	AddNpcMission ( 232 )
	AddNpcMission ( 234 )
	AddNpcMission	(1037)
	AddNpcMission	(1091)
	AddNpcMission	(1149)
	AddNpcMission	(1200)
	AddNpcMission(	1228	)
	AddNpcMission	(327)
	AddNpcMission	(339)
	AddNpcMission	(340)
	AddNpcMission ( 6017 )
	AddNpcMission ( 6018 )
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���峤����������.��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���ߵ�����ŷ��]			--
--							--
--		86214,359121				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk49 ()
	
	
	Talk( 1,  "����: ������ ��� ��� ������ ����������������� �����! ������� � �������! " )
	Text( 1,  "������� ����������������� ����� ", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, GiveItem, 3133, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "����: �������� �����, ������� ������� ����������� " )
	Text( 2,  "����������� ��������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2,  "����������� ��� ����������� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2,  "����������� ��� �������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3,  "����: ������ - ������. ���, ������� ��� ����������! " )
	Talk( 4,  "����: ��� ��������� ������ ���������� ����� ���������� 10 �������� �����, 1 ������ � 50 ������ " )
	Talk( 5,  "����: ���� ��������� ��� ������ �� �������� �������! �������, � �����. " )
	Talk( 6,  "����: ��� ��������� ���� ����������� ���� ���������� 10 ���������� �������, 1 ������ � 50 ������ " )
	Talk( 7,  "����: ������ ������! �� ������ �� ���� ��� ��� ��������? " )
	Talk( 8,  "����: ����� ����������� 1 ��� �������� ���������� 10 ��������� ����������, 1 ������ � 50 ������ " )

	AddNpcMission( 1007 )
	AddNpcMission( 1117 )
	AddNpcMission( 1171 )
	AddNpcMission(	1062	)
	AddNpcMission(	1229	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ߵ�����ŷ��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[��װ������Ī��]			--
--							--
--		89463,360213				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk50 ()
	
	
	Talk( 1,  "����: � ������������� �������. ���������� ��� ����, �������� ��� ��� �� ������������. " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Defence(	0365	)
	Defence(	0541	)
	Defence(	0717	)
	Defence(	0372	)
	Defence(	0548	)
	Defence(	0724	)
	Defence(	0366	)
	Defence(	0542	)
	Defence(	0718	)
	Defence(	0373	)
	Defence(	0549	)
	Defence(	0725	)
	Defence(	0368	)
	Defence(	0544	)
	Defence(	0720	)
	Defence(	0374	)
	Defence(	0550	)
	Defence(	0726	)
	Defence(	0367	)
	Defence(	0543	)
	Defence(	0719	)
	Defence(	0375	)
	Defence(	0551	)
	Defence(	0727	)
	Defence(	0369	)
	Defence(	0545	)
	Defence(	0721	)
	Defence(	0376	)
	Defence(	0552	)
	Defence(	0728	)
	Defence(	0370	)
	Defence(	0546	)
	Defence(	0722	)
	Defence(	0378	)
	Defence(	0554	)
	Defence(	0730	)
	Defence(	0371	)
	Defence(	0547	)
	Defence(	0723	)
	Defence(	0379	)
	Defence(	0555	)
	Defence(	0731	)
	Defence(	0383	)
	Defence(	0559	)
	Defence(	0735	)
	Defence(	0359	)
	Defence(	0535	)
	Defence(	0711	)
	Defence(	0381	)
	Defence(	0557	)
	Defence(	0733	)
	Defence(	0360	)
	Defence(	0536	)
	Defence(	0712	)
	Defence(	0389	)
	Defence(	0565	)
	Defence(	0741	)
	Defence(	0361	)
	Defence(	0537	)
	Defence(	0713	)
	Defence(	0390	)
	Defence(	0566	)
	Defence(	0742	)
	Defence(	0362	)
	Defence(	0538	)
	Defence(	0714	)
	Defence(	0385	)
	Defence(	0561	)
	Defence(	0737	)
	Defence(	0363	)
	Defence(	0539	)
	Defence(	0715	)
	Defence(	0392	)
	Defence(	0568	)
	Defence(	0744	)
	Defence(	0388	)
	Defence(	0564	)
	Defence(	0740	)
	Defence(	0382	)
	Defence(	0558	)
	Defence(	0734	)
	Defence(	0391	)
	Defence(	0567	)
	Defence(	0743	)


	AddNpcMission ( 715 )
	AddNpcMission	(1011)
	AddNpcMission	(1068)
	AddNpcMission	(1123)
	AddNpcMission	(1175)
	AddNpcMission(	1230	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ������Ī��

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���г��ɡ����˹]			--
--							--
--		90637,353900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk51 ()
	
	
	Talk( 1,  "����: ������! ����� ���������� � ���� �������. ���� �� � ��� ���� ������? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "��������� (200 ������) ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "������������� ", OpenUnite)
	Text( 1, "���� ", BuyPage)
	Talk( 2,  "������, �� � ���� ������������ ����� �� ����� " )
	
   InitTrade()
   Other(   0886   )

	AddNpcMission	(1051)
	AddNpcMission	(1104)
	AddNpcMission	(1160)
	AddNpcMission	(1213)
	AddNpcMission(	1231	)
-------eleven
	AddNpcMission(	5012	)	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ����˹

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�����ӳ�Ա������]		--
--							--
--		86734,366071				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk52 ()
	
	
	Talk( 1,  "������: � ����� �������� �� ����, �� � ��������� �� �� ������������� ���� ��������� ����. " )
	Text( 1,  "������... ",CloseTalk )
	
	
	----------------תְ��Ϊѵ��ʦ
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "> ", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 11 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck,  "> ", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 11  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

	Talk(5,  "Sigh��it's a pity that you are not a Beast Tamer. I believed that you have the ability to become one. Let me teach you how! ")
	Text(5,  "Ok, I will become a Beast Tamer ", MultiTrigger, GetMultiTrigger(), 2)
	Text(5,  "No, it is good enough for now. ", CloseTalk)

	Talk(6,  "How is it? I knew you are born to be a Beast Tamer! ")

	Talk(7,  "Want to become a Beast Tamer? Come back to me when you have reached Lv 40. Train your hunter skills well as they are important foundation for you to advance further. Remember to bring 1 Clarity Crystal and 20000G too. ")


	--TriggerCondition( 2, LvCheck,  "> ", 39 )
	--TriggerCondition( 2, IsCategory, 1 )
	--TriggerCondition( 2, PfEqual, 2 )
	--TriggerAction( 2, JumpPage, 5 )
	--TriggerCondition( 3, LvCheck,  "> ", 39 )
	--TriggerCondition( 3, IsCategory, 3 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	

	--Start( GetMultiTrigger(), 1 )
	

	AddNpcMission ( 243 )
	AddNpcMission ( 244 )
	AddNpcMission	(1012)
	AddNpcMission	(1069)
	AddNpcMission	(1124)
	AddNpcMission	(1176)
	AddNpcMission	(88)
	AddNpcMission	(89)
	AddNpcMission	(90)
	AddNpcMission(	1232	)
	



	
	MisListPage(5)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ӳ�Ա������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[������ͭͭ��]			--
--							--
--		90424,349871				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk53 ()
	
	
	Talk( 1,  "�����: ���������� ������������ � ��������� ������? ���������� ����� � ���������! " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������ ", OpenRepair )
	Text( 1,  "�������� �������� ", OpenForge)
	Text( 1,  "������� ���� ", OpenMilling)
	Text( 1,  "�������� � �������� ", OpenFusion)
	Text( 1,  "��������� �������� ", OpenUpgrade)
	Text( 1, "�������� �������� ", OpenGetStone )
	Text( 1,  "������... ",CloseTalk )


	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0097	)
	Weapon(	0104	)
	Weapon(	0098	)
	Weapon(	0105	)
	Weapon(	0099	)
	Weapon(	0106	)
	Weapon(	0101	)
	Weapon(	0107	)
	Weapon(	0102	)
	Weapon(	0108	)
	Weapon(	0100	)
	Weapon(	4301	)
	Weapon(	0103	)
	Weapon(	4302	)
	Weapon(	1427	)
	Weapon(	1428	)
	Weapon(	1429	)
	Weapon(	1430	)
	Weapon(	1431	)
	Weapon(	1432	)
	Weapon(	1433	)
	Weapon(	1434	)
	Weapon(	1435	)
	Weapon(	1436	)
	Weapon(	1437	)
	Weapon(	1438	)
	Weapon(	1440	)
	Weapon(	1441	)
	Weapon(	1462	)
	Weapon(	1463	)
	Weapon(	1464	)
	Weapon(	1465	)
	Weapon(	1466	)
	Weapon(	1467	)
	Weapon(	1468	)
	Weapon(	1469	)
	Weapon(	1470	)
	Weapon(	1471	)
	Weapon(	1472	)
	Weapon(	1473	)
	Weapon(	1475	)
	Weapon(	1476	)
	Other	(	890	)
	Other	(	891	)
	Other	(	453	)
	Other	(	454	)
	Other	(	455	)
	Other	(	456	)
	Other	(	3883	)
	Other	(	1020	)
	Other	(	6946	)
	Other	(	3075	)

	AddNpcMission ( 713 )
	AddNpcMission	(1043)
	AddNpcMission	(1095)
	AddNpcMission	(1154)
	AddNpcMission	(1206)
	AddNpcMission	(91)
	AddNpcMission	(92)
	AddNpcMission	(93)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<������ͭͭ��




--------------------------------------------------------------������ͽ�� 
function mmm_talk04 ()
	Talk( 1,  "������ �������: ������! �������� ��� ��� �� ������ ������! " )
	Text( 1,  "�������� ����� ��� ����� ", JumpPage, 8 )
	Text( 1,  "��� ������ ����? ", JumpPage, 7 )
	Text( 1,  "��� ��������� ���������? ", JumpPage, 2 )
	Text( 1,  "��� ���������� ���������? ", JumpPage, 3 )
	Text( 1,  "������... ",CloseTalk )
	
	Talk( 2,  "������ �������: ��� ������� ��������� � �������� ������ ���� ������ ����. � ���� ���� ������ ��������� ��������� ������� ����, ����� � ���� ������� ������ ��������� ��� ���������� ��������� � ������ �����. ��� ������� ��������� ���������� ����� ��������� ��������. ��������� ������� �������� ����� ��������. ������ ��������� ������� ��������� ����� ������. ��� ��� ������ ����������?" )
	Text( 2,  "��� ����� ��������? ", JumpPage, 5)
	Text( 2,  "��� ����� ��������� ��������? ", JumpPage, 4)
	Text( 2,  "������ ����������� ���������� ������� ���������? ", JumpPage, 6)
	
	Talk( 3,  "������ �������: ��� ����������� ���� ���������� � ���� ����� �������� ������ ��� ����������� ������������ ������. ������������ �������, ������� ����� ���������� ��������� - ���������� ���� �� �������. " )
	
	Talk( 4,  "������ �������: ��������� �������� ��� �����������, ��� �������� ���������� �������� �������� � ����. ������� ���������� ��������� ������ ���� ����� ������ ������������ ���������. ��������� �������� ����� �������� �������� ��������� ������� ��� ��� �������� ��������. " )

	Talk( 5,  "������ �������: ��������� ��� ������� � ������� ���� ��� ����� ��������. ���� ��������� �������� ����� ����������: ����� - �������� �����, ���� - ������, � ���� - �������� ��������. ��������� ����� �������� �� ��������� ������� ��� ��� �������� ��������. " )

	Talk( 6,  "������ �������: ������ ������� ������������ ��������� �������� ������� �������� �� ����. ��� ���� ������� ��������, ��� ���� ���� ������� ���������. ����� �������� ���� ������� ������������ ������ ������������. ��� ������� ������� ������ ���� ������� � �������� ��������������. ����������� ��������� ������� �������� - 27. " )
	
	Talk( 7,  "������ �������: ��� ������������ ������ ����� ��� ����������� 1 ����������� ���������� � 1 ������������ ����������. �� ����� �������� � ��������� ��������� ��� �������� �� ��������. " )

	Talk(8, "������ �������: ����� �������� ����� ��� ����� ��� ��������� ��� ������� 2 ��������� ����� � ���������. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,5823, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 5823, 1 )
	TriggerAction( 1, GiveItem, 0890, 1, 4 )
	TriggerAction( 1, GiveItem, 0891, 1, 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text(8, "�������� ����� ��� ����� " ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 9,  "������ �������: �������� �� � ��� ��� �������� �� ����� ��� �����, ��� ���� ��������� ���� � ���������. " )

end

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����]				--
--							--
--		88307,352019				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk54 ()
	
	
	Talk( 1,  "����: ������! � ���� �������! " )
	Text( 1,  "���������� ��������� ", JumpPage, 2)

----------------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1791, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1791, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1801, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "����: ���� ������, ���� �������� � ���� �������! � ����� ����������� ��� ����� ��� ��� ������! " )
	Text( 2,  "���������� ������� ��������� ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "����: �� ���? ���� ��������� ��� ����������? " )
	Talk( 4,  "����: ��� ��������� �������� ��������� ���������� 5 ������� ������, 1 ������ ���, 1 �������� ������ � 200 ������. " )
	
	AddNpcMission	(1146)
	AddNpcMission	(155)
	AddNpcMission	(156)
	AddNpcMission	(157)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�ӻ����ˡ���ī]			--
--							--
--		84040,358567				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk55 ()
	
	
	Talk( 1,  "����: ������ � ���� ����� ��������� ����������. ���� �� ��������� �������� � ������ �����. " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "���������� ���������� ", OpenUnite)
	Text( 1,  "���������� ����� ���������� ",JumpPage, 2 )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	3206	)
	Other(	3208	)
	Other(	3205	)
	Other(	3242	)
	Other(	3210	)
	Other(	3207	)
	Other(	3211	)
	Other(	3215	)
	Other(	3212	)
	Other(	3209	)
	Other(	3220	)
	Other(	3222	)
	Other(	3219	)
	Other(	3218	)
	Other(	3216	)
	Other(	3223	)
	Other(	3217	)
	Other(	3224	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	Other( 886 )
	--baby--�������Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
	Other(  2440    )

	AddNpcMission	(1161)
	AddNpcMission	(152)
	AddNpcMission	(153)
	AddNpcMission	(154)
	--AddNpcMission	(5500)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "����: ��� ������������ ����� ���������� ���������� 1 ���������� ������, 10000 ������ � 10 ���� ����� �������� 3 ������. " )
	Text( 2,  "�������� ������� ����� �� ����� ���������� ", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2,  "Exchange Razor Tooth for Reality Mask ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4545, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4545, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "�������� ���� �� ����� ���������� ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4543, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4543, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "�������� ������ �� ����� ����������  ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1478, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1478, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "�������� ������ �� ����� ���������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "����: �������� � �����������. " )
	Talk( 4,  "����: � ��� ��� ���� ����������� ������������ ��� ��������� ���� � ���������. �������� ����� � ��� ������������ ���������. " )

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ���ī

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�õ��ϰ塤����]			--
--							--
--		81035,349813				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk56 ()
	
	
	Talk( 1,  "�����: ������! �� ��� ������������? � ���� ���������� �������� ������� ��� �����! " )
	Text( 1,  "������� ������ ", JumpPage, 2)


--------------------�����������֭
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3121, 4 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3121, 4 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3127, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "�����: ��� ������ � ���� ���� ������ �����������. � ��� ��������� ������� ����� ������! " )
	Text( 2,  "������� ��� �������� ������� ",MultiTrigger, GetMultiTrigger(), 1)

----------------�����ۺϹ�֭
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3122, 1 )
	TriggerCondition( 1, HasItem, 3123, 1 )
	TriggerCondition( 1, HasItem, 3124, 1 )
	TriggerCondition( 1, HasItem, 3125, 1 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3122, 1 )
	TriggerAction( 1, TakeItem, 3123, 1 )
	TriggerAction( 1, TakeItem, 3124, 1 )
	TriggerAction( 1, TakeItem, 3125, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3128, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2,  "������� ��������� �������� ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "�����: ������� ��� �� �������� �����! ��������� ����������������! " )
	Talk( 4,  "�����: ��������, �� ��� ������������� 1 ���� �������� ������� ���������� 4 �������� ������, 1 �������� ������ � 50 ������. " )
	Talk( 5,  "�����: ��������, �� ��� ������������ 1 ���������� �������� ���������� 1 ��� ����������� ������, 1 ��� �� ������� �������, 1 ������� ���, 1 ��� �� ������ �������, 1 �������� ������ � 50 ������. " )
	AddNpcMission	(1138)
	AddNpcMission	(1161)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[��ʿС�㡤����]			--
--							--
--		87954,356282				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk57 ()
	
	
	Talk( 1,  "�����: ������, � ���������� ��������� ������ �������. � ��������� ���� � ��� �����, ������� �� ���� ������ ��� � �������. ���� ��� ����� ������, �� ���������� � �������� ����. �� ��������� � ����� (903,3646) " )
	AddNpcMission	(1129)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡤����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������¿�]			--
--							--
--		80262,364842				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk58 ()
	
	
	Talk( 1,  "�����: ������, � ����� �������-���������. � ��������� ������ � �� 7-�� ����� � ������ ����� ������������� ������� ������. ������ � ���� ��� �����������? � �� ����� �����! ���� " )
	AddNpcMission	(1125)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������¿�

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����ָ������˿��]			--
--							--
--		87614,357250				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk59 ()
	Talk( 1,  "�������: ������! � ����� ������� � ������ ���� ��� � ����� ������������. ���� � ��� ���� ������������ - ����� ����. " )
	Text( 1,  "������ �������� ", JumpPage, 31 )
	Text( 1,  "� ����� �� ��� � ��� �������� ", JumpPage, 4 )
	Text( 1,  "� ����� �� ������ � ������� � ��������� ", JumpPage, 11 )
	Text( 1,  "� ���� ������ ���������� �������� ", JumpPage, 30 )

	Talk( 4,  "�������: ����� ������ �������� ������� �����. ����� ����� ��������������� ������ ������. ����� ��� ����� ����� �������� � ��������� ��� �������� �����. " )
	Text( 4,  "������ �� ��������� �������� ", JumpPage, 5 )
	Text( 4,  "������ �� �������� �������� ", JumpPage, 7 )
	Text( 4,  "������ � �������� ���������� ", JumpPage, 8 )
	Text( 4,  "������ � ������������ ", JumpPage, 9 )
	Text( 4,  "� �������� ���� �� ����� ������, ��� ����� �������? ", JumpPage, 10 )

	Talk( 5,  "�������: � ����������� ������� ������ ����� ������ ������. ����� ��� ������� � ������� ����� ���� ������. " )
	Text( 5,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 5,  "�������, � ��� ����� ", CloseTalk )

--	Talk( 6,  "Look for me again if there is anything you don't understand ", CloseTalk )

	Talk( 7,  "�������: ���� ��� ����� �������� �������, �� ��� ����� - ������� ����! ��� ������� �� ������ ����� ���� ���� �������, ������. " )
	Text( 7,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 7,  "�������, � ��� ����� ", CloseTalk )

	Talk( 8,  "�������: ����� �������� ��������? �������� ������������ ���� � �������� ���� ����� ������. " )
	Text( 8,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 8,  "�������, � ��� ����� ",  CloseTalk )

	Talk( 9,  "�������: ���� ������ ������� � ������ ������� ����� ����� ���� - ��� � ������ ���������� �������. �� ����� ����� �������� ��� ��� ����� ����� �����������. ����� ��� � ������ �� ������. " )
	Text( 9,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 9,  "�������, � ��� ����� ",  CloseTalk )

	Talk( 10,  "�������: �� ������������� ������? ��������� ��������� ���� �������. " )
	Text( 10,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 10,  "�������, � ��� ����� ",  CloseTalk)


	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 10 )
	TriggerAction( 1, SetFlag, 706, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11,  "�������: ����� ����� ������� ������� �� ������ ����� ���� �� ����������� ������� � ��������� ������� � ���������. ������ ����� ������? " )
	Text( 11,  "������ � ������� ", JumpPage, 12)
	Text( 11,  "������ � ��������� ", JumpPage, 13)
	--Text( 11,  "������ � ������� ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 20 )
	TriggerAction( 1, SetFlag, 706, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11,  "������ � ������ ��������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12,  "�������: ����� ���������� 4 �������� ������� ������. ������ �� ��� ������������� ����� ������ ���� � ����. ��� ����� ����� �� ������ �� ������? " )
	Text( 12,  "������ � �������� ", JumpPage, 14 )
	Text( 12,  "������ � ��������� ", JumpPage, 15 )
--	Text( 12,  "Regarding Sailor ", JumpPage, 16 )
	Text( 12,  "������ � �������������� ", JumpPage, 17 )
	Text( 12,  "������ � �������� ", JumpPage, 18 )
--	Text( 12,  "Regarding Artisan ", JumpPage, 19 )
--	Text( 12,  "Regarding Merchant ", JumpPage, 20 )

	Talk( 13,  "�������: ����� ���������� 5 ������� ��������. ������ ������� ����� ����� ������������ �������� � 100. � ������� ��� �������� ����� 5. ������ ������� ��� ����� ���������� ��� 1 ����� �������� � ������. � ������ ���� � ��� ���� 5 ��������� ������, ������� �� ������ ������������ �� ����� �������������. " )
	Text( 13,  "������ � ���� ", JumpPage, 21 )
	Text( 13,  "������ � �������� ", JumpPage, 22 )
	Text( 13,  "������ � ������������ ", JumpPage, 23 )
	Text( 13,  "������ � ���� ", JumpPage, 24 )
	--Text( 13,  "Regarding Luck ", JumpPage, 25 )
	Text( 13,  "������ � �������� ", JumpPage, 26 )

	Talk( 14,  "�������: ������� ����� ����� ������� ���������� ������������� � ���� ����. �������� ����� ����� ������ ����, ������ ��� ������. ���� ������ ����� ��������, �� ���������� � ��������� ������ � �������. " )
	Text( 14,  "������ � ������ ������� ", JumpPage, 12)
	Text( 14,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 14,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 15,  "�������: �������� ������������ �����, ��������� ������������ ������������� ������ � ���. ����� � ���������� ��� ����� ��������� ������������ ������������� ������. ������ ���� ��� ������ ����� ����� ���������. ���� ������ ����� ���������, �� ����� ��������� ��� � ������. " )
	Text( 15,  "������ � ������ ������� ", JumpPage, 12)
	Text( 15,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 15,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 16,  "�������: Sailor is the strongest class in the sea. It is still unreleased in current version. " )
	Text( 16,  "������ � ������ ������� ", JumpPage, 12)
	Text( 16,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 16,  "�������, � ��� ����� ", JumpPage, 27)
	
	Talk( 17,  "�������: ������������� ����� ������ ����� ��� ����������� ����. ������ ���, ����� ��� ���� ����� ����� ��������������. ���� ������ ����� ��������������, �� ����� ������ ������� � �������. " )
	Text( 17,  "������ � ������ ������� ", JumpPage, 12)
	Text( 17,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 17,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 18,  "�������: �������� ��� ����������������� ������ ������ ����. �� ��� �� ���� �������� �������� ���������� ����. �������� �������� �������� �����. ������ ������ ��� ��� ����� ����� ����������. ���� ������ ����� ��������� - ����� ���������� ����� ������� � �������. " )
	Text( 18,  "������ � ������ ������� ", JumpPage, 12)
	Text( 18,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 18,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 19,  "Resline: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version. " )
	Text( 19,  "������ � ������ ������� ", JumpPage, 12)
	Text( 19,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 19,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 20,  "Resline: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version. " )
	Text( 20,  "������ � ������ ������� ", JumpPage, 12)
	Text( 20,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 20,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 21,  "�������: �� ���� ������� ������� ����� ���������� �����. " )
	Text( 21,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 21,  "������ � ������ ������� ", JumpPage, 12)
	Text( 21,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 22,  "�������: �������� ������ �� �������� ����� � ���������. " )
	Text( 22,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 22,  "������ � ������ ������� ", JumpPage, 12)
	Text( 22,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 23,  "�������: ������������ ������ �� ������� ����� ����� � �� ������. " )
	Text( 23,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 23,  "������ � ������ ������� ", JumpPage, 12)
	Text( 23,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 24,  "�������: ��� ������ �� ������� ����� ����, �� ���������� ������ � �� ������ ��������� ������. " )
	Text( 24,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 24,  "������ � ������ ������� ", JumpPage, 12)
	Text( 24,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 25,  "�������:  Luck increases Critical Rate and Combining Success Rate " )
	Text( 25,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 25,  "������ � ������ ������� ", JumpPage, 12)
	Text( 25,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 26,  "�������: �������� ������ �� ������� ������������� ����� � �� ���� �����. " )
	Text( 26,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 26,  "������ � ������ ������� ", JumpPage, 12)
	Text( 26,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 27,  "�������: ������. ��������� ���� ��� ��������� �������. ")

	Talk( 28,  "�������: � ���� �� ��� ������� ������������ � �������� ���������. ������ ���������� ���������� � ������� ������ � ��������� �� ���������. " )
	Text( 28,  "� �� ����� ��� � ��� �������� ", JumpPage, 4 )
	Text( 28,  "������ � ������� � ��������� ", JumpPage, 11 )
	Text( 28,  "�������, � ��� ����� ",  CloseTalk)

	Talk( 29,  "�������: ����� ������. �� ������� 9 ������ � ������ ������ ������������ � ���������� ��������� " )
	Text( 29,  "� �� ����� ��� � ��� �������� ", JumpPage, 4 )
	Text( 29,  "������ � ������� � ��������� ", JumpPage, 11 )
	Text( 29,  "�������, � ��� ����� ",  CloseTalk )

	Talk( 30,  "�������: ����� ������ ���������� �������� ��� ���������� ���������� � ������� ������ � ���� �������. " )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck,  "< ", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31,  "�������: ������ �������� - ������� �� ������� ����. ��� �� ������������� ��� �������� ������ ���������� ���� ����. � ��������� �������� ��� ����� ���������� ������ ���� ���� �������. ����� ���� �� ���������� 41 ������ �� ������ �������� ������ �������� �� ���������� 50 ������. �������� ������ �������� ����� ����� ����� �� ������ 41 ������. " )
	Text( 31,  "�������� ������ �������� ",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31,  "�������� ������ �������� ",JumpPage, 32 )

	Talk( 32,  "�������: ���� � ��� ���� ������ ��������, �� �� ������ �������� �� �� ���������� 50 ������ ��� ������ ������. ��� ��� ����������? ")
	Text( 32,  "�������� ���������� ", Transfer_TeamStar, 1)

	Talk( 6,  "�������: ����� ��������, �� �� �� ��������� �� �������. " )
	
	--InitTrigger()
	---------------------��ҳ���6����ɹ�ɪ����ս��ѵ������
	--TriggerCondition( 1, LvCheck,  "> ", 4 )
	--TriggerCondition( 1, LvCheck,  "< ", 9 )
	---TriggerCondition( 1, HasRecord, 710 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck,  "> ", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )


	--Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 711 )
	AddNpcMission ( 712 )
	AddNpcMission ( 714 )
	AddNpcMission ( 716 )
	AddNpcMission ( 718 )
	AddNpcMission ( 202 )
	AddNpcMission 	(414)
	AddNpcMission 	(83)
	AddNpcMission 	(84)
	AddNpcMission 	(94)
	AddNpcMission 	(161)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)

	MisListPage(28)
	MisListPage(29)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ָ������˿��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������´���Ա����΢����У]		--
--							--
--		86507,364804				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk61 ()
	
	
	Talk( 1,  "������� ���: ������! � ������ �������-������ � ���� ������! " )
	AddNpcMission	(1126)
	AddNpcMission	(98)
	AddNpcMission	(99)
	AddNpcMission	(150)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������´���Ա����΢����У

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ɳᰳ��̻�᳤��������]		--
--							--
--		87362,354566				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk62 ()
	
	
	Talk( 1,  "�����: � ����� �������� �������� ����. ����� ���� � ������ ��� ����� �� ����� ������ ���� � ������ �� ����� �������. ���� ����� ������� ����� ���������� ���������. " )
	Text( 1,  "�� �������� ",CloseTalk )
	AddNpcMission	(1144)

	-----��������
	AddNpcMission ( 6115 )
	AddNpcMission ( 6116 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳᰳ��̻�᳤��������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ�ɺ����]		--
--							--
--		84634,349945				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk63 ()
	
	
	Talk( 1,  "����: ������ ������� ������ ��������. � �������� ���� ������ ����� ���� �� ���� ��������. " )

--	AddNpcMission ( 6028 )
--	AddNpcMission ( 6029 )
--	AddNpcMission ( 6054 )
--	AddNpcMission ( 6055 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ�ɺ����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[С������]			--
--							--
--		89875,368331				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk64 ()
	
	
	Talk( 1,  "����: ������! � ������ � ���� ��������� ������! ����� " )

	AddNpcMission ( 233 )
	---------------����
	AddNpcMission	(5565)
	AddNpcMission	(5566)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<С������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�᳤������˾���]		--
--							--
--		87171,354774				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk65 ()
	
	
	Talk( 1,  "������: �� ������ �������, �� ������� �� ���������. " )
--	AddNpcMission ( 905 )
	----------------�����
	AddNpcMission ( 5604 )
	AddNpcMission ( 5605 )
	AddNpcMission ( 5606 )
	AddNpcMission ( 5607 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�᳤������˾���

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ���]				--
--							--
--		79792,355469				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk66 ()
	
	
	Talk( 1,  "��: ������ ����� � ����� ������ �������. ��� ������������� ����� ������������. " )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ɳ�ˡ�����������]			--
--							--
--		108242,310135				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk67 ()
	
	
	Talk( 1,  "��������: � ������� ������� ���������! � ���� ������� ���� �������� � ������� ����� ����� ����! (� ����, �� ����� ������ �����) " )
	
	AddNpcMission ( 237 )
	AddNpcMission ( 238 )
	AddNpcMission ( 239 )
	AddNpcMission ( 240 )
	AddNpcMission ( 248 )
	AddNpcMission ( 557 )
--------eleven
	AddNpcMission (5011 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳ�ˡ�����������


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������ӡ���ɳ��]			--
--							--
--		125471,349171				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk68 ()
	
	
	Talk( 1,  "������: ���.. �� ���� � ����� ����������� ����� ����� �� ������ �����. ��� ������� ������ ��� �� ��� �����... " )
	Text( 1,  "������������� ", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1785, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1785, 10 )
	TriggerAction( 1, GiveItem, 1786, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "������: ����� ��������� ��������� ����� ��������� ��������. ������ �� �� ���������� ��� � �������� ��������? " )
	Text( 2,  "���������� �������� �������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "������: ��� �������� �������� �����. ��������� ���! " )
	Talk( 4,  "������: ��� �������� ��������� ��������� ���������� 10 ������ ��������� ��������� � 2000 ������. " )
	-------------eleven
	AddNpcMission ( 5010)
	AddNpcMission ( 5014)
	AddNpcMission ( 5033)
	AddNpcMission ( 5034)
	---------------����
	AddNpcMission	(5553)
	AddNpcMission	(5554)

	AddNpcMission	(6258)
	AddNpcMission	(6259)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������ӡ���ɳ��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����ר�ҡ�ɳ÷��]			--
--							--
--		66465,609367				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk69 ()
	
	
	Talk( 1,  "������: ������! � ������� ��������. " )
---------------����
	AddNpcMission	(5559)
	AddNpcMission	(5560)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ר�ҡ�ɳ÷��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ʥŮ������]			--
--							--
--		86248,330381				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk70 ()
	
	
	Talk( 1,  "���: ���������� ��� ����. ����� ���� ������������� ���� ����. � ��������� ����� ���. " )

	AddNpcMission ( 756 )
	AddNpcMission ( 341 )
	AddNpcMission ( 356 )
	AddNpcMission ( 357 )
	AddNpcMission ( 521 )
	AddNpcMission ( 539 )
	AddNpcMission ( 540 )
	AddNpcMission ( 541 )
	AddNpcMission ( 552 )
	AddNpcMission ( 553 )
	AddNpcMission ( 556 )

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ʥŮ������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ�������]			--
--							--
--		93176,352977				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk71 ()
	
	
	Talk( 1,  "�����: ������ �� �� ��� � ������� ���� ������ �����? � ��� ����� �������� �����! " )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ�������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����᳤������]			--
--							--
--		83171,354853				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk72 ()
	
	Talk( 1,  "������: ���� � ��������! ������ ������� ����� ����� �� 3 ����� ������� �������? ������ ������� ���� �����? " )
	Text( 1,  "��� 3 ������� ", ListChallenge)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����᳤������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����������]			--
--							--
--		134423,52988				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk73 ()
	
	
	Talk( 1,  "���: ����� ����������! � ������ ��� ���� ������! " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������ ", OpenRepair)
	Text( 1,  "�������� �������� ", OpenForge)
	Text( 1,  "������� ���� ", OpenMilling)
	Text( 1,  "�������� � �������� ", OpenFusion)
	Text( 1,  "��������� �������� ", OpenUpgrade)
	Text( 1,  "������ ",CloseTalk )

	Talk( 2,  "���: �������� ��������? ������ ������ ������� ����� ��� ��� ������. " )

	Talk( 3,  "Bash: You wish to combine something? From what I understand, you need a combining scroll and it will list the required items. Collect the items needed and talk to Grocer - Amos in Shaitan City. He is the only person who knows how to combine. " )


	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0025	)
	Weapon(	0032	)
	Weapon(	0026	)
	Weapon(	0033	)
	Weapon(	0027	)
	Weapon(	0034	)
	Weapon(	1400	)
	Weapon(	1401	)
	Weapon(	1402	)
	Weapon(	1403	)
	Weapon(	1404	)
	Weapon(	1405	)
	Weapon(	0037	)
	Weapon(	0038	)
	Weapon(	0039	)
	Weapon(	0044	)
	Weapon(	0040	)
	Weapon(	0045	)
	Weapon(	1406	)
	Weapon(	1407	)
	Weapon(	1408	)
	Weapon(	1409	)
	Weapon(	1413	)
	Weapon(	1414	)
	Weapon(	1410	)




	AddNpcMission ( 723 )
	AddNpcMission	(1041)
	AddNpcMission	(1093)
	AddNpcMission	(1152)
	AddNpcMission	(1204)
	AddNpcMission(	1233	)
	AddNpcMission	(6251)
	AddNpcMission	(6252)
	AddNpcMission	(6253)
	


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�ӻ����ˡ���³]			--
--							--
--		135671,48320				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk74 ()
	Talk( 1,  "������: ������! � ���������� ������. ��� ���� ����� ���������� 10 ������, � ��� ���� ������� ��� ��� �����. �� ��� � ������ �������! " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )
	Text( 1,  "���������� ����� ���������� ",JumpPage, 2 )

	InitTrade()
	Other(	3187	)
	Other(	3188	)
	Other(	3190	)
	Other(	3239	)
	Other(	3197	)
	Other(	3193	)
	Other(	3241	)
	Other(	3192	)
	Other(	3198	)
	Other(	3202	)
	Other(	3203	)
	Other(	3204	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	--baby--�������Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
	Other(  2440    )


	AddNpcMission	(1052)
	AddNpcMission	(1106)
	AddNpcMission	(1162)
	AddNpcMission	(1214)
	AddNpcMission	(181)
	AddNpcMission	(182)
	AddNpcMission	(183)
	AddNpcMission	(1234)
	--AddNpcMission	(5502)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "������: ��� ������������ ����� ���������� ���������� 1 ���������� ������, 10000 ������ � 10 ����� �������� 3 ������. " )
	Text( 2,  "�������� ������� ����� �� ����� ���������� ", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2,  "Exchange Razor Tooth for Reality Mask ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4545, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4545, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "�������� ���� �� ����� ���������� ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4543, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4543, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "�������� ������ �� ����� ����������  ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1478, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1478, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "�������� ������ �� ����� ���������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "������: ���, ������� ��� ��������. " )
	Talk( 4,  "Palpin: �� �� ������ ���� ����������� ������������  ��� � ��� ������������ ���������� ����� � ���������. ����� �������� ��� ��� ��������� ������������. " )
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ���³

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[ҩ���ϰ塤���]			--
--							--
--		135298,49926				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk75 ()
	
	
	Talk( 1,  "�����: ������! � ���� ������ ����� �� ���� ������! " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )
	
	Talk( 2,  "Daisha: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Argent or Shaitan by using the teleporter. " )
	Text( 2,  "���� ", BuyPage )
	Text( 2,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)

	---------------------��ҳ���9��
	--InitTrigger()
	--TriggerCondition( 1, LvCheck,  "> ", 8 )
	--TriggerCondition( 1, LvCheck,  "< ", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 727 )
	--AddNpcMission ( 735 )
	--AddNpcMission ( 746 )
	--AddNpcMission ( 747 )
	AddNpcMission	(1047)
	AddNpcMission	(1101)
	AddNpcMission	(1158)
	AddNpcMission	(1209)
	AddNpcMission(	1235	)
---------eleven	
	AddNpcMission(	5067)
	AddNpcMission(	593)
	AddNpcMission(	594	)
	AddNpcMission(	596	)	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ҩ���ϰ塤���


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[��ʿС�㡤����]			--
--							--
--		131725,50169				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk76 ()
	
	
	Talk( 1,  "����: ������! � ���������� ����! ��������� � ���� �������� �� �������� � �� ���� ��� ����� ������. " )
	AddNpcMission	(1018)
	AddNpcMission	(1073)
	AddNpcMission	(1128)
	AddNpcMission	(1181)
	AddNpcMission(	1236	)
	



	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡤����

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����ָ��������¶��]		--
--							--
--		131577,50700				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk77 ()
	
	Talk( 1,  "������: ������! � ���������� ������. � ���� ����� ��� ��������� �������� �������. ������������� ������ �����! " )
	Text( 1,  "������ �������� ", JumpPage, 31 )
	Text( 1,  "� �� ����� ��� � ��� �������� ", JumpPage, 4 )
	Text( 1,  "������ � ������� � ��������� ", JumpPage, 11 )
	Text( 1,  "������ ���������� �������� ", JumpPage, 30 )
	Text( 1,  "�������, � ��� ����� ", CloseTalk )
--	Text( 1,  "�������, � ��� ����� ", CloseTalk )


	Talk( 4,  "������: ������ ��� �����, ��� ������ ����. ����� ��� ������ ���� ����� ��� ����� ������ ����. " )
	Text( 4,  "������ �� ��������� �������� ", JumpPage, 5 )
	Text( 4,  "������ � �������� �������� ", JumpPage, 7 )
	Text( 4,  "������ � �������� ��������� ", JumpPage, 8 )
	Text( 4,  "������ � �������� ������������ ", JumpPage, 9 )
	Text( 4,  "������ � �������� ������� ", JumpPage, 10 )

	Talk( 5,  "������: ������ ���������� �� ��, � ����� ��������� ������� �� �����������. ��� �� ������� ������ �������. " )
	Text( 5,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 5,  "�������, � ��� ����� ", CloseTalk )

--	Talk( 6,  "Look for me again if there is anything you don't understand ", CloseTalk )

	Talk( 7,  "������: ����� ������ ������� ����� ������ ��������. �� ����� ������ �������. ��������� � ������ ����� ������. " )
	Text( 7,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 7,  "�������, � ��� ����� ", CloseTalk )

	Talk( 8,  "������: ������ �������� �� ������ � ����������� ������ ������. � ���� ���� ��� ��� ������������. �� ��������� � �������� ���� ����� ������. " )
	Text( 8,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 8,  "�������, � ��� ����� ", CloseTalk )

	Talk( 9,  "������: ����� �� ������ �� �� � �� ������� �������� ���� ������� ���. ��� ���� �����������. � ������� ��� �� ������ ������������� � ����� ������� ����� ����� ����. ����� �� ������ �������� � ��� ����� �����������. " )
	Text( 9,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 9,  "�������, � ��� ����� ", CloseTalk )

	Talk( 10,  "������: ��������� - ������� ������� � ������ ������� �������. �� �������� ����� �� ���� �� ������. " )
	Text( 10,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 10,  "�������, � ��� ����� ", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11,  "������: ��� ��� ������ ������ ���������� ����� ����� ������. � ������� ��� � ���� ������. " )
	Text( 11,  "������ � ������� ", JumpPage, 12)
	Text( 11,  "������ � ������ ��������� ", JumpPage, 13)

	--Text( 11,  "������ � ������� ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11,  "������ � ������ ��������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12,  "������: ����� ���������� 4 ������� ������. ������ ����� ���� �����������. " )
	Text( 12,  "������ � �������� ", JumpPage, 14 )
	Text( 12,  "������ �� ��������� ", JumpPage, 15 )
--	Text( 12,  "Regarding Sailor ", JumpPage, 16 )
	Text( 12,  "������ �� �������������� ", JumpPage, 17 )
	Text( 12,  "������ �� ��������� ", JumpPage, 18 )
--	Text( 12,  "Regarding Artisan ", JumpPage, 19 )
--	Text( 12,  "Regarding Merchant ", JumpPage, 20 )
	Text( 12,  "� ��� �����. ���� ������ ��� ��� ������. ", JumpPage, 11 )

	Talk( 13,  "������: ����� ���������� 5 ������� ��������. ������ ������� ����� ����� ������������ �������� � 100. � ������� ��� �������� ����� 5. ������ ������� ��� ����� ���������� ��� 1 ����� �������� � ������. � ������ ���� � ��� ���� 5 ��������� ������, ������� �� ������ ��� " )
	Text( 13,  "������ � ���� ", JumpPage, 21 )
	Text( 13,  "������ � �������� ", JumpPage, 22 )
	Text( 13,  "������ � ������������ ", JumpPage, 23 )
	Text( 13,  "������ � ���� ", JumpPage, 24 )
	--Text( 13,  "Regarding Luck ", JumpPage, 25 )
	Text( 13,  "������ � �������� ", JumpPage, 26 )
	Text( 13,  "� ��� �����. ���� ������ ��� ��� ������. ", JumpPage, 11 )

	Talk( 14,  "������� ����� ����� ������� ���������� ������������� � ���� ����. �������� ����� ����� ������ ����, ������ ��� ������. ���� ������ ����� ��������, �� ���������� � ��������� ������ � �������. " )
	Text( 14,  "������ � ������ ������� ", JumpPage, 12)
	Text( 14,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 14,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 15,  "������: �������� ��� ������������ ����� ������������ ������ � ������������� ������. ��������� ����� ����� ������ ������ ��� ����. ����� ����� ��������� ���������� ��������� � ������� ��� � ������. " )
	Text( 15,  "������ � ������ ������� ", JumpPage, 12)
	Text( 15,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 15,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 16,  "������: Sailor is the strongest class in the sea. It is still unreleased in current version. " )
	Text( 16,  "������ � ������ ������� ", JumpPage, 12)
	Text( 16,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 16,  "�������, � ��� ����� ", JumpPage, 27)
	
	Talk( 17,  "������: ������������� ��� ������ ����� ��� ������� ������������. �������������� ����� ����� ������ ������, ���� ��� ���. ����� ����� �������������� �������� � ������ ������� � �������. " )
	Text( 17,  "������ � ������ ������� ", JumpPage, 12)
	Text( 17,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 17,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 18,  "������: ���������� ��� ����������� ������ ������ ����, �� ��� �� �������� ���������� ����. ����������� ����� ����� ������ ������ ��� ���. ����� ����� ����������� ��� ���������� ����� ������� � �������. " )
	Text( 18,  "������ � ������ ������� ", JumpPage, 12)
	Text( 18,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 18,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 19,  "������: ������: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version. " )
	Text( 19,  "������ � ������ ������� ", JumpPage, 12)
	Text( 19,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 19,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 20,  "������: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version. " )
	Text( 20,  "������ � ������ ������� ", JumpPage, 12)
	Text( 20,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 20,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 21,  "������: ���� ������ �� ���������� ����. " )
	Text( 21,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 21,  "������ � ������ ������� ", JumpPage, 12)
	Text( 21,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 22,  "������: �������� ������ �� ��������� � �������� �����. " )
	Text( 22,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 22,  "������ � ������ ������� ", JumpPage, 12)
	Text( 22,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 23,  "������: ������������ ������ �� ���������� ����� � �� ������. " )
	Text( 23,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 23,  "������ � ������ ������� ", JumpPage, 12)
	Text( 23,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 24,  "������: ��� ������ �� ���������� ����, ���������� ������ � ���� �� ��������� �������. " )
	Text( 24,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 24,  "������ � ������ ������� ", JumpPage, 12)
	Text( 24,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 25,  "������: Luck increases Critical strike and Combine success rate " )
	Text( 25,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 25,  "������ � ������ ������� ", JumpPage, 12)
	Text( 25,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 26,  "������: �������� ������ �� ���� ����� � ���� ������������� �����. " )
	Text( 26,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 26,  "������ � ������ ������� ", JumpPage, 12)
	Text( 26,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 27,  "������: �������! ��� ���� ���� ��� �� �����������. ")

	Talk( 28,  "������: ����� ������! �� ����� ������ ������ ������. ���������� ������ ���������� � ������� �������� � ����������� ����� ������. " )
	Text( 28,  "� �� ����� ��� � ��� �������� ", JumpPage, 4 )
	Text( 28,  "������ � ������� � ��������� ", JumpPage, 11 )
	Text( 28,  "�������, � ��� ����� ",  CloseTalk )

	Talk( 29,  "������: ������! ������ �� ������ ����������� � �������� ���������� � ��������� � ������� ������ ������. " )
	Text( 29,  "� �� ����� ��� � ��� �������� ", JumpPage, 4 )
	Text( 29,  "������ � ������� � ��������� ", JumpPage, 11 )
	Text( 29,  "�������, � ��� ����� ",  CloseTalk)

	Talk( 30,  "������: ����� ������ ���������� �������� �������� � ������� ������ � ���� �������. " )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck,  "< ", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31,  "������: ������ �������� - ������������ ������� �� ������� ����. ��� ������� �������� ����������� ���� �������, � ����� ��� ��������� �������� �������� ����������� ���������� ����� �����. ����� ���� �� ������ �������� ������ �������� �� ���������� ������ ������ �� 50 ������� ����� ���������� 41 ������. " )
	Text( 31,  "�������� ������ �������� ",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31,  "����� ������ �������� ",JumpPage, 32 )

	Talk( 32,  "������: ������� �� ������������� ����� ���������. �� ������ �������� ������ �������� �� ���������� ������ ������ �� 50 �������. ��� ��� ����������? ")
	Text( 32,  "�������� ������ ������ ", Transfer_TeamStar, 1)

	Talk( 6,  "������: ����� ��������, �� �� �� ��������� �� �����������. " )

	--InitTrigger()
	---------------------��ҳ���6����ɹ�ɪ����ս��ѵ������
	--TriggerCondition( 1, LvCheck,  "> ", 4 )
	--TriggerCondition( 1, LvCheck,  "< ", 9 )
	--TriggerCondition( 1, HasRecord, 716 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck,  "> ", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	
	AddNpcMission ( 721 )
	AddNpcMission ( 722 )
	AddNpcMission ( 724 )
	AddNpcMission ( 726 )
	AddNpcMission ( 728 )
	AddNpcMission ( 201 )
	AddNpcMission 	(406)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)
	AddNpcMission 	(162)
	AddNpcMission 	(163)
	AddNpcMission 	(173)
	AddNpcMission 	(190)


	MisListPage(28)
	MisListPage(29)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ָ��������¶��


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ���ʿ����ŷ]		--
--							--
--		136573,57078				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk78 ()
	
	-------------------תְ˫��
	Talk( 1,  "���: ������! � ������� �������, ����� �������� �� �������. ���� ��� ��� ����������, �� ���� �������� ��������� ������� ����. " )

		----------------תְ��Ϊ����
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "> ", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000 )
	TriggerCondition( 1, HasItem, 3955, 1 )
	TriggerAction( 1, TakeItem, 3955, 1 )
	TriggerAction( 1, TakeMoney, 1000 )
	TriggerAction( 1, GiveItem, 3187, 1 , 4)
	TriggerAction( 1, GiveItem, 25, 1 , 4)
	TriggerAction( 1, SetProfession, 2 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck,  "> ", 7 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerCondition( 2, HasItem, 3955, 1 )
	TriggerAction( 2, TakeItem, 3955, 1 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, GiveItem, 3187, 1 , 4)
	TriggerAction( 2, GiveItem, 25, 1, 4)
	TriggerAction( 2, SetProfession, 2  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	Talk(2,  "Hi my friend. You have great reflexes, suitable to become a hunter. Why don't you become a hunter now? I believe that you will not be disappointed. ")
	Text(2,  "Ok, class change to be Hunter ", MultiTrigger, GetMultiTrigger(), 2)
	Text(2,  "No, it is good enough for now. ", CloseTalk)

	Talk(3,  "I have told you all I can about being a Hunter. Now its up to you to become the best Hunter. ")

	Talk(4,  "Want to be a Hunter? Only players Lv 8 and above who possess a Hunter Manual can register with me for 1000G. Muscular guy or little girl are not suitable. ")

	----------------תְ��Ϊ�ѻ���
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "> ", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck,  "> ", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 15000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 15000 )
	TriggerAction( 2, SetProfession, 12  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

	Talk(5,  "Sharpshoots nowadays only want to earn more money. They will kill anyone on sight as long as there is a bounty. Friend, it seems that you are suitable to become a sharpshooter. You have a good character and build. Would you consider to be one so that you might restore the glory of the Sharpshooters one day? ")
	Text(5,  "Ok, I will become a Sharpshooter ", MultiTrigger, GetMultiTrigger(), 2)
	Text(5,  "No, it is good enough for now. ", CloseTalk)

	Talk(6,  "Sharpshooters are not assassins. You must not forget the principles of the sharpshooters in the future. ")

	Talk(7,  "Want to become a Sharpshooter? Come back here when you are Lv 40. Remember to bring along 1 Clarity Crystal and 15000G too! ")

	--InitTrigger()

-------------------ת�����ж�
	--TriggerCondition( 1, LvCheck,  "> ", 9 )
	----TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck,  "> ", 9 )
	--TriggerCondition( 2, IsCategory, 3 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

----------------�ѻ���

	--TriggerCondition( 3, LvCheck,  "> ", 39 )
	--TriggerCondition( 3, IsCategory, 1 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	--TriggerCondition( 4, LvCheck,  "> ", 39 )
	--TriggerCondition( 4, IsCategory, 3 )
	--TriggerCondition( 4, PfEqual, 2 )
	--TriggerAction( 4, JumpPage, 5 )
	--TriggerFailure( 4, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )
	
	--AddNpcMission ( 729 )
	AddNpcMission ( 101 )
	AddNpcMission ( 251 )
	AddNpcMission ( 252 )
	AddNpcMission ( 260 )
	AddNpcMission ( 261 )
	AddNpcMission 	(410)
	AddNpcMission 	(757)
	AddNpcMission 	(167)
	AddNpcMission 	(168)
	AddNpcMission 	(169)
	AddNpcMission 	(174)
	AddNpcMission 	(175)
	AddNpcMission 	(176)
	AddNpcMission 	(180)
	AddNpcMission 	(523)
	AddNpcMission(	1237	)
-------------eleven
	AddNpcMission(	5057	)
	AddNpcMission(	5061	)	
	AddNpcMission(	5069	)
----------1.7
	AddNpcMission(	5168	)
	AddNpcMission(	5090	)
	AddNpcMission (5097 )
	AddNpcMission (5098 )
	AddNpcMission (5099 )
	AddNpcMission (5100 )
	AddNpcMission (5111 )

	MisListPage(2)


	-----��������
	AddNpcMission ( 6125 )


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���Ǳ���ʿ����ŷ

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ��̻�᳤��������]		--
--							--
--		129486,49842				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk79 ()
	
	
	Talk( 1,  "�����: ������! � ������������ ������, ����� ������� ������� ������. � ����� ��� ���� ������. " )
	Text( 1,  "������� ����������������� ����� ", JumpPage, 5)

	--------------------���������
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3138, 2 )
	TriggerCondition( 1, HasItem, 3137, 2 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3138, 2 )
	TriggerAction( 1, TakeItem, 3137, 2 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3139, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5,  "�����: �� �����, ��� ������� �������� ����� �������. ������ � ������ ����� ��������� �����! " )
	Text( 5,  "������� ���������� ",MultiTrigger, GetMultiTrigger(), 1)

	----------------�ϳ�ħ��ҩˮ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3133, 1 )
	TriggerCondition( 1, HasItem, 3134, 1 )
	TriggerCondition( 1, HasItem, 3135, 1 )
	TriggerCondition( 1, HasItem, 3136, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3133, 1 )
	TriggerAction( 1, TakeItem, 3134, 1 )
	TriggerAction( 1, TakeItem, 3135, 1 )
	TriggerAction( 1, TakeItem, 3136, 1 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3140, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5,  "������� ��������� ����� ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6,  "�����: ��� ��, ��� �� ����������. " )
	Talk( 7,  "�����: ����� ������� 1 ���������� ���������� 2 ���������, 2 ���������� ������, 1 ������ � 200 ������. " )
	Talk( 8,  "�����: ����� ������� 1 ��������� ����� ���������� 1 ��������� �����, 1 ��� ��������, 1 ����-����, 1 ������ ������� �����, 1 ������ � 200 ������. " )

	AddNpcMission 	(459)
	AddNpcMission 	(465)
	AddNpcMission 	(699)
	AddNpcMission 	(800)
	AddNpcMission	(1005)
	AddNpcMission	(1060)
	AddNpcMission	(1115)
	AddNpcMission	(1169)
	AddNpcMission(	1238	)
	--------------------1.7
	AddNpcMission ( 5084	)
	AddNpcMission ( 5085	)
	AddNpcMission ( 5086	)
	AddNpcMission ( 5087	)
	AddNpcMission (5143 )
	AddNpcMission (5144 )
	AddNpcMission (5145 )
	AddNpcMission (5146 )
	AddNpcMission (5151 )



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�̻�᳤��������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ����塤�����˹]		--
--							--
--		134652,45141				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk80 ()
	
	
	Talk( 1,  "���: ������� ���� ����� �������� ����� ����� ��� �������� ����� ������. ����� ��� ���� ����� � �������. " )
	Text( 1,  "������� ��������� ������� ",JumpPage, 2 )
	Text( 1,  "������... ",CloseTalk )


	Talk( 2,  "���: ����.. ������ ������� ��������� �������? ����� ��� ��� �� �����. " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerAction( 1, CreateGuild, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2,  "������� ��������� ������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "���: ����� ������� ��������� ������� �� ��� ������. ��� ����� �������� 1 ������ ������ � 100000 ������. " )


	AddNpcMission ( 253 )
	AddNpcMission ( 254 )
	AddNpcMission (	453 )
	AddNpcMission 	(698)
	AddNpcMission 	(801)
	AddNpcMission	(1004)
	AddNpcMission	(1059)
	AddNpcMission	(1114)
	AddNpcMission	(1168)
	AddNpcMission	(317)
	AddNpcMission	(321)
	AddNpcMission	(322)
-----------eleven
	AddNpcMission	(5045)
	AddNpcMission	(5046)
	AddNpcMission	(5047)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���Ǳ����塤�����˹

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���г��ɡ�������]		--
--							--
--		136058,51931				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk81 ()
	
	
	Talk( 1,  "�������: ����� ���������� � ���� ������! ��� � ���� ������? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "��������� (200 �������) ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "������������� ", OpenUnite)
	Text( 1, "���� ", BuyPage)
	Talk( 2,  "��������, �� � ��� ������������ ����� ��� ����� � ���������. " )
	
   InitTrade()
   Other(   0886   )

	AddNpcMission	(1102)
	AddNpcMission	(187)
	AddNpcMission	(188)
	AddNpcMission	(189)
----------eleven
	AddNpcMission	(597)
	AddNpcMission	(598)
	AddNpcMission ( 6093 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ�������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�ưɷ���Ա���Ű���]		--
--							--
--		131083,53031				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk82 ()
	
	
	Talk( 1,  "�������: ������������! �� �������� �� � ��� ���������� ������� ��� ����? " )
	Text( 1,  "������� ��������� ", JumpPage, 2)
	Text( 1,  "������� ��� ", JumpPage, 6)

-----------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1792, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1792, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1802, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "�������: �� ����������� � ��� �� ����������? �������� ���! " )
	Text( 2,  "������� ������� ��������� ", MultiTrigger, GetMultiTrigger(), 1)
-------------------------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1793, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1793, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1803, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2,  "������� ��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "�������: ���, �� ��� �� ������� ������! " )
	Talk( 4,  "�������: ��� ������������� 1 �������� ��������� ����� 5 ������� ������, 1 ������ ���, 1 �������� ������ � 200 ������. " )
	Talk( 5,  "�������: ��� ������������� 1 ���������� ��������� ����� 5 ��������� ������, 1 ������ ���, 1 �������� ������ � 200 ������. " )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6,  "�������: � ���� ������ ��� �� ���� ������! �� ����������� ������? " )
	Text( 6,  "������� ��� ����������� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7,  "�������: ������� ��� ����� ������� ���, ��� � �������. " )

	Talk( 8,  "�������: ��������, �� ��� ������������� 1 ��� ����������� ������ ��������� 10 ���������� ������� � 1 ������. " )
	AddNpcMission	(1078)
	AddNpcMission	(389)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ưɷ���Ա���Ű���

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[��װ����������]		--
--							--
--		134926,53992				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk83 ()
	
	
	Talk( 1,  "�����: ������, � ������� ������. � ���� �� ������ ����� ������ ������� � ������! " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )
	
	InitTrade()
	Defence(	0305	)
	Defence(	0481	)
	Defence(	0657	)
	Defence(	0313	)
	Defence(	0487	)
	Defence(	0665	)
	Defence(	0306	)
	Defence(	0482	)
	Defence(	0658	)
	Defence(	0311	)
	Defence(	0489	)
	Defence(	0663	)
	Defence(	0307	)
	Defence(	0483	)
	Defence(	0659	)
	Defence(	0314	)
	Defence(	0490	)
	Defence(	0666	)
	Defence(	0310	)
	Defence(	0486	)
	Defence(	0662	)
	Defence(	0491	)
	Defence(	0315	)
	Defence(	0667	)
	Defence(	0312	)
	Defence(	0488	)
	Defence(	0664	)
	Defence(	0316	)
	Defence(	0492	)
	Defence(	0668	)
	Defence(	0317	)
	Defence(	0493	)
	Defence(	0669	)




	AddNpcMission ( 725 )
	AddNpcMission	(1067)
	AddNpcMission	(170)
	AddNpcMission	(171)
	AddNpcMission	(172)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ����������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�õ��ϰ塤Լɪ��]		--
--							--
--		129074,54098				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk84 ()
	
	
	Talk( 1,  "����: ����� ���������� � ��������� ������. � �� �������� ����. " )
	AddNpcMission	(1085)
	AddNpcMission	(184)
	AddNpcMission	(185)
	AddNpcMission	(186)

	

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤Լɪ��

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[·�ˡ���]		--
--							--
--		133550,46900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk85 ()
	
	
	Talk( 1,  "����: �� ������ ���� ���� �������? ��� ����� � ����������, ������� � �������. " )
	--Text( 1,  "Refine ", JumpPage, 2)
-------------------����ؽ��ʯ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1781, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1781, 10 )
	TriggerAction( 1, GiveItem, 1782, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )	
	Talk( 2,  "Tink: I am not just a normal NPC. The game cannot do without me! Hoho! Let me prove it to you! " )
	Text( 2,  "Refine Terra Gold ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Tink: Ok! This Terra Gold Ore is yours! " )
	Talk( 4,  "Tink: Tink: I have a method to make Terra Gold Ore. Pass me 10 Terra Gold Fragment and 200G and it'll be yours. " )

	AddNpcMission ( 6015 )
	AddNpcMission ( 6016 )
	AddNpcMission ( 6019 )
	AddNpcMission ( 6020 )
	AddNpcMission ( 6021 )
	AddNpcMission ( 6022 )
	AddNpcMission ( 6023 )
	AddNpcMission ( 6024 )

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���




------------------------------------------------------------
-- ����֮��:��ʷ����:����ָ������
------------------------------------------------------------

function BT_NewUser001()

	Talk( 1,  "�����: ������! � ���������� �������! ���� ���� ������� - ���������! " )
	Text( 1,  "������ �������� ", JumpPage, 31 )
	Text( 1,  "������ � ������� ", JumpPage, 4 )
	Text( 1,  "������ � ������� � ��������� ", JumpPage, 11 )
	Text( 1,  "������ ���������� �������� ", JumpPage, 30 )
	Text( 1,  "�������, � ��� ����� ",  CloseTalk)

	Talk( 4,  "�����: ������ ��� ������ �������� �����. ������ ��� ����� ����� ������ ������ ������! " )
	Text( 4,  "������ �� ��������� �������� ", JumpPage, 5 )
	Text( 4,  "������ � �������� �������� ", JumpPage, 7 )
	Text( 4,  "������ � �������� ��������� ", JumpPage, 8 )
	Text( 4,  "������ � �������� ������������ ", JumpPage, 9 )
	Text( 4,  "������ � ������� ", JumpPage, 10 )

	Talk( 5,  "�����: � ������� ������� �������� ������ �����. ��� ��� � �������-��������� ����� ������. " )
	Text( 5,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 5,  "�������, � ��� ����� ",  CloseTalk )

--	Talk( 6,  "Look for me again if there is anything you don't understand ", CloseTalk )

	Talk( 7,  "�����: ���� ���� ����� �������, �� �� ������� �� � �������� � ������-�������� ����� ������. " )
	Text( 7,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 7,  "�������, � ��� ����� ",  CloseTalk )

	Talk( 8,  "�����: ������ ����� ������ ����� ����� ����� � ���������� �����. �� ��������� �� ������ ������� �������. " )
	Text( 8,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 8,  "�������, � ��� ����� ",  CloseTalk )

	Talk( 9,  "�����: � ������� ������������ ����� ���������� � ����� �� ������������ �������. ��� ����������� � ���������� ������ �� ������. " )
	Text( 9,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 9,  "�������, � ��� ����� ",  CloseTalk )

	Talk( 10,  "�����: ���� ���� ����� ���������, �� ��� � ��������� ������� �� �������. " )
	Text( 10,  "����� � ������ ��������� ", JumpPage, 4 )
	Text( 10,  "�������, � ��� ����� ", CloseTalk)

	
	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11,  "�����: � ���� ���� ��������� ���������� � ������� � ���������. ��� ���� ����������? " )
	Text( 11,  "������ � ������� ", JumpPage, 12)
	Text( 11,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 11,  "�������, � ��� ����� ", JumpPage, 6 )
	--Text( 11,  "������ � ������� ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11,  "������ � ������ ��������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12,  "�����: ����� ���������� 4 ������� ������, � ������� �� ��� ���� �����������. ��� ����� ����� �� ����� �� ������? " )
	Text( 12,  "������ � �������� ", JumpPage, 14 )
	Text( 12,  "������ �� ��������� ", JumpPage, 15 )
--	Text( 12,  "Regarding Sailor ", JumpPage, 16 )
	Text( 12,  "������ �� �������������� ", JumpPage, 17 )
	Text( 12,  "������ �� ��������� ", JumpPage, 18 )
--	Text( 12,  "Regarding Artisan ", JumpPage, 19 )
--	Text( 12,  "Regarding Merchant ", JumpPage, 20 )
	Text( 12,  "� ��� �����. ���� ������ ��� ��� ������. ", JumpPage, 11 )

	Talk( 13,  "�����: ����� ���������� 5 ������� ��������. ������ ������� ����� ����� ������������ �������� � 100. � ������� ��� �������� ����� 5. ������ ������� ��� ����� ���������� ��� 1 ����� �������� � ������. � ������ ���� � ��� ���� 5 ��������� ������, ������� �� ������ ��� " )
	Text( 13,  "������ � ���� ", JumpPage, 21 )
	Text( 13,  "������ � �������� ", JumpPage, 22 )
	Text( 13,  "������ � ������������ ", JumpPage, 23 )
	Text( 13,  "������ � ���� ", JumpPage, 24 )
	--Text( 13,  "Regarding Luck ", JumpPage, 25 )
	Text( 13,  "������ � �������� ", JumpPage, 26 )
	Text( 13,  "� ��� �����. ���� ������ ��� ��� ������. ", JumpPage, 11 )

	Talk( 14,  "�����: ������� ����� ����� ������� ���������� �������������. �������� ����� ����� ������ ���� ��� ������. " )
	Text( 14,  "������ � ������ ������� ", JumpPage, 12)
	Text( 14,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 14,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 15,  "�����: �������� ��� ������������ �����, ��������� ������������ � ��� ������ � ������������� ������. ��������� ����� ����� ������ ���� ��� ������. " )
	Text( 15,  "������ � ������ ������� ", JumpPage, 12)
	Text( 15,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 15,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 16,  "�����: Sailor is the strongest class in the sea. It is still unreleased in current version. " )
	Text( 16,  "������ � ������ ������� ", JumpPage, 12)
	Text( 16,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 16,  "�������, � ��� ����� ", JumpPage, 27)
	
	Talk( 17,  "�����: �����: ������������� ��� ������ ����� ��� ������������ ����. �������������� ����� ����� ������ ������, ���� ��� ���. " )
	Text( 17,  "������ � ������ ������� ", JumpPage, 12)
	Text( 17,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 17,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 18,  "�����: �������� ��� ����������� ������ ������ ����, �� ��� �� �������� �������� ���������� ����. ����� ��������� ����� ���� ������ ��� ���. " )
	Text( 18,  "������ � ������ ������� ", JumpPage, 12)
	Text( 18,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 18,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 19,  "�����: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version. " )
	Text( 19,  "������ � ������ ������� ", JumpPage, 12)
	Text( 19,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 19,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 20,  "�����: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version. " )
	Text( 20,  "������ � ������ ������� ", JumpPage, 12)
	Text( 20,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 20,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 21,  "�����: ���� ������ �� ���������� ����. " )
	Text( 21,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 21,  "������ � ������ ������� ", JumpPage, 12)
	Text( 21,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 22,  "�����: �������� ������ �� ��������� � �������� �����. " )
	Text( 22,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 22,  "������ � ������ ������� ", JumpPage, 12)
	Text( 22,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 23,  "�����: ������������ ������ �� ���������� ����� � ������ " )
	Text( 23,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 23,  "������ � ������ ������� ", JumpPage, 12)
	Text( 23,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 24,  "�����: ��� ������ �� ���������� ����, ���������� ������ � ���� ��������� ������������. " )
	Text( 24,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 24,  "������ � ������ ������� ", JumpPage, 12)
	Text( 24,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 25,  "�����: Luck increases Critical Rate and Combining Rate " )
	Text( 25,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 25,  "������ � ������ ������� ", JumpPage, 12)
	Text( 25,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 26,  "�����: �������� ������ �� ���� ����� � ���� ������������� �����. " )
	Text( 26,  "������ � ������ ��������� ", JumpPage, 13)
	Text( 26,  "������ � ������ ������� ", JumpPage, 12)
	Text( 26,  "�������, � ��� ����� ", JumpPage, 27)

	Talk( 27,  "�����: ������, ��� ���� ����� ���� ��������� �������. ")
	
	Talk( 28,  "�����: ����������! ������ ���� ��� �������� �� �������� ������� � ���������. ���� ��������� ����� ������� - ���������. " )
	Text( 28,  "������ � ������� ", JumpPage, 4 )
	Text( 28,  "������ � ������� � ��������� ", JumpPage, 11 )
	Text( 28,  "�������, � ��� ����� ",  CloseTalk)

	Talk( 29,  "�����: ����������! �� ���������� 10 ������ �� ������� ������� ��� ���� ����� �����. " )
	Text( 29,  "� �� ����� ��� � ��� �������� ", JumpPage, 4 )
	Text( 29,  "������ � ������� � ��������� ", JumpPage, 11 )
	Text( 29,  "�������, � ��� ����� ",  CloseTalk )

	Talk( 30,  "�����: ����� ������ ���������� �������� ��������� � �������� ������ � ���� �������. " )
	
	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck,  "< ", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 31,  "�����: ������ �������� - ������������ ������� �� ������� ����. ��� �������� ����������� ���� ������ ���������, � ����� ��� ��������� �������� �������� ���� ����������� ���� �������. ����� ���� �� ���������� 41 ������ �� ������� �������� ������ �������� �� ���������� ������ ������ �� 50 �������. " )
	Text( 31,  "�������� ������ �������� ",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31,  "�������� ������ �������� ",JumpPage, 32 )

	Talk( 32, "�����: ������� �� ������������� ����� ���������. �� ���������� 41 ������ �� ������ �������� ������ �������� �� ���������� ������ ������ �� 50 �������. ��� ��� ����������? ")
	Text( 32,  "�������� ������ ������ ", Transfer_TeamStar, 1)

	Talk( 6,  "�����: ��������, �� �� �� ��������� �� ����������. " )

	--InitTrigger()
	---------------------��ҳ���6����ɹ�ɪ����ս��ѵ������
	--TriggerCondition( 1, LvCheck,  "> ", 4 )
	--TriggerCondition( 1, LvCheck,  "< ", 8 )
	--TriggerCondition( 1, HasRecord, 704)
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck,  "> ", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )
	AddNpcMission ( 701 )
	AddNpcMission ( 702 )
	AddNpcMission ( 704 )
	AddNpcMission ( 706 )
	AddNpcMission ( 708 )
	AddNpcMission ( 200 )
	AddNpcMission 	(402)
	AddNpcMission 	(50)
	AddNpcMission 	(51)
	AddNpcMission 	(61)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)
	AddNpcMission 	(82)

	MisListPage(28)
	MisListPage(29)
-----------------����-------------ѹ���
	--AddNpcMission 	(5507)
end




------------------------------------------------------------
-- ͨ�þ������ű�
------------------------------------------------------------

function r_talk87 ()

	Talk( 1,  "������������� �����: ������! � ������������� �����! �� ������� ����������� ���� ���� � ������� ����� ������ �������? " )
	Text( 1,  "���� ", BuyPage )	
	Text( 1,  "�������� ������ ������ ", JumpPage, 2)
    	Text(1, "� ���� �������� ������ ��������������. " , FullBuff,1)
	Text( 1,  "�������� ����� ����������� ", SetSpawnPos,  "\193\224\240 \192\240\227\229\237\242\224")
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )

	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Text( 1,  "������� ��������� ", MultiTrigger,GetMultiTrigger(),2)

	--Text( 1,  "����� ����� ", JumpPage, 3)
	Text( 1,  "�������� ���� ������ ������ ", JumpPage, 3)

	InitTrade()
	Other(	3100	)
	Other(	3101	)
	Other(	3102	)
	Other(	3103	)
	Other(	3104	)
	Other(	3105	)
	Other(	3342	)
	Other(	852	)

	Talk( 2,  "������������� �����: ����� �������� ������ ������ �� ������ ���� 25 ������ � ��������� 50000 ������. ������ ������ ���������� ��� ���� ������ � ��������� � ���. ����� ��������� �� ������ ����� ����������. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "> ", 25 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, NoItem, 3849, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 3849, 1, 97 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "�������� ������ ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "������������� �����: ��� ������������� ���������� ����� �� ������ �������� ���� ���� ������ ������ �� ���� �����. ��������� 1 ���� ����� ����� 10 ����� ������ ������ � 500 ������. " )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit,  "< ", 0 )
	TriggerCondition( 1, HasOffer, 10 )
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, TakeOffer, 10 )
	TriggerAction( 1, AddCredit, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3,  "�������� 10 ����� ������ ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit,  "< ", 0 )
	TriggerCondition( 1, HasOffer, 50 )
	TriggerCondition( 1, HasMoney, 2500 )
	TriggerAction( 1, TakeMoney, 2500 )
	TriggerAction( 1, TakeOffer, 50 )
	TriggerAction( 1, AddCredit, 5 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 3,  "�������� 50 ����� ������ ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit,  "< ", 0 )
	TriggerCondition( 1, HasOffer, 100 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, TakeOffer, 100 )
	TriggerAction( 1, AddCredit, 10 )
	TriggerFailure( 1, JumpPage, 12 )
	Text( 3,  "�������� 100 ����� ������ ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit,  "< ", 0 )
	TriggerCondition( 1, HasOffer, 300 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, TakeOffer, 300 )
	TriggerAction( 1, AddCredit, 30 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 3,  "�������� 300 ����� ������ ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4,  "������������� �����: �������� �� �� �� ��������� �� ����������. ����� �������� � ��� ��� ���� ������ ������. " )

	Talk( 5,  "������������� �����: ��� ������ ����� ������ ������ �� ������ ����� ������������� �����, ����� ���� ��������� 10 ����� ������ ������ � 500 ������ �� ������ ���� �����. " )

	Talk( 6,  "������������� �����: Regarding Honor system as followed " )
	Text( 6,  "Regarding Battle Count ", JumpPage, 7)
	Text( 6,  "Regarding Challenge Honor ", JumpPage, 8)
	Text( 6,  "Regarding Victory Honor ", JumpPage, 9)
	Text( 6,  "Regarding Escape Penalty ", JumpPage, 10)

	Talk( 7,  "������������� �����: Each battle will increase battle count by 1 " )

	Talk( 8,  "������������� �����: Each kill will increase Kill count by 1 and 1 Honor point (Opponent lower by 10 levels will not have any Honor. Those higher by 10 levels will earn a bonus 1 Honor). Vice versa for those defeated in challenge. " )

	Talk( 9,  "������������� �����: Each victory to the party will increase victory count by 1 and gain Honor points according to the differences between the average level of the two parties. " )

	Talk( 10,  "������������� �����: Each time a party escape or quit battle, System will deduct Honor points according to the average level of both party and an additional of 2 Honor points per person. The other party will gain Honor points based on those lost by the party. " )

	Talk( 11,  "������������� �����: Hi! To exchange 50 Party Contribution points for 5 Honor points, you will need to have 50 Party Contribution points, 2500G and a negative Honor value. " )

	Talk( 12,  "������������� �����: Hi, 100 Party Contribution points can be exchanged for 10 Honor points. You also need to pay 5000G and have a negative Honor point value in order to exchange. " )

	Talk( 13,  "������������� �����: Hi, exchanging 300 Party Contribution points for 30 Honor points requires 300 Party Contribution points, 15000G and negative Honor points " )

end



------------------------------------------------------------
-- �����ǡ���Ѳ�߱������˹
------------------------------------------------------------

function r_talk88 ()

	Talk( 1,  "�������: ������, � ����� �������. ������ ������� ���������� ����� ���������, � ������� ���������� ���� �� �������. �� �� ������ � ���� ��������� �������� �����. ��� ������ ��� ���������� ��� ��������? " )

	Talk( 2,  "Marcusa: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). Explorer look for Little Daniel at (2193, 2730). You can reach Icicle or Shaitan by using the teleporter. " )


	---------------------��ҳ���9��
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "> ", 8 )
	TriggerCondition( 1, LvCheck,  "< ", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 730 )
	--AddNpcMission ( 736 )
	--AddNpcMission ( 737 )
	AddNpcMission ( 400 )
	AddNpcMission ( 52 )
	AddNpcMission ( 53 )
	AddNpcMission ( 54 )

	MisListPage(2)

end

------------------------------------------------------------
-- ɳᰳǡ���Ѳ�߱�������
------------------------------------------------------------

function r_talk89 ()

	Talk( 1,  "�����: ������, � ���������� ��������� � ������. ������ ���������, ��������� �������� ������! " )
	
	Talk( 2,  "Michael: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Argent by using the teleporter. " )

	---------------------��ҳ���9��
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "> ", 8 )
	TriggerCondition( 1, LvCheck,  "< ", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 731 )
	--AddNpcMission ( 740 )
	--AddNpcMission ( 741 )
	AddNpcMission ( 235 )
	AddNpcMission ( 236 )
	AddNpcMission ( 241 )
	AddNpcMission ( 242 )
	AddNpcMission 	(412)
	AddNpcMission 	(85)
	AddNpcMission 	(86)
	AddNpcMission 	(87)
	AddNpcMission 	(922)--------------------------------------------
	AddNpcMission 	(923)
	AddNpcMission 	(924)------------


	MisListPage(2)

end

------------------------------------------------------------
-- ���Ǳ�����Ѳ�߱���СĪ
------------------------------------------------------------

function r_talk90 ()

	Talk( 1,  "����� ��: � ���������� ��������� � ��� ������ ������� ����. � ��� ��� � ����� ��� ���� ������ ����� ������? ����� � ������ ������ ��� ���... " )

	Talk( 2,  "Little Mo: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Shaitan by using the teleporter. " )

	---------------------��ҳ���9��
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "> ", 8 )
	TriggerCondition( 1, LvCheck,  "< ", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 732 )
	--AddNpcMission ( 742 )
	--AddNpcMission ( 743 )
	AddNpcMission ( 255 )
	AddNpcMission ( 256 )
	AddNpcMission 	(408)
	AddNpcMission 	(164)
	AddNpcMission 	(165)
	AddNpcMission 	(166)
	AddNpcMission 	(177)
	AddNpcMission 	(178)
	AddNpcMission 	(179)


	MisListPage(2)

end

------------------------------------------------------------
-- ɳᰳǡ���ҩ�����ˡ�ɳ����
------------------------------------------------------------

function r_talk91 ()

	Talk( 1,  "����: ������! � �������� �������! � ���� ���� ��� �� ������? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )
	
	Talk( 2,  "Shala: Very good. You have advanced to Lv9. You can select a class at Lv 10. Now is the time for you to make a decision. Look for Peter in Argent City at (2192, 2767) if you want to become a Swordsman. Look for High Priest - Gannon in Shaitan City at (862, 3500) to be a Herbalist. To be a Hunter, look for Swordsman Ray in Icicle City at (1365, 570). As the journey to Argent and Icicle is too far, look for the Teleporter to teleport you there in an instant. " )
	Text( 2,  "���� ", BuyPage )
	Text( 2,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)


	---------------------��ҳ���9��
	--InitTrigger()
	--TriggerCondition( 1, LvCheck,  "> ", 8 )
	--TriggerCondition( 1, LvCheck,  "< ", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 717 )
	--AddNpcMission ( 734 )
	--AddNpcMission ( 744 )
	--AddNpcMission ( 745 )

	MisListPage(2)

end 

------------------------------------------------------------
--�����ӵ�ѩԭ    ����ҽ������������
------------------------------------------------------------

function r_talk92 ()

	Talk( 1,  "����: ������! � ������� ������! ��� ����� ����� ������ �����? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	471	)
	AddNpcMission(	472	)
	AddNpcMission	(753)
	
end

------------------------------------------------------------
-- ����ɭ�֡�������ҽ��������ϣ��
------------------------------------------------------------

function r_talk93 ()

	Talk( 1,  "��������: ������! � ������� ������! ��� ��� ����������? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	1442	)
	AddNpcMission (	1900	)

	---------------����
	AddNpcMission	(5567)
	AddNpcMission	(5568)
--	AddNpcMission ( 6052 )
--	AddNpcMission ( 6053 )
	


	
end

------------------------------------------------------------
-- �¶�άƽԭ-----����
------------------------------------------------------------

function r_talk94 ()

	Talk( 1,  "�����: �������� �� ������� ��� � �����������, �� � ���� ���� ������������ �������. � ��� ������� ���? " )

end

------------------------------------------------------------
-- ��������վ-----���϶�
------------------------------------------------------------

function r_talk95 ()

	Talk( 1,  "������: ��� ����� ���� ����� �������� ������ ����, ����� ��������� �� � ������� �������. ��� ��� ��� ��������? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
		
	AddNpcMission	(1065)
	AddNpcMission	(	869	)
	AddNpcMission	(	872	)
	AddNpcMission	(	874	)
	AddNpcMission	(	878	)
	AddNpcMission	(	886	)
	AddNpcMission	(	889	)
	AddNpcMission	(	470	)
	AddNpcMission(	1738	)
	AddNpcMission (	1927	)
	AddNpcMission (	1948	)

	------------------����
	--AddNpcMission (5504	)



end

------------------------------------------------------------
-- �¶�άƽԭ-----ϯ��
------------------------------------------------------------

function r_talk96 ()

	Talk( 1,  "�������: ��� � ������ ������� ��� � ���� � ������� �����. ���� " )

end

------------------------------------------------------------
-- �¶�άƽԭ-----������
------------------------------------------------------------

function r_talk97 ()

	Talk( 1,  "�������: ����� ������� ��� ���������� ��������, ������ ���� �� ��������� �����... " )

	AddNpcMission 	(409)
	AddNpcMission 	(415)
	AddNpcMission 	(424)
	AddNpcMission 	(426)
	AddNpcMission 	(449)
	AddNpcMission 	(809)
	AddNpcMission 	(813)
	AddNpcMission(	1431	)
	AddNpcMission (	1901	)
----------eleven
	AddNpcMission (	5048	)
	AddNpcMission (	5049	)
	AddNpcMission (	5050	)
	AddNpcMission (	5051	)
	AddNpcMission (	5052	)
--	AddNpcMission ( 6030 )
--	AddNpcMission ( 6031 )

end

------------------------------------------------------------
-- �¶�άƽԭ-----����
------------------------------------------------------------

function r_talk98 ()

	Talk( 1,  "����: ��� ���� �����! � � ���� ������������� � ����� � ���� �������. " )

end

------------------------------------------------------------
-- �¶�άƽԭ-----³³
------------------------------------------------------------

function r_talk99 ()

	Talk( 1,  "����: ����. �� ������ �������� ���? " )

	AddNpcMission(	1736	)
	AddNpcMission (	1925	)
	AddNpcMission (	1946	)

	---------------����
	AddNpcMission	(5561)
	AddNpcMission	(5562)
--	AddNpcMission ( 6040 )
--	AddNpcMission ( 6041 )



end

------------------------------------------------------------
-- �¶�άƽԭ-----�µ�˹.����
------------------------------------------------------------

function r_talk100()

	Talk( 1,  "�������: � ��� ����... �� ��� �� ����� ���� ���������� �� ������ ������� � ������� ������������� ����������. " )

	AddNpcMission (	454	)
	AddNpcMission (	458	)
	AddNpcMission 	(654)
	AddNpcMission 	(657)
	AddNpcMission 	(658)
	AddNpcMission 	(663)
	AddNpcMission 	(666)
	AddNpcMission	(1110)
	AddNpcMission(	1584	)
	AddNpcMission (	1914	)

	




end

------------------------------------------------------------
-- �¶�άƽԭ-----÷��
------------------------------------------------------------

function r_talk101()

	Talk( 1,  "�������: ���� ������ ���������� �������, �� �������� �����. " )

end

------------------------------------------------------------
-- �¶�άƽԭ-----�Ų���
------------------------------------------------------------

function r_talk102()

	Talk( 1,  "�����: � ������� ������ �����-����������. ������ � ������ ��� ��� ��������� � �������. " )

	AddNpcMission 	(603)
	AddNpcMission 	(608)
	AddNpcMission 	(613)
	AddNpcMission 	(615)
	AddNpcMission 	(618)


end

------------------------------------------------------------
-- �¶�άƽԭ-----С���ɭ
------------------------------------------------------------

function r_talk103()

	Talk( 1,  "��������� ����: ���� ��������� ��� ������������� � ������������. �� �������� ���� ��������? " )

end

------------------------------------------------------------
-- �¶�άƽԭ-----�꼧����
------------------------------------------------------------

function r_talk104()

	Talk( 1,  "������� ����: � ����� ������ ������������ ����� � ������� ����� ������ �������. ��� ���������� ���������� ���� ������� �����. " )

end

------------------------------------------------------------
-- �¶�άƽԭ-----��������
------------------------------------------------------------

function r_talk105()

	Talk( 1,  "�����: ���������� ������? � ������� �������� ����� ���� � �����! ��� ������� 4 ������ � 108 ����. " )

	AddNpcMission 	(451)
	AddNpcMission 	(457)
	AddNpcMission 	(621)
	AddNpcMission 	(625)
	AddNpcMission(	1590	)
	AddNpcMission (	1902	)
	AddNpcMission (	1940	)

	




end

------------------------------------------------------------
-- �¶�άƽԭ-----��������
------------------------------------------------------------

function r_talk106()

	Talk( 1,  "����� ����: ������ ������ ������ ��� ������ �����? � ���������? � ���� ��� ������... " )

	AddNpcMission 	(689)
	AddNpcMission	(1109)
	AddNpcMission(	1579	)
	AddNpcMission (	1918	)





end

------------------------------------------------------------
-- �¶�άƽԭ-----�����˹
------------------------------------------------------------

function r_talk107()

	Talk( 1,  "�����������: ����� �������! ��� ������ �� �� �������� � ��� ������? " )
	AddNpcMission 	(425)
	AddNpcMission 	(431)
	AddNpcMission 	(436)
	AddNpcMission 	(442)
	AddNpcMission 	(448)
	AddNpcMission 	(601)
	AddNpcMission 	(607)
	AddNpcMission 	(610)
	AddNpcMission 	(612)
	AddNpcMission	(1001)
	AddNpcMission	(1165)



end

------------------------------------------------------------
-- �¶�άƽԭ-----�Ͽ��ɭ
------------------------------------------------------------

function r_talk108()

	Talk( 1,  "������ ����: � ���� ������ ���� � ������ ����� �� ����������� ������ � ��������� � �����������. " )

	AddNpcMission	(475)

end

------------------------------------------------------------
-- �¶�άƽԭ-----�����б�
------------------------------------------------------------

function r_talk109()

	Talk( 1,  "�����, ������! ��� ������� �������." )

end

------------------------------------------------------------
-- ���˻�Į-----��������˹
------------------------------------------------------------

function r_talk110()

	Talk( 1,  "�������: ��� ����� ��������, ������ ������� �� ������ ����� �� ����� �������. ��� ���������. " )

	AddNpcMission 	(411)
	AddNpcMission 	(669)
	AddNpcMission 	(675)
	AddNpcMission 	(678)
	AddNpcMission 	(680)
	AddNpcMission	(1075)



end

------------------------------------------------------------
-- ���˻�Į-----�׶�����
------------------------------------------------------------

function r_talk111()

	Talk( 1,  "�������: ������! ��� ������ �������� ���� ����. � �� ���� ��������� ���� �� ���� ������ ���� ��� ��������. " )

	AddNpcMission 	(456)
	AddNpcMission 	(656)
	AddNpcMission 	(661)
	AddNpcMission 	(665)
	AddNpcMission	(1142)
	AddNpcMission(	1582	)
	AddNpcMission (	1910	)
---------eleven
	AddNpcMission (	5025	)
	AddNpcMission ( 5026	)
	AddNpcMission ( 5029	)
	AddNpcMission (	5070)
	AddNpcMission ( 5072	)
	AddNpcMission ( 5073	)
	------------1.7
	AddNpcMission ( 5074	)
	AddNpcMission(	5092 )
	AddNpcMission (5101 )
	AddNpcMission (5102 )
	AddNpcMission (5103 )
	AddNpcMission (5104 )
	AddNpcMission (5113 )
--	AddNpcMission ( 6032 )
--	AddNpcMission ( 6033 )

end

------------------------------------------------------------
-- ���˻�Į-----�¸�ɭ
------------------------------------------------------------

function r_talk112()

	Talk( 1,  "��������: ���� ����� ����� � ������ ������ �������� �����������. " )

	AddNpcMission	(1111)


end

------------------------------------------------------------
-- ���˻�Į-----�����ǡ��Ʒ�
------------------------------------------------------------

function r_talk113()

	Talk( 1,  "������: ������! � ������!. " )
	AddNpcMission	(1131)

end

------------------------------------------------------------
-- ���˻�Į-----�ϵ�����
------------------------------------------------------------

function r_talk114()

	Talk( 1,  "������: ����������������! ������� ���������� � �������� �����! " )

	AddNpcMission 	(640)
	AddNpcMission 	(644)
	AddNpcMission 	(645)
	AddNpcMission 	(646)
	AddNpcMission 	(651)
	AddNpcMission	(1119)
	AddNpcMission(	1437	)
	AddNpcMission (	1911	)
--	AddNpcMission ( 6038 )
--	AddNpcMission ( 6039 )

	





end

------------------------------------------------------------
-- ���˻�Į-----�������˹
------------------------------------------------------------

function r_talk115()

	Talk( 1,  "����� �����: � �������� � ������� ���������� ������. �� ��� ��� � ���� ��� ���, �� � �������� � �����, � �������� ���� ������� ���������� ������. " )
	AddNpcMission	(1120)


end

------------------------------------------------------------
-- ���˻�Į-----÷�����ǡ�è��
------------------------------------------------------------

function r_talk116()

	Talk( 1,  "�������: ������ �� ��� ��������? �� ������� �� ������ �������-������? " )
	
	AddNpcMission ( 245 )
	AddNpcMission ( 246 )
	AddNpcMission ( 247 )
	AddNpcMission ( 249 )
	AddNpcMission ( 250 )
	AddNpcMission (1141)

end

------------------------------------------------------------
-- ���˻�Į-----�ŵ����ˡ���ǽ
------------------------------------------------------------

function r_talk117()

	Talk( 1,  "�����: ��� ������ ��� � ������� ������� ��������? � �� ������� ������� �������, ������ � ��� �� ������ � ������ �����. " )

end

------------------------------------------------------------
-- ���˻�Į-----����˹����ɳ
------------------------------------------------------------

function r_talk118()

	Talk( 1,  "��������: � �� ����� ����� ���� ������. " )
	
	AddNpcMission ( 257 )
	AddNpcMission ( 258 )
	AddNpcMission ( 259 )
	AddNpcMission 	(435)
	AddNpcMission 	(686)
	AddNpcMission 	(691)
	AddNpcMission 	(693)
	AddNpcMission 	(694)
	AddNpcMission	(1082)



end

------------------------------------------------------------
-- ���˻�Į-----ͨ���ߡ��¹���
------------------------------------------------------------

function r_talk119()

	Talk( 1,  "������ ������� �����: � ���� ������ ��, ��� ������ �� �����. " )

	AddNpcMission 	(804)
	AddNpcMission 	(808)
	
	AddNpcMission	(	468	)
	AddNpcMission(	1586	)
	AddNpcMission (	1920	)

	
---------------����
	AddNpcMission	(5585)
	AddNpcMission	(5586)



end

------------------------------------------------------------
-- ���˻�Į-----������˹�����
------------------------------------------------------------

function r_talk120()

	Talk( 1,  "���������: � �� ������� ������� ��������� ������� ��� ���������� ����������. ��� �������� ���� �����. " )

	AddNpcMission 	(407)
	AddNpcMission 	(638)
	AddNpcMission 	(642)
	AddNpcMission(	1438	)
	AddNpcMission (	1912	)

	



end

------------------------------------------------------------
-- ���˻�Į-----���ﰬ�ǡ�����
------------------------------------------------------------

function r_talk121()

	Talk( 1,  "�����: �, ��� ��? ��� ����... � ������ ��� �����? " )

	
	AddNpcMission	(	870	)
	AddNpcMission	(	875	)
	AddNpcMission	(	876	)
	AddNpcMission	(	880	)
	AddNpcMission	(	882	)
	AddNpcMission	(	885	)
	AddNpcMission	(	888	)
	AddNpcMission	(	891	)
	AddNpcMission	(	892	)
	AddNpcMission(	1735	)
	AddNpcMission (	1924	)
	AddNpcMission (	1945	)

	


end

------------------------------------------------------------
-- ���˻�Į-----��������
------------------------------------------------------------

function r_talk122()

	Talk( 1,  "�����: ������ �������� ��� ������������ ����. ������ ������ �� ������� ����. " )

	AddNpcMission 	(428)
	AddNpcMission 	(812)
	AddNpcMission	(1025)
	AddNpcMission	(1188)


end

------------------------------------------------------------
-- ���˻�Į-----����
------------------------------------------------------------

function r_talk123()

	Talk( 1,  "���: � ���� ���� ���� �� ����� ���. ������ � ����� ����������. " )

end

------------------------------------------------------------
-- ���˻�Į-----��ķ
------------------------------------------------------------

function r_talk124()

	Talk( 1,  "���: � ���� ���� ���� �� ����� ���. ������ � ����� ����������. " )

end

------------------------------------------------------------
-- ���˻�Į-----����������΢��
------------------------------------------------------------

function r_talk125()

	Talk( 1,  "���������� ����: ������ ��� �����, �� ��� �� ����... " )

end

------------------------------------------------------------
-- ���˻�Į-----ޱ���
------------------------------------------------------------

function r_talk126()

	Talk( 1,  "�����: �� ������ ������� �� �������� ��� � ������, �� ������ ������� �� �������� ��� � ������, � ������� ������� �� �������� ��� � ����� �� ������. ������ ������ �������� ��. " )

	AddNpcMission 	(685)
	AddNpcMission 	(688)
	AddNpcMission 	(690)
	AddNpcMission	(1097)
--	AddNpcMission ( 6034 )
--	AddNpcMission ( 6035 )


end
------------------------------------------------------------
-- ���˻�Į-----����������
------------------------------------------------------------
function r_talk127()
Talk( 1,  "������� ����. ������� �������, �������������� ���� �� ������! " )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1557 )
	TriggerCondition( 1, NoRecord, 1558 )
	TriggerCondition( 1, NoRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1560 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1,  "������!! ",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasMission, 1561 )
	TriggerCondition( 1, HasRecord, 1558 )
	TriggerCondition( 1, HasRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1569 )
	TriggerCondition( 1, NoRecord, 1561 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1,  "������ �����! ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1,  "� ������ �������� ���� ",JumpPage, 3  )
	
	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1559 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2,  "������� ����: ��� ��������� ������ - ���� ��� ������? ")
	Text(2,  "������ ", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1560 )
	TriggerAction( 1, JumpPage, 5 )
	Text(2,  "���� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3,  "������� ����: ������� �������, � ����� ������. ���� ��� ������ �������, �� ���������� ��������! ")
	Talk( 10,  "������� ����: ������� �������, �� �������� �����������! ��������� ����� ������ ��� ���������. ")

	Talk( 4,  "������� ����: ����������! �� �����! ")

	Talk( 5,  "������� ����: ����� �� ���� ��������� ������ ��������? ")
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1563 )
	TriggerAction( 1, JumpPage, 7 )
	Talk( 6,  "������� ����: ������ � �������� ���������� � �����. ��� �������? ")
	Text( 6,  "�������� ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6,  "������ ",JumpPage, 10  )

	Talk( 7,  "������� ����: ������� �������� �������. ���� ��������, ������� �������� �������� ������� �����. ")
	Text( 7,  "��������� ������ ",JumpPage, 8  )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1564 )
	TriggerAction( 1, JumpPage, 9 )
	Talk( 8,  "������� ����: � ����� ���������� ������ � �������� � ��������� �����. ��� �������? ")
	Text( 8,  "�������� � ��������� ����� ",MultiTrigger, GetMultiTrigger(), 1 )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1565 )
	TriggerAction( 1, JumpPage, 9 )
	Text( 8,  "������ ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9,  "������� ����: ������ �� �������, ������ ��� �������� � ��������� ����� ��������� ������! ")
	--Start( GetMultiTrigger(), 1 )
	AddNpcMission 	(417)
	AddNpcMission 	(674)
	AddNpcMission 	(676)
	AddNpcMission 	(681)
	AddNpcMission	(1064)
	AddNpcMission	(752)

	
	------------------1.7
	AddNpcMission (5153 )
	AddNpcMission (5154 )
	AddNpcMission (5155 )
	AddNpcMission (5156 )
	AddNpcMission (5157 )
	AddNpcMission (5159 )
	end

------------------------------------------------------------
-- ���˻�Į-----�ޱ�˹������
------------------------------------------------------------

function r_talk128()

	Talk( 1,  "�����: ����� � ��� ��������� ��� ���� ����� ���� � ��� ������ � ������ �� ����. � ����� �� ������� �����. " )

end

------------------------------------------------------------
-- ���˻�Į-----��á�Ƥ��
------------------------------------------------------------

function r_talk129()

	Talk( 1,  "��� ���: ��... ��� ��? �� ����� ����? " )

	AddNpcMission 	(623)
	AddNpcMission 	(627)
	AddNpcMission 	(634)
	AddNpcMission	(1031)
	AddNpcMission	(1194)
	AddNpcMission(	1591	)
	AddNpcMission (	1905	)
	AddNpcMission (	1941	)

	---------------����
	AddNpcMission	(5583)
	AddNpcMission	(5584)



end

------------------------------------------------------------
-- ������˹��ԭ-----���򡤱�Ȫ
------------------------------------------------------------

function r_talk130()

	Talk( 1,  "���: ��� ��� ��������� � ������. �� ��� ������? " )
---------------����
	AddNpcMission	(5581)
	AddNpcMission	(5582)
end

------------------------------------------------------------
-- ������˹��ԭ-----��˹��С��
------------------------------------------------------------

function r_talk131()

	Talk( 1,  "�����: ��� ���� ���� �������� ��������� ����������. �� � �� ���� ���������� ��������� ��������. " )

end

------------------------------------------------------------
-- ������˹��ԭ-----���׶�����
------------------------------------------------------------

function r_talk132()

	Talk( 1,  "����: ���� ���� ���� " )
	AddNpcMission	(1061)
	AddNpcMission	(1007)
	AddNpcMission	(1062)
	AddNpcMission	(1117)
	AddNpcMission	(1171)


end

------------------------------------------------------------
-- ������˹��ԭ-----����ķ������
------------------------------------------------------------

function r_talk133()

	Talk( 1,  "������: �� ������� � ������������ ������� ��������? � ��� ��� ��� ����� ���. " )

	AddNpcMission 	(421)
	AddNpcMission 	(427)
	AddNpcMission 	(438)
	AddNpcMission 	(444)
	AddNpcMission 	(653)
	AddNpcMission 	(659)
	AddNpcMission 	(660)
	AddNpcMission 	(664)
	AddNpcMission	(1151)
	AddNpcMission(	1583	)
	AddNpcMission (	1913	)






end

------------------------------------------------------------
-- ������˹��ԭ-----������ķ
------------------------------------------------------------

function r_talk134()

	Talk( 1,  "�����: �� 3 ��� ������ � �� ���� ������. � ���������? " )
	AddNpcMission	(1083)

end

------------------------------------------------------------
-- ������˹��ԭ-----������ķ
------------------------------------------------------------

function r_talk135()

	Talk( 1,  "������: ���� �� �� �������� ��� ������ ��� ������������ ������, �� ����� �� �������� �� ����. " )
	AddNpcMission	(1098)

end


------------------------------------------------------------
-- ������˹��ԭ-----������
------------------------------------------------------------

function r_talk136()

	Talk( 1,  "�����: � ��������� ������� ���� �� ����������. ���� � �������, �� ������ �� ���������. " )

	AddNpcMission ( 262 )
	AddNpcMission ( 263 )
	AddNpcMission ( 264 )
	AddNpcMission ( 265 )
	AddNpcMission	(1056)


end

------------------------------------------------------------
-- ������˹��ԭ-----�ն����
------------------------------------------------------------

function r_talk137()

	Talk( 1,  "������: ������... ����� ����� ������... " )
	AddNpcMission	(1072)

end

------------------------------------------------------------
-- ������˹��ԭ-----Լɪ����
------------------------------------------------------------

function r_talk138()

	Talk( 1,  "���: � �������� ���������. ��� ������ ���������� ������ ���������. " )
	AddNpcMission	(1105)

end

------------------------------------------------------------
-- ������˹��ԭ-----��ݮ����
------------------------------------------------------------

function r_talk139()

	Talk( 1,  "����������: �� ������ ��� ������� �������? ��� ����� ������� � ������. " )
---------------����
	AddNpcMission	(5555)
	AddNpcMission	(5556)
end

------------------------------------------------------------
-- ������˹��ԭ-----����
------------------------------------------------------------

function r_talk140()

	Talk( 1,  "���: ������, � ���. ��� �� ����� �������? " )

end

------------------------------------------------------------
-- ������˹��ԭ-----��ɺ��
------------------------------------------------------------

function r_talk141()

	Talk( 1,  "�������: � ��� ���. ����� ��������� ��� ������. " )

end

------------------------------------------------------------
-- ������˹��ԭ-----��ŵ��
------------------------------------------------------------

function r_talk142()

	Talk( 1,  "�������: � ������������ � ���� ��� ��� ���������. ��������� ���� ��� �������� ��� ��������? " )

end

------------------------------------------------------------
-- ������˹��ԭ-----ղķ˹
------------------------------------------------------------

function r_talk143()

	Talk( 1,  "��������: � ������ ��� � ���� ���� ��������� �������. " )

end

------------------------------------------------------------
-- ������˹��ԭ-----¶��������
------------------------------------------------------------

function r_talk144()

	Talk( 1,  "����: ������ ����������! " )

end

------------------------------------------------------------
-- ������˹��ԭ-----�������
------------------------------------------------------------

function r_talk145()

	Talk( 1,  "�������: � ������ ����������� ������ ��������. ������ � �������� ��� ������� ��� � ��� ���� ��������� �������. " )

end

------------------------------------------------------------
-- ������˹��ԭ-----��������
------------------------------------------------------------

function r_talk146()

	Talk( 1,  "��������� �����: ������� � �������� ������� � ����. ������ ����� ������� ��� ��� ����� ����� �������������� ��������. " )

	AddNpcMission 	(622)
	AddNpcMission 	(624)
	AddNpcMission 	(628)
	AddNpcMission 	(630)
	AddNpcMission 	(636)
	AddNpcMission	(1006)
	AddNpcMission	(1170)
	AddNpcMission(	1592	)
	AddNpcMission (	1906	)
	AddNpcMission (	1942	)
--	AddNpcMission ( 6036 )
--	AddNpcMission ( 6037 )

	



end

------------------------------------------------------------
-- ������˹��ԭ-----����
------------------------------------------------------------

function r_talk147()

	Talk( 1,  "�����: ��� ��� ����� �����! ����� �����, ����� ����... � ���������� � ���� ����� �����. " )

	AddNpcMission ( 401 )
	AddNpcMission 	(810)
	AddNpcMission	(1040)
	AddNpcMission	(1203)
	AddNpcMission(	1433	)
	AddNpcMission (	1909	)

	
---------------����
	AddNpcMission	(5579)
	AddNpcMission	(5580)





end

------------------------------------------------------------
-- ������˹��ԭ-----������
------------------------------------------------------------

function r_talk148()

	Talk( 1,  "�����: ������, � ����� ������ ��� ��� ����. � ��? " )

end

------------------------------------------------------------
-- ������˹��ԭ-----��Ъ��÷�ַ�
------------------------------------------------------------

function r_talk149()

	Talk( 1,  "������ ����: ��� ������ ��� �������... " )

end

------------------------------------------------------------
-- ���Ǳ�-----ˮ�֡����ϼ�
------------------------------------------------------------

function r_talk156()

	Talk( 1,  "����: ������! � ������ ����� � ������! ���������� � ���� ������? " )

end

------------------------------------------------------------
-- ���￩������վ-----����
------------------------------------------------------------

function r_talk157()

	Talk( 1,  "������: � ������ ���� ���� � �� � �����. ��� ������� ��� �������. " )

	AddNpcMission 	(419)
	AddNpcMission 	(460)
	AddNpcMission 	(600)
	AddNpcMission 	(604)
	AddNpcMission 	(606)
	AddNpcMission 	(611)
	AddNpcMission 	(614)
	AddNpcMission 	(619)
	AddNpcMission	(1028)
	AddNpcMission	(1191)
	AddNpcMission(	1434	)
	AddNpcMission (	1903	)

	---------------����
	AddNpcMission	(5587)
	AddNpcMission	(5588)

--	AddNpcMission ( 6042 )
--	AddNpcMission ( 6043 )


end

------------------------------------------------------------
-- ���￩������վ-----������
------------------------------------------------------------

function r_talk158()

	Talk( 1,  "�����: ��� �� ������ ������? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(450)
	AddNpcMission 	(452)
	AddNpcMission 	(602)
	AddNpcMission 	(605)
	AddNpcMission 	(609)
	AddNpcMission 	(616)
	AddNpcMission 	(617)
	AddNpcMission(	1435	)
	AddNpcMission (	1904	)

	



	
end

------------------------------------------------------------
-- �߶�ŵ����վ-----����˹
------------------------------------------------------------

function r_talk159()

	Talk( 1,  "���������: ������� � �������, ����� ����. " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	
	AddNpcMission 	(463)
	AddNpcMission 	(620)
	AddNpcMission 	(626)
	AddNpcMission 	(629)
	AddNpcMission 	(631)
	AddNpcMission 	(632)
	AddNpcMission 	(633)
	AddNpcMission 	(635)
	AddNpcMission 	(637)
	AddNpcMission	(1015)
	AddNpcMission	(1178)
	AddNpcMission(	1593	)
	AddNpcMission (	1907	)
	AddNpcMission (	1943	)

	


end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----�￨��
------------------------------------------------------------

function r_talk160()

	Talk( 1,  "����: ������! � �������� ����. ��� ����� � ������������! " )

	AddNpcMission ( 223 )
	AddNpcMission ( 224 )
	AddNpcMission ( 225 )
	AddNpcMission ( 226 )
	AddNpcMission ( 227 )
	AddNpcMission ( 228 )
	AddNpcMission ( 229 )
	AddNpcMission ( 230 )
	AddNpcMission	(1055)
	AddNpcMission	(1217)
	AddNpcMission(	1432	)
	AddNpcMission (	1908	)

	



	
end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----�￨��
------------------------------------------------------------

function r_talk161()

	Talk( 1,  "������: � ��� ���� ����... � ������� � ������� ���� �������. " )

	AddNpcMission ( 284 )
	AddNpcMission ( 285 )
	AddNpcMission ( 311 )
	AddNpcMission	(6272)
	AddNpcMission	(6273)
	AddNpcMission	(6274)
	AddNpcMission	(5663)
	AddNpcMission	(5664)

end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----���龫
------------------------------------------------------------

function r_talk162()

	Talk( 1,  "����: ������, � ����. ����� ��� ������? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(455)
	AddNpcMission 	(461)
	AddNpcMission 	(811)
	AddNpcMission 	(814)
	AddNpcMission	(1013)
	AddNpcMission	(1014)
	AddNpcMission	(1177)

	-----��������
	AddNpcMission ( 6121 )
	AddNpcMission ( 6122 )

	
end

------------------------------------------------------------
-- ���ò���վ-----�մ�
------------------------------------------------------------

function r_talk163()

	Talk( 1,  "�����: � �� ���� ��������, �� ��� ��������� ��������� ���� �������� ������ ����. � � ���� ������� ��������! " )
	AddNpcMission	(1027)
	AddNpcMission	(1190)
----------------1.7
	AddNpcMission (5139 )
	AddNpcMission (5140 )
	AddNpcMission (5141 )
--	AddNpcMission ( 6044 )
--	AddNpcMission ( 6045 )

end

------------------------------------------------------------
-- ���ò���վ-----�������
------------------------------------------------------------

function r_talk164()

	Talk( 1,  "����: ������ ��� ����. �� �������� � ����� ������� ����� �� ������� � ����� ������? " )

end

------------------------------------------------------------
-- ���ò���վ-----������
------------------------------------------------------------

function r_talk165()

	Talk( 1,  "����: ������! ���� �� ��� ��, ��� ��� �����? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	---------------����
	AddNpcMission	(5563)
	AddNpcMission	(5564)
end

------------------------------------------------------------
-- �Ͳ�����վ-----ĢĢ
------------------------------------------------------------

function r_talk166()

	Talk( 1,  "����: ������, � ����. � ���� �� ������ ������ �������� ����! " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(433)
	AddNpcMission 	(655)
	AddNpcMission 	(662)
	AddNpcMission 	(667)
	AddNpcMission	(1143)
	AddNpcMission(	1585	)
	AddNpcMission (	1915	)

	---------------����
	AddNpcMission	(5577)
	AddNpcMission	(5578)




end

------------------------------------------------------------
-- ɳȪ����վ-----ά��
------------------------------------------------------------

function r_talk167()

	Talk( 1,  "������: � ����� ������! � ���� ����� ��� ��������� ��� �������! " )

	AddNpcMission 	(418)
	AddNpcMission 	(641)
	AddNpcMission 	(650)
	AddNpcMission	(1156)

	
end


------------------------------------------------------------
-- ɳȪ����վ-----�Ʒ�
------------------------------------------------------------

function r_talk168()

	Talk( 1,  "��� ���: ������, � ��� ���. " )

	AddNpcMission 	(422)
	AddNpcMission 	(639)
	AddNpcMission 	(648)
	AddNpcMission	(1121)
	AddNpcMission(	1439	)
	AddNpcMission (	1916	)

	--AddNpcMission (5503	)
	AddNpcMission	(5569)
	AddNpcMission	(5572)

	
end

------------------------------------------------------------
-- ɳȪ����վ-----����
------------------------------------------------------------

function r_talk169()

	Talk( 1,  "������: � ���� ��������� ���� ������. � ��� �� ����������? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(403)
	AddNpcMission 	(413)
	AddNpcMission 	(420)
	AddNpcMission 	(643)
	AddNpcMission 	(647)
	AddNpcMission 	(649)
	AddNpcMission 	(652)
	AddNpcMission	(1140)
	AddNpcMission(	1440	)
	AddNpcMission (	1917	)

	----------------1.7
	AddNpcMission (5124 )
	AddNpcMission (5125 )
	AddNpcMission (5126 )
end

------------------------------------------------------------
-- ������˹����վ-----���
------------------------------------------------------------

function r_talk170()

	Talk( 1,  "�����: � ������ ����� ��� ����. � ����� ��� ���� ����� �����������, ��� ����� �����������. " )

	AddNpcMission 	(429)
	AddNpcMission 	(464)
	AddNpcMission 	(466)
	AddNpcMission 	(684)
	AddNpcMission 	(696)
	AddNpcMission 	(697)
	AddNpcMission	(1108)

----------------1.7
	AddNpcMission (5136 )
	AddNpcMission (5137 )
	AddNpcMission (5138 )

end

------------------------------------------------------------
-- ɳȪ����վ-----��������
------------------------------------------------------------

function r_talk171()

	Talk( 1,  "������: ������! �� ������ ������� �����? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(423)
	AddNpcMission 	(440)
	AddNpcMission 	(446)
	AddNpcMission 	(462)
	AddNpcMission 	(683)
	AddNpcMission 	(687)
	AddNpcMission 	(692)
	AddNpcMission 	(695)
	AddNpcMission(	1580	)
	AddNpcMission (	1919	)
	AddNpcMission (	1955	)

	




end

------------------------------------------------------------
-- ����Ӫ�ز���վ-----��˾
------------------------------------------------------------

function r_talk172()

	Talk( 1,  "�����: �������-�������� ���������. " )

	AddNpcMission 	(802)
	AddNpcMission 	(807)
	AddNpcMission	(1100)
	AddNpcMission(	1587	)
	AddNpcMission (	1921	)
	AddNpcMission (	1922	)
----------------1.7
	AddNpcMission (5127 )
	AddNpcMission (5128 )
	AddNpcMission (5129 )
--	AddNpcMission ( 6046 )
--	AddNpcMission ( 6047 )

	


end

------------------------------------------------------------
-- ����Ӫ�ز���վ-----��������
------------------------------------------------------------

function r_talk173()

	Talk( 1,  "����: ������! ���������� � ����� ������ ��������? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(467)
	AddNpcMission 	(803)
	AddNpcMission(	1588	)
	AddNpcMission (	1923	)
	AddNpcMission (	1944	)

	





end

------------------------------------------------------------
-- ��������վ-----�׿��ʷ���
------------------------------------------------------------

function r_talk174()

	Talk( 1, "��������: ��� ���� ���������� �������� ����������� � ������ ���� � ����� ������ �� ���. " )
    	Text( 1, "� ���� �������� ������ ��������������. " , FullBuff,1)
	Text( 5, "���������� ", SetSpawnPos, "\203\229\228\255\237\238\233 \248\232\239" )
	
	AddNpcMission	(	871	)
	AddNpcMission	(	873	)
	AddNpcMission	(	879	)
	AddNpcMission	(	887	)
	AddNpcMission	(	890	)
	AddNpcMission	(	893	)
	AddNpcMission(	1737	)
	AddNpcMission (	1926	)
	AddNpcMission (	1947	)

	



end

------------------------------------------------------------
-- ��������վ-----����
------------------------------------------------------------

function r_talk175()

	Talk( 1,  "����: � ��������� ����, ��� ���� ���������� �� ��������� ������. ������� ���� �� ���� �� ����� ����. " )

	AddNpcMission 	(405)
	AddNpcMission 	(432)
	AddNpcMission 	(668)
	AddNpcMission 	(672)
	AddNpcMission 	(673)
	AddNpcMission 	(677)
	AddNpcMission	(1087)
	AddNpcMission(	1429	)
	AddNpcMission (	1928	)
---------------����
	AddNpcMission	(5589)
	AddNpcMission	(5590)
--	AddNpcMission ( 6050 )
--	AddNpcMission ( 6051 )
	




end

------------------------------------------------------------
-- ��������վ-----����үү
------------------------------------------------------------

function r_talk176()

	Talk( 1,  "������������ ������: ���� � � ������� �������, �� � ������� ������� ���������. " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(430)
	AddNpcMission 	(434)
	AddNpcMission 	(670)
	AddNpcMission 	(671)
	AddNpcMission 	(679)
	AddNpcMission 	(682)
	AddNpcMission	(1070)
	AddNpcMission(	1430	)
	AddNpcMission (	1929	)

	---------------1.7
	AddNpcMission (5148 )
	AddNpcMission (5150 )
	AddNpcMission (5152 )
	AddNpcMission (5158 )
	AddNpcMission (5160 )
	AddNpcMission (5161 )
	AddNpcMission (5162 )
	AddNpcMission (5163 )
	AddNpcMission (5164 )
	AddNpcMission (5165 )
	AddNpcMission (5166 )
	AddNpcMission (5169 )


end


------------------------------------------------------------
-- ����Ӫ�ز���վ-----��̩
------------------------------------------------------------

function r_talk177()

	Talk( 1,  "���: � ���� ������������ ������, ��������� �� ����� ������� ����������. " )

	AddNpcMission 	(805)
	AddNpcMission 	(806)
	AddNpcMission(	1589	)
	AddNpcMission (	1934	)
	AddNpcMission (	1949	)

	




	
end

------------------------------------------------------------
-- �¶�άƽԭ-----�������ˡ���ķ
------------------------------------------------------------

function r_talk221()

	Talk( 1,  "�����: � ����� �������� �������. � ���� ���� ����� ����������. ������ ���������? " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "�������������� ������� ������� ", JumpPage, 2 )
	Text( 1,  "������... ",CloseTalk )


	Talk( 2,  "�����: ������ ����� �������� ����� �� ��������. ������ ����� �������� �����, ������ ����� - �����, ������ ������ ���������� � ������, � ������ ����� ����� �������� � ����������. ")


	InitTrade()
	Weapon(	0817	)
	Weapon(	0818	)
	Weapon(	0867	)
	Weapon(	0868	)
	Weapon(	0872	)
	Weapon(	0873	)
	Weapon(	0635	)
	Weapon(	0636	)



end




------------------------------------------------------------
-- ������-----��װ�����������
------------------------------------------------------------
function r_talk222()


	Talk( 1,  "����: ������! � ����� �������. � ������ ����� ���� ������! " )
	Text( 1,  "���� ", BuyPage )

	InitTrade()
	Defence(	0335	)
	Defence(	0511	)
	Defence(	0687	)
	Defence(	0336	)
	Defence(	0512	)
	Defence(	0688	)
	Defence(	0338	)
	Defence(	0514	)
	Defence(	0690	)
	Defence(	0337	)
	Defence(	0513	)
	Defence(	0689	)
	Defence(	0340	)
	Defence(	0516	)
	Defence(	0692	)
	Defence(	0339	)
	Defence(	0515	)
	Defence(	0691	)
	Defence(	0341	)
	Defence(	0517	)
	Defence(	0693	)
	Defence(	0342	)
	Defence(	0518	)
	Defence(	0694	)
	Defence(	0345	)
	Defence(	0521	)
	Defence(	0697	)
	Defence(	0343	)
	Defence(	0519	)
	Defence(	0695	)
	Defence(	0380	)
	Defence(	0556	)
	Defence(	0732	)
	Defence(	0351	)
	Defence(	0527	)
	Defence(	0703	)
	Defence(	0386	)
	Defence(	0562	)
	Defence(	0738	)
	Defence(	0352	)
	Defence(	0528	)
	Defence(	0704	)
	Defence(	0350	)
	Defence(	0526	)
	Defence(	0702	)
	Defence(	0354	)
	Defence(	0530	)
	Defence(	0706	)
	Defence(	0353	)
	Defence(	0529	)
	Defence(	0705	)
	Defence(	0356	)
	Defence(	0532	)
	Defence(	0708	)
	Defence(	0355	)
	Defence(	0531	)
	Defence(	0707	)
	Defence(	0357	)
	Defence(	0533	)
	Defence(	0709	)
----------------1.7
	AddNpcMission (5118 )
	AddNpcMission (5119 )
	AddNpcMission (5120 )

end
------------------------------------------------------------
-- ��֮��-----����
------------------------------------------------------------
function r_talk223()


	Talk( 1,  "����: ������, � ���������� ������� �����. ��� � ���� ������? " )
	Text( 1,  "��������� � ������ ", GoTo, 1318, 510,  "darkblue " )

end


------------------------------------------------------------
-- ��ѩ��-----����������
------------------------------------------------------------
function r_talk224()


	Talk( 1,  "����� �������: ������! � ����� � � ��������! " )

	AddNpcMission ( 306 )
	AddNpcMission ( 307 )
	AddNpcMission ( 308 )

end

------------------------------------------------------------
-- ��ɳ��-----�ܿ˴���
------------------------------------------------------------
function r_talk225()


	Talk( 1,  "������� ����: ������! � �����, ������ � ��������! ���� ��� ����������! " )

	AddNpcMission ( 309 )
	AddNpcMission ( 310 )
	AddNpcMission ( 312 )
	AddNpcMission ( 313 )
	AddNpcMission ( 314 )
	AddNpcMission ( 315 )
	AddNpcMission ( 316 )
	AddNpcMission ( 328 )
	AddNpcMission ( 329 )
	AddNpcMission ( 333 )
	AddNpcMission ( 336 )
	AddNpcMission ( 483 )
	AddNpcMission ( 484 )
end


------------------------------------------------------------
-- ���Ǳ��³�-----³����
------------------------------------------------------------
function r_talk226()


	Talk( 1,  "���: ��� ���� ����� ��������� ���������� ��� ������������. " )
	
	Talk( 2,  "Luke: My brother loves to create trouble for me��always expecting me to clear the mess. Sigh�� ")
	Text( 2,  "I lost the ring you gave me ", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 4144, 1 , 4)
	TriggerAction( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3,  "Luke: You lost such an expensive ring? Pay me 50000G and I will remake for you. ")
	Text( 3,  "Okay, heres 50000G. ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3,  "This is extortion! I do not have so much ", CloseTalk )

	Talk( 4,  "Luke: Keep it well, this ring is for you ")

	Talk( 5,  "Luke: You don't seems to have enough gold...Its 50000G... ")

	InitTrigger()
	-----------��������������۽�ָ,���Ƕ��˲�����
	TriggerCondition( 1, HasRecord, 260 )
	TriggerCondition( 1, NoRecord, 262 )
	TriggerCondition( 1, NoItem, 4144, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	
	Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 296 )
	AddNpcMission ( 297 )
	AddNpcMission ( 298 )
	AddNpcMission ( 302 )
	AddNpcMission ( 303 )

end


------------------------------------------------------------
-- ����Ӫ�ز���վ-----��������ʦ
------------------------------------------------------------
function r_talk227()

	Talk( 1,  "������ �����: ������ ������ ��� � ���� ������� ��������. �������� ������ ��� �� ����� �����. " )

	AddNpcMission ( 299 )
	AddNpcMission ( 300 )
	AddNpcMission ( 469 )
	AddNpcMission ( 391 )
	----------------1.7
	AddNpcMission (5121 )
	AddNpcMission (5122 )
	AddNpcMission (5123 )
end

------------------------------------------------------------
-- �����ӵ²���վ-----���ϡ�������
------------------------------------------------------------
function r_talk228()

	Talk( 1,  "������ �������: � ����� �� � ����� ���������� �����... � �� ��� ������������. " )
	
	AddNpcMission ( 837 )
	AddNpcMission ( 838 )
	AddNpcMission ( 839 )

end

------------------------------------------------------------
-- �����ӵ²���վ-----������΢��
------------------------------------------------------------
function r_talk229()

	Talk( 1,  "�������� ����: ���������� �� �������� ����� �������� ������� ��� ����. " )

	AddNpcMission ( 840 )
---------------����
	AddNpcMission	(5591)
	AddNpcMission	(5592)
--	AddNpcMission ( 6048 )
--	AddNpcMission ( 6049 )

end

------------------------------------------------------------
-- �����ӵ²���վ-----?��ħ��
------------------------------------------------------------
function r_talk230()

	Talk( 1,  "�� ����: ��� � ���� ���� ������� �������� ����! " )

	AddNpcMission ( 844 )
	AddNpcMission ( 841 )
	AddNpcMission ( 842 )
	AddNpcMission ( 843 )

end

------------------------------------------------------------
-- �����ӵ²���վ-----���ݡ���ʯ
------------------------------------------------------------
function r_talk231()

	Talk( 1,  "����� �����������: � �������� �� ������ �������! �� ��� ��� ���������� ��� ��� ������ � �������. " )

	AddNpcMission ( 845 )
	AddNpcMission ( 846 )
	AddNpcMission ( 847 )
	AddNpcMission ( 848 )

end

------------------------------------------------------------
-- ��������վ-----��ά�����
------------------------------------------------------------
function r_talk232()

	Talk( 1,  "����: ����� ����� ������� ����� � �� ���� ���� ����� ���������� �����. ��� ����� �� ������. " )
	
	AddNpcMission ( 877 )
	AddNpcMission ( 883 )
	AddNpcMission ( 884 )


end

------------------------------------------------------------
-- ��������վ-----���ġ���
------------------------------------------------------------
function r_talk233()

	Talk( 1,  "����� �����: � ���� ���������� �� �������. " )

	AddNpcMission ( 881 )
end

------------------------------------------------------------
-- ������-----��������ʦ������
------------------------------------------------------------
function r_talk234()

	Talk( 1,  "����������: ������! �� ������� ������� ���� ������� ��������? " )
	Text( 1,  "������ �������������� �������������� ", BuyPage )
	Text( 1,  "� ���� ������� �������� ", JumpPage, 2)

	InitTrade()
	Weapon(	1807	)
	Weapon(	1805	)
	Weapon(	1804	)
	Weapon(	1806	)
	Defence(	1798	)
	Defence(	1800	)
	Defence(	1801	)
	Defence(	1803	)
	Defence(	1797	)
	Defence(	1799	)
	Defence(	1802	)
	Defence(	4610	)
	Defence(	4609	)
	Defence(	4607	)	
	Other(	931	)
	Other(	932	)
	Other(	933	)
	Other(	934	)
	Other(	1808	)
	Other(	1809	)
	Other(	1810	)
	Other(	1811	)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2,  "����������: �������. �� ��� ����������� �������������� ��������! ")
	Text( 2,  "��, � ���� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2,  "������ ", CloseTalk )

	Talk( 3,  "����������: � ���� ��� �������������� ��������! ")
	
	AddNpcMission ( 6085 )


end


function bragi_talk01()
	Talk( 1, "����� ������������ �� ������� �������� ������� � ������������� �� ������ ������. ���� �������� ������� ������� ���������, ������� �� ���. ")
	Text( 1, "������ � �� ���� ����� �������, ����� �������� ������� ������������? ", JumpPage, 2 )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1431)
	TriggerCondition( 1, NoMission, 1430)
	TriggerCondition( 1, NoMission, 1432)
	TriggerCondition( 1, NoMission, 1433)
	TriggerCondition( 1, NoMission, 1434)
	TriggerCondition( 1, NoMission, 1435)
	TriggerCondition( 1, NoMission, 1436)
	TriggerCondition( 1, NoMission, 1437)
	TriggerCondition( 1, NoMission, 1438)
	TriggerCondition( 1, NoMission, 1439)
	TriggerCondition( 1, NoMission, 1440)
	TriggerCondition( 1, NoMission, 1441)
	TriggerCondition( 1, NoMission, 1442)
	TriggerAction( 1, ClearRecord, 1431)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4)
	Text( 1, "�������� ���������� ������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "���� �� ������ ��������� � ������ � �������� ������� ������������, ���� ����� �������� �� ��������� ����������: ��-������, ��������� ������� �� ������������; ��-������, ��������� ������� \'����� ���������\' � ��� ������ ������� �� ������ ������������. ���� �� �������������� �����������, ������� �� ���, ������� ������� � ������� � �����. ")
	Text( 2, "� ��� �����. ������. ", CloseTalk)
	
	Talk( 3, "Repair successful!")
	
	Talk( 4, "� ���� ��� �������� ���������� ��������� �������. ")

	AddNpcMission	(6102)
	AddNpcMission	(6103)
	AddNpcMission	(6104)
	AddNpcMission	(6105)
	AddNpcMission	(6106)
	AddNpcMission	(6107)
	AddNpcMission	(6108)
	AddNpcMission	(6109)
	AddNpcMission	(6110)
	AddNpcMission	(6111)
	AddNpcMission	(6112)
	AddNpcMission	(6113)
end


function dina_talk12 () 

	Talk (1, "M�: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6215) 
 
end 

function dina_talk13 () 

	Talk (1, "����������: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6216) 
	
end 

function dina_talk14 () 

	Talk (1, "����: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6217) 
 
end 

function dina_talk15 () 

	Talk (1, "����� ������: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6218) 
 
end 

function dina_talk16 () 

	Talk (1, "�����: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6219) 
 
end 

function dina_talk17 () 

	Talk (1, "����: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6220) 

end 

function dina_talk18 () 

	Talk (1, "����: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6221) 

end 

function dina_talk19 () 

	Talk (1, "����: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6222) 

end 

function dina_talk20 () 

	Talk (1, "�����: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6223) 

end 

function dina_talk21 () 

	Talk (1, "����: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6224) 

end 

function dina_talk22 () 

	Talk (1, "�����: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6225) 

end 

function dina_talk23 () 

	Talk (1, "��������: ������ ����?, � ��������� ��� ������, �� �� ����� ����! ") 
	AddNpcMission (6226) 

end

--������ �� ������
function Zs_Soldier ()
	Talk( 1, "������������ ������: ����! �� ������� �������...�� ������� ����.")

	AddNpcMission ( 6098 )
	AddNpcMission ( 6099 )
end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----��Ʒ���ˡ�����
------------------------------------------------------------
function r_talk235()

	Talk( 1,  "�����: � ������ ��������� �������� � ������. ����� ��� ��� �� ������������? " )
	Text( 1,  "���� ", BuyPage )

	InitTrade()
	Defence(	4611	)
	Defence(	4612	)
	Defence(	4613	)
	Defence(	4614	)
	Defence(	4615	)
	Defence(	4616	)
	Defence(	4617	)
	Defence(	4618	)
	Defence(	4619	)
	Defence(	4620	)

end

------------------------------------------------------------
-- ����ɭ�ֲ���վ-----��Ʒ���ˡ����
------------------------------------------------------------
function r_talk236()

	Talk( 1,  "�����: � ������ ������������� ������ � ��������. ����������, �������� ��� ���-������ ������������. " )
	Text( 1,  "���� ", BuyPage )

	InitTrade()
	Defence(	4626	)
	Defence(	4627	)
	Defence(	4628	)
	Defence(	4629	)
	Defence(	4630	)
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)
end

------------------------------------------------------------
-- �߶�ŵ����վ-----��Ʒ���ˡ�������
------------------------------------------------------------
function r_talk237()

	Talk( 1,  "�������: � ������ ������������� ������ � ��������. ����������, �������� ��� ���-������ ������������. " )
	Text( 1,  "���� ", BuyPage )

	InitTrade()
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)
	Defence(	4636	)
	Defence(	4637	)
	Defence(	4638	)
	Defence(	4639	)
	Defence(	4640	)

end

------------------------------------------------------------
-- ������-----��Ʒ���ˡ�ά�˶�
------------------------------------------------------------
function r_talk238()

	Talk( 1,  "������: � ������ ������������� ������ � ��������. ����������, �������� ��� ���-������ ������������. " )
	Text( 1,  "���� ", BuyPage )

	InitTrade()
	Defence(	4641	)
	Defence(	4642	)
	Defence(	4643	)
	Defence(	4644	)
	Defence(	4645	)
	Defence(	4646	)
	Defence(	4647	)
	Defence(	4648	)
	Defence(	4649	)
	Defence(	4650	)
	Defence(	4706	)
	Defence(	4707	)
	Defence(	4708	)
	Defence(	4709	)
	Defence(	4711	)
	Defence(	4712	)
	Defence(	4713	)
	Defence(	4714	)
	Defence(	4715	)

end

------------------------------------------------------------
-- �����ӵ²���վ-----��Ʒ���ˡ�����
------------------------------------------------------------
function r_talk239()

	Talk( 1,  "���: � ������ ������������� ������ � ��������. ����������, �������� ��� ���-������ ������������. " )
	Text( 1,  "���� ", BuyPage )

	InitTrade()
	Defence(	4651	)
	Defence(	4652	)
	Defence(	4653	)
	Defence(	4654	)
	Defence(	4655	)
	Defence(	4656	)
	Defence(	4657	)
	Defence(	4658	)
	Defence(	4659	)
	Defence(	4660	)

end

------------------------------------------------------------
-- �Ͳ�����վ-----��Ʒ���ˡ�����
------------------------------------------------------------
function r_talk240()

	Talk( 1,  "�������� - ������: � ������ ������������� ������ � ��������. ����������, �������� ��� ���-������ ������������. " )
	Text( 1,  "���� ", BuyPage )

	InitTrade()
	Defence(	4666	)
	Defence(	4667	)
	Defence(	4668	)
	Defence(	4669	)
	Defence(	4671	)
	Defence(	4672	)
	Defence(	4673	)
	Defence(	4674	)
	Defence(	4675	)
	Defence(	4676	)
	Defence(	4677	)
	Defence(	4678	)
	Defence(	4679	)
	Defence(	4681	)
	Defence(	4682	)
	Defence(	4683	)
	Defence(	4684	)
	Defence(	4685	)

end

------------------------------------------------------------
-- ��������վ-----��Ʒ���ˡ����
------------------------------------------------------------
function r_talk241()

	Talk( 1,  "������: � ������ ������������� ������ � ��������. ����������, �������� ��� ���-������ ������������. " )
	Text( 1,  "���� ", BuyPage )

	InitTrade()
	Defence(	4686	)
	Defence(	4687	)
	Defence(	4688	)
	Defence(	4689	)
	Defence(	4691	)
	Defence(	4692	)
	Defence(	4693	)
	Defence(	4694	)
	Defence(	4695	)
	Defence(	4696	)
	Defence(	4697	)
	Defence(	4698	)
	Defence(	4699	)
	Defence(	4701	)
	Defence(	4702	)
	Defence(	4703	)
	Defence(	4704	)
	Defence(	4705	)

end


------------------------------------------------------------
-- ������-----��ϴ��
------------------------------------------------------------
function r_talk252()
	
	InitFuncList()
	AddFuncList( GiveItem,	0817	,	1	,	4)
	AddFuncList( GiveItem,	0818	,	1	,	4)
	AddFuncList( GiveItem,	0819	,	1	,	4)
	AddFuncList( GiveItem,	0867	,	1	,	4)
	AddFuncList( GiveItem,	0868	,	1	,	4)
	AddFuncList( GiveItem,	0869	,	1	,	4)
	AddFuncList( GiveItem,	0872	,	1	,	4)
	AddFuncList( GiveItem,	0873	,	1	,	4)
	AddFuncList( GiveItem,	0874	,	1	,	4)
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1,  "��� ����� ������ ����������, ��������� �������� ����� �����. " )
	Text( 1,  "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	--Text( 1,  "�������� �������������� ������� ", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3,  "��... ����� ������� �������. ����� �� ��������� ��� �������� ��������� 10000 ������! " )
	Text( 3,  "�������� ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4,  "����� �������� ������! ������ � �������� �������! " )
	Talk( 2,  "���������� ��������. � ��� ������������ ����� ��� ��� ��������� ��� �������. " )
end


------------------------------------------------------------
-- ���Ŷӳ�-----����ѧ��
------------------------------------------------------------
function r_talk2017()
	
	Talk( 1, "������ ������ � ������� �����. � �������� ������ ����� ��������.��� �� � ������� �� ������ ��� ������� ������ ����� � �������� ������� , �� ��������� ������ � ���� ���� ���� ������ ׸����� ������� " )
	Text( 1, "���������� �����������, ��������� ", JumpPage, 2)
	
	Talk( 2, "������� ��� ���� ����� �����,������ ��� �� �������� ׸����� �������? �������!!! ����-��� ������� � ������� ��� ����� " )
	Text( 2, "������ ", JumpPage, 3)
	Text( 2, "�������� ", JumpPage, 4)	
	Text( 2, "����� ", JumpPage, 5)
	Text( 2, "����-��� ", JumpPage, 6)


	

	Talk(3,"�� ������ ��� ���� ��� �����? �������!!!��� �� ������ �� � ������ �������� ���������������� ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasHonorPoint,2000 )
	TriggerAction( 1, TakeHonorPoint, 2000,2000 )
	TriggerAction( 1, GiveItem, 845,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(3,"�� ",MultiTrigger,GetMultiTrigger(),1)

	Talk(4,"�� ������ ��� ���� ��� �����? �������!!!��� �� ������ �� � ������ �������� ���������������� ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasHonorPoint,500 )
	TriggerAction( 1, TakeHonorPoint, 500,500 )
	TriggerAction( 1, GiveItem, 846,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(4,"�� ",MultiTrigger,GetMultiTrigger(),1)

	Talk(5,"�� ������ ��� ���� ��� �����? �������!!!��� �� ������ �� � ������ �������� ���������������� ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasHonorPoint,500 )
	TriggerAction( 1, TakeHonorPoint, 500,500 )
	TriggerAction( 1, GiveItem, 847,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(5,"�� ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(6,"�� ������ ��� ���� ��� �����? �������!!!��� �� ������ �� � ������ �������� ���������������� �� ��������� � �������� �������� ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasHonorPoint,2500 )
	TriggerAction( 1, TakeHonorPoint, 2500,2500 )
	TriggerAction( 1, GiveItem, 272,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(6,"�� ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(18,"�� �� ������� ���� ��������!!! ")


end

------------------------------------------------------------
-- ����֮��-----����ѧ��
------------------------------------------------------------
--function r_talk254()
	
--	Talk( 1, "������ �� �������� ������ ����� �������� ���� �������� ��������� �� ���������.��?��� ��� �������� ����� ��� ������������ �� �����.����� � ������� ���� �� ���� " )
--	Text( 1, "��������.", SendExchangeData)


--	InitExchange()

--	ExchangeData( 6817 , 2 , 6818 , 1 , 1)
--	ExchangeData( 6820 , 2 , 6821 , 1 , 1)
--	ExchangeData( 6823 , 2 , 6824 , 1 , 1)
--	ExchangeData( 6826 , 2 , 6827 , 1 , 1)
--	ExchangeData( 6829 , 2 , 6830 , 1 , 1)

--end

------------------------------------------------------------
-- ħ������-----����ѧ��
------------------------------------------------------------
function r_talk255()
	
	Talk( 1,  "�������������: ������! � ���������� � ������� ��������������. � ��������� ������������� ��������� ���� �������. ���� � ��� ��� �� ������? " )
	Text( 1,  "������ � ���� ������� ", JumpPage, 2)

	Talk( 2,  "�������������: � ��������� �������������� ���� ������� ��� ������ �����, � ���� ������� ��������� � ������������ ��� ����� � ������� ���. " )
	Text( 2,  "Unseal curse ", JumpPage, 3)
	
	Talk( 3,  "�������������: � ���� ������� �������� ����� ���������, ������������ �����. ���� � ��� ���� ������� � ������� ����, �� � �������� ����������� ��� ��� ���. " )
	Text( 3,  "����� ���������� ", JumpPage, 6)
	Text( 3,  "������� ������� ", JumpPage, 7)
	Text( 3,  "���� ������� ", JumpPage, 8)
	Text( 3,  "���������� ���������� ", JumpPage, 9)
	Text( 3,  "������� ���������� ", JumpPage, 10)
	Text( 3,  "������� ���������� ", JumpPage, 11)
	Text( 3,  "���� ���������� ", JumpPage, 12)
	Text( 3,  "������ --> ", JumpPage, 4)

	Talk( 4,  "�������������: � ���� ������� �������� ����� ���������, ������������ �����. ���� � ��� ���� ������� � ������� ����, �� � �������� ����������� ��� ��� ���. " )
	Text( 4,  "������ ���������� ", JumpPage, 13)
	Text( 4,  "���� ���������� ", JumpPage, 14)
	Text( 4,  "������ ���������� ", JumpPage, 15)
	Text( 4,  "������ ������� ", JumpPage, 16)
	Text( 4,  "����� ������� ", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 6,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 7,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 8,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 9,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 10,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 11,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 12,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 13,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 14,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 15,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 16,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17,  "�������������: ��� ������ ������ � ����� �������� ���� ����� �������� - ������������ �������, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800000 ������. " )
	Text( 17,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30,  "�������������: ��������, �� � ��� ��� ���� ����������� ���������. " )

end


------------------------------------------------------------
-- ��������-----����ѧ�Ҷӳ�
------------------------------------------------------------
function r_talk256()
	
	Talk( 1,  "�������������: ������! � ���������� � ������� ��������������. � ��������� �������������� ��������� ������ ����. ���� � ��� ��� �� ������? " )
	Text( 1,  "������ � ������ ���� ", JumpPage, 2)

	Talk( 2,  "�������������: � ��������� �������������� ������ ���� ��� ������ �����. ����� ����� ������ � ��������� ������ ���� �� ������ �������� ��� ��������� ����. ����� ���� ���� �� ������� ������� ������� ����� � ���� ���������� ��� ��� �������� ��������. " )
	Text( 2,  "����� ������", JumpPage, 3)
	Text( 2,  "������ � �������� �������� ", JumpPage, 5)
	
	Talk( 3,  "�������������: � ������ ���� ���� ����� ��������� � ������� �����. �� ����� ������ ��� � �������� ������� ��� ������. ���� � ��� ���� ������� � ������� �����, �� � ������ ���. " )
	Text( 3,  "���� ������� ", JumpPage, 6)
	Text( 3,  "���� ���������� ����� ", JumpPage, 7)
	Text( 3,  "������� ���������� ������� ", JumpPage, 8)
	Text( 3,  "����� ���������� ", JumpPage, 9)
	Text( 3,  "����� ������ ", JumpPage, 10)
	Text( 3,  "������ ������� ", JumpPage, 11)
	Text( 3,  "������ ���������� ", JumpPage, 12)
	Text( 3,  "������ --> ", JumpPage, 4)

	Talk( 4,  "�������������: � ������ ���� ���� ����� ��������� � ������� �����. �� ����� ������ ��� � �������� ������� ��� ������. ���� � ��� ���� ������� � ������� �����, �� � ������ ���. " )
	Text( 4,  "���� ���������� ", JumpPage, 13)
	Text( 4,  "������� ��� ���������� ", JumpPage, 14)
	Text( 4,  "��� ���������� ", JumpPage, 15)
	Text( 4,  "������������ ������ ���������� ", JumpPage, 16)
	Text( 4,  "������� ���������� ", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3930, 5 )
	TriggerCondition( 1, HasItem, 3931, 1 )
	TriggerCondition( 1, HasItem, 3932, 5 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3930, 5 )
	TriggerAction( 1, TakeItem, 3931, 1 )
	TriggerAction( 1, TakeItem, 3932, 5 )
	TriggerAction( 1, GiveItem, 3934, 1, 4 )
	TriggerFailure( 1, JumpPage, 31 )
	Talk( 5,  "�������������: ��� ������������ ��������� �������� ����������: 5 ������ �����, 1 ���������, 5 ������ �����. " )
	Text( 5,  "������� �������� �������� ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1911, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1911, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 790, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 6,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1885, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1885, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 764, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 7,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1925, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1925, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 804, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 8,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1907, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1907, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 786, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 9,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1914, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1914, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 793, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 10,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1917, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1917, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 796, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 11,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1895, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1895, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 774, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 12,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1899, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1899, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 778, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 13,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1892, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1892, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 771, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 14,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1921, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1921, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 800, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 15,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1888, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1888, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 767, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 16,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1903, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1903, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 782, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17,  "�������������: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400000 ������. " )
	Text( 17,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30,  "�������������: ��������, �� � ��� ��� ���� ����������� ���������. " )

	Talk( 31,  "�������������: ��������, �� � ��� ��� ���� ����������� ���������. " )


end


------------------------------------------------------------
-- ������-----�Ĺ�
------------------------------------------------------------
function r_123213lk242()
	Talk( 14,  "�����: ����� ��� �������� ��� ��������� ��������� �������� ������. " )
	InitTrigger() 
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 14,  "�������� 3 ��������� ����� ",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() 
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "�������� 3 ��������� ����� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "�������� 3 ��������� ������� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "�������� 3 ��������� ������ ",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "�������� 1 �������� ���� ",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 15,  "�����: ����� ����������! � ��� ��� �������� ��� ������������ ���������  " )
	Talk( 16,  "� ����� �����! " )

	Talk( 1,  "�����: ������! � �������� ����� �����. � ��� ���� ��� �� ��� ����? ")
	Text( 1,  "�������� �� �������������� �������� ", JumpPage, 14 )
    Text( 1,  "�������� �� �������� ", JumpPage, 5 )
	Text( 1,  "�������� �� ���������� �������� ", JumpPage, 12 )
	Text( 1,  "�������� �� ��������� �������� 1 ������ ", JumpPage, 2 )
	Text( 1,  "�������� �� ��������� �������� 2 ������ ", JumpPage, 3 )
	Text( 1,  "�������� �� ��������� �������� ", JumpPage, 4 )
	Text( 1,  "������ --> ", JumpPage, 21 )
	Talk( 21,  "�����: ������! � �������� ����� �����. � ��� ���� ��� �� ��� ����? ")
	Text( 21,  "��������� �������� ", JumpPage, 17 )
    Text( 21,  "���������� ������ ������� ", JumpPage, 6 )
	Text( 21,  "�������� ������ ����� ", JumpPage, 20 )		-------�±��һ�
	Text( 21,  "�������� ���������� ��� ", JumpPage, 10 )
	Text( 21,  "<-- ����� ", JumpPage, 1 )
      
	
	Talk( 2,  "�����: ��� ��� �������� �� ��������� �������� 1 ������ ��� ��������� ���������� ���������, � ����� ��� 1 ���������� ��������� 1 ������. ")
	Text( 2,  "�������� ", TransferDiamond, 1)

	Talk( 3,  "�����: ��� ��� �������� �� ��������� �������� 2 ������ ��� ��������� ���������� ���������, � ����� ��� 1 ���������� ��������� 2 ������. ")
	Text( 3,  "�������� ", TransferDiamond, 2)

	Talk( 4,  "�����: ��� ��� �������� �� ��������� �������� ��� ��������� 1 ���������� ��������� 1 ������ ")
	Text( 4,  "�������� ", TransferDiamond, 3)

	Talk( 5,  "�����: ��� ��� 1 �������� �� �������� ��� ��������� 1 ���������� ��������� 1 ������ ")
	Text( 5,  "�������� ", TransferDiamond, 4)



	Talk( 17,  "�����: � ��� ���� ��������� ��������? ")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2238, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2238, 1 )
 	TriggerAction( 1, GiveItem, 2306, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "� ���� ���� ��������� �������� 8 ",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()--�һ�Ħ����ʯ
	TriggerCondition( 1, HasItem, 2240, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2240, 1 )
 	TriggerAction( 1, GiveItem, 1028, 1 ,4)
	TriggerAction( 1,JumpPage, 19 )------------------
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "� ���� ���� ��������� �������� 6 ",MultiTrigger, GetMultiTrigger(), 1)

	Text( 17,  "� ���� ���� ��������� �������� 6 ",JumpPage, 19)
	Talk(19, "�����: �� ������ ��������? ")
	Text( 19,  "�������� ",GetChaName_5, 1)

	InitTrigger()--�һ�����Ӳ��99��
	TriggerCondition( 1, HasItem, 2237, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2237, 1 )
 	TriggerAction( 1, GiveItem, 855, 99 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "� ���� ���� ��������� �������� 9 ",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()-- �һ�����ͼֽ "Encrypted Blueprint "����
	TriggerCondition( 1, HasItem, 2239, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2239, 1 )
 	TriggerAction( 1, GiveItem, 1001, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "� ���� ���� ��������� �������� 7 ",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()--�һ����ٳɳ���1��
	TriggerCondition( 1, HasItem, 2241, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2241, 1 )
 	TriggerAction( 1, GiveItem, 0578, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "� ���� ���� ��������� �������� 5 ",MultiTrigger, GetMultiTrigger(), 1)
	Text( 17,  "����� ����� ��������� �������� ", GetChaName_4, 1)



	Talk( 18,  "�����: ������� �� �� ������ ���������� ��������� ��������. ��������� ����� ��� ��� ��������� �� ������������ � ������� ���� �� ���� ��������� �����. ")

 	InitTrigger() --�ϳ���Ըʯ
	TriggerCondition( 1, HasItem, 3905, 5 )
	TriggerCondition( 1, HasItem, 3907, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3905, 5 )
	TriggerAction( 1, TakeItem, 3907, 1 )
 	TriggerAction( 1, GiveItem, 3906, 1 ,4)
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6,  "�����: ��������� ��� 5 ������ ������ �������� 1 ����������� ����� ��� ������ �� 1 ���������� ������ ������� ")
	Text( 6,  "������������� ",MultiTrigger, GetMultiTrigger(), 1)        
 	
	Talk( 8,  "�����: �� �� ������ ������ ���������� ������ ������ ������� ��� ������������� �����. ��������� ����� ��� � ��� ������� ���� �� 1 ��������� ����� � ���������. ")

	InitTrigger() --�һ����¾���
	TriggerCondition( 1, HasItem, 3342, 2 )
	TriggerCondition( 1, HasItem, 3337, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3342, 2 )
	TriggerAction( 1, TakeItem, 3337, 1 )
	TriggerAction( 1, GiveItem, 3335, 1 ,4)
	TriggerFailure( 1, JumpPage, 11 ) 
	Talk( 10,  "�����: ��������� ��� 2 ����������� � 1 ���� ��� ��� ������ �� ���������� ���. ���� ��� ����� ����� � �������� � ����� �����. ")
	Text( 10,  "�������� ",MultiTrigger, GetMultiTrigger(), 1) 
   
	Talk( 11,  "� ��� ��� ����� ������������ ��� ������. �������� ����� � ��� ��� ��������� ���� � ��������� ��� �� ������������. ")
	
	Talk( 12,  "�����: ����� ��� 1 �������� �� ���������� �������� ��� ������ �� ���������� ��������. ")

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0863, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "�������� �������� ������ ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid,1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "�������� �������� ���� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0862, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "�������� �������� ������� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0861, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "�������� �������� ����� ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0860, 1, 101 )
	TriggerFailure( 1, JumpPage, 13 ) 
	Text( 12,  "�������� �������� ����� ",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 13,  "�����: � ��� ��� �������� �� ���������� ��������! �������� ����� ��� ��������� ���������� ��� ������������. ")
	
	Talk( 20,  "�����: � ������ ������ ������? � ��� ����? � ��� �� ��� ������������ ����� " )
	InitTrigger() --99������֮��10��
	TriggerCondition( 1, HasItem,3095, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 99 )
	TriggerAction( 1, GiveItem, 2440, 10, 4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20,  "�������� 99 ������� �� ����� ��������� ���������� ",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --100�����Ƹ�1��
	TriggerCondition( 1, HasItem,3097, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 100 )
	TriggerAction( 1, GiveItem, 3096, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20,  "�������� 99 ������� �� ������� ��������� ����� ",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 21,  "�����: � ��� ��� ������������ ���������� ���������! �������� ����� ��� ��������� ���������� ��� ������������. ") 

end
------------------------------------------------------------
-- ������-----�רԱ
------------------------------------------------------------
--function mmm_talk01()
--	Talk( 1,  "������� �����������: ��� ���� ����������� ��� ���������� ������������ �� ������ ������ � ����. ")
--	Text( 1, bganswer1_13, JumpPage, 13)
--	Text( 1, bganswer1_14, JumpPage, 14)
--	Text( 1, bganswer1_15, JumpPage, 15)
--	Text( 1, bganswer1_16, JumpPage, 16)
--	Text( 1, bganswer1_17, JumpPage, 17)
	--Text( 1,  "Lucky Alphabet Card Exchange " ,JumpPage, 18 )

--	InitTrigger()
--	TriggerCondition( 1, HasRecord, 1007 )
--	TriggerAction( 1, ClearRecord, 1000 )
--	TriggerAction( 1, ClearRecord, 1001 )
--	TriggerAction( 1, ClearRecord, 1002 )
--	TriggerAction( 1, ClearRecord, 1003 )
--	TriggerAction( 1, ClearRecord, 1004 )
--	TriggerAction( 1, ClearRecord, 1005 )
--	TriggerAction( 1, ClearRecord, 1006 )
--	TriggerAction( 1, ClearRecord, 1007 )
--	TriggerAction( 1, JumpPage, 20)
--	TriggerFailure( 1, JumpPage, 21)
--	Text( 1,  "Start challenge again " ,MultiTrigger, GetMultiTrigger(), 1)

--	----------------11.20-11.26	
--	InitTrigger()						----50W������
--	TriggerCondition( 1, CheckZMKTime )
--	TriggerCondition( 1, HasItem, 3869, 1 )			----t
--	TriggerCondition( 1, HasItem, 3864, 1 )			----0
--	TriggerCondition( 1, HasItem, 3865, 1 )			----p

--	TriggerAction( 1, TakeItem,   3869, 1 )
--	TriggerAction( 1, TakeItem,   3864, 1 )
--	TriggerAction( 1, TakeItem,   3865, 1 )
--	TriggerAction( 1, AddMoney, 500000)
--	TriggerFailure( 1, JumpPage, 19 )
--	Talk( 18,  "Pappa: This week's lucky combination is: top. Exchangable for 500000G. ")
--	Text(18,  "�������� ", MultiTrigger, GetMultiTrigger(), 1)

--	Talk( 19,  "Pappa: Do you have enough Cards on you? Please check if your inventory is binded! ")
--	Talk( 20,  "You can take the challenge of Hexathlon again now! ")
--	Talk( 21,  "you can do the challenge now.please don't joke with me.i'm busy now. ")
	-----��������
--	AddNpcMission ( 6114 )


	----------------11.27-12.3
--	InitTrigger()					----10�����ɽ���
--	TriggerCondition( 1, CheckZMKTime )
--	TriggerCondition( 1, HasItem, 3858, 1 )			----i
--	TriggerCondition( 1, HasItem, 3856, 2 )			----g
--	TriggerCondition( 1, HasItem, 3869, 1 )			----t
--	TriggerCondition( 1, HasItem, 3864, 1 )			----0
--	TriggerCondition( 1, HasItem, 3865, 1 )			----p
--
--	TriggerAction( 1, TakeItem,   3858, 1 )
--	TriggerAction( 1, TakeItem,   3856, 2 )
--	TriggerAction( 1, TakeItem,   3869, 1 )
--	TriggerAction( 1, TakeItem,   3864, 1 )
--	TriggerAction( 1, TakeItem,   3865, 1 )
--	TriggerAction( 1, GiveItem, 3844, 10, 4)
--	TriggerFailure( 1, JumpPage, 19 )
--	Talk( 18,  "Pappa: This week's lucky combination is: iggtop. Exchangable for 10 Heaven's Berry. ")
--	Text(18,  "�������� ", MultiTrigger, GetMultiTrigger(), 1)


	---------------12.4-12.10
--	InitTrigger()						----��������10��+5�����ɽ���
--	TriggerCondition( 1, CheckZMKTime )
--	TriggerCondition( 1, HasItem, 3857, 1 )			----h
--	TriggerCondition( 1, HasItem, 3864, 2 )			----0
--	TriggerCondition( 1, HasItem, 3869, 2 )			----t
--	TriggerCondition( 1, HasItem, 3865, 1 )			----p
--
--	TriggerAction( 1, TakeItem, 3857, 1 )			----h
--	TriggerAction( 1, TakeItem, 3864, 2 )			----0
--	TriggerAction( 1, TakeItem, 3869, 2 )			----t
--	TriggerAction( 1, TakeItem, 3865, 1 )			----p
--	TriggerAction( 1, GiveItem, 3844, 5, 4)
--	TriggerAction( 1, GiveItem, 3846, 10, 4)
--	TriggerFailure( 1, JumpPage, 19 )
--	Talk( 18,  "Pappa: This week's lucky combination is: hottop. Exchangable for 10 Voodoo Doll and 5 Heaven's Berry. ")
--	Text(18,  "�������� ", MultiTrigger, GetMultiTrigger(), 1)

	---------------12.11-12.17
--	InitTrigger()						----����
--	TriggerCondition( 1, CheckZMKTime )
--	TriggerCondition( 1, HasItem, 3869, 2 )			----t
--	TriggerCondition( 1, HasItem, 3850, 2 )			----a
--	TriggerCondition( 1, HasItem, 3861, 1 )			----l
--	TriggerCondition( 1, HasItem, 3854, 2 )			----e
--	TriggerCondition( 1, HasItem, 3868, 2 )			----s
--	TriggerCondition( 1, HasItem, 3864, 1 )			----o
--	TriggerCondition( 1, HasItem, 3855, 1 )			----f
--	TriggerCondition( 1, HasItem, 3865, 1 )			----p
--	TriggerCondition( 1, HasItem, 3858, 1 )			----i
--	TriggerCondition( 1, HasItem, 3867, 1 )			----r
--
--	TriggerAction( 1, TakeItem, 3869, 2 )			----t
--	TriggerAction( 1, TakeItem, 3850, 2 )			----a
--	TriggerAction( 1, TakeItem, 3861, 1 )			----l
--	TriggerAction( 1, TakeItem, 3854, 2 )			----e
--	TriggerAction( 1, TakeItem, 3868, 2 )			----s
--	TriggerAction( 1, TakeItem, 3864, 1 )			----o
--	TriggerAction( 1, TakeItem, 3855, 1 )			----f
--	TriggerAction( 1, TakeItem, 3865, 1 )			----p
--	TriggerAction( 1, TakeItem, 3858, 1 )			----i
--	TriggerAction( 1, TakeItem, 3867, 1 )			----r
--	TriggerAction( 1, GiveItem, 0845, 1, 4)
--	TriggerAction( 1, GiveItem, 0846, 1, 4)
--	TriggerAction( 1, GiveItem, 0847, 1, 4)
--	TriggerAction( 1, GiveItem, 0848, 1, 4)
--	Talk( 18,  "Pappa: This week's lucky combination is: talesofpirates. Exchangable for A set of Black Dragon apparel. ")
--	Text(18,  "�������� ", MultiTrigger, GetMultiTrigger(), 1)

--	Talk( 13, bgtalk13)
--	Talk( 14, bgtalk14)
--	Talk( 15, bgtalk15)
--	Talk( 16, bgtalk16)
--	Talk( 17, bgtalk17)

--end

------------------------------------------------------------
-- ������-----��ԭ
------------------------------------------------------------
function mmm_talk02()
	Talk( 1,  "�� ����: ��... ����� ������� ������� �����... ")
	AddNpcMission ( 902 )
	AddNpcMission ( 903 )
	AddNpcMission ( 904 )
end
-----------------------------------------------------------
---ɳᰳ�---�������Ա�����ö�
-----------------------------------------------------------
function e_talk01 ()
	Talk( 1,  "�����: ������������ ����� ���������� ����� ��� ��� ��������� � ���������� ������� ���. ����� ������� ������� ��� �������������� � ��� ��������� �� 4 ������. " )
	Text( 1,  "����������� ��� ������ ��������� " ,JumpPage, 2)
	Text( 1,  "������� ���������� ��� ", JumpPage, 3)
	Text( 1,  "������� ��� ", OpenEidolonMetempsychosis )
	Talk( 2,  "�����: ��� ������ ��������� ����� ������� ������ �������������� � ��������. ����� ���� ��� ����, ��������, ������������, ���� � �������� ����� ������� ��������������� ����� � ������ ��������� ��� ������������� ��������. ��� ����� � ��� ��� ���� ������� ����������� ��������� ����� � ���������� ����� ��������������. � ����� ������� �������� ������� ��� ��� �����. ")	
	Talk( 3,  "�����: �� ������� ���������� ��� ������ ��������� ����� ������ ������� ���������. ����� ���� � ������� ���� ���� ���� �����������. ����� ��� ����������? ")
	Text( 3,  "������� ��� ��������� ��� ���� ", JumpPage, 4  )
	Text( 3,  "������� ��� ��������� ��� ������������ ", JumpPage, 5  )
	Text( 3,  "������� ��� ��������� ��� �������� ", JumpPage, 6  )
	Text( 3,  "������� ��� ��������� ��� ���� ", JumpPage, 7  )
	Text( 3,  "������� ��� ��������� ��� �������� ", JumpPage, 8  )
	Text( 3,  "������� ��� ��������� ��� ����� ", JumpPage, 9 )
	Text( 3,  "������� ��� ��������� ��� ��� ", JumpPage, 10 )
	Text( 3,  "������� ��� ��������� ����� �������� ", JumpPage, 11 )	
	Talk(  4,  "�����: ��� ��������� ��� ���� ���������� - 2 ��� ������ 20 ������, 1 ������������ ����� ����, 10 ���������� �������� ���������, 10 ������ ���������� ����� � ������� ������. ")
	Talk(  5,  "�����: ��� ��������� ��� ������������ ���������� - 2 ��� ������ 20 ������, 1 ������������ ����� ���������, 10 ��������� �������� ��������, 10 ������ ���������� ������� � ������� ������. ")
	Talk(  6,  "�����: ��� ��������� ��� �������� ���������� - 2 ��� ������ 20 ������, 1 ������������ ����� �������, 10 ������ �����, 10 ������� ������ � ������� ������. ")
	Talk(  7,  "�����: ��� �������� ��� ���� ���������� - 2 ��� ������ 20 ������, 1 ������������ ����� ����������, 10 ������� ��������, 10 ������ ���������� ������� � ������� ������. ")
	Talk(  8,  "�����: ��� �������� ��� �������� ���������� - 2 ��� ������ 20 ������, 1 ������ �����, 10 ��������� �����, 10 �������� ������ � ������� ������. ")
	Talk(  9,  "�����: ��� �������� ��� ����� ���������� - 2 ��� ������ 20 ������, 1 ������������ ����� �������, 10 �������� ���� ��������, 10 ������ ���������� ����� � ������� ������. ")
	Talk(  10,  "�����: ��� �������� ��� ��� ���������� - 2 ��� ������ 20 ������, 1 ������������ ����� �����, 10 ������ ���������� �������� ���������, 10 ������ ����� � ������� ������. ")
	Talk(  11,  "�����: ��� �������� ����� �������� �� ����� �������� ����� ����� ������������. ��� ����� ���������� ���� 2 ��� ����� ������ 20 ������. ��� ���������� ��� ����� � ����� ������ ���� ����������� ��������� ����� �������� ����� �������� �� ������ ���� ���. ")

-----------eleven
	AddNpcMission ( 5019 )
	AddNpcMission ( 5032 )

	--------------------1.7
	AddNpcMission ( 5080	)
	AddNpcMission ( 5081	)
	AddNpcMission ( 5082	)
	AddNpcMission ( 5083	)
	AddNpcMission (5117 )
	AddNpcMission (5142 )
	AddNpcMission (5149 )
end 

------------------------------Ѱ����ʧ�İ���
function el_talk01()
	Talk( 1,  "��������� �����: ��������� ������, � �� ��������� � ���� ����... ")	
	AddNpcMission ( 907 )
	AddNpcMission ( 911 )
	AddNpcMission ( 912 )
	AddNpcMission ( 917 )
end
function el_talk02()
	Talk( 1,  "�������: � ������� ���� ��������... ")
	AddNpcMission ( 908 )
	AddNpcMission ( 909 )
	AddNpcMission ( 910 )
end
-----------------------------------------------------------
---����---��������
-----------------------------------------------------------
-------------------------------------��������
function el_talk03()
	Talk( 1,  "������������ ������: � �� ������� ��� �� ��� ������ �������������... ")	


	AddNpcMission ( 918 )
--------eleven
	AddNpcMission ( 5018 )
	AddNpcMission ( 5020 )
	AddNpcMission ( 5021)
	AddNpcMission ( 5022)
end
-----------------------------------------------------------
---������---���ص�¯��
-----------------------------------------------------------
function star_talk02 ()
	Talk( 1,  "���� ����������: ��� �� ��� ��������? ������� �� ������ ����� �������� ����? " )
	Text( 1,  "�������� ������� ", JumpPage, 2 )
	Text( 1,  "��������� ������� ������ ", OpenItemTiChun )
	Text( 1,  "������� ������� ", OpenItemEnergy )
	Text( 1,  "�������� �������� ", OpenGetStone )
	Text( 1,  "�������� ���������� ", OpenItemFix )
	Talk( 2,  "���� ����������: � ������ �� ���� �������� �� � ���. �������� ����. " )
	Text( 2,  "�� ��������� ������ ������, ������ ������� ������� � ���������� ����� 70 ������. ", JumpPage, 3)
	Text( 2,  "������ � ������� ������� ", JumpPage, 4 )
	Text( 2,  "������ � ������������ ��������� ", JumpPage, 5 )
	Text( 2,  "������ � ������� ������������ ", JumpPage, 6)
	Talk( 3,  "���� ����������: � ������� ���� ������� �� ������ �������� ����� ������, ����� ������� ������� ��� ���������� ����� 70 ������ � ����� ������ 75 ������. ����������� � ������� ��������� ����������. " )
	Talk( 4,  "���� ����������: �� ������ �������� ���� ������ ��������� ������ �������. �������� �������������� ������� �������� �������� �� 50 �� 1000 ������� �������, � �������������� ������������ �������� �������� �� 1500 ������� �������. ����� ������������� ������� ��������! " )
	Talk( 5,  "���� ����������: ���������� ��������� �� ����� ���� ������ ����. ������� ������������ ��������� ����� ����� ������ ������������ ���������. ����� ���������� ������� ������������ ��������� ����������� �� 1 �������. ���������� ������� ��������� ������� 1 ����� �������. ")
	Text( 5,  "������ ������������ ��������� ", JumpPage, 7 )
	Talk( 6,  "���� ����������: ������������� ����� ������ ������������ ����������� �����, �������� �����������, ������ ����, ������� ������������. �������������� ������� �������� ��������� ������������� 1 ���������� �����������. ������� ���������� ����������� ������ ���� ����� ������ ������������� �����������. " )
	Talk( 7,  "���� ����������: ������� ��� ������� � 3 ������� ��� �������. � ������ ����� �������� ������ 3 ������, �� ������ �������� �������� 2 ������ � � ������� ���� ������� ������� 1 ������. ��� ���������� �� ������� �������� ������ 3 ������, � � ������ ����� ����� �������� ������ 2 ������. ���������� ������ ���� � 1 ����� ����������. " )
end 
-----------------------------------------------------------
---����---������
-----------------------------------------------------------
function star_talk03 ()
	Talk( 1,  "�������: ������! ����� ����� � �� ��������� �������� �������� ���������� ����� � ���������, �� ������ �������� ����� ������! " )
	Text( 1,  "������ ��� ���� ", JumpPage, 2 )
	Text( 1,  "������ � ������� ", OpenTiger )
	Talk( 2,  "�������: ������ ���� ������� ������� 5 ����� ���. ������ �� ������ ����� ���������� ���. ��� ������ �� �������, ��� ���� ���� �� ������! " )
end 
--------------------------------------Ѫ�ȵĸ߸�Ь
function el_talk04 ()
	
	Talk( 1,  "����� �������: ��... ��... ��� �� ��� ������ ���... " )-------------(2249,2705)
	AddNpcMission ( 919 )
end

-----------------------------------------------------------
---ӡ�ڰ��ɡ���˹
-----------------------------------------------------------
function llleo_talk01()
	Talk( 1,  "������� �����: � ����� ����� ���� ������. �� ������ ����� �� ����?" )
	Text( 1,  "������ ������ ", JumpPage, 2)

	Talk( 2,  "������� �����: ����� ���� ��� ��� ������� ������� �� 2 ���������, � ������ �� ������ ���� � ������ �� 2 ��������� ������������. � ������ ���� ������ ������ ����������� �������� ������. ������ ������������� �� ����� � ���. ���� �� ������ ��� �����������, �� � ��� ������. " )
	Text( 2,  "����� ������ ", JumpPage, 3)
	
	Talk( 3,  "������� �����: �������������� ����������� ���������� ������� ��������� ���������� �������. ������ ������������� ���������� ��� ����� ������� �������� ���������� ���. ��� �� ���������� ������� ����� ���� - ���������� ����. " )
	Text( 3,  "����� ���������� ", JumpPage, 6)
	Text( 3,  "������� ������� ", JumpPage, 7)
	Text( 3,  "���� ������� ", JumpPage, 8)
	Text( 3,  "���������� ���������� ", JumpPage, 9)
	Text( 3,  "������� ���������� ", JumpPage, 10)
	Text( 3,  "������� ���������� ", JumpPage, 11)
	Text( 3,  "���� ���������� ", JumpPage, 12)
	Text( 3,  "������ --> ", JumpPage, 4)

	Talk( 4,  "������� �����: �������������� ����������� ���������� ������� ��������� ���������� �������. ������ ������������� ���������� ��� ����� ������� �������� ���������� ���. ��� �� ���������� ������� ����� ���� - ���������� ����. " )
	Text( 4,  "������ ���������� ", JumpPage, 13)
	Text( 4,  "���� ���������� ", JumpPage, 14)
	Text( 4,  "������ ���������� ", JumpPage, 15)
	Text( 4,  "������ ������� ", JumpPage, 16)
	Text( 4,  "����� ������� ", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 6,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 7,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 8,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 9,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 10,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 11,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 12,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 13,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 14,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 15,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 16,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17,  "������� �����: ��� ������ ������ � ����� �������� ��� ���������� - ������������ �������, 1 ���������� ���� � 800000 ������. " )
	Text( 17,  "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30,  "�������� �����: ��������, �� � ��� ��� ���� ����������� ���������. " )

end

function kk_talk01 ()

	Talk( 1,  "������������� �����: � ��� �������� ���� ����������, � ���� ���������� �������� ��������. " )
	Text( 1,  "�������� ������� ", JumpPage ,7)
	Text( 1,  "���������� ��� ����� ", Garner2GetWiner)
	Text( 1,  "����� � ��� ����� ", Garner2RequestReorder)
	--Text( 1,  "You received Chaos Manual ", Change_FightingBook)
	--Text( 1,  "About Chaos manual ", JumpPage ,2)
	Text( 1,  "������ � ����� ����� ", JumpPage ,3)
	Text( 1,  "������ � ����� ������� ", JumpPage ,13)

	Talk( 2,  "������������� �����: If you do not have the Mark of Honor, this Chaos Manual will record all your Honor points. If you have the Mark of Honor, this book will replace your former Mark of Honor and record all your Honor. Your existing points will not vanish and will be recorded on this book. " )
	Text( 2, "Comfirm ",Change_FightingBook)

	Talk( 3,  "������������� �����: ����������� ��� ��������� ��������, ������ ����� � ������ ����� ���� ������ ����������. " )
	Text( 3, "������ � ����� ����� ",JumpPage ,4)
	Text( 3, "������ � ���������� ����� ",JumpPage ,6)


	Talk( 4,  "������������� �����: �� ������ �������� ���� ����� �������� ����������� �������� ������ ������. ��� ���� ������������ � ���� ������ ������. " )
	Talk( 6,  "������������� �����: ����� ����� �������� � ���� �������� ������ �����, �������� ���� ����� � �������� ���� �����. ��� ������� ������� ������ ����� �������� ������������ ����� � ����������� �� ��������� � ��� �����. " )

	Talk( 7,  "������������� �����: ����������� �� ���, ���� ������ �������� ������ ����. " )
	Text( 7, "�������� ����������� �������� ����� ",JumpPage ,8)
	Text( 7, "�������� ������ ����� ",JumpPage ,9)
	Text( 7, "�������� �� ������� ������ ����� ",JumpPage ,10)
	Text( 7, "�������� ���� ",SendExchangeXData)
	Text( 7, "�������� ������ ����� ",JumpPage ,12)

	InitExchangeX()

	ExchangeDataX(	2608	,	100	,	2682	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2683	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2684	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2692	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2693	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2694	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2702	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2703	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2704	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2712	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2713	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2714	,	1	,	1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 1 )
	TriggerAction( 1, GiveItem, 2609, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )

	Talk( 8,  "������������� �����: ���������� 1 ������ ������� ������ " )
	Text( 8,  "�������� ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1032, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1032, 1 )
	TriggerAction( 1, GiveItem, 1134, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	
	Talk( 9,  "Chaos ������������� �����: ���������� 1 ������� ������ ����� " )
	Text( 9,  "�������� ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 5 )
	TriggerAction( 1, GiveItem, 1032, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )

	Talk( 10,  "������������� �����: ���������� 5 ������ ������� ������" )
	Text( 10,  "�������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11,  "������������� �����: ������� ���� ��� �������� ��� ����������� ��������. ����� �� �������� ���������� 1 ��������� ����� � ���������. " )

	Talk( 12,  "������������� �����: ������� ����� ��� ������ �����, �������� ������ � ������ �����������. ��� ������� ��� ��������� 200, 2000 � 20000 ����� ��������� ��������������. " )
	Text( 12,  "�������� ������ ����� ", Change_shanyao)
	Text( 12,  "�������� �������� ������ ", Change_rongyao)
	Text( 12,  "�������� ������ ����������� ", Change_huihuang)

	Talk( 13,  "������������� �����: ���� ������� ��������� ������� �������� ��������� �������� �� ����� ����������. ����� ����� � ���� ������� ����� ������ ���� ��� ������� 20 ������ � ����� 20 ����� �����, 30 ����� ��������� � ��������� ���������� ������. " )

	AddNpcMission	(6268)
	AddNpcMission	(6269)

end 

function b_talk25 ()
	Popup( LifeSkillBegin , 3 )	

end 

function b_talk26 ()
	Popup( LifeSkillBegin , 2 )	

end 

function b_talk27 ()
	Popup( LifeSkillBegin , 0 )
end 

function b_talk28 ()
	Popup( LifeSkillBegin , 1 )	

end 

function leo_talkaa()
	Talk( 1,  "���������� ��� ���� �������! �������� �����������! " )
	Text( 1,  "���������� �������� ", SendExchangeXData)

	
	--�һ�������Ʒ ID,����,�һ�������Ʒ����,�����ֵ
	InitExchangeX()

	ExchangeDataX(	3989	,	99	,	3999	,	20	,	1)
	ExchangeDataX(	3990	,	99	,	4000	,	20	,	1)
	ExchangeDataX(	3991	,	99	,	4001	,	20	,	1)
	ExchangeDataX(	3992	,	99	,	4002	,	20	,	1)
	ExchangeDataX(	3993	,	99	,	4003	,	20	,	1)
	ExchangeDataX(	3994	,	99	,	4004	,	20	,	1)
	ExchangeDataX(	3995	,	99	,	4005	,	20	,	1)
	ExchangeDataX(	3996	,	99	,	4006	,	20	,	1)
	ExchangeDataX(	3997	,	99	,	4007	,	20	,	1)
	ExchangeDataX(	3998	,	99	,	4008	,	20	,	1)

end

function leo_talkbb()
	Talk( 1,  "������� ������! �� ��������� ���� �� ������ ��� ���� ������! " )
	Text( 1,  "� ���� ���� ������ ", SendExchangeXData)

	
	--�һ�������Ʒ ID,����,�һ�������Ʒ����,�����ֵ
	InitExchangeX()

	ExchangeDataX(	4029	,	99	,	4039	,	20	,	1)
	ExchangeDataX(	4030	,	99	,	4040	,	20	,	1)
	ExchangeDataX(	4031	,	99	,	4041	,	20	,	1)
	ExchangeDataX(	4032	,	99	,	4042	,	20	,	1)
	ExchangeDataX(	4033	,	99	,	4043	,	20	,	1)
	ExchangeDataX(	4034	,	99	,	4044	,	20	,	1)
	ExchangeDataX(	4035	,	99	,	4045	,	20	,	1)
	ExchangeDataX(	4036	,	99	,	4046	,	20	,	1)
	ExchangeDataX(	4037	,	99	,	4047	,	20	,	1)
	ExchangeDataX(	4038	,	99	,	4048	,	20	,	1)
	ExchangeDataX(	1670	,	99	,	1671	,	20	,	1)
	ExchangeDataX(	1668	,	99	,	3368	,	20	,	1)
	ExchangeDataX(	1667	,	99	,	3360	,	20	,	1)
	ExchangeDataX(	1642	,	99	,	1643	,	20	,	1)
	ExchangeDataX(	4825	,	99	,	1638	,	20	,	1)
	ExchangeDataX(	1633	,	99	,	1641	,	20	,	1)
	ExchangeDataX(	1782	,	99	,	1769	,	20	,	1)
	ExchangeDataX(	2815	,	99	,	1775	,	20	,	1)
	ExchangeDataX(	1674	,	99	,	1767	,	20	,	1)
	ExchangeDataX(	4832	,	99	,	2901	,	20	,	1)

end

function leo_talkcc()
	Talk( 1, "������ � Ը���.� ���� ���� �������� ������� ����� ��� ��� �� ������ ������ � ���������� ���� ,� � �������� ��������������� " )
	Text( 1, "����,���� ��� ����� ���������.", SendExchangeData)
	
	InitExchange()

	ExchangeData(	855	,	60	,	2617	,	1	,	1)
	ExchangeData(	2588	,	3	,	2619	,	1	,	1)
	ExchangeData(	2588	,	20	,	2622	,	1	,	1)
	ExchangeData(	2589	,	5	,	2624	,	1	,	1)
	ExchangeData(	2588	,	3	,	2640	,	1	,	1)
	ExchangeData(	855	,	60	,	2641	,	1	,	1)
	ExchangeData(	2588	,	20	,	2642	,	1	,	1)
	ExchangeData(	2588	,	20	,	2643	,	1	,	1)
	ExchangeData(	2588	,	50	,	2644	,	1	,	1)
	ExchangeData(	2588	,	50	,	2649	,	1	,	1)
	ExchangeData(	855	,	100	,	1055	,	1	,	1)
	ExchangeData(	2588	,	100	,	1056	,	1	,	1)
	ExchangeData(	855	,	100	,	1058	,	1	,	1)
	ExchangeData(	2588	,	100	,	1059	,	1	,	1)
	ExchangeData(	855	,	100	,	1061	,	1	,	1)
	ExchangeData(	2588	,	100	,	1062	,	1	,	1)
	ExchangeData(	855	,	100	,	1064	,	1	,	1)
	ExchangeData(	2588	,	100	,	1065	,	1	,	1)
	ExchangeData(	855	,	10	,	2680	,	1	,	1)
	ExchangeData(	855	,	50	,	2681	,	1	,	1)
	ExchangeData(	855	,	300	,	2682	,	1	,	1)
	ExchangeData(	2588	,	10	,	2683	,	1	,	1)
	ExchangeData(	2588	,	50	,	2684	,	1	,	1)
	ExchangeData(	2588	,	300	,	2685	,	1	,	1)
	ExchangeData(	855	,	10	,	2690	,	1	,	1)
	ExchangeData(	855	,	50	,	2691	,	1	,	1)
	ExchangeData(	855	,	300	,	2692	,	1	,	1)
	ExchangeData(	2588	,	10	,	2693	,	1	,	1)
	ExchangeData(	2588	,	50	,	2694	,	1	,	1)
	ExchangeData(	2588	,	300	,	2695	,	1	,	1)
	ExchangeData(	855	,	10	,	2700	,	1	,	1)
	ExchangeData(	855	,	50	,	2701	,	1	,	1)
	ExchangeData(	855	,	300	,	2702	,	1	,	1)
	ExchangeData(	2588	,	10	,	2703	,	1	,	1)
	ExchangeData(	2588	,	50	,	2704	,	1	,	1)
	ExchangeData(	2588	,	300	,	2705	,	1	,	1)
	ExchangeData(	855	,	10	,	2710	,	1	,	1)
	ExchangeData(	855	,	50	,	2711	,	1	,	1)
	ExchangeData(	855	,	300	,	2712	,	1	,	1)
	ExchangeData(	2588	,	10	,	2713	,	1	,	1)
	ExchangeData(	2588	,	50	,	2714	,	1	,	1)
	ExchangeData(	2588	,	300	,	2715	,	1	,	1)

end

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ϳɽ���Ա
-----����Ա-��
function max_talka1()
	Talk( 1,  "��������: ������, � ��������! � ���� ������ ��� � ����������, � �������� �� ����������� ��� ������������� ����������� ��� �������. " )
	Text( 1,  "��� �� ���������� ��� �������? ", JumpPage ,2)
	Text( 1,  "� ���� ������������ ����������? ", JumpPage ,7)
	Text( 1,  "��� �������� ����������? ", JumpPage ,3)
	Text( 1,  "��� ����� �������������? ", JumpPage ,4)
	Text( 1,  "�������, � ��� ���� ", JumpPage ,6)

	Talk( 2,  "��������: ���������� ��� ������� ��� ������������ ����������. �� ��������� �������� �������� ���������� ������ ��������. " )
	Text( 2,  "� ���� ������ ������ ������", JumpPage ,1)
	Text( 2,  "�������... �������� ������ ���. ", CloseTalk)

	Talk( 3,  "��������: �� ������ ����������� ���, ���������� � ����������� ��� �������. ����� ��������� ��� �������� � ���������� ������. � ��� ������ ���� ��������������� �����. " )
	Text( 3,  "��� ����� ���� ������ ����������? ", JumpPage ,5)
	Text( 3,  "�� ������� ��������� �����������? ", JumpPage ,9)
	Text( 3,  "� ���� ������ ������ ������ ", JumpPage ,1)
	Text( 3,  "�������... �������� ������ ���. ", CloseTalk)

	Talk( 4,  "��������: ������������� ����� ������� � ������. ������������� ������ ������������� �������� � ��������� ������ ���������. " )
	Text( 4,  "��� ����� �������� �����������? ", JumpPage ,8)
	Text( 4,  "� ���� ������ ������ ������", JumpPage ,1)
	Text( 4,  "�������... �������� ������ ���. ", CloseTalk)

	Talk( 5,  "��������: �� ����������, ������������� ����������� ���������� ���������. ������ ��� ������� �� ��������� ������������� ������� � �����������. ")
	Text( 5,  "� ���� ������ ������ ������ ", JumpPage ,1)
	Text( 5,  "�������... �������� ������ ���. ", CloseTalk)

	Talk( 6,  "��������: ������� � ��� ��� ������� ������! ")
	Text( 6,  "���������� ", CloseTalk)

	Talk( 7,  "��������: ������� �� ������. ������ ������� ��� �������� ������ ����������� �� ������� � �����������. ")
	Text( 7,  "� ���� ������ ������ ������ ", JumpPage ,1)
	Text( 7,  "�������... �������� ������ ���. ", CloseTalk)

	Talk( 8,  "��������: ������������ ����� �������� � ��������� ���������, � ����� ��� ������� �� ������. " )
	Text( 8,  "� ���� ������ ������ ������ ", JumpPage ,1)
	Text( 8,  "�������... �������� ������ ���. ", CloseTalk)

	Talk( 9,  "��������: ���������� ��� ����������� ��� ������� �������. ������ �� �������� ��� ������� ����������� ��� ������� ������ ���� �� ������ ������ ������ �������. " )
	Text( 9,  "� ���� ������ ������ ������ ", JumpPage ,1)
	Text( 9,  "�������... �������� ������ ���. ", CloseTalk)

end

-----��������
function max_talka2()
	Talk( 1,  "������� ������: ������! � ������� ������. ����� �� ����� � ���� ����� ��������� �������! ��� � ���� ������? " )
	Text( 1,  "� ���� ������ ��� � ���� �������� ", JumpPage ,2)
	Text( 1,  "� ���� �������� ���������? ", JumpPage ,3)
	Text( 1,  "�� ������ ������� ���� ��������? ", JumpPage ,4)
	Text( 1,  "��� ����� ����� ��� �� ������? ", JumpPage ,5)
	Text( 1,  "� ������ �������� ����... ", JumpPage ,6)

	Talk( 2,  "������� ������: ��� ������������� ���� ��� ��������� �����. ����� ����� ��������! " )
	Text( 2,  "������ ������ ������� ", JumpPage ,1)
	Text( 2,  "������� �������, � ��� �����. ", CloseTalk)

	Talk( 3,  "������� ������: ��, �������. �� ������� �� ������ ������� ��������������� �����. ����� ������ ����� ���������� � �����������. " )
	Text( 3,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 3,  "������� �������, � ��� �����. ", CloseTalk)

	Talk( 4,  " ������� ������: ��������� - ������� �����. �� ������ ��� ��������� ����������� �����. ����� ���������� ��� � ��������������� �������, ������ � ��� ����������. ����� ���������� ��������� ��������� ��� �����������. �� ��������� ����� ��� ���� ����� ��� �����������, ��� � �������! " )
	Text( 4,  "When will the fire be just nice? ", JumpPage ,7)
	Text( 4,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 4,  "������� �������, � ��� �����. ", CloseTalk)

	Talk( 5,  "������� ������: ���� ���� ��������� ��� ���������� �����������, �� ��� ����� �� ������ �������� ����, �� � ������ ����. " )
	Text( 5,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 5,  "������� �������, � ��� �����. ", CloseTalk)

	Talk( 6,  "������� ������: ������� � ��� ��� ������� �����������! ")
	Text( 6,  "I'm really just passing by ", CloseTalk)

	Talk( 7,  "������� ������: ����� ������ ��������� �� �������� �������� �� 75% ����� ����. �� ��������� �� ����! ")
	Text( 7,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 7,  "������� �������, � ��� �����. ", CloseTalk)

end

-----��¯��ʦ��÷��
function max_talka3()
	Talk( 1,  "����������� ����: ������! �� ����� ����? " )
	Text( 1,  "������� ��� ����� ������ ���� ", JumpPage ,2)
	Text( 1,  "��� ������������ ����? ", JumpPage ,3)
	Text( 1,  "������� ����� ���� ", JumpPage ,4)
	Text( 1,  "� ������ �������� ���� ", JumpPage ,5)


	Talk( 2,  "����������� ����: ���� ������������ ��� ������������ ����������. " )
	Text( 2,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 2,  "�������! � ��� �����. ", CloseTalk)

	Talk( 3,  "����������� ����: ����� ������������ ���� ��� ���������� ������� ����� �������. ����� ������ �� ������ ���������� � �����������. " )
	Text( 3,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 3,  "�������! � ��� �����. ", CloseTalk)

	Talk( 4,  "����������� ����: �� ������ ����� ��� � ��������������� �������. ����� ���� ��� ����������� ����������, ������ � ��� ����������� ����������. �� �������� ���������� ���������� � ���������� �������. " )
	Text( 4,  "��� ������ ������ ����? ", JumpPage ,7)
	Text( 4,  "�������! � ��� �����. ", CloseTalk)

	Talk( 7,  "����������� ����: � �������� ������������ �� ������ �������� �������� � ����������� ����������. ������ ��� ��������� �������� ���������� ���������� � ����� ������� ����� �������. " )
	Text( 7,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 7,  "�������! � ��� �����. ", CloseTalk)

	Talk( 5,  "����������� ����: �� ����? ��� ����� ��� �������? ")
	Text( 5,  "� ������ �������� ����... ", CloseTalk)

end

-----�о���
function max_talka4()
	Talk( 1,  "����������: ������! ��� � ���� ��� ��� �������? " )
	Text( 1,  "��� ��� ����� � ����?", JumpPage ,2)
	Text( 1,  "� ���� ������������ ��������� �������? ", JumpPage ,3)
	Text( 1,  "��� �������� ��������� �������? ", JumpPage ,4)
	Text( 1,  "��� ����� ���������� ���������? ", JumpPage ,5)
	Text( 1,  "� ������ ������� ���� ", JumpPage ,6)


	Talk( 2,  "����������: ��� ���� ��������� ����������� - ��������� ��������. �� ���������� ��� ��� ������� ��������. " )
	Text( 2,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 2,  "�������! � ��� �����. ", CloseTalk)

	Talk( 3,  "����������: ������� ������� ����� ������������. ����� ������ ����� ������ � �����������. " )
	Text( 3,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 3,  "�������! � ��� �����. ", CloseTalk)

	Talk( 4,  "����������: ��� ���������� ����� ��� � ��������������� �������. ����� ������� ����� ����������, ����� � ��� ����������� ����������. " )
	Text( 4,  "����� ����� ���� ���������? ", JumpPage ,7)
	Text( 4,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 4,  "�������! � ��� �����. ", CloseTalk)

	Talk( 5,  "����������: ����� ���������� ��������� ��������. ���� ��� ���������� ��������� � ���������� �������, �� �� �� ������ ������������ � ����������. " )
	Text( 5,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 5,  "�������! � ��� �����. ", CloseTalk)

	Talk( 6,  "����������: ������ ��� ��... ")
	Text( 6,  "� ������ ������� ����... ", CloseTalk)

	Talk( 7,  "����������: ��������� �� �� ���������, �� � ������� �� ������ ���������� ���������. ����� �������� �������� �������� ���� ������� ��������������� �����. ")
	Text( 7,  "� ���� ������ ������ ������� ", JumpPage ,1)
	Text( 7,  "�������! � ��� �����. ", CloseTalk)
end

---------------------ʥ����
function el_talk05 ()
	
	Talk( 1,  "�������������� ���: � ����� ����� ����! ������ ������ ���� ������� ��������������! " )
	Text( 1,  "�������� �������������� ",JumpPage, 2  )
	
	Talk ( 2,  "�������������� ���: �� ������ �������� ���� ��������������? ��� ��������� 1 �������������� �������� � 1000 ������. " )
	Text( 2,  "� ���� �������� ���� �������������� ",JumpPage, 3  )
	
	Talk( 3,  "�������������� ���: �� ����������� ��� ��� � ���� ����! ����� ��� ��������� �����! ")
	Text(3, "� ���� �������� �������������� ",  GetChaName_0, 1)
	Text( 3,  "������ --> ",JumpPage, 6  )

	Talk( 6,  "�������������� ���: �� ����������� ��� ��� � ���� ����! ����� ��� ��������� �����! ")
	Text(6, "� ���� �������� �������������� ",  GetChaName_1, 1)
	Text( 6,  "������ --> ",JumpPage, 7  )
	Text( 6,  "<-- ����� ",JumpPage, 3  )

	Talk( 7,  "�������������� ���: �� ����������� ��� ��� � ���� ����! ����� ��� ��������� �����! ")
	Text(7, "� ���� �������� �������������� ",  GetChaName_2, 1)
	Text( 7,  "������ --> ",JumpPage, 8  )
	Text( 7,  "<-- ����� ",JumpPage, 6  )

	Talk( 8,  "�������������� ���: �� ����������� ��� ��� � ���� ����! ����� ��� ��������� �����! ")
	Text(8, "� ���� �������� �������������� ",  GetChaName_3, 1)
	Text( 8,  "<-- ����� ",JumpPage, 7  )
---------------------------------------------------------------------------------------------------------------	
end

----------------------------------------����˹-------------------------
--------------------------------��į֮��6��(51300,26900)
--------------------------------------eleven------------------------------------------
function el_talk07 ()

	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, LvCheck,  "> ", 74 )
	TriggerCondition( 1, HasCredit,9999 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerCondition( 1, NoRecord, 1301 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, CloseTalk  )

	Talk( 1,  "���������: � ������ ������! �� ����������� �� ���� ���� � ���� ������ 75 ������ � 9999 ����� ���������. " )
	Text( 1,  "������! ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2,  "���������: ����� �������� ��������� �� ������ �������� �� ��������� ��������! ����� �� ���� ������� ������� � �������� ���������� ��������? " )
	Text( 2,  "���������� ��� ",JumpPage, 3  )
	Text( 2,  "��������� ����������� ",JumpPage, 4  )
	Text( 2,  "������� ������������ ",JumpPage, 3  )
	Text( 2,  "�������� ������ ",JumpPage, 32  )

	Talk( 3,  "���������: �� ������ ��� �����������! ������... ��� ����� �����? " )
	Text( 3,  "����� ",JumpPage, 4  )
	Text( 3,  "��� ",JumpPage, 32  )
	Text( 3,  "��������� ����� ",JumpPage,5  )
	Text( 3,  "�� ��� ",JumpPage, 2  )
	Text( 3,  "���� ",JumpPage, 4  )
	Text( 3,  "�� ���� ���� ",JumpPage, 4  )

	Talk( 4,  "���������: ��� �� ���� �������������� �������� ������������ ��� ������������?" )
	Text( 4,  "������ ����� �������� � ������ ���� ",JumpPage, 5  )
	Text( 4,  "����� ��������� �������� � ���-�������� ",JumpPage, 5  )
	Text( 4,  "����� ��������� �������� � ���������� ",JumpPage, 2  )
	Text( 4,  "����� ����������� �������� � ������ ���� ",JumpPage, 32 )
	Text( 4,  "������� ����� �������. �������� ",JumpPage, 6  )
	Text( 4,  "���-�������� � ���������� ",JumpPage, 19  )
	Text( 4,  "����� ��������� �������� ",JumpPage, 5  )

	Talk( 5,  "���������: �������� ������� �� ������������ ������� ���...? " )
	Text( 5,  "����������� ����� ",JumpPage, 32  )
	Text( 5,  "����� ����� ������ ",JumpPage, 6  )
	Text( 5,  "������ ����� ",JumpPage, 3  )
	Text( 5,  "�������� ����� ",JumpPage, 22  )
	Text( 5,  "��� ����� ������ ",JumpPage, 7  )
	Text( 5,  "����� ���� ",JumpPage, 7  )
	Text( 5,  "����� ������ ����� ",JumpPage, 32  )

	Talk( 6,  "���������: ����� ��������� ����� �������� � ����? " )
	Text( 6,  "���� � ��� ",JumpPage, 4  )
	Text( 6,  "��� � ���� ",JumpPage, 8  )
	Text( 6,  "������ ",JumpPage, 7  )
	Text( 6,  "������� ",JumpPage, 32  )
	Text( 6,  "��� ��������� ",JumpPage, 32  )
	Text( 6,  "������� ������������ ",JumpPage, 32  )
	Text( 6,  "������ ",JumpPage, 7  )
	Text( 6,  "������ ",JumpPage, 7  )

	Talk( 7,  "���������: ��� ���� ���������� ������������ �����? " )
	Text( 7,  "��� ������� ��� ",JumpPage, 32  )
	Text( 7,  "��� ������ ",JumpPage, 8  )
	Text( 7,  "��� ������� ",JumpPage, 9  )
	Text( 7,  "��� ���������� �������� ������� ",JumpPage, 5  )
	Text( 7,  "��� ������� ",JumpPage, 32  )

	Talk( 8,  "���������: ��� ����� ������� ������? " )
	Text( 8,  "�������� ",JumpPage, 3  )
	Text( 8,  "������� ���� ",JumpPage, 32  )
	Text( 8,  "�������������� ",JumpPage, 32  )
	Text( 8,  "������� ",JumpPage, 9  )
	Text( 8,  "���� ",JumpPage, 7  )
	Text( 8,  "���������� �������� ",JumpPage, 9  )

	Talk( 9,  "���������: ����� ����������� �� ���� ��������� ������? " )
	Text( 9,  "�� ������ �������� ������ ���� ",JumpPage, 4  )
	Text( 9,  "���� - ���������� ��� ���� �� ",JumpPage, 10 )
	Text( 9,  "����� �� ����� ���� ������ ",JumpPage, 32  )
	Text( 9,  "���� �� ����� ������ ������������ ������� ",JumpPage, 23 )
	Text( 9,  "��������� ���� ��� ������ ������� ",JumpPage, 6  )

	Talk( 10,  "���������: �������� ������� ����� ��� �������. ��� ����...  " )
	Text( 10,  "10 ��� ����� ",JumpPage, 5  )
	Text( 10,  "������� ����� ",JumpPage, 5  )
	Text( 10,  "����� �� �������� ������������� ",JumpPage, 32 )
	Text( 10,  "����� �� ������ ������ � ������ ",JumpPage, 8  )
	Text( 10,  "������ ��� �� �������� � ����� ",JumpPage, 11  )
	Text( 10,  "����� ���� ��� ��� ������ ������",JumpPage, 32  )
	Text( 10,  "����� ������ � ��������� ��������� ������� ����� ",JumpPage, 8  )

	Talk( 11,  "���������: ��� �� ������� ����� ��� �����? " )
	Text( 11,  "25 ������ ����������� ������ ",JumpPage, 32 )
	Text( 11,  "������ ������� ",JumpPage, 30  )
	Text( 11,  "�������� �������-�������� ",JumpPage, 13  )
	Text( 11,  "�������� ������� ������� ",JumpPage, 2  )
	Text( 11,  "���������� ����������� ������� ",JumpPage, 13  )
	Text( 11,  "�������������� ���� ",JumpPage, 32  )
	Text( 11,  "��� ���������� �������. ",JumpPage, 28  )

	Talk( 30,  "���������: �� ����� ������� �������������!"  )
	Text( 30,  "����� --> ",JumpPage, 32  )
	Talk( 31,  "���������: �� ���������� �� ������ ��� �� ������� ���� �����!" )
	Text( 31,  "����� --> ",JumpPage, 32  )

	--Talk( 12,  "���������: Which of the below description is wrong? " )
	--Text( 12,  "Minelli is the High Priest's secretary ",JumpPage, 32 )
	--Text( 12,  "You can win Black Dragon equipment from Lucky Chance ",JumpPage, 3 )
	--Text( 12,  "Ditto knows how to concort the Reverse Love Potion. ",JumpPage,8 )
	--Text( 12,  "Roland is the most desired lover ",JumpPage, 10 )
	--Text( 12,  "Kentaro feels that Mas is a very clever person ",JumpPage, 13 )?????
	--Text( 12,  "Horrific Cursed Corpse is near Ascaron at (360, 1340) ",JumpPage, 5 )
	--Text( 12,  "Merman Prince used to be just a frog ",JumpPage, 13 )
	--Text( 12,  "Minelli used to be Carsise's lover ",JumpPage, 13 )

	Talk( 13,  "���������: ��� �� ���� ���������� �������? " )
	Text( 13,  "����� ������� ���������� ��� ���������� ",JumpPage, 5 )
	Text( 13,  "������ �������� ����������� ���������� ",JumpPage, 3 )
	Text( 13,  "����� ������ �� ���������� ����� ���������� ��������� ",JumpPage, 32 )
	Text( 13,  "��������� ����������- ������� ��������*1000 ������ ",JumpPage, 14 )
	Text( 13,  "�� ������ ������ ��������� ������ �� 1 ����� ",JumpPage, 10 )
	Text( 13,  "������� ������������ ��������� ���� ��� ������������ � ���� ",JumpPage, 14 )
	Text( 13,  "��� ������������� ������� ",JumpPage, 8 )

	Talk( 14,  "���������: ��� ����� ����� ���������� ����? " )
	Text( 14,  "������� ",JumpPage, 4 )
	Text( 14,  "����� � ������������ ������� ",JumpPage, 32 )
	Text( 14,  "������� ������ � �������� ������ ",JumpPage, 7 )
	Text( 14,  "����� � ������������ ������� ",JumpPage, 15 )
	Text( 14,  "����� � ����� ",JumpPage, 15 )
	Text( 14,  "������������ ������� � ������� ����� ",JumpPage, 8 )
	Text( 14,  "������� � ������� ����� ",JumpPage, 12 )

	Talk( 15,  "���������: ����� �� ������������� ���� ����� �������� ������? " )
	Text( 15,  "����������������� ����� ",JumpPage,13 )
	Text( 15,  "���������� ������ ",JumpPage, 32 )
	Text( 15,  "������� ������ ",JumpPage, 16 )
	Text( 15,  "���������� ����� ",JumpPage, 5 )
	Text( 15,  "��� ������ ",JumpPage, 4 )
	Text( 15,  "��������� ������� ���� ",JumpPage, 16 )
	Text( 15,  "�������� �������� ",JumpPage, 9 )

	Talk( 16,  "���������: ��� ���������? " )
	Text( 16,  "������������ �������: � ����� ����� ",JumpPage, 32 )
	Text( 16,  "������� ������: ����� ����� �� � ����. ",JumpPage, 17 )
	Text( 16,  "�����: ������������ ������ �� � ���� ������.",JumpPage, 17 )
	Text( 16,  "�����: � ���� ���������� ������ ��� ����� ���������. ",JumpPage, 5 )
	Text( 16,  "���� ��: � ���� ��� �������� �� �����, ������� �� �������� ����. ",JumpPage, 10 )
	Text( 16,  "����� �������: � ���� �������� �� ������ ����� ",JumpPage, 15 )

	Talk( 17,  "���������: �� ������ ������ � ��� ����? " )
	Text( 17,  "����� ",JumpPage, 32 )
	Text( 17,  "� ����� ����� ",JumpPage, 32 )
	Text( 17,  "� ������ ",JumpPage, 32 )
	Text( 17,  "� �����! ",JumpPage, 32 )
	Text( 17,  "� �����!! ",JumpPage, 18 )
	Text( 17,  "� �����!!! ",JumpPage, 5 )
	Text( 17,  "���� ��� �����... ",JumpPage, 15 )

	Talk( 18,  "���������: ����� ������� �������� ����� ��������� ����? " )
	Text( 18,  "������� ",JumpPage, 5 )
	Text( 18,  "���������� � ���� ",JumpPage, 14 )
	Text( 18,  "������������ ",JumpPage, 2 )
	Text( 18,  "���� ",JumpPage, 9 )
	Text( 18,  "������ ",JumpPage, 12 )
	Text( 18,  "������ � �������� ���� ",JumpPage, 10 )
	Text( 18,  "������ � ������ ",JumpPage, 12 )
	Text( 18,  "���� ���� ",JumpPage, 4 )

	Talk( 19,  "���������: �� ������� ������ ������ ������? " )
	Text( 19,  "� ������ ",JumpPage, 21  )
	Text( 19,  "� ������ ������� ",JumpPage, 20  )
	Text( 19,  "� ������ �������� ",JumpPage, 32  )

	Talk( 20,  "���������: ���������� �������� ����� " )
	Text( 20,  "������ -->",JumpPage, 3  )

	Talk( 21,  "���������: ����������� ��� ������� ��� ������! " )
	Text( 21,  "����������� ",JumpPage, 5  )

	Talk( 22,  "���������: �� ������� ������ ������ ������? " )
	Text( 22,  "� ������ ",JumpPage, 24  )
	Text( 22,  "� ������ ������� ",JumpPage, 20  )
	Text( 22,  "� ������ �������� ",JumpPage, 32  )

	Talk( 23,  "���������: �� ������� ������ ������ ������? " )
	Text( 23,  "� ������ ",JumpPage, 25  )
	Text( 23,  "� ������ ������� ",JumpPage, 8  )
	Text( 23,  "� ������ �������� ",JumpPage, 32  )

	Talk( 24,  "���������: ���� - ��� ������� ����� ����� �������! ")
	Text( 24,  "������ -->",JumpPage, 6   )
	Talk( 25,  "���������: ���������� ����������� ����. �� ������ ��������� ��� �� �����! ")
	Text( 25,  "������ -->",JumpPage, 32  )

	Talk( 26,  "���������: �� ������� ������ ������ ������? " )
	Text( 26,  "� ������ ",JumpPage, 28  )
	Text( 26,  "� ������ ������� ",JumpPage, 27  )
	Text( 26,  "� ������ �������� ",JumpPage, 32  )

	Talk( 27,  "���������: ��� �������� �������� ��� ���������� �����. "   )
	Text( 27,  "������ -->",JumpPage, 12  )

	Talk( 28,  "���������: �� ������� ������������. ��� �� ����������� ������. "  )
	Text( 28,  "������ -->",JumpPage, 32  )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerAction( 1, SetRecord, 1301 )
	TriggerAction( 1, JumpPage, 29 )
	
	Talk( 12,  "���������: � ����� ��� ������� ���������. �� ������ �����������? "  )
	Text( 12,  "���� ",MultiTrigger, GetMultiTrigger(), 1  )
	Text( 12,  "��� ",JumpPage, 2  )

	Talk( 29,  "���������: ����������! ���� �������� ������ ��� ���������! ����� � �������� ���� ����. " )

	Talk(32,  "���������: �� ��� �����? " )
	Text( 32,  "���, � ���� ����������� �����! ",JumpPage, 2  )
	Text( 32,  "� ������, ������� ����� ����. ",CloseTalk  )
	
	-- ������������ �������
	AddNpcMission	(6001)
	-- ���������� �������
	AddNpcMission	(6002)
	
end
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˹



----------------------------------------����˹��ͼͼ-------------------------
--------------------------------ħ���������(26600,25900)
--------------------------------------eleven------------------------------------------

-- ����� ����
function el_talk08 ()

	Talk( 1,  "����� ����: �������������� ���! 3 ��� � 2 ���� � ������ �������. ��������� ������!" )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1424 )
	TriggerCondition( 1, HasMission, 1414 )
	TriggerCondition( 1, NoRecord, 1424 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�������� �� ������� ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 2, "��� ���������� ��� �����?")
	Text( 2, "���������� ������ ",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 2, "�������� �������� ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	Text( 2, "����������� ���� ������� ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "� �����, �� ����� ���.")

	InitTrigger()
	TriggerAction( 1, JumpPage, 5)
	Talk( 4, "��� ����� ���� �����?")
	Text( 4, "��� ��� ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "��� ���� ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "������ ������� ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 5, "������� ������� � �����?")
	Text( 5, "5321",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1429)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "5231",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 5, "5132",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "����������, �� ���������!")

	AddNpcMission ( 6095 )
	AddNpcMission ( 6096 )
	AddNpcMission ( 6097 )
	AddNpcMission	(6010)
	AddNpcMission	(6011)
	AddNpcMission	(6012)
	AddNpcMission	(6013)
	AddNpcMission	(6014)

end
	-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˹��ͼͼ
	
	--��ʹ
	
function Leo_talkQ()
	Talk(1, "������������� �������, ������ � ����������! � ������ ��� ��������� � ����. ")
	Text(1, "������ ����������� ",JumpPage,2)
	Text(1, "������ ������ " , OpenGMSend)
	Text(1, "��������� ������ " , OpenGMRecv)
	
	Talk(2, "� �������� ����. � ������� �� ������� � ��������� ����� ������ �� ���. ������ �� ������ ����� ������ 256 ������ ��� 128 ����. ������������ �� ������ ������ ���� 1 ������. ���� �� �� �������� �� ���� ������ ������ ������ �� �� �������. ���������� ��������� ������� ������ ��������� ����! ")
	Text(2, "� ����� " , CloseTalk)
end


-------------------------bargi-----------------------------
function smzh_talk ()

	Talk( 1,  "������������ ����������: ������� �������! �� ������������ ��������! " )
	Text( 1,  "���� ", BuyPage)
	Text( 1,  "������ ", OpenRepair)

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	637	)
	Other(	819	)
	Other(	869	)
	Other(	874	)


end 

function leo_talkzz ()
	Talk(1, "������! � ��� ���������. � ������� ������� ������ ��������� ��������. ")
	Text( 1, "�������� ���������� ����� ����� ",JumpPage,2)
	Text( 1, "�������� � ������ ������������ ",JumpPage,3)
	 
	Talk(3,  "������! � ��� �������� � ������ ������������? ����� ������ ���������. � ���� �� ������ ������������ ���� �����. ")
	Text( 3,  "������������ ",GetChaName_25, 1) 
	
	Talk(2, "���� � ��� �������� � ������ �����, �� � ���� �� �������� �� ����. ")
	Text(2, "�������� ���� ����� ",PKPointToZero)
	Text(2, "���, � ���� ��� � ������� ",CloseTalk)
end


------------------------------------------------------------
-- Navy Frontline Commander
------------------------------------------------------------
function roico_talk001()
	Talk( 1, "Navy Frontline Commander: The battle has begun! Here everyone is a hero, bear in mind the hearts of the faith, work together to defeat the enemy's attack, that is our only way out!" )
	Text( 1, "Battle objetives" ,JumpPage, 2)
	Text( 1, "Exchange fighting material", JumpPage, 3)
	Text( 1, "Donate upgrading resource", JumpPage, 4)
	Text( 1, "Navy Tokens", JumpPage, 13)
	
	Talk( 2, "Battle Objectives: Destroy the enemy base within the statue. To greatly weaken their strength, you can destroy their Armory and their Granary. You can collect resources to improve our defense facilities or exchange for fighting material. Request the Navy Commander to be used with caution, so that the enemy can be surprised.")
	
	Talk( 3, "Navy Frontline Commander: Let the enemy be surprised and not forget our strenght!")
	Text( 3, "Obtain Statue Pass" ,JumpPage, 6)
	Text( 3, "Obtain Random Attribute" ,JumpPage, 7)
	
	Talk( 4, "Navy Frontline Commander: You can donated some materials to increase our base's strength.")
	Text( 4, "Increase Naval Statue's Defense by 20 and Physical Resist by 1" ,JumpPage, 8)
	Text( 4, "Increase Naval Tower's Attack by 25" ,JumpPage, 9)
	Text( 4, "Navy Statue Invincible for 3 minutes" ,JumpPage, 10)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2859, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2859,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "Navy Frontline Commander: I will exchange 25 Eyepatch for a Statue Pass!")
	Text( 6, "I have 25 Eyepatch",  MultiTrigger, GetMultiTrigger(), 1)
        Talk( 11, "Navy Frontline Commander: Use the Statue Pass to come back to our base and defend the Statue, when in danger!" )
	Talk( 12, "Navy Frontline Commander: You don't have all required items or your inventory is full!")


	Talk( 7, "Navy Frontline Commander: I will exchange 20 Eyepatch for a Random Attribute!")
	Text( 7, "I have 20 Eyepatch", GetChaName1_guildwar, 1)
	
	Talk( 8, "Navy Frontline Commander: To increase Naval Statue's Defense, you will need to collect 30 Crystal Ore!")
	Text( 8, "I have 30 Crystal Ore", GetChaName2_guildwar, 1)
	
	Talk( 9, "Navy Frontline Commander: To increase Naval Tower's Attack, you will need to collect 12 Fish Bone and 12 Squirting Fish!")
	Text( 9, "I have enough material", GetChaName4_guildwar, 1)
	
	Talk( 10, "Navy Frontline Commander: To make Navy Statue invincible, you will need to collect 4 Hard Tortoise Shell and 9 Moon Tail Eel!")
	Text( 10, "I have enough material", GetChaName3_guildwar, 1)
	
	Talk( 13, "Navy Frontline Commander: If you collect enough Navy Tokens, I will summon a Surprise Attack to our enemy, the Pirates!")
	Text( 13, "15 Navy Tokens", JumpPage, 14)
	Text( 13, "30 Navy Tokens", JumpPage, 15)
	Text( 13, "45 Navy Tokens", JumpPage, 16)
	
	Talk( 14, "Navy Frontline Commander: For 15 Navy Tokens, I will summon 3 Navy Emissary to help us anywhere you choose!")
	Text( 14, "Around enemy's Statue", GetChaName5_guildwar, 1)
	Text( 14, "Around enemy's Armory", GetChaName6_guildwar, 1)
	Text( 14, "Around enemy's Granary", GetChaName7_guildwar, 1)
	Text( 14, "Around our Statue", GetChaName8_guildwar, 1)
	Text( 14, "Around our Armory", GetChaName9_guildwar, 1)
	Text( 14, "Around our Granary", GetChaName10_guildwar, 1)
	--Text( 14, "Battlefield Road", GetChaName11_guildwar, 1)
	
	Talk( 15, "Navy Frontline Commander: For 30 Navy Tokens, I will summon 7 Navy Emissary to help us anywhere you choose!")
	Text( 15, "Around enemy's Statue", GetChaName11_guildwar, 1)
	Text( 15, "Around enemy's Armory", GetChaName12_guildwar, 1)
	Text( 15, "Around enemy's Granary", GetChaName13_guildwar, 1)
	Text( 15, "Around our Statue", GetChaName14_guildwar, 1)
	Text( 15, "Around our Armory", GetChaName15_guildwar, 1)
	Text( 15, "Around our Granary", GetChaName16_guildwar, 1)
	--Text( 15, "Battlefield Road", GetChaName18_guildwar, 1)
	
	Talk( 16, "Navy Frontline Commander: For 45 Navy Tokens, I will summon 11 Navy Emissary to help us anywhere you choose!")
	Text( 16, "Around enemy's Statue", GetChaName17_guildwar, 1)
	Text( 16, "Around enemy's Armory", GetChaName18_guildwar, 1)
	Text( 16, "Around enemy's Granary", GetChaName19_guildwar, 1)
	Text( 16, "Around our Statue", GetChaName20_guildwar, 1)
	Text( 16, "Around our Armory", GetChaName21_guildwar, 1)
	Text( 16, "Around our Granary", GetChaName22_guildwar, 1)

end

------------------------------------------------------------
-- Pirate Frontline Commander
------------------------------------------------------------
function roico_talk002()
	Talk( 1, "Pirate Frontline Commander: Destruction, looting, killing, Nothing can stop us, let the enemy know the true meaning of fear!" )
	Text( 1, "Battle objetives" ,JumpPage, 2)
	Text( 1, "Exchange fighting material", JumpPage, 3)
	Text( 1, "Donate upgrading resource", JumpPage, 4)
	Text( 1, "Pirate Tokens", JumpPage, 13)
	
	Talk( 2, "Battle Objectives: Destroy the enemy base within the statue. To greatly weaken their strength, you can destroy their Armory and their Granary. You can collect resources to improve our defense facilities or exchange for fighting material. Request the Pirate Commander to be used with caution, so that the enemy can be surprised.")
	
	Talk( 3, "Pirate Frontline Commander: Let the enemy be surprised and not forget our strenght!")
	Text( 3, "Obtain Statue Pass" ,JumpPage, 6)
	Text( 3, "Obtain Random Attribute" ,JumpPage, 7)
	
	Talk( 4, "Pirate Frontline Commander: You can donated some materials to increase our base's strength.")
	Text( 4, "Increase Pirate Statue's Defense by 20 and Physical Resist by 1" ,JumpPage, 8)
	Text( 4, "Increase Pirate Tower's Attack by 25" ,JumpPage, 9)
	Text( 4, "Pirate Statue Invincible for 3 minutes" ,JumpPage, 10)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2858, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2858,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "Pirate Frontline Commander: I will exchange 25 Snuff for a Statue Pass!")
	Text( 6, "I have 25 Snuff",  MultiTrigger, GetMultiTrigger(), 1)
        Talk( 11, "Pirate Frontline Commander: Use the Statue Pass to come back to our base and defend the Statue, when in danger!" )
	Talk( 12, "Pirate Frontline Commander: You don't have all required items or your inventory is full!")


	Talk( 7, "Pirate Frontline Commander: I will exchange 20 Snuff for a Random Attribute!")
	Text( 7, "I have 20 Snuff", GetChaName23_guildwar, 1)
	
	Talk( 8, "Pirate Frontline Commander: To increase Pirate Statue's Defense, you will need to collect 30 Crystal Ore!")
	Text( 8, "I have 30 Crystal Ore", GetChaName24_guildwar, 1)
	
	Talk( 9, "Pirate Frontline Commander: To increase Pirate Tower's Attack, you will need to collect 12 Fish Bone and 12 Squirting Fish!")
	Text( 9, "I have enough material", GetChaName26_guildwar, 1)
	
	Talk( 10, "Pirate Frontline Commander: To make Pirate Statue invincible, you will need to collect 4 Diving Clam and 9 Tortoise Shell Fragment!")
	Text( 10, "I have enough material", GetChaName25_guildwar, 1)
	
	Talk( 13, "Pirate Frontline Commander: If you collect enough Pirate Tokens, I will summon a Surprise Attack to our enemy, the Navy!")
	Text( 13, "15 Pirate Tokens", JumpPage, 14)
	Text( 13, "30 Pirate Tokens", JumpPage, 15)
	Text( 13, "45 Pirate Tokens", JumpPage, 16)
	
	Talk( 14, "Pirate Frontline Commander: For 15 Pirate Tokens, I will summon 3 Pirate Emissary to help us anywhere you choose!")
	Text( 14, "Around enemy's Statue", GetChaName27_guildwar, 1)
	Text( 14, "Around enemy's Armory", GetChaName28_guildwar, 1)
	Text( 14, "Around enemy's Granary", GetChaName29_guildwar, 1)
	Text( 14, "Around our Statue", GetChaName30_guildwar, 1)
	Text( 14, "Around our Armory", GetChaName31_guildwar, 1)
	Text( 14, "Around our Granary", GetChaName32_guildwar, 1)
	--Text( 14, "Battlefield Road", GetChaName11_guildwar, 1)
	
	Talk( 15, "Pirate Frontline Commander: For 30 Pirate Tokens, I will summon 7 Pirate Emissary to help us anywhere you choose!")
	Text( 15, "Around enemy's Statue", GetChaName33_guildwar, 1)
	Text( 15, "Around enemy's Armory", GetChaName34_guildwar, 1)
	Text( 15, "Around enemy's Granary", GetChaName35_guildwar, 1)
	Text( 15, "Around our Statue", GetChaName36_guildwar, 1)
	Text( 15, "Around our Armory", GetChaName37_guildwar, 1)
	Text( 15, "Around our Granary", GetChaName38_guildwar, 1)
	--Text( 15, "Battlefield Road", GetChaName18_guildwar, 1)
	
	Talk( 16, "Pirate Frontline Commander: For 45 Pirate Tokens, I will summon 11 Pirate Emissary to help us anywhere you choose!")
	Text( 16, "Around enemy's Statue", GetChaName39_guildwar, 1)
	Text( 16, "Around enemy's Armory", GetChaName40_guildwar, 1)
	Text( 16, "Around enemy's Granary", GetChaName41_guildwar, 1)
	Text( 16, "Around our Statue", GetChaName42_guildwar, 1)
	Text( 16, "Around our Armory", GetChaName43_guildwar, 1)
	Text( 16, "Around our Granary", GetChaName44_guildwar, 1)
end


-------Sacred War Administrator

function roico_talk()

	Talk( 1, "������������� ��������� �����: ����� ����� � ��������� ����� ��� ����� ������ [����� � ������]. �� ������ � ���� �������� 15 ����� ����� �� ���� ,� ��� �� � ���� ����� �������� ������ � �� ���� � ���� �� ��� ����� ���� ���������� �������� ���������!" )
	Text( 1, "�������� �������� ��������� �� �� ",JumpPage, 2 )
	Text( 1, "�������� ������ ",JumpPage, 16 )
	Text( 1, "�������� ��������� �� ���� ������� ",JumpPage, 28 )
	Text( 1, "�������� ���� ����� � ������ ",JumpPage, 29 )

	Talk( 2, "��������� ����� ��� ����� ������ " )
	Text( 2, "���� ������� (Champion)", JumpPage, 3)
	Text( 2, "���� ������� (Crusader)", JumpPage, 4)
	Text( 2, "���� �������� (Sharpshooter)", JumpPage, 5)
	Text( 2, "���� ��������� (Voyager)", JumpPage, 6)
	Text( 2, "���� ������ (Cleric)", JumpPage, 7)
	Text( 2, "���� ����� (Seal Master)", JumpPage, 8)
	Text( 2, "��������� �������� ", JumpPage, 9)
	Talk( 9, "��������� ����� ��� ����� ������ " )
	Text( 9, "���� ������� (Champion)", JumpPage, 10)
	Text( 9, "���� ������� (Crusader)", JumpPage, 11)
	Text( 9, "���� �������� (Sharpshooter)", JumpPage, 12)
	Text( 9, "���� ��������� (Voyager)", JumpPage, 13)
	Text( 9, "���� ������ (Cleric)", JumpPage, 14)
	Text( 9, "���� ����� (Seal Master)", JumpPage, 15)
	Text( 9, "���������� ��������", JumpPage, 2) 


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2532, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 3, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 3, "��!", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2535, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 4, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 4, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2538, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 5, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 5, "��!", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2541, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 6, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 6, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2544, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 7, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 7, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2547, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 8, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 8, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2531, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 10, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 10, "��!", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2534, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 11, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 11, "��!", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2537, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 12, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 12, "��!", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2540, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 13, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 13, "��!", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2543, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 14, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 14, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2546, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 15, "������������� ��������� �����: �� ��� ������ ������ 300 �������� ����������!" )
	Text( 15, "��!", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 16, "������������� ��������� �����: ��������� ����� ��� ������ �����!" )
    Text( 16, "������ ", JumpPage, 17)
	Text( 16, "�������� ", JumpPage, 18)
	Text( 16, "������ ", JumpPage, 19)
	Text( 16, "��������� ", JumpPage, 20)
	Text( 16, "������� 3 ����� ", JumpPage, 21)
	Text( 16, "��������� �������� ", JumpPage, 30)

	Talk( 30, "������������� ��������� �����: ��������� ����� ��� ������ �����!" )
	Text( 30, "������� 2 ����� ", JumpPage, 22)
	Text( 30, "������� 1 ����� ", JumpPage, 23)
	Text( 30, "�����-������� ", JumpPage, 24)
	Text( 30, "������� ����� ", JumpPage, 25)
	Text( 30, "����������������� ", JumpPage, 26)
	Text( 30, "���������� �������� ", JumpPage, 16)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 5331, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 17, "������������� ��������� �����: �� ��� ������ ������ 20 �������� ����������!" )
	Text( 17, "��!", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 50 )
	TriggerCondition( 1, HasItem, 5331, 1 )
	TriggerAction( 1, TakeItem, 2383, 50 )
	TriggerAction( 1, TakeItem, 5331, 1 )
	TriggerAction( 1, GiveItem, 5332, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 18, "������������� ��������� �����: �� ��� ������ ������ 50 �������� ����������!" )
	Text( 18, "��!", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 100 )
	TriggerCondition( 1, HasItem, 5332, 1 )
	TriggerAction( 1, TakeItem, 2383, 100 )
	TriggerAction( 1, TakeItem, 5332, 1 )
	TriggerAction( 1, GiveItem, 5333, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 19, "������������� ��������� �����: �� ��� ������ ������ 100 �������� ����������!" )
	Text( 19, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 250 )
	TriggerCondition( 1, HasItem, 5333, 1 )
	TriggerAction( 1, TakeItem, 2383, 250 )
	TriggerAction( 1, TakeItem, 5333, 1 )
	TriggerAction( 1, GiveItem, 5334, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 20, "������������� ��������� �����: �� ��� ������ ������ 250 �������� ����������!" )
	Text( 20, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 400 )
	TriggerCondition( 1, HasItem, 5334, 1 )
	TriggerAction( 1, TakeItem, 2383, 400 )
	TriggerAction( 1, TakeItem, 5334, 1 )
	TriggerAction( 1, GiveItem, 5335, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 21, "������������� ��������� �����: �� ��� ������ ������ 400 �������� ����������!" )
	Text( 21, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 650 )
	TriggerCondition( 1, HasItem, 5335, 1 )
	TriggerAction( 1, TakeItem, 2383, 650 )
	TriggerAction( 1, TakeItem, 5335, 1 )
	TriggerAction( 1, GiveItem, 5336, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 22, "������������� ��������� �����: �� ��� ������ ������ 650 �������� ����������!" )
	Text( 22, "��!", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 55 )
	TriggerCondition( 1, HasItem, 5336, 1 )
	TriggerAction( 1, TakeItem, 2865, 55 )
	TriggerAction( 1, TakeItem, 5336, 1 )
	TriggerAction( 1, GiveItem, 5337, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 23, "������������� ��������� �����: �� ��� ������ ������ 55 ������ �������!" )
	Text( 23, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 80 )
        TriggerCondition( 1, HasItem, 5337, 1)
	TriggerAction( 1, TakeItem, 2865, 80 )
	TriggerAction( 1, TakeItem, 5337, 1 )
	TriggerAction( 1, GiveItem, 5338, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 24, "������������� ��������� �����: �� ��� ������ ������ 55 ������ �������!" )
	Text( 24, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 110 )
	TriggerCondition( 1, HasItem, 5338, 1)
	TriggerAction( 1, TakeItem, 2865, 110 )
	TriggerAction( 1, TakeItem, 5338, 1 )
	TriggerAction( 1, GiveItem, 5339, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 25, "������������� ��������� �����: �� ��� ������ ������ 55 ������ �������!" )
	Text( 25, "��!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 155 )
	TriggerCondition( 1, HasItem, 5339, 1)
	TriggerAction( 1, TakeItem, 2865, 155 )
	TriggerAction( 1, TakeItem, 5339, 1 )
	TriggerAction( 1, GiveItem, 5340, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 26, "������������� ��������� �����: �� ��� ������ ������ 155 ������ �������!" )
	Text( 26, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)

	Text( 27, "Sacred War Administrator: Please Check if your inventory has enough space or you may not have all the items you needed I cannot exchange with you!")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 2865, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 28, "Sacred War Administrator: 20 Blood Covenant can be exchanged into 1 Token of Blood Alliance!" )
	Text( 28, "Confirm to exchange", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 29, "Sacred War Adminisrator: 15 honor points can be exchanged into one Token of Life & Death. Token of Life & Death will only disapear if you die inside Sacred War!")
	Text( 29, "Confirm to exchange", GetChaName45_guildwar, 1)


end

function ync_talk()
	Talk( 1, "�������� ����: ��� �� �� ���� ��������? ���� �� ������, � ���� �����.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1403 )
	TriggerCondition( 1, HasRecord, 1402 )
	TriggerCondition( 1, NoRecord, 1403 )
	TriggerCondition( 1, NoRecord, 1404 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�������� �� ������ ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1405 )
	Talk( 2, "������...������ ��� ������ �������? �� ������, ������� ������� �� ������? � ����� �������� �������� ���� �...")
	Text( 2, "11",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "12",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "13",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1407 )
	Text( 2, "��� �� ����� ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "� ������ ���������!")

	--����� ����������
	AddNpcMission ( 6072 )
	--��������� ��������� �����
	AddNpcMission ( 6073 )
	--������� ��������� �����
	AddNpcMission ( 6074 )
	--������� ��������� �����
	AddNpcMission ( 6075 )
	--������� ��������� �����
	AddNpcMission ( 6076 )
	--�������� � ��������
	AddNpcMission ( 6077 )


end

--������ �����
function ay_talk01 ()
	Talk( 1, "������ �����: ����� �������� ������ �������� ���������� ����, �� �������� ����� ��� � �� ��������. ��� ��������? �� ������ ��������� ���?")
	AddNpcMission	(6250)
	AddNpcMission	(6254)
	AddNpcMission	(6255)
	AddNpcMission	(6266)
	AddNpcMission	(6267)
	AddNpcMission	(6270)
	AddNpcMission	(6271)
	AddNpcMission	(6275)
	AddNpcMission	(6276)
	AddNpcMission	(6279)
	
end

--�������� ������
function ay_talk02 ()
	Talk( 1, "�����������! �� �������� ������� � ������� �������.")
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1324)
	TriggerCondition(1, HasItem, 5842, 1)
	TriggerCondition(1, HasItem, 5797, 1)
	TriggerCondition(1, HasItem, 5798, 1)
	TriggerCondition(1, HasItem, 5799, 1)
	TriggerCondition(1, HasItem, 5800, 1)
	TriggerCondition(1, HasItem, 5801, 1)
	TriggerCondition(1, HasLeaveBagGrid, 2)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5842, 1)
	TriggerAction(1, TakeItem, 5797, 1)
	TriggerAction(1, TakeItem, 5798, 1)
	TriggerAction(1, TakeItem, 5799, 1)
	TriggerAction(1, TakeItem, 5800, 1)
	TriggerAction(1, TakeItem, 5801, 1)
	TriggerAction(1, GiveItem, 5825, 1, 26) 
	TriggerAction(1, GiveItem, 5827, 1, 26)
	TriggerFailure(1, JumpPage, 2)
	Text( 1, "����� ��������� ����� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "������ ���, ��� ������ ���� ��������� ����� ������ �����! �����, ��� ����� �������������� ��������� � ���������� 2 ������ ����� ���, ��� ������ �����.")
	Text( 2, "������� ",CloseTalk)
	AddNpcMission (6280)
end

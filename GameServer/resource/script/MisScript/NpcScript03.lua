-------------------------------------------------------------------
--									--
--									--
--NPCScript03.lua Created by sky74					--
--									--
--									--
--------------------------------------------------------------------------
print( "嚑｀悃獱 NPCScript03.lua")

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


----------------------------------------------------------
--							--
--							--
--		白银城[交易员·郝洛甫]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk10 ()
	
	
	Talk( 1, "阻痤痤: 橡桠弪! � 铒屦囹铕 镱痱�. 族� 祛泱 镱祛鼽?  ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, TradeBerthList, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃  ",JumpPage, 3)
	
	Talk( 2, "阻痤痤: � 忄� 礤� 龛赅觇� 觐疣犭彘 � 镱痱� 鲤沐眚�. � 礤 祛泱 蝾疸钼囹�! ")
	
	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�.  ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)
	

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<交易员·郝洛甫



----------------------------------------------------------
--							--
--							--
--		雷霆堡[交易员·桑吉]			--
--							--
--		103877,127848				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk27 ()
	
	
	Talk( 1, "燕礓驵�: 橡桠弪! � 铗忮鬣� 蝮� 玎 蝾疸钼膻! ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, TradeBerthList, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃 ",JumpPage, 3)
	
	Talk( 2, "燕礓驵�: � 忄� 礤� 觐疣犭� � 镱痱� 灭铎钽疣溧! ")	
	
	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�. ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")
	
	
	
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
--		沙岚城[船工·弗兰克]			--
--							--
--		90391,366735				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk60 ()
	
	Talk( 1, "责囗觌桧: 哳蜮鬻帼 玎 镱耱痤殛� 觐疣犭� � 铎 泐痤溴! ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "念耱桡眢蝾 爨犟桁嚯铄 觐腓麇耱忸 觐疣犭彘. 湾朦�� 犷朦 镱耱痤栩� 觐疣犭�. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "项耱痤栩� 觐疣犭� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, BoatLevelBerthList, 3 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "与篦螯 觐疣犭� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "责囗觌桧: 亦� 赅觐� 觐疣犭� 狍溴� 耱铕栩�? ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 3 )
	Text( 2, "项耱痤栩� 皿镲� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 3 )
	Text( 2, "项耱痤栩� 洛蝠铍钼 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 3 )
	Text( 2, "项耱痤栩� 宣狍-戾� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 3 )
	Text( 2, "项耱痤栩� 族疱镟躞 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerAction( 1, CreateBoat, 14, 3 )
	Text( 2, "项耱痤栩� 项蝾� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerAction( 1, CreateBoat, 15, 3 )
	Text( 2, "项耱痤栩� 令汨睨 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "责囗觌桧: 昨钺� 箅篦螯 耋漤� 恹 漕腈睇 镱耱噔栩� 邈� � � 汔忄睃. 署铎� 蝾泐 � 忄� 漕腈眍 猁螯 礤钺躅滂祛� 觐腓麇耱忸 铒� 觐疣犭�. 物 祛骓� 玎疣犷蜞螯 筢桠�� 祛瘃觇� 祛眈蝠钼. ")

	AddNpcMission	(1116)
	AddNpcMission	(158)
	AddNpcMission	(159)
	AddNpcMission	(160)
	
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<船厂工人·弗兰克

------------------------------------------------------------
-- 白银城-----海事所助理·罗拉娜
------------------------------------------------------------

function r_talk150()

	Talk( 1, "离屙�: 橡桠弪! � 填瘃觐� 耦忮蝽桕. 族� 祛泱 镱祛鼽? ")

	AddNpcMission 	(437)
	AddNpcMission 	(439)
	AddNpcMission 	(441)


end

------------------------------------------------------------
-- 白银城-----船工·斯巴克
------------------------------------------------------------

------------------------------------------------------------
-- 白银城-----海港指挥·雪莉
------------------------------------------------------------

function r_talk152()

	Talk( 1, "罔痣�: 橡桠弪! � 铒屦囹铕 綦铗�. 昨� 驽豚弪�? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 1 )
	--TriggerAction( 1, RemoveYS )
	TriggerAction( 1, LuanchBerthList, 1, 2260,2829, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, RepairBerthList, 1 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, SupplyBerthList, 1 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 1 )
	TriggerAction( 1, SalvageBerthList, 1 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")

	AddNpcMission ( 289 )
	AddNpcMission ( 290 )


end

------------------------------------------------------------
-- 沙岚城-----海港指挥·马克
------------------------------------------------------------

function r_talk153()

	Talk( 1, "锑痍: 橡桠弪! � 铒屦囹铕 綦铗�. 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 832, 3698, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")



end

------------------------------------------------------------
--冰狼堡-----船工·乔治
------------------------------------------------------------
function r_talk155 ()
		
	Talk( 1, "逆铕滏: 橡桠弪! � 铗忮鬣� 玟羼� 玎 镱耱痤殛� 觐疣犭彘. 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "念耱桡眢蝾 爨犟桁嚯铄 觐腓麇耱忸 觐疣犭彘. 湾朦�� 犷朦 镱耱痤栩� 觐疣犭�. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "项耱痤栩� 觐疣犭� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, BoatLevelBerthList, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "与篦螯 觐疣犭� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "逆铕滏: 枢觐� 觐疣犭� 驽豚弪� 镱耱痤栩�? ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 4 )
	Text( 2, "项耱痤栩� 茵囗耧铕蝈� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 4 )
	Text( 2, "项耱痤栩� 洛蝠铍钼 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 4 )
	Text( 2, "项耱痤栩� 隋蝮黧� 瘥狍 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 4 )
	Text( 2, "项耱痤栩� 族疱镟躞 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerAction( 1, CreateBoat, 16, 4 )
	Text( 2, "项耱痤栩� 勿咫 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "逆铕滏: 昨钺� 箅篦螯 耋漤� 恹 漕腈睇 镱耱噔栩� 邈� � � 汔忄睃. 署铎� 蝾泐 � 忄� 漕腈眍 猁螯 礤钺躅滂祛� 觐腓麇耱忸 铒� 觐疣犭�. 物 祛骓� 玎疣犷蜞螯 筢桠�� 祛瘃觇� 祛眈蝠钼. ")
		
end 

------------------------------------------------------------
-- 冰狼堡-----海港指挥·席林
------------------------------------------------------------

function r_talk154()

	Talk( 1, "谚腓铐: 橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 4 )
	TriggerAction( 1, LuanchBerthList, 4, 1196,673, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, RepairBerthList, 4 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, SupplyBerthList, 4 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 4 )
	TriggerAction( 1, SalvageBerthList, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")

	AddNpcMission ( 294 )
	AddNpcMission ( 295 )

end


------------------------------------------------------------
-- 海风岛-----海港指挥·路凡
------------------------------------------------------------

function r_talk178()

	Talk( 1, "塔羿�: 橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 5 )
	TriggerAction( 1, LuanchBerthList, 5, 3240, 3314, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, RepairBerthList, 5 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, SupplyBerthList, 5 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 5 )
	TriggerAction( 1, SalvageBerthList, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")
	
end

------------------------------------------------------------
-- 碎冰岛-----海港指挥·诺尔罗德
------------------------------------------------------------

function r_talk179()

	Talk( 1, "皖�: 橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 6 )
	TriggerAction( 1, LuanchBerthList, 6, 2301, 1144, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, RepairBerthList, 6 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, SupplyBerthList, 6 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 6 )
	TriggerAction( 1, SalvageBerthList, 6 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")

end

------------------------------------------------------------
-- 雪贼岛-----海港指挥·鲁兹鲁伊
------------------------------------------------------------

function r_talk180()

	Talk( 1, "塔麒: 橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 7 )
	TriggerAction( 1, LuanchBerthList, 7, 3628, 770, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, RepairBerthList, 7 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, SupplyBerthList, 7 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 7 )
	TriggerAction( 1, SalvageBerthList, 7 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")

end

------------------------------------------------------------
-- 萨拉补给站-----海港指挥·温亚塔
------------------------------------------------------------

function r_talk181()

	Talk( 1, "予蝽�: 橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")


	AddNpcMission	(763)
	AddNpcMission(	1742	)
	AddNpcMission (	1938	)
	AddNpcMission (	1953	)
----------------吉尼斯---海港指挥·温亚塔--03
	AddNpcMission	(5511)
	AddNpcMission	(5512)
	

end

------------------------------------------------------------
-- 阿尔补给站-----海港指挥·达耶达
------------------------------------------------------------

function r_talk182()

	Talk( 1, "泥痼赅: 橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")

	AddNpcMission	(379)
	AddNpcMission	(380)
----------------吉尼斯---海港指挥·达耶达--03
	AddNpcMission (5533 )
	AddNpcMission (5534 )
end

------------------------------------------------------------
-- 哈尔补给站-----海港指挥·瓦雷米
------------------------------------------------------------

function r_talk183()

	Talk( 1, "予蜿铎�: 橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "项塍麒螯 捏 翦� ", JumpPage, 6 ) 
	
	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 50 )
	TriggerAction( 1, TakeItem, 3116, 50 )
	TriggerAction( 1, GiveItem, 3337, 1, 4 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "予蜿铎�: 昨钺� 镱塍麒螯 捏 翦� 礤钺躅滂祛 50 蓦栝耜桴 麴箨蝾�. ")
	Text( 6, "� 戾�� 羼螯 蓦栝耜桢 麴箨螓 ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 7, "予蜿铎�: � 忄� 礤� 怦邈� 礤钺躅滂祛泐! ")


	AddNpcMission(	1740	)
	AddNpcMission (	1936	)
	AddNpcMission (	1951	)
	AddNpcMission (	381	)
	AddNpcMission (	382	)
----------------吉尼斯---海港指挥·瓦雷米--03
	AddNpcMission (5531 )
	AddNpcMission (5532 )
	
end

------------------------------------------------------------
-- 弗里敦补给站-----海港指挥·法第尔
------------------------------------------------------------

function r_talk184()

	Talk( 1, "脏痄咫�: 橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")


	AddNpcMission(	1739	)
	AddNpcMission (	1935	)
	AddNpcMission (	1950	)
	AddNpcMission (	383	)
	AddNpcMission (	384	)
	AddNpcMission (	385	)

	----------------吉尼斯---海港指挥·法第尔--03
	AddNpcMission (5529 )
	AddNpcMission (5530 )



end

------------------------------------------------------------
-- 海风岛-----交易员·布尔兹
------------------------------------------------------------

function r_talk185()

	Talk( 1, "馏疸羼: 橡桠弪! � 戾耱睇� 牦镥�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 5 )
	TriggerAction( 1, TradeBerthList, 5 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃 ",JumpPage, 3)	

	Talk( 2, "馏疸羼: 橡铖蜩蝈, 眍 � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")	

	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�. ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")

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
-- 碎冰岛-----交易员·赛瑟尼
------------------------------------------------------------

function r_talk186()

	Talk( 1, "燕鲥龛�: 橡桠弪! � 戾耱睇� 牦镥�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 6 )
	TriggerAction( 1, TradeBerthList, 6 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃 ",JumpPage, 3)

	Talk( 2, "燕鲥龛�: 橡铖蜩蝈, 眍 � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")
	
	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�. ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")

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
-- 雪贼岛-----交易员·肥鲸德拉德
------------------------------------------------------------

function r_talk187()

	Talk( 1, "蔫豚滂: 橡桠弪! � 戾耱睇� 牦镥�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 7 )
	TriggerAction( 1, TradeBerthList, 7 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃 ",JumpPage, 3)

	Talk( 2, "蔫豚滂: 橡铖蜩蝈, 眍 � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")	

	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�. ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")


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
-- 冰雪岛-----海港指挥·波尔
------------------------------------------------------------

function r_talk188()

	Talk( 1, "相箅�: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 8 )
	TriggerAction( 1, LuanchBerthList, 8, 2351, 767, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, RepairBerthList, 8 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, SupplyBerthList, 8 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 8 )
	TriggerAction( 1, SalvageBerthList, 8 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")
	
end

------------------------------------------------------------
-- 鸣沙岛-----海港指挥·托玛
------------------------------------------------------------

function r_talk189()

	Talk( 1, "翌爨�: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 9 )
	TriggerAction( 1, LuanchBerthList, 9, 1769, 3788, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, RepairBerthList, 9 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, SupplyBerthList, 9 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 9 )
	TriggerAction( 1, SalvageBerthList, 9 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")
	
end

------------------------------------------------------------
-- 真爱岛-----海港指挥·夏德利
------------------------------------------------------------
function r_talk190()

	Talk( 1, "蜀噤: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 10 )
	TriggerAction( 1, LuanchBerthList, 10, 2527, 2358, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, RepairBerthList, 10 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, SupplyBerthList, 10 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 10 )
	TriggerAction( 1, SalvageBerthList, 10 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")
end

------------------------------------------------------------
-- 苏港补给站-----海港指挥·鲁西
------------------------------------------------------------
function r_talk191()

	Talk( 1, "梭桎骅: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")
	 -------------吉尼斯--苏港补给站,海港指挥·鲁西(464,468)--03
	AddNpcMission (5527 )
	AddNpcMission (5528 )


end

------------------------------------------------------------
-- 埃弗里补给站-----海港指挥·布纽
------------------------------------------------------------
function r_talk192()

	Talk( 1, "馏龛: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")

	AddNpcMission ( 304 )
	AddNpcMission ( 305 )
	AddNpcMission(	1743	)
	AddNpcMission (	1939	)
	AddNpcMission (	1954	)
	AddNpcMission (	386	)
	AddNpcMission (	387	)

	----------------吉尼斯---海港指挥·布纽--03
	AddNpcMission (5525 )
	AddNpcMission (5526 )
end


------------------------------------------------------------
-- 拉古补给站-----海港指挥·多廉达
------------------------------------------------------------
function r_talk193()

	Talk( 1, "念祛痼: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")

	AddNpcMission(	1441	)
	AddNpcMission (	1931	)

	----------------吉尼斯---海港指挥·多廉达--03
	AddNpcMission (5523 )
	AddNpcMission (5524 )


end

------------------------------------------------------------
-- 其索单补给站-----海港指挥·特巴齐尔
------------------------------------------------------------
function r_talk194()

	Talk( 1, "义徉: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")

end

------------------------------------------------------------
-- 穆穆尔补给站-----海港指挥·巴奥
------------------------------------------------------------
function r_talk195()

	Talk( 1, "拎痤�: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")

	AddNpcMission ( 291 )
	AddNpcMission ( 292 )
	AddNpcMission ( 293 )
	AddNpcMission(	1443	)
	AddNpcMission (	1932	)

	


end

------------------------------------------------------------
-- 小肯补给站-----海港指挥·迪迪萨
------------------------------------------------------------
function r_talk196()

	Talk( 1, "蔫溧�: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")
	----------------吉尼斯---海港指挥·迪迪萨--03
	AddNpcMission (5515 )
	AddNpcMission (5516 )
end

------------------------------------------------------------
-- 肖沸补给站-----海港指挥·丹尼斯
------------------------------------------------------------
function r_talk197()

	Talk( 1, "泥眄桉: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")

	----------------1.7
	AddNpcMission (5133 )
	AddNpcMission (5134 )
	AddNpcMission (5135 )

	----------------吉尼斯---海港指挥·丹尼斯--03
	AddNpcMission (5513 )
	AddNpcMission (5514 )
end

------------------------------------------------------------
-- 埃皮杜补给站-----海港指挥·索尔
------------------------------------------------------------
function r_talk198()

	Talk( 1, "杨�: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")
	----------------吉尼斯---海港指挥·索尔--03
	AddNpcMission (5517 )
	AddNpcMission (5518 )
end

------------------------------------------------------------
-- 冰雪岛-----交易员·西尔班
------------------------------------------------------------

function r_talk199()

	Talk( 1, "谚狍�: 橡桠弪! � 戾耱睇� 牦镥�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8 )
	TriggerAction( 1, TradeBerthList, 8 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃 ",JumpPage, 3)

	Talk( 2, "谚狍�: 橡铖蜩蝈, 眍 � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")	

	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�. ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")

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
-- 鸣沙岛-----交易员·米索亚斯
------------------------------------------------------------

function r_talk200()

	Talk( 1, "惕觋�: 橡桠弪! � 戾耱睇� 牦镥�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9 )
	TriggerAction( 1, TradeBerthList, 9 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃 ",JumpPage, 3)

	Talk( 2, "惕觋�: 橡铖蜩蝈, 眍 � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")	
	
	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�. ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")

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
-- 真爱岛-----交易员·尤卡
------------------------------------------------------------

function r_talk201()

	Talk( 1, "揸�: 橡桠弪! � 戾耱睇� 牦镥�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 10 )
	TriggerAction( 1, TradeBerthList, 10 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃 ",JumpPage, 3)
	
	Talk( 2, "揸�: 橡铖蜩蝈, 眍 � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")	

	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�. ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")

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
-- 好运岛-----海港指挥·卢克
------------------------------------------------------------
function r_talk202()

	Talk( 1, "阵犟: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 11 )
	TriggerAction( 1, LuanchBerthList, 11, 1642, 2005, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, RepairBerthList, 11 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, SupplyBerthList, 11 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 11 )
	TriggerAction( 1, SalvageBerthList, 11 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")
end

------------------------------------------------------------
-- 萨迪勒补给站-----海港指挥·乔尔乔尼
------------------------------------------------------------
function r_talk203()

	Talk( 1, "灭邈铕�: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")

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
	----------------吉尼斯---海港指挥·乔尔乔尼--03
	AddNpcMission (5521 )
	AddNpcMission (5522 )

	AddNpcMission	(6260)
	AddNpcMission	(6261)

end

------------------------------------------------------------
-- 卡马赛补给站-----海港指挥·奥登
------------------------------------------------------------
function r_talk204()

	Talk( 1, "武�: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")
	----------------吉尼斯---海港指挥·奥登--03
	AddNpcMission (5519 )
	AddNpcMission (5520 )
end

------------------------------------------------------------
-- 思思索补给站-----海港指挥·拉米修
------------------------------------------------------------
function r_talk205()

	Talk( 1, "朽祗�: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "橡铖蜩蝈, 眍 疱祛眚 耱铊� 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 玎镳噔赅 耱铊� 200 珙腩蜞!")
end

------------------------------------------------------------
-- 好运岛-----交易员·帕德琉斯
------------------------------------------------------------

function r_talk206()

	Talk( 1, "令箬: 橡桠弪! � 戾耱睇� 牦镥�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 11 )
	TriggerAction( 1, TradeBerthList, 11 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃 ",JumpPage, 3)

	Talk( 2, "令箬: 橡铖蜩蝈, 眍 � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")	

	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�. ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")

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
-- 雷霆堡军港-----海港指挥·查可夫中尉
------------------------------------------------------------
function r_talk207()

	Talk( 1, "蓑. 育轫: 橡桠弪! � 戾耱睇� 铒屦囹铕 镱痱�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 2 )
	TriggerAction( 1, LuanchBerthList, 2, 1064, 1324, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, RepairBerthList, 2 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, SupplyBerthList, 2 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 2 )
	TriggerAction( 1, SalvageBerthList, 2 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")
end

------------------------------------------------------------
-- 沙岚新城-----交易员·西多夫
------------------------------------------------------------

function r_talk208()

	Talk( 1, "谚漕�: 橡桠弪! � 戾耱睇� 牦镥�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃 ",JumpPage, 3)

	Talk( 2, "谚漕�: 镳铖蜩蝈 眍 � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")

	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�. ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")

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
-- 冰狼堡-----交易员·佩鲁诺
------------------------------------------------------------

function r_talk209()

	Talk( 1, "相蹴桊�: 橡桠弪! � 戾耱睇� 牦镥�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, TradeBerthList, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "隅磬螯 � 镱恹龛� 箴钼�� 蝾疸钼铋 腓鲥礴梃 ",JumpPage, 3)
	
	Talk( 2, "相蹴桊�: 橡铖蜩蝈 眍 � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")	

	Talk( 3, "橡桠弪! 篷腓 恹 躅蜩蝈 蝾疸钼囹�, 蝾 恹 眢驿噱蝈顸 � 蝾疸钼铋 腓鲥礴梃. 隅磬螯 � 蝾疸钼铋 腓鲥礴梃 祛骓� � 牦秭� 剜轵囗�. ")
	Text( 3, "隅磬螯 � 磬腩沐 ",JumpPage, 7)
	Text( 3, "髓鲥礴�� 龛珀钽� 箴钼�� ",JumpPage, 4)
	Text( 3, "髓鲥礴�� 耱囗溧痱眍泐 箴钼�� ",JumpPage, 5)
	Text( 3, "髓鲥礴�� 恹聒邈� 箴钼�� ",JumpPage, 6)

	Talk( 4, "髓鲥礴棹 龛珀钽� 箴钼�� 镱塍麒螯 礤耠铈眍. 碾� 钽� 忄� 磬漕 猁螯 礤 戾礤� 20 箴钼�� � 磬轵� 牦秭� 剜轵囗�. ")
	Talk( 5, "昨钺� 镱塍麒螯 腓鲥礴棹 耱囗溧痱眍泐 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 40 箴钼�� � 桁弪� 礤 犷朦 20% 磬腩汔 ")
	Talk( 6, "昨钺� 镱塍麒螯 腓鲥礴棹 恹聒邈� 箴钼�� 恹 漕腈睇 猁螯 礤 戾礤� 60 箴钼�� � 桁弪� 礤 犷朦 10% 磬腩汔 ")
	Talk( 7, "义牦� 箴钼屙� 磬腩汔 恹 祛驽蝈 筲桎弪� 磬 忄� 蝾疸钼铋 腓鲥礴梃. 雾 怆��弪 磬 耱铊祛耱� 镱牦镪� � 镳钿噫� 蝾忄疣 蝾疸钼鲟�. ")

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
-- 雷霆堡军港-----船工·阿憨
------------------------------------------------------------
function r_talk210 ()
		
	Talk( 1, "莉蜞�: 橡桠蝈! � 玎忮潴� 玟羼� 镱耱痤殛铋 觐疣犭彘! 涛泱 � 忄� 麇� 蝾 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "念耱桡眢蝾 爨犟桁嚯铄 觐腓麇耱忸 觐疣犭彘. 湾朦�� 犷朦 镱耱痤栩� 觐疣犭�. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "项耱痤栩� 觐疣犭� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, BoatLevelBerthList, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "与篦螯 觐疣犭� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Attan: What type of ships do you wish to have? I have a few variety for you to chose from. But you must select one of your level if not you will not be able to navigate it. ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 2 )
	Text( 2, "项耱痤栩� 隋蝮黧� 瘥狍 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 2 )
	Text( 2, "项耱痤栩� 族疱镟躞 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 2 )
	Text( 2, "项耱痤栩� 宣狍-戾� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 11 )
	TriggerAction( 1, CreateBoat, 11, 2 )
	Text( 2, "项耱痤栩� 脏眚铎 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 12 )
	TriggerAction( 1, CreateBoat, 12, 2 )
	Text( 2, "项耱痤栩� 彦疱狃�眄 溴朦翳� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerAction( 1, CreateBoat, 13, 2 )
	Text( 2, "项耱痤栩� 令朦� 徨塍� 嚓箅� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "莉蜞�: 昨钺� 箅篦螯 耋漤� 恹 漕腈睇 镱耱噔栩� 邈� � � 汔忄睃. 署铎� 蝾泐 � 忄� 漕腈眍 猁螯 礤钺躅滂祛� 觐腓麇耱忸 铒� 觐疣犭�. 物 祛骓� 玎疣犷蜞螯 筢桠�� 祛瘃觇� 祛眈蝠钼. ")
end 

------------------------------------------------------------
-- 白银城-----海盗情报员·戈瓦撒
------------------------------------------------------------

function r_talk211()

	Talk( 1, "缅忄�: 橡桠弪! 添� 桤忮耱睇 怦� 镨疣蝰觇� 铕汔龛玎鲨� � 扈疱! 疹蜩蝈 镳桉祛蝠弪� 戾耱鬻觐 潆� 皴��? ")
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 1 )
	TriggerAction( 1, ListAllGuild, 1 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 1 )
	TriggerFailure( 3, JumpPage, 3 )
	Text( 1, "项耢铗疱螯 镨疣蝰觇� 汨朦滂� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "橡铢嚅蝈 ", CloseTalk)
	
	Talk( 2, "缅忄�: 蓍, 溧 恹 桤 綦铗�! � 礤 狍潴 泐忸痂螯 龛 � 赍� 桤 綦铗�! ")

	Talk( 3, "缅忄�: 疹蜩蝈 箸磬螯 牝� 襦禧� 桤忮耱睇� 镨疣�? � 钽� 礤 耜噫�. ")

		
end

------------------------------------------------------------
-- 白银城-----海军情报员·达隆丹
------------------------------------------------------------

function r_talk212()

	Talk( 1, "泥腩磴溧�: 镳桠弪! � 铖忮漕扈蝈朦 綦铗�. � 戾�� 羼螯 镱腠 耧桉觐 怦艴 綦铗耜桴 汨朦滂�! ")
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
	Text( 1, "项耢铗疱螯 耧桉铌 汨朦滂� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "念 疋桎囗�� ", CloseTalk)
	
	Talk( 2, "泥腩磴溧�: 蔓 礤 祛驽蝈 镱耢铗疱螯 耧桉觇 汨朦滂� 礤 桁�� 镳� 皴徨 疱觐戾礓囹咫钽� 镨顸爨! ")

	Talk( 3, "泥腩磴溧�: 蔓 礤 镳桧噤脲骅蝈 � 綦铗�. � 礤 狍潴 溧忄螯 忄� 龛赅牦� 桧纛痨圉棹! ")

		
end

------------------------------------------------------------
-- 白银城-----海军募兵小姐·蕾绮尔
------------------------------------------------------------

function r_talk213()

	Talk( 1, "旋轺咫: 橡桠弪! 噪铗 棂弪 忄�! 篷腓 恹 聍栩噱蝈 黩� 眢骓� 綦铗�, 蝾 忸琰扈蝈 疱觐戾礓囹咫铄 镨顸祛 � 铗礤耔蝈 � 犭桄嚅� 矬黻� 忮疳钼觇! ")
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
	Text( 1, "泥轵� 疱觐戾礓囹咫铄 镨顸祛 ",MultiTrigger, GetMultiTrigger(), 4 )
	Text( 1, "填驽� 镱珂�. 橡铢嚅蝈! ", CloseTalk)

	Talk( 2, "旋轺咫: � 忄� 箧� 羼螯 疱觐戾礓囹咫铄 镨顸祛! ")

	Talk( 3, "旋轺咫: 蔓 礤 镳桉铄滂龛腓顸 � 綦铗�? 橡钼屦� 疋铋 桧忮眚囵� � 筢邃栩羼� 黩� 铐 礤 镱腩�! ")

	Talk( 4, "旋轺咫: 蔓 箧� 耦耱铊蝈 忸 綦铗�! 青麇� 忄� 疱觐戾礓囹咫铄 镨顸祛? ")

	Talk( 5, "旋轺咫: 项躅驽 恹 镫铛铋 麇腩忮�. � 礤 祛泱 忄� 怵篦栩� 疱觐戾礓囹咫铄 镨顸祛! ")

		
end

------------------------------------------------------------
-- 废矿补给站-----打包人·乎勒达
------------------------------------------------------------

function r_talk214()

	Talk( 1, "阵疣溧�: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 牮桉蜞腚� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "阵疣溧�: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")
		
end

------------------------------------------------------------
-- 雷霆堡军港-----打包人·费德索拉
------------------------------------------------------------

function r_talk215()

	Talk( 1, "藻痦囗漕: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 漯邂羼桧� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "藻痦囗漕: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")
		
end

------------------------------------------------------------
-- 白银林区-----打包人·摩根
------------------------------------------------------------

function r_talk216()

	Talk( 1, "填赍�: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 漯邂羼桧� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "填赍�: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")

	AddNpcMission(	1436	)
	AddNpcMission (	1930	)
		
end

------------------------------------------------------------
-- 冰雪岛-----打包人·阿里西斯
------------------------------------------------------------

function r_talk217()

	Talk( 1, "离尻耔�: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8)
	TriggerAction( 1, PackBagList, 8, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 漯邂羼桧� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "离尻耔�: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")
		
end

------------------------------------------------------------
-- 鸣沙岛-----打包人·伊加卡班
------------------------------------------------------------

function r_talk218()

	Talk( 1, "赔沐龛�: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9)
	TriggerAction( 1, PackBagList, 9, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 漯邂羼桧� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "赔沐龛�: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")
		
end

------------------------------------------------------------
-- 沙岚新城-----打包人·安巴瓦而
------------------------------------------------------------

function r_talk219()

	Talk( 1, "漓徨�: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_MINE, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 屦泐痼潴 ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "漓徨�: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")
		
end

------------------------------------------------------------
-- 阿兰比斯补给站-----打包人·阿加恩布赖得
------------------------------------------------------------

function r_talk220()

	Talk( 1, "离觇眈: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_MINE, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 痼潴 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 漯邂羼桧� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "离觇眈: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")

	AddNpcMission(	1581	)
	AddNpcMission (	1933	)

	
end


------------------------------------------------------------
-- 卡尔加德雪原-----打包人·坎贝尔
------------------------------------------------------------

function r_talk243()

	Talk( 1, "枢磬痂: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 漯邂羼桧� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "枢磬痂: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")
		
end

------------------------------------------------------------
-- 德尔维平原-----打包人·索拉斯
------------------------------------------------------------

function r_talk244()

	Talk( 1, "杨��痂�: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	--Text( 1, "翌疸 ", BuyPage )
	
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
	Text( 1, "青沭箸栩� 漯邂羼桧� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "杨��痂�: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")

end



------------------------------------------------------------
-- 帕克荒漠-----打包人·安塞拉
------------------------------------------------------------

function r_talk245()

	Talk( 1, "理耱�: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 漯邂羼桧� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "理耱�: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")
		
end


------------------------------------------------------------
-- 冰极-----打包人·阿加西
------------------------------------------------------------

function r_talk246()

	Talk( 1, "逆囫: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. � 祛泱 玎沭箸栩� 蝾忄� 磬 忄 耋漤� 羼腓 铐� 磬躅滂蝰�  戾耱眍� 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 漯邂羼桧� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "逆囫: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")
	
end

------------------------------------------------------------
-- 迷之港口-----港口指挥◎迷
------------------------------------------------------------
function r_talk247()

	Talk( 1, "惕耱: 橡桠弪! � 滂耧弪麇� 蜞桧耱忮眄 镱痱钼! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1341, 3257, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "昨钺� 镱麒龛螯 耋漤� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 1000 珙腩蜞 ")
	Talk( 5, "昨钺� 玎镳噔栩� 耋漤� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 200 珙腩蜞 ")
	Talk( 6, "� 祛泱 忸耨蜞眍忤螯 腓 耋漤�, 铖蜞怆屙眍� � 蜞桧耱忮眄铎 镱痱�. 羊铊祛耱� 1000 珙腩蜞 ")

end

------------------------------------------------------------
-- 迷之港口-----小花园北部商店海港指挥
------------------------------------------------------------
function r_talk248()

	Talk( 1, "橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 116, 51, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	
	

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	

end

------------------------------------------------------------
-- 迷之港口-----小花园北部中央海港指挥
------------------------------------------------------------
function r_talk249()

	Talk( 1, "橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 235, 123, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	

end


------------------------------------------------------------
-- 迷之港口-----小花园东部海港指挥
------------------------------------------------------------
function r_talk250()

	Talk( 1, "橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 248, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	

end

------------------------------------------------------------
-- 迷之港口-----小花园南部商店海港指挥
------------------------------------------------------------
function r_talk251()

	Talk( 1, "橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 353, 428, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")


end

------------------------------------------------------------
-- 迷之港口-----小花园北部下海海港指挥
------------------------------------------------------------
function r_talk257()

	Talk( 1, "橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,211, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")


end

------------------------------------------------------------
-- 迷之港口-----小花园南部下海海港指挥
------------------------------------------------------------
function r_talk258()

	Talk( 1, "橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,256, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")


end


------------------------------------------------------------
-- 迷之港口-----阴暗沼泽海港指挥
------------------------------------------------------------
function r_talk261()

	Talk( 1, "橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 295, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "昨钺� 镱麒龛螯 耋漤� 铖蜞怆屙眍� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 1000 珙腩蜞 ")
	Talk( 5, "昨钺� 玎镳噔栩� 耋漤� 铖蜞怆屙眍� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 200 珙腩蜞. ")
	Talk( 6, "昨钺� 忸耨蜞眍忤螯 耋漤� 麒耠�羼� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 1000 珙腩蜞! ")

end

------------------------------------------------------------
-- 迷之港口-----废灵之都海港指挥
------------------------------------------------------------
function r_talk262()

	Talk( 1, "橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 299, 321, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "昨钺� 镱麒龛螯 耋漤� 铖蜞怆屙眍� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 1000 珙腩蜞 ")
	Talk( 5, "昨钺� 玎镳噔栩� 耋漤� 铖蜞怆屙眍� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 200 珙腩蜞. ")
	Talk( 6, "昨钺� 忸耨蜞眍忤螯 耋漤� 麒耠�羼� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 1000 珙腩蜞! ")

end

----------------------------------------------------------
--							--
--							--
--		竞技花园[神秘商人]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk259 ()
	
	
	Talk( 1, "亦桧耱忮眄 蝾疸钼弼: 橡桠弪! � 戾�� 羼螯 礤觐蝾瘥� 蝾忄� 潆� 忄�. 疹蜩蝈 忡汶�眢螯? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12 )
	TriggerAction( 1, TradeBerthList, 12 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 ", MultiTrigger, GetMultiTrigger(), 1 )

	
	Talk( 2, "亦桧耱忮眄 蝾疸钼弼: 橡铖蜩蝈, 眍 � 忄� 礤� 觐疣犭� � 铎 镱痱�. 翌疸 礤忸珈铈屙! ")
	
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
-- 小花园-----药草商人
------------------------------------------------------------

function r_talk260()

	Talk( 1, "皱腓蝈朦: 络汶�龛蝈 磬 祛� 囫耦痱桁屙� 脲麇犴 蝠噔! ")
	Text( 1, "翌疸 ", BuyPage )
	Text( 1, "丸麇泐, � 镳铖蝾 钽��潲忄� ",CloseTalk )

	InitTrade()
	Other(	3460	)
	Other(	3461	)

end

------------------------------------------------------------
-- 沙岚新城-----神秘海港指挥
------------------------------------------------------------
function r_talk263()

	Talk( 1, "亦桧耱忮眄 铒屦囹铕: 橡桠弪! � 铒屦囹铕 蜞桧耱忮眄 镱痱钼. � 祛泱 忸耨蜞眍忤螯 忄� 觐疣犭� 羼腓 铐 麒耠栩�� � 蜞桧耱忮眄铎 镱痱�. ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 832, 3698, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 3, "昨钺� 镱麒龛螯 耋漤� 铖蜞怆屙眍� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 1000 珙腩蜞 ")
	Talk( 4, "昨钺� 玎镳噔栩� 耋漤� 铖蜞怆屙眍� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 200 珙腩蜞. ")
	Talk( 5, "昨钺� 忸耨蜞眍忤螯 耋漤� 麒耠�羼� � 蜞桧耱忮眄铎 镱痱� 礤钺躅滂祛 1000 珙腩蜞! ")

end

----------------------------------------------------
--擂主公会特殊贸易品
----------------------------------------------------
--军火商


function r_talk264()
	Talk( 1, "翌疸钼弼 铕箧桢�: 橡桠弪! � 蝾疸钼弼 鲥眄 铕箧桢�. 武磬觐 � 漕忮��� 腓 麟屙囔 汨朦滂� 玎龛爨彘 镥疴铄 戾耱�. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 1 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "翌疸钼弼 铕箧桢�: � 漕忮��� 腓 麟屙囔 汨朦滂� 玎龛爨彘 镥忸� 戾耱�! 署铎� 蝾泐 � 忄� 漕腈屙 猁螯 觐疣犭� � 镱痱� 剜轵囗�. ")

	InitGoods(3)
	SaleGoodsData(	0	,	3914	,	150	,	990	,	220	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end

--精密仪器供应商	

--function r_talk265()
--	Talk( 1, "翌疸钼弼 疱潢桁� 爨蝈痂嚯囔�: 橡桠弪! � 蝾疸簋 疱潢桁� 爨蝈痂嚯囔�. 武磬觐 � 漕忮��� 腓 麟屙囔 汨朦滂� 玎龛爨彘 怛铕铄 戾耱�! ")
--	InitTrigger()
--	TriggerCondition( 1, HasBoatInBerth, 3 )
--	TriggerCondition( 1, HasGuildLevel, 2 )
--	TriggerAction( 1, TradeBerthList, 3 )
--	TriggerFailure( 1, JumpPage, 2 )
--	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 

--	Talk( 2, "翌疸钼弼 疱潢桁� 爨蝈痂嚯囔�: � 漕忮��� 腓 麟屙囔 汨朦滂� 玎龛爨彘 怛铕铄 戾耱�! 署铎� 蝾泐 � 忄� 漕腈屙 猁螯 觐疣犭� � 镱痱� 剜轵囗�. ")


--	InitGoods(3)
--	SaleGoodsData(	0	,	3912	,	200	,	855	,	190	)
	


--	InitTrigger()
--	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
--	SetNpcTrigger( GetTrigger( 1 ) )
--	SetNpcActive()



--end


--稀有金属供应商

function r_talk266()
	Talk( 1, "翌疸钼弼 疱潢桁� 戾蜞腚囔�: 橡桠弪! � 镳钿帼 疱潢桢 戾蜞腚�! 武磬觐 � 漕忮��� 腓 麟屙囔 汨朦滂� 玎龛爨彘 蝠弪 戾耱�! ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "翌疸 沭箸铎  ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "翌疸钼弼 疱潢桁� 戾蜞腚囔�: � 漕忮��� 腓 麟屙囔 汨朦滂� 玎龛爨彘 蝠弪 戾耱�! 署铎� 蝾泐 � 忄� 漕腈屙 猁螯 觐疣犭� � 镱痱� 剜轵囗�. ")


	InitGoods(3)
	SaleGoodsData(	0	,	3913	,	250	,	765	,	170	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end



------------------------------------------------------------
-- 沙岚新城-----打包人·阿里七七
------------------------------------------------------------

function m_talk001()

	Talk( 1, "离� 庶�: 橡桠弪! � 戾耱睇� 麴圊蝾怡桕. 填泱 � 麇� 蝾 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "青沭箸栩� 漯邂羼桧� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "离� 庶�: � 忄� 礤� 觐疣犭� � 戾耱眍� 镱痱�! ")
		
end


------------------------------------------------------------
-- 夏岛北港-----海港指挥
------------------------------------------------------------
function b_talk19()

	Talk( 1, "橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 14 )
	TriggerAction( 1, LuanchBerthList, 14, 3662, 2645, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, RepairBerthList, 14 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, SupplyBerthList, 14 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 14 )
	TriggerAction( 1, SalvageBerthList, 14 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈, 眍 黩钺� 镱麒龛螯 耋漤� 耱��� � 镱痱� 铖蝠钼� 隋蜞 礤钺躅滂祛 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 黩钺� 玎镳噔栩� 耋漤� 耱��� � 镱痱� 铖蝠钼� 隋蜞 礤钺躅滂祛 200 珙腩蜞! ")
	Talk( 6, "橡铖蜩蝈, 眍 黩钺� 忸耨蜞眍忤螯 耋漤� 耱��� � 镱痱� 铖蝠钼� 隋蜞 礤钺躅滂祛 1000 珙腩蜞! ")

end


------------------------------------------------------------
-- 夏岛南港-----海港指挥
------------------------------------------------------------
function b_talk20()

	Talk( 1, "橡桠弪! � 戾耱睇� 铒屦囹铕 綦铗�! 族� � 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 15 )
	TriggerAction( 1, LuanchBerthList, 15, 3324, 3541, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, RepairBerthList, 15 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, SupplyBerthList, 15 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 15 )
	TriggerAction( 1, SalvageBerthList, 15 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈, 眍 黩钺� 镱麒龛螯 耋漤� 耱��� � 镱痱� 铖蝠钼� 隋蜞 礤钺躅滂祛 1000 珙腩蜞! ")
	Talk( 5, "橡铖蜩蝈, 眍 黩钺� 玎镳噔栩� 耋漤� 耱��� � 镱痱� 铖蝠钼� 隋蜞 礤钺躅滂祛 200 珙腩蜞! ")
	Talk( 6, "橡铖蜩蝈, 眍 黩钺� 忸耨蜞眍忤螯 耋漤� 耱��� � 镱痱� 铖蝠钼� 隋蜞 礤钺躅滂祛 1000 珙腩蜞! ")

end


function leo_talk10()	

	Talk( 1, "橡钿噔弼 鞲痦钽� 瘥黻�: 疹 躅 赅� 恹 戾�� 磬�? 腕 箧� 礤 忄骓� 眢 黩� 恹 狍溴蝈 镱牦镟螯 黩�-龛狍潼?")
--	Text( 1, "添� 眢驽� 耧弼栲朦睇� 蝾忄� ", JumpPage, 2 )
	Text( 1, "鼠镨螯.", BuyPage)

	Talk( 2, "橡钿噔弼 麇痦钽� 瘥黻�: 栗 恹 赅觐� 蹊蝠 忄� 眢骓� 镱溧忄螯 襦祛� 塍鼬邋.腕 耢铗痂蝈 黩� � 戾�� 羼螯 ")
	Text( 2, "泥忄轵� 镱耢铗瘙 ", SendExchangeData )

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

function rand()	--黑市随机装备列表
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
-- 圣战-----海港指挥·零零零
------------------------------------------------------------
function star_talk001()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 148 , 154, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零一
------------------------------------------------------------
function star_talk002()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 176, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零二
------------------------------------------------------------
function star_talk003()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 168 , 111, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零三
------------------------------------------------------------
function star_talk004()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 452 , 135, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零四
------------------------------------------------------------
function star_talk005()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 496 , 164, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零五
------------------------------------------------------------
function star_talk006()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零六
------------------------------------------------------------
function star_talk007()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3 , 262 , 181, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·零零七
------------------------------------------------------------
function star_talk008()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 348 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺零
------------------------------------------------------------
function star_talk009()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 110 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end

------------------------------------------------------------
-- 圣战-----海港指挥·幺幺一
------------------------------------------------------------
function star_talk010()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 493, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺二
------------------------------------------------------------
function star_talk011()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 82 , 456, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺三
------------------------------------------------------------
function star_talk012()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 463 , 453, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺四
------------------------------------------------------------
function star_talk013()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 492 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺五
------------------------------------------------------------
function star_talk014()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 506, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺六
------------------------------------------------------------
function star_talk015()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 357 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end
------------------------------------------------------------
-- 圣战-----海港指挥·幺幺七
------------------------------------------------------------
function star_talk016()
	Talk( 1, "物屦囹铕: 橡桠弪! � 铒屦囹铕 镱痱� 砚�眄铋 忸轫�. � 戾�� 羼螯 溧眄 � 怦艴 腩潢圊. 昨� 恹 躅蜩蝈? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 256 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "橡铖蜩蝈, 眍 � 忄� 礤� 腩潢� 镳栾桉囗眍� 玟羼�. ")
end

function r_talk151 ()
		
	Talk( 1, "暑疣徨朦�: 橡桠弪! 软蝈疱耋 塍鼬桢 耋漤�? ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "念耱桡眢蝾 爨犟桁嚯铄 觐腓麇耱忸 觐疣犭彘. 湾朦�� 犷朦 镱耱痤栩� 觐疣犭�. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "项耱痤栩� 觐疣犭� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, BoatLevelBerthList, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "与篦螯 觐疣犭� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "暑疣徨朦�: 赅觐� 觐疣犭� 驽豚弪� 镱耱痤栩�? ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 1 )
	Text( 2, "项耱痤栩� 皿镲� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 1 )
	Text( 2, "项耱痤栩� 茵囗耧铕蝈� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 1 )
	Text( 2, "项耱痤栩� 隋蝮黧� 瘥狍 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 1 )
	Text( 2, "项耱痤栩� 宣狍-戾� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 12, 1 )
	Text( 2, "项耱痤栩� 体蝈铕 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "暑疣徨朦�: 昨钺� 箅篦螯 耋漤� 恹 漕腈睇 镱耱噔栩� 邈� � � 汔忄睃. 署铎� 蝾泐 � 忄� 漕腈眍 猁螯 礤钺躅滂祛� 觐腓麇耱忸 铒� 觐疣犭�. 物 祛骓� 玎疣犷蜞螯 筢桠�� 祛瘃觇� 祛眈蝠钼. ")
end

	
function d_port001()
	Talk( 1, "物屦囹铕 翔疣蝰觐� 狍躜�: 族� 祛泱 镱祛鼽? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 485,1875, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "填� 耋漤� � 蜞桧耱忮眄铎 镱痱�. ",JumpPage,7)

	Talk( 3, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 4, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 5, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 6, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")
	
	Talk( 7, "物屦囹铕 翔疣蝰觐� 狍躜�: 篷腓 恹 镱蝈��腓 桦� 铖蜞忤腓 耋漤� � 礤桤忮耱睇� 珏祀��, 蝾 � 祛泱 忄� 镱祛鼽. ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 485,1875, 177 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "悟镳噔栩� � 矬螯 ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 9 )
	Text( 7, "项麒龛螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 10 )
	Text( 7, "青镳噔栩� 耋漤� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 7, "骂耨蜞眍忤螯 耋漤� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 8, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 9, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 10, "橡铖蜩蝈. � 忄� 礤� 耋漤� � 铎 镱痱�. 篷腓 耋漤� 篁铐箅�, 蝾 忄� 礤钺躅滂祛 邈� 忸耨蜞眍忤螯. ")
	Talk( 11, "橡铖蜩蝈, 眍 恹 祛驽蝈 忸耨蜞眍忤螯 耋漤� 腓 � 蝾� 镱痱�, 沅� 铐� 镳栾桉囗�! ")

end
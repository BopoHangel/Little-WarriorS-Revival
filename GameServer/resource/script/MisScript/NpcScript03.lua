-------------------------------------------------------------------
--									--
--									--
--NPCScript03.lua Created by sky74					--
--									--
--									--
--------------------------------------------------------------------------
print( "‡ Јаг§Є  NPCScript03.lua")

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[Ѕ»ТЧФ±Ў¤єВВеё¦]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk10 ()
	
	
	Talk( 1, "Чироро: Привет! Я оператор порта. Чем могу помочь?  ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, TradeBerthList, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "Узнать о повышении уровня торговой лицензии  ",JumpPage, 3)
	
	Talk( 2, "Чироро: У вас нет никаких кораблей в порту Аргента. Я не могу торговать! ")
	
	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана.  ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)
	

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Ѕ»ТЧФ±Ў¤єВВеё¦



----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[Ѕ»ТЧФ±Ў¤ЙЈјЄ]			--
--							--
--		103877,127848				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk27 ()
	
	
	Talk( 1, "Санджай: Привет! Я отвечаю тут за торговлю! ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, TradeBerthList, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Узнать о повышении уровня торговой лицензии ",JumpPage, 3)
	
	Talk( 2, "Санджай: У вас нет корабля в порте Громограда! ")	
	
	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана. ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")
	
	
	
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
--		Йіб°іЗ[ґ¬№¤Ў¤ёҐАјїЛ]			--
--							--
--		90391,366735				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk60 ()
	
	Talk( 1, "Франклин: Яотвечаю за постройку корабля в этом городе! ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Достигнуто максимальное количество кораблей. Нельзя больше построить корабль. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Построить корабль ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, BoatLevelBerthList, 3 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Улучшить корабль ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Франклин: Так какой корабль будем сторить? ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 3 )
	Text( 2, "Построить Гуппи ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 3 )
	Text( 2, "Построить Ветролов ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 3 )
	Text( 2, "Построить Рыбу-меч ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 3 )
	Text( 2, "Построить Черепаху ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerAction( 1, CreateBoat, 14, 3 )
	Text( 2, "Построить Поток ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerAction( 1, CreateBoat, 15, 3 )
	Text( 2, "Построить Богиню ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Франклин: Чтобы улучшить судно вы должны поставить его в эту гавань. Кроме того у вас должно быть необходимое количество опыта корабля. Опыт можно заработать убивая морских монстров. ")

	AddNpcMission	(1116)
	AddNpcMission	(158)
	AddNpcMission	(159)
	AddNpcMission	(160)
	
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ґ¬і§№¤ИЛЎ¤ёҐАјїЛ

------------------------------------------------------------
-- °ЧТшіЗ-----єЈКВЛщЦъАнЎ¤ВЮА­ДИ
------------------------------------------------------------

function r_talk150()

	Talk( 1, "Алена: Привет! Я Морской советник. Чем могу помочь? ")

	AddNpcMission 	(437)
	AddNpcMission 	(439)
	AddNpcMission 	(441)


end

------------------------------------------------------------
-- °ЧТшіЗ-----ґ¬№¤Ў¤Л№°НїЛ
------------------------------------------------------------

------------------------------------------------------------
-- °ЧТшіЗ-----єЈёЫЦё»УЎ¤С©Ат
------------------------------------------------------------

function r_talk152()

	Talk( 1, "Ширли: Привет! Я оператор флота. Что желаете? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 1 )
	--TriggerAction( 1, RemoveYS )
	TriggerAction( 1, LuanchBerthList, 1, 2260,2829, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, RepairBerthList, 1 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, SupplyBerthList, 1 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 1 )
	TriggerAction( 1, SalvageBerthList, 1 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")

	AddNpcMission ( 289 )
	AddNpcMission ( 290 )


end

------------------------------------------------------------
-- Йіб°іЗ-----єЈёЫЦё»УЎ¤ВнїЛ
------------------------------------------------------------

function r_talk153()

	Talk( 1, "Марк: Привет! Я оператор флота. Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 832, 3698, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")



end

------------------------------------------------------------
--±щАЗ±¤-----ґ¬№¤Ў¤ЗЗЦО
------------------------------------------------------------
function r_talk155 ()
		
	Talk( 1, "Джордж: Привет! Я отвечаю здесь за постройку кораблей. Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Достигнуто максимальное количество кораблей. Нельзя больше построить корабль. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Построить корабль ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, BoatLevelBerthList, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Улучшить корабль ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Джордж: Какой корабль желаете построить? ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 4 )
	Text( 2, "Построить Транспортер ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 4 )
	Text( 2, "Построить Ветролов ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 4 )
	Text( 2, "Построить Летучую рыбу ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 4 )
	Text( 2, "Построить Черепаху ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerAction( 1, CreateBoat, 16, 4 )
	Text( 2, "Построить Орел ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Джордж: Чтобы улучшить судно вы должны поставить его в эту гавань. Кроме того у вас должно быть необходимое количество опыта корабля. Опыт можно заработать убивая морских монстров. ")
		
end 

------------------------------------------------------------
-- ±щАЗ±¤-----єЈёЫЦё»УЎ¤ПЇБЦ
------------------------------------------------------------

function r_talk154()

	Talk( 1, "Силион: Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 4 )
	TriggerAction( 1, LuanchBerthList, 4, 1196,673, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, RepairBerthList, 4 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, SupplyBerthList, 4 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 4 )
	TriggerAction( 1, SalvageBerthList, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")

	AddNpcMission ( 294 )
	AddNpcMission ( 295 )

end


------------------------------------------------------------
-- єЈ·зµє-----єЈёЫЦё»УЎ¤В··І
------------------------------------------------------------

function r_talk178()

	Talk( 1, "Люфан: Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 5 )
	TriggerAction( 1, LuanchBerthList, 5, 3240, 3314, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, RepairBerthList, 5 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, SupplyBerthList, 5 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 5 )
	TriggerAction( 1, SalvageBerthList, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")
	
end

------------------------------------------------------------
-- Лй±щµє-----єЈёЫЦё»УЎ¤Еµ¶ыВЮµВ
------------------------------------------------------------

function r_talk179()

	Talk( 1, "Ноэль: Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 6 )
	TriggerAction( 1, LuanchBerthList, 6, 2301, 1144, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, RepairBerthList, 6 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, SupplyBerthList, 6 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 6 )
	TriggerAction( 1, SalvageBerthList, 6 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")

end

------------------------------------------------------------
-- С©Ффµє-----єЈёЫЦё»УЎ¤ВіЧИВіТБ
------------------------------------------------------------

function r_talk180()

	Talk( 1, "Лючи: Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 7 )
	TriggerAction( 1, LuanchBerthList, 7, 3628, 770, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, RepairBerthList, 7 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, SupplyBerthList, 7 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 7 )
	TriggerAction( 1, SalvageBerthList, 7 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")

end

------------------------------------------------------------
-- ИшА­І№ёшХѕ-----єЈёЫЦё»УЎ¤ОВСЗЛю
------------------------------------------------------------

function r_talk181()

	Talk( 1, "Уитни: Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")


	AddNpcMission	(763)
	AddNpcMission(	1742	)
	AddNpcMission (	1938	)
	AddNpcMission (	1953	)
----------------јЄДбЛ№---єЈёЫЦё»УЎ¤ОВСЗЛю--03
	AddNpcMission	(5511)
	AddNpcMission	(5512)
	

end

------------------------------------------------------------
-- °ў¶ыІ№ёшХѕ-----єЈёЫЦё»УЎ¤ґпТ®ґп
------------------------------------------------------------

function r_talk182()

	Talk( 1, "Дарука: Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")

	AddNpcMission	(379)
	AddNpcMission	(380)
----------------јЄДбЛ№---єЈёЫЦё»УЎ¤ґпТ®ґп--03
	AddNpcMission (5533 )
	AddNpcMission (5534 )
end

------------------------------------------------------------
-- №ю¶ыІ№ёшХѕ-----єЈёЫЦё»УЎ¤НЯАЧГЧ
------------------------------------------------------------

function r_talk183()

	Talk( 1, "Уиткомб: Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Получить Душу феи ", JumpPage, 6 ) 
	
	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 50 )
	TriggerAction( 1, TakeItem, 3116, 50 )
	TriggerAction( 1, GiveItem, 3337, 1, 4 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "Уиткомб: Чтобы получить Душу феи необходимо 50 Эльфийских фруктов. ")
	Text( 6, "У меня есть Эльфийские фрукты ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 7, "Уиткомб: У вас нет всего необходимого! ")


	AddNpcMission(	1740	)
	AddNpcMission (	1936	)
	AddNpcMission (	1951	)
	AddNpcMission (	381	)
	AddNpcMission (	382	)
----------------јЄДбЛ№---єЈёЫЦё»УЎ¤НЯАЧГЧ--03
	AddNpcMission (5531 )
	AddNpcMission (5532 )
	
end

------------------------------------------------------------
-- ёҐАп¶ШІ№ёшХѕ-----єЈёЫЦё»УЎ¤·ЁµЪ¶ы
------------------------------------------------------------

function r_talk184()

	Talk( 1, "Фардель: Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")


	AddNpcMission(	1739	)
	AddNpcMission (	1935	)
	AddNpcMission (	1950	)
	AddNpcMission (	383	)
	AddNpcMission (	384	)
	AddNpcMission (	385	)

	----------------јЄДбЛ№---єЈёЫЦё»УЎ¤·ЁµЪ¶ы--03
	AddNpcMission (5529 )
	AddNpcMission (5530 )



end

------------------------------------------------------------
-- єЈ·зµє-----Ѕ»ТЧФ±Ў¤Іј¶ыЧИ
------------------------------------------------------------

function r_talk185()

	Talk( 1, "Бургес: Привет! Я местный купец! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 5 )
	TriggerAction( 1, TradeBerthList, 5 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Узнать о повышении уровня торговой лицензии ",JumpPage, 3)	

	Talk( 2, "Бургес: Простите, но у вас нет корабля в местном порту! ")	

	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана. ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")

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
-- Лй±щµє-----Ѕ»ТЧФ±Ў¤ИьЙЄДб
------------------------------------------------------------

function r_talk186()

	Talk( 1, "Саценис: Привет! Я местный купец! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 6 )
	TriggerAction( 1, TradeBerthList, 6 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Узнать о повышении уровня торговой лицензии ",JumpPage, 3)

	Talk( 2, "Саценис: Простите, но у вас нет корабля в местном порту! ")
	
	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана. ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")

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
-- С©Ффµє-----Ѕ»ТЧФ±Ў¤·КѕЁµВА­µВ
------------------------------------------------------------

function r_talk187()

	Talk( 1, "Дилади: Привет! Я местный купец! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 7 )
	TriggerAction( 1, TradeBerthList, 7 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Узнать о повышении уровня торговой лицензии ",JumpPage, 3)

	Talk( 2, "Дилади: Простите, но у вас нет корабля в местном порту! ")	

	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана. ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")


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
-- ±щС©µє-----єЈёЫЦё»УЎ¤ІЁ¶ы
------------------------------------------------------------

function r_talk188()

	Talk( 1, "Пауль: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 8 )
	TriggerAction( 1, LuanchBerthList, 8, 2351, 767, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, RepairBerthList, 8 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, SupplyBerthList, 8 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 8 )
	TriggerAction( 1, SalvageBerthList, 8 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")
	
end

------------------------------------------------------------
-- ГщЙіµє-----єЈёЫЦё»УЎ¤НРВк
------------------------------------------------------------

function r_talk189()

	Talk( 1, "Томас: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 9 )
	TriggerAction( 1, LuanchBerthList, 9, 1769, 3788, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, RepairBerthList, 9 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, SupplyBerthList, 9 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 9 )
	TriggerAction( 1, SalvageBerthList, 9 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")
	
end

------------------------------------------------------------
-- Хж°®µє-----єЈёЫЦё»УЎ¤ПДµВАы
------------------------------------------------------------
function r_talk190()

	Talk( 1, "Ксад: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 10 )
	TriggerAction( 1, LuanchBerthList, 10, 2527, 2358, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, RepairBerthList, 10 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, SupplyBerthList, 10 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 10 )
	TriggerAction( 1, SalvageBerthList, 10 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")
end

------------------------------------------------------------
-- ЛХёЫІ№ёшХѕ-----єЈёЫЦё»УЎ¤ВіОч
------------------------------------------------------------
function r_talk191()

	Talk( 1, "Луиджи: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")
	 -------------јЄДбЛ№--ЛХёЫІ№ёшХѕ,єЈёЫЦё»УЎ¤ВіОч(464,468)--03
	AddNpcMission (5527 )
	AddNpcMission (5528 )


end

------------------------------------------------------------
-- °ЈёҐАпІ№ёшХѕ-----єЈёЫЦё»УЎ¤ІјЕ¦
------------------------------------------------------------
function r_talk192()

	Talk( 1, "Буни: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")

	AddNpcMission ( 304 )
	AddNpcMission ( 305 )
	AddNpcMission(	1743	)
	AddNpcMission (	1939	)
	AddNpcMission (	1954	)
	AddNpcMission (	386	)
	AddNpcMission (	387	)

	----------------јЄДбЛ№---єЈёЫЦё»УЎ¤ІјЕ¦--03
	AddNpcMission (5525 )
	AddNpcMission (5526 )
end


------------------------------------------------------------
-- А­№ЕІ№ёшХѕ-----єЈёЫЦё»УЎ¤¶аБ®ґп
------------------------------------------------------------
function r_talk193()

	Talk( 1, "Домору: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")

	AddNpcMission(	1441	)
	AddNpcMission (	1931	)

	----------------јЄДбЛ№---єЈёЫЦё»УЎ¤¶аБ®ґп--03
	AddNpcMission (5523 )
	AddNpcMission (5524 )


end

------------------------------------------------------------
-- ЖдЛчµҐІ№ёшХѕ-----єЈёЫЦё»УЎ¤МШ°НЖл¶ы
------------------------------------------------------------
function r_talk194()

	Talk( 1, "Теба: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")

end

------------------------------------------------------------
-- ДВДВ¶ыІ№ёшХѕ-----єЈёЫЦё»УЎ¤°Н°В
------------------------------------------------------------
function r_talk195()

	Talk( 1, "Барос: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")

	AddNpcMission ( 291 )
	AddNpcMission ( 292 )
	AddNpcMission ( 293 )
	AddNpcMission(	1443	)
	AddNpcMission (	1932	)

	


end

------------------------------------------------------------
-- РЎїПІ№ёшХѕ-----єЈёЫЦё»УЎ¤µПµПИш
------------------------------------------------------------
function r_talk196()

	Talk( 1, "Дидан: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")
	----------------јЄДбЛ№---єЈёЫЦё»УЎ¤µПµПИш--03
	AddNpcMission (5515 )
	AddNpcMission (5516 )
end

------------------------------------------------------------
-- Р¤·РІ№ёшХѕ-----єЈёЫЦё»УЎ¤µ¤ДбЛ№
------------------------------------------------------------
function r_talk197()

	Talk( 1, "Даннис: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")

	----------------1.7
	AddNpcMission (5133 )
	AddNpcMission (5134 )
	AddNpcMission (5135 )

	----------------јЄДбЛ№---єЈёЫЦё»УЎ¤µ¤ДбЛ№--03
	AddNpcMission (5513 )
	AddNpcMission (5514 )
end

------------------------------------------------------------
-- °ЈЖ¤¶ЕІ№ёшХѕ-----єЈёЫЦё»УЎ¤Лч¶ы
------------------------------------------------------------
function r_talk198()

	Talk( 1, "Сок: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")
	----------------јЄДбЛ№---єЈёЫЦё»УЎ¤Лч¶ы--03
	AddNpcMission (5517 )
	AddNpcMission (5518 )
end

------------------------------------------------------------
-- ±щС©µє-----Ѕ»ТЧФ±Ў¤Оч¶ы°а
------------------------------------------------------------

function r_talk199()

	Talk( 1, "Сибун: Привет! Я местный купец! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8 )
	TriggerAction( 1, TradeBerthList, 8 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Узнать о повышении уровня торговой лицензии ",JumpPage, 3)

	Talk( 2, "Сибун: Простите, но у вас нет корабля в местном порту! ")	

	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана. ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")

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
-- ГщЙіµє-----Ѕ»ТЧФ±Ў¤ГЧЛчСЗЛ№
------------------------------------------------------------

function r_talk200()

	Talk( 1, "Микки: Привет! Я местный купец! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9 )
	TriggerAction( 1, TradeBerthList, 9 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Узнать о повышении уровня торговой лицензии ",JumpPage, 3)

	Talk( 2, "Микки: Простите, но у вас нет корабля в местном порту! ")	
	
	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана. ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")

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
-- Хж°®µє-----Ѕ»ТЧФ±Ў¤УИїЁ
------------------------------------------------------------

function r_talk201()

	Talk( 1, "Юка: Привет! Я местный купец! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 10 )
	TriggerAction( 1, TradeBerthList, 10 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Узнать о повышении уровня торговой лицензии ",JumpPage, 3)
	
	Talk( 2, "Юка: Простите, но у вас нет корабля в местном порту! ")	

	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана. ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")

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
-- єГФЛµє-----єЈёЫЦё»УЎ¤В¬їЛ
------------------------------------------------------------
function r_talk202()

	Talk( 1, "Хукс: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 11 )
	TriggerAction( 1, LuanchBerthList, 11, 1642, 2005, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, RepairBerthList, 11 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, SupplyBerthList, 11 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 11 )
	TriggerAction( 1, SalvageBerthList, 11 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")
end

------------------------------------------------------------
-- ИшµПАХІ№ёшХѕ-----єЈёЫЦё»УЎ¤ЗЗ¶ыЗЗДб
------------------------------------------------------------
function r_talk203()

	Talk( 1, "Грегори: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")

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
	----------------јЄДбЛ№---єЈёЫЦё»УЎ¤ЗЗ¶ыЗЗДб--03
	AddNpcMission (5521 )
	AddNpcMission (5522 )

	AddNpcMission	(6260)
	AddNpcMission	(6261)

end

------------------------------------------------------------
-- їЁВнИьІ№ёшХѕ-----єЈёЫЦё»УЎ¤°ВµЗ
------------------------------------------------------------
function r_talk204()

	Talk( 1, "Оди: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")
	----------------јЄДбЛ№---єЈёЫЦё»УЎ¤°ВµЗ--03
	AddNpcMission (5519 )
	AddNpcMission (5520 )
end

------------------------------------------------------------
-- ЛјЛјЛчІ№ёшХѕ-----єЈёЫЦё»УЎ¤А­ГЧРЮ
------------------------------------------------------------
function r_talk205()

	Talk( 1, "Рамус: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Простите, но ремонт стоит 1000 золота! ")
	Talk( 5, "Простите, но заправка стоит 200 золота!")
end

------------------------------------------------------------
-- єГФЛµє-----Ѕ»ТЧФ±Ў¤ЕБµВБрЛ№
------------------------------------------------------------

function r_talk206()

	Talk( 1, "Боуи: Привет! Я местный купец! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 11 )
	TriggerAction( 1, TradeBerthList, 11 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Узнать о повышении уровня торговой лицензии ",JumpPage, 3)

	Talk( 2, "Боуи: Простите, но у вас нет корабля в местном порту! ")	

	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана. ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")

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
-- АЧцЄ±¤ѕьёЫ-----єЈёЫЦё»УЎ¤ІйїЙ·тЦРОѕ
------------------------------------------------------------
function r_talk207()

	Talk( 1, "Лт. Уэйн: Привет! Я местный оператор порта! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 2 )
	TriggerAction( 1, LuanchBerthList, 2, 1064, 1324, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, RepairBerthList, 2 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, SupplyBerthList, 2 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 2 )
	TriggerAction( 1, SalvageBerthList, 2 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")
end

------------------------------------------------------------
-- Йіб°РВіЗ-----Ѕ»ТЧФ±Ў¤Оч¶а·т
------------------------------------------------------------

function r_talk208()

	Talk( 1, "Сидор: Привет! Я местный купец! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Узнать о повышении уровня торговой лицензии ",JumpPage, 3)

	Talk( 2, "Сидор: простите но у вас нет корабля в местном порту! ")

	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана. ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")

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
-- ±щАЗ±¤-----Ѕ»ТЧФ±Ў¤ЕеВіЕµ
------------------------------------------------------------

function r_talk209()

	Talk( 1, "Пахниро: Привет! Я местный купец! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, TradeBerthList, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Узнать о повышении уровня торговой лицензии ",JumpPage, 3)
	
	Talk( 2, "Пахниро: Простите но у вас нет корабля в местном порту! ")	

	Talk( 3, "Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана. ")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана. ")
	Talk( 5, "Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога ")
	Talk( 6, "Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога ")
	Talk( 7, "Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам. ")

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
-- АЧцЄ±¤ѕьёЫ-----ґ¬№¤Ў¤°ўє©
------------------------------------------------------------
function r_talk210 ()
		
	Talk( 1, "Аттан: Привте! Я заведую здесь постройкой кораблей! МОгу я вам чем то помочь? ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Достигнуто максимальное количество кораблей. Нельзя больше построить корабль. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Построить корабль ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, BoatLevelBerthList, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Улучшить корабль ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Attan: What type of ships do you wish to have? I have a few variety for you to chose from. But you must select one of your level if not you will not be able to navigate it. ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 2 )
	Text( 2, "Построить Летучую рыбу ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 2 )
	Text( 2, "Построить Черепаху ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 2 )
	Text( 2, "Построить Рыбу-меч ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 11 )
	TriggerAction( 1, CreateBoat, 11, 2 )
	Text( 2, "Построить Фантом ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 12 )
	TriggerAction( 1, CreateBoat, 12, 2 )
	Text( 2, "Построить Серебрянный дельфин ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerAction( 1, CreateBoat, 13, 2 )
	Text( 2, "Построить Большую белую акулу ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Аттан: Чтобы улучшить судно вы должны поставить его в эту гавань. Кроме того у вас должно быть необходимое количество опыта корабля. Опыт можно заработать убивая морских монстров. ")
end 

------------------------------------------------------------
-- °ЧТшіЗ-----єЈµБЗй±ЁФ±Ў¤ёкНЯИц
------------------------------------------------------------

function r_talk211()

	Talk( 1, "Гевас: Привет! Мне известны все пиратские организации в мире! Хотите присмотреть местечко для себя? ")
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 1 )
	TriggerAction( 1, ListAllGuild, 1 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 1 )
	TriggerFailure( 3, JumpPage, 3 )
	Text( 1, "Посмотреть пиратские гильдии ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "Прощайте ", CloseTalk)
	
	Talk( 2, "Гевас: Эй, да вы из флота! Я не буду говорить ни с кем из флота! ")

	Talk( 3, "Гевас: Хотите узнать кто самый известный пират? Я этого не скажу. ")

		
end

------------------------------------------------------------
-- °ЧТшіЗ-----єЈѕьЗй±ЁФ±Ў¤ґпВЎµ¤
------------------------------------------------------------

function r_talk212()

	Talk( 1, "Далонгдан: привет! Я осведомитель флота. У меня есть полный списко всех флотских гильдий! ")
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
	Text( 1, "Посмотреть список гильдий ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "До свидания ", CloseTalk)
	
	Talk( 2, "Далонгдан: Вы не можете посмотреть списки гильдий не имея при себе рекомендательного письма! ")

	Talk( 3, "Далонгдан: Вы не принадлежите к флоту. Я не буду давать вам никакую информацию! ")

		
end

------------------------------------------------------------
-- °ЧТшіЗ-----єЈѕьДј±шРЎЅгЎ¤АЩзІ¶ы
------------------------------------------------------------

function r_talk213()

	Talk( 1, "Рэйчел: Привет! Флот ищет вас! Если вы считаете что нужны флоту, то возьмите рекомендательное письмо и отнесите в ближайший пункт вербовки! ")
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
	Text( 1, "Дайте рекомендательное письмо ",MultiTrigger, GetMultiTrigger(), 4 )
	Text( 1, "Может позже. Прощайте! ", CloseTalk)

	Talk( 2, "Рэйчел: У вас уже есть рекомендательное письмо! ")

	Talk( 3, "Рэйчел: Вы не присоединились к флоту? Проверьте свой инвентарь и убедитесь что он не полон! ")

	Talk( 4, "Рэйчел: Вы уже состоите во флоте! Зачем вам рекомендательное письмо? ")

	Talk( 5, "Рэйчел: Похоже вы плохой человек. Я не могу вам вручить рекомендательное письмо! ")

		
end

------------------------------------------------------------
-- ·ПїуІ№ёшХѕ-----ґт°ьИЛЎ¤єхАХґп
------------------------------------------------------------

function r_talk214()

	Talk( 1, "Хурадар: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить кристаллы ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Хурадар: У вас нет корабля в местном порту! ")
		
end

------------------------------------------------------------
-- АЧцЄ±¤ѕьёЫ-----ґт°ьИЛЎ¤·СµВЛчА­
------------------------------------------------------------

function r_talk215()

	Talk( 1, "Фернандо: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Фернандо: У вас нет корабля в местном порту! ")
		
end

------------------------------------------------------------
-- °ЧТшБЦЗш-----ґт°ьИЛЎ¤Д¦ёщ
------------------------------------------------------------

function r_talk216()

	Talk( 1, "Мокен: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Мокен: У вас нет корабля в местном порту! ")

	AddNpcMission(	1436	)
	AddNpcMission (	1930	)
		
end

------------------------------------------------------------
-- ±щС©µє-----ґт°ьИЛЎ¤°ўАпОчЛ№
------------------------------------------------------------

function r_talk217()

	Talk( 1, "Алексис: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8)
	TriggerAction( 1, PackBagList, 8, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Алексис: У вас нет корабля в местном порту! ")
		
end

------------------------------------------------------------
-- ГщЙіµє-----ґт°ьИЛЎ¤ТБјУїЁ°а
------------------------------------------------------------

function r_talk218()

	Talk( 1, "Евгений: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9)
	TriggerAction( 1, PackBagList, 9, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Евгений: У вас нет корабля в местном порту! ")
		
end

------------------------------------------------------------
-- Йіб°РВіЗ-----ґт°ьИЛЎ¤°І°ННЯ¶ш
------------------------------------------------------------

function r_talk219()

	Talk( 1, "Амбер: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_MINE, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить энергоруду ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Амбер: У вас нет корабля в местном порту! ")
		
end

------------------------------------------------------------
-- °ўАј±ИЛ№І№ёшХѕ-----ґт°ьИЛЎ¤°ўјУ¶чІјАµµГ
------------------------------------------------------------

function r_talk220()

	Talk( 1, "Алкинс: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_MINE, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить руду ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Алкинс: У вас нет корабля в местном порту! ")

	AddNpcMission(	1581	)
	AddNpcMission (	1933	)

	
end


------------------------------------------------------------
-- їЁ¶ыјУµВС©Ф­-----ґт°ьИЛЎ¤їІ±ґ¶ы
------------------------------------------------------------

function r_talk243()

	Talk( 1, "Канари: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Канари: У вас нет корабля в местном порту! ")
		
end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----ґт°ьИЛЎ¤ЛчА­Л№
------------------------------------------------------------

function r_talk244()

	Talk( 1, "Солярис: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	--Text( 1, "Торг ", BuyPage )
	
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
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Солярис: У вас нет корабля в местном порту! ")

end



------------------------------------------------------------
-- ЕБїЛ»ДД®-----ґт°ьИЛЎ¤°ІИыА­
------------------------------------------------------------

function r_talk245()

	Talk( 1, "Ансто: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Ансто: У вас нет корабля в местном порту! ")
		
end


------------------------------------------------------------
-- ±щј«-----ґт°ьИЛЎ¤°ўјУОч
------------------------------------------------------------

function r_talk246()

	Talk( 1, "Джас: Привет! Я местный фрахтовщик. Я могу загрузить товар на ваше судно если оно находится  местном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Джас: У вас нет корабля в местном порту! ")
	
end

------------------------------------------------------------
-- ГФЦ®ёЫїЪ-----ёЫїЪЦё»УЎтГФ
------------------------------------------------------------
function r_talk247()

	Talk( 1, "Мист: Привет! Я диспетчер таинственных портов! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1341, 3257, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Чтобы починить судно в таинственном порту необходимо 1000 золота ")
	Talk( 5, "Чтобы заправить судно в таинственном порту необходимо 200 золота ")
	Talk( 6, "Я могу восстановить лишь судно, оставленное в таинственном порту. Стоимость 1000 золота ")

end

------------------------------------------------------------
-- ГФЦ®ёЫїЪ-----РЎ»ЁФ°±±ІїЙМµкєЈёЫЦё»У
------------------------------------------------------------
function r_talk248()

	Talk( 1, "Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 116, 51, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	
	

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	

end

------------------------------------------------------------
-- ГФЦ®ёЫїЪ-----РЎ»ЁФ°±±ІїЦРСлєЈёЫЦё»У
------------------------------------------------------------
function r_talk249()

	Talk( 1, "Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 235, 123, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	

end


------------------------------------------------------------
-- ГФЦ®ёЫїЪ-----РЎ»ЁФ°¶«ІїєЈёЫЦё»У
------------------------------------------------------------
function r_talk250()

	Talk( 1, "Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 248, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	

end

------------------------------------------------------------
-- ГФЦ®ёЫїЪ-----РЎ»ЁФ°ДПІїЙМµкєЈёЫЦё»У
------------------------------------------------------------
function r_talk251()

	Talk( 1, "Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 353, 428, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")


end

------------------------------------------------------------
-- ГФЦ®ёЫїЪ-----РЎ»ЁФ°±±ІїПВєЈєЈёЫЦё»У
------------------------------------------------------------
function r_talk257()

	Talk( 1, "Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,211, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")


end

------------------------------------------------------------
-- ГФЦ®ёЫїЪ-----РЎ»ЁФ°ДПІїПВєЈєЈёЫЦё»У
------------------------------------------------------------
function r_talk258()

	Talk( 1, "Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,256, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")


end


------------------------------------------------------------
-- ГФЦ®ёЫїЪ-----Тх°µХУФуєЈёЫЦё»У
------------------------------------------------------------
function r_talk261()

	Talk( 1, "Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 295, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Чтобы починить судно оставленное в таинственном порту необходимо 1000 золота ")
	Talk( 5, "Чтобы заправить судно оставленное в таинственном порту необходимо 200 золота. ")
	Talk( 6, "Чтобы восстановить судно числящееся в таинственном порту необходимо 1000 золота! ")

end

------------------------------------------------------------
-- ГФЦ®ёЫїЪ-----·ПБйЦ®¶јєЈёЫЦё»У
------------------------------------------------------------
function r_talk262()

	Talk( 1, "Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 299, 321, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Чтобы починить судно оставленное в таинственном порту необходимо 1000 золота ")
	Talk( 5, "Чтобы заправить судно оставленное в таинственном порту необходимо 200 золота. ")
	Talk( 6, "Чтобы восстановить судно числящееся в таинственном порту необходимо 1000 золота! ")

end

----------------------------------------------------------
--							--
--							--
--		ѕєјј»ЁФ°[ЙсГШЙМИЛ]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk259 ()
	
	
	Talk( 1, "Таинственный торговец: Привет! У меня есть некоторый товар для вас. Хотите взглянуть? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12 )
	TriggerAction( 1, TradeBerthList, 12 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг ", MultiTrigger, GetMultiTrigger(), 1 )

	
	Talk( 2, "Таинственный торговец: Простите, но у вас нет корабля в этом порту. Торг невозможен! ")
	
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
-- РЎ»ЁФ°-----Т©ІЭЙМИЛ
------------------------------------------------------------

function r_talk260()

	Talk( 1, "Целитель: Взгляните на мой ассортимент лечебных трав! ")
	Text( 1, "Торг ", BuyPage )
	Text( 1, "Ничего, я просто оглядываюсь ",CloseTalk )

	InitTrade()
	Other(	3460	)
	Other(	3461	)

end

------------------------------------------------------------
-- Йіб°РВіЗ-----ЙсГШєЈёЫЦё»У
------------------------------------------------------------
function r_talk263()

	Talk( 1, "Таинственный оператор: Привет! Я оператор таинственных портов. Я могу восстановить ваш корабль если он числится в таинственном порту. ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 832, 3698, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 3, "Чтобы починить судно оставленное в таинственном порту необходимо 1000 золота ")
	Talk( 4, "Чтобы заправить судно оставленное в таинственном порту необходимо 200 золота. ")
	Talk( 5, "Чтобы восстановить судно числящееся в таинственном порту необходимо 1000 золота! ")

end

----------------------------------------------------
--АЮЦч№«»бМШКвГіТЧЖ·
----------------------------------------------------
--ѕь»рЙМ


function r_talk264()
	Talk( 1, "Торговец оружием: Привет! Я торговец ценным оружием. Однако я доверяю лишь членам гильдии занимающей первое место. ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 1 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "Торговец оружием: Я доверяю лишь членам гильдии занимающей певое место! Кроме того у вас должен быть корабль в порту Шайтана. ")

	InitGoods(3)
	SaleGoodsData(	0	,	3914	,	150	,	990	,	220	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end

--ѕ«ГЬТЗЖч№©У¦ЙМ	

--function r_talk265()
--	Talk( 1, "Торговец редкими материалами: Привет! Я торгую редкими материалами. Однако я доверяю лишь членам гильдии занимающей второе место! ")
--	InitTrigger()
--	TriggerCondition( 1, HasBoatInBerth, 3 )
--	TriggerCondition( 1, HasGuildLevel, 2 )
--	TriggerAction( 1, TradeBerthList, 3 )
--	TriggerFailure( 1, JumpPage, 2 )
--	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 

--	Talk( 2, "Торговец редкими материалами: Я доверяю лишь членам гильдии занимающей второе место! Кроме того у вас должен быть корабль в порту Шайтана. ")


--	InitGoods(3)
--	SaleGoodsData(	0	,	3912	,	200	,	855	,	190	)
	


--	InitTrigger()
--	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
--	SetNpcTrigger( GetTrigger( 1 ) )
--	SetNpcActive()



--end


--ПЎУРЅрКф№©У¦ЙМ

function r_talk266()
	Talk( 1, "Торговец редкими металлами: Привет! Я продаю редкие металлы! Однако я доверяю лишь членам гильдии занимающей третье место! ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг грузом  ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "Торговец редкими металлами: Я доверяю лишь членам гильдии занимающей третье место! Кроме того у вас должен быть корабль в порту Шайтана. ")


	InitGoods(3)
	SaleGoodsData(	0	,	3913	,	250	,	765	,	170	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end



------------------------------------------------------------
-- Йіб°РВіЗ-----ґт°ьИЛЎ¤°ўАпЖЯЖЯ
------------------------------------------------------------

function m_talk001()

	Talk( 1, "Али Кью: Привет! Я местный фрахтовщик. Могу я чем то помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Али Кью: У вас нет корабля в местном порту! ")
		
end


------------------------------------------------------------
-- ПДµє±±ёЫ-----єЈёЫЦё»У
------------------------------------------------------------
function b_talk19()

	Talk( 1, "Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 14 )
	TriggerAction( 1, LuanchBerthList, 14, 3662, 2645, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, RepairBerthList, 14 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, SupplyBerthList, 14 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 14 )
	TriggerAction( 1, SalvageBerthList, 14 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите, но чтобы починить судно стоящее в порте острова Лета необходимо 1000 золота! ")
	Talk( 5, "Простите, но чтобы заправить судно стоящее в порте острова Лета необходимо 200 золота! ")
	Talk( 6, "Простите, но чтобы восстановить судно стоящее в порте острова Лета необходимо 1000 золота! ")

end


------------------------------------------------------------
-- ПДµєДПёЫ-----єЈёЫЦё»У
------------------------------------------------------------
function b_talk20()

	Talk( 1, "Привет! Я местный оператор флота! Чем я могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 15 )
	TriggerAction( 1, LuanchBerthList, 15, 3324, 3541, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, RepairBerthList, 15 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, SupplyBerthList, 15 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 15 )
	TriggerAction( 1, SalvageBerthList, 15 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите, но чтобы починить судно стоящее в порте острова Лета необходимо 1000 золота! ")
	Talk( 5, "Простите, но чтобы заправить судно стоящее в порте острова Лета необходимо 200 золота! ")
	Talk( 6, "Простите, но чтобы восстановить судно стоящее в порте острова Лета необходимо 1000 золота! ")

end


function leo_talk10()	

	Talk( 1, "Продавец чёрного рынка: Хо хо как вы меня нашли? Ну уже не важно ну что вы будете покупать что-нибудь?")
--	Text( 1, "Мне нужен специальный товар ", JumpPage, 2 )
	Text( 1, "Купить.", BuyPage)

	Talk( 2, "Продавец черного рынка: Ах вы какой хитрый вам нужно подавать самое лучшее.Ну смотрите что у меня есть ")
	Text( 2, "Давайте посмотрю ", SendExchangeData )

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

function rand()	--єЪКРЛж»ъЧ°±ёБР±н
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
-- КҐХЅ-----єЈёЫЦё»УЎ¤БгБгБг
------------------------------------------------------------
function star_talk001()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 148 , 154, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤БгБгТ»
------------------------------------------------------------
function star_talk002()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 176, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤БгБг¶ю
------------------------------------------------------------
function star_talk003()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 168 , 111, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤БгБгИэ
------------------------------------------------------------
function star_talk004()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 452 , 135, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤БгБгЛД
------------------------------------------------------------
function star_talk005()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 496 , 164, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤БгБгОе
------------------------------------------------------------
function star_talk006()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤БгБгБщ
------------------------------------------------------------
function star_talk007()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3 , 262 , 181, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤БгБгЖЯ
------------------------------------------------------------
function star_talk008()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 348 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤зЫзЫБг
------------------------------------------------------------
function star_talk009()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 110 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end

------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤зЫзЫТ»
------------------------------------------------------------
function star_talk010()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 493, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤зЫзЫ¶ю
------------------------------------------------------------
function star_talk011()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 82 , 456, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤зЫзЫИэ
------------------------------------------------------------
function star_talk012()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 463 , 453, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤зЫзЫЛД
------------------------------------------------------------
function star_talk013()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 492 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤зЫзЫОе
------------------------------------------------------------
function star_talk014()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 506, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤зЫзЫБщ
------------------------------------------------------------
function star_talk015()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 357 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end
------------------------------------------------------------
-- КҐХЅ-----єЈёЫЦё»УЎ¤зЫзЫЖЯ
------------------------------------------------------------
function star_talk016()
	Talk( 1, "Оператор: Привет! Я оператор порта Священной войны. У меня есть данные о всех лодках. Что вы хотите? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 256 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Простите, но у вас нет лодки приписанной здесь. ")
end

function r_talk151 ()
		
	Talk( 1, "Корабельщик: Привет! Интересуют лучшие судна? ")
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Достигнуто максимальное количество кораблей. Нельзя больше построить корабль. ")
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Построить корабль ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, BoatLevelBerthList, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Улучшить корабль ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Корабельщик: какой корабль желаете построить? ")
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 1 )
	Text( 2, "Построить Гуппи ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 1 )
	Text( 2, "Построить Транспортер ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 1 )
	Text( 2, "Построить Летучую рыбу ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 1 )
	Text( 2, "Построить Рыбу-меч ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 12, 1 )
	Text( 2, "Построить Метеор ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Корабельщик: Чтобы улучшить судно вы должны поставить его в эту гавань. Кроме того у вас должно быть необходимое количество опыта корабля. Опыт можно заработать убивая морских монстров. ")
end

	
function d_port001()
	Talk( 1, "Оператор Пиратской бухты: Чем могу помочь? ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 485,1875, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Мое судно в таинственном порту. ",JumpPage,7)

	Talk( 3, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 4, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 5, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 6, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")
	
	Talk( 7, "Оператор Пиратской бухты: Если вы потеряли или оставили судно в неизвестных землях, то я могу вам помочь. ")
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 485,1875, 177 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Отправиться в путь ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 9 )
	Text( 7, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 10 )
	Text( 7, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 7, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 8, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 9, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 10, "Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить. ")
	Talk( 11, "Простите, но вы можете восстановить судно лишь в том порту, где оно приписано! ")

end
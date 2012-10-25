--------------------------------------------------------------------------
--									--
--									--
--NPCScript04.lua Created by sky74					--
--									--
--									--
--------------------------------------------------------------------------
print( "‡ Јаг§Є  NPCScript04.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- ґє·зХт МъЅіЎ¤ОдцО
------------------------------------------------------------

function b_talk1()


	Talk( 1, "Ву Ксин: Изумрудное лезвие в левой руке, нож Голиафа в правой руке, шлем дракона на голове. Ничто меня не остановит! " )
	Text( 1, "Торг ", BuyPage )
	Text( 1, "Ремонт ", OpenRepair)
	Text( 1, "Узнать о вставке самоцветов ", JumpPage, 2)
	Text( 1, "Узнать о комбинировании ", JumpPage, 3)

	Talk( 2, "Ву Ксин: Вставка самоцветов? Только кузнец Шайтана знает о ней! " )

	Talk( 3, "Ву Ксин: Комбинирование? Советую обратиться к бакалейщику Амосу в Шайтане. Он должен знать об этом! " )
	
	Talk( 4, "Ву Ксин: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Weapon(	0023	)
	Weapon(	1399	)
	Weapon(	0021	)
	Weapon(	1378	)
	Weapon(	1387	)
	Weapon(	0084	)
	Weapon(	1426	)
	Weapon(	1461	)
	Weapon(	0108	)
	Weapon(	4302	)
	Weapon(	1438	)
	Weapon(	1441	)
	Weapon(	1473	)
	Weapon(	1476	)
	Weapon(	0045	)
	Weapon(	1414	)


	AddNpcMission ( 393 )
        AddNpcMission ( 567 )
end


------------------------------------------------------------
-- ґє·зХт їНХ»АП°еЎ¤БъЕ®ЈЁВф»ШёґЖ·)
------------------------------------------------------------

function b_talk2()


	Talk( 1, "Лонг Ер: Добрый день. Вы можете ознакомиться с ассортиментом нашего товара. Вас что нибудь заинтерисовало? ")
	Text( 1, "Купить ", BuyPage )
	
	Talk( 2, "Лонг Ер: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


   	InitTrade()
	Other(	578	)
--	Other(	1087	)
--	Other(	1088	)
--	Other(	1089	)

	AddNpcMission ( 394 )
	AddNpcMission ( 536 )
	AddNpcMission ( 537 )
	AddNpcMission ( 538 )
        AddNpcMission ( 569 )

end

------------------------------------------------------------
-- ґє·зХт ФУ»хЙМИЛЎ¤ВіДИ¶щ(Вф·Й»ъЖ±)
------------------------------------------------------------

function b_talk3()


	Talk( 1, "Луна: Хм... Кажется кто то имеет такое же имя как и я. Думаю стоит предъявить иск о нарушении авторских прав! " )
	Text( 1, "Торг ", BuyPage )
	Talk( 2, "Луна: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )



	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission ( 395 )
	AddNpcMission ( 517 )
	AddNpcMission ( 519 )
	AddNpcMission ( 525 )
	AddNpcMission ( 526 )
	--AddNpcMission ( 535 )
        AddNpcMission ( 564 )
end

------------------------------------------------------------
-- ґє·зХт ГіТЧЙМИЛЎ¤УНАоЈЁєЅєЈГіТЧЖ·
------------------------------------------------------------

function b_talk4()


	Talk( 1, "Юрий: Вы слышали о фонтане жизни? О тварях дьявола? Нет? Тогда какой же вы путешевственник! " )
	Text( 1, "Trade", BuyPage )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 13 )
	TriggerAction( 1, TradeBerthList, 13 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 )
	--Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)
	
	Talk( 2, "Юрий: Простите, но у вас нет корабля в доке Веснограда. Я не могу произвести торг! " )
	
	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)
	

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")
	Talk( 8, "Yuri: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )


	InitGoods()
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

	AddNpcMission ( 396 )
	AddNpcMission ( 530 )
	AddNpcMission ( 545 )
	AddNpcMission ( 546 )
	AddNpcMission ( 547 )
        AddNpcMission ( 572 )

end

------------------------------------------------------------
-- ґє·зХт ґ«ЛНК№Ў¤ґєАт
------------------------------------------------------------

function b_talk5()
	--ИЎПыґ«ЛН·µ»ШСЎФсґ«ЛНµШµгµД¶Ф»°ДЪИЭєНТіГж±аєЕ
	local ReSelectTalk = "Я должен подумать "
	local ReSelectPage = 1

	--ИЎПыґ«ЛНєННЛіцґ«ЛНµД¶Ф»°єНТіГж±аєЕ
	local CancelSelectTalk = "Забудь! Я остаюсь здесь "
	local CancelSelectPage = 7

	--µШНјГыіЖРЕПў
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--°ЧТшЦ®іЗЧш±к
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--Йіб°Ц®іЗЧш±к
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--±щАЗ±¤Чш±к
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "Чун Ли: Я горжусь что не остался на небесах " )
	Text( 1, "В Аргент ", JumpPage, 2 )
	Text( 1, "В Шайтан ", JumpPage, 3 )
	Text( 1, "В Ледынь ", JumpPage, 4 )
	Text( 1, "Записать точку возвращения ", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 2, "Переместить в Аргент? Нет проблем. Стоимость 500 золотых! " )
	Text( 2, "Переместить ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "Переместить в Шайтан? Нет проблем. Стоимость 500 золотых! " )
	Text( 3, "Переместить ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 4, "Переместить в Ледынь? Нет проблем. Стоимость 500 золотых! " )
	Text( 4, "Переместить ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 5, "Чун Ли: Хотите записать точку возвращения в Веснограде? " )
	Text( 5, "Да, пожалуйста запишите. ", SetSpawnPos, "\194\229\241\237\238\227\240\224\228" )
	Text( 5, "Нет, спасибо ",CloseTalk )

	Talk( 6, "Простите, но у вас недостаточно денег для телепортации " )

	Talk( 7, "Обратитесь ко мне если вновь потребуется помощь! ", CloseTalk )
	Talk( 8, "Чун Ли: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 397 )
	 AddNpcMission ( 559 )
	MisListPage(8)

	

end



------------------------------------------------------------
-- ґє·зХт ЛгГьПИЙъЎ¤ЛгЖЖМм
------------------------------------------------------------

function b_talk6()


	Talk( 1, "Фокус Покус: Привет! Я вижу сегодня вам улыбается удача! Я продам вам пиратское руководство всего за 500 золотых! " )
	Text( 1, "Мне надо 1 жребий удачи ", JumpPage, 2 )
	Text( 1, "Мне надо 1 жребий фортуны ", JumpPage, 3 )
	Text( 1, "Сделка со смертью ", JumpPage, 6 )

	Talk( 6, "Фокус Покус: Тьма это маска смерти. Что вы хотите выкупить? ")
	Text( 6, "Силуэт смерти ",JumpPage,7)
	Text( 6, "Проклятье ", JumpPage,8)
	Text( 6, "Душу ", JumpPage,9)


	InitTrigger() --¶Т»»ЛАЙсµДТЕИЭ
	TriggerCondition( 1, HasItem, 2846, 1 )
	TriggerCondition( 1, HasItem, 2847, 1 )
	TriggerCondition( 1, HasItem, 2848, 1 )
	TriggerCondition( 1, HasItem, 2849, 1 )
	TriggerCondition( 1, HasItem, 2850, 1 )
	TriggerCondition( 1, HasItem, 2851, 1 )
	TriggerCondition( 1, HasItem, 2852, 1 )
	TriggerCondition( 1, HasItem, 2853, 1 )

        	TriggerAction( 1, TakeItem,  2846, 1 )
	TriggerAction( 1, TakeItem,  2847, 1 )
	TriggerAction( 1, TakeItem,  2848, 1 )
	TriggerAction( 1, TakeItem,  2849, 1 )
	TriggerAction( 1, TakeItem,  2850, 1 )
	TriggerAction( 1, TakeItem,  2851, 1 )
	TriggerAction( 1, TakeItem,  2852, 1 )
	TriggerAction( 1, TakeItem,  2853, 1 )
	TriggerAction( 1, GiveItem,2934, 1,4 )
	TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 7, "Фокус Покус: 1 Меланхолия Барона-фантома, 1 Меланхолия Огненного демона, 1 Меланхолия Дикого зверя, 1 Меланхолия Тайрана, 1 Меланхолия Отчаяния, 1 Меланхолия Дракана и 1 Меланхолия Тидаля в обмен на 1 Силуэт смерти. ")
	Text( 7, "Обменять ",GetChaName_7, 1) 

	Talk( 8, "Фокус Покус: Добрый ребенок не будет идти вокруг проклятья других. ")
	Text( 8, "Проклятье Хардина ",JumpPage,11)
	Text( 8, "Проклятье Тьмы ", JumpPage,12)
	Text( 8, "Проклятье Бездны ", JumpPage,13)
	Text( 8, "Проклятье Абисса ", JumpPage,14)
	Text( 8, "Проклятье Стикса ", JumpPage,15)
	Text( 8, "Проклятье Асура ", JumpPage,16)



	InitTrigger() --¶Т»»№юµПЛ№µДЧзЦд
	
	TriggerCondition( 1, HasItem, 2854, 1 )
	TriggerCondition( 1, HasItem, 2855, 1 )
	TriggerCondition( 1, HasItem, 2856, 1 )
	TriggerCondition( 1, HasItem, 2857, 1 )
	TriggerCondition( 1, HasItem, 2927, 1 )
      
	TriggerAction( 1, TakeItem,  2854, 1 )
	TriggerAction( 1, TakeItem,  2855, 1 )
	TriggerAction( 1, TakeItem,  2856, 1 )
	TriggerAction( 1, TakeItem,  2857, 1 )
	TriggerAction( 1, TakeItem,  2927, 1 )
	TriggerAction( 1, GiveItem,2935, 1,4 )
	TriggerFailure( 1, JumpPage, 10 ) 
	Talk(11, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Хардина в обмен на 1 проклятье Хардина. ")
	Text( 11, "Обменять ",GetChaName_8, 1) 


InitTrigger() --¶Т»»єЪ°µµДЧзЦд	
TriggerCondition( 1, HasItem, 2854, 1 )
TriggerCondition( 1, HasItem, 2855, 1 )
TriggerCondition( 1, HasItem, 2856, 1 )
TriggerCondition( 1, HasItem, 2857, 1 )
TriggerCondition( 1, HasItem, 2928, 1 )

TriggerAction( 1, TakeItem,  2854, 1 )
TriggerAction( 1, TakeItem,  2855, 1 )
TriggerAction( 1, TakeItem,  2856, 1 )
TriggerAction( 1, TakeItem,  2857, 1 )
TriggerAction( 1, TakeItem,  2928, 1 )
TriggerAction( 1, GiveItem,2936, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(12, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Тьмы в обмен на 1 проклятье Тьмы. ")
	Text( 12, "Обменять ",GetChaName_9, 1) 


InitTrigger() --¶Т»»µШУьµДЧзЦд

TriggerCondition( 1, HasItem, 2854, 1 )
TriggerCondition( 1, HasItem, 2855, 1 )
TriggerCondition( 1, HasItem, 2856, 1 )
TriggerCondition( 1, HasItem, 2857, 1 )
TriggerCondition( 1, HasItem, 2929, 1 )

TriggerAction( 1, TakeItem,  2854, 1 )
TriggerAction( 1, TakeItem,  2855, 1 )
TriggerAction( 1, TakeItem,  2856, 1 )
TriggerAction( 1, TakeItem,  2857, 1 )
TriggerAction( 1, TakeItem,  2929, 1 )
TriggerAction( 1, GiveItem,2937, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(13, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Бездны в обмен на 1 проклятье Бездны. ")
	Text( 13, "Обменять ",GetChaName_10, 1) 



InitTrigger() --¶Т»»УДЪ¤µДЧзЦд
TriggerCondition( 1, HasItem, 2854, 1 )
TriggerCondition( 1, HasItem, 2855, 1 )
TriggerCondition( 1, HasItem, 2856, 1 )
TriggerCondition( 1, HasItem, 2857, 1 )
TriggerCondition( 1, HasItem, 2931, 1 )

TriggerAction( 1, TakeItem,  2854, 1 )
TriggerAction( 1, TakeItem,  2855, 1 )
TriggerAction( 1, TakeItem,  2856, 1 )
TriggerAction( 1, TakeItem,  2857, 1 )
TriggerAction( 1, TakeItem,  2931, 1 )
TriggerAction( 1, GiveItem,2939, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(14, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Абисса в обмен на 1 проклятье Абисса. ")
	Text( 14, "Обменять ",GetChaName_11, 1) 

	InitTrigger() --¶Т»»Ъ¤єУµДЧзЦд
TriggerCondition( 1, HasItem, 2854, 1 )
TriggerCondition( 1, HasItem, 2855, 1 )
TriggerCondition( 1, HasItem, 2856, 1 )
TriggerCondition( 1, HasItem, 2857, 1 )
TriggerCondition( 1, HasItem, 2932, 1 )

TriggerAction( 1, TakeItem,  2854, 1 )
TriggerAction( 1, TakeItem,  2855, 1 )
TriggerAction( 1, TakeItem,  2856, 1 )
TriggerAction( 1, TakeItem,  2857, 1 )
TriggerAction( 1, TakeItem,  2932, 1 )
TriggerAction( 1, GiveItem,2940, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(15, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Стикса в обмен на 1 проклятье Стикса. ")
	Text( 15, "Обменять ",GetChaName_12, 1) 



InitTrigger() --¶Т»»РЮВЮµДЧзЦд
TriggerCondition( 1, HasItem, 2854, 1 )
TriggerCondition( 1, HasItem, 2855, 1 )
TriggerCondition( 1, HasItem, 2856, 1 )
TriggerCondition( 1, HasItem, 2857, 1 )
TriggerCondition( 1, HasItem, 2930, 1 )

TriggerAction( 1, TakeItem,  2854, 1 )
TriggerAction( 1, TakeItem,  2855, 1 )
TriggerAction( 1, TakeItem,  2856, 1 )
TriggerAction( 1, TakeItem,  2857, 1 )
TriggerAction( 1, TakeItem,  2930, 1 )
TriggerAction( 1, GiveItem,2938, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(16, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Асура в обмен на 1 проклятье Асура. ")
	Text( 16, "Обменять ",GetChaName_13, 1) 


	Talk( 9, "Фокус Покус: Я слышал душа человека весит меньше грамма... Интересно сколько весит душа смерти. ")
	Text( 9, "Душа Хардина ",JumpPage,17)
	Text( 9, "Душа Тьмы ", JumpPage,18)
	Text( 9, "Душа Бездны ", JumpPage,19)
	Text( 9, "Душа Абисса ", JumpPage,20)
	Text( 9, "Душа Стикса ", JumpPage,21)
	Text( 9, "Душа Асура ", JumpPage,22)
	Text( 9, "Душа Черного дракона ", JumpPage,23)


InitTrigger() --¶Т»»№юµПЛ№µД»кЖЗ
TriggerCondition( 1, HasItem, 2934, 1 )
TriggerCondition( 1, HasItem, 2935, 1 )
TriggerAction( 1, TakeItem,  2934, 1 )
TriggerAction( 1, TakeItem,  2935, 1 )
TriggerAction( 1, GiveItem,2562, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(17, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Хардина в обмен на 1 Душу Хардина ")
	Text( 17, "Обменять ",GetChaName_14, 1) 


InitTrigger() --¶Т»»єЪ°µµД»кЖЗ
TriggerCondition( 1, HasItem, 2934, 1 )
TriggerCondition( 1, HasItem, 2936, 1 )
TriggerAction( 1, TakeItem,  2934, 1 )
TriggerAction( 1, TakeItem,  2936, 1 )
TriggerAction( 1, GiveItem,2563, 1,4 )
	TriggerFailure( 1, JumpPage, 10 ) 
	Talk(18, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Тьмы в обмен на 1 Душу Тьмы ")
	Text( 18, "Обменять ",GetChaName_15, 1) 



InitTrigger() --¶Т»»µШУьµД»кЖЗ
TriggerCondition( 1, HasItem, 2934, 1 )
TriggerCondition( 1, HasItem, 2937, 1 )
TriggerAction( 1, TakeItem,  2934, 1 )
TriggerAction( 1, TakeItem,  2937, 1 )
TriggerAction( 1, GiveItem,2564, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(19, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Бездны в обмен на 1 Душу Бездны ")
	Text( 19, "Обменять ",GetChaName_16, 1) 



InitTrigger() --¶Т»»УДЪ¤µД»кЖЗ
TriggerCondition( 1, HasItem, 2934, 1 )
TriggerCondition( 1, HasItem, 2939, 1 )
TriggerAction( 1, TakeItem,  2934, 1 )
	TriggerAction( 1, TakeItem,  2939, 1 )
TriggerAction( 1, GiveItem,2566, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(20, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Абисса в обмен на 1 Душу Абисса ")
	Text( 20, "Обменять ",GetChaName_17, 1) 


InitTrigger() --¶Т»»Ъ¤єУµД»кЖЗ
TriggerCondition( 1, HasItem, 2934, 1 )
TriggerCondition( 1, HasItem, 2940, 1 )
TriggerAction( 1, TakeItem,  2934, 1 )
TriggerAction( 1, TakeItem,  2940, 1 )
TriggerAction( 1, GiveItem,2567, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(21, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Стикса в обмен на 1 Душу Стикса ")
	Text( 21, "Обменять ",GetChaName_18, 1) 



InitTrigger() --¶Т»»РЮВЮµД»кЖЗ
TriggerCondition( 1, HasItem, 2934, 1 )
TriggerCondition( 1, HasItem, 2938, 1 )
TriggerAction( 1, TakeItem,  2934, 1 )
TriggerAction( 1, TakeItem,  2938, 1 )
TriggerAction( 1, GiveItem,2565, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(22, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Асура в обмен на 1 Душу Асура ")
	Text( 22, "Обменять ",GetChaName_19, 1) 

InitTrigger() --¶Т»»єЪБъµД»кЖЗ
TriggerCondition( 1, HasItem, 2562, 1 )
TriggerCondition( 1, HasItem, 2563, 1 )
TriggerCondition( 1, HasItem, 2564, 1 )
TriggerCondition( 1, HasItem, 2565, 1 )
TriggerCondition( 1, HasItem, 2566, 1 )
TriggerCondition( 1, HasItem, 2567, 1 )
TriggerCondition( 1, HasItem, 2933, 1 )
TriggerCondition( 1, HasItem, 2934, 1 )

TriggerAction( 1, TakeItem,  2562, 1 )
TriggerAction( 1, TakeItem,  2563, 1 )
TriggerAction( 1, TakeItem,  2564, 1 )
TriggerAction( 1, TakeItem,  2565, 1 )
TriggerAction( 1, TakeItem,  2566, 1 )
TriggerAction( 1, TakeItem,  2567, 1 )
TriggerAction( 1, TakeItem,  2933, 1 )
TriggerAction( 1, TakeItem,  2934, 1 )
TriggerAction( 1, GiveItem,2404, 1,4 )
TriggerFailure( 1, JumpPage, 10 ) 
	Talk(23, "Фокус Покус: 1 Душа Тьмы, 1 Душа Асура, 1 Душа Хардина, 1 Душа Бездны, 1 Душа Абисса, 1 Душа Стикса, 1 Силуэт смерти и 1 Смех Черного дракона в обмен на 1 Душу Черного дракона. ")
	Text( 23, "Обменять ",GetChaName_20, 1) 

	Talk( 10, "У вас нет всех необходимых компонентов для обмена, или у вас недостаточно мест в инвентаре. Возможно также ваш инвентарь заблокирован. " )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3086,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, "Жребий удачи? С вас 5000 золота! " )
	Text( 2, "Получить ",MultiTrigger, GetMultiTrigger(), 1 ) 

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3087,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Жребий фортуны? С вас 5000 золота! " )
	Text( 3, "Получить ",MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "Фокус Покус: Мая твая не панимать! " )

	Talk( 5, "У вас недостаточно денег, или у вас недостаточно мест в инвентаре. Возможно также ваш инвентарь заблокирован." )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 4 )
	
	AddNpcMission ( 520 )
	AddNpcMission ( 900 )
---------------------РВАъК·ИООс
	AddNpcMission(	5065)
	AddNpcMission(	595	)
	AddNpcMission(	599	)
	AddNpcMission(	5000	)
	AddNpcMission(	5001	)
	AddNpcMission(	5002	)
	AddNpcMission(	5003 )
	AddNpcMission(	5066)

end
------------------------------------------------------------
-- ґє·зХт ѕЖµкАП°еЎ¤ЕбµЩ
------------------------------------------------------------

function b_talk7()


	Talk( 1, "Санг Ди: Парни! Приготовтесь принимать гостей! " )
--   	Text( 1, "Торг ", BuyPage )
	
	Talk( 2, "Санг Ди: Мая твая не панимать! " )

	InitTrade()
	Other(	1084	)
	Other(	1085	)
	Other(	1087	)
	Other(	1088	)
	Other(	1089	)
	Other(	1090	) 


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


	AddNpcMission ( 392 )
	AddNpcMission ( 514 )
	AddNpcMission ( 516 )
	AddNpcMission ( 527 )
	AddNpcMission ( 528 )
	AddNpcMission ( 529 )
	AddNpcMission ( 548 )
	AddNpcMission ( 550 )
	AddNpcMission ( 551 )
       AddNpcMission ( 558 )
       AddNpcMission ( 571 )
------------РВФцАъК·ИООс
	AddNpcMission(	592	)
	AddNpcMission(	5004	)
	AddNpcMission(	5005	)
	AddNpcMission(	5006	)
	AddNpcMission(	5007	)
	AddNpcMission(	5008	)
	AddNpcMission(	5043	)
	AddNpcMission(	5054	)
	AddNpcMission(	5055	)
end

------------------------------------------------------------
-- ґє·зХт ёЫїЪЦё»УЎ¤ЛЄЖж
------------------------------------------------------------

function b_talk8()


	Talk( 1, "Шуанг: Починка корабля? Заправка? ЧТо вам угодно? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 3426, 2575, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, RepairBerthList, 13 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, SupplyBerthList, 13 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 13 )
	TriggerAction( 1, SalvageBerthList, 13 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Простите, но у вас в этом порту не записано судно! " )
	Talk( 4, "Простите, я ремонтирую лишь суда приписанные к этому порту. Стоимость 1000 золотых! " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту. Стоимость 500 золотых! " )
	Talk( 6, "Простите, но я востанавливаю суда лишь приписанные к этому порту. Стоимость 1000 золотых! " )
	Talk( 7, "Шуанг: Мая твая не панимать! " )


	AddNpcMission ( 398 )
	AddNpcMission ( 565 )


end

------------------------------------------------------------
-- ґє·зХт ТшРРЧЬ№ЬЎ¤НхД«
------------------------------------------------------------

function b_talk9()


	Talk( 1, "Ванг Мо: Вы хотите что то оставить на хранение? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Хранилище (200 золотых)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Простите, но у вас недостаточно денег для доступа к банку! " )
	Talk( 3, "Ванг Мо: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 2 )



	AddNpcMission ( 399 )
	AddNpcMission ( 510 )
	AddNpcMission ( 511 )
	AddNpcMission ( 512 )
	AddNpcMission ( 513 )
	AddNpcMission ( 543 )
	AddNpcMission ( 544 )
        AddNpcMission ( 570 )
 
end

------------------------------------------------------------
-- ґє·зХт ОА±шЎ¤ХФЗ®Лп
------------------------------------------------------------

function b_talk10()


	Talk( 1, "Жао: Я так голоден! Когда же наконец обед? " )
	Talk( 2, "Жао: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end

------------------------------------------------------------
-- ґє·зХт ОА±шЎ¤ЦЬОвЦЈ
------------------------------------------------------------

function b_talk11()


	Talk( 1, "Жоу: Один плюс один равняется двум? Или не двум? Не обращайте внимание, я говорю сам с собой. " )
	Talk( 2, "Жоу: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 531 )
	AddNpcMission ( 532 )
	AddNpcMission ( 533 )
	AddNpcMission ( 534 )

end

------------------------------------------------------------
-- ґє·зХт ЗаДкДРЧУЎ¤БчФЖ
------------------------------------------------------------

function b_talk12()


	Talk( 1, "Клауд: Вы встречали Мисти? Она моя девушка! " )
	Talk( 2, "Клауд: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
         
	 AddNpcMission ( 533 )
	 AddNpcMission ( 563 )
end

------------------------------------------------------------
-- ґє·зХт ЗаДкЕ®ЧУЎ¤Л®Он
------------------------------------------------------------

function b_talk13()


	Talk( 1, "Мисти: Вы встречали Клауда? Он мой парень!" )
	Talk( 2, "Мисти: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end

------------------------------------------------------------
-- ґє·зХт ЦРДкДРЧУЎ¤±ИёЗ
------------------------------------------------------------

function b_talk14()


	Talk( 1, "Билл: Проблема? Какая проблема? Я зарабатываю миллионы каждую секунду! Не тревожьте меня!" )
	Talk( 2, "Билл: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

        AddNpcMission ( 568 )
--Священный огонь
	AddNpcMission	(6262)
	AddNpcMission	(6263)

end

------------------------------------------------------------
-- ґє·зХт ЦРДкЕ®ЧУЎ¤НхИШ
------------------------------------------------------------

function b_talk15()


	Talk( 1, "Ванг Ронг: Я не разбираюсь в военном искусстве. Пожалуйста не измывайтесь надо мной... " )
	Talk( 2, "Ванг Ронг: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end

------------------------------------------------------------
-- ґє·зХт ¶«·ЅєЈµБЎ¤БеЧфМпЙЅ
------------------------------------------------------------

function b_talk16()


	Talk( 1, "Якамото: Разве вы не видете что мы грабители? " )
	Talk( 2, "Якамото: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end

------------------------------------------------------------
-- ґє·зХт і±БчАн·ўК¦
------------------------------------------------------------

function b_talk17()


	Talk( 1, "Парикмахер: Нужна помощь? " )
	Text( 1, "Я хочу приобрести Вино ", BuyPage )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	Talk( 3, "Парикмахер: У вас нет расписки, я не могу сменить прическу! ")
	Talk( 4, "Парикмахер: Ты не прошёл Языковой барьер! " )



   	InitTrade()
--	Other(	578	)
	Other(	1087	)
	Other(	1088	)
	Other(	1089	)
	Other(	2619	)

	AddNpcMission	(6003)
	AddNpcMission	(6004)
	AddNpcMission	(6005)
	AddNpcMission	(6006)
	AddNpcMission	(6007)
	AddNpcMission	(6008)
	AddNpcMission	(6009)
end

------------------------------------------------------------
-- ґє·зХт Ѕ©К¬Ў¤ЕбУАѕь
------------------------------------------------------------

function b_talk18()


	Talk( 1, "Хамми: Уууууу " )
	Talk( 2, "Хамми: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	
	AddNpcMission ( 515 )
	AddNpcMission ( 518 )
	AddNpcMission ( 524 )
end

------------------------------------------------------------
--єЪБъіІСЁ Т»Ігto¶юІг
------------------------------------------------------------

function b_talk21()


	--ИЎПыґ«ЛН·µ»ШСЎФсґ«ЛНµШµгµД¶Ф»°ДЪИЭєНТіГж±аєЕ
	local ReSelectTalk = "Я должен подумать "
	local ReSelectPage = 1

	--ИЎПыґ«ЛНєННЛіцґ«ЛНµД¶Ф»°єНТіГж±аєЕ
	local CancelSelectTalk = "Забудь! Я остаюсь здесь. "
	local CancelSelectPage = 5

	--µШНјГыіЖРЕПў
	local CurMapName = "eastgoaf"


	--єЪБъіІСЁ¶юІгЧш±к
	local GoTo01X = 767
	local GoTo01Y = 602
	local GoTo01M = CurMapName

	Talk( 1, "Защитная статуя: Богиней запечатана сама смерть внутри меня! " )
	Text( 1, "Перейти в Логово Дракона 2 ", JumpPage, 2 )

	InitTrigger()
--	TriggerCondition( 1, HasItem, 179,1 )
--	TriggerCondition( 1, HasItem, 3084,1 )
--	TriggerCondition( 1, HasItem, 3085,1 )
--	TriggerAction( 1, TakeItem, 179,1 )
--	TriggerAction( 1, TakeItem, 3084,1 )
--	TriggerAction( 1, TakeItem, 3085,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Для перемещения в Логово Дракона 2 необходимо 1 Знак Анубиса, 1 Маску короля мумий и 1 Вечный двигатель! " )
	Text( 2, "Переместить ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 3, "Защитная статуя: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Простите, но у вас нет всех 3 необходимых предмета! " )

	Talk( 5, "Ищите меня снова если решите войти в логово смерти! ", CloseTalk )
end

------------------------------------------------------------
--єЪБъіІСЁ ¶юІгtoТ»Іг
------------------------------------------------------------

function b_talk22()


	--ИЎПыґ«ЛН·µ»ШСЎФсґ«ЛНµШµгµД¶Ф»°ДЪИЭєНТіГж±аєЕ
	local ReSelectTalk = "Я должен подумать "
	local ReSelectPage = 1

	--ИЎПыґ«ЛНєННЛіцґ«ЛНµД¶Ф»°єНТіГж±аєЕ
	local CancelSelectTalk = "Забудь, я останусь здесь! "
	local CancelSelectPage = 4

	--µШНјГыіЖРЕПў
	local CurMapName = "eastgoaf"


	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 847
	local GoTo01Y = 247
	local GoTo01M = CurMapName

	Talk( 1, "Защитная статуя: Богиня запечатала саму смерть внутри меня! " )
	Text( 1, "Перейти в Логово Дракона 1 !", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "Вы точно хотите выйти? " )
	Text( 2, "Переместить ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 3, "Защитная статуя: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Найдите меня снова если решите выйти ", CloseTalk )



end

------------------------------------------------------------
--єЪБъіІСЁ ¶юІгtoИэІг
------------------------------------------------------------

function b_talk23()

	--µШНјГыіЖРЕПў
	local CurMapName = "eastgoaf"


	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 772
	local GoTo01Y = 722
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, HasItem, 182,1 )
	--TriggerAction( 1, TakeItem, 1091,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "Защитная статуя: Богиней запечатана сама смерть внутри меня! " )
	Text( 1, "Перейти в Логово Дракона 3 ", MultiTrigger, GetMultiTrigger(), 1 )

	--Talk( 3, "Guardian Statue: Мая твая не панимать! " )
	--InitTrigger()
--	TriggerCondition( 1, HasRecord, 330 )
--	TriggerAction( 1, JumpPage, 1 )
--	TriggerCondition( 2, NoRecord, 330 )
--	TriggerAction( 2, JumpPage, 3 )
--	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Проход запечатан. Вам необходим Ключ Дракона чтобы пройти!" )

--	Talk( 4, "The statue emits a energy shield to keep me away. Looks like I am not strong enough to break it yet. I must think of other ways." )


end

------------------------------------------------------------
--єЪБъ±¦Пд
------------------------------------------------------------

function b_talk24()

--	InitFuncList()
--	AddFuncList( GiveItem,	110	,	1	,	4)
--	AddFuncList( GiveItem,	112	,	1	,	4)
--	AddFuncList( GiveItem,	114	,	1	,	4)
--	AddFuncList( GiveItem,	116	,	1	,	4)
--	AddFuncList( GiveItem,	118	,	1	,	4)
--	AddFuncList( GiveItem,	120	,	1	,	4)
--	AddFuncList( GiveItem,	151	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 182, 1 )
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, AddMoney, 10000000 )
--	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerAction(1, GiveItem, 0266, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "Это таинственный сундук и кажется он заперт... " )
	Text( 1, "Открыть ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Не могу открыть! Кажется нужен ключ... " )

end

------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  МъЅі
------------------------------------------------------------

function l_talk01()
	Talk(1, "Джек Воробей и я были здесь почти месяц, но не сумели найти выход... И я не знаю где мой любимый теперь. Я ненавижу это место! ")

	AddNpcMission(894)
	AddNpcMission(487)
	AddNpcMission(504)
	AddNpcMission(508)
	AddNpcMission(509)
	AddNpcMission(573)
	AddNpcMission(581)
	AddNpcMission(582)
	AddNpcMission(583)

end

------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ЅЬїЛК·ЕЙВЮ
------------------------------------------------------------

function l_talk02()
	Talk(1, "Ходят слухи что Барбароса получил свою силу из за проклятья! Здесь больше не безопасно, и эти монстры далеко не вегетарианцы. Будь осторожен! ")

	AddNpcMission(895)
	AddNpcMission(896)
	AddNpcMission(482)
	AddNpcMission(485)
	AddNpcMission(486)
	AddNpcMission(574)
	AddNpcMission(575)
	AddNpcMission(584)
	AddNpcMission(585)
	AddNpcMission(586)
end

------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ЕµБй¶ЩЅ«ѕь
------------------------------------------------------------

function l_talk03()
	Talk(1, "Проклятый Джек! Если бы он не украл наше военное судно, то я бы не оказался в этой адской бездне! ")

	AddNpcMission(897)
	AddNpcMission(898)
	AddNpcMission(899)
	AddNpcMission(476)
	AddNpcMission(479)
	AddNpcMission(480)
	AddNpcMission(481)
	AddNpcMission(576)
	AddNpcMission(577)
	AddNpcMission(578)
	AddNpcMission(589)
	AddNpcMission(590)

end

------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ТБАцЙЇ°Ч
------------------------------------------------------------

function l_talk04()
	Talk(1, "Где я? Как я оказалась здесь? О Марк! ...Плач... ")
	Text( 1, "Торг ", BuyPage )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission(505)
	AddNpcMission(506)
	AddNpcMission(507)
	AddNpcMission(579)
	AddNpcMission(580)
	AddNpcMission(587)
	AddNpcMission(588)
	AddNpcMission(591)

	---------------°ЧСт
	AddNpcMission	(5573)
	AddNpcMission	(5574)
end

------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ІШ±¦єЈНе±±єЈёЫЦё»УЎ¤ЕнДб
------------------------------------------------------------
function mmm_talk06()

	Talk( 1, "Пенни: Желаете отправиться в путь? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 650,999, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
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
	Text( 1, "Заправить ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Простите, но в этом порту нет вашего судна! " )
	Talk( 4, "Простите, но я ремонтирую суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту! Стоимость 200 золотых. " )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Шуанг: Мая твая не панимать! " )




end

------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ІШ±¦єЈНеДПєЈёЫЦё»УЎ¤ї­Жж
------------------------------------------------------------
function mmm_talk05()

	Talk( 1, "Кэтчи: Вы хотите отправиться в плавание? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 625,925, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
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
	
	Talk( 3, "Простите, но в этом порту нет вашего судна! " )
	Talk( 4, "Простите, но я ремонтирую суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту! Стоимость 200 золотых. " )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Кэтчи: Мая твая не панимать! " )




end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  чјчГєЈёЫЦё»У
------------------------------------------------------------
function mmm_talk07()
Talk( 1, "Командующий портом: Вы хотите отправиться в плавание? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 620,628, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
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
	
	Talk( 3, "Простите, но в этом порту нет вашего судна! " )
	Talk( 4, "Простите, но я ремонтирую суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту! Стоимость 200 золотых. " )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Командующий портом: Мая твая не панимать! " )
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ЙсГШИЛіцєЈИЛ
------------------------------------------------------------
function mmm_talk08()
Talk( 1, "Таинственный моряк: Вы хотите отправиться в плавание? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 380,161, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
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
	
	Talk( 3, "Простите, но в этом порту нет вашего судна! " )
	Talk( 4, "Простите, но я ремонтирую суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту! Стоимость 200 золотых. " )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Таинственный моряк: Мая твая не панимать! " )
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  єЈѕь»щµШєЈёЫЦё»У
------------------------------------------------------------
function mmm_talk09()
Talk( 1, "Командующий портом: Вы хотите отправиться в плавание? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1070,212, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
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
	
	Talk( 3, "Простите, но в этом порту нет вашего судна! " )
	Talk( 4, "Простите, но я ремонтирую суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту! Стоимость 200 золотых. " )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Командующий портом: Мая твая не панимать! " )
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ґт°ьИЛЎ¤ґчЖХ
------------------------------------------------------------
function mmm_talk10()
Talk( 1, "Забу: Здравствуйте! Я местный фрахтовщик. Могу я чем то помочь? " )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить кристаллы ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Забу: Протите, но у вас нет судна в этом порту! " )

end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  µШУьґ«ЛНК№
------------------------------------------------------------
function mmm_talk11()
	--µШНјГыіЖРЕПў
	local CurMapName = "jialebi" 

	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 190
	local GoTo01Y = 815
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, HasItem, 2438,20 )
	TriggerCondition( 1, HasItem, 2419,15 )
	TriggerCondition( 1, HasItem, 2386,15 )
	TriggerAction( 1, TakeItem, 2438,20 )
	TriggerAction( 1, TakeItem, 2419,15 )
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "Портальщик Абаддона: Вы хотите войти в Абаддон? Будьте готовы принести мне 20 Золотых монет, 15 Пиратских костей и 20 Душ нежити. " )
	Text( 1, "Войти в Абаддон 1 ", MultiTrigger, GetMultiTrigger(), 1 )

	--Talk( 3, "Guardian Statue: Мая твая не панимать! " )

--InitTrigger()
--	TriggerCondition( 1, HasRecord, 330 )
--	TriggerAction( 1, JumpPage, 1 )
--	TriggerCondition( 2, NoRecord, 330 )
--	TriggerAction( 2, JumpPage, 3 )
--	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Возвращайтесь как соберете все предметы! " )

--	Talk( 4, "The statue emits a energy shield to keep me away. Looks like I am not strong enough to break it yet. I must think of other ways." )

---------------°ЧСт
	AddNpcMission	(5593)
	AddNpcMission	(5594)

           AddNpcMission	(6264)
	AddNpcMission	(6265)

end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  МмМГґ«ЛНК№
------------------------------------------------------------
function mmm_talk12()
--µШНјГыіЖРЕПў
	local CurMapName = "jialebi" 


	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 1604
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "Небесный портальщик: Я посыльный Богини. Вы должны пройти через меня, чтобы попасть на Небеса! Там Богиня вознаградит вас в зависимости от вашей чести. Больше честь - выше награда! " )
	Text( 1, "Я прошел через Ад! ", JumpPage, 2 )
	Text( 1, "Я получил Покровительство Богини ", JumpPage, 3 )
	Text( 1, "Я слышал у вас есть нечто полезное? ", JumpPage, 7 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 2488,1 )
	TriggerCondition( 1, HasItem, 2489,1 )
	TriggerCondition( 1, HasItem, 2490,1 )
	TriggerCondition( 1, HasItem, 2436,1 )
	TriggerAction( 1, TakeItem, 2488,1 )
	TriggerAction( 1, TakeItem, 2489,1 )
	TriggerAction( 1, TakeItem, 2490,1 )
	TriggerAction( 1, TakeItem, 2436,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Небесный портальщик: Хотите войти на Небеса? Тогда вы должны собрать 1 Кость мумии, 1 Душу мертвого солдата, 1 Сердце фараона и 1 Святую библию! " )
	Text( 2, "Я хочу войти на Небеса! ", MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasItem, 0938,1 )
	TriggerAction( 1, TakeItem, 0938,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Небесный портальщик: У вас есть Покровительство Богини? Тогда не смею вас задерживать! " )
	Text( 3, "Я хочу войти на Небеса! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "Узнать о Покровительстве Богини ", JumpPage, 6 )
	


	Talk( 4, "Возвращайся как соберешь все нужные предметы! " )
	Talk( 5, "У тебя нет покровительства Богини! " )
	Talk( 6, "Богиней было оставлено покровительство на земле, чтобы игроки могли войти на Небеса!" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 2386, 10 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, TakeItem, 2386, 10 )
	TriggerAction( 1, GiveItem, 0271, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 7, "Небесный портальщик: Ангельские кости - сокровище оставленное Богиней. Вы получите его в обмен на 10 Душ нежити и 5 рун Кэль. " )
	Text( 7, "Получить Ангельские кости ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "Возвращайся как соберешь все нужные предметы! " )
---------------°ЧСт
	AddNpcMission	(5595)
	AddNpcMission	(5596)

--	AddNpcMission ( 6056 )
--	AddNpcMission ( 6057 )
--	AddNpcMission ( 6058 )
--	AddNpcMission ( 6059 )
--	AddNpcMission ( 6060 )


end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ГФК§µДїј№Е¶УіЙФ±A
------------------------------------------------------------
function mmm_talk13()
	Talk( 1, "Растерянный исследователь A: У меня есть кое что для вас. Желаете взглянуть? " )
	Text( 1, "Получить вещи из таинственного набора ", JumpPage, 2)

	Talk( 2, "Растерянный исследователь A: These good items are also known as Tsunami set!" )
	Text( 2, "Redeem Armor of Secrets (Lance Crusader)", JumpPage, 3)
	Text( 2, "Redeem Gloves of Secrets (Lance Crusader)", JumpPage, 4)
	Text( 2, "Redeem Boots of Secrets (Lance Crusader)", JumpPage, 5)
	Text( 2, "Redeem Drakan (Lance Crusader)", JumpPage, 6)

	Talk(3,"To redeem Armor of Secrets requires 1 Guise Veilstone, 30 Rainbow Fruit, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2467, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2467, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0396, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Obtained Armor of Secrets", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Gloves of Secrets requires 1 Avow Blotstone, 30 Rainbow Fruit, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2473, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2473, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0588, 1 , 4)
	TriggerFailure( 1, JumpPage, 7)
	Text( 4, "Obtained Gloves of Secrets ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Boots of Secrets requires 1 Mirage Shadestone, 30 Rainbow Fruit, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0748, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Obtained Boots of Secrets", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Drakan requires 1 Demonic Orestone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2463, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2463, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0114, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Obtained Drakan", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Sorry, you do not have the required items to redeem")
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ГФК§µДїј№Е¶УіЙФ±B
------------------------------------------------------------
function mmm_talk14()
	Talk( 1, "Растерянный исследователь B: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Olympus set", JumpPage, 2)

	Talk( 2, "Растерянный исследователь B: These good items are also known as Olympus set!" )
	Text( 2, "Redeem Armor of Olympus (Carsise Champion)", JumpPage, 3)
	Text( 2, "Redeem Gauntlets of Olympus (Carsise Champion)", JumpPage, 4)
	Text( 2, "Redeem Greaves of Olympus (Carsise Champion)", JumpPage, 5)
	Text( 2, "Redeem Colossus (Carsise Champion)", JumpPage, 6)

	Talk(3,"To redeem Armor of Olympus requires 1 Myth Flamestone, 30 Magical Branches, 20 Animal Skins, 10 Splendor Cloths and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0398, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Obtained Armor of Olympus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Gauntlets of Olympus requires 1 Rainbow Soothstone, 30 Magical Branch, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0604, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Obtained Gauntlets of Olympus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Greaves of Olympus requires 1 Spirit Orestone, 30 Magical Branch, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2484, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2484, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0830, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Obtained Greaves of Olympus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Colossus requires 1 Thaw Finestone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2464, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2464, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0116, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Obtained Colossus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Sorry, you do not have the required items to redeem")
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ГФК§µДїј№Е¶УіЙФ±C
------------------------------------------------------------
function mmm_talk15()
	Talk( 1, "Растерянный исследователь C: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Dragon Lord set", JumpPage, 2)
	Text( 1, "Redeem Tsunami set", JumpPage, 9)

	Talk( 2, "Растерянный исследователь C: These good items are also known as Dragon Lord set!" )
	Text( 2, "Redeem Dragon Lord Costume (Ami Voyager)", JumpPage, 3)
	Text( 2, "Redeem Dragon Lord Muffs (Ami Voyager)", JumpPage, 4)
	Text( 2, "Redeem Dragon Lord Shoes (Ami Voyager)", JumpPage, 5)
	Text( 2, "Redeem Dragon Lord Cap (Ami Voyager)", JumpPage, 6)
	Text( 2, "Redeem Riven Soul (Ami Voyager)", JumpPage, 7)

	Talk(3,"To redeem Dragon Lord Costume requires 1 Beastie Finestone, 30 Rainbow Glass, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0413, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Obtained Dragon Lord Costume", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Dragon Lord Muffs requires 1 Beastie Toothstone, 30 Rainbow Glass, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2477, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2477, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0602, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Obtained Dragon Lord Muffs", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Dragon Lord Shoes requires 1 Cadavar Orestone, 30 Rainbow Glass, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2483, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2483, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0824, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Obtained Dragon Lord Shoes ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Dragon Lord Cap requires 1 Beastie Borestone, 30 Rainbow Glass, 20 Life Stones, 10 Meteorites and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2487, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2487, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2223, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Obtained Dragon Lord Cap ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"To redeem Riven Soul requires 1 Tear Soothstone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2466, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2466, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0151, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Obtained Riven Soul", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Sorry, you do not have the required items to redeem")

	Talk( 9, "Растерянный исследователь C: These good items are also known as Tsunami set!" )
	Text( 9, "Redeem Tsunami Robe (Lance, Phyllis Voyager)", JumpPage, 10)
	Text( 9, "Redeem Tsunami Gloves (Lance, Phyllis Voyager)", JumpPage, 11)
	Text( 9, "Redeem Tsunami Shoes (Lance, Phyllis Voyager)", JumpPage, 12)
	Text( 9, "Redeem Riven Soul (Lance, Phyllis Voyager)", JumpPage, 7)

	Talk(10,"To redeem Tsunami Robe requires 1 Beastie Finestone, 30 Agate Crystal, 20 Animal Skin, 10 Earthen Element Fragment and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0411, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Obtained Tsunami Robe", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"To redeem Tsunami Gloves requires 1 Zest Jadestone, 30 Quartz Crystals, 20 Extender, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0600, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Obtained Tsunami Gloves", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"To redeem Tsunami Shoes requires 1 Mirage Shadestone, 30 Agate Crystal, 20 Life Stone, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0760, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Obtained Tsunami Shoes", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ГФК§µДїј№Е¶УіЙФ±D
------------------------------------------------------------
function mmm_talk26()
	Talk( 1, "Растерянный исследователь D: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Fish Fairy set", JumpPage, 2)
	Text( 1, "Redeem Faerie set", JumpPage, 9)

	Talk( 2, "Растерянный исследователь D: These good items are also known as Fish Fairy set!" )
	Text( 2, "Redeem Fish Fairy Costume (Ami Cleric)", JumpPage, 3)
	Text( 2, "Redeem Fish Fairy Muffs (Ami Cleric)", JumpPage, 4)
	Text( 2, "Redeem Fish Fairy Shoes (Ami Cleric)", JumpPage, 5)
	Text( 2, "Redeem Fish Fairy Cap (Ami Cleric)", JumpPage, 6)
	Text( 2, "Redeem Revered Staff (Ami Cleric)", JumpPage, 7)

	Talk(3,"To redeem Fish Fairy Costume requires 1 Searing Debstone, 30 Life Stone Fragment, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2471, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2471, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0408, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Obtained Fish Fairy Costume", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Fish Fairy Muffs requires 1 Dark Soothstone, 30 Life Stone Fragment, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0598, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Obtained Fish Fairy Muffs", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Fish Fairy Shoes requires 1 Pearl Soothstone, 30 Life Stone Fragment, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0758, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Obtained Fish Fairy Shoes", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Fish Fairy Cap requires 1 Oceanic Gutstone, 30 Life Stone Fragment, 20 Life Stone, 10 Meteorite and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2486, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2486, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2221, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Obtained Fish Fairy Cap", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"To redeem Revered Staff requires 1 Goddess Mudstone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2461, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2461, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0110, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Obtained Revered Staff", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Sorry, you do not have the required items to redeem")

	Talk( 9, "Растерянный исследователь D: These good items are also known as Faerie set!" )
	Text( 9, "Redeem Faerie Robe (Phyllis Cleric)", JumpPage, 10)
	Text( 9, "Redeem Faerie Gloves (Phyllis Cleric) ", JumpPage, 11)
	Text( 9, "Redeem Faerie Shoes (Phyllis Cleric)", JumpPage, 12)
	Text( 9, "Redeem Revered Staff (Phyllis Cleric)", JumpPage, 7)

	Talk(10,"To redeem Faerie Robe requires 1 Myth Flamestone, 30 Life Stone Fragment, 20 Life Stone, 10 Pearl and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0406, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Obtained Faerie Robe", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"To redeem Faerie Gloves requires 1 Dark Soothstone, 30 Agate Crystal, 20 Animal Skin, 10 Splendor Cloth and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0596, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Obtained Faerie Gloves", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"To redeem Faerie Shoes requires 1 Goddess Tearstone, 30 Life Stone Fragment, 20 Life Stone, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0756, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Obtained Faerie Shoes", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ГФК§µДїј№Е¶УіЙФ±E
------------------------------------------------------------
function mmm_talk27()
	Talk( 1, "Растерянный исследователь E: Hi, I have been lost for a long time. I got some good stuff with me. Do you wish to do an exchange?" )
	Text( 1, "Redeem Panda set", JumpPage, 2)
	Text( 1, "Redeem Sage set", JumpPage, 9)

	Talk( 2, "Растерянный исследователь E: These good items are also known as Panda set!" )
	Text( 2, "Redeem Mystic Panda Costume (Ami Seal Master)", JumpPage, 3)
	Text( 2, "Redeem Mystic Panda Gloves (Ami Seal Master)", JumpPage, 4)
	Text( 2, "Redeem Mystic Panda Shoes (Ami Seal Master)", JumpPage, 5)
	Text( 2, "Redeem Mystic Panda Cap (Ami Seal Master)", JumpPage, 6)
	Text( 2, "Redeem Crimson Rod (Ami Seal Master)", JumpPage, 7)

	Talk(3,"To redeem Mystic Panda Costume requires 1 Dim Jadestone, 30 Quartz Crystal, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0404, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Obtained Mystic Panda Costume", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Mystic Panda Gloves requires 1 Worldstone, 30 Quartz Crystal, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2475, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2475, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0594, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Obtained Mystic Panda Gloves", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Mystic Panda Shoes requires 1 Crystal Zionstone, 30 Quartz Crystal, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2481, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2481, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0754, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Obtained Mystic Panda Shoes", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Mystic Panda Cap requires 1 Sky Shadestone, 30 Quartz Crystals, 20 Life Stones, 10 Meteorites and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2485, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2485, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2219, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Obtained Mystic Panda Cap", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"To redeem Crimson Rod requires 1 Abrade Orestone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2462, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2462, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0112, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Obtained Crimson Rod", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Sorry, you do not have the required items to redeem")

	Talk( 9, "Растерянный исследователь E: These good items are also known as Sage set!" )
	Text( 9, "Redeem Robe of the Sage (Phyllis Seal Master)", JumpPage, 10)
	Text( 9, "Redeem Gloves of the Sage (Phyllis Seal Master)", JumpPage, 11)
	Text( 9, "Redeem Boots of the Sage (Phyllis Seal Master)", JumpPage, 12)
	Text( 9, "Redeem Crimson Rod (Phyllis Seal Master)", JumpPage, 7)

	Talk(10,"To redeem Robe of the Sage requires 1 Dim Jadestone, 30 Quartz Crystal, 20 Hard Shell, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0402, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Obtained Robe of the Sage", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"To redeem Gloves of the Sage requires 1 Rainbow Soothstone, 30 Life Stone Fragment, 20 Extender, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0592, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Obtained Gloves of the Sage", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"To redeem Boots of the Sage requires 1 Pearl Soothstone, 30 Agate Crystal, 20 Animal Skin, 10 Magical Bone and 50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0752, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Obtained Boots of the Sage", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ГФК§µДїј№Е¶УіЙФ±F
------------------------------------------------------------
function mmm_talk28()
	Talk( 1, "Растерянный исследователь F: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Apollo set", JumpPage, 2)

	Talk( 2, "Растерянный исследователь F: These good items are also known as Apollo set!" )
	Text( 2, "Redeem Vest of Apollo (Lance, Phyllis Sharpshooter)", JumpPage, 3)
	Text( 2, "Redeem Gloves of Apollo (Lance, Phyllis Sharpshooter) ", JumpPage, 4)
	Text( 2, "Redeem Boots of Apollo (Lance, Phyllis Sharpshooter)", JumpPage, 5)
	Text( 2, "Redeem Twilight (Lance, Phyllis Sharpshooter)", JumpPage, 6)

	Talk(3,"To redeem Vest of Apollo requires 1 Hervo Bloodstone, 30 Clarity Crystal, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2469, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2469, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0400, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Obtained Vest of Apollo", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Gloves of Apollo requires 1 Zest Jadestone, 30 Clarity Crystals, 20 Hard Shells, 10 Earthen Element Fragments and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0590, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Obtained Gloves of Apollo", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Boots of Apollo requires 1 Goddess Tearstone, 30 Clarity Crystal, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0750, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Obtained Boots of Apollo", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Twilight requires 1 Oceanic Soulstone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2465, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2465, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0118, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Obtained Twilight", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Sorry, you do not have the required items to redeem")
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  ВЅµШТ»Ігґ«ЛНК№
------------------------------------------------------------
function mmm_talk16()
	--µШНјГыіЖРЕПў
	local CurMapName = "jialebi"


	--єЈѕьВлН·Чш±к
	local GoTo01X = 1250
	local GoTo01Y = 1010
	local GoTo01M = CurMapName

	Talk( 1, "Want to find out what is underneath? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Below leads to the Underground Dock of the Deathsouls. Are you brave enough to enter?" )
	Text( 2, "Yes! Go to Underground Dock!", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold", CloseTalk)
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  КµСйКТїґКШИЛA
------------------------------------------------------------
function mmm_talk17()
	--µШНјГыіЖРЕПў
	local CurMapName = "jialebi"

	--КµСйКТAЧш±к
	local GoTo01X = 968
	local GoTo01Y = 828
	local GoTo01M = CurMapName

	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )
	
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "The Research Room of the Deathsouls is on the inside. Do you dare to enter?" )
	Text( 2, "Go to Research Room A!", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold", CloseTalk)
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  КµСйКТїґКШИЛB2386
------------------------------------------------------------
function mmm_talk18()
	--µШНјГыіЖРЕПў
	local CurMapName = "jialebi"


	--КµСйКТBЧш±к
	local GoTo01X = 968
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "Do you wish to know what is inside? Bring me 20 Soul of Undead and I will let you in!" )
	Text( 1, "Bring me in", JumpPage, 2 )
	Text( 1, "Forget it! I do not want to go", JumpPage, 3 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 2386, 20 )
	TriggerAction( 1, TakeItem, 2386, 20 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Research Room B consists of a terrifying Deathsoul Commander. Do you still wish to enter?" )
	Text( 2, "Go to Research Room B!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You have not collect 20 Souls of Undead", CloseTalk)
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  КµСйКТїґКШИЛC
------------------------------------------------------------
function mmm_talk19()
	--µШНјГыіЖРЕПў
	local CurMapName = "jialebi"


	--КµСйКТCЧш±к
	local GoTo01X = 968
	local GoTo01Y = 993
	local GoTo01M = CurMapName

	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Research Room C is on the other side" )
	Text( 2, "Yes! Go to Research Room C!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold", CloseTalk)
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  µШПВґ¬ОлКШОА
------------------------------------------------------------
function mmm_talk20()
	--µШНјГыіЖРЕПў
	local CurMapName = "jialebi"


	--КµСйКТЧш±к
	local GoTo01X = 1076
	local GoTo01Y = 869
	local GoTo01M = CurMapName

	Talk( 1, "Want to know what is inside?" )
	Text( 1, "What is underneath?", JumpPage, 2 )
	Text( 1, "I do not wish to know", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasItem , 2408,1)
	TriggerCondition(1,HasItem , 2409,1)
	TriggerCondition(1,HasItem , 2410,1)
	TriggerCondition(1,HasItem , 2411,1)
	TriggerCondition(1,HasItem , 2412,1)

	TriggerAction(1,TakeItem,2408,1)
	TriggerAction(1,TakeItem,2409,1)
	TriggerAction(1,TakeItem,2410,1)
	TriggerAction(1,TakeItem,2411,1)
	TriggerAction(1,TakeItem,2412,1)

	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "On the inside will be the Research Room of the Deathsouls. Many dangers lie in it and if you wish to enter, collect the full set of Passwords: AB, BC, CD, DE, EF." )
	Text( 2, "Go to Research Room!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "......Bye!" )
	Talk( 4, "You have not finish collecting all the Passwords", CloseTalk)
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  µШУьТ»ІгБ¶УьИЛ
------------------------------------------------------------
function mmm_talk22()
	--µШНјГыіЖРЕПў
	local CurMapName = "jialebi"


	--µШУь¶юІгЧш±к
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )


	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Go to Abaddon 2?" )
	Text( 2, "Yes! Go to Abaddon 2!", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0267, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 1 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Obtain Power of Flame", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 1 Warden: Come back again after you have the required items" )
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  µШУь¶юІгБ¶УьИЛ
------------------------------------------------------------
function mmm_talk23()
	--µШНјГыіЖРЕПў
	local CurMapName = "jialebi"


	--µШУьТ»ІгЧш±к
	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName

	--µШУьИэІгЧш±к
	local GoTo02X = 70
	local GoTo02Y = 952
	local GoTo02M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Go to Abaddon 1", JumpPage, 2 )
	Text( 1, "Go to Abaddon 3", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Do you wish to go to Abaddon 1?" )
	Text( 2, "Go to Abaddon 1", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Go to Abaddon 3?" )
	Text( 3, "Yes! Go to Abaddon 3!", MultiTrigger, GetMultiTrigger(),2 )
	
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0268, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 2 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Obtained Power of Wind", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 2 Warden: Come back again after you have the required items" )
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  µШУьИэІгБ¶УьИЛ
------------------------------------------------------------
function mmm_talk24()

	--µШНјГыіЖРЕПў
	local CurMapName = "jialebi"


	--µШУь¶юІгЧш±к
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName

	--µШУьЛДІгЧш±к
	local GoTo02X = 209
	local GoTo02Y = 955
	local GoTo02M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Go to Abaddon 2", JumpPage, 2 )
	Text( 1, "Go to Abaddon 4", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Go to Abaddon 2?" )
	Text( 2, "Yes! Go to Abaddon 2!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Do you wish to go to Abaddon 4?" )
	Text( 3, "Go to Abaddon 4", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0269, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 3 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Power of Thunder", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 3 Warden: Come back again after you have the required items" )
end
------------------------------------------------------------
-- јУАХ±ИєЈµБ°ж±ѕ -----  µШУьЛДІгБ¶УьИЛ
------------------------------------------------------------
function mmm_talk25()

		--µШНјГыіЖРЕПў
	local CurMapName = "jialebi"


	--µШУьИэІгЧш±к
	local GoTo01X = 70
	local GoTo01Y = 952
	local GoTo01M = CurMapName

	--ІШ±¦єЈНеЧш±к
	local GoTo02X = 690
	local GoTo02Y = 1043
	local GoTo02M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Go back to Abaddon 3", JumpPage, 2 )
	Text( 1, "I want to leave this hellish place", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Go to Abaddon 3?" )
	Text( 2, "Yes! Go to Abaddon 3!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Do you wish to go out?" )
	Text( 3, "Yes! Let me out!", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0270, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 4 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Power of Frost", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 4 Warden: Come back again after you have the required items" )
end


------------------------------------------------------------
-- ІШ±¦єЈНе ґ«ЛНК№
------------------------------------------------------------

function mmm_talk29()
	--ИЎПыґ«ЛН·µ»ШСЎФсґ«ЛНµШµгµД¶Ф»°ДЪИЭєНТіГж±аєЕ
	local ReSelectTalk = "I need to reconsiderЎ­"
	local ReSelectPage = 1

	--ИЎПыґ«ЛНєННЛіцґ«ЛНµД¶Ф»°єНТіГж±аєЕ
	local CancelSelectTalk = "Forget itЎ­I will stay here"
	local CancelSelectPage = 7

	--µШНјГыіЖРЕПў
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--°ЧТшЦ®іЗЧш±к
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--Йіб°Ц®іЗЧш±к
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--±щАЗ±¤Чш±к
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "Переместить er: Do you wish to leave the beautiful Treasure Gulf?" )
	Text( 1, "Go to Argent City!", JumpPage, 2 )
	Text( 1, "Go to Shaitan City!", JumpPage, 3 )
	Text( 1, "Go to Icicle City!", JumpPage, 4 )
	Text( 1, "Record Spawn point", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "Переместить s to Argent City? No problem! Please pay 500G." )
	Text( 2, "Переместить ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "I love Shaitan City! Please pay 500G" )
	Text( 3, "Переместить ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "Переместить s to Icicle City? No problem! Please pay 500G." )
	Text( 4, "Переместить ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 6, "Sorry! You do not have enough gold to Переместить ." )

	Talk( 7, "Remember to look for me if you need Переместить ation services", CloseTalk )
	Talk( 8, "..................^$&#&^%.................." )



	InitTrigger()
	TriggerAction( 1, JumpPage, 1 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	

end


-- Е®Йс
------------------------------------------------------------

	
function mmm_talk30()

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--°ЧТшЦ®іЗЧш±к
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1	

	Talk( 1, "Богиня: Привет я Богиня неба.Ты наверное пришёл ко мне чтобы пройти квест Перерождение Феникса или обменять руны Кель на БС " )
--	Text( 1, "Обменять руны Кель на Набор Босса ", JumpPage, 17 )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1322 )
	TriggerAction ( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 1, "Сердце разума ", MultiTrigger, GetMultiTrigger() ,1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2200, 2785, "garner" )
	Text( 1, "Отправь меня в Аргент.", MultiTrigger, GetMultiTrigger(), 1 )
	
	
	Talk( 2, "Goddess: Everyone can only select rewards according to their levels. Please select your level in the option below. Remember, dishonesty does not pay." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerCondition( 1, LvCheck, ">", 14 )
	TriggerAction ( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 16 )
	
	Text( 2, "Lv 15 - Lv 40",MultiTrigger, GetMultiTrigger() ,1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 40 )
	TriggerCondition( 1, LvCheck, "<", 61 )
	TriggerAction ( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 16 )

	Text( 2, "Lv 41 - Lv 60",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 60 )
	TriggerAction ( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 16 )
	Text( 2, "Lv 60 and above",MultiTrigger, GetMultiTrigger(), 1)


	Talk( 4, "Goddess: Seems like you are quite honest. I can convert your Honor points into gold or experience. If you are willing to dedicate all of your Honor points, you might even receive a surprise reward." )
	Text( 4, "Exchange Honor for gold", JumpPage, 7 )
	Text( 4, "Exchange Honor for experience", JumpPage, 8 )
	Text( 4, "I wish to dedicate all my Honor to the Goddess", JumpPage, 9 )


	Talk( 5, "Goddess: Seems like you are quite honest. I can convert your Honor points into gold or experience. If you are willing to dedicate all of your Honor points, you might even receive a surprise reward." )
	Text( 5, "Exchange Honor for gold", JumpPage, 10 )
	Text( 5, "Exchange Honor for experience", JumpPage, 11 )
	Text( 5, "I wish to dedicate all my Honor to the Goddess", JumpPage, 12 )

	Talk( 6, "Goddess: Seems like you are quite honest. I can convert your Honor points into gold or experience. If you are willing to dedicate all of your Honor points, you might even receive a surprise reward." )
	Text( 6, "Exchange Honor for gold", JumpPage, 13 )
	Text( 6, "Exchange Honor for experience", JumpPage, 14 )
	Text( 6, "I wish to dedicate all my Honor to the Goddess", JumpPage, 15 )

		InitFuncList()
	AddFuncList( CreditExchange,0 )
	Talk( 7, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for gold? All Honor points gained by you all these while will be gone." )
	Text( 7, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 7,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,3 )
	Talk( 8, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for experience? All Honor points gained by you all these while will be gone." )
	Text( 8, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 8,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 6 )--¶Ф»»З®
	Talk( 9, "Goddess: Do you wish to dedicate all your Honor to the Goddess? All Honor points gained by you all these while will be gone and you might not even get anything in return." )
	Text( 9, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 9,"Let me think again",JumpPage , 4 )


	InitFuncList()
	AddFuncList( CreditExchange,1 )
	Talk( 10, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for gold? All Honor points gained by you all these while will be gone." )
	Text( 10, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 10,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,4 )
	Talk( 11, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for experience? All Honor points gained by you all these while will be gone." )
	Text( 11, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 11,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 7 )--¶Ф»»З®
	Talk( 12, "Goddess: Do you wish to dedicate all your Honor to the Goddess? All Honor points gained by you all these while will be gone and you might not even get anything in return." )
	Text( 12, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 12,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,2 )
	Talk( 13, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for gold? All Honor points gained by you all these while will be gone." )
	Text( 13, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 13,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,5 )
	Talk( 14, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for experience? All Honor points gained by you all these while will be gone." )
	Text( 14, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 14,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 8 )
	Talk( 15, "Goddess: Do you wish to dedicate all your Honor to the Goddess? All Honor points gained by you all these while will be gone and you might not even get anything in return." )
	Text( 15, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 15,"Let me think again",JumpPage , 4 )

	Talk( 16, "Goddess: I know what your heart is telling you. Do not try to belittle me or you will be seeking death. I shall grant you another chance. Do not let me down." )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Text( 16, "I stand by my decision and I had not lied.", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 16,"Please forgive my ignorance. Allow me to reselect.",JumpPage , 2 )

	
	Talk( 17, "Богиня: Выберай какой набор Босса тебе нужен " )
	Text( 17, "Камни Гефеста (Чемпион )", JumpPage, 18)
	Text( 17, "Камни Гермеса (Воитель )", JumpPage, 19)
	Text( 17, "Камни Апаллона (Стрелок )", JumpPage, 20)
	Text( 17, "Камни Посейдона (Покоритель морей )", JumpPage, 21)
	Text( 17, "Камни Гестии (Целительница )", JumpPage, 22)
	Text( 17, "Камни Афины (Кольдунья)", JumpPage, 23)  
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2530, 1, 4 )
	TriggerAction( 1, GiveItem, 2531, 1, 4 )
	TriggerAction( 1, GiveItem, 2532, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 18, "Богиня: Ты должен быть 60 уровня и у тебя должно быть 5 келей." )
	Text( 18, "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2533, 1, 4 )
	TriggerAction( 1, GiveItem, 2534, 1, 4 )
	TriggerAction( 1, GiveItem, 2535, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 19, "Богиня: Ты должен быть 60 уровня и у тебя должно быть 5 келей." )
	Text( 19, "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2536, 1, 4 )
	TriggerAction( 1, GiveItem, 2537, 1, 4 )
	TriggerAction( 1, GiveItem, 2538, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 20, "Богиня: Ты должен быть 60 уровня и у тебя должно быть 5 келей." )
	Text( 20, "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2539, 1, 4 )
	TriggerAction( 1, GiveItem, 2540, 1, 4 )
	TriggerAction( 1, GiveItem, 2541, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 21, "Богиня: Ты должен быть 60 уровня и у тебя должно быть 5 келей." )
	Text( 21, "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2542, 1, 4 )
	TriggerAction( 1, GiveItem, 2543, 1, 4 )
	TriggerAction( 1, GiveItem, 2544, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 22, "Богиня: Ты должен быть 60 уровня и у тебя должно быть 5 келей." )
	Text( 22, "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2545, 1, 4 )
	TriggerAction( 1, GiveItem, 2546, 1, 4 )
	TriggerAction( 1, GiveItem, 2547, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 23, "Богиня: Ты должен быть 60 уровня и у тебя должно быть 5 келей." )
	Text( 23, "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 24, "Богиня: Или ты менее 60 уровня или у тя нету келей так что иди выполняй требования.")
	
	Talk( 25, "Богиня: Теперь ты должен ответить на следующие вопросы без колебания. Только если ты ответишь правильно на все вопросы, ты пройдешь испытание.")
	Text( 25, "Да, я могу начать сейчас.", JumpPage, 27)
	Text( 25, "Нет, мне нужно время.", CloseTalk )
	
	Talk( 26, "Богиня: Если ты не завершил выполнение задания или твой инвентарь полон, я не смогу отдать тебе Сердце Мудрости.")
	Text( 26, "Закрыть ", CloseTalk )
	
	Talk( 27, "Богиня: В каком городе проводились Олимпийские Игры 2008?")
	Text( 27, "Афины ", JumpPage, 28)
	Text( 27, "Пекин ", JumpPage, 29)
	Text( 27, "Шанхай ", JumpPage, 28)
	Text( 27, "Сидней ", JumpPage, 28)
	
	Talk( 28, "Богиня: Прости, ты ошибся. Возвращайся, когда найдешь правильный ответ.")
	Text( 28, "Закрыть ", CloseTalk )
	
	Talk( 29, "Богиня: Когда началось закрытое бета-тестирование Пиратии-Онлайн?")
	Text( 29, "Июнь 2007 года ", JumpPage, 28)
	Text( 29, "Ноябрь 2007 года ", JumpPage, 28)
	Text( 29, "Август 2006 года ", JumpPage, 28)
	Text( 29, "Август 2007 года ", JumpPage, 30)
	Text( 29, "Январь 2008 года ", JumpPage, 28)
	
	Talk( 30, "Богиня: Что символизируют пять олимпийских колец?")
	Text( 30, "Они символизируют силу пяти океанов.", JumpPage, 28)
	Text( 30, "Они символизируют пять Олимпийских добродетелей.", JumpPage, 28)
	Text( 30, "Они символизируют единство пяти континентов.", JumpPage, 31)
	Text( 30, "Они символизируют единство пяти народов. ", JumpPage, 28)
	
	Talk( 31, "Богиня: Сколько судов находятся в порту Морского Флота?")
	Text( 31, "1", JumpPage, 28)
	Text( 31, "2", JumpPage, 32)
	Text( 31, "3", JumpPage, 28)
	Text( 31, "4", JumpPage, 28)
		
	Talk( 32, "Ты закончил испытания. Принеси Сердце Мудрости, Сердце Верности, Сердце Бесстрашия, Любящее Сердце и Священный факел офицеру связи.")
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1322 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, ClearRecord, 1322 )
	TriggerAction( 1, GiveItem, 5801, 1, 4 )
	TriggerAction( 1, SetRecord, 1323 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 32, "Хорошо, я уже ухожу.", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 32, "Закрыть ", CloseTalk )

	AddNpcMission(6000)
	AddNpcMission (6277)
	AddNpcMission (6278)
	---------------2.0РВАъК·ИООс
--	AddNpcMission ( 6366 )
--	AddNpcMission ( 6367 )
--	AddNpcMission ( 6380 )
--	AddNpcMission ( 6381 )

end

function dydz_talk()


	Talk( 1, "Abaddon Vagabond: \"If you treasured your life, leave now! I have seen too much adventurers like you!\"" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 40,74, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
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
	
	Talk( 3, "What are you thinking? You don't have a boat that you can use anymore. Now scram if you value your life!" )
	Talk( 4, "Don't think that your boat will be repaired for free here. Dock your boat and prepare a fee of 1000G." )
	Talk( 5, "Don't think you can Заправить судно  your ship here for free. Dock your ship and prepare a fee of 200G." )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Abaddon Vagabond: Мая твая не панимать! " )

end


function dysr_talk ()

	Talk( 1, "Abaddon Merchant: On command of my lord, Death. I am here to provide help to you brave warriors, and to witness your deaths. Haha!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Repair", OpenRepair)

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

function r_talkmo1 () -- my ticket selling NPC

	Talk( 1, "Приветик,добро пожаловать в билетную кассу. " )
	Text( 1, "Купить .", BuyPage)
	

	InitTrade()
	Other(	5619	)
	Other(	5620	)
	Other(	5621	)
	Other(	5622	)
	Other(	5623	)
	Other(	5624	)
	Other(	5625	)
	Other(	7794	)
	Other(	7795	)
	Other(	7796	)
	Other(	7798	)
	Other(	7799	)
	Other(	7800	)
	Other(	7801	)
	Other(	7802	)
	Other(	7803	)
	Other(	7804	)
	Other(	7805	)
	Other(	7806	)
	Other(	7807	)

		
end 

function r_talkmo31 ()
	Talk( 1, "Привет я Биф Какао.Я продаю вещи которые тебе необходимы как воздух в игре." )
	Text( 1, "Давай посмотрю.", BuyPage)

	InitTrade()
	Other(	3342	) -- Люстра на защиту
	Other(	0849	) -- bananas
	Other(	3844	) -- heavens berry
	Other(	1128	) -- heavens berry
	Other(	3094	) -- Amp of strive
	Other(	3095	) -- Hi Amp of strive
	Other(	3845	) -- charmed berry
	Other(	3096	) -- amp of luck
	Other(	3097	) -- hi amp of luck
	Other(	3882	) -- super lucky fruit
	Other(	3105	) -- skating pot
	Other(	3846	) -- voodoo doll
	Other(	3300	) -- intense magic
	Other(	3301	) -- crystalline blessing
	Other(	3109	) -- str reset
	Other(	3110	) -- con reset
	Other(	3111	) -- agi reset
	Other(	3112	) -- acc reset
	Other(	3113	) -- spr reset
	Other(	3088	)
	Other(	3089	)
	Other(	3090	)
	Other(	3091	)
	Other(	3092	)
	Other(	3093	)
	Other(	2326	)
	Other(	3463	)
	Other(	3462	)
	Other(	1812	)

	Other(	2625	)
	Other(	2630	)
	Other(	2634	)
	Other(	2635	)
	Other(	2636	)
	Other(	2637	)
	Other(	2638	)
	Other(	2639	)
        Other(	1064	)
	Other(	1061	)

	Other(	1058	)
	Other(	1055	)
	Other(	1061	)

end

function r_talkmo5 () -- Job Changer1

	Talk( 1, "Привет я продаю профессии,ты должен быть 11 лвл и у тебя должно быть 1000 золотых.Выберай кто ты сейчас." )
        Text( 1, "Ланс.", JumpPage, 2 )
        Text( 1, "Карциз.", JumpPage, 6 )
        Text( 1, "Филис.", JumpPage, 8 )
        Text( 1, "Ами.", JumpPage, 14 )
 
        Talk( 2, "Кем ты хочешь быть." )
        Text( 2, "Мечником.", JumpPage, 3 )
        Text( 2, "Моряком.", JumpPage, 4 )
        Text( 2, "Охотником.", JumpPage, 5 )

   	-----------lance---------
        InitTrigger()
        TriggerCondition( 1, LvCheck, ">", 10 )
        TriggerCondition( 1, IsCategory, 1 )
        TriggerCondition( 1, PfEqual, 0 )
        TriggerCondition( 1, HasMoney, 1000, 1000 )
        TriggerAction( 1, TakeMoney, 1000, 1000 )
        TriggerAction( 1, SetProfession, 1 )
        TriggerAction( 1, JumpPage, 10 )
        TriggerFailure( 1, JumpPage, 11 )
   	Text( 3, "Да я хочю быть мечником.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 3, "Не,позже.", JumpPage, 2 )

	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
  	TriggerCondition( 1, IsCategory, 1 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerCondition( 1, HasMoney, 1000, 1000 )
   	TriggerAction( 1, TakeMoney, 1000, 1000 )
   	TriggerAction( 1, SetProfession, 4 )
   	TriggerAction( 1, JumpPage, 10 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 4, "Да я хочю быть моряком.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 4, "Не позже.", JumpPage, 2 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 1 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerCondition( 1, HasMoney, 1000, 1000 )
   	TriggerAction( 1, TakeMoney, 1000, 1000 )
   	TriggerAction( 1, SetProfession, 2 )
   	TriggerAction( 1, JumpPage, 10 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 5, "Да я буду охотником.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 5, "Не,позже.", JumpPage, 2 )

   	-----------carsise------------
   	Talk( 6, "Выбери кем ты хочешь быть?." )
   	Text( 6, "Я буду мечником.", JumpPage, 7 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 2 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerCondition( 1, HasMoney, 1000, 1000 )
   	TriggerAction( 1, TakeMoney, 1000, 1000 )
   	TriggerAction( 1, SetProfession, 1 )
   	TriggerAction( 1, JumpPage, 10 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 7, "Да я буду мечником.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 7, "Не,позже.", JumpPage, 6 )

   	-------------phillys--------------
   	Talk( 8, "Кем ты хочешь быть?.." )
   	Text( 8, "Я буду охотницей.", JumpPage, 9 )
   	Text( 8, "Я буду морячкой. ", JumpPage, 12 )
   	Text( 8, "Я буду Знахаркой. ", JumpPage, 13 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 3 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerCondition( 1, HasMoney, 1000, 1000 )
   	TriggerAction( 1, TakeMoney, 1000, 1000 )
   	TriggerAction( 1, SetProfession, 2 )
   	TriggerAction( 1, JumpPage, 10 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 9, "Да я буду охотнецей.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 9, "Не,позже.", JumpPage, 8 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 3 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerCondition( 1, HasMoney, 1000, 1000 )
   	TriggerAction( 1, TakeMoney, 1000, 1000 )
   	TriggerAction( 1, SetProfession, 4 )
   	TriggerAction( 1, JumpPage, 10 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 12, "Да я быду морячкой.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 12, "Не позже.", JumpPage, 8 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 3 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerCondition( 1, HasMoney, 1000, 1000 )
   	TriggerAction( 1, TakeMoney, 1000, 1000 )
   	TriggerAction( 1, SetProfession, 5 )
   	TriggerAction( 1, JumpPage, 10 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 13, "Да я буду знахаркой.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 13, "Нет.", JumpPage, 8 )


   	-------------Ami--------------
   	Talk( 14, "Кем ты будешь." )
   	Text( 14, "Морячкой.", JumpPage, 15 )
   	Text( 14, "Знахаркой.", JumpPage, 16 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 4 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerCondition( 1, HasMoney, 1000, 1000 )
   	TriggerAction( 1, TakeMoney, 1000, 1000 )
   	TriggerAction( 1, SetProfession, 4 )
   	TriggerAction( 1, JumpPage, 10 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 15, "Да я буду морячкой.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 15, "Нет не буду.", JumpPage, 14 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 4 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerCondition( 1, HasMoney, 1000, 1000 )
   	TriggerAction( 1, TakeMoney, 1000, 1000 )
   	TriggerAction( 1, SetProfession, 5 )
   	TriggerAction( 1, JumpPage, 10 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 16, "Да я буду знахаркой.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 16, "Нет не буду.", JumpPage, 14 )

   	Talk( 10, "Ты успешно получил(а) профессию.")
   	Talk( 11, "Прости ты не соответствуешь требованиям.!")
end

function r_talkmo6 () -- Job Changer2
Talk( 1, "Привет я продаю профессии,ты должен быть 41 лвл и у тебя должно быть 5000 золотых.Выберай кто ты сейчас." )
   Text( 1, "Ланс.", JumpPage, 2 )
   Text( 1, "Карциз.", JumpPage, 6 )
   Text( 1, "Филис.", JumpPage, 8 )
   Text( 1, "Ами.", JumpPage, 17 )	
	
   Talk( 2, "Выберай клас." )
   Text( 2, "Круз.", JumpPage, 3 )
   Text( 2, "Вой.", JumpPage, 4 )
   Text( 2, "Шарп.", JumpPage, 5 )

   -----------lance---------
   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 1 )
   TriggerCondition( 1, PfEqual, 1 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 13 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 3, "Да я буду крузом.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 3, "Не,позже.", JumpPage, 2 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 1 )
   TriggerCondition( 1, PfEqual, 4 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 16 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 4, "Да я буду Воем.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 4, "Не ,поже.", JumpPage, 2 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 1 )
   TriggerCondition( 1, PfEqual, 2 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 12 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 5, "Да я буду Шарпом. ", MultiTrigger, GetMultiTrigger(), 2)
   Text( 5, "Не позже.", JumpPage, 2 )

   -----------carsise------------
   Talk( 6, "Кем ты хочешь быть?." )
   Text( 6, "Чемпионом.", JumpPage, 7 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 2 )
   TriggerCondition( 1, PfEqual, 1 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 8 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 7, "Да я буду чемпионом.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 7, "Не,позже.", JumpPage, 6 )

   -------------phillys--------------
   Talk( 8, "Кем ты хочешь быть?." )
   Text( 8, "Шарпом.", JumpPage, 9 )
   Text( 8, "Воем.", JumpPage, 12 )
   Text( 8, "СМ.", JumpPage, 13 )
   Text( 8, "Клером.", JumpPage, 14 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 3 )
   TriggerCondition( 1, PfEqual, 2 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 12 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 9, "Да я буду Шарпом.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 9, "Нет не буду.", JumpPage, 8 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 3 )
   TriggerCondition( 1, PfEqual, 4 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 16 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 12, "Да я буду воем.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 12, "Не,позже.", JumpPage, 8 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 3 )
   TriggerCondition( 1, PfEqual, 5 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 14 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 13, "Да я буду СМ.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 13, "Не,позже.", JumpPage, 8 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 3 )
   TriggerCondition( 1, PfEqual, 5 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 13 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 14, "Да я буду Клером.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 14, "Не позже.", JumpPage, 8 )

   -------------Amy--------------
   Talk( 17, "А кем ты хочешь быть?." )
   Text( 17, "Воем.", JumpPage, 20 )
   Text( 17, "СМ.", JumpPage, 21 )
   Text( 17, "Клером.", JumpPage, 22 )
   Text( 17, "Крузом.", JumpPage, 23 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 4 )
   TriggerCondition( 1, PfEqual, 4 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 16 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 20, "Да я буду Воем.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 20, "Небуду.", JumpPage, 17 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 4 )
   TriggerCondition( 1, PfEqual, 5 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 14 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 21, "Да я буду СМ.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 21, "Небуду.", JumpPage, 17 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 4 )
   TriggerCondition( 1, PfEqual, 5 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 13 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 22, "Я буду Клером.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 22, "Небуду.", JumpPage, 17 )
    
   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 4 )
   TriggerCondition( 1, PfEqual, 5 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 9 )
   TriggerAction( 1, JumpPage, 10 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 23, "Я буду Клером.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 23, "Небуду.", JumpPage, 17 )

   Talk( 10, "Ты получил профессию.")
   Talk( 11, "ПНХ ты меня не надуешь.!")

end

function r_talkmo96 ()

	Talk( 1, "Привет я всё продаю для ковки налетай)))" )
	Text( 1, "Купить.", BuyPage)
	
	InitTrade()
	Other(	0453	)--Lance Wild West Hat
	Other(	0454	)--Lance Wild West Suit
	Other(	0455	)--Lance Wild West Boots
	Other(	0456	)
	Other(	0890	)
	Other(	0891	)
	Other(	3074	)
	Other(	3075	)
	Other(	1020	)

end


function r_talkmo95 ()

	Talk( 1, "Привет я продаю кораллы .)))" )
	Text( 1, "Купить.", BuyPage)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 41 )


	InitTrade()
	Other(	0817	)--Lance Wild West Hat
	Other(	0818	)--Lance Wild West Suit
	Other(	0819	)--Lance Wild West Boots
	Other(	0820	)--Phyllis Wild West Coat
	Other(	0821	)--Phyllis Wild West Gloves
	Other(	0867	)--Phyllis Wild West Boots
	Other(	0869	)--Carsise Wild West Hat
	Other(	0870	)--Carsise Wild West Jacket
	Other(	0871	)--Carsise Wild West Gloves
	Other(	0872	)--Carsise Wild West Boots
	Other(	0873	)--Ami Wild West Hat
	Other(	0874	)--Ami Wild West Suit
	Other(	0875	)--Ami Wild West Gloves
	Other(	0876	)--Ami Wild West Boots
	Other(	0635  	)
	Other(	0636  	)
	Other(	0637  	)
	Other(	0638  	)
	Other(	0639 	)

end

function Books() -- Продавец Скилов
 Talk( 1, "Продавец: Привет, здесь ты сможешь купить книги для любой профессии " )
   Text( 1, " Купить ", BuyPage)
   Text( 1, " Комбинировать ", OpenUnite)
   Text( 1, " Я уже ухожу.. ",CloseTalk )

   InitTrade()
   	Other(   0886   )
--	Other(   7695   )
   	Other(   3297   )
   	Other(   3298   )
   	Other(   3164   )
   	Other(   3160   )
   	Other(   3161   )
   	Other(   3165   )
   	Other(   3238   )
   	Other(   3170   )
   	Other(   3293   )
   	Other(   3174   )
   	Other(   3163   )
   	Other(   3176   )
   	Other(   3180   )
   	Other(   3179   )
   	Other(   3177   )
   	Other(   3168   )
   	Other(   3162   )
   	Other(   3166   )
   	Other(   3167   )
   	Other(   3172   )
   	Other(   3173   )
   	Other(   3227   )
   	Other(   3231   )
   	Other(   3228   )
   	Other(   3229   )
   	Other(   3230   )
   	Other(   3232   )
   	Other(   3233   )
   	Other(   3234   )
   	Other(   3235   )
   	Other(   3236   )
   	Other(   3237   )
   	Other(   3187   )
   	Other(   3188   )
   	Other(   3190   )
   	Other(   3239   )
   	Other(   3197   )
   	Other(   3193   )
   	Other(   3241   )
   	Other(   3192   )
   	Other(   3198   )
   	Other(   3202   )
   	Other(   3203   )
   	Other(   3204   )
   	Other(   3206   )
   	Other(   3208   )
   	Other(   3205   )
   	Other(   3242   )
   	Other(   3210   )
   	Other(   3207   )
   	Other(   3211   )
   	Other(   3215   )
   	Other(   3212   )
   	Other(   3209   )
   	Other(   3220   )
   	Other(   3222   )
   	Other(   3219   )
   	Other(   3218   )
   	Other(   3216   )
   	Other(   3223   )
   	Other(   3217   )
   	Other(   3224   )
   	Other(   3225   )
   	Other(   3226   )
   	Other(   3294   )
   	Other(   3295   )
   	Other(   3296   )
	Other(	3299	)
	--baby--Йъ»ојјДЬКйLv1
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
--	Other(	3288	) -- Скилл "Ученичество"


end

function trade_47()

	Talk( 1, "Привет я обменик рун на короны " )
	Text( 1, "Обменять руны на короны ", JumpPage, 2)

	Talk( 2, "Тебе надо 10 рун nal,sol,ja,el,cam,tef,yal,lum,fel и 1 руна кель " )
	Text( 2, "Судьба Артура ", JumpPage, 5)
	Text( 2, "Церемониальная корона короля ", JumpPage, 6)

	Talk( 4, "Мая твая не панимать! " )

	Talk(5,"Ты точно согласен? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,2)
	TriggerAction( 1, TakeItem, 3425,10)
	TriggerAction( 1, TakeItem, 3426,10)
	TriggerAction( 1, TakeItem, 3427,10)
	TriggerAction( 1, TakeItem, 3428,10)
	TriggerAction( 1, TakeItem, 3429,10)
	TriggerAction( 1, TakeItem, 3430,10)
	TriggerAction( 1, TakeItem, 3431,10)
	TriggerAction( 1, TakeItem, 3432,10)
	TriggerAction( 1, TakeItem, 3433,10)
	TriggerAction( 1, GiveItem, 7002,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(5,"Да я согласен ",MultiTrigger,GetMultiTrigger(),1)

	Talk(6,"Ты точно согласен? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,1 )
	TriggerAction( 1, TakeItem, 3425,10)
	TriggerAction( 1, TakeItem, 3426,10)
	TriggerAction( 1, TakeItem, 3427,10)
	TriggerAction( 1, TakeItem, 3428,10)
	TriggerAction( 1, TakeItem, 3429,10)
	TriggerAction( 1, TakeItem, 3430,10)
	TriggerAction( 1, TakeItem, 3431,10)
	TriggerAction( 1, TakeItem, 3432,10)
	TriggerAction( 1, TakeItem, 3433,10)
	TriggerAction( 1, GiveItem, 7001,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(6,"Да я согласен ",MultiTrigger,GetMultiTrigger(),1) 


	AddNpcMission ( 393 )
        AddNpcMission ( 567 )
end

function r_talkmo2008 () -- my ticket selling NPC

	Talk( 1, "Привет я продавец фейверков " )
	Text( 1, "Купить.", BuyPage)

	InitTrade()
	TriggerCondition( 2, LvCheck, ">", 41 )
	Weapon(	3343	)
	Weapon(	3344	)
	Weapon(	3345	)
	Weapon(	3346	)
	Weapon(	3347	)
	Weapon(	3348	)
	Weapon(	3349	)
	Weapon(	3350	)
	Weapon(	3351	)
	Weapon(	3352	)
	Weapon(	3353	)
	Weapon(	3354	)
	Weapon(	3355	)
	Weapon(	3356	)
	Weapon(	3357	)
	Weapon(	3358	)
	Weapon(	3359	)
	Weapon(	2900	)


end 

function r_talkmo2009()

	Talk( 1, "Привет я обменик рун кель на уникальные 85 кольца который светятся с дет сетом " )
	Text( 1, "Обменять ", JumpPage, 2)

	Talk( 2, "Одно кольцо стоит 10 рун кель.Выберай какое тебе нужно " )
	Text( 2, "Сила Хардина ", JumpPage, 5)
	Text( 2, "Сила тьмы ", JumpPage, 6)
	Text( 2, "Адское перышко ", JumpPage, 7)
	Text( 2, "Душа Асуры ", JumpPage, 8 )
	Text( 2, "Очернение стикса ", JumpPage, 9)
	Text( 2, "Следующия страница -->", JumpPage, 3)

	Talk( 3, "Привет я обменик рун кель на уникальные 85 кольца которые сведятся с дет сетом " )
	Text( 3, "Кристал духа Бездны ", JumpPage, 10)

	Talk(5,"Тебе точно это кольцо нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,10 )
	TriggerAction( 1, GiveItem, 2577,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(5,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(6,"Ты уверен что тебе нужно это кольцо? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,10 )
	TriggerAction( 1, GiveItem, 2578,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(6,"Да ",MultiTrigger,GetMultiTrigger(),1) 

	Talk(7,"Тебе точно нужно это кольцо? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,10 )
	TriggerAction( 1, GiveItem, 2579,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(7,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(8,"Тебе точно нужно это кольцо? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,10 )
	TriggerAction( 1, GiveItem, 2580,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(8,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(9,"Тебе точно нужно это кольцо? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,10 )
	TriggerAction( 1, GiveItem, 2581,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(9,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(10,"Тебе точно нужно это кольцо? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,10 )
	TriggerAction( 1, GiveItem, 2582,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(10,"Да ",MultiTrigger,GetMultiTrigger(),1)

end

--function r_talkmo2010 ()

--	Talk( 1, "Я могу тебя отправить в Абадоны.Тебе куда? " )

--	Text( 1, "\194 \192\225\224\228\238\237 1", GoTo, 199, 824, "jialebi")
--	Text( 1, "\194 \192\225\224\228\238\237 2", GoTo, 79, 823, "jialebi")
--	Text( 1, "\194 \192\225\224\228\238\237 3", GoTo, 70, 944, "jialebi")
--	Text( 1, "\194 \192\225\224\228\238\237 4", GoTo, 198, 953, "jialebi")

--end

--function r_talkmo2011 ()

--	Talk( 1, "Я могу тебя на босов Абадона.Тебя на какого отправить? " )
--
--	Text( 1, "\202 \199\229\235\184\237\238\236\243 \207\240\232\231\240\224\234\243", GoTo, 26, 187, "hell")
--	Text( 1, "\202 \195\240\255\231\232\235\232\249\243", GoTo, 221, 38, "hell")
--	Text( 1, "\202 \208\251\246\224\240\254", GoTo, 32, 31, "hell")
--	Text( 1, "\202 \211\236\234\232", GoTo, 148, 183, "hell")


--end

function r_talkmo2012()

	Talk( 1, "Я обменик келей на 85 ансилы " )
	Text( 1, "Обменять ", JumpPage, 2)

	Talk( 2, "Выберай какой тебе нужен.Стоит один 80 келей. " )
	Text( 2, "Щит Ауры ", JumpPage, 5)
	Text( 2, "Щит короля ринга ", JumpPage, 6)
	Text( 2, "Меч Крузу(14стр),(6кон) ", JumpPage, 7)
	Text( 2, "Меч крузу(14аги)(6кон) ", JumpPage, 8 )
	Text( 2, "Меч чампу(28стр)(8акк)(8кон) ", JumpPage, 9)
	Text( 2, "Следующия страница -->", JumpPage, 3)

	Talk( 3, "Выберай какой тебе нужен.Стоит один 80 келей. " )
	Text( 3, "Меч Чампу(20стр)(8акк)(16кон) ", JumpPage, 10)
	Text( 3, "Пуха шарпу(20аги)(16кон) ", JumpPage, 11)
	Text( 3, "Пуха шарпу(20акк)(16кон) ", JumpPage, 12)
	Text( 3, "Лук шарпу(20акк)(16кон) ", JumpPage, 13)
	Text( 2, "Следующия страница -->", JumpPage, 4)

	Talk( 4, "Выберай какой тебе нужен.Стоит один 80 келей. ")
	Text( 4, "Лук шарпу(20акк)(дух16) ", JumpPage, 14)
	Text( 4, "Клинок вою(36дух) ", JumpPage, 15)
	Text( 4, "Клинок вою(26кон)(10дух) ", JumpPage, 16)
	Text( 4, "Посох клеру(8акк)(6кон) ", JumpPage, 17)
	Text( 4, "Посох клеру(8акк)(12кон)(24дух) ", JumpPage, 18)
	Text( 4, "Посох СМ (12кон)(24дух) ", JumpPage, 19)
	Text( 4, "Посох СМ (6аги)(30дух) ", JumpPage, 20)

	Talk(5,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5900,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(5,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(6,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5901,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(6,"Да ",MultiTrigger,GetMultiTrigger(),1) 

	Talk(7,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5902,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(7,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(8,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5903,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(8,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(9,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5904,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(9,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(10,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5905,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(10,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(11,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5906,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(11,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(12,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5907,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(12,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(13,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80)
	TriggerAction( 1, GiveItem, 5908,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(13,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(14,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 ) 
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5909,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(14,"Да ",MultiTrigger,GetMultiTrigger(),1) 

	Talk(15,"Ты уверен что тебе нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5910,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(15,"Да ",MultiTrigger,GetMultiTrigger(),1) 

	Talk(16,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5911,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(16,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(17,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80)
	TriggerAction( 1, GiveItem, 5912,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(17,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(18,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 ) 
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5913,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(18,"Да ",MultiTrigger,GetMultiTrigger(),1) 

	Talk(19,"Ты уверен что тебе нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5914,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(19,"Да ",MultiTrigger,GetMultiTrigger(),1) 

	Talk(20,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,80 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,80 )
	TriggerAction( 1, GiveItem, 5915,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(20,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk( 17, "Извини ну у тя недостаточно келей " )

end

function r_talkmo2013 ()

	Talk( 1, "\207\240\232\226\229\242 \255 \236\238\227\243 \238\242\239\240\224\226\232\242\252 \242\229\225\255 \226 \192\225\224\228\238\237 \237\224 \193\196 \225\238\241\241\238\226" )

	Text( 1, "\206\242\239\240\224\226\232\242\252\241\255", GoTo, 170, 184, "hell3")

end

function BopoHangel_1 ()

	Talk( 1, "\207\240\232\226\229\242 \255 \239\240\238\228\224\254 \248\224\239\234\232 \237\224 \235\224\237\241\224" )

	Text( 1, "\202\243\239\232\242\252", BuyPage )

	InitTrade ()
	Weapon(	5472	)
	Weapon(	5473	)
	Weapon(	5474	)
	Weapon(	5475	)
	Weapon(	5476	)
	Weapon(	5477	)
	Weapon(	5478	)
	Weapon(	5479	)
	Weapon(	5480	)
	Weapon(	5481	)
	Weapon(	5482	)
	Weapon(	5483	)
	Weapon(	5484	)
	Weapon(	5485	)
	Weapon(	5486	)
	Weapon(	5487	)
	Weapon(	2553	)
	Weapon(	2583	)
	Weapon(	2584	)


end

function BopoHangel_2()


	Talk( 1, "Привет я продавец уникальных апарелий на Ланса " )
	Text( 1, "Торг ", BuyPage )

	Talk( 4, "Ву Ксин: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Defence(	5634	)
	Defence(	5635	)
	Defence(	5636	)
	Defence(	5637	)
	Defence(	5742	)--Lance Wild West Cap
	Defence(	5743	)--Lance Wild West Robe
	Defence(	5744	)--Lance Wild West Gloves
	Defence(	5745	)--Lance Wild West Boots
	Defence(	5862	)--Lance Wild West Cap
	Defence(	5863	)--Lance Wild West Robe
	Defence(	5864	)--Lance Wild West Gloves
	Defence(	5865	)--Lance Wild West Boots
	Defence(	5372	)
	Defence(	5373	)
	Defence(	5374	)
	Defence(	5375	)
	Defence(	5726	)--Lance Wild West Cap
	Defence(	5727	)--Lance Wild West Robe
	Defence(	5728	)--Lance Wild West Gloves
	Defence(	5729	)--Lance Wild West Boots
	Defence(	5651	)--Lance Wild West Cap
	Defence(	5652	)--Lance Wild West Robe
	Defence(	5653	)--Lance Wild West Gloves
	Defence(	5654	)--Lance Wild West Boots
	Defence(	5970	)--Lance Wild West Boots
	Defence(	5971	)--Lance Wild West Robe
	Defence(	5972	)--Lance Wild West Gloves
	Defence(	5973	)--Lance Wild West Boots
	Defence(	5858	)--Lance Wild West Boots
	Defence(	5859	)--Lance Wild West Robe
	Defence(	5860	)--Lance Wild West Gloves
	Defence(	5861	)--Lance Wild West Boots
	Defence(	5341	)
	Defence(	5342	)
	Defence(	5343	)
	Defence(	100000	)
	Defence(	5356	)
	Defence(	5357	)
	Defence(	5358	)
	Defence(	100000	)
	Defence(	5488	)--Violaceous Dragon Armor
	Defence(	5489	)--Violaceous Dragon Gloves
	Defence(	5490	)--Violaceous Dragon Boots
	Defence(	100000	)
	Defence(	5992	)--Lance Wild West Robe
	Defence(	5993	)--Lance Wild West Gloves
	Defence(	5994	)--Lance Wild West Boots



	AddNpcMission ( 393 )
        AddNpcMission ( 567 )
end

function BopoHangel_3()


	Talk( 1, "Привет я продавец уникальных апарелий на Карциза " )
	Text( 1, "Торг ", BuyPage )

	Talk( 4, "Ву Ксин: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Defence(	5634	)
	Defence(	5635	)
	Defence(	5636	)
	Defence(	5637	)
	Defence(	5360	)
	Defence(	5361	)
	Defence(	5362	)
	Defence(	5363	)
	Defence(	5862	)--Lance Wild West Cap
	Defence(	5863	)--Lance Wild West Robe
	Defence(	5864	)--Lance Wild West Gloves
	Defence(	5865	)--Lance Wild West Boots
	Defence(	5376	)
	Defence(	5377	)
	Defence(	5378	)
	Defence(	5379	)
	Defence(	5746	)
	Defence(	5747	)
	Defence(	5748	)
	Defence(	5749	)
	Defence(	5730	)--Carsise Wild West Cap
	Defence(	5731	)--Carsise Wild West Robe
	Defence(	5732	)--Carsise Wild West Gloves
	Defence(	5733	)--Carsise Wild West Boots
	Defence(	5655	)--Carsise Wild West Cap
	Defence(	5656	)--Carsise Wild West Robe
	Defence(	5657	)--Carsise Wild West Gloves
	Defence(	5658	)--Carsise Wild West Boots
	Defence(	5974	)--Carsise Wild West Cap
	Defence(	5975	)--Carsise Wild West Robe
	Defence(	5976	)--Carsise Wild West Gloves
	Defence(	5977	)--Carsise Wild West Boots
	Defence(	5345	)
	Defence(	5346	)
	Defence(	5347	)
	Defence(	100000	)
	Defence(	5488	)--Violaceous Dragon Armor
	Defence(	5489	)--Violaceous Dragon Gloves
	Defence(	5490	)--Violaceous Dragon Boots



	AddNpcMission ( 393 )
        AddNpcMission ( 567 )
end

function BopoHangel_4()


	Talk( 1, "Привет я продавщица уникальных апарелий на Филис " )
	Text( 1, "Торг ", BuyPage )

	Talk( 4, "Ву Ксин: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Defence(	5634	)
	Defence(	5635	)
	Defence(	5636	)
	Defence(	5637	)
	Defence(	5734	)--Phyllis Wild West Hat
	Defence(	5735	)--Phyllis Wild West Robe
	Defence(	5736	)--Phyllis Wild West Gloves
	Defence(	5737	)--Phyllis Wild West Boots
	Defence(	5862	)--Lance Wild West Cap
	Defence(	5863	)--Lance Wild West Robe
	Defence(	5864	)--Lance Wild West Gloves
	Defence(	5865	)--Lance Wild West Boots
	Defence(	5978	)--Phyllis Wild West Boots
	Defence(	5979	)--Phyllis Wild West Hat
	Defence(	5980	)--Phyllis Wild West Robe
	Defence(	5981	)--Phyllis Wild West Robe
	Defence(	5364	)
	Defence(	5365	)
	Defence(	5366	)
	Defence(	5367	)
	Defence(	5380	)
	Defence(	5381	)
	Defence(	5382	)
	Defence(	5383	)
	Defence(	5349	)
	Defence(	5350	)
	Defence(	5351	)
	Defence(	100000	)
	Defence(	5488	)--Violaceous Dragon Armor
	Defence(	5489	)--Violaceous Dragon Gloves
	Defence(	5490	)--Violaceous Dragon Boots


	AddNpcMission ( 393 )
        AddNpcMission ( 567 )
end

function BopoHangel_5()

	Talk( 1, "Привет я продавщица уникальных апарелий на Ами " )
	Text( 1, "Торг ", BuyPage )

	Talk( 4, "Ву Ксин: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Defence(	5634	)
	Defence(	5635	)
	Defence(	5636	)
	Defence(	5637	)
	Defence(	5982	)--Ami Wild West Diadem
	Defence(	5983	)--Ami Wild West Robe
	Defence(	5984	)--Ami Wild West Gloves
	Defence(	5985	)--Ami Wild West Boots
	Defence(	5862	)--Lance Wild West Cap
	Defence(	5863	)--Lance Wild West Robe
	Defence(	5864	)--Lance Wild West Gloves
	Defence(	5865	)--Lance Wild West Boots
	Defence(	5738	)
	Defence(	5739	)
	Defence(	5740	)
	Defence(	5741	)
	Defence(	5352	)
	Defence(	5353	)
	Defence(	5354	)
	Defence(	5355	)
	Defence(	5368	)
	Defence(	5369	)
	Defence(	5370	)
	Defence(	5371	)
	Defence(	5384	)
	Defence(	5385	)
	Defence(	5386	)
	Defence(	5387	)
	Defence(	5488	)--Violaceous Dragon Armor
	Defence(	5489	)--Violaceous Dragon Gloves
	Defence(	5490	)--Violaceous Dragon Boots
--	Defence(	5757	)
--	Defence(	5758	)
--	Defence(	5759	)
--	Defence(	5760	)
--	Defence(	5795	)
--	Defence(	5786	)
--	Defence(	5787	)
--	Defence(	5788	)
--	Defence(	5789	)
--	Defence(	5796	)
--	Defence(	5797	)
--	Defence(	5776	)


	AddNpcMission ( 393 )
        AddNpcMission ( 567 )
end

function eviltrade_09()

	Talk( 1, "Привет дружок. Я могу обменять тебе 2 ангельских кости,лут с Боссов Абаддона(Хандры) на 85 ансилы." )
	Text( 1, "Обменять ", JumpPage, 2)

	Talk( 2, "Выберай какой тебе нужен " )
	Text( 2, "Легкий ледяной Меч ", JumpPage, 5)
	Text( 2, "Тяжелый ледяной Меч ", JumpPage, 6)
	Text( 2, "Ледяной Шип ", JumpPage, 7)
	Text( 2, "Ледяное Злое Копье ", JumpPage, 8)
	Text( 2, "Волшебный ледяной Лук ", JumpPage, 9 )
	Text( 2, "Следующия страница -->", JumpPage, 3)

	Talk( 3, "Выберай какой тебе нужен " )
	Text( 3, "Оперенный ледяной Посох ", JumpPage, 10)
	Text( 3, "Замерзший ледяной Посох ", JumpPage, 11)
	Text( 3, "Яростный Снежный Меч ", JumpPage, 12)
	Text( 3, "Святой Снежный Щит ", JumpPage, 13)
	Text( 3, "Предыдущия страница <--", JumpPage, 2)
	

	Talk(5,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2846,2 )
	TriggerAction( 1, TakeItem, 2847,2 )
	TriggerAction( 1, TakeItem, 2848,2 )
	TriggerAction( 1, TakeItem, 2849,2 )
	TriggerAction( 1, TakeItem, 2850,2 )
	TriggerAction( 1, TakeItem, 2851,2 )
	TriggerAction( 1, TakeItem, 2852,2 )
	TriggerAction( 1, TakeItem, 2853,2 )
	TriggerAction( 1, TakeItem, 0271,2 )
	TriggerAction( 1, GiveItem, 4274,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(5,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(6,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2846,2 )
	TriggerAction( 1, TakeItem, 2847,2 )
	TriggerAction( 1, TakeItem, 2848,2 )
	TriggerAction( 1, TakeItem, 2849,2 )
	TriggerAction( 1, TakeItem, 2850,2 )
	TriggerAction( 1, TakeItem, 2851,2 )
	TriggerAction( 1, TakeItem, 2852,2 )
	TriggerAction( 1, TakeItem, 2853,2 )
	TriggerAction( 1, TakeItem, 0271,2 )
	TriggerAction( 1, GiveItem, 4275,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(6,"Да ",MultiTrigger,GetMultiTrigger(),1) 

	Talk(7,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2846,2 )
	TriggerAction( 1, TakeItem, 2847,2 )
	TriggerAction( 1, TakeItem, 2848,2 )
	TriggerAction( 1, TakeItem, 2849,2 )
	TriggerAction( 1, TakeItem, 2850,2 )
	TriggerAction( 1, TakeItem, 2851,2 )
	TriggerAction( 1, TakeItem, 2852,2 )
	TriggerAction( 1, TakeItem, 2853,2 )
	TriggerAction( 1, TakeItem, 0271,2 )
	TriggerAction( 1, GiveItem, 4276,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(7,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(8,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2846,2 )
	TriggerAction( 1, TakeItem, 2847,2 )
	TriggerAction( 1, TakeItem, 2848,2 )
	TriggerAction( 1, TakeItem, 2849,2 )
	TriggerAction( 1, TakeItem, 2850,2 )
	TriggerAction( 1, TakeItem, 2851,2 )
	TriggerAction( 1, TakeItem, 2852,2 )
	TriggerAction( 1, TakeItem, 2853,2 )
	TriggerAction( 1, TakeItem, 0271,2 )
	TriggerAction( 1, GiveItem, 4277,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(8,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(9,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2846,2 )
	TriggerAction( 1, TakeItem, 2847,2 )
	TriggerAction( 1, TakeItem, 2848,2 )
	TriggerAction( 1, TakeItem, 2849,2 )
	TriggerAction( 1, TakeItem, 2850,2 )
	TriggerAction( 1, TakeItem, 2851,2 )
	TriggerAction( 1, TakeItem, 2852,2 )
	TriggerAction( 1, TakeItem, 2853,2 )
	TriggerAction( 1, TakeItem, 0271,2 )
	TriggerAction( 1, GiveItem, 4278,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(9,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(10,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2846,2 )
	TriggerAction( 1, TakeItem, 2847,2 )
	TriggerAction( 1, TakeItem, 2848,2 )
	TriggerAction( 1, TakeItem, 2849,2 )
	TriggerAction( 1, TakeItem, 2850,2 )
	TriggerAction( 1, TakeItem, 2851,2 )
	TriggerAction( 1, TakeItem, 2852,2 )
	TriggerAction( 1, TakeItem, 2853,2 )
	TriggerAction( 1, TakeItem, 0271,2 )
	TriggerAction( 1, GiveItem, 4279,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(10,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(11,"Ты уверен что тебе это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2846,2 )
	TriggerAction( 1, TakeItem, 2847,2 )
	TriggerAction( 1, TakeItem, 2848,2 )
	TriggerAction( 1, TakeItem, 2849,2 )
	TriggerAction( 1, TakeItem, 2850,2 )
	TriggerAction( 1, TakeItem, 2851,2 )
	TriggerAction( 1, TakeItem, 2852,2 )
	TriggerAction( 1, TakeItem, 2853,2 )
	TriggerAction( 1, TakeItem, 0271,2 )
	TriggerAction( 1, GiveItem, 4280,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(11,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(12,"Вы уверены что это вам надо? ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2846,2 )
	TriggerAction( 1, TakeItem, 2847,2 )
	TriggerAction( 1, TakeItem, 2848,2 )
	TriggerAction( 1, TakeItem, 2849,2 )
	TriggerAction( 1, TakeItem, 2850,2 )
	TriggerAction( 1, TakeItem, 2851,2 )
	TriggerAction( 1, TakeItem, 2852,2 )
	TriggerAction( 1, TakeItem, 2853,2 )
	TriggerAction( 1, TakeItem, 0271,2 )
	TriggerAction( 1, GiveItem, 4281,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(12,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(13,"Вы уверены что вам это нужно? ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2846,2 )
	TriggerAction( 1, TakeItem, 2847,2 )
	TriggerAction( 1, TakeItem, 2848,2 )
	TriggerAction( 1, TakeItem, 2849,2 )
	TriggerAction( 1, TakeItem, 2850,2 )
	TriggerAction( 1, TakeItem, 2851,2 )
	TriggerAction( 1, TakeItem, 2852,2 )
	TriggerAction( 1, TakeItem, 2853,2 )
	TriggerAction( 1, TakeItem, 0271,2 )
	TriggerAction( 1, GiveItem, 4282,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(13,"Да ",MultiTrigger,GetMultiTrigger(),1)


	Talk( 18, "Извените но увас недостаточно предметов для обмена=( " )

end

function BopoH()

    	Talk(1, "Жрец: Приветствую тебя от имени богов. Могу ли я чем то помочь? ")
    	Text(1, "Я хочу получить Полное Благославление. " , FullBuff,1)
    	--Text(1, "Я хочу получить Благословление новичка. " , JumpPage,2)
    	--Text(1, "Я хочу получить улучшающее заклинание. " , JumpPage,3)
    	Text(1, "Прощай " , CloseTalk)
    
    	Talk(2, "Жрец: Благосклонности богов добиться не так то просто. Ты готов пожертвовать 1000 золотых монет во имя их славы? ")
    	Text(2, "Укрепи мое тело (+20 защиты) ", NewbieBuff1, 1)
    	Text(2, "Помоги одолеть врагов (+10 атаки) ", NewbieBuff2, 1)
    	Text(2, "Дай мне волю к жизни (+50 жизни) ", NewbieBuff3, 1)
    	Text(2, "Назад " , JumpPage,1)
    
    	Talk(3, "Жрец: Не хватает силы на очередной подвиг? Я могу помочь тебе, однако мои услуги стоят денег. Будь готов заплатить мне 10 тысяч золотых монет. ")
    	Text(3, "Получить Призрачный огонь ", StandartBuff1, 1)
    	Text(3, "Получить Закалку ", StandartBuff2, 1)
    	Text(3, "Получить Ангельский щит ", StandartBuff3, 1)
    	Text(3, "Получить Интенсивную магию ", StandartBuff4, 1)
    	Text(3, "Назад " , JumpPage,1)

end

function BopoHangel10 ()

	Talk( 1, "Привет я продавщица уникальных апарелий оружий " )
	Text( 1, "Торг ", BuyPage )

	Talk( 4, "Ву Ксин: Мая твая не панимать! " )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Weapon(	5990	)
	Weapon(	5991	)
	Weapon(	5644	)
	Weapon(	5638	)
	Weapon(	5639	)
	Weapon(	5640	)
	Weapon(	5641	)
	Weapon(	5642	)
	Weapon(	5643	)




	AddNpcMission ( 393 )
        AddNpcMission ( 567 )
end

function r_talkmo2010()

	--Локации.
	local CurMapName1 = "jialebi"    --1-4
	local CurMapName2 = "hell"       --5-8
	local CurMapName3 = "hell2"      --9
	local CurMapName4 = "hell3"      --10-17
	local CurMapName5 = "hell4"      --18
	local CurMapName6 = "hell5"      --Вечный абаддон


	--Абаддон01.
	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName1

	--Абаддон02.
	local GoTo02X = 90
	local GoTo02Y = 816
	local GoTo02M = CurMapName1

	--Абаддон03.
	local GoTo03X = 70
	local GoTo03Y = 952
	local GoTo03M = CurMapName1

	--Абаддон04.
	local GoTo04X = 209
	local GoTo04Y = 955
	local GoTo04M = CurMapName1

	--Абаддон05.
	local GoTo05X = 158
	local GoTo05Y = 99
	local GoTo05M = CurMapName2

	--Абаддон06.
	local GoTo06X = 34
	local GoTo06Y = 98
	local GoTo06M = CurMapName2

	--Абаддон07.
	local GoTo07X = 35
	local GoTo07Y = 154
	local GoTo07M = CurMapName2

	--Абаддон08.
	local GoTo08X = 155
	local GoTo08Y = 217
	local GoTo08M = CurMapName2

	--Абаддон09.
	local GoTo09X = 26
	local GoTo09Y = 73
	local GoTo09M = CurMapName3

	--Абаддон10.
	local GoTo10X = 223
	local GoTo10Y = 183
	local GoTo10M = CurMapName4

	--Абаддон11.
	local GoTo11X = 275
	local GoTo11Y = 269
	local GoTo11M = CurMapName4

	--Абаддон12.
	local GoTo12X = 105
	local GoTo12Y = 181
	local GoTo12M = CurMapName4

	--Абаддон13.
	local GoTo13X = 271
	local GoTo13Y = 183
	local GoTo13M = CurMapName4

	--Абаддон14.
	local GoTo14X = 275
	local GoTo14Y = 100
	local GoTo14M = CurMapName4

	--Абаддон15.
	local GoTo15X = 103
	local GoTo15Y = 271
	local GoTo15M = CurMapName4

	--Абаддон16.
	local GoTo16X = 190
	local GoTo16Y = 100
	local GoTo16M = CurMapName4

	--Абаддон17.
	local GoTo17X = 188
	local GoTo17Y = 269
	local GoTo17M = CurMapName4

	--Абаддон18.
	local GoTo18X = 102
	local GoTo18Y = 100
	local GoTo18M = CurMapName5

	--Вечный Абаддон.
	local GoTo19X = 35
	local GoTo19Y = 107
	local GoTo19M = CurMapName6


	Talk( 1, "Портальщик абаддона: Привет! Желаешь отправиться в абаддон?" )
	Text( 1, "Отправиться в абаддон 01 ", JumpPage, 4 )
	Text( 1, "Отправиться в абаддон 02 ", JumpPage, 5 )
	Text( 1, "Отправиться в абаддон 03 ", JumpPage, 6 )
	Text( 1, "Отправиться в абаддон 04 ", JumpPage, 7 )
--	Text( 1, "Отправиться в абаддон 05 ", JumpPage, 8 )
--	Text( 1, "Отправиться в абаддон 06 ", JumpPage, 9 )
--	Text( 1, "Дальше -> ",JumpPage,2)
--	Text( 2, "Отправиться в абаддон 07 ", JumpPage, 10 )
--	Text( 2, "Отправиться в абаддон 08 ", JumpPage, 11 )
--	Text( 2, "Отправиться в абаддон 09 ", JumpPage, 12 )
--	Text( 2, "Отправиться в абаддон 10 ", JumpPage, 13 )
--	Text( 2, "Отправиться в абаддон 11 ", JumpPage, 14 )
--	Text( 2, "Отправиться в абаддон 12 ", JumpPage, 15 )
 --   Text( 2, "Дальше -> ",JumpPage,3)
--	Text( 3, "Отправиться в абаддон 13 ", JumpPage, 16 )
--	Text( 3, "Отправиться в абаддон 14 ", JumpPage, 17 )
--	Text( 3, "Отправиться в абаддон 15 ", JumpPage, 18 )
--	Text( 3, "Отправиться в абаддон 16 ", JumpPage, 19 )
--	Text( 3, "Отправиться в абаддон 17 ", JumpPage, 20 )
--	Text( 3, "Отправиться в абаддон 18 ", JumpPage, 21 )
--	Text( 3, "Вечный Абаддон. ", JumpPage, 22 )
      Text( 3, "<- Назад ",JumpPage,1)


	--Абаддон01.
	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 4, " Абаддон 01? Нет проблем! " )
	Text( 4, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2)

	--Абаддон02.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 5, " Абаддон 02? Нет проблем! " )
	Text( 5, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон03.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 6, " Абаддон 03? Нет проблем! " )
	Text( 6, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон04.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 7, " Абаддон 04? Нет проблем! " )
	Text( 7, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон05.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 8, " Абаддон 05? Нет проблем! " )
	Text( 8, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон06.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 9, " Абаддон 06? Нет проблем! " )
	Text( 9, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон07.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 10, " Абаддон 07? Нет проблем! " )
	Text( 10, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон08.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 11, " Абаддон 08? Нет проблем! " )
	Text( 11, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон09.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo09X, GoTo09Y, GoTo09M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 12, " Абаддон 09? Нет проблем! " )
	Text( 12, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон10.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 13, " Абаддон 10? Нет проблем! " )
	Text( 13, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон11.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 14, " Абаддон 11? Нет проблем! " )
	Text( 14, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон12.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 15, " Абаддон 12? Нет проблем! " )
	Text( 15, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон13.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 16, " Абаддон 13? Нет проблем! " )
	Text( 16, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон14.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo14X, GoTo14Y, GoTo14M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 17, " Абаддон 14? Нет проблем! " )
	Text( 17, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон15.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 18, " Абаддон 15? Нет проблем! " )
	Text( 18, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон16.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo16X, GoTo16Y, GoTo16M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 19, " Абаддон 16? Нет проблем! " )
	Text( 19, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон17.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo17X, GoTo17Y, GoTo17M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 20, " Абаддон 17? Нет проблем! " )
	Text( 20, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон18.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo18X, GoTo18Y, GoTo18M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 21, " Абаддон 18? Нет проблем! " )
	Text( 21, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Вечный Абаддон.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo19X, GoTo19Y, GoTo19M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 22, " Вечный Абаддон? Нет проблем! " )
	Text( 22, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )


end

function r_talkmo2270()

	--Локации.
	local CurMapName1 = "jialebi"    --1-4
	local CurMapName2 = "hell"       --5-8
	local CurMapName3 = "hell2"      --9
	local CurMapName4 = "hell3"      --10-17
	local CurMapName5 = "hell4"      --18
	local CurMapName6 = "hell5"      --Вечный абаддон


	--Абаддон01.
	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName1

	--Абаддон02.
	local GoTo02X = 90
	local GoTo02Y = 816
	local GoTo02M = CurMapName1

	--Абаддон03.
	local GoTo03X = 70
	local GoTo03Y = 952
	local GoTo03M = CurMapName1

	--Абаддон04.
	local GoTo04X = 209
	local GoTo04Y = 955
	local GoTo04M = CurMapName1

	--Абаддон05.
	local GoTo05X = 158
	local GoTo05Y = 99
	local GoTo05M = CurMapName2

	--Абаддон06.
	local GoTo06X = 34
	local GoTo06Y = 98
	local GoTo06M = CurMapName2

	--Абаддон07.
	local GoTo07X = 35
	local GoTo07Y = 154
	local GoTo07M = CurMapName2

	--Абаддон08.
	local GoTo08X = 155
	local GoTo08Y = 217
	local GoTo08M = CurMapName2

	--Абаддон09.
	local GoTo09X = 26
	local GoTo09Y = 73
	local GoTo09M = CurMapName3

	--Абаддон10.
	local GoTo10X = 223
	local GoTo10Y = 183
	local GoTo10M = CurMapName4

	--Абаддон11.
	local GoTo11X = 275
	local GoTo11Y = 269
	local GoTo11M = CurMapName4

	--Абаддон12.
	local GoTo12X = 105
	local GoTo12Y = 181
	local GoTo12M = CurMapName4

	--Абаддон13.
	local GoTo13X = 271
	local GoTo13Y = 183
	local GoTo13M = CurMapName4

	--Абаддон14.
	local GoTo14X = 275
	local GoTo14Y = 100
	local GoTo14M = CurMapName4

	--Абаддон15.
	local GoTo15X = 103
	local GoTo15Y = 271
	local GoTo15M = CurMapName4

	--Абаддон16.
	local GoTo16X = 190
	local GoTo16Y = 100
	local GoTo16M = CurMapName4

	--Абаддон17.
	local GoTo17X = 188
	local GoTo17Y = 269
	local GoTo17M = CurMapName4

	--Абаддон18.
	local GoTo18X = 102
	local GoTo18Y = 100
	local GoTo18M = CurMapName5

	--Вечный Абаддон.
	local GoTo19X = 35
	local GoTo19Y = 107
	local GoTo19M = CurMapName6


	Talk( 1, "Портальщик абаддона: Привет! Желаешь отправиться в абаддон?" )
	Text( 1, "Отправиться в абаддон 01 ", JumpPage, 4 )
	Text( 1, "Отправиться в абаддон 02 ", JumpPage, 5 )
	Text( 1, "Отправиться в абаддон 03 ", JumpPage, 6 )
	Text( 1, "Отправиться в абаддон 04 ", JumpPage, 7 )
	Text( 1, "Отправиться в абаддон 05 ", JumpPage, 8 )
	Text( 1, "Отправиться в абаддон 06 ", JumpPage, 9 )
	Text( 1, "Дальше -> ",JumpPage,2)
	Text( 2, "Отправиться в абаддон 07 ", JumpPage, 10 )
	Text( 2, "Отправиться в абаддон 08 ", JumpPage, 11 )
	Text( 2, "Отправиться в абаддон 09 ", JumpPage, 12 )
	Text( 2, "Отправиться в абаддон 10 ", JumpPage, 13 )
	Text( 2, "Отправиться в абаддон 11 ", JumpPage, 14 )
	Text( 2, "Отправиться в абаддон 12 ", JumpPage, 15 )
    Text( 2, "Дальше -> ",JumpPage,3)
	Text( 3, "Отправиться в абаддон 13 ", JumpPage, 16 )
	Text( 3, "Отправиться в абаддон 14 ", JumpPage, 17 )
	Text( 3, "Отправиться в абаддон 15 ", JumpPage, 18 )
	Text( 3, "Отправиться в абаддон 16 ", JumpPage, 19 )
	Text( 3, "Отправиться в абаддон 17 ", JumpPage, 20 )
	Text( 3, "Отправиться в абаддон 18 ", JumpPage, 21 )
	Text( 3, "Вечный Абаддон. ", JumpPage, 22 )
      Text( 3, "<- Назад ",JumpPage,1)


	--Абаддон01.
	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 4, " Абаддон 01? Нет проблем! " )
	Text( 4, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2)

	--Абаддон02.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 5, " Абаддон 02? Нет проблем! " )
	Text( 5, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон03.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 6, " Абаддон 03? Нет проблем! " )
	Text( 6, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон04.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 7, " Абаддон 04? Нет проблем! " )
	Text( 7, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон05.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 8, " Абаддон 05? Нет проблем! " )
	Text( 8, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон06.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 9, " Абаддон 06? Нет проблем! " )
	Text( 9, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон07.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 10, " Абаддон 07? Нет проблем! " )
	Text( 10, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон08.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 11, " Абаддон 08? Нет проблем! " )
	Text( 11, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон09.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo09X, GoTo09Y, GoTo09M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 12, " Абаддон 09? Нет проблем! " )
	Text( 12, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон10.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 13, " Абаддон 10? Нет проблем! " )
	Text( 13, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон11.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 14, " Абаддон 11? Нет проблем! " )
	Text( 14, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон12.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 15, " Абаддон 12? Нет проблем! " )
	Text( 15, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон13.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 16, " Абаддон 13? Нет проблем! " )
	Text( 16, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон14.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo14X, GoTo14Y, GoTo14M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 17, " Абаддон 14? Нет проблем! " )
	Text( 17, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон15.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 18, " Абаддон 15? Нет проблем! " )
	Text( 18, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон16.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo16X, GoTo16Y, GoTo16M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 19, " Абаддон 16? Нет проблем! " )
	Text( 19, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон17.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo17X, GoTo17Y, GoTo17M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 20, " Абаддон 17? Нет проблем! " )
	Text( 20, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон18.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo18X, GoTo18Y, GoTo18M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 21, " Абаддон 18? Нет проблем! " )
	Text( 21, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )

	--Вечный Абаддон.
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo19X, GoTo19Y, GoTo19M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 22, " Вечный Абаддон? Нет проблем! " )
	Text( 22, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2 )


end

function m_Certificate()

	Talk( 1, "\207\229\240\226\238\241\255\249\229\237\237\232\234: \196\238\225\240\238 \239\238\230\224\235\238\226\242\252 \226 \214\229\240\234\238\226\252. \196\224\226\224\233\242\229 \237\224\247\237\229\236 \246\229\240\229\236\238\237\232\254.")
		--Talk( 1, "Первосященник: Добро пожаловть в Церковь. Давайте начнем церемонию.")
	Text( 1, "\205\224\247\224\242\252 \246\229\240\229\236\238\237\232\254", JumpPage, 2)
		--Text( 1, "Начать церемонию", JumpPage, 2)

	Talk( 2, "\207\229\240\226\238\241\226\255\249\229\237\237\232\234: \193\229\240\229\248\252 \235\232 \242\251 \226  \231\224\234\238\237\237\251\229 \230\229\237\251(\236\243\230\252\255) \253\242\238\227\238 \247\229\235\238\226\229\234\224? \209\238\227\235\224\241\229\237(\224) \235\232 \242\251 \232 \226 \227\238\240\229 \232 \226 \240\224\228\238\241\242\232 \225\251\242\252 \241 \237\232\236?" )
		--Talk( 2, "Первосвященник: Берешь ли ты в  законные жены(мужья) этого человека? Согласен(а) ли ты и в горе и в радости быть с ним?" )
	Text( 2, "\196\224. \223 \241\238\227\235\224\241\229\237(\224).", MarryCertificate)
		--Text( 2, "Да. Я согласен(а).", Marry)
	Text( 2, "\204\237\229 \237\224\228\238 \239\238\228\243\236\224\242\252...", CloseTalk)
		--Text( 2, "Мне надо подумать...", CloseTalk)

end


function r_LeoNaRDo4 ()

	Talk( 1, " Здраствуй! Если ты пришёл ко мне то тебе нужны вещи для бракосочитания...  " )
	Text( 1, " Да я за этим! ", JumpPage, 2)

	Talk( 2, " Получить кольцо Светого Валентина " )
	Text( 2, " Да ", JumpPage, 3)

	Talk( 3, " Принеси мне 2 рун кель и 30 розовых жемчужин! " )
	Text( 3, " Обменять! ", JumpPage, 4)

	Talk( 4," Возьми " )
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,2)
	TriggerCondition( 1, HasItem,3363,30)
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,2 )
	TriggerAction( 1, TakeItem, 3363,30 )
	TriggerAction( 1, GiveItem, 2521,1,4 )
	TriggerFailure( 1, JumpPage, 20)
	Text( 4," Принять ",MultiTrigger,GetMultiTrigger(),1 )

end

function sky_07 ()
	
	
	Talk( 1, "Биф - Какао: Привет, желаешь чтото купить? " )
	Text( 1, "Торг ", BuyPage )

	InitTrade()
	TriggerCondition( 1, HasGuildLevel,1 )
	Other(	2625	)
	Other(	2630	) 
	Other(	2634	)
	Other(	2635	)
	Other(	2636	)
	Other(	2637	)
	Other(	2638	)

end

function JoJo_03 () -- Hairstylist - Shop

	Talk( 1, "Привет я друг Корвеля,Буч. Я продаю вещи для причёски " )
	Text( 1, "Купить ", BuyPage)

	InitTrade()
	Other(	1797	) -- Red Colo
	Other(	1799	) -- yellow
	Other(	4607	) -- Red Colo
	Other(	1801	) -- Cyan
	Other(	1802	) -- Blue
	Other(	1800	) -- Green
	Other(	1798	) -- Ornange
	Other(	1803	) -- Pup
	Other(	1804	) -- Scissor
	Other(	1805	) -- Comb
	Other(	1807	) -- Hair
              	Other(     1806       ) -- 5
	Other(	931	) -- 
	Other(	934	) -- 
	Other(	932	) -- 
	Other(	933	) -- 
	Other(      1811         )-- 1
	Other(      1808         )-- 2
	Other(      1809         )-- 3
	Other(      1810         )-- 4

end 

function r_talkmo7 ()
	Talk( 1, "Привет я контрабандист.Я переправляю ансилы через томожню Ледыни и продаю их тут.Хочешь купить? " )

    Text( 1, "Хочу! ", BuyPage)

	InitTrade()
	Defence(	774	)
--	Defence(	775	)
--	Defence(	776	)
	Defence(	771	)
--	Defence(	772	)
--	Defence(	773	)
	Defence(	782	)
--	Defence(	783	)
--	Defence(	784	)
	Defence(	800	)
--	Defence(	801	)
--	Defence(	802	)
	Defence(	793	)
--	Defence(	794	)
--	Defence(	795	)
	Defence(	786	)
--	Defence(	787	)
--	Defence(	788	)
	Defence(	767	)
--	Defence(	768	)
--	Defence(	769	)
	Defence(	764	)
--	Defence(	765	)
--	Defence(	766	)
	Defence(	778	)
--	Defence(	779	)
--	Defence(	780	)
	Defence(	796	)
--	Defence(	797	)
--	Defence(	798	)
	Defence(	804	)
--	Defence(	805	)
--	Defence(	806	)
	Defence(	790	)
--	Defence(	791	)
--	Defence(	792	)
--	Defence(	807	)
--	Defence(	809	)
--	Defence(	811	)
--	Defence(	812	)
--	Defence(	815	)
--	Defence(	808	)
--	Defence(	810	)
--	Defence(	813	)
--	Defence(	814	)
--	Defence(	877	)
	Other(	3400	) -- Skeletar Chest of Swordsman
	Other(	3401	) -- Skeletar Chest of Hunter
	Other(	3402	) -- Skeletar Chest of Herbalist
	Other(	3403	) -- Skeletar Chest of Explorer
	Other(	3404	) -- Incantation Chest of Crusader
	Other(	3405	) -- Incantation Chest of Champion
	Other(	3406	) -- Incantation Chest of Sharpshooter
	Other(	3407	) -- Incantation Chest of Cleric
	Other(	3408	) -- Incantation Chest of Seal Master
	Other(	3409	) -- Incantation Chest of Voyager
	Other(	3410	) -- Evanescence Chest of Crusader
	Other(	3411	) -- Evanescence Chest of Champion
	Other(	3412	) -- Evanescence Chest of Sharpshooter
	Other(	3413	) -- Evanescence Chest of Cleric
	Other(	3414	) -- Evanescence Chest of Seal Master
	Other(	3415	) -- Evanescence Chest of Voyager
	Other(	3416	) -- Enigma Chest of Crusader
	Other(	3417	) -- Enigma Chest of Champion
	Other(	3418	) -- Enigma Chest of Sharpshooter
	Other(	3419	) -- Enigma Chest of Cleric
	Other(	3420	) -- Enigma Chest of Seal Master
	Other(	3421	) -- Enigma Chest of Voyager
	


end

function r_talk265 ()
	Talk( 1, "Привет я торговец 2 ТОП Гильдии.Здесь может покупать только 2 ТОП Гильдия если ты к ним не пренадлежишь уходи по хорошему " )
	InitTrigger()
    TriggerCondition( 1, HasGuildLevel, 2 )
    TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Дай посмотрю что есть.", MultiTrigger, GetMultiTrigger(), 1 )
	
    Talk( 2, "Зря ты меня обманул.Стража бросить его в темницу этого подлого обманьщика " )
	
	Talk( 3, "А ты меня не обманул=))))Покупай что хочешь вот мой товар!" )
    Text( 3, "Посмотреть! ", BuyPage)

	InitTrade()
	Weapon(	7144  )
	Weapon(	7141  )
	Weapon(	0276  )
	Weapon(	0277  )
	Weapon(	0278  )
	Weapon(	0279  )
	Weapon(	0280  )
	Weapon(	3300  )
	Weapon(	3301  )
	Weapon(	0899  )
	Weapon(	0900  )
	Weapon(	0901  )
	Weapon(	0902  )
	Weapon(	0903  )
	Weapon(	3918  )
	Weapon(	3919  )
	Weapon(	3920  )
	Weapon(	3921  )
	Weapon(	3922  )
	Weapon(	3925  )
--	Weapon(	1020  )
	Weapon(	3883  )
	Weapon(	3884  )
--	Weapon(	3074  )
--	Weapon(	3075  )
--	Weapon(	6946  )
	Weapon(	0890  )
	

	


end

function Poslanik_27 ()
	Talk( 1, "Привет я торговец 1 ТОП Гильдии.Здесь может покупать только 1 ТОП Гильдия если ты к ним не пренадлежишь уходи по хорошему " )
	InitTrigger()
    TriggerCondition( 1, HasGuildLevel, 3 )
    TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Дай посмотрю что есть.", MultiTrigger, GetMultiTrigger(), 1 )
	
    Talk( 2, "Зря ты меня обманул.Стража бросить его в темницу этого подлого обманьщика " )
	
	Talk( 3, "А ты меня не обманул=))))Покупай что хочешь вот мой товар!" )
    Text( 3, "Посмотреть! ", BuyPage)

	InitTrade()
	Weapon(	7144  )
	Weapon(	7141  )
	Weapon(	0276  )
	Weapon(	0277  )
	Weapon(	0278  )
	Weapon(	0279  )
	Weapon(	0280  )
	Weapon(	2312	)
	Weapon(	3300  )
	Weapon(	3301  )
	Weapon(	0899  )
	Weapon(	0900  )
	Weapon(	0901  )
	Weapon(	0902  )
	Weapon(	0903  )
	Weapon(	3918  )
	Weapon(	3919  )
	Weapon(	3920  )
	Weapon(	3921  )
	Weapon(	3922  )
	Weapon(	3924  )
	Weapon(	3925  )
--	Weapon(	1020  )
	Weapon(	3883  )
	Weapon(	3884  )
	Weapon(	3074  )
	Weapon(	3075  )
	Weapon(	6946  )
	Weapon(	0890  )
	Weapon(	2625  )
	Weapon(	2630  )
	Weapon(	2634  )
	Weapon(	2635  )
	Weapon(	2636  )
	Weapon(	2637  )
	Weapon(	2638  )
	Weapon(	2639  )

	

	


end

function r_talkmo85 ()
	Talk( 1, "Привет я продавец апарелий оружий " )
	Text( 1, "Дай посмотрю что есть.", BuyPage)

	InitTrade()
 	Weapon(    5002    ) -- Super Rechargable battery
    	Weapon(    5008    ) -- Icy Crystal
    	Weapon(    5007    ) -- bananas
    	Weapon(    5001    ) -- heavens berry
    	Weapon(    5278    ) -- Amp of strive
    	Weapon(    5285    ) -- Hi Amp of strive
    	Weapon(    5284    ) -- charmed berry
    	Weapon(    5283    ) -- amp of luck
    	Weapon(    5208    ) -- hi amp of luck
    	Weapon(    5213    ) -- Super Rechargable battery
    	Weapon(    5276    ) -- Icy Crystal
    	Weapon(    5281    ) -- Super Rechargable battery
    	Weapon(    5279    ) -- Icy Crystal
    	Weapon(    5005    ) -- bananas
    	Weapon(    5011    ) -- heavens berry
    	Weapon(    5072    ) -- amp of luck
    	Weapon(    5282    ) -- Super Rechargable battery
    	Weapon(    5004    ) -- Icy Crystal
    	Weapon(    5010    ) -- bananas
    	Weapon(    5277    ) -- Super Rechargable battery
    	Weapon(    5071    ) -- Icy Crystal
    	Weapon(    5003    ) -- bananas
    	Weapon(    5009    ) -- bananas
    	Weapon(    5012    ) -- Icy Crystal
    	Weapon(    5006    ) -- Super Rechargable battery
    	Weapon(    5073    ) -- Super Rechargable battery
    	Weapon(    5280    ) -- Icy Cryst
	Weapon(	5448	)
	Weapon(	5449	)
	Weapon(	5450	)
	Weapon(	5451	)
	Weapon(	5452	)
	Weapon(	5453	)
	Weapon(	5454	)
	Weapon(	5455	)


--	Weapon(	5099	)
--	Weapon(	5100	)
--	Weapon(	5101	)
--	Weapon(	5102	)
--	Weapon(	5103	)
--	Weapon(	5104	)
--	Weapon(	5105	)




end


function simplepro_05 () -- Appareal Lanc

    	Talk( 1, "\199\228\240\224\241\242\226\243\233, \243 \236\229\237\255 \232\236\229\229\242\241\255 \225\238\235\252\248\238\233 \226\251\225\238\240 \224\239\239\224\240\229\235\229\233 \237\224 \203\224\237\241\224." )
    	Text( 1, "\202\243\239\232\242\252", BuyPage)


    	InitTrade()
    	Defence(    5662    ) -- Super Rechargable battery
    	Defence(    5663    ) -- Icy Crystal
    	Defence(    5664    ) -- bananas
    	Defence(    5678    ) -- Super Rechargable battery
    	Defence(    5679    ) -- Icy Crystal
    	Defence(    5680    ) -- Hi Amp of strive
    	Defence(    5205    ) -- charmed berry
    	Defence(    5206    ) -- amp of luck
    	Defence(    5207    ) -- hi amp of luck
    	Defence(    5288    ) -- Super Rechargable battery
    	Defence(    5289    ) -- Icy Crystal
    	Defence(    5290    ) -- Hi Amp of strive
    	Defence(    5224    ) -- charmed berry
    	Defence(    5225    ) -- amp of luck
    	Defence(    5226    ) -- hi amp of luck
    	Defence(    5160    ) -- Super Rechargable battery
    	Defence(    5161    ) -- Icy Crystal
    	Defence(    5162    ) -- Hi Amp of strive
    	Defence(    5389    ) -- charmed berry
    	Defence(    5390    ) -- amp of luck
    	Defence(    5391    ) -- hi amp of luck
    	Defence(    5303    ) -- Super Rechargable battery
    	Defence(    5304    ) -- Icy Crystal
    	Defence(    5305    ) -- Hi Amp of strive
    	Defence(    5316    ) -- charmed berry
    	Defence(    5317    ) -- amp of luck
    	Defence(    5318    ) -- hi amp of luck
    	Defence(    5119    ) -- Super Rechargable battery
    	Defence(    5120    ) -- Icy Crystal
    	Defence(    5121    ) -- Hi Amp of strive
    	Defence(    5221    ) -- amp of luck
    	Defence(    5222    ) -- hi amp of luck
    	Defence(    5223    ) -- Super Rechargable battery
    	Defence(    5156    ) -- amp of luck
    	Defence(    5154    ) -- Super Rechargable battery
    	Defence(    5155    ) -- Icy Crystal
    	Defence(    5227    ) -- Hi Amp of strive
    	Defence(    5228    ) -- charmed berry
    	Defence(    5229    ) -- amp of luck


end 



function simplepro_06 () -- Appareal Carcsic

    	Talk( 1, "\199\228\240\224\241\242\226\243\233, \243 \236\229\237\255 \232\236\229\229\242\241\255 \225\238\235\252\248\238\233 \226\251\225\238\240 \224\239\239\224\240\229\235\229\233 \237\224 \202\224\240\246\232\241\224." )
    	Text( 1, "\202\243\239\232\242\252", BuyPage)


    	InitTrade()
    	Defence(    5424    ) -- Super Rechargable battery
    	Defence(    5425    ) -- Icy Crystal
    	Defence(    5426    ) -- bananas
    	Defence(    5666    ) -- heavens berry
    	Defence(    5667    ) -- Amp of strive
    	Defence(    5668    ) -- Hi Amp of strive
    	Defence(    5345    ) -- charmed berry
    	Defence(    5346    ) -- amp of luck
    	Defence(    5347    ) -- hi amp of luck
    	Defence(    5231    ) -- Super Rechargable battery
    	Defence(    5232    ) -- Icy Crystal
    	Defence(    5233    ) -- Hi Amp of strive
    	Defence(    5682    ) -- charmed berry
    	Defence(    5683    ) -- amp of luck
    	Defence(    5684    ) -- hi amp of luck
    	Defence(    5195    ) -- Super Rechargable battery
    	Defence(    5196    ) -- Icy Crystal
    	Defence(    5197    ) -- Hi Amp of strive
    	Defence(    5111    ) -- charmed berry
    	Defence(    5112    ) -- amp of luck
    	Defence(    5113    ) -- hi amp of luck
    	Defence(    5393    ) -- Super Rechargable battery
    	Defence(    5394    ) -- Icy Crystal
    	Defence(    5395    ) -- Hi Amp of strive
    	Defence(    5163    ) -- charmed berry
    	Defence(    5164    ) -- amp of luck
    	Defence(    5165    ) -- hi amp of luck
    	Defence(    5377    ) -- Super Rechargable battery
    	Defence(    5378    ) -- Icy Crystal
    	Defence(    5379    ) -- Hi Amp of strive
    	Defence(    5306    ) -- charmed berry
    	Defence(    5307    ) -- amp of luck
    	Defence(    5308    ) -- hi amp of luck
    	Defence(    5107    ) -- Super Rechargable battery
    	Defence(    5208    ) -- Icy Crystal
    	Defence(    5109    ) -- Hi Amp of strive
    	Defence(    5235    ) -- charmed berry
    	Defence(    5236    ) -- amp of luck
    	Defence(    5237    ) -- hi amp of luck
    	Defence(    5320    ) -- Super Rechargable battery
    	Defence(    5321    ) -- Icy Crystal
    	Defence(    5322    ) -- Hi Amp of strive
    	Defence(    5238    ) -- charmed berry
    	Defence(    5239    ) -- amp of luck
    	Defence(    5240    ) -- hi amp of luck
    	Defence(    5292    ) -- Super Rechargable battery
    	Defence(    5293    ) -- Icy Crystal
    	Defence(    5294    ) -- charmed berry
    	Defence(    5115    ) -- amp of luck
    	Defence(    5116    ) -- hi amp of luck
    	Defence(    5117    ) -- Super Rechargable battery


end 


function simplepro_07 () -- Appareal Fillis

    	Talk( 1, "\199\228\240\224\241\242\226\243\233, \243 \236\229\237\255 \232\236\229\229\242\241\255 \225\238\235\252\248\238\233 \226\251\225\238\240 \224\239\239\224\240\229\235\229\233 \237\224 \212\232\235\235\232\241." )
    	Text( 1, "\202\243\239\232\242\252", BuyPage)


    	InitTrade()
    	Defence(    5324    ) -- Super Rechargable battery
    	Defence(    5325    ) -- Icy Crystal
    	Defence(    5326    ) -- bananas
    	Defence(    5670    ) -- heavens berry
    	Defence(    5671    ) -- Amp of strive
    	Defence(    5672    ) -- Hi Amp of strive
    	Defence(    5169    ) -- charmed berry
    	Defence(    5170    ) -- amp of luck
    	Defence(    5171    ) -- hi amp of luck
    	Defence(    5686    ) -- Super Rechargable battery
    	Defence(    5687    ) -- Icy Crystal
    	Defence(    5688    ) -- Hi Amp of strive
    	Defence(    5202    ) -- charmed berry
    	Defence(    5203    ) -- amp of luck
    	Defence(    5204    ) -- hi amp of luck
    	Defence(    5249    ) -- Super Rechargable battery
    	Defence(    5250    ) -- Icy Crystal
    	Defence(    5251    ) -- Hi Amp of strive
    	Defence(    5143    ) -- charmed berry
    	Defence(    5144    ) -- amp of luck
    	Defence(    5145    ) -- hi amp of luck
    	Defence(    5296    ) -- Super Rechargable battery
    	Defence(    5297    ) -- Icy Crystal
    	Defence(    5381    ) -- Hi Amp of strive
    	Defence(    5382    ) -- charmed berry
    	Defence(    5383    ) -- amp of luck
    	Defence(    5349    ) -- hi amp of luck
    	Defence(    5350    ) -- Super Rechargable battery
    	Defence(    5351    ) -- Icy Crystal
    	Defence(    5365    ) -- Hi Amp of strive
    	Defence(    5366    ) -- charmed berry
    	Defence(    5367    ) -- amp of luck
    	Defence(    5397    ) -- hi amp of luck
    	Defence(    5398    ) -- Super Rechargable battery
    	Defence(    5399    ) -- Icy Crystal
    	Defence(    5309    ) -- Hi Amp of strive
    	Defence(    5310    ) -- charmed berry
    	Defence(    5311    ) -- amp of luck
    	Defence(    5245    ) -- hi amp of luck
    	Defence(    5246    ) -- Super Rechargable battery
    	Defence(    5247    ) -- Icy Crystal
    	Defence(    5151    ) -- Hi Amp of strive
    	Defence(    5152    ) -- charmed berry
    	Defence(    5153    ) -- amp of luck
    	Defence(    5172    ) -- hi amp of luck
    	Defence(    5173    ) -- Super Rechargable battery
    	Defence(    5174    ) -- Icy Crystal
    	Defence(    5166    ) -- charmed berry
    	Defence(    5167    ) -- amp of luck
    	Defence(    5168    ) -- hi amp of luck
    	Defence(    5147    ) -- Super Rechargable battery
    	Defence(    5148    ) -- Super Rechargable battery
    	Defence(    5149    ) -- Icy Crystal
    	Defence(    5241    ) -- bananas
    	Defence(    5242    ) -- heavens berry
    	Defence(    5243    ) -- Amp of strive


end 

function simplepro_08 () -- Appareal Ami

    	Talk( 1, "\199\228\240\224\241\242\226\243\233, \243 \236\229\237\255 \232\236\229\229\242\241\255 \225\238\235\252\248\238\233 \226\251\225\238\240 \224\239\239\224\240\229\235\229\233 \237\224 \192\236\232." )
    	Text( 1, "\202\243\239\232\242\252", BuyPage)
    	InitTrade()
    	Weapon(    5012    ) -- Icy Crystal
    	Weapon(    5006    ) -- Super Rechargable battery
    	Weapon(    5211    ) -- Icy Cryst
    	Weapon(    5216    ) -- Icy Crystal
    	Weapon(    5073    ) -- Super Rechargable battery
    	Weapon(    5280    ) -- Icy Cryst
    	Weapon(    5208    ) -- hi amp of luck
    	Weapon(    5213    ) -- Super Rechargable battery
    	Weapon(    5276    ) -- Icy Crystal
    	Weapon(    5282    ) -- Super Rechargable battery
    	Weapon(    5004    ) -- Icy Crystal
    	Weapon(    5010    ) -- bananas

    	Defence(    5429    ) -- Super Rechargable battery
    	Defence(    5430    ) -- Icy Crystal
    	Defence(    5431    ) -- bananas
    	Defence(    5131    ) -- heavens berry
    	Defence(    5132    ) -- Amp of strive
    	Defence(    5133    ) -- Hi Amp of strive
    	Defence(    5134    ) -- charmed berry
    	Defence(    5135    ) -- amp of luck
    	Defence(    5136    ) -- hi amp of luck
    	Defence(    5674    ) -- Super Rechargable battery
    	Defence(    5675    ) -- Icy Crystal
    	Defence(    5676    ) -- Hi Amp of strive
    	Defence(    5690    ) -- charmed berry
    	Defence(    5691    ) -- amp of luck
    	Defence(    5692    ) -- hi amp of luck
    	Defence(    5198    ) -- Super Rechargable battery
    	Defence(    5199    ) -- Icy Crystal
    	Defence(    5200    ) -- Hi Amp of strive
    	Defence(    5187    ) -- charmed berry
    	Defence(    5188    ) -- amp of luck
    	Defence(    5189    ) -- hi amp of luck
    	Defence(    5257    ) -- Super Rechargable battery
    	Defence(    5258    ) -- Icy Crystal
    	Defence(    5259    ) -- Hi Amp of strive
    	Defence(    5135    ) -- charmed berry
    	Defence(    5136    ) -- amp of luck
    	Defence(    5137    ) -- hi amp of luck
    	Defence(    5139    ) -- Super Rechargable battery
    	Defence(    5140    ) -- Icy Crystal
    	Defence(    5141    ) -- Hi Amp of strive
    	Defence(    5353    ) -- charmed berry
    	Defence(    5354    ) -- amp of luck
    	Defence(    5355    ) -- hi amp of luck
    	Defence(    5328    ) -- Super Rechargable battery
    	Defence(    5329    ) -- Icy Crystal
    	Defence(    5330    ) -- Hi Amp of strive
    	Defence(    5261    ) -- charmed berry
    	Defence(    5262    ) -- amp of luck
    	Defence(    5263    ) -- hi amp of luck
    	Defence(    5183    ) -- Super Rechargable battery
    	Defence(    5184    ) -- Icy Crystal
    	Defence(    5185    ) -- Hi Amp of strive
    	Defence(    5300    ) -- charmed berry
    	Defence(    5301    ) -- amp of luck
    	Defence(    5302    ) -- hi amp of luck
    	Defence(    5179    ) -- Super Rechargable battery
    	Defence(    5180    ) -- Icy Crystal
    	Defence(    5181    ) -- charmed berry
    	Defence(    5385    ) -- amp of luck
    	Defence(    5386    ) -- hi amp of luck
    	Defence(    5387    ) -- Super Rechargable battery
    	Defence(    5369    ) -- Super Rechargable battery
    	Defence(    5370    ) -- Icy Crystal
    	Defence(    5371    ) -- bananas
    	Defence(    5401    ) -- heavens berry
    	Defence(    5402    ) -- Amp of strive
    	Defence(    5403    ) -- Super Rechargable battery
    	Defence(    5312    ) -- Icy Crystal
    	Defence(    5313    ) -- bananas
    	Defence(    5314    ) -- heavens berry
    	Defence(    5175    ) -- Amp of strive
    	Defence(    5176    ) -- Super Rechargable battery
    	Defence(    5177    ) -- Icy Crystal
    	Defence(    5253    ) -- bananas
    	Defence(    5254    ) -- heavens berry
    	Defence(    5255    ) -- Amp of strive
    	Defence(    5191    ) -- bananas
    	Defence(    5192    ) -- heavens berry
    	Defence(    5193    ) -- Amp of strive

end


function npc_talk01()

	Talk( 1, "Cleaner: Hello! What a happy day to start a new life with the person you love!" )

end

--Monk - Lisa
function npc_talk02()

	Talk( 1, "Monk - Lisa: My name it's such artistic. Dont you think so?")

end

--Little Boy
function npc_talk03()

	Talk( 1, "Little Boy: Nobody wants to play with me. In moments like this I rather be emo.")

end

--Kidsnapper
function npc_talk04()

	Talk( 1, "Kidsnapper: To many children around, and there are not parents to care of them. This is going to be easy.")
	
end

--Luca Tony
function npc_talk05 ()

	Talk( 1, "Luca Tony: What the hell!! Means these pictures? Just wondering, What was Moliyo developer smoking when he designed this.")

end

--Richardson
function npc_talk06 ()

	Talk( 1, "Привет я продаю вещи для праздника ")
	Text( 1, "Купить ", BuyPage)
	
	InitTrade()
	Other(	3343	)--Rose
	Other(	3344	)--Lovers Chocolate
	Other(	3345	)--Firecracker A
	Other(	3346	)--Firecracker B
	Other(	3347	)--Firecracker C
	Other(	3348	)--Firework A
	Other(	3349	)--Firework B
	Other(	3350	)--Firework C
	Other(	3351	)--Royal Salute A
	Other(	3352	)--Royal Salute B
	Other(	3353	)--Royal Salute C
	Other(	3354	)--Heart Shape I
	Other(	3355	)--Heart Shape LOVE
	Other(	3356	)--Heart Shape U
--	Other(	2888	)--Firework C
--	Other(	2889	)--Royal Salute A
--	Other(	2890	)--Royal Salute B
--	Other(	2891	)--Royal Salute C
--	Other(	6295	)--Heart Shape I
--	Other(	6296	)--Heart Shape LOVE
--	Other(	6297	)--Heart Shape U
--	Other(	6298	)--Rose
--	Other(	6299	)--Lovers Chocolate
--	Other(	6300	)--Firecracker A
--	Other(	6301	)--Firecracker B
--	Other(	6302	)--Firecracker C
--	Other(	6303	)--Firework A
--	Other(	6304	)--Firework B
--	Other(	6305	)--Firework C

end

--Granny Mila
function npc_talk07()

	Talk( 1, "Granny Mila: Hello! I always pray here, and if you sit in the seat behind me, you will have bad luck for 3 days!")

end

--High Priest
function npc_talk08()

	Talk( 1, "High Priest: I am very happy to see you around, you had finally decided to devote the word of God?")
	Text( 1, "I am looking forward to Marry.", JumpPage, 2)
	Text( 1, "Nah I have nothing to do here.", CloseTalk)

	Talk( 2, "High Priest: Nice to hear that these days! To marry first you need to get the Certificate, and that is not a easy task. You need to show us that you are ready to start a new life and a family with the person you love!")
	Text( 2, "I am ready!", CloseTalk)

end

--Monk - Eli
function npc_talk09()

	Talk( 1, "Monk - Eli: I am not able to give you the bless of God yet, but who cares?")

	InitTrigger()
	TriggerAction( 1, ReAll )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Bless me anyway!", MultiTrigger,GetMultiTrigger(),1)

end

function r_HeSToP2()

--	InitTrigger()
 --   	TriggerCondition( 1, LvCheck, ">", 40 )
 --   	TriggerAction( 1, JumpPage, 3 )
  --  	TriggerFailure( 1, JumpPage, 2 )
  --  	Talk( 1, "Я продаю фей персонажам с 41 уровня.Так что учти если ты меньше 41 то я тебе скажу чтоб ты шёл на *цензура* " )
   -- 	Text( 1, "Купить зверюшек[Можно купить с 41 уровня] ", MultiTrigger, GetMultiTrigger(), 1 ) 

    --Talk( 2, "Ты ещё маленький для зверей.Шагай качаться " )
    
	Talk( 1, "Привет я продаю питомцев.У меня продаётся только лучшее " )
    Text( 1, "Купить ", BuyPage)

	InitTrade()
	Weapon(	222	)
	Weapon(	225	)
	Weapon(	226	)
	Weapon(	224	)
	Weapon(	223	)
	Weapon(	280	)
	Weapon(	277	)
	Weapon(	279	)
	Weapon(	278	)
	Weapon(	276	)
	Weapon(	244	)
	Weapon(	250	)
	Weapon(	260	)
	Weapon(	253	)
	Weapon(	247	)
	Weapon(	3918	)
	Weapon(	3919	)
	Weapon(	3920	)
	Weapon(	3921	)
	Weapon(	3922	)
	Weapon(	3925	)
	Weapon( 227	)
	Weapon(	1129	)
	Weapon(	1130	)
	Weapon(	1131	)
	Weapon(	1132	)
	Weapon(	1133	)	
	Defence(	7003	)
	Defence(	7004	)
	Defence(	7005	)
	Defence(	7006	)
	Defence(	7007	)
	Defence(	7290	)	
	Other( 4540	)
	Other( 3443	)
	Other( 4533	)
	Other( 3437	)
	Other( 4530	)
	Other( 3436	)
	Other( 3434	)
	Other( 1196	)
	Other( 3442	)
	Other( 1253	)
	Other( 4537	)
	Other( 3444	)
	Other( 4531	)
	Other( 3435	)
	
	Text( 1, "Я хочу поженить своих фей!", OpenEidolonMetempsychosis )
          Text( 1, "Уйти", CloseTalk )
end

function JoJo_1000 () 


	Talk( 1, "Привет меня сюда прислали 5 стражей,Страж Доблести,Страж Чести,Страж Жертвы,Страж Сочуствия и Страж Вдохновения.Здесь ты можешь обменять руны кель на их доспехи  " )
	Text( 1, "Обменять ", JumpPage, 2)

	Talk( 2, "1 Сундук стоит 200 рун кель " )
	Text( 2, "Сундук Доблести(Шарп) ", JumpPage, 5)
	Text( 2, "Сундук Чести(Круз) ", JumpPage, 6)
	Text( 2, "Сундук Жертвы(Чамп) ", JumpPage, 7)
	Text( 2, "Сундук Сочувствия(Клер) ", JumpPage, 8)
	Text( 2, "Сундук Вдохновения(См) ", JumpPage, 9)


	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 2 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 6256, 1, 6 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(5,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 3 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 6257, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(6,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 10 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 6258, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(7,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 10 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 6260, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(8,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 6261, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(9,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 26, "Извените у вас недостаточно келей " )
	Talk( 27, "Поздравляю вы понравились Стражам " )

end

function JoJo_1001 () 


	Talk( 1, "Привет меня сюда прислали 3 стража,Страж Искупления,Страж Благославления и Страж искупления.Здесь ты можешь обменять руны кель на их доспехи  " )
	Text( 1, "Обменять на оружие ", JumpPage, 2)
	Text( 1, "Обменять на ботинки ", JumpPage, 3)

	Talk( 2, "Обменнник 95 ансов: Обменять кели на оружия стоит 200 рун кель " )
	Text( 2, "Меч небес ", JumpPage, 5)
	Text( 2, "Святой щит кавалериста ", JumpPage, 6)
	Text( 2, "Карающий лук ", JumpPage, 7)
	Text( 2, "Оружие правосудие ", JumpPage, 8)
	Text( 2, "Бесшумное лезвие ", JumpPage, 9)
	Text( 2, "Нержавеющий меч ", JumpPage,10)
	Text( 2, "Посох жертвы ", JumpPage,11)
	Text( 2, "Посох жизни ", JumpPage,30)

	Talk( 3, "Обменнник 95 ансов: Обменять кели на тело стоит 200 рун кель " )
	Text( 3, "Страж Эпической Доблести(шарп) ", JumpPage,12)
	Text( 3, "Страж Чести(круз) ", JumpPage,13)
	Text( 3, "Страж Жертвы(чамп) ", JumpPage,14)
	Text( 3, "Страж Правосудия(вой) ", JumpPage,15)
	Text( 3, "Страж Сочувствия(клер) ", JumpPage,16)
	Text( 3, "Страж Вдохновения(см) ", JumpPage, 17)

	Talk( 4, "Обменнник 95 ансов: Обменять кели на перчи стоит 50 рун кель " )
	Text( 4, "Благославление Эпической Доблести(шарп) ", JumpPage, 20)
	Text( 4, "Благославление Чести(круз) ", JumpPage, 21)
	Text( 4, "Благославление Жертвы(чамп) ", JumpPage, 22)
	Text( 4, "Благославление Правосудия(вой) ", JumpPage, 23)
	Text( 4, "Благославление Сочувствия(клер) ", JumpPage, 24)
	Text( 4, "Благославление Вдохновения(см) ", JumpPage, 25)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 2 )	
	TriggerAction( 1, TakeItem, 3457, 6 )
	TriggerAction( 1, GiveItem, 5922, 1, 6 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(5,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 3 )	
	TriggerAction( 1, TakeItem, 3457, 8 )
	TriggerAction( 1, GiveItem, 5923, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(6,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 10 )	
	TriggerAction( 1, TakeItem, 3457, 10 )
	TriggerAction( 1, GiveItem, 5924, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(7,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 10 )	
	TriggerAction( 1, TakeItem, 3457, 10 )
	TriggerAction( 1, GiveItem, 5928, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(8,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 10 )
	TriggerAction( 1, GiveItem, 5932, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(9,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 10 )
	TriggerAction( 1, GiveItem, 5936, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(10,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 10 )
	TriggerAction( 1, GiveItem, 5940, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(11,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 5925, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(12,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 200 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 5929, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(13,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 5933, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(14,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 5937, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(15,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 5941, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(16,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 200 )
	TriggerAction( 1, GiveItem, 5945, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(17,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 50 )
	TriggerAction( 1, GiveItem, 5926, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(20,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 50 )
	TriggerAction( 1, GiveItem, 5930, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(21,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 50 )
	TriggerAction( 1, GiveItem, 5934, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(22,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 50 )
	TriggerAction( 1, GiveItem, 5938, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(23,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 50 )
	TriggerAction( 1, GiveItem, 5942, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(24,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 50 )
	TriggerAction( 1, GiveItem, 5946, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(25,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 50 )
	TriggerAction( 1, GiveItem, 5944, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(30,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 26, "Извените у вас недостаточно келей " )
	Talk( 27, "Поздравляю вы понравились Стражам " )

end

function BopoHgel ()

	Talk( 1, "Привет я обменик палок вуду на камни для ребёрна " )
	Text( 1, "Обменять палки на камни ", JumpPage, 2)

	Talk( 2, "Тебе надо 99 палок для 1 ребёрна для 2 ребёна 400 палок а для 3 ребёрна 1100 палок " )
	Text( 2, "Камень 1 ребёрна ", JumpPage, 5)
	Text( 2, "Камень 2 ребёрна ", JumpPage, 6)
	Text( 2, "Камень 3 ребёрна ", JumpPage, 7)
	TriggerCondition( 1, LvCheck,  ">", 1 )
	TriggerCondition( 1, LvCheck,  "<", 10 )


	Talk(5,"Ты точно согласен? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3065,99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3065,99)
	TriggerAction( 1, GiveItem, 2941,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(5,"Да я согласен ",MultiTrigger,GetMultiTrigger(),1)

	Talk(6,"Ты точно согласен? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3065,400 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3065,400)
	TriggerAction( 1, GiveItem, 5853,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(6,"Да я согласен ",MultiTrigger,GetMultiTrigger(),1) 

	Talk(7,"Ты точно согласен? ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3065,1100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3065,1100)
	TriggerAction( 1, GiveItem, 5854,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(7,"Да я согласен ",MultiTrigger,GetMultiTrigger(),1) 

end

function r_talkLanAPP ()

	Talk( 1, "Привет я продавец апарелий на ланса " )
	Text( 1, "Купить ", BuyPage)
	Text( 1, "Пока ",  CloseTalk)

	InitTrade()
	Defence(	5013	)--Robe of the Chilling Heart
	Defence(	5021	)--Gloves of the Chilling Heart
	Defence(	5029	)--Boots of the Chilling Heart
	Defence(	5017	)--Robe of the Frozen Heart
	Defence(	5025	)--Gloves of the Frozen Heart
	Defence(	5033	)--Boots of the Frozen Heart
	Defence(	5041	)--Armor of Catacomb
	Defence(	5045	)--Gauntlets of Catacomb
	Defence(	5049	)--Greaves of Catacomb
	Defence(	5057	)--Armor of Buccaneer
	Defence(	5061	)--Gauntlets of Buccaneer
	Defence(	5065	)--Greaves of Buccaneer
	Defence(	5075	)--Leather Vest
	Defence(	5076	)--Leather Gloves
	Defence(	5077	)--Leather Boots
	Defence(	5078	)--Warrior Frock
	Defence(	5079	)--Warrior Gloves
	Defence(	5080	)--Warrior Boots
	Defence(	5118	)--Straw Shirt
	Defence(	5119	)--Straw Shirt
	Defence(	5120	)--Straw Gloves
	Defence(	5121	)--Straw Shoes
	Defence(	5127	)--Brutal Chef Coat
	Defence(	5128	)--Brutal Chef Gloves
	Defence(	5129	)--Brutal Chef Boots
	Defence(	5154	)--Tiger Armor of Cavalry
	Defence(	5155	)--Tiger Gauntlets of Cavalry
	Defence(	5156	)--Tiger Greaves of Cavalry
	Defence(	5160	)--Ember Armor of Caesar
	Defence(	5161	)--Ember Gauntlets of Caesar
	Defence(	5162	)--Ember Greaves of Caesar
	Defence(	5221	)--Lance Dark Royal Robe
	Defence(	5222	)--Lance Dark Royal Gloves
	Defence(	5223	)--Lance Dark Royal Boots
	Defence(	5224	)--Lance Priest Robe
	Defence(	5225	)--Lance Priest Gloves
	Defence(	5226	)--Lance Priest Boots
--	Other(	5341	)--Lance Aries Armor
--	Other(	5342	)--Lance Aries Gauntlets
--	Other(	5343	)--Lance Aries Greaves
	Defence(	5501	)--Amber Kylin Armor
	Defence(	5502	)--Amber Kylin Gloves
	Defence(	5503	)--Amber Kylin Boots
	Defence(	5303	)--Lance Romantic Shirt
	Defence(	5304	)--Lance Romantic Gloves
	Defence(	5305	)--Lance Romantic Boots
	Defence(	5404	)--Lance HighSchool Hat
	Defence(	5405	)--Lance HighSchool Robe
	Defence(	5406	)--Lance HighSchool Boots
	Defence(	5227	)--Lance Bruce Tights
	Defence(	5228	)--Lance Bruce Gloves
	Defence(	5229	)--Lance Bruce Shoes
	Defence(	5422	)--Lance Romantic Pas Robe
	Defence(	5423	)--Lance Romantic Pas Shoes
	Defence(	5436	)--Lance Romantic Pas White Gloves
	Defence(	5440	)--Lance Romantic Pas Blue Gloves
	Defence(	5444	)--Lance Romantic Pas Black Gloves
	Defence(	5122	)--Musketeer Hat
	Defence(	5123	)--Tri-Blader Shirt
	Defence(	5124	)--Tri-Blader Gloves
	Defence(	5125	)--Tri-Blader Boots
	Defence(	3900	)--Christmas Cap
	Defence(	5264	)--Lance Christmas Shirt
	Defence(	5265	)--Lance Christmas Gloves
	Defence(	5266	)--Lance Christmas Boots
	Defence(	5220	)--Crimson Gold Plume
	Defence(	5205	)--Royal Major Vest
	Defence(	5206	)--Royal Major Gloves
	Defence(	5207	)--Royal Major Boots
	Defence(	5287	)--Lance Fortune Cap
	Defence(	5288	)--Lance Fortune Robe
	Defence(	5289	)--Lance Fortune Gloves
	Defence(	5290	)--Lance Fortune Shoes
	Defence(	5315	)--Lance Piggy Beret
	Defence(	5316	)--Lance Piggy Shirt
	Defence(	5317	)--Lance Piggy Gloves
	Defence(	5318	)--Lance Piggy Boots
--	Other(	5356	)--Lance Betrayal of Taurus
--	Other(	5357	)--Lance Loneliness of Taurus
--	Other(	5358	)--Lance Touch of Taurus
--	Other(	5359	)--Lance Flowing Sand of Taurus
--	Other(	5372	)--Lance Betrayal of Gemini
--	Other(	5373	)--Lance Loneliness of Gemini
--	Other(	5374	)--Lance Touch of Gemini
--	Other(	5375	)--Lance Flowing Sand of Gemini
	Defence(	5388	)--Lance Street Love Hat
	Defence(	5389	)--Lance Street Love Robe
	Defence(	5390	)--Lance Street Love Gloves
	Defence(	5391	)--Lance Street Love Shoes
--	Defence(	5456	)--Lance Cancer Cap
--	Defence(	5457	)--Lance Cancer Armor
--	Defence(	5458	)--Lance Cancer Gauntlets
--	Defence(	5459	)--Lance Cancer Greaves
	Defence(	5521	)--Lance Vampire Hat
	Defence(	5522	)--Lance Vampire Suit
	Defence(	5523	)--Lance Vampire Gloves
	Defence(	5524	)--Lance Vampire Shoes
	Defence(	5537	)--Lance Black Leather Hat
	Defence(	5538	)--Lance Trenchcoat Suit
	Defence(	5539	)--Lance Black Leather Gloves
	Defence(	5540	)--Lance Black Leather Shoes
	Defence(	5553	)--Lance Shinigami Hat
	Defence(	5554	)--Lance Shinigami Robe
	Defence(	5555	)--Lance Shinigami Gloves
	Defence(	5556	)--Lance Shinigami Shoes
	Defence(	5569	)--Lance Superman Hat
	Defence(	5570	)--Lance Superman Suit
	Defence(	5571	)--Lance Superman Gloves
	Defence(	5572	)--Lance Superman Shoes
	Defence(	5577	)--Lance Ninja Hat
	Defence(	5578	)--Lance Ninja Suit
	Defence(	5579	)--Lance Ninja Gloves
	Defence(	5580	)--Lance Ninja Shoes
	Defence(	5593	)--Lance Caribbean Hat
	Defence(	5594	)--Lance Caribbean Shirt
	Defence(	5595	)--Lance Caribbean Gloves
	Defence(	5596	)--Lance Caribbean Shoes
	Defence(	5661	)--Lance Bloodmoon Helmet
	Defence(	5662	)--Lance Bloodmoon Armor
	Defence(	5663	)--Lance Bloodmoon Gloves
	Defence(	5664	)--Lance Bloodmoon Boots
	Defence(	5677	)--Lance Wild West Cap
	Defence(	5678	)--Lance Wild West Robe
	Defence(	5679	)--Lance Wild West Gloves
	Defence(	5680	)--Lance Wild West Boots


	

end 



function r_talkCarAPP ()

	Talk( 1, "Привет я продавец апарелий на карциза " )
	Text( 1, "Купить ", BuyPage)
	Text( 1, "Пока ",  CloseTalk)

	InitTrade()
	Defence(	5014	)--Modern Caveman Robe
	Defence(	5022	)--Modern Caveman Gloves
	Defence(	5030	)--Modern Caveman Boots
	Defence(	5018	)--Wild Caveman Robe
	Defence(	5026	)--Wild Caveman Gloves
	Defence(	5034	)--Wild Caveman Boots
	Defence(	5042	)--Torso of Catacomb
	Defence(	5046	)--Gage of Catacomb
	Defence(	5050	)--Sandals of Catacomb
	Defence(	5058	)--Torso of Buccaneer
	Defence(	5062	)--Gage of Buccaneer
	Defence(	5066	)--Sandals of Buccaneer
	Defence(	5084	)--Seaman Vest
	Defence(	5085	)--Seaman Gloves
	Defence(	5086	)--Seaman Boots
	Defence(	5087	)--Shark Hide Armor
	Defence(	5088	)--Shark Hide Gloves
	Defence(	5089	)--Shark Hide Boots
	Defence(	5090	)--Sailor Vest
	Defence(	5091	)--Sailor Gloves
	Defence(	5092	)--Sailor Boots
	Defence(	5093	)--Navy Vest
	Defence(	5094	)--Navy Gloves
	Defence(	5095	)--Navy Boots
	Defence(	5096	)--Captain's Jacket
	Defence(	5097	)--Captain's Gloves
	Defence(	5098	)--Captain's Boots
	Defence(	5107	)--Bloody Captain Shirt
	Defence(	5108	)--Bloody Captain Gloves
	Defence(	5109	)--Bloody Captain Shoes
	Defence(	5115	)--Smoker Navy Vest
	Defence(	5116	)--Smoker Navy Gloves
	Defence(	5117	)--Smoker Navy Boots
	Defence(	5238	)--Carsise Ebony Armor
	Defence(	5239	)--Carsise Ebony Gloves
	Defence(	5240	)--Carsise Ebony Boots
	Defence(	5345	)--Carsise Aries Armor
	Defence(	5346	)--Carsise Aries Gauntlets
	Defence(	5347	)--Carsise Aries Greaves
	Defence(	5491	)--Violaceous Dragon Armor
	Defence(	5492	)--Violaceous Dragon Gloves
	Defence(	5493	)--Violaceous Dragon Boots
	Defence(	5504	)--Amber Kylin Armor
	Defence(	5505	)--Amber Kylin Gloves
	Defence(	5506	)--Amber Kylin Boots
	Defence(	5039	)--Tattoo of the Burning Dragon
	Defence(	5040	)--Tattoo of the Frozen Dragon
	Defence(	5306	)--Carsise Romantic Shirt
	Defence(	5307	)--Carsise Romantic Gloves
	Defence(	5308	)--Carsise Romantic Boots
	Defence(	5407	)--Carsise HighSchool Hat
	Defence(	5408	)--Carsise HighSchool Robe
	Defence(	5409	)--Carsise HighSchool Boots
	Defence(	5514	)--Carsise Bruce Tights
	Defence(	5515	)--Carsise Bruce Gloves
	Defence(	5516	)--Carsise Bruce Shoes
	Defence(	5424	)--Carsise Romantic Pas Robe
	Defence(	5425	)--Carsise Romantic Pas Shoes
	Defence(	5437	)--Carsise Romantic Pas White Gloves
	Defence(	5441	)--Carsise Romantic Pas Blue Gloves
	Defence(	5445	)--Carsise Romantic Pas Black Gloves
	Other(	5110	)--Sahara Crocodile Crown
	Other(	5111	)--Sahara Crocodile Vest
	Other(	5112	)--Sahara Crocodile Gloves
	Other(	5113	)--Sahara Crocodile Boots
	Other(	3900	)--Christmas Cap
	Other(	5267	)--Carsise Christmas Shirt
	Other(	5268	)--Carsise Christmas Gloves
	Other(	5269	)--Carsise Christmas Boots
	Other(	5218	)--Summer Storm
	Other(	5195	)--Royal Major Vest
	Other(	5196	)--Royal Major Gloves
	Other(	5197	)--Royal Major Boots
	Other(	5230	)--Carsise Bishop Cap
	Other(	5231	)--Carsise Bishop Robe
	Other(	5232	)--Carsise Bishop Gloves
	Other(	5233	)--Carsise Bishop Boots
	Other(	5234	)--Carsise Ranger Beret
	Other(	5235	)--Carsise Ranger Shirt
	Other(	5236	)--Carsise Ranger Gloves
	Other(	5237	)--Carsise Ranger Boots
	Other(	5291	)--Carsise Fortune Cap
	Other(	5292	)--Carsise Fortune Robe
	Other(	5293	)--Carsise Fortune Gloves
	Other(	5294	)--Carsise Fortune Shoes
	Other(	5319	)--Carsise Piggy Beret
	Other(	5320	)--Carsise Piggy Armor
	Other(	5321	)--Carsise Piggy Gloves
	Other(	5322	)--Carsise Piggy Boots
--	Other(	5360	)--Carsise Betrayal of Taurus
--	Other(	5361	)--Carsise Loneliness of Taurus
--	Other(	5362	)--Carsise Touch of Taurus
--	Other(	5363	)--Carsise Flowing Sand of Taurus
--	Other(	5376	)--Carsise Betrayal of Gemini
--	Other(	5377	)--Carsise Loneliness of Gemini
--	Other(	5378	)--Carsise Touch of Gemini
--	Other(	5379	)--Carsise Flowing Sand of Gemini
	Other(	5392	)--Carsise Busker's Hat
	Other(	5393	)--Carsise Busker's Robe
	Other(	5394	)--Carsise Busker's Gloves
	Other(	5395	)--Carsise Busker's Boots
--	Other(	5460	)--Carsise Cancer Cap
--	Other(	5461	)--Carsise Cancer Armour
--	Other(	5462	)--Carsise Cancer Gloves
--	Other(	5463	)--Carsise Cancer Boots
	Other(	5525	)--Carsise Vampire Hat
	Other(	5526	)--Carsise Vampire Robe
	Other(	5527	)--Carsise Vampire Gloves
	Other(	5528	)--Carsise Vampire Boots
	Other(	5541	)--Carsise Black Leather Hat
	Other(	5542	)--Carsise Trenchcoat Robe
	Other(	5543	)--Carsise Black Leather Gloves
	Other(	5544	)--Carsise Black Leather Boots
	Other(	5557	)--Carsise Shinigami Hat
	Other(	5558	)--Carsise Shinigami Robe
	Other(	5559	)--Carsise Shinigami Gloves
	Other(	5560	)--Carsise Shinigami Boots
	Other(	5573	)--Carsise Superman Hat
	Other(	5574	)--Carsise Superman Suit
	Other(	5575	)--Carsise Superman Gloves
	Other(	5576	)--Carsise Superman Shoes
	Other(	5581	)--Carsise Ninja Hat
	Other(	5582	)--Carsise Ninja Suit
	Other(	5583	)--Carsise Ninja Gloves
	Other(	5584	)--Carsise Ninja Boots
	Other(	5597	)--Carsise Caribbean Hat
	Other(	5598	)--Carsise Caribbean Shirt
	Other(	5599	)--Carsise Caribbean Gloves
	Other(	5600	)--Carsise Caribbean Boots
	Other(	5665	)--Carsise Bloodmoon Helmet
	Other(	5666	)--Carsise Bloodmoon Armor
	Other(	5667	)--Carsise Bloodmoon Gloves
	Other(	5668	)--Carsise Bloodmoon Boots
	Other(	5681	)--Carsise Wild West Cap
	Other(	5682	)--Carsise Wild West Robe
	Other(	5683	)--Carsise Wild West Gloves
	Other(	5684	)--Carsise Wild West Boots
--	Other(	5756	)--Carsise Wild West Cap
--	Other(	5757	)--Carsise Wild West Robe
--	Other(	5758	)--Carsise Wild West Gloves
--	Other(	5759	)--Carsise Wild West Boots

end 



function r_talkPhyAPP ()

	Talk( 1, "Привет я продавщица апарелий на филлис " )
	Text( 1, "Купить ", BuyPage)
	Text( 1, "Пока ",  CloseTalk)

	InitTrade()
	Defence(	5015	)--Alluring Grand Robe
	Defence(	5023	)--Alluring Grand Gloves
	Defence(	5031	)--Alluring Grand Boots
	Defence(	5019	)--Winter Grand Robe
	Defence(	5027	)--Winter Grand Gloves
	Defence(	5035	)--Winter Grand Boots
	Defence(	5043	)--Coat of Catacomb
	Defence(	5047	)--Gloves of Catacomb
	Defence(	5051	)--Boots of Catacomb
	Defence(	5059	)--Coat of Buccaneer
	Defence(	5063	)--Gloves of Buccaneer
	Defence(	5067	)--Boots of Buccaneer
	Defence(	5075	)--Leather Vest
	Defence(	5076	)--Leather Gloves
	Defence(	5077	)--Leather Boots
	Defence(	5078	)--Warrior Frock
	Defence(	5079	)--Warrior Gloves
	Defence(	5080	)--Warrior Boots
	Defence(	5081	)--Nightmare Vest
	Defence(	5082	)--Nightmare Gloves
	Defence(	5083	)--Nightmare Boots
	Defence(	5084	)--Seaman Vest
	Defence(	5085	)--Seaman Gloves
	Defence(	5086	)--Seaman Boots
	Defence(	5087	)--Shark Hide Armor
	Defence(	5088	)--Shark Hide Gloves
	Defence(	5089	)--Shark Hide Boots
	Defence(	5090	)--Sailor Vest
	Defence(	5091	)--Sailor Gloves
	Defence(	5092	)--Sailor Boots
	Defence(	5093	)--Navy Vest
	Defence(	5094	)--Navy Gloves
	Defence(	5095	)--Navy Boots
	Defence(	5096	)--Captain's Jacket
	Defence(	5097	)--Captain's Gloves
	Defence(	5098	)--Captain's Boots
	Defence(	5151	)--Sexy Coat
	Defence(	5152	)--Sexy Gloves
	Defence(	5153	)--Sexy Boots
	Defence(	5169	)--Capricious Robe of Dragon
	Defence(	5170	)--Capricious Gloves of Dragon
	Defence(	5171	)--Capricious Boots of Dragon
	Defence(	5172	)--Dark Blue Vest of Fate
	Defence(	5173	)--Dark Blue Gloves of Fate
	Defence(	5349	)--Phyllis Aries Forlorn
	Defence(	5350	)--Phyllis Aries Gauntlets
	Defence(	5351	)--Phyllis Aries Greaves
	Defence(	5494	)--Violaceous Dragon Coat
	Defence(	5495	)--Violaceous Dragon Gloves
	Defence(	5496	)--Violaceous Dragon Boots
	Defence(	5309	)--Phyllis Romantic Blouse
	Defence(	5310	)--Phyllis Romantic Muffs
	Defence(	5311	)--Phyllis Romantic Shoes
	Defence(	5507	)--Amber Kylin Coat
	Defence(	5508	)--Amber Kylin Gloves
	Defence(	5509	)--Amber Kylin Boots
	Defence(	5410	)--Phyllis HighSchool Hat
	Defence(	5411	)--Phyllis HighSchool Coat
	Defence(	5412	)--Phyllis HighSchool Boots
	Defence(	5416	)--Phyllis School Coat
	Defence(	5417	)--Phyllis School Gloves
	Defence(	5418	)--Phyllis School Boots
	Defence(	5241	)--Phyllis Bruce Tights
	Defence(	5242	)--Phyllis Bruce Gloves
	Defence(	5243	)--Phyllis Bruce Shoes
	Defence(	5426	)--Phyllis Mirable Paradise Robe
	Defence(	5427	)--Phyllis Mirable Paradise Shoes
	Defence(	5438	)--Phyllis Mirable Paradise White Gloves
	Defence(	5442	)--Phyllis Mirable Paradise Blue Gloves
	Defence(	5446	)--Phyllis Mirable Paradise Black Gloves
	Other(	5142	)--Dainty Doll
	Other(	5143	)--Dainty Bodice
	Other(	5144	)--Dainty Gloves
	Other(	5145	)--Dainty Shoes
	Other(	5146	)--Sassy Princess
	Other(	5147	)--Shaitan Princess Bodice
	Other(	5148	)--Shaitan Princess Gloves
	Other(	5149	)--Shaitan Princess Shoes
	Other(	3900	)--Christmas Cap
	Other(	5270	)--Phyllis Christmas Shirt
	Other(	5271	)--Phyllis Christmas Gloves
	Other(	5272	)--Phyllis Christmas Boots
	Other(	5219	)--Dynamic Royal
	Other(	5202	)--Royal Major Vest
	Other(	5203	)--Royal Major Gloves
	Other(	5204	)--Royal Major Boots
	Other(	5244	)--Phyllis Wedding Veil
	Other(	5245	)--Phyllis Wedding Gown
	Other(	5246	)--Phyllis Wedding Gloves
	Other(	5247	)--Phyllis Wedding Shoes
	Other(	5248	)--Phyllis Vestal Wrap
	Other(	5249	)--Phyllis Vestal Costume
	Other(	5250	)--Phyllis Vestal Gloves
	Other(	5251	)--Phyllis Vestal Shoes
	Other(	5295	)--Phyllis Fortune Cap
	Other(	5296	)--Phyllis Fortune Robe
	Other(	5297	)--Phyllis Fortune Gloves
	Other(	5298	)--Phyllis Fortune Shoes
	Other(	5323	)--Phyllis Piggy Bonnet
	Other(	5324	)--Phyllis Piggy Blouse
	Other(	5325	)--Phyllis Piggy Gloves
	Other(	5326	)--Phyllis Piggy Boots
--	Other(	5364	)--Phyllis Betrayal of Taurus
--	Other(	5365	)--Phyllis Loneliness of Taurus
--	Other(	5366	)--Phyllis Touch of Taurus
--	Other(	5367	)--Phyllis Flowing Sand of Taurus
--	Other(	5380	)--Phyllis Betrayal of Gemini
--	Other(	5381	)--Phyllis Loneliness of Gemini
--	Other(	5382	)--Phyllis Touch of Gemini
--	Other(	5383	)--Phyllis Flowing Sand of Gemini
	Other(	5396	)--Phyllis Fantasy Hat
	Other(	5397	)--Phyllis Fantasy Robe
	Other(	5398	)--Phyllis Fantasy Gloves
	Other(	5399	)--Phyllis Fantasy Boots
--	Other(	5464	)--Phyllis Cancer Cap
--	Other(	5465	)--Phyllis Cancer Armour
--	Other(	5466	)--Phyllis Cancer Gloves
--	Other(	5467	)--Phyllis Cancer Boots
	Other(	5529	)--Phyllis Vampire Hat
	Other(	5530	)--Phyllis Vampire Armor
	Other(	5531	)--Phyllis Vampire Gloves
	Other(	5532	)--Phyllis Vampire Boots
	Other(	5545	)--Phyllis Black Leather Hat
	Other(	5546	)--Phyllis Trenchcoat Coat
	Other(	5547	)--Phyllis Black Leather Gloves
	Other(	5548	)--Phyllis Black Leather Shoes
	Other(	5561	)--Phyllis Shinigami Hat
	Other(	5562	)--Phyllis Shinigami Robe
	Other(	5563	)--Phyllis Shinigami Gloves
	Other(	5564	)--Phyllis Shinigami Shoes
	Other(	5585	)--Phyllis Ninja Hat
	Other(	5586	)--Phyllis Ninja Suit
	Other(	5587	)--Phyllis Ninja Gloves
	Other(	5588	)--Phyllis Ninja Shoes
	Other(	5601	)--Phyllis Caribbean Hat
	Other(	5602	)--Phyllis Caribbean Shirt
	Other(	5603	)--Phyllis Caribbean Gloves
	Other(	5604	)--Phyllis Caribbean Shoes
	Other(	5669	)--Phyllis Bloodmoon Helmet
	Other(	5670	)--Phyllis Bloodmoon Armor
	Other(	5671	)--Phyllis Bloodmoon Gloves
	Other(	5672	)--Phyllis Bloodmoon Boots
	Other(	5685	)--Phyllis Wild West Hat
	Other(	5686	)--Phyllis Wild West Robe
	Other(	5687	)--Phyllis Wild West Gloves
	Other(	5688	)--Phyllis Wild West Boots



end 


function r_talkAmiAPP ()

	Talk( 1, "Привет я продавщица апарелий на Ами " )
	Text( 1, "Купить ", BuyPage)
	Text( 1, "Пока ",  CloseTalk)

	InitTrade()
	Defence(	5037	)--Country Cap
	Defence(	5016	)--Country Robe
	Defence(	5024	)--Country Gloves
	Defence(	5032	)--Country Boots
	Defence(	5038	)--Carillon Cap
	Defence(	5020	)--Carillon Robe
	Defence(	5028	)--Carillon Gloves
	Defence(	5036	)--Carillon Boots
	Defence(	5056	)--Crown of Catacomb
	Defence(	5044	)--Costume of Catacomb
	Defence(	5048	)--Muffs of Catacomb
	Defence(	5052	)--Waders of Catacomb
	Defence(	5069	)--Crown of Buccaneer
	Defence(	5060	)--Costume of Buccaneer
	Defence(	5064	)--Muffs of Buccaneer
	Defence(	5068	)--Waders of Buccaneer
	Defence(	5130	)--Happy Reindeer Cap
	Defence(	5131	)--Happy Reindeer Costume
	Defence(	5132	)--Happy Reindeer Muffs
	Defence(	5133	)--Happy Reindeer Shoes
	Defence(	5134	)--Shrooms Cap
	Defence(	5135	)--Shrooms Costume
	Defence(	5136	)--Shrooms Muffs
	Defence(	5137	)--Shrooms Shoes
	Defence(	5138	)--Little Bee Cap
	Defence(	5139	)--Little Bee Costume
	Defence(	5140	)--Little Bee Muffs
	Defence(	5141	)--Little Bee Shoes
	Defence(	5178	)--Aliya Mini Cap
	Defence(	5175	)--Aliya Mini Shirt
	Defence(	5176	)--Aliya Mini Gloves
	Defence(	5177	)--Aliya Mini Shoes
	Defence(	5182	)--Sweetie Cap
	Defence(	5179	)--Sweetie Robe
	Defence(	5180	)--Sweetie Gloves
	Defence(	5181	)--Sweetie Shoes
	Defence(	5186	)--Azure Crown of Fairy
	Defence(	5183	)--Azure Robe of Fairy
	Defence(	5184	)--Azure Gloves of Fairy
	Defence(	5185	)--Azure Boots of Fairy
	Defence(	5190	)--Noble Lion Crown
	Defence(	5187	)--Noble Lion Costume
	Defence(	5188	)--Noble Lion Muffs
	Defence(	5189	)--Noble Lion Paw
	Defence(	5194	)--Silk Bunny Cap
	Defence(	5191	)--Silk Bunny Costume
	Defence(	5192	)--Silk Bunny Muffs
	Defence(	5193	)--Silk Bunny Shoes
	Defence(	5260	)--Ami Chibi Cap
	Defence(	5261	)--Ami Chibi Costume
	Defence(	5262	)--Ami Chibi Gloves
	Defence(	5263	)--Ami Chibi Shoes
	Defence(	5352	)--Ami Aries Diadem
	Defence(	5353	)--Ami Aries Costume
	Defence(	5354	)--Ami Aries Muffs
	Defence(	5355	)--Ami Aries Shoes
	Defence(	5497	)--Violaceous Dragon Diadem
	Defence(	5498	)--Violaceous Dragon Costume
	Defence(	5499	)--Violaceous Dragon Muffs
	Defence(	5500	)--Violaceous Dragon Shoes
	Defence(	5510	)--Amber Kylin Diadem
	Defence(	5511	)--Amber Kylin Costume
	Defence(	5512	)--Amber Kylin Muffs
	Defence(	5513	)--Amber Kylin Shoes
	Defence(	5312	)--Ami Romantic Dress
	Defence(	5313	)--Ami Romantic Gloves
	Defence(	5314	)--Ami Romantic Boots
	Defence(	5413	)--Ami HighSchool Hat
	Defence(	5414	)--Ami HighSchool Costume
	Defence(	5415	)--Ami HighSchool Shoes
	Defence(	5419	)--Ami School Costume
	Defence(	5420	)--Ami School Muffs
	Defence(	5421	)--Ami School Shoes
	Defence(	5517	)--Ami Bruce Tights
	Defence(	5518	)--Ami Bruce Gloves
	Defence(	5519	)--Ami Bruce Shoes
	Defence(	5428	)--Ami Pink Angel Hat
	Defence(	5429	)--Ami Pink Angel Robe
	Defence(	5430	)--Ami Pink Angel Gloves
	Defence(	5431	)--Ami Pink Angel Boots
	Defence(	5439	)--Ami Pink Angel White Gloves
	Defence(	5443	)--Ami Pink Angel Blue Gloves
	Defence(	5447	)--Ami Pink Angel Black Gloves
	Other(	3900	)--Christmas Cap
	Other(	5273	)--Ami Christmas Shirt
	Other(	5274	)--Ami Christmas Gloves
	Other(	5275	)--Ami Christmas Boots
	Other(	5201	)--Royal Major Hat
	Other(	5198	)--Royal Major Vest
	Other(	5199	)--Royal Major Gloves
	Other(	5200	)--Royal Major Boots
	Other(	5252	)--Ami Wedding Veil
	Other(	5253	)--Ami Wedding Gown
	Other(	5254	)--Ami Wedding Gloves
	Other(	5255	)--Ami Wedding Shoes
	Other(	5256	)--Ami Vestal Cap
	Other(	5257	)--Ami Vestal Costume
	Other(	5258	)--Ami Vestal Gloves
	Other(	5259	)--Ami Vestal Shoes
	Other(	5299	)--Ami Fortune Cap
	Other(	5300	)--Ami Fortune Robe
	Other(	5301	)--Ami Fortune Gloves
	Other(	5302	)--Ami Fortune Shoes
	Other(	5327	)--Ami Piggy Cap
	Other(	5328	)--Ami Piggy Costume
	Other(	5329	)--Ami Piggy Muffs
	Other(	5330	)--Ami Piggy Shoes
--	Other(	5368	)--Ami Betrayal of Taurus
--	Other(	5369	)--Ami's Loneliness of Taurus
--	Other(	5370	)--Ami Touch of Taurus
--	Other(	5371	)--Ami Flowing Sand of Taurus
--	Other(	5384	)--Ami Betrayal of Gemini
--	Other(	5385	)--Ami's Loneliness of Gemini
--	Other(	5386	)--Ami Touch of Gemini 
--	Other(	5387	)--Ami Flowing Sand of Gemini
	Other(	5400	)--Ami Hunny Hat
	Other(	5401	)--Ami Hunny Rope
	Other(	5402	)--Ami Hunny Gloves
	Other(	5403	)--Ami Hunny Boots
--	Other(	5468	)--Ami Cancer Cap
--	Other(	5469	)--Ami Cancer Armour
--	Other(	5470	)--Ami Cancer Gloves
--	Other(	5471	)--Ami Cancer Boots
	Other(	5533	)--Ami Vampire Hat
	Other(	5534	)--Ami Vampire Costume
	Other(	5535	)--Ami Vampire Muffs
	Other(	5536	)--Ami Vampire Shoes
	Other(	5549	)--Ami Black Leather Hat
	Other(	5550	)--Ami Trenchcoat Costume
	Other(	5551	)--Ami Black Leather Gloves
	Other(	5552	)--Ami Black Leather Shoes
	Other(	5565	)--Ami Shinigami Hat
	Other(	5566	)--Ami Shinigami Robe
	Other(	5567	)--Ami Shinigami Gloves
	Other(	5568	)--Ami Shinigami Shoes
	Other(	5589	)--Ami Ninja Hat
	Other(	5590	)--Ami Ninja Suit
	Other(	5591	)--Ami Ninja Gloves
	Other(	5592	)--Ami Ninja Shoes
	Other(	5605	)--Ami Caribbean Hat
	Other(	5606	)--Ami Caribbean Shirt
	Other(	5607	)--Ami Caribbean Gloves
	Other(	5608	)--Ami Caribbean Shoes
	Other(	5673	)--Ami Bloodmoon Helmet
	Other(	5674	)--Ami Bloodmoon Armor
	Other(	5675	)--Ami Bloodmoon Gloves
	Other(	5676	)--Ami Bloodmoon Boots
	Other(	5689	)--Ami Wild West Diadem
	Other(	5690	)--Ami Wild West Robe
	Other(	5691	)--Ami Wild West Gloves
	Other(	5692	)--Ami Wild West Boots

end 

function r_LeoNaRDo5 ()

	Talk( 1, "\195\235\224\226\224 \195\232\235\252\228\232\233: \207\240\232\226\229\242! \211 \236\229\237\255 \226\251 \236\238\230\229\242\229 \241\238\231\228\224\242\252 \241\226\238\254 \227\232\235\252\228\232\254" )
	Text( 1, "\209\238\231\228\224\242\252 \239\232\240\224\242\241\234\243\254 \227\232\235\252\228\232\254",JumpPage, 2 )
	Text( 1, "\209\238\231\228\224\242\252 \244\235\238\242\241\234\243\254 \227\232\235\252\228\232\254",JumpPage, 3 )
	Text( 1, "\207\240\238\241\236\238\242\240\229\242\252 \242\238\239 3-\229\245 \227\232\235\252\228\232\233", ListChallenge)
	Text( 1, "\211\233\242\232",CloseTalk )


	Talk( 2, "\195\235\224\226\224 \195\232\235\252\228\232\233: \207\232\240\224\242\241\234\224\255 \227\232\235\252\228\232\255? \203\229\227\234\238! \207\240\232\237\229\241\232 \236\237\229 \234\224\236\229\237\252 \234\235\255\242\226\251 \232 100 000" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerAction( 1, CreateGuild, 1 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "\209\238\231\228\224\242\252 \195\232\235\252\228\232\254", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 3, "\195\235\224\226\224 \195\232\235\252\228\232\233: \212\235\238\242\241\234\224\255 \227\232\235\252\228\232\255? \203\229\227\234\238! \207\240\232\237\229\241\232 \236\237\229 \234\224\236\229\237\252 \234\235\255\242\226\251 \232 100 000" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerAction( 1, CreateGuild, 0 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 3, "\209\238\231\228\224\242\252 \195\232\235\252\228\232\254", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "\195\235\224\226\224 \195\232\235\252\228\232\233: \211 \242\229\225\255 \237\229\242 \234\224\236\237\255 \234\235\255\242\226\251 \232\235\232 100 000" )
	Text( 4, "\211\233\242\232",CloseTalk )
end

--Тюрьма
function prison_talk01 ()

	Talk ( 1, "\194\251 \225\243\228\229\242\229 \227\238\240\229\242\252, \247\242\238\225\251 \239\238\235\254\225\232\242\252 \253\242\238 \236\229\241\242\238, \229\241\235\232 \226\224\241 \231\224\234\235\254\247\224\242 \226 \242\254\240\252\236\243 \237\224 \228\238\241\242\224\242\238\247\237\238 \228\238\235\227\238\229 \226\240\229\236\255.")
	Text ( 1, "\211\231\237\224\242\252 \241\239\238\241\238\225 \234\224\234 \226\251\225\240\224\242\252\241\255 \232\231 \242\254\240\252\236\251", JumpPage, 2)

	Talk ( 2, "\197\241\242\252 \242\240\232 \241\239\238\241\238\225\224 \226\251\225\240\224\242\252\241\255 \238\242\241\254\228\224. \206 \234\224\234\238\236 \194\251 \245\238\242\232\242\229 \243\231\237\224\242\252?")
	Text ( 2, "\209\239\238\241\238\225 \237\238\236\229\240 1", JumpPage, 3)
	Text ( 2, "\209\239\238\241\238\225 \237\238\236\229\240 2", JumpPage, 4)
	Text ( 2, "\209\239\238\241\238\225 \237\238\236\229\240 3", JumpPage, 5)

	Talk ( 3, "\209\239\238\241\238\225 \237\238\236\229\240 1: \194\251 \236\238\230\229\242\229 \237\224\233\242\232 \237\224\247\224\235\252\237\232\234\224 \242\254\240\252\236\251, \247\242\238\225\251 \239\238\235\243\247\232\242\252 \196\229\235\238 \238 \224\240\229\241\242\229. \207\238\236\229\241\242\232\226 \253\242\238\242 \228\238\234\243\236\229\237\242 \226 \242\240\229\242\232\233 \241\235\238\242 \226\224\248\229\227\238 \232\237\226\229\237\242\224\240\255 \239\240\238\225\243\228\252\242\229 \226 \242\254\240\252\236\229 \226 \242\229\247\229\237\232\232 \247\224\241\224. \199\224\242\229\236 \194\251 \241\236\229\235\238 \236\238\230\229\242\229 \239\238\239\240\238\241\232\242\252 \237\224\247\224\235\252\237\232\234\224 \242\254\240\252\236\251 \238\225 \238\241\226\238\225\238\230\228\229\237\232\232.")
	Text ( 3, "\194\229\240\237\243\242\252\241\255 \237\224 \239\240\229\228\251\228\243\249\243\254 \241\242\240\224\237\232\246\243", JumpPage, 2)
	Text ( 3, "\211\233\242\232", CloseTalk)

	Talk ( 4, "\209\239\238\241\238\225 \237\238\236\229\240 2: \200\231\226\229\241\242\237\238, \247\242\238 \243 \195\235\224\226\251 \199\224\234\235\254\247\229\237\237\251\245 \229\241\242\252 \196\238\234\243\236\229\237\242 \237\224 \196\238\241\240\238\247\237\238\229 \206\241\226\238\225\238\230\228\229\237\232\229. \197\241\235\232 \194\251 \241\236\238\230\229\242\229 \226\231\255\242\252 \229\227\238 \241\232\235\238\233, \242\238 \194\251 \225\243\228\229\242\229 \238\241\226\238\225\238\230\228\229\237\251 \205\224\247\224\235\252\237\232\234\238\236.")
	Text ( 4, "\194\229\240\237\243\242\252\241\255 \237\224 \239\240\229\228\251\228\243\249\243\254 \241\242\240\224\237\232\246\243", JumpPage, 2)
	Text ( 4, "\211\233\242\232", CloseTalk)

	Talk ( 5, "\209\239\238\241\238\225 \237\238\236\229\240 3: \197\241\235\232 \243 \226\224\241 \229\241\242\252 \202\224\240\242\238\247\234\224 \206\242\235\232\247\237\238\227\238 \207\224\240\237\255, \194\251 \242\224\234\230\229 \236\238\230\229\242\229 \239\240\232\237\229\241\242\232 \229\229 \205\224\247\224\235\237\232\234\243 \242\254\240\252\236\251 \232 \239\238\239\240\238\241\232\242\252 \238\225 \238\241\226\238\225\238\230\228\229\237\232\232.")
	Text ( 5, "\194\229\240\237\243\242\252\241\255 \237\224 \239\240\229\228\251\228\243\249\243\254 \241\242\240\224\237\232\246\243", JumpPage, 2)
	Text ( 5, "\211\233\242\232", CloseTalk)

	AddNpcMission	(6231)

end

function prison_talk02 ()

	Talk ( 1, "\199\228\240\224\226\241\242\226\243\233. \210\251 \237\224\245\238\228\232\248\252\241\255 \237\224 \236\238\229\233 \242\229\240\240\232\242\238\240\232\232. \199\228\229\241\252 \255 \243\241\242\224\237\238\226\232\235 \241\226\238\232 \239\240\224\226\232\235\224 \232 \242\251 \228\238\235\230\229\237\237 \232\245 \241\238\225\235\254\228\224\242\252. \207\238\237\255\242\237\238?!")
	InitTrigger()
	TriggerCondition( 1, NoItem, 5724, 1 ) 
	TriggerCondition( 1, HasRecord, 1280 ) 
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, GiveItem, 5724, 1, 4)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 5)
	Text ( 1, "\223 \245\238\247\243 \239\238\235\243\247\232\242\252 \196\229\235\238 \238 \224\240\229\241\242\229", MultiTrigger, GetMultiTrigger(), 1)
	Text ( 1, "\223 \245\238\247\243 \226\251\225\240\224\242\252\241\255 \238\242\241\254\228\224...", JumpPage, 4)

	Talk ( 2, "\205\229 \231\224\225\243\228\252\242\229 \239\238\236\229\241\242\232\242\252 \196\229\235\238 \238 \224\240\229\241\242\229 \226 \242\240\229\242\232\233 \241\235\238\242 \226\224\248\229\227\238 \232\237\226\229\237\242\224\240\255.")

	Talk ( 4, "\197\241\235\232 \243 \226\224\241 \229\241\242\252 \202\224\240\242\238\247\234\224 \206\242\235\232\247\237\238\227\238 \207\224\240\237\255 \232\235\232 \194\251 \238\242\225\251\235\232 \241\226\238\233 \241\240\238\234 \237\224\234\224\231\224\237\232\255, \242\238 \194\251 \236\238\230\229\242\229 \239\238\234\232\237\243\242\252 \242\229\240\240\232\242\238\240\232\254 \242\254\240\252\236\251.")
	InitTrigger()
	TriggerCondition( 1, Checkjlktime ) 
	TriggerAction( 1, TakeItem, 5724, 1) 
	TriggerAction( 1, Leaveprison ) 
	TriggerCondition( 2, HasItem, 5723, 1) 
	TriggerAction( 2, TakeItem, 5723, 1) 
	TriggerAction( 2, Leaveprison ) 
	TriggerFailure( 2, JumpPage, 6)
	Text ( 4, "\207\238\242\226\229\240\228\232\242\252 \226\251\245\238\228", MultiTrigger, GetMultiTrigger(), 2)
	Text ( 4, "\223 \238\241\242\224\254\241\252 \231\228\229\241\252", CloseTalk)

	Talk ( 5, "\194\251 \237\229 \236\238\230\229\242\229 \226\231\255\242\252 \196\229\235\238 \238 \224\240\229\241\242\229! \207\240\238\226\229\240\252\242\229, \231\224\234\238\237\247\232\235\232 \235\232 \194\251 \234\226\229\241\242 [\207\243\242\252 \206\241\226\238\225\238\230\228\229\237\232\255]. \197\241\235\232 \194\251 \229\227\238 \226\251\239\238\235\237\232\235\232 \232 \226\241\229 \229\249\229 \237\229 \236\238\230\229\242\229 \226\231\255\242\252 \196\229\235\238 \238 \224\240\229\241\242\229, \239\240\238\226\229\240\252\242\229 \226\224\248 \232\237\226\229\237\242\224\240\252 (\197\241\242\252 \235\232 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \232 \238\237 \237\229 \231\224\225\235\238\234\232\240\238\226\224\237). \194\229\241\252\236\224 \226\238\231\236\238\230\237\238 \247\242\238 \194\251 \243\230\229 \239\238\235\243\247\232\235\232 \238\228\237\238 \196\229\235\238 \238 \224\240\229\241\242\229.")
	Talk ( 6, "\194\251 \241\238\225\235\254\235\232 \237\229 \226\241\229 \243\241\235\238\226\232\255. \194\251 \238\241\242\224\229\242\229\241\252 \231\228\229\241\252.")

	AddNpcMission	(6230)

end

function church_talk01()

	Talk (1, "\209\226\232\228\229\242\229\235\252: \207\240\232\226\229\242. \199\224 200 \231\238\235\238\242\251\245 \255 \236\238\227\243 \243\241\242\240\238\232\242\252 \228\235\255 \230\229\237\232\245\224 \241 \237\229\226\229\241\242\238\233 \227\240\224\237\228\232\238\231\237\251\233 \241\224\235\254\242. \213\238\247\229\248\252?")
	--Talk (1, "Свидетель: Привет. За 200 золотых я могу устроить для жениха с невестой грандиозный салют. Хочешь?")

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 ) 
	TriggerAction( 1, TakeMoney, 200) 
	TriggerAction( 1, FireworksChurch ) 
	TriggerFailure( 1, JumpPage, 3)

	Text (1, "\202\238\237\229\247\237\238!", MultiTrigger, GetMultiTrigger(), 1)
	--Text (1, "Конечно!",  MultiTrigger, GetMultiTrigger(), 1)
	Text (1, "\205\229\242, \241\239\224\241\232\225\238.", CloseTalk)
	--Text (1, "Нет, спасибо.", CloseTalk)

	Talk (3, "\209\226\232\228\229\242\229\235\252: \200\231\226\232\237\232\242\229, \237\238 \243 \194\224\241 \237\229\242 \228\229\237\229\227.")
	--Talk (3, "Свидетель: Извините, но у Вас нет денег.")
	Text (3, "\196\238 \241\226\232\228\224\237\232\255.", CloseTalk)
	--Text (3, "До свидания.", CloseTalk)

end

function church_talk02()

	Talk (1, "\209\226\232\228\229\242\229\235\252\237\232\246\224: \207\240\232\226\229\242. \199\224 200 \231\238\235\238\242\251\245 \255 \236\238\227\243 \243\241\242\240\238\232\242\252 \228\235\255 \230\229\237\232\245\224 \241 \237\229\226\229\241\242\238\233 \227\240\224\237\228\232\238\231\237\251\233 \241\224\235\254\242. \213\238\247\229\248\252?")
	--Talk (1, "Свидетельница: Привет. За 200 золотых я могу устроить для жениха с невестой грандиозный салют. Хочешь?")

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 ) 
	TriggerAction( 1, TakeMoney, 200) 
	TriggerAction( 1, FireworksChurch ) 
	TriggerFailure( 1, JumpPage, 3)

	Text (1, "\202\238\237\229\247\237\238!", MultiTrigger, GetMultiTrigger(), 1)
	--Text (1, "Конечно!",  MultiTrigger, GetMultiTrigger(), 1)
	Text (1, "\205\229\242, \241\239\224\241\232\225\238.", CloseTalk)
	--Text (1, "Нет, спасибо.", CloseTalk)

	Talk (3, "\209\226\232\228\229\242\229\235\252\246\224: \200\231\226\232\237\232\242\229, \237\238 \243 \194\224\241 \237\229\242 \228\229\237\229\227.")
	--Talk (3, "Свидетельца: Извините, но у Вас нет денег.")
	Text (3, "\196\238 \241\226\232\228\224\237\232\255.", CloseTalk)
	--Text (3, "До свидания.", CloseTalk)

end

function m_maylada ()
	
	Talk( 1, "\204\224\233\235\224\228\224: \225\238\227 \236\232\235\238\241\229\240\228\229\237. \223 \239\240\232\227\235\224\248\224\254 \242\229\225\255 \237\224 \209\226\255\242\243\254 \231\229\236\235\254 \232\236\229\237\229\236 \241\226\238\229\227\238 \227\238\241\239\238\228\232\237\224!" )
	Text( 1, "\206 \214\229\240\234\226\232", JumpPage, 17)	

	Talk( 17, "\204\224\233\235\224\228\224: \213\238\247\229\248\252 \224\240\229\237\228\238\226\224\242\252 \214\229\240\234\238\226\252? \223 \236\238\227\243 \241\228\229\235\224\242\252 \241\229\227\238\228\237\255 \241\234\232\228\234\243." )
	Text( 17, "\202\240\224\242\234\238\229 \238\239\232\241\224\237\232\229 \246\229\240\234\226\232", JumpPage, 6)
	Text( 17, "\214\229\240\234\238\226\237\224\255 \241\242\224\226\234\224", ListAuction)
	Text( 17, "\202\243\239\232\242\252 \225\232\235\229\242 \226 \246\229\240\234\238\226\252", JumpPage, 2 )
	Text( 17, "\202\243\239\232\242\252 \239\240\232\227\235\224\248\229\237\232\255", JumpPage, 5)

	InitTrigger()
	TriggerCondition( 1, HasMoney,5000 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction(1, GiveItem, 3024, 1 , 4)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4 )
	Talk(2, "\204\224\233\235\224\228\224: \214\229\240\234\238\226\252 \253\242\238 \236\229\241\242\238 \227\228\229 \237\224\247\232\237\224\229\242\241\255 \241\247\224\241\242\252\229, \227\228\229 \235\254\225\238\226\252 \253\242\238 \227\235\224\226\237\238\229. \207\240\232\245\238\228\232 \237\224 \253\234\241\234\243\240\241\232\254 \234\224\230\228\251\233 \239\238\237\229\228\229\235\252\237\232\234 \241 17:00 \228\238 17:10. \225\232\235\229\242 \241\242\238\232\242 \226\241\229\227\238 5000 \231\238\235\238\242\251\245.")
	Text( 2, "\207\238\228\242\226\229\240\228\232\242\252 \239\238\234\243\239\234\243",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "\207\240\232\227\235\224\248\224\229\236 \237\224 \253\234\241\234\243\240\241\232\254 \226\238 \226\240\229\236\229\237\232.")
	Talk(4, "\204\224\233\235\224\228\224: \211 \242\229\225\255 \237\229\228\238\241\242\224\242\238\247\237\238 \231\238\235\238\242\224! \200\235\232 \231\224\225\235\238\234\232\240\238\226\224\237 \232\237\226\229\237\242\224\240\252. \207\238\236\237\232, \237\243\230\237\224 1 \239\243\241\242\224\255 \255\247\229\233\234\224.")
	
	Talk( 5, "\204\224\233\235\224\228\224: \208\224\231\240\229\248\229\237\232\229 \214\229\240\234\226\232 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \228\235\255 \239\238\235\243\247\229\237\232\255 \241\238\238\242\226\229\242\241\242\226\243\254\249\232\245 \239\240\232\227\235\224\241\232\242\229\235\252\237\251\245 \225\232\235\229\242\238\226. \202\224\230\228\251\229 10 \234\243\241\238\247\234\238\226 \239\240\232\227\235\224\241\232\242\229\235\252\237\238\227\238 \225\232\235\229\242\224 \241\238\241\242\224\226\235\255\254\242 \229\228\232\237\238\229 \246\229\235\238\229. 50 000 \231\238\235\238\242\251\245 \228\238\235\230\237\238 \225\251\242\252 \243\239\235\224\247\229\237\238 \231\224 1 \248\242\243\234\243. \207\240\232\227\235\224\241\232 \228\240\243\231\229\233 \237\224 \226\229\247\229\240\232\237\234\243!" )
	Text( 5, "\207\238\228\242\226\229\240\228\232\242\252 \239\238\234\243\239\234\243", ChangeItem, 1  )
	
	Talk( 6, "\204\224\233\235\224\228\224: \206 \247\229\236 \242\251 \245\238\247\229\248\252 \243\231\237\224\242\252?" )
	Text( 6, "\206 \239\238\241\229\249\229\237\232\232", JumpPage, 7)
	Text( 6, "\206 \214\229\240\234\238\226\237\238\236 \224\243\234\246\232\238\237\229", JumpPage, 8)
	Text( 6, "\206\225 \232\241\239\238\235\252\231\238\226\224\237\232\232 \246\229\240\226\234\232", JumpPage, 9)
	Text( 6, "\206 \208\224\231\240\229\248\229\237\232\232 \214\229\240\234\226\232", JumpPage, 10)

	Talk( 7, "\204\224\233\235\224\228\224: \200\227\240\238\234\232 \234\238\242\238\240\251\229 \234\243\239\232\235\232 \225\232\235\229\242\251 \226 \246\229\240\234\238\226\252 \236\238\227\243\242 \239\238\241\229\242\232\242\252 \229\229 \241 17:00 \228\238 17:10 \234\224\230\228\251\233 \239\238\237\229\228\229\235\252\237\232\234.")
	Text( 7, "\207\238\228\242\226\229\240\228\232\242\252", CloseTalk)
	Text( 7, "\205\224\231\224\228", JumpPage, 6)

	Talk( 8, "\204\224\233\235\224\228\224: \214\229\240\234\238\226\237\251\233 \192\243\234\246\232\238\237 \239\240\238\245\238\228\232\242 \241 18:00 \228\238 20:30 \234\224\230\228\251\233 \239\238\237\229\228\229\235\252\237\232\234. \204\232\237\232\236\224\235\252\237\251\233 \248\224\227 \224\243\234\246\232\238\237\224: \209\242\224\226\238\247\237\224\255 \234\224\240\242\238\247\234\224. \214\229\240\229\236\238\237\232\232 \239\240\238\226\238\228\255\242\241\255 \239\238 2 \234\224\230\228\251\233 \226\251\245\238\228\237\238\233.")
	Text( 8, "\207\238\228\242\226\229\240\228\232\242\252", CloseTalk)
	Text( 8, "\205\224\231\224\228", JumpPage, 6)

	Talk( 9, "\204\224\233\235\224\228\224: \214\229\240\234\238\226\237\251\233 \192\243\234\246\232\238\237 \239\238\228\229\235\229\237 \237\224 4 \239\229\240\232\238\228\224. \207\238\225\229\228\232\242\229\235\252 \239\238\235\243\247\224\229\242 \208\224\231\240\229\248\229\237\232\229 \214\229\240\234\226\232 \232 10 \239\240\232\227\235\224\241\232\242\229\235\252\237\251\245 \225\232\235\229\242\238\226.")
	Text( 9, "\207\238\228\242\226\229\240\228\232\242\252", CloseTalk)
	Text( 9, "\205\224\231\224\228", JumpPage, 6)

	Talk( 10, "\204\224\233\235\224\228\224: \208\224\231\240\229\248\229\237\232\229 \214\229\240\234\226\232 \239\238\231\226\238\235\232\242 \234\243\239\232\242\252 \239\240\232\227\235\224\241\232\242\229\235\252\237\251\229 \225\232\235\229\242\251, \228\226\238\233\237\238\229 \237\224\230\224\242\232\229 \239\238 \208\224\231\240\229\248\229\237\232\254 \239\229\240\229\236\229\241\242\232\242 \242\229\225\255 \226 \246\229\240\234\238\226\252. \209\239\243\241\242\255 2 \247\224\241\224 \226\241\229 \243\247\224\241\242\237\232\234\232 \225\243\228\243\242 \226\238\231\226\240\224\249\229\237\251 \226 \216\224\233\242\224\237.")
	Text( 10, "\207\238\228\242\226\229\240\228\232\242\252", CloseTalk)
	Text( 10, "\205\224\231\224\228", JumpPage, 6)
end

function alex_tp1 ()

	local ReSelectTalk = "I need to reconsider"
	local ReSelectPage = 1

	--cancel talk
	local CancelSelectTalk = "Forget it, I will stay here"
	local CancelSelectPage = 2

	--maps
	local CurMapName1 = "winterland"
	local CurMapName2 = "mjing1"
	local CurMapName3 = "mjing2"
	local CurMapName4 = "mjing3"
	local CurMapName5 = "mjing4"


	--Winter
	local GoTo01X = 249
	local GoTo01Y = 866
	local GoTo01M = CurMapName1

	--1st aurora
	local GoTo02X = 351
	local GoTo02Y = 180
	local GoTo02M = CurMapName2

	--2nd aurora
	local GoTo03X = 327
	local GoTo03Y = 183
	local GoTo03M = CurMapName3

	--1st dark area
	local GoTo04X = 88
	local GoTo04Y = 87
	local GoTo04M = CurMapName4

	--2nd dark area
	local GoTo05X = 88
	local GoTo05Y = 87
	local GoTo05M = CurMapName5
	

	--2nd dark area
	local GoTo06X = 74
	local GoTo06Y = 78
	local GoTo06M = CurMapName6


	Talk( 1, "Привет я портальщик Буч,я могу тебя отправить на острова " )
    Text( 1, "Остров Зимы ", JumpPage, 2 )
    Text( 1, "1 край Авроры ", JumpPage, 3 )
	Text( 1, "2 край Авроры ", JumpPage, 4 )
    Text( 1, "1 край тьмы ", JumpPage, 5 )
    Text( 1, "2 край тьмы ", JumpPage, 6 )

	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "На Остров Зимы? " )
	Text( 2, "Да ",MultiTrigger, GetMultiTrigger(), 2)
    Text( 2, "Нет не надо ", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	Talk( 3, "В 1 край Авроры? " )
    Text( 3, "Да ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, "Нет не надо ", JumpPage, 1 )


	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	Talk( 4, "Во 2 край Авроры? " )
	Text( 4, "Да ",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 4, "Нет не надо ", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, "В 1 край Тьмы? " )
	Text( 5, "Да ",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 5, "Нет не надо ", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo5X, GoTo5Y, GoTo5M )
	Talk( 6, "Во 2 край Тьмы? " )
	Text( 6, "Да ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 6, "Нет не надо", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	Talk( 8, "Thundoria Mirrage?" )
	Text( 8, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "I Have Changed My Mind", JumpPage, 1 )

end

function zsts_talk()

	Talk( 1, "Маленький Ангел: Я вижу вы выполнили задание Перождение Феникса, вы можете получить вашу награду за старания. " )
	Text( 1, "Я хочу Переродиться ", JumpPage, 2)
	Text( 1, "Я хочу узнать больше ", JumpPage, 3)
	Text( 1, "У меня возникли проблемы при перерождение ", JumpPage, 5 )
	Text( 1, "Я ещё не выполнил этого задния. ", CloseTalk)
	
	Talk( 2, "Маленький Ангел: Кем бы вы хотели стать после перерождения? " )
	Text( 2, "Стать Воителем, чтобы нести справедливость и мир ", GetChaName1_born, 1)
	Text( 2, "Стать Чемпионом, чтобы защишать своих спутников ", GetChaName2_born, 1)
	Text( 2, "Стать Покорителем морей, чтобы бороздить моря ", GetChaName3_born, 1)
	Text( 2, "Стать Стрелком, чтобы победить всех врагов ", GetChaName4_born, 1)
	Text( 2, "Стать Целителем, чтобы исцелять ближних ", GetChaName5_born, 1)	
	Text( 2, "Стать Колдуньей, чтобы делать все что угодно ", GetChaName6_born, 1)
	Text( 2, "Мне нужно ещё подумать ", CloseTalk)
	
	Talk( 3, "Маленький Ангел: Что вы хотите узнать? " )
	Text( 3, "Классы после перерождения? ", JumpPage, 4 )

	Talk( 4, "Маленький Ангел: Игроки могут повторно выбрать класс после перерождения: Ланс может стать Воителем, Покорителем морей или Стрелком. Карциз может стать чемпионом. Филлис может стать Цилителем, Колдуньей, Покорителем морей или Стрелком. Ами может стать Целителем, Колдуньей или Покорителем морей. ")
	Text( 4, "Спасибо, я все понил ", CloseTalk)
	
	Talk( 5, "Маленький Ангел: Что не так? " )
	Text( 5, "У меня есть камень перерождения, но я немогу переродится! ", JumpPage, 6)
	Text( 5, "Я не знаю где взять задание! ", JumpPage, 7)
	Text( 5, "Первосвященик не даёт мне некаких заданий! ", JumpPage, 8)
	
	Talk( 6, "Снимите все ваши вещи, в том числе кольца и ожерелья. Убедитесь, что вы выбираете свой класс в зависимости от расы. ") 
	Text( 6, "Позвольте мне попробовать еще раз! ", JumpPage, 1)
	
	Talk( 7, "Обратитесь к Первосвященику недалеко от меня. ")
	Text( 7, "Я понил, спасибо! ", CloseTalk )
	
	Talk( 8, "Вы выполнили Перерождение Феникса? Это требуется, чтобы взять второе задание на Перерождение. " )
	Text( 8, "Да! Я выполнил его. ", JumpPage, 9 )
	Text( 8, "Я его не сделал ", JumpPage, 10 )
	
	Talk( 9, "Если вы выполнили это задние то всё впорядке, попробуйте ещё раз. Если опять не получится обратитесь к Администрации. ")
	Text( 9, "Я попробую ещё раз ", CloseTalk )
	
	Talk( 10, "Тогда почему вы здесь? Вы не можете начать второе Перерождение, пока вы не закончите первое. ")
	Text( 10, "Приношу извинения за отсутствие моего интеллекта ", CloseTalk )
	

end

function n_tura11()

	Talk( 1, "Привет, добро пожаловать! Как я могу вам помочь?")
	Text( 1, "Торг!", BuyPage )
	Text( 1, "Ничего...", CloseTalk )

      	InitTrade()
	Weapon(	2673	) -- 	Mirage Generator Lv1
	Weapon(	2674	) -- 	Illusion Generator Lv1
	Weapon(	2675	) -- 	Stealth Lv1
	Weapon(	2676	) -- 	Radar Lv1
	Weapon(	2677	) -- 	Chain Bullet Lv1
	Weapon(	2678	) -- 	Water Mine Lv1
	Weapon(	2719	) -- 	Grenade Lv2
	Weapon(	2720	) -- 	Flash Bomb Lv2
	Weapon(	2721	) -- 	Radiation Lv2
	Weapon(	2722	) -- 	Soul Detector Lv2
	Weapon(	2723	) -- 	Ship Accelerator Lv2
	Weapon(	2724	) -- 	Ship Atomizer Lv2
	Weapon(	2725	) -- 	Ship Penetrator Lv2
	Weapon(	2726	) -- 	Ship Impaler Lv2
	Weapon(	2727	) -- 	Ship Flamer Lv2
	Weapon(	2728	) -- 	Evil Generator Lv2
	Weapon(	2729	) -- 	Sand Bag Lv2
	Weapon(	2730	) -- 	Carrion Ball Lv2
	Weapon(	2731	) -- 	Noise Polluter Lv2
	Weapon(	2732	) -- 	Earthquake Generator Lv2
	Weapon(	2733	) -- 	Time Bomb Lv2
	Weapon(	2734	) -- 	Hull Repair Lv2
	Weapon(	2735	) -- 	Food Generation Lv2
	Weapon(	2736	) -- 	Carrion Bullet Lv2
	Weapon(	2737	) -- 	Mirage Generator Lv2
	Weapon(	2738	) -- 	Illusion Generator Lv2
	Weapon(	2739	) -- 	Stealth Lv2
	Weapon(	2740	) -- 	Radar Lv2
	Weapon(	2741	) -- 	Chain Bullet Lv2
	Weapon(	2742	) -- 	Water Mine Lv2
	Weapon(	2743	) -- 	Grenade Lv3
	Weapon(	2744	) -- 	Flash Bomb Lv3
	Weapon(	2745	) -- 	Radiation Lv3
	Weapon(	2746	) -- 	Soul Detector Lv3
	Weapon(	2747	) -- 	Ship Accelerator Lv3
	Weapon(	2748	) -- 	Ship Atomizer Lv3
	Weapon(	2749	) -- 	Ship Penetrator Lv3
	Weapon(	2750	) -- 	Ship Impaler Lv3
	Weapon(	2751	) -- 	Ship Flamer Lv3
	Weapon(	2752	) -- 	Evil Generator Lv3
	Weapon(	2753	) -- 	Sand Bag Lv3
	Weapon(	2754	) -- 	Carrion Ball Lv3
	Weapon(	2755	) -- 	Noise Polluter Lv3
	Weapon(	2756	) -- 	Earthquake Generator Lv3
	Weapon(	2757	) -- 	Time Bomb Lv3
	Weapon(	2758	) -- 	Hull Repair Lv3
	Weapon(	2759	) -- 	Food Generation Lv3
	Weapon(	2760	) -- 	Carrion Bullet Lv3
	Weapon(	2761	) -- 	Mirage Generator Lv3
	Weapon(	2762	) -- 	Illusion Generator Lv3
	Weapon(	2763	) -- 	Stealth Lv3
	Weapon(	2764	) -- 	Radar Lv3
	Weapon(	2765	) -- 	Chain Bullet Lv3
	Weapon(	2766	) -- 	Water Mine Lv3
	Weapon(	2767	) -- 	Grenade Lv4
	Weapon(	2768	) -- 	Flash Bomb Lv4
	Weapon(	2769	) -- 	Radiation Lv4
	Weapon(	2770	) -- 	Soul Detector Lv4
	Weapon(	2771	) -- 	Ship Accelerator Lv4
	Weapon(	2772	) -- 	Ship Atomizer Lv4
	Weapon(	2773	) -- 	Ship Penetrator Lv4
	Weapon(	2774	) -- 	Ship Impaler Lv4
	Weapon(	2775	) -- 	Ship Flamer Lv4
	Weapon(	2776	) -- 	Evil Generator Lv4
	Weapon(	2777	) -- 	Sand Bag Lv4
	Weapon(	2778	) -- 	Carrion Ball Lv4
	Weapon(	2779	) -- 	Noise Polluter Lv4
	Weapon(	2780	) -- 	Earthquake Generator Lv4
	Weapon(	2781	) -- 	Time Bomb Lv4
	Weapon(	2782	) -- 	Hull Repair Lv4
	Weapon(	2783	) -- 	Food Generation Lv4
	Weapon(	2784	) -- 	Carrion Bullet Lv4
	Weapon(	2785	) -- 	Mirage Generator Lv4
	Weapon(	2786	) -- 	Illusion Generator Lv4
	Weapon(	2787	) -- 	Stealth Lv4
	Weapon(	2788	) -- 	Radar Lv4
	Weapon(	2789	) -- 	Chain Bullet Lv4
	Weapon(	2790	) -- 	Water Mine Lv4
	Weapon(	2791	) -- 	Grenade Lv5
	Weapon(	2792	) -- 	Flash Bomb Lv5
	Weapon(	2793	) -- 	Radiation Lv5
	Weapon(	2794	) -- 	Soul Detector Lv5
	Weapon(	2795	) -- 	Ship Accelerator Lv5
	Weapon(	2796	) -- 	Ship Atomizer Lv5
	Weapon(	2797	) -- 	Ship Penetrator Lv5
	Weapon(	2798	) -- 	Ship Impaler Lv5
	Weapon(	2799	) -- 	Ship Flamer Lv5
	Weapon(	2800	) -- 	Evil Generator Lv5
	Weapon(	2801	) -- 	Sand Bag Lv5
	Weapon(	2802	) -- 	Carrion Ball Lv5
	Weapon(	2803	) -- 	Noise Polluter Lv5
	Weapon(	2804	) -- 	Earthquake Generator Lv5
	Weapon(	2805	) -- 	Time Bomb Lv5
	Weapon(	2806	) -- 	Hull Repair Lv5
	Weapon(	2807	) -- 	Food Generation Lv5
	Weapon(	2808	) -- 	Carrion Bullet Lv5
	Weapon(	2809	) -- 	Mirage Generator Lv5
	Weapon(	2810	) -- 	Illusion Generator Lv5
	Weapon(	2811	) -- 	Stealth Lv5
	Weapon(	2812	) -- 	Radar Lv5
	Weapon(	2813	) -- 	Chain Bullet Lv5
	Weapon(	2814	) -- 	Water Mine Lv5
	Defence(	2679	) -- 	Lv1 Manufacturing Guide
	Defence(	2680	) -- 	Lv2 Manufacturing Guide
	Defence(	2681	) -- 	Lv3 Manufacturing Guide
	Defence(	2682	) -- 	Lv4 Manufacturing Guide
	Defence(	2683	) -- 	Lv5 Manufacturing Guide
	Defence(	2684	) -- 	Lv6 Manufacturing Guide
	Defence(	2685	) -- 	Lv7 Manufacturing Guide
	Defence(	2686	) -- 	Lv8 Manufacturing Guide
	Defence(	2687	) -- 	Lv9 Manufacturing Guide
	Defence(	2688	) -- 	Lv10 Manufacturing Guide
	Defence(	2689	) -- 	Lv1 Cooking Guide
	Defence(	2690	) -- 	Lv2 Cooking Guide
	Defence(	2691	) -- 	Lv3 Cooking Guide
	Defence(	2692	) -- 	Lv4 Cooking Guide
	Defence(	2693	) -- 	Lv5 Cooking Guide
	Defence(	2694	) -- 	Lv6 Cooking Guide
	Defence(	2695	) -- 	Lv7 Cooking Guide
	Defence(	2696	) -- 	Lv8 Cooking Guide
	Defence(	2697	) -- 	Lv9 Cooking Guide
	Defence(	2698	) -- 	Lv10 Cooking Guide
	Defence(	2699	) -- 	Lv1 Crafting Guide
	Defence(	2700	) -- 	Lv2 Crafting Guide
	Defence(	2701	) -- 	Lv3 Crafting Guide
	Defence(	2702	) -- 	Lv4 Crafting Guide
	Defence(	2703	) -- 	Lv5 Crafting Guide
	Defence(	2704	) -- 	Lv6 Crafting Guide
	Defence(	2705	) -- 	Lv7 Crafting Guide
	Defence(	2706	) -- 	Lv8 Crafting Guide
	Defence(	2707	) -- 	Lv9 Crafting Guide
	Defence(	2708	) -- 	Lv10 Crafting Guide
	Defence(	2709	) -- 	Lv1 Analyze Guide
	Defence(	2710	) -- 	Lv2 Analyze Guide
	Defence(	2711	) -- 	Lv3 Analyze Guide
	Defence(	2712	) -- 	Lv4 Analyze Guide
	Defence(	2713	) -- 	Lv5 Analyze Guide
	Defence(	2714	) -- 	Lv6 Analyze Guide
	Defence(	2715	) -- 	Lv7 Analyze Guide
	Defence(	2716	) -- 	Lv8 Analyze Guide
	Defence(	2717	) -- 	Lv9 Analyze Guide
	Defence(	2718	) -- 	Lv10 Analyze Guide
	Other(	2617	) -- 	Compressed Energy I
	Other(	2619	) -- 	Compressed Energy II
	Other(	2622	) -- 	Compressed Energy III
	Other(	2624	) -- 	Compressed Energy IV
	Other(	2625	) -- 	Stone Catalyst
	Other(	2630	) -- 	Food Catalyst
	Other(	2634	) -- 	Special Catalyst
	Other(	2635	) -- 	Bone Catalyst
	Other(	2636	) -- 	Plant Catalyst
	Other(	2637	) -- 	Fur Catalyst
	Other(	2638	) -- 	Liquid Catalyst
	Other(	2639	) -- 	Wood Catalyst
	Other(	2640	) -- 	Pressurize Metal
	Other(	2641	) -- 	Solid Metal
	Other(	2642	) -- 	Support Metal
	Other(	2643	) -- 	Tenacious Metal
	Other(	2644	) -- 	Waterproof Metal
	Other(	2649	) -- 	Insulating Metal
	Other(	2650	) -- 	Little Squidy Captain Statue
	Other(	2651	) -- 	Smuggler Leader Statue
	Other(	2652	) -- 	Violent Air Porky Statue
	Other(	2653	) -- 	Berserk Mad Boar Statue
	Other(	2654	) -- 	Grassland Wolf Champion Statue
	Other(	2655	) -- 	Malicious Azure Siren Statue
	Other(	2656	) -- 	Aberrance Hopping Lizard Statue
	Other(	2657	) -- 	Ancient Sandy Tortoise Statue
	Other(	2658	) -- 	Man-Eating Spider Queen Statue
	Other(	2659	) -- 	Elite Tempest Sea Jelly Statue
	Other(	2660	) -- 	Strong Little Deer Statue
	Other(	2661	) -- 	Vampiric Elk Statue
	Other(	2662	) -- 	Snowy Snail Monarch Statue
	Other(	2663	) -- 	Fearsome Skeletal Archer Statue
	Other(	2664	) -- 	Aberrance Blood Polliwog Statue

end



function BopoHxaoca()

	Talk( 1, "Привет я продавец крыльев " )
	Text( 1, "Купить.", BuyPage)

	InitTrade()
	Other(	0141	)--Lance Wild West Hat
	Other(	0142	)--Lance Wild West Suit
	Other(	0904	)--Lance Wild West Boots
	Other(	0905	)--Phyllis Wild West Coat
	Other(	0906	)--Phyllis Wild West Gloves
	Other(	0935	)--Phyllis Wild West Boots
	Other(	0936	)--Carsise Wild West Hat
	Other(	0937	)--Carsise Wild West Jacket


end

function d_talk1()

        Talk(1,"Ben: Hi, I sell all sorts of weapons! Take a look!")

	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Weapon(	4197	)
	Weapon(	4199	)
	Weapon(	4201	)
	Weapon(	4207	)
	Weapon(	4211	)
	Weapon(	4213	)
	Weapon(	4214	)
	Weapon(	4215	)
	Weapon(	4218	)
	-- Weapon(	0127	)
	-- Weapon(	0110	)
	-- Weapon(	0112	)
	-- Weapon(	0114	)
	-- Weapon(	0116	)
	-- Weapon(	0118	)
	-- Weapon(	0120	)
	-- Weapon(	0151	)
end

function d_talk2()

        Talk(1,"Eddie: Hi, what can I do for you?")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )
	
	InitTrade()
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

	
end 
---------------------
-------Physician - Vegito
----------------------
function d_talk3()

        Talk(1,"Vegito: Hi! The herbs I have are all gathered by meself. Have a look!")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Other(	6203	)
	Other(	6204	)
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


end
---------------------
------Tailor Dar
---------------------
function d_talk4()

        Talk(1,"Dar: I am owner of this fashion shop. what can I do for you ?")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Defence(	4147	)
	Defence(	4149	)
	Defence(	4151	)
	Defence(	4153	)
	Defence(	4154	)
	Defence(	4157	)
	Defence(	4158	)
	Defence(	4161	)
	Defence(	4162	)
	Defence(	4165	)
	Defence(	4167	)
	Defence(	4169	)
	Defence(	4170	)
	Defence(	4173	)
	Defence(	4174	)
	Defence(	4177	)
	Defence(	4178	)
	Defence(	4181	)
	Defence(	4183	)
	Defence(	4185	)
	Defence(	4186	)
	Defence(	4189	)
	Defence(	4190	)
	Defence(	4193	)
	Defence(	4194	)
	-- Defence(	0396	)
	-- Defence(	0398	)
	-- Defence(	0400	)
	-- Defence(	0402	)
	-- Defence(	0404	)
	-- Defence(	0406	)
	-- Defence(	0408	)
	-- Defence(	0411	)
	-- Defence(	0413	)
	-- Defence(	0588	)
	-- Defence(	0590	)
	-- Defence(	0592	)
	-- Defence(	0594	)
	-- Defence(	0596	)
	-- Defence(	0598	)
	-- Defence(	0600	)
	-- Defence(	0602	)
	-- Defence(	0604	)
	-- Defence(	0748	)
	-- Defence(	0750	)
	-- Defence(	0752	)
	-- Defence(	0754	)
	-- Defence(	0756	)
	-- Defence(	0758	)
	-- Defence(	0760	)
	-- Defence(	0824	)
	-- Defence(	0830	)
	-- Defence(	2219	)
	-- Defence(	2221	)
	-- Defence(	2223	)

	
end
-------------------
--------Unknown
----------------------
function d_talk5()

        Talk(1,"Unknown Talk")
	Text( 1, "Unknown", JumpPage, 2)
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	Talk( 2, "Unknown Talk" )
	Text( 2, "Unknown", JumpPage, 3)
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1908 )
	TriggerCondition( 1, HasItem, 5828, 1 )
	TriggerAction( 1, TakeItem, 5828, 1 )
	TriggerAction( 1, GiveItem, 6294, 1, 4 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 3, "Unknown Talk" )
	Text( 3, "Unknown", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Unknown Talk" )


end



-------------------
--------Teleporter - Mary
--------------------

function d_talk6 ()
	Talk ( 1, "Привет я портальщица Мэри.Тебе помочь?")
	Text ( 1, "Аргент ", JumpPage, 2)
	Text ( 1, "Шайтан ", JumpPage, 3)
	Text ( 1, "Ледынь ", JumpPage, 4)
	Text ( 1, "Записаться тут ", JumpPage, 5 )
	Text ( 1, "Пока ",CloseTalk )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 2187,2776, "garner")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "Отправить в Аргент? С тебя 500 монет ")
	Text( 2, "Отправиться ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 918,3562, "magicsea")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 3, "Отправить в Шайтан? Нет проблем с тебя 500 монет ")
	Text( 3, "Отправиться ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 1323,544, "darkblue")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "Отправить в Ледынь? Тебе это будет стоить 500 монет ")
	Text( 4, "Отправить ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 5, "Тебя записать на острове Зимы? " )
	Text( 5, "Да.Пожалуйста запишите ", SetSpawnPos, "\206\241\242\240\238\226\224 \199\232\236\251" )
	Text( 5, "Пока ",CloseTalk )

	Talk( 6, "У тебя не хватает денег " )


end


-------------------
--------Harbor Operatro-Sunny
--------------------
function d_talk7()

        Talk(1,"Привет.Я оператор гавани острова Зимы.Ты что то хотел?")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 337,965, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправится в плаванье ", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Востановить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Улучшить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Простите но у вас нету судна в этом порту!" )
	Talk( 4, "Извините но чтоб починить судно надо чтоб судно находилось в этом порту и вы должны заплатить 1000 монет." )
	Talk( 5, "Простите чтоб востановить судно оно должно быть в этом порту а так же вы должны иметь 200 монет " )
	Talk( 6, "Извините но чтоб улучшить корабль он должен быть пришвартован в этом порту а также у вас должно быть 1000 монет." )


-----------2.0Missions-----------

end

-----------------
--------Researcher Yee
-------------------
function d_talk8()

	Talk( 1,"Researcher Michael: Bring me to the edge of sky and sea, a place where only my dreams could ever compose sucks visions i want to solve all of the mysteries of the ancient civilizations.")
	Text( 1, "I want to remove the seal upon the Gearpieces of Epic Prowess",JumpPage, 3 )
	Text( 1, "I want to remove the seal upon the Gearpieces of Honor",JumpPage, 4 )
	Text( 1, "I want to remove the seal upon the Gearpieces of Sacrifice",JumpPage, 5 )
	Text( 1, "I want to remove the seal upon the Gearpieces of Justice",JumpPage, 6 )
	Text( 1, "I want to remove the seal upon the Gearpieces of Empathy",JumpPage, 7 )
	Text( 1, "I want to remove the seal upon the Gearpieces of Inspiration",JumpPage, 8 )

        Talk( 2, "Researcher Michael: If you don't have enough inventory slots and items, or your class does not match the description of the gear, you can't remove the seals." )

	Talk( 3, "Reseatcher Micheal: You can remove seals on the Gearpieces of Epic Prowess for the Sharpshooter." )
	Text( 3, "Remove the seals on the Redemption of Epic Prowess",JumpPage, 9 )
	Text( 3, "Remove the seals on the Guard of Epic Prowess",JumpPage, 10 )
	Text( 3, "Remove the seals on the Bless of Epic Prowess",JumpPage, 11 )
	Text( 3, "Remove the seals on the Favor of Epic Prowess",JumpPage, 12 )

	Talk( 4, "You can remove seal on the Gearpieces of Honor for Crusader." )
	Text( 4, "Remove the seals on the Redemption of Honor",JumpPage, 13 )
	Text( 4, "Remove the seals on the Guard of Honor",JumpPage, 14 )
	Text( 4, "Remove the seals on the Bless of Honor",JumpPage, 15 )
	Text( 4, "Remove the seals on the Favor of Honor",JumpPage, 16 )

	Talk( 5, "You can remove seals on the Gearpieces of Sacrifice for Champion." )
	Text( 5, "Remove the seal on the Redemption of Sacific",JumpPage, 17 )
	Text( 5, "Remove the seal on the Guard of Sacific",JumpPage, 18 )
	Text( 5, "Remove the seal on the Bless of Sacific",JumpPage, 19 )
	Text( 5, "Remove the seal on the Favor of Sacific",JumpPage, 20 )

	Talk( 6, "You can remove seals on the Gearpieces of Justice for Voyager." )
	Text( 6, "Remove the seal on the Redemption of Justice",JumpPage, 21 )
	Text( 6, "Remove the seal on the Guard of Justice",JumpPage, 22 )
	Text( 6, "Remove the seal on the Bless of Justice",JumpPage, 23 )
	Text( 6, "Remove the seal on the Favor of Justice",JumpPage, 24 )

	Talk( 7, "You can remove seals on the Gearpieces of Empathy for Cleric." )
	Text( 7, "Remove the seal on the Redemption of Empathy",JumpPage, 25 )
	Text( 7, "Remove the seal on the Guard of Empathy",JumpPage, 26 )
	Text( 7, "Remove the seal on the Bless of Empathy",JumpPage, 27 )
	Text( 7, "Remove the seal on the Favor of Empathy",JumpPage, 28)

	Talk( 8, "You can remove seals on the Gearpieces of Inspiration for Seal Master." )
	Text( 8, "Remove the seal on the Redemption of Inspiration",JumpPage, 29 )
	Text( 8, "Remove the seal on the Guard of Inspiration",JumpPage, 30 )
	Text( 8, "Remove the seal on the Bless of Inspiration",JumpPage, 31 )
	Text( 8, "Remove the seal on the Favor of Inspiration",JumpPage, 32 )

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6173, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6173, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6104, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 9, "Researcher Michael: Give me your Redemption of Epic Prowess and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 9, "Confirim", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6174, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6174, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6105, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 10, "Researcher Michael: Give me your Guard of Epic Prowess and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 10, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6175, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6175, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6106, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 11, "Researcher Michael: Give me your Bless of Epic Prowess and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 11, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6176, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6176, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6107, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 12, "Researcher Michael: Give me your Favor of Epic Prowess and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 12, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6177, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6177, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6108, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 13, "Researcher Michael: Give me your Redemption of Epic Honor and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 13, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6178, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6178, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6109, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 14, "Researcher Michael: Give me your Guard of Epic Honor and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 14, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6179, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6179, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6110, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 15, "Researcher Michael: Give me your Bless of Epic Honor and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 15, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6180, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6180, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6111, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 16, "Researcher Michael: Give me your Favor of Epic Honor and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 16, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6181, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6181, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6112, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 17, "Researcher Michael: Give me your Redemption of Epic Sacific and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 17, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6182, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6182, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6113, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 18, "Researcher Michael: Give me your Guard of Epic Sacific and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 18, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6183, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6183, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6114, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 19, "Researcher Michael: Give me your Bless of Epic Sacific and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 19, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6184, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6184, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6115, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 20, "Researcher Michael: Give me your Favor of Epic Sacific and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 20, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6185, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6185, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6116, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 21, "Researcher Michael: Give me your Redemption of Epic Justice and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 21, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6186, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6186, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6117, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 22, "Researcher Michael: Give me your Guard of Epic Justice and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 22, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6187, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6187, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6118, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 23, "Researcher Michael: Give me your Bless of Epic Justice and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 23, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6188, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6188, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6119, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 24, "Researcher Michael: Give me your Favor of Epic Justice and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 24, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6189, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6189, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6120, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 25, "Researcher Michael: Give me your Redemption of Epic Empathy and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 25, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6190, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6190, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6121, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 26, "Researcher Michael: Give me your Guard of Epic Empathy and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 26, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6191, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6191, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6122, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 27, "Researcher Michael: Give me your Bless of Epic Empathy and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 27, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6192, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6192, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6123, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 28, "Researcher Michael: Give me your Favor of Epic Empathy and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 28, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6193, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6193, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6124, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 29, "Researcher Michael: Give me your Redemption of Epic Inspiration and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 29, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6194, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6194, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6125, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 30, "Researcher Michael: Give me your Guard of Epic Inspiration and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 30, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6195, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6195, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6126, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 31, "Researcher Michael: Give me your Bless of Epic Inspiration and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 31, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6196, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6196, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6127, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 32, "Researcher Michael: Give me your Favor of Epic Inspiration and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 32, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

-----------2.0Missions-----------


end

-------------------
---Harbor Operator Luna
-------------------

function d_talk9()
      
       Talk(1,"Luna: Hi! I am the Harbor Operator for Winter Island. I am in charge of all ships that is docked in this harbor. Look for me if you want to set sail.")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 702,720, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )



end
-------------------
------Explorer - Winston
--------------------

function d_talk10()
      
       Talk(1,"Winston: My teacher likes adventures. Last time he ran into zombies while hanging a round outside Thundoria Castle and rorally freekend out.")


-----------2.0Missions-----------


end
-----------------
---Snow Cara Guardianyes
-------------------


function d_talk11()
      
       Talk(1,"Snow Cara Guardin: Hello, All I an a Guardian.")


end
------------------
---Unknown
-----------------


function d_talk12()
      
       Talk(1,"Unknown Talk")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 1043, 629, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Unknown Talk" )
	Talk( 4, "Unknown Talk" )
	Talk( 5, "Unknown Talk" )
	Talk( 6, "Unknown Talk" )




end
-------------------
--Explorer - Chris
----------------


function d_talk13()
      
       Talk(1,"What Are You Looking For?")


-----------2.0Missions-----------


end
---------------
--Unknown
---------------


function d_talk14()
      
       Talk(1,"Unknown Talk")



end
---------------
--Unknown
-------------------


function d_talk15()
      
       Talk(1,"Unknown Talk")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 246,1185, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Unknown Talk" )
	Talk( 4, "Unknown Talk" )
	Talk( 5, "Unknown Talk" )
	Talk( 6, "Unknown Talk" )



end
--------------------
---North Ville
-------------------


------------------
----Explorer - Lion
------------------


function d_talk17()
      
       Talk(1,"Lion: What are you doing here?")


-----------2.0Missions-----------


end
----------------
----Explorer - Jill
------------------


function d_talk18()
      
       Talk(1,"Jill: What are you doing here?")


-----------2.0Missions-----------


end
-----------------
--Unknown
-----------------


function d_talk19()
      
       Talk(1,"Unknown Talk")


end
------------------
--Ancient Relic rotector
--------------------


function d_talk20()
      
       Talk(1,"What are you doing here?")



end
-------------------
--Kara's Statue
------------------


function d_talk21()
      
       Talk(1,"Unknown Talk")



end
-------------------
--Ville's Statue
---------------------


function d_talk22()
      
       Talk(1,"Unknown Talk")


end
--------------------
---ЗпµєЎЎО¬¶ы·ЦЙн
--------------------


function d_talk23()
     -- Talk(1,"Nothing") 
	Talk(1,"О¬¶ы·ЦЙнЈєДгєГЈ¬ЗлОКДгХТОТУРКІГґКВВрЈї")
	Text ( 1, "З°Нщ¶¬µє", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1636 )
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 2583,3235, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "ДгЧј±ёєГБЛИҐ¶¬µєИєµєБЛВрЈї")
	Text( 2, "Чј±ёєГБЛ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "ДгПЦФЪ»№І»ДЬИҐ¶¬µєИєµєЈ¬ДЗАп¶ФДгМ«ОЈПХБЛЈ»Из№ыДгѕхµГДгКµБ¦Чг№»µД»°Ј¬ДЗГґЗлДг°Сґ¬НЈїїФЪґєµє»тХЯПДµєЈ¬ОТєГ·Ѕ±г°СДгґ«µЅєюГжЙПµДґ«¶ЇµгЎЈ" )



end
---------------------
--№вГчГШѕіµЪТ»ѕіЅзЎЎ№вГчГШѕіКШ»¤ХЯ
-----------------------


function d_talk24()
      
       Talk(1,"№вГчГШѕіКШ»¤ХЯЈєДгєГЈ¬ОТКЗ№вГчГШѕіµДКШ»¤ХЯЎЈ")


end
--------------------
--Unknown
----------------------


function d_talk25()
      
       Talk(1,"Unknown Talk")

end
---------------------
--Unknown
----------------------


function d_talk26()
      
       Talk(1,"Unknown Talk")


end
-----------------------
--Unknown
-----------------------


function d_talk27()
      
       Talk(1,"Unknown Talk")



end

----------------Nurse - Tsukino
function d_talk28 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )
	
	Talk( 1, "Привет я местная медсестра на острове Зимы,если хочешь вылечится подходи ко мне.Мои услуги стоят 1к " )
	Text( 1, "Большое востановление ", MultiTrigger,GetMultiTrigger(),2)
	 
	Talk( 2, "Прости ну у тебя нет 1к.")



end

-----------------------
--Builder-Endymion
-----------------------

function d_talk29()
	
	Talk( 1, "Endymion: Yo! Want to get out to the sea? How can you do so without a good ship? I offer the best ship around here. Come have a look!" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Ships limit reached. Unable to build more ship" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Build Ship", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 34 )
	TriggerAction( 1, BoatLevelBerthList, 34 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Upgrade ship", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Endymion: What type of ships you wish to build? I have a few varieties. Please have a look." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 34 )
	Text( 2, "Build Guppy", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 34 )
	Text( 2, "Build Windseeker", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 34 )
	Text( 2, "Build Swordfish", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 34 )
	Text( 2, "Build Trutle", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerAction( 1, CreateBoat, 14, 34 )
	Text( 2, "Build Torrent", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerAction( 1, CreateBoat, 15, 34 )
	Text( 2, "Build Goddess", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Endymion: I guess your ship is not docked here. You need to dock here to upgrade the level when it has gained enough experience from sailing or killing monsters out in the sea." )


end

-----------------------
--°µєЪГШѕіµЪ¶юѕіЅзЎЎЙсГШИЛЎ¤¶¬ЧР
-----------------------


function d_talk30()
      
       Talk(1,"¶¬ЧРЈєДгГ»КВХТОТёЙВпЈ¬ДгМ«јЩБЛЈЎ")



end

function d_talk31()
      
       	Talk(1,"Little Bell: Every girl was once an angel without tears. When she meets her beloved she gets tears. And after she cries, she falls to the earth There for , every boy shall be nice his girl, cause she once gave up the whole of heaven for him!")

	Text( 1, "I want to remove the seals on the Weapons of Legacy!",JumpPage, 2 )


	Talk( 2,"Little Bell: I can help you remove the seals on the Weaponns of Legacy.")
	Text( 2, "I wantto unseal the Heaven Sword",JumpPage, 4 )
	Text( 2, "I wantto unseal the Holy Cavalier Shiled",JumpPage, 5 )
	Text( 2, "I wantto unseal the Punishment Bow",JumpPage, 6 )
	Text( 2, "I wantto unseal the Justice Gun",JumpPage, 7 )
	Text( 2, "I wantto unseal the Quietness Knife",JumpPage, 8 )
	Text( 2, "I wantto unseal the Stateliness Sword",JumpPage, 9 )
	Text( 2, "I wantto unseal the Sacrifice Staff",JumpPage, 10 )
	Text( 2, "I wantto unseal the Life Staff",JumpPage, 11 )

        Talk( 3, "Little Bell: If you don't have enough inventory slots or items, you can't remove the seals." )

	InitTrigger()
	TriggerCondition( 1, HasItem, 6165, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6165, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6096, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 4, "Little Bell: Give me your Heaven Sword and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 4, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6166, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6166, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6097, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 5, "Little Bell: Give me your Holy Cavalier Shiled and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 5, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6167, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6167, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6098, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 6, "Little Bell: Give me your Punishment Bow and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 6, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6168, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6168, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6099, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 7, "Little Bell: Give me your Justice Gun and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 7, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6169, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6169, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6100, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 8, "Little Bell: Give me your Quietness Knife and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 8, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6170, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6170, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6101, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 9, "Little Bell: Give me your Stateliness Sword and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 9, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6171, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6171, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6102, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 10, "Little Bell: Give me your Sacrifice Staff and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 10, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6172, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6172, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6103, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 11, "Little Bell: Give me your Life Staff and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 11, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	
end

function ay_talk01()

	Talk( 1, "Офицер Связи: Скоро начнется ритуал зажжения священного огня, но сященный факел так и не принесли. Его потеряли? Ты можешь проверить это?")
	
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

function ay_talk02()

	Talk( 1, "Поздравляем! Ты выполнил задание и получил награду.")

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
	Text( 1, "Зажги священный факел ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Только тот, кто прошел пять испытаний может зажечь факел! Помни, что нужно разблокировать инвентарь и освободить 2 ячейки перед тем, как зажечь факел.")
	Text( 2, "Закрыть ",CloseTalk)

	AddNpcMission (6280)

end

function church_talk01()
	Talk (1, "\209\226\232\228\229\242\229\235\252: \207\240\232\226\229\242. \199\224 200 \231\238\235\238\242\251\245 \255 \236\238\227\243 \243\241\242\240\238\232\242\252 \228\235\255 \230\229\237\232\245\224 \241 \237\229\226\229\241\242\238\233 \227\240\224\237\228\232\238\231\237\251\233 \241\224\235\254\242. \213\238\247\229\248\252?")
	--Talk (1, "Свидетель: Привет. За 200 золотых я могу устроить для жениха с невестой грандиозный салют. Хочешь?")

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 ) 
	TriggerAction( 1, TakeMoney, 200) 
	TriggerAction( 1, FireworksChurch ) 
	TriggerFailure( 1, JumpPage, 3)

	Text (1, "\202\238\237\229\247\237\238!", MultiTrigger, GetMultiTrigger(), 1)
	--Text (1, "Конечно!",  MultiTrigger, GetMultiTrigger(), 1)
	Text (1, "\205\229\242, \241\239\224\241\232\225\238.", CloseTalk)
	--Text (1, "Нет, спасибо.", CloseTalk)

	Talk (3, "\209\226\232\228\229\242\229\235\252: \200\231\226\232\237\232\242\229, \237\238 \243 \194\224\241 \237\229\242 \228\229\237\229\227.")
	--Talk (3, "Свидетель: Извините, но у Вас нет денег.")
	Text (3, "\196\238 \241\226\232\228\224\237\232\255.", CloseTalk)
	--Text (3, "До свидания.", CloseTalk)
end

function church_talk02()
	Talk (1, "\209\226\232\228\229\242\229\235\252\237\232\246\224: \207\240\232\226\229\242. \199\224 200 \231\238\235\238\242\251\245 \255 \236\238\227\243 \243\241\242\240\238\232\242\252 \228\235\255 \230\229\237\232\245\224 \241 \237\229\226\229\241\242\238\233 \227\240\224\237\228\232\238\231\237\251\233 \241\224\235\254\242. \213\238\247\229\248\252?")
	--Talk (1, "Свидетельница: Привет. За 200 золотых я могу устроить для жениха с невестой грандиозный салют. Хочешь?")

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 ) 
	TriggerAction( 1, TakeMoney, 200) 
	TriggerAction( 1, FireworksChurch ) 
	TriggerFailure( 1, JumpPage, 3)

	Text (1, "\202\238\237\229\247\237\238!", MultiTrigger, GetMultiTrigger(), 1)
	--Text (1, "Конечно!",  MultiTrigger, GetMultiTrigger(), 1)
	Text (1, "\205\229\242, \241\239\224\241\232\225\238.", CloseTalk)
	--Text (1, "Нет, спасибо.", CloseTalk)

	Talk (3, "\209\226\232\228\229\242\229\235\252\246\224: \200\231\226\232\237\232\242\229, \237\238 \243 \194\224\241 \237\229\242 \228\229\237\229\227.")
	--Talk (3, "Свидетельца: Извините, но у Вас нет денег.")
	Text (3, "\196\238 \241\226\232\228\224\237\232\255.", CloseTalk)
	--Text (3, "До свидания.", CloseTalk)
end

function church_talk03()

	Talk( 1, "\207\229\240\226\238\241\255\249\229\237\237\232\234: \196\238\225\240\238 \239\238\230\224\235\238\226\242\252 \226 \214\229\240\234\238\226\252. \196\224\226\224\233\242\229 \237\224\247\237\229\236 \246\229\240\229\236\238\237\232\254.")
		--Talk( 1, "Первосященник: Добро пожаловть в Церковь. Давайте начнем церемонию.")
	Text( 1, "\205\224\247\224\242\252 \246\229\240\229\236\238\237\232\254", JumpPage, 2)
		--Text( 1, "Начать церемонию", JumpPage, 2)

	Talk( 2, "\207\229\240\226\238\241\226\255\249\229\237\237\232\234: \193\229\240\229\248\252 \235\232 \242\251 \226  \231\224\234\238\237\237\251\229 \230\229\237\251(\236\243\230\252\255) \253\242\238\227\238 \247\229\235\238\226\229\234\224? \209\238\227\235\224\241\229\237(\224) \235\232 \242\251 \232 \226 \227\238\240\229 \232 \226 \240\224\228\238\241\242\232 \225\251\242\252 \241 \237\232\236?" )
		--Talk( 2, "Первосвященник: Берешь ли ты в  законные жены(мужья) этого человека? Согласен(а) ли ты и в горе и в радости быть с ним?" )
	Text( 2, "\196\224. \223 \241\238\227\235\224\241\229\237(\224).", Marry)
		--Text( 2, "Да. Я согласен(а).", Marry)
	Text( 2, "\204\237\229 \237\224\228\238 \239\238\228\243\236\224\242\252...", CloseTalk)
		--Text( 2, "Мне надо подумать...", CloseTalk)

end

function k_talk597()


	Talk( 1, "Страж Бермуд: Когда я прибыл сюда? Я что-то не помню. Дружище, если будешь в Веснограде, скажи моей любимой, что я очень по ней скучаю. " )

	Text( 1, "Выменять Расписку на кусок кекса ", JumpPage, 2)

	Talk( 2, "Страж Бермуд: Я стал стражем Бермуд несколько лет назад. Я жутко соскучился по вкусной еде. Ты можешь принести мне Расписку на кусок кекса?")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1097, 1) 
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 1097, 1)
	TriggerAction(1, GiveItem, 1104, 1, 4)
	TriggerFailure(1, JumpPage, 3)
	Text(2,"Подтвердите выкуп ", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "Кажется... кажется у тебя нет Расписки на кусок кекса. Убедись, что в твоем рюкзаке есть свободное место и что он не застегнут! Я не могу наслаждаться вкусным тортом!")

	Text( 1, "Выменять 10 фастфудов ", JumpPage, 4)

	Talk( 4, "Страж Бермуд: Я стал стражем Бермуд несколько лет назад. Я жутко соскучился по вкусной еде. Ты можешь принести мне супер-суши?")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2989, 1)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 2989, 1)
	TriggerAction(1, GiveItem, 0992, 10, 4)
	TriggerFailure(1, JumpPage, 5)
	Text(4,"Подтвердите выкуп ", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 5, "Ну почему... почему никто не носит с собой ничего вкусного? Убедись, что в твоем рюкзаке есть свободное место и что он не застегнут!")

end

 function d_talk16 ()
      
 	Talk (1, "God the Father Neville: karaoke, karaoke, why do you want to do this, do not you forget that when we pledge you promise? Why should we treat our people so ... ...") 
 	Text (1, "sent to the frozen Island", JumpPage, 2) 
 	Text (1, "sent to the bright Fam", JumpPage, 3) 
 	Text (1, "sent to the Dark Fam", JumpPage, 4) 
 	Text (1, "Exchange 95 Winter island weapons chest seal", JumpPage, 5) 
 	Text (1, "OK, I just go", CloseTalk) 

 	InitTrigger () 
 	TriggerAction (1, GoTo, 1970,950, "winterland") 
 	TriggerFailure (1, JumpPage, 6) 
 	Talk (2, "you are ready to ice the island it?") 
 	Text (2, "ready", MultiTrigger, GetMultiTrigger (), 1) 

 	InitTrigger () 
 	TriggerCondition (1, goto_mj1_time) 
 	TriggerAction (1, GoTo, 366,395, "mjing1") 
 	TriggerFailure (1, JumpPage, 7) 
 	Talk (3, "you are ready to light Fam it?") 
 	Text (3, "ready", MultiTrigger, GetMultiTrigger (), 1) 

 	InitTrigger () 
 	TriggerCondition (1, goto_mj2_time) 
 	TriggerAction (1, mj3sjc) 
 	TriggerFailure (1, JumpPage, 7) 
 	Talk (4, "you are ready to Diablo Fam it?") 
 	Text (4, "ready", MultiTrigger, GetMultiTrigger (), 1) 

 	Talk (6, "you can not go ice--covered island, where too dangerous for you.") 
 	Talk (7, "you can not go now Fam mind, there too dangerous for you; If you sufficient strength, then please be patient, be allowed to enter Fam opened.") 
 	Talk (8, "God the Father Neville: Please check your availability plaid backpack; sure you have the second turn; sure you have completed the task of the history; there is a once only!") 

 	InitTrigger () 
 	TriggerCondition (1, PfEqual, 8) 
 	TriggerCondition (1, HasRecord, 1671) 
 	TriggerCondition (1, NoRecord, 1891) 
 	TriggerAction (1, GiveItem, 6251, 1, 4) 
 	TriggerAction (1, SetRecord, 1891) 
 	TriggerCondition (2, PfEqual, 9) 
 	TriggerCondition (2, HasRecord, 1671) 
 	TriggerCondition (2, NoRecord, 1891) 
 	TriggerAction (2, GiveItem, 6250, 1, 4) 
 	TriggerAction (2, SetRecord, 1891) 
 	TriggerCondition (3, PfEqual, 12) 
 	TriggerCondition (3, HasRecord, 1671) 
 	TriggerCondition (3, NoRecord, 1891) 
 	TriggerAction (3, GiveItem, 6252, 1, 4) 
 	TriggerAction (3, SetRecord, 1891) 
 	TriggerCondition (4, PfEqual, 13) 
 	TriggerCondition (4, HasRecord, 1671) 
 	TriggerCondition (4, NoRecord, 1891) 
 	TriggerAction (4, GiveItem, 6255, 1, 4) 
 	TriggerAction (4, SetRecord, 1891) 
 	TriggerCondition (5, PfEqual, 14) 
 	TriggerCondition (5, HasRecord, 1671) 
 	TriggerCondition (5, NoRecord, 1891) 
 	TriggerAction (5, GiveItem, 6254, 1, 4) 
 	TriggerAction (5, SetRecord, 1891) 
 	TriggerCondition (6, PfEqual, 16) 
 	TriggerCondition (6, HasRecord, 1671) 
 	TriggerCondition (6, NoRecord, 1891) 
 	TriggerAction (6, GiveItem, 6253, 1, 4) 
 	TriggerAction (6, SetRecord, 1891) 
 	TriggerFailure (6, JumpPage, 8) 
 	Talk (5, "God the Father Neville: if you complete the ruins the image task, you can get 95 Winter island weapons chest seal Oh ~") 
 	Text (5, "determine", MultiTrigger, GetMultiTrigger (), 6) 

 end 

function church_talk04()

	Talk( 1, "\207\240\232\245\238\230\224\237\234\224: \196\238\225\240\251\233 \228\229\237\252! \192 \194\251 \237\224 \241\226\224\228\252\225\243? \205\229 \230\229\235\224\229\242\229 \241\228\229\235\224\242\252 \241\254\240\239\240\232\231 \236\238\235\238\228\238\230\229\237\224\236?")
		--Talk( 1, "Прихожанка: Добрый день! А Вы на свадьбу? Не желаете сделать сюрприз молодоженам?")
	Text( 1, "\202\224\234\238\233?", JumpPage, 2)
		--Text( 1, "Какой?", JumpPage, 2)
	Text( 1, "\205\229\242, \241\239\224\241\232\225\238.", CloseTalk)
		--Text( 1, "Нет, спасибо.", CloseTalk)
	
	Talk( 2, "\207\240\232\245\238\230\224\237\234\224: \211 \236\229\237\255 \229\241\242\252 \243\237\232\234\224\235\252\237\251\229 \241\226\232\242\234\232 \226\251\231\238\226\224. \223 \238\247\229\237\252 \228\229\248\229\227\238 \232\245 \238\242\228\224\254.")
		--Talk( 2, "Прихожанка: У меня есть уникальные свитки вызова. Я очень дешего их отдаю.")
	Text( 2, "\214\226\229\242\238\247\237\251\233 \248\224\240", JumpPage, 3)
		--Text( 2, "Цветочный шар", JumpPage, 3)
	Text( 2, "\208\224\241\239\232\241\234\224 \237\224 \232\227\240\243 \241 \216\224\240\232\234\224\236\232", JumpPage, 4)
		--Text( 2, "Расписка на игру с Шариками", JumpPage, 4)

	Talk( 3, "\207\240\232\245\238\230\224\237\234\224: \193\240\224\247\237\251\233 \224\244\229\240\232\241\242 \238\247\229\237\252 \224\227\240\229\241\232\226\229\237. \197\241\235\232 \229\227\238 \243\228\224\240\232\242\252, \238\237 \237\229 \238\242\241\242\224\237\229\242 \238\242 \194\224\241. \193\243\228\252\242\229 \238\241\242\238\240\238\230\237\251!")
		--Talk( 3, "Прихожанка: Брачный аферист очень агресивен. Если его ударить, он не отстанет от Вас. Будьте осторожны!")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasMoney, 75000 )
	TriggerAction( 1, TakeMoney, 75000 )
	TriggerAction( 1, GiveItem , 3080  , 1 , 4  ) 
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "\202\243\239\232\242\252 \231\224 75.000 \231\238\235\238\242\251\245", MultiTrigger, GetMultiTrigger(), 1)
		--Text( 3, "Купить за 75.000 золотых", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "\205\224\231\224\228", JumpPage, 2)
		--Text( 3, "Назад", JumpPage, 2)

	Talk( 4, "\207\240\232\245\238\230\224\237\234\224: \194\238\231\228\243\248\237\251\229 \248\224\240\251... \223 \238\247\229\237\252 \235\254\225\235\254 \243\234\240\224\248\224\242\252 \232\236\232 \241\226\238\233 \228\238\236. \192 \194\251 \234\238\227\228\224-\237\232\225\243\228\252 \239\240\238\225\251\226\224\235\232?")
		--Talk( 4, "Прихожанка: Воздушные шары... Я очень люблю украшать ими свой дом. А Вы когда-нибудь пробывали?")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasMoney, 75000 )
	TriggerAction( 1, TakeMoney, 75000 )
	TriggerAction( 1, GiveItem , 3083  , 1 , 4  ) 
	TriggerFailure( 1, JumpPage, 5 )
	Text( 4, "\202\243\239\232\242\252 \231\224 75.000 \231\238\235\238\242\251\245", MultiTrigger, GetMultiTrigger(), 1)
		--Text( 4, "Купить за 75.000 золотых", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "\205\224\231\224\228", JumpPage, 2)
		--Text( 4, "Назад", JumpPage, 2)

	Talk( 5, "\207\240\232\245\238\230\224\237\234\224: \202\224\234 \226\251 \241\236\229\229\242\229 \238\225\236\224\237\251\226\224\242\252? \199\228\229\241\252! \194 \214\229\240\234\226\232!")
		--Talk( 5, "Прихожанка: Как вы смеете обманывать? Здесь! В Церкви!")
	Text( 5, "\200\231\226\232\237\232\242\229", CloseTalk)
		--Text( 5, "Извините", CloseTalk)
end

function prison_talk01 ()

	Talk ( 1, "\194\251 \225\243\228\229\242\229 \227\238\240\229\242\252, \247\242\238\225\251 \239\238\235\254\225\232\242\252 \253\242\238 \236\229\241\242\238, \229\241\235\232 \226\224\241 \231\224\234\235\254\247\224\242 \226 \242\254\240\252\236\243 \237\224 \228\238\241\242\224\242\238\247\237\238 \228\238\235\227\238\229 \226\240\229\236\255.")
	Text ( 1, "\211\231\237\224\242\252 \241\239\238\241\238\225 \234\224\234 \226\251\225\240\224\242\252\241\255 \232\231 \242\254\240\252\236\251", JumpPage, 2)

	Talk ( 2, "\197\241\242\252 \242\240\232 \241\239\238\241\238\225\224 \226\251\225\240\224\242\252\241\255 \238\242\241\254\228\224. \206 \234\224\234\238\236 \194\251 \245\238\242\232\242\229 \243\231\237\224\242\252?")
	Text ( 2, "\209\239\238\241\238\225 \237\238\236\229\240 1", JumpPage, 3)
	Text ( 2, "\209\239\238\241\238\225 \237\238\236\229\240 2", JumpPage, 4)
	Text ( 2, "\209\239\238\241\238\225 \237\238\236\229\240 3", JumpPage, 5)

	Talk ( 3, "\209\239\238\241\238\225 \237\238\236\229\240 1: \194\251 \236\238\230\229\242\229 \237\224\233\242\232 \237\224\247\224\235\252\237\232\234\224 \242\254\240\252\236\251, \247\242\238\225\251 \239\238\235\243\247\232\242\252 \196\229\235\238 \238 \224\240\229\241\242\229. \207\238\236\229\241\242\232\226 \253\242\238\242 \228\238\234\243\236\229\237\242 \226 \242\240\229\242\232\233 \241\235\238\242 \226\224\248\229\227\238 \232\237\226\229\237\242\224\240\255 \239\240\238\225\243\228\252\242\229 \226 \242\254\240\252\236\229 \226 \242\229\247\229\237\232\232 \247\224\241\224. \199\224\242\229\236 \194\251 \241\236\229\235\238 \236\238\230\229\242\229 \239\238\239\240\238\241\232\242\252 \237\224\247\224\235\252\237\232\234\224 \242\254\240\252\236\251 \238\225 \238\241\226\238\225\238\230\228\229\237\232\232.")
	Text ( 3, "\194\229\240\237\243\242\252\241\255 \237\224 \239\240\229\228\251\228\243\249\243\254 \241\242\240\224\237\232\246\243", JumpPage, 2)
	Text ( 3, "\211\233\242\232", CloseTalk)

	Talk ( 4, "\209\239\238\241\238\225 \237\238\236\229\240 2: \200\231\226\229\241\242\237\238, \247\242\238 \243 \195\235\224\226\251 \199\224\234\235\254\247\229\237\237\251\245 \229\241\242\252 \196\238\234\243\236\229\237\242 \237\224 \196\238\241\240\238\247\237\238\229 \206\241\226\238\225\238\230\228\229\237\232\229. \197\241\235\232 \194\251 \241\236\238\230\229\242\229 \226\231\255\242\252 \229\227\238 \241\232\235\238\233, \242\238 \194\251 \225\243\228\229\242\229 \238\241\226\238\225\238\230\228\229\237\251 \205\224\247\224\235\252\237\232\234\238\236.")
	Text ( 4, "\194\229\240\237\243\242\252\241\255 \237\224 \239\240\229\228\251\228\243\249\243\254 \241\242\240\224\237\232\246\243", JumpPage, 2)
	Text ( 4, "\211\233\242\232", CloseTalk)

	Talk ( 5, "\209\239\238\241\238\225 \237\238\236\229\240 3: \197\241\235\232 \243 \226\224\241 \229\241\242\252 \202\224\240\242\238\247\234\224 \206\242\235\232\247\237\238\227\238 \207\224\240\237\255, \194\251 \242\224\234\230\229 \236\238\230\229\242\229 \239\240\232\237\229\241\242\232 \229\229 \205\224\247\224\235\237\232\234\243 \242\254\240\252\236\251 \232 \239\238\239\240\238\241\232\242\252 \238\225 \238\241\226\238\225\238\230\228\229\237\232\232.")
	Text ( 5, "\194\229\240\237\243\242\252\241\255 \237\224 \239\240\229\228\251\228\243\249\243\254 \241\242\240\224\237\232\246\243", JumpPage, 2)
	Text ( 5, "\211\233\242\232", CloseTalk)

	AddNpcMission	(6231)

end

function prison_talk02 ()

	Talk ( 1, "\199\228\240\224\226\241\242\226\243\233. \210\251 \237\224\245\238\228\232\248\252\241\255 \237\224 \236\238\229\233 \242\229\240\240\232\242\238\240\232\232. \199\228\229\241\252 \255 \243\241\242\224\237\238\226\232\235 \241\226\238\232 \239\240\224\226\232\235\224 \232 \242\251 \228\238\235\230\229\237\237 \232\245 \241\238\225\235\254\228\224\242\252. \207\238\237\255\242\237\238?!")

	InitTrigger()
	TriggerCondition( 1, NoItem, 5724, 1 ) 
	TriggerCondition( 1, HasRecord, 1280 ) 
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, GiveItem, 5724, 1, 4)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 5)
	Text ( 1, "\223 \245\238\247\243 \239\238\235\243\247\232\242\252 \196\229\235\238 \238 \224\240\229\241\242\229", MultiTrigger, GetMultiTrigger(), 1)
	Text ( 1, "\223 \245\238\247\243 \226\251\225\240\224\242\252\241\255 \238\242\241\254\228\224...", JumpPage, 4)

	Talk ( 2, "\205\229 \231\224\225\243\228\252\242\229 \239\238\236\229\241\242\232\242\252 \196\229\235\238 \238 \224\240\229\241\242\229 \226 \242\240\229\242\232\233 \241\235\238\242 \226\224\248\229\227\238 \232\237\226\229\237\242\224\240\255.")

	Talk ( 4, "\197\241\235\232 \243 \226\224\241 \229\241\242\252 \202\224\240\242\238\247\234\224 \206\242\235\232\247\237\238\227\238 \207\224\240\237\255 \232\235\232 \194\251 \238\242\225\251\235\232 \241\226\238\233 \241\240\238\234 \237\224\234\224\231\224\237\232\255, \242\238 \194\251 \236\238\230\229\242\229 \239\238\234\232\237\243\242\252 \242\229\240\240\232\242\238\240\232\254 \242\254\240\252\236\251.")
	InitTrigger()
	TriggerCondition( 1, Checkjlktime ) 
	TriggerAction( 1, TakeItem, 5724, 1) 
	TriggerAction( 1, Leaveprison ) 
	TriggerCondition( 2, HasItem, 5723, 1) 
	TriggerAction( 2, TakeItem, 5723, 1) 
	TriggerAction( 2, Leaveprison ) 
	TriggerFailure( 2, JumpPage, 6)
	Text ( 4, "\207\238\242\226\229\240\228\232\242\252 \226\251\245\238\228", MultiTrigger, GetMultiTrigger(), 2)
	Text ( 4, "\223 \238\241\242\224\254\241\252 \231\228\229\241\252", CloseTalk)

	Talk ( 5, "\194\251 \237\229 \236\238\230\229\242\229 \226\231\255\242\252 \196\229\235\238 \238 \224\240\229\241\242\229! \207\240\238\226\229\240\252\242\229, \231\224\234\238\237\247\232\235\232 \235\232 \194\251 \234\226\229\241\242 [\207\243\242\252 \206\241\226\238\225\238\230\228\229\237\232\255]. \197\241\235\232 \194\251 \229\227\238 \226\251\239\238\235\237\232\235\232 \232 \226\241\229 \229\249\229 \237\229 \236\238\230\229\242\229 \226\231\255\242\252 \196\229\235\238 \238 \224\240\229\241\242\229, \239\240\238\226\229\240\252\242\229 \226\224\248 \232\237\226\229\237\242\224\240\252 (\197\241\242\252 \235\232 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \232 \238\237 \237\229 \231\224\225\235\238\234\232\240\238\226\224\237). \194\229\241\252\236\224 \226\238\231\236\238\230\237\238 \247\242\238 \194\251 \243\230\229 \239\238\235\243\247\232\235\232 \238\228\237\238 \196\229\235\238 \238 \224\240\229\241\242\229.")
	Talk ( 6, "\194\251 \241\238\225\235\254\235\232 \237\229 \226\241\229 \243\241\235\238\226\232\255. \194\251 \238\241\242\224\229\242\229\241\252 \231\228\229\241\252.")

	AddNpcMission	(6230)

end

function sky_13 ()

	Talk( 1, "Привет я банк ДВ.Ты можешь пользоваться банком у меня ")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Войти в Банк ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Прости но у тебя нет денег " )

end

--------------------------Corner Teleporters

function sky_14 ()

	--ИЎПыґ«ЛН·µ»ШСЎФсґ«ЛНµШµгµД¶Ф»°ДЪИЭєНТіГж±аєЕ
	--local ReSelectTalk = "Нет "
	--local ReSelectPage = 1

	--ИЎПыґ«ЛНєННЛіцґ«ЛНµД¶Ф»°єНТіГж±аєЕ
	local CancelSelectTalk = "Нет "
	local CancelSelectPage = 18

	--µШНјГыіЖРЕПў
	local CurMapName1 = "puzzleworld"
	local CurMapName2 = "puzzleworld2"

	--·ПїуІ№ёшХѕ
	local GoTo01X = 521
	local GoTo01Y = 21
	local GoTo01M = CurMapName1

	--№ЕАпї©АыІ№ёшХѕ
	local GoTo02X = 520
	local GoTo02Y = 526
	local GoTo02M = CurMapName1

	--НЯ¶ыЕµІ№ёшХѕ
	local GoTo03X = 22
	local GoTo03Y = 524
	local GoTo03M = CurMapName1

	--ОВДЗІ№ёшХѕ
	local GoTo04X = 26
	local GoTo04Y = 21
	local GoTo04M = CurMapName1

	--·ПїуІ№ёшХѕ
	local GoTo05X = 517
	local GoTo05Y = 26
	local GoTo05M = CurMapName2

	--№ЕАпї©АыІ№ёшХѕ
	local GoTo06X = 513
	local GoTo06Y = 522
	local GoTo06M = CurMapName2

	--НЯ¶ыЕµІ№ёшХѕ
	local GoTo07X = 27
	local GoTo07Y = 524
	local GoTo07M = CurMapName2

	--ОВДЗІ№ёшХѕ
	local GoTo08X = 29
	local GoTo08Y = 22
	local GoTo08M = CurMapName2

	Talk( 1, "Привет я телепортер ДВ.Я могу тебя отправить в разные точки ДВ " )
	Text( 1, "В 5 точку ", JumpPage, 5 )
	Text( 1, "В 7 точку ", JumpPage, 6 )
	Text( 1, "В 11 точку ", JumpPage, 7 )

	Talk( 2, "Привет я телепортер ДВ.Я могу тебя отправить в разные точки ДВ " )
	Text( 2, "В 1 точку ", JumpPage, 8 )
	Text( 2, "В 7 точку ", JumpPage, 6 )
	Text( 2, "В 11 точку ", JumpPage, 7 )

	Talk( 3, "Привет я телепортер ДВ.Я могу тебя отправить в разные точки ДВ " )
	Text( 3, "В 1 точку ", JumpPage, 8 )
	Text( 3, "В 5 точку ", JumpPage, 5 )
	Text( 3, "В 11 точку ", JumpPage, 7 )

	Talk( 4, "Привет я телепортер ДВ.Я могу тебя отправить в разные точки ДВ " )
	Text( 4, "В 1 точку ", JumpPage, 8 )
	Text( 4, "В 5 точку ", JumpPage, 5 )
	Text( 4, "В 7 точку ", JumpPage, 6 )

	Talk( 9, "Привет я телепортер ДВ.Я могу тебя отправить в разные точки ДВ " )
	Text( 9, "В 5 точку ", JumpPage, 13 )
	Text( 9, "В 7 точку ", JumpPage, 14 )
	Text( 9, "В 11 точку ", JumpPage, 15 )

	Talk( 10, "Привет я телепортер ДВ.Я могу тебя отправить в разные точки ДВ " )
	Text( 10, "В 1 точку ", JumpPage, 16 )
	Text( 10, "В 7 точку ", JumpPage, 14 )
	Text( 10, "В 11 точку ", JumpPage, 15 )

	Talk( 11, "Привет я телепортер ДВ.Я могу тебя отправить в разные точки ДВ " )
	Text( 11, "В 1 точку ", JumpPage, 16 )
	Text( 11, "В 5 точку ", JumpPage, 13 )
	Text( 11, "В 11 точку ", JumpPage, 15 )

	Talk( 12, "Привет я телепортер ДВ.Я могу тебя отправить в разные точки ДВ " )
	Text( 12, "В 1 точку ", JumpPage, 16 )
	Text( 12, "В 5 точку ", JumpPage, 13 )
	Text( 12, "В 7 точку ", JumpPage, 14 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 17 )
	Talk( 5, "Телепортировать тебя?" )
	Text( 5, "Да ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 17 )
	Talk( 6, "Телепортировать тебя? " )
	Text( 6, "Да ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 17 )
	Talk( 7, "Телепортировать тебя? " )
	Text( 7, "Да ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 17 )
	Talk( 8, "Телепортировать тебя? " )
	Text( 8, "Да ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 8, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 17 )
	Talk( 13, "Телепортировать тебя?" )
	Text( 13, "Да ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 17 )
	Talk( 14, "Телепортировать тебя? " )
	Text( 14, "Да ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 17 )
	Talk( 15, "Телепортировать тебя? " )
	Text( 15, "Да ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 17 )
	Talk( 16, "Телепортировать тебя?" )
	Text( 16, "Да ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 17, "Прости у тебя нет золота ." )

	Talk( 18, "Нет как-нибудь потом приду ", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "puzzleworld", 0 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "puzzleworld", 1 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "puzzleworld", 2 )
	TriggerAction( 3, JumpPage, 3 )
	TriggerCondition( 4, IsMapNpc, "puzzleworld", 3 )
	TriggerAction( 4, JumpPage, 4 )
	TriggerCondition( 5, IsMapNpc, "puzzleworld2", 2 )
	TriggerAction( 5, JumpPage, 9 )
	TriggerCondition( 6, IsMapNpc, "puzzleworld2", 3 )
	TriggerAction( 6, JumpPage, 10 )
	TriggerCondition( 7, IsMapNpc, "puzzlewordl2", 4 )
	TriggerAction( 7, JumpPage, 11 )
	TriggerCondition( 8, IsMapNpc, "puzzleworld2", 5 )
	TriggerAction( 8, JumpPage, 12 )
	Start( GetMultiTrigger(), 8 )

end

--- ========= Forsaken City Teleporter

function sky_15 ()

	--ИЎПыґ«ЛН·µ»ШСЎФсґ«ЛНµШµгµД¶Ф»°ДЪИЭєНТіГж±аєЕ
	--local ReSelectTalk = "I need to reconsider"
	--local ReSelectPage = 1

	--ИЎПыґ«ЛНєННЛіцґ«ЛНµД¶Ф»°єНТіГж±аєЕ
	local CancelSelectTalk = "Нет "
	local CancelSelectPage = 8

	--µШНјГыіЖРЕПў
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--°ЧТшЦ®іЗЧш±к
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--Йіб°Ц®іЗЧш±к
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--АЧцЄ±¤Чш±к
	local GoTo03X = 735
	local GoTo03Y = 1590
	local GoTo03M = CurMapName1

	--±щАЗ±¤Чш±к
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "Привет я телепортер ФС.Куда тебя отправить? " )
	Text( 1, "В Ледынь ", JumpPage, 2 )
	Text( 1, "В Шайтан ", JumpPage, 3 )
	Text( 1, "В Аргент ", JumpPage, 4 )
	Text( 1, "В  Громград ", JumpPage, 5 )
	Text( 1, "Запиши тут ", JumpPage, 6 )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 7 )
	Talk( 2, "Тебя телепортировать? " )
	Text( 2, "Да ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 7 )
	Talk( 3, "Тебя телепортировать?" )
	Text( 3, "Да ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 7 )
	Talk( 4, "Тебя телепортировать?" )
	Text( 4, "Да ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 7 )
	Talk( 5, "Тебя телепортировать? " )
	Text( 5, "Да ",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 6, "Тебя здесь записать?" )
	Text( 6, "Да.", SetSpawnPos, "Forsaken City Spawn" )
	Text( 6, "Да ",CloseTalk )

	Talk( 7, "Прости у тебя нет денег " )

	Talk( 8, "Пока я как-нибудь потом приду ", CloseTalk )

end

--- ========= Dark Swamp Teleporter

function sky_16 ()

	--ИЎПыґ«ЛН·µ»ШСЎФсґ«ЛНµШµгµД¶Ф»°ДЪИЭєНТіГж±аєЕ
	--local ReSelectTalk = "I need to reconsider"
	--local ReSelectPage = 1

	--ИЎПыґ«ЛНєННЛіцґ«ЛНµД¶Ф»°єНТіГж±аєЕ
	local CancelSelectTalk = "Нет "
	local CancelSelectPage = 8

	--µШНјГыіЖРЕПў
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--°ЧТшЦ®іЗЧш±к
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--Йіб°Ц®іЗЧш±к
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--АЧцЄ±¤Чш±к
	local GoTo03X = 735
	local GoTo03Y = 1590
	local GoTo03M = CurMapName1

	--±щАЗ±¤Чш±к
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "Привет я телепорт ДС.Тебя куда отправить? " )
	Text( 1, "В Ледынь ", JumpPage, 2 )
	Text( 1, "В Шайтан ", JumpPage, 3 )
	Text( 1, "В Аргент", JumpPage, 4 )
	Text( 1, "В Громград ", JumpPage, 5 )
	Text( 1, "Запиши тут ", JumpPage, 6 )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 7 )
	Talk( 2, "Телепортировать в ледынь?!" )
	Text( 2, "Телепортироваться ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 7 )
	Talk( 3, "Телепортировать в Шайтан? " )
	Text( 3, "Телепортироваться ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 7 )
	Talk( 4, "Телепортировать в Аргент? " )
	Text( 4, "Телепортироваться ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 7 )
	Talk( 5, "Телепортироваться в Громград? " )
	Text( 5, "Телепортироваться ",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 6, "Тебя записать здесь?" )
	Text( 6, "Да ", SetSpawnPos, "Dark Swamp Spawn" )
	Text( 6, "Нет ",CloseTalk )

	Talk( 7, "У тебя нет денег " )

	Talk( 8, "Не я как-нибудь потом приду ", CloseTalk )

end

--------------------------------Forsaken City Bank

function sky_17 ()

	Talk( 1, "Привет я банкир ФС.Ты можешь пользоваться услугами банка у меня ")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Войти в банк ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "У тебя нет денег " )

end

--------------------------------Dark Swamp Bank

function sky_18 ()

	Talk( 1, "Привет я банкир ДС.Ты можешь пользоваться услугами банка у меня ")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Войти в банк ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Прости у тебя нет денег " )

end

function reading_talk01 () 

	Talk (1, "\221\234\231\224\236\229\237\224\242\238\240: \223 \253\234\231\224\236\229\237\224\242\238\240 \203\229\228\251\237\232, \225\243\228\243 \239\238\236\238\227\224\242\252 \242\229\225\229 \239\240\238\245\238\228\232\242\252 \242\229\241\242\251. \207\238\235\238\230\232 \209\242\243\228\229\237\247\229\241\234\243\254 \234\224\240\242\243 \226 \232\237\226\229\237\242\224\240\252, \239\229\240\229\228 \237\224\247\224\235\238\236 \232\241\239\251\242\224\237\232\233.")
		--Talk (1, "Экзаменатор: Я экзаменатор Ледыни, буду помогать тебе проходить тесты. Положи Студенческую карту в инвентарь, перед началом испытаний.") 
 
	InitTrigger () 
	TriggerCondition (1, HasItem, 3279, 1) 
	TriggerCondition (1, HasItem, 3289, 1) 
	TriggerAction (1, checkcytime) 
	TriggerFailure (1, JumpPage, 4) 
	Text (1, "\209\229\236\229\241\242\240 \226 \242\224\225\229\235\232 \238\225 \243\241\239\229\226\224\229\236\238\241\242\232.", MultiTrigger, GetMultiTrigger (), 1)
		--Text (1, "Семестр в табели об успеваемости.", MultiTrigger, GetMultiTrigger (), 1) 

	Text (1, "\210\240\229\225\238\226\224\237\232\255 \228\235\255 \239\240\238\245\238\230\228\229\237\232\255 \242\229\241\242\232\240\238\226\224\237\232\255.", JumpPage, 5)
		--Text (1, "Требования для прохождения тестирования.", JumpPage, 5) 
	
	Text (1, "\215\242\238 \229\249\229 \231\224 \242\229\241\242\232\240\238\226\224\237\232\229?", JumpPage, 6)
		--Text (1, "Что еще за тестирование?", JumpPage, 6) 

	Talk (4, "\221\234\231\224\236\229\237\224\242\238\240: \194 \242\226\238\229\236 \232\237\226\229\237\242\224\240\229 \237\229\242 \209\242\243\228\229\237\247\229\241\234\238\233 \234\224\240\242\251!") 
		--Talk (4, "Экзаменатор: В твоем инвентаре нет Студенческой карты!") 

	Talk (5, "\221\234\231\224\236\229\237\224\242\238\240: \210\240\229\225\238\226\224\237\232\255 \228\235\255 \239\240\238\245\238\230\228\229\237\232\255 \242\229\241\242\232\240\238\226\224\237\232\255 \241\242\240\238\227\232. \194 \242\226\238\229\236 \240\254\234\231\224\234\229 \228\238\235\230\237\224 \225\251\242\252 \209\242\243\228\229\237\247\229\241\234\224\255 \234\224\240\242\224.")
		--Talk (5, "Экзаменатор: Требования для прохождения тестирования строги. В твоем рюкзаке должна быть Студенческая карта.") 

	Talk (6, "\221\234\231\224\236\229\237\224\242\238\240: \194 \240\254\234\231\224\234\229 \228\238\235\230\237\224 \225\251\242\252 \209\242\243\228\229\237\247\229\241\234\224\255 \234\224\240\242\224 \228\235\255 \237\224\247\224\235\224 \242\229\241\242\232\240\238\226\224\237\232\255. \207\238\241\235\229 \226\251\239\238\235\237\229\237\232\255 \242\229\241\242\232\240\238\226\224\237\232\255, \194\224\236 \225\243\228\229\242 \226\251\228\224\237 \242\224\225\229\235\252 \238\225 \243\241\239\229\226\224\229\236\238\241\242\232 \226 \241\238\238\242\226\229\241\242\226\232\232 \241 \194\224\248\232\236\232 \243\241\239\229\245\224\236\232..") 
		--Talk (6, "Экзаменатор: В рюкзаке должна быть Студенческая карта для начала тестирования. После выполнения тестирования, Вам будет выдан табель об успеваемости в соотвествии с Вашими успехами..") 

	AddNpcMission (112) 

end 

function reading_talk02 () 
	Talk (1, "\207\229\240\229\226\238\228\237\238\233 \221\234\231\224\236\229\237\224\242\238\240: \223 \239\229\240\229\226\238\228\237\238\233 \253\234\231\224\236\229\237\224\242\238\240 \203\229\228\251\237\232. \223 \239\240\238\228\224\254 \242\229\241\242\238\226\251\229 \231\224\228\224\237\232\255 \228\235\255 \207\229\240\229\226\238\228\237\238\227\238 \253\234\231\224\236\229\237\224.")
		--Talk (1, "Переводной Экзаменатор: Я переводной экзаменатор Ледыни. Я продаю тестовые задания для Переводного экзамена.") 

	InitTrigger () 
	TriggerCondition (1, CheckXSZCh) 
	TriggerCondition (1, HasLeaveBagGrid, 1) 
	TriggerCondition (1, HasNoItem, 3280) 
	TriggerCondition (1, HasNoItem, 3281) 
	TriggerCondition (1, HasNoItem, 3282) 
	TriggerAction (1, AddChaItem7) 
	TriggerFailure (1, JumpPage, 2) 
	Text (1, "\223 \245\238\242\229\235 \225\251 \231\224\225\240\224\242\252 \242\229\241\242\238\226\251\229 \231\224\228\224\237\232\255!", MultiTrigger, GetMultiTrigger (), 1)
		--Text (1, "Я хотел бы забрать тестовые задания!", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger () 
	TriggerCondition (1, CheckXSZCh) 
	TriggerCondition (1, CheckKJNum) 
	TriggerCondition (1, HasItem, 3280, 1) 
	TriggerCondition (1, HasItem, 3282, 1) 
	TriggerAction (1, AddChaItem8) 
	TriggerAction (1, TakeItem, 3282, 1) 
	TriggerFailure (1, JumpPage, 3) 
	Text (1, "\223 \226\251\239\238\235\237\232\235 \242\229\241\242 \232 \245\238\247\243 \239\238\235\243\247\232\242\252 \210\224\225\229\235\252 \243\241\239\229\226\224\229\236\238\241\242\232!", MultiTrigger, GetMultiTrigger (), 2) 
		--Text (1, "Я выполнил тест и хочу получить Табель успеваемости!", MultiTrigger, GetMultiTrigger (), 2) 
	
	InitTrigger () 
	TriggerCondition (1, CheckXSZCh) 
	TriggerCondition (1, HasItem, 3289, 1) 
	TriggerCondition (1, HasItem, 3281, 1) 
 	TriggerAction (1, checksjtime) 
 	TriggerFailure (1, JumpPage, 4)
	Text (1, "\194\238\231\252\236\232 \242\224\225\229\235\252 \232 \239\240\238\226\229\240\252 \241\226\238\232 \240\229\231\243\235\252\242\224\242\251!", MultiTrigger, GetMultiTrigger (), 1) 
		--Text (1, "Возьми табель и проверь свои результаты!", MultiTrigger, GetMultiTrigger (), 1) 

	Text (1, "\202\224\234\232\229 \242\240\229\225\238\226\224\237\232\255 \228\235\255 \239\240\238\245\238\230\228\229\237\232\255 \242\229\241\242\232\240\238\226\224\237\232\255?", JumpPage, 5) 
		--Text (1, "Какие требования для прохождения тестирования?", JumpPage, 5) 

	Text (1, "\215\242\238 \232\231 \241\229\225\255 \239\240\229\228\241\242\224\226\235\255\229\242 \242\229\241\242\232\240\238\226\224\237\232\229?", JumpPage, 6)
		--Text (1, "Что из себя представляет тестирование?", JumpPage, 6) 
 
	Talk (2, "\207\229\240\229\226\238\228\237\238\233 \221\234\231\224\236\229\237\224\242\238\240: \210\251 \237\229 \236\238\230\229\248\252 \237\224\247\224\242\252 \242\229\241\242. \207\240\238\226\229\240\252, \247\242\238 \226\241\229 \242\240\229\225\238\226\224\237\232\255 \226\251\239\238\235\237\229\237\251.") 
		--Talk (2, "Переводной Экзаменатор: Ты не можешь начать тест. Проверь, что все требования выполнены.") 

	Talk (3, "\207\229\240\229\226\238\228\237\238\233 \221\234\231\224\236\229\237\224\242\238\240: \211 \242\229\225\255 \228\238\235\230\237\224 \225\251\242\252 \238\228\237\224 \225\243\236\224\227\224 \241 \242\229\241\242\238\236 \232 \238\228\232\237 \235\232\241\242 \241 \238\242\226\229\242\224\236\232 \228\235\255 \239\238\235\243\247\229\237\232\255 \242\224\225\229\235\255.") 
		--Talk (3, "Переводной Экзаменатор: У тебя должна быть одна бумага с тестом и один лист с ответами для получения табеля.") 

	Talk (4, "\207\229\240\229\226\238\228\237\238\233 \221\234\231\224\236\229\237\224\242\238\240: \211 \242\229\225\255 \237\229\242 \210\224\225\229\235\255 \243\241\239\229\226\224\229\236\238\241\242\232.")
		--Talk (4, "Переводной Экзаменатор: У тебя нет Табеля успеваемости.") 

	Talk (5, "\207\229\240\229\226\238\228\237\238\233 \221\234\231\224\236\229\237\224\242\238\240: \210\240\229\225\238\226\224\237\232\255 \228\235\255 \243\247\224\241\242\232\255 \226 \207\229\240\229\226\238\228\237\238\236 \221\234\231\224\236\229\237\229 \241\235\229\228\243\254\249\232\229: \209\242\243\228\229\237\247\229\241\234\224\255 \234\224\240\242\224 \241 \239\238\235\237\251\236 \234\238\235\232\247\229\241\242\226\238\236 \238\239\251\242\224. \192 \242\224\234 \230\229, \243 \242\229\225\255 \237\229 \228\238\235\230\237\238 \225\251\242\252 \242\229\241\242\238\226\251\245 \225\243\236\224\227, \235\232\241\242\238\226 \241 \238\242\226\229\242\224\236\232 \232 \242\224\225\229\235\229\233 \243\241\239\229\226\224\229\236\238\241\242\232.")
		--Talk (5, "Переводной Экзаменатор: Требования для участия в Переводном Экзамене следующие: Студенческая карта с полным количеством опыта. А так же, у тебя не должно быть тестовых бумаг, листов с ответами и табелей успеваемости.") 

	Talk (6, "\207\229\240\229\226\238\228\237\238\233 \221\234\231\224\236\229\237\224\242\238\240: \210\251 \228\238\230\229\237 \239\238\235\243\247\232\242\252 \242\229\241\242 \239\229\240\229\228 \237\224\247\224\235\238\236 \207\229\240\229\226\238\228\237\238\227\238 \221\234\231\224\236\229\237\224. \207\238\241\235\229 \231\224\226\229\240\248\229\237\232\255 \242\229\225\229 \228\224\228\243\242 \235\232\241\242 \228\235\255 \238\242\226\229\242\238\226. \207\240\232\237\229\241\232 \236\237\229 \229\227\238 \232 \239\238\235\243\247\232\248\252 \242\224\225\229\235\252 \241 \238\246\229\237\234\238\233. \223 \237\224\227\240\224\230\243 \242\229\225\255 \239\238 \243\241\239\229\226\224\229\236\238\241\242\232.") 
		--Talk (6, "Переводной Экзаменатор: Ты дожен получить тест перед началом Переводного Экзамена. После завершения тебе дадут лист для ответов. Принеси мне его и получишь табель с оценкой. Я награжу тебя по успеваемости.") 
 
	AddNpcMission (6138) 

end


function sky_07 ()
	
	
	Talk( 1, "Привет, желаешь чтото купить? " )
	Text( 1, "Торг ", BuyPage )

	InitTrade()
	Other(	2625	)
	Other(	2630	) 
	Other(	2634	)
	Other(	2635	)
	Other(	2636	)
	Other(	2637	)
	Other(	2638	)
	Other(	2639	)

end

function r_talkmo4 () -- Wings Store

	Talk( 1, "Привет я продаю крылья ")
	Text( 1, "Купить крылья ", BuyPage)

	InitTrade()
	Other(	0141  )
	Other(	0142  )
	Other(	0905  )
	Other(	0906  )
	Other(	0935  )
	Other(	0936  )
	Other(	0937  )
	Other(	0904  )

end

function Kevin_npc12 () -- Pirate Chest

	Talk( 1, "Привет я продаю пиратские честы " )
	Text( 1, "Купить ", BuyPage)

	InitTrade()
	Other(	3400	) -- Skeletar Chest of Swordsman
	Other(	3401	) -- Skeletar Chest of Hunter
	Other(	3402	) -- Skeletar Chest of Herbalist
	Other(	3403	) -- Skeletar Chest of Explorer
	Other(	3404	) -- Incantation Chest of Crusader
	Other(	3405	) -- Incantation Chest of Champion
	Other(	3406	) -- Incantation Chest of Sharpshooter
	Other(	3407	) -- Incantation Chest of Cleric
	Other(	3408	) -- Incantation Chest of Seal Master
	Other(	3409	) -- Incantation Chest of Voyager
	Other(	3410	) -- Evanescence Chest of Crusader
	Other(	3411	) -- Evanescence Chest of Champion
	Other(	3412	) -- Evanescence Chest of Sharpshooter
	Other(	3413	) -- Evanescence Chest of Cleric
	Other(	3414	) -- Evanescence Chest of Seal Master
	Other(	3415	) -- Evanescence Chest of Voyager
	Other(	3416	) -- Enigma Chest of Crusader
	Other(	3417	) -- Enigma Chest of Champion
	Other(	3418	) -- Enigma Chest of Sharpshooter
	Other(	3419	) -- Enigma Chest of Cleric
	Other(	3420	) -- Enigma Chest of Seal Master
	Other(	3421	) -- Enigma Chest of Voyager
	
	
end

--Маленький Ангел
function dina_talk11()

	Talk( 1, "Маленький Ангел: Я вижу вы выполнили задание Второе Перождение Феникса, вы можете получить вашу награду за старания. " )
	Text( 1, "Я хочу Переродиться ", JumpPage, 2)
	Text( 1, "Я хочу узнать больше ", JumpPage, 3)
	Text( 1, "У меня возникли проблемы при втором перерождение ", JumpPage, 5 )
	Text( 1, "Я ещё не выполнил этого задния. ", CloseTalk)
	
	Talk( 2, "Маленький Ангел: Кем бы вы хотели стать после второго перерождения? " )
	Text( 2, "Стать Воителем, чтобы нести справедливость и мир ",  GetChaName1_born2, 1)
	Text( 2, "Стать Чемпионом, чтобы защишать своих спутников ",  GetChaName2_born2, 1)
	Text( 2, "Стать Целителем, чтобы исцелять ближних ",  GetChaName5_born2, 1)
	Text( 2, "Стать Покорителем морей, чтобы бороздить моря ",  GetChaName3_born2, 1)
	Text( 2, "Стать Стрелком, чтобы расправлятся с врагами ", GetChaName4_born2, 1)	
	Text( 2, "Стать Колдуньей, чтобы делать все что угодно ", GetChaName6_born2, 1)
	Text( 2, "Мне нужно ещё подумать ", CloseTalk)
	
	Talk( 3, "Маленький Ангел: Что вы хотите узнать? " )
	Text( 3, "Классы после второго перерождения? ", JumpPage, 4 )

	Talk( 4, "Маленький Ангел: Игроки могут повторно выбрать класс после второго перерождения: Ланс может стать Воителем, Покорителем морей или Стрелком. Карциз может стать чемпионом. Филлис может стать Цилителем, Колдуньей, Покорителем морей или Стрелком. Ами может стать Целителем, Колдуньей или Покорителем морей. ")
	Text( 4, "Спасибо, я все понил ", CloseTalk)
	
	Talk( 5, "Маленький Ангел: Что не так? " )
	Text( 5, "У меня есть камень второго перерождения, но я немогу переродится! ", JumpPage, 6)
	Text( 5, "Я не знаю где взять задание! ", JumpPage, 7)
	Text( 5, "Первосвященик не даёт мне некаких заданий! ", JumpPage, 8)
	
	Talk( 6, "Снимите все ваши вещи, в том числе кольца и ожерелья. Убедитесь, что вы выбираете свой класс в зависимости от расы. ") 
	Text( 6, "Позвольте мне попробовать еще раз! ", JumpPage, 1)
	
	Talk( 7, "Обратитесь к Первосвященику недалеко от меня. ")
	Text( 7, "Я понил, спасибо! ", CloseTalk )
	
	Talk( 8, "Вы выполнили Перерождение Феникса? Это требуется, чтобы взять второе задание на Перерождение. " )
	Text( 8, "Да! Я выполнил его. ", JumpPage, 9 )
	Text( 8, "Я его не сделал ", JumpPage, 10 )
	
	Talk( 9, "Если вы выполнили это задние то всё впорядке, попробуйте ещё раз. Если опять не получится обратитесь к Администрации. ")
	Text( 9, "Я попробую ещё раз ", CloseTalk )
	
	Talk( 10, "Тогда почему вы здесь? Вы не можете начать второе Перерождение, пока вы не закончите первое. ")
	Text( 10, "Приношу извинения за отсутствие моего интеллекта ", CloseTalk )
	

	--Новое состязание
	AddNpcMission(6071)

end

--шион
function dina_talk25()

	Talk( 1, "Святой отец Шион: Все руны из храма были похищены монстрами из царства Аида. О, странник..." )
	
	AddNpcMission	(6214)
	AddNpcMission	(6227)
end


function m_marry()
	Talk(1, "Священник: Приветствую, я регистрирую брак." )
    Text(1, "Я хочу узнать требования к браку.", JumpPage, 2)
	Text(1, "Я хочу зарегистрировать брак.", JumpPage, 3)
	Text(1, "Я хочу расторгнуть свой брак.", JumpPage, 5)
	Text(1, "Зарегистрироваться позже.", CloseTalk)
	
	Talk(2, "Требования: 1. У молодоженов должны быть Кольца Святого Валентина. 2. Молодожены Должны быть в группе. 3. Каждый должен принести 10 миллионов золотых. 4. Каждый должен получить и открыть свои сундуки фей.")
	Text(2, "Хорошо, я понял. Зарегистрируйте!", JumpPage, 1)
	Text(2, "Дайте подумать.", CloseTalk)
	
	Talk(3, "Священник: Если ты готов, пожалуйста, подтверди. После регистрации ты получишь Свадебный Сертификат. С ним можно Начать церемонию свадьбы у Волшебника Читана ")
	InitTrigger()
	TriggerCondition( 1, IsItem, 2521, 1)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000000)
	TriggerAction(1, GiveItem, 2914, 2, 4)
	TriggerFailure(1, JumpPage, 4)
	Text( 3, "Зарегистрируйте!", Certificate)
	Text(3, "Дайте еще раз подумать.", CloseTalk)
	
	InitTrigger ()
	TriggerCondition (1, HasItem, 2520, 1)
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction (1, TakeItem, 2520, 1)
	TriggerFailure (1, JumpPage, 7)
		Talk (5, "Ты уверен что хочешь развестись? Развод нельзя будет отменить ты это помни ")
		--Talk (5, "Священник: Вы уверены что хотите Развестись?")
		Text (5, "Да я хочу развестись потому что мы не похожи ", MultiTrigger, GetMultiTrigger (), 1)
		--Text (5, "Да хочу", MultiTrigger, GetMultiTrigger (), 1)
	
	Talk(4, "Священник: Ты не выполнил какие-то требования чтоб зарегистрировать брак.Ещё раз проверь хватает тебе денег есть ли кольцо и т.д ")
	Talk(7, "Священник: Ты не можешь развестись так как ты ещё даже не женился ")


end

function BopoH_Angel()
	Talk( 1, "Привет ты наверное пришёл чтобы обменять свои сломаные самоцветы на треснутые.Да?Мне так нравятся когда они перелеваются на свету.Ладно я обменяю свои на твои " )
	Text( 1, "Обменять.", SendExchangeData)


	InitExchange()

	ExchangeData( 6817 , 2 , 6818 , 1 , 1)
	ExchangeData( 6820 , 2 , 6821 , 1 , 1)
	ExchangeData( 6823 , 2 , 6824 , 1 , 1)
	ExchangeData( 6826 , 2 , 6827 , 1 , 1)
	ExchangeData( 6829 , 2 , 6830 , 1 , 1)

end

function poslanik94()

	Talk( 1, "Китаец: Привет дружище! Я уже 5 лет не видел людей, давай поговорим! " )

	AddNpcMission ( 8000 )
	
end

function r_eXtaZy92()
	Talk( 1, "Привет я Вор .Я провожу через томожню многие запрещённый товары.Хочешь взглянуть?  " )
	Text( 1, "Очень хочу.", JumpPage, 2)
	Text( 1, "Не ты какой-то стрёмнэ.", CloseTalk, 1)
	
	Talk( 2, "Вор: Выбирай товар который переправить через таможню " )
    Text(2, "Я хочу приобрести Яйцо Феи.", JumpPage, 5)
	Text(2, "Я хочу приобрести Мордо.", JumpPage, 6)
	Text(2, "Я хочу приобрести сундук Исчезновения.", JumpPage, 7)
    Text(2, "Я хочу приобрести сундук Потаенного.", JumpPage, 8)
	Text(2, "Я хочу приобрести Шлем Волнолома.", JumpPage, 9)
	Text(2, "Я хочу приобрести Церемониальную Корону Короля.", JumpPage, 10)
    Text(2, "Я хочу приобрести Судьбу Артура.", JumpPage, 11)
	Text(2, "Следующая страница.", JumpPage, 3)
	
	
	Text(3, "Я хочу приобрести Корону покойника.", JumpPage, 12)	
	Text(3, "Я хочу приобрести Шлем Богоубийцы.", JumpPage, 13)
    Text(3, "Я хочу приобрести Сундук Хардина.", JumpPage, 14)
	Text(3, "Я хочу приобрести Сундук Тьмы.", JumpPage, 15)
	Text(3, "Я хочу приобрести Сундук Абаддона.", JumpPage, 16)
    Text(3, "Я хочу приобрести Сундук Асура.", JumpPage, 17)
	Text(3, "Я хочу приобрести Сундук Бездны.", JumpPage, 18)
	Text(3, "Следующая страница.", JumpPage, 4)	
	
	Text(4, "Я хочу приобрести Сундук Стикса.", JumpPage, 19)	
	Text(4, "Я хочу приобрести Сундук Нечести.", JumpPage, 20)
	
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 1000, 99 )
	TriggerAction( 1, TakeItem, 1000, 99 )
	TriggerAction( 1, GiveItem, 1015, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 5, "Вор: Яйцо феи будет тебе стоить 99 Пачкуль которые ты можешь достать возле Аргента." )
	Text( 5, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 1000, 99 )
	TriggerAction( 1, TakeItem, 1000, 99 )
	TriggerAction( 1, GiveItem, 0680, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 6, "Вор: Мордо будет тебе стоить 99 Пачкуль которые ты можешь достать возле Аргента." )
	Text( 6, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 7621, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 7, "Вор: Сундук Исчезновения будет тебе стоить 1 Руну Кель которую ты можешь достать в Мире Демонов ,а также в Снежной Войне." )
	Text( 7, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerAction( 1, TakeItem, 1028, 1 )
	TriggerAction( 1, GiveItem, 7622, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 8, "Вор: Сундук Потаенного будет тебе стоить 1 Изменчивую руну которую ты можешь достать в Снежной Войне ,а так же с босса Мира Демов 2." )
	Text( 8, "Обменять", MultiTrigger, GetMultiTrigger(), 1)	
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 2 )
	TriggerAction( 1, TakeItem, 3457, 2 )
	TriggerAction( 1, GiveItem, 7648, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 9, "Вор: Шлем Волнолома будет тебе стоить 2 Руны Кель которые ты можешь достать в Мире Демонов ,а также в Снежной Войне." )
	Text( 9, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerAction( 1, TakeItem, 3457, 3 )
	TriggerAction( 1, GiveItem, 7001, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 10, "Вор: Церемониальная Корона Короля будет тебе стоить 3 Руны Кель которые ты можешь достать в Мире Демонов ,а также в Снежной Войне." )
	Text( 10, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 7002, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 11, "Вор: Судьба Артура будет тебе стоить 4 Руны Кель которые ты можешь достать в Мире Демонов ,а также в Снежной Войне." )
	Text( 11, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2835, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 12, "Вор: Корона покойника будет тебе стоить 5 Рун Кель которые ты можешь достать в Мире Демонов ,а также в Снежной Войне." )
	Text( 12, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 7655, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 13, "Вор: Шлем Богоубийцы будет тебе стоить 5 Рун Кель которые ты можешь достать в Мире Демонов ,а также в Снежной Войне." )
	Text( 13, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6698, 1 )
	TriggerAction( 1, TakeItem, 6698, 1 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 14, "Вор: Сундук Хардина будет тебе стоить 1 свиток Победы который ты можешь получить убивая боссов мира Пиратии." )
	Text( 14, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6698, 1 )
	TriggerAction( 1, TakeItem, 6698, 1 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 15, "Вор: Сундук Тьмы будет тебе стоить 1 свиток Победы который ты можешь получить убивая боссов мира Пиратии." )
	Text( 15, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6698, 1 )
	TriggerAction( 1, TakeItem, 6698, 1 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 16, "Вор: Сундук Абаддона будет тебе стоить 1 свиток Победы который ты можешь получить убивая боссов мира Пиратии." )
	Text( 16, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6698, 1 )
	TriggerAction( 1, TakeItem, 6698, 1 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 17, "Вор: Сундук Асура будет тебе стоить 1 свиток Победы который ты можешь получить убивая боссов мира Пиратии." )
	Text( 17, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6698, 1 )
	TriggerAction( 1, TakeItem, 6698, 1 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 18, "Вор: Сундук Бездны будет тебе стоить 1 свиток Победы который ты можешь получить убивая боссов мира Пиратии." )
	Text( 18, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6698, 1 )
	TriggerAction( 1, TakeItem, 6698, 1 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 19, "Вор: Сундук Стикса будет тебе стоить 1 свиток Победы который ты можешь получить убивая боссов мира Пиратии." )
	Text( 19, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3025, 20 )
	TriggerAction( 1, TakeItem, 3025, 20 )
	TriggerAction( 1, GiveItem, 7699, 1, 4 )
	TriggerFailure(1, JumpPage, 21)
	Talk( 20, "Вор: Сундук Нечести будет тебе стоить 20 Карт Победителя которые ты можешь достать в Мире Демонов 2." )
	Text( 20, "Обменять", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 21, "Вор: У вас нехватает предметов для покупки." )


end



function r_ExtaZy1()

	Talk( 1, "Учитель: Теперь ты должен ответить на следующие вопросы без колебания. Только если ты ответишь правильно на все вопросы, ты получишь начальную профессию.")
	Text( 1, "Да, я могу начать сейчас(2 профессия).", JumpPage, 27)
	Text( 1, "Нет, мне нужно время.", CloseTalk )
	
	
	Talk( 27, "Учитель: Есть ли у НПС Вор в асортименте короны?")
	Text( 27, "Нет ", JumpPage, 28)
	Text( 27, "Да есть 3 штуки ", JumpPage, 29)

	
	Talk( 28, "Учитель: Прости, ты ошибся. Возвращайся, когда найдешь правильный ответ.")
	Text( 28, "Закрыть ", CloseTalk )
	
	Talk( 29, "Учитель: Кого или что именуют Бифом Какао?")
	Text( 29, "Человека ", JumpPage, 28)
	Text( 29, "Интернет Магазин ", JumpPage, 30)
	
	Talk( 30, "Учитель: Что нужно чтоб получить Мордо Младшего?")
	Text( 30, "2 феи Мордо 30+ уровня,лут из обычных мобов.", JumpPage, 28)
	Text( 30, "2 феи Мордо 20+ уровня,лут из ФС,морской лут.", JumpPage, 31)

	Talk( 31, "Учитель: Как проходится квест Перерождение на этом сервере ?")
	Text( 31, "Картой Перерождения ", JumpPage, 28)
	Text( 31, "Квестом ", JumpPage, 32)
		
	Talk( 32, "Ты закончил испытания. Выберай какую ты профессию хочешь.")
	Text( 32, "Ну показывай уже!!111111.", JumpPage, 2)
	
   Text( 2, "Ланс.", JumpPage, 3 )
   Text( 2, "Карциз.", JumpPage, 7 )
   Text( 2, "Филис.", JumpPage, 9 )
   Text( 2, "Ами.", JumpPage, 17 )	
	
   Talk( 3, "Выберай клас." )
   Text( 3, "Круз.", JumpPage, 4 )
   Text( 3, "Вой.", JumpPage, 5 )
   Text( 3, "Шарп.", JumpPage, 6 )

   -----------lance---------
   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 1 )
   TriggerCondition( 1, PfEqual, 1 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 9 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 4, "Да я буду крузом.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 4, "Не,позже.", JumpPage, 2 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 1 )
   TriggerCondition( 1, PfEqual, 4 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 16 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 5, "Да я буду Воем.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 5, "Не ,позже.", JumpPage, 2 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 1 )
   TriggerCondition( 1, PfEqual, 2 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 12 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 6, "Да я буду Шарпом. ", MultiTrigger, GetMultiTrigger(), 2)
   Text( 6, "Не позже.", JumpPage, 2 )

   -----------carsise------------
   Talk( 7, "Кем ты хочешь быть?." )
   Text( 7, "Чемпионом.", JumpPage, 8 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 2 )
   TriggerCondition( 1, PfEqual, 1 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 8 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 8, "Да я буду чемпионом.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 8, "Не,позже.", JumpPage, 6 )

   -------------phillys--------------
   Talk( 9, "Кем ты хочешь быть?." )
   Text( 9, "Шарпом.", JumpPage, 10 )
   Text( 9, "Воем.", JumpPage, 12 )
   Text( 9, "СМ.", JumpPage, 13 )
   Text( 9, "Клером.", JumpPage, 14 )
   Text( 9, "Воительницей.", JumpPage, 24 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 3 )
   TriggerCondition( 1, PfEqual, 2 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 12 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 10, "Да я буду Шарпом.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 10, "Нет не буду.", JumpPage, 8 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 3 )
   TriggerCondition( 1, PfEqual, 4 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 16 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 12, "Да я буду воем.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 12, "Не,позже.", JumpPage, 8 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 3 )
   TriggerCondition( 1, PfEqual, 5 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 14 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 13, "Да я буду СМ.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 13, "Не,позже.", JumpPage, 8 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 3 )
   TriggerCondition( 1, PfEqual, 5 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 13 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 14, "Да я буду Клером.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 14, "Не позже.", JumpPage, 8 )
   
   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 3 )
   TriggerCondition( 1, PfEqual, 1 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 9 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 24, "Да я буду воительницей.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 24, "Не позже.", JumpPage, 8 )

   -------------Amy--------------
   Talk( 17, "А кем ты хочешь быть?." )
   Text( 17, "Воем.", JumpPage, 20 )
   Text( 17, "СМ.", JumpPage, 21 )
   Text( 17, "Клером.", JumpPage, 22 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 4 )
   TriggerCondition( 1, PfEqual, 4 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 16 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 20, "Да я буду Воем.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 20, "Небуду.", JumpPage, 17 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 4 )
   TriggerCondition( 1, PfEqual, 5 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 14 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 21, "Да я буду СМ.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 21, "Небуду.", JumpPage, 17 )

   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 4 )
   TriggerCondition( 1, PfEqual, 5 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 13 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 22, "Я буду Клером.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 22, "Небуду.", JumpPage, 17 )
    
   InitTrigger()
   TriggerCondition( 1, LvCheck, ">", 40 )
   TriggerCondition( 1, IsCategory, 4 )
   TriggerCondition( 1, PfEqual, 5 )
   TriggerCondition( 1, HasMoney, 5000, 5000 )
   TriggerAction( 1, TakeMoney, 5000, 5000 )
   TriggerAction( 1, SetProfession, 9 )
   TriggerAction( 1, JumpPage, 25 )
   TriggerFailure( 1, JumpPage, 11 )
   Text( 23, "Я буду Клером.", MultiTrigger, GetMultiTrigger(), 2)
   Text( 23, "Небуду.", JumpPage, 17 )

   Talk( 25, "Ты получил профессию.")
   Talk( 11, "Ты не соответствуешь требованиям ")
   

end

function r_ExtaZy2()

	Talk( 1, "Учитель: Теперь ты должен ответить на следующие вопросы без колебания. Только если ты ответишь правильно на все вопросы, ты получишь начальную профессию ,а также ты должен быть 11 уровня.")
	Text( 1, "Да, я могу начать сейчас(1 профессия).", JumpPage, 27)
	Text( 1, "Нет, мне нужно время.", CloseTalk )
	
	
	Talk( 27, "Учитель: Как зовут наставницу новичков в Шайтане?")
	Text( 27, "Ирина ", JumpPage, 28)
	Text( 27, "Рислина ", JumpPage, 29)
	Text( 27, "Синна ", JumpPage, 28)
	Text( 27, "Ангелина ", JumpPage, 28)
	
	Talk( 28, "Учитель: Прости, ты ошибся. Возвращайся, когда найдешь правильный ответ.")
	Text( 28, "Закрыть ", CloseTalk )
	
	Talk( 29, "Учитель: В каком городе кузнец умеет вставлять самоцветы и делать слоты?")
	Text( 29, "Ёпт конечно в Аргенте ", JumpPage, 28)
	Text( 29, "Нэ умеет вставлять только кознец Ледыне ", JumpPage, 28)
	Text( 29, "Не не не не не умеет вставлять кузнец Громограда ", JumpPage, 28)
	Text( 29, "Кузнец Шайтана рулит только он может это делать ", JumpPage, 30)
	
	Talk( 30, "Учитель: Кто администратор этого сервера?")
	Text( 30, "Петя.", JumpPage, 28)
	Text( 30, "Вася.", JumpPage, 28)
	Text( 30, "BopoHangel.", JumpPage, 31)
	
	Talk( 31, "Учитель: Может ли Ами стать мечником ?")
	Text( 31, "Оо Йо Админ не задавай глупые вопросы ", JumpPage, 32)
	Text( 31, "Нетттт ", JumpPage, 32)
	Text( 31, "Доооооооо ", JumpPage, 28)
	Text( 31, "Да ", JumpPage, 28)
		
	Talk( 32, "Ты закончил испытания. Выберай какую ты профессию хочешь.")
	Text( 32, "Ланс.", JumpPage, 2 )
    Text( 32, "Карциз.", JumpPage, 6 )
    Text( 32, "Филис.", JumpPage, 8 )
    Text( 32, "Ами.", JumpPage, 14 )
 
    Talk( 2, "Кем ты хочешь быть." )
    Text( 2, "Мечником.", JumpPage, 3 )
    Text( 2, "Моряком.", JumpPage, 4 )
    Text( 2, "Охотником.", JumpPage, 5 )

   	-----------lance---------
    InitTrigger()
    TriggerCondition( 1, LvCheck, ">", 10 )
    TriggerCondition( 1, IsCategory, 1 )
    TriggerCondition( 1, PfEqual, 0 )
    TriggerAction( 1, SetProfession, 1 )
    TriggerAction( 1, JumpPage, 17 )
    TriggerFailure( 1, JumpPage, 11 )
   	Text( 3, "Да я хочю быть мечником.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 3, "Не,позже.", JumpPage, 2 )

	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
  	TriggerCondition( 1, IsCategory, 1 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerAction( 1, SetProfession, 4 )
   	TriggerAction( 1, JumpPage, 17 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 4, "Да я хочю быть моряком.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 4, "Не позже.", JumpPage, 2 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 1 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerAction( 1, SetProfession, 2 )
   	TriggerAction( 1, JumpPage, 17 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 5, "Да я буду охотником.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 5, "Не,позже.", JumpPage, 2 )

   	-----------carsise------------
   	Talk( 6, "Выбери кем ты хочешь быть?." )
   	Text( 6, "Я буду мечником.", JumpPage, 7 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 2 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerAction( 1, SetProfession, 1 )
   	TriggerAction( 1, JumpPage, 17 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 7, "Да я буду мечником.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 7, "Не,позже.", JumpPage, 6 )

   	-------------phillys--------------
   	Talk( 8, "Кем ты хочешь быть?.." )
   	Text( 8, "Я буду охотницей.", JumpPage, 9 )
   	Text( 8, "Я буду морячкой. ", JumpPage, 12 )
   	Text( 8, "Я буду Знахаркой. ", JumpPage, 13 )
	Text( 8, "Я буду мечницей.", JumpPage, 21 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 9 )
   	TriggerCondition( 1, IsCategory, 3 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerAction( 1, SetProfession, 2 )
   	TriggerAction( 1, JumpPage, 17 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 9, "Да я буду охотнецей.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 9, "Не,позже.", JumpPage, 8 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 3 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerAction( 1, SetProfession, 4 )
   	TriggerAction( 1, JumpPage, 17 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 12, "Да я быду морячкой.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 12, "Не позже.", JumpPage, 8 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 3 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerAction( 1, SetProfession, 5 )
   	TriggerAction( 1, JumpPage, 17 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 13, "Да я буду знахаркой.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 13, "Нет.", JumpPage, 8 )
	
   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 3 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerAction( 1, SetProfession, 1 )
   	TriggerAction( 1, JumpPage, 17 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 21, "Да я буду мечницей.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 21, "Нет.", JumpPage, 8 )


   	-------------Ami--------------
   	Talk( 14, "Кем ты будешь." )
   	Text( 14, "Морячкой.", JumpPage, 15 )
   	Text( 14, "Знахаркой.", JumpPage, 16 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 4 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerAction( 1, SetProfession, 4 )
   	TriggerAction( 1, JumpPage, 17 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 15, "Да я буду морячкой.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 15, "Нет не буду.", JumpPage, 14 )

   	InitTrigger()
   	TriggerCondition( 1, LvCheck, ">", 10 )
   	TriggerCondition( 1, IsCategory, 4 )
   	TriggerCondition( 1, PfEqual, 0 )
   	TriggerAction( 1, SetProfession, 5 )
   	TriggerAction( 1, JumpPage, 1 )
   	TriggerFailure( 1, JumpPage, 11 )
   	Text( 16, "Да я буду знахаркой.", MultiTrigger, GetMultiTrigger(), 2)
   	Text( 16, "Нет не буду.", JumpPage, 14 )

	Talk( 11, "Ты не подходишь по требованиям.Прости ")
	
	Talk( 17, "Ты получил профессию ")

end

function BopoH_trade()

	Talk( 1, "Привет меня звать Пират Джек я могу тебе обменять твою репутацию пирата на полезные предметы " )
	Text( 1, "Я хочю поменять свою репутацию на предметы ", JumpPage, 2)

	Talk( 2, "Выбирай какой предмет тебе нужен.Выбирай с умом " )
	Text( 2, "Кольца 40-60 уровень ", JumpPage, 5)
	Text( 2, "Набор бижутерии 20-60 ур ", JumpPage, 6)
	Text( 2, "Щит Дракона(+9пр) ", JumpPage, 15)
	
	Talk( 5, "Выбирай какой предмет тебе нужен.Выбирай с умом " )
	
	Text( 5, "40 кольца(1 миллион золота) ", JumpPage, 8)
	Text( 5, "50 кольца(2 миллиона золота) ", JumpPage, 9)
	Text( 5, "60 кольца(10 тысяч репутации) ", JumpPage, 10)
	
	Talk( 8, "Выбирай какой предмет тебе нужен.Выбирай с умом " )
	Text( 8, "Печать Силы(+6 силы) ", JumpPage, 11)
	Text( 8, "Кнопка призрачного волка(+6 ловкости) ", JumpPage, 12)
	Text( 8, "Кольцо крыла дракона(+6 точности) ", JumpPage, 13)
	Text( 8, "Благославление Единорога( +6 телосложения) ", JumpPage, 14)
	Text( 8, "Горе Ангела(+6 духа) ", JumpPage, 15)
	
	Talk( 9, "Выбирай какой предмет тебе нужен.Выбирай с умом " )
	Text( 9, "Печать Силы(+8 силы) ", JumpPage, 16)
	Text( 9, "Кнопка призрачного волка(+8 ловкости) ", JumpPage, 17)
	Text( 9, "Кольцо крыла дракона(+8 точности) ", JumpPage, 18)
	Text( 9, "Благославление Единорога( +8 телосложения) ", JumpPage, 19)
	Text( 9, "Горе Ангела(+8 духа) ", JumpPage, 20)
	
	Talk( 10, "Выбирай какой предмет тебе нужен.Выбирай с умом " )
	Text( 10, "Призыв Питера(+10 силы) ", JumpPage, 21)
	Text( 10, "Поцелуй Ника(+10 ловкости) ", JumpPage, 22)
	Text( 10, "Гнев Рея(+10 точности) ", JumpPage, 23)
	Text( 10, "Сожеление Даниэля( +10 телосложения) ", JumpPage, 24)
	Text( 10, "Посвящение Жрицы(+10 духа) ", JumpPage, 25)


	Talk(11,"Печать Силы будет тебе стоить 1 миллион золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 1000000, 1000000 )
   	TriggerAction( 1, TakeMoney, 1000000, 1000000 )
	TriggerAction( 1, GiveItem, 324,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(11,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(12,"Кнопка призрачного волка будет тебе стоить 1 миллион золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 1000000, 1000000 )
   	TriggerAction( 1, TakeMoney, 1000000, 1000000 )
	TriggerAction( 1, GiveItem, 327,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(12,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(13,"Кольцо крыла дракона будет тебе стоить 1 миллион золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 1000000, 1000000 )
   	TriggerAction( 1, TakeMoney, 1000000, 1000000 )
	TriggerAction( 1, GiveItem, 328,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(13,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(14,"Благославление Единорога будет тебе стоить 1 миллион золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 1000000, 1000000 )
   	TriggerAction( 1, TakeMoney, 1000000, 1000000 )
	TriggerAction( 1, GiveItem, 329,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(14,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(15,"Горе Ангела будет тебе стоить 1 миллион золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 1000000, 1000000 )
   	TriggerAction( 1, TakeMoney, 1000000, 1000000 )
	TriggerAction( 1, GiveItem, 330,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(15,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(16,"Громовой Молот будет тебе стоить 2 миллиона золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 2000000, 2000000 )
   	TriggerAction( 1, TakeMoney, 2000000, 2000000 )
	TriggerAction( 1, GiveItem, 334,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(16,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(17,"Глаз молнии будет тебе стоить 2 миллиона золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 2000000, 2000000 )
   	TriggerAction( 1, TakeMoney, 2000000, 2000000 )
	TriggerAction( 1, GiveItem, 346,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(17,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(18,"Крылья света будет тебе стоить 2 миллиона золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 2000000, 2000000 )
   	TriggerAction( 1, TakeMoney, 2000000, 2000000 )
	TriggerAction( 1, GiveItem, 347,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(18,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(19,"Утреннний колокольчик будет тебе стоить 2 миллиона золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 2000000, 2000000 )
   	TriggerAction( 1, TakeMoney, 2000000, 2000000 )
	TriggerAction( 1, GiveItem, 348,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(19,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(20,"Шепот природы будет тебе стоить 2 миллиона золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 2000000, 2000000 )
   	TriggerAction( 1, TakeMoney, 2000000, 2000000 )
	TriggerAction( 1, GiveItem, 349,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(20,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(21,"Призыв питера будет тебе стоить 10 тысяч репутации ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
	TriggerCondition(1, HasCredit, 10000) --Есть ли у персонажа n-oe очков репутации?
	TriggerAction(1, DelRoleCredit, 10000)
	TriggerAction( 1, GiveItem, 387,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(21,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(22,"Поцелуй Ника будет тебе стоить 10 тысяч репутации ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
	TriggerCondition(1, HasCredit, 10000) --Есть ли у персонажа n-oe очков репутации?
	TriggerAction(1, DelRoleCredit, 10000)
	TriggerAction( 1, GiveItem, 414,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(22,"Обменять ",MultiTrigger,GetMultiTrigger(),1)

	Talk(23,"Гнев Рея будет тебе стоить 10 тысяч репутации ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
	TriggerCondition(1, HasCredit, 10000) --Есть ли у персонажа n-oe очков репутации?
	TriggerAction(1, DelRoleCredit, 10000)
	TriggerAction( 1, GiveItem, 415,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(23,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(24,"Сожеления Даниэля будет тебе стоить 10 тысяч репутации ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
	TriggerCondition(1, HasCredit, 10000) --Есть ли у персонажа n-oe очков репутации?
	TriggerAction(1, DelRoleCredit, 10000)
	TriggerAction( 1, GiveItem, 416,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(24,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(25,"Просвящение жрицы будет тебе стоить 10 тысяч репутации ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
	TriggerCondition(1, HasCredit, 10000) --Есть ли у персонажа n-oe очков репутации?
	TriggerAction(1, DelRoleCredit, 10000)
	TriggerAction( 1, GiveItem, 417,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(25,"Обменять ",MultiTrigger,GetMultiTrigger(),1)

	Talk( 6,"Выбирай какая тебе нужна бижутерия,но осторожно потому что я тебе её не смогу поменять. ")
	--Text( 6, "Платиновое ожерелье (+20 бега) ", JumpPage, 26)
	--Text( 6, "Посланник ветра(+30 бега) ", JumpPage, 27)
	Text( 6, "Кристалл Наяды(+60 бега) ", JumpPage, 28)
	Text( 6, "Блуждающий по лабиринту(+80 бега) ", JumpPage, 29)
	Text( 6, "Благословенный Давао(+100 бега) ", JumpPage, 30)
	
	Talk(26,"Платиновое ожерелье будет тебе стоить 10 тысяч золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 10000, 10000 )
   	TriggerAction( 1, TakeMoney, 10000, 10000 )
	TriggerAction( 1, GiveItem, 0419,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(26,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(27,"Посланник ветра будет тебе стоить 40 тысяч золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 40000, 40000 )
   	TriggerAction( 1, TakeMoney, 40000, 40000 )
	TriggerAction( 1, GiveItem, 0421,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(27,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(28,"Кристалл Наяды будет тебе стоить 500000 тысяч золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 500000, 500000 )
   	TriggerAction( 1, TakeMoney, 500000, 500000 )
	TriggerAction( 1, GiveItem, 0461,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(28,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(29,"Блуждающий по лабиринту будет тебе стоить 1000000 тысяч золота ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
   	TriggerCondition( 1, HasMoney, 1000000, 1000000 )
   	TriggerAction( 1, TakeMoney, 1000000, 1000000 )
	TriggerAction( 1, GiveItem, 0463,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(29,"Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(30,"Благословенный Давао будет тебе стоить 5 тысяч репутации ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
	TriggerCondition(1, HasCredit, 5000) --Есть ли у персонажа n-oe очков репутации?
	TriggerAction(1, DelRoleCredit, 5000)
	TriggerAction( 1, GiveItem, 0497,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(30,"Обменять ",MultiTrigger,GetMultiTrigger(),1)

	Talk(15,"Щит Дракона будет тебе стоить 50 тысяч репутации ")
	InitTrigger()
	TriggerCondition(1, HasLeaveBagGrid, 1) --Есть ли одна свободная ячейка в инвентаре?
	TriggerCondition(1, KitbagLock, 0) --Заблокирован ли инвентарь?
	TriggerCondition(1, HasCredit, 50000) --Есть ли у персонажа n-oe очков репутации?
	TriggerAction(1, DelRoleCredit, 50000)
	TriggerAction( 1, GiveItem, 2426,1,4 )
	TriggerFailure( 1, JumpPage, 31)
	Text(15,"Обменять ",MultiTrigger,GetMultiTrigger(),1)


	Talk( 31, "Извените но у вас недостаточно репутации для обмена " )
	
end

function snow_derevna()
	
	local CurMapName = "garner" 


	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 2200
	local GoTo01Y = 2785
	local GoTo01M = CurMapName

	Talk( 1, "Ниесу: Привет меня зовут Ниесу я могу отправлять людей в Аргент из PvP арены! " )
	Text( 1, "Отправь меня в Аргент! ", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Ты точно уверен что ты хочешь сбежать с Арены?! " )
	Text( 2, "Я хочу выйти с Арены! ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk (7, "Тт ") 

end

function BopoHa_angel()

	Talk (1, "Привет я сторож входа в Баунти.А также я тут обмениваю эмблемы Короля Ринга которые люди приносят с Баунти.")
	Text (1, "Обменять Святые Эмблемы Ринга на Эмблему Короля Ринга.", JumpPage, 2)
	Text (1, "Обменять Эмблему Короля Ринга на сундук Ринга.", JumpPage, 3)
	
	Talk(2,"Чтоб получить эмблему Короля Ринга надо обменять пять Святых эмблем Ринга.Ты согласен? ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 5) 
	TriggerAction( 1, TakeItem,  1031, 5 )
	TriggerAction( 1, GiveItem, 1032,1,4 )
	TriggerFailure( 1, JumpPage, 7)
	Text (2, "Я согласен ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(3,"Чтоб получить сундук Хаоса надо обменять 1 Эмблему Короля Ринга.Ты согласен? ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 1032, 1) 
	TriggerAction( 1, TakeItem,  1032, 1 )
	TriggerAction( 1, GiveItem, 1134,1,4 )
	TriggerFailure( 1, JumpPage, 7)
	Text(3,"Я согласен ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk (7, "У тебя не хватает предметов чтоб получить Набор Хаоса ") 

end

function BopoHangell()

	Talk( 1, "Я пологаю вашей команде скучно ну чтож давай разнообразим вашу жизнь....Видимо вы давно ищите смерти...... " )
	Text( 1, "Да нам очень скучно давай эвент! ", JumpPage, 2)

	Talk(2,"УМРИ! " )
	InitTrigger()
	TriggerAction(1,CreateCha,778, 98700, 360800, 145, 60) -- вызов монстра
	TriggerAction(1,CreateCha,679, 98800, 361700, 145, 60) -- вызов монстра
	TriggerFailure( 1, JumpPage, 14)
	Text(2,"Посмотрим кто кого ",MultiTrigger,GetMultiTrigger(),1)

end

function extazy_2016()


	Talk( 1, "Привет я акционер.Я помогаю ГМам проводить акции.У меня раз в неделю можно увидеть товары за деньги от Джунов до Наборов Смерти  " )
	Text( 1, "Посмотреть аукцион ", BuyPage )


	InitTrade()
	Defence()

end

function BopoH_2017()

	Talk( 1, "Привет меня звать Комбайнёрчик я могу комбинировать предметы " )
	Text( 1, "Комбинировать ", JumpPage, 2)

	Talk( 2, "Что тебе скомбинировать? " )
	Text( 2, "Свиток победы ", JumpPage, 5)
--	Text( 2, "Расписку на самоцвет Азраиля ", JumpPage, 6)
--	Text( 2, "Ледяной Шип ", JumpPage, 7)
	--Text( 2, "Эфектные Крылья ", JumpPage, 8)
	--Text( 2, "Эфектные Крылья 2 ", JumpPage, 9 )
	--Text( 2, "Эфектные Крылья 3 ", JumpPage, 10)

	Talk(5,"Чтоб получить свиток победы тебе нужно:Орден неуязвимого Рыцаря(ФС),Останки Грязилища(Грязь из ДС),Карта военачальника(Глава Снежного Люда),Печать Снежной Королевы(Блуждающая душа),Красная кнопка Хаоса(Босс Хаоса),15 ангельских костей ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3453, 1) 
	TriggerCondition( 1, HasItem, 7633, 1) 
	TriggerCondition( 1, HasItem, 7634, 1) 
	TriggerCondition( 1, HasItem, 7635, 1) 
	TriggerCondition( 1, HasItem, 7685, 1) 
	TriggerCondition( 1, HasItem, 7698, 1) 
	TriggerCondition( 1, HasItem, 271, 15) 
	TriggerAction( 1, TakeItem, 3453,1,4 )
	TriggerAction( 1, TakeItem, 7633,1,4 )
	TriggerAction( 1, TakeItem, 7634,1,4 )
	TriggerAction( 1, TakeItem, 7635,1,4 )
	TriggerAction( 1, TakeItem, 7685,1,4 )
	TriggerAction( 1, TakeItem, 7698,1,4 )
	TriggerAction( 1, TakeItem, 271,15,4 )
	TriggerAction( 1, GiveItem, 6698,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(5,"Обменять ",MultiTrigger,GetMultiTrigger(),1)

	Talk(6,"Чтоб получить расписку на самоцвет Азраиля тебе нужно принести 8 частей самоцвета ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7686,1,4 )
	TriggerAction( 1, TakeItem, 7687,1,4 )
	TriggerAction( 1, TakeItem, 7688,1,4 )
	TriggerAction( 1, TakeItem, 7689,1,4 )
	TriggerAction( 1, TakeItem, 7690,15,4 )
	TriggerAction( 1, TakeItem, 7691,1,4 )
	TriggerAction( 1, TakeItem, 7692,1,4 )
	TriggerAction( 1, TakeItem, 7693,15,4 )
	TriggerAction( 1, GiveItem, 7694,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(6,"Обменять ",MultiTrigger,GetMultiTrigger(),1)


	Talk( 18, "Извените но у вас недостаточно предметов для обмена " )

end

function arena_talk01 ()
	Talk(1, "Хранитель арены: Привет тебе! Я Хранитель арены. Чем могу быть полезен? ")
	Text(1, "Что нужно для записи на участие? ", JumpPage, 2)
	Text(1, "Каковы правила Арены? ", JumpPage, 3)
	Text(1, "Записаться. ", JumpPage, 8)
	Text(1, "Распустить команду. ", JumpPage, 10)	
	Text(1, "Уйти ", CloseTalk)
	
	Talk(2, "На Арену могут выйти 1 учитель и 2 ученика, образующие одну команду во главе с учителем. Если у команды уже есть Карта Выхода на арену, ее члены повторно записываться не могут. Одновеременно могут готовиться до 64-ух команд. ")
	Text(2, "Я знаю требования. ", JumpPage, 1)
	Text(2, "Уйти ", CloseTalk)
	
	Talk(3, "Правила арены делятся на следующие категории: Правила времени, Правила результата, Правила выживания и Правила зрителей. ")
	Text(3, "Правило времени ", JumpPage, 4) 
	Text(3, "Правило результата ", JumpPage, 5)
	Text(3, "Правило выживания ", JumpPage, 6)
	Text(3, "Правило зрителей ", JumpPage, 7)
	Text(3, "Уйти ", CloseTalk)
	
	Talk(4, "Состязания на арене проводятся раз в месяц. Записаться на участие можно в течение первой недели каждого месяца. Например, с 12:01 1 Мая до 23:59 7 Мая. Каждый раунд длится 10 минут, предметы Не действуют. ")
	Text(4, "Понятно. ", JumpPage, 3) 
	Text(4, "Уйти ", CloseTalk)
	
	Talk(5, "Правило результата: В случае смерти участники не могут двигаться или возврощаться на точку возрождения, но их могут оживлять соратники по команде. Если все члены команды погибают, команда проигрывает. Выигравшая команда проходит дальше. Впрочем, у проигравшей команды тоже будет шанс сделать это. ")
	Text(5, "Понятно. ", JumpPage, 3) 
	Text(5, "Уйти ", CloseTalk)
	
	Talk(6, "Правило выживания: Все проигрывшие команды будут отображаться в специальном списке с кнопками голосования. Для голосования игроки могут использовать свои возрождающие предметы. Команда, получающая наибольшее количество голосов, будет возрождена и пройдет в следующий раунд. ")
	Text(6, "Понятно. ", JumpPage, 3) 
	Text(6, "Уйти ", CloseTalk)
	
	Talk(7, "Правило зрителей: Игроки могут входить на территорию арены и смотреть состязания, если у них есть Билет на Арену, но зрители доложны находиться только в безопасной зоне. Никакие предметы и навыки не действуют. NPC Арены могут телепортировать людей между тремя аренами. Либо за их пределы. ")
	Text(7, "Понятно. ", JumpPage, 3) 
	Text(7, "Уйти ", CloseTalk)
	
	Talk(8, "Еще раз напоминаем - учитель с двумя учениками имеет право записаться на участие в Состязаниях на Арене. Команду должен возглавить учитель, обязаностью которого является запись на Карту Выхода на Арену. После записи, состав команды менять нельзя. ")
	InitTrigger()                                                   
    TriggerCondition(1,CheckIsValidTeam)
	TriggerAction(1,ArenaTeamSignUP)	
	TriggerFailure(1,JumpPage,9)
	Text(8, "Я не сомневаюсь. Записаться. ", MultiTrigger, GetMultiTrigger(), 1) 
	Text(8, "Уйти ", CloseTalk)
	
	Talk(9, "МхјюІ»ВъЧгЈ¬ІЩЧчК§°Ь")
	Text(9, "Уйти ", CloseTalk)
	
	Talk(10, "Если члены уже зарегистрированой команды хотят распустить её, заявку должен подать учитель. Члены распущенной команды не могут участвовать в Состязаниях на Арене до тех пор, пока не сформируют новую команду. ")
	InitTrigger()
	--TriggerCondition(1,CheckIsValidTeam)
	TriggerAction(1,ArenaTeamCancel)
	TriggerAction(1,TakeItem,6066,1)
	TriggerFailure(1,JumpPage,9)
	Text(10, "Распустить мою команду. ",MultiTrigger, GetMultiTrigger(), 1)
	Text(10, "Уйти ", CloseTalk)
end

function r_talkmmorpg()

	Talk( 1, "Привет дружок я Фея Нордскола. Когда я прилетела с Нордскола я случайно взяла с собой пару лишних колец так что я могу обменять на твои очки Хаоса потому что только отважному человеку могу их вручить." )
	Text( 1, "Я отважный воин я достоин этих колец ", JumpPage, 2)
	
	Talk( 2, "Выберай что тебе нужно бижутерию или кольца? " )
	Text( 2, "Кольца ", JumpPage, 3)
	Text( 2, "Бижутерии ", JumpPage, 4)	

	Talk( 3, "Выберай какое тебе нужно кольцо " )
	Text( 3, "Арес(+13 стр,+5 кон) ", JumpPage, 5)
	Text( 3, "Гайа(+13 кон,+5 аги) ", JumpPage, 6)
	Text( 3, "Уранос(+13 аги,+5 кон) ", JumpPage, 7)
	Text( 3, "Кроно(+13 спр,+5 кон) ", JumpPage, 8)
	Text( 3, "Благославление Реи(+13 акк,+5 кон) ", JumpPage, 9 )
	
	Talk( 4, "Выберай какая тебе нужна бижутерия " )
	Text( 4, "Сила Бездны ", JumpPage, 10)
	Text( 4, "Страж Бездны ", JumpPage, 11)
	Text( 4, "Свет Бездны ", JumpPage, 12)
	Text( 4, "Танец Бездны ", JumpPage, 13)
	Text( 4, "Центр Бездны ", JumpPage, 14 )

	

	Talk(5,"Ты уверен что тебе это нужно? 1 кольцо стоит 100 Хаос очков ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasFightingPoint,100 )
	TriggerAction( 1, TakeFightingPoint, 100,100 )
	TriggerAction( 1, GiveItem, 6638,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(5,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(6,"Ты уверен что тебе это нужно? 1 кольцо стоит 100 Хаос очков ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasFightingPoint,100 )
	TriggerAction( 1, TakeFightingPoint, 100,100 )
	TriggerAction( 1, GiveItem, 6643,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(6,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(7,"Ты уверен что тебе это нужно? 1 кольцо стоит 100 Хаос очков ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasFightingPoint, 100 )
	TriggerAction( 1, TakeFightingPoint, 100,100 )
	TriggerAction( 1, GiveItem, 6648,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(7,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(8,"Ты уверен что тебе это нужно? 1 кольцо стоит 100 Хаос очков ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasFightingPoint,100 )
	TriggerAction( 1, TakeFightingPoint, 100,100 )
	TriggerAction( 1, GiveItem, 6653,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(8,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(9,"Ты уверен что тебе это нужно? 1 кольцо стоит 100 Хаос очков ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasFightingPoint,100 )
	TriggerAction( 1, TakeFightingPoint, 100,100 )
	TriggerAction( 1, GiveItem, 6658,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(9,"Да ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(10,"Ты уверен что тебе это нужно? 1 кольцо стоит 60 Хаос очков ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasFightingPoint,60 )
	TriggerAction( 1, TakeFightingPoint, 60,60 )
	TriggerAction( 1, GiveItem, 6904,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(10,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(11,"Ты уверен что тебе это нужно? 1 кольцо стоит 60 Хаос очков ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasFightingPoint,60 )
	TriggerAction( 1, TakeFightingPoint, 60,60 )
	TriggerAction( 1, GiveItem, 6905,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(11,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(12,"Ты уверен что тебе это нужно? 1 кольцо стоит 60 Хаос очков ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasFightingPoint,60 )
	TriggerAction( 1, TakeFightingPoint, 60,60 )
	TriggerAction( 1, GiveItem, 6906,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(12,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(13,"Ты уверен что тебе это нужно? 1 кольцо стоит 60 Хаос очков ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasFightingPoint,60 )
	TriggerAction( 1, TakeFightingPoint, 60,60 )
	TriggerAction( 1, GiveItem, 6907,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(13,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(14,"Ты уверен что тебе это нужно? 1 кольцо стоит 60 Хаос очков ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasFightingPoint,60 )
	TriggerAction( 1, TakeFightingPoint, 60,60 )
	TriggerAction( 1, GiveItem, 6908,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(14,"Да ",MultiTrigger,GetMultiTrigger(),1)



	Talk( 18, "Извените но увас недостаточно предметов для обмена=( " )

end


function pre_talk()
	Talk( 1, "Даритель подарков: Здравствуйте.Я обмениваю сундучки фей на монеты фей ,а так же на печатки.")
	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1872 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1872, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Сундук с монетами фей ", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1570 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1570, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Запечатанный сундук фей ", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1571 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1571, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Запечатанный сундук повелителя фей ", MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 2, "У вас уже есть сундук.")
end




function wedding_npc01()

	Talk(1, "\209\226\255\249\229\237\237\232\234: \207\240\232\226\229\242\241\242\226\243\254, \255 \240\229\227\232\241\242\240\232\240\243\254 \225\240\224\234." )
    Text(1, "\223 \245\238\247\243 \243\231\237\224\242\252 \242\240\229\225\238\226\224\237\232\255 \234 \225\240\224\234\243.", JumpPage, 2)
	Text(1, "\223 \245\238\247\243 \231\224\240\229\227\232\241\242\240\232\240\238\226\224\242\252 \225\240\224\234.", JumpPage, 3)
	Text(1, "\199\224\240\229\227\232\241\242\240\232\240\238\226\224\242\252\241\255 \239\238\231\230\229.", CloseTalk)
	
	
	Talk(2, "\210\240\229\225\238\226\224\237\232\255: 1. \211 \236\238\235\238\228\238\230\229\237\238\226 \228\238\235\230\237\251 \225\251\242\252 \202\238\235\252\246\224 \209\226\255\242\238\227\238 \194\224\235\229\237\242\232\237\224. 2. \204\238\235\238\228\238\230\229\237\251 \196\238\235\230\237\251 \225\251\242\252 \226 \227\240\243\239\239\229. 3. \202\224\230\228\251\233 \228\238\235\230\229\237 \239\240\232\237\229\241\242\232 10 \236\232\235\235\232\238\237\238\226 \231\238\235\238\242\251\245. 4. \202\224\230\228\251\233 \228\238\235\230\229\237 \239\238\235\243\247\232\242\252 \232 \238\242\234\240\251\242\252 \241\226\238\232 \241\243\237\228\243\234\232 \244\229\233.")
	Text(2, "\213\238\240\238\248\238, \255 \239\238\237\255\235. \199\224\240\229\227\232\241\242\240\232\240\243\233\242\229!", JumpPage, 3)
	Text(2, "\196\224\233\242\229 \239\238\228\243\236\224\242\252...", CloseTalk)
	
	
	Talk(3, "\209\226\255\249\229\237\237\232\234: \197\241\235\232 \242\251 \227\238\242\238\226, \239\238\230\224\235\243\233\241\242\224, \239\238\228\242\226\229\240\228\232. \207\238\241\235\229 \240\229\227\232\241\242\240\224\246\232\232 \242\251 \239\238\235\243\247\232\248\252 \209\226\224\228\229\225\237\251\233 \209\229\240\242\232\244\232\234\224\242. \209 \237\232\236 \236\238\230\237\238 \237\224\247\224\242\252 \246\229\240\229\236\238\237\232\254 \241\226\224\228\252\225\251 \243 \194\238\235\248\229\225\237\232\234\224 \215\232\242\224\237\224")
	
	InitTrigger()
	TriggerCondition(1, GiveWeddingCertificate)
	TriggerAction(1, JumpPage, 4)
	TriggerFailure(1, JumpPage, 5)
	Text(3, "\207\238\228\242\226\229\240\228\232\242\252", MultiTrigger, GetMultiTrigger(), 1)
	Text(3, "\196\224\233\242\229 \229\249\229 \240\224\231 \239\238\228\243\236\224\242\252.", CloseTalk)
	
	
	Talk(4, "\209\226\255\249\229\237\237\232\234: \207\238\231\228\240\224\226\235\255\254! \210\251 \242\238\235\252\234\238 \247\242\238 \239\238\235\243\247\232\235 \209\226\224\228\229\225\237\251\233 \241\229\240\242\232\244\232\234\224\242! \221\242\238 \241\224\236\251\233 \239\229\240\226\251\233 \248\224\227 \234 \225\240\224\234\243. \210\229\239\229\240\252 \238\247\229\240\229\228\252 \242\226\238\229\233 \239\238\235\238\226\232\237\234\232, \229\241\235\232 \243 \237\229\229 \226\241\229 \229\249\229 \237\229\242 \209\226\224\228\229\225\237\238\227\238 \241\229\240\242\232\244\232\234\224\242\224...")
	Text(4, "\209\239\224\241\232\225\238!", CloseTalk)
	
	
	Talk(5, "\209\226\255\249\229\237\237\232\234: \205\229 \226\241\229 \242\240\229\225\238\226\224\237\232\255 \241\238\225\235\254\228\229\237\251! \207\238\230\224\235\243\233\241\242\224, \238\231\237\224\234\238\236\252\241\255 \241 \242\240\229\225\238\226\224\237\232\255\236\232 \234 \225\240\224\234\243.")
	Text(5, "\211\231\237\224\242\252 \241 \242\240\229\225\238\226\224\237\232\255\236\232 \234 \225\240\224\234\243.", JumpPage, 2)
	Text(5, "\199\224\240\229\227\232\241\242\240\232\240\238\226\224\242\252\241\255 \239\238\231\230\229.", CloseTalk)

end


function wedding_npc02()
	
	Talk( 1, "\204\224\233\235\224\228\224: \225\238\227 \236\232\235\238\241\229\240\228\229\237. \223 \239\240\232\227\235\224\248\224\254 \242\229\225\255 \237\224 \209\226\255\242\243\254 \231\229\236\235\254 \232\236\229\237\229\236 \241\226\238\229\227\238 \227\238\241\239\238\228\232\237\224!" )
	Text( 1, "\206 \214\229\240\234\226\232", JumpPage, 17)	

	Talk( 17, "\204\224\233\235\224\228\224: \213\238\247\229\248\252 \224\240\229\237\228\238\226\224\242\252 \214\229\240\234\238\226\252? \223 \236\238\227\243 \241\228\229\235\224\242\252 \241\229\227\238\228\237\255 \241\234\232\228\234\243." )
	Text( 17, "\202\240\224\242\234\238\229 \238\239\232\241\224\237\232\229 \246\229\240\234\226\232", JumpPage, 6)
	Text( 17, "\214\229\240\234\238\226\237\224\255 \241\242\224\226\234\224", ListAuction)
	Text( 17, "\202\243\239\232\242\252 \225\232\235\229\242 \226 \246\229\240\234\238\226\252", JumpPage, 2 )
	Text( 17, "\202\243\239\232\242\252 \239\240\232\227\235\224\248\229\237\232\255", JumpPage, 5)

	InitTrigger()
	TriggerCondition( 1, HasMoney,5000 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction(1, GiveItem, 3024, 1 , 4)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4 )
	Talk(2, "\204\224\233\235\224\228\224: \214\229\240\234\238\226\252 \253\242\238 \236\229\241\242\238 \227\228\229 \237\224\247\232\237\224\229\242\241\255 \241\247\224\241\242\252\229, \227\228\229 \235\254\225\238\226\252 \253\242\238 \227\235\224\226\237\238\229. \207\240\232\245\238\228\232 \237\224 \253\234\241\234\243\240\241\232\254 \234\224\230\228\251\233 \239\238\237\229\228\229\235\252\237\232\234 \241 17:00 \228\238 17:10. \225\232\235\229\242 \241\242\238\232\242 \226\241\229\227\238 5000 \231\238\235\238\242\251\245.")
	Text(2, "\207\238\228\242\226\229\240\228\232\242\252 \239\238\234\243\239\234\243",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "\207\240\232\227\235\224\248\224\229\236 \237\224 \253\234\241\234\243\240\241\232\254 \226\238 \226\240\229\236\229\237\232.")
	Talk(4, "\204\224\233\235\224\228\224: \211 \242\229\225\255 \237\229\228\238\241\242\224\242\238\247\237\238 \231\238\235\238\242\224! \200\235\232 \231\224\225\235\238\234\232\240\238\226\224\237 \232\237\226\229\237\242\224\240\252. \207\238\236\237\232, \237\243\230\237\224 1 \239\243\241\242\224\255 \255\247\229\233\234\224.")
	
	Talk( 5, "\204\224\233\235\224\228\224: \208\224\231\240\229\248\229\237\232\229 \214\229\240\234\226\232 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \228\235\255 \239\238\235\243\247\229\237\232\255 \241\238\238\242\226\229\242\241\242\226\243\254\249\232\245 \239\240\232\227\235\224\241\232\242\229\235\252\237\251\245 \225\232\235\229\242\238\226. \202\224\230\228\251\229 10 \234\243\241\238\247\234\238\226 \239\240\232\227\235\224\241\232\242\229\235\252\237\238\227\238 \225\232\235\229\242\224 \241\238\241\242\224\226\235\255\254\242 \229\228\232\237\238\229 \246\229\235\238\229. 50 000 \231\238\235\238\242\251\245 \228\238\235\230\237\238 \225\251\242\252 \243\239\235\224\247\229\237\238 \231\224 1 \248\242\243\234\243. \207\240\232\227\235\224\241\232 \228\240\243\231\229\233 \237\224 \226\229\247\229\240\232\237\234\243!" )
	Text( 5, "\207\238\228\242\226\229\240\228\232\242\252 \239\238\234\243\239\234\243", ChangeItem, 1)
	
	Talk( 6, "\204\224\233\235\224\228\224: \206 \247\229\236 \242\251 \245\238\247\229\248\252 \243\231\237\224\242\252?" )
	Text( 6, "\206 \239\238\241\229\249\229\237\232\232", JumpPage, 7)
	Text( 6, "\206 \214\229\240\234\238\226\237\238\236 \224\243\234\246\232\238\237\229", JumpPage, 8)
	Text( 6, "\206\225 \232\241\239\238\235\252\231\238\226\224\237\232\232 \246\229\240\226\234\232", JumpPage, 9)
	Text( 6, "\206 \208\224\231\240\229\248\229\237\232\232 \214\229\240\234\226\232", JumpPage, 10)

	Talk( 7, "\204\224\233\235\224\228\224: \200\227\240\238\234\232 \234\238\242\238\240\251\229 \234\243\239\232\235\232 \225\232\235\229\242\251 \226 \246\229\240\234\238\226\252 \236\238\227\243\242 \239\238\241\229\242\232\242\252 \229\229 \241 17:00 \228\238 17:10 \234\224\230\228\251\233 \239\238\237\229\228\229\235\252\237\232\234.")
	Text( 7, "\207\238\228\242\226\229\240\228\232\242\252", CloseTalk)
	Text( 7, "\205\224\231\224\228", JumpPage, 6)

	Talk( 8, "\204\224\233\235\224\228\224: \214\229\240\234\238\226\237\251\233 \192\243\234\246\232\238\237 \239\240\238\245\238\228\232\242 \241 18:00 \228\238 20:30 \234\224\230\228\251\233 \239\238\237\229\228\229\235\252\237\232\234. \204\232\237\232\236\224\235\252\237\251\233 \248\224\227 \224\243\234\246\232\238\237\224: \209\242\224\226\238\247\237\224\255 \234\224\240\242\238\247\234\224. \214\229\240\229\236\238\237\232\232 \239\240\238\226\238\228\255\242\241\255 \239\238 2 \234\224\230\228\251\233 \226\251\245\238\228\237\238\233.")
	Text( 8, "\207\238\228\242\226\229\240\228\232\242\252", CloseTalk)
	Text( 8, "\205\224\231\224\228", JumpPage, 6)

	Talk( 9, "\204\224\233\235\224\228\224: \214\229\240\234\238\226\237\251\233 \192\243\234\246\232\238\237 \239\238\228\229\235\229\237 \237\224 4 \239\229\240\232\238\228\224. \207\238\225\229\228\232\242\229\235\252 \239\238\235\243\247\224\229\242 \208\224\231\240\229\248\229\237\232\229 \214\229\240\234\226\232 \232 10 \239\240\232\227\235\224\241\232\242\229\235\252\237\251\245 \225\232\235\229\242\238\226.")
	Text( 9, "\207\238\228\242\226\229\240\228\232\242\252", CloseTalk)
	Text( 9, "\205\224\231\224\228", JumpPage, 6)

	Talk( 10, "\204\224\233\235\224\228\224: \208\224\231\240\229\248\229\237\232\229 \214\229\240\234\226\232 \239\238\231\226\238\235\232\242 \234\243\239\232\242\252 \239\240\232\227\235\224\241\232\242\229\235\252\237\251\229 \225\232\235\229\242\251, \228\226\238\233\237\238\229 \237\224\230\224\242\232\229 \239\238 \208\224\231\240\229\248\229\237\232\254 \239\229\240\229\236\229\241\242\232\242 \242\229\225\255 \226 \246\229\240\234\238\226\252. \209\239\243\241\242\255 2 \247\224\241\224 \226\241\229 \243\247\224\241\242\237\232\234\232 \225\243\228\243\242 \226\238\231\226\240\224\249\229\237\251 \226 \216\224\233\242\224\237.")
	Text( 10, "\207\238\228\242\226\229\240\228\232\242\252", CloseTalk)
	Text( 10, "\205\224\231\224\228", JumpPage, 6)
end


function wedding_npc03()

	InitTrigger()
	TriggerCondition(1, CheckWeddingTime)
	TriggerAction(1, JumpPage, 1)
	TriggerFailure(1, JumpPage, 3)
	Start(GetMultiTrigger(), 1)
	
	Talk (1, "\209\226\232\228\229\242\229\235\252: \207\240\232\226\229\242. \199\224 200 \231\238\235\238\242\251\245 \255 \236\238\227\243 \243\241\242\240\238\232\242\252 \228\235\255 \230\229\237\232\245\224 \241 \237\229\226\229\241\242\238\233 \227\240\224\237\228\232\238\231\237\251\233 \241\224\235\254\242. \213\238\247\229\248\252?")

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200) 
	TriggerAction(1, TakeMoney, 200) 
	TriggerAction(1, LaunchFirework) 
	TriggerFailure(1, JumpPage, 2)

	Text(1, "\202\238\237\229\247\237\238!", MultiTrigger, GetMultiTrigger(), 1)
	Text(1, "\205\229\242, \241\239\224\241\232\225\238.", CloseTalk)

	Talk(2, "\209\226\232\228\229\242\229\235\252: \200\231\226\232\237\232\242\229, \237\238 \243 \194\224\241 \237\229\242 \228\229\237\229\227.")
	Text(2, "\196\238 \241\226\232\228\224\237\232\255.", CloseTalk)
	
	Talk(3, "\209\226\232\228\229\242\229\235\252: \207\240\232\226\229\242! \202\224\234 \242\229\225\229 \226 \246\229\240\234\226\232?")
end


function wedding_npc04()

	InitTrigger()
	TriggerCondition(1, CheckWeddingTime)
	TriggerAction(1, JumpPage, 1)
	TriggerFailure(1, JumpPage, 3)
	Start(GetMultiTrigger(), 1)
	
	Talk (1, "\209\226\232\228\229\242\229\235\252\237\232\246\224: \207\240\232\226\229\242. \199\224 200 \231\238\235\238\242\251\245 \255 \236\238\227\243 \243\241\242\240\238\232\242\252 \228\235\255 \230\229\237\232\245\224 \241 \237\229\226\229\241\242\238\233 \227\240\224\237\228\232\238\231\237\251\233 \241\224\235\254\242. \213\238\247\229\248\252?")

	InitTrigger()
	TriggerCondition(1, HasMoney, 200) 
	TriggerAction(1, TakeMoney, 200) 
	TriggerAction(1, LaunchFirework) 
	TriggerFailure(1, JumpPage, 2)

	Text (1, "\202\238\237\229\247\237\238!", MultiTrigger, GetMultiTrigger(), 1)
	Text (1, "\205\229\242, \241\239\224\241\232\225\238.", CloseTalk)

	Talk (2, "\209\226\232\228\229\242\229\235\252\246\224: \200\231\226\232\237\232\242\229, \237\238 \243 \194\224\241 \237\229\242 \228\229\237\229\227.")
	Text (2, "\196\238 \241\226\232\228\224\237\232\255.", CloseTalk)
	
	Talk(3, "\209\226\232\228\229\242\229\235\252\237\232\246\224: \207\240\232\226\229\242! \202\224\234 \242\229\225\229 \226 \246\229\240\234\226\232?")
end


function wedding_npc05()

	InitTrigger()
	TriggerCondition(1, CheckWeddingTime)
	TriggerAction(1, JumpPage, 1)
	TriggerFailure(1, JumpPage, 5)
	Start(GetMultiTrigger(), 1)

	Talk( 1, "\207\229\240\226\238\241\226\255\249\229\237\237\232\234: \196\238\225\240\238 \239\238\230\224\235\238\226\242\252 \226 \214\229\240\234\238\226\252. \196\224\226\224\233\242\229 \237\224\247\237\229\236 \246\229\240\229\236\238\237\232\254.")
	Text( 1, "\205\224\247\224\242\252 \246\229\240\229\236\238\237\232\254", JumpPage, 2)

	
	InitTrigger()
	TriggerCondition(1, Wedding)
	TriggerAction(1, JumpPage, 3)
	TriggerFailure(1, JumpPage, 4)
	
	Talk(2, "\207\229\240\226\238\241\226\255\249\229\237\237\232\234: \193\229\240\229\248\252 \235\232 \242\251 \226  \231\224\234\238\237\237\251\229 \230\229\237\251(\236\243\230\252\255) \253\242\238\227\238 \247\229\235\238\226\229\234\224? \209\238\227\235\224\241\229\237(\224) \235\232 \242\251 \232 \226 \227\238\240\229 \232 \226 \240\224\228\238\241\242\232 \225\251\242\252 \241 \237\232\236?" )
	Text(2, "\196\224. \223 \241\238\227\235\224\241\229\237(\224).", MultiTrigger, GetMultiTrigger(), 1)
	Text(2, "\204\237\229 \237\224\228\238 \239\238\228\243\236\224\242\252...", CloseTalk)
	
	Talk(3, "\207\229\240\226\238\241\226\255\249\229\237\237\232\234: \207\238\231\228\240\224\226\235\255\229\236 \194\224\241! \210\229\239\229\240\252 \194\251 \236\243\230 \232 \230\229\237\224!")
	Talk(4, "\207\229\240\226\238\241\226\255\249\229\237\237\232\234: \223 \237\229 \236\238\227\243 \226\229\237\247\224\242\252 \194\224\241! \205\229 \226\241\229 \242\240\229\225\238\226\224\237\232\255 \241\238\225\235\254\228\229\237\251!")
	
	Talk(5, "\207\229\240\226\238\241\226\255\249\229\237\237\232\234: \199\228\240\224\226\241\242\226\243\233, \243\228\224\247\237\238\233 \253\234\241\234\243\240\241\232\232 \239\238 \246\229\240\234\226\232...")
	
end




function e_talk003	()              

	Talk(1,"ЙсГШµДХјІ·К¦:ОТµДХјІ·їЙТФНЖЛгДгХвТ»МмµДФЛКЖ!Из№ыДг¶ФГв·СХјІ·µДЅб№ыІ»ВъТв,їЙТФУГБЅНтТш±ТФЩХјІ·Т»ґО.ТЄКЗДг»№КЗІ»ВъТв,ФЩґОёД±дГьФЛµДјЫЗ®КЗК®НтТш±Т!ТЄКЗ»№І»ВъТвµД»°Ј¬ЙМіЗАпµДВ·ТЧК®БщКЗЦµµГОТФЩ°пДгјёґОµДЎЈТ»МмЧо¶аЦ»ДЬХјІ·БщґО,ДгїЙТЄїјВЗєГБЛЎЈ")
	
	InitTrigger()
	TriggerCondition(1, CanZhanBu,1)
	TriggerAction( 1, ZhanBu,1)
	TriggerFailure(1,JumpPage,7)
	Text(1,"ОТПлГв·СХјІ·ЅсМмµДФЛКЖЎЈ",MultiTrigger, GetMultiTrigger(), 1)
	Text(1,"ОТПЦФЪУ¦ёГУГКІГґХјІ·Јї",JumpPage,2)
	Text(1,"ОТТЄёД±дГьФЛЎЈ",JumpPage,8)
	Text(1,"ДгєГПу±дЗїБЛЈ¬ёжЛЯОТПЦФЪДгХјІ·µДДЬБ¦",JumpPage,3)
	Text(1,"ОТТЄІйСЇОТµДХјІ·ЧґМ¬",JumpPage,5)
	Text(1,"ОТГьУЙОТІ»УЙМм!!!",CloseTalk)

	Talk(2,"ЙсГШµДХјІ·К¦Јє")
	InitTrigger()
	TriggerCondition(1, CanZhanBubyRole)
	TriggerAction( 1, ZhanBubyRole)
	TriggerFailure(1,JumpPage,6)
	Text(2,"И·¶ЁЎЈ",MultiTrigger, GetMultiTrigger(), 1)
	Text(2,"ОТФЩПлПлЎЈ",CloseTalk)
	
	Talk(3,"ЙсГШµДХјІ·К¦:єЗєЗЈ¬ДгГЗ¶аК№УГХјІ·ОТѕН»б±дЗїЎЈПЦФЪОТДЬЅшРРБщґОХјІ·Ј¬¶шЗТµЪИэґОХјІ·µДґъјЫУЙТ»ЖїВ·ТЧК®БщЅµµЅК®НтТш±ТЎЈІ»№эЕ®ЙсЅµµНБЛЙМіЗФц·щР§№ыµДГьФЛКэЎЈТІІ»УГµЈРДАІЈ¬ёшОТВ·ТЧК®БщµД»°Ј¬ОТКЗїЙТФУГёЯј¶ХјІ·АґМбёЯЙМіЗФц·щР§№ыµДјёВКЎЈ")
	Text(3,"ёЯј¶ХјІ·Јї»№І»КЗЖХНЁХјІ·ЈЎ",JumpPage,4)
	Text(3,"ЦЄµАБЛЎЈ",CloseTalk)

	Talk(4,"ЙсГШµДХјІ·К¦:І»І»І»І»,Гч°ЧёжЛЯДг°ЙЈ¬Из№ы±ѕАґДг»бµГµЅЧзЦдµД»°Ј¬ДЗГґОТїЙТФЕ¤ЗъІї·ЦГьФЛЈ¬°СЛь±діЙ¶ФДгµДДЬБ¦іЙі¤УР°пЦъµДГьФЛЎЈµ±И»З°МбКЗОТЕ¤ЗъіЙ№¦БЛЎЈ")
	Text(4,"ОТАґКФКФЎЈ",JumpPage,1)
	Text(4,"ЦЄµАБЛЎЈ",CloseTalk)

	Talk(5,"ЙсГШµДХјІ·К¦:")

	Talk(6,"ЙсГШµДХјІ·К¦Јє")

	Talk(7,"ЙсГШµДХјІ·К¦Јє")

	Talk(8,"ёД±дГьФЛУРИэЦЦ·ЅКЅЈєБЅНтТш±ТЈ¬К®НтТш±ТЈ¬В·ТЧК®БщЎЈІ»№эТЄЧўТвЈєµ±ДгУГК®НтТш±ТёД±д№эТ»ґОГьФЛЈ¬ДЗГґДгЅсМмѕНІ»ДЬУГБЅНтТш±ТАґёД±дГьФЛЎЈН¬СщµДµААнЈ¬µ±ДгУГБЛВ·ТЧК®БщК±Ј¬ДгУГТш±ТКЗІ»ДЬФЩёД±дГьФЛµДЎЈЧоєуЈ¬В·ТЧК®БщТ»МмЦ»ДЬУГ3ґОЎЈ")
	Text(8,"І»ґуГч°ЧЈ¬ОТПЦФЪУГКІГґ·ЅКЅєГДШ",JumpPage,2)
	InitTrigger()
	TriggerCondition(1, CanZhanBu,2)
	TriggerAction( 1, ZhanBu,2)
	TriggerFailure(1,JumpPage,7)
	Text(8,"БЅНтТш±Т",MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition(1, CanZhanBu,3)
	TriggerAction( 1, ZhanBu,3)
	TriggerFailure(1,JumpPage,7)
	Text(8,"К®НтТш±Т",MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition(1, CanZhanBu,4)
	TriggerAction( 1, ZhanBu,4)
	TriggerFailure(1,JumpPage,7)
	Text(8,"В·ТЧК®Бщ",MultiTrigger, GetMultiTrigger(), 1)

end 

function r_IIIapki ()

	Talk( 1, " Здраствуй! Если ты пришёл ко мне то тебе нужны вещи за Души Барбароссы ...  " )
	Text( 1, " Да я за этим! ", JumpPage, 2)

	Talk( 2, " Выбирай какая шапка тебе нужна " )
	Text( 2, " Доблесть Стрелка ", JumpPage, 3)
	Text( 2, " Доблесть Целителя,Моряка и Колдуньи ", JumpPage, 4)
	Text( 2, " Доблесть Воителя ", JumpPage, 5)
	Text( 2, " Доблесть Чемпиона ", JumpPage, 6)


	Talk( 3, " Принеси мне 170 карт Барбароссы и я тебе отдам шапку! " )
	InitTrigger()
	TriggerCondition( 1, HasItem,7818,170)
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7818,170 )
	TriggerAction( 1, GiveItem, 7811,1,4 )
	TriggerFailure( 1, JumpPage, 20)
	Text( 3," Обменять! ",MultiTrigger,GetMultiTrigger(),1 )
	
	Talk( 4, " Принеси мне 170 карт Барбароссы и я тебе отдам шапку! " )
	InitTrigger()
	TriggerCondition( 1, HasItem,7818,170)
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7818,170 )
	TriggerAction( 1, GiveItem, 7812,1,4 )
	TriggerFailure( 1, JumpPage, 20)
	Text( 4," Обменять! ",MultiTrigger,GetMultiTrigger(),1 )
	
	Talk( 5, " Принеси мне 170 карт Барбароссы и я тебе отдам шапку! " )
	InitTrigger()
	TriggerCondition( 1, HasItem,7818,170)
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7818,170 )
	TriggerAction( 1, GiveItem, 7813,1,4 )
	TriggerFailure( 1, JumpPage, 20)
	Text( 5," Обменять! ",MultiTrigger,GetMultiTrigger(),1 )
	
	Talk( 6, " Принеси мне 170 карт Барбароссы и я тебе отдам шапку! " )
	InitTrigger()
	TriggerCondition( 1, HasItem,7818,170)
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7818,170 )
	TriggerAction( 1, GiveItem, 7815,1,4 )
	TriggerFailure( 1, JumpPage, 20)
	Text( 6," Обменять! ",MultiTrigger,GetMultiTrigger(),1 )
	
	Talk( 20, " У вас не хватает предметов! " )

end
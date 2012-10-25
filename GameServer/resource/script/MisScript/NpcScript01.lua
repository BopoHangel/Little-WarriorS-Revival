--------------------------------------------------------------------------
--									--
--									--
--NPCScript01.lua Created by sky74                                           	--
--									--
--									--
--------------------------------------------------------------------------
print(  "‡ Јаг§Є  NPCScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- °ЧТшЦ®іЗ:·юЧ°µкДбИшЖЕЖЕ
------------------------------------------------------------

function for_test()
	Talk( 1,  "Тестовый диалог (заглушка) " )
	Text( 1,  "Закрыть ",CloseTalk )
end

function BT_NpcSale001()


	Talk( 1,  "Бабушка Нилла: Добрый вечер! У меня для Вас в продаже лучшие вещи! Надеюсь Вам понравится! " )
	Text( 1,  "Торг ", BuyPage )

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

	Talk( 14,  "Бинго: Дайте мне расписку для получения самоцвета высокого класса. " )
	InitTrigger() 
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 14,  "Получить 3 Самоцвета ветра ",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() 
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "Получить 3 Самоцвета удара ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "Получить 3 Самоцвета колосса ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "Получить 3 Самоцвета ярости ",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "Получить 1 Самоцвет души ",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 15,  "Бинго: Обмен невозможен! У вас нет расписки или заблокирован инвентарь  " )
	Talk( 16,  "С Новым годом! " )

	Talk( 1,  "Бинго: Привет! Я отдающая долги Бинго. У вас есть что то для меня? ")
	Text( 1,  "Расписка на Рождественский самоцвет ", JumpPage, 14 )
	Text( 1,  "Расписка на уникальный самоцвет ", JumpPage, 12 )
	Text( 1,  "Расписка на Очищающий самоцвет 1 уровня ", JumpPage, 2 )
	Text( 1,  "Обменять 30 счастливых мешочков на 1.5кк ", JumpPage, 29 )
	Text( 1,  "Обменять 10 мешочков удачи на 3кк ", JumpPage, 30 )
	Text( 1,  "Обменять 1 Эльфийскую печать на 300к ", JumpPage, 31 )
	Text( 1,  "Дальше --> ", JumpPage, 21 )
	Talk( 21,  "Бинго: Привет! Я отдающая долги Бинго. У вас есть что то для меня? ")
	Text( 21,  "Пиратская расписка ", JumpPage, 17 )
    Text( 21,  "Объединить Камень желаний ", JumpPage, 6 )
	Text( 21,  "Обменять Лунный пирог ", JumpPage, 20 )		-------ФВ±э¶Т»»
	Text( 21,  "Получить Мартовскую фею ", JumpPage, 10 )
	Text( 21,  "<-- Назад ", JumpPage, 1 )
      
	
	Talk( 2,  "Бинго: Дай мне расписку на Очищающий самоцвет 1 уровня для получения очищающего самоцвета, а также еще 1 случайного самоцвета 1 уровня. ")
	Text( 2,  "Обменять ", TransferDiamond, 1)

	Talk( 3,  "Бинго: Дай мне расписку на Очищающий самоцвет 2 уровня для получения очищающего самоцвета, а также еще 1 случайного самоцвета 2 уровня. ")
	Text( 3,  "Обменять ", TransferDiamond, 2)

	Talk( 4,  "Бинго: Дай мне расписку на очищающий самоцвет для получения 1 очищающего самоцвета 1 уровня ")
	Text( 4,  "Обменять ", TransferDiamond, 3)

	Talk( 5,  "Бинго: Дай мне 1 расписку на самоцвет для получения 1 случайного самоцвета 1 уровня ")
	Text( 5,  "Обменять ", TransferDiamond, 4)



	Talk( 17,  "Бинго: У вас есть Пиратская расписка? ")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2238, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2238, 1 )
 	TriggerAction( 1, GiveItem, 2306, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "У меня есть пиратская расписка 8 ",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()--¶Т»»Д¦Б¦·ыКЇ
	TriggerCondition( 1, HasItem, 2240, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2240, 1 )
 	TriggerAction( 1, GiveItem, 1028, 1 ,4)
	TriggerAction( 1,JumpPage, 19 )------------------
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "У меня есть пиратская расписка 6 ",MultiTrigger, GetMultiTrigger(), 1)

	Text( 17,  "У меня есть пиратская расписка 6 ",JumpPage, 19)
	Talk(19, "Бинго: Вы хотите обменять? ")
	Text( 19,  "Обменять ",GetChaName_5, 1)

	InitTrigger()--¶Т»»ѕ«БйУІ±Т99ёц
	TriggerCondition( 1, HasItem, 2237, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2237, 1 )
 	TriggerAction( 1, GiveItem, 855, 99 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "У меня есть пиратская расписка 9 ",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()-- ¶Т»»ЦэФмНјЦЅ "Encrypted Blueprint "Ј±ХЕ
	TriggerCondition( 1, HasItem, 2239, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2239, 1 )
 	TriggerAction( 1, GiveItem, 1001, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "У меня есть пиратская расписка 7 ",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()--¶Т»»јУЛЩіЙі¤№ы1ёц
	TriggerCondition( 1, HasItem, 2241, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2241, 1 )
 	TriggerAction( 1, GiveItem, 0578, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "У меня есть пиратская расписка 5 ",MultiTrigger, GetMultiTrigger(), 1)
	Text( 17,  "Общая сумма пиратских расписок ", GetChaName_4, 1)



	Talk( 18,  "Бинго: Кажется вы не имеете подходящую пиратскую расписку. Убедитесь также что ваш инвентарь не заблокирован и имеется хотя бы одно свободное место. ")

 	InitTrigger() --єПіЙРнФёКЇ
	TriggerCondition( 1, HasItem, 3905, 5 )
	TriggerCondition( 1, HasItem, 3907, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3905, 5 )
	TriggerAction( 1, TakeItem, 3907, 1 )
 	TriggerAction( 1, GiveItem, 3906, 1 ,4)
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6,  "Бинго: Принесите мне 5 Темных камней желанийи 1 Катализатор ковки для обмена на 1 Искрящийся камень желаний ")
	Text( 6,  "Комбинировать ",MultiTrigger, GetMultiTrigger(), 1)        
 	
	Talk( 8,  "Бинго: Вы не имеете нужное количество Темных камней желаний или Катализаторов ковки. Убедитесь также что у вас имеется хотя бы 1 свободное место в инвентаре. ")

	InitTrigger() --¶Т»»ИэФВѕ«Бй
	TriggerCondition( 1, HasItem, 3342, 2 )
	TriggerCondition( 1, HasItem, 3337, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3342, 2 )
	TriggerAction( 1, TakeItem, 3337, 1 )
	TriggerAction( 1, GiveItem, 3335, 1 ,4)
	TriggerFailure( 1, JumpPage, 11 ) 
	Talk( 10,  "Бинго: Принесите мне 2 Светильника и 1 Душу феи для обмена на Мартовскую фею. Душу феи можно найти у Уиткомбы в Бухте Хафта. ")
	Text( 10,  "Обменять ",MultiTrigger, GetMultiTrigger(), 1) 
   
	Talk( 11,  "У вас нет всего необходимого для обмена. Возможно также у вас нет свободных мест в инвентаре или он заблокирован. ")
	
	Talk( 12,  "Бинго: Дайте мне 1 расписку на уникальный самоцвет для обмена на уникальный самоцвет. ")

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0863, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "Получить самоцвет ярости ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid,1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "Получить самоцвет души ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0862, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "Получить самоцвет колосса ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0861, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "Получить самоцвет удара ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0860, 1, 101 )
	TriggerFailure( 1, JumpPage, 13 ) 
	Text( 12,  "Получить самоцвет ветра ",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 13,  "Бинго: У вас нет расписки на уникальный самоцвет! Возможно также ваш инвентарь переполнен или заблокирован. ")
	
	Talk( 20,  "Бинго: Я обожаю Лунные пироги? У вас есть? Я дам за них превосходный товар " )
	InitTrigger() --99ёцЈєГФЦ®Лш10ёц
	TriggerCondition( 1, HasItem,3095, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 99 )
	TriggerAction( 1, GiveItem, 2440, 10, 4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20,  "Обменять 99 пирогов на Супер усилитель стремлений ",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --100ёцЈєІЖё»1ёц
	TriggerCondition( 1, HasItem,3097, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 100 )
	TriggerAction( 1, GiveItem, 3096, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20,  "Обменять 99 пирогов на Большой усилитель удачи ",MultiTrigger, GetMultiTrigger(), 1) 
	
	Talk( 29,  "Бинго: Ты уверен что хочешь обменять мешочки на 1.5кк? ") 
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3901, 30 )
 	TriggerAction( 1, AddMoney,1500000,1500000)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 29,  "Обменять ",MultiTrigger, GetMultiTrigger(), 1)	
	
	Talk( 30,  "Бинго: Ты уверен что хочешь обменять мешочки на 3кк? ") 
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3902, 10 )
 	TriggerAction( 1, AddMoney,3000000,3000000)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 30,  "Обменять ",MultiTrigger, GetMultiTrigger(), 1)	
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2588, 1 )
 	TriggerAction( 1, AddMoney,300000,300000)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 31,  "Обменять ",MultiTrigger, GetMultiTrigger(), 1)	

	Talk( 21,  "Бинго: У вас нет необходимого количества предметов! Возможно также ваш инвентарь переполнен или заблокирован. ") 

end


function r_talk202999()

	Talk( 1,  "Бинго: Привет! Я отдающая долги Бинго. У вас есть что то для меня? ")

    Text( 1,  "Расписка на самоцвет Азраиля(+8 к силе) ", JumpPage, 24 )
	Text( 1,  "Расписка на самоцвет Азраиля(+8 к телосложению) ", JumpPage, 25 )
	Text( 1,  "Расписка на самоцвет Азраиля(+8 к духу) ", JumpPage, 26 )
	Text( 1,  "Расписка на самоцвет Азраиля(+8 к точности) ", JumpPage, 27 )
	Text( 1,  "Расписка на самоцвет Азраиля(+8 к ловкости) ", JumpPage, 28 )
	Text( 1,  "Обменять 30 счастливых мешочков на 1.5кк ", JumpPage, 29 )
	Text( 1,  "Обменять 10 мешочков удачи на 3кк ", JumpPage, 30 )

	
	Talk( 24,  "Бинго: У вас есть расписка на самоцвет Азраиля(+8 к силе)? У нас такие расписки не часто появляются ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7694, 1 )
 	TriggerAction( 1, GiveItem, 5845, 1 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 24,  "Обменять расписку на самоцвет ",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 25,  "Бинго: У вас есть расписка на самоцвет Азраиля(+8 к телосложению)? У нас такие расписки не часто появляются ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7694, 1 )
 	TriggerAction( 1, GiveItem, 5846, 1 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 25,  "Обменять расписку на самоцвет ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 26,  "Бинго: У вас есть расписка на самоцвет Азраиля(+8 к духу)? У нас такие расписки не часто появляются ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7694, 1 )
 	TriggerAction( 1, GiveItem, 5847, 1 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 26,  "Обменять расписку на самоцвет ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 27,  "Бинго: У вас есть расписка на самоцвет Азраиля(+8 к точности)? У нас такие расписки не часто появляются ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7694, 1 )
 	TriggerAction( 1, GiveItem, 5848, 1 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 27,  "Обменять расписку на самоцвет ",MultiTrigger, GetMultiTrigger(), 1)	
	
	Talk( 28,  "Бинго: У вас есть расписка на самоцвет Азраиля(+8 к ловкости)? У нас такие расписки не часто появляются ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7694, 1 )
 	TriggerAction( 1, GiveItem, 5849, 1 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 28,  "Обменять расписку на самоцвет ",MultiTrigger, GetMultiTrigger(), 1)	
	
	Talk( 28,  "Бинго: У вас есть расписка на самоцвет Азраиля(+8 к ловкости)? У нас такие расписки не часто появляются ")
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3901, 30 )
 	TriggerAction( 1, GiveItem, 7607, 3 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 29,  "Обменять ",MultiTrigger, GetMultiTrigger(), 1)	
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3902, 10 )
 	TriggerAction( 1, GiveItem, 7607, 6 ,4)
	TriggerFailure( 1, JumpPage, 21 )
	Text( 30,  "Обменять ",MultiTrigger, GetMultiTrigger(), 1)	


	Talk( 21,  "Бинго: У вас нет необходимого количества предметов! Возможно также ваш инвентарь переполнен или заблокирован. ") 

end
-------------------------------------------------------------------
--								--
--		°ЧТшіЗЈЁ±ИМШЈ©		--
--		219533,270323				--
-------------------------------------------------------------------

function r_talk86()

	Talk( 1,  "Питер: Привет, я Питер, стражник этого города. Я слежу за порядком и охраняю улицы от головорезов. У тебя есть ко мне какое то дело? ")

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

	--Talk(2,  "Peter: Hey wait! Are you interested in swordsmanship? HmmЎ­you seems suitable to learn some sword fighting. It'll be a pity if you did not become a Swordsman! ")
	--Text(2,  "Ok, I will advance to become a Swordsman ", MultiTrigger, GetMultiTrigger(), 2)
	--Text(2,  "No, it is good enough for now. ", CloseTalk)

	--Talk(3,  "Peter: I have taught you all I know Узнать о мечникахship. The rest will be up to your own effort. ")

	--Talk(4,  "Peter: Want to become a Swordsman? Only male Newbies at Level 10 with 1 Courage Certificate are eligible. Registration fee is 1000G. ")

	--InitTrigger()
	---------------ЅЈКї
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
--		°ЧТшіЗЈЁМъЅіЎЄЎЄРЎЅрЅрЈ©		--
--		219533,270323				--
-------------------------------------------------------------------
function r_trade01 ()
	--???o¶«??¶?»°
	Talk( 1, "Голди: Привет! У меня всегда есть первосортное оружие для тебя! " )
	Text( 1, "Торг ", BuyPage)
	Text( 1, "Ремонт ", OpenRepair)
	--Text( 1, "Комбинировать ", OpenUnite)
--	Text( 1, "Вставить самоцвет ", OpenForge)
--	Text( 1, "Сделать слот ", OpenMilling)
	Text( 1,"Изготовить маску ",JumpPage,4)
--	Text( 1, "Вставить самоцвет ", OpenForge)
--	Text( 1, "Вставить в аппарель ", OpenFusion)
--	Text( 1, "Улучшение аппарели ", OpenUpgrade)
--	Text( 1, "Вытащить самоцвет ", OpenGetStone )
	--Text( 2, "Починка инструментов ", OpenItemFix )
	--Text( 2,"Починка легированной кирки ",JumpPage,9)
	Text( 2, "<- Назад ",JumpPage,1)

	
	
	Talk(9,"Голди: Сломалась легированная кирка? Нет проблем! Я готов починить ее для тебя! ")
	Text(9,"Я хочу отремонтировать свою кирку ",CheckMetal)
	Text(9,"Нет, спасибо. ",CloseTalk)

	
	Text( 3, "Изготовить маску ", JumpPage,4)




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


	Talk( 4, "Голди: Какую маску желаешь изготовить? ")
	Text( 4, "Маску снегурки ",JumpPage,5)
	Text( 4, "Тыквенную маску ", JumpPage,6)
	Text( 4, "Маску черепа ", JumpPage,7)


	InitTrigger() --¶?»»????????
	TriggerCondition( 1, HasItem, 4358, 30 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 4358, 30 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1120, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(5, "Голди: Для изготовления Маски снегурки мне необходимо 30 Синих снежков ")
	Text( 5, "Обменять ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --¶?»»????
	TriggerCondition( 1, HasItem, 4809, 30 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 4809, 30 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1121, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(6, "Голди: Для изготовления Тыквенной маски мне необходимо 30 Тыквенных голов ")
	Text( 6, "Обменять ",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --¶?»»????
	TriggerCondition( 1, HasItem, 2419, 20 )
	--TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 2419, 20 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1122, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(7, "Голди: Для изготовления Маски черепа мне необходимо 30 Волшебных костей ")
	Text( 7, "Обменять ",MultiTrigger, GetMultiTrigger(), 1) 
	
	Talk( 8, "Голди: У тебя нет всех необходимых компонентов или твой инвентарь заблокирован ")
	
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
-----------------------------------------------------------------РЎЅрЅрМъЅіЅбКш----------------------------------------------------------------------------------------------




------------------------------------------------------------------
--								--
--								--
------------------------°ЧТшіЗГШКйЛ№їЛМШ---------------------------
--			221925,274925				--
--								--
------------------------------------------------------------------
function r_talk01 ()
	
	Talk( 1,  "Салвьер: Здравствуйте, Вы похожи на новичка в этих краях. Могу ли я чем то помочь? " )
	Text( 1,  "Кто Вы? ", JumpPage, 2)
	Text( 1,  "Что это за место? ", JumpPage, 3 )
	
	Text( 1,  "Я думаю все понял. Спасибо. ", JumpPage, 4 )

	Talk( 2,  "Салвьер: Я отвечаю на вопросы жителей этого города. Если у Вас какие то трудности, то ищите меня. " )
	Text( 2,  "Назад. ", JumpPage, 1)

	Talk( 3,  "Салвьер: Это самый преуспевающий город во всем Аскароне. У нас нет никаких проблем с ресурсами и все благодаря нашему градоначальнику. " )
	Text( 3,  "Назад. ", JumpPage, 1)

	Talk( 4,  "Салвьер: Хорошо, если Вам будет нужна помощь - обращайтесь. " )
	Text( 4,  "Я хочу задать еще вопросы. ", JumpPage, 5)
	
	Talk( 5,  "Салвьер: Не стесняйтесь, задавайте. " )
	Text( 5,  "Градоначальник и основание Аргента. ", JumpPage, 6)
	
	Talk( 6,  "Салвьер: Много столетий назад велась война между демонами и империей Аскарон. Это длилось в течение многих лет и Империя потеряла множество своих верных граждан. Герцог и его племянник отступили и решили основать новый город на тогда еще пустующей равнине. Этот город пережил после этого еще множество войн, но ни разу не был взят врагами. " )
	Text( 6,  "Отлично! Я рад. ", JumpPage, 7)

	InitTrigger()

	TriggerCondition( 1, NoRecord, 500 )

	TriggerAction( 1, CloseTalk )
	TriggerAction( 1, AddExp, 100, 200 )
	TriggerAction( 1, SetRecord, 500 )
	TriggerAction( 1, AddMoney, 100 )
	
	Talk( 7,  "Салвьер: Как один из самых значимых людей города я принимаю всех новичков с подобающим гостеприимством. Всем новобранцам подарок - 100 золотых и бесплатное лечение у медсестры до 5лвл. " )
	Text( 7,  "Спасибо! ",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8,  "Салвьер: Серебрянный город нуждается в таких новобранцах как Вы. " )
	Text( 8,  "Спасибо. Я пока осматриваюсь. ",  CloseTalk )


	InitTrigger()

	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, JumpPage, 8 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

----------------ЧўІбИООс

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
---------------<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<NPC Ў¶Л№їЛМШЎ·ЅбКшБЛ!
----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[АПДМДМ]				--
--							--
--		227725,276925				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk02 ()

	
	Talk( 1,  "Бабуля: Здравствуйте молодой человек. " )
	Text( 1,  "Зернышко Любви. ", JumpPage, 2)
	Text( 1,  "Обменять 10 Зернышек Любви. ", JumpPage, 3)
	Text( 1,  "Обменять 100 Зернышек Любви. ", JumpPage, 4)
	Text( 1,  "Обменять 1000 Зернышек Любви. ", JumpPage, 5)
	Text( 1,  "Сделать светильник. ", JumpPage, 7 )
	Text( 1,  "До свидания... ", CloseTalk)
	
	
	Talk( 2,  "Бабуля: Чтобы сделать Зернышко Любви необходимо 1 Чистую воду, 1 Лепесток многоцвета, 1 Идеальный сапфир и 1 Сердце наяды. " )
	Text( 2,  "Сделать Зернышко Любви. ", GetChaName_21, 1 )

	Talk( 3,  "Бабуля: Вы можете обменять 10 Зернышек Любви на 1 Медовый шоколад. ")
	Text(3, "Обменять ",  GetChaName_22, 1)

	Talk( 4,  "Бабуля: Вы можете обменять 100 Зернышек Любви на 3 Усилителя стремлений. ")
	Text(4, "Обменять ",  GetChaName_23, 1)

	Talk( 5,  "Бабуля: Вы можете обменять 1000 Зернышек Любви на 1 Пропуск в Абаддон 4. ")
	Text(5, "Обменять ",  GetChaName_24, 1)
	
	InitTrigger() --¶Ф»»µЖБэ
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
	Talk( 7,  "Бабуля: дайте мне 15 Красной бумаги, 15 Бамбуковых палочек, и 1 Странную свечу для обмена на Светильник. ")
	Text( 7,  "Обмен. ", MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 9,  "Бабуля у Вас нет необходимых ингридиентов. ")

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<АПДМДМЅбКш




----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[Т©ІЭЙМИЛЎЄЎЄµЫД·]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function r_talk03 ()

	Talk( 1,  "Дитто: Взгляните на мои травы, все собранны мной лично. " )
	Text( 1,  "Торг ", BuyPage)
	Text( 1,  "Продать  ", SalePage)
	Text( 1,  "Сделать восстанавливающие зелья. ", JumpPage, 5)


	Talk( 4,  "Ditto: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Shaitan by using the teleporter. " )
	Text( 4,  "Торг ", BuyPage)
	Text( 4,  "Sell items! ", SalePage )
	Text( 4,  "Decoct Recovery Potion ", JumpPage, 5)

---------------ЦЖЧчёКІЭТ©Л®
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
	Talk( 5,  "Дитто: Вы можете изготовить у меня любые лечебные зелья, в которых нуждаетесь. " )
	Text( 5,  "Приготовить Лакричное зелье ", MultiTrigger, GetMultiTrigger(), 1 )
	--------------ЕЪЦЖРСЙс»ЁІи
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
	Text( 5,  "Сварить Чай Бодрячок ", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------єПіЙГШЦЖЖжТмёа
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
	Text( 5,  "Сделать Чудо-мазь ", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------Хфїѕ±щСїЛЦ
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
	Text( 5,  "Сделать Брикет снежной травы ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6,  "Дитто: Деньги вперед! Вот, держите что просили. Желаю удачи! " )
	Talk( 7,  "Дитто: Для создания 1 Лакричного зелья необходимо 10 Целебной травы, 1 Флакон и 50 золота! " )
	Talk( 8,  "Дитто: Для создания 1 Чай Бодрячок необходимо 10 Лепестков многоцвета, 1 Флакон и 50 золота! " )
	Talk( 9,  "Дитто: Для создания 1 Чудо-мази необходимо 10 Чудо-фруктов, 1 Флакон и 50 золота! " )
	Talk( 10,  "Дитто: Для создания 1 Брикет снежной травы необходимо 10 Снежных побегов, 1 Флакон и 50 золота! " )

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
	
	



--ХвАпРґИООсµДјмІв


-----------і¬№э9ј¶ёжЛЯНжјТїЙТФЧЄЦ°
	--InitTrigger()
	--TriggerCondition( 1, LvCheck,  "> ", 8 )
	--TriggerCondition( 1, LvCheck,  "< ", 10 )
	---TriggerAction( 1, JumpPage, 4 )
	--TriggerFailure( 1, JumpPage, 1 )

	--Start( GetMultiTrigger(), 1 )

---------------------ЧўІбИООс
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Т©ІЭЙМИЛЎЄЎЄµХДёЅбКш



----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[»¤КїРЎЅгЎЄЎЄб°б°]			--
--							--
--		224575,277025				--
----------------------------------------------------------

---------------јУСЄ»ЦёґµДЕР¶Ё


----------------ЖХНЁ¶Ф»°їЄКј
function r_talk04 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1,  "Джина: Привет! Я медсестра Джина! Ищите меня если больны или травмированы. " )
--	Text( 1, "Записаться тут ", SetSpawnPos, "Xaoc" )
	Text( 1,  "Большое исцеление ", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1,  "Исцеление ", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1,  "Build Ship ", JumpPage, 10)

	Talk( 2,  "Джина: Прошу прощения, но Большое исцеление стоит 200 золотых. У вас недостаточно денег! " )

	Talk( 3,  "Джина: Прошу прощения, но Исцеление стоит 50 золотых. У вас недостаточно денег! " )

	Talk( 4,  "Я не жду никакого письма. Полагаю вы ошиблись. " )

	Talk( 5,  "Забудьте это. Вот возьмите награду за свою нелегкую работу. " )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6,  "Джина: Привет! Я медсестра Джина! Ищите меня если больны или травмированы. " )
	Text( 6,  "Большое исцеление ", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6,  "Исцеление ", MultiTrigger,GetMultiTrigger(),2)
	

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
	
	-----МъИЛБщПо
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

	Talk( 1,  "Джина: Привет! Я медсестра Джина! Ищите меня если больны или травмированы. " )
	Text( 1,  "Большое исцеление ", MultiTrigger,GetMultiTrigger(),2)
	Text( 1, "Записаться тут ", SetSpawnPos, "\207\238\228\231\229\236\229\235\252\229 \193\224\243\237\242\232" )

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1,  "Исцеление ", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1,  "Build Ship ", JumpPage, 10)

	Talk( 2,  "Джина: Прошу прощения, но Большое исцеление стоит 200 золотых. У вас недостаточно денег! " )

	Talk( 3,  "Джина: Прошу прощения, но Исцеление стоит 50 золотых. У вас недостаточно денег! " )

	Talk( 4,  "Я не жду никакого письма. Полагаю вы ошиблись. " )

	Talk( 5,  "Забудьте это. Вот возьмите награду за свою нелегкую работу. " )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6,  "Джина: Привет! Я медсестра Джина! Ищите меня если больны или травмированы. " )
	Text( 6,  "Большое исцеление ", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6,  "Исцеление ", MultiTrigger,GetMultiTrigger(),2)
	

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
	
	-----МъИЛБщПо


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

	Talk( 1,  "Джина: Привет! Я медсестра Джина! Ищите меня если больны или травмированы. " )
	Text( 1,  "Большое исцеление ", MultiTrigger,GetMultiTrigger(),2)
	Text( 1, "Записаться тут ", SetSpawnPos, "\207\238\228\231\229\236\229\235\252\229 \204\232\240 \196\229\236\238\237\238\226" )

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1,  "Исцеление ", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1,  "Build Ship ", JumpPage, 10)

	Talk( 2,  "Джина: Прошу прощения, но Большое исцеление стоит 200 золотых. У вас недостаточно денег! " )

	Talk( 3,  "Джина: Прошу прощения, но Исцеление стоит 50 золотых. У вас недостаточно денег! " )

	Talk( 4,  "Я не жду никакого письма. Полагаю вы ошиблись. " )

	Talk( 5,  "Забудьте это. Вот возьмите награду за свою нелегкую работу. " )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6,  "Джина: Привет! Я медсестра Джина! Ищите меня если больны или травмированы. " )
	Text( 6,  "Большое исцеление ", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6,  "Исцеление ", MultiTrigger,GetMultiTrigger(),2)
	

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
	
	-----МъИЛБщПо


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

	Talk( 1,  "Джина: Привет! Я медсестра Джина! Ищите меня если больны или травмированы. " )
	Text( 1,  "Большое исцеление ", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1, "Записаться тут ", SetSpawnPos, "\207\238\228\231\229\236\229\235\252\229 \199\224\242\229\240\255\237\237\238\227\238 \195\238\240\238\228\224" )

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1,  "Исцеление ", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1,  "Build Ship ", JumpPage, 10)

	Talk( 2,  "Джина: Прошу прощения, но Большое исцеление стоит 200 золотых. У вас недостаточно денег! " )

	Talk( 3,  "Джина: Прошу прощения, но Исцеление стоит 50 золотых. У вас недостаточно денег! " )

	Talk( 4,  "Я не жду никакого письма. Полагаю вы ошиблись. " )

	Talk( 5,  "Забудьте это. Вот возьмите награду за свою нелегкую работу. " )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6,  "Джина: Привет! Я медсестра Джина! Ищите меня если больны или травмированы. " )
	Text( 6,  "Большое исцеление ", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6,  "Исцеление ", MultiTrigger,GetMultiTrigger(),2)
	

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
	
	-----МъИЛБщПо


end



-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤КїРЎЅгЎЄЎЄб°б°         ЅбКшї©



----------------------------------------------------------
----							--
--							--
--		°ЧТшіЗ[ѕЖ°ЙЕ® - µЩДИ]			--
--							--
--		225325,278875				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk05 ()

	Talk( 1,  "Донна: Привет, я Донна! Вы действительно моряк? Наверное вы знаете так много замечательных историй... " )
	Text( 1,  "Купить вино ", BuyPage )
	Text(1,  "Обменять репутацию ",JumpPage,4)
	--Text(1,  "Сделка с Королевскими пиратами ",JumpPage,7)
	InitTrade()
	Other(	3916	)

	Talk( 2,  "Донна: Я слышала вы ищете Вино восьми драгоценностей? У меня есть в запасе оно. Если вы хотите его купить, то принесите мне 100000 золотых. " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 4072, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2,  "Вино восьми драгоценностей ", MultiTrigger,GetMultiTrigger(),1)

	Talk( 3,  "Донна: Кажется вы имеете недостаточно денег. Это вино не для бедных! Возвращайтесь как соберете достаточную сумму. " )

	Talk(4, "Репутация очень важна! Те кто делают полезное для общества получают репутацию. Полученную репутацию вы можете обменять здесь на необходимые предметы. ")
	Text(4, "Я верю в свою репутацию. Я здесь чтобы получить награду. ", JumpPage,5)

	Talk(5, "Выберите нужную награду. Когда вы получите предмет ваша репутация будет уменьшена. ")
	InitTrigger()
	TriggerCondition( 1, HasCredit,20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20 )
	TriggerAction( 1, GiveItem, 2602,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5, "Эмблема сремления новичка - стоимость 20 очков репутации. " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200 )
	TriggerAction( 1, GiveItem, 2603,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5, "Эмблема стремления станд. ур. - стоимость 200 очков репутации. " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 2604,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5, "Эмблема стремления выс. ур. - стоимость 2000 очков репутации. " ,MultiTrigger,GetMultiTrigger(),1)
	Talk(6, "Пожалуйста проверьте есть ли у вас свободные ячейки в инвентаре и что вы имеете достаточно репутации. Заработать репутацию вы можете например взяв себе ученика. ",CloseTalk)

	Talk(7, "Привет! Мы Короли пиратов и служим только пиратам с отличной репутацией. Набрав требуемое количество репутации вы можете обменять ее на необходимые предметы. ")
	InitTrigger()
	TriggerCondition( 1, HasCredit,500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerAction( 1, GiveItem, 855,5,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "5 Монет феи - стоимость 500 очков репутации. " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 5000 )
	TriggerAction( 1, GiveItem, 3094,3,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "3 Усилителя стремлений - стоимость 5000 очков репутации. " ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,20000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20000 )
	TriggerAction( 1, GiveItem, 0610,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "Самоуничтожение начального уровня - стоимость 20000 очков репутации. " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 50000 )
	TriggerAction( 1, GiveItem, 0885,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "Очищающий самоцвет 1 уровня - стоимость 50000 очков репутации. " ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200000 )
	TriggerAction( 1, GiveItem, 0862,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "Самоцвет колосса - стоимость 200000 очков репутации. " ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,600000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 600000 )
	TriggerAction( 1, GiveItem, 1012,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7, "Самоцвет души - стоимость 600000 очков репутации. " ,MultiTrigger,GetMultiTrigger(),1)

	Talk(8, "Добро пожаловать в Королевские пираты! Работайте больше для достижения своей цели. ")

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕЖ°ЙЕ® - µЩДИЅбКш



----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[РЎЙЅіµ]				--
--							--
--		219350,273050				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk06 ()
	
	
	Talk( 1,  "Малыш Дэниель: Доводилось вам быть у святыни в пустыне? Или в Одинокой башне в чаще Священного леса? В молодом возрасте нужно больше исследовать мир. " )
	--Text( 1,  "Learn Navigation Skill ", BuyPage )
	Text(1, "Сделать Генератор древних ",JumpPage,2)
	Text( 1,  "Спасибо за подсказку. ", CloseTalk)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeItem, 3933, 10 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, GiveItem, 1812, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "Малыш Дэниель: О, опять эти детали машин. В последнее время мы все чаще находим их в телах пиратов! Принесите мне 10 Деталей робота и 5000 золотых и я сделаю для вас Генератор древних. " )
	Text( 2,  "Сделать Генератор древних ",  MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2,  "Нет, я передумал. ", CloseTalk)

	Talk(3,  "Малыш Дэниель: Вот, держите Генератор древних. Он позволит вам проникнуть в Заброшенный город. Приходите если вам потребуется еще. ")

	Talk(4,  "Малыш Дэниель: Простите, у вас нет 10 Деталей робота или 5000 золотых. ")

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<РЎЙЅіµЅбКш






----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ФУ»хЙМИЛ - јЄЖХБў]			--
--							--
--		225075,277025				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk07 ()

	Talk( 1,  "Джимберри: Привет! Могу я тебе чем-нибудь помочь? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )
	Text( 1,  "Сделать Маску реальности. ",JumpPage, 2 )

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
	Talk( 2,  "Для создания Маски реальности необходимы 1 Эльфийская печать, 10000 золота и 10 любых ресурсов 3 уровня. " )
	Text( 2,  "Обменять Осколок кости на Маску реальности. ", MultiTrigger, GetMultiTrigger(), 1)

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
	Text( 2,  "Обменять Руду на Маску реальности. ", MultiTrigger, GetMultiTrigger(), 1)

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
	Text( 2,  "Обменять Дерево на Маску реальности. ", MultiTrigger, GetMultiTrigger(), 1)

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
	Text( 2,  "Обменять Сашими на Маску реальности. ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Джимбери: Держите! Маска реальности готова. " )
	Talk( 4,  "Джимбери: Вы не имеете всех необходимых компонентов или ваш инвентарь заблокирован. " )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ФУ»хЙМИЛ - јЄЖХБўЅбКш


----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ѕУГсЎ¤ВкёсАцМШ]			--
--							--
--		227459,277722				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk08 ()

	Talk( 1,  "Маргарет: Привет! Вчера по телевидению... Хахаха... видела его. Он такой забавный... " )
	Text( 1,  "Сделать укрепляющую пищу ", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "Вы хотите действительно вкусную и полезную пищу? Тогда вы действительно по адресу! " )
	Text( 2,  "Сделать Сок эльфийского фрукта. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3123, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2,  "Сделать Чай из красных фиников. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3124, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2,  "Сделать Грибной суп. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3125, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 2,  "Сделать Сок плодов дурмана. ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3126, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2,  "Сделать Мороженное ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Маргарет: Вот то что вы хотели! Не больше и не меньше. " )
	Talk( 4,  "Маргарет: Чтобы сделать 1 Сок эльфийского фрукта необходимо 10 Эльфийских фруктов и 1 Стакан. " )
	Talk( 5,  "Margaret: Чтобы сделать 1 Чай из красных фиников необходимо 10 Красных фиников и 1 Стакан. " )
	Talk( 6,  "Маргарет: Чтобы сделать 1 Грибной суп необходимо 10 Грибов и 1 Стакан. " )
	Talk( 7,  "Маргарет: Чтобы сделать 1 Сок плодов дурмана необходимо 10 Плодов дурмана и 1 Стакан. " )
	Talk( 8,  "Маргарет: Чтобы сделать 1 Мороженное необходимо 10 Ледянных фруктов и 1 Стакан. " )
	AddNpcMission	(1023)
	AddNpcMission	(1080)
	AddNpcMission	(1135)
	AddNpcMission	(1186)
	AddNpcMission(	1223	)
	




end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕУГсЎ¤ВкёсАцМШ


----------------------------------------------------------
--							--
--							--

	--°ЧТшіЗ[ВГµкАП°еЎ¤ВкА­ТААј]		--
--							--
--		221150,278125				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk09 ()
	
	
	Talk( 1,  "Мариам: Вас интересуют лучшие краски для волос? " )		
	Text( 1,  "Сделать краситель для волос. ", JumpPage, 2)
	--Text( 1,  "Торг Pet Items ", BuyPage )
	
	-- Рождественский ивент
	Text(1,  "Приготовить Вкусное индюшачье мясо ", JumpPage, 10)
	Text(1,  "Приготовить Рождественский обед ", JumpPage, 13)

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
	--baby--Йъ»ојјДЬКйLv1
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
	
---------------------ЕлµчГАО¶µД»рј¦Ив
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 10,  "Марриам: Мне требуется 10 Индюшатины и 10000 золота. ")
	Text(10,  "Приготовить ",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,  "Марриам: Вот Вкусное мясо индюшки! Надеюсь вы оцените его сочный вкус! " )

	Talk( 13,  "Марриам: Каждом положено не более трех Рождественских обедов! ")
	Text(13,  "Первый Рождественский обед. ",  JumpPage, 15)
	Text(13,  "Второй Рождественский обед. ",  JumpPage, 16)
	Text(13,  "Третий Рождественский обед. ", JumpPage, 17)
	---------------------ЕлµчКҐµ®ґуІН
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
	Talk( 15,  "Марриам: Сделать хороший Рождественнский обед не просто. Мне необходимы 10 кусков Вкусной индюшатины и 1 Рождественнская роза. Также вы должны заплатить 10000 золота. Я смогу приготовить Рождественнский обед лишь 3 раза! ")
	Text( 15,  "Приготовить ",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------ЕлµчКҐµ®ґуІН
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
	Talk(16,  "Марриам: Сделать хороший Рождественнский обед не просто. Мне необходимы 10 кусков Вкусной индюшатины и 1 Рождественнская роза. Также вы должны заплатить 1000000 золота. Я смогу приготовить Рождественнский обед лишь 3 раза! ")
	Text( 16,  "Приготовить ",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------ЕлµчКҐµ®ґуІН
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
	Talk(17,  "Марриам: Сделать хороший Рождественнский обед не просто. Мне необходимы 10 кусков Вкусной индюшатины и 1 Рождественнская роза. Также вы должны заплатить 10000000 золота. Я смогу приготовить Рождественнский обед лишь 3 раза! ")
	Text( 17,  "Приготовить ",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 14,  "Марриам: Кажется вы не имеете всех необходимых компонентов или достаточно золота! Также вы должны иметь 1 свободную ячейку в инвентаре. Вы делаете Рождественнский обед впервые? Вы сможете приготовить его лишь 3 раза! ")
	Talk( 18,  "Марриам: Кажется вы не имеете всех необходимых компонентов или достаточно золота! Также вы должны иметь 1 свободную ячейку в инвентаре. Вы делаете Рождественнский обед второй раз? Вы сможете приготовить его лишь 3 раза! ")
	Talk( 19,  "Марриам: Кажется вы не имеете всех необходимых компонентов или достаточно золота! Также вы должны иметь 1 свободную ячейку в инвентаре. Вы делаете Рождественнский обед в третий раз? Вы сможете приготовить его лишь 3 раза! ")
	Talk( 12,  "Марриам: Кажется вы не имеете всех необходимых компонентов или достаточно золота! Также вы должны иметь 1 свободную ячейку в инвентаре. ")
------------------µчЕдємЙ«Иѕ·ўјБ
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
	Talk( 2,  "Марриам: Иметь один и тот же цвет прически постоянно скучно. Я могу приготовить для вас краситель для интересующего вас цвета. " )
	Text( 2,  "Сделать Красный краситель ", MultiTrigger, GetMultiTrigger(), 1)
---------------------µчЕдіИЙ«Иѕ·ўјБ
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
	Text( 2,  "Сделать Оранжевый краситель ", MultiTrigger, GetMultiTrigger(), 1)
---------------------µчЕдєЪЙ«Иѕ·ўјБ
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
	Text( 2,  "Сделать Черный краситель ", MultiTrigger, GetMultiTrigger(), 1)
---------------------µчЕдєЦЙ«Иѕ·ўјБ
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
	Text( 2,  "Сделать коричневый краситель ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Марриам: Готово! Возьмите этот превосходный краситель, сваренный именно для вас. " )
	Talk( 4,  "Марриам: Чтобы приготовить 1 Красный краситель необходимо 5 Красной краски, 1 Особый газ, 1 Радужный стакан и 200 золотых. " )
	Talk( 5,  "Марриам: Чтобы приготовить 1 Оранжевый краситель необходимо 5 Оранжевой краски, 1 Особый газ, 1 Радужный стакан и 200 золотых. " )

	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 2 )
	TriggerAction( 1, AddExp, 116688305, 116688305 )
	TriggerAction( 1, AddExpAndType,2,370500,370500)
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6,  "Marriam: To test PK, I will make you Lv 65 and add 1 million gold for you. " )
	Text( 6,  "Ok ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7,  "Marriam: I only give this chance to level 1 new players. " )

	Talk( 8,  "Марриам: Чтобы приготовить 1 Черный краситель необходимо 5 Черной краски, 1 Особый газ, 1 Радужный стакан и 200 золотых. " )
	Talk( 9,  "Марриам: Чтобы приготовить 1 Коричневой краситель необходимо 5 Коричневой краски, 1 Особый газ, 1 Радужный стакан и 200 золотых. " )

	AddNpcMission	(1029)
	AddNpcMission	(1192)
	------------¶юФВ-----------ЗйОЄєООп-----------ЗгіЗЦ®Бµ------------РТФЛЦнЦн----------ЖЯЦнїЄМ©
	--AddNpcMission	(5505)
	--AddNpcMission	(5506)
	--AddNpcMission	(5508)
	--AddNpcMission	(5509)
	--AddNpcMission	(5536)

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ВГµкАП°еЎ¤ВкА­ТААј




----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[·рД·]				--
--							--
--		222629,272668				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk11 ()
	
	
	Talk( 1,  "Форбей: Привет! Я расскажу вам одну длинную историю... Подождите! Не уходите! " )


	AddNpcMission	(1009)
	AddNpcMission	(1173)

	-----МъИЛБщПо
	AddNpcMission ( 6123 )
	AddNpcMission ( 6124 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·рД·



----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[Л®КЦЎ¤єЈФЖ]			--
--							--
--		235013,284694				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk12 ()
	
	
	Talk( 1,  "Коди: Привет! Я моряк Коди. " )

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
	----------------јЄДбЛ№-єЈФЖ---01
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Л®КЦЎ¤єЈФЖ


----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ТшРРіцДЙЎ¤Д¦ДЭСЕ]			--
--							--
--		222050,270400				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk13 ()
	
	
	Talk( 1,  "Моника: Привет! Я банкир Моника! В нашем банке ваши вещи всегда под надежной защитой! " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "Хранилище (стоимость 200 золотых) ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Комбинировать ", OpenUnite)
	Text( 1, "Торг ", BuyPage)	
	Talk( 2,  "Простите, вы не имеете достаточное количество золота! " )
	
   InitTrade()
   Other(   0886   )

	AddNpcMission	(1050)
	AddNpcMission	(1212)
	AddNpcMission ( 6091 )
	AddNpcMission ( 6092 )
--------ЦчПЯИООс-----------
	AddNpcMission ( 6768 )
	AddNpcMission ( 6769 )
	AddNpcMission ( 6770 )


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ТшРРіцДЙЎ¤Д¦ДЭСЕ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[єЈѕьЙЩЅ«Ў¤Ню¶ыЛ№]			--
--							--
--		230228,270157				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk14 ()
	
	
	Talk( 1,  "Вильям: Привет, Я генерал Вильям. Тут я самый главный! " )
	

	InitTrigger()
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, GiveItem, 4082, 1, 4)
	Talk( 2,  "Вильям: Что? Вы потеряли Древний премиальный знак? Правитель не будет с вами разговаривать без него. К счастью за 20000 золота я смогу вам его восстановить! ")
	Text( 2,  "Хорошо, я хочу купить Древний премиальный знак. ", MultiTrigger, GetMultiTrigger(), 1)

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈѕьЙЩЅ«Ў¤Ню¶ыЛ№



----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[Йіб°іЗґуК№Ў¤ПЇ°Н]			--
--							--
--		225648,270640				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk15 ()
	
	
	Talk( 1,  "Ксиба: Хотя я и посол, но все же не могу проводить все свое время в работе. Вы также должны играть чтобы уравновесить это. " )

	AddNpcMission	(1032)
	AddNpcMission	(1195)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Йіб°іЗґуК№Ў¤ПЇ°Н


----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№]		--
--							--
--		224207,274850				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk16 ()
	
	
	Talk( 1,  "Ронни: Я правитель и отвечаю за всю торговлю в этом городе. Я могу научить вас как стать самым богатым в Аргенте. " )
	
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[АПХЯЎ¤єэНїЙЅИЛ]			--
--							--
--		227208,270036				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk17 ()
	
	
	Talk( 1,  "Пачкули: Бабушка Белди печет самое вкусное печенье! " )

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<АПХЯЎ¤єэНїЙЅИЛ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[»бі¤ЦъАнЎ¤ВЮТБ]			--
--							--
--		224075,275275				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk18 ()
	
	
	Talk( 1,  "Рори: Я думаю у нашего правителя есть тайна и я действительно очень хочу ее узнать. " )
	
	AddNpcMission ( 76 )
	AddNpcMission ( 77 )
	AddNpcMission ( 78 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»бі¤ЦъАнЎ¤ВЮТБ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[В·ИЛЎ¤јЧ]				--
--							--
--		221588,282819				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk19 ()
	
	
	Talk( 1,  "Прохожий: Из всех морских монстров наибольший страх мне внушает Пузырчатый моллюск. Это правда! Я видел Однажды в порту огромную особь. Если бы в него не начали стрелять Сакура 13, я думаю он мог бы убить горожан. " )
	
	AddNpcMission ( 6086 )
	AddNpcMission ( 6089 )
	AddNpcMission ( 6090 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤јЧ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ѕЖ№нЎ¤·ТµВДЪ]			--
--							--
--		236002,281965				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk20 ()
	
	
	Talk( 1,  "Энтони: Э? Что? Вы что то хотите? Боюсь вы не по адресу. " )
	
	AddNpcMission ( 500 )
	AddNpcMission ( 501 )
	AddNpcMission ( 358 )
	AddNpcMission ( 372 )
	AddNpcMission ( 6082 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕЖ№нЎ¤·ТµВДЪ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ЙЩДкЎ¤МЖµВ]			--
--							--
--		196225,269425				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk21 ()
	
	
	Talk( 1,  "Томми: Привет, я Томми. А вы? Монстры что то какие то неспокойные в последнее время. " )
	
	AddNpcMission ( 210 )
	AddNpcMission ( 211 )
	AddNpcMission	(1034)
	AddNpcMission	(1197)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ЙЩДкЎ¤МЖµВ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ЦЖФмК¦Ў¤µВИшїЛ]			--
--							--
--		173269,278261				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk22 ()
	
	
	Talk( 1,  "Дезмонд: Работа ремесленника лучше чем у вас! Но вы люди слишком высокомерны чтобы это признать. " )
	
	AddNpcMission	(1054)
	AddNpcMission	(1216)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ЦЖФмК¦Ў¤µВИшїЛ


----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[D°жЙМЎ¤ЧЯЛЅНГ]			--
--							--
--		2298,2520				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk23 ()
	
	
	Talk( 1,  "Контрабандист Банни: Запрещенные товары? Я имею все, в чем вы нуждаетесь! " )
	
	AddNpcMission	(1000)
	AddNpcMission	(1164)
			--------УЮИЛЅЪ
	--AddNpcMission	(5601)
	--AddNpcMission	(5602)
	--AddNpcMission	(5603)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<D°жЙМЎ¤ЧЯЛЅНГ


----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[єЈѕьЛѕБо№ЩЎ¤µВЛ№ЛюВЮ]		--
--							--
--		71350,141619				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk24 ()
	
	
	Talk( 1,  "Дессаро: Привет! Я являюсь самым главным в Громограде. Не желаете присоединится к нашей команде? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "Создать гильдию Флота ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2,  "Дессаро: Чтобы создать гильдию Флота вы должны заплатить 100000 золота и принести Камень клятвы. так вы докажете вашу преданность. " )
        
	AddNpcMission	(566)
	AddNpcMission	(477)
	AddNpcMission	(478)
	AddNpcMission ( 6087 )
	AddNpcMission ( 6088 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈѕьЛѕБо№ЩЎ¤µВЛ№ЛюВЮ


----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ѕЖ°Й·юОсФ±Ў¤ГЧДИ]			--
--							--
--		99053,133465				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk25 ()
	
	
	Talk( 1,  "Мона: Привет! Вы слышали про пирата Сакура 13? Она мой идол! Я желаю поскорее оставить это скучное место и стать таким пиратом как она! " )
	AddNpcMission	(1022)
	AddNpcMission	(1079)
	AddNpcMission	(1134)
	AddNpcMission	(1185)
	AddNpcMission	(378)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕЖ°Й·юОсФ±Ў¤ГЧДИ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[Л®КЦЎ¤µП°В]			--
--							--
--		108330,128563				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk26 ()
	
	
	Talk( 1,  "Дио: Привет! Я моряк Дио. Будьте осторожны в открытом море, там есть много свирепых монстров, а особенно акулы! Они откусят вам ногу также как мою. О, моя бедная нога... " )
	AddNpcMission	(1038)
	AddNpcMission	(1092)
	AddNpcMission	(1150)
	AddNpcMission	(1201)
----------------јЄДбЛ№---Л®КЦЎ¤µП°В--01
	AddNpcMission (5535 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Л®КЦЎ¤µП°В






----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ѕьТЅЎ¤ВкЙі]			--
--							--
--		77300,154900				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk28 ()
	
	
	Talk( 1,  "Маса: С вами что то не так? Я военный доктор Громограда. Не ищите меня по пустякам! " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕьТЅЎ¤ВкЙі

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ТшРРіцДЙЎ¤ВкїЁ¶а]			--
--							--
--		74300,153400				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk29 ()
	
	
	Talk( 1,  "Макурдо: Добро пожаловать в банк Громограда! " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "Хранилище (200 золотых) ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Комбинировать ", OpenUnite)
	Text( 1, "Торг ", BuyPage)
	Talk( 2,  "Простите, у вас недостаточно золота для входа в хранилище! " )
	
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ТшРРіцДЙЎ¤ВкїЁ¶а


----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[МъЅіЎ¤·рАКёз]			--
--							--
--		76662,144769				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk30 ()
	
	
	Talk( 1,  "Фурлингтон: Что? Плавка? Хехе. " )
	Text( 1,  "Очистить ", JumpPage, 2)
	Text( 1,  "Ничего... ",CloseTalk )


----------------Б¶ЦЖЛ®ѕ§Й°ЛйЖ¬
	InitTrigger()
	TriggerCondition( 1, HasItem, 1784, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1784, 10 )
	TriggerAction( 1, GiveItem, 1785, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "Фурлингтон: Ковка, ковка, ковка. И так каждый день, одна ковка. " )
	Text( 2,  "Очистить Кусок звенящего кристалла. ",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3,  "Фурлингтон: Ваш Кусок звенящего кристалла готов. Ищите меня снова если потребуется помощь. " )
	Talk( 4,  "Фурлингтон: Чтобы приготовить 1 Кусок звенящего кристалла мне необходимо 10 Звенящего песка и 200 золота. " )
	AddNpcMission	(1042)
	AddNpcMission	(1094)
	AddNpcMission	(1153)
	AddNpcMission	(1205)


	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<МъЅіЎ¤·рАКёз
----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ЙЩЕ®Ў¤РБµЩ]			--
--							--
--		74026,145143				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk31 ()
	
	
	Talk( 1,  "Синди: Привет! Я люблю хороший материал. Если вы найдете что то ценное, то сохраните для меня. " )
	
	Text( 1,  "Дворец Овна-вампира (Гороскоп) ", JumpPage,6 )
	Text( 1,  "Награда моряка ", JumpPage,8 )
	Text( 1,  "Награда пирата ", JumpPage,11 )
	Text( 1,  "Награда капитана ", JumpPage,12 )
	Text( 1,  "Сделать краситель для волос ", JumpPage, 2)

	Talk( 6,  "Синди: Пожалуйста выберите сложность в порядке от моряка к капитану. Чем больше сложность, тем более лучшие награды. Вы сделали выбор? Изменить его потом будет невозможно! " )

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 833 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6,  "Моряк ",MultiTrigger_1, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,833 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 834 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6,  "Пират ",MultiTrigger_2, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,833 )
	TriggerAction( 1, SetRecord, 835 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6,  "Капитан ",MultiTrigger_3, GetMultiTrigger(), 1)

	Talk( 7,  "Синди: Желаю удачи! " )
  



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
	Talk( 8,  "Синди: Соберите 7 эмблем для получения Печати Овна и пропуска к следующему дворцу. " )
	Text( 8,  "Обменять ",MultiTrigger_0, GetMultiTrigger(), 1)



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
	Talk( 11,  "Синди: Соберите 7 эмблем для получения Печати Овна и пропуска к следующему дворцу. " )
	Text( 11,  "Обменять ",MultiTrigger, GetMultiTrigger(), 1)


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
	Talk( 12,  "Синди: Соберите 7 эмблем для получения Печати Овна и пропуска к следующему дворцу. " )
	Text( 12,  "Обменять ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 10,  "Синди: Вы не собрали все эмблемы, или ваш инвентарь заблокирован. Возможно также у вас нет свободных ячеек. ")
	Talk( 9,  "Синди: Дворец Тельца ждет вас! ")
	Talk( 13,  "Синди: Вы можете делать свой выбор лишь 1 раз! ")

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
	Talk( 2,  "Синди: Планируете сменить прическу? Я приготовлю для вас лучшие красители! " )
	Text( 2,  "Сделать Желтый краситель ",MultiTrigger, GetMultiTrigger(), 1)
---------------µчЕдВМЙ«Иѕ·ўјБ
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
	Text( 2,  "Сделать Зеленый краситель ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Синди: Вот краситель, в котором вы нуждались! " )
	Talk( 4,  "Синди: Чтобы сделать Желтый краситель необходмо 5 Желтых красок, 1 Особый газ, 1 радужный стакан и 200 золотых! " )
	Talk( 5,  "Синди: Чтобы сделать Зеленый краситель необходмо 5 Зеленых красок, 1 Особый газ, 1 радужный стакан и 200 золотых! " )
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
	
	-- Перерождение феникса
	AddNpcMission	(6001)
	-- Загадочный человек
	AddNpcMission	(6002)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ЙЩЕ®Ў¤РБµЩ


----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[Йіб°Ч¤АЧцЄ±¤ґуК№Ў¤°ЈµВјУ]		--
--							--
--		71220,150827				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk32 ()
	
	
	Talk( 1,  "Аликс: Привет! Я посол Шайтана. У вас есть вопросы? Если что ищите меня в этом месте! " )
	AddNpcMission	(1033)
	AddNpcMission	(1088)
	AddNpcMission	(1145)
	AddNpcMission	(1196)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Йіб°Ч¤АЧцЄ±¤ґуК№Ў¤°ЈµВјУ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[µАѕЯЙМИЛЎ¤РЭІјАоО¬Л№]		--
--							--
--		74100,156300				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk33 ()
	
	
	Talk( 1,  "Уисли: Привет! Я тоже новичок в этом городе. Прошу вас посещайте меня почаще. " )

	AddNpcMission	(1008)
	AddNpcMission	(1063)
	AddNpcMission	(1118)
	AddNpcMission	(1172)
	AddNpcMission	(850)
	AddNpcMission	(861)
	AddNpcMission	(868)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<µАѕЯЙМИЛЎ¤РЭІјАоО¬Л№

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ВГ№ЭАП°еЎ¤ВкСЕЖЕЖЕ]		--
--							--
--		69761,154269				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk34 ()
	
	
	Talk( 1,  "Бабушка Майа: Моя гостиница закрыта, поскольку мне нездоровится. " )
	AddNpcMission	(1030)
	AddNpcMission	(1086)
	AddNpcMission	(1139)
	AddNpcMission	(1193)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ВГ№ЭАП°еЎ¤ВкСЕЖЕЖЕ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[·юЧ°µкЦчЎ¤µПАЦ]			--
--							--
--		75450,151200				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk35 ()
	
	
	Talk( 1,  "Диттер: Привет! В данный момент мы закрыты! " )
	Text( 1,  "Спасибо... ",CloseTalk )
	AddNpcMission	(1010)
	AddNpcMission	(1066)
	AddNpcMission	(1122)
	AddNpcMission	(1174)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·юЧ°µкЦчЎ¤µПАЦ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[°ЧТшіЗЧ¤АЧцЄ±¤ґуК№Ў¤ТБЛю¶а]		--
--							--
--		74171,155325				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk36 ()
	
	
	Talk( 1,  "Ята: Только злые торговцы сделали его таким большим. Хахаха. " )
	AddNpcMission	(1003)
	AddNpcMission	(1058)
	AddNpcMission	(1113)
	AddNpcMission	(1167)
--	AddNpcMission ( 6025 )
--	AddNpcMission ( 6026 )
--	AddNpcMission ( 6027 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<°ЧТшіЗЧ¤АЧцЄ±¤ґуК№Ў¤ТБЛю¶а

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[»¤ОАі¤Ў¤еИВФїЛ]			--
--							--
--		79600,148800				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk37 ()
	
	
	Talk( 1,  "Мэллоу: Привет! Я стражник крепости Громограда. " )
	Text( 1,  "Ничего... ",CloseTalk )

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
	

	
	
	
		

	----------ЧЄЦ°іЙОЄЅЈ¶ЬКї
	--TriggerCondition( 1, LvCheck,  "> ", 39 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 1 )
	--TriggerAction( 1, JumpPage, 2 )

	--TriggerCondition( 2, LvCheck,  "> ", 39 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 1 )
	--TriggerAction( 2, JumpPage, 2 )

-------------------ЧЄѕС»чКЦЕР¶П

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤ОАі¤Ў¤еИВФїЛ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ФУ»хЙМИЛЎ¤№ѕаЅ]			--
--							--
--		72500,155100				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk38 ()
	
	
	Talk( 1,  "Шина: Привет! Вы прибыли как раз вовремя. Вы можете получить награду у меня! " )
	
	Text( 1,  "Я перебил множество монстров и хочу получить свою награду! ", JumpPage,2 )
	Text( 1,  "Я хочу обменять Ледяное Злое Копье <-> Волшебный ледяной Лук! ", JumpPage,4 )
	
	Talk(2, "Шина: Я тебя понимаю но ты должен доказать что ты охотился на монстров.Предъяви карты Охотника которые ты забрал у монстров ,а если ты меня обманишь попадёшь в тюрьму  ")

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
	Text( 2, "Вот они я не жульничаю ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk( 4,  "Шина: Что ты хочешь поменять?! " )
	
	InitTrigger()
	TriggerCondition( 2, HasItem, 4277, 1 )
	
	TriggerAction( 2, TakeItem,  4277, 1 )
	TriggerAction( 2, GiveItem,4278, 1,4 )
	
	Text( 4,  "Я хочу поменять Ледяное Злое Копье на Волшебный ледяной Лук ",MultiTrigger,GetMultiTrigger(),2)
	
	InitTrigger()
	TriggerCondition( 3, HasItem, 4278, 1 )
	
	TriggerAction( 3, TakeItem,  4278, 1 )
	TriggerAction( 3, GiveItem,4277, 1,4 )

	Text( 4,  "Я хочу обменять Волшебный ледяной Лук на Ледяное Злое Копье ! ",MultiTrigger,GetMultiTrigger(),3)

	Talk( 3, "Ты меня обманул.Никогда не обманывай ,а то поплатишься за свою лож! " )


	AddNpcMission	(1053)
	AddNpcMission	(1107)
	AddNpcMission	(1163)
	AddNpcMission	(1215)

		
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ФУ»хЙМИЛЎ¤№ѕаЅ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ЙЩЕ®Ў¤ВЮАт]			--
--							--
--		101653,128642				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk39 ()
	
	
	Talk( 1,  "Риоли: Вы были во многих местах. Встречали ли вы Генерала Вильяма? Его отправили в Аргент. Слишком скучное место. " )
	AddNpcMission	(1035)
	AddNpcMission	(1089)
	AddNpcMission	(1147)
	AddNpcMission	(1198)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ЙЩЕ®Ў¤ВЮАт

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[єЈѕьЧЬІїЦё»У№ЩЎ¤»щ.°ЈЛ№ОчЧјЅ«]	--
--							--
--		80800,152100				--
---------------------2005-3-8-------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk40 ()
	
	
	Talk( 1,  "Генерал Кен: Я чувствую Макси затевает мне неприятности. Он всегда устраивает для меня мнеприятности. " )
	AddNpcMission	(1017)
	AddNpcMission	(1071)
	AddNpcMission	(1127)
	AddNpcMission	(1180)
---------------°ЧСт
	AddNpcMission	(5575)
	AddNpcMission	(5576)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈѕьЧЬІїЦё»У№ЩЎ¤»щ.°ЈЛ№ОчЧјЅ«

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[єЈѕьЧЬІїІОД±і¤Ў¤ВкСЗЧИЙЩРЈ]		--
--							--
--		65323,150512				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk41 ()
	
	
	Talk( 1,  "Полковник Макси: Привет! Генерал Кен отправил меня заботится об этом месте. Хехе. Я люблю устраивать ему неприятности. " )
	
	AddNpcMission	(849)
	AddNpcMission	(856)
	AddNpcMission	(858)
	AddNpcMission	(860)
	AddNpcMission	(866)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈѕьЧЬІїІОД±і¤Ў¤ВкСЗЧИЙЩРЈ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[Д¦¶ыїЛИЛєуТбЎ¤·Ж¶щ]		--
--							--
--		65146,158595				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk42 ()
	
	
	Talk( 1,  "Фрея: Вы парни считаете нас за демонов? Не заговаривайте со мной! " )
	
	AddNpcMission	(851)
	AddNpcMission	(853)
	AddNpcMission	(854)
	AddNpcMission	(862)
	AddNpcMission	(864)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Д¦¶ыїЛИЛєуТбЎ¤·Ж¶щ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[»¤ОАЎ¤ДбЛЙ]			--
--							--
--		71187,141438				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk43 ()
	
	
	Talk( 1,  "Ниссон: Привет! Я близкий друг Сонни. Мы с ним оба превосходные стражники Флота! " )

	AddNpcMission	(859)
	AddNpcMission	(857)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤ОАЎ¤ДбЛЙ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[»¤ОАЎ¤ЛЙДб]			--
--							--
--		71536,141462				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk44 ()
	
	
	Talk( 1,  "Сонни: Привет! Никогда не заговаривай со мной о деньгах! " )

	AddNpcMission	(474)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤ОАЎ¤ЛЙДб

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[В·ИЛЎ¤±ы]				--
--							--
--		66976,155428				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk45 ()
	
	
	Talk( 1,  "Бей: Громоград имеет хороший бар в порту. К сожалению туда очень далеко добираться. " )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤±ы


----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[В·ИЛЎ¤°Н±И]				--
--							--
--		99475,123473				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk46 ()
	
	
	Talk( 1,  "Барби: Привет! Действительно ли вы бывший пират? В Громограде встречаются только люди из флота, пираты не осмеливаются туда приближаться. " )
	Text( 1,  "Очистить ", JumpPage, 2)

--------------Б¶ФмµШЅр
	InitTrigger()
	TriggerCondition( 1, HasItem, 1782, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1782, 10 )
	TriggerAction( 1, GiveItem, 1783, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "Барби: Моя работа - объединять множество фрагментов руды в одну. " )
	Text( 2,  "Очистить Терранский золотой ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Барби: Я дам вам Терранский золотой. Не пожалейте в будущем. " )
	Talk( 4,  "Барби: Терранский золотой? Принесите мне 10 Терранской золотой руды и 2000 золота. " )

        AddNpcMission	(6256)
	AddNpcMission	(6257)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤°Н±И

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ґуЙс№ЩЎ¤ёКµШО¬А­]			--
--							--
--		86299,350092				--
 
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk47 ()
	
	
	Talk( 1,  "Гэньон: Здравствуй мой друг. Да благославит тебя Богиня Кара! Я высший жрец Шайтана " )
	Text( 1,  "Исследовать руны ", JumpPage, 2)
        Text( 1,  "Собрать карту сокровищ ", JumpPage, 7)
        Text( 1,  "Обменять Фрагменты иллюзии на чертежи ", JumpPage, 9)
	Text( 1,  "Обменять Сердце иллюзии на кольцо 60 уровня ", JumpPage, 10)

	Talk( 2,  "Геньон: Я занимаюсь исследованиями древних рун. Если принесете мне их достаточное количество, то получите взамен некоторые ценные вещи. " )
	Text( 2,  "Обменять на Скелетный набор ", JumpPage, 3)
	Text( 2,  "Обменять на набор Заклинания ", JumpPage, 4)
	Text( 2,  "Обменять на Исчезающий набор ", JumpPage, 5)
	Text( 2,  "Обменять на Таинственный набор ", JumpPage, 6)
	
	Talk( 3,  "Геньон: Скелетный набор содержит экипировку 30 уровня из Заброшенного города. Чтобы его получить тебе необходимо найти 10 рун Наль и 10 рун Сол. " )
	--------------чјчГЦ®ЅЈКї±¦Пд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3400, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3,  "Получить сундук мечника ", MultiTrigger, GetMultiTrigger(), 1)
	--------------чјчГЦ®БФИЛ±¦Пд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3401, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3,  "Получить сундук охотника ", MultiTrigger, GetMultiTrigger(), 1)
	--------------чјчГЦ®Т©К¦±¦Пд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3402, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3,  "Получить сундук знахарки ", MultiTrigger, GetMultiTrigger(), 1)
	--------------чјчГЦ®Г°ПХХЯ±¦Пд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3403, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3,  "Получить сундук исследователя ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4,  "Геньон: Набор заклинателя содержит экипировку 40 уровня, полученную в Заброшенном городе и Темной топи. Для ее получения необходимо принести 10 рун Эль и 10 рун Кам " )
	--------------ЦдКхЦ®Л«ЅЈКїЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3404, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "Получить сундук Воителя ", MultiTrigger, GetMultiTrigger(), 1)
	--------------ЦдКхЦ®ѕЮЅЈКїЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3405, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "Получить сундук Чемпиона ", MultiTrigger, GetMultiTrigger(), 1)
	--------------ЦдКхЦ®ѕС»чКЦЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3406, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "Получить сундук Стрелка ", MultiTrigger, GetMultiTrigger(), 1)
	--------------ЦдКхЦ®КҐЦ°ХЯЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3407, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "Получить сундук Целителя ", MultiTrigger, GetMultiTrigger(), 1)
	--------------ЦдКхЦ®·вУЎК¦Ч°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3408, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "Получить сундук Колдуньи ", MultiTrigger, GetMultiTrigger(), 1)
	--------------ЦдКхЦ®єЅєЈКїЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3409, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4,  "Получить сундук Покорителя морей ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 5,  "Геньон: Набор исчезновения содержит экипировку 50 уровня полученную в Мире Демонов. Для ее получения необходимо принести 10 рун Тер и 10 рун Фа. " )
	--------------»ГБйЦ®Л«ЅЈКїЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3410, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "Получить сундук Воителя ", MultiTrigger, GetMultiTrigger(), 1)
	--------------»ГБйЦ®ѕЮЅЈКїЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3411, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "Получить сундук Чемпиона ", MultiTrigger, GetMultiTrigger(), 1)
	--------------»ГБйЦ®ѕС»чКЦЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3412, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "Получить сундук Стрелка ", MultiTrigger, GetMultiTrigger(), 1)
	--------------»ГБйЦ®КҐЦ°ХЯЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3413, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "Получить сундук Целителя ", MultiTrigger, GetMultiTrigger(), 1)
	--------------»ГБйЦ®·вУЎК¦Ч°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3414, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "Получить сундук Колдуньи ", MultiTrigger, GetMultiTrigger(), 1)
	--------------»ГБйЦ®єЅєЈКїЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3415, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5,  "Получить сундук Покорителя морей ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 6,  "Геньон: Таинственный набор содержит в себе экипировку 60 уровня, полученную в Мире Демонов. Для ее получения необходимо принести 10 рун Тер и 10 рун Фа. " )
	--------------ГФЦ®Л«ЅЈКїЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3416, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "Получить сундук Воителя ", MultiTrigger, GetMultiTrigger(), 1)
	--------------ГФЦ®ѕЮЅЈКїЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3417, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "Получить сундук Чемпиона ", MultiTrigger, GetMultiTrigger(), 1)
	--------------ГФЦ®ѕС»чКЦЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3418, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "Получить сундук Стрелка ", MultiTrigger, GetMultiTrigger(), 1)
	--------------ГФЦ®КҐЦ°ХЯЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3419, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "Получить сундук Целителя ", MultiTrigger, GetMultiTrigger(), 1)
	--------------ГФЦ®·вУЎК¦Ч°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3420, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "Получить сундук Колдуньи ", MultiTrigger, GetMultiTrigger(), 1)
	--------------ГФЦ®єЅєЈКїЧ°±ёПд
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3421, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6,  "Получить сундук Покорителя морей ", MultiTrigger, GetMultiTrigger(), 1)

 
	InitTrigger() --єПіЙІШ±¦Нј
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

	Talk( 7,  "Геньон: Принесите мне 4 фрагмента карты и я объединю их для вас в полную карту сокровищ " )
	Text( 7,  "Объединить карту сокровищ ",MultiTrigger, GetMultiTrigger(), 1) 
	Talk( 8,  "Геньон: Ищите меня когда соберете 4 фрагмента карты и 2000 золотых " )

	--------------¶Т»»НјЦЅ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 5 )
	TriggerAction( 1, GiveItem, 1000, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9,  "Геньон: Вам известно что иллюзии могут быть материальными? Если принесете мне их осколки, я дам вам некоторые старые чертежи " )
	Text( 9,  "5 Фрагментов иллюзии на чертеж Пачкули ", MultiTrigger, GetMultiTrigger(), 1)

	--------------¶Т»»НјЦЅ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 30 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 30 )
	TriggerAction( 1, GiveItem, 1001, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9,  "30 Фрагментов иллюзии на Зашифрованный чертеж  ", MultiTrigger, GetMultiTrigger(), 1)

	--------------¶Т»»НјЦЅ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 100 )
	TriggerAction( 1, GiveItem, 1002, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9,  "100 Фрагментов иллюзии на Запечатанный чертеж ", MultiTrigger, GetMultiTrigger(), 1)

	--------------¶Т»»НјЦЅ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 500 )
	TriggerAction( 1, GiveItem, 1003, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9,  "500 Фрагментов иллюзии на Чертеж призыва ", MultiTrigger, GetMultiTrigger(), 1)


	--------------¶Т»»ЅдЦё
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4656, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10,  "Геньон: Если вам было даровано Сердце иллюзии вы достойны награды " )
	Text( 10,  "Получить Пламя ярости ", MultiTrigger, GetMultiTrigger(), 1)

	--------------¶Т»»ЅдЦё
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4657, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10,  "Получить Булыжник ", MultiTrigger, GetMultiTrigger(), 1)

	--------------¶Т»»ЅдЦё
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4658, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10,  "Получить Ветер благородной души ", MultiTrigger, GetMultiTrigger(), 1)

	--------------¶Т»»ЅдЦё
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4659, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10,  "Получить Сплетенный хлыст из ротанга ", MultiTrigger, GetMultiTrigger(), 1)

	--------------¶Т»»ЅдЦё
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4660, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10,  "Получить Чудесную воду ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 11,  "Геньон: К сожалению не могу произвести обмен. Возможно у вас нет необходимых компонентов или заблокирован инвентарь. " )



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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ґуЙс№ЩЎ¤ёКµШО¬А­


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[КПЧеі¤Ў¤°ўІј¶аВЮ.Ао]		--
--							--
--		90374,364023				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk48 ()
	
	
	Talk( 1,  "Альбуда: Привет, я руководитель клана. Могу я чем то помочь? " )
	InitTrigger()
	TriggerCondition( 1, HasMission, 1014 )
	TriggerCondition( 1, HasRecord, 1013 )
	TriggerCondition( 1, NoRecord, 1059 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1,  "Выбрать путь перерождения ",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 1059 )
	TriggerCondition( 1, HasNOZSExp )
	TriggerCondition( 1, NoRecord, 1056 )
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6)
	Text( 1,  "Сменить путь перерождения ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1,  "До свидания ", CloseTalk)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1015 )
	TriggerAction( 1, SetRecord, 1059 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2,  "Альбуда: Для перерождения есть 2 пути. Вы вправе выбрать любой из них. Первый - сложный. Вам на пути встретятся очень сильные монстры и опасные задания. Второй путь - долгий. Этот путь для терпеливых. ")
	Text( 2,  "Сложный путь ",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerAction( 1, SetRecord, 1016 )
	TriggerAction( 1, SetRecord, 1059 )
	TriggerAction( 1, JumpPage, 4 )
	Text( 2,  "Долгий путь ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3,  "Альбуда: Вы не можете выбрать путь перерождения или уже выбрали ")

	Talk( 4,  "Альбуда: После выбора пути посетите Тинк! ")


	InitTrigger()
	TriggerCondition( 1, HasRecord, 1016 )
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, ClearRecord, 1016 )
	TriggerAction( 1, SetRecord, 1015 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8)
	Talk( 5,  "Альбуда: Смена пути перерождения потребует высокой цены. Готовы вы заплатить за это 5000000 золота? ")
	Text( 5,  "Изменить на сложный путь ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1015 )
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, ClearRecord, 1015 )
	TriggerAction( 1, SetRecord, 1016 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8)
	Text( 5,  "Изменить на долгий путь ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6,  "Альбуда: Вы не можете сменить путь перерождения. Это путь для игроков сожалеющих о ранее выбранном пути. ")

	Talk( 7,  "Альбуда: Теперь вы должны работать усерднее. ")

	Talk( 8,  "Альбуда: У вас недостаточно золота или данный путь уже выбран. ")

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<КПЧеі¤Ў¤°ўІј¶аВЮ.Ао


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[µАѕЯµкЦчЎ¤Е·µФ]			--
--							--
--		86214,359121				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk49 ()
	
	
	Talk( 1,  "Оуйа: Только для вас лучшие восстанавливающие зелья! Сварены с любовью! " )
	Text( 1,  "Сделать восстанавливающее зелье ", JumpPage, 2 )

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
	Talk( 2,  "Оуйа: Выберите зелье, которое желаете приготовить " )
	Text( 2,  "Приготовить Лакричное зелье ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2,  "Приготовить Сок эльфийского фрукта ", MultiTrigger, GetMultiTrigger(), 1)

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
	Text( 2,  "Приготовить Чай Бодрячок ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3,  "Оуйа: Деньги - вперед. Вот, держите что заказывали! " )
	Talk( 4,  "Оуйа: Для получения одного Лакричного зелья необходимо 10 Целебной травы, 1 Флакон и 50 золота " )
	Talk( 5,  "Оуйа: Этот фруктовый сок сварен из отборных фруктов! Держите, и удачи. " )
	Talk( 6,  "Оуйа: Для получения Сока эльфийского сока необходимо 10 Эльфийских фруктов, 1 Стакан и 50 золота " )
	Talk( 7,  "Оуйа: Деньги вперед! Не правда ли этот чай так освежает? " )
	Talk( 8,  "Оуйа: Чтобы приготовить 1 Чай Бодрячок необходимо 10 Лепестков многоцвета, 1 Флакон и 50 золота " )

	AddNpcMission( 1007 )
	AddNpcMission( 1117 )
	AddNpcMission( 1171 )
	AddNpcMission(	1062	)
	AddNpcMission(	1229	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<µАѕЯµкЦчЎ¤Е·µФ


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[·юЧ°µкЦчЎ¤ДЄСЗ]			--
--							--
--		89463,360213				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk50 ()
	
	
	Talk( 1,  "Мойа: Я потомственный портной. Посмотрите мои вещи, возможно вас что то заинтересует. " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·юЧ°µкЦчЎ¤ДЄСЗ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ТшРРіцДЙЎ¤ЦмµПЛ№]			--
--							--
--		90637,353900				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk51 ()
	
	
	Talk( 1,  "Юдис: Привет! Добро пожаловать в Банк Шайтана. Могу ли я чем либо помочь? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "Хранилище (200 золота) ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Комбинировать ", OpenUnite)
	Text( 1, "Торг ", BuyPage)
	Talk( 2,  "Прости, но у тебя недостаточно денег на счету " )
	
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ТшРРіцДЙЎ¤ЦмµПЛ№

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ёЫОА¶УіЙФ±Ў¤рСріІЭ]		--
--							--
--		86734,366071				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk52 ()
	
	
	Talk( 1,  "Франко: Я хотел вступить во Флот, но к сожалению из за недоразумения меня отправили сюда. " )
	Text( 1,  "Ничего... ",CloseTalk )
	
	
	----------------ЧЄЦ°іЙОЄСµКЮК¦
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

	Talk(5,  "SighЎ­it's a pity that you are not a Beast Tamer. I believed that you have the ability to become one. Let me teach you how! ")
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ёЫОА¶УіЙФ±Ў¤рСріІЭ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[МъЅіЎ¤Н­Н­№Д]			--
--							--
--		90424,349871				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk53 ()
	
	
	Talk( 1,  "Смити: Интересует качественное и недорогое оружие? Посмотреть можно и бесплатно! " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ремонт ", OpenRepair )
	Text( 1,  "Вставить самоцвет ", OpenForge)
	Text( 1,  "Сделать слот ", OpenMilling)
	Text( 1,  "Вставить в аппарель ", OpenFusion)
	Text( 1,  "Улучшение аппарели ", OpenUpgrade)
	Text( 1, "Вытащить самоцвет ", OpenGetStone )
	Text( 1,  "Ничего... ",CloseTalk )


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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<МъЅіЎ¤Н­Н­№Д




--------------------------------------------------------------МъЅіµДНЅµЬ 
function mmm_talk04 ()
	Talk( 1,  "Ученик кузнеца: Привет! Расскажи про что ты хочешь узнать! " )
	Text( 1,  "Получить набор для слота ", JumpPage, 8 )
	Text( 1,  "Как делать слот? ", JumpPage, 7 )
	Text( 1,  "Как вставлять самоцветы? ", JumpPage, 2 )
	Text( 1,  "Как объединить самоцветы? ", JumpPage, 3 )
	Text( 1,  "Ничего... ",CloseTalk )
	
	Talk( 2,  "Ученик кузнеца: Для вставки самоцвета в предмете должен быть сделан слот. В один слот нельзя вставлять самоцветы разного типа, также в один предмет нельзя вставлять два одинаковых самоцвета в разные слоты. Для вставки самоцвета необходимо иметь Очищающий самоцвет. Самоцветы придают предмету новые свойства. Однако стоимость вставки самоцвета очень высока. Еще что нибудь интересует?" )
	Text( 2,  "Что такое самоцвет? ", JumpPage, 5)
	Text( 2,  "Что такое Очищающий самоцвет? ", JumpPage, 4)
	Text( 2,  "Какова вероятность успешности вставки самоцвета? ", JumpPage, 6)
	
	Talk( 3,  "Ученик кузнеца: Для объединения двух самоцветов в один более высокого уровня вам потребуется Объединяющий свиток. Единственный человек, который умеет объединять самоцветы - Бакалейщик Амос из Шайтана. " )
	
	Talk( 4,  "Ученик кузнеца: Очищающий самоцвет это катализатор, без которого невозможно вставить самоцвет в слот. Уровень Очищающего самоцвета должен быть равен уровню вставляемого самоцвета. Очищающий самоцвет можно получить выполняя некоторые задания или при убийстве монстров. " )

	Talk( 5,  "Ученик кузнеца: Самоцветы при вставке в предмет дают ему новые свойства. Есть несколько основных типов самоцыетов: огонь - означает атаку, вода - защиту, а свет - духовный самоцвет. Самоцветы можно получить за некоторые задания или при убийстве монстров. " )

	Talk( 6,  "Ученик кузнеца: Каждый уровень вставляемого самоцвета повышает уровень предмета на один. Чем выше уровень предмета, тем ниже шанс вставки самоцвета. Чтобы повысить шанс вставки используются особые катализаторы. При провале предмет теряет свой уровень и получает первоначальный. Максимально возможный уровень предмета - 27. " )
	
	Talk( 7,  "Ученик кузнеца: Для изготовления одного слота вам потребуется 1 Катализатор снаряжения и 1 Стабилизатор снаряжения. Их можно получить у некоторых торговцев или обменять на расписку. " )

	Talk(8, "Ученик кузнеца: Чтобы получить набор для слота вам требуется как минимум 2 свободных слота в инвентаре. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,5823, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 5823, 1 )
	TriggerAction( 1, GiveItem, 0890, 1, 4 )
	TriggerAction( 1, GiveItem, 0891, 1, 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text(8, "Получить набор для слота " ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 9,  "Ученик кузнеца: Простите но у вас нет расписки на набор для слота, или двух свободных мест в инвентаре. " )

end

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[АтДИ]				--
--							--
--		88307,352019				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk54 ()
	
	
	Talk( 1,  "Лена: Привет! Я жена кузнеца! " )
	Text( 1,  "Изготовить краситель ", JumpPage, 2)

----------------µчЕдЗаЙ«Иѕ·ўјБ
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
	Talk( 2,  "Лена: Будь модным, будь красивым и тебя полюбят! С моими красителями для волос это так просто! " )
	Text( 2,  "Изготовить Голубой краситель ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Лена: Ну как? Этот краситель вам понравился? " )
	Talk( 4,  "Лена: Для получения Голубого красителя необходимо 5 Голубых красок, 1 Особый газ, 1 Радужный стакан и 200 золота. " )
	
	AddNpcMission	(1146)
	AddNpcMission	(155)
	AddNpcMission	(156)
	AddNpcMission	(157)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<АтДИ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ФУ»хЙМИЛЎ¤°¬Д«]			--
--							--
--		84040,358567				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk55 ()
	
	
	Talk( 1,  "Амос: Только у меня самые последние разработки. Даже не трудитесь смотреть в другом месте. " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Комбинация самоцветов ", OpenUnite)
	Text( 1,  "Изготовить Маску реальности ",JumpPage, 2 )
	Text( 1,  "Ничего... ",CloseTalk )

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
	--baby--Йъ»ојјДЬКйLv1
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
	Talk( 2,  "Амос: Для изготовления Маски реальности необходимо 1 Эльфийскую печать, 10000 золота и 10 штук любых ресурсов 3 уровня. " )
	Text( 2,  "Обменять Осколок кости на Маску реальности ", MultiTrigger, GetMultiTrigger(), 1)

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
	Text( 2,  "Обменять Руду на Маску реальности ", MultiTrigger, GetMultiTrigger(), 1)

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
	Text( 2,  "Обменять Дерево на Маску реальности  ", MultiTrigger, GetMultiTrigger(), 1)

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
	Text( 2,  "Обменять Сашими на маску реальности ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Амос: Получите и распишитесь. " )
	Talk( 4,  "Амос: У вас нет всех необходимых ингридиентов или свободных мест в инвентаре. ВОзможно также у вас заблокирован инвентарь. " )

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ФУ»хЙМИЛЎ¤°¬Д«

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ВГµкАП°еЎ¤№юёщ]			--
--							--
--		81035,349813				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk56 ()
	
	
	Talk( 1,  "Мокен: Привет! Не где остановиться? Я могу предложить чудесную комнату для двоих! " )
	Text( 1,  "Сделать десерт ", JumpPage, 2)


--------------------µчЕдОеІКБрБ§Ц­
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
	Talk( 2,  "Мокен: Мой бизнес в этом году просто превосходен. Я уже распродал большую часть товара! " )
	Text( 2,  "Смешать Сок радужных фруктов ",MultiTrigger, GetMultiTrigger(), 1)

----------------µчЕдЧЫєП№ыЦ­
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
	Text( 2,  "Смешать Фруктовый коктейль ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Мокен: Напиток что вы заказали готов! Приятного времяпровождения! " )
	Talk( 4,  "Мокен: Простите, но для приготовления 1 Сока радужных фруктов необходимо 4 Радужных фрукта, 1 Радужный стакан и 50 золота. " )
	Talk( 5,  "Мокен: Простите, но для изготовления 1 Фруктового коктейля необходимо 1 Сок эльфийского фрукта, 1 Чай из красных фиников, 1 Грибной суп, 1 Сок из плодов дурмана, 1 Радужный стакан и 50 золота. " )
	AddNpcMission	(1138)
	AddNpcMission	(1161)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ВГµкАП°еЎ¤№юёщ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[»¤КїРЎЅгЎ¤АјАј]			--
--							--
--		87954,356282				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk57 ()
	
	
	Talk( 1,  "Ленди: Привет, я начинающая медсетсра города Шайтана. К сожалению пока я еще учусь, поэтому не могу помочь вам в лечении. Если вам нужна помощь, то обратитесь к Целителю Шала. Он находится в точке (903,3646) " )
	AddNpcMission	(1129)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤КїРЎЅгЎ¤АјАј

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[єЈµБЎ¤µВїЛ]			--
--							--
--		80262,364842				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk58 ()
	
	
	Talk( 1,  "Декки: Привет, я лидер пиратов-оборотней. В настоящий момент я на 7-ом месте в списке самых разыскиваемых пиратов флотом. Почему я тебе это рассказываю? Я не боюсь флота! Хехе " )
	AddNpcMission	(1125)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈµБЎ¤µВїЛ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[РВКЦЦёµјЎ¤А­Лї±М]			--
--							--
--		87614,357250				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk59 ()
	Talk( 1,  "Рислина: Привет! Я люблю болтать и совать свой нос в чужие неприятности. Если у вас есть неприятности - ищите меня. " )
	Text( 1,  "Звезда Единства ", JumpPage, 31 )
	Text( 1,  "Я хотел бы кое о чем спросить ", JumpPage, 4 )
	Text( 1,  "Я хотел бы узнать о классах и атрибутах ", JumpPage, 11 )
	Text( 1,  "Я хочу узнать координаты монстров ", JumpPage, 30 )

	Talk( 4,  "Рислина: Город Шайтан является центром магии. Здесь также изготавливается лучшее оружие. Думаю вам лучше самим пройтисб и осмотреть наш чудесный город. " )
	Text( 4,  "Узнать об оружейном магазине ", JumpPage, 5 )
	Text( 4,  "Узнать об магазине доспехов ", JumpPage, 7 )
	Text( 4,  "Узнать о магазине предметами ", JumpPage, 8 )
	Text( 4,  "Узнать о портальщиках ", JumpPage, 9 )
	Text( 4,  "Я чувствую себя не очень хорошо, как найти доктора? ", JumpPage, 10 )

	Talk( 5,  "Рислина: У шайтанского кузнеца всегда самое лучшее оружие. Ищите его магазин в верхнем право углу города. " )
	Text( 5,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 5,  "Спасибо, я все понял ", CloseTalk )

--	Talk( 6,  "Look for me again if there is anything you don't understand ", CloseTalk )

	Talk( 7,  "Рислина: Если вам нужны отличные доспехи, то ваш выбор - портной Мойа! Его магазин вы можете найти чуть ниже фонтана, справа. " )
	Text( 7,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 7,  "Спасибо, я все понял ", CloseTalk )

	Talk( 8,  "Рислина: Нужны полезные предметы? Продавец инструментов Оуйа в западном углу этого города. " )
	Text( 8,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 8,  "Спасибо, я все понял ",  CloseTalk )

	Talk( 9,  "Рислина: Если хотите попасть в другой крупный город этого мира - вам в помощь портальщик Шайтана. Он также может записать для вас здесь точку возвращения. Ищите его у выхода из города. " )
	Text( 9,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 9,  "Спасибо, я все понял ",  CloseTalk )

	Talk( 10,  "Рислина: Вы действительно больны? Медсестра находится ниже фонтана. " )
	Text( 10,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 10,  "Спасибо, я все понял ",  CloseTalk)


	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 10 )
	TriggerAction( 1, SetFlag, 706, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11,  "Рислина: ЧТобы стать хорошим игроком вы должны знать хотя бы минимальные понятия о различных классах и атрибутах. Хотите знать больше? " )
	Text( 11,  "Узнать о классах ", JumpPage, 12)
	Text( 11,  "Узнать о атрибутах ", JumpPage, 13)
	--Text( 11,  "Узнать о классах ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 20 )
	TriggerAction( 1, SetFlag, 706, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11,  "Узнать о других атрибутах ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12,  "Рислина: Здесь существует 4 основных базовых класса. Каждый из них удовлетворяет своей особой цели в игре. Про какой класс вы хотели бы узнать? " )
	Text( 12,  "Узнать о мечниках ", JumpPage, 14 )
	Text( 12,  "Узнать о охотниках ", JumpPage, 15 )
--	Text( 12,  "Regarding Sailor ", JumpPage, 16 )
	Text( 12,  "Узнать о исследователях ", JumpPage, 17 )
	Text( 12,  "Узнать о знахарке ", JumpPage, 18 )
--	Text( 12,  "Regarding Artisan ", JumpPage, 19 )
--	Text( 12,  "Regarding Merchant ", JumpPage, 20 )

	Talk( 13,  "Рислина: Всего существует 5 базовых атрибута. Каждый атрибут может иметь максимальное значение в 100. У новичка все атрибуты равны 5. Каждый уровень вам будет выдаваться еще 1 пункт атрибута и навыка. В начале игры у вас есть 5 свободных пункта, которые вы можете распределить по своим предпочтениям. " )
	Text( 13,  "Узнать о силе ", JumpPage, 21 )
	Text( 13,  "Узнать о ловкости ", JumpPage, 22 )
	Text( 13,  "Узнать о телосложении ", JumpPage, 23 )
	Text( 13,  "Узнать о духе ", JumpPage, 24 )
	--Text( 13,  "Regarding Luck ", JumpPage, 25 )
	Text( 13,  "Узнать о точности ", JumpPage, 26 )

	Talk( 14,  "Рислина: Мечники имеют самое высокое физическое сопротивление в этой игре. Мечником может стать только Ланс, Филисс или Карциз. Если хотите стать мечником, то обратитесь к Стражнику Питеру в Аргенте. " )
	Text( 14,  "Узнать о других классах ", JumpPage, 12)
	Text( 14,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 14,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 15,  "Рислина: Охотники единственный класс, способный использовать дистанционное оружие в бою. Также в дальнейшем они могут научиться использовать огнестрельное оружие. Только Ланс или Филисс могут стать охотником. Если хотите стать охотником, то ищите Стражника Рея в Ледыне. " )
	Text( 15,  "Узнать о других классах ", JumpPage, 12)
	Text( 15,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 15,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 16,  "Рислина: Sailor is the strongest class in the sea. It is still unreleased in current version. " )
	Text( 16,  "Узнать о других классах ", JumpPage, 12)
	Text( 16,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 16,  "Спасибо, я все понял ", JumpPage, 27)
	
	Talk( 17,  "Рислина: Исследователи самый лучший класс для покорителей моря. Только Ами, Филис или Ланс могут стать исследователем. если хотите стать исследователем, то ищите малыша Дэниеля в Аргенте. " )
	Text( 17,  "Узнать о других классах ", JumpPage, 12)
	Text( 17,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 17,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 18,  "Рислина: Знахарки это последовательницы культа Богини Кары. За это им была дарована огромная магическая сила. Знахарки способны исцелять людей. Только Филисс или Ами могут стать знахарками. Если хотите стать знахаркой - ищите Верховного жреца Геньона в Шайтане. " )
	Text( 18,  "Узнать о других классах ", JumpPage, 12)
	Text( 18,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 18,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 19,  "Resline: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version. " )
	Text( 19,  "Узнать о других классах ", JumpPage, 12)
	Text( 19,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 19,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 20,  "Resline: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version. " )
	Text( 20,  "Узнать о других классах ", JumpPage, 12)
	Text( 20,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 20,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 21,  "Рислина: От силы зависит уровень вашей физической атаки. " )
	Text( 21,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 21,  "Узнать о других классах ", JumpPage, 12)
	Text( 21,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 22,  "Рислина: Ловкость влияет на скорость атаки и уклонение. " )
	Text( 22,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 22,  "Узнать о других классах ", JumpPage, 12)
	Text( 22,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 23,  "Рислина: Телосложение влияет на уровень вашей жизни и на защиту. " )
	Text( 23,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 23,  "Узнать о других классах ", JumpPage, 12)
	Text( 23,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 24,  "Рислина: Дух влияет на уровень вашей маны, на магическую защиту и на эффект некоторых умений. " )
	Text( 24,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 24,  "Узнать о других классах ", JumpPage, 12)
	Text( 24,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 25,  "Рислина:  Luck increases Critical Rate and Combining Success Rate " )
	Text( 25,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 25,  "Узнать о других классах ", JumpPage, 12)
	Text( 25,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 26,  "Рислина: Точность влияет на уровень дистанционной атаки и на шанс урона. " )
	Text( 26,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 26,  "Узнать о других классах ", JumpPage, 12)
	Text( 26,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 27,  "Рислина: Хорошо. Обращайся если еще возникнут вопросы. ")

	Talk( 28,  "Рислина: Я вижу вы уже неплохо разбираетесь в основных значениях. теперь попробуйте пообщаться с другими людьми и выполнять их поручения. " )
	Text( 28,  "Я бы хотел кое о чем спросить ", JumpPage, 4 )
	Text( 28,  "Узнать о классах и атрибутах ", JumpPage, 11 )
	Text( 28,  "Спасибо, я все понял ",  CloseTalk)

	Talk( 29,  "Рислина: Очень хорошо. Вы дотигли 9 уровня и можете начать задумываться о дальнейшей профессии " )
	Text( 29,  "Я бы хотел кое о чем спросить ", JumpPage, 4 )
	Text( 29,  "Узнать о классах и атрибутах ", JumpPage, 11 )
	Text( 29,  "Спасибо, я все понял ",  CloseTalk )

	Talk( 30,  "Рислина: Чтобы узнать координаты монстров вам необходимо обратиться к Пьянице Энтони в баре Аргента. " )

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

	Talk( 31,  "Рислина: Звезда Единства - предмет из другого мира. При ее использовании она начинает копить получаемый вами опыт. В некоторых условиях она может неожиданно отдать весь опыт обратно. Кроме того по достижении 41 уровня вы можете обменять Звезду Единства на экипировку 50 уровня. Получить Звезду Единства может любой игрок не старше 41 уровня. " )
	Text( 31,  "Получить Звезду Единства ",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31,  "Обменять Звезду Единства ",JumpPage, 32 )

	Talk( 32,  "Рислина: Если у вас есть Звезда Единства, то вы можете обменять ее на экипировку 50 уровня для своего класса. Вас это интересует? ")
	Text( 32,  "Получить экипировку ", Transfer_TeamStar, 1)

	Talk( 6,  "Рислина: Прошу прощения, но вы не подходите по условию. " )
	
	--InitTrigger()
	---------------------НжјТі¬№э6ј¶НкіЙ№эЙЄ°ІµДХЅ¶·СµБ·ИООс
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<РВКЦЦёµјЎ¤А­Лї±М


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[єЈѕь°мКВґ¦№ЩФ±Ў¤°¬Оў¶ыЙЩРЈ]		--
--							--
--		86507,364804				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk61 ()
	
	
	Talk( 1,  "Адмирал Ник: Привет! Я первая девушка-офицер в этих местах! " )
	AddNpcMission	(1126)
	AddNpcMission	(98)
	AddNpcMission	(99)
	AddNpcMission	(150)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈѕь°мКВґ¦№ЩФ±Ў¤°¬Оў¶ыЙЩРЈ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[Йіб°іЗЙМ»б»бі¤Ў¤№ЕАы»ч]		--
--							--
--		87362,354566				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk62 ()
	
	
	Talk( 1,  "Гилье: Я люблю собирать странные вещи. Кроме того я всегда ищу товар по более низкой цене и продаю по более высокой. Меня можно назвать самым находчивым продавцом. " )
	Text( 1,  "До свидания ",CloseTalk )
	AddNpcMission	(1144)

	-----МъИЛБщПо
	AddNpcMission ( 6115 )
	AddNpcMission ( 6116 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Йіб°іЗЙМ»б»бі¤Ў¤№ЕАы»ч

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[В·ИЛЎ¤Йєєчіж]		--
--							--
--		84634,349945				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk63 ()
	
	
	Talk( 1,  "Вово: Малышу Дэниелю нельзя доверять. Я переехал сюда только чтобы быть от него подальше. " )

--	AddNpcMission ( 6028 )
--	AddNpcMission ( 6029 )
--	AddNpcMission ( 6054 )
--	AddNpcMission ( 6055 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤Йєєчіж

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[РЎСтЎ¤НюАы]			--
--							--
--		89875,368331				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk64 ()
	
	
	Talk( 1,  "Уоли: Привет! Я первая в мире говорящая овечка! Бееее " )

	AddNpcMission ( 233 )
	---------------°ЧСт
	AddNpcMission	(5565)
	AddNpcMission	(5566)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<РЎСтЎ¤НюАы

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[»бі¤ЦъАнЎ¤МбЛѕГж°ь]		--
--							--
--		87171,354774				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk65 ()
	
	
	Talk( 1,  "Тинтин: Мы всегда обещаем, но никогда не выполняем. " )
--	AddNpcMission ( 905 )
	----------------ЦЬЛк°ь
	AddNpcMission ( 5604 )
	AddNpcMission ( 5605 )
	AddNpcMission ( 5606 )
	AddNpcMission ( 5607 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»бі¤ЦъАнЎ¤МбЛѕГж°ь

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[В·ИЛЎ¤ТТ]				--
--							--
--		79792,355469				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk66 ()
	
	
	Talk( 1,  "Яй: Святая жрица в храме города Шайтана. Она благославляет своих приверженцов. " )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤ТТ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[Йі·ЛЎ¤ЙБ№вПА°ЛКА]			--
--							--
--		108242,310135				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk67 ()
	
	
	Talk( 1,  "Супермум: Я великий потомок супермена! Я буду владеть всей пустыней с помощью своей супер силы! (О Боже, он опять грезит наяву) " )
	
	AddNpcMission ( 237 )
	AddNpcMission ( 238 )
	AddNpcMission ( 239 )
	AddNpcMission ( 240 )
	AddNpcMission ( 248 )
	AddNpcMission ( 557 )
--------eleven
	AddNpcMission (5011 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Йі·ЛЎ¤ЙБ№вПА°ЛКА


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ИЛУгНхЧУЎ¤№юЙіМШ]			--
--							--
--		125471,349171				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk68 ()
	
	
	Talk( 1,  "Хассан: Хмм.. На днях я начал чувствовать здесь какой то особый запах. Как хочется узнать что же это такое... " )
	Text( 1,  "Комбинировать ", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1785, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1785, 10 )
	TriggerAction( 1, GiveItem, 1786, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2,  "Хассан: Кусок звенящего кристалла имеет небольшую ценность. Хотели бы вы объединить его в Звенящий кристалл? " )
	Text( 2,  "Объединить Звенящий кристалл ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Хассан: Ваш Звенящий кристалл готов. Приходите еще! " )
	Talk( 4,  "Хассан: Для создания Звенящего кристалла необходимы 10 Кусков звенящего кристалла и 2000 золота. " )
	-------------eleven
	AddNpcMission ( 5010)
	AddNpcMission ( 5014)
	AddNpcMission ( 5033)
	AddNpcMission ( 5034)
	---------------°ЧСт
	AddNpcMission	(5553)
	AddNpcMission	(5554)

	AddNpcMission	(6258)
	AddNpcMission	(6259)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ИЛУгНхЧУЎ¤№юЙіМШ


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[АЦЖчЧЁјТЎ¤ЙіГ·¶э]			--
--							--
--		66465,609367				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk69 ()
	
	
	Talk( 1,  "Шамель: Привет! Я местный музыкант. " )
---------------°ЧСт
	AddNpcMission	(5559)
	AddNpcMission	(5560)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<АЦЖчЧЁјТЎ¤ЙіГ·¶э


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[КҐЕ®Ў¤°¬ґп]			--
--							--
--		86248,330381				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk70 ()
	
	
	Talk( 1,  "Ада: Здравствуй мой друг. Пусть Кара благославляет твой путь. Я Верховная жрица Ада. " )

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<КҐЕ®Ў¤°¬ґп

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[В·ИЛЎ¤·ЁАы¶ы]			--
--							--
--		93176,352977				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk71 ()
	
	
	Talk( 1,  "Файру: Знаете ли вы что у кактуса тоже бывают цветы? У них такой чудесный запах! " )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤·ЁАы¶ы

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[№¤»б»бі¤Ў¤·рИр]			--
--							--
--		83171,354853				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk72 ()
	
	Talk( 1,  "Форлан: Сила в единстве! Хотите бросить вызов одной из 3 самых сильных гильдий? Хотите править этим миром? " )
	Text( 1,  "Топ 3 гильдий ", ListChallenge)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<№¤»б»бі¤Ў¤·рИр

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[МъЅіЎ¤±©±щ]			--
--							--
--		134423,52988				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk73 ()
	
	
	Talk( 1,  "Бэш: Добро пожаловать! Я продаю все виды оружия! " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ремонт ", OpenRepair)
	Text( 1,  "Вставить самоцвет ", OpenForge)
	Text( 1,  "Сделать слот ", OpenMilling)
	Text( 1,  "Вставить в аппарель ", OpenFusion)
	Text( 1,  "Улучшение аппарели ", OpenUpgrade)
	Text( 1,  "Ничего ",CloseTalk )

	Talk( 2,  "Бэш: Вставить самоцвет? Только кузнец Шайтана знает как это делать. " )

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<МъЅіЎ¤±©±щ

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[ФУ»хЙМИЛЎ¤І®Ві]			--
--							--
--		135671,48320				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk74 ()
	Talk( 1,  "Палпин: Привет! Я бакалейщик Ледыни. Ищи меня когда достигнешь 10 уровня, я дам тебе задание кое что найти. За это я хорошо заплачу! " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )
	Text( 1,  "Изготовить Маску реальности ",JumpPage, 2 )

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
	--baby--Йъ»ојјДЬКйLv1
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
	Talk( 2,  "Палпин: Для изготовления Маски реальности необходимо 1 Эльфийскую печать, 10000 золота и 10 любых ресурсов 3 уровня. " )
	Text( 2,  "Обменять Осколок кости на Маску реальности ", MultiTrigger, GetMultiTrigger(), 1)

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
	Text( 2,  "Обменять Руду на Маску реальности ", MultiTrigger, GetMultiTrigger(), 1)

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
	Text( 2,  "Обменять Дерево на Маску реальности  ", MultiTrigger, GetMultiTrigger(), 1)

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
	Text( 2,  "Обменять Сашими на Маску реальности ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Палпин: Вот, держите что заказали. " )
	Talk( 4,  "Palpin: Вы не имеете всех необходимых ингридиентов  или у вас недостаточно свободного места в инвентаре. Также возможно что ваш инвентарь заблокирован. " )
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ФУ»хЙМИЛЎ¤І®Ві

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[Т©µкАП°еЎ¤ґпєХ]			--
--							--
--		135298,49926				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk75 ()
	
	
	Talk( 1,  "Дайша: Привет! У меня лучшие травы во всей Ледыни! " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )
	
	Talk( 2,  "Daisha: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Argent or Shaitan by using the teleporter. " )
	Text( 2,  "Торг ", BuyPage )
	Text( 2,  "Ничего... ",CloseTalk )

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

	---------------------НжјТі¬№э9ј¶
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Т©µкАП°еЎ¤ґпєХ


----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[»¤КїРЎЅгЎ¤°ІДЭ]			--
--							--
--		131725,50169				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk76 ()
	
	
	Talk( 1,  "Анна: Првиет! Я медстестра Анна! Поскольку я пока нахожусь на обучении я не могу вам ничем помочь. " )
	AddNpcMission	(1018)
	AddNpcMission	(1073)
	AddNpcMission	(1128)
	AddNpcMission	(1181)
	AddNpcMission(	1236	)
	



	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤КїРЎЅгЎ¤°ІДЭ

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[РВКЦЦёµјЎ¤°ІзчВ¶СЗ]		--
--							--
--		131577,50700				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk77 ()
	
	Talk( 1,  "Анжела: Привет! Я наставница Ледыни. Я буду учить вас некоторым основным знаниям. Наслаждайтесь вечной зимой! " )
	Text( 1,  "Звезда Единства ", JumpPage, 31 )
	Text( 1,  "Я бы хотел кое о чем спросить ", JumpPage, 4 )
	Text( 1,  "Узнать о классах и атрибутах ", JumpPage, 11 )
	Text( 1,  "Узнать координаты монстров ", JumpPage, 30 )
	Text( 1,  "Спасибо, я все понял ", CloseTalk )
--	Text( 1,  "Спасибо, я все понял ", CloseTalk )


	Talk( 4,  "Анжела: Ледынь это место, где вечная зима. Чтобы тут выжить надо знать где найти нужные вещи. " )
	Text( 4,  "Узнать об оружейном магазине ", JumpPage, 5 )
	Text( 4,  "Узнать о магазине доспехов ", JumpPage, 7 )
	Text( 4,  "Узнать о магазине предметов ", JumpPage, 8 )
	Text( 4,  "Узнать о магазине портальщиках ", JumpPage, 9 )
	Text( 4,  "Узнать о магазине лечении ", JumpPage, 10 )

	Talk( 5,  "Анжела: Отсюда двигайтесь на юг, а затем сверрните направо на перекрестке. Там вы увидите нашего кузнеца. " )
	Text( 5,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 5,  "Спасибо, я все понял ", CloseTalk )

--	Talk( 6,  "Look for me again if there is anything you don't understand ", CloseTalk )

	Talk( 7,  "Анжела: Чтобы купить доспехи ищите нашего портного. Он очень добрый человек. Находится в правой части города. " )
	Text( 7,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 7,  "Спасибо, я все понял ", CloseTalk )

	Talk( 8,  "Анжела: Купить предметы вы можете у бакалейщика нашего города. У него есть все для путешевствия. Он находится в западном углу этого города. " )
	Text( 8,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 8,  "Спасибо, я все понял ", CloseTalk )

	Talk( 9,  "Анжела: Идите по дороге на юг и вы увидите красивую леди стоящую там. Это наша портальщица. С помощью нее вы можете переместиться в любой крупный город этого мира. Также вы можете записать у нее точку возвращения. " )
	Text( 9,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 9,  "Спасибо, я все понял ", CloseTalk )

	Talk( 10,  "Анжела: Медсестра - девушка стоящая с другой стороны фонтана. Не забудьте найти ее если вы больны. " )
	Text( 10,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 10,  "Спасибо, я все понял ", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11,  "Анжела: Вам как новому игроку необходимо очень много узнать. Я готовоа вам в этом помочь. " )
	Text( 11,  "Узнать о классах ", JumpPage, 12)
	Text( 11,  "Узнать о других атрибутах ", JumpPage, 13)

	--Text( 11,  "Узнать о классах ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11,  "Узнать о других атрибутах ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12,  "Анжела: Всего существует 4 базовых класса. Каждый имеет свои особенности. " )
	Text( 12,  "Узнать о мечниках ", JumpPage, 14 )
	Text( 12,  "Узнать об охотниках ", JumpPage, 15 )
--	Text( 12,  "Regarding Sailor ", JumpPage, 16 )
	Text( 12,  "Узнать об исследователях ", JumpPage, 17 )
	Text( 12,  "Узнать об знахарках ", JumpPage, 18 )
--	Text( 12,  "Regarding Artisan ", JumpPage, 19 )
--	Text( 12,  "Regarding Merchant ", JumpPage, 20 )
	Text( 12,  "Я все понял. Хочу узнать кое что другое. ", JumpPage, 11 )

	Talk( 13,  "Анжела: Всего существует 5 базовых атрибута. Каждый атрибут может иметь максимальное значение в 100. У новичка все атрибуты равны 5. Каждый уровень вам будет выдаваться еще 1 пункт атрибута и навыка. В начале игры у вас есть 5 свободных пункта, которые вы можете рас " )
	Text( 13,  "Узнать о силе ", JumpPage, 21 )
	Text( 13,  "Узнать о ловкости ", JumpPage, 22 )
	Text( 13,  "Узнать о телосложении ", JumpPage, 23 )
	Text( 13,  "Узнать о духе ", JumpPage, 24 )
	--Text( 13,  "Regarding Luck ", JumpPage, 25 )
	Text( 13,  "Узнать о точности ", JumpPage, 26 )
	Text( 13,  "Я все понял. Хочу узнать кое что другое. ", JumpPage, 11 )

	Talk( 14,  "Мечники имеют самое высокое физическое сопротивление в этой игре. Мечником может стать только Ланс, Филисс или Карциз. Если хотите стать мечником, то обратитесь к Стражнику Питеру в Аргенте. " )
	Text( 14,  "Узнать о других классах ", JumpPage, 12)
	Text( 14,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 14,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 15,  "Анжела: Охотники это единственный класс использующий оружие с дистанционной атакой. Охотником может стать только Филисс или Ланс. Чтобы стать охотником необходимо обратится к мечнику Рею в Ледыни. " )
	Text( 15,  "Узнать о других классах ", JumpPage, 12)
	Text( 15,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 15,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 16,  "Анжела: Sailor is the strongest class in the sea. It is still unreleased in current version. " )
	Text( 16,  "Узнать о других классах ", JumpPage, 12)
	Text( 16,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 16,  "Спасибо, я все понял ", JumpPage, 27)
	
	Talk( 17,  "Анжела: Исследователь это лучший класс для морских путешевствий. Исследователем могут стать только Филисс, Ланс или Ами. Чтобы стать исследователем обратись к Малышу Дэниэлю в Аргенте. " )
	Text( 17,  "Узнать о других классах ", JumpPage, 12)
	Text( 17,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 17,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 18,  "Анжела: Гербалисты это приверженцы культа Богини Кары, за это им дарована магическая сила. Гербалистом может стать только Филисс или Ами. Чтобы стать Гербалистом ищи Верховного жреца Геньона в Шайтане. " )
	Text( 18,  "Узнать о других классах ", JumpPage, 12)
	Text( 18,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 18,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 19,  "Анжела: Анжела: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version. " )
	Text( 19,  "Узнать о других классах ", JumpPage, 12)
	Text( 19,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 19,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 20,  "Анжела: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version. " )
	Text( 20,  "Узнать о других классах ", JumpPage, 12)
	Text( 20,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 20,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 21,  "Анжела: Сила влияет на физический урон. " )
	Text( 21,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 21,  "Узнать о других классах ", JumpPage, 12)
	Text( 21,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 22,  "Анжела: Ловкость влияет на уклонение и скорость атаки. " )
	Text( 22,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 22,  "Узнать о других классах ", JumpPage, 12)
	Text( 22,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 23,  "Анжела: Телосложение влияет на количество жизни и на защиту. " )
	Text( 23,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 23,  "Узнать о других классах ", JumpPage, 12)
	Text( 23,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 24,  "Анжела: Дух влияет на количество маны, магическую защиту и урон от некоторых скиллов. " )
	Text( 24,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 24,  "Узнать о других классах ", JumpPage, 12)
	Text( 24,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 25,  "Анжела: Luck increases Critical strike and Combine success rate " )
	Text( 25,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 25,  "Узнать о других классах ", JumpPage, 12)
	Text( 25,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 26,  "Анжела: Точность влияет на шанс урона и силу дистанционной атаки. " )
	Text( 26,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 26,  "Узнать о других классах ", JumpPage, 12)
	Text( 26,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 27,  "Анжела: Отлично! Ищи меня если что то понадобится. ")

	Talk( 28,  "Анжела: Очень хорошо! Вы очень хорошо увоили основы. Попробуйте теперь пообщаться с другими жителями и постараться найти работу. " )
	Text( 28,  "Я бы хотел кое о чем спросить ", JumpPage, 4 )
	Text( 28,  "Узнать о классах и атрибутах ", JumpPage, 11 )
	Text( 28,  "Спасибо, я все понял ",  CloseTalk )

	Talk( 29,  "Анжела: Хорошо! Теперь вы можете определится с будующей профессией и обратится к тренеру своего класса. " )
	Text( 29,  "Я бы хотел кое о чем спросить ", JumpPage, 4 )
	Text( 29,  "Узнать о классах и атрибутах ", JumpPage, 11 )
	Text( 29,  "Спасибо, я все понял ",  CloseTalk)

	Talk( 30,  "Анжела: Чтобы узнать координаты монстров обратись к Пьянице Энтони в Баре Аргента. " )

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

	Talk( 31,  "Анжела: Звезда Единства - таинственный предмет из другого мира. При ношении способна накапливать опыт хозяина, а затем при некоторых условиях отдавать накопленное количество опыта назад. Кроме того вы можете обменять Звезду Единства на экипировку своего класса на 50 уровень когда достигнете 41 уровня. " )
	Text( 31,  "Получить Звезду Единства ",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31,  "Обмен Звезды Единства ",JumpPage, 32 )

	Talk( 32,  "Анжела: Спасибо за использование наших продуктов. Вы можете обменять Звезду Единства на экипировку своего класса на 50 уровень. Вас это интересует? ")
	Text( 32,  "Получить оружие класса ", Transfer_TeamStar, 1)

	Talk( 6,  "Анжела: Прошу прощения, но вы не подходите по требованиям. " )

	--InitTrigger()
	---------------------НжјТі¬№э6ј¶НкіЙ№эЙЄ°ІµДХЅ¶·СµБ·ИООс
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<РВКЦЦёµјЎ¤°ІзчВ¶СЗ


----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[±щАЗ±¤ЅЈКїЎ¤АЧЕ·]		--
--							--
--		136573,57078				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk78 ()
	
	-------------------ЧЄЦ°Л«ЅЈ
	Talk( 1,  "Рэй: Привет! Я наемный охотник, люблю охотится за нежитью. Если вас это интересует, то могу показать несколько хороших мест. " )

		----------------ЧЄЦ°іЙОЄБФИЛ
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

	----------------ЧЄЦ°іЙОЄѕС»чКЦ
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

-------------------ЧЄБФИЛЕР¶П
	--TriggerCondition( 1, LvCheck,  "> ", 9 )
	----TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck,  "> ", 9 )
	--TriggerCondition( 2, IsCategory, 3 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

----------------ѕС»чКЦ

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


	-----МъИЛБщПо
	AddNpcMission ( 6125 )


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<±щАЗ±¤ЅЈКїЎ¤АЧЕ·

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[±щАЗ±¤ЙМ»б»бі¤Ў¤°¬БўїЛ]		--
--							--
--		129486,49842				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk79 ()
	
	
	Talk( 1,  "Рэйно: Привет! Я председатель Ледыни, самый богатый человек города. Я везде где есть деньги. " )
	Text( 1,  "Сделать восстанавливающее зелье ", JumpPage, 5)

	--------------------ЕЪЦЖМбЙсјБ
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
	Talk( 5,  "Рэйно: Те травы, что продают целители самые обычные. Только я продаю самые волшебные травы! " )
	Text( 5,  "Сделать Агрипнотик ",MultiTrigger, GetMultiTrigger(), 1)

	----------------єПіЙД§»ГТ©Л®
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
	Text( 5,  "Сделать Волшебное зелье ",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6,  "Рэйно: Вот то, что вы заказывали. " )
	Talk( 7,  "Рэйно: Чтобы сделать 1 Агрипнотик необходимо 2 Тиамарина, 2 Загадочных фрукта, 1 Стакан и 200 золота. " )
	Talk( 8,  "Рэйно: Чтобы сделать 1 Волшебное зелье необходимо 1 Лакричное зелье, 1 Чай Бодрячок, 1 Чудо-мазь, 1 Брикет снежной травы, 1 Стакан и 200 золота. " )

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ЙМ»б»бі¤Ў¤°¬БўїЛ

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[±щАЗ±¤№уЧеЎ¤Вн¶ыРЮЛ№]		--
--							--
--		134652,45141				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk80 ()
	
	
	Talk( 1,  "Мас: История моей семьи началась также давно как основали замок Ледыни. Здесь все меня знают и уважают. " )
	Text( 1,  "Создать пиратскую гильдию ",JumpPage, 2 )
	Text( 1,  "Ничего... ",CloseTalk )


	Talk( 2,  "Мас: Хохо.. Хотите создать пиратскую гильдию? Думаю вам это по силам. " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerAction( 1, CreateGuild, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2,  "Создать пиратскую гильдию ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Мас: Стать лидером пиратской гильдии не так просто. Вам нужно принести 1 камень клятвы и 100000 золота. " )


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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<±щАЗ±¤№уЧеЎ¤Вн¶ыРЮЛ№

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[ТшРРіцДЙЎ¤ІјАцДИ]		--
--							--
--		136058,51931				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk81 ()
	
	
	Talk( 1,  "Белинда: Добро пожаловать в банк Ледыни! ЧЕм я могу помочь? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "Хранилище (200 золотых) ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Комбинировать ", OpenUnite)
	Text( 1, "Торг ", BuyPage)
	Talk( 2,  "Простите, но у вас недостаточно денег для входа в хранилище. " )
	
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ТшРРіцДЙЎ¤ІјАцДИ

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[ѕЖ°Й·юОсФ±Ў¤°Е°ЕА­]		--
--							--
--		131083,53031				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk82 ()
	
	
	Talk( 1,  "Барбара: Здравствуйте! Не найдется ли у вас интересных историй для меня? " )
	Text( 1,  "Сделать краситель ", JumpPage, 2)
	Text( 1,  "Сделать сок ", JumpPage, 6)

-----------µчЕдА¶Й«Иѕ·ўјБ
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
	Talk( 2,  "Барбара: Вы столкнулись с чем то интересным? Сообщите мне! " )
	Text( 2,  "Сделать Голубой краситель ", MultiTrigger, GetMultiTrigger(), 1)
-------------------------µчЕдЧПЙ«Иѕ·ўјБ
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
	Text( 2,  "Сделать Пурпурный краситель ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Барбара: Вот, то что вы просили готово! " )
	Talk( 4,  "Барбара: Для приготовления 1 Голубого красителя нужно 5 Голубой краски, 1 Особый газ, 1 Радужный стакан и 200 золота. " )
	Talk( 5,  "Барбара: Для приготовления 1 Пурпурного красителя нужно 5 Пурпурной краски, 1 Особый газ, 1 Радужный стакан и 200 золота. " )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6,  "Барбара: У меня лучший сок во всей Ледыни! Вы приготовили стакан? " )
	Text( 6,  "Сделать Сок эльфийского фрукта ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7,  "Барбара: Держите ваш самый вкусный сок, как и просили. " )

	Talk( 8,  "Барбара: Простите, но для приготовления 1 Сок эльфийского фрукта требуется 10 Эльфийских фруктов и 1 Стакан. " )
	AddNpcMission	(1078)
	AddNpcMission	(389)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕЖ°Й·юОсФ±Ў¤°Е°ЕА­

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[·юЧ°µкЦчЎ¤єІДИ]		--
--							--
--		134926,53992				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk83 ()
	
	
	Talk( 1,  "Ханна: Привет, я портной Ледыни. У меня вы можете найти лучшие доспехи в городе! " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )
	
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·юЧ°µкЦчЎ¤єІДИ

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[ВГµкАП°еЎ¤ФјЙЄ·т]		--
--							--
--		129074,54098				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk84 ()
	
	
	Talk( 1,  "Яски: Добро пожаловать в гостиницу Ледыни. Я ее владелец Яски. " )
	AddNpcMission	(1085)
	AddNpcMission	(184)
	AddNpcMission	(185)
	AddNpcMission	(186)

	

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ВГµкАП°еЎ¤ФјЙЄ·т

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[В·ИЛЎ¤¶Ў]		--
--							--
--		133550,46900				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk85 ()
	
	
	Talk( 1,  "Тинк: Вы видели трех моих братьев? Они живут в Громограде, Аргенте и Шайтане. " )
	--Text( 1,  "Refine ", JumpPage, 2)
-------------------Б¶ФмµШЅрїуКЇ
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤¶Ў




------------------------------------------------------------
-- °ЧТшЦ®іЗ:АъК·ИООс:РВКЦЦёµјИООс
------------------------------------------------------------

function BT_NewUser001()

	Talk( 1,  "Сиена: Привет! Я наставница Аргента! Если есть вопросы - обращайся! " )
	Text( 1,  "Звезда Единства ", JumpPage, 31 )
	Text( 1,  "Узнать о Аргенте ", JumpPage, 4 )
	Text( 1,  "Узнать о классах и атрибутах ", JumpPage, 11 )
	Text( 1,  "Узнать координаты монстров ", JumpPage, 30 )
	Text( 1,  "Спасибо, я все понял ",  CloseTalk)

	Talk( 4,  "Сиена: Аргент это лучший торговый город. Только тут можно найти лучшие редкие товары! " )
	Text( 4,  "Узнать об оружейном магазине ", JumpPage, 5 )
	Text( 4,  "Узнать о магазине доспехов ", JumpPage, 7 )
	Text( 4,  "Узнать о магазине предметов ", JumpPage, 8 )
	Text( 4,  "Узнать о магазине портальщиках ", JumpPage, 9 )
	Text( 4,  "Узнать о лечении ", JumpPage, 10 )

	Talk( 5,  "Сиена: В Аргенте оружием заведует кузнец Голди. Ищи его в северно-восточной части города. " )
	Text( 5,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 5,  "Спасибо, я все понял ",  CloseTalk )

--	Talk( 6,  "Look for me again if there is anything you don't understand ", CloseTalk )

	Talk( 7,  "Сиена: Если тебе нужны доспехи, то ты найдешь их у портного в северо-западной части города. " )
	Text( 7,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 7,  "Спасибо, я все понял ",  CloseTalk )

	Talk( 8,  "Сиена: Всегда самый лучший товар можно найти у Заморского купца. Он находится на нижней стороне фонтана. " )
	Text( 8,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 8,  "Спасибо, я все понял ",  CloseTalk )

	Talk( 9,  "Сиена: С помощью портальщиков можно отправится в любой из существующих городов. Ищи портальщика у восточного выхода из города. " )
	Text( 9,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 9,  "Спасибо, я все понял ",  CloseTalk )

	Talk( 10,  "Сиена: Если тебе нужна медсестра, то она с восточной стороны от фонтана. " )
	Text( 10,  "Унать о других продавцах ", JumpPage, 4 )
	Text( 10,  "Спасибо, я все понял ", CloseTalk)

	
	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11,  "Сиена: Я могу тебе подробнее рассказать о классах и атрибутах. Что тебя интересует? " )
	Text( 11,  "Узнать о классах ", JumpPage, 12)
	Text( 11,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 11,  "Спасибо, я все понял ", JumpPage, 6 )
	--Text( 11,  "Узнать о классах ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11,  "Узнать о других атрибутах ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12,  "Сиена: Всего существует 4 базовых класса, у каждого из них свои особенности. Про какой класс ты хотел бы узнать? " )
	Text( 12,  "Узнать о мечниках ", JumpPage, 14 )
	Text( 12,  "Узнать об охотниках ", JumpPage, 15 )
--	Text( 12,  "Regarding Sailor ", JumpPage, 16 )
	Text( 12,  "Узнать об исследователях ", JumpPage, 17 )
	Text( 12,  "Узнать об знахарках ", JumpPage, 18 )
--	Text( 12,  "Regarding Artisan ", JumpPage, 19 )
--	Text( 12,  "Regarding Merchant ", JumpPage, 20 )
	Text( 12,  "Я все понял. Хочу узнать кое что другое. ", JumpPage, 11 )

	Talk( 13,  "Сиена: Всего существует 5 базовых атрибута. Каждый атрибут может иметь максимальное значение в 100. У новичка все атрибуты равны 5. Каждый уровень вам будет выдаваться еще 1 пункт атрибута и навыка. В начале игры у вас есть 5 свободных пункта, которые вы можете рас " )
	Text( 13,  "Узнать о силе ", JumpPage, 21 )
	Text( 13,  "Узнать о ловкости ", JumpPage, 22 )
	Text( 13,  "Узнать о телосложении ", JumpPage, 23 )
	Text( 13,  "Узнать о духе ", JumpPage, 24 )
	--Text( 13,  "Regarding Luck ", JumpPage, 25 )
	Text( 13,  "Узнать о точности ", JumpPage, 26 )
	Text( 13,  "Я все понял. Хочу узнать кое что другое. ", JumpPage, 11 )

	Talk( 14,  "Сиена: Мечники имеют самое высокое физическое сопротивление. Мечником может стать только Ланс или Филисс. " )
	Text( 14,  "Узнать о других классах ", JumpPage, 12)
	Text( 14,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 14,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 15,  "Сиена: Охотники это единственный класс, способный использовать в бою оружие с дистанционным уроном. Охотником могут стать только Ланс или Филисс. " )
	Text( 15,  "Узнать о других классах ", JumpPage, 12)
	Text( 15,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 15,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 16,  "Сиена: Sailor is the strongest class in the sea. It is still unreleased in current version. " )
	Text( 16,  "Узнать о других классах ", JumpPage, 12)
	Text( 16,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 16,  "Спасибо, я все понял ", JumpPage, 27)
	
	Talk( 17,  "Сиена: Сиена: Исследователь это лучший класс для исследования моря. Исследователем может стать только Филисс, Ланс или Ами. " )
	Text( 17,  "Узнать о других классах ", JumpPage, 12)
	Text( 17,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 17,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 18,  "Сиена: Знахарки это приверженцы культа Богини Кары, за это им дарована огромная магическая сила. Стать знахаркой могут лишь Филисс или Ами. " )
	Text( 18,  "Узнать о других классах ", JumpPage, 12)
	Text( 18,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 18,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 19,  "Сиена: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version. " )
	Text( 19,  "Узнать о других классах ", JumpPage, 12)
	Text( 19,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 19,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 20,  "Сиена: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version. " )
	Text( 20,  "Узнать о других классах ", JumpPage, 12)
	Text( 20,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 20,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 21,  "Сиена: Сила влияет на физический урон. " )
	Text( 21,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 21,  "Узнать о других классах ", JumpPage, 12)
	Text( 21,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 22,  "Сиена: Ловкость влияет на уклонение и скорость атаки. " )
	Text( 22,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 22,  "Узнать о других классах ", JumpPage, 12)
	Text( 22,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 23,  "Сиена: Телосложение влияет на количество жизни и защиту " )
	Text( 23,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 23,  "Узнать о других классах ", JumpPage, 12)
	Text( 23,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 24,  "Сиена: Дух влияет на количество маны, магическую защиту и силу некоторых способностей. " )
	Text( 24,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 24,  "Узнать о других классах ", JumpPage, 12)
	Text( 24,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 25,  "Сиена: Luck increases Critical Rate and Combining Rate " )
	Text( 25,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 25,  "Узнать о других классах ", JumpPage, 12)
	Text( 25,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 26,  "Сиена: Точность влияет на шанс урона и силу дистанционной атаки. " )
	Text( 26,  "Узнать о других атрибутах ", JumpPage, 13)
	Text( 26,  "Узнать о других классах ", JumpPage, 12)
	Text( 26,  "Спасибо, я все понял ", JumpPage, 27)

	Talk( 27,  "Сиена: Хорошо, ищи меня снова если возникнут вопросы. ")
	
	Talk( 28,  "Сиена: Поздравляю! Теперь тебе все известно об основных классах и атрибутах. Если возникнут новые вопросы - обращайся. " )
	Text( 28,  "Узнать о Аргенте ", JumpPage, 4 )
	Text( 28,  "Узнать о классах и атрибутах ", JumpPage, 11 )
	Text( 28,  "Спасибо, я все понял ",  CloseTalk)

	Talk( 29,  "Сиена: Поздравляю! По достижении 10 уровня ты сможешь выбрать для себя првый класс. " )
	Text( 29,  "Я бы хотел кое о чем спросить ", JumpPage, 4 )
	Text( 29,  "Узнать о классах и атрибутах ", JumpPage, 11 )
	Text( 29,  "Спасибо, я все понял ",  CloseTalk )

	Talk( 30,  "Сиена: Чтобы узнать координаты монстров обращайся к Пьянчуге Энтони в Баре Аргента. " )
	
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
	Talk( 31,  "Сиена: Звезда Единства - таинственный предмет из другого мира. Она способна накапливать опыт своего владельца, а затем при некоторых условиях отдавать весь накопленный опыт обратно. Кроме того по достижении 41 уровня вы сможете обменять Звезду Единства на экипировку своего класса на 50 уровень. " )
	Text( 31,  "Получить Звезду Единства ",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31,  "Обменять Звезду Единства ",JumpPage, 32 )

	Talk( 32, "Сиена: Спасибо за использование наших продуктов. По достижении 41 уровня вы можете обменять Звезду Единства на экипировку своего класса на 50 уровень. Вас это интересует? ")
	Text( 32,  "Получить оружие класса ", Transfer_TeamStar, 1)

	Talk( 6,  "Сиена: Простите, но вы не подходите по требованию. " )

	--InitTrigger()
	---------------------НжјТі¬№э6ј¶НкіЙ№эЙЄ°ІµДХЅ¶·СµБ·ИООс
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
-----------------¶юФВ-------------С№Лк°ь
	--AddNpcMission 	(5507)
end




------------------------------------------------------------
-- НЁУГѕєјјіЎЅЕ±ѕ
------------------------------------------------------------

function r_talk87 ()

	Talk( 1,  "Администратор Арены: Привет! Я Администратор Арены! Вы желаете попробовать свои силы и бросить вызов другим игрокам? " )
	Text( 1,  "Торг ", BuyPage )	
	Text( 1,  "Получить Медаль отваги ", JumpPage, 2)
    	Text(1, "Я хочу получить Полное Благославление. " , FullBuff,1)
	Text( 1,  "Записать точку возвращения ", SetSpawnPos,  "\193\224\240 \192\240\227\229\237\242\224")
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "< ", 6 )
	TriggerCondition( 1, HasRecord, 500 )

	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Text( 1,  "Большое исцеление ", MultiTrigger,GetMultiTrigger(),2)

	--Text( 1,  "Обмен чести ", JumpPage, 3)
	Text( 1,  "Обменять очки взноса отряда ", JumpPage, 3)

	InitTrade()
	Other(	3100	)
	Other(	3101	)
	Other(	3102	)
	Other(	3103	)
	Other(	3104	)
	Other(	3105	)
	Other(	3342	)
	Other(	852	)

	Talk( 2,  "Администратор Арены: Чтобы получить Медаль отваги вы должны быть 25 уровня и заплатить 50000 золота. Медаль отваги записывает все ваши победы и поражения в бою. После получения ее нельзя будет уничтожить. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck,  "> ", 25 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, NoItem, 3849, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 3849, 1, 97 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2,  "Получить Медаль отваги ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3,  "Администратор Арены: При отрицательном количестве чести вы можете обменять свои очки взноса отряда на очки чести. Стоимость 1 очка чести равна 10 очкам взноса отряда и 500 золота. " )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit,  "< ", 0 )
	TriggerCondition( 1, HasOffer, 10 )
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, TakeOffer, 10 )
	TriggerAction( 1, AddCredit, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3,  "Обменять 10 очков взноса отряда ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit,  "< ", 0 )
	TriggerCondition( 1, HasOffer, 50 )
	TriggerCondition( 1, HasMoney, 2500 )
	TriggerAction( 1, TakeMoney, 2500 )
	TriggerAction( 1, TakeOffer, 50 )
	TriggerAction( 1, AddCredit, 5 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 3,  "Обменять 50 очков взноса отряда ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit,  "< ", 0 )
	TriggerCondition( 1, HasOffer, 100 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, TakeOffer, 100 )
	TriggerAction( 1, AddCredit, 10 )
	TriggerFailure( 1, JumpPage, 12 )
	Text( 3,  "Обменять 100 очков взноса отряда ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit,  "< ", 0 )
	TriggerCondition( 1, HasOffer, 300 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, TakeOffer, 300 )
	TriggerAction( 1, AddCredit, 30 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 3,  "Обменять 300 очков взноса отряда ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4,  "Администратор Арены: Простите но вы не подходите по требованию. Также возможно у вас уже есть Медаль отваги. " )

	Talk( 5,  "Администратор Арены: Для обмена очков взноса отряда вы должны иметь отрицательную честь, кроме того заплатить 10 очков взноса отряда и 500 золота за каждое очко чести. " )

	Talk( 6,  "Администратор Арены: Regarding Honor system as followed " )
	Text( 6,  "Regarding Battle Count ", JumpPage, 7)
	Text( 6,  "Regarding Challenge Honor ", JumpPage, 8)
	Text( 6,  "Regarding Victory Honor ", JumpPage, 9)
	Text( 6,  "Regarding Escape Penalty ", JumpPage, 10)

	Talk( 7,  "Администратор Арены: Each battle will increase battle count by 1 " )

	Talk( 8,  "Администратор Арены: Each kill will increase Kill count by 1 and 1 Honor point (Opponent lower by 10 levels will not have any Honor. Those higher by 10 levels will earn a bonus 1 Honor). Vice versa for those defeated in challenge. " )

	Talk( 9,  "Администратор Арены: Each victory to the party will increase victory count by 1 and gain Honor points according to the differences between the average level of the two parties. " )

	Talk( 10,  "Администратор Арены: Each time a party escape or quit battle, System will deduct Honor points according to the average level of both party and an additional of 2 Honor points per person. The other party will gain Honor points based on those lost by the party. " )

	Talk( 11,  "Администратор Арены: Hi! To exchange 50 Party Contribution points for 5 Honor points, you will need to have 50 Party Contribution points, 2500G and a negative Honor value. " )

	Talk( 12,  "Администратор Арены: Hi, 100 Party Contribution points can be exchanged for 10 Honor points. You also need to pay 5000G and have a negative Honor point value in order to exchange. " )

	Talk( 13,  "Администратор Арены: Hi, exchanging 300 Party Contribution points for 30 Honor points requires 300 Party Contribution points, 15000G and negative Honor points " )

end



------------------------------------------------------------
-- °ЧТшіЗЎЄЎЄСІВЯ±шЎ¤Вн¶ыЛ№
------------------------------------------------------------

function r_talk88 ()

	Talk( 1,  "Маркуза: Привет, я здесь новичок. Вокруг Аргента собирается много кальмаров, а капитан отправляет меня их убирать. От их чернил у меня постоянно слезятся глаза. Тут всегда так издеваются над новичком? " )

	Talk( 2,  "Marcusa: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). Explorer look for Little Daniel at (2193, 2730). You can reach Icicle or Shaitan by using the teleporter. " )


	---------------------НжјТі¬№э9ј¶
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
-- Йіб°іЗЎЄЎЄСІВЯ±шЎ¤ВхїЛ
------------------------------------------------------------

function r_talk89 ()

	Talk( 1,  "Майкл: Привет, я патрулирую местность в округе. Будьте осторожны, скорпионы довольно опасны! " )
	
	Talk( 2,  "Michael: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Argent by using the teleporter. " )

	---------------------НжјТі¬№э9ј¶
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
-- ±щАЗ±¤ЎЄЎЄСІВЯ±шЎ¤РЎДЄ
------------------------------------------------------------

function r_talk90 ()

	Talk( 1,  "Малыш Мо: Я патрулирую местность и мне ужасно хочется есть. У вас нет с собой при себе ничего чтобы поесть? Здесь в округе совсем нет еды... " )

	Talk( 2,  "Little Mo: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Shaitan by using the teleporter. " )

	---------------------НжјТі¬№э9ј¶
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
-- Йіб°іЗЎЄЎЄТ©ІДЙМИЛЎ¤ЙіА­А­
------------------------------------------------------------

function r_talk91 ()

	Talk( 1,  "Шала: Привет! Я целитель Шайтана! Я могу тебе чем то помочь? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )
	
	Talk( 2,  "Shala: Very good. You have advanced to Lv9. You can select a class at Lv 10. Now is the time for you to make a decision. Look for Peter in Argent City at (2192, 2767) if you want to become a Swordsman. Look for High Priest - Gannon in Shaitan City at (862, 3500) to be a Herbalist. To be a Hunter, look for Swordsman Ray in Icicle City at (1365, 570). As the journey to Argent and Icicle is too far, look for the Teleporter to teleport you there in an instant. " )
	Text( 2,  "Торг ", BuyPage )
	Text( 2,  "Ничего... ",CloseTalk )

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


	---------------------НжјТі¬№э9ј¶
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
--їЁ¶ыјУµВС©Ф­    ВГРРТЅЙъЎ¤НЯВЮОВДЭ
------------------------------------------------------------

function r_talk92 ()

	Talk( 1,  "Чиво: Привет! Я местный доктор! Вам нужны какие нибудь травы? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	471	)
	AddNpcMission(	472	)
	AddNpcMission	(753)
	
end

------------------------------------------------------------
-- Аµ°ІЙ­БЦЎЄЎЄВГРРТЅЙъЎ¤ГЧДОПЈ¶ы
------------------------------------------------------------

function r_talk93 ()

	Talk( 1,  "Миносиво: Привет! Я местный доктор! Что вас интересует? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	1442	)
	AddNpcMission (	1900	)

	---------------°ЧСт
	AddNpcMission	(5567)
	AddNpcMission	(5568)
--	AddNpcMission ( 6052 )
--	AddNpcMission ( 6053 )
	


	
end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----ёЈїЛ
------------------------------------------------------------

function r_talk94 ()

	Talk( 1,  "Фукей: Возможно вы скажете что я высокомерен, но я хочу быть высокомерным моряком. Я уже говорил это? " )

end

------------------------------------------------------------
-- ±щј«І№ёшХѕ-----·ЁµП¶ы
------------------------------------------------------------

function r_talk95 ()

	Talk( 1,  "Фардей: Мой немой друг хочет привезти зимние шубы, чтобы продавать их в горячем Шайтане. Как мне его удержать? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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

	------------------¶юФВ
	--AddNpcMission (5504	)



end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----ПЇМШ
------------------------------------------------------------

function r_talk96 ()

	Talk( 1,  "Кситрон: Все в округе говорят что я волк в овечьей шкуре. Хехе " )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----СПВЮЛю
------------------------------------------------------------

function r_talk97 ()

	Talk( 1,  "Кентаро: Жизнь коротка как мимолетная снежинка, тающая даже не достигнув земли... " )

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
-- µВ¶ыО¬ЖЅФ­-----ІјІј
------------------------------------------------------------

function r_talk98 ()

	Talk( 1,  "Бубу: Мой отец пират! А я хочу присоединится к флоту и быть шпионом. " )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----ВіВі
------------------------------------------------------------

function r_talk99 ()

	Talk( 1,  "Лулу: Хаха. Не видишь никакого зла? " )

	AddNpcMission(	1736	)
	AddNpcMission (	1925	)
	AddNpcMission (	1946	)

	---------------°ЧСт
	AddNpcMission	(5561)
	AddNpcMission	(5562)
--	AddNpcMission ( 6040 )
--	AddNpcMission ( 6041 )



end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----°ВµПЛ№.ЙБ№в
------------------------------------------------------------

function r_talk100()

	Talk( 1,  "Одессис: Я так стар... Но тем не менее хочу отправится на остров Демонов и увидеть вулканическое извержение. " )

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
-- µВ¶ыО¬ЖЅФ­-----Г·¶ы
------------------------------------------------------------

function r_talk101()

	Talk( 1,  "Меллиса: Если хотите прекратить сплетню, то создайте новую. " )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----№ЕІ©А­
------------------------------------------------------------

function r_talk102()

	Talk( 1,  "Гадор: Я написал ндавно книгу-бестселлер. Теперь я слышал что она популярна у пиратов. " )

	AddNpcMission 	(603)
	AddNpcMission 	(608)
	AddNpcMission 	(613)
	AddNpcMission 	(615)
	AddNpcMission 	(618)


end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----РЎїв¶ыЙ­
------------------------------------------------------------

function r_talk103()

	Talk( 1,  "Маленький Квин: мама запрещает мне разговаривать с незнакомцами. Вы угостите меня конфетой? " )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----Вкј§ЙфЙф
------------------------------------------------------------

function r_talk104()

	Talk( 1,  "Тетушка Мэри: Я люблю поесть Шварцальский пирог с толстым слоем конфет наверху. Эта вкуснятина заставляет меня пускать слюни. " )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----НЯИш·Ё¶ы
------------------------------------------------------------

function r_talk105()

	Talk( 1,  "Ваала: Рассказать секрет? Я недавно придумал новую игру в карты! Она требует 4 друзей и 108 карт. " )

	AddNpcMission 	(451)
	AddNpcMission 	(457)
	AddNpcMission 	(621)
	AddNpcMission 	(625)
	AddNpcMission(	1590	)
	AddNpcMission (	1902	)
	AddNpcMission (	1940	)

	




end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----ЦмАцІјВк
------------------------------------------------------------

function r_talk106()

	Talk( 1,  "Джули Берн: Хотите узнать почему наш кузнец лысый? Я сплетница? С вами так скучно... " )

	AddNpcMission 	(689)
	AddNpcMission	(1109)
	AddNpcMission(	1579	)
	AddNpcMission (	1918	)





end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----°ўАпїЛЛ№
------------------------------------------------------------

function r_talk107()

	Talk( 1,  "Александрис: Жизнь жестока! Так почему бы не поиграть в нее онлайн? " )
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
-- µВ¶ыО¬ЖЅФ­-----АПїв¶ыЙ­
------------------------------------------------------------

function r_talk108()

	Talk( 1,  "Старик Квин: В этот жаркий день я мечтаю пойти на необитаемый остров и веселится в одиночестве. " )

	AddNpcMission	(475)

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----єЈѕьБР±ш
------------------------------------------------------------

function r_talk109()

	Talk( 1,  "Тсссс, потише! Наш адмирал говорит." )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----јЄ¶ыДбДбЛ№
------------------------------------------------------------

function r_talk110()

	Talk( 1,  "Джернис: Моя семья лесорубы, однако недавно их забрал какой то страж природы. Так неприятно. " )

	AddNpcMission 	(411)
	AddNpcMission 	(669)
	AddNpcMission 	(675)
	AddNpcMission 	(678)
	AddNpcMission 	(680)
	AddNpcMission	(1075)



end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----ГЧ¶ыГЧАт
------------------------------------------------------------

function r_talk111()

	Talk( 1,  "Миннели: Привет! Мои друзья называют меня Элли. Я не буду возражать если вы тоже будете меня так называть. " )

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
-- ЕБїЛ»ДД®-----°ВёсЙ­
------------------------------------------------------------

function r_talk112()

	Talk( 1,  "Августин: Есть много мифов и легенд ждущих большого авантюриста. " )

	AddNpcMission	(1111)


end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----јУОчСЗЎ¤ЖЖ·«
------------------------------------------------------------

function r_talk113()

	Talk( 1,  "Джейна: Привет! Я Джейна!. " )
	AddNpcMission	(1131)

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----µПµПВнРЮ
------------------------------------------------------------

function r_talk114()

	Talk( 1,  "Дитаро: Путешевственники! Давайте отправимся в открытый океан! " )

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
-- ЕБїЛ»ДД®-----¶нїЛБрОчЛ№
------------------------------------------------------------

function r_talk115()

	Talk( 1,  "Рубен Актус: Я нуждаюсь в большом количестве золота. Но так как у меня его нет, то я нуждаюсь в друге, у которого есть большое количество золота. " )
	AddNpcMission	(1120)


end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----Г·АыОчСЗЎ¤ГЁСЫ
------------------------------------------------------------

function r_talk116()

	Talk( 1,  "Меррикс: Почему вы так удивлены? Вы никогда не видели женщину-пирата? " )
	
	AddNpcMission ( 245 )
	AddNpcMission ( 246 )
	AddNpcMission ( 247 )
	AddNpcMission ( 249 )
	AddNpcMission ( 250 )
	AddNpcMission (1141)

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----№ЕµГЛюїЛЎ¤»ТЗЅ
------------------------------------------------------------

function r_talk117()

	Talk( 1,  "Гудас: Кто сказал что я страдаю морской болезнью? Я не страдаю морской болезни, просто я еще не привык к новому судну. " )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----їьИьЛ№Ў¤їсЙі
------------------------------------------------------------

function r_talk118()

	Talk( 1,  "Гасардис: Я не плачу чтобы быть добрым. " )
	
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
-- ЕБїЛ»ДД®-----НЁБйХЯЎ¤ФВ№вСЫ
------------------------------------------------------------

function r_talk119()

	Talk( 1,  "Оракул Лунного света: Я могу видеть то, что другие не видят. " )

	AddNpcMission 	(804)
	AddNpcMission 	(808)
	
	AddNpcMission	(	468	)
	AddNpcMission(	1586	)
	AddNpcMission (	1920	)

	
---------------°ЧСт
	AddNpcMission	(5585)
	AddNpcMission	(5586)



end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----їЁ¶ыЛХЛ№Ў¤Да°Н
------------------------------------------------------------

function r_talk120()

	Talk( 1,  "Каворский: Я не завидую бывшему секретарю Аргента или чиновникам Громограда. Мне нравится быть собой. " )

	AddNpcMission 	(407)
	AddNpcMission 	(638)
	AddNpcMission 	(642)
	AddNpcMission(	1438	)
	AddNpcMission (	1912	)

	



end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----ДбАп°¬СЗЎ¤і¤·ў
------------------------------------------------------------

function r_talk121()

	Talk( 1,  "Нейла: А, это вы? как жаль... Я сказал это вслух? " )

	
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
-- ЕБїЛ»ДД®-----їЛАтАтСЕ
------------------------------------------------------------

function r_talk122()

	Talk( 1,  "Гелия: Аргент известен как законодатель моды. Только пираты не следуют моде. " )

	AddNpcMission 	(428)
	AddNpcMission 	(812)
	AddNpcMission	(1025)
	AddNpcMission	(1188)


end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----±ґїЛ
------------------------------------------------------------

function r_talk123()

	Talk( 1,  "Бек: У меня есть брат по имени Хэм. Однако я более симпатичен. " )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----єєД·
------------------------------------------------------------

function r_talk124()

	Talk( 1,  "Хэм: У меня есть брат по имени Бек. Однако я более симпатичен. " )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----°®¶ыУИАыЎ¤Оў·з
------------------------------------------------------------

function r_talk125()

	Talk( 1,  "Влюбленный Юрий: Любовь так рядом, но все же пока... " )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----Ю±Ат¶ы
------------------------------------------------------------

function r_talk126()

	Talk( 1,  "Вилли: Во первых никогда не говорите что я жирный, во вторых никогда не говорите что я пухлый, в третьих никогда не говорите что я похож на свинью. Теперь можете говорить вы. " )

	AddNpcMission 	(685)
	AddNpcMission 	(688)
	AddNpcMission 	(690)
	AddNpcMission	(1097)
--	AddNpcMission ( 6034 )
--	AddNpcMission ( 6035 )


end
------------------------------------------------------------
-- ЕБїЛ»ДД®-----¶¬ґпГЧЖЕЖЕ
------------------------------------------------------------
function r_talk127()
Talk( 1,  "Бабушка Донг. Молодой человек, путешевствуйте пока вы молоды! " )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1557 )
	TriggerCondition( 1, NoRecord, 1558 )
	TriggerCondition( 1, NoRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1560 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1,  "Привет!! ",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasMission, 1561 )
	TriggerCondition( 1, HasRecord, 1558 )
	TriggerCondition( 1, HasRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1569 )
	TriggerCondition( 1, NoRecord, 1561 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1,  "Привет снова! ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1,  "Я только проходил мимо ",JumpPage, 3  )
	
	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1559 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2,  "Бабушка Донг: Что появилось раньше - яйцо или курица? ")
	Text(2,  "Курица ", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1560 )
	TriggerAction( 1, JumpPage, 5 )
	Text(2,  "Яйцо ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3,  "Бабушка Донг: Молодой человек, я очень занята. Если нет ничего важного, то пожалуйста отойдите! ")
	Talk( 10,  "Бабушка Донг: Молодой человек, вы ответили неправильно! Подумайте снова прежде чем подходить. ")

	Talk( 4,  "Бабушка Донг: Поздравляю! Не плохо! ")

	Talk( 5,  "Бабушка Донг: Может ли быть старчески маразм заразным? ")
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1563 )
	TriggerAction( 1, JumpPage, 7 )
	Talk( 6,  "Бабушка Донг: Кролик и черепаха учавствуют в гонке. Кто победит? ")
	Text( 6,  "Черепаха ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6,  "Кролик ",JumpPage, 10  )

	Talk( 7,  "Бабушка Донг: Конечно черепаха победит. Ведь черепаха, которая работает движется быстрее ветра. ")
	Text( 7,  "Следующий вопрос ",JumpPage, 8  )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1564 )
	TriggerAction( 1, JumpPage, 9 )
	Talk( 8,  "Бабушка Донг: В гонке учавствуют кролик и черепаха в солнечных очках. КТо победит? ")
	Text( 8,  "Черепаха в солнечных очках ",MultiTrigger, GetMultiTrigger(), 1 )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1565 )
	TriggerAction( 1, JumpPage, 9 )
	Text( 8,  "Кролик ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9,  "Бабушка Донг: Кролик не победит, потому что черепаха в солнечных очках раллийный гонщик! ")
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
-- ЕБїЛ»ДД®-----ВЮ±цЛ№Ў¤±і°ь
------------------------------------------------------------

function r_talk128()

	Talk( 1,  "Робин: Когда я был маленький мой отец ложил меня в мой рюкзак и бродил по миру. Я хотел бы сделать также. " )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----ИрµГЎ¤Ж¤ёк
------------------------------------------------------------

function r_talk129()

	Talk( 1,  "Дон Пит: Ах... Кто вы? Вы ищете меня? " )

	AddNpcMission 	(623)
	AddNpcMission 	(627)
	AddNpcMission 	(634)
	AddNpcMission	(1031)
	AddNpcMission	(1194)
	AddNpcMission(	1591	)
	AddNpcMission (	1905	)
	AddNpcMission (	1941	)

	---------------°ЧСт
	AddNpcMission	(5583)
	AddNpcMission	(5584)



end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ОВАтЎ¤±щИЄ
------------------------------------------------------------

function r_talk130()

	Talk( 1,  "Вин: Мой дом находится в Ледыни. Вы его видели? " )
---------------°ЧСт
	AddNpcMission	(5581)
	AddNpcMission	(5582)
end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----АЧЛ№Ў¤РЎіж
------------------------------------------------------------

function r_talk131()

	Talk( 1,  "Лесси: Все люди меня называют маленьким червячкосм. Но я не буду оставаться маленьким навсегда. " )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ґпГЧ¶ыЎ¤аЅаЅ
------------------------------------------------------------

function r_talk132()

	Talk( 1,  "Додо: Додо додо додо " )
	AddNpcMission	(1061)
	AddNpcMission	(1007)
	AddNpcMission	(1062)
	AddNpcMission	(1117)
	AddNpcMission	(1171)


end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ЛчА­Д·Ў¤ИшјУ
------------------------------------------------------------

function r_talk133()

	Talk( 1,  "Солару: Вы слышали о таинственном сундуке сокровищ? Я ищу его уже много лет. " )

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
-- °ўАј±ИЛ№±щФ­-----АЗСАА­Д·
------------------------------------------------------------

function r_talk134()

	Talk( 1,  "Ламут: За 3 дня ходьбы я не вижу города. Я потерялся? " )
	AddNpcMission	(1083)

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----АЗСАА­Д·
------------------------------------------------------------

function r_talk135()

	Talk( 1,  "Ирисис: Если вы не принесли мне письмо для Легендарного принца, то лучше не говорите со мной. " )
	AddNpcMission	(1098)

end


------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----°¬ВЧДИ
------------------------------------------------------------

function r_talk136()

	Talk( 1,  "Элуна: Я готовлюсь сегодня идти на распродажу. Если я опоздаю, то ничего не останется. " )

	AddNpcMission ( 262 )
	AddNpcMission ( 263 )
	AddNpcMission ( 264 )
	AddNpcMission ( 265 )
	AddNpcMission	(1056)


end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----єХ¶ыґпґп
------------------------------------------------------------

function r_talk137()

	Talk( 1,  "шереда: Скучно... Здесь очень скучно... " )
	AddNpcMission	(1072)

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ФјЙЄ·тЎ¤ЗЗ
------------------------------------------------------------

function r_talk138()

	Talk( 1,  "Чао: Я ненавижу кальмаров. Они всегда брызгаются своими чернилами. " )
	AddNpcMission	(1105)

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ІЭЭ®УЕУЕ
------------------------------------------------------------

function r_talk139()

	Talk( 1,  "Земляничка: Вы видели тех розовых поросят? Они самые вкусные в округе. " )
---------------°ЧСт
	AddNpcMission	(5555)
	AddNpcMission	(5556)
end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ТБОД
------------------------------------------------------------

function r_talk140()

	Talk( 1,  "Эве: Привет, я Эве. Что вы здесь делаете? " )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ЛХЙєДИ
------------------------------------------------------------

function r_talk141()

	Talk( 1,  "Сюзанна: О мой Бог. Время пролетает так быстро. " )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----їЁЕµБЦ
------------------------------------------------------------

function r_talk142()

	Talk( 1,  "Кэролин: Я вегетарианец и меня кое что беспокоит. Катящаяся дыня это животное или растение? " )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ХІД·Л№
------------------------------------------------------------

function r_talk143()

	Talk( 1,  "Джеймсон: Я слышал что в мире есть говорящий ягненок. " )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----В¶ОчАцАцСЕ
------------------------------------------------------------

function r_talk144()

	Talk( 1,  "Люси: Привет посетитель! " )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----УИАјґпїЛ
------------------------------------------------------------

function r_talk145()

	Talk( 1,  "Юландор: Я всегда зарабатываю убивая монстров. Однако с недавних пор заметил что у них стал маленький кошелек. " )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----І©¶ы·ТДб
------------------------------------------------------------

function r_talk146()

	Talk( 1,  "Профессор Фенни: Однажды я встретил русалку в море. Правда забыл спрсить где она взяла такие очаровательные реснички. " )

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
-- °ўАј±ИЛ№±щФ­-----МФМФ
------------------------------------------------------------

function r_talk147()

	Talk( 1,  "Бэрри: Это нбо такое синее! Синий океан, синий цвет... И настроение у меня синее синее. " )

	AddNpcMission ( 401 )
	AddNpcMission 	(810)
	AddNpcMission	(1040)
	AddNpcMission	(1203)
	AddNpcMission(	1433	)
	AddNpcMission (	1909	)

	
---------------°ЧСт
	AddNpcMission	(5579)
	AddNpcMission	(5580)





end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----їЖИрЖд
------------------------------------------------------------

function r_talk148()

	Talk( 1,  "Кетан: Привет, я думаю почему тут нет луны. А вы? " )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ГЧРЄ¶ыГ·БЦ·Т
------------------------------------------------------------

function r_talk149()

	Talk( 1,  "Миссис Элли: Мне нечего вам сказать... " )

end

------------------------------------------------------------
-- ±щАЗ±¤-----Л®КЦЎ¤°ЈµПјУ
------------------------------------------------------------

function r_talk156()

	Talk( 1,  "Аякс: Привет! Я лучший моряк в округе! Нуждаетесь в моей помощи? " )

end

------------------------------------------------------------
-- №ЕАпї©АыІ№ёшХѕ-----БсБ«
------------------------------------------------------------

function r_talk157()

	Talk( 1,  "Дуриан: Я всегда хочу есть и ем я много. Мне кажется это болезнь. " )

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

	---------------°ЧСт
	AddNpcMission	(5587)
	AddNpcMission	(5588)

--	AddNpcMission ( 6042 )
--	AddNpcMission ( 6043 )


end

------------------------------------------------------------
-- №ЕАпї©АыІ№ёшХѕ-----Б«ДИТМ
------------------------------------------------------------

function r_talk158()

	Talk( 1,  "Лейна: Что вы хотите купить? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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
-- НЯ¶ыЕµІ№ёшХѕ-----№ЕДОЛ№
------------------------------------------------------------

function r_talk159()

	Talk( 1,  "Гвидериус: Покупки и продажи, ищите меня. " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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
-- ·ПїуІ№ёшХѕ-----АпїЁ¶ы
------------------------------------------------------------

function r_talk160()

	Talk( 1,  "Кэль: Привет! Я стражник Кэль. Это место в безопасности! " )

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
-- ·ПїуІ№ёшХѕ-----АпїЁ¶ы
------------------------------------------------------------

function r_talk161()

	Talk( 1,  "Дранки: Я так хочу есть... И кажется я потерял свою бутылку. " )

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
-- ·ПїуІ№ёшХѕ-----№ЕБйѕ«
------------------------------------------------------------

function r_talk162()

	Talk( 1,  "Грег: Привет, я Грег. Нужна моя помощь? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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

	-----МъИЛБщПо
	AddNpcMission ( 6121 )
	AddNpcMission ( 6122 )

	
end

------------------------------------------------------------
-- ОВДГІ№ёшХѕ-----БХґп
------------------------------------------------------------

function r_talk163()

	Talk( 1,  "Линда: Я не хочу работать, но мой начальник вынуждает меня работать каждый день. А я хочу большей зарплаты! " )
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
-- ОВДГІ№ёшХѕ-----ґпґпВхСЗ
------------------------------------------------------------

function r_talk164()

	Talk( 1,  "Дада: Привет мой друг. Вы приехали в столь опасное место не привезя с собой товара? " )

end

------------------------------------------------------------
-- ОВДГІ№ёшХѕ-----№ЕБ¦№ы
------------------------------------------------------------

function r_talk165()

	Talk( 1,  "Грег: Привет! Есть ли что то, что вам нужно? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	---------------°ЧСт
	AddNpcMission	(5563)
	AddNpcMission	(5564)
end

------------------------------------------------------------
-- °НІјІ№ёшХѕ-----ДўДў
------------------------------------------------------------

function r_talk166()

	Talk( 1,  "Момо: Привет, я Момо. У меня вы можете купить неплохую пищу! " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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

	---------------°ЧСт
	AddNpcMission	(5577)
	AddNpcMission	(5578)




end

------------------------------------------------------------
-- ЙіИЄІ№ёшХѕ-----О¬ДИ
------------------------------------------------------------

function r_talk167()

	Talk( 1,  "Венома: Я скоро женюсь! Я хочу чтобы все разделили мою радость! " )

	AddNpcMission 	(418)
	AddNpcMission 	(641)
	AddNpcMission 	(650)
	AddNpcMission	(1156)

	
end


------------------------------------------------------------
-- ЙіИЄІ№ёшХѕ-----·Ж·Ж
------------------------------------------------------------

function r_talk168()

	Talk( 1,  "Фей фей: Привет, я Фей фей. " )

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
-- ЙіИЄІ№ёшХѕ-----ВнВе
------------------------------------------------------------

function r_talk169()

	Talk( 1,  "Маркус: Я могу пополнить ваши запасы. В чем вы нуждаетесь? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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
-- °ўАј±ИЛ№І№ёшХѕ-----Цм±И
------------------------------------------------------------

function r_talk170()

	Talk( 1,  "Зурби: Я всегда слышу зов моря. Я думаю там есть много интересного, что нужно исследовать. " )

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
-- ЙіИЄІ№ёшХѕ-----УИЛюАпДб
------------------------------------------------------------

function r_talk171()

	Talk( 1,  "Улькар: Привет! Вы хотите немного хлеба? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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
-- чјчГУЄµШІ№ёшХѕ-----РЮЛѕ
------------------------------------------------------------

function r_talk172()

	Talk( 1,  "Ксеус: Убивать-воровать презренно. " )

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
-- чјчГУЄµШІ№ёшХѕ-----ОыОы№ю№ю
------------------------------------------------------------

function r_talk173()

	Talk( 1,  "Хохо: Привет! Нуждаетесь в каких нибудь припасах? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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
-- ±щј«І№ёшХѕ-----ГЧїЄАК·СВЮ
------------------------------------------------------------

function r_talk174()

	Talk( 1, "Меккилон: Мой отец восхищался великими художниками и назвал меня в честь одного из них. " )
    	Text( 1, "Я хочу получить Полное Благославление. " , FullBuff,1)
	Text( 5, "Записаться ", SetSpawnPos, "\203\229\228\255\237\238\233 \248\232\239" )
	
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
-- ±щ¶јІ№ёшХѕ-----ДОДО
------------------------------------------------------------

function r_talk175()

	Talk( 1,  "Нана: Я настолько глуп, что могу потеряться за пределами города. Конечно если со мной не будет гида. " )

	AddNpcMission 	(405)
	AddNpcMission 	(432)
	AddNpcMission 	(668)
	AddNpcMission 	(672)
	AddNpcMission 	(673)
	AddNpcMission 	(677)
	AddNpcMission	(1087)
	AddNpcMission(	1429	)
	AddNpcMission (	1928	)
---------------°ЧСт
	AddNpcMission	(5589)
	AddNpcMission	(5590)
--	AddNpcMission ( 6050 )
--	AddNpcMission ( 6051 )
	




end

------------------------------------------------------------
-- ±щ¶јІ№ёшХѕ-----№ЦЫЕТЇТЇ
------------------------------------------------------------

function r_talk176()

	Talk( 1,  "Таинственный Грампа: Хоть я и выгляжу странно, но я являюсь местным целителем. " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ничего... ",CloseTalk )

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
-- чјчГУЄµШІ№ёшХѕ-----°ўМ©
------------------------------------------------------------

function r_talk177()

	Talk( 1,  "Тай: Я хочу организовать группу, состоящую из одних морских обитетелей. " )

	AddNpcMission 	(805)
	AddNpcMission 	(806)
	AddNpcMission(	1589	)
	AddNpcMission (	1934	)
	AddNpcMission (	1949	)

	




	
end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----±ґїЗЙМИЛЎ¤А­Д·
------------------------------------------------------------

function r_talk221()

	Talk( 1,  "Ламон: Я люблю собирать кораллы. У меня есть много уникальных. Хотите взглянуть? " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Восстановление энергии коралла ", JumpPage, 2 )
	Text( 1,  "Ничего... ",CloseTalk )


	Talk( 2,  "Ламон: Коралл можно заряжать когда он опустеет. Коралл грозы заряжает гроза, коралл ветра - ветер, коралл тумана заряжается в тумане, а коралл удара можно зарядить в Веснограде. ")


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
-- °ЧТшіЗ-----·юЧ°µкЦъАнЎтЭнЭн
------------------------------------------------------------
function r_talk222()


	Talk( 1,  "Бебе: Привет! Я новый портной. Я продаю любые типы одежды! " )
	Text( 1,  "Торг ", BuyPage )

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
-- ЗпЦ®µє-----АіДИ
------------------------------------------------------------
function r_talk223()


	Talk( 1,  "Лана: Привет, я портальщик острова Осени. Чем я могу помочь? " )
	Text( 1,  "Вернуться в Ледынь ", GoTo, 1318, 510,  "darkblue " )

end


------------------------------------------------------------
-- ±щС©µє-----єЈµБЅЬАпГЧ
------------------------------------------------------------
function r_talk224()


	Talk( 1,  "Пират Джереми: Привет! Я пират и я счастлив! " )

	AddNpcMission ( 306 )
	AddNpcMission ( 307 )
	AddNpcMission ( 308 )

end

------------------------------------------------------------
-- ГщЙіµє-----ЅЬїЛґ¬і¤
------------------------------------------------------------
function r_talk225()


	Talk( 1,  "Капитан Джек: Привет! Я богат, красив и знаменит! Меня все боготворят! " )

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
-- ±щАЗ±¤ПВіЗ-----ВіёсАј
------------------------------------------------------------
function r_talk226()


	Talk( 1,  "Люк: Мой брат любит постоянно устраивать мне неприятности. " )
	
	Talk( 2,  "Luke: My brother loves to create trouble for meЎ­always expecting me to clear the mess. SighЎ­ ")
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
	-----------јмІвИООсДГБЛУгБЫЅдЦё,µ«КЗ¶ЄБЛІ»јыБЛ
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
-- чјчГУЄµШІ№ёшХѕ-----їЛА­А­ґуК¦
------------------------------------------------------------
function r_talk227()

	Talk( 1,  "Мастер Керра: Каждый думает что у меня сильная выдержка. Наверное потому что не имеют своей. " )

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
-- їЁ¶ыјУµВІ№ёшХѕ-----ИшДПЎ¤ёсБ¦µВ
------------------------------------------------------------
function r_talk228()

	Talk( 1,  "Саймон Джилтер: И когда же я стану чиновником флота... Я же так очарователен. " )
	
	AddNpcMission ( 837 )
	AddNpcMission ( 838 )
	AddNpcMission ( 839 )

end

------------------------------------------------------------
-- їЁ¶ыјУµВІ№ёшХѕ-----єЈА¶Ў¤Оў·з
------------------------------------------------------------
function r_talk229()

	Talk( 1,  "Лазурный бриз: Пожалуйста не забудьте найти красивую веточку для меня. " )

	AddNpcMission ( 840 )
---------------°ЧСт
	AddNpcMission	(5591)
	AddNpcMission	(5592)
--	AddNpcMission ( 6048 )
--	AddNpcMission ( 6049 )

end

------------------------------------------------------------
-- їЁ¶ыјУµВІ№ёшХѕ-----?Ў¤Д§Б¦
------------------------------------------------------------
function r_talk230()

	Talk( 1,  "Са Мори: Нет в этом мире девушки красивее меня! " )

	AddNpcMission ( 844 )
	AddNpcMission ( 841 )
	AddNpcMission ( 842 )
	AddNpcMission ( 843 )

end

------------------------------------------------------------
-- їЁ¶ыјУµВІ№ёшХѕ-----їЁРЭЎ¤ЛйКЇ
------------------------------------------------------------
function r_talk231()

	Talk( 1,  "Кэрин Ливингстоун: Я ненавижу ту жирную старуху! До сих пор утверждает что она молода и красива. " )

	AddNpcMission ( 845 )
	AddNpcMission ( 846 )
	AddNpcMission ( 847 )
	AddNpcMission ( 848 )

end

------------------------------------------------------------
-- ±щј«І№ёшХѕ-----ИыО¬Ў¤Цм¶ы
------------------------------------------------------------
function r_talk232()

	Talk( 1,  "Саша: Здесь очень сильный ветер и до моей кожи часто добирается песок. Это очень ее портит. " )
	
	AddNpcMission ( 877 )
	AddNpcMission ( 883 )
	AddNpcMission ( 884 )


end

------------------------------------------------------------
-- ±щј«І№ёшХѕ-----ї­ОДЎ¤АЗ
------------------------------------------------------------
function r_talk233()

	Talk( 1,  "Кэвин Вульф: Я волк блуждающий по пустыне. " )

	AddNpcMission ( 881 )
end

------------------------------------------------------------
-- °ЧТшіЗ-----і±Бч·ўРНК¦Ў¤їЁМШ
------------------------------------------------------------
function r_talk234()

	Talk( 1,  "Парикмахер: Привет! Не желаете сменить свою ужасную прическу? " )
	Text( 1,  "Купить парикмахерские принадлежности ", BuyPage )
	Text( 1,  "Я хочу сменить прическу ", JumpPage, 2)

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
	Talk( 2,  "Парикмахер: Отлично. Но вам потребуется Парикмахерская расписка! ")
	Text( 2,  "Да, я знаю ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2,  "Забудь ", CloseTalk )

	Talk( 3,  "Парикмахер: У тебя нет Парикмахерской расписки! ")
	
	AddNpcMission ( 6085 )


end


function bragi_talk01()
	Talk( 1, "После перерождения ты сможешь оседлать торнадо и почувствовать за спиной крылья. Если захочешь поднять уровень персонажа, приходи ко мне. ")
	Text( 1, "Почему я не могу взять задание, чтобы повысить уровень перерождения? ", JumpPage, 2 )
	
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
	Text( 1, "Проблема повторного задания ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "Если ты хочешь сразиться с боссом и повысить уровень перерождения, тебе нужно отвечать на следующие требования: Во-первых, выполнить задание на перерождение; Во-вторых, выполнить задание \'Новое испытание\' и ряд других заданий от Ангела перерождения. Если ты соответствуешь требованиям, приходи ко мне, получай задания и сразись с БОСОМ. ")
	Text( 2, "Я все понял. Прощай. ", CloseTalk)
	
	Talk( 3, "Repair successful!")
	
	Talk( 4, "У тебя нет проблемы повторного получения заданий. ")

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

	Talk (1, "Mу: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6215) 
 
end 

function dina_talk13 () 

	Talk (1, "Альдебаран: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6216) 
	
end 

function dina_talk14 () 

	Talk (1, "Сага: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6217) 
 
end 

function dina_talk15 () 

	Talk (1, "Маска смерти: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6218) 
 
end 

function dina_talk16 () 

	Talk (1, "Эолия: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6219) 
 
end 

function dina_talk17 () 

	Talk (1, "Шака: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6220) 

end 

function dina_talk18 () 

	Talk (1, "Доко: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6221) 

end 

function dina_talk19 () 

	Talk (1, "Мило: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6222) 

end 

function dina_talk20 () 

	Talk (1, "Эолос: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6223) 

end 

function dina_talk21 () 

	Talk (1, "Сура: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6224) 

end 

function dina_talk22 () 

	Talk (1, "Камус: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6225) 

end 

function dina_talk23 () 

	Talk (1, "Афродита: Ничего себе?, я спрятался так хорошо, но ты нашол меня! ") 
	AddNpcMission (6226) 

end

--солдат из логова
function Zs_Soldier ()
	Talk( 1, "Потерявшийся солдат: Тише! Не разбуди дракона...он кажется спит.")

	AddNpcMission ( 6098 )
	AddNpcMission ( 6099 )
end

------------------------------------------------------------
-- ·ПїуІ№ёшХѕ-----КОЖ·ЙМИЛЎ¤ІјїЁ
------------------------------------------------------------
function r_talk235()

	Talk( 1,  "Пукан: Я продаю различные ожерелья и кольца. Может вас что то заинтересует? " )
	Text( 1,  "Торг ", BuyPage )

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
-- Аµ°ІЙ­БЦІ№ёшХѕ-----КОЖ·ЙМИЛЎ¤АпїЛ
------------------------------------------------------------
function r_talk236()

	Talk( 1,  "Рикка: Я продаю разнообразные кольца и ожерелья. Посмотрите, возможно вас что-нибудь заинтересует. " )
	Text( 1,  "Торг ", BuyPage )

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
-- НЯ¶ыЕµІ№ёшХѕ-----КОЖ·ЙМИЛЎ¤·СА­Ап
------------------------------------------------------------
function r_talk237()

	Talk( 1,  "Ферэрри: Я продаю разнообразные кольца и ожерелья. Посмотрите, возможно вас что-нибудь заинтересует. " )
	Text( 1,  "Торг ", BuyPage )

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
-- АЧцЄ±¤-----КОЖ·ЙМИЛЎ¤О¬їЛ¶а
------------------------------------------------------------
function r_talk238()

	Talk( 1,  "Ветиго: Я продаю разнообразные кольца и ожерелья. Посмотрите, возможно вас что-нибудь заинтересует. " )
	Text( 1,  "Торг ", BuyPage )

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
-- їЁ¶ыјУµВІ№ёшХѕ-----КОЖ·ЙМИЛЎ¤°¬¶ы
------------------------------------------------------------
function r_talk239()

	Talk( 1,  "Аии: Я продаю разнообразные кольца и ожерелья. Посмотрите, возможно вас что-нибудь заинтересует. " )
	Text( 1,  "Торг ", BuyPage )

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
-- °НІјІ№ёшХѕ-----КОЖ·ЙМИЛЎ¤°¬ВЧ
------------------------------------------------------------
function r_talk240()

	Talk( 1,  "Лавочник - Дунман: Я продаю разнообразные кольца и ожерелья. Посмотрите, возможно вас что-нибудь заинтересует. " )
	Text( 1,  "Торг ", BuyPage )

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
-- ±щј«І№ёшХѕ-----КОЖ·ЙМИЛЎ¤Ир¶ч
------------------------------------------------------------
function r_talk241()

	Talk( 1,  "Дунман: Я продаю разнообразные кольца и ожерелья. Посмотрите, возможно вас что-нибудь заинтересует. " )
	Text( 1,  "Торг ", BuyPage )

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
-- °ЧТшіЗ-----ЗеПґ»ъ
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
	Talk( 1,  "Это очень старый чистильщик, способный очистить любую грязь. " )
	Text( 1,  "Очистить Грязь ", MultiTrigger, GetMultiTrigger(), 1)
	--Text( 1,  "Очистить Рождественский подарок ", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3,  "Фу... Какая грязная коробка. ЧТобы ее почистить вам придется заплатить 10000 золота! " )
	Text( 3,  "Очистить ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4,  "Какой красивый сундук! Открой и получишь сюрприз! " )
	Talk( 2,  "Невозможно очистить. У вас недостаточно денег или нет предметов для очистки. " )
end


------------------------------------------------------------
-- їј№Е¶Уі¤-----їј№ЕС§јТ
------------------------------------------------------------
function r_talk2017()
	
	Talk( 1, "Привет солдат я Генерал Снэйл. Я командую армией флота Аскарона.Так же я главный по складу где храница добыча армии с Огромных мостров , за небольшую взятку я могу тебе дать Доспех Чёрного Дракона " )
	Text( 1, "Заманчивое предложение, начальник ", JumpPage, 2)
	
	Talk( 2, "Выберай что тебе нужно туфли,доспех или же перчатки Чёрного Дракона? Запомни!!! Гран-при дешевли и доспехи там лучше " )
	Text( 2, "Доспех ", JumpPage, 3)
	Text( 2, "Перчатки ", JumpPage, 4)	
	Text( 2, "Туфли ", JumpPage, 5)
	Text( 2, "Гран-при ", JumpPage, 6)


	

	Talk(3,"Ты уверен что тебе это нужно? Запомни!!!Это не доспех не с самыми хорошими характеристиками ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasHonorPoint,2000 )
	TriggerAction( 1, TakeHonorPoint, 2000,2000 )
	TriggerAction( 1, GiveItem, 845,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(3,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(4,"Ты уверен что тебе это нужно? Запомни!!!Это не доспех не с самыми хорошими характеристиками ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasHonorPoint,500 )
	TriggerAction( 1, TakeHonorPoint, 500,500 )
	TriggerAction( 1, GiveItem, 846,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(4,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk(5,"Ты уверен что тебе это нужно? Запомни!!!Это не доспех не с самыми хорошими характеристиками ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasHonorPoint,500 )
	TriggerAction( 1, TakeHonorPoint, 500,500 )
	TriggerAction( 1, GiveItem, 847,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(5,"Да ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(6,"Ты уверен что тебе это нужно? Запомни!!!Это не доспех не с самыми хорошими характеристиками по сравнению с Законным Доспехом ")
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasHonorPoint,2500 )
	TriggerAction( 1, TakeHonorPoint, 2500,2500 )
	TriggerAction( 1, GiveItem, 272,1,4 )
	TriggerFailure( 1, JumpPage, 18)
	Text(6,"Да ",MultiTrigger,GetMultiTrigger(),1)
	
	Talk(18,"Ты не сможешь меня обмануть!!! ")


end

------------------------------------------------------------
-- ·ПБйЦ®¶ј-----їј№ЕС§јТ
------------------------------------------------------------
--function r_talk254()
	
--	Talk( 1, "Привет ты наверное пришёл чтобы обменять свои сломаные самоцветы на треснутые.Да?Мне так нравятся когда они перелеваются на свету.Ладно я обменяю свои на твои " )
--	Text( 1, "Обменять.", SendExchangeData)


--	InitExchange()

--	ExchangeData( 6817 , 2 , 6818 , 1 , 1)
--	ExchangeData( 6820 , 2 , 6821 , 1 , 1)
--	ExchangeData( 6823 , 2 , 6824 , 1 , 1)
--	ExchangeData( 6826 , 2 , 6827 , 1 , 1)
--	ExchangeData( 6829 , 2 , 6830 , 1 , 1)

--end

------------------------------------------------------------
-- Д§·ЅКАЅз-----їј№ЕС§јТ
------------------------------------------------------------
function r_talk255()
	
	Talk( 1,  "Исследователь: Привет! Я принадлежу к гильдии исследователей. Я занимаюсь исследованием проклятий Мира демонов. Могу я вам чем то помочь? " )
	Text( 1,  "Узнать о Мире демонов ", JumpPage, 2)

	Talk( 2,  "Исследователь: Я занимаюсь исследованиями Мира демонов уже многое время, и могу снимать проклятья с обнаруженных там вещей с помощью рун. " )
	Text( 2,  "Unseal curse ", JumpPage, 3)
	
	Talk( 3,  "Исследователь: В Мире демонов осталось много предметов, запечатанных льдом. Если у вас есть предмет с печатью льда, то я попробую распечатать его для вас. " )
	Text( 3,  "Посох потаенного ", JumpPage, 6)
	Text( 3,  "Накидка сфинкса ", JumpPage, 7)
	Text( 3,  "Крис сфинкса ", JumpPage, 8)
	Text( 3,  "Правосудие потаенного ", JumpPage, 9)
	Text( 3,  "Аркебуз потаенного ", JumpPage, 10)
	Text( 3,  "Накидка потаенного ", JumpPage, 11)
	Text( 3,  "Плащ потаенного ", JumpPage, 12)
	Text( 3,  "Дальше --> ", JumpPage, 4)

	Talk( 4,  "Исследователь: В Мире демонов осталось много предметов, запечатанных льдом. Если у вас есть предмет с печатью льда, то я попробую распечатать его для вас. " )
	Text( 4,  "Клинок потаенного ", JumpPage, 13)
	Text( 4,  "Тату потаенного ", JumpPage, 14)
	Text( 4,  "Доспех потаенного ", JumpPage, 15)
	Text( 4,  "Мантия сфинкса ", JumpPage, 16)
	Text( 4,  "Посох сфинкса ", JumpPage, 17)

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
	Talk( 6,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 6,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 7,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 7,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 8,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 8,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 9,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 9,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 10,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 10,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 11,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 11,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 12,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 12,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 13,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 13,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 14,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 14,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 15,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 15,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 16,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 16,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 17,  "Исследователь: Для снятия печати с этого предмета тебе нужно принести - запечатанный предмет, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800000 золота. " )
	Text( 17,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30,  "Исследователь: Простите, но у вас нет всех необходимых предметов. " )

end


------------------------------------------------------------
-- Тх°µХУФу-----їј№ЕС§јТ¶Уі¤
------------------------------------------------------------
function r_talk256()
	
	Talk( 1,  "Исследователь: Привет! Я принадлежу к гильдии исследователей. Я занимаюсь исследованиями проклятий Темной топи. МОгу я вам чем то помочь? " )
	Text( 1,  "Узнать о Темной топи ", JumpPage, 2)

	Talk( 2,  "Исследователь: Я занимаюсь исследованиями Темной топи уже долгое время. Чтобы снять печать с предметов Темной топи вы должны принести мне некоторые руны. Кроме того если вы найдете немного Темного масла я могу изготовить для вас Огненное зернышко. " )
	Text( 2,  "Снять печати", JumpPage, 3)
	Text( 2,  "Узнать о Огненном зернышке ", JumpPage, 5)
	
	Talk( 3,  "Исследователь: В Темной топи есть много предметов с печатью земли. За время работы там я научился снимать эти печати. Если у вас есть предмет с печатью земли, то я помогу вам. " )
	Text( 3,  "Плащ призыва ", JumpPage, 6)
	Text( 3,  "Тату проклятого воина ", JumpPage, 7)
	Text( 3,  "Накидка проклятого пламени ", JumpPage, 8)
	Text( 3,  "Посох заклинаний ", JumpPage, 9)
	Text( 3,  "Посох Кабалы ", JumpPage, 10)
	Text( 3,  "Мантия каббалы ", JumpPage, 11)
	Text( 3,  "Клинок заклинаний ", JumpPage, 12)
	Text( 3,  "Дальше --> ", JumpPage, 4)

	Talk( 4,  "Исследователь: В Темной топи есть много предметов с печатью земли. За время работы там я научился снимать эти печати. Если у вас есть предмет с печатью земли, то я помогу вам. " )
	Text( 4,  "Пояс заклинаний ", JumpPage, 13)
	Text( 4,  "Большой меч заклинаний ", JumpPage, 14)
	Text( 4,  "Зуб проклятого ", JumpPage, 15)
	Text( 4,  "Пластинчатый доспех проклятого ", JumpPage, 16)
	Text( 4,  "Поцелуй проклятого ", JumpPage, 17)

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
	Talk( 5,  "Исследователь: Для изготовления Огненного зернышка необходимо: 5 Темное масло, 1 Зажигалка, 5 Клочок ткани. " )
	Text( 5,  "Сделать Огненное зернышко ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 6,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 6,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 7,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 7,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 8,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 8,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 9,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 9,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 10,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 10,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 11,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 11,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 12,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 12,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 13,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 13,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 14,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 14,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 15,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 15,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 16,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 16,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

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
	Talk( 17,  "Исследователь: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400000 золота. " )
	Text( 17,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30,  "Исследователь: Простите, но у вас нет всех необходимых предметов. " )

	Talk( 31,  "Исследователь: Простите, но у вас нет всех необходимых предметов. " )


end


------------------------------------------------------------
-- °ЧТшіЗ-----йД№ы
------------------------------------------------------------
function r_123213lk242()
	Talk( 14,  "Бинго: Дайте мне расписку для получения самоцвета высокого класса. " )
	InitTrigger() 
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 14,  "Получить 3 Самоцвета ветра ",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() 
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "Получить 3 Самоцвета удара ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "Получить 3 Самоцвета колосса ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "Получить 3 Самоцвета ярости ",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14,  "Получить 1 Самоцвет души ",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 15,  "Бинго: Обмен невозможен! У вас нет расписки или заблокирован инвентарь  " )
	Talk( 16,  "С Новым годом! " )

	Talk( 1,  "Бинго: Привет! Я отдающая долги Бинго. У вас есть что то для меня? ")
	Text( 1,  "Расписка на Рождественский самоцвет ", JumpPage, 14 )
    Text( 1,  "Расписка на самоцвет ", JumpPage, 5 )
	Text( 1,  "Расписка на уникальный самоцвет ", JumpPage, 12 )
	Text( 1,  "Расписка на Очищающий самоцвет 1 уровня ", JumpPage, 2 )
	Text( 1,  "Расписка на Очищающий самоцвет 2 уровня ", JumpPage, 3 )
	Text( 1,  "Расписка на Очищающий самоцвет ", JumpPage, 4 )
	Text( 1,  "Дальше --> ", JumpPage, 21 )
	Talk( 21,  "Бинго: Привет! Я отдающая долги Бинго. У вас есть что то для меня? ")
	Text( 21,  "Пиратская расписка ", JumpPage, 17 )
    Text( 21,  "Объединить Камень желаний ", JumpPage, 6 )
	Text( 21,  "Обменять Лунный пирог ", JumpPage, 20 )		-------ФВ±э¶Т»»
	Text( 21,  "Получить Мартовскую фею ", JumpPage, 10 )
	Text( 21,  "<-- Назад ", JumpPage, 1 )
      
	
	Talk( 2,  "Бинго: Дай мне расписку на Очищающий самоцвет 1 уровня для получения очищающего самоцвета, а также еще 1 случайного самоцвета 1 уровня. ")
	Text( 2,  "Обменять ", TransferDiamond, 1)

	Talk( 3,  "Бинго: Дай мне расписку на Очищающий самоцвет 2 уровня для получения очищающего самоцвета, а также еще 1 случайного самоцвета 2 уровня. ")
	Text( 3,  "Обменять ", TransferDiamond, 2)

	Talk( 4,  "Бинго: Дай мне расписку на очищающий самоцвет для получения 1 очищающего самоцвета 1 уровня ")
	Text( 4,  "Обменять ", TransferDiamond, 3)

	Talk( 5,  "Бинго: Дай мне 1 расписку на самоцвет для получения 1 случайного самоцвета 1 уровня ")
	Text( 5,  "Обменять ", TransferDiamond, 4)



	Talk( 17,  "Бинго: У вас есть Пиратская расписка? ")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2238, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2238, 1 )
 	TriggerAction( 1, GiveItem, 2306, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "У меня есть пиратская расписка 8 ",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()--¶Т»»Д¦Б¦·ыКЇ
	TriggerCondition( 1, HasItem, 2240, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2240, 1 )
 	TriggerAction( 1, GiveItem, 1028, 1 ,4)
	TriggerAction( 1,JumpPage, 19 )------------------
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "У меня есть пиратская расписка 6 ",MultiTrigger, GetMultiTrigger(), 1)

	Text( 17,  "У меня есть пиратская расписка 6 ",JumpPage, 19)
	Talk(19, "Бинго: Вы хотите обменять? ")
	Text( 19,  "Обменять ",GetChaName_5, 1)

	InitTrigger()--¶Т»»ѕ«БйУІ±Т99ёц
	TriggerCondition( 1, HasItem, 2237, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2237, 1 )
 	TriggerAction( 1, GiveItem, 855, 99 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "У меня есть пиратская расписка 9 ",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()-- ¶Т»»ЦэФмНјЦЅ "Encrypted Blueprint "Ј±ХЕ
	TriggerCondition( 1, HasItem, 2239, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2239, 1 )
 	TriggerAction( 1, GiveItem, 1001, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "У меня есть пиратская расписка 7 ",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()--¶Т»»јУЛЩіЙі¤№ы1ёц
	TriggerCondition( 1, HasItem, 2241, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2241, 1 )
 	TriggerAction( 1, GiveItem, 0578, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17,  "У меня есть пиратская расписка 5 ",MultiTrigger, GetMultiTrigger(), 1)
	Text( 17,  "Общая сумма пиратских расписок ", GetChaName_4, 1)



	Talk( 18,  "Бинго: Кажется вы не имеете подходящую пиратскую расписку. Убедитесь также что ваш инвентарь не заблокирован и имеется хотя бы одно свободное место. ")

 	InitTrigger() --єПіЙРнФёКЇ
	TriggerCondition( 1, HasItem, 3905, 5 )
	TriggerCondition( 1, HasItem, 3907, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3905, 5 )
	TriggerAction( 1, TakeItem, 3907, 1 )
 	TriggerAction( 1, GiveItem, 3906, 1 ,4)
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6,  "Бинго: Принесите мне 5 Темных камней желанийи 1 Катализатор ковки для обмена на 1 Искрящийся камень желаний ")
	Text( 6,  "Комбинировать ",MultiTrigger, GetMultiTrigger(), 1)        
 	
	Talk( 8,  "Бинго: Вы не имеете нужное количество Темных камней желаний или Катализаторов ковки. Убедитесь также что у вас имеется хотя бы 1 свободное место в инвентаре. ")

	InitTrigger() --¶Т»»ИэФВѕ«Бй
	TriggerCondition( 1, HasItem, 3342, 2 )
	TriggerCondition( 1, HasItem, 3337, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3342, 2 )
	TriggerAction( 1, TakeItem, 3337, 1 )
	TriggerAction( 1, GiveItem, 3335, 1 ,4)
	TriggerFailure( 1, JumpPage, 11 ) 
	Talk( 10,  "Бинго: Принесите мне 2 Светильника и 1 Душу феи для обмена на Мартовскую фею. Душу феи можно найти у Уиткомбы в Бухте Хафта. ")
	Text( 10,  "Обменять ",MultiTrigger, GetMultiTrigger(), 1) 
   
	Talk( 11,  "У вас нет всего необходимого для обмена. Возможно также у вас нет свободных мест в инвентаре или он заблокирован. ")
	
	Talk( 12,  "Бинго: Дайте мне 1 расписку на уникальный самоцвет для обмена на уникальный самоцвет. ")

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0863, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "Получить самоцвет ярости ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid,1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "Получить самоцвет души ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0862, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "Получить самоцвет колосса ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0861, 1,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12,  "Получить самоцвет удара ",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0860, 1, 101 )
	TriggerFailure( 1, JumpPage, 13 ) 
	Text( 12,  "Получить самоцвет ветра ",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 13,  "Бинго: У вас нет расписки на уникальный самоцвет! Возможно также ваш инвентарь переполнен или заблокирован. ")
	
	Talk( 20,  "Бинго: Я обожаю Лунные пироги? У вас есть? Я дам за них превосходный товар " )
	InitTrigger() --99ёцЈєГФЦ®Лш10ёц
	TriggerCondition( 1, HasItem,3095, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 99 )
	TriggerAction( 1, GiveItem, 2440, 10, 4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20,  "Обменять 99 пирогов на Супер усилитель стремлений ",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --100ёцЈєІЖё»1ёц
	TriggerCondition( 1, HasItem,3097, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 100 )
	TriggerAction( 1, GiveItem, 3096, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20,  "Обменять 99 пирогов на Большой усилитель удачи ",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 21,  "Бинго: У вас нет необходимого количества предметов! Возможно также ваш инвентарь переполнен или заблокирован. ") 

end
------------------------------------------------------------
-- °ЧТшіЗ-----»о¶ЇЧЁФ±
------------------------------------------------------------
--function mmm_talk01()
--	Talk( 1,  "Ведущий мероприятий: Обо всех готовящихся или проводимых мероприятиях вы можете узнать у меня. ")
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
--	InitTrigger()						----50WєЈµБ±Т
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
--	Text(18,  "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

--	Talk( 19,  "Pappa: Do you have enough Cards on you? Please check if your inventory is binded! ")
--	Talk( 20,  "You can take the challenge of Hexathlon again now! ")
--	Talk( 21,  "you can do the challenge now.please don't joke with me.i'm busy now. ")
	-----МъИЛБщПо
--	AddNpcMission ( 6114 )


	----------------11.27-12.3
--	InitTrigger()					----10ёцЙсПЙЅ¬№ы
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
--	Text(18,  "Обменять ", MultiTrigger, GetMultiTrigger(), 1)


	---------------12.4-12.10
--	InitTrigger()						----МжЙнНЮНЮ10ёц+5ёцЙсПЙЅ¬№ы
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
--	Text(18,  "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

	---------------12.11-12.17
--	InitTrigger()						----єЪБъ
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
--	Text(18,  "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

--	Talk( 13, bgtalk13)
--	Talk( 14, bgtalk14)
--	Talk( 15, bgtalk15)
--	Talk( 16, bgtalk16)
--	Talk( 17, bgtalk17)

--end

------------------------------------------------------------
-- °ЧТшіЗ-----ЗьФ­
------------------------------------------------------------
function mmm_talk02()
	Talk( 1,  "Ку Ванг: Эх... Снова длинная поездка домой... ")
	AddNpcMission ( 902 )
	AddNpcMission ( 903 )
	AddNpcMission ( 904 )
end
-----------------------------------------------------------
---Йіб°іЗ---іиОп№ЬАнФ±Ў¤АКДГ¶И
-----------------------------------------------------------
function e_talk01 ()
	Talk( 1,  "Ланга: Демонический фрукт определяет какой тип феи получится в результате свадьбы фей. После свадьбы уровень фей учавствовавших в ней понизится на 4 уровня. " )
	Text( 1,  "Особенности фей нового поколения " ,JumpPage, 2)
	Text( 1,  "Условия спаривания фей ", JumpPage, 3)
	Text( 1,  "Свадьба фей ", OpenEidolonMetempsychosis )
	Talk( 2,  "Ланга: Фея нового поколения может изучить навыки саморазрушение и посешена. Кроме того феи Силы, Ловкости, Телосложения, Духа и Точности могут поднять соответствующий навык у своего владельца при использовании посешена. Фея Удачи и фея Зла могу поднять вероятность выпадения вещей и количество опыта соответственно. А Мордо младший способен сделать все это сразу. ")	
	Talk( 3,  "Ланга: На уровень полученной феи нового поколения очень влияет уровень родителей. Кроме того у каждого вида есть свои способности. Какой вас интересует? ")
	Text( 3,  "Условия для получения феи Силы ", JumpPage, 4  )
	Text( 3,  "Условия для получения феи Телосложения ", JumpPage, 5  )
	Text( 3,  "Условия для получения феи Точности ", JumpPage, 6  )
	Text( 3,  "Условия для получения феи Духа ", JumpPage, 7  )
	Text( 3,  "Условия для получения феи Ловкости ", JumpPage, 8  )
	Text( 3,  "Условия для получеиня феи Удачи ", JumpPage, 9 )
	Text( 3,  "Условия для получения феи Зла ", JumpPage, 10 )
	Text( 3,  "Условия для получения Мордо младшего ", JumpPage, 11 )	
	Talk(  4,  "Ланга: Для получения феи Силы необходимо - 2 феи старше 20 уровня, 1 Демонический фрукт силы, 10 Фрагментов арабской жемчужины, 10 Трупов стенающего воина и немного золота. ")
	Talk(  5,  "Ланга: Для получения феи Телосложения необходимо - 2 феи старше 20 уровня, 1 Демонический фрукт храбрости, 10 Треснутых арабских жемчужин, 10 Трупов печального лучника и немного золота. ")
	Talk(  6,  "Ланга: Для получения феи Точности необходимо - 2 феи старше 20 уровня, 1 Демонический фрукт энергии, 10 Рыбьих шипов, 10 Грязной колоды и немного золота. ")
	Talk(  7,  "Ланга: Для создания феи Духа необходимо - 2 феи старше 20 уровня, 1 Демонический фрукт интеллекта, 10 Хвостов выползня, 10 Трупов стенающего лучника и немного золота. ")
	Talk(  8,  "Ланга: Для создания феи Ловкости необходимо - 2 феи старше 20 уровня, 1 Пьяные мечты, 10 Плавников акулы, 10 Болотное дерево и немного золота. ")
	Talk(  9,  "Ланга: Для создания феи Удачи необходимо - 2 феи старше 20 уровня, 1 Демонический фрукт кислоты, 10 Вкусного мяса кальмара, 10 Трупов печального воина и немного золота. ")
	Talk(  10,  "Ланга: Для создания феи Зла необходимо - 2 феи старше 20 уровня, 1 Демонический фрукт тайны, 10 Частей искрящейся арабской жемчужины, 10 Комков грязи и немного золота. ")
	Talk(  11,  "Ланга: При создании Мордо младшего не имеет значение какой фрукт используется. Для этого необходимы лишь 2 феи Мордо старше 20 уровня. При спаривании феи Мордо с любой другой феей вероятность получения Мордо младшего будет зависеть от уровня этих фей. ")

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

------------------------------С°ХТТЕК§µД°®Зй
function el_talk01()
	Talk( 1,  "Маленькая рыбка: Вернитесь скорее, я не справлюсь с этим один... ")	
	AddNpcMission ( 907 )
	AddNpcMission ( 911 )
	AddNpcMission ( 912 )
	AddNpcMission ( 917 )
end
function el_talk02()
	Talk( 1,  "Бабочка: Я близкий друг Цветочка... ")
	AddNpcMission ( 908 )
	AddNpcMission ( 909 )
	AddNpcMission ( 910 )
end
-----------------------------------------------------------
---°ЧТш---ЙсГШЖЕЖЕ
-----------------------------------------------------------
-------------------------------------°®ЗйЦШЙъ
function el_talk03()
	Talk( 1,  "Таинственная бабуля: Я не понимаю что во мне такого таинственного... ")	


	AddNpcMission ( 918 )
--------eleven
	AddNpcMission ( 5018 )
	AddNpcMission ( 5020 )
	AddNpcMission ( 5021)
	AddNpcMission ( 5022)
end
-----------------------------------------------------------
---ґє·зХт---ЙсГШµДВЇЧУ
-----------------------------------------------------------
function star_talk02 ()
	Talk( 1,  "Очаг Бессмертия: Что вы так смотрите? Никогда не видели такую красивую печь? " )
	Text( 1,  "Описание функции ", JumpPage, 2 )
	Text( 1,  "Улучшение особого набора ", OpenItemTiChun )
	Text( 1,  "Зарядка коралла ", OpenItemEnergy )
	Text( 1,  "Вытащить самоцвет ", OpenGetStone )
	Text( 1,  "Починить инструмент ", OpenItemFix )
	Talk( 2,  "Очаг Бессмертия: Я больше не буду говорить ни о чем. Пробуйте сами. " )
	Text( 2,  "Об улучшении набора Кайлин, набора Черного дракона и снаряжения босса 70 уровня. ", JumpPage, 3)
	Text( 2,  "Узнать о зарядке коралла ", JumpPage, 4 )
	Text( 2,  "Узнать о вытаскивании саомцвета ", JumpPage, 5 )
	Text( 2,  "Узнать о починке инструментов ", JumpPage, 6)
	Talk( 3,  "Очаг Бессмертия: С помощью этой функции вы можете улучшить набор Кайлин, набор Черного дракона или снаряжение босса 70 уровня в набор Смерти 75 уровня. Вставленные в предмет самоцветы сохранятся. " )
	Talk( 4,  "Очаг Бессмертия: Вы можете зарядить свой коралл используя особые батареи. Например Перезаряжаемая батарея способна зарядить от 50 до 1000 энергии коралла, а Перезаряжаемая супербатарея способна зарядить до 1500 энергии коралла. После использования батарея исчезает! " )
	Talk( 5,  "Очаг Бессмертия: Извлечение самоцвета из слота идет сверху вниз. Уровень извлекаемого самоцвета будет равен уровню вставленного самоцвета. После извлечения уровень вставленного самоцвета уменьшается на 1 единицу. Извлечения каждого самоцвета требует 1 Клещи кузнеца. ")
	Text( 5,  "Пример вытаскивания самоцвета ", JumpPage, 7 )
	Talk( 6,  "Очаг Бессмертия: Ремонтировать можно только поврежденные Кристальный котел, Кристалл антиматерии, Черную дыру, Частицу антивещества. Ремонтирование каждого предмета потребует использование 1 Ремонтного инструмента. Уровень ремонтного инструмента должен быть равен уровню повредленного инструмента. " )
	Talk( 7,  "Очаг Бессмертия: Возьмем Меч дракона с 3 слотами для примера. В первом слоте Самоцвет ярости 3 уровня, во втором Огненный самоцвет 2 уровня и в третьем Глаз Черного дракона 1 уровня. При извлечении мы получим Самоцвет ярости 3 уровня, а в первом слоте будет Самоцвет ярости 2 уровня. Извлечение всегда идет с 1 слота поочередно. " )
end 
-----------------------------------------------------------
---°ЧТш---ЕцЕцАЦ
-----------------------------------------------------------
function star_talk03 ()
	Talk( 1,  "Джекпот: Привет! Перед игрой я бы советовал оставить побольше свободного места в инвентаре, вы можете выиграть нечто ценное! " )
	Text( 1,  "Узнать про игру ", JumpPage, 2 )
	Text( 1,  "Играть в Джекпот ", OpenTiger )
	Talk( 2,  "Джекпот: Каждая игра требует минимум 5 Монет феи. Играть вы можете любое количество раз. Чем больше вы играете, тем выше шанс на победу! " )
end 
--------------------------------------СЄРИµДёЯёъР¬
function el_talk04 ()
	
	Talk( 1,  "Тощий рабочий: Эх... Ох... Кто бы мог помочь мне... " )-------------(2249,2705)
	AddNpcMission ( 919 )
end

-----------------------------------------------------------
---УЎµЪ°ІДЙЎ¤ЗнЛ№
-----------------------------------------------------------
function llleo_talk01()
	Talk( 1,  "Индиана Джонс: Я нашел тайну Мира дмонов. Вы хотите знать об этом?" )
	Text( 1,  "Узнать секрет ", JumpPage, 2)

	Talk( 2,  "Индиана Джонс: Ходит слух что Мир демонов состоит из 2 измерений, а значит вы можете быть в каждом из 2 измерений одновременно. И теперь есть другой способ распечатать предметы оттуда. Другие исследователи не знают о нем. Если вы хотите его попробовать, то я вам помогу. " )
	Text( 2,  "Снять печати ", JumpPage, 3)
	
	Talk( 3,  "Индиана Джонс: Распечатывание уникального снаряжения требует огромного количества энергии. Другие исследователи используют для этого энергию большого количества рун. Мне же достаточно энергии одной руны - Изменчивой руны. " )
	Text( 3,  "Посох потаенного ", JumpPage, 6)
	Text( 3,  "Накидка сфинкса ", JumpPage, 7)
	Text( 3,  "Крис сфинкса ", JumpPage, 8)
	Text( 3,  "Правосудие потаенного ", JumpPage, 9)
	Text( 3,  "Аркебуз потаенного ", JumpPage, 10)
	Text( 3,  "Накидка потаенного ", JumpPage, 11)
	Text( 3,  "Плащ потаенного ", JumpPage, 12)
	Text( 3,  "Дальше --> ", JumpPage, 4)

	Talk( 4,  "Индиана Джонс: Распечатывание уникального снаряжения требует огромного количества энергии. Другие исследователи используют для этого энергию большого количества рун. Мне же достаточно энергии одной руны - Изменчивой руны. " )
	Text( 4,  "Клинок потаенного ", JumpPage, 13)
	Text( 4,  "Тату потаенного ", JumpPage, 14)
	Text( 4,  "Доспех потаенного ", JumpPage, 15)
	Text( 4,  "Мантия сфинкса ", JumpPage, 16)
	Text( 4,  "Посох сфинкса ", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 6,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 7,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 8,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 9,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 10,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 11,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 12,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 13,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 14,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 15,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 16,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17,  "Индиана Джонс: Для снятия печати с этого предмета мне необходимо - запечатанный предмет, 1 Изменчивая руна и 800000 золота. " )
	Text( 17,  "Снять печать ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30,  "Индианна Джонс: Простите, но у вас нет всех необходимых предметов. " )

end

function kk_talk01 ()

	Talk( 1,  "Администратор Хаоса: В бою выживают лишь сильнейшие, и лишь сильнейшие получают уважение. " )
	Text( 1,  "Получить награды ", JumpPage ,7)
	Text( 1,  "Посмотреть ТОП Хаоса ", Garner2GetWiner)
	Text( 1,  "Войти в ТОП Хаоса ", Garner2RequestReorder)
	--Text( 1,  "You received Chaos Manual ", Change_FightingBook)
	--Text( 1,  "About Chaos manual ", JumpPage ,2)
	Text( 1,  "Узнать о ранге Хаоса ", JumpPage ,3)
	Text( 1,  "Узнать о Хаосе Аргента ", JumpPage ,13)

	Talk( 2,  "Администратор Хаоса: If you do not have the Mark of Honor, this Chaos Manual will record all your Honor points. If you have the Mark of Honor, this book will replace your former Mark of Honor and record all your Honor. Your existing points will not vanish and will be recorded on this book. " )
	Text( 2, "Comfirm ",Change_FightingBook)

	Talk( 3,  "Администратор Хаоса: Оцениваются все участники сражения, однако войти в список могут лишь пятеро сильнейших. " )
	Text( 3, "Узнать о очках Хаоса ",JumpPage ,4)
	Text( 3, "Узнать о экипировке Хаоса ",JumpPage ,6)


	Talk( 4,  "Администратор Хаоса: Вы можете получать очки Хаоса побеждая противников примерно вашего уровня. Все очки записываются в вашу Медаль отваги. " )
	Talk( 6,  "Администратор Хаоса: Набор Хаоса включает в себя Огненный камень Хаоса, Каменную руку Хаоса и Каменную ногу Хаоса. При ношении полного набора можно получить определенный бонус в зависимости от положение в ТОП Хаоса. " )

	Talk( 7,  "Администратор Хаоса: Обращайтесь ко мне, если хотите получить ценные вещи. " )
	Text( 7, "Получить Стандартную расписку Хаоса ",JumpPage ,8)
	Text( 7, "Получить Сундук Хаоса ",JumpPage ,9)
	Text( 7, "Обменять на Эмблему короля ринга ",JumpPage ,10)
	Text( 7, "Получить гайд ",SendExchangeXData)
	Text( 7, "Получить Символ Чести ",JumpPage ,12)

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

	Talk( 8,  "Администратор Хаоса: Необходимо 1 Святой эмблемы кольца " )
	Text( 8,  "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1032, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1032, 1 )
	TriggerAction( 1, GiveItem, 1134, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	
	Talk( 9,  "Chaos Администратор Арены: Необходимо 1 Эмблема короля ринга " )
	Text( 9,  "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 5 )
	TriggerAction( 1, GiveItem, 1032, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )

	Talk( 10,  "Администратор Хаоса: Необходимо 5 Святой эмблемы кольца" )
	Text( 10,  "Обменять ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11,  "Администратор Хаоса: Найдите меня как соберете все необходимые предметы. Также не забудьте освободить 1 Свободное место в инвентаре. " )

	Talk( 12,  "Администратор Хаоса: Символы Чести это Сердце Искры, Отважное сердце и Сердце великолепия. Они требуют для получения 200, 2000 и 20000 очков репутации соответственно. " )
	Text( 12,  "Получить Сердце искры ", Change_shanyao)
	Text( 12,  "Получить Отважное сердце ", Change_rongyao)
	Text( 12,  "Получить Сердце великолепия ", Change_huihuang)

	Talk( 13,  "Администратор Хаоса: Хаос Аргента позволяет игрокам проводть свободные сражения на своей территории. Чтобы войти в Хаос Аргента игрок должен быть как минимум 20 уровня и иметь 20 очков чести, 30 очков репутации и небольшое количество золота. " )

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
	Talk( 1,  "Посмотрите все наши изделия! Качество гарантируем! " )
	Text( 1,  "Посмотреть предметы ", SendExchangeXData)

	
	--¶Т»»ЛщРиОпЖ· ID,КэБї,¶Т»»ЛщµГОпЖ·КэБї,ёіУиµДЦµ
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
	Talk( 1,  "Продажа камней! Не подходите если не имеете при себе деньги! " )
	Text( 1,  "У меня есть деньги ", SendExchangeXData)

	
	--¶Т»»ЛщРиОпЖ· ID,КэБї,¶Т»»ЛщµГОпЖ·КэБї,ёіУиµДЦµ
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
	Talk( 1, "Привет я Фёдор.Я злой враг Торговца чёрного рынка так как он продаёт плохие и незаконные вещи ,а я законный предприниматель " )
	Text( 1, "Верю,верю дай товар поглядеть.", SendExchangeData)
	
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єПіЙЅйЙЬФ±
-----ЅйЙЬФ±-А¶
function max_talka1()
	Talk( 1,  "Помощник: Привет, я помощник! Я могу помочь вам с проблемами, с которыми вы столкнетесь при использовании инструмента для анализа. " )
	Text( 1,  "Что за инструмент для анализа? ", JumpPage ,2)
	Text( 1,  "Я могу использовать анализатор? ", JumpPage ,7)
	Text( 1,  "Как работает анализатор? ", JumpPage ,3)
	Text( 1,  "Что можно анализировать? ", JumpPage ,4)
	Text( 1,  "Спасибо, я все знаю ", JumpPage ,6)

	Talk( 2,  "Помощник: Инструмент для анализа это таинственный инструмент. Он позволяет получить исходные компоненты любого предмета. " )
	Text( 2,  "Я хочу задать другой вопрос", JumpPage ,1)
	Text( 2,  "Понятно... Вопросов больше нет. ", CloseTalk)

	Talk( 3,  "Помощник: Вы должны приготовить фею, инструмент и катализатор для анализа. Затем поместите все предметы в правильные ячейки. У феи должен быть соответствующий навык. " )
	Text( 3,  "Что будет если анализ провалится? ", JumpPage ,5)
	Text( 3,  "Вы кажется упомянули инструменты? ", JumpPage ,9)
	Text( 3,  "Я хочу задать другой вопрос ", JumpPage ,1)
	Text( 3,  "Понятно... Вопросов больше нет. ", CloseTalk)

	Talk( 4,  "Помощник: Анализировать можно доспехи и оружие. Использование разных катализаторов приводит к получению разных предметов. " )
	Text( 4,  "Как можно получить катализатор? ", JumpPage ,8)
	Text( 4,  "Я хочу задать другой вопрос", JumpPage ,1)
	Text( 4,  "Понятно... Вопросов больше нет. ", CloseTalk)

	Talk( 5,  "Помощник: Не волнуйтесь, использование анализатора совершенно безопасно. Однако при провале вы потеряете анализируемый предмет и катализатор. ")
	Text( 5,  "Я хочу задать другой вопрос ", JumpPage ,1)
	Text( 5,  "Понятно... Вопросов больше нет. ", CloseTalk)

	Talk( 6,  "Помощник: Надеюсь у вас все пройдет удачно! ")
	Text( 6,  "Продолжить ", CloseTalk)

	Talk( 7,  "Помощник: Конечно вы можете. Только сначала вам придется купить руководство по анализу у бакалейщика. ")
	Text( 7,  "Я хочу задать другой вопрос ", JumpPage ,1)
	Text( 7,  "Понятно... Вопросов больше нет. ", CloseTalk)

	Talk( 8,  "Помощник: Катализаторы можно получить у некоторых торговцев, а также как награду за квесты. " )
	Text( 8,  "Я хочу задать другой вопрос ", JumpPage ,1)
	Text( 8,  "Понятно... Вопросов больше нет. ", CloseTalk)

	Talk( 9,  "Помощник: Инструмент это необходимый для анализа предмет. Однако не забудьте что уровень инструмента для анализа должен быть не меньше уровня навыка анализа. " )
	Text( 9,  "Я хочу задать другой вопрос ", JumpPage ,1)
	Text( 9,  "Понятно... Вопросов больше нет. ", CloseTalk)

end

-----уф»рЖЕЖЕ
function max_talka2()
	Talk( 1,  "Бабушка Спичка: Привет! Я бабушка Спичка. Когда то давно я была самым известным поваром! ЧЕм я могу помочь? " )
	Text( 1,  "Я хочу узнать где я могу готовить ", JumpPage ,2)
	Text( 1,  "Я могу научится кулинарии? ", JumpPage ,3)
	Text( 1,  "Вы можете научить меня готовить? ", JumpPage ,4)
	Text( 1,  "Для этого нужно что то особое? ", JumpPage ,5)
	Text( 1,  "Я просто проходил мимо... ", JumpPage ,6)

	Talk( 2,  "Бабушка Спичка: Для приготовления пищи вам необходим огонь. Огнем нужно дорожить! " )
	Text( 2,  "Задать другие вопросы ", JumpPage ,1)
	Text( 2,  "Спасибо бабушка, я все понял. ", CloseTalk)

	Talk( 3,  "Бабушка Спичка: Да, конечно. Но сначала вы должны изучать соответствующий навык. Книгу навыка можно приобрести у бакалейщика. " )
	Text( 3,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 3,  "Спасибо бабушка, я все понял. ", CloseTalk)

	Talk( 4,  " Бабушка Спичка: Кулинария - сложный навык. Во первых вам необходим Кристальный котел. Также необходима фея с соответствующим навыком, рецепт и все компоненты. Затем необходимо правильно разложить все ингридиенты. Не забывайте также что пища может как недоварится, так и сгореть! " )
	Text( 4,  "When will the fire be just nice? ", JumpPage ,7)
	Text( 4,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 4,  "Спасибо бабушка, я все понял. ", CloseTalk)

	Talk( 5,  "Бабушка Спичка: Если пища готовится при правильной температуре, то она имеет не только приятный вкус, но и особую силу. " )
	Text( 5,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 5,  "Спасибо бабушка, я все понял. ", CloseTalk)

	Talk( 6,  "Бабушка Спичка: Надеюсь у вас все пройдет великолепно! ")
	Text( 6,  "I'm really just passing by ", CloseTalk)

	Talk( 7,  "Бабушка Спичка: Самый лучший результат вы получите примерно на 75% варки пищи. Не забывайте об этом! ")
	Text( 7,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 7,  "Спасибо бабушка, я все понял. ", CloseTalk)

end

-----ИЫВЇјјК¦Ў¤Г·їЛ
function max_talka3()
	Talk( 1,  "Ремесленник печи: Привет! Вы ищете меня? " )
	Text( 1,  "Скажите что может делать печь ", JumpPage ,2)
	Text( 1,  "Как использовать печь? ", JumpPage ,3)
	Text( 1,  "Скажите тайну печи ", JumpPage ,4)
	Text( 1,  "Я просто проходил мимо ", JumpPage ,5)


	Talk( 2,  "Ремесленник печи: Печь используется для изготовления экипировки. " )
	Text( 2,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 2,  "Спасибо! Я все понял. ", CloseTalk)

	Talk( 3,  "Ремесленник печи: Чтобы использовать печь вам необходимо выучить навык ремесла. Книгу навыка вы можете приобрести у бакалейщика. " )
	Text( 3,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 3,  "Спасибо! Я все понял. ", CloseTalk)

	Talk( 4,  "Ремесленник печи: Вы должны иметь фею с соответствующим навыком. Кроме того вам потребуется инструмент, чертеж и все необходимые компоненты. Не забудьте рассатвить компоненты в правильном порядке. " )
	Text( 4,  "Как делать лучшие вещи? ", JumpPage ,7)
	Text( 4,  "Спасибо! Я все понял. ", CloseTalk)

	Talk( 7,  "Ремесленник печи: В процессе производства вы можете получить предметы с магическими свойствами. Однако это потребует большого количество материалов и более высокий навык питомца. " )
	Text( 7,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 7,  "Спасибо! Я все понял. ", CloseTalk)

	Talk( 5,  "Ремесленник печи: Вы волк? Так зачем тут гуляете? ")
	Text( 5,  "Я только проходил мимо... ", CloseTalk)

end

-----СРѕїЙъ
function max_talka4()
	Talk( 1,  "Специалист: Привет! Что я могу для вас сделать? " )
	Text( 1,  "Что это рядом с вами?", JumpPage ,2)
	Text( 1,  "Я могу использовать Генератор материи? ", JumpPage ,3)
	Text( 1,  "Как работает Генератор материи? ", JumpPage ,4)
	Text( 1,  "Что может произвести генератор? ", JumpPage ,5)
	Text( 1,  "Я просто прохожу мимо ", JumpPage ,6)


	Talk( 2,  "Специалист: Это наше последнее изобретение - Генератор вещества. Мы используем его для очистки металлов. " )
	Text( 2,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 2,  "Спасибо! Я все понял. ", CloseTalk)

	Talk( 3,  "Специалист: Сначала изучите навык производства. Книгу навыка можно купить у бакалейщика. " )
	Text( 3,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 3,  "Спасибо! Я все понял. ", CloseTalk)

	Talk( 4,  "Специалист: Вам необходимо иметь фею с соответствующим навыком. Кроме тоговам нужен инструмент, ертеж и все необходимые компоненты. " )
	Text( 4,  "Какой может быть результат? ", JumpPage ,7)
	Text( 4,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 4,  "Спасибо! Я все понял. ", CloseTalk)

	Talk( 5,  "Специалист: Можно произвести различные предметы. Если все компоненты разложены в правильном порядке, то вы не будете разочарованы в результате. " )
	Text( 5,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 5,  "Спасибо! Я все понял. ", CloseTalk)

	Talk( 6,  "Специалист: Похоже это вы... ")
	Text( 6,  "Я просто прохожу мимо... ", CloseTalk)

	Talk( 7,  "Специалист: Поскольку мы не всемогущи, то и продукт не всегда получается идеальным. ЧТобы отличить качество продукта были сделаны соответствующие метки. ")
	Text( 7,  "Я хочу задать другие вопросы ", JumpPage ,1)
	Text( 7,  "Спасибо! Я все понял. ", CloseTalk)
end

---------------------КҐµ®Кч
function el_talk05 ()
	
	Talk( 1,  "Рождественская ель: С Новым годом тебя! Каждая добрая душа получит благословление! " )
	Text( 1,  "Получить благословление ",JumpPage, 2  )
	
	Talk ( 2,  "Рождественская ель: Вы хотите получить ваше благословление? Это потребует 1 Рождественскую открытку и 1000 золота. " )
	Text( 2,  "Я хочу получить свое благословление ",JumpPage, 3  )
	
	Talk( 3,  "Рождественская ель: Да благославит вас Бог в этом году! Пусть вам улыбается удача! ")
	Text(3, "Я хочу получить благословление ",  GetChaName_0, 1)
	Text( 3,  "Дальше --> ",JumpPage, 6  )

	Talk( 6,  "Рождественская ель: Да благославит вас Бог в этом году! Пусть вам улыбается удача! ")
	Text(6, "Я хочу получить благословление ",  GetChaName_1, 1)
	Text( 6,  "Дальше --> ",JumpPage, 7  )
	Text( 6,  "<-- Назад ",JumpPage, 3  )

	Talk( 7,  "Рождественская ель: Да благославит вас Бог в этом году! Пусть вам улыбается удача! ")
	Text(7, "Я хочу получить благословление ",  GetChaName_2, 1)
	Text( 7,  "Дальше --> ",JumpPage, 8  )
	Text( 7,  "<-- Назад ",JumpPage, 6  )

	Talk( 8,  "Рождественская ель: Да благославит вас Бог в этом году! Пусть вам улыбается удача! ")
	Text(8, "Я хочу получить благословление ",  GetChaName_3, 1)
	Text( 8,  "<-- Назад ",JumpPage, 7  )
---------------------------------------------------------------------------------------------------------------	
end

----------------------------------------»фЅрЛ№-------------------------
--------------------------------јЕДЇЦ®Лю6Іг(51300,26900)
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

	Talk( 1,  "Хаскинсон: Я машина смерти! Не заговаривай со мной если у тебя меньше 75 уровня и 9999 очков репутации. " )
	Text( 1,  "Привет! ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2,  "Хаскинсон: Чтобы получить фрагменты вы должны ответить на несколько вопросов! Какая из этих историй связана с поисками пропавшего мальчика? " )
	Text( 2,  "Отравление еды ",JumpPage, 3  )
	Text( 2,  "Пропавшие инструменты ",JumpPage, 4  )
	Text( 2,  "Причина сумасшествия ",JumpPage, 3  )
	Text( 2,  "Убийство грибов ",JumpPage, 32  )

	Talk( 3,  "Хаскинсон: Не будьте так высокомерны! Дальше... Кто любит Эндрю? " )
	Text( 3,  "Кодди ",JumpPage, 4  )
	Text( 3,  "Жоу ",JumpPage, 32  )
	Text( 3,  "Маленькая рыбка ",JumpPage,5  )
	Text( 3,  "Ян Бин ",JumpPage, 2  )
	Text( 3,  "Хами ",JumpPage, 4  )
	Text( 3,  "Ли Жанг Йонг ",JumpPage, 4  )

	Talk( 4,  "Хаскинсон: Что из ниже перечисленного является ингридиентом для производства?" )
	Text( 4,  "Темная кровь выползня и Чистая вода ",JumpPage, 5  )
	Text( 4,  "Шкура кровавого выползня и Чай-бодрячок ",JumpPage, 5  )
	Text( 4,  "Кровь зловещего выползня и Стимулятор ",JumpPage, 2  )
	Text( 4,  "Кровь прозрачного выползня и Чистая вода ",JumpPage, 32 )
	Text( 4,  "Толстый хвост прозрач. выползня ",JumpPage, 6  )
	Text( 4,  "Чай-бодрячок и Стимулятор ",JumpPage, 19  )
	Text( 4,  "Кровь зловещего выползня ",JumpPage, 5  )

	Talk( 5,  "Хаскинсон: Любовный подарок от таинственной бабушки это...? " )
	Text( 5,  "Кристальная слеза ",JumpPage, 32  )
	Text( 5,  "Слеза Камня правды ",JumpPage, 6  )
	Text( 5,  "Камень Ланга ",JumpPage, 3  )
	Text( 5,  "Янтарная слеза ",JumpPage, 22  )
	Text( 5,  "Сад камня Кануна ",JumpPage, 7  )
	Text( 5,  "Слеза Кары ",JumpPage, 7  )
	Text( 5,  "Слеза первой любви ",JumpPage, 32  )

	Talk( 6,  "Хаскинсон: Какие отношения между Анубисом и Ричи? " )
	Text( 6,  "Отец и сын ",JumpPage, 4  )
	Text( 6,  "Дед и внук ",JumpPage, 8  )
	Text( 6,  "Братья ",JumpPage, 7  )
	Text( 6,  "Любимые ",JumpPage, 32  )
	Text( 6,  "Нет отношений ",JumpPage, 32  )
	Text( 6,  "Дальние родственники ",JumpPage, 32  )
	Text( 6,  "Кузены ",JumpPage, 7  )
	Text( 6,  "Сестры ",JumpPage, 7  )

	Talk( 7,  "Хаскинсон: Для чего используют Демонический фрукт? " )
	Text( 7,  "Для свадьбы фей ",JumpPage, 32  )
	Text( 7,  "Как Яблоко ",JumpPage, 8  )
	Text( 7,  "Для демонов ",JumpPage, 9  )
	Text( 7,  "Для управления фруктами демонов ",JumpPage, 5  )
	Text( 7,  "Для закалки ",JumpPage, 32  )

	Talk( 8,  "Хаскинсон: Кем Голди работал раньше? " )
	Text( 8,  "Мясником ",JumpPage, 3  )
	Text( 8,  "Звездой кино ",JumpPage, 32  )
	Text( 8,  "Преподавателем ",JumpPage, 32  )
	Text( 8,  "Моделью ",JumpPage, 9  )
	Text( 8,  "ГМом ",JumpPage, 7  )
	Text( 8,  "Директором компании ",JumpPage, 9  )

	Talk( 9,  "Хаскинсон: Какое утверждение из ниже указанных верное? " )
	Text( 9,  "Вы будете сожалеть выбрав меня ",JumpPage, 4  )
	Text( 9,  "Хами - незаконный сын Санг Ди ",JumpPage, 10 )
	Text( 9,  "Белди не умеет печь пироги ",JumpPage, 32  )
	Text( 9,  "Санг Ди живет дольше Таинственной бабушки ",JumpPage, 23 )
	Text( 9,  "Верховный жрец был раньше пиратом ",JumpPage, 6  )

	Talk( 10,  "Хаскинсон: Торговец Черного рынка был обычным. Это было...  " )
	Text( 10,  "10 лет назад ",JumpPage, 5  )
	Text( 10,  "Полгода назад ",JumpPage, 5  )
	Text( 10,  "Когда он торговал антиквариатом ",JumpPage, 32 )
	Text( 10,  "Когда он только пришел в Ледынь ",JumpPage, 8  )
	Text( 10,  "Прежде чем он влюбился в Донну ",JumpPage, 11  )
	Text( 10,  "После того как был брошен Донной",JumpPage, 32  )
	Text( 10,  "Когда учился в институте Торговцев Черного рынка ",JumpPage, 8  )

	Talk( 11,  "Хаскинсон: Как вы думаете какой НПС Паппа? " )
	Text( 11,  "25 летний симпатичный парень ",JumpPage, 32 )
	Text( 11,  "Нежная девушка ",JumpPage, 30  )
	Text( 11,  "Жестокая девочка-сорванец ",JumpPage, 13  )
	Text( 11,  "Страшный брачный аферист ",JumpPage, 2  )
	Text( 11,  "Счастливая симпатичная девушка ",JumpPage, 13  )
	Text( 11,  "Очаровательный идол ",JumpPage, 32  )
	Text( 11,  "Нет правильных ответов. ",JumpPage, 28  )

	Talk( 30,  "Хаскинсон: Вы очень глубоко заблуждаетесь!"  )
	Text( 30,  "Далее --> ",JumpPage, 32  )
	Talk( 31,  "Хаскинсон: Не позволяйте ей узнать что вы выбрали этот ответ!" )
	Text( 31,  "Далее --> ",JumpPage, 32  )

	--Talk( 12,  "Хаскинсон: Which of the below description is wrong? " )
	--Text( 12,  "Minelli is the High Priest's secretary ",JumpPage, 32 )
	--Text( 12,  "You can win Black Dragon equipment from Lucky Chance ",JumpPage, 3 )
	--Text( 12,  "Ditto knows how to concort the Reverse Love Potion. ",JumpPage,8 )
	--Text( 12,  "Roland is the most desired lover ",JumpPage, 10 )
	--Text( 12,  "Kentaro feels that Mas is a very clever person ",JumpPage, 13 )?????
	--Text( 12,  "Horrific Cursed Corpse is near Ascaron at (360, 1340) ",JumpPage, 5 )
	--Text( 12,  "Merman Prince used to be just a frog ",JumpPage, 13 )
	--Text( 12,  "Minelli used to be Carsise's lover ",JumpPage, 13 )

	Talk( 13,  "Хаскинсон: Что из ниже сказанного неверно? " )
	Text( 13,  "Клещи кузнеца необходимы для извлечения ",JumpPage, 5 )
	Text( 13,  "Каждый самоцвет извлекается поочередно ",JumpPage, 3 )
	Text( 13,  "Число слотов не изменяется после извлечения самоцвета ",JumpPage, 32 )
	Text( 13,  "Стоимисть извлечения- уровень предмета*1000 золота ",JumpPage, 14 )
	Text( 13,  "Вы можете начать извлекать только из 1 слота ",JumpPage, 10 )
	Text( 13,  "Уровень извлеченного самоцвета ниже чем вставленного в слот ",JumpPage, 14 )
	Text( 13,  "Все вышеназванное неверно ",JumpPage, 8 )

	Talk( 14,  "Хаскинсон: Кто знает тайну самородной серы? " )
	Text( 14,  "Хьюстон ",JumpPage, 4 )
	Text( 14,  "Ланга и Таинственная бабушка ",JumpPage, 32 )
	Text( 14,  "Морской принци и Лазурная сирена ",JumpPage, 7 )
	Text( 14,  "Дитто и Таинственная бабушка ",JumpPage, 15 )
	Text( 14,  "Дитто и Ланга ",JumpPage, 15 )
	Text( 14,  "Таинственная бабушка и Морской принц ",JumpPage, 8 )
	Text( 14,  "Хьюстон и Морской принц ",JumpPage, 12 )

	Talk( 15,  "Хаскинсон: какая из нижеуказанных трав имеет побочный эффект? " )
	Text( 15,  "Восстанавливающее зелье ",JumpPage,13 )
	Text( 15,  "Оживляющий клевер ",JumpPage, 32 )
	Text( 15,  "Капсула памяти ",JumpPage, 16 )
	Text( 15,  "Отворотное зелье ",JumpPage, 5 )
	Text( 15,  "Суп памяти ",JumpPage, 4 )
	Text( 15,  "Волшебная костная мука ",JumpPage, 16 )
	Text( 15,  "Защитное средство ",JumpPage, 9 )

	Talk( 16,  "Хаскинсон: Что правильно? " )
	Text( 16,  "Таинственная бабушка: Я люблю Ланга ",JumpPage, 32 )
	Text( 16,  "Генерал Вильям: Маска Зорро не у меня. ",JumpPage, 17 )
	Text( 16,  "Ланга: Таинственная бабуля не в моем сердце.",JumpPage, 17 )
	Text( 16,  "Паппа: Я была красавицей прежде чем стала пингвином. ",JumpPage, 5 )
	Text( 16,  "Санг Ди: Я знаю как говорить на языке, который не понимают люди. ",JumpPage, 10 )
	Text( 16,  "Мордо младший: У меня родители не только Мордо ",JumpPage, 15 )

	Talk( 17,  "Хаскинсон: Вы любите играть в эту игру? " )
	Text( 17,  "Люблю ",JumpPage, 32 )
	Text( 17,  "Я очень люблю ",JumpPage, 32 )
	Text( 17,  "Я обожаю ",JumpPage, 32 )
	Text( 17,  "Я люблю! ",JumpPage, 32 )
	Text( 17,  "Я люблю!! ",JumpPage, 18 )
	Text( 17,  "Я люблю!!! ",JumpPage, 5 )
	Text( 17,  "Пока еще люблю... ",JumpPage, 15 )

	Talk( 18,  "Хаскинсон: Какую вредную привычку имеет верховный жрец? " )
	Text( 18,  "Плакать ",JumpPage, 5 )
	Text( 18,  "Ковыряться в носу ",JumpPage, 14 )
	Text( 18,  "Подглядывать ",JumpPage, 2 )
	Text( 18,  "Пить ",JumpPage, 9 )
	Text( 18,  "Курить ",JumpPage, 12 )
	Text( 18,  "Играть в азартные игры ",JumpPage, 10 )
	Text( 18,  "Ходить в туалет ",JumpPage, 12 )
	Text( 18,  "Мыть руки ",JumpPage, 4 )

	Talk( 19,  "Хаскинсон: Вы уверены насчет своего выбора? " )
	Text( 19,  "Я уверен ",JumpPage, 21  )
	Text( 19,  "Я выбрал неверно ",JumpPage, 20  )
	Text( 19,  "Я должен подумать ",JumpPage, 32  )

	Talk( 20,  "Хаскинсон: Пожалуйста пробуйте снова " )
	Text( 20,  "Дальше -->",JumpPage, 3  )

	Talk( 21,  "Хаскинсон: Уверенность это главное для пирата! " )
	Text( 21,  "Подтвердить ",JumpPage, 5  )

	Talk( 22,  "Хаскинсон: Вы уверены насчет своего выбора? " )
	Text( 22,  "Я уверен ",JumpPage, 24  )
	Text( 22,  "Я выбрал неверно ",JumpPage, 20  )
	Text( 22,  "Я должен подумать ",JumpPage, 32  )

	Talk( 23,  "Хаскинсон: Вы уверены насчет своего выбора? " )
	Text( 23,  "Я уверен ",JumpPage, 25  )
	Text( 23,  "Я выбрал неверно ",JumpPage, 8  )
	Text( 23,  "Я должен подумать ",JumpPage, 32  )

	Talk( 24,  "Хаскинсон: Вера - это главное чтобы стать пиратом! ")
	Text( 24,  "Дальше -->",JumpPage, 6   )
	Talk( 25,  "Хаскинсон: Пожалуйста используйте мозг. Не всегда выбирайте тот же ответ! ")
	Text( 25,  "Дальше -->",JumpPage, 32  )

	Talk( 26,  "Хаскинсон: Вы уверены насчет своего выбора? " )
	Text( 26,  "Я уверен ",JumpPage, 28  )
	Text( 26,  "Я выбрал неверно ",JumpPage, 27  )
	Text( 26,  "Я должен подумать ",JumpPage, 32  )

	Talk( 27,  "Хаскинсон: Это движение позволит вам сэкономить время. "   )
	Text( 27,  "Дальше -->",JumpPage, 12  )

	Talk( 28,  "Хаскинсон: Вы слишком самонадеянны. Это не достоинство пирата. "  )
	Text( 28,  "Дальше -->",JumpPage, 32  )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerAction( 1, SetRecord, 1301 )
	TriggerAction( 1, JumpPage, 29 )
	
	Talk( 12,  "Хаскинсон: Я думаю эти загадки интересны. Вы хотите попробовать? "  )
	Text( 12,  "Хочу ",MultiTrigger, GetMultiTrigger(), 1  )
	Text( 12,  "Нет ",JumpPage, 2  )

	Talk( 29,  "Хаскинсон: Поздравляю! Ваша мудрость дарует вам фрагменты! Идите и докажите свою силу. " )

	Talk(32,  "Хаскинсон: Вы так глупы? " )
	Text( 32,  "Нет, я хочу попробовать снова! ",JumpPage, 2  )
	Text( 32,  "Я глупец, пожалуй лучше уйду. ",CloseTalk  )
	
	-- Перерождение феникса
	AddNpcMission	(6001)
	-- Загадочный человек
	AddNpcMission	(6002)
	
end
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»фЅрЛ№



----------------------------------------НРВнЛ№Ў¤НјНј-------------------------
--------------------------------Д§·ЅКАЅз¶юІг(26600,25900)
--------------------------------------eleven------------------------------------------

-- томас туту
function el_talk08 ()

	Talk( 1,  "Томас Туту: Организовываем тур! 3 дня и 2 ночи в Пещере демонов. Действуют скидки!" )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1424 )
	TriggerCondition( 1, HasMission, 1414 )
	TriggerCondition( 1, NoRecord, 1424 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Ответить на вопросы ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 2, "Как называется эта книга?")
	Text( 2, "Несчастная любовь ",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 2, "Сражения Аскарона ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	Text( 2, "Возрождение моей истории ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Я читаю, не мешай мне.")

	InitTrigger()
	TriggerAction( 1, JumpPage, 5)
	Talk( 4, "Кто автор этой книги?")
	Text( 4, "Том Луо ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "Том Джек ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "Старик Пачкуля ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 5, "Сколько страниц в книге?")
	Text( 5, "5321",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1429)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "5231",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 5, "5132",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "Поздравляю, всё правильно!")

	AddNpcMission ( 6095 )
	AddNpcMission ( 6096 )
	AddNpcMission ( 6097 )
	AddNpcMission	(6010)
	AddNpcMission	(6011)
	AddNpcMission	(6012)
	AddNpcMission	(6013)
	AddNpcMission	(6014)

end
	-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<НРВнЛ№Ў¤НјНј
	
	--ЙсК№
	
function Leo_talkQ()
	Talk(1, "Представитель порядка, закона и правосудия! Я помогу вам связаться с ГМом. ")
	Text(1, "Узнать подробности ",JumpPage,2)
	Text(1, "Задать вопрос " , OpenGMSend)
	Text(1, "Проверить ответы " , OpenGMRecv)
	
	Talk(2, "Я помощник ГМов. Я передаю им вопросы и возвращаю назад ответы от них. Вопрос не должен иметь больше 256 знаков или 128 слов. Одновременно вы можете задать лишь 1 вопрос. Пока вы не получите на него ответа задать другой вы не сможете. Пожалуйста задавайте вопросы только асательно игры! ")
	Text(2, "Я понял " , CloseTalk)
end


-------------------------bargi-----------------------------
function smzh_talk ()

	Talk( 1,  "Таинственный бакалейщик: Молодой человек! Не поддавайтесь иллюзиям! " )
	Text( 1,  "Торг ", BuyPage)
	Text( 1,  "Ремонт ", OpenRepair)

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
	Talk(1, "Привет! Я НПС поддержки. Я помогаю игрокам решить некоторые проблемы. ")
	Text( 1, "Неверное количество очков Хаоса ",JumpPage,2)
	Text( 1, "Проблема с Картой перерождения ",JumpPage,3)
	 
	Talk(3,  "Привет! У вас проблема с Картой перерождения? Такое иногда случается. У меня вы можете восстановить свою карту. ")
	Text( 3,  "Восстановить ",GetChaName_25, 1) 
	
	Talk(2, "Если у вас проблема с очками Хаоса, то я могу их сбросить до нуля. ")
	Text(2, "Сбросьте очки Хаоса ",PKPointToZero)
	Text(2, "Нет, у меня все в порядке ",CloseTalk)
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

	Talk( 1, "Администратор Священной Войны: Чтобы войти в Священную войну вам нужен камень [Жизни и Смерти]. Вы можете у меня обменять 15 очков чести на него ,а так же у меня можно получить звания и БС ноги и руки но для этого надо заработать Кровавые контракты!" )
	Text( 1, "Обменять Кровавые контракты на БС ",JumpPage, 2 )
	Text( 1, "Получить звания ",JumpPage, 16 )
	Text( 1, "Обменять Контракты на Знак Альянса ",JumpPage, 28 )
	Text( 1, "Получить знак Жизни и Смерти ",JumpPage, 29 )

	Talk( 2, "Выбирайте какой вам нужен камень " )
	Text( 2, "Нога Гефеста (Champion)", JumpPage, 3)
	Text( 2, "Нога Гермеса (Crusader)", JumpPage, 4)
	Text( 2, "Нога Аполлона (Sharpshooter)", JumpPage, 5)
	Text( 2, "Нога Посейдона (Voyager)", JumpPage, 6)
	Text( 2, "Нога Гестии (Cleric)", JumpPage, 7)
	Text( 2, "Нога Афины (Seal Master)", JumpPage, 8)
	Text( 2, "Следующая страница ", JumpPage, 9)
	Talk( 9, "Выбирайте какой вам нужен камень " )
	Text( 9, "Рука Гефеста (Champion)", JumpPage, 10)
	Text( 9, "Рука Гермеса (Crusader)", JumpPage, 11)
	Text( 9, "Рака Аполлона (Sharpshooter)", JumpPage, 12)
	Text( 9, "Рука Посейдона (Voyager)", JumpPage, 13)
	Text( 9, "Рука Гестии (Cleric)", JumpPage, 14)
	Text( 9, "Рука Афины (Seal Master)", JumpPage, 15)
	Text( 9, "Предыдущая страница", JumpPage, 2) 


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2532, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 3, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 3, "Ок!", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2535, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 4, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 4, "Ок!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2538, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 5, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 5, "Ок!", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2541, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 6, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 6, "Ок!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2544, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 7, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 7, "Ок!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2547, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 8, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 8, "Ок!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2531, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 10, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 10, "Ок!", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2534, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 11, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 11, "Ок!", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2537, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 12, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 12, "Ок!", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2540, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 13, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 13, "Ок!", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2543, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 14, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 14, "Ок!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2546, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 15, "Администратор Священной Войны: Ты мне должен отдать 300 Кровавых Контрактов!" )
	Text( 15, "Ок!", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 16, "Администратор Священной Войны: Выбирайте какое вам звание нужно!" )
    Text( 16, "Матрос ", JumpPage, 17)
	Text( 16, "Старшина ", JumpPage, 18)
	Text( 16, "Мичман ", JumpPage, 19)
	Text( 16, "Лейтенант ", JumpPage, 20)
	Text( 16, "Капитан 3 ранга ", JumpPage, 21)
	Text( 16, "Следующая страница ", JumpPage, 30)

	Talk( 30, "Администратор Священной Войны: Выбирайте какое вам звание нужно!" )
	Text( 30, "Капитан 2 ранга ", JumpPage, 22)
	Text( 30, "Капитан 1 ранга ", JumpPage, 23)
	Text( 30, "Контр-Адмирал ", JumpPage, 24)
	Text( 30, "Адмирал Флота ", JumpPage, 25)
	Text( 30, "Главнокомандующий ", JumpPage, 26)
	Text( 30, "Предыдущая страница ", JumpPage, 16)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 5331, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 17, "Администратор Священной Войны: Ты мне должен отдать 20 Кровавых Контрактов!" )
	Text( 17, "ОК!", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 50 )
	TriggerCondition( 1, HasItem, 5331, 1 )
	TriggerAction( 1, TakeItem, 2383, 50 )
	TriggerAction( 1, TakeItem, 5331, 1 )
	TriggerAction( 1, GiveItem, 5332, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 18, "Администратор Священной Войны: Ты мне должен отдать 50 Кровавых Контрактов!" )
	Text( 18, "ОК!", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 100 )
	TriggerCondition( 1, HasItem, 5332, 1 )
	TriggerAction( 1, TakeItem, 2383, 100 )
	TriggerAction( 1, TakeItem, 5332, 1 )
	TriggerAction( 1, GiveItem, 5333, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 19, "Администратор Священной Войны: Ты мне должен отдать 100 Кровавых Контрактов!" )
	Text( 19, "ОК!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 250 )
	TriggerCondition( 1, HasItem, 5333, 1 )
	TriggerAction( 1, TakeItem, 2383, 250 )
	TriggerAction( 1, TakeItem, 5333, 1 )
	TriggerAction( 1, GiveItem, 5334, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 20, "Администратор Священной Войны: Ты мне должен отдать 250 Кровавых Контрактов!" )
	Text( 20, "ОК!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 400 )
	TriggerCondition( 1, HasItem, 5334, 1 )
	TriggerAction( 1, TakeItem, 2383, 400 )
	TriggerAction( 1, TakeItem, 5334, 1 )
	TriggerAction( 1, GiveItem, 5335, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 21, "Администратор Священной Войны: Ты мне должен отдать 400 Кровавых Контрактов!" )
	Text( 21, "ОК!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 650 )
	TriggerCondition( 1, HasItem, 5335, 1 )
	TriggerAction( 1, TakeItem, 2383, 650 )
	TriggerAction( 1, TakeItem, 5335, 1 )
	TriggerAction( 1, GiveItem, 5336, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 22, "Администратор Священной Войны: Ты мне должен отдать 650 Кровавых Контрактов!" )
	Text( 22, "ОК!", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 55 )
	TriggerCondition( 1, HasItem, 5336, 1 )
	TriggerAction( 1, TakeItem, 2865, 55 )
	TriggerAction( 1, TakeItem, 5336, 1 )
	TriggerAction( 1, GiveItem, 5337, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 23, "Администратор Священной Войны: Ты мне должен отдать 55 Знаков Альянса!" )
	Text( 23, "ОК!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 80 )
        TriggerCondition( 1, HasItem, 5337, 1)
	TriggerAction( 1, TakeItem, 2865, 80 )
	TriggerAction( 1, TakeItem, 5337, 1 )
	TriggerAction( 1, GiveItem, 5338, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 24, "Администратор Священной Войны: Ты мне должен отдать 55 Знаков Альянса!" )
	Text( 24, "ОК!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 110 )
	TriggerCondition( 1, HasItem, 5338, 1)
	TriggerAction( 1, TakeItem, 2865, 110 )
	TriggerAction( 1, TakeItem, 5338, 1 )
	TriggerAction( 1, GiveItem, 5339, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 25, "Администратор Священной Войны: Ты мне должен отдать 55 Знаков Альянса!" )
	Text( 25, "ОК!", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 155 )
	TriggerCondition( 1, HasItem, 5339, 1)
	TriggerAction( 1, TakeItem, 2865, 155 )
	TriggerAction( 1, TakeItem, 5339, 1 )
	TriggerAction( 1, GiveItem, 5340, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 26, "Администратор Священной Войны: Ты мне должен отдать 155 Знаков Альянса!" )
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
	Talk( 1, "Коварный куст: Что ты на меня смотришь? Если не уйдешь, я тебя ударю.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1403 )
	TriggerCondition( 1, HasRecord, 1402 )
	TriggerCondition( 1, NoRecord, 1403 )
	TriggerCondition( 1, NoRecord, 1404 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Ответить на вопрос ",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1405 )
	Talk( 2, "Почему...почему нас всегда убивают? Ты знаешь, сколько месяцев мы растем? А потом приходят сборщики трав и...")
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
	Text( 2, "Мне всё равно ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "Я должен отомстить!")

	--Новое состязание
	AddNpcMission ( 6072 )
	--Ненависть Коварного Куста
	AddNpcMission ( 6073 )
	--Просьба Коварного Куста
	AddNpcMission ( 6074 )
	--Просьба Коварного Куста
	AddNpcMission ( 6075 )
	--Просьба Коварного Куста
	AddNpcMission ( 6076 )
	--Доложить о ситуации
	AddNpcMission ( 6077 )


end

--Офицер Связи
function ay_talk01 ()
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

--Огненный помост
function ay_talk02 ()
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

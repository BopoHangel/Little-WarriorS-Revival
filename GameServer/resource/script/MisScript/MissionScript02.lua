--------------------------------------------------------------------------
--									                                    --
--									                                    --
--     MissionScript02.lua Переведен командой AngelOfDeath TeaM.        --
--									                                    --
--									                                    --
--------------------------------------------------------------------------

print( "‡ Јаг§Є  MissionScript02.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


function HistoryMission001()

----------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 200, " Послание секретаря ", 200 )
	
	MisBeginTalk( "<t>Добрый день. Я думаю что тебе пора отнести письмо секретарю Аргента, <bСальвьеру>. Удачи и не опаздывай!  " )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 200)
	MisCancelAction(ClearMission, 200)
		
	MisNeed(MIS_NEED_DESP, "Секретарь находится в Аргенте по координатам  (2219, 2749)")
	
	MisHelpTalk("<t>Почему вы не встретились с секретарем Аргента?Пожалуйста поторопитесь ")
	MisResultCondition(AlwaysFailure )

	



----------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 201, " Послание секретаря ", 201 )
	
	MisBeginTalk( "<t>Добрый день. Я думаю что тебе пора отнести письмо секретарю Аргента, <bСальвьеру>. Удачи и не опаздывай!" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 201)
	MisCancelAction(ClearMission, 201)
		
	MisNeed(MIS_NEED_DESP, "Секретарь находится в Аргенте по координатам  (2219, 2749) ")
	
	MisHelpTalk("<t>Почему вы не встретились с секретарем Аргента?Пожалуйста поторопитесь ")
	MisResultCondition(AlwaysFailure )


----------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 202, " Послание секретаря ", 202 )
	
	MisBeginTalk( "<t>Добрый день. Я думаю что тебе пора отнести письмо секретарю Аргента, <bСальвьеру>. Удачи и не опаздывай!" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 202)
	MisCancelAction(ClearMission, 202)
		
	MisNeed(MIS_NEED_DESP, "Секретарь находится в Аргенте по координатам  (2219, 2749)")
	
	MisHelpTalk("<t>Почему вы не встретились с секретарем Аргента?Пожалуйста поторопитесь ")
	MisResultCondition(AlwaysFailure )


-----------------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 203, " Послание секретаря ", 200, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Добро пожаловать, я рад встрече с Вами. Ваша репутация распространилась так далеко что я с радостью приму вас..")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 200)
	MisResultAction(ClearMission, 200 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)



-----------------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 204, " Послание секретаря ", 201, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Добро пожаловать, я рад встрече с Вами. Ваша репутация распространилась так далеко что я с радостью приму вас.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 201)
	MisResultAction(ClearMission, 201 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)


-----------------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 205, " Послание секретаря ", 202, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Добро пожаловать, я рад встрече с Вами. Ваша репутация распространилась так далеко что я с радостью приму вас.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 202)
	MisResultAction(ClearMission, 202 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------РЎРЎµДїјСй
	DefineMission( 206, " Пустяковая задача ", 203 )
	
	MisBeginTalk( "<t>Я хотел бы просить Вас провести расследование некоторых странных событий в Пастушьих равнинах. <n> <t> Однако до того как дать вам это задание,я вынужден испытать вас<n> <t> Сходите в <pПристане Аргента> по координатам (2277, 2831 ) и найдите там <bГенерала-Увильяма>. Он даст вам небольшую задачу." )
	MisBeginCondition(NoRecord, 203)
	MisBeginCondition(NoMission, 203)
	MisBeginCondition(HasRecord, 200)
	MisBeginAction(AddMission, 203)
	MisCancelAction(ClearMission, 203)
		
	MisNeed(MIS_NEED_DESP, "Найти <bГенерал - Вильям> на <pПристани аргента> по координатам  (2277, 2831)")
	
	MisHelpTalk("<t>Какие еще вопросы? Если их нету ,то пожалуйста, найдите <bГенерал Увильям> он назначит вам задание.")
	MisResultCondition(AlwaysFailure )

-----------------------------------РЎРЎµДїјСй
	DefineMission( 207, " Пустяковая задача ", 203, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ах,Силвер очень странный парень , посылает нам неизвестно кого. Доверяет ли он флоту? <n> <t> Возвращайся когда будешь готов. У меня есть задание для Вас ")
	MisResultCondition(NoRecord, 203)
	MisResultCondition(HasMission, 203)
	MisResultAction(ClearMission, 203 )
	MisResultAction(SetRecord, 203 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)
	MisResultAction(AddExpAndType,2,875,875)



-------------------------------------------------єЈѕьµД»пКіЕдБП
	DefineMission( 208, " Провиант для флота ", 204 )

	MisBeginTalk( "<t>Я думаю вы способны выполнить эти задания.Принесите мне некоторые предметы. <n> <t> Мне нужно 5 <yМясо пузырчатого моллюска>, 10 <yМясо улитки> и 10 <yЭльф фрукт>." )
	MisBeginCondition(NoRecord, 204)
	MisBeginCondition(HasRecord, 203)
	MisBeginCondition(NoMission, 204)
	MisBeginAction(AddMission, 204)
	MisBeginAction(AddTrigger, 2041, TE_GETITEM, 3963, 5 )		--ЙдЛ®±ґИв
	MisBeginAction(AddTrigger, 2042, TE_GETITEM, 3964, 10 )		--єЈВЭИв
	MisBeginAction(AddTrigger, 2043, TE_GETITEM, 3116, 10 )
	MisCancelAction(ClearMission, 204)

	MisNeed(MIS_NEED_ITEM, 3963, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3964, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3116, 10, 30, 10)

	MisResultTalk("<t>Даже если вы выполнили это задание, до наших стандартов вам далеко.")
	MisHelpTalk("<t>Такая простая задача, и вы не можете справиться? <n> <t> Помните! Я требую от вас  5 <yМяса пузырчатого моллюска>, 10 <yМяса морской улитки> и 10 <yЭльфийские фруктов>.")
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

----------------------------ЧЯК§µДМЖµВ
	DefineMission( 209, " Пропавший Томми ", 205 )
	
	MisBeginTalk( "<t>Поскольку вы  здесь, почему бы вам не помоч найти пропавшего ребенка. Его зовут <bТомми>. В последний раз его видили недалеко от  <pПастушьих равнин>. Верните его домой благополучно!" )
	MisBeginCondition(NoRecord, 205)
	MisBeginCondition(HasRecord, 204)
	MisBeginCondition(NoMission, 205)
	MisBeginAction(AddMission, 205)
	MisCancelAction(ClearMission, 205)
		
	MisNeed(MIS_NEED_DESP, "Найти Томми по координатам (1962, 2694)")
	
	MisHelpTalk("<t>Несколько людей видели <bТомми> недалеко от <pПастушьих равнини>. Поищи там ")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЧЯК§µДМЖµВ
	DefineMission( 210, " Пропавший Томми ", 205, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Вы искали  меня? Я пришел сюда, чтобы посмотреть на бешеных овец.")
	MisResultCondition(NoRecord, 205)
	MisResultCondition(HasMission, 205)
	MisResultAction(ClearMission, 205 )
	MisResultAction(SetRecord, 205 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------ПтЙЩЅ«»Ш±Ё
	DefineMission( 211, " Доложить Генералу ", 206 )
	
	MisBeginTalk( "<t>Я удивлен тем, что генерал ищет меня. Я хотел бы поблагодарить его за заботу.Принеси ему это письма,в доказательство того что я в безопасости. Я собираюсь остаться здесь еще на некоторое время.." )
	MisBeginCondition(NoRecord, 206)
	MisBeginCondition(HasRecord, 205)
	MisBeginCondition(NoMission, 206)
	MisBeginAction(AddMission, 206)
	MisBeginAction(GiveItem, 3965, 1, 4)		--МЖµВµДРЕ
	MisCancelAction(ClearMission, 206)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Отнеси письмо генералу Уильяму по координатам (2277, 2831) ")
	
	MisHelpTalk("<t>Что-нибудь еще?Я скоро вернусь,обещаю..")
	MisResultCondition(AlwaysFailure )

-----------------------------------ПтЙЩЅ«»Ш±Ё
	DefineMission( 212, " Доложить Генералу ", 206, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>О,с Томми все впорядке?Спасибо.")
	MisResultCondition(NoRecord, 206)
	MisResultCondition(HasMission, 206)
	MisResultCondition(HasItem, 3965, 1)		--МЖµВµДРЕ
	MisResultAction(TakeItem, 3965, 1 ) 
	MisResultAction(ClearMission, 206 )
	MisResultAction(SetRecord, 206 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)	
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------И«МеКіОпЦР¶ѕ
	DefineMission( 213, " Отравление еды ", 207 )

	MisBeginTalk( "<t>Кхе-кхе.Извени похоже еда была отравлена.Отнеси пожалуйста <yЛанч> врачу в аргенте <bДито> и попроси разобраться!" )
	MisBeginCondition(NoRecord, 207)
	MisBeginCondition(HasRecord, 206)
	MisBeginCondition(NoMission, 207)
	MisBeginAction(AddMission, 207)
	MisBeginAction(GiveItem, 3966, 1, 4)			--ОзІНСщ±ѕ
	MisBeginAction(AddTrigger, 2071, TE_GETITEM, 3967, 1 )		--ЙдЛ®±ґИв
	MisCancelAction(ClearMission, 207)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_ITEM, 3967, 1, 10, 1)

	MisResultTalk("<t>Ты не плохой человек.Спасибо.")
	MisHelpTalk("<t>Ты не плохой человек.Спасибо.")
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

-----------------------------------И«МеКіОпЦР¶ѕ
	DefineMission( 214, " Отравление еды ", 207, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Отравление?! <n> <T> Позвольте мне посмотреть на еду?Хм,выглядит вкусно,не так ли?")
	MisResultCondition(NoRecord, 207)
	MisResultCondition(NoFlag, 207, 1 )
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3966, 1)		--МЖµВµДРЕ
	MisResultAction(TakeItem, 3966, 1 ) 
	MisResultAction(SetFlag, 207, 1 )
	
-------------------------------------------------ЅвТ©Ф­БП
	DefineMission( 215, " Поиск противоядия ", 208 )

	MisBeginTalk( "<t>Я рассмотрел еду, проблема в том что Мясо пузырчатого моллюска было заражено.Мне потребуется несколько  ингредиентов для противаюдия. <n> <T> 3 <yCashmeres>, 3 <yPiglet Tails> и 3 <yHard Shells>. Не могли бы Вы помочь в их поисках?" )
	MisBeginCondition(NoRecord, 208)
	MisBeginCondition(HasMission, 207)
	MisBeginCondition(NoMission, 208)
	MisBeginCondition(HasFlag, 207, 1)
	MisBeginAction(AddMission, 208)
	MisBeginAction(AddTrigger, 2081, TE_GETITEM, 1678, 3 )		--СтИЮ
	MisBeginAction(AddTrigger, 2082, TE_GETITEM, 3968, 3 )		--РЎЦнОІ°Н
	MisBeginAction(AddTrigger, 2083, TE_GETITEM, 1614, 3 )		--јбУІµДїЗ
	MisCancelAction(ClearMission, 208)

	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 3968, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1614, 3, 30, 3)

	MisPrize(MIS_PRIZE_ITEM, 3967, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>Великолепно!Пожалуйста, дай мне время для приготовления  противоядия. <n> <T> Получилось! Отнеси это Генералу .")
	MisHelpTalk("<t>Мне надо 3 <yКашемира>, 3 <yPiglet Tail> и 3 <yHard Shell>. Ты разыскал все?")
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

----------------------------МЖµВµДОЇНР
	DefineMission( 216, " Просьба Томми ", 209 )
	
	MisBeginTalk( "<t>В письме Томи написал что овцы выходят из под контроля намного чаще,чем раньше.Мы назвали это Мутацией <n> <T> Я предлагаю вам поговорить с Дито(2250, 2770) для получения более подробной информации." )
	MisBeginCondition(NoRecord, 209)
	MisBeginCondition(HasRecord, 207)
	MisBeginCondition(NoMission, 209)
	MisBeginAction(AddMission, 209)
	MisCancelAction(ClearMission, 209)
		
	MisNeed(MIS_NEED_DESP, "Спросите Дитто по координатам  (2250, 2770) о Слюне бешенной овцы ")
	
	MisHelpTalk("<t>Ты поговорил с  Дитто о болезне Фералл?")
	MisResultCondition(AlwaysFailure )

-----------------------------------МЖµВµДОЇНР
	DefineMission( 217, " Просьба Томми ", 209, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Возможно это просто одна из биологических мутаций, которые происходят вокруг нас. Может это эволюция? Мне нужно уделить чуть больше внимания этой проблеме.")
	MisResultCondition(NoRecord, 209)
	MisResultCondition(HasMission, 209)
	MisResultAction(ClearMission, 209 )
	MisResultAction(SetRecord, 209 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------·иїсµДФ­Тт
	DefineMission( 218, " Причина сумасшествия ", 210 )

	MisBeginTalk( "<t>Хорошо, после некоторых исследований, мы должны проверить <Слюну овцы>. <n> <T> Принеси мне 5 флаконов <Слюна бешеной овцы>. Найти их можно по координатам (1968, 2697)." )
	MisBeginCondition(NoRecord, 210)
	MisBeginCondition(HasRecord, 209)
	MisBeginCondition(NoMission, 210)
	MisBeginAction(AddMission, 210)
	MisBeginAction(AddTrigger, 2101, TE_GETITEM, 3969, 5 )		--ІР±©ЙЅСтµДїЪЛ®
	MisCancelAction(ClearMission, 210)

	MisNeed(MIS_NEED_ITEM, 3969, 5, 10, 5)

	MisResultTalk("<t>Слюна поможет для выяснения причины мутации.Я проведу побольше исследований по ней, и узнаю как обстоит дело..")
	MisHelpTalk("<t>Что такое? Почему Вы до сих пор не принесли 5 флаконов <yСлюны>?")
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

-------------------------------------------------ЙоИлµчІй
	DefineMission( 219, " Тщательное исследование ", 211 )

	MisBeginTalk( "<t>После ряда исследований, есть странность в том, что овцы питались только травой. <n> <T> Я не буду абсолютно уверен, пока вы не принесете мне <rЖемчужину короля маллюсков>. Он находится на севере <pАргента> по координатам (2048, 2514). <n> <T> Спешите!" )
	MisBeginCondition(NoRecord, 211)
	MisBeginCondition(HasRecord, 210)
	MisBeginCondition(NoMission, 211)
	MisBeginAction(AddMission, 211)
	MisBeginAction(AddTrigger, 2111, TE_GETITEM, 3970, 1 )		--ІР±©ЙЅСтµДїЪЛ®
	MisCancelAction(ClearMission, 211)

	MisNeed(MIS_NEED_ITEM, 3970, 1, 10, 1)

	MisResultTalk("<t> Хорошая работа! Вы получили <yЖемчужину короля моллюсков>. Она определенно лучше других жемчужин, теперь я могу более тщательнее изучить проблему!")
	MisHelpTalk("<t>Где жемчужина? Боитесь <rКороля моллюсков>? Возьми с собой несколько друзей.")
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

----------------------------µЫД·µД±ЁёжКй
	DefineMission( 220, " Отчет Дито ", 212 )
	
	MisBeginTalk( "<t>Это расследование продлится еще некоторое время, я написал предварительный <yОтчет>. <n> <T> Пожалуйста доставь его <bСальвьеру> по координатам (2219, 2749)" )
	MisBeginCondition(NoRecord, 212)
	MisBeginCondition(HasRecord, 211)
	MisBeginCondition(NoMission, 212)
	MisBeginAction(AddMission, 212)
	MisBeginAction(GiveItem, 3971, 1, 4)
	MisCancelAction(ClearMission, 212)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Доставь отчет Секретарю аргента  (2219, 2749)")
	
	MisHelpTalk("<t>Что не так? ")
	MisResultCondition(AlwaysFailure )

-----------------------------------µЫД·µД±ЁёжКй
	DefineMission( 221, " Отчет Дито ", 212, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<tВ отчете Дито врач я прочитал о Ваших успехах.Я рад за Вас.")
	MisResultCondition(NoRecord, 212)
	MisResultCondition(HasMission, 212)
	MisResultCondition(HasItem, 3971, 1)
	MisResultAction(TakeItem, 3971, 1 )
	MisResultAction(ClearMission, 212 )
	MisResultAction(SetRecord, 212 )
	MisResultAction(AddExp,350,350)
	MisResultAction(AddMoney,1500,1500)
	MisResultAction(AddExpAndType,2,3400,3400)


----------------------------РВИООс
	DefineMission( 222, " Новое задание ", 213 )
	
	MisBeginTalk( "<t>Говорят, что недалеко от <pСеребряных шахт> проблемы. Отнеси рекомендательное письмо <bКапитану гвардии> по координатам (1909, 2820).Он даст тебе новое задание." )
	MisBeginCondition(NoRecord, 213)
	MisBeginCondition(HasRecord, 212)
	MisBeginCondition(NoMission, 213)
	MisBeginAction(AddMission, 213)
	MisBeginAction(GiveItem, 3972, 1, 4)
	MisCancelAction(ClearMission, 213)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Отнести письмо Капитану гвардии  (1909, 2820).")
	
	MisHelpTalk("<t>Иди  к <pСеребряным щахтам> !")
	MisResultCondition(AlwaysFailure )

-----------------------------------РВИООс
	DefineMission( 223, " Новое задание ", 213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Тебя прислал секретарь Сальвьеру? Рад познакомиться.")
	MisResultCondition(NoRecord, 213)
	MisResultCondition(HasMission, 213)
	MisResultCondition(HasItem , 3972, 1)
	MisResultAction(TakeItem , 3972, 1 )
	MisResultAction(ClearMission, 213 )
	MisResultAction(SetRecord, 213 )
	MisResultAction(AddExp,400,400)
	MisResultAction(AddMoney,1500,1500)	
	MisResultAction(AddExpAndType,2,3401,3401)


-------------------------------------------------С°ХТ¶ЄК§µД№¤ѕЯ
	DefineMission( 224, " Пропавшие инструменты ", 214 )

	MisBeginTalk( "<t>Недавно кроты-рудокопы украли наши инструменты.Не могли бы вы осмотреться вокруге , и найди их?" )
	MisBeginCondition(NoRecord, 214)
	MisBeginCondition(HasRecord, 213)
	MisBeginCondition(NoMission, 214)
	MisBeginAction(AddMission, 214)
	MisBeginAction(AddTrigger, 2141, TE_GETITEM, 3973, 5 )		--±»Украденные лопаты
	MisBeginAction(AddTrigger, 2142, TE_GETITEM, 3974, 3 )		--±»Украденные защитные каски
	MisBeginAction(AddTrigger, 2143, TE_GETITEM, 3975, 5 )		--±»Украденные рудничные лампы
	MisCancelAction(ClearMission, 214)

	MisNeed(MIS_NEED_ITEM, 3973, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3974, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 3975, 5, 30, 5)

	MisResultTalk("<t>Это великолепно!Ты вернул нам наши инструменты , теперь мы можем приступить к работе!")
	MisHelpTalk("<t>Вы не нашли инструменты? Без них мы не можем продолжать работать. Пожалуйста, помогите нам найти их.")
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

-------------------------------------------------ЗеАнАыіЭ№Ѕ
	DefineMission( 225, " Убить Грибочки ", 215 )

	MisBeginTalk( "<t>Мой главная задача состоит в том, чтобы избавиться от бандитов, но <rУбойный грибочек> в это время года очень мешает. <n> <T> Пожалуйста, найди и убей всех <rУбойных грибочков> близ (1594, 2689)!" )
	MisBeginCondition(NoRecord, 215)
	MisBeginCondition(HasRecord, 214)
	MisBeginCondition(NoMission, 215)
	MisBeginAction(AddMission, 215)
	MisBeginAction(AddTrigger, 2151, TE_KILL, 252, 10 )		--АыіЭ№Ѕ
	MisCancelAction(ClearMission, 215)

	MisNeed(MIS_NEED_KILL, 252, 10, 10, 10)

	MisResultTalk("<t>Хорошая работа! Без Грибов на пути, мы сможем без труда подойти к Бандитам!")
	MisHelpTalk("<t>Вы должны остерегаться этих <rГрибочков> они очень ядовиты!")
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

-------------------------------------------------µЫД·µДОЇНР
	DefineMission( 226, " Просьба Дитто ", 216 )

	MisBeginTalk( "<t>Я только что получил письмо от Дито, кажется, что у него возникли некоторые трудности в его исследованиях.Он просит достать для него <yЖелудочный Камень Короля Крабов> . <n> <T> Я видел  <rКороля крабов> ,недалеко от  пляжа (1783, 2507)." )
	MisBeginCondition(NoRecord, 216)
	MisBeginCondition(HasRecord, 215)
	MisBeginCondition(NoMission, 216)
	MisBeginAction(AddMission, 216)
	MisBeginAction(AddTrigger, 2161, TE_GETITEM, 3976, 1 )		--Р·НхµДОёЅбКЇ
	MisCancelAction(ClearMission, 216)

	MisNeed(MIS_NEED_ITEM, 3976, 1, 10, 1)

	MisResultTalk("<t>Великолепно! Вы нашли его! Я немедленно отправлю его Дито!")
	MisHelpTalk("<t>Вы не нашли <rКороля бронекрабов>? Я точно видел его недалеко от пляжа...")
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

-------------------------------------------------ЙЅФфКЖБ¦Нј
	DefineMission( 227, " План разбойничьего укрытия ", 217 )

	MisBeginTalk( "<t> Говорят, что загадочный человек продает карты,в одной из них наверняка есть расположение лагеря Бандитов. Вы должны найти такую карту. Попробуйте поискать торговца по координатам  (2217, 2547). " )
	MisBeginCondition(NoRecord, 217)
	MisBeginCondition(HasRecord, 216)
	MisBeginCondition(NoMission, 217)
	MisBeginAction(AddMission, 217)
	MisBeginAction(AddTrigger, 2171, TE_GETITEM, 3977, 1 )		--ЙЅФфКЖБ¦Нј
	MisCancelAction(ClearMission, 217)

	MisNeed(MIS_NEED_ITEM, 3977, 1, 10, 1)

	MisResultTalk("<t>Вы смогли заполучить карту! Фантастика!")
	MisHelpTalk("<t>Не нашел? Я тоже! Может быть, попросить помощи у людей в округе.")
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

-------------------------------------------------Н»П®ЙЅФфНЕ
	DefineMission( 228, " Засада на бандитов ", 218 )

	MisBeginTalk( "<t>На карте видто , что бандиты собираются недалеко от западной части <pСкалистого удела>. Мне нужно, чтобы вы  проникли  в их лагерь и принесли  3 <yОжерелья бандита>." )
	MisBeginCondition(NoRecord, 218)
	MisBeginCondition(HasRecord, 217)
	MisBeginCondition(NoMission, 218)
	MisBeginAction(AddMission, 218)
	MisBeginAction(AddTrigger, 2181, TE_GETITEM, 1841, 3 )		--Ожерелья бандитов
	MisCancelAction(ClearMission, 218)

	MisNeed(MIS_NEED_ITEM, 1841, 3, 10, 3)

	MisResultTalk("<t>Ура!Впервые мы смогли получить эти ожерелья!")
	MisHelpTalk("<t>Почему Вы не собрали <yОжерелья бандитов>?")
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

-------------------------------------------------РьЙНБо
	DefineMission( 229, " Награда за голову ", 219 )

	MisBeginTalk( "<t>Мне извесно о Главаре бандитов. Он очень жестокий и хитрый человек. <n> <T> Найди его лагеря по координатам (1052, 3037) и уничтож этих бантитов." )
	MisBeginCondition(NoRecord, 219)
	MisBeginCondition(HasRecord, 218)
	MisBeginCondition(NoMission, 219)
	MisBeginAction(AddMission, 219)
	MisBeginAction(AddTrigger, 2191, TE_KILL, 211, 1 )		--ЙЅФфКЧБмЎ¤тсЙЯ
	MisCancelAction(ClearMission, 219)

	MisNeed(MIS_NEED_KILL, 211, 1, 10, 1)

	MisResultTalk("<t>Вы убили Гадюку?Молодец! Благодаря вашему мужественному поступку, бандиты больше не представляет угрозы.")
	MisHelpTalk("<t>Вы боитесь идти в одиночку? Почему бы вам не попросить помощи друзей?")
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

----------------------------ИҐЙіД®
	DefineMission( 230, " Визит в пустыню ", 220 )
	
	MisBeginTalk( "<t>Навести Старейшину Кланов <bАльбуду> по координатам (898, 3640) в Шайтане, он даст тебе необходимуюю информацию." )
	MisBeginCondition(NoRecord, 220)
	MisBeginCondition(HasRecord, 219)
	MisBeginCondition(NoMission, 220)
	MisBeginAction(AddMission, 220)
	MisBeginAction(GiveItem, 3978, 1, 4)
	MisCancelAction(ClearMission, 220)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Навести Старейшину Кланов Альбуду  в Шайтане (898, 3640)")
	
	MisHelpTalk("<t>Хоть я и желаю что бы вы остались, но вам надо помоч в Шайтане!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ИҐЙіД®
	DefineMission( 231, " Визит в пустыню ", 220, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Добро пожаловать. Секретарь Аргента сообщил мне о цели вашего визита.  Мы считаем, что это указ Богини Кары. Я помогу тебе, насколько смогу.")
	MisResultCondition(NoRecord, 220)
	MisResultCondition(HasMission, 220)
	MisResultCondition(HasItem, 3978, 1)
	MisResultAction(TakeItem, 3978, 1 )
	MisResultAction(ClearMission, 220 )
	MisResultAction(SetRecord, 220 )
	MisResultAction(AddExp,1100,1100)
	MisResultAction(AddMoney,2300,2300)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------±дТмµДФ­Тт
	DefineMission( 232, " Перемены ", 221 )
	
	MisBeginTalk( "<t>Навестите говорящую Овечку близ гавани шайтана (898, 3683). Может быть, она поможет вам в  исследованиях. <n> <T> Доложите мне после того как найдете ее." )
	MisBeginCondition(NoRecord, 221)
	MisBeginCondition(HasRecord, 220)
	MisBeginCondition(NoMission, 221)
	MisBeginAction(AddMission, 221)
	MisCancelAction(ClearMission, 221)
		
	MisNeed(MIS_NEED_DESP, "Навести говорящую Овечку (898, 3683) а затем вернись к Альбуде (898, 3640)")
	
	MisResultTalk("<t>О! Ты говорил с Овечкой? Ха-ха, она скоро станет достопримечательностью города Шайтан.")
	MisHelpTalk("<t>Ты еще не поговрил с <bГоворящей овечкой>?")
	MisResultCondition(HasMission, 221 )
	MisResultCondition(NoRecord, 221 )
	MisResultCondition(HasFlag, 221, 1 )
	MisResultAction(ClearMission, 221 )
	MisResultAction(SetRecord, 221 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)	
	MisResultAction(AddExpAndType,2,5000,5000)

-----------------------------------±дТмµДФ­Тт
	DefineMission( 233, " Перемены ", 221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Бее... Я говорящая овечка! <n> <T> Хотите знать, как я начала говорить? <n> <T> Не так давно я прогуливался! Бее ... <n> <T> Там был плод в форме яйца.Бее... <n> <T> Бее ... Это было вкусно <n> <T> На следующий день я уже могла говорить! ")
	MisResultCondition(NoRecord, 221)
	MisResultCondition(HasMission, 221)
	MisResultCondition(NoFlag, 221, 1)
	MisResultAction(SetFlag, 221, 1 )
	


----------------------------ВЮЙ­µД±КјЗ±ѕ
	DefineMission( 234, " Записная книжка Роланда ", 222 )
	
	MisBeginTalk( "<t>Хмм ... Плод в форме яйца, который плавал у берега? Я помню, что читал что-то подобное, но где? Хмм... <n> <T> Ну конечно!Недавно библиотеке корода Шайтана появился дневник Роладна... <n> <T> Эх,жаль ,что библиотрека была взломана прежде чем вы пришли к нам.Много книг и карт было утерянно.Я думаю вы узнаете подробности если навестите человека отвечающего за это дело - Стражника Михаэля (958, 3549)." )
	MisBeginCondition(NoRecord, 222)
	MisBeginCondition(HasRecord, 221)
	MisBeginCondition(NoMission, 222)
	MisBeginAction(AddMission, 222)
	MisCancelAction(ClearMission, 222)
		
	MisNeed(MIS_NEED_DESP, "Найти Стражника (958, 3549).")
	
	MisHelpTalk("<t>Стражник находится недалеко от главных ворот шайтана!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ВЮЙ­µД±КјЗ±ѕ
	DefineMission( 235, " Записная книжка Роланда ", 222, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Привет! Я Стражник Михаэль. <n> <T> Виновника приступления я так и не нашел!<n> <T> Что является более необычным, вор украл лишь несколько книг которые абсолютно бесполезны.")
	MisResultCondition(NoRecord, 222)
	MisResultCondition(HasMission, 222)
	MisResultAction(ClearMission, 222 )
	MisResultAction(SetRecord, 222 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------ПЯЛч
	DefineMission( 236, " Наводки ", 223 )
	
	MisBeginTalk( "<t>Проводя расследование я наткнулся на следы бандитов!Мне кажется это они ответственны за этот инцидент! <n> <T> Они считаются одними из лучших преступников в Пустыне! <n> <T> Я знаю одного бантида по имени <bСупермун>. Я думаю он расскажет тебе каие нибуть факты.Найти его можно в <pОазисе> по координатам  (1080,3086)." )
	MisBeginCondition(NoRecord, 223)
	MisBeginCondition(HasRecord, 222)
	MisBeginCondition(NoMission, 223)
	MisBeginAction(AddMission, 223)
	MisCancelAction(ClearMission, 223)
		
	MisNeed(MIS_NEED_DESP, "Найдите Супермуна(1080, 3086)")
	
	MisHelpTalk("<t>Не волнуйтесь.Супермун не такой как все бандиты.Он не лезет в драку первый!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ПЯЛч
	DefineMission( 237, " Наводки ", 223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Как вы меня нашли?Вы хотите узнать больше о той краже?<n> <T> Ха-ха!Я не имею ничего общего с этим проишествием!Серьезно.И даю вам совет - Не лезьте в это дело.<n> <T> Вы не боитесь что я могу убить вас?")
	MisResultCondition(NoRecord, 223)
	MisResultCondition(HasMission, 223)
	MisResultAction(ClearMission, 223 )
	MisResultAction(SetRecord, 223 )
	MisResultAction(AddExp,600,600)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------ДЪјй
	DefineMission( 238, " Предатель внутри ", 224 )

	MisBeginTalk( "<t>Хорошо хорошо. Я открою вам небольшой секрет. Но за определенную плату. Во-первых, мы должны вам помочь мне выполнить поручение. <n> <T> Другие Песчаные бандиты хотят проучить меня. <n> <T> Победи 10 <rПесчаных бандитов> и 5 <rПесчаных Всадников>." )
	MisBeginCondition(NoRecord, 224)
	MisBeginCondition(HasRecord, 223)
	MisBeginCondition(NoMission, 224)
	MisBeginAction(AddMission, 224)
	MisBeginAction(AddTrigger, 2241, TE_KILL, 45, 10 )		--Йі·Л
	MisBeginAction(AddTrigger, 2242, TE_KILL, 49, 5 )		--ЙіЖпКї
	MisCancelAction(ClearMission, 224)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 49, 5, 20, 5)

	MisResultTalk("<t>Ха Я знал, что я могу рассчитывать на вас.")
	MisHelpTalk("<t>Похоже, что вы не в состоянии выполнить задачу.")
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

-------------------------------------------------ХЅ¶·µДЙіД®
	DefineMission( 239, " Битва в пустыне ", 225 )

	MisBeginTalk( "<t>Главарь Песчаных бандитов - <rГарета> Он находится по координатам (1180, 3030). Он очень жесток, но достаточно туповат. <n> <T> Он любит использоать свою силу,а не ум <n> <T> Убейте его для меня!<n> <T> Я скажу вам все, что надо,после того как вы убьет его." )
	MisBeginCondition(NoRecord, 225)
	MisBeginCondition(HasRecord, 224)
	MisBeginCondition(NoMission, 225)
	MisBeginAction(AddMission, 225)
	MisBeginAction(AddTrigger, 2251, TE_GETITEM, 3979, 1 )		--ЙіД®НхХЯЦ®Ц¤
	MisCancelAction(ClearMission, 225)

	MisNeed(MIS_NEED_ITEM, 3979, 1, 10, 1)

	MisResultTalk("<t>УРААААА! Благодаря вам я теперь новый Главарь Песчаных андитов!")
	MisHelpTalk("<t>Почему вы здесь?")
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

----------------------------ХжПа
	DefineMission( 240, " Правда ", 226 )
	
	MisBeginTalk( "<t>Вы помогли стать мне новым Главарем Песчаных бандитов,я скажу вам правду. <n> <T>Я знаю о небольшой группе пиратов.<n> <T> Их называют еПираты Джекае Они пытались найти журнал Роланда,и я им в этом помого!А теперь можете доложить стражу " )
	MisBeginCondition(NoRecord, 226)
	MisBeginCondition(HasRecord, 225)
	MisBeginCondition(NoMission, 226)
	MisBeginAction(AddMission, 226)
	MisCancelAction(ClearMission, 226)
		
	MisNeed(MIS_NEED_DESP, "Доложить Стражнику! (958, 3549)")
	
	MisHelpTalk("<t>Я уже сказал вам все, что знаю.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ХжПа
	DefineMission( 241, " Правда ", 226, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Значит <bБандиты> украли книгу? <n> <T> Я должен был догадаться, но сейчас он является Главарем Песчаных бандитов, я не думаю, что мы сможем его арестовать. Спасибо за вашу помощь.")
	MisResultCondition(NoRecord, 226)
	MisResultCondition(HasMission, 226)
	MisResultAction(ClearMission, 226 )
	MisResultAction(SetRecord, 226 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,2650,2650)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------єЈµБµДПыПў
	DefineMission( 242, " Пиратские новости ", 227 )
	
	MisBeginTalk( "<t>Хотя мы не можем арестовать <bСупермуна>, мы могли провести расследование. <n> <T> Во-первых, мне придется отчитываться перед начальником о ходе расследования. Хмм ... Не могли бы Вы, найти Франко (867, 3660)? Он сделает неплохую новость о пиратах." )
	MisBeginCondition(NoRecord, 227)
	MisBeginCondition(HasRecord, 226)
	MisBeginCondition(NoMission, 227)
	MisBeginAction(AddMission, 227)
	MisCancelAction(ClearMission, 227)
		
	MisNeed(MIS_NEED_DESP, "Найти франко (867, 3660)")
	
	MisHelpTalk("<t>Если вы не можете найти Франко , попробуйте обойти гавань.")
	MisResultCondition(AlwaysFailure )

-----------------------------------єЈµБµДПыПў
	DefineMission( 243, " Пиратские новости ", 227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Вам нужна информация о пиратах* Вы нашли нужного человека! <n> <T> О чем бы вы хотели знать больше ? Легенда о <bПирате Роланде>? Войне  между Громоградом  и <bПиратами Сакуры>? Или, возможно, о <rПиратах Джека>? Спросите сейчас!")
	MisResultCondition(NoRecord, 227 )
	MisResultCondition(HasMission, 227 )
	MisResultAction(ClearMission, 227 )
	MisResultAction(SetRecord, 227 )
	MisResultAction(AddExp,749,749)
	MisResultAction(AddMoney,1333,1333)	
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------ЅЬїЛєЈµБНЕ
	DefineMission( 244, " Пираты Джека ", 228 )
	
	MisBeginTalk( "<t>еееНу, так что вы хотели знать о <rJackеs Пиратские Crew>. В начале эта группа пиратов собиралась в округе города. Однако, пока они не создавали проблем, не было смысла их беспокоить.Но в последнее время они стали появляться в южной части пустыни. <n> <T> Пустыня принадлежит Песчаным бандитам. <n> <T> Может ли так быть? Ха-ха ... <n> <T> О таких вещах лучше спросить <bМеррикс> она находится в Шайтане (1118, 3611). По какой-то причине, она всегда, все знает.После выхода из города, следуйте вдоль побережья на восток, и вы найдете ее рядом с затонувшими судами." )
	MisBeginCondition(NoRecord, 228)
	MisBeginCondition(HasRecord, 227)
	MisBeginCondition(NoMission, 228)
	MisBeginAction(AddMission, 228)
	MisCancelAction(ClearMission, 228)
		
	MisNeed(MIS_NEED_DESP, "Look for Merrix at (1118, 3611)")
	
	MisHelpTalk("Навестите <bМеррикс>  (1118, 3611).")
	MisResultCondition(AlwaysFailure )

-----------------------------------єЪЅЬїЛєЈµБНЕ
	DefineMission( 245, " Пираты Джека ", 228, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Необычные обряды <rПиратов Джека> привлекают мое внимание. Я чувствую, наступают темные времена..")
	MisResultCondition(NoRecord, 228 )
	MisResultCondition(HasMission, 228 )
	MisResultAction(ClearMission, 228 )
	MisResultAction(SetRecord, 228 )
	MisResultAction(AddExp,1700,1700)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------·СїЛґ¬і¤
	DefineMission( 246, " Капитан Фикль ", 229 )

	MisBeginTalk( "<t>Я могу помочь вам, но <rКапитан Фикл>  и его помощники очень опасные люди.  <n> <T> Капитан Фикл очень жестокий и его примерное местонахождение близ (1500,3450)  <n> <T> Если вы каким-то образом достанете сумку для меня, я мог бы помоч вам. <n> <T> Удачи." )
	MisBeginCondition(NoRecord, 229)
	MisBeginCondition(HasRecord, 228)
	MisBeginCondition(NoMission, 229)
	MisBeginAction(AddMission, 229)
	MisBeginAction(AddTrigger, 2291, TE_GETITEM, 3980, 1 )		--·СїЛµДРЎ°ь
	MisCancelAction(ClearMission, 229)

	MisNeed(MIS_NEED_ITEM, 3980, 1, 10, 1)

	MisResultTalk("<t>Вы достали сумку? <n> <T> Великолепно! Теперь я вижу, что это такое...")
	MisHelpTalk("<t>Хмм.. Не удается найти его? Прогулка вдоль береговой линии вам не помешает...")
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

----------------------------С°ХТКХРЕИЛ
	DefineMission( 247, " Те, кого это может касаться ", 230 )
	
	MisBeginTalk( "<t> Я осмотрел сумку, она содержала письмо от от таинственного \ Дж\." )
	MisBeginCondition(NoRecord, 230)
	MisBeginCondition(HasRecord, 229)
	MisBeginCondition(NoMission, 230)
	MisBeginAction(AddMission, 230)
	MisBeginAction(GiveItem, 3981, 1, 4 )
	MisCancelAction(ClearMission, 230)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Найдите таинственного  \"Дж\"")
	
	MisHelpTalk("<t>Я знаю, что информации мало, но вы должны доверять мне. У меня есть предчувствие, что вы сможете его найти...")
	MisResultCondition(AlwaysFailure )

-----------------------------------С°ХТКХРЕИЛ
	DefineMission( 248, " Те, кого это может касаться ", 230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t> Каким образом вы получили это письмо? Это мое письмо!!! <n> <T> Я \ Дж\.Почему называется \ Дж\? <n> <T> Ты никогда не узнаешь ответа.А теперь я дам тебе небольшой урок этикета!. ")
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


----------------------------»г±ЁКХРЕИЛ
	DefineMission( 249, " Те, кого это может касаться ", 5, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Супермун - загадочный Дж?Никогда бы не подумал...")
	MisResultCondition(HasMission, 5 )
	MisResultCondition(NoRecord, 5 )
	MisResultAction(ClearMission, 5 )
	MisResultAction(SetRecord, 5 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------ИҐ±±·Ѕ
	DefineMission( 250, " Путешествие на север ", 232 )
	
	MisBeginTalk( "<t>Думаю вам пора навестить мечника Рея. <n> <T> Вы были в Ледыни? О там круглый год зима. Недавно на город было нападение. Это место теперь находится в руинах. <n> <T> Думаю мечник Рей не отказался бы от вашей помощи (1364,571)" )
	MisBeginCondition(NoRecord, 232)
	MisBeginCondition(HasRecord, 5 )
	MisBeginCondition(NoMission, 232)
	MisBeginAction(AddMission, 232)
	MisCancelAction(ClearMission, 232)
		
	MisNeed(MIS_NEED_DESP, "Найдите Рея (1365, 570)")
	
	MisHelpTalk("<t>Ну что стоишь?")
	MisResultCondition(AlwaysFailure )

-----------------------------------ИҐ±±·Ѕ
	DefineMission( 251, " Путешествие на север ", 232, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Приветствую вас в Ледыни.Я знаю что вы пришли по поводу тех проишествий с животными <n> <T> Извини,не думаю что смогу чем то помоч.Мы заняты реконструкцией города.")
	MisResultCondition(NoRecord, 232 )
	MisResultCondition(HasMission, 232 )
	MisResultAction(ClearMission, 232 )
	MisResultAction(SetRecord, 232 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------±щАЗ±¤µДОЈ»ъ
	DefineMission( 252, " Опасность в Ледыне ", 233 )
	
	MisBeginTalk( "<t>Поговорите с  <bМасом>ь. Он должен вам помочь.Думаю он в этом районе (1346, 451)." )
	MisBeginCondition(NoRecord, 233)
	MisBeginCondition(HasRecord, 232)
	MisBeginCondition(NoMission, 233)
	MisBeginAction(AddMission, 233)
	MisCancelAction(ClearMission, 233)
		
	MisNeed(MIS_NEED_DESP, "Найдите Маса (1346, 451).")
	
	MisHelpTalk("<t>Маса не так легко найти!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ИҐ±±·Ѕ
	DefineMission( 253, " Опасность в Ледыне ", 233, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Добро пожаловать путешественник.Ледынь на грани жизни и смерти, как мы говорим. Мы были когда-то большим и красивым городом <n> <T> Мы можем лишь надеяться на то что нежить отступит ")
	MisResultCondition(NoRecord, 233 )
	MisResultCondition(HasMission, 233 )
	MisResultAction(ClearMission, 233 )
	MisResultAction(SetRecord, 233 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------І№ёш
	DefineMission( 254, " Пополнение ", 234 )
	
	MisBeginTalk( "<t>Недавно было столько неприятностей , что положение значительно узудшилось.К нам ехало подкрепление из Громограда и Аргента , но нежить перехватила их по пути.Теперь вся наша надежда на воинов из Шайтана <n> <T> Умоляю!Узнайте у Мо о том как обстоит дело!" )
	MisBeginCondition(NoRecord, 234)
	MisBeginCondition(HasRecord, 233)
	MisBeginCondition(NoMission, 234)
	MisBeginAction(AddMission, 234)
	MisCancelAction(ClearMission, 234)
		
	MisNeed(MIS_NEED_DESP, "Найдите Мо (1237, 613)")
	
	MisHelpTalk("<t>Вы не нашли Мо?")
	MisResultCondition(AlwaysFailure )

-----------------------------------І№ёш
	DefineMission( 255, " Пополнение ", 234, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Вас прислал Мас? Я очень сожалею,но подкрепление не прибыло.Надеюсь они не столкнулись с врагами.")
	MisResultCondition(NoRecord, 234 )
	MisResultCondition(HasMission, 234 )
	MisResultAction(ClearMission, 234 )
	MisResultAction(SetRecord, 234 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------С°ХТІ№ёш¶У
	DefineMission( 256, " Поиски припасов ", 235 )
	
	MisBeginTalk( "<t>Я уверен в том, что подкрепление нормально добралось до Атлантиса. <n> <T> Не могли бы вы помочь мне проверить? Найдите их и поговорите с капитаном Гардесом (1028, 649)" )
	MisBeginCondition(NoRecord, 235)
	MisBeginCondition(HasRecord, 234)
	MisBeginCondition(NoMission, 235)
	MisBeginAction(AddMission, 235)
	MisCancelAction(ClearMission, 235)
		
	MisNeed(MIS_NEED_DESP, "Найдите Гасардиса (1028, 649)")
	
	MisHelpTalk("<t>Думаю Капиатн Гасардис,где то в бухте Атлантис")
	MisResultCondition(AlwaysFailure )

-----------------------------------С°ХТІ№ёш¶У
	DefineMission( 257, " Поиски припасов ", 235, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Пополнение отсутствует.")
	MisResultCondition(NoRecord, 235 )
	MisResultCondition(HasMission, 235 )
	MisResultAction(ClearMission, 235 )
	MisResultAction(SetRecord, 235 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)	
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------І№ёшЖ·¶б»Ш
	DefineMission( 258, " Отбить припасы ", 236 )

	MisBeginTalk( "<t>Когда мы приближались  к Бухте Атлантис. Мы были окружены отрядом Йети. Мы бились с ними,а тем временем несколько Йети украли наши припасы <n> <T> Странно,я всегда дупал что они глуповаты! <n> <T> Помогите нам найди наши припасы." )
	MisBeginCondition(NoRecord, 236)
	MisBeginCondition(HasRecord, 235)
	MisBeginCondition(NoMission, 236)
	MisBeginAction(AddMission, 236)
	MisBeginAction(AddTrigger, 2361, TE_GETITEM, 3982, 15 )		--±»ЗАµДІ№ёшЖ·
	MisCancelAction(ClearMission, 236)

	MisNeed(MIS_NEED_ITEM, 3982, 15, 10, 15)

	MisResultTalk("<t>Вау ты нашел все припасы! Ура!")
	MisHelpTalk("<t>Йети не слишком сложно найти!Думаю они находятся где то в этом районе Материка (860/532 - 1628/954)")
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


----------------------------»¤ЛНІ№ёшЖ·
	DefineMission( 259, " Доставка припасов ", 237 )
	
	MisBeginTalk( "<t> Так как вы помогли нам вернуть Припасы, не могли бы вы  помочь довести их до Ледыни  к <bМечнику Рею> по координатам  (1365, 570). Я в долгу перед вами." )
	MisBeginCondition(NoRecord, 237)
	MisBeginCondition(HasRecord, 236)
	MisBeginCondition(NoMission, 237)
	MisBeginAction(AddMission, 237)
	MisBeginAction(GiveItem, 3983, 15, 4)
	MisCancelAction(ClearMission, 237)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Найдите Рея в Ледыни (1365, 570)")
	
	MisHelpTalk("<t>\ 193ыстрее!Тебе надо в Ледынь! ")
	MisResultCondition(AlwaysFailure )

-----------------------------------»¤ЛНІ№ёшЖ·
	DefineMission( 260, " Доставка припасов ", 237, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>О Богиня Кара! Мы спасены ! <n> <T> Эти посылки были нашей последней надеждой. Я не знаю, как поблагодарить вас.")
	MisResultCondition(NoRecord, 237 )
	MisResultCondition(HasMission, 237)
	MisResultCondition(HasItem, 3983, 15 )
	MisResultAction(TakeItem, 3983, 15 )
	MisResultAction(ClearMission, 237 )
	MisResultAction(SetRecord, 237 )
	MisResultAction(AddExp,2300,2300)
	MisResultAction(AddMoney,2900,2900)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------КВјюµчІй
	DefineMission( 261, " Дальнейшее расследование ", 238 )
	
	MisBeginTalk( "<t>Из предоставленной Вами информации, складывается впечатление, что Йети стали более смышленными. <n> <T>Сходите к Исследователю Элане (1141, 575), который проводит исследования существ Ледыни." )
	MisBeginCondition(NoRecord, 238)
	MisBeginCondition(HasRecord, 237)
	MisBeginCondition(NoMission, 238)
	MisBeginAction(AddMission, 238)
	MisCancelAction(ClearMission, 238)
		
	MisNeed(MIS_NEED_DESP, "Найти Элану (1141, 575)")
	
	MisHelpTalk("Элана должна быть недалеко от Бухты Атлантис!")
	MisResultCondition(AlwaysFailure )

-----------------------------------КВјюµчІй
	DefineMission( 262, " Дальнейшее расследование ", 238, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Что касается существа Ледыни, я заметила большой прирост их интеллекта,они стали более агрессивны. Если вы готовы помочь мне , то мы поймем что происходит.")
	MisResultCondition(NoRecord, 238 )
	MisResultCondition(HasMission, 238)
	MisResultAction(ClearMission, 238 )
	MisResultAction(SetRecord, 238 )
	MisResultAction(AddExp,2600,2600)
	MisResultAction(AddMoney,3000,3000)
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------С©Ф­ЙъОп
	DefineMission( 263, " Обитатели снежных просторов ", 239 )

	MisBeginTalk( "<t>Помимо <bЙети> по координатам (1495, 667), Есть несколько видов таких же,<bСнежной Королевы> по координатам (1746, 530) и <bИгривая Снегурка> по координатам  (873, 646).<n> <T> Вы должны принести мне несколько материалов , необходимых для моих исследований, а именно 5 <yКамень памяти Снежной Королевы >, < yКамень памяти Снегурки> и <yКамень памяти Йети>. <n> <T> Изучение этих камней памяти позволт понять,что же произошло." )
	MisBeginCondition(NoRecord, 239)
	MisBeginCondition(HasRecord, 238)
	MisBeginCondition(NoMission, 239)
	MisBeginAction(AddMission, 239)
	MisBeginAction(AddTrigger, 2391, TE_GETITEM, 3984, 5 )		--С©НЮНЮµДјЗТдКЇ
	MisBeginAction(AddTrigger, 2392, TE_GETITEM, 4069, 5 )		--С©Е®µДјЗТдКЇ
	MisBeginAction(AddTrigger, 2393, TE_GETITEM, 4070, 5 )		--С©ИЛµДјЗТдКЇ
	MisCancelAction(ClearMission, 239)

	MisNeed(MIS_NEED_ITEM, 3984, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4069, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4070, 5, 30, 5)

	MisResultTalk("<t>Это то, что мне нужно! <n> <T> Эти Камни памяти ... они необычные... Хмм ...")
	MisHelpTalk("<t>Все просто!Пойти и собрать камней памяти.")
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

-------------------------------------------------С°ХТС©ИЛНх
	DefineMission( 264, " Поиски Короля Йети ", 240 )

	MisBeginTalk( "<t>Судя по тому, что я увидел в эти Камнях памяти, Йети представляют большую угрозу. Если ты найдешь для меня камень короля Йети , то все станет ясно." )
	MisBeginCondition(NoRecord, 240)
	MisBeginCondition(HasRecord, 239)
	MisBeginCondition(NoMission, 240)
	MisBeginAction(AddMission, 240)
	MisBeginAction(AddTrigger, 2401, TE_GETITEM, 4071, 1 )		--С©НЮНЮµДјЗТдКЇ
	MisCancelAction(ClearMission, 240)

	MisNeed(MIS_NEED_ITEM, 4071, 1, 10, 1)

	MisResultTalk("<t>Камень памяти короля Йети очень отличается от обычных.Я не могу долго ждать.")
	MisHelpTalk("<t>Я уверен, что Король Йети опасен, но я верю в вас.")
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

----------------------------°ЧТшіЗµДЦЗХЯ
	DefineMission( 265, " Мудрость Серебряного Города ", 241 )
	
	MisBeginTalk( "<t>После тщательного исследования в Камня памяти короля Йети, я могу заключить, что он является чрезвычайно обычных Йети.Он просто изменил свой вид. Он родился крупнее и сильнее чем другие Йети,поэтому стал их королем. Я думаю вам пора наведаться в Аргент <n> <T> Мой учитель Блюри рассказывал о таких вещах,и о некоторых легендах <n> <T> Если вы хотите узнать больше об этом больше, вы можете найти старика Блюри  в Аргенте  (2272, 2700)." )
	MisBeginCondition(NoRecord, 241 )
	MisBeginCondition(HasRecord, 240 )
	MisBeginCondition(NoMission, 241 )
	MisBeginAction(AddMission, 241 )
	MisCancelAction(ClearMission, 241 )
		
	MisNeed(MIS_NEED_DESP, "Спросите Блюри о Йети (2272,2700)")
	
	MisHelpTalk("<t>Возвращайтесь в Аргент и найдите там моего учителя..")
	MisResultCondition(AlwaysFailure )

-----------------------------------°ЧТшіЗµДЦЗХЯ
	DefineMission( 266, " Мудрость Серебряного Города ", 241, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>А? Старик ? Я не знаю его. Я слышал, он очень красивый старик!.")
	MisResultCondition(NoRecord, 241 )
	MisResultCondition(HasMission, 241)
	MisResultAction(ClearMission, 241 )
	MisResultAction(SetRecord, 241 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)



-------------------------------------------------єэНїЙЅИЛ
	DefineMission( 267, " Блюрри ", 242 )

	MisBeginTalk( "<t>Что Легенда? Вы уверены, что я говорил об этом? Хм ... Я не помню ничего о ней. <n> <T> А вот если бы вы дали мне бутылку лучшего вина из бара Донны,я смог бы вспомнить побольше!(вот алкаш XD)" )
	MisBeginCondition(NoRecord, 242)
	MisBeginCondition(HasRecord, 241)
	MisBeginCondition(NoMission, 242)
	MisBeginAction(AddMission, 242)
	MisBeginAction(AddTrigger, 2421, TE_GETITEM, 4072, 1 )		--С©НЮНЮµДјЗТдКЇ
	MisCancelAction(ClearMission, 242)

	MisNeed(MIS_NEED_ITEM, 4072, 1, 10, 1)

	MisResultTalk("<t>Принеси мне лучшее вино!")
	MisHelpTalk("<t>Принеси мне лучшее вино!")
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

-----------------------------------єэНїЙЅИЛ
	DefineMission( 268, " Блюрри ", 242, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>   Вы ищете вино  'Восемь Драгоценностей'? Мы продали на данный момент все , оно очень популярно. Но для вас я могу сделать еще одну партию,если вы найдете нужные ингридеенты. ")
	MisResultCondition(NoRecord, 242 )
	MisResultCondition(HasMission, 242)
	MisResultCondition(NoFlag, 242, 1 )
	MisResultAction(SetFlag, 242, 1 )


-------------------------------------------------ЙЅХд°Л±¦ѕЖ
	DefineMission( 269, " Вино 'Восемь Драгоценностей' ", 243 )

	MisBeginTalk( "<t> Для того, чтобы сделать такое вино требуется 8 ингредиентов. Вот первые 4: 2 <yЯйцо Зловещей черепахи> из <rЗловещей черепахи> по координатам (990, 2553);2 <yСухожилия Кабана> из <rБезумного Кабана> по координатам (910, 2971); 2 <yУсика Дурмана> из <rДурмана> по телефону ( 1414, 2896);2 <yПорошок из рудыl> из <rЛетучей мыши> по телефону (1900, 2643)." )
	MisBeginCondition(NoRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(HasFlag, 242, 1)
	MisBeginCondition(NoMission, 243)
	MisBeginAction(AddMission, 243)
	MisBeginAction(AddTrigger, 2431, TE_GETITEM, 4073, 2 )		--їЦ№кµ°
	MisBeginAction(AddTrigger, 2432, TE_GETITEM, 4074, 2 )		--Т°ЦнµДлмЧУИв
	MisBeginAction(AddTrigger, 2433, TE_GETITEM, 4075, 2 )		--ВьНУВЮµДМЩВы
	MisBeginAction(AddTrigger, 2434, TE_GETITEM, 4076, 2 )		--їуОпµДЅбѕ§·ЫД©
	MisCancelAction(ClearMission, 243)

	MisNeed(MIS_NEED_ITEM, 4073, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 4074, 2, 12, 2)
	MisNeed(MIS_NEED_ITEM, 4075, 2, 14, 2)
	MisNeed(MIS_NEED_ITEM, 4076, 2, 16, 2)


	MisResultTalk("<t> О вы уже пришли! <n> <T> Я начну делать вино прямо сейчас.")
	MisHelpTalk("<t>Что случилось? Я не могу сделать вино,если нету нужных ингридеентов..")
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


----------------------------іВДкѕЙКВ
	DefineMission( 270, " Когда-то, давным давно... ", 244 )
	
	MisBeginTalk( "<t>Поскольку вы хорошо ко мне отнеслись,я открою вам секрет. <n> <T> Председатель Аргента Рони может быть к этому причастен!<n> <T> Думаю вам стоит поговорить с ним(2241, 2748)." )
	MisBeginCondition(NoRecord, 244 )
	MisBeginCondition(HasRecord, 242 )
	MisBeginCondition(NoMission, 244 )
	MisBeginAction(AddMission, 244 )
	MisCancelAction(ClearMission, 244 )
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Рони (2241, 2748) ")
	
	MisHelpTalk("<t>Good Wine! Good Wine!")
	MisResultCondition(AlwaysFailure )

-----------------------------------іВДкѕЙКВ
	DefineMission( 271, " Когда-то, давным давно.. ", 244, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Что? Как этот подлый старик смеет распростронять слухи обо мне? Скажи ему, что если он что-либо хочет сказать,пусть приходит сам.")
	MisResultCondition(NoRecord, 244 )
	MisResultCondition(HasMission, 244)
	MisResultAction(ClearMission, 244 )
	MisResultAction(SetRecord, 244 )
	MisResultAction(ObligeAcceptMission, 6 )
	MisResultAction(SystemNotice, "Получить Фрукты " )
	MisResultAction(AddExp,3500,3500)
	MisResultAction(AddMoney,3150,3150)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------СЇОКОґ№ы
	DefineMission( 272, " Неправильный вопрос ", 6 )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Ха-ха-ха, я почти забыл. Он скорее все потеряет чем расскажет об этом!Мне кажется я знаю что делать.")
	MisResultCondition(HasMission, 6 )
	MisResultAction(ClearMission, 6 )
	MisResultAction(SetRecord, 6 )
	MisResultAction(AddExp,1768,1768)
	MisResultAction(AddMoney,1565,1565)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------»бі¤µД°С±ъ
	DefineMission( 273, " Темные тайны Председателя ", 246 )
	
	MisBeginTalk( "<t>Если вы хотите что бы  Рони заговорил,надо шантажировать его. <n> <T> Думаю адмирал Увильям сможет нам помочь (2277, 2831)." )
	MisBeginCondition(NoRecord, 246 )
	MisBeginCondition(HasRecord, 6 )
	MisBeginCondition(NoMission, 246 )
	MisBeginAction(AddMission, 246 )
	MisCancelAction(ClearMission, 246 )
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Адмиралом (2277, 2831)")
	
	MisHelpTalk("<t>GoЎ­Go! Leave me alone with my wine.")
	MisResultCondition(AlwaysFailure )

-----------------------------------»бі¤µД°С±ъ
	DefineMission( 274, " Темные тайны Председателя ", 246, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ха-ха.Вот подлый старикашка! <n> <T> Но я помогу вам.")
	MisResultCondition(NoRecord, 246 )
	MisResultCondition(HasMission, 246)
	MisResultAction(ClearMission, 246 )
	MisResultAction(SetRecord, 246 )
	MisResultAction(AddExp,3600,3600)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------·ПїуМЅЛч
	DefineMission( 275, " Расследование в Шахтах ", 247 )

	MisBeginTalk( "<t>Сходите до Серебрянных шахт. <n> <T>Существо которое мы назвали еГрязье может хранить в себе множество секретов!Если вы найдете для меня несколько Клочков старой бумаги, то  мы сможем начать шантажировать Рони. " )
	MisBeginCondition(NoRecord, 247)
	MisBeginCondition(HasRecord, 246)
	MisBeginCondition(NoMission, 247)
	MisBeginAction(AddMission, 247)
	MisBeginAction(AddTrigger, 2471, TE_GETITEM, 4081, 10 )		--ЖЖѕЙµДЦЅЖ¬
	MisCancelAction(ClearMission, 247)

	MisNeed(MIS_NEED_ITEM, 4081, 10, 10, 10)

	MisResultTalk("<t>Так посмотрим что тут...")
	MisHelpTalk("<t>Мне кажется , что записки спрятаны внутри живота грязи.")
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

----------------------------ЦЅЖ¬µДГШГЬ
	DefineMission( 276, " Тайная записка ", 248 )
	
	MisBeginTalk( "<t>Посмотрите на эту <yЗаписку>, еэто объявление в розыск!Думаю вам пора наведаться к <bРони>. <n> <T> Я буду следить за продвижением дела." )
	MisBeginCondition(NoRecord, 248 )
	MisBeginCondition(HasRecord, 247 )
	MisBeginCondition(NoMission, 248 )
	MisBeginAction(AddMission, 248 )
	MisBeginAction(GiveItem, 4082, 1, 4 )
	MisCancelAction(ClearMission, 248 )
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Принесите Старую записку председателю Рони (2241, 2748)")
	
	MisHelpTalk("<t>Go now! I can imagine his expression. Haha!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЦЅЖ¬µДГШГЬ
	DefineMission( 277, " Тайная записка " , 248, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Зачем вы вернулись? О-о-о! Откуда у вас?Что вам надо?Ладно я буду говорить... Что вы хотели узнать?")
	MisResultCondition(NoRecord, 248 )
	MisResultCondition(HasMission, 248)
	MisResultCondition(HasItem, 4082, 1)
	MisResultAction(ClearMission, 248 )
	MisResultAction(SetRecord, 248 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------МУЕЬµДѕЮКЮ
	DefineMission( 278, " Бегство Чудища ", 249 )
	
	MisBeginTalk( "<t> Недавно я побывал на далеких островах.Там было много нового для меня,и вот идя вечером по пляжу я наткнулся на Бехамота.Я сразу смекнул что его можно продать по хорошей цене!Так же я купил Странный фрукт в надежде исследовать его дома. <n> <T> На обратном пути я положил фрукт в клетку Бехамота,и думаю он съел его. <n> <T> Бехамот стал достаточно сильным что бы сбежать,он бежал на запад - к шахтам.Для его поимки мне пришлось назначить награду!Но никому не удалось его победить. Даже капитану Гвардии.Думаю вы сможете узнать у него подробности (2192, 2767) " )
	MisBeginCondition(NoRecord, 249 )
	MisBeginCondition(HasRecord, 248 )
	MisBeginCondition(NoMission, 249 )
	MisBeginAction(AddMission, 249 )
	MisCancelAction(ClearMission, 249 )
		
	MisNeed(MIS_NEED_DESP, "Найдите капитана гвардии (2192, 2767)")
	
	MisHelpTalk("<t>Питер находится не далеко от западных ворот Аргента.Его сложно не заметить!")
	MisResultCondition(AlwaysFailure )

-----------------------------------МУЕЬµДѕЮКЮ
	DefineMission( 279, " Бегство Чудища ", 249, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Бехамот? Это очень опасное животное. <n> <T> Я всеми способами старался его побороть ,но мне не удалось.")
	MisResultCondition(NoRecord, 249 )
	MisResultCondition(HasMission, 249)
	MisResultAction(ClearMission, 249 )
	MisResultAction(SetRecord, 249 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,9035,9035)




-------------------------------------------------№ЕАПµДРьЙНБо
	DefineMission( 280, " Древний жетон на охоту ", 250 )

	MisBeginTalk( "<t>Бехамот? Это очень опасное животное. <n> <T> Я всеми способами старался его побороть ,но мне не удалось." )
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(HasRecord, 248)
	MisBeginCondition(NoMission, 250)
	MisBeginCondition(HasItem, 4082, 1)
	MisBeginAction(AddMission, 250)
	MisBeginAction(AddTrigger, 2501, TE_GETITEM, 4083, 1 )		--БНонx1
	MisCancelAction(ClearMission, 250)

	MisNeed(MIS_NEED_ITEM, 4083, 1, 10, 1)

	MisPrize(MIS_PRIZE_MONEY, 34464, 1)
	MisPrizeSelAll()

	MisResultTalk("<t>ВЫ действительно победили чудище?! <n> <T> Вот ваша награда.")
	MisHelpTalk("<t>Не огорчайтесь,не вы первый,не вы последний!")
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

----------------------------їЙЕВµД№ЦОп
	DefineMission( 281, " Страшный Монстр ", 251 )
	
	MisBeginTalk( "<t>Странно, но этот монстр любит Бабушкино печенье.Когда мы пили чай,он внезапно напал на нас,но взял только печенье!" )
	MisBeginCondition(NoRecord, 251 )
	MisBeginCondition(HasRecord, 249 )
	MisBeginCondition(NoMission, 251 )
	MisBeginAction(AddMission, 251 )
	MisCancelAction(ClearMission, 251 )
		
	MisNeed(MIS_NEED_DESP, "Навестите Бабушку Белди (2277, 2769)")
	
	MisHelpTalk("<t>Кстате,говоря о печеньях они у Бабушки ооочень вкусные.")
	MisResultCondition(AlwaysFailure )

-----------------------------------їЙЕВµД№ЦОп
	DefineMission( 282, " Страшный Монстр ", 251, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Мне нравится, когда мои печенья украшают жизнь людей. <n> <T> Я слышала о бедном животном обитающем в недрах шахт. Пусть он знает,он будет есть мои печеньки если будет вести себя хорошо!")
	MisResultCondition(NoRecord, 251 )
	MisResultCondition(HasMission, 251)
	MisResultAction(ClearMission, 251 )
	MisResultAction(SetRecord, 251 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------АПДМДМµДёвµг
	DefineMission( 283, " Бабушкино печенье ", 252 )
	
	MisBeginTalk( "<t>Шахтер Дринки любит мои печеньки! <n> <T> . Вы можете найти его в Серебряных шахтах." )
	MisBeginCondition(NoRecord, 252 )
	MisBeginCondition(HasRecord, 251 )
	MisBeginCondition(NoMission, 252 )
	MisBeginAction(AddMission, 252 )
	MisCancelAction(ClearMission, 252 )
		
	MisNeed(MIS_NEED_DESP, "Найти Дринки (296, 57)")
	
	MisHelpTalk("<t>Спешите,а то Дринки съест весь ужин!")
	MisResultCondition(AlwaysFailure )

-----------------------------------АПДМДМµДёвµг
	DefineMission( 284, " Бабушкино печенье ", 252, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы пришли за печеьем бабушки? Мне очень жаль, но у меня не осталось ни одного..")
	MisResultCondition(NoRecord, 252 )
	MisResultCondition(HasMission, 252)
	MisResultAction(ClearMission, 252 )
	MisResultAction(SetRecord, 252 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------±»¶бЧЯµД±гµ±
	DefineMission( 285, " Украденный ужин ", 253 )

	MisBeginTalk( "<t>Сегодня был хороший день-Бабушка сделала мне своих печенек. Я упаковывал свой ужин,затем мне надо было отойти,а когда вернулся ужин пропал! <n> <T> Я думаю это были Кроты-ниньзя. <n> <T> Можете ли Вы мне помочь?Они часто встречаются в старых шахтах  (229, 28). " )
	MisBeginCondition(HasRecord, 252)
	MisBeginCondition(NoMission, 253)
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(NoRecord, 253)  --ФЭК±І»РнЦШёґЅУ
	MisBeginCondition(NoMission, 4)
	MisBeginAction(AddMission, 253)
	MisBeginAction(AddTrigger, 2531, TE_GETITEM, 4084, 1 )		--±гµ±x1
	MisCancelAction(ClearMission, 253)

	MisNeed(MIS_NEED_ITEM, 4084, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 3917, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t> Ты мой спаситель! Это мой ужин!Большое спасибо! <n> <T> Вот вам печека за вашу доброту!Но никогда не идите дальше первого уровня шахт!Там обитает чудовище которое бросается на каждого с таким ужином.")
	MisHelpTalk("<t>Не очень хорошая работа...")
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
	TriggerAction( 1, SystemNotice, "Время прошло!" )
	TriggerAction( 1, SetMissionFailure, 4 )
	RegCurTrigger( 108 )

-------------------------------------------------єЈЙПІ№ёшХѕ
	DefineMission( 286, " Морское пристанище ", 254 )

	MisBeginTalk( "<t> Когда то я был капитаном торгового флота..Очень давно... мои путешествия привели меня к Таинственным островам.Там мы нашли Бехамота. <n> <T> Когда я ехал назад мы остановились у порта  , и встретили там Андрею <n> <T> Но думаю Ширли поможет вам.Ищите его по координатам (2243, 2826)" )
	MisBeginCondition(NoRecord, 254)
	MisBeginCondition(HasRecord, 250)
	MisBeginCondition(NoMission, 254)
	MisBeginAction(AddMission, 254)
	MisCancelAction(ClearMission, 254)

	MisNeed(MIS_NEED_DESP, "Поговорите с Ширли (2243, 2826) ")

	MisHelpTalk("<t>Я не  уверен в том ,что Андрея находятся в гавани до сих пор...")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ЙЅХд°Л±¦ѕЖ
	DefineMission( 288, " Вино Восьми драгоценностей ", 255 )

	MisBeginTalk( "<t>Для варки Вина требуется еще 4 Ингредиента: 2 <yБамбуковая влага> из <rНебесной панды> по координатам (1655, 2563), 2 <yПитательный жемчужный порошок> из <rУстриц> по координатам (1817, 2472), 2 <yКонтрабандные специи> из <rКонтрабандисты> по координатам (1624, 3017) и 3 <yБраги> из <rБоксеру Берсек> по координатам (1161, 2639)." )
	MisBeginCondition(NoRecord, 255)
	MisBeginCondition(HasRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(NoMission, 255)
	MisBeginAction(AddMission, 255)
	MisBeginAction(AddTrigger, 2551, TE_GETITEM, 4077, 2 )		--ЦсТ¶ЙПµДВ¶Цй
	MisBeginAction(AddTrigger, 2552, TE_GETITEM, 4078, 2 )		--СшСХµДХдЦй·Ы
	MisBeginAction(AddTrigger, 2553, TE_GETITEM, 4079, 2 )		--ЧЯЛЅПгБП
	MisBeginAction(AddTrigger, 2554, TE_GETITEM, 4080, 3 )		--ґьКуµДЛЅДр
	MisCancelAction(ClearMission, 255)

	MisNeed(MIS_NEED_ITEM, 4077, 2, 18, 2)
	MisNeed(MIS_NEED_ITEM, 4078, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 4079, 2, 22, 2)
	MisNeed(MIS_NEED_ITEM, 4080, 3, 24, 3)

	MisPrize(MIS_PRIZE_ITEM, 4072, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>О! Вы принесли ингредиенты. <n> <T> Я начну делать вино прямо сейчас!")
	MisHelpTalk("<t>Что такое?Как я могу приготовить вино,если мне не хватает ингредиентов?")
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

-----------------------------------єЈЙПІ№ёшХѕ
	DefineMission( 289, " Морское Пристанище ", 254, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Девятая бухта?Хм,не слышал о таком месте. Извините, не чем не могу помочь.")
	MisResultCondition(NoRecord, 254 )
	MisResultCondition(HasMission, 254)
	MisResultAction(ClearMission, 254 )
	MisResultAction(SetRecord, 254 )
	MisResultAction(AddExp,5000,5000)	
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------єЅПЯ»оµШНј
	DefineMission( 290, " Навигационная карта ", 256 )

	MisBeginTalk( "<t>Хотя я и не знаю об этом месте,возможно другие пираты знаюи. <n> <T>. Его зовут .....< bБарос>! Если вы найдете его,то получите некоторую информацию. Однако в открытом море много опасностей! <n> <T> Ах , да местонахождение бухты тут  (2024, 2752).Удачи! " )
	MisBeginCondition(NoRecord, 256)
	MisBeginCondition(HasRecord, 254)
	MisBeginCondition(NoMission, 256)
	MisBeginAction(AddMission, 256)
	MisCancelAction(ClearMission, 256)

	MisNeed(MIS_NEED_DESP, "Найдите <bОперетора-Бароса> (2024, 2752)")

	MisHelpTalk("<t>Океан является очень опасным местом <n> <T> Приобретите хороший корабль для таких плаваний..")
	MisResultCondition(AlwaysFailure )

-----------------------------------єЅПЯ»оµШНј
	DefineMission( 291, " Навигационная карта ", 256, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>А? Кто вы? Как вы узнали о Девятой бухте? Я не из тех людей который легко дает информацию. *кашель *")
	MisResultCondition(NoRecord, 256 )
	MisResultCondition(HasMission, 256)
	MisResultAction(ClearMission, 256 )
	MisResultAction(SetRecord, 256 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------МфХЅЛ®Дё
	DefineMission( 292, " Морские задания ", 257 )

	MisBeginTalk( "<t>*Кашель* Если вы хотите знат чуть больше,то выполните мои поручения <n> <T>Найдите для меня 15 кристалов кровожадной медузы.." )
	MisBeginCondition(NoRecord, 257)
	MisBeginCondition(HasRecord, 256)
	MisBeginCondition(NoMission, 257)
	MisBeginAction(AddMission, 257)
	MisBeginAction(AddTrigger, 2571, TE_GETITEM, 4140, 15 )		--ЦсТ¶ЙПµДВ¶Цй
	MisCancelAction(ClearMission, 257)

	MisNeed(MIS_NEED_DESP, "Найдите 15 <yКристалов кровожадной медузы > и вернитесь к Баросу  (2024, 2752)")
	MisNeed(MIS_NEED_ITEM, 4140, 15, 10, 15)

	MisResultTalk("<t>* Кашель * Ну же мне нужно лекарство ")
	MisHelpTalk("<t>* Кашель *!")
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

-------------------------------------------------ЕЬґ¬
	DefineMission( 293, " Плавание ", 258 )

	MisBeginTalk( "<t>Это не очень сложно,верно? Поскольку вы являетесь молодым и энергичным человеком, помоги мне с еще одним заданием <n> <T> Доставьте несколько товаров для Ледыни." )
	MisBeginCondition(NoRecord, 258)
	MisBeginCondition(HasRecord, 257)
	MisBeginCondition(NoMission, 258)
	MisBeginAction(AddMission, 258)
	MisBeginAction(GiveItem, 4141, 1, 4)
	MisCancelAction(ClearMission, 258)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Наведайте Силиона в Ледыни (1214, 681)")

	MisHelpTalk("<t>Эй ты!Ну что стоишь?")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЕЬґ¬
	DefineMission( 294, " Плавание ", 258, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вас прислал Барос? Вы опоздали!Курьер Бароса давно приехал ко мне с известием о вашем приеходе. <n> <T> Или же вам встречалось много опасностей в пути?")
	MisResultCondition(NoRecord, 258 )
	MisResultCondition(HasMission, 258)
	MisResultCondition(HasItem, 4141, 1)
	MisResultAction(TakeItem, 4141, 1 )
	MisResultAction(ClearMission, 258 )
	MisResultAction(SetRecord, 258 )
	MisResultAction(AddExp,2924,2924)	
	MisResultAction(AddMoney,1711,1711)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------ВПЙъРЦµЬ
	DefineMission( 295, " Братья Ли ", 259 )

	MisBeginTalk( "<t>*Вздох* <n> <T> Из этого письма я понял что вы успешно сдали груз <n> <T> Я знаю, кто владелец Карты. Он живет в Ледыни. Его зовут <bЛюк>, отдайте ему мое письмо (1320, 585). <n> <T> PS Он мой брат-близнец!" )
	MisBeginCondition(NoRecord, 259)
	MisBeginCondition(HasRecord, 258)
	MisBeginCondition(NoMission, 259)
	MisBeginAction(AddMission, 259)
	MisBeginAction(GiveItem, 4142, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(ClearMission, 259)

	MisNeed(MIS_NEED_DESP, "Найдите <bЛюка> в Ледыни (1320, 585)")

	MisHelpTalk("<t>Товар здесь, письма у вас,что то еще?")
	MisResultCondition(AlwaysFailure )

-----------------------------------ВПЙъРЦµЬ
	DefineMission( 296, " Братья Ли ", 259, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Хм ... Это письмо от моего брата.<n> <T> Он всегда умел шутить.Хе-хе.Я  надеюсь, что вы не сердитесь.")
	MisResultCondition(NoRecord, 259 )
	MisResultCondition(HasMission, 259)
	MisResultCondition(HasItem, 4142, 1)
	MisResultAction(TakeItem, 4142, 1 )
	MisResultAction(ClearMission, 259 )
	MisResultAction(SetRecord, 259 )
	MisResultAction(AddExp,3225,3225)	
	MisResultAction(AddMoney,1742,1742)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------Чј±ё»о¶Ї
	DefineMission( 297, " Небольшая подготовка ", 260 )

	MisBeginTalk( "<t>Хотя я знаю, где Девятая бухта, я должен предупредить вас!<n> <T> Это место очень опасно. Я надеюсь, что вы достаточно сильны. <n> <T> Достаньте мне 12 Чешуи Рыбы-Скелета , и я дам вам вознаграждение.")
	MisBeginCondition(NoRecord, 260)
	MisBeginCondition(HasRecord, 259)
	MisBeginCondition(NoMission, 260)
	MisBeginAction(AddMission, 260)
	MisBeginAction(AddTrigger, 2601, TE_GETITEM, 4143, 12)		
	MisCancelAction(ClearMission, 260)

	MisNeed(MIS_NEED_DESP, "Достаньте 12 <yЧешуи рыбы-скелета> и отнесите ее Люку (1320, 585)")
	MisNeed(MIS_NEED_ITEM, 4143, 12, 10, 12)

	MisResultTalk("<t>Похоже, у Вас получилось! <n> <T> Позвольте,я сделаю из этой чешуи Кольцо.С ним вы будете сильнее.")
	MisHelpTalk("<t>Если вы не готовы,то лучше не плывите.Океан таит в себе много опасности.")
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

-------------------------------------------------ЧЈёЈЦ®КЦ
	DefineMission( 298, " Благословение ", 261 )

	MisBeginTalk( "<t>Хм...Это кольцо дает вам силу,но сила вашего духа еще не достаточно сильна <n> <T> Вам нужно посетить Ледяной шип,и поговорить с <bМастером Керра>.Ходят слухи что ее прикосновение может благословить любого." )
	MisBeginCondition(NoRecord, 261)
	MisBeginCondition(NoMission, 261)
	MisBeginCondition(HasRecord, 260)
	MisBeginAction(AddMission, 261)
	MisCancelAction(ClearMission, 261)

	MisNeed(MIS_NEED_DESP, "Отнести кольцо Мастеру Керре (2664, 654)")

	MisHelpTalk("<t>Найдите Мастера Керру!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЧЈёЈЦ®КЦ
	DefineMission( 299, " Благословение ", 261, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Молодой человек,что вы здесь забыли?А-а-а,кольцо!")
	MisResultCondition(NoRecord, 261)
	MisResultCondition(HasMission, 261)
	MisResultAction(ClearMission, 261 )
	MisResultAction(SetRecord, 261 )
	MisResultAction(AddExp,3916,3916)
	MisResultAction(AddMoney,1807,1807)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------РДБйБ¦Бї
	DefineMission( 300, " Сила духа ", 262 )

	MisBeginTalk( "<t> Бесчисленное множество людей просили моего благословения!Но только чистый сердцем может получить благословение. Я не хотела бы давать вам ложные надежды. Уничтожте Неупокоенного Лучника  (2746, 450) и принесите мне Лучистую душу. ")
	MisBeginCondition(NoRecord, 262)
	MisBeginCondition(HasRecord, 261)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 262)
	MisBeginAction(AddTrigger, 2621, TE_GETITEM, 4145, 1)		
	MisCancelAction(ClearMission, 262)

	MisNeed(MIS_NEED_DESP, "Доставьте Керре Лучистую душу  (2664, 654)")
	MisNeed(MIS_NEED_ITEM, 4145, 1, 10, 1)

	MisResultTalk("<t>Вы сделали это!Получите мое благословление.")
	MisHelpTalk("<t>Если вы сомневаетесь,то возвращайтесь в Город Ледынь")
	MisResultCondition(HasMission, 262 )
	MisResultCondition(HasItem, 4144, 1 )
	MisResultCondition(HasItem, 4145, 1 )
	MisResultAction(TakeItem, 4145, 1 )
	MisResultAction(TakeItem, 4144, 1 )
	MisResultAction(GiveItem, 4146, 1 , 4)
	MisResultAction(ClearMission, 262 )
	MisResultAction(SetRecord, 262 )
	MisResultAction(SystemNotice, "\Получен квест:Возвращение в Ледынь " )
	MisResultAction(ObligeAcceptMission, 7 )
	MisResultAction(AddExp,8620,8620)	
	MisResultAction(AddMoney,3682,3682)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4145 )	
	TriggerAction( 1, AddNextFlag, 262, 10, 1 )
	RegCurTrigger( 2621 )

-----------------------------------·µ»Ш±щАЗ
	DefineMission( 302, " Возвращение в Ледынь ", 7, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я думаю вы неплохо подготовлены!")
	MisResultCondition(NoRecord, 7 )
	MisResultCondition(HasMission, 7)
	MisResultAction(ClearMission, 7 )
	MisResultAction(SetRecord, 7 )
	MisResultAction(AddExp,5211,5211)	
	MisResultAction(AddMoney,1910,1910)	
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------З°Нщt9
	DefineMission( 303, " Возвращение ", 264 )

	MisBeginTalk( "<t>Девятая бухта существовала 10 лет назад. <n> <T> Эта было торговая бухта,охраняемая флотом <n> <T> Когда он был перестроен она была переименована в  <yБухту Айрис>.  <n> <T> Не многие люди помнят о Девятой бухте.Координаты  (2042, 635 ),в Магическом океане.Ищите Оператора Бани,он вам поможет!" )
	MisBeginCondition(NoRecord, 264)
	MisBeginCondition(HasRecord, 7)
	MisBeginCondition(NoMission, 264)
	MisBeginAction(AddMission, 264)
	MisCancelAction(ClearMission, 264)

	MisNeed(MIS_NEED_DESP, "Найдите бухту Айрис в Магическом океане (2042, 635)")

	MisHelpTalk("<t>Думаю для помощи вам потребуются друзья-моряки.")
	MisResultCondition(AlwaysFailure )

-----------------------------------З°Нщt9
	DefineMission( 304, " Возвращение ", 264, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Что? Вы ищете Девятую Бухту?! Ха-ха, ты стоишь на ней.")
	MisResultCondition(NoRecord, 264 )
	MisResultCondition(HasMission, 264)
	MisResultAction(ClearMission, 264 )
	MisResultAction(SetRecord, 264 )
	MisResultAction(AddExp,12572,12572)
	MisResultAction(AddMoney,3966,3966)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------З°Нщt9
	DefineMission( 305, " Что за Андрей? ", 265 )

	MisBeginTalk( "<t>Хм.Андрей?Бухта основана 10 лет назад , но я ниразу не слышал схожие имена. <n> <T> Мне кажется что пират Джереми знает,навестите его (2362, 657)" )
	MisBeginCondition(NoRecord, 265)
	MisBeginCondition(HasRecord, 264)
	MisBeginCondition(NoMission, 265)
	MisBeginAction(AddMission, 265)
	MisCancelAction(ClearMission, 265)

	MisNeed(MIS_NEED_DESP, "Найтиде пирата Джереми (2362, 657)")

	MisHelpTalk("<t>Думаю друзья-моряки смогут вам помочь!")
	MisResultCondition(AlwaysFailure )

-----------------------------------З°Нщt9
	DefineMission( 306, " Что за Андрей? ", 265, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Что за Андрей? Я не знаю! Никого не знаю,даже вас,оставьте меня в покое!!!")
	MisResultCondition(NoRecord, 265 )
	MisResultCondition(HasMission, 265)
	MisResultAction(ClearMission, 265 )
	MisResultAction(SetRecord, 265 )
	MisResultAction(AddExp,8292,8292)	
	MisResultAction(AddMoney,2097,2097)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------єЈѕь±р¶Ї¶У
	DefineMission( 307, " Флот! ", 266 )

	MisBeginTalk( "<t>Зачем вы меня побеспокоили? Ну ладно если вам нужна информация,то выполните для меня небольшую задачу <n> <T> Убейте 5 Морских стрелков,и тогда я помогу вам.")
	MisBeginCondition(NoRecord, 266)
	MisBeginCondition(HasRecord, 265)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 266)
	MisBeginAction(AddTrigger, 2661, TE_KILL, 667, 5)		
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 5 морских стрелков,и возвращайтесь к Джереми (2362, 657)")
	MisNeed(MIS_NEED_KILL, 667, 5, 10, 5)

	MisResultTalk("<t>Вы расправились с ними. Очень хорошо!")
	MisHelpTalk("<t>Что? Вы боитесь?")
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

-------------------------------------------------УЦјыЅЬїЛ
	DefineMission( 308, " Опять Джек ", 267 )

	MisBeginTalk( "<t>Вы помогли мне,я помогу вам. Андрей жил на этом острове очень давно.Его новое имя Джек <n> <T> Я думаю если вы посетити Остров Канарее вы найдете его." )
	MisBeginCondition(NoRecord, 267)
	MisBeginCondition(HasRecord, 266)
	MisBeginCondition(NoMission, 267)
	MisBeginAction(AddMission, 267)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите Джека на острове канареек (1672, 3777)")

	MisHelpTalk("<t>Посмотрите на меня,я хороший пират?")
	MisResultCondition(AlwaysFailure )

-----------------------------------УЦјыЅЬїЛ
	DefineMission( 309, " Опять Джек ", 267, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Так-так,ну вот мы встретились снова.Вы догадались что я и есть Джек? <n> <T> Я надеюсь, вы не кому больше не сказали?")
	MisResultCondition(NoRecord, 267 )
	MisResultCondition(HasMission, 267)
	MisResultAction(ClearMission, 267 )
	MisResultAction(SetRecord, 267 )
	MisResultAction(AddExp,13026,13026)
	MisResultAction(AddMoney,2303,2303)
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------ЙФєуФЩАґ
	DefineMission( 310, " Я вернулся! ", 268 )

	MisBeginTalk( "Хм....вернитесь в другое время,когда будет спокойнее." )
	MisBeginCondition(NoRecord, 268)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 268)
	MisBeginAction(AddMission, 268)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите капитана Джека (1672, 3777)")

	MisHelpTalk("Найдите капитана Джека (1672, 3777)")
	MisResultCondition(AlwaysFailure )


-----------------------------------ТэУХѕЮКЮ
	DefineMission( 311, " Бехамот ", 4, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я не могу поверить в это! Вам удалось убить Бехамота!")
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


-------------------------------------------------Ў°µчІйЎ±
	DefineMission( 312, " Расследование ", 269 )

	MisBeginTalk( "<t>Кто послал вас? Дейви? Джонс? Воробей? <n> <T> Забудьте об этом.У меня на корабле 8000 тысяч подчиненных,и я никак не могу запомнить их имена. Каждый из моих товарищей имеет <rЭмблему> . Почему бы вам не найти их?")
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
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_ITEM, 3790, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3791, 1, 11, 1)
	MisNeed(MIS_NEED_ITEM, 3792, 1, 12, 1)
	MisNeed(MIS_NEED_DESP, "Принесите Джеку Эмблемы его подчиненных..")


	MisResultTalk("<t>Эмблемы принадлежат моей команде? <n> <T> Подождите! Почему на одной из них кровь?")
	MisHelpTalk("<t>Так как это было? ")
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

-------------------------------------------------ВіµВ°ІµДТЕОп
	DefineMission( 313, " Записка Андрея ", 270 )

	MisBeginTalk( "<t> Как вы знаете,Андрей изменил свое имя на Дарвен <n> <T> Когда Андрей умер,мы разделили его вещи между собой,думаю его записка у кого то из пиратов.")
	MisBeginCondition(NoRecord, 270)
	MisBeginCondition(HasRecord, 269)
	MisBeginCondition(NoMission, 270)
	MisBeginAction(AddMission, 270)
	MisBeginAction(AddTrigger, 2701, TE_GETITEM, 4219, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найди записку Андрея")
	MisNeed(MIS_NEED_ITEM, 4219, 1, 10, 1)

	MisResultTalk("<t>Да, это <rЗаписка Андрея>")
	MisHelpTalk("<t>Не нашел записки? Продолжай искать до последнего!")
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


-----------------------------------єЈµБЦ®СЄ1
	DefineMission( 314, " Пираты ", 8, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ох. Думаю вам следует наведаться в Ледынь. <n> <T> Найдите Маса (1346, 451).Он даст вам несколько ответов. ")
	MisResultCondition(NoRecord, 8 )
	MisResultCondition(HasMission, 8)
	MisResultAction(ClearMission, 8 )
	MisResultAction(SetRecord, 8 )
	MisResultAction(ObligeAcceptMission, 11 )

-----------------------------------єЈѕьЦ®»к1
	DefineMission( 315, " Флот " , 9, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ох. Думаю вам следует наведаться в Аргент. <n> <T> Найдите генерала Увильяма (2277, 2831).Он даст вам несколько ответов.")
	MisResultCondition(NoRecord, 9 )
	MisResultCondition(HasMission, 9)
	MisResultAction(ClearMission, 9)
	MisResultAction(SetRecord, 9 )
	MisResultAction(ObligeAcceptMission, 12 )

-----------------------------------ОЮГыЦ®ИЛ1
	DefineMission( 316, " Одиночество ", 10, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ох. Думаю вам следует наведаться в Аргент. <n> <T> Найдите секретаря Сальвьера (2219, 2749).Он даст вам несколько ответов. ")
	MisResultCondition(NoRecord, 10 )
	MisResultCondition(HasMission, 10)
	MisResultAction(ClearMission, 10)
	MisResultAction(SetRecord, 10 )
	MisResultAction(ObligeAcceptMission, 13 )

-------------------------------------------------єЈµБЦ®СЄ2
	DefineMission( 317, " Пираты ", 271 )

	MisBeginTalk( "<t>Кровь пирата? Это было давно... . <n> <T> Убейте 30 морских стрелком (2389, 575).И я дам вам ключ.")
	MisBeginCondition(NoRecord, 271)
	MisBeginCondition(NoMission, 271)
	MisBeginCondition(HasMission, 11)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 11)
	MisBeginAction(SetRecord, 11)
	MisBeginAction(AddMission, 271)
	MisBeginAction(AddTrigger, 2711, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 30 <yМорских охотников> и возвращайтесь к Масу (1346, 451)")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>О вы спраивлись!")
	MisHelpTalk("<t>Что такое?Неужели Морские стрелки для вас такая проблема?")
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

-------------------------------------------------єЈѕьЦ®»к2
	DefineMission( 318, " Флот ", 272 )

	MisBeginTalk( "<tДуша Флота? Я не слышал об этом уже век! <n> <T> Если вы внесете свой вклад в размере <r2 миллиона>, я мог бы вам помочь!")
	MisBeginCondition(NoRecord, 272)
	MisBeginCondition(NoMission, 272)
	MisBeginCondition(HasMission, 12)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 12)
	MisBeginAction(SetRecord, 12)
	MisBeginAction(AddMission, 272)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Вручите <r2000000Голда> Генералу Увильяму (2277, 2831)")

	MisResultTalk("<t>Отлично.Получите ключ.")
	MisHelpTalk("<t>Вы еще не накопили 2 миллиона?")
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

-------------------------------------------------ОЮГыЦ®ИЛ3
	DefineMission( 319, " Одиночество ", 273 )

	MisBeginTalk( "<t>Одиночество? Сердце моряка? <n> <T> Позвольте мне посмотреть на него...Хм..Думаю вам нужно поплавать по морским просторам <p(77,3971)>")
	MisBeginCondition(NoRecord, 273)
	MisBeginCondition(NoMission, 273)
	MisBeginCondition(HasMission, 13)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 13)
	MisBeginAction(SetRecord, 13)
	MisBeginAction(AddMission, 273)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Плывыте по координатам в Аскароне (77, 3971)> затем используйте записку Андрея и позвращайтесь в Аргент к Секретарю.")

	MisResultTalk("<t>Так значит сердце омолодило ваш корабль?Похоже вы мужественны,получайте ключ.")
	MisHelpTalk("<t>Вам надо поплавать по окраинам Аргента (77, 3971).")
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

-------------------------------------------------ВіµВ°ІµДТЕОп
	DefineMission( 320, " Банк ледыни ", 274 )

	MisBeginTalk( "<t>хм... Подождите минутку. Позвольте мне проверить ... К сожалению, мы не можем помочь вам на данный момент! <n> <T> Согласно нашим правилам, вам придется получить подписи Великой четверки.")
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
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите Банкиру подписи великой Четверки.")
	MisNeed(MIS_NEED_ITEM, 4223, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4224, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 4225, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 4226, 1, 40, 1)

	MisResultTalk("<t>Вы приобрели подписи? Позвольте мне проверить, не подделана ли она.Хм...")
	MisHelpTalk("<t>Не беспокой меня, если у тебя нету подписи!")
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

-------------------------------------------------єЈµБµДЕуУС
	DefineMission( 321, " Друг от пиратов ", 275 )

	MisBeginTalk( "<t>Дорогой друг, герб на вашем плече, уже свидетельствуют о вашей личности. Мы не приветствуем любых из военно-морского флота.")
	MisBeginCondition(NoRecord, 275)
	MisBeginCondition(NoRecord, 276)
	MisBeginCondition(NoMission, 275)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasNavyGuild)
	MisBeginAction(AddMission, 275)
	MisBeginAction(AddTrigger, 2751, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убей те 30  <yМорских стрелков> и возвратитесь к <bМас\> ")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>Вы доказали вашу верность!Вот подпись.")
	MisHelpTalk("<t>Почему вы все еще здесь?")
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

-----------------------------------ОТІ»КЗєЈѕь
	DefineMission( 322, " Я не флотский! ", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы хотите мою подпись? Только если вы не из военно-морского флота!")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 275 )
	MisResultCondition(NoFlag, 274, 1 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoNavyGuild)
	MisResultAction(GiveItem, 4223, 1, 4)
	MisResultAction(SetFlag, 274, 1 )
	MisResultBagNeed(1)

-------------------------------------------------НСАл№ШПµ
	DefineMission( 323, " Свзяь ", 277 )

	MisBeginTalk( "<t>Вы хотите, мою подпись?Тогда вам придется убить других пиратов!")
	MisBeginCondition(NoRecord, 277)
	MisBeginCondition(NoRecord, 278 )
	MisBeginCondition(NoMission, 277)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasPirateGuild)
	MisBeginAction(AddMission, 277)
	MisBeginAction(AddTrigger, 2771, TE_KILL, 145, 10)
	MisBeginAction(AddTrigger, 2772, TE_KILL, 146, 10)
	MisBeginAction(AddTrigger, 2773, TE_KILL, 291, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте Пиратов Джека и вернитесь к Сальвьеру.")
	MisNeed(MIS_NEED_KILL, 145, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 146, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 291, 10, 30, 10)

	MisResultTalk("<t>Хорошо.Я вижу вы можете стать флотским.Вот моя подпись ")
	MisHelpTalk("<t>Бесполезно возвращаться...")
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

-----------------------------------ОТІ»КЗєЈµБ
	DefineMission( 324, " Я не пират! ", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы хотите моюю подпись?Получайте! ")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 277 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoFlag, 274, 2 )
	MisResultCondition(NoPirateGuild)
	MisResultAction(GiveItem, 4224, 1, 4)
	MisResultAction(SetFlag, 274, 2 )
	MisResultBagNeed(1)

-------------------------------------------------№В¶АµДХЅКї
	DefineMission( 325, " Одиночество ", 279 )

	MisBeginTalk( "<t>Будучи одиноким странником, вы должны быть храбрым и уметь справитсья со многими проблемами!Вы получите мою подпись если докажите вашу храбрость.")
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
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте:Моряка Пирата Джека 5 шт ,Воина Пирата Джека 5 шт,Рядового Пирата Джека 5 шт")
	MisNeed(MIS_NEED_KILL, 145, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 146, 5, 20, 5)
	MisNeed(MIS_NEED_KILL, 291, 5, 30, 5)
	MisNeed(MIS_NEED_KILL, 667, 5, 40, 5)

	MisResultTalk("<t>Так как вы выполнили мою просьбу, я дам вам подпись.")
	MisHelpTalk("<t>Идите , или все потеряете!")
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

-----------------------------------ЗїґуµДєу¶Ь
	DefineMission( 326, " Мощь ", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Поскольку вас поддерживает гильдия,я дам вам подпись!")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 279 )
	MisResultCondition(NoFlag, 274, 3 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(HasGuild)
	MisResultAction(GiveItem, 4225, 1, 4)
	MisResultAction(SetFlag, 274, 3 )
	MisResultBagNeed(1)

-------------------------------------------------ПґЛўЧп¶с
	DefineMission( 327, " Раскаяние ", 281 )

	MisBeginTalk( "<t>Очиститесь от грехов ваших. Когда это будет сделано, я дам мою подпись.")
	MisBeginCondition(NoRecord, 281)
	MisBeginCondition(NoMission, 281)
	MisBeginCondition(HasMission, 274)
	MisBeginAction(AddMission, 281)
	MisBeginAction(AddTrigger, 2811, TE_KILL, 620, 30)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте Русалку-Призрака и доложите Альбуде (898, 3640).")
	MisNeed(MIS_NEED_KILL, 620, 30, 10, 30)

	MisResultTalk("<t>Богиня благословит вас ")
	MisHelpTalk("<t>Богиня с вами!")
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

-----------------------------------ВіµВ°ІµДТЕКй
	DefineMission( 328, " Тайна ", 16, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Зачем вы вернулись? Мои ребята больше не тронут вас! Оставьте их в покое! <n> <T> Что?Вы получили доступ?Только подписи Великой Четверки смогут это позволить!Дайте проверить!")
	MisResultCondition(NoRecord, 16 )
	MisResultCondition(HasMission, 16)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 16)
	MisResultAction(SetRecord, 16 )

----------------------------ТЕКйµДГШГЬ
	DefineMission( 329, " Тайна ", 282 )
	
	MisBeginTalk( "<t>Ха-ха.Андрей всегда был странноватым. <n> <T> Думаю что тебе стоит поговорить с Малышом Даниелем (2193, 2730)" )
	MisBeginCondition(NoRecord, 282)
	MisBeginCondition(HasRecord, 16)
	MisBeginCondition(NoMission, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 282)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найди Малыша Даниеля (2193, 2730)")
	
	MisHelpTalk("<t>Найди Малыша Даниеля (2193, 2730)")
	MisResultCondition(AlwaysFailure )

-----------------------------------ТЕКйµДГШГЬ
	DefineMission( 330, " Тайна ", 282, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Позвольте мне посмотреть.Хммм,пахнет невидимыми чернилами. Я удивлет темо, что есть люди, которые знают, как сделать невидимые чернила.")
	MisResultCondition(NoRecord, 282 )
	MisResultCondition(HasMission, 282)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 282)
	MisResultAction(SetRecord, 282 )

----------------------------ЅЬїЛЅйЙЬ
	DefineMission( 331, " Приветствие Джека ", 283 )
	
	MisBeginTalk( "<t>Что?Вы сказали Джек?О-ооо как же я хочу забыть об этом!Держить подальше от меня.Я не хочу вас видеть!" )
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 283)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Сходите по координатам (1672,3777) и распросите Джека ")
	
	MisHelpTalk("<t>Почему вы все еще здесь?")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ѕЖ№Эґ«ОЕ
	DefineMission( 332, " Слухи ", 284 )

	MisBeginTalk( "<t>Так что вы слышали о баре?<n> <T> Забудьте об этом!Прошу.За это я дам вам хороший рецепт противоядия. Вы должны найти эти ингредиенты. <n> <T>  3 <rХвоста Выползня>, 5 <rСердце Кровожадной Медузы>, 7 <rОпасные Акульи Хрящи> и 9 <rСпинные плавник Топазового Дельфина>.")
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
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Получить противоядие ")
	MisNeed(MIS_NEED_ITEM, 1255, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 1291, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 1365, 7, 30, 7)
	MisNeed(MIS_NEED_ITEM, 1292, 9, 40, 9)

	MisResultTalk("<t>Ладно. Я позволю вам увидеть,что написано невидимыми чернилами. Hммм-это он. Не вините меня, если что пойдет не так..")
	MisHelpTalk("<t>Вы не нашли ингредиенты!")
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

----------------------------ёРЗйѕА·Ч
	DefineMission( 333, " Запутанная Любовь ", 285 )
	
	MisBeginTalk( "<t>О боже мой (омг)! Вы просто напросто проигнорировали мое предупреждение!Я же просил вас не упоминать мое имя! <n> <T>Думаю вам следует найти Барменшу Донну (2224, 2887)!Она сможет вам помочь." )
	MisBeginCondition(NoRecord, 285)
	MisBeginCondition(HasMission, 283)
	MisBeginCondition(NoMission, 285)
	MisBeginAction(AddMission, 285)
	MisBeginAction(SetRecord, 283)
	MisBeginAction(ClearMission, 283)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите Барменшу Донну (2224, 2887)")
	
	MisHelpTalk("<t>Не задерживаться !")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ёРЗйѕА·Ч
	DefineMission( 334, " Запутанная Любовь ", 286 )

	MisBeginTalk( "<t>Что? Маленький Даниель все еще сердиться на Джека?Они поссорились из-за меня. <n> <T> Это все моя вина. Позвольте мне уладить их отношения!Я слышала что Даниель проводит исследования по тыквам.Принесите мне Голову Ужасного Рыцаря Тыквы.")
	MisBeginCondition(NoRecord, 286)
	MisBeginCondition(NoMission, 286)
	MisBeginCondition(HasRecord, 283)
	MisBeginCondition(HasMission, 285)
	MisBeginAction(AddMission, 286)
	MisBeginAction(AddTrigger, 2861, TE_GETITEM, 4735, 1)
	MisBeginAction(SetRecord, 285)
	MisBeginAction(ClearMission, 285)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите Донне Голову Ужасного Рыцаря Тыквы (2224, 2887)")
	MisNeed(MIS_NEED_ITEM, 4735, 1, 10, 1)

	MisResultTalk("<t>Хе-хе!Голова является прекрасным ингредеентом для исследований! Я уверена, что Даниель хотел этого.Думаю моя подпись на этой голове поможет тебе..")
	MisHelpTalk("<t>Вы так и не смогли заполучить голову тыквы?")
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

-----------------------------------ёРЗйѕА·Ч
	DefineMission( 335, " Запутанная Любовь ", 17, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Что такое, что вы держите?Это же голова тыквы с подпиью Донны! Можете ли вы дать мне ее?")
	MisResultCondition(NoRecord, 17 )
	MisResultCondition(HasMission, 17 )
	MisResultCondition(HasItem, 4229, 1)
	MisResultAction(TakeItem, 4229, 1 )
	MisResultAction(SetRecord, 17 )
	MisResultAction(ClearMission, 17 )
	MisResultAction(GiveItem, 4228, 1, 4 )
	MisResultBagNeed(1)

-------------------------------------------------єЈµБУпСФ
	DefineMission( 336, " Язык пиратов ", 287 )

	MisBeginTalk( "<t>А-а-а вы нашли древний стих? Никто не верит в эту легенду , но если вы настаиваете я скажу вам об этом. По легенде, красивая русалка защищает сокровища.Согласно легенде, если пролить кровь на скелет,то мы увидем те самые сокровища!")
	MisBeginCondition(NoRecord, 287)
	MisBeginCondition(NoRecord, 18)
	MisBeginCondition(HasMission, 18)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(TakeItem, 4227, 1)
	MisBeginAction(AddMission, 287)
	MisBeginAction(AddTrigger, 2871, TE_GETITEM, 4230, 1)
	MisBeginAction(SetRecord, 18)
	MisBeginAction(ClearMission, 18)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте Королеву русалок  (2822, 1970) и отнесите <rТело русалки>.")
	MisNeed(MIS_NEED_ITEM, 4230, 1, 10, 1)

	MisResultTalk("<t>Я знал,что вы справитесь!")
	MisHelpTalk("<t>Вы еще не нашли Королеву Русалок?Желаю удачи в поисках!")
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

-----------------------------------ГФµДИХјЗ
	DefineMission( 337, " Мистический Дневник ", 20, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ах! Почему ты здесь еще?  К сожалению  я не буду переводить эти сложные письмена.  <n> <T> Пожалуй, только последователи Богини смогут это сделать.")
	MisResultCondition(NoRecord, 20 )
	MisResultCondition(HasMission, 20 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 20 )
	MisResultAction(ClearMission, 20 )
	
----------------------------Е®ЙсµДЧ·ЛжХЯ
	DefineMission( 338, " Последователи Богини ", 288 )
	
	MisBeginTalk( "<t>Из всех последователей Богини, наиболее знаменитым считается Альбуда!" )
	MisBeginCondition(NoRecord, 288)
	MisBeginCondition(HasRecord, 20)
	MisBeginCondition(NoMission, 288)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 288)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите <bАульбуду>в Шатане по координатам (898, 3640)")
	
	MisHelpTalk("<t>Я полагаю, что уже сказал вам все ,что вы хотели.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Е®ЙсµДЧ·ЛжХЯ
	DefineMission( 339, " Последователи Богини ", 288, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Быстро уберите от меня этот дневник!На нем печать демонов! <n> <T> Я пологаю, что помимо <bЖрици Ады> по координатам (862, 3303), никто не будет озабочены таким дьявольски письменами!")
	MisResultCondition(NoRecord, 288)
	MisResultCondition(HasMission, 288 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 288 )
	MisResultAction(ClearMission, 288 )

----------------------------КҐЕ®
	DefineMission( 340, " Святая Жрица ", 289 )
	
	MisBeginTalk( "<t>Я должен предупредить вас не участвовать в любых обрядах <bЖрицы Ады> " )
	MisBeginCondition(NoRecord, 289)
	MisBeginCondition(HasRecord, 288)
	MisBeginCondition(NoMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 289)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите Жрицу Аду (862,3303)")
	
	MisHelpTalk("<t>Я говорю еще раз! Не ищите Аду!")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------тЇіПµДЦ¤Гч
	DefineMission( 341, " Завет ", 290 )

	MisBeginTalk( "<t>Альбуда приостановил все исследования, связанные с языком такого рода. <n> <T> . Я могу перевести содержимое для вас, но вы должны доказать вашу лояльность к Богине. <n> <T> Что касается доказательств, вам нужно поговорить с  <bГеньоном> по координатам(862, 3500), уж он то знает что делать.")
	MisBeginCondition(NoRecord, 290)
	MisBeginCondition(HasMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 290)
	MisBeginAction(AddTrigger, 2901, TE_GETITEM, 3954, 1)
	MisBeginAction(SetRecord, 289)
	MisBeginAction(ClearMission, 289)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Найдите Геньона (862, 3500)")
	MisNeed(MIS_NEED_ITEM, 3954, 1, 15, 1)

	MisResultTalk("<t>Я утверждаю вашу лояльность!.")
	MisHelpTalk("<t>Вы до сих пор сомневаетесь в себе?")
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


-----------------------------------тЇіПµДЦ¤Гч
	DefineMission( 342, " Завет ", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ваши сокровенные чувства, уже доказывает вашу лояльность к богине. Воспользуйтесь этой праведной частью документа в качестве доказательства!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 5)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------тЇіПµДЦ¤Гч
	DefineMission( 343, " Завет ", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ваши сокровенные чувства, уже доказывает вашу лояльность к богине. Воспользуйтесь этой праведной частью документа в качестве доказательства!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 13)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------тЇіПµДЦ¤Гч
	DefineMission( 344, " Завет ", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ваши сокровенные чувства, уже доказывает вашу лояльность к богине. Воспользуйтесь этой праведной частью документа в качестве доказательства!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------тЇіПµДЦ¤Гч
	DefineMission( 345, " Завет ", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Независимо от того, какой вы рассы, вы дите Богини, и она однажды сказала мне, что вы в конечном итоге придете ко.Богиня придумала для вас 10 тестов. <n> <T> Вернись ко мне, когда вы будете готовы!Но назпомните пути назад уже не будет...")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoFlag, 290, 1)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetFlag, 290, 1 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 346, " Тест Богини ", 291 )

	MisBeginTalk( "<t>Вы готовы? Мы собираемся начать первый тест! Мы увидем, насколько вы хороши  против этих <yМумий> по координатам (440, 1440). ")
	MisBeginCondition(NoRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginCondition(HasFlag, 290, 1)
	MisBeginAction(AddMission, 291)
	MisBeginAction(AddTrigger, 2911, TE_KILL, 42, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Первый тест ")
	MisNeed(MIS_NEED_KILL, 42, 10, 10, 10)

	MisResultTalk("<t>Отлично!Вы прошли первый тест Богини!")
	MisHelpTalk("<t>Богиня с вами!")
	MisResultCondition(HasMission, 291 )
	MisResultCondition(HasFlag, 291, 19)
	MisResultAction(SetRecord, 291 )
	MisResultAction(ClearMission, 291 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )
	TriggerAction( 1, AddNextFlag, 291, 10, 10 )
	RegCurTrigger( 2911 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 347, " Тест Богини ", 292 )

	MisBeginTalk( "<t>Далее вам надо убить Неупокоенный Воин 10шт ( 511,1721)")
	MisBeginCondition(NoRecord, 292)
	MisBeginCondition(HasRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 292)
	MisBeginAction(AddTrigger, 2921, TE_KILL, 267, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Второй тест ")
	MisNeed(MIS_NEED_KILL, 267, 10, 10, 10)

	MisResultTalk("<t>Отлично!Вы прошли второй тест Богини!")
	MisHelpTalk("<t>Богиня с вами!")
	MisResultCondition(HasMission, 292 )
	MisResultCondition(HasFlag, 292, 19)
	MisResultAction(SetRecord, 292 )
	MisResultAction(ClearMission, 292 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 267 )
	TriggerAction( 1, AddNextFlag, 292, 10, 10 )
	RegCurTrigger( 2921 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 348, " Тест Богини ", 293 )

	MisBeginTalk( "<t>TДалее вам надо убитьСмертоносный Скелет-Лучник 10шт (919,1581)")
	MisBeginCondition(NoRecord, 293)
	MisBeginCondition(HasRecord, 292)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 293)
	MisBeginAction(AddTrigger, 2931, TE_KILL, 541, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Третий Тест ")
	MisNeed(MIS_NEED_KILL, 541, 10, 10, 10)

	MisResultTalk("<t>Великолепно!Вы прошли третий тест Богини!.")
	MisHelpTalk("<t>Богиня с вами!")
	MisResultCondition(HasMission, 293 )
	MisResultCondition(HasFlag, 293, 19)
	MisResultAction(SetRecord, 293 )
	MisResultAction(ClearMission, 293 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )
	TriggerAction( 1, AddNextFlag, 293, 10, 10 )
	RegCurTrigger( 2931 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 349, " Тест Богини ", 294 )

	MisBeginTalk( "<t>Вам нужно убитьПредводитель Скелетов-Воинов 10шт (360,1440).")
	MisBeginCondition(NoRecord, 294)
	MisBeginCondition(HasRecord, 293)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 294)
	MisBeginAction(AddTrigger, 2941, TE_KILL, 565, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Четвертый тест ")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)

	MisResultTalk("<t>Великолепно!Вы прошли четвертый тест Богини!")
	MisHelpTalk("<t>Богиня с вами!")
	MisResultCondition(HasMission, 294 )
	MisResultCondition(HasFlag, 294, 19)
	MisResultAction(SetRecord, 294 )
	MisResultAction(ClearMission, 294 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )
	TriggerAction( 1, AddNextFlag, 294, 10, 10 )
	RegCurTrigger( 2941 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 350, " Тест Богини ", 295 )

	MisBeginTalk( "<t>Вам нужно убить Проклятое Тело 10шт (360,1440)")
	MisBeginCondition(NoRecord, 295)
	MisBeginCondition(HasRecord, 294)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 295)
	MisBeginAction(AddTrigger, 2951, TE_KILL, 52, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Пятый тест ")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisResultTalk("<t>Великолепно!Вы прошли пятый тест Богини!")
	MisHelpTalk("<t>Богиня с вами!")
	MisResultCondition(HasMission, 295 )
	MisResultCondition(HasFlag, 295, 19)
	MisResultAction(SetRecord, 295 )
	MisResultAction(ClearMission, 295 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )
	TriggerAction( 1, AddNextFlag, 295, 10, 10 )
	RegCurTrigger( 2951 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 351, " Тест Богини ", 296 )

	MisBeginTalk( "<t>Вам нужно убить Кровожадный Охотник 10 шт (360,1340).")
	MisBeginCondition(NoRecord, 296)
	MisBeginCondition(HasRecord, 295)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 296)
	MisBeginAction(AddTrigger, 2961, TE_KILL, 666, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Шестой тест ")
	MisNeed(MIS_NEED_KILL, 666, 10, 10, 10)

	MisResultTalk("<t>Великолепно!Вы прошли шестой тест Богини!")
	MisHelpTalk("<t>Богиня с вами!")
	MisResultCondition(HasMission, 296 )
	MisResultCondition(HasFlag, 296, 19)
	MisResultAction(SetRecord, 296 )
	MisResultAction(ClearMission, 296 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )
	TriggerAction( 1, AddNextFlag, 296, 10, 10 )
	RegCurTrigger( 2961 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 352, " Тест Богини ", 297 )

	MisBeginTalk( "<t>Вам нужно убить Кошмарное Проклятое Тело 10шт (360,1340).")
	MisBeginCondition(NoRecord, 297)
	MisBeginCondition(HasRecord, 296)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 297)
	MisBeginAction(AddTrigger, 2971, TE_KILL, 508, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Седьмой тест ")
	MisNeed(MIS_NEED_KILL, 508, 10, 10, 10)

	MisResultTalk("<t>Великолепно!Вы прошли седьмой тест Богини!")
	MisHelpTalk("<t>Богиня с вами!")
	MisResultCondition(HasMission, 297 )
	MisResultCondition(HasFlag, 297, 19)
	MisResultAction(SetRecord, 297 )
	MisResultAction(ClearMission, 297 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 508 )
	TriggerAction( 1, AddNextFlag, 297, 10, 10 )
	RegCurTrigger( 2971 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 353, " Тест Богини ", 298 )

	MisBeginTalk( "<t>Вам нужно убить Ужасный Рыцарь Тыквы 10шт ( 579,2962).")
	MisBeginCondition(NoRecord, 298)
	MisBeginCondition(HasRecord, 297)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 298)
	MisBeginAction(AddTrigger, 2981, TE_KILL, 518, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Восьмой тест ")
	MisNeed(MIS_NEED_KILL, 518, 10, 10, 10)

	MisResultTalk("<t>Великолепно!Вы прошли восьмой тест Богини!")
	MisHelpTalk("<t>Богиня с вами!")
	MisResultCondition(HasMission, 298 )
	MisResultCondition(HasFlag, 298, 19)
	MisResultAction(SetRecord, 298 )
	MisResultAction(ClearMission, 298 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 518 )
	TriggerAction( 1, AddNextFlag, 298, 10, 10 )
	RegCurTrigger( 2981 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 354, " Тест Богини ", 299 )

	MisBeginTalk( "<t>Вам нужно убить Зловещий Энт 10шт (662,2460)")
	MisBeginCondition(NoRecord, 299)
	MisBeginCondition(HasRecord, 298)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 299)
	MisBeginAction(AddTrigger, 2991, TE_KILL, 547, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Девятый тест ")
	MisNeed(MIS_NEED_KILL, 547, 10, 10, 10)

	MisResultTalk("<t>Великолепно!Вы прошли девятый тест Богини!")
	MisHelpTalk("<t>Богиня с вами!")
	MisResultCondition(HasMission, 299 )
	MisResultCondition(HasFlag, 299, 19)
	MisResultAction(SetRecord, 299 )
	MisResultAction(ClearMission, 299 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 547 )
	TriggerAction( 1, AddNextFlag, 299, 10, 10 )
	RegCurTrigger( 2991 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 355, " Тест Богини ", 300 )

	MisBeginTalk( "<t>Вам нужно убить одного Анубиса!")
	MisBeginCondition(NoRecord, 300)
	MisBeginCondition(HasRecord, 299)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 300)
	MisBeginAction(AddTrigger, 3001, TE_KILL, 190, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Десятый тест")
	MisNeed(MIS_NEED_KILL, 190, 1, 10, 1)

	MisResultTalk("<t>Великолепно!Вы прошли десятый тест Богини!")
	MisHelpTalk("<t>Богиня с вами!")
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


-----------------------------------ЙсГШРЎХт
	DefineMission( 356, " Загадочный Город ", 21, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Хм,вы хотите найти загадочный город? <n> <T> Думаю вам поможет пьяница Энтони (2222, 2889).")
	MisResultCondition(NoRecord, 21)
	MisResultCondition(HasMission, 21 )
	MisResultAction(SetRecord, 21 )
	MisResultAction(ClearMission, 21 )

----------------------------ґє·зРЎХт
	DefineMission( 357, " Город Весны ", 301 )
	
	MisBeginTalk( "<t>Хотя пьяница и побывал во многих местах,не верьте всем его словам. " )
	MisBeginCondition(NoRecord, 301)
	MisBeginCondition(HasRecord, 21)
	MisBeginCondition(NoMission, 301)
	MisBeginAction(AddMission, 301)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите пьяницу Антони (2222,2889)")
	
	MisHelpTalk("<t>В последний раз его видели в баре Донны ")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------Г°ПХѕ«Йс
	DefineMission( 358, " Улучшение духа ", 302 )

	MisBeginTalk( "<t>Город вечной Весны!Откуда вы узнали о нем?  Я никогда никому ничего не расскажу о городе Весны! . <n> <T>Вы еще слишком молоды для такого путешествия ")
	MisBeginCondition(NoRecord, 302)
	MisBeginCondition(HasMission, 301)
	MisBeginCondition(HasItem, 4232, 1)
	MisBeginAction(AddMission, 302)
	MisBeginAction(SetRecord, 301)
	MisBeginAction(ClearMission, 301)
	MisBeginAction(AddTrigger, 3021, TE_GETITEM, 3962, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Найдите Малыша Даниеля,а затем вернитесь к Пьянице Антони.")
	MisNeed(MIS_NEED_ITEM, 3962, 1, 10, 1)

	MisResultTalk("<t>Вы показали свою силу духа. <n> <T> Но думаю тебе следует навестить бабушку Белди,все слухи о гроде Весны пошли от нее!.")
	MisHelpTalk("<t>Не беспокой меня...")
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

-----------------------------------Г°ПХѕ«Йс
	DefineMission( 359, " Улучшение духа ", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>IО-о-о я не видела вас очень долгое время!Вы пришли что бы доказать свою силу духа?!")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 4)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------Г°ПХѕ«Йс
	DefineMission( 360, " Улучшение духа ", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>IО-о-о я не видела вас очень долгое время!Вы пришли что бы доказать свою силу духа?!")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 16)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------Г°ПХѕ«Йс
	DefineMission( 361, " Улучшение духа ", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Что? Вы хотели бы иметь доказательства?Это очень опасно,если вы готовы взять на себя риск то дайте мне знать.")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoFlag, 302, 5)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(SetFlag, 302, 5 )

-------------------------------------------------Г°ПХїјСй
	DefineMission( 362, " Испытание ", 303 )

	MisBeginTalk( "<t>Хм,думаю вам пора заточить оружие  и подготовить корабль!<n> <T> Ваше первое задание это - уничтожить Фрегат еСакура 13е  10 шт")
	MisBeginCondition(NoRecord, 303)
	MisBeginCondition(HasFlag, 302, 5)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 303)
	MisBeginAction(AddTrigger, 3031, TE_KILL, 574, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Первое испытание ")
	MisNeed(MIS_NEED_KILL, 574, 10, 10, 10)

	MisResultTalk("<t>Молодец!Приступим к следующей задаче.")
	MisHelpTalk("<t>Это непростая задача,верно?")
	MisResultCondition(HasMission, 303 )
	MisResultCondition(HasFlag, 303, 19)
	MisResultAction(SetRecord, 303 )
	MisResultAction(ClearMission, 303 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 574 )
	TriggerAction( 1, AddNextFlag, 303, 10, 10 )
	RegCurTrigger( 3031 )

-------------------------------------------------Г°ПХїјСй
	DefineMission( 363, " Испытание ", 304 )

	MisBeginTalk( "<t>Ваше второе задание это - уничтожить Выползень-Вампир 10 шт.")
	MisBeginCondition(NoRecord, 304)
	MisBeginCondition(HasRecord, 303)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 304)
	MisBeginAction(AddTrigger, 3041, TE_KILL, 638, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Второе испытание ")
	MisNeed(MIS_NEED_KILL, 638, 10, 10, 10)

	MisResultTalk("<t>Молодец!Приступим к следующей задаче.")
	MisHelpTalk("<t>Это непростая задача,верно?")
	MisResultCondition(HasMission, 304 )
	MisResultCondition(HasFlag, 304, 19)
	MisResultAction(SetRecord, 304 )
	MisResultAction(ClearMission, 304 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 638 )
	TriggerAction( 1, AddNextFlag, 304, 10, 10 )
	RegCurTrigger( 3041 )



-------------------------------------------------Г°ПХїјСй
	DefineMission( 364, " Испытание ", 305 )

	MisBeginTalk( "<t>Ваше третье задание это - уничтожить Кровожадная Медуза  10 шт")
	MisBeginCondition(NoRecord, 305)
	MisBeginCondition(HasRecord, 304)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 305)
	MisBeginAction(AddTrigger, 3051, TE_KILL, 583, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Третье испытание ")
	MisNeed(MIS_NEED_KILL, 583, 10, 10, 10)

	MisResultTalk("<t>Молодец!Приступим к следующей задаче.")
	MisHelpTalk("<t>Это непростая задача,верно?")
	MisResultCondition(HasMission, 305 )
	MisResultCondition(HasFlag, 305, 19)
	MisResultAction(SetRecord, 305 )
	MisResultAction(ClearMission, 305 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 583 )
	TriggerAction( 1, AddNextFlag, 305, 10, 10 )
	RegCurTrigger( 3051 )

-------------------------------------------------Г°ПХїјСй
	DefineMission( 365, " Испытание ", 306 )

	MisBeginTalk( "<t>Ваше четвертое задание это - уничтожить Шелковистая Акула 10 шт")
	MisBeginCondition(NoRecord, 306)
	MisBeginCondition(HasRecord, 305)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 306)
	MisBeginAction(AddTrigger, 3061, TE_KILL, 660, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Четвертое испытание ")
	MisNeed(MIS_NEED_KILL, 660, 10, 10, 10)

	MisResultTalk("<t>Молодец!Приступим к следующей задаче.")
	MisHelpTalk("<t>Это непростая задача,верно?")
	MisResultCondition(HasMission, 306 )
	MisResultCondition(HasFlag, 306, 19)
	MisResultAction(SetRecord, 306 )
	MisResultAction(ClearMission, 306 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 660 )
	TriggerAction( 1, AddNextFlag, 306, 10, 10 )
	RegCurTrigger( 3061 )




-------------------------------------------------Г°ПХїјСй
	DefineMission( 366, " Испытание ", 307 )

	MisBeginTalk( "<t>Ваше пятое задание задание это - уничтожить Топазовый Дельфин 10 шт.")
	MisBeginCondition(NoRecord, 307)
	MisBeginCondition(HasRecord, 306)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 307)
	MisBeginAction(AddTrigger, 3071, TE_KILL, 584, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Пятое испытание ")
	MisNeed(MIS_NEED_KILL, 584, 10, 10, 10)

	MisResultTalk("<t>Молодец!Приступим к следующей задаче.")
	MisHelpTalk("<t>Это непростая задача,верно?")
	MisResultCondition(HasMission, 307 )
	MisResultCondition(HasFlag, 307, 19)
	MisResultAction(SetRecord, 307 )
	MisResultAction(ClearMission, 307 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 584 )
	TriggerAction( 1, AddNextFlag, 307, 10, 10 )
	RegCurTrigger( 3071 )

-------------------------------------------------Г°ПХїјСй
	DefineMission( 367, " Испытание ", 308 )

	MisBeginTalk( "<t>Ваше шестое задание задание это - уничтожить Буйная Медуза 10 шт.")
	MisBeginCondition(NoRecord, 308)
	MisBeginCondition(HasRecord, 307)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 308)
	MisBeginAction(AddTrigger, 3081, TE_KILL, 603, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Шестое испытание ")
	MisNeed(MIS_NEED_KILL, 603, 10, 10, 10)

	MisResultTalk("<t>Молодец!Приступим к следующей задаче.")
	MisHelpTalk("<t>Это непростая задача,верно?")
	MisResultCondition(HasMission, 308 )
	MisResultCondition(HasFlag, 308, 19)
	MisResultAction(SetRecord, 308 )
	MisResultAction(ClearMission, 308 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 603 )
	TriggerAction( 1, AddNextFlag, 308, 10, 10 )
	RegCurTrigger( 3081 )


-------------------------------------------------Г°ПХїјСй
	DefineMission( 368, " Испытание ", 309 )

	MisBeginTalk( "<t>Ваше седьмое задание задание это - уничтожить Матерый Рубиновый Дельфин 10 шт.")
	MisBeginCondition(NoRecord, 309)
	MisBeginCondition(HasRecord, 308)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 309)
	MisBeginAction(AddTrigger, 3091, TE_KILL, 622, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Седьмое испытание ")
	MisNeed(MIS_NEED_KILL, 622, 10, 10, 10)

	MisResultTalk("<t>Молодец!Приступим к следующей задаче.")
	MisHelpTalk("<t>Это непростая задача,верно?")
	MisResultCondition(HasMission, 309 )
	MisResultCondition(HasFlag, 309, 19)
	MisResultAction(SetRecord, 309 )
	MisResultAction(ClearMission, 309 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 622 )
	TriggerAction( 1, AddNextFlag, 309, 10, 10 )
	RegCurTrigger( 3091 )




-------------------------------------------------Г°ПХїјСй
	DefineMission( 369, " Испытание ", 310 )

	MisBeginTalk( "<t>Ваше восьмое задание задание это - уничтожить Флагман еСакуры 13е 10 шт.")
	MisBeginCondition(NoRecord, 310)
	MisBeginCondition(HasRecord, 309)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 310)
	MisBeginAction(AddTrigger, 3101, TE_KILL, 650, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Восьмое испытание ")
	MisNeed(MIS_NEED_KILL, 650, 10, 10, 10)

	MisResultTalk("<t>Молодец!Приступим к следующей задаче.")
	MisHelpTalk("<t>Это непростая задача,верно?")
	MisResultCondition(HasMission, 310 )
	MisResultCondition(HasFlag, 310, 19)
	MisResultAction(SetRecord, 310 )
	MisResultAction(ClearMission, 310 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 650 )
	TriggerAction( 1, AddNextFlag, 310, 10, 10 )
	RegCurTrigger( 3101 )


-------------------------------------------------Г°ПХїјСй
	DefineMission( 370, " Испытание ", 311 )

	MisBeginTalk( "<t>Ваше девятое задание задание это - уничтожить Колючая Рыба-Кость 10 шт.")
	MisBeginCondition(NoRecord, 311)
	MisBeginCondition(HasRecord, 310)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 311)
	MisBeginAction(AddTrigger, 3111, TE_KILL, 585, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Девятое испытание ")
	MisNeed(MIS_NEED_KILL, 585, 10, 10, 10)

	MisResultTalk("<t>Молодец!Приступим к следующей задаче.")
	MisHelpTalk("<t>Это непростая задача,верно?")
	MisResultCondition(HasMission, 311 )
	MisResultCondition(HasFlag, 311, 19)
	MisResultAction(SetRecord, 311 )
	MisResultAction(ClearMission, 311 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 585 )
	TriggerAction( 1, AddNextFlag, 311, 10, 10 )
	RegCurTrigger( 3111 )

-------------------------------------------------Г°ПХїјСй
	DefineMission( 371, " Испытание ", 312 )

	MisBeginTalk( "<t>Ваше десятое задание задание это - уничтожить Корабль Поддержки Северных Пиратов 10 шт.")
	MisBeginCondition(NoRecord, 312)
	MisBeginCondition(HasRecord, 311)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 312)
	MisBeginAction(AddTrigger, 3121, TE_KILL, 611, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, " Десятое испытание ")
	MisNeed(MIS_NEED_KILL, 611, 10, 10, 10)

	MisResultTalk("<t>Молодец!Ты прошел все испытания!Получай компас.")
	MisHelpTalk("<t>Это непростая задача,верно?")
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

----------------------------±ґµЩ
	DefineMission( 372, " Белди ", 313 )
	
	MisBeginTalk( "<t>Думаю вам пора наведаться к <bБабушке Белде>.Она хочет вам что то рассказать!" )
	MisBeginCondition(NoRecord, 313)
	MisBeginCondition(HasRecord, 302)
	MisBeginCondition(NoMission, 313)
	MisBeginAction(AddMission, 313)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Сходи к  <bБабушке Белди> (2277, 2769)")
	
	MisHelpTalk("<t>Сходи к  <bБабушке Белди> (2277, 2769)")
	MisResultCondition(AlwaysFailure )


----------------------------±ґµЩ
	DefineMission( 373, " Белди ", 313, COMPLETE_SHOW )

	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Что ты сказал? Город Весны? Ах...Это чудесный город! Когда то давно,я рассказывала людям о нем,но большинство просто не верили. А сейчас ты стоишь передо мной и спрашиваешь о нем?")
	MisResultCondition(NoRecord, 313)
	MisResultCondition(HasMission, 313)
	MisResultAction(SetRecord, 313 )
	MisResultAction(ClearMission, 313 )

-----------------------------------јТПз
	DefineMission( 374, "Hometown", 315 )

	MisBeginTalk( "<t>Когда то давно , моя семья жила в городе Весны.Однажды мы плавали по океану,и нас настигла большая волна.Хотя меня спас матрос,но я потеряла контакт с семьей.Я была еще ребенком и меня отдали на воспитание в город Аргент.Когда я выросла я решила поехать туда и узнать что же случилось,но никто не отважился ехать со мной. Шли годы,я старела.Сейчас я слишком стара для плавания,но возможно вы могли бы мне помочь.Если вы принесете мне одну вещь из Ледыни,я сообщу вам о том где находится город Весны.")
	MisBeginCondition(NoRecord, 315)
	MisBeginCondition(HasRecord, 313)
	MisBeginCondition(NoMission, 315)
	MisBeginAction(AddMission, 315)
	MisBeginAction(AddTrigger, 3151, TE_GETITEM, 4235, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Пройдитесь по банкам Ледыни и Громограда,думаю там вы найдете серьги бабушки.")
	MisNeed(MIS_NEED_ITEM, 4235, 1, 1, 1)

	MisResultTalk("<t>Я знала,что вы найдете мои серьге. <n> <T> Если я правельно помню то остров Весны находится в архипелаге Великого синего океана.Когда вы увидете остров в форме якоря , знайте вы на правельном пути.")
	MisHelpTalk("<t>Думаю вам надо посетить банк Громограда!")
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


-----------------------------------±ґµЩµД¶ъ»·
	DefineMission( 375, " Серьги Белди ", 316 )

	MisBeginTalk( "<t>Белди рассказала мне о вас. Я думаю что смогу вам помочь если вы убьете 100 Огромных Полярных Медведей.Эти существа обитают в основном Ледынь 3101,666.")
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
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте Огромных Полярных медведей ")
	MisNeed(MIS_NEED_KILL, 504, 100, 1, 100)

	MisResultTalk("<t>Ха-ха.Вы вернулись!Да еще и с положительным результатом!Думаю я смогу вам помочь.")
	MisHelpTalk("<t>Убейте 100 Огромных полярных медведей.")
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


-------------------------------------------------јТПз
	DefineMission( 376, " Дом ", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Бабушка Белди сазала мне,что вы пережили. После стольких лет, нашелся тот кто способен ей помочь!Шрамы на вашем теле показывают вашу смелость.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 10)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 1)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 10 )
	MisResultBagNeed(1)

-------------------------------------------------јТПз
	DefineMission( 377, " Дом ", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Бабушка Белди сазала мне,что вы пережили. После стольких лет, нашелся тот кто способен ей помочь!Шрамы на вашем теле показывают вашу смелость.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 20)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 8)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 20 )
	MisResultBagNeed(1)

-------------------------------------------------јТПз
	DefineMission( 560, " Дом ", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Бабушка Белди сазала мне,что вы пережили. После стольких лет, нашелся тот кто способен ей помочь!Шрамы на вашем теле показывают вашу смелость.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 30)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 9)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 30 )
	MisResultBagNeed(1)

-------------------------------------------------јТПз
	DefineMission( 561, " Дом ", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Бабушка Белди сазала мне,что вы пережили. После стольких лет, нашелся тот кто способен ей помочь!Шрамы на вашем теле показывают вашу смелость.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 40)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 2)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 40 )
	MisResultBagNeed(1)

-------------------------------------------------јТПз
	DefineMission( 562, " Дом ", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Бабушка Белди сазала мне,что вы пережили. После стольких лет, нашелся тот кто способен ей помочь!Шрамы на вашем теле показывают вашу смелость.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 50)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 12)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 50 )
	MisResultBagNeed(1)



-----------------------------------№ЕАПµДРШХл
	DefineMission( 378, " Древняя Брошь ", 317 )

	MisBeginTalk( "<t>Старинная брошь?Да у меня есть одна такая,мой друг нашел ее когда гулял по пляжу <n> <T> Что? Вы хотите ее купить? Ни за что!.Есит люди которые предлагали 50 тысяч золотых,но я не продала! Что? Вы хотите предложить 10000 тысяч золотых? Нет,это является символом любви между мной и моим другом.Сколько бы вы мне не предложили,я не продам брошь. 50000 тысяч золотых? Хм ... Позвольте подумать.Я продам вам брошь за 1кк золотых и не серебряной меньше!(Вот барыга :O)")
	MisBeginCondition(NoRecord, 317)
	MisBeginCondition(HasRecord, 316)
	MisBeginCondition(HasItem, 4235, 1)
	MisBeginCondition(NoMission, 317)
	MisBeginAction(AddMission, 317)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Купить Брошь у Моны за 1кк ")
	
	MisResultTalk("<t> Ха-ха 1 миллион это тебе не 10 серебряных!!")
	MisHelpTalk("<t>Ха-ха 1 миллион это тебе не 10 серебряных!")
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
	

-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 379, " Водяное Колесо ", 318 )

	MisBeginTalk( "<t>Оооо!Помогите нам уничтожить пиратов сакуры 13 и мы поможем вам!Вы получите припасы ")
	MisBeginCondition(NoRecord, 318)
	MisBeginCondition(HasMission, 22)
	MisBeginCondition(NoMission, 318)
	MisBeginAction(SetRecord, 22)
	MisBeginAction(ClearMission, 22)
	MisBeginAction(AddMission, 318)
	MisBeginAction(AddTrigger, 3181, TE_GETITEM, 4238, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Довезите припасы в гавань.")
	MisNeed(MIS_NEED_ITEM, 4238, 1, 1, 1)

	MisResultTalk("<t>Это великолепно!")
	MisHelpTalk("<t>Ну же!Помогите мне...")
	MisResultCondition(HasMission, 318 )
	MisResultCondition(HasItem, 4238, 1 )
	MisResultAction(TakeItem, 4238, 1 )
	MisResultAction(SetRecord, 318 )
	MisResultAction(ClearMission, 318 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4238 )
	TriggerAction( 1, AddNextFlag, 318, 1, 1 )
	RegCurTrigger( 3181 )


----------------------------ГьФЛЦ®ВЦ
	DefineMission( 380, " Водяное Колесо ", 319 )
	
	MisBeginTalk( "<t>Мы понимаем,что вы прошли через много бед,но вам необходимо нам помочь." )
	MisBeginCondition(NoRecord, 319)
	MisBeginCondition(HasRecord, 318)
	MisBeginCondition(NoMission, 319)
	MisBeginAction(AddMission, 319)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Поговорите оператором Бухты по координатам  (2041, 1355)")
	
	MisHelpTalk("Поговорите оператором Бухты по координатам  (2041, 1355).")
	MisResultCondition( AlwaysFailure )



-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 381, " Водяное Колесо ", 320 )

	MisBeginTalk( "<t>Что? Что ты говоришь? Я не ел три дня!<n> <T> Помогите нам! <n> <T> Тут недалеко ферма,но на пути множество опасных существ!")
	MisBeginCondition(NoRecord, 320)
	MisBeginCondition(HasMission, 319)
	MisBeginCondition(NoMission, 320)
	MisBeginAction(ClearMission, 319)
	MisBeginAction(SetRecord, 319)
	MisBeginAction(AddMission, 320)
	MisBeginAction(AddTrigger, 3201, TE_GETITEM, 1478, 20)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принести оператору 20 сашими ")
	MisNeed(MIS_NEED_ITEM, 1478, 20, 1, 20)

	MisResultTalk("<t>Я знал!Я знал , что вы в состоянии достать еды!")
	MisHelpTalk("<t>Что!?Где рыба?")
	MisResultCondition(HasMission, 320)
	MisResultCondition(HasItem, 1478, 20 )
        MisResultAction(TakeItem, 1478, 20 )
	MisResultAction(SetRecord, 320 )
	MisResultAction(ClearMission, 320 )
  	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )
	TriggerAction( 1, AddNextFlag, 320, 1, 20 )
	RegCurTrigger( 3201 )



-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 382, " Водяное Колесо ", 321 )
	MisBeginCondition(NoMission, 321)
	MisBeginCondition(HasRecord, 320)
	MisBeginCondition(NoMission, 321)
	MisBeginAction(AddMission, 321)	

	MisBeginTalk("<t>Вы слышали об этом? Вы сможете сделать супер-противоядие? <n> <T> Не смотрите так на меня!Я знаю кто вам поможет.Он оператор в соседней бухте (3153, 674).Он у меня в долгу!Я как то спас ему жизнь.")
	
	MisNeed(MIS_NEED_DESP, "Поезжайте в соседнюю бухту (3153,674)")
	
	MisResultCondition(AlwaysFailure )


-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 383, " Водяное Колесо ", 321, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Вот проклятье!Он опять пытается совершить какую-то глупость!Если бы он не спас мне жизнь,я бы не беспокоился о нем <n> <T> Что касается противоядия ... Да,я знаю как его сварить ,но мне потребуются ингредиенты для него!")
	MisResultCondition(NoRecord, 321)
	MisResultCondition(HasMission, 321)
	MisResultAction(ClearMission, 321)
	MisResultAction(SetRecord, 321)

-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 384, " Водяное Колесо ", 323 )

	MisBeginTalk( "<t>Для того, чтобы сделать противоядие нам потребуется:еПолосатая рыбья костье - 30 штук;Толстая рыбья кость - 30 штук;Гнилая рыбья кость - 30 штук.")
	MisBeginCondition(NoRecord, 323)
	MisBeginCondition(HasRecord, 321)
	MisBeginCondition(NoMission, 323)
	MisBeginAction(AddMission, 323)
	MisBeginAction(AddTrigger, 3231, TE_GETITEM, 4938, 30)
	MisBeginAction(AddTrigger, 3232, TE_GETITEM, 4957, 30)
	MisBeginAction(AddTrigger, 3233, TE_GETITEM, 4976, 30)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Доставь ингридиенты оператору Фарделлю (3153,674)")
	MisNeed(MIS_NEED_ITEM, 4938, 30, 1, 30)
	MisNeed(MIS_NEED_ITEM, 4957, 30, 31, 30)
	MisNeed(MIS_NEED_ITEM, 4976, 30, 61, 30)

	MisResultTalk("<t> Да, да,это все что нужно!Я начну варить противоядие прямо сейчас!")
	MisHelpTalk("<t>Что?Ты не знаешь с кого добыть эти вещи?")
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



-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 385, " Водяное Колесо ", 324 )

	MisBeginTalk( "<t>Я не крал противоядия. .. подождите, подождите! Вы действительно собираетесь оставить меня?  Я украл формулу у <bОператора Буни> из <bБухты Айрис> по координатам  (2042, 635). ")
	MisBeginCondition(NoRecord, 324)
	MisBeginCondition(HasRecord, 323)
	MisBeginCondition(NoMission, 324)
	MisBeginAction(AddMission, 324)
	MisBeginAction(AddTrigger, 3241, TE_GETITEM, 4254, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Плывите к Буни (2042, 635)")
	MisNeed(MIS_NEED_ITEM, 4254, 1, 1, 1)

	MisResultTalk("<t> Ах!Если бы медицина всегда так помогала!<n> <T> Что? Что вернуть вам ваши деньги? Я не понимаю!Я немног занят,пока!(Вот сцуко :o)")
	MisHelpTalk("<t>Моя жизнь в ваших руках!")
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

-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 386, " Водяное Колесо ", 325 )

	MisBeginTalk( "<t>Что?Оператор обманул вас?Он заслуживает смерти! Да, и он до сих пор не вернул мне 100000 тысяч! !<n> <T> Хорошо хорошо! На самом деле у меня очень мягое сердце.Дайте ему противоядие поскорее.")
	MisBeginCondition(NoRecord, 325)
	MisBeginCondition(HasMission, 324)
	MisBeginCondition(NoMission, 325)
	MisBeginAction(AddMission, 325)
	MisBeginAction(GiveItem, 4254, 1, 4 )	
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "BПривезди противоядие (3153, 674) в обмен на 100000 тысяч золотых ")

	MisResultTalk("<t>Что? Он притворился что забыл про долг?В следующий раз я дам ему вместо противоядия яд!")
	MisHelpTalk("<t>Уходи!")
	MisResultCondition(HasMission, 325)
	MisResultCondition(HasRecord, 324)
	MisResultAction(SetRecord, 325 )
	MisResultAction(ClearMission, 325 )	

-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 387, " Водяное Колесо ", 326 )

	MisBeginTalk( "<t>О нет!Овци сжевали формулу.Мы пытались их схватить,но большинство прыгнуло в океан.Если вы поможете найти мне кусочки формулы,то я помогу составить вам правельную формулу!")
	MisBeginCondition(NoRecord, 326)
	MisBeginCondition(HasRecord, 325)
	MisBeginCondition(NoMission, 326)
	MisBeginAction(AddMission, 326)
	MisBeginAction(AddTrigger, 3261, TE_GETITEM, 4255, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Найдите <rФрагменты формулы> для противоядия.")
	MisNeed(MIS_NEED_ITEM, 4255, 10, 1, 10)

	MisResultTalk("<t> Да, да, это все ингредиенты которые нужны!")
	MisHelpTalk("<t>Вы не собирать утраченую формулу?")
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

----------------------------УпСФОКМв
	DefineMission( 559, " Языковый барьер ", 387 )
	
	MisBeginTalk( "<t>Что говорят эти люди?Немогу понять ни слова! <n> <T> Думаю бабушка Белди поможет (2277, 2769)." )
	MisBeginCondition(NoRecord, 387)
	MisBeginCondition(NoMission, 387)
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(NoRecord, 330)
	MisBeginAction( AddMission, 387 )
	MisCancelAction(SystemNotice, "Квест не может быть удален " )
		
	MisNeed(MIS_NEED_DESP, "Найдите Белди ")
	
	MisHelpTalk( "Найдите Белди " )
	MisResultCondition( AlwaysFailure )

----------------------------УпСФОКМв
	DefineMission( 388, " Языковый барьер ", 327)
	
	MisBeginTalk( "<t> Что?! Вы говорите, что вы не можете понять, что они говорят?Вы выпили зелье Откровения? <n> <T>  Думаю вам поможет его приготовить официантка <bБарбара>" )
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(HasMission, 387)
	MisBeginCondition(NoMission, 327)
	MisBeginAction(SetRecord, 387)
	MisBeginAction(ClearMission, 387)
	MisBeginAction(AddMission, 327)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Поговорите с  <bБарбарой> по координатам (1310, 530) ")
	
	MisHelpTalk("Найдите <bБарбару>")
	MisResultCondition(AlwaysFailure )



-----------------------------------УпСФОКМв
	DefineMission( 389, " Языковый барьер ", 328 )

	MisBeginTalk( "<t>Вы хотите зелье Откровения? Вы нашли того кто вам поможет!Я могу продать вам формулу <n> <T> Я прадам вам ее за 100000 золотых.Не плохая сделка,правда?")
	MisBeginCondition(NoRecord, 328)
	MisBeginCondition(HasMission, 327)
	MisBeginCondition(NoMission, 328)
	MisBeginAction(SetRecord, 327)
	MisBeginAction(ClearMission, 327)
	MisBeginAction(AddMission, 328)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<r100000 тысяч золотых>")
	
	MisResultTalk("<t>Да,вы знаете цену сделок!")
	MisHelpTalk("<t>У тебя нету 100000 тысяч золотых? Ха-ха")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 328 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(SetRecord, 328 )
	MisResultAction(ClearMission, 328 )
    MisResultAction(GiveItem, 4256, 1, 4 )
	MisResultBagNeed(1)


-----------------------------------УпСФОКМв
	DefineMission( 391, "Языковый барьер ", 330 )


	MisBeginTalk( "<t> Is that Ai Wen? Long time no see... I'm not not speaking to you, I'm speaking to the Omni-Relevation prescription. Yes, its name is Ai Wen, 500 years ago, a person with a soul was sealed inside this formula that is why it talks!<n><t>Anyway, I'll give you a discount, you only need to pay me <r50000G> for me to complete the potion for you.")
	MisBeginCondition(NoRecord, 30)
	MisBeginCondition(NoRecord, 330)
	MisBeginCondition(HasMission, 30)
	MisBeginAction(AddMission, 330)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Collect all ingredient and also <r50000G>")

	MisResultTalk("<t>Why the hurry? I'm not done yet! I need another 50000G to complete it. Why...Are you taking out your weapon? Okay okayЎ­. I was only joking.<n><t>The potion has already been completed. Here! Take it!<n><t>(You glup down the potion without thinking...)")
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


----------------------------Ф¶АґКЗїН
	DefineMission( 392, " Гость издалека ", 331)
	
	MisBeginTalk( "<t>Привет, как дела? Вы первый раз здесь? Расслабьтесь, мы здесь все как друзья.<n> <T> Совершите небольшую экскурсию по городу." )
	MisBeginCondition(NoRecord, 331)
	MisBeginCondition(HasRecord, 315)
	MisBeginCondition(NoMission, 331)
	MisBeginAction(AddTrigger, 3311, TE_GETITEM, 4242, 7 )
	MisBeginAction(AddMission, 331)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Походите по городу и познакомьтесь с окружающими.")
	MisNeed(MIS_NEED_ITEM, 4242, 7, 10, 7)	

	MisResultTalk("<t>О Боже, у вас есть информация относительно моего сына? Просто вы так посмотрели на меня...")
	MisHelpTalk("<t>Вы еще не все осмотрели!")
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

----------------------------Ф¶АґКЗїН
	DefineMission( 393, " Гость издалека ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Вы добрый человек! Что бы достичь этого места,нужно быть очень добрым!")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 1)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 1)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------Ф¶АґКЗїН
	DefineMission( 394, " Гость издалека ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Вы добрый человек! Что бы достичь этого места,нужно быть очень добрым!")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 2)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 2)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------Ф¶АґКЗїН
	DefineMission( 395, " Гость издалека ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Приветствую вас странник! Меня зовут Луна,если вам нужна помощь ,не стесняйтесь! Поскольку вы издалека, я сделаю вам скидку  20%")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 3)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 3)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
---------------------------Ф¶АґКЗїН
	DefineMission( 396, " Гость издалека ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Привет друг! Если ты хотчешь  купить Акулий плавник и Шнездо птицы, я сделаю тебе 20% скидку!")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 4)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 4)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------Ф¶АґКЗїН
	DefineMission( 397, " Гость издалека ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<tО город Весны!Не забудте посмотреть на флаг!<n> <T> Да,и запомните где меня искать.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 5)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 5)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	

----------------------------Ф¶АґКЗїН
	DefineMission( 398, " Гость издалека ", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Мы встретились вновь!")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 6)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 6)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------Ф¶АґКЗїН
	DefineMission( 399, " Гость издалека ", 331, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t>Cкажите мне свой секретный код, это не ограбление.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 7)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 7)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

-----------------------------------»­Бъµгѕ¦
	DefineMission( 510, " Точка назначения ", 339 )

	MisBeginTalk( "<t>Мне нужна Древняя серьга.Если вы дадите мне ее,я расскажу вам небольшой секрет.")
	MisBeginCondition(NoRecord, 339)
	MisBeginCondition(HasRecord, 338)
	MisBeginCondition(NoMission, 339)
        MisBeginCondition(HasItem, 4236,1)
	MisBeginAction(AddMission, 339)
	MisBeginAction(AddTrigger, 3391, TE_GETITEM, 4236, 1 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Отдайте Серьгу Банкиру Ванг Мо ")
	MisNeed(MIS_NEED_ITEM, 4236, 1, 1, 1)

	MisResultTalk("<t>Спасибо!Я расскажу вам мой секрет.")
	MisHelpTalk("<t>Что?У вас нету серьги?.")
	MisResultCondition(HasMission, 339 )
	MisResultCondition(HasItem, 4236, 1 )
	MisResultAction(TakeItem, 4236, 1 )	
	MisResultAction(SetRecord, 339 )
	MisResultAction(ClearMission, 339 )
    


-----------------------------------»­Бъµгѕ¦
	DefineMission( 511, " Точка назначения ", 340 )

	MisBeginTalk( "<t> Ну вот слушайте секрет:Ха-ха!Я обманул вас.Мне необходима серьга для того что бы закончить картину.Хотя если вы принесете мне краски , я могу вам помочь!.")
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
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<rКрасная краска> 5 шт , <rОраньжевая краска> 5 шт , <rЖелая краска>  5 шт  <rЗеленая краска> 5 шт  <rГолубая краска> 5 шт <rСиняя краска> 5 шт <rПурпурная краска> 5 шт")
	MisNeed(MIS_NEED_ITEM, 1787, 5, 1, 5)
	MisNeed(MIS_NEED_ITEM, 1788, 5, 6, 5)
	MisNeed(MIS_NEED_ITEM, 1789, 5, 11, 5)
	MisNeed(MIS_NEED_ITEM, 1790, 5, 16, 5)
	MisNeed(MIS_NEED_ITEM, 1791, 5, 21, 5)
	MisNeed(MIS_NEED_ITEM, 1792, 5, 26, 5)
	MisNeed(MIS_NEED_ITEM, 1793, 5, 31, 5)

	MisResultTalk("<t>Ты слишком медлителен!Я чуть не потерял свою картину.")
	MisHelpTalk("<t>Быстрее принеси мне краски!")
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

-----------------------------------»­Бъµгѕ¦
	DefineMission( 512, " Точка назначения ", 341 )

	MisBeginTalk( "<t>Вы были слишком медлительны,и моя кисть засохла!Теперь я немогу нарисовать лицо ,а главное сделать глаз дракона более четким!Думаю тут поможет 30 литров <rЧистой воды> ")
	MisBeginCondition(NoRecord, 341)
	MisBeginCondition(HasRecord, 340)
	MisBeginCondition(NoMission, 341)
	MisBeginAction(AddMission, 341)
	MisBeginAction(AddTrigger, 3411, TE_GETITEM, 1649, 30)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Достаньте 30 бутылок чистой воды и вернитесь к Банкиру Ванг Мо (3290, 2512)")
	MisNeed(MIS_NEED_ITEM, 1649, 30, 1, 30)

	MisResultTalk("<t>Почему так медленно? Кисть совсем высохла!")
	MisHelpTalk("<t>Как вы посмели вернутся с пустыми руками?!")
	MisResultCondition(HasMission, 341)
	MisResultCondition(HasItem, 1649, 30)
	MisResultAction(TakeItem, 1649, 30 )
	MisResultAction(SetRecord, 341 )
	MisResultAction(ClearMission, 341 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649 )
	TriggerAction( 1, AddNextFlag, 341, 1, 30 )
	RegCurTrigger( 3411 )
	

-----------------------------------»­Бъµгѕ¦
	DefineMission( 513, " Точка назначения ", 342 )

	MisBeginTalk( "<t>Если бы вы были чуточку быстрее ,то кисточка смогла бы уцелеть. Теперь ее волшебные свойства утеряны!Но не переживайте я думаю 10 <rЛисьих хвостов> помогут нам.В последний раз лисов видели тут (3322, 2460).")
	MisBeginCondition(NoMission, 342)
	MisBeginCondition(NoRecord, 342)
	MisBeginCondition(HasRecord, 341)
	MisBeginAction(AddMission, 342)
	MisBeginAction(AddTrigger, 3421, TE_GETITEM, 165, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Достаньте 10 Лисьих хвостов и вернитесь к банкиру Ванг Мо ")
	MisNeed(MIS_NEED_ITEM, 165, 10, 1, 10)

	MisResultTalk("<t>Да это лучшие хвосты!Теперь я смогу востановить кисть.")
	MisHelpTalk("<t>Вы опять вернулись с пустыми руками?")
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


-----------------------------------К§ЧЩ
	DefineMission( 514, " Потеря ", 343 )

	MisBeginTalk( "<t>Под городом находится  <pПодводный туннель>.Он образовался после землятресения.Каждый кто работал в это время на острове оказался в руинахю<n> <T> Мой сын и группа пиратов пошли искать сокровища.Помогите мне связаться с ним!")
	MisBeginCondition(NoRecord, 343)
	MisBeginCondition(NoMission, 343)
	MisBeginCondition(HasRecord, 331)
   	MisBeginAction(AddMission, 343)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Найдите сына Санг Ди в <rПодводном туннеле>")

	MisResultTalk("<t>Ли стал зомби? О боже,я знал что случится что-то страшное!")
	MisHelpTalk("<t>Вы так и не нашли его?")
	MisResultCondition(HasMission, 343 )
	MisResultCondition(HasFlag, 343, 2 )
	MisResultAction(SetRecord, 343 )
	MisResultAction(ClearMission, 343 )

-----------------------------------К§ЧЩ
	DefineMission( 515, " Потеря ", 343 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Пожалуйста, подождите! Я не заразен! Я до сих пор чуствую! Пожалуйста передайте матри мои слова! Скажите моей маме, что я всегда буду любить ее. Я попрошу у богини Кары благославления.")
	MisResultCondition(NoRecord, 343)
	MisResultCondition(HasMission, 343)
	MisResultCondition(NoFlag, 343, 2)
	MisResultAction(SetFlag, 343, 2)
	
-----------------------------------К§ЧЩ
	DefineMission( 516, " Потеря ", 345 )

	MisBeginTalk( "<t>Я знаю что у  <rЛуны> по координатам  (3279, 2501) есть <rТалисманы> которые способны хранить души зомби.Найдите ее!")
	MisBeginCondition(NoRecord, 345)
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(HasRecord, 343)
	MisBeginCondition(NoMission, 345)
  	MisBeginAction(AddMission, 345)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Найдите <rЛуну> и распросите о Талисманах ")

	MisHelpTalk("<t>Луна готова помочь?")
	MisResultCondition(AlwaysFailure )

-----------------------------------Бй·ы
	DefineMission( 517, " Талисман ", 346 )

	MisBeginTalk( "<t>Что?! Хами стал зомби?ОМГ!Здесь потребуется <rСпециальный талисман> который может быть сделан из нескольких <rТалисманов приведения>. <n> <T>Талисман,который я использовал в прошлый раз был приобретен у купца!Но он не приезжает уже год...Думаю если вы поможете мне достать 20 штук  Талисманов приведения,то я сделаю Специальный талисман!")
	MisBeginCondition(NoRecord, 346)
	MisBeginCondition(HasMission, 345)
	MisBeginCondition(NoMission, 346)
  	MisBeginAction(AddMission, 346)
	MisBeginAction(AddTrigger, 3461, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите Луне 20 Талисманов приведения.")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>Спасибо!Это то что надо.")
	MisHelpTalk("<t>Нет!У вас не те талисманы!Надо именно 20 штук Талисманов призрака.")
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

-----------------------------------Бй·ы
	DefineMission( 518, " Талисман ", 347 )

	MisBeginTalk( "<t>Что случилось? Я как будно вышел из комы! <n> <T> Почему я вдруг проснулся?Это был талисман луны? <n> <T> Я всегда знал, что она мне поможет.Но даже моя душа теперь нормальная,я не переношу лучей солнца.Сообщите ей об этом.")
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(NoMission, 347)
	MisBeginCondition(HasRecord, 346)
	MisBeginCondition(HasItem, 4244, 1)
	MisBeginAction(TakeItem, 4244, 1)
  	MisBeginAction(AddMission, 347)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Расскажите Луне,что Хами не может покинуть Подводный туннель.")
	
	MisResultCondition(AlwaysFailure )

-----------------------------------Бй·ы
	DefineMission( 519, " Талисман ", 347 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Что? Хами не может покинуть Подводный туннель? В таком случае я пойду к нему.")
	MisResultCondition(NoRecord, 347)
	MisResultCondition(HasMission, 347)
	MisResultAction(SetRecord, 347)
	MisResultAction(ClearMission, 347)
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveItem, 3883, 5, 4)
	MisResultAction(GiveItem, 3884, 5, 4)
	MisResultBagNeed(2)

-----------------------------------°®µДЖжјЈ
	DefineMission( 520, " Чудо любви ", 349 )

	MisBeginTalk( "<t>Молодой человек, я вы обеспокоины <n> <T> Вы тронуты любовью между Луной и Хами?У любви много чудесных свойств. <n> <T> Я знаю как им помочь,но это будет нелегко.Вам надо достать:ее1 шт чистый звенящий песок ,1 шт корона королевы,1 шт кристальное перо.")
	MisBeginCondition(NoRecord, 349)
	MisBeginCondition(NoRecord, 356)
	MisBeginCondition(HasRecord, 347)
	MisBeginCondition(NoMission, 349)
	MisBeginCondition(NoMission, 356)
	MisBeginAction(AddMission, 349)
	MisBeginAction(AddTrigger, 3491, TE_GETITEM, 4245, 1 )
	MisBeginAction(AddTrigger, 3492, TE_GETITEM, 4246, 1 )
	MisBeginAction(AddTrigger, 3493, TE_GETITEM, 4247, 1 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Вернистесь к Фокус-Покусу с ингредиентами.")
	MisNeed(MIS_NEED_ITEM, 4245, 1, 5, 1)
	MisNeed(MIS_NEED_ITEM, 4246, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4247, 1, 15, 1)

	MisResultTalk("<t>Многие считают что порошок,который вы мне достали является Слезой Богини.Он яляется символом очень сильной любви.")
	MisHelpTalk("<t>Я же просил вас три ингридиента!")
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

-----------------------------------Е®ЙсµДСЫАб
	DefineMission( 521, " Слеза богини ", 350 )

	MisBeginTalk( "<t>После стольких лет нашелся тот кто помнит эту легенду? Да порошок является слезой богини, но только люди с чистым сердцем могу прикоснуться к нему.")
	MisBeginCondition(NoRecord, 350)
	MisBeginCondition(NoMission, 350)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 350)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Отдайте Слезу Богини ")

	MisResultTalk("<t>Только один с добрым сердцем спобобен принести мне этот порошок!Вы доказали.")
	MisHelpTalk("<t>Думаю вам надо прогуляться по шахтам Шайтана.")
	MisResultCondition(HasMission, 350)
	MisResultCondition(HasItem, 4245, 1)
 	MisResultAction(SetRecord, 350 )
	MisResultAction(ClearMission, 350 )



-----------------------------------ИЛУгµДРДФа
	DefineMission( 522, " Сердце Русалки ", 351 )

	MisBeginTalk( "<t>О Сердце русалки..эта старая легедна о Короне королевы<n> <T> Семья королевы была убита,а воры принялись обыскивать замок...Так там была Корона,очень ценная,она могла исцелить любого.Но люди с дурными намерениями не могли ей пользоваться.")
	MisBeginCondition(NoRecord, 351)
	MisBeginCondition(NoMission, 351)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 351)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Достать Корону королевы.")

	MisResultTalk("<t>Вы действительно достали Корону королевы? Возможно, вы будете первым, кто смог это сделать.")
	MisHelpTalk("<t>Я думаю Корона находится сейчас далеко в руинах...")
	MisResultCondition(HasMission, 351)
	MisResultCondition(HasItem, 4246, 1)
 	MisResultAction(SetRecord, 351 )
	MisResultAction(ClearMission, 351 )

	-----------------------------------·ЙДсµДУрГ«
	DefineMission( 523, " Кристальное перо ", 352 )

	MisBeginTalk( "<t>Кристальное перо-это высшая награда для храбрых воинов!Она является доказательством того,что воины побывали глубоко , в недрах Мира Демонов.Вы думаете вам по силам его достать?")
	MisBeginCondition(NoRecord, 352)
	MisBeginCondition(NoMission, 352)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 352)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Достаньте Кристальное перо ")

	MisResultTalk("<t>Вы третий кто смог достать такое!Я не могу сказать вам кто были прошлые двое,думаю вы сами все узнаете.")
	MisHelpTalk("<t>Ходят слухи,что перо можно достать где то в Мире Демонов ")
	MisResultCondition(HasMission, 352)
	MisResultCondition(HasItem, 4247, 1)
 	MisResultAction(SetRecord, 352 )
	MisResultAction(ClearMission, 352 )

-----------------------------------°®µДЖжјЈ
	DefineMission( 524, " Чудо любви ", 353 )

	MisBeginTalk( "<t>Вы сказали , что нося эту брошь я смогу вернутся в солнечный мир? <n> <T>Спасибо!Теперь я смогу увидеть Луну.Сообщите ей об этом.")
	MisBeginCondition(NoRecord, 353)
	MisBeginCondition(NoMission, 353)
	MisBeginCondition(HasRecord, 349)
	MisBeginCondition(HasItem, 4248,1)
	MisBeginAction(TakeItem, 4248, 1)
  	MisBeginAction(AddMission, 353)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Сообщите Луне хорошие новости.")

	MisHelpTalk("<t>О-оо.Я так вам благодарна!")
	MisResultCondition(AlwaysFailure )

-----------------------------------°®µДЖжјЈ
	DefineMission( 525, " Чудо любви ", 353 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Что? Вы выполнили древнюю легенду?Теперь Хами может вернуться ко мне?Как я могу вас отблагодарить? Примите этот талисман,он поможет вам не чувствовать яд этих зомби.")
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

-----------------------------------К¬¶ѕ
	DefineMission( 526, " Трупный яд ", 355 )

	MisBeginTalk( "<t>Вы опасаетесь яда?Я смогу сделать для вас защитный талисман<n> <T> Мне потребуется 20 шт талисман приведения и 5 тысяч золота.")
	MisBeginCondition(NoRecord, 355)
	MisBeginCondition(NoMission, 355)
	MisBeginCondition(HasRecord, 353)
 	MisBeginAction(AddMission, 355)
	MisBeginAction(AddTrigger, 3551, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Вернитесь с 20 талисманами приведений ")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>Хорошо, вот ваши талисманы.Если вам понадобятся еще,то обращайтесь.")
	MisHelpTalk("<t>Я же просила!20 штук!")
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

-----------------------------------К§ЧЩ
	DefineMission( 527, " Потеря ", 345, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Что? Мой сын не может вернуться домой?")
	MisResultCondition(HasRecord, 347)
	MisResultCondition(NoRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(NoRecord, 349)
	MisResultCondition(HasMission, 345)
	MisResultCondition(NoMission, 353)
	MisResultCondition(NoMission, 349)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	
-----------------------------------К§ЧЩ
	DefineMission( 528, " Потеря ", 345 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Что?Древняя легенда? Мой сын спасен?Спасибо!Луна уже знает?")
	MisResultCondition(HasRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(HasMission, 345)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	MisResultAction(SetRecord, 354 )

-----------------------------------ЙсЖж№ыКµ
	DefineMission( 529, " Волшебный фрукт ", 358 )

	MisBeginTalk( "<t>Хм как выгледит этот плод? <n> <T> Хм я не видел такого!Но думаю <bЮри> по координатам (3196, 2509) сможет тебе помочь!")
	MisBeginCondition(NoRecord, 358)
	MisBeginCondition(HasRecord, 345)
	MisBeginCondition(NoMission, 358)
  	MisBeginAction(AddMission, 358)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Спросити у <bЮри> о фрукте ")

	MisHelpTalk("<t>Я же сказал!Наведайте Юри!")
	MisResultCondition(AlwaysFailure )
-----------------------------------ЙсЖж№ыКµ
	DefineMission( 530, " Волшебный фрукт ", 359 )

	MisBeginTalk( "<t>Я видел короля Роланда. <n> <T> Если вы не верите мне, посмотрите на эти шрамы!Они являются результатом нашей дуэли которая прошла недавно. Вы говорите, что хотите увидеть загадочные фрукты? Я раньше таких фруктов не видел!На знаю что Чжоу комуто его продала. <n> <T> Почему бы тебе самому не спросить  <bЧжоу> (3298, 2534)?")
	MisBeginCondition(NoRecord, 359)
	MisBeginCondition(NoMission, 359)
	MisBeginCondition(HasMission, 358)
	MisBeginAction(SetRecord, 358 )
	MisBeginAction(ClearMission, 358 )
  	MisBeginAction(AddMission, 359)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Распросите Чжоу о фрукте.")

	MisHelpTalk("<t>Я уже рассказал вам все,что знаю.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЙсЖж№ыКµ
	DefineMission( 531, " Волшебный фрукт ", 360 )

	MisBeginTalk( "<t>Загадочный плод?Ничего не знаю!Не приближайтесь ко мне!Я не вернусь в <pПодводный тунель> !")
	MisBeginCondition(NoRecord, 360)
	MisBeginCondition(NoMission, 360)
	MisBeginCondition(HasMission, 359)
	MisBeginAction(ClearMission, 359 )
  	MisBeginAction(AddMission, 360)
	MisBeginAction(AddTrigger, 3601, TE_GETITEM, 4263, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Исследуйте <pПодводный туннель> ")
	MisNeed(MIS_NEED_ITEM, 4263, 1, 1, 1)

	MisHelpTalk("<t>Желаю вам удачи...")
	MisResultCondition(AlwaysFailure )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4263 )
	TriggerAction( 1, AddNextFlag, 360, 1, 1 )
	RegCurTrigger( 3601 )

-----------------------------------¶сД§µД№ыКµ
	DefineMission( 532, " Волшебный фрукт ", 361 )

	MisBeginTalk( "<t>Что это в ваших руках?Где то я это видел.Не приближатйтесь ко  мне!Уходите.")
	MisBeginCondition(NoRecord, 361)
	MisBeginCondition(HasMission, 360)
	MisBeginCondition(NoMission, 361)
	MisBeginCondition(HasItem, 4263, 1)
	MisBeginAction(ClearMission, 360 )
 	MisBeginAction(AddMission, 361)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Уничтожте фрукт и поговорите с Чжоу.")

	MisResultTalk("<t>Я чувствую себя намного лучше,надеюсь вы не поддались моей панике?")
	MisHelpTalk("<t>Что это в ваших руках?Где то я это видел.Не приближатйтесь ко  мне!Уходите.")
	MisResultCondition(HasMission, 361)
	MisResultCondition(NoItem, 4263, 1)
   	MisResultAction(SetRecord, 361 )
	MisResultAction(ClearMission, 361 )

-----------------------------------ЦЬОвЦЈµДРЕ
	DefineMission( 533, " Письмо Чжоу ", 362 )

	MisBeginTalk( "<t>Хм,вы сказали в подводном туннеле больше нету этих фруктов? <n> <T> Это точно?Ну хорошо.Передайте это письмо <bБанкиру Ванг Мо> по координатам (3290, 2512)")
	MisBeginCondition(NoRecord, 362)
	MisBeginCondition(NoMission, 362)
	MisBeginCondition(HasRecord, 361)
 	MisBeginAction(AddMission, 362)
 	MisBeginAction(GiveItem, 4250,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Отдайте писмо Банкиру Ванг Мо ")

	MisResultTalk("<t>Письмо от Чжоу?Ах *кашель* я думал это касающееся нашего бизнеса.")
	MisHelpTalk("<t>Спешите  доставить письмо.")
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasFlag, 362, 10)
   	MisResultAction(SetRecord, 362 )
	MisResultAction(ClearMission, 362 )

-----------------------------------¶сД§µД№ыКµ
	DefineMission( 534, " Демонический фрукт ", 363 )

	MisBeginTalk( "<t>Вы видели Ледяных драконов?Ухххх.Но это не важно <n> <T>Что касается фруктов,то его называют Демоническим фруктом. Говорят, что те кто его съедят получать силы.Говорят один из драконов съел такой фрукт!Думаю Санг Ди вам поможет.")
	MisBeginCondition(NoRecord, 363)
	MisBeginCondition(NoMission, 363)
	MisBeginCondition(HasRecord, 362)
  	MisBeginAction(AddMission, 363)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Распросите Санг Ди о фруктах (3287, 2501)")

	MisHelpTalk("<t>Я все сказал...")
	MisResultCondition(AlwaysFailure )
	

-----------------------------------·АёЇјБ
	DefineMission( 535, " Защита ", 364 )

	MisBeginTalk( "<t>Хотите сделать Талисман защиты?Он может быть полезен при изучении Подводного туннеля. <n> <T> Принесите мне Трут 3 шт,Проклятая кость 3 шт,Ость 3 шт.")
	MisBeginCondition(NoMission, 364)
 	MisBeginAction(AddMission, 364)
	MisBeginAction(AddTrigger, 3641, TE_GETITEM, 4259, 3)
	MisBeginAction(AddTrigger, 3642, TE_GETITEM, 4260, 3)
	MisBeginAction(AddTrigger, 3643, TE_GETITEM, 4261, 3)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите Луне ингредиенты ")
	MisNeed(MIS_NEED_ITEM, 4259, 3, 1, 3)
	MisNeed(MIS_NEED_ITEM, 4260, 3, 5, 3)
	MisNeed(MIS_NEED_ITEM, 4261, 3, 10, 3)

	MisResultTalk("<t>.Да , это то что нужно.")
	MisHelpTalk("<t>Что?Ты глухой?")
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

-----------------------------------БъЦ®Аб
	DefineMission( 536, " Слезы Дракона ", 24 , COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Слезы Дракона?Хм,никогда не слышал,возможно это всего лишь сказка.<n> <T>Ну если вы так настаиваете. Ну есть два варианта.")
	MisResultCondition(NoRecord, 24)
	MisResultCondition(HasMission, 24)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 24)
	MisResultAction(ClearMission, 24)

-----------------------------------±дВфБъЦ®Аб
	DefineMission( 537, " Слезы Дракона ", 366 )

	MisBeginTalk( "<t>Я куплю этот камень за <r200000 золотых> ")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasRecord, 24)	
	MisBeginCondition(HasItem, 4252,1)	
 	MisBeginAction(AddMission, 366)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Достанте Слезу Дракона ")

	MisResultTalk("<t>Вы нашли ее?Получайте свое вознаграждение!")
	MisHelpTalk("<t>Где слеза?")
	MisResultCondition(HasMission, 366)
	MisResultCondition(HasItem, 4252,1)
        MisResultAction(TakeItem, 4252, 1)	
        MisResultAction(AddMoney, 200000, 200000)	
 	MisResultAction(SetRecord, 366 )
 	MisResultAction(ClearMission, 366 )

-----------------------------------БъЦ®АбµДґ«Лµ
	DefineMission( 538, " Легенда о Слезе Дракона ", 367 )

	MisBeginTalk( "<t>Так вы действительно хотите узнать о Слезе Дракона? Я знаю только одну легенду <n> <T> Но мне нужно больше времени.Вернитесь чуть позже.")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(HasRecord, 24)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasItem, 4252,1)
	MisBeginAction(AddMission, 367)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Поговорите  Лонг Ер ")

	MisResultTalk("<t> Легенда гласит,что Слезы дракона открывают путь к Черному дракону!")
	MisHelpTalk("<t>У вас есть слезы Дракона?")
	MisResultCondition(HasMission, 367)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 367 )
 	MisResultAction(ClearMission, 367 )
	MisResultAction(ObligeAcceptMission, 25 )




-----------------------------------БъЦ®АбµДГШГЬ
	DefineMission( 539, "Тайна Слез Дракона ", 25, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Как вам удалось завладеть слезой?Да и легенда не лжет!!")
	MisResultCondition(NoRecord, 25)
	MisResultCondition(HasMission, 25)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 25)
	MisResultAction(ClearMission, 25)

-----------------------------------КҐЛ®
	DefineMission( 540, " Святая вода ", 369 )

	MisBeginTalk( "<t>Ледовый дракон был создан Богами в надежде убрать горе и слабость.Но люди заметили в них лишь дорогие кости и ценные артефакты. <n> <T> Принесите в Магическом океане <p(3800, 550)> , и я расскажу вам как ей пользоваться.")
	MisBeginCondition(NoRecord, 369)
	MisBeginCondition(NoMission, 369)
	MisBeginCondition(HasRecord, 25 )
	MisBeginAction(GiveItem, 4239,1,4)
 	MisBeginAction(AddMission, 369)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Великий синий океан (3800, 550) Найдите бутыль с водой.")

	MisResultTalk("<t>Вау!Позвольте взглянуть на воду.")
	MisHelpTalk("<t>У вас проблемы? <p(3800, 550)> вам надо в Мгический океан! ")
	MisResultCondition(HasMission, 369 )
	MisResultCondition(HasItem, 4257,1)
        MisResultAction(TakeItem, 4257, 1)
	MisResultAction(GiveItem, 4240, 1, 4)
	MisResultAction(SetRecord, 369 )
 	MisResultAction(ClearMission, 369 )
	MisResultBagNeed(1)
 
 -----------------------------------КҐЛ®
	DefineMission( 541, " Выкуп ", 370 )

	MisBeginTalk( "<t>Ваш знакомый будет особожден!")
	MisBeginCondition(HasRecord, 369)
	MisBeginCondition(NoRecord, 370)
	MisBeginCondition(NoMission, 370)
	MisBeginAction(AddMission, 370)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	
	MisNeed(MIS_NEED_DESP, "Пролейте Святую воду на Слезу дракона,что бы освободить душу.")

	MisHelpTalk("<t>Пролейте Святую воду на Слезу дракона,что бы освободить душу.")
	MisResultCondition(AlwaysFailure )
	
 
 -----------------------------------єЈЙ°µДґжїо
	DefineMission( 542, " Вклад ", 26 , COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t> Наши вклады очень долгое время не использовали. Вы говорите,что готовы взять его на себя? Хорошо.Если вы скажите нам пароль от сейфа мы подумаем.")
	MisResultCondition(NoRecord, 26)
	MisResultCondition(HasMission, 26)
	MisResultAction(ClearMission, 26)
	MisResultAction(SetRecord, 26)
    MisResultAction(AddMoney, 200000)	
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,250000,250000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem, 7616, 1, 4) -- Выдаем предмет за квест 

	MisResultBagNeed(1)			-- Проверяем свободный слот в инвентаре

-----------------------------------ЦЬОвЦЈµДЗйКй
	DefineMission( 543, " Любовное письмо Чжоу ", 372 )

	MisBeginTalk( "<t>Подождите! Не уходите! Я надеюсь вы не читали писмо? <n> <t> Если читали,то прошу,храните молчание!Кстате посмотрите новые товары у Юри (3195,2506)")
	MisBeginCondition(NoRecord, 372)
	MisBeginCondition(NoMission, 372)
	MisBeginCondition(HasMission, 27)
 	MisBeginAction(AddMission, 372)
	MisBeginAction(SetRecord, 27)
	MisBeginAction(ClearMission, 27)
	MisBeginAction(AddTrigger, 3721, TE_GETITEM, 4241, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Помогите Банкиру Ванг Мо ")
	MisNeed(MIS_NEED_ITEM, 4241, 1, 1, 1)

	MisResultTalk("<t>Да!Это то что я хотела.")
	MisHelpTalk("<t>Не медлите.")
	MisResultCondition(HasMission, 372)
	MisResultCondition(HasItem, 4241, 1)
	MisResultAction(TakeItem, 4241, 1 )
 	MisResultAction(SetRecord, 372 )
	MisResultAction(ClearMission, 372 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4241 )
	TriggerAction( 1, AddNextFlag, 372, 1, 1 )
	RegCurTrigger( 3721 )
 


 -----------------------------------ЦЬОвЦЈµДРЕ
	DefineMission( 544, " Письмо Чжоу ", 362 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Это пять ты? Слушай... Я действительно не знаю что случилось<n> <T> Ой, извините! Я не думал что это вы...")
	MisResultCondition(NoRecord, 362)
	MisResultCondition(NoFlag, 362, 10)
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasItem, 4250, 1)
	MisResultAction(TakeItem, 4250, 1)
	MisResultAction(SetFlag, 362, 10)
	
-----------------------------------РВ»х
	DefineMission( 545, " Новые товары ", 372 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Откуда вы узнали  о пополнении ассортимента  товаров?")
	MisResultCondition(NoRecord, 372)
	MisResultCondition(NoFlag, 372, 10)
	MisResultCondition(HasMission, 372)
	MisResultAction(SetFlag, 372, 10)
	
-----------------------------------іцєЈґтМЅ
	DefineMission( 546, " Исследование моря ", 375 )

	MisBeginTalk( "<t>Вы уже нашли корабль?Если нет то наведайтесь сюда <p(2500, 2260)>")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)
	MisBeginCondition(HasFlag, 372, 10)
	MisBeginAction(AddMission, 375)
	MisBeginAction(GiveItem, 4258,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Дойдите до <p(2500, 2260)> и используйте бинокль ")

	MisResultTalk("<t>Вы нашли мой корабль?Здорово!.")
	MisHelpTalk("<t>Вы забыли координаты? Вот <P (2500, 2260)")
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

 -----------------------------------№єВтРВТВ
	DefineMission( 547, " Покупка новых вещей ", 376 )

	MisBeginTalk( "<t> Вы не хотите исследоать море? Хорошо.")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)	
	MisBeginAction(AddMission, 376)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	
	MisResultTalk("<t>Я надеялся на то , что вы исследуете море.Но если вы готовы расстаться с 100000 тысячами золотых...")
	MisHelpTalk("<t>Принести 100000 тысяч золотых ")
	MisResultCondition(HasMission, 376)
	MisResultCondition(HasMoney, 100000)
        MisResultAction(TakeMoney, 100000)	
        MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 376 )
 	MisResultAction(ClearMission, 376 )
	MisResultBagNeed(1)

-----------------------------------¶сД§µД№ыКµ
	DefineMission( 548, " Демонический фрукт ", 363 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> WЧто за демонические фрукты? <n> <T> Не знаю никаких фруктов!")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(NoFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultAction(SetFlag, 363, 22)
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddExpAndType,2,50000,50000)

-----------------------------------¶сД§µД№ыКµ
	DefineMission( 550, " Демонический фрукт ", 363, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> Брр... Если вы еще раз спросите меня об этих фруктах,я вышвырну вас из города своей метлой!<n> <T> Подождите...что за серьга у вас в кармане? Это же серьга моей внучки!Она пропала уже около 100 лет назад.Хорошо-хорошо,признаю что ела эти фрукты.Именно поэтому я не так сильно состарилась. Фрукты привез сюда пират Роланд<n> <T> После того как Роланд уехал,все фрукты исчезли.")
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


 -----------------------------------ВЮЙ­
	DefineMission( 551, " Роланд ", 380 )

	MisBeginTalk( "<t>Вы спрашиваете о Роланде?О-оо он герой многих легенд!")
	MisBeginCondition(HasRecord, 363)
	MisBeginCondition(NoRecord, 380)
	MisBeginCondition(NoMission, 380)
	MisBeginAction(AddMission, 380)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Навестите Санг Ди (3287, 2501).")

	MisResultTalk("<t>Все счета были урегулированы ")
	MisHelpTalk("<t>Не все счета были урегулированы ")
	MisResultCondition(HasRecord, 386)
	MisResultCondition(HasMission, 380)
  	MisResultAction(SetRecord, 380 )
 	MisResultAction(ClearMission, 380 )
	


-----------------------------------±Їѕз
	DefineMission( 552, " Трагедия ", 381 )

	MisBeginTalk( "<t>О...эта ужасная история с внуком Блюри последний слух о нем был в  Магическом океане (3757, 1248), после чего он пропал без вести.Думаю мой подводный искатель поможет вам.")
	MisBeginCondition(NoRecord, 381)
	MisBeginCondition(NoMission, 381)
	MisBeginCondition(HasRecord, 290)
	MisBeginAction(AddMission, 381)
  	MisBeginAction(GiveItem,4253,1,4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	
	MisNeed(MIS_NEED_DESP, "Магический океан (3757, 1248)")
	MisResultCondition(AlwaysFailure )


-----------------------------------±Їѕз
	DefineMission( 553, " Трагедия ", 382 )

	MisBeginTalk( "<t>Да,это большая трагедия.Думаю вам стоит рассказать об этом Блюри ")
	MisBeginCondition(NoMission, 382)
	MisBeginCondition(HasMission, 29)
	MisBeginCondition(HasItem, 4233,1)
	MisBeginAction(ClearMission, 29)
	MisBeginAction(SetRecord, 29)
	MisBeginAction(AddMission, 382)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Отнести письмо Блюри ")
	
	MisResultCondition(AlwaysFailure )
-----------------------------------±Їѕз
	DefineMission( 554, " Трагедия ", 382, COMPLETE_SHOW )


	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я знал,я знал что случится беда...Спасибо!Теперь я хотя бы буду знать что с ним случилось.")
	MisResultCondition(HasMission, 382)
	MisResultCondition(HasItem, 4233, 1)
	MisResultAction(TakeItem, 4233, 1)
	MisResultAction(ClearMission, 382)
	MisResultAction(SetRecord, 382)

-----------------------------------±Їѕз
	DefineMission( 555, " Трагедия ", 383 )

	MisBeginTalk( "<t>Хотя я в вашем возрасте е плавал так далеко,вам придется проучить этих пиратов!")
	MisBeginCondition(NoRecord, 383)
 	MisBeginCondition(HasRecord, 382)
 	MisBeginCondition(NoMission, 383)
	MisBeginAction(AddMission, 383)
	MisBeginAction(AddTrigger, 3831, TE_KILL, 594, 10)
	MisBeginAction(AddTrigger, 3832, TE_KILL, 593, 5)
	MisBeginAction(AddTrigger, 3833, TE_KILL, 656, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Уничтожте Фрегат Джека-пирата x10 (1950, 3515); Корабль поддержки Джека-пирата на х5 (2210, 3769); Командный корабль Джека-пирата х1 (1966, 3769)")
	MisNeed(MIS_NEED_KILL, 594, 10, 1, 10)
	MisNeed(MIS_NEED_KILL, 593, 5, 11, 5)
	MisNeed(MIS_NEED_KILL, 656, 1, 16, 1)

	MisResultTalk("<t>Спасибо!Спасибо!Я вам очень благодарен!")
	MisHelpTalk("<t>Если для вас это сложно....")
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

-----------------------------------№эИҐ
	DefineMission( 556, " Потеря ", 384 )

	MisBeginTalk( "<t>Знаете ли вы почему Альбуда в такой ярости? Взгляните на мусор вокруге. <n> <T> Мы изучали древние письмена,и началась буря!Мы думаем это происки Богини. <n> <T> Интересно эти рукописи сохранились?Если вы найдете их,я поделюсь с вами некоторыми раритетами.")
	MisBeginCondition(NoRecord, 384)
	MisBeginCondition(NoMission, 384)
	MisBeginCondition(HasRecord, 290)
 	MisBeginAction(AddMission, 384)
	MisBeginAction(AddTrigger, 3841, TE_GETITEM, 4234, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Найдите <rДревние рукописи> для Жрицы Ады (862,3303)")
	MisNeed(MIS_NEED_ITEM, 4234, 1, 1, 1)

	MisResultTalk("<t>Я не думал что ты найдешь их так быстро.")
	MisHelpTalk("<t>Прошло больше месяца...возможно письмена уже пропали.")
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

-----------------------------------№эИҐ
	DefineMission( 557, " Потеря ", 384, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Древний журнал?Хм,где то я уже о нем слышал! ")
	MisResultCondition(NoRecord, 384)
	MisResultCondition(HasMission, 384)
	MisResultCondition(NoItem, 4234, 1)
	MisResultCondition(NoFlag, 384, 10)
	MisResultAction(SetFlag, 384, 10)

	
-----------------------------------------МЦХ®
      DefineMission(558," Требования оплаты ",386)

      MisBeginCondition(HasMission,380)
      MisBeginCondition(NoRecord,386)
      MisBeginCondition(NoMission,386)
 
      MisBeginTalk("<t>Что? Вы хотите помочь ме собрать долги? Это замечательно!Вот записная книжка.В ней все написано.")
      MisBeginAction(AddMission,386)
      MisBeginAction(GiveItem,0948,1,4)
      MisBeginBagNeed(1)
      MisCancelAction(SystemNotice, "Квест не может быть удален ") 

      MisNeed(MIS_NEED_DESP, "Соберите Долги с Кузнеца, Трактирщика , Луны, Юрия , Юноши - Облако , Диспетчера порта ") 
      
      MisHelpTalk("<t>Спасибо!Вы мне очень помогли.")
      
      MisResultTalk("<t>Спасибо!Вы мне очень помогли.")
    
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

      ----------------------------------МЦХ®      ЈЁОдцОЈ©
      DefineMission(567," Требования оплаты ",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>А...этот старый долг Санг Ди.Получите ее золото.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 100)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 100)
     


      ------------------------------------МЦХ®
       DefineMission(568," Требования оплаты ",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>OА...этот старый долг Санг Ди.Получите ее золото.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag,386,101)
      MisResultAction(AddMoney,100000)
      MisResultAction(SetFlag,386,101)
    


      ----------------------------------------БъЕ®µДХ®Ос
      DefineMission(569," Требования оплаты ",389)

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,389 )
      MisBeginCondition(NoMission,389 )
      MisBeginAction(AddMission,389)
      MisCancelAction(SystemNotice, "Квест не может быть удален ")

      MisBeginTalk("<t>А...этот старый долг Санг Ди.Получите ее золото.")
      
      MisNeed(MIS_NEED_DESP, "Вам нужно забрать долг у Ванг Мо ")

      MisHelpTalk("<t>Вам нужно забрать долг у Ванг Мо ")
       
     MisResultCondition(AlwaysFailure)

-------------------------------------------БъЕ®µДХ®Ос
     DefineMission(570," Требования оплаты ",389, COMPLETE_SHOW)

     MisBeginCondition(AlwaysFailure)

     MisResultTalk("<t>Вы здесь по поводу долга Санг Ди?Ах и еще по поводу трактирщика!ее")

     MisResultCondition(HasMission,389)
     MisResultCondition(NoRecord,389)
     MisResultCondition(HasMoney,200)
     MisResultAction(TakeMoney,200)
     MisResultAction(AddMoney,200000)
     MisResultAction(ClearMission, 389 )
     MisResultAction(SetRecord, 389 )
     


---------------------------------------------МЦХ®
     DefineMission(563," Требования оплаты ",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>Вы по поводу долга?Подождите неного...")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 102)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 102)



     ---------------------------------------------ФУ»хЙМИЛµДХ®Ос
      DefineMission(564," Требования оплаты ",391)

      MisBeginTalk("<t>Я верну вам долг , но мне нужны некоторые ингредиенты для билетов.")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,391)
      MisBeginCondition(NoMission,391)
      MisBeginAction(AddMission,391)
   
      MisBeginAction(AddTrigger, 3911, TE_GETITEM, 0176, 3 )		--ІРИ±µД№ьК¬Іј
      MisBeginAction(AddTrigger, 3912, TE_GETITEM, 0177, 3 )		--ЖЖЛрµД№ьК¬Іј
      MisBeginAction(AddTrigger, 3913, TE_GETITEM, 0178, 3 )		--НкХыµД№ьК¬Іј
      MisCancelAction(SystemNotice, "Квест не может быть удален")
      
      MisNeed(MIS_NEED_DESP, "Идите в подводный туннель и достаньте :Разорванная ткань для оборачивания тела е 3 шт,Поврежденная ткань для оборачивания тела е 3 шт,Целая ткань для оборачивания тела е 3 шт.")
      MisNeed(MIS_NEED_ITEM, 0176, 3, 10, 3)
      MisNeed(MIS_NEED_ITEM, 0177, 3, 20, 3)
      MisNeed(MIS_NEED_ITEM, 0178, 3, 30, 3)
      
      MisHelpTalk("<t>Вот мой долг.")  
      MisResultTalk("<t>Ха-ха!Теперь я сделаю много билетов!")
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

--------------------------------------------------------ёЫїЪЦё»УЎ¤ЛЄЖжµДХ®Ос
     DefineMission(565," Требования оплаты ",392)

      MisBeginTalk("<t>Ах,этот долг!Вы можете подождать несколько дней?Или же помогите.Мне нужно доставить груз в Громоград.")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,392)
      MisBeginCondition(NoMission,392)
      MisBeginAction(AddMission,392)
      MisBeginAction(GiveItem,0949,1,4)
      MisCancelAction(SystemNotice, "Квест не может быть удален ")
      MisBeginBagNeed(1)

      MisNeed(MIS_NEED_DESP, "Доставьте посылку в Громоград Морскому Командующему - Дессаро (713, 1416)")
      MisHelpTalk("<t>Что такое?")
       
      MisResultTalk("<t>Вы доставили груз?Отлично,вот мой долг " )
      MisResultCondition(HasRecord,392) 
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission,392 )
      MisResultAction(SetRecord,400)

  -------------------------------------------------------ёЫїЪЦё»УЎ¤ЛЄЖжµДХ®Ос

  DefineMission(566," Требования оплаты ",392, COMPLETE_SHOW )

      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>Хм,я вас раньше не видел!Но все равно,спасибо за доставленные припасы.")
      MisResultCondition(HasMission,392)
      MisResultCondition(NoRecord,392)
      MisResultCondition(HasItem,0949,1)
      MisResultAction(TakeItem,0949,1)
      MisResultAction(SetRecord,392)
      
       

   -----------------------------------------------------ГіТЧЙМИЛЎ¤УНАоµДХ®Ос

      DefineMission(572," Требования оплаты ",393)

      MisBeginTalk("<t> Я вернул бы вам долг,но Кицуне украли мои Хрустальные шары из личного запаса,и теперь я немогу обменять их на золото... ")

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,393)
      MisBeginCondition(NoMission,393)
      MisBeginAction(AddMission,393)
   
      MisBeginAction(AddTrigger, 3931, TE_GETITEM, 1864, 5 )		 
      MisCancelAction(SystemNotice, "Квест не может быть удален ")
      
      MisNeed(MIS_NEED_DESP, "Достаньте 5 Хрустальных шаров ")
      MisNeed(MIS_NEED_ITEM, 1864, 5, 10, 5)
      
      
      MisHelpTalk("<t>Убейте Кицуне")  
      MisResultTalk("<t>О!Спасибо!Вы мой спаситель.Вот ваш долг.")
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

--------------------------------------------ВЮЙ­
     DefineMission(571," Роланд ",394)
     MisBeginTalk("<t>Спасибо за собранные долги. <n> <T>  Чуть позже я переговорю с вами.")
     MisBeginCondition(HasRecord,386)
      MisBeginCondition(NoMission, 394)
     MisBeginCondition(NoRecord, 394)
     MisBeginAction(AddMission, 394)
     MisCancelAction(SystemNotice, "Квест не может быть удален ")

     MisNeed(MIS_NEED_DESP, "Сдайте Санг Ди золото.")
     MisHelpTalk("<t>Будте терпеливы!")
      MisResultTalk("<t>Все не так просто как вам кажется...")
     MisResultCondition(NoRecord, 394)
     MisResultCondition(HasMission, 394)
     MisResultAction(SetRecord, 394 )
     MisResultAction(ClearMission, 394 )

----------------------------------------Ч·Тд
	 DefineMission(592," О прошлом ",395)
	
	MisBeginTalk( "<t>Роланд был величайший пират в свое время, его очаровательная улыбка... Ахх! У меня начинает болеть голова,когда я вспоминаю об этом!. Возьмите эту ожерелье и продолжайте свои поиски.Я думаю постепенно вы разгадаете тайну.А сейчас вам лучше всего наведаться в Ледынь к целителю Дайше." )
	MisBeginCondition(NoRecord, 395)
	MisBeginCondition(NoMission, 395)
	MisBeginCondition(HasRecord,394)
	MisBeginAction(AddMission,395)
	MisBeginAction(GiveItem, 1051, 1, 4)	----------------ДЄР°ПоБґ	
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите Дайшу ")
	
	MisHelpTalk("<t>Спешите найти ее!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------Ч·Тд
	DefineMission(593, " О прошлом ", 395, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>О боже,эта бессонница сводит меня с ума...!")
	MisResultCondition(NoRecord, 395)
	MisResultCondition(HasMission,395)
	MisResultAction(ClearMission,395)
	MisResultAction(SetRecord, 395)
       -----------------------------------------------------ґпєХµД¶сГО
	DefineMission(594," Кошмар Дайшы ",396)
	
	MisBeginTalk( "<t>Я не спала уже неделю!Недавно у меня начались кошмары,но я не могла понять их смысла.Я думаю Фокус-Покус сможет выяснить что это за сны.Вы ведь поможете мне?" )
	MisBeginCondition(NoRecord, 396)
	MisBeginCondition(NoMission, 396)
	MisBeginCondition(HasRecord,395)
	MisBeginAction(AddMission,396)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите Фокус-Покуса ")
	
	MisHelpTalk("<t>Найдите его поскорее!")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------ґпєХµД¶сГО
	DefineMission(5065," Кошмар Дайшы ",396)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>У Дайши начались кошмары?О этого я и опасался больше всего...")
	MisResultCondition(NoRecord, 396)
	MisResultCondition(HasMission,396)
	MisResultAction(ClearMission,396)
	MisResultAction(SetRecord, 396)
	

---------------------------------------------------------------єьµАКїЧч№Ц
	DefineMission(595," Козни Лисьих даосистов ",397)

      MisBeginTalk("<t>Думаю все дело в проклятье Лиса...Убейте 10 Лисий даосистов ")

      MisBeginCondition(HasRecord,396)
      MisBeginCondition(NoRecord,397)
      MisBeginCondition(NoMission,397)
      MisBeginCondition(HasItem,1051,1)----------ДЄР°ПоБґ
      MisBeginAction(TakeItem,1051,1)
      MisBeginAction(AddMission,397)
      MisBeginAction(AddTrigger, 3971, TE_KILL, 748, 10)
   
      MisCancelAction(SystemNotice, "Квест не может быть удален ")
      MisNeed(MIS_NEED_DESP, "Убейте 10 Лисих даосистов ")
      MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)

      MisHelpTalk("<t>Убейте 10 Лисих даосистов  на о.Весны ")  
      MisResultTalk("<t>Вы неплохо справляетесь.")
      MisResultCondition(HasMission, 397 )
      MisResultCondition(HasFlag, 397, 19)
      MisResultAction(AddMoney,100000)
      MisResultAction(ClearMission, 397 )
      MisResultAction(SetRecord, 397)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 748 )
      TriggerAction( 1, AddNextFlag, 397, 10, 10 )
      RegCurTrigger( 3971 )
-------------------------------------------------------ОЄґпєХЅвГО
	DefineMission(5066," Кошмар Дайшы ",992)
	
	MisBeginTalk( "<t>Теперь тебе пора к Дайше...." )
	
	MisBeginCondition(HasRecord,397)
	MisBeginCondition(NoRecord, 992)
	MisBeginCondition(NoMission, 992)
	MisBeginAction(AddMission,992)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Навестить Дайшу ")
	
	MisHelpTalk("<t>Спасибо!Я никогда не забуду вашу помощь.")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------ОЄґпєХЅвГО
	DefineMission(5067," Кошмар Дайшы ",992)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Наконецто я смогу выспаться...примите это небольшое вонаграждение.")

	MisResultCondition(HasMission,992)
	MisResultCondition(NoRecord, 992)
	MisResultAction(ClearMission,992)
	MisResultAction(SetRecord, 992)
	MisResultAction(AddMoney,30000)

	------------------------------------------------------------ІјАцДИµД¶сГО
       DefineMission(596," Кошмар Белинды ",398)
	
	MisBeginTalk( "<t>Не могли бы вы мне помочь?Моя подруга Беледина...вообщем у нее тоже проблемы со сном." )
	MisBeginCondition(NoRecord, 398)
	MisBeginCondition(NoMission, 398)
	MisBeginCondition(HasRecord,992)
	MisBeginAction(AddMission,398)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите Белидину (1360, 519)")
	
	MisHelpTalk("<t>Вы нашли ее?")
	MisResultCondition(AlwaysFailure)
	----------------------------------------------ІјАцДИµД¶сГО
	 DefineMission(597," Кошмар Белинды ",398)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Дайша попросила вас разобраться?О я очень тронута.")
	MisResultCondition(NoRecord, 398)
	MisResultCondition(HasMission,398)
	MisResultAction(ClearMission,398)
	MisResultAction(SetRecord, 398)	
	------------------------------------------------ЅвѕИІјАцДИ
	 DefineMission(598," Кошмар Белинды ",399)
	
	MisBeginTalk( "<t>Несколько дней назад мне приснился кошмар.Я не помню!Чесно не помню что там было...расспросите пожалуйста Фокус-Покуса,возможно он сможет помочь." )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 399)
	MisBeginCondition(HasRecord,398)
	MisBeginAction(AddMission,399)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите Фокус-Покуса ")
	
	MisHelpTalk("<t>Вы еще не нашли его?")

	MisResultTalk("<t>Спасибо.Вы очень добры.Подождите!Несколько минут назад я слышала что Фокус-Покус ищет вас.")
	MisResultCondition(NoRecord, 399)
	MisResultCondition(HasMission,399)
	MisResultCondition(HasRecord,950)
	MisResultAction(ClearMission,399)
	MisResultAction(SetRecord, 399)

	--------------------------------------------------------БйТмЛ®ѕ§Зт
	DefineMission( 599, " Кошмар Белинды ", 996 )

	MisBeginTalk( "<t>Хм..эти кошмары...это не просто совпадения!Думаю мне понадобится хрустальное око.Принесите мне 2 шт - Лазурный кристалл и 3 шт - Идеальный кристалл. ")------------++++++
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoRecord, 996)
	MisBeginCondition(NoMission, 996)
	MisBeginCondition(HasMission,399)
	MisBeginAction(AddMission, 996)
	MisBeginAction(AddTrigger, 9961, TE_GETITEM, 3366,2 )		--А¶Й«Л®ѕ§
	MisBeginAction(AddTrigger, 9962, TE_GETITEM, 1635, 3 )		--Л®ѕ§ґїКЇ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

        MisNeed(MIS_NEED_DESP, "Достаньте 2 шт - Лазурный кристалл и 3 шт - Идеальный кристалл.")
	MisNeed(MIS_NEED_ITEM, 3366,2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1635, 3, 20, 3)


	MisResultTalk("<t>Я предсказывал , что вы вернетесь , но не думал что так быстро!")
	MisHelpTalk("<t>Что случилось?Я не думаю что эта сложная задача...")
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

	----------------------------------------------------------------------------єьСэЧч№Ц
	DefineMission( 5000, " Кошмар Белинды ", 950 )

	MisBeginTalk( "<t>Существа на острове Весны как будто взбесились!Эти кошмары вызваны Кицуне.Думаю если вы убьете 5 Кицуне они станут более разумными." )
	MisBeginCondition(NoRecord, 950 )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 950 )
	MisBeginCondition(HasRecord,996)-----------------
	MisBeginAction(AddMission,  950 )
	MisBeginAction(AddTrigger,  9501, TE_KILL,761, 5 )	----------єьСэ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	
	MisNeed(MIS_NEED_DESP, "Убейте 5 Кицуне ")
	MisNeed(MIS_NEED_KILL,761,5, 10, 5)

	MisResultTalk("<t>Возвращайтесь к Беледине ")
	MisHelpTalk("<t>Хм...вы точно убили 5 Кицуне?")
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

---------------------------------------------------------------------єьПЙЧч№Ц

	DefineMission( 5001, " Кошмар Белинды ", 951 )

	MisBeginTalk( "<t>Это все так странно!Да...мне кажется что вам надо убить 1 Мудрого Лиса и все закончится." )--------++++++0
	MisBeginCondition(NoRecord, 951 )
	MisBeginCondition(HasRecord, 399)
	MisBeginCondition(NoMission, 951 )
	MisBeginAction(AddMission,  951)
	MisBeginAction(AddTrigger,  9511, TE_KILL, 776, 1 )----------------єьПЙ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте Мудрого Лиса")
	MisNeed(MIS_NEED_KILL,776,1, 10, 1)

	MisResultTalk("<t>Мудрый лис очень опасен и хитер!Желаю вам удачи ")
	MisHelpTalk("<t>Будте осторожнее.")
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

-----------------------------------------------------------------------ЦШґуГШГЬ

	DefineMission( 5002, " Большой секрет ",952 )

	MisBeginTalk( "О-о...я вижу вы держите в себе огромную тайну. Помогите мне , а я помогу вам.Убейте 1 Циклоническую Медузу." )
	MisBeginCondition(NoRecord,952 )
	MisBeginCondition(HasRecord, 951)
	MisBeginCondition(NoMission,952 )
	MisBeginAction(AddMission, 952)
	MisBeginAction(AddTrigger,9521, TE_KILL, 621, 1 )		----СёЅЭµД±©·зЛ®Дё
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	 MisNeed(MIS_NEED_DESP, "Убейте 1 Циклоническую Медузу в Магическом океане.")----------++++1
	MisNeed(MIS_NEED_KILL,621,1, 10, 1)

	MisResultTalk("<t>Минутку...")
	MisHelpTalk("<t>Думаю вам следует посетить это место (3750, 1275)")
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
------------------------------------------------------------------ВЮЙ­ѕ«Йс

	DefineMission( 5003, " Дух Роланда ", 953)
	
	MisBeginTalk( "<t>Я восхищаюсь такими смелыми людьми как вы.Если вы  хотите узнать больше , то поговорите с Санг Ди на о.Весны.")
	MisBeginCondition(NoRecord, 953 )
	MisBeginCondition(HasRecord, 952)
	MisBeginCondition(NoMission, 953 )
	MisBeginAction(AddMission, 953 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Санг Ди ")
	MisHelpTalk("<t>Она поможет вам.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------ВЮЙ­ѕ«Йс

	DefineMission(5004," Дух Роланда ",953,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Охх как же мне надоели эти слухи о Роланде (кстате я тож заипалсо переводить :o)")
	MisResultCondition(HasMission, 953)
	MisResultCondition(NoRecord, 953)
	MisResultAction(ClearMission, 953)
	MisResultAction(SetRecord, 953)

-----------------------------------------------------ЦОБЖЕбµЩ

	DefineMission( 5005, " Исцеление Санг Ди ", 954 )

	MisBeginTalk( "<t>Мне казалось, что болезней стало на порядок меньше.Думаю если я получу <rМантию целительницы> то смогу вылечить последних  пациентов." )
	MisBeginCondition(NoRecord, 954)
	MisBeginCondition(HasRecord,  953)
	MisBeginCondition(NoMission, 954)
	MisBeginAction(AddMission,  954)
	MisBeginAction(AddTrigger,  9541, TE_GETITEM,  0376,1 )		
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	 MisNeed(MIS_NEED_DESP, "Достаньте <rМантию целительницы> ")
	MisNeed(MIS_NEED_ITEM,  0376,1, 10, 1)
	
	MisResultTalk("<t>Спасибо за помощь.")
	MisHelpTalk("<t>Портной Мойа в Шайтане (894, 3602) поможет вам ")-------------------+++++2
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

------------------------------------------------------------------Д§Б¦№ЗН··Ы

	DefineMission( 5006, "Волшебная костная мука.", 955 )

	MisBeginTalk( "<t>Нося этот халат,я чутвую себя более лучше!Но мне нужно Принесите мне нужно несколько лекарств.Вы ведь поможете мне собрать ингедиенты?Мне надо Волшебная кость е 3шт ." )
	MisBeginCondition(NoRecord,  955)
	MisBeginCondition(HasRecord,  954)
	MisBeginCondition(NoMission, 955)
	MisBeginAction(AddMission,  955)
	MisBeginAction(AddTrigger,  9551, TE_GETITEM,  1626,3 )		
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	 MisNeed(MIS_NEED_DESP, "Найдите Волшебная кость 3шт ")
	MisNeed(MIS_NEED_ITEM,  1626,3, 10, 3)
	
	MisResultTalk("<t>О!Я не думала что вы придете так быстро.")
	MisHelpTalk("<t>Кость найти достаточно сложно.....")--------------------++++++3
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
------------------------------------------------------------------------ёЯј¶УЄСшЖ·

	DefineMission( 5007, " Очень питательный продукт ", 956)

	MisBeginTalk( "<t>Помоги мне найти Рог химеры." )
	MisBeginCondition(NoRecord,  956)
	MisBeginCondition(HasRecord,  955)
	MisBeginCondition(NoMission, 956)
	MisBeginAction(AddMission,  956)
	MisBeginAction(AddTrigger,  9561, TE_GETITEM,  4783,1 )		
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принеси 1 рог химеры ")
	MisNeed(MIS_NEED_ITEM,  4783,1, 10, 1)
	
	MisResultTalk("<t>Да,это то что надо!")
	MisHelpTalk("<t>Неужели это так сложно?")
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
---------------------------------------------------------------------------ТЕНьµД№эИҐ
	 DefineMission(5008," Забытое Прошлое ",957)
	
	MisBeginTalk( "<t>Думаю вам следует поговорить с Жрецом Геньоном в Шайтане " )
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(NoMission, 957)
	MisBeginCondition(HasRecord,956)
	MisBeginAction(AddMission,957)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите Геньона (862, 3500) В Шайтане.")
	
	MisHelpTalk("<t>Найдите Геньона (862, 3500) В Шайтане. ")
		
	MisResultTalk("<t>Я помогу вам решить ваши проблемы,но сначала вы поможете мне!")
	MisResultCondition(NoRecord, 957)
	MisResultCondition(HasMission, 957)
	MisResultCondition(HasRecord, 999)---
	MisResultAction(ClearMission, 957)
	MisResultAction(SetRecord,  957 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)


------------------------------------------------------------------------їЛВЎЦ®»Ш»кМАЈЁ1Ј©

	DefineMission(5009,"Memory Soup",958)
	
	MisBeginTalk( "<t>Вы хотите вспомниь ваше прошлое?Чтож я помогу вам.Вам потребуется <rСуп Памяти>....Хм,его не так то легко приготовить!Рецепт должен быть у <b Принца тритона Хассана>." )
	MisBeginCondition(NoRecord, 958)
	MisBeginCondition(NoMission, 958)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,1)
	MisBeginAction(AddMission,958)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите Принца Хассана и получите формулу супа.")
	
	MisHelpTalk("<t>По слухам принц Хассан находился недалеко от берега (1254, 3491)")
	MisResultTalk("<t>Закройте глаза и выпейте.е<n> <T>Вы  родились на острове Демонов.Рождены от двух людей, воспитаны древними войнами-морфейцами которые обучили  тебя виртуозному обращению с оружием и блестящими навыками в море.")
	
	MisResultCondition(NoRecord, 958)
	MisResultCondition(HasRecord, 962)
	MisResultCondition(HasMission, 958)
	MisResultCondition(HasItem, 1043, 1 )--------»Ш»кМА
	MisResultAction(TakeItem,  1043, 1 )
	MisResultAction(ClearMission, 958)
	MisResultAction(SetRecord,  958 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	
---------------------------------------------------------------------------СЄКЇЈЁ1Ј©

	DefineMission(5010," Кровавый камень ",959)
	
	MisBeginTalk( "<t>Рецепт супа Памяти является семейной тайной.Я не дам вам его так легко.Но если вы поможете мне , то я помогу вам.Не так давно я выяснил о кровавом камне ,а так же что он находится у <bСупермуна>.Как только найдете камень,то возвращайтесь ко мне!" )
	MisBeginCondition(NoRecord, 959)
	MisBeginCondition(NoMission, 959)
	MisBeginCondition(HasMission, 958)
	MisBeginCondition(NoRecord,958)
	MisBeginAction(AddMission,959)

	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Распросите у Супермуна о Кровавом камне ")
	
	MisHelpTalk("<t>Супермун находится в Магическом океане ")
	

	MisResultTalk("<t>Супермун идиот! (сказал тритон в форме телки =3) Он не знает всей силы этого камня!Ох...глупец")
	MisResultCondition(NoRecord, 959)
	MisResultCondition(HasMission, 959)
	MisResultCondition(HasRecord, 960)
	MisResultCondition(HasItem, 1040, 1)
	MisResultAction(TakeItem, 1040, 1 )
	MisResultAction(ClearMission, 959)
	MisResultAction(SetRecord,  959 )

	
---------------------------------------------------------------------------СыЗлєЇЈЁ1Ј©

	DefineMission( 5011, " Приглашение ", 960 )
	
	MisBeginTalk( "<t>Я должен оказать уважение Принцу Хассану.Но камень находится у банкира Юдис,а я как раз хотел пригласить ее.Отнесите ей приглашение а взамен она даст вам Кровавый камень." )
	MisBeginCondition(NoRecord, 960)
	MisBeginCondition(HasMission, 959)
	MisBeginCondition(NoMission,960)
	MisBeginCondition(NoRecord,959)
	MisBeginAction(AddMission, 960)
	MisBeginAction(GiveItem, 1041, 1, 4)	----------СыЗлєЇ	
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Отнесите приглашение банкиру Юдис в Шайтане.")
	
	MisHelpTalk("<t>Почему вы не идете?")
	MisResultCondition(AlwaysFailure)
	
-----------------------------------------------------------------------СыЗлєЇЈЁ1Ј©

	DefineMission(5012," Приглашение ",960,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Хе-хе!Получи свой камень.")
	MisResultCondition(NoRecord, 960)
	MisResultCondition(HasMission, 960)
	MisResultCondition(HasItem, 1041, 1)
	MisResultAction(TakeItem, 1041, 1 )
	MisResultAction(GiveItem, 1040, 1,4)--------------СЄКЇ
	MisResultAction(ClearMission, 960 )
	MisResultAction(SetRecord,  960 )
	MisResultBagNeed(1)

	-----------------------------------------------------------------»Ш»кМАТ©·Ѕ(1) 
	DefineMission(5014, " Рецепт Супа Памяти ", 961 )

	MisBeginTalk( "<t>Состав супа Памяти достаточно простой:10 шт - часть черной арабской жемчужины,1 шт - толстый хвост прозрачного выползня.Найдите эти ингредиенты , а я пока подготовлюсь. " )
	MisBeginCondition(NoRecord, 961)
	MisBeginCondition(HasRecord, 959)
	MisBeginCondition(NoMission, 961)
	MisBeginAction(AddMission, 961)
	MisBeginAction(AddTrigger, 9611, TE_GETITEM, 1234,10)		
	MisBeginAction(AddTrigger, 9612, TE_GETITEM, 1260, 1 )
	
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	 MisNeed(MIS_NEED_DESP, "Найдите 10 шт - часть черной арабской жемчужины,1 шт - толстый хвост прозрачного выползня.")
	MisNeed(MIS_NEED_ITEM, 1234,10, 10,10)
	MisNeed(MIS_NEED_ITEM, 1260, 1, 20, 1)
	
	MisResultTalk("<t>Отлично!Но помните этот рецепт не должен знать никто больше!Иначе вы поплатитесь жизнью.")
	MisHelpTalk("<t>Я начинаю в вас сомневаться...хотя...")
	MisResultCondition(HasMission,961)
	MisResultCondition(NoRecord, 961)
	MisResultCondition(HasItem, 1234, 10 )
	MisResultCondition(HasItem, 1260, 1 )
	
	MisResultAction(TakeItem, 1234, 10 )
	MisResultAction(TakeItem, 1260, 1 )
	
	MisResultAction(ClearMission, 961)
	MisResultAction(SetRecord, 961 )
	MisResultAction(GiveItem, 1043, 1, 4)-------»Ш»кМА
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
	
	
------------------------------------------------------ЅµОВєЪХдЦй(1) 

	DefineMission( 5015, " Черная жемчужина ", 962 )

	MisBeginTalk( "<t>Никогда бы не подумал что Принц так легко вадст вам рецепт. Ах! Я почти забыл самое важное. Суп памяти очень горячий.Но выпить его надо только после охлаждения....а на это могут уйти столетия Вам нужно будет получить 1 <Черная жемчужинаl>, она обладает уникальными свойствами понижения темератур." )
	MisBeginCondition(NoRecord,  962)
	MisBeginCondition(HasRecord,  961)
	MisBeginCondition(NoMission,962)
	MisBeginAction(AddMission,  962)
	MisBeginAction(AddTrigger,  9621, TE_GETITEM,  3362,1)--------єЪХдЦй		
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Достаньте 1 Черную жемчужину ")
	MisNeed(MIS_NEED_ITEM,  3362,1, 10, 1)
	
	MisResultTalk("<t>Использование Черной жемчужины очень важная часть приготовления супа.!")
	MisHelpTalk("<t>Говорят в шлем Кицуне украшает Черная жемчужина.")-------------------++++++++4
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



------------------------------------------------------------------Е®ЙсµД»щТтЦ®ЅЎТдЅєДТЈЁ2Ј©
	DefineMission(5017," Капсула Памяти ",963)
	
	MisBeginTalk( "<t>Вы хотите вспомнить свое прошлое?Чтож...я помогу вам.Вам нужно получить рецепт Капсулы памяти.А знает его только Таинственная Бабушка." )
	MisBeginCondition(NoRecord, 963)
	MisBeginCondition(NoMission, 963)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,3)----·ЖАы¶ы
	MisBeginAction(AddMission,963)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найтиде Таинственную Бабушку и распросите о Капсуле памяти")
	
	MisHelpTalk("<t>Таинственная Бабушка должна быть в Аргенте (2159, 2792).")
	MisResultTalk("<t>Капсула у вас?Ну чтож <n> <T> Закройте глаза и выпейте ее.Вы - талантливая морячка с генами богини.Родились в королевской семье и потому хорошо разбираетесь в морском деле. Божественное происхождение даже помогло  победить вам в морском соревновании, проводившемся в крепости Громограде.....А теперь найдите Санг Ди") 
	MisResultCondition(NoRecord, 963)
	MisResultCondition(HasMission, 963)
	MisResultCondition(HasRecord, 967)
	MisResultCondition(HasItem,  1050, 1 )-------ЅЎТдЅєДТ
	MisResultAction(TakeItem,  1050,1 )
	MisResultAction(ClearMission, 963)
	MisResultAction(SetRecord,  963 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

--------------------------------------------------------------------АбЦ®зъзкЈЁ2Ј©
	DefineMission(5018," Янтарная Слеза ",964)

	MisBeginTalk( "<t>Оооо вы первая кто за последнее время спрашивает о капсуле Памяти. Но получить ее могут только очень добрые люди. <n> <T> Доставьте Янтарную слезу Ланге в Шайтан и я подумаю о вашей доброте.")
	MisBeginCondition(NoRecord, 964)
	MisBeginCondition(NoMission, 964)
	MisBeginCondition(HasMission, 963)
	MisBeginCondition(NoRecord,963)
	MisBeginAction(AddMission,964)
	MisBeginAction(GiveItem, 2303, 1, 4)---------+++++????
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)	
	MisNeed(MIS_NEED_DESP, "Доставтье слезу Ланге в Шайтан (852, 3549).")
	
	MisHelpTalk("<t>Не понимаю...зачем людям пытаться узнать свое прошлое.")
	
	MisResultCondition(AlwaysFailure)
	----------------------------------------------------------------------АбЦ®зъзкЈЁ2Ј©
	DefineMission(5019," Янтарная Слеза ",964,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Спасибо. Я знаю, что она не слишком хорошо себя чуствует.")
	MisResultCondition(NoRecord, 964)
	MisResultCondition(HasMission, 964)
	MisResultCondition(HasItem,2303, 1)-------------++++++???
	MisResultAction(TakeItem, 2303, 1 )-------------++++++????
	MisResultAction(ClearMission,964)
	MisResultAction(SetRecord,  964)
	MisResultAction(AddMoney,80000,80000)	
		
	

---------------------------------------------------------------І№ёЖЈЁЈІЈ©


	DefineMission( 5020, " Восстановление Кальция ", 965)

	MisBeginTalk( "<t>Ооо мне нужно больше кальция!Достаньте 1 Спин. плавник аметист. дельфина " )--------------+++++5
	MisBeginCondition(NoRecord,  965)
	MisBeginCondition(HasRecord,  964)
	MisBeginCondition(NoMission,965)
	MisBeginAction(AddMission,  965)
	MisBeginAction(AddTrigger,  9651, TE_GETITEM,  1296,1)	
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Достаньте 1 Спин. плавник аметист. дельфина ")
	MisNeed(MIS_NEED_ITEM,  1296,1, 10, 1)
	
	MisResultTalk("<t>Смелость-хорошее качество!")
	MisHelpTalk("<t>Я пожилой человек...")
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

--------------------------------------------------ёґ»оТ¶ЈЁЈІЈ©
	DefineMission(5021, " Оживляющий Клевер ", 966 )

	MisBeginTalk( "<t>Мне нужен 1 Оживляющий клевер.С ним зелье становиться не такое горькое...")
	MisBeginCondition(NoRecord,  966 )
	MisBeginCondition(HasRecord,  965)
	MisBeginCondition(NoMission, 966 )
	MisBeginAction(AddMission,  966 )
	MisBeginAction(AddTrigger,  9661, TE_GETITEM,  3143,1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

        MisNeed(MIS_NEED_DESP, "Мне нужен 1 Оживляющий клевер.С ним зелье становиться не такое горькое...")
	MisNeed(MIS_NEED_ITEM,  3143,1, 10, 1)
	
	MisResultTalk("<t>Купите клевер у целителей.")
	MisHelpTalk("<t>Купите клевер у целителей.")-----------------------++++++++6
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

--------------------------------------------------------------------------------------ё±ЧчУГ(2)
	DefineMission( 5022, " Побочный эффект ", 967 )

	MisBeginTalk( "<t>Скажу вам правду.Капсула уже готова ,но вспоминая прошлое вы забываете настоящее.Что бы этого избежать нам понадобится Темная кровь выползня  - 1 шт")------------------++++++++7
	MisBeginCondition(NoRecord,  967)
	MisBeginCondition(HasRecord,  966 )
	MisBeginCondition(NoMission, 967)
	MisBeginAction(AddMission,  967)
	MisBeginAction(AddTrigger,  9671, TE_GETITEM,  1351,1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	
	MisNeed(MIS_NEED_DESP, "Найдите Темную кровь выползня  - 1 шт ")
	MisNeed(MIS_NEED_ITEM,  1351,1, 10, 1)
	
	MisResultTalk("<t>Вы сделали это!Но никому не говорите мою тайну...")
	MisHelpTalk("<t>Найдите Темную кровь выползня  - 1 шт")
	MisResultCondition(HasMission, 967)
	MisResultCondition(NoRecord, 967)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultAction(TakeItem,  1351,1 )
	MisResultAction(ClearMission, 967)
	MisResultAction(SetRecord,  967)
	MisResultAction(GiveItem, 1050, 1, 4)-------ЅЎТдЅєДТ
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 967, 10, 1 )
	RegCurTrigger( 9671 )


		
	
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------»мСЄ¶щЦ®ГААц№эНщ(3) 
	DefineMission(5024," Красивое прошлое ",968)
	
	MisBeginTalk( "<t>Вы хотите вспомнить прошлое?Ну чтож я помогу вам.Найдите Минелли , она может поделиться с вами советами." )
	MisBeginCondition(NoRecord, 968)
	MisBeginCondition(NoMission, 968)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,2)
	MisBeginAction(AddMission,968)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите Минели в Шайтане (1244,3186)")
	
	MisHelpTalk("<t>Найдите Минели в Шайтане (1244,3186)")
	MisResultTalk("<t>Закройте глаза и выпейте. <n> <T> Вы дитя человека и морфейца.Вышим отцом был единственный представитель народа Морфей, которому удалось пережить набег на свое поселение, а мать была простой женщиной из близлежащей рыбацкой деревушки. Когда вам исполнилось двенадцать лет, тайна вашего происхождения раскрылась, и вы были вынужден пуститься в долгие странствия. <n> <T> А теперь найдите Санг Ди.") 
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
---------------------------------------------------ЙХ№эµДАЇЦт(3)
	DefineMission(5025, " Свеча ", 969 )

	MisBeginTalk( "<t>Вы здесь, чтобы узнать о вашем прошлом?Извените..но я немогу вам помочь.Хотя если вы достанете мне Использованную свечу..." )------------------++++++8
	MisBeginCondition(NoRecord,  969)
	MisBeginCondition(HasMission, 968)
	MisBeginCondition(NoRecord,  968)
	MisBeginCondition(NoMission, 969)
	MisBeginAction(AddMission,  969)
	MisBeginAction(AddTrigger,  9691, TE_GETITEM,  4823,1)
	MisCancelAction(SystemNotice, "T202вест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Отнесите Использованную свечи Милинне ")
	MisNeed(MIS_NEED_ITEM,  4823,1, 10, 1)
	
	MisResultTalk("<t>А вы не глуп!")
	MisHelpTalk("<t>Свеча....")
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

---------------------------------------------------------ёґФ­НщКВ(3)
	DefineMission(5026," Восстановить прошлое! ",970)
	
	MisBeginTalk( "<t>Мы нашли свечу. Но мне нужно зелье восстановления.Говорят Дитто знает рецепт по его изготовлению " )
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 970)
	MisBeginCondition(HasRecord, 969)
	MisBeginAction(AddMission,970)
	MisBeginAction(AddTrigger,  9701, TE_GETITEM,  1042,1)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Получите Зелье реставрации ")
	
	MisHelpTalk("<t>Спросите про зелье у Дитто в Аргенте.")
	MisResultTalk("<t>О-ооо.Это зелье напоминает мне о любовных напитках.А вы пока что сходите к Жрецу Ганнону.")
	MisResultCondition(HasMission,970)
	MisResultCondition(NoRecord, 970)
	MisResultCondition(HasRecord, 971)
	MisResultCondition(HasItem,1042, 1 )----------ёґФ­јБ
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 970)
	MisResultAction(SetRecord, 970)
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1042)	
	TriggerAction( 1, AddNextFlag, 970, 10, 1 )
	RegCurTrigger(9701 )

	--------------------------------------------------ёґФ­јБФ­БП(3)

	DefineMission( 5027, " Ингредиенты для зелья Реставрации ", 971 )

	MisBeginTalk( "<t>Ивини , но весь запас зелья кончился.Да и я был очень занят что бы сварить новую порцию... Если вы не можете принести мне:Темная кровь выползня - 1 шт,Чай Бодрячок - 3 шт,Стимулятор - 3 шт.")-------------++++++9
	MisBeginCondition(NoRecord, 971 )
	MisBeginCondition(HasMission, 970)
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 971)
	MisBeginAction(AddMission, 971 )
	MisBeginAction(AddTrigger, 9711, TE_GETITEM, 1351,1)		
	MisBeginAction(AddTrigger, 9712, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9713, TE_GETITEM, 3147, 3 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите Дитто:Темная кровь выползня - 1 шт,Чай Бодрячок - 3 шт,Стимулятор - 3 шт.")
	MisNeed(MIS_NEED_ITEM, 1351,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM,  3147,3, 30, 3)

	MisResultTalk("<t>Спасибо!Вы собрали все,я немедленно начну варку.")
	MisHelpTalk("<t>Я буду требоавать свехурочные!")
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
	--------------------------------------------------------------КН·Е°®Зй(3)
	DefineMission( 5028, " Любовная часть ", 972)
	
	MisBeginTalk( "<t><bМинелли> должно быть очень несчасна. Вы действительно очень жестоки с ней. Если ваше счастье основано на ее боли, то я вам не собираюсь вам помагать.Подарите ей Лотус." )
	MisBeginCondition(NoRecord, 972)
	MisBeginCondition(HasRecord, 971)
	MisBeginCondition(NoMission, 972)
	MisBeginCondition(HasItem, 1042, 1 )
	MisBeginAction(AddMission, 972)
	MisBeginAction(GiveItem, 1054, 1, 4)		
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Подарите Миллени Лотус в знак расскаяния.")
	
	MisHelpTalk("<t>Найдите Миллени  (1244, 3186)")
	MisResultCondition(AlwaysFailure)
------------------------------------------------------------------КН·Е°®Зй(3)
	DefineMission(5029, " Любовная часть ", 972 ,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>О-о-о.Я так тронута...") 
	MisResultCondition(NoRecord, 972)
	MisResultCondition(HasMission, 972)
	MisResultCondition(HasItem, 1054, 1 )
	MisResultAction(TakeItem, 1054, 1 )
	MisResultAction(ClearMission, 972)
	MisResultAction(SetRecord,  972)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------µ®ЙъЦ®М«ј«КЇ(4)

	DefineMission(5031," Сера ",973)
	
	MisBeginTalk( "<t>Вы хотите вспомнить свое прошлое?Ну чтож я помагу вам....Найдите Лангу в Шайтане и расспросите ее о Серном веществе.." )----------------++++++10
	MisBeginCondition(NoRecord, 973)
	MisBeginCondition(NoMission, 973)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,4)
	MisBeginAction(AddMission,973)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Найдите Лангу в Шайтане  (853, 3549).")
	
	MisHelpTalk("<t>Найдите Лангу в Шайтане  (853, 3549) ")
	MisResultTalk("<t>Закройте глаза.... Вы - Ами.Несмотря на то, что внешне вы выглядите как обычное человеческое дитя, вам никогда не суждено вырасти и состариться благодаря особым, уникальным генам.Ваш арсенал способностей довольно широк, но ценят вас, прежде всего, ценят за умение общаться с окружающим миром, исцелять самые сложные раны и изобретать предметы, ранее не существовавшие в этом мире. <n> <T> А теперь найдите Санг Ди.") 
	MisResultCondition(NoRecord, 973)
	MisResultCondition(HasMission, 973)
	MisResultCondition(HasRecord,  977)
	MisResultCondition(HasItem, 1045, 1)----------ТхКЇ
	MisResultCondition(HasItem, 1048, 1)-----------СфКЇ
	MisResultAction(TakeItem,  1045, 1 )
	MisResultAction(TakeItem,  1048, 1 )
	MisResultAction(ClearMission, 973)
	MisResultAction(SetRecord,  973 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
------------------------------------------------------іПРЕІШ±¦Нј
	DefineMission(5032," Карта Сокровищ Набожности ",974)
	
	MisBeginTalk( "<t>Вы здесь для того, чтобы попросить у меня Серного вещества?Ооооо я бы с радостью вам помог но я забыл основную часть ингредиентов...Я уверен что вам поможет Принц-Тритон.Принесите ему карту в обмен на данные по приготовлению Серного вещества." )
	MisBeginCondition(NoRecord, 974)
	MisBeginCondition(NoMission,974)
	MisBeginCondition(HasMission, 973)
	MisBeginCondition(NoRecord,973)
	MisBeginAction(GiveItem, 1053, 1, 4)------іПРЕІШ±¦Нј
	MisBeginAction(AddMission,974)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	--MisBeginAction(AddTrigger, 9741, TE_GETITEM, 1044,1)
	MisBeginBagNeed(1)	
		
	MisNeed(MIS_NEED_DESP, "Отнесите карту Принцу-Тритону ")
	
	MisHelpTalk("<t>Ходят слухи что принц может управлять лягушками!")
	
	MisResultCondition(AlwaysFailure)

	------------------------------------------іПРЕІШ±¦Нј

	DefineMission(5033," Карта Сокровищ Набожности ",974,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>На самом деле , то что вы мне дали не карта а просто кусок бумаги-доверителя.Я расскрою вам секрет: Сера состоит из <yЛунного камся> и <yКампя солнца>. Только 3 человека знают где какой кусок можно достать.У меня есть 1 Лунный камень,примите его от меня в подарок.")
	MisResultCondition(NoRecord, 974)
	MisResultCondition(HasMission,974)
	MisResultCondition(HasItem,1053, 1)
	MisResultAction(TakeItem, 1053, 1 )
	MisResultAction(ClearMission, 974)
	MisResultAction(SetRecord, 974)
	MisResultAction(GiveItem, 1045, 1, 4)--------ТхКЇ
	MisResultBagNeed(1)
	--------------------------------------------------СфКЇµДПВВд
	DefineMission(5034," Поиски Солнечного Камня ",975)
	
	MisBeginTalk( "<t>Вы можете узнать о Солнечном камне у  <bДитто>...Подождите! Возьмите это <yРекомендательное письмо> как доказательство." )
	MisBeginCondition(NoRecord, 975)
	MisBeginCondition(NoMission, 975)
	MisBeginCondition(HasRecord, 974)
	MisBeginAction(GiveItem, 1046, 1, 4)-------НЖјцРЕ
	MisBeginAction(AddMission,975)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Дитто ")
	
	MisHelpTalk("<t>Найдите Дитто (2250, 2770) ")
	MisResultCondition(AlwaysFailure)

--------------------------------------------------СфКЇµДПВВд
	DefineMission(5035," Поиски Солнечного Камня ",975,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Очень мало любей знают секрет Серного вечества.Кто вам подсказал?.")
	MisResultCondition(NoRecord, 975)
	MisResultCondition(HasMission,975)
	MisResultCondition(HasItem,1046, 1)
	MisResultAction(TakeItem, 1046, 1 )
	MisResultAction(ClearMission, 975 )
	MisResultAction(SetRecord, 975)
	----------------------------------------------СшСЫЛ®

	DefineMission( 5036, " Слеза ", 976 )

	MisBeginTalk( "<t>Поскольку вы готовы показать себя , не буду больше болтать.Солнечный камень излучает очень яркий свет который вреден для глаз.Нам нужно сделать раствор под названием Слеза. Найдите несколько ингредиентов:Чай Бодрячок - 3 шт.Сильный,Спиной Плавник -1 шт,Чистая Вода - 10 шт." )
	MisBeginCondition(NoRecord, 976 )
	MisBeginCondition(HasRecord, 975)
	MisBeginCondition(NoMission, 976)
	MisBeginAction(AddMission, 976 )
	MisBeginAction(AddTrigger, 9761, TE_GETITEM, 1362,1)		
	MisBeginAction(AddTrigger, 9762, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9763, TE_GETITEM, 1649, 10 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Найдите несколько ингредиентов:Чай 'Бодрячок' - 3 шт.Сильный,Спиной Плавник -1 шт,Чистая Вода - 10 шт.")
	MisNeed(MIS_NEED_ITEM, 1362,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1649,10, 30, 10)

	MisResultTalk("<t>Отлично!Так пару минут...Вот!Держите.Теперь секретарь Аргента не будет против.")
	MisHelpTalk("<t>Пожалуйста, найдите все ингредиенты.")
	MisResultCondition(HasMission, 976 )
	MisResultCondition(NoRecord, 976)
	MisResultCondition(HasItem, 1362, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,1649, 10)
	
	MisResultAction(TakeItem, 1362, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,1649, 10 )
	
	MisResultAction(GiveItem, 1047, 1, 4)------------- СшСЫЛ®
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

--------------------------------------------------------------------------ЛкФВЦ®іѕ
	DefineMission(5037, " Пыль столетия ", 977)

	MisBeginTalk( "<t>Ооо вы первый кто за последние 100 лет ищет Камень слонца.Я дам вам его если вы принесете мне ееСаван - 1 шт " )
	MisBeginCondition(NoRecord,  977)
	MisBeginCondition(HasRecord,  976)
	MisBeginCondition(NoMission, 977)
	MisBeginCondition(HasItem, 1047, 1 )
	MisBeginAction(TakeItem, 1047, 1 )
	MisBeginAction(AddMission,  977)
	MisBeginAction(AddTrigger,  9771, TE_GETITEM,  4782,1 )		
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " 207ринесите мне Саван ")
	MisNeed(MIS_NEED_ITEM,  4782,1, 10, 1)
	
	MisResultTalk("<t>Отлично!Думаю вам пора наведаться к Геньону ")
	MisHelpTalk("<t>О говорят Древнии мумии обмотаны саванами ")
	MisResultCondition(HasMission,  977)
	MisResultCondition(HasItem, 4782, 1)
	MisResultAction(TakeItem,  4782, 1 )
	MisResultAction(GiveItem, 1048, 1, 4)------------- СфКЇ
	MisResultAction(ClearMission,  977)
	MisResultAction(SetRecord,  977 )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,4782)	
	TriggerAction( 1, AddNextFlag, 977, 10, 1 )
	RegCurTrigger( 9771 )


	--------------------------------------------------Д§Цд

	DefineMission( 5043, " Магическое проклятье ", 978)

	MisBeginTalk( "<t>У меня есть брат,и недавно его отравили каким то ядом. Я слышал, что близкий друг  <bМаса> по координатам (1346, 451) в Ледыни тоже пострадал.Вы поможете найти мне лекарство?" )
	MisBeginCondition(NoRecord,  978)
	MisBeginCondition(HasRecord, 957)
	MisBeginCondition(NoMission, 978)
	MisBeginAction(AddMission, 978)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisNeed(MIS_NEED_DESP, "Поговорите с Масом ")

	MisResultTalk("<t>Ах ... Это чудесно!Теперь мой брат будет излечен. Спасибо!")
	MisHelpTalk("<t>Что такое?")
	MisResultCondition(HasMission, 978)
	MisResultCondition(NoRecord,  978)
	MisResultCondition(HasItem, 1052, 1 )--------КҐБй»¤·ы
	MisResultAction(TakeItem, 1052, 1 )
	MisResultAction(ClearMission, 978)
	MisResultAction(SetRecord, 978 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)	
	

-------------------------------------------------НБЦші¤Г¬
	DefineMission( 5045, " Длинное туземное копье ", 979 )

	MisBeginTalk( "<t>Оооо!Я думаю что мне потребуется 1 Заточенное длинное туземное копье.Исследовав его яд я смогу понять причину проклятья." )
	MisBeginCondition(NoRecord, 979 )
	MisBeginCondition(HasMission, 978)
	MisBeginCondition(NoRecord, 978 )
	MisBeginCondition(NoMission, 979 )
	MisBeginAction(AddMission, 979)

	MisBeginAction(AddTrigger, 9791, TE_GETITEM, 4739, 1 )		--і¤Г¬
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	
	MisNeed(MIS_NEED_DESP, "Принесите 1 Заточенное длинное туземное копье ")
	MisNeed(MIS_NEED_ITEM, 4739,1, 10, 1)
	
	MisResultTalk("<t>Вот спасибо!")
	MisHelpTalk("<t>Ну..посторайтесь!")
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
----------------------------------------------------МЦ·ҐїЦІАµДЧзЦд№ЕК¬

	DefineMission(5046, " Убийство мумии ", 980 )

	MisBeginTalk( "<t>Оххх я связался с Кентаро и он просит убить 1 Кошмарный проклятый труп .Приходите ко мне когда добьетесь успеха.")
	MisBeginCondition(NoRecord,   980)
	MisBeginCondition(HasRecord,  979)
	MisBeginCondition(NoMission,  980)
	MisBeginAction(AddMission,   980)
	MisBeginAction(AddTrigger,   9801, TE_KILL, 508,1 )		
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_KILL,  508,1, 10, 1)
	
	MisResultTalk("<t>Вы вернулись!")
	MisHelpTalk("<t>Говорят что мумии обитают в дебрях Громоградских лесов (360, 1340).")----------------+++++11
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

----------------------------------------------------ЧфВЮГжѕЯ

	DefineMission(5047," Маска Зорро ",981)
	
	MisBeginTalk( "<t><bKentaro> просил что бы вы поговорили с ним (1894, 2798).Вот Маска Зорро как доказательство того , что вы успешно выполнили задачу." )
	MisBeginCondition(NoRecord, 981)
	MisBeginCondition(NoMission, 981)
	MisBeginCondition(HasRecord, 980)
	MisBeginAction(GiveItem, 1025, 1, 4)----------ЧфВЮГжѕЯ
	MisBeginAction(AddMission,981)
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Найдите Кентаро ")
	
	MisHelpTalk("<t>Кентаро в Аскароне ")-----------------------++++++12
	MisResultCondition(AlwaysFailure)
	------------------------------------------------ЧфВЮГжѕЯ
	DefineMission(5048," Маска Зорро ",981,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Не разочаруйте меня.")
	MisResultCondition(NoRecord, 981)
	MisResultCondition(HasMission,981)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission, 981 )
	MisResultAction(SetRecord, 981 )
-----------------------------------------------------ЦХј«ГЬВл
	DefineMission( 5049, " Финальный пароль ", 982 )

	MisBeginTalk( "<t>После того как Зорро умер,маска была потеряна. Легенда гласит, что при правельном использовании вы сможете поулчить огромную властьДля обеспечения безопасности , мы должны найти маску первыми. Прежде всего нужно узнать секретный код.Думаю часть его у проклятых фей." )
	MisBeginCondition(NoRecord, 982  )
	MisBeginCondition(HasRecord,981)
	MisBeginCondition(NoMission, 982  )
	MisBeginAction(AddMission, 982 )
	MisBeginAction(AddTrigger, 9821, TE_GETITEM, 4261, 1 )		--Л®Гў
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Найдите часть пароля.")
	MisNeed(MIS_NEED_ITEM,4261,1, 10, 1)
	
	MisResultTalk("<t>Вы не плохой пират!!")
	MisHelpTalk("<t>Уничтожте Проклятых фей в Подводном туннеле.")
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
-------------------------------------------------ЛЮГьЦ®КЇ

	DefineMission( 5050, " Камень судьбы ", 983 )

	MisBeginTalk( "<t>На маске появились слова:Камень судьбы... Что  они означают?Думаю не стоит рисковать.Найдите Отталкивающий камень зверей " )
	MisBeginCondition(NoRecord, 983)
	MisBeginCondition(HasRecord,  982 )
	MisBeginCondition(NoMission, 983 )
	MisBeginAction(AddMission, 983)
	MisBeginAction(AddTrigger, 9831, TE_GETITEM, 2487, 1 )		--КЮµ¤КЇ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Найдите Отталкивающий камень зверей ")
	MisNeed(MIS_NEED_ITEM,2487,1, 10, 1)
	
	MisResultTalk("<t>Следуйте в Аббадон!")
	MisHelpTalk("<t>Следуйте в Аббадон!")
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

----------------------------------------------------------Пъ»ЩГжѕЯ

	DefineMission( 5051, " Уничтожить маску ", 984 )

	MisBeginTalk( "<t>Эта маска попала в руки темного волшебника и была проклята ... Чтобы уничтожить ее нам потребуется Сломанный ангельский нимб !" )
	MisBeginCondition(NoRecord,  984)
	MisBeginCondition(HasRecord,  983)
	MisBeginCondition(NoMission,  984 )
	MisBeginAction(AddMission,  984)
	MisBeginAction(AddTrigger,  9841, TE_GETITEM,4738, 1 )		--ЖЖЛйµДМмК№№в»·
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, " Найдите Сломанный ангельский нимб ")
	MisNeed(MIS_NEED_ITEM,4738,1, 10, 1)
	
	MisResultTalk("<t>Я хотел получить власть...а получил лишь проклятье ")
	MisHelpTalk("<t>Найдите Ангела (335, 2121).")
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

-------------------------------------------------------Д§ІјїЪґь
	DefineMission( 5052, " Заколдованная сумка ", 985 )

	MisBeginTalk( "<t>Несмотря на то, что зло исчезло,нужно спряитать маску.Думаю Генерал Вильям сможет вам помочь " )
	MisBeginCondition(NoRecord,   985)
	MisBeginCondition(HasRecord, 984)
	MisBeginCondition(NoMission,  985)
	MisBeginAction(AddMission,  985)
	MisBeginAction(GiveItem, 1025, 1, 4)----------ЧфВЮГжѕЯ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "Сходите к Генералу Вильяму ")----------------++++13
	MisHelpTalk("<t>....")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------Д§ІјїЪґь
	DefineMission( 5053, " Заколдованная сумка ", 985, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Хм...вот вам Амулет.Отнесите его Санг Ди на о.Весны ")
	MisResultCondition(NoRecord,  985)
	MisResultCondition(HasMission,  985)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission,  985)
	MisResultAction(SetRecord,  985)
	MisResultAction(GiveItem, 1052, 1,4)
	MisResultAction(AddMoney,80000,80000)
	MisResultBagNeed(1)
	
------------------------------------------------------Бй·ыЙПµДЅр·Ы

	DefineMission( 5054, " Золотая пыльца на священном амулете ", 986 )

	MisBeginTalk( "<t>Я вижу что амулет стал работать хуже...думаю это влияние недавнего проклятия.Достаньте мне <r10 золотых монет> " )
	MisBeginCondition(NoRecord, 986)
	MisBeginCondition(HasRecord, 978)
	MisBeginCondition(NoMission,986 )
	MisBeginAction(AddMission, 986)
	MisBeginAction(AddTrigger, 9861, TE_GETITEM, 2438, 10 )		--Ѕр±Т
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Достаньте мне <r10 золотых монет> ")
	MisNeed(MIS_NEED_ITEM,2438,10, 10, 10)
	
	MisResultTalk("<t>Вы тот на кого можно положится!")
	MisHelpTalk("<t>Золотую монету можно найти в районе Залива сокровищ.")
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
-------------------------------------------------------ЕбµЩµДЦёµг
	DefineMission(5055," Указания Санг Ди ",987)
	
	MisBeginTalk( "<t>Вам следует узнать о вашей профессии.Сходите к вашим наставникам " )
	MisBeginCondition(NoRecord, 987)
	MisBeginCondition(NoMission,987)
	MisBeginCondition(HasRecord,986)
	MisBeginAction(AddMission,987)	
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
		
	MisNeed(MIS_NEED_DESP, "Поговорить с вашими Наставниками ")
	
	MisHelpTalk("<t>Почему вы все еще здесь? Спешите!")
	MisResultCondition(AlwaysFailure)
-----------------------------------------------------ЕбµЩµДЦёµгЈЁ±ИМШЈ©
	DefineMission(5056, " Указания Санг Ди ", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Санг Ди вечно создает какие то проблемы!")
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

-----------------------------------------------------ЕбµЩµДЦёµгЈЁАЧЕ·Ј©
	DefineMission(5057, " Указания Санг Ди ", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Санг Ди вечно создает какие то проблемы!")
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

	-----------------------------------------------------ЕбµЩµДЦёµгЈЁРЎЙЅіµЈ©
	DefineMission(5058, " Указания Санг Ди ", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Санг Ди вечно создает какие то проблемы!")
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

	-----------------------------------------------------ЕбµЩµДЦёµг(ёКµШО¬А­)
	DefineMission(5059, " Указания Санг Ди ", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Санг Ди вечно создает какие то проблемы!")
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


-----------------------------------------------------Ц°ТµЅйЙЬИЛµДЅЁТйЈЁifЅЈКїЈ©
	DefineMission( 5060, " Просьба Питера ",988 )

	MisBeginTalk( "<t>У нас небольшие проблемы.Убейте 1 Бешенного ящера." )
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
	MisBeginAction(AddTrigger, 9881, TE_KILL, 524, 1 )		--±©Е­µДтбтжИЛ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_KILL,524,1, 10, 1)
	
	MisResultTalk("<t>Спасибо!Спасибо!")
	MisHelpTalk("<t>Эти ящеры очень жестоки!Будте осторожнее ")
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

-----------------------------------------------------АЧЕ·µДЅЁТйЈЁifБФИЛЈ©
	DefineMission( 5061, " Просьба Рея ", 989 )

	MisBeginTalk( "<t>Ооо у нас небольшие проблемы.Достаньте мне Эмблема телохранителя короля -1 шт и Живое сердце природы - 1 шт " )
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
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Достаньте Эмблема телохранителя короля -1 шт и Живое сердце природы - 1 шт ")
	MisNeed(MIS_NEED_ITEM, 4789,1, 10, 1)
	MisNeed(MIS_NEED_ITEM,4741,1, 20, 1)
	
	MisResultTalk("<t>Вы неплохой воин!")
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

---------------------------------------------------------------РЎЙЅіµµДЅЁТйЈЁifГ°ПХХЯЈ©
	DefineMission( 5062, " Просьба Даниеля ", 990 )

	MisBeginTalk( "<t>О-ооо.У нас небольшие проблемы.Поговорите пожалуйста с Диспетчером порта Грегори , он должен передать мне информацию " )
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
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisHelpTalk("<t>Найдите Диспетчера порта - Грегори ")
	MisNeed(MIS_NEED_DESP, "Найдите Диспетчера порта - Грегори ")

	MisResultCondition(AlwaysFailure)
---------------------------------------------------------------Ц°ТµЅйЙЬИЛµДЅЁТй
	DefineMission( 5063, " Просьба Даниеля ", 990,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Жизнь - это долгое путешествие...")
	MisHelpTalk("<t>Покоритель морей - это титул бесстрашного воина.")
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
	-------------------------------------------------------ёКµШО¬А­µДЅЁТйЈЁifТ©К¦Ј©
	DefineMission( 5064, " Просьба Ганьона ", 991 )

	MisBeginTalk( "<t>О-ооо.У нас небольшие проблемы.Поговорите с Минелли..." )
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
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Поговорите с Минелли...")
	MisHelpTalk("<t>Поговорите с Минелли...")
	MisResultCondition(AlwaysFailure)

-------------------------------ёКµШО¬А­µДЅЁТй
	DefineMission( 5072, " Просьба Ганьона ", 991,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Хм...я как раз ищу нового секретаря ")
	MisHelpTalk("<t>Вы молодец!")
	MisResultCondition(NoRecord, 991)
	MisResultCondition(HasMission,991)
	MisResultAction(ClearMission, 991 )
	MisResultAction(SetRecord, 991 )

	
	-------------------------------------------------------КЇ»ЇµДТвЦѕ
	DefineMission( 5073, " Закалка ", 998 )

	MisBeginTalk( "<t>Приготовьтесь к тяжелым испытаниям... " )
	MisBeginCondition(NoRecord, 998)
	MisBeginCondition(HasRecord, 991)
	MisBeginCondition(NoMission, 998 )
	MisBeginAction(AddMission, 998 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Вы готовы?")
	MisHelpTalk("<t>У вас должно быть много силы воли ")
	MisResultTalk("<t>Вы умеете управлять своей силой?")

	MisResultCondition(HasMission, 998 )
	MisResultCondition(HasState, 92 )
	MisResultAction(ClearMission, 998 )
	MisResultAction(SetRecord, 998 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
		
	----------------------------------------ЦЗХЯµДКВ
     DefineMission(5068," История о Просветленном ",993)
     MisBeginTalk("<t>Подождите,пока я доделаю таблицу.")
     MisBeginCondition(HasRecord,988)
     MisBeginCondition(NoMission, 993)
     MisBeginCondition(NoRecord, 993)
     MisBeginAction(AddMission, 993)
     MisCancelAction(SystemNotice, "Квест не может быть удален ")

     MisNeed(MIS_NEED_DESP, "Подождите пока доделывают статистическу таблицу.")
     MisHelpTalk("<t>Не беспокойте меня!")
     MisResultTalk("<t>Составить табличку очень сложно.")
     MisResultCondition(NoRecord, 993)---------У¦ёДОЄNoRecord
     MisResultCondition(HasMission, 993)
     MisResultAction(SetRecord, 993 )
     MisResultAction(ClearMission, 993 )
----------------------------------------ЦЗХЯµДКВ
      DefineMission(5069," История о Просветленном ",994)
     MisBeginTalk("<t>Подождите,пока я доделаю таблицу..")
     MisBeginCondition(HasRecord,989)
      MisBeginCondition(NoMission, 994)
     MisBeginCondition(NoRecord, 994)
     MisBeginAction(AddMission, 994)
     MisCancelAction(SystemNotice, "Квест не может быть удален ")

     MisNeed(MIS_NEED_DESP, "Подождите пока доделывают статистическу таблицу.")
     MisHelpTalk("<t>Не беспокойте меня!")
      MisResultTalk("<t>Составить табличку очень сложно.")
     MisResultCondition(NoRecord, 994)---------У¦ёДОЄNoRecord
     MisResultCondition(HasMission, 994)
     MisResultAction(SetRecord, 994 )
     MisResultAction(ClearMission, 994 )

     ----------------------------------------ЦЗХЯµДКВ
      DefineMission(5070," История о Просветленном ",995)
     MisBeginTalk("<t>Подождите,пока я доделаю таблицу.")
     MisBeginCondition(HasRecord,998)
      MisBeginCondition(NoMission, 995)
     MisBeginCondition(NoRecord, 995)
     MisBeginAction(AddMission, 995)
     MisCancelAction(SystemNotice, "Квест не может быть удален")

     MisNeed(MIS_NEED_DESP, "Подождите пока доделывают статистическу таблицу.")
     MisHelpTalk("<t>Не беспокойте меня!.")
      MisResultTalk("<t>Составить табличку очень сложно.")
     MisResultCondition(NoRecord, 995)---------У¦ёДОЄNoRecord
     MisResultCondition(HasMission, 995)
     MisResultAction(SetRecord, 995 )
     MisResultAction(ClearMission, 995 )
	----------------------------------------ЦЗХЯµДКВ
      DefineMission(5071," История о Просветленном ",997)
     MisBeginTalk("<t>Подождите,пока я доделаю таблицу.")
     MisBeginCondition(HasRecord,990)
      MisBeginCondition(NoMission, 997)
     MisBeginCondition(NoRecord, 997)
     MisBeginAction(AddMission, 997)
     MisCancelAction(SystemNotice, "Квест не может быть удален ")

     MisNeed(MIS_NEED_DESP, "Подождите пока доделывают статистическу таблицу.")
     MisHelpTalk("<t>Не беспокойте меня!")
      MisResultTalk("<t>Составить табличку очень сложно.")
     MisResultCondition(NoRecord, 997)---------У¦ёДОЄNoRecord
     MisResultCondition(HasMission, 997)
     MisResultAction(SetRecord, 997 )
     MisResultAction(ClearMission, 997 )

-------------------------------------------------------Л­КЗЦЗХЯ-------------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	DefineMission( 5167, " История о Просветленном ", 1500 )

	MisBeginTalk( "<t>Просветленная личность покрыта тайной.Но я думаю <bЛагна> сможет вам помочь " )
	MisBeginCondition(NoRecord,1500)
	MisBeginCondition(HasRecord, 993)
	MisBeginCondition(NoMission, 1500 )
	MisBeginAction(AddMission, 1500 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Поговорите с Лангой ")
	MisHelpTalk("<t>Поговорите с Лангой (853, 3549)")
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------Л­КЗЦЗХЯ---------АЧЕ·
	DefineMission( 5168, " Кто же этот Просветленный? ", 1501 )

	MisBeginTalk( "<t>Просветленная личность покрыта тайной.Но я думаю <bЛагна> сможет вам помочь " )
	MisBeginCondition(NoRecord,1501)
	MisBeginCondition(HasRecord, 994)
	MisBeginCondition(NoMission, 1501 )
	MisBeginAction(AddMission, 1501 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Поговорите с Лангой ")
	MisHelpTalk("<t>Поговорите с Лангой (853, 3549)")
	MisResultCondition(AlwaysFailure)



	-------------------------------------------------------Л­КЗЦЗХЯ------------ГЧ¶ыГЧАт
	DefineMission( 5074, " Кто же этот Просветленный? ", 1502 )

	MisBeginTalk( "<t>Просветленная личность покрыта тайной.Но я думаю <bЛагна> сможет вам помочь " )
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 995)
	MisBeginCondition(NoMission, 1502 )
	MisBeginAction(AddMission, 1502 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Поговорите с Лангой ")
	MisHelpTalk("<t>Поговорите с Лангой (853, 3549)")
	MisResultCondition(AlwaysFailure)

	


-------------------------------------------------------Л­КЗЦЗХЯ------------ЗЗ¶ыЗЗДб
	DefineMission( 5075, " Кто же этот Просветленный? ", 1503 )

	MisBeginTalk( "<t>TПросветленная личность покрыта тайной.Но я думаю <bЛагна> сможет вам помочь " )
	MisBeginCondition(NoRecord,1503)
	MisBeginCondition(HasRecord, 997)
	MisBeginCondition(NoMission, 1503 )
	MisBeginAction(AddMission, 1503 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Поговорите с Лангой ")
	MisHelpTalk("<t>Поговорите с Лангой (853, 3549)")
	MisResultCondition(AlwaysFailure)

	


	
-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5076, " Кто же этот Просветленный? ", 1500,COMPLETE_SHOW )----------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Поговорите с Лангой ")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5077, " Кто же этот Просветленный? ", 1501,COMPLETE_SHOW )----------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Поговорите с Лангой ")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5078, " Кто же этот Просветленный? ", 1502,COMPLETE_SHOW )----------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Поговорите с Лангой ")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5079, " Кто же этот Просветленный? ", 1503,COMPLETE_SHOW )----------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Поговорите с Лангой ")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1504 )
-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5080, " Кто же этот Просветленный? ", 1500,COMPLETE_SHOW )----------АЙДГ¶Ѕ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Вы ищите просветленного?Только умные люди могут узнать о нем.")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1505 )


-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5081, " Кто же этот Просветленный? ", 1501,COMPLETE_SHOW )-----------АЙДГ¶Ѕ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Вы ищите просветленного?Только умные люди могут узнать о нем.")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1505 )

-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5082, " Кто же этот Просветленный? ", 1502,COMPLETE_SHOW )-----------АЙДГ¶Ѕ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Вы ищите просветленного?Только умные люди могут узнать о нем.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1505 )

-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5083, " Кто же этот Просветленный? ", 1503,COMPLETE_SHOW )-----------АЙДГ¶Ѕ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Вы ищите просветленного?Только умные люди могут узнать о нем.")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1505 )


	-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5084, " Кто же этот Просветленный? ", 1500,COMPLETE_SHOW )----------°¬БўїЛ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Друг мой...вы достаточно умны...?!")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1506 )


-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5085, " Кто же этот Просветленный? ", 1501,COMPLETE_SHOW )-----------°¬БўїЛ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Друг мой...вы достаточно умны...?!")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1506 )

-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5086, " Кто же этот Просветленный? ", 1502,COMPLETE_SHOW )-----------°¬БўїЛ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Друг мой...вы достаточно умны...?!")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1506 )

-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5087, " Кто же этот Просветленный? ", 1503,COMPLETE_SHOW )-----------°¬БўїЛ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Друг мой...вы достаточно умны...?!")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1506 )

-------------------------------------------------------ЅрЕЖГЕНЅ-------------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	DefineMission( 5088, " Ученик ", 1507 )

	MisBeginTalk( "<t>Просветленный - очень мудрый человек.Он будет говорить с теми чья душа не творила зла.Найдите того кто сможет вам помочь это проверить " )
	MisBeginCondition(NoRecord,1507)
	MisBeginCondition(HasRecord, 1504)
	MisBeginCondition(NoMission, 1507 )
	MisBeginAction(AddMission, 1507 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Поговорите с Грегори ,Минелли,Рэйом или Питером.")
	MisHelpTalk("<t>Минели можно найти тут (1244, 3186).")
	MisResultCondition(AlwaysFailure)
--------------------------------------------------------ЅрЕЖГЕНЅ
	DefineMission( 5089, " Ученик ", 1507,COMPLETE_SHOW )--------±ИМШ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Председатель Рони говорит что вы не слишком хорошо знакомы со своим классом?.")
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

	


	--------------------------------------------------------ЅрЕЖГЕНЅ
	DefineMission( 5090, " Ученик ", 1507,COMPLETE_SHOW )---------АЧЕ·
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Председатель Рони говорит что вы не слишком хорошо знакомы со своим классом?")
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

--------------------------------------------------------ЅрЕЖГЕНЅ
	DefineMission( 5091, " Ученик ", 1507,COMPLETE_SHOW )---------ЗЗ¶ыЗЗДб
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Малышь Даниель очень занят,он просил что бы я Вас проверил.")
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

	--------------------------------------------------------ЅрЕЖГЕНЅ
	DefineMission( 5092, " Ученик ", 1507,COMPLETE_SHOW )---------ГЧ¶ыГЧАт
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Священник сейчас занят,он просил что бы я вас проверил.")
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

---------------------------------------------------------------------±ИМШіхј¶ГЕНЅ

	DefineMission( 5093, " Ученик уровень 1 ", 1508 )

	MisBeginTalk( "<t>Вам необходимо пройти испытания.Убейте 5  Терранских капитанов " )
	MisBeginCondition(NoRecord, 1508 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1514 )
	MisBeginCondition(NoMission, 1508 )
	MisBeginAction(AddMission,  1508)
	MisBeginAction(AddTrigger,  15081, TE_KILL, 67, 5 )----------------µШѕ«ХЅКї
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 5  Терранских капитанов ")
	MisNeed(MIS_NEED_KILL,67,5, 10, 5)

	MisResultTalk("<t>Отлично!Вы прошли 1 испытание ")
	MisHelpTalk("<t>При стычке с Капитаном , будте спокойным ")
	MisResultCondition(HasMission,  1508)
	MisResultCondition(NoRecord,  1508)
	MisResultCondition(HasFlag,  1508, 14 )
	MisResultAction(ClearMission,  1508 )
	MisResultAction(SetRecord,  1508  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 67)	
	TriggerAction( 1, AddNextFlag,  1508 , 10,5)
	RegCurTrigger(   15081 )

	---------------------------------------------------------------------±ИМШ¶юј¶ГЕНЅ

	DefineMission( 5094, " Ученик уровень 2 ", 1509 )

	MisBeginTalk( "<t>Ваше второе задание.Убейте 5 Зловещий неупокоенный воин " )
	MisBeginCondition(NoRecord, 1509 )
	MisBeginCondition(HasRecord, 1508 )
	MisBeginCondition(NoMission, 1509 )
	MisBeginAction(AddMission,  1509)
	MisBeginAction(AddTrigger,  15091, TE_KILL, 549, 5 )----------------Р°¶сµДІ»ГрОд
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 5 Зловещий неупокоенный воин ")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>Вы отлично справились с заданием!")
	MisHelpTalk("<t>Будте осторожны!")
	MisResultCondition(HasMission,  1509)
	MisResultCondition(NoRecord,  1509)
	MisResultCondition(HasFlag,  1509, 14 )
	MisResultAction(ClearMission,  1509 )
	MisResultAction(SetRecord,  1509  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1509 , 10,5)
	RegCurTrigger(   15091 )

	---------------------------------------------------------------------±ИМШИэј¶ГЕНЅ

	DefineMission( 5095, " Ученик уровень 3 ", 1510 )

	MisBeginTalk( "<t>Ваше следующее задание.Убейте Зловещий рыцарь тыквы 6 шт " )
	MisBeginCondition(NoRecord, 1510 )
	MisBeginCondition(HasRecord, 1509 )
	MisBeginCondition(NoMission, 1510 )
	MisBeginAction(AddMission,  1510)
	MisBeginAction(AddTrigger,  15101, TE_KILL, 546, 6 )----------------Р°¶сµДДП№ПЖпКї
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте Зловещий рыцарь тыквы 6 шт.")
	MisNeed(MIS_NEED_KILL,546,6, 10, 6)

	MisResultTalk("<t>Вы все ближе и ближе....")
	MisHelpTalk("<t>Будте более настойчивым ")
	MisResultCondition(HasMission,  1510)
	MisResultCondition(NoRecord,  1510)
	MisResultCondition(HasFlag,  1510, 15 )
	MisResultAction(ClearMission,  1510 )
	MisResultAction(SetRecord,  1510  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1510 , 10,6)
	RegCurTrigger(   15101 )



---------------------------------------------------------------------±ИМШёЯј¶ГЕНЅ

	DefineMission( 5096, " Ученик 4 уровень ", 1511 )

	MisBeginTalk( "<t>Ваше новое задание - убейте 8 Призрачных охотников ")
	MisBeginCondition(NoRecord, 1511 )
	MisBeginCondition(HasRecord, 1510 )
	MisBeginCondition(NoMission, 1511 )
	MisBeginAction(AddMission,  1511)
	MisBeginAction(AddTrigger,  15111, TE_KILL, 201, 8 )----------------°µУ°БФКЦ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 8 Призрачных охотников ")
	MisNeed(MIS_NEED_KILL,201,8, 10, 8)

	MisResultTalk("<t>Вы выполнили все задания!")
	MisHelpTalk("<t> Это последний тест!Не сдавайтесь ")
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


	
	---------------------------------------------------------------------АЧЕ·іхј¶ГЕНЅ

	DefineMission( 5097, "Ученик 1 уровень ", 1512 )

	MisBeginTalk( "<t>Хм..ваше первое задание.Убейте 5 Детенышей ледяного дракона " )
	MisBeginCondition(NoRecord, 1512 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1515 )
	MisBeginCondition(NoMission, 1512 )
	MisBeginAction(AddMission,  1512)
	MisBeginAction(AddTrigger,  15121, TE_KILL, 187, 5 )----------------РЎ±щБъ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 5 Детенышей ледяного дракона ")
	MisNeed(MIS_NEED_KILL,187,5, 10, 5)

	MisResultTalk("<t>Отлично.Вы выполнили первое задание.")
	MisHelpTalk("<t>Острожнее.")
	MisResultCondition(HasMission,  1512)
	MisResultCondition(NoRecord,  1512)
	MisResultCondition(HasFlag,  1512, 14 )
	MisResultAction(ClearMission,  1512 )
	MisResultAction(SetRecord,  1512  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 187)	
	TriggerAction( 1, AddNextFlag,  1512 , 10,5)
	RegCurTrigger(   15121 )


	---------------------------------------------------------------------АЧЕ·¶юј¶ГЕНЅ

	DefineMission( 5098, " Ученик 2 уровень ", 1513 )

	MisBeginTalk( "<t>Ваше второе задание.Убейте 5 Безумных туземцев " )
	MisBeginCondition(NoRecord, 1513 )
	MisBeginCondition(HasRecord, 1512 )
	MisBeginCondition(NoMission, 1513 )
	MisBeginAction(AddMission,  1513)
	MisBeginAction(AddTrigger,  15131, TE_KILL, 543, 5 )----------------·иїсµДНБЦшИЛ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 5 Безумных туземцев ")
	MisNeed(MIS_NEED_KILL,543,5, 10, 5)

	MisResultTalk("<t>Отлично.Вы справились со вторым заданием.")
	MisHelpTalk("<t>Будте осмотрительнее!")
	MisResultCondition(HasMission,  1513)
	MisResultCondition(NoRecord,  1513)
	MisResultCondition(HasFlag,  1513, 14 )
	MisResultAction(ClearMission,  1513 )
	MisResultAction(SetRecord,  1513  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 543)	
	TriggerAction( 1, AddNextFlag,  1513 , 10,5)
	RegCurTrigger(   15131 )


	---------------------------------------------------------------------АЧЕ·Иэј¶ГЕНЅ

	DefineMission( 5099, " Ученик 3 уровень ", 1518 )

	MisBeginTalk( "<t>Ваше третье задание.Убейте 6 Главарей Вервольфов-воинов " )
	MisBeginCondition(NoRecord, 1518 )
	MisBeginCondition(HasRecord, 1513 )
	MisBeginCondition(NoMission, 1518 )
	MisBeginAction(AddMission,  1518)
	MisBeginAction(AddTrigger,  15181, TE_KILL, 566, 6 )----------------АЗИЛХЅКї¶Уі¤
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 6 Главарей Вервольфов-воинов ")
	MisNeed(MIS_NEED_KILL,566,6, 10, 6)

	MisResultTalk("<t>Великолепно!Вы справились с третьим заданием.")
	MisHelpTalk("<t>Будьте осторожнее ")
	MisResultCondition(HasMission,  1518)
	MisResultCondition(NoRecord,  1518)
	MisResultCondition(HasFlag,  1518, 15 )
	MisResultAction(ClearMission,  1518 )
	MisResultAction(SetRecord,  1518  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 566)	
	TriggerAction( 1, AddNextFlag,  1518 , 10,6)
	RegCurTrigger(   15181 )


	---------------------------------------------------------------------АЧЕ·ёЯј¶ГЕНЅ

	DefineMission( 5100, " Ученик 4 уровень ", 1519 )

	MisBeginTalk( "<t>Ваше последнее задание.Убейте 8 Тысячелетних энтов " )
	MisBeginCondition(NoRecord, 1519 )
	MisBeginCondition(HasRecord, 1518 )
	MisBeginCondition(NoMission, 1519 )
	MisBeginAction(AddMission,  1519)
	MisBeginAction(AddTrigger,  15191, TE_KILL, 511, 8)----------------ѕЮРНКчИЛ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 8 Тысячелетних энтов ")
	MisNeed(MIS_NEED_KILL,511,8, 10, 8)

	MisResultTalk("<t>Великолепно!Вы выполнили все задания ")
	MisHelpTalk("<t>Немного терпения.")
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

	---------------------------------------------------------------------ГЧ¶ыіхј¶ГЕНЅ

	DefineMission( 5101, " Ученик 1 уровень ", 1520 )

	MisBeginTalk( "<t>Хм...вы должны выполнить несколько заданий.Ваше первое задание.Убейте 5 Зловещий неупокоенный воин " )
	MisBeginCondition(NoRecord, 1520 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1517)
	MisBeginCondition(NoMission, 1520 )
	MisBeginAction(AddMission,  1520)
	MisBeginAction(AddTrigger,  15201, TE_KILL, 549, 5 )----------------Р°¶сµДІ»ГрОдКї
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 5 Зловещий неупокоенный воин ")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>Отлично.Вы справились ")
	MisHelpTalk("<t>Проявите терпения друг мой...")
	MisResultCondition(HasMission,  1520)
	MisResultCondition(NoRecord,  1520)
	MisResultCondition(HasFlag,  1520, 14 )
	MisResultAction(ClearMission,  1520 )
	MisResultAction(SetRecord,  1520  )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1520 , 10,5)
	RegCurTrigger(   15201 )



---------------------------------------------------------------------ГЧ¶ы¶юј¶ГЕНЅ

	DefineMission( 5102, " Ученик 2 уровень ", 1521 )

	MisBeginTalk( "<t>Ваше второе задание.Убейте 2 Сирены." )
	MisBeginCondition(NoRecord, 1521 )
	MisBeginCondition(HasRecord, 1520 )
	MisBeginCondition(NoMission, 1521 )
	MisBeginAction(AddMission,  1521)
	MisBeginAction(AddTrigger,  15211, TE_KILL, 587, 2 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 2 Сирены ")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>Отлично.Вы справились ")
	MisHelpTalk("<t>Проявите терпения друг мой...")
	MisResultCondition(HasMission,  1521)
	MisResultCondition(NoRecord,  1521)
	MisResultCondition(HasFlag,  1521, 11 )
	MisResultAction(ClearMission,  1521 )
	MisResultAction(SetRecord,  1521  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1521 , 10,2)
	RegCurTrigger(   15211 )



	---------------------------------------------------------------------ГЧ¶ыИэј¶ГЕНЅ

	DefineMission( 5103, " Ученик 3 уровень ", 1522 )

	MisBeginTalk( "<t>Ваше третье задание.Убейте 3 Глубоководная сирена " )
	MisBeginCondition(NoRecord, 1522 )
	MisBeginCondition(HasRecord, 1521 )
	MisBeginCondition(NoMission, 1522 )
	MisBeginAction(AddMission,  1522)
	MisBeginAction(AddTrigger,  15221, TE_KILL, 606, 3 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 3 Глубоководная сирена ")
	MisNeed(MIS_NEED_KILL,606,3, 10, 3)

	MisResultTalk("<t>Отлично.Вы справились ")
	MisHelpTalk("<t>Проявите терпения друг мой...")
	MisResultCondition(HasMission,  1522)
	MisResultCondition(NoRecord,  1522)
	MisResultCondition(HasFlag,  1522, 12 )
	MisResultAction(ClearMission,  1522 )
	MisResultAction(SetRecord,  1522  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1522 , 10,3)
	RegCurTrigger(   15221 )

---------------------------------------------------------------------ГЧ¶ыёЯј¶ГЕНЅ

	DefineMission( 5104, " Ученик 4 уровень ", 1523 )

	MisBeginTalk( "<t>Ваше последнее задание убить 8 Пиратов 007 " )
	MisBeginCondition(NoRecord, 1523 )
	MisBeginCondition(HasRecord, 1522 )
	MisBeginCondition(NoMission, 1523 )
	MisBeginAction(AddMission,  1523)
	MisBeginAction(AddTrigger,  15231, TE_KILL, 735, 8 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убить 8 Пиратов 007 ")
	MisNeed(MIS_NEED_KILL,735,8, 10,8)

	MisResultTalk("<t>Отлично.Вы справились с последним заданием!")
	MisHelpTalk("<t>Проявите терпения друг мой...")
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


---------------------------------------------------------------------ЗЗ¶ыіхј¶ГЕНЅ

	DefineMission( 5105, " Ученик 1 уровень ", 1524 )

	MisBeginTalk( "<t>Я хочу построить себе дом.Помогите мне достать нужные компоненты.Первое задание  - принесите Светящийся хребет рыбы-кости 2 шт " )
	MisBeginCondition(NoRecord, 1524 )
	MisBeginCondition(HasRecord, 1516 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(NoMission, 1524 )
	MisBeginAction(AddMission,  1524)
	MisBeginAction(AddTrigger,  15241, TE_GETITEM, 1350, 2 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите Светящийся хребет рыбы-кости 2 шт ")
	MisNeed(MIS_NEED_ITEM,1350,2, 10, 2)

	MisResultTalk("<t>Спасибо!")
	MisHelpTalk("<t>Будте осторожны... ")
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

	---------------------------------------------------------------------ЗЗ¶ы¶юј¶ГЕНЅ

	DefineMission( 5106, " Ученик 2 уровень ", 1525 )

	MisBeginTalk( "<t>Ваше второе задание.Принесите мне 2 Кристалла сирены " )
	MisBeginCondition(NoRecord, 1525 )
	MisBeginCondition(HasRecord, 1524 )
	MisBeginCondition(NoMission, 1525 )
	MisBeginAction(AddMission,  1525)
	MisBeginAction(AddTrigger,  15251, TE_GETITEM, 1295, 2 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите 2 Кристалла сирены ")
	MisNeed(MIS_NEED_ITEM,1295,2, 10, 2)

	MisResultTalk("<t>Спасибо!")
	MisHelpTalk("<t>Будте осторожны... ")
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



---------------------------------------------------------------------ЗЗ¶ыИэј¶ГЕНЅ

	DefineMission( 5107, " Ученик 3 уровень ", 1526 )

	MisBeginTalk( "<t>Ваше третье задание.Принесите мне 99 эльфийских фруктов " )
	MisBeginCondition(NoRecord, 1526 )
	MisBeginCondition(HasRecord, 1525 )
	MisBeginCondition(NoMission, 1526 )
	MisBeginAction(AddMission,  1526)
	MisBeginAction(AddTrigger,  15261, TE_GETITEM, 3116, 99 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите 99 эльфийских фруктов ")
	MisNeed(MIS_NEED_ITEM,3116,99, 10, 99)

	MisResultTalk("<t>Спасибо!")
	MisHelpTalk("<t>Будте осторожны...")
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


	---------------------------------------------------------------------ЗЗ¶ыёЯј¶ГЕНЅ

	DefineMission( 5108, " Ученик 4 уровень ", 1527 )

	MisBeginTalk( "<t>Ваше последнее задание.Принесите мне 15 Эмблем рядового бородача." )
	MisBeginCondition(NoRecord, 1527 )
	MisBeginCondition(HasRecord, 1526 )
	MisBeginCondition(NoMission, 1527 )
	MisBeginAction(AddMission,  1527)
	MisBeginAction(AddTrigger,  15271, TE_GETITEM, 4802, 15 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите 15 Эмблем рядового бородача ")
	MisNeed(MIS_NEED_ITEM,4802,1, 10, 1)

	MisResultTalk("<t>Великолепно!Вы выполнили все задания ")
	MisHelpTalk("<t>Будте осторожны...")
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

-------------------------------------------------------єПёсµДГЕНЅ--------±ИМШ
	DefineMission( 5109, " Ученик ", 1528 )

	MisBeginTalk( "<t>Вы достигли 4 уровня ученика.Теперь вам пора поговорить с Рони " )
	MisBeginCondition(NoRecord,1528)
	MisBeginCondition(HasRecord, 1511)
	MisBeginCondition(NoMission, 1528 )
	MisBeginAction(AddMission, 1528 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Рони ")
	MisHelpTalk("<t>Рони находиться в Аргенте (2242, 2748) ")
	MisResultCondition(AlwaysFailure)



--------------------------------------------------------єПёсµДГЕНЅ
	DefineMission( 5110, " Ученик ", 1528,COMPLETE_SHOW )----------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Отлично!Вы очень быстро справились во всеми заданиями.")
	MisResultCondition(NoRecord, 1528)
	MisResultCondition(HasMission, 1528)
	MisResultAction(ClearMission,1528)
	MisResultAction(SetRecord, 1528)
	MisResultAction(SetRecord, 1577)-------------
	

-------------------------------------------------------єПёсµДГЕНЅ--------АЧЕ·
	DefineMission( 5111, " Ученик ", 1529 )

	MisBeginTalk( "<t>Вы достигли 4 уровня ученика.Теперь вам пора поговорить с Рони " )
	MisBeginCondition(NoRecord,1529)
	MisBeginCondition(HasRecord, 1519)
	MisBeginCondition(NoMission, 1529 )
	MisBeginAction(AddMission, 1529 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Рони ")
	MisHelpTalk("<t>Рони находиться в Аргенте (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------єПёсµДГЕНЅ
	DefineMission( 5112, " Ученик ", 1529,COMPLETE_SHOW )------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№(2242,2748)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Отлично!Вы очень быстро справились во всеми заданиями.")
	MisResultCondition(NoRecord, 1529)
	MisResultCondition(HasMission, 1529)
	MisResultAction(ClearMission,1529)
	MisResultAction(SetRecord, 1529)
	MisResultAction(SetRecord, 1577)-------------


	-------------------------------------------------------єПёсµДГЕНЅ--------ГЧ¶ы
	DefineMission( 5113, " Ученик ", 1530 )

	MisBeginTalk( "<t>Отлично!Вы очень быстро справились во всеми заданиями." )
	MisBeginCondition(NoRecord,1530)
	MisBeginCondition(HasRecord, 1523)
	MisBeginCondition(NoMission, 1530 )
	MisBeginAction(AddMission, 1530 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Рони ")
	MisHelpTalk("<t>Рони находиться в Аргенте (2242, 2748) ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------єПёсµДГЕНЅ
	DefineMission( 5114, " Ученик ", 1530,COMPLETE_SHOW )------АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Отлично!Вы очень быстро справились во всеми заданиями.")
	MisResultCondition(NoRecord, 1530)
	MisResultCondition(HasMission, 1530)
	MisResultAction(ClearMission,1530)
	MisResultAction(SetRecord, 1530)
	MisResultAction(SetRecord, 1577)-------------

	-------------------------------------------------------єПёсµДГЕНЅ--------ЗЗ¶ы
	DefineMission( 5115, " Ученик ", 1531 )

	MisBeginTalk( "<t>Отлично!Вы очень быстро справились во всеми заданиями." )
	MisBeginCondition(NoRecord,1531)
	MisBeginCondition(HasRecord, 1527)
	MisBeginCondition(NoMission, 1531 )
	MisBeginAction(AddMission, 1531 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Рони ")
	MisHelpTalk("<t>Рони находиться в Аргенте (2242, 2748) ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------єПёсµДГЕНЅ
	DefineMission( 5116, " Ученик ", 1531,COMPLETE_SHOW )------АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Отлично!Вы очень быстро справились во всеми заданиями.")
	MisResultCondition(NoRecord, 1531)
	MisResultCondition(HasMission, 1531)
	MisResultAction(ClearMission,1531)
	MisResultAction(SetRecord, 1531)
	MisResultAction(SetRecord, 1577)-------------

-------------------------------------------------------О°ґуµДЙсЪН----------АКДГ¶И
	DefineMission( 5117, " Оракул Величия ", 1532 )

	MisBeginTalk( "<t>Найдите 8 Посланников Богов и возвращайтесь ко мне." )
	MisBeginCondition(NoRecord,1532)
	MisBeginCondition(HasRecord, 1505)
	MisBeginCondition(NoMission, 1532 )
	MisBeginAction(AddMission, 1532 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с портнихой Биби ")
	MisHelpTalk("<t>Поговорите с портнихой Биби ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------О°ґуµДЙсЪН
	DefineMission( 5118, " Оракул Величия ", 1532,COMPLETE_SHOW )-------------·юЧ°µкЦъАнЎ¤ЭнЭн
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я являюсь Божеством воды ")
	MisResultCondition(NoRecord, 1532)
	MisResultCondition(HasMission, 1532)
	MisResultAction(ClearMission,1532)
	MisResultAction(SetRecord, 1532)



---------------------------------------------------------------------Т»ЦШГЕ

	DefineMission( 5119, " Первые врата ", 1533 )

	MisBeginTalk( "<t>Я слуга Божества воды." )------·юЧ°µкЦъАнЎ¤ЭнЭн
	MisBeginCondition(NoRecord, 1533 )
	MisBeginCondition(HasRecord, 1532 )
	MisBeginCondition(NoMission, 1533 )
	MisBeginAction(AddMission,  1533)
	MisBeginAction(AddTrigger,  15331, TE_KILL, 642, 1 )----------------РЧГНµД№ЗУг
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Уничтожте 1 Кровожадная рыба-кость ")
	MisNeed(MIS_NEED_KILL,642,2, 10, 2)

	MisResultTalk("<t>Вы можете получить мое благословение ")
	MisHelpTalk("<t>Храните мою тайну ")
	MisResultCondition(HasMission,  1533)
	MisResultCondition(NoRecord,  1533)
	MisResultCondition(HasFlag,  1533, 11 )
	MisResultAction(ClearMission,  1533 )
	MisResultAction(SetRecord,  1533  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 642)	
	TriggerAction( 1, AddNextFlag,  1533 , 10,2)
	RegCurTrigger(   15331 )


-------------------------------------------------------ёж±рТ»ЦШГЕ------------·юЧ°µкЦъАнЎ¤ЭнЭн
	DefineMission( 5120, " Первые врата ", 1534 )

	MisBeginTalk( "<t>Поговорите с <bМастером Керрой> " )
	MisBeginCondition(NoRecord,1534)
	MisBeginCondition(HasRecord, 1533)
	MisBeginCondition(NoMission, 1534 )
	MisBeginAction(AddMission, 1534 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с <bМастером Керрой> ")
	MisHelpTalk("<t>Следующее испытание будет не такое легкое ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рТ»ЦШГЕ
	DefineMission( 5121, " Первые врата ", 1534,COMPLETE_SHOW )-------------їЛА­А­ґуК¦
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Надеюсь вы знаете , что делаете.")
	MisResultCondition(NoRecord, 1534)
	MisResultCondition(HasMission, 1534)
	MisResultAction(ClearMission,1534)
	MisResultAction(SetRecord, 1534)

---------------------------------------------------------------------¶юЦШГЕ

	DefineMission( 5122, " Вторые врата ", 1535 )

	MisBeginTalk( "<t>Я слуга Божества огня " )------їЛА­А­ґуК¦
	MisBeginCondition(NoRecord, 1535 )
	MisBeginCondition(HasRecord, 1534 )
	MisBeginCondition(NoMission, 1535 )
	MisBeginAction(AddMission,  1535)
	MisBeginAction(AddTrigger,  15351, TE_KILL, 652, 2 )----------------РЧГНµД±¦КЇєЈла
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 2 Свирепый рубиновый дельфин ")
	MisNeed(MIS_NEED_KILL,652,2, 10, 2)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну ")
	MisResultCondition(HasMission,  1535)
	MisResultCondition(NoRecord,  1535)
	MisResultCondition(HasFlag,  1535, 11 )
	MisResultAction(ClearMission,  1535 )
	MisResultAction(SetRecord,  1535  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 652)	
	TriggerAction( 1, AddNextFlag,  1535 , 10,2)
	RegCurTrigger(   15351 )


-------------------------------------------------------ёж±р¶юЦШГЕ------------їЛА­А­ґуК¦
	DefineMission( 5123, " Вторые врата ", 1536 )

	MisBeginTalk( "<t>Поговорите с <bМаркусом> " )
	MisBeginCondition(NoRecord,1536)
	MisBeginCondition(HasRecord, 1535)
	MisBeginCondition(NoMission, 1536 )
	MisBeginAction(AddMission, 1536 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с <bМаркусом> ")
	MisHelpTalk("<t>Желаю вам удачи!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±р¶юЦШГЕ
	DefineMission( 5124, " Вторые врата ", 1536,COMPLETE_SHOW )-------------ВнВе
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояни?")
	MisResultCondition(NoRecord, 1536)
	MisResultCondition(HasMission, 1536)
	MisResultAction(ClearMission,1536)
	MisResultAction(SetRecord, 1536)

---------------------------------------------------------------------ИэЦШГЕ

	DefineMission( 5125, " Третьи врата ", 1537 )

	MisBeginTalk( "<t>Я слуга Божества ветра." )------ВнВе
	MisBeginCondition(NoRecord, 1537 )
	MisBeginCondition(HasRecord, 1536 )
	MisBeginCondition(NoMission, 1537 )
	MisBeginAction(AddMission,  1537)
	MisBeginAction(AddTrigger,  15371, TE_KILL, 587, 3 )----------------РЧГНµД±¦КЇєЈла
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 3 Сирена ")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну ")
	MisResultCondition(HasMission,  1537)
	MisResultCondition(NoRecord,  1537)
	MisResultCondition(HasFlag,  1537, 11 )
	MisResultAction(ClearMission,  1537 )
	MisResultAction(SetRecord,  1537  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1537 , 10,2)
	RegCurTrigger(   15371 )


-------------------------------------------------------ёж±рИэЦШГЕ------------ВнВе
	DefineMission( 5126, " Третьи врата ", 1538 )

	MisBeginTalk( "<t>Поговорите с Зевсом " )
	MisBeginCondition(NoRecord,1538)
	MisBeginCondition(HasRecord, 1537)
	MisBeginCondition(NoMission, 1538 )
	MisBeginAction(AddMission, 1538 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Зевсом ")
	MisHelpTalk("<t>Желаю вам удачи!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рИэЦШГЕ
	DefineMission( 5127, " Третьи врата ", 1538,COMPLETE_SHOW )-------------РЮЛѕ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояни?")
	MisResultCondition(NoRecord, 1538)
	MisResultCondition(HasMission, 1538)
	MisResultAction(ClearMission,1538)
	MisResultAction(SetRecord, 1538)



---------------------------------------------------------------------ЛДЦШГЕ

	DefineMission( 5128, " Четвертые врата ", 1539 )

	MisBeginTalk( "<t>Я слуга Божества земли " )------РЮЛѕ
	MisBeginCondition(NoRecord, 1539 )
	MisBeginCondition(HasRecord, 1538 )
	MisBeginCondition(NoMission, 1539 )
	MisBeginAction(AddMission,  1539)
	MisBeginAction(AddTrigger,  15391, TE_KILL, 570, 4 )----------------ємєъЧУєЈµБНЕХЅ¶·Ф±
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 4 Абордажник бородачей ")
	MisNeed(MIS_NEED_KILL,570,5, 10, 5)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну ")
	MisResultCondition(HasMission,  1539)
	MisResultCondition(NoRecord,  1539)
	MisResultCondition(HasFlag,  1539, 14 )
	MisResultAction(ClearMission,  1539 )
	MisResultAction(SetRecord,  1539  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 570)	
	TriggerAction( 1, AddNextFlag,  1539 , 10,5)
	RegCurTrigger(   15391 )


-------------------------------------------------------ёж±рЛДЦШГЕ------------РЮЛѕ
	DefineMission( 5129, " Четвертые врата ", 1540 )

	MisBeginTalk( "<t>Поговорите с Доктором Маса " )
	MisBeginCondition(NoRecord,1540)
	MisBeginCondition(HasRecord, 1539)
	MisBeginCondition(NoMission, 1540 )
	MisBeginAction(AddMission, 1540 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Доктором Маса ")
	MisHelpTalk("<t>Желаю вам удачи!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рЛДЦШГЕ
	DefineMission( 5130, " Четвертые врата ", 1540,COMPLETE_SHOW )-------------ѕьТЅЎ¤ВкЙі
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояни?")
	MisResultCondition(NoRecord, 1540)
	MisResultCondition(HasMission, 1540)
	MisResultAction(ClearMission,1540)
	MisResultAction(SetRecord, 1540)


---------------------------------------------------------------------ОеЦШГЕ

	DefineMission( 5131, " Пятые врата ", 1541 )

	MisBeginTalk( "<t>Я слуга Божества снега " )------ѕьТЅЎ¤ВкЙі
	MisBeginCondition(NoRecord, 1541 )
	MisBeginCondition(HasRecord, 1540 )
	MisBeginCondition(NoMission, 1541 )
	MisBeginAction(AddMission,  1541)
	MisBeginAction(AddTrigger,  15411, TE_KILL, 589, 5 )----------------єЈСэ№­КЦ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 5 Сирена-стрелок ")
	MisNeed(MIS_NEED_KILL,589,2, 10, 2)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну ")
	MisResultCondition(HasMission,  1541)
	MisResultCondition(NoRecord,  1541)
	MisResultCondition(HasFlag,  1541, 11 )
	MisResultAction(ClearMission,  1541 )
	MisResultAction(SetRecord,  1541  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1541 , 10,2)
	RegCurTrigger(   15411 )


-------------------------------------------------------ёж±рОеЦШГЕ------------ѕьТЅЎ¤ВкЙі
	DefineMission( 5132, " Пятые врата ", 1542 )

	MisBeginTalk( "<t>Поговорите с Диспетчер порта Данний " )
	MisBeginCondition(NoRecord,1542)
	MisBeginCondition(HasRecord, 1541)
	MisBeginCondition(NoMission, 1542 )
	MisBeginAction(AddMission, 1542 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Диспетчер порта Данний ")
	MisHelpTalk("<t>Желаю вам удачи!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рОеЦШГЕ
	DefineMission( 5133, " Пятые врата ", 1542,COMPLETE_SHOW )-------------µ¤ДбЛ№
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояни?")
	MisResultCondition(NoRecord, 1542)
	MisResultCondition(HasMission, 1542)
	MisResultAction(ClearMission,1542)
	MisResultAction(SetRecord, 1542)

---------------------------------------------------------------------БщЦШГЕ

	DefineMission( 5134, " Шестые врата ", 1543 )

	MisBeginTalk( "<t><Я слуга Божества грома " )------µ¤ДбЛ№
	MisBeginCondition(NoRecord, 1543 )
	MisBeginCondition(HasRecord, 1542 )
	MisBeginCondition(NoMission, 1543 )
	MisBeginAction(AddMission,  1543)
	MisBeginAction(AddTrigger,  15431, TE_KILL, 36, 6 )----------------°ЧБйГЁ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 6 Свирепая белая рысь ")
	MisNeed(MIS_NEED_KILL,36,6, 10, 6)

	MisResultTalk("<t>Вы можете получить мое благословение..")
	MisHelpTalk("<t>Храните мою тайну ")
	MisResultCondition(HasMission,  1543)
	MisResultCondition(NoRecord,  1543)
	MisResultCondition(HasFlag,  1543, 15 )
	MisResultAction(ClearMission,  1543 )
	MisResultAction(SetRecord,  1543  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 36)	
	TriggerAction( 1, AddNextFlag,  1543 , 10,6)
	RegCurTrigger(   15431 )

-------------------------------------------------------ёж±рБщЦШГЕ------------µ¤ДбЛ№
	DefineMission( 5135, " Шестые врата ", 1544 )

	MisBeginTalk( "<t>Поговорите с Зурби " )
	MisBeginCondition(NoRecord,1544)
	MisBeginCondition(HasRecord, 1543)
	MisBeginCondition(NoMission, 1544 )
	MisBeginAction(AddMission, 1544 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Зурби ")
	MisHelpTalk("<t>Желаю вам удачи!!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рБщЦШГЕ
	DefineMission( 5136, " Шестые врата ", 1544,COMPLETE_SHOW )-------------Цм±И
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояни?")
	MisResultCondition(NoRecord, 1544)
	MisResultCondition(HasMission, 1544)
	MisResultAction(ClearMission,1544)
	MisResultAction(SetRecord, 1544)

---------------------------------------------------------------------ЖЯЦШГЕ

	DefineMission( 5137, " Седьмые врата ", 1545 )

	MisBeginTalk( "<t>Я слуга Божества молний " )------Цм±И
	MisBeginCondition(NoRecord, 1545 )
	MisBeginCondition(HasRecord, 1544 )
	MisBeginCondition(NoMission, 1545 )
	MisBeginAction(AddMission,  1545)
	MisBeginAction(AddTrigger,  15451, TE_KILL, 263, 7 )----------------µШѕ«ХЅКїі¤
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 7 Терранских капитанов ")
	MisNeed(MIS_NEED_KILL,263,7, 10, 7)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну ")
	MisResultCondition(HasMission,  1545)
	MisResultCondition(NoRecord,  1545)
	MisResultCondition(HasFlag,  1545, 16 )
	MisResultAction(ClearMission,  1545 )
	MisResultAction(SetRecord,  1545  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 263)	
	TriggerAction( 1, AddNextFlag,  1545 , 10,7)
	RegCurTrigger(   15451 )

-------------------------------------------------------ёж±рЖЯЦШГЕ------------Цм±И
	DefineMission( 5138, " Седьмые врата ", 1546 )

	MisBeginTalk( "<t>Поговорите с Линдой " )
	MisBeginCondition(NoRecord,1546)
	MisBeginCondition(HasRecord, 1545)
	MisBeginCondition(NoMission, 1546 )
	MisBeginAction(AddMission, 1546 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Линдой ")
	MisHelpTalk("<t>Желаю вам удачи!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рЖЯЦШГЕ
	DefineMission( 5139, " Седьмые врата ", 1546,COMPLETE_SHOW )-------------БХґп
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояни? ")
	MisResultCondition(NoRecord, 1546)
	MisResultCondition(HasMission, 1546)
	MisResultAction(ClearMission,1546)
	MisResultAction(SetRecord, 1546)

---------------------------------------------------------------------°ЛЦШГЕ

	DefineMission( 5140, " Восьмые врата ", 1547 )

	MisBeginTalk( "<t>Я слуга Божества любви " )------БХґп
	MisBeginCondition(NoRecord, 1547 )
	MisBeginCondition(HasRecord, 1546 )
	MisBeginCondition(NoMission, 1547 )
	MisBeginAction(AddMission,  1547)
	MisBeginAction(AddTrigger,  15471, TE_KILL, 808, 8 )----------------НцБйКї±ш
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 8 Солдат мертвых душ ")
	MisNeed(MIS_NEED_KILL,808,8, 10,8)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну ")
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

-------------------------------------------------------ЦХЅбГЕµДЦёКѕ------------БХґп
	DefineMission( 5141, " Инструкция к последним вратам ", 1548 )

	MisBeginTalk( "<t>Вот <rОракул>.А теперь ступайте и поговорите с Лангой " )
	MisBeginCondition(NoRecord,1548)
	MisBeginCondition(HasRecord, 1547)
	MisBeginCondition(NoMission, 1548 )
	MisBeginAction(AddMission, 1548 )
	MisBeginAction(GiveItem, 2917,1,4)----------------------------------------------------ЙсЪН
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Лангой ")
	MisHelpTalk("<t>Богиня с Вами ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ЦХЅбГЕµДЦёКѕ
	DefineMission( 5142, " Инструкция к последним вратам ", 1548,COMPLETE_SHOW )-------------АЙДГ¶И
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Что бы получить Оракул , нужно проделать нелегкий путь...")
	MisResultCondition(NoRecord, 1548)
	MisResultCondition(HasMission, 1548)
	MisResultCondition(HasItem,2917,1)--------------ЙсЪН
	MisResultAction(TakeItem, 2917,1)-------------ЙсЪН
	MisResultAction(ClearMission,1548)
	MisResultAction(SetRecord, 1548)

	---------------------------------------------------------------------НкГАєЈµБИООс

	DefineMission( 5143, " Пиратская Миссия ", 1549 )

	MisBeginTalk( "<t>В доказательство того что вы идеальный пират , пройдите несколько заданий " )------°¬БўїЛ
	MisBeginCondition(NoRecord, 1549 )
	MisBeginCondition(HasRecord, 1506 )
	MisBeginCondition(NoMission, 1549 )
	MisBeginAction(AddMission,  1549)
	MisBeginAction(AddTrigger,  15491, TE_KILL, 546, 10 )----------------Р°¶сµДДП№ПЖпКї
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 10 Зловещий рыцарь тыквы ")
	MisNeed(MIS_NEED_KILL,546,10, 10,10)

	MisResultTalk("<t>Отлично.")
	MisHelpTalk("<t>Вы не уибили тыкв?")
	MisResultCondition(HasMission,  1549)
	MisResultCondition(NoRecord,  1549)
	MisResultCondition(HasFlag,  1549, 19 )
	MisResultAction(ClearMission,  1549 )
	MisResultAction(SetRecord,  1549  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1549 , 10,10)
	RegCurTrigger(   15491 )



---------------------------------------------------------------------НкГАєЈµБИООс

	DefineMission( 5144, " Пиратская Миссия ", 1550 )

	MisBeginTalk( "<t>Ваше второе задание.Достать для меня 2 Королевских меча " )------°¬БўїЛ
	MisBeginCondition(NoRecord, 1550 )
	MisBeginCondition(HasRecord, 1549 )
	MisBeginCondition(NoMission, 1550 )
	MisBeginAction(AddMission,  1550)
	MisBeginAction(AddTrigger,  15501, TE_GETITEM, 4893, 2 )----------------НхКТЕеЅЈ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите 2 Королевских меча ")
	MisNeed(MIS_NEED_ITEM, 4893, 2, 10, 2)

	MisResultTalk("<t>Отлично.")
	MisHelpTalk("<t>Спасибо.Я ищу этот меч в течение очень долгих лет ")
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


---------------------------------------------------------------------НкГАєЈµБИООс

	DefineMission( 5145, " Пиратская Миссия ", 1551 )

	MisBeginTalk( "<t>Ооо Сирены напали на мой корабль!Отомсти им!" )------°¬БўїЛ
	MisBeginCondition(NoRecord, 1551 )
	MisBeginCondition(HasRecord, 1550 )
	MisBeginCondition(NoMission, 1551 )
	MisBeginAction(AddMission,  1551)
	MisBeginAction(AddTrigger,  15511, TE_KILL, 606, 3 )----------------ЙоА¶єЈСэ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 3 Глубоководных сирен ")
	MisNeed(MIS_NEED_KILL,606,3, 10,3)

	MisResultTalk("<t>Никогда мне не лгите...")
	MisHelpTalk("<t>Никогда мне не лгите...")
	MisResultCondition(HasMission,  1551)
	MisResultCondition(NoRecord,  1551)
	MisResultCondition(HasFlag,  1551, 12 )
	MisResultAction(ClearMission,  1551 )
	MisResultAction(SetRecord,  1551  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1551 , 10,3)
	RegCurTrigger(   15511 )

---------------------------------------------------------------------НкГАєЈµБИООс

	DefineMission( 5146, " Пиратская Миссия ", 1552 )

	MisBeginTalk( "<t>Недавно я гулял по пляжу , и увидел красивые кристалы.Я украл их...Знаете мне так неловко.Но думаю если мы уничтожим свидетелей..." )------°¬БўїЛ
	MisBeginCondition(NoRecord, 1552 )
	MisBeginCondition(HasRecord, 1551 )
	MisBeginCondition(NoMission, 1552 )
	MisBeginAction(AddMission,  1552)
	MisBeginAction(AddTrigger,  15521, TE_KILL, 589, 3 )----------------єЈСэ№­КЦ
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Убейте 3 Сирена-стрелок ")
	MisNeed(MIS_NEED_KILL,589,3, 10,3)

	MisResultTalk("<t>Благодарю вас за проделанную заботу ")
	MisHelpTalk("<t>Чего вы стоите?")
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

-------------------------------------------------------ГХµЧЅТПю------------АНВЧµПВнЛ№
	DefineMission( 5147, " Тайна разгадана ", 1553 )

	MisBeginTalk( "<t>Отлично!Вы выполнили все требования для того что бы поговорить с Просветленным.Вот вам Камень Менга , отдайте его Просветленному." )
	MisBeginCondition(NoRecord,1553)
	MisBeginCondition(HasRecord, 1577)
	MisBeginCondition(NoMission, 1553 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------ГЙµВКЇ
	MisBeginAction(AddMission, 1553 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Отнесите Камень Менгу Старику-предсказателю ")
	MisHelpTalk("<t>Будте осторожнее ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ГХµЧЅТПю
	DefineMission( 5148, " Тайна разгадана ", 1553,COMPLETE_SHOW )-------------№ЦЫЕТЇТЇ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Не беспокойте меня!")
	MisResultCondition(NoRecord, 1553)
	MisResultCondition(HasMission, 1553)
	MisResultCondition(HasItem, 2918, 1)------------ГЙµВКЇ
	MisResultAction(TakeItem, 2918, 1 )-----ГЙµВКЇ
	MisResultAction(ClearMission,1553)
	MisResultAction(SetRecord, 1553)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------ГХµЧЅТПю------------АЙДГ¶И
	DefineMission( 5149, " Тайна разгадана ", 1554 )

	MisBeginTalk( "<t>Отлично!Вы выполнили все требования для того что бы поговорить с Просветленным.Вот вам Камень Менга , отдайте его Просветленному." )
	MisBeginCondition(NoRecord,1554)
	MisBeginCondition(HasRecord, 1548)
	MisBeginCondition(NoMission, 1554 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------ГЙµВКЇ
	MisBeginAction(AddMission, 1554 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>206тнесите Камень Менгу Старику-предсказателю ")
	MisHelpTalk("<t>Будте осторожнее ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ГХµЧЅТПю
	DefineMission( 5150, " Тайна разгадана ", 1554,COMPLETE_SHOW )-------------№ЦЫЕТЇТЇ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Не беспокойте меня!")
	MisResultCondition(NoRecord, 1554)
	MisResultCondition(HasMission, 1554)
	MisResultCondition(HasItem, 2918, 1)------------ГЙµВКЇ
	MisResultAction(TakeItem, 2918, 1 )-----ГЙµВКЇ
	MisResultAction(ClearMission,1554)
	MisResultAction(SetRecord, 1554)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------ГХµЧЅТПю------------°¬БўїЛ
	DefineMission( 5151, " Тайна разгадана ", 1555 )

	MisBeginTalk( "<t>Отлично!Вы выполнили все требования для того что бы поговорить с Просветленным.Вот вам Камень Менга , отдайте его Просветленному." )
	MisBeginCondition(NoRecord,1555)
	MisBeginCondition(HasRecord, 1552)
	MisBeginCondition(NoMission, 1555 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------ГЙµВКЇ
	MisBeginAction(AddMission, 1555 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>206тнесите Камень Менгу Старику-предсказателю ")
	MisHelpTalk("<t>Будте осторожнее ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ГХµЧЅТПю
	DefineMission( 5152, " Тайна разгадана ", 1555,COMPLETE_SHOW )-------------№ЦЫЕТЇТЇ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Не беспокойте меня!")
	MisResultCondition(NoRecord, 1555)
	MisResultCondition(HasMission, 1555)
	MisResultCondition(HasItem, 2918, 1)------------ГЙµВКЇ
	MisResultAction(TakeItem, 2918, 1 )-----ГЙµВКЇ
	MisResultAction(ClearMission,1555)
	MisResultAction(SetRecord, 1555)
	MisResultAction(SetRecord, 1556)

------------------------------------------------------АПРаГЗµДѕА·Ч------------№ЦЫЕТЇТЇ
	DefineMission( 5169, " Стариковский спор ", 1557 )

	MisBeginTalk( "<t>Хм...поговорите с Бабушкой Донг (795, 363)" )
	MisBeginCondition(NoRecord,1557)
	MisBeginCondition(HasRecord, 1556)
	MisBeginCondition(NoMission, 1557 )
	MisBeginAction(AddMission, 1557 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Бабушкой Донг (795, 363)")
	MisHelpTalk("<t>Поговорите с Бабушкой Донг (795, 363)")
	MisResultCondition(AlwaysFailure)


	--------------------------------------------------------АПРаГЗµДѕА·Ч
	DefineMission( 5153, " Стариковский спор ", 1557,COMPLETE_SHOW )-------------¶¬ґпГЧЖЕЖЕ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Кто спорит?Я спорю?Ха-ха.Скажите мне <rПривет> и ответьте на вопрос.")
	MisResultCondition(NoRecord, 1557)
	MisResultCondition(HasMission, 1557)
	MisResultAction(ClearMission,1557)
	MisResultAction(SetRecord, 1557)
	
---------------------------------------------------------------------АПМ«ЖЕµДЦЗ»Ы

	DefineMission( 5154, " Интеллект бабушки ", 1561 )

	MisBeginTalk( "<t>Вы достаточно умен.Ответе еще на один вопрос!" )------¶¬ґпГЧЖЕЖЕ
	MisBeginCondition(NoRecord,1561)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1559)
	MisBeginCondition(NoMission, 1561 )
	MisBeginAction(AddMission, 1561 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Нажмите на <rЕще раз здравствуй> и ответьте на вопрос.")
	
	MisResultTalk("<t>Поразительно!")
	MisHelpTalk("<t>Мышление это признак мудрости.")
	MisResultCondition(NoRecord, 1561)
	MisResultCondition(HasMission, 1561)
	MisResultCondition(HasRecord, 1562)
	MisResultCondition(HasRecord, 1564)
	MisResultAction(ClearMission,1561)
	MisResultAction(SetRecord, 1561)
	

---------------------------------------------------------------------ЦОБЖґ«ИѕІЎ

	DefineMission( 5155, " Лечение ", 1566 )-----¶¬ґпГЧЖЕЖЕ

	MisBeginTalk( "<t>Ха-ха.Мне нужна граната!" )------¶¬ґпГЧЖЕЖЕ
	MisBeginCondition(NoRecord,1566)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1560)
	MisBeginCondition(NoMission, 1566 )
	MisBeginAction(AddMission, 1566 )
	MisBeginAction(AddTrigger,  15661, TE_GETITEM, 2743, 1 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите бабушке 1 гранату 3 уровня ")
	MisNeed(MIS_NEED_ITEM,2743,1, 10, 1)

	MisResultTalk("<t>Спасибо.")
	MisHelpTalk("<t>Это наказ!")
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
---------------------------------------------------------------------КЦ¶ЇЦОБЖ·Ё

	DefineMission( 5156, "Лечение ", 1567 )-----¶¬ґпГЧЖЕЖЕ

	
	MisBeginTalk( "<t>Мне нужна Световая бомба 3 ур.  " )------¶¬ґпГЧЖЕЖЕ
	MisBeginCondition(NoRecord,1567)
	MisBeginCondition(HasRecord, 1562)
	MisBeginCondition(HasRecord, 1565)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(NoMission, 1567 )
	MisBeginAction(AddMission, 1567 )
	MisBeginAction(AddTrigger,  15671, TE_GETITEM, 2744, 1 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Дайте бабушке Световую гранату 3 ур ")
	MisNeed(MIS_NEED_ITEM,2744,1, 10, 1)

	MisResultTalk("<t>Спасибо.")
	MisHelpTalk("<t>Это наказ!")
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



-------------------------------------------------------ХжАнКШ»¤ХЯ-----------------¶¬ґпГЧЖЕЖЕ
	DefineMission( 5157, " Страж правды ", 1568 )

	MisBeginTalk( "<t>Думаю вам пора поговорить со Стариком-предсказателем." )
	MisBeginCondition(NoRecord,1568)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(HasRecord, 1564)
	MisBeginCondition(NoMission, 1568 )
	MisBeginAction(AddMission, 1568 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	
	MisNeed(MIS_NEED_DESP, "<t>Поговорите со Стариком-предсказателем.")
	MisHelpTalk("<t>Ну же!Идите ")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------------ХжАнКШ»¤ХЯ
	DefineMission( 5158, " Страж правды ", 1568,COMPLETE_SHOW )-------------№ЦЫЕ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You mean Granny Dong has admitted failure? You aren't joking with me, are you? Wahaha looks like the truth is in the hands of wise men like me, though we are far and few. You are hereby appointed Guardian of Truth by the great Weird Grampa!")
	MisResultCondition(NoRecord, 1568)
	MisResultCondition(HasMission, 1568)
	MisResultAction(ClearMission,1568)
	MisResultAction(SetRecord, 1568)
	MisResultAction(SetRecord, 1571)


	-------------------------------------------------------ХжАнКШ»¤ХЯ-----------------¶¬ґпГЧЖЕЖЕ
	DefineMission( 5159, " Страж правды ", 1569 )

	MisBeginTalk( "<t>Думаю вам пора поговорить со Стариком-предсказателем." )
	MisBeginCondition(NoRecord,1569)
	MisBeginCondition(HasRecord, 1567)
	MisBeginCondition(NoMission, 1569 )
	MisBeginAction(AddMission, 1569 )
	MisCancelAction(SystemNotice, "Квест не может быть удален ")
	
	MisNeed(MIS_NEED_DESP, "<t>Поговорите со Стариком-предсказателем.")
	MisHelpTalk("<t>Ну же!Идите ")
	
	MisResultCondition(AlwaysFailure)


--------------------------------------------------------ХжАнКШ»¤ХЯ

	DefineMission( 5160, " Страж правды ", 1569,COMPLETE_SHOW )-------------№ЦЫЕ
	
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
-----------------------------------------------------ЙсГШµДЦдУп

	DefineMission( 5161, " Таинственное проклятие  ",1570 )

	MisBeginTalk( "<t>Вы говорите что Бабушка Донг признала вашу мудрость? Вы не шутите? Ха-ха-ха!Теперь я уверен в том что вы сможете хранить тайну.Принесите мне пароль AB " )
	MisBeginCondition(NoRecord, 1570)
	MisBeginCondition(HasRecord, 1571)
	MisBeginCondition(NoMission,1570 )
	MisBeginAction(AddMission, 1570)
	MisBeginAction(AddTrigger, 15701, TE_GETITEM, 2408, 1 )		--їЪБоAB
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Досньте Старику пароль AB ")
	MisNeed(MIS_NEED_ITEM,2408,1, 10, 1)
	
	MisResultTalk("<t>Спешите!")
	MisHelpTalk("<t>Говорят солдаты с паролями часто появляются у базы Флота ")
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

----------------------------------------------------ЙсГШµДЦдУп

	DefineMission( 5162, " Таинственное проклятие  ",1572 )

	MisBeginTalk( "<t>Принесите пароль BC" )
	MisBeginCondition(NoRecord, 1572)
	MisBeginCondition(HasRecord, 1570)
	MisBeginCondition(NoMission,1572 )
	MisBeginAction(AddMission, 1572)
	MisBeginAction(AddTrigger, 15721, TE_GETITEM, 2409, 1 )		--їЪБоBC
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите пароль BC ")
	MisNeed(MIS_NEED_ITEM,2409,1, 10, 1)
	
	MisResultTalk("<t>Спешите!")
	MisHelpTalk("<t>Говорят солдаты с паролями часто появляются у базы Флота ")
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


	----------------------------------------------------ЙсГШµДЦдУп

	DefineMission( 5163, " Таинственное проклятие ",1573 )

	MisBeginTalk( "<t>Принесите пароль CD" )
	MisBeginCondition(NoRecord, 1573)
	MisBeginCondition(HasRecord, 1572)
	MisBeginCondition(NoMission,1573 )
	MisBeginAction(AddMission, 1573)
	MisBeginAction(AddTrigger, 15731, TE_GETITEM, 2410, 1 )		--їЪБоCD
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите пароль CD ")
	MisNeed(MIS_NEED_ITEM,2410,1, 10, 1)
	
	MisResultTalk("<t>Спешите!")
	MisHelpTalk("<t>Говорят солдаты с паролями часто появляются у базы Флота ")
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


----------------------------------------------------ЙсГШµДЦдУп

	DefineMission( 5164, " Таинственное проклятие " ,1574 )

	MisBeginTalk( "<t>Принесите пароль DE " )
	MisBeginCondition(NoRecord, 1574)
	MisBeginCondition(HasRecord, 1573)
	MisBeginCondition(NoMission,1574 )
	MisBeginAction(AddMission, 1574)
	MisBeginAction(AddTrigger, 15741, TE_GETITEM, 2411, 1 )		--їЪБоDE
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите пароль DE")
	MisNeed(MIS_NEED_ITEM,2411,1, 10, 1)
	
	MisResultTalk("<t>Спешите!")
	MisHelpTalk("<t>Говорят солдаты с паролями часто появляются у базы Флота ")
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


----------------------------------------------------ЙсГШµДЦдУп

	DefineMission( 5165, " Таинственное проклятие  ",1575 )

	MisBeginTalk( "<t>Принесите пароль EF " )
	MisBeginCondition(NoRecord, 1575)
	MisBeginCondition(HasRecord, 1574)
	MisBeginCondition(NoMission,1575 )
	MisBeginAction(AddMission, 1575)
	MisBeginAction(AddTrigger, 15751, TE_GETITEM, 2412, 1 )		--їЪБоEF
	MisCancelAction(SystemNotice, "Квест не может быть удален ")

	MisNeed(MIS_NEED_DESP, "Принесите пароль EF ")
	MisNeed(MIS_NEED_ITEM,2412,1, 10, 1)
	
	MisResultTalk("<t>Отлично!Я сообщу вам о результатах ")
	MisHelpTalk("<t>Говорят солдаты с паролями часто появляются у базы Флота ")
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


----------------------------------------ЦдУпµДСРѕїЅб№ы
     DefineMission(5166," Результат разработки печати ",1576)
     MisBeginTalk("<t>Я сообщу вам о результатах ")
     MisBeginCondition(NoRecord,1576)
      MisBeginCondition(NoMission, 1576)
     MisBeginCondition(HasRecord, 1575)
     MisBeginAction(AddMission, 1576)
     MisCancelAction(SystemNotice, "Квест не может быть удален ")

     MisNeed(MIS_NEED_DESP, "Подождите пока Старик расскажет вам об результах ")
     MisHelpTalk("<t>Пожалуйста,будте терпеливы ")
     MisResultTalk("<t>Эти пароли на самом деле не имеют ничего общего с проклятием. Я был обманут....")
     MisResultCondition(HasRecord, 1576)---------У¦ёДОЄNoRecord
     MisResultCondition(HasMission, 1576)
     MisResultAction(ClearMission, 1576 )
     MisResultAction(SetRecord, 1576 )



end
HistoryMission001()






--------------------------------------------------------------------------AngelOfDeath-------------------------------------------------------------------------
----------------------------------------------------------------------------Project----------------------------------------------------------------------------
-----------------------------------------------------------------------------2009 (c)--------------------------------------------------------------------------
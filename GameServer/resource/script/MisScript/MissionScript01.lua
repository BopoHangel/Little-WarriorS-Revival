print("-------------------------------------------------------------------------------")
print( "‡ Јаг§Є  Ї ЇЄЁ Misscript (ЊЁббЁЁ Ё ¤Ё®«®ЈЁ) :" )
print("-------------------------------------------------------------------------------")
print( "‡ Јаг§Є  MissionScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[Т©ІЭЙМИЛЎЄЎЄµЫД·]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function RobinMission003()

-----------------------------------Т©Ж·µкµДОКєт
	DefineMission( 707, "Приветствие Врача ", 703, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я вижу вы здесь новенький? Добро пожаловать! Возьмите эти <rЯблоки>, я их сам делал! Я думаю они вам прегодятся.<n><t>А сейчас возвращайтесь к Сенне (2223, 2785).<n><t>(Дито дал вам несколько яблок. Перетащите их на кнопки F1 - F8 для быстрого использования.)")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(NoFlag, 703, 10)
	MisResultCondition(HasFlag, 703, 1)
	MisResultCondition(HasItem, 3952, 1)
	MisResultAction(TakeItem, 3952, 1)
	MisResultAction(SetFlag, 703, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)

--------------------------Т¶ЧУКХјЇ
	DefineMission( 733, "Коллекция листьев ", 721 )

	MisBeginTalk( "<t>Привет! Вам нужно собрать для меня нкоторые травы. Мне нужно несколько типов лситьев. Собери 10 <rПожухлый лист> и 5 <rЗеленый лист>, которые можно выбить с Волшебного куста или Волшебного цветка." )
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
	
	MisResultTalk("<t>Замечательно! Я могу продолжить мои исследования дальше!")
	MisHelpTalk("<t>Разве ты не собрал листья?")
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

--------------------------БйёРЕд·Ѕ
	DefineMission( 738, "Рецепт Отвара ", 726 )

	MisBeginTalk( "<t>Уеня появилось вдохновление, чтобы создать новый вид медицины. Извините, что я вас побеспокоил, но не могли бы вы мне помочь собрать 2 <rСтакана>, 2 <rЦветочные почки> and 5 <rЧернил спрута>. Ингридиенты можно добыть из Лесного духа, Мистического цветка и креветочки. Я награжу тебя. Иди прямо сейчас!" )
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
	
	MisResultTalk("<t>Очень хорошо. Так как вы собрали необходимые ингридиенты, я могу начать иследования нового зелья.")
	MisHelpTalk("<t>Что? Поспеши собрать все ингридиенты пока у меня не прошло вдохновение...")
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

--------------------------Дў№ЅДў№Ѕ
	DefineMission( 739, "Грибы Грибы ", 727 )

	MisBeginTalk( "<t>Говоря о том,в прошлом,я привык собирать <bГриб жадовец> недалеко от Аргента. Недавно я был занят експерементом,с рецептом,но забыл полностью где это место.Мне кажется что сейчас хорошее время,чтобы придать их хорошему использованию. Можешь пожалуйста мне принести 10 <rЯдовитых грибов> и 5 <rГрибов>?<n><t>Ммм...Скажу о том, что этот Гриб-жадобец весьма агрессивен,так что лучше захвати с собой, некоторые лечебные изделия. Гриб можно найти по координатам (2220, 2564). Обрати внимание,возможно сейчас лучшее время для урожая!" )
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
	
	MisResultTalk("<t>Восхетительно! Ты собрал все! Спасибо!")
	MisHelpTalk("<t>В чем дело? Разве гриб-жадовец испугал вас?")
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
RobinMission003() --¶ЁТеИООсєуЅбКшК±±ШРлµчУГёГєЇКэ


----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[РЎЙЅіµ]				--
--							--
--		219350,273050				--
----------------------------------------------------------
function RobinMission004()

-----------------------------------ЙъґжЦёДП
	DefineMission( 748, "Компас выживания ", 736 )
	
	MisBeginTalk( "<t>Ты здесь,чтобы стать Исследователем? Исследователям часто приходиться сталкиваться с различными опасностями,и им нужно заниматься собой. Без необходимых знаний, ты не сможешь существовать в этом жестоком мире, как Исследователь. Чтобы получить <rКомпас выживания>, тебе нужно будет подойти к <pОкраинам Аргента>, убить 5 <bБолтных духов> (К северу от шахт), 10 <bМорских улиток> (На побережье) и собрать 5 шт. <bЧерепашьей крови> (Травяная черепаха).<n><t>Когда ты выполнишь задание, я вручу тебе <bКомпас выжывания>.<n><t>Когда станешь 10 уровнем приходи, я сделаю тебя исследователем." )
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
	
	MisResultTalk("<t>Четко выполнил, я горжусь тобой!<n><t>Ты прогел это испытание. Вот тебе <rКомпас выживания> это то, что тебе понравиться. <n><t>Сохрани его и принеси мне, когда достигнешь <p10 уровня>.")
	MisHelpTalk("<t>Ты не выполнил задание. Воспользуйся Руководством выживания.Иди работай,иначе никогда не станешь Исследователем!")
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


-----------------------------------єЅєЈКїЧЄЦ°ИООс
	DefineMission( 758, "Путешествие Покорителя морей ", 742 )
	
	MisBeginTalk( "<t>Если вы выбирете профессию <bПокоритель морей>, вы должны будете придти ко мне.<n><t>Когда я был молод,я относился по-дружески к каждому моряку. Сейчас, они плавают в гаванях многих частей света.<n><t>Возьми моё рекомендательное письмо,чтобы они знали,что ты от меня. <n><t>Они стоят у пристани: <pОстрова Зефира>'s <b Портальщица Аргента>, <pЛедниковый остров>'s <b Остров Удачи>, <Остров Отверженных>'s <b Остров Купидона> и <pБухта Сары>'s <b Остров Канареек>.Короче говоря побегай по островам..." )
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
	
	MisResultTalk("<t>О,ты вернулся! Теперь ты стал <bМореплавателем>.<n><t>Пойди в море под парусами и стань легендой!")
	MisHelpTalk("<t>Беги быстрее! Ты что не слышишь зов океана? Тогда ты не готов быть моряком!")
	MisResultCondition(HasMission, 742)
	MisResultCondition(HasFlag, 742, 20 )
	MisResultCondition(HasFlag, 742, 30 )
	MisResultCondition(HasFlag, 742, 40 )
	MisResultCondition(HasFlag, 742, 50 )
	MisResultAction(ClearMission, 742)
	MisResultAction(SetRecord, 742)
	MisResultAction(SetProfession, 16)



-----------------------------------єЅєЈКїЧЄЦ°ИООс
	DefineMission( 760, "Путешествие Покорителя морей ", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Хохо! Хочешь стать покорителем морей?  Тогда ты должен больше работать! Это будет светлое будущее для вас, если вы станете покорителем морей!")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 20)
	MisResultAction(SetFlag, 742, 20)


-----------------------------------єЅєЈКїЧЄЦ°ИООс
	DefineMission( 761, "Путешествие Покорителя морей ", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Проклятый Маленький Даниэль. Одна мысль только после того,как я попрощался!")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 30)
	MisResultAction(SetFlag, 742, 30)

-----------------------------------єЅєЈКїЧЄЦ°ИООс
	DefineMission( 762, "Путешествие Покорителя морей ", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Ох, новый покоритель морей, Добро пожаловать!<n><t>Незабудь,он должен тебе 50000G...уже 5 лет...")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 40)
	MisResultAction(SetFlag, 742, 40)

-----------------------------------єЅєЈКїЧЄЦ°ИООс
	DefineMission( 763, "Путешествие Покорителя морей ", 742, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Плавание в море очень опасно. Обращайся ко мне,если будет необходимость. Малыш Даниэль помогал всегда и будет помогать.")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 50)
	MisResultAction(SetFlag, 742, 50)

end
RobinMission004()


----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[РЎЅрЅр]				--
--							--
--		224575,277025				--
----------------------------------------------------------
function RobinMission007()

-----------------------------------МъЅіµДОКєт
	DefineMission( 703, "Приветствие Кузнеца ", 701, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я смотрю вы здесь новичок? Меня зовут <bГолди>, Я кузнец города <pАргент>. Я кую оружие, вставляю в них самоцветы, придаю им красивый вид, могу делать слота в вещах, а также могу вынимать самоцветы из твоих вещей и т.д... Я действительно занятой в эти дни, но сделаю исключение, чтобы помочь тебе, так как я вижу что у тебя есть Рекомендательное письмо от Наставницы Сенны.<n><t>Не забудь поговорить с <bСенной> по координатам (2223, 2785) я длеаю это все только ради нее, ахаха!<n><t>(Голди дал тебе Нож новичка. Открой инвентарь и двойным щелчком нажми на него.)")
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
--		Йіб°іЗ[ґуЙс№ЩЎ¤ёКµШО¬А­]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission017()

-----------------------------------тЇіПµ»ОД
	DefineMission( 719, "Патент о благочестии ", 711 )
	
	MisBeginTalk( "<t>Зачем тебе понадобился  <rПатент о благочестии>? Раньше многие пробовали быть Знахаркой,чтобы зарабатывать деньги. Тебе прийдется доказать мне,сможешь ли ты соответствовать своей квалификации.<n><t>Потом я смогу тебе дать <rПатент о благочестии><t>Пойди и отвари мне 1 чашку <rСок Эльфйского фрукта> и принеси мне 2 <rЦелебные травы>. TЭто часть твоего обучения относительно микстур обновления. Найди <bOuya> в <pШайтане> если тебе будет нужна помощь.<n><t>Иди по координатам <r(1184, 3557)> и убей 10 <bБольших скорпионов> " )
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
	
	MisResultTalk("<t>Ты хорошо научился!<n><t>С тех пор,как ты прошел моё испытание, это и есть <rПатент о благочестии> Требуемый для Знахарки.<n><t>Возвращайся ко мне,когда достигнешь <p10 уровня>. ")
	MisHelpTalk("<t>Ты не выполнил моего поручения. Ты не готов стать Знахаркой.")
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

-----------------------------------КҐЦ°ХЯЧЄЦ°ИООс
	DefineMission( 751, "Аллея Целителя ", 739 )
	
	MisBeginTalk( "<t>Чтобы стать <bЦелителем, нужно иметь веру. Я надеюсь, что ты не забудешь об этом. Я дам тебе простенькую задачу.<n><t>Собери всего лишь 2 <yЛепестка многоцвета>, 4 <yПанацеи> и 6  банок <yСока эльфийского Фрукта>.<n><t>Передай половину <bДедушке Донгу> в Ледяном шипе и <bДоктору - Чиво> в Халдейском оплоте. Ты должен передать 3 банки Сока эльфийского фрукта, 2 Панацеи и 1 Лепесток многоцвета." )
	MisBeginCondition(NoRecord, 739)
	MisBeginCondition(NoMission, 740)
	MisBeginCondition(NoMission, 739)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 5 )
	MisBeginCondition(CheckConvertProfession, MIS_CLERGY )
	MisBeginAction(AddMission, 739)
	MisCancelAction(ClearMission, 739)

	MisNeed(MIS_NEED_DESP, "Принесите 3 сока эльфийского фрукта, 2 панацеи и 1 Лепесток многоцвета <bДедушке Донгу> В Ледяном шипе (795, 363)")
	MisNeed(MIS_NEED_DESP, "Принесите 3 сока эльфийского фрукта, 2 панацеи и 1 Лепесток многоцвета <bДоктору Чиво> В Халдейском оплоте (630, 2091)")
	
	MisResultTalk("<t>Поздравляю!<n><t>Теперь ты <bЦельтельница>!<n><t>Пусть Богиня Кара будет с тобой.")
	MisHelpTalk("<t>По какой причине ты не смог выполнить моё поручение? Не забывай! Терпение и целеустремление - ключ к успеху!")
	MisResultCondition(HasMission, 739)
	MisResultCondition(HasFlag, 739, 10 )
	MisResultCondition(HasFlag, 739, 20 )
	MisResultAction(ClearMission, 739)
	MisResultAction(SetRecord, 739)
	MisResultAction(SetProfession, 13)
	
-----------------------------------КҐЦ°ХЯЧЄЦ°ИООс
	DefineMission( 752, "Аллея Целителя ", 739, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("Это подарок для меня? Вы очень добры. Я сообщю высшему целителю об этом.")
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

-----------------------------------КҐЦ°ХЯЧЄЦ°ИООс
	DefineMission( 753, "Walk of the Cleric", 739, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("Так,высший целитель послал вас. Я ощущаю недостаток некоторых важных трав и ты доберись до истины. Я сообщю высшему целителю относительно этого вещества.")
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



-----------------------------------·вУЎК¦ЧЄЦ°ИООс
	DefineMission( 755, "Пути Колдуньи ", 740 )
	
	MisBeginTalk( "<t>Чтобы стать <bКолдуньей>, ты должен иметь баланс добра и зла. Чтобы проверить твою способность, мне нужно сделать что-нибудь:<n><t>Собери 3 <yОвечьих колокольчика> с <rБезумной овцы>, 10 <yОчень острый клюв> с <rЖалоклюв> и 3 <yНепорочных сердец> со <rСнежного духа>. Отнеси это <bСвященной жрице - Аде> в <pСтарый город Шайтана> и скажи ей,чтобы очистила <yПорочное сердце>. <n><t>Ищи <rОчень острый клюв> в Андийском лесе в <pАскароне> и остальное может быть найдено в <pВеликий Синий океан>" )
	MisBeginCondition(NoRecord, 740)
	MisBeginCondition(NoMission, 740)
	MisBeginCondition(NoMission, 739)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 5 )
	MisBeginCondition(CheckConvertProfession, MIS_SEALER )
	MisBeginAction(AddMission, 740)
	MisCancelAction(ClearMission, 740)

	MisNeed(MIS_NEED_DESP, "Принеси 3 предмета и <yПорочное сердце> к <bСвященной жрице Аде> в <pСтарый город Шайтана> по координатам (862, 3303). Очисти там <yПорочное сердце>.")
	
	MisResultTalk("<t>Поздравляю, теперь ты <bКолдунья>.<n><t>Пусть Богиня Кара благославит тебя!")
	MisHelpTalk("<t>Иди сейчас! Верь в себя и выполни задание!")
	MisResultCondition(HasMission, 740)
	MisResultCondition(HasFlag, 740, 10 )
	MisResultAction(ClearMission, 740)
	MisResultAction(SetRecord, 740)
	MisResultAction(SetProfession, 14)

-----------------------------------·вУЎК¦ЧЄЦ°ИООс
	DefineMission( 756, "Пути Колдуньи ", 740, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Да Благославит тебя Богиня Кара.<n><t>Так...Ты принес материалы,которые очищают. Очень хорошо. Я сделаю своё очищение в этом храме.<n><t>Ты можешь вернуться к Gannon в Шайтане. Я предпочитаю находится здесь один.<n><t>Да благославит тебя Богиня Кара.")
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
--		Йіб°іЗ[МъЅіЎ¤Н­Н­№Д]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission022()

---------------------------------------РВКЦИООсЛНРЎµ¶
	DefineMission( 713, "Приветствие кузнеца ", 707, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("Ты здесь новенький?<n><t>Меня зовут <bСмити>, Я кузнец города <pШайтан>. Я кую оружие, вставляю в них самоцветы, придаю им красивый вид, могу делать слоты в вещах, а также могу вынимать самоцветы из твоих вещей и т.д... Я был очень занят в эти дни.<n><t>Незабудь вернуться и поговорить с  <bНаставницей Реслин> по координатам (876, 3572), я делю это все ради нее, Ухаха!<n><t>(Смити дал тебе Нож новичка. Открой инвентарь,дважды кликни и он оденется.)")
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
--		°ЧТшіЗ[РВКЦЦёµјЎ¤ЙЄ°І]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission024()

-----------------------------------РВИЛ±ЁµА
	DefineMission( 701, "Добро Пожаловать!", 1, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t> Добро Пожаловать!<n><t>Приходи ко мне, если у тебя есть вопросы относительно классов персонажей. И обдумывай свой выбор по мнению кем быть.<n><t>Ещё я хочу тебе поведать где продаётся неплохое оружие в <pАргенте>.<n><t>Теперь когды ты поднимаешь драгоценные уровни нажимай клавиши Ctrl + A, для того чтобы зайти в окно своих характеристик. Каждый поднятый тобой уровень даёт тебе очки характеристик. <n><t>У тебя в расположении имеется 5 видов антрибутов, таких как: Сила ,которая увеличивает твою атаку в ближнем бою; Ловкость, которая увеличивает твою скорость боя и уворот; Точность, которая увеличивает твоё шанс на попадение и усиливает твою мощь; Дух, который увеличивает твой максимальноый запас маны и магический урон;И Телесложение, которое увеличивает твой запас жизни и Брони.")
	MisHelpTalk("<t>Привет! Я наставница этого города. Навещай меня когда тебе будет нужна помощь в игре.<n><t>Без моей помощи тебе будет очень трудно.")
	MisResultCondition(NoRecord, 1)
	MisResultCondition(HasMission, 1)
	--MisResultCondition(HasFlag, 700, 10)
	--MisResultCondition(HasFlag, 700, 20)
	MisResultAction(ClearMission, 1)
	MisResultAction(SetRecord, 1)
	MisResultAction(AddExp, 6, 6)


-----------------------------------МъЅіµДОКєт
	DefineMission( 702, "Приветствие Кузнеца ", 701 )
	
	MisBeginTalk( "<t>Ты не сможешь выжить в этом жесточайшем мире,если у тебя нет оружия.<n><t>Отнеси это письмо в <pАргент> кузнецу, <bГолди> по координатам (2193, 2706). Я думаю он тебе поможет, если прийдешь к нему с этим письмом.<n><t>Ты можешь использовать радар (Alt + R) что бы найти его." )
	MisBeginCondition(HasRecord, 1)
	MisBeginCondition(NoRecord, 701)
	MisBeginCondition(NoMission, 701)
	MisBeginAction(AddMission, 701)
	MisBeginAction(SetFlag, 701, 1)
	MisBeginAction(GiveItem, 3950, 1, 4)
	MisCancelAction(ClearMission, 701 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправть письмо <bКузнецу - Голди> в <pАргенте> по координатам (2193, 2706). И вернись к Наставнице - Сенне (2223, 2785)")
		
	MisResultTalk("<t>Я смотрю ты уже встретился с <bГолди>. Он тебе всегда дешего и выгодно отдаст любое оружие.")
	MisHelpTalk("<t>Не забудь вручить письмо для Голди лично. Он стоит всегда в левом углу Аргента по координатам (2193, 2706).<n><t> Используй радар(Alt + R) для того,чтобы его найти.")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(HasFlag, 701, 10)
	MisResultAction(ClearMission, 701)
	MisResultAction(SetRecord, 701)
	MisResultAction(AddExp, 9, 9 )


-----------------------------------·юЧ°µкµДОКєт
	DefineMission( 704, "Приветсвие Портного ", 702 )
	
	MisBeginTalk( "<t>Это второе рекамендательное письмо. Отнеси его в <pAргент> <bБабушке - Ниле> по координатам (2266, 2705)." )
	MisBeginCondition(HasRecord, 701)
	MisBeginCondition(NoRecord, 702)
	MisBeginCondition(NoMission, 702)
	MisBeginAction(AddMission, 702)
	MisBeginAction(SetFlag, 702, 1)
	MisBeginAction(GiveItem, 3951, 1, 4)
	MisCancelAction(SystemNotice, "Это задание не может быть остановленно." )
	--MisCancelAction(ClearMission, 702 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо <bПортнихе - Бабушке - Ниле> в <pAргенте> по координатам (2267, 2704) и вернитесь к Наставнице - Сенне (2223, 2785)")
		
	MisResultTalk("<t>Вау! Неужели <bБабушка Нила> сделала для тебя перчатки персонально? Они идеальные! Я надеюсь,что ты будешь за ними ухаживать.")
	MisHelpTalk("<t>Неужели ты не нашел бабушку Нилу? Я тебе помогу,она на северной части Аргента по координатам (2267, 2704). Используй радар,для нахождения цели.")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(HasFlag, 702, 10)
	MisResultAction(ClearMission, 702)
	MisResultAction(SetRecord, 702)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------Т©Ж·µкµДОКєт
	DefineMission( 706, "Приветствие врача ", 703 )
	
	MisBeginTalk( "<t>Теперь, отнеси мое последнее письмо <bВрачу Дито> (2250, 2770). Я уверен он поможет тебе в игре." )
	MisBeginCondition(HasRecord, 702)
	MisBeginCondition(NoRecord, 703)
	MisBeginCondition(NoMission, 703)
	MisBeginAction(AddMission, 703)
	MisBeginAction(SetFlag, 703, 1)
	MisBeginAction(GiveItem, 3952, 1, 4)
	MisCancelAction(SystemNotice, "Задание не может быть остановленно." )
	--MisCancelAction(ClearMission, 703 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо <bВрачу - Дито> в <pАргенте> по координатам (2250, 2770). И вернитесь к Наставнице - Сенне (2223, 2785).")
		
	MisResultTalk("<t><bДито> Дал тебе несколько <rЯблок>.Яблоки можно купить у него! Они востонавливают некоторое количество HP.")
	MisHelpTalk("<t>Дито находиться справа от фонтана Аргента. Его координаты (2250, 2770). Ты можешь найти его с помощью радара.")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(HasFlag, 703, 10)
	MisResultAction(ClearMission, 703)
	MisResultAction(SetRecord, 703)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------ХЅ¶·їјєЛ
	DefineMission( 708, "Боевая тренировка ", 704 )
	
	MisBeginTalk( "<t>Хмм, неплохо, теперь ты подготовлен к жизни. Пускай будет твоим испытанием жизнь, бегай по миру, воюй. Только не забегай слишком далеко.<n><t>Выйти из города ты можешь через левый выход или через верхний.<n><t>Убей 5 Лесных духов и принеси пару крыльев.<n><t>Лесных духов ты можешь найти в окраинах Аргента. Заверши миссию,и я дам тебе хорошую награду.<n><t>(Начать драться ты можешь выйдя из города. Просто кликни левой кнопкой миши на монстра." )
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
	
	MisResultTalk("<t>Очень хорошо, ты справилься, а также доказал, что можешь идти воевать.<n><t> Если борьба это твоя страсть, то иди к Маркусу по координатам (2065, 2732). Другой человек, который вам может немного помочь - это Доктор Дито (2250, 2770). Он ищет работника, который сможет поставлять ему много ингридиентов.<n><t>Удачи!")
	MisHelpTalk("<t>Не будь озабоченым, Возвращайся после того, как убьешь 5 <bЛесных духов> и получишь 1 из <rКрыльев>.")
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
--		°ЧТшіЗ[·юЧ°µкЦчЎ¤ДбИшЖЕЖЕ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission025()

-----------------------------------·юЧ°µкµДОКєт
	DefineMission( 705, "Приветствие портного ", 702, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Это было интересно. Я видела тебя, когда ты тут пробегал. Я <bБабушка Нила>, Портная города <pАргент>. С тех пор, как наставница Сенна зарекомендовала тебя, я хочу подарить тебе вот эти <Перчатки новичка> сделанные специально для тебя.<n><t>Теперь вернись к Наставнице - Сенне (2223, 2785).<n><t>(Нила дала тебе Перчатки новичка. Открой инвентарь и дважды кликни на них,чтобы одеть.)")
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
--		°ЧТшіЗ[КШОАЎ¤±ИМШ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission026()

-----------------------------------УВЖшЦ¤Кй
	DefineMission( 709, "Сертификат Мужества ", 705 )
	
	MisBeginTalk( "<t>У тебя есть Сертификат мужества? <n><t>Чтобы его получить недостаточно только храбрости  ты должен доказать, что ты имеешь требуемую способность и интеллект.<n><t>Иди к <pОкраинам Аргента> и убей 10 <bМилых овечек> по координатам (2057, 2638), 10 <bПузырчатых моллюсков> возле северного побережья, 10 <bСвинокрылов> и возвращайся ко мне.<n><t>Когда всё сделаешь подходи ко мне и я вручу тебе  <bСертификат мужества>." )
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
	
	MisResultTalk("<t>Дружище! Ты хорошо обучился! Вот тебе <rСертификат мужества>.<n><t>Сохрани это и когда станешь <p10 уровнем> приходи чтобы стать мечником.")
	MisHelpTalk("<t>Ты не выполнил моего поручения. Иди выполняй,иначе никогда не станешь мечником.")
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
	

-----------------------------------Л«ЅЈКїЧЄЦ°ИООс
	DefineMission( 749, "Кодекс Воителя ", 737 )
	
	MisBeginTalk( "<t>Похоже, вы стали отличным мечником. Так как Вы хотите быть более сильными, Вы должны продвинуться, чтобы стать <bВоителем>. Мне нужно вас испытать.<n><t>В лесу к западу от <pSolace Haven>, есть <rТолстокожие Ящеры>. Добудь 5 <yСкользкая шкура ящера> здесь и идите на <pОстров скелетов> к востоку от Ледыни, убейте 10 <rСкелетов - Войнов> и получите 3 <yСерфитиката война>. И наконец купите <yПластинчатый Доспех> и вернитесь ко мне." )
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
	
	MisResultTalk("<t>Поздравляю!<n><t>Ты выполнил все требования для профессии <bВоителя>!<n><t>Желаю тебе удачных путешествий в дальнейшем!")
	MisHelpTalk("<t>Пошол вон!Раз ты не можешь выполнить моё элементарное задание, ты не достоин быть воителем!")
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

-----------------------------------ѕЮЅЈКїЧЄЦ°ИООс
	DefineMission( 750, "Сила Чемпиона ", 738 )
	
	MisBeginTalk( "<t>Хочешь стать <bЧемпионом>? Хорошо!<n><t>Тогда ты должен принести мне некоторые вещи: <n><t>У тебя должно быть оружие чемпиона, иди и купи <yКрисс Меч>. Принеси мне 5 <yМасок ниндзя> с <rКрот-ниндзя>. 5 <rБольшой медведь>'s <yБольшой медвежий клык> и 5 <yСкользкая скала> с <rКамянный голем>.<n><t>Принеси мне всё это для того, чтобы стать истинным чемпионом.<n><t>Смотри <rКроты-ниндзя> находятся в <pЗаброшенных шахтах>, <rКамянный голем> в <pАндийском лесу> и <rПолярный медведь> недалеко от Ледыни." )
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
	
	MisResultTalk("<t>Поздравляю! Ты завершил все мои требования для того чтобы стать <bЧемпионом>!<n><t>Множество захватывающих путешествий ожидает тебя!")
	MisHelpTalk("<t>У тебя есть вопросы!? Я ведь тебе уже все обьяснил как это все сделать!")
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
--		Йіб°іЗ[РВКЦЦёµјЎ¤А­Лї±М]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission027()

-----------------------------------РВИЛ±ЁµА
	DefineMission( 711, "Добро пожаловать!", 2, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

		
	MisResultTalk("<t>Ахх!<n><t>Очередной новичек, Добро пожаловать! Я могу ответить тебе на множество вопросов,если нужно - то обращайся.<n><t>Дальше купи себе хорошее оружие в <pШайтане>.<n><t>Когда поднимешь уровень, нажми (Alt + A) чтобы открыть страницу характеристик. Каждый уровень ты получаешь характеристики а также магические навыки.<n><t>У тебя в расположении имеется 5 видов аттрибутов, таких как: Сила, которая увеличивает твою атаку в ближнем бою; Ловкость, которая увеличивает твою скорость боя и уворот; Точность, которая увеличивает твоё шанс на попадение и усиливает твою мощь; Дух, который увеличивает твой максимальноый запас маны и магический урон;И Телосложение, которое увеличивает твой запас жизни и Брони.")
	MisHelpTalk("<t>Если у тебя будут какие то вопросы, обращайся, я тебя никогда в беде не брошу.")
	MisResultCondition(NoRecord, 2)
	MisResultCondition(HasMission, 2)
	--MisResultCondition(HasFlag, 706, 10)
	--MisResultCondition(HasFlag, 706, 20)
	MisResultAction(ClearMission, 2)
	MisResultAction(SetRecord, 2)
	MisResultAction(AddExp, 6, 6)


-----------------------------------МъЅіµДОКєт
	DefineMission( 712, "Приветствие кузнеца ", 707 )
	
	MisBeginTalk( "<t>В этом мире тебе не выжить без хорошего обмундирования. Отнеси это письмо <bКузнецу Смити> по координатам (902, 3495).<n><t>У него есть множество видов оружия для тебя.<n><t>Используй радар(Alt + R) для его местонахождения." )
	MisBeginCondition(HasRecord, 2)
	MisBeginCondition(NoRecord, 707)
	MisBeginCondition(NoMission, 707)
	MisBeginAction(AddMission, 707)
	MisBeginAction(SetFlag, 707, 1)
	MisBeginAction(GiveItem, 3956, 1, 4)
	MisCancelAction(ClearMission, 707 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо <bКузнецу Смити> в <pШайтан> at (902, 3495) и вернись к наставнице Реслин (876, 3572)")
		
	MisResultTalk("<t>Ты уже навещал кузнеца <bСмити>? Он всегда тебе продаст хорошее оружие практически даром.")
	MisHelpTalk("<t>Не забудь отдать это письмо кузнецу <bСмити>. Его ты можешь найти в правом верхнем углу <pШайтана> по координатам (902, 3495).<n><t>Используй мини-карту для нахождения его.")
	MisResultCondition(NoRecord, 707)
	MisResultCondition(HasMission, 707)
	MisResultCondition(HasFlag, 707, 10)
	MisResultAction(ClearMission, 707)
	MisResultAction(SetRecord, 707)
	MisResultAction(AddExp, 9, 9 )


-----------------------------------·юЧ°µкµДОКєт
	DefineMission( 714, "Приветствие портного ", 708 )
	
	MisBeginTalk( "<t>Хорошо, теперь найди портного. Отнеси это письмо в <pШайтан> <bПортной - Мойе> по координатам (894,3602)" )
	MisBeginCondition(HasRecord, 707)
	MisBeginCondition(NoRecord, 708)
	MisBeginCondition(NoMission, 708)
	MisBeginAction(AddMission, 708)
	MisBeginAction(SetFlag, 708, 1)
	MisBeginAction(GiveItem, 3957, 1, 4)
	--MisCancelAction(ClearMission, 708 )
	MisCancelAction(SystemNotice, "Задание невозможно удалить." )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь это письмо <bПортной - Мойе> в <pШайтан> по координатам (894, 3602) и вернись к наставнице Реслин (876, 3572)")
		
	MisResultTalk("<t>Ах? Неужели <bМойа> дала тебе эти перчатки? Они великолепные. Сохрани их как память.")
	MisHelpTalk("<t>Ты не смог отнести письмо Мойе.<n><t>Она находиться по координатам (894, 3602). Используй радар.")
	MisResultCondition(NoRecord, 708)
	MisResultCondition(HasMission, 708)
	MisResultCondition(HasFlag, 708, 10)
	MisResultAction(ClearMission, 708)
	MisResultAction(SetRecord, 708)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------Т©ІДµкµДОКєт
	DefineMission( 716, "Приветствие врача ", 709 )
	
	MisBeginTalk( "<t>Окей, время навестить <bврача - Шалу> по координатам (903, 3646). Это последнее письмо, так что разделайся с ним как можно быстрее." )
	MisBeginCondition(HasRecord, 708)
	MisBeginCondition(NoRecord, 709)
	MisBeginCondition(NoMission, 709)
	MisBeginAction(AddMission, 709)
	MisBeginAction(SetFlag, 709, 1)
	MisBeginAction(GiveItem, 3958, 1, 4)
	MisCancelAction(SystemNotice, "Задание невозможно удалить." )
	--MisCancelAction(ClearMission, 709 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнеси письмо <bврачу Шала> в <pШайтане> по координатам (903, 3646) И вернись к Реслин (876, 3572)")
		
	MisResultTalk("<t>Вот тебе <rЯблоки> возьми их от <bШалы> они не только хорошо исцеляют, но и очень полезные.")
	MisHelpTalk("<t>Найди врача Шалу. Он находится по координатам (903, 3646).<n><t>Пользуйся радаром.")
	MisResultCondition(NoRecord, 709)
	MisResultCondition(HasMission, 709)
	MisResultCondition(HasFlag, 709, 10)
	MisResultAction(ClearMission, 709)
	MisResultAction(SetRecord, 709)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------ХЅ¶·СµБ·
	DefineMission( 718, "Боевая тренировка ", 710 )
	
	MisBeginTalk( "Хорошо,вполне неплохо! Теперь когда ты неплохо одет,ты можешь пойти и проверить свои силы.<n><t>Убей 5 <bСкорпионов> Недалеко от восточного выхода из города. Убей 1 <rКактуса> от борьбы <bДыни> а также. Разумеется, что ты всегда должен атаковать первым!<n><t>(Ты можешь атаковать нажав левой кнопкой мышки на монстра, но в городе воевать нельзя. Не забывай переодеватся кликнув CTRL + Е для быстрого просмотра своего инвентаря." )
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
	
	MisResultTalk("<t>Великолепно работаешь!<n><t>Почему бы тебе не найти в этой игре друзей? Если борьба - твоя чашка чая, найди <bМайкла>. Он патрулирует по координатам (2085, 2742). Другая персона, с которой ты должен встретится доктор <bШала> по координатам (2250, 2770). Он ищет помошников,для сбора разных трав.")
	MisHelpTalk("<t>Не выходит? Вернись и убей 5 <bСкорпионов> и получи 1 <rCactus Hairballs>.")
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
--		Йіб°іЗ[·юЧ°µкЦчЎ¤ДЄСЗ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission028()

-----------------------------------·юЧ°µкµДОКєт
	DefineMission( 715, "Приветствие портного ", 708, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Кеке!<n><t>Это рекомендательное письмо от Реслин. <n><t>Хорошо, эти перчатки для тебя.<n><t>Теперь пойди в магазин и купи себе посох.<n><t>Теперь вернись к Реслин по координатам (876, 3572). Она тебя познакомит с другими<n><t>(Портниха дала тебе перчатки новичка, нажми на инвентарь,для того чтобы одеть их).")
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
--		±щАЗ±¤[РВКЦЦёµјЎ¤°ІзчВ¶СЗ]		--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission030()

-----------------------------------РВИЛ±ЁµА
	DefineMission( 721, "Добро пожаловать!", 3, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Ах!<n><t>Очередной новичек, Добро пожаловать! Я могу ответить тебе на множество вопросов, если нужно - то обращайся.<n><t>Купи себе хорошее оружие в <pЛедыни>.<n><t>Когда поднимешь уровень, нажми (Alt + A) чтобы открыть страницу характеристик. Каждый уровень ты получаешь характеристики а также магические навыки.<n><t>У тебя в расположении имеется 5 видов аттрибутов, таких как: Сила, которая увеличивает твою атаку в ближнем бою; Ловкость, которая увеличивает твою скорость боя и уворот; Точность, которая увеличивает твоё шанс на попадение и усиливает твою мощь; Дух, который увеличивает твой максимальноый запас маны и магический урон; И Телосложение, которое увеличивает твой запас жизни и Брони.")
	MisHelpTalk("<t>Привет! Если у тебя будут какие то вопросы, обращайся, я тебя никогда в беде не брошу.")
	MisResultCondition(NoRecord, 3)
	MisResultCondition(HasMission, 3)
	--MisResultCondition(HasFlag, 712, 10)
	--MisResultCondition(HasFlag, 712, 20)
	MisResultAction(ClearMission, 3)
	MisResultAction(SetRecord, 3)
	MisResultAction(AddExp, 6, 6)


-----------------------------------МъЅіµДОКєт
	DefineMission( 722, "Приветстсвие кузнеца ", 713 )
	
	MisBeginTalk( "<t>В этом мире тебе не выжить без хорошего обмундирования. Отнеси это письмо <bКузнецу Голди> по координатам (902, 3495).<n><t>У него есть множество видов оружия для тебя.<n><t>Используй радар(Alt + R) для нахождение его. " )
	MisBeginCondition(HasRecord, 3)
	MisBeginCondition(NoRecord, 713)
	MisBeginCondition(NoMission, 713)
	MisBeginAction(AddMission, 713)
	MisBeginAction(SetFlag, 713, 1)
	MisBeginAction(GiveItem, 3959, 1, 4)
	MisCancelAction(ClearMission, 713 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнеси это письмо <bКузнецу Башу> в <pЛедыни> по координатам (1344, 529). И вернись к Наставнице Анжеле по координатам (1315, 507).")
		
	MisResultTalk("<t>Ты уже встретился с <bБашем> ? Он попросил тебя найти ему девушку,т.к. он холостой ")
	MisHelpTalk("<t>Отнеси это письмо <bБашу>. Он находится в юго-восточном углу  <pЛедыни> по координатам (1344, 529).<n><t>Пользуйся радар.")
	MisResultCondition(NoRecord, 713)
	MisResultCondition(HasMission, 713)
	MisResultCondition(HasFlag, 713, 10)
	MisResultAction(ClearMission, 713)
	MisResultAction(SetRecord, 713)
	MisResultAction(AddExp, 9, 9 )


-----------------------------------·юЧ°µкµДОКєт
	DefineMission( 724, "Приветствие портного ", 714 )
	
	MisBeginTalk( "<t>Вот тебе другое письмо. Пожалуйста отдай его <pХанаху> по координатам (1349, 539), нашему портному ледыни. Она тебе немного поможет." )
	MisBeginCondition(HasRecord, 713)
	MisBeginCondition(NoRecord, 714)
	MisBeginCondition(NoMission, 714)
	MisBeginAction(AddMission, 714)
	MisBeginAction(SetFlag, 714, 1)
	MisBeginAction(GiveItem, 3960, 1, 4)
	MisCancelAction(SystemNotice, "Задание невозможно удалить." )
	--MisCancelAction(ClearMission, 714 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнеси это письмо <bПортному - Ханах> в <pЛедыни> по координатам (1349, 539). И вернись к Наставнице Анжеле (1315, 507)")
		
	MisResultTalk("<t>Что <b Ханах> сделала для тебя перчатки? Они чудесные. Сохрани их,как память.")
	MisHelpTalk("<t>Отнеси это письмо <bХанах>.<n><t>Она находится  к юго-востоку от фонтана <pЛедыни> по координатам (1349, 530). Ты можешь использовать мини-карту для поиска.")
	MisResultCondition(NoRecord, 714)
	MisResultCondition(HasMission, 714)
	MisResultCondition(HasFlag, 714, 10)
	MisResultAction(ClearMission, 714)
	MisResultAction(SetRecord, 714)
	MisResultAction(AddExp, 21, 21 )

-----------------------------------Т©Ж·µкµДОКєт
	DefineMission( 726, "Приветствие врача ", 715 )
	
	MisBeginTalk( "<t>И наконец, помните! Зелья очень важны в любой битве. Чтобы начать работу, доставьте это письмо <bВрачу - Дайше> в <pЛедыни> по координатам (1352, 499)." )
	MisBeginCondition(HasRecord, 714)
	MisBeginCondition(NoRecord, 715)
	MisBeginCondition(NoMission, 715)
	MisBeginAction(AddMission, 715)
	MisBeginAction(SetFlag, 715, 1)
	MisBeginAction(GiveItem, 3961, 1, 4)
	MisCancelAction(SystemNotice, "Задание невозможно удалить." )
	--MisCancelAction(ClearMission, 715 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнесите письмо <bВрачу - Дайше> в <pЛедыни> по коордтнатам (1352, 499). И вернитесь к Наставнице Анжеле (1315, 507).")
		
	MisResultTalk("<t>Эй, эти <rЯблоки> дала тебе <bДайша.<n><t>Ешь <rЯблоки> они полезны и могут востоновить небольшое количество HP.")
	MisHelpTalk("<t>Дайшу можно найти в <pЛедыни> по координатам (1352, 499). Вы можете использовать мини - карту для поиска.")
	MisResultCondition(NoRecord, 715)
	MisResultCondition(HasMission, 715)
	MisResultCondition(HasFlag, 715, 10)
	MisResultAction(ClearMission, 715)
	MisResultAction(SetRecord, 715)
	MisResultAction(AddExp, 66, 66 )


-----------------------------------ХЅ¶·СµБ·
	DefineMission( 728, "Боевая тренировка ", 716 )
	
	MisBeginTalk( "<t>Хм, неплохо.<n><t>Теперь ты подготовлен, и можешь начать серьёзную жизнь. Недалеко от города пойди и убей 5 <Снегоплювчиков>.<n><t> The Snow Squirt ты можешь найти на юге от ледынских ворот СЕМЕЧКО можно добыть с Заснеженный волшебный куст . Когда все сделаешь вернись ко мне!<n><t>(Ты можешь атаковать нажав левой кнопкой мышки на монстра,но в городе воевать нельзя. Не забывай переодеватся кликнув CTRL + A для быстрого просмотра своего инвентаря." )
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
	
	MisResultTalk("<t>Неплохо, Хорошо поработал, спасибо.")
	MisHelpTalk("<t>Запомни! Убей 5 Снегоплювчиков и собери 1 Семечко ")
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
--		±щАЗ±¤[МъЅіЎ¤±©±щ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission031()

---------------------------------------РВКЦИООсЛНРЎµ¶
	DefineMission( 723, "Приветствие кузнеца ", 713, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я смотрю ты здесь новенький? Я <bБаш>, кузнец города <pЛедынь>.Я изготовляю хорошее оружие.<n><t>Вернись к Анжеле по координатам (1315, 507). Она тебя представить другому человеку.<n><t>(Баш дал тебе Меч новичка. Открой рюкзак и нажми на него 2 раза, чтобы одеть его.)")
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
--		±щАЗ±¤[·юЧ°µкЦчЎ¤єІДИ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission032()

-----------------------------------·юЧ°µкµДОКєт
	DefineMission( 725, "Приветствие портного ", 714, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Ты новичек здесь? Добро пожаловать в <pЛедынь>. Я портной, <bХанах>. Спасибо за письмо, Возьми пожалуйста эти перчатки,я сделал их для тебя. Не забудь вернутся к <rНаставнице><bАнжеле> по координатам (1315, 507), и скажи что я получил письмо.<n><t>(Ханах дал тебе  Перчатки новичка. Открой инвентарь и нажми на них 2 раза, чтобы их одеть.)")
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
--		±щАЗ±¤[Т©ІДЙМИЛЎ¤ґпєХ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission033()

-----------------------------------Т©ІДµкµДОКєт
	DefineMission( 727, "Приветствие врача ", 715, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> Ты новичек здесь? Добро пожаловать! Возьми эти <rЯблоки>, я их сам делал! Я думаю они тебе пригодятся.<n><t>А теперь вернись к Анжеле (1315, 507).<n><t>(Дайша дала тебе Яблоки. Помести их на F1 - F8 для быстрого использования.)")
	MisResultCondition(NoRecord, 715)
	MisResultCondition(HasMission, 715)
	MisResultCondition(NoFlag, 715, 10)
	MisResultCondition(HasItem, 3961, 1)
	MisResultAction(TakeItem, 3961, 1)
	MisResultAction(SetFlag, 715, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)

---------------------------------КХјЇс±	
	DefineMission( 735, "Коллекционер Хэбит ", 723 )

	MisBeginTalk( "<t>В последнее время после уборки моей коллекции, я понял, что мне не хватает некоторых <rЩупалец осьминого>.<n><t>Я думаю вы сможите мне помочь найти 5 <rЩупальцев Осьминога>, которые сожно выбить с <bСнежного Снегоплювчика> ниже города." )
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
	
	MisResultTalk("<t>Хорошо! Моя в новь полная.<n><t>Спасибо!")
	MisHelpTalk("<t>Что случчилось? Разве сложно их найти? Они просто за пределами города.")
	MisResultCondition(HasMission, 723)
	MisResultCondition(HasItem, 1704, 5 )
	MisResultAction(TakeItem, 1704, 5 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 723)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1704)	
	TriggerAction( 1, AddNextFlag, 723, 10, 5 )
	RegCurTrigger( 7231 )


	---------------------------------КХјЇс±	
	DefineMission( 746, "Коллекционер Хэбит ", 734 )

	MisBeginTalk( "<tЯ вычислил, что в моей коллекции нехватает ветви одной, которая завяла. Мне её очень нехватает. Можешь пожалуйста пойти по координатам (1179, 475) и выбить 5 <yУвядшая ветка> с <bСнежный кальмарчик>? Прошу тебя сделай это как можно быстрее,мне очень сильно её нехватает!" )
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
	
	MisResultTalk("<t>Хохо. Наконец то я пополнил коллекцию.")
	MisHelpTalk("<t>О я...<n><t>Это же только Увядшая ветка! Ты не в состоянии выполнить это элементарное задание? Эти <bСнежные кальмарчики> находятся у выхода из Ледыни.")
	MisResultCondition(HasMission, 734)
	MisResultCondition(HasItem, 3372, 5 )
	MisResultAction(TakeItem, 3372, 5 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 734)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 3372)	
	TriggerAction( 1, AddNextFlag, 734, 10, 5 )
	RegCurTrigger( 7341 )


---------------------------------КХјЇс±	
	DefineMission( 747, "Коллекционер Хэбит ", 735 )

	MisBeginTalk( "<t>Благодаря большим дополнениям к моему собранию изделий, я имею пробег вне пространства, чтобы запомнить их! Ты можешь удолетворить мою просьбу? Пойди (1179, 371) и собери мне 5 <yФлаконов> с <bСнежный свинокрыл>. О, кстате между прочим, чтобы их найти, тебе я думаю они понадобятся, правда другие такие как яблоки, кексы, хлеб и т.д.Иди и принеси то,что я хочу." )
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
	
	MisResultTalk("<t>Хехе! <n><t>Теперь,Когда у меня есть флаконы,я могу изготовить больше лекарств. Хаха!Я реально очень счастлив сейчас!")
	MisHelpTalk("<t>Это ведь только Флаконы, Шагом марш,без них не приходи!")
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
--		±щАЗ±¤[±щАЗ±¤ЅЈКїЎ¤АЧЕ·]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission034()

-----------------------------------БФИЛКЦІб
	DefineMission( 729, "Руководство Охотника ", 717 )
	
	MisBeginTalk( "<t>У тебя где то тут есть руководство охотника? Ты действительно храбрый.<n><t>Однако одной только храбрости недостаточно для <rРуководства охотника>, ты должен доказать, что ты имеешь требуемую проворность и ловкость.<n><t>Отправляйся в <pЛедынь> и убей 10 <bМаленьких Оленей> по координатам (1164, 305) и 10 <bМаленьких белых оленей> по координатам (1325, 305).<n><t>Еще у тебя должен быть <rСок эльфийского фрукта>.<n><t>Как охотник ты очень много времени проводишь за пределами города, поэтому тебе нужно иметь средства пополнения жизни.<n><t>Если ты завершишь это задания,я буду считать тебя квалифицированным охотником." )
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
	
	MisResultTalk("<t>Друг, задание выполнено на отлично!<n><t>Ты прошел мой тест. Вот тебе <rРуководство охотника>, которое должен иметь каждый охотник.<n><t>Храни это. Когда достигнешь <p10 уровня>, приходи ко мне для того,чтобы я тебя зарегестрировал как охотник.")
	MisHelpTalk("<t>Ты не выполнил моего поручения. Ты не станешь охотником пока не выполнишь задание так,чтобы я гордился тобой.")
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
	
-----------------------------------ѕС»чКЦЧЄЦ°ИООс
	DefineMission( 757, "Классифицированный Стрелок ", 741 )
	
	MisBeginTalk( "<t>Стать <bСтрелком> просто. Иди на <pОстров Скелетов>, убей 10 <rСкелетов-Лучников> и принеси мне 5 <yСтарых Колчанов>. Также, убей 10 <rКротов-Ниньдзя> в <pАскароне>, <pЗаброшенных Шахтах> и принеси мне 5 <rСломанных мечей ниндзя>." )
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
	
	MisResultTalk("<t>Поздравляю тебя! Ты удолетворил все мои просьбы,для того чтобы стать <bСтрелком>!<n><t>Не забывай! Ключ к победе - это прежде всего спокойствие и терпение в любой ситуации.")
	MisHelpTalk("<t>Почему? У тебя не получилось?")
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
--		°ЧТшіЗ[СІВЯ±шЎ¤Вн¶ыЛ№]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission035()

-----------------------------------К®Нт»рј±
	DefineMission( 730, "Опасность ", 718 )

	MisBeginTalk( "<t>Вокруг тебя полно опасностей. Тебе нужно найти и уничтожить огромный рой <bПчелок>. Многие жалились, ты можешь помочь убить 10 <bПчелок>?<n><t>Я тебя вознагражу!" )
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
	
	MisResultTalk("<t>Очень хорошо! Ты правдо мой друг. С твоей помощью, я не буду наказан стирать носки всего батальона сного.")
	MisHelpTalk("<t>Что случилось? Это всего лишь 10 маленьких пчелок! Попробуй еще раз! Вперед!")
	MisResultCondition(HasMission, 718)
	MisResultCondition(HasFlag, 718, 19 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 718)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 206 )	
	TriggerAction( 1, AddNextFlag, 718, 10, 10 )
	RegCurTrigger( 7181 )


-----------------------------------Дў№Ѕ·єАД
	DefineMission( 736, "Грибное население ", 724 )

	MisBeginTalk( "<t>У меня давняя злость на <bГриб-Жадобец>. Убей их недалеко от города, а конкретнее слева от Заброшенных шахт. Хоть я и люблю грибной суп,я не люблю быть укушенным этими <bГрибами-жадобцами>.<n><t>Вкратце они находятся недалеко от (2220, 2564) ,уничтож 15 <bГриб-жадобец>. Пожалуйста не бросацй меня в столь трудный час! Ты мне очень нужен,кроме тебя мне никто не поможет." )
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
	
	MisResultTalk("<t>Это все<n><t>Ты сделал великую работу! Спасибо за помощь!")
	MisHelpTalk("<t>Убей 15 Грибов-жадобцов!<n><t>Все надеются на тебя!")
	MisResultCondition(HasMission, 724)
	MisResultCondition(HasFlag, 724, 24 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 724)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 184 )	
	TriggerAction( 1, AddNextFlag, 724, 10, 15 )
	RegCurTrigger( 7241 )


-----------------------------------»¤ВМРР¶Ї
	DefineMission( 737, "Природоохранная деятельность ", 725 )

	MisBeginTalk( "<t>Ты наверное заметил, что растительность Аргента резко вымерла. Я знаю, что весь мой драгоценный план сперла эта матерая <bТравяная черепаха>.Спорю, что она убивает его где то недалеко от Верхнего Выхода Аргента. Прошу тебя помоги мне вернуть мой план и убей 10 матерых Травяных черепах по координатам (2057, 2564).<n><t>Будь осторожен,так как эти черепахи бегают кучками. Так как эти черепахи под действием моего плана, они имеют большую защиту в бою. Однако я уверен,что ты справишся с этим заданием." )
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
	
	MisResultTalk("<t>Сделал?<n><t>Отлично! Не смотря на то, что черепахи беззащитны, нам нужно боротся за виживание,т.к. без плана мир не крутится...")
	MisHelpTalk("<t>Черепахи тебя обманули? Убей 10 Черепах!<n><t>Найди их недалеко от (2057, 2564).")
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
--		Йіб°іЗ[Т©ІДЙМИЛЎ¤ЙіА­А­]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission036()

-----------------------------------Т©ІДµкµДОКєт
	DefineMission( 717, "Приветствие врача ", 709, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> Я вижу ты здесь новенький? Небойся я всё расскажу тебе про Шайтан! Я доктор Шала. Возьми <rЯблоки>, кстате ты их всегда можешь купить в любое время.<n><t>Теперь вернись к Реслин она находиться (876, 3572).<n><t>(Шала дала тебе немного Яблок. Перенеси их на горячие клавиши,чтобы быстро использовать на F1-F8.)")
	MisResultCondition(NoRecord, 709)
	MisResultCondition(HasMission, 709)
	MisResultCondition(NoFlag, 709, 10)
	MisResultCondition(HasItem, 3958, 1)
	MisResultAction(TakeItem, 3958, 1)
	MisResultAction(SetFlag, 709, 10)
	MisResultAction(GiveItem, 1847, 10, 4)
	MisResultBagNeed(1)


---------------------------------јЮЅУКФСй	
	DefineMission( 734, "Эксперимент прививки ", 722 )

	MisBeginTalk( "<t>Хочешь увидеть как цветет кактус? Я планирую сделать експеремент, но мне нужна твоя помощь для сбора 5 <rПобегов кактуса> и 5 <rСемечек>.<n><t>Они могут быть найдены с Злободыня и Таинственный куст." )
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
	
	MisResultTalk("<t>Хорошо! Сейчас я могу начать эксперимент. Возвращайся в следующем году, чтобы увидеть мою работу.!")
	MisHelpTalk("<t>Хмм, не можешь принести мне, то что я просил? Принеси мне 5 <rПобегов катуса> и 5 <rСемечек>.")
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


--------------------------------О±ФмАсОп	
	DefineMission( 744, "Поддельный Подарок ", 732 )

	MisBeginTalk( "<t>Слушай, врач Ледыни собирает пот животных. Так вот, я хочу его разыграть, дав ему подделку, но для этого мне нужны ингридиенты.<n><t>Помоги мне собрать 5 бутылей <rТемной воды> и 5 <rСтаканов>. Выбей их с <bСкорпионышей> на координатах (1184, 3557). Пойди и сделай,я вознагражу!")
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
	
	MisResultTalk("<t>Хаха! Великолепно! Теперь я его надурачу.")
	MisHelpTalk("<t>Не вышло! Не можешь найти? Пожалуйста попытайся хотябы!")
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


	--------------------------------ЕдТ©ІДБП	
	DefineMission( 745, "Сбор травы ", 733 )

	MisBeginTalk( "<t>В это время года я всегда собираю лечебные травы, особенно эти 2, до которых у меня катострофическая нехватка. Пожалуйста найди мне 5 <rЦветков кактуса> и 2 <rКрасных финика>. Найти ты их можешь с <bКактусов> на координатах (1031, 3556). Ты их должен победить одной левой.<n><t>Ох! Сделай это дело и вернись к доктору в Ледыни." )
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
	
	MisResultTalk("<t>Я должен сказать спасибо. Я могу наконец начать варить отвар.")
	MisHelpTalk("<t>Я попросил мелочь! Не подведи меня!")
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
--		Йіб°іЗ[СІВЯ±шЎ¤ВхїЛ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission037()

-----------------------------------ї№»чПЙИЛХЖ
	DefineMission( 731, "Вторженгие Кактусов ", 719 )

	MisBeginTalk( "<t>Ах! Сейчас все холмы Шайтана окупированы кактусами. На моём районе их очень большое количество. Можешь мне помочь? Убей 15 <bКактусов> на координатах (1031, 3556) и мне кажется, Что ты будешь очень знаменитым если сделаешь это!" )
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
	
	MisResultTalk("<t>Слава Богу ты вернулся! Ты истребил этих матерых кактусов.")
	MisHelpTalk("<t>Испугался? 15 Кактусов тебе не позубам?!Тогда спасибо и на этом.")
	MisResultCondition(HasMission, 719)
	MisResultCondition(HasFlag, 719, 24 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 719)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 95 )	
	TriggerAction( 1, AddNextFlag, 719, 10, 15 )
	RegCurTrigger( 7191 )


	-----------------------------------МЯИЛ№ЦКЮ
	DefineMission( 740, "Убийство монстра ", 728 )

	MisBeginTalk( "<t>Много людей жалуется на монстра, который убивает людей у нас. Этот монстр ранил многих. Я провёл анализ и вычислил эту падаль, это был <bГорбатый верблюд>. Можешь наказазать этого верблюда? Убей  10 <bГорбатых Верблюдов> Пожалуйста." )
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
	
	MisResultTalk("<t>Очень хорошо. Даже придратся не к чему.<n><t>Эти верблюды реально перегибают палку.")
	MisHelpTalk("<t>Что? Неужели ты испугался? Попробуй ещё раз.")
	MisResultCondition(HasMission, 728)
	MisResultCondition(HasFlag, 728, 19 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 728)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 48)	
	TriggerAction( 1, AddNextFlag, 728, 10, 10 )
	RegCurTrigger( 7281 )
	
	-----------------------------------Р«ЧУОЈ»ъ
	DefineMission( 741, "Востание скорпионов ", 729 )

	MisBeginTalk( "<t>Ох! Ты вырос!<n><t>Я могу дать тебе новое задание, чтобы ты утвердил, что стал сильнее.<n><t>Верблюды ушли, но теперь пришли скорпионы! Они гораздо сильнее чем маленькие скорпионыши. Они очень больно жалят,когда чувствуют опасность. Но он трус!<n><t>Пожалуйста помоги мне убить  10 <Больших скорпионов>! Поищи их по координатам (1184, 3557) но тебе потребуется сноровка чтобы победить их, дерзай!" )
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
	
	MisResultTalk("<t>Хохо! Я нашел правильного человека, и это ты, спасибо!")
	MisHelpTalk("<t>Испугался? Тебя победили скорпионы?? Купи лечилок, и пойди снова.")
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
--		±щАЗ±¤[СІВЯ±шЎ¤РЎДЄ]			--
--							--
--		239185,277025				--
----------------------------------------------------------
function RobinMission038()

-----------------------------------НзЖ¤ЕБЕБ
	DefineMission( 732, "Игриввы кальмарчики ", 720 )

	MisBeginTalk( "<t>Блин, теперь здесь снежные кальмарчики стали более наглыми. Когда я гулял по окраинам города, они мне сделали Засаду.<n><t>Пожалуйста преподай им урок убив 15 <bСнежных кальмарчиков>.<n><t>Это будет легко для тебя." )
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
	
	MisResultTalk("<t>Хорошо. Теперь я могу спокойно гулять.")
	MisHelpTalk("<t>Что? У тебя не получилось? Иди попробуй еще разок!")
	MisResultCondition(HasMission, 720)
	MisResultCondition(HasFlag, 720, 24 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 720)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 235 )	
	TriggerAction( 1, AddNextFlag, 720, 10, 15 )
	RegCurTrigger( 7201 )
	
-----------------------------------ЦнїЪ¶бБё
	DefineMission( 742, "Такого никогда не бывает слишком много ", 730 )

	MisBeginTalk( "<t>У меня для тебя есть задание в городе Ледынь: <bСнежные свинокрылы> Воруют у нас огромные запасы контрабанды. Пожалуйста сходи (1179, 371) и уничтож 10 <bСнежных свинокрылов>." )
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
	
	MisResultTalk("<t>Сделал? Спасибо! Те свинокрылы имеют большой аппетит. Мне кажется нужно иметь свинокрылов всегда, и резать их для выгоды!")
	MisHelpTalk("<t>Что? Не полусилось?")
	MisResultCondition(HasMission, 730)
	MisResultCondition(HasFlag, 730, 19 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 730)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 239 )	
	TriggerAction( 1, AddNextFlag, 730, 10, 10 )
	RegCurTrigger( 7301 )

	-----------------------------------ґнОуЗЁТЖ
	DefineMission( 743, "Неверная передача ", 731 )

	MisBeginTalk( "<t>Хохо, У меня хорошие новости! Мне кажется что стадо Оленят мигрировала в Ледынь. И теперь в ледыни они считаются деликатесами, дарованными богами. Я хочу чтобы ты срочно туда направился (1164 ,305). Убей и принеси мне 12 <bОленят> может быть я сделаю банкет для тебя." )
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
	
	MisResultTalk("<t>Хорошо! Ты сделал это!<n><t>Какое божественное мясо!Хехе...")
	MisHelpTalk("<t>Что случилось? Ты не можешь убить их? Иди быстрее!<n><t>Я хочу начать готовить оленину!")
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
--		РВКЦИООс					--
--							--
--							--
----------------------------------------------------------
function RobinMission039()

-----------------------------------ЛНРЕёшВн¶ыЛ№
	DefineMission( 50, "Отправить письмо Маркусу ", 50 )
	
	MisBeginTalk( "<t>Помоги с одним дельцем.<n><t>Отнеси письмо <bМаркусу>, он даст тебе задачу и проконтролирует тебя. Он находится в Аргенте по координатам (2065, 2732)." )
	MisBeginCondition(HasRecord, 704)
	MisBeginCondition(NoRecord, 50)
	MisBeginCondition(NoMission, 50)
	MisBeginAction(AddMission, 50)
	MisBeginAction(GiveItem, 4111, 1, 4)
	MisCancelAction(ClearMission, 50 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправте письмо Патрульному - Маркусу ")

	MisHelpTalk("<t>Маркус находиться (2065, 2732).")
	MisResultCondition(AlwaysFailure )
-----------------------------------ЛНРЕёшµЫД·
	DefineMission( 51, "Письмо для Дито ", 51 )
	
	MisBeginTalk( "<t>Если тебе нравится собирать травы и ингридиенты подходи к <bДоктору Дито> (2250, 2770). Он тебе даст задание." )
	MisBeginCondition(HasRecord, 704)
	MisBeginCondition(NoRecord, 51)
	MisBeginCondition(NoMission, 51)
	MisBeginAction(AddMission, 51)
	MisBeginAction(GiveItem, 4112, 1, 4)
	MisCancelAction(ClearMission, 51  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо врачу Дито ")

	MisHelpTalk("<t>Почему ты не передал письмо Дито? Он находится по координатам (2250, 2770).")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшВн¶ыЛ№
	DefineMission( 52, "Отправить письмо Маркусу ", 50, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Я рад что ты здесь.<n><t>Ты заметил что при сражение твоя строка жизни меняется?Ты прав, эта строка показывает твой уровень жизни. Ты умрешь когда она будет на нуле. Будь осторожен!<n><t>Не забывай кушать Яблоки, Кексы или остальные лечилки, перемести их на горячие клавиши F1-F8 для быстрого использования.")
	MisResultCondition(NoRecord, 50)
	MisResultCondition(HasMission, 50)
	MisResultCondition(HasItem, 4111, 1)
	MisResultAction(TakeItem, 4111, 1)
	MisResultAction(ClearMission, 50)
	MisResultAction(SetRecord, 50)
	MisResultAction(AddExp, 50, 50)

-----------------------------------К®Нт»рј±
	DefineMission( 53, "Опасность ", 52 )

	MisBeginTalk( "<t>Опасности есть на каждом шагу. Есть сообщение о местонахождении огромного роя <rПчелок>. Многие всех искусали,поэтому помоги убить 6 <rПчелок>! Я тебя вознагражу, если сделаешь." )
	MisBeginCondition(HasRecord, 50)
	MisBeginCondition(NoMission, 52)
	MisBeginCondition(NoRecord, 52)
	MisBeginAction(AddMission, 52)
	MisBeginAction(AddTrigger, 521, TE_KILL, 206, 6 )
	MisCancelAction(ClearMission, 52)
	

	MisNeed(MIS_NEED_DESP, "Убить 6 <rПчелок> и навестить Маркуса.")
	MisNeed(MIS_NEED_KILL, 206, 6, 10, 6)
	
	MisResultTalk("<t>Отлично! Ты правдо мой друг. Благодаря твоей помощи мы уничтожили всех пчел,спасибо тебе.")
	MisHelpTalk("<t>Что случилось? Убей всего 6 Пчелок. У тебя не должно быть с этим делом проблем. Прошу тебя попробуй снова.")
	MisResultCondition(HasMission, 52)
	MisResultCondition(HasFlag, 52, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 52)
	MisResultAction(SetRecord, 52)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 206 )	
	TriggerAction( 1, AddNextFlag, 52, 10, 6 )
	RegCurTrigger( 521 )

-----------------------------------ЛНРЕёшЛ№їЛМШ
	DefineMission( 54, "Письмо для Сальвиера ", 53 )
	
	MisBeginTalk( "<t>Ситуация с Пчелками улучшилась. Но вышел большой инцидент с этим. Грин Пис заступился за пчел и теперь ездит за нами.<n><t>Чтобы этого избежать, пойди к Секретарше Аргента, <bСаливеру> на координатах (2219, 2749)?" )
	MisBeginCondition(HasRecord, 52)
	MisBeginCondition(NoRecord, 53)
	MisBeginCondition(NoMission, 53)
	MisBeginAction(AddMission, 53)
	MisBeginAction(GiveItem, 4113, 1, 4)
	MisCancelAction(ClearMission, 53  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо серетарю Аргента ")

	MisHelpTalk("<t>Почему ты не отнес письмо?<n><t>быстрее отнеси, Грин Пис рядом!Найди Саливер на координатах (2219, 2749).")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшЛ№їЛМШ
	DefineMission( 55, "Письмо для Сальвиера ", 53, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>По словам Маркуса ты очень помог в борьбе с пчелами. Я горжусь тобой!")
	MisResultCondition(NoRecord, 53)
	MisResultCondition(HasMission, 53)
	MisResultCondition(HasItem, 4113, 1)
	MisResultAction(TakeItem, 4113, 1)
	MisResultAction(ClearMission, 53)
	MisResultAction(SetRecord, 53)
	MisResultAction(AddExp, 80, 80)

-----------------------------------Дў№Ѕ·єАД
	DefineMission( 56, "Грибное население ", 54 )

	MisBeginTalk( "<t>Я не знаю почему так сильно ростёт количество <bГрибов-Жадобцов> недалеко от города. Сейчас они неконтролируемые. Я очень люблю грибной суп, но нехочу быть укушенным <bГрибами-Жадобцами>.<n><t>Скажу коротко,ты мне очень нужен, пойди (2220, 2564) и убей 8 <bГрибов-жадобцов>. Прошу тебя не брось меня и принеси мне то, что я попросил." )
	MisBeginCondition(HasRecord, 53)
	MisBeginCondition(NoMission, 54)
	MisBeginCondition(NoRecord, 54)
	MisBeginAction(AddMission, 54)
	MisBeginAction(AddTrigger, 541, TE_KILL, 184, 8 )
	MisCancelAction(ClearMission, 54)
	

	MisNeed(MIS_NEED_DESP, "Убей 8 <rГрибов-Жадобцев> И вернитесь к серетарю аргента.")
	MisNeed(MIS_NEED_KILL, 184, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Ох, неужели ты всё сделал? Молодца!<n><t>Велеколепно. Благодаря тебе, теперь я наемся супа вдоволь.")
	MisHelpTalk("<t>Как так? Всего 8 Грибочков убить не можешь!")
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

-----------------------------------ЛНРЕёшРЎЅрЅр
	DefineMission( 57, "Письмо для Голди ", 55 )
	
	MisBeginTalk( "<t>У меня есть письмо, и ты должен отправить его кузнецу <bГолди> в Аргенте.<n><t>Ты наверное знаешь его. Отправляйся (2193, 2706) и глянь что там у него." )
	MisBeginCondition(HasRecord, 54)
	MisBeginCondition(NoRecord, 55)
	MisBeginCondition(NoMission, 55)
	MisBeginAction(AddMission, 55)
	MisBeginAction(GiveItem, 4114, 1, 4)
	MisCancelAction(ClearMission, 55  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправить письмо кузнецу Голди.")

	MisHelpTalk("<t>Почему ты не смог отправить письмо  кузнецу Голди? Он находится здесь (2193, 2706).")
	MisResultCondition(AlwaysFailure )


-----------------------------------ЛНРЕёшРЎЅрЅр
	DefineMission( 58, "Письмо для Голди ", 55, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох, Вот тебе письмо для Сальвера.<n><t>Я ждал именно тебя для того, чтобы ты отправил ему письмо.")
	MisResultCondition(NoRecord, 55)
	MisResultCondition(HasMission, 55)
	MisResultCondition(HasItem, 4114, 1)
	MisResultAction(TakeItem, 4114, 1)
	MisResultAction(ClearMission, 55)
	MisResultAction(SetRecord, 55)
	MisResultAction(AddExp, 120, 120)

-----------------------------------»¤ВМРР¶Ї
	DefineMission( 59, "Природоохранная деятельность ", 56 )

	MisBeginTalk( "<t>Ты не заметил что растительность Аргента резко уменьшилась? Я считаю что все сьели <bТравяные черепахи>. Пожалуйста помоги мне убить 12 Травяных черепах по коордмнатам (2057, 2564).<n><t>Я дам тебе великое вознаграждение и предупрежу, что эти черепахи забрали весь план и носятся теперь со скоростью 200км/ч. Также у них резко выросла защита, так что будь осторожен. Я уверен, что это задание тебе по силам." )
	MisBeginCondition(HasRecord, 55)
	MisBeginCondition(NoMission, 56)
	MisBeginCondition(NoRecord, 56)
	MisBeginAction(AddMission, 56)
	MisBeginAction(AddTrigger, 561, TE_KILL, 119, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "Убей 12 <rТравяных черепах> и вернись к Голди в Аргенте.")
	MisNeed(MIS_NEED_KILL, 119, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Закончил? Отлично! Они хоть и слабые, но с ними боротся нужно жестко, я горжусь тобой.")
	MisHelpTalk("<t>Эй! Это всего лишь 12 черепах!<n><t>Сходи по координтам	(2057, 2564) посмотри на них, сделай и дам тебе пол мешка плана.")
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


-----------------------------------ЛНРЕёшЙЄ°І
	DefineMission( 60, "Письмо для Сенны ", 57 )
	
	MisBeginTalk( "<t>Мне очень нужна твоя помощь.<n><t>Пожалуйста отнеси письмо <bСенне>, Наставнице новичков на координатах (2223, 2785).<n><t>После этого я дам тебе некоторые инструкции." )
	MisBeginCondition(HasRecord, 56)
	MisBeginCondition(NoRecord, 57)
	MisBeginCondition(NoMission, 57)
	MisBeginAction(AddMission, 57)
	MisBeginAction(GiveItem, 4115, 1, 4)
	MisCancelAction(ClearMission, 57  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправить письмо Наставнице - Сенне в Аргенте.")

	MisHelpTalk("<t>Сенна на ходиться (2223, 2785). Иди прямо сейчас.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшЙЄ°І
	DefineMission( 61, "Письмо для Сенны ", 57, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо за письмо...В Аргенте ты мне понравился больше всех, удачи тебе..")
	MisResultCondition(NoRecord, 57)
	MisResultCondition(HasMission, 57)
	MisResultCondition(HasItem, 4115, 1)
	MisResultAction(TakeItem, 4115, 1)
	MisResultAction(ClearMission, 57)
	MisResultAction(SetRecord, 57)
	MisResultAction(AddExp, 200, 200)


-----------------------------------ЅЈКїЧЄЦ°ИООс
	DefineMission( 62, "Продвижение Мечника ", 58 )
	
	MisBeginTalk( "<t>Есть у тебя на данный момент время, для того чтобы определится с профессией? Если хочешь стать мечником, то пожалуйста, иди в Аргент и найди стражника, <bПитера>. Он находится по координатам (2192, 2767). Он будет тебя тренировать.<n><t>Мечник, это самый сильный земной класс. Они могут стать быстрыми и мощными Воителями и очень бронированными Чемпионами.")
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

	MisNeed(MIS_NEED_DESP, "Отправить письмо Стражнику Питеру.")

	MisHelpTalk("<t>Если хочешь стать мечником,то подойди к Питеру!")
	MisResultCondition(AlwaysFailure )

-----------------------------------БФИЛЧЄЦ°ИООс
	DefineMission( 63, "Продвижение Охотника ", 59 )
	
	MisBeginTalk( "<t>Пришло время твоего выбора профессии. Если хочешь стать охотником , то отнеси письмо Рею в Ледынь (1365,70). Он будет тренировать тебя.<n><t>Охотники дальнобойный класс, у которых высокая атака, но мало защиты и здоровья, но тем не менее они носят Мушкеты и Луки.Охотниками могут быть как Филисы,так и Лансы." )
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

	MisNeed(MIS_NEED_DESP, "Отправьте письмо Мечники Рею в Ледыни.")

	MisHelpTalk("<t>Если хочешь быть охотником подойди к Рею!")
	MisResultCondition(AlwaysFailure )

-----------------------------------Т©К¦ЧЄЦ°ИООс
	DefineMission( 64, "Продвижение Знахарки ", 60 )
	
	MisBeginTalk( "<t>Тебе пора выбирать кем хочешь стать. Если хочешь стать Знахаркой, подойди в Шайтан к <bЦелителю Ганнон>. Он находится по координатам (862, 3500). Он тебя потренерует.<n><t>Знахарки могу становится в дальнейшем Целителями и Ведьмами." )
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

	MisNeed(MIS_NEED_DESP, "Отнесите это письмо Ганнон в Шайтане.")

	MisHelpTalk("<t>Если хочешь стать Знахаркой подойди к Ганнон.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Г°ПХХЯЧЄЦ°ИООс
	DefineMission( 65, "Продвижение Исследователя ", 61 )
	
	MisBeginTalk( "<t>Тебе пора сделать выбор. Если хочешь стать Исследователем, тогда иди в Аргент к <bМалышу Даниэлю> по координатам (2193, 2730). Отнеси ему вот это письмо.<n><t>Исследователи пользуются кораллами, именно они дают им возможость использовать умения. В дальнейшем Исследователи становятся Покорителями морей. В море это самый грозный и мощнейший класс." )
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

	MisNeed(MIS_NEED_DESP, "Отправте письмо Малышу Даниэлю в Аргенте!")

	MisHelpTalk("<t>Если хочешь стать Исследователем подойди к Даниэлю at (2193, 2730).")
	MisResultCondition(AlwaysFailure )


-----------------------------------ЅЈКїЧЄЦ°ИООс
	DefineMission( 66, "Продвижение Мечника ", 58, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ты показал хорошие успехи. Если хочешь стать мечником, доделай задачи, которые я тебе дал.У тебя неплохо получается.")
	MisResultCondition(NoRecord, 58)
	MisResultCondition(HasMission, 58)
	MisResultCondition(HasItem, 4116, 1)
	MisResultAction(TakeItem, 4116, 1)
	MisResultAction(ClearMission, 58)
	MisResultAction(SetRecord, 58)

-----------------------------------ЅЈКїЧЄЦ°ИООс
	DefineMission( 67, "Продвижение Мечника ", 62 )

	MisBeginTalk( "<t>Хочешь стать мечником? А ты сможешь?<n><t>Однако только храбрости недостаточно, ты должен проявить свой интеллект и требуемую способность.<n><t>Отправляйся на <pПобережье Аргента> и убей 12 <bСвинокрылов> по координатам (1950, 2563) и затем вернись ко мне.<n><t>Это будет твоё первое завершенное испытание." )
	MisBeginCondition(HasRecord, 58)
	MisBeginCondition(NoMission, 62)
	MisBeginCondition(NoRecord, 62)
	MisBeginAction(AddMission, 62)
	MisBeginAction(AddTrigger, 621, TE_KILL, 237, 12 )
	MisCancelAction(ClearMission, 62)
	

	MisNeed(MIS_NEED_DESP, "Убить 12 <bСвинокрылов> и поговорить с Питером в Аргенте.")
	MisNeed(MIS_NEED_KILL, 237, 6, 10, 6)
	
	MisResultTalk("<t>Ты отлично справился.<n><t>Ты прошел первое испытание для того, чтобы стать мечником.")
	MisHelpTalk("<t>Ты не выполнил моего требования. Выполни его, или не станешь мечником.")
	MisResultCondition(HasMission, 62)
	MisResultCondition(HasFlag, 62, 21 )
	MisResultAction(ClearMission, 62)
	MisResultAction(SetRecord, 62)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 62, 10, 6 )
	RegCurTrigger( 621 )


-----------------------------------ЅЈКїЧЄЦ°ИООс
	DefineMission( 68, "Продвижение Мечника ", 63 )
	
	MisBeginTalk( "<t>Теперь иди к <bГенералу - Вильяму> (2277, 2831) Он даст тебе заключительное задание становления Мечником.")
	MisBeginCondition(HasRecord, 62)
	MisBeginCondition(NoRecord, 63)
	MisBeginCondition(NoMission, 63)
	MisBeginAction(AddMission, 63)
	MisBeginAction(GiveItem, 4120, 1, 4)
	MisCancelAction(ClearMission, 63  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправить письмо Генералу Вильяму в Аргенте!")

	MisHelpTalk("<t>Спеши,я уверен,что ты это сделаешь!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЅЈКїЧЄЦ°ИООс
	DefineMission( 69, "Продвижение Мечника ", 63, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох, хорошо. Ты почти мечник, молодец!.")
	MisResultCondition(NoRecord, 63)
	MisResultCondition(HasMission, 63)
	MisResultCondition(HasItem, 4120, 1)
	MisResultAction(TakeItem, 4120, 1)
	MisResultAction(ClearMission, 63)
	MisResultAction(SetRecord, 63)
	MisResultAction(AddExp, 100, 100)

-----------------------------------ЅЈКїЧЄЦ°ИООс
	DefineMission( 70, "Продвижение Мечника ", 64 )

	MisBeginTalk( "<t>Вот тебе ещё задание<n><t>Сходи на <pПобережье Аргента> и принеси 3 <rКашемира> и вернись назад.<n><t>Как только ты это сделаешь, я тебя сделаю Мечником.<n><t>Кстате кашемир ты можешь выбить из Милой овечки по координатам (2057, 2638).")
	MisBeginCondition(HasRecord, 63)
	MisBeginCondition(NoMission, 64)
	MisBeginCondition(NoRecord, 64)
	MisBeginAction(AddMission, 64)
	MisBeginAction(AddTrigger, 641, TE_GETITEM, 1678, 3 )
	MisCancelAction(ClearMission, 64)

	MisNeed(MIS_NEED_DESP, "Собери 3 <rКашемира> и поговори м вильямом")
	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	
	MisResultTalk("<t>Ты всё сделал! Я правда рад за тебя!")
	MisHelpTalk("<t>3 кашемира. Это же такой пустяк,принеси мне их.")
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

-----------------------------------ЅЈКїЧЄЦ°ИООс
	DefineMission( 71, "Продвижение Мечника ", 65 )
	
	MisBeginTalk( "<t>Ты уже показал свою стоимость, я горжусь тобой. Иди и скажи Питеру, чтобы он сделал тебя мечником. Вот тебе <rСертификат отваги> он будет служить тебе доказательством твоих подвигов.")
	MisBeginCondition(HasRecord, 64)
	MisBeginCondition(NoRecord, 65)
	MisBeginCondition(NoMission, 65)
	MisBeginAction(AddMission, 65)
	MisBeginAction(GiveItem, 3953, 1, 4)
	MisCancelAction(ClearMission, 65 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнеси письмо  Питеру в Аргент по координатам (2192, 2767)")

	MisHelpTalk("<t>Почему ты медлишь? Отнеси письмо Питеру,давай.")
	MisResultCondition(AlwaysFailure )


-----------------------------------ЅЈКїЧЄЦ°ИООс
	DefineMission( 72, "Продвижение Мечника ", 65, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Поздравляю, ты получил Сертефикат отваги. Теперь ты оффициально Мечник!<n><t>(Ты можешь активировать свою профессию.<n><t>Также купить оружие у кузнеца Голди, одежду у портной Нилы и книги навыков у Бакалейщицы Тимберли)")
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

-----------------------------------ЛНРЕёшµЫД·
	DefineMission( 73, "Письмо для Дито ", 51, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Это хорошо, что вы здесь, я мог бы использовать твою руку помощи.")
	MisResultCondition(NoRecord, 51)
	MisResultCondition(HasMission, 51)
	MisResultCondition(HasItem, 4112, 1)
	MisResultAction(TakeItem, 4112, 1)
	MisResultAction(ClearMission, 51)
	MisResultAction(SetRecord, 51)
	MisResultAction(AddExp, 50, 50)


-----------------------------------БйёРЕд·Ѕ
	DefineMission( 74, "Рецепт Отвара ", 66 )

	MisBeginTalk( "<t>Мне нужна твоя помощь. Прости за беспокойство, пожалуйста принеси мне 3 баночки <rЧернил спрута>. Ты их можешь достать убив <rМаленького кальмарчика> недалеко от моря, на берегу. Моё вдохновение будет с тобой, иди давай!")
	MisBeginCondition(HasRecord, 51)
	MisBeginCondition(NoMission, 66)
	MisBeginCondition(NoRecord, 66)
	MisBeginAction(AddMission, 66)
	MisBeginAction(AddTrigger, 661, TE_GETITEM, 1705, 3 )
	MisCancelAction(ClearMission, 66)
	
	MisNeed(MIS_NEED_DESP, "Собери 3 баночки <rЧернил спрута> и вернись к врачу Дито (2250, 2770)")
	MisNeed(MIS_NEED_ITEM, 1705, 3, 10, 3)
	
	MisResultTalk("<t>Очень хорошо. С тех пор как ты принес мне ингридиенты, у меня появилось вдохновение для нового зелья.")
	MisHelpTalk("<t>Что? Не можешь собрать ингридиенты?Попробуй ещё разок!")
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

-----------------------------------ЛНРЕёшВЮТБ
	DefineMission( 75, "Письмо для Роури ", 67 )
	
	MisBeginTalk( "<t>Я хочу продолжить свои експерименты.<n><t>Мне не обойтись без твоей помощи. Отнеси письмо моему асистенту Роури (2240, 2752), и узнай не нужна ли ей помощь.")
	MisBeginCondition(HasRecord, 66)
	MisBeginCondition(NoRecord, 67)
	MisBeginCondition(NoMission, 67)
	MisBeginAction(AddMission, 67)
	MisBeginAction(GiveItem, 4121, 1, 4)
	MisCancelAction(ClearMission, 67 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Роури.")

	MisHelpTalk("<t>Роури ты можешь найти по координатам (2240, 2752) в Аргенте.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшВЮТБ
	DefineMission( 76, "Письмо для Роури ", 67, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Я смотрю, ты пришел сюда по поручению Дито.")
	MisResultCondition(NoRecord, 67)
	MisResultCondition(HasMission, 67)
	MisResultCondition(HasItem, 4121, 1)
	MisResultAction(TakeItem, 4121, 1)
	MisResultAction(ClearMission, 67)
	MisResultAction(SetRecord, 67)
	MisResultAction(AddExp, 80, 80)

-----------------------------------Дў№ЅДў№Ѕ
	DefineMission( 77, "Грибы Грибы ", 68 )

	MisBeginTalk( "<t>Мне нужны <bГрибы-жадобцы>, которые гуляют недалеко от Аргента. Сейчас идеальный сезон и мне нужны эти грибы для експерементов. Можешь пожалуйста извлечь из них 6 <rЯдовитых грибов>?<n><t>Емм...Они очень агрессивные, так что лучше возьми лечилок с собой. Грибов-жадобцов ты можешь найти по координатам (2220, 2564). Лучший сбор урожая в твоих руках,дерзай!")
	MisBeginCondition(HasRecord, 67)
	MisBeginCondition(NoMission, 68)
	MisBeginCondition(NoRecord, 68)
	MisBeginAction(AddMission, 68)
	MisBeginAction(AddTrigger, 681, TE_GETITEM, 1725, 6 )
	MisCancelAction(ClearMission, 68)
	
	MisNeed(MIS_NEED_DESP, "Собери 6 <rЯдовитых грибов> и навести Роури в Аргенте по координатам (2240, 2752)")
	MisNeed(MIS_NEED_ITEM, 1725, 6, 10, 6)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Прекрасно! Ты собрал абсолютно все! Спасибо тебе!")
	MisHelpTalk("<t>Что случилось? Грибочки покусали тебя? Не ленись попробуй ещё разок.")
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

-----------------------------------ЛНРЕёшєЈФЖ
	DefineMission( 78, "Письмо для Коди ", 69 )
	
	MisBeginTalk( "<t>Я смотрю ты свободен.<n><t>Отнеси письмо <bМоряку - Коди> в Гавань Аргента по координатам (2219, 2911).")
	MisBeginCondition(HasRecord, 68)
	MisBeginCondition(NoRecord, 69)
	MisBeginCondition(NoMission, 69)
	MisBeginAction(AddMission, 69)
	MisBeginAction(GiveItem, 4122, 1, 4)
	MisCancelAction(ClearMission, 69 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо моряку Коди.")

	MisHelpTalk("<t>Что случилось? Я занят. PПожалуйста иди и навести Коди.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшєЈФЖ
	DefineMission( 79, "Письмо для Коди ", 69, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Я смотрю, это рекомендательное письмо от Дито.")
	MisResultCondition(NoRecord, 69)
	MisResultCondition(HasMission, 69)
	MisResultCondition(HasItem, 4122, 1)
	MisResultAction(TakeItem, 4122, 1)
	MisResultAction(ClearMission, 69)
	MisResultAction(SetRecord, 69)
	MisResultAction(AddExp, 120, 120)

-----------------------------------ЛрК§µД»хОп
	DefineMission( 80, "Потерянныйе Вещи ", 70 )

	MisBeginTalk( "<t>Я ответственный за партии товаров в гавани. К сожалению я потерял 2 бутылочки <rЧерепашьей крови>. У меня теперь будут неприятности.<n><t>Можешь пожалуйста мне достать 2 бутылочки черепашьей крови? Это спасёт мою жизнь и мою работу!<n><t>Черепашью кровь можешь выбить из <rТравяной Черепахи> по координатам (2057, 2564).")
	MisBeginCondition(HasRecord, 69)
	MisBeginCondition(NoMission, 70)
	MisBeginCondition(NoRecord, 70)
	MisBeginAction(AddMission, 70)
	MisBeginAction(AddTrigger, 701, TE_GETITEM, 1844, 2 )
	MisCancelAction(ClearMission, 70)
	
	MisNeed(MIS_NEED_DESP, "Собери 2 бутылочки  <rЧерепашьей крови> и вернись к Коди в Аргент по координатам (2219, 2911)")
	MisNeed(MIS_NEED_ITEM, 1844, 2, 10, 2)
	
	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Великолепно!<n><t>Ты спас меня! Спасибо тебе огромное!")
	MisHelpTalk("<t>Попытайся ещё раз, перед тем как я буду стрелятся!")
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

-----------------------------------ЛНРЕёшЙЄ°І
	DefineMission( 81, "Письмо для Сенны ", 71 )
	
	MisBeginTalk( "<t>Хоть я и просил тебя уже о многих вещах, но мне снова нужна твоя помощь. Пожалуйста отнеси это письмо <bСенне>, Наставнице новчиков по координатам (2223, 2785). После этого приходи ко мне за дальнейшими инструкциями.")
	MisBeginCondition(HasRecord, 70)
	MisBeginCondition(NoRecord, 71)
	MisBeginCondition(NoMission, 71)
	MisBeginAction(AddMission, 71)
	MisBeginAction(GiveItem, 4115, 1, 4)
	MisCancelAction(ClearMission, 71 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнеси письмо Наставнице Сенне.")

	MisHelpTalk("<t>Сенна находится (2223, 2785). Иди сейчас.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшЙЄ°І
	DefineMission( 82, "Письмо для Сенны ", 71, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо огромное за письмо.")
	MisResultCondition(NoRecord, 71)
	MisResultCondition(HasMission, 71)
	MisResultCondition(HasItem, 4115, 1)
	MisResultAction(TakeItem, 4115, 1)
	MisResultAction(ClearMission, 71)
	MisResultAction(SetRecord, 71)
	MisResultAction(AddExp, 200, 200)

-----------------------------------ЛНРЕёшВхїЛ
	DefineMission( 83, "Письмо для Майкла ", 72 )
	
	MisBeginTalk( "<t>Мне нужна твоя помощь ещё в одном деле.<n><t>Отнеси это письмо <bМайклу>, он патрульный, я думаю он тебе даст пару заданий для развития. Ищи его в Шайтане (958, 3549).")
	MisBeginCondition(HasRecord, 710)
	MisBeginCondition(NoRecord, 72)
	MisBeginCondition(NoMission, 72)
	MisBeginAction(AddMission, 72)
	MisBeginAction(GiveItem, 4123, 1, 4)
	MisCancelAction(ClearMission, 72 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Патрульному - Майклу ")

	MisHelpTalk("<t>Майкла можно найти по координатам (2065, 2732).")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёш°¬Д«
	DefineMission( 84, "Письмо для Амос ", 73 )
	
	MisBeginTalk( "<t>Если ты предпочитаешь собирать различные материаллы для борьбы, то возьми и отнеси вот это письмо Бакалейщице  <bАмос> (840, 3585). Она поможет тебе.")
	MisBeginCondition(HasRecord, 710)
	MisBeginCondition(NoRecord, 73)
	MisBeginCondition(NoMission, 73)
	MisBeginAction(AddMission, 73)
	MisBeginAction(GiveItem, 4124, 1, 4)
	MisCancelAction(ClearMission, 73  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Амос ")

	MisHelpTalk("<t>Почему ты не передал письмо Амос? Ищи её по координатам (840, 3585).")
	MisResultCondition(AlwaysFailure )


-----------------------------------ЛНРЕёшВхїЛ
	DefineMission( 85, "Письмо для Майкла ", 72, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Я рад, что ты здесь, у меня есть для тебя важное поручение.<n><t>Кстате заметь, что в бою твоя полоса жизни меняется. Ты прав, она действительно изменяется. Когда она доходит до нуля, ты умираешь. Будь осторожен!<n><t>Не забывай кушать Яблоки, Кексы и другие лечилки, желательно перенеси их на горячие клавиши для собственного же удобства.")
	MisResultCondition(NoRecord, 72)
	MisResultCondition(HasMission, 72)
	MisResultCondition(HasItem, 4123, 1)
	MisResultAction(TakeItem, 4123, 1)
	MisResultAction(ClearMission, 72)
	MisResultAction(SetRecord, 72)
	MisResultAction(AddExp, 50, 50)

-----------------------------------ї№»чПЙИЛХЖ
	DefineMission( 86, "Вторжение кактусов ", 74 )

	MisBeginTalk( "<t>Ах! На данный момент у нас в Шайтане эпидемия кактусов. В нашем районе их развелось катастофически много! Можешь помочь мне с этим? Если не трудно, убей 15 <bКактусов>, они находятся по координатам (1031, 3556) и мне кажется, что ты справишся с этой проблемой гораздо лучше меня.")
	MisBeginCondition(HasRecord, 72)
	MisBeginCondition(NoMission, 74)
	MisBeginCondition(NoRecord, 74)
	MisBeginAction(AddMission, 74)
	MisBeginAction(AddTrigger, 741, TE_KILL, 95, 6 )
	MisCancelAction(ClearMission, 74)
	
	MisNeed(MIS_NEED_DESP, "Убей 6 <rКактусов> и вернись к Майклу.")
	MisNeed(MIS_NEED_KILL, 95, 6, 10, 6)
	
	MisResultTalk("<t>Благодарю! Ты как всегда спас меня.")
	MisHelpTalk("<t>Ты испугался 6 кактусов?")
	MisResultCondition(HasMission, 74)
	MisResultCondition(HasFlag, 74, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 74)
	MisResultAction(SetRecord, 74)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 95 )	
	TriggerAction( 1, AddNextFlag, 74, 10, 6 )
	RegCurTrigger( 741 )

-----------------------------------ЛНРЕёшрСріІЭ
	DefineMission( 87, "Письмо для Франко ", 75 )
	
	MisBeginTalk( "<t> Пожалуйста отнеси это письмо моему другу <bФранко> по координатам (867, 3660) в Шайтан.<n><t>Он очень интересный человек, и я думаю угодит тебе кое-как...")
	MisBeginCondition(HasRecord, 74)
	MisBeginCondition(NoRecord, 75)
	MisBeginCondition(NoMission, 75)
	MisBeginAction(AddMission, 75)
	MisBeginAction(GiveItem, 4125, 1, 4)
	MisCancelAction(ClearMission, 75  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь писсьмо Франко ")

	MisHelpTalk("<t>Попытайся пожалуйста,кроме тебя мне не кого просить.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшрСріІЭ
	DefineMission( 88, "Письмо для Франко ", 75, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох, Ты друг Майкла? Спасибо тебе за письмо..")
	MisResultCondition(NoRecord, 75)
	MisResultCondition(HasMission, 75)
	MisResultCondition(HasItem, 4125, 1)
	MisResultAction(TakeItem, 4125, 1)
	MisResultAction(ClearMission, 75)
	MisResultAction(SetRecord, 75)
	MisResultAction(AddExp, 80, 80)

-----------------------------------МЯИЛ№ЦКЮ
	DefineMission( 89, "Убийство Монстра ", 76 )

	MisBeginTalk( "<t>Ты слышал о существе в пустыне, которое избивает наших путешествинников? Я провёл расследование и вычислил что это <bГорбатый верблюд>. Можешь ли ты препопадать им урок?? Убей 8 <bГорбатых верблюдов> ,я тебе буду крайне признателен.")
	MisBeginCondition(HasRecord, 75)
	MisBeginCondition(NoMission, 76)
	MisBeginCondition(NoRecord, 76)
	MisBeginAction(AddMission, 76)
	MisBeginAction(AddTrigger, 761, TE_KILL, 48, 8 )
	MisCancelAction(ClearMission, 76)

	MisNeed(MIS_NEED_DESP, "Убей 8 <rГорбатых Верблюдов> и вернись к Франко в Шайтан.")
	MisNeed(MIS_NEED_KILL, 48, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Великолепно. Теперь они получили урок.<n><t>Эти верблюды запомнят это надолго.")
	MisHelpTalk("<t>Что? Не смог приподать достаточно им урок? Попытайся ещё разок.")
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

-----------------------------------ЛНРЕёшН­Н­№Д
	DefineMission( 90, "Письмо для Смити ", 77 )
	
	MisBeginTalk( "<t>Можешь отнести письмо <bКузнецу Смити> (902, 3495)? Он весьма интересный человек и добрый." )
	MisBeginCondition(HasRecord, 76)
	MisBeginCondition(NoRecord, 77)
	MisBeginCondition(NoMission, 77)
	MisBeginAction(AddMission, 77)
	MisBeginAction(GiveItem, 4126, 1, 4)
	MisCancelAction(ClearMission, 77  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправить письмо Кузнецу Смити.")

	MisHelpTalk("<t>Не можешь найти?Воспользуйся радаром, для упрощенного поиска.")
	MisResultCondition(AlwaysFailure )


-----------------------------------ЛНРЕёшН­Н­№Д
	DefineMission( 91, "Письмо для Смити ", 77, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох, Франко послал тебя,чтобы ты помог мне? Это хорошо! Я - краткость человеческого ресурса.")
	MisResultCondition(NoRecord, 77)
	MisResultCondition(HasMission, 77)
	MisResultCondition(HasItem, 4126, 1)
	MisResultAction(TakeItem, 4126, 1)
	MisResultAction(ClearMission, 77)
	MisResultAction(SetRecord, 77)
	MisResultAction(AddExp, 120, 120)

-----------------------------------ѕеР«Ц¤
	DefineMission( 92, "Боязнь Скорпиона ", 78 )

	MisBeginTalk( "<t>Хочу сказать тебе правду, что я очень боюсь скорпионов!<n><t>Однако я постоянно должен путешествовать за городом.<n><t>Совсем недавно появились огромные стаи скорпионов, они очень опасны, гораздо опаснее маленьких...Они могут убить с 1 укуса. Но они к счастью очень пугливые.<n><t>Пожалуйста убей 12 <Больших скорпионов>! Они блуждают недалеко от (1184, 3557), но они очень проворные, так что остерегайся!")
	MisBeginCondition(HasRecord, 77)
	MisBeginCondition(NoMission, 78)
	MisBeginCondition(NoRecord, 78)
	MisBeginAction(AddMission, 78)
	MisBeginAction(AddTrigger, 781, TE_KILL, 247, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "Убей 12 <rБольших скорпионов> и вернись к Смити в Шайтан.")
	MisNeed(MIS_NEED_KILL, 247, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Хорошо! Ты очень хороший человек и на тебя можно всегда положися. Ты все сделал молниеносно. Я реально горжусь тобой.")
	MisHelpTalk("<t>Что то не вышло? Скорипионы тебя замучали? Возьми тогда лечилок с собой и попробуй снова.")
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


-----------------------------------ЛНРЕёшА­±МЛї
	DefineMission( 93, "Письмо для Блисс ", 79 )
	
	MisBeginTalk( "<t>Ты очень вырос за всё время путешествий в Шайтане,а также набрался колоссального колчичества опыта.Но мне нужна помощь ещё в одном деле... <n><t>Отнеси письмо <bНаставнице новичков - Реслин> по координатам (876, 3572), она даст тебе дальнейшие поручения." )
	MisBeginCondition(HasRecord, 78)
	MisBeginCondition(NoRecord, 79)
	MisBeginCondition(NoMission, 79)
	MisBeginAction(AddMission, 79)
	MisBeginAction(GiveItem, 4127, 1, 4)
	MisCancelAction(ClearMission, 79  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Наставнице - Реслин.")

	MisHelpTalk("<t>Реслин находиться по коордлинатам (876, 3572). Пожалуйста поспеши.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшА­±МЛї
	DefineMission( 94, "Письмо для Блисс ", 79, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо тебе за письмо, я тебе очень благодарна.")
	MisResultCondition(NoRecord, 79)
	MisResultCondition(HasMission, 79)
	MisResultCondition(HasItem, 4127, 1)
	MisResultAction(TakeItem, 4127, 1)
	MisResultAction(ClearMission, 79)
	MisResultAction(SetRecord, 79)
	MisResultAction(AddExp, 200, 200)

-----------------------------------Т©К¦ЧЄЦ°ИООс
	DefineMission( 95, "Продвижение Знахарки ", 60, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("Ты пришел ко мне с руководством новичка, для определения професии? Если ты захотел стать Знахаркой то тебе нужно пройти пару испытаний.")
	MisResultCondition(NoRecord, 60)
	MisResultCondition(HasMission, 60)
	MisResultCondition(HasItem, 4118, 1)
	MisResultAction(TakeItem, 4118, 1)
	MisResultAction(ClearMission, 60)
	MisResultAction(SetRecord, 60)

-----------------------------------Т©К¦ЧЄЦ°ИООс
	DefineMission( 96, "Продвижение Знахарки ", 80 )

	MisBeginTalk( "<t>Почему ты захотел стать Знахаркой? Многие приходили стать Знахарками, для того чтобы только разбогатеть... Тебе прийдется доказать: соответствуешь ли ты своей квалификации.<n><t>Твои испытания начинаются прямо сейчас. Сходи по координатам (884, 3156) и убей 2 <bКактуса-Убийцы>. Когда завершишь это испытание,мы начнем следующее." )
	MisBeginCondition(HasRecord, 60)
	MisBeginCondition(NoMission, 80)
	MisBeginCondition(NoRecord, 80)
	MisBeginAction(AddMission, 80)
	MisBeginAction(AddTrigger, 801, TE_KILL, 43, 2 )
	MisCancelAction(ClearMission, 80)
	

	MisNeed(MIS_NEED_DESP, "Убить 2 <bКактуса-Убийца> и вернутся к Ганнону в Шайтан (862, 3500)")
	MisNeed(MIS_NEED_KILL, 43, 2, 10, 2)
	
	MisResultTalk("<t>Неужели ты все сделал... Прекрасно.")
	MisHelpTalk("<t>У тебя возникли проблемы?")
	MisResultCondition(HasMission, 80)
	MisResultCondition(HasFlag, 80, 11 )
	MisResultAction(ClearMission, 80)
	MisResultAction(SetRecord, 80)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 43 )	
	TriggerAction( 1, AddNextFlag, 80, 10, 2 )
	RegCurTrigger( 801 )


-----------------------------------Т©К¦ЧЄЦ°ИООс
	DefineMission( 97, "Продвижение Знахарки ", 81 )
	
	MisBeginTalk( "<t>Пожалуйста передай это письмо  Navy HQ - Адмиралу Нику по координатам (865, 3648). Он даст тебе дальнейшие поручения.")
	MisBeginCondition(HasRecord, 80)
	MisBeginCondition(NoRecord, 81)
	MisBeginCondition(NoMission, 81)
	MisBeginAction(AddMission, 81)
	MisBeginAction(GiveItem, 4128, 1, 4)
	MisCancelAction(ClearMission, 81  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнеси письмо Navy HQ - Адмиралу Нику.")

	MisHelpTalk("<t>Не бездельничай,будь упорнее!")
	MisResultCondition(AlwaysFailure )

-----------------------------------Т©К¦ЧЄЦ°ИООс
	DefineMission( 98, "Продвижение Знахарки ", 81, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ты прошел свою первую часть испытания. Неплохо!")
	MisResultCondition(NoRecord, 81)
	MisResultCondition(HasMission, 81)
	MisResultCondition(HasItem, 4128, 1)
	MisResultAction(TakeItem, 4128, 1)
	MisResultAction(ClearMission, 81)
	MisResultAction(SetRecord, 81)
	MisResultAction(AddExp, 100, 100)

-----------------------------------Т©К¦ЧЄЦ°ИООс
	DefineMission( 99, "Продвижение Знахарки ", 82 )

	MisBeginTalk( "<t>Вот тебе вторая часть, докажи, что ты можешь стать Знахаркой. Если и здесь у тебя все получится, то ты официально станешь Знахаркой.<n><t>Вот тебе задание: Собери для меня 3 <bЦелебных травы>. Вполне это очень просто,я так считаю.<n><t>Выбей их из <rЯщеров-попрыгунов> недалеко от города по координатам (892, 3273).")
	MisBeginCondition(HasRecord, 81)
	MisBeginCondition(NoMission, 82)
	MisBeginCondition(NoRecord, 82)
	MisBeginAction(AddMission, 82)
	MisBeginAction(AddTrigger, 821, TE_GETITEM, 3129, 3 )
	MisCancelAction(ClearMission, 82)

	MisNeed(MIS_NEED_DESP, "Соьери 3 <bЦелебных травы> и вернись к Адмиралу Нику по координатам (865, 3648)")
	MisNeed(MIS_NEED_ITEM, 3129, 3, 10, 3)
	
	MisResultTalk("<t>Хорошо. Ты сделал это испытание!")
	MisHelpTalk("<t>Попытайся,а?Это очень просто,координаты тебе были даны.Воспользуйся Радаром.")
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

-----------------------------------Т©К¦ЧЄЦ°ИООс
	DefineMission( 150, "Продвижение Знахарки ", 83 )
	
	MisBeginTalk( "<t>Ты доказал,что достоин. Отнеси это письмо Ганнон, для того,чтобы стать Знахаркой. Вот тебе <rПодтверждающий документ> ,чтобы она тебе поверила.")
	MisBeginCondition(HasRecord, 82)
	MisBeginCondition(NoRecord, 83)
	MisBeginCondition(NoMission, 83)
	MisBeginAction(AddMission, 83)
	MisBeginAction(GiveItem, 3954, 1, 4)
	MisCancelAction(ClearMission, 83 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Навести целительницу Ганнон в Шайтане по координатам (862, 3500)")

	MisHelpTalk("<t>Что случилось? Все ещё колеблешся?Иди пробуй!")
	MisResultCondition(AlwaysFailure )


-----------------------------------Т©К¦ЧЄЦ°ИООс
	DefineMission( 151, "Продвижение Знахарки ", 83, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Поздравляю дитя моё! Теперь ты Знахарка! Да прибудут с тобой Боги!<n><t>(Ты активировал свою профессию у Ганнон.<n><t>Купи оружие у кузнеца Смити, доспехи,перчатки и ботинки у Бабушки Мои и навыки у Бакалейщицы Амос)")
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


-----------------------------------ЛНРЕёш°¬Д«
	DefineMission( 152, "Письмо для Амос ", 73, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо,ты очень добр.")
	MisResultCondition(NoRecord, 73)
	MisResultCondition(HasMission, 73)
	MisResultCondition(HasItem, 4124, 1)
	MisResultAction(TakeItem, 4124, 1)
	MisResultAction(ClearMission, 73)
	MisResultAction(SetRecord, 73)
	MisResultAction(AddExp, 50, 50)


-----------------------------------јЮЅУКµСй
	DefineMission( 153, "Анализ Прививки ", 84 )

	MisBeginTalk( "<t>Хочешь увидеть цветущий кактус? Я хочу провести эксперемент, но для этого мне потребуются: 6 <rПобегов кактуса>.<n><t>Они могут быть выбиты из <bЗлободыни> бегающей недалеко от города. Сейчас они крайне необходимы мне, будь добр принеси.")
	MisBeginCondition(HasRecord, 73)
	MisBeginCondition(NoMission, 84)
	MisBeginCondition(NoRecord, 84)
	MisBeginAction(AddMission, 84)
	MisBeginAction(AddTrigger, 841, TE_GETITEM, 1691, 6 )
	MisCancelAction(ClearMission, 84)
	
	MisNeed(MIS_NEED_DESP, "Собери 6 <rПобегов кактуса> и вернись к Амос в точку (840, 3585)")
	MisNeed(MIS_NEED_ITEM, 1691, 6, 10, 6)
	
	MisResultTalk("<t>Отлчино! Теперь я могу начать свой эксперимент. Приходи через год, сделаем это вновь!")
	MisHelpTalk("<t>Хмм, Невыходит? Поробуй еще разок!")
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

-----------------------------------ЛНРЕёшАтДИ
	DefineMission( 154, "Письмо для Лены ", 85 )
	
	MisBeginTalk( "<t>Я хочу продолжить свои эксперименты.<n><t>Почему бы тебе не отнести это письмо Лене в точку (883, 3520) и узнать нужна ли ей помощь?")
	MisBeginCondition(HasRecord, 84)
	MisBeginCondition(NoRecord, 85)
	MisBeginCondition(NoMission, 85)
	MisBeginAction(AddMission, 85)
	MisBeginAction(GiveItem, 4129, 1, 4)
	MisCancelAction(ClearMission, 85 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправить письмо Лене в Шайтене ")

	MisHelpTalk("<t>Отнеси письмо скорее пожалуйста.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшАтДИ
	DefineMission( 155, "Письмо для Лены ", 85, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ты друг Амос? Привет!")
	MisResultCondition(NoRecord, 85)
	MisResultCondition(HasMission, 85)
	MisResultCondition(HasItem, 4129, 1)
	MisResultAction(TakeItem, 4129, 1)
	MisResultAction(ClearMission, 85)
	MisResultAction(SetRecord, 85)
	MisResultAction(AddExp, 80, 80)

-----------------------------------О±ФмОпЖ·
	DefineMission( 156, "Поддельный Предмет ", 86 )

	MisBeginTalk( "<t>С недавних времен врач города Ледыни собирает пот животных. Я хочу развести его.<n><t>Помоги мне сборать 3 бытылки  <rТемной воды>. Ты их можешь выбить из <bСкорпионышей> в точке (1184, 3557).")
	MisBeginCondition(HasRecord, 85)
	MisBeginCondition(NoMission, 86)
	MisBeginCondition(NoRecord, 86)
	MisBeginAction(AddMission, 86)
	MisBeginAction(AddTrigger, 861, TE_GETITEM, 1648, 3 )
	MisCancelAction(ClearMission, 86)
	
	MisNeed(MIS_NEED_DESP, "Собери 3 бутылки <rТемной воды> и вернись к Лене в Шайтан в точку (883, 3520)")
	MisNeed(MIS_NEED_ITEM, 1648, 3, 10, 3)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>Хаха! Прекрасно! Я горжусь тобой!")
	MisHelpTalk("<t>Почему не идешь?! Попытайся хотябы!")
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

-----------------------------------ЛНРЕёшёҐАјїЛ
	DefineMission( 157, "Письмо Франклину ", 87 )
	
	MisBeginTalk( "<t>У меня есть к тебе поручение.<n><t>Передай это письмо <bФранклину> строителю. Он мой друг, и конечно же поможет тебе.<n><t>Ты можешь найти его в Шайтане по координатам (901, 3668).")
	MisBeginCondition(HasRecord, 86)
	MisBeginCondition(NoRecord, 87)
	MisBeginCondition(NoMission, 87)
	MisBeginAction(AddMission, 87)
	MisBeginAction(GiveItem, 4130, 1, 4)
	MisCancelAction(ClearMission, 87 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Строителю - Франклин ")

	MisHelpTalk("<t>Иди прямо сейчас! Не бойся,у тебя все получится.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшёҐАјїЛ
	DefineMission( 158, "Письмо Франклину ", 87, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох, письмо от Лены! Спасибо!")
	MisResultCondition(NoRecord, 87)
	MisResultCondition(HasMission, 87)
	MisResultCondition(HasItem, 4130, 1)
	MisResultAction(TakeItem, 4130, 1)
	MisResultAction(ClearMission, 87)
	MisResultAction(SetRecord, 87)
	MisResultAction(AddExp, 120, 120)

-----------------------------------ФОґ¬Т©
	DefineMission( 159, "Лекарство от морской болезни ", 88 )

	MisBeginTalk( "<t>Для приготовления лекарства мне очень нехватает <rЦветка кактуса>. Иди в точку (1031, 3556) и собери 3 <rЦветка кактуса> ,которые падают с <bКактусов>. С твоим уровнем, у тебя не должно быть проблем с ними.<n><t>Только, никому не говори об этом рецепте лечения от морской болезни, Прошу тебя.")
	MisBeginCondition(HasRecord, 87)
	MisBeginCondition(NoMission, 88)
	MisBeginCondition(NoRecord, 88)
	MisBeginAction(AddMission, 88)
	MisBeginAction(AddTrigger, 881, TE_GETITEM, 1692, 3 )
	MisCancelAction(ClearMission, 88)
	
	MisNeed(MIS_NEED_DESP, "Собери 3 <rЦветка кактуса> и вернись к Франклину ")
	MisNeed(MIS_NEED_ITEM, 1692, 3, 10, 3)

	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>Я должен поблагодарить тебя. Я наконец то могу начать отвар ")
	MisHelpTalk("<t>Это всего 1 ингридиент! Не позорься!")
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

-----------------------------------ЛНРЕёшА­±МЛї
	DefineMission( 160, "Письмо для Блисс ", 89 )
	
	MisBeginTalk( "<t>Мне опять нужна твоя помощь!<n><t>Пожалуйста передай это письмо  <bРеслин>, Наставнице новичков, которая находиться по координатам (876, 3572).<n><t>После этого она даст тебе дальнейшие инструкции.")
	MisBeginCondition(HasRecord, 88)
	MisBeginCondition(NoRecord, 89)
	MisBeginCondition(NoMission, 89)
	MisBeginAction(AddMission, 89)
	MisBeginAction(GiveItem, 4127, 1, 4)
	MisCancelAction(ClearMission, 89 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Наставнице - Реслин ")

	MisHelpTalk("<t>Ресли находится в точке (876, 3572). Пожалуйста поспеши.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшА­±МЛї
	DefineMission( 161, "Письмо для Блисс ", 89, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо тебе за письмо, ты самый хороший человек в Шайтане.")
	MisResultCondition(NoRecord, 89)
	MisResultCondition(HasMission, 89)
	MisResultCondition(HasItem, 4127, 1)
	MisResultAction(TakeItem, 4127, 1)
	MisResultAction(ClearMission, 89)
	MisResultAction(SetRecord, 89)
	MisResultAction(AddExp, 200, 200)


---------------------------------ЛНРЕёшРЎДЄ
	DefineMission( 162, "Письмо для Малыша Мо ", 90 )
	
	MisBeginTalk( "<t>Вот тебе ещё одно задание.<n><t>Отнеси письмо <bМалышу Мо>, патрульному, и спроси ненужна ли ему помощь. Ищи его в Ледыни по координатам (1237, 613).")
	MisBeginCondition(HasRecord, 716)
	MisBeginCondition(NoRecord, 90)
	MisBeginCondition(NoMission, 90)
	MisBeginAction(AddMission, 90)
	MisBeginAction(GiveItem, 4131, 1, 4)
	MisCancelAction(ClearMission, 90 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Патрульному - Малышу Мо ")

	MisHelpTalk("<t>Малыш Мо находится в точке (1237, 613).")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшІ®Ві
	DefineMission( 163, "Письмо для Палпина ", 91 )
	
	MisBeginTalk( "<t>Я коллекционирую посохи для битв, передай это письмо <bПалпину> бакалейщику, который находится по координатам (1356, 483). Он хочет познакомится с тобой.")
	MisBeginCondition(HasRecord, 716)
	MisBeginCondition(NoRecord, 91)
	MisBeginCondition(NoMission, 91)
	MisBeginAction(AddMission, 91)
	MisBeginAction(GiveItem, 4132, 1, 4)
	MisCancelAction(ClearMission, 91  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Бакалейщику - Палпину ")

	MisHelpTalk("<t>Почему не отнес письмо Палпину? Он находится в точке (1356, 483).")
	MisResultCondition(AlwaysFailure )


-----------------------------------ЛНРЕёшВхїЛ
	DefineMission( 164, "Письмо для Майкла ", 90, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Это прекрасно, ты отлично постарался ранее.Я к тебе по делу...<n><t>Ты заметил, что когда ты в бою, твоя строка жизни изменяется? Правильно, строка жизни реально изменяется.")
	MisResultCondition(NoRecord, 90)
	MisResultCondition(HasMission, 90)
	MisResultCondition(HasItem, 4131, 1)
	MisResultAction(TakeItem, 4131, 1)
	MisResultAction(ClearMission, 90)
	MisResultAction(SetRecord, 90)
	MisResultAction(AddExp, 50, 50)

-----------------------------------НзЖ¤ЕБЕБ
	DefineMission( 165, "Игривый кальмарчики ", 92 )

	MisBeginTalk( "<t>Снежные кальмарчики стали более игривыми. Они нападают на всех кто проходит мимо. Помоги преподать им урок. Убей  6 <bСнежных кальмарчиков>.<n><t>Не покидай меня в тяжелую минуту!<n><t>Я знаю ты справишся с этим лучше , чем кто либо другой!")
	MisBeginCondition(HasRecord, 90)
	MisBeginCondition(NoMission, 92)
	MisBeginCondition(NoRecord, 92)
	MisBeginAction(AddMission, 92)
	MisBeginAction(AddTrigger, 921, TE_KILL, 235, 6 )
	MisCancelAction(ClearMission, 92)
	
	MisNeed(MIS_NEED_DESP, "Убей 6 <bСнежных кальмарчиков> и вернись к Малышу Мо ")
	MisNeed(MIS_NEED_KILL, 235, 6, 10, 6)
	
	MisResultTalk("<t>Отличная работа. Теперь я могу спокойно гулять.")
	MisHelpTalk("<t>Что? Не можешь одолеть их? Постарайся и будь упорнее,я уверен,что у тебя все получится!")
	MisResultCondition(HasMission, 92)
	MisResultCondition(HasFlag, 92, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 92)
	MisResultAction(SetRecord, 92)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 235 )	
	TriggerAction( 1, AddNextFlag, 92, 10, 6 )
	RegCurTrigger( 921 )

-----------------------------------ЛНРЕёшАЧЕ·
	DefineMission( 166, "Письмо Рею ", 93 )
	
	MisBeginTalk( "<t>Мне нужна твоя помощь. Отнеси это письмо <bРею>, который находится по координатам (1365, 570). Он будет рад помочь тебе.")
	MisBeginCondition(HasRecord, 92)
	MisBeginCondition(NoRecord, 93)
	MisBeginCondition(NoMission, 93)
	MisBeginAction(AddMission, 93)
	MisBeginAction(GiveItem, 4133, 1, 4)
	MisCancelAction(ClearMission, 93  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Мечнику - Рею в Ледыни ")

	MisHelpTalk("<t>Рей находится в точке (1365, 570). Иди скорее!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшАЧЕ·
	DefineMission( 167, "Письмо Рею ", 93, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох! Малыш Мо отправил письмо мне? Великолепно!")
	MisResultCondition(NoRecord, 93)
	MisResultCondition(HasMission, 93)
	MisResultCondition(HasItem, 4133, 1)
	MisResultAction(TakeItem, 4133, 1)
	MisResultAction(ClearMission, 93)
	MisResultAction(SetRecord, 93)
	MisResultAction(AddExp, 80, 80)

-----------------------------------ЦнїЪ¶бБё
	DefineMission( 168, "Такого никогда не бывает слишком много ", 94 )

	MisBeginTalk( "<t>Моя задание заключается в том, чтобы ты мне помог с этими <bСнежными свинокрылами> ,они воруют большое количество продовольствия у нас. Иди по координатам (1179, 371) и убей 8 <bСнежных свинокрылов>.")
	MisBeginCondition(HasRecord, 93)
	MisBeginCondition(NoMission, 94)
	MisBeginCondition(NoRecord, 94)
	MisBeginAction(AddMission, 94)
	MisBeginAction(AddTrigger, 941, TE_KILL, 239, 8 )
	MisCancelAction(ClearMission, 94)

	MisNeed(MIS_NEED_DESP, "Уюей 8 <bСнежных Свинокрылов> и вернись к Рею в точку (1365, 570)")
	MisNeed(MIS_NEED_KILL, 239, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>Все? Спасибо тебе! Ты дал отпор этим свинокрылам. Я реально горжусь тобой.")
	MisHelpTalk("<t>Что? Не получается?")
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

-----------------------------------ЛНРЕёшєІДИ
	DefineMission( 169, "Письмо для Ханах ", 95 )
	
	MisBeginTalk( "<t>О!Ты мне как раз нужен, для того, чтобы отправить письмо портной Ханнах, которая находится по координатам (1349, 539). Я думаю, что для тебя это раз плюнуть." )
	MisBeginCondition(HasRecord, 94)
	MisBeginCondition(NoRecord, 95)
	MisBeginCondition(NoMission, 95)
	MisBeginAction(AddMission, 95)
	MisBeginAction(GiveItem, 4134, 1, 4)
	MisCancelAction(ClearMission, 95  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Потной - Ханах ")

	MisHelpTalk("<t>Чего же ты ждешь? Поспеши!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшєІДИ
	DefineMission( 170, "Письмо для Ханах ", 95, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>О,дорогой! Без тебя я бы никогда не справилась!")
	MisResultCondition(NoRecord, 95)
	MisResultCondition(HasMission, 95)
	MisResultCondition(HasItem, 4134, 1)
	MisResultAction(TakeItem, 4134, 1)
	MisResultAction(ClearMission, 95)
	MisResultAction(SetRecord, 95)
	MisResultAction(AddExp, 120, 120)

-----------------------------------ґнОуЗЁТЖ
	DefineMission( 171, "Неверная передача ", 96 )

	MisBeginTalk( "<t>Хохо, у меня для тебя хорошие новости! Отряд оленят мигрировал в Ледынь. Но к сожалению в Ледыни, эти олени считаются деликатесом, дарованным богами... Я хочу чтобы ты отправился в точку (1164, 305). и убил 12 <bОленят> для вечернего банкета.")
	MisBeginCondition(HasRecord, 95)
	MisBeginCondition(NoMission, 96)
	MisBeginCondition(NoRecord, 96)
	MisBeginAction(AddMission, 96)
	MisBeginAction(AddTrigger, 961, TE_KILL, 238, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "Убей 12 <Маленьких Оленей> и вернись к Ханах в точку (1349, 539)")
	MisNeed(MIS_NEED_KILL, 238, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Отлично! Ты сделал это! У нас теперь есть много мяса для банкета! Хехе.")
	MisHelpTalk("<t>Почему ты не смог убить этих оленей? Пожалуйста будь более усердным!")
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


-----------------------------------ЛНРЕёш°ІзчВ¶СЗ
	DefineMission( 172, "Письмо для Анжелы ", 97 )
	
	MisBeginTalk( "<t>Я тебя просила очень много раз о помощи. Так вот мне вновь нужна твоя помощь.<n><t>Пожалуйста отнеси это письмо <bАнжеле>, Наставнице аргента, которая находится по координатам (1315, 507).<n><t>Когда найдешь её, она даст тебе дальнейшие инструкции.")
	MisBeginCondition(HasRecord, 96)
	MisBeginCondition(NoRecord, 97)
	MisBeginCondition(NoMission, 97)
	MisBeginAction(AddMission, 97)
	MisBeginAction(GiveItem, 4135, 1, 4)
	MisCancelAction(ClearMission, 97  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Наставнице - Анжеле ")

	MisHelpTalk("<t>Анжела находится а точке (1315, 507). Пожалуйста поспеши.")
	MisResultCondition(AlwaysFailure )


-----------------------------------ЛНРЕёш°ІзчВ¶СЗ
	DefineMission( 173, "Письмо для Анжелы ", 97, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо за письмо, ты просто молодец!")
	MisResultCondition(NoRecord, 97)
	MisResultCondition(HasMission, 97)
	MisResultCondition(HasItem, 4135, 1)
	MisResultAction(TakeItem, 4135, 1)
	MisResultAction(ClearMission, 97)
	MisResultAction(SetRecord, 97)
	MisResultAction(AddExp, 200, 200)

-----------------------------------БФИЛЧЄЦ°ИООс
	DefineMission( 174, "Продвижение охотника ", 59, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("Отлично! Я смотрю ты очень талантлив, наставница замечательно обучила тебя. Сделай парочку заданий, для того чтобы стать <rОхотником>.")
	MisResultCondition(NoRecord, 59)
	MisResultCondition(HasMission, 59)
	MisResultCondition(HasItem, 4117, 1)
	MisResultAction(TakeItem, 4117, 1)
	MisResultAction(ClearMission, 59)
	MisResultAction(SetRecord, 59)

-----------------------------------БФИЛЧЄЦ°ИООс
	DefineMission( 175, "Продвижение охотника ", 98 )

	MisBeginTalk( "<t>Пришел стать охотником? Это очень храбро.<n><t>Однако одной только храбрости недостаточно. Тебе нужно заработать <rРуководство охотника> и показать свою ловкость и проворность в некоторых испытаниях.<n><t>Отправляйся в <pЛедынь> и убей 12 <bБелых оленят>. Найти ты их можешь по координатам (1325, 305).<n><t>Если успешно завершишь это испытание, то считай, что первая часть твоих испытаний будет завершена.")
	MisBeginCondition(HasRecord, 59)
	MisBeginCondition(NoMission, 98)
	MisBeginCondition(NoRecord, 98)
	MisBeginAction(AddMission, 98)
	MisBeginAction(AddTrigger, 981, TE_KILL, 240, 12 )
	MisCancelAction(ClearMission, 98)
	

	MisNeed(MIS_NEED_DESP, "Убей 12 <bБелых оленят> и вернись к Рею в Ледынь в точку (1365, 570)")
	MisNeed(MIS_NEED_KILL, 240, 12, 10, 12)
	
	MisResultTalk("<t>Ты меня не подвел меня. Ты завершил свою первую часть испытаний.")
	MisHelpTalk("<t>Как так? Иди пытайся, купи себе лечилок и в путь!")
	MisResultCondition(HasMission, 98)
	MisResultCondition(HasFlag, 98, 21 )
	MisResultAction(ClearMission, 98)
	MisResultAction(SetRecord, 98)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 240 )	
	TriggerAction( 1, AddNextFlag, 98, 10, 12 )
	RegCurTrigger( 981 )


-----------------------------------БФИЛЧЄЦ°ИООс
	DefineMission( 176, "Продвижение охотника ", 99 )
	
	MisBeginTalk( "<t>Итак, начнем вторую часть твоих испытаний. Отнеси это письмо Малышу Мо (1237, 613) и он скажет тебе, что требуется для завершения испытания.")
	MisBeginCondition(HasRecord, 98)
	MisBeginCondition(NoRecord, 99)
	MisBeginCondition(NoMission, 99)
	MisBeginAction(AddMission, 99)
	MisBeginAction(GiveItem, 4136, 1, 4)
	MisCancelAction(ClearMission, 99  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Патрульному - Малышу Мо ")

	MisHelpTalk("<t>Малыш Мо находится в точке (1237, 613).")
	MisResultCondition(AlwaysFailure )

-----------------------------------БФИЛЧЄЦ°ИООс
	DefineMission( 177, "Продвижение охотника ", 99, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Вау, Ты уже завершил свою первую часть. Поздравляю!")
	MisResultCondition(NoRecord, 99)
	MisResultCondition(HasMission, 99)
	MisResultCondition(HasItem, 4136, 1)
	MisResultAction(TakeItem, 4136, 1)
	MisResultAction(ClearMission, 99)
	MisResultAction(SetRecord, 99)
	MisResultAction(AddExp, 100, 100)

-----------------------------------БФИЛЧЄЦ°ИООс
	DefineMission( 178, "Продвижение охотника ", 150 )

	MisBeginTalk( "<t>Итак, скажу тебе вторую часть испытаний. Ты должен собрать 3 <bФлакона> и вернутся ко мне. Эти флаконы падают со <rСнежных свинокрылов> по координатам (1179, 371).")
	MisBeginCondition(HasRecord, 99)
	MisBeginCondition(NoMission, 150)
	MisBeginCondition(NoRecord, 150)
	MisBeginAction(AddMission, 150)
	MisBeginAction(AddTrigger, 1501, TE_GETITEM, 1779, 3 )
	MisCancelAction(ClearMission, 150)

	MisNeed(MIS_NEED_DESP, "Собери 3 <bФлакона> и вернись к Малышу Мо ")
	MisNeed(MIS_NEED_ITEM, 1779, 3, 10, 3)
	
	MisResultTalk("<t>Ты все зделал! Я реально горжусь тобой!")
	MisHelpTalk("<t>Не выходит? Убей этих хрюшек,если хочешь действительно стать охотником!")
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

-----------------------------------БФИЛЧЄЦ°ИООс
	DefineMission( 179, "Продвижение охотника ", 151 )
	
	MisBeginTalk( "<t>Я думаю,что ты готов стать Охотником. Вот возьми <rРуководство охотника> и отнеси его Рею,чтобы он сделал тебя охотником.")
	MisBeginCondition(HasRecord, 150)
	MisBeginCondition(NoRecord, 151)
	MisBeginCondition(NoMission, 151)
	MisBeginAction(AddMission, 151)
	MisBeginAction(GiveItem, 3955, 1, 4)
	MisCancelAction(ClearMission, 151 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Поговори с Реем в Ледыни ")

	MisHelpTalk("<t>Что ты делаешь? Не получается что-ли?")
	MisResultCondition(AlwaysFailure )


-----------------------------------БФИЛЧЄЦ°ИООс
	DefineMission( 180, "Продвижение охотника ", 151, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Поздравляю, теперь ты стал Охотником. Будь осторожен, так как тебе будут встречатся многочисленные опасности.<n><t>(Ты активировал свой класс у Рея.<n><t>Обязательно купи оружие у кузнеца Баша, доспехи, перчатки и ботинки у портной Ханнах и навыки у бакалейщика Паплин)")
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


-----------------------------------ЛНРЕёшІ®Ві
	DefineMission( 181, "Письмо для Палпина ", 91, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Хорошо,что ты здесь. Ты должен отнести письмо Паплину.")
	MisResultCondition(NoRecord, 91)
	MisResultCondition(HasMission, 91)
	MisResultCondition(HasItem, 4132, 1)
	MisResultAction(TakeItem, 4132, 1)
	MisResultAction(ClearMission, 91)
	MisResultAction(SetRecord, 91)
	MisResultAction(AddExp, 50, 50)


-----------------------------------КХјЇґҐКЦ
	DefineMission( 182, "Коллекция щупальцев ", 152 )

	MisBeginTalk( "<t>Как видишь я коллекционер, но недавно я заметил, что в моей коллекции не хватает <rЦупальца осьминога>. Можешь пожалуйста принести мне 3 <rЩупальца осьминога>?<n><t>Выбить их можно со <bСнегоплва>, который находится по координатам (1465, 402). Они часто бегают недалеко от выхода из города.<n><t>Я думаю это задание тебе вполне по силам!")
	MisBeginCondition(HasRecord, 91)
	MisBeginCondition(NoMission, 152)
	MisBeginCondition(NoRecord, 152)
	MisBeginAction(AddMission, 152)
	MisBeginAction(AddTrigger, 1521, TE_GETITEM, 1704, 3 )
	MisCancelAction(ClearMission, 152)
	
	MisNeed(MIS_NEED_DESP, "Собери 3 <rЩупальца осьминога> и вернись к Палпину в точку (1356, 483)")
	MisNeed(MIS_NEED_ITEM, 1704, 3, 10, 3)
	
	MisResultTalk("<t>Прекрасно! Наконецто я собрал полную коллекцию.<n><t>Спасибо тебе! Ты меня выручил, и я у тебя теперь в долгу.")
	MisHelpTalk("<t>Что? Возникли проблемы? Слишком тяжело для тебя? Они находятся недалеко от главного выхода, поищи.")
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

-----------------------------------ЛНРЕёшФјЙЄ·т
	DefineMission( 183, "Письмо для Яски ", 153 )
	
	MisBeginTalk( "<t>И снова я нуждаюсь в твоей помощи. Пожалуйста отнеси это письмо <bСидорфу>, который находится по координатам (1290, 540). Он тебе все расскажет и даже поможет чем сможет.")
	MisBeginCondition(HasRecord, 152)
	MisBeginCondition(NoRecord, 153)
	MisBeginCondition(NoMission, 153)
	MisBeginAction(AddMission, 153)
	MisBeginAction(GiveItem, 4137, 1, 4)
	MisCancelAction(ClearMission, 153 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Яски в Ледыни в точку (1290, 540).")

	MisHelpTalk("<t>Пока мой друг, больше я ничем не могу помочь, помочь тебе может только Яски.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЛНРЕёшФјЙЄ·т
	DefineMission( 184, "Письмо для Яски ", 153, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох, Ты пришел от Палпин? Отлично!")
	MisResultCondition(NoRecord, 153)
	MisResultCondition(HasMission, 153)
	MisResultCondition(HasItem, 4137, 1)
	MisResultAction(TakeItem, 4137, 1)
	MisResultAction(ClearMission, 153)
	MisResultAction(SetRecord, 153)
	MisResultAction(AddExp, 80, 80)

-----------------------------------µчБПЖї
	DefineMission( 185, "Смесь ", 154 )

	MisBeginTalk( "<t>Совсем недавно, всвязи с моими эксперементами, я потерял очень много флаконов...<n><t>Помоги мне пожалуйста! Отправляйся в точку (1118, 343) и выбей 2 <rФлакона> со <bСнежных свинокрылов>. Таким образом, ты меня реально спасешь от отчаяния.")
	MisBeginCondition(HasRecord, 153)
	MisBeginCondition(NoMission, 154)
	MisBeginCondition(NoRecord, 154)
	MisBeginAction(AddMission, 154)
	MisBeginAction(AddTrigger, 1541, TE_GETITEM, 1779, 2 )
	MisCancelAction(ClearMission, 154)
	
	MisNeed(MIS_NEED_DESP, "Собери 2 <rФлакона> и вернимсь к Яски в Ледынь в точку (964, 422)")
	MisNeed(MIS_NEED_ITEM, 1779, 2, 10, 2)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>Хохо! Ты принес их, благодарю тебя!")
	MisHelpTalk("<t>Это всего лишь 2 флакона! Вперед!")
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

-----------------------------------ЛНРЕёшІјАцДИ
	DefineMission( 186, "Письмо для Белинды ", 155 )
	
	MisBeginTalk( "<t>Пожалуйста передай это письмо <bБелинде>, Она находится по координатам (1360, 519) В Ледыни.")
	MisBeginCondition(HasRecord, 154)
	MisBeginCondition(NoRecord, 155)
	MisBeginCondition(NoMission, 155)
	MisBeginAction(AddMission, 155)
	MisBeginAction(GiveItem, 4138, 1, 4)
	MisCancelAction(ClearMission, 155 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Белинде в Ледыни ")

	MisHelpTalk("<t>Хотя я тебя хорошо знаю, но тебе все еще нужно заплатить арендную плату. Однако я могу сделать тебе отличную скидку.")
	MisResultCondition(AlwaysFailure )
-----------------------------------ЛНРЕёшІјАцДИ
	DefineMission( 187, "Письмо для Белинды ", 155, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Я смотрю хозяин гостиницы порекомендовал мне тебя. Если ты освободился, то мне нужна твоя помощь.")
	MisResultCondition(NoRecord, 155)
	MisResultCondition(HasMission, 155)
	MisResultCondition(HasItem, 4138, 1)
	MisResultAction(TakeItem, 4138, 1)
	MisResultAction(ClearMission, 155)
	MisResultAction(SetRecord, 155)
	MisResultAction(AddExp, 120, 120)

-----------------------------------СЫАб
	DefineMission( 188, "Слеза ", 156 )

	MisBeginTalk( "<t>Мне очень нужны слёзы <bОленят> находятся в точке (1164, 305) и <bБелых оленят> находятся в точке (1325, 305) которые  плавят в драгоценности, чтобы те приносили удачу!<n><t>Можешь пожалуйста найти 1 для меня такую?")
	MisBeginCondition(HasRecord, 155)
	MisBeginCondition(NoMission, 156)
	MisBeginCondition(NoRecord, 156)
	MisBeginAction(AddMission, 156)
	MisBeginAction(AddTrigger, 1561, TE_GETITEM, 1681, 1 )
	MisCancelAction(ClearMission, 156)
	
	MisNeed(MIS_NEED_DESP, "Собери 1 <bСлезу> и вернись к Белинде в Ледынь по координатам (1360, 519)")
	MisNeed(MIS_NEED_ITEM, 1681, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>Это прекрасно! Теперь я могу сделать ожирелье!")
	MisHelpTalk("<t>Ты не можешь выбить слезу? Попытайся пожалуйста.")
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

-----------------------------------ЛНРЕёш°ІзчВ¶СЗ
	DefineMission( 189, "Письмо для Анжелы ", 157 )
	
	MisBeginTalk( "<t>Мне снова нужна твоя помощь в одном очень важном деле.<n><t>Пожалуйста отнеси письмо <bАнжеле>, Наставнице новичков в точку (1315, 507).<n><t>Дальше она даст тебе дальнейшие указания.")
	MisBeginCondition(HasRecord, 156)
	MisBeginCondition(NoRecord, 157)
	MisBeginCondition(NoMission, 157)
	MisBeginAction(AddMission, 157)
	MisBeginAction(GiveItem, 4135, 1, 4)
	MisCancelAction(ClearMission, 157 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Наставнице - Анжеле в Ледыни ")

	MisHelpTalk("<t>Анжела находится в точке (1315, 507). Пожалуйста поспеши.")
	MisResultCondition(AlwaysFailure )
-----------------------------------ЛНРЕёш°ІзчВ¶СЗ
	DefineMission( 190, "Письмо для Анжелы ", 157, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо тебе за письмо,я крайне благодарна тебе.")
	MisResultCondition(NoRecord, 157)
	MisResultCondition(HasMission, 157)
	MisResultCondition(HasItem, 4135, 1)
	MisResultAction(TakeItem, 4135, 1)
	MisResultAction(ClearMission, 157)
	MisResultAction(SetRecord, 157)
	MisResultAction(AddExp, 200, 200)


-----------------------------------Г°ПХХЯЧЄЦ°ИООс
	DefineMission( 191, "Продвижение исследователя ", 61, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("Хорошо. Ты очень зарекомендованный человек, и я хочу тебя обучить одной важной профессией. Пройди все задания, для того чтобы стать <rИсследователем>.")
	MisResultCondition(NoRecord, 61)
	MisResultCondition(HasMission, 61)
	MisResultCondition(HasItem, 4119, 1)
	MisResultAction(TakeItem, 4119, 1)
	MisResultAction(ClearMission, 61)
	MisResultAction(SetRecord, 61)

-----------------------------------Г°ПХХЯЧЄЦ°ИООс
	DefineMission( 192, "Продвижение исследователя ", 158 )

	MisBeginTalk( "<t>Ты здесь, для того чтобы стать Исследователем? Исследователи - грозы морей, скажу тебе одно. Для того, чтобы им стать, тебе нужны базовые навыки выживания. Ты должен заработать <rСертификат выживания>, для этого сходи <На побережье Аргента> и убей 12 <bСвинокрылов> в точке (1950, 2563). Когда завершишь это испытание, я дам тебе новое.")
	MisBeginCondition(HasRecord, 61)
	MisBeginCondition(NoMission, 158)
	MisBeginCondition(NoRecord, 158)
	MisBeginAction(AddMission, 158)
	MisBeginAction(AddTrigger, 1581, TE_KILL, 237, 12 )
	MisCancelAction(ClearMission, 158)
	
	MisNeed(MIS_NEED_DESP, "Убей 12 <bСвинокрылов> и вернись в Малышу Даниэлю в точку (2193, 2730)")
	MisNeed(MIS_NEED_KILL, 237, 12, 10, 12)
	
	MisResultTalk("<t>Ты все прекрасно сделал!<n><t>Первая часть твоих испытаний завершена, тебя ждет вторая!")
	MisHelpTalk("<t>Ты не выполнил моего требования. Пока ты их не убьешь, я не дам тебе Сертификат выживания.")
	MisResultCondition(HasMission, 158)
	MisResultCondition(HasFlag, 158, 21 )
	MisResultAction(ClearMission, 158)
	MisResultAction(SetRecord, 158)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 158, 10, 12 )
	RegCurTrigger( 1581 )


-----------------------------------Г°ПХХЯЧЄЦ°ИООс
	DefineMission( 193, "Продвижение исследователя ", 159 )
	
	MisBeginTalk( "<t><t>Теперь иди к <bГенералу Вильяму>, он находиться по координатам (2277, 2831) с этим письмом, чтобы он дал тебе дальнейшие указания. Он даст тебе последнее испытание, для приобретения профессии.")
	MisBeginCondition(HasRecord, 158)
	MisBeginCondition(NoRecord, 159)
	MisBeginCondition(NoMission, 159)
	MisBeginAction(AddMission, 159)
	MisBeginAction(GiveItem, 4139, 1, 4)
	MisCancelAction(ClearMission, 159  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Генералу - Вильяму ")

	MisHelpTalk("<t>Посппеши! Тебе осталось совсем чуть-чуть!!")
	MisResultCondition(AlwaysFailure )
-----------------------------------Г°ПХХЯЧЄЦ°ИООс
	DefineMission( 194, "Продвижение исследователя ", 159, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох, новый путешественник. Я надеюсь, что ты готов к последнему испытанию.")
	MisResultCondition(NoRecord, 159)
	MisResultCondition(HasMission, 159)
	MisResultCondition(HasItem, 4139, 1)
	MisResultAction(TakeItem, 4139, 1)
	MisResultAction(ClearMission, 159)
	MisResultAction(SetRecord, 159)
	MisResultAction(AddExp, 100, 100)

-----------------------------------Г°ПХХЯЧЄЦ°ИООс
	DefineMission( 195, "Продвижение исследователя ", 160 )

	MisBeginTalk( "<t>На северо-востоке от <pСеребрянных шахт> есть болотные духи. Ты должен принести мне 2 <bОтравленных фрукта> ,которые можно выбих с них, и вернись ко мне.")
	MisBeginCondition(HasRecord, 159)
	MisBeginCondition(NoMission, 160)
	MisBeginCondition(NoRecord, 160)
	MisBeginAction(AddMission, 160)
	MisBeginAction(AddTrigger, 1601, TE_GETITEM, 1595, 2 )
	MisCancelAction(ClearMission, 160)

	MisNeed(MIS_NEED_DESP, "Собери 2 <bОтравленных фрукта> и вернись к Вильяму в точку (2277, 2831)")
	MisNeed(MIS_NEED_ITEM, 1595, 2, 10, 2)
	
	MisResultTalk("<t>Неплохо, ты все сделал!<n><t>Поздравляю! Тебя ждет опасная и загадочная жизнь, но одновременно очень интересная и захватывающая...")
	MisHelpTalk("<t>Сделай то,что я просил,или ты никогда не станешь Исследователем.")
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

-----------------------------------Г°ПХХЯЧЄЦ°ИООс
	DefineMission( 196, "Продвижение исследователя ", 161 )
	
	MisBeginTalk( "<t>Вот возьми <rКомпас выживания> и передай его Малышу Даниэлю, который находится по координатам (2193, 2730). Это будет твоим доказательством для того, чтобы наконец стать Исследователем.")
	MisBeginCondition(HasRecord, 160)
	MisBeginCondition(NoRecord, 161)
	MisBeginCondition(NoMission, 161)
	MisBeginAction(AddMission, 161)
	MisBeginAction(GiveItem, 3962, 1, 4)
	MisCancelAction(ClearMission, 161 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнеси Компас выживания Малышу Даниэлю в Аргенте в точку (2193, 2730)")

	MisHelpTalk("<t>Поспеши. Или ты не хочешь стать Исследователем?")
	MisResultCondition(AlwaysFailure )

-----------------------------------Г°ПХХЯЧЄЦ°ИООс
	DefineMission( 197, "Продвижение исследователя ", 161, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Поздравляю! Теперь ты Исследователь! Тебе предстоят очень интересные и захватывающие путешествия по миру!<n><t>(Вперед, иди к Малышу Даниэлю, чтобы стать Исследователем<n><t>А также купи оружие у кузнеца Голди, доспехи,ботинки и перчатки у портной бабушки Нилы и навыки у бакалейщика Джимберли. Только не забудь!)")
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


-----------------------------------іхј¶ГіТЧЦ¤ИООс
	DefineMission( 198, "Низкое коммерческое разрешение ", 162 )

	MisBeginTalk( "<t> Если хочешь получить низкое коммерческое разрешение, то тебе нужно принести мне 40 бревен.<n><t>(Получить дерево можно от игроков, либо набить его самому, но для этого нужно иметь навык Рубка Леса,который продаётся у Бакалейщика.Для него ты должен пройти несколько Исторических заданий. Одень топор и иди руби дерево. Как я уже говорил,книга навыков продаётся у любого бакалейщика<n><t>Также мирные навыки эти даются за исторический квест,запомни это. Взять его ты можешь у наставнице в Аргенте,но только с 10 уровня.)")
	MisBeginCondition(NoMission, 162)
	MisBeginCondition(NoItem, 4605, 1)
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginAction(AddMission, 162)
	MisBeginAction(AddTrigger, 1621, TE_GETITEM, 4543, 40 )
	MisCancelAction(ClearMission, 162)

	MisNeed(MIS_NEED_DESP, "Помоги торговцу Сидорфу, который находиться в точке (799, 3659) нарубить 40 дерева ")
	MisNeed(MIS_NEED_ITEM, 4543, 40, 10, 40)
	
	MisResultTalk("<t>Хорошо! Ты выполнил мою просьбу. Я крайне благодарен тебе.")
	MisHelpTalk("<t>Почему ты ещё даже не начал? Или ты не хочешь получить коммерческое разрешение?")
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

-----------------------------------ЦРј¶ГіТЧЦ¤ИООс
	DefineMission( 199, "Среднее коммерческое разрешение ", 163 )

	MisBeginTalk( "<t>Если хочешь получить среднее Коммерческое разрешение то тебе нужно принести мне 40 шт. Кристаллической руды.<n><t>(Руду ты можешь приобрести у игроков либо добыть самому. Одень кирку,для того чтобы добывать руду. Навыки добычи руды ты можешь купить у любого бакалейщика<n><t>Чтобы у тебя были навыки добычи руды,или иначе любые мирные навыки,ты должен проходить Исторические задания. Возьми этот квест у наставницы ,но только с 10ур.)<n><t>Также купи себе кирку у кузнеца.")
	MisBeginCondition(NoMission, 163)
	MisBeginCondition(HasItem, 4605, 1)
	MisBeginCondition(TradeItemDataCheck, ">", 99 )
	MisBeginCondition(LvCheck, ">", 39)
	MisBeginCondition(TradeItemLevelCheck, "=", 1)
	MisBeginAction(AddMission, 163)
	MisBeginAction(AddTrigger, 1631, TE_GETITEM, 4546, 40 )
	MisCancelAction(ClearMission, 163)

	MisNeed(MIS_NEED_DESP, "Помоги торговцу Сидорфу в Шайтане в точке (799, 3659) добыть 40 Кристалличкой руды ")
	MisNeed(MIS_NEED_ITEM, 4546, 40, 10, 40)
	
	MisResultTalk("<t>Благодарю,теперь это Комерческое соглашение твоё!")
	MisHelpTalk("<t>Почему ты даже не начинал? Не хочешь получить комерческое соглашение?")
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


-----------------------------------ёЯј¶ГіТЧЦ¤ИООс
	DefineMission( 149, "Высокое коммерческое разрешение ", 164 )

	MisBeginTalk( "<t>У меня есть комерческое соглашение высшего уровня. Если хочешь, чтобы я его тебе дал, ты должен мне помочь. Принеси мне 40 Енергоруды, и я отдам тебе его с гордостью.")
	MisBeginCondition(NoMission, 164)
	MisBeginCondition(HasItem, 4605, 1)
	MisBeginCondition(TradeItemDataCheck, ">", 399 )
	MisBeginCondition(LvCheck, ">", 59)
	MisBeginCondition(TradeItemLevelCheck, "=", 2)
	MisBeginAction(AddMission, 164)
	MisBeginAction(AddTrigger, 1641, TE_GETITEM, 4544, 40 )
	MisCancelAction(ClearMission, 164)

	MisNeed(MIS_NEED_DESP, "Помоги добыть 40 Енергоруды торговцу Сидорфу в Шайтане в точке (799, 3659)")
	MisNeed(MIS_NEED_ITEM, 4544, 40, 10, 40)
	
	MisResultTalk("<t>Отлично! Теперь Комерческое соглашение высшего уровня твоё!")
	MisHelpTalk("<t>Почему ты даже не начал? Не хочешь получить комерческое соглашение высшего уровня?")
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
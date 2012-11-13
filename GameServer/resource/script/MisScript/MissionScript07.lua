--------------------------------------------------------------------------
--									--
--									--
--		NPCScript07.lua Created by mdw Team	      --
--									--
--							--
--------------------------------------------------------------------------
print( "‡ Јаг§Є  MissionScript07.lua" )


----------------------------

	DefineMission( 900, "\209\238\240\229\226\237\238\226\224\237\232\229 \244\229\233", 900)--Pet Event--получение фейки

	MisBeginTalk( "<t>Хотите завести питомца? Пройдите мой тест.<n><t>Выйдите из города и убейте 10 Лис даосистов.<n><t>Это Ваш шанс завести чудесного питомца." )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(HasItem,6954,1)-- 
	MisBeginCondition(NoMission, 900)
	MisBeginAction(AddMission, 900)
	MisBeginAction(AddTrigger, 9001, TE_KILL, 748, 10 )
	MisCancelAction(ClearMission, 900)

	MisNeed(MIS_NEED_DESP, " Убейте 10 Лис Динисистов " )	
	MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)
	 
	MisHelpTalk( "<t>Идите и выполните моё поручение!" )	
	MisResultTalk( "<t>Вы молодец!<n><t>Заботьтесь о своём питомце!" )
	MisResultCondition(HasMission, 900)
	MisResultCondition(HasItem,0844,1)-- изгоняющий колокольчик
	MisResultCondition(HasFlag, 900, 19 )
	MisResultCondition(HasItem,6954,1)-- дописать итем
	MisResultAction(TakeItem, 0844,1)
	MisResultAction(ClearMission,900)
	MisResultAction(GiveItem, 679, 2, 4)--2 яйца мордо
	MisResultBagNeed(1)
		
	InitTrigger() 
	TriggerCondition( 1, IsMonster, 748 )	
	TriggerAction( 1, AddNextFlag, 900, 10, 10 )
	RegCurTrigger(9001)

----------------------------

	DefineMission(901,"\209\238\240\229\226\237\238\226\224\237\232\229 \244\229\233",901)--Pet Event--

	MisBeginTalk( "<t>Хотите питомца? Тогда Вы должны будете пройти мой тест. Я дам вам шанс получить питомца." )

	MisBeginCondition(LvCheck, "<", 45 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(NoMission,901)
	MisBeginAction(AddMission, 901) 
	MisBeginAction(AddTrigger, 9011, TE_KILL, 103, 20)--Лесной дух
	MisBeginAction(AddTrigger, 9012, TE_KILL, 70, 20)--Маленький кальмарчик
	MisBeginAction(AddTrigger, 9013, TE_KILL, 253, 10)--Грязилище
	MisBeginAction(AddTrigger, 9014, TE_KILL, 85, 10)--Дурман
	MisBeginAction(AddTrigger, 9015, TE_KILL, 76, 10)--Боксеру-новичок
	MisCancelAction(ClearMission, 901)

	MisNeed(MIS_NEED_DESP, " Помогите в <b(2272, 2700)> убить <r20 Лесных духов>, <r20 Маленьких кольмарчиков>, <r10 Дурманов>, <r10 Грязилищ>, <r10 Боксёров-Новичков>.")
	MisNeed(MIS_NEED_KILL, 103, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 70, 20, 30, 20)
	MisNeed(MIS_NEED_KILL, 253, 10, 50, 10)
	MisNeed(MIS_NEED_KILL, 85, 10, 60, 10)
	MisNeed(MIS_NEED_KILL, 76, 10, 70, 10)

	MisHelpTalk( "<t> Поторопитесь, феечке нужен хозяин " )
	MisResultTalk( "<t>Вы молодец!<n><t>Вашему питомцу повезло, у него заботливый хозяин " )
	MisResultCondition(HasMission, 901)
	MisResultCondition(HasFlag, 901, 29)
	MisResultCondition(HasFlag, 901, 49)
	MisResultCondition(HasFlag, 901, 59)
	MisResultCondition(HasFlag, 901, 69)
	MisResultCondition(HasFlag, 901, 79)
	MisResultCondition(HasItem, 0844, 1)
	MisResultAction(TakeItem, 0844, 1)
	MisResultAction(ClearMission, 901)
	MisResultAction(GiveItem, 1852, 1, 4)--коробочка феек
	MisResultBagNeed(1) 

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 901, 10, 20 )
	RegCurTrigger(9011)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 70 )	
	TriggerAction( 1, AddNextFlag, 901, 30, 20 )
	RegCurTrigger(9012)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 253 )	
	TriggerAction( 1, AddNextFlag, 901, 50, 10 )
	RegCurTrigger(9013)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 85 )	
	TriggerAction( 1, AddNextFlag, 901, 60, 10 )
	RegCurTrigger(9014)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 76 )	
	TriggerAction( 1, AddNextFlag, 901, 70, 10 )
	RegCurTrigger(9015)


----------------------------

	DefineMission( 902, "\215\242\238\225\251 \239\238\225\229\228\232\242\252 \231\235\238 \237\224 \196\240\224\234\238\237\252\229\236 \203\238\228\238\247\237\238\236 \244\229\241\242\232\226\224\235\229, \232\241\239\238\235\252\231\243\233 \234\232\242\224\233\241\234\243\254 \202\235\229\246\234\243, \241\229\240\243 \232 \205\229\225\229\241\237\251\233 \234\235\229\226\229\240", 902 )--Use Chinese Dumpling, Sulphur and Ether Clover on Dragon Boat festival to ward evil

	MisBeginTalk( "<t>Друг мой, у нас беда, на нас надвигаются монстры со стороны моря, мне нужно собрать необходимые предметы, что бы противостоять им? Вы мне поможите?" )

	MisBeginCondition(LvCheck, ">",15  )
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoRecord,902)
	MisBeginAction(AddMission,902)
	MisBeginAction(AddTrigger, 9021, TE_GETITEM, 3116, 10 )		--Эльфийский фрукт
	MisBeginAction(AddTrigger, 9022, TE_GETITEM, 3131, 10 )		--Чудо-фрукт
	MisBeginAction(AddTrigger, 9023, TE_GETITEM, 4419, 5 )		--Перебродивший мед
	MisCancelAction(ClearMission, 902)

	MisNeed(MIS_NEED_DESP, " Помогите <pЮаню Ку> собрать <r10 Эльфийских Фруктов>, <r10 Чудо Фруктов>, <r5 Перебродившего Мёда>." )
	MisNeed(MIS_NEED_ITEM, 3116, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3131, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4419, 5, 30, 5)

	MisHelpTalk( "<t>Поспешите." )
	MisResultTalk( "<t>Вы настоящий Герой, спасибо Вам - добрый человек." )
	MisResultCondition(HasMission, 902)
	MisResultCondition(NoRecord,902)
	MisResultCondition(HasItem, 3116, 10)
	MisResultCondition(HasItem, 3131, 10 )
	MisResultCondition(HasItem, 4419, 5 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(TakeItem, 3131, 10 )
	MisResultAction(TakeItem, 4419, 5 )
	MisResultAction(ClearMission, 902)
	MisResultAction(SetRecord, 902 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 902, 10, 10 )
	RegCurTrigger( 9021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3131)	
	TriggerAction( 1, AddNextFlag, 902, 20, 10 )
	RegCurTrigger( 9022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4419)	
	TriggerAction( 1, AddNextFlag, 902, 30, 5 )
	RegCurTrigger( 9023 )

	-------------------------------------------------- 

	DefineMission( 903, "\215\242\238\225\251 \239\238\225\229\228\232\242\252 \231\235\238 \237\224 \196\240\224\234\238\237\252\229\236 \203\238\228\238\247\237\238\236 \244\229\241\242\232\226\224\235\229, \232\241\239\238\235\252\231\243\233 \234\232\242\224\233\241\234\243\254 \202\235\229\246\234\243, \241\229\240\243 \232 \205\229\225\229\241\237\251\233 \234\235\229\226\229\240", 903 )
	
	MisBeginTalk( "<t>Этого было не достаточно, Вы не можите ещё для меня кое что сделать?" )
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoMission,903)
	MisBeginCondition(HasRecord,902)
	MisBeginCondition(NoRecord,903)
	MisBeginAction(AddMission,903)
	MisBeginAction(AddTrigger, 9031, TE_GETITEM, 1779, 10 )		--Флакон 
	MisBeginAction(AddTrigger, 9032, TE_GETITEM, 1584, 20 )		--Отравленный шип 
	MisBeginAction(AddTrigger, 9033, TE_GETITEM, 1650, 10 )		--Живая вода
	MisCancelAction(ClearMission, 903)

	MisNeed(MIS_NEED_DESP, " Принесите <r10 Флаконов>, <r20 Отравленных шипов> и <r10 Живой воды>." )
	MisNeed(MIS_NEED_ITEM, 1779, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1584, 20, 20, 20)
	MisNeed(MIS_NEED_ITEM, 1650, 10, 40, 10)

	MisHelpTalk( "<t>Поторопитесь " )
	MisResultTalk( "<t>Спасибо Вам герой." )
	MisResultCondition(HasMission, 903)
	MisResultCondition(NoRecord,903)
	MisResultCondition(HasItem, 1779, 10)
	MisResultCondition(HasItem, 1584, 20 )
	MisResultCondition(HasItem, 1650, 10 )
	MisResultAction(TakeItem, 1779, 10 )
	MisResultAction(TakeItem, 1584, 20 )
	MisResultAction(TakeItem, 1650, 10 )
	MisResultAction(ClearMission, 903)
	MisResultAction(SetRecord, 903 )


	InitTrigger()
	TriggerCondition( 1, IsItem, 1779)	
	TriggerAction( 1, AddNextFlag, 903, 10, 10 )
	RegCurTrigger( 9031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1584)	
	TriggerAction( 1, AddNextFlag, 903, 20, 20 )
	RegCurTrigger( 9032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 903, 40, 10 )
	RegCurTrigger( 9033 )


--------------------------------------------------

	DefineMission( 904, "\215\242\238\225\251 \239\238\225\229\228\232\242\252 \231\235\238 \237\224 \196\240\224\234\238\237\252\229\236 \203\238\228\238\247\237\238\236 \244\229\241\242\232\226\224\235\229, \232\241\239\238\235\252\231\243\233 \234\232\242\224\233\241\234\243\254 \202\235\229\246\234\243, \241\229\240\243 \232 \205\229\225\229\241\237\251\233 \234\235\229\226\229\240", 904 )

	MisBeginTalk( "<t>Простите старого, я опять забыл что мне не обходимо ещё пару вещей, Вы не против мне помочь?" )

	MisBeginCondition(NoMission,904)
	MisBeginCondition(NoRecord,904)
	MisBeginCondition(HasRecord,903)
	MisBeginAction(AddMission,904)
	MisBeginAction(AddTrigger, 9041, TE_GETITEM, 3129, 5 )		--Целебная трава
	MisBeginAction(AddTrigger, 9042, TE_GETITEM, 1681, 5 )		--Слеза
	MisCancelAction(ClearMission, 904)

	MisNeed(MIS_NEED_DESP, " Принесите <r5 Целебной Травы> и <r5 Слёз>." )
	MisNeed(MIS_NEED_ITEM, 3129, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1681, 5, 20, 5)

	MisHelpTalk( "<t>Ну поторопитесь, это не может ждать!" )
	MisResultTalk( "<t>Огромное спасибо, вот я старый, совсем памяти нет." )
	MisResultCondition(HasMission, 904)
	MisResultCondition(NoRecord,904)
	MisResultCondition(HasItem, 3129, 5)
	MisResultCondition(HasItem, 1681, 5 )
	MisResultAction(TakeItem, 3129, 5 )
	MisResultAction(TakeItem, 1681, 5 )
	MisResultAction(GiveItem, 263, 3, 4)--Клецка
	MisResultAction(GiveItem, 264, 3, 4)--Веселящее вино
	MisResultAction(GiveItem, 265, 3 ,4)--Небесный клевер
	MisResultAction(ClearMission, 904)
	MisResultAction(SetRecord,  904 )
	MisResultBagNeed(3)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 904, 10, 5 )
	RegCurTrigger( 9041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1681)	
	TriggerAction( 1, AddNextFlag, 904, 20, 5 )
	RegCurTrigger( 9042 )
	 
  --------------------------------------------------

	DefineMission( 905, "\222\225\232\235\229\233 \239\232\240\224\242\241\234\238\227\238 \234\238\240\238\235\255", 905 )--Pirate King Anniversary
	MisBeginTalk( "<t>\205\232 \242\238\235\252\234\238 \196\240\243\237\234\237\224\233 \235\254\225\232\242 \239\232\240\238\230\234\232 \193\224\225\243\235\232 \193\229\235\228\232, \207\232\240\224\242\241\234\232\233 \202\238\240\238\235\252 \208\238\235\224\237\228 \242\238\230\229 \235\254\225\232\242 \232\245! \213\238\228\232\242 \236\238\235\226\224, \247\242\238 \229\241\235\232 \241\234\243\248\224\242\252 \229\191 \239\232\240\238\230\238\234, \242\238 \239\238\228\237\232\236\229\242\241\255 3 \238\247\234\224 \237\224\226\251\234\224! \200 \237\229 \243\228\232\226\232\242\229\235\252\237\238, \239\232\240\224\242\251 \237\229 \232\236\229\254\242 \247\243\226\241\242\226\224 \236\229\240\251.<n><t>\192 \194\251, \194\251 \237\229 \230\229\235\224\229\242\229 \239\238\239\240\238\225\238\226\224\242\252 \239\232\240\238\230\238\234? \205\232 \243 \234\224\230\228\238\227\238 \226\251\239\224\228\224\229\242 \242\224\234\238\233 \241\247\224\241\242\235\232\226\251\233 \241\235\243\247\224\233. \194\224\236 \237\243\230\237\238 \241  \"\208\224\241\239\232\241\234\238\233 \237\224 \239\232\240\238\230\238\234\"  \239\238\233\242\232 \234 \"\193\224\225\243\235\229 \193\229\235\228\232\" \232 \238\237\224 \194\224\241 \238\225\255\231\224\242\229\235\252\237\238 \243\227\238\241\242\232\242." )
--	MisBeginTalk( "<t>Ни только Дрункнай любит пирожки Бабули Белди, Пиратский Король Роланд тоже любит их! Ходит молва, что если скушать её пирожок, то поднимется 3 очка навыка! И не удивительно, пираты не имеют чувства меры.<n><t>А Вы, Вы не желаете попробовать пирожок? Ни у каждого выпадает такой счастливый случай. Вам нужно с  \"Распиской на пирожок\"  пойти к \"Бабуле Белди\" и она Вас обязательно угостит." )
	MisBeginCondition(NoMission,905)
	MisBeginCondition(HasItem, 1097, 1 )
	MisBeginCondition(NoRecord,905)
	MisBeginAction(AddMission,905)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от миссии " )

	MisNeed(MIS_NEED_DESP, " Поговорите с Бабулей Белди " )
	MisHelpTalk( "<t> Не стоит Вам терять зря время!" )
	
	MisResultCondition(AlwaysFailure )


	 -------------------------------------------------- 

	DefineMission ( 906, "\222\225\232\235\229\233 \239\232\240\224\242\241\234\238\227\238 \234\238\240\238\235\255", 905, COMPLETE_SHOW)
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>\207\240\232\226\229\242! \202\242\238 \194\224\236 \236\229\237\255 \239\238\240\229\234\238\236\229\237\228\238\226\224\235? \213\236... \206\237 \235\254\225\232\242 \239\238\235\224\234\238\236\232\242\252\241\255 \236\238\229\233 \226\251\239\229\247\234\238\233. \213\224 \245\224. \196\224\226\224\233\242\229 \"\208\224\241\239\232\241\234\243 \237\224 \239\232\240\238\227\". \194\238\242 - \226\224\248 \239\232\240\238\227." )
--	MisResultTalk( "<t>Привет! Кто Вам меня порекомендовал? Хм... Он любит полакомиться моей выпечкой. Ха ха. Давайте \"Расписку на пирог\". Вот - ваш пирог." )
	MisResultCondition(HasMission,905)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(ClearMission, 905 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 3338, 1, 4 )
	MisResultAction(SetRecord, 905 )
	MisCancelAction(SystemNotice, " Вы не можете отказаться от миссии " )
	MisBeginBagNeed(1)	

	-------------------------------

	DefineMission( 907, "\203\254\225\238\226\252 \234 \235\243\237\237\251\236 \239\232\240\238\227\224\236", 906 )
	
	MisBeginTalk( "<t>Я очень скучаю без неё! Я прошу Вас, пожалуйста, помогите мне ёё найти. Я не могу без нее. Я знаю, что она была в  (1333 558). Может Вы прогуляетесь до неё?" )
	MisBeginCondition(NoRecord, 913 )
	MisBeginCondition(NoMission, 906 )
	MisBeginAction(AddMission, 906 )
	MisCancelAction(ClearMission, 906)
		
	MisNeed(MIS_NEED_DESP, " Поищите девушку в области (1333, 558)." )
	MisHelpTalk( "<t>Поищите девушку в области (1333, 558)." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 908, "\207\232\241\252\236\238 \214\226\229\242\238\247\234\224", 906, COMPLETE_SHOW )--Search for Flower
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы - друг Любителя Рыбы? Я - друг Цветка, той, которой он искал!" )
	MisResultCondition(HasMission, 906)
	MisBeginCondition(NoRecord, 913)
	MisResultAction(ClearMission, 906)
	MisResultAction(SetRecord, 913)

	----------------------------------

	DefineMission( 909, "\206\242\226\238\240\238\242\237\238\229 \231\229\235\252\229", 907 )

	MisBeginTalk( "<t>Почему я должна Вам верить? Где гарантия того что Вас послал именно мой возлюбленный?" )
	MisBeginCondition(HasRecord,913)
	MisBeginCondition(NoMission,907)
	MisBeginCondition(NoRecord,907)
	MisBeginAction(AddMission,907)
	MisBeginAction(AddTrigger, 9071, TE_GETITEM, 3915, 10)--Лунный пирог
	MisCancelAction(ClearMission, 907)
	

	MisNeed(MIS_NEED_DESP, " Докажите Цветочку что Вас послал её любимый, принесите 10 Лунных пирогов." )
	MisNeed(MIS_NEED_ITEM, 3915, 10, 10, 10)

	MisHelpTalk( "<t> Принесите мне 10 Лунных пирогов!" )
	MisResultTalk( "<t>Спасибо Вам большое, я Вам верю!" ) 
	
	MisResultCondition(HasMission, 907)
	MisResultCondition(NoRecord,907)
	MisResultCondition(HasItem, 3915, 10)
	MisResultAction(TakeItem, 3915, 10 )
	MisResultAction(ClearMission, 907)
	MisResultAction(SetRecord, 907 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3915)	
	TriggerAction( 1, AddNextFlag, 907, 10, 10 )
	RegCurTrigger( 9071 )
	
-------------------------------------------------------

	DefineMission( 910, "\207\240\232\227\238\242\238\226\232\242\252 \206\242\226\238\240\238\242\237\238\229 \231\229\235\252\229", 908 )
	
	MisBeginTalk( "<t>Не так уж и плохо, Вы прошли моё испытание, и я теперь могу Вам рассказать правду, я друг его любимой, а она сама скончалась два дня назад от лейкемии. Но перед смертью она успела написать письмо, для своего любимого, если Вас это не затруднит, передайте ему это письмо." )

	MisBeginCondition(HasRecord, 907)
	MisBeginCondition(NoRecord, 908)
	MisBeginCondition(NoMission, 908)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 908)
	MisBeginAction(GiveItem, 1005,1,4)--письмо

	MisHelpTalk( "<t>Отнесите письмо в Шайтан (917, 3572)." )
	MisNeed(MIS_NEED_DESP, " Отнесите письмо в Шайтан (917, 3572)." )

	MisCancelAction(ClearMission, 908)

	MisResultCondition(AlwaysFailure)




-----------------------------------

	DefineMission( 911, "\202\243\239\232\242\252 \205\229\244\240\232\242\238\226\251\233 \239\243\231\251\240\229\234 \225\243\242\251\235\234\224", 908, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk( "<t>Что? Это -  это....Письмо от нее?<n><t>Вы только послушайте, что в нём: Мой любимый, когда Вы прочитаете это письмо, я буду уже на небе. Я ни хочу что бы Вы расстраивались. Я специально тогда от Вас уехала, что бы Вы не стали свидетелем того, как меня убивает болезнь. У меня к Вам всего одна просьба: Ни сердитесь на меня.<n><t>Любимый, я Вам дам благословление. Время проходит мимо, но любовь остается вечной. Прощайте." )
	MisResultCondition(HasMission, 908)
	MisResultCondition(NoRecord,908)
	MisResultCondition(HasItem, 1005, 1)
	MisResultAction(TakeItem, 1005, 1)
	MisResultAction(GiveItem, 1006, 1, 4)--Слеза без любви
	MisResultAction(ClearMission, 908)
	MisResultAction(SetRecord, 908)

	
	-------------------------------------------------------------

	DefineMission ( 912, "\204\232\234\241\242\243\240\224 \203\254\225\226\232", 909)--Reverse Love Potion--Обратная Микстура Любви
	
	MisBeginTalk( "<t>Я слышал что существует способ забыть любимого человека. В Аргенте (2250, 2770) есть человек, который знает как забыть человека с того света.." )
	
	MisBeginCondition(HasRecord,908)
	MisBeginCondition(NoRecord,909)
	MisBeginCondition(NoMission,909)
	MisBeginAction(AddMission,909)
	MisCancelAction(ClearMission, 909)
	
	MisHelpTalk( "<t>Отнесите микстуру любви в (2250, 2770)." )
	MisNeed(MIS_NEED_DESP, " Помогите отнести Микстуру Любви в Аргент(2250, 2770)." )


	MisResultCondition(AlwaysFailure)


------------------------------------------------------------------------



	DefineMission( 913, "\204\232\234\241\242\243\240\224 \203\254\225\226\232", 909, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk( "<t>Вы - друг Любителя Рыбки?<n><t>Да! Я слышал их историю...Очень грустная история...Вы хороший человек, если взялись помочь им." )
	MisResultCondition(HasMission, 909)
	MisResultCondition(NoRecord, 909)
	MisResultAction(ClearMission, 909)
	MisResultAction(SetRecord, 909)



	
	
	-------------------------------------------------------------

	DefineMission ( 914, "\207\240\232\227\238\242\238\226\235\229\237\232\229 \204\232\234\241\242\243\240\251 \203\254\225\226\232", 910 )
	
	MisBeginTalk( "<t>Привет! Ты решил помочь Любителю Рыбки забыть любовь, я помогу тебе, принеси мне <rЧистую Воду>, <rСердце Ниады>, <r2 Целебной Травы> и <r3 Живой Воды>." )
	
	MisBeginCondition(NoMission,910)
	MisBeginCondition(HasRecord,909)
	MisBeginCondition(NoRecord,910)
	MisBeginAction(AddMission,910)
	MisBeginAction(AddTrigger, 9101, TE_GETITEM, 1649, 1)--Чистая вода
	MisBeginAction(AddTrigger, 9102, TE_GETITEM, 4418, 1)--Сердце наяды
	MisBeginAction(AddTrigger, 9103, TE_GETITEM, 3129, 2)--Целебная трава
	MisBeginAction(AddTrigger, 9104, TE_GETITEM, 1650, 3)	--Живая вода
	MisCancelAction(ClearMission, 910)

	MisNeed(MIS_NEED_DESP, " Найдите: <rЧистую Воду>, <rСердце Ниады>, <r2 Целебной Тровы> и <r3 Живой Воды>." )

	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3129, 2, 30, 2)
	MisNeed(MIS_NEED_ITEM, 1650, 3, 40, 3)

	MisHelpTalk( "<t>Принесите <rЧистую Воду>, <rСердце Ниады>, <r2 Целебной Травы> и <r3 Живой Воды>." )

	MisResultTalk( "<t>Вы хороший человек, и мы вместе поможем бедному Любителю Рыбки." )
	MisResultCondition(HasMission, 910)
	MisResultCondition(NoRecord,910)
	MisResultCondition(HasItem, 1649, 1)
	MisResultCondition(HasItem, 4418, 1)
	MisResultCondition(HasItem, 3129, 2)
	MisResultCondition(HasItem, 1650, 3)
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 4418, 1)
	MisResultAction(TakeItem, 3129, 2 )
	MisResultAction(TakeItem,1650, 3 )
	MisResultAction(ClearMission, 910)
	MisResultAction(SetRecord, 910 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 910, 10, 1 )
	RegCurTrigger( 9101 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 910, 20, 1 )
	RegCurTrigger( 9102 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 910, 30, 2 )
	RegCurTrigger( 9103 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 910, 40, 3 )
	RegCurTrigger( 9104 )
	
	
	-----------------------------------------------------------------Золотая Нефритовая Бутылка

	DefineMission ( 915, "\202\243\239\232\242\229 \199\238\235\238\242\243\254 \205\229\244\240\232\242\238\226\243\254 \193\243\242\251\235\234\243", 911 )
	
	MisBeginTalk( "<t>Микстура Любви - Это напиток. Но у этого напитка есть одна особенность - он быстро выветривается, Вам необходим специальный сосуд, что бы сохранить напитку его свойства." )

	MisBeginCondition(NoMission,911)
	MisBeginCondition(HasRecord,910)
	MisBeginCondition(NoRecord,911)
	MisBeginAction(AddMission,911)
	MisBeginAction(AddTrigger, 9111, TE_GETITEM, 1007, 1)
	MisCancelAction(ClearMission, 911)
	MisNeed(MIS_NEED_DESP, " Необходима Золотая Нефритовая Бутылка " )
	MisNeed(MIS_NEED_ITEM, 1007, 1, 80, 1)

	MisHelpTalk( "<t>О получении Нефритовой Бутылки смотрите на официальном сайте сервера." )
	MisResultTalk( "<t>Я дам Вам Микстуру Любви если Вы дадите мне Золотую Нефритовую Бутылку." )


	MisResultCondition(HasMission, 911)
	MisResultCondition(NoRecord,911)
	MisResultCondition(HasItem, 1007, 1)
	MisResultAction(TakeItem, 1007, 1 )
	MisResultAction(ClearMission, 911)
	MisResultAction(SetRecord,  911 )

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1007)	
	TriggerAction( 1, AddNextFlag, 911, 80, 1 )
	RegCurTrigger( 9111 )


-------------------------------------------------------------------

	DefineMission( 916, "\203\254\225\238\226\252 \226 \207\240\238\248\235\238\236", 912 )--Любовь в Прошлом
	
	MisBeginTalk( "<t>Вот Ваша Микстура, отнесите её Любителю рыбки в  (917, 3572)." )

	MisBeginCondition(HasRecord, 911)
	MisBeginCondition(NoRecord, 912)
	MisBeginCondition(NoMission, 912)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 912)
	MisBeginAction(GiveItem, 1008,1,4)

	MisHelpTalk( "<t>Поторопитесь, помогите убитому горем молодому человеку!" )
	MisNeed(MIS_NEED_DESP, " Отнесите Микстуру Любви в  (917, 3572)." )

	MisCancelAction(ClearMission, 912)
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------------------

	DefineMission( 917, "\203\254\225\238\226\252 \226 \207\240\238\248\235\238\236", 912, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	
	MisResultTalk( "<t>Эта Микстура избавит меня от страданий! Возьмите <Сердце Невинности>, это Вам за Вашу помощь.<n><t>Эх...! Я хочу избавить себя от тяжких воспоминаний, я выпью эту Микстуру Любви!" )
	MisResultCondition(HasMission, 912)
	MisResultCondition(NoRecord,912)
	MisResultCondition(HasItem, 1008, 1)
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(GiveItem, 1009, 1 ,4)--
	MisResultAction(ClearMission, 912)
	MisResultAction(SetRecord, 912 )
	MisResultAction(ClearRecord, 909)
	MisResultAction(ClearRecord, 910)
	MisResultAction(ClearRecord, 911)
	MisResultAction(ClearRecord, 912)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 912, 10, 1 )
	RegCurTrigger( 9121 ) 


	--------------------------------------------------------------------

	DefineMission( 918, "\194\238\231\240\238\230\228\229\237\232\229 \203\254\225\226\232", 914 )--Возрождение Любви
	MisBeginTalk( "<t>Малыш, если Ваше сердце разбила несчастная любовь, приходите ко мне, я Вас избавлю от страданий!" )
	MisBeginCondition(NoMission, 914)
	MisBeginCondition(HasItem,1010,1)------------Высушенное сердце
	MisBeginCondition(NoRecord,914)
	MisBeginAction(AddMission,914)
	MisBeginAction(AddTrigger, 9141, TE_GETITEM, 1008, 1)
	MisCancelAction(ClearMission, 914)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть Высушенное сердце, принесите мне ещё Отворотное зелье " )
	MisNeed(MIS_NEED_ITEM, 1008, 1, 10, 1)

	MisHelpTalk( "<t>Поиск Микстуры, отнесите <bТаинственной Бабуле> <rСердце Возрожденного>, <rВысушенное сердце> и <rОтворотное зелье>." )
	MisResultTalk( "<t>Очень хорошо, теперь выпейте это, и Ваше сердце изцелиться от ран любви." )

	MisResultCondition(HasMission, 914)
	MisResultCondition(NoRecord,914)
	MisResultCondition(HasItem, 1008, 1)
	MisResultCondition(HasItem, 1010, 1)------------
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(TakeItem, 1010, 1 )
	MisResultAction(GiveItem, 1013,1,4)------------Сердце Возрожденного
	MisResultAction(ClearMission, 914)
	MisResultAction(SetRecord, 914)
	MisResultAction(ClearRecord, 914)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 914, 10, 1 )
	RegCurTrigger( 9141 )
	
	
	-----------------------------------------------------------------------

	DefineMission( 919, "\202\240\238\226\224\226\251\229 \216\239\232\235\252\234\232", 915 )--Кровавые Шпильки
	
	MisBeginTalk( "<t>Моя Леди Босс... Эта Злая женщина... Вы только посмотрите как она мне разбила голову... Эта её обувь... Красные Шпильки...О как же больно... Если Вы мне не верите, что меня травмировали, спросите о медицинском заключении у <rМедсестры Джины>." )
	MisBeginCondition(NoRecord, 915 )
	MisBeginCondition(NoMission, 915 )
	MisBeginAction(AddMission, 915 )
	MisBeginAction(GiveItem, 1026,1,4)------История Болезни Серебряного
	MisCancelAction(ClearMission, 915)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, " Поговорите с <rМедсестрой Джиной> в (2244, 2770) в <bАргенте>." )
	MisHelpTalk( " <t>Отправляйтесь в (2244, 2770)" )
	MisResultCondition(AlwaysFailure )

------------------------------------------------------------------------------

	DefineMission( 920, "\202\240\238\226\224\226\251\229 \216\239\232\235\252\234\232", 915, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk( "<t>Вы ко мне? Опять больной!" )
	MisResultCondition(HasMission, 915)
	MisResultCondition(NoRecord,915)
	MisResultCondition(HasItem, 1026, 1)
	MisResultAction(TakeItem, 1026, 1 )
	MisResultAction(ClearMission, 915)
	MisResultAction(SetRecord, 915 )
	 
-------------------------------------------------------------------------------

	DefineMission( 921, "\204\229\228\232\246\232\237\241\234\238\229 \231\224\234\235\254\247\229\237\232\229 \226\240\224\247\224", 916 )

	MisBeginTalk( "<t>Да! Действительно ко мне обращался за помощью пострадавший молодой человек, он заявил о нападении. У пострадавшего серьёзное повреждение головы острым каблуком, больному была оказана медицинская помощь и он... Если я не ошибаюсь, отправился писать заявление о нападении в Шайтан к <pОхраннику - Майклу> (959, 3549)." )
	MisBeginCondition(NoMission, 916)
	MisBeginCondition(HasRecord,915)
	MisBeginCondition(NoRecord,916)
	MisBeginAction(AddMission, 916 )
	MisCancelAction(ClearMission, 916)
	MisResultCondition(AlwaysFailure )
	-------------------------------------------------------------------
	DefineMission( 922, "\208\224\241\241\235\229\228\238\226\224\237\232\229 \238 \237\224\239\238\228\229\237\232\232", 916, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk( "<t>Не так и просто охранять улицы города от бандитов и хулиганов!" )
	MisResultCondition(HasMission, 916)
	MisResultCondition(NoRecord,916)
	MisResultAction(ClearMission, 916)
	MisResultAction(SetRecord, 916 )

	 
	---------------------------------------------------------------

	DefineMission( 923, "\202\242\238 \239\240\224\226, \234\242\238 \226\232\237\238\226\224\242", 917 )
	
	MisBeginTalk( "<t>Хм...Да! Пару дней назад ко мне приходил один парнишка с перебинтованной головой, у него была травма головы, и по медицинскому заключению врача города Аргента и по словам самого потерпевшего - эту травму ему нанесла его Босс Шпильками, я ни знаю кому и верить, так, как при допросе Леди Босс, она говорила о том, что она просто оборонялась от нападков её подчинённого." )
	MisBeginCondition(NoRecord, 917 )
	MisBeginCondition(NoMission, 917)
	MisBeginCondition(HasRecord, 916 )
	MisBeginAction(AddMission, 917 )
	MisBeginAction(GiveItem, 1027,1,4)------Запачканная История Болезни
	MisBeginAction(AddTrigger, 9171, TE_GETITEM, 1030, 1)--Окров. туфли на высоком каблуке
	MisBeginBagNeed(1)

	MisCancelAction(ClearMission, 917)
	MisNeed(MIS_NEED_ITEM, 1030, 1, 10, 1)

	MisResultTalk( "<t>только человек, чьё сердце желает справедливости смог бы разабраться в этом не простом вопросе!" )
	MisHelpTalk( "<t>Вызовите Леди Босс и поговорите с ней о нападении на своего подчинённого." )
	MisResultCondition(HasMission,  917)
	MisResultCondition(NoRecord , 917)
	MisResultCondition(HasItem,1030,1 )
	MisResultAction(TakeItem, 1030, 1 )-------Окров. туфли на высоком каблуке
	MisResultAction(ClearMission,   917)
	MisResultAction(SetRecord,  917 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1030)	
	TriggerAction( 1, AddNextFlag, 917, 10, 1 )
	RegCurTrigger( 9171 )
---------------------------------------------------------------------------------------

	DefineMission( 924, "\202\242\238 \239\240\224\226, \234\242\238 \226\232\237\238\226\224\242", 918 )------------Шпильки - как оружие

	MisBeginTalk( "<t>Не вероятно! Такими вот маленькими Шпильками и нанести такую травму... Я заберу их у леди БОСС!" )
	MisBeginCondition(NoRecord, 918 )
	--MisBeginCondition(NoMission, 918 )
	MisBeginCondition(HasRecord, 917 )
	--MisBeginAction(AddMission, 918 )
	MisBeginAction(GiveItem, 1029,1,4)----------Красные шпильки
	MisBeginAction(AddExp,500,500)
	--MisBeginAction(ClearMission, 918 )
	MisBeginAction(SetRecord, 918 )
	MisCancelAction(ClearMission, 918)
	MisBeginBagNeed(1)---------------

	MisHelpTalk( "<t>Правосудие восторжествовало!" )

	MisResultCondition(AlwaysFailure )


	--------------------------------------------------------------------

	DefineMission( 6000, "Phoenix Rebirth", 1300 )--реберн стандарт
	MisBeginTalk( "<t>Как ты посмел Смертный явиться ко мне?! Ты хочешь навлечь на себя Гнев Богов?! Хотя постой, я чувствую твоё чистое сердце, тебе даже не страшно. Это знак того, что ты настоящий Герой и достоин великой участи стать моим верным Ангелом." )
	MisBeginCondition(NoMission, 1300)
	MisBeginCondition(NoRecord,1300)
	MisBeginCondition(HasCredit,9999)
	MisBeginAction(AddMission,1300)
	MisBeginAction(AddTrigger, 13001, TE_GETITEM, 2226, 1)
	MisBeginAction(AddTrigger, 13002, TE_GETITEM, 2227, 1)
	MisBeginAction(AddTrigger, 13003, TE_GETITEM, 2228, 1)
	MisBeginAction(AddTrigger, 13004, TE_GETITEM, 2229, 1)
	MisBeginAction(AddTrigger, 13005, TE_GETITEM, 2230, 1)
	MisBeginAction(AddTrigger, 13006, TE_GETITEM, 2231, 1)
	MisBeginAction(AddTrigger, 13007, TE_GETITEM, 2232, 1)
	MisBeginAction(AddTrigger, 13008, TE_GETITEM, 2233, 1)
	
	
	MisCancelAction(ClearMission, 1300)

	MisNeed(MIS_NEED_DESP, " Что бы стать ближе к богине и получить её благословение, Вам необходимо найти все части руны перерождения, куски которой были разбросаны по всему миру пиратии." )
	MisNeed(MIS_NEED_ITEM, 2226, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2227, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2228, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2229, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2230, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2231, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2232, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2233, 1, 80, 1)
	
	

	MisHelpTalk( "<t>Эти руны разбросало по всему миру, Вам нужно будет постораться, если Вы хотите собрать все 8 рун." )
	MisResultTalk( "<t>Вы собрали все части руны перерождения, Вы настоящий Герой." )

	MisResultCondition(HasMission, 1300)
	MisResultCondition(NoRecord,1300)
	MisResultCondition(HasItem, 2226, 1)
	MisResultCondition(HasItem, 2227, 1)
	MisResultCondition(HasItem, 2228, 1)
	MisResultCondition(HasItem, 2229, 1)
	MisResultCondition(HasItem, 2230, 1)
	MisResultCondition(HasItem, 2231, 1)
	MisResultCondition(HasItem, 2232, 1)
	MisResultCondition(HasItem, 2233, 1)
	
	
	MisResultAction(TakeItem, 2226, 1 )
	MisResultAction(TakeItem, 2227, 1 )
	MisResultAction(TakeItem, 2228, 1 )
	MisResultAction(TakeItem, 2229, 1 )
	MisResultAction(TakeItem, 2230, 1 )
	MisResultAction(TakeItem, 2231, 1 )
	MisResultAction(TakeItem, 2232, 1 )
	MisResultAction(TakeItem, 2233, 1 )
	
	
	MisResultAction(GiveItem, 2235,1,4)------------Руна перерождения
	MisResultAction(ClearMission, 1300)
	MisResultAction(SetRecord, 1300)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2226)	
	TriggerAction( 1, AddNextFlag, 1300, 10, 1 )
	RegCurTrigger( 13001 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2227)	
	TriggerAction( 1, AddNextFlag, 1300, 20, 1 )
	RegCurTrigger( 13002 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2228)	
	TriggerAction( 1, AddNextFlag, 1300, 30, 1 )
	RegCurTrigger( 13003 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2229)	
	TriggerAction( 1, AddNextFlag, 1300, 40, 1 )
	RegCurTrigger( 13004 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2230)	
	TriggerAction( 1, AddNextFlag, 1300, 50, 1 )
	RegCurTrigger( 13005 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2231)	
	TriggerAction( 1, AddNextFlag, 1300, 60, 1 )
	RegCurTrigger( 13006 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2232)	
	TriggerAction( 1, AddNextFlag, 1300, 70, 1 )
	RegCurTrigger( 13007 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2233)	
	TriggerAction( 1, AddNextFlag, 1300, 80, 1 )
	RegCurTrigger( 13008 )
	
-------------------------------------------------	

	DefineMission ( 5500, "\199\232\236\237\232\232 \231\224\225\224\226\251", 818 )
	
	MisBeginTalk( "<t>Рождество - это праздник веселья и счастья! Не слишком ли холодно для игры в снежки? Нет?! Убейте <r20 Засохших волшебных кустов> и я Вам дам <bСнежки>!" )

	MisBeginCondition(NoMission,818)
	MisBeginCondition(NoRecord,818)
	MisBeginAction(AddMission,818)
	MisBeginAction(AddTrigger, 8181, TE_KILL, 218, 20 )
	MisCancelAction(ClearMission, 818)
	
	MisNeed(MIS_NEED_DESP, "Kill 20 Mystic Shrub")--Засохший волшебный куст
	MisNeed(MIS_NEED_KILL, 218, 20, 10, 20)

	MisHelpTalk( "<t>Рождество не за горами " )
	MisResultTalk( "<t>Не плохо! Вы видимо очень сильно хотите поиграть в снежки. Вот Ваши <bСнежки>. Счастливого Рождества!" )


	MisResultCondition(HasMission, 818)
	MisResultCondition(NoRecord,818)
	MisResultCondition(HasFlag, 818, 29 )
	MisResultAction(ClearMission, 818)
	MisResultAction(SetRecord,  818 )
	MisResultAction(ClearRecord, 818)
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 218)	
	TriggerAction( 1, AddNextFlag, 818, 10, 20 )
	RegCurTrigger( 8181 )

	-------------------------------------------------	

	DefineMission( 5501, "\199\232\236\237\232\232 \231\224\225\224\226\251", 819 )
	
	MisBeginTalk( "<t>Рождество - это праздник веселья и счастья! Не слишком ли холодно для игры в снежки? Нет?! Убейте <r20 Волшебных кустов> и я Вам дам <bСнежки>!" )

	MisBeginCondition(NoMission,819)
	MisBeginCondition(NoRecord,819)
	MisBeginAction(AddMission,819)
	MisBeginAction(AddTrigger, 8191, TE_KILL, 75, 20 )--Волшебный куст
	MisCancelAction(ClearMission, 819)
	
	MisNeed(MIS_NEED_DESP, "Kill 20 Dry Mystic Shrubs")
	MisNeed(MIS_NEED_KILL, 75, 20, 10, 20)

	MisHelpTalk( "<t>Рождество не за горами " )
	MisResultTalk( "<t>Не плохо! Вы видимо очень сильно хотите поиграть в снежки. Вот Ваши <bСнежки>. Счастливого Рождества!" )


	MisResultCondition(HasMission, 819)
	MisResultCondition(NoRecord,819)
	MisResultCondition(HasFlag, 819, 29 )
	MisResultAction(ClearMission, 819)
	MisResultAction(SetRecord,  819 )
	MisResultAction(ClearRecord, 819)
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 819, 10, 20 )
	RegCurTrigger( 8191 )

-------------------------------------------------	

	DefineMission( 5502, "\199\232\236\237\232\232 \231\224\225\224\226\251", 820 )
	
	MisBeginTalk( "<t>Рождество - это праздник веселья и счастья! Не слишком ли холодно для игры в снежки? Нет?! Убейте <r20 Заснеженных волшебных кустов> и я Вам дам <bСнежки>!" )

	MisBeginCondition(NoMission,820)
	MisBeginCondition(NoRecord,820)
	MisBeginAction(AddMission,820)
	MisBeginAction(AddTrigger, 8201, TE_KILL, 216, 20 )--Заснеженный Волшебный куст
	MisCancelAction(ClearMission, 820)
	
	MisNeed(MIS_NEED_DESP, "Kill 20 Snowy Mystic Shrub")
	MisNeed(MIS_NEED_KILL, 216, 20, 10, 20)

	MisHelpTalk( "<t>Рождество не за горами " )
	MisResultTalk( "<t>Не плохо! Вы видимо очень сильно хотите поиграть в снежки. Вот Ваши <bСнежки>. Счастливого Рождества!" )


	MisResultCondition(HasMission, 820)
	MisResultCondition(NoRecord,820)
	MisResultCondition(HasFlag, 820, 29 )
	MisResultAction(ClearMission, 820)
	MisResultAction(SetRecord,  820 )
	MisResultAction(ClearRecord, 820)
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 216)	
	TriggerAction( 1, AddNextFlag, 820, 10, 20 )
	RegCurTrigger( 8201 )

-----------------------------------------------реберн

	DefineMission(6001,"\206\247\232\241\242\232\236 \236\232\240 \238\242 \228\229\236\224\237\238\226",1302)--реберн стандарт

      MisBeginTalk( "<t>В мире нашем очень много стало зла, помоги мне избавить мир от нечисти<n><t>Убейте по 15 монстров:<rСтремительный лесной охотник>, <rСтремительный призрачный охотник>, <rЗловещий луговой старейшина>, <rЗловещий ангел-хранитель>, <rБеспощадный призрачный охотник>, <rБеспощадный лесной охотник>." )

      MisBeginCondition(HasRecord,1301)
      MisBeginCondition(NoRecord,1302)
      MisBeginCondition(NoMission,1302)
      MisBeginCondition(HasCredit,9999 )
      MisBeginAction(TakeCredit, 9999 )
      MisBeginAction(AddMission,1302)
      MisBeginAction(AddTrigger, 13021, TE_KILL,525, 15)--Стремительный лесной охотник
      MisBeginAction(AddTrigger, 13022, TE_KILL,526, 15)--Стремительный призрачный охотник
      MisBeginAction(AddTrigger, 13023, TE_KILL, 532, 15)--Зловещий луговой старейшина
      MisBeginAction(AddTrigger, 13024, TE_KILL, 550, 15)--Зловещий ангел-хранитель
      MisBeginAction(AddTrigger, 13025, TE_KILL, 554, 15)--Беспощадный призрачный охотник
      MisBeginAction(AddTrigger, 13026, TE_KILL, 553, 15)--Беспощадный лесной охотник
      MisCancelAction(ClearMission, 1302)

      MisNeed(MIS_NEED_DESP, " Убейте по 15 монстров:<rСтремительный лесной охотник>, <rСтремительный призрачный охотник>, <rЗловещий луговой старейшина>, <rЗловещий ангел-хранитель>, <rБеспощадный призрачный охотник>, <rБеспощадный лесной охотник>!" )
      MisNeed(MIS_NEED_KILL, 525, 15, 10, 15)
      MisNeed(MIS_NEED_KILL, 526, 15, 30, 15)
      MisNeed(MIS_NEED_KILL, 532, 15, 50, 15)
      MisNeed(MIS_NEED_KILL, 550, 15, 70, 15)
      MisNeed(MIS_NEED_KILL, 554, 15, 90, 15)
      MisNeed(MIS_NEED_KILL, 553, 15, 110, 15)

      MisHelpTalk( "<t>Убейте же в конце-концов этих монстров." )  
      MisResultTalk( "<t>Вы избавили мир от нечисти, не от всей, но начало положено, возьмите эту часть руны в награду за Вашу смелость!" )
      MisResultCondition(HasMission,1302 )
      MisResultCondition(NoRecord,1302)
      MisResultCondition(HasFlag, 1302, 24)
      MisResultCondition(HasFlag, 1302, 44)
      MisResultCondition(HasFlag, 1302, 64)
      MisResultCondition(HasFlag, 1302, 84)
      MisResultCondition(HasFlag, 1302, 104)
      MisResultCondition(HasFlag, 1302, 124)
      MisResultAction(GiveItem, 2228, 1, 4 )
      MisResultAction(ClearMission, 1302 )
      MisResultAction(SetRecord, 1302)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 525 )
      TriggerAction( 1, AddNextFlag, 1302, 10, 15 )
      RegCurTrigger( 13021 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 526 )
      TriggerAction( 1, AddNextFlag, 1302, 30, 15 )
      RegCurTrigger( 13022 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,532  )
      TriggerAction( 1, AddNextFlag, 1302, 50, 15 )
      RegCurTrigger( 13023 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 550 )
      TriggerAction( 1, AddNextFlag, 1302, 70, 15 )
      RegCurTrigger( 13024 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 554 )
      TriggerAction( 1, AddNextFlag, 1302, 90, 15 )
      RegCurTrigger( 13025 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,553)
      TriggerAction( 1, AddNextFlag, 1302, 110, 15 )
      RegCurTrigger( 13026 )




------------------------------------------------------реберн стандарт

	DefineMission( 6002, "\210\224\232\237\241\242\226\229\237\237\251\233 \204\224\235\251\248", 1303 )

	MisBeginTalk( "<t>Судя по Вашей репутации, мне кажется что Малыш не станет сильно упорствовать в помощи Вам." )
	MisBeginCondition(NoRecord,   1303)
	MisBeginCondition(HasRecord, 1302)
	MisBeginCondition(NoMission,  1303)
	MisBeginAction(AddMission,  1303)
	MisCancelAction(ClearMission, 1303)
	MisNeed(MIS_NEED_DESP, " Поиск опекуна Малыша на Востоке " )
	MisHelpTalk( "<t>Могу только сказать что это Важно!" )
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------

	DefineMission( 6003, "\210\224\232\237\241\242\226\229\237\237\251\233 \204\224\235\251\248", 1303, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk( "<t>Я уже ожирел, но Всё ещё хочу попробовать эту вкуснятину?!" )
	MisResultCondition(NoRecord,  1303)
	MisResultCondition(HasMission,  1303)
	MisResultAction(SetRecord,  1303)
	MisResultAction(ClearMission,  1303)

------------------------------------------------------------

	DefineMission( 6004, "\207\240\238\241\242\224\255 \204\232\241\241\232\255", 1304 )--Простая Миссия

	MisBeginTalk( "<t>Я не хочу Вас утруждать, но не смогли бы Вы, за небольшое вознаграждение, принести пару предметов..." )
	MisBeginCondition(NoRecord, 1304)
	MisBeginCondition(HasRecord, 1303)
	MisBeginCondition(NoMission, 1304)
	MisBeginAction(AddMission, 1304)
	MisBeginAction(AddTrigger, 13041, TE_GETITEM, 4730, 30 )--Гигантский цветок дурмана
	MisBeginAction(AddTrigger, 13042, TE_GETITEM, 1358, 30 )--Качественная икра
	MisBeginAction(AddTrigger, 13043, TE_GETITEM, 2619, 30 )--Сжатая энергия II
	MisCancelAction(ClearMission, 1304)
	
	MisNeed(MIS_NEED_ITEM, 4730, 30, 10, 30)
	MisNeed(MIS_NEED_ITEM, 1358, 30, 50, 30)
	MisNeed(MIS_NEED_ITEM, 2619, 30, 90, 30)

	MisResultTalk( "<t>Это всё что мне нужно для приготовления Вина Мао, спасибо Вам огромное." )
	MisHelpTalk( "<t>Стоя на месте, ни когда, ни чего не добьёшься..." )
	MisResultCondition(HasMission, 1304)
	MisResultCondition(HasItem, 4730, 30 )
	MisResultCondition(HasItem, 1358, 30 )
	MisResultCondition(HasItem, 2619, 30 )
	MisResultAction(TakeItem, 4730, 30 )
	MisResultAction(TakeItem, 1358, 30 )
	MisResultAction(TakeItem, 2619, 30 )
	MisResultAction(ClearMission, 1304)
	MisResultAction(SetRecord, 1304 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4730)	
	TriggerAction( 1, AddNextFlag, 1304, 10, 30 )
	RegCurTrigger( 13041 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1358)	
	TriggerAction( 1, AddNextFlag, 1304, 50, 30 )
	RegCurTrigger( 13042 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2619)	
	TriggerAction( 1, AddNextFlag, 1304, 90, 30 )
	RegCurTrigger( 13043 )




------------------------------------------------------------
	
	DefineMission( 6005, "\196\229\237\252 \207\229\240\229\240\238\230\228\229\237\232\255", 1305 )--День Перерождения

	MisBeginTalk( "<t>Это - действительно хорошее вино... Но... того маловато будет мне, принисите ещё Вина." )
	MisBeginCondition(NoRecord, 1305)
	MisBeginCondition(HasRecord, 1304)
	MisBeginCondition(NoMission, 1305)
	MisBeginAction(AddMission, 1305)
	MisBeginAction(AddTrigger, 13051, TE_GETITEM, 1087, 30 )--Вино мао	
	MisCancelAction(ClearMission, 1305)
	
	MisNeed(MIS_NEED_ITEM, 1087, 30, 10, 30)

	MisResultTalk( "<t>Очень хорошо, спасибо Вам!" )
	MisHelpTalk( "<t>Поторопитесь, мне очень нужно это вино!" )
	MisResultCondition(HasMission, 1305)
	MisResultCondition(HasItem, 1087, 30 )
	MisResultAction(TakeItem, 1087, 30 )
	MisResultAction(ClearMission, 1305)
	MisResultAction(SetRecord, 1305 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1305, 10, 30 )
	RegCurTrigger( 13051 )

------------------------------------------------------------

	DefineMission( 6006, "\196\229\237\252 \207\229\240\229\240\238\230\228\229\237\232\255", 1306 )

	MisBeginTalk( "<t>Не помню... кто то мне сказал, что Душевное Вино лучше Вина Мао, не могли ли Вы мне помочь разобраться с этим вопросом?" )
	MisBeginCondition(NoRecord, 1306)
	MisBeginCondition(HasRecord, 1305)
	MisBeginCondition(NoMission, 1306)
	MisBeginAction(AddMission, 1306)
	MisBeginAction(AddTrigger, 13061, TE_GETITEM, 1088, 20 )--Душевное Вино
	MisCancelAction(ClearMission, 1306)
	
	MisNeed(MIS_NEED_ITEM, 1088, 20, 10, 20)

	MisResultTalk( "<t>Душевное Вино всё же лучше!" )
	MisHelpTalk( "<t>Не теряйте зря время, принесите мне Душевное Вино на сравнение!" )
	MisResultCondition(HasMission, 1306)
	MisResultCondition(HasItem, 1088, 20 )
	MisResultAction(TakeItem, 1088, 20 )
	MisResultAction(ClearMission, 1306)
	MisResultAction(SetRecord, 1306 )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1088)	
	TriggerAction( 1, AddNextFlag, 1306, 10, 20 )
	RegCurTrigger( 13061 )



------------------------------------------------------------

	DefineMission( 6007, "\196\229\237\252 \207\229\240\229\240\238\230\228\229\237\232\255", 1307 )

	MisBeginTalk( "<t>Нет! Всё таки Вино Мао Лучше, мне необходимо 20 бутылок Вина Мао, принесёте мне его?" )
	MisBeginCondition(NoRecord, 1307)
	MisBeginCondition(HasRecord, 1306)
	MisBeginCondition(NoMission, 1307)
	MisBeginAction(AddMission, 1307)
	MisBeginAction(AddTrigger, 13071, TE_GETITEM, 1087, 20 )		--
	MisCancelAction(ClearMission, 1307)
	
	MisNeed(MIS_NEED_ITEM, 1087, 20, 10, 20)

	MisResultTalk( "<t>Вино требует выдержки..." )
	MisHelpTalk( "<t>Не хамите пьяному." )
	MisResultCondition(HasMission, 1307)
	MisResultCondition(HasItem, 1087, 20 )
	MisResultAction(TakeItem, 1087, 20 )
	MisResultAction(ClearMission, 1307)
	MisResultAction(SetRecord, 1307 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1307, 10, 20 )
	RegCurTrigger( 13071 )

------------------------------------------------------------

	DefineMission( 6008, "\196\229\237\252 \207\229\240\229\240\238\230\228\229\237\232\255", 1008 )

	MisBeginTalk( "<t> Ой... Кажется я перебрал немножко с дегустациями... У меня похмелье... Не могли ли Вы мне принести Вина с женьшенем, что бы немного опохмелиться?" )
	MisBeginCondition(NoRecord, 1008)
	MisBeginCondition(HasRecord, 1307)
	MisBeginCondition(NoMission, 1008)
	MisBeginAction(AddMission, 1008)
	MisBeginAction(AddTrigger, 10081, TE_GETITEM, 1089, 15 )--Вино с женьшенем
	MisCancelAction(ClearMission, 1008)
	
	MisNeed(MIS_NEED_ITEM, 1089, 15, 10, 15)

	MisResultTalk( "<t>Ох.. ещё бы тоник... Эх..." )
	MisHelpTalk( " <t>Ну чего Вы ждёте? Поторопитесь... У меня сильно болит голова!" )
	MisResultCondition(HasMission, 1008)
	MisResultCondition(HasItem, 1089, 15 )
	MisResultAction(TakeItem, 1089, 15 )
	MisResultAction(ClearMission, 1008)
	MisResultAction(SetRecord, 1008 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1089)	
	TriggerAction( 1, AddNextFlag, 1008, 10, 15 )
	RegCurTrigger( 10081 )


------------------------------------------------------

	DefineMission( 6009, "\207\238\232\241\234 \196\229\236\238\237\232\247\229\241\234\238\227\238 \195\232\228\224", 1009 )--Поиск Демонического Гида

	MisBeginTalk( "<t>Вы, не смотря на то, что я простой Алкоголик, всё таки помогли мне, за это я Вам дам осколок руны, да и кстати я слышал, что в Мире Демонов есть гид. У него есть интересное предложение для Вас..." )
	MisBeginCondition(NoRecord,   1009)
	MisBeginCondition(HasRecord, 1008)
	MisBeginCondition(NoMission,  1009)
	MisBeginAction(AddMission,  1009)
	MisBeginAction(GiveItem, 2227, 1, 4 )--Руна Ройко
	MisCancelAction(ClearMission, 1009)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, " Отправляйтесь на поиски Гида в Мир демонов!" )
	MisHelpTalk( "<t>И кого мы ждём?" )
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------

	DefineMission( 6010, "\207\238\232\241\234 \196\229\236\238\237\232\247\229\241\234\238\227\238 \195\232\228\224", 1009, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk( "<t>Я - Гид в Мире Демонов, но я не провожу экскурсии, я могу только рассказать теорию о местности Мира Демонов так, как сам тут блуждаю..." )
	MisResultCondition(NoRecord,  1009)
	MisResultCondition(HasMission,  1009)
	MisResultAction(SetRecord,  1009)
	MisResultAction(ClearMission,  1009)

----------------------------------------------------------

	DefineMission( 6011, "\207\243\242\232\248\229\241\242\226\232\229 \226 \202\224\240\232\225\251", 1010 )--Путишествие в Карибы
	MisBeginTalk( "<t>Инцидент случился давным-давно. Сам я не могу отправиться ни на небо, ни в Карибы. Если Вы мне поможете убить <rКомандира мертвых душ>, обидившего меня много лет назад, то я Вам дам осколок руны, и, я так думаю, этот осколок Вам пригодится." )
				
	MisBeginCondition(NoMission, 1010)
	MisBeginCondition(HasRecord, 1009)
	MisBeginCondition(NoRecord,1010)	
	MisBeginAction(AddMission,1010)
	MisBeginAction(AddTrigger, 10101, TE_KILL, 807, 1)--Командир мертвых душ
	MisCancelAction(ClearMission, 1010)

	MisNeed(MIS_NEED_DESP, " Убить <rКомандира мертвых душ>." )
	MisNeed(MIS_NEED_KILL, 807,1, 10, 1)
	
	
	MisResultTalk( "<t>Карибы очень красивые, но монстры внушают ужас и страх!" )
	MisHelpTalk( "<t>Отомстите за меня!" )
	MisResultCondition(HasMission,  1010)
	MisResultCondition(HasFlag, 1010, 10)
	MisResultCondition(NoRecord , 1010)
	MisResultAction(ClearMission,  1010)
	MisResultAction(SetRecord,  1010 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 807)	
	TriggerAction( 1, AddNextFlag, 1010, 10, 1 )
	RegCurTrigger( 10101 )

	


----------------------------------------------------------

	DefineMission( 6012, "\207\243\242\232\248\229\241\242\226\232\229 \226 \202\224\240\232\225\251, \228\229\237\252 \226\242\238\240\238\233", 1011 )--Путишествие в Карибы, день второй
	MisBeginTalk( "<t>И как только носит земля этих ужасных монстров, вот к примеру - Барбороса..." )
				
	MisBeginCondition(NoMission, 1011)
	MisBeginCondition(NoRecord,1011)
	MisBeginCondition(HasRecord, 1010)
	MisBeginAction(AddMission,1011)
	MisBeginAction(AddTrigger, 10111, TE_KILL, 805, 1)--Барбороса
	MisCancelAction(ClearMission, 1011)

	MisNeed(MIS_NEED_DESP, " Убейте <rБарбороса>!" )
	MisNeed(MIS_NEED_KILL, 805,1, 10, 1)
	

	MisResultTalk( "<t>Привосходно мой друг!" )
	MisHelpTalk(" Не оставляйте шансов этим монстрам выжить!" )
	MisResultCondition(HasMission,  1011)
	MisResultCondition(HasFlag, 1011, 10)
	MisResultCondition(NoRecord , 1011)
	MisResultAction(ClearMission,  1011)
	MisResultAction(SetRecord,  1011 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 1011, 10, 1 )
	RegCurTrigger( 10111 )
	
	----------------------------------------------------------

	DefineMission( 6013, "\207\243\242\232\248\229\241\242\226\232\229 \226 \202\224\240\232\225\251, \228\229\237\252 \226\242\238\240\238\233", 1012 )
	MisBeginTalk( "<t> Я вижу Вы скучаете, не волнуйтесь у меня есть для Вас ещё одно небольшое путишествие, Убейте <rДоисторический гигантский Спрут>!" )
				
	MisBeginCondition(NoMission, 1012)
	MisBeginCondition(NoRecord,1012)
	MisBeginCondition(HasRecord, 1011)
	MisBeginAction(AddMission,1012)
	MisBeginAction(AddTrigger, 10121, TE_KILL, 796, 1)---Доисторический гигантский Спрут
	
	MisCancelAction(ClearMission, 1012)

	MisNeed(MIS_NEED_DESP, " Убейте <rКракена>!" )
	MisNeed(MIS_NEED_KILL, 796,1, 10, 1)
	

	MisResultTalk( "<t>Вы сильный Герой, возьмите эту руну, возможно она Вам ещё пригодится." )
	MisHelpTalk( "<t>Сделайте так что бы тот Осминог исчез с лица Земли!" )
	MisResultCondition(HasMission,  1012)
	MisResultCondition(HasFlag, 1012, 10)
	MisResultCondition(NoRecord , 1012)
	MisResultAction(GiveItem, 2226, 1, 4 )--руна реба
	MisResultAction(ClearMission,  1012)
	MisResultAction(SetRecord,  1012 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 796)	
	TriggerAction( 1, AddNextFlag, 1012, 10, 1 )
	RegCurTrigger( 10121 )
	
	------------------------------------------------------

	DefineMission( 6014, "\213\240\224\237\232\242\229\235\252", 1013 )--Хранитель

	MisBeginTalk( "<t>Друг мой, Вы хорошо продвигаетесь в поисках осколков рун, я слышал что в Ледыне у Опекуна есть информация косательная этих рун." )
	MisBeginCondition(NoRecord,   1013)
	MisBeginCondition(HasRecord, 1012)
	MisBeginCondition(NoMission,  1013)
	MisBeginAction(AddMission,  1013)
	MisCancelAction(ClearMission, 1013)
	

	MisNeed(MIS_NEED_DESP, " Поиск следующего хранителя осколков рун." )
	MisHelpTalk( "<t>К сожелению я, как гид, больше не могу устроить Вам походов на Боссов, может Вам лучше отправиться на поиски оставшихся рун перерождения?" )
	
	MisResultCondition(AlwaysFailure)


-------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------	Подарок на День Святого Валентина ---------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------


	DefineMission( 5503, "\207\238\228\224\240\238\234 \237\224 \196\229\237\252 \209\226\255\242\238\227\238 \194\224\235\229\237\242\232\237\224", 825 )--Подарок на День Святого Валентина
	
	MisBeginTalk( "<t>Хотите оставить приятные воспоминания о любви? Принесите мне 10 Сердец Наяды и Вам будет, что вспомнить." )

	MisBeginCondition(NoMission,825)
	MisBeginCondition(NoRecord,825)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginAction(AddMission,825)
	MisBeginAction(AddTrigger, 8251, TE_GETITEM, 3343, 1)--Роза
	MisBeginAction(AddTrigger, 8252, TE_GETITEM, 4418, 10)--Сердце наяды
	MisCancelAction(ClearMission, 825)
	
	MisNeed(MIS_NEED_DESP, " Принесите <b1 Розу> и <b10 сердец Наяды>." )
	MisNeed(MIS_NEED_ITEM, 3343, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 20, 10 )

	MisHelpTalk( "<t>Ну не стойте как истукан, или Вам безразлично, как пройдёт День Святого Валентина?" )
	MisResultTalk( "<t>Очень хорошо, подарите этот <bПодарок Красоты> своей второй половинке." )


	MisResultCondition(HasMission, 825)
	MisResultCondition(NoRecord,825)
	MisResultCondition(HasItem, 3343, 1)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 1 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 825)
	MisResultAction(SetRecord,  825 )
	MisResultAction(GiveItem, 2904, 1, 4)
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 825, 10, 1 )
	RegCurTrigger( 8251 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 825, 20, 10 )
	RegCurTrigger( 8252 )

-------------------------------------------------День Святого Валентина

	DefineMission( 5504, "\207\238\228\224\240\238\234 \237\224 \196\229\237\252 \209\226\255\242\238\227\238 \194\224\235\229\237\242\232\237\224", 826 )
	
	MisBeginTalk( "<t>Хотите оставить приятные воспоминания о любви? Принесите мне 10 Сердец Наяды и Вам будет, что вспомнить." )

	MisBeginCondition(NoMission,826)
	MisBeginCondition(NoRecord,826)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginAction(AddMission,826)
	MisBeginAction(AddTrigger, 8261, TE_GETITEM, 3343, 1)
	MisBeginAction(AddTrigger, 8262, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 826)
	
	MisNeed(MIS_NEED_DESP, " Принесите <b1 Розу> и <b10 сердец Наяды>." )
	MisNeed(MIS_NEED_ITEM, 3343, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 20, 10 )

	MisHelpTalk( "<t>Не упускайте прекрасную возможность осчастливить Вашу вторую половинку!" )
	MisResultTalk( "<t>Очень хорошо, подарите этот <bПодарок Ломтя> своей второй половинке!" )


	MisResultCondition(HasMission, 826)
	MisResultCondition(NoRecord,826)
	MisResultCondition(HasItem, 3343, 1)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 1 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 826)
	MisResultAction(SetRecord,  826 )
	MisResultAction(GiveItem, 2905, 1, 4)--Подарок Ломтя
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 826, 10, 1 )
	RegCurTrigger( 8261 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 826, 20, 10 )
	RegCurTrigger( 8262 )


-----------------------------------------------

	DefineMission( 5505, "\193\235\224\227\238\241\238\241\242\238\255\237\232\229 7 \209\226\232\237\229\233", 827 )--Благосостояние 7 Свиней

      MisBeginTalk( "<t>Хотите получить подарок от самого Бога Свиней? тогда убейте: Снежного Свинокрыла, Свинокрыла, Клыкастого боевого кабана, Свина-летуна, Безумного кабана, Боевого свинокрыла и Снежную свинью." )

      MisBeginCondition(NoRecord,827)
      MisBeginCondition(NoMission,827)
      MisBeginAction(AddMission,827)
      MisBeginAction(AddTrigger, 8271, TE_KILL,239, 1)--Снежный Свинокрыл
      MisBeginAction(AddTrigger, 8272, TE_KILL,237, 1)--Свинокрыл
      MisBeginAction(AddTrigger, 8273, TE_KILL, 264, 1)--Клыкастый боевой кабан
      MisBeginAction(AddTrigger, 8274, TE_KILL, 295, 1)--Свин-летун
      MisBeginAction(AddTrigger, 8275, TE_KILL, 64, 1)--Безумный кабан
      MisBeginAction(AddTrigger, 8276, TE_KILL, 296, 1)--Боевой свинокрыл
      MisBeginAction(AddTrigger, 8277, TE_KILL, 144, 1)--Снежная свинья
      MisCancelAction(ClearMission, 827)

      MisNeed(MIS_NEED_DESP, " Убейте: <rСнежного Свинокрыла>, <rСвинокрыла>, <rКлыкастого боевого кабана>, <rСвина-летуна>, <rБезумного кабана>, <rБоевого свинокрыла> и <rСнежную свинью>.")
      MisNeed(MIS_NEED_KILL, 239, 1, 10, 1)
      MisNeed(MIS_NEED_KILL, 237, 1, 20, 1)
      MisNeed(MIS_NEED_KILL, 264, 1, 30, 1)
      MisNeed(MIS_NEED_KILL, 295, 1, 40, 1)
      MisNeed(MIS_NEED_KILL, 64, 1, 50, 1)
      MisNeed(MIS_NEED_KILL, 296, 1, 60, 1)
      MisNeed(MIS_NEED_KILL, 144, 1, 70, 1)


      MisHelpTalk( "<t>С новым Годом." )  
      MisResultTalk( "<t>Молодец!" )
      MisResultCondition(HasMission,827 )
      MisResultCondition(NoRecord,827)
      MisResultCondition(HasFlag, 827, 10)
      MisResultCondition(HasFlag, 827, 20)
      MisResultCondition(HasFlag, 827, 30)
      MisResultCondition(HasFlag, 827, 40)
      MisResultCondition(HasFlag, 827, 50)
      MisResultCondition(HasFlag, 827, 60)
      MisResultCondition(HasFlag, 827, 70)
      MisResultAction(GiveItem, 855, 99, 4 )--Монета феи
      MisResultAction(ClearMission, 827 )
      MisResultAction(SetRecord, 827)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 239 )
      TriggerAction( 1, AddNextFlag, 827, 10, 1 )
      RegCurTrigger( 8271 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 827, 20, 1 )
      RegCurTrigger( 8272 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,264  )
      TriggerAction( 1, AddNextFlag, 827, 30, 1 )
      RegCurTrigger( 8273 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 295 )
      TriggerAction( 1, AddNextFlag, 827, 40, 1 )
      RegCurTrigger( 8274 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 64 )
      TriggerAction( 1, AddNextFlag, 827, 50, 1 )
      RegCurTrigger( 8275 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,296)
      TriggerAction( 1, AddNextFlag, 827, 60, 1 )
      RegCurTrigger( 8276 )

      InitTrigger()
      TriggerCondition( 1, IsMonster,144)
      TriggerAction( 1, AddNextFlag, 827, 70, 1 )
      RegCurTrigger( 8277 )

-------------------------------------------------Счастливый Поросенок	

	DefineMission( 5506, "\209\247\224\241\242\235\232\226\251\233 \207\238\240\238\241\229\237\238\234", 828 )--Счастливый Поросенок
	
	MisBeginTalk( "<t>Без удачливого клевера поросёнка Вам будет сложно чего ни будь добиться, так что принесите мне этот клевер и у Вас появится шанс выиграть хороший подарок, от самоцвета колоса в плоть до мешка Богини. Каждая папытка Вам будет стоить <30.000 золотом>." )

	MisBeginCondition(NoMission,828)
	MisBeginCondition(HasRecord,827)
	MisBeginCondition(NoRecord,828)
	MisBeginAction(AddMission,828)
	MisBeginAction(AddTrigger, 8281, TE_GETITEM, 2908, 1)--Удачливый клевер хрюшки
	MisCancelAction(ClearMission, 828)
	
	MisNeed(MIS_NEED_ITEM, 2908, 1, 10, 1)
	

	MisHelpTalk( "<t>Поспешите!" )
	MisResultTalk( "<t>Очень хорошо! Бог Свеньи награждает Вас Сундуком счастливой хрюшки!" )

	MisResultCondition(HasMission, 828)
	MisResultCondition(NoRecord,828)
	MisResultCondition(HasItem, 2908, 1)
	MisResultCondition(HasMoney, 30000)
	MisResultAction(TakeItem, 2908, 1 )
	MisResultAction(TakeMoney,30000 )
	MisResultAction(ClearMission, 828)
	MisResultAction(SetRecord,  828 )
	MisResultAction(GiveItem, 2909, 1, 4)--Сундук счастливой хрюшки

	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2908)	
	TriggerAction( 1, AddNextFlag, 828, 10, 1 )
	RegCurTrigger( 8281 )

	
-----------------------------------------------

	DefineMission( 5507, "\207\238\228\224\240\238\234", 829 )--Подарок

      MisBeginTalk( "<t>У Вас счстливый день. Вы можете получить подарок от хрюшки, если конечно сможите убить <r20 Свинокрылов>." )

      MisBeginCondition(NoRecord,829)
      MisBeginCondition(NoMission,829)
      MisBeginCondition(LvCheck, ">",45)
      MisBeginAction(AddMission,829)
      MisBeginAction(AddTrigger, 8291, TE_KILL, 237, 20)--Свинокрыл
      MisCancelAction(ClearMission, 829)

      MisNeed(MIS_NEED_DESP, " Поймайте 20 Поросят." )
      MisNeed(MIS_NEED_KILL, 237, 20, 10, 20)
     
      MisHelpTalk( "<t>Время не ждет никого." )  
      MisResultTalk( "<t>Не плохо! Вот Вам подарок от Хрюшки! Если Вы открываете это в канун 17-ого февраля с 23:00 до 01:00, 18-ого февраля, Вы можете выиграть не плохой подарок." )
      MisResultCondition(HasMission,829 )
      MisResultCondition(NoRecord,829)
      MisResultCondition(HasFlag, 829, 29)
      MisResultAction(GiveItem, 2910, 1, 4 )--Мешок благополучия Пиратии
      MisResultAction(ClearMission, 829 )
      MisResultAction(SetRecord, 829)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 829, 10, 20 )
      RegCurTrigger( 8291 )
       
-------------------------------------------------Что такое любовь

	DefineMission( 5508, "\215\242\238 \242\224\234\238\229 \235\254\225\238\226\252", 830 )--Что же всё таки такое - любовь
	
	MisBeginTalk( "<t>В Вас есть потенциал, я не могу удержаться, что бы не отдать Вам подарки за просто так, но всё таки Вам придётся выполнить мои маленькие капризы. Хрю..Хрю." )

	MisBeginCondition(NoMission,830)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoRecord,830)
	MisBeginAction(AddMission,830)
	MisBeginAction(AddTrigger, 8301, TE_GETITEM, 4418, 10 )--Сердце наяды
	MisCancelAction(ClearMission, 830)
	
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10 )
	

	MisHelpTalk( "<t>Не заставляйте свою любовь ждать!" )
	MisResultTalk( "<t>О! Ну что же, Вы молодец, откройте этот Сундук судьбы и Вы не будите больше одиноки!" )

	MisResultCondition(HasMission, 830)
	MisResultCondition(NoRecord,830)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 830)
	MisResultAction(SetRecord,  830 )
	MisResultAction(GiveItem, 2916, 1, 4)--Сундук судьбы
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 830, 10, 10 )
	RegCurTrigger( 8301 )

-------------------------------------------------------------------------------------------------
	-------------------------------------------------Свадьба------------------------------
-------------------------------------------------------------------------------------------------

	DefineMission( 5509, "\202\240\224\241\232\226\224\255 \203\254\225\238\226\252", 831 )--Красивая Любовь
	
	MisBeginTalk( "<t>Молодой человек, Вам бы найти себе подругу, спутника по жизни. Вам всего то для этого надо <bЛюбовный амулет принца>, <bКрасная веревка> и желание найти свою любовь. Я буду с ни терпением ждать Вас и Вашу любимую, приходите ко мне со своей избранницей." )

	MisBeginCondition(NoMission,831)
	MisBeginCondition(NoMission,832)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginCondition(HasItem, 2902, 1)
	MisBeginAction(AddTrigger, 8311, TE_GETITEM, 2903, 1 )--Любовный амулет принца
	MisBeginAction(AddTrigger, 8312, TE_GETITEM, 2845, 1 )--Красная веревка
	MisBeginAction(AddMission,831)
	MisCancelAction(ClearMission, 831)
	

	MisNeed(MIS_NEED_ITEM, 2903, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk( "<t>Найти: <pИзбранницу>, <bКрасную Верёвку> и <bЛюбовный амулет принца>." )
	MisResultTalk( "<t>Вы такая прекрасная пара, Вы так подходите друг к другу. Примите мои поздравления, и возьмите в подарок эти свадебные наборы, но помните - Вы выбрали друг друга, и после свадьбы Вы будите обручены на вечную, взаимную любовь, берегите друг друга, цените свою любовь и не дайте ни чему помешать Вам быть счастливыми вместе!" )

	MisResultCondition(HasMission, 831)
	MisResultCondition(NoRecord,831)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem, 2902, 2903 )
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 831)
	MisResultAction(SetRecord,  831 )
	MisResultAction(GiveItem, 2915, 2, 4)--Сундук платья
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2903)	
	TriggerAction( 1, AddNextFlag, 831, 10, 1 )
	RegCurTrigger( 8311 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 831, 20, 1 )
	RegCurTrigger( 8312 )

		-------------------------------------------------	

	DefineMission( 5536, "\202\240\224\241\232\226\224\255 \203\254\225\238\226\252", 832 )--Красивая Любовь
	
	MisBeginTalk( "<t>Солнышко, Вам бы найти себе друга, спутника по жизни. Вам всего то для этого надо <bЛюбовный амулет принцессы>, <bКрасная веревка> и желание найти свою любовь. Я буду с ни терпением ждать Вас и Вашего любимого, приходите ко мне со своим избранником." )

	MisBeginCondition(NoMission,832)
	MisBeginCondition(NoMission,831)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginCondition(HasItem, 2903, 1)
	MisBeginAction(AddTrigger, 8321, TE_GETITEM, 2902, 1 )--Любовный амулет принцессы
	MisBeginAction(AddTrigger, 8322, TE_GETITEM, 2845, 1 )--Красная веревка
	MisBeginAction(AddMission,832)
	MisCancelAction(ClearMission, 832)
	

	MisNeed(MIS_NEED_ITEM, 2902, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk( "<t>Найти: <pИзбранника>, <bКрасную Верёвку> и <bЛюбовный амулет принца>." )
	MisResultTalk( "<t>Вы такая прекрасная пара, Вы так подходите друг к другу. Примите мои поздравления, и возьмите в подарок эти свадебные наборы, но помните - Вы выбрали друг друга, и после свадьбы Вы будите обручены на вечную, взаимную любовь, берегите друг друга, цените свою любовь и не дайте ни чему помешать Вам быть счастливыми вместе!" )

	MisResultCondition(HasMission, 832)
	MisResultCondition(NoRecord,832)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem, 2902, 2903 )
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 832)
	MisResultAction(SetRecord,  832 )
	MisResultAction(GiveItem, 2915, 2, 4)
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2902)	
	TriggerAction( 1, AddNextFlag, 832, 10, 1 )
	RegCurTrigger( 8321 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 832, 20, 1 )
	RegCurTrigger( 8322 )



	-------------------------------------------------	

	DefineMission( 5510, "\194\251\231\238\226", 743 )--Вызов
	
	MisBeginTalk( "<t>Хотите быть Пиратом номер 1? Хотите узнать чего Вы стоите? Тогда пройдите испытания! Начало для Ваших мучений Вы найдёте в Аргенте. Дальнейшие указания Вы получите на месте. <rВозьмите это письмо и поместите его у себя в инвентаре в первую ячейку, и ни при каких обстоятельствах не убирайте его от туда, иначе Вам ни когда не узнать какой Вы пират>. Берите письмо и отправляйтесь в большое путешествие." )

	MisBeginCondition(NoMission,743)
	MisBeginCondition(NoRecord,743)
	MisBeginCondition(CheckBagEmp,0)
	MisBeginAction(AddMission,743)
	MisBeginAction(AddChaItem1, 2911)--Письмо с вызовом
	MisCancelAction(SystemNotice, " Нельзя отказаться от миссии!" )
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, " Начинайте испытания с Оператора гавани Витнейя." )
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5511, "\194\251\231\238\226", 743, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Чого приїхав? Чого привіз?" )
	MisResultCondition(HasMission, 743 )
	MisResultCondition(CheckBag, 2911, 0, 1 )--Письмо с вызовом
	MisResultCondition(NoRecord, 743 )
	MisResultAction(ClearMission, 743 )
	MisResultAction(SetRecord, 743 )
	


	-------------------------------------------------	

	DefineMission( 5512, "\194\251\231\238\226 2", 744 )--Вызова 2
	
	MisBeginTalk( "<t>Вы идёте по следам кого то, поторопитесь, иначе Вас опередят, отпраляйтесь к Оператору Даннису, он ждёт Вас!" )

	MisBeginCondition(NoMission,744)
	MisBeginCondition(HasRecord, 743)
	MisBeginCondition(NoRecord, 744)
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission,744)
	MisCancelAction(SystemNotice, " Вы не можите отказаться от этой миссии!" )
	
	MisNeed(MIS_NEED_DESP, " Ищите Оператора Гавани в (136, 3432)" )
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5513, "\194\251\231\238\226 2", 744, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk ("<t>Я Вас уже заждался. Долго... Долго Вы добираетесь." )
	MisResultCondition(HasMission, 744)
	MisResultCondition(NoRecord, 744)
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 744)
	MisResultAction(SetRecord,  744 )

	

	-------------------------------------------------	

	DefineMission ( 5514, "\194\251\231\238\226 3", 745 )
	
	MisBeginTalk( "<t>Это - письмо доставьте Оператору Дедане в (1544, 3712). Только поторопитесь, Вы не первый кто заинтересован в этом задании!" )

	MisBeginCondition(NoMission, 745 )
	MisBeginCondition(HasRecord, 744 )
	MisBeginCondition(NoRecord, 745 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 745 )
	MisCancelAction(SystemNotice, " Вы не можете оказаться от этой миссии!" )
	
	MisNeed(MIS_NEED_DESP, " Отправляйтесь в (1544, 3712)")
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5515, "Challenge Genesis 3", 745, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы кто?" )
	MisResultCondition(HasMission, 745 )
	MisResultCondition(NoRecord, 745 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 745)
	MisResultAction(SetRecord, 745 )



	-------------------------------------------------	
	
	DefineMission( 5516, "\194\251\231\238\226 4", 746 )
	
	MisBeginTalk( "<t>У меня очень мало времени, и я не могувстретиься с Оператором Сок в (3194, 3507)." )

	MisBeginCondition(NoMission,746)
	MisBeginCondition(HasRecord, 745)
	MisBeginCondition(NoRecord,746)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,746)
	MisCancelAction(SystemNotice, " Вы не можите удалить эту миссию!" )
	
	MisNeed(MIS_NEED_DESP, " Ищите Оператора Сок в (3194, 3507)" )
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5517, "\194\251\231\238\226 4", 746, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>У Вас должна была остаться одна вещь... Вы близки к завершению... Надеюсь Вы не передвигали эту вещь? Я говорю о письме в вашем инвентаре." )
	MisResultCondition(HasMission, 746)
	MisResultCondition(NoRecord,746)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 746)
	MisResultAction(SetRecord, 746 )
	


	-------------------------------------------------	

	DefineMission( 5518, "\194\251\231\238\226 5", 747 )
	
	MisBeginTalk( "<t>Хоть море и большое, и преодолевать в нём расстояния не так и просто, Вам всё же стоит поторопиться, если конечно Вы ещё не передумали получить набор Чёрного Дракона." )

	MisBeginCondition(NoMission,747)
	MisBeginCondition(HasRecord,746)
	MisBeginCondition(NoRecord,747)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,747)
	MisCancelAction(SystemNotice, " Не льзя отказаться от этой миссии!" )
	
	MisNeed(MIS_NEED_DESP, " Ищите Оператора Гавани Одия в точке(738, 3803)" )
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5519, "\194\251\231\238\226 5", 747, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы такой же быстрый как Черепаха Тартила!" )
	MisResultCondition(HasMission, 747)
	MisResultCondition(NoRecord,747)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 747)
	MisResultAction(SetRecord, 747 )
	


	-------------------------------------------------	

	DefineMission( 5520, "\194\251\231\238\226 6", 748 )
	
	MisBeginTalk( "<t>Путь, через который Вы сейчас поплывёте, очень опасен, на пути Вы можете встретить Сирен. Убедитесь что Ваши уши закрыты... Закройте уши себе... Да отпустите на конец мышку, дело серьёзное!" )

	MisBeginCondition(NoMission, 748 )
	MisBeginCondition(HasRecord, 747 )
	MisBeginCondition(NoRecord, 748 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 748 )
	MisCancelAction(SystemNotice, " Нельзя отказаться от выполнения этой миссии!" )
	
	MisNeed(MIS_NEED_DESP, " Ищите Оператора Гавани Григория в точке(194, 1715)." )
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5521, "\194\251\231\238\226 6", 748, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Паруса полные ветра и сердце полное смелости - это всё что нужно для отважного Пирата!" )
	MisResultCondition(HasMission, 748)
	MisResultCondition(NoRecord,748)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 748)
	MisResultAction(SetRecord,  748 )
	


	-------------------------------------------------	

	DefineMission( 5522, "\194\251\231\238\226 7", 749 )
	
	MisBeginTalk( "<t>Вы уже приближаетесь к завершению этих не простых испытаний, но помните... Кто то идёт на один шаг в переди Вас." )

	MisBeginCondition(NoMission, 749 )
	MisBeginCondition(HasRecord, 748 )
	MisBeginCondition(NoRecord, 749 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 749 )
	MisCancelAction(SystemNotice, " Вы не можите отказаться от выполнения этого задания!" )
	
	MisNeed(MIS_NEED_DESP, " Отправляйтесь не медленно в Бухту Лаху и отыщите Оператора Гавани Домору в точке (3498, 923)." )
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5523, "\194\251\231\238\226 7", 749, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Я слышал, что много людей гоняются за набором Чёрного Дракона..." )
	MisResultCondition(HasMission, 749 )
	MisResultCondition(NoRecord, 749 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 749 )
	MisResultAction(SetRecord, 749 )
	


	-------------------------------------------------	

	DefineMission( 5524, "\194\251\231\238\226 8", 750 )
	
	MisBeginTalk( "<t>Вы ещё тут?! А Вы гонитесь за набором Чёрного Дракона?! Так чего Вы тут стоите и слушаете бред пьяного Оператора?! Не теряйте время зря и ищите Оператора Бани!" )

	MisBeginCondition(NoMission, 750 )
	MisBeginCondition(HasRecord, 749 )
	MisBeginCondition(NoRecord, 750 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 750 )
	MisCancelAction(SystemNotice, " Вы не можите отказаться от этой миссии!" )
	
	MisNeed(MIS_NEED_DESP, " Ищите в Магическом Океане Оператора Гавани Бани в точке (2042, 635)")
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5525, "\194\251\231\238\226 8", 750, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Я смотрю Вы счастливчик, если ещё не стали жертвой в море!" )
	MisResultCondition(HasMission, 750 )
	MisResultCondition(NoRecord, 750 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 750 )
	MisResultAction(SetRecord, 750 )
	
	

	-------------------------------------------------	

	DefineMission( 5526, "\194\251\231\238\226 9", 751 )
	
	MisBeginTalk( "<t>(12 часов рассказов старого Опиратора)... И вот тогда меня наградила сама Богиня Кара... Ой Вы спешите наверное, а чего молчите, плывите конечно же дальше, а то прозиваете свой Набор Чёрного Дракона." )

	MisBeginCondition(NoMission, 751 )
	MisBeginCondition(HasRecord, 750 )
	MisBeginCondition(NoRecord, 751 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 751 )
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этой миссии!" )
	
	MisNeed(MIS_NEED_DESP, " Плывите в точку(464, 468) и поговорите с местным оператором." )
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5527, "\194\251\231\238\226 9", 751, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Бани любит поболтать! Он этим меня раздражает. Надеюсь Вы не заразились у него его балобольством..." )
	MisResultCondition(HasMission, 751)
	MisResultCondition(NoRecord, 751 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 751 )
	MisResultAction(SetRecord, 751 )
	



	-------------------------------------------------	

	DefineMission( 5528, "\194\251\231\238\226 10", 752 )
	
	MisBeginTalk( "<t>Держите путь на север, не промохнётесь." )

	MisBeginCondition(NoMission, 752 )
	MisBeginCondition(HasRecord, 751 )
	MisBeginCondition(NoRecord, 752 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 752 )
	MisCancelAction(SystemNotice, " Вы не можете отказаться от выполнения этой миссии!" )
	
	MisNeed(MIS_NEED_DESP, " Ищите Оператора Фардела в точке (3153, 674)." )
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5529, "\194\251\231\238\226 10", 752, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Не хотелось бы Вас обидеть... Но... Шивелитесь!" )
	MisResultCondition(HasMission, 752 )
	MisResultCondition(NoRecord, 752 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 752 )
	MisResultAction(SetRecord, 752 )
	


	-------------------------------------------------	

	DefineMission( 5530, "\194\251\231\238\226 11", 753 )
	
	MisBeginTalk( "<t>Возможно Вы опоздали и Вас опередили!" )

	MisBeginCondition(NoMission, 753 )
	MisBeginCondition(HasRecord, 752 )
	MisBeginCondition(NoRecord, 753 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 753 )
	MisCancelAction(SystemNotice, " Вы не можете оказаться от выполнения этого задания!" )
	
	MisNeed(MIS_NEED_DESP, "Поторопитесь и отыщите оператора гавани - Виткома в точке(2041, 1355)." )
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5531, "\194\251\231\238\226 11", 753, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Добро пожаловать в Бухту Хавта!" )
	MisResultCondition(HasMission, 753 )
	MisResultCondition(NoRecord, 753)
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 753 )
	MisResultAction(SetRecord, 753 )
	
	


	-------------------------------------------------

	DefineMission(5532, "\194\251\231\238\226 12", 754 )
	
	MisBeginTalk( "<t>Признаюсь... Вы очень всё долго делаете!" )

	MisBeginCondition(NoMission, 754 )
	MisBeginCondition(HasRecord, 753 )
	MisBeginCondition(NoRecord, 754 )
	MisBeginCondition(CheckBag, 2911, 0, 1 )
	MisBeginAction(AddMission, 754 )
	MisCancelAction(SystemNotice, " Вы не можете отказаться от выполнения этой задачи!" )
	
	MisNeed(MIS_NEED_DESP, " Ищите Оператора Гавани Дарука в точке(1497, 1707)." )
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5533, "\194\251\231\238\226 12", 754, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Да...Уж... Не ну а чё? Нет, я верю что Вы сторались из-за всех сил... Верю. Но как Вы думаете сам... Вы долго бароздили по морям?" )
	MisResultCondition(HasMission, 754 )
	MisResultCondition(NoRecord, 754 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(ClearMission, 754 )
	MisResultAction(SetRecord, 754 )
	
	


	
	-------------------------------------------------	

	DefineMission(5534, "\194\251\231\238\226 13", 755 )
	
	MisBeginTalk( "<t>Не прошло и 20 лет... О чудо Герой... Вы всё таки доплыли до меня...!" )

	MisBeginCondition(NoMission, 755 )
	MisBeginCondition(HasRecord, 754 )
	MisBeginCondition(NoRecord, 755 )
	MisBeginCondition(CheckBag, 2911,0,1 )
	MisBeginAction(AddMission, 755 )
	MisCancelAction(SystemNotice, " Ну а смысл заверщать миссию, когда Вы уже её почти прошли?" )
	
	MisNeed(MIS_NEED_DESP, " Отправляйтесь в Гром-Град и поговорите с Дио в точке(1083, 1285)." )
	
	MisHelpTalk( "<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------

	DefineMission( 5535, "\194\251\231\238\226 13", 755, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы очень медлительны, это письмо вело учёт затраченного Вам времени на прохождение этого испытания... И как Вы сами видите... Ну не расстраивайтесь, может быть в другом испытании Вам повезёт больше." )
	MisResultCondition(HasMission, 755 )
	MisResultCondition(NoRecord, 755 )
	MisResultCondition(HasItem, 2911, 1 )
	MisResultCondition(CheckBag, 2911, 0, 1 )
	MisResultAction(AddChaItem2, 2912 )
	MisResultAction(ClearMission, 755 )
	MisResultAction(SetRecord,  755 )
	MisResultBagNeed(2)
	MisResultAction(ClearRecord, 743 )
	MisResultAction(ClearRecord, 744 )
	MisResultAction(ClearRecord, 745 )
	MisResultAction(ClearRecord, 746 )
	MisResultAction(ClearRecord, 747 )
	MisResultAction(ClearRecord, 748 )
	MisResultAction(ClearRecord, 749 )
	MisResultAction(ClearRecord, 750 )
	MisResultAction(ClearRecord, 751 )
	MisResultAction(ClearRecord, 752 )
	MisResultAction(ClearRecord, 753 )
	MisResultAction(ClearRecord, 754 )
	MisResultAction(ClearRecord, 755 )

	-------------------------------------------------овен

	DefineMission( 5536, "\206\226\229\237 vs \195\229\240\238\233", 1060 )
	
	MisBeginTalk( "<t>Настоящий Герой должен быть знаком с Хаосом, у Вас должно быть 10 очков Хаоса." )

	MisBeginCondition(NoMission,1060)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1060)
	MisBeginAction(AddMission,1060)
	MisCancelAction(ClearMission, 1060)
	
	MisHelpTalk( "<t>Посторайтесь набрать 10 очков Хаоса!" )
	MisResultTalk( "<t>Я знал что набрать 10 очков Хаоса не составит для Вас проблем." )

	MisResultCondition(HasMission, 1060)
	MisResultCondition(NoRecord,1060)
	MisResultCondition(HasFightingPoint,10 )
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1060)
	MisResultAction(SetRecord,  1060 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------овен

	DefineMission( 5537, "\208\229\239\243\242\224\246\232\255 \195\229\240\238\255", 1061 )
	
	MisBeginTalk( "<t>Вам необходимо иметь 500 очков репутации. Репутацию можно получить за обучение учеников." )

	MisBeginCondition(NoMission,1061)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1061)
	MisBeginAction(AddMission,1061)
	MisCancelAction(ClearMission, 1061)
	
	MisHelpTalk( "<t>Идите уже, обучайте учеников, не надо возле меня крутиться, я Вам всё равно не засчитаю миссию пока Вы не поучите учеников!" )
	MisResultTalk( "<t>А знаете, я даже не сомневалась в Ваших способностях." )

	MisResultCondition(HasMission, 1061)
	MisResultCondition(NoRecord,1061)
	MisResultCondition(HasCredit,500 )
	MisResultAction(TakeCredit, 500 )
	MisResultAction(ClearMission, 1061)
	MisResultAction(SetRecord,  1061 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------Овен	

	DefineMission( 5538, "\206\226\229\237 - \221\240\238", 1062 )
	
	MisBeginTalk( "<t>Ваш уровень должен быть не меньше 55 уровня!" )

	MisBeginCondition(NoMission,1062)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1062)
	MisBeginAction(AddMission,1062)
	MisCancelAction(ClearMission, 1062)
	
	MisHelpTalk( "<t>Не вертитесь у меня под носом, идите и поднимайте свой уровень!" )
	MisResultTalk( "<t>Вот и хорошо." )

	MisResultCondition(HasMission, 1062)
	MisResultCondition(NoRecord, 1062)
	MisResultCondition(LvCheck, ">", 55 )
	MisResultAction(ClearMission, 1062)
	MisResultAction(SetRecord,  1062 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------овен	

	DefineMission( 5539, "\193\235\224\227\238\240\238\228\237\251\233 \195\229\240\238\233", 1063 )
	
	MisBeginTalk( "<t>Без чести в наше время ни куда... У Вас должно быть как минимум 100 пунктов чести." )

	MisBeginCondition(NoMission,1063)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1063)
	MisBeginAction(AddMission,1063)
	MisCancelAction(ClearMission, 1063)
	
	MisHelpTalk( "<t>Заработайте себе честь!" )
	MisResultTalk( "<t>Вы молодец, Так бы и расцеловала бы Вас!" )

	MisResultCondition(HasMission, 1063)
	MisResultCondition(NoRecord,1063)
	MisResultCondition(HasHonorPoint,100 )
	MisResultAction(TakeHonorPoint, 100 )
	MisResultAction(ClearMission, 1063)
	MisResultAction(SetRecord,  1063 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------Овен	

	DefineMission( 5540, "\207\238\241\238\235", 1064 )
	
	MisBeginTalk( "<t>Давайте собирём пару вещей для меня." )

	MisBeginCondition(NoMission,1064)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1064)
	MisBeginAction(AddMission,1064)
	MisBeginAction(AddTrigger, 10641, TE_GETITEM, 3116, 15 )--Эльфийский фрукт
	MisBeginAction(AddTrigger, 10642, TE_GETITEM, 1678, 15 )--Кашемир
	MisBeginAction(AddTrigger, 10643, TE_GETITEM, 4809, 15 )--Тыквенная голова
	MisBeginAction(AddTrigger, 10644, TE_GETITEM, 0855, 20 )--Монета феи
	MisBeginAction(AddTrigger, 10645, TE_GETITEM, 4503, 1 )---Корона
	MisBeginAction(AddTrigger, 10646, TE_GETITEM, 1848, 50 )--Хлеб
	MisCancelAction(ClearMission, 1064)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 50, 67, 50 )

	MisHelpTalk( "<t>Собрать эти предметы не составит труда, не теряйте зря времени!" )
	MisResultTalk( "<t>Ну у меня вообще нет слов, Вы настоящий профессионал своего дела!" )

	MisResultCondition(HasMission, 1064)
	MisResultCondition(NoRecord,1064)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 50 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 50 )
	MisResultAction(ClearMission, 1064)
	MisResultAction(SetRecord,  1064 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1064, 1, 15 )
	RegCurTrigger( 10641 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1064, 16, 15 )
	RegCurTrigger( 10642 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1064, 31, 15 )
	RegCurTrigger( 10643 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1064, 46, 20 )
	RegCurTrigger( 10644 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1064, 66, 1 )
	RegCurTrigger( 10645 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1064, 67, 50 )
	RegCurTrigger( 10646 )

	----------------------------------------------------------

	DefineMission( 5541, "\209\239\255\249\232\233 \206\226\229\237", 1065 )
	MisBeginTalk( "<t>Есть нгодяй, мерзавец, очень плохой человек в броне из золота. Пожалуйста помогите сельским жителям Острова Купидона избавляться от него." )
				
	MisBeginCondition(NoMission, 1065)
	MisBeginCondition(HasRecord,836)
	MisBeginCondition(NoRecord,1065)
	MisBeginAction(AddMission,1065)
	MisBeginAction(AddTrigger, 10651, TE_KILL, 1009, 1)--килл овна
	
	MisCancelAction(ClearMission, 1065)

	MisNeed(MIS_NEED_DESP, " Убейте <rОвна> на о.Купидона в точке (2566, 2454)!" )
	MisNeed(MIS_NEED_KILL, 1009,1, 10, 1)
	

	MisResultTalk( "<t>И чего вы опять ждёте? Овен появляется не так уж и часто." )
	MisHelpTalk("<t>Вы мне кажитесь не победимым, я с каждой минутой всё больше и больше в Вас влюбляюсь." )
	MisResultCondition(HasMission,  1065)
	MisResultCondition(HasFlag, 1065, 10)
	MisResultCondition(NoRecord , 1065)
	MisResultAction(GiveItem, 2950, 1, 4 )
	MisResultAction(ClearMission,  1065)
	MisResultAction(SetRecord,  1065 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1009)	
	TriggerAction( 1, AddNextFlag, 1065, 10, 1 )
	RegCurTrigger( 10651 )






-------------------------------------------------овен	

	DefineMission( 5542, "\206\226\229\237 vs \195\229\240\238\233", 1066 )
	
	MisBeginTalk( "<t>Настоящий Герой должен быть знаком с Хаосом, у Вас должно быть 20 очков Хаоса." )

	MisBeginCondition(NoMission,1066)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1066)
	MisBeginAction(AddMission,1066)
	MisCancelAction(ClearMission, 1066)
	
	MisHelpTalk( "<t>Посторайтесь и у Вас получится!" )
	MisResultTalk( "<t>А я и не сомневалась что Вы сможите набить себе 20 очков Хаоса." )

	MisResultCondition(HasMission, 1066)
	MisResultCondition(NoRecord,1066)
	MisResultCondition(HasFightingPoint,20 )
	MisResultAction(TakeFightingPoint, 20 )
	MisResultAction(ClearMission, 1066)
	MisResultAction(SetRecord,  1066 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------овен	

	DefineMission( 5543, "\195\229\240\238\233 \209\235\224\226\251 \206\226\229\237\224", 1067 )
	
	MisBeginTalk( "<t>Вам необходимо иметь 1000 очков репутации. Репутацию можно получить за обучение учеников." )

	MisBeginCondition(NoMission,1067)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1067)
	MisBeginAction(AddMission,1067)
	MisCancelAction(ClearMission, 1067)
	
	MisHelpTalk( "<t>Идите и обучайте учеников, зарабатывайте себе репутацию!" )
	MisResultTalk( "<t>Нет слов, одни восхищения!" )

	MisResultCondition(HasMission, 1067)
	MisResultCondition(NoRecord,1067)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(TakeCredit, 1000 )
	MisResultAction(ClearMission, 1067)
	MisResultAction(SetRecord,  1067 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------овен	

	DefineMission( 5544, "\206\226\229\237 \221\240\238", 1068 )
	
	MisBeginTalk( "<t>Ваш уровень должен быть не меньше 65 уровня." )

	MisBeginCondition(NoMission,1068)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1068)
	MisBeginAction(AddMission,1068)
	MisCancelAction(ClearMission, 1068)
	
	MisHelpTalk( "<t>Идите и повышайте свой уровень до 65 уровня." )
	MisResultTalk( "<t>Очень хорошо!" )

	MisResultCondition(HasMission, 1068)
	MisResultCondition(NoRecord,1068)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1068)
	MisResultAction(SetRecord,  1068 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------овен

	DefineMission( 5545, "\193\235\224\227\238\240\238\228\237\251\233 \195\229\240\238\233", 1069 )
	
	MisBeginTalk( "<t>Без чести в наше время ни куда... У Вас должно быть как минимум 200 пунктов чести." )

	MisBeginCondition(NoMission,1069)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1069)
	MisBeginAction(AddMission,1069)
	MisCancelAction(ClearMission, 1069)
	
	MisHelpTalk( "<t>Возвращайтесь ко мне с честью." )
	MisResultTalk( "<t>Можно Вас поцеловать мой герой?" )

	MisResultCondition(HasMission, 1069)
	MisResultCondition(NoRecord,1069)
	MisResultCondition(HasHonorPoint,200 )
	MisResultAction(TakeHonorPoint, 200 )
	MisResultAction(ClearMission, 1069)
	MisResultAction(SetRecord,  1069 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------овен

	DefineMission( 5546, "\207\238\241\238\235", 1070 )
	
	MisBeginTalk( "<t>Помогите собрать мне эти вещи." )

	MisBeginCondition(NoMission,1070)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1070)
	MisBeginAction(AddMission,1070)
	MisBeginAction(AddTrigger, 10701, TE_GETITEM, 3116, 15 )-------------
	MisBeginAction(AddTrigger, 10702, TE_GETITEM, 1678, 15 )-------------
	MisBeginAction(AddTrigger, 10703, TE_GETITEM, 4809, 15 )-------------
	MisBeginAction(AddTrigger, 10704, TE_GETITEM, 0855, 20 )-------------
	MisBeginAction(AddTrigger, 10705, TE_GETITEM, 4503, 1 )--------------
	MisBeginAction(AddTrigger, 10706, TE_GETITEM, 1848, 40 )-------------
	MisBeginAction(AddTrigger, 10707, TE_GETITEM, 2673, 10 )-------------
	MisCancelAction(ClearMission, 1070)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )

	MisHelpTalk( "<t>Вы сможете это собрать, только не теряйте дух!" )
	MisResultTalk( "<t>А я и говорила, что это не составит труда." )

	MisResultCondition(HasMission, 1070)
	MisResultCondition(NoRecord,1070)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(ClearMission, 1070)
	MisResultAction(SetRecord,  1070 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1070, 1, 15 )
	RegCurTrigger( 10701 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1070, 16, 15 )
	RegCurTrigger( 10702 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1070, 31, 15 )
	RegCurTrigger( 10703 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1070, 46, 20 )
	RegCurTrigger( 10704 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1070, 66, 1 )
	RegCurTrigger( 10705 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1070, 67, 40 )
	RegCurTrigger( 10706 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1070, 107, 10 )
	RegCurTrigger( 10707 )

	



-------------------------------------------------	

	DefineMission( 5547, "\206\226\229\237 vs \195\229\240\238\233", 1071 )
	
	MisBeginTalk( "<t>Настоящий Герой должен быть знаком с Хаосом, у Вас должно быть 100 очков Хаоса." )

	MisBeginCondition(NoMission,1071)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1071)
	MisBeginAction(AddMission,1071)
	MisCancelAction(ClearMission, 1071)
	
	MisHelpTalk( "<t>Для Вас не должно составить труда набить 100 очков Хаоса!" )
	MisResultTalk( "<t>Для Вас не должно составить труда набить 100 очков Хаоса." )

	MisResultCondition(HasMission, 1071)
	MisResultCondition(NoRecord,1071)
	MisResultCondition(HasFightingPoint,100 )
	MisResultAction(TakeFightingPoint, 100 )
	MisResultAction(ClearMission, 1071)
	MisResultAction(SetRecord, 1071 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------овен	

	DefineMission( 5548, "\195\229\240\238\233 \209\235\224\226\251 \206\226\229\237\224", 1072 )
	
	MisBeginTalk( "<t>Вам необходимо иметь 3000 очков репутации. Репутацию можно получить за обучение учеников." )

	MisBeginCondition(NoMission,1072)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1072)
	MisBeginAction(AddMission,1072)
	MisCancelAction(ClearMission, 1072)
	
	MisHelpTalk( "<t>Ну идите же уже учите малышей, зарабатывайте репутацию!" )
	MisResultTalk( "<t>Вы хороший учитель " )

	MisResultCondition(HasMission, 1072)
	MisResultCondition(NoRecord,1072)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit, 3000 )
	MisResultAction(ClearMission, 1072)
	MisResultAction(SetRecord,  1072 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------Овен	

	DefineMission( 5549, "\206\226\229\237 \221\240\238", 1073 )
	
	MisBeginTalk( "<t>У Вас должен быть как минимум 75 уровень." )

	MisBeginCondition(NoMission,1073)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1073)
	MisBeginAction(AddMission,1073)
	MisCancelAction(ClearMission, 1073)
	
	MisHelpTalk( "<t>Не теряйте зря время, повышайте свой уровень до 75 уровня." )
	MisResultTalk( "<t>Очень хорошо, Вы мой Герой " )

	MisResultCondition(HasMission, 1073)
	MisResultCondition(NoRecord,1073)
	MisResultCondition(LvCheck, ">", 74 )
	MisResultAction(ClearMission, 1073)
	MisResultAction(SetRecord,  1073 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------овен	

	DefineMission( 5550, "\193\235\224\227\238\240\238\228\237\251\233 \195\229\240\238\233", 1074 )
	
	MisBeginTalk( "<t>Без чести в наше время ни куда... У Вас должно быть как минимум 500 пунктов чести " )

	MisBeginCondition(NoMission,1074)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1074)
	MisBeginAction(AddMission,1074)
	MisCancelAction(ClearMission, 1074)
	
	MisHelpTalk( "<t>Не крутитесь у меня под носом, идите и зарабатывайте честь." )
	MisResultTalk( "<t>Я Вас поцелую в щёчку, можно мой Герой?" )

	MisResultCondition(HasMission, 1074)
	MisResultCondition(NoRecord,1074)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1074)
	MisResultAction(SetRecord,  1074 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------овен	

	DefineMission( 5551, "\207\238\241\238\235", 1075 )
	
	MisBeginTalk( "<t>Давайте соберём для меня пару предметов." )

	MisBeginCondition(NoMission,1075)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1075)
	MisBeginAction(AddMission,1075)
	MisBeginAction(AddTrigger, 10751, TE_GETITEM, 3116, 15 )
	MisBeginAction(AddTrigger, 10752, TE_GETITEM, 1678, 15 )
	MisBeginAction(AddTrigger, 10753, TE_GETITEM, 4809, 15 )
	MisBeginAction(AddTrigger, 10754, TE_GETITEM, 0855, 20 )
	MisBeginAction(AddTrigger, 10755, TE_GETITEM, 4503, 1 )
	MisBeginAction(AddTrigger, 10756, TE_GETITEM, 1848, 40 )
	MisBeginAction(AddTrigger, 10757, TE_GETITEM, 2673, 10 )
	MisBeginAction(AddTrigger, 10758, TE_GETITEM, 0227, 4 )
	MisCancelAction(ClearMission, 1075)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 4, 117, 4 )

	MisHelpTalk( "<t>Не теряйте время зря, идите и соберите мне эти предметы!" )
	MisResultTalk( "<t>Ну вот видите, это не так уж и сложно!" )

	MisResultCondition(HasMission, 1075)
	MisResultCondition(NoRecord,1075)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )
	MisResultCondition(HasItem, 0227, 4 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(TakeItem, 0227, 4 )
	MisResultAction(ClearMission, 1075)
	MisResultAction(SetRecord,  1075 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1075, 1, 15 )
	RegCurTrigger( 10751 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1075, 16, 15 )
	RegCurTrigger( 10752 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1075, 31, 15 )
	RegCurTrigger( 10753 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1075, 46, 20 )
	RegCurTrigger( 10754 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1075, 66, 1 )
	RegCurTrigger( 10755 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1075, 67, 40 )
	RegCurTrigger( 10756 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1075, 107, 10 )
	RegCurTrigger( 10757 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1075, 117, 4 )
	RegCurTrigger( 10758 )


	

	----------------------------------------------------------овен

	DefineMission( 5552, "\206\226\229\237 \207\238\241\238\235 PKO", 1076 )
	MisBeginTalk( "<t>Вам прийдётся выполнить не простую задачу. Отказаться от всего, что бы достичь желаемой цели." )
				
	MisBeginCondition(NoMission, 1076)
	MisBeginCondition(NoRecord,1076)
	MisBeginCondition(HasRecord, 836)
	MisBeginAction(AddMission,1076)
	MisCancelAction(ClearMission, 1076)

	MisNeed(MIS_NEED_DESP, " Поговорите с Принцом-тритоном Хассаном в Шайтане в точке(1254, 3491)" )
	
	MisHelpTalk( "<t>Вам необходимо идти по коорденатам!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5553, "\207\238\241\238\235 PKO", 1076, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Вы знаете, что я самый красивый тут и самый быстрый плавец!" )
	MisResultCondition(NoRecord, 1076)
	MisResultCondition(HasMission,1076)
	MisResultAction(ClearMission,1076)
	MisResultAction(SetRecord, 1076)

	----------------------------------------------------------овен

	DefineMission( 5554, "\207\238\241\238\235 PKO 2", 1077 )
	--MisBeginTalk( "<t>Я молил Богов, что бы меня превратили в дерево в тени которого \"Она\" нежится, но п иронии судьбы Боги привратили меня в Рыбу." )
	MisBeginTalk( "<t>\223 \236\238\235\232\235 \193\238\227\238\226, \247\242\238 \225\251 \236\229\237\255 \239\240\229\226\240\224\242\232\235\232 \226 \228\229\240\229\226\238 \226 \242\229\237\232 \234\238\242\238\240\238\227\238 \"\206\237\224\" \237\229\230\232\242\241\255, \237\238 \239 \232\240\238\237\232\232 \241\243\228\252\225\251 \193\238\227\232 \239\240\232\226\240\224\242\232\235\232 \236\229\237\255 \226 \208\251\225\243." )			
	MisBeginCondition(NoMission, 1077)
	MisBeginCondition(NoRecord,1077)
	MisBeginCondition(HasRecord, 1076)
	MisBeginAction(AddMission,1077)
	MisCancelAction(ClearMission, 1077)

	MisNeed(MIS_NEED_DESP, " Отпраляйтесь в Ледынь в точку (1010, 350)" )
	
	MisHelpTalk( "<t>Я живу теперь в воде " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5555, "\207\238\241\238\235 PKO 2", 1077, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Привет! Мой посол!" )
	MisResultCondition(NoRecord, 1077 )
	MisResultCondition(HasMission, 1077 )
	MisResultAction(ClearMission, 1077 )
	MisResultAction(SetRecord, 1077 )

	----------------------------------------------------------овен

	DefineMission( 5556, "\207\238\241\238\235 PKO 3", 1078 )
	MisBeginTalk( "<t>Вы не пугаетесь моей внешности? Благослови Вас Господь." )
				
	MisBeginCondition(NoMission, 1078)
	MisBeginCondition(NoRecord,1078)
	MisBeginCondition(HasRecord, 1077)
	MisBeginAction(AddMission,1078)
	MisCancelAction(ClearMission, 1078)

	MisNeed(MIS_NEED_DESP, " Ищите Блюри в Аргенте в точке(2272, 2700)" )
	
	MisHelpTalk( "<t>Идите к старцу Блюри " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5557, "\207\238\241\238\235 PKO 3", 1078, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Все имеют право на счастье " )
	MisResultCondition(NoRecord, 1078)
	MisResultCondition(HasMission,1078)
	MisResultAction(ClearMission,1078)
	MisResultAction(SetRecord, 1078)



	----------------------------------------------------------овен


	DefineMission( 5558, "\207\238\241\238\235 PKO 4", 1079 )
	MisBeginTalk( "<t>О.. Я могуещё вызвать чувство ревности... Это для меня очень приятно. Но всё таки ищите - Шамеля. Он мудрее меня." )
				
	MisBeginCondition(NoMission, 1079)
	MisBeginCondition(NoRecord,1079)
	MisBeginCondition(HasRecord, 1078)
	MisBeginAction(AddMission,1079)
	MisCancelAction(ClearMission, 1079)

	MisNeed(MIS_NEED_DESP, " Отправляйтесь в Шайтан на поиски Шанеля в точку(664, 3093)" )
	
	MisHelpTalk( "<t>Музыка творит чудеса, не забывайте это!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission(5559, "\207\238\241\238\235 PKO 4", 1079, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Вы от Блюри?!" )
	MisResultCondition(NoRecord, 1079 )
	MisResultCondition(HasMission, 1079 )
	MisResultAction(ClearMission, 1079 )
	MisResultAction(SetRecord, 1079 )


	----------------------------------------------------------овен

	DefineMission( 5560, "\207\238\241\238\235 PKO 5", 1080 )
	MisBeginTalk("<t>Моя мечта - это сделать музыкой рай на замле!" )
				
	MisBeginCondition(NoMission, 1080)
	MisBeginCondition(NoRecord,1080)
	MisBeginCondition(HasRecord, 1079)
	MisBeginAction(AddMission,1080)
	MisCancelAction(ClearMission, 1080)

	MisNeed(MIS_NEED_DESP, " Поговорите с Лулу в Ледыне в точке(2668, 634)" )
	
	MisHelpTalk( "<t>Мечта - тень реальности " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5561, "\207\238\241\238\235 PKO 5", 1080, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Я хочу лакомиться Леденцами каждый день!" )
	MisResultCondition(NoRecord, 1080)
	MisResultCondition(HasMission,1080)
	MisResultAction(ClearMission,1080)
	MisResultAction(SetRecord, 1080)


	----------------------------------------------------------овен

	DefineMission( 5562, "\207\238\241\238\235 PKO 6", 1081 )
	MisBeginTalk( "<t>Люблю леденцы, и свою сестру, которая отводит меня в Аргент к другу, которого я так ни разу и не увидела " )
				
	MisBeginCondition(NoMission, 1081)
	MisBeginCondition(NoRecord,1081)
	MisBeginCondition(HasRecord, 1080)
	MisBeginAction(AddMission,1081)
	MisCancelAction(ClearMission, 1081)

	MisNeed(MIS_NEED_DESP, " Поговорите в Аргенте с Грегом в точке(526, 2432)" )
	
	MisHelpTalk( "<t>Пожалуйста поговорите с Грегом." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5563, "\207\238\241\238\235 PKO 6", 1081, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Вы - друг Лалу? А что с ней?" )
	MisResultCondition(NoRecord, 1081)
	MisResultCondition(HasMission,1081)
	MisResultAction(ClearMission,1081)
	MisResultAction(SetRecord, 1081)



	----------------------------------------------------------овен

	DefineMission( 5564, "\207\238\241\238\235 PKO 7", 1082 )
	MisBeginTalk( "<t>Я люблю разглядывать незнакомцев из далека и и ставить предположения кем бы мог быть этот незнакомец, но вот Велли... я до сих пор не могу понять кто же он, Вы мне не поможете?" )
				
	MisBeginCondition(NoMission, 1082)
	MisBeginCondition(NoRecord,1082)
	MisBeginCondition(HasRecord, 1081)
	MisBeginAction(AddMission,1082)
	MisCancelAction(ClearMission, 1082)

	MisNeed(MIS_NEED_DESP, " Поговорить с Велли в Шайтане(898, 3683)" )
	
	MisHelpTalk( "<t>Как я хочу что бы Велли оказался Рыцарем " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5565, "\207\238\241\238\235 PKO 7", 1082, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Я был нормальным ягнёнком, но не так давно я стал разговаривать на человеческом языке " )
	MisResultCondition(NoRecord, 1082)
	MisResultCondition(HasMission,1082)
	MisResultAction(ClearMission,1082)
	MisResultAction(SetRecord, 1082)


	----------------------------------------------------------овен

	DefineMission( 5566, "\207\238\241\238\235 PKO 8", 1083 )
	MisBeginTalk( "<t>Вы проходите задание PKO? Давайте я Вас познакомлю с одним человеком, Ваше знакомство поможет Вам!" )
				
	MisBeginCondition(NoMission, 1083)
	MisBeginCondition(NoRecord,1083)
	MisBeginCondition(HasRecord, 1082)
	MisBeginAction(AddMission,1083)
	MisCancelAction(ClearMission, 1083)

	MisNeed(MIS_NEED_DESP, " Поговорите с врачём в Аргенте в точке(1004, 2973)" )
	
	MisHelpTalk( "<t>Желаю удачи человек... Бее... Бееее...!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission(5567, "\207\238\241\238\235 PKO 8", 1083, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Мир меняется на глазах... Всё не вечно в этом мире!" )
	MisResultCondition(NoRecord, 1083)
	MisResultCondition(HasMission,1083)
	MisResultAction(ClearMission,1083)
	MisResultAction(SetRecord, 1083)


	----------------------------------------------------------овен

	DefineMission( 5568, "\207\238\241\238\235 PKO 9", 1084 )
	MisBeginTalk( "<t>Навестите Фей Фей, и чмокните её за меня." )
				
	MisBeginCondition(NoMission, 1084)
	MisBeginCondition(NoRecord,1084)
	MisBeginCondition(HasRecord, 1083)
	MisBeginAction(AddMission,1084)
	MisCancelAction(ClearMission, 1084)

	MisNeed(MIS_NEED_DESP, " Отправляйтесь в Шайтан и поговорите с Фей Фей(797, 3129)" )
	
	MisHelpTalk( "<t>Я хочу, что бы Вы отстали от меня." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5569, "\207\238\241\238\235 PKO 9", 1084, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Доктор - тихий и очень странный, но хороший человек!" )
	MisResultCondition(NoRecord, 1084)
	MisResultCondition(HasMission,1084)
	MisResultAction(ClearMission,1084)
	MisResultAction(SetRecord, 1084)

	----------------------------------------------------------овен

	DefineMission( 5572, "\207\238\241\238\235 PKO 10", 1086 )
	MisBeginTalk( "<t>Не говорите больше ни слова я люблю одну девушку, её имя - Элизабет, у меня есть приглашение на балл, я хочу её пригласить." )
				
	MisBeginCondition(NoMission, 1086)
	MisBeginCondition(NoRecord,1086)
	MisBeginCondition(HasRecord, 1084)
	MisBeginAction(AddMission,1086)
	MisCancelAction(ClearMission, 1086)

	MisNeed(MIS_NEED_DESP, " Ищите Элизабет в Заливе Сокровищ(616, 965)" )
	
	MisHelpTalk( "<t>Романтический танец... Романтический вечер...." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5573, "\207\238\241\238\235 PKO 10", 1086, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Меня приглашают на Балл? Это прекрасно." )
	MisResultCondition(NoRecord, 1086)
	MisResultCondition(HasMission,1086)
	MisResultAction(ClearMission,1086)
	MisResultAction(SetRecord, 1086)

	----------------------------------------------------------овен

	DefineMission( 5574, "\207\238\241\238\235 PKO 11", 1087 )
	MisBeginTalk( "<t>Балл уже скоро! Всё готово, за исключением... не пригласите ли Вы Генерала Кена?" )
				
	MisBeginCondition(NoMission, 1087)
	MisBeginCondition(NoRecord,1087)
	MisBeginCondition(HasRecord, 1086)
	MisBeginAction(AddMission,1087)
	MisCancelAction(ClearMission, 1087)

	MisNeed(MIS_NEED_DESP, " Ищите Генерала в Гром_граде(808, 1521)" )
	
	MisHelpTalk( "<t>Я хочу узнать тех девочек " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5575, "\207\238\241\238\235 PKO 11", 1087, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Я никогда не отклоняю приглашения от красивых девушек, Хе хе " )
	MisResultCondition(NoRecord, 1087)
	MisResultCondition(HasMission,1087)
	MisResultAction(ClearMission,1087)
	MisResultAction(SetRecord, 1087)

	----------------------------------------------------------овен

	DefineMission( 5576, "\207\238\241\238\235 PKO 12", 1088 )
	MisBeginTalk( "<t>Я обещал встретиться с Момо в Шайтане. Не скажете ей, что я приболел и не смогу с нею встретиться. а я тогда пойду готовиться к баллу." )
				
	MisBeginCondition(NoMission, 1088)
	MisBeginCondition(NoRecord,1088)
	MisBeginCondition(HasRecord, 1087)
	MisBeginAction(AddMission,1088)
	MisCancelAction(ClearMission, 1088)

	MisNeed(MIS_NEED_DESP, " Обмануть Момо в Шайтане в (1209, 3196)" )
	
	MisHelpTalk( "<t>Романтичный танец даст мне прекрасный шанс добиться ее. О моя прекрасная Элизабет..." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5577, "\207\238\241\238\235 PKO 12", 1088, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Он приболел? Вы говорите мне правду? Бедный Генерал, только час назад он был здоровым, полон счастья и веселья..." )
	MisResultCondition(NoRecord, 1088)
	MisResultCondition(HasMission,1088)
	MisResultAction(ClearMission,1088)
	MisResultAction(SetRecord, 1088)


	----------------------------------------------------------овен

	DefineMission( 5578, "\207\238\241\238\235 PKO 13", 1089 )
	MisBeginTalk( "<t>Мой друг не проч навестить Генерала, не попросите моего друга об одолжении???" )
				
	MisBeginCondition(NoMission, 1089)
	MisBeginCondition(NoRecord,1089)
	MisBeginCondition(HasRecord, 1088)
	MisBeginAction(AddMission,1089)
	MisCancelAction(ClearMission, 1089)

	MisNeed(MIS_NEED_DESP, " Поговорить с Берри в Аргенте в (1893, 2812)" )
	
	MisHelpTalk( "<t>Берри станет поэтом... я в этом просто уверена." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5579, "\207\238\241\238\235 PKO 13", 1089, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Хм... говорите Генерал заболел, странно, странно, но мы его не оставим одного в эту трудную минуту!" )
	MisResultCondition(NoRecord, 1089)
	MisResultCondition(HasMission,1089)
	MisResultAction(ClearMission,1089)
	MisResultAction(SetRecord, 1089)

	----------------------------------------------------------овен

	DefineMission( 5580, "\207\238\241\238\235 PKO 14", 1090 )
	MisBeginTalk( "<t>Плохо, Генерал если болен это очень плохо, я отправлю к нему Ваню." )
				
	MisBeginCondition(NoMission, 1090)
	MisBeginCondition(NoRecord,1090)
	MisBeginCondition(HasRecord, 1089)
	MisBeginAction(AddMission,1090)
	MisCancelAction(ClearMission, 1090)

	MisNeed(MIS_NEED_DESP, " Поговорите с Ваней в Ледыне в (1380, 523)" )
	
	MisHelpTalk( "<t>Ваня живёт в Ледыне!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен
       
	DefineMission( 5581, "\207\238\241\238\235 PKO 14", 1090, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Можете мне не врать, я уже знаю что Генерал променял Момо на танец с Элизабет, меня тоже любили красавцы когда я была молодой." )
	MisResultCondition(NoRecord, 1090)
	MisResultCondition(HasMission,1090)
	MisResultAction(ClearMission,1090)
	MisResultAction(SetRecord, 1090)

	----------------------------------------------------------овен

	DefineMission( 5582, "\207\238\241\238\235 PKO 15", 1091 )
	MisBeginTalk( "<t>У меня болят ноги, навестите Дона Пита от моего лица и я не расскажу Момо о Вашей лжи!" )
				
	MisBeginCondition(NoMission, 1091)
	MisBeginCondition(NoRecord,1091)
	MisBeginCondition(HasRecord, 1090)
	MisBeginAction(AddMission,1091)
	MisCancelAction(ClearMission, 1091)

	MisNeed(MIS_NEED_DESP, "Поговорите с Дон Питом в Аргенте(1113, 2779)" )
	
	MisHelpTalk( "<t>Как же не хорошо обманывать людей, тем более когда один из них по настоящему любит!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5583, "\207\238\241\238\235 PKO 15", 1091, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Винн заболела? Ноги болят? Что мне сделать, что бы помочь ей?" )
	MisResultCondition(NoRecord, 1091)
	MisResultCondition(HasMission,1091)
	MisResultAction(ClearMission,1091)
	MisResultAction(SetRecord, 1091)


	----------------------------------------------------------овен

	DefineMission( 5584, "\207\238\241\238\235 PKO 16", 1092 )
	MisBeginTalk( "<t>Всё дела, дела, совсем нету ни на что времени." )
				
	MisBeginCondition(NoMission, 1092)
	MisBeginCondition(NoRecord,1092)
	MisBeginCondition(HasRecord, 1091)
	MisBeginAction(AddMission,1092)
	MisCancelAction(ClearMission, 1092)

	MisNeed(MIS_NEED_DESP, " Отправляйтесь в Ледынь в точку(2134, 555)" )
	
	MisHelpTalk( "<t>Я полагаю, что Оракул поймет!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5585, "\207\238\241\238\235 PKO 16", 1092, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Если бы я смог исправить все ошибки сделанные ранее..." )
	MisResultCondition(NoRecord, 1092)
	MisResultCondition(HasMission,1092)
	MisResultAction(ClearMission,1092)
	MisResultAction(SetRecord, 1092)


	----------------------------------------------------------овен

	DefineMission( 5586, "\207\238\241\238\235 PKO 17", 1093 )
	MisBeginTalk( "<t>Проклятый Дуриан...Проклятый Дуриан...Проклятый Дуриан..." )
				
	MisBeginCondition(NoMission, 1093)
	MisBeginCondition(NoRecord,1093)
	MisBeginCondition(HasRecord, 1092)
	MisBeginAction(AddMission,1093)
	MisCancelAction(ClearMission, 1093)

	MisNeed(MIS_NEED_DESP, "Отыщите Дуриана в Аргенте в точке(1535, 3071)" )
	
	MisHelpTalk( "<t>Дурио походит на ребенка. Он всегда мечтает " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5587, "\207\238\241\238\235 PKO 17", 1093, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>А меня моя болезнь не смущает ни капельки, я из-за неё стройный и меня вполне всё устраивает..." )
	MisResultCondition(NoRecord, 1093)
	MisResultCondition(HasMission,1093)
	MisResultAction(ClearMission,1093)
	MisResultAction(SetRecord, 1093)

	----------------------------------------------------------овен

	DefineMission( 5588, "\207\238\241\238\235 PKO 18", 1094 )
	MisBeginTalk( "<t>Не имея свободного времен из-за постоянных дел, я не могу даже навестить <bНану>, Не навестите <bНану> от моего имени." )
				
	MisBeginCondition(NoMission, 1094)
	MisBeginCondition(NoRecord,1094)
	MisBeginCondition(HasRecord, 1093)
	MisBeginAction(AddMission,1094)
	MisCancelAction(ClearMission, 1094)

	MisNeed(MIS_NEED_DESP, "Поговорите с <bНаной> в Ледыне(798, 369)" )
	
	MisHelpTalk( "<t>А всётаки я бы не отказался от лишних килограммов в весе." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5589, "\207\238\241\238\235 PKO 18", 1094, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Я очень ревнив " )
	MisResultCondition(NoRecord, 1094)
	MisResultCondition(HasMission,1094)
	MisResultAction(ClearMission,1094)
	MisResultAction(SetRecord, 1094)

	----------------------------------------------------------овен

	DefineMission( 5590, "\207\238\241\238\235 PKO 19", 1095 )
	MisBeginTalk( "<t>Я был занят. Писал поэмы. Не поможете мне? Передайте моё сообщение <bЮрию>." )
				
	MisBeginCondition(NoMission, 1095)
	MisBeginCondition(NoRecord,1095)
	MisBeginCondition(HasRecord, 1094)
	MisBeginAction(AddMission,1095)
	MisCancelAction(ClearMission, 1095)

	MisNeed(MIS_NEED_DESP, " Ищите Юрия в  (622, 2106)" )
	
	MisHelpTalk( "<t>Гомер - самый великий поэт всех времён и народов!" )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission(5591, "\207\238\241\238\235 PKO 19", 1095, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Ах Морщины! Ах " )
	MisResultCondition(NoRecord, 1095)
	MisResultCondition(HasMission,1095)
	MisResultAction(ClearMission,1095)
	MisResultAction(SetRecord, 1095)


-------------------------------------------------------------------------------овен

	DefineMission( 5592, "\207\238\241\238\235 PKO 20", 1096 )
	MisBeginTalk( "<t>Однажды я был в море и на нас напало ужасное чудовище, и если бы не тот добрый человек, я бы с вами сейчас не разговаривал, пожалуйста скажите ему ещё раз спасибо от меня." )
				
	MisBeginCondition(NoMission, 1096)
	MisBeginCondition(NoRecord,1096)
	MisBeginCondition(HasRecord, 1095)
	MisBeginAction(AddMission,1096)
	MisCancelAction(ClearMission, 1096)

	MisNeed(MIS_NEED_DESP, " Отблагодарите Портальщика Абаддона в (690, 1043)" )
	
	MisHelpTalk( "<t>Спасибо, идите же, идите." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5593, "\207\238\241\238\235 PKO 20", 1096, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Хм... Это было очень давно... Я польщён и удивлён, что он ещё это помнит!" )
	MisResultCondition(NoRecord, 1096)
	MisResultCondition(HasMission,1096)
	MisResultAction(ClearMission,1096)
	MisResultAction(SetRecord, 1096)

----------------------------------------------------------овен

	DefineMission( 5594, "\207\238\241\238\235 PKO 21", 1097 )
	MisBeginTalk( "<t>Хотите меня отблагодарить? Хорошо поговорите с Портальщиком на небо, он мне должен кое что, он поймёт, Вы только ему напомните обо мне." )
				
	MisBeginCondition(NoMission, 1097)
	MisBeginCondition(NoRecord,1097)
	MisBeginCondition(HasRecord, 1096)
	MisBeginAction(AddMission,1097)
	MisCancelAction(ClearMission, 1097)

	MisNeed(MIS_NEED_DESP, " Поговорите с Небесным Портальщиком в(474, 1054)" )
	
	MisHelpTalk( "<t>Может долги соберу..." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5595, "\207\238\241\238\235 PKO 21", 1097, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Вот он мелочный... Я и должен тоему гроши... Ну и люди." )
	MisResultCondition(NoRecord, 1097)
	MisResultCondition(HasMission,1097)
	MisResultAction(ClearMission,1097)
	MisResultAction(SetRecord, 1097)

	----------------------------------------------------------овен

	DefineMission( 5596, "\195\229\240\238\233 PKO 22", 1098 )
	MisBeginTalk( "<t>Поздравляю! Вы зкончили путишествия по миру пиратии, я слышал Вас ищет<bСинди>." )
				
	MisBeginCondition(NoMission, 1098)
	MisBeginCondition(NoRecord,1098)
	MisBeginCondition(HasRecord, 1097)
	MisBeginAction(AddMission,1098)
	MisCancelAction(ClearMission, 1098)

	MisNeed(MIS_NEED_DESP, " Вернитесь и поговорите с Синди в (740, 1451)" )
	
	MisHelpTalk("<t>I am the one in debt at this time of the year")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------овен

	DefineMission( 5597, "\195\229\240\238\233 PKO 22", 1098, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Поздравляю! Вы прошли тест PKO, вот Ваша награда!" )
	MisResultCondition(NoRecord, 1098)
	MisResultCondition(HasMission,1098)
	MisResultAction(ClearMission,1098)
	MisResultAction(SetRecord, 1098)
	MisResultAction(GiveItem, 2949, 1, 4)
	MisResultBagNeed(1)




	

	-------------------------------------------------овен	

	DefineMission( 5600, "\209\239\229\246\232\224\235\252\237\224\255 \206\239\229\240\224\246\232\255 - \206\226\229\237", 1101 )
	
	MisBeginTalk( "<t>Эти задания по желанию игроков: <rУбить 99 Волшебных кустов за 15 минут>. Пройдите и их, что бы получить приз." )

	MisBeginCondition(NoMission,1101)
	MisBeginCondition(NoRecord,1101)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(HasRecord,1071)
	MisBeginCondition(HasRecord,1072)
	MisBeginCondition(HasRecord,1073)
	MisBeginCondition(HasRecord,1074)
	MisBeginCondition(HasRecord,1075)
	MisBeginCondition(HasRecord,1065)
	MisBeginCondition(HasRecord,1098)
	MisBeginAction(AddMission,1101)
	MisBeginAction(AddChaItem3, 2952)---------Карта специальной операции
	MisBeginAction(AddTrigger, 11011, TE_KILL, 75, 99 )
	MisCancelAction(ClearMission, 1101)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_KILL, 75, 99, 1, 99)

	MisHelpTalk( "<t>Поторопитесь! У Вас всего 15 минут на всё про всё!" )
	MisResultTalk( "<t>Нормально, даже хорошо." )


	MisResultCondition(HasMission, 1101)
	MisResultCondition(NoRecord,1101)
	MisResultCondition(HasFlag, 1101, 99 )
	MisResultAction(AddChaItem4, 2952)----Карта специальной операции
	MisResultAction(ClearMission, 1101)
	MisResultAction(SetRecord,  1101 )
	MisResultAction(GiveItem, 2955, 1, 4)------------Сундук с украшениями капитана овна
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 1101, 1, 99 )
	RegCurTrigger( 11011 )





	----------------------------------------------------------Фрукты Дурака апреля

	DefineMission( 5601, "\212\240\243\234\242\251 \196\243\240\224\234\224 \224\239\240\229\235\255", 1102 )

	MisBeginTalk( "<t>Сегодня - день Дурака! Я люблю шутить в этот день. Вы тоже весельчак? Хорошо, давайте веселиться вместе. Вот Вам первая задача: Соберите 99 Эльфийских Фруктов!" )
	MisBeginCondition(NoRecord, 1102)
	MisBeginCondition(NoMission, 1102)
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginAction(AddMission, 1102)
	MisBeginAction(AddTrigger, 11021, TE_GETITEM, 3116, 100 )		
	MisCancelAction(ClearMission, 1102)
	
	MisNeed(MIS_NEED_ITEM, 3116, 100, 10, 100)

	MisResultTalk( "<t>Вы поняли мою шутку, Вы заслужили подарок от меня." )
	MisHelpTalk( "<t>Ну подумайте, может я Вас обманываю о количестве Эльфийских фруктов!" )
	MisResultCondition(HasMission, 1102)
	MisResultCondition(HasItem, 3116, 100 )
	MisResultAction(TakeItem, 3116, 100 )
	MisResultAction(ClearMission, 1102)
	MisResultAction(SetRecord, 1102 )
	MisResultAction(GiveItem, 2953, 1, 4)------------Первоапрельский подарок
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1102, 10, 100 )
	RegCurTrigger( 11021 )



	------------------------------------------------------Глупая Щедрость

	DefineMission( 5602, "\195\235\243\239\224\255 \217\229\228\240\238\241\242\252", 1103)

	MisBeginTalk( "<t>Я хотел бы взять в займы у Вас немного денег, у меня Малыш идёт на праздник, а денег на развлечения нет. Дайте мне 1.000.000 золота! Отдам. Честно!" )
	MisBeginCondition(NoRecord, 1103)
	MisBeginCondition(HasRecord, 1102)
	MisBeginCondition(NoMission, 1103)
	MisBeginAction(AddMission, 1103)	
	MisCancelAction(ClearMission, 1103)
	
	MisResultTalk( "<t>Вы думаете я Вам его отдам?! Ха ха ха... Вы наивный человек!" )
	MisHelpTalk( "<t>Да не мелочитесь, я разве похож на того кто посмеет Вас обмануть?" )
	MisResultCondition(HasMission, 1103)
	MisResultCondition(HasMoney, 1000000 )
	MisResultAction(TakeMoney, 1000000 )
	MisResultAction(ClearMission, 1103)
	MisResultAction(SetRecord, 1103 )



	------------------------------------------------------Глупая Смерть

	DefineMission( 5603, "\195\235\243\239\224\255 \209\236\229\240\242\252", 1104 )

	MisBeginTalk( "<t>Ой какой наивный! Ай я яй! Нельзя быть таким наивным... Нельзя! Как же я Вам отдам деньги? А вот! Придумал, Умрите 50 раз от рук <rПиратов о.Удачи> и тогда я Вам отдам Ваши деньги. Даже увеличу их количество в 5 раз." )
	MisBeginCondition(NoRecord, 1104)
	MisBeginCondition(HasRecord, 1103)
	MisBeginCondition(NoMission, 1104)
	MisBeginCondition(HaveNoItem, 2954)
	MisBeginAction(AddMission, 1104)	
	MisBeginAction(GiveItem, 2954, 1, 4)------------Доказательство смерти
	MisCancelAction(ClearMission, 1104)
	MisBeginBagNeed(1)
	
	MisResultTalk( "<t>Ну Вы и наивный... Ха-ха-ха-ха... А если я бы сказал 100раз умереть от рук Кактусов в Аргенте, Вы бы искали эти кактусы?" )
	MisHelpTalk( "<t>Ну что Вам стоит умереть? Это же игра!" )
	MisResultCondition(HasMission, 1104)
	MisResultCondition(CheckPoint, 2954 )
	MisResultAction(TakeItem, 2954,1,4)
	MisResultAction(GiveItem, 0853,1,4)--Журнал Счастливый отдых
	MisResultAction(ClearMission, 1104)
	MisResultAction(SetRecord, 1104 )
	MisResultBagNeed(1)


----------------------------------------------------

	DefineMission( 6015, "\202\242\238 \242\224\234\238\233 \195\243\224\240\228\232\237", 1013, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk( "<t>У меня постоянно проблемы из-за татуеровки!" )
	MisResultCondition(NoRecord, 1013)
	MisResultCondition(HasMission, 1013)
	MisResultAction(SetRecord, 1013)
	MisResultAction(ClearMission, 1013)

----------------------------------------------------реберн

	DefineMission( 6016, "\198\229\241\242\234\232\233? \200\235\232 \237\229\239\240\232\255\242\237\251\233?", 1014 )
	MisBeginTalk( "<t>Путь к перерождению ни когда небыл лёгким. Поговорите с Албудой." )
	MisBeginCondition(NoRecord, 1014)
	MisBeginCondition(NoMission, 1014)
	MisBeginCondition(HasRecord, 1013)
	MisBeginAction(AddMission, 1014)
	MisCancelAction(ClearMission, 1014)

	MisNeed(MIS_NEED_DESP, "<t>Ищите Вождя Клана Альбуду ")
	MisHelpTalk( "<t>Ищите её в Шайтане." )

	MisResultCondition(AlwaysFailure)



-----------------------------------------------------реберн

	DefineMission( 6017, "\198\229\241\242\234\232\233? \200\235\232 \240\224\231\228\240\224\230\224\254\249\232\233?", 1014, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>Вы уверены в своём выборе? Если в будующем Вы передумаете это уже будет стоить денег " )
	MisResultCondition(NoRecord, 1014)
	MisResultCondition(HasMission, 1014)
	MisResultCondition(HasRecord, 1059)
	MisResultAction(ClearMission, 1014)
	MisResultAction(SetRecord, 1014)

-----------------------------------------------------реберн

	DefineMission( 6018, "\207\240\238\228\238\235\230\232\242\229 \207\229\240\229\240\238\230\228\229\237\232\255", 1017 )--Продолжите Перерождения
	MisBeginTalk( "<t>Вы выбрали свой путь. Ищите Тинка. Он поможет Вам." )
	MisBeginCondition(NoRecord, 1017)
	MisBeginCondition(NoMission, 1017)
	MisBeginCondition(HasRecord, 1014)
	MisBeginAction(AddMission, 1017)
	MisCancelAction(ClearMission, 1017)

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Тинком " )
	MisHelpTalk( "<t>Поговорите с Тинком." )

	MisResultCondition(AlwaysFailure)

----------------------------------------------------реберн

	DefineMission( 6019, "\207\240\238\228\238\235\230\232\242\229 \207\229\240\229\240\238\230\228\229\237\232\255", 1017, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure)
	MisResultTalk( "<t>Вы выбрали свой путь? Позвольте нам продолжать!" )
	MisResultCondition(NoRecord, 1017)
	MisResultCondition(HasMission, 1017)
	MisResultAction(ClearMission, 1017)
	MisResultAction(SetRecord, 1017)

-----------------------------------------------------реберн---Трудные путь

	DefineMission( 6020, "\210\240\243\228\237\251\229 \239\243\242\252", 1018 )
	MisBeginTalk( "<t>Так как Вы выбрали тяжёлый путь к перерождению, я Вам буду помогать." )
	MisBeginCondition(NoRecord,1000)
	MisBeginCondition(HasRecord,1017)
	MisBeginCondition(HasRecord,1015)
	MisBeginCondition(NoRecord,1018)
	MisBeginCondition(NoMission,1018)
	MisBeginAction(AddMission,1018)
	MisBeginAction(AddTrigger, 10181, TE_KILL,678, 1)--Глава снежного люда
	MisBeginAction(AddTrigger, 10182, TE_KILL,679, 1)--Блуждающая душа
	MisBeginAction(AddTrigger, 10183, TE_KILL,789, 1)--Черный дракон
	MisCancelAction(ClearMission,1018)

	MisNeed(MIS_NEED_DESP, " Мне нужно знать что Вы убили: <rГлаву снежного люда>, <rБлуждающую душу>, <rЧерного дракона>." )
	MisNeed(MIS_NEED_KILL, 678, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 679, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 789, 1, 30, 1)

	MisHelpTalk( "<t>Одному сложно, ищите помощь!" )
	MisResultTalk("<t>О! Не вероятно, но как я вижу это - Факт, Вы настоящий Герой!" )
	MisResultCondition(HasMission,1018)
	MisResultCondition(NoRecord,1018)
	MisResultCondition(HasFlag, 1018, 10)
	MisResultCondition(HasFlag, 1018, 20)
	MisResultCondition(HasFlag, 1018, 30)
	MisResultAction(SetRecord,1018)
	MisResultAction(SetRecord,1056)
	MisResultAction(ClearMission,1018)
	MisResultAction(GiveItem, 2229, 1, 4)
	MisResultAction(GiveItem, 2230, 1, 4)
	MisResultAction(GiveItem, 2231, 1, 4)
	MisResultAction(GiveItem, 2232, 1, 4)
	MisResultAction(GiveItem, 2233, 1, 4)
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1018, 10, 1 )
	RegCurTrigger( 10181 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1018, 20, 1 )
	RegCurTrigger( 10182 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1018, 30, 1 )
	RegCurTrigger( 10183 )

------------------------------------------------реберн

	DefineMission( 6021, "\194\240\229\236\255 \194\251\231\238\226\224", 1019 )
	MisBeginTalk( "<t>Вы выбрли долгий и нудный путь к перерождению, Вы должны будете справиться за 30 минут с поставленной Вам задачей!" )
	MisBeginCondition( NoRecord, 1000)
	MisBeginCondition( NoRecord, 1019)
	MisBeginCondition( NoMission, 1019)
	MisBeginCondition( HasRecord, 1017)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1019)
	MisCancelAction(ClearMission,1019)

	MisNeed(MIS_NEED_DESP, " У Вас 30 минут " )

	MisHelpTalk( "<t>Если на таймере <bПисьма молодца> будет меньше 1800 секунд - это значит, что Вы справелись!" )
	MisResultTalk( "<t>Это - так, Забава!" )
	MisResultCondition( HasItem, 2912, 1)--Письмо молодца
	MisResultCondition( LessTime, 1800)
	MisResultCondition( NoRecord, 1019)
	MisResultCondition( HasMission, 1019)
	MisResultAction( SetRecord, 1019)
	MisResultAction( ClearMission, 1019)


----------------------------------------------реберн

	DefineMission( 6022, "\194\240\229\236\255 \194\251\231\238\226\224", 1020 )
	MisBeginTalk( "<t>Можете начать, но мой Вам совет - \"Начинайте в пол восьмого, что бы закончить в 8\"." )
	MisBeginCondition( NoRecord, 1020)
	MisBeginCondition( NoMission, 1020)
	MisBeginCondition( HasRecord, 1019)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1020)
	MisCancelAction( ClearMission, 1020)

	MisNeed(MIS_NEED_DESP, " Вы должны закончить между 7 и 8 часами!" )

	MisHelpTalk( "<t>Счётчик в <bПисьме Молодца> должен быть ммежду 25200 секунд и  28800 секунд. Если Будет больше или меньше - Вы не пройдёте задание!" )
	MisResultTalk( "<t>Вы не довольны результатом? Вроде не плохо!" )
	MisResultCondition( MoreTime, 25200)
	MisResultCondition( LessTime, 28800)
	MisResultCondition( NoRecord, 1020)
	MisResultCondition( HasMission, 1020)
	MisResultAction( SetRecord, 1020)
	MisResultAction( ClearMission, 1020)



-------------------------------------------------реберн

	DefineMission( 6023, "\194\240\229\236\255 \194\251\231\238\226\224", 1021 )
	MisBeginTalk( "<t>Попробуйте ещё раз. Вы будете должны закончить поездку между 5 часами к 5.5 часам." )
	MisBeginCondition( NoRecord, 1021)
	MisBeginCondition( NoMission, 1021)
	MisBeginCondition( HasRecord, 1020)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1021)
	MisCancelAction( ClearMission, 1021)

	MisNeed(MIS_NEED_DESP, " У Вас на всё про Всё 30 минут " )

	MisHelpTalk( "<t>Если на таймере <bПисьма молодца> будет меньше 1800 секунд - это значит, что Вы справелись!" )
	MisResultTalk( "<t>Я Ценю Вашу настойчивость!" )
	MisResultCondition( LessTime, 19800)
	MisResultCondition( MoreTime, 18000)
	MisResultCondition( NoRecord, 1021)
	MisResultCondition( HasMission, 1021)

	MisResultAction( SetRecord, 1021)
	MisResultAction( ClearMission, 1021)

-----------------------------------------------реберн

	DefineMission( 6024, "\207\238\241\232\249\229\237\232\229 \206\239\229\234\243\237\224 \195\240\238\236-\195\240\224\228\224", 1022 )
	MisBeginTalk( "<t>Опекун в замке Гром-Града, защитите его." )
	MisBeginCondition( NoRecord, 1022)
	MisBeginCondition( NoMission, 1022)
	MisBeginCondition( HasRecord, 1021)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1022)
	MisCancelAction( ClearMission, 1022)

	MisNeed(MIS_NEED_DESP, " Ищите опекуна в Гром-Граде " )
	MisHelpTalk( "<t>Ищите опекуна в Гром-Граде " )

	MisResultCondition(AlwaysFailure)

-------------------------------------------------реберн

	DefineMission( 6025, "\207\238\241\232\249\229\237\232\229 \206\239\229\234\243\237\224 \195\240\238\236-\195\240\224\228\224", 1022, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk( "<t>Вы - наконец здесь!" )
	MisResultCondition( NoRecord, 1022)
	MisResultCondition( HasMission, 1022)
	MisResultAction( SetRecord, 1022)
	MisResultAction( ClearMission, 1022)
--
---------------------------------------------------сражение во дворце овна

	DefineMission( 6026, "\209\240\224\230\229\237\232\229 \226\238 \196\226\240\238\246\229 \206\226\237\224", 1023)
	MisBeginTalk( "<t>Колесо фартуны начало крутиться! Заходите в врата и ищите Печать овна!" )
	MisBeginCondition( NoRecord, 1023)
	MisBeginCondition( NoMission, 1023)
	MisBeginCondition( HasRecord, 1022)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1023)
	MisBeginAction(AddTrigger, 10231, TE_GETITEM, 2942, 1 )--печать овна
	MisCancelAction( ClearMission, 1023)

	MisNeed(MIS_NEED_DESP, " Будьте одеты в одежду Овна и принисите Печать Овна в Гром-Град Юте." )
	MisNeed(MIS_NEED_ITEM, 2942, 1, 10 ,1)

	MisHelpTalk( "<t>Наденьтесь в Одежду Овна, что бы поприветствовать меня." )
	MisResultTalk( "<t>Вы действительно избранный!" )
	MisResultCondition( HasItem, 2942, 1)
	MisResultCondition( BaiyangOn )
	MisResultAction( SetRecord, 1023)
	MisResultAction( ClearMission, 1023)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2942)	
	TriggerAction( 1, AddNextFlag, 1023, 10, 1 )
	RegCurTrigger( 10231 )

----------------------------------------------------

	DefineMission( 6027, "\207\238\241\229\242\232\242\229 \238\239\229\234\243\237\224 \216\224\233\242\224\237\224", 1024 )
	MisBeginTalk( "<t>Ищите следующего опекуна в песчаном городе." )
	MisBeginCondition( NoRecord, 1024)
	MisBeginCondition( NoMission, 1024)
	MisBeginCondition( HasRecord, 1023)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1024)
	MisCancelAction( ClearMission, 1024)

	MisNeed(MIS_NEED_DESP, " Посетите опекуна Города Шайтана." )
	MisHelpTalk( "<t>Отправляйтесь в Шайтан." )
	
	MisResultCondition(AlwaysFailure)

-------------------------------------------------------Посетите опекуна Шайтана

	DefineMission( 6028, "\207\238\241\229\242\232\242\229 \238\239\229\234\243\237\224 \216\224\233\242\224\237\224", 1024, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Если я и не выгляжу силачём, не игнорируйте меня!" )
	MisResultCondition( NoRecord, 1024)
	MisResultCondition( HasMission, 1024)
	MisResultAction( SetRecord, 1024)
	MisResultAction( ClearMission, 1024)

-----------------------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6029, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1025 )
	MisBeginTalk( "<t>У Вас есть истории, которыми Вы бы могли удивить? Позвольте мне предложить Вам поездку, полную опасностей и приключений. Вы повстречаетесь с разными людьми за время Вашего путишествия, они будут смотреть на Вашу репутацию, и если у Вас её не будет. они просто не захотят с Вами говорить. Отправляйесь в Аргент к Шахтам и найдите Кентаро." )
	MisBeginCondition( NoMission, 1025)
	MisBeginCondition( NoRecord, 1025)
	MisBeginCondition( HasRecord, 1024)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1025)
	MisCancelAction( ClearMission, 1025)

	MisNeed(MIS_NEED_DESP, " Ищите Кетаро у Шахт, но Ваша репутация должна быть не меньше 500." )
	MisHelpTalk( "<t>Кентаро можно найти у Шахт " )

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------Кругосветное путешествие

	DefineMission( 6030, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1025, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь!" )
	MisResultCondition( NoRecord, 1025)
	MisResultCondition( HasMission, 1025)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1025)
	MisResultAction( ClearMission, 1025)

----------------------------------------------------------Кругосветное путешествие

	DefineMission( 6031, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1026 )
	MisBeginTalk( "<t>Следующая остановка - Роща Акаций. Отыщите Минелли в Роще." )
	MisBeginCondition( NoMission, 1026)
	MisBeginCondition( NoRecord, 1026)
	MisBeginCondition( HasRecord, 1025)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1026)
	MisCancelAction( ClearMission, 1026)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации!" )
	MisHelpTalk( "<t>Минелли можно найти в Роще Акаций." )

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------Кругосветное путешествие

	DefineMission( 6032, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1026, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь!" )
	MisResultCondition( NoRecord, 1026)
	MisResultCondition( HasMission, 1026)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1026)
	MisResultAction( ClearMission, 1026)

------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6033, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1027 )
	MisBeginTalk( "<t>Следующая остановка -  Атлантида. Ищите Вилли." )
	MisBeginCondition( NoMission, 1027)
	MisBeginCondition( NoRecord, 1027)
	MisBeginCondition( HasRecord, 1026)
	MisBeginCondition( HasRecord, 1016)
 	MisBeginAction( AddMission,1027)
	MisCancelAction( ClearMission, 1027)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации " )
	MisHelpTalk( "<t>Ищите Вилли в Ледыне. Не теряйте даром время " )

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------Кругосветное путешествие

	DefineMission( 6034, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1027, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь!" )
	MisResultCondition( NoRecord, 1027)
	MisResultCondition( HasMission, 1027)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1027)
	MisResultAction( ClearMission, 1027)

-------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6035, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1028 )
	MisBeginTalk( "<t>Отправляйтесь в Валагалу. Поговорите с Профессором Фенни." )
	MisBeginCondition( NoMission, 1028)
	MisBeginCondition( NoRecord, 1028)
	MisBeginCondition( HasRecord, 1027)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1028)
	MisCancelAction( ClearMission, 1028)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации " )
	MisHelpTalk( "<t>Отправляйтесь в Валагалу " )

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6036, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1028, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь " )
	MisResultCondition( NoRecord, 1028)
	MisResultCondition( HasMission, 1028)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1028)
	MisResultAction( ClearMission, 1028)

-----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6037, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1029 )
	MisBeginTalk( "<t>Отправляйтесь в Оазис к Дитаро " )
	MisBeginCondition( NoMission, 1029)
	MisBeginCondition( NoRecord, 1029)
	MisBeginCondition( HasRecord, 1028)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1029)
	MisCancelAction( ClearMission, 1029)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации " )
	MisHelpTalk( "<t>Вас Ждёт Дитаро в Оазисе " )

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6038, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1029, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь " )
	MisResultCondition( NoRecord, 1029)
	MisResultCondition( HasMission, 1029)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1029)
	MisResultAction( ClearMission, 1029)

--------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6039, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1030 )
	MisBeginTalk( "<t>Ищите Лулу в Ледыне!" )
	MisBeginCondition( NoMission, 1030)
	MisBeginCondition( NoRecord, 1030)
	MisBeginCondition( HasRecord, 1029)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1030)
	MisCancelAction( ClearMission, 1030)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации " )
	MisHelpTalk( "<t>Лулу ждёт Вас в Ледяном Шипе " )

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6040, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1030, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь " )

	MisResultCondition( NoRecord, 1030)
	MisResultCondition( HasMission, 1030)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1030)
	MisResultAction( ClearMission, 1030)

----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6041, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1031 )
	MisBeginTalk( "<t>Следующая остановка в Скалистом Уделе " )
	MisBeginCondition( NoMission, 1031)
	MisBeginCondition( NoRecord, 1031)
	MisBeginCondition( HasRecord, 1030)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1031)
	MisCancelAction( ClearMission, 1031)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации " )
	MisHelpTalk( "<t>Дуриан ждёт Вас в Скалистом Уделе " )

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6042, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1031, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь " )
	MisResultCondition( NoRecord, 1031)
	MisResultCondition( HasMission, 1031)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1031)
	MisResultAction( ClearMission, 1031)

----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6043, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1032 )
	MisBeginTalk( "<t>Отправляйтесь к Линде, она ждёт Вас в Обители Радости " )
	MisBeginCondition( NoMission, 1032)
	MisBeginCondition( NoRecord, 1032)
	MisBeginCondition( HasRecord, 1031)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1032)
	MisCancelAction( ClearMission, 1032)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации " )
	MisHelpTalk( "<t>Линда в Обителе Радости " )

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6044, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1032, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь " )
	MisResultCondition( NoRecord, 1032)
	MisResultCondition( HasMission, 1032)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3128, 10, 4)
	MisResultAction( SetRecord, 1032)
	MisResultAction( ClearMission, 1032)
	MisResultBagNeed(1)


-----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6045, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1033 )
	MisBeginTalk( "<t>Ищите Ксеуса в Береге Скелетов " )
	MisBeginCondition( NoMission, 1033)
	MisBeginCondition( NoRecord, 1033)
	MisBeginCondition( HasRecord, 1032)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1033)
	MisCancelAction( ClearMission, 1033)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации " )
	MisHelpTalk( "<t>Ксенус на острове Скелетов " )

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6046, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1033, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь " )
	MisResultCondition( NoRecord, 1033)
	MisResultCondition( HasMission, 1033)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1033)
	MisResultAction( ClearMission, 1033)

------------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6047, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1034 )
	MisBeginTalk( "<t>Следующая остановка в Холдее, ищите Юрия " )
	MisBeginCondition( NoMission, 1034)
	MisBeginCondition( NoRecord, 1034)
	MisBeginCondition( HasRecord, 1033)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1034)
	MisCancelAction( ClearMission, 1034)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации " )
	MisHelpTalk( "<t>Юрий в Холдее " )

	MisResultCondition(AlwaysFailure)

-------------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6048, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1034, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь " )
	MisResultCondition( NoRecord, 1034)
	MisResultCondition( HasMission, 1034)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1034)
	MisResultAction( ClearMission, 1034)

-------------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6049, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1035 )
	MisBeginTalk( "<t>Отправляйтесь в Ледынь и ищите в одной из деревень Нану " )
	MisBeginCondition( NoMission, 1035)
	MisBeginCondition( NoRecord, 1035)
	MisBeginCondition( HasRecord, 1034)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1035)
	MisCancelAction( ClearMission, 1035)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации " )
	MisHelpTalk( "<t>Нана где то в Ледыне " )

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6050, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1035, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь " )
	MisResultCondition( NoRecord, 1035)
	MisResultCondition( HasMission, 1035)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1035)
	MisResultAction( ClearMission, 1035)

----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6051, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1036 )
	MisBeginTalk( "<t>Отыщите в Андийском Лесу Доктора Минора " )
	MisBeginCondition( NoMission, 1036)
	MisBeginCondition( NoRecord, 1036)
	MisBeginCondition( HasRecord, 1035)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1036)
	MisCancelAction( ClearMission, 1036)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации " )
	MisHelpTalk( "<t>Доктор Минора в Адийском Лесу " )

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6052, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1036, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы турист? Раслабтесь " )
	MisResultCondition( NoRecord, 1036)
	MisResultCondition( HasMission, 1036)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3139, 10, 4)
	MisResultAction( SetRecord, 1036)
	MisResultAction( ClearMission, 1036)
	MisResultBagNeed(1)


----------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6053, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1037 )
	MisBeginTalk("<t>Ваше путишествие подошло к концу, возвращайтесь в Шайтан к Опекуну Вово " )
	MisBeginCondition( NoMission, 1037)
	MisBeginCondition( NoRecord, 1037)
	MisBeginCondition( HasRecord, 1036)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1037)
	MisCancelAction( ClearMission, 1037)

	MisNeed(MIS_NEED_DESP, " Поговорите с Вово " )
	MisHelpTalk( "<t>Поговорите с Вово " )

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------------Кругосветное путешествие

	DefineMission( 6054, "\202\240\243\227\238\241\226\229\242\237\238\229 \239\243\242\229\248\229\241\242\226\232\229", 1037, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Ну как Вам путишествие? Вам понравилось? Не заметили? Так может ещё раз попутишествуете?! Ха-ха-ха! Не переживайте, я просто пошутил!" )
	MisResultCondition( NoRecord, 1037)
	MisResultCondition( HasMission, 1037)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1037)
	MisResultAction( ClearMission, 1037)

--------------------------------------------------------------Посещение Небесного Портальщика

	DefineMission( 6055, "\207\238\241\229\249\229\237\232\229 \205\229\225\229\241\237\238\227\238 \207\238\240\242\224\235\252\249\232\234\224", 1038 )
	MisBeginTalk( "<t>Найдите Небесного Портальщика." )
	MisBeginCondition( NoMission, 1038)
	MisBeginCondition( NoRecord, 1038)
	MisBeginCondition( HasRecord, 1037)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1038)
	MisCancelAction( ClearMission, 1038)

	MisNeed(MIS_NEED_DESP, " Ищите следующего Опекуна " )
	MisHelpTalk( "<t>Отправляйтесь в Карибы." )

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------Посещение Небесного Портальщика

	DefineMission( 6056, "\207\238\241\229\249\229\237\232\229 \205\229\225\229\241\237\238\227\238 \207\238\240\242\224\235\252\249\232\234\224", 1038, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы случайно не на небо собрались в гости к Богине?" )
	MisResultCondition( NoRecord, 1038)
	MisResultCondition( HasMission, 1038)
	MisResultAction( SetRecord, 1038)
	MisResultAction( ClearMission, 1038)
	
------------------------------------------------------------Завещание

	DefineMission( 6057, "\199\224\226\229\249\224\237\232\229", 1039 )
	MisBeginTalk( "<t>Вы хотите попасть на Небо? Хорошо! Ни каких проблем. Но... Вам необходимо зажечь Священные свечи " )
	MisBeginCondition( NoRecord, 1039)
	MisBeginCondition( NoMission, 1039)
	MisBeginCondition( HasRecord, 1038)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10391, TE_GETITEM, 3007, 9 )--зажжёные Священные свечи
	MisBeginAction( AddMission, 1039)
	MisBeginAction( GiveItem, 3006, 9, 4)--Священные свечи
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1039)

	MisNeed(MIS_NEED_ITEM, 3007, 9, 10, 9)

	MisResultTalk( "<t>Очень хорошо!" )
	MisHelpTalk( "<t>Богиня не может так долго ждать." )
	MisResultCondition( NoRecord, 1039)
	MisResultCondition( HasMission, 1039)
	MisResultCondition( HasItem, 3007, 9)
	MisResultAction( TakeItem, 3007, 9)
	MisResultAction( SetRecord, 1039)
	MisResultAction( ClearMission, 1039)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1039, 10, 9 )
	RegCurTrigger( 10391 )


------------------------------------------------------------Завещание

	DefineMission( 6058, "\199\224\226\229\249\224\237\232\229", 1040 )
	MisBeginTalk("<t>А я Вам дал всего 9 свячей? Ой, моя оплошность, вот ещё 99 свячей. Так же зажжгите их." )
	MisBeginCondition( NoRecord, 1040)
	MisBeginCondition( NoMission, 1040)
	MisBeginCondition( HasRecord, 1039)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10401, TE_GETITEM, 3007, 99 )
	MisBeginAction( AddMission, 1040)
	MisBeginAction( GiveItem, 3006, 99, 4)
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1040)

	MisNeed(MIS_NEED_ITEM, 3007, 99, 10, 99)

	MisResultTalk( "<t>Очень хорошо!" )
	MisHelpTalk( "<t>Зажжгите Свечи." )
	MisResultCondition( NoRecord, 1040)
	MisResultCondition( HasMission, 1040)
	MisResultCondition( HasItem, 3007, 99)
	MisResultAction( TakeItem, 3007, 99)
	MisResultAction( SetRecord, 1040)
	MisResultAction( ClearMission, 1040)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1040, 10, 99 )
	RegCurTrigger( 10401 )

------------------------------------------------------------

	DefineMission( 6059, "\199\224\226\229\249\224\237\232\229", 1041 )
	MisBeginTalk( "<t>Это последнее испытание. Вот - Статуя Богини. Зарядите её энергией и возвращайтесь ко мне!" )
	MisBeginCondition( NoRecord, 1041)
	MisBeginCondition( NoMission, 1041)
	MisBeginCondition( HasRecord, 1040)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10411, TE_GETITEM, 3010, 1 )--статуя богини
	MisBeginAction( AddMission, 1041)
	MisBeginAction( GiveNSDX, 3010 )
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1041)
	
	MisNeed(MIS_NEED_ITEM, 3010, 1, 10, 1)

	MisResultTalk( "<t>Богиня всегда Будет с Вами." )
	MisHelpTalk( "<t>Вы не можете повторить квест, идите к Албуде за повторной попыткой прохождения Перерождения." )
	MisResultCondition( NoRecord, 1041)
	MisResultCondition( HasMission, 1041)
	MisResultCondition( CheckEnergy )
	MisResultAction( TakeItem, 3010, 1)
	MisResultAction( SetRecord, 1041)
	MisResultAction( ClearMission, 1041)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3010)	
	TriggerAction( 1, AddNextFlag, 1041, 10, 1 )
	RegCurTrigger( 10411 )

----------------------------------------------------------Посетите опекуна Аргента

	DefineMission( 6060, "\207\238\241\229\242\232\242\229 \238\239\229\234\243\237\224 \192\240\227\229\237\242\224", 1042 )
	MisBeginTalk( "<t>Ищите следующего опекуна в Аргенте." )
	MisBeginCondition( NoRecord, 1042)
	MisBeginCondition( NoMission, 1042)
	MisBeginCondition( HasRecord, 1041)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1042)
	MisCancelAction( ClearMission, 1042)

	MisNeed(MIS_NEED_DESP, " Найдите в Аргенте следующего опекуна " )
	MisHelpTalk( "<t>Найдите в Аргенте следующего опекуна." )

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------

	DefineMission( 6061, "\207\238\241\229\242\232\242\229 \238\239\229\234\243\237\224 \192\240\227\229\237\242\224", 1042, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Хотите поиграть в одну интересную игру?" )
	MisResultCondition( NoRecord, 1042)
	MisResultCondition( HasMission, 1042)
	MisResultAction( SetRecord, 1042)
	MisResultAction( ClearMission, 1042)

------------------------------------------------------------Безумная Игра

	DefineMission( 6062, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1043 )
	MisBeginTalk( "<t>Давайте сыграем: Вы убьёте 110 Волшебных кустов и вернётесь ко мне, а я Вам по задаю вопросы." )
	MisBeginCondition( NoRecord, 1043)
	MisBeginCondition( NoMission, 1043)
	MisBeginCondition( HasRecord, 1042)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1043)
	MisBeginAction( AddTrigger, 10431, TE_KILL, 75, 110)
	MisCancelAction( ClearMission, 1043)

	MisNeed(MIS_NEED_DESP, " Убейте 110 Волшебных кустов " )
	MisNeed(MIS_NEED_KILL, 75, 110, 10, 110)

	MisResultTalk( "<t>Поздравляю!" )
	MisHelpTalk( "<t>Убейте по скорее эти кусты, я так хочу Вам задать один вопросик(хихикает)!" )
	MisResultCondition( NoRecord, 1043)
	MisResultCondition( HasMission, 1043)
	MisResultCondition( HasFlag, 1043, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1043)
	MisResultAction( ClearMission, 1043)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 75 )
	TriggerAction( 1, AddNextFlag, 1043, 10, 110 )
	RegCurTrigger( 10431 )

------------------------------------------------------------Безумная Игра

	DefineMission( 6063, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1046 )
	MisBeginTalk( "<t>Убейте 110 Засохших волшебных кустыв!" )
	MisBeginCondition( NoRecord, 1046)
	MisBeginCondition( NoMission, 1046)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1044)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1046)
	MisBeginAction( AddTrigger, 10461, TE_KILL, 218, 110)
	MisCancelAction( ClearMission, 1046)

	MisNeed(MIS_NEED_DESP, " Убейте 110 Засохших волшебных кустыв " )
	MisNeed(MIS_NEED_KILL, 218, 110, 10, 110)

	MisResultTalk( "<t>Вы это сделали " )
	MisHelpTalk( "<t>Ищите Засохшие волшебные кусты у Города Шайтана." )
	MisResultCondition( NoRecord, 1046)
	MisResultCondition( HasMission, 1046)
	MisResultCondition( HasFlag, 1046, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1046)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1046)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 218 )
	TriggerAction( 1, AddNextFlag, 1046, 10, 110 )
	RegCurTrigger( 10461 )

-------------------------------------------------------------Безумная Игра

	DefineMission( 6064, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1047 )
	MisBeginTalk("<t>Убейте 110 Заснеженных Волшебных кустов!" )
	MisBeginCondition( NoRecord, 1047)
	MisBeginCondition( NoMission, 1047)
	MisBeginCondition( HasRecord, 1045)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1047)
	MisBeginAction( AddTrigger, 10471, TE_KILL, 216, 110)--Заснеженный Волшебный куст
	MisCancelAction( ClearMission, 1047)

	MisNeed(MIS_NEED_DESP, " Убейте 110 Заснеженных Волшебных кустов " )
	MisNeed(MIS_NEED_KILL, 216, 110, 10, 110)

	MisResultTalk( "<t>Вы молодец!" )
	MisHelpTalk( "<t>Вы их сможете найти в окраинах Ледыни." )
	MisResultCondition( NoRecord, 1047)
	MisResultCondition( HasMission, 1047)
	MisResultCondition( HasFlag, 1047, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1047)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1047)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 216 )
	TriggerAction( 1, AddNextFlag, 1047, 10, 110 )
	RegCurTrigger( 10471 )

---------------------------------------------------------------Безумная Игра

	DefineMission( 6065, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1048 )
	MisBeginTalk( "<t>Теперь убейте 110 Кальмарчиков-моряков." )
	MisBeginCondition( NoRecord, 1048)
	MisBeginCondition( NoMission, 1048)
	MisBeginCondition( HasRecord, 1057)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1048)
	MisBeginAction( AddTrigger, 10481, TE_KILL, 233, 110)--Кальмарчик-моряк
	MisCancelAction( ClearMission, 1048)

	MisNeed(MIS_NEED_DESP, " Убейте 110 Кальмарчиков-моряков " )
	MisNeed(MIS_NEED_KILL, 233, 110, 10, 110)

	MisResultTalk( "<t>Вы не устали играть?" )
	MisHelpTalk( "<t>Убить 110 Кальмарчиков-моряков." )
	MisResultCondition( NoRecord, 1048)
	MisResultCondition( HasMission, 1048)
	MisResultCondition( HasFlag, 1048, 10)
	MisResultAction( SetRecord, 1048)
	MisResultAction( ClearMission, 1048)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 233)
	TriggerAction( 1, AddNextFlag, 1048, 10, 110 )
	RegCurTrigger( 10481 )

---------------------------------------------------------------Безумная Игра

	DefineMission( 6066, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1049 )
	MisBeginTalk("<t>Теперь убйте 110 Снежных кальмарчиков." )
	MisBeginCondition( NoRecord, 1049)
	MisBeginCondition( NoMission, 1049)
	MisBeginCondition( HasRecord, 1048)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1049)
	MisBeginAction( AddTrigger, 10491, TE_KILL, 235, 110)--снежный кальмарчик
	MisCancelAction( ClearMission, 1049)

	MisNeed(MIS_NEED_DESP, " Убйте 110 Снежных кальмарчиков " )
	MisNeed(MIS_NEED_KILL, 235, 110, 10, 110)

	MisResultTalk( "<t>Вы не устали играть?" )
	MisHelpTalk( "<t>Вы их можете найти в Ледыне." )
	MisResultCondition( NoRecord, 1049)
	MisResultCondition( HasMission, 1049)
	MisResultCondition( HasFlag, 1049, 10)
	MisResultAction( SetRecord, 1049)
	MisResultAction( ClearMission, 1049)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 235)
	TriggerAction( 1, AddNextFlag, 1049, 10, 110 )
	RegCurTrigger( 10491 )

---------------------------------------------------------------Безумная Игра

	DefineMission( 6067, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1050 )
	MisBeginTalk( "<t>Теперь убейте 110 Креветок-матросов." )
	MisBeginCondition( NoRecord, 1050)
	MisBeginCondition( NoMission, 1050)
	MisBeginCondition( HasRecord, 1049)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1050)
	MisBeginAction( AddTrigger, 10501, TE_KILL, 232, 110)
	MisCancelAction( ClearMission, 1050)

	MisNeed(MIS_NEED_DESP, " Убейте 110 Креветок-матросов" )
	MisNeed(MIS_NEED_KILL, 232, 110, 10, 110)

	MisResultTalk( "<t>Вы не устали играть?" )
	MisHelpTalk( "<t>Вы счетаете мою игру скучной?" )
	MisResultCondition( NoRecord, 1050)
	MisResultCondition( HasMission, 1050)
	MisResultCondition( HasFlag, 1050, 10)
	MisResultAction( SetRecord, 1050)
	MisResultAction( ClearMission, 1050)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 232)
	TriggerAction( 1, AddNextFlag, 1050, 10, 110 )
	RegCurTrigger( 10501 )

---------------------------------------------------------------Безумная Игра

	DefineMission( 6068, "\193\229\231\243\236\237\224\255 \200\227\240\224", 1051 )
	MisBeginTalk("<t>Ну а теперь убейте 110 Снегоплювов." )
	MisBeginCondition( NoRecord, 1051)
	MisBeginCondition( NoMission, 1051)
	MisBeginCondition( HasRecord, 1050)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1051)
	MisBeginAction( AddTrigger, 10511, TE_KILL, 234, 110)
	MisCancelAction( ClearMission, 1051)

	MisNeed(MIS_NEED_DESP, " Убейте 110 Снегоплювов " )
	MisNeed(MIS_NEED_KILL, 234, 110, 10, 110)

	MisResultTalk( "<t>Всё? Больше Вы со мной играть не хотите? Как жаль. Хоть Вы меня и обидели, я всё таки дам Вам этот приз." )
	MisHelpTalk( "<t>Ну убейте их!" )
	MisResultCondition( NoRecord, 1051)
	MisResultCondition( HasMission, 1051)
	MisResultCondition( HasFlag, 1051, 10)
	MisResultAction( SetRecord, 1051)
	MisResultAction( SetRecord, 1056)
	MisResultAction( ClearMission, 1051)
	MisResultAction(GiveItem, 2229, 1, 4)--руны реберн
	MisResultAction(GiveItem, 2230, 1, 4)--
	MisResultAction(GiveItem, 2231, 1, 4)--
	MisResultAction(GiveItem, 2232, 1, 4)--
	MisResultAction(GiveItem, 2233, 1, 4)--
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 234)
	TriggerAction( 1, AddNextFlag, 1051, 10, 110 )
	RegCurTrigger( 10511 )


------------------------------------------------Индегриенты для Суши

	DefineMission( 5604, "\200\237\228\229\227\240\232\229\237\242\251 \228\235\255 \209\243\248\232", 1107 )

	MisBeginTalk( "<t>Что бы Приготовить Сушы, Вы должны бидете принести мне следующее: <pЧистую воду>, <pУсик улитки> и <pЭльфийский фрукт>!" )

	MisBeginCondition(NoMission,1107)
	MisBeginCondition(NoRecord,1107)
	MisBeginAction(AddMission,1107)
	MisBeginAction(AddTrigger, 11071, TE_GETITEM, 1649, 1 )---------------Чистая вода
	MisBeginAction(AddTrigger, 11072, TE_GETITEM, 1690, 1 )---------------Усик улитки
	MisBeginAction(AddTrigger, 11073, TE_GETITEM, 3116, 1 )----------Эльфийский фрукт
	MisCancelAction( ClearMission, 1107)
	
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1690, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3116, 1, 30, 1 )

	MisHelpTalk( "<t>В этой просьбе нет ни чего сложного!" )
	MisResultTalk( "<t>Отлично, сейчас мы приготовим вкуснятину!" )

	MisResultCondition(HasMission, 1107)
	MisResultCondition(NoRecord,1107)
	MisResultCondition(HasItem, 1649, 1 )
	MisResultCondition(HasItem, 1690, 1 )
	MisResultCondition(HasItem, 3116, 1 )
	
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 1690, 1 )
	MisResultAction(TakeItem, 3116, 1 )
	
	MisResultAction(ClearMission, 1107)
	MisResultAction(SetRecord,  1107 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1107, 10, 1 )
	RegCurTrigger( 11071 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1690)	
	TriggerAction( 1, AddNextFlag, 1107, 20, 1 )
	RegCurTrigger( 11072 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1107, 30, 1 )
	RegCurTrigger( 11073 )


	-------------------------------------------------Суши Высшего качества
	
	DefineMission( 5605, "\209\243\248\232 \194\251\241\248\229\227\238 \234\224\247\229\241\242\226\224", 1108 )
	
	MisBeginTalk("<t>Принесите <p2 Расписки на кусок кекса>, и я Вас угощу самыми вкусными Суши во всём мире!" )

	MisBeginCondition(NoMission,1108)
	MisBeginCondition(HasRecord,1107)
	MisBeginCondition(NoRecord,1108)
	MisBeginAction(AddMission,1108)
	MisBeginAction(AddTrigger, 11081, TE_GETITEM, 1097, 2 )---------Расписка на кусок кекса
	MisCancelAction( ClearMission, 1108)
	
	MisNeed(MIS_NEED_ITEM, 1097, 2, 10, 2 )

	MisHelpTalk( "<t>Не достовайте меня, Вы не первый кто мне ноет что у него нет ни чего и что очень кушать хочется... У меня этот трюк не пройдёт " )
	MisResultTalk( "<t>Вот! Угощайтесь пока тёпленькое!" )

	MisResultCondition(HasMission, 1108)
	MisResultCondition(NoRecord,1108)
	MisResultCondition(HasItem, 1097, 2 )
	MisResultAction(TakeItem, 1097, 2 )
	MisResultAction(GiveItem, 2989,1,4)--------------Супер-суши
	MisResultAction(ClearMission, 1108)
	MisResultAction(SetRecord,  1108 )
	MisResultAction(ClearRecord, 1107)-------------Кольцо Страха
	MisResultAction(ClearRecord, 1108)---------------Защита Бури
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1108, 10, 2 )
	RegCurTrigger( 11081 )

	-------------------------------------------------Кукинг
	
	DefineMission( 5606, "\202\243\234\232\237\227", 1109 )
	
	MisBeginTalk( "<t>У меня самые вкусные пироги, но что бы их попробовать Вы должны мне принести <pМедаль отваги>!" )

	MisBeginCondition(NoMission,1109)
	MisBeginCondition(NoRecord,1109)
	MisBeginAction(AddMission,1109)
	MisBeginAction(AddTrigger, 11091, TE_GETITEM, 3849, 1 )-------------Медаль отваги
	MisCancelAction( ClearMission, 1109)
	
	MisNeed(MIS_NEED_ITEM, 3849, 1, 10, 1 )

	MisHelpTalk( "<t>Нет! Так дело не пойдёт, мне нужна Медаль отваги " )
	MisResultTalk( "<t>Кушайте на здоровье " )

	MisResultCondition(HasMission, 1109)
	MisResultCondition(NoRecord,1109)
	MisResultCondition(HasItem, 3849, 1 )
	MisResultAction(ClearMission, 1109)
	MisResultAction(SetRecord,  1109 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3849)	
	TriggerAction( 1, AddNextFlag, 1109, 10, 1 )
	RegCurTrigger( 11091 )


	-------------------------------------------------Знаменитый кекс

	DefineMission( 5607, "\199\237\224\236\229\237\232\242\251\233 \234\229\234\241", 1110 )
	
	MisBeginTalk("<t>Вы хотите, что бы я приготовила для Вас Мой Знаменитый кекс? Хорошо, но принесите мне <pРасписку на кусок кекса>!" )

	MisBeginCondition(NoMission,1110)
	MisBeginCondition(HasRecord,1109)
	MisBeginCondition(NoRecord,1110)
	MisBeginAction(AddMission,1110)
	MisBeginAction(AddTrigger, 11101, TE_GETITEM, 1097, 1 )--------Расписка на кусок кекса
	MisCancelAction( ClearMission, 1110)
	
	MisNeed(MIS_NEED_ITEM, 1097, 1, 10, 1 )
	MisHelpTalk( "<t>Мне необходима Расписка на кусок кекса " )
	MisResultTalk( "<t>Приятного аппетита " )
	

	MisResultCondition(HasMission, 1110)
	MisResultCondition(NoRecord,1110)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 2988,1,4)-----------Знаменитый кекс
	MisResultAction(ClearMission, 1110)
	MisResultAction(SetRecord,  1110 )
	MisResultAction(ClearRecord, 1109)---------------Повелитель Ветра
	MisResultAction(ClearRecord, 1110)---------------Трепет Огня
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1110, 10, 1 )
	RegCurTrigger( 11101 )

----------------------------Первая Задача

	DefineMission( 6114, "\207\229\240\226\224\255 \199\224\228\224\247\224", 1000 )

	MisBeginTalk( "<t>Вы не смогли бы ещё помочь мне? Пожалуйста отнесите это письмо в Шайта  (873, 3545) . Вас ждёт большая награда!" )
	--MisBeginCondition( CheckTime )
	MisBeginCondition( NoMission, 1000)
	MisBeginCondition( NoRecord, 1000)
	MisBeginAction( GiveItem, 3292, 1, 4)--Письмо Уоуо
	MisBeginAction( AddMission, 1000)
	MisCancelAction( ClearMission, 1000)
	MisBeginBagNeed(1)
	
	MisNeed( MIS_NEED_DESP, "Следуйте в Шайтан(873, 3545)." )
	
	MisHelpTalk( "<t>Отправляйтесь в Шайтан." )
	MisResultCondition( AlwaysFailure )

----------------------------Первая Задача

	DefineMission( 6115, "\207\229\240\226\224\255 \199\224\228\224\247\224", 1000, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Мне письмо? Спасибо." )
	MisResultCondition( HasMission, 1000)
	MisResultCondition( HasItem, 3292, 1)
	MisResultCondition( NoRecord, 1000)
	MisResultAction( TakeItem, 3292, 1)
	MisResultAction( SetRecord, 1000)
	MisResultAction( ClearMission, 1000)
	MisResultAction( AddExp_1)


-----------------------------Вторая Задача

	DefineMission( 6116, "\194\242\238\240\224\255 \199\224\228\224\247\224", 1001 )

	MisBeginTalk( "<t>Медсестра Джина хочет Оживляющий клевер. Купите Джине Оживляющий клевер у Дито и отнесите его к ней!" )
	MisBeginCondition( HasRecord, 1000)
	MisBeginCondition( NoMission, 1001)
	MisBeginCondition( NoRecord, 1001)
	MisBeginAction( AddMission, 1001)
	MisBeginAction(AddTrigger, 10011, TE_GETITEM, 3143, 1)--Оживляющий клевер
	MisCancelAction( ClearMission, 1001)

	MisNeed( MIS_NEED_DESP, " Купите Оживляющий клевер для медсестры Джыны у Дито." )
	MisNeed( MIS_NEED_ITEM, 3143, 1, 10, 1)





	MisHelpTalk( "<t>Дито продаёт Оживляющий клевер, как только Вы его купите несите его к Медстестре Джине!" )
	MisResultCondition( AlwaysFailure )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3143)	
	TriggerAction( 1, AddNextFlag, 1001, 10, 1 )
	RegCurTrigger( 10011 )

----------------------------Вторая Задача

	DefineMission( 6117, "\194\242\238\240\224\255 \199\224\228\224\247\224", 1001, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Вы вовремя, мне как раз нужен Оживляющий клевер!" )
	MisResultCondition( HasMission, 1001)
	MisResultCondition( NoRecord, 1001)
	MisResultCondition( HasItem, 3141, 1)
	MisResultAction( TakeItem, 3141, 1)
	MisResultAction( SetRecord, 1001)
	MisResultAction( ClearMission, 1001)
	MisResultAction( AddExp_1 )


	InitTrigger()
	TriggerCondition( 1, IsItem, 3141)	
	TriggerAction( 1, AddNextFlag, 1001, 10, 1 )
	RegCurTrigger( 10011 )

---------------------------Третья Задача

	DefineMission( 6118, "\210\240\229\242\252\255 \199\224\228\224\247\224", 1002 )
	
	MisBeginTalk( "<t>Недавно, Луговые лоси. очень нам навредили. Не проучите их?" )
	MisBeginCondition( HasRecord, 1001)
	MisBeginCondition( NoMission, 1002)
	MisBeginCondition( NoRecord, 1002)
	MisBeginCondition( NoRecord, 1003)
	MisBeginCondition( LvCheck, "<", 40)
	MisBeginAction( AddMission, 1002)
	MisBeginAction( AddTrigger, 10021, TE_KILL, 299, 20 )
	MisCancelAction( ClearMission, 1002)
	
	MisNeed( MIS_NEED_DESP, " Убейте <r20 Луговых Лосей> в (1360,2683) и возвращайтесь ко мне." )
	MisNeed( MIS_NEED_KILL, 299, 20, 10, 20)

	MisResultTalk( "<t>Вы справелись быстрее чем я ожидал, за это я Вас вознагражу." )
	MisHelpTalk( "<t>Эти злодеи обитают в (1360, 2683)." )
	MisResultCondition( HasMission, 1002)
	MisResultCondition( NoRecord, 1002)
	MisResultCondition( HasFlag, 1002, 29)
	MisResultAction( SetRecord, 1002)
	MisResultAction( SetRecord, 1003)
	MisResultAction( ClearMission, 1002)
	MisResultAction( AddExp, 13000, 13000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 299)	
	TriggerAction( 1, AddNextFlag, 1002, 10, 20 )
	RegCurTrigger( 10021 )

----------------------------3 задача

	DefineMission( 6119, "\210\240\229\242\252\255 \199\224\228\224\247\224", 1004 )
	
	MisBeginTalk( "<t>Не так давно на нас напали Рыцари тыкв. Не отомстили бы Вы за нас?" )
	MisBeginCondition( HasRecord, 1001)
	MisBeginCondition( NoMission, 1004)
	MisBeginCondition( NoMission, 1002)
	MisBeginCondition( NoRecord, 1003)
	MisBeginCondition( NoRecord, 1004)
	MisBeginCondition( LvCheck, ">", 39)
	MisBeginAction( AddMission, 1004)
	MisBeginAction( AddTrigger, 10041, TE_KILL, 37, 20 )
	MisCancelAction( ClearMission, 1004)
	
	MisNeed( MIS_NEED_DESP, " Убейте <r20 Рыцарей Тыкв> в Шахтах (622, 3364)" )
	MisNeed( MIS_NEED_KILL, 37, 20, 10, 20)

	MisResultTalk( "<t>Ничего себе ~ Как это Вы так быстро их? Вы заслужили награду." )
	MisHelpTalk( "<t>Они обитают в Шахтах (622, 3364)." )
	MisResultCondition( HasMission, 1004)
	MisResultCondition( NoRecord, 1004)
	MisResultCondition( HasFlag, 1004, 29)
	MisResultAction( SetRecord, 1004)
	MisResultAction( SetRecord, 1003)
	MisResultAction( ClearMission, 1004)
	MisResultAction( AddExp_3)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 37)	
	TriggerAction( 1, AddNextFlag, 1004, 10, 20 )
	RegCurTrigger( 10041 )

----------------------------------Четвертая Задача

	DefineMission( 6120, "\215\229\242\226\229\240\242\224\255 \199\224\228\224\247\224", 1005 )
	MisBeginTalk( "<t>Вот Вы и готовоы к Четвёртой Задаче. Добудьте 3 Дерева, 3 Руды и 3 Сашими и отнесите всё это к Шахтам, там Вас будет ждать грузщик, погрузитесь у него." )
	MisBeginCondition( HasRecord, 1003)
	MisBeginCondition( NoMission, 1005)
	MisBeginCondition( NoRecord, 1005)
	MisBeginAction( AddMission, 1005)
	MisBeginAction(AddTrigger, 10051, TE_GETITEM, 4543, 3 )--Дерево
	MisBeginAction(AddTrigger, 10052, TE_GETITEM, 4545, 3 )--Руда
	MisBeginAction(AddTrigger, 10053, TE_GETITEM, 1478, 3 )--Сашими
	MisCancelAction( ClearMission, 1005)

	MisNeed( MIS_NEED_DESP, " Добудьте <b3 Дерева>, <b3 Руды> и <b3 Сашими> и отнесите в (1882, 2805) к Шахтам аргента." )
	MisNeed( MIS_NEED_ITEM, 4543, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 4545, 3, 20, 3)
	MisNeed( MIS_NEED_ITEM, 1478, 3, 20, 3)

	MisHelpTalk( "<t>Погрузите ресурсы." )

	MisResultCondition( AlwaysFailure )

---------------------------------4 задача

	DefineMission( 6121, "\215\229\242\226\229\240\242\224\255 \199\224\228\224\247\224", 1005, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>То, что Вы отправели, будет очень долго добираться... Принесите мне всё, что Вы отправели " )
	MisResultCondition( HasMission, 1005)
	MisResultCondition( NoRecord, 1005)
	MisResultCondition( HasItem, 4543, 3)
	MisResultCondition( HasItem, 4545, 3)
	MisResultCondition( HasItem, 1478, 3)
	MisResultAction( TakeItem, 4543, 3)
	MisResultAction( TakeItem, 4545, 3)
	MisResultAction( TakeItem, 1478, 3)
	MisResultAction( SetRecord, 1005)
	MisResultAction( ClearMission, 1005)
	MisResultAction( AddExp_4)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4543)	
	TriggerAction( 1, AddNextFlag, 1005, 10, 3 )
	RegCurTrigger( 10051 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4545)
	TriggerAction( 1, AddNextFlag, 1005, 20, 3 )
	RegCurTrigger( 10052 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1478)	
	TriggerAction( 1, AddNextFlag, 1005, 20, 3 )
	RegCurTrigger( 10053 )


-----------------------------------Пятая Задача

	DefineMission( 6122, "\207\255\242\224\255 \199\224\228\224\247\224", 1006 )
	MisBeginTalk( "<t> Следующая задача: собирите Эльфийские печатки и отдайте их Форби в (2226,2726) Аргент." )
	MisBeginCondition( HasRecord, 1005)
	MisBeginCondition( NoMission, 1006)
	MisBeginCondition( NoRecord, 1006)
	MisBeginAction( AddMission, 1006)
	MisBeginAction(AddTrigger, 10061, TE_GETITEM, 2588, 5 )--Эльфийская печатка
	MisCancelAction( ClearMission, 1006)

	MisNeed( MIS_NEED_DESP, "Отдайте Форби 5 Эльфийских Печаток в Аргент (2226, 2726)." )
	MisNeed( MIS_NEED_ITEM, 2588, 5, 10, 5)

	MisHelpTalk( "<t>Эльфийские Печатки может Вам сделать Ваша феечка." )
	MisResultCondition( AlwaysFailure )

-----------------------------------5 задача

	DefineMission( 6123, "\207\255\242\224\255 \199\224\228\224\247\224", 1006, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>Вы готовы... У меня есть специальная миссия и отлько для Вас..." )
	MisResultCondition( HasMission, 1006)
	MisResultCondition( NoRecord, 1006)
	MisResultCondition( HasItem, 2588, 5)
	MisResultAction( TakeItem, 2588, 5)
	MisResultAction( SetRecord, 1006)
	MisResultAction( ClearMission, 1006)
	MisResultAction( AddExp_5)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1006, 10, 5 )
	RegCurTrigger( 10061 )

-----------------------------------Шестая Задача

	DefineMission( 6124, "\216\229\241\242\224\255 \199\224\228\224\247\224", 1007 )
	MisBeginTalk( "<t>Это задание очень простое. Все, что Вы должны сделать, это найти себе компанию. Но в Вашей компании <rодин игрок должен быть  20-30 уровня, другой игрок 31 - 40, и третий игрок выше 40 уровня>. Как только Вы соберёте необходимую компанию отправляйтесь в Ледынь к Мечнику Рею. У него есть для Вас подарок!" )
	MisBeginCondition( HasRecord, 1006)
	MisBeginCondition( NoMission, 1007)
	MisBeginCondition( NoRecord, 1007)
	MisBeginAction( AddMission, 1007)
	MisCancelAction( ClearMission, 1007)

	MisHelpTalk( "<t>Ищите себе команду " )

	MisResultCondition( AlwaysFailure )

----------------------------------6 задача

	DefineMission( 6125, "\216\229\241\242\224\255 \199\224\228\224\247\224", 1007, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )


	MisResultTalk( "<t>В Вас есть черта Лидера, или у Вас очень хорошие друзья." )
	MisResultCondition( HasMission, 1007)
	MisResultCondition( NoRecord, 1007)
	MisResultCondition( CheckTeam )
	MisResultAction( SetRecord, 1007)
	MisResultAction( ClearMission, 1007)
	MisResultAction( AddExp_6)

-----------------------------------конец квеста на 6 задание


--	-----------------------------------------------------первые заработки

	DefineMission( 6069, "\239\229\240\226\251\229 \231\224\240\224\225\238\242\234\232", 1400 )

	MisBeginTalk( "<t>Вам ещё трудно зарабатывать деньги? Я хорошо Вам заплачу если Вы мне поможете." )
	MisBeginCondition( LvCheck, ">", 10)
	MisBeginCondition( NoRecord, 1400)
	MisBeginCondition( NoMission, 1400)
	MisBeginAction( AddMission, 1400 )
	MisBeginAction( AddTrigger, 14001, TE_GETITEM, 1604, 10 )------------Грива
	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 1777, 5 )------------Стакан
	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 1692, 5 )----Цветок кактуса
	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 4334, 5 )---Пингвинья шкура
	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 4511, 1 )---Искрящийся куст
	MisCancelAction(ClearMission, 1400)

	MisNeed(MIS_NEED_ITEM, 1604, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1779, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 1692, 5, 30, 5)
	MisNeed(MIS_NEED_ITEM, 4334, 5, 40, 5)
	MisNeed(MIS_NEED_ITEM, 4511, 1, 50, 1)

	MisResultTalk( "<t>Вы хорошо потрудились!" )
	MisHelpTalk( "<t>Гриву медвежонка Вы сможете выбить с медвежонка в Аргенте(1905,2853), Стакан из Лесного Духа, Аргент( 2220,2638) , цветок кактуса с Кактуса Убийцы, Шайтан( 884,3156) , Пингвинью Шкуру с Пингвинов,  Ледынь (994,365), а так же в Аргенте(3000,2566) Вы выбьите искрящий куст из куста " )
	MisResultCondition( HasMission, 1400)
	MisResultCondition( NoRecord, 1400)
	MisResultCondition( HasItem, 1604, 10)
	MisResultCondition( HasItem, 1777, 5)
	MisResultCondition( HasItem, 1692, 5)
	MisResultCondition( HasItem, 4334, 5)
	MisResultCondition( HasItem, 4511, 1)
	MisResultAction( TakeItem, 1604, 10)
	MisResultAction( TakeItem, 1777, 5)
	MisResultAction( TakeItem, 1692, 5)
	MisResultAction( TakeItem, 4334, 5)
	MisResultAction( TakeItem, 4511, 1)
	MisResultAction( SetRecord, 1400)
	MisResultAction( ClearMission, 1400)
	MisResultAction( AddMoney, 10000, 10000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1604)	
	TriggerAction( 1, AddNextFlag, 1400, 10, 10 )
	RegCurTrigger( 14001 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1777)	
	TriggerAction( 1, AddNextFlag, 1400, 20, 5 )
	RegCurTrigger( 14002 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1692)	
	TriggerAction( 1, AddNextFlag, 1400, 30, 5 )
	RegCurTrigger( 14003 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4334)	
	TriggerAction( 1, AddNextFlag, 1400, 40, 5 )
	RegCurTrigger( 14004 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4511)	
	TriggerAction( 1, AddNextFlag, 1400, 50, 1 )
	RegCurTrigger( 14005 )


	----------------------------------------------------------Золотой сундук

	DefineMission( 6070 , "\199\238\235\238\242\238\233 \241\243\237\228\243\234", 1401 )
	MisBeginTalk( "<t>Вы хотите поолучить золотой Сундук? Ну тогда Вам прийдётся убить следующих монстров: <r30 Бандитов>, <r20 Кротов-Рудокопов>, <r10 Опытных Туземных Воинов>, <r5 Предводителей Бандитов>, <r5 Рубиновых дельфинов>, <r5 Рыб-Костей>, <r20 Ленивых Кальмаров>, <r20 Медуз Людоедов>." )
	MisBeginCondition( NoMission, 1401)
	MisBeginCondition( NoRecord, 1401)
	MisBeginAction( AddMission, 1401)
	MisBeginAction( AddTrigger, 14011, TE_KILL, 93, 30)---Бандит
	MisBeginAction( AddTrigger, 14012, TE_KILL, 88, 20)---Крот-рудокоп
	MisBeginAction( AddTrigger, 14013, TE_KILL, 248, 10)--Опытный туземный воин
	MisBeginAction( AddTrigger, 14014, TE_KILL, 211, 5)---Предводитель бандитов
	MisBeginAction( AddTrigger, 14015, TE_KILL, 58, 5)----Рубиновый дельфин
	MisBeginAction( AddTrigger, 14016, TE_KILL, 242, 5)---Рыба кость
	MisBeginAction( AddTrigger, 14017, TE_KILL, 578, 20)--Ленивый кальмар
	MisBeginAction( AddTrigger, 14018, TE_KILL, 596, 20)--Морская медуза-людоед
	MisCancelAction(ClearMission, 1401)

	MisNeed(MIS_NEED_KILL, 93, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 88, 20, 20, 20)
	MisNeed(MIS_NEED_KILL, 248, 10, 30, 10)
	MisNeed(MIS_NEED_KILL, 211, 5, 40, 5)
	MisNeed(MIS_NEED_KILL, 58, 5, 50, 5)
	MisNeed(MIS_NEED_KILL, 242, 5, 60, 5)
	MisNeed(MIS_NEED_KILL, 578, 20, 70, 20)
	MisNeed(MIS_NEED_KILL, 596, 20, 80, 20)

	MisResultTalk( "<t>Вы заслужили Золотой сундук " )
	MisHelpTalk( "<t>Убейте для начала монстров " )
	MisResultCondition( HasMission, 1401)
	MisResultCondition( NoRecord, 1401)
	MisResultCondition( HasFlag, 1401, 10)
	MisResultCondition( HasFlag, 1401, 20)
	MisResultCondition( HasFlag, 1401, 30)
	MisResultCondition( HasFlag, 1401, 40)
	MisResultCondition( HasFlag, 1401, 50)
	MisResultCondition( HasFlag, 1401, 60)
	MisResultCondition( HasFlag, 1401, 70)
	MisResultCondition( HasFlag, 1401, 80)
	MisResultAction( SetRecord, 1401)
	MisResultAction( ClearMission, 1401)
	MisResultAction( GiveItem, 4312)--Золотой сундук
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 93 )
	TriggerAction( 1, AddNextFlag, 1401, 10, 30 )
	RegCurTrigger( 14011 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 88 )
	TriggerAction( 1, AddNextFlag, 1401, 20, 20 )
	RegCurTrigger( 14012 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 248 )
	TriggerAction( 1, AddNextFlag, 1401, 30, 10 )
	RegCurTrigger( 14013 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 211 )
	TriggerAction( 1, AddNextFlag, 1401, 40, 5 )
	RegCurTrigger( 14014 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 58 )
	TriggerAction( 1, AddNextFlag, 1401, 50, 5 )
	RegCurTrigger( 14015 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 242 )
	TriggerAction( 1, AddNextFlag, 1401, 60, 5 )
	RegCurTrigger( 14016 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 578 )
	TriggerAction( 1, AddNextFlag, 1401, 70, 20 )
	RegCurTrigger( 14017 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 596 )
	TriggerAction( 1, AddNextFlag, 1401, 80, 30 )
	RegCurTrigger( 14018 )


------------------------------------------------------------------Второе перерождение

	DefineMission( 6071, "\194\242\238\240\238\229 \207\229\240\229\240\238\230\228\229\237\232\229", 1402 )
	MisBeginTalk( "<t>Вам ещё учиться и учиться, но за время прохождения моих заданий Вы быстро всему научитесь " )
	MisBeginCondition( CheckZS )
	MisBeginCondition( NoRecord, 1402)
	MisBeginCondition( NoMission, 1402)
	MisBeginAction( AddMission, 1402)
	MisCancelAction( ClearMission ,1402)

	MisNeed( MIS_NEED_DESP, " Ищите Ненавистный Куст у города Аргента " )
	MisHelpTalk( "<t>Выйдите за пределы города Аргента и поговорите с Ненавистным Кустом " )

	MisResultCondition( AlwaysFailure )

-------------------------------------------------------------------

	DefineMission( 6072, "\194\242\238\240\238\229 \207\229\240\229\240\238\230\228\229\237\232\229", 1402, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Ха-ха-ха-ха " )
	MisResultCondition( HasMission, 1402)
	MisResultCondition( NoRecord, 1402)
	MisResultAction( AddSailExp , 10, 10)
	MisResultAction( SetRecord, 1402)
	MisResultAction( ClearMission, 1402)

-----------------------------------------------------------------реб 2

	DefineMission( 6073, "\199\224\227\224\228\238\247\237\251\233 \237\229\237\224\226\232\241\242\237\251\233 \202\243\241\242", 1403 )

	MisBeginTalk( "<t>Ты мне ответишь на мой вопрос!" )
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasRecord, 1402)
	MisBeginCondition( NoRecord, 1403)
	MisBeginCondition( NoMission, 1403)
	MisBeginAction( AddMission, 1403)
	MisCancelAction( ClearMission, 1403)

	MisNeed( MIS_NEED_DESP, " Ответить на вопрос Ненавистной Травы " )
	
	MisResultTalk( "<t>Я хочу отомстить!" )
	MisHelpTalk( "<t>Не уходите от ответа!" )
	MisResultCondition( HasRecord, 1404)
	MisResultCondition( HasMission, 1403)
	MisResultAction( SetRecord, 1403)
	MisResultAction( ClearMission, 1403)
	MisResultAction( AddSailExp, 10, 10)

---------------------------------------------------------------реб 2

	DefineMission( 6074, "\199\224\227\224\228\238\247\237\251\233 \237\229\237\224\226\232\241\242\237\251\233 \202\243\241\242", 1408 )

	MisBeginTalk( "<t>Я не смерюсь, Вы меня убиваете! Сходите в Священую Войну и принесите мне от туда 20 кровавых контрактов " )
	MisBeginCondition( NoMission, 1408)
	MisBeginCondition( NoRecord, 1408)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( HasRecord, 1405)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1408)
	MisBeginAction( AddTrigger, 14081, TE_GETITEM, 2383, 20 )--кровавый контракт
	MisCancelAction( ClearMission, 1408)

	MisNeed( MIS_NEED_ITEM, 2383 , 20, 10, 20)
	
	MisResultTalk( "<t>\213\224-\245\224-\245\224... \211 \210\229\225\255 \245\238\240\238\248\229\229 \247\243\226\241\242\226\238 \254\236\238\240\224, \229\249\191 \237\229\236\237\238\227\238 \232 \242\251 \228\238\233\228\191\248\252 \228\238 \241\226\238\229\233 \246\229\235\232!" )
	--MisResultTalk( "<t>Ха-ха-ха... У Тебя хорошее чувство юмора, ещё немного и ты дойдёшь до своей цели!" )
	MisHelpTalk( "<t>Кровавый Контракт ты сможешь получить только сходив в Священную Войну!" )
	MisResultCondition( HasMission, 1408)
	MisResultCondition( NoRecord, 1408)
	MisResultCondition( HasItem, 2383, 20)
	MisResultAction( TakeItem ,2383, 20)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1408)
	MisResultAction( SetRecord, 1409)
	MisResultAction( ClearMission, 1408)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2383)	
	TriggerAction( 1, AddNextFlag, 1408, 10, 20 )
	RegCurTrigger( 14081 )

-------------------------------------------------------------реб 2

	DefineMission( 6075, "\199\224\227\224\228\238\247\237\251\233 \237\229\237\224\226\232\241\242\237\251\233 \202\243\241\242", 1410 )

	MisBeginTalk( "<t>Я злюсь на тебя всё больше и больше... Принеси мне 10 Чистой воды и не зли меня!" )
	MisBeginCondition( NoRecord, 1410)
	MisBeginCondition( NoMission, 1410)
	MisBeginCondition( HasRecord, 1406)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1410)
	MisBeginAction( AddTrigger, 14101, TE_GETITEM, 1649, 10 )--Чистая вода
	MisCancelAction( ClearMission, 1410)

	MisNeed( MIS_NEED_ITEM, 1649 , 10, 10, 10)

	MisResultTalk( "<t>Поскольку ты так искрен, то я дам тебе еще один шанс." )
	MisHelpTalk( " Не теряй зря время, я и так на тебя злой!" )
	MisResultCondition( HasMission, 1410)
	MisResultCondition( NoRecord, 1410)
	MisResultCondition( HasItem, 1649, 10)
	MisResultAction( SetRecord, 1410)
	MisResultAction( SetRecord, 1405)
	MisResultAction( TakeItem, 1649, 10)
	MisResultAction( ClearMission, 1410)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1410, 10, 10 )
	RegCurTrigger( 14101 )

-------------------------------------------------------реб 2

	DefineMission( 6076, "\199\224\227\224\228\238\247\237\251\233 \237\229\237\224\226\232\241\242\237\251\233 \202\243\241\242", 1411 )
	MisBeginTalk( "<t>Убийца, злодей, дай мне 1.000.000 золотом, и может быть я прощу тебя " )
	MisBeginCondition( NoRecord, 1411)
	MisBeginCondition( NoMission, 1411)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( HasRecord, 1407)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1411)
	MisCancelAction( ClearMission, 1411)

	MisNeed( MIS_NEED_DESP, "<t>Дать 1.000.000 золота Ненавистной траве " )
	
	MisResultTalk( "<t>Деньги-Деньги, нет в них ни смысла ни разума, а вот убийство моих разумных братьев это огромный грех,  и эти деньги не помогут мне их забыть " )
	MisHelpTalk( "<t>Быстро, дай мне деньги!" )
	MisResultCondition( HasMission, 1411)
	MisResultCondition( NoRecord, 1411)
	MisResultCondition( HasMoney, 1000000)
	MisResultAction( TakeMoney, 1000000)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1411)
	MisResultAction( SetRecord, 1409)
	MisResultAction( ClearMission, 1411)

---------------------------------------------------------Брифинги

	DefineMission( 6077, "\193\240\232\244\232\237\227\232", 1412 )
	MisBeginTalk( "<t>Я вижу, что ты осознаёшь вину в смертях моих собратьев..." )
	MisBeginCondition( NoRecord, 1412)
	MisBeginCondition( NoMission, 1412)
	MisBeginCondition( HasRecord, 1409)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1412)
	MisCancelAction( ClearMission, 1412)

	MisNeed( MIS_NEED_DESP, " Раздобыть файлы у охранника замка и выяснить, что тут произходит." )
	MisHelpTalk( "<t>Не путайся у меня под ногами, я сказал тебе уже чем заняться!" )

	MisResultCondition( AlwaysFailure )

---------------------------------------------------------Брифинги

	DefineMission( 6078, "\193\240\232\244\232\237\227\232", 1412, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure)

	MisResultTalk( "<t>Что? У цветка проблемы? Это Вам сам цветок сказал? Бред... Растения не могут говорить!" )
	MisResultCondition( HasMission, 1412)
	MisResultCondition( NoRecord, 1412)
	MisResultAction( SetRecord, 1412)
	MisResultAction( ClearMission, 1412)
	MisResultAction( AddSailExp, 5, 5)

---------------------------------------------------------Замок Гвардии   собирание перьев

	DefineMission( 6079, "\209\225\238\240 \207\229\240\252\229\226", 1413 )--Сбор Перьев
	MisBeginTalk( "<t>Я Вам дам не простую задачу: Как Вы уже видели, перья перерождения состоят из двух видов перьев, и мы не можем сейчас выпускать новые крылья, у нас закончились припасы перьев. Принесите мне <b100Белоснежного султана> и <b100 Черных перьев>." )
	MisBeginCondition( NoMission, 1413)
	MisBeginCondition( NoRecord, 1413)
	MisBeginCondition( HasRecord, 1412)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1413)
	MisBeginAction( AddTrigger, 14131, TE_GETITEM, 4364, 100)---------черное перо
	MisBeginAction( AddTrigger, 14132, TE_GETITEM, 4347, 100)--белоснежный султан
	MisCancelAction( ClearMission, 1413)

	MisNeed( MIS_NEED_ITEM, 4364, 100, 10, 100)
	MisNeed( MIS_NEED_ITEM, 4347, 100, 20, 100)

	MisResultTalk( "<t>Вы сделали очень хорошее дело!" )
	MisHelpTalk( "<t>Эти перья можно выбить из монстров города Аргента в точках (1360,2683) и (1461,3018)." )
	MisResultCondition( HasMission, 1413)
	MisResultCondition( NoRecord, 1413)
	MisResultCondition( HasItem, 4364, 100)
	MisResultCondition( HasItem, 4347, 100)
	MisResultAction( TakeItem, 4364, 100)
	MisResultAction( TakeItem, 4347, 100)
	MisResultAction( AddSailExp, 40, 40)
	MisResultAction( SetRecord, 1413)
	MisResultAction( ClearMission, 1413)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4364)	
	TriggerAction( 1, AddNextFlag, 1413, 10, 100 )
	RegCurTrigger( 14131 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4347)	
	TriggerAction( 1, AddNextFlag, 1413, 20, 100 )
	RegCurTrigger( 14132 )

--------------------------------------------------------помощь другим

	DefineMission( 6080, "\207\238\236\238\249\252 \228\240\243\227\232\236", 1414 )
	MisBeginTalk( "<t>Идите и помогайте другим людям, им тоже нужна помощь, потом вернитесь ко мне!" )
	MisBeginCondition( HasRecord, 1413)
	MisBeginCondition( NoRecord, 1414)
	MisBeginCondition( NoMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1414)
	MisCancelAction( ClearMission, 1414)

	MisNeed( MIS_NEED_DESP, "<t>Прогуляться по городу в людей, которым необходимо помочь " )

	MisResultTalk( "<t>Вы помогли многим, это потрясающе!" )
	MisHelpTalk( "<t>В городе много людей нуждающихся в помощи!" )
	MisResultCondition( HasMission, 1414)
	MisResultCondition( NoRecord, 1414)
	MisResultCondition( HasRecord, 1428)
	MisResultCondition( HasRecord, 1417)
	MisResultCondition( HasRecord, 1420)
	MisResultCondition( HasRecord, 1422)
	MisResultCondition( HasRecord, 1424)
	MisResultAction( AddSailExp, 10,10)
	MisResultAction( SetRecord, 1414)
	MisResultAction( ClearMission, 1414)

---------------------------------------------------------Тина Роза Шарм ---- баре девушку
	DefineMission( 6081, "\206\247\224\240\238\226\224\237\232\229 \208\238\243\231", 1415 )--Очарование Роуз
	MisBeginTalk( "<t>Я видела молодого человека, он так крассиво говорит(ее глаза наполняются маленькая звездочка)." )
	MisBeginCondition( NoChaType, 3)
	MisBeginCondition( NoChaType, 4)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginCondition( NoMission, 1415)
	MisBeginCondition( NoRecord, 1415)
	MisBeginAction( AddMission, 1415)
	MisCancelAction( ClearMission, 1415)

	MisNeed( MIS_NEED_DESP, " Девочка в баре хочет видеть Вас, пговорите с Мо Янг " )

	MisResultTalk( "<t>Не плохо, мама Хуху тоже может играть 80 мин " )
	MisHelpTalk( "<t>Вы не находите розу красивой?" )
	MisResultCondition( HasState, 110)
	MisResultCondition( HasMission, 1415)
	MisResultCondition( NoRecord, 1415)
	MisResultAction( SetRecord, 1415)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1428)
	MisResultAction( ClearMission, 1415)


---------------------------------------------------------Очерование Роуз, ангельские крылья

	DefineMission( 6082, "\206\247\224\240\238\226\224\237\232\229 \208\238\243\231", 1416 )
	MisBeginTalk( "<t>Я имел честь разговаривать о самых прикрасных вещах с самым прекрасным собеседником " )
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( NoRecord, 1416)
	MisBeginCondition( NoMission, 1416)
	MisBeginCondition( NoChaType, 1)
	MisBeginCondition( NoChaType, 2)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1416)
	MisCancelAction( ClearMission, 1416)

	MisNeed( MIS_NEED_DESP, "Алкоголик Финди хочет с Вами поговорить!" )

	MisResultTalk( "<t>Я должен признать, что Вы постарались на славу!" )
	MisHelpTalk( "<t>Вы не находите розу красивой?" )
	MisResultCondition( HasState, 110)
	MisResultCondition( HasMission, 1416)
	MisResultCondition( NoRecord, 1416)
	MisResultAction( SetRecord, 1416)
	MisResultAction( SetRecord, 1428)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( ClearMission, 1416)
---------------------------------------------------------Волна злополучной модели ---- парикмахерские Картер 

	DefineMission( 6085, "\199\235\238\239\238\235\243\247\237\224\255 \204\238\228\229\235\252", 1417 )--Злополучная Модель
	MisBeginTalk( "<t>Я хочу попробовать новую причёску, но у меня нет необходимого инструмента. Принесите мне <b5 Половин ножниц> и <b5 Гребеней>." )
	MisBeginCondition( NoMission, 1417)
	MisBeginCondition( NoRecord, 1417)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1417)
	MisBeginAction( AddTrigger, 14171, TE_GETITEM, 1804, 5)--расчёска
	MisBeginAction( AddTrigger, 14172, TE_GETITEM, 1805, 5)--Гребень
	MisCancelAction( ClearMission, 1417)

	MisNeed( MIS_NEED_ITEM, 1804, 5, 10, 5)
	MisNeed( MIS_NEED_ITEM, 1805, 5, 20, 5)
	
	MisResultTalk( "<t>Я Вам сильно благодарен, сейчас же займусь разработкой новых причёсок." )
	MisResultCondition( HasMission, 1417)
	MisResultCondition( HasItem, 1804, 5)
	MisResultCondition( HasItem, 1805, 5)
	MisResultCondition( NoRecord, 1417)
	MisResultAction( TakeItem, 1804, 5)
	MisResultAction( TakeItem, 1805, 5)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1417)
	MisResultAction( ClearMission, 1417)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1804)	
	TriggerAction( 1, AddNextFlag, 1417, 10, 5 )
	RegCurTrigger( 14171 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1805)	
	TriggerAction( 1, AddNextFlag, 1417, 20, 5 )
	RegCurTrigger( 14172 )


----------------------------------------------------------мечта

	DefineMission( 6086, "\204\229\247\242\224", 1418 )--мечта
	MisBeginTalk( "<t>Я не хочу быть пешкой в спектаклях, я хочу играть главную роль в этом мире, Главно командующий сказал что для этого я должен вступить в Флот её величества Королевы." )
	MisBeginCondition( NoMission, 1418)
	MisBeginCondition( NoRecord, 1418)
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasMission, 1414)
	MisBeginAction( AddMission, 1418)
	MisCancelAction( ClearMission, 1418)

	MisNeed( MIS_NEED_DESP, " Отправляйтесь к командующему ВМС Дезиталио, и поговорите о мечте бедолаги" )

	MisResultCondition( AlwaysFailure )

------------------------------------------------------------мечта

	DefineMission( 6087, "\204\229\247\242\224", 1418, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Я не ошибся? Он хочет служить Её Виличеству Королеве?" )
	MisResultCondition( HasMission, 1418)
	MisResultCondition( NoRecord, 1418)
	MisResultAction( SetRecord, 1418)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( ClearMission, 1418)

-------------------------------------------------------------мечта

	DefineMission( 6088, "\204\229\247\242\224", 1419 )
	MisBeginTalk( "<t>Ну что я могу сказать, необходимо пройти тестирование на способность быть в Флоте, для этого надо убить: <r5 Фрегатов бородачей> и <r5 Кораблей поддержки бородачей>." )
	MisBeginCondition( NoMission, 1419)
	MisBeginCondition( NoRecord, 1419)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( HasRecord, 1418)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1419)
	MisCancelAction( ClearMission, 1419)

	MisNeed( MIS_NEED_DESP, " Расскажите что необходимо для вступления в Флот." )

	MisResultCondition( AlwaysFailure )


--------------------------------------------------------------мечта

	DefineMission( 6089, "\204\229\247\242\224", 1419, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>О как?! Хорошо, дай мне подумать минутку." )
	MisResultCondition( HasMission, 1419)
	MisResultCondition( NoRecord, 1419)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1419)
	MisResultAction( ClearMission, 1419)

-------------------------------------------------------------мечта

	DefineMission( 6090, "\204\229\247\242\224", 1420 )
	MisBeginTalk( "<t>Это для меня почти не выполнимая задача, не могли бы Вы убить их вместо меня?" )
	MisBeginCondition( NoMission, 1420)
	MisBeginCondition( NoRecord, 1420)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( HasRecord, 1419)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1420)
	MisBeginAction( AddTrigger, 14201, TE_KILL, 630, 5)--Корабль поддержки бородачей
	MisBeginAction( AddTrigger, 14202, TE_KILL, 631, 5)--Фрегат бородачей
	MisCancelAction( ClearMission, 1420)

	MisNeed( MIS_NEED_DESP, " Убейте <r5 Кораблей поддержки бородачей> и <r5 Фрегатов бородачей>." )
	MisNeed( MIS_NEED_KILL, 630, 5, 10, 5)
	MisNeed( MIS_NEED_KILL, 631, 5, 20, 5)
	
	MisResultTalk( "<t>Я получил письмо от комадующего флота ВМС, меня приняли, Вы очень хроший человек!" )
	MisResultCondition( HasMission, 1420)
	MisResultCondition( NoRecord, 1420)
	MisResultCondition( HasFlag, 1420, 14)
	MisResultCondition( HasFlag, 1420, 24)
	MisResultAction( SetRecord, 1420)
	MisResultAction( ClearMission, 1420)
	MisResultAction( AddSailExp, 20, 20)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 630 )
	TriggerAction( 1, AddNextFlag, 1420, 10, 5 )
	RegCurTrigger( 14201 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 631 )
	TriggerAction( 1, AddNextFlag, 1420, 20, 5 )
	RegCurTrigger( 14202 )


---------------------------------------------------------------Банковская Система

	DefineMission( 6091, "\193\224\237\234\238\226\241\234\224\255 \209\232\241\242\229\236\224", 1421 )
	MisBeginTalk( "<t>У меня есть срочное послание в Ледыню, но я не так быстр как Вы, может Вы поможите мне и подработаете в лице курьера?" )
	MisBeginCondition( NoMission, 1421)
	MisBeginCondition( NoRecord, 1421)
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasMission, 1414)
	MisBeginAction( AddMission, 1421)
	MisCancelAction( ClearMission, 1421)

	MisNeed( MIS_NEED_DESP, "<t>Доставьте посылку " )

	MisResultTalk( "<t>Вы оправдали моё доверие " )
	MisHelpTalk( "<t>Вы очень туго соображаете..." )
	MisResultCondition( HasMission, 1421)
	MisResultCondition( NoRecord, 1421)
	MisResultCondition( CheckSpeed, 550)
	MisResultAction( SetRecord, 1421)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( ClearMission, 1421)

---------------------------------------------------------------

	DefineMission( 6092, "\193\224\237\234\238\226\241\234\224\255 \209\232\241\242\229\236\224", 1422 )
	MisBeginTalk( "<t>Я очень рад Вас видеть, Это послание очень важно для меня!" )
	MisBeginCondition( NoMission, 1422)
	MisBeginCondition( NoRecord, 1422)
	MisBeginCondition( HasRecord, 1421)
	MisBeginAction( AddMission, 1422)
	MisBeginAction( GiveItem, 956, 1, 4)
	MisCancelAction( ClearMission, 1422)

	MisNeed( MIS_NEED_DESP, " Отнести посылку в к банкиру " )
	MisHelpTalk( "<t>Ищите банкира!" )

	MisResultCondition( AlwaysFailure )

------------------------------------------------------------

	DefineMission( 6093, "\193\224\237\234\238\226\241\234\224\255 \209\232\241\242\229\236\224", 1422, COMPLETE )
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>Невероятно! Вы смогли меня найти... Это действительно потрясающе!" )
	MisResultCondition( HasMission, 1422)
	MisResultCondition( NoRecord, 1422)
	MisResultCondition( HasItem, 956, 1)
	MisResultAction( TakeItem, 956, 1)
	MisResultAction( SetRecord, 1422)
	MisResultAction( ClearMission, 1422)
	MisResultAction( AddSailExp, 5, 5)

----------------------------------------------------------Хорошие книги

	DefineMission( 6094, "\213\238\240\238\248\232\229 \234\237\232\227\232", 1423 )
	MisBeginTalk( "<t>Молодёж совсем перестаёт читать, и книги уходят из жизни людей, а именно в книгах таится вся важная информация!" )
	MisBeginCondition( NoRecord, 1423)
	MisBeginCondition( NoMission, 1423)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1423)
	MisBeginAction( GiveItem, 957, 1, 4)--История возрождений
	MisCancelAction( ClearMission, 1423)

	MisNeed( MIS_NEED_DESP, " Отнесите эту книгу человеку, который сможет прочитать её и вникнуть в суть её." )
	MisHelpTalk( "<t>Ищите лучше этого человека, может он даже ближе чем Вы сами можите себе представить " )

	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------Хорошие книги ----------------- история возрождния

	DefineMission( 6095, "\213\238\240\238\248\232\229 \234\237\232\227\232", 1423 )--Хорошие книги
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>О! Вы уже прочитали эту книгу? Тогда я заберу её у Вас!" )
	MisResultCondition( HasMission, 1423)
	MisResultCondition( NoRecord, 1423)
	MisResultCondition( HasItem, 957, 1)
	MisResultAction( TakeItem, 957, 1)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1423)
	MisResultAction( ClearMission, 1423)

-----------------------------------------------------------Хорошие книги

	DefineMission( 6096, "\213\238\240\238\248\232\229 \234\237\232\227\232", 1424 )
	MisBeginTalk( "<t>Значит Вы говорите, что читали книгу, а потом пришли в бар?" )
	MisBeginCondition( NoMission, 1424)
	MisBeginCondition( NoRecord, 1424)
	MisBeginCondition( HasRecord, 1423)
	MisBeginAction( AddMission, 1424)
	MisCancelAction( ClearMission, 1424)

	MisNeed( MIS_NEED_DESP, " Вам необходимо ответить на несколько вопросов по поводу <bИстории возрождений>." )
	MisHelpTalk( "<t>Эти вопросы не такие и сложные, не надо их бояться!" )
		
	MisResultTalk( "<t>Читать книжки всегда нужно, в них истина!" )
	MisResultCondition( HasMission, 1424)
	MisResultCondition( NoRecord, 1424)
	MisResultCondition( HasRecord, 1429)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1424)
	MisResultAction( ClearMission, 1424)

-----------------------------------------------------------Военный шпионаж

	DefineMission( 6097, "\194\238\229\237\237\251\233 \248\239\232\238\237\224\230", 1425 )

	MisBeginTalk( "<t>По моим наблюдениям, вы достойный солдат, и я могу вам доверить выполнение важной задачи, мы недавно направили разведчиков к черному дракону, но они до сих пор не вернулись, идти и разузнай всё." )
	MisBeginCondition( NoMission, 1425)
	MisBeginCondition( NoRecord, 1425)
	MisBeginCondition( HasRecord, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1425)
	MisCancelAction( ClearMission, 1425)

	MisNeed( MIS_NEED_DESP, " Отправляйтесь в логово Чёрного Дракона " )
	MisHelpTalk( "<t>Идите, и будьте внимательнее " )
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------Военный шпионаж

	DefineMission( 6098, "\194\238\229\237\237\251\233 \248\239\232\238\237\224\230", 1425, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Ааааа.. На нас напали молодые драконы, все... Это конец!..." )
	MisResultCondition( HasMission, 1425)
	MisResultCondition( NoRecord, 1425)
	MisResultAction( SetRecord, 1425)
	MisResultAction( AddSailExp, 10, 10)
	MisResultAction( ClearMission, 1425)

-----------------------------------------------------------Военный шпионаж

	DefineMission( 6099, "\194\238\229\237\237\251\233 \248\239\232\238\237\224\230", 1426 )
	MisBeginCondition( NoMission, 1426)
	MisBeginCondition( NoRecord, 1426)
	MisBeginCondition( HasRecord, 1425)
	MisBeginAction( AddMission, 1426)
	MisBeginAction( GiveItem, 958, 1, 4)--Запечатанная информация
	MisCancelAction( ClearMission, 1426)

	MisNeed( MIS_NEED_DESP, " Передать важный документ в штаб Гвардии." )
	MisHelpTalk( "<t>Я хочу вас!" )

	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------Военный шпионаж

	DefineMission( 6100, "\194\238\229\237\237\251\233 \248\239\232\238\237\224\230", 1426, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Что? Моих людей разбили? Это не возможно!" )
	MisResultCondition( HasMission, 1426)
	MisResultCondition( NoRecord, 1426)
	MisResultCondition( HasItem, 958, 1)
	MisResultAction( TakeItem, 958, 1)
	MisResultAction( AddSailExp, 10, 10)
	MisResultAction( SetRecord, 1426)
	MisResultAction( ClearMission, 1426)

-----------------------------------------------------------расплата

	DefineMission( 6101, "\208\224\241\239\235\224\242\224", 1427)

	MisBeginTalk( "<t>Мы должны отомстить этим кровожадным рептилиям! Убейте <rМаленького Черного дракона>, <rГромового дракончика> и <rКровожадного драко>. По Вашему возвращению мы отпразднуем победу в баре хорошим ромом!" )
	MisBeginCondition( NoMission, 1427)
	MisBeginCondition( NoRecord, 1427)
	MisBeginCondition( HasRecord, 1426)
	MisBeginAction( AddMission, 1427)
	MisBeginAction( AddTrigger, 14271, TE_KILL, 791, 1)--Маленький Черный дракон
	MisBeginAction( AddTrigger, 14272, TE_KILL, 793, 1)--Громовой дракончик
	MisBeginAction( AddTrigger, 14273, TE_KILL, 794, 1)--Кровожадный драко
	MisCancelAction( ClearMission, 1427)

	MisNeed( MIS_NEED_KILL, 791, 1, 10, 1)
	MisNeed( MIS_NEED_KILL, 793, 1, 30, 1)
	MisNeed( MIS_NEED_KILL, 794, 1, 50, 1)

	MisResultTalk( "<t>Спасибо, вы доказали, вы настоящий воин, позже вы можете  продолжить свой путь к перерождению." )
	MisHelpTalk( "<t>Будьте осторожны, эти ящеры не такие и слабые как могут показаться на первый взгляд." )
	MisResultCondition( HasMission, 1427)
	MisResultCondition( NoRecord, 1427)
	MisResultCondition( HasFlag, 1427, 10)
	MisResultCondition( HasFlag, 1427, 30)
	MisResultCondition( HasFlag, 1427, 50)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( SetRecord, 1427)
	MisResultAction( ClearMission, 1427)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 791 )
	TriggerAction( 1, AddNextFlag, 1427, 10, 1 )
	RegCurTrigger( 14271 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 793 )
	TriggerAction( 1, AddNextFlag, 1427, 30, 1 )
	RegCurTrigger( 14272 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 794 )
	TriggerAction( 1, AddNextFlag, 1427, 50, 1 )
	RegCurTrigger( 14273 )


----------------------------------------------------Вызов Чёрного Дракона

	DefineMission( 6102, "\194\251\231\238\226 \215\191\240\237\238\227\238 \196\240\224\234\238\237\224", 1430 )
	MisBeginTalk( "<t>Черный Дракон обитает в Логове Чёрного Дракона 2. Так же он считается одним из самых сильнейших Монстров в Игре. Вы точно уверены, что хотите пойти к нему?" )
	MisBeginCondition( NoMission, 1430)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1430)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14301, TE_KILL, 789, 1)--Черный дракон
	MisCancelAction( ClearMission, 1430)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 789, 1, 10, 1)

	MisResultTalk( "<t>Каждое сражение делает нас сильнее!" )
	MisHelpTalk( "<t>Прошу Вас не бойтесь, если уже сделали вызов!" )
	MisResultCondition( HasFlag, 1430, 10)
	MisResultCondition( HasMission, 1430)
	MisResultAction( AddSailExp, 120, 120)
	MisResultAction( ClearMission, 1430)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1430, 10, 1 )
	RegCurTrigger( 14301 )

------------------------------------------------------Вызов Блуждающей души

	DefineMission( 6103, "\194\251\231\238\226 \193\235\243\230\228\224\254\249\229\233 \228\243\248\232", 1432 )
	MisBeginTalk( "<t>Блуждающую Душу Вы сможете найти в Мире демонов 1, но будьте осторожны, этот монстр один из самых сильных монстров в игре!" )
	MisBeginCondition( NoMission, 1432)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1432)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14321, TE_KILL, 679, 1)--Блуждающая душа
	MisCancelAction( ClearMission, 1432)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 679, 1, 10, 1)

	MisResultTalk( "<t>Вы сильный Герой." )
	MisHelpTalk( "<t>Идите и убейте Блуждающую душу!" )
	MisResultCondition( HasFlag, 1432, 10)
	MisResultCondition( HasMission, 1432)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( ClearMission, 1432)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1432, 10, 1 )
	RegCurTrigger( 14321 )

------------------------------------------------------вызов Главы снежного люда

	DefineMission( 6104, "\226\251\231\238\226 \195\235\224\226\251 \241\237\229\230\237\238\227\238 \235\254\228\224", 1433 )
	MisBeginTalk( "<t>Главу Снежного Люда Вы сможете найти в Мире Демонов2, но будьте осторожны, он считается одним из самых сильных монстров игры!" )
	MisBeginCondition( NoMission, 1433)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1433)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14331, TE_KILL, 678, 1)--Глава снежного люда
	MisCancelAction( ClearMission, 1433)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 678, 1, 10, 1)

	MisResultTalk( "<t>Вы храбрый и смелый Воин." )
	MisHelpTalk( "<t>Отправляйтесь в Мир демонов!" )
	MisResultCondition( HasFlag, 1433, 10)
	MisResultCondition( HasMission, 1433)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( ClearMission, 1433)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1433, 10, 1 )
	RegCurTrigger( 14331 )

-------------------------------------------------------Вызов Барбороса

	DefineMission( 6105, "\194\251\231\238\226 \193\224\240\225\238\240\238\241\224", 1434 )
	MisBeginTalk( "<t>Барбаросо очень сильный монстр игры, будьте с ним осторожны. Найти его Вы сможете на острове скелетов!" )
	MisBeginCondition( NoMission, 1434)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1434)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14341, TE_KILL, 805, 1)--Барбороса
	MisCancelAction( ClearMission, 1434)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 805, 1, 10, 1)

	MisResultTalk( "<t>Вы храбрый и смелый Воин." )
	MisHelpTalk( "<t>Отправляйтесь на поиски Барборосы!" )
	MisResultCondition( HasFlag, 1434, 10)
	MisResultCondition( HasMission, 1434)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1434)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 805 )
	TriggerAction( 1, AddNextFlag, 1434, 10, 1 )
	RegCurTrigger( 14341 )

-------------------------------------------------------Вызов Командира мертвых душ

	DefineMission( 6106, "\194\251\231\238\226 \202\238\236\224\237\228\232\240\224 \236\229\240\242\226\251\245 \228\243\248", 1435 )
	MisBeginTalk( "<t>Командир мертвых душ - это один из самых сильных монстров игры. Найти его можно в поиске убежища. Вы уверены, что готовы с ним бороться?" )
	MisBeginCondition( NoMission, 1435)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1435)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14351, TE_KILL, 807, 1)--Командир мертвых душ
	MisCancelAction( ClearMission, 1435)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 807, 1, 10, 1)

	MisResultTalk( "<t>Вы сильный и храбрый Герой." )
	MisHelpTalk( "<t>Отправляйтесь в Убежище!" )
	MisResultCondition( HasFlag, 1435, 10)
	MisResultCondition( HasMission, 1435)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1435)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 807 )
	TriggerAction( 1, AddNextFlag, 1435, 10, 1 )
	RegCurTrigger( 14351 )

-------------------------------------------------------Вызов Доисторического гигантского Спрута

	DefineMission( 6107, "\194\251\231\238\226 \196\238\232\241\242\238\240\232\247\229\241\234\238\227\238 \227\232\227\224\237\242\241\234\238\227\238 \209\239\240\243\242\224", 1436 )
	MisBeginTalk( "<t>Крекен - Доисторический гигантский Спрут, является одним из самых сильнейших монстров игры, обитает он у острова скелетов. Вы уверены, что хотите с ним воевать?" )
	MisBeginCondition( NoMission, 1436)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1436)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14361, TE_KILL, 796, 1)--Доисторический гигантский Спрут
	MisCancelAction( ClearMission, 1436)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 796, 1, 10, 1)

	MisResultTalk( "<t>Ищите Крекена у Острова Скелетов." )
	MisHelpTalk( "<t>Не бойтесь, он не укусит!" )
	MisResultCondition( HasFlag, 1436, 10)
	MisResultCondition( HasMission, 1436)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1436)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 796 )
	TriggerAction( 1, AddNextFlag, 1436, 10, 1 )
	RegCurTrigger( 14361 )

-------------------------------------------------------Вызов Черного бриллианта

	DefineMission( 6108, "\194\251\231\238\226 \215\229\240\237\238\227\238 \225\240\232\235\235\232\224\237\242\224", 1437 )
	MisBeginTalk( "<t>Черный бриллиант, является одним из сильнейших монстров игры, найти его можно в военной базе. Осторожно с ним, он опасен!" )
	MisBeginCondition( NoMission, 1437)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1437)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14371, TE_KILL, 815, 1)--Черный бриллиант
	MisCancelAction( ClearMission, 1437)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 815, 1, 10, 1)

	MisResultTalk( "<t>Вы настоящий Герой." )
	MisHelpTalk( "<t>Не бойтесь его!" )
	MisResultCondition( HasFlag, 1437, 10)
	MisResultCondition( HasMission, 1437)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1437)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 815 )
	TriggerAction( 1, AddNextFlag, 1437, 10, 1 )
	RegCurTrigger( 14371 )

-------------------------------------------------------Вызов Рыцаря отчаяния - Саро

	DefineMission( 6109, "\194\251\231\238\226 \208\251\246\224\240\255 \238\242\247\224\255\237\232\255 - \209\224\240\238", 1438 )
	MisBeginTalk( "<t>Рыцарь отчаяния - Саро - это один из сильнейших монстров в игре, найти его можно в Абоддоне 5-8. Будьте осторожны с ним!" )
	MisBeginCondition( NoMission, 1438)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1438)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14381, TE_KILL, 974, 1)--Рыцарь отчаяния - Саро
	MisCancelAction( ClearMission, 1438)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 974, 1, 10, 1)

	MisResultTalk( "<t>Вы настоящий Герой." )
	MisHelpTalk( "<t>Убейте Рыцаря отчаяния - Саро!" )
	MisResultCondition( HasFlag, 1438, 10)
	MisResultCondition( HasMission, 1438)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1438)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 974 )
	TriggerAction( 1, AddNextFlag, 1438, 10, 1 )
	RegCurTrigger( 14381 )

-------------------------------------------------------Вызов Грязилищя из Бездны - Кару

	DefineMission( 6110, "\194\251\231\238\226 \195\240\255\231\232\235\232\249\255 \232\231 \193\229\231\228\237\251 - \202\224\240\243\191\191", 1439 )--Вызов Грязилищя из Бездны - Кару
	MisBeginTalk( "<t>Грязилище из Бездны - Кару можно найти в Абаддоне 6. Осторожно! Он считается одним из сильнейших монстров игры!" )
	MisBeginCondition( NoMission, 1439)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1439)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14391, TE_KILL, 975, 1)--Грязилище из Бездны - Кару
	MisCancelAction( ClearMission, 1439)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 975, 1, 10, 1)

	MisResultTalk( "<t>Вы настоящий Герой." )
	MisHelpTalk( "<t>Не бойтесь и отправляйтесь в Абаддон 6!" )
	MisResultCondition( HasFlag, 1439, 10)
	MisResultCondition( HasMission, 1439)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1439)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 975 )
	TriggerAction( 1, AddNextFlag, 1439, 10, 1 )
	RegCurTrigger( 14391 )

-------------------------------------------------------Вызов Узника Бездны - Аратур

	DefineMission( 6111, "\194\251\231\238\226 \211\231\237\232\234\224 \193\229\231\228\237\251 - \192\240\224\242\243\240", 1440)
	MisBeginTalk( "<t>Узник Бездны - Аратур можно найти в Абаддоне 7. Осторожно! Он считается одним из сильнейших монстров игры!" )
	MisBeginCondition( NoMission, 1440)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1440)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14401, TE_KILL, 976, 1)--Узник Бездны - Аратур
	MisCancelAction( ClearMission, 1440)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 976, 1, 10, 1)

	MisResultTalk( "<t>Every battle will make us stronger.")
	MisHelpTalk( "<t>Please becareful!")
	MisResultCondition( HasFlag, 1440, 10)
	MisResultCondition( HasMission, 1440)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1440)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 976 )
	TriggerAction( 1, AddNextFlag, 1440, 10, 1 )
	RegCurTrigger( 14401 )

-------------------------------------------------------Вызов Демона бездны - Сакруа

	DefineMission( 6112, "\194\251\231\238\226 \196\229\236\238\237\224 \225\229\231\228\237\251 - \209\224\234\240\243\224", 1441 )
	MisBeginTalk( "<t>Демон бездны - Сакруа можно найти в Абаддоне 8. Осторожно! Он считается одним из сильнейших монстров игры!" )
	MisBeginCondition( NoMission, 1441)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1441)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14411, TE_KILL, 977, 1)--Демон бездны - Сакруа
	MisCancelAction( ClearMission, 1441)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 977, 1, 10, 1)

	MisResultTalk( "<t>Вы настоящий Герой." )
	MisHelpTalk( "<t>Не бойтесь умереть!" )
	MisResultCondition( HasFlag, 1441, 10)
	MisResultCondition( HasMission, 1441)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1441)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 977 )
	TriggerAction( 1, AddNextFlag, 1441, 10, 1 )
	RegCurTrigger( 14411 )

-------------------------------------------------------Вызов Чудовищя из Бездны - Куро
	DefineMission( 6113, "\194\251\231\238\226 \215\243\228\238\226\232\249\255 \232\231 \193\229\231\228\237\251 - \202\243\240\238", 1442 )
	MisBeginTalk( "<t>Чудовище из Бездны - Куро можно найти в Абаддоне 9. Осторожно! Он считается одним из сильнейших монстров игры!" )
	MisBeginCondition( NoMission, 1442)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginCondition( Checksailexpless, 9000)
	MisBeginAction(	AddMission, 1442)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14421, TE_KILL, 978, 1)--Чудовище из Бездны - Куро
	MisCancelAction( ClearMission, 1442)
	MisCancelAction( ClearRecord, 1431)

	MisNeed( MIS_NEED_KILL, 978, 1, 10, 1)

	MisResultTalk( "<t>Вы настоящий Герой." )
	MisHelpTalk( "<t>Не бойтесь умереть!" )
	MisResultCondition( HasFlag, 1442, 10)
	MisResultCondition( HasMission, 1442)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1442)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 978 )
	TriggerAction( 1, AddNextFlag, 1442, 10, 1 )
	RegCurTrigger( 14422 )

	------------------------------------------------Телец Героя
	
	DefineMission( 5608, "\210\229\235\229\246 \195\229\240\238\255", 1114 )
	
	MisBeginTalk( "<t>Телец всегда был символом счастья.Настоящий Герой должен быть знаком с Хаосом." )

	MisBeginCondition(NoMission,1114)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1114)
	MisBeginAction(AddMission,1114)
	MisCancelAction(ClearMission, 1114)
	
	MisNeed(MIS_NEED_DESP, " Посторайтесь набрать 30 очков хаоса " )
	MisHelpTalk( "<t>Посторайтесь набрать 30 очков хаоса ")
	MisResultTalk( "<t>Не теряйте голову в чеславии, одна победа - это не победа во всём, а только первый шаг на длиной слесгнице!" )

	MisResultCondition(HasMission, 1114)
	MisResultCondition(NoRecord,1114)
	MisResultCondition(HasFightingPoint,30 )
	MisResultAction(TakeFightingPoint, 30 )
	MisResultAction(ClearMission, 1114)
	MisResultAction(SetRecord,  1114 )
	MisResultAction(GiveItem, 3028, 1, 4)--пустой предмет
	MisResultBagNeed(1)

	-------------------------------------------------Кровавая репутация Тельца
	
	DefineMission( 5609, "\202\240\238\226\224\226\224\255 \240\229\239\243\242\224\246\232\255 \210\229\235\252\246\224", 1115 )
	
	MisBeginTalk("<t>Репутация - это очень важный пункт у каждого героя!" )

	MisBeginCondition(NoMission,1115)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1115)
	MisBeginAction(AddMission,1115)
	MisCancelAction(ClearMission, 1115)
	
	MisNeed(MIS_NEED_DESP, "Получите 1000 репутации." )
	MisHelpTalk( "<t>Вам необходимо помогать ученикам и тем самым получать репутацию." )
	MisResultTalk( "<t>Я вижу, что Вам не в первой помогать людям." )

	MisResultCondition(HasMission, 1115)
	MisResultCondition(NoRecord,1115)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(TakeCredit, 1000 )
	MisResultAction(ClearMission, 1115)
	MisResultAction(SetRecord, 1115 )
	MisResultAction(GiveItem, 3029, 1, 4)--пустой предмет
	MisResultBagNeed(1)


	-------------------------------------------------Кровавый Телец(уровень)
	
	DefineMission( 5610, "\202\240\238\226\224\226\251\233 \210\229\235\229\246 \195\229\240\238\255", 1116 )
	
	MisBeginTalk( "<t>Вы должны быть не ниже 55 уровня!" )

	MisBeginCondition(NoMission,1116)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1116)
	MisBeginAction(AddMission,1116)
	MisCancelAction(ClearMission, 1116)
	
	MisNeed(MIS_NEED_DESP, " Получить 55 уроверь." )
	MisHelpTalk( "<t>55 уровень, не так и сложно его получить...." )
	MisResultTalk( "<t>Вы ростёте на глазах." )

	MisResultCondition(HasMission, 1116)
	MisResultCondition(NoRecord,1116)
	MisResultCondition(LvCheck, ">", 54 )
	MisResultAction(ClearMission, 1116)
	MisResultAction(SetRecord,  1116 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------Телец
	
	DefineMission( 5611, "\215\229\241\242\252 \210\229\235\252\246\224", 1117 )--Честь
	
	MisBeginTalk( "<t>Без Чести в наше время ни куда. У Вас должно быть 300 чести." )

	MisBeginCondition(NoMission,1117)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1117)
	MisBeginAction(AddMission,1117)
	MisCancelAction(ClearMission, 1117)
	
	MisNeed(MIS_NEED_DESP, " У Вас должно быть 300 чести " )
	MisHelpTalk( "<t>Выигрывайте в сражениях между игроками." )
	MisResultTalk( "<t>Мои Вам поздравления." )

	MisResultCondition(HasMission, 1117)
	MisResultCondition(NoRecord,1117)
	MisResultCondition(HasHonorPoint,300 )
	MisResultAction(TakeHonorPoint, 300 )
	MisResultAction(ClearMission, 1117)
	MisResultAction(SetRecord,  1117 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------Телец
	
	DefineMission( 5612, "\209\225\238\240 \196\224\237\232 \210\229\235\252\246\243", 1118 )
	
	MisBeginTalk( "<t>Вам необходимо собрать Дань для Тельца." )

	MisBeginCondition(NoMission,1118)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1118)
	MisBeginAction(AddMission,1118)
	MisBeginAction(AddTrigger, 11181, TE_GETITEM, 4804, 10 )
	MisBeginAction(AddTrigger, 11182, TE_GETITEM, 4720, 10 )
	MisBeginAction(AddTrigger, 11183, TE_GETITEM, 3129, 10 )
	MisBeginAction(AddTrigger, 11184, TE_GETITEM, 2588, 5 )
	MisBeginAction(AddTrigger, 11185, TE_GETITEM, 4494, 1 )
	MisBeginAction(AddTrigger, 11186, TE_GETITEM, 1682, 50 )
	MisBeginAction(AddTrigger, 11187, TE_GETITEM, 1138, 10 )
	MisBeginAction(AddTrigger, 11188, TE_GETITEM, 0227, 1 )
	MisCancelAction(ClearMission, 1118)
	

	MisNeed(MIS_NEED_ITEM, 4804, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4720, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3129, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 2588, 5, 31, 5 )
	MisNeed(MIS_NEED_ITEM, 4494, 1, 36, 1 )
	MisNeed(MIS_NEED_ITEM, 1682, 50, 37, 50 )
	MisNeed(MIS_NEED_ITEM, 1138, 10, 87, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 1, 97, 1 )

	MisHelpTalk( "<t>Что бы не злить богов им подают подношения в виде Дани и Жертвоприношений." )
	MisResultTalk("<t>Боги на Вашей стороне." )

	MisResultCondition(HasMission, 1118)
	MisResultCondition(NoRecord,1118)
	MisResultCondition(HasItem, 4804, 10 )
	MisResultCondition(HasItem, 4720, 10 )
	MisResultCondition(HasItem, 3129, 10 )
	MisResultCondition(HasItem, 2588, 5 )
	MisResultCondition(HasItem, 4494, 1 )
	MisResultCondition(HasItem, 1682, 50 )
	MisResultCondition(HasItem, 1138, 10 )
	MisResultCondition(HasItem, 0227, 1 )

	MisResultAction(TakeItem, 4804, 10 )
	MisResultAction(TakeItem, 4720, 10 )
	MisResultAction(TakeItem, 3129, 10 )
	MisResultAction(TakeItem, 2588, 5 )
	MisResultAction(TakeItem, 4494, 1 )
	MisResultAction(TakeItem, 1682, 50 )
	MisResultAction(TakeItem, 1138, 10 )
	MisResultAction(TakeItem, 0227, 1 )
	MisResultAction(ClearMission, 1118)
	MisResultAction(SetRecord,  1118 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1118, 1, 10 )
	RegCurTrigger( 11181 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1118, 11, 10 )
	RegCurTrigger( 11182 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1118, 21, 10 )
	RegCurTrigger( 11183 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1118, 31, 5 )
	RegCurTrigger( 11184 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1118, 36, 1 )
	RegCurTrigger( 11185 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1118, 37, 50 )
	RegCurTrigger( 11186 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1118, 87, 10 )
	RegCurTrigger( 11187 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1118, 97, 1 )
	RegCurTrigger( 11188 )


	----------------------------------------------------------телец
	DefineMission( 5613, "\209\236\229\240\242\252 \210\229\235\252\246\224", 1119 )
	MisBeginTalk( "<t>Избавьте жителей от злого духа Тельца на острове Купидона " )
				
	MisBeginCondition(NoMission, 1119)
	MisBeginCondition(HasRecord,1152)
	MisBeginCondition(NoRecord,1119)
	MisBeginAction(AddMission,1119)
	MisBeginAction(AddTrigger, 11191, TE_KILL, 1038, 1)---Телец
	
	MisCancelAction(ClearMission, 1119)

	MisNeed(MIS_NEED_DESP, " Убить Тельца на острове Купидона в точке(2436,2405)!" )
	MisNeed(MIS_NEED_KILL, 1038,1, 10, 1)
	

	MisResultTalk( "<t>Вы сильный Герой, если справились с таким серьёзным противником." )
	MisHelpTalk( "<t>Отправляйтесь и спосите жителей острова Купидон." )
	MisResultCondition(HasMission,  1119)
	MisResultCondition(HasFlag, 1119, 10)
	MisResultCondition(NoRecord , 1119)
	MisResultAction(GiveItem, 3034, 1, 4 )
	MisResultAction(ClearMission,  1119)
	MisResultAction(SetRecord,  1119 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1038)	
	TriggerAction( 1, AddNextFlag, 1119, 10, 1 )
	RegCurTrigger( 11191 )






-------------------------------------------------телец
	
	DefineMission(5614, "\210\229\235\229\246 \195\229\240\238\255", 1120 )
	
	MisBeginTalk( "<t>Телец всегда был символом счастья.Настоящий Герой должен быть знаком с Хаосом " )

	MisBeginCondition(NoMission,1120)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1120)
	MisBeginAction(AddMission,1120)
	MisCancelAction(ClearMission, 1120)
	
	MisNeed(MIS_NEED_DESP, " Посторайтесь набрать 60 очков хаоса " )
	MisHelpTalk( "<t>Посторайтесь набрать 30 очков хаоса " )
	MisResultTalk( "<t>Не теряйте голову в чеславии, одна победа - это не победа во всём, а только первый шаг на длиной слесгнице!" )

	MisResultCondition(HasMission, 1120)
	MisResultCondition(NoRecord,1120)
	MisResultCondition(HasFightingPoint,60 )
	MisResultAction(TakeFightingPoint, 60 )
	MisResultAction(ClearMission, 1120)
	MisResultAction(SetRecord,  1120 )
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------телец
	
	DefineMission( 5615, "\202\240\238\226\224\226\224\255 \240\229\239\243\242\224\246\232\255 \210\229\235\252\246\224", 1121 )
	
	MisBeginTalk( "<t>Репутация - это очень важный пункт у каждого героя." )

	MisBeginCondition(NoMission,1121)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1121)
	MisBeginAction(AddMission,1121)
	MisCancelAction(ClearMission, 1121)
	
	MisNeed(MIS_NEED_DESP, "Получите 3000 репутации." )
	MisHelpTalk( "<t>Получите 3000 репутации!" )
	MisResultTalk( "<t>Я вижу, что Вам не в первой помогать людям." )

	MisResultCondition(HasMission, 1121)
	MisResultCondition(NoRecord,1121)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit,3000  )
	MisResultAction(ClearMission, 1121)
	MisResultAction(SetRecord,  1121 )
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------Телец
	
	DefineMission( 5616, "\202\240\238\226\224\226\251\233 \210\229\235\229\246 \195\229\240\238\255", 1122 )
	
	MisBeginTalk( "<t>Вы должны быть не ниже 60 уровня." )

	MisBeginCondition(NoMission,1122)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1122)
	MisBeginAction(AddMission,1122)
	MisCancelAction(ClearMission, 1122)
	
	MisNeed(MIS_NEED_DESP, " Получить 60 уроверь " )
	MisHelpTalk("<t>60 уровень, не так и сложно его получить...." )
	MisResultTalk("<t>Вы ростёте на глазах." )

	MisResultCondition(HasMission, 1122)
	MisResultCondition(NoRecord,1122)
	MisResultCondition(LvCheck, ">", 59 )
	MisResultAction(ClearMission, 1122)
	MisResultAction(SetRecord,  1122 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------Телец
	
	DefineMission( 5617, "\215\229\241\242\252 \210\229\235\252\246\224", 1123 )
	
	MisBeginTalk( "<t>Без Чести в наше время ни куда. У Вас должно быть 500 чести." )

	MisBeginCondition(NoMission,1123)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1123)
	MisBeginAction(AddMission,1123)
	MisCancelAction(ClearMission, 1123)
	
	MisNeed(MIS_NEED_DESP, " У Вас должно быть 500 чести " )
	MisHelpTalk( "<t>Выигрывайте в сражениях между игроками" )
	MisResultTalk( "<t>Мои Вам поздравления." )

	MisResultCondition(HasMission, 1123)
	MisResultCondition(NoRecord,1123)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1123)
	MisResultAction(SetRecord,  1123 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------Телец
	
	DefineMission( 5618, "\209\225\238\240 \196\224\237\232 \210\229\235\252\246\243", 1124 )
	
	MisBeginTalk( "<t>Вам необходимо собрать Дань для Тельца." )

	MisBeginCondition(NoMission,1124)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1124)
	MisBeginAction(AddMission,1124)
	MisBeginAction(AddTrigger, 11241, TE_GETITEM, 4804, 15 )    
	MisBeginAction(AddTrigger, 11242, TE_GETITEM, 4720, 15 )          
	MisBeginAction(AddTrigger, 11243, TE_GETITEM, 3129, 15 )               
	MisBeginAction(AddTrigger, 11244, TE_GETITEM, 2588, 10 )               
	MisBeginAction(AddTrigger, 11245, TE_GETITEM, 4494, 1 )           
	MisBeginAction(AddTrigger, 11246, TE_GETITEM, 1682, 40 )                  
	MisBeginAction(AddTrigger, 11247, TE_GETITEM, 1138, 20 ) 
	MisBeginAction(AddTrigger, 11248, TE_GETITEM, 0227, 3 )          
	MisCancelAction(ClearMission, 1124)
	

	MisNeed(MIS_NEED_ITEM, 4804, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 4720, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 3129, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 2588, 10, 46, 10 )
	MisNeed(MIS_NEED_ITEM, 4494, 1, 56, 1 )
	MisNeed(MIS_NEED_ITEM, 1682, 40, 57, 40 )
	MisNeed(MIS_NEED_ITEM, 1138, 20, 97, 20 )
	MisNeed(MIS_NEED_ITEM, 0227, 3, 117, 3 )

	MisHelpTalk( "<t>Что бы не злить богов им подают подношения в виде Дани и Жертвоприношений." )
	MisResultTalk( "<t>Боги на Вашей стороне." )

	MisResultCondition(HasMission, 1124)
	MisResultCondition(NoRecord,1124)
	MisResultCondition(HasItem, 4804, 15 )
	MisResultCondition(HasItem, 4720, 15 )
	MisResultCondition(HasItem, 3129, 15 )
	MisResultCondition(HasItem, 2588, 10 )
	MisResultCondition(HasItem, 4494, 1 )
	MisResultCondition(HasItem, 1682, 40 )
	MisResultCondition(HasItem, 1138, 20 )
	MisResultCondition(HasItem, 0227, 3 )

	MisResultAction(TakeItem, 4804, 15 )
	MisResultAction(TakeItem, 4720, 15 )
	MisResultAction(TakeItem, 3129, 15 )
	MisResultAction(TakeItem, 2588, 10 )
	MisResultAction(TakeItem, 4494, 1 )
	MisResultAction(TakeItem, 1682, 40 )
	MisResultAction(TakeItem, 1138, 20 )
	MisResultAction(TakeItem, 0227, 3 )
	MisResultAction(ClearMission, 1124)
	MisResultAction(SetRecord,  1124 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1124, 1, 15 )
	RegCurTrigger( 11241 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1124, 16, 15 )
	RegCurTrigger( 11242 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1124, 31, 15 )
	RegCurTrigger( 11243 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1124, 46, 10 )
	RegCurTrigger( 11244 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1124, 56, 1 )
	RegCurTrigger( 11245 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1124, 57, 40 )
	RegCurTrigger( 11246 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1124, 97, 20 )
	RegCurTrigger( 11247 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1124, 117, 3 )
	RegCurTrigger( 11248 )

	



-------------------------------------------------Телец
	
	DefineMission( 5619, "\210\229\235\229\246 \195\229\240\238\255", 1125 )
	
	MisBeginTalk( "<t>Телец всегда был символом счастья.Настоящий Герой должен быть знаком с Хаосом." )

	MisBeginCondition(NoMission,1125)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1125)
	MisBeginAction(AddMission,1125)
	MisCancelAction(ClearMission, 1125)
	
	MisNeed(MIS_NEED_DESP, " Посторайтесь набрать 100 очков хаоса " )
	MisHelpTalk( "<t>Посторайтесь набрать 100 очков хаоса " )
	MisResultTalk( "<t>Не теряйте голову в чеславии, одна победа - это не победа во всём, а только первый шаг на длиной слесгнице!" )

	MisResultCondition(HasMission, 1125)
	MisResultCondition(NoRecord,1125)
	MisResultCondition(HasFightingPoint,100 )
	MisResultAction(TakeFightingPoint, 100 )
	MisResultAction(ClearMission, 1125)
	MisResultAction(SetRecord,  1125 )
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------Телец
	
	DefineMission( 5620, "\202\240\238\226\224\226\224\255 \240\229\239\243\242\224\246\232\255 \210\229\235\252\246\224", 1126 )
	
	MisBeginTalk( "<t>Репутация - это очень важный пункт у каждого героя." )

	MisBeginCondition(NoMission,1126)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1126)
	MisBeginAction(AddMission,1126)
	MisCancelAction(ClearMission, 1126)
	
	MisNeed(MIS_NEED_DESP, " Получите 5000 репутации " )
	MisHelpTalk( "<t>Вам необходимо помогать ученикам и тем самым получать репутацию " )
	MisResultTalk( "<t>Я вижу, что Вам не в первой помогать людям." )

	MisResultCondition(HasMission, 1126)
	MisResultCondition(NoRecord,1126)
	MisResultCondition(HasCredit,5000 )
	MisResultAction(TakeCredit, 5000 )
	MisResultAction(ClearMission, 1126)
	MisResultAction(SetRecord,  1126 )
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------Телец
	
	DefineMission( 5621, "\202\240\238\226\224\226\251\233 \210\229\235\229\246 \195\229\240\238\255", 1127 )
	
	MisBeginTalk( "<t>Вы должны быть не ниже 65 уровня " )

	MisBeginCondition(NoMission,1127)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1127)
	MisBeginAction(AddMission,1127)
	MisCancelAction(ClearMission, 1127)
	
	MisNeed(MIS_NEED_DESP, " Получить 65 уровень " )
	MisHelpTalk( "<t>Получить 55 уровер...." )
	MisResultTalk( "<t>Вы ростёте на глазах." )

	MisResultCondition(HasMission, 1127)
	MisResultCondition(NoRecord,1127)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1127)
	MisResultAction(SetRecord,  1127 )
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------Телец
	
	DefineMission( 5622, "\215\229\241\242\252 \210\229\235\252\246\224", 1128 )
	
	MisBeginTalk( "<t>Без Чести в наше время ни куда. У Вас должно быть 800 чести." )

	MisBeginCondition(NoMission,1128)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1128)
	MisBeginAction(AddMission,1128)
	MisCancelAction(ClearMission, 1128)
	
	MisNeed(MIS_NEED_DESP, " У Вас должно быть 300 чести " )
	MisHelpTalk( "<t>Выигрывайте в сражениях между игроками " )
	MisResultTalk( "<t>Мои Вам поздравления!" )

	MisResultCondition(HasMission, 1128)
	MisResultCondition(NoRecord,1128)
	MisResultCondition(HasHonorPoint,800 )
	MisResultAction(TakeHonorPoint, 800 )
	MisResultAction(ClearMission, 1128)
	MisResultAction(SetRecord,  1128 )
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------Телец
	
	DefineMission( 5623, "\209\225\238\240 \196\224\237\232 \210\229\235\252\246\243", 1129 )
	
	MisBeginTalk( "<t>Вам необходимо собрать Дань для Тельца." )

	MisBeginCondition(NoMission,1129)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1129)
	MisBeginAction(AddMission,1129)
	MisBeginAction(AddTrigger, 11291, TE_GETITEM, 4804, 10 )  
	MisBeginAction(AddTrigger, 11292, TE_GETITEM, 4720, 10 )     
	MisBeginAction(AddTrigger, 11293, TE_GETITEM, 3129, 10 )           
	MisBeginAction(AddTrigger, 11294, TE_GETITEM, 2588, 15 )            
	MisBeginAction(AddTrigger, 11295, TE_GETITEM, 4494, 5 )            
	MisBeginAction(AddTrigger, 11296, TE_GETITEM, 1682, 40 )              
	MisBeginAction(AddTrigger, 11297, TE_GETITEM, 1138, 25 )
	MisBeginAction(AddTrigger, 11298, TE_GETITEM, 0227, 5 )           
	MisCancelAction(ClearMission, 1129)						                                     
	

	MisNeed(MIS_NEED_ITEM, 4804, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4720, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3129, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 2588, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 4494, 5, 46, 5)
	MisNeed(MIS_NEED_ITEM, 1682, 40, 51, 40 )
	MisNeed(MIS_NEED_ITEM, 1138, 25, 91, 25 )
	MisNeed(MIS_NEED_ITEM, 0227, 5, 116, 5 )

	MisHelpTalk( "<t>Что бы не злить богов им подают подношения в виде Дани и Жертвоприношений " )
	MisResultTalk("<t>Боги на Вашей стороне." )

	MisResultCondition(HasMission, 1129)
	MisResultCondition(NoRecord,1129)
	MisResultCondition(HasItem, 4804, 10 )
	MisResultCondition(HasItem, 4720, 10 )
	MisResultCondition(HasItem, 3129, 10 )
	MisResultCondition(HasItem, 2588, 15 )
	MisResultCondition(HasItem, 4494,  5 )
	MisResultCondition(HasItem, 1682, 40 )
	MisResultCondition(HasItem, 1138, 25 )
	MisResultCondition(HasItem, 0227, 5 )

	MisResultAction(TakeItem, 4804, 10 )
	MisResultAction(TakeItem, 4720, 10 )
	MisResultAction(TakeItem, 3129, 10 )
	MisResultAction(TakeItem, 2588, 15 )
	MisResultAction(TakeItem, 4494, 5 )
	MisResultAction(TakeItem, 1682, 40 )
	MisResultAction(TakeItem, 1138, 25 )
	MisResultAction(TakeItem, 0227, 5 )
	MisResultAction(ClearMission, 1129)
	MisResultAction(SetRecord,  1129 )
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1129, 1, 10 )
	RegCurTrigger( 11291 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1129, 11, 10 )
	RegCurTrigger( 11292 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1129, 21, 10 )
	RegCurTrigger( 11293 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1129, 31, 15 )
	RegCurTrigger( 11294 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1129, 46, 5 )
	RegCurTrigger( 11295 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1129, 51, 40 )
	RegCurTrigger( 11296 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1129, 91, 25 )
	RegCurTrigger( 11297 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1129, 116, 5 )
	RegCurTrigger( 11298 )


	

	----------------------------------------------------------Посол Кровавого Тельца

	DefineMission( 5624, "\207\238\241\238\235 \202\240\238\226\224\226\238\227\238 \210\229\235\252\246\224", 1130 )
	MisBeginTalk( "<t>Вам прийдётся побегать по всему миру, что бы получить разрешение " )
				
	MisBeginCondition(NoMission, 1130)
	MisBeginCondition(NoRecord,1130)
	MisBeginCondition(HasRecord, 1152)
	MisBeginAction(AddMission,1130)
	MisCancelAction(ClearMission, 1130)

	MisNeed(MIS_NEED_DESP, " Отправляйтесь в Аргент в точку (628,2095)." )
	
	MisHelpTalk("<t>Не теряйте время на пустые разговоры " )
	MisResultCondition(AlwaysFailure)

-----------------------------------------Посол

	DefineMission( 5625, "\207\238\241\238\235", 1130, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Вам нужно моё разрешение? Но я не имею права подписывать ни чего." )
	MisResultCondition(NoRecord, 1130)
	MisResultCondition(HasMission,1130)
	MisResultAction(ClearMission,1130)
	MisResultAction(SetRecord, 1130)

	-----------------------------------------Посол

	DefineMission( 5626, "\207\238\241\238\235 2", 1131 )
	MisBeginTalk( "<t>Вам необходимо взять разрешение в Шайтане у Ады." )
				
	MisBeginCondition(NoMission, 1131)
	MisBeginCondition(NoRecord,1131)
	MisBeginCondition(HasRecord, 1130)
	MisBeginAction(AddMission,1131)
	MisCancelAction(ClearMission, 1131)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Шайтан в точку (862,3303)." )
	
	MisHelpTalk( "<t>Не теряйте время на пустые разговоры " )
	MisResultCondition(AlwaysFailure)

-----------------------------------------Посол

	DefineMission(5627, "\207\238\241\238\235 2", 1131, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Вы ко мне?" )
	MisResultCondition(NoRecord, 1131)
	MisResultCondition(HasMission,1131)
	MisResultAction(ClearMission,1131)
	MisResultAction(SetRecord, 1131)

	-----------------------------------------Посол

	DefineMission( 5628, "\207\238\241\238\235 3", 1132 )
	MisBeginTalk( "<t>Очень хорошо! Но Вас не правельно информировали." )
				
	MisBeginCondition(NoMission, 1132)
	MisBeginCondition(NoRecord,1132)
	MisBeginCondition(HasRecord, 1131)
	MisBeginAction(AddMission,1132)
	MisCancelAction(ClearMission, 1132)

	MisNeed(MIS_NEED_DESP, " Отправляйтесь в Ледынь к Тэ в точку (2128,540)." )
	
	MisHelpTalk( "<t>Не теряйте время на пустые разговоры " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5629, "\207\238\241\238\235 3", 1132, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Я не могу понять кто над Вами так злобно пошутил, ноя я точно не выдаю ни каких разрешений." )
	MisResultCondition(NoRecord, 1132)
	MisResultCondition(HasMission,1132)
	MisResultAction(ClearMission,1132)
	MisResultAction(SetRecord, 1132)



	-----------------------------------------Посол

	DefineMission( 5630, "\207\238\241\238\235 4", 1133 )
	MisBeginTalk( "<t>Смех да и только. Но я же не смогу выдать Вам ни какого разрешения, даже если сам этого сильно захочу." )
				
	MisBeginCondition(NoMission, 1133)
	MisBeginCondition(NoRecord,1133)
	MisBeginCondition(HasRecord, 1132)
	MisBeginAction(AddMission,1133)
	MisCancelAction(ClearMission, 1133)

	MisNeed(MIS_NEED_DESP, " Отправляйтесь в Аргент(2277,2769)." )
	
	MisHelpTalk( "<t>Не теряйте время на пустые разговоры " )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission( 5631, "\207\238\241\238\235 4", 1133, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Что? Так и сказал? Хахаха... Он ни когда не осмелиться выдать разрешение... Так где моя ручка?..." )
	MisResultCondition(NoRecord, 1133)
	MisResultCondition(HasMission,1133)
	MisResultAction(ClearMission,1133)
	MisResultAction(SetRecord, 1133)


	-----------------------------------------Посол

	DefineMission( 5632, "\207\238\241\238\235 5", 1134 )
	MisBeginTalk( "<t>Ну вот... Я бы подписал, но у меня потерялась ручка..." )
				
	MisBeginCondition(NoMission, 1134)
	MisBeginCondition(NoRecord,1134)
	MisBeginCondition(HasRecord, 1133)
	MisBeginAction(AddMission,1134)
	MisCancelAction(ClearMission, 1134)

	MisNeed(MIS_NEED_DESP, "Возможно в точке(2519,2397) Вам подпишут." )
	
	MisHelpTalk( "<t>Не теряйте время на пустые разговоры." )
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5633, "\207\238\241\238\235 5", 1134, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>єИѕЖХвЦЦєГКВОТЧоЕВґн№эБЛ,РТїчАПДМДМ»№ПлЧЕОТ,№ю№ю.єЬ»іДоДЗР©іФАПДМДМµДµ°ёві¤ґуµДИХЧУ.")
	MisResultCondition(NoRecord, 1134)
	MisResultCondition(HasMission,1134)
	MisResultAction(ClearMission,1134)
	MisResultAction(SetRecord, 1134)


	-----------------------------------------Посол

	DefineMission( 5634, "ЙзЅ»ґуК№6", 1135 )
	MisBeginTalk("<t>ґэОТГ¦НкЧоЅьТ»Еъ»хОпѕНИҐѕЖ°Й,ТЄКЗОТµДѕЖУСєЈёЫЦё»УЎ¤°ВµЗТІДЬИҐѕНєГБЛ.")
				
	MisBeginCondition(NoMission, 1135)
	MisBeginCondition(NoRecord,1135)
	MisBeginCondition(HasRecord, 1134)
	MisBeginAction(AddMission,1135)
	MisCancelAction(ClearMission, 1135)

	MisNeed(MIS_NEED_DESP, "ХТїЁВнИьІ№ёшХѕµДєЈёЫЦё»УЎ¤°ВµЗ(738,3803)БДБД")
	
	MisHelpTalk("<t>І»ЦЄµА°Е°ЕА­КЗІ»КЗёьЖЇБББЛ.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5635, "ЙзЅ»ґуК№6", 1135, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>¶ФУЪТ»ёцДРИЛАґЛµУРѕЖєИѕНТвО¶ЧЕУР№ГДпєНФј»б..")
	MisResultCondition(NoRecord, 1135)
	MisResultCondition(HasMission,1135)
	MisResultAction(ClearMission,1135)
	MisResultAction(SetRecord, 1135)



	-----------------------------------------Посол

	DefineMission( 5636, "ЙзЅ»ґуК№7", 1136 )
	MisBeginTalk("<t>Р¦КІГґ?АПН·ѕНІ»КЗДРИЛВр?єЯ!°пОТНЁЦЄ±ґїЗЙМИЛЎ¤А­Д·№эАґИЎЛыТЄµД±ґїЗ,ОТµИІ»ј°ТЄИҐѕЖ°ЙБЛ")
				
	MisBeginCondition(NoMission, 1136)
	MisBeginCondition(NoRecord,1136)
	MisBeginCondition(HasRecord, 1135)
	MisBeginAction(AddMission,1136)
	MisCancelAction(ClearMission, 1136)

	MisNeed(MIS_NEED_DESP, "ХТјУДЙµД±ґїЗЙМИЛЎ¤А­Д·(2061,2543)БДБД")
	
	MisHelpTalk("<t>ОТѕ­іЈ°пЦъДЗР©їЙ°®µДЙМИЛ,ТЄІ»ФхГґУРЗ®ЕЭѕЖ°ЙДШ?")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5637, "ЙзЅ»ґуК№7", 1136, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>°ВµЗТ»Ц±¶јКЗГ»З®µДАПѕЖ№н,ОТЅиґЛІЕїЙТФОьТэЛы°пОТ.")
	MisResultCondition(NoRecord, 1136)
	MisResultCondition(HasMission,1136)
	MisResultAction(ClearMission,1136)
	MisResultAction(SetRecord, 1136)


-----------------------------------------Посол

	DefineMission( 5638, "ЙзЅ»ґуК№8", 1137 )
	MisBeginTalk("<t>ОЄКІГґХвСщїґЧЕОТ?ОТГЗЙМИЛ¶јКЗХвё±ЧмБіµД,ЧЬІ»ДЬі¤іЙЅЬїЛДЗСщ±нАпІ»Т»°Й")
				
	MisBeginCondition(NoMission, 1137)
	MisBeginCondition(NoRecord,1137)
	MisBeginCondition(HasRecord, 1136)
	MisBeginAction(AddMission,1137)
	MisCancelAction(ClearMission, 1137)

	MisNeed(MIS_NEED_DESP, "ХТГщЙіµєµДЅЬїЛґ¬і¤(1672,3777)БДБД")
	
	MisHelpTalk("<t>±рЛµОТГ»МбРСДг,ДЗАпІ»М«ЖЅТЄРЎРД!")
	MisResultCondition(AlwaysFailure)

-----------------------------------------Посол

	DefineMission(5639, "ЙзЅ»ґуК№8", 1137, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТТСѕ­П°№ЯБЛ±»Е®ИЛ°®ДЅ,±»ДРИЛјµ¶К")
	MisResultCondition(NoRecord, 1137)
	MisResultCondition(HasMission,1137)
	MisResultAction(ClearMission,1137)
	MisResultAction(SetRecord, 1137)


-----------------------------------------Посол

	DefineMission( 5640, "ЙзЅ»ґуК№9", 1138 )
	MisBeginTalk("<t>°МєЫКЗДРИЛµД»ХХВ,ѕЖѕ«КЗєЈµБµД»п°й,УРѕЖОТКЗІ»»бґн№эµД.І»ЦЄµАОТµДНв№ъУСИЛ¶«·ЅєЈµБЎ¤БеЧфМпЙЅ»бІ»»бІОјУ,ЛдИ»ЛыЅІ»°єЬЙЩУРИЛДЬМэ¶®.")
				
	MisBeginCondition(NoMission, 1138)
	MisBeginCondition(NoRecord,1138)
	MisBeginCondition(HasRecord, 1137)
	MisBeginAction(AddMission,1138)
	MisCancelAction(ClearMission, 1138)

	MisNeed(MIS_NEED_DESP, "ХТЗпЦ®µєµД¶«·ЅєЈµБЎ¤БеЧфМпЙЅ(2221,3285)БДБД")
	
	MisHelpTalk("<t>¶«·ЅєЈµБЎ¤БеЧфМпЙЅТ»Ц±ПлУлЖдЛыєЈµБН¬РРЗРґиѕ­СйДШ.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5641, "ЙзЅ»ґуК№9", 1138, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТКЗТ»ёцФ¶АґµДєЈµБ,ёХёХС§»бХвАпµДУпСФ.##@@#$,ОТєЬПІ»¶ХвЖ¬ГФИЛµДєЈµє.&*&%,¶јЛµНвАґµДєНЙРєГДоѕ­,їЙКЗ·В·рІ»ККєПєЈµБЅз.ОТёХАґµЅХвЖ¬ґуВЅК±»№УлЅЬїЛґ¬і¤ЅбПВБЛєЬЙоµДОуЅв.")
	MisResultCondition(NoRecord, 1138)
	MisResultCondition(HasMission,1138)
	MisResultAction(ClearMission,1138)
	MisResultAction(SetRecord, 1138)

-----------------------------------------Посол

	DefineMission( 5642, "ЙзЅ»ґуК№10", 1139 )
	MisBeginTalk("<t>ЅЬїЛТІТЄИҐ?!ДЗОТ»№КЗїјВЗТ»ПВ°Й.ОТПлОТ»№КЗєНЕуУСЅ»ТЧФ±Ў¤ИьЙЄДбµцУгИҐ°Й.")
				
	MisBeginCondition(NoMission, 1139)
	MisBeginCondition(NoRecord,1139)
	MisBeginCondition(HasRecord, 1138)
	MisBeginAction(AddMission,1139)
	MisCancelAction(ClearMission, 1139)

	MisNeed(MIS_NEED_DESP, "ХТЛй±щµєµДЅ»ТЧФ±Ў¤ИьЙЄДб(2279,1112)БДБД")
	
	MisHelpTalk("<t>ОТ»№КЗµИИьЙЄДбµДФј»б°Й")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5643, "ЙзЅ»ґуК№10", 1139, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТєЬПІ»¶¶«·ЅєЈµБЎ¤БеЧфМпЙЅ,УИЖдКЗДЗЦЦЅчЙчАЛВюµДРФёсєННв±нµД·ґІоЈ®")
	MisResultCondition(NoRecord, 1139)
	MisResultCondition(HasMission,1139)
	MisResultAction(ClearMission,1139)
	MisResultAction(SetRecord, 1139)

-----------------------------------------Посол

	DefineMission( 5644, "ЙзЅ»ґуК№11", 1140 )
	MisBeginTalk("<t>Из№ыЅЬїЛИҐѕЖ°Й,ОТѕНУл¶«·ЅєЈµБЎ¤БеЧфМпЙЅИҐєЈ±Я,µРИЛ»№КЗЙЩјыГжОЄєГ.аЕ,ОТПлДЗёцПІ»¶ґХИИДЦµДРЎДРєўєєД·Т»¶ЁУРРЛИ¤ИҐѕЖ°Й")
				
	MisBeginCondition(NoMission, 1140)
	MisBeginCondition(NoRecord,1140)
	MisBeginCondition(HasRecord, 1139)
	MisBeginAction(AddMission,1140)
	MisCancelAction(ClearMission, 1140)

	MisNeed(MIS_NEED_DESP, "ХТЙіб°ѕЙіЗµДєєД·(826,3347)БДБД")
	
	MisHelpTalk("<t>µ«ФёІ»ТЄЅМ»µРЎєўЧУ,ЦчТЄКЗЕВЛыАґґХОТГЗµДИИДЦ...")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5645, "ЙзЅ»ґуК№11", 1140, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>РЎєўЧУКЗІ»У¦ёГИҐѕЖ°ЙµД,µ«КЗ...УсКчБЩ·зµДЛ§ДРєўіэНв!ОТїП¶Ё»бИҐµД,Р»Р»ДгµДєГПыПў.")
	MisResultCondition(NoRecord, 1140)
	MisResultCondition(HasMission,1140)
	MisResultAction(ClearMission,1140)
	MisResultAction(SetRecord, 1140)

-----------------------------------------Посол

	DefineMission( 5646, "ЙзЅ»ґуК№12", 1141 )
	MisBeginTalk("<t>ЙрКї·з¶ИµДДРИЛІ»»б¶АПнГАѕЖ,ХвКЗОТµДФ­Фт.ЛщТФТЄЅРЙПОТµДЕуУСЦм±И.")
				
	MisBeginCondition(NoMission, 1141)
	MisBeginCondition(NoRecord,1141)
	MisBeginCondition(HasRecord, 1140)
	MisBeginAction(AddMission,1141)
	MisCancelAction(ClearMission, 1141)

	MisNeed(MIS_NEED_DESP, "ХТ°ўАј±ИЛ№І№ёшХѕµДЦм±И(1037,671)БДБД")
	
	MisHelpTalk("<t>ОТ»№Г»УРИҐ№эѕЖ°Й,ТЄґшЙн·ЭЦ¤Вр?єИЧнБЛУРИЛЛНОТГЗ»ШјТВр?")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5647, "ЙзЅ»ґуК№12", 1141, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ЛµКµ»°ГїТ»ґОєєД·µДМбТй¶јєЬґМј¤,µ«КЗГїґОТтґЛ±»ВиВиФр±ёОТІ»іЙКмОТ¶ј»бєу»Ъ.")
	MisResultCondition(NoRecord, 1141)
	MisResultCondition(HasMission,1141)
	MisResultAction(ClearMission,1141)
	MisResultAction(SetRecord, 1141)


-----------------------------------------Посол

	DefineMission( 5648, "ЙзЅ»ґуК№13", 1142 )
	MisBeginTalk("<t>ЛдИ»ОТ·ў№эКД,ФЩТІІ»МэРЕЛыµДЅЁТй,µ«КЗИҐѕЖ°ЙКЗОТВхПтіЙКмµД±кЦѕ,ЛщТФ...єЩєЩ,Из№ыДгВ·№эАµ°ІЙ­БЦІ№ёшХѕЗл°пГ¦ОКОККОЖ·ЙМИЛЎ¤АпїЛДЗАпКЗ·сУРЖЇББµДРдїЫ,ОТИЛЙъµЪТ»ґОИҐѕЖ°Й,І»ДЬґт°зµГМ«є®Лб.")
				
	MisBeginCondition(NoMission, 1142)
	MisBeginCondition(NoRecord,1142)
	MisBeginCondition(HasRecord, 1141)
	MisBeginAction(AddMission,1142)
	MisCancelAction(ClearMission, 1142)

	MisNeed(MIS_NEED_DESP, "ХТАµ°ІЙ­БЦІ№ёшХѕµДКОЖ·ЙМИЛЎ¤АпїЛ(996,2969)БДБД")
	
	MisHelpTalk("<t>КОЖ·ЙМИЛЎ¤АпїЛКЗєЬУРСЫ№вµДЦй±¦РРјТ,РЎК±єтОТВиВиЧЬКЗґшОТИҐДЗАп№єВтЦй±¦,ЛыГїґО¶ј»бїдЅ±ВиВиЖЇББ,»№ЛНОТєГіФµДМЗ№ы.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5649, "ЙзЅ»ґуК№13", 1142, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ВтРдїЫИҐѕЖ°Й?Цм±Иі¤ґуБЛ,µ«ЛыВиВиµДИЭГІЛЖєхТ»µгТІГ»КЬµЅУ°Пм,ЛэТ»Ц±КЗОТХвАпЧоё»чИБ¦µДїН»§.")
	MisResultCondition(NoRecord, 1142)
	MisResultCondition(HasMission,1142)
	MisResultAction(ClearMission,1142)
	MisResultAction(SetRecord, 1142)

-----------------------------------------Посол

	DefineMission( 5650, "ЙзЅ»ґуК№14", 1143 )
	MisBeginTalk("<t>»ШТдОТДкЗбК±µЪТ»ґОИҐѕЖ°ЙѕНЅбК¶БЛєЈµБЅЬАпГЧ,ОТГЗµДУСТкєЬЙоєс,ОТµДЦй±¦ФЛЛНЙъТвТ»Ц±єЬЛіАыУлЛыµДХХ№ЛКЗ·ЦІ»їЄµД.Из№ыДг·Ѕ±гИҐ±щС©µє,ґъОТОКєтЛы.")
				
	MisBeginCondition(NoMission, 1143)
	MisBeginCondition(NoRecord,1143)
	MisBeginCondition(HasRecord, 1142)
	MisBeginAction(AddMission,1143)
	MisCancelAction(ClearMission, 1143)

	MisNeed(MIS_NEED_DESP, "ХТ±щС©µєµДєЈµБЅЬАпГЧ(2362,657)БДБД")
	
	MisHelpTalk("<t>±щС©µєФЪД§Е®Ц®єЈЕ¶.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол
       
	DefineMission(5651, "ЙзЅ»ґуК№14", 1143, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>№ю№ю,ДЗТІКЗОТµЪТ»ґОИҐѕЖ°Й,ДЗК±єтОТ»№КЗёцРЎєЈµБа¶ВЮ,ОЄБЛµЪТ»ґОіцєЈЧіµЁІЕИҐєИѕЖµД.І»ЦЄµАОЄКІГґАпїЛУлОТК®·ЦН¶Фµ,ОТФшѕ­Пл№э,Из№ыПаУцµДК±єтЛэКЗТ»ёцЕ®єў,»тРнОТѕНІ»»бТ»Ц±КЗёцµҐЙнєєБЛЈ®")
	MisResultCondition(NoRecord, 1143)
	MisResultCondition(HasMission,1143)
	MisResultAction(ClearMission,1143)
	MisResultAction(SetRecord, 1143)

-----------------------------------------Посол

	DefineMission( 5652, "ЙзЅ»ґуК№15", 1144 )
	MisBeginTalk("<t>ХвИГОТПлЖрБЛПлТЄјУИлєЈµБНЕµДАЧЛ№Ў¤РЎіж,їЙП§ЛыёцЧУМ«РЎБЛ,ПлТЄіцєЈІ»єИѕЖЧіµЁКЗІ»РРµД.")
				
	MisBeginCondition(NoMission, 1144)
	MisBeginCondition(NoRecord,1144)
	MisBeginCondition(HasRecord, 1143)
	MisBeginAction(AddMission,1144)
	MisCancelAction(ClearMission, 1144)

	MisNeed(MIS_NEED_DESP, "ХТ±щАЗ±¤µДАЧЛ№Ў¤РЎіж(1379,612)БДБД")
	
	MisHelpTalk("<t>°ЭНРДгБЛ,ОТХжµДєЬ°®Лы")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5653, "ЙзЅ»ґуК№15", 1144, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТµДАнПлКЗіЙОЄ»фЅрЛ№Т»СщµДЅрЕЖєЈµБ.")
	MisResultCondition(NoRecord, 1144)
	MisResultCondition(HasMission,1144)
	MisResultAction(ClearMission,1144)
	MisResultAction(SetRecord, 1144)


-----------------------------------------Посол

	DefineMission( 5654, "ЙзЅ»ґуК№16", 1145 )
	MisBeginTalk("<t>ОЄБЛОТµДАнПл,ОТІВОТёГїЄКјС§П°УОУѕЎўЅЈКхєНїЄґ¬БЛ.№ШУЪїЄґ¬ОТПлєЈёЫЦё»УЎ¤НЯАЧГЧУ¦ёГДЬ°пЙПОТµДГ¦")
				
	MisBeginCondition(NoMission, 1145)
	MisBeginCondition(NoRecord,1145)
	MisBeginCondition(HasRecord, 1144)
	MisBeginAction(AddMission,1145)
	MisCancelAction(ClearMission, 1145)

	MisNeed(MIS_NEED_DESP, "ХТ№ю¶ыІ№ёшХѕµДєЈёЫЦё»УЎ¤НЯАЧГЧ(2041,1355)БДБД")
	
	MisHelpTalk("<t>ОТКЗТ»ёцєЬЦґЧЕµДИЛ,ОЄБЛїпёґєЈЙПГіТЧµД№«ЖЅОТФёТвЧцТ»ГыХэТеµДєЈµБ.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5655, "ЙзЅ»ґуК№16", 1145, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ЛыТЄХТОТС§їЄґ¬,№ю№ю,ОТµДїЄґ¬јјКхїЙКЗФ¶ЅьОЕГы°Ў.")
	MisResultCondition(NoRecord, 1145)
	MisResultCondition(HasMission,1145)
	MisResultAction(ClearMission,1145)
	MisResultAction(SetRecord, 1145)


-----------------------------------------Посол

	DefineMission( 5656, "ЙзЅ»ґуК№17", 1146 )
	MisBeginTalk("<t>ѕЖ°ЙОТѕНІ»ИҐБЛ,ХвАп°µЅёєЬ¶а,Из№ыОТІ»ХѕФЪХвАп°пЦъФ¶АґµДґ¬Ц»,І»ЦЄµА»бУР¶аЙЩИЛ»біЙОЄциУгµДОзІНДШ.»тРнДгїЙТФОКТ»ПВЛчА­Д·Ў¤ИшјУ,јЗµГЛыЛµ№эТЄіцИҐ·ЕЛЙТ»ПВ,ИГОТЅйЙЬєГИҐґ¦ДШ.")
				
	MisBeginCondition(NoMission, 1146)
	MisBeginCondition(NoRecord,1146)
	MisBeginCondition(HasRecord, 1145)
	MisBeginAction(AddMission,1146)
	MisCancelAction(ClearMission, 1146)

	MisNeed(MIS_NEED_DESP, "ХТ°НІјІ№ёшХѕµДЛчА­Д·Ў¤ИшјУ(1202,3179)БДБД")
	
	MisHelpTalk("<t>ЛчА­Д·Ў¤ИшјУКЗёціміщВъЦѕµДДкЗбИЛДШ,єНЛыБДБД°Й.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5657, "ЙзЅ»ґуК№17", 1146, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТКЗТ»ёцОЄБЛГОПлєНИЩУюїЙТФ·ЕЖъЙъГьµДИЛ.¶шЗТЕ®єўГЗТІХвГґИПОЄ.")
	MisResultCondition(NoRecord, 1146)
	MisResultCondition(HasMission,1146)
	MisResultAction(ClearMission,1146)
	MisResultAction(SetRecord, 1146)

-----------------------------------------Посол

	DefineMission( 5658, "ЙзЅ»ґуК№18", 1147 )
	MisBeginTalk("<t>ОТХэТЄіцГЕ,ДгУРКІГґКВѕНїмµгЛµ.ѕЖ°Й?ДЗКЗТ»ёцЅбЅ»ЕуУСµДєГµШ·Ѕ,ОТПлОТТЄёД±дРРіМјЖ»®БЛ.Из№ыДгДЬ°пОТёжЛЯА­ГЧРЮ№ШУЪХвёцІ№ёшХѕЧоЅьНщАґїНЙМєЬ¶а,РиТЄЛыЧўТвёЫїЪЅУґэЦё»УµД»°ОТ»бК®·ЦёРР»µД.")
				
	MisBeginCondition(NoMission, 1147)
	MisBeginCondition(NoRecord,1147)
	MisBeginCondition(HasRecord, 1146)
	MisBeginAction(AddMission,1147)
	MisCancelAction(ClearMission, 1147)

	MisNeed(MIS_NEED_DESP, "ХТЛјЛјЛчІ№ёшХѕµДєЈёЫЦё»УЎ¤А­ГЧРЮ(2297,3723)БДБД")
	
	MisHelpTalk("<t>±ИЖрЛЇѕх,ДкЗбИЛУ¦ёГёьЧўЦШіЙі¤.ёЙВрХвСщїґЧЕОТ?ОТТ»Ц±КЗИЛГЗСЫЦРµДУРЦѕЗаДк.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5659, "ЙзЅ»ґуК№18", 1147, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>»¶У­ДгµДµЅАґ,ёРР»ДгґшАґµДПыПў.ОТХвАпХэИ±ЙЩИЛКЦ,ТЄІ»ТЄБфПВАґЧцОТµДЦъКЦ?")
	MisResultCondition(NoRecord, 1147)
	MisResultCondition(HasMission,1147)
	MisResultAction(ClearMission,1147)
	MisResultAction(SetRecord, 1147)

-----------------------------------------Посол

	DefineMission( 5660, "ЙзЅ»ґуК№19", 1148 )
	MisBeginTalk("<t>єЈёЫЦё»УКЗёЯЙРІўЗТ·±Г¦µДЦ°Тµ.ЛµµЅГ¦ОТєГПсТСѕ­єЬѕГГ»ИҐїґНы№эїЙ°®µДТБАцЙЇ°ЧБЛ,І»ЦЄµАЛэКЗ·с·зІЙТАѕЙ.")
				
	MisBeginCondition(NoMission, 1148)
	MisBeginCondition(NoRecord,1148)
	MisBeginCondition(HasRecord, 1147)
	MisBeginAction(AddMission,1148)
	MisCancelAction(ClearMission, 1148)

	MisNeed(MIS_NEED_DESP, "ХТІШ±¦єЈНеµДТБАцЙЇ°Ч(616,965)БДБД")
	
	MisHelpTalk("<t>ТБАцЙЇ°ЧРЎК±єтѕНЖЇББµГТ»ЛъєэНї.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5661, "ЙзЅ»ґуК№19", 1148, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>µИґэТ»ёцИЛКЗНґїа№В¶АµД,µ«ОТПнКЬХв·ЭјбКШ.")
	MisResultCondition(NoRecord, 1148)
	MisResultCondition(HasMission,1148)
	MisResultAction(ClearMission,1148)
	MisResultAction(SetRecord, 1148)


-----------------------------------------Посол

	DefineMission( 5662, "ЙзЅ»ґуК№20", 1149 )
	MisBeginTalk("<t>ОТѕ­іЈ»бїїТ»Р©ЖжТмµДЦй±¦АґПыДҐµИєтµДК±№в,їу№¤ґу¶ЗлоЙФРЕёшОТЛµНЪїуК±ХТµЅТ»їйЗ§ДкЧжДёВМ,ОТХэФЪіпЗ®,ИГЛыТ»¶ЁБфПВАґВфёшОТ.Жж№Ц,НЪїуФхГґ»бНЪµЅЧжДёВМ?")
				
	MisBeginCondition(NoMission, 1149)
	MisBeginCondition(NoRecord,1149)
	MisBeginCondition(HasRecord, 1148)
	MisBeginAction(AddMission,1149)
	MisCancelAction(ClearMission, 1149)

	MisNeed(MIS_NEED_DESP, "ХТТшїу2ІгµДїу№¤ґу¶Зло(296,57)БДБД")
	
	MisHelpTalk("<t>Р»Р»ДгДкЗбИЛЈ®ИҐ°Й")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5663, "ЙзЅ»ґуК№20", 1149, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>УЕРгµДДРИЛєНХд№уµДЦй±¦КЗЖЇББЕ®ИЛµДЧо°®,±ИИзЗ§ДкЧжДёВМєНОТ.")
	MisResultCondition(NoRecord, 1149)
	MisResultCondition(HasMission,1149)
	MisResultAction(ClearMission,1149)
	MisResultAction(SetRecord, 1149)

-----------------------------------------Посол

	DefineMission( 5664, "ЙзЅ»ґуК№21", 1150 )
	MisBeginTalk("<t>№§ПІДгНкіЙБЛВюі¤µДЙзЅ»ИООсЈ®ПаРЕДг¶ФХвёцКАЅзµДРн¶аИЛУРБЛёь¶аµДБЛЅв,Хв¶ФДгµДМЅПХєЬУР°пЦъ.ОТМэЛµГААцµДѕЖ°Й·юОсФ±<b°Е°ЕА­>ФЪХТДг.")
				
	MisBeginCondition(NoMission, 1150)
	MisBeginCondition(NoRecord,1150)
	MisBeginCondition(HasRecord, 1149)
	MisBeginAction(AddMission,1150)
	MisCancelAction(ClearMission, 1150)

	MisNeed(MIS_NEED_DESP, "ХТ°Е°ЕА­(1310,530)БДБД")
	
	MisHelpTalk("<t>°Е°ЕА­УРАсОпёшДг.")
	MisResultCondition(AlwaysFailure)	

-----------------------------------------Посол

	DefineMission(5667, "ЙзЅ»УўРЫ21", 1150, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгТСѕ­НЁ№эБЛЙзЅ»їјСй,ЛНёшДгТ»Г¶С«ХВ")
	MisResultCondition(NoRecord, 1150)
	MisResultCondition(HasMission,1150)
	MisResultAction(ClearMission,1150)
	MisResultAction(SetRecord, 1150)
	MisResultAction(GiveItem, 3033, 1, 4)
	MisResultBagNeed(1)

--	-------------------------------------------------МШ±рИООс	--------°Е°ЕА­
--	DefineMission (5668, "СЄЅ¦ЅрЕЈЦ®МШ±рРР¶Ї", 1153)
--	
--	MisBeginTalk("<t>ХвёцИООсКЗЅрЕЈ№¬МШ±рРР¶Ї,ДгїЙТФІ»ІОјУ,µ±И»І»ІОјУµДГ»УРАсОпДГ.<b10·ЦЦУДЪєЅРРµЅёҐАпІ№ёшХѕХТєЈёЫЦё»УЎ¤ІјЕ¦(2042,6351)>")
--
--	MisBeginCondition(NoMission,1153)
--	MisBeginCondition(NoRecord,1153)
--	MisBeginCondition(HasRecord,1113)
--	MisBeginCondition(HasRecord,1114)
--	MisBeginCondition(HasRecord,1115)
--	MisBeginCondition(HasRecord,1116)
--	MisBeginCondition(HasRecord,1117)
--	MisBeginCondition(HasRecord,1118)
--	MisBeginCondition(HasRecord,1150)
--	MisBeginCondition(HasRecord,1119)
--	MisBeginAction(AddMission,1153)
--	MisBeginAction(AddChaItem3, 2952)---------ЅрЕЈМШ±рРР¶ЇїЁ
--	MisCancelAction(ClearMission, 1153)
--	MisBeginBagNeed(1)
--	
--	MisNeed(MIS_NEED_DESP, "єЅРРµЅ°ЈёҐАпІ№ёшХѕХТєЈёЫЦё»УЎ¤ІјЕ¦(2042,635)БДБД")
--	MisHelpTalk("<t>їмИҐ°Й,ДгЦ»УР15·ЦЦУЕ¶")
--
--	MisResultCondition(AlwaysFailure)	
--
--	--------------------------------------МШ±рИООс----єЈёЫЦё»УЎ¤ІјЕ¦
--
--	DefineMission(5669, "СЄЅ¦ЅрЕЈЦ®МШ±рРР¶Ї", 1153, COMPLETE_SHOW )
--	
--	MisBeginCondition(AlwaysFailure )
--
--	MisResultTalk("<t>»№І»ґнВп.І»»бИГДгєу»ЪµД.")
--	MisResultCondition(HasMission, 1153)
--	MisResultCondition(NoRecord,1153)
--	MisResultAction(AddChaItem5, 2952)----МШ±рРР¶ЇїЁ
--	MisResultAction(ClearMission, 1153)
--	MisResultAction(SetRecord,  1153 )
--	MisResultAction(GiveItem, 3035, 1, 4)-----
--	MisResultBagNeed(1)
	
---------------------------------------------------МШ±рИООс	--------°Е°ЕА­
--	DefineMission (5673, "СЄЅ¦ЅрЕЈЦ®МШ±рРР¶Ї", 1159)
--	
--	MisBeginTalk("<t>ХвёцИООсКЗЅрЕЈ№¬МШ±рРР¶Ї,ДгїЙТФІ»ІОјУ,µ±И»І»ІОјУµДГ»УРАсОпДГ.<b10·ЦЦУДЪєЅРРµЅёҐАпІ№ёшХѕХТєЈёЫЦё»УЎ¤ІјЕ¦(2042,6351)>")
--
--	MisBeginCondition(NoMission,1159)
--	MisBeginCondition(NoRecord,1159)
--	MisBeginCondition(HasRecord,1112)
--	MisBeginCondition(HasRecord,1120)
--	MisBeginCondition(HasRecord,1121)
--	MisBeginCondition(HasRecord,1122)
--	MisBeginCondition(HasRecord,1123)
--	MisBeginCondition(HasRecord,1124)
--	MisBeginCondition(HasRecord,1150)
--	MisBeginCondition(HasRecord,1119)
--	MisBeginAction(AddMission,1159)
--	MisBeginAction(AddChaItem3, 2952)---------ЅрЕЈМШ±рРР¶ЇїЁ
--	MisCancelAction(ClearMission, 1159)
--	MisBeginBagNeed(1)
--	
--	MisNeed(MIS_NEED_DESP, "єЅРРµЅ°ЈёҐАпІ№ёшХѕХТєЈёЫЦё»УЎ¤ІјЕ¦(2042,635)БДБД")
--	MisHelpTalk("<t>їмИҐ°Й,ДгЦ»УР15·ЦЦУЕ¶")
--
--	MisResultCondition(AlwaysFailure)	
--
--	--------------------------------------МШ±рИООс----єЈёЫЦё»УЎ¤ІјЕ¦
--
--	DefineMission(5674, "СЄЅ¦ЅрЕЈЦ®МШ±рРР¶Ї", 1159, COMPLETE_SHOW )
--	
--	MisBeginCondition(AlwaysFailure )
--
--	MisResultTalk("<t>»№І»ґнВп.І»»бИГДгєу»ЪµД.")
--	MisResultCondition(HasMission, 1159)
--	MisResultCondition(NoRecord,1159)
--	MisResultAction(AddChaItem5, 2952)----МШ±рРР¶ЇїЁ
--	MisResultAction(ClearMission, 1159)
--	MisResultAction(SetRecord,  1159 )
--	MisResultAction(GiveItem, 3035, 1, 4)------------ЅрЕЈґ¬і¤їбЧ°±¦Пд
--	MisResultBagNeed(1)
--	
-------------------------------------------------МШ±рИООс	--------°Е°ЕА­
	



	DefineMission (5675, "СЄЅ¦ЅрЕЈЦ®МШ±рРР¶Ї", 1160)
	
	MisBeginTalk("<t>ХвёцИООсКЗЅрЕЈ№¬МШ±рРР¶Ї,ДгїЙТФІ»ІОјУ,µ±И»І»ІОјУµДГ»УРАсОпДГ.їјСйДгµЁБїµДК±єтµЅБЛ.<b7·ЦЦУДЪёПµЅчјчГµєХТЅЬїЛК·ЕЙВЮ(230,579)>БДБД.")

	MisBeginCondition(NoMission,1160)
	MisBeginCondition(NoRecord,1160)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(HasRecord,1125)
	MisBeginCondition(HasRecord,1126)
	MisBeginCondition(HasRecord,1127)
	MisBeginCondition(HasRecord,1128)
	MisBeginCondition(HasRecord,1129)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginAction(AddMission,1160)
	MisBeginAction(AddChaItem3, 2952)---------ЅрЕЈМШ±рРР¶ЇїЁ
	MisCancelAction(ClearMission, 1160)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "ХТЅЬїЛК·ЕЙВЮ(230,579)БДБД")
	MisHelpTalk("<t>їмИҐ°Й,ДгЦ»УР7·ЦЦУЕ¶")

	MisResultCondition(AlwaysFailure)	

	--------------------------------------МШ±рИООс----ЅЬїЛК·ЕЙВЮ

	DefineMission(5676, "СЄЅ¦ЅрЕЈЦ®МШ±рРР¶Ї", 1160, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>ёТґічјчГµє?УРµЁБї!І»№эОТМЦСбДгГЗХвИєУВёТµДјТ»п,µјЦВОТЧоЅьГ¦µГТ»ЛъєэНї.")
	MisResultCondition(HasMission, 1160)
	MisResultCondition(NoRecord,1160)
	MisResultAction(AddChaItem5, 2952)----МШ±рРР¶ЇїЁ
	MisResultAction(ClearMission, 1160)
	MisResultAction(SetRecord,  1160 )
	MisResultAction(GiveItem, 3035, 1, 4)------------ЅрЕЈґ¬і¤їбЧ°±¦Пд
	MisResultBagNeed(1)
	


-------------------------------------------------продолжить!­	



	DefineMission( 5670, "ЅрЕЈЦ®Л®КЦ№э№ШЅ±Аш", 1156 )--оформление тельца
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅЅрЕЈ№¬КШУЎєНЛ«ЧУ№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1156)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(HasRecord,1114)
	MisBeginCondition(HasRecord,1115)
	MisBeginCondition(HasRecord,1116)
	MisBeginCondition(HasRecord,1117)
	MisBeginCondition(HasRecord,1118)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1156)
	MisBeginAction(AddMission,1156)  
	MisBeginAction(AddTrigger, 11561, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11562, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11563, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11564, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11565, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11566, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11567, TE_GETITEM, 3034, 1 )	
	MisCancelAction(ClearMission, 1156)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>»№ФЪУМФҐКІГґ?їмАґ¶Т»»Ѕ±Аш°Й")
	MisResultTalk("<t>ПВТ»№¬КЗЛ«ЧУ№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1156)
	MisResultCondition(NoRecord,1156)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1156)
	MisResultAction(SetRecord,  1156 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 10, 4)
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(JINNiuSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1156, 10, 1 )
	RegCurTrigger( 11561 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1156, 20, 1 )
	RegCurTrigger( 11562 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1156, 30, 1 )
	RegCurTrigger( 11563 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1156, 40, 1 )
	RegCurTrigger( 11564 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1156, 50, 1 )
	RegCurTrigger( 11565 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1156, 60, 1 )
	RegCurTrigger( 11566 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1156, 70, 1 )
	RegCurTrigger( 11567 )
----------------------------------------------продолжить	




	DefineMission (5671, "ЅрЕЈЦ®єЈµБ№э№ШЅ±Аш", 1157)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅЅрЕЈ№¬КШУЎєНЛ«ЧУ№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1157)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(HasRecord,1120)
	MisBeginCondition(HasRecord,1121)
	MisBeginCondition(HasRecord,1122)
	MisBeginCondition(HasRecord,1123)
	MisBeginCondition(HasRecord,1124)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1157)
	MisBeginAction(AddMission,1157)
	MisBeginAction(AddTrigger, 11571, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11572, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11573, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11574, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11575, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11576, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11577, TE_GETITEM, 3034, 1 )		
	MisCancelAction(ClearMission, 1157)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>»№ФЪУМФҐКІГґ?їмАґ¶Т»»Ѕ±Аш°Й")
	MisResultTalk("<t>ПВТ»№¬КЗЛ«ЧУ№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1157)
	MisResultCondition(NoRecord,1157)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1157)
	MisResultAction(SetRecord,  1157 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 20, 4)
	MisResultAction(AddMoney,200000,200000)
	MisResultAction(JINNiuHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1157, 10, 1 )
	RegCurTrigger( 11571 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1157, 20, 1 )
	RegCurTrigger( 11572 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1157, 30, 1 )
	RegCurTrigger( 11573 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1157, 40, 1 )
	RegCurTrigger( 11574 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1157, 50, 1 )
	RegCurTrigger( 11575 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1157, 60, 1 )
	RegCurTrigger( 11576 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1157, 70, 1 )
	RegCurTrigger( 11577 )

	---------------------------------------------телец	
	DefineMission (5672, "ЅрЕЈЦ®ґ¬і¤№э№ШЅ±Аш", 1158)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅЅрЕЈ№¬КШУЎєНЛ«ЧУ№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1158)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(HasRecord,1125)
	MisBeginCondition(HasRecord,1126)
	MisBeginCondition(HasRecord,1127)
	MisBeginCondition(HasRecord,1128)
	MisBeginCondition(HasRecord,1129)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1158)
	MisBeginAction(AddMission,1158)   
	MisBeginAction(AddTrigger, 11581, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11582, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11583, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11584, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11585, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11586, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11587, TE_GETITEM, 3034, 1 )	
	MisCancelAction(ClearMission, 1158)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>»№ФЪУМФҐКІГґ?їмАґ¶Т»»Ѕ±Аш°Й")
	MisResultTalk("<t>ПВТ»№¬КЗЛ«ЧУ№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1158)
	MisResultCondition(NoRecord,1158)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1158)
	MisResultAction(SetRecord,  1158 )
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 0227, 30, 4)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(JINNiuCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1158, 10, 1 )
	RegCurTrigger( 11581 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1158, 20, 1 )
	RegCurTrigger( 11582 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1158, 30, 1 )
	RegCurTrigger( 11583 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1158, 40, 1 )
	RegCurTrigger( 11584 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1158, 50, 1 )
	RegCurTrigger( 11585 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1158, 60, 1 )
	RegCurTrigger( 11586 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1158, 70, 1 )
	RegCurTrigger( 11587 )

	-----------------------------------------------------свин

       DefineMission( 6126, "\209\226\232\237", 1452 )

	MisBeginTalk( "<t>Я хочу приготовить замечательный холодец, но у меня нет индигриентов... Помоги мне и я тебя отблагодарю." )
	MisBeginCondition(NoMission, 1452)
	MisBeginCondition(NoRecord,1452)
	MisBeginAction(AddMission,1452)
	MisBeginAction(AddTrigger, 14521, TE_GETITEM, 4325, 5)--Хвост снежной свиньи
	MisBeginAction(AddTrigger, 14522, TE_GETITEM, 1680, 5)--Свиной хвостик
	MisBeginAction(AddTrigger, 14523, TE_GETITEM, 4433, 5)--Короткий кабаний хвост
	MisBeginAction(AddTrigger, 14524, TE_GETITEM, 4357, 5)--Жесткий свиной хвостик
	MisBeginAction(AddTrigger, 14525, TE_GETITEM, 4461, 40)--Хамелеоновые свиные ножки
	MisBeginAction(AddTrigger, 14526, TE_GETITEM, 4462, 40)--Жесткие кабаньи ножки


	MisCancelAction(ClearMission, 1452)

	MisNeed(MIS_NEED_DESP, "Принесите необходимые индигриенты холодца: <b5 Хвостов снежной свиньи>, <b5 Свиных хвостиков>, <b5 Коротких кабаньих хвостов>, <b40 Хамелеоновых свиных ножек> и <b40 Жестких кабаньих ножек>." )
	MisNeed(MIS_NEED_ITEM, 4325, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1680, 5, 15, 5)
	MisNeed(MIS_NEED_ITEM, 4433, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4357, 5, 25, 5)
	MisNeed(MIS_NEED_ITEM, 4461, 40, 30, 40)
	MisNeed(MIS_NEED_ITEM, 4462, 40, 70, 40)

	
	
	MisHelpTalk( "<t>Принисите мне индигриенты. Мои детки хотят холодец." )
	MisResultTalk( "<t>Теперь мои детки будут сыты, спасибо Вам. Вот Ваша награда." )

	MisResultCondition(HasMission, 1452)
	MisResultCondition(NoRecord,1452)
	MisResultCondition(HasItem, 4325, 5)
	MisResultCondition(HasItem, 1680, 5)
	MisResultCondition(HasItem, 4433, 5)
	MisResultCondition(HasItem, 4357, 5)
	MisResultCondition(HasItem, 4461, 40)
	MisResultCondition(HasItem, 4462, 40)

	
	
	MisResultAction(TakeItem, 4325, 5 )
	MisResultAction(TakeItem, 1680, 5 )
	MisResultAction(TakeItem, 4433, 5 )
	MisResultAction(TakeItem, 4357, 5 )
	MisResultAction(TakeItem, 4461, 40 )
	MisResultAction(TakeItem, 4462, 40 )

	
	
	MisResultAction(GiveItem, 2909,1,4)--Сундук счастливой хрюшки
	MisResultAction(ClearMission, 1452)
	MisResultAction(SetRecord, 1452)
	MisResultAction(ClearRecord, 1452)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 4325)	
	TriggerAction( 1, AddNextFlag, 1452, 10, 5 )
	RegCurTrigger( 14521 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1680)	
	TriggerAction( 1, AddNextFlag, 1452, 15, 5 )
	RegCurTrigger( 14522 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4433)	
	TriggerAction( 1, AddNextFlag, 1452, 20, 5 )
	RegCurTrigger( 14523 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4357)	
	TriggerAction( 1, AddNextFlag, 1452, 25, 5 )
	RegCurTrigger( 14524 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4461)	
	TriggerAction( 1, AddNextFlag, 1452, 30, 40 )
	RegCurTrigger( 14525 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4462)	
	TriggerAction( 1, AddNextFlag, 1452, 70, 40 )
	RegCurTrigger( 14526 )

-------------------------------------------------Схватка
----------------------------------------------------------
--------------------------Близнецы------------------------
----------------------------------------------------------
----------------------------------------------------------

	DefineMission( 5673, "\193\235\232\231\237\229\246\251 \204\229\247\242\251", 1163 )--Близнецы Мечты 
	
	MisBeginTalk("<t>Л«ЧУЧщµДИЛ,КЦТХК®·ЦБйЗЙ,ФЪёч·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр?")

	MisBeginCondition(NoMission,1163)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1163)
	MisBeginAction(AddMission,1163)
	MisCancelAction(ClearMission, 1163)
	
	MisNeed(MIS_NEED_DESP, "»сµГ5µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>їґµГіцДгЧў¶ЁКЗТ»ёцОЄХЅ¶·¶шЙъµДИЛ.")

	MisResultCondition(HasMission, 1163)
	MisResultCondition(NoRecord,1163)
	MisResultCondition(HasFightingPoint,5 )
	MisResultAction(TakeFightingPoint, 5 )
	MisResultAction(ClearMission, 1163)
	MisResultAction(SetRecord,  1163 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------єЈµБЎ¤µВїЛ	--------Л®КЦ
	DefineMission (5674, "ГО»ГЛ«ЧУЦ®ГыЙщУўРЫ", 1164)
	
	MisBeginTalk("<t>ЕуУСДгєГ,ОТПлИГДгЦЄµАОТКЗТ»ёц¶ФЧФјєУРТЄЗуµДИЛЈ®ЛщТФГО»ГЛ«ЧУ№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©. ")

	MisBeginCondition(NoMission,1164)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1164)
	MisBeginAction(AddMission,1164)
	MisCancelAction(ClearMission, 1164)
	
	MisNeed(MIS_NEED_DESP, "»сµГ2000µгГыЙщµгКэ")
	MisHelpTalk("<t>їґКІГґїґ,»№І»ЧЯ?ДгТФОЄ2000µгГыЙщєЬєГ»мВр?")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1164)
	MisResultCondition(NoRecord,1164)
	MisResultCondition(HasCredit,2000 )
	MisResultAction(TakeCredit, 2000 )
	MisResultAction(ClearMission, 1164)
	MisResultAction(SetRecord,  1164 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------єЈµБЎ¤µВїЛ	---------Л®КЦ
	DefineMission (5741, "ГО»ГЛ«ЧУЦ®µИј¶УўРЫ", 1165)
	
	MisBeginTalk("<t>УВёТµДЕуУС,ИГОТїґµЅДг·З·ІµДДЬБ¦°Й,ПтОТЦ¤ГчДгЦ»±ИОТІоТ»µг,№ю№ю... ")

	MisBeginCondition(NoMission,1165)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1165)
	MisBeginAction(AddMission,1165)
	MisCancelAction(ClearMission, 1165)
	
	MisNeed(MIS_NEED_DESP, "µИј¶ґпµЅ60ј¶")
	MisHelpTalk("<t>µ±И»,60ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>І»µГІ»іРИП,ДгµДИ·Ц»±ИОТВФІоТ»іп¶шТС,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1165)
	MisResultCondition(NoRecord,1165)
	MisResultCondition(LvCheck, ">", 59 )
	MisResultAction(ClearMission, 1165)
	MisResultAction(SetRecord,  1165 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------єЈµБЎ¤µВїЛ	----------Л®КЦ
	DefineMission (5742, "ГО»ГЛ«ЧУЦ®ИЩУюУўРЫ", 1166)
	
	MisBeginTalk("<t>ґ«ЛµЦРєЈµБКАЅзЧоО°ґуµДИЩУюЦ®ЧУѕНКЗОТ..ОТµДЧжПИ,ОТТтґЛКЬµЅ№гґуєЈµБН¬РРµДЧрѕґ,ДгТЄТФОТОЄ°сСщ°Ў. ")

	MisBeginCondition(NoMission,1166)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1166)
	MisBeginAction(AddMission,1166)
	MisCancelAction(ClearMission, 1166)
	
	MisNeed(MIS_NEED_DESP, "»сµГ500µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1166)
	MisResultCondition(NoRecord,1166)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1166)
	MisResultAction(SetRecord,  1166 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------єЈµБЎ¤µВїЛ	------------Л®КЦ
	DefineMission (5677, "ГО»ГЛ«ЧУЦ®ІЙјЇґуК№", 1167)
	
	MisBeginTalk("<t>ІЙјЇС«ХВКЗФщУлДЗР©¶ґІмБ¦єЬЗїµДИЛµДАсОп,УРРЕРДµД»°ѕНИҐКФКФ°Й. ")

	MisBeginCondition(NoMission,1167)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1167)
	MisBeginAction(AddMission,1167)
	MisBeginAction(AddTrigger, 11671, TE_GETITEM, 1346, 10 )---------------СЄРИµДтттЅСЄ10
	MisBeginAction(AddTrigger, 11672, TE_GETITEM, 4526, 10 )--------------- ЙъРвµДі¤Г¬10
	MisBeginAction(AddTrigger, 11673, TE_GETITEM, 1608, 10 )-------------¶ЇОпЖ¤Г«10--------
	MisBeginAction(AddTrigger, 11674, TE_GETITEM, 4495, 1 )--------------ЙЅФфСьґш1ёц
	MisBeginAction(AddTrigger, 11675, TE_GETITEM, 1612, 20 )--------------·жАыµДЅЗ20ёц
	MisBeginAction(AddTrigger, 11676, TE_GETITEM, 1140, 20 )-------------ґ¬Ц»ЕзЙдЖчLV1 20ёц
	MisBeginAction(AddTrigger, 11677, TE_GETITEM, 3094, 5 )--------------Е¬Б¦Фц·щЖч5ёц
	MisCancelAction(ClearMission, 1167)
	

	MisNeed(MIS_NEED_ITEM, 1346, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4526, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 1608, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 4495, 1, 31, 1 )
	MisNeed(MIS_NEED_ITEM, 1612, 20, 32, 20 )
	MisNeed(MIS_NEED_ITEM, 1140, 20, 52, 20 )
	MisNeed(MIS_NEED_ITEM, 3094, 5, 72, 5 )
	

	MisHelpTalk("<t>І»ТЄТФОЄєЬИЭТЧ,їмИҐ°Й")
	MisResultTalk("<t>ХвР©¶«ОчИГДгєЬЙЛДФЅо°Й,јЗЧЎ,ХвКАЅзЙПЛщУРµД¶«Оч¶јУРЧФјєµДјЫЦµ,І»ТЄЧЬКЗј±РиµДК±єтІЕПлЖрАґИҐБфТв.")

	MisResultCondition(HasMission, 1167)
	MisResultCondition(NoRecord,1167)
	MisResultCondition(HasItem, 1346, 10 )
	MisResultCondition(HasItem, 4526, 10 )
	MisResultCondition(HasItem, 1608, 10 )
	MisResultCondition(HasItem, 4495, 1 )
	MisResultCondition(HasItem, 1612, 20 )
	MisResultCondition(HasItem, 1140, 20 )
	MisResultCondition(HasItem, 3094, 5 )


	MisResultAction(TakeItem, 1346, 10 )
	MisResultAction(TakeItem, 4526, 10 )
	MisResultAction(TakeItem, 1608, 10 )
	MisResultAction(TakeItem, 4495, 1)
	MisResultAction(TakeItem, 1612, 20 )
	MisResultAction(TakeItem, 1140, 20 )
	MisResultAction(TakeItem, 3094, 5 )
	
	MisResultAction(ClearMission, 1167)
	MisResultAction(SetRecord,  1167 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1167, 1, 10 )
	RegCurTrigger( 11671 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4526)	
	TriggerAction( 1, AddNextFlag, 1167, 11, 10 )
	RegCurTrigger( 11672 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1608)	
	TriggerAction( 1, AddNextFlag, 1167, 21, 10 )
	RegCurTrigger( 11673 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1167, 31, 1 )
	RegCurTrigger( 11674 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1167, 36, 20 )
	RegCurTrigger( 11675 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1140)	
	TriggerAction( 1, AddNextFlag, 1167, 37, 20 )
	RegCurTrigger( 11676 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1167, 87, 5 )
	RegCurTrigger( 11677 )


	----------------------------------------------------------Л«ЧУД©ИХ----------єЈµБЎ¤µВїЛ
	DefineMission( 5678, "ГО»ГЛ«ЧУЦ®Л«ЧУД©ИХ", 1168 )
	MisBeginTalk("<t>BOSSС«ХВКЗЧоѕЯУўРЫЦчТеТвО¶µДЅ±ХВ,ДгТЄµД»°ѕНИҐЙ±µфїЙЕВµДЛ«ЧУКШ»¤ХЯ.")
				
	MisBeginCondition(NoMission, 1168)
	MisBeginCondition(HasRecord,1162)
	MisBeginCondition(NoRecord,1168)
	MisBeginAction(AddMission,1168)
	MisBeginAction(AddTrigger, 11681, TE_KILL, 1039, 1)---Л«ЧУКШ»¤ХЯ
	
	MisCancelAction(ClearMission, 1168)

	MisNeed(MIS_NEED_DESP, "І¶Й±Л«ЧУКШ»¤ХЯД§Е®Ц®єЈ(2527, 2467)!")
	MisNeed(MIS_NEED_KILL, 1039,1, 10, 1)
	

	MisResultTalk("<t>Л«Н·ЛД±ЫµД№ЦОпКЗЙПЙсІ»РЎРДµДЅЬЧч.ДгУАФ¶¶јОЮ·ЁХжХэµДЙ±ЛАЛьГЗ!")
	MisHelpTalk("<t>МэЛµКЗЦ»Л«Н·№Ц,І»Н¬ТФНщ,ДгТЄРЎРД.")
	MisResultCondition(HasMission,  1168)
	MisResultCondition(HasFlag, 1168, 10)
	MisResultCondition(NoRecord , 1168)
	MisResultAction(GiveItem, 1880, 1, 4 )
	MisResultAction(ClearMission,  1168)
	MisResultAction(SetRecord,  1168 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1039)	
	TriggerAction( 1, AddNextFlag, 1168, 10, 1 )
	RegCurTrigger( 11681 )

-------------------------------------------------ВТ¶·УўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5679, "ГО»ГЛ«ЧУЦ®ВТ¶·УўРЫ", 1169)
	
	MisBeginTalk("<t>Л«ЧУЧщµДИЛ,КЦТХК®·ЦБйЗЙ,ФЪёч·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр?")

	MisBeginCondition(NoMission,1169)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1169)
	MisBeginAction(AddMission,1169)
	MisCancelAction(ClearMission, 1169)
	
	MisNeed(MIS_NEED_DESP, "»сµГ10µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>їґµГіцДгЧў¶ЁКЗТ»ёцОЄХЅ¶·¶шЙъµДИЛ.")

	MisResultCondition(HasMission, 1169)
	MisResultCondition(NoRecord,1169)
	MisResultCondition(HasFightingPoint,10 )
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1169)
	MisResultAction(SetRecord,  1169 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5680, "ГО»ГЛ«ЧУЦ®ГыЙщУўРЫ", 1170)
	
	MisBeginTalk("<t>ЕуУСДгєГ,ОТПлИГДгЦЄµАОТКЗТ»ёц¶ФЧФјєУРТЄЗуµДИЛЈ®ЛщТФГО»ГЛ«ЧУ№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©.")

	MisBeginCondition(NoMission,1170)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1170)
	MisBeginAction(AddMission,1170)
	MisCancelAction(ClearMission, 1170)
	
	MisNeed(MIS_NEED_DESP, "»сµГ5000µгГыЙщµгКэ")
	MisHelpTalk("<t>їґКІГґїґ,»№І»ЧЯ?ДгТФОЄ5000µгГыЙщєЬєГ»мВр?")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1170)
	MisResultCondition(NoRecord,1170)
	MisResultCondition(HasCredit,5000 )
	MisResultAction(TakeCredit,5000  )
	MisResultAction(ClearMission, 1170)
	MisResultAction(SetRecord,  1170 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5681, "ГО»ГЛ«ЧУЦ®µИј¶УўРЫ", 1171)
	
	MisBeginTalk("<t>УВёТµДЕуУС,ИГОТїґµЅДг·З·ІµДДЬБ¦°Й,ПтОТЦ¤ГчДгЦ»±ИОТІоТ»µг,№ю№ю... ")

	MisBeginCondition(NoMission,1171)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1171)
	MisBeginAction(AddMission,1171)
	MisCancelAction(ClearMission, 1171)
	
	MisNeed(MIS_NEED_DESP, "µИј¶ґпµЅ65ј¶")
	MisHelpTalk("<t>µ±И»,65ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>І»µГІ»іРИП,ДгµДИ·Ц»±ИОТВФІоТ»іп¶шТС,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1171)
	MisResultCondition(NoRecord,1171)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1171)
	MisResultAction(SetRecord,  1171 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5682, "ГО»ГЛ«ЧУЦ®ИЩУюУўРЫ", 1172)
	
	MisBeginTalk("<t>ґ«ЛµЦРєЈµБКАЅзЧоО°ґуµДИЩУюЦ®ЧУѕНКЗОТ..ОТµДЧжПИ,ОТТтґЛКЬµЅ№гґуєЈµБН¬РРµДЧрѕґ,ДгТЄТФОТОЄ°сСщ°Ў.")

	MisBeginCondition(NoMission,1172)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1172)
	MisBeginAction(AddMission,1172)
	MisCancelAction(ClearMission, 1172)
	
	MisNeed(MIS_NEED_DESP, "»сµГ700µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1172)
	MisResultCondition(NoRecord,1172)
	MisResultCondition(HasHonorPoint,700 )
	MisResultAction(TakeHonorPoint, 700 )
	MisResultAction(ClearMission, 1172)
	MisResultAction(SetRecord,  1172 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------єЈµБЎ¤µВїЛ	
	DefineMission (5683, "ГО»ГЛ«ЧУЦ®ІЙјЇґуК№", 1173)
	
	MisBeginTalk("<t>ІЙјЇС«ХВКЗФщУлДЗР©¶ґІмБ¦єЬЗїµДИЛµДАсОп,УРРЕРДµД»°ѕНИҐКФКФ°Й. ")

	MisBeginCondition(NoMission,1173)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1173)
	MisBeginAction(AddMission,1173)
	MisBeginAction(AddTrigger, 11731, TE_GETITEM, 1346, 15 )-------------------СЄРИµДтттЅСЄ15
	MisBeginAction(AddTrigger, 11732, TE_GETITEM, 4526, 15 )-------------------ЙъРвµДі¤Г¬15          
	MisBeginAction(AddTrigger, 11733, TE_GETITEM, 1608, 15 )-----------------¶ЇОпЖ¤Г«15               
	MisBeginAction(AddTrigger, 11734, TE_GETITEM, 4495, 2 )----------------ЙЅФфСьґш2ёц               
	MisBeginAction(AddTrigger, 11735, TE_GETITEM, 1612, 30)------------------·жАыµДЅЗ30ёц            
	MisBeginAction(AddTrigger, 11736, TE_GETITEM, 2724, 20 )-----------------ґ¬Ц»ЕзЙдЖчLV2 20ёц                  
	MisBeginAction(AddTrigger, 11737, TE_GETITEM, 3094, 10 )------------------Е¬Б¦Фц·щЖч10ёц          
	MisCancelAction(ClearMission, 1173)
	

	MisNeed(MIS_NEED_ITEM, 1346, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 4526, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 1608, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 4495,  2, 46, 2 )
	MisNeed(MIS_NEED_ITEM, 1612, 30, 48, 30 )
	MisNeed(MIS_NEED_ITEM, 2724, 20, 78, 20 )
	MisNeed(MIS_NEED_ITEM, 3094, 10, 98, 10 )
	

	MisHelpTalk("<t>І»ТЄТФОЄєЬИЭТЧ,їмИҐ°Й")
	MisResultTalk("<t>ХвР©¶«ОчИГДгєЬЙЛДФЅо°Й,јЗЧЎ,ХвКАЅзЙПЛщУРµД¶«Оч¶јУРЧФјєµДјЫЦµ,І»ТЄЧЬКЗј±РиµДК±єтІЕПлЖрАґИҐБфТв..")

	MisResultCondition(HasMission, 1173)
	MisResultCondition(NoRecord,1173)
	MisResultCondition(HasItem, 1346, 15 )
	MisResultCondition(HasItem, 4526, 15 )
	MisResultCondition(HasItem, 1608, 15 )
	MisResultCondition(HasItem, 4495, 2 )
	MisResultCondition(HasItem, 1612, 30 )
	MisResultCondition(HasItem, 2724, 20 )
	MisResultCondition(HasItem, 3094, 10 )


	MisResultAction(TakeItem, 1346, 15 )
	MisResultAction(TakeItem, 4526, 15 )
	MisResultAction(TakeItem, 1608, 15 )
	MisResultAction(TakeItem, 4495, 2 )
	MisResultAction(TakeItem, 1612, 30 )
	MisResultAction(TakeItem, 2724, 20 )
	MisResultAction(TakeItem, 3094, 10 )

	MisResultAction(ClearMission, 1173)
	MisResultAction(SetRecord,  1173 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1173, 1, 15 )
	RegCurTrigger( 11731 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4526)	
	TriggerAction( 1, AddNextFlag, 1173, 16, 15 )
	RegCurTrigger( 11732 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1608)	
	TriggerAction( 1, AddNextFlag, 1173, 31, 15 )
	RegCurTrigger( 11733 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1173, 46, 2 )
	RegCurTrigger( 11734 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1173, 48, 30 )
	RegCurTrigger( 11735 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2724)	
	TriggerAction( 1, AddNextFlag, 1173,78, 20 )
	RegCurTrigger( 11736 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1173, 98, 10 )
	RegCurTrigger( 11737 )


-------------------------------------------------ВТ¶·УўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5684, "ГО»ГЛ«ЧУЦ®ВТ¶·УўРЫ", 1174)
	
	MisBeginTalk("<t>Л«ЧУЧщµДИЛ,КЦТХК®·ЦБйЗЙ,ФЪёч·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр? ")

	MisBeginCondition(NoMission,1174)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1174)
	MisBeginAction(AddMission,1174)
	MisCancelAction(ClearMission, 1174)
	
	MisNeed(MIS_NEED_DESP, "»сµГ15µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>їґµГіцДгЧў¶ЁКЗТ»ёцОЄХЅ¶·¶шЙъµДИЛ.")

	MisResultCondition(HasMission, 1174)
	MisResultCondition(NoRecord,1174)
	MisResultCondition(HasFightingPoint,15 )
	MisResultAction(TakeFightingPoint, 15 )
	MisResultAction(ClearMission, 1174)
	MisResultAction(SetRecord,  1174 )
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5685, "ГО»ГЛ«ЧУЦ®ГыЙщУўРЫ", 1175)
	
	MisBeginTalk("<t>ЕуУСДгєГ,ОТПлИГДгЦЄµАОТКЗТ»ёц¶ФЧФјєУРТЄЗуµДИЛЈ®ЛщТФГО»ГЛ«ЧУ№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©.")

	MisBeginCondition(NoMission,1175)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1175)
	MisBeginAction(AddMission,1175)
	MisCancelAction(ClearMission, 1175)
	
	MisNeed(MIS_NEED_DESP, "»сµГ8000µгГыЙщµгКэ")
	MisHelpTalk("<t>їґКІГґїґ,»№І»ЧЯ?ДгТФОЄ8000µгГыЙщєЬєГ»мВр?")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1175)
	MisResultCondition(NoRecord,1175)
	MisResultCondition(HasCredit,8000 )
	MisResultAction(TakeCredit, 8000 )
	MisResultAction(ClearMission, 1175)
	MisResultAction(SetRecord,  1175 )
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5686, "ГО»ГЛ«ЧУЦ®µИј¶УўРЫ", 1176)
	
	MisBeginTalk("<t>УВёТµДЕуУС,ИГОТїґµЅДг·З·ІµДДЬБ¦°Й,ПтОТЦ¤ГчДгЦ»±ИОТІоТ»µг,№ю№ю....")

	MisBeginCondition(NoMission,1176)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1176)
	MisBeginAction(AddMission,1176)
	MisCancelAction(ClearMission, 1176)
	
	MisNeed(MIS_NEED_DESP, "µИј¶ґпµЅ70ј¶")
	MisHelpTalk("<t>µ±И»,70ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>І»µГІ»іРИП,ДгµДИ·Ц»±ИОТВФІоТ»іп¶шТС,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1176)
	MisResultCondition(NoRecord,1176)
	MisResultCondition(LvCheck, ">", 69 )
	MisResultAction(ClearMission, 1176)
	MisResultAction(SetRecord,  1176 )
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5687, "ГО»ГЛ«ЧУЦ®ИЩУюУўРЫ", 1177)
	
	MisBeginTalk("<t>ґ«ЛµЦРєЈµБКАЅзЧоО°ґуµДИЩУюЦ®ЧУѕНКЗОТ..ОТµДЧжПИ,ОТТтґЛКЬµЅ№гґуєЈµБН¬РРµДЧрѕґ,ДгТЄТФОТОЄ°сСщ°Ў.")

	MisBeginCondition(NoMission,1177)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1177)
	MisBeginAction(AddMission,1177)
	MisCancelAction(ClearMission, 1177)
	
	MisNeed(MIS_NEED_DESP, "»сµГ1000µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1177)
	MisResultCondition(NoRecord,1177)
	MisResultCondition(HasHonorPoint,1000 )
	MisResultAction(TakeHonorPoint, 1000 )
	MisResultAction(ClearMission, 1177)
	MisResultAction(SetRecord,  1177 )
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------єЈµБЎ¤µВїЛ	
	DefineMission (5688, "ГО»ГЛ«ЧУЦ®ІЙјЇґуК№", 1178)
	
	MisBeginTalk("<t>ІЙјЇС«ХВКЗФщУлДЗР©¶ґІмБ¦єЬЗїµДИЛµДАсОп,УРРЕРДµД»°ѕНИҐКФКФ°Й. ")

	MisBeginCondition(NoMission,1178)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1178)
	MisBeginAction(AddMission,1178)
	MisBeginAction(AddTrigger, 11781, TE_GETITEM, 1346, 20 )---------------------СЄРИµДтттЅСЄ20 
	MisBeginAction(AddTrigger, 11782, TE_GETITEM, 3433, 1 )---------------------·СЕµ·ыКЇ1ёц          
	MisBeginAction(AddTrigger, 11783, TE_GETITEM, 4495, 3 )-------------------ЙЅФфСьґш3ёц               
	MisBeginAction(AddTrigger, 11784, TE_GETITEM, 1612, 30 )------------------·жАыµДЅЗ30ёц             
	MisBeginAction(AddTrigger, 11785, TE_GETITEM, 2724, 30 )--------------------ґ¬Ц»ЕзЙдЖчLV2 30ёц             
	MisBeginAction(AddTrigger, 11786, TE_GETITEM, 3094, 30 )-------------------Е¬Б¦Фц·щЖч30ёц                              
	MisCancelAction(ClearMission, 1178)						                                     
	

	MisNeed(MIS_NEED_ITEM, 1346, 20, 1, 20 )
	MisNeed(MIS_NEED_ITEM, 3433, 1, 21, 1 )
	MisNeed(MIS_NEED_ITEM, 4495, 3, 22, 3 )
	MisNeed(MIS_NEED_ITEM, 1612, 30, 25, 30 )
	MisNeed(MIS_NEED_ITEM, 2724, 30, 55, 30)
	MisNeed(MIS_NEED_ITEM, 3094, 30, 85, 30 )


	MisHelpTalk("<t>І»ТЄТФОЄєЬИЭТЧ,їмИҐ°Й")
	MisResultTalk("<t>ХвР©¶«ОчИГДгєЬЙЛДФЅо°Й,јЗЧЎ,ХвКАЅзЙПЛщУРµД¶«Оч¶јУРЧФјєµДјЫЦµ,І»ТЄЧЬКЗј±РиµДК±єтІЕПлЖрАґИҐБфТв.")

	MisResultCondition(HasMission, 1178)
	MisResultCondition(NoRecord,1178)
	MisResultCondition(HasItem, 1346, 20 )
	MisResultCondition(HasItem, 3433, 1 )
	MisResultCondition(HasItem, 4495, 3 )
	MisResultCondition(HasItem, 1612, 30 )
	MisResultCondition(HasItem, 2724, 30 )
	MisResultCondition(HasItem, 3094, 30 )


	MisResultAction(TakeItem, 1346, 20 )
	MisResultAction(TakeItem, 3433, 1 )
	MisResultAction(TakeItem, 4495, 3 )
	MisResultAction(TakeItem, 1612, 30 )
	MisResultAction(TakeItem, 2724, 30 )
	MisResultAction(TakeItem, 3094, 30 )

	MisResultAction(ClearMission, 1178)
	MisResultAction(SetRecord,  1178 )
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1178, 1, 20 )
	RegCurTrigger( 11781 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3433)	
	TriggerAction( 1, AddNextFlag, 1178, 21, 1 )
	RegCurTrigger( 11782 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1178, 22, 3 )
	RegCurTrigger( 11783 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1178, 25, 30 )
	RegCurTrigger( 11784 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2724)	
	TriggerAction( 1, AddNextFlag, 1178, 55, 30 )
	RegCurTrigger( 11785 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1178, 85, 30 )
	RegCurTrigger( 11786 )

	----------------------------------------------------------ЙзЅ»ґуК№----------єЈµБЎ¤µВїЛ
	DefineMission( 5689, "ГО»ГЛ«ЧУЦ®ЙзЅ»ґуК№", 1179 )
	MisBeginTalk("<t>УРИЛЛµОТПІ»¶ґµЕЈ,ДСµАХвКЗОТµДґнВр?УРјёёцДРИЛІ»КЗХвСщ?ЖдКµОТ»№КЗєЬУРГыНыµД,ДЗР©із°ЭОТµДЕуУСГЗїЙТФЧчЦ¤.ХэєГОТТЄФЪКҐµ®ЅЪѕЩ°мЕЙ¶Ф,Из№ыДгПлТЄМЅЛчС«ХВѕН°пОТИҐСыЗлЛыГЗ°Й.")
				
	MisBeginCondition(NoMission, 1179)
	MisBeginCondition(NoRecord,1179)
	MisBeginCondition(HasRecord, 1162)-------------------РВµДid,ЧоєуµДid
	MisBeginAction(AddMission,1179)
	MisCancelAction(ClearMission, 1179)

	MisNeed(MIS_NEED_DESP, "ХТАЧцЄ±¤µД»¤ОАЎ¤ДбЛЙ(711,1414)БДБД")
	
	MisHelpTalk("<t>їмИҐ°Й,К±јдЧЬКЗ±ИПлПуµД№эµГїм.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№-----------------»¤ОАЎ¤ДбЛЙ

	DefineMission(5690, "ЙзЅ»ґуК№", 1179, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>єЈµБЎ¤µВїЛ?ОТИПК¶Лы,ЛыґµЕЈµД±ѕКВОТКЗФзУР¶ъОЕµД.")
	MisResultCondition(NoRecord, 1179)
	MisResultCondition(HasMission,1179)
	MisResultAction(ClearMission,1179)
	MisResultAction(SetRecord, 1179)

	----------------------------------------------------------ЙзЅ»ґуК№2----------»¤ОАЎ¤ДбЛЙ
	DefineMission( 5691, "ЙзЅ»ґуК№2", 1180 )
	MisBeginTalk("<t>ОТёХёХ18ЛкµДК±єтєЬПтНщєЈµБЙъ»о,єуАґИПК¶БЛµВїЛѕН·ЕЖъБЛХвёцГОПл...ЛыµДЕЙ¶ФОТДЬІ»ДЬІОјУ»№ТЄїґУРГ»УРјЩЖЪ,ОТїЙГ»УРВхїЛДЗГґУЖПР")
				
	MisBeginCondition(NoMission, 1180)
	MisBeginCondition(NoRecord,1180)
	MisBeginCondition(HasRecord, 1179)
	MisBeginAction(AddMission,1180)
	MisCancelAction(ClearMission, 1180)

	MisNeed(MIS_NEED_DESP, "ХТЙіб°µДСІВЯ±шЎ¤ВхїЛ(958,3549)БДБД")
	
	MisHelpTalk("<t>ФЪі¤№ЩСЫЖ¤µЧПВµ±ІоѕНКЗІ»ДЗГґУЖПР.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№2-------------СІВЯ±шЎ¤ВхїЛ
	DefineMission(5692, "ЙзЅ»ґуК№2", 1180, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєГ!ОТ¶Уі¤І»ФЪ,ДгКЗХТОТВр?")
	MisResultCondition(NoRecord, 1180)
	MisResultCondition(HasMission,1180)
	MisResultAction(ClearMission,1180)
	MisResultAction(SetRecord, 1180)

	----------------------------------------------------------ЙзЅ»ґуК№3----------СІВЯ±шЎ¤ВхїЛ
	DefineMission( 5693, "ЙзЅ»ґуК№3", 1181 )
	MisBeginTalk("<t>µВїЛµДКҐµ®ЕЙ¶Ф?єЬІ»ґн,ОТТСѕ­¶И№эБЛєЬ¶аёц№В¶АОЮБДµДКҐµ®ЅЪБЛ.І»№эОТТСѕ­Фј№эРЮЛѕБЛ,І»ИзДг°пОТОКТ»ПВРЮЛѕµДТвјы")
				
	MisBeginCondition(NoMission, 1181)
	MisBeginCondition(NoRecord,1181)
	MisBeginCondition(HasRecord, 1180)
	MisBeginAction(AddMission,1181)
	MisCancelAction(ClearMission, 1181)

	MisNeed(MIS_NEED_DESP, "ХТчјчГУЄµШІ№ёшХѕµДРЮЛѕ(2138,545)БДБД")
	
	MisHelpTalk("<t>ЛµКµ»°ОТ¶ФµВїЛТСѕ­Г»КІГґУЎПуБЛ,єЗєЗ..")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№3--------РЮЛѕ
	DefineMission(5694, "ЙзЅ»ґуК№3", 1181, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ІОјУµВїЛµДКҐµ®ЕЙ¶ФКЗёцј«єГµДЦчТв,ЛдИ»ОТІ»ПІ»¶µВїЛ,µ«КЗОТПІ»¶ЕЙ¶ФЙПµД№ГДп.")
	MisResultCondition(NoRecord, 1181)
	MisResultCondition(HasMission,1181)
	MisResultAction(ClearMission,1181)
	MisResultAction(SetRecord, 1181)



	----------------------------------------------------------ЙзЅ»ґуК№4----------РЮЛѕ
	DefineMission( 5695, "ЙзЅ»ґуК№4", 1182 )
	MisBeginTalk("<t>Из№ыДг»бИҐµВ¶ыО¬ЖЅФ­Зл°пГ¦ёжЛЯїЙБЇµДВн¶ыЛ№,ОТЦЄµАТ»ЦЦЦІОпїЙТФУРР§µДЗэіэХВУгЦ­.")
				
	MisBeginCondition(NoMission, 1182)
	MisBeginCondition(NoRecord,1182)
	MisBeginCondition(HasRecord, 1181)
	MisBeginAction(AddMission,1182)
	MisCancelAction(ClearMission, 1182)

	MisNeed(MIS_NEED_DESP, "ХТµВ¶ыО¬ЖЅФ­µДСІВЯ±шЎ¤Вн¶ыЛ№(2065,2732)БДБД")
	
	MisHelpTalk("<t>Лы¶ФХвёцПыПў»бєЬёРРЛИ¤µД.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№4--------СІВЯ±шЎ¤Вн¶ыЛ№
	DefineMission(5696, "ЙзЅ»ґуК№4", 1182, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>КЗВр?УРХвЦЦЦІОп,ДЗЛыОЄКІГґІ»ИГДгґшТ»Р©ёшОТ,їґАґКЗУРЅ»»»МхјюµД.ХвёцјТ»пХжКЗРЎЖш°Ў.")
	MisResultCondition(NoRecord, 1182)
	MisResultCondition(HasMission,1182)
	MisResultAction(ClearMission,1182)
	MisResultAction(SetRecord, 1182)


	----------------------------------------------------------ЙзЅ»ґуК№5----------СІВЯ±шЎ¤Вн¶ыЛ№
	DefineMission( 5697, "ЙзЅ»ґуК№5", 1183 )
	MisBeginTalk("<t>ДгЛµµВїЛ?ОТУлµВїЛПаК¶¶аДкБЛ,ЛыКЗТ»ёцєЬІ»ґнµДЕуУС,ЛдИ»°®ґµЕЈ,ИґКЗТ»ёцєЬХжіПµДЕуУС.ОТТ»¶Ё»бИҐІОјУЛыµДЕЙ¶Ф.ОТПлДг»бФёТв°пОТНЁЦЄ¶нїЛБрОчЛ№,ЛыµДХжіПТвК¶М«Іо,ОТТЄґшЛыИҐЅУКЬТ»µгЅМУэ.")
				
	MisBeginCondition(NoMission, 1183)
	MisBeginCondition(NoRecord,1183)
	MisBeginCondition(HasRecord, 1182)
	MisBeginAction(AddMission,1183)
	MisCancelAction(ClearMission, 1183)

	MisNeed(MIS_NEED_DESP, "ХТДПІїЙіД®µД¶нїЛБрОчЛ№(1131,3153)БДБД")
	
	MisHelpTalk("<t>¶нїЛБрОчЛ№КЗёцКУІЖИзГьµДРЎєў,У¦ёГПтµВїЛС§П°.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№5--------¶нїЛБрОчЛ№
	DefineMission(5698, "ЙзЅ»ґуК№5", 1183, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТКУІЖИзГь?ДгОКЛыІ»·ўѕьвГёшЛыЛы»бН¬ТвВр?")
	MisResultCondition(NoRecord, 1183)
	MisResultCondition(HasMission,1183)
	MisResultAction(ClearMission,1183)
	MisResultAction(SetRecord, 1183)


	----------------------------------------------------------ЙзЅ»ґуК№6----------¶нїЛБрОчЛ№
	DefineMission( 5699, "ЙзЅ»ґуК№6", 1184 )
	MisBeginTalk("<t>ЖдКµОТХвСщ°®З®ТІУРОТµДФ­Тт,Ч·ЗуГОЦРЗйИЛКЗІ»ДЬЦ»їїУпСФµД,ДОДОКЗёцїЙ°®µДЕ®єў,ОТІ»ТЄЛэКЬїа.І»ЦЄµАЛэУРГ»УРПлОТ.")
				
	MisBeginCondition(NoMission, 1184)
	MisBeginCondition(NoRecord,1184)
	MisBeginCondition(HasRecord, 1183)
	MisBeginAction(AddMission,1184)
	MisCancelAction(ClearMission, 1184)

	MisNeed(MIS_NEED_DESP, "ХТДОДО(798,369)БДБД")
	
	MisHelpTalk("<t>ДОДОКЗТ»ёцЖшЦКУЕСЕµДГААц№ГДп.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№6--------ДОДО
	DefineMission(5700, "ЙзЅ»ґуК№6", 1184, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ЛдИ»ДРИЛУ¦ёГУРїн№гµДРШ»ієНРЫєсµДЧК±ѕ,µ«№ШРДОТІЕКЗЧоЦШТЄµД.")
	MisResultCondition(NoRecord, 1184)
	MisResultCondition(HasMission,1184)
	MisResultAction(ClearMission,1184)
	MisResultAction(SetRecord, 1184)


	----------------------------------------------------------ЙзЅ»ґуК№7----------ДОДО
	DefineMission( 5701, "ЙзЅ»ґуК№7", 1185 )
	MisBeginTalk("<t>ОТКЗЗеґїІ»¶®°®ЗйµДРЎЕ®Йъ,ЛщУР№ШУЪ°®ЗйµДАнПлµДєНПЦКµµД№ЫДоОТ¶јКЗНЁ№э№ЕІ©А­µДКйБЛЅвµЅµД.")
				
	MisBeginCondition(NoMission, 1185)
	MisBeginCondition(NoRecord,1185)
	MisBeginCondition(HasRecord, 1184)
	MisBeginAction(AddMission,1185)
	MisCancelAction(ClearMission, 1185)

	MisNeed(MIS_NEED_DESP, "ХТјУДЙµД№ЕІ©А­(1507,3105)БДБД")
	
	MisHelpTalk("<t>ОТґУГ»јы№эХвО»ОДС§ґуК¦,µ«КЗОТІВПлЛыТ»¶ЁКЗТ»О»іЙКмОИЦШµДУЕСЕДРЧУ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№7--------№ЕІ©А­
	DefineMission(5702, "ЙзЅ»ґуК№7", 1185, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТµДЦТКµ¶БХЯДОДО?ОТµД¶БХЯМ«¶аБЛ.І»№эЛэУРХвёцРАЙНЛ®ЧјИГОТ¶ФХвёцКАЅзЦШИјРЕРДБЛ.")
	MisResultCondition(NoRecord, 1185)
	MisResultCondition(HasMission,1185)
	MisResultAction(ClearMission,1185)
	MisResultAction(SetRecord, 1185)


	----------------------------------------------------------ЙзЅ»ґуК№8----------№ЕІ©А­
	DefineMission( 5703, "ЙзЅ»ґуК№8", 1186 )
	MisBeginTalk("<t>ЖдКµОТФ­±ѕКЗДОДОПлПуµДДЗЦЦДРЧУ,КЗДЗґОєЈДСєуЖ®µЅєЈµєЙПФміЙµД,ОТєНµВїЛ±»ДЄГыЖдГоµД»Ґ»»БЛНвГІ.І»ЦЄµАХвёцјТ»п¶®І»¶®µГ±ЈСш,ОТДЗїЎГАµДБі°Ў,КЗёГИҐїґТ»ПВБЛ.ДгІ»РЕ?ІЁ¶ыїЙТФЧчЦ¤µД.")
				
	MisBeginCondition(NoMission, 1186)
	MisBeginCondition(NoRecord,1186)
	MisBeginCondition(HasRecord, 1185)
	MisBeginAction(AddMission,1186)
	MisCancelAction(ClearMission, 1186)

	MisNeed(MIS_NEED_DESP, "ХТ±щС©µєєЈёЫЦё»УЎ¤ІЁ¶ы(2372,737)БДБД")
	
	MisHelpTalk("<t>ОТєГ»іДоОТµДБі°Ў!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№8--------єЈёЫЦё»УЎ¤ІЁ¶ы
	DefineMission(5704, "ЙзЅ»ґуК№8", 1186, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>№ЕІ©А­єНµВїЛ»»Бі?І»јЗµГБЛ,ГїМмѕ­№эХвАпµДИЛ¶јєЬ¶а.ЛµКµ»°ЛыГЗµДБі»»І»»»¶јїґІ»іцКІГґГАёР,ТІѕНМёІ»ЙПЛ­КЬТж.єЗєЗ")
	MisResultCondition(NoRecord, 1186)
	MisResultCondition(HasMission,1186)
	MisResultAction(ClearMission,1186)
	MisResultAction(SetRecord, 1186)


	----------------------------------------------------------ЙзЅ»ґуК№9----------єЈёЫЦё»УЎ¤ІЁ¶ы
	DefineMission( 5705, "ЙзЅ»ґуК№9", 1187 )
	MisBeginTalk("<t>°МєЫКЗДРИЛµД»ХХВ,ѕЖѕ«КЗєЈµБµД»п°й,УРѕЖОТКЗІ»»бґн№эµД.І»ЦЄµАОТµДНв№ъУСИЛ¶«·ЅєЈµБЎ¤БеЧфМпЙЅ»бІ»»бІОјУ,ЛдИ»ЛыЅІ»°єЬЙЩУРИЛДЬМэ¶®.ДДПсїЙ°®µДУЕУЕ...")
				
	MisBeginCondition(NoMission, 1187)
	MisBeginCondition(NoRecord,1187)
	MisBeginCondition(HasRecord, 1186)
	MisBeginAction(AddMission,1187)
	MisCancelAction(ClearMission, 1187)

	MisNeed(MIS_NEED_DESP, "ХТ°ўАј±ИЛ№±щФ­µДІЭЭ®УЕУЕ(1010,350)БДБД")
	
	MisHelpTalk("<t>УЕУЕјтЦ±КЗ±щС©ЦРКўїЄµДГµ№е.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№9--------ІЭЭ®УЕУЕ
	DefineMission(5706, "ЙзЅ»ґуК№9", 1187, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТДДУРІЁ¶ыТЇТЇЛµµГДЗГґїЙ°®ДШ?КЗТтОЄЛыПІ»¶ОТІЕФЅ·ўѕхµГОТїЙ°®.")
	MisResultCondition(NoRecord, 1187)
	MisResultCondition(HasMission,1187)
	MisResultAction(ClearMission,1187)
	MisResultAction(SetRecord, 1187)

	----------------------------------------------------------ЙзЅ»ґуК№10----------ІЭЭ®УЕУЕ
	DefineMission( 5707, "ЙзЅ»ґуК№10", 1188 )
	MisBeginTalk("<t>µВїЛКЗУРГыµДєЈµБВр?ЛыТІСыЗлБЛОТ?ДЗОТТЄОЄЛыЧј±ёАсОпБЛ...ЛНКІГґёшЛыДШ?УР°м·ЁБЛ,І»ИзДг°пОТОКОКНЯИш·Ё¶ы,ЛыДЗУРєЬУРИ¤µДЦЅЕЖ.ОТПлєЈµБ¶ј»бПІ»¶ЦЅЕЖУОП·µД.")
				
	MisBeginCondition(NoMission, 1188)
	MisBeginCondition(NoRecord,1188)
	MisBeginCondition(HasRecord, 1187)
	MisBeginAction(AddMission,1188)
	MisCancelAction(ClearMission, 1188)

	MisNeed(MIS_NEED_DESP, "ХТ±ґ±ИЖЅФ­µДНЯИш·Ё¶ы(1136,2778)БДБД")
	
	MisHelpTalk("<t>І»ЦЄµАНЯИш·Ё¶ыїПІ»їП°СЦЅЕЖЛНёшОТДШ...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№10--------НЯИш·Ё¶ы
	DefineMission(5708, "ЙзЅ»ґуК№10", 1188, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>УЕУЕТІЧўТвµЅОТµДІЕ»ЄБЛ?єГУРіЙѕНёР°Ў!")
	MisResultCondition(NoRecord, 1188)
	MisResultCondition(HasMission,1188)
	MisResultAction(ClearMission,1188)
	MisResultAction(SetRecord, 1188)

	----------------------------------------------------------ЙзЅ»ґуК№11----------НЯИш·Ё¶ы
	DefineMission( 5709, "ЙзЅ»ґуК№11", 1189 )
	MisBeginTalk("<t>ОТІ»ДЬИГУЕУЕХвСщµДРЎЕ®єўТ»ёцИЛИҐІОјУєЈµБµДParty,ОТ»бґшЧЕАсОпЕгЛэТ»ЖрИҐµД.ЛµµЅКҐµ®ЅЪК№ОТПлЖрТ»јюКВ,УЙУЪФ­БПЅфИ±,ДкµЧТЄЅ»ёшЅ»ТЧФ±Ў¤ГЧЛчСЗЛ№µД»хОпїЙДЬІ»»б°ґК±ЛНµЅБЛ,Из№ыДгВ·№эГщЙіµєґъОТЛµГчТ»ПВєГВр?ОТПаРЕДг.")
				
	MisBeginCondition(NoMission, 1189)
	MisBeginCondition(NoRecord,1189)
	MisBeginCondition(HasRecord, 1188)
	MisBeginAction(AddMission,1189)
	MisCancelAction(ClearMission, 1189)

	MisNeed(MIS_NEED_DESP, "ХТГщЙіµєµДЅ»ТЧФ±Ў¤ГЧЛчСЗЛ№(1739,3748)БДБД")
	
	MisHelpTalk("<t>ДгµДСщЧУїґЖрАґѕНєЬЦµµГНРё¶.Ѕ»ТЧФ±Ў¤ГЧЛчСЗЛ№ФЪГщЙіµє.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№11--------Ѕ»ТЧФ±Ў¤ГЧЛчСЗЛ№
	DefineMission(5710, "ЙзЅ»ґуК№11", 1189, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>УЦТЄСУК±!НЯИш·Ё¶ыОЄБЛїЙ°®µДЕ®єўКІГґ¶јїЙТФ·ЕЖъ,ЙхЦБКЗОТХвёцєГЕуУСµДЦцНР...")
	MisResultCondition(NoRecord, 1189)
	MisResultCondition(HasMission,1189)
	MisResultAction(ClearMission,1189)
	MisResultAction(SetRecord, 1189)

	----------------------------------------------------------ЙзЅ»ґуК№12----------Ѕ»ТЧФ±Ў¤ГЧЛчСЗЛ№
	DefineMission( 5711, "ЙзЅ»ґуК№12", 1190 )
	MisBeginTalk("<t>ХвСщїґАґДкµЧОТТІГ»УРМ«¶аКВїЙТФЧцБЛ.ОТ»бИҐІОјУµВїЛµДСз»бµД,єЬѕГГ»ИҐ°Э·Г№эЕуУСБЛ.№ЕІ©А­ТІИҐВр?М«єГБЛ,Из№ыКОЖ·ЙМИЛЎ¤Ир¶чТІДЬІОјУ,ДЗЅ«КЗТ»ёцНкГАµДКҐµ®ЅЪ.")
				
	MisBeginCondition(NoMission, 1190)
	MisBeginCondition(NoRecord,1190)
	MisBeginCondition(HasRecord, 1189)
	MisBeginAction(AddMission,1190)
	MisCancelAction(ClearMission, 1190)

	MisNeed(MIS_NEED_DESP, "ХТ±щј«І№ёшХѕµДКОЖ·ЙМИЛЎ¤Ир¶ч(2673,657)БДБД")
	
	MisHelpTalk("<t>Из№ыИр¶чІ»ИҐµД»°ОТ»бѕхµГТЕє¶µД,ПЈНыДгїЙТФ°пОТ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№12--------КОЖ·ЙМИЛЎ¤Ир¶ч
	DefineMission(5712, "ЙзЅ»ґуК№12", 1190, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>№ю№ю№ю,ГЧЛчСЗЛ№ХвёцјТ»пЧЬКЗЛµХвР©ИГИЛёР¶ЇµД»°.МЦСбА­.")
	MisResultCondition(NoRecord, 1190)
	MisResultCondition(HasMission,1190)
	MisResultAction(ClearMission,1190)
	MisResultAction(SetRecord, 1190)


	----------------------------------------------------------ЙзЅ»ґуК№13----------КОЖ·ЙМИЛЎ¤Ир¶ч
	DefineMission( 5713, "ЙзЅ»ґуК№13", 1191 )
	MisBeginTalk("<t>їЙДЬКЗ¶аДкѕ­УЄЦй±¦КОЖ·К№ОТµДРФёсТІЕ®РФ»ЇБЛ.ОЄБЛИГЧФјєКјЦХ±ЈіЦДРЧУµДСфёХ,¶аДкАґОТКјЦХУлДРИЛО¶К®ЧгµДїЁРЭЎ¤ЛйКЇ±ЈіЦБЄВз.")
				
	MisBeginCondition(NoMission, 1191)
	MisBeginCondition(NoRecord,1191)
	MisBeginCondition(HasRecord, 1190)
	MisBeginAction(AddMission,1191)
	MisCancelAction(ClearMission, 1191)

	MisNeed(MIS_NEED_DESP, "ХТїЁ¶ыјУµВІ№ёшХѕµДїЁРЭЎ¤ЛйКЇ(626,2100)БДБД")
	
	MisHelpTalk("<t>ДгїЙТФЛі±гµЅїЁ¶ыјУµВІ№ёшХѕЧЄЧЄ,ДЗАпµДКч»бЧЯВ·µД.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№13--------їЁРЭЎ¤ЛйКЇ
	DefineMission(5714, "ЙзЅ»ґуК№13", 1191, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ХвАпІ»КЗТ»ёцККєПИЛАаѕУЧЎµДµШ·Ѕ,УИЖдКЗµ±ДгІ»ПІ»¶ДгµДБЪѕУК±,ХвЦЦёРѕхѕНёьЗїБТ.")
	MisResultCondition(NoRecord, 1191)
	MisResultCondition(HasMission,1191)
	MisResultAction(ClearMission,1191)
	MisResultAction(SetRecord, 1191)

	----------------------------------------------------------ЙзЅ»ґуК№14----------їЁРЭЎ¤ЛйКЇ
	DefineMission( 5715, "ЙзЅ»ґуК№14", 1192 )
	MisBeginTalk("<t>УРѕЫ»бїЙТФІОјУ?ЛдИ»»№УРєЬѕГІЕµЅКҐµ®ЅЪ,µ«КЗМэµЅХвёцПыПўИФИ»ИГОТѕхµГєЬХс·Ь,ЦБЙЩїЙТФФ¶АлДіёцИЛ.ОТПлЅ»ТЧФ±Ў¤УИїЁТІПлЅвНСµД,І»ИзДгИҐОКПВЛы.")
				
	MisBeginCondition(NoMission, 1192)
	MisBeginCondition(NoRecord,1192)
	MisBeginCondition(HasRecord, 1191)
	MisBeginAction(AddMission,1192)
	MisCancelAction(ClearMission, 1192)

	MisNeed(MIS_NEED_DESP, "ХТХж°®µєµДЅ»ТЧФ±Ў¤УИїЁ(2519,2397)БДБД")
	
	MisHelpTalk("<t>Хж°®µєµДµШРОКЗРДРОµД,ДгЦЄµАВр?")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№14--------Ѕ»ТЧФ±Ў¤УИїЁ        
	DefineMission(5716, "ЙзЅ»ґуК№14", 1192, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєНїЁРЭЎ¤ЛйКЇХжКЗОТµДѕИРЗ°ЎЈ®ОТФЪ¶гОТµДХ®Цч,ОТіРИПОТІ»КЗТ»ёціЙ№¦µДЅ»ТЧФ±,ЧЬКЗЧцЕв±ѕµДЙъТв.Чоє¦ЕВ№эКҐµ®ЅЪУРИЛ±ЖХ®БЛ.")
	MisResultCondition(NoRecord, 1192)
	MisResultCondition(HasMission,1192)
	MisResultAction(ClearMission,1192)
	MisResultAction(SetRecord, 1192)

	----------------------------------------------------------ЙзЅ»ґуК№15----------Ѕ»ТЧФ±Ў¤УИїЁ
	DefineMission( 5717, "ЙзЅ»ґуК№15", 1193 )
	MisBeginTalk("<t>їЄЛЅИЛѕЫ»бГ»УРПсСщµДµгРДїЙІ»РР,ОЄБЛДЗёцГАєГµДНнЙП,ОТИПОЄДгУ¦ёГ°пОТГЗСыЗл»бЧчГАО¶µгРДµДУИЛюАпДб.")
				
	MisBeginCondition(NoMission, 1193)
	MisBeginCondition(NoRecord,1193)
	MisBeginCondition(HasRecord, 1192)
	MisBeginAction(AddMission,1193)
	MisCancelAction(ClearMission, 1193)

	MisNeed(MIS_NEED_DESP, "ХТ°ўАј±ИЛ№І№ёшХѕµДУИЛюАпДб(1059,661)БДБД")
	
	MisHelpTalk("<t>°ЭНРДгБЛ,ОЄБЛГАО¶µДµгРД.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№15-------- УИЛюАпДб
	DefineMission(5718, "ЙзЅ»ґуК№15", 1193, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДЗР©ДкЗбµДѕЫ»бСыЗлОТУ¦ёГКЗТтОЄГАО¶µДµгРД.")
	MisResultCondition(NoRecord, 1193)
	MisResultCondition(HasMission,1193)
	MisResultAction(ClearMission,1193)
	MisResultAction(SetRecord, 1193)


	----------------------------------------------------------ЙзЅ»ґуК№16----------УИЛюАпДб
	DefineMission( 5719, "ЙзЅ»ґуК№16", 1194 )
	MisBeginTalk("<t>їґјыОТШюЩНµДСьёЛБЛВр?ОТТСѕ­І»ЧцµгРДБЛ,·ПїуІ№ёшХѕµДґт°ьИЛЎ¤єхАХґпКЗОТµДС§НЅ,ДгИҐ°ЭНРЛы°Й.")
				
	MisBeginCondition(NoMission, 1194)
	MisBeginCondition(NoRecord,1194)
	MisBeginCondition(HasRecord, 1193)
	MisBeginAction(AddMission,1194)
	MisCancelAction(ClearMission, 1194)

	MisNeed(MIS_NEED_DESP, "ХТ·ПїуІ№ёшХѕµДґт°ьИЛЎ¤єхАХґп(1907,2798)БДБД")
	
	MisHelpTalk("<t>ТІёГКЗ¶НБ¶ЛыµДК±єтБЛ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№16-------- ґт°ьИЛЎ¤єхАХґп
	DefineMission(5720, "ЙзЅ»ґуК№16", 1194, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТµДИ·јМіРБЛОТАПК¦µДѕ«ХїјјТХ,·ЕРД°Й,°ьФЪОТЙнЙП.")
	MisResultCondition(NoRecord, 1194)
	MisResultCondition(HasMission,1194)
	MisResultAction(ClearMission,1194)
	MisResultAction(SetRecord, 1194)


	----------------------------------------------------------ЙзЅ»ґуК№17----------ґт°ьИЛЎ¤єхАХґп
	DefineMission( 5721, "ЙзЅ»ґуК№17", 1195 )
	MisBeginTalk("<t>І»№эОТРиТЄТ»ёцОВИбµДЦъКЦ°пГ¦.Из№ыГЧ¶ыГЧАтІ»Г¦µД»°,ЛыУ¦ёГКЗЧојСИЛСЎ.")
				
	MisBeginCondition(NoMission, 1195)
	MisBeginCondition(NoRecord,1195)
	MisBeginCondition(HasRecord, 1194)
	MisBeginAction(AddMission,1195)
	MisCancelAction(ClearMission, 1195)

	MisNeed(MIS_NEED_DESP, "ХТДПІїЙіД®µДГЧ¶ыГЧАт(1244,3186)БДБД")
	
	MisHelpTalk("<t>ГЧ¶ыГЧАтКЗТ»ёцєЬПёРДІўЗТєЬУРДНРДµДЕ®єў.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№17-------- ГЧ¶ыГЧАт
	DefineMission(5722, "ЙзЅ»ґуК№17", 1195, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєГ!»¶У­ДгЕуУС.ОТЅУКЬєхАХґпµДФЮСп,ТтОЄОТ¶Ф№¤ЧчєНЙъ»о¶јКЗХвСщИПХжµД.")
	MisResultCondition(NoRecord, 1195)
	MisResultCondition(HasMission,1195)
	MisResultAction(ClearMission,1195)
	MisResultAction(SetRecord, 1195)

	----------------------------------------------------------ЙзЅ»ґуК№18----------ГЧ¶ыГЧАт
	DefineMission( 5723, "ЙзЅ»ґуК№18", 1196 )
	MisBeginTalk("<t>ЅсМмКЗОТАґµЅХвЖ¬ГО»ГµДДПІїЙіД®Т»ЦЬДкµДјНДоИХ,ТЄФхГґЗмЧЈДШ?ОТПлЧоЦШТЄµДКЗТЄёРР»єЈёЫЦё»УЎ¤А­ГЧРЮ,КЗЛыЦёТэОТАґµЅХвАпµД.їЙКЗОТКµФЪЧЯІ»їЄ,ОТПЦФЪКЗЦ°ТµАПК¦µДЧЁЦ°ГШКйДШ.ДгДЬМеБВОТ°Й.")
				
	MisBeginCondition(NoMission, 1196)
	MisBeginCondition(NoRecord,1196)
	MisBeginCondition(HasRecord, 1195)
	MisBeginAction(AddMission,1196)
	MisCancelAction(ClearMission, 1196)

	MisNeed(MIS_NEED_DESP, "ХТЛјЛјЛчІ№ёшХѕµДєЈёЫЦё»УЎ¤А­ГЧРЮ(2297,3723)БДБД")
	
	MisHelpTalk("<t>ОТИИ°®ОТµД№¤ЧчєНЙъ»о,ёРР»ХвЖ¬ГААцµДНБµШ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№18-------- єЈёЫЦё»УЎ¤А­ГЧРЮ
	DefineMission(5724, "ЙзЅ»ґуК№18", 1196, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>К±јд№эµГєГїм°Ў.ЧЄСЫТСѕ­Т»ДкБЛ,ДЗёцРЎЕ®єўѕУИ»»№јЗµГОТ.єЗєЗ....")
	MisResultCondition(NoRecord, 1196)
	MisResultCondition(HasMission,1196)
	MisResultAction(ClearMission,1196)
	MisResultAction(SetRecord, 1196)

	----------------------------------------------------------ЙзЅ»ґуК№19----------єЈёЫЦё»УЎ¤А­ГЧРЮ
	DefineMission( 5725, "ЙзЅ»ґуК№19", 1197 )
	MisBeginTalk("<t>К±№в·ЙКЕ,ОТёХµЅХвАпµДК±єт»№КЗТ»ёцРЎ»пЧУ.єЬ»іДоґУЗ°µДАПЕуУС.І»ЦЄµАМмМГґ«ЛНК№ПЦФЪ№эµГФхГґСщБЛ.")
				
	MisBeginCondition(NoMission, 1197)
	MisBeginCondition(NoRecord,1197)
	MisBeginCondition(HasRecord, 1196)
	MisBeginAction(AddMission,1197)
	MisCancelAction(ClearMission, 1197)

	MisNeed(MIS_NEED_DESP, "ХТМмМГґ«ЛНК№(474,1054)БДБД")
	
	MisHelpTalk("<t>ЛыµДЦ°О»КЗТ»ёцєЬЦШТЄµДО»ЦГ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№19-------- МмМГґ«ЛНК№
	DefineMission(5726, "ЙзЅ»ґуК№19", 1197, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>І»ЦЄµАМмМГЙПµДК±№вКЗ·сТІИзґЛБчКЕОЮУ°.")
	MisResultCondition(NoRecord, 1197)
	MisResultCondition(HasMission,1197)
	MisResultAction(ClearMission,1197)
	MisResultAction(SetRecord, 1197)


		----------------------------------------------------------ЙзЅ»ґуК№20----------МмМГґ«ЛНК№
	DefineMission( 5727, "ЙзЅ»ґуК№20", 1198 )
	MisBeginTalk("<t>ОТПлЅсДкµДКҐµ®ЅЪТ»¶Ё»бєЬГА,ЙЈјЄ»№ґрУ¦ЛНёшОТТ»Р©»ЄАцµДСМ»ЁДШ,І»ЦЄµАЛы»№јЗІ»јЗµГБЛ.")
				
	MisBeginCondition(NoMission, 1198)
	MisBeginCondition(NoRecord,1198)
	MisBeginCondition(HasRecord, 1197)
	MisBeginAction(AddMission,1198)
	MisCancelAction(ClearMission, 1198)

	MisNeed(MIS_NEED_DESP, "ХТЅ»ТЧФ±Ў¤ЙЈјЄ(1003,1306)БДБД")
	
	MisHelpTalk("<t>Р»Р»ДгДкЗбИЛ.ИҐ°Й")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№20-------- Ѕ»ТЧФ±Ў¤ЙЈјЄ
	DefineMission(5728, "ЙзЅ»ґуК№20", 1198, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТФхГґ»бНьјЗДШ?ЛыЧЬКЗ°пЦъ±рИЛ,ОТІ»»бИГЛыК§НыµД.")
	MisResultCondition(NoRecord, 1198)
	MisResultCondition(HasMission,1198)
	MisResultAction(ClearMission,1198)
	MisResultAction(SetRecord, 1198)

		----------------------------------------------------------ЙзЅ»ґуК№21----------Ѕ»ТЧФ±Ў¤ЙЈјЄ
	DefineMission( 5729, "ЙзЅ»ґуК№21", 1199 )
	MisBeginTalk("<t>№§ПІДгНкіЙБЛВюі¤µДЙзЅ»ИООсЈ®ёР¶чКЗГїТ»ёцИИ°®Йъ»оµДИЛМШУРµДДЬБ¦,ТтОЄУµУРЛь,ИЛГЗ»бѕхµГРТёЈ.І»µўОуДгµДК±јдБЛ,µВїЛФЪµИДгБЛ.")
				
	MisBeginCondition(NoMission, 1199)
	MisBeginCondition(NoRecord,1199)
	MisBeginCondition(HasRecord, 1198)
	MisBeginAction(AddMission,1199)
	MisCancelAction(ClearMission, 1199)

	MisNeed(MIS_NEED_DESP, "ХТЙіб°іЗєЈµБЎ¤µВїЛ(794,3669)БДБД")
	
	MisHelpTalk("<t>µВїЛУРАсОпёшДг.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»УўРЫ21------- єЈµБЎ¤µВїЛ
	DefineMission(5730, "ЙзЅ»УўРЫ21", 1199, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгКЗОТјы№эµДЧоіцЙ«µДЙзЅ»ґуК№,ХвГ¶С«ХВДгКЬЦ®ОЮАў.")
	MisResultCondition(NoRecord, 1199)
	MisResultCondition(HasMission,1199)
	MisResultAction(ClearMission,1199)
	MisResultAction(SetRecord, 1199)
	MisResultAction(GiveItem, 1879, 1, 4)
	MisResultBagNeed(1)


-------------------------------------------------Особое поручение

	DefineMission (5731, "\204\229\247\242\224 \193\235\232\231\237\229\246\238\226 - \241\239\229\246\232\224\235\252\237\224\255 \238\239\229\240\224\246\232\255 ", 1200 )--Мечта Близнецов - специальная операция 
	
	MisBeginTalk( "<t>Вы прошли все самые сложные испытания, Вы прошли задания Овна, и тельца, теперь осталось за малым... принесите мне <b 1 Купюру достоинством миллион долларов>." )

	MisBeginCondition(NoMission,1200)
	MisBeginCondition(NoRecord,1200)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(HasRecord,1174)
	MisBeginCondition(HasRecord,1175)
	MisBeginCondition(HasRecord,1176)
	MisBeginCondition(HasRecord,1177)
	MisBeginCondition(HasRecord,1178)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(HasRecord,1168)
	MisBeginAction(AddMission,1200)
	MisBeginAction(AddTrigger, 12001, TE_GETITEM, 0854, 1 )---Купюра достоинством миллион долларов
	MisCancelAction(ClearMission, 1200)
	
	
	MisNeed(MIS_NEED_ITEM, 0854, 1, 1, 1 )
	MisHelpTalk( "<t>Принесите мне <b 1 Купюру достоинством миллион долларов>." )

	MisResultTalk( "<t>Примите мои поздравления." )

	MisResultCondition(HasMission, 1200)
	MisResultCondition(NoRecord,1200)
	MisResultCondition(HasItem, 0854, 1 )
	MisResultAction(TakeItem, 0854, 1 )
	MisResultAction(GiveItem, 1881, 1, 4)--Сундук Близнецов
	MisResultAction(ClearMission, 1200)
	MisResultAction(SetRecord,  1200 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 0854)	
	TriggerAction( 1, AddNextFlag, 1200, 1, 1 )
	RegCurTrigger( 12001 )	


	
-------------------------------------------------Близнецы
	
	DefineMission (5733, "Л«ЧУЦ®Л®КЦ№э№ШЅ±Аш", 1201)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅЛ«ЧУ№¬КШУЎєНѕЮР·№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1201)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(HasRecord,1163)
	MisBeginCondition(HasRecord,1164)
	MisBeginCondition(HasRecord,1165)
	MisBeginCondition(HasRecord,1166)
	MisBeginCondition(HasRecord,1167)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(NoRecord,1201)
	MisBeginAction(AddMission,1201)  
	MisBeginAction(AddTrigger, 12011, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 12012, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 12013, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 12014, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 12015, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 12016, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 12017, TE_GETITEM, 1880, 1 )	
	MisCancelAction(ClearMission, 1201)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>»№ФЪУМФҐКІГґ?їмАґ¶Т»»Ѕ±Аш°Й")
	MisResultTalk("<t>ПВТ»№¬КЗѕЮР·№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1201)
	MisResultCondition(NoRecord,1201)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1201)
	MisResultAction(SetRecord,  1201 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 30, 4)
	MisResultAction(AddMoney,500000,500000)
	MisResultAction(ShuangZiSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1201, 10, 1 )
	RegCurTrigger( 12011 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1201, 20, 1 )
	RegCurTrigger( 12012 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1201, 30, 1 )
	RegCurTrigger( 12013 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1201, 40, 1 )
	RegCurTrigger( 12014 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1201, 50, 1 )
	RegCurTrigger( 12015 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1201, 60, 1 )
	RegCurTrigger( 12016 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1201, 70, 1 )
	RegCurTrigger( 12017 )

----------------------------------------------близнецы
	
	DefineMission (5734, "Л«ЧУЦ®єЈµБ№э№ШЅ±Аш", 1202)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅЛ«ЧУ№¬КШУЎєНѕЮР·№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1202)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(HasRecord,1169)
	MisBeginCondition(HasRecord,1170)
	MisBeginCondition(HasRecord,1171)
	MisBeginCondition(HasRecord,1172)
	MisBeginCondition(HasRecord,1173)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(NoRecord,1202)
	MisBeginAction(AddMission,1202)
	MisBeginAction(AddTrigger, 11571, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 11572, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 11573, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 11574, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 11575, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 11576, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 11577, TE_GETITEM, 1880, 1 )		
	MisCancelAction(ClearMission, 1202)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>»№ФЪУМФҐКІГґ?їмАґ¶Т»»Ѕ±Аш°Й")
	MisResultTalk("<t>ПВТ»№¬КЗѕЮР·№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1202)
	MisResultCondition(NoRecord,1202)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1202)
	MisResultAction(SetRecord,  1202 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 60, 4)
	MisResultAction(AddMoney,700000,700000)
	MisResultAction(ShuangZiHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1157, 10, 1 )
	RegCurTrigger( 12021 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1202, 20, 1 )
	RegCurTrigger( 12022 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1202, 30, 1 )
	RegCurTrigger( 12023 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1202, 40, 1 )
	RegCurTrigger( 12024 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1202, 50, 1 )
	RegCurTrigger( 12025 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1202, 60, 1 )
	RegCurTrigger( 12026 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1202, 70, 1 )
	RegCurTrigger( 12027 )

	--------------------------------------------близнецы
	
	DefineMission (5735, "Л«ЧУЦ®ґ¬і¤№э№ШЅ±Аш", 1203)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅЛ«ЧУ№¬КШУЎєНѕЮР·№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1203)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(HasRecord,1174)
	MisBeginCondition(HasRecord,1175)
	MisBeginCondition(HasRecord,1176)
	MisBeginCondition(HasRecord,1177)
	MisBeginCondition(HasRecord,1178)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(NoRecord,1203)
	MisBeginAction(AddMission,1203)   
	MisBeginAction(AddTrigger, 11581, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 11582, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 11583, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 11584, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 11585, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 11586, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 11587, TE_GETITEM, 1880, 1 )	
	MisCancelAction(ClearMission, 1203)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>»№ФЪУМФҐКІГґ?їмАґ¶Т»»Ѕ±Аш°Й")
	MisResultTalk("<t>ПВТ»№¬КЗѕЮР·№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1203)
	MisResultCondition(NoRecord,1203)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1203)
	MisResultAction(SetRecord,  1203 )
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 1002, 90, 4)
	MisResultAction(AddMoney,900000,900000)
	MisResultAction(ShuangZiCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1203, 10, 1 )
	RegCurTrigger( 12031 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1203, 20, 1 )
	RegCurTrigger( 12032 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1203, 30, 1 )
	RegCurTrigger( 12033 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1203, 40, 1 )
	RegCurTrigger( 12034 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1203, 50, 1 )
	RegCurTrigger( 12035 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1203, 60, 1 )
	RegCurTrigger( 12036 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1203, 70, 1 )
	RegCurTrigger( 12037 )

	----------------------------------Ангел матча

	DefineMission( 5736, "\192\237\227\229\235 \236\224\242\247\224", 1205 )

	MisBeginTalk( "<t>Вы хотите послушить мою историю??? И возможно Вы захотите поучавствовать сами в этой лигенде... Принесите мне <b10 Сердец Наяды>." )

	MisBeginCondition(NoMission,1205)
	MisBeginCondition(NoRecord,1205)
	MisBeginAction(AddMission,1205)
	MisBeginAction(AddTrigger, 12051, TE_GETITEM, 4418, 10)--Сердце наяды
	MisCancelAction(ClearMission, 1205)
	

	MisNeed(MIS_NEED_DESP, " Принесите <b10 Сердец Наяды>." )
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10)

	MisHelpTalk( "<t>Принесите мне <b10 Сердец Наяды>." )
	MisResultTalk( "<t>Вам обязательно надо услышать эту историю." ) 
	
	MisResultCondition(HasMission, 1205)
	MisResultCondition(NoRecord,1205)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 1205)
	MisResultAction(SetRecord, 1205 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 1205, 10, 10 )
	RegCurTrigger( 12051 )

	-------------------------------Нарушение

	DefineMission( 5737, "\205\224\240\243\248\229\237\232\229", 1206 )
	
	MisBeginTalk( "<t>Любовь между людьми одна, а вот любовь между Богами совсем другая, можно любить Богов, можно быть их любимчиком, во всяком случае любовь - это очень сложно... Вам лучше обратиться к тому, кто знает об этом больше." )
	MisBeginCondition(HasRecord, 1205 )
	MisBeginCondition(NoRecord, 1206 )
	MisBeginCondition(NoMission, 1206 )
	MisBeginAction(AddMission, 1206 )
	MisCancelAction(ClearMission, 1206)
	
	MisNeed(MIS_NEED_DESP, " Отправляйтесь на остров Лета." )
	MisHelpTalk( "<t>Ищите того, кто знает о любви больше чем я." )
	MisResultCondition(AlwaysFailure )

	---------------------------------------нарушение

	DefineMission( 5738, "\205\224\240\243\248\229\237\232\229", 1206, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Любовь по истине очень сложное проявление чувств... Я как раз жду втречи со своей возлюбленной, мы всегда собираемся вместе со всей семьёй<n><t>Это самое лучшее время, когда ты находишься рядом с любимым человеком." )
	MisResultCondition(HasMission, 1206)
	MisBeginCondition(NoRecord, 1206)
	MisResultAction(ClearMission, 1206)
	MisResultAction(SetRecord, 1206)


	-------------------------------почтальён любви--Ковбой

	DefineMission( 5739, "\207\238\247\242\224\235\252\191\237 \235\254\225\226\232", 1207 )
	
	MisBeginTalk( "<t>Отнесите моей дорогой и моей любимой это письмо!" )
	MisBeginCondition(HasRecord, 1206 )
	MisBeginCondition(NoRecord, 1207 )
	MisBeginCondition(NoMission, 1207 )
	MisBeginAction(AddMission, 1207 )
	MisBeginAction(GiveItem, 2669, 1, 4)----------Письмо любимой
	MisCancelAction(ClearMission, 1207)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, " Отнесите письмо(1599,909)" )
	MisHelpTalk( "<t>Любовь не может подождать!" )
	MisResultCondition(AlwaysFailure )

	---------------------------------------Сундук Платья--Ткачиха

	DefineMission( 5740, "\207\238\247\242\224\235\252\191\237 \235\254\225\226\232", 1207, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы помогли моей семье, Вы передали письмо от моего любимого мужа, я счастлива, что он мне написал. Я хочу поделиться своим счастем и с Вами, вот возьмите этот наряд... Возможно он Вам пригодится..." )
	MisResultCondition(HasMission, 1207)
	MisBeginCondition(NoRecord, 1207)
	MisResultCondition(HasItem,2669,1)---------Письмо любимой
	MisResultAction(TakeItem, 2669,1)
	MisResultAction(GiveItem, 2915, 1, 4)----------Сундук Платья
	MisResultAction(ClearMission, 1207)
	MisResultAction(SetRecord, 1207)
	MisResultAction(ClearRecord, 1205 )
	MisResultAction(ClearRecord, 1206 )
	MisResultAction(ClearRecord, 1207 )
	MisResultBagNeed(1)

-------------------------------------------------------Дорогая плата за обучение

	DefineMission( 6127, "\196\238\240\238\227\224\255 \239\235\224\242\224 \231\224 \238\225\243\247\229\237\232\229", 1453 )
	MisBeginTalk( "<t>Школа... Дети ходят в школу, что бы получить знания... Вы хотите пойти учиться в школу? Но школьная программа теперь платная... Что бы начать обучение в школе Вам необходимо заплатить 200 милионов золотом. Что? У вас нет денег? Хорошо, забудьте о деньгах... Помогите мне и я замолвлю за Вас слово перед Деканом." )
	MisBeginCondition( NoMission, 1453)
	MisBeginCondition( NoRecord, 1453)
	MisBeginAction( AddMission, 1453)
	MisBeginAction(AddTrigger, 14531, TE_GETITEM, 3909, 99)--Гьоза
	MisCancelAction( ClearMission, 1453)

	MisNeed( MIS_NEED_DESP, "99 Гьозы в точку(2232,2782)Аргент." )--Основной Рейнольдс
	MisNeed( MIS_NEED_ITEM, 3909, 99, 10, 99)

	MisHelpTalk( "<t>Время не имеет значение... Учиться можно вечность..." )
	MisResultTalk( "<t>Ученье свет... Не ученье тьма... Вам Богами суждено выйти на свет!" )
	MisResultCondition( HasMission, 1453)
	MisResultCondition( NoRecord, 1453)
	MisResultCondition( HasItem, 3909, 99)
	MisResultAction( ClearMission, 1453)
	MisResultAction( TakeItem, 3909, 99)
	MisResultAction( SetRecord, 1453)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1453, 10, 99 )
	RegCurTrigger( 14531 )

-------------------------------------------------------Дорогая плата за обучение

	DefineMission( 6128, "\193\238\235\252\248\229 \228\240\243\231\229\233", 1454 )--Больше друзей
	MisBeginTalk( "<t>В Школах, помимо знаний, ученики, так же, приобретают хороших друзей, заведите дружбу с <bчетырьмя игроками> и приходите с ними ко мне." )
	MisBeginCondition( NoMission, 1454)
	MisBeginCondition( NoRecord, 1454)
	MisBeginCondition( HasRecord, 1453)
	MisBeginAction( AddMission, 1454)
	MisCancelAction( ClearMission, 1454)

	MisNeed( MIS_NEED_DESP, " Приведите 4 друга к Главе Рейнольдс " )
	
	MisHelpTalk( "<t>Заводите друзей мой друг!" )
	MisResultTalk( "<t>Вы общительны и по этому у Вас так хорошо получается завести друзей." )
	MisResultCondition( HasMission, 1454)
	MisResultCondition( NoRecord, 1454)
	MisResultCondition( CheckTeam1, 5)
	MisResultAction( ClearMission, 1454)
	MisResultAction( SetRecord, 1454)

-------------------------------------------------------Дорогая плата за обучение

	DefineMission( 6129, "\211\239\240\224\230\237\229\237\232\255", 1455 )--Упражнения 
	MisBeginTalk( "<t>Учащийся должен обладать крепким здоровьем. Убейте <r10 Волшебных кустов>." )
	MisBeginCondition( NoMission, 1455)
	MisBeginCondition( NoRecord, 1455)
	MisBeginCondition( HasRecord, 1454)
	MisBeginAction( AddMission, 1455)
	MisBeginAction(AddTrigger, 14551, TE_KILL, 75, 10 )--Волшебный куст
	MisCancelAction( ClearMission, 1455)

	MisNeed( MIS_NEED_DESP, " Убейте <r10Волшебных кукстов> и возвращайтесь к Главе Рейнольдс." )
	MisNeed( MIS_NEED_KILL, 75, 10, 10, 10)

	MisHelpTalk( "<t>Пройдите испытание на силу." )
	MisResultTalk( "<t>Ваше тело готово к боям с более серьёзными противниками." )
	MisResultCondition( HasMission, 1455)
	MisResultCondition( NoRecord, 1455)
	MisResultCondition( HasFlag, 1455, 19)
	MisResultAction( ClearMission, 1455)
	MisResultAction( SetRecord, 1455)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 75 )	
	TriggerAction( 1, AddNextFlag, 1455, 10, 10 )
	RegCurTrigger(14551)

-------------------------------------------------------Дорогая плата за обучение

	DefineMission( 6130, "\221\234\231\224\236\229\237", 1456 )--Экзамен
	MisBeginTalk( "<t>Вы очень хорошо приобретаете знания по школьной программе. Давайте проведём экзамен... Экзамен будет экономический. Принесите мне <bКупюру достоинством миллион долларов>." )
	MisBeginCondition( NoMission, 1456)
	MisBeginCondition( NoRecord, 1456)
	MisBeginCondition( HasRecord, 1455)
	MisBeginAction( AddMission, 1456)
	MisBeginAction(AddTrigger, 14561, TE_GETITEM, 854, 1)--Купюра достоинством миллион долларов
	MisCancelAction( ClearMission, 1456)

	MisNeed( MIS_NEED_DESP, " Отнесите <bКупюру достоинством миллион долларов> в(2185,2787)Аргент." )
	MisNeed( MIS_NEED_ITEM, 854, 1, 10, 1)

	MisHelpTalk( "<t>Вы не сможите счетаться выпускником, не пройдя Экономического Экзамена." )
	MisResultTalk( "<t>Примите  этот Экзаменационный Аттестат вместе с моими поздравлениями." )
	MisResultCondition( HasMission, 1456)
	MisResultCondition( NoRecord, 1456)
	MisResultCondition( HasItem, 854, 1)
	MisResultAction( ClearMission, 1456)
	MisResultAction( TakeItem, 854, 1)
	MisResultAction( GiveItem, 579, 1, 4)--Экзаменационный Аттестат
	MisResultAction( SetRecord, 1456)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 854)	
	TriggerAction( 1, AddNextFlag, 1456, 10, 1 )
	RegCurTrigger( 14561 )

-------------------------------------------------------Школьный доклад

	DefineMission( 6131, "\216\234\238\235\252\237\251\233 \228\238\234\235\224\228", 1457 )
	MisBeginTalk( "<t>Вы быстро обучились мой друг, теперь отправляйтесь в Шайтан для дольнейших обучений... И помните - Ученье - свет, не ученье - тьма..." )
	MisBeginCondition( NoMission, 1457)
	MisBeginCondition( NoRecord, 1457)
	MisBeginCondition( HasRecord, 1456)
	MisBeginAction( AddMission, 1457)
	MisCancelAction( ClearMission, 1457)

	MisNeed( MIS_NEED_DESP, " Отнесите Аттестат к Учителю Анг Лине в Шайтан." )
	MisHelpTalk( "<t>Вы уже всему у меня научились." )
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------Школьный доклад

	DefineMission( 6132, "\216\234\238\235\252\237\251\233 \228\238\234\235\224\228", 1457, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Некоторые концелярские предметы можно использовать в виде оружия." )
	MisResultCondition( HasMission, 1457)
	MisResultCondition( NoRecord, 1457)
	MisResultCondition( HasItem, 579, 1)
	MisResultAction( ClearMission, 1457)
	MisResultAction( SetRecord, 1457)
	
-------------------------------------------------------Прием

	DefineMission( 6133, "\207\240\232\229\236", 1458 )--Прием
	MisBeginTalk( "<t>Так как моя школа - это пристижное место, мне не достаточно Вашего Аттестата, я должна сама убедиться в Ваших знаниях, и по этому я устрою для Вас вступительный экзамен, Вы должны будите ответить на мои вопросы, но этот экзамен будет в виде теста и поэтому у Вас не больше 30 секунд на раздумия на каждый вопрос." )
	MisBeginCondition( NoMission, 1458)
	MisBeginCondition( NoRecord, 1458)
	MisBeginCondition( HasRecord, 1457)
	MisBeginAction( AddMission, 1458)
	MisCancelAction( ClearMission, 1458)

	MisNeed( MIS_NEED_DESP, " Ответьте на вопросы, не думайте долго, на каждый вопрос затрачивайте не больше 30 секунд." )

	MisHelpTalk( "<t>Не теряйте времени, или мы закончим вступительный экзамен пря сейчас." )
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------Прием--Учитель Анг Лина--

	DefineMission( 6134, "\207\240\232\229\236", 1458, COMPLETE_SHOW )--Прием
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Примите мои поздравления. Вы действительно хороший ученик." )
	MisResultCondition( HasMission, 1458)
	MisResultCondition( NoRecord, 1463)
	MisResultCondition( HasRecord, 1458)
	MisResultCondition( CheckRightNum )
	MisResultAction( SetRecord, 1463)
	MisResultAction( SetRecord, 1458)
	MisResultAction( TakeItem, 579, 1)
	MisResultAction( GiveItem, 47, 1, 4)--Сундук модника
	MisResultAction( ClearMission, 1458)
	MisResultBagNeed(1)

-------------------------------------------------------Прием--Учитель Анг Лина--

	DefineMission( 6135, "\207\240\232\229\236", 1458, COMPLETE_SHOW )
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>У меня есть для Вас ещё одно задание." )
	MisResultCondition( HasMission, 1458)
	MisResultCondition( NoRecord, 1463)
	MisResultCondition( HasRecord, 1458)
	MisResultCondition( CheckErroNum )
	MisResultAction( SetRecord, 1463)
	MisResultAction( SetRecord, 1458)
	MisResultAction( SetRecord, 1460)
	MisResultAction( TakeItem, 579, 1)
	MisResultAction( ClearMission, 1458)

-------------------------------------------------------Верные друзья или предатели

	DefineMission( 6136, "\194\229\240\237\251\229 \228\240\243\231\252\255 \232\235\232 \239\240\229\228\224\242\229\235\232", 1464 )
	MisBeginTalk( "<t>У меня есть задание для Вас. Отнесите моё письмо в Ледяной Шип к Кулатиосу, для начала принесите мне 10 Пропусков к снежной горе." )
	MisBeginCondition( NoMission, 1464)
	MisBeginCondition( NoRecord, 1464)
	MisBeginCondition( HasRecord, 1460)
	MisBeginAction( AddMission, 1464)
	MisBeginAction(AddTrigger, 14641, TE_GETITEM, 3050, 10)--Пропуск к Священной Снежной горе
	MisBeginAction( GiveItem, 500, 1, 4)--Письмо
	MisCancelAction( ClearMission, 1464)
	MisBeginBagNeed(1)

	MisNeed( MIS_NEED_DESP, " Раздобыть 10 Пропусков к Священной Снежной горе и отнести в Шип письмо от Учителя Анг Лины." )
	MisHelpTalk( "<t>Ищите Кулатиоса в ледяном Шипе " )
	
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------Верные друзья или предатели

	DefineMission( 6137, "\194\229\240\237\251\229 \228\240\243\231\252\255 \232\235\232 \239\240\229\228\224\242\229\235\232", 1464, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Вы смогли меня найти не смотря на расстояние и не смотря на то, что у меня есть клоны. Я думаю из Вас получится отличный ученик." )
	MisResultCondition( HasMission, 1464)
	MisResultCondition( NoRecord, 1464)
	MisResultCondition( HasRecord, 1465)
	MisResultCondition( HasItem, 500, 1)
	MisResultCondition( HasItem, 3050, 10)
	MisResultAction( SetRecord, 1464)
	MisResultAction( TakeItem, 500, 1)----письмо
	MisResultAction( TakeItem, 3050, 10)--пропуск к Св.Сн.горе
	MisResultAction( ClearMission, 1464)
	MisResultAction( GiveItem, 6948, 1, 4)--Сундук школьного инструмента
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3050)	
	TriggerAction( 1, AddNextFlag, 1464, 10, 10 )
	RegCurTrigger( 14641 )

	-----------------------------------------Морские помошники Лорана-- Маринерс--продолжить

	DefineMission( 5800, "\205\229\230\237\238\241\242\252 \208\224\234\224", 1470 )--Нежность Рака
	
	MisBeginTalk( "<t>ѕЮР·ЧщµДИЛ,ОВЗй№ЛјТ,ФЪКВТµ·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр?" )

	MisBeginCondition(NoMission,1470)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1470)
	MisBeginAction(AddMission,1470)
	MisCancelAction(ClearMission, 1470)
	
	MisNeed(MIS_NEED_DESP, "»сµГ80µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>іЙОЄУўРЫµДµАВ·ЙП±Ш¶Ё»бУРЦЦЦЦЧи°­,ХЅ¶·µДУВЖшЖ¬їМ¶јІ»ДЬ¶ЄК§Е¶.Н¶ИлИ«Б¦ИҐХЅ¶·°Й!")

	MisResultCondition(HasMission, 1470)
	MisResultCondition(NoRecord,1470)
	MisResultCondition(HasFightingPoint,80 )
	MisResultAction(TakeFightingPoint, 80 )
	MisResultAction(ClearMission, 1470)
	MisResultAction(SetRecord,  1470 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------ГыЙщУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	--------Л®КЦ
	DefineMission (5801, "ОВЗйѕЮР·Ц®ГыЙщУўРЫ", 1471)
	
	MisBeginTalk("<t>УРДї±кІЕУРЧ·Зу,УРЧ·ЗуІЕУРіЙѕН.ЛщТФОВЗйѕЮР·№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©. ")

	MisBeginCondition(NoMission,1471)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1471)
	MisBeginAction(AddMission,1471)
	MisCancelAction(ClearMission, 1471)
	
	MisNeed(MIS_NEED_DESP, "»сµГ3000µгГыЙщµгКэ")
	MisHelpTalk("<t>їґАґДгµГµЅµДГыЙщ»№І»№»Е¶,ОТПл3000µгГыЙщ¶ФДгАґЛµУ¦ёГІ»КЗОКМв°Й? ")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1471)
	MisResultCondition(NoRecord,1471)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit, 3000 )
	MisResultAction(ClearMission, 1471)
	MisResultAction(SetRecord,  1471 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------µИј¶УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	---------Л®КЦ
	DefineMission (5802, "ОВЗйѕЮР·Ц®µИј¶УўРЫ", 1472)
	
	MisBeginTalk("<t>іЙі¤µДµАВ·КЗВюі¤єНјиРБµД,µ«КЗё¶іцТ»¶Ё»бУР»Ш±ЁЕ¶,ИГОТїґїґДгКХ»сБЛКІГґ°Й...")

	MisBeginCondition(NoMission,1472)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1472)
	MisBeginAction(AddMission,1472)
	MisCancelAction(ClearMission, 1472)
	
	MisNeed(MIS_NEED_DESP, "µИј¶ґпµЅ65ј¶")
	MisHelpTalk("<t>µ±И»,65ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>їґАґДгТСѕ­ѕ­АъБЛіЙі¤µДДҐБ·,КХ»сІ»ЙЩЕ¶,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1472)
	MisResultCondition(NoRecord,1472)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1472)
	MisResultAction(SetRecord,  1472 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------ИЩУюУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------Л®КЦ
	DefineMission (5803, "ОВЗйѕЮР·Ц®ИЩУюУўРЫ", 1473)
	
	MisBeginTalk("<t>ЗЧ°®µДЕуУС,УРТ»µгДг±ШРлТЄЦЄµА,єЈµБКАЅзЧоЦШТЄµДѕНКЗИЩУю!ЧжПИОЄґЛё¶іцТ»ЗРУ®µГЧрѕґ,ДгТ»¶ЁТЄјМіРПВИҐ.")

	MisBeginCondition(NoMission,1473)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1473)
	MisBeginAction(AddMission,1473)
	MisCancelAction(ClearMission, 1473)
	
	MisNeed(MIS_NEED_DESP, "»сµГ600µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1473)
	MisResultCondition(NoRecord,1473)
	MisResultCondition(HasHonorPoint,600 )
	MisResultAction(TakeHonorPoint, 600 )
	MisResultAction(ClearMission, 1473)
	MisResultAction(SetRecord,  1473 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	

	-------------------------------------------------ІЙјЇґуК№----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------Л®КЦ	
	DefineMission (5804, "ОВЗйѕЮР·Ц®ІЙјЇґуК№", 1474)
	
	MisBeginTalk("<t>іЙ№¦КЗРиТЄЖЅК±µД»эАЫµДЕ¶!¶ґІмБ¦ТІКЗ№Шјь.ПЦФЪОТРиТЄДгИҐКХјЇТ»Р©¶«Оч... ")

	MisBeginCondition(NoMission,1474)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1474)
	MisBeginAction(AddMission,1474)
	MisBeginAction(AddTrigger, 14741, TE_GETITEM, 1693, 10 )-------------------Р«јЧ10ёц
	MisBeginAction(AddTrigger, 14742, TE_GETITEM, 2677, 10 )-------------------БґµЇLV1 10          
	MisBeginAction(AddTrigger, 14743, TE_GETITEM, 3909, 1 )-----------------КіЙсЛ®ЅИ1               
	MisBeginAction(AddTrigger, 14744, TE_GETITEM, 2589, 5 )----------------ѕ«БйНх»ФУЎ5               
	MisBeginAction(AddTrigger, 14745, TE_GETITEM, 3094, 5)------------------Е¬Б¦Фц·щЖч5            
	MisBeginAction(AddTrigger, 14746, TE_GETITEM, 3827, 1 )-----------------ЗйЦ®йд1             
	MisCancelAction(ClearMission, 1474)
	

	MisNeed(MIS_NEED_ITEM, 1693, 10,  1, 10 )
	MisNeed(MIS_NEED_ITEM, 2677, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3909, 1,  21, 1 )
	MisNeed(MIS_NEED_ITEM, 2589, 5,  22, 5 )
	MisNeed(MIS_NEED_ITEM, 3094, 5,  27, 5 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  32, 1 )
	

	MisHelpTalk("<t>РиТЄµД¶«ОчІ»КЗєЬ¶а,µ«КЗТІІ»КЗДЗГґИЭТЧЕ¶.")
	MisResultTalk("<t>ОпµЅУГК±·ЅєЮЙЩ°Й,»эАЫµД№эіМЛдИ»±ИЅПВй·і,µ«КЗИз№ыТЄЧцёцґуИЛОп,ПёРД»эАЫєН№ЫІм¶јКЗІ»їЙИ±ЙЩµДЕ¶,µ±И»,»№УРі¬ЗїµДДНРДєНТгБ¦!")

	MisResultCondition(HasMission, 1474)
	MisResultCondition(NoRecord,1474)
	MisResultCondition(HasItem, 1693, 10 )
	MisResultCondition(HasItem, 2677, 10 )
	MisResultCondition(HasItem, 3909, 1 )
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 3094, 5 )
	MisResultCondition(HasItem, 3827, 1 )


	MisResultAction(TakeItem, 1693, 10 )
	MisResultAction(TakeItem, 2677, 10 )
	MisResultAction(TakeItem, 3909, 1 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 3094, 5 )
	MisResultAction(TakeItem, 3827, 1 )

	MisResultAction(ClearMission, 1474)
	MisResultAction(SetRecord,  1474 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1474, 1, 10 )
	RegCurTrigger( 14741 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1474, 11, 10 )
	RegCurTrigger( 14742 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1474, 21, 1 )
	RegCurTrigger( 14743 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1474, 22, 5 )
	RegCurTrigger( 14744 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1474, 27, 5 )
	RegCurTrigger( 14745 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1474,32, 1 )
	RegCurTrigger( 14746 )

	----------------------------------------------------------ѕЮР·Д©ИХ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ
	DefineMission( 5805, "ОВЗйѕЮР·Ц®ѕЮР·Д©ИХ", 1475 )
	MisBeginTalk("<t>BOSSС«ХВКЗЧоѕЯУўРЫЦчТеТвО¶µДЅ±ХВ,ДгТЄµД»°ѕНИҐЙ±µфїЙЕВµДѕЮР·№¬КШ»¤Йс.")
				
	MisBeginCondition(NoMission, 1475)
	MisBeginCondition(HasRecord,1469)
	MisBeginCondition(NoRecord,1475)
	MisBeginAction(AddMission,1475)
	MisBeginAction(AddTrigger, 14751, TE_KILL, 1040, 1)---ѕЮР·КШ»¤ХЯ
	
	MisCancelAction(ClearMission, 1475)

	MisNeed(MIS_NEED_DESP, "І¶Й±ѕЮР·№¬КШ»¤Йс,Д§Е®Ц®єЈ(1637,3751)!")
	MisNeed(MIS_NEED_KILL, 1040,1, 10, 1)
	

	MisResultTalk("<t>µ±ИЛєНу¦Р·ЅбєПЅ«КЗїЙЕВµДФмОп.ЛыµДТ°РДУМИзНв±нТ»СщіуВЄ!")
	MisHelpTalk("<t>ДЗ№ЦОпУµУРЗїУРБ¦µДґуЗЇєН¶сРДµДНЩД­Е¶,ДгТЄРЎРД.")
	MisResultCondition(HasMission,  1475)
	MisResultCondition(HasFlag, 1475, 10)
	MisResultCondition(NoRecord , 1475)
	MisResultAction(GiveItem, 2574, 1, 4 )
	MisResultAction(ClearMission,  1475)
	MisResultAction(SetRecord,  1475 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1040)	
	TriggerAction( 1, AddNextFlag, 1475, 10, 1 )
	RegCurTrigger( 14751 )


	-----------------------------------------ВТ¶·УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ--------єЈµБ
	DefineMission (5806, "ОВЗйѕЮР·Ц®ВТ¶·УўРЫ", 1476)
	
	MisBeginTalk("<t>ѕЮР·ЧщµДИЛ,ОВЗй№ЛјТ,ФЪКВТµ·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр?")

	MisBeginCondition(NoMission,1476)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1476)
	MisBeginAction(AddMission,1476)
	MisCancelAction(ClearMission, 1476)
	
	MisNeed(MIS_NEED_DESP, "»сµГ150µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>іЙОЄУўРЫµДµАВ·ЙП±Ш¶Ё»бУРЦЦЦЦЧи°­,ХЅ¶·µДУВЖшЖ¬їМ¶јІ»ДЬ¶ЄК§Е¶.Н¶ИлИ«Б¦ИҐХЅ¶·°Й!")

	MisResultCondition(HasMission, 1476)
	MisResultCondition(NoRecord,1476)
	MisResultCondition(HasFightingPoint,150 )
	MisResultAction(TakeFightingPoint, 150 )
	MisResultAction(ClearMission, 1476)
	MisResultAction(SetRecord,  1476 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------ГыЙщУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	--------єЈµБ
	DefineMission (5807, "ОВЗйѕЮР·Ц®ГыЙщУўРЫ", 1477)
	
	MisBeginTalk("<t>УРДї±кІЕУРЧ·Зу,УРЧ·ЗуІЕУРіЙѕН.ЛщТФОВЗйѕЮР·№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©. ")

	MisBeginCondition(NoMission,1477)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1477)
	MisBeginAction(AddMission,1477)
	MisCancelAction(ClearMission, 1477)
	
	MisNeed(MIS_NEED_DESP, "»сµГ6000µгГыЙщµгКэ")
	MisHelpTalk("<t>їґАґДгµГµЅµДГыЙщ»№І»№»Е¶,ОТПл6000µгГыЙщ¶ФДгАґЛµУ¦ёГІ»КЗОКМв°Й? ")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1477)
	MisResultCondition(NoRecord,1477)
	MisResultCondition(HasCredit,6000 )
	MisResultAction(TakeCredit, 6000 )
	MisResultAction(ClearMission, 1477)
	MisResultAction(SetRecord,  1477 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	---------єЈµБ
	DefineMission (5808, "ОВЗйѕЮР·Ц®µИј¶УўРЫ", 1600)
	
	MisBeginTalk("<t>іЙі¤µДµАВ·КЗВюі¤єНјиРБµД,µ«КЗё¶іцТ»¶Ё»бУР»Ш±ЁЕ¶,ИГОТїґїґДгКХ»сБЛКІГґ°Й...")

	MisBeginCondition(NoMission,1600)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1600)
	MisBeginAction(AddMission,1600)
	MisCancelAction(ClearMission, 1600)
	
	MisNeed(MIS_NEED_DESP, "µИј¶ґпµЅ70ј¶")
	MisHelpTalk("<t>µ±И»,70ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>їґАґДгТСѕ­ѕ­АъБЛіЙі¤µДДҐБ·,КХ»сІ»ЙЩЕ¶,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1600)
	MisResultCondition(NoRecord,1600)
	MisResultCondition(LvCheck, ">", 69 )
	MisResultAction(ClearMission, 1600)
	MisResultAction(SetRecord,  1600 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ИЩУюУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------єЈµБ
	DefineMission (5809, "ОВЗйѕЮР·Ц®ИЩУюУўРЫ", 1479)
	
	MisBeginTalk("<t>ЗЧ°®µДЕуУС,УРТ»µгДг±ШРлТЄЦЄµА,єЈµБКАЅзЧоЦШТЄµДѕНКЗИЩУю!ЧжПИОЄґЛё¶іцТ»ЗРУ®µГЧрѕґ,ДгТ»¶ЁТЄјМіРПВИҐ.")

	MisBeginCondition(NoMission,1479)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1479)
	MisBeginAction(AddMission,1479)
	MisCancelAction(ClearMission, 1479)
	
	MisNeed(MIS_NEED_DESP, "»сµГ900µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1479)
	MisResultCondition(NoRecord,1479)
	MisResultCondition(HasHonorPoint,900 )
	MisResultAction(TakeHonorPoint, 900 )
	MisResultAction(ClearMission, 1479)
	MisResultAction(SetRecord,  1479 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	

	-------------------------------------------------ІЙјЇґуК№----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------єЈµБ	
	DefineMission (5810, "ОВЗйѕЮР·Ц®ІЙјЇґуК№", 1480)
	
	MisBeginTalk("<t>іЙ№¦КЗРиТЄЖЅК±µД»эАЫµДЕ¶!¶ґІмБ¦ТІКЗ№Шјь.ПЦФЪОТРиТЄДгИҐКХјЇТ»Р©¶«Оч... ")

	MisBeginCondition(NoMission,1480)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1480)
	MisBeginAction(AddMission,1480)
	MisBeginAction(AddTrigger, 14801, TE_GETITEM, 1693, 20 )-------------------Р«јЧ20ёц
	MisBeginAction(AddTrigger, 14802, TE_GETITEM, 2677, 20 )-------------------БґµЇLV1 20ёц          
	MisBeginAction(AddTrigger, 14803, TE_GETITEM, 3909, 5 )-----------------КіЙсЛ®ЅИ5ёц               
	MisBeginAction(AddTrigger, 14804, TE_GETITEM, 2589, 5 )----------------ѕ«БйНх»ФУЎ5               
	MisBeginAction(AddTrigger, 14805, TE_GETITEM, 3094, 10)------------------Е¬Б¦Фц·щЖч10ёц         
	MisBeginAction(AddTrigger, 14806, TE_GETITEM, 3827, 1 )-----------------ЗйЦ®йд1     
	MisBeginAction(AddTrigger, 14807, TE_GETITEM, 0271, 1 )-----------------МмК№ч»ЧУ1ёц         
	MisCancelAction(ClearMission, 1480)
	

	MisNeed(MIS_NEED_ITEM, 1693, 20,  1, 20 )
	MisNeed(MIS_NEED_ITEM, 2677, 20, 21, 20 )
	MisNeed(MIS_NEED_ITEM, 3909, 5,  41, 5 )
	MisNeed(MIS_NEED_ITEM, 2589, 5,  46, 5 )
	MisNeed(MIS_NEED_ITEM, 3094, 10, 51, 10 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  61, 1 )
	MisNeed(MIS_NEED_ITEM, 0271, 1,  62, 1 )

	MisHelpTalk("<t>РиТЄµД¶«ОчІ»КЗєЬ¶а,µ«КЗТІІ»КЗДЗГґИЭТЧЕ¶.")
	MisResultTalk("<t>ОпµЅУГК±·ЅєЮЙЩ°Й,»эАЫµД№эіМЛдИ»±ИЅПВй·і,µ«КЗИз№ыТЄЧцёцґуИЛОп,ПёРД»эАЫєН№ЫІм¶јКЗІ»їЙИ±ЙЩµДЕ¶,µ±И»,»№УРі¬ЗїµДДНРДєНТгБ¦!")

	MisResultCondition(HasMission, 1480)
	MisResultCondition(NoRecord,1480)
	MisResultCondition(HasItem, 1693, 20 )
	MisResultCondition(HasItem, 2677, 20 )
	MisResultCondition(HasItem, 3909, 5 )
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 3094, 10 )
	MisResultCondition(HasItem, 3827, 1 )
	MisResultCondition(HasItem, 0271, 1 )

	MisResultAction(TakeItem, 1693, 20 )
	MisResultAction(TakeItem, 2677, 20 )
	MisResultAction(TakeItem, 3909, 5 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 3094, 10 )
	MisResultAction(TakeItem, 3827, 1 )
	MisResultAction(TakeItem, 0271, 1 )

	MisResultAction(ClearMission, 1480)
	MisResultAction(SetRecord,  1480 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1480, 1, 20 )
	RegCurTrigger( 14801 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1480, 21, 20 )
	RegCurTrigger( 14802 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1480, 41, 5 )
	RegCurTrigger( 14803 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1480, 46, 5 )
	RegCurTrigger( 14804 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1480, 51, 10 )
	RegCurTrigger( 14805 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1480,61, 1 )
	RegCurTrigger( 14806 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0271)	
	TriggerAction( 1, AddNextFlag, 1480,62, 1 )
	RegCurTrigger( 14807 )


	-----------------------------------------ВТ¶·УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ--------ґ¬і¤
	DefineMission (5811, "ОВЗйѕЮР·Ц®ВТ¶·УўРЫ", 1481)
	
	MisBeginTalk("<t>ѕЮР·ЧщµДИЛ,ОВЗй№ЛјТ,ФЪКВТµ·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр?")

	MisBeginCondition(NoMission,1481)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1481)
	MisBeginAction(AddMission,1481)
	MisCancelAction(ClearMission, 1481)
	
	MisNeed(MIS_NEED_DESP, "»сµГ200µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>іЙОЄУўРЫµДµАВ·ЙП±Ш¶Ё»бУРЦЦЦЦЧи°­,ХЅ¶·µДУВЖшЖ¬їМ¶јІ»ДЬ¶ЄК§Е¶.Н¶ИлИ«Б¦ИҐХЅ¶·°Й!")

	MisResultCondition(HasMission, 1481)
	MisResultCondition(NoRecord,1481)
	MisResultCondition(HasFightingPoint,200 )
	MisResultAction(TakeFightingPoint, 200 )
	MisResultAction(ClearMission, 1481)
	MisResultAction(SetRecord,  1481 )
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	--------ґ¬і¤
	DefineMission (5812, "ОВЗйѕЮР·Ц®ГыЙщУўРЫ", 1482)
	
	MisBeginTalk("<t>УРДї±кІЕУРЧ·Зу,УРЧ·ЗуІЕУРіЙѕН.ЛщТФОВЗйѕЮР·№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©. ")

	MisBeginCondition(NoMission,1482)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1482)
	MisBeginAction(AddMission,1482)
	MisCancelAction(ClearMission, 1482)
	
	MisNeed(MIS_NEED_DESP, "»сµГ10000µгГыЙщµгКэ")
	MisHelpTalk("<t>їґАґДгµГµЅµДГыЙщ»№І»№»Е¶,ОТПл10000µгГыЙщ¶ФДгАґЛµУ¦ёГІ»КЗОКМв°Й? ")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1482)
	MisResultCondition(NoRecord,1482)
	MisResultCondition(HasCredit,10000 )
	MisResultAction(TakeCredit, 10000 )
	MisResultAction(ClearMission, 1482)
	MisResultAction(SetRecord,  1482 )
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	---------ґ¬і¤
	DefineMission (5813, "ОВЗйѕЮР·Ц®µИј¶УўРЫ", 1483)
	
	MisBeginTalk("<t>іЙі¤µДµАВ·КЗВюі¤єНјиРБµД,µ«КЗё¶іцТ»¶Ё»бУР»Ш±ЁЕ¶,ИГОТїґїґДгКХ»сБЛКІГґ°Й...")

	MisBeginCondition(NoMission,1483)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1483)
	MisBeginAction(AddMission,1483)
	MisCancelAction(ClearMission, 1483)
	
	MisNeed(MIS_NEED_DESP, "µИј¶ґпµЅ75ј¶")
	MisHelpTalk("<t>µ±И»,75ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>їґАґДгТСѕ­ѕ­АъБЛіЙі¤µДДҐБ·,КХ»сІ»ЙЩЕ¶,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1483)
	MisResultCondition(NoRecord,1483)
	MisResultCondition(LvCheck, ">", 74 )
	MisResultAction(ClearMission, 1483)
	MisResultAction(SetRecord,  1483 )
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ИЩУюУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------ґ¬і¤
	DefineMission (5814, "ОВЗйѕЮР·Ц®ИЩУюУўРЫ", 1484)
	
	MisBeginTalk("<t>ЗЧ°®µДЕуУС,УРТ»µгДг±ШРлТЄЦЄµА,єЈµБКАЅзЧоЦШТЄµДѕНКЗИЩУю!ЧжПИОЄґЛё¶іцТ»ЗРУ®µГЧрѕґ,ДгТ»¶ЁТЄјМіРПВИҐ.")

	MisBeginCondition(NoMission,1484)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1484)
	MisBeginAction(AddMission,1484)
	MisCancelAction(ClearMission, 1484)
	
	MisNeed(MIS_NEED_DESP, "»сµГ1200µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1484)
	MisResultCondition(NoRecord,1484)
	MisResultCondition(HasHonorPoint,1200 )
	MisResultAction(TakeHonorPoint, 1200 )
	MisResultAction(ClearMission, 1484)
	MisResultAction(SetRecord,  1484 )
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	


	-------------------------------------------------ІЙјЇґуК№----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------ґ¬і¤	
	DefineMission (5815, "ОВЗйѕЮР·Ц®ІЙјЇґуК№", 1485)
	
	MisBeginTalk("<t>іЙ№¦КЗРиТЄЖЅК±µД»эАЫµДЕ¶!¶ґІмБ¦ТІКЗ№Шјь.ПЦФЪОТРиТЄДгИҐКХјЇТ»Р©¶«Оч... ")

	MisBeginCondition(NoMission,1485)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1485)
	MisBeginAction(AddMission,1485)
	MisBeginAction(AddTrigger, 14851, TE_GETITEM, 1693, 30 )-------------------Р«јЧ30ёц
	MisBeginAction(AddTrigger, 14852, TE_GETITEM, 2677, 30 )-------------------БґµЇLV1 30ёц          
	MisBeginAction(AddTrigger, 14853, TE_GETITEM, 3909, 10 )-----------------КіЙсЛ®ЅИ10ёц               
	MisBeginAction(AddTrigger, 14854, TE_GETITEM, 2589, 10 )----------------ѕ«БйНх»ФУЎ10               
	MisBeginAction(AddTrigger, 14855, TE_GETITEM, 3094, 20)------------------Е¬Б¦Фц·щЖч20ёц         
	MisBeginAction(AddTrigger, 14856, TE_GETITEM, 3827, 1 )-----------------ЗйЦ®йд1     
	MisBeginAction(AddTrigger, 14857, TE_GETITEM, 0271, 2 )-----------------МмК№ч»ЧУ2ёц         
	MisCancelAction(ClearMission, 1485)
	

	MisNeed(MIS_NEED_ITEM, 1693, 30,  1, 30 )
	MisNeed(MIS_NEED_ITEM, 2677, 30, 31, 30 )
	MisNeed(MIS_NEED_ITEM, 3909, 10, 61, 10 )
	MisNeed(MIS_NEED_ITEM, 2589, 10, 71, 10 )
	MisNeed(MIS_NEED_ITEM, 3094, 20, 81, 20 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  101, 1 )
	MisNeed(MIS_NEED_ITEM, 0271, 2,  102, 2 )

	MisHelpTalk("<t>РиТЄµД¶«ОчІ»КЗєЬ¶а,µ«КЗТІІ»КЗДЗГґИЭТЧЕ¶.")
	MisResultTalk("<t>ОпµЅУГК±·ЅєЮЙЩ°Й,»эАЫµД№эіМЛдИ»±ИЅПВй·і,µ«КЗИз№ыТЄЧцёцґуИЛОп,ПёРД»эАЫєН№ЫІм¶јКЗІ»їЙИ±ЙЩµДЕ¶,µ±И»,»№УРі¬ЗїµДДНРДєНТгБ¦!")

	MisResultCondition(HasMission, 1485)
	MisResultCondition(NoRecord,1485)
	MisResultCondition(HasItem, 1693, 30 )
	MisResultCondition(HasItem, 2677, 30 )
	MisResultCondition(HasItem, 3909, 10 )
	MisResultCondition(HasItem, 2589, 10 )
	MisResultCondition(HasItem, 3094, 20 )
	MisResultCondition(HasItem, 3827, 1 )
	MisResultCondition(HasItem, 0271, 2 )

	MisResultAction(TakeItem, 1693, 30 )
	MisResultAction(TakeItem, 2677, 30 )
	MisResultAction(TakeItem, 3909, 10 )
	MisResultAction(TakeItem, 2589, 10 )
	MisResultAction(TakeItem, 3094, 20 )
	MisResultAction(TakeItem, 3827, 1 )
	MisResultAction(TakeItem, 0271, 2 )

	MisResultAction(ClearMission, 1485)
	MisResultAction(SetRecord,  1485 )
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1485, 1, 30 )
	RegCurTrigger( 14851 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1485, 31, 30 )
	RegCurTrigger( 14852 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1485, 61, 10 )
	RegCurTrigger( 14853 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1485, 71, 10 )
	RegCurTrigger( 14854 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1485, 81, 20 )
	RegCurTrigger( 14855 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1485,101, 1 )
	RegCurTrigger( 14856 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0271)	
	TriggerAction( 1, AddNextFlag, 1485,102, 2 )
	RegCurTrigger( 14857 )


	----------------------------------------------------------ЙзЅ»ґуК№----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ
	DefineMission( 5816, "ЙзЅ»ґуК№1", 1486 )
	MisBeginTalk("<t>іЙ№¦µДИЛ»№РиТЄУРіцЙ«µДЙзЅ»ДЬБ¦Е¶,ѕНПсОТ,ЕуУС±йј°ёчёціЗХт,µ«КЗУЙУЪєЈКВ№«ОсµД·±Г¦,ОТ¶јєГѕГГ»УРОКєтЛыГЗБЛ,Из№ыДгПлТЄМЅЛчС«ХВѕНМжОТОКєтЛыГЗ°Й.")
				
	MisBeginCondition(NoMission, 1486)
	MisBeginCondition(NoRecord,1486)
	MisBeginCondition(HasRecord, 1469)
	MisBeginAction(AddMission,1486)
	MisCancelAction(ClearMission, 1486)

	MisNeed(MIS_NEED_DESP, "ХТґє·зХтµДМъЅіЎ¤ОдцО(3316,2516)БДБД")
	
	MisHelpTalk("<t>їмИҐ°Й,ОТЖИІ»ј°ґэёжЛЯЛыГЗОТєЬПлДоЛыГЗ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№-----------------МъЅіЎ¤ОдцО

	DefineMission(5817, "ЙзЅ»ґуК№1", 1486, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>єЈКВЛщЦъАнЎ¤ВЮА­ДИ?МмДШ,ХжµДєГѕГ¶јГ»УРјыГжБЛДШ,ЛэТ»¶Ё»№јЗµГОТіцЙ«µДКЦТХ°Й.")
	MisResultCondition(NoRecord, 1486)
	MisResultCondition(HasMission,1486)
	MisResultAction(ClearMission,1486)
	MisResultAction(SetRecord, 1486)

	----------------------------------------------------------ЙзЅ»ґуК№2----------МъЅіЎ¤ОдцО
	DefineMission( 5818, "ЙзЅ»ґуК№2", 1487 )
	MisBeginTalk("<t>ОТТ»Ц±·ЗіЈРАЙНВЮА­ДИ,ЛэґУАґІ»»бТтОЄЧФјєµДµШО»¶шЧФВъ,ЛщТФЛэµДЕуУСєЬ¶аЕ¶,БъЕ®єНОТµ±іхКЗТ»ЖрУРРТЅбК¶ХвО»їЙ°®µДЕ®КїµД.")
				
	MisBeginCondition(NoMission, 1487)
	MisBeginCondition(NoRecord,1487)
	MisBeginCondition(HasRecord, 1486)
	MisBeginAction(AddMission,1487)
	MisCancelAction(ClearMission, 1487)

	MisNeed(MIS_NEED_DESP, "ХТґє·зХтµДїНХ»АП°еЎ¤БъЕ®(3302,2501)БДБД")
	
	MisHelpTalk("<t>ЛжК±»¶У­ДгєНВЮА­ДИАґОТХвАпґтФмј«Ж·Ч°±ёЕ¶.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№2-------------їНХ»АП°еЎ¤БъЕ®
	DefineMission(5819, "ЙзЅ»ґуК№2", 1487, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєГ,ДкЗбИЛ,РиТЄЧЎµкВр?")
	MisResultCondition(NoRecord, 1487)
	MisResultCondition(HasMission,1487)
	MisResultAction(ClearMission,1487)
	MisResultAction(SetRecord, 1487)

	----------------------------------------------------------ЙзЅ»ґуК№3----------їНХ»АП°еЎ¤БъЕ®
	DefineMission( 5820, "ЙзЅ»ґуК№3", 1488 )
	MisBeginTalk("<t>ДгИПК¶ВЮА­ДИ?М«єГБЛ,ЛэКЗОТµДЕуУС!»№јЗµГЛэµ±іхЕјИ»АґµЅОТµДїНХ»К±µДЗйѕ°ДШ,ЛэєАЛ¬µДРФёсИГОТГЗєЬїміЙОЄБЛЕуУС.ОТГЗ»№ѕ­іЈКЦЗЈКЦИҐФУ»хЙМИЛЎ¤ВіДИ¶щДЗАп№єОпДШ!")
				
	MisBeginCondition(NoMission, 1488)
	MisBeginCondition(NoRecord,1488)
	MisBeginCondition(HasRecord, 1487)
	MisBeginAction(AddMission,1488)
	MisCancelAction(ClearMission, 1488)

	MisNeed(MIS_NEED_DESP, "ХТґє·зХтµДФУ»хЙМИЛЎ¤ВіДИ¶щ(3279,2501)БДБД")
	
	MisHelpTalk("<t>ВіДИ¶щКЗТ»ёцѕ«ГчµДЙМИЛ,µ«І»БЯШД,єЗєЗ..")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№3--------ФУ»хЙМИЛЎ¤ВіДИ¶щ
	DefineMission(5821, "ЙзЅ»ґуК№3", 1488, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>БъЕ®ѕ­іЈАґОТХвАп№єОп,їЙП§єЬѕГГ»УРїґµЅЛэєНВЮА­ДИТ»ЖрАґБЛЕ¶,ОТєЬПлДоЛэДШ,Из№ыЛэФЩґО№вБЩ,ОТТ»¶ЁёшЛэЧоґуµДХЫїЫ.")
	MisResultCondition(NoRecord, 1488)
	MisResultCondition(HasMission,1488)
	MisResultAction(ClearMission,1488)
	MisResultAction(SetRecord, 1488)

	----------------------------------------------------------ЙзЅ»ґуК№4----------ФУ»хЙМИЛЎ¤ВіДИ¶щ
	DefineMission( 5822, "ЙзЅ»ґуК№4", 1489 )
	MisBeginTalk("<t>ДЗґООТФЪТ°НвЕЬЙМ,Ѕб№ыЕцµЅБЛїЙЕВµДєЈµБ»фЅрЛ№,ОТТФОЄОТѕНХвСщНкБЛ!КЗВЮА­ДИѕИБЛОТ!єуАґѕ№И»Б¬»фЅрЛ№¶јє¦ЕВВЮА­ДИ,І»ёТµЅХтАпАґµ·ВТБЛ.")
				
	MisBeginCondition(NoMission, 1489)
	MisBeginCondition(NoRecord,  1489)
	MisBeginCondition(HasRecord, 1488)
	MisBeginAction(AddMission, 1489)
	MisCancelAction(ClearMission, 1489)

	MisNeed(MIS_NEED_DESP, "ХТјЕДЇЦ®ЛюµД»фЅрЛ№(513,269)БДБД")
	
	MisHelpTalk("<t>Гж¶ФХвСщµДєЈµБДгТЄРЎРДЕ¶,Из№ыУРОЈПХѕНЛµДгКЗВЮА­ДИµДЕуУС!")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№4--------»фЅрЛ№
	DefineMission(5823, "ЙзЅ»ґуК№4", 1489, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>єЯєЯ,РЎСщДДАпАґµД°Ў?ТЄПл№эґЛВ·,БфПВЛщУРЗ®!¶о...ДгКЗВЮА­ДИµДЕуУС°Ў.ЧоЅьОТ¶јГ»ёЙКІГґ»µКВ,ОТјёєхТСѕ­ТЄЅбКшОТµДєЈµБЙъ»оБЛ.")
	MisResultCondition(NoRecord, 1489)
	MisResultCondition(HasMission,1489)
	MisResultAction(ClearMission,1489)
	MisResultAction(SetRecord, 1489)


	----------------------------------------------------------ЙзЅ»ґуК№5----------»фЅрЛ№
	DefineMission( 5824, "ЙзЅ»ґуК№5", 1490 )
	MisBeginTalk("<t>ЛдИ»ЙнОЄєЈµБ,µ«КЗОТІ»µГІ»ЗХЕеВЮА­ДИµДµЁК¶єНЦЗ»Ы,ОЄБЛЕуУСЛэїЙТФГж¶ФТ»ЗРОЈПХ,ОТГЗЙнОЄєЈµБЧоїґЦШµДѕНКЗТеЖшБЛ!єЩєЩ.µ±К±µДЗйїц?ДгїЙТФИҐОКДЗёцГіТЧЙМИЛ.")
				
	MisBeginCondition(NoMission, 1490)
	MisBeginCondition(NoRecord,  1490)
	MisBeginCondition(HasRecord, 1489)
	MisBeginAction(AddMission,1490)
	MisCancelAction(ClearMission, 1490)

	MisNeed(MIS_NEED_DESP, "ХТґє·зХтµДГіТЧЙМИЛЎ¤УНАо(3195,2506)БДБД")
	
	MisHelpTalk("<t>ГіТЧЙМИЛЎ¤УНАоКЗёцПІ»¶ЛЈРЎґПГчµДЙМИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№5--------ГіТЧЙМИЛЎ¤УНАо
	DefineMission(5825, "ЙзЅ»ґуК№5", 1490, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>їИїИ,ПсОТХвСщµДЙМИЛТЄєНёчЦЦИЛОпґтЅ»µА,МШ±рКЗПсєЈµБХвСщµДЅЗЙ«,µ±И»ТЄН·ДФБй»оАІ,ДЗёцІ»ЛгЛЈРЎґПГч°Й?")
	MisResultCondition(NoRecord, 1490)
	MisResultCondition(HasMission,1490)
	MisResultAction(ClearMission,1490)
	MisResultAction(SetRecord, 1490)


	----------------------------------------------------------ЙзЅ»ґуК№6----------ГіТЧЙМИЛЎ¤УНАо
	DefineMission( 5826, "ЙзЅ»ґуК№6", 1491)
	MisBeginTalk("<t>ЛµЖрДЗґОѕ­Аъ,ХжКЗїЙЕВ!РТФЛµДКЗОТТІµГµЅБЛВЮА­ДИµД°пЦъ,ІЕ°ЪНСБЛєЈµБµДѕАІш,·сФтОТЛщУРµДјТµ±¶ј±»ЗАБЛ!µ±К±ЛыГЗїЙ¶јДГЧЕ·жАыµДОдЖч°Ў!ВЮА­ДИѕИБЛОТ,»№ИГґ«ЛНК№Ў¤ґєАтЛНОТµЅБЛ°ІИ«µДµШ·Ѕ,ЧФјє¶АЧФГж¶ФДЗГґ¶а»µµ°.")
				
	MisBeginCondition(NoMission, 1491)
	MisBeginCondition(NoRecord,1491)
	MisBeginCondition(HasRecord, 1490)
	MisBeginAction(AddMission,1491)
	MisCancelAction(ClearMission, 1491)

	MisNeed(MIS_NEED_DESP, "ХТґ«ЛНК№Ў¤ґєАт(3326,2511)БДБД")
	
	MisHelpTalk("<t>ґєАтТІКЗВЮА­ДИµДЕуУСДШ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№6--------ґ«ЛНК№Ў¤ґєАт
	DefineMission(5827, "ЙзЅ»ґуК№6", 1491, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєГ,°пЦъИЛ»бК№ЧФјєТІ±дµГїмАЦЕ¶.")
	MisResultCondition(NoRecord, 1491)
	MisResultCondition(HasMission,1491)
	MisResultAction(ClearMission,1491)
	MisResultAction(SetRecord, 1491)


	----------------------------------------------------------ЙзЅ»ґуК№7----------ґ«ЛНК№Ў¤ґєАт
	DefineMission( 5828, "ЙзЅ»ґуК№7", 1492 )
	MisBeginTalk("<t>ДЗґОЛНУНАо»ШАґµДµДИ·КЗОТ.ОТґУВЮА­ДИДЗАпС§»бБЛЦъИЛОЄАЦ,°пЦъ±рИЛХжµДКЗјюєЬїмАЦµДКВЗйДШ,УР»ъ»бОТ»№ТЄґУЛэЙнЙПС§µЅёь¶а¶«Оч!МэЛµЛгГьПИЙъЎ¤ЛгЖЖМмТІєНВЮА­ДИЅУґҐ№э.")
				
	MisBeginCondition(NoMission, 1492)
	MisBeginCondition(NoRecord,1492)
	MisBeginCondition(HasRecord, 1491)
	MisBeginAction(AddMission,1492)
	MisCancelAction(ClearMission, 1492)

	MisNeed(MIS_NEED_DESP, "ХТґє·зХтµДЛгГьПИЙъЎ¤ЛгЖЖМм(3262,2502)БДБД")
	
	MisHelpTalk("<t>ЛгГьПИЙъЎ¤ЛгЖЖМмТФЗ°КЗёцЦ»ПаРЕГьФЛµДИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№7--------ЛгГьПИЙъЎ¤ЛгЖЖМм
	DefineMission(5829, "ЙзЅ»ґуК№7", 1492, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТТФЗ°µДИ·КЗёцЦ»ПаРЕГьФЛµДИЛ,µ«КЗВЮА­ДИК№ОТГч°ЧБЛГьФЛКЗїЙТФїїЧФјєёД±дµД,ОТПЦФЪёшИЛЛгГьКЗОЄБЛИГґујТ·А·¶УЪОґИ»,ґґФмЧФјєёьєГµДОґАґ.")
	MisResultCondition(NoRecord, 1492)
	MisResultCondition(HasMission,1492)
	MisResultAction(ClearMission,1492)
	MisResultAction(SetRecord, 1492)


	----------------------------------------------------------ЙзЅ»ґуК№8----------ЛгГьПИЙъЎ¤ЛгЖЖМм
	DefineMission( 5830, "ЙзЅ»ґуК№8", 1493 )
	MisBeginTalk("<t>ЙПґОёшѕЖµкАП°еЎ¤ЕбµЩЛгГьµДК±єт,ОТёжЛЯЛыЅ«УР№уИЛПаЦъ,Г»ПлµЅєуАґЛыёжЛЯОТЛыµД№уИЛѕНКЗВЮА­ДИ!єЗєЗ.")
				
	MisBeginCondition(NoMission, 1493)
	MisBeginCondition(NoRecord,  1493)
	MisBeginCondition(HasRecord, 1492)
	MisBeginAction(AddMission,1493)
	MisCancelAction(ClearMission, 1493)

	MisNeed(MIS_NEED_DESP, "ХТѕЖµкАП°еЎ¤ЕбµЩ(3287,2501)БДБД")
	
	MisHelpTalk("<t>ґшОТПтВЮА­ДИОКєГ!")
	MisResultCondition(AlwaysFailure)
	
	-----------------------------------------ЙзЅ»ґуК№8--------ѕЖµкАП°еЎ¤ЕбµЩ
	DefineMission(5831, "ЙзЅ»ґуК№8", 1493, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ВЮА­ДИХжКЗОТµД№уИЛ,µ±К±ОТГЗѕЖµкµДЙъТвІўІ»ФхГґСщ,ДгЦЄµА,ХвАпЦ»КЗТ»ёцРЎХт,єуАґКЗВЮА­ДИЅйЙЬБЛєЬ¶аВГРРµДИЛАґ№в№ЛОТ.")
	MisResultCondition(NoRecord, 1493)
	MisResultCondition(HasMission,1493)
	MisResultAction(ClearMission,1493)
	MisResultAction(SetRecord, 1493)


	----------------------------------------------------------ЙзЅ»ґуК№9----------ѕЖµкАП°еЎ¤ЕбµЩ
	DefineMission( 5832, "ЙзЅ»ґуК№9", 1494 )
	MisBeginTalk("<t>ДЗґОВЮА­ДИКЗАґХТёЫїЪЦё»УЎ¤ЛЄЖжМё№«КВµД....")
				
	MisBeginCondition(NoMission, 1494)
	MisBeginCondition(NoRecord,  1494)
	MisBeginCondition(HasRecord, 1493)
	MisBeginAction(AddMission,1494)
	MisCancelAction(ClearMission, 1494)

	MisNeed(MIS_NEED_DESP, "ХТёЫїЪЦё»УЎ¤ЛЄЖж(3409,2560)БДБД")
	
	MisHelpTalk("<t>ёЫїЪЦё»УЎ¤ЛЄЖжКЗёцѕґ№«Ц°КШµДИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№9--------ёЫїЪЦё»УЎ¤ЛЄЖж
	DefineMission(5833, "ЙзЅ»ґуК№9", 1494, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>»¶У­ДгАґµЅґє·зХт,ХвАпЛдИ»КЗРЎХт,µ«КЗХвАпµДИЛ¶јєЬєГїНЕ¶!ВЮА­ДИЙПґО№эАґКЗАґКУІмХвАпµД№¤ЧчµД.")
	MisResultCondition(NoRecord, 1494)
	MisResultCondition(HasMission,1494)
	MisResultAction(ClearMission,1494)
	MisResultAction(SetRecord, 1494)

	----------------------------------------------------------ЙзЅ»ґуК№10----------ёЫїЪЦё»УЎ¤ЛЄЖж
	DefineMission( 5834, "ЙзЅ»ґуК№10", 1495 )
	MisBeginTalk("<t>ВЮА­ДИХжКЗТ»ёцєГИЛ,Т»µг¶јГ»УРёЯёЯФЪЙПµДјЬЧУ,Лэ¶ФОТµД№¤ЧчёшУиБЛїП¶Ё,М«БоИЛёЯРЛБЛ.¶шЗТЛэ»№єЬ№ШРДПВКфДШ,єуАґЛэ»№ИҐОїОКБЛОА±шЎ¤ХФЗ®Лп.")
				
	MisBeginCondition(NoMission, 1495)
	MisBeginCondition(NoRecord, 1495)
	MisBeginCondition(HasRecord, 1494)
	MisBeginAction(AddMission, 1495)
	MisCancelAction(ClearMission, 1495)

	MisNeed(MIS_NEED_DESP, "ХТОА±шЎ¤ХФЗ®Лп(3303,2533)БДБД")
	
	MisHelpTalk("<t>ОТПлЙПј¶µДОїОК¶ФУЪПВКфКЗєЬєГµД№ДОи°Й...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№10--------ОА±шЎ¤ХФЗ®Лп
	DefineMission(5835, "ЙзЅ»ґуК№10", 1495, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєГЈ¬ДгКЗФ¶µА¶шАґµДВГїН°Й.ДгИПК¶ВЮА­ДИ?№ю№ю,ВЮА­ДИРЎЅгЗЧЧФАґїґ№эОТЕ¶!М«РТёЈБЛ!")
	MisResultCondition(NoRecord, 1495)
	MisResultCondition(HasMission,1495)
	MisResultAction(ClearMission,1495)
	MisResultAction(SetRecord, 1495)

	----------------------------------------------------------ЙзЅ»ґуК№11----------ОА±шЎ¤ХФЗ®Лп
	DefineMission( 5836, "ЙзЅ»ґуК№11", 1496 )
	MisBeginTalk("<t>ВЮА­ДИКЗёцОВИбМеМщµДИЛ,ДЗМмЛэМШµШАґОїОКБЛОТєНЦЬОвЦЈ.")
				
	MisBeginCondition(NoMission, 1496)
	MisBeginCondition(NoRecord,1496)
	MisBeginCondition(HasRecord, 1495)
	MisBeginAction(AddMission,1496)
	MisCancelAction(ClearMission, 1496)

	MisNeed(MIS_NEED_DESP, "ХТОА±шЎ¤ЦЬОвЦЈ(3298,2534)БДБД")
	
	MisHelpTalk("<t>ЦЬОвЦЈєНОТПсЗЧРЦµЬТ»Сщ,ПВ°аєуОТГЗОЮЛщІ»Мё.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№11--------ОА±шЎ¤ЦЬОвЦЈ
	DefineMission(5837, "ЙзЅ»ґуК№11", 1496, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>НЫ№ю№ю,јыµЅДгєЬёЯРЛВЮА­ДИµДЕуУС.ДгґУХФЗ®ЛпДЗАп№эАґµД?ЛыГ»УРНµАБ°Й.")
	MisResultCondition(NoRecord, 1496)
	MisResultCondition(HasMission,1496)
	MisResultAction(ClearMission,1496)
	MisResultAction(SetRecord, 1496)

	----------------------------------------------------------ЙзЅ»ґуК№12----------ОА±шЎ¤ЦЬОвЦЈ
	DefineMission( 5838, "ЙзЅ»ґуК№12", 1497 )
	MisBeginTalk("<t>±рїґОТЦ»КЗРЎРЎµДОА±ш,ОТµДЅ»јКїЙКЗєЬ№гµДДШ,ТшРРЧЬ№ЬЎ¤НхД«ТІКЗОТµДЕуУС.ЙПґОВЮА­ДИРЎЅгАґОїОКОТ,ПРБДµЅЛэУРТ»Р©¶«ОчРиТЄХТµШ·ЅјД·Е,ХвСщІЕДЬЧЁРДКУІм№¤Чч,ОТТэјцНхД«ёшВЮА­ДИРЎЅгИПК¶БЛ.")
				
	MisBeginCondition(NoMission, 1497)
	MisBeginCondition(NoRecord,1497)
	MisBeginCondition(HasRecord, 1496)
	MisBeginAction(AddMission,1497)
	MisCancelAction(ClearMission, 1497)

	MisNeed(MIS_NEED_DESP, "ХТТшРРЧЬ№ЬЎ¤НхД«(3290,2512)БДБД")
	
	MisHelpTalk("<t>ТшРРЧЬ№ЬЎ¤НхД«КЗРРКВЅчЙчµДИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№12--------ТшРРЧЬ№ЬЎ¤НхД«
	DefineMission(5839, "ЙзЅ»ґуК№12", 1497, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ВЮА­ДИТ»¶ЁѕхµГОТКЗЦµµГРЕИОµДИЛ,ЛщТФЅ«Лэ№уЦШµДОпЖ·јД·ЕФЪОТХвАп,І»№эДгЗ§НтІ»ТЄёжЛЯ±рИЛЕ¶,ВЮА­ДИРЎЅгПВґОАґТ»¶Ё»бК®·ЦВъТвОТГЗµД·юОсµД.")
	MisResultCondition(NoRecord, 1497)
	MisResultCondition(HasMission,1497)
	MisResultAction(ClearMission,1497)
	MisResultAction(SetRecord, 1497)


	----------------------------------------------------------ЙзЅ»ґуК№13----------ТшРРЧЬ№ЬЎ¤НхД«
	DefineMission( 5840, "ЙзЅ»ґуК№13", 1498 )
	MisBeginTalk("<t>ЛдИ»ВЮА­ДИКЗАґКУІмµД,µ«КЗјИИ»АґµЅБЛОТГЗГААцµДРЎХт,ЧФИ»ТЄєГєГМеСйєНПнКЬТ»ПВХвАпµД·зНБИЛЗйАІ,ОТИГБчФЖЕгВЮА­ДИРЎЅгµЅґ¦№д№д.")
				
	MisBeginCondition(NoMission, 1498)
	MisBeginCondition(NoRecord,1498)
	MisBeginCondition(HasRecord, 1497)
	MisBeginAction(AddMission,1498)
	MisCancelAction(ClearMission, 1498)

	MisNeed(MIS_NEED_DESP, "ХТЗаДкДРЧУЎ¤БчФЖ(3275,2467)БДБД")
	
	MisHelpTalk("<t>ЗаДкДРЧУЎ¤БчФЖКЗёцідВъ»оБ¦µДРЎ»пЧУ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№13--------ЗаДкДРЧУЎ¤БчФЖ
	DefineMission(5841, "ЙзЅ»ґуК№13", 1498, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>єЩ,ЕуУС!УРКІГґїЙТФ°пЦъДгµДВр?ОТєЕіЖКЗґє·зХтµДµјУОЕ¶.")
	MisResultCondition(NoRecord, 1498)
	MisResultCondition(HasMission,1498)
	MisResultAction(ClearMission,1498)
	MisResultAction(SetRecord, 1498)

	----------------------------------------------------------ЙзЅ»ґуК№14----------ЗаДкДРЧУЎ¤БчФЖ
	DefineMission( 5842, "ЙзЅ»ґуК№14", 1499 )
	MisBeginTalk("<t>КЗЕ¶,ЙПґОВЮА­ДИАґОТГЗґє·зХтѕНКЗОТєНЛ®ОнґшЛэµЅґ¦УОНжµДДШ!»°Лµ»ШАґ,ЛэТІКЗТ»ёцїЄАКµДИЛ,єНОТГЗТ»ЖрНжµДєЬН¶»ъ.")
				
	MisBeginCondition(NoMission, 1499)
	MisBeginCondition(NoRecord,1499)
	MisBeginCondition(HasRecord, 1498)
	MisBeginAction(AddMission,1499)
	MisCancelAction(ClearMission, 1499)

	MisNeed(MIS_NEED_DESP, "ХТЗаДкЕ®ЧУЎ¤Л®Он(3241,2533)БДБД")
	
	MisHelpTalk("<t>ЖдКµ...ГїМмДЬ№»єНЛ®ОнФЪТ»ЖрКЗОТТ»Ц±ТФАґµДФёНы...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№14--------ЗаДкЕ®ЧУЎ¤Л®Он        
	DefineMission(5843, "ЙзЅ»ґуК№14", 1499, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>КЗБчФЖИГДгАґХТОТµДВр?Лы...ЛыКЗёцєГИЛ.ЖдКµИз№ыЛыДЬ№»ФЪКВТµЙПУРЛщіЙѕНІўЗТОВИбМеМщР©,ДЗёГ¶аєГ.ОТЦ»¶ФВЮА­ДИЛµ№эРДАпµДПл·Ё...")
	MisResultCondition(NoRecord, 1499)
	MisResultCondition(HasMission,1499)
	MisResultAction(ClearMission,1499)
	MisResultAction(SetRecord, 1499)

	----------------------------------------------------------ЙзЅ»ґуК№15----------ЗаДкЕ®ЧУЎ¤Л®Он
	DefineMission( 5844, "ЙзЅ»ґуК№15", 1601 )
	MisBeginTalk("<t>¶ФОТАґЛµ,ВЮА­ДИѕНПсТ»ёцґуЅгЅгТ»Сщ,ОТКІГґ»°¶јФёТв¶ФЛэЛµ.ОТєГПлЛэЕ¶,ОТУРєГ¶а»°ПлєНЛэЛµДШ.ПЦФЪЦ»УРНхИШ°ўТМДЬ№»ЕгОТЛµЛµ»°.")
				
	MisBeginCondition(NoMission, 1601)
	MisBeginCondition(NoRecord,1601)
	MisBeginCondition(HasRecord, 1499)
	MisBeginAction(AddMission,1601)
	MisCancelAction(ClearMission, 1601)

	MisNeed(MIS_NEED_DESP, "ХТЦРДкЕ®ЧУЎ¤НхИШ(3265,2547)БДБД")
	
	MisHelpTalk("<t>»ЖИШ,КЗёцЦРДкЕ®ЧУ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№15-------- ЦРДкЕ®ЧУЎ¤НхИШ
	DefineMission(5845, "ЙзЅ»ґуК№15", 1601, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Л®ОнХвРЎСѕН·КЗєЬ¶аіоЙЖёРµДЕ®єў,Лэµ№КЗТ»Ц±ДоЯ¶ЧЕВЮА­ДИДШ,ЛэєЬПЈНыЧФјєДЬУРХвСщТ»ёцЅгЅг.ОТКЗєЬПІ»¶ХвёцРЎСѕН·,ЛщТФѕ­іЈЕгЛэБДМм.")
	MisResultCondition(NoRecord, 1601)
	MisResultCondition(HasMission,1601)
	MisResultAction(ClearMission,1601)
	MisResultAction(SetRecord, 1601)


	----------------------------------------------------------ЙзЅ»ґуК№16----------ЦРДкЕ®ЧУЎ¤НхИШ
	DefineMission( 5846, "ЙзЅ»ґуК№16", 1602 )
	MisBeginTalk("<t>№ю,ДгКЗЧЁіМАґМжВЮА­ДИОКєтґујТµДВр?ВЮА­ДИХжКЗУРРД°Ў,Р»Р»Дг.¶ФБЛ,±ИёЗТІКЗВЮА­ДИµДЕуУС.")
				
	MisBeginCondition(NoMission, 1602)
	MisBeginCondition(NoRecord,1602)
	MisBeginCondition(HasRecord, 1601)
	MisBeginAction(AddMission,1602)
	MisCancelAction(ClearMission, 1602)

	MisNeed(MIS_NEED_DESP, "ХТЦРДкДРЧУЎ¤±ИёЗ(3235,2550)БДБД")
	
	MisHelpTalk("<t>±ИёЗКЗёц·зИ¤µДДРИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№16-------- ЦРДкДРЧУЎ¤±ИёЗ
	DefineMission(5847, "ЙзЅ»ґуК№16", 1602, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ВЮА­ДИЧоЅьїЙєГ?ВЮА­ДИµДОўР¦ѕНПсМмЙПµДМ«СфТ»СщІУАГ,ФЪЛэµДЦЬО§ЧЬКЗ»бУРТ»ИєЕуУС,Из№ыУРСЎРг»о¶Ї,ОТёТґт¶ДВЮА­ДИµД¶МРЕЦ§іЦВКТ»¶ЁЧоёЯ!")
	MisResultCondition(NoRecord, 1602)
	MisResultCondition(HasMission,1602)
	MisResultAction(ClearMission,1602)
	MisResultAction(SetRecord, 1602)


	----------------------------------------------------------ЙзЅ»ґуК№17----------ЦРДкДРЧУЎ¤±ИёЗ
	DefineMission( 5848, "ЙзЅ»ґуК№17", 1502 )
	MisBeginTalk("<t>КІГґ?ДгОКОТОЄКІГґ?Из№ыОТёжЛЯДгБ¬¶«·ЅєЈµБЎ¤БеЧфМпЙЅ¶јКЗВЮА­ДИµДЕуУСµД»°,ДгУ¦ёГГ»УРТЙОКБЛ°Й.")
				
	MisBeginCondition(NoMission, 1502)
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 1602)
	MisBeginAction(AddMission,1502)
	MisCancelAction(ClearMission, 1502)

	MisNeed(MIS_NEED_DESP, "ХТ¶«·ЅєЈµБЎ¤БеЧфМпЙЅ(2219,3286)БДБД")
	
	MisHelpTalk("<t>¶«·ЅєЈµБЎ¤БеЧфМпЙЅКЗУРГыµДєЈµБ,Фшѕ­іЫіТ¶«·ЅєЈУт.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№17-------- ¶«·ЅєЈµБЎ¤БеЧфМпЙЅ
	DefineMission(5849, "ЙзЅ»ґуК№17", 1502, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>їХДбЖлНЫЈ¬Г»ПлµЅДгКЗВЮА­ДИµДЕуУС,ЛµЖрАґБ¬ОТ¶јІ»ёТПаРЕѕ№И»ДЬ№»єНєЈКВЦъАніЙОЄЕуУС,ІўЗТОТГЗґпіЙБЛР­Тй,ОТІ»»бП®»чВЮА­ДИ№ЬПЅ·¶О§µДґ¬Ц».")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission,1502)
	MisResultAction(SetRecord, 1502)

	----------------------------------------------------------ЙзЅ»ґуК№18----------¶«·ЅєЈµБЎ¤БеЧфМпЙЅ
	DefineMission( 5850, "ЙзЅ»ґуК№18", 1603 )
	MisBeginTalk("<t>ґє·зХтХжКЗєГµШ·Ѕ°Ў,ФЪХвАпОТ¶јјёєхНьјЗБЛєЈЙПµД·з·зУкУк.ХвАпµД·юКОєН·ўРН¶јєНОТјТПзІ»Т»СщЕ¶,ЙПґОВЮА­ДИґшОТИҐі±БчАн·ўК¦ДЗАпЙијЖБЛТ»ёцДЄОчёЙ·ўРН,НЫИы,їб±ЧБЛ!ЛдИ»ОТКЗєЈµБ,µ«КЗОТТІКЗРиТЄ°ьЧ°µДВп,єОїцОТКЗДЗГґУРГыµДєЈµБ°Ў,№ю№ю№ю.")
				
	MisBeginCondition(NoMission, 1603)
	MisBeginCondition(NoRecord,1603)
	MisBeginCondition(HasRecord, 1502)
	MisBeginAction(AddMission,1603)
	MisCancelAction(ClearMission, 1603)

	MisNeed(MIS_NEED_DESP, "ХТі±БчАн·ўК¦(3300,2513)БДБД")
	
	MisHelpTalk("<t>і±БчАн·ўК¦КЗЛјПлЗ°ОА,ЙијЖіцЦЪµД·ўРНЙијЖК¦.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№18-------- і±БчАн·ўК¦
	DefineMission(5851, "ЙзЅ»ґуК№18", 1603, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>№ю№ю,ДгЛµµДКЗЙПґОВЮА­ДИґшАґµДДЗёцЖж№ЦµДєЈµБ°Й,Лы¶ФОТёшЛыЙијЖµД·ўРНєЬВъТв°Й!")
	MisResultCondition(NoRecord, 1603)
	MisResultCondition(HasMission,1603)
	MisResultAction(ClearMission,1603)
	MisResultAction(SetRecord, 1603)

	----------------------------------------------------------ЙзЅ»ґуК№19----------і±БчАн·ўК¦
	DefineMission( 5852, "ЙзЅ»ґуК№19", 1604 )
	MisBeginTalk("<t>°Ў,Ф­АґДгКЗЧЁіММжВЮА­ДИАґОКєтЛэµДЕуУСµД°Ў,ДгИҐ№эёЫїЪЦё»УЎ¤ЛЄЖжДЗАпБЛ?ДЗУРГ»УРИҐ№эєЈёЫЦё»УЎ¤ПДЗаДЗАпДШ?¶ФБЛ,јЗµГПтОТМжВЮА­ДИОКєГ,Лі±гёжЛЯЛэОТОЄЛэЧЁГЕЙијЖБЛТ»ёц·ўРН,ѕш¶ФККєПЛэµДЖшЦК!")
				
	MisBeginCondition(NoMission, 1604)
	MisBeginCondition(NoRecord,1604)
	MisBeginCondition(HasRecord, 1603)
	MisBeginAction(AddMission,1604)
	MisCancelAction(ClearMission, 1604)

	MisNeed(MIS_NEED_DESP, "ХТєЈёЫЦё»УЎ¤ПДЗа(3685,2652)БДБД")
	
	MisHelpTalk("<t>єЈёЫЦё»УЎ¤ПДЗаКЗТ»ёцПІ»¶»ГПлµДИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№19-------- єЈёЫЦё»УЎ¤ПДЗа
	DefineMission(5853, "ЙзЅ»ґуК№19", 1604, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>№юа¶,їґїґХвґуєЈ,¶аГФИЛ°Ў!ОТГїМм¶ј»бєНЛьБДМм,¶о...Дг»бѕхµГОТУРКІГґІ»НЧВр?ДЗМмВЮА­ДИїґµЅОТФЪєНґуєЈЛµ»°¶јГ»УРѕхµГЖж№Ц,ЛэХжКЗТ»ёцМШ±рµДИЛ,єГПсДЬ№»їґНёОТµДРД.")
	MisResultCondition(NoRecord, 1604)
	MisResultCondition(HasMission,1604)
	MisResultAction(ClearMission,1604)
	MisResultAction(SetRecord, 1604)


	----------------------------------------------------------ЙзЅ»ґуК№20----------єЈёЫЦё»УЎ¤ПДЗа
	DefineMission( 5854, "ЙзЅ»ґуК№20", 1605 )
	MisBeginTalk("<t>ОТТ»Ц±ТФОЄіэБЛєЈёЫЦё»УЎ¤ПДФЖТФНв,Г»УРИЛДЬ№»АнЅвОТОЄКІГґ¶ФґуєЈЛµ»°ДШ.¶ФБЛ,ЛµЖрПДФЖ,ЛыТІѕхµГВЮА­ДИКЗёцМШ±рµДИЛ,ЙхЦБХыМмФЪОТ¶ъ±ЯМбЖрВЮА­ДИДШ,єЩєЩ.")
				
	MisBeginCondition(NoMission, 1605)
	MisBeginCondition(NoRecord,1605)
	MisBeginCondition(HasRecord, 1604)
	MisBeginAction(AddMission,1605)
	MisCancelAction(ClearMission, 1605)

	MisNeed(MIS_NEED_DESP, "ХТєЈёЫЦё»УЎ¤ПДФЖ(3337,3523)БДБД")
	
	MisHelpTalk("<t>ПДЗаКЗёцУµУРФ¶ґуАнПлєН±§ёєµДєЈёЫЦё»У,їЙКЗГ»УРИЛИПОЄЛыµДФёНыДЬ№»КµПЦ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№20-------- єЈёЫЦё»УЎ¤ПДФЖ
	DefineMission(5855, "ЙзЅ»ґуК№20", 1605, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Дгјы№эПДЗаБЛ°Ў.КІГґ,ЛыёжЛЯДгОТТ»Ц±МбЖрВЮА­ДИБЛ?єЗєЗ,ЛµКµ»°,ВЮА­ДИКЗДЬ№»ёшИЛБфПВЙоїМУЎПуµДИЛЕ¶.ЧцХвёцРЎХтµДєЈёЫЦё»УДЗГґ¶аДкБЛ,µЪТ»ґОУРИЛИПН¬ОТµДАнПл...ТтОЄОТПлУРТ»МмДЬ№»ЧФјєУµУРТ»Ц§Ѕў¶УИҐ¶Фё¶ЛщУРµДєЈµБ.")
	MisResultCondition(NoRecord, 1605)
	MisResultCondition(HasMission,1605)
	MisResultAction(ClearMission,1605)
	MisResultAction(SetRecord, 1605)

	----------------------------------------------------------ЙзЅ»ґуК№21----------єЈёЫЦё»УЎ¤ПДФЖ
	DefineMission( 5856, "ЙзЅ»ґуК№21", 1606 )
	MisBeginTalk("<t>ДгТСѕ­ОКєтБЛЛщУРХвАпВЮА­ДИµДЕуУСБЛ?ОТРАЙНДгµДФрИОРД.З§НтІ»ТЄНьјЗ°СОТµДЧЈёЈґшёшВЮА­ДИЕ¶,Из№ыЛэДЬ№»ѕЎїмАґїґОТГЗ,ОТТ»¶ЁµЪТ»К±јдУ­ЅУЛэ.ОТГЗ¶јєЬПлДоЛэ!¶ФБЛ,Злґъ±нґє·зХтµДЕуУСЅ«ХвёцАсОпґшёшВЮА­ДИ,їґµЅЛьТЄПлµЅОТГЗЕ¶.")
				
	MisBeginCondition(NoMission, 1606)
	MisBeginCondition(NoRecord,1606)
	MisBeginCondition(HasRecord, 1605)
	MisBeginAction(AddMission,1606)
	MisCancelAction(ClearMission, 1606)

	MisNeed(MIS_NEED_DESP, "ХТ°ЧТшіЗєЈКВЛщЦъАнЎ¤ВЮА­ДИ(2247,2858)БДБД")
	
	MisHelpTalk("<t>Вй·іДгЅ«ОТГЗµДАсОпґшёшВЮА­ДИ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»УўРЫ21------- єЈКВЛщЦъАнЎ¤ВЮА­ДИ
	DefineMission(5857, "ЙзЅ»УўРЫ21", 1606, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгХжµД°пОТОКєтБЛґє·зХтЛщУРµДЕуУСБЛ,М«ёРР»ДгБЛ,ѕ№И»»№ґшАґБЛАсОп!°Ў,ХжІ»ЦЄµАИзєОёРР»Дг,ХвГ¶С«ХВДгКЬЦ®ОЮАў.")
	MisResultCondition(NoRecord, 1606)
	MisResultCondition(HasMission,1606)
	MisResultAction(ClearMission,1606)
	MisResultAction(SetRecord, 1606)
	MisResultAction(GiveItem, 2573, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------МШ±рИООсТ»--------єЈКВЛщЦъАнЎ¤ВЮА­ДИ
	DefineMission (5858, "ѕЮР·Ц®МШ±рРР¶ЇТ»", 1607)
	
	MisBeginTalk("<t>єЩ,ѕНХвСщВъЧгУЪДгµДіЙјЁБЛВр?єЗєЗ,Из№ыДг»№УРЧг№»µДРЕРДµД»°,ИҐ±щАЗ±¤ХТВ·ИЛЎ¤¶Ў°Й,ЛыЅ«ёшДгМШ±рµДїјСй.")

	MisBeginCondition(NoMission,1607)
	MisBeginCondition(NoRecord,1607)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(HasRecord,1481)
	MisBeginCondition(HasRecord,1482)
	MisBeginCondition(HasRecord,1483)
	MisBeginCondition(HasRecord,1484)
	MisBeginCondition(HasRecord,1485)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginAction(AddMission,1607)
	MisCancelAction(ClearMission, 1607)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "ХТ±щАЗ±¤µДВ·ИЛЎ¤¶Ў(1335,469)БДБД")
	MisHelpTalk("<t>ТЄПлЦЄµАУРКІГґМШ±рИООсµИґэЧЕДгЈ¬ѕНёПїмИҐХТВ·ИЛЎ¤¶Ў°Й.")

	MisResultCondition(AlwaysFailure)	


	-------------------------------------------------МШ±рИООсТ»--------±щАЗ±¤µДВ·ИЛЎ¤¶Ў
	DefineMission (5859, "ѕЮР·Ц®МШ±рРР¶ЇТ»", 1607, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>ДгТСѕ­НЁ№эВЮА­ДИёшДгµДИООсБЛВр?ХжБЛІ»Жр,±рїґОТїґЙПИҐКЗёцІ»ЖрСЫµДВ·ИЛ,ЖдКµОТКЗТюІШј¶±рµДИЛОпЕ¶!єЯєЯ!Б¬ОТµДГыЧЦ¶јТюІШµДДЗГґЗЙГо,єЬїб°Й!ДЗГґАґїґїґДгКЗ·сУРДЬБ¦НкіЙОТёшДгµДМШ±рИООс°Й..")	
	MisResultCondition(NoRecord, 1607)
	MisResultCondition(HasMission,1607)
	MisResultAction(ClearMission,1607)
	MisResultAction(SetRecord, 1607)


	--------------------------------------МШ±рИООс¶ю----±щАЗ±¤µДВ·ИЛЎ¤¶Ў

	DefineMission(5860, "ѕЮР·Ц®МШ±рРР¶Ї¶ю", 1608 )	
	
	MisBeginTalk("<t>ХвёцИООсКЗѕЮР·№¬МШ±рРР¶Ї,ДгїЙТФІ»ІОјУ,µ«КЗѕНГ»УРМШ±рµДАсОпЕ¶.Из№ыДгХжµДУµУРКµБ¦єНУВЖш,ДЗГґѕНЅУКЬМфХЅ°Й.ОТХвАпУРК®·ЦЦШТЄµД¶«ОчРиТЄДгѕЎїмЛНµЅВГРРЙМИЛДЗАп.<b2·ЦЦУДЪёПµЅ±щАЗ±¤ХТВГРРЙМИЛ(1326,532)>БДБД.")

	MisBeginCondition(NoMission,1608)
	MisBeginCondition(NoRecord,1608)
	MisBeginCondition(HasRecord,1607)
	MisBeginAction(AddMission,1608)
	MisBeginAction(AddChaItem3, 2952)---------ѕЮР·МШ±рРР¶ЇїЁ
	MisCancelAction(ClearMission, 1608)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "ХТВГРРЙМИЛ(1326,532)БДБД")
	MisHelpTalk("<t>їмИҐ°Й,ДгЦ»УР2·ЦЦУЕ¶")

	MisResultCondition(AlwaysFailure)	

	--------------------------------------МШ±рИООс¶ю----ВГРРЙМИЛ

	DefineMission(5861, "ѕЮР·Ц®МШ±рРР¶Ї¶ю", 1608, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>№ю№юЈ¬·ЗіЈёРР»Дг.ОТµИХвёц¶«ОчєГѕГАІ.¶ч...ЛыГЗґшРЕёжЛЯОТДгКЗТ»ёцУµУРЗїґуЗ±Б¦µДїЙФмЦ®ІЕ.Аґ,ЛНДгТ»·ЭАсОп,ПЈНыДЬ№»°пЦъДгѕЎїмЗїґуЖрАґ.")
	MisResultCondition(HasMission, 1608)
	MisResultCondition(NoRecord,1608)
	MisResultAction(AddChaItem4, 2952)----МШ±рРР¶ЇїЁ
	MisResultAction(ClearMission, 1608)
	MisResultAction(SetRecord,  1608 )
	MisResultAction(GiveItem, 2575, 1, 4)------------ѕЮР·ґ¬і¤їбЧ°±¦Пд
	MisResultBagNeed(1)

-------------------------------------------------ѕЮР·Ц®Л®КЦ№э№ШЅ±Аш----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ
	DefineMission (5862, "ѕЮР·Ц®Л®КЦ№э№ШЅ±Аш", 1609)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅѕЮР·№¬КШУЎєНКЁЧУ№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1609)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(HasRecord,1470)
	MisBeginCondition(HasRecord,1471)
	MisBeginCondition(HasRecord,1472)
	MisBeginCondition(HasRecord,1473)
	MisBeginCondition(HasRecord,1474)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1609)
	MisBeginAction(AddMission,1609)  
	MisBeginAction(AddTrigger, 16091, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16092, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16093, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16094, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16095, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16096, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16097, TE_GETITEM, 2574, 1 )	
	MisCancelAction(ClearMission, 1609)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>»№ФЪУМФҐКІГґ?їмАґ¶Т»»Ѕ±Аш°Й")
	MisResultTalk("<t>ПВТ»№¬КЗКЁЧУ№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1609)
	MisResultCondition(NoRecord,1609)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1609)
	MisResultAction(SetRecord,  1609 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 1, 4)
	MisResultAction(AddMoney,1000000,1000000)
	MisResultAction(ShuangZiSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1609, 10, 1 )
	RegCurTrigger( 16091 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1609, 20, 1 )
	RegCurTrigger( 16092 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1609, 30, 1 )
	RegCurTrigger( 16093 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1609, 40, 1 )
	RegCurTrigger( 16094 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1609, 50, 1 )
	RegCurTrigger( 16095 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1609, 60, 1 )
	RegCurTrigger( 16096 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1609, 70, 1 )
	RegCurTrigger( 16097 )
----------------------------------------------ѕЮР·Ц®єЈµБ№э№ШЅ±Аш----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	
	DefineMission (5863, "ѕЮР·Ц®єЈµБ№э№ШЅ±Аш", 1610)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅѕЮР·№¬КШУЎєНКЁЧУ№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1610)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(HasRecord,1476)
	MisBeginCondition(HasRecord,1477)
	MisBeginCondition(HasRecord,1600)
	MisBeginCondition(HasRecord,1479)
	MisBeginCondition(HasRecord,1480)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1610)
	MisBeginAction(AddMission,1610)
	MisBeginAction(AddTrigger, 16101, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16102, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16103, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16104, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16105, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16106, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16107, TE_GETITEM, 2574, 1 )		
	MisCancelAction(ClearMission, 1610)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>»№ФЪУМФҐКІГґ?їмАґ¶Т»»Ѕ±Аш°Й")
	MisResultTalk("<t>ПВТ»№¬КЗКЁЧУ№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1610)
	MisResultCondition(NoRecord,1610)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1610)
	MisResultAction(SetRecord,  1610 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 2, 4)
	MisResultAction(AddMoney,2000000,2000000)
	MisResultAction(ShuangZiHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2568)	
	TriggerAction( 1, AddNextFlag, 1610, 10, 1 )
	RegCurTrigger( 16101 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2569)	
	TriggerAction( 1, AddNextFlag, 1610, 20, 1 )
	RegCurTrigger( 16102 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2570)	
	TriggerAction( 1, AddNextFlag, 1610, 30, 1 )
	RegCurTrigger( 16103 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2571)	
	TriggerAction( 1, AddNextFlag, 1610, 40, 1 )
	RegCurTrigger( 16104 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2572)	
	TriggerAction( 1, AddNextFlag, 1610, 50, 1 )
	RegCurTrigger( 16105 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2573)	
	TriggerAction( 1, AddNextFlag, 1610, 60, 1 )
	RegCurTrigger( 16106 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2574)	
	TriggerAction( 1, AddNextFlag, 1610, 70, 1 )
	RegCurTrigger( 16107 )

	--------------------------------------------ѕЮР·Ц®ґ¬і¤№э№ШЅ±Аш----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	
	DefineMission (5864, "ѕЮР·Ц®ґ¬і¤№э№ШЅ±Аш", 1611)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅѕЮР·№¬КШУЎєНКЁЧУ№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1611)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(HasRecord,1481)
	MisBeginCondition(HasRecord,1482)
	MisBeginCondition(HasRecord,1483)
	MisBeginCondition(HasRecord,1484)
	MisBeginCondition(HasRecord,1485)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1611)
	MisBeginAction(AddMission,1611)   
	MisBeginAction(AddTrigger, 16111, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16112, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16113, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16114, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16115, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16116, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16117, TE_GETITEM, 2574, 1 )	
	MisCancelAction(ClearMission, 1611)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>»№ФЪУМФҐКІГґ?їмАґ¶Т»»Ѕ±Аш°Й")
	MisResultTalk("<t>ПВТ»№¬КЗКЁЧУ№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1611)
	MisResultCondition(NoRecord,1611)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1611)
	MisResultAction(SetRecord,  1611 )
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 3877, 3, 4)
	MisResultAction(AddMoney,3000000,3000000)
	MisResultAction(ShuangZiCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2568)	
	TriggerAction( 1, AddNextFlag, 1611, 10, 1 )
	RegCurTrigger( 16111 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2569)	
	TriggerAction( 1, AddNextFlag, 1611, 20, 1 )
	RegCurTrigger( 16112 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2570)	
	TriggerAction( 1, AddNextFlag, 1611, 30, 1 )
	RegCurTrigger( 16113 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2571)	
	TriggerAction( 1, AddNextFlag, 1611, 40, 1 )
	RegCurTrigger( 16114 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2572)	
	TriggerAction( 1, AddNextFlag, 1611, 50, 1 )
	RegCurTrigger( 16115 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2573)	
	TriggerAction( 1, AddNextFlag, 1611, 60, 1 )
	RegCurTrigger( 16116 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2574)	
	TriggerAction( 1, AddNextFlag, 1611, 70, 1 )
	RegCurTrigger( 16117 )


----------------------------------------соений праздик для ужина крабами

	DefineMission( 5865, "ЅрЗпК®ФВзН·ЧјЩЖЪіФГ«Р· ", 1208 )

	MisBeginTalk("<t>ЅрЗпК®ФВЈ¬ХэКЗіФР·µД»ЖЅрјСјѕЈЎ<n><t>ЅьАґОТФЪґє·зХтС°µГТ»±ѕЕлР·ГШ·ЅЈ¬ѕЭЛµУЙґЛ·ЅЕлЦуµДГ«Р·Ј¬УРТвПлІ»µЅµДР§№ыЈ¬І»ЦЄДъїЙёРРЛИ¤Јї")

	MisBeginCondition(NoMission, 1208)
	MisBeginCondition(NoRecord, 1208)
	MisBeginAction(AddMission, 1208)
	MisBeginAction(AddTrigger, 12081, TE_GETITEM, 4490, 1)          
	MisBeginAction(AddTrigger, 12082, TE_GETITEM, 4426, 2)
	MisBeginAction(AddTrigger, 12083, TE_GETITEM, 4393, 8)

	MisCancelAction(ClearMission,1208)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>ОТЛдѕ«НЁЕлвїЈ¬µ«Ф­ІДБП»№РиДгµД°пЦъЎЈМъјЧР·(јУДЙ1773,2517)ЙнЙП1·Э<yР·їЗ>КЗГАО¶ёЯМАµДµНБПЈ¬ОА±шР·(јУДЙ1783,2507)ЙнЙП2ёц<y·жАыµДР·ЗЇ>ДЬ°СР·ИвЗРёоµГёьОЄѕщФИЈ¬¶ш8·ЭУІјЧР·(ЙоА¶994,857)ЙнЙП<yОЮ·ЁКіУГµДР·ЅЕ>ФтКЗЕлЦуґЛІЛµД№ШјьЈЎ")
	MisNeed(MIS_NEED_ITEM, 4490, 1, 10, 1)               ---------Р·їЗ
	MisNeed(MIS_NEED_ITEM, 4426, 2, 20, 2)               ---------·жАыµДР·ЗЇ
	MisNeed(MIS_NEED_ITEM, 4393, 8, 30, 8)               ---------ОЮ·ЁКіУГµДР·ЅЕ

	MisHelpTalk("<t>ЧРПёХТµЅХвР©Ф­ІДБПЈ¬ОТµДішТХТ»¶ЁІ»»бИГДгК§НыЈЎ")
	MisResultTalk("<t>ёПЅфіўіўПКГАµДГ«Р·КўСзЈ¬Т»¶ЁµГБфТвЛьµДР§№ыЕ¶ЈЎ№ъЗм14МмЈ¬ХжЗйОЄДъЕлвїР·ИвґуІНЈ¬»¶У­ФЩґОЖ·іўЈЎ")

	MisResultCondition(HasMission, 1208)
	MisResultCondition(NoRecord, 1208)
	MisResultCondition(HasItem, 4490, 1)
	MisResultCondition(HasItem, 4426, 2)
	MisResultCondition(HasItem, 4393, 8)

	MisResultAction(TakeItem, 4490, 1)
	MisResultAction(TakeItem, 4426, 2)
	MisResultAction(TakeItem, 4393, 8)

	MisResultAction(GiveItem, 0048, 1, 4)                          ---------Г«Р·
	MisResultAction(ClearMission, 1208)                        
	MisResultAction(SetRecord, 1208)
	MisResultAction(ClearRecord, 1208)                          ----------ИООсїЙТФ·ґёґЅУ
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4490)
	TriggerAction(1, AddNextFlag, 1208, 10, 1)
	RegCurTrigger(12081)


	InitTrigger()
	TriggerCondition(1, IsItem, 4426)
	TriggerAction(1, AddNextFlag, 1208, 20, 2)
	RegCurTrigger(12082)


	InitTrigger()
	TriggerCondition(1, IsItem, 4393)
	TriggerAction(1, AddNextFlag, 1208, 30, 8)
	RegCurTrigger(12083)


----------------------------------------ЅрЗпК®ФВґуХўР·»о¶ЇЈЁ¶юЈ©---------°ЧТшіЗАПДМДМЎ¤±ґµЩЈЁ2277,2769Ј©

	DefineMission(5866,"ЅрЗпК®ФВґЅіЭБфПгґуХўР·",1209)

	MisBeginTalk("<t>ґуХўР·АъАґПнУРР·ЦРЦ®НхµДГАУюЈ¬УЙОТ°ѕЦуµДґуХўР·ёьКЗѕЯ±ёПКЎўПгЎўДЫЎўЛ¬µДМШµгЈ¬іФєуИГДгЙсЗеЖшЛ¬Ј¬Ул№ЦОпХЅ¶·ѕ­Сй·ЙФцЈЎІ»ЦЄДъКЗ·сУРРЛИ¤Ж·іўЈї")

	
	MisBeginCondition(NoMission, 1209)
	MisBeginCondition(NoRecord, 1209)
	MisBeginAction(AddMission,1209)
	MisBeginAction(AddTrigger, 12091, TE_GETITEM, 4342, 1)
	MisBeginAction(AddTrigger, 12092, TE_GETITEM, 4793, 2)
	MisBeginAction(AddTrigger, 12093, TE_GETITEM, 4500, 1)
	MisBeginAction(AddTrigger, 12094, TE_GETITEM, 0057, 1)


	MisCancelAction(ClearMission, 1209)

	MisNeed(MIS_NEED_DESP, "<t>ЕлЦЖґЛР·ЛщРиµДФ­БПТа·ЗіЈїјѕїЈ¬іэБЛОА±шР·(јУДЙ1783,2507)ЙнЙП1ёц<yјбУІµДР·їЗ>Ј¬і¤ИЮР·(єЈµЧЛнµА349, 376)ЙнЙП2ёц<yі¤ИЮР·ЗЇ>Ј¬МъјЧР·Нх(јУДЙ1783,2507)ЙнЙП1ёц<yРЙємµДР·їЗ>Ј¬»№РиЙМіЗАпіцКЫµД1ёщ<yР·Йю>Ј¬ґЛЙюДЬА¦Р·Ц®ѕ«»ЄЈ¬ЦЖР·Ц®ѕ«Ж·ЎЈ")
       
	
	MisNeed(MIS_NEED_ITEM, 4342, 1, 10, 1)                       ---------јбУІµДР·їЗ
	MisNeed(MIS_NEED_ITEM, 4793, 2, 20, 2)                       ---------і¤ИЮР·ЗЇ
	MisNeed(MIS_NEED_ITEM, 4500, 1, 30, 1)                       ---------РЙємµДР·їЗ
	MisNeed(MIS_NEED_ITEM, 0057, 1, 40, 1)                       ---------Р·Йю

	MisHelpTalk("<t>ЧЭИ»Ф­ІДБПµДКХјЇКЗТ»јю·ЗіЈРБїаµДКВЈ¬µ«ПаРЕЖ·іў№эГАО¶µДґуХўР·єуЈ¬Дг»бОЄЧФјєµДЕ¬Б¦¶шёРµЅЧФєАЈЎ")
	MisResultTalk("<t>ПКПгґуХўР·іцВЇЈ¬јЗµГХдП§КіУГЦ®єу20±¶ѕ­СйµДі¬ЦµР§№ыаёЈЎ№ъЗмі¤јЩЈ¬УлДъ·ЦПнГШЦЖГАО¶ЕлР·ґуІНЈ¬»¶У­ФЩґЛЖ·іўЈЎ")

	MisResultCondition(HasMission, 1209)
	MisResultCondition(NoRecord, 1209)
	MisResultCondition(HasItem, 4342, 1)
	MisResultCondition(HasItem, 4793, 2)
	MisResultCondition(HasItem, 4500, 1)
	MisResultCondition(HasItem, 0057, 1)

	MisResultAction(TakeItem, 4342, 1)
	MisResultAction(TakeItem, 4793, 2)
	MisResultAction(TakeItem, 4500, 1)
	MisResultAction(TakeItem, 0057, 1)

	MisResultAction(GiveItem, 0056, 1, 4)                                   ---------ґуХўР·
	MisResultAction(ClearMission, 1209)
	MisResultAction(SetRecord, 1209)
	MisResultAction(ClearRecord, 1209)                                   ----------ИООсїЙТФ·ґёґЅУ
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4342)
	TriggerAction(1, AddNextFlag, 1209, 10, 1)
	RegCurTrigger(12091)


	InitTrigger()
	TriggerCondition(1, IsItem, 4793)
	TriggerAction(1, AddNextFlag, 1209, 20, 2)
	RegCurTrigger(12092)

	InitTrigger()
	TriggerCondition(1, IsItem, 4500)
	TriggerAction(1, AddNextFlag, 1209, 30, 1)
	RegCurTrigger(12093)

	InitTrigger()
	TriggerCondition(1, IsItem, 0057)
	TriggerAction(1, AddNextFlag, 1209, 40, 1)
	RegCurTrigger(12094)


----------------------------------------ЅрЗпК®ФВґуХўР·»о¶ЇЈЁИэЈ©---------°ЧТшіЗАПДМДМЎ¤±ґµЩЈЁ2277,2769Ј©

	DefineMission(5867, "ЅрЗпК®ФВВъ»іЖЪґэУэР·Гз", 1210)

	MisBeginTalk("<t>ёщѕЭХв±ѕЕлвїГШ·ЅЙПµДјЗФШЈ¬УЙѕ«БјР·ГзЕаУэ¶шіцµДР·НхїЙКЗѕЯ±ёОЮТФВЧ±ИµДЙэј¶№¦Р§ЈЎКЗОЄУВКїЦ®ѕ«Ж·ЈЎ¶шХвР·Гз±ѕЙнТаУµУРЙсЖжР§№ыЈ¬І»ЦЄДъїЙёРРЛИ¤Јї")

	MisBeginCondition(NoMission, 1210)
	MisBeginCondition(NoRecord, 1210)
	MisBeginAction(AddMission, 1210)
	MisBeginAction(AddTrigger, 12101, TE_KILL, 273, 10)
	MisBeginAction(AddTrigger, 12102, TE_KILL, 186, 10)
	MisBeginAction(AddTrigger, 12103, TE_GETITEM, 4259, 5)
	MisBeginAction(AddTrigger, 12104, TE_GETITEM, 4890, 5)


	MisCancelAction(ClearMission, 1210)

	MisNeed(MIS_NEED_DESP, "<t>СшУэР·ГзїЙКЗјюј¬КЦµДКВ¶щЈ¬ХвјёИХОТ±»і¤ИЮР·ЎўЙіР·ЅБµГОЮ·ЁјЇЦРѕ«ЙсЈ¬ДъїЙ·сОЄОТЅвѕцєу№ЛЦ®УЗДШЈїПыГрО»УЪ(єЈµЧЛнµА349, 376)µД10Ц»<yі¤ИЮР·>єНО»УЪ(Д§Е®Ц®єЈ1341,3010)µД10Ц»<yЙіР·>Ј¬ІўЛіґш°СЛьГЗІШДдµД5·Э<y»рИЮ>єН5·Э<yУРЙіЧУµДР·Ив>ґш»ШАґЈЎ")
	MisNeed(MIS_NEED_KILL, 273, 10, 10, 10)                  ----------і¤ИЮР·
	MisNeed(MIS_NEED_KILL, 186, 10, 20, 10)                  ----------ЙіР·
	MisNeed(MIS_NEED_ITEM, 4259, 5, 30, 5)                  -----------»рИЮ
	MisNeed(MIS_NEED_ITEM, 4890, 5, 40, 5)                  -----------УРЙіЧУµДР·Ив



	MisHelpTalk("<t>ДгїЙТЄРЎРДУ¦¶ФДЗР©ЅЖ»«µДі¤ИЮР·єНЙіР·Ј¬ОТ»бФщУлДг1·Э<yР·Гз>ЧчОЄ»Ш±ЁаёЈЎ")
	MisResultTalk("<t>Хв·ЭИбДЫµДР·ГзРиТЄДг·ЕЦГФЪ<y±і°ьµЪ2Аё>(·ЕЦГѕ«БйµДО»ЦГ)Ј¬<y5Мм>(7200·ЦЦУ)µДѕ«РДєЗ»¤Ј¬·ЅДЬµЅОТХвЕлвїОЄчТчСґуІНЈЎІ»№эЈ¬ѕЭЛµЙМіЗАп»біцКЫТ»ЦЦДЬёьїмґМј¤Р·ГзіЙі¤µД<yі¬ј¶Р·УГј¤ЛШ>Ј¬ДгИфУРґЛОпїЙЦ±ЅУАґХТОТЈЎСшУэР·ГзХжКЗІ»јтµҐДЕЈ¬Из№ыѕхµГХвР©КВ¶јєЬАНЙс·іРДЈ¬ДЗГґЦ±ЅУКіУГХв·ЭР·ГзЈ¬Фт»бёшДгґшАґМбЙэ1000µгѕ­СйµДѕЄПІЈЎ")
	
	MisResultCondition(HasMission, 1210)
	MisResultCondition(NoRecord, 1210)
	MisResultCondition(HasFlag, 1210, 19)
	MisResultCondition(HasFlag, 1210, 29)
	MisResultCondition(HasItem, 4259, 5)
	MisResultCondition(HasItem, 4890, 5)

	MisResultAction(TakeItem, 4259, 5)
	MisResultAction(TakeItem, 4890, 5)


	MisResultAction(ClearMission, 1210)
	MisResultAction(SetRecord, 1210)
	MisResultAction(ClearRecord, 1210)                                   ----------ИООсїЙТФ·ґёґЅУ
	MisResultAction(Givecrab, 0058)                                   ---------Р·Гз
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsMonster, 273)
	TriggerAction(1, AddNextFlag, 1210, 10, 10)
	RegCurTrigger(12101)

	InitTrigger()
	TriggerCondition(1, IsMonster, 186)
	TriggerAction(1, AddNextFlag, 1210, 20, 10)
	RegCurTrigger(12102)

	InitTrigger()
	TriggerCondition(1, IsItem, 4259)
	TriggerAction(1, AddNextFlag, 1210, 30, 5)
	RegCurTrigger(12103)

	InitTrigger()
	TriggerCondition(1, IsItem, 4890)
	TriggerAction(1, AddNextFlag, 1210, 40, 5)
	RegCurTrigger(12104)



-----------------------------kokora---------------------------------------
---------------------------reading_talk02 ()----Чиновник Экспертизы-------------------------------

-------------------------------------------	Экзамен 2
	DefineMission( 6138, "\221\234\231\224\236\229\237 2", 1211 )
	MisBeginTalk( "<t>В моём задании нет ни чего сложного: Принеси <b30 Эльфийских фруктов> и всё." )
	MisBeginCondition( CheckXSZCh,2 )				------
	MisBeginCondition( HasItem , 3280,1 )
	MisBeginCondition( HasNoItem, 3282)
	MisBeginCondition( NoMission ,1211)
	MisBeginAction( AddMission, 1211)
	MisBeginAction(AddTrigger, 12111, TE_GETITEM, 3116, 30 )--
	MisCancelAction( ClearMission, 1211)

	MisNeed(MIS_NEED_ITEM, 3116, 30, 10, 30 )
	MisHelpTalk( "<t>Я не буду разговаривать до тех пор пока не увижу <b30 Эльфийских фруктов>." )

	MisResultTalk( "<t>Школьная программа очень важна " )
	MisResultCondition( HasMission, 1211)
	MisResultCondition( HasItem, 3116, 30)
	MisResultAction( TakeItem, 3116, 30)
	MisResultAction( ClearMission, 1211)
	MisResultAction( GiveItem, 3282, 1, 4)--листок с ответами на экзамен

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1211, 10, 30 )
	RegCurTrigger( 12111 )


--------------------------------------------------------------------Свадьба

	DefineMission( 6139, "\209\238\245\240\224\237\229\237\232\229", 1212 )--Сохранение
	MisBeginTalk( "<t>Помоги мне собрать имя <bP-E-I-M-E-N-G>.Я же в свою очередь тебя щедро отблагодарю. В<b(271,1775)> более подробно Вам всё расскажут." )
	MisBeginCondition(NoMission, 1212)
	MisBeginCondition(NoRecord,1212)
	MisBeginAction(AddMission,1212)
	MisBeginAction(AddTrigger, 12121, TE_GETITEM, 3854, 2)
	MisBeginAction(AddTrigger, 12122, TE_GETITEM, 3858, 1)
	MisBeginAction(AddTrigger, 12123, TE_GETITEM, 3863, 1)
	MisBeginAction(AddTrigger, 12124, TE_GETITEM, 3865, 1)
	MisBeginAction(AddTrigger, 12125, TE_GETITEM, 3862, 1)
	MisBeginAction(AddTrigger, 12126, TE_GETITEM, 3856, 1)
	
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания " )

	MisNeed(MIS_NEED_DESP, " Соберите <bP-E-I-M-E-N-G> и возвращайтесь в точку (2229,2782)." )
	MisNeed(MIS_NEED_ITEM, 3854, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 3858, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3863, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 3865, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 3862, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3856, 1, 60, 1)

	MisHelpTalk( "<t>Соберите имя <bP-E-I-M-E-N-G>." )
	MisResultTalk( "<t>Вы настоящий Герой, держите награду." )

	MisResultCondition(HasMission, 1212)
	MisResultCondition(NoRecord,1212)
	MisResultCondition(HasItem, 3854, 2)
	MisResultCondition(HasItem, 3858, 1)
	MisResultCondition(HasItem, 3863, 1)
	MisResultCondition(HasItem, 3865, 1)
	MisResultCondition(HasItem, 3862, 1)
	MisResultCondition(HasItem, 3856, 1)

	MisResultAction(TakeItem, 3854, 2 )
	MisResultAction(TakeItem, 3858, 1 )
	MisResultAction(TakeItem, 3863, 1 )
	MisResultAction(TakeItem, 3865, 1 )
	MisResultAction(TakeItem, 3862, 1 )
	MisResultAction(TakeItem, 3856, 1 )

	
	MisResultAction(GiveItem, 3673,1,4)------------подарок лета
	MisResultAction(ClearMission, 1212)
	MisResultAction(ZSSTOP)
	MisResultAction(SetRecord, 1212)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 3854)	
	TriggerAction( 1, AddNextFlag, 1212, 10, 2 )
	RegCurTrigger( 12121 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3858)	
	TriggerAction( 1, AddNextFlag, 1212, 20, 1 )
	RegCurTrigger( 12122 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3863)	
	TriggerAction( 1, AddNextFlag, 1212, 30, 1 )
	RegCurTrigger( 12123 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3865)	
	TriggerAction( 1, AddNextFlag, 1212, 40, 1 )
	RegCurTrigger( 12124 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3862)	
	TriggerAction( 1, AddNextFlag, 1212, 50, 1 )
	RegCurTrigger( 12125 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3856)	
	TriggerAction( 1, AddNextFlag, 1212, 60, 1 )
	RegCurTrigger( 12126 )

	----------------------------------------------------------Путешествие в Одинокую Башню

	DefineMission( 6140, "\207\243\242\229\248\229\241\242\226\232\229 \226 \206\228\232\237\238\234\243\254 \193\224\248\237\254", 1213 )
	MisBeginTalk( "<t>Так как я вижу, что человек Вы хороший я Вам подскажу, что первую букву Вы сможете найти в одинокой башне в точке (263,260) у моего <pПомошника>." )
				
	MisBeginCondition(NoMission, 1213)
	MisBeginCondition(NoRecord,1213)
	MisBeginCondition(HasMission, 1212)
	MisBeginCondition(NoRecord, 1212)
	MisBeginAction(AddMission,1213)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания " )

	MisNeed(MIS_NEED_DESP, " Поговорите с <pПомошником семьи Локк> в точке (263,260) Одинокой Башни 1." )
	
	MisHelpTalk( "<t>Вы не хотите идти в Одинокую Башню?" )
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------Путешествие в Одинокую Башню--Помошник семьи Локк

	DefineMission( 6141, "\207\243\242\229\248\229\241\242\226\232\229 \226 \206\228\232\237\238\234\243\254 \193\224\248\237\254", 1213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Вас послал мой Хозяин Локк? Я Вам дам карту только при одном условии..." )
	MisResultCondition(NoRecord, 1213)
	MisResultCondition(HasMission,1213)
	MisResultAction(ClearMission,1213)
	MisResultAction(SetRecord, 1213)


	---------------------------------------------Недовольсво работника
	DefineMission( 6142, "\205\229\228\238\226\238\235\252\241\226\238 \240\224\225\238\242\237\232\234\224", 1214 )

      MisBeginTalk( "<t>Я отдам Вам эту карту при условии, что и Вы мне поможете<n><t>Принесите мне <b25 Заточенных длинных туземных копьи>, <b25 Литых железных поясов ящера>, <b25 Живых сердец природы>, <b25 Клешней раздраженного краба>." )

      MisBeginCondition(NoRecord,1214)
      MisBeginCondition(NoMission,1214)
      MisBeginCondition(HasRecord, 1213)
      MisBeginAction(AddMission,1214)
      MisBeginAction(AddTrigger, 12141, TE_GETITEM, 4739, 25 )--Заточенное длинное туземное копье
      MisBeginAction(AddTrigger, 12142, TE_GETITEM, 4740, 25 )--Литой железный пояс ящера
      MisBeginAction(AddTrigger, 12143, TE_GETITEM, 4741, 25 )--Живое сердце природы               
      MisBeginAction(AddTrigger, 12144, TE_GETITEM, 1486, 25 )--Клешня раздраженного краба               
      MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания " )

      MisNeed(MIS_NEED_DESP, " Принесите <b25 Заточенных длинных туземных копьи>, <b25 Литых железных поясов ящера>, <b25 Живых сердец природы>, <b25 Клешней раздраженного краба>!" )
      MisNeed(MIS_NEED_ITEM, 4739, 25,  1, 25 )
      MisNeed(MIS_NEED_ITEM, 4740, 25, 26, 25 )
      MisNeed(MIS_NEED_ITEM, 4741, 25,  51, 25 )
      MisNeed(MIS_NEED_ITEM, 1486, 25,  76, 25 )

      MisHelpTalk( "<t>Принисите мне эти вещи." )  
      MisResultTalk( "<t>Вы добыли для меня всё что я хотел, эта карта P Ваша.")
      MisResultCondition(HasMission,1214 )
      MisResultCondition(NoRecord,1214)
      MisResultCondition(HasItem, 4739, 25 )
      MisResultCondition(HasItem, 4740, 25 )
      MisResultCondition(HasItem, 4741, 25 )
      MisResultCondition(HasItem, 1486, 25 )

	MisResultAction(TakeItem, 4739, 25 )
	MisResultAction(TakeItem, 4740, 25 )
	MisResultAction(TakeItem, 4741, 25 )
	MisResultAction(TakeItem, 1486, 25 )

      MisResultAction(GiveItem, 3865, 1, 4 )--Карта P
      MisResultAction(ClearMission, 1214 )
      MisResultAction(SetRecord, 1214)
      MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 1214, 1, 25 )
	RegCurTrigger( 12141 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4740)	
	TriggerAction( 1, AddNextFlag, 1214, 26, 25 )
	RegCurTrigger( 12142 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4741)	
	TriggerAction( 1, AddNextFlag, 1214, 51, 25 )
	RegCurTrigger( 12143 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1486)	
	TriggerAction( 1, AddNextFlag, 1214, 76, 25 )
	RegCurTrigger( 12144 )
  
----------------------------------------------------------Загадочная Служанка

	DefineMission( 6143, "\199\224\227\224\228\238\247\237\224\255 \209\235\243\230\224\237\234\224", 1215 )
	MisBeginTalk("<t>На сколько я помню на втором этаже башни в (151,134) есть служанка... Отправляйтесь к ней. Удачи." )
				
	MisBeginCondition(NoMission, 1215)
	MisBeginCondition(NoRecord,1215)
	MisBeginCondition(HasRecord, 1214)
	MisBeginAction(AddMission,1215)
	MisCancelAction(SystemNotice, " Вы не можите отказаться от этого задания " )

	MisNeed(MIS_NEED_DESP, " Отправляйтесь в Башню 2 и отыщите служанку в точке (151,134)." )
	
	MisHelpTalk( "<t>Если Вы ещё не передумали собрать все карты то отправляйтесь во вторую башню немедленно." )
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------Загадочная Служанка
	DefineMission( 6144, "\199\224\227\224\228\238\247\237\224\255 \209\235\243\230\224\237\234\224", 1215, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Я очень люблю легенды, но я не легенда, и ни чего во мне нет загадочного." )
	MisResultCondition(NoRecord, 1215)
	MisResultCondition(HasMission,1215)
	MisResultAction(ClearMission,1215)
	MisResultAction(SetRecord, 1215)

	---------------------------------------------Рецепты лекарств семьи Локк--Лекарство от говорливости
	DefineMission( 6145, "\203\229\234\224\240\241\242\226\238 \238\242 \227\238\226\238\240\235\232\226\238\241\242\232", 1216 )

      MisBeginTalk( "<t>У меня есть один только минус - я слишком говорливая, но и это можно вылечить, если Вы, конечно, мне поможете раздобыть: <b35 Темных кровавых тел>, <b35 Терранских кирок> и <b35 Тяжелых терранских боевых топоров>." )

      MisBeginCondition(NoRecord,1216)
      MisBeginCondition(NoMission,1216)
      MisBeginCondition(HasRecord, 1215)
      MisBeginAction(AddMission,1216)
      MisBeginAction(AddTrigger, 12161, TE_GETITEM, 4742, 35 )--Темное кровавое тело
      MisBeginAction(AddTrigger, 12162, TE_GETITEM, 4743, 35 )--Терранская кирка
      MisBeginAction(AddTrigger, 12163, TE_GETITEM, 4745, 35 )--Тяжелый терранский боевой топор
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания " )

      MisNeed(MIS_NEED_DESP, " Принесите индигриенты для лекарства от болтливости <b35 Темных кровавых тел>, <b35 Терранских кирок> и <b35 Тяжелых терранских боевых топоров>!" )
      MisNeed(MIS_NEED_ITEM, 4742, 35,  1, 35 )
      MisNeed(MIS_NEED_ITEM, 4743, 35, 36, 35 )
      MisNeed(MIS_NEED_ITEM, 4745, 35,  71, 35 )

      MisHelpTalk( "<t>У меня болит язык, поторопитесь, я мечтаю излечиться от этого проклятия." )  
      MisResultTalk("<t>Спасибо тебе милый человек, эта карта тебе в знак моей благодарности." )
      MisResultCondition(HasMission,1216 )
      MisResultCondition(NoRecord,1216)
      MisResultCondition(HasItem, 4742, 35 )
      MisResultCondition(HasItem, 4743, 35 )
      MisResultCondition(HasItem, 4745, 35 )

	MisResultAction(TakeItem, 4742, 35 )
	MisResultAction(TakeItem, 4743, 35 )
	MisResultAction(TakeItem, 4745, 35 )


      MisResultAction(GiveItem, 3854, 1, 4 )--Карта E
      MisResultAction(ClearMission, 1216 )
      MisResultAction(SetRecord, 1216)
      MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4742)	
	TriggerAction( 1, AddNextFlag, 1216, 1, 35 )
	RegCurTrigger( 12161 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4743)	
	TriggerAction( 1, AddNextFlag, 1216, 36, 35 )
	RegCurTrigger( 12162 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4745)	
	TriggerAction( 1, AddNextFlag, 1216, 71, 35 )
	RegCurTrigger(12163 )

----------------------------------------------------------Тайна горничной

	DefineMission( 6146, "\210\224\233\237\224 \241\229\236\252\232 \203\238\234\234", 1217 )--Тайна семьи Локк
	MisBeginTalk( "<t>На третьем этаже башни находится девушка, она была горничной семьи Локк. Возможно у неё есть то, что Вас сможет заинтересовать. Навестите её." )
				
	MisBeginCondition(NoMission, 1217)
	MisBeginCondition(NoRecord,1217)
	MisBeginCondition(HasRecord, 1216)
	MisBeginAction(AddMission,1217)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Поговорите с Горничной в <pОдинокой Башне 3> в точке (63,311)." )
	
	MisHelpTalk( "<t>Как?! Разве Вы еще не встречались с горничной? Так чего же Вы ждете? Отправляйтесь немедленно!" )
	MisResultCondition(AlwaysFailure)

	-----------------------------------------Тайна семьи Локк

	DefineMission( 6147, "\210\224\233\237\224 \241\229\236\252\232 \203\238\234\234", 1217, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Кто Вам сказал, что мои отношения с Локк не нормальные, не верьте - это всего лишь слухи." )
	MisResultCondition(NoRecord, 1217)
	MisResultCondition(HasMission,1217)
	MisResultAction(ClearMission,1217)
	MisResultAction(SetRecord, 1217)

	-------------------------------------------------------------------- Маленький Секретик

	DefineMission( 6148, "\204\224\235\229\237\252\234\232\233 \209\229\234\240\229\242\232\234", 1218 )
	MisBeginTalk( "<t>У меня есть прекрасная мечта, я хочу научиться летать. Но для этого мне нужны крылья. А как я их сделаю без материала? Не могли бы Вы мне найти его?" )
	MisBeginCondition(NoMission, 1218)
	MisBeginCondition(NoRecord,1218)
	MisBeginCondition(HasRecord, 1217)
	MisBeginAction(AddMission,1218)
	MisBeginAction(AddTrigger, 12181, TE_GETITEM, 1501, 20)--Сломанный пояс черной рыси
	MisBeginAction(AddTrigger, 12182, TE_GETITEM, 1490, 20)--Шипастая лапа черной рыси
	MisBeginAction(AddTrigger, 12183, TE_GETITEM, 4748, 20)--Сломанные терранские серьги
	MisBeginAction(AddTrigger, 12184, TE_GETITEM, 4749, 20)--Большой гаечный ключ
	MisBeginAction(AddTrigger, 12185, TE_GETITEM, 4725, 20)--Сломанный охотничий лук
	MisBeginAction(AddTrigger, 12186, TE_GETITEM, 4747, 20)--Лапа белой рыси
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Принестие: <b20 Сломанных поясов чёрной рыси>, <b20 Шипастых лап черной рыси>, <b20 Сломанных терранских серьг>, <b20 Больших гаечных ключей>, <b20 Сломанных охотничьих луков> и <b20 Лап белой рыси>." )
	MisNeed(MIS_NEED_ITEM, 1501, 20, 1, 20)
	MisNeed(MIS_NEED_ITEM, 1490, 20, 21, 20)
	MisNeed(MIS_NEED_ITEM, 4748, 20, 41, 20)
	MisNeed(MIS_NEED_ITEM, 4749, 20, 61, 20)
	MisNeed(MIS_NEED_ITEM, 4725, 20, 81, 20)
	MisNeed(MIS_NEED_ITEM, 4747, 20, 101, 20)

	MisHelpTalk( "<t>Мне кажется, что я дотронулся до облаков." )
	MisResultTalk( "<t>Спасибо за помощь, я так и не смог взлететь, но на то это и мечта." )

	MisResultCondition(HasMission, 1218)
	MisResultCondition(NoRecord,1218)
	MisResultCondition(HasItem, 1501, 20)
	MisResultCondition(HasItem, 1490, 20)
	MisResultCondition(HasItem, 4748, 20)
	MisResultCondition(HasItem, 4749, 20)
	MisResultCondition(HasItem, 4725, 20)
	MisResultCondition(HasItem, 4747, 20)

	MisResultAction(TakeItem, 1501, 20 )
	MisResultAction(TakeItem, 1490, 20 )
	MisResultAction(TakeItem, 4748, 20 )
	MisResultAction(TakeItem, 4749, 20 )
	MisResultAction(TakeItem, 4725, 20 )
	MisResultAction(TakeItem, 4747, 20 )

	
	MisResultAction(GiveItem, 3858,1,4)------------Карта I
	MisResultAction(ClearMission, 1218)
	MisResultAction(SetRecord, 1218)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 1501)	
	TriggerAction( 1, AddNextFlag, 1218, 1, 20 )
	RegCurTrigger( 12181 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1490)	
	TriggerAction( 1, AddNextFlag, 1218, 21, 20 )
	RegCurTrigger( 12182 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4748)	
	TriggerAction( 1, AddNextFlag, 1218, 41, 20 )
	RegCurTrigger( 12183 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4749)	
	TriggerAction( 1, AddNextFlag, 1218, 61, 20 )
	RegCurTrigger( 12184 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4725)	
	TriggerAction( 1, AddNextFlag, 1218, 81, 20 )
	RegCurTrigger( 12185 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4747)	
	TriggerAction( 1, AddNextFlag, 1218, 101, 20 )
	RegCurTrigger( 12186 )

	----------------------------------------------------------Злой хранитель

	DefineMission( 6149, "\199\235\238\233 \245\240\224\237\232\242\229\235\252", 1219 )
	MisBeginTalk( "<t>Отпрвляйтесь в Одинокую Башню 4 в точку(261,70). Молите Бога, что бы этот злодей <pОхранник симьи Локк> дал Вам карту." )
				
	MisBeginCondition(NoMission, 1219)
	MisBeginCondition(NoRecord,1219)
	MisBeginCondition(HasRecord, 1218)
	MisBeginAction(AddMission,1219)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Поговорите с Злым Хранителем в точке (261,70)Одинокой башни 4" )
	
	MisHelpTalk( "<t>Вам страшно?" )
	MisResultCondition(AlwaysFailure)
	
	-----------------------------------------Охранник семьи Локк--Злой хранитель

	DefineMission( 6150, "\199\235\238\233 \245\240\224\237\232\242\229\235\252", 1219, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Не знаю сколько должно пройти времени, что бы люди начали уважать друг друга." )
	MisResultCondition(NoRecord, 1219)
	MisResultCondition(HasMission,1219)
	MisResultAction(ClearMission,1219)
	MisResultAction(SetRecord, 1219)

--------------------------------------------------------------------Охранник семьи Локк--Человек есть человек

	DefineMission( 6151, "\215\229\235\238\226\229\234 \229\241\242\252 \247\229\235\238\226\229\234", 1220 )
	MisBeginTalk( "<t>Почему я служу охранником у семьи Локк?! Я его должник! Когда я только прибыл в это место он дал мне <p25 Лап чёрной рыси> и <p25 Нимбов падших ангелов> и пока я ему не верну в два раза больше того чего он мне дал я останусь его должником." )
	MisBeginCondition(NoMission, 1220)
	MisBeginCondition(NoRecord,1220)
	MisBeginCondition(HasRecord, 1219)
	MisBeginAction(AddMission,1220)
	MisBeginAction(AddTrigger, 12201, TE_GETITEM, 4750,50)--Лапа черной рыси
	MisBeginAction(AddTrigger, 12202, TE_GETITEM, 4763, 50)--Нимб падшего ангела
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Принести <b50 Лап чёрной рыси> и <b50 Нимбов падшего ангела> <pОхраннику семьи Локк>." )
	MisNeed(MIS_NEED_ITEM, 4750, 50, 1, 50)
	MisNeed(MIS_NEED_ITEM, 4763, 50, 51, 50)


	MisHelpTalk( "<t>Я до конца своих дней буду отдавать долг семье Локк." )
	MisResultTalk( "<t>Вы очень добрый мой друг. Спасибо Вам за освобождение. Теперь я смогу заняться своими делами. Возьмите эту карту в знак моей благодарности." )

	MisResultCondition(HasMission, 1220)
	MisResultCondition(NoRecord,1220)
	MisResultCondition(HasItem, 4750, 50)
	MisResultCondition(HasItem, 4763,50)
	MisResultAction(TakeItem, 4750, 50 )
	MisResultAction(TakeItem, 4763, 50 )
	
	MisResultAction(GiveItem, 3862,1,4)---------- Карта m
	MisResultAction(ClearMission, 1220)
	MisResultAction(SetRecord, 1220)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4750)	
	TriggerAction( 1, AddNextFlag, 1220, 1, 50 )
	RegCurTrigger( 12201 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4763)	
	TriggerAction( 1, AddNextFlag, 1220, 21, 50 )
	RegCurTrigger( 12202 )

----------------------------------------------------------Человек

	DefineMission( 6152, "\215\229\235\238\226\229\234", 1221 )
	MisBeginTalk( "<t>Хоть меня и счетают злым и безчувственным, я - в первую очередь человек и я помогу тебе в поисках карт.<n><t>Отправляйся в Одинокую Башню 5 в точку(542,54), возможно там ты сможешь приобрести ещё одну карту." )
				
	MisBeginCondition(NoMission, 1221)
	MisBeginCondition(NoRecord,1221)
	MisBeginCondition(HasRecord, 1220)
	MisBeginAction(AddMission,1221)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Идите в точку (542,54) Одинокой Башни 5" )
	
	MisHelpTalk( "<t>Спасибо тебе ещё раз друг, на 5 этаже Одинокой Башни тебя ждёт сурприз..." )
	MisResultCondition(AlwaysFailure)

	-----------------------------------------Человек

	DefineMission(6153, "\215\229\235\238\226\229\234", 1221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Приветствую тебя странник, какими судьбами ты тут?" )
	MisResultCondition(NoRecord, 1221)
	MisResultCondition(HasMission,1221)
	MisResultAction(ClearMission,1221)
	MisResultAction(SetRecord, 1221)


	--------------------------------------------------------------------Неприятности Дворецкого

	DefineMission( 6154, "\205\229\239\240\232\255\242\237\238\241\242\232 \193\224\242\235\229\240\224", 1222 )
	MisBeginTalk( "<t>Мой хозяин очень жадный и только потому , что он мне не платил, мне приходилось у него воровать, только из-за этого сэр, а ни по каким либо ещё причинам, но он узнал о том, что я у него воровал и теперь требует, что бы я всё ему вернул." )
	MisBeginCondition(NoMission, 1222)
	MisBeginCondition(NoRecord,1222)
	MisBeginCondition(HasRecord, 1221)
	MisBeginAction(AddMission,1222)
	MisBeginAction(AddTrigger, 12221, TE_GETITEM, 4770, 35)--Проклятая лапа белой рыси
	MisBeginAction(AddTrigger, 12222, TE_GETITEM, 4766, 35)--Темное сердце Леса
	MisBeginAction(AddTrigger, 12223, TE_GETITEM, 4772, 35)--Проклятая лапа черной рыси
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Принесите Дворецкому <b35 Проклятых лап белой рыси>, <b35 Тёмных сердец Леса> и <b35 Проклятых лап чёрной рыси>." )
	MisNeed(MIS_NEED_ITEM, 4770, 35, 1, 35)
	MisNeed(MIS_NEED_ITEM, 4766, 35, 36, 35)
	MisNeed(MIS_NEED_ITEM, 4772, 35, 71, 35)

	MisHelpTalk( "<t>Я прошу Вас помочь мне вернуть моему хозяину вещи, которые я у него украл." )
	MisResultTalk( "<t>Спасибо тебе друг, теперь он от меня отстанет. Возьми эту карту, может быть она тебе пригодится." )

	MisResultCondition(HasMission, 1222)
	MisResultCondition(NoRecord,1222)
	MisResultCondition(HasItem, 4770, 35)
	MisResultCondition(HasItem, 4766, 35)
	MisResultCondition(HasItem, 4772, 35)

	MisResultAction(TakeItem, 4770, 35 )
	MisResultAction(TakeItem, 4766, 35 )
	MisResultAction(TakeItem, 4772, 35 )
	
	MisResultAction(GiveItem, 3863,1,4)----------Карта n
	MisResultAction(ClearMission, 1222)
	MisResultAction(SetRecord, 1222)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4770)	
	TriggerAction( 1, AddNextFlag, 1222, 1, 35 )
	RegCurTrigger( 12221 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4766)	
	TriggerAction( 1, AddNextFlag, 1222, 36, 35 )
	RegCurTrigger( 12222 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4772)	
	TriggerAction( 1, AddNextFlag, 1222, 71, 35 )
	RegCurTrigger( 12223 )

---------------------------------------------------------Дворецкий--месть--

	DefineMission( 6155, "\194\238\231\236\229\231\228\232\229 \196\226\238\240\229\246\234\238\227\238", 1223 )--Возмездие Дворецкого
	MisBeginTalk( "<t>Я наконец понял почему на меня так нападал Локк, он влюблён в женщину,она, не смотря на свою крассоту, очень злая, вот и получается, что он страдал от её нападков и срывался на мне, не всилах обидеть свою любимую. У неё, кстате, тоже есть карта." )
				
	MisBeginCondition(NoMission, 1223)
	MisBeginCondition(NoRecord,1223)
	MisBeginCondition(HasRecord, 1222)
	MisBeginAction(AddMission,1223)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Поговорите с Любовницей Локк в точке(541,268)Одинокой Башни 6" )
	
	MisHelpTalk( "<t>Поговорите с любовницей Локк, она поможет Вам прояснить то, что произходит тут..." )
	MisResultCondition(AlwaysFailure)

	-----------------------------------------Возмездие дворецкого

	DefineMission(6156, "\194\238\231\236\229\231\228\232\229 \196\226\238\240\229\246\234\238\227\238", 1223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>От куда Вам известно, что у меня есть карта?" )
	MisResultCondition(NoRecord, 1223)
	MisResultCondition(HasMission,1223)
	MisResultAction(ClearMission,1223)
	MisResultAction(SetRecord, 1223)

--------------------------------------------------------------------Загадачная Красотка

	DefineMission( 6157, "\199\224\227\224\228\224\247\237\224\255 \202\240\224\241\238\242\234\224", 1224 )
	MisBeginTalk( "<t>Я люблю получать то, что я хочу. Всё, чего бы я ни пожелала, должно быть исполнено... Вот сейчас я хочу, что бы у меня было <b666 Металлических труб>." )
	MisBeginCondition(NoMission, 1224)
	MisBeginCondition(NoRecord,1224)
	MisBeginCondition(HasRecord, 1223)
	MisBeginAction(AddMission,1224)
	MisBeginAction(AddTrigger, 12241, TE_GETITEM, 1503, 666)--Металлическая труба
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Принесите <b666 металлических труб> любовнице Локк." )
	MisNeed(MIS_NEED_ITEM, 1503, 666, 1, 666)

	MisHelpTalk( "<t>Я хочу, что бы все мои капризы исполнялись ежеминутно!" )
	MisResultTalk( "<t>Ой! Вы это сделали ради меня? Ну признайтесь, что я Вам понравилась... Влюбились? Ну не краснейте... Вы мне тоже понравились сразу. Вот возьмите эту карту и не забывайте обо мне ни когда.")

	MisResultCondition(HasMission, 1224)
	MisResultCondition(NoRecord,1224)
	MisResultCondition(HasItem, 1503, 666)
	MisResultAction(TakeItem, 1503, 666 )

	MisResultAction(GiveItem, 3856,1,4)----------G
	MisResultAction(ClearMission, 1224)
	MisResultAction(SetRecord, 1224)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1503)	
	TriggerAction( 1, AddNextFlag, 1224, 1, 666 )
	RegCurTrigger( 12241 )

------------------------------------------------------Загадачная Красотка

	DefineMission( 6158, "\199\224\227\224\228\224\247\237\224\255 \202\240\224\241\238\242\234\224", 1225 )
	MisBeginTalk( "<t>У меня был верный друг, мой любимый пёсик, мы многое с ним пережили, но однажды я забыла его накормить, на что он сильно на меня обиделся и взяв с собой карту убежал в абаддон, я очень скучаю по нему." )
				
	MisBeginCondition(NoMission, 1225)
	MisBeginCondition(NoRecord,1225)
	MisBeginCondition(HasRecord, 1224)
	MisBeginAction(AddMission,1225)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Ищите Пса Любовницы Локка в точке(154,912) абаддона." )
	
	MisHelpTalk( "<t>Мой Пёсик..." )
	MisResultCondition(AlwaysFailure)
	
	-----------------------------------------Пёс Любовницы Локка

	DefineMission( 6159, "\207\191\241 \203\254\225\238\226\237\232\246\251 \203\238\234\234\224", 1225, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Кто Вы? Вас послала за мной Любовница Локка? Я не вернусь к ней, она меня не любила, и мне очень с ней плохо!" )
	MisResultCondition(NoRecord, 1225)
	MisResultCondition(HasMission,1225)
	MisResultAction(ClearMission,1225)
	MisResultAction(SetRecord, 1225)


	--------------------------------------------------------------------Ни смотря ни на что

	DefineMission( 6160, "\205\232 \241\236\238\242\240\255 \237\232 \237\224 \247\242\238!", 1226 )
	MisBeginTalk( "<t>Меня пугают здешнии обитатели, не поможите мне доказать им, что я не хуже их.<n><t>Принесите мне 99 Волос мумий и этим мы докажем им, что я не слабак." )
	MisBeginCondition(NoMission, 1226)
	MisBeginCondition(NoRecord,1226)
	MisBeginCondition(HasRecord, 1225)
	MisBeginAction(AddMission,1226)
	MisBeginAction(AddTrigger, 12261, TE_GETITEM, 4884, 99)--Волосы Мумии
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Принести <b99 Волос Мумий>." )
	MisNeed(MIS_NEED_ITEM, 4884, 99, 1, 99)

	MisHelpTalk( "<t>Вы хотите, что бы на до мной и далье смеялись здешние обитатели?" )
	MisResultTalk( "<t>Возвращайтесь в точку(2229,2782). Возьмите эту карту в знак моей признательности." )

	MisResultCondition(HasMission, 1226)
	MisResultCondition(NoRecord,1226)
	MisResultCondition(HasItem, 4884, 99)
	MisResultAction(TakeItem, 4884, 99 )

	MisResultAction(GiveItem, 3854,1,4)----------E
	MisResultAction(ClearMission, 1226)
	MisResultAction(SetRecord, 1226)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4884)	
	TriggerAction( 1, AddNextFlag, 1226, 1, 99 )
	RegCurTrigger( 12261 )


-----------------------------------------------------Ой! Нет ключа!

	DefineMission( 6161, "\206\233! \205\229\242 \234\235\254\247\224!", 1227 )--продолжить
	MisBeginTalk( "<t>Что бы открыть этот сундук Лета, Вам необходим ключ, принисите мне его и я помогу Вам открыть Сундук Лета " )
				
	MisBeginCondition(NoMission, 1227)
	MisBeginCondition(NoRecord,1227)
	MisBeginCondition(HasRecord, 1212)
	MisBeginAction(AddMission,1227)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Ищите Мисс Акишими в точке(2423,3186)Великом Сенем Океане." )
	
	MisHelpTalk( "<t>Вы разве уже нашли Акишими и взяли у неё ключ? Так чего же Вы тогда ждёте..." )
	MisResultCondition(AlwaysFailure)	

	-----------------------------------------Акишими

	DefineMission( 6162, "\206\233! \205\229\242 \234\235\254\247\224!", 1227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Не ужеле Вас ко мне послали за ключами...." )
	MisResultCondition(NoRecord, 1227)
	MisResultCondition(HasMission,1227)
	MisResultAction(ClearMission,1227)
	MisResultAction(SetRecord, 1227)



	--------------------------------------------------------------------Помошник для Мисс Акишими

	DefineMission( 6163, "\207\238\236\238\248\237\232\234 \228\235\255 \204\232\241\241 \192\234\232\248\232\236\232", 1228 )
	MisBeginTalk( "<t>Я помогу тебе при условии, что и ты мне поможешь. Местные бандиты тиранизируют нас. помоги нам от них избавиться и выполню твою просьбу." )
	MisBeginCondition(NoMission, 1228)
	MisBeginCondition(NoRecord,1228)
	MisBeginCondition(HasRecord, 1227)
	MisBeginAction(AddMission,1228)
	MisBeginAction(AddTrigger, 12281, TE_GETITEM, 0154, 20)--Эмблема северного пирата
	MisBeginAction(AddTrigger, 12282, TE_GETITEM, 0156, 20)--Эмблема северного абордажника
	MisBeginAction(AddTrigger, 12283, TE_GETITEM, 0158, 20)--Эмблема северного ополчения
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания." )

	MisNeed(MIS_NEED_DESP, " Убейте пиратов и принесите в знак докозательства трофеи:<b20 Эмблем северного пирата>, <b20 Эмблем северного абордажника> и <b 20 Эмблем северного ополчения>." )
	MisNeed(MIS_NEED_ITEM, 0154, 20, 1, 20)
	MisNeed(MIS_NEED_ITEM, 0156, 20, 21, 20)
	MisNeed(MIS_NEED_ITEM, 0158, 20, 41, 20)

	MisHelpTalk( "<t>Только взаимовыручкой можно добиться уважения и помощи." )
	MisResultTalk( "<t>Вы действительно настоящий герой. Спасибо Вам." )

	MisResultCondition(HasMission, 1228)
	MisResultCondition(NoRecord,1228)
	MisResultCondition(HasItem, 0154, 20)
	MisResultCondition(HasItem, 0156, 20)
	MisResultCondition(HasItem, 0158, 20)

	MisResultAction(TakeItem, 0154, 20 )
	MisResultAction(TakeItem, 0156, 20 )
	MisResultAction(TakeItem, 0158, 20 )
	
	MisResultAction(ClearMission, 1228)
	MisResultAction(SetRecord, 1228)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 0154)	
	TriggerAction( 1, AddNextFlag, 1228, 1, 20 )
	RegCurTrigger( 12281 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0156)	
	TriggerAction( 1, AddNextFlag, 1228, 36, 20 )
	RegCurTrigger( 12282 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0158)	
	TriggerAction( 1, AddNextFlag, 1228, 71, 20 )
	RegCurTrigger( 12283 )

--------------------------------------------------------------------Комфорт для Души

	DefineMission( 6164, "\202\238\236\244\238\240\242 \228\235\255 \196\243\248\232", 1229 )
	MisBeginTalk( "<t>Не поможете ли Вы мне ещё? Мне не ловко Вас просить, но принесите мне <b50 Трупов стонущего воина> и <b50 Скелетов Печального Воина>." )
	MisBeginCondition(NoMission, 1229)
	MisBeginCondition(NoRecord,1229)
	MisBeginCondition(HasRecord, 1228)
	MisBeginAction(AddMission,1229)
	MisBeginAction(AddTrigger, 12291, TE_GETITEM, 3436, 50)
	MisBeginAction(AddTrigger, 12292, TE_GETITEM, 3434, 50)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Принесите Акишиме <b50 Трупов стонущего воина> и <b50 Скелетов Печального Воина>." )
	MisNeed(MIS_NEED_ITEM, 3436, 50, 1, 50)
	MisNeed(MIS_NEED_ITEM, 3434, 50, 51, 50)


	MisHelpTalk( "<t>Отправляйтесь в Затерянный город." )
	MisResultTalk( "<t>Я хочу верить, в то, что я Вам сейчас дам, Вам пригодится." )

	MisResultCondition(HasMission, 1229)
	MisResultCondition(NoRecord,1229)
	MisResultCondition(HasItem, 3436, 50)
	MisResultCondition(HasItem, 3434, 50)

	MisResultAction(TakeItem, 3436, 50 )
	MisResultAction(TakeItem, 3434, 50 )

	MisResultAction(GiveItem, 3674,1,4)----------Ключ
	MisResultAction(ClearMission, 1229)
	MisResultAction(SetRecord, 1229)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436)	
	TriggerAction( 1, AddNextFlag, 1229, 1, 50 )
	RegCurTrigger( 12291 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434)	
	TriggerAction( 1, AddNextFlag, 1229, 51, 50 )
	RegCurTrigger( 12292 )

----------------------------------------------------Великое открытие Магического замка

	DefineMission( 6165, "\194\229\235\232\234\238\229 \238\242\234\240\251\242\232\229 \204\224\227\232\247\229\241\234\238\227\238 \231\224\236\234\224", 1230 )
	MisBeginTalk( "<t>Теперь ступай же и открой этот сундук." )
				
	MisBeginCondition(NoMission, 1230)
	MisBeginCondition(NoRecord,1230)
	MisBeginCondition(HasRecord, 1229)
	MisBeginAction(AddMission,1230)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания." )

	MisNeed(MIS_NEED_DESP, " Идите в Аргент в точку(2229,2782)." )
	
	MisHelpTalk( "<t>Разве Вам не интересно, что же скрывает магический замок..." )
	MisResultCondition(AlwaysFailure)

	-----------------------------------------

	DefineMission( 6166, "\194\229\235\232\234\238\229 \238\242\234\240\251\242\232\229 \204\224\227\232\247\229\241\234\238\227\238 \231\224\236\234\224", 1230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( "<t>Вы принесли мне Ключ и Сундук Лета? Значит Вы решительно настроенны узнать, что скрывает магическая печать?" )
	MisResultCondition(NoRecord, 1230)
	MisResultCondition(HasMission,1230)
	MisResultCondition(HasItem, 3673, 1)
	MisResultCondition(HasItem, 3674, 1)
	MisResultAction(TakeItem, 3673, 1 )
	MisResultAction(TakeItem, 3674, 1 )
	MisResultAction(GiveItem, 3672,1,4)----------Черный ящик
	MisResultAction(ClearMission,1230)
	MisResultAction(SetRecord, 1230)
	MisResultBagNeed(1)

	MisResultAction(ClearRecord, 1212)---------------
	MisResultAction(ClearRecord, 1213)---------------
	MisResultAction(ClearRecord, 1214)---------------
	MisResultAction(ClearRecord, 1215)---------------
	MisResultAction(ClearRecord, 1216)---------------
	MisResultAction(ClearRecord, 1217)---------------
	MisResultAction(ClearRecord, 1218)---------------
	MisResultAction(ClearRecord, 1219)---------------
	MisResultAction(ClearRecord, 1220)---------------
	MisResultAction(ClearRecord, 1221)---------------
	MisResultAction(ClearRecord, 1222)---------------
	MisResultAction(ClearRecord, 1223)---------------
	MisResultAction(ClearRecord, 1224)---------------
	MisResultAction(ClearRecord, 1225)---------------
	MisResultAction(ClearRecord, 1226)---------------·
	MisResultAction(ClearRecord, 1227)---------------·
	MisResultAction(ClearRecord, 1228)---------------·
	MisResultAction(ClearRecord, 1229)---------------·
	MisResultAction(ClearRecord, 1230)---------------·


--------------------------------------------------------Смелый поступок
	
	DefineMission( 6167, "\209\236\229\235\251\233 \239\238\241\242\243\239\238\234", 1231 )
	MisBeginTalk( "<t>Малыш. Ты обязательно станешь взрослым, но не сейчас. сейчас же ты можешь только делать смелые поступки, благодаря которым ты быстрее повзрослеешь.<n><t>Ты ещё не передумал идти на встречу взрослой жизни?<n><t>Вот тебе достойное испытание: Убей <r30 Жалящих дурманищ>!" )
	MisBeginCondition( LvCheck, ">", 54)
	MisBeginCondition( LvCheck, "<", 57)
	MisBeginCondition( NoMission, 1231)
	MisBeginCondition( NoRecord, 1231)
	MisBeginAction( AddMission, 1231)
	MisBeginAction( AddTrigger, 12311, TE_KILL, 514, 30 )
	MisCancelAction(ClearMission, 1231)

	MisNeed(MIS_NEED_KILL, 514, 30, 10, 30)
	
	MisResultTalk( "<t>Я верил в твои способности малыш. Чего ты ждёшь?.. А, прости вот твоя награда, если ты ещё захочешь испытать себя... В общем ты знаешь где меня искать!" )
	MisHelpTalk("<t>Ищите Жалящих дурманищ в точке(440,1320) Аргент." )
	MisResultCondition( HasFlag, 1231, 39 )
	MisResultCondition( HasMission, 1231)
	MisResultCondition( NoRecord, 1231)
	MisResultAction( ClearMission, 1231)
	MisResultAction( SetRecord, 1231)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney, 260)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 514 )	
	TriggerAction( 1, AddNextFlag, 1231, 10, 30 )
	RegCurTrigger(12311)

	----------------------------------------Смелый поступок

	DefineMission( 6168, "\209\236\229\235\251\233 \239\238\241\242\243\239\238\234", 1232 )
	MisBeginTalk( "<t>Ты быстро ростёшь мой друг! Малышь у меня есть для тебя Важное задание: Убей <r50 Ангелов-хранителей>! и избавь тем самым людей от исчадия ада!" )
	MisBeginCondition( NoMission, 1232)
	MisBeginCondition( NoRecord, 1232)
	MisBeginCondition( HasRecord, 1231)
	MisBeginAction( AddMission, 1232)
	MisBeginAction( AddTrigger, 12321, TE_KILL, 284, 50 )
	MisCancelAction( ClearMission, 1232)

	MisNeed( MIS_NEED_KILL, 284, 50, 10, 50)

	MisResultTalk( "<t>Ну молодец! Ну просто нет слов Малыш!" )
	MisHelpTalk( "<t>Ищите Ангелов в точке(904,1280)." )
	MisResultCondition( HasMission, 1232)
	MisResultCondition( NoRecord, 1232)
	MisResultCondition( HasFlag, 1232, 59)
	MisResultAction( ClearMission, 1232)
	MisResultAction( SetRecord, 1232)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney, 1500)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 284 )	
	TriggerAction( 1, AddNextFlag, 1232, 10, 50 )
	RegCurTrigger(12321)

	----------------------------------------

	DefineMission( 6169, "\209\236\229\235\251\233 \239\238\241\242\243\239\238\234", 1233 )
	MisBeginTalk( "<t>Малыш привет! Ты опять пришёл ко мне?! Ну, что я могу тебе сказать?! Да - у меня есть для тебя задача: Убей <r10 Терранских оружейников> и принеси мне <p50 Терранских золотых>!" )
	MisBeginCondition( NoMission, 1233)
	MisBeginCondition( NoRecord, 1233)
	MisBeginCondition( HasRecord, 1232)
	MisBeginAction( AddMission, 1233)
	MisBeginAction( AddTrigger, 12331, TE_KILL, 65, 10 )
	MisBeginAction( AddTrigger, 12332, TE_GETITEM, 1783, 50)
	MisCancelAction( ClearMission, 1233)

	MisNeed( MIS_NEED_KILL, 65, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 1783, 50, 20, 50)

	MisResultTalk( "<t>Малыш - ты упрям! И именно за это ты стал миллионером! Только трать эти деньги с умом.<n><t>А сейчас беги в Аргент к Фонтану!" )
	MisHelpTalk( "<t>Если ты не хочешь выполнять моё задание, можешь сразу от него отказаться, всё равно у меня закончились награды для тебя.<n><t>Не мучай себя понапрасну. Я вижу тебе не по силам это задание." )
	MisResultCondition( HasMission, 1233)
	MisResultCondition( NoRecord, 1233)
	MisResultCondition( HasFlag, 1233, 19)
	MisResultCondition( HasItem, 1783, 50)
	MisResultAction( TakeItem, 1783, 50)
	MisResultAction( ClearMission, 1233)
	MisResultAction( SetRecord, 1233)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney , 5000)
	MisResultAction( AddExpAndType, 2, 80000, 80000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 65)
	TriggerAction(1, AddNextFlag, 1233, 10, 10)
	RegCurTrigger(12331)

	InitTrigger()
	TriggerCondition(1, IsItem, 1783)
	TriggerAction(1, AddNextFlag, 1233, 20, 50)
	RegCurTrigger(12332)

	----------------------------------------------Первая Любовь

	DefineMission( 6170, "\207\229\240\226\224\255 \203\254\225\238\226\252", 1234 )
	MisBeginTalk( "<t>Помоги мне с моей любовью, Малыш." )
	MisBeginCondition( NoMission, 1234)
	MisBeginCondition( NoRecord, 1234)
	MisBeginCondition( HasRecord, 1233)
	MisBeginAction( AddMission, 1234)
	MisBeginAction( GiveItem, 2671, 1, 4)
	MisBeginAction( AddTrigger, 12341, TE_GETITEM, 2671, 1)--письмо Элизабет

	MisBeginAction( AddTrigger, 12343, TE_GETITEM, 3361, 89)--Жемчужина
	MisCancelAction( ClearMission, 1234)
	MisBeginBagNeed(1)

	MisHelpTalk( "<t>Поспеши!" )
	MisNeed( MIS_NEED_DESP, " Если ты действительно так отважен, Малыш, как о тебе ходят лигенды, то принеси мне: <b1 Письмо для Элизабет> одну <bКорону> и <b89 Жемчужен>." )
	MisNeed( MIS_NEED_ITEM, 2671, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 4503, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 3361, 89, 30, 89)

	MisResultCondition( AlwaysFailure )

	---------------------------------------------

	DefineMission( 6171, "\207\229\240\226\224\255 \203\254\225\238\226\252", 1234, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>Спасибо тебе Малыш.<n><t>Это тебе в знак моей признательности." )
	MisResultCondition( HasItem, 2671, 1)
	MisResultCondition( HasItem, 4503, 1)
	MisResultCondition( HasItem, 3361, 89)
	MisResultCondition( HasMission, 1234)
	MisResultCondition( NoRecord, 1234)
	MisResultAction( TakeItem, 2671, 1)
	MisResultAction( TakeItem, 4503, 1)
	MisResultAction( TakeItem, 3361, 89)
	MisResultAction( ClearMission, 1234)
	MisResultAction( SetRecord, 1234)
	MisResultAction( AddExpPer, 2)
	MisResultAction( AddMoney, 300000)
	MisResultAction( AddReadingBook )                       ------Ученичество

	InitTrigger()
	TriggerCondition(1, IsItem, 2671)
	TriggerAction(1, AddNextFlag, 1234, 10, 1)
	RegCurTrigger(12341)

	InitTrigger()
	TriggerCondition(1, IsItem, 4503)
	TriggerAction(1, AddNextFlag, 1234, 20, 1)
	RegCurTrigger(12342)

	InitTrigger()
	TriggerCondition(1, IsItem, 3361)
	TriggerAction(1, AddNextFlag, 1234, 30, 89)
	RegCurTrigger(12343)


	-------------------------------------------------------

	DefineMission( 6172, "\207\229\240\226\224\255 \203\254\225\238\226\252", 1235 )
	MisBeginTalk( "<t>Всю жизнь живи - всю жизнь учись. Сколько бы ты не учился, всего не будешь знать всё равно." )
	MisBeginCondition( NoMission, 1235)
	MisBeginCondition( NoRecord, 1235)
	MisBeginCondition( HasRecord, 1234)
	MisBeginAction( AddMission, 1235)
	MisCancelAction( ClearMission, 1235)

	MisHelpTalk( "<t>Ищите Северного Пирата -Якомото на острове Осени для дальнейших указаний." )
	MisNeed( MIS_NEED_DESP, " Ищите Северного Пирата -Якомото на острове Осени " )

	MisResultCondition( AlwaysFailure )

	--------------------------------------------------------

	DefineMission( 6173, "\207\229\240\226\224\255 \203\254\225\238\226\252", 1235, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Привет Малыш! Ближе к делу... Что тебе надо от меня?" )
	MisResultCondition( HasMission, 1235)
	MisResultCondition( NoRecord, 1235)
	MisResultAction( ClearMission, 1235)
	MisResultAction( SetRecord, 1235)
	MisResultAction( AddMoney, 88)

	MisResultAction(ClearRecord, 1231)---------------·
	MisResultAction(ClearRecord, 1232)---------------·
	MisResultAction(ClearRecord, 1233)---------------·
	MisResultAction(ClearRecord, 1234)---------------·
	MisResultAction(ClearRecord, 1235)---------------·

	-------------------------------Время богатеть

	DefineMission( 6174, "\194\240\229\236\255 \225\238\227\224\242\229\242\252", 1236 )
	MisBeginTalk( "<t>Помоги мне собрать плитки. Найти их ты сможешь на островах Лета, Весны, Удачи и Осени.<n><t>Первую плитку ты можешь купить у меня прямо сейчас за 50 000 золота." )
	MisBeginCondition( NoMission, 1236)
	MisBeginCondition( NoRecord, 1236)
	MisBeginCondition( LvCheck, "<", 80)
	MisBeginAction( AddMission, 1236)
	MisBeginAction( AddTrigger, 12361, TE_GETITEM, 2969, 1)--Плитка Маджонга Весна
	MisBeginAction( AddTrigger, 12362, TE_GETITEM, 2970, 1)--лето
	MisBeginAction( AddTrigger, 12363, TE_GETITEM, 2971, 1)--осень
	MisBeginAction( AddTrigger, 12364, TE_GETITEM, 2972, 1)--Удачи
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed( MIS_NEED_DESP, " Соберите все плитки." )
	MisNeed( MIS_NEED_ITEM, 2969, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 2970, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 2971, 1, 30, 1)
	MisNeed( MIS_NEED_ITEM, 2972, 1, 40, 1)

	MisResultTalk( "<t>У Вас 4 Плитки - это здорово." )
	MisHelpTalk( "<t>Отправляйтесь на острова: Лета, Осени, Весны и Удачи!" )
	MisResultCondition( HasMission, 1236)
	MisResultCondition( NoRecord, 1236)
	MisResultCondition( HasItem, 2969, 1)
	MisResultCondition( HasItem, 2970, 1)
	MisResultCondition( HasItem, 2971, 1)
	MisResultCondition( HasItem, 2972, 1)
	MisResultAction( TakeItem, 2969, 1)
	MisResultAction( TakeItem, 2970, 1)
	MisResultAction( TakeItem, 2971, 1)
	MisResultAction( TakeItem, 2972, 1)
	MisResultAction( ClearMission, 1236)
	MisResultAction( SetRecord, 1236)
--	MisResultAction( AddExpNextLv1 )--следующий уровень знаний(учёба)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2969)	
	TriggerAction( 1, AddNextFlag, 1236, 10, 1 )
	RegCurTrigger( 12361 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2970)	
	TriggerAction( 1, AddNextFlag, 1236, 20, 1 )
	RegCurTrigger( 12362 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2971)	
	TriggerAction( 1, AddNextFlag, 1236, 30, 1 )
	RegCurTrigger( 12363 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2972)	
	TriggerAction( 1, AddNextFlag, 1236, 40, 1 )
	RegCurTrigger( 12364 )

---------------------------------

	DefineMission( 6175, "\194\240\229\236\255 \225\238\227\224\242\229\242\252", 1237 )
	MisBeginTalk( "<t>Собери мне Плитки Маджонги с островов!")
	MisBeginCondition( NoMission, 1237)
	MisBeginCondition( NoRecord, 1237)
	MisBeginCondition( LvCheck, "<", 90)
	MisBeginAction( AddMission, 1237)
	MisBeginAction( AddTrigger, 12371, TE_GETITEM, 2969, 1)
	MisBeginAction( AddTrigger, 12372, TE_GETITEM, 2970, 1)
	MisBeginAction( AddTrigger, 12373, TE_GETITEM, 2971, 1)
	MisBeginAction( AddTrigger, 12374, TE_GETITEM, 2972, 1)
	MisBeginAction( AddTrigger, 12375, TE_GETITEM, 2973, 1)
	MisBeginAction( AddTrigger, 12376, TE_GETITEM, 2974, 1)
	MisBeginAction( AddTrigger, 12377, TE_GETITEM, 2975, 1)
	MisBeginAction( AddTrigger, 12378, TE_GETITEM, 2976, 1)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed( MIS_NEED_DESP, " Отправляйтесь на острова: Лета, Осени, Весны и Удачи " )
	MisNeed( MIS_NEED_ITEM, 2969, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 2970, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 2971, 1, 30, 1)
	MisNeed( MIS_NEED_ITEM, 2972, 1, 40, 1)
	MisNeed( MIS_NEED_ITEM, 2973, 1, 50, 1)
	MisNeed( MIS_NEED_ITEM, 2974, 1, 60, 1)
	MisNeed( MIS_NEED_ITEM, 2975, 1, 70, 1)
	MisNeed( MIS_NEED_ITEM, 2976, 1, 80, 1)

	MisResultTalk( "<t>Примите мои поздравления!" )
	MisHelpTalk( "<t>Отправляйтесь на острова: Лета, Осени, Весны и Удачи." )
	MisResultCondition( HasMission, 1237)
	MisResultCondition( NoRecord, 1237)
	MisResultCondition( HasItem, 2969, 1)
	MisResultCondition( HasItem, 2970, 1)
	MisResultCondition( HasItem, 2971, 1)
	MisResultCondition( HasItem, 2972, 1)
	MisResultCondition( HasItem, 2973, 1)
	MisResultCondition( HasItem, 2974, 1)
	MisResultCondition( HasItem, 2975, 1)
	MisResultCondition( HasItem, 2976, 1)
	MisResultAction( TakeItem, 2969, 1)
	MisResultAction( TakeItem, 2970, 1)
	MisResultAction( TakeItem, 2971, 1)
	MisResultAction( TakeItem, 2972, 1)
	MisResultAction( TakeItem, 2973, 1)
	MisResultAction( TakeItem, 2974, 1)
	MisResultAction( TakeItem, 2975, 1)
	MisResultAction( TakeItem, 2976, 1)
	MisResultAction( ClearMission, 1237)

	MisResultAction( SetRecord, 1237)
--	MisResultAction( AddExpNextLv2 )--следубщий уровень знаний(учёба)
	MisResultAction(ClearRecord, 1236)---------------·
	MisResultAction(ClearRecord, 1237)---------------·
	MisResultAction(ClearRecord, 1238)---------------·
	MisResultAction(ClearRecord, 1239)---------------·
	MisResultAction(ClearRecord, 1240)---------------·
	MisResultAction(ClearRecord, 1241)---------------·
	MisResultAction(ClearRecord, 1242)---------------·
	MisResultAction(ClearRecord, 1243)---------------·
	MisResultAction(ClearRecord, 1244)---------------·
	MisResultAction(ClearRecord, 1245)---------------·
	MisResultAction(ClearRecord, 1246)---------------·

	InitTrigger()
	TriggerCondition( 1, IsItem, 2969)	
	TriggerAction( 1, AddNextFlag, 1237, 10, 1 )
	RegCurTrigger( 12371 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2970)	
	TriggerAction( 1, AddNextFlag, 1237, 20, 1 )
	RegCurTrigger( 12372 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2971)	
	TriggerAction( 1, AddNextFlag, 1237, 30, 1 )
	RegCurTrigger( 12373 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2972)	
	TriggerAction( 1, AddNextFlag, 1237, 40, 1 )
	RegCurTrigger( 12374 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2973)	
	TriggerAction( 1, AddNextFlag, 1237, 50, 1 )
	RegCurTrigger( 12375 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2974)	
	TriggerAction( 1, AddNextFlag, 1237, 60, 1 )
	RegCurTrigger( 12376 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2975)	
	TriggerAction( 1, AddNextFlag, 1237, 70, 1 )
	RegCurTrigger( 12377 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2976)	
	TriggerAction( 1, AddNextFlag, 1237,80, 1 )
	RegCurTrigger( 12378 )

----------------------------------Разбитое сердце

	DefineMission( 6176, "\208\224\231\225\232\242\238\229 \241\229\240\228\246\229", 1238 )
	MisBeginTalk( "<t>Я люблю одну еденственную свою, но её сердце под замком от меня, и я не знаю, что мне делать. Отправляйтесь в Аргент к Послу Шайтана, возможно он знает, что делать." )
	MisBeginCondition( NoMission, 1238)
	MisBeginCondition( NoRecord, 1238)
	MisBeginCondition( HasMission, 1237)
	MisBeginAction( AddMission, 1238)
	MisBeginAction( AddTrigger, 12381, TE_GETITEM, 2965, 1)--клучи Роя
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed( MIS_NEED_DESP," Отправляйтесь в Аргент и отыщите В точке (2256,2707) Посла Шайтана. Возьмите ключи и возвращайтесь в точку (3734,2661)." )
	MisNeed( MIS_NEED_ITEM, 2965, 1, 10, 1)

	MisResultTalk( "<t>Спасибо тебе. Теперь я смогу понять, что творится в сердце моей любимой." )
	MisHelpTalk( "<t>Принесите мне ключи!" )
	MisResultCondition( HasMission, 1238)
	MisResultCondition( NoRecord, 1238)
	MisResultCondition( HasItem, 2965, 1)
	MisResultAction( TakeItem, 2965, 1)
	MisResultAction( ClearMission, 1238)
	MisResultAction( SetRecord, 1238)
	MisResultAction( GiveItem, 2974, 1, 4)--
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2965)	
	TriggerAction( 1, AddNextFlag, 1238, 10, 1 )
	RegCurTrigger( 12381 )

----------------------------------Разбитое сердце
	DefineMission( 6177, "\208\224\231\225\232\242\238\229 \241\229\240\228\246\229", 1239 )
	MisBeginTalk( "<t>Я дам тебе Маджогу если ты мне поможешь принести <b2 Черные жемчужины>!!" )
	MisBeginCondition( HasMission, 1238)
	MisBeginCondition( NoRecord, 1239)
	MisBeginCondition( NoMission, 1239)
	MisBeginAction( AddMission, 1239)
	MisBeginAction( AddTrigger, 12391, TE_GETITEM, 3362, 2)
	MisCancelAction(SystemNotice, " Вы не можете отказаться отэтого задания " )

	MisNeed( MIS_NEED_DESP, " Принесите <b2 Чёрные Жемчужены> в точску аргента (2256,2707)." )
	MisNeed( MIS_NEED_ITEM, 3362, 2, 10, 2)

	MisResultTalk( "<t>Мои внучки будут очень рады Чёрному жемчугу, они его используют для своих украшений, держи Малыш Маджонгу." )
	MisHelpTalk( "<t>За просто так я не отдам Маджонгу. Отправляйтесь и принесите мне 2 Чёрные Жемчужины." )
	MisResultCondition( HasMission, 1239)
	MisResultCondition( NoRecord, 1239)
	MisResultCondition( HasItem, 3362, 2)
	MisResultAction( TakeItem, 3362, 2)
	MisResultAction( ClearMission, 1239)
	MisResultAction( SetRecord, 1239)
	MisResultAction( GiveItem, 2965, 1, 4)--Маджонга
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3362)	
	TriggerAction( 1, AddNextFlag, 1239, 10, 2 )
	RegCurTrigger( 12391 )
	
---------------------------------Урожай вина

	DefineMission( 6178, "\211\240\238\230\224\233 \226\232\237\224", 1240 )
	MisBeginTalk( "<t>Какой же романтический вечер без бутылочки прекрассного вина? Принеси мне бутылочку вина!" )
	MisBeginCondition( NoMission, 1240)
	MisBeginCondition( NoRecord, 1240)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginAction( AddMission, 1240)
	MisBeginAction( AddTrigger, 12401, TE_GETITEM, 2977, 1)--вино
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed( MIS_NEED_DESP, " Отправляйтесь к трактирщику Якси в Ледынь(1291,541). Возьмите вино и отправляйтесь обратно(3734,2661)." )
	MisNeed( MIS_NEED_ITEM, 2977, 1, 10, 1)

	MisResultTalk( "<t>Этот вечер будет не забываемый." )
	MisHelpTalk( "<t>Принесите мне вино." )
	MisResultCondition( HasMission, 1240)
	MisResultCondition( NoRecord, 1240)
	MisResultCondition( HasItem, 2977, 1)
	MisResultAction( TakeItem, 2977, 1)
	MisResultAction( ClearMission, 1240)
	MisResultAction( SetRecord, 1240)
	MisResultAction( GiveItem, 2976, 1, 4)--маджонга компазитный
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2977)	
	TriggerAction( 1, AddNextFlag, 1240, 10, 1 )
	RegCurTrigger( 12401 )

---------------------------------Урожай вина

	DefineMission( 6179, "\211\240\238\230\224\233 \226\232\237\224", 1241 )
	MisBeginTalk( "<t>Вы хотите отведать прекраснейшее вино?! Я его не продам!<n><t>Принесите мне по 3 Кости Маджонги: 'Pong', 'Jiang' и 'Hu'. Только тогда я Вам дам Вино. Да и чуть не забыл. Принесите мне 70 бутылок Вина(купить его можно в баре аргента).")
	MisBeginCondition( NoMission, 1241)
	MisBeginCondition( NoRecord, 1241)
	MisBeginCondition( HasMission, 1240)
	MisBeginAction( AddMission, 1241)
	
	MisBeginAction( AddTrigger, 12411, TE_GETITEM, 0172, 3)--Кость маджонга 'Pong'
	MisBeginAction( AddTrigger, 12412, TE_GETITEM, 0173, 3)--Кость маджонга 'Jiang'
	MisBeginAction( AddTrigger, 12413, TE_GETITEM, 0174, 3)--Кость маджонга 'Hu'
	MisBeginAction( AddTrigger, 12414, TE_GETITEM, 3916, 70)--Кокосовое вино
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed( MIS_NEED_DESP, " Принесите по 3 маджонги 'Pong', 'Jiang', 'Hu' и 70 Вина." )
	
	MisNeed( MIS_NEED_ITEM, 0172, 3, 5, 3)
	MisNeed( MIS_NEED_ITEM, 0173, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 0174, 3, 15, 3)
	MisNeed( MIS_NEED_ITEM, 3916, 70, 20, 70)

	MisResultTalk( "<t>Это вино обладает самым изысканным вкусом." )
	MisHelpTalk( "<t> Принесите по 3 маджонги 'Pong', 'Jiang', 'Hu' и 70 Вина." )
	MisResultCondition( HasMission, 1241)
	MisResultCondition( NoRecord, 1241)
	MisResultCondition( HasItem, 3916, 70)
	MisResultCondition( HasItem, 172, 3)
	MisResultCondition( HasItem, 173, 3)
	MisResultCondition( HasItem, 174, 3)
	MisResultAction( TakeItem, 3916, 70)
	MisResultAction( TakeItem, 172, 3)
	MisResultAction( TakeItem, 173, 3)
	MisResultAction( TakeItem, 174, 3)
	MisResultAction( GiveItem, 2967, 1)--вино
	MisResultAction( ClearMission, 1241)
	MisResultAction( SetRecord, 1241)



	
	InitTrigger()
	TriggerCondition( 1, IsItem, 0172)	
	TriggerAction( 1, AddNextFlag, 1241, 5, 3 )
	RegCurTrigger( 12411 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0173)	
	TriggerAction( 1, AddNextFlag, 1241, 10, 3)
	RegCurTrigger( 12412 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0174)	
	TriggerAction( 1, AddNextFlag, 1241, 15, 3 )
	RegCurTrigger( 12413 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3916)	
	TriggerAction( 1, AddNextFlag, 1241, 20, 70 )
	RegCurTrigger( 12414 )
	
	
--------------------------------Урожай вина

	DefineMission( 6180, "\211\240\238\230\224\233 \226\232\237\224", 1242 )
	MisBeginTalk( "<t>Мне необходимо ещё кое что для отвара вина!" )
	MisBeginCondition( NoMission, 1242)
	MisBeginCondition( NoRecord, 1242)
	MisBeginCondition( HasRecord, 1241)
	MisBeginAction( AddMission, 1242)
	--MisBeginAction( AddChaHJ )--------Выдержка вина 1440
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )
	MisBeginBagNeed(1)

	MisNeed( MIS_NEED_DESP, " Держите вино во второй ячейке Вашего инвентаря, дайте вину выдержку." )
	
	MisResultTalk( "<t>О! Это прекрассно." )
	MisHelpTalk( "<t>Каждое вино должно иметь выдержку." )
	--MisResultCondition( CheckHJ )-----1 минута удерживания 1 очко, и удержания до 0
	MisResultCondition( NoRecord, 1242)
	MisResultCondition( HasMission, 1242)
	MisResultAction( ClearMission, 1242)
	MisResultAction( SetRecord, 1242)
	MisResultAction( TakeItem, 2967, 1)
	MisResultAction( GiveItem, 2977, 1, 4)--вино
	MisResultBagNeed(1)

----------------------------------Поиск Лепестков роз

	DefineMission( 6181, "\207\238\232\241\234 \203\229\239\229\241\242\234\238\226 \240\238\231", 1243 )
	MisBeginTalk( "<t>Я помню были у одной очеровательной девушки из ледыни <pЛепестки роз>!" )
	MisBeginCondition( NoMission, 1243)
	MisBeginCondition( NoRecord, 1243)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginCondition( HasRecord, 1240)
	MisBeginAction( AddMission, 1243)
	MisBeginAction( AddTrigger, 12431, TE_GETITEM, 2968, 1)--Лепестки роз
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed( MIS_NEED_DESP, " Отправляйтесь в Ледынь в точку (1142,576) и принесите от туда <bЛепестки роз>." )
	MisNeed( MIS_NEED_ITEM, 2968, 1, 10, 1)

	MisResultTalk( "<t>Ах! Как же он прекрассен! Спасибо тебе Малыш, теперь я буду очаровательным! " )
	MisHelpTalk( "<t>Принеси мне Лепестки роз!" )
	MisResultCondition( HasMission, 1243)
	MisResultCondition( NoRecord, 1243)
	MisResultCondition( HasItem, 2968, 1)
	MisResultAction( ClearMission, 1243)
	MisResultAction( SetRecord, 1243)
	MisResultAction( TakeItem, 2968, 1)
	MisResultAction( GiveItem, 2973, 1, 4)--маджонга слив
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2968)	
	TriggerAction( 1, AddNextFlag, 1243, 10, 1 )
	RegCurTrigger( 12431 )

----------------------------------

	DefineMission( 6182, "\207\238\232\241\234 \203\229\239\229\241\242\234\238\226 \240\238\231", 1244 )
	MisBeginTalk( "<t>В подводном тунеле очень много страшных монстров, они наподают на всех, кто бы там ни прошёл.<n><t>Докажи мне, что ты не из слабых и принеси мне трофеи с обитателей подводного тунеля." )
	MisBeginCondition( NoMission, 1244)
	MisBeginCondition( NoRecord, 1244)
	MisBeginCondition( HasMission, 1243)
	MisBeginAction( AddMission, 1244)
	MisBeginAction( AddTrigger, 12441, TE_GETITEM, 4259, 3)--трут
	MisBeginAction( AddTrigger, 12442, TE_GETITEM, 1774, 3)--Чешуйка дракона
	MisBeginAction( AddTrigger, 12443, TE_GETITEM, 1632, 3)--Животворный кристалл
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed( MIS_NEED_DESP, " Отправляйтесь в Тунель и принесите от туда <b3 Трута>, <b3 Чашуйки Дракона> и <b3 Животных кристала>. Возвращайтесь к Девушке Елене." )
	MisNeed( MIS_NEED_ITEM, 4259, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 1774, 3, 20, 3)
	MisNeed( MIS_NEED_ITEM, 1632, 3, 30, 3)

	MisResultTalk( "<t>Вы заслужили моё уважение и по этому я дам Вам Лепестки роз." )
	MisHelpTalk( "<t>Отправляйтесь в Тунель и принесите от туда <b3 Трута>, <b3 Чашуйки Дракона> и <b3 Животных кристала>." )
	MisResultCondition( HasMission, 1244)
	MisResultCondition( NoRecord, 1244)
	MisResultCondition( HasItem, 4259, 3)
	MisResultCondition( HasItem, 1774, 3)
	MisResultCondition( HasItem, 1632, 3)
	MisResultAction( TakeItem, 4259, 3)
	MisResultAction( TakeItem, 1774, 3)
	MisResultAction( TakeItem, 1632, 3)
	MisResultAction( SetRecord, 1244)
	MisResultAction( ClearMission, 1244)
	MisResultAction( GiveItem, 2968, 1, 4)--Лепестки роз
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 3 )
	RegCurTrigger( 12441 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1774)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 1 )
	RegCurTrigger( 12442 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1632)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 1 )
	RegCurTrigger( 12443 )

---------------------------------Поиск красивых Свечей

	DefineMission( 6183, "\207\238\232\241\234 \234\240\224\241\232\226\251\245 \209\226\229\247\229\233", 1245 )
	MisBeginTalk( "<t>Какой же праздник без свечей??? Отправляйся в Шайтан(898,3683) и попроси у Овечки Волли свечки для меня!" )
	MisBeginCondition( NoMission, 1245)
	MisBeginCondition( NoRecord, 1245)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginCondition( HasRecord, 1240)
	MisBeginCondition( HasRecord, 1243)
	MisBeginAction( AddMission, 1245)
	MisBeginAction( AddTrigger, 12451, TE_GETITEM, 2966, 1)--Красивые Свечки
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )
	
	MisNeed( MIS_NEED_DESP, " Ищите Овечку Вилли в Шайтане " )
	MisNeed( MIS_NEED_ITEM, 2966, 1, 10, 1)

	MisResultTalk( "<t>Осталось их только зажечь..." )
	MisHelpTalk( "<t>Вы разве уже принесли мне свечки?" )
	MisResultCondition( HasMission, 1245)
	MisResultCondition( NoRecord, 1245)
	MisResultCondition( HasItem, 2966, 1)
	MisResultAction( TakeItem, 2966, 1)
	MisResultAction( SetRecord, 1245)
	MisResultAction( ClearMission, 1245)
	MisResultAction( GiveItem, 2975, 1, 4)--маджонга
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2966)	
	TriggerAction( 1, AddNextFlag, 1245, 10, 1 )
	RegCurTrigger( 12451 )

----------------------------------Поиск красивых Свечей

	DefineMission( 6184, "\207\238\232\241\234 \234\240\224\241\232\226\251\245 \209\226\229\247\229\233", 1246)
	MisBeginTalk( "<t>Я мечтаю сделать красивое ожерелье, но для него мне необходимо 2 Кристалла янтаря и 2 Кристалла агата.<n><t>Эти кристалы можно получить на острове Лета." )
	MisBeginCondition( NoMission, 1246)
	MisBeginCondition( NoRecord, 1246)
	MisBeginCondition( HasMission, 1245)
	MisBeginAction( AddMission, 1246)
	MisBeginAction( AddTrigger, 12461, TE_GETITEM, 3367,2)
	MisBeginAction( AddTrigger, 12462, TE_GETITEM, 3380,2)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed( MIS_NEED_DESP, " Принесите Овечке Волле <b2 Кристалла янтаря> и <b2 Кристалла агата>." )
	MisNeed( MIS_NEED_ITEM, 3367, 2, 10, 2)
	MisNeed( MIS_NEED_ITEM, 3380, 2, 20, 2)

	MisResultTalk( "<t>Это настоящее чудо, моё ожерелье будет самым красивым. Вот Ваши свечки." )
	MisHelpTalk( "<t>Пока я не получу то о чём я попросил я буду только блееть... Бееее." )
	MisResultCondition( HasMission, 1246)
	MisResultCondition( NoRecord, 1246)
	MisResultCondition( HasItem, 3367, 2)
	MisResultCondition( HasItem, 3380, 2)
	MisResultAction( TakeItem, 3380, 2)
	MisResultAction( TakeItem, 3367, 2)
	MisResultAction( SetRecord, 1246)
	MisResultAction( ClearMission, 1246)
	MisResultAction( GiveItem, 2966, 1, 4)
	MisResultAction( GiveItem, 2969, 1, 4)

	MisResultBagNeed(1)

        InitTrigger()
	TriggerCondition( 1, IsItem, 3367)	
	TriggerAction( 1, AddNextFlag, 1246, 10, 2 )
	RegCurTrigger( 12461 )

	 InitTrigger()
	TriggerCondition( 1, IsItem, 3380)	
	TriggerAction( 1, AddNextFlag, 1246, 20, 2 )
	RegCurTrigger( 12462 )

------------------------Проводы Старого года--

	DefineMission( 6185, "\207\240\238\226\238\228\251 \209\242\224\240\238\227\238 \227\238\228\224", 1247 )
	MisBeginTalk( "<t>Новый Год... Миллионы Дитей ждут когда я им положу подарки в их вонючии носки... Хоть этот праздник и раз в году, но он меня сильно утомляет. Помоги мне и я вознагрожу тебя." )
	MisBeginCondition( NoMission, 1247)
	MisBeginCondition( NoRecord, 1247)
	MisBeginCondition( HasItem, 2878, 1)
	MisBeginAction( TakeItem, 2878, 1)--Специальная новогодняя открытка
	MisBeginAction( AddMission, 1247)
	MisBeginAction( CreatBBBB, 929 )
	MisCancelAction( ClearMission, 1247)

	MisHelpTalk( "<t>ЗлФЪ<rТ»РЎК±ДЪЅ«КҐµ®РЎАПИЛЛНµЅїЁМШ¶ы>ДЗ,јЗµГТЄ<rНЅІЅ>ЧЯµЅ±щј«чјчГУЄµШІ№ёшХѕ(2111,557),ИОєО<rМшЧЄµШНјЎўК№УГ»ъЖ±ЎўАлїЄ±»»¤ЛНµДNPCКУТ°·¶О§>µИРРОЄ¶јЅ«ФміЙКҐµ®РЎАПИЛµД¶ЄК§.ЗРјЗ!")
	MisNeed( MIS_NEED_DESP, "ЗлФЪ<rТ»РЎК±ДЪЅ«КҐµ®РЎАПИЛЛНµЅїЛИрЛ№ДЄЛ№>ДЗ,јЗµГТЄ<rНЅІЅ>ЧЯµЅ±щј«чјчГУЄµШІ№ёшХѕ(2111,557).ОЄБЛКҐµ®АПИЛµД°ІИ«,ЗлІ»ТЄ<rМшЧЄµШНјЎўК№УГ»ъЖ±ЎўПВПЯЎўАлїЄ±»»¤ЛНµДNPCКУТ°·¶О§>µИ.<bёГИООсЦ»ДЬЅУИЎТ»ґО,ЦР¶П»бФміЙ»¤ЛНЧКёсЦ¤µДЛрК§,ТЄЅчЙчЕ¶>.")

	MisResultCondition( AlwaysFailure )


--------------------------------------------------------»¤ЛНКҐµ®АПИЛ--------±щј«чјчГУЄµШІ№ёшХѕ(2111,557)
	DefineMission( 6186, "»¤ЛНКҐµ®РЎАПИЛ", 1247, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Р»Р»Дг.ОТµДјЩєъЧУ»№єЬ±ЖХж°Й.єЗєЗ")
	MisResultCondition( HasMission, 1247)
	MisResultCondition( NoRecord, 1247)
	MisResultAction( CheckBBBB)
	MisResultAction( ClearMission, 1247)
	MisResultAction( SetRecord, 1247)
	MisResultAction( GiveItem, 2888, 1, 4)
	MisResultAction( GiveItem, 2889, 1, 4)
	MisResultAction( GiveItem, 3240, 1, 4)
	MisResultBagNeed(3)
	
----------------------------------------------------
--		Рождественская деревня
--				Коен
----------------------------------------------------


----------------------------Великая охота

	DefineMission( 6187, "\194\229\235\232\234\224\255 \238\245\238\242\224", 1248)
	MisBeginTalk( "<t>Почему бы Вам не поработать на меня? Я Вас отблагодарю за Вашу работу!<n><t>Отправляйтесь в Боевую Деревню и принесите мне <p100 Перьев индюшки>.")
	MisBeginCondition( NoMission, 1248)
	MisBeginCondition( NoRecord, 1248)
	MisBeginAction( AddMission, 1248)
	MisBeginAction(AddTrigger, 12481, TE_GETITEM, 2879, 100 )--Перья индюшки
	MisCancelAction( ClearMission, 1248)

	MisNeed(MIS_NEED_ITEM, 2879, 100, 10, 100 )
	MisHelpTalk( "<t>О чём Вы говорите? Какая награда? Я не вижу, что бы Вы мне принесли 100 перьев индюшки!")

	MisResultTalk( "<t>Вам не кажется, что кровь на снегу - это тоже красиво?")
	MisResultCondition( HasMission, 1248)
	MisResultCondition( NoRecord, 1248)
	MisResultCondition( HasItem, 2879, 100)
	MisResultAction( TakeItem, 2879, 100)
	MisResultAction( GiveItem, 2882, 1, 4)--Рождественский подарок
	MisResultAction( CpHuojiNum )-----------+100
	MisResultAction( ClearMission, 1248)
	MisResultAction( SetRecord, 1248)
	MisResultAction( ClearRecord, 1248)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2879)	
	TriggerAction( 1, AddNextFlag, 1248, 10, 100 )
	RegCurTrigger( 12481 )

------------------------------Большая охота на лося	
	DefineMission( 6188, "\193\238\235\252\248\224\255 \238\245\238\242\224 \237\224 \235\238\241\255", 1249)
	MisBeginTalk( "<t>Почему бы Вам не поработать на меня? Я Вас отблагодарю за Вашу работу!<n><t>Отправляйтесь в Боевую Деревню и принесите мне <p100 Острых оленьих рогов>.")
	MisBeginCondition( NoMission, 1249)
	MisBeginCondition( NoRecord, 1249)
	MisBeginAction( AddMission, 1249)
	MisBeginAction(AddTrigger, 12491, TE_GETITEM, 2881, 100 )--Острые оленьи рога
	MisCancelAction( ClearMission, 1249)

	MisNeed(MIS_NEED_ITEM, 2881, 100, 10, 100 )
	MisHelpTalk( "<t>О чём Вы говорите? Какая награда? Я не вижу, что бы Вы мне принесли Острые оленьи рога!")

	MisResultTalk( "<t>Вам не кажется, что кровь на снегу - это тоже красиво?")
	MisResultCondition( HasMission, 1249)
	MisResultCondition( NoRecord, 1249)
	MisResultCondition( HasItem, 2881, 100)
	MisResultAction( TakeItem, 2881, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpMiluNum )
	MisResultAction( ClearMission, 1249)
	MisResultAction( SetRecord, 1249)
	MisResultAction( ClearRecord, 1249)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2881)	
	TriggerAction( 1, AddNextFlag, 1249, 10, 100 )
	RegCurTrigger( 12491 )

------------------------------Снежная Охота	
	DefineMission( 6189, "\209\237\229\230\237\224\255 \206\245\238\242\224", 1250)
	MisBeginTalk( "<t>Почему бы Вам не поработать на меня? Я Вас отблагодарю за Вашу работу!<n><t>Отправляйтесь в Боевую Деревню и принесите мне <p100 Глаз снеговика>.")
	MisBeginCondition( NoMission, 1250)
	MisBeginCondition( NoRecord, 1250)
	MisBeginAction( AddMission, 1250)
	MisBeginAction(AddTrigger, 12501, TE_GETITEM, 2880, 100 )--Глаз снеговика
	MisCancelAction( ClearMission, 1250)

	MisNeed(MIS_NEED_ITEM, 2880, 100, 10, 100 )
	MisHelpTalk( "<t>О чём Вы говорите? Какая награда? Я не вижу, что бы Вы мне принесли 100 Глаз снеговика!")

	MisResultTalk( "<t>Вам не кажется, что кровь на снегу - это тоже красиво?")
	MisResultCondition( HasMission, 1250)
	MisResultCondition( NoRecord, 1250)
	MisResultCondition( HasItem, 2880, 100)
	MisResultAction( TakeItem, 2880, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpXuerenNum )
	MisResultAction( ClearMission, 1250)
	MisResultAction( SetRecord, 1250)
	MisResultAction( ClearRecord, 1250)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2880)	
	TriggerAction( 1, AddNextFlag, 1250, 10, 100 )
	RegCurTrigger( 12501 )


--------------------Рождественский портальщик

------------------------------------------------------------Родественское поручение

	DefineMission( 6190, "\208\238\228\229\241\242\226\229\237\241\234\238\229 \239\238\240\243\247\229\237\232\229 (1)", 1251)
	MisBeginTalk( "<t>Отправляйтесь в Рождественскую деревню и поговорите с <pФушедом>.")
	MisBeginCondition( NoMission, 1251)
	MisBeginCondition( NoRecord, 1251)
	MisBeginAction( AddMission, 1251)
	MisCancelAction( ClearMission, 1251)

	MisNeed( MIS_NEED_DESP, " Поговорить с <bФушедом> в <pРождественской деревне> в точке 220,41.")
	MisHelpTalk( "<t>Вы поговорили с Фушедом? И как у него дела? Я сразу вижу когда меня пытаются обмануть!")
	
	MisResultCondition( AlwaysFailure )

-----------------Родественское поручение(1)
	DefineMission( 6191, "\208\238\228\229\241\242\226\229\237\241\234\238\229 \239\238\240\243\247\229\237\232\229(1)", 1251, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Фушед: Вы ко мне? Добро пожаловать к нам в Рождественскую деревню! Я смогу Вам приготовить Рождественский ужин, если Вы пожелаете! Возьмите в подарок от меня билет в Рождественскую деревню и одну открытку, с её помощью Вы сможете поздравить своих любимых и друзей, а сейчас меня извините... Я очень занят приготовлениями к празднику... Вернитесь к Рождественскому портальщику и скажите ему, что поговорили со мной." )
	MisResultCondition( HasMission, 1251)
	MisResultCondition( NoRecord, 1251)
	MisResultAction( SetRecord, 1251)
	MisResultAction( GiveItem, 2883, 2, 4)		--Билет в рождественскую деревню
	MisResultAction( GiveItem, 2887, 1, 4 )		--Новогодняя открытка
	MisResultAction( ClearMission, 1251)
	MisResultBagNeed(1)


-----------------Родественское поручение(2)
	DefineMission( 6192, "\208\238\228\229\241\242\226\229\237\241\234\238\229 \239\238\240\243\247\229\237\232\229 (2)", 1252)
	MisBeginTalk( "<t>Отправляйтесь в Рождественскую деревню и поговорите с <pКуеном>.")
	MisBeginCondition( NoMission, 1252)
	MisBeginCondition( NoRecord, 1252)
	MisBeginAction( AddMission, 1252)
	MisCancelAction( ClearMission, 1252)

	MisNeed( MIS_NEED_DESP, " Поговорить с <bКуеном> в <pРождественской деревне> в точке 144,252.")
	MisHelpTalk( "<t>Вы уже встретились с Куеном?" )
	
	MisResultCondition( AlwaysFailure )

-----------------Родественское поручение(3)
	DefineMission( 6193, "\208\238\228\229\241\242\226\229\237\241\234\238\229 \239\238\240\243\247\229\237\232\229 (3)", 1252, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>КҐµ®їмАЦ!ПлИҐКҐµ®ѕєјјіЎВр?ПлТЄУГј¦Г«ЎўВ№ЅЗЎўС©ИЛСЫЗтХвР©А¬»ш»»µгУРУГµД¶«ОчВр?ПлЦЄµАЙ±ЛА»рј¦ЎўчзВ№ЎўС©ИЛ»б·ўЙъКІГґїЙЕВєу№ыВр?")
	MisResultCondition( HasMission, 1252)
	MisResultCondition( NoRecord, 1252)
	MisResultAction( SetRecord, 1252)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1252)
	MisResultBagNeed(1)

-----------------Родественское поручение(4)
	DefineMission( 6194, "\208\238\228\229\241\242\226\229\237\241\234\238\229 \239\238\240\243\247\229\237\232\229 (4)", 1253)
	MisBeginTalk( "<t>ЛьїЙІ»КЗТ»ёцЖХНЁµДПґТВ»ъ°Ў.Из№ыДгУРОЫЧЗµДКҐµ®АсєР,УЦХэіоГ»УРµШ·ЅЗеПґ,ДЗѕНИҐХТЛь°Й.")
	MisBeginCondition( NoMission, 1253)
	MisBeginCondition( NoRecord, 1253)
	MisBeginAction( AddMission, 1253)
	MisCancelAction( ClearMission, 1253)

	MisNeed( MIS_NEED_DESP, "ИҐХТКҐµ®ґеµДКҐµ®АПИЛµДПґТВ»ъ(84,37).")
	MisHelpTalk( "<t>ПґЛўЛў~ПґЛўЛў......")
	
	MisResultCondition( AlwaysFailure )

-----------------Родественское поручение(5)
	DefineMission( 6195, "І»ИМґн№эµДКҐµ®ИООс(5)", 1253, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ЕуУС,ДгУРКІГґТЄПґµДВр?іфНаЧУГвМё.")
	MisResultCondition( HasMission, 1253)
	MisResultCondition( NoRecord, 1253)
	MisResultAction( SetRecord, 1253)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1253)
	MisResultBagNeed(1)

-----------------Родественское поручение(6)
	DefineMission( 6196, "І»ИМґн№эµДКҐµ®ИООс(6)", 1254)
	MisBeginTalk( "<t>ДДАпУРВтёЯј¶»хµДµШ·Ѕ?µ±И»КЗКҐµ®ФУ»хЙМДЗАпБЛ,іцГЕФЪНв,¶аёъЛыґтЅ»µАГ»УРє¦ґ¦.")
	MisBeginCondition( NoMission, 1254)
	MisBeginCondition( NoRecord, 1254)
	MisBeginAction( AddMission, 1254)
	MisCancelAction( ClearMission, 1254)

	MisNeed( MIS_NEED_DESP, "ИҐХТКҐµ®ґеµДКҐµ®ФУ»хЙМ(197,251).")
	MisHelpTalk( "<t>І»ИзИҐИПК¶Т»ПВКҐµ®ФУ»хЙМ.")
	
	MisResultCondition( AlwaysFailure )

-----------------Родественское поручение(7)
	DefineMission( 6197, "І»ИМґн№эµДКҐµ®ИООс(7)", 1254, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>КҐµ®їс»¶ґуЗА№є!КэБїУРПЮ,ПИµЅПИµГ.")
	MisResultCondition( HasMission, 1254)
	MisResultCondition( NoRecord, 1254)
	MisResultAction( SetRecord, 1254)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1254)
	MisResultBagNeed(1)


-----------------Родественское поручение(8)
	DefineMission( 6198, "І»ИМґн№эµДКҐµ®ИООс(8)", 1255)
	MisBeginTalk( "<t>ХвёцАЛВюµДКҐµ®І»ТЄґн№эПт°®ИЛ±нґп°®ТвµД»ъ»бЕ¶.")
	MisBeginCondition( NoMission, 1255)
	MisBeginCondition( NoRecord, 1255)
	MisBeginAction( AddMission, 1255)
	MisCancelAction( ClearMission, 1255)

	MisNeed( MIS_NEED_DESP, "ИҐХТКҐµ®ґеµДКҐµ®ЙМИЛЎ¤ОТРРОТїб(125,253).")
	MisHelpTalk( "<t>ОТРРОТїб!")
	
	MisResultCondition( AlwaysFailure )

-----------------Родественское поручение(9)
	DefineMission( 6199, "І»ИМґн№эµДКҐµ®ИООс(9)", 1255, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ОТРРОТїб!ИПК¶ОТµДДЗёцН¬КВВр,ОТїбОТРР,КЗТ»ёцРгЧФјє,УйАЦ±рИЛµДРРјТДШ.")
	MisResultCondition( HasMission, 1255)
	MisResultCondition( NoRecord, 1255)
	MisResultAction( SetRecord, 1255)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1255)
	MisResultBagNeed(1)


-----------------Родественское поручение(10)
	DefineMission( 6200, "І»ИМґн№эµДКҐµ®ИООс(10)", 1256)
	MisBeginTalk( "<t>КҐµ®ЅЪµДЧоЦШТЄИЛОпКЗЛ­?КЗДг!¶Ф,µ±И»,»№УРТ»ёцИЛ,ѕНКЗКҐµ®АПИЛЕ¶.")
	MisBeginCondition( NoMission, 1256)
	MisBeginCondition( NoRecord, 1256)
	MisBeginAction( AddMission, 1256)
	MisCancelAction( ClearMission, 1256)

	MisNeed( MIS_NEED_DESP, "ИҐХТКҐµ®ґеµДКҐµ®АПИЛ(144,166)БДБД.")
	MisHelpTalk( "<t>merry christmas!")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(Бщ)-------------КҐµ®АПИЛ(144,166)
	DefineMission( 6201, "І»ИМґн№эµДКҐµ®ИООс(11)", 1256, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>merry christmas!Чј±ёєГДгµДНаЧУБЛВр?№ю№ю,ОТЙнєуµДКҐµ®КчїЙТФЛНЧЈёЈёшДгФЪєхµДИЛЕ¶.")
	MisResultCondition( HasMission, 1256)
	MisResultCondition( NoRecord, 1256)
	MisResultAction( SetRecord, 1256)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1256)
	MisResultBagNeed(1)

------------------------------------------------------------------окончание Родественское поручение


-----------------------------------------------------------»ГѕхИООс------------І»їЙДЬЅУµЅ
	DefineMission( 6202, "»Гѕх", 1257)		------------КҐµ®АПИЛ

	MisBeginTalk( "<t>µ±ДгїґµЅХвёцИООсµДК±єтЈ¬ДгТ»¶ЁКЗІъЙъ»ГѕхБЛЈ¬ПаРЕОТЈ¬ДгГ»їґµЅ.")
	MisBeginCondition( XmasNotice, 1 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1257)
	MisCancelAction( ClearMission, 1257)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6203, "»Гѕх", 1258)		------------КҐµ®уф»р

	MisBeginTalk( "<t>µ±ДгїґµЅХвёцИООсµДК±єтЈ¬ДгТ»¶ЁКЗІъЙъ»ГѕхБЛЈ¬ПаРЕОТЈ¬ДгГ»їґµЅ.")
	MisBeginCondition( XmasNotice, 2 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1258)
	MisCancelAction( ClearMission, 1258)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6204, "»Гѕх", 1259)		------------їЖ¶ч

	MisBeginTalk( "<t>µ±ДгїґµЅХвёцИООсµДК±єтЈ¬ДгТ»¶ЁКЗІъЙъ»ГѕхБЛЈ¬ПаРЕОТЈ¬ДгГ»їґµЅ.")
	MisBeginCondition( XmasNotice, 3 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1259)
	MisCancelAction( ClearMission, 1259)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6205, "»Гѕх", 1260)		------------РЎМАД·

	MisBeginTalk( "<t>µ±ДгїґµЅХвёцИООсµДК±єтЈ¬ДгТ»¶ЁКЗІъЙъ»ГѕхБЛЈ¬ПаРЕОТЈ¬ДгГ»їґµЅ.")
	MisBeginCondition( XmasNotice, 4 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1260)
	MisCancelAction( ClearMission, 1260)

	MisResultCondition( AlwaysFailure )

	----------------------------------------------------------------------08КуДкґєЅЪ»о¶Їkokora-------------------------------------------------------------

	------------------------------------------------------------------------°ЧТшіЗ[РВКЦЦёµјЎ¤ЙЄ°І](2223,2785)-----------------------------------------------

        ------------------------------------------ПйКуДЦґєЛНАс°ь(Т»)---------°ЧТшіЗРВКЦЦёµј

	DefineMission(6205,"ПйКуДЦґєЛНАс°ь",1257)

	MisBeginTalk("<t>»рКчТш»ЁУ­УсКу,ЙЅХдєЈО¶БРЅрЕМ.<n><t>ЗЧ°®µДЕуУС,єЈµБНх№§єШДъКуДкјЄПй,НтКВЛіРД!З°јёИХїЙ°®µДРЎАПКуЩµ°єНРОТФЪіЗЦРОЄ30ј¶ЦБ64ј¶µДНжјТЕЙЛНєм°ь,Т»ИЛЅцУРТ»ґО»ъ»б,єГФЛІ»їЙґн№э!ёПЅфјУИлЕЙЛНРРБР°Й!НкіЙИООсєуЗлµЅ°ЧТшіЗРВКЦЦёµјЎ¤ЙЄ°І(2223,2785)ДЗБмИЎЅ±Аш.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1257)
	MisBeginAction(AddTrigger, 12571, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1257)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>С§»бЦЄЧг,С§»б·ЦПн,·ЅДЬёРКЬРТёЈ!РЎАПКуЩµ°єЦ»ОЄГїО»НжјТЧј±ёБЛТ»ёцєм°ь,ДъИ·¶ЁРВКЦКуДкєм°ьКЗДъТЄБмИЎµДВр?ДЗГґОТГЗїЄКј°Й!ёчґуЦчіЗНвѕщїЙ»сµГГАО¶µДѕ«Бй№ы,ЛбМрµД№ыЦ­КЗЩµ°єµДЧо°®,јЇЖл99ёцѕНїЙµГµЅЩµ°єЗЧКЦ·мЦЖµДКуДкРВКЦєм°ь,їмїмРР¶ЇЖрАґ!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------ѕ«Бй№ы


	MisHelpTalk("<t>ѕЭЛµёчЦЦАаµДѕ«БйІЭЙнЙП¶ј»бі¤іцГАО¶ёКМрµДѕ«Бй№ы,99ёцѕ«Бй№ыТІКЗДгДНРДµДјыЦ¤!јУУН°Й!")
	MisResultTalk("<t>Хвёцѕ«ГАµДРВКЦКуДкєм°ьѕНЛНДгАІ,ґтїЄєуУР»ъВК»сµГГФДгєЪБъ°ьаё!")

	MisResultCondition(HasMission, 1257)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------РВКЦКуДкєм°ь
	MisResultAction(ClearMission, 1257) 
	MisResultAction(SetRecord, 1257) 
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1257, 10, 99)
	RegCurTrigger(12571)

       ------------------------------------------ПйКуДЦґєґуАсµЅ(¶ю)---------°ЧТшіЗРВКЦЦёµј

	DefineMission(6206,"ПйКуДЦґєґуАсµЅ",1258)

	MisBeginTalk("<t>»ЁПгДсУпєЈµБНъ,УкЛі·зµчКуЛк·б.<n><t>ЗЧ°®µДЕуУС,єЈµБНх№§єШДъКуДкємФЛµ±Н·,ІЖФґ№ц№ц!З°јёИХїЙ°®µДРЎАПКуЩµ°єНРОТФЪіЗЦРОЄ65ј¶ЦБ84ј¶µДНжјТЕЙЛНєм°ь,Т»ИЛЅцУРТ»ґО»ъ»б,єГФЛІ»їЙґн№э!ёПЅфјУИлЕЙЛНРРБР°Й!НкіЙИООсєуЗлµЅ°ЧТшіЗРВКЦЦёµјЎ¤ЙЄ°І(2223,2785)ДЗБмИЎЅ±Аш.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1258)
	MisBeginAction(AddTrigger, 12581, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1258)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>іН¶сСпЙЖ,ЧцєЈµБКАЅзµДУўРЫ,·ЅДЬБмОтЧЭєбЅ­єюµДєАЗй!РЎАПКуЩµ°єФЪРВґєµЅАґЦ®јК,їТЗлДъХ¶Й±ЙЅФфКЧБмЎ¤тсЙЯІў»сИЎЛыЙнЙПµДЙЅФфСьґш!ТФґЛОЄЖѕДъЅ«»сµГЩµ°єѕ«РДЦЖЧчµДёЯј¶КуДкєм°ь,УВКїГЗ!МбЖрДъКЦЦРµДАыЅЈ,РР¶ЇЖрАґ°Й!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------ЙЅФфСьґш


	MisHelpTalk("<t>ѕЭЛµЙЅФфКЧБмЎ¤тсЙЯНЁіЈФЪ(јУДЙ1038,3039)ёЅЅьіцГ»,ёПЅфіц·ў°Й,ОТµДУВКї!")
	MisResultTalk("<t>аЮ!МмДЕ,Г»ПлµЅХвГґ¶МµДК±јдДгѕННкіЙБЛИООс.ХвёцёЯј¶КуДкєм°ьКЗЩµ°є¶ФДгµДЅ±Аш,ґтїЄЛь»бУРТвПлІ»µЅµДѕЄПІаё!")

	MisResultCondition(HasMission, 1258)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------ёЯј¶КуДкєм°ь
	MisResultAction(ClearMission, 1258)                        
	MisResultAction(SetRecord, 1258)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1258, 10, 1)
	RegCurTrigger(12581)

	------------------------------------------ПйКуДЦґєЗмКўµд(Иэ)---------°ЧТшіЗРВКЦЦёµј

	DefineMission(6207,"ПйКуДЦґєЗмКўµд",1259)

	MisBeginTalk("<t> члЅЗ·пГ«єЈµБМн ,КуРлГо±Кґє№вµг.<n><t>ЗЧ°®µДЕуУС,єЈµБНх№§єШДъКуДкјЄРЗёЯХХ,З°іМЛЖЅх!З°јёИХїЙ°®µДРЎАПКуЩµ°єНРОТФЪіЗЦРОЄ85ј¶ЦБ100ј¶µДНжјТЕЙЛНєм°ь,Т»ИЛЅцУРТ»ґО»ъ»б,єГФЛІ»їЙґн№э!ёПЅфјУИлЕЙЛНРРБР°Й!НкіЙИООсєуЗлµЅ°ЧТшіЗРВКЦЦёµјЎ¤ЙЄ°І(2223,2785)ДЗБмИЎЅ±Аш.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1259)
	MisBeginAction(AddTrigger, 12591, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1259)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>ЧоЅьРЎАПКуЩµ°єФЪД§·ЁК¦ПДМмДЗС§µЅБЛТ»ёцЙсЖжµДД§·Ё,ОЄИэґуЦчіЗЦЖЧчД§·ЁДЬБїХЦ,ЧиµІР°¶сµДЗЦП®.ДїЗ°»№И±ЙЩ10ёцУА¶Ї»ъРµ,Ѕ«ТЄ»сµГі¬ј¶КуДкєм°ь»ЭФщµДДгТ»¶ЁІ»»бѕЬѕшХвёцРЎРЎµДЗлЗу°Й?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------УА¶Ї»ъРµ


	MisHelpTalk("<t>Р°¶сµД»ъРµѕЮ±шЙнЙП,ДЬБїЗїґуµДА¶ЖйєЅєЈКї»ГПс,А¶ЖйЛ«ЅЈКї»ГПс,·ЖАы¶ыГ°ПХХЯ»ГПс,°¬ГЧТ©К¦»ГПс,°¬ГЧ·вУЎ»ГПсЙнЙПѕщІШУРґЛОп,ОЄБЛИэґуЦчіЗµД°ІДюУлєНЖЅ,їм°С10ёцУА¶Ї»ъРµґшёшЩµ°є.")
	MisResultTalk("<t>ЧчОЄХэТеУлєНЖЅµДПуХч,РЎАПКуЩµ°є¶ЈЦцОТТ»¶ЁТЄ°СХвёці¬ј¶КуДкєм°ьЛНУиДг,°ьДЪїЙїЄіцЖЇББЛ§ЖшµДРВґєМЧЧ°аё!»№µИКІГґ?ЕуУС,ёПЅфґтїЄїґїґ!")

	MisResultCondition(HasMission, 1259)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------і¬ј¶КуДкєм°ь
	MisResultAction(ClearMission, 1259)                        
	MisResultAction(SetRecord, 1259)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1259, 10, 10)
	RegCurTrigger(12591)


	------------------------------------------------------------------------±щАЗ±¤[РВКЦЦёµјЎ¤°ІзчВ¶СЗ](1315,507)ЦШёґ-----------------------------------------------
       
       ------------------------------------------ПйКуДЦґєЛНАс°ь(Т»)---------±щАЗ±¤РВКЦЦёµј

	DefineMission(6208,"ПйКуДЦґєЛНАс°ь",1260)

	MisBeginTalk("<t>»рКчТш»ЁУ­УсКу,ЙЅХдєЈО¶БРЅрЕМ.<n><t>ЗЧ°®µДЕуУС,єЈµБНх№§єШДъКуДкјЄПй,НтКВЛіРД!З°јёИХїЙ°®µДРЎАПКуЩµ°єНРОТФЪіЗЦРОЄ30ј¶ЦБ64ј¶µДНжјТЕЙЛНєм°ь,Т»ИЛЅцУРТ»ґО»ъ»б,єГФЛІ»їЙґн№э!ёПЅфјУИлЕЙЛНРРБР°Й!НкіЙИООсєуЗлµЅ±щАЗ±¤РВКЦЦёµјЎ¤°ІзчВ¶СЗ(1315,507)ДЗБмИЎЅ±Аш.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1260)
	MisBeginAction(AddTrigger, 12601, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1260)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>С§»бЦЄЧг,С§»б·ЦПн,·ЅДЬёРКЬРТёЈ!РЎАПКуЩµ°єЦ»ОЄГїО»НжјТЧј±ёБЛТ»ёцєм°ь,ДъИ·¶ЁРВКЦКуДкєм°ьКЗДъТЄБмИЎµДВр?ДЗГґОТГЗїЄКј°Й!ёчґуЦчіЗНвѕщїЙ»сµГГАО¶µДѕ«Бй№ы,ЛбМрµД№ыЦ­КЗЩµ°єµДЧо°®,јЇЖл99ёцѕНїЙµГµЅЩµ°єЗЧКЦ·мЦЖµДКуДкРВКЦєм°ь,їмїмРР¶ЇЖрАґ!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------ѕ«Бй№ы


	MisHelpTalk("<t>ѕЭЛµёчЦЦАаµДѕ«БйІЭЙнЙП¶ј»бі¤іцГАО¶ёКМрµДѕ«Бй№ы,99ёцѕ«Бй№ыТІКЗДгДНРДµДјыЦ¤!јУУН°Й!")
	MisResultTalk("<t>Хвёцѕ«ГАµДРВКЦКуДкєм°ьѕНЛНДгАІ,ґтїЄєуУР»ъВК»сµГГФДгєЪБъ°ьаё!")

	MisResultCondition(HasMission, 1260)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------РВКЦКуДкєм°ь
	MisResultAction(ClearMission, 1260)                        
	MisResultAction(SetRecord, 1260)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1260, 10, 99)
	RegCurTrigger(12601)

       ------------------------------------------ПйКуДЦґєґуАсµЅ(¶ю)---------±щАЗ±¤РВКЦЦёµј

	DefineMission(6209,"ПйКуДЦґєґуАсµЅ",1261)

	MisBeginTalk("<t>»ЁПгДсУпєЈµБНъ,УкЛі·зµчКуЛк·б.<n><t>ЗЧ°®µДЕуУС,єЈµБНх№§єШДъКуДкємФЛµ±Н·,ІЖФґ№ц№ц!З°јёИХїЙ°®µДРЎАПКуЩµ°єНРОТФЪіЗЦРОЄ65ј¶ЦБ84ј¶µДНжјТЕЙЛНєм°ь,Т»ИЛЅцУРТ»ґО»ъ»б,єГФЛІ»їЙґн№э!ёПЅфјУИлЕЙЛНРРБР°Й!НкіЙИООсєуЗлµЅ±щАЗ±¤РВКЦЦёµјЎ¤°ІзчВ¶СЗ(1315,507)ДЗБмИЎЅ±Аш.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1261)
	MisBeginAction(AddTrigger, 12611, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1261)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>іН¶сСпЙЖ,ЧцєЈµБКАЅзµДУўРЫ,·ЅДЬБмОтЧЭєбЅ­єюµДєАЗй!РЎАПКуЩµ°єФЪРВґєµЅАґЦ®јК,їТЗлДъХ¶Й±ЙЅФфКЧБмЎ¤тсЙЯІў»сИЎЛыЙнЙПµДЙЅФфСьґш!ТФґЛОЄЖѕДъЅ«»сµГЩµ°єѕ«РДЦЖЧчµДёЯј¶КуДкєм°ь,УВКїГЗ!МбЖрДъКЦЦРµДАыЅЈ,РР¶ЇЖрАґ°Й!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------ЙЅФфСьґш


	MisHelpTalk("<t>ѕЭЛµЙЅФфКЧБмЎ¤тсЙЯНЁіЈФЪ(јУДЙ1038,3039)ёЅЅьіцГ»,ёПЅфіц·ў°Й,ОТµДУВКї!")
	MisResultTalk("<t>аЮ!МмДЕ,Г»ПлµЅХвГґ¶МµДК±јдДгѕННкіЙБЛИООс.ХвёцёЯј¶КуДкєм°ьКЗЩµ°є¶ФДгµДЅ±Аш,ґтїЄЛь»бУРТвПлІ»µЅµДѕЄПІаё!")

	MisResultCondition(HasMission, 1261)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------ёЯј¶КуДкєм°ь
	MisResultAction(ClearMission, 1261)                        
	MisResultAction(SetRecord, 1261)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1261, 10, 1)
	RegCurTrigger(12611)

	------------------------------------------ПйКуДЦґєЗмКўµд(Иэ)---------±щАЗ±¤РВКЦЦёµј

	DefineMission(6210,"ПйКуДЦґєЗмКўµд",1262)

	MisBeginTalk("<t> члЅЗ·пГ«єЈµБМн ,КуРлГо±Кґє№вµг.<n><t>ЗЧ°®µДЕуУС,єЈµБНх№§єШДъКуДкјЄРЗёЯХХ,З°іМЛЖЅх!З°јёИХїЙ°®µДРЎАПКуЩµ°єНРОТФЪіЗЦРОЄ85ј¶ЦБ100ј¶µДНжјТЕЙЛНєм°ь,Т»ИЛЅцУРТ»ґО»ъ»б,єГФЛІ»їЙґн№э!ёПЅфјУИлЕЙЛНРРБР°Й!НкіЙИООсєуЗлµЅ±щАЗ±¤РВКЦЦёµјЎ¤°ІзчВ¶СЗ(1315,507)ДЗБмИЎЅ±Аш.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1262)
	MisBeginAction(AddTrigger, 12621, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1262)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>ЧоЅьРЎАПКуЩµ°єФЪД§·ЁК¦ПДМмДЗС§µЅБЛТ»ёцЙсЖжµДД§·Ё,ОЄИэґуЦчіЗЦЖЧчД§·ЁДЬБїХЦ,ЧиµІР°¶сµДЗЦП®.ДїЗ°»№И±ЙЩ10ёцУА¶Ї»ъРµ,Ѕ«ТЄ»сµГі¬ј¶КуДкєм°ь»ЭФщµДДгТ»¶ЁІ»»бѕЬѕшХвёцРЎРЎµДЗлЗу°Й?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------УА¶Ї»ъРµ


	MisHelpTalk("<t>Р°¶сµД»ъРµѕЮ±шЙнЙП,ДЬБїЗїґуµДА¶ЖйєЅєЈКї»ГПс,А¶ЖйЛ«ЅЈКї»ГПс,·ЖАы¶ыГ°ПХХЯ»ГПс,°¬ГЧТ©К¦»ГПс,°¬ГЧ·вУЎ»ГПсЙнЙПѕщІШУРґЛОп,ОЄБЛИэґуЦчіЗµД°ІДюУлєНЖЅ,їм°С10ёцУА¶Ї»ъРµґшёшЩµ°є.")
	MisResultTalk("<t>ЧчОЄХэТеУлєНЖЅµДПуХч,РЎАПКуЩµ°є¶ЈЦцОТТ»¶ЁТЄ°СХвёці¬ј¶КуДкєм°ьЛНУиДг,°ьДЪУР»ъВКїЄіцЖЇББЛ§ЖшµДРВґєМЧЧ°аё!»№µИКІГґ?ЕуУС,ёПЅфґтїЄїґїґ!")

	MisResultCondition(HasMission, 1262)
	MisResultCondition(NoRecord, 1262)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)

	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------і¬ј¶КуДкєм°ь
	MisResultAction(ClearMission, 1262)                        
	MisResultAction(SetRecord, 1262)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1262, 10, 10)
	RegCurTrigger(12621)

	------------------------------------------------------------------------Йіб°іЗ[РВКЦЦёµјЎ¤А­Лї±М](876,3572)ЦШёґ-----------------------------------------------
       
       ------------------------------------------ПйКуДЦґєЛНАс°ь(Т»)---------Йіб°іЗРВКЦЦёµј

	DefineMission(6211,"ПйКуДЦґєЛНАс°ь",1263)

	MisBeginTalk("<t>»рКчТш»ЁУ­УсКу,ЙЅХдєЈО¶БРЅрЕМ.<n><t>ЗЧ°®µДЕуУС,єЈµБНх№§єШДъКуДкјЄПй,НтКВЛіРД!З°јёИХїЙ°®µДРЎАПКуЩµ°єНРОТФЪіЗЦРОЄ30ј¶ЦБ64ј¶µДНжјТЕЙЛНєм°ь,Т»ИЛЅцУРТ»ґО»ъ»б,єГФЛІ»їЙґн№э!ёПЅфјУИлЕЙЛНРРБР°Й!НкіЙИООсєуЗлµЅЙіб°іЗРВКЦЦёµјЎ¤А­Лї±М(876,3572)ДЗБмИЎЅ±Аш.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",29)
	MisBeginCondition(LvCheck, "<",65)
	MisBeginAction(AddMission, 1263)
	MisBeginAction(AddTrigger, 12631, TE_GETITEM, 3116, 99)          

	MisCancelAction(ClearMission,1263)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>С§»бЦЄЧг,С§»б·ЦПн,·ЅДЬёРКЬРТёЈ!РЎАПКуЩµ°єЦ»ОЄГїО»НжјТЧј±ёБЛТ»ёцєм°ь,ДъИ·¶ЁРВКЦКуДкєм°ьКЗДъТЄБмИЎµДВр?ДЗГґОТГЗїЄКј°Й!ёчґуЦчіЗНвѕщїЙ»сµГГАО¶µДѕ«Бй№ы,ЛбМрµД№ыЦ­КЗЩµ°єµДЧо°®,јЇЖл99ёцѕНїЙµГµЅЩµ°єЗЧКЦ·мЦЖµДКуДкРВКЦєм°ь,їмїмРР¶ЇЖрАґ!")
	MisNeed(MIS_NEED_ITEM, 3116, 99, 10, 99)               ---------ѕ«Бй№ы


	MisHelpTalk("<t>ѕЭЛµёчЦЦАаµДѕ«БйІЭЙнЙП¶ј»бі¤іцГАО¶ёКМрµДѕ«Бй№ы,99ёцѕ«Бй№ыТІКЗДгДНРДµДјыЦ¤!јУУН°Й!")
	MisResultTalk("<t>Хвёцѕ«ГАµДРВКЦКуДкєм°ьѕНЛНДгАІ,ґтїЄєуУР»ъВК»сµГГФДгєЪБъ°ьаё!")

	MisResultCondition(HasMission, 1263)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)

	MisResultCondition(HasItem, 3116, 99)

	MisResultAction(TakeItem, 3116, 99)

	MisResultAction(GiveItem, 5648, 1, 4)                          ---------РВКЦКуДкєм°ь
	MisResultAction(ClearMission, 1263) 
	MisResultAction(SetRecord, 1263) 
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1263, 10, 99)
	RegCurTrigger(12631)

       ------------------------------------------ПйКуДЦґєґуАсµЅ(¶ю)---------Йіб°іЗРВКЦЦёµј

	DefineMission(6212,"ПйКуДЦґєґуАсµЅ",1264)

	MisBeginTalk("<t>»ЁПгДсУпєЈµБНъ,УкЛі·зµчКуЛк·б.<n><t>ЗЧ°®µДЕуУС,єЈµБНх№§єШДъКуДкємФЛµ±Н·,ІЖФґ№ц№ц!З°јёИХїЙ°®µДРЎАПКуЩµ°єНРОТФЪіЗЦРОЄ65ј¶ЦБ84ј¶µДНжјТЕЙЛНєм°ь,Т»ИЛЅцУРТ»ґО»ъ»б,єГФЛІ»їЙґн№э!ёПЅфјУИлЕЙЛНРРБР°Й!НкіЙИООсєуЗлµЅЙіб°іЗРВКЦЦёµјЎ¤А­Лї±М(876,3572)ДЗБмИЎЅ±Аш.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",64)
	MisBeginCondition(LvCheck, "<",85)
	MisBeginAction(AddMission, 1264)
	MisBeginAction(AddTrigger, 12641, TE_GETITEM, 4495, 1)          

	MisCancelAction(ClearMission,1264)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>іН¶сСпЙЖ,ЧцєЈµБКАЅзµДУўРЫ,·ЅДЬБмОтЧЭєбЅ­єюµДєАЗй!РЎАПКуЩµ°єФЪРВґєµЅАґЦ®јК,їТЗлДъХ¶Й±ЙЅФфКЧБмЎ¤тсЙЯІў»сИЎЛыЙнЙПµДЙЅФфСьґш!ТФґЛОЄЖѕДъЅ«»сµГЩµ°єѕ«РДЦЖЧчµДёЯј¶КуДкєм°ь,УВКїГЗ!МбЖрДъКЦЦРµДАыЅЈ,РР¶ЇЖрАґ°Й!")
	MisNeed(MIS_NEED_ITEM, 4495, 1, 10, 1)               ---------ЙЅФфСьґш


	MisHelpTalk("<t>ѕЭЛµЙЅФфКЧБмЎ¤тсЙЯНЁіЈФЪ(јУДЙ1038,3039)ёЅЅьіцГ»,ёПЅфіц·ў°Й,ОТµДУВКї!")
	MisResultTalk("<t>аЮ!МмДЕ,Г»ПлµЅХвГґ¶МµДК±јдДгѕННкіЙБЛИООс.ХвёцёЯј¶КуДкєм°ьКЗЩµ°є¶ФДгµДЅ±Аш,ґтїЄЛь»бУРТвПлІ»µЅµДѕЄПІаё!")

	MisResultCondition(HasMission, 1264)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)


	MisResultCondition(HasItem, 4495, 1)

	MisResultAction(TakeItem, 4495, 1)

	MisResultAction(GiveItem, 5649, 1, 4)                          ---------ёЯј¶КуДкєм°ь
	MisResultAction(ClearMission, 1264)                        
	MisResultAction(SetRecord, 1264)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4495)
	TriggerAction(1, AddNextFlag, 1264, 10, 1)
	RegCurTrigger(12641)

	------------------------------------------ПйКуДЦґєЗмКўµд(Иэ)---------Йіб°іЗРВКЦЦёµј

	DefineMission(6213,"ПйКуДЦґєЗмКўµд",1265)

	MisBeginTalk("<t> члЅЗ·пГ«єЈµБМн ,КуРлГо±Кґє№вµг.<n><t>ЗЧ°®µДЕуУС,єЈµБНх№§єШДъКуДкјЄРЗёЯХХ,З°іМЛЖЅх!З°јёИХїЙ°®µДРЎАПКуЩµ°єНРОТФЪіЗЦРОЄ85ј¶ЦБ100ј¶µДНжјТЕЙЛНєм°ь,Т»ИЛЅцУРТ»ґО»ъ»б,єГФЛІ»їЙґн№э!ёПЅфјУИлЕЙЛНРРБР°Й!НкіЙИООсєуЗлµЅЙіб°іЗРВКЦЦёµјЎ¤А­Лї±М(876,3572)ДЗБмИЎЅ±Аш.")

	MisBeginCondition(NoMission, 1257)
	MisBeginCondition(NoMission, 1258)
	MisBeginCondition(NoMission, 1259)
	MisBeginCondition(NoMission, 1260)
	MisBeginCondition(NoMission, 1261)
	MisBeginCondition(NoMission, 1262)
	MisBeginCondition(NoMission, 1263)
	MisBeginCondition(NoMission, 1264)
	MisBeginCondition(NoMission, 1265)
	--MisBeginCondition(NoMission, 1265)
	MisBeginCondition(NoRecord, 1265)
	MisBeginCondition(NoRecord, 1263)
	MisBeginCondition(NoRecord, 1264)
	MisBeginCondition(NoRecord, 1257)
	MisBeginCondition(NoRecord, 1258)
	MisBeginCondition(NoRecord, 1259)
	MisBeginCondition(NoRecord, 1260)
	MisBeginCondition(NoRecord, 1261)
	MisBeginCondition(NoRecord, 1262)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginCondition(LvCheck, "<",101)
	MisBeginAction(AddMission, 1265)
	MisBeginAction(AddTrigger, 12651, TE_GETITEM, 0179, 10)          

	MisCancelAction(ClearMission,1265)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>ЧоЅьРЎАПКуЩµ°єФЪД§·ЁК¦ПДМмДЗС§µЅБЛТ»ёцЙсЖжµДД§·Ё,ОЄИэґуЦчіЗЦЖЧчД§·ЁДЬБїХЦ,ЧиµІР°¶сµДЗЦП®.ДїЗ°»№И±ЙЩ10ёцУА¶Ї»ъРµ,Ѕ«ТЄ»сµГі¬ј¶КуДкєм°ь»ЭФщµДДгТ»¶ЁІ»»бѕЬѕшХвёцРЎРЎµДЗлЗу°Й?")
	MisNeed(MIS_NEED_ITEM, 0179, 10, 10, 10)               ---------УА¶Ї»ъРµ


	MisHelpTalk("<t>Р°¶сµД»ъРµѕЮ±шЙнЙП,ДЬБїЗїґуµДА¶ЖйєЅєЈКї»ГПс,А¶ЖйЛ«ЅЈКї»ГПс,·ЖАы¶ыГ°ПХХЯ»ГПс,°¬ГЧТ©К¦»ГПс,°¬ГЧ·вУЎ»ГПсЙнЙПѕщІШУРґЛОп,ОЄБЛИэґуЦчіЗµД°ІДюУлєНЖЅ,їм°С10ёцУА¶Ї»ъРµґшёшЩµ°є.")
	MisResultTalk("<t>ЧчОЄХэТеУлєНЖЅµДПуХч,РЎАПКуЩµ°є¶ЈЦцОТТ»¶ЁТЄ°СХвёці¬ј¶КуДкєм°ьЛНУиДг,°ьДЪїЙїЄіцЖЇББЛ§ЖшµДРВґєМЧЧ°аё!»№µИКІГґ?ЕуУС,ёПЅфґтїЄїґїґ!")

	MisResultCondition(HasMission, 1265)
	MisResultCondition(NoRecord, 1265)
	MisResultCondition(NoRecord, 1263)
	MisResultCondition(NoRecord, 1264)
	MisResultCondition(NoRecord, 1257)
	MisResultCondition(NoRecord, 1258)
	MisResultCondition(NoRecord, 1259)
	MisResultCondition(NoRecord, 1260)
	MisResultCondition(NoRecord, 1261)
	MisResultCondition(NoRecord, 1262)

	MisResultCondition(HasItem, 0179, 10)

	MisResultAction(TakeItem, 0179, 10)

	MisResultAction(GiveItem, 5650, 1, 4)                          ---------і¬ј¶КуДкєм°ь
	MisResultAction(ClearMission, 1265)                        
	MisResultAction(SetRecord, 1265)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 0179)
	TriggerAction(1, AddNextFlag, 1265, 10, 10)
	RegCurTrigger(12651)

	--------------------------------------------------------------kokora(end)------------------------------------------------------------------

--------------------------------------------------------------dina¶юґОЧЄЙъИООс(begin)------------------------------------------------------------------
	-------------------------------------------------------ФЎ»рЦШЙъЦ®Т»--------ЅМ»КК·°є
	DefineMission( 6214, "Revival I", 1266 )
	MisBeginTalk("<t>Е¶ЈЎДъµДУВёТХжИГОТѕґЕеєНёР¶ЇЎЈИз№ыДъХжµДДЬЅвѕИіцОТµДКҐ¶·КїГЗЈ¬ОТФёТв°СЅМ»КµДО»ЦГИГёшДгЈ¬Іў°СОТГЗКҐµоЦ®±¦ЎЄЎЄ<rФЎ»рЦШЙъ>КЇЛНёшДгЈ¬ґ«ЛµДЗїйКЇН·їЙТФИГДъ»сµГЙсТ»°гµДі¬ДЬБ¦ЎЈµЪТ»їй·ыОДУ¦ёГКЗФЪµШУьµЪОеІгКШ»¤ХЯѕшНыЖпКї-ИыА­µДЙнЙПЈ¬ЛыКЗ°ЧСтЧщЎЄЎЄДВ(59,51)µД»ЇЙнЎЈИҐ°ЙЈЎУВКїЈЎОТєНСЕµдДИ»бТ»Ц±ОЄДъЖнµ»µД")
	MisBeginCondition(NoMission, 1266)
	MisBeginCondition(NoRecord,1266)
	MisBeginCondition( Checksailexpmore, 9000)
	MisBeginAction(AddMission,1266)
	MisBeginAction(AddTrigger, 12661, TE_GETITEM, 5753, 1)
	MisBeginAction(AddTrigger, 12662, TE_GETITEM, 5754, 1)
	MisBeginAction(AddTrigger, 12663, TE_GETITEM, 5755, 1)
	MisBeginAction(AddTrigger, 12664, TE_GETITEM, 5756, 1)
	MisBeginAction(AddTrigger, 12665, TE_GETITEM, 5757, 1)
	MisBeginAction(AddTrigger, 12666, TE_GETITEM, 5758, 1)
	
	--MisCancelAction(ClearMission, 1266)

	MisNeed(MIS_NEED_DESP, "ЅшИлµШУьµЪ6ІгЦБµЪ11ІгИҐЅвѕИіцКҐ¶·Кї,ІўµГµЅ6ёцКҐ¶·Кї·ыОД.")
	MisNeed(MIS_NEED_ITEM, 5753, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 5754, 1, 15, 1)
	MisNeed(MIS_NEED_ITEM, 5755, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 5756, 1, 25, 1)
	MisNeed(MIS_NEED_ITEM, 5757, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 5758, 1, 35, 1)
	
	MisHelpTalk("<t>µЪТ»їй·ыОДУ¦ёГКЗФЪµШУьµЪОеІгКШ»¤ХЯѕшНыЖпКї-ИыА­µДЙнЙПЈ¬ЛыКЗ°ЧСтЧщЎЄЎЄДВ(59,51)µД»ЇЙнЎЈИҐ°ЙЈЎУВКїЈЎОТєНСЕµдДИ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisResultTalk("<t>І»АўКЗєЈµБНхµДУВХЯЈЎЗлДгјМРшЗ°НщµШУьИҐЅвѕИБнНв6ёцКҐ¶·КїГЗЈ¬јбРЕДгТ»¶ЁїЙТФµДЈЎ")

	MisResultCondition(HasMission, 1266)
	MisResultCondition(NoRecord,1266)
	MisResultCondition(HasItem, 5753, 1)
	MisResultCondition(HasItem, 5754, 1)
	MisResultCondition(HasItem, 5755, 1)
	MisResultCondition(HasItem, 5756, 1)
	MisResultCondition(HasItem, 5757, 1)
	MisResultCondition(HasItem, 5758, 1)
		
	MisResultAction(TakeItem, 5753, 1 )
	MisResultAction(TakeItem, 5754, 1 )
	MisResultAction(TakeItem, 5755, 1 )
	MisResultAction(TakeItem, 5756, 1 )
	MisResultAction(TakeItem, 5757, 1 )
	MisResultAction(TakeItem, 5758, 1 )
	
	
	MisResultAction(ClearMission, 1266)
	MisResultAction(SetRecord, 1266)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 5753)	
	TriggerAction( 1, AddNextFlag, 1266, 10, 1 )
	RegCurTrigger( 12661 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5754)	
	TriggerAction( 1, AddNextFlag, 1266, 15, 1 )
	RegCurTrigger( 12662 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5755)	
	TriggerAction( 1, AddNextFlag, 1266, 20, 1 )
	RegCurTrigger( 12663 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5756)	
	TriggerAction( 1, AddNextFlag, 1266, 25, 1 )
	RegCurTrigger( 12664 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5757)	
	TriggerAction( 1, AddNextFlag, 1266, 30, 1 )
	RegCurTrigger( 12665 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5758)	
	TriggerAction( 1, AddNextFlag, 1266, 35, 1 )
	RegCurTrigger( 12666 )
		
	-------------------------------------------------------ДВµД·ыОД--------ДВ
	DefineMission( 6215, "Mu's Rune",1267 )
	MisBeginTalk( "<t>ТЄґт°ЬѕшНыЖпКї-ИыА­Ј¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1267)
	MisBeginCondition( NoRecord, 1267)
	MisBeginCondition( HasMission, 1266)
	MisBeginAction(	AddMission, 1267)
	MisBeginAction( AddTrigger, 12671, TE_KILL, 974, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 974, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈПВТ»їй·ыОДФЪµШУьµЪБщІгКШ»¤ХЯЪ¤Да№Ц-їЁЖХ¶ЩЙнЙПЈ¬ЛыКЗЅрЕЈЧщЎЄЎЄ°ўВіµТ°Н(178,77)µД»ЇЙнЎЈИҐ°ЙЈ¬УВКїЈЎОТ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisHelpTalk( "<t>ґт°ЬѕшНыЖпКї-ИыА­,ЅвНСДВµДБй»кЎЈ")
	MisResultCondition( HasFlag, 1267, 10)
	MisResultAction(GiveItem, 5753,1,4)------------ёшMU·ыОД
	MisResultCondition( HasMission, 1267)
	MisResultAction( ClearMission, 1267)
	MisResultAction(SetRecord, 1267)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 974 )
	TriggerAction( 1, AddNextFlag, 1267, 10, 1 )
	RegCurTrigger( 12671 )

	
	-------------------------------------------------------°ўВіµТ°Н·ыОД--------°ўВіµТ°Н
	DefineMission( 6216, "Aldebaran's Rune",1268 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Да№Ц-їЁЖХ¶ЩЈ¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1268)
	MisBeginCondition( NoRecord, 1268)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1267)
	MisBeginAction(	AddMission, 1268)
	MisBeginAction( AddTrigger, 12681, TE_KILL, 975, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 975, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈПВТ»їй·ыОДФЪµШУьµЪЖЯІгКШ»¤ХЯЪ¤Зф-°ў¶ыМбЛ№ЙнЙПЈ¬ЛыКЗЛ«ЧУЧщЎЄЎЄИцјУ(205,170)µД»ЇЙнЎЈИҐ°ЙЈ¬УВКїЈЎОТ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Да№Ц-їЁЖХ¶Щ,ЅвНС°ўВіµТ°НµДБй»кЎЈ")
	MisResultCondition( HasFlag, 1268, 10)
	MisResultAction(GiveItem, 5754,1,4)------------ёшALDEBA·ыОД  
	MisResultCondition( HasMission, 1268)
	MisResultAction( ClearMission, 1268)
	MisResultAction(SetRecord, 1268)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 975 )
	TriggerAction( 1, AddNextFlag, 1268, 10, 1 )
	RegCurTrigger( 12681 )
	
	-------------------------------------------------------ИцјУ·ыОД--------ИцјУ
	DefineMission( 6217, "Saga's Rune",1269 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Зф-°ў¶ыМбЛ№Ј¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1269)
	MisBeginCondition( NoRecord, 1269)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1268)
	MisBeginAction(	AddMission, 1269)
	MisBeginAction( AddTrigger, 12691, TE_KILL, 976, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 976, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈПВТ»їй·ыОДФЪµШУьµЪ°ЛІгКШ»¤ХЯЪ¤Сэ-ИшївОчЛ№ЙнЙПЈ¬ЛыКЗѕЮР·ЧщЎЄЎЄµТВнЛ№(85,198)µД»ЇЙнЎЈИҐ°ЙЈ¬УВКїЈЎОТ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Зф-°ў¶ыМбЛ№,ЅвНСИцјУµДБй»кЎЈ")
	MisResultCondition( HasFlag, 1269, 10)
	MisResultAction(GiveItem, 5755,1,4)------------ёшИцјУ·ыОД  
	MisResultCondition( HasMission, 1269)
	MisResultAction( ClearMission, 1269)
	MisResultAction(SetRecord, 1269)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 976 )
	TriggerAction( 1, AddNextFlag, 1269, 10, 1 )
	RegCurTrigger( 12691 )
	
	-------------------------------------------------------µТВнЛ№·ыОД--------µТВнЛ№
	DefineMission( 6218, "Death Mask's Rune",1270 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Сэ-ИшївОчЛ№Ј¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУьЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1270)
	MisBeginCondition( NoRecord, 1270)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1269)
	MisBeginAction(	AddMission, 1270)
	MisBeginAction( AddTrigger, 12701, TE_KILL, 977, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 977, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈПВТ»їй·ыОДФЪµШУьµЪК®ІгКШ»¤ХЯЪ¤Нх-»Г»КЙнЙПЈ¬ЛыКЗКЁЧУЧщЎЄЎЄ°¬°ВАыСЗ(80,190)µД»ЇЙнЎЈИҐ°ЙЈ¬УВКїЈЎОТ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Сэ-ИшївОчЛ№,ЅвНСµТВнЛ№µДБй»кЎЈ")
	MisResultCondition( HasFlag, 1270, 10)
	MisResultAction(GiveItem, 5756,1,4)------------ёшµТВнЛ№·ыОД  
	MisResultCondition( HasMission, 1270)
	MisResultAction( ClearMission, 1270)
	MisResultAction(SetRecord, 1270)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 977 )
	TriggerAction( 1, AddNextFlag, 1270, 10, 1 )
	RegCurTrigger( 12701 )
	
	-------------------------------------------------------°¬°ВАыСЗ·ыОД--------°¬°ВАыСЗ
	DefineMission( 6219, "Aeolia's Rune",1271 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Нх-»Г»КЈ¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1271)
	MisBeginCondition( NoRecord, 1271)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1270)
	MisBeginAction(	AddMission, 1271)
	MisBeginAction( AddTrigger, 12711, TE_KILL, 979, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 979, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈПВТ»їй·ыОДФЪµШУьµЪК®Т»ІгКШ»¤ХЯЪ¤Нх-Сэ»рЙнЙПЈ¬ЛыКЗґ¦Е®ЧщЎЄЎЄЙіјУ(79,78)µД»ЇЙнЎЈИҐ°ЙЈ¬УВКїЈЎОТ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Нх-»Г»К,ЅвНС°¬°ВАыСЗµДБй»кЎЈ")
	MisResultCondition( HasFlag, 1271, 10)
	MisResultAction(GiveItem, 5757,1,4)------------ёш°¬°ВАыСЗ·ыОД  
	MisResultCondition( HasMission, 1271)
	MisResultAction( ClearMission, 1271)
	MisResultAction(SetRecord, 1271)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 979 )
	TriggerAction( 1, AddNextFlag, 1271, 10, 1 )
	RegCurTrigger( 12711 )
	
	-------------------------------------------------------ЙіјУ·ыОД--------ЙіјУАыСЗ
	DefineMission( 6220, "Shaka's Rune",1272 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Нх-Сэ»рЈ¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1272)
	MisBeginCondition( NoRecord, 1272)
	MisBeginCondition( HasMission, 1266)
	MisBeginCondition( HasRecord, 1271)
	MisBeginAction(	AddMission, 1272)
	MisBeginAction( AddTrigger, 12721, TE_KILL, 980, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 980, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈїмґшЧЕОТГЗµД·ыОДИҐХТЅМ»КК·°є(1749,902)°ЙЈЎ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Нх-Сэ»р,ЅвНСЙіјУµДБй»кЎЈ")
	MisResultCondition( HasFlag, 1272, 10)
	MisResultAction(GiveItem, 5758,1,4)------------ёшЙіјУ·ыОД  
	MisResultCondition( HasMission, 1272)
	MisResultAction( ClearMission, 1272)
	MisResultAction(SetRecord, 1272)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 980 )
	TriggerAction( 1, AddNextFlag, 1272, 10, 1 )
	RegCurTrigger( 12721 )
	
	-------------------------------------------------------НЇ»ў·ыОД--------НЇ»ў
	DefineMission( 6221, "Dohko's Rune",1273 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Нх-Р°КЮЈ¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1273)
	MisBeginCondition( NoRecord, 1273)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1272)
	MisBeginAction(	AddMission, 1273)
	MisBeginAction( AddTrigger, 12731, TE_KILL, 981, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 981, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈПВТ»їй·ыОДФЪµШУьµЪК®ИэІгКШ»¤ХЯЪ¤Нх-°ФїсЙнЙПЈ¬ЛыКЗМмР«ЧщЎЄЎЄГЧВЮ(326,76)µД»ЇЙнЎЈИҐ°ЙЈ¬УВКїЈЎОТ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Нх-Р°КЮ,ЅвНСНЇ»ўµДБй»кЎЈ")
	MisResultCondition( HasFlag, 1273, 10)
	MisResultAction(GiveItem, 5759,1,4)------------ёшНЇ»ў·ыОД  
	MisResultCondition( HasMission, 1273)
	MisResultAction( ClearMission, 1273)
	MisResultAction(SetRecord, 1273)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 981 )
	TriggerAction( 1, AddNextFlag, 1273, 10, 1 )
	RegCurTrigger( 12731 )
	
	-------------------------------------------------------ГЧВЮ·ыОД--------ГЧВЮ
	DefineMission( 6222, "Milo's Rune",1274 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Нх-°ФїсЈ¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1274)
	MisBeginCondition( NoRecord, 1274)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1273)
	MisBeginAction(	AddMission, 1274)
	MisBeginAction( AddTrigger, 12741, TE_KILL, 982, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 982, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈПВТ»їй·ыОДФЪµШУьµЪК®ЛДІгКШ»¤ХЯЪ¤Нх-·п»ЛЙнЙПЈ¬ЛыКЗИЛВнЧщЎЄЎЄ°¬¶нВЮЛ№(320,195)µД»ЇЙнЎЈИҐ°ЙЈ¬УВКїЈЎОТ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Нх-°Фїс,ЅвНСГЧВЮµДБй»кЎЈ")
	MisResultCondition( HasFlag, 1274, 10)
	MisResultAction(GiveItem, 5760,1,4)------------ёшГЧВЮ·ыОД  
	MisResultCondition( HasMission, 1274)
	MisResultAction( ClearMission, 1274)
	MisResultAction(SetRecord, 1274)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 982 )
	TriggerAction( 1, AddNextFlag, 1274, 10, 1 )
	RegCurTrigger( 12741 )
	
	-------------------------------------------------------°¬¶нВЮЛ№·ыОД-------°¬¶нВЮЛ№
	DefineMission( 6223, "Aiolos's Rune",1275 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Нх-·п»ЛЈ¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1275)
	MisBeginCondition( NoRecord, 1275)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1274)
	MisBeginAction(	AddMission, 1275)
	MisBeginAction( AddTrigger, 12751, TE_KILL, 983, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 983, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈПВТ»їй·ыОДФЪµШУьµЪК®ОеІгКШ»¤ХЯЪ¤Нх-ѕшНыЙнЙПЈ¬ЛыКЗД¦фЙЧщЎЄЎЄРЮВЮ(318,317)µД»ЇЙнЎЈИҐ°ЙЈ¬УВКїЈЎОТ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Нх-·п»Л,ЅвНС°¬¶нВЮЛ№µДБй»кЎЈ")
	MisResultCondition( HasFlag, 1275, 10)
	MisResultAction(GiveItem, 5761,1,4)------------ёш°¬¶нВЮЛ№·ыОД  
	MisResultCondition( HasMission, 1275)
	MisResultAction( ClearMission, 1275)
	MisResultAction(SetRecord, 1275)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 983 )
	TriggerAction( 1, AddNextFlag, 1275, 10, 1 )
	RegCurTrigger( 12751 )
	
	-------------------------------------------------------РЮВЮ·ыОД-------РЮВЮ
	DefineMission( 6224, "Shura's Rune",1276 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Нх-ѕшНыЈ¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1276)
	MisBeginCondition( NoRecord, 1276)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1275)
	MisBeginAction(	AddMission, 1276)
	MisBeginAction( AddTrigger, 12761, TE_KILL, 984, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 984, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈПВТ»їй·ыОДФЪµШУьµЪК®БщІгКШ»¤ХЯЪ¤Нх-Бъ»кЙнЙПЈ¬ЛыКЗ±¦ЖїЧщЎЄЎЄјУГо(198,310)µД»ЇЙнЎЈИҐ°ЙЈ¬УВКїЈЎОТ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Нх-ѕшНы,ЅвНСРЮВЮµДБй»кЎЈ")
	MisResultCondition( HasFlag, 1276, 10)
	MisResultAction(GiveItem, 5762,1,4)------------ёшРЮВЮ·ыОД  
	MisResultCondition( HasMission, 1276)
	MisResultAction( ClearMission, 1276)
	MisResultAction(SetRecord, 1276)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 984 )
	TriggerAction( 1, AddNextFlag, 1276, 10, 1 )
	RegCurTrigger( 12761 )
	
	-------------------------------------------------------јУГо·ыОД-------јУГо
	DefineMission( 6225, "Acmus's Rune",1277 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Нх-Бъ»кЈ¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1277)
	MisBeginCondition( NoRecord, 1277)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1276)
	MisBeginAction(	AddMission, 1277)
	MisBeginAction( AddTrigger, 12771, TE_KILL, 985, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 985, 1, 10, 1)

	MisResultTalk( "<t>ДъХжКЗО»ЦµµГЧрѕґµДУВКїЎЈЧчОЄЅ±АшЈ¬Хвїй·ыОДДгДГИҐ°ЙЎЈПВТ»їй·ыОДФЪµШУьµЪК®ЖЯІгКШ»¤ХЯЪ¤Нх-єЈЙІЙнЙПЈ¬ЛыКЗЛ«УгЧщЎЄЎЄ°ўІјВЮµТ(80,315)µД»ЇЙнЎЈИҐ°ЙЈ¬УВКїЈЎОТ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Нх-Бъ»к,ЅвНСјУГоµДБй»кЎЈ")
	MisResultCondition( HasFlag, 1277, 10)
	MisResultAction(GiveItem, 5763,1,4)------------ёшјУГо·ыОД  
	MisResultCondition( HasMission, 1277)
	MisResultAction( ClearMission, 1277)
	MisResultAction(SetRecord, 1277)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 985 )
	TriggerAction( 1, AddNextFlag, 1277, 10, 1 )
	RegCurTrigger( 12771 )
	
	-------------------------------------------------------°ўІјВЮµТ·ыОД-------°ўІјВЮµТ
	DefineMission( 6226, "Aphrodite's Rune",1278 )
	MisBeginTalk( "<t>ТЄґт°ЬЪ¤Нх-єЈЙІЈ¬ОТµДБй»кІЕДЬµГµЅЅвНСЈ¬ІЕДЬЦШ·µКҐУтЎЈОТѕхµГДъТ»¶ЁїЙТФЛіАыµДНкіЙИООсЎЈ")
	MisBeginCondition( NoMission, 1278)
	MisBeginCondition( NoRecord, 1278)
	MisBeginCondition( HasMission, 1279)
	MisBeginCondition( HasRecord, 1277)
	MisBeginAction(	AddMission, 1278)
	MisBeginAction( AddTrigger, 12781, TE_KILL, 986, 1)
	-- MisCancelAction( ClearMission, 1266)

	MisNeed( MIS_NEED_KILL, 986, 1, 10, 1)

	MisResultTalk( "<t>Дг°СОТГЗК®¶юёцРЦµЬ¶јѕИіцБЛЈїХжІ»ёТПаРЕЎ­Ў­ОТґъ±нОТГЗЛщУР»ЖЅрКҐ¶·КїёРР»ДъЈєЧрѕґµДєЈµБНхЎЈХвїйЧоєуµД·ыОДДгДГИҐ°ЙЎЈ")
	MisHelpTalk( "<t>ґт°ЬЪ¤Нх-єЈЙІ,ЅвНС°ўІјВЮµТµДБй»кЎЈ")
	MisResultCondition( HasFlag, 1278, 10)
	MisResultAction(GiveItem, 5764,1,4)------------ёш°ўІјВЮµТ·ыОД  
	MisResultCondition( HasMission, 1278)
	MisResultAction( ClearMission, 1278)
	MisResultAction(SetRecord, 1278)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 986 )
	TriggerAction( 1, AddNextFlag, 1278, 10, 1 )
	RegCurTrigger( 12781 )
	
		
	-------------------------------------------------------ФЎ»рЦШЙъЦ®¶ю--------ЅМ»КК·°є
	DefineMission( 6227, "Revival II", 1279 )
	MisBeginTalk("<t>Е¶ЈЎДъµДУВёТХжИГОТѕґЕеєНёР¶ЇЎЈИз№ыДъХжµДДЬЅвѕИіцОТµДКҐ¶·КїГЗЈ¬ОТФёТв°СЅМ»КµДО»ЦГИГёшДгЈ¬Іў°СОТГЗКҐµоЦ®±¦ЎЄЎЄ<rФЎ»рЦШЙъКЇ>ЛНёшДгЈ¬ґ«ЛµДЗїйКЇН·їЙТФИГДъ»сµГЙсТ»°гµДі¬ДЬБ¦ЎЈ¶ФБЛЈ¬µЪЖЯїй·ыОДУ¦ёГКЗФЪµШУьµЪК®¶юІгКШ»¤ХЯЪ¤Нх-Р°КЮЙнЙПЈ¬ЛыКЗМмЖЅЧщЎЄЎЄНЇ»ў(210,80)µД»ЇЙнЎЈИҐ°ЙЈЎУВКїЈЎОТєНСЕµдДИ»бТ»Ц±ОЄДъЖнµ»µД")
	MisBeginCondition(NoMission, 1279)
	MisBeginCondition(NoRecord,1279)
	MisBeginCondition(HasRecord,1266)
	MisBeginAction(AddMission,1279)
	MisBeginAction(AddTrigger, 12791, TE_GETITEM, 5759, 1)
	MisBeginAction(AddTrigger, 12792, TE_GETITEM, 5760, 1)
	MisBeginAction(AddTrigger, 12793, TE_GETITEM, 5761, 1)
	MisBeginAction(AddTrigger, 12794, TE_GETITEM, 5762, 1)
	MisBeginAction(AddTrigger, 12795, TE_GETITEM, 5763, 1)
	MisBeginAction(AddTrigger, 12796, TE_GETITEM, 5764, 1)

	--MisCancelAction(ClearMission, 1279)

	MisNeed(MIS_NEED_DESP, "ЅшИлµШУьµЪ12ІгЦБµЪ17ІгИҐЅвѕИіцКҐ¶·Кї,ІўµГµЅЧоєу6ёцКҐ¶·Кї·ыОДЎЈ")
	MisNeed(MIS_NEED_ITEM, 5759, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 5760, 1, 15, 1)
	MisNeed(MIS_NEED_ITEM, 5761, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 5762, 1, 25, 1)
	MisNeed(MIS_NEED_ITEM, 5763, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 5764, 1, 35, 1)
	
	MisHelpTalk("<t>µЪЖЯїй·ыОДУ¦ёГКЗФЪµШУьµЪК®¶юІгКШ»¤ХЯЪ¤Нх-Р°КЮЙнЙПЈ¬ЛыКЗМмЖЅЧщЎЄЎЄНЇ»ў(210,80)µД»ЇЙнЎЈИҐ°ЙЈЎУВКїЈЎОТєНСЕµдДИ»бТ»Ц±ОЄДъЖнµ»µДЎЈ")
	MisResultTalk("<t>ДЗГґ¶аДкБЛЎ­Ў­ОТЦХУЪХТµЅБЛХжХэµДєЈµБНхЦРЦ®НхЈ¬ХжХэУРЧКёсіЙОЄєЈµБЅМ»КµДДгЎ­Ў­ОТТІ·ЕРДНЛО»БЛЎЈХвїйКҐµоЦ®±¦ЎЄЎЄФЎ»рЦШЙъКЇЛНёшДгЎЈЗ°НщРЎМмК№ґ¦јґїЙ»сµГСЕµдДИµДЧЈёЈЎЄЎЄДъµДДЬБ¦µГµЅЅ«ј«ґуПЮ¶ИµДМбЙэЎЈ")

	MisResultCondition(HasMission, 1279)
	MisResultCondition(NoRecord,1279)
	MisResultCondition(HasItem, 5759, 1)
	MisResultCondition(HasItem, 5760, 1)
	MisResultCondition(HasItem, 5761, 1)
	MisResultCondition(HasItem, 5762, 1)
	MisResultCondition(HasItem, 5763, 1)
	MisResultCondition(HasItem, 5764, 1)
		
	MisResultAction(TakeItem, 5759, 1 )
	MisResultAction(TakeItem, 5760, 1 )
	MisResultAction(TakeItem, 5761, 1 )
	MisResultAction(TakeItem, 5762, 1 )
	MisResultAction(TakeItem, 5763, 1 )
	MisResultAction(TakeItem, 5764, 1 )
	
	
	MisResultAction(GiveItem, 5765,1,4)------------ёшФЎ»рЦШЙъКЇ
	MisResultAction(ClearMission, 1279)
	MisResultAction(SetRecord, 1279)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 5759)	
	TriggerAction( 1, AddNextFlag, 1279, 10, 1 )
	RegCurTrigger( 12791 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5760)	
	TriggerAction( 1, AddNextFlag, 1279, 15, 1 )
	RegCurTrigger( 12792 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5761)	
	TriggerAction( 1, AddNextFlag, 1279, 20, 1 )
	RegCurTrigger( 12793 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5762)	
	TriggerAction( 1, AddNextFlag, 1279, 25, 1 )
	RegCurTrigger( 12794 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5763)	
	TriggerAction( 1, AddNextFlag, 1279, 30, 1 )
	RegCurTrigger( 12795 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5764)	
	TriggerAction( 1, AddNextFlag, 1279, 35, 1 )
	RegCurTrigger( 12796 )
		

	------------------------------------------------------dina(end)
	

---------------------------------------------------------
--                        ТЮРЬМА                       --
---------------------------------------------------------

	DefineMission ( 6230, "\207\243\242\252 \238\241\226\238\225\238\230\228\229\237\232\255", 1280 )
--	DefineMission ( 6230, "Путь освобождения", 1280 )

	MisBeginTalk ( "<t>\205\229\231\224\226\232\241\232\236\238 \238\242 \242\238\227\238, \239\238\247\229\236\243 \194\251 \239\238\239\224\235\232 \241\254\228\224, \194\251 \228\238\235\230\237\251 \241\238\225\235\254\228\224\242\252 \231\228\229\248\237\232\229 \239\240\224\226\232\235\224. \197\241\235\232 \194\251 \245\238\242\232\242\229 \243\231\237\224\242\252 \234\224\234 \238\242\241\254\228\224 \236\238\230\237\238 \226\251\225\240\224\242\252\241\255 \241\239\240\238\241\232\242\229 \210\254\240\229\236\237\238\227\238 \241\242\240\224\230\224 (281,218).")
--	MisBeginTalk ( "<t>Независимо от того, почему Вы попали сюда, Вы должны соблюдать здешние правила. Если Вы хотите узнать как отсюда можно выбраться спросите Тюремного стража (281,218).")

	MisBeginCondition( NoMission, 1280)
	MisBeginCondition( NoRecord, 1280)
	MisBeginAction( AddMission, 1280)
	MisCancelAction( ClearMission, 1280)

	MisNeed( MIS_NEED_DESP, "\209\239\240\238\241\232\242\229 \210\254\240\229\236\237\238\227\238 \241\242\240\224\230\224 (316, 208) \234\224\234 \236\238\230\237\238 \239\238\234\232\237\243\242\252 \253\242\238 \236\229\241\242\238.")
--	MisNeed( MIS_NEED_DESP, "Спросите Тюремного стража (316, 208) как можно покинуть это место.")

	MisHelpTalk( "Go now!")
	MisResultCondition ( AlwaysFailure )


	DefineMission ( 6231, "\207\243\242\252 \238\241\226\238\225\238\230\228\229\237\232\255", 1280, COMPLETE_SHOW )

	MisBeginCondition ( AlwaysFailure )

	MisResultTalk ( "<t>\205\229\242\229\240\239\232\242\229 \239\238\234\232\237\243\242\252 \242\254\240\252\236\243? \223 \237\229 \228\243\236\224\254 \247\242\238 \231\228\229\241\252 \237\224\241\242\238\235\252\234\238 \241\234\243\247\237\238, \245\224-\245\224. \197\241\235\232 \194\251 \228\229\233\241\242\226\232\242\229\235\252\237\238 \245\238\242\232\242\229 \239\238\234\232\237\243\242\252 \253\242\238 \236\229\241\242\238, \242\238 \241\235\243\248\224\233\242\229\241\252 \236\229\237\255.")
--	MisResultTalk ( "<t>Нетерпите покинуть тюрьму? Я не думаю что здесь настолько скучно, ха-ха. Если Вы действительно хотите покинуть это место, то слушайтесь меня")

	MisResultCondition( HasMission, 1280)
	MisResultCondition( NoRecord, 1280)
	MisResultAction( ClearMission, 1280)
	MisResultAction( SetRecord, 1280)



------------------јаУьЦёТэ----------УьѕЇ
	DefineMission ( 6231, "Way to be Disimprisoned", 1280, COMPLETE_SHOW )

	MisBeginCondition ( AlwaysFailure )

	MisResultTalk ( "<t>Eager to leave? I don't think it's so boring here, haw-haw. If you realy want to leave, you can learn how to from me.")
	MisResultCondition( HasMission, 1280)
	MisResultCondition( NoRecord, 1280)
	MisResultAction( ClearMission, 1280)
	MisResultAction( SetRecord, 1280)

	
------------------1ј¶КҐНх±¦ІШ--------МфХЅ·ПБйГФ№¬
	DefineMission( 6232, "МфХЅ·ПБйГФ№¬", 1281 )
	
	MisBeginTalk("<t>ДгПИТЄґУ·ПБйГФ№¬ЦРґш»ШОТПлТЄµД¶«ОчЈ¬ЅУПВАґОТІЕ»бёжЛЯДгёГФхГґЧц.")
	MisBeginCondition(NoMission, 1281)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5776, 1)
	MisBeginCondition(NoItem, 5786, 1)
	MisBeginCondition(NoItem, 5787, 1)
	MisBeginCondition(NoItem, 5788, 1)
	MisBeginCondition(NoItem, 5789, 1)
	MisBeginCondition(NoItem, 5790, 1)
	MisBeginAction(TakeItem, 5776, 1 )
	MisBeginAction(AddMission, 1281)
	
	MisBeginAction(AddTrigger, 12811, TE_GETITEM, 3434, 15 )
	MisBeginAction(AddTrigger, 12812, TE_GETITEM, 3435, 10 )
	MisBeginAction(AddTrigger, 12813, TE_GETITEM, 3436, 15 )
	MisCancelAction(ClearMission, 1281)
	MisNeed(MIS_NEED_ITEM, 3434, 15, 10, 15)
	MisNeed(MIS_NEED_ITEM, 3435, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3436, 15, 30, 15)
	
	MisResultTalk("<t>єЬєГЈ¬ДгАл»сµГКҐНхµД±¦ІШВхЅшБЛТ»ґуІЅЈЎЅУПВАґТЄЧцµДѕНКЗ°СХвёц<r·ПѕЙµДФВ№в±¦єР>ЦРµДДЬБїПыєДНкФЩ»ШАґХТОТЈЎ")
	MisHelpTalk("<t>ФхГґБЛЈ¬»№Г»КХјЇЖлЈїБ¬ХвР©РЎКВ¶ј°мІ»µЅДг»№ПлКІГґКҐНхµД±¦ІШЎ­Ў­")
	MisResultCondition(HasMission, 1281)	
	MisResultCondition(HasItem, 3434, 15 )
	MisResultCondition(HasItem, 3435, 10 )
	MisResultCondition(HasItem, 3436, 15 )
	MisResultAction(SetRecord, 1281)   --МнјУrecord1281
	MisResultAction(TakeItem, 3434, 15 )
	MisResultAction(TakeItem, 3435, 10 )
	MisResultAction(TakeItem, 3436, 15 )	
	MisResultAction(ClearMission, 1281)	      
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------ёшУиНжјТ·ПѕЙµДФВ№в±¦єР
	MisResultBagNeed(1)                     ---------ТтОЄИООсНкіЙТЄёшµАѕЯёшНжјТЈ¬ЛщТФЧўТвБфПВ±і°ьїХёс

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434)	
	TriggerAction( 1, AddNextFlag, 1281, 10, 15)
	RegCurTrigger( 12811 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3435)	
	TriggerAction( 1, AddNextFlag, 1281, 20, 10 )
	RegCurTrigger( 12812 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436)	
	TriggerAction( 1, AddNextFlag, 1281, 30, 15 )
	RegCurTrigger( 12813 )

	





	------------------1ј¶КҐНх±¦ІШ--------МфХЅХУФуГФ№¬
	DefineMission( 6233, "МфХЅХУФуГФ№¬", 1282 )
	
	MisBeginTalk("<t>ДгПИТЄґУХУФуГФ№¬ЦРґш»ШОТПлТЄµД¶«ОчЈ¬ЅУПВАґОТІЕ»бёжЛЯДгёГФхГґЧц.")
	MisBeginCondition(NoMission, 1282)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5791, 1)   --јУДЙВЮТБµДГЬєЇB
	MisBeginCondition(NoItem, 5786, 1)    --·ПѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5787, 1)    --іВѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5788, 1)    --ХёРВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5789, 1)    --ѕ«ЦВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5790, 1)    --ЧїФЅµДФВ№в±¦єР
	MisBeginAction(TakeItem, 5791, 1 )
	MisBeginAction(AddMission, 1282)
	
	MisBeginAction(AddTrigger, 12821, TE_GETITEM, 3445, 15 )
	MisBeginAction(AddTrigger, 12822, TE_GETITEM, 3443, 10 )
	MisBeginAction(AddTrigger, 12823, TE_GETITEM, 3444, 15 )
	MisCancelAction(ClearMission, 1282)
	MisNeed(MIS_NEED_ITEM, 3445, 15, 10, 15)
	MisNeed(MIS_NEED_ITEM, 3443, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3444, 15, 30, 15)
	
	MisResultTalk("<t>єЬєГЈ¬ДгАл»сµГКҐНхµД±¦ІШВхЅшБЛТ»ґуІЅЈЎЅУПВАґТЄЧцµДѕНКЗ°СХвёц<r·ПѕЙµДФВ№в±¦єР>ЦРµДДЬБїПыєДНкФЩ»ШАґХТОТЈЎ")
	MisHelpTalk("<t>ФхГґБЛЈ¬»№Г»КХјЇЖлЈїБ¬ХвР©РЎКВ¶ј°мІ»µЅДг»№ПлКІГґКҐНхµД±¦ІШЎ­Ў­")
	MisResultCondition(HasMission, 1282)
	MisResultCondition(HasItem, 3445, 15 )
	MisResultCondition(HasItem, 3443, 10 )
	MisResultCondition(HasItem, 3444, 15 )
	MisResultAction(SetRecord, 1282)   --МнјУrecord1282
	MisResultAction(TakeItem, 3445, 15 )
	MisResultAction(TakeItem, 3443, 10 )
	MisResultAction(TakeItem, 3444, 15 )	
	MisResultAction(ClearMission, 1282)
	      
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------·ПѕЙµДФВ№в±¦єР
	MisResultBagNeed(1)                     ---------ТтОЄИООсНкіЙТЄёшµАѕЯёшНжјТЈ¬ЛщТФЧўТвБфПВ±і°ьїХёс

	InitTrigger()
	TriggerCondition( 1, IsItem, 3445)	
	TriggerAction( 1, AddNextFlag, 1282, 10, 15)
	RegCurTrigger( 12821 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3443)	
	TriggerAction( 1, AddNextFlag, 1282, 20, 10 )
	RegCurTrigger( 12822 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3444)	
	TriggerAction( 1, AddNextFlag, 1282, 30, 15 )
	RegCurTrigger( 12823 )
	
	
	------------------1ј¶КҐНх±¦ІШ--------МфХЅД§·ЅГФ№¬
	DefineMission( 6234, "МфХЅД§·ЅГФ№¬", 1283 )
	
	MisBeginTalk("<t>ДгПИТЄґУД§·ЅГФ№¬ЦРґш»ШОТПлТЄµД¶«ОчЈ¬ЅУПВАґОТІЕ»бёжЛЯДгёГФхГґЧц.")
	MisBeginCondition(NoMission, 1283)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5792, 1)   --јУДЙВЮТБµДГЬєЇC
	MisBeginCondition(NoItem, 5786, 1)    --·ПѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5787, 1)    --іВѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5788, 1)    --ХёРВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5789, 1)    --ѕ«ЦВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5790, 1)    --ЧїФЅµДФВ№в±¦єР
	MisBeginAction(TakeItem, 5792, 1 )
	MisBeginAction(AddMission, 1283)
	MisBeginAction(AddTrigger, 12831, TE_GETITEM, 3820, 30 )
	MisBeginAction(AddTrigger, 12832, TE_GETITEM, 3821, 30 )
	MisBeginAction(AddTrigger, 12833, TE_GETITEM, 3822, 30 )
	MisCancelAction(ClearMission, 1283)
	MisNeed(MIS_NEED_ITEM, 3820, 30, 50, 30)
	MisNeed(MIS_NEED_ITEM, 3821, 30, 60, 30)
	MisNeed(MIS_NEED_ITEM, 3822, 30, 70, 30)
	
	MisResultTalk("<t>єЬєГЈ¬ДгАл»сµГКҐНхµД±¦ІШВхЅшБЛТ»ґуІЅЈЎЅУПВАґТЄЧцµДѕНКЗ°СХвёц<r·ПѕЙµДФВ№в±¦єР>ЦРµДДЬБїПыєДНкФЩ»ШАґХТОТЈЎ")
	MisHelpTalk("<t>ФхГґБЛЈ¬»№Г»КХјЇЖлЈїБ¬ХвР©РЎКВ¶ј°мІ»µЅДг»№ПлКІГґКҐНхµД±¦ІШЎ­Ў­")
	MisResultCondition(HasMission, 1283)
	MisResultCondition(HasItem, 3820, 30 )
	MisResultCondition(HasItem, 3821, 30 )
	MisResultCondition(HasItem, 3822, 30 )
	MisResultAction(TakeItem, 3820, 30 )
	MisResultAction(TakeItem, 3821, 30 )
	MisResultAction(TakeItem, 3822, 30 )	
	MisResultAction(ClearMission, 1283)
	MisResultAction(SetRecord, 1283)   --МнјУrecord1283   
	
	MisResultAction(GiveItem, 5786, 1, 4)    ----------·ПѕЙµДФВ№в±¦єР
	MisResultBagNeed(1)                     ---------ТтОЄИООсНкіЙТЄёшµАѕЯёшНжјТЈ¬ЛщТФЧўТвБфПВ±і°ьїХёс

	InitTrigger()
	TriggerCondition( 1, IsItem, 3820)	
	TriggerAction( 1, AddNextFlag, 1283, 50, 30 )
	RegCurTrigger( 12831 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3821)	
	TriggerAction( 1, AddNextFlag, 1283, 60, 30 )
	RegCurTrigger( 12832 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3822)	
	TriggerAction( 1, AddNextFlag, 1283, 70, 30 )
	RegCurTrigger( 12833 )

------------------2ј¶КҐНх±¦ІШФїіЧ--------
	DefineMission( 6235, "2ј¶КҐНх±¦ІШФїіЧ", 1284 )
	
	MisBeginTalk("<t>ЗЧ°®µДЕуУСЈ¬»¶У­АґµЅХвёцідВъЙсГШєНОЈПХµДКАЅзЎЈХвёцКАЅзЦРґжФЪµДГШГЬµИДгИҐ·ўПЦЎЈЦ»ТЄДг°пОТКХјЇОТРиТЄµДОпЖ·Ј¬ОТЅ«ёжЛЯДг№ШУЪКҐНх±¦ІШµДГШГЬ")
	MisBeginCondition(NoMission, 1284)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5793, 1)   --2ј¶±¦ІШФїіЧГЬєЇ
	MisBeginCondition(NoItem, 5786, 1)    --·ПѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5787, 1)    --іВѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5788, 1)    --ХёРВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5789, 1)    --ѕ«ЦВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5790, 1)    --ЧїФЅµДФВ№в±¦єР
	MisBeginAction(TakeItem, 5793, 1 )    --ИЎЧЯµАѕЯ2ј¶±¦ІШФїіЧГЬєЇ
	MisBeginAction(AddMission, 1284)
	MisBeginAction(AddTrigger, 12841, TE_GETITEM, 2588, 10 )
	MisBeginAction(AddTrigger, 12842, TE_GETITEM, 0855, 99 )
	MisCancelAction(ClearMission, 1284)
	MisNeed(MIS_NEED_ITEM, 2588, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 0855, 99, 20, 99)

	MisResultTalk("<t>єЬєГЈ¬ДгАл»сµГКҐНхµД±¦ІШВхЅшБЛТ»ґуІЅЈЎЅУПВАґТЄЧцµДѕНКЗ°СХвёц<rіВѕЙµДФВ№в±¦єР>ЦРµДДЬБїПыєДНкФЩ»ШАґХТОТЈЎ")
	MisHelpTalk("<t>ФхГґБЛЈ¬»№Г»КХјЇЖлЈїБ¬ХвР©РЎКВ¶ј°мІ»µЅДг»№ПлКІГґКҐНхµД±¦ІШЎ­Ў­")
	MisResultCondition(HasMission, 1284)
	MisResultCondition(HasItem, 2588, 10 )
	MisResultCondition(HasItem, 0855, 99 )
	MisResultAction(TakeItem, 2588, 10 )
	MisResultAction(TakeItem, 0855, 99 )
	MisResultAction(ClearMission, 1284)
	MisResultAction(SetRecord, 1284)      --МнјУrecord1283   
	
	MisResultAction(GiveItem, 5787, 1, 4)    ----------іВѕЙµДФВ№в±¦єР
	MisResultBagNeed(1)                     ---------ТтОЄИООсНкіЙТЄёшµАѕЯёшНжјТЈ¬ЛщТФЧўТвБфПВ±і°ьїХёс

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1284, 10, 10)
	RegCurTrigger( 12841 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1284, 20, 99 )
	RegCurTrigger( 12842 )
	



------------------3ј¶КҐНх±¦ІШФїіЧ--------
	DefineMission( 6236, "3ј¶КҐНх±¦ІШФїіЧ", 1285 )
	
	MisBeginTalk("<t>ЗЧ°®µДЕуУСЈ¬»¶У­АґµЅХвёцідВъЙсГШєНОЈПХµДКАЅзЎЈХвёцКАЅзЦРґжФЪµДГШГЬµИДгИҐ·ўПЦЎЈХвґОіэБЛТЄ°пОТКХјЇОТРиТЄµДОпЖ·Ј¬»№ТЄЗуДгУµУР1000µгµД<rГыЙщЦµ>єН50µг<rИЩУюЦµ>,Ц»ТЄВъЧгХвР©МхјюОТѕНёжЛЯДг№ШУЪКҐНх±¦ІШµДГШГЬ")
	MisBeginCondition(NoMission, 1285)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5794, 1)   --3ј¶±¦ІШФїіЧГЬєЇ
	MisBeginCondition(NoItem, 5786, 1)    --·ПѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5787, 1)    --іВѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5788, 1)    --ХёРВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5789, 1)    --ѕ«ЦВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5790, 1)    --ЧїФЅµДФВ№в±¦єР
	MisBeginAction(TakeItem, 5794, 1 )    --ИЎЧЯµАѕЯ3ј¶±¦ІШФїіЧГЬєЇ
	MisBeginAction(AddMission, 1285)
	MisBeginAction(AddTrigger, 12851, TE_GETITEM, 4511, 30 )
	MisBeginAction(AddTrigger, 12852, TE_GETITEM, 0855, 99 )
	MisCancelAction(ClearMission, 1285)
	MisNeed(MIS_NEED_ITEM, 4511, 30, 10, 30)
	MisNeed(MIS_NEED_ITEM, 0855, 99, 20, 99)

	MisResultTalk("<t>єЬєГЈ¬ДгАл»сµГКҐНхµД±¦ІШВхЅшБЛТ»ґуІЅЈЎЅУПВАґТЄЧцµДѕНКЗ°СХвёц<rХёРВµДФВ№в±¦єР>ЦРµДДЬБїПыєДНкФЩ»ШАґХТОТЈЎ")
	MisHelpTalk("<t>ФхГґБЛЈ¬»№Г»КХјЇЖлЈї±рНьБЛ»№РиТЄ1000µг<rГыЙщЦµ>єН50µг<rИЩУюЦµ>,Б¬ХвР©РЎКВ¶ј°мІ»µЅДг»№ПлКІГґКҐНхµД±¦ІШЎ­Ў­")
	MisResultCondition(HasMission, 1285)
	MisResultCondition(HasItem, 4511, 30 )
	MisResultCondition(HasItem, 0855, 99 )
	MisResultCondition(HasCredit, 1000 )       --РиТЄГыЙщ1000
	MisResultCondition(HasHonorPoint, 50 )     --РиТЄИЩУю50
	MisResultAction(TakeItem, 4511, 30 )
	MisResultAction(TakeItem, 0855, 99 )
	MisResultAction(ClearMission, 1285)
	MisResultAction(SetRecord, 1285)   --МнјУrecord1283      
	
	MisResultAction(GiveItem, 5788, 1, 4)    ----------ХёРВµДФВ№в±¦єР
	MisResultBagNeed(1)                     ---------ТтОЄИООсНкіЙТЄёшµАѕЯёшНжјТЈ¬ЛщТФЧўТвБфПВ±і°ьїХёс

	InitTrigger()
	TriggerCondition( 1, IsItem, 4511)	
	TriggerAction( 1, AddNextFlag, 1285, 10, 30)
	RegCurTrigger( 12851 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1285, 20, 99 )
	RegCurTrigger( 12852 )


------------------4ј¶КҐНх±¦ІШФїіЧ--------
	DefineMission( 6237, "4ј¶КҐНх±¦ІШФїіЧ", 1286 )
	
	MisBeginTalk("<t>ЗЧ°®µДЕуУСЈ¬»¶У­АґµЅХвёцідВъЙсГШєНОЈПХµДКАЅзЎЈХвёцКАЅзЦРґжФЪµДГШГЬµИДгИҐ·ўПЦЎЈЦ»ТЄДг°пОТКХјЇОТРиТЄµДОпЖ·Ј¬ОТЅ«ёжЛЯДг№ШУЪКҐНх±¦ІШµДГШГЬ")
	MisBeginCondition(NoMission, 1286)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5795, 1)   --4ј¶±¦ІШФїіЧГЬєЇ
	MisBeginCondition(NoItem, 5786, 1)    --·ПѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5787, 1)    --іВѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5788, 1)    --ХёРВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5789, 1)    --ѕ«ЦВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5790, 1)    --ЧїФЅµДФВ№в±¦єР
	MisBeginAction(TakeItem, 5795, 1 )    --ИЎЧЯµАѕЯ4ј¶±¦ІШФїіЧГЬєЇ
	MisBeginAction(AddMission, 1286)
	MisBeginAction(AddTrigger, 12861, TE_GETITEM, 0266, 1 )
	MisBeginAction(AddTrigger, 12862, TE_GETITEM, 2589, 1 )
	MisBeginAction(AddTrigger, 12863, TE_GETITEM, 3000, 1 )
	MisCancelAction(ClearMission, 1286)
	MisNeed(MIS_NEED_ITEM, 0266, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2589, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3000, 1, 30, 1)
	
	MisResultTalk("<t>єЬєГЈ¬ДгАл»сµГКҐНхµД±¦ІШВхЅшБЛТ»ґуІЅЈЎЅУПВАґТЄЧцµДѕНКЗ°СХвёц<rѕ«ЦВµДФВ№в±¦єР>ЦРµДДЬБїПыєДНкФЩ»ШАґХТОТЈЎ")
	MisHelpTalk("<t>ФхГґБЛЈ¬»№Г»КХјЇЖлЈїБ¬ХвР©РЎКВ¶ј°мІ»µЅДг»№ПлКІГґКҐНхµД±¦ІШЎ­Ў­")
	MisResultCondition(HasMission, 1286)
	MisResultCondition(HasItem, 0266, 1 )
	MisResultCondition(HasItem, 2589, 1 )
	MisResultCondition(HasItem, 3000, 1 )
	MisResultAction(TakeItem, 0266, 1 )
	MisResultAction(TakeItem, 2589, 1 )
	MisResultAction(TakeItem, 3000, 1 )
	MisResultAction(ClearMission, 1286)
	MisResultAction(SetRecord, 1286)      --МнјУrecord1286 
	
	MisResultAction(GiveItem, 5789, 1, 4)    ---------ѕ«ЦВµДФВ№в±¦єР
	MisResultBagNeed(1)                     ---------ТтОЄИООсНкіЙТЄёшµАѕЯёшНжјТЈ¬ЛщТФЧўТвБфПВ±і°ьїХёс

	InitTrigger()
	TriggerCondition( 1, IsItem, 0266)	
	TriggerAction( 1, AddNextFlag, 1286, 10, 1)
	RegCurTrigger( 12861 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1286, 20, 1 )
	RegCurTrigger( 12862 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3000)	
	TriggerAction( 1, AddNextFlag, 1286, 40, 1 )
	RegCurTrigger( 12863 )

------------------5ј¶КҐНх±¦ІШФїіЧ--------
	DefineMission( 6238, "5ј¶КҐНх±¦ІШФїіЧ", 1287 )
	
	MisBeginTalk("<t>ЗЧ°®µДЕуУСЈ¬»¶У­АґµЅХвёцідВъЙсГШєНОЈПХµДКАЅзЎЈХвёцКАЅзЦРґжФЪµДГШГЬµИДгИҐ·ўПЦЎЈЦ»ТЄДг°пОТКХјЇОТРиТЄµДОпЖ·Ј¬ОТЅ«ёжЛЯДг№ШУЪКҐНх±¦ІШµДГШГЬ")
	MisBeginCondition(NoMission, 1287)
	MisBeginCondition(NoRecord, 1281)
	MisBeginCondition(NoRecord, 1282)
	MisBeginCondition(NoRecord, 1283)
	MisBeginCondition(NoRecord, 1284)
	MisBeginCondition(NoRecord, 1285)
	MisBeginCondition(NoRecord, 1286)
	MisBeginCondition(NoRecord, 1287)
	MisBeginCondition(HasItem, 5796, 1)   --5ј¶±¦ІШФїіЧГЬєЇ
	MisBeginCondition(NoItem, 5786, 1)    --·ПѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5787, 1)    --іВѕЙµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5788, 1)    --ХёРВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5789, 1)    --ѕ«ЦВµДФВ№в±¦єР
	MisBeginCondition(NoItem, 5790, 1)    --ЧїФЅµДФВ№в±¦єР
	MisBeginAction(TakeItem, 5796, 1 )    --ИЎЧЯµАѕЯ4ј¶±¦ІШФїіЧГЬєЇ
	MisBeginAction(AddMission, 1287)
	MisBeginAction(AddTrigger, 12871, TE_GETITEM, 2589, 5 )
	MisBeginAction(AddTrigger, 12872, TE_GETITEM, 5703, 2 )
	MisBeginAction(AddTrigger, 12873, TE_GETITEM, 3000, 1 )
	MisBeginAction(AddTrigger, 12874, TE_GETITEM, 3122, 5 )
	MisCancelAction(ClearMission, 1287)
	MisNeed(MIS_NEED_ITEM, 2589, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 5703, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 3000, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 3122, 5, 40, 5)
	
	MisResultTalk("<t>єЬєГЈ¬ДгАл»сµГКҐНхµД±¦ІШВхЅшБЛТ»ґуІЅЈЎЅУПВАґТЄЧцµДѕНКЗ°СХвёц<rЧїФЅµДФВ№в±¦єР>ЦРµДДЬБїПыєДНкФЩ»ШАґХТОТЈЎ")
	MisHelpTalk("<t>ФхГґБЛЈ¬»№Г»КХјЇЖлЈїБ¬ХвР©РЎКВ¶ј°мІ»µЅДг»№ПлКІГґКҐНхµД±¦ІШЎ­Ў­")
	MisResultCondition(HasMission, 1287)
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 5703, 2 )
	MisResultCondition(HasItem, 3000, 1 )
	MisResultCondition(HasItem, 3122, 5 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 5703, 2 )
	MisResultAction(TakeItem, 3000, 1 )
	MisResultAction(TakeItem, 3122, 5 )
	MisResultAction(ClearMission, 1287)
	MisResultAction(SetRecord, 1287)      --МнјУrecord1287 
	
	MisResultAction(GiveItem, 5790, 1, 4)    ---------ЧїФЅµДФВ№в±¦єР
	MisResultBagNeed(1)                     ---------ТтОЄИООсНкіЙТЄёшµАѕЯёшНжјТЈ¬ЛщТФЧўТвБфПВ±і°ьїХёс

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1287, 10, 5)
	RegCurTrigger( 12871 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 5703)	
	TriggerAction( 1, AddNextFlag, 1287, 20, 2 )
	RegCurTrigger( 12872 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3000)	
	TriggerAction( 1, AddNextFlag, 1287, 30, 1 )
	RegCurTrigger( 12873 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122)	
	TriggerAction( 1, AddNextFlag, 1287, 40, 5 )
	RegCurTrigger( 12874 )	

--------------------------------------------
--------------------Джедо - -- аргент---
--------------------------------------------
-------------Олимпийские игры---------------

	DefineMission( 6239, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisBeginTalk( "<t>Привет! Я так хотела посмотреть Олимпиаду в Пекине, но на меня напала банда под командованием Гадюки! Не могли бы Вы предупредить моих друзей об этом происшествии?" )
	MisBeginCondition(NoMission, 1288)
	MisBeginCondition(NoRecord, 1288)
	MisBeginCondition(NoRecord, 1300)
	MisBeginCondition(NoRecord, 1303)
	MisBeginCondition(NoRecord, 1304)
	MisBeginAction(AddMission, 1288)
	MisBeginAction(SetRecord, 1288)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisNeed(MIS_NEED_DESP, " Поговорите с Сайя из Аскарона (2110,2667), с Зи из Шайтана (1126,3417), с Местным жителем (1533,699), а так же, навестите Покарителя морей в Заливе Сокровищ (619,965)." )
	
	MisHelpTalk( "<t>Предупредите моих друзей!" )
	MisResultCondition(AlwaysFailure)	
-------------------Олимпийские игры----------
	DefineMission( 6240, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisHelpTalk( "<t>Вы тут для того, что бы предупредить о том, что с Джедо приключилась беда? Хорошо предупредите ещё и остальных об этом!" )
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk( " Ах! Раз уж Вы тут, мне просто необходима Ваша помощь." )
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1289)
	MisResultAction(SetRecord,1289)
	
---------------Испытания Сайя---------
	DefineMission( 6241, "\200\241\239\251\242\224\237\232\255 \209\224\232\255", 1289 )
	MisBeginTalk( "<t>Вы должны пойти и убить <rГадюку> в Шайтане и забрать у него <bБандитский кушак>, не забудьте собрать также 30 Эльфийских фруктов, что бы исцелить раны, которые бандиты наносят нашей стране." )
	
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1289)	
	MisBeginCondition(NoRecord, 1291)	
	MisBeginAction(AddMission, 1289)
	MisBeginAction(SetRecord, 1290)
	MisCancelAction(SystemNotice, " Вы не можете оказаться от этого задания!" )
	MisNeed(MIS_NEED_DESP, "<t>Соберите 30 Эльфийских фруктов и 1 Бандитский кушак." )
	MisHelpTalk( "<t>Что? Вы меня послали? Если мы не сможем спастись от Афин то грядет вечный Хаос!" )
	MisResultTalk("<t>Вы помогли нам и нашему роду! Вот Возьмите это в знак моей признательности Вам!" )

	MisResultCondition(HasMission, 1289)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1289)
	MisResultCondition(HasRecord, 1290)

	MisResultCondition(HasItem, 3116, 30)--Эльфиский фрукт
	MisResultCondition(HasItem, 4495, 1)---Бандитский кушак
	

	MisResultAction(TakeItem, 3116, 30)
	MisResultAction(TakeItem, 4495, 1)
	MisResultAction(ClearRecord, 1290)
	

	MisResultAction(GiveItem, 5813, 1, 4)--Признание созвездия Пегаса                         
	MisResultAction(GiveItem, 3094, 1, 4)--Усилитель стремлений                        
	MisResultAction(ClearMission, 1289) 
	MisResultAction(SetRecord, 1291) 
	MisResultBagNeed(2)

-------------------Гражданин Зи------Олимпийские игры----
	DefineMission( 6242, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisBeginCondition(AlwaysFailure )
	MisHelpTalk( "<t>Вы тут для того, что бы предупредить о том, что с Джедо приключилась беда? Хорошо предупредите ещё и остальных об этом!" )
	MisResultTalk(" Хорошо что Вы тут! Мне нужна Ваша помощь!" )
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1292)
	MisResultAction(SetRecord,1292)
---------------Испытания Зи---------
	DefineMission( 6243, "\200\241\239\251\242\224\237\232\255 \199\232", 1290 )
	MisBeginTalk( "<t>Вы должны будете ответить на 5 моих вопросов правильно, прежде чем я поверю Вам!" )
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1292)	
	MisBeginCondition(NoRecord, 1294)	
	MisBeginCondition(NoRecord, 1295)		
	MisBeginAction(AddMission, 1290)
	MisBeginAction(SetRecord, 1294)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisHelpTalk( "<t>Знания это сила, Вы не сильны в знаниях! Вы глупец!" )
	MisResultTalk( "<t>Я проверил Вас! Вы умный, а значит хороший человек!" )
	
	
	MisResultCondition(HasMission, 1290)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1292)
	MisResultCondition(HasRecord, 1293)
	MisResultCondition(HasRecord, 1294)
		
	MisResultAction(GiveItem, 5814, 1, 4)--признание созв. Дракона
	MisResultAction(GiveItem, 3094, 1, 4)--Усилитель стремлений	                          
	MisResultAction(ClearMission, 1290) 
	MisResultAction(ClearRecord, 1294) 	
	MisResultAction(ClearRecord, 1293) 	
	MisResultAction(SetRecord, 1295) 
	MisResultBagNeed(2)

-----------Олимпийские игры-----Гражданка ледыни----
	DefineMission( 6244, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisBeginCondition(AlwaysFailure )
	MisHelpTalk( "<t>Вы тут для того, что бы предупредить о том, что с Джедо приключилась беда? Хорошо предупредите ещё и остальных об этом!" )
	MisResultTalk( " Хорошо что Вы тут! Мне нужна Ваша помощь!" )
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoRecord,1296)
	MisResultAction(SetRecord,1296)
---------------Испытания Гражданки Ледыни---------
	DefineMission( 6245, "\200\241\239\251\242\224\237\232\255 \195\240\224\230\228\224\237\234\232 \203\229\228\251\237\232", 1291 )
	MisBeginTalk( "<t>Прежде чем я Вам поверю убейте Саджия!!")
	MisBeginCondition(HasMission, 1288)
	MisBeginCondition(HasRecord, 1288)
	MisBeginCondition(HasRecord, 1296)	
	MisBeginCondition(NoRecord, 1297)	
	MisBeginCondition(NoRecord, 1298)		
	MisBeginAction(AddMission, 1291)
	MisBeginAction(SetRecord, 1297)
	MisBeginAction(AddTrigger, 12911, TE_KILL, 1070, 1)--саджия(босс)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )
	
	MisHelpTalk( "<t>Вы ещё не убили Саджия!" )
	MisResultTalk( "<t>Я Вам поверил, Вы говорите правду! Это Вам в знак моей признательности!" )
	
	MisResultCondition( HasFlag, 1291, 10)
	MisResultCondition(HasMission, 1291)
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasRecord, 1297)
	MisResultCondition(HasRecord, 1296)
	MisResultCondition(HasRecord, 1298)
	

	MisResultAction(GiveItem, 5815, 1, 4)--Признание созв. Сиратори
	MisResultAction(ClearMission, 1291) 
	MisResultAction(ClearRecord, 1297)
	MisResultAction(ClearRecord, 1298)
	MisResultAction(SetRecord, 1299) 
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1070)	
	TriggerAction( 1, AddNextFlag, 1291, 10, 1 )
	RegCurTrigger( 12911 )
---------------Олимпийские игры------Покоритель морей Заливе---
	DefineMission( 6246, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisBeginCondition(AlwaysFailure )
	MisHelpTalk( "<t>Вы тут для того, что бы предупредить о том, что с Джедо приключилась беда? Хорошо предупредите ещё и остальных об этом!" )
	MisResultTalk( " О! Я вижу Вы собрали 3 одобрения! Теперь вам осталось собрать ещё 3: Тельца, Овна и Близнецов. После чего отправляйтесь на Остров Скелетов на поиски Брата Джио Танка о.Скелетов в точке(335,172)!" )
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(NoMission,1289)
	MisResultCondition(NoMission,1290)
	MisResultCondition(NoMission,1291)	
	MisResultCondition(HasRecord, 1289)
	MisResultCondition(HasRecord, 1291)
	MisResultCondition(HasRecord, 1292)
	MisResultCondition(HasRecord, 1295)
	MisResultCondition(HasRecord, 1296)
	MisResultCondition(HasRecord, 1299)
	MisResultAction(ClearRecord, 1289)
	MisResultAction(ClearRecord, 1291)
	MisResultAction(ClearRecord, 1292)
	MisResultAction(ClearRecord, 1295)
	MisResultAction(ClearRecord, 1296)
	MisResultAction(ClearRecord, 1299)
	MisResultAction(SetRecord, 1300)
	MisResultAction(SetRecord, 1301)	
	MisResultAction(GiveItem, 5806, 4, 4)--Сертификат
	MisResultAction(TakeItem, 5815, 1, 4)
	MisResultAction(TakeItem, 5814, 1, 4)
	MisResultAction(TakeItem, 5813, 1, 4)
	MisResultBagNeed(1)

------------------------------------------Олимпийские игры--------
	DefineMission( 6247, "\206\235\232\236\239\232\233\241\234\232\229 \232\227\240\251", 1288 )
	MisBeginCondition(AlwaysFailure )

	MisResultTalk( " Вы от моей сестры? Я не могу поверить, что бы она была побеждена каким то предводителем бандитов Гадюкой " )
	MisResultCondition(HasRecord, 1288)
	MisResultCondition(HasMission,1288)
	MisResultCondition(HasRecord, 1300)
	MisResultCondition(HasRecord, 1301)
	MisResultAction(ClearRecord, 1288)
	MisResultAction(ClearRecord, 1301)
	MisResultAction(ClearMission, 1288)
	MisResultAction(SetRecord, 1302)
--------------------------------------Убийство папы----------
	DefineMission( 6248, "\211\225\232\233\241\242\226\238 \239\224\239\251", 1292 )
	MisBeginTalk( "<t>Ты принёс мне 4 сертификата, и я дам тебе Вызов Папы! Но будь с ним осторожен, не каждому дано его победить!" )
	MisHelpTalk( "<t>Убейте Папу, что бы я Вам поверил в искренности и в серьёзности Ваших намерений, после убийства папы идите в Аргент к Джедо в точку(2280,2756) и скажите, что были у меня!" )
	MisBeginCondition(HasRecord, 1302)
	MisBeginCondition(LvCheck, ">", 54 )
	MisBeginCondition(NoRecord, 1303)
	MisBeginCondition(NoRecord, 1304)	
	MisBeginCondition(NoMission, 1291)		
	MisBeginAction(AddMission, 1292)
	MisBeginAction(SetRecord, 1303)
	MisBeginAction(AddTrigger, 12921, TE_KILL, 1071, 1)
	MisNeed(MIS_NEED_KILL, 1071, 1, 10, 1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1071)	
	TriggerAction( 1, AddNextFlag, 1292, 10, 1 )
	RegCurTrigger( 12921 )

	MisResultCondition(AlwaysFailure)	
------------------------------------Возвращение------------
	DefineMission( 6249, "\194\238\231\226\240\224\249\229\237\232\229", 1292 )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( " Вы были у моего брата? Он на о.Скелетах? Спасибо Вам за помощь я надеюсь Вы не слишком устали выполняя моё поручение?! Вот Вам награда!" )

	MisResultCondition( HasFlag, 1292, 10)
	MisResultCondition(HasMission, 1292)
	MisResultCondition(HasRecord, 1303)
	MisResultCondition(HasRecord, 1305)
	
	
	MisResultAction(GiveItem, 5694, 15, 4)
	MisResultAction(GiveItem, 2843, 1, 4)--Сундучёк с Подарком
	MisResultAction(GiveItem, 2842, 1, 4)
	MisResultAction(ClearMission, 1292) 
	MisResultAction(ClearRecord, 1303)
	MisResultAction(SetRecord, 1304) 
	MisResultBagNeed(1)
	


----------------------------
----новый квест
----------------------------


	------------------------------------°ВФЛ»о¶Ї Ц® К§ЧЩµДКҐ»р------------  КҐ»рґ«µЭґуК№
	DefineMission( 6250, "Missing Sacred Flame", 1306 )
	MisBeginTalk("<t>I guess the Sacred Flame must have been robbed by the<r Sand Bandit (1065,3137)>, who are outside the Shaitan City, hurry and investigate.")
	MisBeginCondition(NoMission, 1306)
	MisBeginCondition(NoRecord, 1306)
	MisBeginCondition(NoRecord, 1307)
	MisBeginCondition(NoRecord, 1308)
	MisBeginCondition(NoRecord, 1309)
	MisBeginCondition(NoRecord, 1314)
	MisBeginCondition(NoRecord, 1315)
	MisBeginCondition(NoRecord, 1316)
	MisBeginCondition(NoRecord, 1317)
	MisBeginCondition(NoRecord, 1318)
	MisBeginCondition(NoRecord, 1319)
	MisBeginCondition(NoRecord, 1321)
	MisBeginCondition(NoRecord, 1322)
	MisBeginCondition(NoRecord, 1323)
	MisBeginAction(AddMission, 1306)
	MisCancelAction(ClearMission, 1306)
	MisBeginAction(AddTrigger, 13061, TE_KILL, 45, 10)

	MisNeed(MIS_NEED_DESP, "Relay Officer (871,3580) asks you to defeat 10 Sand Bandits.")
	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)

	MisHelpTalk("<t>Йі·ЛѕНФЪЙіб°іЗНвЈ¬їмИҐїмИҐ")	
	MisResultTalk("<t>Well done, young guy! Now bring the Tinder and a letter to the Blacksmith - Bash at Icicle Castle (1344,529), only him can make another Sacred Torch.")
	MisResultCondition(HasMission, 1306)
	MisResultCondition(HasFlag, 1306, 19)	
	
	MisResultAction(ClearMission,1306)
	MisResultAction(SetRecord,1306)
	MisResultBagNeed(2)
	MisResultAction(GiveItem, 5802, 1, 4)
	MisResultAction(GiveItem, 5841, 1, 4)
	MisResultAction( AddMoney , 5000)
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 45)	
	TriggerAction( 1, AddNextFlag, 1306, 10, 10 )
	RegCurTrigger( 13061 )
	
	
	----------------------------------°ВФЛ»о¶Ї Ц® ЦШЦэКҐ»р»рѕж------------ МъЅі±©±щ
	DefineMission( 6251, "Make a new Torch",1307 )
	MisBeginTalk("<t>Well done, we have finally found the Tinder which was missing for several long years, but to make a new Torch, I need more stuff, can you collect them for me?")
	MisBeginCondition(NoMission, 1307)
	MisBeginCondition(HasRecord, 1306)
	MisBeginCondition(HasItem, 5802, 1)
	MisBeginCondition(HasItem, 5841, 1)
	
	MisBeginAction(AddMission, 1307)
	MisCancelAction(ClearMission, 1307)
	MisBeginAction(TakeItem, 5841, 1, 4)
	
	MisNeed( MIS_NEED_DESP, "Collect 15 Ash Wood Log and 10 Crystal Ore, and take along the<r Tinder> with you to the Blacksmith - Bash at Icicle Castle (1344,529)")
	
	MisBeginAction( AddTrigger, 13071, TE_GETITEM, 3989, 15)
	MisBeginAction( AddTrigger, 13072, TE_GETITEM, 4546, 10)
	
	MisNeed( MIS_NEED_ITEM, 3989, 15, 10, 15)
	MisNeed( MIS_NEED_ITEM, 4546, 10, 20, 10)
	
	MisResultTalk( "<t>Let me have a look.")
	MisHelpTalk( "<t>ОТЦ»ТЄ15ёцВдТ¶РЎЛЙФ­ДѕєН10ёцЛ®ѕ§їуКЇЈ¬УРДЗГґДСВрЈї")
	MisResultCondition( HasMission, 1307)
	MisResultCondition( HasRecord, 1306)
	MisResultCondition( HasItem, 3989, 15)
	MisResultCondition( HasItem, 4546, 10)
	MisResultCondition( HasItem, 5802, 1)


	MisResultAction( TakeItem, 3989, 15)
	MisResultAction( TakeItem, 4546, 10)
	MisResultAction( TakeItem, 5802, 1)
	MisResultAction( AddMoney , 5000)
	MisResultAction( ClearMission, 1307)
	MisResultAction( ClearRecord, 1306)
	MisResultAction( SetRecord, 1307)
	
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3989)	
	TriggerAction( 1, AddNextFlag, 1307, 10, 15)
	RegCurTrigger( 13071 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4546)	
	TriggerAction( 1, AddNextFlag, 1307, 20, 10)
	RegCurTrigger( 13072 )
	
	----------------------------------°ВФЛ»о¶Ї Ц® МъЅіµДТЄЗу------------  МъЅі±©±щ
	DefineMission( 6252, "Make a new Torch",1308 )
	MisBeginTalk("<t>The stuff is enough, you see, I'm getting old, I'm hurry and thirsty now, can you find 10 Red Dates and 10 Snowy Soft Bud for me? After eating, I can work.")
	MisBeginCondition(NoMission, 1308)
	MisBeginCondition(NoRecord, 1308)
	MisBeginCondition(HasRecord, 1307)
	
	MisBeginAction(AddMission, 1308)
	MisCancelAction(ClearMission, 1308)
	
	
	MisNeed( MIS_NEED_DESP, "<r Blacksmith - Bash(1344,529)> at Icicle Castle ask you to collect <r10 Red Dates> and <r10 Snowy Soft Bud>, and bring them to him after collecting.")
	
	MisBeginAction( AddTrigger, 13081, TE_GETITEM, 3117, 10)
	MisBeginAction( AddTrigger, 13082, TE_GETITEM, 3136, 10)
	
	MisNeed( MIS_NEED_ITEM, 3117, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 3136, 10, 20, 10)
	
	MisResultTalk( "<t>You are really a big help.")
	MisHelpTalk( "<t>You can't do it, right?")
	MisResultCondition( HasMission, 1308)
	MisResultCondition( HasRecord, 1307)
	MisResultCondition( HasItem, 3117, 10)
	MisResultCondition( HasItem, 3136, 10)

	MisResultBagNeed(1)
	MisResultAction( TakeItem, 3117, 10)
	MisResultAction( TakeItem, 3136, 10)
	MisResultAction(GiveItem, 5842, 1, 4)       
	MisResultAction( ClearMission, 1308)
	MisResultAction( ClearRecord, 1307)
	MisResultAction( SetRecord, 1308)
	MisResultAction( AddMoney , 5000)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3117)	
	TriggerAction( 1, AddNextFlag, 1308, 10, 10)
	RegCurTrigger( 13081 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3136)	
	TriggerAction( 1, AddNextFlag, 1308, 20, 10)
	RegCurTrigger( 13082 )
	
----------------------------------°ВФЛ»о¶Ї Ц® µгИјКҐ»р------------МъЅі±©±щЈЁїЄКјЈ©
	DefineMission( 6253, "µгИјКҐ»р",1309 )
	MisBeginTalk( "<t>»рѕжТСѕ­НкіЙАІЈЎёПїмґшЧЕ»рѕжИҐХТКҐ»рґ«µЭґуК№°ЙЈ¬ОТПлЛыПЦФЪУ¦ёГ»№Г»АлїЄЙіб°іЗ(871,3580)Ј¬јЗµГ°С»рѕж·ЕФЪ±і°ьДЪЈЎ")
	MisBeginCondition(NoRecord, 1309 )
	MisBeginCondition(NoMission, 1309 )
	MisBeginCondition(HasRecord, 1308 )
	MisBeginAction(AddMission, 1309 )
	MisCancelAction(ClearMission, 1309)
		
	MisNeed(MIS_NEED_DESP, "°С»рѕжґшёшЙіб°іЗКҐ»рґ«µЭґуК№(871,3580)")
	MisHelpTalk("<t>іГЛы»№Г»АлїЄЙіб°іЗёПЅф°С»рѕжґшёшЛыЈЎКҐ»рґ«µЭґуК№ѕНФЪЙіб°іЗ(871,3580)")
	MisResultCondition( AlwaysFailure )
	
----------------------------------°ВФЛ»о¶Ї Ц® µгИјКҐ»р------------КҐ»рґ«µЭґуК№ЈЁЅбКшЈ©
	DefineMission( 6254, "µгИјКҐ»р",1309, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>ДгЦХУЪ»ШАґБЛЈ¬»№ґш»ШБЛ»рѕжЈ¬М«єГБЛЈЎ")
	MisResultCondition( HasMission, 1309)
	MisResultCondition( NoRecord, 1309)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1309)
	MisResultAction( SetRecord, 1309)
	MisResultAction( AddMoney , 5000)

----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД------------КҐ»рґ«µЭґуК№	ЈЁїЄКјЈ©
	DefineMission( 6255, "ИК°®Ц®РД",1310 )
	MisBeginTalk( "<t>ПлТЄµгИјКҐ»рМЁКЗРиТЄѕЯ±ёізёЯµДЖ·ЦКЈ¬ОТРиТЄДгНкіЙТ»ПµБРїјСйАґЦ¤ГчДгЧФјєЈ¬КЧПИИГОТїґїґДгКЗ·сѕЯ±ёБЛТ»їЕИК°®Ц®РДЈЎЦ»УР°С»рѕж·ЕФЪ±і°ьДЪІЕїЙТФБмИЎєННкіЙїјСйЈЎ")
	MisBeginCondition(NoRecord, 1310 )
	MisBeginCondition(NoMission, 1310 )
	MisBeginCondition(HasRecord, 1309 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1310)
	MisCancelAction(ClearMission, 1310)
	
	MisNeed(MIS_NEED_DESP, "ПИИҐјУДЙґуВЅУлВ·ИЛЎ¤°Н±И(994,1234)БДТ»ПВ°Й")
	MisHelpTalk("<t>Дг»№І»ёПЅфИҐХТВ·ИЛЎ¤°Н±И(994,1234)")
	MisResultCondition( AlwaysFailure )
----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД------------В·ИЛЎ¤°Н±И	ЈЁЅбКшЈ©
	DefineMission( 6256, "ИК°®Ц®РД",1310, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>ЧЬЛгУРИЛПлµЅОТБЛЈ¬ОТТ»ёцИЛФЪХвєЬѕГАІЈЎ")
	MisResultCondition( HasMission, 1310)
	MisResultCondition( NoRecord, 1310)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1310)
	MisResultAction( SetRecord, 1310)
	MisResultAction( AddMoney , 5000)
----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД2------------В·ИЛЎ¤°Н±И	ЈЁїЄКјЈ©
	DefineMission( 6257, "ИК°®Ц®РД¶ю",1311 )
	MisBeginTalk( "<t>ФЪєЈµБНхµДКАЅзЦР»№УРРн¶аРиТЄОТГЗ№ШРДµДИЛЈ¬ПЈНыДгДЬ№»ИҐМЅНыЛыГЗТ»ПВ")
	MisBeginCondition(NoRecord, 1311 )
	MisBeginCondition(NoMission, 1311 )
	MisBeginCondition(HasRecord, 1310 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1311)
	MisCancelAction(ClearMission, 1311)
	
	MisNeed(MIS_NEED_DESP, "їмИҐД§Е®Ц®єЈИҐХТИЛУгНхЧУЎ¤№юЙіМШ(1254,3491)БДТ»ПВ°Й")
	MisHelpTalk("<t>Р»Р»ДгАґїґОТЈ¬ёПїмИҐД§Е®Ц®єЈХТИЛУгНхЧУЎ¤№юЙіМШ(1254,3491)")
	MisResultCondition( AlwaysFailure )
----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД2------------ИЛУгНхЧУЎ¤№юЙіМШ	ЈЁЅбКшЈ©
    DefineMission( 6258, "ИК°®Ц®РД¶ю",1311, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>ДгєГЈ¬Д°ЙъИЛЈ¬ХвАпТСѕ­єЬѕГГ»УРИЛѕ­№эБЛЈЎ")
	MisResultCondition( HasMission, 1311)
	MisResultCondition( NoRecord, 1311)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1311)
	MisResultAction( SetRecord, 1311)
	MisResultAction( AddMoney , 5000)
----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД3------------ИЛУгНхЧУЎ¤№юЙіМШ	ЈЁїЄКјЈ©
    DefineMission( 6259, "ИК°®Ц®РДИэ",1312 )
	MisBeginTalk( "<t>№ю№ю№юЈЎЈЎЈЎјЗµГТФЗ°ОТѕ­№эЙоА¶ИєµєµДК±єтУцјы№эТ»ёц№В¶АєЈёЫЦё»У")
	MisBeginCondition(NoRecord, 1312 )
	MisBeginCondition(NoMission, 1312)
	MisBeginCondition(HasRecord, 1311 )
	MisBeginCondition( HasItem, 5842, 1)
   	MisBeginAction(AddMission, 1312)
	MisCancelAction(ClearMission, 1312)
	
	MisNeed(MIS_NEED_DESP, "ИҐИшµПАХІ№ёшХѕХТЗЗ¶ыЗЗДб(194,1715)БДТ»ПВ°Й")
	MisHelpTalk("<t>єЗєЗД°ЙъИЛЈ¬ёПїмИҐХТЙоА¶ИєµєХТЗЗ¶ыЗЗДб(194,1715)")
	MisResultCondition( AlwaysFailure )
----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД3------------єЈёЫЦё»УЎ¤ЗЗ¶ыЗЗДб	ЈЁЅбКшЈ©
	DefineMission( 6260, "ИК°®Ц®РДИэ",1312, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>НЫЈЎЈЎЈЎЈЎДъКЗАґїґОТµДВпЈї")
	MisResultCondition( HasMission, 1312)
	MisResultCondition( NoRecord, 1312)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1312)
	MisResultAction( SetRecord, 1312)
	MisResultAction( AddMoney , 5000)
----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД4------------єЈёЫЦё»УЎ¤ЗЗ¶ыЗЗДб	ЈЁїЄКјЈ©
	DefineMission( 6261, "ИК°®Ц®РДЛД",1313 )
	MisBeginTalk( "<t>ФЪґє·зХтУРТ»ёцЅР±ИёЗµДЦРДкДРИЛЈ¬ХыМмаЦ№ѕІ»НЈЈ¬їЙДЬРиТЄИЛ°пГ¦Е¶")
	MisBeginCondition(NoRecord, 1313 )
	MisBeginCondition(NoMission, 1313)
	MisBeginCondition(HasRecord, 1312 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1313)
	MisCancelAction(ClearMission, 1313)
	
	MisNeed(MIS_NEED_DESP, "ИҐґє·зХтХТЦРДкДРЧУЎ¤±ИёЗ(3235,2550)№ШРДПВ°ЙЈЎ")
	MisHelpTalk("<t>ДгФхГґ»№ФЪХвЈ¬їмИҐИҐґє·зХтХТЦРДкДРЧУЎ¤±ИёЗ(3235,2550)°ЙЈЎ")
	MisResultCondition( AlwaysFailure )
----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД4------------ЦРДкДРЧУЎ¤±ИёЗ	 ЈЁЅбКшЈ©
	DefineMission( 6262, "ИК°®Ц®РДЛД",1313, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>УРИЛ»№ПлµЅОТХжµДМ«єГБЛЈ¬єГПлУРёц°йЕ¶")
	MisResultCondition( HasMission, 1313)
	MisResultCondition( NoRecord, 1313)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1313)
	MisResultAction( SetRecord, 1313)
	MisResultAction( AddMoney , 5000)
----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД5------------ЦРДкДРЧУЎ¤±ИёЗ	 ЈЁїЄКјЈ©
	DefineMission( 6263, "ИК°®Ц®РДОе",1314 )
	MisBeginTalk( "<t>єЗєЗЈ¬ЖдКµОТБЛЅвБЛЈ¬Из№ыДгПлЦ¤ГчЧФјєУРТ»їЕИК°®Ц®РДЈ¬Дг»№КЗµГХТµЅµШУьґ«ЛНК№")
	MisBeginCondition(NoRecord, 1314 )
	MisBeginCondition(NoMission, 1314)
	MisBeginCondition(HasRecord, 1313 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1314)
	MisCancelAction(ClearMission, 1314)
	
	MisNeed(MIS_NEED_DESP, "їмИҐјУАХ±ИХТµШУьґ«ЛНК№(690,1043)°ЙЈЎ")
	MisHelpTalk("<t>ЧҐЅфК±јд°ЙєўЧУЈ¬їмИҐХТјУАХ±ИµДµШУьґ«ЛНК№(690,1043)ЈЎ")
	MisResultCondition( AlwaysFailure )
----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД5------------µШУьґ«ЛНК№	 ЈЁЅбКшЈ©
	
	DefineMission( 6264, "ИК°®Ц®РДОе",1314, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>№ю№юЈ¬ГїМмФЪХвАпјы№эОЮКэУВКїИҐГ°ПХЈ¬ЅсМмЧЬЛгУцјыБЛУР°®РДµДИЛЎЈ")
	MisResultCondition( HasMission, 1314)
	MisResultCondition( NoRecord, 1314)
	MisResultCondition( HasItem, 5842, 1)
	MisResultAction( ClearMission, 1314)
	MisResultAction( SetRecord, 1314)
	MisResultAction( AddMoney , 5000)
----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД6-----------µШУьґ«ЛНК№	 ЈЁїЄКјЈ©
	DefineMission( 6265, "ИК°®Ц®РДЦХ",1315 )
	MisBeginTalk( "<t>їґАґДгТСѕ­НкИ«Ц¤ГчБЛДгµД°®РДЈ¬І»№э№вУРИК°®Ц®РД»№КЗІ»№»µДЈ¬їм»ШµЅКҐ»рґ«µЭґуК№ДЗАпЈ¬ТІРнЛы»бёшДгЅшТ»ІЅµДЖф·ўЈЎ")
	MisBeginCondition(NoRecord, 1315 )
	MisBeginCondition(NoMission, 1315)
	MisBeginCondition(HasRecord, 1314 )
	MisBeginCondition( HasItem, 5842, 1)
    	MisBeginAction(AddMission, 1315)
	MisCancelAction(ClearMission, 1315)
	
	MisNeed(MIS_NEED_DESP, "їм»ШµЅКҐ»рґ«µЭґуК№(871,3580)ДЗАпЈ¬їґїґЛыДЬёшДгКІГґЖф·ў°ЙЈЎ")
	MisHelpTalk("<t>КҐ»рґ«µЭґуК№ѕНФЪ(871,3580)ДЗАпЈ¬јУїмДгµДІЅ·ҐЈ¬ёПЅф¶ЇЙн°ЙЈЎ")
	MisResultCondition( AlwaysFailure )

----------------------------------°ВФЛ»о¶Ї Ц® ИК°®Ц®РД6------------КҐ»рґ«µЭґуК№	 ЈЁЅбКшЈ©
	
	DefineMission( 6266, "ИК°®Ц®РДЦХ",1315, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>І»ВЫУОП·»№КЗЙъ»оЈ¬ПЈНыДгДЬЙЖґэЧФјєЈ¬№Ш°®ЛыИЛЈ¬ИПХжГїТ»МмЈЎ»№УРёь¶аµДїјСйФЪµИЧЕДгЈ¬ПЈНыДгДЬјбіЦµЅµЧЈЎ")
	MisResultCondition( HasMission, 1315)
	MisResultCondition( NoRecord, 1315)
	MisResultCondition( HasItem, 5842, 1)
	--MisResultCondition( ItemAttrNum, 5825, 6, 10000, 0)
	MisResultBagNeed(1)
	MisResultAction( ClearMission, 1315)
	MisResultAction( SetRecord, 1315)

	MisResultAction( GiveItem, 5797 , 1 , 4)
	MisResultAction( AddMoney , 5000)

	
	----------------------------------°ВФЛ»о¶Ї  Ц® ОЮОЅЦ®РД------------КҐ»рґ«µЭґуК№	 ЈЁїЄКјЈ©
	DefineMission( 6267, "РВµДїјСй",1316 )
	MisBeginTalk( "<t>Ц¤ГчДгЧФјєЈ¬ИГОТїґїґДгµЅµЧУР¶аУВёТЈЎ")
	MisBeginCondition(NoRecord, 1316)
	MisBeginCondition(NoMission, 1316)
	MisBeginCondition(HasRecord, 1315 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1316)
	MisCancelAction(ClearMission, 1316)
	
	MisNeed(MIS_NEED_DESP, "Ул±щАЗ±¤µДВТ¶·№ЬАнФ±(1374,529)МёМёЈ¬Лэ»бёжЛЯДгФхСщНкіЙХвґОµДїјСйЈЎ")
	MisHelpTalk("<t>Дг»№КЗПИИҐХТ±щАЗ±¤µДВТ¶·№ЬАнФ±(1374,529)°ЙЈ¬НкіЙБЛїјСйФЩ»ШАґХТОТЎЈ")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------°ВФЛ»о¶Ї Ц® ОЮОЅЦ®РД------------ВТ¶·№ЬАнФ±	 ЈЁЅбКшЈ©	
	DefineMission( 6268, "РВµДїјСй",1316, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk( "<t>Из№ыОТІВµДГ»ґнµД»°Ј¬ДгТІКЗКҐ»рґ«µЭґуК№НЖјцАґµД°ЙЈЎДЗОТГЗѕНїЄКј°Й")
	MisResultCondition( HasMission, 1316)
	MisResultCondition( NoRecord, 1316)
	MisResultCondition( HasItem, 5842, 1)	
	MisResultAction( ClearMission, 1316)
	MisResultAction( ClearRecord, 1315)
	MisResultAction( SetRecord, 1316)
	MisResultAction( AddMoney , 5000)
	
	----------------------------------°ВФЛ»о¶Ї  Ц® ОЮОЅЦ®РДТ»------------ВТ¶·№ЬАнФ±	 ЈЁїЄКјЈ©
	DefineMission( 6269, "ОЮО·Ц®РДТ»",1317 )
	MisBeginTalk( "<t>ХвґОµДТЄїјСйµДѕНКЗїґїґДгКЗ·сЧг№»УВёТЎЈОТ»бёшДгТ»±ѕОЮО·Ц®Ц¤Ј¬Ль»бјЗВјДгµДХЅ¶·РЕПўЈ¬ДгТЄЧцµДѕНКЗіЙ№¦Й±µР10ґО,И»єуґшЧЕОЮО·Ц®Ц¤ИҐјыКҐ»рґ«µЭґуК№ЈЁ871Ј¬3580Ј©ЎЈЧј±ёєГБЛГґЈї")
	MisResultBagNeed(1)
	MisBeginCondition(NoRecord, 1317)
	MisBeginCondition(NoMission, 1317)
	MisBeginCondition(HasRecord, 1316 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1317)
	
	MisBeginAction(GiveItem, 5803, 1 ,41)
	MisCancelAction(SysteamNotice, "ёГИООсОЮ·ЁЦР¶П")
	MisResultCondition( AlwaysFailure )
	MisNeed(MIS_NEED_DESP, "µ±ОЮО·Ц®Ц¤ЙПµДЙ±ИЛКэАЫјЖµЅ10єуЈ¬ИҐЙіб°іЗХТКҐ»рґ«µЭґуК№ЈЁ871Ј¬3580Ј©НкіЙИООс")
	MisHelpTalk("<t>Ц»УРµ±ОЮО·Ц®Ц¤ЙПµДЙ±ИЛКэВъ10К±ІЕДЬНкіЙИООсЕ¶Ј¬БнНвДг»№±ШРлґшЧЕ»рѕж")
	MisBeginBagNeed(1)
	
	---------------------------------°ВФЛ»о¶Ї Ц® ОЮОЅЦ®РДТ»------------КҐ»рґ«µЭґуК№	 ЈЁЅбКшЈ©
	DefineMission( 6270, "ОЮО·Ц®РДТ»",1317)
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>І»ґнІ»ґнЈЎГ»ПлµЅДгДЗГґїмѕНДЬНкіЙїјСйЈ¬ХжКЗМ«єГБЛЈЎјМРшПВёцїјСй°Й")	
	
	MisResultCondition(HasMission, 1317)
	MisResultCondition(HasRecord, 1316)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultCondition(CheckPoint, 5803)

	MisResultBagNeed(2)
	MisResultAction(TakeItem, 5803, 1)
	MisResultAction(ClearMission, 1317) 
	MisResultAction(ClearRecord, 1316)
	MisResultAction(GiveItem, 5798, 1, 4)
	MisResultAction(GiveItem, 3096, 2, 4)
	MisResultAction(ClearRecord, 1316)
	MisResultAction(SetRecord, 1317) 
	MisResultAction( AddMoney , 5000)
	MisResultBagNeed(1)
	
	---------------------------------°ВФЛ»о¶Ї Ц® ·оПЧЦ®РД------------КҐ»рґ«µЭґуК№	 ЈЁїЄКјЈ©
	DefineMission( 6271, "·оПЧЦ®РД",1318 )
	MisBeginTalk( "<t>КАЅзЙПЧоО°ґуµДѕНКЗОЮЛЅµД·оПЧ....")
	MisBeginCondition(NoRecord, 1318)
	MisBeginCondition(NoMission, 1318)
	MisBeginCondition(HasRecord, 1317 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1318)
	MisCancelAction(ClearMission, 1318)
	MisNeed(MIS_NEED_DESP, "УлТшїу¶юІгµДїу№¤ґу¶ЗлоЈЁ296,57Ј©МёМёЈ¬Лы»бёжЛЯДгФхСщНкіЙХвґОµДїјСйЈЎ")
	MisHelpTalk("<t>Дг»№КЗПИИҐХТТшїу¶юІгµДїу№¤ґу¶ЗлоЈЁ296,57Ј©°ЙЈ¬НкіЙБЛїјСйФЩ»ШАґХТОТЎЈ")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------°ВФЛ»о¶Ї Ц® ·оПЧЦ®РД------------їу№¤ґу¶Зло	 ЈЁЅбКшЈ©
	DefineMission( 6272, "·оПЧЦ®РД",1318, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>ДгФхГґДЗГґНнІЕАґЈ¬ФВББ¶јїмПВЙЅБЛ...")	
	MisResultCondition(HasMission, 1318)
	MisResultCondition(HasRecord, 1317)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultAction(ClearMission, 1318)
	MisResultAction(ClearRecord, 1317)
	MisResultAction(SetRecord, 1318) 
	MisResultAction( AddMoney , 5000)
	
	---------------------------------°ВФЛ»о¶Ї Ц® ·оПЧЦ®РДТ»------------їу№¤ґу¶Зло	
	DefineMission( 6273, "·оПЧЦ®РДТ»",1319 )
	MisBeginTalk( "<t>ХвґОµДїјСйКЗТЄДгОЄКҐ»рґ«µЭ»о¶ЇѕиПЧµгОпЧКЈ¬ДгїЙ±рПлДГІ»ЦµЗ®µД¶«ОчАґГЙ»м№э№ШЈЎОТРиТЄ5ёцЙсКҐµДѕ«Бй»ФУЎЈЎ")
	MisBeginCondition(NoRecord, 1319)
	MisBeginCondition(NoMission, 1319)
	MisBeginCondition(HasRecord, 1318 )	
	MisBeginAction(AddMission, 1319)
	MisCancelAction(ClearMission, 1319)

	MisNeed(MIS_NEED_DESP, "їу№¤ґу¶ЗлоЈЁ296,57Ј©ТЄЗуДгѕиПЧ5ёцѕ«Бй»ФУЎёшЛы")	
	MisHelpTalk("<t>ДгїґОТГЗГїМмДЗГґРБїаµД№¤Чч¶јКЗОЄБЛУ­ЅУКҐ»рґ«µЭ»о¶ЇЈ¬ДгТІУ¦ёГЧКЦъОТГЗТ»Р©¶«Оч°ЙЈ¬ОТГЗЦ»КЗПлТЄ5ёцѕ«Бй»ФУЎ¶шТСЈЎ")
	
	MisResultTalk("<t>М«єГБЛЈ¬ОТГЗЧоПІ»¶ѕ«Бй»ФУЎБЛЈ¬М«Р»Р»ДгБЛЈ¬ОТ»б°СДгµД±нПЦёжЛЯКҐ»рґ«µЭґуК№µДЈЎ")	
	
	MisResultCondition(HasMission, 1319)
	MisResultCondition(HasRecord, 1318)
	MisResultCondition(HasItem, 2588, 5)
	
	MisResultAction(ClearMission, 1319)	
	MisResultAction(TakeItem, 2588,5)
	MisResultAction(ClearRecord, 1318)
	MisResultAction(SetRecord, 1319) 
	MisResultAction( AddMoney , 5000)


	---------------------------------°ВФЛ»о¶Ї Ц® ·оПЧЦ®РД¶ю------------їу№¤ґу¶Зло	 ЈЁїЄКјЈ©
	DefineMission( 6274, "·оПЧЦ®РД¶ю",1320 )
	MisBeginTalk( "<t>ёПЅф»ШИҐХТКҐ»рґ«µЭґуК№°ЙЈ¬ДгµД±нПЦЛыТСѕ­ЦЄµАБЛЈ¬ЛыєЬЖЪґэєНДгФЩґОјыГжЈЎ")
	MisBeginCondition(NoRecord, 1320)
	MisBeginCondition(NoMission, 1320)
	MisBeginCondition(HasRecord, 1319 )
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1320)
	MisCancelAction(ClearMission, 1320)
	MisNeed(MIS_NEED_DESP, "ИҐєНЙіб°іЗµДКҐ»рґ«µЭґуК№(871,3580)БДБД°ЙЈ¬Лы¶ФДгµД±нПЦ·ЗіЈВъТв")
	MisHelpTalk("<t>КҐ»рґ«µЭґуК№ѕНФЪЙіб°іЗµД(871,3580)")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------°ВФЛ»о¶Ї Ц® ·оПЧЦ®РД¶ю------------КҐ»рґ«µЭґуК№	 ЈЁЅбКшЈ©
	DefineMission( 6275, "·оПЧЦ®РД¶ю",1320, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>ОТГЗУЦјыГжБЛЈ¬ДгµД±нПЦОТТСѕ­МэЛµБЛЈ¬ОТєЬёЯРЛДгДЬУРИзґЛХд№уµД·оПЧѕ«ЙсЈ¬ПЈНыДгДЬФЩЅУФЩАчєГєГ±нПЦЈЎ")	
	MisResultCondition(HasMission, 1320)
	MisResultCondition(HasRecord, 1319)	
	MisResultCondition(HasItem, 5842, 1)

	MisResultBagNeed(1)
	MisResultAction(ClearMission, 1320)
	MisResultAction(ClearRecord, 1319)
	MisResultAction(SetRecord, 1320) 
	MisResultAction(GiveItem, 5800,1,4)
	MisResultAction( AddMoney , 5000)

	
	---------------------------------°ВФЛ»о¶Ї Ц® ЦЗ»ЫЦ®РД-----------КҐ»рґ«µЭґуК№ ЈЁїЄКјЈ©
	DefineMission( 6276, "ЦЗ»ЫЦ®РД",1321 )
	MisBeginTalk( "<t>ФЪєЈµБНхµДКАЅзЦРУРТ»О»ѕЯУР·З·ІЦЗ»ЫµДЦЗХЯЈ¬ЛэѕНКЗТюѕУФЪМмМГ(1755,908)µДЕ®ЙсЈ¬ОТФшѕ­єНЛэМбµЅ№эДгЈ¬ЛэТІєЬПлєНДгјыГжЎЈїмИҐ°ЙЈ¬І»КЗГїёцИЛ¶јУР»ъ»бєНЕ®ЙсјыГжµД")
	MisBeginCondition(NoRecord, 1321)
	MisBeginCondition(NoMission, 1321)
	MisBeginCondition(HasRecord, 1320)
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1321)
	MisCancelAction(ClearMission, 1321)
	MisNeed(MIS_NEED_DESP, "ИҐМмМГ(1755,908)ХТЕ®ЙсБДБД°ЙЈ¬Лэ·ЗіЈПлјыДг")
	MisHelpTalk("<t>Е®ЙсѕНФЪМмМГ(1755,908)ґ¦Ј¬ёПїміц·ў°Й")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------°ВФЛ»о¶Ї Ц® ЦЗ»ЫЦ®РД------------Е®Йс	 ЈЁЅбКшЈ©
	DefineMission( 6277, "ЦЗ»ЫЦ®РД",1321, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>ДгѕНКЗґуК№МбµЅµДДЗёцДкЗбИЛЈїєЬёЯРЛєНДгјыГж...")	
	MisResultCondition(HasMission, 1321)
	MisResultCondition(HasRecord, 1320)	
	MisResultCondition(HasItem, 5842, 1)
	MisResultAction(ClearMission, 1321)
	MisResultAction(ClearRecord, 1320)
	MisResultAction(SetRecord, 1321) 
	MisResultAction( AddMoney , 5000)
	
	---------------------------------°ВФЛ»о¶Ї Ц® ЦЗ»ЫЦ®РДТ»------------Е®Йс	 ЈЁїЄКјЈ©
	DefineMission( 6278, "ЦЗ»ЫЦ®РДТ»",1322 )
	MisBeginTalk( "<t>КҐ»рґ«µЭґуК№°ЭНРОТАґёєФрДгХвґОµДїјСйЈ¬ДгїЙТЄЧцєГЧј±ёЕ¶ЈЎОТРиТЄДг°пОТґшР©¶«Оч»ШАґ...Т»ёц<ґ«ЛµїЙТФУГАґЦОБЖДСТФУъєПµДЙЛїЪУРєЬєГµДР§№ы>µДОпЖ·єНТ»ёц<И­»чГФГЗµД±Ш±ёЖ·>µДОпЖ·ЎЈБ¬Хв¶јПлІ»µЅµД»°Ц»ДЬЛµГчДг±ИѕЖ№н»№±їДШ")
	MisBeginCondition(NoRecord, 1322)
	MisBeginCondition(NoMission, 1322)
	MisBeginCondition(HasRecord, 1321)
	MisBeginCondition( HasItem, 5842, 1)
    MisBeginAction(AddMission, 1322)
	MisCancelAction(ClearMission, 1322)
	
	MisHelpTalk("<t>Е®Йс(1755,908)РиТЄТ»ёц<rґ«ЛµїЙТФУГАґЦОБЖДСТФУъєПµДЙЛїЪУРєЬєГµДР§№ы>µДОпЖ·єНТ»ёц<rИ­»чГФГЗµД±Ш±ёЖ·>µДОпЖ·Ј¬»№Г»ПлµЅµЅµЧКЗКІГґ¶«ОчВрЈїДСµАДг±ИѕЖ№н»№±їВрЈї")
	MisNeed(MIS_NEED_DESP, "Е®ЙсРиТЄТ»ёц<rґ«ЛµїЙТФУГАґЦОБЖДСТФУъєПµДЙЛїЪУРєЬєГµДР§№ы>µДОпЖ·єНТ»ёц<rИ­»чГФГЗµД±Ш±ёЖ·>µДОпЖ·Ј¬")
	MisBeginAction(AddTrigger, 13221, TE_GETITEM, 4435, 1)          
	MisBeginAction(AddTrigger, 13222, TE_GETITEM, 4468, 1)	
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4435)	
	TriggerAction( 1, AddNextFlag, 1322, 10, 1)
	RegCurTrigger( 13221 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4468)	
	TriggerAction( 1, AddNextFlag, 1322, 20, 1)
	RegCurTrigger( 13222 )
	
	MisResultTalk("<t>№ыИ»ґПГчЈЎДС№ЦґуК№ДЗГґїґєГДг...І»ТЄµГТвЕ¶Ј¬ОТ»№РиТЄДг»ШґрТ»Р©№ШУЪЦЗ»ЫЦ®РДµДОКМвЈ¬Ц»УРДгНкИ«»ШґрХэИ·ІЕЛгНкіЙїјСйЈЎ")

	MisResultCondition(HasMission, 1322)
	MisResultCondition(NoRecord, 1322)
	MisResultCondition(HasRecord, 1321)
	MisResultCondition(HasItem, 5842, 1)
	MisResultCondition(HasItem, 4435, 1)
	MisResultCondition(HasItem, 4468, 1)
	MisResultAction(TakeItem, 4435, 1)
	MisResultAction(TakeItem, 4468, 1)	
	MisResultAction(ClearMission, 1322)
	MisResultAction( AddMoney , 5000)
	MisResultAction(ClearRecord, 1321)
	MisResultAction(SetRecord, 1322)  ----ФЪNPC¶Ф»°ґ¦»бУГµЅґЛrecord  УГАґґҐ·ўЅУПВИҐµД¶Ф»°
	
	
	---------------------------------°ВФЛ»о¶Ї Ц® КҐ»рМЁ------------КҐ»рґ«µЭґуК№	 ЈЁїЄКјЈ©
	DefineMission( 6279, "КҐ»рМЁ",1323 )	
	MisBeginTalk( "<t>ДгТСѕ­НкіЙЗ°Гж4ПоїјСйБЛЈ¬ОТХвАп»№УРТ»їЕјб¶ЁЦ®РДЈ¬ЛыЦ»КфУЪДЬ№»јбіЦНкіЙЗ°Гж4ПоїјСйµДИЛЈ¬ДГИҐ°ЙЈ¬ДкЗбИЛЈЎґшЧЕОеРДєН»рѕжХТµЅКҐ»рМЁ°С»рѕжµгИј°ЙЈЎКҐ»рМЁУ¦ёГѕНФЪЙіб°ёЫїЪёЅЅь")
	
	MisResultBagNeed(1)
	MisBeginCondition(NoRecord, 1322)
	
	MisBeginCondition(HasItem, 5801, 1)
	MisBeginCondition(NoMission, 1323)
	MisBeginAction(AddMission, 1323)		
	MisBeginAction(GiveItem, 5799, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "ёГИООсОЮ·ЁЦР¶П")
	MisNeed(MIS_NEED_DESP, "ґшЧЕ5РДєН»рѕжХТµЅКҐ»рМЁ") 
	MisHelpTalk("<t>З§НтІ»ДЬЕЄ¶ЄИОєОТ»їОРДТФј°»рѕжЈ¬·сФтѕН»б№¦їчТ»усБЛ")
	MisResultCondition( AlwaysFailure )
	
	---------------------------------°ВФЛ»о¶Ї Ц® КҐ»рМЁ------------КҐ»рМЁ	 ЈЁЅбКшЈ©
	DefineMission( 6280, "КҐ»рМЁ",1323, COMPLETE_SHOW )	
	MisBeginCondition( AlwaysFailure )
	MisResultTalk("<t>№§ПІДгЈЎДгТСѕ­іЙ№¦НЁ№эБЛОеРДїјСйЈЎ")	
	MisResultCondition(HasMission, 1323)		
	MisResultCondition(HasItem, 5842, 1)   --НжјТАП»рѕж
	MisResultCondition(HasItem, 5797, 1)   --ИК°®Ц®РД 
	MisResultCondition(HasItem, 5798, 1)   --ОЮО·Ц®РД
	MisResultCondition(HasItem, 5799, 1)   --јб¶ЁЦ®РД
	MisResultCondition(HasItem, 5800, 1)   --·оПЧЦ®РД
	MisResultCondition(HasItem, 5801, 1)   --ЦЗ»ЫЦ®РД
	
	
	MisResultAction(ClearMission, 1323)	
	MisResultAction(SetRecord, 1324)
	MisResultAction(ClearRecord, 1323)	
	MisResultAction( AddMoney , 5000)
	
	---------------------------------РВДк»о¶Ї------------ВкёсАцМШ	 ЈЁїЄКјЈ©
	DefineMission (6628, "ГАКіНхµДКўСз", 1860)
	MisBeginTalk( "<t>їґ№эЎ¶јУДЙГАКіНхЎ·µДµзКУВрЈїХвО»ґ«ЖжЕлвїґуК¦Ц®ЛщТФ±»ИЛґ«ЛРКЗТтОЄЛыУµУРТ»ЦЦЙсЖжµДјјТХЈ¬їЙТФЕлвїіцТ»ЦЦГыЅРЎ°јУДЙКўСзЎ±µДМрµгЈ¬ѕНКЗїЙТФИГКфРФУАѕГМбЙэ1µгЈЎ")
	MisBeginCondition(NoRecord, 1860)
	MisBeginCondition(NoRecord, 1863)
	MisBeginCondition(NoMission, 1860)
	MisBeginAction(AddMission, 1860)		
	MisNeed(MIS_NEED_DESP, "І»№эЦЄПюГАКіНхЧЩјЈµДИЛИґГ»УРјёёцЈ¬МэЛµ°ЧТшѕЖ°ЙАпµДѕЖ№нЎ¤·ТµВДЪЈЁ2222Ј¬2889Ј©ДЗАпУРЛыµДПыПўЎЈ") 
	MisHelpTalk("<t>МэЛµ°ЧТшѕЖ°ЙАпµДѕЖ№нЎ¤·ТµВДЪЈЁ2222Ј¬2889Ј©ДЗАпУРЛыµДПыПўЈ¬їмИҐОКОК°ЙЎЈ")
	MisCancelAction(ClearMission, 1860)
	MisResultCondition( AlwaysFailure )
	
	---------------------------------РВДк»о¶Ї------------·ТµВДЪ	 ЈЁЅбКшЈ©
	DefineMission( 6623, "ГАКіНхµДКўСз",1860, COMPLETE_SHOW )	
	MisBeginCondition( AlwaysFailure )
	MisResultTalk("<t>ДгПлЦЄµАґ«ЖжЕлвїґуК¦µДПыПўЈїПИВъЧгОТµДТ»ёцРЎТЄЗу°ЙЈЎ")	
	MisResultCondition(HasMission, 1860)
	MisResultAction(SetRecord, 1860)
	MisResultAction(ClearMission, 1860)
	
	---------------------------------РВДк»о¶Ї2------------·ТµВДЪ
	DefineMission (6624, "јУДЙГАКіНхµДЧЩјЈ", 1861)
	MisBeginTalk( "<t>ОТІ»ЦЄµАЈ¬ТІРнКЗОТµДѕЖєИµД»№І»№»¶аЈ¬Из№ыДг°пОТФЪѕЖ°ЙЕ®Ў¤µЩДИДЗАпВтјёЖїємѕЖµД»°Ј¬ОТїЙДЬ»бПлЖрАґЈ¬µ±И»Из№ыёшОТЎ°В·ТЧК®БщЎ±µД»°Ј¬ОТТІРнДЬПлµДёьїмР©ЎЈ")
	MisBeginCondition(HasRecord, 1860)
	MisBeginCondition(NoRecord, 1861)
	MisBeginCondition(NoMission, 1861)
	MisBeginAction(AddMission, 1861)
		
	MisNeed(MIS_NEED_DESP, "ДНѕГОЄ0µДємѕЖ»тХЯВ·ТЧК®БщЦ»УР·ЕФЪ±і°ьµЪ¶юёсДЪІЕУРР§Е¶ЎЈ") 
	MisHelpTalk("<t>ДкЗбИЛЈ¬ѕЖКЗІ»ґнЈ¬µ«КЗОТ»№Г»УРПлЖрАґЈ¬ЗлФЩИҐёшОТВтТ»Р©ѕЖ°ЙЈЎЎЈ")
	MisResultTalk("<t>ємѕЖАґ»»ПыПўµДіЙ№¦ВККЗ10ЈҐЈЎВ·ТЧК®БщАґ»»ПыПўµДіЙ№¦ВККЗ20ЈҐЈЎЧРПёїґЧуПВЅЗµДМбКѕЈ¬їґДгКЗіЙ№¦БЛ»№КЗК§°ЬБЛ")

	MisResultCondition(Jiu_Check)
	MisResultAction(Jiu_Action)
	MisCancelAction(ClearMission, 1861)
	
	-------------------------------РВДк»о¶Ї3-----------·ТµВДЪ ЈЁїЄКјЈ©
	DefineMission (6625, "јУДЙГАКіНхµДГШј®", 1862)
	MisBeginTalk( "<t>ДкЗбИЛЈ¬јУДЙГАКіНхТСѕ­іцєЈИҐ¶«·ЅГ°ПХБЛЈ¬ЧЯЦ®З°ТЕБфПВТ»±ѕ»­ВъЖж№ЦКіІДµДРЎІбЧУЈ¬ТІРнЦ»УРѕУГсЎ¤ВнёсАцМШЈЁ2279Ј¬2746Ј©ІЕДЬїґ¶®°ЙЈЎ")
	MisBeginCondition(NoRecord, 1862)	
	MisBeginCondition(HasRecord, 1861)
	MisBeginCondition(NoMission, 1862)
	MisBeginAction(AddMission, 1862)		
	MisNeed(MIS_NEED_DESP, "°ЧТшіЗѕУГсЎ¤ВнёсАцМШЈЁ2279Ј¬2746Ј©»тРнїґµГ¶®Хв¶«ОчЈ¬ИҐХТЛэїґїґЈ¬»тРнКЗёцОЮјЫЦ®±¦ДШ") 
	MisHelpTalk("<t>ИҐХТ°ЧТшіЗѕУГсЎ¤ВнёсАцМШЈЁ2279Ј¬2746Ј©°ЙЈ¬ЛэїЙКЗГАКіґуК¦Ј¬Хв±ѕ¶«ОчїЙДЬ»бИГЛэЧціцѕшЖ·µДГАО¶ДШЈЎ")
	MisCancelAction(ClearMission, 1862)

	MisResultCondition( AlwaysFailure )
	
	---------------------------------РВДк»о¶Ї3------------ВкёсАцМШ	 ЈЁЅбКшЈ©
	DefineMission( 6626, "јУДЙГАКіНхµДГШј®",1862, COMPLETE_SHOW )	
	MisBeginCondition( AlwaysFailure )
	MisResultTalk("<t>јУДЙГАКіНхµДГШј®ЈЎМм°ЎЈ¬ѕ№И»УРЦЖЧчМрµгЎ°јУДЙКўСзЎ±µДПкПёјЗВјЈ¬РиТЄГж·ЫЎўСОЎўМШЦЖПгБПЎўЙоєЈУгібЎ­Ў­.№вКіІДµД№єВт·СУГѕН·ЗіЈѕЄИЛЈЎ")	
	MisResultCondition(HasMission, 1862)
	MisResultAction(SetRecord, 1862)
	MisResultAction(ClearMission, 1862)	

	---------------------------------РВДк»о¶Ї4-----------ВкёсАцМШ
	DefineMission (6627, "ЙсµДМрµгЎ°јУДЙКўСзЎ±", 1863)
	MisBeginTalk( "<t>ОТґЦВФµДјЖЛгБЛТ»ПВЈ¬ТЄ»Ё·С1888888їйІЕДЬіЙ№¦ЦЖЧчМрµгЎ°јУДЙКўСзЎ±ЈЎ")
	MisBeginCondition(HasRecord, 1862)
	MisBeginCondition(NoRecord, 1863)
	MisBeginCondition(NoMission, 1863)
	MisBeginAction(AddMission, 1863)
	
	MisNeed(MIS_NEED_DESP, "»Ё·С1888888їйІЕДЬіЙ№¦ЦЖЧчМрµгЎ°јУДЙКўСзЎ±ЈЎ")
	MisHelpTalk("<t>ДкЗбИЛЈ¬З®І»№»ѕНІ»ТЄАґєэЕЄОТБЛЈ¬ОТЛдИ»ДкјНІ»РЎЈ¬µ«»№Г»АПЈЎ")
	MisResultTalk("<t>АґЈЎХвѕНКЗЙсЖжµДМрµгЎ°јУДЙКўСзЎ±Ј¬ѕЭЛµїЙТФФцјУКіУГХЯµДКфРФµгЕ¶ЈЎіГИИіФЈ¬НтТ»К§Р§БЛїЙ±р№ЦОТЈЎ")
	
	MisResultBagNeed(1)
	MisResultCondition(HasMoney, 1888888)
	MisResultAction(TakeMoney, 1888888)
	MisResultAction(GiveItem, 6610, 1, 4)
	MisResultAction(SetRecord, 1863)
	MisResultAction(ClearMission, 1863)
	MisCancelAction(ClearMission, 1863)	
		
		---------------------------------Докозательство
	DefineMission( 6629, "\196\238\234\238\231\224\242\229\235\252\241\242\226\238", 1920 )
	
	MisBeginTalk( "<t>Если ты соберёшь сокровища и не пожалеешь денег мне, то я дам тебе настоящую драгоценность!" )
	MisBeginCondition(NoMission, 1920)
	MisBeginCondition(NoRecord, 1920)
	MisBeginAction(AddMission, 1920)

	MisBeginAction(AddTrigger, 19201, TE_GETITEM, 1638, 20 )--Идеальный рубин
	MisBeginAction(AddTrigger, 19202, TE_GETITEM, 1641, 20 )--Идеальный сапфир
	MisBeginAction(AddTrigger, 19203, TE_GETITEM, 3363, 20 )--Розовая жемчужина
	MisBeginAction(AddTrigger, 19204, TE_GETITEM, 1644, 20 )--Идеальный изумруд
	MisBeginAction(AddTrigger, 19205, TE_GETITEM, 3362, 20 )--Черная жемчужина
	MisBeginAction(AddTrigger, 19206, TE_GETITEM, 3360, 1 )---Алмаз
	MisCancelAction(ClearMission, 1920)


	MisNeed(MIS_NEED_ITEM, 1638, 20, 0, 20)
	MisNeed(MIS_NEED_ITEM, 1641, 20, 20, 20)
	MisNeed(MIS_NEED_ITEM, 3363, 20, 40, 20)
	MisNeed(MIS_NEED_ITEM, 1644, 20, 60, 20)
	MisNeed(MIS_NEED_ITEM, 3362, 20, 80, 20)
	MisNeed(MIS_NEED_ITEM, 3360, 1, 100, 1)
		
	MisHelpTalk( "<t>Не скупись!" )
	MisResultTalk( "<t>Надеюсь ты доволен?!" )
	MisResultCondition(NoRecord, 1920)
	MisResultCondition(HasMission, 1920)
	MisResultCondition(HasItem, 3360, 1)
	MisResultCondition(HasItem, 1638, 20)
	MisResultCondition(HasItem, 1641, 20)
	MisResultCondition(HasItem, 3363, 20)
	MisResultCondition(HasItem, 1644, 20)
	MisResultCondition(HasItem, 3362, 20)
	MisResultCondition(HasMoney, 30000000)
	MisResultAction(TakeItem, 3360, 1)
	MisResultAction(TakeItem, 1638, 20)
	MisResultAction(TakeItem, 1641, 20)
	MisResultAction(TakeItem, 3363, 20)
	MisResultAction(TakeItem, 1644, 20)
	MisResultAction(TakeItem, 3362, 20)
	MisResultAction(TakeMoney, 30000000)
	MisResultAction(GiveItem, 2835, 1,95)
	MisResultAction(GiveItem, 2842, 1,95)
	MisResultAction(ClearMission, 1920)
	MisResultAction(SetRecord, 1920)
	--MisResultAction(AddExp, 800, 800)
--	MisResultAction(AddMoney,270,270)



	InitTrigger()
	TriggerCondition( 1, IsItem, 1638 )	
	TriggerAction( 1, AddNextFlag, 1920, 20, 20 )
	RegCurTrigger( 19201 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1641 )	
	TriggerAction( 1, AddNextFlag, 1920, 40, 20 )
	RegCurTrigger( 19202 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3363 )	
	TriggerAction( 1, AddNextFlag, 1920, 60, 20 )
	RegCurTrigger( 19203 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1644 )	
	TriggerAction( 1, AddNextFlag, 1920, 80, 20 )
	RegCurTrigger( 19204 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3362 )	
	TriggerAction( 1, AddNextFlag, 1920, 100, 20 )
	RegCurTrigger( 19205 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3360 )	
	TriggerAction( 1, AddNextFlag, 1920, 110, 1 )
	RegCurTrigger( 19206 )



------------------------------------------------------------------------------------------
---------------------------------Реберн 1-------------------------------------------------
------------------------------------------------------------------------------------------

------------------Знакомство  со странником
	DefineMission( 2000, "\199\237\224\234\238\236\241\242\226\238  \241\238 \241\242\240\224\237\237\232\234\238\236", 2000 )
	
	MisBeginTalk( "Привет! Я <bСтиф>! Я прибыл сюда с дальних стран, моя жизнь была как у всех нормальных людей, до тех пор пока мне не приснился странный сон, я сразу понял, что он вещий! Ко мне явилась женщина, она  была очень великой! Из спины её вырастали тройные крылья, с одной стороны она была похожа на ангела, с другой на само исчадие ада...<n><t>Принеси мне выпить дружище! Я не могу говорить, у меня пересушило всё горло..." )
	MisBeginCondition(LvCheck, ">", 74 )
	MisBeginCondition(NoMission, 2000)
	MisBeginCondition(NoRecord, 2000)
	MisBeginAction(AddMission, 2000)
	MisBeginAction(AddTrigger, 20001, TE_GETITEM, 1649, 1 )--чистая вода
	MisCancelAction(ClearMission, 2000)

	MisNeed(MIS_NEED_DESP, " Принести <bСтифу> в точку(2240,2680) <yчистой воды>.")
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1)
		
	MisHelpTalk( " Я думаю чистая вода мне поможет избавиться от жажды!" )
	MisResultTalk( " Это действительно чистая вода! Так на чём я остановился?" )
	MisResultCondition(NoRecord, 2000)
	MisResultCondition(HasMission, 2000)
	MisResultCondition(HasItem, 1649, 1)
	MisResultAction(TakeItem, 1649, 1)
	MisResultAction(ClearMission, 2000)
	MisResultAction(SetRecord, 2000)
	MisResultAction(AddExp, 1000, 5000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649 )	
	TriggerAction( 1, AddNextFlag, 2000, 10, 1 )
	RegCurTrigger( 20001 )

----------------------------Начало длинного пути
	DefineMission( 2001, "\205\224\247\224\235\238 \228\235\232\237\237\238\227\238 \239\243\242\232", 2001 )
	
	MisBeginTalk( "<t>Богиня, явившаяся ко мне, поручила найти избранного героя.<n><t>Если ты и есть тот, кого я ищу, то ты с лёгкостью сможешь мне это доказать." )
	MisBeginCondition(NoMission, 2001)
	MisBeginCondition(NoRecord, 2001)
	MisBeginCondition(HasRecord, 2000)
	MisBeginAction(AddMission, 2001)
	MisBeginAction(AddTrigger, 20011, TE_GETITEM, 6975, 1 )---Доказательство избранного
	MisBeginAction(AddTrigger, 20012, TE_GETITEM, 4800, 20 )--Эмблема бородачей
	MisCancelAction(ClearMission, 2001)

	MisNeed(MIS_NEED_DESP, " Принести <bСтифу> из Аргента в точку(2240,2680) <yДоказательство героя> и <y20 Эмблем Борадочей>.<n><t>За доказательством идите на <pо.Отвеженных>." )
	MisNeed(MIS_NEED_ITEM, 6975, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4800, 20, 20, 20)
		
	MisHelpTalk( " Я хочу удостовериться в том, что Вы и есть тот кого я ищу!" )
	MisResultTalk( " Хорошо! Вы доказали мне, Вы тот кого я искал!<n><t>Богиня мне поручила только найти Вас, я это сделал! Теперь, если Вы хотите узнать зачем Вас искала богиня, отправляйтесь к <bЖрице Аде> в Шайтан!" )
	MisResultCondition(NoRecord, 2001)
	MisResultCondition(HasMission, 2001)
	MisResultCondition(HasItem, 6975, 1)
	MisResultCondition(HasItem, 4800, 20)
	MisResultAction(TakeItem, 6975, 1)
	MisResultAction(TakeItem, 4800, 20)
	MisResultAction(ClearMission, 2001)
	MisResultAction(SetRecord, 2001)
	MisResultAction(AddExp, 10000, 10000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 6975 )	
	TriggerAction( 1, AddNextFlag, 2001, 10, 1 )
	RegCurTrigger( 20011 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4800 )	
	TriggerAction( 1, AddNextFlag, 2001, 20, 20 )
	RegCurTrigger( 20012 )

-----------------------------------Доказательство героя
	DefineMission( 2002, "\196\238\234\224\231\224\242\229\235\252\241\242\226\238 \227\229\240\238\255", 2002 )
	
	MisBeginTalk( "<t>Тебе нужно <yДоказательство Героя>? А ты себя считаешь им? К сожалению мне мало твоего мнения! Ты должен мне это доказать, принеси необходимые вещи!" )
	MisBeginCondition(NoMission, 2002)
	MisBeginCondition(NoRecord, 2002)
	MisBeginCondition(HasRecord, 2000)
	MisBeginCondition(HasMission, 2001)
	MisBeginAction(AddMission, 2002)
	MisBeginAction(AddTrigger, 20021, TE_GETITEM, 164, 1 )---Ночной глаз (Злой вождь племени)
	MisBeginAction(AddTrigger, 20022, TE_GETITEM, 166, 1 )---Хороший пояс ящера (Командир воинов-ящеров)
	MisBeginAction(AddTrigger, 20023, TE_GETITEM, 3067, 1 )---Замороженная чешуя дракона (Ледяной дракон)
	MisBeginAction(AddTrigger, 20024, TE_GETITEM, 1265, 20 )--Карта древней русалки (Древняя русалка-защитница)
	MisCancelAction(ClearMission, 2002)

	MisNeed(MIS_NEED_ITEM, 164, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 166, 1, 15, 1)
	MisNeed(MIS_NEED_ITEM, 3067, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 1265, 20, 30, 20)

	MisPrize(MIS_PRIZE_ITEM, 6975, 1, 4)
	MisPrizeSelAll()
		
	MisHelpTalk( " Принесите мне всё необходимое, что бы я удостоверился в Вас!" )
	MisResultTalk( " Хорошо! Вы мне доказали, вот Ваше Доказательство героя!" )
	MisResultCondition(NoRecord, 2002)
	MisResultCondition(HasMission, 2002)
	MisResultCondition(HasItem, 164, 1)
	MisResultCondition(HasItem, 166, 1)
	MisResultCondition(HasItem, 3067, 1)
	MisResultCondition(HasItem, 1265, 20)
	MisResultAction(TakeItem, 164, 1)
	MisResultAction(TakeItem, 166, 1)
	MisResultAction(TakeItem, 3067, 1)
	MisResultAction(TakeItem, 1265, 20)
	MisResultAction(ClearMission, 2002)
	MisResultAction(SetRecord, 2002)
	MisResultAction(AddExp, 20000, 20000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 164 )	
	TriggerAction( 1, AddNextFlag, 2002, 10, 1 )
	RegCurTrigger( 20021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 166 )	
	TriggerAction( 1, AddNextFlag, 2002, 15, 1 )
	RegCurTrigger( 20022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3067 )	
	TriggerAction( 1, AddNextFlag, 2002, 20, 1 )
	RegCurTrigger( 20023 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1265 )	
	TriggerAction( 1, AddNextFlag, 2002, 20, 20 )
	RegCurTrigger( 20024 )

-----------------------------------Посвещённая Жрица в тайны Богов
	DefineMission( 2003, "\207\238\241\226\229\249\184\237\237\224\255 \198\240\232\246\224 \226 \242\224\233\237\251 \193\238\227\238\226", 2003 )
	
	MisBeginTalk( "<t>Докажите что Ваше сердце чистое и Вы дружите с младшими, попросите их для Вас принести по 10 костей с Затерянного города." )
	MisBeginCondition(NoMission, 2003)
	MisBeginCondition(NoRecord, 2003)
	MisBeginCondition(HasRecord, 2001)
	MisBeginAction(AddMission, 2003)
	MisBeginAction(AddTrigger, 20031, TE_GETITEM, 3434, 10 )--
	MisBeginAction(AddTrigger, 20032, TE_GETITEM, 3435, 10 )--
	MisBeginAction(AddTrigger, 20033, TE_GETITEM, 3436, 10 )--
	MisBeginAction(AddTrigger, 20034, TE_GETITEM, 3437, 10 )--
	MisCancelAction(ClearMission, 2003)

	MisNeed(MIS_NEED_DESP, " Принести кости из монстров <gЗатерянного города> <bСвятой Жрице Аде> в <pШайтан>." )
	MisNeed(MIS_NEED_ITEM, 3434, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3435, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3436, 10, 30, 10)
	MisNeed(MIS_NEED_ITEM, 3437, 10, 40, 10)
		
	MisHelpTalk(" Хм.. Наверно Вам будет не просто выполнить моё поручение, но Вы посторайтесь! Если Вы хорошо попросите, они Вам принесут эти кости!" )
	MisResultTalk( " Да! Вы принесли мне именно то, что я просила! Хм... Вам удалось уговорить маленьких пиратов помочь Вам!" )
	MisResultCondition(NoRecord, 2003)
	MisResultCondition(HasMission, 2003)
	MisResultCondition(HasItem, 3434, 10)
	MisResultCondition(HasItem, 3435, 10)
	MisResultCondition(HasItem, 3436, 10)
	MisResultCondition(HasItem, 3437, 10)
	MisResultAction(TakeItem, 3434, 10)
	MisResultAction(TakeItem, 3435, 10)
	MisResultAction(TakeItem, 3436, 10)
	MisResultAction(TakeItem, 3437, 10)
	MisResultAction(ClearMission, 2003)
	MisResultAction(SetRecord, 2003)
	MisResultAction(AddExp, 80000, 80000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434 )	
	TriggerAction( 1, AddNextFlag, 2003, 10, 10 )
	RegCurTrigger( 20031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3435 )	
	TriggerAction( 1, AddNextFlag, 2003, 20, 10 )
	RegCurTrigger( 20032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436 )	
	TriggerAction( 1, AddNextFlag, 2003, 30, 10 )
	RegCurTrigger( 20033 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3437 )	
	TriggerAction( 1, AddNextFlag, 2003, 40, 10 )
	RegCurTrigger( 20034 )


-- Правда о Богине
	DefineMission( 2004, "\207\240\224\226\228\224 \238 \193\238\227\232\237\229", 2004 )
	
	MisBeginTalk( "<t>Так, как Вы мне доказали, что Вы хороший, честный и дружелюбный пират, я расскажу всё, что я знаю о Богине! Она святая женщина! Она великий создатель этого мира! И ей нужен помощник, что бы помогал ей!" )

	MisBeginCondition(HasRecord, 2003)
	MisBeginCondition(NoRecord, 2004)
	MisBeginCondition(NoMission, 2004)

	MisBeginAction(AddMission, 2004)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisHelpTalk( "<t>Вам необходимо встретиться с Богиней Карой на небе!" )
	MisNeed(MIS_NEED_DESP, " Поговорите с Богиней Карой на небе!" )
	
	MisResultCondition(AlwaysFailure)

--Правда о Богине
	DefineMission( 2005, "\207\240\224\226\228\224 \238 \193\238\227\232\237\229", 2004, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы ко мне? Я Богиня Кара! Преклонись перед до мной!" )
	MisResultCondition(HasMission, 2004)
	MisBeginCondition(NoRecord, 2004)
	
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 2004)
	MisResultAction(SetRecord, 2004)


-- Самая простоя задача
	DefineMission( 2006, "\209\224\236\224\255 \239\240\238\241\242\238\255 \231\224\228\224\247\224", 2005 )

	MisBeginTalk( "<t>Я приветствую тебя! Мне действительно нужен помошник и я надеюсь, что ты и есть тот кто мне нужен! Я хочу попросить тебя об одолжении, это и будет твоим первым испытанием.<n><t>Принеси мне <yТлеющий отпечаток>." )

	MisBeginCondition(HasRecord, 2004)
	MisBeginCondition(NoMission, 2005)
	MisBeginCondition(NoRecord, 2005)

	MisBeginAction(AddMission, 2005)
	MisBeginAction(AddTrigger, 20051, TE_GETITEM, 4212, 1)--Тлеющий отпечаток
	
	MisNeed(MIS_NEED_ITEM, 4212, 1, 10, 1)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisHelpTalk( "<t>Вы уже сделали то о чём я Вас попросила?" )

	MisResultTalk( "<t>Да! это тот самый меч! Он нам пригадится в будующем!" )

	MisResultCondition(HasMission, 2005)
	MisResultCondition(HasItem, 4212, 1)
	MisResultCondition(NoRecord,2005)

	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)
	MisResultAction(ClearMission, 2005)
	MisResultAction(TakeItem, 4212,1)
	MisResultAction(SetRecord, 2005)

	InitTrigger()
	TriggerCondition(1,IsItem, 4212)
	TriggerAction(1, AddNextFlag, 2005, 10, 1)
	RegCurTrigger(20051)


-- С небес на землю
	DefineMission( 2007, "\206\230\229\240\229\235\252\229 \235\254\225\226\232", 2006 )
	
	MisBeginTalk( "<t>Вот новое поручение!<n><t>В Аскароне в Обители Радости есть <bДоктор Грегг>, я услышала молитвы этой бедной девочки, она молилась, что бы я помогла им со страшной болезнью!<n><t>Отнеси ей это лекарство в <pОбитель Радости>!" )

	MisBeginCondition(HasRecord, 2005)
	MisBeginCondition(NoRecord, 2006)
	MisBeginCondition(NoMission, 2006)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 2006)
	MisBeginAction(GiveItem, 6976,1,4)

	MisHelpTalk( "<t>Поторопитесь! Я прошу... Эти мольбы о помощи... Торопитесь!" )
	MisNeed(MIS_NEED_DESP, " Отнести в обитель Радости <yАнтибиотик Богини>." )--6976

	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!" )

	MisResultCondition(AlwaysFailure)

-- С небес на землю
	DefineMission( 2008, "\206\230\229\240\229\235\252\229 \235\254\225\226\232", 2006, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Великая Богиня Кара услышала мои молитвы! Спасибо тебе Ангел!" )
	MisResultCondition(HasMission, 2006)
	MisResultCondition(NoRecord,2006)
	MisResultCondition(HasItem, 6976, 1)

	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)

	MisResultAction(TakeItem, 6976, 1)
	MisResultAction(ClearMission, 2006)
	MisResultAction(SetRecord, 2006)
	MisResultAction(GiveItem, 6919,5,4)

-- Я буду молиться за Вас
	DefineMission( 2009, "\223 \225\243\228\243 \236\238\235\232\242\252\241\255 \231\224 \194\224\241", 2007 )
	
	MisBeginTalk( "<t>Я знаю из-за чего на нашу Обитель Радости обрушилась эта болезнь!<n><t>Всему виной <rГрязилище из Бездны - Кару>! Для того, что бы приготовить противоядие от его болезней мне необходимо <yЗемляное ядро>. К сожалению все воины нашей деревни заражены и не могут сделать этого. Только Вы способны помочь нам! Помогите! Умоляю!" )

	MisBeginCondition(HasRecord, 2006)
	MisBeginCondition(NoRecord, 2007)
	MisBeginCondition(NoMission, 2007)

	MisBeginAction(AddMission, 2007)
	MisBeginAction(AddTrigger, 20071, TE_GETITEM, 3454, 1)--Земляное ядро

	MisNeed(MIS_NEED_ITEM, 3454, 1, 10, 1)

	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")
	MisHelpTalk( "<t>...Только с <yЗемляным ядром> я смогу изготовить <pпротивоядие>! Я молюсь за Вас! Вы наша последняя надежда!" )

	MisResultTalk( "<t>Я думаю это поможет мне сделать противоядие!" )

	MisResultCondition(HasMission, 2007)
	MisResultCondition(HasItem, 3454, 1)
	MisResultCondition(NoRecord, 2007)

	MisResultAction(TakeItem, 3454, 1)
	MisResultAction(AddExp, 200000, 200000)
	MisResultAction(AddMoney, 100000, 100000)

	MisResultAction(ClearMission, 2007)
	MisResultAction(SetRecord, 2007)

	InitTrigger()
	TriggerCondition(1, IsItem, 3454)
	TriggerAction(1, AddNextFlag, 2007, 10, 1)
	RegCurTrigger(20071)

-- Противоядие
	DefineMission( 2073, "\207\240\238\242\232\226\238\255\228\232\229", 2008 )
	
	MisBeginTalk( "<t>Я ещё только учусь мастерству изготовления противоядий!<n><t>Спросите у моего учителя <bДоктора Дитто> в <pАргенте>, правильно ли я его сделала?" )
	
	MisBeginBagNeed(1)
	MisBeginCondition(HasRecord, 2007)
	MisBeginCondition(NoRecord, 2008)
	MisBeginCondition(NoMission, 2008)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 2008)
	MisBeginAction(GiveItem, 6977, 1,4)

	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisHelpTalk( "<t>Дитто лучше меня разбирается в противоядиях!" )
	MisNeed(MIS_NEED_DESP, " Отнести противоядие <bДоктору Дитто> в <pАргент>." )

	MisResultCondition(AlwaysFailure)


-- Противоядие
	DefineMission( 2074, "\207\240\238\242\232\226\238\255\228\232\229", 2008, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk( "<t>Позвольте мне взглянуть... Да...<n><t><bГрегги> ещё учиться и учиться... Тут не хватает много компонентов! Если выпить это <yпротивоядие>, то больному станет на много хуже и его болезнь станет ещё сильнее!" )
	MisResultCondition(HasMission, 2008)
	MisResultCondition(NoRecord, 2008)
	MisResultCondition(HasItem, 6977, 1)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(TakeItem, 6977, 1)
	MisResultAction(ClearMission, 2008)
	MisResultAction(SetRecord, 2008)


-- Забытый рецепт
	DefineMission( 2075, "\199\224\225\251\242\251\233 \240\229\246\229\239\242", 2009 )
	
	MisBeginTalk( "<t>К сожалению я уже не помню рецепт противоядия! Я делал его очень много лет назад, мне тогда помогал <bСтарик Блюрри>.<n><t>Поговорите с ним, возможно он вспомнит рецепт." )

	MisBeginCondition(HasRecord, 2008)
	MisBeginCondition(NoRecord, 2009)
	MisBeginCondition(NoMission, 2009)

	MisBeginAction(AddMission, 2009)
	
	MisHelpTalk( "<t>Поговорите с <bБлюрри>, у него хорошая память!" )
	MisNeed(MIS_NEED_DESP, " Поговорить с <bСтариком Блюрри> в <pАргенте>." )
	
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisResultCondition(AlwaysFailure)

-- Забытый рецепт
	DefineMission( 2076, "\199\224\225\251\242\251\233 \240\229\246\229\239\242", 2009, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Хм... Дитто? Рецепт? Противоядие? Возможно! Дайте мне подумать." )

	MisResultCondition(HasMission, 2009)
	MisResultCondition(NoRecord, 2009)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 2009)
	MisResultAction(SetRecord, 2009)

--Опять эта память подводит
	DefineMission( 2077, "\206\239\255\242\252 \253\242\224 \239\224\236\255\242\252 \239\238\228\226\238\228\232\242", 2010 )
	
	MisBeginTalk( "<t>Ах уж эта память! Я опять всё забыл! Вы сможете мне помочь вспомнить, если принесёте <yЭликсир памяти>!<n><t><rМудрый лис>  на <pо.Весны> обладает свойством выробатывать этот эликсир." )

	MisBeginCondition(HasRecord, 2009)
	MisBeginCondition(NoRecord, 2010)
	MisBeginCondition(NoMission, 2010)
	
	MisBeginAction(AddMission, 2010)
	MisBeginAction(AddTrigger, 20101, TE_GETITEM, 6978, 1)--Эликсир памяти
	MisNeed(MIS_NEED_ITEM, 6978, 1, 10, 1)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisHelpTalk( "<t>Помогите мне вспомнить!" )

	MisResultTalk( "<t>Слава богу! Я всё вспомнил!" )

	MisResultCondition(HasMission, 2010)
	MisResultCondition(NoRecord, 2010)
	MisResultCondition(HasItem, 6978, 1)
	
	MisResultAction(TakeItem, 6978, 1)
	MisResultAction(AddExp, 30000, 30000)
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 2010)
	MisResultAction(SetRecord, 2010)
	
	InitTrigger()
	TriggerCondition(1, IsItem, 6978)
	TriggerAction(1, AddNextFlag, 2010, 10, 1)
	RegCurTrigger(20101)

--Ура! Память вернулась
	DefineMission( 2078, "\211\240\224! \207\224\236\255\242\252 \226\229\240\237\243\235\224\241\252", 2011 )
	
	MisBeginTalk( "<t>Я вспомнил рецепт и записал его!<n><t>Можете отнести его <bДитто>." )

	MisBeginCondition(HasRecord, 2010)
	MisBeginCondition(NoRecord, 2011)
	MisBeginCondition(NoMission, 2011)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 2011)
	MisBeginAction(GiveItem, 6979, 1,4)--Рецепт противоядия
	MisHelpTalk("<t>Дитто ждёт Вас!" )
	MisNeed(MIS_NEED_DESP, "<t> Отнести <yРецепт противоядия> <bДитто>." )

	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisResultCondition(AlwaysFailure)

-- Ура! Память вернулась
	DefineMission( 2079, "\211\240\224! \207\224\236\255\242\252 \226\229\240\237\243\235\224\241\252", 2011, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)
	
	MisResultTalk("<t>Отлично! Дайте мне посмотреть на него! И как я мог забыть его?!" )
	MisResultCondition(HasMission, 2011)
	MisResultCondition(NoRecord, 2011)
	MisResultCondition(HasItem, 6979, 1)

	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(TakeItem, 6979, 1)
	MisResultAction(ClearMission, 2011)
	MisResultAction(SetRecord, 2011)

-- Приготовление противоядия
	DefineMission( 2080 ,"\207\240\232\227\238\242\238\226\235\229\237\232\229 \239\240\238\242\232\226\238\255\228\232\255", 2012 )

	MisBeginTalk( "<t>Очень хорошо! Отправляйтесь к <bГрегг> и скажите ей, что ей не хватает <yПота Снежного люда>!" )

	MisBeginCondition(HasRecord, 2011)
	MisBeginCondition(NoRecord, 2012)
	MisBeginCondition(NoMission, 2012)
	
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")
	MisBeginAction(AddMission, 2012)
	MisHelpTalk( "<t>Поговорить с Грегг в робители радости..." )
	MisNeed(MIS_NEED_DESP, " Поговорить с Грегг в робители радости." )

	MisResultCondition(AlwaysFailure)


-- Приготовление противоядия
	DefineMission( 2081, "\207\240\232\227\238\242\238\226\235\229\237\232\229 \239\240\238\242\232\226\238\255\228\232\255", 2012, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы уверены? Дитто так и сказал? Вы мне поможете???" )

	MisResultCondition(HasMission, 2012)
	MisResultCondition(NoRecord, 2012)
	
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 2012)
	MisResultAction(SetRecord, 2012)

-- Пот снежного люда
	DefineMission( 2082, "\207\238\242 \241\237\229\230\237\238\227\238 \235\254\228\224", 2013 )

	MisBeginTalk("<t>Отправляйтесь в Абаддон к снежному люду и убейте его.<n><t>Не забудь те взять у него <yПот снежного люда>.<n><t>Удачи Вам!" )
	
	MisBeginCondition(HasRecord, 2012)
	MisBeginCondition(NoRecord, 2013)
	MisBeginCondition(NoMission, 2013)
	
	MisBeginAction(AddMission, 2013)
	MisBeginAction(AddTrigger, 20131,TE_GETITEM, 6980, 1)--Пот снежного люда
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisNeed(MIS_NEED_ITEM, 6980, 1, 10, 1)

	MisHelpTalk("<t>Вы уже принесли мне Пот снежного люда?" )

	MisResultTalk( "<t>Отлично! Спасибо Вам большое! Теперь я смогу приготовить противоядие!<n><t>Скажите <bБогине Каре> от меня большое спасибо, за то, что она послала ко мне Вас!" )

	MisResultCondition(HasMission, 2013)
	MisResultCondition(NoRecord, 2013)
	MisResultCondition(HasItem, 6980, 1)
	
	MisResultAction(TakeItem, 6980, 1)
	MisResultAction(AddExp, 500000, 500000)
	MisResultAction(AddMoney, 800000, 800000)
	MisResultAction(ClearMission, 2013)
	MisResultAction(SetRecord, 2013)
	MisResultAction(SetRecord, 2013)
	MisResultAction(GiveItem, 938,1,4)

	InitTrigger()
	TriggerCondition(1, IsItem, 6980)
	TriggerAction(1, AddNextFlag, 2013, 10, 1)
	RegCurTrigger(20131)

--Опять проклятые монстры

	DefineMission( 2083, "\206\239\255\242\252 \239\240\238\234\235\255\242\251\229 \236\238\237\241\242\240\251", 2014 )
	
	MisBeginTalk( "<t>Вы уже вернулись?<n><t>Я опять слышу мольбы о помощи.<n><t>На этот раз бедного мальчика из Шайтана обижают злые обитатели Абаддона! Поговорите с <bТуристом - Юа> и помогите ему." )

	MisBeginCondition(HasRecord, 2013)
	MisBeginCondition(NoRecord, 2014)
	MisBeginCondition(NoMission, 2014)

	MisBeginAction(AddMission, 2014)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisHelpTalk( "<t>Идите же, мальчик нуждается в помощи!" )
	MisNeed(MIS_NEED_DESP, " Поговорить с <bТуристом - Юа> в <pШайтане> в точке(798,3555)." )

	MisResultCondition(AlwaysFailure)

--Опять проклятые монстры
	DefineMission( 2084, "\206\239\255\242\252 \239\240\238\234\235\255\242\251\229 \236\238\237\241\242\240\251", 2014, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Вы пришил от Богини Кары, что бы мне помочь?" )
	MisResultCondition(HasMission, 2014)
	MisResultCondition(NoRecord, 2014)

	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 2014)
	MisResultAction(SetRecord, 2014)

--Страх ребёнка
	DefineMission( 2085, "\209\242\240\224\245 \240\229\225\184\237\234\224", 2015 )
	
	MisBeginTalk( "<t>Я собирал картинки, я люблю их собирать, но вдруг прошёл большой и злой пират... Он забрал у меня одну картинку и злобно рассмеялся! Я хочу вернуть свою карту!<n><t>Помогите мне забрать свою карту и проучите этого злого Дяденьку.")
	MisBeginCondition(HasRecord, 2014)
	MisBeginCondition(NoRecord, 2015)
	MisBeginCondition(NoMission,2015)
	
	MisBeginAction(AddMission, 2015)
	MisBeginAction(AddTrigger, 20151, TE_KILL, 805, 1)--------Барбороса
	MisBeginAction(AddTrigger, 20152, TE_GETITEM, 6981, 1)----Карта Барбороса

	MisNeed(MIS_NEED_KILL, 805, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 6981, 1,20, 1)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisHelpTalk( "<t>Я верю, что Вы накажете обидчика!" )

	MisResultTalk( "<t>Спасибо Вам! Так ему и надо! Не будет обижать больше детей!<n><t>Отправляйтесь к <bБогине Каре> и скажите, что меня больше ни чего не тревожит." )

	MisResultCondition(HasMission, 2015)
	MisResultCondition(HasFlag, 2015, 10)
	MisResultCondition(HasItem, 6981,1)
	MisResultCondition(NoRecord, 2015)

	MisResultAction(TakeItem, 6981, 1)
	MisResultAction(ClearMission, 2015)
	MisResultAction(SetRecord, 2015)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 800000,800000)

	InitTrigger()
	TriggerCondition(1,IsMonster, 805)
	TriggerAction(1,AddNextFlag, 2015, 10, 1)
	RegCurTrigger(20151)

	InitTrigger()
	TriggerCondition(1, IsItem, 6981)
	TriggerAction(1, AddNextFlag , 2015, 20, 1)
	RegCurTrigger(20152)


--Боги Вам улыбаются
	DefineMission( 2086, "\193\238\227\232 \194\224\236 \243\235\251\225\224\254\242\241\255", 2016 )
	
	MisBeginTalk("<t>Пришло время тебе узнать о перерождении! Когда ты переродишься ты станешь на много сильнее и будешь одним из моих ангелов!<n><t>Что бы пройти перерождение тебе необходимо собрать осколки от <yруны перерождения>. <yРуну перерождения> разорвало на 8 осколков и раскидало по вему миру. Я помогу тебе их найти если ты получешь подпись от <bСвятой девы> в <gАскароне> в <pСвященном лабиринте>." )

	MisBeginCondition(HasRecord, 2015)
	MisBeginCondition(NoRecord, 2016)
	MisBeginCondition(NoMission, 2016)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisBeginAction(AddMission, 2016)
	MisBeginAction(GiveItem, 6983, 1,4)
	MisHelpTalk( "<t>Получи подпись у Святой девы!" )
	MisNeed(MIS_NEED_DESP, " Получить подпись от <bСвятой девы>.")
	
	MisResultCondition(AlwaysFailure)

-- Боги Вам улыбаются
	DefineMission( 2087, "\193\238\227\232 \194\224\236 \243\235\251\225\224\254\242\241\255", 2016, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk( "<t>Ты ко мне? Ты хочешь что бы я тебе подписала Разрешение на перерождение?")
	MisResultCondition(HasMission, 2016)
	MisResultCondition(NoRecord, 2016)
	MisResultCondition(HasItem, 6983, 1)
	
	MisResultAction(TakeItem, 6983, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 2016)
	MisResultAction(SetRecord, 2016)

-- Опять повезло
	DefineMission( 2088, "\206\239\255\242\252 \239\238\226\229\231\235\238", 2017 )
	
	MisBeginTalk( "<t>Хорошо! Я не буду тебя мучать! Давай подпешу." )

	MisBeginCondition(HasRecord, 2016)
	MisBeginCondition(NoRecord, 2017)
	MisBeginCondition(NoMission, 2017)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisBeginAction(AddMission, 2017)
	MisBeginAction(GiveItem, 6982, 1,4)
	MisBeginAction(GiveItem, 938, 1,4)
	MisHelpTalk("<t>Ты ещё чего то хочешь? беги на небо к Богине!" )
	MisNeed(MIS_NEED_DESP, " Отправляйтесь к Богине Каре." )
	
	MisResultCondition(AlwaysFailure)

-- Опять повезло
	DefineMission( 2089, "\206\239\255\242\252 \239\238\226\229\231\235\238", 2017, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Я вижу, что тебе подписали разрешение...<n><t>Как тебе это удалось?" )
	MisResultCondition(HasMission, 2017)
	MisResultCondition(NoRecord, 2017)
	MisResultCondition(HasItem, 6982, 1)
	
	MisResultAction(TakeItem, 6982, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 2017)
	MisResultAction(SetRecord, 2017)

-- Перерождение
	DefineMission( 2090, "\207\229\240\229\240\238\230\228\229\237\232\229", 2018 )
	
	MisBeginTalk( "<t>Теперь твоя задача в том, что бы собрать все осколки руны.<n><t>Что бы тебе было понятнее, где их искать, поговори с <bМудрейшим камнем> в первом абаддоне." )

	MisBeginCondition(HasRecord, 2017)
	MisBeginCondition(NoRecord, 2018)
	MisBeginCondition(NoMission, 2018)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, " Вы не можете отказаться от этого задания!")

	MisBeginAction(AddMission, 2018)
--	MisBeginAction(GiveItem, 2435, 1,4)
	MisHelpTalk( "<t>Отправляйтесь в Абаддон 1 и поговорите с мудрейшим камнем." )
	MisNeed(MIS_NEED_DESP, " Поговорить с мудрейшим камнем в Абб1" )
	
	MisResultCondition(AlwaysFailure)

-- Перерождение
	DefineMission( 2091, "\207\229\240\229\240\238\230\228\229\237\232\229", 2018, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы по поводу перерождения? Вам нужны камни? Хорошо я помогу Вам.<n><t>Идите на небо к Каре и скажите ей, что Вам известно, где спрятаны руны." )
	MisResultCondition(HasMission, 2018)
	MisResultCondition(NoRecord, 2018)
--	MisResultCondition(HasItem, 2435, 1)
	
--	MisResultAction(TakeItem, 2435, 1)
	MisResultAction(AddMoney,300000, 300000)
	MisResultAction(ClearMission, 2018)
	MisResultAction(SetRecord, 2018)


----------------------------За рунами!-------------------------------------------	
	
	DefineMission( 2092, "\199\224 \240\243\237\224\236\232!", 2019 )--реберн стандарт
	MisBeginTalk( "<t>Я смотрю тебе удалось узнать, что необходимо тебе для перерождения!<n><t>Как только ты соберёшь все осколки я обьеденю их в одну руну перерождения, и ты сможешь стать Ангелом." )
	MisBeginCondition(HasRecord, 2018)
	MisBeginCondition(NoMission, 2019)
	MisBeginCondition(NoRecord,2019)
	MisBeginAction(GiveItem, 6984, 1,4)
	MisBeginCondition(HasCredit,9999)
	MisBeginAction(AddMission,2019)
	MisBeginAction(AddTrigger, 20191, TE_GETITEM, 2226, 1)
	MisBeginAction(AddTrigger, 20192, TE_GETITEM, 2227, 1)
	MisBeginAction(AddTrigger, 20193, TE_GETITEM, 2228, 1)
	MisBeginAction(AddTrigger, 20194, TE_GETITEM, 2229, 1)
	MisBeginAction(AddTrigger, 20195, TE_GETITEM, 2230, 1)
	MisBeginAction(AddTrigger, 20196, TE_GETITEM, 2231, 1)
	MisBeginAction(AddTrigger, 20197, TE_GETITEM, 2232, 1)
	MisBeginAction(AddTrigger, 20198, TE_GETITEM, 2233, 1)
	
	
	MisCancelAction(ClearMission, 2019)

	MisNeed(MIS_NEED_DESP, " Что бы стать ближе к богине и получить её благословение, Вам необходимо найти все части руны перерождения, куски которой были разбросаны по всему миру пиратии." )
	MisNeed(MIS_NEED_ITEM, 2226, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2227, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2228, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2229, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2230, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2231, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2232, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2233, 1, 80, 1)
	
	

	MisHelpTalk( "<t>Эти руны разбросало по всему миру, Вам нужно будет постораться, если Вы хотите собрать все 8 рун." )
	MisResultTalk( "<t>Вы собрали все части руны перерождения, Вы настоящий Герой." )

	MisResultCondition(HasMission, 2019)
	MisResultCondition(NoRecord,2019)
	MisResultCondition(HasItem, 2226, 1)
	MisResultCondition(HasItem, 2227, 1)
	MisResultCondition(HasItem, 2228, 1)
	MisResultCondition(HasItem, 2229, 1)
	MisResultCondition(HasItem, 2230, 1)
	MisResultCondition(HasItem, 2231, 1)
	MisResultCondition(HasItem, 2232, 1)
	MisResultCondition(HasItem, 2233, 1)
	
	
	MisResultAction(TakeItem, 2226, 1 )
	MisResultAction(TakeItem, 2227, 1 )
	MisResultAction(TakeItem, 2228, 1 )
	MisResultAction(TakeItem, 2229, 1 )
	MisResultAction(TakeItem, 2230, 1 )
	MisResultAction(TakeItem, 2231, 1 )
	MisResultAction(TakeItem, 2232, 1 )
	MisResultAction(TakeItem, 2233, 1 )
	
	
	MisResultAction(GiveItem, 2235,1,4)------------Руна перерождения
	MisResultAction(ClearMission, 2019)
	MisResultAction(SetRecord, 2019)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2226)	
	TriggerAction( 1, AddNextFlag, 2019, 10, 1 )
	RegCurTrigger( 20191 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2227)	
	TriggerAction( 1, AddNextFlag, 2019, 20, 1 )
	RegCurTrigger( 20192 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2228)	
	TriggerAction( 1, AddNextFlag, 2019, 30, 1 )
	RegCurTrigger( 20193 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2229)	
	TriggerAction( 1, AddNextFlag, 2019, 40, 1 )
	RegCurTrigger( 20194 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2230)	
	TriggerAction( 1, AddNextFlag, 2019, 50, 1 )
	RegCurTrigger( 20195 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2231)	
	TriggerAction( 1, AddNextFlag, 2019, 60, 1 )
	RegCurTrigger( 20196 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2232)	
	TriggerAction( 1, AddNextFlag, 2019, 70, 1 )
	RegCurTrigger( 20197 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2233)	
	TriggerAction( 1, AddNextFlag, 2019, 80, 1 )
	RegCurTrigger( 20198 )

	
	MisResultCondition(AlwaysFailure)

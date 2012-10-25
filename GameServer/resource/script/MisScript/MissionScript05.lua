--------------------------------------------------------------------------
--									--
--									--
--		MissionScript05.lua 		--
--									--
--			перевод BopoHangel					--
--------------------------------------------------------------------------
print( "‡ Јаг§Є  MissionScript05.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


	
function AreaMission001()

----------------------------Сбор сладкого мёда
	DefineMission( 600, "\209\225\238\240 \241\235\224\228\234\238\227\238 \236\191\228\224", 600 )
	
	MisBeginTalk( "<t>Как говорится в пословице: Расположи к себе лидера и ты получаешь всё остальное.<n><t>Добудьте <y5 Улей диких пчёл>, что бы расположить к себе уважение подвигами, а не разговорами о них!<n><t>(Улья весят на деревьях в Аскароне, рядом с деревьями летают пчёлы, так, что Вы сразу догадаетесь где их искать)." )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 600)
	MisBeginCondition(NoRecord, 600)
	MisBeginAction(AddMission, 600)
	MisBeginAction(AddTrigger, 6001, TE_GETITEM, 4085, 5 )--Улей диких пчел
	MisCancelAction(ClearMission, 600)

	MisNeed(MIS_NEED_ITEM, 4085, 5, 10, 5)
		
	MisHelpTalk( "<t>Добудьте 5 Улей диких пчёл в точке (1544.3134) Аскарона и пренесите их Дуриану!" )
	MisResultTalk( "<t>Хе-хе. Вы боялись, что пчёлы Вас покусают когда Вы будете разорять их улья?" )
	MisResultCondition(NoRecord, 600)
	MisResultCondition(HasMission, 600)
	MisResultCondition(HasItem, 4085, 5)
	MisResultAction(TakeItem, 4085, 5)
	MisResultAction(ClearMission, 600)
	MisResultAction(SetRecord, 600)
	MisResultAction(AddExp, 800, 800)--экспа
	MisResultAction(AddMoney,270,270)--деньги


	InitTrigger()
	TriggerCondition( 1, IsItem, 4085 )	
	TriggerAction( 1, AddNextFlag, 600, 10, 5 )
	RegCurTrigger( 6001 )

----------------------------Искоренение пчёл
	DefineMission( 601, "\200\241\234\238\240\229\237\229\237\232\229 \239\247\191\235", 601 )
	
	MisBeginTalk( "<t>О мой Бог... Эти <rДикие Пчёлы> становятся всё агрессивнее и агрессивнее. Я прошёл рядом с клумбой, где они собирали нектар и они всем роем на меня напали.<n><t>От их укусов моё лицо теперь всё в волдырях.<n><t>Не отомстите за меня им? Убейте <r10 Диких пчёл>. Они могут быть рядом с (1623,139)!" )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(HasRecord, 600)
	MisBeginCondition(NoMission, 601)
	MisBeginCondition(NoRecord, 601)
	MisBeginAction(AddMission, 601)
	MisBeginAction(AddTrigger, 6011, TE_KILL, 139, 10 )--Дикая пчела
	MisCancelAction(ClearMission, 601)

	MisNeed(MIS_NEED_KILL, 139, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы разве уже убили Диких пчёл?" )
	MisResultTalk("<t>Ха-ха-ха! Спасибо тебе добрый человек. Теперь эти Пчёлы будут знать на кого нападать!" )
	MisResultCondition(NoRecord, 601)
	MisResultCondition(HasMission, 601)
	MisResultCondition(HasFlag, 601, 19 )
	MisResultAction(ClearMission, 601)
	MisResultAction(SetRecord, 601)
	MisResultAction(AddExp, 800, 800)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 139 )	
	TriggerAction( 1, AddNextFlag, 601, 10, 10 )
	RegCurTrigger( 6011 )

-----------------------------------Осуществление мечты
	DefineMission( 602, "\206\241\243\249\229\241\242\226\235\229\237\232\229 \236\229\247\242\251", 602 )
	
	MisBeginTalk( "<t>Ах! Я рад Вас видеть! За последние 2 дня я не смог сомкнуть глаз. Это *урканье* Совёнышей выводит меня из себя!<n><t>Я старый человек и мне необходим покой и сон, но <rСовёныши> мне мешают спать.<n><t>Убейте <r10 Совёнышей>. Вы их сможете найти в Аскароне в точке (1384,3065)." )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(HasRecord, 603)
	MisBeginCondition(NoMission, 602)
	MisBeginCondition(NoRecord, 602)
	MisBeginAction(AddMission, 602)
	MisBeginAction(AddTrigger, 6021, TE_KILL, 224, 10 )--Совеныш
	MisCancelAction(ClearMission, 602)

	MisNeed(MIS_NEED_KILL, 224, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы разве уже убили <r10 Совёнышей>?" )
	MisResultTalk("<t>Спасибо! Теперь я буду спать спокойно." )
	MisResultCondition(NoRecord, 602)
	MisResultCondition(HasMission, 602)
	MisResultCondition(HasFlag, 602, 19 )
	MisResultAction(ClearMission, 602)
	MisResultAction(SetRecord, 602)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,285,285)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 224 )	
	TriggerAction( 1, AddNextFlag, 602, 10, 10 )
	RegCurTrigger( 6021 )


-----------------------------------Учёная Сова
	DefineMission( 603, "\211\247\191\237\224\255 \209\238\226\224", 603 )
	
	MisBeginTalk( "<t>Я такое чудо наблюдал на днях, Вы наверно мне не поверите и сочтёте меня сумасшедшим, но я расскажу Вам всё таки то что я видел.<n><t>Я видел как Совы сидели на дереве и читали книгу. Да-да именно книгу и держали книги в своих когтях. Принесите мне эти когти, очень интересно как они в них могли держать книги." )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 603)
	MisBeginCondition(NoRecord, 603)
	MisBeginAction(AddMission, 603)
	MisBeginAction(AddTrigger, 6031, TE_GETITEM, 4432, 5 )--Совиный коготь
	MisCancelAction(ClearMission, 603)

	MisNeed(MIS_NEED_ITEM, 4432, 5, 10, 5)
	
	MisHelpTalk( "<t>Принесите мне 5 когтей!<n><t>Их можно получить убивая <rСовенышей> в Аскароне в точке (632,2533)." )
	MisResultTalk( "<t>Хм... Эти когти ни чем не отличаются от когтей обычных Сов... Наверно я схожу сума?!" )
	MisResultCondition(NoRecord, 603)
	MisResultCondition(HasMission, 603)
	MisResultCondition(HasItem, 4432, 5)
	MisResultAction(TakeItem, 4432, 5 )
	MisResultAction(ClearMission, 603)
	MisResultAction(SetRecord, 603)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,571,571)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4432 )	
	TriggerAction( 1, AddNextFlag, 603, 10, 5 )
	RegCurTrigger( 6031 )

-----------------------------------Хитрая Сова
	DefineMission( 604, "\213\232\242\240\224\255 \209\238\226\224", 604 )
	
	MisBeginTalk( "<t>Не так давно я читал книгу у себя во дворе дома, как вдруг налетели <rсовы> и вырвали у меня <yстраницы>.<n><t>Я не успел дочитать свою книгу, не могли ли бы вы мне принести недостающие страницы?<n><t>(<yПропавшие страницы> можно найти в <bПтичьем гнезде> в Аскароне(1268,3060)." )
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 604)
	MisBeginCondition(NoRecord, 604)
	MisBeginAction(AddMission, 604)
	MisBeginAction(AddTrigger, 6041, TE_GETITEM, 4086, 5 )--Пропавшая страница
	MisCancelAction(ClearMission, 604)

	MisNeed(MIS_NEED_ITEM, 4086, 5, 10, 5)
	
	MisHelpTalk( "<t>Я не переживу если не дочитаю эту книгу!" )
	MisResultTalk("<t>Спасибо вам! Благодаря Вам я дочитаю книгу и узнаю чем же там всё закончится!" )
	MisResultCondition(NoRecord, 604)
	MisResultCondition(HasMission, 604)
	MisResultCondition(HasItem, 4086, 5)
	MisResultAction(TakeItem, 4086, 5 )
	MisResultAction(ClearMission, 604)
	MisResultAction(SetRecord, 604)
	MisResultAction(AddExp, 1100, 1100)
	MisResultAction(AddMoney,300,300)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4086 )	
	TriggerAction( 1, AddNextFlag, 604, 10, 5 )
	RegCurTrigger( 6041 )

-----------------------------------	Искушение Деликатесом
	DefineMission( 605, "\200\241\234\243\248\229\237\232\229 \196\229\235\232\234\224\242\229\241\238\236", 605 )
	
	MisBeginTalk( "<t>Пообещайте мне, что поможете! Сначала пообещайте, потом я расскажу, что я хочу от вас...<n><t>Как только я подумаю о свинине, у меня текут слюнки... Это такое объедение... принесите мне <y5 Коротких кабаних хвостов>, а я Вас угощу самым вкусным деликатесом в мире." )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 605)
	MisBeginCondition(NoRecord, 605)
	MisBeginAction(AddMission, 605)
	MisBeginAction(AddTrigger, 6051, TE_GETITEM, 4433, 5 )--Короткий кабаний хвост
	MisCancelAction(ClearMission, 605)

	MisNeed(MIS_NEED_ITEM, 4433, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы не знаете где раздобыть <bКороткий кабаний хвост>? Отправляйтесь в Аскарон в точку (1251,2962)." )
	MisResultTalk( "<t>Ох... Спасибо Вам огромне! Заходите попозже за своим Деликатесом! " )
	MisResultCondition(NoRecord, 605)
	MisResultCondition(HasMission, 605)
	MisResultCondition(HasItem, 4433, 5)
	MisResultAction(TakeItem, 4433, 5 )
	MisResultAction(ClearMission, 605)
	MisResultAction(SetRecord, 605)
	MisResultAction(AddExp, 1300, 1300)
	MisResultAction(AddMoney,632,632)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4433 )	
	TriggerAction( 1, AddNextFlag, 605, 10, 5 )
	RegCurTrigger( 6051 )

-----------------------------------Сопротивление кабанам
	DefineMission( 606, "\209\238\239\240\238\242\232\226\235\229\237\232\229 \234\224\225\224\237\224\236", 606 )
	
	MisBeginTalk( "<t>Я сегодня чуть не упал от ужаса, когда открыл окно и увидел у себя во дворе целое стадо <rКлыкастых боевых кабанов>. Они уничтожили всё в моём дворе.<n><t>Я не могу их оставить безнаказанными после разгрома моего двора. Убейте <r10 Клыкастых боевых кабанов> и отомстите за меня. Они могут быть в точке(1384,3065)." )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(HasRecord, 605)
	MisBeginCondition(NoMission, 606)
	MisBeginCondition(NoRecord, 606)
	MisBeginAction(AddMission, 606)
	MisBeginAction(AddTrigger, 6061, TE_KILL, 264, 10 )--Клыкастый боевой кабан
	MisCancelAction(ClearMission, 606)

	MisNeed(MIS_NEED_KILL, 264, 10, 10, 10)
	
	MisHelpTalk( "<t>А если бы они у Вас так разгромили двор, Вы бы так же их простили?" )
	MisResultTalk( "<t>Ха! Вы проучили их раз и на всегда. Теперь они больше не полезут в чужой двор!" )
	MisResultCondition(NoRecord, 606)
	MisResultCondition(HasMission, 606)
	MisResultCondition(HasFlag, 606, 19 )
	MisResultAction(ClearMission, 606)
	MisResultAction(SetRecord, 606)
	MisCancelAction(ClearMission, 607)
	MisResultAction(AddExp, 1300, 1300)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 264 )	
	TriggerAction( 1, AddNextFlag, 606, 10, 10 )
	RegCurTrigger( 6061 )

-----------------------------------Не вонять!*Долой Вонючек*!
	DefineMission( 607, "\205\229 \226\238\237\255\242\252!*\196\238\235\238\233 \194\238\237\254\247\229\234*!", 607 )
	
	MisBeginTalk( "<t>ЭЭй, Друг! Вы чувствуете? Как тут пахнет... Мм! Аромат просто завораживает...Шучу...Шучу.*Хе-хе-хе* Тут просто воняет! А знаете почему?! Тут  не  далеко, в точке (1414,2896), завёлся <rСвин-Летун>.<n><t>Убейте <r10 Свинов-Летунов> и спасите чистый воздух." )
	MisBeginCondition(HasRecord, 608)
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 607)
	MisBeginCondition(NoRecord, 607)
	MisBeginAction(AddMission, 607)
	MisBeginAction(AddTrigger, 6071, TE_KILL, 295, 10 )--Свин-летун
	MisCancelAction(ClearMission, 607)

	MisNeed(MIS_NEED_KILL, 295, 10, 10, 10)
	
	MisHelpTalk( "<t>Да убейте же на конец <rСвина-летуна>! Я задыхаюсь уже!" )
	MisResultTalk( "<t>Очень хорошо!" )
	MisResultCondition(NoRecord, 607)
	MisResultCondition(HasMission, 607)
	MisResultCondition(HasFlag, 607, 19 )
	MisResultAction(ClearMission, 607)
	MisResultAction(SetRecord, 607)
	MisResultAction(AddExp, 1500, 1500)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 295 )	
	TriggerAction( 1, AddNextFlag, 607, 10, 10 )
	RegCurTrigger( 6071 )

-----------------------------------Необычный мешок
	DefineMission( 608, "\205\229\238\225\251\247\237\251\233 \236\229\248\238\234", 608 )
	
	MisBeginTalk( "<t>Я думаю, что агрессию и вонь <bСвина-Летуна> мы не можем просто проигнорировать.<n><t>Я хочу заняться независимым расследованием по этому вопросу и узнать, с чем же всё это может быть связано.<n><t>Принесите мне <y5 Необычных мешков> с <rСвинов-Летунов>, что бы я смог их посмотреть." )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 608)
	MisBeginCondition(NoRecord, 608)
	MisBeginAction(AddMission, 608)
	MisBeginAction(AddTrigger, 6081, TE_GETITEM, 4460, 5 )--Необычный мешок
	MisCancelAction(ClearMission, 608)

	MisNeed(MIS_NEED_ITEM, 4460, 5, 10, 5)
	
	MisHelpTalk( "<t>Дя моего исследования необходимы Необычные мешки. Ну не как без них не обойтись, ни как!" )
	MisResultTalk( "<t>Я понял! Они переносят в этих мешках помёт Свинов кабонов!" )
	MisResultCondition(NoRecord, 608)
	MisResultCondition(HasMission, 608)
	MisResultCondition(HasItem, 4460, 5)
	MisResultAction(TakeItem, 4460, 5 )
	MisResultAction(ClearMission, 608)
	MisResultAction(SetRecord, 608)
	MisResultAction(AddExp, 1500, 1500)
	MisResultAction(AddMoney,664,664)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4460 )	
	TriggerAction( 1, AddNextFlag, 608, 10, 5 )
	RegCurTrigger( 6081 )

-----------------------------------Пропавшие Золотые Монеты
	DefineMission( 609, "\207\240\238\239\224\226\248\232\229 \199\238\235\238\242\251\229 \204\238\237\229\242\251", 609 )
	
	MisBeginTalk( "<t>Друг мой, вы должны знать меня! Я самый честный торговец! Но вот несчастье, меня обокрали <rБандиты> и украли моё золото!<n><t>Вы не могли бы сходить и забрать мой <yМешочек с золотыми> у них в убежище?" )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 609)
	MisBeginCondition(NoRecord, 609)
	MisBeginAction(AddMission, 609)
	MisBeginAction(AddTrigger, 6091, TE_GETITEM, 4087, 1 )--Мешочек с золотыми
	MisCancelAction(ClearMission, 609)

	MisNeed(MIS_NEED_ITEM, 4087, 1, 10, 1)
	
	MisHelpTalk( "<t>Спасибо Вам огромное! Вы вернули мне золото и я смогу дальше продолжать свою торговлю!" )
	MisResultTalk("<t>Не, ну ладно я боюсь бандитов. Я старый, мне простительно, но Вам! Как же Вам не стыдно..." )
	MisResultCondition(NoRecord, 609)
	MisResultCondition(HasMission, 609)
	MisResultCondition(HasItem, 4087, 1)
	MisResultAction(TakeItem, 4087, 1 )
	MisResultAction(ClearMission, 609)
	MisResultAction(SetRecord, 609)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,1394,1394)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4087 )	
	TriggerAction( 1, AddNextFlag, 609, 10, 1 )
	RegCurTrigger( 6091 )


-----------------------------------Страшные Бандиты
	DefineMission( 610, "\209\242\240\224\248\237\251\229 \193\224\237\228\232\242\251", 610 )
	
	MisBeginTalk( "<t>Эй друг! Тут в Андийских Лесах орудуют Бесстрашные <rБандиты>. Они грабят и убивают всех в подряд.<n><t>Убейте <r10 Бандитов>. Помогите местным жителям." )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 610)
	MisBeginCondition(NoRecord, 610)
	MisBeginAction(AddMission, 610)
	MisBeginAction(AddTrigger, 6101, TE_KILL, 93, 10 )--Бандит
	MisCancelAction(ClearMission, 610)

	MisNeed(MIS_NEED_KILL, 93, 10, 10, 10)
	
	MisHelpTalk( "<t>Убейте 10 Бандитов в Андийском Лесу!" )
	MisResultTalk( "<t>Это станет для них уроком!" )
	MisResultCondition(NoRecord, 610)
	MisResultCondition(HasMission, 610)
	MisResultCondition(HasFlag, 610, 19 )
	MisResultAction(ClearMission, 610)
	MisResultAction(SetRecord, 610)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 93 )	
	TriggerAction( 1, AddNextFlag, 610, 10, 10 )
	RegCurTrigger( 6101 )


-----------------------------------Уничтожение Дурмана
	DefineMission( 611, "\211\237\232\247\242\238\230\229\237\232\229 \196\243\240\236\224\237\224", 611 )
	
	MisBeginTalk( "<t>Ходят слухи, что Дурман это живой цветок, способный танцевать под музыку. Я ни разу не видел этого и не верю в его существование.<n><t>Принесите мне <y2 Острых шипа дурмана>, что бы я удостоверился в их существовании. Ходят слухи, что дурман можно найти в точке(1414,2898)." )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 611)
	MisBeginCondition(NoRecord, 611)
	MisBeginAction(AddMission, 611)
	MisBeginAction(AddTrigger, 6111, TE_GETITEM, 4088, 2 )--Острый шип дурмана(квестовый)
	MisCancelAction(ClearMission, 611)

	MisNeed(MIS_NEED_ITEM, 4088, 2, 10, 2)
	
	MisHelpTalk( "<t>Принесите мне докозательства о существовании Дурмана." )
	MisResultTalk( "<t>Спасибо Вам большое! Теперь я верю. Он действительно существует." )
	MisResultCondition(NoRecord, 611)
	MisResultCondition(HasMission, 611)
	MisResultCondition(HasItem, 4088, 2)
	MisResultAction(TakeItem, 4088, 2 )
	MisResultAction(ClearMission, 611)
	MisResultAction(SetRecord, 611)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4088 )	
	TriggerAction( 1, AddNextFlag, 611, 10, 2 )
	RegCurTrigger( 6111 )

-----------------------------------Ликвидация Дурманов
	DefineMission( 612, "\203\232\234\226\232\228\224\246\232\255 \196\243\240\236\224\237\238\226", 612 )
	
	MisBeginTalk( "<t>Жители нашего поселения в ужасе и страхе от Дурмана. У Дурмана есть ядовитые шипы и он может передвигаться по земле. убейте <r10 Дурмана>. Помогите нам избавиться от этой нечисти. Ходят слухи, что его можно найти в точке (1414,2896)." )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 612)
	MisBeginCondition(NoRecord, 612)
	MisBeginAction(AddMission, 612)
	MisBeginAction(AddTrigger, 6121, TE_KILL, 85, 20 )--Дурман
	MisCancelAction(ClearMission, 612)

	MisNeed(MIS_NEED_KILL, 85, 20, 10, 20)
	
	MisHelpTalk( "<t>Вы ещё не убили Дурмана." )
	MisResultTalk( "<t>Очень хорошо! Спасибо Вам огромное за помощь!" )
	MisResultCondition(NoRecord, 612)
	MisResultCondition(HasMission, 612)
	MisResultCondition(HasFlag, 612, 29 )
	MisResultAction(ClearMission, 612)
	MisResultAction(SetRecord, 612)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 85 )	
	TriggerAction( 1, AddNextFlag, 612, 10, 20 )
	RegCurTrigger( 6121 )


-----------------------------------Конкурс
	DefineMission( 613, "\202\238\237\234\243\240\241", 613 )
	
	MisBeginTalk( "<t>Эй, друг! Вы пришли во время! Новый захватывающий конкурс проходит здесь!<n><t>Кто победит <rБоксеру-новичоков> получит приз!<n><t>Вы согласны?Тогда не теряйте время.Вас ждут на месте (1117, 2923)." )
	MisBeginCondition(HasRecord, 614 )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 613)
	MisBeginCondition(NoRecord, 613)
	MisBeginAction(AddMission, 613)
	MisBeginAction(AddTrigger, 6131, TE_KILL, 76, 10 )--Боксеру-новичок
	MisCancelAction(ClearMission, 613)

	MisNeed(MIS_NEED_KILL, 76, 10, 10, 10)
	
	MisHelpTalk( "<t>А почему Вы не приняли участие в конкурсе?" )
	MisResultTalk("<t>Очень хорошо! Вы заняли 2 место и получите утешительный приз!" )
	MisResultCondition(NoRecord, 613)
	MisResultCondition(HasMission, 613)
	MisResultCondition(HasFlag, 613, 19 )
	MisResultAction(ClearMission, 613)
	MisResultAction(SetRecord, 613)
	MisResultAction(AddExp, 2300, 2300)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 76 )	
	TriggerAction( 1, AddNextFlag, 613, 10, 10 )
	RegCurTrigger( 6131 )

-----------------------------------Боксерские перчатки
	DefineMission( 614, "\193\238\234\241\229\240\241\234\232\229 \239\229\240\247\224\242\234\232", 614 )
	
	MisBeginTalk( "<t>Друг, Вы можете мне помочь? У моего брата скоро день рождение и он хочет в подарок <yБоксерские перчатки>.<n><t>Но я сам не смогу получить их, так как я слаб, а их можно заполучить только убив <rБоксеру-новичока> в Аскроне в точке (1117,2923). Помогите пожалуйста мне!" )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 614)
	MisBeginCondition(NoRecord, 614)
	MisBeginAction(AddMission, 614)
	MisBeginAction(AddTrigger, 6141, TE_GETITEM, 4435, 1 )--Боксерские перчатки
	MisCancelAction(ClearMission, 614)

	MisNeed(MIS_NEED_ITEM, 4435, 1, 10, 1)
	
	MisHelpTalk( "<t>Вы хотите испортить моему братику день рождение?!" )
	MisResultTalk( "<t>Спасибо Вам. Мой Братик будет самым счастливым именинником благодаря Вам." )
	MisResultCondition(NoRecord, 614)
	MisResultCondition(HasMission, 614)
	MisResultCondition(HasItem, 4435, 1)
	MisResultAction(TakeItem, 4435, 1 )
	MisResultAction(ClearMission, 614)
	MisResultAction(SetRecord, 614)
	MisResultAction(AddExp, 2300, 2300)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4435 )	
	TriggerAction( 1, AddNextFlag, 614, 10, 1 )
	RegCurTrigger( 6141 )

-----------------------------------Взрослая травяная черепаха
	DefineMission( 615, "\194\231\240\238\241\235\224\255 \242\240\224\226\255\237\224\255 \247\229\240\229\239\224\245\224", 615 )
	
	MisBeginTalk( "<t>Я ненавижу <rВзрослую травяную черепаху>! Она меня раздражает, я не могу смотреть на этих черепах. Особенно меня раздражает то что они передвигаются очень медленно и была бы моя воля я бы сделал их на много быстрее. Такие медленные существа вообще не должны существовать на этой земле!<n><t>Убейте <r10 Взрослых травяных черепах>. Они ползали пол века назад в точке(1198,3136), но так как они очень медлительны, они скорее всего ещё там!" )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 615)
	MisBeginCondition(NoRecord, 615)
	MisBeginAction(AddMission, 615)
	MisBeginAction(AddTrigger, 6151, TE_KILL, 135, 10 )--Взрослая травяная черепаха
	MisCancelAction(ClearMission, 615)

	MisNeed(MIS_NEED_KILL, 135, 10, 10, 10)
	
	MisHelpTalk( "<t>О Боже! Вы ещё медлительнее чем они, я не навижу всё, что так долго движется!" )
	MisResultTalk( "<t>Вы их убили?! Спасибо Вам!" )
	MisResultCondition(NoRecord, 615)
	MisResultCondition(HasMission, 615)
	MisResultCondition(HasFlag, 615, 19 )
	MisResultAction(ClearMission, 615)
	MisResultAction(SetRecord, 615)
	MisResultAction(AddExp, 2600, 2600)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 135 )	
	TriggerAction( 1, AddNextFlag, 615, 10, 10 )
	RegCurTrigger( 6151 )

----------------------------------Кража Черепашьих яиц
	DefineMission( 616, "\202\240\224\230\224 \215\229\240\229\239\224\248\252\232\245 \255\232\246", 616 )
	
	MisBeginTalk( "<t>Эй Друг, позвольте я расскажу Вам секрет! Цена на <bЧерепашьи яйца> очень большая в наши дни!<n><t>Тем не менее я не могу сам справиться с большими монстрами.<n><t>Могли бы Вы сходить в Аскарон в точку(1198,3136) , взять из гнёзд черепах эти яйца и принести мне, я же поделю выручку между нами." )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 616)
	MisBeginCondition(NoRecord, 616)
	MisBeginAction(AddMission, 616)
	MisBeginAction(AddTrigger, 6161, TE_GETITEM, 4089, 10 )--Черепашье яйцо
	MisCancelAction(ClearMission, 616)

	MisNeed(MIS_NEED_ITEM, 4089, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы ещё не нашли яйца черепах. Идите и отыщите их." )
	MisResultTalk( "<t>Ха-ха-ха! Я миллионер! Вот Ваша часть!" )
	MisResultCondition(NoRecord, 616)
	MisResultCondition(HasMission, 616)
	MisResultCondition(HasItem, 4089, 10)
	MisResultAction(TakeItem, 4089, 10 )
	MisResultAction(ClearMission, 616)
	MisResultAction(SetRecord, 616)
	MisResultAction(AddExp, 2600, 2600)
	MisResultAction(AddMoney,400,40500)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4089 )	
	TriggerAction( 1, AddNextFlag, 616, 10, 10 )
	RegCurTrigger( 6161 )

-----------------------------------Контрабанда черепашьими панцирями
	DefineMission( 617, "\202\238\237\242\240\224\225\224\237\228\224 \247\229\240\229\239\224\248\252\232\236\232 \239\224\237\246\232\240\255\236\232", 617 )
	
	MisBeginTalk( "<t>В последнее время я стал заниматься торговлей Черепашьих панцирей. Это очень прибыльное дело, если Вам интересно, то я могу взять Вас в компаньоны.<n><t>Принесите мне <y5 Красивых черепашьих панцирей>, что бы я смог обработать их на продажу. Вырученные деньги с продажи поделим по полам.<n><t>Я охочусь на черепах в Аскароне в точке(1198,3116), Вы тоже можете там охотиться на них." )
	MisBeginCondition(HasRecord, 616)
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 617)
	MisBeginCondition(NoRecord, 617)
	MisBeginAction(AddMission, 617)
	MisBeginAction(AddTrigger, 6171, TE_GETITEM, 4465, 5 )--Красивый черепаший панцирь
	MisCancelAction(ClearMission, 617)

	MisNeed(MIS_NEED_ITEM, 4465, 5, 10, 5)
	
	MisHelpTalk("<t>Я чувствую что из нас не выйдет команды!" )
	MisResultTalk("<t>Вы принесли то что нужно, спасибо Вам! Вот Ваша часть прибыли!" )
	MisResultCondition(NoRecord, 617)
	MisResultCondition(HasMission, 617)
	MisResultCondition(HasItem, 4465, 5)
	MisResultAction(TakeItem, 4465, 5 )
	MisResultAction(ClearMission, 617)
	MisResultAction(SetRecord, 617)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,835,835)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4465 )	
	TriggerAction( 1, AddNextFlag, 617, 10, 5 )
	RegCurTrigger( 6171 )

-----------------------------------Проклятая грязь
	DefineMission( 618, "\207\240\238\234\235\255\242\224\255 \227\240\255\231\252", 618 )
	
	MisBeginTalk( "<t>Хе-хе! Мой Друг, позвольте мне рассказать Вам мою тайну. Недавно я узнал новое проклятие, и я хочу использовать его на моём враге <bКентаро>.<n><t>Но мне не хватает одного ингредиента для завершения отвара. Принесите мне <y10 Бритвенно острых клыков>, что бы я смог доделать свой отвар.<n><t>Необходимый мне предмет Вы сможете получить убив <rБезумного кабана> в точке Аскарона(910,2971)." )
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 618)
	MisBeginCondition(NoRecord, 618)
	MisBeginAction(AddMission, 618)
	MisBeginAction(AddTrigger, 6181, TE_GETITEM, 4443, 10 )--Бритвенно острый клык
	MisCancelAction(ClearMission, 618)

	MisNeed(MIS_NEED_ITEM, 4443, 10, 10, 10)
	
	MisHelpTalk( "<t>Не шутит со мной иначе я сделаю отвар и прокляну Вас вместо Кентаро!" )
	MisResultTalk( "<t>Спасибо! Ну теперь держись <bКентаро>!" )
	MisResultCondition(NoRecord, 618)
	MisResultCondition(HasMission, 618)
	MisResultCondition(HasItem, 4443, 10)
	MisResultAction(TakeItem, 4443, 10 )
	MisResultAction(ClearMission, 618)
	MisResultAction(SetRecord, 618)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,835,835)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4443 )	
	TriggerAction( 1, AddNextFlag, 618, 10, 10 )
	RegCurTrigger( 6181 )

-----------------------------------День Независимости Кабана
	DefineMission( 619, "\196\229\237\252 \205\229\231\224\226\232\241\232\236\238\241\242\232 \202\224\225\224\237\224", 619 )
	
	MisBeginTalk( "<t>Ах! Я просто ненавижу этих <rБезумных кабанов>. Эти кабаны устроили себе День независимости!<n><t>Они ходят толпами по улицам, и жители боятся выходить из своих домов.<n><t>Отправляйтесь в точку(910,2971) Аскарона и убейте <r10 Безумных кабанов>. Это должно послужить им уроком!" )
	MisBeginCondition(HasRecord, 618)
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 619)
	MisBeginCondition(NoMission, 620)
	MisBeginCondition(NoRecord, 619)
	MisBeginAction(AddMission, 619)
	MisBeginAction(AddTrigger, 6191, TE_KILL, 64, 10 )--Безумный кабан
	MisCancelAction(ClearMission, 619)

	MisNeed(MIS_NEED_KILL, 64, 10, 10, 10)
	
	MisHelpTalk( "<t>Жители до сих пор боятся выходить на улицу!" )
	MisResultTalk( "<t>Ах! Спасибо, Вы настоящий герой и весь город перед Вами в долгу!" )
	MisResultCondition(NoRecord, 619)
	MisResultCondition(HasMission, 619)
	MisResultCondition(HasFlag, 619, 19 )
	MisResultAction(ClearMission, 619)
	MisResultAction(SetRecord, 619)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 64 )	
	TriggerAction( 1, AddNextFlag, 619, 10, 10 )
	RegCurTrigger( 6191 )

-----------------------------------Вызов кабану
	DefineMission( 620, "\194\251\231\238\226 \234\224\225\224\237\243", 620 )
	
	MisBeginTalk( "<t>Привет! Вы недавно приехали к нам? Разве Вы не хотите продемонстрировать свои силы местным жителям?<n><t>Хотите?! Ну отлично! У меня как раз есть задание для героя, если Вам интересно то я продолжу...<n><t>Ну так вот, что бы показать свою силу Вам надо отправиться в точку(911,2973) и убить <r5 Безумных кабанов>. Эти кабаны замучили нашу деревню, Вы поможете нам и тем самым прославите своё имя, как героя." )
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 620)
	MisBeginCondition(NoMission, 619)
	MisBeginCondition(NoRecord, 620)
	MisBeginAction(AddMission, 620)
	MisBeginAction(AddTrigger, 6201, TE_KILL, 64, 5 )----Безумный кабан
	MisCancelAction(ClearMission, 620)

	MisNeed(MIS_NEED_KILL, 64, 5, 10, 5)
	
	MisHelpTalk( "<t>Хех... Так Вам не прославить себя как Героя, если только как хвастуна или выскочку!" )
	MisResultTalk( "<t>Да! Вы герой!" )
	MisResultCondition(NoRecord, 620)
	MisResultCondition(HasMission, 620)
	MisResultCondition(HasFlag, 620, 14 )
	MisResultAction(ClearMission, 620)
	MisResultAction(SetRecord, 620)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 64 )	
	TriggerAction( 1, AddNextFlag, 620, 10, 5 )
	RegCurTrigger( 6201 )

-----------------------------------Дорогие травы
	DefineMission( 621, "\196\238\240\238\227\232\229 \242\240\224\226\251", 621 )
	
	MisBeginTalk( "<t>Эй друг, я потерял несколько Дорогих трав по пути сюда.<n><t>Эти травы очень нужны мне.<n><t>Я прошу Вас... Принесите мне с равнин Аскарона(1360,2683) <b6 Ценных трав>." )
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 621)
	MisBeginCondition(NoRecord, 621)
	MisBeginAction(AddMission, 621)
	MisBeginAction(AddTrigger, 6211, TE_GETITEM, 4090, 6 )--Ценные травы
	MisCancelAction(ClearMission, 621)

	MisNeed(MIS_NEED_ITEM, 4090, 6, 10, 6)
	
	MisHelpTalk( "<t>Вы уже принесли мне что я просил? Так чего жк Вы ждёте?!" )
	MisResultTalk( "<t>Спасибо! Вы меня спасли!" )
	MisResultCondition(NoRecord, 621)
	MisResultCondition(HasMission, 621)
	MisResultCondition(HasItem, 4090, 6)
	MisResultAction(TakeItem, 4090, 6 )
	MisResultAction(ClearMission, 621)
	MisResultAction(SetRecord, 621)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4090 )	
	TriggerAction( 1, AddNextFlag, 621, 10, 6 )
	RegCurTrigger( 6211 )

-----------------------------------Тайна Кормопроизводства
	DefineMission( 622, "\210\224\233\237\224 \202\238\240\236\238\239\240\238\232\231\226\238\228\241\242\226\224", 622 )
	
	MisBeginTalk( "<t>Я не могу ни как понять почему <rЛуговой лось> обладает такой живучестью и почему у них так развит инстинкт самосохранения.<n><t>Принесите мне <y5Прочных лосиных копыт>, что бы я их смог сравнить с копытами простых лосей. Возможно мне удастся найти в них разницу и понять секрет Луговых лосей.<n><t>Эти Луговые лоси пасутся в Аскароне в точке(1360,2683)." )
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 622)
	MisBeginCondition(NoRecord, 622)
	MisBeginAction(AddMission, 622)
	MisBeginAction(AddTrigger, 6221, TE_GETITEM, 4372, 5 )--Прочное лосиное копыто
	MisCancelAction(ClearMission, 622)

	MisNeed(MIS_NEED_ITEM, 4372, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы ещё не ходили к Луговым Лосям? Вы не желаете разобраться в чём их сила?" )
	MisResultTalk("<t>Я тчательно осмотрел копыта луговых лосей, которые Вы мне принесли, и я не обноружил ни какой разницы. Возможно секрет не в их копытах..." )
	MisResultCondition(NoRecord, 622)
	MisResultCondition(HasMission, 622)
	MisResultCondition(HasItem, 4372, 5)
	MisResultAction(TakeItem, 4372, 5 )
	MisResultAction(ClearMission, 622)
	MisResultAction(SetRecord, 622)
	MisResultAction(AddExp, 3800, 3800)
	MisResultAction(AddMoney,863,863)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4372 )	
	TriggerAction( 1, AddNextFlag, 622, 10, 5 )
	RegCurTrigger( 6221 )

-----------------------------------Шкура лося
	DefineMission( 623, "\216\234\243\240\224 \235\238\241\255", 623 )
	
	MisBeginTalk( "<t>Эй дружище, я раньше был пиратом, но мне пришлось спрятаться здесь после поражения от экипажа Чёрного Джека!<n><t>Я хочу себе тулуп из Шкуры лося.<n><t>Принесите мне <y5 Качественных Лосиных шкур>. Луговых лосей Вы сможете найти в точке Аскарона(1360,2683)." )
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 623)
	MisBeginCondition(NoRecord, 623)
	MisBeginAction(AddMission, 623)
	MisBeginAction(AddTrigger, 6231, TE_GETITEM, 4091, 5 )--Качественная лосиная шкура
	MisCancelAction(ClearMission, 623)

	MisNeed(MIS_NEED_ITEM, 4091, 5, 10, 5)
	
	MisHelpTalk( "<t>Идите и принесите мне наконец 5 Качественной лосиной шкуры!")
	MisResultTalk( "<t>Хе-хе! Вы действительно Герой, а не пустомеля!" )
	MisResultCondition(NoRecord, 623)
	MisResultCondition(HasMission, 623)
	MisResultCondition(HasItem, 4091, 5)
	MisResultAction(TakeItem, 4091, 5 )
	MisResultAction(ClearMission, 623)
	MisResultAction(SetRecord, 623)
	MisResultAction(AddExp, 3800, 3800)
	MisResultAction(AddMoney,863,863)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4091 )	
	TriggerAction( 1, AddNextFlag, 623, 10, 5 )
	RegCurTrigger( 6231 )

-----------------------------------Белый Совеныш
	DefineMission( 624, "\193\229\235\251\233 \209\238\226\229\237\251\248", 624 )
	
	MisBeginTalk( "<t>Я ненавижу <rБелых Совёнышей>! Они весь день шумят, и от этого у меня болит голова!<n><t>Я сойду с уа если это так и будет продолжаться! Если Вы не против помочь мне, то убейте <r5 Белых Совёнышей> в точке(1360,2683). Я буду очень Вам благодарен если Вы мне поможете." )
	MisBeginCondition(LvCheck, ">", 31 )
	MisBeginCondition(NoMission, 624)
	MisBeginCondition(NoRecord, 624)
	MisBeginAction(AddMission, 624)
	MisBeginAction(AddTrigger, 6241, TE_KILL, 225, 5 )--Белый совеныш
	MisCancelAction(ClearMission, 624)

	MisNeed(MIS_NEED_KILL, 225, 5, 10, 5)
	
	MisHelpTalk( "<t>Я точно сойду с ума." )
	MisResultTalk( "<t>Спасибо большое! Теперь стало гораздо тише и спокойнее." )
	MisResultCondition(NoRecord, 624)
	MisResultCondition(HasMission, 624)
	MisResultCondition(HasFlag, 624, 14 )
	MisResultAction(ClearMission, 624)
	MisResultAction(SetRecord, 624)
	MisResultAction(AddExp, 4300, 4300)
	MisResultAction(AddMoney,438,438)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 225 )	
	TriggerAction( 1, AddNextFlag, 624, 10, 5 )
	RegCurTrigger( 6241 )

-----------------------------------Месть
	DefineMission( 625, "\204\229\241\242\252", 625 )
	
	MisBeginTalk( "<t>Я очень рад видеть Вас. Это хорошо, что Вы пришли ко мне! Я потерял весь урожай и угадайте из-за кого... Да да это из-за <rБелых совёнышей>. Они атаковали мой огород, разорили и опустошили его, потом, как ни в чём ни бывало, улетели к себе в гнездо.<n><t>Накажите их и в знак доказательства того, что Вы отомстили, принесите мне <y5 Острых клювов>. Вы сможете найти их в Аргенте в точке(1360,2683). Ступайте, но будьте осторожны, они опасны. Удачи Вам." )
	MisBeginCondition(LvCheck, ">", 31 )
	MisBeginCondition(HasRecord, 621)
	MisBeginCondition(NoMission, 625)
	MisBeginCondition(NoRecord, 625)
	MisBeginAction(AddMission, 625)
	MisBeginAction(AddTrigger, 6251, TE_GETITEM, 4451, 5 )--Острый клюв
	MisCancelAction(ClearMission, 625)

	MisNeed(MIS_NEED_ITEM, 4451, 5, 10, 5)
	
	MisHelpTalk( "<t>Теперь идите и принесите мне докозательства моей мести!" )
	MisResultTalk( "<t>Хе-хе-хе! Вы отомстили за меня! Спасибо тебе. Вот твоя награда!" )
	MisResultCondition(NoRecord, 625)
	MisResultCondition(HasMission, 625)
	MisResultCondition(HasItem, 4451, 5)
	MisResultAction(TakeItem, 4451, 5 )
	MisResultAction(ClearMission, 625)
	MisResultAction(SetRecord, 625)
	MisResultAction(AddExp, 4300, 4300)
	MisResultAction(AddMoney,877,877)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4451 )	
	TriggerAction( 1, AddNextFlag, 625, 10, 5 )
	RegCurTrigger( 6251 )

-----------------------------------Изгнание Волков
	DefineMission( 626, "\200\231\227\237\224\237\232\229 \194\238\235\234\238\226", 626 )
	
	MisBeginTalk( "<t><rЛуговой волк> это страшное животное, я не когда не видел более ужасного и опасного животного в своей жизни!<n><t>Я вынужден попросить Вас помочь отогнать <rЛугового волка> подальше от нашей деревни.<n><t>Убейте в точке(1143,2705) <r5 Луговых Волков> и тем самым Вы спугнёте оставшуюся часть волчьего стада.<n><t>Будьте осторожны, так как волки охотятся стаей." )
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 626)
	MisBeginCondition(NoRecord, 626)
	MisBeginAction(AddMission, 626)
	MisBeginAction(AddTrigger, 6261, TE_KILL, 136, 5 )--Луговой волк
	MisCancelAction(ClearMission, 626)

	MisNeed(MIS_NEED_KILL, 136, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы ещё не ходили на Лугового волка? Отгоните их пожалуйста от нашей деревни!" )
	MisResultTalk( "<t>Примите благодарность от всей нашей деревни!" )
	MisResultCondition(NoRecord, 626)
	MisResultCondition(HasMission, 626)
	MisResultCondition(HasFlag, 626, 14 )
	MisResultAction(ClearMission, 626)
	MisResultAction(SetRecord, 626)
	MisResultAction(AddExp, 4800, 4800)
	MisResultAction(AddMoney,446,446)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 136 )	
	TriggerAction( 1, AddNextFlag, 626, 10, 5 )
	RegCurTrigger( 6261 )


-----------------------------------Кровавая резня
	DefineMission( 627, "\202\240\238\226\224\226\224\255 \240\229\231\237\255", 627 )
	
	MisBeginTalk( "<t>Я же Вам уже говорил, что раньше ходил под пиратским флагом?<n><t>Я хоть и бывший пират, но я боюсь <rЛуговых волков>. Не убьёте для меня их? А в благодарность я дам Вам не плохое вознаграждение.<n><t>В доказательство того, что Вы их убили принесите мне <b5 Когтей быстрого волка>. <rЛуговых волков> Вы найдёте у выхода из <pВалгаллы> в точке(1143,2705)." )
	MisBeginCondition(HasRecord, 623)
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 627)
	MisBeginCondition(NoRecord, 627)
	MisBeginAction(AddMission, 627)
	MisBeginAction(AddTrigger, 6271, TE_GETITEM, 4469, 5 )--Коготь быстрого волка
	MisCancelAction(ClearMission, 627)

	MisNeed(MIS_NEED_ITEM, 4469, 5, 10, 5)
	
	MisHelpTalk("<t>Вы не получите от меня ни цента, пока я не увижу доказательств!" )
	MisResultTalk( "<t>Хех... Вы настоящий бесстрашный герой! Вот ваша награда!" )
	MisResultCondition(NoRecord, 627)
	MisResultCondition(HasMission, 627)
	MisResultCondition(HasItem, 4469, 5)
	MisResultAction(TakeItem, 4469, 5 )
	MisResultAction(ClearMission, 627)
	MisResultAction(SetRecord, 627)
	MisResultAction(AddExp, 4800, 4800)
	MisResultAction(AddMoney,892,892)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4469 )	
	TriggerAction( 1, AddNextFlag, 627, 10, 5 )
	RegCurTrigger( 6271 )

-----------------------------------Проблема Боксеров
	DefineMission( 628, "\207\240\238\225\235\229\236\224 \193\238\234\241\229\240\238\226", 628 )
	
	MisBeginTalk( "<t>Не спешите! Можете мне помочь? Когда я ночью шёл с работы домой, меня атаковали <rБоксеру-берсерк>!<n><t>Они нападают на всех прохожих без какой либо причины! Пожалуйста положите конец этим нападениям убив <r5 Боксеру-берсерк>. Вы найдёте их в точке(1161,2639)." )
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 628)
	MisBeginCondition(NoRecord, 628)
	MisBeginAction(AddMission, 628)
	MisBeginAction(AddTrigger, 6281, TE_KILL, 80, 5 )--Боксеру-берсерк
	MisCancelAction(ClearMission, 628)

	MisNeed(MIS_NEED_KILL, 80, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы разве уже наказали Боксёру-берсек?" )
	MisResultTalk( "<t>Ох! Спасибо тебе! Теперь они не будут нападать на всех прохожих!" )
	MisResultCondition(NoRecord, 628)
	MisResultCondition(HasMission, 628)
	MisResultCondition(HasFlag, 628, 14 )
	MisResultAction(ClearMission, 628)
	MisResultAction(SetRecord, 628)
	MisResultAction(AddExp, 5400, 5400)
	MisResultAction(AddMoney,453,453)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 80 )	
	TriggerAction( 1, AddNextFlag, 628, 10, 5 )
	RegCurTrigger( 6281 )

-----------------------------------Счастливый волшебный камень
	DefineMission( 629, "\209\247\224\241\242\235\232\226\251\233 \226\238\235\248\229\225\237\251\233 \234\224\236\229\237\252", 629 )
	
	MisBeginTalk( "<t>Тсс, это тайна между мной и Вами, и ни кто больше не должен знать об этом!<n><t>Там, где обитают <rБоксеру-Берсек> в точке(1161,2639) есть <pСчастливый волшебный камень>... говорят он приносит удачу тому кто его носит. Принеси мне его и я щедро отблагодарю тебя. Только ищи его лучше, он может быть даже в кустах." )
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 629)
	MisBeginCondition(NoRecord, 629)
	MisBeginAction(AddMission, 629)
	MisBeginAction(AddTrigger, 6291, TE_GETITEM, 4092, 3 )--Счастливый волшебный камень
	MisCancelAction(ClearMission, 629)

	MisNeed(MIS_NEED_ITEM, 4092, 3, 10, 3)
	
	MisHelpTalk( "<t>Вы не принесли мне  <pСчастливый волшебный камень>, тогда о какой награде Вы говорите?" )
	MisResultTalk("<t>Ох! Спасибо Вам! Теперь я стану на конец счастлив!" )
	MisResultCondition(NoRecord, 629)
	MisResultCondition(HasMission, 629)
	MisResultCondition(HasItem, 4092, 3)
	MisResultAction(TakeItem, 4092, 3 )
	MisResultAction(ClearMission, 629)
	MisResultAction(SetRecord, 629)
	MisResultAction(AddExp, 5400, 5400)
	MisResultAction(AddMoney,453,453)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4092 )	
	TriggerAction( 1, AddNextFlag, 629, 10, 3 )
	RegCurTrigger( 6291 )

-----------------------------------исследование улитки
	DefineMission( 630, "\200\241\241\235\229\228\238\226\224\237\232\229 \243\235\232\242\234\232", 630 )
	
	MisBeginTalk( "<t>Я удивлён, что Улитки хоть и медлительные, но они могут избежать опасность!<n><t>Или у них радар на панцире, или у них сверх естественные усики. Принесите мне 5 <bКоротких усиков улитки>, что бы провести более подробное исследование этого вопроса. Улиток вы найдёте в точке(1227,2742)." )
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 630)
	MisBeginCondition(NoRecord, 630)
	MisBeginAction(AddMission, 630)
	MisBeginAction(AddTrigger, 6301, TE_GETITEM, 4473, 5 )--Короткий усик улитки
	MisCancelAction(ClearMission, 630)

	MisNeed(MIS_NEED_ITEM, 4473, 5, 10, 5)
	
	MisHelpTalk( "<t>Разве Вам самим не интересно почему они избегают опасности?!" )
	MisResultTalk("<t>Я проверил их и пришёл к выводу, что усики у них ни чем не отличаются от обычных!" )
	MisResultCondition(NoRecord, 630)
	MisResultCondition(HasMission, 630)
	MisResultCondition(HasItem, 4473, 5)
	MisResultAction(TakeItem, 4473, 5 )
	MisResultAction(ClearMission, 630)
	MisResultAction(SetRecord, 630)
	MisResultAction(AddExp, 6100, 6100)
	MisResultAction(AddMoney,923,923)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4473 )	
	TriggerAction( 1, AddNextFlag, 630, 10, 5 )
	RegCurTrigger( 6301 )

-----------------------------------Глупая улитка
	DefineMission( 631, "\195\235\243\239\224\255 \243\235\232\242\234\224", 631 )
	
	MisBeginTalk( "<t>Я из принципа не переношу на дух этих <rГлупых улиток>, они такие глупые и такие медленные, что я- купец, который ценит каждую минуту, не могу без ненависти смотреть на этих ползающих еле еле созданий.<n><t>Отправляйтесь в точку(1227,2742) и убейте 10 этих несчастных <rГлупых улиток>. Тем самым Вы спасёте их от долгой и бесполезной жизни!" )
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 631)
	MisBeginCondition(NoRecord, 631)
	MisBeginAction(AddMission, 631)
	MisBeginAction(AddTrigger, 6311, TE_KILL, 127, 10 )--Глупая улитка
	MisCancelAction(ClearMission, 631)

	MisNeed(MIS_NEED_KILL, 127, 10, 10, 10)
	
	MisHelpTalk( "<t>Убейте их! Убейте! Я не могу смотреть как они мучаются!" )
	MisResultTalk( "<t>Спасибо! Вы сделали доброе дело!" )
	MisResultCondition(NoRecord, 631)
	MisResultCondition(HasMission, 631)
	MisResultCondition(HasFlag, 631, 19 )
	MisResultAction(ClearMission, 631)
	MisResultAction(SetRecord, 631)
	MisResultAction(AddExp, 6100, 6100)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 127 )	
	TriggerAction( 1, AddNextFlag, 631, 10, 10 )
	RegCurTrigger( 6311 )


-----------------------------------Падальщик
	DefineMission( 632, "\207\224\228\224\235\252\249\232\234", 632 )
	
	MisBeginTalk( "<t>Всем в этом мире Богиня Кара дала дар. Только есть люди которые отвернулись от Богини и пошли по другой дороге.<n><t>Я хочу провести ритуал против таких людей, но мне не хватает свечей! Вы могли бы мне помочь, принести <p5 свечей>. Они падают когда убиваешь Грязилищь в Шахте(934,2747)." )
	MisBeginCondition(LvCheck, ">", 35 )
	MisBeginCondition(NoMission, 632)
	MisBeginCondition(NoRecord, 632)
	MisBeginAction(AddMission, 632)
	MisBeginAction(AddTrigger, 6321, TE_GETITEM, 4450, 5 )--Таинственная свеча
	MisCancelAction(ClearMission, 632)

	MisNeed(MIS_NEED_ITEM, 4450, 5, 10, 5)
	
	MisHelpTalk("<t>Я не смогу провести обряд без Свечей." )
	MisResultTalk("<t>Спасибо большое, помогая мне Вы помогли самой Богине Каре!" )
	MisResultCondition(NoRecord, 632)
	MisResultCondition(HasMission, 632)
	MisResultCondition(HasItem, 4450, 5)
	MisResultAction(TakeItem, 4450, 5 )
	MisResultAction(ClearMission, 632)
	MisResultAction(SetRecord, 632)
	MisResultAction(AddExp, 6800, 6800)
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4450 )	
	TriggerAction( 1, AddNextFlag, 632, 10, 5 )
	RegCurTrigger( 6321 )

-----------------------------------Песня Жалоклюва
	DefineMission( 633, "\207\229\241\237\255 \198\224\235\238\234\235\254\226\224", 633 )
	
	MisBeginTalk( "<t>Эй дружище, у меня есть для Вас работа, не задавайте лишних вопросов! Просто сделайте то, о чём я Вас сейчас попрошу, и Вы получите неплохое вознаграждение.<n><t>Убейте <r10 Жалоклювов> в точке(935,2687).<n><t>Приходите за наградой ко мне, когда покончите с этими существами." )
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 633)
	MisBeginCondition(NoRecord, 633)
	MisBeginAction(AddMission, 633)
	MisBeginAction(AddTrigger, 6331, TE_KILL, 128, 10 )--Жалоклюв
	MisCancelAction(ClearMission, 633)

	MisNeed(MIS_NEED_KILL, 128, 10, 10, 10)
	
	MisHelpTalk( "<t>Просто убейте их и не задавайте лишних вопросов." )
	MisResultTalk( "<t>Очень хорошо! Вы отличный воен! Из Вас выйдет хороший наёмник." )
	MisResultCondition(NoRecord, 633)
	MisResultCondition(HasMission, 633)
	MisResultCondition(HasFlag, 633, 19 )
	MisResultAction(ClearMission, 633)
	MisResultAction(SetRecord, 633)
	MisResultAction(AddExp, 7600, 7600)
	MisResultAction(AddMoney,477,477)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 128 )	
	TriggerAction( 1, AddNextFlag, 633, 10, 10 )
	RegCurTrigger( 6331 )

----------------------------------	Таинственная перо
	DefineMission( 634, "\210\224\232\237\241\242\226\229\237\237\224\255 \239\229\240\238", 634 )
	
	MisBeginTalk( "<t>Я хочу сделать мантию из перьев! Это не такая и глупая затея, как Вам кажется!<n><t>Не так давно я был пиратом, и одного моего слова *Надо* было достаточно, что бы мне принесли эти перья, но сейчас я в другом положении. и за место *Надо* я предлагаю Вам не плохие деньги.<n><t>Отправляйтесь в точку (935,2687) и принесите мне <p5 Блестящи перьев>. Я щедро Вас отблагодарю." )
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 634)
	MisBeginCondition(NoRecord, 634)
	MisBeginAction(AddMission, 634)
	MisBeginAction(AddTrigger, 6341, TE_GETITEM, 4472, 5 )--Блестящее перо
	MisCancelAction(ClearMission, 634)

	MisNeed(MIS_NEED_ITEM, 4472, 5, 10, 5)
	
	MisHelpTalk("<t>был бы я ещё пиратом Вы бы у меня пошли на корм акулам." )
	MisResultTalk("<t>Вот и хорошо! Вот Ваша награда!" )
	MisResultCondition(NoRecord, 634)
	MisResultCondition(HasMission, 634)
	MisResultCondition(HasItem, 4472, 5)
	MisResultAction(TakeItem, 4472, 5 )
	MisResultAction(ClearMission, 634)
	MisResultAction(SetRecord, 634)
	MisResultAction(AddExp, 7600, 7600)
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4472 )	
	TriggerAction( 1, AddNextFlag, 634, 10, 5 )
	RegCurTrigger( 6341 )

-----------------------------------Скорлупа яиц зловещей черепахи
	DefineMission( 635, "\209\234\238\240\235\243\239\224 \255\232\246 \231\235\238\226\229\249\229\233 \247\229\240\229\239\224\245\232", 635 )
	
	MisBeginTalk( "<t>По секрету, большинство торговцев ведут не честную торговлю, и я тоже!<n><t>Кто то заказал кристальное яйцо Кабана, но к сожалению я не имею возможности их раздобыть. Хотя если бы Вы принесли мне <pяица зловещей черепахи> в точке(969,2587) Вы сможете их найти. Я бы перекрасил бы их и отдал бы, как яйца кабана. Я щедро отблагодарю Вас за эту хитрость." )
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(NoMission, 635)
	MisBeginCondition(NoRecord, 635)
	MisBeginAction(AddMission, 635)
	MisBeginAction(AddTrigger, 6351, TE_GETITEM, 4093, 3 )--Скорлупа яиц зловещей черепахи
	MisCancelAction(ClearMission, 635)

	MisNeed(MIS_NEED_ITEM, 4093, 3, 10, 3)
	
	MisHelpTalk( "<t>Вы не принесли мне то о чём я Вас попросил? Так принесите!" )
	MisResultTalk( "<t>Хе-хе! Спасибо, вот Ваша награда." )
	MisResultCondition(NoRecord, 635)
	MisResultCondition(HasMission, 635)
	MisResultCondition(HasItem, 4093, 3)
	MisResultAction(TakeItem, 4093, 3 )
	MisResultAction(ClearMission, 635)
	MisResultAction(SetRecord, 635)
	MisResultAction(AddExp, 8500, 8500)
	MisResultAction(AddMoney,486,486)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4093 )	
	TriggerAction( 1, AddNextFlag, 635, 10, 3 )
	RegCurTrigger( 6351 )

-----------------------------------Зеленый мох
	DefineMission( 636, "\199\229\235\229\237\251\233 \236\238\245", 636 )
	
	MisBeginTalk( "<t>Меня очень сильно мучает язва! Я не могу больше нормально питаться из-за неё!<n><t>Пожалуйста принесите мне <p5 Зеленого мха>, что бы я смог вылечить им свою язву. Вы найдёте его в точке(732,2697)." )
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 636)
	MisBeginCondition(NoRecord, 636)
	MisBeginAction(AddMission, 636)
	MisBeginAction(AddTrigger, 6361, TE_GETITEM, 4094, 5 )--Зеленый мох
	MisCancelAction(ClearMission, 636)

	MisNeed(MIS_NEED_ITEM, 4094, 5, 10, 5)
	
	MisHelpTalk( "<t>Ох моя язва, я чувствую дни мои сочтены." )
	MisResultTalk( "<t>Спасибо Вам, я сейчас же сделаю себе отвар." )
	MisResultCondition(NoRecord, 636)
	MisResultCondition(HasMission, 636)
	MisResultCondition(HasItem, 4094, 5)
	MisResultAction(TakeItem, 4094, 5 )
	MisResultAction(ClearMission, 636)
	MisResultAction(SetRecord, 636)
	MisResultAction(AddExp, 9500, 9500)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4094 )	
	TriggerAction( 1, AddNextFlag, 636, 10, 5 )
	RegCurTrigger( 6361 )


-----------------------------------Поиск Скользкой скалы
	DefineMission( 637, "\207\238\232\241\234 \209\234\238\235\252\231\234\238\233 \241\234\224\235\251", 637 )
	
	MisBeginTalk( "<t>Мой друг <bМас> очень любит свой город и недавно он решил сделать ремонт в своём городе Ледыни, но ему необходимы материалы.<n><t>Принесите мне <y5 Скользкой скалы> из <rГалемов> в точке(682,2592). Я передам их ему и он начнёт ремонт в городе." )
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 637)
	MisBeginCondition(NoRecord, 637)
	MisBeginAction(AddMission, 637)
	MisBeginAction(AddTrigger, 6371, TE_GETITEM, 4455, 5 )--Скользкая скала
	MisCancelAction(ClearMission, 637)

	MisNeed(MIS_NEED_ITEM, 4455, 5, 10, 5)
	
	MisHelpTalk( "<t>Всего 5 скользкой скалы и Мас начнёт ремонт в городе!" )
	MisResultTalk( "<t>Спасибо тебе, я передам их от тебя и скажу, что это Вы помогли ему!" )
	MisResultCondition(NoRecord, 637)
	MisResultCondition(HasMission, 637)
	MisResultCondition(HasItem, 4455, 5)
	MisResultAction(TakeItem, 4455, 5 )
	MisResultAction(ClearMission, 637)
	MisResultAction(SetRecord, 637)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4455 )	
	TriggerAction( 1, AddNextFlag, 637, 10, 5 )
	RegCurTrigger( 6371 )



-----------------------------------Странный предсказатель
	DefineMission( 638, "\209\242\240\224\237\237\251\233 \239\240\229\228\241\234\224\231\224\242\229\235\252", 638 )
	
	MisBeginTalk( "<t>Этот мир наполнен разными людьми.<n><t>У меня есть знакомый, который занимается предсказаниями используя разные части тел. В этот раз для его предсказания ему нужен <bДлинный язык ящера>. Принесите ему, и он сможет мне предсказать судьбу. <yДлинный язык ящера> Вы сможете найти в точке(892,3273)." )
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 638)
	MisBeginCondition(NoRecord, 638)
	MisBeginAction(AddMission, 638)
	MisBeginAction(AddTrigger, 6381, TE_GETITEM, 4415, 5 )--Длинный язык ящера
	MisCancelAction(ClearMission, 638)

	MisNeed(MIS_NEED_ITEM, 4415, 5, 10, 5)
	
	MisHelpTalk( "<t>Помогите мне, мне так необходимо, что бы мне погодали." )
	MisResultTalk( "<t>Спасибо Вам, Вот Ваша награда!" )
	MisResultCondition(NoRecord, 638)
	MisResultCondition(HasMission, 638)
	MisResultCondition(HasItem, 4415, 5)
	MisResultAction(TakeItem, 4415, 5 )
	MisResultAction(ClearMission, 638)
	MisResultAction(SetRecord, 638)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4415 )	
	TriggerAction( 1, AddNextFlag, 638, 10, 5 )
	RegCurTrigger( 6381 )

-----------------------------------Игривый Ящер-попрыгун
	DefineMission( 639, "\200\227\240\232\226\251\233 \223\249\229\240-\239\238\239\240\251\227\243\237", 639 )
	
	MisBeginTalk( "<t>Друг мой! Я больше не могу! Тут такой ужасный запах! Этот запах исходит из <rЯщера-попрыгуна>. Отправляйтесь в точку(892,3273) и убейте <r10 Ящеров-попрыгунов>. Этим Вы очистите воздух во круге." )
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 639)
	MisBeginCondition(NoRecord, 639)
	MisBeginAction(AddMission, 639)
	MisBeginAction(AddTrigger, 6391, TE_KILL, 62, 10 )--Ящер-попрыгун
	MisCancelAction(ClearMission, 639)

	MisNeed(MIS_NEED_KILL, 62, 10, 10, 10)
	
	MisHelpTalk( "<t>Я задыхаюсь от этого запаха." )
	MisResultTalk( "<t>Вы чувствуете, что воздух стал свежее?!" )
	MisResultCondition(NoRecord, 639)
	MisResultCondition(HasMission, 639)
	MisResultCondition(HasFlag, 639, 19 )
	MisResultAction(ClearMission, 639)
	MisResultAction(SetRecord, 639)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,149,149)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 62 )	
	TriggerAction( 1, AddNextFlag, 639, 10, 10 )
	RegCurTrigger( 6391 )


-----------------------------------Секреция ящера-попрыгуна
	DefineMission( 640, "\209\229\234\240\229\246\232\255 \255\249\229\240\224-\239\238\239\240\251\227\243\237\224", 640 )
	
	MisBeginTalk( "<t>Я не могу понять от куда этот запах! У меня есть подозрения, что он исходит от <rящера-попрыгуна>. Отправляйтесь в точку(892,3273) и принесите мне из ящеров <y5 Секреций ящера-попрыгуна>. Я постараюсь получше разобраться с этой проблемой." )
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 640)
	MisBeginCondition(NoRecord, 640)
	MisBeginAction(AddMission, 640)
	MisBeginAction(AddTrigger, 6401, TE_GETITEM, 4095, 5 )--Секреция ящера-попрыгуна
	MisCancelAction(ClearMission, 640)

	MisNeed(MIS_NEED_ITEM, 4095, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы ещё не принесли мне Секрецию ящера-попрыгуна?" )
	MisResultTalk( "<t>Ох! Всё ясно! Они питаются падалью и совсем не ведут гигиену, от этого от них так и пахнет." )
	MisResultCondition(NoRecord, 640)
	MisResultCondition(HasMission, 640)
	MisResultCondition(HasItem, 4095, 5)
	MisResultAction(TakeItem, 4095, 5 )
	MisResultAction(ClearMission, 640)
	MisResultAction(SetRecord, 640)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,318,318)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4095 )	
	TriggerAction( 1, AddNextFlag, 640, 10, 5 )
	RegCurTrigger( 6401 )


-----------------------------------Освобождение от волков
	DefineMission( 641, "\206\241\226\238\225\238\230\228\229\237\232\229 \238\242 \226\238\235\234\238\226", 641 )
	
	MisBeginTalk( "<t>Я боюсь <rВолчат>, они часто появляются в пустыне и нападают стаей. Возможно если Вы убьёте <r10 Волчат>, это отпугнуло ы их. Вы найдёте их в точке." )
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 641)
	MisBeginCondition(NoRecord, 641)
	MisBeginAction(AddMission, 641)
	MisBeginAction(AddTrigger, 6411, TE_KILL, 100, 10 )--Волчонок
	MisCancelAction(ClearMission, 641)

	MisNeed(MIS_NEED_KILL, 100, 10, 10, 10)
	
	MisHelpTalk( "<t>Убейте их!" )
	MisResultTalk( "<t>Спасибо, теперь мне не так страшно выходить в пустыню." )
	MisResultCondition(NoRecord, 641)
	MisResultCondition(HasMission, 641)
	MisResultCondition(HasFlag, 641, 19 )
	MisResultAction(ClearMission, 641)
	MisResultAction(SetRecord, 641)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,159,159)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 100 )	
	TriggerAction( 1, AddNextFlag, 641, 10, 10 )
	RegCurTrigger( 6411 )

-----------------------------------Коготь волчонка
	DefineMission( 642, "\202\238\227\238\242\252 \226\238\235\247\238\237\234\224", 642 )
	
	MisBeginTalk( "<t>У меня есть друг, который занимается предсказаниями судьбы по разным частям тел. Вот он мне пообещал предсказать, что меня ждёт в будущем, если я ему принесу <b5 Когтей Волчонка>. Помогите мне, отправляйтесь в точку(687,3093) и раздобудьте мне там 5 когтей Волчонка." )
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(NoMission, 642)
	MisBeginCondition(NoRecord, 642)
	MisBeginAction(AddMission, 642)
	MisBeginAction(AddTrigger, 6421, TE_GETITEM, 4096, 5 )--Коготь волчонка
	MisCancelAction(ClearMission, 642)

	MisNeed(MIS_NEED_ITEM, 4096, 5, 10, 5)
	
	MisHelpTalk( "<t>Я не вижу Ваших стараний." )
	MisResultTalk( "<t>Спасибо Вам! Эта награда за Ваши старания." )
	MisResultCondition(NoRecord, 642)
	MisResultCondition(HasMission, 642)
	MisResultCondition(HasItem, 4096, 5)
	MisResultAction(TakeItem, 4096, 5 )
	MisResultAction(ClearMission, 642)
	MisResultAction(SetRecord, 642)
	MisResultAction(AddExp, 190, 190)
	MisResultAction(AddMoney,339,339)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4096 )	
	TriggerAction( 1, AddNextFlag, 642, 10, 5 )
	RegCurTrigger( 6421 )

-----------------------------------Кактус-Убийца
	DefineMission( 643, "\202\224\234\242\243\241-\211\225\232\233\246\224", 643 )
	
	MisBeginTalk( "<t>Мерзость! Это, безусловно, мерзость!<n><t>Я купец и много путешествую, но такую мерзость видел только тут! Вы только себе представьте - Кактусы-Убийцы, которые передвигаются по земле.<n><t>Это ужасное зрелище! Убейте 10 Кактусов, что бы путешественники видя их не пугались и в наш город ездили туристы, не боясь ужасных монстров. Вы найдёте Кактусы Убийцы в точке(884,3156)." )
	MisBeginCondition(LvCheck, ">", 12 )
	MisBeginCondition(NoMission, 643)
	MisBeginCondition(NoRecord, 643)
	MisBeginAction(AddMission, 643)
	MisBeginAction(AddTrigger, 6431, TE_KILL, 43, 10 )--Кактус-Убийца
	MisCancelAction(ClearMission, 643)

	MisNeed(MIS_NEED_KILL, 43, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы не хотите, что бы туристы приезжали к нам в город?" )
	MisResultTalk( "<t>Спасибо Вам дружище!" )
	MisResultCondition(NoRecord, 643)
	MisResultCondition(HasMission, 643)
	MisResultCondition(HasFlag, 643, 19 )
	MisResultAction(ClearMission, 643)
	MisResultAction(SetRecord, 643)
	MisResultAction(AddExp, 240, 240)
	MisResultAction(AddMoney,180,180)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 43 )	
	TriggerAction( 1, AddNextFlag, 643, 10, 10 )
	RegCurTrigger( 6431 )



-----------------------------------Горькое лекарство
	DefineMission( 644, "\195\238\240\252\234\238\229 \235\229\234\224\240\241\242\226\238", 644 )
	
	MisBeginTalk( "<t>Из-за сухого и жаркого климата, людям в пустыне не очень уютно, но есть специальная мазь, с помощью которой, легче переносить климат пустыни.<n><t>Что бы сделать такую мазь, необходимо <p5 Больших клубней кактуса>. Вы сможете найти их в точке(884,3156)." )
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 644)
	MisBeginCondition(NoRecord, 644)
	MisBeginAction(AddMission, 644)
	MisBeginAction(AddTrigger, 6441, TE_GETITEM, 4421, 5 )--Большой клубень кактуса
	MisCancelAction(ClearMission, 644)

	MisNeed(MIS_NEED_ITEM, 4421, 5, 10, 5)
	
	MisHelpTalk( "<t>Без этой мази очень трудно в пустыне." )
	MisResultTalk( "<t>Спасибо Вам, Вот Ваша мазь!" )
	MisResultCondition(NoRecord, 644)
	MisResultCondition(HasMission, 644)
	MisResultCondition(HasItem, 4421, 5)
	MisResultAction(TakeItem, 4421, 5 )
	MisResultAction(ClearMission, 644)
	MisResultAction(SetRecord, 644)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4421 )	
	TriggerAction( 1, AddNextFlag, 644, 10, 5 )
	RegCurTrigger( 6441 )


-----------------------------------Кактусовый водный мешок
	DefineMission( 645, "\202\224\234\242\243\241\238\226\251\233 \226\238\228\237\251\233 \236\229\248\238\234", 645 )
	
	MisBeginTalk( "<t>Вы только послушайте какой секрет я узнал... Кактусы способны находиться под солнцем в пустыне очень долго времени. У них есть <yводный мешок>. Если Вы отправитесь в точку(884,3516) и принесёте мне для эксперимента 5 <bКактусовых водных мешков>, то я Вас щедро отблагодарю." )
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 645)
	MisBeginCondition(HasRecord, 644)
	MisBeginCondition(NoRecord, 645)
	MisBeginAction(AddMission, 645)
	MisBeginAction(AddTrigger, 6451, TE_GETITEM, 4097, 5 )--Кактусовый водный мешок(квестовый лут)
	MisCancelAction(ClearMission, 645)

	MisNeed(MIS_NEED_ITEM, 4097, 5, 10, 5)
	
	MisHelpTalk( "<t>Пока Вы не принесёте то о чём я вас попросил я не дам Вам награду!" )
	MisResultTalk( "<t>Спасибо, я обязательно узнаю их секрет! Вот Ваша награда!" )
	MisResultCondition(NoRecord, 645)
	MisResultCondition(HasMission, 645)
	MisResultCondition(HasItem, 4097, 5)
	MisResultAction(TakeItem, 4097, 5 )
	MisResultAction(ClearMission, 645)
	MisResultAction(SetRecord, 645)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4097 )	
	TriggerAction( 1, AddNextFlag, 645, 10, 5 )
	RegCurTrigger( 6451 )

----------------------------------·­Гигантская злободыня
	DefineMission( 646, "\195\232\227\224\237\242\241\234\224\255 \231\235\238\225\238\228\251\237\255", 646 )
	
	MisBeginTalk( "<t>Мне интересно от куда столько Злобынь...<n><t>Убейте <r10 Гигантских злободынь> в точке (687,3093), что бы хоть как то уменьшить их численность." )
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 646)
	MisBeginCondition(NoRecord, 646)
	MisBeginAction(AddMission, 646)
	MisBeginAction(AddTrigger, 6461, TE_KILL, 294, 10 )--Гигантская злободыня
	MisCancelAction(ClearMission, 646)

	MisNeed(MIS_NEED_KILL, 294, 10, 10, 10)
	
	MisHelpTalk("<t>Вы не выполнели мою просьбу? Очень жаль! Может Вы всё же пойдёте и сделаете то, о чём я Вас попросил?" )
	MisResultTalk("<t>Спасибо Вам, теперь их гораздо меньше!" )
	MisResultCondition(NoRecord, 646)
	MisResultCondition(HasMission, 646)
	MisResultCondition(HasFlag, 646, 19 )
	MisResultAction(ClearMission, 646)
	MisResultAction(SetRecord, 646)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,204,204)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 294 )	
	TriggerAction( 1, AddNextFlag, 646, 10, 10 )
	RegCurTrigger( 6461 )

-----------------------------------Горький фрукт
	DefineMission( 647, "\195\238\240\252\234\232\233 \244\240\243\234\242", 647 )
	
	MisBeginTalk( "<t><bГорький фрукт> от <rГигантской злободыни> горький, но очень сочный.<n><t>Теперешняя молодежь использует <bГорький фрукт> для напитка.<n><t>Я сам лично изготовляю этот напиток, но у меня закончились запасы <bГорького Фрукта>. Если Вы мне принесёте <b5 Горьких Фруктов> с <rГигантской злободыни> в точке(687,3097), то я буду Вам очень сильно благодарен." )
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 647)
	MisBeginCondition(NoRecord, 647)
	MisBeginAction(AddMission, 647)
	MisBeginAction(AddTrigger, 6471, TE_GETITEM, 4475, 5 )--Горький фрукт
	MisCancelAction(ClearMission, 647)

	MisNeed(MIS_NEED_ITEM, 4475, 5, 10, 5)
	
	MisHelpTalk( "<t>Как, Вы ещё не принесли мне Горький Фрукт? Поторопитесь!" )
	MisResultTalk( "<t>Спасибо Вам, теперь я очень Вам благодарен!" )
	MisResultCondition(NoRecord, 647)
	MisResultCondition(HasMission, 647)
	MisResultCondition(HasItem, 4475, 5)
	MisResultAction(TakeItem, 4475, 5 )
	MisResultAction(ClearMission, 647)
	MisResultAction(SetRecord, 647)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,408,408)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4475 )	
	TriggerAction( 1, AddNextFlag, 647, 10, 5 )
	RegCurTrigger( 6471 )

----------------------------------Легенда о Древопризраке
	DefineMission( 648, "\203\229\227\229\237\228\224 \238 \196\240\229\226\238\239\240\232\231\240\224\234\229", 648 )
	
	MisBeginTalk( "<t>Ходят слухи, что <rДревопризрак> символизирует обречённость.<n><t>Эти <rДревопризраки> настоящее исчадие зла! Пожалуйста уничтожьте <r10 Древопризраков> в точке(885,3027) и положите начало уничтожению нечести." )
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 648)
	MisBeginCondition(NoRecord, 648)
	MisBeginAction(AddMission, 648)
	MisBeginAction(AddTrigger, 6481, TE_KILL, 203, 10 )--Древопризрак
	MisCancelAction(ClearMission, 648)

	MisNeed(MIS_NEED_KILL, 203, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы ещё не убили 10 Древопризраков!" )
	MisResultTalk( "<t>Спасибо Вам!" )
	MisResultCondition(NoRecord, 648)
	MisResultCondition(HasMission, 648)
	MisResultCondition(HasFlag, 648, 19 )
	MisResultAction(ClearMission, 648)
	MisResultAction(SetRecord, 648)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,216,216)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 203 )	
	TriggerAction( 1, AddNextFlag, 648, 10, 10 )
	RegCurTrigger( 6481 )


-----------------------------------Вернуть праздник
	DefineMission( 649, "\194\229\240\237\243\242\252 \239\240\224\231\228\237\232\234", 649 )
	
	MisBeginTalk( "<t>Когда есть вода, это праздник для жителей пустыни, но этот праздник могут испортить <rДревопризраки>, у них есть корни, которыми они поглощают всю воду и жителям не хватает воды. Принесите мне <y5 Корней древопризрака>, что бы я смог разобраться, как им удаётся поглощать всю воду в пустыне." )
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 649)
	MisBeginCondition(NoRecord, 649)
	MisBeginAction(AddMission, 649)
	MisBeginAction(AddTrigger, 6491, TE_GETITEM, 4098, 5 )--Корень древопризрака
	MisCancelAction(ClearMission, 649)

	MisNeed(MIS_NEED_ITEM, 4098, 5, 10, 5)
	
	MisHelpTalk( "<t>Вода пустыни под угрозой." )
	MisResultTalk( "<t>Сасибо, возможно разобравшись в этих корнях я смогу придумать, как спасти воду!" )
	MisResultCondition(NoRecord, 649)
	MisResultCondition(HasMission, 649)
	MisResultCondition(HasItem, 4098, 5)
	MisResultAction(TakeItem, 4098, 5 )
	MisResultAction(ClearMission, 649)
	MisResultAction(SetRecord, 649)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,459,459)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4098 )	
	TriggerAction( 1, AddNextFlag, 649, 10, 5 )
	RegCurTrigger( 6491 )

-----------------------------------Превосходный случай
	DefineMission( 650, "\207\240\229\226\238\241\245\238\228\237\251\233 \241\235\243\247\224\233", 650 )
	
	MisBeginTalk( "<t>*Хнык* Я всего лишь простая несчастная женщина. Однако этим беспощадным Бандитам было всё равно на меня и на мою судьбу, они ограбили меня и забрали последнее что осталось от моей матери. Они забрали <yНефритовый браслет> и отнесли его к себе в лагерь.<n><t>Вы не могли бы заступиться за бедную и несчастную женщину и вернуть <yНефритовый браслет>. Лагерь бандитов находится в точке(716,3290). Заберите у них мой <bНефритовый браслет>." )
	MisBeginCondition(LvCheck, ">", 17 )
	MisBeginCondition(NoMission, 650)
	MisBeginCondition(NoRecord, 650)
	MisBeginAction(AddMission, 650)
	MisBeginAction(AddTrigger, 6501, TE_GETITEM, 4099, 1 )
	MisCancelAction(ClearMission, 650)

	MisNeed(MIS_NEED_ITEM, 4099, 1, 10, 1)
	
	MisHelpTalk( "<t>*Хнык* Моя Мама... У меня больше нет о тебе памяти!" )
	MisResultTalk( "<t>Ах! как это благородно с Вашей стороны! Спасибо Вам!" )
	MisResultCondition(NoRecord, 650)
	MisResultCondition(HasMission, 650)
	MisResultCondition(HasItem, 4099, 1)
	MisResultAction(TakeItem, 4099, 1 )
	MisResultAction(ClearMission, 650)
	MisResultAction(SetRecord, 650)
	MisResultAction(AddExp, 650, 650)
	MisResultAction(AddMoney,242,242)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4099 )	
	TriggerAction( 1, AddNextFlag, 650, 10, 1 )
	RegCurTrigger( 6501 )


----------------------------------Избавление от бандитов
	DefineMission( 651, "\200\231\225\224\226\235\229\237\232\229 \238\242 \225\224\237\228\232\242\238\226", 651 )
	
	MisBeginTalk( "<t><rПесчаные разбойники> приходят из пустыни. Они  грабят не только торговцев, но и  беспомощных женщин и детей.<n><t>Жители деревень пришли с наградой, чтобы избавиться от них. Вы можете помочь нам? Выследите 10 <rПесчаных разбойников> в точке (716,3290)." )
	MisBeginCondition(LvCheck, ">", 18 )
	MisBeginCondition(NoMission, 651)
	MisBeginCondition(NoRecord, 651)
	MisBeginAction(AddMission, 651)
	MisBeginAction(AddTrigger, 6511, TE_KILL, 131, 10 )--Песчаный разбойник
	MisCancelAction(ClearMission, 651)

	MisNeed(MIS_NEED_KILL, 131, 10, 10, 10)
	
	MisHelpTalk("<t>Убейте Разбойников и получите награду!" )
	MisResultTalk("<t>Превосходно! Вот Ваша награда." )
	MisResultCondition(NoRecord, 651)
	MisResultCondition(HasMission, 651)
	MisResultCondition(HasFlag, 651, 19 )
	MisResultAction(ClearMission, 651)
	MisResultAction(SetRecord, 651)
	MisResultAction(AddExp, 750, 750)
	MisResultAction(AddMoney,256,256)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 131 )	
	TriggerAction( 1, AddNextFlag, 651, 10, 10 )
	RegCurTrigger( 6511 )

----------------------------------Ужасные Голодные волки
	DefineMission( 652, "\211\230\224\241\237\251\229 \195\238\235\238\228\237\251\229 \226\238\235\234\232", 652 )
	
	MisBeginTalk( "<t>Я набираю добровольцев на борьбу с  <rГолоднами волками>.<n><t>Они заставляют путешественников обходить наши земли стороной<n><t>Если Вы поможете убить 10 <rГолодных волков> в точке (718,2938), я щедро Вас вознагражу." )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 652)
	MisBeginCondition(NoRecord, 652)
	MisBeginAction(AddMission, 652)
	MisBeginAction(AddTrigger, 6521, TE_KILL, 101, 10 )--Голодный волк
	MisCancelAction(ClearMission, 652)

	MisNeed(MIS_NEED_KILL, 101, 10, 10, 10)
	
	MisHelpTalk( "<t>Убейте Голодных Волков и Вы получите вознаграждение." )
	MisResultTalk( "<t>Очень хорошо! Вот Ваша награда." )
	MisResultCondition(NoRecord, 652)
	MisResultCondition(HasMission, 652)
	MisResultCondition(HasFlag, 652, 19 )
	MisResultAction(ClearMission, 652)
	MisResultAction(SetRecord, 652)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 101 )	
	TriggerAction( 1, AddNextFlag, 652, 10, 10 )
	RegCurTrigger( 6521 )

----------------------------------Восстание Пустынной черепахи
	DefineMission( 653, "\194\238\241\241\242\224\237\232\229 \207\243\241\242\251\237\237\238\233 \247\229\240\229\239\224\245\232", 653 )
	
	MisBeginTalk( "<t>Я не знаю, что случилось с <rПесчаными черепахами>, они разбрелись по пустыне и нападают на всех подряд!<n><t>Можете ли вы помочь мне убить 10 <rПесчанных черепах> в точке (1197,3270)?" )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 653)
	MisBeginCondition(NoRecord, 653)
	MisBeginAction(AddMission, 653)
	MisBeginAction(AddTrigger, 6531, TE_KILL, 134, 10 )--Пустынная черепаха
	MisCancelAction(ClearMission, 653)

	MisNeed(MIS_NEED_KILL, 134, 10, 10, 10)
	
	MisHelpTalk( "<t>Пожалуйста! Убейте их!" )
	MisResultTalk( "<t>Очень хорошо!" )
	MisResultCondition(NoRecord, 653)
	MisResultCondition(HasMission, 653)
	MisResultCondition(HasFlag, 653, 19 )
	MisResultAction(ClearMission, 653)
	MisResultAction(SetRecord, 653)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 134 )	
	TriggerAction( 1, AddNextFlag, 653, 10, 10 )
	RegCurTrigger( 6531 )

-----------------------------------Перемещение Сада
	DefineMission( 654, "\207\229\240\229\236\229\249\229\237\232\229 \209\224\228\224", 654 )
	
	MisBeginTalk( "<t><rПесчаные черепахи> медленные, но огромные существа. Они под своим панцирем прячут пустынное зернышко.<n><t>Мне очень нужны эти семена. Можете ли Вы собирать для меня  <y5Пустынных зернышек> из <rПесчаных черепах> в точке (1197,3270)?" )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 654)
	MisBeginCondition(NoRecord, 654)
	MisBeginAction(AddMission, 654)
	MisBeginAction(AddTrigger, 6541, TE_GETITEM, 4466, 5 )
	MisCancelAction(ClearMission, 654)

	MisNeed(MIS_NEED_ITEM, 4466, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы мне разве не поможете?" )
	MisResultTalk( "<t>Большое Вам спасибо!" )
	MisResultCondition(NoRecord, 654)
	MisResultCondition(HasMission, 654)
	MisResultCondition(HasItem, 4466, 5)
	MisResultAction(TakeItem, 4466, 5 )
	MisResultAction(ClearMission, 654)
	MisResultAction(SetRecord, 654)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,571,571)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4466 )	
	TriggerAction( 1, AddNextFlag, 654, 10, 5 )
	RegCurTrigger( 6541 )

----------------------------------Препорат
	DefineMission( 655, "\207\240\229\239\238\240\224\242", 655 )
	
	MisBeginTalk( "<t>Я готовлюсь отправить торговый караван в <bАргент>.<n><t>Но мне придется пройти через лагерь <pПесчаных Бандитов>. Я боюсь, что они ограбят меня.<n><t>Не могли бы Вы убить 10 Песчаных Бандитов? Мой путь лежит через точку(1339,3300)." )
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 655)
	MisBeginCondition(NoRecord, 655)
	MisBeginAction(AddMission, 655)
	MisBeginAction(AddTrigger, 6551, TE_KILL, 45, 10 )--Песчаный бандит
	MisCancelAction(ClearMission, 655)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	
	MisHelpTalk( "<t>Я сомневаюсь, что путь стал безопаснее!" )
	MisResultTalk( "<t>Спасибо большое! Теперь мне нечего опасаться." )
	MisResultCondition(NoRecord, 655)
	MisResultCondition(HasMission, 655)
	MisResultCondition(HasFlag, 655, 19 )
	MisResultAction(ClearMission, 655)
	MisResultAction(SetRecord, 655)
	MisResultAction(AddExp, 1200, 1200)
	MisResultAction(AddMoney,300,300)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 45 )	
	TriggerAction( 1, AddNextFlag, 655, 10, 10 )
	RegCurTrigger( 6551 )

-----------------------------------Грибной суп
	DefineMission( 656, "\195\240\232\225\237\238\233 \241\243\239", 656 )
	
	MisBeginTalk( "<t>Ах... Когда я смотрю на эти <rПесчаные грибы>, то у меня сразу перед глазами становится образ Грибного супа!<n><t>Я так хочу попробовать этот суп...<n><t>Принесите мне <y5 Зонтичных грибa>, что бы я смог сварить замечательный Грибной суп. Вы найдёте <rПесчаные грибы> в точке(1334,3438)." )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 656)
	MisBeginCondition(NoRecord, 656)
	MisBeginAction(AddMission, 656)
	MisBeginAction(AddTrigger, 6561, TE_GETITEM, 4476, 5 )--Зонтичный гриб
	MisCancelAction(ClearMission, 656)

	MisNeed(MIS_NEED_ITEM, 4476, 5, 10, 5)
	
	MisHelpTalk( "<t>Я так хочу грибной суп, а Вы до сих пор не принесли мне 5 Зонтичных Грибов." )
	MisResultTalk( "<t>Спасибо Вам! Заходите на Грибной суп попозже." )
	MisResultCondition(NoRecord, 656)
	MisResultCondition(HasMission, 656)
	MisResultCondition(HasItem, 4476, 5)
	MisResultAction(TakeItem, 4476, 5 )
	MisResultAction(ClearMission, 656)
	MisResultAction(SetRecord, 656)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,632,632)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4476 )	
	TriggerAction( 1, AddNextFlag, 656, 10, 5 )
	RegCurTrigger( 6561 )

-----------------------------------Беглец
	DefineMission( 657, "\193\229\227\235\229\246", 657 )
	
	MisBeginTalk( "<t>Я люблю заниматься садоводством.<n><t>Дня 2 назад я гуляла в своём саду и заметила, что чего то не хватает.<n><t>Осмотрев свой сад я поняла, что нехватает <bГрибов>. Но без них я не вижу полноценности моего сада.<n><t>Вы не помогли бы мне принести <y5 Пустынных спор>, что бы я по новой смогла развести Грибы в своём саду.<n><t>Грибы Вы найдёте в точке(1334,3438)." )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 657)
	MisBeginCondition(NoRecord, 657)
	MisBeginAction(AddMission, 657)
	MisBeginAction(AddTrigger, 6571, TE_GETITEM, 4100, 5 )--Пустынная спора(квестовый лут)
	MisCancelAction(ClearMission, 657)

	MisNeed(MIS_NEED_ITEM, 4100, 5, 10, 5)
	
	MisHelpTalk( "<t>Я не смогу развести в своём саду Грибы без Вашей помощи!" )
	MisResultTalk( "<t>Спасибо, как только Грибы приживутся, мой сад будет самым лучшим садом в мире!" )
	MisResultCondition(NoRecord, 657)
	MisResultCondition(HasMission, 657)
	MisResultCondition(HasItem, 4100, 5)
	MisResultAction(TakeItem, 4100, 5 )
	MisResultAction(ClearMission, 657)
	MisResultAction(SetRecord, 657)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4100 )	
	TriggerAction( 1, AddNextFlag, 657, 10, 5 )
	RegCurTrigger( 6571 )

-----------------------------------Грязь и магия
	DefineMission( 658, "\195\240\255\231\252 \232 \236\224\227\232\255", 658 )
	
	MisBeginTalk( "<t>Эй! Друг! Вы как раз вовремя! У нас проводят ежегодный конкурс грязи и тот у кого будет больше грязи тот получит магический Шар, который сможет предсказывать будущее. Помогите мне добыть <b5 Зараженной грязи> из <rГрязедемона> обитающего в точке(1438,3414) и тогда я выиграю этот магический Шар, я буду Вам очень благодарен и заплачу хорошие деньги за это." )
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 658)
	MisBeginCondition(NoRecord, 658)
	MisBeginAction(AddMission, 658)
	MisBeginAction(AddTrigger, 6581, TE_GETITEM, 4436, 5 )--Зараженная грязь
	MisCancelAction(ClearMission, 658)

	MisNeed(MIS_NEED_ITEM, 4436, 5, 10, 5)
	
	MisHelpTalk( "<t>Я выйграю этот Шар только если вы мне поможите!" )
	MisResultTalk( "<t>Спасибо Вам!" )
	MisResultCondition(NoRecord, 658)
	MisResultCondition(HasMission, 658)
	MisResultCondition(HasItem, 4436, 5)
	MisResultAction(TakeItem, 4436, 5 )
	MisResultAction(ClearMission, 658)
	MisResultAction(SetRecord, 658)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,664,664)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4436 )	
	TriggerAction( 1, AddNextFlag, 658, 10, 5 )
	RegCurTrigger( 6581 )

----------------------------------Грязедемон
	DefineMission( 659, "\195\240\255\231\229\228\229\236\238\237", 659 )
	
	MisBeginTalk( "<t>Бррр, я грязный! Это всё из-за <rГрязедемона>!<n><t>Эти <rГрязедемоны> стали очень злыми в последнее время, и все кто подходит к ним становятся их жертвами! Ваша задача будет убить <r10 Грязедемонов> и показать им, кто главнее. Вы найдёте их в точке(1438,3413)." )
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 659)
	MisBeginCondition(NoRecord, 659)
	MisBeginAction(AddMission, 659)
	MisBeginAction(AddTrigger, 6591, TE_KILL, 251, 10 )--Грязедемон
	MisCancelAction(ClearMission, 659)

	MisNeed(MIS_NEED_KILL, 251, 10, 10, 10)
	
	MisHelpTalk( "<t>Похоже они Вас победили! И они главнее?! Вы так думаете? Идите и докажите им обратное!" )
	MisResultTalk( "<t>Вы справелись с этим! Вы настоящий герой!" )
	MisResultCondition(NoRecord, 659)
	MisResultCondition(HasMission, 659)
	MisResultCondition(HasFlag, 659, 19 )
	MisResultAction(ClearMission, 659)
	MisResultAction(SetRecord, 659)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 251 )	
	TriggerAction( 1, AddNextFlag, 659, 10, 10 )
	RegCurTrigger( 6591 )

----------------------------------Опасные Рейдеры
	DefineMission( 660, "\206\239\224\241\237\251\229 \208\229\233\228\229\240\251", 660 )
	
	MisBeginTalk( "<t><rПесчаные Бандиты> властвуют в течении долгого времени в пустыне <bШайтана>. Они на столько жестоки, что убивают всех кого повстречают у себя на пути. Их основной лагерь в точке(13027,3011). Отправляйтесь к ним в лагерь и убейте 10 <rПесчаных всадников>. Этим Вы утихомирите их пыл и они начнут уважать законы!" )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 660)
	MisBeginCondition(NoRecord, 660)
	MisBeginAction(AddMission, 660)
	MisBeginAction(AddTrigger, 6601, TE_KILL, 49, 10 )--Песчаный всадник
	MisCancelAction(ClearMission, 660)

	MisNeed(MIS_NEED_KILL, 49, 10, 10, 10)
	
	MisHelpTalk( "<t>Пока вы их не накажете они так и будут безнаказано убивать каждого встречного." )
	MisResultTalk( "<t>Спасибо Вам, Вы преподали им урок!" )
	MisResultCondition(NoRecord, 660)
	MisResultCondition(HasMission, 660)
	MisResultCondition(HasFlag, 660, 19 )
	MisResultAction(ClearMission, 660)
	MisResultAction(SetRecord, 660)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 49 )	
	TriggerAction( 1, AddNextFlag, 660, 10, 10 )
	RegCurTrigger( 6601 )

----------------------------------Искоренение пауков
	DefineMission( 661, "\200\241\234\238\240\229\237\229\237\232\229 \239\224\243\234\238\226", 661 )
	
	MisBeginTalk( "<t>Я раньше очень любил гулять  вдоль пляжа, но сейчас там опасно из-за <rПауков-каннибалов>. Убейте пожалуйста <r10 Пауков-каннибалов>, что бы можно стало опять гулять  вдоль берега. Вы натолкнётесь на них в точке(1093,2948)!" )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 661)
	MisBeginCondition(NoRecord, 661)
	MisBeginAction(AddMission, 661)
	MisBeginAction(AddTrigger, 6611, TE_KILL, 210, 10 )--Паук-каннибал
	MisCancelAction(ClearMission, 661)

	MisNeed(MIS_NEED_KILL, 210, 10, 10, 10)
	
	MisHelpTalk( "<t>На пляже так же небезопасно как и раньше!" )
	MisResultTalk( "<t>Спасибо Вам, тепрь я могу как и прежде гулять по пляжу!" )
	MisResultCondition(NoRecord, 661)
	MisResultCondition(HasMission, 661)
	MisResultCondition(HasFlag, 661, 19 )
	MisResultAction(ClearMission, 661)
	MisResultAction(SetRecord, 661)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 210 )	
	TriggerAction( 1, AddNextFlag, 661, 10, 10 )
	RegCurTrigger( 6611 )

-----------------------------------Ходки волков
	DefineMission( 662, "\213\238\228\234\232 \226\238\235\234\238\226", 662 )
	
	MisBeginTalk( "<t>Мне интересно, почему <rДикие волки> могут перемещаться на двух ногах как человек. Отправляйтесь в точку(1473,3295) и достаньте для меня из <rДиких волков> <y5 Огромных волчих когтей>.<n><t>Возможно я смогу понять их секрет!" )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 662)
	MisBeginCondition(NoRecord, 662)
	MisBeginAction(AddMission, 662)
	MisBeginAction(AddTrigger, 6621, TE_GETITEM, 4439, 5 )--Огромный волчий коготь
	MisCancelAction(ClearMission, 662)

	MisNeed(MIS_NEED_ITEM, 4439, 5, 10, 5)
	
	MisHelpTalk("<t>Хм.. Странно, но Вы мне ни чего не принесли." )
	MisResultTalk("<t>Ага! Я так и думал! Они Мутанты!" )
	MisResultCondition(NoRecord, 662)
	MisResultCondition(HasMission, 662)
	MisResultCondition(HasItem, 4439, 5)
	MisResultAction(TakeItem, 4439, 5 )
	MisResultAction(ClearMission, 662)
	MisResultAction(SetRecord, 662)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4439 )	
	TriggerAction( 1, AddNextFlag, 662, 10, 5 )
	RegCurTrigger( 6621 )

-----------------------------------Золотой паук
	DefineMission( 663, "\199\238\235\238\242\238\233 \239\224\243\234", 663 )
	
	MisBeginTalk( "<t>Дорогой друг! Вы как раз вовремя! Пауки украли у меня <yМешок с Золотом> и унесли в точку(1093,2948). Отправляйтесь туда и верните мой <yМешочек с золотом>, я не останусь в долгу перед Вами." )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 663)
	MisBeginCondition(NoRecord, 663)
	MisBeginAction(AddMission, 663)
	MisBeginAction(AddTrigger, 6631, TE_GETITEM, 4101, 1 )--Мешочек с золотом
	MisCancelAction(ClearMission, 663)

	MisNeed(MIS_NEED_ITEM, 4101, 1, 10, 1)
	
	MisHelpTalk( "<t>О каком вознаграждении Вы говорите? Я не вижу своего Мешка с золотом!" )
	MisResultTalk( "<t>Вот он мой родненький! Вот Ваша награда! Спасибо Вам огромное!" )
	MisResultCondition(NoRecord, 663)
	MisResultCondition(HasMission, 663)
	MisResultCondition(HasItem, 4101, 1)
	MisResultAction(TakeItem, 4101, 1 )
	MisResultAction(ClearMission, 663)
	MisResultAction(SetRecord, 663)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4101 )	
	TriggerAction( 1, AddNextFlag, 663, 10, 1 )
	RegCurTrigger( 6631 )

-----------------------------------Ключник
	DefineMission( 664, "\202\235\254\247\237\232\234", 664 )
	
	MisBeginTalk( "<t>Тссс! пожалуйста говорите тише!<n><t>Моя подруга собирается бежать со своим парнем из дому, так как им запрещают встречаться её родители. Только тссс!<n><t>Я благословляю их и хочу дать им подарок. Это ключи, пусть они будут ключами от их счастья.<n><t>Отправляйтесь в точку(1255,2974) и принесите из <rВсадников> Два <yГлавных ключа>. Только это большая тайна влюблённых, не говорите ни кому о их побеге!" )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 664)
	MisBeginCondition(NoRecord, 664)
	MisBeginAction(AddMission, 664)
	MisBeginAction(AddTrigger, 6641, TE_GETITEM, 4478, 2 )--Главный ключ
	MisCancelAction(ClearMission, 664)

	MisNeed(MIS_NEED_ITEM, 4478, 2, 10, 2)
	
	MisHelpTalk( "<t>А за что я должен Вас благодарить? Вы ещё не принесли мне 2 Главных ключа!" )
	MisResultTalk( "<t>Спасибо Друг!" )
	MisResultCondition(NoRecord, 664)
	MisResultCondition(HasMission, 664)
	MisResultCondition(HasItem, 4478, 2)
	MisResultAction(TakeItem, 4478, 2 )
	MisResultAction(ClearMission, 664)
	MisResultAction(SetRecord, 664)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,765,765)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4478 )	
	TriggerAction( 1, AddNextFlag, 664, 10, 2 )
	RegCurTrigger( 6641 )

----------------------------------Предводитель песчаных бандитов - Гарет
	DefineMission( 665, "\207\240\229\228\226\238\228\232\242\229\235\252 \239\229\241\247\224\237\251\245 \225\224\237\228\232\242\238\226 - \195\224\240\229\242", 665 )
	
	MisBeginTalk( "<t>Как говориться в очень мудрой пословице: Рубите проблему на корню!<n><t>Большой проблемой является в Пустыне, нападения Бандитов и разбойников. Убейте их Вожака в точке(1170,3026) и нападений станет значительно меньше!" )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 665)
	MisBeginCondition(NoRecord, 665)
	MisBeginAction(AddMission, 665)
	MisBeginAction(AddTrigger, 6651, TE_KILL, 106, 1 )--Предводитель песчаных бандитов - Гарет
	MisCancelAction(ClearMission, 665)

	MisNeed(MIS_NEED_KILL, 106, 1, 10, 1)
	
	MisHelpTalk( "<t>Вы ещё не убили Предводителя песчаных бандитов - Гарета!" )
	MisResultTalk( "<t>Хе-хе! Вы положили начало концу приступности!" )
	MisResultCondition(NoRecord, 665)
	MisResultCondition(HasMission, 665)
	MisResultCondition(HasFlag, 665, 10 )
	MisResultAction(ClearMission, 665)
	MisResultAction(SetRecord, 665)
	MisResultAction(AddExp, 2700, 2700)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 106 )	
	TriggerAction( 1, AddNextFlag, 665, 10, 1 )
	RegCurTrigger( 6651 )

----------------------------------Вызов кавалерии
	DefineMission( 666, "\194\251\231\238\226 \234\224\226\224\235\229\240\232\232", 666 )
	
	MisBeginTalk( "<t><bВсадники> в пустыне наводят страх на жителей Шайтана. Свирепее их нет бандитов!<n><t>Докажите свою доблесть убив в точке(1255,2974) <r10 Всадников>!" )
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 666)
	MisBeginCondition(NoRecord, 666)
	MisBeginAction(AddMission, 666)
	MisBeginAction(AddTrigger, 6661, TE_KILL, 200, 10 )--Всадник
	MisCancelAction(ClearMission, 666)

	MisNeed(MIS_NEED_KILL, 200, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы не доказали свою доблесть." )
	MisResultTalk( "<t>Теперь я вижу, что Вы настоящий борец за справедливость!" )
	MisResultCondition(NoRecord, 666)
	MisResultCondition(HasMission, 666)
	MisResultCondition(HasFlag, 666, 19 )
	MisResultAction(ClearMission, 666)
	MisResultAction(SetRecord, 666)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,417,417)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 200 )	
	TriggerAction( 1, AddNextFlag, 666, 10, 10 )
	RegCurTrigger( 6661 )

-----------------------------------Корона ящера
	DefineMission( 667, "\202\238\240\238\237\224 \255\249\229\240\224", 667 )
	
	MisBeginTalk( "<t>Ну не может носить животное корону счетая себя королём! В точке(1507,2970) обитают <rКороли ящеров> и носят короны! Принеси мне <y10 корон ящера> что бы мы смогли положить конец этой неспраедливости." )
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 667)
	MisBeginCondition(NoRecord, 667)
	MisBeginAction(AddMission, 667)
	MisBeginAction(AddTrigger, 6671, TE_GETITEM, 1757, 10 )--Корона ящера
	MisCancelAction(ClearMission, 667)

	MisNeed(MIS_NEED_ITEM, 1757, 10, 10, 10)
	
	MisHelpTalk( "<t>Что? Несите мне эти короны или Вы тоже против Королевы?!" )
	MisResultTalk( "<t>Спасибо! Это начало революции!" )
	MisResultCondition(NoRecord, 667)
	MisResultCondition(HasMission, 667)
	MisResultCondition(HasItem, 1757, 10)
	MisResultAction(TakeItem, 1757, 10 )
	MisResultAction(ClearMission, 667)
	MisResultAction(SetRecord, 667)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,849,849)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1757 )	
	TriggerAction( 1, AddNextFlag, 667, 10, 10 )
	RegCurTrigger( 6671 )

-----------------------------------Шапочка пингвина-морячка
	DefineMission( 668, "\216\224\239\238\247\234\224 \239\232\237\227\226\232\237\224-\236\238\240\255\247\234\224", 668 )
	
	MisBeginTalk( "<t>Эй! Задержись на минуту! Можете мне помочь? Вчера я видел милого <r Пингвина-морячка>. Мне очень понравилась его <yШапочка пингвина-морячка>! Я хочу её получить!<n><t>Принесите мне, пожалуйста, 2 <yШапочки пингвина-морячка> от <rПингвина-морячка>.Ты их найдешь в точке (995,365)!" )
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 668)
	MisBeginCondition(NoRecord, 668)
	MisBeginAction(AddMission, 668)
	MisBeginAction(AddTrigger, 6681, TE_GETITEM, 4102, 2 )--Шапочка пингвина-морячка
	MisCancelAction(ClearMission, 668)

	MisNeed(MIS_NEED_ITEM, 4102, 2, 10, 2)
	
	MisHelpTalk("<t>Я хочу получить эту <yШапочку пингвина-морячка> чего бы это мне ни стояло." )
	MisResultTalk("<t>Ох! Спасибо, она очень мне нравится!" )
	MisResultCondition(NoRecord, 668)
	MisResultCondition(HasMission, 668)
	MisResultCondition(HasItem, 4102, 2)
	MisResultAction(TakeItem, 4102, 2 )
	MisResultAction(ClearMission, 668)
	MisResultAction(SetRecord, 668)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4102 )	
	TriggerAction( 1, AddNextFlag, 668, 10, 2 )
	RegCurTrigger( 6681 )

-----------------------------------Сердце наяды
	DefineMission( 669, "\209\229\240\228\246\229 \237\224\255\228\251", 669 )
	
	MisBeginTalk( "<t><bНаяда> является мирным и самым спокойным существом. Ходит легенда, что обладатель <yсердца наяды> приобретёт спокойствие Наяды. Принесите мне два <yсердца Наяды>, что бы я проверил эту легенду." )
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 669)
	MisBeginCondition(NoRecord, 669)
	MisBeginAction(AddMission, 669)
	MisBeginAction(AddTrigger, 6691, TE_GETITEM, 4418, 2 )--Сердце наяды
	MisCancelAction(ClearMission, 669)

	MisNeed(MIS_NEED_ITEM, 4418, 2, 10, 2)
	
	MisHelpTalk( "<t>Что бы проверить эту легенду мне необходимо 2 <yсердца наяды>." )
	MisResultTalk( "<t>Спасибо! я тут же начну проверять свои нервишки." )
	MisResultCondition(NoRecord, 669)
	MisResultCondition(HasMission, 669)
	MisResultCondition(HasItem, 4418, 2)
	MisResultAction(TakeItem, 4418, 2 )
	MisResultAction(ClearMission, 669)
	MisResultAction(SetRecord, 669)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4418 )	
	TriggerAction( 1, AddNextFlag, 669, 10, 2 )
	RegCurTrigger( 6691 )

-----------------------------------Идеальный кристалл
	DefineMission( 670, "\200\228\229\224\235\252\237\251\233 \234\240\232\241\242\224\235\235", 670 )
	
	MisBeginTalk( "<t>Все кристаллы имеют дефекты. Однако, <rНаяда> способна убирать с кристаллов дефекты и убив наяду можно получить <yИдеальный кристалл>. Вы смогли бы принести мне 5 <yИдеальных кристаллов>, я бы Вас отблагодарил бы за это!<n><t>Наяду Вы найдёте в точке(1079,518)." )
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 670)
	MisBeginCondition(NoRecord, 670)
	MisBeginAction(AddMission, 670)
	MisBeginAction(AddTrigger, 6701, TE_GETITEM, 4103, 5 )--Безупречный кристалл(квестовый лут)
	MisCancelAction(ClearMission, 670)

	MisNeed(MIS_NEED_ITEM, 4103, 5, 10, 5)
	
	MisHelpTalk( "<t>Наяда хоть и миролюбивое существо и её жалко убивать, но мне нужны эти Идеальные кристаллы!" )
	MisResultTalk( "<t>Спасибо Вам! Вот Ваша награда!" )
	MisResultCondition(NoRecord, 670)
	MisResultCondition(HasMission, 670)
	MisResultCondition(HasItem, 4103, 5)
	MisResultAction(TakeItem, 4103, 5 )
	MisResultAction(ClearMission, 670)
	MisResultAction(SetRecord, 670)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,318,318)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4103 )	
	TriggerAction( 1, AddNextFlag, 670, 10, 5 )
	RegCurTrigger( 6701 )

----------------------------------Страдания лосей
	DefineMission( 671, "\209\242\240\224\228\224\237\232\255 \235\238\241\229\233", 671 )
	
	MisBeginTalk( "<t>Не подумайте ни чего плохого, но у меня очень странная привычка... Я люблю слушать стоны страдающих лосей! Чем жалобнее и сильнее будут стоны лосей, тем счастливее я буду себя чувствовать!<n><t>Я отблагодарю тебя если ты мне доставишь это удовольствие и убьёшь в точке(885,333) <r10 Лосей>." )
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(NoMission, 671)
	MisBeginCondition(NoRecord, 671)
	MisBeginAction(AddMission, 671)
	MisBeginAction(AddTrigger, 6711, TE_KILL, 266, 10 )--Лось
	MisCancelAction(ClearMission, 671)

	MisNeed(MIS_NEED_KILL, 266, 10, 10, 10)
	
	MisHelpTalk("<t>Я так несчастен, подарите мне хоть каплю счастья, убейте 10 Лосей в точке(885,333)." )
	MisResultTalk("<t>О! Это восхитительно! Вот Ваша награда." )
	MisResultCondition(NoRecord, 671)
	MisResultCondition(HasMission, 671)
	MisResultCondition(HasFlag, 671, 19 )
	MisResultAction(ClearMission, 671)
	MisResultAction(SetRecord, 671)
	MisResultAction(AddExp, 190, 190)
	MisResultAction(AddMoney,169,169)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 266 )	
	TriggerAction( 1, AddNextFlag, 671, 10, 10 )
	RegCurTrigger( 6711 )

----------------------------------	Избыточный вес
	DefineMission( 672, "\200\231\225\251\242\238\247\237\251\233 \226\229\241", 672 )
	
	MisBeginTalk( "<t>Я бы ни чего не имел против <rРогатых пингвинов>, если бы они не вредили!<n><t>Они проникают в столовые и портят там пищу.<n><t>Пожалуйста убейте <r10 Рогатых Пингвинов> в точке(885,333)." )
	MisBeginCondition(LvCheck, ">", 12 )
	MisBeginCondition(NoMission, 672)
	MisBeginCondition(NoRecord, 672)
	MisBeginAction(AddMission, 672)
	MisBeginAction(AddTrigger, 6721, TE_KILL, 34, 10 )--Рогатый пингвин
	MisCancelAction(ClearMission, 672)

	MisNeed(MIS_NEED_KILL, 34, 10, 10, 10)
	
	MisHelpTalk( "<t>Мне тоже не хочется приносить им боль и страдания, но Рогатые пингвины сами на это напросились." )
	MisResultTalk( "<t>Спасибо Вам, надеюсь это послужило для них уроком." )
	MisResultCondition(NoRecord, 672)
	MisResultCondition(HasMission, 672)
	MisResultCondition(HasFlag, 672, 19 )
	MisResultAction(ClearMission, 672)
	MisResultAction(SetRecord, 672)
	MisResultAction(AddExp, 240, 240)
	MisResultAction(AddMoney,180,180)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 34 )	
	TriggerAction( 1, AddNextFlag, 672, 10, 10 )
	RegCurTrigger( 6721 )

-----------------------------------Очень много мыслей
	DefineMission( 673, "\206\247\229\237\252 \236\237\238\227\238 \236\251\241\235\229\233", 673 )
	
	MisBeginTalk( "<t>В наших краях ходит легенда, если подвесить на карнизе <y2 Креветочных платочка>, то вернётся удача и все удачные моменты.<n><t>Из-за своей постоянной занятности, у меня ещё небыло любви, может быть это мне поможет найти свою половинку...<n><t>Принесите мне <r2 Креветочных платочка>. Вы их сможете найти у <rКреветки-матроса> в точке(738,426)." )
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 673)
	MisBeginCondition(NoRecord, 673)
	MisBeginAction(AddMission, 673)
	MisBeginAction(AddTrigger, 6731, TE_GETITEM, 1839, 2 )--Креветочный платок
	MisCancelAction(ClearMission, 673)

	MisNeed(MIS_NEED_ITEM, 1839, 2, 10, 2)
	
	MisHelpTalk( "<t>Разве Вам не хочеться найти свою вторую половинку? И что бы к Вам вернулась удача?!" )
	MisResultTalk( "<t>Спасибо, я надеюсь это мне поможет!" )
	MisResultCondition(NoRecord, 673)
	MisResultCondition(HasMission, 673)
	MisResultCondition(HasItem, 1839, 2)
	MisResultAction(TakeItem, 1839, 2 )
	MisResultAction(ClearMission, 673)
	MisResultAction(SetRecord, 673)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1839 )	
	TriggerAction( 1, AddNextFlag, 673, 10, 2 )
	RegCurTrigger( 6731 )


----------------------------------Снежная летучая мышь
	DefineMission( 674, "\209\237\229\230\237\224\255 \235\229\242\243\247\224\255 \236\251\248\252", 674 )
	
	MisBeginTalk( "<t>От Снежных летучих мышей исходит раздражительный писк! Из-за него много скотины померло! Убейте <r10 Снежных летучих мышей> и мы, от всего нашего колхоза от благодарим Вас." )
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 674)
	MisBeginCondition(NoRecord, 674)
	MisBeginAction(AddMission, 674)
	MisBeginAction(AddTrigger, 6741, TE_KILL, 46, 10 )--Снежная летучая мышь
	MisCancelAction(ClearMission, 674)

	MisNeed(MIS_NEED_KILL, 46, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы ещё ни чего не сделали полезного для нас." )
	MisResultTalk("<t>От всего колхоза: Спасибо Вам мил человек." )
	MisResultCondition(NoRecord, 674)
	MisResultCondition(HasMission, 674)
	MisResultCondition(HasFlag, 674, 19 )
	MisResultAction(ClearMission, 674)
	MisResultAction(SetRecord, 674)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,204,204)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 46 )	
	TriggerAction( 1, AddNextFlag, 674, 10, 10 )
	RegCurTrigger( 6741 )

-----------------------------------Ингредиент для колдовства
	DefineMission( 675, "\200\237\227\240\229\228\232\229\237\242 \228\235\255 \234\238\235\228\238\226\241\242\226\224", 675 )
	
	MisBeginTalk( "<t>Я хочу видеть будущее и у меня есть даже заклинание, но у меня нету необходимого ингредиента.<n><t>Принесите мне пожалуйста <y5 Клыков летучей мыши> (743,358) и я Вас щедро отблагодарю." )
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 675)
	MisBeginCondition(NoRecord, 675)
	MisBeginAction(AddMission, 675)
	MisBeginAction(AddTrigger, 6751, TE_GETITEM, 4427, 5 )--Клыки летучей мыши
	MisCancelAction(ClearMission, 675)

	MisNeed(MIS_NEED_ITEM, 4427, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы не принесли мне то о чём я Вас просил?" )
	MisResultTalk( "<t>Хех. Спасибо Вам, теперь я буду видеть будущее." )
	MisResultCondition(NoRecord, 675)
	MisResultCondition(HasMission, 675)
	MisResultCondition(HasItem, 4427, 5)
	MisResultAction(TakeItem, 4427, 5 )
	MisResultAction(ClearMission, 675)
	MisResultAction(SetRecord, 675)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,408,408)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4427 )	
	TriggerAction( 1, AddNextFlag, 675, 10, 5 )
	RegCurTrigger( 6751 )


----------------------------------Грязная струя
	DefineMission( 676, "\195\240\255\231\237\224\255 \241\242\240\243\255", 676 )
	
	MisBeginTalk( "<t>Ну это уже слишком... Представляете, невозможно выйти за пределы нашего поселения, как на людей сразу нападают эти противные <rКальмарчики-моряки>. Они плюют в людей своими чернилами и пачкают с ног до головы. Отправляетесь в точку(657,411) и преподайте им урок убив <r10 Кальмарчиков-моряков>. Да и будьте осторожны, они пачкают так, что потом трудно отстираться!" )
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 676)
	MisBeginCondition(NoRecord, 676)
	MisBeginAction(AddMission, 676)
	MisBeginAction(AddTrigger, 6761, TE_KILL, 233, 10 )--Кальмарчик-моряк
	MisCancelAction(ClearMission, 676)

	MisNeed(MIS_NEED_KILL, 233, 10, 10, 10)
	
	MisHelpTalk( "<t>Судя по всему Вас они тоже запачкали, и Вы это так и оставите?" )
	MisResultTalk( "<t>Надеюсь это послужит им уроком. Спасибо Вам!" )
	MisResultCondition(NoRecord, 676)
	MisResultCondition(HasMission, 676)
	MisResultCondition(HasFlag, 676, 19 )
	MisResultAction(ClearMission, 676)
	MisResultAction(SetRecord, 676)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,216,216)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 233 )	
	TriggerAction( 1, AddNextFlag, 676, 10, 10 )
	RegCurTrigger( 6761 )

-----------------------------------Шапочка кальмара
	DefineMission( 677, "\216\224\239\238\247\234\224 \234\224\235\252\236\224\240\224", 677 )
	
	MisBeginTalk( "<t>Вы только не подумайте ни чего плохого, но мне опять нужна Ваша помощь... Принесите мне <y2 Шапочки кальмара>... Они просто такие красивые, что я не могу перед ними устоять. Вы их найдёте у <rКальмарчиков> в точке(657,411)." )
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 677)
	MisBeginCondition(NoRecord, 677)
	MisBeginCondition(HasRecord, 668)
	MisBeginAction(AddMission, 677)
	MisBeginAction(AddTrigger, 6771, TE_GETITEM, 1840, 2 )--Шапочка кальмара
	MisCancelAction(ClearMission, 677)

	MisNeed(MIS_NEED_ITEM, 1840, 2, 10, 2)
	
	MisHelpTalk( "<t>Вы разве мне не поможете?" )
	MisResultTalk( "<t>Ох! Они просто великолепны. Спасибо Вам!" )
	MisResultCondition(NoRecord, 677)
	MisResultCondition(HasMission, 677)
	MisResultCondition(HasItem, 1840, 2)
	MisResultAction(TakeItem, 1840, 2 )
	MisResultAction(ClearMission, 677)
	MisResultAction(SetRecord, 677)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,433,433)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1840 )	
	TriggerAction( 1, AddNextFlag, 677, 10, 2 )
	RegCurTrigger( 6771 )

----------------------------------Грибная эпидемия
	DefineMission( 678, "\195\240\232\225\237\224\255 \253\239\232\228\229\236\232\255", 678 )
	
	MisBeginTalk( "<t>Я ненавижу Грибы! Они как губки собирают всю гадость с земли, и заражают и отравляют наивных людей!<n><t>Отправляйтесь в точку(952,550) и уничтожьте <r10 Снежных грибочкa>. Спасите наивных бабушек которые и сами травятся и травят своих гостей этими мерзкими Грибами." )
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 678)
	MisBeginCondition(NoRecord, 678)
	MisBeginAction(AddMission, 678)
	MisBeginAction(AddTrigger, 6781, TE_KILL, 130, 10 )--Снежный грибочек
	MisCancelAction(ClearMission, 678)

	MisNeed(MIS_NEED_KILL, 130, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы ещё не сделали то, о чём я Вас попросил." )
	MisResultTalk( "<t>Спасибо Вам, Вы опять мне помогли." )
	MisResultCondition(NoRecord, 678)
	MisResultCondition(HasMission, 678)
	MisResultCondition(HasFlag, 678, 19 )
	MisResultAction(ClearMission, 678)
	MisResultAction(SetRecord, 678)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,229,229)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 130 )	
	TriggerAction( 1, AddNextFlag, 678, 10, 10 )
	RegCurTrigger( 6781 )

-----------------------------------Грибной отвар
	DefineMission( 679, "\195\240\232\225\237\238\233 \238\242\226\224\240", 679 )
	
	MisBeginTalk( "<t>Мои года уже не позволяют мне наслаждаться вкусной, жирной и хорошо поджаренной пищей, но я могу подлечить свой желудок Отваром из Грибов.<n><t>Принесите мне <5 Снежных грибов> из <rСнежных грибочков>(952,550), что бы я отварив и выпив зелье смогла опять насладиться вкусом свежо-прожаренного кабанчика." )
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 679)
	MisBeginCondition(NoRecord, 679)
	MisBeginAction(AddMission, 679)
	MisBeginAction(AddTrigger, 6791, TE_GETITEM, 4104, 5 )--Снежный гриб(квестовый лут)
	MisCancelAction(ClearMission, 679)

	MisNeed(MIS_NEED_ITEM, 4104, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы ещё не принесли мне Снежный Гриб!?" )
	MisResultTalk( "<t>Ох! это прекрасно. Я сейчас же начну готовить отвар!" )
	MisResultCondition(NoRecord, 679)
	MisResultCondition(HasMission, 679)
	MisResultCondition(HasItem, 4104, 5)
	MisResultAction(TakeItem, 4104, 5 )
	MisResultAction(ClearMission, 679)
	MisResultAction(SetRecord, 679)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,459,459)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4104 )	
	TriggerAction( 1, AddNextFlag, 679, 10, 5 )
	RegCurTrigger( 6791 )


----------------------------------Маленькая маленькая улитка
	DefineMission( 680, "\204\224\235\229\237\252\234\224\255 \236\224\235\229\237\252\234\224\255 \243\235\232\242\234\224!", 680 )
	
	MisBeginTalk( "<t><rСнежные улитки> хоть и медлительны, но всё таки очень назойливые, и очень уж они мне мешают.<n><t>Я стал часто спотыкаться об них в точке(657,334). Убейте там <r10 Снежных улиток> для меня." )
	MisBeginCondition(LvCheck, ">", 17 )
	MisBeginCondition(NoMission, 680)
	MisBeginCondition(NoRecord, 680)
	MisBeginAction(AddMission, 680)
	MisBeginAction(AddTrigger, 6801, TE_KILL, 228, 10 )--Снежная улитка
	MisCancelAction(ClearMission, 680)

	MisNeed(MIS_NEED_KILL, 228, 10, 10, 10)
	
	MisHelpTalk( "<t>Нет молодой человек. Так дела не делают! Идите и убейте 10 Снежных улиток в точке(657,334)!" )
	MisResultTalk( "<t>Огромное Вам спасибо, теперь я не буду об них спотыкаться!" )
	MisResultCondition(NoRecord, 680)
	MisResultCondition(HasMission, 680)
	MisResultCondition(HasFlag, 680, 19 )
	MisResultAction(ClearMission, 680)
	MisResultAction(SetRecord, 680)
	MisResultAction(AddExp, 650, 650)
	MisResultAction(AddMoney,242,242)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 228 )	
	TriggerAction( 1, AddNextFlag, 680, 10, 10 )
	RegCurTrigger( 6801 )

-----------------------------------Цветочный камень
	DefineMission( 681, "\214\226\229\242\238\247\237\251\233 \234\224\236\229\237\252", 681 )
	
	MisBeginTalk( "<t>Под ракушкой <rСнежной улитки> находится редкий <yЦветочный камень>.<n><t>Этот камень сотворила сама богиня Кара, что бы понять язык цветов.<n><t>Принесите мне для опытов <y5 Цветочных каменей> из Снежных Улиток. Они появляются в точке(657,334)." )
	MisBeginCondition(LvCheck, ">", 18 )
	MisBeginCondition(NoMission, 681)
	MisBeginCondition(NoRecord, 681)
	MisBeginAction(AddMission, 681)
	MisBeginAction(AddTrigger, 6811, TE_GETITEM, 4105, 5 )--Цветочный камень
	MisCancelAction(ClearMission, 681)

	MisNeed(MIS_NEED_ITEM, 4105, 5, 10, 5)
	
	MisHelpTalk( "<t>Я не буду с Вами разговаривать пока Вы не соизволите выполнить моё поручение!" )
	MisResultTalk( "<t>Спасибо Вам огромное. Вот Ваша награда!" )
	MisResultCondition(NoRecord, 681)
	MisResultCondition(HasMission, 681)
	MisResultCondition(HasItem, 4105, 5)
	MisResultAction(TakeItem, 4105, 5 )
	MisResultAction(ClearMission, 681)
	MisResultAction(SetRecord, 681)
	MisResultAction(AddExp, 750, 750)
	MisResultAction(AddMoney,513,513)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4105 )	
	TriggerAction( 1, AddNextFlag, 681, 10, 5 )
	RegCurTrigger( 6811 )

-----------------------------------Чутье Улитки
	DefineMission( 682, "\215\243\242\252\229 \211\235\232\242\234\232", 682 )
	
	MisBeginTalk( "<t>Я ставлю эксперимент на чувствительности <rСнежных Улиток> обитающих в точке(657,334).<n><t>Мне необходимо понять... Почему они так хорошо реагируют на приближение человека и успевают спрятаться.<n><t>Принесите мне <y5 замороженных усика улитки>, что бы я смог разобраться в этом вопросе." )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 682)
	MisBeginCondition(NoRecord, 682)
	MisBeginAction(AddMission, 682)
	MisBeginAction(AddTrigger, 6821, TE_GETITEM, 4428, 5 )--Замороженный усик улитки
	MisCancelAction(ClearMission, 682)

	MisNeed(MIS_NEED_ITEM, 4428, 5, 10, 5)
	
	MisHelpTalk( "<t>От Вас требуется всего 5 Замороженных усиков улитки." )
	MisResultTalk( "<t>Очень хорошо! Вы помогли мне в моих опытах!" )
	MisResultCondition(NoRecord, 682)
	MisResultCondition(HasMission, 682)
	MisResultCondition(HasItem, 4428, 5)
	MisResultAction(TakeItem, 4428, 5 )
	MisResultAction(ClearMission, 682)
	MisResultAction(SetRecord, 682)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,541,541)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4428 )	
	TriggerAction( 1, AddNextFlag, 682, 10, 5 )
	RegCurTrigger( 6821 )

-----------------------------------Поиски снежного сердца
	DefineMission( 683, "\207\238\232\241\234\232 \241\237\229\230\237\238\227\238 \241\229\240\228\246\224", 683 )
	
	MisBeginTalk( "<t>Постойте! Помогите мне! Мой племянник заразился странным вирусом и умирает! Только <yЗамерзшее сердце> из <rНаивной снегурки> в точке(1055,738) сможет вылечить его.<n><t>Принесите мне <y5 Замерзших сердец>!" )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 683)
	MisBeginCondition(NoRecord, 683)
	MisBeginAction(AddMission, 683)
	MisBeginAction(AddTrigger, 6831, TE_GETITEM, 4431, 5 )--Замерзшее сердце
	MisCancelAction(ClearMission, 683)

	MisNeed(MIS_NEED_ITEM, 4431, 5, 10, 5)
	
	MisHelpTalk( "<t>Поспешите, мой племянник присмерти!" )
	MisResultTalk( "<t>Мне очень повезло, что я доверил эту не простую задачу именно Вам!" )
	MisResultCondition(NoRecord, 683)
	MisResultCondition(HasMission, 683)
	MisResultCondition(HasItem, 4431, 5)
	MisResultAction(TakeItem, 4431, 5 )
	MisResultAction(ClearMission, 683)
	MisResultAction(SetRecord, 683)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,541,541)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4431 )	
	TriggerAction( 1, AddNextFlag, 683, 10, 5 )
	RegCurTrigger( 6831 )


----------------------------------Наивная снегурка
	DefineMission( 684, "\205\224\232\226\237\224\255 \241\237\229\227\243\240\234\224", 684 )
	
	MisBeginTalk( "<t>Ходят слухи, что <rНаивная снегурка> обладает способностью творить настоящее зло!<n><t>Хоть это и слухи, всё же надо принять все меры предосторожности.<n><t>Отправляйтесь в точку(1055,738) и убейте <r10 Наивных снегурок>, дабы предотвратить зло!" )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 684)
	MisBeginCondition(NoRecord, 684)
	MisBeginAction(AddMission, 684)
	MisBeginAction(AddTrigger, 6841, TE_KILL, 255, 10 )--Наивная снегурка
	MisCancelAction(ClearMission, 684)

	MisNeed(MIS_NEED_KILL, 255, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы уже убили 10 Наивных снегурок? Нет? Так чего Вы ждёте?" )
	MisResultTalk( "<t>Спасибо Вам! Вы предовратили зло." )
	MisResultCondition(NoRecord, 684)
	MisResultCondition(HasMission, 684)
	MisResultCondition(HasFlag, 684, 19 )
	MisResultAction(ClearMission, 684)
	MisResultAction(SetRecord, 684)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 255 )	
	TriggerAction( 1, AddNextFlag, 684, 10, 10 )
	RegCurTrigger( 6841 )

----------------------------------Снежный медвежонок
	DefineMission( 685, "\209\237\229\230\237\251\233 \236\229\228\226\229\230\238\237\238\234", 685 )
	
	MisBeginTalk( "<t>Такие животные как медведи в морозы очень опасны! Когда их разбудят зимой они ходят и нападают на всех кто бы им не попался на пути, их по этому и называют \"Шатунами\". Вот таких медведей и разбудили в точке(958,661), теперь они не дают покоя ни кому, нападая на всё живое. Отправляйтесь туда и убейте <r10 Снежных медвежат>. Это должно их немного успокоить!" )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 685)
	MisBeginCondition(NoRecord, 685)
	MisBeginAction(AddMission, 685)
	MisBeginAction(AddTrigger, 6851, TE_KILL, 142, 10 )--Снежный медвежонок
	MisCancelAction(ClearMission, 685)

	MisNeed(MIS_NEED_KILL, 142, 10, 10, 10)
	
	MisHelpTalk( "<t>Медведи до сих пор ходят и нападают на прохожих!" )
	MisResultTalk( "<t>Спасибо Вам, теперь они станут на много спокойнее!" )
	MisResultCondition(NoRecord, 685)
	MisResultCondition(HasMission, 685)
	MisResultCondition(HasFlag, 685, 19 )
	MisResultAction(ClearMission, 685)
	MisResultAction(SetRecord, 685)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,285,285)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 142 )	
	TriggerAction( 1, AddNextFlag, 685, 10, 10 )
	RegCurTrigger( 6851 )

-----------------------------------Слёзы снега
	DefineMission( 686, "\209\235\191\231\251 \241\237\229\227\224", 686 )
	
	MisBeginTalk( "<t>Я пришёл сюда с пустыни в поисках <rСнежной королевы>. Говорят она младшая сестра Богини Кары. Я очень хотел бы с ней встретиться, но мои поиски до сих пор не принесли результатов и я уже начинаю думать, что всё это большой миф и сказка детям на ночь.<n><t>Не могли бы вы принести мне <y5 Совершенных снежинок>, что бы удостовериться в их существовании.<n><t>Ходят слухи, что они обитают в точке(873,646)." )
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 686)
	MisBeginCondition(NoRecord, 686)
	MisBeginAction(AddMission, 686)
	MisBeginAction(AddTrigger, 6861, TE_GETITEM, 4438, 5 )--Совершенная снежинка
	MisCancelAction(ClearMission, 686)

	MisNeed(MIS_NEED_ITEM, 4438, 5, 10, 5)
	
	MisHelpTalk( "<t>Помогите мне найти докозательство существования Снежной королевы!" )
	MisResultTalk( "<t>Спасибо! Я теперь вижу, что они существуют!" )
	MisResultCondition(NoRecord, 686)
	MisResultCondition(HasMission, 686)
	MisResultCondition(HasItem, 4438, 5)
	MisResultAction(TakeItem, 4438, 5 )
	MisResultAction(ClearMission, 686)
	MisResultAction(SetRecord, 686)
	MisResultAction(AddExp, 1200, 1200)
	MisResultAction(AddMoney,601,601)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4438 )	
	TriggerAction( 1, AddNextFlag, 686, 10, 5 )
	RegCurTrigger( 6861 )


-----------------------------------Снежный кристалл
	DefineMission( 687, "\209\237\229\230\237\251\233 \234\240\232\241\242\224\235\235", 687 )
	
	MisBeginTalk( "<t>Эй друг, вы слышали последние новости? Теперь самый ценный товар на Чёрном рынке это <yСнежный кристалл> из <rСнежной королевы> обитающей в точке(873,646). Она его использует, что бы замораживать людей и животных нарушивших её покой!<n><t>Принесите мне <y5 Снежных кристаллов>, что бы я смог получше разобраться как она с помощью его живое существо превращает в Ледяную статую." )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 687)
	MisBeginCondition(NoRecord, 687)
	MisBeginAction(AddMission, 687)
	MisBeginAction(AddTrigger, 6871, TE_GETITEM, 4106, 5 )--Снежный кристалл
	MisCancelAction(ClearMission, 687)

	MisNeed(MIS_NEED_ITEM, 4106, 5, 10, 5)
	
	MisHelpTalk( "<t>Да вы не бойтесь, просто сильно её не злите и всё у Вас получиться." )
	MisResultTalk( "<t>Я вижу Вы принесли мне то, что я попросил, вот Ваше вознаграждение!" )
	MisResultCondition(NoRecord, 687)
	MisResultCondition(HasMission, 687)
	MisResultCondition(HasItem, 4106, 5)
	MisResultAction(TakeItem, 4106, 5 )
	MisResultAction(ClearMission, 687)
	MisResultAction(SetRecord, 687)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4106 )	
	TriggerAction( 1, AddNextFlag, 687, 10, 5 )
	RegCurTrigger( 6871 )

----------------------------------Плач Снежной королевы
	DefineMission( 688, "\207\235\224\247 \209\237\229\230\237\238\233 \234\238\240\238\235\229\226\251", 688 )
	
	MisBeginTalk( "<t>Очень хорошо, что Вы тут! Вам не попадалась на пути <rСнежная Королева>? Они очень опасны!<n><t>Если их разозлить они могут вызвать снежную бурю!<n><t>Вы мне не верите? Попробуйте проверить это сами... Отправляйтесь в точку(873,646) и убейте <r10 Снежных королев>." )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 688)
	MisBeginCondition(NoRecord, 688)
	MisBeginAction(AddMission, 688)
	MisBeginAction(AddTrigger, 6881, TE_KILL, 281, 10 )--Снежная королева
	MisCancelAction(ClearMission, 688)

	MisNeed(MIS_NEED_KILL, 281, 10, 10, 10)
	
	MisHelpTalk( "<t>Я же вам говорил что они опасны, попробуйте ещё раз." )
	MisResultTalk( "<t>Вы справелись с этой стихией. Я в Вас ошибался!" )
	MisResultCondition(NoRecord, 688)
	MisResultCondition(HasMission, 688)
	MisResultCondition(HasFlag, 688, 19 )
	MisResultAction(ClearMission, 688)
	MisResultAction(SetRecord, 688)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 281 )	
	TriggerAction( 1, AddNextFlag, 688, 10, 10 )
	RegCurTrigger( 6881 )

----------------------------------Расплата волкам
	DefineMission( 689, "\208\224\241\239\235\224\242\224 \226\238\235\234\224\236", 689 )
	
	MisBeginTalk( "<t>Помогите! Помогите! За мной гналась стая <rСнежных Волков>! Мне так страшно!<n><t>Пожалуйста убейте <r10 Снежных волков> в точке(965,775)." )
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 689)
	MisBeginCondition(NoRecord, 689)
	MisBeginAction(AddMission, 689)
	MisBeginAction(AddTrigger, 6891, TE_KILL, 137, 10 )--Снежный волк
	MisCancelAction(ClearMission, 689)

	MisNeed(MIS_NEED_KILL, 137, 10, 10, 10)
	
	MisHelpTalk( "<t>Помогите!" )
	MisResultTalk( "<t>Ох! Спасибо Вам!" )
	MisResultCondition(NoRecord, 689)
	MisResultCondition(HasMission, 689)
	MisResultCondition(HasFlag, 689, 19 )
	MisResultAction(ClearMission, 689)
	MisResultAction(SetRecord, 689)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 137 )	
	TriggerAction( 1, AddNextFlag, 689, 10, 10 )
	RegCurTrigger( 6891 )

-----------------------------------Травяное желе
	DefineMission( 690, "\210\240\224\226\255\237\238\229 \230\229\235\229", 690 )
	
	MisBeginTalk( "<t>Вы как раз вовремя дружище!<n><t>Я так хочу попробовать <yТравное желе>, но его можно получить только из <rВоенных черепах> обитающих в точке(891,750).<n><t>Пожалуйста помогите мне, я так хочу отведать <yТравяное желе>." )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 690)
	MisBeginCondition(NoRecord, 690)
	MisBeginAction(AddMission, 690)
	MisBeginAction(AddTrigger, 6901, TE_GETITEM, 4442, 5 )--Травяное желе
	MisCancelAction(ClearMission, 690)

	MisNeed(MIS_NEED_ITEM, 4442, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы ещё не ходили?" )
	MisResultTalk( "<t>Ням ням... Это настоящее лакомство." )
	MisResultCondition(NoRecord, 690)
	MisResultCondition(HasMission, 690)
	MisResultCondition(HasItem, 4442, 5)
	MisResultAction(TakeItem, 4442, 5 )
	MisResultAction(ClearMission, 690)
	MisResultAction(SetRecord, 690)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,697,697)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4442 )	
	TriggerAction( 1, AddNextFlag, 690, 10, 5 )
	RegCurTrigger( 6901 )

----------------------------------Длинный нос Черепахи
	DefineMission( 691, "\196\235\232\237\237\251\233 \237\238\241 \215\229\240\229\239\224\245\232", 691 )
	
	MisBeginTalk( "<t>Друг мой! Я только что видел страшных существ около деревни.<n><t>Они как обычные черепахи, но с Булавами по бокам панциря. Я слышал, что их называют <rВоенными черепахами>.<n><t>Не могли бы Вы убить <r10 Военных черепах> в точке (930,792), чтобы обуздать мои страхи к ним?" )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 691)
	MisBeginCondition(NoRecord, 691)
	MisBeginAction(AddMission, 691)
	MisBeginAction(AddTrigger, 6911, TE_KILL, 265, 10 )--Военная черепаха
	MisCancelAction(ClearMission, 691)

	MisNeed(MIS_NEED_KILL, 265, 10, 10, 10)
	
	MisHelpTalk( "<t>Я ещё боюсь их!" )
	MisResultTalk( "<t>Спасибо Вам, мне теперь не так страшно!" )
	MisResultCondition(NoRecord, 691)
	MisResultCondition(HasMission, 691)
	MisResultCondition(HasFlag, 691, 19 )
	MisResultAction(ClearMission, 691)
	MisResultAction(SetRecord, 691)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 265 )	
	TriggerAction( 1, AddNextFlag, 691, 10, 10 )
	RegCurTrigger( 6911 )

----------------------------------Грубый Бронекраб
	DefineMission( 692, "\195\240\243\225\251\233 \193\240\238\237\229\234\240\224\225", 692 )
	
	MisBeginTalk( "<t>Боже мой! Целая армия <rБроникрабов> лишила меня моего товара! Да как они посмели?! Не поможете ли Вы мне преподать им урок? Отправляйтесь в точку(994,857) и убейте <r10 Бронекрабов>, что бы другим было не повадно!" )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 692)
	MisBeginCondition(NoRecord, 692)
	MisBeginAction(AddMission, 692)
	MisBeginAction(AddTrigger, 6921, TE_KILL, 143, 10 )--Бронекраб
	MisCancelAction(ClearMission, 692)

	MisNeed(MIS_NEED_KILL, 143, 10, 10, 10)
	
	MisHelpTalk( "<t>Пожалуйста убейте 10 Бронекрабов в точке(994,857)." )
	MisResultTalk( "<t>Хе-хе! Теперь им будет неповадно нападать на простых жителей Ледыни." )
	MisResultCondition(NoRecord, 692)
	MisResultCondition(HasMission, 692)
	MisResultCondition(HasFlag, 692, 19 )
	MisResultAction(ClearMission, 692)
	MisResultAction(SetRecord, 692)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 143 )	
	TriggerAction( 1, AddNextFlag, 692, 10, 10 )
	RegCurTrigger( 6921 )

-----------------------------------Яйцо бронекраба
	DefineMission( 693, "\223\233\246\238 \225\240\238\237\229\234\240\224\225\224", 693 )
	
	MisBeginTalk( "<t>Когда я только сюда переехал жить, у меня появилась мечта попробовать яичницу из <yяиц бронекраба>. Помогите мне её приготовить, для этого мне надо <y5 Яиц Бронекраба> обитающих в точке(994,857)." )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 693)
	MisBeginCondition(NoRecord, 693)
	MisBeginAction(AddMission, 693)
	MisBeginAction(AddTrigger, 6931, TE_GETITEM, 4107, 5 )--Яйцо бронекраба
	MisCancelAction(ClearMission, 693)

	MisNeed(MIS_NEED_ITEM, 4107, 5, 10, 5)
	
	MisHelpTalk( "<t>По видимому я не тому доверил свой секрет... Идите и принесите мне <yяйца Броникраба>, пока я не разозлился!" )
	MisResultTalk( "<t>Спасибо! Я ни когда ещё не ел такой вкусной яичницы!" )
	MisResultCondition(NoRecord, 693)
	MisResultCondition(HasMission, 693)
	MisResultCondition(HasItem, 4107, 5)
	MisResultAction(TakeItem, 4107, 5 )
	MisResultAction(ClearMission, 693)
	MisResultAction(SetRecord, 693)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4107 )	
	TriggerAction( 1, AddNextFlag, 693, 10, 5 )
	RegCurTrigger( 6931 )

-----------------------------------Замороженное мясо улитки
	DefineMission( 694, "\199\224\236\238\240\238\230\229\237\237\238\229 \236\255\241\238 \243\235\232\242\234\232", 694 )
	
	MisBeginTalk( "<t>Вы пробовали когда ни будь <yЗамороженное мясо улитки>? Нет? О! вы многое потеряли, я очень люблю <yЗамороженное мясо улитки>.<n><t>Принесите мне их в размере 5 штук и я Вас щедро отблагодарю! Найти Вы их сможете в точке(802,750). Удачи Вам В поисках!" )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 694)
	MisBeginCondition(NoRecord, 694)
	MisBeginAction(AddMission, 694)
	MisBeginAction(AddTrigger, 6941, TE_GETITEM, 4464, 5 )
	MisCancelAction(ClearMission, 694)

	MisNeed(MIS_NEED_ITEM, 4464, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы ещё не принесли мне Замороженное мясо улитки? Как жаль! Но я жду Вас с ним!" )
	MisResultTalk( "<t>Мммм... Это обьядение!" )
	MisResultCondition(NoRecord, 694)
	MisResultCondition(HasMission, 694)
	MisResultCondition(HasItem, 4464, 5)
	MisResultAction(TakeItem, 4464, 5 )
	MisResultAction(ClearMission, 694)
	MisResultAction(SetRecord, 694)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,765,765)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4464 )	
	TriggerAction( 1, AddNextFlag, 694, 10, 5 )
	RegCurTrigger( 6941 )

-----------------------------------Сбор Непорочнго сердца
	DefineMission( 695, "\209\225\238\240 \205\229\239\238\240\238\247\237\227\238 \241\229\240\228\246\224", 695 )
	
	MisBeginTalk( "<t>Постойте! У Вас не найдётся для меня минутки? Отлично! Мой друг занимается магией и ему необходимо <r5 Непорочных Сердец> из <rСнежного духа>. Вы найдёте <rСнежный дух> в точке(1060,805). Поторопитесь, мой друг предложил хорошее вознаграждение тому кто принесёт первым <y5 Непорочных сердец>." )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 695)
	MisBeginCondition(NoRecord, 695)
	MisBeginAction(AddMission, 695)
	MisBeginAction(AddTrigger, 6951, TE_GETITEM, 4481, 5 )--Непорочное сердце
	MisCancelAction(ClearMission, 695)

	MisNeed(MIS_NEED_ITEM, 4481, 5, 10, 5)
	
	MisHelpTalk( "<t>Поторопитесь, и награда будет Ваша!" )
	MisResultTalk( "<t>Спасибо Вам за помощь, вот Ваша награда." )
	MisResultCondition(NoRecord, 695)
	MisResultCondition(HasMission, 695)
	MisResultCondition(HasItem, 4481, 5)
	MisResultAction(TakeItem, 4481, 5 )
	MisResultAction(ClearMission, 695)
	MisResultAction(SetRecord, 695)
	MisResultAction(AddExp, 2700, 2700)
	MisResultAction(AddMoney,800,800)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4481 )	
	TriggerAction( 1, AddNextFlag, 695, 10, 5 )
	RegCurTrigger( 6951 )

----------------------------------Хрупкая снегурка
	DefineMission( 696, "\213\240\243\239\234\224\255 \241\237\229\227\243\240\234\224", 696 )
	
	MisBeginTalk( "<t><rХрупкая снегурка> постоянно создаёт угрозу жителям деревни! Не помогли ли бы Вы жителям убить <r10 Хрупких снегурок> в точке(908,842)." )
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 696)
	MisBeginCondition(NoRecord, 696)
	MisBeginAction(AddMission, 696)
	MisBeginAction(AddTrigger, 6961, TE_KILL, 256, 10 )--Хрупкая снегурка
	MisCancelAction(ClearMission, 696)

	MisNeed(MIS_NEED_KILL, 256, 10, 10, 10)
	
	MisHelpTalk( "<t>Пожалуйста помогите нам!" )
	MisResultTalk( "<t>Вы настоящий герой!" )
	MisResultCondition(NoRecord, 696)
	MisResultCondition(HasMission, 696)
	MisResultCondition(HasFlag, 696, 19 )
	MisResultAction(ClearMission, 696)
	MisResultAction(SetRecord, 696)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,417,417)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 256 )	
	TriggerAction( 1, AddNextFlag, 696, 10, 10 )
	RegCurTrigger( 6961 )

----------------------------------Йети
	DefineMission( 697, "\201\229\242\232", 697 )
	
	MisBeginTalk( "<t>Привет! Вы хотите доказать, что вы настоящий смелый и отважный герой? Отлично! У Вас прекрасный шанс это сделать!<n><t>Убейте <r10 Йети> В точке(1495,667) и Вы этим докажете, что Вы герой!" )
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 697)
	MisBeginCondition(NoRecord, 697)
	MisBeginAction(AddMission, 697)
	MisBeginAction(AddTrigger, 6971, TE_KILL, 98, 10 )--Йети
	MisCancelAction(ClearMission, 697)

	MisNeed(MIS_NEED_KILL, 98, 10, 10, 10)
	
	MisHelpTalk( "<t>Не... ТАких героев нам не надо....." )
	MisResultTalk( "<t>А вот я и не сомневался в Вас ни на минуту." )
	MisResultCondition(NoRecord, 697)
	MisResultCondition(HasMission, 697)
	MisResultCondition(HasFlag, 697, 19 )
	MisResultAction(ClearMission, 697)
	MisResultAction(SetRecord, 697)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 98 )	
	TriggerAction( 1, AddNextFlag, 697, 10, 10 )
	RegCurTrigger( 6971 )

-----------------------------------Забытая тайна
	DefineMission( 698, "\199\224\225\251\242\224\255 \242\224\233\237\224", 698 )
	
	MisBeginTalk( "<t>В Ледыне часто пропадают люди и мне кажется что виной этому Йети обитающие в точке(1495,667). Убейте их и принесите в доказательство победы над ними <y5 Когтей Йети>." )
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 698)
	MisBeginCondition(NoRecord, 698)
	MisBeginAction(AddMission, 698)
	MisBeginAction(AddTrigger, 6981, TE_GETITEM, 4446, 5 )--Коготь йети
	MisCancelAction(ClearMission, 698)

	MisNeed(MIS_NEED_ITEM, 4446, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы их убили? Ха-ха-ха! Не смешите! Я не вижу доказательств их смерти!" )
	MisResultTalk( "<t>Вы заслужили награду!" )
	MisResultCondition(NoRecord, 698)
	MisResultCondition(HasMission, 698)
	MisResultCondition(HasItem, 4446, 5)
	MisResultAction(TakeItem, 4446, 5 )
	MisResultAction(ClearMission, 698)
	MisResultAction(SetRecord, 698)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,849,849)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4446 )	
	TriggerAction( 1, AddNextFlag, 698, 10, 5 )
	RegCurTrigger( 6981 )

----------------------------------Хрю-хрю
	DefineMission( 699, "\213\240\254-\245\240\254!", 699 )
	
	MisBeginTalk( "<t>Ой,Ой! Мне страшно! Я боюсь Выходить за пределы Ледыни! Эти Летающие Свинокрылы меня пугают! Убейте <r10 Боевых свинокрылов> в точке(1453,560), чтобы я мог спокойно сам выходить за пределы городских стен!" )
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 699)
	MisBeginCondition(NoRecord, 699)
	MisBeginAction(AddMission, 699)
	MisBeginAction(AddTrigger, 6991, TE_KILL, 296, 10 )--Боевой свинокрыл
	MisCancelAction(ClearMission, 699)

	MisNeed(MIS_NEED_KILL, 296, 10, 10, 10)
	
	MisHelpTalk( "<t>Идите на конец и покончите с Боевыми Свинокрылами!" )
	MisResultTalk( "<t>Ой! Я даже не знаю как Вас и благодарить!" )
	MisResultCondition(NoRecord, 699)
	MisResultCondition(HasMission, 699)
	MisResultCondition(HasFlag, 699, 19 )
	MisResultAction(ClearMission, 699)
	MisResultAction(SetRecord, 699)
	MisResultAction(AddExp, 3900, 3900)
	MisResultAction(AddMoney,431,431)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 296 )	
	TriggerAction( 1, AddNextFlag, 699, 10, 10 )
	RegCurTrigger( 6991 )

----------------------------------Игривая снегурка
	DefineMission( 800, "\200\227\240\232\226\224\255 \241\237\229\227\243\240\234\224", 800 )
	
	MisBeginTalk( "<t>Я тут отвечаю за безопасность туристов и иностранцев! Но даже я не в силах справиться самостоятельно с проблемой <rИгривой снегурки>. Они так разыгрались, что нападают на всех, думая что это всего лишь игра, но уже очень много людей попало в больницы из-за их развлечений! Отправляйтесь в точку(1746,530) и накажите <r10 Игривых Снегурок>!" )
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 800)
	MisBeginCondition(NoRecord, 800)
	MisBeginAction(AddMission, 800)
	MisBeginAction(AddTrigger, 8001, TE_KILL, 257, 10 )--Игривая снегурка
	MisCancelAction(ClearMission, 800)

	MisNeed(MIS_NEED_KILL, 257, 10, 10, 10)
	
	MisHelpTalk( "<t>Эх! Бедные туристы!" )
	MisResultTalk( "<t>Я Вам очень благодарен! Вы можете обращаться ко мне за помощью теперь." )
	MisResultCondition(NoRecord, 800)
	MisResultCondition(HasMission, 800)
	MisResultCondition(HasFlag, 800, 19 )
	MisResultAction(ClearMission, 800)
	MisResultAction(SetRecord, 800)
	MisResultAction(AddExp, 4900, 4900)
	MisResultAction(AddMoney,446,446)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 257 )	
	TriggerAction( 1, AddNextFlag, 800, 10, 10 )
	RegCurTrigger( 8001 )

-----------------------------------Самоцвет духа
	DefineMission( 801, "\209\224\236\238\246\226\229\242 \228\243\245\224", 801 )
	
	MisBeginTalk( "<t>Всё больше и больше несчастных случаев происходит в мире. С этим надо что-то делать! Люди стали пропадать в точке(1746,530). В тех местах обитают <rИгривые снегурки> и возможно именно они имеют к этому непосредственное отношение.<n><t>Отправляйтесь в точку(1746,530) и принесите мне с <rИгривых снегурок> <y5 Самоцветов духа>, что бы выяснить причастны они в исчезновениях людей или нет." )
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 801)
	MisBeginCondition(NoRecord, 801)
	MisBeginAction(AddMission, 801)
	MisBeginAction(AddTrigger, 8011, TE_GETITEM, 4108, 5 )--Самоцвет духа(Игривая снегурка)Квестовый лут
	MisCancelAction(ClearMission, 801)

	MisNeed(MIS_NEED_ITEM, 4108, 5, 10, 5)
	
	MisHelpTalk( "<t>Вы мне ещё не принесли 5 <yСамоцветов духа>?" )
	MisResultTalk( "<t>Ох! Спасибо Вам!<n><t>Я сейчас же отправлю Самоцветы Духа в город для более тщательного расследования!" )
	MisResultCondition(NoRecord, 801)
	MisResultCondition(HasMission, 801)
	MisResultCondition(HasItem, 4108, 5)
	MisResultAction(TakeItem, 4108, 5 )
	MisResultAction(ClearMission, 801)
	MisResultAction(SetRecord, 801)
	MisResultAction(AddExp, 5500, 5500)
	MisResultAction(AddMoney,907,907)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4108 )	
	TriggerAction( 1, AddNextFlag, 801, 10, 5 )
	RegCurTrigger( 8011 )

----------------------------------Убийства невинных
	DefineMission( 802, "\211\225\232\233\241\242\226\224 \237\229\226\232\237\237\251\245", 802 )
	
	MisBeginTalk( "<t>Я хочу, чтобы Вы убили <r10 Боевых черепах> для меня! Особых причин нет, просто они мне не нравятся.<n><t>Я Вас отблагодарю." )
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 802)
	MisBeginCondition(NoRecord, 802)
	MisBeginAction(AddMission, 802)
	MisBeginAction(AddTrigger, 8021, TE_KILL, 141, 10 )--Боевая черепаха
	MisCancelAction(ClearMission, 802)

	MisNeed(MIS_NEED_KILL, 141, 10, 10, 10)
	
	MisHelpTalk( "<t>Мне кажется, что Вы взялись мне помочь. Я не вижу Вашей помощи." )
	MisResultTalk( "<t>Отлично! Вот Ваша награда." )
	MisResultCondition(NoRecord, 802)
	MisResultCondition(HasMission, 802)
	MisResultCondition(HasFlag, 802, 19 )
	MisResultAction(ClearMission, 802)
	MisResultAction(SetRecord, 802)
	MisResultAction(AddExp, 6200, 6200)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 141 )	
	TriggerAction( 1, AddNextFlag, 802, 10, 10 )
	RegCurTrigger( 8021 )

-----------------------------------Вечная рана
	DefineMission( 803, "\194\229\247\237\224\255 \240\224\237\224", 803 )
	
	MisBeginTalk( "<t>Не так давно я был ранен <rСкелетом воином>. И если бы не морозы я так бы и истекал кровью, но здешний климат не позволяет быстро циркулировать кровь и рана начала заживать.<n><t>Но! у меня началась гангрена и я слышал, что <yПоджаренный черепаший панцирь> из <rСнежной черепахи> обитающей в точке(2165,462)способен избавить меня от гниения.<n><t>Принесите мне <y5 Поджаренных черепашьих панцирей>!" )
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 803)
	MisBeginCondition(NoRecord, 803)
	MisBeginAction(AddMission, 803)
	MisBeginAction(AddTrigger, 8031, TE_GETITEM, 4468, 5 )--Поджаренный черепаший панцирь
	MisCancelAction(ClearMission, 803)

	MisNeed(MIS_NEED_ITEM, 4468, 5, 10, 5)
	
	MisHelpTalk( "<t>Если Вы мне не принесёте 5 Поджаренных черепаших панцирей, то я умру от гангрены!" )
	MisResultTalk( " Спасибо Вам, Вы спасли мне жизнь." )
	MisResultCondition(NoRecord, 803)
	MisResultCondition(HasMission, 803)
	MisResultCondition(HasItem, 4468, 5)
	MisResultAction(TakeItem, 4468, 5 )
	MisResultAction(ClearMission, 803)
	MisResultAction(SetRecord, 803)
	MisResultAction(AddExp, 6900, 6900)
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4468 )	
	TriggerAction( 1, AddNextFlag, 803, 10, 5 )
	RegCurTrigger( 8031 )

----------------------------------Сумасшедшая овца
	DefineMission( 804, "\209\243\236\224\241\248\229\228\248\224\255 \238\226\246\224", 804 )
	
	MisBeginTalk( "<t>Эй, вы видели эти <rБезумных овец> в точке(226,590)? Я слышал, что они были простыми овцами, но из-за гнева Богини Кары мутировали в этих ужасных монстров!<n><t>Это само воплощение зла и наказание людям за грехи.<n><t>Друг мой, помоги нам и избавь от этого проклятия наш посёлок! Убей <r10 Безумных овец>. Этим мы сделаем вызов Богам! Вам не интересно?!" )
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 804)
	MisBeginCondition(NoRecord, 804)
	MisBeginAction(AddMission, 804)
	MisBeginAction(AddTrigger, 8041, TE_KILL, 297, 10 )--Безумная овца
	MisCancelAction(ClearMission, 804)

	MisNeed(MIS_NEED_KILL, 297, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы ещё не убили 10 Безумных овец?" )
	MisResultTalk( "<t>Спасибо за помошь! Не бойтесь гнева Богов!" )
	MisResultCondition(NoRecord, 804)
	MisResultCondition(HasMission, 804)
	MisResultCondition(HasFlag, 804, 19 )
	MisResultAction(ClearMission, 804)
	MisResultAction(SetRecord, 804)
	MisResultAction(AddExp, 7700, 7700)
	MisResultAction(AddMoney,477,477)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 297 )	
	TriggerAction( 1, AddNextFlag, 804, 10, 10 )
	RegCurTrigger( 8041 )

-----------------------------------	Яд скорпиона
	DefineMission( 805, "\223\228 \241\234\238\240\239\232\238\237\224", 805 )
	
	MisBeginTalk( "<t>Привет! Вы как раз вовремя! Моя подруга <bНана> была ужалена скорпионом и сейчас лежит в коме. Что бы спасти её мне нужно <y5 Крови скорпиона> из <rСвирепых скорпионов> в точке(2370,548).Я бы и сам сходил но не могу оставить Нану одну. Вы мне поможете?" )
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(NoMission, 805)
	MisBeginCondition(NoRecord, 805)
	MisBeginAction(AddMission, 805)
	MisBeginAction(AddTrigger, 8051, TE_GETITEM, 4482, 5 )--Кровь скорпиона
	MisCancelAction(ClearMission, 805)

	MisNeed(MIS_NEED_ITEM, 4482, 5, 10, 5)
	
	MisHelpTalk( "<t>Моей подруге поможет только <yКровь скорпиона> прийти в себя!" )
	MisResultTalk( "<t>Спасибо! Вы спасли её!" )
	MisResultCondition(NoRecord, 805)
	MisResultCondition(HasMission, 805)
	MisResultCondition(HasItem, 4482, 5)
	MisResultAction(TakeItem, 4482, 5 )
	MisResultAction(ClearMission, 805)
	MisResultAction(SetRecord, 805)
	MisResultAction(AddExp, 8600, 8600)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4482 )	
	TriggerAction( 1, AddNextFlag, 805, 10, 5 )
	RegCurTrigger( 8051 )

----------------------------------їЄВ·ПИ·ж
----------------------------------Первооткрыватель
	DefineMission( 806, "\207\229\240\226\238\238\242\234\240\251\226\224\242\229\235\252", 806 )
	
	MisBeginTalk( "<t>Привет! Вы вовремя!<n><t>Мы хотим отправиться с Наной в путешествие в неизведанные страны, но на нашем пути появилось серьёзное препятствие!<n><t>В точке(1981,530) обитают <rПолярные медведи>. Они очень опасные и могут убить человека. Пожалуйста убейте <r10 Полярных медведей> и освободите нам дорогу. Мы щедро Вас отблагодарим." )
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 806)
	MisBeginCondition(NoRecord, 806)
	MisBeginAction(AddMission, 806)
	MisBeginAction(AddTrigger, 8061, TE_KILL, 259, 10 )--Полярный медведь
	MisCancelAction(ClearMission, 806)

	MisNeed(MIS_NEED_KILL, 259, 10, 10, 10)
	
	MisHelpTalk( "<t>Я Вас попросил очистить нам дорогу от полярных медведей." )
	MisResultTalk( "<t>Спасибо Вам! Теперь мы можем отправляться в путешествие!" )
	MisResultCondition(NoRecord, 806)
	MisResultCondition(HasMission, 806)
	MisResultCondition(HasFlag, 806, 19 )
	MisResultAction(ClearMission, 806)
	MisResultAction(SetRecord, 806)
	MisResultAction(AddExp, 9600, 9600)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 259 )	
	TriggerAction( 1, AddNextFlag, 806, 10, 10 )
	RegCurTrigger( 8061 )

-----------------------------------Призрачный меч
	DefineMission( 807, "\207\240\232\231\240\224\247\237\251\233 \236\229\247", 807 )
	
	MisBeginTalk( "<t>Привет! Вы знаете почему рядом с (2269,590) бродят Призрачные мечники? Они охраняют <yПризрачный меч>. Мне очень очень хочется посмотреть на него. Принесите мне его за вознаграждение." )
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 807)
	MisBeginCondition(NoRecord, 807)
	MisBeginAction(AddMission, 807)
	MisBeginAction(AddTrigger, 8071, TE_GETITEM, 4109, 1 )--Призрачный меч(квестовый лут)
	MisCancelAction(ClearMission, 807)

	MisNeed(MIS_NEED_ITEM, 4109, 1, 10, 1)
	
	MisHelpTalk( "<t>Я ещё не видел призрачный меч!" )
	MisResultTalk( "<t>Ваа! Он прекрасен!" )
	MisResultCondition(NoRecord, 807)
	MisResultCondition(HasMission, 807)
	MisResultCondition(HasItem, 4109, 1)
	MisResultAction(TakeItem, 4109, 1 )
	MisResultAction(ClearMission, 807)
	MisResultAction(SetRecord, 807)
	MisResultAction(AddExp, 9600, 9600)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4109 )	
	TriggerAction( 1, AddNextFlag, 807, 10, 1 )
	RegCurTrigger( 8071 )

----------------------------------Душа воина
	DefineMission( 808, "\196\243\248\224 \226\238\232\237\224", 808 )
	
	MisBeginTalk( "<t>Может я экстрасенс, так как я слышу стоны погибших воинов. Эти стоны не дают мне покоя! В точке(2269,470) они особенно сильные.<n><t>Я думаю эти стоны издают <rСкелеты-воины>. Пожалуйста отправляйтесь в точку(2269,470) и убейте 10 Скелетов-воинов, что бы отправить их в мир иной и что бы они не мучились на этой земле." )
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 808)
	MisBeginCondition(NoRecord, 808)
	MisBeginAction(AddMission, 808)
	MisBeginAction(AddTrigger, 8081, TE_KILL, 268, 10 )--Скелет-воин
	MisCancelAction(ClearMission, 808)

	MisNeed(MIS_NEED_KILL, 268, 10, 10, 10)
	
	MisHelpTalk( "<t>Я всё ещё слышу стоны!" )
	MisResultTalk( "<t>Вы очень добры! Спасибо вам." )
	MisResultCondition(NoRecord, 808)
	MisResultCondition(HasMission, 808)
	MisResultCondition(HasFlag, 808, 19 )
	MisResultAction(ClearMission, 808)
	MisResultAction(SetRecord, 808)
	MisResultAction(AddExp, 10600, 10600)
	MisResultAction(AddMoney,504,504)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 268 )	
	TriggerAction( 1, AddNextFlag, 808, 10, 10 )
	RegCurTrigger( 8081 )

----------------------------------Кровососущее существо
	DefineMission( 809, "\202\240\238\226\238\241\238\241\243\249\229\229 \241\243\249\229\241\242\226\238", 809 )
	
	MisBeginTalk( "<t>В <pСеребренных шахтах> обитает существо, которое питается человеческой кровью.<n><t>Шахтёры боятся там работать! Помогите нам убить <r10 Летучих мышей-вампиров>!" )
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 809)
	MisBeginCondition(NoRecord, 809)
	MisBeginAction(AddMission, 809)
	MisBeginAction(AddTrigger, 8091, TE_KILL, 82, 10 )--Летучая мышь-вампир
	MisCancelAction(ClearMission, 809)

	MisNeed(MIS_NEED_KILL, 82, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы ещё не убили их, шахтёры в опасности." )
	MisResultTalk( "<t>Спасибо Вам за помощь!" )
	MisResultCondition(NoRecord, 809)
	MisResultCondition(HasMission, 809)
	MisResultCondition(HasFlag, 809, 19 )
	MisResultAction(ClearMission, 809)
	MisResultAction(SetRecord, 809)
	MisResultAction(AddExp, 3500, 3500)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 82 )	
	TriggerAction( 1, AddNextFlag, 809, 10, 10 )
	RegCurTrigger( 8091 )

-----------------------------------Каска крота-рудокопа
	DefineMission( 810, "\202\224\241\234\224 \234\240\238\242\224-\240\243\228\238\234\238\239\224", 810 )
	
	MisBeginTalk( "<t>Я хочу пойти с Лулу в Шахты поиграть, но нас не пускают Шахтёры из-за того, что на нас нет Касок! Не помогли бы Вы нам? Принесите <y2 Каски крота-рудокопа>, что бы нас пропустили в шахты. Мы Вас отблагодарим.<n><t>Эти каски Вы сможете получить убив Крота рудокопа!" )
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 810)
	MisBeginCondition(NoRecord, 810)
	MisBeginAction(AddMission, 810)
	MisBeginAction(AddTrigger, 8101, TE_GETITEM, 4448, 2 )--Каска крота-рудокопа
	MisCancelAction(ClearMission, 810)

	MisNeed(MIS_NEED_ITEM, 4448, 2, 10, 2)
	
	MisHelpTalk( "<t>Как же Вы не поймёте, что без касок нас не пустят в Шахты!?" )
	MisResultTalk( "<t>Спасибо Вам!" )
	MisResultCondition(NoRecord, 810)
	MisResultCondition(HasMission, 810)
	MisResultCondition(HasItem, 4448, 2)
	MisResultAction(TakeItem, 4448, 2 )
	MisResultAction(ClearMission, 810)
	MisResultAction(SetRecord, 810)
	MisResultAction(AddExp, 4900, 4900)
	MisResultAction(AddMoney,892,892)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4448 )	
	TriggerAction( 1, AddNextFlag, 810, 10, 2 )
	RegCurTrigger( 8101 )


-----------------------------------Таинственная грязь
	DefineMission( 811, "\210\224\232\237\241\242\226\229\237\237\224\255 \227\240\255\231\252", 811 )
	
	MisBeginTalk( "<t>Я в шоке! Меня атаковала какая-то мерзкая куча грязи! Её шахтёры называют <rГрязилищем>. Я даже не могла представить, что комок грязи может жить, и тем более нападать на людей! Принесите мне с <rГрязилища> <y5 Грязных липких кексов>, что бы более подробно изучить этот феномен." )
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 811)
	MisBeginCondition(NoRecord, 811)
	MisBeginAction(AddMission, 811)
	MisBeginAction(AddTrigger, 8111, TE_GETITEM, 4363, 5 )--Грязный липкий кекс
	MisCancelAction(ClearMission, 811)

	MisNeed(MIS_NEED_ITEM, 4363, 5, 10, 5)
	
	MisHelpTalk( "<t>Отправляйтесь в <pШахты> и прнесите мне от туда <y5 Грязных липких кексов>!" )
	MisResultTalk( "<t>Ох спасибо Вам! Я небедленно начну ставить опыты с этой грязью!" )
	MisResultCondition(NoRecord, 811)
	MisResultCondition(HasMission, 811)
	MisResultCondition(HasItem, 4363, 5)
	MisResultAction(TakeItem, 4363, 5 )
	MisResultAction(ClearMission, 811)
	MisResultAction(SetRecord, 811)
	MisResultAction(AddExp, 5500, 5500)
	MisResultAction(AddMoney,907,907)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4363 )	
	TriggerAction( 1, AddNextFlag, 811, 10, 5 )
	RegCurTrigger( 8111 )

----------------------------------Месть грязи
	DefineMission( 812, "\204\229\241\242\252 \227\240\255\231\232", 812 )
	
	MisBeginTalk( "<t>Я хотел в <pСеребренных Шахтах> немного по добывать Руды, но на меня напали <rГрязилища>. Вы не могли бы убить 10 Грязилищь в точке(934,2747), что бы можно было без боязни Грязилищь добывать руду?" )
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 812)
	MisBeginCondition(NoRecord, 812)
	MisBeginAction(AddMission, 812)
	MisBeginAction(AddTrigger, 8121, TE_KILL, 253, 10 )--Грязилище
	MisCancelAction(ClearMission, 812)

	MisNeed(MIS_NEED_KILL, 253, 10, 10, 10)
	
	MisHelpTalk( "<t>Мне до сих пор страшно!" )
	MisResultTalk( "<t>Спасибо, спасибо вам!" )
	MisResultCondition(NoRecord, 812)
	MisResultCondition(HasMission, 812)
	MisResultCondition(HasFlag, 812, 19 )
	MisResultAction(ClearMission, 812)
	MisResultAction(SetRecord, 812)
	MisResultAction(AddExp, 6200, 6200)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 253 )	
	TriggerAction( 1, AddNextFlag, 812, 10, 10 )
	RegCurTrigger( 8121 )


----------------------------------Крот-рудокоп
	DefineMission( 813, "\202\240\238\242-\240\243\228\238\234\238\239", 813 )
	
	MisBeginTalk( "<t>Я, как раз заканчивал свои исследования в <pСеребренных шахтах>, как на меня напали <rКроты-рудокопы>. Не помогли бы Вы мне с завершением моих исследований? Убейте <r10 Кротов Рудокопов> мешающих моим исследованиям!" )
	MisBeginCondition(LvCheck, ">", 35 )
	MisBeginCondition(NoMission, 813)
	MisBeginCondition(NoRecord, 813)
	MisBeginAction(AddMission, 813)
	MisBeginAction(AddTrigger, 8131, TE_KILL, 88, 10 )--Крот-рудокоп
	MisCancelAction(ClearMission, 813)

	MisNeed(MIS_NEED_KILL, 88, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы не убили ещё 10 Кротов Рудокопов!" )
	MisResultTalk( "<t>Спасибо! Вы мне очень помогли!" )
	MisResultCondition(NoRecord, 813)
	MisResultCondition(HasMission, 813)
	MisResultCondition(HasFlag, 813, 19 )
	MisResultAction(ClearMission, 813)
	MisResultAction(SetRecord, 813)
	MisResultAction(AddExp, 6900, 6900)
	MisResultAction(AddMoney,469,469)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 88 )	
	TriggerAction( 1, AddNextFlag, 813, 10, 10 )
	RegCurTrigger( 8131 )

-----------------------------------Меч ниндзя
	DefineMission( 814, "\204\229\247 \237\232\237\228\231\255", 814 )
	
	MisBeginTalk( "<t><rКрот-нинзя> использует уникальное оружие. Это оружие носит название <yМеч ниндзя>. Это очень хорошее оружие, оно опасное и, в то же время, точно бьющее.<n><t>Принесите мне <y10 мечей ниндзя>. Кротов нинзя Вы встретите в <pСеребренных шахтах 2>. Я буду ждать Вас тут!" )
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 814)
	MisBeginCondition(NoRecord, 814)
	MisBeginAction(AddMission, 814)
	MisBeginAction(AddTrigger, 8141, TE_GETITEM, 3935, 10 )--Меч ниндзя
	MisCancelAction(ClearMission, 814)

	MisNeed(MIS_NEED_ITEM, 3935, 10, 10, 10)
	
	MisHelpTalk( "<t>Вы ещё не принеси мне Меч Ниндзя?" )
	MisResultTalk( "<t>Я очень Вам благодарен!" )
	MisResultCondition(NoRecord, 814)
	MisResultCondition(HasMission, 814)
	MisResultCondition(HasItem, 3935, 10)
	MisResultAction(TakeItem, 3935, 10 )
	MisResultAction(ClearMission, 814)
	MisResultAction(SetRecord, 814)
	MisResultAction(AddExp, 8600, 8600)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3935 )	
	TriggerAction( 1, AddNextFlag, 814, 10, 10 )
	RegCurTrigger( 8141 )

-----------------------------------Тест
	DefineMission( 837, "\210\229\241\242", 837 )
	
	MisBeginTalk( "<t>Вы в первые в <pХолдейском оплоте>? Я уверен, что Вы ищите приключения и работу.<n><t>Почему бы Вам не пройти моё испытание и если у вас получится я дам для Вас работу!.<n><t>Убейте <r5 Опытных туземных воинов> и возвращайтесь ко мне." )
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 837)
	MisBeginCondition(NoRecord, 837)
	MisBeginAction(AddMission, 837)
	MisBeginAction(AddTrigger, 8371, TE_KILL, 248, 5 )--Опытный туземный воин
	MisCancelAction(ClearMission, 837)

	MisNeed(MIS_NEED_DESP, "Help Simon Gilter at (646, 2088) to get rid of 5 Tribal Warriors")
	MisNeed(MIS_NEED_KILL, 248, 5, 10, 5)

	MisHelpTalk( "Вы не прошли моё испытание! Попробуйте ещё раз сходить и убить 5 Опытных туземных воинов!" )
	MisResultTalk( "Хорошо! Вы заслужили моё доверие." )
	MisResultCondition(NoRecord, 837)
	MisResultCondition(HasMission, 837)
	MisResultCondition(HasFlag, 837, 14)
	MisResultAction(ClearMission, 837)
	MisResultAction(SetRecord, 837)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 248 )	
	TriggerAction( 1, AddNextFlag, 837, 10, 5 )
	RegCurTrigger( 8371 )


-----------------------------------Тест2
	DefineMission( 838, "\210\229\241\242 2", 838 )
	
	MisBeginTalk( "<t>Хотя... Убить <r5 Опытных туземных воинов> а вот с армией из <r30 Опытных туземных воинов> справиться ни каждый! Докажи что ты не трус и убей <r30 Опытных туземных воинов>." )
	--MisBeginCondition(LvCheck, ">", 40 )
	MisBeginCondition(HasRecord, 837)
	MisBeginCondition(NoMission, 838)
	MisBeginCondition(NoRecord, 838)
	MisBeginAction(AddMission, 838)
	MisBeginAction(AddTrigger, 8381, TE_KILL, 248, 30 )--Опытный туземный воин
	MisCancelAction(ClearMission, 838)
	
	MisNeed(MIS_NEED_DESP, "Help Simon Gilter at (646, 2088) to get rid of 30 Tribal Warriors")
	MisNeed(MIS_NEED_KILL, 248, 30, 10, 30)
	
	MisHelpTalk( " Вы ещё не доказали мне что Вы не простой проходимец!" )
	MisResultTalk( " Вы оказались достойным войном!" )
	MisResultCondition(NoRecord, 838)
	MisResultCondition(HasMission, 838)
	MisResultCondition(HasFlag, 838, 39)
	MisResultAction(ClearMission, 838)
	MisResultAction(SetRecord, 838)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 248 )	
	TriggerAction( 1, AddNextFlag, 838, 10, 30 )
	RegCurTrigger( 8381 )


-----------------------------------Работа
	DefineMission( 839, "\208\224\225\238\242\224", 839 )
	
	MisBeginTalk( "<t>Отлично! Я вижу, что вы готовы к тому, что бы я дал для Вас работу! Отнеситесь со всей серьёзностью к ней!<n><t>Я собираю коллекционные предметы, и в моей коллекции не хватает <yТуземного щита>. Принесите мне <y12 Туземных щитов>, что бы я смог выбрать самый хороший из них." )
	--MisBeginCondition(LvCheck, ">", 40 )
	MisBeginCondition(HasRecord, 838)
	MisBeginCondition(NoMission, 839)
	MisBeginCondition(NoRecord, 839)
	MisBeginAction(AddMission, 839)
	MisBeginAction(AddTrigger, 8391, TE_GETITEM, 4914, 12 )--Туземный щит
	MisCancelAction(ClearMission, 839)
	
	MisNeed(MIS_NEED_DESP, " Принести <bСимону Гилтеру> в точку(646,2088) <12 Туземных щитов>." )
	MisNeed(MIS_NEED_ITEM, 4914, 12, 10, 12)
	
	MisHelpTalk( " Вы ещё не принесли мне 12 Туземных Щитов." )
	MisResultTalk( "<t>О Боже! Все 12 Щитов такие прекрасные, что я теряюсь в выборе! Спасибо Вам большое." )
	MisResultCondition(NoRecord, 839)
	MisResultCondition(HasMission, 839)
	MisResultCondition(HasItem, 4914, 12)
	MisResultAction(TakeItem, 4914, 12)
	MisResultAction(ClearMission, 839)
	MisResultAction(SetRecord, 839)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,10026,10026)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4914 )	
	TriggerAction( 1, AddNextFlag, 839, 10, 12 )
	RegCurTrigger( 8391 )



-----------------------------------Энтузиаст-----Азур Бриз---Холдея--
	DefineMission( 840, "\221\237\242\243\231\232\224\241\242", 840 )
	
	MisBeginTalk( "<t>Привет! Я занимаюсь искусным делом. Я вырезаю из корней деревьев красивые поделки, такие как: вазы, вешалки и ещё много чего.<n><t>У меня закончились корни, не могли бы Вы принести мне <y5 Высохших корней> из <rЭнта>?" )
	MisBeginCondition(LvCheck, ">", 42 )
	--MisBeginCondition(HasRecord, 838)
	MisBeginCondition(NoMission, 840)
	MisBeginCondition(NoRecord, 840)
	MisBeginAction(AddMission, 840)
	MisBeginAction(AddTrigger, 8401, TE_GETITEM, 4915, 5 )--Высохший корень
	MisCancelAction(ClearMission, 840)
	
	MisNeed(MIS_NEED_DESP, " Принести <y5 Высохших корней> <bАзур Бриз> в точку (622,2106)" )
	MisNeed(MIS_NEED_ITEM, 4915, 5, 10, 5)
	
	MisHelpTalk( " Спасибо что решили мне помочь! Принесите мне 5 Высохших корней." )
	MisResultTalk( " Спасибо! Следущую вещь которую я сделаю это будет Ваша статуя!" )
	MisResultCondition(NoRecord, 840)
	MisResultCondition(HasMission, 840)
	MisResultCondition(HasItem, 4915, 5)
	MisResultAction(TakeItem, 4915, 5)
	MisResultAction(ClearMission, 840)
	MisResultAction(SetRecord, 840)
	MisResultAction(AddExp,19294,19294)	
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 840, 10, 5 )
	RegCurTrigger( 8401 )

-----------------------------------Сбор образцов---Са Мори--холдея---
	DefineMission( 841, "\209\225\238\240 \238\225\240\224\231\246\238\226", 841 )
	
	MisBeginTalk( "<t>Вы знаете как сделать так, что бы свечи горели всегда? Они сделаны из специальных корней, которые можно найти к востоку от сюда. Однако, на пути будет очень много страшных монстров." )
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 841)
	MisBeginCondition(NoRecord, 841)
	MisBeginAction(AddMission, 841)
	MisBeginAction(AddTrigger, 8411, TE_GETITEM, 4915, 1 )--Высохший корень
	MisBeginAction(AddTrigger, 8412, TE_KILL, 107, 5 )------Энт
	MisCancelAction(ClearMission, 841)
	
	MisNeed(MIS_NEED_DESP, " Убить <r5 Энтов> и принести один <yВысохший корень> <bСа Мори> в точку(628,2095)." )
	MisNeed(MIS_NEED_ITEM, 4915, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 107, 5, 10, 5)
	
	MisHelpTalk( " Принесите мне всё необходимое, что бы я сделала свечки, которые будут гореть всё вечно!" )
	MisResultTalk( " Спасибо Вам! Возможно в будующем Вы их увидете!" )
	MisResultCondition(NoRecord, 841)
	MisResultCondition(HasMission, 841)
	MisResultCondition(HasItem, 4915, 1)
	MisResultCondition(HasFlag, 841, 14)
	MisResultAction(TakeItem, 4915, 1)
	MisResultAction(ClearMission, 841)
	MisResultAction(SetRecord, 841)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 841, 20, 1 )
	RegCurTrigger( 8411 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	107 )	
	TriggerAction( 1, AddNextFlag, 841, 10, 5 )
	RegCurTrigger( 8412 )

-----------------------------------Вечное пламя свечей
	DefineMission( 842, "\194\229\247\237\238\229 \239\235\224\236\255 \241\226\229\247\229\233", 842 )
	
	MisBeginTalk( "<t>Я только что закончила изучать метод изготовления вечно-горящих свечей. Я хочу попробовать приготовить большую партию свечей, для этого мне надо <y15 Высохших корней>." )
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 841)
	MisBeginCondition(NoMission, 842)
	MisBeginCondition(NoRecord, 842)
	MisBeginAction(AddMission, 842)
	MisBeginAction(AddTrigger, 8421, TE_GETITEM, 4915, 15 )--Высохший корень
	MisCancelAction(ClearMission, 842)
	
	MisNeed(MIS_NEED_DESP, " Принести <y15 высохших корней> <bСа Мори> в точку(628,2095)." )
	MisNeed(MIS_NEED_ITEM, 4915, 15, 10, 15)
	
	MisHelpTalk( " Принесите мне игредиенты для изготовления свечей и я поделюсь с Вами доходом с их продаж!" )
	MisResultTalk( " Спасибо! Вот Ваша доля!" )
	MisResultCondition(NoRecord, 842)
	MisResultCondition(HasMission, 842)
	MisResultCondition(HasItem, 4915, 15)
	MisResultAction(TakeItem, 4915, 15)
	MisResultAction(ClearMission, 842)
	MisResultAction(SetRecord, 842)
	MisResultAction(AddExp,19294,19294)	
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 842, 10, 15 )
	RegCurTrigger( 8421 )

-----------------------------------єЪЙ«№ЦКЮ
-----------------------------------Черный монстр
	DefineMission( 843, "\215\229\240\237\251\233 \236\238\237\241\242\240", 843 )
	
	MisBeginTalk( "<t>Не так давно я видел в здешних лесах Чёрных монстров со свечами на головах. Именно их свечи и заинтересовали меня.<n><t>Принесите мне 1 <yИспользованную свечу> и убейте <r5 Темных грязилищ>. После чего возвращайтесь ко мне за наградой!" )
	MisBeginCondition(LvCheck, ">", 42 )
	--MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 843)
	MisBeginCondition(NoRecord, 843)
	MisBeginAction(AddMission, 843)
	MisBeginAction(AddTrigger, 8431, TE_GETITEM, 4823, 1 )--Использованная свеча
	MisBeginAction(AddTrigger, 8432, TE_KILL, 503, 5 )------Темное грязилище
	MisCancelAction(ClearMission, 843)
	
	MisNeed(MIS_NEED_DESP, " Убейте <r5 Тёмных Грязилищ> и пренисите 1 <yИспользованную Свечу> в точку (628,2095)" )
	MisNeed(MIS_NEED_ITEM, 4823, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 503, 5, 10, 5)
	
	MisHelpTalk( " Эти существа обитают в здешних лесах." )
	MisResultTalk( " Спасибо Вам большое!" )
	MisResultCondition(NoRecord, 843)
	MisResultCondition(HasMission, 843)
	MisResultCondition(HasItem, 4823, 1)
	MisResultCondition(HasFlag, 843, 14)
	MisResultAction(TakeItem, 4823, 1)
	MisResultAction(ClearMission, 843)
	MisResultAction(SetRecord, 843)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4823 )	
	TriggerAction( 1, AddNextFlag, 843, 20, 1 )
	RegCurTrigger( 8431 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	503 )	
	TriggerAction( 1, AddNextFlag, 843, 10, 5 )
	RegCurTrigger( 8432 )

-----------------------------------Исследование свечей
	DefineMission( 844, "\200\241\241\235\229\228\238\226\224\237\232\229 \241\226\229\247\229\233", 844 )
	
	MisBeginTalk( "<t>Я изучил Свечку которую Вы мне принесли и пришёл к выводу, что эти свечи обладают магической силой. Но одной свечки мне мало для точного вывода, по этому принесите мне больше свечей!" )
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 843)
	MisBeginCondition(NoMission, 844)
	MisBeginCondition(NoRecord, 844)
	MisBeginAction(AddMission, 844)
	MisBeginAction(AddTrigger, 8441, TE_GETITEM, 4823, 10 )--Использованная свеча
	MisCancelAction(ClearMission, 844)
	
	MisNeed(MIS_NEED_DESP, "<t>Принести в точку (628,2095) 10 Использованных свечей!" )
	MisNeed(MIS_NEED_ITEM, 4823, 10, 10, 10)
	
	MisHelpTalk( " Я жду когда Вы мне принесёте 10 Использованных свечей!" )
	MisResultTalk( " Спасибо! Я немедленно приступаю к экспериментам!" )
	MisResultCondition(NoRecord, 844)
	MisResultCondition(HasMission, 844)
	MisResultCondition(HasItem, 4823, 10)
	MisResultAction(TakeItem, 4823, 10)
	MisResultAction(ClearMission, 844)
	MisResultAction(SetRecord, 844)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4823 )	
	TriggerAction( 1, AddNextFlag, 844, 10, 10 )
	RegCurTrigger( 8441 )


-----------------------------------Гранитный голем
	DefineMission( 845, "\195\240\224\237\232\242\237\251\233 \227\238\235\229\236", 845 )
	
	MisBeginTalk( "<t>В здешних местах участились нападения на людей от <rГранитных Големов>.<n><t>Идите и убейте <r5 Гранитных Голема> и принесите в знак доказательства <y1 кусок мерцающего камня>!" )
	MisBeginCondition(LvCheck, ">", 45 )
	--MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 845)
	MisBeginCondition(NoRecord, 845)
	MisBeginAction(AddMission, 845)
	MisBeginAction(AddTrigger, 8451, TE_GETITEM, 4825, 1 )--Кусок мерцающего камня
	MisBeginAction(AddTrigger, 8452, TE_KILL, 505, 5 )------Гранитный голем
	MisCancelAction(ClearMission, 845)
	
	MisNeed(MIS_NEED_DESP, " Убейте <r5 Гранитных Големов> и принесите 1 <yКусок мерцающего камня> в точку(626,2100)." )
	MisNeed(MIS_NEED_ITEM, 4825, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 505, 5, 10, 5)
	
	MisHelpTalk( " Вы ещё не сделали то о чём я Вас попросил." )
	MisResultTalk( " Спасибо Вы мне помогли!" )
	MisResultCondition(NoRecord, 845)
	MisResultCondition(HasMission, 845)
	MisResultCondition(HasItem, 4825, 1)
	MisResultCondition(HasFlag, 845, 14)
	MisResultAction(TakeItem, 4825, 1)
	MisResultAction(ClearMission, 845)
	MisResultAction(SetRecord, 845)
	MisResultAction(AddExp,26112,26112)	
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4825 )	
	TriggerAction( 1, AddNextFlag, 845, 20, 1 )
	RegCurTrigger( 8451 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	505 )	
	TriggerAction( 1, AddNextFlag, 845, 10, 5 )
	RegCurTrigger( 8452 )

-----------------------------------Камень на экспертизу
	DefineMission( 846, "\202\224\236\229\237\252 \237\224 \253\234\241\239\229\240\242\232\231\243", 846 )
	
	MisBeginTalk( "<t>Тот камень, который Вы мне принесли обладает странными свойствами, он притягивает другие камни и оживляет их. Не принесёте мне ещё <y6 Кусоков мерцающего камня> для исследования?" )
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 845)
	MisBeginCondition(NoMission, 846)
	MisBeginCondition(NoRecord, 846)
	MisBeginAction(AddMission, 846)
	MisBeginAction(AddTrigger, 8461, TE_GETITEM, 4825, 6 )--Кусок мерцающего камня
	MisCancelAction(ClearMission, 846)
	
	MisNeed(MIS_NEED_DESP, " Принести <y6 Кусоков мерцающего камня> в точку(626,2100)" )
	MisNeed(MIS_NEED_ITEM, 4825, 6, 10, 6)
	
	MisHelpTalk( " Вы ещё не пробовали сходить за Кусокоми мерцающего камня?" )
	MisResultTalk( " Вы сыграли большую роль в этом исследованние." )
	MisResultCondition(NoRecord, 846)
	MisResultCondition(HasMission, 846)
	MisResultCondition(HasItem, 4825, 6)
	MisResultAction(TakeItem, 4825, 6)
	MisResultAction(ClearMission, 846)
	MisResultAction(SetRecord, 846)
	MisResultAction(AddExp,26112,26112)	
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4825 )	
	TriggerAction( 1, AddNextFlag, 846, 10, 6 )
	RegCurTrigger( 8461 )


-----------------------------------	Действительность
	DefineMission( 847, "\196\229\233\241\242\226\232\242\229\235\252\237\238\241\242\252", 847 )
	
	MisBeginTalk( "<t>Я бы ещё хотел провести независимое расследование о монстрах этих лесов и для этого мне нужна Ваша помошь!" )
	--MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 846)
	MisBeginCondition(NoMission, 847)
	MisBeginCondition(NoRecord, 847)
	MisBeginAction(AddMission, 847)
	MisBeginAction(AddTrigger, 8471, TE_GETITEM, 4917, 1 )--Непробиваемый шлем
	MisBeginAction(AddTrigger, 8472, TE_KILL, 267, 5 )------Неупокоенный воин
	MisCancelAction(ClearMission, 847)
	
	MisNeed(MIS_NEED_DESP, " Убейте <r5 Неупокоенных воинов> и пренесите 1 <yнепробиваемый шлем> <bКарину Ливингстону> в точку(626,2100)." )
	MisNeed(MIS_NEED_ITEM, 4917, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 267, 5, 10, 5)
	
	MisHelpTalk( " Пожалуйста сделайте то о чём я Вас попросил." )
	MisResultTalk(" Спасибо! Вы мне очень помогли." )
	MisResultCondition(NoRecord, 847)
	MisResultCondition(HasMission, 847)
	MisResultCondition(HasItem, 4917, 1)
	MisResultCondition(HasFlag, 847, 14)
	MisResultAction(TakeItem, 4917, 1)
	MisResultAction(ClearMission, 847)
	MisResultAction(SetRecord, 847)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4917 )	
	TriggerAction( 1, AddNextFlag, 847, 20, 1 )
	RegCurTrigger( 8471 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	267 )	
	TriggerAction( 1, AddNextFlag, 847, 10, 5 )
	RegCurTrigger( 8472 )


-----------------------------------Непробиваемый шлем
	DefineMission( 848, "\205\229\239\240\238\225\232\226\224\229\236\251\233 \248\235\229\236", 848 )
	
	MisBeginTalk( "<t>Если бы я смог понять из чего эти шлемы, то возможно я бы смог изготовлять их сам!" )
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 848)
	MisBeginCondition(NoRecord, 848)
	MisBeginAction(AddMission, 848)
	MisBeginAction(AddTrigger, 8481, TE_GETITEM, 4917, 10 )--Непробиваемый шлем
	MisCancelAction(ClearMission, 848)
	
	MisNeed(MIS_NEED_DESP, " Принести <y10 Непробиваемых шлемов> <bКарину Ливингстону> в точку(626,2100)" )
	MisNeed(MIS_NEED_ITEM, 4917, 10, 10, 10)
	
	MisHelpTalk( " Так Вы мне поможете или просто будете тратить моё время?!" )
	MisResultTalk( " Я смогу много заработать на изготовлении таких шлемов. Вот Ваша награда." )
	MisResultCondition(NoRecord, 848)
	MisResultCondition(HasMission, 848)
	MisResultCondition(HasItem, 4917, 10)
	MisResultAction(TakeItem, 4917, 10)
	MisResultAction(ClearMission, 848)
	MisResultAction(SetRecord, 848)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4917 )	
	TriggerAction( 1, AddNextFlag, 848, 10, 10 )
	RegCurTrigger( 8481 )

-----------------------------------Распад----Navy HQ - Полковник Макси
	DefineMission( 849, "\208\224\241\239\224\228", 849 )
	
	MisBeginTalk( "<t>Если Вы тут на экскурсии то Вы нашли самое не подходящее время! Наш Город находится в оцеплении ужасных монстров!<n><t>Если бы Вы смогли помочь нашему Городу я был бы Вам очень признателен.<n><t>Ослабьте силы противника убив <r20 Непобедимых Вервольф-воинов>." )
	MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(NoMission, 849)
	MisBeginCondition(NoRecord, 849)
	MisBeginAction(AddMission, 849)
	MisBeginAction(AddTrigger, 8491, TE_KILL, 513, 20 )--Непобедимый Вервольф-воин
	MisCancelAction(ClearMission, 849)

	MisNeed(MIS_NEED_DESP, " Убить <r20 Непобедимых Вервольф-воинов> и доложить о выполнении задачи <bПолковнику Макси> в точке(653,1505)" )
	MisNeed(MIS_NEED_KILL, 513, 20, 10, 20)

	MisHelpTalk(" Я ещё раз повторяю! Это Вам не экскурсия и если Вы решили нам помочь то помогайте! Нет... Так не крутитесь под ногами!" )
	MisResultTalk( " Спасибо! Вы сделали доброе дело!" )
	MisResultCondition(NoRecord, 849)
	MisResultCondition(HasMission, 849)
	MisResultCondition(HasFlag, 849, 29)
	MisResultAction(ClearMission, 849)
	MisResultAction(SetRecord, 849)
	MisResultAction(AddExp,31809,31809)
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 513 )	
	TriggerAction( 1, AddNextFlag, 849, 10, 20 )
	RegCurTrigger( 8491 )

-----------------------------------Кровожадный молот---Инструменты Уэсли
	DefineMission( 850, "\202\240\238\226\238\230\224\228\237\251\233 \236\238\235\238\242", 850 )
	
	MisBeginTalk( "<t>Я коллекционер! И я собираю только лучшее оружие. Не так давно я обратил внимание на <yКровожадный молот> у <rНепобедимого Вервольф-воина>, он великолепен! Принесите мне <y10 Кровожадных молотов>, что бы я мог выбрать из них самый лучший!" )
	MisBeginCondition(LvCheck, ">", 48 )
	--MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 850)
	MisBeginCondition(NoRecord, 850)
	MisBeginAction(AddMission, 850)
	MisBeginAction(AddTrigger, 8501, TE_GETITEM, 4833, 10 )--Кровожадный молот
	MisCancelAction(ClearMission, 850)
	
	MisNeed(MIS_NEED_DESP, " Принести <bУэсли> в точку(741,1563) <y10 Кровожадных молотов>." )
	MisNeed(MIS_NEED_ITEM, 4833, 10, 10, 10)
	
	MisHelpTalk( " Я же уже дал Вам поручение!" )
	MisResultTalk( " Они великолепны! Вы сделали меня самым счастливым коллекционером." )
	MisResultCondition(NoRecord, 850)
	MisResultCondition(HasMission, 850)
	MisResultCondition(HasItem, 4833, 10)
	MisResultAction(TakeItem, 4833, 10)
	MisResultAction(ClearMission, 850)
	MisResultAction(SetRecord, 850)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)



	InitTrigger()
	TriggerCondition( 1, IsItem, 4833 )	
	TriggerAction( 1, AddNextFlag, 850, 10, 10 )
	RegCurTrigger( 8501 )


-----------------------------------Первый ингредиент----Морфеус Фрея
	DefineMission( 851, "\207\229\240\226\251\233 \232\237\227\240\229\228\232\229\237\242", 851 )
	
	MisBeginTalk( "<t>Если Вы лентяй или у Вас нету желания чего ни будь делать, то лучше не тратьте моё время! Если всё же Вы не такой, то я возьму Вас в свои помощники и заплачу Вам за Вашу работу!<n><t>Первое, что мне необходимо, это собрать особые ингредиенты для опытов!" )
	MisBeginCondition(LvCheck, ">", 47 )
	--MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 851)
	MisBeginCondition(NoRecord, 851)
	MisBeginAction(AddMission, 851)
	MisBeginAction(AddTrigger, 8511, TE_GETITEM, 4883, 8 )--Ноготь мумии
	MisCancelAction(ClearMission, 851)
	
	MisNeed(MIS_NEED_DESP, " Принести <bФрею> в точку (651,1585) <y8 Ногтей мумии>." )
	MisNeed(MIS_NEED_ITEM, 4883, 8, 10, 8)
	
	MisHelpTalk( " Коллега, Вы так ещё и не принесли мне <y8 ногтей мумии>." )
	MisResultTalk( " Спасибо, подойдите ко мне по-позже. У меня ещё будут для Вас поручения." )
	MisResultCondition(NoRecord, 851)
	MisResultCondition(HasMission, 851)
	MisResultCondition(HasItem, 4883, 8)
	MisResultAction(TakeItem, 4883, 8)
	MisResultAction(ClearMission, 851)
	MisResultAction(SetRecord, 851)
	MisResultAction(AddExp,31809,31809)	
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4883 )	
	TriggerAction( 1, AddNextFlag, 851, 10, 8 )
	RegCurTrigger( 8511 )

-----------------------------------Месть---Капита стражи Маллак
	DefineMission( 852, "\204\229\241\242\252", 852 )
	
	MisBeginTalk( "Черт бы побрал этих <rЖелезных мумии>! Они убили мою жену и превратил ее в себе подобную! Я очень любил свою жену, и до сих пор люблю, и не могу убивать их так, как не буду уверен в том, что убиваю не свою жену. Вы могли бы пойти и сделать это за меня?!" )
	MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(NoMission, 852)
	MisBeginCondition(NoRecord, 852)
	MisBeginAction(AddMission, 852)
	MisBeginAction(AddTrigger, 8521, TE_KILL, 41, 15 )--Железная мумия
	MisCancelAction(ClearMission, 852)

	MisNeed(MIS_NEED_DESP, " Убить <r15 Железных Мумии> и вернуться к <bКапитану стражи Малку> в точку(706,1465)." )
	MisNeed(MIS_NEED_KILL, 41, 15, 10, 15)

	MisHelpTalk( " Вы не поможете мне отомстить?" )
	MisResultTalk( " Спасибо Вам, если бы не Вы мне самому пришлось бы это сделать, но я потом не смог бы себе простить и жил бы с мыслью, что убил свою жену." )
	MisResultCondition(NoRecord, 852)
	MisResultCondition(HasMission, 852)
	MisResultCondition(HasFlag, 852, 24)
	MisResultAction(ClearMission, 852)
	MisResultAction(SetRecord, 852)
	MisResultAction(AddExp,31809,31809)	
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 41 )	
	TriggerAction( 1, AddNextFlag, 852, 10, 15 )
	RegCurTrigger( 8521 )

-----------------------------------Третий компонент
	DefineMission( 853, "\210\240\229\242\232\233 \234\238\236\239\238\237\229\237\242", 853 )
	
	MisBeginTalk( "<t>С первыми моими просьбами Вы справились как нельзя лучше! Вот Вам моё третее поручение: Принесите мне <y10 Громадных шипов дурмана>." )
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 854)
	MisBeginCondition(NoMission, 853)
	MisBeginCondition(NoRecord, 853)
	MisBeginAction(AddMission, 853)
	MisBeginAction(AddTrigger, 8531, TE_GETITEM, 4834, 10 )--Громадный шип дурмана
	MisCancelAction(ClearMission, 853)
	
	MisNeed(MIS_NEED_DESP, " Принести 10 Громадных шипов дурмана в точку(651,1585)." )
	MisNeed(MIS_NEED_ITEM, 4834, 10, 10, 10)
	
	MisHelpTalk( " Не растраивайте меня!" )
	MisResultTalk( "Хорошо! Мне Вы ещё нужны будете, но позже." )
	MisResultCondition(NoRecord, 853)
	MisResultCondition(HasMission, 853)
	MisResultCondition(HasItem, 4834, 10)
	MisResultAction(TakeItem, 4834, 10)
	MisResultAction(ClearMission, 853)
	MisResultAction(SetRecord, 853)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4834 )	
	TriggerAction( 1, AddNextFlag, 853, 10, 10 )
	RegCurTrigger( 8531 )

-----------------------------------	Второй ингредиент
	DefineMission( 854, "\194\242\238\240\238\233 \232\237\227\240\229\228\232\229\237\242", 854 )
	
	MisBeginTalk( "<t>Я не буду повторяться! Вы уже поняли, что я ставлю эксперименты и мне нужны ингредиенты.<n><t>Принесите мне <y10 Волос Мумии>." )
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 851)
	MisBeginCondition(NoMission, 854)
	MisBeginCondition(NoRecord, 854)
	MisBeginAction(AddMission, 854)
	MisBeginAction(AddTrigger, 8541, TE_GETITEM, 4884, 10 )--Волосы мумии
	MisCancelAction(ClearMission, 854)
	
	MisNeed(MIS_NEED_DESP, " Принести <bМорфеусу Фрею> в точку(651,1585) <y10 Волос мумии>." )
	MisNeed(MIS_NEED_ITEM, 4884, 10, 10, 10)
	
	MisHelpTalk( " Время деньги мой друг! Поспешите!" )
	MisResultTalk( " Отлично! Не уходите далеко!" )
	MisResultCondition(NoRecord, 854)
	MisResultCondition(HasMission, 854)
	MisResultCondition(HasItem, 4884, 10)
	MisResultAction(TakeItem, 4884, 10)
	MisResultAction(ClearMission, 854)
	MisResultAction(SetRecord, 854)
	MisResultAction(AddExp,35066,35066)
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4884 )	
	TriggerAction( 1, AddNextFlag, 854, 10, 10 )
	RegCurTrigger( 8541 )

-----------------------------------Репеллент Души--(Капита стражи Маллак)
	DefineMission( 855, "\208\229\239\229\235\235\229\237\242 \196\243\248\232", 855 )
	
	MisBeginTalk( "<t>Я в гневе! Хоть я уже не волнуюсь за свою жену, но я волнуюсь за жителей своего города. Эти мумии ещё ходят по земле!<n><t>Убейте <r15 стальных мумии> и освободите землю от нежити!" )
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 852)
	MisBeginCondition(NoMission, 855)
	MisBeginCondition(NoRecord, 855)
	MisBeginAction(AddMission, 855)
	MisBeginAction(AddTrigger, 8551, TE_KILL, 42, 15 )--Стальная мумия
	MisCancelAction(ClearMission, 855)

	MisNeed(MIS_NEED_DESP, " Убить <r15 Стальных Мумии> и вернуться к <bКапитану стражи Маллаку> в точку(706,1465)." )
	MisNeed(MIS_NEED_KILL, 42, 15, 10, 15)

	MisHelpTalk( " Вы разве забыли о чём я Вас попросил?" )
	MisResultTalk( " Спасибо Вам ещё раз! Вы сделали очень добрый поступок." )
	MisResultCondition(NoRecord, 855)
	MisResultCondition(HasMission, 855)
	MisResultCondition(HasFlag, 855, 24)
	MisResultAction(ClearMission, 855)
	MisResultAction(SetRecord, 855)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )	
	TriggerAction( 1, AddNextFlag, 855, 10, 15 )
	RegCurTrigger( 8551 )

-----------------------------------Нашествие племени---Полковник Макси
	DefineMission( 856, "\205\224\248\229\241\242\226\232\229 \239\235\229\236\229\237\232", 856 )
	
	MisBeginTalk( "<t>Непобедимый Вервольф-воин больше не угрожает нашему городу. Тем не менее над нашим городом повисла новая опасность! Гром-Град атакуют племена туземцев и если не предпринять ни каких действий они разгромят наш Город!<n><t>Необходимо преподать им урок и уничтожить их предводителей." )
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 849)
	MisBeginCondition(NoMission, 856)
	MisBeginCondition(NoRecord, 856)
	MisBeginAction(AddMission, 856)
	MisBeginAction(AddTrigger, 8561, TE_KILL, 515, 15 )--Неуловимый туземец
	MisBeginAction(AddTrigger, 8562, TE_KILL, 38, 5 )----Туземный шаман
	MisCancelAction(ClearMission, 856)

	MisNeed(MIS_NEED_DESP, " Убить <r15 неуловимых туземцев> и <r5 Туземных Шаманов>.<n><t>Доложить о выполнении поручения <bПолковнику Макси> в точке (653,1505)." )
	MisNeed(MIS_NEED_KILL, 515, 15, 10, 15)
	MisNeed(MIS_NEED_KILL, 38, 5, 30, 5)

	MisHelpTalk( " Необходимо защитить наш Город!" )
	MisResultTalk( " Ха-ха! Теперь они ещё не скоро оправяться после Вашей атаки!" )
	MisResultCondition(NoRecord, 856)
	MisResultCondition(HasMission, 856)
	MisResultCondition(HasFlag, 856, 24)
	MisResultCondition(HasFlag, 856, 34)
	MisResultAction(ClearMission, 856)
	MisResultAction(SetRecord, 856)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 515 )	
	TriggerAction( 1, AddNextFlag, 856, 10, 15 )
	RegCurTrigger( 8561 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 38 )	
	TriggerAction( 1, AddNextFlag, 856, 30, 5 )
	RegCurTrigger( 8562 )

-----------------------------------Трофеи победителю-----(Страж Ниссон)
	DefineMission( 857, "\210\240\238\244\229\232 \239\238\225\229\228\232\242\229\235\254", 857 )
	
	MisBeginTalk( "<t>Вы великий воин? Возможно это так, но настоящий воин сможет заполучить трофеи!" )
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 856)
	MisBeginCondition(NoMission, 857)
	MisBeginCondition(NoRecord, 857)
	MisBeginAction(AddMission, 857)
	MisBeginAction(AddTrigger, 8571, TE_GETITEM, 4919, 5 )--Туземная маска
	MisBeginAction(AddTrigger, 8572, TE_GETITEM, 4835, 5 )--Таинственная кость
	MisCancelAction(ClearMission, 857)
	
	MisNeed(MIS_NEED_DESP, "<t> Принести <bСтражу Ниссон> в точку (711,1414) <y5 Туземных Масок> и <y5 Таинственных костей>." )
	MisNeed(MIS_NEED_ITEM, 4919, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4835, 5, 20, 5)
	
	MisHelpTalk( " Без трофеев Вы не воин а зазнийка!" )
	MisResultTalk( " Я беру свои слова обратно! Вы Герой и настоящий воин!" )
	MisResultCondition(NoRecord, 857)
	MisResultCondition(HasMission, 857)
	MisResultCondition(HasItem, 4919, 5)
	MisResultCondition(HasItem, 4835, 5)
	MisResultAction(TakeItem, 4835, 5)
	MisResultAction(TakeItem, 4919, 5)
	MisResultAction(ClearMission, 857)
	MisResultAction(SetRecord, 857)
	MisResultAction(AddExp,42522,42522)	
	MisResultAction(AddMoney,1235,1235)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4919 )	
	TriggerAction( 1, AddNextFlag, 857, 10, 5 )
	RegCurTrigger( 8571 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4835 )	
	TriggerAction( 1, AddNextFlag, 857, 20, 5 )
	RegCurTrigger( 8572 )

-----------------------------------Новое оружие
	DefineMission( 858, "\205\238\226\238\229 \238\240\243\230\232\229", 858 )
	
	MisBeginTalk( "<t>Нам необходимо придумать более эффективное оружие против монстров. Для изготовления нового оружия нам необходимы следующие материалы: одина <yСломанная ангельская палочка> и один <yЗазубренный священный лук>. Принесите мне это." )
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 856)
	MisBeginCondition(NoMission, 858)
	MisBeginCondition(NoRecord, 858)
	MisBeginAction(AddMission, 858)
	MisBeginAction(AddTrigger, 8581, TE_GETITEM, 4918, 1 )--Сломанная ангельская палочка
	MisBeginAction(AddTrigger, 8582, TE_GETITEM, 4921, 1 )--Зазубренный священный лук
	MisCancelAction(ClearMission, 858)
	
	MisNeed(MIS_NEED_DESP, " Принести <bПолковнику Макси> одну <yсломанную ангельскую палочку> и один <yЗазубренный священный лук>." )
	MisNeed(MIS_NEED_ITEM, 4918, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4921, 1, 20, 1)
	
	MisHelpTalk( " Без этих материалов нам не сделать нового оружия." )
	MisResultTalk( " С таким оружием у нас больше шансов на победу." )
	MisResultCondition(NoRecord, 858)
	MisResultCondition(HasMission, 858)
	MisResultCondition(HasItem, 4918, 1)
	MisResultCondition(HasItem, 4921, 1)
	MisResultAction(TakeItem, 4921, 1)
	MisResultAction(TakeItem, 4918, 1)
	MisResultAction(ClearMission, 858)
	MisResultAction(SetRecord, 858)
	MisResultAction(AddExp,42522,42522)	
	MisResultAction(AddMoney,1235,1235)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4918 )	
	TriggerAction( 1, AddNextFlag, 858, 10, 1 )
	RegCurTrigger( 8581 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4921 )	
	TriggerAction( 1, AddNextFlag, 858, 20, 1 )
	RegCurTrigger( 8582 )

-----------------------------------Отверженный Ангел-----(Страж Ниссон)
	DefineMission( 859, "\206\242\226\229\240\230\229\237\237\251\233 \192\237\227\229\235", 859 )
	
	--MisBeginTalk( "<t>Вы видели ангелов-хранителей за пределами нашего города?<n><t>Вы думаете они заслуживают носить такое святое имя как \"Ангел\"? Отправьте этих ангелов на небо на перевоспитание." )
	MisBeginTalk( "<t>\194\251 \226\232\228\229\235\232 \224\237\227\229\235\238\226-\245\240\224\237\232\242\229\235\229\233 \231\224 \239\240\229\228\229\235\224\236\232 \237\224\248\229\227\238 \227\238\240\238\228\224?<n><t>\194\251 \228\243\236\224\229\242\229 \238\237\232 \231\224\241\235\243\230\232\226\224\254\242 \237\238\241\232\242\252 \242\224\234\238\229 \241\226\255\242\238\229 \232\236\255 \234\224\234 \"\192\237\227\229\235\"? \206\242\239\240\224\226\252\242\229 \253\242\232\245 \224\237\227\229\235\238\226 \237\224 \237\229\225\238 \237\224 \239\229\240\229\226\238\241\239\232\242\224\237\232\229." )
	MisBeginCondition(LvCheck, ">", 50 )
	--MisBeginCondition(HasRecord, 849)
	MisBeginCondition(NoMission, 859)
	MisBeginCondition(NoRecord, 859)
	MisBeginAction(AddMission, 859)
	MisBeginAction(AddTrigger, 8591, TE_KILL, 284, 12 )--Ангел-хранитель
	MisCancelAction(ClearMission, 859)

	MisNeed(MIS_NEED_DESP, " Убить <r12 Ангел-хранителей> и доложить о завершении поручения <bСтражу Нуссону> в точке(711,1414)." )
	MisNeed(MIS_NEED_KILL, 284, 12, 10, 12)

	MisHelpTalk( " Вы ещё не ходили к Ангелам-Хранителям? Так чего Вы ждёте?" )
	MisResultTalk( " Спасибо Вам, надеюсь они там научаться хорошим манерам." )
	MisResultCondition(NoRecord, 859)
	MisResultCondition(HasMission, 859)
	MisResultCondition(HasFlag, 859, 21)
	MisResultAction(ClearMission, 859)
	MisResultAction(SetRecord, 859)
	MisResultAction(AddExp,42522,42522)
	MisResultAction(AddMoney,1235,1235)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 284 )	
	TriggerAction( 1, AddNextFlag, 859, 10, 12 )
	RegCurTrigger( 8591 )

-----------------------------------Экспедиция---(Полковник Макси)
	DefineMission( 860, "\221\234\241\239\229\228\232\246\232\255", 860 )
	
	MisBeginTalk( "<t>Враг за городскими стенами был повержен! Однако идёт новая армия монстров со стороны снежной горы.<n><t>Наша цель: Отправиться к снежной горе и убить наступающего противника." )
	MisBeginCondition(LvCheck, ">", 51 )
	MisBeginCondition(HasRecord, 858)
	MisBeginCondition(NoMission, 860)
	MisBeginCondition(NoRecord, 860)
	MisBeginAction(AddMission, 860)
	MisBeginAction(AddTrigger, 8601, TE_KILL, 521, 8 )--Адский неупокоенный воин
	MisBeginAction(AddTrigger, 8602, TE_KILL, 541, 8 )--Смертоносный скелет-лучник
	MisCancelAction(ClearMission, 860)

	MisNeed(MIS_NEED_DESP, " Убить <r8 Смертоносных скелетов-лучников> и <r8 Адских неупокоенных воинов> и вернуться к <bМакси> в точку (653, 1505)." )
	MisNeed(MIS_NEED_KILL, 521, 8, 10, 8)
	MisNeed(MIS_NEED_KILL, 541, 8, 30, 8)

	MisHelpTalk( " Поспешите, Времени нет на болтавню!" )
	MisResultTalk( " О! Вы так быстро выполнили моё поручение, что я и глазом не успел маргнуть!" )
	MisResultCondition(NoRecord, 860)
	MisResultCondition(HasMission, 860)
	MisResultCondition(HasFlag, 860, 17)
	MisResultCondition(HasFlag, 860, 37)
	MisResultAction(ClearMission, 860)
	MisResultAction(SetRecord, 860)
	MisResultAction(AddExp,46776,46776)
	MisResultAction(AddMoney,1258,1258)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 521 )	
	TriggerAction( 1, AddNextFlag, 860, 10, 8 )
	RegCurTrigger( 8601 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )	
	TriggerAction( 1, AddNextFlag, 860, 30, 8 )
	RegCurTrigger( 8602 )

-----------------------------------Шлем падшего---Уэсли
	DefineMission( 861, "\216\235\229\236 \239\224\228\248\229\227\238", 861 )
	
	MisBeginTalk( "<t>Вы принимали участие в военных действиях?<n><t>А Вы случайно не захватили для моей коллекции Шлем Падшего?<n><t>Принесите пожалуйста 5 Шлемов, что бы я смог выбрать самый лучший." )
	MisBeginCondition(LvCheck, ">", 51 )
	MisBeginCondition(HasRecord, 850)
	MisBeginCondition(NoMission, 861)
	MisBeginCondition(NoRecord, 861)
	MisBeginAction(AddMission, 861)
	MisBeginAction(AddTrigger, 8611, TE_GETITEM, 4837, 5 )--Шлем падшего
	MisCancelAction(ClearMission, 861)
	
	MisNeed(MIS_NEED_DESP, " Принести <bУэсли> в точку(741,1563) <y5 Шлемов падшего>." )
	MisNeed(MIS_NEED_ITEM, 4837, 5, 10, 5)
	
	MisHelpTalk( " Вы разве не хотите заработать денего?" )
	MisResultTalk( " Спасибо Вам! Они прекрасны! Вот Ваша награда!" )
	MisResultCondition(NoRecord, 861)
	MisResultCondition(HasMission, 861)
	MisResultCondition(HasItem, 4837, 5)
	MisResultAction(TakeItem, 4837, 5)
	MisResultAction(ClearMission, 861)
	MisResultAction(SetRecord, 861)
	MisResultAction(AddExp,46776,46776)
	MisResultAction(AddMoney,1258,1258)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4837 )	
	TriggerAction( 1, AddNextFlag, 861, 10, 5 )
	RegCurTrigger( 8611 )


-----------------------------------Четвертый ингредиент---Морфеус Фрея
	DefineMission( 862, "\215\229\242\226\229\240\242\251\233 \232\237\227\240\229\228\232\229\237\242", 862 )
	
	MisBeginTalk( "<t>Четвёртым ингредиентом, который Вы мне принесёте, будет <yЦельное ребро>, его можно получить только убив <rСмертоносного скелета-лучника>, но предупреждаю Вас, ещё ни кому не удавалось их убить и вернуться живым!" )
	MisBeginCondition(LvCheck, ">", 52 )
	MisBeginCondition(HasRecord, 853)
	MisBeginCondition(NoMission, 862)
	MisBeginCondition(NoRecord, 862)
	MisBeginAction(AddMission, 862)
	MisBeginAction(AddTrigger, 8621, TE_GETITEM, 4858, 8 )--Цельное ребро
	MisCancelAction(ClearMission, 862)
	
	MisNeed(MIS_NEED_DESP, " Принести Морфеусу 8 Цельных рёбер..." )
	MisNeed(MIS_NEED_ITEM, 4858, 8, 10, 8)
	
	MisHelpTalk( " Вы ещё не принесли мне 8 Цельных рёбер!" )
	MisResultTalk( " Я правельно сделал, когда взял Вас в свои коллеги. Отлично!" )
	MisResultCondition(NoRecord, 862)
	MisResultCondition(HasMission, 862)
	MisResultCondition(HasItem, 4858, 8)
	MisResultAction(TakeItem, 4858, 8)
	MisResultAction(ClearMission, 862)
	MisResultAction(SetRecord, 862)
	MisResultAction(AddExp,51423,51423)
	MisResultAction(AddMoney,1282,1282)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4858 )	
	TriggerAction( 1, AddNextFlag, 862, 10, 8 )
	RegCurTrigger( 8621 )

-----------------------------------Испытание Священного Леса----(Девочка Синди)
	DefineMission( 863, "\200\241\239\251\242\224\237\232\229 \209\226\255\249\229\237\237\238\227\238 \203\229\241\224", 863 )
	
	MisBeginTalk( "<t>Очень тяжёлое испытание Вас ждёт. Достаточно ли Вы смелый, что бы взяться за это испытание? Я буду молиться за Вас!" )
	MisBeginCondition(LvCheck, ">", 52 )
	--MisBeginCondition(HasRecord, 863)
	MisBeginCondition(NoMission, 863)
	MisBeginCondition(NoRecord, 863)
	MisBeginAction(AddMission, 863)
	MisBeginAction(AddTrigger, 8631, TE_KILL, 261, 10 )--Лесной охотник
	MisCancelAction(ClearMission, 863)

	MisNeed(MIS_NEED_DESP, " Убить <r10 Лесных охотников> и вернуться к <bДевочке Синди> в точку(740,1451)." )
	MisNeed(MIS_NEED_KILL, 261, 10, 10, 10)

	MisHelpTalk( " Не теряйте по напрасну время, ведь оно безценно!" )
	MisResultTalk( " Превосходно! Вы прошли моё испытание!" )
	MisResultCondition(NoRecord, 863)
	MisResultCondition(HasMission, 863)
	MisResultCondition(HasFlag, 863, 19)
	MisResultAction(ClearMission, 863)
	MisResultAction(SetRecord, 863)
	MisResultAction(AddExp,51423,51423)
	MisResultAction(AddMoney,1282,1282)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 261 )	
	TriggerAction( 1, AddNextFlag, 863, 10, 10 )
	RegCurTrigger( 8631 )


-----------------------------------	Последний ингредиент
	DefineMission( 864, "\207\238\241\235\229\228\237\232\233 \232\237\227\240\229\228\232\229\237\242", 864 )
	
	MisBeginTalk( "<t>Не время отступать! Мы на гране открытия, я расскажу какой эксперимент я ставил...<n><t>Я изготовляю эликсир бессмертия... И даже дам его попробовать! Но если Вы откажетесь мне помочь с последним ингредиентом, мне придётся Вас убить!<n><t>Принесите мне <y10 Осколков кости скелета>, что бы закончить эликсир." )
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 862)
	MisBeginCondition(NoMission, 864)
	MisBeginCondition(NoRecord, 864)
	MisBeginAction(AddMission, 864)
	MisBeginAction(AddTrigger, 8641, TE_GETITEM, 4886, 10 )--Осколок кости скелета
	MisCancelAction(ClearMission, 864)
	
	MisNeed(MIS_NEED_DESP, " Принести <y10 Осколков кости скелета> <Фрею> в точку(651,1585)." )
	MisNeed(MIS_NEED_ITEM, 4886, 10, 10, 10)
	
	MisHelpTalk( " Я же Вас просил, кажеться, принести мне 10 Осколков кости скелета! Где они?!" )
	MisResultTalk( " Спасибо Вам огромное, Вы можете испытать Элексир!" )
	MisResultCondition(NoRecord, 864)
	MisResultCondition(HasMission, 864)
	MisResultCondition(HasItem, 4886, 10)
	MisResultAction(TakeItem, 4886, 10)
	MisResultAction(ClearMission, 864)
	MisResultAction(SetRecord, 864)
	MisResultAction(AddExp,56496,56496)	
	MisResultAction(AddMoney,1306,1306)
	MisResultAction(GiveItem, 6921, 3, 4 )--Зелье Бога(15 сек невидимости)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4886 )	
	TriggerAction( 1, AddNextFlag, 864, 10, 10 )
	RegCurTrigger( 8641 )

-----------------------------------Проклятое тело--копитан стражи Маллок
	DefineMission( 865, "\207\240\238\234\235\255\242\238\229 \242\229\235\238", 865 )
	
	MisBeginTalk( "<t>Я проанализировал результаты и пришёл к мнению что во всём виновато Проклятое тело.<n><t>Положите конец этому аду на земле и убейте Проклятое тело!" )
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 855)
	MisBeginCondition(NoMission, 865)
	MisBeginCondition(NoRecord, 865)
	MisBeginAction(AddMission, 865)
	MisBeginAction(AddTrigger, 8651, TE_KILL, 52, 10 )--Проклятое тело
	MisCancelAction(ClearMission, 865)

	MisNeed(MIS_NEED_DESP, " Убить <r10 Проклятых тел> и вернутьс к <bМаллаку> в точку(706,1465)." )
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisHelpTalk(" Мумии это детище Проклятого тела. Положите конец прородителю и дети не смогут дальше развиваться без родителей!" )
	MisResultTalk(" Вы сделали правильно, что немедленно отправились и положили конец страданиям и смертям!" )
	MisResultCondition(NoRecord, 865)
	MisResultCondition(HasMission, 865)
	MisResultCondition(HasFlag, 865, 19)
	MisResultAction(ClearMission, 865)
	MisResultAction(SetRecord, 865)
	MisResultAction(AddExp,56496,56496)	
	MisResultAction(AddMoney,1306,1306)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )	
	TriggerAction( 1, AddNextFlag, 865, 10, 10 )
	RegCurTrigger( 8651 )

----------------------------------Последний враг----Полковник Макси
	DefineMission( 866, "\207\238\241\235\229\228\237\232\233 \226\240\224\227", 866 )
	
	MisBeginTalk( "<t>Остался последний враг! Не щадите его! Уничтожьте его и вернитесь ко мне за наградой!" )
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 866)
	MisBeginCondition(NoRecord, 866)
	MisBeginAction(AddMission, 866)
	MisBeginAction(AddTrigger, 8661, TE_KILL, 565, 10 )-----Предводитель скелетов-воинов
	MisBeginAction(AddTrigger, 8662, TE_GETITEM, 4879, 1 )--Символ главы воинов
	MisCancelAction(ClearMission, 866)

	MisNeed(MIS_NEED_DESP, " Убить <r10 Предводителей скелетов-воинов> и заполучить 1 <yСимвол главы воинов>.<n><t>Доложить <bПолковнику Макси> в точке (653,1505) о завершении миссии по освобождению Города." )
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 4879, 1, 20, 1)

	MisHelpTalk( " У нас остался только один враг, не думаю что с ним нам надо тянуть время и играть в кошки-мышки." )
	MisResultTalk( " Последний Враг уничтожен! Вы герой этой войны!" )
	MisResultCondition(NoRecord, 866)
	MisResultCondition(HasMission, 866)
	MisResultCondition(HasFlag, 866, 19)
	MisResultCondition(HasItem, 4879, 1)
	MisResultAction(TakeItem, 4879, 1)
	MisResultAction(ClearMission, 866)
	MisResultAction(SetRecord, 866)
	MisResultAction(AddExp,56496,56496)
	MisResultAction(AddMoney,1306,1306)
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )	
	TriggerAction( 1, AddNextFlag, 866, 10, 10 )
	RegCurTrigger( 8661 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4879 )	
	TriggerAction( 1, AddNextFlag, 866, 20, 1 )
	RegCurTrigger( 8662 )

-----------------------------------Испытания кровавого Фонтома
	DefineMission( 867, "\200\241\239\251\242\224\237\232\255 \234\240\238\226\224\226\238\227\238 \212\238\237\242\238\236\224", 867 )
	
	MisBeginTalk( "<t>Только избавившись от чёрной ауры Вы обретёте настоящее счастье! Убейте <r15 Кровожадных охотников> и очистите свою душу от пороков и грехов!" )
	MisBeginCondition(LvCheck, ">", 54 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 867)
	MisBeginCondition(NoRecord, 867)
	MisBeginAction(AddMission, 867)
	MisBeginAction(AddTrigger, 8671, TE_KILL, 666, 15 )--Кровожадный охотник
	MisCancelAction(ClearMission, 867)

	MisNeed(MIS_NEED_DESP, " Убить <r15 Кровожадных охотников> и вернуться к <bДевочке Синди> в точку(740,1451)." )
	MisNeed(MIS_NEED_KILL, 666, 15, 10, 15 )

	MisHelpTalk( " Вы ещё не сделали всего необходимого, чтобы очистить свю душу." )
	MisResultTalk( " Богиня Вас благославляет и дарит Вам Счастье! Вы счастливы?" )
	MisResultCondition(NoRecord, 867)
	MisResultCondition(HasMission, 867)
	MisResultCondition(HasFlag, 867, 24)
	MisResultAction(ClearMission, 867)
	MisResultAction(SetRecord, 867)
	MisResultAction(AddExp,62032,62032)
	MisResultAction(AddMoney,1331,1331)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )	
	TriggerAction( 1, AddNextFlag, 867, 10, 15 )
	RegCurTrigger( 8671 )

-----------------------------------Темный лук--Уэсли
	DefineMission( 868, "\210\229\236\237\251\233 \235\243\234", 868 )
	
	MisBeginTalk( "<t>Эх... Мне бы в мою коллекцию ещё бы Тёмный лук...<n><t>Принесите мне 5 Луков, я Выберу самый лучший!")
	MisBeginCondition(LvCheck, ">", 54 )
	MisBeginCondition(HasRecord, 861)
	MisBeginCondition(NoMission, 868)
	MisBeginCondition(NoRecord, 868)
	MisBeginAction(AddMission, 868)
	MisBeginAction(AddTrigger, 8681, TE_GETITEM, 4922, 5 )--Темный лук
	MisCancelAction(ClearMission, 868)
	
	MisNeed(MIS_NEED_DESP, " Принести Уэсли 5 Тёмных Луков." )
	MisNeed(MIS_NEED_ITEM, 4922, 5, 10, 5)
	
	MisHelpTalk( " Без Тёмного Лука коллекция моя не полная... Думайте сами, как я Вас отблагодарю, если моя коллекция будет полная!" )
	MisResultTalk( " Спасибо Вам! Вот теперь моя коллекция полная!" )
	MisResultCondition(NoRecord, 868)
	MisResultCondition(HasMission, 868)
	MisResultCondition(HasItem, 4922, 5)
	MisResultAction(TakeItem, 4922, 5)
	MisResultAction(ClearMission, 868)
	MisResultAction(SetRecord, 868)
	MisResultAction(AddExp,6232,6232)	
	MisResultAction(AddMoney,1331,1331)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4922 )	
	TriggerAction( 1, AddNextFlag, 868, 10, 5 )
	RegCurTrigger( 8681 )


-----------------------------------Снежный человечище--Фардей
	DefineMission( 869, "\209\237\229\230\237\251\233 \247\229\235\238\226\229\247\232\249\229", 869 )
	
	MisBeginTalk( "<t>У меня есть для Вас работа!<n><t>В точке(2471,502) обитает <rСнежный человечище>. Убейте <r15 Снежных Человечищ> и вернитесь ко мне за наградой!" )
	MisBeginCondition(LvCheck, ">", 35 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 869)
	MisBeginCondition(NoRecord, 869)
	MisBeginAction(AddMission, 869)
	MisBeginAction(AddTrigger, 8691, TE_KILL, 516, 15 )--Снежный человечище
	MisCancelAction(ClearMission, 869)

	MisNeed(MIS_NEED_DESP, " Убить <r15 Снежных Человечищ> и вернуться в точку(2680,657) за наградой." )
	MisNeed(MIS_NEED_KILL, 516, 15, 10, 15 )

	MisHelpTalk( " Пока я не увижу результатов вашей работы, я не буду Вам платить!" )
	MisResultTalk( " Вы отлично справились со своей работой!" )
	MisResultCondition(NoRecord, 869)
	MisResultCondition(HasMission, 869)
	MisResultCondition(HasFlag, 869, 24)
	MisResultAction(ClearMission, 869)
	MisResultAction(SetRecord, 869)
	MisResultAction(AddExp,9170,9170)	
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 516 )	
	TriggerAction( 1, AddNextFlag, 869, 10, 15 )
	RegCurTrigger( 8691 )

----------------------------------Вторжение оборотней---Нейла
	DefineMission( 870, "\194\242\238\240\230\229\237\232\229 \238\225\238\240\238\242\237\229\233", 870 )
	
	MisBeginTalk( "<t>Опять пришли эти проклятые Оборотни! Тут становиться с каждым днём всё опаснее и опаснее находиться! Убейте в точке(2580,553) Вервольф-воинов и положите конец убийствам." )
	MisBeginCondition(LvCheck, ">", 36 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 870)
	MisBeginCondition(NoRecord, 870)
	MisBeginAction(AddMission, 870)
	MisBeginAction(AddTrigger, 8701, TE_KILL, 271, 15 )--Вервольф-воин
	MisCancelAction(ClearMission, 870)

	MisNeed(MIS_NEED_DESP, " Помочь <bНейле> убить <r15 Вервольф-воинов>." )
	MisNeed(MIS_NEED_KILL, 271, 15, 10, 15 )

	MisHelpTalk( " Возращайтесь когда выполните мою просьбу!" )
	MisResultTalk( " Спасибо Вам!" )
	MisResultCondition(NoRecord, 870)
	MisResultCondition(HasMission, 870)
	MisResultCondition(HasFlag, 870, 24)
	MisResultAction(ClearMission, 870)
	MisResultAction(SetRecord, 870)
	MisResultAction(AddExp,10238,10238)
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 271 )	
	TriggerAction( 1, AddNextFlag, 870, 10, 15 )
	RegCurTrigger( 8701 )

-----------------------------------Коллекционер барахла---Меккилон
	DefineMission( 871, "\202\238\235\235\229\234\246\232\238\237\229\240 \225\224\240\224\245\235\224", 871 )
	
	MisBeginTalk( "<t>Только не спрашивайте зачем мне это всё! Просто принесите: 5 Ржавых палашей, 5 Сломанных молотов и 5 Неотесанных дубин.<n><t>Вы это найдёте без проблем в точках(2580,553), (2811,565), (2471,502)." )
	MisBeginCondition(LvCheck, ">", 36 )
	--MisBeginCondition(HasRecord, 861)
	MisBeginCondition(NoMission, 871)
	MisBeginCondition(NoRecord, 871)
	MisBeginAction(AddMission, 871)
	MisBeginAction(AddTrigger, 8711, TE_GETITEM, 4836, 5 )--Ржавый палаш
	MisBeginAction(AddTrigger, 8712, TE_GETITEM, 4907, 5 )--Сломанный молот
	MisBeginAction(AddTrigger, 8713, TE_GETITEM, 4838, 5 )--Неотесанная дубина
	MisCancelAction(ClearMission, 871)
	
	MisNeed(MIS_NEED_DESP, " Принести <bМекиллону> в точку(2662,648): <r5 Ржавых палашей, 5 Сломанных молотов и 5 Неотёссаных дубин>." )
	MisNeed(MIS_NEED_ITEM, 4836, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4907, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4838, 5, 10, 5)
	
	MisHelpTalk( " Я Вам тоже дам подарок." )
	MisResultTalk( " Ха-ха! Я единственный коллекционер Мусара!" )
	MisResultCondition(NoRecord, 871)
	MisResultCondition(HasMission, 871)
	MisResultCondition(HasItem, 4836, 5)
	MisResultCondition(HasItem, 4907, 5)
	MisResultCondition(HasItem, 4838, 5)
	MisResultAction(TakeItem, 4836, 5)
	MisResultAction(TakeItem, 4907, 5)
	MisResultAction(TakeItem, 4838, 5)
	MisResultAction(ClearMission, 871)
	MisResultAction(SetRecord, 871)
	MisResultAction(AddExp,10238,10238)	
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4836 )	
	TriggerAction( 1, AddNextFlag, 871, 10, 5 )
	RegCurTrigger( 8711 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4907 )	
	TriggerAction( 1, AddNextFlag, 871, 20, 5 )
	RegCurTrigger( 8712 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4838 )	
	TriggerAction( 1, AddNextFlag, 871, 30, 5 )
	RegCurTrigger( 8713 )


-----------------------------------Новая битва
	DefineMission( 872, "\205\238\226\224\255 \225\232\242\226\224", 872 )
	
	MisBeginTalk( "<t>Война перешла на новый уровень! Сейчас на нас нападает <rСнежный человек>.<n><t>Идите в точку(2587,455) и положите конец этим нападениям." )
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(HasRecord, 869)
	MisBeginCondition(NoMission, 872)
	MisBeginCondition(NoRecord, 872)
	MisBeginAction(AddMission, 872)
	MisBeginAction(AddTrigger, 8721, TE_KILL, 194, 15 )--Снежный человек
	MisCancelAction(ClearMission, 872)

	MisNeed(MIS_NEED_DESP, " Фердей в точке(2680,657) попросил Вас убить 15 Снежных людей." )
	MisNeed(MIS_NEED_KILL, 194, 15, 10, 15 )

	MisHelpTalk( " На войне нет времени на обсуждения." )
	MisResultTalk( " Спасибо Вам за верность и за помощь!" )
	MisResultCondition(NoRecord, 872)
	MisResultCondition(HasMission, 872)
	MisResultCondition(HasFlag, 872, 24)
	MisResultAction(ClearMission, 872)
	MisResultAction(SetRecord, 872)
	MisResultAction(AddExp,11413,11413)	
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 194 )	
	TriggerAction( 1, AddNextFlag, 872, 10, 15 )
	RegCurTrigger( 8721 )

-----------------------------------Гигантский палаш---Меккилон
	DefineMission( 873, "\195\232\227\224\237\242\241\234\232\233 \239\224\235\224\248", 873 )
	
	MisBeginTalk( "<t>Вы меня не забыли? Теперь мне надо <y5 Гигантских палашей>. Вы сможете их получить из <rСнежного человека> в точке(2587,455)." )
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(HasRecord, 871)
	MisBeginCondition(NoMission, 873)
	MisBeginCondition(NoRecord, 873)
	MisBeginAction(AddMission, 873)
	MisBeginAction(AddTrigger, 8731, TE_GETITEM, 4861, 5 )--Гигантский палаш
	MisCancelAction(ClearMission, 873)
	
	MisNeed(MIS_NEED_DESP, " Принести Мекллиону в точку(2662,648) 5 Гиганских палашей." )
	MisNeed(MIS_NEED_ITEM, 4861, 5, 10, 5)
	
	MisHelpTalk( " Я буду Вас тут ждать." )
	MisResultTalk( " Спасибо Вам!" )
	MisResultCondition(NoRecord, 873)
	MisResultCondition(HasMission, 873)
	MisResultCondition(HasItem, 4861, 5)
	MisResultAction(TakeItem, 4861, 5)
	MisResultAction(ClearMission, 873)
	MisResultAction(SetRecord, 873)
	MisResultAction(AddExp,11413,11413)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4861 )	
	TriggerAction( 1, AddNextFlag, 873, 10, 5 )
	RegCurTrigger(8731)

-----------------------------------Избавление от Йети
	DefineMission( 874, "\200\231\225\224\226\235\229\237\232\229 \238\242 \201\229\242\232", 874 )
	
	MisBeginTalk( "<t><rГигантский йети> намного опаснее <rСнежного человека>. Однако мне необходимо, что бы убили для меня 12 Гигантских йети. Вы найдёте их в точке(2811,565)." )
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 874)
	MisBeginCondition(NoRecord, 874)
	MisBeginAction(AddMission, 874)
	MisBeginAction(AddTrigger, 8741, TE_KILL, 517, 12 )--Гигантский йети
	MisCancelAction(ClearMission, 874)

	MisNeed(MIS_NEED_DESP, " Убить 12 Гиганских йети для Фердей(2680,657)." )
	MisNeed(MIS_NEED_KILL, 517, 12, 10, 12 )

	MisHelpTalk( " Вы справитесь! Я в Вас верю!" )
	MisResultTalk( " Отлично! Вот Ваша награда!" )
	MisResultCondition(NoRecord, 874)
	MisResultCondition(HasMission, 874)
	MisResultCondition(HasFlag, 874, 21)
	MisResultAction(ClearMission, 874)
	MisResultAction(SetRecord, 874)
	MisResultAction(AddExp,12706,12706)
	MisResultAction(AddMoney,990,990)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 517 )	
	TriggerAction( 1, AddNextFlag, 874, 10, 12 )
	RegCurTrigger( 8741 )

-----------------------------------Охота на улиток---Нейла
	DefineMission( 875, "\206\245\238\242\224 \237\224 \243\235\232\242\238\234", 875 )
	
	MisBeginTalk( "<t>Мы занимаемся охотой на улиток! Не думайте что это просто! Если не верите попробуйте сами. В точке(2733,651) самое лучшее место для охоты." )
	MisBeginCondition(LvCheck, ">", 38 )
	--MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 875)
	MisBeginCondition(NoRecord, 875)
	MisBeginAction(AddMission, 875)
	MisBeginAction(AddTrigger, 8751, TE_KILL, 501, 20 )------Улитка со стальным панцирем
	MisBeginAction(AddTrigger, 8752, TE_GETITEM, 4821, 6 )---Стальной усик
	MisCancelAction(ClearMission, 875)

	MisNeed(MIS_NEED_DESP, " Убить для <bНаны> <r20 Улиток со стальным панцирем> и принести <y6 стальных усиков>." )
	MisNeed(MIS_NEED_KILL, 501, 20, 10, 20 )
	MisNeed(MIS_NEED_ITEM, 4821, 6, 40, 6 )

	MisHelpTalk( " Ну в первый раз всегда сложно! Попробуйте ещё." )
	MisResultTalk( " Отлично! Вы прирождённый охотник." )
	MisResultCondition(NoRecord, 875)
	MisResultCondition(HasMission, 875)
	MisResultCondition(HasFlag, 875, 29)
	MisResultCondition(HasItem, 4821, 6)
	MisResultAction(TakeItem, 4821, 6)
	MisResultAction(ClearMission, 875)
	MisResultAction(SetRecord, 875)
	MisResultAction(AddExp,12706,12706)
	MisResultAction(AddMoney,990,990)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 501 )	
	TriggerAction( 1, AddNextFlag, 875, 10, 20 )
	RegCurTrigger( 8751 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4821 )	
	TriggerAction( 1, AddNextFlag, 875, 40, 6 )
	RegCurTrigger( 8752 )

-----------------------------------Новый захватчик
	DefineMission( 876, "\205\238\226\251\233 \231\224\245\226\224\242\247\232\234", 876 )
	
	MisBeginTalk( "<t>После того как мы избавились от Вертвольфа-Воина на наше поселение стали нападать <rНеупокоенные лучники>. Они гораздо опаснее прежних монстров! Отправляйтесь в точку(2746,451) и положите конец этим мучениям убив <r12 Неупокоенных лучников>!" )
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 870)
	MisBeginCondition(NoMission, 876)
	MisBeginCondition(NoRecord, 876)
	MisBeginAction(AddMission, 876)
	MisBeginAction(AddTrigger, 8761, TE_KILL, 270, 12 )--Неупокоенный лучник
	MisCancelAction(ClearMission, 876)

	MisNeed(MIS_NEED_DESP, " Убейте <r12 Неупокоенных лучников> и вернитесь к <bНейле> в точку (2675,631)." )
	MisNeed(MIS_NEED_KILL, 270, 12, 10, 12 )

	MisHelpTalk( " Вы ещё не избавели нашу деревню от новых захватчиков!" )
	MisResultTalk( " Вы уже второй раз спасаете нашу деревню! спасибо Вам за помощь!" )
	MisResultCondition(NoRecord, 876)
	MisResultCondition(HasMission, 876)
	MisResultCondition(HasFlag, 876, 21)
	MisResultAction(ClearMission, 876)
	MisResultAction(SetRecord, 876)
	MisResultAction(AddExp,14128,14128)	
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 270 )	
	TriggerAction( 1, AddNextFlag, 876, 10, 12 )
	RegCurTrigger( 8761 )

-----------------------------------чјчГЧ°КОЖ·
-----------------------------------Это пренадлежало скелету--Саша
	DefineMission( 877, "\221\242\238 \239\240\229\237\224\228\235\229\230\224\235\238 \241\234\229\235\229\242\243", 877 )
	
	MisBeginTalk( "<t>Мне очень нравиться <yСтрелы смерти> из <rНеупокоенных лучников> обитающих в точке(2746,451). Если бы Вы мне принесли их в количестве 10 штук, то я бы сделал бы из них очень красивое украшение..." )
	MisBeginCondition(LvCheck, ">", 39 )
	--MisBeginCondition(HasRecord, 871)
	MisBeginCondition(NoMission, 877)
	MisBeginCondition(NoRecord, 877)
	MisBeginAction(AddMission, 877)
	MisBeginAction(AddTrigger, 8771, TE_GETITEM, 4911, 10 )--Стрела смерти
	MisCancelAction(ClearMission, 877)
	
	MisNeed(MIS_NEED_DESP, " Принести <y10 Стрел смерти> <bСаше> в точку(2678,631)." )
	MisNeed(MIS_NEED_ITEM, 4911, 10, 10, 10)
	
	MisHelpTalk( " Вы еще не принесли мне 10 стрел смерти." )
	MisResultTalk( " Спаибо Вам, я не забуду вашу доброту!" )
	MisResultCondition(NoRecord, 877)
	MisResultCondition(HasMission, 877)
	MisResultCondition(HasItem, 4911, 10)
	MisResultAction(TakeItem, 4911, 10)
	MisResultAction(ClearMission, 877)
	MisResultAction(SetRecord, 877)
	MisResultAction(AddExp,14128,14128)	
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4911 )	
	TriggerAction( 1, AddNextFlag, 877, 10, 10 )
	RegCurTrigger(8771)

-----------------------------------Высокая ставка--Фардей
	DefineMission( 878, "\194\251\241\238\234\224\255 \241\242\224\226\234\224", 878 )
	
	MisBeginTalk( "<t>Настало время всерьез взяться за уничтожение нежити в этих лесах!<n><t>Это задание я поручаю Вам! Отправляйтесь в точку(2855,451) и избавьтесь от <rГигантских йети>." )
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 874)
	MisBeginCondition(NoMission, 878)
	MisBeginCondition(NoRecord, 878)
	MisBeginAction(AddMission, 878)
	MisBeginAction(AddTrigger, 8781, TE_KILL, 195, 12 )--Гигантский йети
	MisCancelAction(ClearMission, 878)

	MisNeed(MIS_NEED_DESP, " Убейте для Фардея <r12 Гигантских йети>." )
	MisNeed(MIS_NEED_KILL, 195, 12, 10, 12 )

	MisHelpTalk( " Если Вы устали - отдохните, но не забудьте о моей просьбе." )
	MisResultTalk( " Вот Ваша награда." )
	MisResultCondition(NoRecord, 878)
	MisResultCondition(HasMission, 878)
	MisResultCondition(HasFlag, 878, 21)
	MisResultAction(ClearMission, 878)
	MisResultAction(SetRecord, 878)
	MisResultAction(AddExp,14128,14128)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 195 )	
	TriggerAction( 1, AddNextFlag, 878, 10, 12 )
	RegCurTrigger( 8781 )

-----------------------------------Гигантская орясина--Меккилон
	DefineMission( 879, "\195\232\227\224\237\242\241\234\224\255 \238\240\255\241\232\237\224", 879 )
	
	MisBeginTalk( "<t>До меня дошли слухи, что Вы избавляете лес от ужасных Существ.<n><t>Захватите мне тогда за вознаграждение <y10 Гиганских орясин>. Вы их получите убив в точке(2855,451) Гигантского йети." )
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 873)
	MisBeginCondition(NoMission, 879)
	MisBeginCondition(NoRecord, 879)
	MisBeginAction(AddMission, 879)
	MisBeginAction(AddTrigger, 8791, TE_GETITEM, 4862, 10 )--Гигантская орясина
	MisCancelAction(ClearMission, 879)
	
	MisNeed(MIS_NEED_DESP, " Принести <bМеккилону> <y10 Гиганских орясин>." )
	MisNeed(MIS_NEED_ITEM, 4862, 10, 10, 10)
	
	MisHelpTalk( " Как? Вы не принесли мне ещё 10 Гиганских орясин? Ну Вы же принесёте? Я на Вас так надеюсь..." )
	MisResultTalk( " Я найду им хорошее приминение!" )
	MisResultCondition(NoRecord, 879)
	MisResultCondition(HasMission, 879)
	MisResultCondition(HasItem, 4862, 10)
	MisResultAction(TakeItem, 4862, 10)
	MisResultAction(ClearMission, 879)
	MisResultAction(SetRecord, 879)
	MisResultAction(AddExp,14128,14128)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4862 )	
	TriggerAction( 1, AddNextFlag, 879, 10, 10 )
	RegCurTrigger(8791)

-----------------------------------В тыл к противнику--Нейла
	DefineMission( 880, "\194 \242\251\235 \234 \239\240\238\242\232\226\237\232\234\243", 880 )
	
	MisBeginTalk( "<t>Все жители нашей деревни поспорили, сможете ли Вы убить 12 Метких скелетов-стрелков или нет! Если что, я за то что Вы сможете!" )
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 876)
	MisBeginCondition(NoMission, 880)
	MisBeginCondition(NoRecord, 880)
	MisBeginAction(AddMission, 880)
	MisBeginAction(AddTrigger, 8801, TE_KILL, 502, 12 )--Меткий скелет-лучник
	MisCancelAction(ClearMission, 880)

	MisNeed(MIS_NEED_DESP, " Убить для <bНейлы> <r12 Мметких скелетов-лучников>." )
	MisNeed(MIS_NEED_KILL, 502, 12, 10, 12 )

	MisHelpTalk( " Как? Вы разве ещё не покончили с Меткими скелетами-лучниками?" )
	MisResultTalk( " Спасибо Вам! По заслугам им..." )
	MisResultCondition(NoRecord, 880)
	MisResultCondition(HasMission, 880)
	MisResultCondition(HasFlag, 880, 21)
	MisResultAction(ClearMission, 880)
	MisResultAction(SetRecord, 880)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 502 )	
	TriggerAction( 1, AddNextFlag, 880, 10, 12 )
	RegCurTrigger( 8801 )

-----------------------------------Слава прошлого---Кевин Уолф
	DefineMission( 881, "\209\235\224\226\224 \239\240\238\248\235\238\227\238", 881 )
	
	MisBeginTalk( "<t>Вы не встречались ещё с <rМетким скелетом-лучником>?<n><t>Когда я был молод, как Вы, они не знали от меня пощады, но годы берут своё...<n><t>Но я часто вспоминаю те дни... Не принесли бы Вы мне их трофей <yСломанное ребро> на память? Я был бы Вам признателен?" )
	MisBeginCondition(LvCheck, ">", 41 )
	--MisBeginCondition(HasRecord, 873)
	MisBeginCondition(NoMission, 881)
	MisBeginCondition(NoRecord, 881)
	MisBeginAction(AddMission, 881)
	MisBeginAction(AddTrigger, 8811, TE_GETITEM, 4822, 8 )--Сломанное ребро
	MisCancelAction(ClearMission, 881)
	
	MisNeed(MIS_NEED_DESP, " Принести <bКевину Уолфу> в точку(2688,628) <y8 Сломаных рёбер>." )
	MisNeed(MIS_NEED_ITEM, 4822, 8, 10, 8)
	
	MisHelpTalk( " Вы ещё не ходили выполнять мою просьбу?" )
	MisResultTalk( " Да, да, это те самый Сломанные рёбра! Эх, сколько же времени с тех пор прошло..." )
	MisResultCondition(NoRecord, 881)
	MisResultCondition(HasMission, 881)
	MisResultCondition(HasItem, 4822, 8)
	MisResultAction(TakeItem, 4822, 8)
	MisResultAction(ClearMission, 881)
	MisResultAction(SetRecord, 881)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4822 )	
	TriggerAction( 1, AddNextFlag, 881, 10, 8 )
	RegCurTrigger(8811)

----------------------------------Охота на Ледяного дракончика--Нейла
	DefineMission( 882, "\206\245\238\242\224 \237\224 \203\229\228\255\237\238\227\238 \228\240\224\234\238\237\247\232\234\224", 882 )
	
	MisBeginTalk( "<t>А теперь мы пойдём на охоту...<n><t>Охотиться мы будем на <rЛедяных дракончиков>.<n><t>Убейте для меня <r10 Ледяных дракончиков>, за небольшое вознаграждение." )
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 875)
	MisBeginCondition(NoMission, 882)
	MisBeginCondition(NoRecord, 882)
	MisBeginAction(AddMission, 882)
	MisBeginAction(AddTrigger, 8821, TE_KILL, 530, 10 )------Ледяной дракончик
	MisBeginAction(AddTrigger, 8822, TE_GETITEM, 4850, 1 )---Кусочек сердца из лед. кристалла
	MisCancelAction(ClearMission, 882)

	MisNeed(MIS_NEED_DESP, " Убить для Нейлы <r10 Ледяных дракончиков> и принести <yКусочек сердца из лед. кристалла>." )
	MisNeed(MIS_NEED_KILL, 530, 10, 10, 10 )
	MisNeed(MIS_NEED_ITEM, 4850, 1, 20, 1 )

	MisHelpTalk( " Вы щё не ходили на охоту?" )
	MisResultTalk( " Смотрю я на Вас и вижу настоящего егеря!" )
	MisResultCondition(NoRecord, 882)
	MisResultCondition(HasMission, 882)
	MisResultCondition(HasFlag, 882, 19)
	MisResultCondition(HasItem, 4850, 1)
	MisResultAction(TakeItem, 4850, 1)
	MisResultAction(ClearMission, 882)
	MisResultAction(SetRecord, 882)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 530 )	
	TriggerAction( 1, AddNextFlag, 882, 10, 10 )
	RegCurTrigger( 8821 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4850 )	
	TriggerAction( 1, AddNextFlag, 882, 20, 1 )
	RegCurTrigger( 8822 )

-----------------------------------Кристаллическая головоломка--Саша
	DefineMission( 883, "\202\240\232\241\242\224\235\235\232\247\229\241\234\224\255 \227\238\235\238\226\238\235\238\236\234\224", 883 )
	
	MisBeginTalk( "<t>До меня дошли слухи, что Вы охотитесь на <rЛедяного дракончика>. Захватите мне пожалуйста с него <y5 Кусочков сердца из лед. кристалла>." )
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 882)
	MisBeginCondition(NoMission, 883)
	MisBeginCondition(NoRecord, 883)
	MisBeginAction(AddMission, 883)
	MisBeginAction(AddTrigger, 8831, TE_GETITEM, 4850, 5 )--Кусочек сердца из лед. кристалла
	MisCancelAction(ClearMission, 883)
	
	MisNeed(MIS_NEED_DESP, " Принести <bСаше> в точку(2678,631) <y5 Кусочеков сердца из лед. кристалла>." )
	MisNeed(MIS_NEED_ITEM, 4850, 5, 10, 5)
	
	MisHelpTalk( " Вы уже вернулись? А кристаллы? Ну не чего страшного, я подожду!" )
	MisResultTalk( "О! Спасибо Вам. Спасибо!" )
	MisResultCondition(NoRecord, 883)
	MisResultCondition(HasMission, 883)
	MisResultCondition(HasItem, 4850, 5)
	MisResultAction(TakeItem, 4850, 5)
	MisResultAction(ClearMission, 883)
	MisResultAction(SetRecord, 883)
	MisResultAction(AddExp,17409,17409)	
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4850 )	
	TriggerAction( 1, AddNextFlag, 883, 10, 5 )
	RegCurTrigger(8831)


-----------------------------------Кристальное сердце
	DefineMission( 884, "\202\240\232\241\242\224\235\252\237\238\229 \241\229\240\228\246\229", 884 )
	
	MisBeginTalk( "<t>Есть легенда, что <yКристалл чистоты> можно преобразовать в <yкристальное сердце> и жить вечно! Давайте проверим это?! Принесите мне <y5 Кристаллов чистоты>." )
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 883)
	MisBeginCondition(NoMission, 884)
	MisBeginCondition(NoRecord, 884)
	MisBeginAction(AddMission, 884)
	MisBeginAction(AddTrigger, 8841, TE_GETITEM, 4895, 5 )--Кристалл чистоты
	MisCancelAction(ClearMission, 884)
	
	MisNeed(MIS_NEED_DESP, " Принести <bСаше> <y5 Кристаллов чистоты>." )
	MisNeed(MIS_NEED_ITEM, 4895, 5, 10, 5)
	
	MisHelpTalk( " Разве Вам не интересно проверить легенду." )
	MisResultTalk( "Спасибо! К сожалению, это всего лишь красивая легенда." )
	MisResultCondition(NoRecord, 884)
	MisResultCondition(HasMission, 884)
	MisResultCondition(HasItem, 4895, 5)
	MisResultAction(TakeItem, 4895, 5)
	MisResultAction(ClearMission, 884)
	MisResultAction(SetRecord, 884)
	MisResultAction(AddExp,21361,21361)	
	MisResultAction(AddMoney,1084,1084)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4895 )	
	TriggerAction( 1, AddNextFlag, 884, 10, 5 )
	RegCurTrigger(8841)

-----------------------------------Охота на белого медведя--нейла
	DefineMission( 885, "\206\245\238\242\224 \237\224 \225\229\235\238\227\238 \236\229\228\226\229\228\255", 885 )
	
	MisBeginTalk( "<t>Я предлагаю пойти на охоту! А охотиться я предлагаю на Огромных полярных медведей!" )
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 882)
	MisBeginCondition(NoMission, 885)
	MisBeginCondition(NoRecord, 885)
	MisBeginAction(AddMission, 885)
	MisBeginAction(AddTrigger, 8851, TE_KILL, 504, 8 )------Огромный полярный медведь
	MisBeginAction(AddTrigger, 8852, TE_GETITEM, 4824, 3 )--Острейший клык медведя
	MisCancelAction(ClearMission, 885)

	MisNeed(MIS_NEED_DESP, " Убейте для <bНейлы> <y8 Огромных полярных медведей> и принесите <y3 острейших клыка медведя>." )
	MisNeed(MIS_NEED_KILL, 504, 8, 10, 8 )
	MisNeed(MIS_NEED_ITEM, 4824, 3, 20, 3 )

	MisHelpTalk( " Вы не любите охоту?" )
	MisResultTalk( " Вам понравилась охота?" )
	MisResultCondition(NoRecord, 885)
	MisResultCondition(HasMission, 885)
	MisResultCondition(HasFlag, 885, 17)
	MisResultCondition(HasItem, 4824, 3)
	MisResultAction(TakeItem, 4824, 3)
	MisResultAction(ClearMission, 885)
	MisResultAction(SetRecord, 885)
	MisResultAction(AddExp,21361,21361)	
	MisResultAction(AddMoney,1084,1084)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 504 )	
	TriggerAction( 1, AddNextFlag, 885, 10, 8 )
	RegCurTrigger( 8851 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4824 )	
	TriggerAction( 1, AddNextFlag, 885, 20, 3 )
	RegCurTrigger( 8852 )

-----------------------------------Снежный человек--Фардей
	DefineMission( 886, "\209\237\229\230\237\251\233 \247\229\235\238\226\229\234", 886 )
	
	MisBeginTalk( "<t>Давайте положим на конец монстрам обитающих в лесах Ледыни! Убейте <r16 Снежных Человек>!" )
	MisBeginCondition(LvCheck, ">", 44 )
	MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 886)
	MisBeginCondition(NoRecord, 886)
	MisBeginAction(AddMission, 886)
	MisBeginAction(AddTrigger, 8861, TE_KILL, 194, 16 )--Снежный человек
	MisCancelAction(ClearMission, 886)

	MisNeed(MIS_NEED_DESP, " Убить для <bФардея> <r16 Снежных человек>." )
	MisNeed(MIS_NEED_KILL, 194, 16, 10, 16 )

	MisHelpTalk( " Не возвращайтесь ко мне пока не сделаете то, о чём я Вас попросил!" )
	MisResultTalk( " Вы лучший убийца монстров которых я когда ли бо встречал!" )
	MisResultCondition(NoRecord, 886)
	MisResultCondition(HasMission, 886)
	MisResultCondition(HasFlag, 886, 25)
	MisResultAction(ClearMission, 886)
	MisResultAction(SetRecord, 886)
	MisResultAction(AddExp,23628,23628)	
	MisResultAction(AddMoney,1104,1104)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 194 )	
	TriggerAction( 1, AddNextFlag, 886, 10, 16 )
	RegCurTrigger( 8861 )

-----------------------------------Ужасающий меч гиганта--Меккилон
	DefineMission( 887, "\211\230\224\241\224\254\249\232\233 \236\229\247 \227\232\227\224\237\242\224", 887 )
	
	MisBeginTalk( "<t>Хех, рад видеть Вас живым и невредимым!<n><t>Так, как вы уже знакомы с <rСнежным ужасом>, не могли бы Вы мне принести <y5 Ужасающих мечей гиганта>?" )
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 883)
	MisBeginCondition(NoMission, 887)
	MisBeginCondition(NoRecord, 887)
	MisBeginAction(AddMission, 887)
	MisBeginAction(AddTrigger, 8871, TE_GETITEM, 4910, 5 )--Ужасающий меч гиганта
	MisCancelAction(ClearMission, 887)
	
	MisNeed(MIS_NEED_DESP, " Принести <bМеккилону> в точку(2662,648) <yУжасающий меч гиганта>." )
	MisNeed(MIS_NEED_ITEM, 4910, 5, 10, 5)
	
	MisHelpTalk( " Вы испугались опять столкнуться с Снежным ужасом?" )
	MisResultTalk( " Ва! Вы настоящий мастер своего дела!" )
	MisResultCondition(NoRecord, 887)
	MisResultCondition(HasMission, 887)
	MisResultCondition(HasItem, 4910, 5)
	MisResultAction(TakeItem, 4910, 5)
	MisResultAction(ClearMission, 887)
	MisResultAction(SetRecord, 887)
	MisResultAction(AddExp,23628,23628)	
	MisResultAction(AddMoney,1104,1104)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4910 )	
	TriggerAction( 1, AddNextFlag, 887, 10, 5 )
	RegCurTrigger(8871)

-----------------------------------Оборотень Лучник
	DefineMission( 888, "\206\225\238\240\238\242\229\237\252 \203\243\247\237\232\234", 888 )
	
	MisBeginTalk( "<t>Как Вы уже поняли, мы идём на охоту! Нашей жертвой будет <rВервольф лучник>! Главное, нам самим не стать его жертвой!" )
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 880)
	MisBeginCondition(NoMission, 888)
	MisBeginCondition(NoRecord, 888)
	MisBeginAction(AddMission, 888)
	MisBeginAction(AddTrigger, 8881, TE_KILL, 272, 20 )-------Вервольф лучник
	MisBeginAction(AddTrigger, 8882, TE_GETITEM, 4916, 5 )----Сломанный лук Вервольфа
	MisCancelAction(ClearMission, 888)

	MisNeed(MIS_NEED_DESP, " Убить <r20 Вервольф лучников> и принести <y5 Сломанных луков Вервольфа> <bНейле>." )
	MisNeed(MIS_NEED_KILL, 272, 20, 10, 20 )
	MisNeed(MIS_NEED_ITEM, 4916, 5, 40, 5 )

	MisHelpTalk( " Вы устали от охоты? Отдохните!" )
	MisResultTalk( " Потрясающе!" )
	MisResultCondition(NoRecord, 888)
	MisResultCondition(HasMission, 888)
	MisResultCondition(HasFlag, 888, 29)
	MisResultCondition(HasItem, 4916, 5)
	MisResultAction(TakeItem, 4916, 5)
	MisResultAction(ClearMission, 888)
	MisResultAction(SetRecord, 888)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 272 )	
	TriggerAction( 1, AddNextFlag, 888, 10, 20 )
	RegCurTrigger( 8881 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4916 )	
	TriggerAction( 1, AddNextFlag, 888, 40, 5 )
	RegCurTrigger( 8882 )

-----------------------------------Последний Йети--Фардей
	DefineMission( 889, "\207\238\241\235\229\228\237\232\232 \200\229\242\232", 889 )
	
	MisBeginTalk( "<t>Это самый страшный Лесной монстр которого я видел в своей жизни, будьте с ним очень осторожны!" )
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 878)
	MisBeginCondition(NoMission, 889)
	MisBeginCondition(NoRecord, 889)
	MisBeginAction(AddMission, 889)
	MisBeginAction(AddTrigger, 8891, TE_KILL, 545, 15 )--Кровожадный йети
	MisCancelAction(ClearMission, 889)

	MisNeed(MIS_NEED_DESP, " Убейте для <bФардей> <r15 Кровожадных йети>." )
	MisNeed(MIS_NEED_KILL, 545, 15, 10, 15 )

	MisHelpTalk( " Время - деньги, мой друг!" )
	MisResultTalk( "Отлично! Вот Ваша награда." )
	MisResultCondition(NoRecord, 889)
	MisResultCondition(HasMission, 889)
	MisResultCondition(HasFlag, 889, 24)
	MisResultAction(ClearMission, 889)
	MisResultAction(SetRecord, 889)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 545 )	
	TriggerAction( 1, AddNextFlag, 889, 10, 15 )
	RegCurTrigger( 8891 )

----------------------------------Ужасающее оружие лесных монстров--Меккилон
	DefineMission( 890, "\211\230\224\241\224\254\249\229\229 \238\240\243\230\232\229 \235\229\241\237\251\245 \236\238\237\241\242\240\238\226", 890 )
	
	MisBeginTalk( "<t>У меня для Вас очень ответсвенное поручение! Доставьте мне <у5 Ужасающих посохов гиганта>, но ни кому не говорите, что Вы их ищите для меня." )
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 887)
	MisBeginCondition(NoMission, 890)
	MisBeginCondition(NoRecord, 890)
	MisBeginAction(AddMission, 890)
	MisBeginAction(AddTrigger, 8901, TE_GETITEM, 4912, 5 )--Ужасающий посох гиганта
	MisCancelAction(ClearMission, 890)
	
	MisNeed(MIS_NEED_DESP, " Принести <bМеккилонув> точку (2662,648) <y5 Ужасающих посохов Гиганта>." )
	MisNeed(MIS_NEED_ITEM, 4912, 5, 10, 5)
	
	MisHelpTalk( " Я всё ещё жду, что Вы мне принесёте то, что я Вам заказал!" )
	MisResultTalk( " Спасибо вам!" )
	MisResultCondition(NoRecord, 890)
	MisResultCondition(HasMission, 890)
	MisResultCondition(HasItem, 4912, 5)
	MisResultAction(TakeItem, 4912, 5)
	MisResultAction(ClearMission, 890)
	MisResultAction(SetRecord, 890)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4912 )	
	TriggerAction( 1, AddNextFlag, 890, 10, 5 )
	RegCurTrigger(8901)

-----------------------------------	За Честь--нейла
	DefineMission( 891, "\199\224 \215\229\241\242\252", 891 )
	
	MisBeginTalk( "<t>Некоторые люди идут на войну ради установления мира, другие ради собственной чести. Если Вы хотите доказать, что Вы достойный воин, выполните моё поручение.<n><t>Не ради мира, а ради чести и славы!" )
	MisBeginCondition(LvCheck, ">", 46 )
	MisBeginCondition(HasRecord, 888)
	MisBeginCondition(NoMission, 891)
	MisBeginCondition(NoRecord, 891)
	MisBeginAction(AddMission, 891)
	MisBeginAction(AddTrigger, 8911, TE_KILL, 506, 10 )---------Скелет-воитель
	MisBeginAction(AddTrigger, 8912, TE_GETITEM, 4826, 1 )------Знак воинской чести
	MisCancelAction(ClearMission, 891)

	MisNeed(MIS_NEED_DESP, " Убить для <bНейлы>, находящей в точке(2675,631), <r10 скелетов-воителей> и принести один <yзнак воинской чести>." )
	MisNeed(MIS_NEED_KILL, 506, 10, 10, 10 )
	MisNeed(MIS_NEED_ITEM, 4826, 1, 20, 1 )

	MisHelpTalk( " Вы не хотите сами себе доказать, что Вы настоящий воин?" )
	MisResultTalk("Очень хорошо! Вы справились с моей не простой задачей!" )
	MisResultCondition(NoRecord, 891)
	MisResultCondition(HasMission, 891)
	MisResultCondition(HasFlag, 891, 19)
	MisResultCondition(HasItem, 4826, 1)
	MisResultAction(TakeItem, 4826, 1)
	MisResultAction(ClearMission, 891)
	MisResultAction(SetRecord, 891)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 506 )	
	TriggerAction( 1, AddNextFlag, 891, 10, 10 )
	RegCurTrigger( 8911 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4826 )	
	TriggerAction( 1, AddNextFlag, 891, 20, 1 )
	RegCurTrigger( 8912 )


-----------------------------------	Охота на Ящера--нейла
	DefineMission( 892, "\206\245\238\242\224 \237\224 \223\249\229\240\224", 892 )
	
	MisBeginTalk( "<t>Все, на кого мы ходили охотиться, по сравнению с Ящером просто баловство! Ящер - вот настоящий стимул охоты!" )
	MisBeginCondition(LvCheck, ">", 49 )
	MisBeginCondition(HasRecord, 885)
	MisBeginCondition(NoMission, 892)
	MisBeginCondition(NoRecord, 892)
	MisBeginAction(AddMission, 892)
	MisBeginAction(AddTrigger, 8921, TE_KILL, 196, 15 )--Ящер
	MisCancelAction(ClearMission, 892)

	MisNeed(MIS_NEED_DESP, " Убить <r15 Ящеров> для <bНейлы>(2675,631)." )
	MisNeed(MIS_NEED_KILL, 196, 15, 10, 15 )

	MisHelpTalk( " Уже убили 15 Ящеров? Тогда идите и убейте." )
	MisResultTalk(" После моих испытаний Вы научились обладать своими желаниями и научились охотиться." )
	MisResultCondition(NoRecord, 892)
	MisResultCondition(HasMission, 892)
	MisResultCondition(HasFlag, 892, 24)
	MisResultAction(ClearMission, 892)
	MisResultAction(SetRecord, 892)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 196 )	
	TriggerAction( 1, AddNextFlag, 892, 10, 15 )
	RegCurTrigger( 8921 )

-----------------------------------Коллекция Топоров ящера
	DefineMission( 893, "\202\238\235\235\229\234\246\232\255 \210\238\239\238\240\238\226 \255\249\229\240\224", 893 )
	
	MisBeginTalk( "<t>Ах! Как бы я хотел иметь коллекцию из <yтопоров ящера>..." )
	MisBeginCondition(LvCheck, ">", 49 )
	MisBeginCondition(HasRecord, 890)
	MisBeginCondition(NoMission, 893)
	MisBeginCondition(NoRecord, 893)
	MisBeginAction(AddMission, 893)
	MisBeginAction(AddTrigger, 8931, TE_GETITEM, 4920, 5 )--Топор ящера
	MisCancelAction(ClearMission, 893)
	
	MisNeed(MIS_NEED_DESP, " Принести в точку(2662,648) <bМеккилону> <y5 топоров ящера>." )
	MisNeed(MIS_NEED_ITEM, 4920, 5, 10, 5)
	
	MisHelpTalk( " Я не спешу! Но Вы обещаете мне принести <yтопоры ящера>?" )
	MisResultTalk( " Спасибо Вам! Вы мне очень помогли." )
	MisResultCondition(NoRecord, 893)
	MisResultCondition(HasMission, 893)
	MisResultCondition(HasItem, 4920, 5)
	MisResultAction(TakeItem, 4920, 5)
	MisResultAction(ClearMission, 893)
	MisResultAction(SetRecord, 893)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4920 )	
	TriggerAction( 1, AddNextFlag, 893, 10, 5 )
	RegCurTrigger(8931)


---------------------------------------------------------------
--							    							 --
--			незаконное издание корибских морей			     --
--														     --
---------------------------------------------------------------


----------------------------------------
--                                    --
--              Миссия "Викинг"       --
--                                    --
----------------------------------------

--Марк Тёрнер(о.Скелетов)-"Обнаружение"
	DefineMission(894, "\196\238\234\224\231\224\242\229\235\252\241\242\226\224 \240\224\241\241\235\229\228\238\226\224\237\232\255", 894)--Доказательства расследования---Марк Тёрнер(о.Скелетов)
	MisBeginTalk( "<t>Эй, ты! А ну ка стоять! Ха! Ты пират! Ты тут недавно?<n><t>Если Ты пират, то докажи мне это! Уничтожь <r4 Турель мертвых душ> в <pВоенной Базе>. Это опасно, но докажет твою преданность к пиратам." )
	
	MisBeginCondition(NoRecord, 894)
	MisBeginCondition(NoMission, 894)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 894)
	MisBeginAction(AddTrigger, 8941, TE_KILL, 801, 4)--Турель мертвых душ

	MisCancelAction(ClearMission, 894)

	MisNeed(MIS_NEED_KILL, 801, 4, 10, 4)
	

	MisHelpTalk( "<t>Что? Ты ещё не выполнил моё поручение? Ступай немедленно!" )
	MisResultTalk( "<t>Ты настоящий пират! И, как я только мог сомневаться в этом! Я рассказал о твоём героическом подвиге <bПирату Джеку>, он заинтересовался в тебе!<n><t>Отправляйся к <bПирату Джеку> и поговори с ним!" )

	MisResultCondition(HasMission , 894)
	MisResultCondition(NoRecord, 894)
	MisResultCondition(HasFlag, 894, 13)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 894)
	MisResultAction(SetRecord, 894)

	MisResultAction(AddExp, 80000,80000)
	MisResultAction(AddMoney, 40000,40000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 801)
	TriggerAction(1, AddNextFlag, 894, 10, 4)
	RegCurTrigger(8941)
		

--Пират Джек (Бесподобный пират)

	DefineMission( 895, "\193\229\241\239\238\228\238\225\237\251\233 \239\232\240\224\242", 895 )
	MisBeginTalk( "<t>Мне, о тебе рассказал <pТёрнер>! Я восхищён твоей решимостью и смелостью! Ты подходишь для моего особого поручения!<n><t>Мы сейчас воюем с пиратами призраками! Это армия <pБарбаросо>! Ты нам нужен, что бы одержать пообеду! Но для начала ты должен ослабить армию противника убив <r30 Солдат мёртвых душ> и <r15 Мёртвых душ>. Я верю в тебя!" )
	
	MisBeginCondition(HasRecord, 894)
	MisBeginCondition(NoRecord, 895)
	MisBeginCondition(NoMission, 895)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 895)
	MisBeginAction(AddTrigger, 8951, TE_KILL, 808, 30)--Солдат мертвых душ
	MisBeginAction(AddTrigger, 8952, TE_KILL, 817, 15)--мертвая душа

	MisCancelAction(ClearMission, 895)

	MisNeed(MIS_NEED_KILL, 808, 30, 30, 30)
	MisNeed(MIS_NEED_KILL, 817, 15, 70, 15)
	

	MisHelpTalk( "<t>Это не простое поручение! От этого зависит судьба пиратов." )
	MisResultTalk( "<t>Ты действительно <pвеликий пират>! Тебе необходимо немного отдохнуть перед великим боем!" )

	MisResultCondition(HasMission ,895)
	MisResultCondition(NoRecord , 895)
	MisResultCondition(HasFlag, 895, 59)
	MisResultCondition(HasFlag, 895, 84)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 895)
	MisResultAction(SetRecord, 895)

	MisResultAction(AddExp, 200000,200000)
	MisResultAction(AddMoney, 150000,150000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 808)
	TriggerAction(1, AddNextFlag, 895, 30, 30)
	RegCurTrigger(8951)
		
	InitTrigger()
	TriggerCondition(1, IsMonster, 817)
	TriggerAction(1, AddNextFlag, 895, 70, 15)
	RegCurTrigger(8952)
	
	
-- Пират Джек "Голова Командующего"

	DefineMission( 896, "\193\238\229\226\238\233 \241\242\240\238\233", 896 )
	MisBeginTalk( "<t>Ты хорошо отдохнул? Отлично! Мои пираты готовы выступить, но для начала ты должен помочь мне избавить их от страха.<n><t>Убей <rКомандира мёртвых душ> и принеси его <yголову>. Это придаст уверенности моим пиратам." )
	
	MisBeginCondition(HasRecord, 895)
	MisBeginCondition(NoRecord, 896)
	MisBeginCondition(NoMission, 896)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 896)
	MisBeginAction(AddTrigger, 8961, TE_KILL, 807, 1)--------------Командир мёртвых душ
	MisBeginAction(AddTrigger, 8962, TE_GETITEM, 2387, 1)----------Глава разделенного командования

	MisCancelAction(ClearMission, 896)

	MisNeed(MIS_NEED_KILL, 807, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2387, 1, 20, 1)
	

	MisHelpTalk( "<t>Не рескуй по напрасну! Это очень опасное задание!" )
	MisResultTalk( "<t>Ха-ха-ха! Да ты вскружил ему голову! Ха-ха-ха... он её просто потерял!" )

	MisResultCondition(HasMission, 896)
	MisResultCondition(NoRecord, 896)
	MisResultCondition(HasFlag, 896, 10)
	MisResultCondition(HasItem, 2387, 1)
	MisResultBagNeed(1)
	MisResultCondition(HasPirateGuild)

	MisResultAction(TakeItem, 2387, 1)
	MisResultAction(ClearMission, 896)
	MisResultAction(SetRecord, 896)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 1000000,1000000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 807)
	TriggerAction(1, AddNextFlag, 896, 10, 1)
	RegCurTrigger(8961)
		
	InitTrigger()
	TriggerCondition(1, IsItem, 2387)
	TriggerAction(1, AddNextFlag, 896, 20, 1)
	RegCurTrigger(8962)




----------------------------------------
--                                    --
--       Морское путешествие  		  --
--           Флот                     --
----------------------------------------

-- Веллингтон--Продовольствия пиратов
	DefineMission( 897, "\207\240\238\228\238\226\238\235\252\241\242\226\232\255 \239\232\240\224\242\238\226", 897 )

	MisBeginTalk( "<t>Становись! Смирно! Равнение на меня! Боец! Ты переходишь под моё командование! Твоя первая задача это: принести <y5 Пиво Пиратов> и <y5 Барбекю пиратов>! Сначало выполнение задачи, а уже потом вопросы!" )
	MisBeginCondition(NoRecord, 897)
	MisBeginCondition(NoMission,897)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 897)
	MisBeginAction(AddTrigger, 8971,TE_GETITEM, 2413, 5)--Пиво пиратов
	MisBeginAction(AddTrigger, 8972,TE_GETITEM, 2414, 5)--Барбекю пиратов
	
	MisCancelAction(ClearMission, 897)

	MisNeed(MIS_NEED_ITEM, 2413, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 2414, 5, 20, 5)

	MisHelpTalk( "<t>Ты это всё сможешь получить убив корабль призрак! Нам необходимо понять почему они такие сильные. и ходят легенды, что эта провизия им придаёт силу!" )

	MisResultTalk( " Так, так! Ага! Это то самое! Дайте ка я посмотрю... Хм...<n><t>Эта провизия ни чем не отличается от простой еды! По видимому это всего лишь легенда!" )
	
	MisResultCondition(HasMission, 897)
	MisResultCondition(NoRecord, 897)
	MisResultCondition(HasItem, 2413, 5)
	MisResultCondition(HasItem, 2414, 5)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2413, 5)
	MisResultAction(TakeItem , 2414, 5)
	MisResultAction(ClearMission, 897)
	MisResultAction(SetRecord, 897)

	MisResultAction(AddExp ,200000, 200000)
	MisResultAction(AddMoney ,100000, 100000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2413)
	TriggerAction(1,AddNextFlag, 897, 10, 5)
	RegCurTrigger(8971)

	InitTrigger()
	TriggerCondition(1, IsItem, 2414)
	TriggerAction(1,AddNextFlag, 897, 20, 5)
	RegCurTrigger(8972)
	
-- Веллингтон--Истребление Пиратов
	DefineMission( 898, "\200\241\242\240\229\225\235\229\237\232\229 \207\232\240\224\242\238\226", 898 )

	MisBeginTalk( "<t>Эй, боец! У меня есть новая задача для тебя!<n><t>Принесите мне <y15 Пиратских костей>! Не задавай лишних вопросов! Просто принеси мне их!" )
	MisBeginCondition(HasRecord, 897)
	MisBeginCondition(NoRecord, 898)
	MisBeginCondition(NoMission,898)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 898)
	MisBeginAction(AddTrigger, 8981, TE_GETITEM, 2419, 15)--Пиратская кость
	
	MisCancelAction(ClearMission, 898)

	MisNeed(MIS_NEED_ITEM, 2419, 15, 30, 15)

	MisHelpTalk( "<t>Ты отказываешься выполнять приказы вышестоящего офицера? За это я тебя под требунал..." )

	MisResultTalk( "<t>Да! Я так и думал! Корабли призраки действуют по примому приказу Чёрной жемчужины! Отдохните перед важной миссией." )
	
	MisResultCondition(HasMission, 898)
	MisResultCondition(NoRecord, 898)
	MisResultCondition(HasItem, 2419, 15)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2419, 15)
	MisResultAction(ClearMission, 898)
	MisResultAction(SetRecord, 898)

	MisResultAction(AddExp ,250000, 250000)
	MisResultAction(AddMoney ,150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2419)
	TriggerAction(1,AddNextFlag, 898, 30, 15)
	RegCurTrigger(8981)


-- Веллингтон--Проклятый Черный бриллиант
	DefineMission( 899, "\207\240\238\234\235\255\242\251\233 \215\229\240\237\251\233 \225\240\232\235\235\232\224\237\242", 899 )

	MisBeginTalk( "<t><rЧёрный Брилиант> пугает мою армию, а так как ты уже доказал своё бестрашие я поручаю тебе избавиться от него! И принеси мне ещё <yЗнак копитана>! Ступай!" )
	MisBeginCondition(HasRecord, 898)
	MisBeginCondition(NoRecord, 899)
	MisBeginCondition(NoMission,899)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 899)
	MisBeginAction(AddTrigger, 8991,TE_KILL, 815, 1 )---------Чёрный брилиант
	MisBeginAction(AddTrigger, 8992,TE_GETITEM, 2429, 1 )----Знак Капитана
	
	MisCancelAction(ClearMission, 899)

	MisNeed(MIS_NEED_KILL, 815, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2429, 1, 20, 1)

	MisHelpTalk( "<t>Как только мы заполучим <yЗнак копитана> и убьём <rЧёрную жемчужину>, моя армия разгромит пиратов!" )

	MisResultTalk( "<t>Отлично! Ты опровдал мои надежды! Вот твоя награда, за проделанную работу!" )
	
	MisResultCondition(HasMission, 899)
	MisResultCondition(NoRecord, 899)
	MisResultCondition(HasFlag, 899, 10)
	MisResultCondition(HasItem, 2429, 1)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2429, 1)
	MisResultAction(ClearMission, 899)
	MisResultAction(SetRecord, 899)

	MisResultAction(AddExp ,500000, 500000)
	MisResultAction(AddMoney ,1000000, 1000000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 815, 1)
	TriggerAction(1,AddNextFlag, 899, 10,1)
	RegCurTrigger(8991)

	InitTrigger()
	TriggerCondition(1, IsItem, 2429, 1)
	TriggerAction(1,AddNextFlag, 899, 20,1)
	RegCurTrigger(8992)


------------------------------------------------ Maojing regional task 
 --Gurirab ---------------------------------------------------------------------- garner profits pyronaridine -------------- Thanksgiving depot ------ Alex (1526,3089) 
 DefineMission (6500, "Lee pyronaridine Gurirab Thanksgiving depot", 1800) 
 
 MisBeginTalk ( "<t> hero, thank you for our benefit depot Gurirab pyronaridine all contributions made by the residents, we have specially prepared for you a gift, on Aunt Lena (1510,3089), where the only trouble you go get her cough! ") 
 MisBeginCondition (NoRecord, 1800) 
 MisBeginCondition (NoMission, 1800) 
 MisBeginCondition (HasRecord, 600) 
 MisBeginCondition (HasRecord, 601) 
 MisBeginCondition (HasRecord, 602) 
 MisBeginCondition (HasRecord, 603) 
 MisBeginCondition (HasRecord, 604) 
 MisBeginCondition (HasRecord, 605) 
 MisBeginCondition (HasRecord, 606) 
 MisBeginCondition (HasRecord, 607) 
 MisBeginCondition (HasRecord, 608) 
 MisBeginCondition (HasRecord, 609) 
 MisBeginCondition (HasRecord, 610) 
 MisBeginCondition (HasRecord, 611) 
 MisBeginCondition (HasRecord, 612) 
 MisBeginCondition (HasRecord, 613) 
 MisBeginCondition (HasRecord, 614) 
 MisBeginCondition (HasRecord, 615) 
 MisBeginCondition (HasRecord, 616) 
 MisBeginCondition (HasRecord, 617) 
 MisBeginCondition (HasRecord, 618) 
 MisBeginCondition (HasRecord, 619) 
 MisBeginAction (AddMission, 1800) 
 MisCancelAction (ClearMission, 1800) ------ the task could be deleted 
 
 MisNeed (MIS_NEED_DESP, "Lee pyronaridine to Gurirab <j???(1510,3089)> depot where are you from the gift.") 
 
 MisHelpTalk ( "<t> on your gift on Aunt Lena (1510,3089), where you do not get fast!") 
 MisResultCondition (AlwaysFailure) 
 --Gurirab ---------------------------------------------------------------------- garner profits pyronaridine -------------- Thanksgiving depot ---------- Aunt Lena (1510,3089) 
 DefineMission (6501, "Lee pyronaridine Gurirab Thanksgiving depot", 1800, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> our heroes, I guess, you must be to receive gifts, right?") 
 MisResultCondition (NoRecord, 1800) 
 MisResultCondition (HasMission, 1800) 
 MisResultAction (ClearMission, 1800) 
 MisResultAction (SetRecord, 1800) 
 MisResultAction (AddExp, 17000,17000) 

 ---------------------------------------------------------------------- garner Thanksgiving depot warnow lv 29 ~ 39 -------- Vaasa ---------------- Fall (1136,2778) 
 DefineMission (6502, "Thanksgiving warnow depot", 1801) 
 
 MisBeginTalk ( "<t> I know you have done a lot of us, I should not trouble you again. But I really hate <b???> near, they always exude a kind of tired of people aroma, I have made errors appetite! <n> <t> go on like this, I must have been adversely affected by the body! ask you to help me kill 5 <b???> it, let me ease the time being a few days, the guy that nausea usually occur in the vicinity of <j????(1131,2822)>, ask the. ") 
 MisBeginCondition (NoMission, 1801) 
 MisBeginCondition (NoRecord, 1801) 
 MisBeginCondition (HasRecord, 620) 
 MisBeginCondition (HasRecord, 621) 
 MisBeginCondition (HasRecord, 622) 
 MisBeginCondition (HasRecord, 623) 
 MisBeginCondition (HasRecord, 624) 
 MisBeginCondition (HasRecord, 625) 
 MisBeginCondition (HasRecord, 626) 
 MisBeginCondition (HasRecord, 627) 
 MisBeginCondition (HasRecord, 628) 
 MisBeginCondition (HasRecord, 629) 
 MisBeginCondition (HasRecord, 630) 
 MisBeginCondition (HasRecord, 631) 
 MisBeginCondition (HasRecord, 632) 
 MisBeginCondition (HasRecord, 633) 
 MisBeginCondition (HasRecord, 634) 
 MisBeginCondition (HasRecord, 635) 
 MisBeginCondition (HasRecord, 636) 
 MisBeginCondition (HasRecord, 637) 
 MisBeginAction (AddMission, 1801) 
 MisBeginAction (AddTrigger, 18011, TE_KILL, 295, 5) 
 MisCancelAction (ClearMission, 1801) 

 MisNeed (MIS_NEED_DESP, "to help kill <j????(1136,2778)> depot warnow 5 <b???>.") 
 MisNeed (MIS_NEED_KILL, 295, 5, 10, 5) 
 
 MisHelpTalk ( "<t> you kill five of the <b???> can.") 
 MisResultTalk ( "<t> Thank you so much, at least for a time can be a comfortable place.") 
 MisResultCondition (NoRecord, 1801) 
 MisResultCondition (HasMission, 1801) 
 MisResultCondition (HasFlag, 1801, 14) 
 MisResultAction (ClearMission, 1801) 
 MisResultAction (SetRecord, 1801) 
 MisResultAction (AddExp, 50000, 50000) 

 InitTrigger () 
 TriggerCondition (1, IsMonster, 295) 
 TriggerAction (1, AddNextFlag, 1801, 10, 5) 
 RegCurTrigger (18011) 
 
 ---------------------------------------------------------------------- magicsea Thanksgiving depot SHAQUANZI lv9 ~ 19 ---------- ---------- Felice (797,3129) 
 DefineMission (6503, "Thanksgiving SHAQUANZI depot", 1802) 
 
 MisBeginTalk ( "<t> I on behalf of all residents of sand depot Stephen, thank you for all the contributions we made, I finally agreed to a small request, I am very busy recently, not for a long time to visit Vina, please my greetings to her, please? ") 
 MisBeginCondition (NoRecord, 1802) 
 MisBeginCondition (NoMission, 1802) 
 MisBeginCondition (HasRecord, 638) 
 MisBeginCondition (HasRecord, 639) 
 MisBeginCondition (HasRecord, 640) 
 MisBeginCondition (HasRecord, 641) 
 MisBeginCondition (HasRecord, 642) 
 MisBeginCondition (HasRecord, 643) 
 MisBeginCondition (HasRecord, 644) 
 MisBeginCondition (HasRecord, 645) 
 MisBeginCondition (HasRecord, 646) 
 MisBeginCondition (HasRecord, 647) 
 MisBeginCondition (HasRecord, 648) 
 MisBeginCondition (HasRecord, 649) 
 MisBeginCondition (HasRecord, 650) 
 MisBeginCondition (HasRecord, 651) 
 MisBeginCondition (HasRecord, 652) 
 MisBeginAction (AddMission, 1802) 
 MisCancelAction (ClearMission, 1802) ------ the task could be deleted 
 
 MisNeed (MIS_NEED_DESP, "greetings to you to help Professor Stephen depot sand <j??(781,3127)>.") 
 
 MisHelpTalk ( "<t> as soon as possible to bring the greetings of my Vina (781,3127), please?") 
 MisResultCondition (AlwaysFailure) 
 ---------------------------------------------------------------------- magicsea Thanksgiving depot SHAQUANZI ---------------- -------- Vina (781,3127) 
 DefineMission (6504, "Thanksgiving SHAQUANZI depot", 1802, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> Thank you, Felice her all the time I think about it, right?") 
 MisResultCondition (NoRecord, 1802) 
 MisResultCondition (HasMission, 1802) 
 MisResultAction (ClearMission, 1802) 
 MisResultAction (SetRecord, 1802) 
 MisResultAction (AddExp, 4400,4400) 

 --Babu ------------------ magicsea -------------------------------------- Thanksgiving depot????(1244,3186) 
 DefineMission (6505, "Babu Thanksgiving depot", 1803) 
 
 MisBeginTalk ( "<t> know? You are my idol worship Oh! Uh, help me to Babu <b?10???> depot where <j??(1209,3196)>? I hungry, hee hee giggle. ") 
 MisBeginCondition (NoRecord, 1803) 
 MisBeginCondition (NoMission, 1803) 
 MisBeginCondition (HasRecord, 653) 
 MisBeginCondition (HasRecord, 654) 
 MisBeginCondition (HasRecord, 655) 
 MisBeginCondition (HasRecord, 656) 
 MisBeginCondition (HasRecord, 657) 
 MisBeginCondition (HasRecord, 658) 
 MisBeginCondition (HasRecord, 659) 
 MisBeginCondition (HasRecord, 660) 
 MisBeginCondition (HasRecord, 661) 
 MisBeginCondition (HasRecord, 662) 
 MisBeginCondition (HasRecord, 663) 
 MisBeginCondition (HasRecord, 664) 
 MisBeginCondition (HasRecord, 665) 
 MisBeginCondition (HasRecord, 666) 
 MisBeginCondition (HasRecord, 667) 
 MisBeginAction (AddMission, 1803) 
 MisBeginAction (AddTrigger, 18031, TE_GETITEM, 1848, 10) 
 MisCancelAction (ClearMission, 1803) ------ the task could be deleted 
 
 MisNeed (MIS_NEED_DESP, "Babu <b?10???> depot to <j????(1244,3186)>") 
 MisNeed (MIS_NEED_ITEM, 1848, 10, 10, 10) 
 
 MisHelpTalk ( "10 to buy the bread? I better hurry and so be changed yo !")---------------------------- 
 MisResultTalk ( "thank you we have done recently for the contribution of so many of these incentives is that everyone's mind.") 
 MisResultCondition (NoRecord, 1803) 
 MisResultCondition (HasMission, 1803) 
 MisResultCondition (HasItem, 1848, 10) 
 MisResultAction (TakeItem, 1848, 10) 
 MisResultAction (ClearMission, 1803) 
 MisResultAction (SetRecord, 1803) 
 MisResultAction (AddExp, 17000,17000 )---------------------------- to be changed 

 InitTrigger () 
 TriggerCondition (1, IsItem, 1848) 
 TriggerAction (1, AddNextFlag, 1803, 10, 10) 
 RegCurTrigger (18031) 
 
 ---------------------------------------------------------------------- darkblue depot ice -------------------- -- Winter Damiri mother--in--law (795,363) 
 DefineMission (6506, "Thanksgiving for the refilling ice", 1804) 
 
 MisBeginTalk ( "<t> little hero, I know you are very good, so the busy you must help me to bring this <b??> depot <j??(798,369)> ice, she is a poor child, She has been waiting for parcels sent to her family does, but not the heart to tell her that her home had already been devoured by monsters. ") 
 MisBeginCondition (NoRecord, 1804) 
 MisBeginCondition (NoMission, 1804) 
 MisBeginCondition (HasRecord, 668) 
 MisBeginCondition (HasRecord, 669) 
 MisBeginCondition (HasRecord, 670) 
 MisBeginCondition (HasRecord, 671) 
 MisBeginCondition (HasRecord, 672) 
 MisBeginCondition (HasRecord, 673) 
 MisBeginCondition (HasRecord, 674) 
 MisBeginCondition (HasRecord, 675) 
 MisBeginCondition (HasRecord, 676) 
 MisBeginCondition (HasRecord, 677) 
 MisBeginCondition (HasRecord, 678) 
 MisBeginCondition (HasRecord, 679) 
 MisBeginCondition (HasRecord, 680) 
 MisBeginCondition (HasRecord, 681) 
 MisBeginCondition (HasRecord, 682) 
 MisBeginAction (AddMission, 1804) 
 MisBeginAction (GiveItem, 6053, 1, 4 )-------------------------- package 
 MisCancelAction (ClearMission, 1804) ------ the task could be deleted 
 MisBeginBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "all filling stations to help ice <j?????(795,363)> to the ice with a <b??> are <j??(798,369)> depot.") 
 
 MisHelpTalk ( "<t> the parcel as soon as possible to the Nanae (798,369), to ask a!") 
 MisResultCondition (AlwaysFailure) 
 ---------------------------------------------------------------------- darkblue Thanksgiving ice depot ---------------- Nanae -------- (798,369) 
 DefineMission (6507, "Thanksgiving ice depot", 1804, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> Thanks to your help I can get the parcel in time, you know how important this right for me? These are our depot for all awards to you! Thank you!") 
 MisResultCondition (NoRecord, 1804) 
 MisResultCondition (HasMission, 1804) 
 MisResultAction (ClearMission, 1804) 
 MisResultCondition (HasItem, 6053, 1 )-------------------------- package 
 MisResultAction (TakeItem, 6053, 1 )-------------------------- package 
 MisResultAction (SetRecord, 1804) 
 MisResultAction (AddExp, 4400,4400) 
 
 ---------------------------------- darkblue Thanksgiving depot????Julie ---------------------------- Boomer (1049,673) 
 DefineMission (6508, "Thanksgiving????depot", 1805) 
 
 MisBeginTalk ( "<t> oh, I found the people here rely on you almost really sorry you have trouble to help me a little busy for me to????(1059,661), where <b buy one Apple> please? that the benefits of eating more than Apple, huh, huh, thank you! ") 
 MisBeginCondition (NoRecord, 1805) 
 MisBeginCondition (NoMission, 1805) 
 MisBeginCondition (HasRecord, 683) 
 MisBeginCondition (HasRecord, 684) 
 MisBeginCondition (HasRecord, 685) 
 MisBeginCondition (HasRecord, 686) 
 MisBeginCondition (HasRecord, 687) 
 MisBeginCondition (HasRecord, 688) 
 MisBeginCondition (HasRecord, 689) 
 MisBeginCondition (HasRecord, 690) 
 MisBeginCondition (HasRecord, 691) 
 MisBeginCondition (HasRecord, 692) 
 MisBeginCondition (HasRecord, 693) 
 MisBeginCondition (HasRecord, 694) 
 MisBeginCondition (HasRecord, 695) 
 MisBeginCondition (HasRecord, 696) 
 MisBeginCondition (HasRecord, 697) 
 MisBeginAction (AddMission, 1805) 
 MisBeginAction (AddTrigger, 18051, TE_GETITEM, 1847, 1 )---------------------- Apple 
 MisCancelAction (ClearMission, 1805) ------ the task could be deleted 
 
-- Apple ">?") 
 MisNeed (MIS_NEED_ITEM, 1847, 1, 10, 1) 
 
 MisHelpTalk ( "Apple bought it? I am impatient and so good yo!") 
 MisResultTalk ( "thank you we have done recently for the contribution of so many of these incentives is that everyone's mind.") 
 MisResultCondition (NoRecord, 1805) 
 MisResultCondition (HasMission, 1805) 
 MisResultCondition (HasItem, 1847, 1 )---------------------- Apple 
 MisResultAction (TakeItem, 1847, 1 )---------------------- Apple 
 MisResultAction (ClearMission, 1805) 
 MisResultAction (SetRecord, 1805) 
 
 MisResultAction (AddExp, 17000,17000) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 1847) 
 TriggerAction (1, AddNextFlag, 1805, 10, 1) 
 RegCurTrigger (18051) 
 
 --Skeleton ---------------------------------------------------------------------- darkblue Thanksgiving depot camp lv -------------- ------????(2142,556) 
 DefineMission (6509, "Skeleton Thanksgiving camp depot", 1806) 
 
 MisBeginTalk ( "<t> Although????I had a full day, they thought I was????, but in fact it is clear what I go again! I will never forget you we have made great contributions and I Shuji (2138, 545) have discussed how you repay them, by the way, do not know how his final decision, you go to his right. ") 
 MisBeginCondition (NoRecord, 1806) 
 MisBeginCondition (NoMission, 1806) 
 MisBeginCondition (HasRecord, 802) 
 MisBeginCondition (HasRecord, 803) 
 MisBeginCondition (HasRecord, 804) 
 MisBeginCondition (HasRecord, 805) 
 MisBeginCondition (HasRecord, 806) 
 MisBeginCondition (HasRecord, 807) 
 MisBeginCondition (HasRecord, 808) 
 MisBeginAction (AddMission, 1806) 
 MisCancelAction (ClearMission, 1806) ------ the task could be deleted 
 
 MisNeed (MIS_NEED_DESP, "to look for skeletons <j??(2138,545)> depot camp.") 
 
 MisHelpTalk ( "<t> Shuji as soon as possible to (2138,545) that visit.") 
 MisResultCondition (AlwaysFailure) 
 --Skeleton ---------------------------------------------------------------------- darkblue ---------------- Thanksgiving depot camp Shuji -------- (2138,545) 
 DefineMission (6510, "Skeleton Thanksgiving camp depot", 1806, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> fits you, I just thought well, these are sent to you!") 
 MisResultCondition (NoRecord, 1806) 
 MisResultCondition (HasMission, 1806) 
 MisResultAction (ClearMission, 1806) 
 MisResultAction (SetRecord, 1806) 
 MisResultAction (AddExp, 53000,53000) 
 
-- abandoned mine depot ---------------------------------------------------------------------- garner -------------------- --????(1914,2806) 
 DefineMission (6511, "abandoned mine depot Thanksgiving", 1807) 
 
 MisBeginTalk ( "<t> hero Yan Rota (1894,2798) is the most honest we have people filling stations, in order to express our gratitude, he decided to reward you some. In before you go to him to help me this <b package> to him? Thank you. ") 
 MisBeginCondition (NoRecord, 1807) 
 MisBeginCondition (NoMission, 1807) 
 MisBeginCondition (HasRecord, 809) 
 MisBeginCondition (HasRecord, 810) 
 MisBeginCondition (HasRecord, 811) 
 MisBeginCondition (HasRecord, 812) 
 MisBeginCondition (HasRecord, 813) 
 MisBeginCondition (HasRecord, 814) 
 MisBeginCondition (NoRecord, 1807) 
 MisBeginAction (AddMission, 1807) 
 MisBeginAction (GiveItem, 6053, 1, 4 )-------------------------- package 
 MisCancelAction (ClearMission, 1811) ------ the task could be deleted 
 MisBeginBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "to help with abandoned mine depot <j????(1914,2806)> months <b??> depot <j???(1894,2798)> to the abandoned mine.") 
 
 MisHelpTalk ( "<t> the parcel as soon as possible to the strict Rota (1894,2798), ask a!") 
 MisResultCondition (AlwaysFailure) 
 --abandoned mine depot ---------------------------------------------------------------------- garner ---------------- Thanksgiving Yan -------- Rota (1894,2798) 
 DefineMission (6512, "abandoned mine depot Thanksgiving", 1807, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> Thanks to your help I can get the parcel in time, these incentives are you deserve, thank you!") 
 MisResultCondition (NoRecord, 1807) 
 MisResultCondition (HasMission, 1807) 
 MisResultAction (ClearMission, 1807) 
 MisResultCondition (HasItem, 6053, 1 )-------------------------- package 
 MisResultAction (TakeItem, 6053, 1 )-------------------------- package 
 MisResultAction (SetRecord, 1807) 
 MisResultAction (AddExp, 43000,43000) 
 
 ------------------------------------ garner Thanksgiving????depot lv39 ~ 45 -------------------- -------- sea blue light (622,2106 ) 
 DefineMission (6513, "Thanksgiving????depot", 1808) 
 
 MisBeginTalk ( "<t> Warriors, I found the people here are somewhat dependent on you, trouble is I am sorry you have done so many things, you can help a small busy I? I have a root here, I think that if Add up the perfect apple, and help me to travel Navarro Dr Winnie (630,2091), where you <b?1???>? Thank you. ") 
 MisBeginCondition (NoRecord, 1808) 
 MisBeginCondition (NoMission, 1808) 
 MisBeginCondition (HasRecord, 837) 
 MisBeginCondition (HasRecord, 838) 
 MisBeginCondition (HasRecord, 839) 
 MisBeginCondition (HasRecord, 840) 
 MisBeginCondition (HasRecord, 841) 
 MisBeginCondition (HasRecord, 842) 
 MisBeginCondition (HasRecord, 843) 
 MisBeginCondition (HasRecord, 844) 
 MisBeginCondition (HasRecord, 845) 
 MisBeginCondition (HasRecord, 846) 
 MisBeginCondition (HasRecord, 847) 
 MisBeginCondition (HasRecord, 848) 
 MisBeginAction (AddMission, 1808) 
 MisBeginAction (AddTrigger, 18081, TE_GETITEM, 1847, 1) 
 MisCancelAction (ClearMission, 1808) ------ the task could be deleted 
 
 MisNeed (MIS_NEED_DESP, "there <j??·????(630,2091)> supply depots????the <b?1???> to <j??·??(622,2106)> supply depots????") 
 MisNeed (MIS_NEED_ITEM, 1847, 1, 10, 1) 
 
 MisHelpTalk ( "Apple bought it? I am impatient and so good yo!") 
 MisResultTalk ( "thank you we have done recently for the contribution of so many of these incentives is that everyone's mind.") 
 MisResultCondition (NoRecord, 1808) 
 MisResultCondition (HasMission, 1808) 
 MisResultCondition (HasItem, 1847, 1) 
 MisResultAction (TakeItem, 1847, 1) 
 MisResultAction (ClearMission, 1808) 
 MisResultAction (SetRecord, 1808) 
 MisResultAction (AddExp, 144160,144160) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 1847) 
 TriggerAction (1, AddNextFlag, 1808, 10, 1) 
 RegCurTrigger (18081) 
 
 ---------------------------------------------------------------------- darkblue polar ice lv -------------- Thanksgiving depot ---------- ruru (2668,634) 
 DefineMission (6514, "very depot ice Thanksgiving", 1809) 
 
 MisBeginTalk ( "<t> Oh, I know you have so much to see when I was a boy's sake, you must help me! <n> <t> <j????(2736,650)> there will always be near several of the iron and steel hate snails, which specifically bullied children, very hateful! you help me to kill you 5? adults here, we will certainly reward you well. ") 
 MisBeginCondition (NoMission, 1809) 
 MisBeginCondition (NoRecord, 1809) 
 MisBeginCondition (HasRecord, 869) 
 MisBeginCondition (HasRecord, 870) 
 MisBeginCondition (HasRecord, 871) 
 MisBeginCondition (HasRecord, 872) 
 MisBeginCondition (HasRecord, 873) 
 MisBeginCondition (HasRecord, 874) 
 MisBeginCondition (HasRecord, 875) 
 MisBeginCondition (HasRecord, 876) 
 MisBeginCondition (HasRecord, 877) 
 MisBeginCondition (HasRecord, 878) 
 MisBeginCondition (HasRecord, 879) 
 MisBeginCondition (HasRecord, 880) 
 MisBeginCondition (HasRecord, 881) 
 MisBeginCondition (HasRecord, 882) 
 MisBeginCondition (HasRecord, 883) 
 MisBeginCondition (HasRecord, 884) 
 MisBeginCondition (HasRecord, 885) 
 MisBeginCondition (HasRecord, 886) 
 MisBeginCondition (HasRecord, 887) 
 MisBeginCondition (HasRecord, 888) 
 MisBeginCondition (HasRecord, 889) 
 MisBeginCondition (HasRecord, 890) 
 MisBeginCondition (HasRecord, 891) 
 MisBeginCondition (HasRecord, 892) 
 MisBeginCondition (HasRecord, 893) 
 MisBeginAction (AddMission, 1809) 
 MisBeginAction (AddTrigger, 18091, TE_KILL, 501, 5) 
 MisCancelAction (ClearMission, 1809) 

 MisNeed (MIS_NEED_DESP, "to help ice depot <j??(2668,634)> very <b????> killing five.") 
 MisNeed (MIS_NEED_KILL, 501, 5, 10, 5) 
 
 MisHelpTalk ( "<t> kill five of the <b????> can.") 
 MisResultTalk ( "<t> Thank you too, and I can finally play happily for some time.") 
 MisResultCondition (NoRecord, 1809) 
 MisResultCondition (HasMission, 1809) 
 MisResultCondition (HasFlag, 1809, 14) 
 MisResultAction (ClearMission, 1809) 
 MisResultAction (SetRecord, 1809) 
 MisResultAction (AddExp, 193140, 193140) 

 InitTrigger () 
 TriggerCondition (1, IsMonster, 501) 
 TriggerAction (1, AddNextFlag, 1809, 10, 5) 
 RegCurTrigger (18091) 
 
 -------------------------------------------------------------------------------------------- The new regional task Island ---------------------------------------------------------------------------------- 


 ------------------------------------ 1 ----------------------------( the origin depot to start) 
 DefineMission (6390, "the origin of the refilling, 1", 1680) 
 MisBeginTalk ( "<t> into the winter since the island is, I and several partners have been at the top of the island. This is the smallest of the islands, is also the most quiet of an island?~ <n> <t> in fact a I do not know where to start would be a depot Why, you ask the question in detail would be more clearly <j????·??(323,858)>. ") 
 MisBeginCondition (NoRecord, 1680) 
 MisBeginCondition (NoMission, 1680) 
 MisBeginCondition (LvCheck, ">", 89) 
 MisBeginAction (AddMission, 1680) 
 MisCancelAction (ClearMission, 1680) 
 
 MisNeed (MIS_NEED_DESP, "to find <j????·??(323,858)> and asked him about the origin depot. <r????:90--93?>") 
 MisHelpTalk ( "<t> perhaps because relatively quiet here now, but I do not know, but I am just a blacksmith.") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ Depot 1 ----------------------------( the end of the origin) 
 DefineMission (6391, "Origin of depot 1", 1680, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Hello, foreign guests, I hope I can help you!") 
 MisResultCondition (HasMission, 1680) 
 MisResultCondition (NoRecord, 1680) 
 MisResultAction (ClearMission, 1680) 
 MisResultAction (SetRecord, 1680) 
 MisResultAction (AddExp, 30000, 30000) 
 MisResultAction (GiveNpcMission, 6392, "grocer who Sky", 2) 
 
 ---------------------------- ------------------------------------ The request of Sky 
 DefineMission (6392, "the request of Sky", 1681) 
 MisBeginTalk ( "<t> Oh, that you would like to ask the origin of a depot, ah, you ask me too well, but I now have a bit of material, you help me find a point to it?") 
 MisBeginCondition (NoRecord, 1681) 
 MisBeginCondition (NoMission, 1681) 
 MisBeginCondition (HasRecord, 1680) 
 MisBeginAction (AddMission, 1681) 
 MisBeginAction (AddTrigger, 16811, TE_GETITEM, 6236, 15) 
 MisBeginAction (AddTrigger, 16812, TE_GETITEM, 6237, 10) 
 MisCancelAction (ClearMission, 1681) 
 
 MisNeed (MIS_NEED_DESP, "to help collect <j????·??(323,858)> King 15 turtle shell (<b??> falling <j????(197,901)>), 10 exotic stones (< j winter Islands (404,1340)> <b???> falling). ") 
 MisNeed (MIS_NEED_ITEM, 6236, 15, 10, 15) 
 MisNeed (MIS_NEED_ITEM, 6237, 10, 30, 10) 
 
 MisResultTalk ( "<t> Thank you for your help, Thank you so much!") 
 MisHelpTalk ( "<t> faster please help me collect the things right.") 
 MisResultCondition (HasMission, 1681) 
 MisResultCondition (NoRecord, 1681) 
 MisResultCondition (HasItem, 6236, 15) 
 MisResultCondition (HasItem, 6237, 10) 
 MisResultAction (ClearMission, 1681) 
 MisResultAction (TakeItem, 6236, 15) 
 MisResultAction (TakeItem, 6237, 10) 
 MisResultAction (SetRecord, 1681) 
 MisResultAction (AddExp, 675000, 675000) 
 MisResultAction (AddMoney, 200000) 
 MisResultAction (GiveNpcMission, 6393, "grocer who Sky") 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6236) 
 TriggerAction (1, AddNextFlag, 1681, 10, 15) 
 RegCurTrigger (16811) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6237) 
 TriggerAction (1, AddNextFlag, 1681, 30, 10) 
 RegCurTrigger (16812) 

 --Origin ------------------------------------ depot began 2 ----------------------------() 
 DefineMission (6393, "the origin of the refilling, 2", 1682) 
 MisBeginTalk ( "<t> I am a businessman and medicine, clothing merchants of the island together, before me, there was a lot of adventurers have here, but for various reasons they all left here ... ... <n> The reason why <t> here to set up supply depots, is also relatively safe because it owes something to, but is also relatively close to the island from the spring, if you have questions, ask on the <j herbs to personality Angulo ( 276,877)> it! ") 
 MisBeginCondition (NoRecord, 1682) 
 MisBeginCondition (NoMission, 1682) 
 MisBeginCondition (HasRecord, 1681) 
 MisBeginAction (AddMission, 1682) 
 MisCancelAction (ClearMission, 1682) 
 
 MisNeed (MIS_NEED_DESP, "to find <j????·???(276,877)>, continue to ask the origin of filling stations.") 
 MisHelpTalk ( "<t> fact here is not the peace, but only relatively better.") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ Depot 2 ----------------------------( the end of the origin) 
 DefineMission (6394, "the origin depot 2", 1682, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> I and Sky together, there is Darfur, we have a good relationship with the brothers but this!") 
 MisResultCondition (HasMission, 1682) 
 MisResultCondition (NoRecord, 1682) 
 MisResultAction (ClearMission, 1682) 
 MisResultAction (SetRecord, 1682) 
 MisResultAction (AddExp, 30000, 30000) 
 MisResultAction (GiveNpcMission, 6395, "Angulo medicines to personality") 
 ------------------------------------ 3 ----------------------------( the origin depot to start) 
 DefineMission (6395, "the origin depot 3", 1683) 
 MisBeginTalk ( "<t> that day, we three brothers, in the Mountain Island Lake in winter found in God the Father Neville fainted, and then we brought him here. At that time, stay on the island there are many people in the treatment of the Virgin, they decided to build a depot here, so you can stop here a long--term. If you want to know the name of the source depot, you ask my brother <j clothing shop owner Total (260,832)> it. ") 
 MisBeginCondition (NoRecord, 1683) 
 MisBeginCondition (NoMission, 1683) 
 MisBeginCondition (HasRecord, 1682) 
 MisBeginAction (AddMission, 1683) 
 MisCancelAction (ClearMission, 1683) 
 
 MisNeed (MIS_NEED_DESP, "to find <j????·??(260,832)>, continue to ask the origin of filling stations.") 
 MisHelpTalk ( "<t> here is quite cold sometimes.") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ Depot 3 ----------------------------( the end of the origin) 
 DefineMission (6396, "the origin depot 3", 1683, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> good weather ... ... Let me a cup of tea first.") 
 MisResultCondition (HasMission, 1683) 
 MisResultCondition (NoRecord, 1683) 
 MisResultAction (ClearMission, 1683) 
 MisResultAction (SetRecord, 1683) 
 MisResultAction (AddExp, 30000, 30000) 
 MisResultAction (GiveNpcMission, 6397, "clothing shop owner Darfur") 
 --The origin depot ------------------------------------ 4 ---------------------------- 
 DefineMission (6397, "the origin of the refilling, 4", 1684) 
 MisBeginTalk ( "<t> depot would like to know how the name is to you? HOHO, Well, I'll tell you, but you have to help me collect Qi 20??skins (<j winter Islands (632,459 )> <b??> falling) back, otherwise I will not say, oh! ") 
 MisBeginCondition (NoRecord, 1684) 
 MisBeginCondition (NoMission, 1684) 
 MisBeginCondition (HasRecord, 1683) 
 MisBeginAction (AddMission, 1684) 
 MisBeginAction (AddTrigger, 16841, TE_GETITEM, 6241, 20) 
 MisCancelAction (ClearMission, 1684) 
 
 MisNeed (MIS_NEED_DESP, "clothing shop owner to help Darfur??collected 20 skins (<b??> falling <j????(632,459)>) to.") 
 MisNeed (MIS_NEED_ITEM, 6241, 20, 10, 20) 
 
 MisResultTalk ( "<t> Well, I'll tell you. In fact, we came to this island in time to found a piece of text written in ancient inscriptions, the top marks here that there is actually a city called East on City may is the ancient city it the era of mankind. We feel that here was such a cold climate, the depot will be named after the city for the winter! ") 
 MisHelpTalk ( "<t> winter winter ah, you really beautiful island Block ah.") 
 MisResultCondition (HasMission, 1684) 
 MisResultCondition (NoRecord, 1684) 
 MisResultCondition (HasItem, 6241, 20) 
 MisResultAction (ClearMission, 1684) 
 MisResultAction (TakeItem, 6241, 20) 
 MisResultAction (SetRecord, 1684) 
 MisResultAction (AddExp, 605000, 605000) 
 MisResultAction (AddMoney, 150000) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6241) 
 TriggerAction (1, AddNextFlag, 1684, 10, 20) 
 RegCurTrigger (16841) 

 --Marian trouble ------------------------------------ ---------------------------- 
 DefineMission (6398, "Marian trouble", 1685) 
 MisBeginTalk ( "<t> ah ah ah ah! Said, I really envy my classmates who they have sand in Silver City, ah ah--lan City, where the transmission when they make good????play, why I'm going to to the place where people do freeze to death!! too much! it just as people dying of cold, I would like to be those bloody monster harassment, infuriating me, you kill those guys to help me now! ") 
 MisBeginCondition (NoRecord, 1685) 
 MisBeginCondition (NoMission, 1685) 
 MisBeginCondition (LvCheck, ">", 89) 
 MisBeginAction (AddMission, 1685) 
 MisBeginAction (AddTrigger, 16851, TE_KILL, 1083, 10) 
 MisBeginAction (AddTrigger, 16852, TE_KILL, 1084, 15) 
 MisBeginAction (AddTrigger, 16853, TE_KILL, 1085, 20) 
 MisCancelAction (ClearMission, 1685) 
 
 MisNeed (MIS_NEED_DESP, "helping to kill 10 stone <j???·???(249,864)> as long <j????(404,1340)> 15 Akaiwa <j????(451,1288)> , 20???<j????(661,1230)> <r????:90--93?> ") 
 MisNeed (MIS_NEED_KILL, 1083, 10, 10,10) 
 MisNeed (MIS_NEED_KILL, 1084, 15, 20,15) 
 MisNeed (MIS_NEED_KILL, 1085, 20, 40,20) 
 
 MisResultTalk ( "<t> alive, Now I can be a lot easier, there is no monster harassing me ~ ah ~ Maybe I will soon be able to leave the island in winter it!") 
 MisHelpTalk ( "<t> some really nasty guys, why in the world have so many things bother them ~") 
 MisResultCondition (HasMission, 1685) 
 MisResultCondition (NoRecord, 1685) 
 MisResultCondition (HasFlag, 1685, 19) 
 MisResultCondition (HasFlag, 1685, 34) 
 MisResultCondition (HasFlag, 1685, 59) 
 MisResultAction (ClearMission, 1685) 
 MisResultAction (SetRecord, 1685) 
 MisResultAction (AddExp, 675000, 675000) 
 MisResultAction (AddMoney, 200000) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1083) 
 TriggerAction (1, AddNextFlag, 1685, 10, 10) 
 RegCurTrigger (16851) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1084) 
 TriggerAction (1, AddNextFlag, 1685, 20, 15) 
 RegCurTrigger (16852) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1085) 
 TriggerAction (1, AddNextFlag, 1685, 40, 20) 
 RegCurTrigger (16853) 

 --Prajna world rumors ------------------------------------ ---------------------------- 
 DefineMission (6399, "the world's hearsay Prajna", 1686) 
 MisBeginTalk ( "<t> Prajna I have always heard that the world is a magical place, where we can never come into contact with the world. But I heard the return with the Virgin, at the same time brought about by two people, do not know if this rumor is true or false. I always feel that some cell Angulo and the Darfur issue, not as good as you help me to investigate what they are. <j????·??(299,901)> ") 
 MisBeginCondition (NoRecord, 1686) 
 MisBeginCondition (NoMission, 1686) 
 MisBeginCondition (LvCheck, ">", 89) 
 MisBeginAction (AddMission, 1686) 
 MisCancelAction (ClearMission, 1686) 
 
 MisNeed (MIS_NEED_DESP, "the survey <j????·???(276,877)> and <j????·??(260,832)> made them accessories. <r????:90--93?>") 
 MisHelpTalk ( "<t> how not to? I have heard, some people see them with a long tail, oh!!") 

 MisResultTalk ( "<t> doubt Maybe I was wrong, right? But why do I always feel that they are so strange?") 
 MisResultCondition (HasMission, 1686) 
 MisResultCondition (NoRecord, 1686) 
 MisResultCondition (HasItem, 6221,1) 
 MisResultCondition (HasItem, 6222,1) 
 MisResultAction (ClearMission, 1686) 
 MisResultAction (TakeItem, 6221, 1) 
 MisResultAction (TakeItem, 6222, 1) 
 MisResultAction (SetRecord, 1686) 
 MisResultAction (AddExp, 675000, 675000) 

 --Grid Angulo smile ------------------------------------ ---------------------------- 
 DefineMission (6400, "Angulo grid smile", 1687) 
 MisBeginTalk ( "<t> Oh? Haha, some people doubt me and Darfur is the world's people Prajna ah ~ really interesting, even the tail are out, hee hee ~ but I can not easily tell you the secret, want to know if I helped 20 bear strange Come on, I'll wait for you here. ") 
 MisBeginCondition (NoRecord, 1687) 
 MisBeginCondition (NoMission, 1687) 
 MisBeginCondition (HasMission, 1686) 
 MisBeginAction (AddMission, 1687) 
 MisBeginAction (AddTrigger, 16871, TE_GETITEM, 6239, 20) 
 MisCancelAction (ClearMission, 1687) 
 
 MisNeed (MIS_NEED_DESP, "to help the collection of 20 strange <j????·???(276,877)> the bear's paw (<j????(661,1230)> <b???> falling).") 
 MisNeed (MIS_NEED_ITEM, 6239, 20, 10, 20) 
 
 MisResultTalk ( "<t> I really only just an ordinary person, hee hee, I really do not have tails, and I really would not send Qigong and vitality turtle shells, Wang boxing community will not and will not change Super Prajna people! ") 
 MisHelpTalk ( "<t> Ha! M! Ha! M! Ha! Medicine as soon as possible to find it!") 
 MisResultCondition (HasMission, 1687) 
 MisResultCondition (NoRecord, 1687) 
 MisResultCondition (HasItem, 6239, 20) 
 MisResultAction (ClearMission, 1687) 
 MisResultAction (TakeItem, 6239,20) 
 MisResultAction (SetRecord, 1687) 
 MisResultAction (GiveItem, 6221, 1,4) 
 MisResultAction (AddExp, 605000, 605000) 
 MisResultAction (AddMoney, 150000) 
 MisResultBagNeed (1) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6239) 
 TriggerAction (1, AddNextFlag, 1687, 10, 20) 
 RegCurTrigger (16871) 

--Dahl's arrogant ---------------------------- ------------------------------------ 
 DefineMission (6401, "Darfur's arrogant", 1688) 
 MisBeginTalk ( "<t> me what happened? Not find things on the other, I busy. If you are idle, it helped me to find the material a few items of clothing you, ah,??I did not remind you that their multi -- worry about points, will not be any trouble Prajna save your people! ") 
 MisBeginCondition (NoRecord, 1688) 
 MisBeginCondition (NoMission, 1688) 
 MisBeginCondition (HasMission, 1686) 
 MisBeginAction (AddMission, 1688) 
 MisBeginAction (AddTrigger, 16881, TE_GETITEM, 6238, 10) 
 MisCancelAction (ClearMission, 1688) 
 
 MisNeed (MIS_NEED_DESP, "to help <j????·??(260,832)> motley collection of 10 stone (<j????(451,1288)> <b??> falling).") 
 MisNeed (MIS_NEED_ITEM, 6238, 10, 10, 10) 
 
 MisResultTalk ( "<t> Qi of things? Well, you can go, I will not tell you anything, give you the accessories to do it Jimmy!") 
 MisHelpTalk ( "<t> flash gun? Seems powerful enough, and may be modified under a!") 
 MisResultCondition (HasMission, 1688) 
 MisResultCondition (NoRecord, 1688) 
 MisResultCondition (HasItem, 6238, 10) 
 MisResultAction (ClearMission, 1688) 
 MisResultAction (TakeItem, 6238, 10) 
 MisResultAction (SetRecord, 1688) 
 MisResultAction (GiveItem, 6222, 1,4) 
 MisResultAction (AddExp, 605000, 605000) 
 MisResultAction (AddMoney, 150000) 
 MisResultBagNeed (1) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6238) 
 TriggerAction (1, AddNextFlag, 1688, 10, 10) 
 RegCurTrigger (16881) 

 --Four brothers winter home ------------------------------------ 1 ----------------------------( started) 
 DefineMission (6402, "four brothers and a winter home", 1689) 
 MisBeginTalk ( "<t> also clever to say, we four brothers are home to stay in here, one would like to give people a number of adventure travel guide, the second is to learn more about how they can order some of the winter the island is a secret ~ Recently, I found a fish, taste very good, as it helped me to tell you my brother in winter months, I think he would really like this news. ") 
 MisBeginCondition (NoRecord, 1689) 
 MisBeginCondition (NoMission, 1689) 
 MisBeginCondition (LvCheck, ">", 94) 
 MisBeginAction (AddMission, 1689) 
 MisCancelAction (ClearMission, 1689) 

 MisNeed (MIS_NEED_DESP, "for the winter to convey messages to the island is located in La <j????·??(694,704)> snow, and told him there is a very tasty fish. <r????:95--97?>") 
 MisHelpTalk ( "<t> a long time so did not have to eat the fish, perhaps because of relatively clear water here because of it.") 
 MisResultCondition (AlwaysFailure) 
 
 --Winter home ------------------------------------ 1 ----------------------------( the end of the four brothers) 
 DefineMission (6403, "the winter home four brothers and 1", 1689, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Alas! This is the younger brother! My side of the water is cold up there where the fish eat ah!") 
 MisResultCondition (HasMission, 1689) 
 MisResultCondition (NoRecord, 1689) 
 MisResultAction (ClearMission, 1689) 
 MisResultAction (SetRecord, 1689) 
 MisResultAction (AddExp, 30000, 30000) 
 MisResultAction (GiveNpcMission, 6404, "Winter Harbor on command") 
 ------------------------------------ Winter home the beginning of the four brothers and 2 ----------------------------() 
 DefineMission (6404, "the winter home four brothers and 2", 1690) 
 MisBeginTalk ( "<t> since the death of their parents, four brothers and we always travel in various places until here. We all feel that here is our ownership of it, who knows, anyway, we like the atmosphere here. Yes, help me to send letters to my winter??stars, he went to Victoria Island the snow, I do not know well before now. ") 
 MisBeginCondition (NoRecord, 1690) 
 MisBeginCondition (NoMission, 1690) 
 MisBeginCondition (HasRecord, 1689) 
 MisBeginAction (AddMission, 1690) 
 MisBeginAction (GiveItem, 6227, 1,4) 
 MisBeginBagNeed (1) 
 MisCancelAction (ClearMission, 1690) 
 MisCancelAction (TakeItem, 6227,1) 
 
 MisNeed (MIS_NEED_DESP, "for the winter at the snow on messenger to <j????·??(1039,612)> Victoria Island.") 
 MisHelpTalk ( "<t> recently??, and it is busy work.") 
 MisResultCondition (AlwaysFailure) 
 
 --Winter home ------------------------------------ 2 ----------------------------( the end of the four brothers) 
 DefineMission (6405, "the winter home four brothers and 2", 1690, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> my brother's letter? Good, I'll be waiting a long time.") 
 MisResultCondition (HasMission, 1690) 
 MisResultCondition (NoRecord, 1690) 
 MisResultCondition (HasItem, 6227,1) 
 MisResultAction (ClearMission, 1690) 
 MisResultAction (TakeItem, 6227, 1) 
 MisResultAction (SetRecord, 1690) 
 MisResultAction (AddExp, 30000, 30000) 
 MisResultAction (GiveNpcMission, 6406, "Winter Harbor Star Command") 
 ------------------------------------ Winter home the beginning of the four brothers and 3 ----------------------------() 
 DefineMission (6406, "the winter home four brothers and 3", 1691) 
 MisBeginTalk ( "<t> San winter me and my twin brother Chen is, I do not know who some more, but they are also the younger brother said that I forget, this does not matter why, it is important that we are Yes good brother ~ <n> <t> recently I saw a beautiful lake islands often last winter, she looked pretty with my brother, you better help me and my brother to say, let him look, he should can often see. ") 
 MisBeginCondition (NoRecord, 1691) 
 MisBeginCondition (NoMission, 1691) 
 MisBeginCondition (HasRecord, 1690) 
 MisBeginAction (AddMission, 1691) 
 MisCancelAction (ClearMission, 1691) 
 
 MisNeed (MIS_NEED_DESP, "Lake told the island is located in the winter often <j????·??(259,1200)> between beauty and ask him to pay attention.") 
 MisHelpTalk ( "<t> not go!!") 
 MisResultCondition (AlwaysFailure) 
 
 --Winter home ------------------------------------ 3 ----------------------------( the end of the four brothers) 
 DefineMission (6407, "the winter home four brothers and 3", 1691, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> sweat, sweat, my brother is really the beauty of the ... ... already have boyfriends, and Lyon, on the island it is!") 
 MisResultCondition (HasMission, 1691) 
 MisResultCondition (NoRecord, 1691) 
 MisResultAction (ClearMission, 1691) 
 MisResultAction (SetRecord, 1691) 
 MisResultAction (AddExp, 30000, 30000) 
 MisResultAction (GiveNpcMission, 6408, "Winter Harbor command--chen") 
 --Four brothers winter home ------------------------------------ 4 ---------------------------- 
 
 DefineMission (6408, "the winter home four brothers and 4", 1692) 
 MisBeginTalk ( "<t> is also my brother and I are good friends and Lyon, how can a woman steal his! <n> <t> The island a lot to a lot of people, although I stand here to all the way, but many people see is not lonely, Oh, but maybe the family think of your own. <n> <t> not say this, if you free, you can help me a lesson about Wang of the turtles near you? I recently was that they get in trouble very. <j????·??(259,1200)> ") 
 MisBeginCondition (NoRecord, 1692) 
 MisBeginCondition (NoMission, 1692) 
 MisBeginCondition (HasRecord, 1691) 
 MisBeginAction (AddMission, 1692) 
 MisBeginAction (AddTrigger, 16921, TE_KILL, 1082, 10) 
 MisCancelAction (ClearMission, 1692) 
 
 MisNeed (MIS_NEED_DESP, "Dong Chen learned to help landing point is located next to the turtle king <j????(197,901)> avoid harassing him again.") 
 MisNeed (MIS_NEED_KILL, 1082, 10, 10, 10) 

 MisResultTalk ( "<t> Aha, thank you very much for the help! This point, please accept the small things, do not refuse!") 
 MisHelpTalk ( "<t> say, however, Ida was a beautiful ah! Winter cold island where??her red cheongsam??!") 
 MisResultCondition (HasMission, 1692) 
 MisResultCondition (NoRecord, 1692) 
 MisResultCondition (HasFlag, 1692, 19) 
 MisResultAction (ClearMission, 1692) 
 MisResultAction (SetRecord, 1692) 
 MisResultAction (AddExp, 675000, 675000) 
 MisResultAction (AddMoney, 200000) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1082) 
 TriggerAction (1, AddNextFlag, 1692, 10, 10) 
 RegCurTrigger (16921) 
 
 ------------------------------------ Snow i. ---------------------------- guardian of the permit 
 DefineMission (6409, "the snow of a guardian, i. Permit", 1693) 
 MisBeginTalk ( "<t> you heard of it? Of our guardian, a guardian of the symbol of the identity of the card, I and the guardian of the other islands also have a. <n> <t> You want do not want ? If you are willing to help me a favor, I will help you be a guardian of the cards, you go with this thing where we lead, there will be a good thing to you, oh! ") 
 MisBeginCondition (NoRecord, 1693) 
 MisBeginCondition (NoMission, 1693) 
 MisBeginCondition (LvCheck, ">", 94) 
 MisBeginAction (AddMission, 1693) 
 MisBeginAction (AddTrigger, 16931, TE_GETITEM, 6240, 1) 
 MisBeginAction (AddTrigger, 16932, TE_GETITEM, 6242, 1) 
 MisBeginAction (AddTrigger, 16933, TE_GETITEM, 1239, 1) 
 MisBeginAction (AddTrigger, 16934, TE_GETITEM, 4453, 1) 
 MisCancelAction (ClearMission, 1693) 
 
 MisNeed (MIS_NEED_DESP, "the collection of snow on the island, i. guardian of the things needed in exchange for precious snow i. evidence of a guardian. Jingying ribs (<j????(839,1160)> <b????> fall); Orc Tomahawk (<b???> falling <j????(815,493)>); large fragments of the mysterious stones (<b??> out <j????(632,459)> down); bear tusks (<b???> falling <j????(661,1230)>). <r????:95--97?> ") 
 MisNeed (MIS_NEED_ITEM, 6240, 1, 10, 1) 
 MisNeed (MIS_NEED_ITEM, 6242, 1, 20, 1) 
 MisNeed (MIS_NEED_ITEM, 1239, 1, 30, 1) 
 MisNeed (MIS_NEED_ITEM, 4453, 1, 40, 1) 
 
 MisResultTalk ( "<t> good good, do good, which turns out to be worthy of the famous adventurer ah! After you is our guardian of the one!") 
 MisHelpTalk ( "<t> afraid of death of the???, pirate king Oh improper afraid of death!") 
 MisResultCondition (HasMission, 1693) 
 MisResultCondition (NoRecord, 1693) 
 MisResultCondition (HasItem, 6240,1) 
 MisResultCondition (HasItem, 6242,1) 
 MisResultCondition (HasItem, 1239,1) 
 MisResultCondition (HasItem, 4453,1) 
 MisResultAction (ClearMission, 1693) 
 MisResultAction (TakeItem, 6240, 1) 
 MisResultAction (TakeItem, 6242, 1) 
 MisResultAction (TakeItem, 1239, 1) 
 MisResultAction (TakeItem, 4453, 1) 
 MisResultAction (GiveItem, 6223,1,4) 
 MisResultAction (SetRecord, 1693) 
 MisResultAction (AddExp, 800000, 800000) 
 MisResultAction (AddMoney, 250000) 
 MisResultBagNeed (1) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6240) 
 TriggerAction (1, AddNextFlag, 1693, 10, 1) 
 RegCurTrigger (16931) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6242) 
 TriggerAction (1, AddNextFlag, 1693, 20, 1) 
 RegCurTrigger (16932) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 1239) 
 TriggerAction (1, AddNextFlag, 1693, 30, 1) 
 RegCurTrigger (16933) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 4453) 
 TriggerAction (1, AddNextFlag, 1693, 40, 1) 
 RegCurTrigger (16934) 
 
 ------------------------------------ Snow Guardian of the Victoria Island Permit ---------------------------- 
 DefineMission (6410, "Victoria Island snow guardian of evidence", 1694) 
 MisBeginTalk ( "<t> like snow do not want to be the guardian of Victoria Island? As long as you help me out to resolve the unrest on the island, I will give you a certificate to prove that you are our guardian of one. <J snow Victoria Island guardian (1044,182)> ") 
 MisBeginCondition (NoRecord, 1694) 
 MisBeginCondition (NoMission, 1694) 
 MisBeginCondition (LvCheck, ">", 97) 
 MisBeginAction (AddMission, 1694) 
 MisBeginAction (AddTrigger, 16941, TE_KILL, 1090, 10) 
 MisBeginAction (AddTrigger, 16942, TE_KILL, 1091, 15) 
 MisBeginAction (AddTrigger, 16943, TE_KILL, 1092, 20) 
 MisCancelAction (ClearMission, 1694) 
 
 MisNeed (MIS_NEED_DESP, "Victoria Island to help a guardian of snow on the island to suppress disturbances, so that caused people to panic adventure. <j????(549,528)> Snow; pumpkin <j????(966,272)> the general; Anopheles blood fighting <j????(1035,39)> pretty <r????:98--101?> ") 
 MisNeed (MIS_NEED_KILL, 1090, 10, 10, 10) 
 MisNeed (MIS_NEED_KILL, 1091, 15, 20, 15) 
 MisNeed (MIS_NEED_KILL, 1092, 20, 40, 20) 
 
 MisResultTalk ( "<t> than I even imagined??, was a powerful guy, this certificate is paid to you, remember that you are the guardian of the great, oh!") 
 MisHelpTalk ( "<t> not addressed? You or I am wrong?") 
 MisResultCondition (HasMission, 1694) 
 MisResultCondition (NoRecord, 1694) 
 MisResultCondition (HasFlag, 1694, 19) 
 MisResultCondition (HasFlag, 1694, 34) 
 MisResultCondition (HasFlag, 1694, 59) 
 MisResultAction (ClearMission, 1694) 
 MisResultAction (GiveItem, 6224,1,4) 
 MisResultAction (SetRecord, 1694) 
 MisResultAction (AddExp, 900000, 900000) 
 MisResultAction (AddMoney, 250000) 
 MisResultBagNeed (1) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1090) 
 TriggerAction (1, AddNextFlag, 1694, 10, 10) 
 RegCurTrigger (16941) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1091) 
 TriggerAction (1, AddNextFlag, 1694, 20, 15) 
 RegCurTrigger (16942) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1092) 
 TriggerAction (1, AddNextFlag, 1694, 40, 20) 
 RegCurTrigger (16943) 
 
 --Lake Winter Island ------------------------------------ guardian of the permit ---------------------------- 
 DefineMission (6411, "Winter Lake Island guardian of the cards", 1695) 
 MisBeginTalk ( "<t> recent shortage of staff has been very chaotic situation is a headache. <n> <t> Well, if not all of a sudden strange things?????, I will not like this dizzy busy brain up! <n> <t> Alas! I would also like to collect things to help boss ah ah ah ah ah!! <n> <t> just on you, help me, I will give you the benefits of the Oh! Akaiwa <j Winter Island Islands (451,1288)>;???<j????(661,1230)>; dead killer <j????(839,1160)>; General lanterns (<j winter Islands (966,272) > <b?????> fall); evil Sword (<b??> falling <j????(1807,614)>); giant necklace (<j????(1364,1239)> <b?????> fall); horrible pumpkin head (<j????(966,272)> <b?????> falling). ") 
 MisBeginCondition (NoRecord, 1695) 
 MisBeginCondition (NoMission, 1695) 
 MisBeginCondition (LvCheck, ">", 99) 
 MisBeginAction (AddMission, 1695) 
 MisBeginAction (AddTrigger, 16951, TE_KILL, 1084, 10) 
 MisBeginAction (AddTrigger, 16952, TE_KILL, 1085, 15) 
 MisBeginAction (AddTrigger, 16953, TE_KILL, 1086, 20) 
 MisBeginAction (AddTrigger, 16954, TE_GETITEM, 6244, 1) 
 MisBeginAction (AddTrigger, 16955, TE_GETITEM, 4762, 1) 
 MisBeginAction (AddTrigger, 16956, TE_GETITEM, 4808, 1) 
 MisBeginAction (AddTrigger, 16957, TE_GETITEM, 4735, 1) 
 MisCancelAction (ClearMission, 1695) 
 
 MisNeed (MIS_NEED_DESP, "Winter Lake Island to help solve the guardian of the trouble caused monster on the island, so as to help him collect items. <j??????(655,1471)> <r????:100--104?>" ) 
 MisNeed (MIS_NEED_KILL, 1084, 10, 10, 10) 
 MisNeed (MIS_NEED_KILL, 1085, 15, 20, 15) 
 MisNeed (MIS_NEED_KILL, 1086, 20, 40, 20) 
 MisNeed (MIS_NEED_ITEM, 6244, 1, 60, 1) 
 MisNeed (MIS_NEED_ITEM, 4762, 1, 70, 1) 
 MisNeed (MIS_NEED_ITEM, 4808, 1, 80, 1) 
 MisNeed (MIS_NEED_ITEM, 4735, 1, 90, 1) 
 
 MisResultTalk ( "<t>??, hello to a powerful, powerful ... see you ... I think adults should have the standard Virgin ???") 
 MisHelpTalk ( "<t> not speed! Do you want me to play?") 
 MisResultCondition (HasMission, 1695) 
 MisResultCondition (NoRecord, 1695) 
 MisResultCondition (HasFlag, 1695, 19) 
 MisResultCondition (HasFlag, 1695, 34) 
 MisResultCondition (HasFlag, 1695, 59) 
 MisResultCondition (HasItem, 6244,1) 
 MisResultCondition (HasItem, 4762,1) 
 MisResultCondition (HasItem, 4808,1) 
 MisResultCondition (HasItem, 4735,1) 
 MisResultAction (ClearMission, 1695) 
 MisResultAction (TakeItem, 6244, 1) 
 MisResultAction (TakeItem, 4762, 1) 
 MisResultAction (TakeItem, 4808, 1) 
 MisResultAction (TakeItem, 4735, 1) 
 MisResultAction (GiveItem, 6225,1,4) 
 MisResultAction (SetRecord, 1695) 
 MisResultAction (AddExp, 1000000, 1000000) 
 MisResultAction (AddMoney, 300000) 
 MisResultBagNeed (1) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1084) 
 TriggerAction (1, AddNextFlag, 1695, 10, 10) 
 RegCurTrigger (16951) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1085) 
 TriggerAction (1, AddNextFlag, 1695, 20, 15) 
 RegCurTrigger (16952) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1086) 
 TriggerAction (1, AddNextFlag, 1695, 40, 20) 
 RegCurTrigger (16953) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6244) 
 TriggerAction (1, AddNextFlag, 1695, 60, 1) 
 RegCurTrigger (16954) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 4762) 
 TriggerAction (1, AddNextFlag, 1695, 70, 1) 
 RegCurTrigger (16955) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 4808) 
 TriggerAction (1, AddNextFlag, 1695, 80, 1) 
 RegCurTrigger (16956) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 4735) 
 TriggerAction (1, AddNextFlag, 1695, 90, 1) 
 RegCurTrigger (16957) 

 --Dancers circle??---------------------------- ------------------------------------ 
 DefineMission (6412, "a round dance??", 1696) 
 MisBeginTalk ( "<t> in a long, long time ago, we have contributed most to the middle of a guardian who will be awarded the Circle??dancers of the title, to show he is a guardian of a model for all. <n> <t> I am also a dancer??round, but no one has been a long time to receive this title, and, after all, wish to bring a guardian of the three--pronged card is not so simple ah! <n> <t> how, the heart? would like to challenge it? <j???????(2010,783)> ") 
 MisBeginCondition (NoRecord, 1696) 
 MisBeginCondition (NoMission, 1696) 
 MisBeginCondition (LvCheck, ">", 99) 
 MisBeginAction (AddMission, 1696) 
 MisBeginAction (AddTrigger, 16961, TE_GETITEM, 6223, 1) 
 MisBeginAction (AddTrigger, 16962, TE_GETITEM, 6224, 1) 
 MisBeginAction (AddTrigger, 16963, TE_GETITEM, 6225, 1) 
 MisCancelAction (ClearMission, 1696) 
 
 MisNeed (MIS_NEED_DESP, "the collection of snow, i. <j??????(557,300)> guardian of the cards, snow guardian of Victoria Island and Winter Lake <j??????(1044,182)> card to protect the island From the evidence to prove that he is <j??????(655,1471)> round dancers??. <r????:100--104?> ") 
 MisNeed (MIS_NEED_ITEM, 6223, 1, 10, 1) 
 MisNeed (MIS_NEED_ITEM, 6224, 1, 20, 1) 
 MisNeed (MIS_NEED_ITEM, 6225, 1, 30, 1) 
 
 MisResultTalk ( "<t> Qi things it? Yes, starting today you??the new round of the dancers!") 
 MisHelpTalk ( "<t> confiscation of the full does not matter, it would like to get things very difficult.") 
 MisResultCondition (HasMission, 1696) 
 MisResultCondition (NoRecord, 1696) 
 MisResultCondition (HasItem, 6223,1) 
 MisResultCondition (HasItem, 6224,1) 
 MisResultCondition (HasItem, 6225,1) 
 MisResultAction (ClearMission, 1696) 
 MisResultAction (TakeItem, 6223, 1) 
 MisResultAction (TakeItem, 6224, 1) 
 MisResultAction (TakeItem, 6225, 1) 
 MisResultAction (GiveItem, 6226,1,4) 
 MisResultAction (SetRecord, 1696) 
 MisResultAction (AddExp, 1000000, 1000000) 
 MisResultAction (AddMoney, 300000) 
 MisResultBagNeed (1) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6223) 
 TriggerAction (1, AddNextFlag, 1695, 10, 1) 
 RegCurTrigger (16961) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6224) 
 TriggerAction (1, AddNextFlag, 1695, 20, 1) 
 RegCurTrigger (16962) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6225) 
 TriggerAction (1, AddNextFlag, 1695, 30, 1) 
 RegCurTrigger (16963) 
 
 --Guardian of the request ------------------------------------ ---------------------------- 
 DefineMission (6413, "chief guardian of the request", 1697) 
 MisBeginTalk ( "<t> a little more recent, and visitors on the island are also more and more of them, here that is mysterious and dangerous, after all, those who live in not a good monster. <n> <t> Since you want to help us, then help me to clean up those guys now! ") 
 MisBeginCondition (NoRecord, 1697) 
 MisBeginCondition (NoMission, 1697) 
 MisBeginCondition (LvCheck, ">", 99) 
 MisBeginAction (AddMission, 1697) 
 MisBeginAction (AddTrigger, 16971, TE_KILL, 1095, 20) 
 MisCancelAction (ClearMission, 1697) 
 
 MisNeed (MIS_NEED_DESP, "to help guard the elimination of 20??long <j????(1807,614)>. <r????:100--104?>") 
 MisNeed (MIS_NEED_KILL, 1095, 20, 10, 20) 

 
 MisResultTalk ( "<t> Fortunately, your help, we have a lot of pressure, it is thank to you, please accept!") 
 MisHelpTalk ( "<t>??at (1806,617) near the number of a number of them, be careful.") 
 MisResultCondition (HasMission, 1697) 
 MisResultCondition (NoRecord, 1697) 
 MisResultCondition (HasFlag, 1697, 29) 
 MisResultAction (ClearMission, 1697) 
 MisResultAction (SetRecord, 1697) 
 MisResultAction (AddExp, 1000000, 1000000) 
 MisResultAction (AddMoney, 250000) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1095) 
 TriggerAction (1, AddNextFlag, 1697, 10, 20) 
 RegCurTrigger (16971) 

 ------------------------------------ Chris ----------------------------( the beginning of love) 
 DefineMission (6414, "Christopher's love", 1698) 
 MisBeginTalk ( "<t> since the last and Gill from the thunder of the ocean outside the Fort Hall escaped then, he has been terrible for those who???Ku zombie. <n> <t> Then suddenly began to find their own love of the Gill , but do not know how to open it? Can you help me? ") 
 MisBeginCondition (NoRecord, 1698) 
 MisBeginCondition (NoMission, 1698) 
 MisBeginCondition (LvCheck, ">", 94) 
 MisBeginAction (GiveItem, 6228,1,4) 
 MisBeginAction (AddMission, 1698) 
 MisCancelAction (ClearMission, 1698) 
 MisCancelAction (TakeItem, 6228,1) 
 MisBeginBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "helping to send a love letter to Christopher <j???·??(958,1159)> to express his love. <r????:95--100?>") 
 MisHelpTalk ( "<t> Jill did not know when to see this letter think?") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ Chris ----------------------------( the end of love) 
 DefineMission (6415, "Christopher's love", 1698, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Chris! This is why you, you know I do not like you, Oh!") 
 MisResultCondition (HasMission, 1698) 
 MisResultCondition (NoRecord, 1698) 
 MisResultCondition (HasItem, 6228,1) 
 MisResultAction (ClearMission, 1698) 
 MisResultAction (TakeItem, 6228, 1) 
 MisResultAction (SetRecord, 1698) 
 MisResultAction (AddExp, 50000, 50000) 
 MisResultAction (GiveNpcMission, 6416, "Gill's response") 
 ------------------------------------ Jill started ----------------------------( response) 
 DefineMission (6416, "Gill's response", 1699) 
 MisBeginTalk ( "<t> this Chris, so how do I do? Although I do not like him, but he told me so persistent, I also feel he owes what! However, I always thought that Carlos ah ! Alas! <n> <t> I do not know how to face him, and trouble you put this letter to him. ") 
 MisBeginCondition (NoRecord, 1699) 
 MisBeginCondition (NoMission, 1699) 
 MisBeginCondition (HasRecord, 1698) 
 MisBeginAction (GiveItem, 6229,1,4) 
 MisBeginAction (AddMission, 1699) 
 MisCancelAction (ClearMission, 1699) 
 MisCancelAction (TakeItem, 6229,1) 
 MisBeginBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "the letter will be sent to Jill <j???·???(1147,403)> to absolutely love his love.") 
 MisHelpTalk ( "<t> Carlos If you do not, perhaps I would really like him!") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ Jill ----------------------------( the end of the response) 
 
 DefineMission (6417, "Gill's response", 1699, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> knew would be the case, huh, huh, Carlos is a good person, but do not know where to go to the!") 
 MisResultCondition (HasMission, 1699) 
 MisResultCondition (NoRecord, 1699) 
 MisResultCondition (HasItem, 6229,1) 
 MisResultAction (ClearMission, 1699) 
 MisResultAction (TakeItem, 6229, 1) 
 MisResultAction (SetRecord, 1699) 
 MisResultAction (AddExp, 50000, 50000) 
 
 ------------------------------------ ----------------------------( Cubeba began on the Cross) 
 DefineMission (6418, "Dawn Cross", 1700) 
 MisBeginTalk ( "<t> Not long ago, I was near the ruins of an excavated this strange cross engraved above a white crescent moon, I asked him on cross cubeba, it is true that name? <n> <t> Oh, I wanted it to his girlfriend, Ada, but she does not like, so just to let the teacher, he might keep what we found! ") 
 MisBeginCondition (NoRecord, 1700) 
 MisBeginCondition (NoMission, 1700) 
 MisBeginCondition (LvCheck, ">", 94) 
 MisBeginAction (GiveItem, 6230,1,4) 
 MisBeginAction (AddMission, 1700) 
 MisCancelAction (ClearMission, 1700) 
 MisCancelAction (TakeItem, 6230,1) 
 MisBeginBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "will be in Lyon on the cross pin to cubeba <j????·??(297,901)>. <r????:95--100?>") 
 MisHelpTalk ( "<t> teachers may be able to detect the secret inside you.") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ Cubeba ----------------------------( on the end of the cross) 
 DefineMission (6419, "cubeba Cross on", 1700, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> which turns out to be ancient times things ah! Wonderful heritage that is valuable, it is necessary to do proper research.") 
 MisResultCondition (HasMission, 1700) 
 MisResultCondition (NoRecord, 1700) 
 MisResultCondition (HasItem, 6230,1) 
 MisResultAction (ClearMission, 1700) 
 MisResultAction (TakeItem, 6230, 1) 
 MisResultAction (SetRecord, 1700) 
 MisResultAction (AddExp, 50000, 50000) 

 --Neville fears ---------------------------------- ------------------------------ 
 DefineMission (6420, "Virgin's worries", 1701) 
 MisBeginTalk ( "<t> I am also the creation of one of the world, and now see the way I am sorry, especially as a result of my coming, and even came with a lot of monsters in the world, I'm sorry. <n> <t> but I am forced back inside because of the world, were seriously injured, and now the ability to just one--twentieth of the former, it is very troublesome ... ah ... do not want to do anything, alas! <n> <t> If you want to help me, then look for a??Staff Come on, it can accelerate the improvement of my condition! ") 
 MisBeginCondition (NoRecord, 1701) 
 MisBeginCondition (NoMission, 1701) 
 MisBeginCondition (LvCheck, ">", 104) 
 MisBeginAction (AddMission, 1701) 
 MisBeginAction (AddTrigger, 17011, TE_GETITEM, 6248, 1) 
 MisCancelAction (ClearMission, 1701) 
 
 MisNeed (MIS_NEED_DESP, "God the Father to help find a Virgin??Staff (<j????(1676,800)> <b??> falling), I heard that can be found in the monster, this thing can be used to treat Neville's injury. <r????:105--110?> ") 
 MisNeed (MIS_NEED_ITEM, 6248, 1, 10,1) 
 
 
 MisResultTalk ( "<t> ah, you come back really fast, thank you for the help!") 
 MisHelpTalk ( "<t> heard that somewhere in this world, there are clone me a perfect body, I do not know is true or false.") 
 MisResultCondition (HasMission, 1701) 
 MisResultCondition (NoRecord, 1701) 
 MisResultCondition (HasItem, 6248, 1) 
 MisResultAction (ClearMission, 1701) 
 MisResultAction (TakeItem, 6248, 1) 
 MisResultAction (SetRecord, 1701) 
 MisResultAction (AddExp, 1200000, 1200000) 
 MisResultAction (AddMoney, 400000) 
 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6248) 
 TriggerAction (1, AddNextFlag, 1701, 10, 1) 
 RegCurTrigger (17011) 
 
 ------------------------------------------------ ------------------------------------------??of Westphalia ---- 
 DefineMission (6421, "the??Westphalia", 1702) 
 MisBeginTalk ( "<t> ah ah! I would like to crazy ah! And I actually grew up with the Ada Lyon! Infuriating me!! Humph!! I would like to vent, vent!! <n> <t> What to see? is you, to help me kill 20 lions wings, I would like to vent their anger! ") 
 MisBeginCondition (NoRecord, 1702) 
 MisBeginCondition (NoMission, 1702) 
 MisBeginCondition (LvCheck, ">", 89) 
 MisBeginAction (AddMission, 1702) 
 MisBeginAction (AddTrigger, 17021, TE_KILL, 1089, 20) 
 MisCancelAction (ClearMission, 1702) 
 
 MisNeed (MIS_NEED_DESP, "to kill 20 lions <j????(354,454)> wing in order to quell the??Westphalia. <r????:90--93?>") 
 MisNeed (MIS_NEED_KILL, 1089, 20, 10, 20) 

 MisResultTalk ( "<t> ... ... then you can go.") 
 MisHelpTalk ( "<t> Ada ... my ... my beauty ... ...") 
 MisResultCondition (HasMission, 1702) 
 MisResultCondition (NoRecord, 1702) 
 MisResultCondition (HasFlag, 1702, 29) 
 MisResultAction (ClearMission, 1702) 
 MisResultAction (SetRecord, 1702) 
 MisResultAction (AddExp, 675000, 675000) 
 MisResultAction (AddMoney, 200000) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1089) 
 TriggerAction (1, AddNextFlag, 1702, 10, 20) 
 RegCurTrigger (17021) 

 --Debris annoying -------------------------------------------------- ------------------------------------------ ---- 
 DefineMission (6422, "annoying junk", 1703) 
 MisBeginTalk ( "<t> around I hate the guy who walked up and down! They thought I was dead, always in the excretion of dirt next to me! Too hateful a! I had learned that they must be dynamic! <n> < t> to get rid of these annoying all sorts of things, I hate hate! killed them! ") 
 MisBeginCondition (NoRecord, 1703) 
 MisBeginCondition (NoMission, 1703) 
 MisBeginCondition (LvCheck, ">", 104) 
 MisBeginAction (AddMission, 1703) 
 MisBeginAction (AddTrigger, 17031, TE_KILL, 1097,10) 
 MisBeginAction (AddTrigger, 17032, TE_KILL, 1098,10) 
 MisCancelAction (ClearMission, 1703) 
 
 MisNeed (MIS_NEED_DESP, "killing 10??<j????(1676,800)>, 10 nightmare <j????(1640,1083)> to quell <j karaoke statue (1440, 1268)> anger. <r????:105--110?> ") 
 MisNeed (MIS_NEED_KILL, 1097, 10, 10, 10) 
 MisNeed (MIS_NEED_KILL, 1098, 10, 20, 10) 
 
 MisResultTalk ( "<t> 20 only? Barely managed not to give them lessons that they had connived at it too!") 
 MisHelpTalk ( "<t> annoying guy, you look at me how to clean up!") 
 MisResultCondition (HasMission, 1703) 
 MisResultCondition (NoRecord, 1703) 
 MisResultCondition (HasFlag, 1703, 19) 
 MisResultCondition (HasFlag, 1703, 29) 
 MisResultAction (ClearMission, 1703) 
 MisResultAction (SetRecord, 1703) 
 MisResultAction (AddExp, 1200000, 1200000) 
 MisResultAction (AddMoney, 400000) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1097) 
 TriggerAction (1, AddNextFlag, 1703, 10, 10) 
 RegCurTrigger (17031) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1098) 
 TriggerAction (1, AddNextFlag, 1703, 20, 10) 
 RegCurTrigger (17032) 
 
 --The Elder Scrolls -------------------------------------------------- ---------------------------------------------- ------ 
 DefineMission (6423, "Elder Scrolls", 1704) 
 MisBeginTalk ( "<t> as long as give me some common items, I can help you on the synthesis of a scroll of ancient times, with this, you can experience instant access to a large number of O ~") 
 MisBeginCondition (NoRecord, 1704) 
 MisBeginCondition (NoMission, 1704) 
 MisBeginCondition (LvCheck, ">", 104) 
 MisBeginAction (AddMission, 1704) 
 MisBeginAction (AddTrigger, 17041, TE_GETITEM, 6249, 5) 
 MisBeginAction (AddTrigger, 17042, TE_GETITEM, 6247, 5) 
 MisBeginAction (AddTrigger, 17043, TE_GETITEM, 6243, 5) 
 MisCancelAction (ClearMission, 1704) 
 
 MisNeed (MIS_NEED_DESP, "search for items, 5 Ling <j????(1640,1083)> dream, five swords <j????(1807,614)> soul and five great teeth cheetah <j winter Island Islands (549,528)>, in order for The Elder Scrolls <j?????(1464,464)> there. <r????:105--110?> ") 
 MisNeed (MIS_NEED_ITEM, 6249, 5, 10, 5) 
 MisNeed (MIS_NEED_ITEM, 6247, 5, 20, 5) 
 MisNeed (MIS_NEED_ITEM, 6243, 5, 30, 5) 
 
 MisResultTalk ( "<t> Well, this is The Elder Scrolls, you will be able to use it as long as access to a wealth of experience you ~") 
 MisHelpTalk ( "<t> not??it? It does not matter, take your time, Do not worry ~") 
 MisResultCondition (HasMission, 1704) 
 MisResultCondition (NoRecord, 1704) 
 MisResultCondition (HasItem, 6249, 5) 
 MisResultCondition (HasItem, 6247, 5) 
 MisResultCondition (HasItem, 6243, 5) 
 MisResultAction (ClearMission, 1704) 
 MisResultAction (TakeItem, 6249, 5) 
 MisResultAction (TakeItem, 6247, 5) 
 MisResultAction (TakeItem, 6243, 5) 
 MisResultAction (GiveItem, 6235, 1,4) 
 MisResultAction (SetRecord, 1704) 
 MisResultAction (AddExp, 1200000, 1200000) 
 MisResultAction (AddMoney, 400000) 
 MisResultBagNeed (1) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6249) 
 TriggerAction (1, AddNextFlag, 1704, 10, 5) 
 RegCurTrigger (17041) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6247) 
 TriggerAction (1, AddNextFlag, 1704, 20, 5) 
 RegCurTrigger (17042) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6243) 
 TriggerAction (1, AddNextFlag, 1704, 30, 5) 
 RegCurTrigger (17043) 
 
 --Staring at the endless -------------------------------------------------- -------------------------------------------- -------- 
 DefineMission (6424, "Staring at the endless", 1705) 
 MisBeginTalk ( "<t> he is the best, even compared with everyone, he is the best. That among the countless years, my eyes have been only a shadow of his ... ... but I do not know Does he care about me, you, help me to ask him? ") 
 MisBeginCondition (NoRecord, 1705) 
 MisBeginCondition (NoMission, 1705) 
 MisBeginCondition (LvCheck, ">", 99) 
 MisBeginAction (AddMission, 1705) 
 MisCancelAction (ClearMission, 1705) 
 MisBeginBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "the nurse to help???asked whether there is a similar <j??·????(283,924)> like her. <r????:100--105?>") 
 MisHelpTalk ( "<t> He then outstanding, may not care, I looked at him, right?") 
 MisResultCondition (AlwaysFailure) 
 
 --Staring at the endless ----------------------------( ------------------------------------ end) 
 DefineMission (6425, "Staring at the endless", 1705, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> is she? Original is her ... ... every time I see a figure standing behind the tree, but every time I do not see clearly that he is absence, it was really original ! ") 
 MisResultCondition (HasMission, 1705) 
 MisResultCondition (NoRecord, 1705) 
 MisResultAction (ClearMission, 1705) 
 MisResultAction (SetRecord, 1705) 
 MisResultAction (AddExp, 30000, 30000) 
 MisResultAction (GiveNpcMission, 6426, "the United States and Austria Andre boatman") 
 --Office lights felt -------------------------------------------------- -------------------------------------------- -------- 
 DefineMission (6426, "Department felt light", 1706) 
 MisBeginTalk ( "<t> from a long, long time ago, I had been very fond of her. At that time, I was a city of aristocratic silver, like my girls a lot, but since I only care about her. She was always avoided a corner looking at me, but I do know that she was concerned about me. Now I got to this point, she still follows the winter I came on the island, it really is ... ... to me to convey my thanks to her, as well as my mind it! ") 
 MisBeginCondition (NoRecord, 1706) 
 MisBeginCondition (NoMission, 1706) 
 MisBeginCondition (HasRecord, 1705) 
 MisBeginAction (AddMission, 1706) 
 MisCancelAction (ClearMission, 1706) 
 MisBeginBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "told <j????·???(254,881)>, Andre the United States and Austria's feelings.") 
 MisHelpTalk ( "<t> If I can, I want to and she together with her to get back in Silver City, I should be all!") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ ----------------------------( Department felt the end of lights) 
 DefineMission (6427, "Department felt light", 1706, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> true? He also care about me? Good, really good, I really do not know what to say!") 
 MisResultCondition (HasMission, 1706) 
 MisResultCondition (NoRecord, 1706) 
 MisResultAction (ClearMission, 1706) 
 MisResultAction (SetRecord, 1706) 
 MisResultAction (AddExp, 30000, 30000) 
 MisResultAction (GiveNpcMission, 6428, "the nurse???") 
 ---------------------------------------- --------------------------------------------------???concerns ---- 
 DefineMission (6428, "???concerns", 1707) 
 MisBeginTalk ( "<t> know? Those who stay in the nightmare of the other islands, that is to come in order to kill him, and I am worried that he would be harmed, I hope you can help me!") 
 MisBeginCondition (NoRecord, 1707) 
 MisBeginCondition (NoMission, 1707) 
 MisBeginCondition (HasRecord, 1706) 
 MisBeginAction (AddMission, 1707) 
 	MisBeginAction(AddTrigger, 17071, TE_KILL, 1098,10) 
 	MisCancelAction(ClearMission, 1707) 
 
 	MisNeed(MIS_NEED_DESP, "?<j????·???(254,881)>??10???<j????(1640,1083)>?") 
 	MisNeed(MIS_NEED_KILL, 1098, 10, 10, 10) 
 
MisResultTalk ( "<t> back? Thank you ~") 
 MisHelpTalk ( "<t> hurry up and go, I do not really worry about ... ...") 
 MisResultCondition (HasMission, 1707) 
 MisResultCondition (NoRecord, 1707) 
 MisResultCondition (HasFlag, 1707, 19) 
 MisResultAction (ClearMission, 1707) 
 MisResultAction (SetRecord, 1707) 
 MisResultAction (AddExp, 675000, 675000) 
 MisResultAction (AddMoney, 200000) 

 InitTrigger () 
 TriggerCondition (1, IsMonster, 1098) 
 TriggerAction (1, AddNextFlag, 1707, 10, 10) 
 RegCurTrigger (17071) 

-- Andre -------------------------------------------------- -------------------------------------- U.S. Olympic concerns ------ 
 DefineMission (6429, "Andre concerns the United States and Austria", 1708) 
 MisBeginTalk ( "<t> nightmare, also refused to let those guys I flame you ... ... As a biological surprise I came to kill the winter the island ... ... No, I can not allow them to continue their arrogance! They can not because of me hurt her! ") 
 MisBeginCondition (NoRecord, 1708) 
 MisBeginCondition (NoMission, 1708) 
 MisBeginCondition (HasRecord, 1706) 
 MisBeginAction (AddMission, 1708) 
 MisBeginAction (AddTrigger, 17081, TE_KILL, 1098,10) 
 MisCancelAction (ClearMission, 1708) 
 
 MisNeed (MIS_NEED_DESP, "the eradication of <j??·????(283,924)> help <j????(1640,1083)> nightmare 10.") 
 MisNeed (MIS_NEED_KILL, 1098, 10, 10, 10) 
 
 MisResultTalk ( "<t> call, I finally put down the stones.") 
 MisHelpTalk ( "<t> hurry up and go, I do not really worry about ... ...") 
 MisResultCondition (HasMission, 1708) 
 MisResultCondition (NoRecord, 1708) 
 MisResultCondition (HasFlag, 1708, 19) 
 MisResultAction (ClearMission, 1708) 
 MisResultAction (SetRecord, 1708) 
 MisResultAction (AddExp, 675000, 675000) 
 MisResultAction (AddMoney, 200000) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1098) 
 TriggerAction (1, AddNextFlag, 1708, 10, 10) 
 RegCurTrigger (17081) 

 --Love token set -------------------------------------------------- -------------------------------------------- -------- 
 DefineMission (6430, "set love token", 1709) 
 MisBeginTalk ( "<t> I think she ... ... I??her, as long as I have a (sunset), I asked her to marry him!") 
 MisBeginCondition (NoRecord, 1709) 
 MisBeginCondition (NoMission, 1709) 
 MisBeginCondition (HasRecord, 1707) 
 MisBeginCondition (HasRecord, 1708) 
 MisBeginAction (AddMission, 1709) 
 MisBeginAction (AddTrigger, 17091, TE_GETITEM, 118, 1) 
 MisCancelAction (ClearMission, 1709) 
 
 MisNeed (MIS_NEED_DESP, "to help found a <j??·????(283,924)> sunset.") 
 MisNeed (MIS_NEED_ITEM, 118, 1, 10, 1) 
 
 MisResultTalk ( "<t> good, I can finally had asked her to marry him!") 
 MisHelpTalk ( "<t> this problem is not difficult, right? It should not be difficult, right?") 
 MisResultCondition (HasMission, 1709) 
 MisResultCondition (NoRecord, 1709) 
 MisResultCondition (HasItem, 118, 1) 
 MisResultAction (ClearMission, 1709) 
 MisResultAction (TakeItem, 118, 1) 
 MisResultAction (SetRecord, 1709) 
 MisResultAction (AddExp, 400000,400000) 
 MisResultBagNeed (1) 
 MisResultAction (GiveNpcMission, 6431, "the United States and Austria Andre boatman") 
 InitTrigger () 
 TriggerCondition (1, IsItem, 118) 
 TriggerAction (1, AddNextFlag, 1709, 10, 1) 
 RegCurTrigger (17091) 

 ------------------------------------------------ -------------------------------------------------- Proposal ---- 
 DefineMission (6431, "marriage", 1710) 
 MisBeginTalk ( "<t> Ha, ha, ha, I finally have it, I finally can go to a marriage proposal! Finally, I ask you a favor to help it! Help me out and she said, I immediately asked her to marry him!") 
 MisBeginCondition (NoRecord, 1710) 
 MisBeginCondition (NoMission, 1710) 
 MisBeginCondition (HasRecord, 1709) 
 MisBeginAction (AddMission, 1710) 
 MisCancelAction (ClearMission, 1710) 
 MisBeginBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "Andre the United States and Austria for the boatman to marry him <j????·???(254,881)>.") 
 MisHelpTalk ( "<t> Oh, Oh, I am happy, really happy about the good ~") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ ----------------------------( The end of marriage) 
 DefineMission (6432, "marriage", 1710, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> marry him ... ...? He was a suitor to me? I never thought I would be this day! I really, really too happy, hee hee, thank you, thank you! You get the money to, very, very grateful to you, ah! ") 
 MisResultCondition (HasMission, 1710) 
 MisResultCondition (NoRecord, 1710) 
 MisResultAction (ClearMission, 1710) 
 MisResultAction (SetRecord, 1710) 
 MisResultAction (AddExp, 400000, 400000) 


 ------------------------------ 5 ------------------ Pirate Princess????level??(2232,2801) 
 DefineMission (6559, "????", 1825) 
 
 MisBeginTalk ( "<t> your very fast growth rate, I would like to, if you have a master of your band, you will have a greater breakthrough! Believe I go to a more than 41 players, thanks to his division bar, and after each apprentice 10,20,40,60,70,80 level rose after the system is in place in your backpack to give you temporary generous incentives Oh! ") 
 -- MisBeginCondition (LvCheck, ">", 5) 
 -- MisBeginCondition (LvCheck, "<", 45) 
 MisBeginCondition (NoRecord, 1825) 
 MisBeginCondition (NoMission, 1825) 
 MisBeginCondition (HasItem, 6044,1) 
 MisBeginAction (AddMission, 1825) 
 MisCancelAction (ClearMission, 1825) ------ the task could be deleted 
 
 MisNeed (MIS_NEED_DESP, "right--click to choose apprentice players, if they reach level 41 and above can be studied, and understanding how to look after the apprentice <j??????(2232,2801)> City Department receive silver awards task! ") 
 MisHelpTalk ( "good master rare ah? Quickly you act!") 
 MisResultTalk ( "may be so fast you do not find the master, since you already know the benefits of the apprentice, then I would give you that reward you!") 
 MisResultCondition (NoRecord, 1825) 
 MisResultCondition (HasMission, 1825) 
 MisResultCondition (HasItem, 6044,1) 
 MisResultAction (TakeItem, 6044,1) 
 MisResultAction (ClearMission, 1825) 
 MisResultAction (SetRecord, 1825) 
 MisResultAction (AddMoney, 1000,1000) 
 MisResultAction (AddExp1) 
 
 --Level ------------------------------ 10 -------------------- ---------- pirate princess friends??(2232,2801) 
 DefineMission (6552, "friends", 1821) 
 
 MisBeginTalk ( "<t> trials these days, after you have completed one of the most fundamental change, but I have to test your interpersonal skills, your chest pirate friends out in the transaction to <b???> 7 more than a friend, if the other side and you are the opposite sex, then the other special incentives can be Oh, and let a friend of the opposite sex to find a friend to open the props, and then came to the mainland Argent <j Pirate Princess??(2232,2801 )>?") 
 MisBeginCondition (LvCheck, ">", 9) 
 MisBeginCondition (LvCheck, "<", 45) 
 MisBeginCondition (NoItem, 6003,1) 
 MisBeginCondition (NoRecord, 1821) 
 MisBeginCondition (NoMission, 1821) 
 MisBeginCondition (HasRecord, 1825) 
 MisBeginAction (AddMission, 1821) 
 MisCancelAction (ClearMission, 1821) ------ the task could be deleted 
 
 MisNeed (MIS_NEED_DESP, "the opposite sex you find a friend, let her open to find a friend props, so you can go to Silver City to obtain incentives <j??????(2232,2801)>.") 
 -- MisBeginCondition (AlwaysFailure) 
 MisHelpTalk ( "how fast do not, ah, do you even can not find a friend? <r????:10--44?>") 
 MisResultTalk ( "very good, not bad you communicative competence, I believe you since there will be in the hands of pirates Wang more friends.") 
 MisResultCondition (NoRecord, 1821) 
 MisResultCondition (HasMission, 1821) 
 MisResultCondition (NoItem, 6014, 1 )------------------------ friends 
 MisResultCondition (NoItem, 6041, 1 )------------------------ friends 
 MisResultAction (ClearMission, 1821) 
 MisResultAction (SetRecord, 1821) 
 MisResultAction (AddMoney, 10000,10000) 
 MisResultAction (AddExp1 )---------------------------------------------- the role of function level 1 

 

 
 ------------------ ------------------------------ Pirate fishing??Princess (2232,2801) 
 DefineMission (6555, "fishing", 1824) 
 
 MisBeginTalk ( "<t> you should not have been catching fish at sea, right? Well, first of all, you have to learn to how to create a vessel, you can be free to Silver City to create a <j??·???(2255,2801)> The new ship, and then to Silver City to the sea terminal <j????·??(2243,2826)> dialogue, while there are many in the vicinity of <j????(2270,2907)> fish, you help me with 5 months back <b???> you, I did not eat for a long time the sashimi? right, forget to tell you how to fish, you just send your fishing skills to study double--click the book to the waters of Argent after the mainland to find fish, you can use fishing skills sashimi Oh. ") 
 MisBeginCondition (NoRecord, 1824) 
 MisBeginCondition (NoMission, 1824) 
 MisBeginCondition (HasItem, 6043, 1 )------------------------ fishing Brochure 
 -- MisBeginAction (AddTrigger, 18241, TE_GETITEM, 1478, 5) 
 MisBeginAction (AddMission, 1824) 
 MisCancelAction (ClearMission, 1824) ------ the task could be deleted 
 
 
 -- MisNeed (MIS_NEED_ITEM, 1478, 5, 10, 5) 
 MisNeed (MIS_NEED_DESP, "Silver City <j??????(2232,2801)> back to help 5 <b???>.") 
 MisHelpTalk ( "the use of fishing on fish sashimi skills available.") 
 MisResultTalk ( "TU! Taste really good, these are the Princess??your gift!") 
 MisResultCondition (NoRecord, 1824) 
 MisResultCondition (HasMission, 1824) 
 MisResultCondition (HasItem, 1478,5) 
 MisResultCondition (HasItem, 6043,1) 
 MisResultAction (TakeItem, 6043,1) 
 MisResultAction (TakeItem, 1478,5) 
 MisResultAction (ClearMission, 1824) 
 MisResultAction (SetRecord, 1824) 
 MisResultAction (AddMoney, 10000,10000) 
 MisResultAction (AddExp1 )---------------------------------------------- the role of function level 1 
 
 -- InitTrigger () 
 -- TriggerCondition (1, IsItem, 1478) 
 -- TriggerAction (1, AddNextFlag, 1824, 10, 5) 
 -- RegCurTrigger (18241) 


 

 
 ------------------------------ I would like to learn cool fusion installed blacksmith's apprentice ------------------ ------------------------------ 
 DefineMission (6556, "I installed fusion cool to learn", 1826) 
 
 MisBeginTalk ( "<t> in your chest out and your cool loaded onto any piece of clothing to my master Tonggu copper (901,3496) Department fusion! Again came to me.") 
 MisBeginCondition (NoRecord, 1826) 
 MisBeginCondition (NoMission, 1826) 
 MisBeginCondition (HasItem, 6028, 1 )------------------------ pirate compass 
 MisBeginAction (AddMission, 1826) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 

 
 MisNeed (MIS_NEED_DESP, "your chest out in the cool equipment for fusion!") 
 MisHelpTalk ( "Lan Sand City to find a fusion to <j??·???(902,3495)>!") 
 MisResultTalk ( "fusion Well! Worse!") 
 MisResultCondition (NoRecord, 1826) 
 MisResultCondition (HasMission, 1826) 
 MisResultCondition (HasNoItem, 453) -------------------- Fusion Scroll 
 MisResultAction (ClearMission, 1826) 
 MisResultAction (SetRecord, 1826) 
 MisResultAction (GiveItem, 6029, 1,4 )------------------ loaded cool book integration school 
 MisResultAction (GiveItem, 453, 1,4 )------------------ loaded cool book integration school 
 MisResultAction (AddMoney, 10000,10000) 
 MisResultBagNeed (2) 
 ------------------------------ I would like to learn props refining the apprentice blacksmith ------------------ 
 DefineMission (6557, "I would like to learn props refining", 1827) 
 
 MisBeginTalk ( "<t> Since you have already completed before the task of cool fusion installed, then you should just have to see where my master can also be used for refining it, you can just open a chest in stone on the refining for refining, the refining level can only be refined stone gem level Oh, precious stones in the game to make a purchase in the Mall! ") 
 MisBeginCondition (NoRecord, 1827) 
 MisBeginCondition (NoMission, 1827) 
 MisBeginCondition (HasItem, 6028, 1 )------------------------ pirate compass 
 MisBeginCondition (HasRecord, 1826) 
 -- MisBeginAction (GiveItem, 883, 1, 4 )-------------------- Heart On 
 MisBeginAction (AddMission, 1827) 
 -- MisCancelAction (ClearMission, 1827) ------ the task could be deleted 
 MisResultBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "with the sand--lan <j?????(904,3501)> dialogue Metro refining the details of that") 
 
 -- MisHelpTalk ( "City to look for sand--lan Tonggu blacksmith copper (901,3496) for refining") 
 MisResultTalk ( "Do you know how to refine the bar!") 
 MisResultCondition (NoRecord, 1827) 
 MisResultCondition (HasMission, 1827) 
 -- MisResultCondition (HasNoItem, 6016 )-------------------- special refining stone 
 MisResultAction (ClearMission, 1827) 
 MisResultAction (SetRecord, 1827) 
 MisResultAction (GiveItem, 6030, 1,4 )------------------ props refining school book 
 MisResultAction (AddMoney, 10000,10000) 
 MisResultBagNeed (1) 

 ------------------------------ I would like to study synthetic precious stones of the apprentice blacksmith ------------------ 
 DefineMission (6558, "I want to study synthetic sapphire", 1828) 
 
 MisBeginTalk ( "<t> you have learned about the process of refining, you found the pirate king of the world, as well as refining stone stones are level, and refining the precious stones to enhance the level of stone is a stone will be the same as 2 to Sand City grocer who lan Emory (839,3585) to buy a scroll gemstones fusion, and then there Synthesis Emory! ") 
 MisBeginCondition (NoRecord, 1828) 
 MisBeginCondition (NoMission, 1828) 
 MisBeginCondition (HasItem, 6028, 1 )------------------------ pirate compass 
 MisBeginCondition (HasRecord, 1827) 
 MisBeginAction (GiveItem, 6016, 1, 4 )-------------------- special refining stone 
 MisBeginAction (GiveItem, 886, 1, 4) -- synthetic gemstones Volume 
 MisBeginAction (AddMission, 1828) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 MisResultBagNeed (1) 
 
 
 MisNeed (MIS_NEED_DESP, "to find Lan Sand City <j????·??(840,3585)> for synthetic gems, and then go to the city of Sha--Lan <j?????(904,3501)> Department to receive awards ! ") 
 
 MisHelpTalk ( "Please open a chest of stone, as well as the mandate given to refining the refined stone, look for sand--lan City grocer who Emory (839,3585) for synthetic gems, synthetic sand--lan look good after the blacksmith's apprentice City ( 904,3501) to receive awards! ") 
 MisResultTalk ( "Synthesis of Well! Good!") 
 MisResultCondition (NoRecord, 1828) 
 MisResultCondition (HasMission, 1828) 
 MisResultCondition (HasDiamondId) 
 MisResultAction (ClearMission, 1828) 
 MisResultAction (SetRecord, 1828) 
 MisResultAction (GiveItem, 6031, 1,4 )------------------ synthetic gemstones school book 
 MisResultAction (AddMoney, 10000,10000) 
 MisResultBagNeed (1) 
 
 --Xue Cheng ------------------------------------------------------ ------------------------ return apprentice blacksmith 
 DefineMission (6553, "Return Program", 1822) 
 MisBeginTalk ( "<t> you finally learned how to weld, refining and synthetic gemstones way, you can go to Silver City Princess??pirates (2232,2801) to receive awards.") 
 MisBeginCondition (NoRecord, 1822) 
 MisBeginCondition (NoMission, 1822) 
 MisBeginCondition (HasRecord, 1826) 
 MisBeginCondition (HasRecord, 1827) 
 MisBeginCondition (HasRecord, 1828) 
 MisBeginAction (AddMission, 1822) 
 MisCancelAction (ClearMission, 1828) ------ the task could be deleted 
 
 MisNeed (MIS_NEED_DESP, "go to Silver City to receive award <j??????(2232,2801)> Office!") 
 
 MisHelpTalk ( "you complete fusion equipment cool, props refined, precious stones synthetic studies of three tasks to complete the task!") 
 MisResultCondition (AlwaysFailure) 

 --Return of school trip ------------------------ ---------------------------------------------------------------------- -- Pirate Princess??
 DefineMission (6554, "coming back", 1822, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "Yes, It seems that you have a future boy, ah, ha ha") 
 MisResultCondition (NoRecord, 1822) 
 MisResultCondition (HasMission, 1822) 
 MisResultCondition (HasItem, 6028,1) 
 MisResultAction (SetRecord, 1822) 
 MisResultAction (TakeItem, 6029, 1) ---------- Cool loaded book integration school 
 MisResultAction (TakeItem, 6030, 1) -------------------- props refining school book 
 MisResultAction (TakeItem, 6031, 1) ------------------ synthetic gemstones school book 
 MisResultAction (TakeItem, 6028, 1) ------------------ compass 
 MisResultAction (ClearMission, 1822) 
 MisResultAction (ClearRecord, 1826) 
 MisResultAction (ClearRecord, 1827) 
 MisResultAction (ClearRecord, 1828) 
 MisResultAction (SetRecord, 1822) 
 MisResultAction (AddMoney, 30000,30000) 

 ------------------------------------------------ PK ------------------------ I would like to learn??pirate princess 
 DefineMission (6570, "I would like to learn PK", 1835) 
 
 MisBeginTalk ( "<t> to find <b???> in <b????> purchase a <j?????(2210,2893)> it! But bearing in mind: If you did not have any 5000 gold coin, he is impossible to regardless of your courage, oh! ") 
 MisBeginCondition (NoRecord, 1835) 
 MisBeginCondition (NoMission, 1835) 
 MisBeginCondition (HasItem, 6033,1) 
 MisBeginAction (AddMission, 1835) 
 MisCancelAction (ClearMission, 1835) 
 
 MisNeed (MIS_NEED_DESP, "from <j?????(2210,2893)> in the <b???> purchase a <b????>!") 
 MisHelpTalk ( "<t> silver city he is a master of Martial Arts in general are (2210,2893) from various sports around waiting for the arrival of people.") 
 MisResultCondition (AlwaysFailure) 

 ---------------------------------------------------------------------- I would like to learn PK ---------------------- ------ athletic administrator 
 DefineMission (6571, "I would like to learn PK", 1835, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> brave soldiers, I wait for you a long time! Clenched hands you a certification of the brave, please listen to me go on ... ...") 
 MisResultCondition (NoRecord, 1835) 
 MisResultCondition (HasMission, 1835) 
 MisResultAction (ClearMission, 1835) 
 MisResultAction (SetRecord, 1835) 


 ---------------------------------------------------------------------- I would like to learn PK ---------------------- ------ athletic administrator 
 DefineMission (6572, "I would like to learn PK", 1836) 

 MisBeginTalk ( "<t> with this evidence of the brave to brave a PK it! Near as long as the athletic administrator to find a player, and then right to choose can be a single! Do not care about winning or losing, and the battle itself the best self--transcendence! end the fighting here was I, I will reward your courage! ") 
 MisBeginCondition (NoRecord, 1836) 
 MisBeginCondition (NoMission, 1836) 
 MisBeginCondition (HasRecord, 1835) 
 MisBeginAction (AddMission, 1836) 
 MisCancelAction (ClearMission, 1836) 

 MisNeed (MIS_NEED_DESP, "<t> with <b??> for a <b????> to PK, and then return to collect reward <j?????(2210,2893)> Department.") 

 MisResultTalk ( "<t> very good, seems to realize that you have learned how to PK!") 
 MisHelpTalk ( "<t> how not to go? Refueling it!") 
 MisResultCondition (HasMission, 1836) 
 MisResultCondition (Get_ItemAttr_Join1) 
 MisResultAction (ClearMission, 1836) 
 MisResultAction (SetRecord, 1836) 
 MisResultAction (GiveItem, 2816, 1, 4 )---------- points Honor Book 
 MisResultAction (GiveItem, 6034,1,4) ------------------------------ pirate books PK studies 
 MisResultBagNeed (2) 


 -------------------------------------------------------- PK ------------------------ I would like to study sports administrator 
 DefineMission (6573, "I would like to learn PK", 1837) 
 
 MisBeginTalk ( "<t> young warrior, with <b???> go <b??PK???> in <j??????(2232,2801)> find it! She will give you an unexpected return ! ") 
 MisBeginCondition (NoRecord, 1837) 
 MisBeginCondition (NoMission, 1837) 
 MisBeginCondition (HasRecord, 1836) 
 MisBeginAction (AddMission, 1837) 
 MisCancelAction (ClearMission, 1837) 
 
 MisNeed (MIS_NEED_DESP, "and <j??????(2232,2801)> in the <b???> dialogue.") 
 
 MisHelpTalk ( "<t> she is a novice's guide generally in (2232,2801) nearby waiting for the arrival of each new Argent. Remember to bring the pirate PK studies book Oh!") 
 MisResultCondition (AlwaysFailure) 

 ---------------------------------------------------------------------- I would like to learn PK ---------------------- ------ Pirate Princess??
 DefineMission (6574, "I would like to learn PK", 1837, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> after this test, you have fully experienced the pleasure of fighting, right?! Collect your reward, waiting for the next challenge you!") 
 MisResultCondition (NoRecord, 1837) 
 MisResultCondition (HasMission, 1837) 
 MisResultCondition (HasItem, 6033,1) 
 MisResultCondition (HasItem, 6034,1) ------------------------------ pirate books PK studies 
 MisResultAction (TakeItem, 6034,1) 
 MisResultAction (TakeItem, 6033,1) 
 MisResultAction (ClearMission, 1837) 
 MisResultAction (SetRecord, 1837) 
 MisResultAction (AddMoney, 10000) 


 --Hope I'm going to waste ---------------------------------------------------------------------- -------------------- Princess -------- Pirates??
 DefineMission (6575, "I'm going to waste Ling", 1838) 
 
 MisBeginTalk ( "<t> to see you again, I am very happy! The comparison with the difficulty of the challenge, you need to enter the legendary <b????>, killing a <b????>! However, please Note that only in the sand to set sail into the city--lan Oh, there are points you want to keep in mind that only a maze of 3,6,9,12--point in the day will be opened up when the system will prompt notice, you can pay attention to ! waste of Hope in the entrance of the labyrinth layer of <j????(1509,3666)> ") 
 MisBeginCondition (NoRecord, 1838) 
 MisBeginCondition (NoMission, 1838) 
 MisBeginCondition (HasItem, 6045,1) ---------------------------- waste guide to explore the maze of Hope 
 MisBeginAction (AddMission, 1838) 
 MisBeginAction (AddTrigger, 18381, TE_KILL, 686, 1) -------------- waste samurai soul 
 MisCancelAction (ClearMission, 1838) 
 
 MisNeed (MIS_NEED_KILL, 686, 1, 10, 1) 
 MisNeed (MIS_NEED_DESP, "<t> go <b????> kill <b????> at least one, and then to Silver City to receive award <j??????(2232,2801)> Office!") 
 
 MisResultTalk ( "<t> has really spent Ling can easily beat warriors? My intuition seems right: you are a hero!") 
 MisHelpTalk ( "<t> spirits of waste from the beginning of 12:00 midnight, three hours each will be open once the entrance to the city in the sand Harbor Department lan, you have to drive to enter one boat!") 
 MisResultCondition (HasMission, 1838) 
 MisResultCondition (HasFlag, 1838, 10) 
 MisResultCondition (HasItem, 6045, 1) 
 MisResultAction (TakeItem, 6045, 1) 
 MisResultAction (ClearMission, 1838) 
 MisResultAction (SetRecord, 1838) 
 MisResultAction (AddExp, 60000, 60000) 
 
 MisResultBagNeed (2) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 686) 
 TriggerAction (1, AddNextFlag, 1838, 10, 1) 
 RegCurTrigger (18381) 

 
 --Join the melee ---------------------------------------------------------------------- -------------------------- -- Pirate Princess??
 DefineMission (6576, "joined the melee", 1839) 
 
 MisBeginTalk ( "<t> to see you again, I am very excited! With your evidence of the brave PK bravely go it! Do not care about winning or losing, the fighting itself is the best self--transcendence! End the fighting here, then I I will reward your courage! ") 
 MisBeginCondition (NoRecord, 1839) 
 MisBeginCondition (NoMission, 1839) 
 MisBeginCondition (HasItem, 6047,1) ---------------------------- melee guidelines pirates 
 MisBeginAction (AddMission, 1839) 
 MisCancelAction (ClearMission, 1839) 

 MisNeed (MIS_NEED_DESP, "<t> with 5 games to <b????> to PK, and then returned to Silver City to receive award <j??????(2232,2801)> Department.") 

 -- MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> good, it seems that you not only learn how to PK! Even learned how to win the PK! Later there is still a long way, careful to treat seriously the fight every time!") 
 MisHelpTalk ( "<t> how not to go? Do not be afraid! Filling it!") 
 MisResultCondition (HasMission, 1839) 
 MisResultCondition (Get_ItemAttr_Join20) 
 MisResultCondition (HasItem, 6047,1) 
 MisResultAction (TakeItem, 6047,1) 
 MisResultAction (ClearMission, 1839) 
 MisResultAction (SetRecord, 1839) 
 MisResultAction (AddMoney, 30000,30000) 
 MisResultAction (AddExp, 50000, 50000) 
 
 -- MisResultAction (GiveItem, 6019,1,4) ------------------------------ team experience in fruit 
 -- MisResultBagNeed (1) 

 
-- Pirate King -------------------------------------- ------------------------ master System 
 DefineMission (6577, "pirate king master System", 1840) 
 MisBeginTalk ( "<t> OK, you have reached the 41, oh, you can finally???, and so must be responsible master Oh, and so on to 80 disciples sent out, the chef can get a lot of prestige.") 
 MisBeginCondition (LvCheck, ">", 40) 
 -- MisBeginCondition (LvCheck, "<", 45) 
 MisBeginCondition (NoRecord, 1840) 
 MisBeginCondition (NoMission, 1840) 
 MisBeginCondition (HasRecord, 1839) 
 
 
 MisBeginAction (AddMission, 1840) 
 
 MisNeed (MIS_NEED_DESP, "affixed to your transaction??apprentice to you, let you open the disciples after the paste can be studied, the task must have completed apprentice paste.") 
 MisResultTalk ( "<t> Oh? Apprentice you receive, ah.") 
 MisHelpTalk ( "<t> apprentice you have received and paste the apprentice has to complete the task ....") 
 MisResultCondition (HasMission, 1840) 
 MisResultCondition (HasItem, 6049, 1) 
 MisResultAction (TakeItem, 6049, 1) ------------ posted for the division 
 MisResultAction (ClearMission, 1840) 
 MisResultAction (SetRecord, 1840) 
 MisResultAction (AddMoney, 100000,100000) 
 -- MisResultAction (GiveItem, 6017, 5, 4) ---------- a special effort to increase device 
 MisResultAction (AddExp, 100000, 100000) 
 -- MisResultBagNeed (1) 
 
-- Jihad administrator to find -------------------------------------------------------- ------------------------??pirate princess 
 DefineMission (6578, "looking for an administrator Jihad", 1841) 
 
 MisBeginTalk ( "<t> you reach 45, you can go ice??asked how access to the <j?????·??(1450,613)> Jihad") 
 MisBeginCondition (NoRecord, 1841) 
 MisBeginCondition (NoMission, 1841) 
 MisBeginCondition (HasItem, 6036,1) 
 MisBeginAction (AddMission, 1841) 
 MisCancelAction (ClearMission, 1841) 
 
 MisNeed (MIS_NEED_DESP, "You can go ice??Jihad asked <j?????·??(1450,613)> map information, to get him the award of the task") 
 
 MisHelpTalk ( "<t> ice???Maya??administrator of Jihad (1450,612 )...") 
 MisResultCondition (AlwaysFailure) 

 ---------------------------------------------------------------------- ---------------------- Administrator to find Jihad ------ athletic administrator 
 DefineMission (6579, "looking for an administrator Jihad", 1841, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> you finally found me, bad--en ...") 
 MisResultCondition (NoRecord, 1842) 
 MisResultCondition (HasMission, 1841) 
 MisResultAction (ClearMission, 1841) 
 MisResultAction (SetRecord, 1841) 
 MisResultAction (AddMoney, 10000,10000) 


 ---------------------------------------------------------------------- ---------------------- I would like to enter Jihad ------ athletic administrator 
 DefineMission (6580, "I would like to enter holy war", 1842) 

 MisBeginTalk ( "<t> to enter the holy order of life and death must have in order to enter the oh, so long as the trade unions to join the Navy or the Pirates and has 15 points value of honor can be received here in my oh.") 
 MisBeginCondition (NoRecord, 1842) 
 MisBeginCondition (NoMission, 1842) 
 MisBeginCondition (HasRecord, 1841) 
 MisBeginCondition (HasItem, 6036,1) 
 MisBeginAction (AddTrigger, 18421, TE_GETITEM, 2382, 1) 
 MisBeginAction (AddMission, 1842) 
 MisCancelAction (ClearMission, 1842) 
 
 MisNeed (MIS_NEED_ITEM, 2382, 1, 1, 1) 
 MisNeed (MIS_NEED_DESP, "<t> who have a life and death as long as the task can be completed!") 

 MisResultTalk ( "<t> good, it appears that you have to make life and death!.") 
 MisHelpTalk ( "<t> how? Do not you have not yet acceded to the Navy or the trade unions do pirates?") 
 MisResultCondition (HasMission, 1842) 
 MisResultCondition (HasItem, 6036,1) 
 MisResultCondition (HasItem, 2382,1) ---------- make of life and death 
 MisResultAction (ClearMission, 1842) 
 MisResultAction (SetRecord, 1842) 
 MisResultAction (TakeItem, 6036, 1) ------------ Jihad guide map 
 MisResultAction (AddMoney, 50000, 50000) 
 MisResultAction (SetRecord, 1842) 
 -- MisResultAction (GiveItem, 6019, 5, 4) ---------- fruit special teams experience 
 MisResultAction (AddExp, 100000, 100000) 
 MisResultBagNeed (1) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 2382) 
 TriggerAction (1, AddNextFlag, 1842, 1, 1) 
 RegCurTrigger (18421) 
 
 
 --Trigger level task -------------------------- -------------------------------------------------------------------- -------------------------- 
 --Training level ---------------- -------------------- 11 ------------------ Pirate Princess Wizard??(2232,2801) 
 DefineMission (6551, "training wizard", 1820) 
 
 MisBeginCondition (AlwaysFailure) 
 MisHelpTalk ( "Wizard yet how long that one ah? I am impatient and so good yo, and when the cross--task Please wizard on the second column backpack!") 
 MisResultTalk ( "well, the wizard you raise a baby was still healthy, it seems that you really know how to cultivate the spirit, in my tests here, you count your qualified, huh, huh!") 
 MisResultCondition (NoRecord, 1820) 
 MisResultCondition (HasMission, 1820) 
 MisResultCondition (JL_lv )-------------------------- wizard levels to determine 
 MisResultAction (ClearMission, 1820) 
 MisResultAction (SetRecord, 1820) 
 MisResultAction (AddMoney, 4000,4000) 
 MisResultAction (AddExp1 )---------------------------------------------- the role of function level 1 
 
 -------------------------------------------- 13 -------------------------------- habit level Wizard 
 DefineMission (6592, "form wizard", 1843) 
 MisBeginCondition (AlwaysFailure) 
 MisHelpTalk ( "how? Do you not feed your spirit you?") 
 MisResultTalk ( "<t> TU, it appears that you have learned how to feed the wizard, I believe you will make good use of in the future to feed your pet, the task will be sent to you after the completion of five specially designed feed Wizard, which can only feed feed 5 below the rank of Wizard! ") 
 MisResultCondition (NoRecord, 1843) 
 MisResultCondition (HasMission, 1843) 
 MisResultCondition (JLTLZM) ------------ Wizard to determine whether or not full strength 
 MisResultAction (ClearMission, 1843) 
 MisResultAction (SetRecord, 1843) 
 MisResultAction (GiveItem, 6015,5,4 )------------------ special wizard feed 
 MisResultBagNeed (1) 
 

 

 -------------------------- 17 ------------------------------ level wizard coins 
 -- DefineMission (6594, "The role of coins Wizard", 1844) 
 -- MisBeginCondition (AlwaysFailure) 
 -- MisHelpTalk ( "how, no chest of coins you get the wizard?") 
 -- MisResultTalk ( "<t> TU, it seems you have treasure chests of coins have been a wizard, and you should know the methods used by it, in fact, also in the use of coins Wizard Wizard skills consume time, there are a lot of to use, you can experience the game slowly! ") 
 -- MisResultCondition (NoRecord, 1844) 
 -- MisResultCondition (HasMission, 1844) 
 -- MisResultCondition (HasItem, 1872,1) ------------ chest coins Wizard 
 -- MisResultAction (ClearMission, 1844) 
 -- MisResultAction (SetRecord, 1844) 
 -- MisResultAction (GiveItem, 855,99,4 )------------------ coins Wizard 
 -- MisResultBagNeed (1) 
 

 
 
 -------------------------- 27 ------------------------------ level task wizard skills 
 DefineMission (6596, "Wizard skills", 1845) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> like a wizard that you have the skills to obtain the book, you can expect a certain amount of the award.") 
 MisResultCondition (NoRecord, 1845) 
 MisResultCondition (HasMission, 1845) 

 MisResultAction (ClearMission, 1845) 
 MisResultAction (SetRecord, 1845) 
 MisResultAction (AddExp, 50000, 50000) 
 -- MisResultAction (GiveItem, 855,99,4 )------------------ coins Wizard 
 -- MisResultAction (GiveItem, 6015,10,4 )---------------- Feed Wizard 
 MisResultBagNeed (1) 

 
 
 -------------------------- 60 ------------------------------ level task wizard marriage 
 DefineMission (6598, "Wizard of marriage system", 1846) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> It seems that you have to understand the function of the Wizard of marriage, if you do not have 20 of the Wizard of marriage it does not matter, I believe you in the future course of the game will train your spirit grow slowly.") 
 MisResultCondition (NoRecord, 1846) 
 MisResultCondition (HasMission, 1846) 

 MisResultAction (ClearMission, 1846) 
 MisResultAction (SetRecord, 1846) 
 MisResultAction (GiveItem, 855,99,4 )------------------ wizard coins to be determined 
 -- MisResultAction (GiveItem, 6015,20,4 )---------------- feed Wizard to be determined 
 MisResultBagNeed (1) 
 

 --Friends introduced ------------------------------ 14 -------------------------------------- level 
 DefineMission (6600, "Friends System", 1847) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> It seems that you should be aware of Wang's Friends Pirates of the bar!") 
 MisResultCondition (NoRecord, 1847) 
 MisResultCondition (HasMission, 1847) 

 MisResultAction (ClearMission, 1847) 
 MisResultAction (SetRecord, 1847) 
 MisResultAction (GiveItem, 1849,99,4 )---------------- cake 
 MisResultBagNeed (1) 
 
 
 ------------------------------ 18 -------------------- level task team 
 DefineMission (6602, "Dating Team", 1848) 
 MisBeginCondition (AlwaysFailure) 
 MisHelpTalk ( "TU? Do not you people have not found my team?") 
 MisResultTalk ( "<t> Oh! It seems that you, or good karma, the pirate king in the future world to help each other, oh!") 
 MisResultCondition (NoRecord, 1848) 
 MisResultCondition (HasMission, 1848) 
 MisResultCondition (TeamZd) ---------------------- team to determine whether 

 MisResultAction (ClearMission, 1848) 
 MisResultAction (SetRecord, 1848) 
 MisResultAction (TeamZdJl )------------------ double team incentives 
 MisResultAction (GiveItem, 1849,198,4 )---------------- cake 
 MisResultBagNeed (2) 
 
 --Association task level ---------------------- 43 -------------------------------------------- 
 DefineMission (6604, "to join the Society", 1849) 
 MisBeginCondition (AlwaysFailure) 
 MisHelpTalk ( "TU? Do not you have not yet acceded to the Navy or the Hong Kong Association of you pirates?") 
 MisResultTalk ( "<t> It seems that you have joined the Association, the good Oh, the Association of the family, you realize the more friends!") 
 MisResultCondition (NoRecord, 1849) 
 MisResultCondition (HasMission, 1849) 
 MisResultCondition (GHPD) ---------------------- Association to determine whether there 

 MisResultAction (ClearMission, 1849) 
 MisResultAction (SetRecord, 1849) 
 -- MisResultAction (GiveItem, 6017,5,4 )------------------ experience double 
 -- MisResultBagNeed (1) 
 MisResultAction (AddExp, 100000, 100000) 

 
 
 ---------------------- 40 -------------------------------------------- level task dark swamp 
 DefineMission (6606, "into the dark swamp", 1850) 
 MisBeginCondition (AlwaysFailure) 

 MisHelpTalk ( "What? You have not been to the dark swamp you, hurry up and go, and block access to 10 of sludge here that I can receive awards! Dark layer of the entrance in the swamp <j Sea Witch (2037,2779) >. ") 
 MisResultTalk ( "<t> Yes, it seems you already know how to enter the dark swamp, and after dark you can upgrade in swamp??!") 
 MisResultCondition (NoRecord, 1850) 
 MisResultCondition (HasMission, 1850) 
 MisResultCondition (HasItem, 3442,10) 
 MisResultAction (TakeItem, 3442,10) 
 
 MisResultAction (ClearMission, 1850) 
 MisResultAction (SetRecord, 1850) 
 MisResultAction (GiveItem, 3848,10,4 )---------------- physical restoration of Pharmacy 
 MisResultAction (AddMoney, 50000,50000) 
 MisResultBagNeed (1) 
 
---------------------- 50 -------------------------------------------- level task Cube World 
 DefineMission (6608, "the world into the Cube", 1851) 
 MisBeginCondition (AlwaysFailure) 

 
 MisHelpTalk ( "What? You have not been to Rubik's cube world? Quickly go and kill the snow magic doll (147,384) was 20 ling magic crystal that I have here can receive reward! Cube floor entrance in the world <j Argent China (910,1069 )>?") 
 MisResultTalk ( "<t> Yes, it seems you already know how to enter the world of Rubik's cube, Rubik's cube after you can upgrade in the world of??!") 
 MisResultCondition (NoRecord, 1851) 
 MisResultCondition (HasMission, 1851) 
 MisResultCondition (HasItem, 3820,20) 
 MisResultAction (TakeItem, 3820,20) 
 
 MisResultAction (ClearMission, 1851) 
 MisResultAction (SetRecord, 1851) 
 MisResultAction (GiveItem, 3848,99,4 )---------------- cake 
 MisResultAction (AddMoney, 50000,50000) 
 MisResultBagNeed (1) 
 
 
 ------------------------------ 9 ---------- divination divination level task Granny ---------------------------------------- 
 DefineMission (6610, "divination pirates", 1852) 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> ah! So soon you find you were little, like to know the fate of the day is not today, if you want to know if I have it here for free premium account on!") 
 MisResultCondition (NoRecord, 1852) 
 MisResultCondition (HasMission, 1852) 

 MisResultAction (ClearMission, 1852) 
 MisResultAction (SetRecord, 1852) 
 MisResultAction (AddMoney, 1000,1000) ---------------------- incentives 1Q 
 MisResultAction (GiveNpcMission, 6611, "the mysterious diviner", 2) 
 
 ---------------------- 9--level experience enrichment tasks divination Granny ---------------------- ---------- 
 DefineMission (6611, "Box to receive", 1853) 

 MisBeginTalk ( "<t> Silver City <j????(2216,2771)> you find it, he will tell you some useful information!") 
 MisBeginCondition (NoRecord, 1853) 
 MisBeginCondition (NoMission, 1853) 
 MisBeginCondition (HasRecord, 1852) 
 MisBeginAction (AddMission, 1853) 
 MisCancelAction (ClearMission, 1853) 
 
 MisNeed (MIS_NEED_DESP, "Silver City <j????(2216,2771)> find it!") 
 MisHelpTalk ( "<t> go to the Mainland to look for grinding grain Argent messenger (2224,2768) it!") 
 MisResultCondition (AlwaysFailure) 

 --Level task ------------------------ 9 -------- Magic Box Ambassador Crystal 222400,276800 ------------------------------ 
 DefineMission (6612, "Box to receive", 1853, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> Box of receiving future can come to me, oh!") 
 MisResultCondition (NoRecord, 1853) 
 MisResultCondition (HasMission, 1853) 
 MisResultAction (ClearMission, 1853) 
 MisResultAction (SetRecord, 1853) 
 MisResultAction (AddMoney, 1500,1500) 
 MisResultAction (GiveNpcMission, 6613, "Ambassador magic crystal") 
 
 ---------------- 9 receive double experience level??MM 222400,276800 ------------------------------ ------ 
 DefineMission (6613, "double experience", 1854) 
 MisBeginTalk ( "<t> tired??it? Relations, where <b??MM> ask for help, she will bring you surprise, oh!") 
 MisBeginCondition (NoRecord, 1854) 
 MisBeginCondition (NoMission, 1854) 
 MisBeginCondition (HasRecord, 1853) 
 MisBeginAction (AddMission, 1854) 
 MisCancelAction (ClearMission, 1854) 
 
 MisNeed (MIS_NEED_DESP, "to <j????(912,3562)> or <j????(2184,2776)> or <j????(1320,545)> find <b??MM>") 
 MisHelpTalk ( "<t> to <b??MM> ask for help, she will bring you surprise, oh!") 
 MisResultCondition (AlwaysFailure) 
 
 ---------------- 9 receive double experience level??------ -------- 218400,277600 
 DefineMission (6614, "double experience", 1854, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> receive double experience after you can find me Oh, I hope you pirate king in the world to grow up faster!") 
 MisResultCondition (NoRecord, 1854) 
 MisResultCondition (HasMission, 1854) 
 MisResultAction (ClearMission, 1854) 
 MisResultAction (SetRecord, 1854) 
 MisResultAction (AddMoney, 5000,5000) 

 
 ---------------- 39 level digging NPC ------ Po 
 DefineMission (6616, "pirates digging treasure", 1855) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> such as the 41 you can come to me after receiving the daily Po--dug, and five times a day digging a great opportunity for Oh!") 
 MisResultCondition (NoRecord, 1855) 
 MisResultCondition (HasMission, 1855) 
 MisResultAction (ClearMission, 1855) 
 MisResultAction (SetRecord, 1855) 
 MisResultAction (AddMoney, 30000,30000) 
 MisResultAction (GiveItem, 6343,1,4 )-------- Po Figure 
 MisResultBagNeed (1) 

-- Lottery NPC ------ ---------------- 
 DefineMission (6618, "lottery system", 1856) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> new pirate king lottery Oh, specific player you can here in my query to, since you found me, and then give you a little reward you!") 
 MisResultCondition (NoRecord, 1856) 
 MisResultCondition (HasMission, 1856) 
 MisResultAction (ClearMission, 1856) 
 MisResultAction (SetRecord, 1856) 
 -- MisResultAction (GiveItem, 5940,1,4) ------ chest full respect 
 MisResultAction (AddExp, 10000, 10000) 
 MisResultAction (GiveItem, 5828,1,4 )-------- Lottery 
 MisResultBagNeed (2) 
 ---------------------------------- Main line tasks: learning vocational skills ------------------------------------------ 
 DefineMission (6735, "to learn vocational skills", 1925) 
 
 
 MisBeginTalk ( "<t> Congratulations to the completion of a transfer, and now you can learn some skills relevant to your career, oh! Each have their respective vocational skills, learning skills is the need for skills points, 1 liter skills that will be presented, the skills can be bought at the vocational instructor. ") 
 
 MisBeginCondition (CheckJobIsNew) 
 MisBeginCondition (HasRecord, 1940) 
 MisBeginCondition (NoRecord, 1925) 
 MisBeginCondition (NoMission, 1925) 
 MisBeginAction (AddMission, 1925) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "Society of a skill, and then find their own job tasks to receive awards tutor you!") 
 MisHelpTalk ( "<t> the backpack if you have skills in the book, as well as skills points, as long as you can double--click the skill book to learn the skills of the!") 
 MisResultTalk ( "<t> It seems that you still quite promising, so soon learned, skills to enhance the capacity of people is of great help to the Oh!") 
 MisResultCondition (CheckFirstSkill) 
 MisResultCondition (NoRecord, 1925) 
 MisResultCondition (HasMission, 1925) 
 MisResultAction (ClearMission, 1925) 
 MisResultAction (SetRecord, 1925) 
 MisResultAction (AddExp1) ---------------------- rating upgraded 
 MisResultAction (GiveNpcMission1, 6736) 
 
 
 
 ---------------------------------- Main line tasks: enhancing attributes points ------------------------------------------ 
 DefineMission (6736, "attribute points to upgrade", 1926) 
 
 MisBeginTalk ( "<t> you may now have begun to grow slowly, and with the level of your upgrade, you will be more and more of the capacity, you will be presented per liter level skills, as well as attributes that point, in front of you understand the importance of the skills, but is also very important attribute of the Oh, 1 liter, you can open your <rALT+A> characters attributes, figure a total of five attributes, you can be in accordance with the characteristics of your career to select the attribute points to increase. ") 
 
 MisBeginCondition (HasRecord, 1925) 
 MisBeginCondition (NoRecord, 1926) 
 MisBeginCondition (NoMission, 1926) 
 MisBeginAction (AddMission, 1926) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "attribute points to increase a little and then come to their own tasks to receive incentives professional tutor!") 
 MisHelpTalk ( "<t> press ALT + A to open people attribute column, after the character in the upgrading of the basic attributes there will be sign displayed, click thesign to increase the attribute") 
 MisResultTalk ( "<t> It seems that you still quite promising, so soon learned, character attributes and skills increase the ability of the characters have a lot of help, oh!") 
 MisResultCondition (NoRecord, 1926) 
 MisResultCondition (HasMission, 1926) 
 MisResultCondition (CheckAttrRole) ---------- detection figures attribute points 
 MisResultAction (ClearMission, 1926) 
 MisResultAction (SetRecord, 1926) 
 MisResultAction (AddExpRealPer2, 0.3) ---------------------- experience 30 percent incentive 
 
 MisResultAction (GiveNpcMissionbyFunc, "Occupational branch 1") 
 
 ---------------------------------- Main line tasks: to find clothing shop owner ()------------------------------------------ Jianshi 
 DefineMission (6737, "to find clothing shop owner", 1927) 
 
 MisBeginTalk ( "<t> role to improve people's ability to not only relying on the properties of points and skills, as well as the key point is the equipment in the game equipped with clothing, gloves, boots, helmets, necklaces, rings, props and equipment after People will be able to enhance the ability of equipment to enhance the capacity of the higher grade will be higher, the Department of Occupational Jianshi equipment <j???·????(2267,2704)> in the purchase of <b???> ! ") 
 
 MisBeginCondition (PfEqual1, 1) 
 MisBeginCondition (HasRecord, 1926) 
 MisBeginCondition (NoRecord, 1927) 
 MisBeginCondition (NoMission, 1927) 
 MisBeginAction (AddMission, 1927) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "to find the <b???> task <j???·????(2267,2704)> receive your reward!") 
 MisHelpTalk ( "<t>???<b???> incentives of the task <j???·????(2267,2704)> receive it!") 
 
 MisResultCondition (AlwaysFailure) 
 ---------------------------------- Main line tasks: to find clothing shop owner ()------------------------------------------ Jianshi 
 DefineMission (6738, "to find clothing shop owner", 1927, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> after Jianshi Department to purchase the equipment can come to me, I transferred here after the sale of two pairs of giant Jianshi Jianshi and the equipment!") 
 MisResultCondition (NoRecord, 1927) 
 MisResultCondition (HasMission, 1927) 
 MisResultAction (ClearMission, 1927) 
 MisResultAction (SetRecord, 1927) 
 MisResultAction (AddMoney, 2000) 
 MisResultAction (AddExpRealPer2, 0.2) ---------------------- experience a 10% incentive 
 
 MisResultAction (GiveNpcMission1, 6739) 
 
 ---------------------------------- Main line tasks: The first thing to buy equipment ()------------------------------------------ Jianshi 
 DefineMission (6739, "The first thing to buy equipment", 1928) 
 
 MisBeginTalk ( "<t> likelihood that you have found me, before the 2000 award to you of silver, then buy something in my equipment right here!") 
 MisBeginCondition (HasRecord, 1927) 
 MisBeginCondition (NoRecord, 1928) 
 MisBeginCondition (NoMission, 1928) 
 MisBeginAction (AddMission, 1928) 
 MisBeginAction (AddTrigger, 19281, TE_GETITEM, 0466, 1) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "in <r???> purchase <j???·????(2267,2704)> the <b???>!") 
 MisHelpTalk ( "<t> I tell you now how to buy equipment, selection of trading prop trading after the page, select what you want to buy the props, hold the left mouse button pressed drag the backpack you can buy!") 
 
 MisNeed (MIS_NEED_ITEM, 0466, 1, 10, 1) 
 
 MisResultTalk ( "<t> It seems that you still quite promising, so soon learned!") 
 
 MisResultCondition (NoRecord, 1928) 
 MisResultCondition (HasMission, 1928) 
 MisResultCondition (HasItemShouTao, 0466) 
 MisResultAction (ClearMission, 1928) 
 MisResultAction (SetRecord, 1928) 
 MisResultAction (AddExpRealPer2, 0.4) ---------------------- experience 40 percent incentive 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 0466) 
 TriggerAction (1, AddNextFlag, 1928, 10, 1) 
 RegCurTrigger (19281) 
 
 MisResultAction (GiveNpcMission1, 6749) 
 
 ---------------------------------- Main line tasks: to find clothing shop owners (hunters )------------------------------------------ 
 DefineMission (6740, "to find clothing shop owner", 1929) 
 
 MisBeginTalk ( "<t> role to improve people's ability to not only relying on the properties of points and skills, as well as the key point is the equipment in the game equipped with clothing, gloves, boots, helmets, necklaces, rings, props and equipment after People will be able to enhance the ability of equipment to enhance the capacity of the higher grade will be higher, hunters, Department of Occupational and equipment <j????·??(1349,539)> in the <b???> purchase! ") 
 
 MisBeginCondition (PfEqual1, 2) 
 MisBeginCondition (HasRecord, 1926) 
 MisBeginCondition (NoRecord, 1929) 
 MisBeginCondition (NoMission, 1929) 
 MisBeginAction (AddMission, 1929) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "to find the <b???> task <j????·??(1349,539)> receive your reward!") 
 MisHelpTalk ( "<t>???<b???> incentives of the task <j????·??(1349,539)> receive it!") 
 
 MisResultCondition (AlwaysFailure) 
 ---------------------------------- Main line tasks: to find clothing shop owners (hunters )------------------------------------------ 
 DefineMission (6741, "to find clothing shop owner", 1929, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> after the department to purchase equipment hunters can come to me, I transferred here after the sale of the second sniper equipment!") 
 MisResultCondition (NoRecord, 1929) 
 MisResultCondition (HasMission, 1929) 
 MisResultAction (ClearMission, 1929) 
 MisResultAction (SetRecord, 1929) 
 MisResultAction (AddMoney, 2000) 
 MisResultAction (AddExpRealPer2, 0.2) ---------------------- experience a 10% incentive 
 
 MisResultAction (GiveNpcMission1, 6742) 
 
 ---------------------------------- Main line tasks: The first thing to buy equipment ()------------------------------------------ Hunter 
 DefineMission (6742, "The first thing to buy equipment", 1930) 
 
 MisBeginTalk ( "<t> likelihood that you have found me, before the 2000 award to you of silver, then buy something in my equipment right here!") 
 MisBeginCondition (HasRecord, 1929) 
 MisBeginCondition (NoRecord, 1928) 
 MisBeginCondition (NoMission, 1930) 
 MisBeginAction (AddMission, 1930) 
 MisBeginAction (AddTrigger, 19301, TE_GETITEM, 0481, 1) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "in <r????> purchase <j???·????(2267,2704)> the <b???>!") 
 MisHelpTalk ( "<t> I tell you now how to buy equipment, selection of trading prop trading after the page, select what you want to buy the props, hold the left mouse button pressed drag the backpack you can buy!") 
 
 MisNeed (MIS_NEED_ITEM, 0481, 1, 10, 1) 
 
 MisResultTalk ( "<t> It seems that you still quite promising, so soon learned!") 
 
 MisResultCondition (NoRecord, 1930) 
 MisResultCondition (HasMission, 1930) 
 MisResultCondition (HasItemShouTao, 0481) 
 MisResultAction (ClearMission, 1930) 
 MisResultAction (SetRecord, 1928) 
 MisResultAction (AddExpRealPer2, 0.4) ---------------------- experience 40 percent incentive 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 0481) 
 TriggerAction (1, AddNextFlag, 1930, 10, 1) 
 RegCurTrigger (19301) 
 
 MisResultAction (GiveNpcMission1, 6749) 
 
 ---------------------------------- Main line tasks: to find clothing shop owner ()------------------------------------------ risk--takers 
 DefineMission (6754, "to find clothing shop owner", 1937) 
 
 MisBeginTalk ( "<t> role to improve people's ability to not only relying on the properties of points and skills, as well as the key point is the equipment in the game equipped with clothing, gloves, boots, helmets, necklaces, rings, props and equipment after People will be able to enhance the ability of equipment to enhance the capacity of the higher grade will be higher, risk--takers, Department of Occupational and equipment in the <b???> buy <j?????·??(2265,2704)> ! ") 
 
 MisBeginCondition (PfEqual1, 4) 
 MisBeginCondition (HasRecord, 1926) 
 MisBeginCondition (NoRecord, 1937) 
 MisBeginCondition (NoMission, 1937) 
 MisBeginAction (AddMission, 1937) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "to find the <b???> task <j?????·??(2265,2704)> receive your reward!") 
 MisHelpTalk ( "<t>???<b???> incentives of the task <j?????·??(2265,2704)> receive it!") 
 
 MisResultCondition (AlwaysFailure) 
 ---------------------------------- Main line tasks: to find clothing shop owner ()------------------------------------------ risk--takers 
 DefineMission (6755, "to find clothing shop owner", 1937, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> future risk--takers to buy the equipment department can come to me, I transferred here after the sale of the Second Department of the navigational equipment!") 
 MisResultCondition (NoRecord, 1937) 
 MisResultCondition (HasMission, 1937) 
 MisResultAction (ClearMission, 1937) 
 MisResultAction (SetRecord, 1937) 
 MisResultAction (AddMoney, 2000) 
 
 MisResultAction (AddExpRealPer2, 0.2) ---------------------- experience a 10% incentive 
 
 MisResultAction (GiveNpcMissionbyFunc, "branch size 1") 
 
 ---------------------------------- Main line tasks: The first thing to buy equipment ()------------------------------------------ risk--takers 
 DefineMission (6756, "The first thing to buy equipment", 1938) 
 
 MisBeginTalk ( "<t> likelihood that you have found me, before the 2000 award to you of silver, then buy something in my equipment right here!") 
 MisBeginCondition (NoChaType, 2) 
 MisBeginCondition (HasRecord, 1937) 
 MisBeginCondition (NoRecord, 1928) 
 MisBeginCondition (NoMission, 1938) 
 MisBeginAction (AddMission, 1938) 
 MisBeginAction (AddTrigger, 19381, TE_GETITEM, 0511, 1) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "in <r???> purchase <j?????·??(2265,2704)> the <b???>!") 
 MisHelpTalk ( "<t> I tell you now how to buy equipment, selection of trading prop trading after the page, select what you want to buy the props, hold the left mouse button pressed drag the backpack you can buy!") 
 
 MisNeed (MIS_NEED_ITEM, 0511, 1, 10, 1) 
 
 MisResultTalk ( "<t> It seems that you still quite promising, so soon learned!") 
 
 MisResultCondition (NoRecord, 1938) 
 MisResultCondition (HasMission, 1938) 
 MisResultCondition (HasItemShouTao, 0511) 
 MisResultAction (ClearMission, 1938) 
 MisResultAction (SetRecord, 1928) 
 MisResultAction (AddExpRealPer2, 0.4) ---------------------- experience 40 percent incentive 
 MisResultAction (GiveNpcMission1, 6749) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 0511) 
 TriggerAction (1, AddNextFlag, 1938, 10, 1) 
 RegCurTrigger (19381) 
 
 
 ---------------------------------- Main line tasks: to find clothing shop owner ()------------------------------------------ Pharmacist 
 DefineMission (6746, "to find clothing shop owner", 1932) 
 
 MisBeginTalk ( "<t> role to improve people's ability to not only relying on the properties of points and skills, as well as the key point is the equipment in the game equipped with clothing, gloves, boots, helmets, necklaces, rings, props and equipment after People will be able to enhance the ability of equipment to enhance the capacity of the higher grade will be higher, Pharmacist, Department of Occupational and equipment in the <b???> buy <j????·??(894,3602)> ! ") 
 
 MisBeginCondition (PfEqual1, 5) 
 MisBeginCondition (HasRecord, 1926) 
 MisBeginCondition (NoRecord, 1932) 
 MisBeginCondition (NoMission, 1932) 
 MisBeginAction (AddMission, 1932) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "to find the <b???> task <j????·??(894,3602)> receive your reward!") 
 MisHelpTalk ( "<t>???<b???> incentives of the task <j????·??(894,3602)> receive it!") 
 
 MisResultCondition (AlwaysFailure) 
 ---------------------------------- Main line tasks: to find clothing shop owner ()------------------------------------------ Pharmacist 
 DefineMission (6747, "to find clothing shop owner", 1932, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> after the pharmacist to purchase the equipment department can come to me, I am here also after the sale of two of the Seal to the Department and the equipment???!") 
 MisResultCondition (NoRecord, 1932) 
 MisResultCondition (HasMission, 1932) 
 MisResultAction (ClearMission, 1932) 
 MisResultAction (SetRecord, 1932) 
 MisResultAction (AddMoney, 2000) 
 
 MisResultAction (AddExpRealPer2, 0.2) ---------------------- experience a 10% incentive 
 
 MisResultAction (GiveNpcMissionbyFunc, "Occupational branch 2") 
 
 ---------------------------------- Main line tasks: The first thing to buy equipment ()------------------------------------------ Pharmacist 
 DefineMission (6748, "The first thing to buy equipment", 1933) 
 
 MisBeginTalk ( "<t> likelihood that you have found me, before the 2000 award to you of silver, then buy something in my equipment right here!") 
 MisBeginCondition (CheckChaTypeID, 3) 
 MisBeginCondition (HasRecord, 1932) 
 MisBeginCondition (NoRecord, 1928) 
 MisBeginCondition (NoMission, 1933) 
 MisBeginAction (AddMission, 1933) 
 MisBeginAction (AddTrigger, 19331, TE_GETITEM, 0541, 1) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "in <r????> purchase <j????·??(894,3602)> the <b???>!") 
 MisHelpTalk ( "<t> I tell you now how to buy equipment, selection of trading prop trading after the page, select what you want to buy the props, hold the left mouse button pressed drag the backpack you can buy!") 
 
 MisNeed (MIS_NEED_ITEM, 0541, 1, 10, 1) 
 
 MisResultTalk ( "<t> It seems that you still quite promising, so soon learned!") 
 
 MisResultCondition (NoRecord, 1933) 
 MisResultCondition (HasMission, 1933) 
 MisResultCondition (HasItemShouTao, 0541) 
 MisResultAction (ClearMission, 1933) 
 MisResultAction (SetRecord, 1928) 
 MisResultAction (AddExpRealPer2, 0.4) ---------------------- experience 40 percent incentive 
 
 MisResultAction (GiveNpcMission1, 6749) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 0541) 
 TriggerAction (1, AddNextFlag, 1933, 10, 1) 
 RegCurTrigger (19331) 
 
 
 ---------------------------------- Search -------------------------------------- grocer who 
 DefineMission (6749, "grocer to find people", 1934) 
 
 MisBeginTalk ( "<t> young people, you may now have to move out of cities, out of the adventure. But lost out after the if, it would waste a lot of time Oh. <b????> It to take a look at it, they can help you Oh. every city grocer who are, if you do not know what they are and where they are, you can open the NPC by <rALT+Z> can find a list. If you can not find, then to Silver City <j grocer who Jeep Li (2232,2729)> look at it. ") 
 MisBeginCondition (HasRecord, 1928) 
 MisBeginCondition (NoRecord, 1934) 
 MisBeginCondition (NoMission, 1934) 
 MisBeginAction (AddMission, 1934) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 MisNeed (MIS_NEED_DESP, "people find a grocer. Tip: <j????·???(2232,2729)> the <b???>.") 
 MisHelpTalk ( "<t>???<b???> the <j????·???(2232,2729)>, he will give you unexpected rewards!") 
 
 MisResultCondition (AlwaysFailure) 
 -------------------------------- -------------------------------------- Were looking for grocer 
 DefineMission (6750, "looking for people grocer", 1934, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> how young people have the will to fight, ah, can take the risk out of the ah, and equipment are put on it? Weapons with it? Ah, there are the same thing happen to prepare you??.") 
 MisResultCondition (NoRecord, 1934) 
 MisResultCondition (HasMission, 1934) 
 MisResultAction (ClearMission, 1934) 
 MisResultAction (SetRecord, 1934) 
 MisResultAction (AddExpRealPer2, 0.2) 
 
 MisResultAction (GiveNpcMission1, 6751) 
 --To prepare for the adventure -------------------------------------------- ------------------------------------------------ ---------------------- 
 
 DefineMission (6751, "to prepare for the adventure", 1935) 
 
 MisBeginTalk ( "<t> pirate king has a magic item called the ticket. If you use it, then it will direct you to a fixed location. Well, as a clothing store to introduce the guest, are you from I am here to buy a old ticket, the money to buy things I will give you. ") 
 MisBeginCondition (HasRecord, 1934) 
 MisBeginCondition (NoRecord, 1935) 
 MisBeginCondition (NoMission, 1935) 
 MisBeginAction (AddMission, 1935) 
 MisBeginAction (AddTrigger, 19351, TE_GETITEM, 3141, 1) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 MisNeed (MIS_NEED_DESP, "where to buy from a grocer <r?????>.") 
 MisNeed (MIS_NEED_ITEM, 3141, 1, 10, 1) 
 MisHelpTalk ( "<t> here to buy one of my old ticket, take the risk out of time Oh there will be a great help!") 
 MisResultTalk ( "<t> <r?????> can take you back to your resurrection point oh.") 
 MisResultCondition (HasItem, 3141,1) 
 MisResultCondition (NoRecord, 1935) 
 MisResultCondition (HasMission, 1935) 
 MisResultAction (ClearMission, 1935) 
 MisResultAction (AddMoney, 500) 
 MisResultAction (SetRecord, 1935) 
 MisResultAction (AddExpRealPer2, 0.3) 
 
 MisResultAction (GiveNpcMission1, 6752) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 3141) 
 TriggerAction (1, AddNextFlag, 1935, 10, 1) 
 RegCurTrigger (19351) 
 
 --Out of the city ------------------------------------------------------ -------------------------------------------- ---------------- 
 DefineMission (6752, "the city", 1936) 
 
 MisBeginTalk ( "<t> Well, now a well--prepared, in order to own your dream to take the risk. In the wild in various parts of the depot, there are many people who provide some services there. I suggest that you go under the abandoned mine look at the depot, if I may, on behalf of the <r?????> I went to say hello <j???(1883,2805)>. In addition, you can send in the <b???> so quickly reach the waste mine depot. ") 
 MisBeginCondition (HasRecord, 1935) 
 MisBeginCondition (NoRecord, 1936) 
 MisBeginCondition (NoMission, 1936) 
 MisBeginAction (AddMission, 1936) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 MisNeed (MIS_NEED_DESP, "instead of the grocer who <j???(1883,2805)> to say hello <r?????>..") 
 
 MisHelpTalk ( "<t> find it <j???(1883,2805)> the <b?????>, he will give you help.") 
 MisResultCondition (AlwaysFailure) 
 --Out of the city ---------------------------------------- -------------------------- 
 DefineMission (6753, "the City", 1936, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> Thank you so much, risk--takers. This is the abandoned mine depot, If you want to rest can come here, oh.") 
 MisResultCondition (NoRecord, 1936) 
 MisResultCondition (HasMission, 1936) 
 MisResultAction (ClearMission, 1936) 
 MisResultAction (SetRecord, 1936) 
 MisResultAction (AddExpRealPer2, 0.2) 
 
 MisResultAction (GiveNpcMission1, 6760) 
 
 ---------------------------------- Main line tasks: The first thing to buy equipment (Pharmacist -- Amy )------------------------------------ ------ 
 DefineMission (6757, "The first thing to buy equipment", 1939) 
 
 MisBeginTalk ( "<t> likelihood that you have found me, before the 2000 award to you of silver, then buy something in my equipment right here!") 
 MisBeginCondition (CheckChaTypeID, 4) 
 MisBeginCondition (HasRecord, 1932) 
 MisBeginCondition (NoRecord, 1928) 
 MisBeginCondition (NoMission, 1939) 
 MisBeginAction (AddMission, 1939) 
 MisBeginAction (AddTrigger, 19391, TE_GETITEM, 0559, 1) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "in the <b???> the purchase of a small goat <j????·??(894,3602)> gloves!") 
 MisHelpTalk ( "<t> I tell you now how to buy equipment, selection of trading prop trading after the page, select what you want to buy the props, hold the left mouse button pressed drag the backpack you can buy!") 
 
 MisNeed (MIS_NEED_ITEM, 0559, 1, 10, 1) 
 
 MisResultTalk ( "<t> It seems that you still quite promising, so soon learned!") 
 
 MisResultCondition (NoRecord, 1939) 
 MisResultCondition (HasMission, 1939) 
 MisResultCondition (HasItemShouTao, 0559) 
 MisResultAction (ClearMission, 1939) 
 MisResultAction (SetRecord, 1928) 
 MisResultAction (AddExpRealPer2, 0.4) ---------------------- experience 40 percent incentive 
 
 MisResultAction (GiveNpcMission1, 6749) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 0559) 
 TriggerAction (1, AddNextFlag, 1939, 10, 1) 
 RegCurTrigger (19391) 
 --Turning point in life -------------------------------------------------------------------------- 
 DefineMission (6758, "the turning point in life", 1940) 
 
 MisBeginTalk ( "<t> you grow up really fast, it is time we introduced the pirate king of the career for you. Pirate King a total of 4 Department of the initial occupation, were hunters University, Jianshi University, pharmacists University, Department adventure. If To try to understand the words under the occupation, click to view <b(ALT+H)> career help. If the decision is good, you can come to my acceptance of the inaugural mission guidelines. inauguration, the professional instructors will guide you in the course of pirate king . ") 
 MisBeginCondition (LvCheck, ">", 8) 
 MisBeginCondition (NoRecord, 1940) 
 MisBeginCondition (NoMission, 1940) 
 MisBeginAction (AddMission, 1940) 
 MisCancelAction (ClearMission, 1940) 
 MisNeed (MIS_NEED_DESP, "Let go of choice of occupation, the history of pirates Wang began, after the completion of <r??> receive <r???????> find their own rewards.") 
 MisHelpTalk ( "<t> as long as you reach the level of 10, you will be able to choose your career.") 
 MisResultCondition (AlwaysFailure) 
 --Turning point in life -------------------------------------------------------------------------- 
 DefineMission (6759, "the turning point in life", 1940, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Now you no longer a novice, and to explore the pirate king of the world now.") 
 MisResultCondition (CheckJobIsNew) 
 MisResultCondition (NoRecord, 1940) 
 MisResultCondition (HasMission, 1940) 
 MisResultAction (ClearMission, 1940) 
 MisResultAction (SetRecord, 1940) 
 MisResultAction (AddExpRealPer2, 0.4) 
 
 MisResultAction (GiveNpcMission1, 6735) 
 
 ------------ 
 
 ---------------------------- Main line tasks: to enhance the strength -------------------------------------- 
 DefineMission (6760, "to enhance strength", 1941) 
 
 MisBeginTalk ( "<t> you are now your life has reached the first depot which, from now on you are ready to begin his adventure, so you have to constantly enhance the strength of your own to find <b????> The <j????·??(1889,2804)>, he will tell you how to increase their own strength! ") 
 MisBeginCondition (HasRecord, 1936) 
 MisBeginCondition (NoRecord, 1941) 
 MisBeginCondition (NoMission, 1941) 
 MisBeginAction (AddMission, 1941) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "the <b????> find <j????·??(1889,2804)>!") 
 
 MisHelpTalk ( "<t> <j????·??(1889,2804)> on <r?????>???find it.") 
 
 MisResultCondition (AlwaysFailure) 
 
 -------------------------------- Main line tasks: to enhance the strength ---------------------- 
 DefineMission (6761, "to enhance strength", 1941) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> depot abandoned mine I was the jewelry business, you can buy me jewelry you need, oh.") 
 MisResultCondition (NoRecord, 1941) 
 MisResultCondition (HasMission, 1941) 
 MisResultAction (ClearMission, 1941) 
 MisResultAction (SetRecord, 1941) 
 MisResultAction (AddExpRealPer2, 0.3) 
 
 MisResultAction (GiveNpcMission1, 6762) 
 
 ---------------------------- Main line tasks: to enhance the strength -------------------------------------- 
 DefineMission (6762, "enhance the strength of the Second", 1942) 
 
 MisBeginTalk ( "<t> each depot sale of the jewelry business has a wide range of jewelry, you can buy based on your needs, different accessories will increase the different attributes, such as: attack power, defense power, hit, etc. some of the more commonly used attributes Oh! ") 
 MisBeginCondition (HasRecord, 1941) 
 MisBeginCondition (NoRecord, 1942) 
 MisBeginCondition (NoMission, 1942) 
 MisBeginAction (AddMission, 1942) 
 MisBeginAction (AddMoney, 8000,8000) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "in <b????> buy a <j????·??(1889,2804)> the <r??>!") 
 MisHelpTalk ( "<t> to you with my silver jewelry to buy a bar, and equipment found in your strength after your upgrade will be obvious!") 
 MisResultTalk ( "<t> Yes, it seems you already know the role of the accessories and equipment on the go, you will have the ability to a qualitative breakthrough!") 
 
 MisResultCondition (HasBagJieZhi) 
 MisResultCondition (NoRecord, 1942) 
 MisResultCondition (HasMission, 1942) 
 MisResultAction (ClearMission, 1942) 
 MisResultAction (SetRecord, 1942) 
 MisResultAction (AddExpRealPer2, 0.3) 
 
 MisResultAction (GiveNpcMissionbyFunc, "Occupational branch 3") 
 
 
 ---------------------------- Main line tasks: hunting armored crab -------------------------------- 
 DefineMission (6763, "hunting armor crab", 1943) 
 
 MisBeginTalk ( "<t> you have received from me by your own need for the jewelry, and your ability has improved. Jianshi your career, hunting for low blood high attack monsters, it is easier to hunt them! ") 
 MisBeginCondition (PfEqual1, 1) 
 MisBeginCondition (HasRecord, 1942) 
 MisBeginCondition (NoRecord, 1943) 
 MisBeginCondition (NoMission, 1943) 
 MisBeginAction (AddMission, 1943) 
 MisBeginAction (AddTrigger, 19431, TE_KILL, 31, 10) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 MisNeed (MIS_NEED_KILL, 31, 10, 10, 10) 
 
 MisNeed (MIS_NEED_DESP, "the <j????(1766,2536)> to <b???> near 10 <r???> hunting, and then find <b????> of <j jewelry business Bukavu ( 1889,2804)> to receive reward! ") 
 MisHelpTalk ( "<t> a person can not complete you, you can find some friends to help you complete the task!") 
 MisResultTalk ( "<t> It seems that you pretty good, so soon to complete the task, and after many more adventures waiting for you Oh task!") 
 
 MisResultCondition (NoRecord, 1943) 
 MisResultCondition (HasMission, 1943) 
 MisResultCondition (HasFlag, 1943, 19) 
 MisResultAction (ClearMission, 1943) 
 MisResultAction (SetRecord, 1943) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6767) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 31) 
 TriggerAction (1, AddNextFlag, 1943, 10, 10) 
 RegCurTrigger (19431) 
 
 ---------------------------- Main line tasks: hunting goats brutal -------------------------------- 
 DefineMission (6764, "the brutal hunting goats", 1944) 
 
 MisBeginTalk ( "<t> you have received from me by your own need for the jewelry, and your ability has improved. Your career as a hunter for hunting slow moving speed, hit a low of monster hunting before it easier ! ") 
 MisBeginCondition (PfEqual1, 2) 
 MisBeginCondition (HasRecord, 1942) 
 MisBeginCondition (NoRecord, 1943) 
 MisBeginCondition (NoMission, 1944) 
 MisBeginAction (AddMission, 1944) 
 MisBeginAction (AddTrigger, 19441, TE_KILL, 126, 10) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 MisNeed (MIS_NEED_KILL, 126, 10, 10, 10) 
 
 MisNeed (MIS_NEED_DESP, "the <j????(1972,2683)> to <b???> near 10 <r????> hunting, and then find <b????> of <j jewelry business Bukavu ( 1889,2804)> to receive reward! ") 
 MisHelpTalk ( "<t> a person can not complete you, you can find some friends to help you complete the task!") 
 MisResultTalk ( "<t> It seems that you pretty good, so soon to complete the task, and after many more adventures waiting for you Oh task!") 
 
 MisResultCondition (NoRecord, 1944) 
 MisResultCondition (HasMission, 1944) 
 MisResultCondition (HasFlag, 1944, 19) 
 MisResultAction (ClearMission, 1944) 
 MisResultAction (SetRecord, 1943) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6767) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 126) 
 TriggerAction (1, AddNextFlag, 1944, 10, 10) 
 RegCurTrigger (19441) 
 
 
 
 ---------------------------- Main line tasks: hunting guard crab -- ()------------------------------ adventure 
 DefineMission (6765, "guard crab hunting", 1945) 
 
 MisBeginTalk ( "<t> you have received from me by your own need for the jewelry, and your ability has improved. Your career to take the risk for low blood volume monsters hunting, hunting with only relatively easy!") 
 MisBeginCondition (PfEqual1, 4) 
 MisBeginCondition (HasRecord, 1942) 
 MisBeginCondition (NoRecord, 1943) 
 MisBeginCondition (NoMission, 1945) 
 MisBeginAction (AddMission, 1945) 
 MisBeginAction (AddTrigger, 19451, TE_KILL, 227, 10) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 MisNeed (MIS_NEED_KILL, 227, 10, 10, 10) 
 
 MisNeed (MIS_NEED_DESP, "the <j????(1784,2508)> to <b???> near 10 <r???> hunting, and then find <b????> of <j jewelry business Bukavu ( 1889,2804)> to receive reward! ") 
 MisHelpTalk ( "<t> a person can not complete you, you can find some friends to help you complete the task!") 
 MisResultTalk ( "<t> It seems that you pretty good, so soon to complete the task, and after many more adventures waiting for you Oh task!") 
 
  MisResultCondition (NoRecord, 1945) 
 MisResultCondition (HasMission, 1945) 
 MisResultCondition (HasFlag, 1945, 19) 
 MisResultAction (ClearMission, 1945) 
 MisResultAction (SetRecord, 1943) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6767) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 227) 
 TriggerAction (1, AddNextFlag, 1945, 10, 10) 
 RegCurTrigger (19451) 

 ---------------------------- Main line tasks: hunting guard crab -- (Pharmacist )------------------------------ 
 DefineMission (6766, "guard crab hunting", 1946) 
 
 MisBeginTalk ( "<t> you have received from me by your own need for the jewelry, and your ability has improved. Your career as a pharmacist for low blood volume monsters hunting, hunting with only relatively easy!" ) 
 MisBeginCondition (PfEqual1, 5) 
 MisBeginCondition (HasRecord, 1942) 
 MisBeginCondition (NoRecord, 1943) 
 MisBeginCondition (NoMission, 1946) 
 MisBeginAction (AddMission, 1946) 
 MisBeginAction (AddTrigger, 19461, TE_KILL, 227, 10) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 MisNeed (MIS_NEED_KILL, 227, 10, 10, 10) 
 
 MisNeed (MIS_NEED_DESP, "the <j????(1784,2508)> to <b????> near 10 <r???> hunting, and then find <b???> of <j jewelry business Bukavu ( 1889,2804)> to receive reward! ") 
 MisHelpTalk ( "<t> a person can not complete you, you can find some friends to help you complete the task!") 
 MisResultTalk ( "<t> It seems that you pretty good, so soon to complete the task, and after many more adventures waiting for you Oh task!") 
 
 MisResultCondition (NoRecord, 1946) 
 MisResultCondition (HasMission, 1946) 
 MisResultCondition (HasFlag, 1946, 19) 
 MisResultAction (ClearMission, 1946) 
 MisResultAction (SetRecord, 1943) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6767) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 227) 
 TriggerAction (1, AddNextFlag, 1946, 10, 10) 
 RegCurTrigger (19461) 
 
 
 ---------------------------- Main line tasks: bank cashier ------------------------------ 
 DefineMission (6767, "bank cashier", 1947) 
 
 MisBeginTalk ( "<t> not feel that you are not your backpack used? Is not some of the props do not need no place to store it? Ha ha, it appears that you have found, in the pirate king of the world, there are banks, the feature that does not need the props will be temporarily stored into the bank, oh! ") 
 MisBeginCondition (HasRecord, 1943) 
 MisBeginCondition (NoRecord, 1947) 
 MisBeginCondition (NoMission, 1947) 
 MisBeginAction (AddMission, 1947) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "the <b???> find <j????·???(2220,2704)>!") 
 MisHelpTalk ( "<t> to find a bank cashier, and he will tell you some useful information, oh!") 
 
 MisResultCondition (AlwaysFailure) 
 
 -------------------------------- Main line tasks: bank cashier ---------------------- 
 DefineMission (6768, "bank cashier", 1947, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> I am a bank teller Silver City, if you have the time being less than the existence of the props can be Oh me, not only in silver city bank cashier, in other towns have, you can use at any time!" ) 
 MisResultCondition (NoRecord, 1947) 
 MisResultCondition (HasMission, 1947) 
 MisResultAction (ClearMission, 1947) 
 MisResultAction (SetRecord, 1947) 
 MisResultAction (AddExpRealPer2, 0.3) 
 
 MisResultAction (GiveNpcMission1, 6769) 
 
 
 ---------------------------- Main line tasks: the first records of bank ---------------------------- 
 DefineMission (6769, "the first records of bank", 1948) 
 
 MisBeginTalk ( "<t> you may have a number of unnecessary props on the body, you will find these props also account for the impact of your backpack, you can backpack in less than props temporarily stored in I Oh, here! ") 
 MisBeginCondition (HasRecord, 1947) 
 MisBeginCondition (NoRecord, 1948) 
 MisBeginCondition (NoMission, 1948) 
 MisBeginAction (AddMission, 1948) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "will be deposited into the backpack of <r?????????> to the bank, particularly when no shadow cloak, so long as to reach level 20 can complete the task!") 
 MisHelpTalk ( "<t> bank each time you open the silver 200 Oh, open the bank's interface, you simply have to put your props go to live with the mouse point into the bank can, oh!") 
 MisResultTalk ( "<t> ex, yes, so soon learned that if the future need for help even though came to me where, oh!") 
 
 MisResultCondition (CheckBankItemOrLv, 6020,1) 
 MisResultCondition (NoRecord, 1948) 
 MisResultCondition (HasMission, 1948) 
 MisResultAction (ClearMission, 1948) 
 MisResultAction (SetRecord, 1948) 
 MisResultAction (AddExpRealPer2, 0.3) 
 
 MisResultAction (GiveNpcMission1, 6770) 
 
 
 ---------------------------- Main line tasks: the mysterious diviner ------------------------------ 
 DefineMission (6770, "the mysterious diviner", 1949) 
 
 MisBeginTalk ( "<t> pirate king in the world, there is a mysterious figure, he can for everyone to fortune telling, divination to decide if the fate of the day Oh, you!") 
 MisBeginCondition (HasRecord, 1948) 
 MisBeginCondition (NoRecord, 1949) 
 MisBeginCondition (NoMission, 1949) 
 MisBeginAction (AddMission, 1949) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t> the <b???> find <j??????(2218,2782)>!") 
 MisHelpTalk ( "<t> <r??????> may bring good luck will give you Oh,???him!") 
 
 MisResultCondition (AlwaysFailure) 
 
 -------------------------------- Main line tasks: the mysterious diviner ---------------------- 
 DefineMission (6771, "the mysterious diviner", 1949, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> Oh? See you know what you look like on the sample is new, does not recognize me?") 
 MisResultCondition (NoRecord, 1949) 
 MisResultCondition (HasMission, 1949) 
 MisResultAction (ClearMission, 1949) 
 MisResultAction (SetRecord, 1949) 
 MisResultAction (AddExpRealPer2, 0.3) 
 
 MisResultAction (GiveNpcMission1, 6772) 
 
 
 ---------------------------- Main line tasks: the first divination ---------------------------- 
 DefineMission (6772, "the first divination", 1950) 
 
 MisBeginTalk ( "<t> magic of the day, the fate of the day, you are ready to accept the fate of the decision--making it?") 
 MisBeginCondition (HasRecord, 1949) 
 MisBeginCondition (NoRecord, 1950) 
 MisBeginCondition (NoMission, 1950) 
 MisBeginAction (AddMission, 1950) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "in the <b???> divination <j??????(2218,2782)> here again!") 
 MisHelpTalk ( "<t> each person every day to free fortune once, as long as you here today I have a fortune to be able to receive the award!") 
 MisResultTalk ( "<t> each day to a total of six divination, the first is free, after the five need a certain amount of reward you, oh!") 
 
 MisResultCondition (CheckZBNowState) 
 MisResultCondition (NoRecord, 1950) 
 MisResultCondition (HasMission, 1950) 
 MisResultAction (ClearMission, 1950) 
 MisResultAction (SetRecord, 1950) 
 MisResultAction (AddExpRealPer2, 0.3) 
 
 MisResultAction (GiveNpcMission1, 6773) 
 ---------------------------- Main line tasks: the fate of nameless ---------------------------- 
 DefineMission (6773, "sense of destiny", 1951) 
 
 MisBeginTalk ( "<t> Kazakhstan, fortune telling, I have a message to another. Your professional assistant instructors who are looking for you. To the assistant professional instructors, see what you. I can assure you that it is a good thing, ha ha." ) 
 MisBeginCondition (HasRecord, 1950) 
 MisBeginCondition (NoRecord, 1951) 
 MisBeginCondition (NoMission, 1951) 
 MisBeginAction (AddMission, 1951) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 MisResultCondition (AlwaysFailure) 
 MisNeed (MIS_NEED_DESP, "assistant professional instructors in the vocational instructor next to go find him!") 
 MisHelpTalk ( "<t> career assistant instructors in the vocational instructor beside, it can not be found by pressing ALT + Z, then the use of automatic routing.") 
 ---------------------------- Main line tasks: the fate of nameless ---------------------------- 
 DefineMission (6774, "sense of destiny", 1951) 
 MisResultTalk ( "<t> I was looking for you, now just get a reward you for distribution. However, the views of instructors is based on the learning ability of your reward. So now go through the training of an emergency.") 
 MisBeginCondition (AlwaysFailure) 
 MisResultCondition (NoRecord, 1951) 
 MisResultCondition (HasMission, 1951) 
 MisResultAction (ClearMission, 1951) 
 MisResultAction (SetRecord, 1951) 
 MisResultAction (AddExpRealPer2, 0.2) 
 
 MisResultAction (GiveNpcMission1, 6775) 
 -------------------------------------------------------------- Emergency training 
 DefineMission (6775, "Emergency Training", 1952) 
 
 MisBeginTalk ( "<t> better To give you an adventure in the pirate king, and now an urgent need for training. The training of three oral training, once the final exam. Examination scores if not satisfied, you can re--examination. Examination After you score based on the award to you. In addition, if you do not understand, you want to re--oral training, you can cancel the task. ") 
 MisBeginCondition (HasRecord, 1951) 
 MisBeginCondition (NoRecord, 1952) 
 MisBeginCondition (NoMission, 1952) 
 MisBeginAction (AddMission, 1952) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 MisNeed (MIS_NEED_DESP, "familiar with the training and examination, be familiar with after the dialogue and the instructor's assistant.") 
 MisHelpTalk ( "<t> understanding of some basic knowledge is good for you.") 
 MisResultTalk ( "<t> If you are familiar with the training and testing, then we go on.") 
 MisResultCondition (NoRecord, 1952) 
 MisResultCondition (HasMission, 1952) 
 MisResultAction (ClearMission, 1952) 
 MisResultAction (SetRecord, 1952) 
 MisResultAction (AddExpRealPer2, 0.1) 
 
 MisResultAction (GiveNpcMission1, 6776) 
 ------------------------------ The first training 
 DefineMission (6776, "the first training", 1953) 
 
 MisBeginTalk ( "the first training to expand knowledge of the properties. <n> <t> Character attributes are divided into the basic properties of the main properties and expansion. The direct impact of the fighting to expand the property. <n> <t> Higher damage, you can played in an attack in the higher physical harm. <n> <t> bigger hit, others you have a physical attack smaller miss chance. <n> <t> higher defense, others physical harm to you lower. <n> <t> avoid higher, others have physical attacks miss the greater the probability. <n> <t>??reach 210 before??higher within a certain period of time in physics the more the number of attacks, but after this value reached 210, and 210 the same effect. <n> <t> physical resistance is offset by the physical injury in accordance with the percentage of a value, when it is time for the 20, it can offset 20% of physical harm . ") 
 MisBeginCondition (NoRecord, 1953) 
 MisBeginCondition (HasRecord, 1952) 
 MisBeginCondition (NoMission, 1953) 
 MisBeginAction (AddMission, 1953) 
 MisCancelAction (ClearMission, 1953) 
 MisNeed (MIS_NEED_DESP, "read the first training knowledge, familiar with after the completion of the task!") 
 MisHelpTalk ( "<t> understanding of some basic knowledge is good for you.") 
 MisResultTalk ( "<t> If you are familiar with the first training, then we started training it the second time.") 
 MisResultCondition (NoRecord, 1953) 
 MisResultCondition (HasMission, 1953) 
 MisResultAction (ClearMission, 1953) 
 MisResultAction (SetRecord, 1953) 
 MisResultAction (AddExpRealPer2, 0.1) 
 
 MisResultAction (GiveNpcMission1, 6777) 
 ------------------------------ The second training 
 DefineMission (6777, "the second time training", 1954) 
 
 MisBeginTalk ( "the second time the fundamental attributes of training knowledge. <n> <t> The impact of the fundamental attributes of the characters of the extended character attributes and skills of some harm. <n> <t> Forces close combat weapons and equipment and empty--handed at the time of injury. <n> <t> quick impact in the extended attributes??and dodge. <n> <t> physical impact on defense, the biggest HP, HP restore speed. <n> <t> the spirit of most SP, SP recovery rate, as well as hurt the most magic skills. <n> <t> focus on the impact of hitting long--range weapons and equipment at the time of injury. <n> <t> when people raise the level of attributes and skills can get points. attribute is used to increase the basic attributes, skills points to upgrade their skills level and learning new skills. <n> <t> fundamental attributes of the characters in multiples of 5, the corresponding extended attributes are a major improvement. <n> <t> level figures multiples of 10, the corresponding attribute points will be more than 4:00. ") 
 MisBeginCondition (NoRecord, 1954) 
 MisBeginCondition (HasRecord, 1953) 
 MisBeginCondition (NoMission, 1954) 
 MisBeginAction (AddMission, 1954) 
 MisCancelAction (ClearMission, 1954) 
 MisCancelAction (ClearRecord, 1953) 
 MisNeed (MIS_NEED_DESP, "read the second time the training knowledge, familiar with after the completion of the task!") 
 MisHelpTalk ( "<t> understanding of some basic knowledge is good for you.") 
 MisResultTalk ( "<t> If you are familiar with the training of a second, then we started training for the third time now.") 
 MisResultCondition (NoRecord, 1954) 
 MisResultCondition (HasMission, 1954) 
 MisResultAction (ClearMission, 1954) 
 MisResultAction (SetRecord, 1954) 
 MisResultAction (AddExpRealPer2, 0.1) 
 
 MisResultAction (GiveNpcMission1, 6778) 
 ------------------------ The third training 
 DefineMission (6778, "the third time training", 1955) 
 
 MisBeginTalk ( "the third time the knowledge skills training. <n> <t> People skills acquisition through the purchase of books of skills, vocational skills and career books in the grocer can buy instructors Department. <n> <t> Learning a vocational skills needed to fulfill the following conditions. <n> <t> First, vocational skills book indicate if there is occupation, only that the skills can learn the profession. <n> <t> Second, if the note book vocational skills there are pre--skills. then you need to learn the appropriate skills pre--grades can begin to learn the skills <n> <t> Third, you have to have a skill point. <n> <t> skill points point of access to and attributes like skill point level to enhance access to more than <n> <t> vocational skills, but also a skill called life skills. life skills is through the skills to accomplish its historic mission to acquire, and vocational skills that do not conflict each other. ") 
 MisBeginCondition (NoRecord, 1955) 
 MisBeginCondition (HasRecord, 1954) 
 MisBeginCondition (NoMission, 1955) 
 MisBeginAction (AddMission, 1955) 
 MisCancelAction (ClearMission, 1955) 
 MisCancelAction (ClearRecord, 1953) 
 MisCancelAction (ClearRecord, 1954) 
 MisNeed (MIS_NEED_DESP, "the third time the knowledge of training skills, be familiar with after the completion of the task!") 
 MisHelpTalk ( "<t> understanding of some basic knowledge is good for you.") 
 MisResultTalk ( "<t> If you are familiar with the training of the third, then we began to test it.") 
 MisResultCondition (NoRecord, 1955) 
 MisResultCondition (HasMission, 1955) 
 MisResultAction (ClearMission, 1955) 
 MisResultAction (SetRecord, 1955) 
 
 MisResultAction (GiveNpcMission1, 6779) 
 ------------------------ Examination 
 DefineMission (6779, "Examination", 1956) 
 
 MisBeginTalk ( "<t> finished training, and my dialogue. I want to test Click to enter the examination. The final decision of the scores of awards you can get. If you need further training, then to cancel the task. To re--access, the first training task. If the test finished, the scores are not satisfied with the examination again. If it is determined that the last test scores is that you need, then to complete the task bar.") 
 MisBeginCondition (NoRecord, 1956) 
 MisBeginCondition (HasRecord, 1955) 
 MisBeginCondition (NoMission, 1956) 
 MisBeginAction (AddMission, 1956) 
 MisCancelAction (ClearMission, 1956) 
 MisCancelAction (ClearRecord, 1953) 
 MisCancelAction (ClearRecord, 1954) 
 MisCancelAction (ClearRecord, 1955) 
 MisNeed (MIS_NEED_DESP, "click I want to test, an examination to obtain scores.") 
 MisHelpTalk ( "<t> you at least answer a question, oh.") 
 MisResultTalk ( "<t> Oh well! Learned so quickly, before you complete the task, I first talk about incentive standard bar, so you say that I am eccentric. <n> Less than 60 points: about the experience of about 10W . <n> more than 60 points: an additional 20 minutes of double time. <n> more than 70 hours: 20 gloves attached. <n> more than 80 points: an additional 20 shoes. <n> more than 90 points: an additional 20 ring. <n> to reach 100 points: 20 additional necklace! ") 
 MisResultCondition (CheckXXBYPoint ,">", 0) 
 MisResultCondition (NoRecord, 1956) 
 MisResultCondition (HasMission, 1956) 
 MisResultAction (ClearMission, 1956) 
 MisResultAction (SetRecord, 1956) 
 MisResultAction (AddExpRealPer2, 1.2) 
 MisResultAction (GiveXXBYRewards) 
 MisResultBagNeed (4) 
 MisResultAction (GiveNpcMissionbyFunc, "Occupational branch 4") 
 
 
 -------------- Experience (Lee pyronaridine Gurirab )------------------ 
 DefineMission (6780, "The experience Gurirab depot pyronaridine Lee", 1957) 
 MisBeginTalk ( "<t> you have mastered the knowledge of many of the pirate king, so you can now carry out further risk--taking task, you can present the strength of the <b????> to <r???????>, You can send <j?????·??(2187,2776)> through the <b???> to <r???????>, so more to save time. ") 
 MisBeginCondition (LvCheck, "<", 30) 
 MisBeginCondition (HasRecord, 1956) 
 MisBeginCondition (NoMission, 1959) 
 MisBeginCondition (NoMission, 1957) 
 MisBeginCondition (NoMission, 1958) 
 MisBeginAction (AddMission, 1957) 
 MisCancelAction (ClearMission, 1957) 
 MisNeed (MIS_NEED_DESP, "completed in the Department mandates <r???????> Medal, and then came to their career assistant instructors to receive the task reward! Medals more rewarding the experience gained in the more total number of medals You can get five or more grades of the current <r??> Oh! if you are to me all of a sudden 13 medals, I will reward you with a title of <r??> Oh! ") 
 MisHelpTalk ( "<t> at least be able to obtain a reward <r??????> Oh!") 
 MisResultTalk ( "<t> good, so soon to get a medal, in accordance with the agreement before it is rewarding to you, please Collect!") 
 MisResultCondition (HasItem, 6709, 1) 
 MisResultCondition (HasMission, 1957) 
 MisResultAction (ClearMission, 1957) 
 MisResultAction (SetRecord, 1957) 
 MisResultAction (BLGLPrize) 
 MisResultBagNeed (4) 
 MisResultAction (GiveNpcMissionbyFunc, "Occupational branch 5") 
 
 -------------- Experience (Babu depot )------------------ 
 DefineMission (6781, "Babu experience of filling stations", 1958) 
 MisBeginTalk ( "<t> you have mastered the knowledge of many of the pirate king, so you can now carry out further risk--taking task, you can present the strength of the <b????> to <r?????>, You can send <j?????·??(2187,2776)> through the <b???> to <r???>, and then from the sand--lan <r?????> sent to the City, so that more to save time. ") 
 MisBeginCondition (LvCheck, "<", 30) 
 MisBeginCondition (HasRecord, 1956) 
 MisBeginCondition (NoMission, 1959) 
 MisBeginCondition (NoMission, 1957) 
 MisBeginCondition (NoMission, 1958) 
 MisBeginAction (AddMission, 1958) 
 MisCancelAction (ClearMission, 1958) 
 MisNeed (MIS_NEED_DESP, "completed in the Department mandates <r?????> Medal, and then came to their career assistant instructors to receive the task reward! Medals more rewarding the experience was more the number of medals to 5 You can get more than the current level of <r??> Oh! if you are to me all of a sudden 13 medals, I will reward you with a title of <r??> Oh! ") 
 MisHelpTalk ( "<t> at least be able to obtain a reward <r????> Oh!") 
 MisResultTalk ( "<t> good, so soon to get a medal, in accordance with the agreement before it is rewarding to you, please Collect!") 
 MisResultCondition (HasItem, 6710, 1) 
 MisResultCondition (HasMission, 1958) 
 MisResultAction (ClearMission, 1958) 
 MisResultAction (SetRecord, 1957) 
 MisResultAction (BaBuPrize) 
 MisResultBagNeed (4) 
 MisResultAction (GiveNpcMissionbyFunc, "Occupational branch 5") 
 
 
 ------------ Experience (????depot )------------------ 
 DefineMission (6782, "depot????of experience", 1959) 
 MisBeginTalk ( "<t> you have mastered the knowledge of many of the pirate king, so you can now carry out further risk--taking task, you can present the strength of the <b????> to <r????depot >, you can send <j?????·??(2187,2776)> the <b???> to <r???>, and then sent to the??from the ice <r????depot >, so that more time--saving. ") 
 MisBeginCondition (LvCheck, "<", 30) 
 MisBeginCondition (HasRecord, 1956) 
 MisBeginCondition (NoMission, 1959) 
 MisBeginCondition (NoMission, 1957) 
 MisBeginCondition (NoMission, 1958) 
 MisBeginAction (AddMission, 1959) 
 MisCancelAction (ClearMission, 1959) 
 MisNeed (MIS_NEED_DESP, "completed in the Department mandates <r???????> Medal, and then came to their career assistant instructors to receive the task reward! Medals more rewarding the experience was more the number of Medal 5 more than the current level of access you <r??> Oh! if you are to me all of a sudden Order 13, I award you with a title of <b??> Oh! ") 
 MisHelpTalk ( "<t> at least be able to obtain a reward <r??????> Oh!") 
 MisResultTalk ( "<t> good, so soon to get a medal, in accordance with the agreement before it is rewarding to you, please Collect!") 
 MisResultCondition (HasItem, 6711, 1) 
 MisResultCondition (HasMission, 1959) 
 MisResultAction (SetRecord, 1957) 
 MisResultAction (ClearMission, 1959) 
 MisResultAction (ALBSPrize) 
 MisResultBagNeed (4) 
 MisResultAction (GiveNpcMissionbyFunc, "Occupational branch 5") 
 
 -------------------------------- Main line of the task: find a boatman ------------------------------------ 
 DefineMission (6783, "to find boatman", 1960) 
 
 MisBeginTalk ( "<t> pirate king in the world not only three mainland, there are also many seas, you should now know how the sea is not it? Sea first task is to ship, so you can click to find <r boatman>, boatman in <r???>, <r???>, <r???> have, if you do not know where he was, then ALT + Z to open by the NPC to find a list of??! ") 
 MisBeginCondition (LvCheck, ">", 29) 
 MisBeginCondition (HasRecord, 1956) 
 MisBeginCondition (NoRecord, 1960) 
 MisBeginCondition (NoMission, 1960) 
 MisBeginAction (AddMission, 1960) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t>???<r??>, he will tell you how the ship!") 
 MisHelpTalk ( "<t> boatman go find it, he would have something to do and you say!") 
 MisResultCondition (AlwaysFailure) 
 
 -------------------------------- Main line of the task: find a boatman ------------------------------------ 
 DefineMission (6784, "to find boatman", 1960, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> each port there is a boatman here, you can in any construction of a port where the ships you need Oh!") 
 
 MisResultCondition (HasMission, 1960) 
 MisResultAction (ClearMission, 1960) 
 MisResultAction (SetRecord, 1960) 
 MisBeginAction (GiveItem, 6042, 1, 4) 
 MisResultAction (AddExpRealPer2, 0.3) 
 MisResultAction (GiveNpcMission1, 6785) 
 
 MisResultBagNeed (1) 
 
 -------------------------------- Main line tasks: the construction of the vessel ------------------------------------ 
 DefineMission (6785, "the construction of the vessel", 1961) 
 
 MisBeginTalk ( "<t> you have to understand how to build a ship, the ship is the most important function, as well as on vessels at sea to enter the maze, so you <r??> first to build a ship there.") 
 MisBeginCondition (HasRecord, 1960) 
 MisBeginCondition (NoRecord, 1961) 
 MisBeginCondition (NoMission, 1961) 
 MisBeginAction (AddMission, 1961) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 
 MisNeed (MIS_NEED_DESP, "<t> in the construction of a vessel <r??> here.") 
 MisHelpTalk ( "<t> here in my construction of a ship, oh!") 
 MisResultTalk ( "<t> you have a boat, after a voyage to the sea Oh!") 
 MisResultCondition (HasItem, 3988,1) ---------- judge proof of his vessel 
 MisResultCondition (HasMission, 1961) 
 MisResultAction (ClearMission, 1961) 
 MisResultAction (SetRecord, 1961) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6786) 
 
 -------------------------------- Main line tasks: port command ------------------------------------ 
 DefineMission (6786, "Harbor Command", 1962) 
 
 MisBeginTalk ( "<t> you already have a ship, it appears that you do not know how to let the sea. Not only for adventure on land, at sea there are more risks of Oh, and the sea into the maze must be able to to enter. ") 
 MisBeginCondition (HasRecord, 1961) 
 MisBeginCondition (NoRecord, 1962) 
 MisBeginCondition (NoMission, 1962) 
 MisBeginAction (AddMission, 1962) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisHelpTalk ( "<t> Harbor???Shirley command it!") 
 MisNeed (MIS_NEED_DESP, "<t>???<b???> the <j????·??(2243,2826)>, she will tell you how the sea!") 
 MisResultCondition (AlwaysFailure) 
 
 -------------------------------- Main line tasks: port command ------------------------------------ 
 DefineMission (6787, "Harbor Command", 1962, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> each port has port command, you can carry out to sea through the commanders.") 
 
 MisResultCondition (HasMission, 1962) 
 MisResultAction (ClearMission, 1962) 
 MisResultAction (SetRecord, 1962) 
 MisBeginAction (GiveItem, 6042, 1, 4) 
 MisResultAction (AddExpRealPer2, 0.3) 
 
 MisResultAction (GiveNpcMission1, 6788) 
 
 -------------------------------- Main line tasks: the first time the sea ------------------------------------ 
 DefineMission (6788, "the first time the sea", 1963) 
 
 MisBeginTalk ( "<t> I can help you out, oh, all docked in the city of silver in my boat record here, if you want the sea came to me to be registered, otherwise I will not let you go Oh! Go after to help me kill 5 <r???> it! ") 
 MisBeginCondition (HasRecord, 1962) 
 MisBeginCondition (NoRecord, 1963) 
 MisBeginCondition (NoMission, 1963) 
 MisBeginAction (AddMission, 1963) 
 MisBeginAction (AddTrigger, 19631, TE_KILL, 1184, 5) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_KILL, 1184, 5, 10, 5) 
 MisNeed (MIS_NEED_DESP, "<t> to <b???> waters near <r2261,2936> hunting <r5????>!") 
 MisHelpTalk ( "<t> not how to complete task? Go kill five small sea jellyfish you!") 
 MisResultTalk ( "<t>??, I was not wrong you, you really have the strength, a few little monster for you, this is not a barrier!") 
 MisResultCondition (HasMission, 1963) 
 MisResultCondition (HasFlag, 1963, 14) 
 MisResultAction (ClearMission, 1963) 
 MisResultAction (SetRecord, 1963) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6789) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1184) 
 TriggerAction (1, AddNextFlag, 1963, 10, 5) 
 RegCurTrigger (19631) 
 
 -------------------------------- Main line tasks: ------------------------------------ vessel upgrade 
 DefineMission (6789, "the vessel upgrade", 1964) 
 
 MisBeginTalk ( "<t> ships and characters are the same, you can upgrade the ship to sea after the vessel on the skills can be cooked up to a certain degree of refining can be value <b???> to the <j boatman Adams Barker (2255,2801)> Department will upgrade the level of the vessel, the vessel after the vessel upgrade will increase the property! ") 
 MisBeginCondition (HasRecord, 1963) 
 MisBeginCondition (NoRecord, 1964) 
 MisBeginCondition (NoMission, 1964) 
 MisBeginAction (AddMission, 1964) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t> upgrade <j??·???(2255,2801)> to find the <b???> come again <b???> vessels of <j harbor command Shirley (2243,2826) > to receive reward! ") 
 MisHelpTalk ( "<t> at sea for as long as access to skills, and then look for???boatman upgrade your ship!") 
 MisResultTalk ( "<t>??good bar, the ship after the upgrade there are a lot of attributes to upgrade!") 
 
 MisResultCondition (HasCleckLevel) ---------------- vessels to determine 
 MisResultCondition (HasMission, 1964) 
 MisResultAction (ClearMission, 1964) 
 MisResultAction (SetRecord, 1964) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6790) 
 
 -------------------------------- Main line tasks: ------------------------------------ ships 
 DefineMission (6790, "ships", 1965) 
 
 MisBeginTalk ( "<t> consume at sea replenishment ships, once the supplies reach 0, the ship will be sunk, the player can command all the harbor additional supply vessels!") 
 MisBeginCondition (HasRecord, 1964) 
 MisBeginCondition (NoRecord, 1965) 
 MisBeginCondition (NoMission, 1965) 
 MisBeginAction (AddMission, 1965) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t> find <j????·??(2243,2826)> the <b???> supply vessel filled!") 
 MisHelpTalk ( "<t> will be if the sea is not filled, then recharge in the sea may be sinking Oh!") 
 MisResultTalk ( "<t> Yes, It seems that you have learned to the ships!") 
 MisResultCondition (HasCleckSupply) ---------------- ships to determine 
 MisResultCondition (HasMission, 1965) 
 MisResultAction (ClearMission, 1965) 
 MisResultAction (SetRecord, 1965) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6791) 
 
 -------------------------------- Main line tasks: ------------------------------------ salvage vessel 
 DefineMission (6791, "salvage vessel", 1966) 
 
 MisBeginTalk ( "<t> If you accidentally sank the vessel, you do not have to worry, you can in your berthing goods that Hong Kong will be the command of the harbor your salvage ships!") 
 MisBeginCondition (HasRecord, 1965) 
 MisBeginCondition (NoRecord, 1966) 
 MisBeginCondition (NoMission, 1966) 
 MisBeginAction (AddMission, 1966) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t> find <j????·??(2243,2826)> receive the award <b???>!") 
 MisResultTalk ( "<t> TU, you have to understand the right to salvage the vessel, which is to reward you!") 
 MisResultCondition (HasMission, 1966) 
 MisResultAction (ClearMission, 1966) 
 MisResultAction (SetRecord, 1966) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6792) 
 
 
 
 -------------------------------- Main line tasks: strengthening equipment ------------------------------------ 
 DefineMission (6792, "Strengthening and equipment", 1967) 
 
 MisBeginTalk ( "<t> you that you have found some of them equipped with slot number of the shows you, do you know do not know what role he has it????<b??> City <j blacksmith's apprentice (904 , 3501)> understanding of equipment to strengthen it! ") 
 MisBeginCondition (HasRecord, 1966) 
 MisBeginCondition (NoRecord, 1967) 
 MisBeginCondition (NoMission, 1967) 
 MisBeginAction (AddMission, 1967) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t> find <j?????(904,3501)> City <b??> learn how to strengthen the equipment!") 
 MisHelpTalk ( "<t> find <b??> City <j?????(904,3501)> that he has things to find you!") 
 MisResultCondition (AlwaysFailure) 
 
 -------------------------------- Main line tasks: strengthening equipment ------------------------------------ 
 DefineMission (6793, "Strengthening and equipment", 1967, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> me you can see how to strengthen the equipment Oh, there are props refining, synthesis, grinding equipment, you can slowly learn Oh!") 
 
 MisResultCondition (HasMission, 1967) 
 MisResultAction (ClearMission, 1967) 
 MisResultAction (SetRecord, 1967) 
 MisResultAction (AddExpRealPer2, 0.3) 
 
 MisResultAction (GiveNpcMission1, 6794) 
 
 -------------------------------- Main line tasks: the first use of city ------------------------------------ 
 DefineMission (6794, "the first city to use", 1968) 
 
 MisBeginTalk ( "<t> reinforce the need for refining equipment, stone and gems, refined stone, precious stones through the game in the city to make a purchase, enter the city in the upper right corner of the screen can be opened in your lower--left corner of the map there is a small city 2 words, you can click to enter! ") 
 MisBeginCondition (HasRecord, 1967) 
 MisBeginCondition (NoRecord, 1968) 
 MisBeginCondition (NoMission, 1968) 
 MisBeginAction (AddMission, 1968) 
 MisBeginAction (AddTrigger, 19681, TE_GETITEM, 6717, 1) -- refined test stone 
 MisBeginAction (AddTrigger, 19682, TE_GETITEM, 6718, 1) -- the test of physical precious stones 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_ITEM, 6717, 1, 10, 1) 
 MisNeed (MIS_NEED_ITEM, 6718, 1, 20, 1) 
 MisNeed (MIS_NEED_DESP, "<t> tasks in the game area in the mall to buy a <r?????> and a <r???????>!") 
 
 MisHelpTalk ( "<t> open the mall to find the purchase of the task area and a <r?????> a <r???????>") 
 MisResultTalk ( "<t> you have learned how to use the mall, you can look inside the mall which are more suitable for value--added props do you use!") 
 MisResultCondition (HasItem, 6717, 1) 
 MisResultCondition (HasItem, 6718, 1) 
 MisResultCondition (HasMission, 1968) 
 MisResultAction (ClearMission, 1968) 
 MisResultAction (SetRecord, 1968) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6795) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6717) 
 TriggerAction (1, AddNextFlag, 1968, 10, 1) 
 RegCurTrigger (19681) 
 InitTrigger () 
 TriggerCondition (1, IsItem, 6718) 
 TriggerAction (1, AddNextFlag, 1968, 20, 1) 
 RegCurTrigger (19682) 
 
 -------------------------------- Main line tasks: the first refining ------------------------------------ 
 DefineMission (6795, "Refining the first time", 1969) 
 
 MisBeginTalk ( "<t> you already know the precious stones, as well as how to obtain a refined stone, you may now obtain from the city, as well as the refining stone refine precious stones to your equipment, refining the premise that the equipment must have a slot in order to refine , so you can use a grooved to refining equipment. As a result of these precious stones is free of charge and therefore can only fine the following 40 of the clothes, oh! ") 
 MisBeginCondition (HasRecord, 1968) 
 MisBeginCondition (NoRecord, 1969) 
 MisBeginCondition (NoMission, 1969) 
 MisBeginAction (AddMission, 1969) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t> will be obtained <r?????> Mall and refining <r???????> the equipment to you!") 
 
 MisHelpTalk ( "<t> not you will refine your equipment? If you have not, then learn to find my disciple, he will tell you how refined!") 
 MisResultTalk ( "<t> you have the equipment to see you have changed the properties of right, and this is the effect of refining, various precious stones will increase different attributes, you may need based on your attribute points to refine your equipment, so that you can enhance the strength, oh! ") 
 
 MisResultCondition (CheckRoleLearnedForge) -------------- detect whether or not refined clothes off 
 MisResultCondition (HasMission, 1969) 
 MisResultAction (ClearMission, 1969) 
 MisResultAction (SetRecord, 1969) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6796) 
 
 -------------------------------- Main line tasks: ------------------------------------ synthetic gemstones 
 DefineMission (6796, "Synthesis of gem", 1970) 
 
 MisBeginTalk ( "<t> required for each refining grade stones are different, precious stones need to be able to upgrade to synthetic, synthetic time must have the same level of two will be able to carry out synthetic gemstones.") 
 MisBeginCondition (HasRecord, 1969) 
 MisBeginCondition (NoRecord, 1970) 
 MisBeginCondition (NoMission, 1970) 
 MisBeginAction (AddMission, 1970) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t> find <j????·??(840,3585)> City <b??> task incentive to receive it!") 
 MisHelpTalk ( "<t> <b??> City <j????·??(840,3585)> will tell you something!") 
 MisResultCondition (AlwaysFailure) 
 
 -------------------------------- Main line tasks: ------------------------------------ synthetic gemstones 
 DefineMission (6797, "Synthesis of gem", 1970, COMPLETE_SHOW) 
 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> what the future if there is need of help can come to me even though Oh!") 
 
 MisResultCondition (HasMission, 1970) 
 MisResultAction (ClearMission, 1970) 
 MisResultAction (SetRecord, 1970) 
 MisResultAction (AddExpRealPer2, 0.3) 
 
 MisResultAction (GiveNpcMission1, 6798) 
 
 
 -------------------------------- Main line tasks: ------------------------------------ synthetic gemstones 
 DefineMission (6798, "Synthesis of 2 precious stones", 1971) 
 
 MisBeginTalk ( "<t> synthetic precious stones synthetic stones must have a reel, as well as level 2 and the same the same gemstone can be synthetic, synthetic levels will rise after the precious stones, synthetic <b??> can scroll City <j grocer who Emory (840,3585)> to purchase! ") 
 MisBeginCondition (HasRecord, 1970) 
 MisBeginCondition (NoRecord, 1971) 
 MisBeginCondition (NoMission, 1971) 
 MisBeginAction (AddMission, 1971) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t> will be obtained <r???????> Mall synthesized!") 
 
 MisHelpTalk ( "<t> will be refining your stone or synthetic precious stones to a bar!") 
 MisResultTalk ( "<t> you have seen the precious stones also can be synthesized by it, will you hurry up and refining the precious stones to your equipment, go!") 
 
 MisResultCondition (CheckBaoShiLV, 6718) -------------- detect whether the synthetic gemstones 
 MisResultCondition (HasMission, 1971) 
 MisResultAction (ClearMission, 1971) 
 MisResultAction (SetRecord, 1971) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6800) 
 
 
 -------------------------------- Main line tasks: Second Test ------------------------------------ 
 DefineMission (6800, "the second test", 1972) 
 
 MisBeginTalk ( "<t> heard that your mentor's assistant career in a hurry to find you, you go see it!") 
 MisBeginCondition (HasRecord, 1971) 
 MisBeginCondition (NoRecord, 1972) 
 MisBeginCondition (NoMission, 1972) 
 MisBeginAction (AddMission, 1972) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t> find their own <r???????>!") 
 
 MisHelpTalk ( "<t> If you have forgotten where you <r???????>, you can open the NPC list <rALT+Z> query!") 
 
 MisResultCondition (AlwaysFailure) 
 
 -------------------------------- Main line tasks: Second Test ------------------------------------ 
 DefineMission (6801, "the second test", 1972) 
 MisBeginCondition (AlwaysFailure) 
 
 MisResultTalk ( "<t> Well, you have fast into a major turning point in life, and getting closer and closer to the strong and powerful people who really have to reach the second transfer, to be carried out on 40 II, oh! ") 
 
 MisResultCondition (HasMission, 1972) 
 MisResultAction (ClearMission, 1972) 
 MisResultAction (SetRecord, 1972) 
 MisResultAction (AddExpRealPer2, 0.5) 
 
 MisResultAction (GiveNpcMission1, 6802) 
 
 
-------------------------------- Main line tasks: Second Test ------------------------------------ 
 DefineMission (6802, "the second test", 1973) 
 
 MisBeginTalk ( "you have from me a great deal of access to knowledge, and now you want to conduct a second examination, and the second assessment would be more difficult that Oh, but is also a very generous reward!") 
 MisBeginCondition (HasRecord, 1972) 
 MisBeginCondition (NoRecord, 1973) 
 MisBeginCondition (NoMission, 1973) 
 MisBeginAction (AddMission, 1973) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "<t> a second examination of the subject to answer the more incentive to obtain more <r???????> to participate in finding answers! Completed a switch to get the best incentive is a < BB--class clothes r35>, the second to get the best incentive to complete a <r45?BB??>. ") 
 
 MisHelpTalk ( "<t> as long as the answer to one question and answer on the incentives to be completed, oh, the higher scores will get better rewards!") 
 MisResultTalk ( "<t> you have already completed a good answer, so if you are not satisfied with??again to the results the last time you give your reward!") 
 
 MisResultCondition (CheckZXBYPoint ,">", 0) 
 MisResultCondition (HasMission, 1973) 
 MisResultAction (ClearMission, 1973) 
 MisResultAction (SetRecord, 1973) 
 MisResultAction (GiveZXBYRewards) 

 ---------------------------------- Main line tasks: The first thing to buy equipment (risk--takers -- Amy )---------------------------------- -------- 
 DefineMission (6803, "The first thing to buy equipment", 1974) 
 
 MisBeginTalk ( "<t> likelihood that you have found me, before the 2000 award to you of silver, then buy something in my equipment right here!") 
 
 MisBeginCondition (IsChaType, 4) 
 MisBeginCondition (HasRecord, 1937) 
 MisBeginCondition (NoRecord, 1928) 
 MisBeginCondition (NoMission, 1974) 
 MisBeginAction (AddMission, 1974) 
 MisBeginAction (AddTrigger, 19741, TE_GETITEM, 0556, 1) 
 MisCancelAction (SystemNotice, "the task can not be interrupted") 
 
 MisNeed (MIS_NEED_DESP, "in <r?????> purchase <j?????·??(2265,2704)> the <b???>!") 
 MisHelpTalk ( "<t> I tell you now how to buy equipment, selection of trading prop trading after the page, select what you want to buy the props, hold the left mouse button pressed drag the backpack you can buy!") 
 
 MisNeed (MIS_NEED_ITEM, 0556, 1, 10, 1) 
 
 MisResultTalk ( "<t> It seems that you still quite promising, so soon learned!") 
 
 MisResultCondition (NoRecord, 1974) 
 MisResultCondition (HasMission, 1974) 
 MisResultCondition (HasItemShouTao, 0556) 
 MisResultAction (ClearMission, 1974) 
 MisResultAction (SetRecord, 1928) 
 MisResultAction (AddExpRealPer2, 0.4) ---------------------- experience 40 percent incentive 
 MisResultAction (GiveNpcMission1, 6749) 
 
 InitTrigger () 
 TriggerCondition (1, IsItem, 0556) 
 TriggerAction (1, AddNextFlag, 1974, 10, 1) 
 RegCurTrigger (19741) 
 
 end

AreaMission001()

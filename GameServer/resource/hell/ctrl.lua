function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    MapCopyStartType(map, 1)
    SingleMapCopyPlyNum(map, 60)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_hell()   --Координаты портала

	local POS_X=199
	local POS_Y=941
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "jialebi")   --Регион портала
    SetMapEntryTime(map, "2007/1/19/16/0", "0/6/0", "0/2/30", "0/2/30")   --Время открытия портала

end

function after_enter_hell( role , map_copy )

local cha_name=GetChaDefaultName(role)

	SystemNotice ( role, "Таинственный голос: Виновный в смерти Реальма <"..cha_name.."> Ах... Мои слуги убьют тебя!" ) 

end

function before_leave_hell ( role )

end

function map_copy_first_run_hell( map_copy )

end

function map_copy_run_hell( map_copy )


		if CheckMonsterDead ( AZRAEL[5] ) == 1 then
			if CRY[5]==0 then
				local Notice_all = "Саро: Чувство страдания это - сила отчаяния. Я уведу вас во что-то более глубокое, чем отчаяние!!!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[5]=1
			end
		end
		
		if CheckMonsterDead ( AZRAEL[6] ) == 1 then
			if CRY[6]==0 then
				local Notice_all = "Кару: Хорошо вы прошли это стадию, но рано радуетесь, готовтесь к худшему!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[6]=1
			end
		end

		if CheckMonsterDead ( AZRAEL[7] ) == 1 then
			if CRY[7]==0 then
				local Notice_all = "Артур: Я... Я потерпел поражение... Пожалуйста, пощади меня, мой Господин! Я не хочу быть проклятым!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[7]=1
			end
		end

		if CheckMonsterDead ( AZRAEL[8] ) == 1 then
			if CRY[8]==0 then
				local Notice_all = "Сакройс: Глупые люди, После смерти мы становимся бессмертными. Мы еще встретимся! Хаха! Хаха!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[8]=1
			end
		end


				
	if CRY[5]==1 and CRY[6]==1 and CRY[7]==1 and CRY[8]==1 then
		
		if HELLCLOSETIME==9000 then
			Notice ( "Таинственный голос: Кто убьет моих слуг, тот лишится своей головы! Их жертвы не будут напрасными! Готовтесь, земля под вашими ногами исчезнет через 5 минут!")
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = ("Внимание! Разрушение Абаддонов начнется через "..closetime.." секунд! Все авантюристы, быстрее бегите!")
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then

			HELLCLOSETIME = 9000
			CRY[5]=0
			CRY[6]=0
			CRY[7]=0
			CRY[8]=0
			CloseMapEntry ( "hell" )
			CloseMapCopy ( "hell" )

		end
	end
end


function map_run_hell( map )

end


function map_copy_close_hell ( map_copy )

			HELLCLOSETIME = 9000
			CRY[5]=0
			CRY[6]=0
			CRY[7]=0
			CRY[8]=0

end

function can_open_entry_hell( map ) 

end 
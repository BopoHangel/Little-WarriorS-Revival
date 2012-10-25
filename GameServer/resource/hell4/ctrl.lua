function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    MapCopyStartType(map, 1)
    SingleMapCopyPlyNum(map, 60)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_hell4()   --Координаты портала

	local POS_X=191
	local POS_Y=180
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "hell3")   --Регион портала
    SetMapEntryTime(map, "2007/1/20/0/0", "0/1/0", "0/1/0", "0/1/0")   --Время открытия портала

end

function after_enter_hell4( role , map_copy )

local cha_name=GetChaDefaultName(role)

	SystemNotice ( role, "Таинственный голос: <"..cha_name..">, скоро вы узнаете настоящую силу Нежити!" ) 

end

function before_leave_hell4 ( role )

end

function map_copy_first_run_hell4( map_copy )



end

function map_copy_run_hell4( map_copy )

	
	if CheckMonsterDead ( AZRAEL[18] ) == 1 then
		
		if CRY[18]==0 then
			local Notice_all = "Пятый страж: Глупые людишки, После смерти мы бессмертны. Мы еще встретимся. Вахахаха!!!"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[18]=1
			BOSSXYSJ[987] = 4	
			BOSSSJSJ[987] = 4	
			BOSSTJSJ[987] = 4	
			BOSSXZSJ[987] = 4	
			BOSSAYSJ[987] = 4
		end
	end

	if CRY[18]==1  then
		
		if HELLCLOSETIME==300 then
			local week = GetNowWeek()

			if week ~= 7 then
				Notice("Таинственный голос: Я не могу себе даже представить, что простые смертные могут победить смерть! Ха-ха! Изумително! Ха-ха!")
			else
				Notice("Таинственный голос: Ха-ха! Наконец-то кто-то принял мой вызов!Вас ждет только смерть! Игра начилась!")
			end				
			HELLCLOSETIME = HELLCLOSETIME - 180
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = "Внимание! Крах 18 Абаддона начнется через "..closetime.." секунд! Все авантюристы, бегите!"
				MapCopyNotice ( map_copy , Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then


			HELLCLOSETIME = 300
			CRY[18]=0
			CloseMapEntry ( "hell4" )
			CloseMapCopy ( "hell4" )
		end

	end


end


function map_run_hell4( map )




end


function map_copy_close_hell4 ( map_copy )

			HELLCLOSETIME = 300
			CRY[18]=0
			SPECIALSKILL[19]=0

end
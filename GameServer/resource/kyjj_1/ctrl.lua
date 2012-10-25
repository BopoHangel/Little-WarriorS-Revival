--------------------------------------------------------------------------
--									--
--				  Кентуки				--
--				 					--
--				by SimplePRO				--
--									--
--------------------------------------------------------------------------
print( "Loading kyjj_1 Ctrl.lua" )

function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    MapCopyStartType(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function get_map_entry_pos_kyjj_1()
	local POS_X=2210
	local POS_Y=2750
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "garner")
    SetMapEntryTime(map, "2006/10/18/21/0", "1/0/0", "0/1/0", "0/2/0")
end


function map_copy_run_kyjj_1( map_copy )

	if CheckMonsterDead ( BOSS_Kyjj[1] ) == 1 then
		if Kill_Kyjj[1]==0 then
			Notice ("Не плохо воины, Дух Войны был повержен, но сможете ли вы пройти следующие испытание. ")
			Kill_Kyjj[1]=1
		end
	end

	if Kill_Kyjj[1]==1 then
		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = "Внимание! Крах Кентуки 1 начнется через "..closetime.." секунд. "
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then
			HELLCLOSETIME = 300
			Kill_Kyjj[1]=0
			CloseMapEntry ( "kyjj_1" )
			CloseMapCopy ( "kyjj_1" )
		end
	end
end

function map_copy_close_kyjj_1( map_copy )
	HELLCLOSETIME = 300
	Kill_kyjj[1]=0
end

function can_open_entry_kyjj_1( map ) 
	local Now_Week = GetNowWeek()
	if Now_Week == 0 then
		return 1
	end
		return 0
end 
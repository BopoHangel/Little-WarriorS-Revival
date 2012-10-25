--------------------------------------------------------------------------
--									--
--				  Кентуки				--
--				 					--
--				by SimplePRO				--
--									--
--------------------------------------------------------------------------
print( "Loading kyjj_3 Ctrl.lua" )

function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    MapCopyStartType(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function get_map_entry_pos_kyjj_3()
	local POS_X=68
	local POS_Y=58
	return POS_X , POS_Y
end

function init_entry(map)
	SetMapEntryMapName(map, "kyjj_2")
	SetMapEntryTime(map, "2000/10/18/22/0", "1/0/0", "0/1/0", "0/2/0")
end

function map_copy_run_kyjj_3( map_copy )

	if CheckMonsterDead ( BOSS_Kyjj[3] ) == 1 then
		if Kill_Kyjj[3]==0 then
			Notice ("Возрадуйтесь! Дух Тьмы был повержен!")
			Kill_Kyjj[3]=1
		end
	end

	if Kill_Kyjj[3]==1 then
		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = "Внимание! Крах Кентуки 3 начнется через "..closetime.." секунд. "
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then
			HELLCLOSETIME = 300
			Kill_Kyjj[3]=0
			CloseMapEntry ( "kyjj_3" )
			CloseMapCopy ( "kyjj_3" )

		end
	end

end

function map_copy_close_kyjj_3( map_copy )
	HELLCLOSETIME = 300
	Kill_kyjj[3]=0
end

function can_open_entry_kyjj_3( map ) 
	local Now_Week = GetNowWeek()
	if Now_Week == 0 then
		return 1
	end
		return 0
end 
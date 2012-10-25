--------------------------------------------------------------------------
--									--
--									--
--				ctrl.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Загрузка greh1 Ctrl.lua" )

function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    MapCopyStartType(map, 1)
    SingleMapCopyPlyNum(map, 60)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_greh1()

	local POS_X=56
	local POS_Y=56
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "greh")
    SetMapEntryTime(map, "2007/1/20/19/30", "1/0/0", "0/0/8", "0/1/0")

end
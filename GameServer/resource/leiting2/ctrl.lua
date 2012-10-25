function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 0) 
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 60)  
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end


function get_map_entry_pos_leiting2()   --Место открытия портала

	local POS_X=600
	local POS_Y=2106
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --Регион открытия портала
--    SetMapEntryTime(map, "2005/8/30/0/0", "0/1/0", "0/1/0", "0/1/0") --Время открытия портала.

end


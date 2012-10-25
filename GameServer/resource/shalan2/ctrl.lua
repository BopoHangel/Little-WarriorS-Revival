function config(map)
    MapCanSavePos(map, 0)
    -----MapCanPK(map, 0)
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 300)  
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end


function get_map_entry_pos_shalan2()   --Время открытия портала 

	local POS_X=1244
	local POS_Y=3203
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "magicsea") --Регион появления портала в Мираж Ледыни
--    SetMapEntryTime(map, "2010/7/28/0/0", "0/1/0", "0/1/0", "0/1/0") --Время появления портала в Мираж Ледыни

end
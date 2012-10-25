function config(map)
    MapCanSavePos(map, 0) 
    MapCanPK(map, 1) 
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 300)
	MapCanTeam(map , 1)
	MapType ( map , 4 )

end

function init_entry(map)

end


function init_entry(map)
    SetMapEntryMapName(map, "winterland") 
    SetMapEntryTime(map, "2006/10/18/14/0", "0/1/0", "0/0/30", "0/0/45")

end

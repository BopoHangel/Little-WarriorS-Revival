--This document may be repeated whenever the implementation of the function, function names must be prefixed with the map were

function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 0)
    MapCopyNum(map, 1)
    SingleMapCopyPlyNum(map, 300)   --A copy of the player to set up a number of.
    MapCanTeam(map , 1)
--    MapType ( map , 4 )
end


function init_entry(map)
    SetMapEntryMapName(map, "winterland") --Set up the entrance location (map name)
    SetMapEntryTime(map, "2006/10/18/14/0", "0/1/0", "0/0/30", "0/0/45") --Entrance time, the map object, the first open time (year / month / day / time / min), after re-opening of the inter - Every (day / hours / minutes, all 0 means that only the first time to open), open to the entrance to disappear each time interval (days / hours / minutes, 0 that will never wholly disappear), the map of the closure of each open interval (days / hours / minutes that never shut down the entire 0).

end

--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapType(map , 4 )
    MapCanPK(map, 1)
end



function get_map_entry_pos_darkblue()   --设置入口的位置的坐标（坐标（米））

end

function init_entry(map)

end

function after_enter_darkblue( role , map_copy )
end

function before_leave_darkblue( role )
end

function map_copy_first_run_darkblue( map_copy )

end

function map_copy_run_darkblue( map_copy )
end

--每5秒执行一次的
function map_run_darkblue( map )
end

--地图关闭时执行
function map_copy_close_darkblue ( map_copy )
end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_darkblue( map ) 
end 
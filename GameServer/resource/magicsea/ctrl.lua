--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)

end


function get_map_entry_pos_magicsea()   --设置入口的位置的坐标（坐标（米））

end

function init_entry(map)

end

function after_enter_magicsea( role , map_copy )
end

function before_leave_magicsea( role )
end

function map_copy_first_run_magicsea( map_copy )

end

function map_copy_run_magicsea( map_copy )
end

--每5秒执行一次的
function map_copy_run_magicsea(map_copy)

	local now_week= os.date("%w")
	local now_hour= os.date("%H")
	local now_miniute= os.date("%M")
	now_week= tonumber(now_week)	    
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute

	if now_week==1 then
		if CheckDateNum>=1800 and CheckDateNum<1830 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Auction", 1, 1000000, 1000000)
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=1830 and CheckDateNum<1840 and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end
		if CheckDateNum>=1840 and CheckDateNum<1910 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Auction", 1, 1000000, 1000000)
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=1910 and CheckDateNum<1920 and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end
		if CheckDateNum>=1920 and CheckDateNum<1950 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Auction", 1, 1000000, 1000000)
			
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=1950 and CheckDateNum<2000 and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end

		if CheckDateNum>=2000 and CheckDateNum<2030 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Auction", 1, 1000000, 1000000)
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=2030  and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end
	end
end
--地图关闭时执行
function map_copy_close_magicsea ( map_copy )
end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_magicsea( map ) 
end 
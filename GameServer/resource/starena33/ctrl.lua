function config(map)
    MapCanSavePos(map, 0) 					-- Возможность сохранять позицию персонажа на карте (1 - да, 0 - нет)
    MapCanPK(map, 1) 						-- Возможность атаковать других персонажей (1 - да, 0 - нет)
    MapCanTeam( map, 0 )					-- Возможность создавать отряды (1 - да, 0 - нет)
    MapCopyNum(map, 1) 						-- Количество копий карты (если параметр отсутствует, принимается равным 1)
    SingleMapCopyPlyNum(map, 60)  				-- Количество игроков на карте
    MapType ( map , 3 )						-- Тип карты
    MapCanStall(map , 0)
end


function get_map_entry_pos_starena33()
	local POS_X=2232
	local POS_Y=2781
	return POS_X , POS_Y
end

function init_entry(map)
	SetMapEntryMapName(map, "garner")			-- Карта, на которой установлена точка входа на эту карту
	SetMapEntryTime(map, "2006/10/18/17/0", "0/6/0", "0/0/20", "0/0/30")   --Время открытия портала
end

function after_enter_starena33( role , map_copy ) --Функция выполняемая после захода на карту
	if id_char == 0 then --Если переменная "носитель флага" пуста, то...
		local statelv = 1  --Уровень эффекта
		local statetime = 99999  --Время эффекта
		local cha_name = GetChaDefaultName(role) --Получаем имя персонажа
		Notice ("Игрок ["..cha_name.."] получил флаг." ) --Выводим сообщение у кого флаг
		AddState ( role, role, 204, statelv, statetime ) --Добавляем эффект флага
	end
end

function before_leave_starena33( role ) --Функция выполняемая при выходе персонажа с карты
	RemoveState ( role, 204 ) --Сбросить флаг на игроке
end

function map_copy_before_close_starena33( map_copy ) --Функция выполняемая после закрытия карты
	id_char = 0 --Обнуляем переменую "носитель флага"
end


function map_copy_first_run_starena33( map_copy )

end

function map_copy_run_starena33( map_copy )

end


function can_open_entry_starena33( map )  
	
end 
--------------------------------------
function map_run_starena33 ( map )
	
   
end



function map_copy_close_starena33 ( map_copy )
end
		

function can_open_entry_starena33( map ) 
end 
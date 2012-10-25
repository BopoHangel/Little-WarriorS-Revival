function config(map)
    MapCanSavePos(map, 0) 					-- Возможность сохранять позицию персонажа на карте (1 - да, 0 - нет)
    MapCanPK(map, 1) 						-- Возможность атаковать других персонажей (1 - да, 0 - нет)
    MapCanTeam( map, 0 )					-- Возможность создавать отряды (1 - да, 0 - нет)
    MapCopyNum(map, 1) 						-- Количество копий карты (если параметр отсутствует, принимается равным 1)
    SingleMapCopyPlyNum(map, 60)  				-- Количество игроков на карте
    MapType ( map , 3 )						-- Тип карты
    MapCanStall(map , 0)
end


function get_map_entry_pos_PKmap()
end

function init_entry(map)		-- Карта, на которой установлена точка входа на эту карту
	--SetMapEntryTime(map, "2006/10/18/17/0", "0/6/0", "0/0/20", "0/0/30")   --Время открытия портала
end

function after_enter_PKmap( role , map_copy )
	if id_char == 0 then --Если переменная "носитель флага" пуста, то...
		local statelv = 1  --Уровень эффекта
		local statetime = 1  --Время эффекта
		local cha_name = GetChaDefaultName(role) --Получаем имя персонажа
		--Notice ("Игрок ["..cha_name.."] получил флаг. Пираты отберите его у него." ) --Выводим сообщение у кого флаг
		AddState ( role, role, STATE_zhongshen, statelv, statetime ) --Добавляем эффект флага
	end
end

function before_leave_PKmap( role ) --Функция выполняемая при выходе персонажа с карты
	RemoveState ( role, STATE_zhongshen ) --Сбросить флаг на игроке
end

function map_copy_before_close_PKmap( map_copy ) --Функция выполняемая после закрытия карты
	id_char = 0 --Обнуляем переменую "носитель флага"
end


function map_copy_first_run_PKmap( map_copy )

end

function map_copy_run_PKmap( map_copy )

end


function can_open_entry_PKmap( map )  
	
end 
--------------------------------------
function map_run_PKmap ( map )
	
   
end



function map_copy_close_PKmap ( map_copy )
end
		

function can_open_entry_PKmap( map ) 
end 
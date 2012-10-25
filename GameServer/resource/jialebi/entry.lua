--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,4) 
end 

function after_create_entry(entry) 

end

function after_destroy_entry_darkswamp(entry)
end

function after_player_login_darkswamp(entry, player_name)
end


function check_can_enter_darkswamp( role, copy_mgr )
end


function begin_enter_darkswamp(role, copy_mgr) 
end 

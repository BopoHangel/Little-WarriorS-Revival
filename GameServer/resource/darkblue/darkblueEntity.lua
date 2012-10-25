------------------------------------------------------------
--EventEntity.lua Created by knight 2005.5.16.
--
--定义各个地图上的事件实体
print( "loading EventEntity.lua" )
-------------------------------------------------------------

--初始化深蓝大陆的事件实体信息
function InitGarnerEntity()

	--创建深蓝大陆港口实体
	CreateBerthEntity( "Docked", 455, 2, 121219,65899,-10, 4, 1239,623, 0 )
	CreateBerthEntity( "Docked", 455, 2, 165629,199648,-10, 11, 1631,1974, 0 )

	CreateBerthEntity( "Docked", 455, 2, 341582,256209,-10, 13, 3406,2564, 0 )
	CreateBerthEntity( "Docked", 455, 2, 366585,262979,-10, 14, 3681,2652, 0 )
	CreateBerthEntity( "Docked", 455, 2, 333114,355062,-10, 15, 3341,3526, 0 )
	
	
	--创建箱子实体
	CreateResourceEntity( "Snow Crystal", 208, 3, 86500, 59500, 129, 4106, 1, 180 )
	CreateResourceEntity( "Snow Crystal", 208, 3, 90200, 61000, 129, 4106, 1, 180 )
	CreateResourceEntity( "Snow Crystal", 208, 3, 95000, 55800, 129, 4106, 1, 180 )
	CreateResourceEntity( "Snow Crystal", 208, 3, 98900, 58700, 129, 4106, 1, 180 )
	CreateResourceEntity( "Sword in Stone", 467, 3, 216800, 60200, 129, 4109, 1, 180 )





end

InitGarnerEntity()
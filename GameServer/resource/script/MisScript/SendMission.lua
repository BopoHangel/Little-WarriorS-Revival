------------------------------------------------------------
--ScriptDefine.lua Created by knight 2005.3.9.
--
--脚本信息定义
print( "嚑｀悃獱 SendMission.lua" )
------------------------------------------------------------


--设置NPC随机任务中的，送信接受完成任务信息。
function TestDefMission( id, name, misid, npcid, areaid )
	DefineMission( id, name, misid, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisReultTalk("Thank you for sending my parcel over!")
	
	MisResultCondition( HasRandMissionNpc, misid, npcid, areaid )
	MisResultCondition( NoRandNpcItemFlag, misid, npcid )
	
	MisResultAction( TakeRandNpcItem, misid, npcid )
end

--样例
--TestDefMission( 1, "Parcel of Peter", 8, 3, 1 )
--TestDefMission( 2, "Parcel of Shaitan Teleporter", 8, 4, 1 )
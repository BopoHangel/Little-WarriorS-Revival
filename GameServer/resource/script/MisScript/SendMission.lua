------------------------------------------------------------
--ScriptDefine.lua Created by knight 2005.3.9.
--
--�ű���Ϣ����
print( "����㧪� SendMission.lua" )
------------------------------------------------------------


--����NPC��������еģ����Ž������������Ϣ��
function TestDefMission( id, name, misid, npcid, areaid )
	DefineMission( id, name, misid, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisReultTalk("Thank you for sending my parcel over!")
	
	MisResultCondition( HasRandMissionNpc, misid, npcid, areaid )
	MisResultCondition( NoRandNpcItemFlag, misid, npcid )
	
	MisResultAction( TakeRandNpcItem, misid, npcid )
end

--����
--TestDefMission( 1, "Parcel of Peter", 8, 3, 1 )
--TestDefMission( 2, "Parcel of Shaitan Teleporter", 8, 4, 1 )
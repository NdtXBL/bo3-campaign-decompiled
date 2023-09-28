#using scripts\codescripts\struct;
#using scripts\shared\ai\archetype_locomotion_utility;
#using scripts\shared\ai\archetype_mocomps_utility;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\ai\archetype_zombie_interface;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai\systems\animation_state_machine_mocomp;
#using scripts\shared\ai\systems\animation_state_machine_notetracks;
#using scripts\shared\ai\systems\animation_state_machine_utility;
#using scripts\shared\ai\systems\behavior_tree_utility;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai\systems\debug;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai\zombie_death;
#using scripts\shared\ai\zombie_shared;
#using scripts\shared\ai\zombie_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\util_shared;

#namespace namespace_9c39c8b3;

/*
	Name: init
	Namespace: namespace_9c39c8b3
	Checksum: 0x22A25000
	Offset: 0x598
	Size: 0x9B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec init()
{
	BehaviorTreeNetworkUtility::RegisterBehaviorTreeScriptAPI("bonuszmZombieTraversalDoesAnimationExist", &function_6de9fa37);
	BehaviorTreeNetworkUtility::RegisterBehaviorTreeAction("bonuszmSpecialTraverseAction", &function_88e9d5da, undefined, &function_dd1fc89b);
	AnimationStateNetwork::RegisterAnimationMocomp("mocomp_bonuszm_special_traversal", &function_26c42b09, undefined, &function_47268b78);
}

/*
	Name: function_6de9fa37
	Namespace: namespace_9c39c8b3
	Checksum: 0x7944FE09
	Offset: 0x640
	Size: 0x315
	Parameters: 1
	Flags: Private
*/
function private function_6de9fa37(entity)
{
	/#
		Assert(isdefined(entity.traverseStartNode));
	#/
	var_f6b30806 = isdefined(entity.traverseStartNode) && entity.traverseStartNode.script_noteworthy === "custom_traversal" || (isdefined(entity.traverseEndNode) && entity.traverseEndNode.script_noteworthy === "custom_traversal");
	if(var_f6b30806)
	{
		if(isdefined(entity.traverseStartNode) && !IsSubStr(entity.traverseStartNode.animscript, "human"))
		{
			/#
				if(isdefined(entity.traverseStartNode.animscript))
				{
					iprintln("Dev Block strings are not supported" + entity.traverseStartNode.animscript);
				}
			#/
			return 0;
		}
		if(isdefined(entity.traverseEndNode) && !IsSubStr(entity.traverseStartNode.animscript, "human"))
		{
			/#
				if(isdefined(entity.traverseStartNode.animscript))
				{
					iprintln("Dev Block strings are not supported" + entity.traverseStartNode.animscript);
				}
			#/
			return 0;
		}
		return 1;
	}
	blackboard::SetBlackBoardAttribute(entity, "_traversal_type", entity.traverseStartNode.animscript);
	if(entity.missingLegs === 1)
	{
		animationResults = entity ASTSearch(istring("traverse_legless@zombie"));
	}
	else
	{
		animationResults = entity ASTSearch(istring("traverse@zombie"));
	}
	if(isdefined(animationResults["animation"]))
	{
		return 1;
	}
	/#
		if(isdefined(entity.traverseStartNode.animscript))
		{
			iprintln("Dev Block strings are not supported" + entity.traverseStartNode.animscript);
		}
	#/
	return 0;
}

/*
	Name: function_88e9d5da
	Namespace: namespace_9c39c8b3
	Checksum: 0xF705E76
	Offset: 0x960
	Size: 0x7F
	Parameters: 2
	Flags: Private
*/
function private function_88e9d5da(entity, asmStateName)
{
	AnimationStateNetworkUtility::RequestState(entity, asmStateName);
	entity ghost();
	entity notsolid();
	entity clientfield::set("zombie_appear_vanish_fx", 1);
	return 5;
}

/*
	Name: function_dd1fc89b
	Namespace: namespace_9c39c8b3
	Checksum: 0x7F09F25D
	Offset: 0x9E8
	Size: 0x67
	Parameters: 2
	Flags: Private
*/
function private function_dd1fc89b(entity, asmStateName)
{
	entity clientfield::set("zombie_appear_vanish_fx", 3);
	entity show();
	entity solid();
	return 4;
}

/*
	Name: function_26c42b09
	Namespace: namespace_9c39c8b3
	Checksum: 0xC47BC402
	Offset: 0xA58
	Size: 0x1CF
	Parameters: 5
	Flags: Private
*/
function private function_26c42b09(entity, mocompAnim, mocompAnimBlendOutTime, mocompAnimFlag, mocompDuration)
{
	entity OrientMode("face angle", entity.angles[1]);
	entity SetRepairPaths(0);
	locomotionSpeed = blackboard::GetBlackBoardAttribute(entity, "_locomotion_speed");
	if(locomotionSpeed == "locomotion_speed_walk")
	{
		rate = 1.5;
	}
	else if(locomotionSpeed == "locomotion_speed_run")
	{
		rate = 2;
	}
	else
	{
		rate = 3;
	}
	entity ASMSetAnimationRate(rate);
	if(entity HasPath())
	{
		entity.var_51ea7126 = entity.pathGoalPos;
	}
	/#
		Assert(isdefined(entity.traverseEndNode));
	#/
	entity ForceTeleport(entity.traverseEndNode.origin, entity.angles);
	entity animMode("noclip", 0);
	entity.blockingPain = 1;
}

/*
	Name: function_47268b78
	Namespace: namespace_9c39c8b3
	Checksum: 0x22257F19
	Offset: 0xC30
	Size: 0xBB
	Parameters: 5
	Flags: Private
*/
function private function_47268b78(entity, mocompAnim, mocompAnimBlendOutTime, mocompAnimFlag, mocompDuration)
{
	entity.blockingPain = 0;
	entity SetRepairPaths(1);
	if(isdefined(entity.var_51ea7126))
	{
		entity SetGoal(entity.var_51ea7126);
	}
	entity ASMSetAnimationRate(1);
	entity finishtraversal();
}


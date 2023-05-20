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
	Name: function_c35e6aab
	Namespace: namespace_9c39c8b3
	Checksum: 0x22A25000
	Offset: 0x598
	Size: 0x9B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_c35e6aab()
{
	namespace_3aaf60e9::function_19bd8d4f("bonuszmZombieTraversalDoesAnimationExist", &function_6de9fa37);
	namespace_3aaf60e9::function_5bdc5952("bonuszmSpecialTraverseAction", &function_88e9d5da, undefined, &function_dd1fc89b);
	namespace_3923db8a::function_20b2425d("mocomp_bonuszm_special_traversal", &function_26c42b09, undefined, &function_47268b78);
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
function private function_6de9fa37(var_aa10fce8)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_aa10fce8.var_59959945));
	#/
	var_f6b30806 = isdefined(var_aa10fce8.var_59959945) && var_aa10fce8.var_59959945.var_caae374e === "custom_traversal" || (isdefined(var_aa10fce8.var_a91cb55a) && var_aa10fce8.var_a91cb55a.var_caae374e === "custom_traversal");
	if(var_f6b30806)
	{
		if(isdefined(var_aa10fce8.var_59959945) && !function_5dbf7eca(var_aa10fce8.var_59959945.var_909e866f, "human"))
		{
			/#
				if(isdefined(var_aa10fce8.var_59959945.var_909e866f))
				{
					function_d52b076d("Dev Block strings are not supported" + var_aa10fce8.var_59959945.var_909e866f);
				}
			#/
			return 0;
		}
		if(isdefined(var_aa10fce8.var_a91cb55a) && !function_5dbf7eca(var_aa10fce8.var_59959945.var_909e866f, "human"))
		{
			/#
				if(isdefined(var_aa10fce8.var_59959945.var_909e866f))
				{
					function_d52b076d("Dev Block strings are not supported" + var_aa10fce8.var_59959945.var_909e866f);
				}
			#/
			return 0;
		}
		return 1;
	}
	namespace_96515e2a::function_fbe55294(var_aa10fce8, "_traversal_type", var_aa10fce8.var_59959945.var_909e866f);
	if(var_aa10fce8.var_a7f77d7c === 1)
	{
		var_be841c75 = var_aa10fce8 function_a7c533e3(function_483c3c51("traverse_legless@zombie"));
	}
	else
	{
		var_be841c75 = var_aa10fce8 function_a7c533e3(function_483c3c51("traverse@zombie"));
	}
	if(isdefined(var_be841c75["animation"]))
	{
		return 1;
	}
	/#
		if(isdefined(var_aa10fce8.var_59959945.var_909e866f))
		{
			function_d52b076d("Dev Block strings are not supported" + var_aa10fce8.var_59959945.var_909e866f);
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
function private function_88e9d5da(var_aa10fce8, var_30445f6c)
{
	namespace_54aac76e::function_6e632edf(var_aa10fce8, var_30445f6c);
	var_aa10fce8 function_8c8e79fe();
	var_aa10fce8 function_422037f5();
	var_aa10fce8 namespace_71e9cb84::function_74d6b22f("zombie_appear_vanish_fx", 1);
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
function private function_dd1fc89b(var_aa10fce8, var_30445f6c)
{
	var_aa10fce8 namespace_71e9cb84::function_74d6b22f("zombie_appear_vanish_fx", 3);
	var_aa10fce8 function_48f26766();
	var_aa10fce8 function_4083a98e();
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
function private function_26c42b09(var_aa10fce8, var_cd9635e7, var_5c6790ff, var_be2200cd, var_9ace23e8)
{
	var_aa10fce8 function_13ffb22b("face angle", var_aa10fce8.var_6ab6f4fd[1]);
	var_aa10fce8 function_1159e080(0);
	var_827cd453 = namespace_96515e2a::function_c3f3e8e8(var_aa10fce8, "_locomotion_speed");
	if(var_827cd453 == "locomotion_speed_walk")
	{
		var_25d8ef6f = 1.5;
	}
	else if(var_827cd453 == "locomotion_speed_run")
	{
		var_25d8ef6f = 2;
	}
	else
	{
		var_25d8ef6f = 3;
	}
	var_aa10fce8 function_22bedfa6(var_25d8ef6f);
	if(var_aa10fce8 function_df2053ca())
	{
		var_aa10fce8.var_51ea7126 = var_aa10fce8.var_39abf31;
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_aa10fce8.var_a91cb55a));
	#/
	var_aa10fce8 function_9869ab67(var_aa10fce8.var_a91cb55a.var_722885f3, var_aa10fce8.var_6ab6f4fd);
	var_aa10fce8 function_ddec54c7("noclip", 0);
	var_aa10fce8.var_667aa308 = 1;
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
function private function_47268b78(var_aa10fce8, var_cd9635e7, var_5c6790ff, var_be2200cd, var_9ace23e8)
{
	var_aa10fce8.var_667aa308 = 0;
	var_aa10fce8 function_1159e080(1);
	if(isdefined(var_aa10fce8.var_51ea7126))
	{
		var_aa10fce8 function_169cc712(var_aa10fce8.var_51ea7126);
	}
	var_aa10fce8 function_22bedfa6(1);
	var_aa10fce8 function_f695853e();
}


#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\systems\destructible_character;
#using scripts\shared\ai_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_9cc756f9;

/*
	Name: function_c35e6aab
	Namespace: namespace_9cc756f9
	Checksum: 0x99EC1590
	Offset: 0x418
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_9cc756f9
	Checksum: 0x4EAB8102
	Offset: 0x428
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(0, 16);
	level.var_175490fb.var_f453408d = function_a8fb77bd();
	level.var_175490fb.var_f453408d.var_875da84b = &function_875da84b;
	level.var_175490fb.var_f453408d.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_f453408d.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_f453408d.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_f453408d.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_f453408d.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_f453408d.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_f453408d.var_dfcc01fd = function_c4d5ec1f("gadget_ravage_core");
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
}

/*
	Name: function_aebcf025
	Namespace: namespace_9cc756f9
	Checksum: 0x99EC1590
	Offset: 0x5D8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_875da84b
	Namespace: namespace_9cc756f9
	Checksum: 0x7251EF06
	Offset: 0x5E8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_9cc756f9
	Checksum: 0x3DD06780
	Offset: 0x600
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_9cc756f9
	Checksum: 0x2A23B567
	Offset: 0x620
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self thread function_677ed44f(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_9cc756f9
	Checksum: 0x8DF9590C
	Offset: 0x658
	Size: 0x21
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	self notify("hash_343d4580");
}

/*
	Name: function_5d2fec30
	Namespace: namespace_9cc756f9
	Checksum: 0x99EC1590
	Offset: 0x688
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_9cc756f9
	Checksum: 0x72F03944
	Offset: 0x698
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_251e7cf
	Namespace: namespace_9cc756f9
	Checksum: 0xB6821936
	Offset: 0x6B8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_677ed44f
	Namespace: namespace_9cc756f9
	Checksum: 0xD6E69F2B
	Offset: 0x6D8
	Size: 0x249
	Parameters: 1
	Flags: None
*/
function function_677ed44f(var_dfcc01fd)
{
	self notify("hash_677ed44f");
	self endon("hash_677ed44f");
	self endon("hash_343d4580");
	self endon("hash_643a7daf");
	while(1)
	{
		level waittill("hash_f453408d", var_b07228b6, var_a0ad4f34, var_f9348fda, var_dfcc01fd, var_f3edfe76);
		self notify("hash_f453408d", var_b07228b6, var_f9348fda, var_dfcc01fd);
		namespace_1db74d15::function_a6d21b4d(var_b07228b6, "torso_upper");
		self notify(var_dfcc01fd.var_4be20d44 + "_fired");
		level notify(var_dfcc01fd.var_4be20d44 + "_fired");
		var_b07228b6 function_db20c8d6("j_chest_door");
		var_b07228b6 thread function_369d3494();
		var_b07228b6 namespace_d84e54db::function_ceb883cd("robot_lights", 1);
		var_a0ad4f34 thread namespace_f74b04eb::function_96ed590f("cybercom_uses_control");
		if(function_65f192a6(self))
		{
			var_1630584c = function_e967a021("cybercom_ravagecore");
			if(isdefined(var_1630584c))
			{
				self function_ab8716a0("ItemStats", var_1630584c, "stats", "kills", "statValue", 1);
				self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
			}
		}
		self waittill("hash_e5ccf3dc");
		self notify("hash_65afc94f");
	}
}

/*
	Name: function_369d3494
	Namespace: namespace_9cc756f9
	Checksum: 0xB50B5C32
	Offset: 0x930
	Size: 0x43
	Parameters: 0
	Flags: Private
*/
function private function_369d3494()
{
	self waittill("hash_c67510f3", var_1e25855);
	if(isdefined(var_1e25855))
	{
		var_1e25855 function_db20c8d6("j_chest_door");
	}
}


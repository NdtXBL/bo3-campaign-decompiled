#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
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

#namespace namespace_328b6406;

/*
	Name: function_c35e6aab
	Namespace: namespace_328b6406
	Checksum: 0x99EC1590
	Offset: 0x340
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_328b6406
	Checksum: 0xE0DCC19C
	Offset: 0x350
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(1, 64);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	level.var_175490fb.var_dd7b91a2 = function_a8fb77bd();
	level.var_175490fb.var_dd7b91a2.var_875da84b = &function_875da84b;
	level.var_175490fb.var_dd7b91a2.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_dd7b91a2.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_dd7b91a2.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_dd7b91a2.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_dd7b91a2.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_dd7b91a2.var_251e7cf = &function_251e7cf;
}

/*
	Name: function_aebcf025
	Namespace: namespace_328b6406
	Checksum: 0x99EC1590
	Offset: 0x4D0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_875da84b
	Namespace: namespace_328b6406
	Checksum: 0x847BB4E8
	Offset: 0x4E0
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_328b6406
	Checksum: 0x3A188EF5
	Offset: 0x4F8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_328b6406
	Checksum: 0xF5FFACC3
	Offset: 0x518
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
	Namespace: namespace_328b6406
	Checksum: 0x46483F67
	Offset: 0x550
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
	Namespace: namespace_328b6406
	Checksum: 0x99EC1590
	Offset: 0x580
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_328b6406
	Checksum: 0x833DF0B
	Offset: 0x590
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_251e7cf
	Namespace: namespace_328b6406
	Checksum: 0x7E5E915C
	Offset: 0x5B0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_677ed44f
	Namespace: namespace_328b6406
	Checksum: 0x5E0D018A
	Offset: 0x5D0
	Size: 0x18F
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
		level waittill("hash_dd7b91a2", var_b07228b6, var_a0ad4f34, var_f9348fda, var_dfcc01fd, var_f3edfe76);
		self notify(var_dfcc01fd.var_4be20d44 + "_fired");
		level notify(var_dfcc01fd.var_4be20d44 + "_fired");
		wait(0.05);
		if(function_65f192a6(self))
		{
			var_1630584c = function_e967a021("cybercom_rapidstrike");
			if(isdefined(var_1630584c))
			{
				self function_ab8716a0("ItemStats", var_1630584c, "stats", "kills", "statValue", 1);
				self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
			}
		}
	}
}


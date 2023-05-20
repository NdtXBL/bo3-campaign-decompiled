#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_f388b961;

/*
	Name: function_c35e6aab
	Namespace: namespace_f388b961
	Checksum: 0x99EC1590
	Offset: 0x3A8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_f388b961
	Checksum: 0x51469A0D
	Offset: 0x3B8
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(1, 16);
	level.var_175490fb.var_8ff46145 = function_a8fb77bd();
	level.var_175490fb.var_8ff46145.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_8ff46145.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_8ff46145.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_8ff46145.var_251e7cf = &function_251e7cf;
}

/*
	Name: function_8d01efb6
	Namespace: namespace_f388b961
	Checksum: 0xAF34D774
	Offset: 0x4A0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_f388b961
	Checksum: 0x9C9D36D4
	Offset: 0x4C0
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_9d8e0758 = undefined;
	self.var_175490fb.var_c40accd3 = undefined;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_f388b961
	Checksum: 0x1CFD5D45
	Offset: 0x518
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	function_251e7cf(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_5d2fec30
	Namespace: namespace_f388b961
	Checksum: 0x99EC1590
	Offset: 0x550
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_75fd531c
	Namespace: namespace_f388b961
	Checksum: 0x1477C675
	Offset: 0x560
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_75fd531c()
{
	self notify("hash_3ca9ab77");
}

/*
	Name: function_b039e27b
	Namespace: namespace_f388b961
	Checksum: 0x707F6A48
	Offset: 0x580
	Size: 0x263
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self endon("hash_3ca9ab77");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	if(namespace_957e94ce::function_7922262b("gadget_overdrive_on"))
	{
		return;
	}
	wait(function_f3087faa("scr_overdrive_activationDelay_sec", 0.4));
	self.var_7d73f4ba = self function_88542fcf("specialty_deadshot");
	if(!(isdefined(self.var_7d73f4ba) && self.var_7d73f4ba))
	{
		self function_5d8fa337("specialty_deadshot");
	}
	self namespace_71e9cb84::function_e9c3870b("overdrive_state", 1);
	namespace_e216c11c::function_25294cfe("visionset", "overdrive", self, 0.4, 0.1, 1.35);
	self notify(var_dfcc01fd.var_4be20d44 + "_fired");
	level notify(var_dfcc01fd.var_4be20d44 + "_fired");
	if(self.var_3a90f16b < self.var_47c252e3 * function_f3087faa("scr_overdrive_min_health", 0.35))
	{
		self function_e17e9c98(function_f3087faa("scr_overdrive_min_health", 0.35));
	}
	self function_e2af603e("tank_rumble");
	if(function_65f192a6(self))
	{
		var_1630584c = function_e967a021("cybercom_overdrive");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_251e7cf
	Namespace: namespace_f388b961
	Checksum: 0x1C3A4265
	Offset: 0x7F0
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
	self notify("hash_3ca9ab77");
	if(!(isdefined(self.var_7d73f4ba) && self.var_7d73f4ba))
	{
		self function_e52e855c("specialty_deadshot");
	}
	self namespace_71e9cb84::function_e9c3870b("overdrive_state", 0);
}


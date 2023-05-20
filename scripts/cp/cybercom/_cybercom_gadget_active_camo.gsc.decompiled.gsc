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

#namespace namespace_eda43fb2;

/*
	Name: function_c35e6aab
	Namespace: namespace_eda43fb2
	Checksum: 0x99EC1590
	Offset: 0x428
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_eda43fb2
	Checksum: 0x8DCE94E8
	Offset: 0x438
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(1, 8, 1);
	level.var_175490fb.var_1611b636 = function_a8fb77bd();
	level.var_175490fb.var_1611b636.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_1611b636.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_1611b636.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_1611b636.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_1611b636.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_1611b636.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_1bafc2c2 = function_c4d5ec1f("gadget_active_camo_upgraded");
	namespace_dabbe128::function_95670def(&function_75fd531c);
}

/*
	Name: function_8d01efb6
	Namespace: namespace_eda43fb2
	Checksum: 0x7DB35DD1
	Offset: 0x5C0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_eda43fb2
	Checksum: 0x63FAB902
	Offset: 0x5E0
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
	Namespace: namespace_eda43fb2
	Checksum: 0x93E8D6D6
	Offset: 0x638
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	self notify("hash_1d75a6cc");
	self notify("hash_d3706a8a");
	self notify("hash_acc47db4");
}

/*
	Name: function_5d2fec30
	Namespace: namespace_eda43fb2
	Checksum: 0x99EC1590
	Offset: 0x680
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_75fd531c
	Namespace: namespace_eda43fb2
	Checksum: 0x4AD88A8D
	Offset: 0x690
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_75fd531c()
{
	self notify("hash_acc47db4");
	self notify("hash_1d75a6cc");
	self notify("hash_d3706a8a");
}

/*
	Name: function_b039e27b
	Namespace: namespace_eda43fb2
	Checksum: 0x1938CDF
	Offset: 0x6C8
	Size: 0x21B
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self endon("hash_1d75a6cc");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self namespace_71e9cb84::function_74d6b22f("camo_shader", 1);
	namespace_175490fb::function_adc40f11(var_dfcc01fd, 1);
	if(isdefined(self.var_255b9315) && self.var_255b9315)
	{
	}
	else
	{
	}
	self.var_175490fb.var_4179b836 = 0;
	self.var_255b9315 = 1;
	self.var_1611b636 = 1;
	self function_e2af603e("tank_rumble");
	self thread function_b4902c73(var_2d11f419, var_dfcc01fd, "scene_disable_player_stuff", "active_camo_taken");
	self thread function_e784c8b3();
	self thread namespace_175490fb::function_c3c6aff4(var_2d11f419, var_dfcc01fd, "changed_class", "active_camo_off");
	self thread namespace_175490fb::function_c3c6aff4(var_2d11f419, var_dfcc01fd, "cybercom_disabled", "active_camo_off");
	self thread function_cba091b7(var_2d11f419, var_dfcc01fd);
	if(function_65f192a6(self))
	{
		var_1630584c = function_e967a021("cybercom_camo");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_251e7cf
	Namespace: namespace_eda43fb2
	Checksum: 0xE1A843CC
	Offset: 0x8F0
	Size: 0xFD
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
	if(function_4bd0142f("tu1_cybercomActiveCamoIgnoreMeFix", 1))
	{
		if(isdefined(self.var_175490fb.var_4179b836) && self.var_175490fb.var_4179b836 && self.var_255b9315)
		{
		}
		else
		{
			self.var_255b9315 = 0;
		}
	}
	else if(isdefined(self.var_175490fb.var_4179b836))
	{
		self.var_255b9315 = self.var_175490fb.var_4179b836;
	}
	self.var_1611b636 = undefined;
	/#
		if(isdefined(self.var_255b9315) && self.var_255b9315)
		{
			function_2e4b8c78("Dev Block strings are not supported");
		}
	#/
	self notify("hash_acc47db4");
	self notify("hash_1d75a6cc");
}

/*
	Name: function_cba091b7
	Namespace: namespace_eda43fb2
	Checksum: 0x1A5D7BA6
	Offset: 0x9F8
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_cba091b7(var_2d11f419, var_dfcc01fd)
{
	self notify("hash_cba091b7");
	self endon("hash_cba091b7");
	self endon("hash_643a7daf");
	self endon("hash_1d75a6cc");
	self namespace_957e94ce::function_1ab5ebec("mobile_armory_in_use");
	self function_868603c7(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_b4902c73
	Namespace: namespace_eda43fb2
	Checksum: 0xC0E39802
	Offset: 0xA88
	Size: 0xE3
	Parameters: 4
	Flags: None
*/
function function_b4902c73(var_2d11f419, var_dfcc01fd, var_7ad67496, var_49ff66b8)
{
	self notify(var_49ff66b8 + var_7ad67496 + var_dfcc01fd.var_4be20d44);
	self endon(var_49ff66b8 + var_7ad67496 + var_dfcc01fd.var_4be20d44);
	self endon(var_49ff66b8);
	self endon("hash_643a7daf");
	self waittill(var_7ad67496);
	if(self function_2103ff4b(var_dfcc01fd) && isdefined(self.var_175490fb.var_2e20c9bd) && self.var_175490fb.var_2e20c9bd == var_dfcc01fd)
	{
		self function_868603c7(var_2d11f419, var_dfcc01fd);
	}
}

/*
	Name: function_8f371c2b
	Namespace: namespace_eda43fb2
	Checksum: 0xCCC0772E
	Offset: 0xB78
	Size: 0xC1
	Parameters: 4
	Flags: Private
*/
function private function_8f371c2b(var_2d11f419, var_22fd856d, var_696db07, var_a9769379)
{
	if(!isdefined(var_696db07))
	{
		var_696db07 = 300;
	}
	if(!isdefined(var_a9769379))
	{
		var_a9769379 = 1000;
	}
	self endon("hash_d3706a8a");
	self endon("hash_643a7daf");
	self notify("_camo_killReActivateOnNotify" + var_2d11f419 + var_22fd856d);
	self endon("_camo_killReActivateOnNotify" + var_2d11f419 + var_22fd856d);
	while(1)
	{
		self waittill(var_22fd856d, var_c0f4e794);
		self notify("hash_64558d25");
	}
}

/*
	Name: function_e784c8b3
	Namespace: namespace_eda43fb2
	Checksum: 0x1FAA3ACF
	Offset: 0xC48
	Size: 0x223
	Parameters: 0
	Flags: Private
*/
function private function_e784c8b3()
{
	self notify("hash_acc47db4");
	self endon("hash_acc47db4");
	var_d0c5bbcc = function_9b7fda5e("script_model", self.var_722885f3);
	var_d0c5bbcc function_e48f905e("tag_origin");
	var_d0c5bbcc function_d1d5545();
	var_d0c5bbcc.var_722885f3 = var_d0c5bbcc.var_722885f3 + VectorScale((0, 0, 1), 30);
	var_d0c5bbcc.var_3e94206a = self.var_3e94206a;
	self thread namespace_175490fb::function_f569ef38("disconnect", var_d0c5bbcc);
	self thread namespace_175490fb::function_f569ef38("active_camo_off", var_d0c5bbcc);
	self thread namespace_175490fb::function_f569ef38("delete_false_target", var_d0c5bbcc);
	self thread function_c51ef296(var_d0c5bbcc);
	var_56a6b68b = self.var_722885f3[2];
	while(isdefined(var_d0c5bbcc))
	{
		var_d0c5bbcc.var_722885f3 = var_d0c5bbcc.var_722885f3 + (function_dc99997a(-50, 50), function_dc99997a(-50, 50), function_dc99997a(-5, 5));
		if(var_d0c5bbcc.var_722885f3[2] < var_56a6b68b)
		{
			var_d0c5bbcc.var_722885f3 = (var_d0c5bbcc.var_722885f3[0], var_d0c5bbcc.var_722885f3[1], var_56a6b68b);
		}
		wait(0.5);
	}
}

/*
	Name: function_c51ef296
	Namespace: namespace_eda43fb2
	Checksum: 0xDEF7CFEE
	Offset: 0xE78
	Size: 0x5B
	Parameters: 1
	Flags: Private
*/
function private function_c51ef296(var_36649ed1)
{
	var_36649ed1 endon("hash_128f8789");
	self endon("hash_643a7daf");
	while(1)
	{
		self waittill("hash_aa1618b0", var_148fb98c);
		var_36649ed1.var_722885f3 = self.var_722885f3;
	}
}

/*
	Name: function_d349a475
	Namespace: namespace_eda43fb2
	Checksum: 0xBC6F286A
	Offset: 0xEE0
	Size: 0xDF
	Parameters: 0
	Flags: Private
*/
function private function_d349a475()
{
	self notify("hash_d349a475");
	self endon("hash_d349a475");
	self endon("hash_d3706a8a");
	self endon("hash_64558d25");
	while(1)
	{
		self waittill("hash_45ea3ed1", var_2d11f419, var_dfcc01fd);
		if(isdefined(var_dfcc01fd) && var_dfcc01fd == level.var_175490fb.var_1bafc2c2)
		{
			wait(function_4bd0142f("scr_active_camo_melee_escape_duration_SEC", 1));
			if(!self function_7620e707(var_2d11f419))
			{
				self function_c0c5359e(var_2d11f419, var_dfcc01fd, 0);
			}
		}
	}
}


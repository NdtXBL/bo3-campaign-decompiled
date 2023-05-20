#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
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
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\player_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_7cb6cd95;

/*
	Name: function_c35e6aab
	Namespace: namespace_7cb6cd95
	Checksum: 0x6DA6A11E
	Offset: 0x7B0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_71e9cb84::function_50f16166("toplayer", "hijack_vehicle_transition", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "hijack_static_effect", 1, 7, "float");
	namespace_71e9cb84::function_50f16166("toplayer", "sndInDrivableVehicle", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "vehicle_hijacked", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "hijack_spectate", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "hijack_static_ramp_up", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "vehicle_hijacked", 1, 1, "int");
	namespace_e216c11c::function_9be319f9("visionset", "hijack_vehicle", 1, 5, 1, 1);
	namespace_e216c11c::function_9be319f9("visionset", "hijack_vehicle_blur", 1, 6, 1, 1);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
}

/*
	Name: function_d290ebfa
	Namespace: namespace_7cb6cd95
	Checksum: 0xB2205049
	Offset: 0x990
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(0, 32);
	level.var_175490fb.var_76af92c1 = function_a8fb77bd();
	level.var_175490fb.var_76af92c1.var_875da84b = &function_875da84b;
	level.var_175490fb.var_76af92c1.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_76af92c1.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_76af92c1.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_76af92c1.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_76af92c1.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_76af92c1.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_76af92c1.var_4135a1c4 = &function_4135a1c4;
}

/*
	Name: function_aebcf025
	Namespace: namespace_7cb6cd95
	Checksum: 0x1FD3723D
	Offset: 0xB18
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
	self namespace_71e9cb84::function_e9c3870b("hijack_spectate", 0);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_ramp_up", 0);
	self namespace_82b91a51::function_56cee95(0);
	self function_7198d073(0);
}

/*
	Name: function_875da84b
	Namespace: namespace_7cb6cd95
	Checksum: 0xA56BADAB
	Offset: 0xBB8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_7cb6cd95
	Checksum: 0xF658735E
	Offset: 0xBD0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_7cb6cd95
	Checksum: 0x2B7954FA
	Offset: 0xBF0
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_110c156a = 1;
	self.var_175490fb.var_ff7f4cdd = function_4bd0142f("scr_security_breach_lifetime", 30);
	if(self function_1a9006bd("cybercom_securitybreach") == 2)
	{
		self.var_175490fb.var_ff7f4cdd = function_4bd0142f("scr_security_breach_upgraded_lifetime", 60);
	}
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self.var_175490fb.var_73d069a7 = &function_17342509;
	self.var_175490fb.var_46483c8f = 63;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_7cb6cd95
	Checksum: 0x815AAC1A
	Offset: 0xD38
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
	self.var_175490fb.var_9d8e0758 = undefined;
	self.var_175490fb.var_c40accd3 = undefined;
	self.var_175490fb.var_46483c8f = undefined;
	self.var_175490fb.var_73d069a7 = undefined;
}

/*
	Name: function_5d2fec30
	Namespace: namespace_7cb6cd95
	Checksum: 0x99EC1590
	Offset: 0xDB8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_17342509
	Namespace: namespace_7cb6cd95
	Checksum: 0x773A4088
	Offset: 0xDC8
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_17342509(var_2d11f419, var_dfcc01fd)
{
	self function_c0c5359e(var_2d11f419, var_dfcc01fd);
	function_b039e27b(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_b039e27b
	Namespace: namespace_7cb6cd95
	Checksum: 0x7D4EE75B
	Offset: 0xE20
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self thread function_7c96ae94(var_2d11f419, var_dfcc01fd);
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_251e7cf
	Namespace: namespace_7cb6cd95
	Checksum: 0x28B29453
	Offset: 0xE80
	Size: 0x45
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
	self thread namespace_175490fb::function_d51412df(var_dfcc01fd);
	self.var_175490fb.var_301030f7 = undefined;
	self notify("hash_8216024");
}

/*
	Name: function_4135a1c4
	Namespace: namespace_7cb6cd95
	Checksum: 0x2635FA08
	Offset: 0xED0
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_4135a1c4(var_2d11f419, var_dfcc01fd)
{
	if(!(isdefined(self.var_175490fb.var_301030f7) && self.var_175490fb.var_301030f7))
	{
		/#
			namespace_33b293fd::function_a7ee953(self.var_175490fb.var_2e20c9bd == var_dfcc01fd);
		#/
		self notify("hash_50db7e6");
		self thread namespace_175490fb::function_2006f7d0(var_2d11f419, var_dfcc01fd, self.var_175490fb.var_110c156a);
		self.var_175490fb.var_301030f7 = 1;
		self function_b8862210("gdt_securitybreach_target", self);
	}
}

/*
	Name: function_602b28e9
	Namespace: namespace_7cb6cd95
	Checksum: 0x32AF010
	Offset: 0xFA8
	Size: 0x1D3
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(var_b07228b6)
{
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_hijack"))
	{
		if(isdefined(var_b07228b6.var_406cec76) && var_b07228b6.var_406cec76)
		{
			self namespace_175490fb::function_29bf9dee(var_b07228b6, 4);
		}
		else
		{
			self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		}
		return 0;
	}
	if(isdefined(var_b07228b6.var_5001b74f) && var_b07228b6.var_5001b74f != self)
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 7);
		return 0;
	}
	if(isdefined(var_b07228b6.var_c79c5212) && var_b07228b6.var_c79c5212)
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 4);
		return 0;
	}
	if(isdefined(var_b07228b6.var_93b5a824) && var_b07228b6.var_93b5a824)
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 6);
		return 0;
	}
	if(isdefined(var_b07228b6.var_d3f57f67) && var_b07228b6.var_d3f57f67)
	{
		return 0;
	}
	if(!function_85e4c3b3(var_b07228b6))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	return 1;
}

/*
	Name: function_8aac802c
	Namespace: namespace_7cb6cd95
	Checksum: 0x735FCC3
	Offset: 0x1188
	Size: 0xA1
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	var_6050ab17 = function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
	var_157acf1b = function_b8494651("allies");
	return function_525ae497(var_6050ab17, var_157acf1b, 0, 0);
}

/*
	Name: function_7c96ae94
	Namespace: namespace_7cb6cd95
	Checksum: 0x2F866C60
	Offset: 0x1238
	Size: 0x323
	Parameters: 2
	Flags: Private
*/
function private function_7c96ae94(var_2d11f419, var_dfcc01fd)
{
	var_c95a13c6 = 0;
	var_a7491a97 = 0;
	foreach(var_c5b0e858 in self.var_175490fb.var_d1460543)
	{
		if(isdefined(var_c5b0e858.var_b07228b6) && (isdefined(var_c5b0e858.var_cd83ba7b) && var_c5b0e858.var_cd83ba7b))
		{
			if(var_c5b0e858.var_cd83ba7b == 1)
			{
				if(!namespace_175490fb::function_7a7d1608(var_c5b0e858.var_b07228b6, var_dfcc01fd))
				{
					continue;
				}
				self thread namespace_f74b04eb::function_96ed590f("cybercom_uses_control");
				var_c5b0e858.var_b07228b6 thread function_ecfa108e(self, var_dfcc01fd);
				var_a7491a97++;
				continue;
			}
			if(var_c5b0e858.var_cd83ba7b == 2)
			{
				var_c95a13c6++;
			}
		}
	}
	if(var_c95a13c6 && !var_a7491a97)
	{
		self.var_175490fb.var_d1460543 = [];
		self namespace_175490fb::function_29bf9dee(undefined, 1, 0);
	}
	if(!var_c95a13c6 && var_a7491a97)
	{
		var_668a3301 = var_dfcc01fd.var_4be20d44 == "gadget_remote_hijack_upgraded";
		if(isdefined(var_668a3301) && var_668a3301)
		{
		}
		else
		{
		}
		self function_921a1574("_upgraded" + "");
	}
	namespace_175490fb::function_adc40f11(var_dfcc01fd, var_a7491a97);
	if(var_a7491a97 && function_65f192a6(self))
	{
		var_1630584c = function_e967a021("cybercom_hijack");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "kills", "statValue", var_a7491a97);
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_cc8d5ab0
	Namespace: namespace_7cb6cd95
	Checksum: 0x109F5F2B
	Offset: 0x1568
	Size: 0xEB
	Parameters: 5
	Flags: Private
*/
function private function_cc8d5ab0(var_5dc5e20a, var_e29c0022, var_67520c6a, var_102e3d58, var_62240a71)
{
	wait(var_67520c6a);
	if(var_102e3d58 > 0)
	{
		namespace_e216c11c::function_25294cfe("visionset", var_e29c0022, var_5dc5e20a, var_62240a71, 0, 0);
		namespace_e216c11c::function_a5218027("visionset", var_e29c0022, var_5dc5e20a);
	}
	else
	{
		namespace_e216c11c::function_25294cfe("visionset", var_e29c0022, var_5dc5e20a, 0, 0, var_62240a71);
		namespace_e216c11c::function_a5218027("visionset", var_e29c0022, var_5dc5e20a);
	}
}

/*
	Name: function_637db461
	Namespace: namespace_7cb6cd95
	Checksum: 0x8A9F6750
	Offset: 0x1660
	Size: 0x81
	Parameters: 2
	Flags: Private
*/
function private function_637db461(var_5dc5e20a, var_dfcc01fd)
{
	if(isdefined(self.var_c79c5212) && self.var_c79c5212)
	{
		var_5dc5e20a namespace_175490fb::function_29bf9dee(self, 4);
		return 0;
	}
	if(isdefined(self.var_93b5a824) && self.var_93b5a824)
	{
		var_5dc5e20a namespace_175490fb::function_29bf9dee(self, 6);
		return 0;
	}
	return 0;
}

/*
	Name: function_ecfa108e
	Namespace: namespace_7cb6cd95
	Checksum: 0x47545DC0
	Offset: 0x16F0
	Size: 0x61B
	Parameters: 2
	Flags: Private
*/
function private function_ecfa108e(var_5dc5e20a, var_dfcc01fd)
{
	wait(function_f3087faa("scr_security_breach_activate_delay", 0.5));
	if(!isdefined(self))
	{
		return;
	}
	if(!function_85e4c3b3(self))
	{
		return;
	}
	if(var_5dc5e20a namespace_564407fb::function_38a9aff8())
	{
		return;
	}
	if(isdefined(var_5dc5e20a.var_175490fb.var_a5aee4b9) && var_5dc5e20a.var_175490fb.var_a5aee4b9)
	{
		return;
	}
	if(isdefined(self.var_f86fc308))
	{
		self function_13193225(self.var_f86fc308);
	}
	var_5ed0c283 = self function_c7f3ce11();
	self notify("hash_f8c5dd60", var_dfcc01fd, var_5dc5e20a);
	self notify("hash_bda2a10e", var_5ed0c283);
	level notify("hash_bda2a10e", var_5ed0c283);
	var_5dc5e20a function_a0b29c50(0, 0);
	var_5dc5e20a function_a0b29c50(1, 0);
	var_5dc5e20a function_a0b29c50(2, 0);
	var_5dc5e20a namespace_175490fb::function_6c141a2d(1);
	if(function_e70ab977(self) && self.var_8fc0e50e == "quadtank")
	{
		var_5dc5e20a notify("hash_52c9c74a", "CP_CONTROL_QUAD");
	}
	var_5dc5e20a notify("hash_76af92c1", self);
	waittillframeend;
	self function_422037f5();
	var_66ff806d = self.var_66ff806d;
	var_11ee1e64 = function_bda2a10e(self);
	if(!isdefined(var_11ee1e64))
	{
		return;
	}
	var_11ee1e64 function_4083a98e();
	level notify("hash_91737d19", var_11ee1e64, var_5ed0c283);
	var_5dc5e20a notify("hash_91737d19", var_11ee1e64, var_5ed0c283);
	var_11ee1e64.var_2dd707 = 0;
	var_11ee1e64.var_c79c5212 = 1;
	var_11ee1e64.var_a076880e = undefined;
	var_11ee1e64.var_93b5a824 = 1;
	var_11ee1e64.var_5e36fd2e = var_5dc5e20a;
	var_11ee1e64.var_66ff806d = var_66ff806d;
	var_11ee1e64 function_ca711294(var_5dc5e20a.var_3e94206a);
	var_11ee1e64.var_3a90f16b = var_11ee1e64.var_38a62b0e;
	var_11ee1e64.var_fb7ce72a = &function_637db461;
	if(isdefined(self.var_72f54197))
	{
		var_11ee1e64.var_72f54197 = self.var_72f54197;
	}
	if(isdefined(self.var_b0ac175a))
	{
		var_11ee1e64.var_b0ac175a = self.var_b0ac175a;
	}
	var_d229c1e9 = function_a8fb77bd();
	var_5dc5e20a function_dc86efaa(var_d229c1e9, "begin");
	if(!isdefined(var_11ee1e64))
	{
		var_5dc5e20a function_4890e520();
		var_5dc5e20a namespace_175490fb::function_e60e89fe();
		return;
	}
	var_5dc5e20a.var_a03af093 = var_11ee1e64;
	var_5dc5e20a function_dc86efaa(var_d229c1e9, "cloak");
	var_11ee1e64 thread function_3dcfd0d8(function_4bd0142f("scr_security_breach_no_damage_time", 8), var_5dc5e20a);
	if(isdefined(var_11ee1e64.var_9d34dca7) && var_11ee1e64.var_9d34dca7 != "turret_sentry")
	{
		var_11ee1e64 thread function_4b91c7e5(var_5dc5e20a, var_5dc5e20a.var_722885f3);
	}
	var_11ee1e64.var_3c5bf47d = 1;
	var_11ee1e64 function_991ad231();
	var_11ee1e64 function_16337f9e(var_5dc5e20a, 0);
	var_11ee1e64 function_9ed72b0c();
	var_5dc5e20a function_dc86efaa(var_d229c1e9, "cloak_wait");
	var_11ee1e64 namespace_71e9cb84::function_74d6b22f("vehicle_hijacked", 1);
	var_11ee1e64.var_3c5bf47d = undefined;
	var_11ee1e64 function_991ad231();
	var_11ee1e64 thread function_7da5b5d4(var_5dc5e20a);
	var_5dc5e20a function_dc86efaa(var_d229c1e9, "return_wait");
	namespace_e216c11c::function_a5218027("visionset", "hijack_vehicle_blur", var_5dc5e20a);
	var_5dc5e20a function_dc86efaa(var_d229c1e9, "finish");
}

/*
	Name: function_dc86efaa
	Namespace: namespace_7cb6cd95
	Checksum: 0x7101DC1
	Offset: 0x1D18
	Size: 0x555
	Parameters: 2
	Flags: None
*/
function function_dc86efaa(var_b6c35df6, var_d51654a4)
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	var_5dc5e20a = self;
	switch(var_d51654a4)
	{
		case "begin":
		{
			var_5dc5e20a function_f2e7970f("vehicle.outOfRange", 0);
			var_5dc5e20a function_83fd42b5();
			var_5dc5e20a namespace_175490fb::function_6c141a2d(1);
			wait(0.1);
			return;
		}
		case "cloak":
		{
			var_b6c35df6.var_d45c1470 = var_5dc5e20a function_653ba713();
			var_b6c35df6.var_e29151a8 = var_5dc5e20a.var_255b9315;
			var_b6c35df6.var_d40d5a7d = var_5dc5e20a.var_1e983b11;
			var_5dc5e20a.var_1e983b11 = 0;
			var_5dc5e20a.var_255b9315 = 1;
			var_5dc5e20a function_1b947e2a("weapon_hud_visible", 0);
			var_5dc5e20a function_fe722fcf("crouch");
			var_5dc5e20a namespace_71e9cb84::function_74d6b22f("camo_shader", 2);
			var_5dc5e20a thread function_13f4170a(2);
			var_5dc5e20a thread function_cc8d5ab0(var_5dc5e20a, "hijack_vehicle", 0.1, 1, 0.1);
			var_5dc5e20a waittill("hash_e08a6f71");
			var_5dc5e20a function_5e6740a8(1);
			namespace_e216c11c::function_25294cfe("visionset", "hijack_vehicle_blur", var_5dc5e20a);
			var_5dc5e20a function_50ccee8d();
			var_5dc5e20a function_422037f5();
			var_5dc5e20a function_9ce09198(0);
			var_5dc5e20a namespace_71e9cb84::function_74d6b22f("camo_shader", 1);
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndInDrivableVehicle", 1);
			var_5dc5e20a namespace_5dc5e20a::function_18cd2f76();
			return;
		}
		case "cloak_wait":
		{
			var_5dc5e20a waittill("hash_58a3879b");
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("vehicle_hijacked", 1);
			return "return_wait";
		}
		case "return_wait":
		{
			var_5dc5e20a waittill("hash_c68b15c8");
			var_5dc5e20a namespace_5dc5e20a::function_75f710f6(1);
			var_5dc5e20a function_b99d72b(1);
			var_5dc5e20a thread function_cc8d5ab0(var_5dc5e20a, "hijack_vehicle", 0, -1, 0.1);
			return;
		}
		case "finish":
		{
			var_5dc5e20a function_48f26766();
			var_5dc5e20a function_4083a98e();
			var_5dc5e20a function_9ce09198(1);
			var_5dc5e20a function_fe722fcf(var_b6c35df6.var_d45c1470);
			var_5dc5e20a function_5e6740a8(0);
			var_5dc5e20a.var_1e983b11 = var_b6c35df6.var_d40d5a7d;
			var_5dc5e20a waittill("hash_58a3879b");
			var_5dc5e20a function_b99d72b(0);
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("vehicle_hijacked", 0);
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndInDrivableVehicle", 0);
			var_5dc5e20a.var_a03af093 = undefined;
			var_5dc5e20a function_4890e520();
			var_5dc5e20a.var_255b9315 = 0;
			var_5dc5e20a function_1b947e2a("weapon_hud_visible", 1);
			var_5dc5e20a namespace_175490fb::function_e60e89fe();
			wait(1);
			var_5dc5e20a namespace_71e9cb84::function_74d6b22f("camo_shader", 0);
			var_5dc5e20a notify("hash_54dae2cc");
			return;
		}
	}
}

/*
	Name: function_13f4170a
	Namespace: namespace_7cb6cd95
	Checksum: 0x117CDE52
	Offset: 0x2278
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_13f4170a(var_102e3d58)
{
	self endon("hash_128f8789");
	self notify("hash_13f4170a");
	self endon("hash_13f4170a");
	self namespace_71e9cb84::function_e9c3870b("hijack_vehicle_transition", var_102e3d58);
	namespace_82b91a51::function_76f13293();
	self notify("hash_e08a6f71");
	wait(0.2);
	wait(0.2);
	self notify("hash_58a3879b");
	self namespace_71e9cb84::function_e9c3870b("hijack_vehicle_transition", 1);
}

/*
	Name: function_6c745562
	Namespace: namespace_7cb6cd95
	Checksum: 0xBC21C0C5
	Offset: 0x2330
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_6c745562(var_a3d46ee4)
{
	function_1233641();
	if(isdefined(var_a3d46ee4) && function_65f192a6(self))
	{
		self.var_175490fb.var_98ef0723 = var_a3d46ee4;
		if(isdefined(var_a3d46ee4.var_a33b36db))
		{
			var_72254e15 = function_d6df1f20(var_a3d46ee4.var_a33b36db, " ");
			/#
				namespace_33b293fd::function_a7ee953(var_72254e15.size == 2);
			#/
			self.var_175490fb.var_303442d8 = function_b6b79a0(var_72254e15[0]) * function_b6b79a0(var_72254e15[0]);
			self.var_175490fb.var_e613305a = function_b6b79a0(var_72254e15[1]) * function_b6b79a0(var_72254e15[1]);
		}
	}
}

/*
	Name: function_1233641
	Namespace: namespace_7cb6cd95
	Checksum: 0x7B230C7B
	Offset: 0x2480
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_1233641()
{
	self.var_175490fb.var_98ef0723 = undefined;
	self.var_175490fb.var_303442d8 = undefined;
	self.var_175490fb.var_e613305a = undefined;
}

/*
	Name: function_4b91c7e5
	Namespace: namespace_7cb6cd95
	Checksum: 0xF0189EF0
	Offset: 0x24C0
	Size: 0x40F
	Parameters: 2
	Flags: Private
*/
function private function_4b91c7e5(var_5dc5e20a, var_6f1739c2)
{
	self endon("hash_128f8789");
	var_5dc5e20a endon("hash_c68b15c8");
	var_5dc5e20a endon("hash_ac145594");
	var_5dc5e20a endon("hash_643a7daf");
	var_5dc5e20a waittill("hash_58a3879b");
	wait(0.1);
	var_7c5f9b37 = 0.95;
	var_af9c49a8 = undefined;
	while(1)
	{
		var_ef8d4ff3 = 1;
		var_21793546 = function_4bd0142f("scr_security_breach_lose_contact_distanceSQ", function_4bd0142f("scr_security_breach_lose_contact_distance", 1200) * function_4bd0142f("scr_security_breach_lose_contact_distance", 1200));
		var_60408929 = function_4bd0142f("scr_security_breach_lost_contact_distanceSQ", function_4bd0142f("scr_security_breach_lost_contact_distance", 2400) * function_4bd0142f("scr_security_breach_lost_contact_distance", 2400));
		if(isdefined(var_5dc5e20a.var_175490fb.var_98ef0723))
		{
			if(isdefined(var_5dc5e20a.var_175490fb.var_303442d8))
			{
				var_21793546 = var_5dc5e20a.var_175490fb.var_303442d8;
				var_60408929 = var_5dc5e20a.var_175490fb.var_e613305a;
			}
			if(self function_32fa5072(var_5dc5e20a.var_175490fb.var_98ef0723))
			{
				var_35c84e32 = 0;
				var_53dfdeb0 = 0;
				var_ef8d4ff3 = 0;
			}
		}
		if(self.var_8fc0e50e === "turret")
		{
			var_35c84e32 = 0;
			var_53dfdeb0 = 0;
			var_ef8d4ff3 = 0;
		}
		if(var_ef8d4ff3)
		{
			var_53dfdeb0 = function_cb3d1c9b(self.var_722885f3, var_6f1739c2);
			if(var_53dfdeb0 < var_21793546)
			{
				var_35c84e32 = 0;
			}
			else if(var_53dfdeb0 >= var_60408929)
			{
				var_35c84e32 = var_7c5f9b37;
			}
			else
			{
				var_4de1f24c = var_60408929 - var_21793546;
				var_35c84e32 = namespace_d73b9283::function_31931862(var_53dfdeb0 - var_21793546 / var_4de1f24c, 0, var_7c5f9b37);
			}
			var_5ae22608 = var_53dfdeb0 >= function_f3087faa("scr_security_breach_lost_contact_warning_distance_percent", 0.6) * var_60408929;
			if(var_5ae22608 !== var_af9c49a8)
			{
				var_5dc5e20a function_f2e7970f("vehicle.outOfRange", var_5ae22608);
				var_af9c49a8 = var_5ae22608;
			}
		}
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("hijack_static_effect", var_35c84e32);
		if(var_53dfdeb0 > var_60408929)
		{
			self function_ca711294("axis");
			self.var_2dd707 = 1;
			self.var_5e36fd2e = undefined;
			self.var_ffe1e6db = 1;
			if(isdefined(var_5dc5e20a))
			{
				self function_2992720d(self.var_722885f3, var_5dc5e20a);
			}
			else
			{
				self function_2992720d();
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_3dcfd0d8
	Namespace: namespace_7cb6cd95
	Checksum: 0xC1EE1FE1
	Offset: 0x28D8
	Size: 0x6B
	Parameters: 2
	Flags: Private
*/
function private function_3dcfd0d8(var_60db70fa, var_5dc5e20a)
{
	self endon("hash_128f8789");
	self.var_2dd707 = 0;
	var_5dc5e20a namespace_82b91a51::function_9fcf3cd8(var_60db70fa, "return_to_body");
	self.var_2dd707 = !function_29e06050(var_5dc5e20a);
}

/*
	Name: function_6adcb22e
	Namespace: namespace_7cb6cd95
	Checksum: 0x115576B7
	Offset: 0x2950
	Size: 0x193
	Parameters: 1
	Flags: Private
*/
function private function_6adcb22e(var_96fa87af)
{
	self endon("hash_ab1f9ea1");
	self namespace_82b91a51::function_56cee95(1);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_ramp_up", 1);
	if(isdefined(var_96fa87af.var_8fc0e50e) && var_96fa87af.var_8fc0e50e == "wasp" && (!isdefined(var_96fa87af.var_66ff806d) && var_96fa87af.var_66ff806d))
	{
		self thread function_5d471974(var_96fa87af);
	}
	else
	{
		self namespace_71e9cb84::function_e9c3870b("hijack_spectate", 1);
	}
	self function_7198d073(1);
	self waittill("hash_e08a6f71");
	self namespace_71e9cb84::function_e9c3870b("hijack_static_ramp_up", 0);
	self function_7198d073(0);
	self namespace_71e9cb84::function_e9c3870b("hijack_spectate", 0);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
	self namespace_82b91a51::function_56cee95(0);
}

/*
	Name: function_5d471974
	Namespace: namespace_7cb6cd95
	Checksum: 0x884DAC14
	Offset: 0x2AF0
	Size: 0x21B
	Parameters: 1
	Flags: Private
*/
function private function_5d471974(var_96fa87af)
{
	var_1a859714 = function_bc7ce905(var_96fa87af.var_6ab6f4fd);
	var_f6424f4e = VectorScale(var_1a859714, -200);
	var_f6424f4e = (var_f6424f4e[0], var_f6424f4e[1], var_96fa87af.var_722885f3[2] + 72);
	var_c1a733c2 = function_9b7fda5e("script_model", var_96fa87af.var_722885f3 + var_f6424f4e);
	var_c1a733c2 function_e48f905e("tag_origin");
	if(!(isdefined(var_96fa87af.var_eeac7f48) && var_96fa87af.var_eeac7f48))
	{
		var_c1a733c2 function_37f7858a(var_96fa87af, "tag_origin");
	}
	self function_d2f3e35b(1);
	var_722885f3 = var_96fa87af.var_722885f3;
	wait(0.05);
	self function_9df5cf69(var_c1a733c2);
	if(isdefined(var_96fa87af))
	{
		self function_e3592cf2(var_96fa87af);
	}
	else
	{
		self function_e3592cf2(var_722885f3 + VectorScale((0, 0, 1), 50));
	}
	self namespace_82b91a51::function_5b7e3888("transition_in_do_switch", "spawned", "disconnect", "death", "return_to_body");
	var_c1a733c2 function_dc8c8404();
}

/*
	Name: function_1a1b4f00
	Namespace: namespace_7cb6cd95
	Checksum: 0x6D9B32E1
	Offset: 0x2D18
	Size: 0xA7
	Parameters: 1
	Flags: Private
*/
function private function_1a1b4f00(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_c68b15c8");
	self waittill("hash_128f8789");
	var_5dc5e20a thread function_6adcb22e(self);
	wait(3);
	var_5dc5e20a notify("hash_ac145594");
	var_5dc5e20a thread function_13f4170a(3);
	var_5dc5e20a waittill("hash_e08a6f71");
	waittillframeend;
	var_5dc5e20a function_52fddbd0();
	var_5dc5e20a notify("hash_c68b15c8", 1);
}

/*
	Name: function_5c5ecd44
	Namespace: namespace_7cb6cd95
	Checksum: 0xDCC93333
	Offset: 0x2DC8
	Size: 0x10B
	Parameters: 1
	Flags: Private
*/
function private function_5c5ecd44(var_5dc5e20a)
{
	self endon("hash_128f8789");
	var_5dc5e20a endon("hash_c68b15c8");
	self namespace_82b91a51::function_5b7e3888("unlink", "exit_vehicle");
	if(game["state"] == "postgame" || (isdefined(level.var_6b0d921) && level.var_6b0d921))
	{
		return;
	}
	self function_ca711294("axis");
	self.var_2dd707 = 1;
	self.var_5e36fd2e = undefined;
	if(isdefined(var_5dc5e20a))
	{
		self function_2992720d(self.var_722885f3, var_5dc5e20a, var_5dc5e20a, function_c4d5ec1f("gadget_remote_hijack"));
	}
	else
	{
		self function_2992720d();
	}
}

/*
	Name: function_7da5b5d4
	Namespace: namespace_7cb6cd95
	Checksum: 0x99F3E9A8
	Offset: 0x2EE0
	Size: 0x191
	Parameters: 1
	Flags: Private
*/
function private function_7da5b5d4(var_5dc5e20a)
{
	self thread function_1a1b4f00(var_5dc5e20a);
	self thread function_5c5ecd44(var_5dc5e20a);
	var_d2f6fb2e = var_5dc5e20a.var_722885f3;
	var_1fd4d857 = var_5dc5e20a.var_6ab6f4fd;
	var_5dc5e20a.var_175490fb.var_3fd69aad = 1;
	self.var_aafc8cd9 = 1;
	var_5dc5e20a waittill("hash_c68b15c8", var_de4046a1);
	wait(0.05);
	var_5dc5e20a function_a30814d(var_d2f6fb2e);
	var_5dc5e20a function_eda2be50(var_1fd4d857);
	wait(0.05);
	if(isdefined(self))
	{
		self function_ca711294("axis");
		self.var_2dd707 = 1;
		self.var_5e36fd2e = undefined;
		if(isdefined(var_5dc5e20a))
		{
			self function_2992720d(self.var_722885f3, var_5dc5e20a);
		}
		else
		{
			self function_2992720d();
		}
	}
	var_5dc5e20a.var_175490fb.var_3fd69aad = undefined;
}

/*
	Name: function_62faeda6
	Namespace: namespace_7cb6cd95
	Checksum: 0x57D06F1D
	Offset: 0x3080
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_62faeda6()
{
	self function_4b9f6977();
	if(isdefined(self.var_7d33cd9d))
	{
		self function_cb53a41e(self.var_7d33cd9d);
		wait(1);
	}
	self function_1f3745c0(self.var_aca023fb);
}

/*
	Name: function_c5ed98df
	Namespace: namespace_7cb6cd95
	Checksum: 0xB9E63F93
	Offset: 0x30F0
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_c5ed98df(var_bc319dba)
{
	self.var_7d33cd9d = self function_48c6a3a2();
	self.var_aca023fb = function_c4d5ec1f(var_bc319dba);
	self function_860a040a(self.var_aca023fb);
	self function_cb53a41e(self.var_aca023fb);
	self function_518a4a08();
}

/*
	Name: function_43b801ea
	Namespace: namespace_7cb6cd95
	Checksum: 0x82C09A7B
	Offset: 0x31A0
	Size: 0x65
	Parameters: 2
	Flags: None
*/
function function_43b801ea(var_7eb013a5, var_270018c4)
{
	while(1)
	{
		level waittill("hash_91737d19", var_11ee1e64, var_5ed0c283);
		if(var_5ed0c283 == var_270018c4)
		{
			var_11ee1e64.var_66ff806d = var_7eb013a5;
			return;
		}
	}
}

/*
	Name: function_f002d0f9
	Namespace: namespace_7cb6cd95
	Checksum: 0xC8D290A7
	Offset: 0x3210
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f002d0f9()
{
	self endon("hash_128f8789");
	self waittill("hash_bda2a10e", var_3c0fc0de);
	level thread function_43b801ea(0, var_3c0fc0de);
}

/*
	Name: function_664c9cd6
	Namespace: namespace_7cb6cd95
	Checksum: 0x635D22C4
	Offset: 0x3260
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_664c9cd6()
{
	self function_ca711294("axis");
	self.var_2dd707 = 1;
	self.var_5e36fd2e = undefined;
	self function_c3945cd5(self.var_3a90f16b, self.var_722885f3);
}


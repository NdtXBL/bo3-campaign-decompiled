#using scripts\codescripts\struct;
#using scripts\cp\_bb;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget_active_camo;
#using scripts\cp\cybercom\_cybercom_gadget_cacophany;
#using scripts\cp\cybercom\_cybercom_gadget_concussive_wave;
#using scripts\cp\cybercom\_cybercom_gadget_electrostatic_strike;
#using scripts\cp\cybercom\_cybercom_gadget_exosuitbreakdown;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_gadget_forced_malfunction;
#using scripts\cp\cybercom\_cybercom_gadget_iff_override;
#using scripts\cp\cybercom\_cybercom_gadget_immolation;
#using scripts\cp\cybercom\_cybercom_gadget_misdirection;
#using scripts\cp\cybercom\_cybercom_gadget_mrpukey;
#using scripts\cp\cybercom\_cybercom_gadget_overdrive;
#using scripts\cp\cybercom\_cybercom_gadget_rapid_strike;
#using scripts\cp\cybercom\_cybercom_gadget_ravage_core;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\cybercom\_cybercom_gadget_sensory_overload;
#using scripts\cp\cybercom\_cybercom_gadget_servo_shortout;
#using scripts\cp\cybercom\_cybercom_gadget_smokescreen;
#using scripts\cp\cybercom\_cybercom_gadget_surge;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_gadget_unstoppable_force;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_d00ec32;

/*
	Name: function_c35e6aab
	Namespace: namespace_d00ec32
	Checksum: 0xAF966D7D
	Offset: 0x750
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_ea01175::function_c35e6aab();
	namespace_7cb6cd95::function_c35e6aab();
	namespace_528b4613::function_c35e6aab();
	namespace_4bc37cb1::function_c35e6aab();
	namespace_491e7803::function_c35e6aab();
	namespace_63d98895::function_c35e6aab();
	namespace_9cc756f9::function_c35e6aab();
	namespace_f388b961::function_c35e6aab();
	namespace_354e20c0::function_c35e6aab();
	namespace_687c8387::function_c35e6aab();
	namespace_eda43fb2::function_c35e6aab();
	namespace_6dcc04c7::function_c35e6aab();
	namespace_328b6406::function_c35e6aab();
	namespace_a56eec64::function_c35e6aab();
	namespace_64276cf9::function_c35e6aab();
	namespace_9c3956fd::function_c35e6aab();
	namespace_3ed98204::function_c35e6aab();
	namespace_11fb1f28::function_c35e6aab();
	namespace_d9c8cca1::function_c35e6aab();
	namespace_690a49a::function_c35e6aab();
	namespace_e44205a2::function_c35e6aab();
}

/*
	Name: function_d290ebfa
	Namespace: namespace_d00ec32
	Checksum: 0x7591850A
	Offset: 0x8B0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_528b4613::function_d290ebfa();
	namespace_491e7803::function_d290ebfa();
	namespace_63d98895::function_d290ebfa();
	namespace_ea01175::function_d290ebfa();
	namespace_7cb6cd95::function_d290ebfa();
	namespace_4bc37cb1::function_d290ebfa();
	namespace_9cc756f9::function_d290ebfa();
	namespace_f388b961::function_d290ebfa();
	namespace_11fb1f28::function_d290ebfa();
	namespace_9c3956fd::function_d290ebfa();
	namespace_eda43fb2::function_d290ebfa();
	namespace_687c8387::function_d290ebfa();
	namespace_354e20c0::function_d290ebfa();
	namespace_328b6406::function_d290ebfa();
	namespace_64276cf9::function_d290ebfa();
	namespace_d9c8cca1::function_d290ebfa();
	namespace_6dcc04c7::function_d290ebfa();
	namespace_e44205a2::function_d290ebfa();
	namespace_3ed98204::function_d290ebfa();
	namespace_a56eec64::function_d290ebfa();
	namespace_690a49a::function_d290ebfa();
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_d00ec32
	Checksum: 0x78F4B70C
	Offset: 0xA50
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self thread function_48868896();
}

/*
	Name: function_aebcf025
	Namespace: namespace_d00ec32
	Checksum: 0x2C271FD7
	Offset: 0xA78
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self thread function_12bffd86();
}

/*
	Name: function_12bffd86
	Namespace: namespace_d00ec32
	Checksum: 0xB6388276
	Offset: 0xAA0
	Size: 0x18F
	Parameters: 0
	Flags: None
*/
function function_12bffd86()
{
	self notify("hash_12bffd86");
	self endon("hash_12bffd86");
	self endon("hash_643a7daf");
	while(1)
	{
		var_5d74e4a2 = self namespace_82b91a51::function_45ce26d("cybercom_activation_failed", "cybercom_activation_succeeded");
		if(!isdefined(var_5d74e4a2))
		{
			continue;
		}
		if(!isdefined(self.var_175490fb.var_2e20c9bd))
		{
			continue;
		}
		var_28189c49 = function_1a6a2760(self.var_175490fb.var_2e20c9bd);
		var_668a3301 = self function_1a9006bd(var_28189c49.var_4be20d44) == 2;
		if(var_5d74e4a2 == "cybercom_activation_succeeded")
		{
			if(isdefined(var_668a3301) && var_668a3301)
			{
			}
			else
			{
			}
			var_48b937ab = "_upgraded" + "";
		}
		else
		{
			var_48b937ab = "gdt_cybercore_activate_fail";
		}
		if(!(isdefined(var_28189c49.var_53b7ff50) && var_28189c49.var_53b7ff50))
		{
			self function_921a1574(var_48b937ab);
		}
	}
}

/*
	Name: function_36b56038
	Namespace: namespace_d00ec32
	Checksum: 0x3998C94E
	Offset: 0xC38
	Size: 0x15D
	Parameters: 3
	Flags: None
*/
function function_36b56038(var_fe311e35, var_ad23e503, var_53b7ff50)
{
	if(!isdefined(var_53b7ff50))
	{
		var_53b7ff50 = 0;
	}
	if(!isdefined(level.var_175490fb))
	{
		namespace_175490fb::function_e6cab0ff();
	}
	if(function_b6bf05b2(var_fe311e35, var_ad23e503) == undefined)
	{
		var_28189c49 = function_a8fb77bd();
		var_28189c49.var_fe311e35 = var_fe311e35;
		var_28189c49.var_ad23e503 = var_ad23e503;
		var_28189c49.var_53b7ff50 = var_53b7ff50;
		var_28189c49.var_4be20d44 = function_b5a28a10(var_fe311e35, var_ad23e503);
		var_28189c49.var_dfcc01fd = function_f586ae95(var_fe311e35, var_ad23e503, 0);
		var_28189c49.var_b3a36101 = function_f586ae95(var_fe311e35, var_ad23e503, 1);
		level.var_175490fb.var_9d01aa69[level.var_175490fb.var_9d01aa69.size] = var_28189c49;
	}
}

/*
	Name: function_1fe42fa3
	Namespace: namespace_d00ec32
	Checksum: 0x11E6971
	Offset: 0xDA0
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_1fe42fa3(var_28189c49)
{
	if(isdefined(var_28189c49))
	{
		if(var_28189c49.var_fe311e35 == 1 && var_28189c49.var_ad23e503 == 64)
		{
			return 1;
		}
		if(var_28189c49.var_fe311e35 == 2 && var_28189c49.var_ad23e503 == 2)
		{
			return 1;
		}
		if(var_28189c49.var_fe311e35 == 0 && var_28189c49.var_ad23e503 == 16)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_c381ce2
	Namespace: namespace_d00ec32
	Checksum: 0x15EE666F
	Offset: 0xE58
	Size: 0x1D7
	Parameters: 2
	Flags: None
*/
function function_c381ce2(var_28189c49, var_f8d4f987)
{
	if(!isdefined(var_28189c49))
	{
		return;
	}
	if(!function_1fe42fa3(var_28189c49))
	{
		return;
	}
	if(!isdefined(var_f8d4f987))
	{
		var_2e2a14bb = self function_1a9006bd(var_28189c49.var_4be20d44);
		if(var_2e2a14bb == 0)
		{
			return;
		}
		var_f8d4f987 = var_2e2a14bb == 2;
	}
	if(var_f8d4f987)
	{
		var_dfcc01fd = var_28189c49.var_b3a36101;
	}
	else
	{
		var_dfcc01fd = var_28189c49.var_dfcc01fd;
	}
	if(isdefined(self.var_175490fb.var_90eb6ca7) && self.var_175490fb.var_90eb6ca7 != var_dfcc01fd)
	{
		self function_1f3745c0(self.var_175490fb.var_90eb6ca7);
		self notify("hash_7812f695", self.var_175490fb.var_90eb6ca7);
		level notify("hash_7812f695", self.var_175490fb.var_90eb6ca7, self);
		self.var_175490fb.var_90eb6ca7 = undefined;
	}
	if(!self function_2103ff4b(var_dfcc01fd))
	{
		self function_860a040a(var_dfcc01fd);
		self notify("hash_ce6dc32f", var_dfcc01fd);
		level notify("hash_ce6dc32f", var_dfcc01fd, self);
	}
	self.var_175490fb.var_90eb6ca7 = var_dfcc01fd;
}

/*
	Name: function_1364f13e
	Namespace: namespace_d00ec32
	Checksum: 0xE590A98C
	Offset: 0x1038
	Size: 0x229
	Parameters: 1
	Flags: None
*/
function function_1364f13e(var_28189c49)
{
	if(!isdefined(var_28189c49))
	{
		return;
	}
	if(self function_2103ff4b(var_28189c49.var_dfcc01fd))
	{
		self function_1f3745c0(var_28189c49.var_dfcc01fd);
		self notify("hash_7812f695", var_28189c49.var_dfcc01fd);
		level notify("hash_7812f695", var_28189c49.var_dfcc01fd, self);
	}
	if(isdefined(self.var_175490fb.var_90eb6ca7) && self.var_175490fb.var_90eb6ca7 == var_28189c49.var_dfcc01fd)
	{
		self.var_175490fb.var_90eb6ca7 = undefined;
	}
	if(isdefined(self.var_175490fb.var_2e20c9bd) && self.var_175490fb.var_2e20c9bd == var_28189c49.var_dfcc01fd)
	{
		self.var_175490fb.var_2e20c9bd = undefined;
	}
	if(self function_2103ff4b(var_28189c49.var_b3a36101))
	{
		self function_1f3745c0(var_28189c49.var_b3a36101);
		self notify("hash_7812f695", var_28189c49.var_b3a36101);
		level notify("hash_7812f695", var_28189c49.var_b3a36101, self);
	}
	if(isdefined(self.var_175490fb.var_90eb6ca7) && self.var_175490fb.var_90eb6ca7 == var_28189c49.var_b3a36101)
	{
		self.var_175490fb.var_90eb6ca7 = undefined;
	}
	if(isdefined(self.var_175490fb.var_2e20c9bd) && self.var_175490fb.var_2e20c9bd == var_28189c49.var_b3a36101)
	{
		self.var_175490fb.var_2e20c9bd = undefined;
	}
}

/*
	Name: function_a724d44
	Namespace: namespace_d00ec32
	Checksum: 0xC5CFE761
	Offset: 0x1270
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_a724d44(var_4be20d44, var_f8d4f987)
{
	/#
		namespace_33b293fd::function_a7ee953(function_4bd0142f("Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	var_28189c49 = function_85c33215(var_4be20d44);
	if(!isdefined(var_28189c49))
	{
		return;
	}
	self function_ace111f5(var_4be20d44, var_f8d4f987);
	self namespace_175490fb::function_b6b97f75();
	self function_c381ce2(var_28189c49, var_f8d4f987);
}

/*
	Name: function_edff667f
	Namespace: namespace_d00ec32
	Checksum: 0xE4CD7446
	Offset: 0x1350
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_edff667f()
{
	foreach(var_28189c49 in level.var_175490fb.var_9d01aa69)
	{
		self function_a724d44(var_28189c49.var_4be20d44, 1);
	}
}

/*
	Name: function_eb512967
	Namespace: namespace_d00ec32
	Checksum: 0x9A5868F6
	Offset: 0x1400
	Size: 0x597
	Parameters: 2
	Flags: None
*/
function function_eb512967(var_4be20d44, var_a67a6c08)
{
	if(!isdefined(var_a67a6c08))
	{
		var_a67a6c08 = 0;
	}
	/#
		namespace_33b293fd::function_a7ee953(function_4bd0142f("Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	var_ab80161f = self function_1a9006bd(var_4be20d44);
	if(var_ab80161f == 0)
	{
		return;
	}
	var_28189c49 = function_85c33215(var_4be20d44);
	if(!isdefined(var_28189c49))
	{
		return;
	}
	self.var_175490fb.var_980d0a72.var_fe311e35 = var_28189c49.var_fe311e35;
	self function_751ff137(var_28189c49.var_fe311e35);
	self.var_175490fb.var_b6fd26ae = var_28189c49;
	if(var_ab80161f == 2)
	{
		var_dfcc01fd = var_28189c49.var_b3a36101;
	}
	else
	{
		var_dfcc01fd = var_28189c49.var_dfcc01fd;
	}
	if(!function_1fe42fa3(var_28189c49))
	{
		if(isdefined(self.var_175490fb.var_90eb6ca7) && self function_2103ff4b(self.var_175490fb.var_90eb6ca7))
		{
			var_7116dac7 = self.var_175490fb.var_90eb6ca7;
			self function_1f3745c0(self.var_175490fb.var_90eb6ca7);
			self.var_175490fb.var_90eb6ca7 = undefined;
		}
		if(isdefined(self.var_175490fb.var_2e20c9bd) && var_dfcc01fd != self.var_175490fb.var_2e20c9bd)
		{
			self function_1f3745c0(self.var_175490fb.var_2e20c9bd);
			self notify("hash_7812f695", self.var_175490fb.var_2e20c9bd);
			level notify("hash_7812f695", self.var_175490fb.var_2e20c9bd, self);
		}
		if(!self function_2103ff4b(var_dfcc01fd))
		{
			self function_860a040a(var_dfcc01fd);
			self notify("hash_ce6dc32f", var_dfcc01fd);
			level notify("hash_ce6dc32f", var_dfcc01fd, self);
		}
		self.var_175490fb.var_2e20c9bd = var_dfcc01fd;
		if(!(isdefined(self.var_175490fb.var_161c9be8) && self.var_175490fb.var_161c9be8))
		{
			var_a67a6c08 = 1;
			self.var_175490fb.var_161c9be8 = 1;
		}
		if(isdefined(var_7116dac7))
		{
			self function_860a040a(var_7116dac7);
			self.var_175490fb.var_90eb6ca7 = var_7116dac7;
			var_7116dac7 = undefined;
		}
		var_9d01aa69 = function_ef1b66d4(self.var_175490fb.var_b6fd26ae.var_fe311e35);
		var_fb0372cb = 1;
		foreach(var_28189c49 in var_9d01aa69)
		{
			if(var_28189c49.var_4be20d44 == self.var_175490fb.var_b6fd26ae.var_4be20d44)
			{
				self function_f2e7970f("AbilityWheel.Selected" + var_28189c49.var_fe311e35 + 1, var_fb0372cb);
				break;
			}
			var_fb0372cb++;
		}
	}
	self function_d2260497();
	if(var_a67a6c08)
	{
		self thread function_cae3643b();
	}
	namespace_d8129fdd::function_42ffd679(self, "equipped", var_4be20d44);
	var_6f5af609 = function_b6b79a0(function_d4cc1345("gamedata/stats/cp/cp_statstable.csv", 4, var_28189c49.var_4be20d44, 0));
	if(isdefined(self.var_768ee804))
	{
		var_6f5af609 = var_6f5af609 | self.var_768ee804 << 10;
	}
	self function_8f67433b("PlayerStatsList", "LAST_CYBERCOM_EQUIPPED", "statValue", var_6f5af609);
	return var_28189c49;
}

/*
	Name: function_cae3643b
	Namespace: namespace_d00ec32
	Checksum: 0xFFA8B90B
	Offset: 0x19A0
	Size: 0x63
	Parameters: 0
	Flags: Private
*/
function private function_cae3643b()
{
	waittillframeend;
	self function_a0b29c50(0, 100);
	self function_a0b29c50(1, 100);
	self function_a0b29c50(2, 100);
}

/*
	Name: function_c219b381
	Namespace: namespace_d00ec32
	Checksum: 0x63DB31CA
	Offset: 0x1A10
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_c219b381()
{
	var_9d01aa69 = self function_d6be99c6();
	foreach(var_28189c49 in var_9d01aa69)
	{
		self function_1364f13e(var_28189c49);
	}
	self function_d8df9418();
	if(isdefined(self.var_175490fb.var_2e20c9bd) && self function_2103ff4b(self.var_175490fb.var_2e20c9bd))
	{
		self function_1f3745c0(self.var_175490fb.var_2e20c9bd);
	}
	self.var_175490fb.var_2e20c9bd = undefined;
	if(isdefined(self.var_175490fb.var_90eb6ca7) && self function_2103ff4b(self.var_175490fb.var_90eb6ca7))
	{
		self function_1f3745c0(self.var_175490fb.var_90eb6ca7);
	}
	self.var_175490fb.var_90eb6ca7 = undefined;
	self namespace_175490fb::function_b6b97f75();
}

/*
	Name: function_85c33215
	Namespace: namespace_d00ec32
	Checksum: 0xF0637D4D
	Offset: 0x1BD0
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_85c33215(var_4be20d44)
{
	foreach(var_28189c49 in level.var_175490fb.var_9d01aa69)
	{
		if(!isdefined(var_28189c49))
		{
			continue;
		}
		if(var_28189c49.var_4be20d44 == var_4be20d44)
		{
			return var_28189c49;
		}
	}
}

/*
	Name: function_59e099
	Namespace: namespace_d00ec32
	Checksum: 0x37742727
	Offset: 0x1C88
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_59e099(var_4be20d44)
{
	var_dfcc01fd = function_c4d5ec1f(var_4be20d44);
	foreach(var_28189c49 in level.var_175490fb.var_9d01aa69)
	{
		if(isdefined(var_28189c49.var_dfcc01fd) && var_dfcc01fd.var_4be20d44 == var_28189c49.var_dfcc01fd.var_4be20d44)
		{
			return var_28189c49;
		}
	}
}

/*
	Name: function_1a6a2760
	Namespace: namespace_d00ec32
	Checksum: 0x71D7DB1C
	Offset: 0x1D78
	Size: 0xEF
	Parameters: 1
	Flags: None
*/
function function_1a6a2760(var_dfcc01fd)
{
	if(!isdefined(var_dfcc01fd))
	{
		return;
	}
	foreach(var_28189c49 in level.var_175490fb.var_9d01aa69)
	{
		if(isdefined(var_28189c49.var_dfcc01fd) && var_dfcc01fd == var_28189c49.var_dfcc01fd)
		{
			return var_28189c49;
		}
		if(isdefined(var_28189c49.var_b3a36101) && var_dfcc01fd == var_28189c49.var_b3a36101)
		{
			return var_28189c49;
		}
	}
}

/*
	Name: function_b6bf05b2
	Namespace: namespace_d00ec32
	Checksum: 0x1251879E
	Offset: 0x1E70
	Size: 0xC1
	Parameters: 2
	Flags: None
*/
function function_b6bf05b2(var_fe311e35, var_ad23e503)
{
	foreach(var_28189c49 in level.var_175490fb.var_9d01aa69)
	{
		if(var_28189c49.var_fe311e35 == var_fe311e35 && var_28189c49.var_ad23e503 == var_ad23e503)
		{
			return var_28189c49;
		}
	}
	return undefined;
}

/*
	Name: function_d6be99c6
	Namespace: namespace_d00ec32
	Checksum: 0x640646C9
	Offset: 0x1F40
	Size: 0x127
	Parameters: 0
	Flags: None
*/
function function_d6be99c6()
{
	var_9d01aa69 = [];
	if(!isdefined(self.var_175490fb) || !isdefined(self.var_175490fb.var_980d0a72) || !isdefined(self.var_175490fb.var_980d0a72.var_fe311e35))
	{
		return var_9d01aa69;
	}
	foreach(var_28189c49 in level.var_175490fb.var_9d01aa69)
	{
		var_f2391de5 = self function_1a9006bd(var_28189c49.var_4be20d44);
		if(var_f2391de5 != 0)
		{
			var_9d01aa69[var_9d01aa69.size] = var_28189c49;
		}
	}
	return var_9d01aa69;
}

/*
	Name: function_ef1b66d4
	Namespace: namespace_d00ec32
	Checksum: 0x4EFF8B57
	Offset: 0x2070
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_ef1b66d4(var_fe311e35)
{
	var_9d01aa69 = [];
	foreach(var_28189c49 in level.var_175490fb.var_9d01aa69)
	{
		if(var_28189c49.var_fe311e35 == var_fe311e35)
		{
			var_9d01aa69[var_9d01aa69.size] = var_28189c49;
		}
	}
	return var_9d01aa69;
}

/*
	Name: function_48868896
	Namespace: namespace_d00ec32
	Checksum: 0x722B1FB5
	Offset: 0x2138
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_48868896()
{
	self endon("hash_643a7daf");
	while(1)
	{
		self waittill("hash_ace111f5", var_4ccb808f);
		self function_eb512967(var_4ccb808f);
	}
}


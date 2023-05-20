#using scripts\codescripts\struct;
#using scripts\cp\_bb;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_tactical_rig_emergencyreserve;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_175490fb;

/*
	Name: function_da99f3e1
	Namespace: namespace_175490fb
	Checksum: 0x4145CA4F
	Offset: 0x808
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_da99f3e1()
{
	level namespace_957e94ce::function_1ab5ebec("load_main_complete");
	/#
		level thread namespace_afd2f70b::function_b9907dab();
	#/
	function_6c1294b8("scr_max_simLocks", 5);
}

/*
	Name: function_80fe1bad
	Namespace: namespace_175490fb
	Checksum: 0xFB05D0E3
	Offset: 0x870
	Size: 0x2E9
	Parameters: 1
	Flags: None
*/
function function_80fe1bad(var_96fa87af)
{
	if(isdefined(var_96fa87af.var_8fc0e50e))
	{
		var_96fa87af.var_9147087d = [];
		switch(var_96fa87af.var_8fc0e50e)
		{
			case "hunter":
			{
				var_96fa87af.var_342d9e3a = 1;
				break;
			}
			case "quadtank":
			{
				var_96fa87af function_59965309("cybercom_surge");
				var_96fa87af function_59965309("cybercom_servoshortout");
				var_96fa87af function_59965309("cybercom_systemoverload");
				var_96fa87af function_59965309("cybercom_smokescreen");
				var_96fa87af function_59965309("cybercom_immolate");
				var_96fa87af.var_9147087d["cybercom_hijack"] = function_4bd0142f("scr_hacktime_quadtank", 11);
				var_96fa87af.var_9147087d["cybercom_iffoverride"] = function_4bd0142f("scr_hacktime_quadtank", 11);
				var_96fa87af.var_6c8af4c4 = 0;
				var_96fa87af.var_ced13b2f = 1;
				break;
			}
			case "siegebot":
			{
				var_96fa87af function_59965309("cybercom_surge");
				var_96fa87af function_59965309("cybercom_servoshortout");
				var_96fa87af function_59965309("cybercom_smokescreen");
				var_96fa87af function_59965309("cybercom_immolate");
				var_96fa87af.var_9147087d["cybercom_hijack"] = function_4bd0142f("scr_hacktime_siegebot", 9);
				var_96fa87af.var_9147087d["cybercom_iffoverride"] = function_4bd0142f("scr_hacktime_siegebot", 9);
				var_96fa87af.var_6c8af4c4 = 0;
				var_96fa87af.var_ced13b2f = 1;
				break;
			}
			case "glaive":
			case "parasite":
			{
				var_96fa87af.var_342d9e3a = 1;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_79bafe1d
	Namespace: namespace_175490fb
	Checksum: 0x6561C314
	Offset: 0xB68
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_79bafe1d(var_96fa87af)
{
	var_96fa87af namespace_71e9cb84::function_74d6b22f("cybercom_shortout", 0);
	var_96fa87af namespace_71e9cb84::function_74d6b22f("cybercom_surge", 0);
}

/*
	Name: function_fabadf47
	Namespace: namespace_175490fb
	Checksum: 0x8B6F84FA
	Offset: 0xBC0
	Size: 0x4D
	Parameters: 2
	Flags: None
*/
function function_fabadf47(var_96fa87af, var_b5ddd355)
{
	if(var_b5ddd355)
	{
		var_96fa87af.var_f40d252c = 1;
	}
	else
	{
		var_96fa87af.var_d3f57f67 = undefined;
		var_96fa87af.var_f40d252c = undefined;
	}
}

/*
	Name: function_facd1caa
	Namespace: namespace_175490fb
	Checksum: 0x83C8EF19
	Offset: 0xC18
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_facd1caa()
{
	self.var_175490fb.var_980d0a72.var_68ec1e9e = self function_814d6f0c();
	self function_4b916b34();
	self.var_175490fb.var_980d0a72.var_fe311e35 = self function_2eef1193();
	self.var_175490fb.var_980d0a72.var_9d01aa69 = [];
	self.var_175490fb.var_980d0a72.var_c46ef07e = [];
	for(var_c957f6b6 = 0; var_c957f6b6 <= 2; var_c957f6b6++)
	{
		self.var_175490fb.var_980d0a72.var_9d01aa69[var_c957f6b6] = self function_9d0fefb1(var_c957f6b6);
		self.var_175490fb.var_980d0a72.var_c46ef07e[var_c957f6b6] = self function_9d36c436(var_c957f6b6);
	}
}

/*
	Name: function_b6b97f75
	Namespace: namespace_175490fb
	Checksum: 0xEA6ACD9D
	Offset: 0xD70
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_b6b97f75()
{
	self function_facd1caa();
	self.var_175490fb.var_578ffe14 = self namespace_d00ec32::function_d6be99c6();
	self.var_175490fb.var_1df81780 = "AbilityWheel";
	self.var_44fb8955["cybercom_flags"] = self.var_175490fb.var_980d0a72;
}

/*
	Name: function_222dca46
	Namespace: namespace_175490fb
	Checksum: 0xDA0CE597
	Offset: 0xDF8
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_222dca46()
{
	self function_7bd2c4b9(self.var_175490fb.var_980d0a72.var_68ec1e9e);
	self function_751ff137(self.var_175490fb.var_980d0a72.var_fe311e35);
	for(var_c957f6b6 = 0; var_c957f6b6 <= 2; var_c957f6b6++)
	{
		self function_9a5a502a(self.var_175490fb.var_980d0a72.var_9d01aa69[var_c957f6b6], var_c957f6b6);
		self function_88655a58(self.var_175490fb.var_980d0a72.var_c46ef07e[var_c957f6b6], var_c957f6b6);
	}
}

/*
	Name: function_ddcda2fd
	Namespace: namespace_175490fb
	Checksum: 0x72C9F525
	Offset: 0xEF8
	Size: 0x209
	Parameters: 1
	Flags: None
*/
function function_ddcda2fd(var_980d0a72)
{
	if(isdefined(var_980d0a72))
	{
		self.var_175490fb.var_980d0a72 = var_980d0a72;
	}
	self function_222dca46();
	self function_b6b97f75();
	foreach(var_28189c49 in self.var_175490fb.var_578ffe14)
	{
		var_2e2a14bb = self function_1a9006bd(var_28189c49.var_4be20d44);
		if(var_2e2a14bb == 0)
		{
			continue;
		}
		self namespace_d00ec32::function_c381ce2(var_28189c49, var_2e2a14bb == 2);
	}
	foreach(var_28189c49 in level.var_ab0cd3b2)
	{
		var_2e2a14bb = self function_76f34311(var_28189c49.var_4be20d44);
		if(var_2e2a14bb == 0)
		{
			continue;
		}
		self namespace_726a1ef0::function_fea5c2ac(var_28189c49.var_4be20d44, var_2e2a14bb == 2);
	}
}

/*
	Name: function_cc812e3b
	Namespace: namespace_175490fb
	Checksum: 0xDC551EBC
	Offset: 0x1110
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function function_cc812e3b(var_632e4fca)
{
	var_1630584c = function_e967a021(var_632e4fca + "_pro");
	if(var_1630584c != -1)
	{
		return self function_1c4cc403(var_1630584c);
	}
	return 0;
}

/*
	Name: function_8b088b97
	Namespace: namespace_175490fb
	Checksum: 0x8BA64885
	Offset: 0x1178
	Size: 0x1B9
	Parameters: 1
	Flags: None
*/
function function_8b088b97(var_f1362994)
{
	function_aacf4c41("CYBERCORE: " + var_f1362994);
	var_9d01aa69 = namespace_d00ec32::function_ef1b66d4(var_f1362994);
	foreach(var_28189c49 in var_9d01aa69)
	{
		var_1630584c = function_e967a021(var_28189c49.var_4be20d44);
		if(self function_1c4cc403(var_1630584c))
		{
			var_668a3301 = self function_cc812e3b(var_28189c49.var_4be20d44);
			self function_ace111f5(var_28189c49.var_4be20d44, var_668a3301);
			function_aacf4c41(var_28189c49.var_4be20d44 + " UPGRADED: " + var_668a3301);
			continue;
		}
		function_aacf4c41(var_28189c49.var_4be20d44 + " NOT INSTALLED");
	}
}

/*
	Name: function_1e4531c7
	Namespace: namespace_175490fb
	Checksum: 0x9F684B2C
	Offset: 0x1340
	Size: 0xC5
	Parameters: 1
	Flags: None
*/
function function_1e4531c7(var_e4230c26)
{
	switch(var_e4230c26)
	{
		case 0:
		{
			self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_ravagecore"));
			break;
		}
		case 1:
		{
			self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_rapidstrike"));
			break;
		}
		case 2:
		{
			self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_es_strike"));
			break;
		}
	}
}

/*
	Name: function_1adaa876
	Namespace: namespace_175490fb
	Checksum: 0xAC7A0738
	Offset: 0x1410
	Size: 0x3A9
	Parameters: 2
	Flags: None
*/
function function_1adaa876(var_e4230c26, var_f4132a83)
{
	if(function_27c72c1b())
	{
		return;
	}
	var_d66f8a9e = function_b6b79a0(self function_84368297("PlayerStatsList", "LAST_CYBERCOM_EQUIPPED", "statValue"));
	var_2324b7c = var_d66f8a9e & 1024 - 1;
	var_768ee804 = var_d66f8a9e >> 10;
	self function_1e4531c7(var_e4230c26);
	if(isdefined(var_f4132a83) && var_f4132a83 && var_2324b7c > 99 && var_2324b7c < 142)
	{
		var_cac3be21 = function_d4cc1345("gamedata/stats/cp/cp_statstable.csv", 0, var_2324b7c, 4);
		var_b5725157 = namespace_d00ec32::function_85c33215(var_cac3be21);
		if(self function_1a9006bd(var_b5725157.var_4be20d44))
		{
			if(var_e4230c26 == var_b5725157.var_fe311e35 || self function_6e0bf068() || (isdefined(self.var_fe7a7fe4) && self.var_fe7a7fe4 == 1))
			{
				self function_751ff137(var_b5725157.var_fe311e35);
				self.var_768ee804 = var_768ee804;
				self namespace_d00ec32::function_eb512967(var_b5725157.var_4be20d44, 0);
				self function_f2e7970f("AbilityWheel.Selected" + var_b5725157.var_fe311e35 + 1, self.var_768ee804);
				return;
			}
		}
	}
	self namespace_71e9cb84::function_e9c3870b("resetAbilityWheel", 1);
	self function_751ff137(var_e4230c26);
	var_9d01aa69 = namespace_d00ec32::function_ef1b66d4(var_e4230c26);
	var_fb0372cb = 1;
	foreach(var_28189c49 in var_9d01aa69)
	{
		if(self function_1a9006bd(var_28189c49.var_4be20d44))
		{
			self.var_768ee804 = var_fb0372cb;
			self namespace_d00ec32::function_eb512967(var_28189c49.var_4be20d44, 0);
			self function_f2e7970f("AbilityWheel.Selected" + var_28189c49.var_fe311e35 + 1, var_fb0372cb);
			return;
		}
		var_fb0372cb++;
	}
}

/*
	Name: function_6e0bf068
	Namespace: namespace_175490fb
	Checksum: 0xB6C787F1
	Offset: 0x17C8
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_6e0bf068()
{
	return self.var_f1b94506 + 1 >= 20 || (isdefined(self.var_8201758a) && (isdefined(self.var_8201758a) && self.var_8201758a));
}

/*
	Name: function_674d724c
	Namespace: namespace_175490fb
	Checksum: 0x1576CD02
	Offset: 0x1810
	Size: 0x1DB
	Parameters: 3
	Flags: None
*/
function function_674d724c(var_4833ca26, var_f4132a83, var_f69e782a)
{
	if(!isdefined(var_f69e782a))
	{
		var_f69e782a = 1;
	}
	self endon("hash_3f7b661c");
	if(!isdefined(self.var_fe7a7fe4) || self.var_fe7a7fe4 != 1)
	{
		for(var_f1362994 = 0; var_f1362994 <= 2; var_f1362994++)
		{
			self function_8b088b97(var_f1362994);
		}
	}
	var_d1833846["cybercore_control"] = 0;
	var_d1833846["cybercore_martial"] = 1;
	var_d1833846["cybercore_chaos"] = 2;
	var_fb135494 = self function_cb7863ff(0, "cybercore");
	if(var_fb135494 != "weapon_null" && var_fb135494 != "weapon_null_cp" && isdefined(var_d1833846[var_fb135494]))
	{
		self function_1adaa876(var_d1833846[var_fb135494], var_f4132a83);
		self function_b6b97f75();
	}
	if(var_f69e782a)
	{
		var_5d74e4a2 = self namespace_82b91a51::function_9fcf3cd8(7, "loadout_changed");
		if(var_5d74e4a2 != "timeout")
		{
			function_674d724c(var_4833ca26, var_f4132a83, 0);
		}
	}
}

/*
	Name: function_4b8ac464
	Namespace: namespace_175490fb
	Checksum: 0x7B0D5022
	Offset: 0x19F8
	Size: 0x51B
	Parameters: 4
	Flags: None
*/
function function_4b8ac464(var_b54d1a86, var_4833ca26, var_f4132a83, var_5a13c491)
{
	self function_d8df9418();
	var_40cc9116 = self function_cb7863ff(var_b54d1a86, "cybercom_tacrig1");
	var_1aca16ad = self function_cb7863ff(var_b54d1a86, "cybercom_tacrig2");
	if(isdefined(var_5a13c491))
	{
		var_40cc9116 = var_5a13c491 function_cb7863ff(var_b54d1a86, "cybercom_tacrig1");
		var_1aca16ad = var_5a13c491 function_cb7863ff(var_b54d1a86, "cybercom_tacrig2");
	}
	if(function_77fdb408(var_40cc9116, "_pro"))
	{
		var_40cc9116 = function_f45850ec(var_40cc9116, 0, var_40cc9116.size - 4);
		var_65303699 = 1;
	}
	else
	{
		var_65303699 = 0;
	}
	if(function_77fdb408(var_1aca16ad, "_pro"))
	{
		var_1aca16ad = function_f45850ec(var_1aca16ad, 0, var_1aca16ad.size - 4);
		var_2e518e8 = 1;
	}
	else
	{
		var_2e518e8 = 0;
	}
	if(isdefined(self.var_8201758a) && self.var_8201758a)
	{
		var_65303699 = 1;
		var_2e518e8 = 1;
	}
	else if(var_b54d1a86 < 5)
	{
		var_65303699 = self function_cc812e3b(var_40cc9116);
		var_2e518e8 = self function_cc812e3b(var_1aca16ad);
		if(isdefined(var_5a13c491))
		{
			var_65303699 = var_5a13c491 function_cc812e3b(var_40cc9116);
			var_2e518e8 = var_5a13c491 function_cc812e3b(var_1aca16ad);
		}
	}
	self namespace_726a1ef0::function_78908229();
	if(!self namespace_ad23e503::function_dbca4c5d("in_training_sim") || !self namespace_ad23e503::function_7922262b("in_training_sim"))
	{
		var_9e7e6766 = self namespace_9f824288::function_36adbb9c("saved_rig1", undefined);
		if(isdefined(var_9e7e6766))
		{
			var_40cc9116 = var_9e7e6766;
			var_65303699 = self namespace_9f824288::function_36adbb9c("saved_rig1_upgraded", undefined);
			var_1aca16ad = self namespace_9f824288::function_36adbb9c("saved_rig2", undefined);
			var_2e518e8 = self namespace_9f824288::function_36adbb9c("saved_rig2_upgraded", undefined);
			/#
				namespace_33b293fd::function_a7ee953(isdefined(var_65303699));
			#/
		}
	}
	self namespace_726a1ef0::function_8ffa26e2(var_40cc9116, var_65303699, 0, 0);
	self namespace_726a1ef0::function_8ffa26e2(var_1aca16ad, var_2e518e8, 1, 0);
	if(!self namespace_ad23e503::function_dbca4c5d("in_training_sim") || !self namespace_ad23e503::function_7922262b("in_training_sim"))
	{
		self namespace_9f824288::function_bee608f0("saved_rig1", var_40cc9116);
		self namespace_9f824288::function_bee608f0("saved_rig1_upgraded", var_65303699);
		self namespace_9f824288::function_bee608f0("saved_rig2", var_1aca16ad);
		self namespace_9f824288::function_bee608f0("saved_rig2_upgraded", var_2e518e8);
	}
	function_aacf4c41("RIG1: " + var_40cc9116 + " UPGRADED:" + var_65303699);
	function_aacf4c41("RIG2: " + var_1aca16ad + " UPGRADED:" + var_2e518e8);
	self thread function_674d724c(var_4833ca26, var_f4132a83);
}

/*
	Name: function_2006f7d0
	Namespace: namespace_175490fb
	Checksum: 0xF4EED652
	Offset: 0x1F20
	Size: 0x12B
	Parameters: 3
	Flags: None
*/
function function_2006f7d0(var_2d11f419, var_dfcc01fd, var_775ebc1b)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self function_e4588dde();
	if(!isdefined(self.var_175490fb.var_d1460543))
	{
		self.var_175490fb.var_d1460543 = [];
	}
	if(isdefined(var_775ebc1b))
	{
	}
	else
	{
	}
	var_a9a8a0d3 = function_4bd0142f("scr_max_simLocks");
	/#
		namespace_33b293fd::function_a7ee953(var_a9a8a0d3 <= 5, "Dev Block strings are not supported");
	#/
	self thread function_17fea3ed(var_2d11f419, var_dfcc01fd, var_a9a8a0d3);
	self thread function_d4f9f451(var_2d11f419, var_dfcc01fd);
	self thread function_348de0be(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_348de0be
	Namespace: namespace_175490fb
	Checksum: 0x349145F9
	Offset: 0x2058
	Size: 0x233
	Parameters: 2
	Flags: None
*/
function function_348de0be(var_2d11f419, var_dfcc01fd)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self endon("hash_d51412df");
	self endon("hash_e9579630");
	self notify("hash_348de0be");
	self endon("hash_348de0be");
	if(!isdefined(self.var_175490fb.var_46483c8f))
	{
		return;
	}
	if(self.var_175490fb.var_46483c8f & 1)
	{
		self thread function_86113d72("weapon_change");
	}
	if(self.var_175490fb.var_46483c8f & 2)
	{
		self thread function_86113d72("reload");
	}
	if(self.var_175490fb.var_46483c8f & 4)
	{
		self thread function_86113d72("weapon_fired");
	}
	if(self.var_175490fb.var_46483c8f & 8)
	{
		self thread function_86113d72("weapon_melee");
		self thread function_86113d72("melee_end");
	}
	if(self.var_175490fb.var_46483c8f & 16)
	{
		self thread function_86113d72("weapon_ads");
	}
	if(self.var_175490fb.var_46483c8f & 32)
	{
		self thread function_86113d72("damage");
	}
	self waittill("hash_3b3a12de", var_de4046a1);
	self function_29bf9dee(undefined, 8);
	self function_868603c7(var_2d11f419, var_dfcc01fd, 1);
}

/*
	Name: function_86113d72
	Namespace: namespace_175490fb
	Checksum: 0x2E07B05E
	Offset: 0x2298
	Size: 0x3D
	Parameters: 1
	Flags: None
*/
function function_86113d72(var_22fd856d)
{
	self endon("hash_e9579630");
	self endon("hash_3b3a12de");
	self waittill(var_22fd856d);
	self notify("hash_3b3a12de", var_22fd856d);
}

/*
	Name: function_d4f9f451
	Namespace: namespace_175490fb
	Checksum: 0x99A54AB2
	Offset: 0x22E0
	Size: 0x1E3
	Parameters: 2
	Flags: None
*/
function function_d4f9f451(var_2d11f419, var_dfcc01fd)
{
	self notify("hash_d4f9f451");
	self endon("hash_d4f9f451");
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self endon("hash_d51412df");
	self endon("hash_e9579630");
	while(1)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_175490fb.var_d1460543.size; var_c957f6b6++)
		{
			if(!isdefined(self.var_175490fb.var_d1460543[var_c957f6b6].var_b07228b6))
			{
				continue;
			}
			if(!isdefined(self.var_175490fb.var_d1460543[var_c957f6b6].var_b07228b6.var_5001b74f) || self.var_175490fb.var_d1460543[var_c957f6b6].var_b07228b6.var_5001b74f != self)
			{
				continue;
			}
			if(isdefined(self.var_175490fb.var_d1460543[var_c957f6b6].var_b07228b6.var_1e1a5e6f) && self.var_175490fb.var_d1460543[var_c957f6b6].var_b07228b6.var_1e1a5e6f != 1)
			{
				continue;
			}
			if(isdefined(self.var_175490fb.var_73d069a7))
			{
				function_c5b2f654(self);
				[[self.var_175490fb.var_73d069a7]](var_2d11f419, var_dfcc01fd);
				return;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d51412df
	Namespace: namespace_175490fb
	Checksum: 0x220A16AA
	Offset: 0x24D0
	Size: 0x61
	Parameters: 1
	Flags: None
*/
function function_d51412df(var_dfcc01fd)
{
	self function_a3e55896(var_dfcc01fd);
	waittillframeend;
	function_b04ec032(1);
	self function_f5799ee1();
	self notify("hash_e9579630");
}

/*
	Name: function_f5c296aa
	Namespace: namespace_175490fb
	Checksum: 0xDB7C2801
	Offset: 0x2540
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_f5c296aa(var_dfcc01fd)
{
	self notify("hash_d51412df");
	self endon("hash_d51412df");
	self endon("hash_e9579630");
	self waittill("hash_45ea3ed1", var_2d11f419, var_188a4cc0);
	if(var_dfcc01fd == var_188a4cc0)
	{
		self function_d51412df(var_dfcc01fd);
	}
	else
	{
		self thread function_f5c296aa(var_dfcc01fd);
	}
}

/*
	Name: function_7806352d
	Namespace: namespace_175490fb
	Checksum: 0x944238D
	Offset: 0x25E8
	Size: 0x18B
	Parameters: 1
	Flags: Private
*/
function private function_7806352d(var_dfcc01fd)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self endon("hash_e9579630");
	var_279e4e97 = self namespace_82b91a51::function_45ce26d(var_dfcc01fd.var_4be20d44 + "_fired");
	level notify("hash_825eb47e", self, var_dfcc01fd);
	foreach(var_c5b0e858 in self.var_175490fb.var_d1460543)
	{
		if(isdefined(var_c5b0e858.var_b07228b6))
		{
			var_c5b0e858.var_b07228b6 notify("hash_825eb47e", self, var_dfcc01fd);
			if(isdefined(var_c5b0e858.var_b07228b6.var_5001b74f) && var_c5b0e858.var_b07228b6.var_5001b74f == self)
			{
				var_c5b0e858.var_b07228b6.var_5001b74f = undefined;
			}
		}
	}
	self function_d51412df(var_dfcc01fd);
}

/*
	Name: function_9c5e5a9b
	Namespace: namespace_175490fb
	Checksum: 0x9030ED22
	Offset: 0x2780
	Size: 0x56F
	Parameters: 2
	Flags: Private
*/
function private function_9c5e5a9b(var_b07228b6, var_b3464abe)
{
	if(!isdefined(var_b3464abe))
	{
		var_b3464abe = 1;
	}
	var_225046e = self function_501eb072();
	if(!isdefined(var_b07228b6))
	{
		return 0;
	}
	if(!function_5b49d38c(var_b07228b6))
	{
		return 0;
	}
	if(var_b07228b6 function_10fe46aa())
	{
		return 0;
	}
	if(!isdefined(var_b07228b6.var_175490fb))
	{
		var_b07228b6.var_175490fb = function_a8fb77bd();
	}
	if(!isdefined(var_b07228b6.var_175490fb.var_8d2f4636))
	{
		var_b07228b6.var_175490fb.var_8d2f4636 = [];
	}
	var_a2d47c3d = var_b07228b6 function_cc086df();
	if(isdefined(var_a2d47c3d))
	{
		var_43f93dd9 = function_7178c13c(var_225046e, var_a2d47c3d, 0, var_b07228b6, undefined, 1, 1);
		if(var_43f93dd9)
		{
			var_b07228b6.var_175490fb.var_8d2f4636[self function_c7f3ce11()] = GetTime();
			return 1;
		}
	}
	var_a2d47c3d = var_b07228b6 function_6083923();
	if(isdefined(var_a2d47c3d))
	{
		var_43f93dd9 = function_7178c13c(var_225046e, var_a2d47c3d, 0, var_b07228b6, undefined, 1, 1);
		if(var_43f93dd9)
		{
			var_b07228b6.var_175490fb.var_8d2f4636[self function_c7f3ce11()] = GetTime();
			return 1;
		}
	}
	if(var_b3464abe)
	{
		var_c8bc3f0a = var_b07228b6 function_aeb18d50();
		var_8b6f854 = var_b07228b6 function_48281d9e();
		var_d11e725f = var_8b6f854[2] - var_c8bc3f0a[2] / 4;
		for(var_c957f6b6 = 0; var_c957f6b6 <= 4; var_c957f6b6++)
		{
			var_a2d47c3d = var_b07228b6.var_722885f3 + (0, 0, var_d11e725f * var_c957f6b6);
			var_43f93dd9 = function_7178c13c(var_225046e, var_a2d47c3d, 0, var_b07228b6, undefined, 1, 1);
			if(var_43f93dd9)
			{
				var_b07228b6.var_175490fb.var_8d2f4636[self function_c7f3ce11()] = GetTime();
				return 1;
			}
			var_a2d47c3d = var_b07228b6.var_722885f3 + (var_c8bc3f0a[0], var_c8bc3f0a[1], var_d11e725f * var_c957f6b6);
			var_43f93dd9 = function_7178c13c(var_225046e, var_a2d47c3d, 0, var_b07228b6, undefined, 1, 1);
			if(var_43f93dd9)
			{
				var_b07228b6.var_175490fb.var_8d2f4636[self function_c7f3ce11()] = GetTime();
				return 1;
			}
			var_a2d47c3d = var_b07228b6.var_722885f3 + (var_8b6f854[0], var_8b6f854[1], var_d11e725f * var_c957f6b6);
			var_43f93dd9 = function_7178c13c(var_225046e, var_a2d47c3d, 0, var_b07228b6, undefined, 1, 1);
			if(var_43f93dd9)
			{
				var_b07228b6.var_175490fb.var_8d2f4636[self function_c7f3ce11()] = GetTime();
				return 1;
			}
		}
		var_cb365fdc = var_b07228b6.var_175490fb.var_8d2f4636[self function_c7f3ce11()];
		if(isdefined(var_cb365fdc) && var_cb365fdc + function_4bd0142f("scr_los_latency", 3000) > GetTime())
		{
			var_a52faa04 = function_e1dc201c(var_225046e, var_a2d47c3d, 0, var_b07228b6);
			var_2c3e05ad = function_cb3d1c9b(var_a2d47c3d, var_a52faa04["position"]);
			if(var_2c3e05ad <= function_4bd0142f("scr_cached_dist_threshhold", 315 * 315))
			{
				return 2;
			}
			else
			{
				return 0;
			}
		}
	}
	return 0;
}

/*
	Name: function_7a7d1608
	Namespace: namespace_175490fb
	Checksum: 0x682E7666
	Offset: 0x2CF8
	Size: 0x317
	Parameters: 3
	Flags: None
*/
function function_7a7d1608(var_b07228b6, var_dfcc01fd, var_112e5b60)
{
	if(!isdefined(var_112e5b60))
	{
		var_112e5b60 = 1;
	}
	var_3c61bfc2 = 1;
	if(!isdefined(var_b07228b6))
	{
		return 0;
	}
	if(!function_5b49d38c(var_b07228b6))
	{
		return 0;
	}
	if(var_b07228b6 function_10fe46aa())
	{
		return 0;
	}
	if(isdefined(var_b07228b6.var_93b5a824) && var_b07228b6.var_93b5a824)
	{
		return 0;
	}
	if(!(isdefined(var_b07228b6.var_2dd707) && var_b07228b6.var_2dd707))
	{
		return 0;
	}
	if(isdefined(var_b07228b6.var_49d31d69))
	{
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && (!var_b07228b6 function_8029a253() || isdefined(var_b07228b6.var_59959945)))
	{
		return 0;
	}
	if(isdefined(var_b07228b6.var_69dd5d62))
	{
		if(var_b07228b6.var_69dd5d62 == 0)
		{
			return 0;
		}
	}
	else if(isdefined(var_b07228b6.var_958c7633) && var_b07228b6.var_958c7633)
	{
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && var_b07228b6 function_b7f9b625())
	{
		if(isdefined(self.var_1b425382))
		{
			if(isdefined(self.var_1b425382.var_c7b6e8e4) && function_5dbf7eca(self.var_1b425382.var_c7b6e8e4, "gunner"))
			{
				return 1;
			}
		}
	}
	if(isdefined(var_b07228b6.var_bab9655e) && !var_b07228b6.var_bab9655e)
	{
		return 0;
	}
	if(var_112e5b60 && isdefined(self.var_175490fb) && isdefined(self.var_175490fb.var_c40accd3))
	{
		var_3c61bfc2 = self [[self.var_175490fb.var_c40accd3]](var_b07228b6);
	}
	if(var_3c61bfc2 && isdefined(level.var_732e9c7d))
	{
		var_3c61bfc2 = var_3c61bfc2 & [[level.var_732e9c7d]](self, var_b07228b6, var_dfcc01fd);
	}
	if(isdefined(var_b07228b6.var_fb7ce72a))
	{
		var_9a8f2571 = var_b07228b6 [[var_b07228b6.var_fb7ce72a]](self, var_dfcc01fd);
		if(isdefined(var_9a8f2571))
		{
			return var_9a8f2571;
		}
	}
	return var_3c61bfc2;
}

/*
	Name: function_95dfb5f4
	Namespace: namespace_175490fb
	Checksum: 0xF31E072
	Offset: 0x3018
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_95dfb5f4(var_b07228b6, var_cc834f54, var_dfcc01fd)
{
	if(isdefined(var_b07228b6.var_fb7ce72a))
	{
		var_a3ded052 = var_b07228b6 [[var_b07228b6.var_fb7ce72a]](self, var_dfcc01fd);
		if(isdefined(var_a3ded052))
		{
			return var_a3ded052;
		}
	}
	if(isdefined(var_cc834f54))
	{
		var_e636c4b2 = function_cb3d1c9b(var_b07228b6.var_722885f3, self.var_722885f3);
		if(var_e636c4b2 > var_cc834f54 * var_cc834f54)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_2e65f35d
	Namespace: namespace_175490fb
	Checksum: 0xD6AC58B7
	Offset: 0x30E8
	Size: 0x267
	Parameters: 4
	Flags: None
*/
function function_2e65f35d(var_b07228b6, var_f8456b37, var_dfcc01fd, var_cc834f54)
{
	var_3c61bfc2 = 1;
	if(isdefined(var_b07228b6.var_fb7ce72a))
	{
		var_a3ded052 = var_b07228b6 [[var_b07228b6.var_fb7ce72a]](self, var_dfcc01fd);
		if(isdefined(var_a3ded052))
		{
			return var_a3ded052;
		}
	}
	var_aa780afd = self function_7a7d1608(var_b07228b6, var_dfcc01fd);
	if(!(isdefined(var_aa780afd) && var_aa780afd))
	{
		self function_29bf9dee(var_b07228b6, 1);
		return 0;
	}
	if(isdefined(var_cc834f54))
	{
		var_e636c4b2 = function_cb3d1c9b(var_b07228b6.var_722885f3, self.var_722885f3);
		if(var_e636c4b2 > var_cc834f54 * var_cc834f54)
		{
			self function_29bf9dee(var_b07228b6, 3);
			return 0;
		}
	}
	var_edc325e = self function_9c5e5a9b(var_b07228b6);
	if(var_edc325e == 0)
	{
		self function_29bf9dee(var_b07228b6, 5);
		return 0;
	}
	if(var_edc325e == 2)
	{
		var_f8456b37 = var_f8456b37 * 2;
	}
	if(isdefined(var_f8456b37))
	{
		var_2c3e05ad = function_cb3d1c9b(self.var_722885f3, var_b07228b6.var_722885f3);
		if(var_2c3e05ad > 144 * 144)
		{
			var_3c61bfc2 = function_7a924494(var_b07228b6, self, 65, var_f8456b37);
		}
	}
	if(var_3c61bfc2 == 0)
	{
		self function_29bf9dee(var_b07228b6, 1);
	}
	return var_3c61bfc2;
}

/*
	Name: function_aa0319d2
	Namespace: namespace_175490fb
	Checksum: 0x39735DC
	Offset: 0x3358
	Size: 0x5F
	Parameters: 2
	Flags: None
*/
function function_aa0319d2(var_f96bc9fe, var_d3694f95)
{
	if(var_f96bc9fe.var_42bd74de < var_d3694f95.var_42bd74de)
	{
		return -1;
	}
	if(var_f96bc9fe.var_42bd74de > var_d3694f95.var_42bd74de)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_18d9de78
	Namespace: namespace_175490fb
	Checksum: 0xCFAB4795
	Offset: 0x33C0
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_18d9de78(var_b07228b6)
{
	if(isdefined(var_b07228b6.var_5001b74f) && var_b07228b6.var_5001b74f == self)
	{
		function_c5b2f654(self);
		var_b07228b6.var_6c8af4c4 = GetTime() - var_b07228b6.var_9d876bed;
		var_b07228b6 thread function_5ad57748();
		var_b07228b6.var_9d876bed = undefined;
		var_b07228b6.var_87aa3c26 = GetTime() + 150;
		var_b07228b6.var_5001b74f = undefined;
		var_b07228b6.var_9d876bed = undefined;
		var_b07228b6.var_1e1a5e6f = undefined;
		self notify("hash_9641f650");
		self notify("hash_de3c9ffe", var_b07228b6);
	}
}

/*
	Name: function_d23326c3
	Namespace: namespace_175490fb
	Checksum: 0xBB559609
	Offset: 0x34B8
	Size: 0x111
	Parameters: 3
	Flags: None
*/
function function_d23326c3(var_2d11f419, var_22fd856d, var_86abddd9)
{
	if(isdefined(self.var_175490fb.var_d1460543[var_2d11f419]))
	{
		var_c5b0e858 = self.var_175490fb.var_d1460543[var_2d11f419];
		if(isdefined(var_c5b0e858.var_b07228b6))
		{
			if(isdefined(var_22fd856d))
			{
				var_c5b0e858.var_b07228b6 notify(var_22fd856d);
			}
			self function_4f67aa29(0, var_c5b0e858.var_b88e0bc);
			self function_35c12954(var_c5b0e858.var_b88e0bc);
			if(isdefined(var_86abddd9) && var_86abddd9)
			{
				self function_18d9de78(var_c5b0e858.var_b07228b6);
			}
			var_c5b0e858.var_b07228b6 = undefined;
		}
	}
}

/*
	Name: function_27fa88d6
	Namespace: namespace_175490fb
	Checksum: 0x139CCEE0
	Offset: 0x35D8
	Size: 0xB3
	Parameters: 1
	Flags: Private
*/
function private function_27fa88d6(var_5dc5e20a)
{
	self endon("hash_de3c9ffe");
	self notify("hash_27fa88d6");
	self endon("hash_27fa88d6");
	var_2d11f419 = var_5dc5e20a function_aecdfd5e(self);
	self namespace_82b91a51::function_5b7e3888("death", "ccom_lock_fired", "ccom_lock_aborted_unique");
	var_5dc5e20a function_4f67aa29(0, var_2d11f419);
	var_5dc5e20a function_35c12954(var_2d11f419);
}

/*
	Name: function_f5c2844
	Namespace: namespace_175490fb
	Checksum: 0xCD9A3CF8
	Offset: 0x3698
	Size: 0x5E3
	Parameters: 4
	Flags: None
*/
function function_f5c2844(var_2d11f419, var_b07228b6, var_cc834f54, var_dfcc01fd)
{
	if(var_2d11f419 == -1 || var_2d11f419 >= function_4bd0142f("scr_max_simLocks"))
	{
		return;
	}
	if(isdefined(var_b07228b6.var_87aa3c26) && GetTime() < var_b07228b6.var_87aa3c26)
	{
		return;
	}
	if(isdefined(self.var_175490fb.var_d1460543[var_2d11f419]))
	{
		self function_d23326c3(var_2d11f419, "ccom_lost_lock");
		var_47006358 = self.var_175490fb.var_d1460543[var_2d11f419];
		var_47006358.var_b07228b6 = var_b07228b6;
	}
	else
	{
		var_47006358 = function_a8fb77bd();
		var_47006358.var_b07228b6 = var_b07228b6;
		var_47006358.var_b88e0bc = var_2d11f419;
		self.var_175490fb.var_d1460543[var_2d11f419] = var_47006358;
	}
	if(isdefined(var_47006358.var_b07228b6))
	{
		if(isdefined(var_47006358.var_b07228b6.var_9147087d) && isdefined(var_47006358.var_b07228b6.var_9147087d[self.var_175490fb.var_b6fd26ae.var_4be20d44]))
		{
			if(!isdefined(var_47006358.var_b07228b6.var_5001b74f))
			{
				var_47006358.var_b07228b6.var_9d876bed = GetTime() - var_47006358.var_b07228b6.var_6c8af4c4;
				var_47006358.var_b07228b6.var_5001b74f = self;
				var_47006358.var_b07228b6 notify("hash_1bf7ef5");
				var_9df7c303 = var_47006358.var_b07228b6.var_6c8af4c4 / var_47006358.var_b07228b6.var_9147087d[self.var_175490fb.var_b6fd26ae.var_4be20d44] * 1000;
				function_eae88e7f(self, var_47006358.var_b07228b6.var_9147087d[self.var_175490fb.var_b6fd26ae.var_4be20d44], var_9df7c303);
				level thread function_9641f650(self);
			}
			if(isdefined(var_47006358.var_b07228b6.var_5001b74f) && var_47006358.var_b07228b6.var_5001b74f == self)
			{
				var_47006358.var_b07228b6.var_1e1a5e6f = namespace_d73b9283::function_31931862(GetTime() - var_47006358.var_b07228b6.var_9d876bed / var_47006358.var_b07228b6.var_9147087d[self.var_175490fb.var_b6fd26ae.var_4be20d44] * 1000, 0, 1);
			}
		}
		self function_c477757c(var_47006358.var_b07228b6, var_47006358.var_b88e0bc);
		var_47006358.var_cd83ba7b = 1;
		if(!self function_95dfb5f4(var_47006358.var_b07228b6, var_cc834f54, var_dfcc01fd))
		{
			var_47006358.var_cd83ba7b = 0;
			self function_4f67aa29(1, var_2d11f419);
		}
		if(isdefined(var_47006358.var_b07228b6.var_1e1a5e6f))
		{
			if(var_47006358.var_b07228b6.var_5001b74f == self)
			{
				if(var_47006358.var_b07228b6.var_1e1a5e6f != 1)
				{
					var_47006358.var_cd83ba7b = 2;
					self function_4f67aa29(1, var_2d11f419);
				}
			}
			else
			{
				var_47006358.var_cd83ba7b = 0;
				self function_4f67aa29(1, var_2d11f419);
			}
		}
		if(var_47006358.var_cd83ba7b == 1)
		{
			function_c5b2f654(self);
			self function_4f67aa29(0, var_2d11f419);
			self function_a953e0e6(var_47006358.var_b07228b6, var_47006358.var_b88e0bc);
			var_47006358.var_b07228b6 notify("hash_92698df4", self);
			level notify("hash_92698df4", var_47006358.var_b07228b6, self);
		}
		else
		{
			var_47006358.var_b07228b6 notify("hash_4a129f22", self);
			level notify("hash_4a129f22", var_47006358.var_b07228b6, self);
		}
		var_47006358.var_b07228b6 thread function_27fa88d6(self);
	}
}

/*
	Name: function_eae88e7f
	Namespace: namespace_175490fb
	Checksum: 0x75E99DFA
	Offset: 0x3C88
	Size: 0xE3
	Parameters: 3
	Flags: None
*/
function function_eae88e7f(var_d509a5af, var_62240a71, var_ecbee74c)
{
	var_35c84e32 = var_62240a71 & 31;
	if(var_ecbee74c > 0)
	{
		var_b6ba8459 = namespace_d73b9283::function_31931862(var_ecbee74c, 0, 1);
		var_a4e8111c = function_b6b79a0(var_b6ba8459 * 128) << 5;
		var_35c84e32 = var_35c84e32 + var_a4e8111c;
	}
	var_d509a5af namespace_71e9cb84::function_e9c3870b("hacking_progress", var_35c84e32);
	var_d509a5af namespace_71e9cb84::function_e9c3870b("sndCCHacking", 1);
}

/*
	Name: function_c5b2f654
	Namespace: namespace_175490fb
	Checksum: 0xDC432AEA
	Offset: 0x3D78
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_c5b2f654(var_d509a5af)
{
	if(isdefined(var_d509a5af))
	{
		var_d509a5af namespace_71e9cb84::function_e9c3870b("hacking_progress", 0);
		var_d509a5af namespace_71e9cb84::function_e9c3870b("sndCCHacking", 0);
	}
}

/*
	Name: function_9641f650
	Namespace: namespace_175490fb
	Checksum: 0xEF551414
	Offset: 0x3DD8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_9641f650(var_d509a5af)
{
	var_d509a5af endon("hash_643a7daf");
	var_d509a5af notify("hash_9641f650");
	var_d509a5af endon("hash_9641f650");
	var_d509a5af namespace_82b91a51::function_5b7e3888("death", "ccom_lockOnProgress_Cleared", "ccom_lost_lock", "ccom_locked_on");
	function_c5b2f654(var_d509a5af);
}

/*
	Name: function_aecdfd5e
	Namespace: namespace_175490fb
	Checksum: 0xF74302BD
	Offset: 0x3E68
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_aecdfd5e(var_b07228b6)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_175490fb.var_d1460543.size; var_c957f6b6++)
	{
		if(!isdefined(self.var_175490fb.var_d1460543[var_c957f6b6].var_b07228b6))
		{
			continue;
		}
		if(self.var_175490fb.var_d1460543[var_c957f6b6].var_b07228b6 == var_b07228b6)
		{
			return var_c957f6b6;
		}
	}
	return -1;
}

/*
	Name: function_47af001d
	Namespace: namespace_175490fb
	Checksum: 0x717D8181
	Offset: 0x3F10
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_47af001d()
{
	var_b3db42a9 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_175490fb.var_d1460543.size; var_c957f6b6++)
	{
		if(!isdefined(self.var_175490fb.var_d1460543[var_c957f6b6].var_b07228b6))
		{
			continue;
		}
		var_b3db42a9[var_b3db42a9.size] = self.var_175490fb.var_d1460543[var_c957f6b6].var_b07228b6;
	}
	return var_b3db42a9;
}

/*
	Name: function_70bb0188
	Namespace: namespace_175490fb
	Checksum: 0xEE1FA0CB
	Offset: 0x3FC0
	Size: 0x363
	Parameters: 2
	Flags: None
*/
function function_70bb0188(var_b07228b6, var_f9d4d24e)
{
	if(!isdefined(var_f9d4d24e))
	{
		var_f9d4d24e = 0;
	}
	if(self.var_175490fb.var_d1460543.size < function_4bd0142f("scr_max_simLocks"))
	{
		return self.var_175490fb.var_d1460543.size;
	}
	var_2b28b05a = self function_aecdfd5e(var_b07228b6);
	if(var_2b28b05a != -1)
	{
		return var_2b28b05a;
	}
	else
	{
		var_2d11f419 = -1;
		var_49e0ea09 = function_bc7ce905(self function_89c87c9c());
		var_e7763e41 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_175490fb.var_d1460543.size; var_c957f6b6++)
		{
			var_9a245bc3 = self.var_175490fb.var_d1460543[var_c957f6b6].var_b07228b6;
			if(!isdefined(var_9a245bc3))
			{
				return var_c957f6b6;
			}
			var_47006358 = function_a8fb77bd();
			var_47006358.var_42bd74de = function_5f9a4869(var_49e0ea09, function_f679a325(var_9a245bc3.var_722885f3 - self.var_722885f3));
			if(isdefined(self.var_175490fb.var_f72b478f))
			{
			}
			else
			{
			}
			var_f72b478f = 0.83;
			if(var_47006358.var_42bd74de > var_f72b478f)
			{
				var_47006358.var_b07228b6 = var_9a245bc3;
				namespace_84970cc4::function_5fee9333(var_e7763e41, &function_aa0319d2, var_47006358);
			}
		}
		var_47006358 = function_a8fb77bd();
		var_47006358.var_42bd74de = function_5f9a4869(var_49e0ea09, function_f679a325(var_b07228b6.var_722885f3 - self.var_722885f3));
		var_47006358.var_b07228b6 = var_b07228b6;
		namespace_84970cc4::function_5fee9333(var_e7763e41, &function_aa0319d2, var_47006358);
		var_20abbd09 = var_e7763e41[var_e7763e41.size - 1].var_b07228b6;
		if(!var_f9d4d24e && var_20abbd09 == var_b07228b6)
		{
			return -1;
		}
		return self function_aecdfd5e(var_20abbd09);
	}
}

/*
	Name: function_b04ec032
	Namespace: namespace_175490fb
	Checksum: 0xC6E9F9CF
	Offset: 0x4330
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_b04ec032(var_86abddd9)
{
	if(!isdefined(var_86abddd9))
	{
		var_86abddd9 = 0;
	}
	if(isdefined(self.var_175490fb) && isdefined(self.var_175490fb.var_d1460543))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_175490fb.var_d1460543.size; var_c957f6b6++)
		{
			self function_d23326c3(var_c957f6b6, undefined, var_86abddd9);
		}
	}
	self function_35c12954(-1);
	self.var_175490fb.var_d1460543 = [];
}

/*
	Name: function_b5f4e597
	Namespace: namespace_175490fb
	Checksum: 0x6EFEC0A0
	Offset: 0x43F8
	Size: 0x303
	Parameters: 1
	Flags: None
*/
function function_b5f4e597(var_dfcc01fd)
{
	self endon("hash_643a7daf");
	self notify("hash_b5f4e597");
	self endon("hash_b5f4e597");
	if(var_dfcc01fd.var_ac7576c7)
	{
		var_cc834f54 = 1500;
		if(isdefined(var_dfcc01fd.var_a1b9cf66))
		{
			var_cc834f54 = var_dfcc01fd.var_a1b9cf66;
		}
		var_e80a7386 = var_cc834f54 * var_cc834f54;
	}
	else
	{
		var_e80a7386 = 0;
	}
	var_6f023b72 = 0;
	while(self function_2103ff4b(var_dfcc01fd))
	{
		if(var_e80a7386 > 0)
		{
			if(isdefined(self.var_175490fb.var_9d8e0758))
			{
				var_657b1773 = self [[self.var_175490fb.var_9d8e0758]](var_dfcc01fd);
			}
			else
			{
				var_657b1773 = function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
			}
			foreach(var_6050ab17 in var_657b1773)
			{
				var_2c3e05ad = function_cb3d1c9b(self.var_722885f3, var_6050ab17.var_722885f3);
				if(var_2c3e05ad > var_e80a7386)
				{
					continue;
				}
				var_b766574c = self.var_175490fb.var_b766574c;
				var_42d20903 = self.var_175490fb.var_42d20903;
				if(!function_7a7d1608(var_6050ab17, var_dfcc01fd))
				{
					self.var_175490fb.var_b766574c = var_b766574c;
					self.var_175490fb.var_42d20903 = var_42d20903;
					continue;
				}
				var_6f023b72 = 1;
				break;
			}
		}
		else
		{
			var_6f023b72 = 1;
		}
		self namespace_71e9cb84::function_cc4d5165("playerAbilities.inRange", var_6f023b72);
		wait(0.05);
	}
	var_6f023b72 = 0;
	self namespace_71e9cb84::function_cc4d5165("playerAbilities.inRange", var_6f023b72);
}

/*
	Name: function_5ad57748
	Namespace: namespace_175490fb
	Checksum: 0x61CAC150
	Offset: 0x4708
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_5ad57748()
{
	self endon("hash_128f8789");
	self notify("hash_5ad57748");
	self endon("hash_5ad57748");
	self endon("hash_1bf7ef5");
	var_82361971 = function_b6b79a0(function_f3087faa("scr_hacktime_decay_rate", 0.25) / 20 * 1000);
	while(self.var_6c8af4c4 > 0)
	{
		wait(0.05);
		self.var_6c8af4c4 = self.var_6c8af4c4 - var_82361971;
		if(self.var_6c8af4c4 < 0)
		{
			self.var_6c8af4c4 = 0;
		}
	}
}

/*
	Name: function_f5799ee1
	Namespace: namespace_175490fb
	Checksum: 0xF4FE5F35
	Offset: 0x47D0
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_f5799ee1()
{
	if(!isdefined(self.var_175490fb.var_4eb8cd67) || self.var_175490fb.var_4eb8cd67.size == 0)
	{
		return;
	}
	var_4eb8cd67 = [];
	foreach(var_b07228b6 in self.var_175490fb.var_4eb8cd67)
	{
		if(!isdefined(var_b07228b6))
		{
			continue;
		}
		var_eb568523 = 0;
		if(self.var_175490fb.var_d1460543.size)
		{
			foreach(var_9ddde835 in self.var_175490fb.var_d1460543)
			{
				if(!isdefined(var_9ddde835.var_b07228b6))
				{
					continue;
				}
				if(var_9ddde835.var_b07228b6 == var_b07228b6)
				{
					var_eb568523 = 1;
					break;
				}
			}
		}
		else if(!var_eb568523)
		{
			var_b07228b6 notify("hash_de3c9ffe", self);
			level notify("hash_de3c9ffe", var_b07228b6, self);
			self function_18d9de78(var_b07228b6);
			continue;
		}
		var_4eb8cd67[var_4eb8cd67.size] = var_b07228b6;
	}
	self.var_175490fb.var_4eb8cd67 = var_4eb8cd67;
}

/*
	Name: function_17fea3ed
	Namespace: namespace_175490fb
	Checksum: 0xEE5F5D4A
	Offset: 0x49F0
	Size: 0x9A5
	Parameters: 3
	Flags: None
*/
function function_17fea3ed(var_2d11f419, var_dfcc01fd, var_3c731641)
{
	self notify("hash_e9579630");
	self endon("hash_e9579630");
	self endon("hash_1194c978");
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	if(isdefined(self.var_175490fb.var_23d4a73a))
	{
	}
	else
	{
	}
	var_f8456b37 = 130;
	if(!isdefined(var_3c731641))
	{
		var_3c731641 = 3;
	}
	self thread function_7806352d(var_dfcc01fd);
	self thread function_f5c296aa(var_dfcc01fd);
	if(var_3c731641 < 1)
	{
		var_3c731641 = 1;
	}
	if(var_3c731641 > 5)
	{
		var_3c731641 = 5;
	}
	var_cc834f54 = 1500;
	if(isdefined(var_dfcc01fd.var_a1b9cf66))
	{
		var_cc834f54 = var_dfcc01fd.var_a1b9cf66;
	}
	var_36a66a95 = [];
	var_e7763e41 = [];
	while(self function_2103ff4b(var_dfcc01fd))
	{
		wait(0.05);
		self function_f5799ee1();
		self function_b04ec032();
		self.var_175490fb.var_b766574c = 0;
		if(isdefined(self.var_175490fb.var_9d8e0758))
		{
			var_657b1773 = self [[self.var_175490fb.var_9d8e0758]](var_dfcc01fd);
		}
		else
		{
			var_657b1773 = function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
		}
		if(var_657b1773.size == 0)
		{
			self function_29bf9dee(undefined, 1);
		}
		var_ab2554ab = [];
		var_49e0ea09 = function_bc7ce905(self function_89c87c9c());
		var_6f14dd02 = self function_d48f2ab3("tag_aim");
		foreach(var_6050ab17 in var_657b1773)
		{
			var_4880f4e6 = var_6050ab17 function_6083923();
			var_7e1d2e82 = function_f679a325(var_4880f4e6 - var_6f14dd02);
			var_6050ab17.var_4ddba9ea = function_5f9a4869(var_7e1d2e82, var_49e0ea09);
			if(isdefined(var_6050ab17.var_fb7ce72a))
			{
				var_3c61bfc2 = var_6050ab17 [[var_6050ab17.var_fb7ce72a]](self, var_dfcc01fd);
				if(isdefined(var_3c61bfc2) && var_3c61bfc2)
				{
					var_ab2554ab[var_ab2554ab.size] = var_6050ab17;
					continue;
				}
			}
			if(isdefined(self.var_175490fb.var_f72b478f))
			{
			}
			else
			{
			}
			var_f72b478f = 0.83;
			if(var_6050ab17.var_4ddba9ea > var_f72b478f)
			{
				var_ab2554ab[var_ab2554ab.size] = var_6050ab17;
			}
		}
		if(var_ab2554ab.size == 0)
		{
			self function_29bf9dee(undefined, 1);
			continue;
		}
		var_36a66a95 = [];
		var_99fe996d = [];
		foreach(var_6050ab17 in var_ab2554ab)
		{
			if(!isdefined(var_6050ab17))
			{
				continue;
			}
			if(!self function_2e65f35d(var_6050ab17, var_f8456b37, var_dfcc01fd, var_cc834f54))
			{
				continue;
			}
			var_36a66a95[var_36a66a95.size] = var_6050ab17;
		}
		var_304647c9 = var_e7763e41.size;
		var_e7763e41 = [];
		foreach(var_b07228b6 in var_36a66a95)
		{
			var_47006358 = function_a8fb77bd();
			var_47006358.var_42bd74de = var_b07228b6.var_4ddba9ea;
			var_47006358.var_b07228b6 = var_b07228b6;
			namespace_84970cc4::function_5fee9333(var_e7763e41, &function_aa0319d2, var_47006358);
		}
		if(var_e7763e41.size)
		{
			var_c957f6b6 = 0;
			foreach(var_c5b0e858 in var_e7763e41)
			{
				var_c957f6b6++;
				if(var_c957f6b6 > var_3c731641)
				{
					break;
				}
				if(isdefined(var_c5b0e858.var_b07228b6))
				{
					if(isdefined(var_c5b0e858.var_b07228b6.var_ced13b2f) && var_c5b0e858.var_b07228b6.var_ced13b2f && self function_aecdfd5e(var_c5b0e858.var_b07228b6) == -1)
					{
						foreach(var_5a952f1 in self.var_175490fb.var_4eb8cd67)
						{
							if(var_5a952f1 == var_c5b0e858.var_b07228b6)
							{
								continue;
							}
							if(isdefined(var_5a952f1.var_ced13b2f) && var_5a952f1.var_ced13b2f)
							{
								var_c5b0e858.var_b07228b6 = undefined;
								break;
							}
						}
					}
					else if(!isdefined(var_c5b0e858.var_b07228b6))
					{
						continue;
					}
					if(self function_aecdfd5e(var_c5b0e858.var_b07228b6) != -1)
					{
						continue;
					}
					var_2d11f419 = self function_70bb0188(var_c5b0e858.var_b07228b6);
					if(var_2d11f419 == -1)
					{
						continue;
					}
					if(!function_7f41c8e7(self.var_175490fb.var_4eb8cd67, var_c5b0e858.var_b07228b6))
					{
						self.var_175490fb.var_4eb8cd67[self.var_175490fb.var_4eb8cd67.size] = var_c5b0e858.var_b07228b6;
					}
					self function_f5c2844(var_2d11f419, var_c5b0e858.var_b07228b6, var_cc834f54, var_dfcc01fd);
				}
			}
			self function_e2af603e("damage_light");
		}
	}
	self notify("hash_e9579630", self.var_175490fb.var_f72b478f, self.var_175490fb.var_23d4a73a);
}

/*
	Name: function_252cee46
	Namespace: namespace_175490fb
	Checksum: 0x5441E03A
	Offset: 0x53A0
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_252cee46()
{
	/#
		self endon("hash_128f8789");
		for(;;)
		{
			function_edbf1dc8(self.var_722885f3, self.var_6ab6f4fd);
			wait(0.05);
		}
	#/
}

/*
	Name: function_edbf1dc8
	Namespace: namespace_175490fb
	Checksum: 0xAECE29D4
	Offset: 0x53E8
	Size: 0x2BB
	Parameters: 3
	Flags: None
*/
function function_edbf1dc8(var_22ae8d39, var_37831ac3, var_20f3f965)
{
	/#
		var_1a859714 = function_bc7ce905(var_37831ac3);
		var_b393f1e7 = VectorScale(var_1a859714, 50);
		var_1c4abaa0 = VectorScale(var_1a859714, 50 * 0.8);
		var_7d6c9041 = function_298b8148(var_37831ac3);
		var_4368f9d0 = VectorScale(var_7d6c9041, 50 * -0.2);
		var_e7e9a7ab = VectorScale(var_7d6c9041, 50 * 0.2);
		var_b5f6560e = function_aba60185(var_37831ac3);
		var_7d6c9041 = VectorScale(var_7d6c9041, 50);
		var_b5f6560e = VectorScale(var_b5f6560e, 50);
		var_fd4d3e12 = (0.9, 0.2, 0.2);
		var_10e5c2b2 = (0.2, 0.9, 0.2);
		var_a8886e1 = (0.2, 0.2, 0.9);
		if(isdefined(var_20f3f965))
		{
			var_fd4d3e12 = var_20f3f965;
			var_10e5c2b2 = var_20f3f965;
			var_a8886e1 = var_20f3f965;
		}
		function_4e418837(var_22ae8d39, var_22ae8d39 + var_b393f1e7, var_fd4d3e12, 0.9);
		function_4e418837(var_22ae8d39 + var_b393f1e7, var_22ae8d39 + var_1c4abaa0 + var_e7e9a7ab, var_fd4d3e12, 0.9);
		function_4e418837(var_22ae8d39 + var_b393f1e7, var_22ae8d39 + var_1c4abaa0 + var_4368f9d0, var_fd4d3e12, 0.9);
		function_4e418837(var_22ae8d39, var_22ae8d39 + var_7d6c9041, var_a8886e1, 0.9);
		function_4e418837(var_22ae8d39, var_22ae8d39 + var_b5f6560e, var_10e5c2b2, 0.9);
	#/
}

/*
	Name: function_b5002a71
	Namespace: namespace_175490fb
	Checksum: 0xBDA5FF5
	Offset: 0x56B0
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_b5002a71(var_722885f3, var_f8456b37, var_ab02d1a4, var_d900369a)
{
	/#
		if(!isdefined(var_ab02d1a4))
		{
			var_ab02d1a4 = 1;
		}
		if(!isdefined(var_d900369a))
		{
			var_d900369a = (1, 0, 0);
		}
		var_d405a39f = function_b6b79a0(20 * var_ab02d1a4);
		function_f090a335(var_722885f3, var_f8456b37, var_d900369a, 0, 1, var_d405a39f);
	#/
}

/*
	Name: function_5ee38fe3
	Namespace: namespace_175490fb
	Checksum: 0xE137CF18
	Offset: 0x5760
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_5ee38fe3(var_722885f3, var_7547c2d3, var_aaeec8c5)
{
	if(!isdefined(var_7547c2d3))
	{
		return;
	}
	if(var_7547c2d3.size == 0)
	{
		return;
	}
	if(isdefined(var_aaeec8c5))
	{
	}
	else
	{
	}
	function_57efbe1(var_7547c2d3, var_722885f3, 1, 0, 2048);
	return var_7547c2d3[0];
}

/*
	Name: function_cf41922d
	Namespace: namespace_175490fb
	Checksum: 0x689E4A2C
	Offset: 0x57E0
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_cf41922d(var_4be20d44)
{
	var_28189c49 = namespace_d00ec32::function_85c33215(var_4be20d44);
	if(isdefined(var_28189c49))
	{
		var_f7827dff = 8 * var_28189c49.var_fe311e35;
		return var_28189c49.var_ad23e503 << var_f7827dff;
	}
	else if(isdefined(level.var_ab0cd3b2[var_4be20d44]))
	{
		return 1 << 24 + level.var_ab0cd3b2[var_4be20d44].var_fe311e35;
	}
	else
	{
		return;
	}
}

/*
	Name: function_58c312f2
	Namespace: namespace_175490fb
	Checksum: 0xDBC7E41
	Offset: 0x58A0
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_58c312f2()
{
	if(!isdefined(self))
	{
		return;
	}
	self function_e4588dde();
	foreach(var_28189c49 in level.var_175490fb.var_9d01aa69)
	{
		if(!isdefined(var_28189c49))
		{
			continue;
		}
		var_ad23e503 = function_cf41922d(var_28189c49.var_4be20d44);
		if(isdefined(var_ad23e503))
		{
			self.var_175490fb.var_6f227ef9 = self.var_175490fb.var_6f227ef9 | var_ad23e503;
		}
	}
}

/*
	Name: function_59965309
	Namespace: namespace_175490fb
	Checksum: 0xA21D9079
	Offset: 0x59B0
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_59965309(var_4be20d44)
{
	if(!isdefined(self))
	{
		return;
	}
	var_ad23e503 = function_cf41922d(var_4be20d44);
	if(!isdefined(var_ad23e503))
	{
		return;
	}
	self function_e4588dde();
	self.var_175490fb.var_6f227ef9 = self.var_175490fb.var_6f227ef9 | var_ad23e503;
}

/*
	Name: function_a1f70a02
	Namespace: namespace_175490fb
	Checksum: 0x2060018B
	Offset: 0x5A38
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_a1f70a02(var_4be20d44)
{
	if(!isdefined(self))
	{
		return;
	}
	self function_e4588dde();
	var_ad23e503 = function_cf41922d(var_4be20d44);
	if(!isdefined(var_ad23e503))
	{
		return;
	}
	~var_ad23e503;
	self.var_175490fb.var_6f227ef9 = self.var_175490fb.var_6f227ef9 & var_ad23e503;
}

/*
	Name: function_8fd8f5b1
	Namespace: namespace_175490fb
	Checksum: 0xA112F33
	Offset: 0x5AC8
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_8fd8f5b1(var_4be20d44)
{
	if(!isdefined(self))
	{
		return 0;
	}
	if(isdefined(self.var_342d9e3a) && self.var_342d9e3a)
	{
		return 1;
	}
	self function_e4588dde();
	var_ad23e503 = function_cf41922d(var_4be20d44);
	if(!isdefined(var_ad23e503))
	{
		return 0;
	}
	if(self.var_175490fb.var_6f227ef9 & var_ad23e503)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_e4588dde
	Namespace: namespace_175490fb
	Checksum: 0xD2BFAEAC
	Offset: 0x5B70
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e4588dde()
{
	if(!isdefined(self.var_175490fb))
	{
		self.var_175490fb = function_a8fb77bd();
	}
	if(!isdefined(self.var_175490fb.var_6f227ef9))
	{
		self.var_175490fb.var_6f227ef9 = 0;
	}
}

/*
	Name: function_28d7b2ad
	Namespace: namespace_175490fb
	Checksum: 0x179C50D2
	Offset: 0x5BD0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_28d7b2ad(var_22fd856d, var_b691b9cf)
{
	self endon(var_22fd856d);
	self endon("hash_128f8789");
	self waittillmatch(var_b691b9cf);
	self notify(var_22fd856d, "end");
}

/*
	Name: function_cf64f12c
	Namespace: namespace_175490fb
	Checksum: 0x4E962AAC
	Offset: 0x5C20
	Size: 0x163
	Parameters: 5
	Flags: None
*/
function function_cf64f12c()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_421746e0
	Namespace: namespace_175490fb
	Checksum: 0x8221DF29
	Offset: 0x5D90
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_421746e0()
{
	if(isdefined(self.var_bab9655e))
	{
		if(self.var_bab9655e == 0)
		{
			return 0;
		}
	}
	if(isdefined(self.var_770a8906) && self.var_770a8906)
	{
		return 1;
	}
	if(isdefined(self.var_1b425382))
	{
		return 1;
	}
	if(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot" && !function_76e3026d(self))
	{
		return 1;
	}
	if(function_8d0347b8(self) && !self function_8029a253())
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_eee64fa2
	Namespace: namespace_175490fb
	Checksum: 0x154C4168
	Offset: 0x5E68
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_eee64fa2()
{
	return isdefined(self function_52b8ab2b());
}

/*
	Name: function_8257bcb3
	Namespace: namespace_175490fb
	Checksum: 0x10157C9F
	Offset: 0x5E90
	Size: 0xEF
	Parameters: 2
	Flags: None
*/
function function_8257bcb3(var_d30aaf02, var_aaeec8c5)
{
	if(!isdefined(var_aaeec8c5))
	{
		var_aaeec8c5 = 2;
	}
	if(!isdefined(self.var_175490fb.var_790dd30b))
	{
		self.var_175490fb.var_790dd30b = [];
	}
	if(isdefined(self.var_175490fb.var_790dd30b[var_d30aaf02]))
	{
		self.var_175490fb.var_790dd30b[var_d30aaf02] = undefined;
	}
	self.var_175490fb.var_790dd30b[var_d30aaf02] = function_a8fb77bd();
	self.var_175490fb.var_790dd30b[var_d30aaf02].var_9689b47c = 0;
	self.var_175490fb.var_790dd30b[var_d30aaf02].var_51b4aeb8 = var_aaeec8c5;
}

/*
	Name: function_e06423b6
	Namespace: namespace_175490fb
	Checksum: 0x87E89E14
	Offset: 0x5F88
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_e06423b6(var_d30aaf02)
{
	if(!isdefined(self.var_175490fb) || !isdefined(self.var_175490fb.var_790dd30b) || !isdefined(self.var_175490fb.var_790dd30b[var_d30aaf02]))
	{
		return "";
	}
	var_b6ba8459 = self.var_175490fb.var_790dd30b[var_d30aaf02].var_9689b47c;
	self.var_175490fb.var_790dd30b[var_d30aaf02].var_9689b47c++;
	if(self.var_175490fb.var_790dd30b[var_d30aaf02].var_9689b47c > self.var_175490fb.var_790dd30b[var_d30aaf02].var_51b4aeb8)
	{
		self.var_175490fb.var_790dd30b[var_d30aaf02].var_9689b47c = 0;
	}
	if(var_b6ba8459 == 0)
	{
		return "";
	}
	else
	{
		return "_" + var_b6ba8459;
	}
}

/*
	Name: function_a2ec096c
	Namespace: namespace_175490fb
	Checksum: 0xF70E5F51
	Offset: 0x60C8
	Size: 0xA3
	Parameters: 6
	Flags: None
*/
function function_a2ec096c(var_722885f3, var_c8bc3f0a, var_8b6f854, var_3b6e5f7e, var_d405a39f, var_d900369a)
{
	if(!isdefined(var_3b6e5f7e))
	{
		var_3b6e5f7e = 0;
	}
	if(!isdefined(var_d405a39f))
	{
		var_d405a39f = 20;
	}
	if(!isdefined(var_d900369a))
	{
		var_d900369a = (1, 0, 0);
	}
	/#
		function_30077d70(var_722885f3, var_c8bc3f0a, var_8b6f854, var_3b6e5f7e, var_d900369a, 1, 0, var_d405a39f);
	#/
}

/*
	Name: function_172e04fa
	Namespace: namespace_175490fb
	Checksum: 0xF77BD5EE
	Offset: 0x6178
	Size: 0xE3
	Parameters: 5
	Flags: None
*/
function function_172e04fa(var_722885f3, var_f8456b37, var_d900369a, var_aabe9f43, var_91d025bc)
{
	if(!isdefined(var_d900369a))
	{
		var_d900369a = (1, 0, 0);
	}
	if(!isdefined(var_aabe9f43))
	{
		var_aabe9f43 = 0.1;
	}
	if(!isdefined(var_91d025bc))
	{
		var_91d025bc = 1;
	}
	/#
		var_22e844df = function_b6b79a0(10 * 1 + function_b6b79a0(var_f8456b37) % 100);
		function_2d3eaa0e(var_722885f3, var_f8456b37, var_d900369a, var_aabe9f43, 1, var_22e844df, var_91d025bc);
	#/
}

/*
	Name: function_d1686f4c
	Namespace: namespace_175490fb
	Checksum: 0xD840CE16
	Offset: 0x6268
	Size: 0x35
	Parameters: 2
	Flags: None
*/
function function_d1686f4c(var_22fd856d, var_ab02d1a4)
{
	self endon(var_22fd856d);
	self endon("hash_128f8789");
	wait(var_ab02d1a4);
	self notify(var_22fd856d);
}

/*
	Name: function_b4daec13
	Namespace: namespace_175490fb
	Checksum: 0xFBCD0FC8
	Offset: 0x62A8
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function function_b4daec13(var_22fd856d, var_7ad67496)
{
	self endon(var_22fd856d);
	self endon("hash_128f8789");
	self waittill(var_7ad67496);
	self notify(var_22fd856d);
}

/*
	Name: function_f569ef38
	Namespace: namespace_175490fb
	Checksum: 0xE2091ED3
	Offset: 0x62F0
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_f569ef38(var_22fd856d, var_a3d46ee4)
{
	var_a3d46ee4 endon("hash_128f8789");
	self waittill(var_22fd856d);
	if(isdefined(var_a3d46ee4))
	{
		var_a3d46ee4 function_dc8c8404();
	}
}

/*
	Name: function_f8669cbf
	Namespace: namespace_175490fb
	Checksum: 0x382F8377
	Offset: 0x6348
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_f8669cbf(var_9b185703)
{
	namespace_71e9cb84::function_331efedc("cyber_arm_pulse", var_9b185703);
}

/*
	Name: function_78525729
	Namespace: namespace_175490fb
	Checksum: 0x99770FB6
	Offset: 0x6380
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_78525729()
{
	/#
		namespace_33b293fd::function_a7ee953(function_8d0347b8(self), "Dev Block strings are not supported");
	#/
	return namespace_96515e2a::function_c3f3e8e8(self, "_stance");
}

/*
	Name: function_5e3d3aa
	Namespace: namespace_175490fb
	Checksum: 0xF4EEEFAE
	Offset: 0x63E0
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_5e3d3aa()
{
	/#
		namespace_33b293fd::function_a7ee953(function_8d0347b8(self), "Dev Block strings are not supported");
	#/
	var_6502dbf1 = self function_78525729();
	if(var_6502dbf1 == "stand")
	{
		return "stn";
	}
	if(var_6502dbf1 == "crouch")
	{
		return "crc";
	}
	return "";
}

/*
	Name: function_aacf4c41
	Namespace: namespace_175490fb
	Checksum: 0xD5D761FD
	Offset: 0x6478
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_aacf4c41(var_6b00ee7)
{
	/#
		function_895b00("Dev Block strings are not supported" + var_6b00ee7);
	#/
}

/*
	Name: function_76e3026d
	Namespace: namespace_175490fb
	Checksum: 0x7C69E97B
	Offset: 0x64B8
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_76e3026d(var_aa10fce8)
{
	if(isdefined(var_aa10fce8.var_a7f77d7c) && var_aa10fce8.var_a7f77d7c)
	{
		return 0;
	}
	if(isdefined(var_aa10fce8.var_fb4b537b) && var_aa10fce8.var_fb4b537b)
	{
		return 0;
	}
	if(namespace_97d6aab7::function_e04abdca(var_aa10fce8, 384) == 0)
	{
	}
	else
	{
	}
	return 0;
}

/*
	Name: function_c3c6aff4
	Namespace: namespace_175490fb
	Checksum: 0x45ED2F18
	Offset: 0x6550
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_c3c6aff4(var_2d11f419, var_dfcc01fd, var_ecc9d566, var_49ff66b8)
{
	self endon("hash_128f8789");
	self endon(var_49ff66b8);
	self waittill(var_ecc9d566);
	self function_868603c7(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_adc40f11
	Namespace: namespace_175490fb
	Checksum: 0x9A705051
	Offset: 0x65B8
	Size: 0xC5
	Parameters: 2
	Flags: None
*/
function function_adc40f11(var_dfcc01fd, var_a7491a97)
{
	if(var_a7491a97)
	{
		self notify(var_dfcc01fd.var_4be20d44 + "_fired");
		level notify(var_dfcc01fd.var_4be20d44 + "_fired");
		self notify("hash_81c0052c", var_dfcc01fd);
		namespace_d8129fdd::function_42ffd679(self, "fired", var_dfcc01fd);
		self function_18959191(1);
	}
	else
	{
		self function_18959191(0);
		self notify("hash_2bc5d416", var_dfcc01fd);
	}
}

/*
	Name: function_a3e55896
	Namespace: namespace_175490fb
	Checksum: 0x75A0197C
	Offset: 0x6688
	Size: 0x26F
	Parameters: 1
	Flags: None
*/
function function_a3e55896(var_dfcc01fd)
{
	if(self.var_175490fb.var_b766574c != 0 && (self.var_175490fb.var_d1460543.size == 0 || self.var_175490fb.var_b766574c == 8))
	{
		if(self.var_175490fb.var_b766574c == 2 && isdefined(self.var_175490fb.var_42d20903))
		{
			var_edc325e = self function_9c5e5a9b(self.var_175490fb.var_42d20903, 0);
			if(var_edc325e == 0)
			{
				self.var_175490fb.var_b766574c = 1;
			}
		}
		switch(self.var_175490fb.var_b766574c)
		{
			case 2:
			{
				self function_ee220b8(var_dfcc01fd);
				break;
			}
			case 3:
			{
				self function_e9b941d7(var_dfcc01fd);
				break;
			}
			case 4:
			{
				self function_6d40d95(var_dfcc01fd);
				break;
			}
			case 1:
			{
				self function_ddef5f43(var_dfcc01fd);
				break;
			}
			case 5:
			{
				self function_85a9f38c(var_dfcc01fd);
				break;
			}
			case 6:
			{
				self function_499e813(var_dfcc01fd);
				break;
			}
			case 7:
			{
				self function_a8c06c37(var_dfcc01fd);
				break;
			}
			case 8:
			{
				self function_d2a51f76(var_dfcc01fd);
				break;
			}
		}
		level notify("hash_dce473f9", self, self.var_175490fb.var_b766574c);
		self notify("hash_dce473f9", self.var_175490fb.var_b766574c);
		self.var_175490fb.var_b766574c = 0;
	}
}

/*
	Name: function_29bf9dee
	Namespace: namespace_175490fb
	Checksum: 0xAD17D725
	Offset: 0x6900
	Size: 0x147
	Parameters: 4
	Flags: None
*/
function function_29bf9dee(var_42d20903, var_b766574c, var_10853dc3, var_61690ed5)
{
	if(!isdefined(var_10853dc3))
	{
		var_10853dc3 = 1;
	}
	if(!isdefined(var_61690ed5))
	{
		var_61690ed5 = 1;
	}
	if(!function_65f192a6(self) || !isdefined(self.var_175490fb))
	{
		return;
	}
	if(var_10853dc3 && (!isdefined(self.var_175490fb.var_301030f7) && self.var_175490fb.var_301030f7))
	{
		return;
	}
	if(!(isdefined(self.var_175490fb.var_8967863e) && self.var_175490fb.var_8967863e))
	{
		return;
	}
	if(var_61690ed5)
	{
		if(var_b766574c > self.var_175490fb.var_b766574c)
		{
			self.var_175490fb.var_b766574c = var_b766574c;
			self.var_175490fb.var_42d20903 = var_42d20903;
		}
	}
	else
	{
		self.var_175490fb.var_b766574c = var_b766574c;
		self.var_175490fb.var_42d20903 = var_42d20903;
	}
}

/*
	Name: function_c43df297
	Namespace: namespace_175490fb
	Checksum: 0x81828564
	Offset: 0x6A50
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_c43df297(var_e18d5855)
{
	var_a2d47c3d = var_e18d5855;
	var_3b6e5f7e = self.var_6ab6f4fd[1] - function_fcaa5774(var_a2d47c3d);
	var_3b6e5f7e = function_3dfa27b4(var_3b6e5f7e);
	return var_3b6e5f7e;
}

/*
	Name: function_fcaa5774
	Namespace: namespace_175490fb
	Checksum: 0x9BF0CA
	Offset: 0x6AD0
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function function_fcaa5774(var_22ae8d39)
{
	var_6ab6f4fd = function_bdcdc423(var_22ae8d39 - self.var_722885f3);
	return var_6ab6f4fd[1];
}

/*
	Name: function_5ad6b98d
	Namespace: namespace_175490fb
	Checksum: 0xB46EB2C0
	Offset: 0x6B20
	Size: 0x195
	Parameters: 3
	Flags: None
*/
function function_5ad6b98d(var_3a212fd7, var_3f27ef65, var_f9a179ed)
{
	if(!function_65f192a6(var_3f27ef65) || !isdefined(var_3a212fd7) || !isdefined(var_3a212fd7.var_312ffe43))
	{
		return var_f9a179ed;
	}
	if(!isdefined(var_3f27ef65.var_175490fb.var_5e76d31b) || !var_3f27ef65.var_175490fb.var_5e76d31b)
	{
		return var_f9a179ed;
	}
	var_31dd08f5 = level.var_e4e6dd84[var_3a212fd7.var_312ffe43];
	if(!isdefined(var_31dd08f5))
	{
		var_31dd08f5 = level.var_e4e6dd84["default"];
	}
	var_c5cac891 = 1;
	var_72cbb824 = function_7d15e2f8(var_3a212fd7.var_722885f3, var_3f27ef65.var_722885f3);
	if(var_72cbb824 < 750)
	{
		var_c5cac891 = var_31dd08f5.var_974cd16f;
	}
	else if(var_72cbb824 < 1500)
	{
		var_c5cac891 = var_31dd08f5.var_e909f6f0;
	}
	else
	{
		var_c5cac891 = var_31dd08f5.var_3d1b9c0c;
	}
	return var_f9a179ed * var_c5cac891;
}

/*
	Name: function_1be27df7
	Namespace: namespace_175490fb
	Checksum: 0xA4FB3533
	Offset: 0x6CC0
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_1be27df7()
{
	if(isdefined(self.var_fd4f9b7c) && (self.var_fd4f9b7c == function_c4d5ec1f("gadget_unstoppable_force") || self.var_fd4f9b7c == function_c4d5ec1f("gadget_unstoppable_force_upgraded")))
	{
		return 1;
	}
	return 0;
}


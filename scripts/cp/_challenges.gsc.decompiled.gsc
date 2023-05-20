#using scripts\codescripts\struct;
#using scripts\cp\_achievements;
#using scripts\cp\_decorations;
#using scripts\cp\_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_f74b04eb;

/*
	Name: function_2dc19561
	Namespace: namespace_f74b04eb
	Checksum: 0xD8275CFE
	Offset: 0x5F0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("challenges", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_f74b04eb
	Checksum: 0x74775EF2
	Offset: 0x630
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_1463e4e5();
	namespace_dabbe128::function_c61b24c4(&function_d1413784);
}

/*
	Name: function_d1413784
	Namespace: namespace_f74b04eb
	Checksum: 0x38E32DDB
	Offset: 0x670
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_d1413784()
{
	if(!isdefined(level.var_a05b7d71))
	{
		level.var_a05b7d71 = [];
	}
	waittillframeend;
	if(function_935463a2())
	{
		function_f22a66a1("actorKilled", &function_9323a046);
		function_f22a66a1("actorDamaged", &function_e0360654);
		function_f22a66a1("VehicleKilled", &function_2acd9b03);
		function_f22a66a1("VehicleDamage", &function_9323a046);
	}
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_eb99da89(&function_dadf37f9);
}

/*
	Name: function_2acd9b03
	Namespace: namespace_f74b04eb
	Checksum: 0x993A9A3D
	Offset: 0x790
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_2acd9b03(var_72254e15, var_60db70fa)
{
	function_9323a046(var_72254e15, var_60db70fa);
}

/*
	Name: function_7d1957ed
	Namespace: namespace_f74b04eb
	Checksum: 0xC5A0048
	Offset: 0x7C8
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_7d1957ed(var_72254e15, var_60db70fa)
{
	function_e0360654(var_72254e15, var_60db70fa);
}

/*
	Name: function_e0360654
	Namespace: namespace_f74b04eb
	Checksum: 0x863CBAFF
	Offset: 0x800
	Size: 0x111
	Parameters: 2
	Flags: None
*/
function function_e0360654(var_72254e15, var_60db70fa)
{
	if(isdefined(var_72254e15))
	{
		switch(var_72254e15.var_dfcc01fd.var_8c02d299.var_4be20d44)
		{
			case "emp_grenade":
			{
				break;
			}
			case "ravage_core_emp_grenade":
			case "ravage_core_emp_grenade_upg":
			{
				if(!isdefined(var_72254e15.var_8bcb913d.var_fcad099b) && var_72254e15.var_8bcb913d.var_8fc0e50e != "human")
				{
					var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_esdamage", 1);
					var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_ravagecore", 1);
					var_72254e15.var_8bcb913d.var_fcad099b = 1;
				}
				break;
			}
		}
	}
}

/*
	Name: function_9323a046
	Namespace: namespace_f74b04eb
	Checksum: 0xB272C501
	Offset: 0x920
	Size: 0x5AB
	Parameters: 2
	Flags: None
*/
function function_9323a046(var_72254e15, var_60db70fa)
{
	if(isdefined(var_72254e15))
	{
		if(isdefined(var_72254e15.var_8bcb913d) && isdefined(var_72254e15.var_8bcb913d.var_284c5bbb))
		{
			var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_fireflies", 1);
			var_72254e15.var_a0ad4f34 thread function_96ed590f("cybercom_uses_chaos");
		}
		if(isdefined(var_72254e15.var_a0ad4f34.var_a03af093))
		{
			var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_remotehijack", 1);
		}
		if(var_72254e15.var_ba36487d == "MOD_GRENADE_SPLASH" || var_72254e15.var_ba36487d == "MOD_ELECTROCUTED" || var_72254e15.var_ba36487d == "MOD_GRENADE" || var_72254e15.var_ba36487d == "MOD_EXPLOSIVE" || var_72254e15.var_ba36487d == "MOD_BURNED" || var_72254e15.var_ba36487d == "MOD_PROJECTILE_SPLASH")
		{
			if(var_72254e15.var_dfcc01fd.var_8c02d299.var_4be20d44 != "gadget_concussive_wave" && var_72254e15.var_dfcc01fd.var_8c02d299.var_4be20d44 != "hero_gravityspikes_cybercom_upgraded")
			{
				var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_explosives", 1);
				if(isdefined(var_72254e15.var_a0ad4f34.var_52482de5))
				{
					if(var_72254e15.var_a0ad4f34.var_52482de5.var_4be20d44 == "gadget_immolation_upgraded" || var_72254e15.var_a0ad4f34.var_52482de5.var_4be20d44 == "gadget_immolation")
					{
						var_72254e15.var_a0ad4f34 notify("hash_a15c319", var_72254e15.var_8bcb913d);
					}
				}
			}
		}
		switch(var_72254e15.var_dfcc01fd.var_8c02d299.var_4be20d44)
		{
			case "gadget_rapid_strike":
			case "gadget_rapid_strike_upgraded":
			{
				var_72254e15.var_a0ad4f34 notify("hash_e11b0770");
				var_72254e15.var_a0ad4f34 thread function_4c17acc8();
				break;
			}
			case "gadget_immolation":
			case "gadget_immolation_upgraded":
			{
				if(isdefined(var_72254e15.var_8bcb913d) && isdefined(var_72254e15.var_a0ad4f34) && !isdefined(var_72254e15.var_8bcb913d.var_e9560d5))
				{
					var_72254e15.var_8bcb913d.var_e9560d5 = 1;
					var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_immolation", 1);
					var_72254e15.var_a0ad4f34 thread function_8ef347b3(var_72254e15.var_8bcb913d.var_722885f3);
				}
				break;
			}
			case "gadget_unstoppable_force":
			case "gadget_unstoppable_force_upgraded":
			{
				var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_force", 1);
				var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_martial", 1);
				break;
			}
			case "ravage_core_emp_grenade":
			case "ravage_core_emp_grenade_upg":
			{
				if(isdefined(var_72254e15.var_8bcb913d) && !isdefined(var_72254e15.var_8bcb913d.var_fcad099b))
				{
					var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_ravagecore", 1);
					var_72254e15.var_8bcb913d.var_fcad099b = 1;
				}
				break;
			}
			case "gadget_concussive_wave":
			case "hero_gravityspikes_cybercom_upgraded":
			{
				if(function_85e4c3b3(var_72254e15.var_8bcb913d))
				{
					var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_martial", 1);
					var_72254e15.var_a0ad4f34 function_aa67c13b("cybercom_uses_concussive", 1);
				}
				break;
			}
		}
		if(isdefined(var_72254e15.var_a0ad4f34) && function_65f192a6(var_72254e15.var_a0ad4f34))
		{
			var_72254e15.var_a0ad4f34 namespace_8f94416a::function_2bc66a34();
		}
	}
}

/*
	Name: function_8ef347b3
	Namespace: namespace_f74b04eb
	Checksum: 0xAC05F0D4
	Offset: 0xED8
	Size: 0x127
	Parameters: 1
	Flags: None
*/
function function_8ef347b3(var_7b7e3d11)
{
	self endon("hash_128f8789");
	self endon("hash_31573b44");
	if(!isdefined(var_7b7e3d11))
	{
		return;
	}
	self namespace_82b91a51::function_6729b6ba(2, "stop_catching_immolation_secondaries");
	var_94db6e7c = GetTime();
	while(GetTime() - var_94db6e7c < 2)
	{
		self waittill("hash_a15c319", var_e98b4e9b);
		if(!isdefined(var_e98b4e9b))
		{
			break;
		}
		if(function_73b84f4d(var_7b7e3d11 - var_e98b4e9b.var_722885f3) < 200)
		{
			if(isdefined(var_e98b4e9b) && isdefined(self) && !isdefined(var_e98b4e9b.var_e9560d5))
			{
				var_e98b4e9b.var_e9560d5 = 1;
				self function_aa67c13b("cybercom_uses_immolation", 1);
			}
		}
	}
}

/*
	Name: function_4c17acc8
	Namespace: namespace_f74b04eb
	Checksum: 0xC776FE1D
	Offset: 0x1008
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_4c17acc8()
{
	self endon("hash_128f8789");
	self endon("hash_534b9c4b");
	self namespace_82b91a51::function_6729b6ba(2, "stop_catching_rapid_strike_attacks");
	var_94db6e7c = GetTime();
	while(GetTime() - var_94db6e7c < 2)
	{
		self waittill("hash_e11b0770");
		self function_aa67c13b("cybercom_uses_rapidstrike", 1);
	}
}

/*
	Name: function_e0ef8a87
	Namespace: namespace_f74b04eb
	Checksum: 0xAD7FFF03
	Offset: 0x10A0
	Size: 0x163
	Parameters: 6
	Flags: None
*/
function function_e0ef8a87(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_a77ad8eb)
{
	if(!isdefined(var_dfcc01fd))
	{
		var_dfcc01fd = level.var_6c3e6703;
	}
	var_a0ad4f34 endon("hash_643a7daf");
	var_72254e15 = function_a8fb77bd();
	var_72254e15.var_8bcb913d = self;
	var_72254e15.var_51e6a548 = var_51e6a548;
	var_72254e15.var_a0ad4f34 = var_a0ad4f34;
	var_72254e15.var_f9a179ed = var_f9a179ed;
	var_72254e15.var_ba36487d = var_ba36487d;
	var_72254e15.var_dfcc01fd = var_dfcc01fd;
	var_72254e15.var_a77ad8eb = var_a77ad8eb;
	var_72254e15.var_60db70fa = GetTime();
	var_72254e15.var_baed683d = var_72254e15.var_8bcb913d.var_fd4f9b7c;
	function_8468b0b1(var_72254e15);
	var_72254e15.var_a0ad4f34 notify("hash_31e22357");
}

/*
	Name: function_8468b0b1
	Namespace: namespace_f74b04eb
	Checksum: 0xF2197840
	Offset: 0x1210
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_8468b0b1(var_72254e15)
{
	if(isdefined(var_72254e15.var_a0ad4f34))
	{
		var_72254e15.var_a0ad4f34 endon("hash_643a7daf");
	}
	wait(0.05);
	namespace_82b91a51::function_7000c5f1();
	level thread function_e940e06c("actorKilled", var_72254e15);
	level thread function_8811eac9("actorKilled", var_72254e15);
}

/*
	Name: function_40b8d4a1
	Namespace: namespace_f74b04eb
	Checksum: 0x5DC5E347
	Offset: 0x12A8
	Size: 0x143
	Parameters: 5
	Flags: None
*/
function function_40b8d4a1(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_a77ad8eb)
{
	if(!isdefined(var_dfcc01fd))
	{
		var_dfcc01fd = level.var_6c3e6703;
	}
	var_a0ad4f34 endon("hash_643a7daf");
	var_72254e15 = function_a8fb77bd();
	var_72254e15.var_8bcb913d = self;
	var_72254e15.var_51e6a548 = var_51e6a548;
	var_72254e15.var_a0ad4f34 = var_a0ad4f34;
	var_72254e15.var_f9a179ed = var_f9a179ed;
	var_72254e15.var_dfcc01fd = var_dfcc01fd;
	var_72254e15.var_a77ad8eb = var_a77ad8eb;
	var_72254e15.var_60db70fa = GetTime();
	var_72254e15.var_baed683d = var_72254e15.var_8bcb913d.var_fd4f9b7c;
	function_2a703585(var_72254e15);
	var_72254e15.var_a0ad4f34 notify("hash_3cf360d1");
}

/*
	Name: function_2a703585
	Namespace: namespace_f74b04eb
	Checksum: 0x4B995B36
	Offset: 0x13F8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_2a703585(var_72254e15)
{
	if(isdefined(var_72254e15.var_a0ad4f34))
	{
		var_72254e15.var_a0ad4f34 endon("hash_643a7daf");
	}
	wait(0.05);
	namespace_82b91a51::function_7000c5f1();
	level thread function_e940e06c("actorDamaged", var_72254e15);
}

/*
	Name: function_c4014ee0
	Namespace: namespace_f74b04eb
	Checksum: 0xE3C968F5
	Offset: 0x1470
	Size: 0x163
	Parameters: 6
	Flags: None
*/
function function_c4014ee0(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_a77ad8eb)
{
	if(!isdefined(var_dfcc01fd))
	{
		var_dfcc01fd = level.var_6c3e6703;
	}
	var_a0ad4f34 endon("hash_643a7daf");
	var_72254e15 = function_a8fb77bd();
	var_72254e15.var_8bcb913d = self;
	var_72254e15.var_51e6a548 = var_51e6a548;
	var_72254e15.var_a0ad4f34 = var_a0ad4f34;
	var_72254e15.var_f9a179ed = var_f9a179ed;
	var_72254e15.var_ba36487d = var_ba36487d;
	var_72254e15.var_dfcc01fd = var_dfcc01fd;
	var_72254e15.var_a77ad8eb = var_a77ad8eb;
	var_72254e15.var_60db70fa = GetTime();
	var_72254e15.var_baed683d = var_72254e15.var_8bcb913d.var_fd4f9b7c;
	function_79c2e402(var_72254e15);
	var_72254e15.var_a0ad4f34 notify("hash_962e5616");
}

/*
	Name: function_79c2e402
	Namespace: namespace_f74b04eb
	Checksum: 0x117E1508
	Offset: 0x15E0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_79c2e402(var_72254e15)
{
	if(isdefined(var_72254e15.var_a0ad4f34))
	{
		var_72254e15.var_a0ad4f34 endon("hash_643a7daf");
	}
	wait(0.05);
	namespace_82b91a51::function_7000c5f1();
	level thread function_e940e06c("VehicleKilled", var_72254e15);
}

/*
	Name: function_f7118174
	Namespace: namespace_f74b04eb
	Checksum: 0x18D2845E
	Offset: 0x1658
	Size: 0x143
	Parameters: 5
	Flags: None
*/
function function_f7118174(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_a77ad8eb)
{
	if(!isdefined(var_dfcc01fd))
	{
		var_dfcc01fd = level.var_6c3e6703;
	}
	var_a0ad4f34 endon("hash_643a7daf");
	var_72254e15 = function_a8fb77bd();
	var_72254e15.var_8bcb913d = self;
	var_72254e15.var_51e6a548 = var_51e6a548;
	var_72254e15.var_a0ad4f34 = var_a0ad4f34;
	var_72254e15.var_f9a179ed = var_f9a179ed;
	var_72254e15.var_dfcc01fd = var_dfcc01fd;
	var_72254e15.var_a77ad8eb = var_a77ad8eb;
	var_72254e15.var_60db70fa = GetTime();
	var_72254e15.var_baed683d = var_72254e15.var_8bcb913d.var_fd4f9b7c;
	function_c0fc6584(var_72254e15);
	var_72254e15.var_a0ad4f34 notify("hash_37eb53e2");
}

/*
	Name: function_c0fc6584
	Namespace: namespace_f74b04eb
	Checksum: 0xA9095C
	Offset: 0x17A8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_c0fc6584(var_72254e15)
{
	if(isdefined(var_72254e15.var_a0ad4f34))
	{
		var_72254e15.var_a0ad4f34 endon("hash_643a7daf");
	}
	wait(0.05);
	namespace_82b91a51::function_7000c5f1();
	level thread function_e940e06c("VehicleDamaged", var_72254e15);
}

/*
	Name: function_85ec34dc
	Namespace: namespace_f74b04eb
	Checksum: 0xF525F3C3
	Offset: 0x1820
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_85ec34dc()
{
	self thread function_96ed590f("career_decorations");
}

/*
	Name: function_96ed590f
	Namespace: namespace_f74b04eb
	Checksum: 0xD204CEAE
	Offset: 0x1850
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_96ed590f(var_4259ae32, var_a8d029b8)
{
	if(!isdefined(var_a8d029b8))
	{
		var_a8d029b8 = 1;
	}
	self endon("hash_643a7daf");
	if(!function_65f192a6(self))
	{
		return;
	}
	self function_aa67c13b(var_4259ae32, var_a8d029b8);
}

/*
	Name: function_dadf37f9
	Namespace: namespace_f74b04eb
	Checksum: 0xF86D77FB
	Offset: 0x18C0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_dadf37f9()
{
	self.var_95a416c0 = &function_97666686;
	/#
		self thread function_4f96d6bd();
	#/
}

/*
	Name: function_7fd6c70d
	Namespace: namespace_f74b04eb
	Checksum: 0x1AC98396
	Offset: 0x1900
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function function_7fd6c70d(var_336f67e9)
{
	return function_d4cc1345("gamedata/stats/cp/statsmilestones3.csv", 0, var_336f67e9, 5);
}

/*
	Name: function_97666686
	Namespace: namespace_f74b04eb
	Checksum: 0x396AB483
	Offset: 0x1938
	Size: 0x215
	Parameters: 7
	Flags: None
*/
function function_97666686(var_71ad4980, var_3292dd9a, var_3947a807, var_1da98cc4, var_b9c20078, var_1630584c, var_171d52b4)
{
	self function_5bb05b72();
	if(var_171d52b4 == 565)
	{
		self function_f07412c0("cp_medal_all_accolades");
	}
	var_a9a186dd = function_b6b79a0(function_d4cc1345("gamedata/stats/cp/statsmilestones3.csv", 0, var_171d52b4, 1));
	switch(var_b9c20078)
	{
		case 0:
		{
			var_3efae7f9 = function_7fd6c70d(var_171d52b4);
			switch(var_3efae7f9)
			{
				case "CP_CHALLENGES_CAREER_MASTERY":
				{
					break;
				}
				case "CP_CHALLENGES_ALL_COMPLETE":
				{
					self function_f07412c0("cp_medal_all_calling_cards");
					break;
				}
			}
			break;
		}
		case 1:
		{
			if(var_1630584c != 0)
			{
				self function_8f67433b("ItemStats", var_1630584c, "challengeCompleted", var_a9a186dd, 1);
				self namespace_4a344d81::function_17dc8de7(var_a9a186dd);
			}
			break;
		}
		case 4:
		{
			var_2de0b3d4 = function_d4cc1345("gamedata/stats/cp/statsmilestones3.csv", 0, var_171d52b4, 13);
			self function_8f67433b("Attachments", var_2de0b3d4, "challengeCompleted", var_a9a186dd, 1);
			break;
		}
	}
}

/*
	Name: function_5bb05b72
	Namespace: namespace_f74b04eb
	Checksum: 0x36B617A0
	Offset: 0x1B58
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_5bb05b72()
{
	if(function_bac7e7e9())
	{
		return;
	}
	var_671e7f8c = self function_84368297("PlayerStatsList", "cp_challenges", "statValue");
	if(var_671e7f8c > 0)
	{
		var_2b0fb6af = function_1556496c("gamedata/stats/cp/statsmilestones3.csv");
		var_e4d70f97 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2b0fb6af - 1; var_c957f6b6++)
		{
			var_e4d70f97 = function_d1439e4f("gamedata/stats/cp/statsmilestones3.csv", var_c957f6b6);
			var_ec486758 = var_e4d70f97[3];
			if(var_ec486758 == "global")
			{
				var_a03ac8d9 = var_e4d70f97[4];
				if(isdefined(var_a03ac8d9) && var_a03ac8d9 != "")
				{
					var_db5490e3 = self function_84368297("PlayerStatsList", var_a03ac8d9, "statValue");
					if(var_e4d70f97[10] != "")
					{
						var_60596ad1 = function_b6b79a0(var_e4d70f97[2]);
						if(var_db5490e3 >= var_60596ad1)
						{
							var_9050c19b = "";
							var_9050c19b = var_e4d70f97[16];
							switch(var_9050c19b)
							{
								case "missions":
								{
									self function_aa67c13b("conf_gamemode_mastery", 1);
									break;
								}
								case "tott":
								{
									self function_aa67c13b("hq_gamemode_mastery", 1);
									break;
								}
								case "career":
								{
									self function_aa67c13b("career_mastery", 1);
									break;
								}
							}
						}
					}
				}
			}
		}
		self function_8f67433b("PlayerStatsList", "cp_challenges", "StatValue", 0);
	}
}

/*
	Name: function_4f96d6bd
	Namespace: namespace_f74b04eb
	Checksum: 0xF99A4F15
	Offset: 0x1E10
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_4f96d6bd()
{
	/#
		while(1)
		{
			if(function_4bd0142f("Dev Block strings are not supported", 0) == 1)
			{
				self function_f2d8f1d0();
				function_6c1294b8("Dev Block strings are not supported", 0);
			}
			wait(0.1);
		}
	#/
}

/*
	Name: function_f2d8f1d0
	Namespace: namespace_f74b04eb
	Checksum: 0x52124038
	Offset: 0x1E88
	Size: 0x4C9
	Parameters: 0
	Flags: None
*/
function function_f2d8f1d0()
{
	/#
		var_2884746a = [];
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		namespace_84970cc4::function_69554b3e(var_2884746a, "Dev Block strings are not supported");
		foreach(var_5aee7ac0 in var_2884746a)
		{
			self function_aa67c13b(var_5aee7ac0, 1000);
			function_d52b076d("Dev Block strings are not supported" + var_5aee7ac0);
			wait(1);
		}
	#/
}


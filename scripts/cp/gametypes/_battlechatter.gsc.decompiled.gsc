#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_globallogic;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_76d95162;

/*
	Name: function_2dc19561
	Namespace: namespace_76d95162
	Checksum: 0x46335FE9
	Offset: 0x858
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("battlechatter", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_76d95162
	Checksum: 0x49CE9F9B
	Offset: 0x898
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
	var_eee9d0c8 = function_8a06a11d();
	namespace_dabbe128::function_87f30e90(&function_53474d87);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_76d95162
	Checksum: 0xB8ADF613
	Offset: 0x908
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	level.var_486dddef = 1;
	level.var_ca3202d = [];
	level.var_ca3202d["bc"] = 1;
	level thread function_ec97233e();
}

/*
	Name: function_ec97233e
	Namespace: namespace_76d95162
	Checksum: 0xA863678F
	Offset: 0x978
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function function_ec97233e()
{
	while(1)
	{
		level waittill("hash_91737d19", var_11ee1e64, var_5ed0c283);
		if(isdefined(var_11ee1e64) && isdefined(var_11ee1e64.var_8fc0e50e))
		{
			var_aa87ada2 = var_11ee1e64.var_8fc0e50e;
			if(var_aa87ada2 == "wasp")
			{
				var_48b937ab = "hijack_wasps";
			}
			else if(var_aa87ada2 == "raps")
			{
				var_48b937ab = "hijack_raps";
			}
			else if(var_aa87ada2 == "quadtank")
			{
				var_48b937ab = "hijack_quad";
			}
			else
			{
				var_48b937ab = undefined;
			}
			var_6aa12504 = function_5c9a0c2("axis", var_11ee1e64);
			if(isdefined(var_6aa12504) && isdefined(var_48b937ab))
			{
				level thread function_f3de557b(var_6aa12504, var_48b937ab);
			}
		}
	}
}

/*
	Name: function_53474d87
	Namespace: namespace_76d95162
	Checksum: 0x874E044C
	Offset: 0xAB8
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_53474d87()
{
	self endon("hash_643a7daf");
	if(isdefined(level.var_f0ca204d) && level.var_f0ca204d)
	{
		return;
	}
	if(function_85e4c3b3(self))
	{
		return;
	}
	if(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "zombie")
	{
		return;
	}
	if(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "direwolf")
	{
		return;
	}
	if(!isdefined(self.var_e4b959c5))
	{
		self.var_e4b959c5 = "vox_ax";
	}
	if(isdefined(self.var_e4b959c5) && (self.var_e4b959c5 == "vox_hend" || self.var_e4b959c5 == "vox_khal" || self.var_e4b959c5 == "vox_kane" || self.var_e4b959c5 == "vox_hall" || self.var_e4b959c5 == "vox_mare" || self.var_e4b959c5 == "vox_diaz"))
	{
		self.var_273d3e89 = "";
	}
	else if(self.var_e4b959c5 == "vox_term")
	{
		self.var_273d3e89 = function_dc99997a(0, 3);
	}
	else
	{
		self.var_273d3e89 = function_dc99997a(0, 4);
	}
	if(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "warlord")
	{
		self thread function_c8397d24();
	}
	self.var_91782c1f = 0;
	self.var_bfaaac3e = "player";
	self thread function_9f9445a7();
	self thread function_5980aba1();
	self thread function_3920250c();
	if(!(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot"))
	{
		self thread function_f921f5a3();
		self thread function_73f2f03f();
		if(isdefined(self.var_e4b959c5) && function_f45850ec(self.var_e4b959c5, 7) == "f")
		{
			self.var_273d3e89 = function_dc99997a(0, 2);
		}
	}
	else
	{
		self thread function_897d1130();
	}
}

/*
	Name: function_c8397d24
	Namespace: namespace_76d95162
	Checksum: 0xCFFDF2C7
	Offset: 0xDB8
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_c8397d24()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	while(1)
	{
		wait(function_dc99997a(6, 14));
		if(isdefined(self))
		{
			var_49f3ceea = function_84970cc4("action_peek", "action_moving", "enemy_contact");
			var_4e418837 = var_49f3ceea[function_dc99997a(0, var_49f3ceea.size)];
			level thread function_f3de557b(self, var_4e418837);
		}
	}
}

/*
	Name: function_9f9445a7
	Namespace: namespace_76d95162
	Checksum: 0x9DB3B3DD
	Offset: 0xE98
	Size: 0xD7D
	Parameters: 0
	Flags: None
*/
function function_9f9445a7()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	while(1)
	{
		self waittill("hash_b64936fe", var_92eb0f0e);
		switch(var_92eb0f0e)
		{
			case "pain":
			{
				if(!(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot"))
				{
					level thread function_f3de557b(self, "exert_pain");
				}
				break;
			}
			case "concussiveReact":
			{
				if(!(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot"))
				{
					level thread function_f3de557b(self, "exert_cough", undefined, undefined, 1);
				}
				break;
			}
			case "enemyKill":
			{
				if(!isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot" && (!isdefined(self.var_e4b959c5) && (self.var_e4b959c5 == "vox_germ" || self.var_e4b959c5 == "vox_usa")))
				{
					if(function_dc99997a(0, 100) <= 50)
					{
						level thread function_f3de557b(self, "enemy_kill");
					}
				}
				break;
			}
			case "meleeKill":
			{
				if(!isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot" && (!isdefined(self.var_e4b959c5) && (self.var_e4b959c5 == "vox_germ" || self.var_e4b959c5 == "vox_usa")))
				{
					if(function_dc99997a(0, 100) <= 50)
					{
						level thread function_f3de557b(self, "melee_kill");
					}
				}
				break;
			}
			case "asp_incoming":
			case "hounds_incoming":
			case "manticore_incoming":
			case "orthrus_incoming":
			case "raps_incoming":
			case "robots_incoming":
			case "talon_incoming":
			case "technical_incoming":
			{
				if(!isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot" && (!isdefined(self.var_e4b959c5) && (self.var_e4b959c5 == "vox_germ" || self.var_e4b959c5 == "vox_usa")))
				{
					level thread function_f3de557b(self, var_92eb0f0e);
				}
				break;
			}
			case "electrocute":
			case "pukeStart":
			{
				if(!(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot"))
				{
					level thread function_f3de557b(self, "exert_electrocution", undefined, undefined, 1);
				}
				break;
			}
			case "puke":
			{
				if(!(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot"))
				{
					level thread function_f3de557b(self, "exert_sonic", undefined, undefined, 1);
				}
				break;
			}
			case "scream":
			{
				if(!(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot"))
				{
					level thread function_f3de557b(self, "exert_scream");
				}
				break;
			}
			case "scriptedRobotvox":
			{
				if(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot")
				{
					level thread function_f3de557b(self, "action_intocover");
				}
				break;
			}
			case "reload":
			{
				if(function_dc99997a(0, 100) <= 20)
				{
					level thread function_f3de557b(self, "action_reloading", 1);
				}
				break;
			}
			case "enemycontact":
			{
				self thread function_bf2c3663();
				break;
			}
			case "cover_shoot":
			{
				if(function_dc99997a(0, 100) <= 10)
				{
					level thread function_f3de557b(self, "enemy_contact");
				}
				break;
			}
			case "cover_stance":
			{
				if(function_dc99997a(0, 100) <= 45)
				{
					level thread function_f3de557b(self, "action_intocover");
				}
				break;
			}
			case "charge":
			{
				if(!(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot"))
				{
					if(!(isdefined(self.var_e4b959c5) && (self.var_e4b959c5 == "vox_hend" || self.var_e4b959c5 == "vox_khal" || self.var_e4b959c5 == "vox_kane" || self.var_e4b959c5 == "vox_hall" || self.var_e4b959c5 == "vox_mare" || self.var_e4b959c5 == "vox_diaz")))
					{
						var_2017476 = "vox_generic_exert_charge_male";
						if(isdefined(self.var_e4b959c5) && function_f45850ec(self.var_e4b959c5, 7) == "f")
						{
							var_2017476 = "vox_generic_exert_charge_female";
						}
						self thread function_81d8fcf2(var_2017476, 1);
					}
					else
					{
						level thread function_f3de557b(self, "exert_charge");
					}
				}
				break;
			}
			case "attack_melee":
			{
				if(!(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot"))
				{
					if(!(isdefined(self.var_e4b959c5) && (self.var_e4b959c5 == "vox_hend" || self.var_e4b959c5 == "vox_khal" || self.var_e4b959c5 == "vox_kane" || self.var_e4b959c5 == "vox_hall" || self.var_e4b959c5 == "vox_mare" || self.var_e4b959c5 == "vox_diaz")))
					{
						var_2017476 = "vox_generic_exert_melee_male";
						if(isdefined(self.var_e4b959c5) && function_f45850ec(self.var_e4b959c5, 7) == "f")
						{
							var_2017476 = "vox_generic_exert_melee_female";
						}
						self thread function_81d8fcf2(var_2017476, 1);
					}
					else
					{
						level thread function_f3de557b(self, "exert_melee");
					}
				}
				break;
			}
			case "blindfire":
			{
				level thread function_f3de557b(self, "action_blindfire");
				break;
			}
			case "flanked":
			{
				level thread function_f3de557b(self, "action_flanked");
				break;
			}
			case "peek":
			case "scan":
			{
				if(function_dc99997a(0, 100) <= 25)
				{
					level thread function_f3de557b(self, "action_peek");
				}
				break;
			}
			case "exposed":
			{
				level thread function_f3de557b(self, "action_exposed");
				break;
			}
			case "taking_cover":
			{
				if(function_dc99997a(0, 100) <= 75)
				{
					level thread function_f3de557b(self, "action_intocover");
				}
				break;
			}
			case "moving_up":
			{
				if(function_dc99997a(0, 100) <= 6)
				{
					level thread function_f3de557b(self, "action_moving");
				}
				break;
			}
			case "rbCharge":
			case "rbCrawler":
			case "rbPhalanx":
			case "rbTakeover":
			{
				level thread function_f3de557b(self, "action_exposed");
				break;
			}
			case "rbJuke":
			{
				if(function_dc99997a(0, 100) <= 30)
				{
					level thread function_f3de557b(self, "action_moving");
				}
				break;
			}
			case "firefly_swarm":
			{
				if(function_dc99997a(0, 100) <= 50)
				{
					level thread function_f3de557b(self, "firefly_response");
				}
				if(function_dc99997a(0, 100) <= 50)
				{
					var_c4d1d000 = function_5c9a0c2("allies", self);
					if(isdefined(var_c4d1d000))
					{
						level namespace_82b91a51::function_67520c6a(1, undefined, &function_f3de557b, var_c4d1d000, "firefly_response");
					}
				}
				break;
			}
			case "firefly_explode":
			{
				if(function_dc99997a(0, 100) <= 50)
				{
					var_13377c79 = function_c0d9abd6(self);
					if(isdefined(var_13377c79))
					{
						level thread function_f3de557b(var_13377c79, "firefly_explode");
					}
				}
				break;
			}
			case "fireflyAttack":
			{
				level thread function_f3de557b(self, "exert_firefly", undefined, undefined, 1);
				break;
			}
			case "fireflyAttackUpg":
			{
				level thread function_f3de557b(self, "exert_firefly_burning", undefined, undefined, 1);
				break;
			}
			case "rapidstrike":
			{
				level thread function_f3de557b(self, "rapidstrike_response");
				break;
			}
			case "warlord_angry":
			case "warlord_juke":
			{
				var_49f3ceea = function_84970cc4("action_peek", "action_moving", "enemy_contact");
				var_4e418837 = var_49f3ceea[function_dc99997a(0, var_49f3ceea.size)];
				level thread function_f3de557b(self, var_4e418837);
				break;
			}
			case "reactImmolation":
			{
				level thread function_f3de557b(self, "exert_immolation", undefined, undefined, 1);
				break;
			}
			case "reactImmolationLong":
			{
				level thread function_f3de557b(self, "exert_immolation", undefined, undefined, 1);
				break;
			}
			case "reactSensory":
			{
				level thread function_f3de557b(self, "exert_screaming", undefined, undefined, 1);
				break;
			}
			case "weaponmalfunction":
			{
				level thread function_f3de557b(self, "exert_malfunction", undefined, undefined, 1);
				break;
			}
			case "reactExosuit":
			{
				level thread function_f3de557b(self, "exert_breakdown", undefined, undefined, 1);
				break;
			}
			case "reactMisdirection":
			{
				break;
			}
			case "reactBodyBlow":
			{
				level thread function_f3de557b(self, "exert_body_blow", undefined, undefined, 1);
				break;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_73f2f03f
	Namespace: namespace_76d95162
	Checksum: 0xCE7DFC51
	Offset: 0x1C20
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_73f2f03f()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	while(1)
	{
		self waittill("hash_2605e152", var_daeabe55);
		level thread function_f3de557b(self, var_daeabe55);
	}
}

/*
	Name: function_bf2c3663
	Namespace: namespace_76d95162
	Checksum: 0x484CC03E
	Offset: 0x1C90
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_bf2c3663()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	if(function_dc99997a(0, 100) <= 35)
	{
		if(!(isdefined(level.var_bf2c3663) && level.var_bf2c3663))
		{
			level thread function_f3de557b(self, "enemy_contact");
			level thread function_23b803bd();
		}
	}
}

/*
	Name: function_23b803bd
	Namespace: namespace_76d95162
	Checksum: 0x93B2F612
	Offset: 0x1D20
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_23b803bd()
{
	level.var_bf2c3663 = 1;
	wait(15);
	level.var_bf2c3663 = 0;
}

/*
	Name: function_5980aba1
	Namespace: namespace_76d95162
	Checksum: 0x366E049D
	Offset: 0x1D48
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_5980aba1()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	while(1)
	{
		self waittill("hash_e5ccf3dc", var_f461b5d, var_dfcc01fd);
		if(var_dfcc01fd.var_4be20d44 == "frag_grenade" || var_dfcc01fd.var_4be20d44 == "frag_grenade_invisible")
		{
			if(function_dc99997a(0, 100) <= 80 && !function_65f192a6(self))
			{
				level thread function_f3de557b(self, "grenade_toss");
			}
			level thread function_e94dcde5(self, var_f461b5d);
		}
	}
}

/*
	Name: function_e94dcde5
	Namespace: namespace_76d95162
	Checksum: 0x688AE3FC
	Offset: 0x1E48
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_e94dcde5(var_30892fde, var_f461b5d)
{
	if(function_dc99997a(0, 100) <= 95)
	{
		wait(1);
		if(!isdefined(var_30892fde) || !isdefined(var_f461b5d))
		{
			return;
		}
		var_3e94206a = "axis";
		if(isdefined(var_30892fde.var_3e94206a) && var_3e94206a == var_30892fde.var_3e94206a)
		{
			var_3e94206a = "allies";
		}
		var_d84e54db = function_5c9a0c2(var_3e94206a, var_f461b5d);
		if(isdefined(var_d84e54db))
		{
			level thread function_f3de557b(var_d84e54db, "grenade_incoming", 1);
		}
	}
}

/*
	Name: function_3920250c
	Namespace: namespace_76d95162
	Checksum: 0x995F7D5
	Offset: 0x1F48
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_3920250c()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self endon("hash_7985ffa");
	while(1)
	{
		self waittill("hash_c4cf2014", var_f461b5d);
		if(isdefined(var_f461b5d))
		{
			var_f461b5d.var_67b7913 = self;
		}
		if(function_5b49d38c(self))
		{
			level thread function_f3de557b(self, "grenade_sticky");
		}
		break;
	}
}

/*
	Name: function_897d1130
	Namespace: namespace_76d95162
	Checksum: 0x6DDA1D1C
	Offset: 0x1FF8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_897d1130()
{
	self endon("hash_643a7daf");
	self waittill("hash_128f8789", var_a0ad4f34, var_597cacac);
	if(isdefined(var_a0ad4f34) && !function_65f192a6(var_a0ad4f34))
	{
		if(var_597cacac == "MOD_MELEE")
		{
			var_a0ad4f34 notify("hash_b64936fe", "meleeKill");
		}
		else
		{
			var_a0ad4f34 notify("hash_b64936fe", "enemyKill");
		}
	}
}

/*
	Name: function_f921f5a3
	Namespace: namespace_76d95162
	Checksum: 0xD0B1A4F0
	Offset: 0x20A0
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function function_f921f5a3()
{
	self endon("hash_643a7daf");
	self waittill("hash_128f8789", var_a0ad4f34, var_597cacac);
	if(isdefined(self))
	{
		var_e11fac68 = isdefined(var_597cacac) && var_597cacac == "MOD_MELEE_ASSASSINATE";
		if(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "warlord")
		{
			self function_921a1574("chr_warlord_death");
		}
		if(!isdefined(self.var_801fa77c) && self.var_801fa77c && !var_e11fac68 && isdefined(var_a0ad4f34))
		{
			if(var_597cacac == "MOD_ELECTROCUTED")
			{
				var_2017476 = self.var_e4b959c5 + self.var_273d3e89 + "_" + "exert_electrocution";
			}
			else if(var_597cacac == "MOD_BURNED")
			{
				var_2017476 = self.var_e4b959c5 + self.var_273d3e89 + "_" + "exert_firefly_burning";
			}
			else
			{
				var_2017476 = self.var_e4b959c5 + self.var_273d3e89 + "_" + "exert_death";
			}
			self thread function_81d8fcf2(var_2017476, 1);
		}
		if(isdefined(self.var_77b7027b) && self.var_77b7027b && isdefined(var_a0ad4f34) && !function_65f192a6(var_a0ad4f34))
		{
			level thread function_f3de557b(var_a0ad4f34, "sniper_kill");
			return;
		}
		if(isdefined(var_a0ad4f34) && !function_65f192a6(var_a0ad4f34))
		{
			if(var_597cacac == "MOD_MELEE")
			{
				var_a0ad4f34 notify("hash_b64936fe", "meleeKill");
			}
			else
			{
				var_a0ad4f34 notify("hash_b64936fe", "enemyKill");
			}
		}
		var_74f8640c = isdefined(var_a0ad4f34) && isdefined(var_a0ad4f34.var_fe10e861) && var_a0ad4f34.var_fe10e861 == "_sniper";
		if(!var_e11fac68 && (var_74f8640c || function_dc99997a(0, 100) <= 35))
		{
			var_538c3884 = function_c0d9abd6(self);
			if(isdefined(var_538c3884) && (!isdefined(var_538c3884.var_801fa77c) && var_538c3884.var_801fa77c))
			{
				if(var_74f8640c)
				{
					var_a0ad4f34.var_77b7027b = 1;
					level thread function_f3de557b(var_538c3884, "sniper_threat");
				}
				else
				{
					level thread function_f3de557b(var_538c3884, "friendly_down");
				}
			}
		}
	}
}

/*
	Name: function_bf5d6349
	Namespace: namespace_76d95162
	Checksum: 0x506C278F
	Offset: 0x2438
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_bf5d6349(var_9e455a4, var_fe311e35)
{
	wait(function_72a94f05(0.1, 0.4));
	var_d84e54db = function_5c9a0c2("both", var_9e455a4, 500);
	if(isdefined(var_d84e54db))
	{
		if(var_fe311e35 == "car")
		{
			level thread function_f3de557b(var_d84e54db, "destructible_car");
		}
		else
		{
			level thread function_f3de557b(var_d84e54db, "destructible_barrel");
		}
	}
}

/*
	Name: function_66309b54
	Namespace: namespace_76d95162
	Checksum: 0x80159F15
	Offset: 0x2508
	Size: 0x4B1
	Parameters: 0
	Flags: None
*/
function function_66309b54()
{
	level endon("hash_9aabe1d7");
	self endon("hash_3f7b661c");
	self endon("hash_f8c5dd60");
	if(!isdefined(level.var_218d7320))
	{
		level.var_218d7320 = 0;
		var_657b1773 = function_b8494651("axis", "team3");
		level.var_90fd62cb = function_84970cc4();
		foreach(var_6050ab17 in var_657b1773)
		{
			if(isdefined(var_6050ab17.var_8fc0e50e) && var_6050ab17.var_8fc0e50e == "robot")
			{
				namespace_84970cc4::function_69554b3e(level.var_90fd62cb, var_6050ab17, 0);
			}
		}
	}
	while(1)
	{
		wait(1);
		var_e78c0153 = GetTime();
		if(var_e78c0153 > level.var_218d7320 + 1000)
		{
			level.var_218d7320 = var_e78c0153;
			var_657b1773 = function_b8494651("axis", "team3");
			namespace_84970cc4::function_b87262e(level.var_90fd62cb);
			namespace_84970cc4::function_5c13fae0(level.var_90fd62cb);
			foreach(var_6050ab17 in var_657b1773)
			{
				if(isdefined(var_6050ab17.var_8fc0e50e) && var_6050ab17.var_8fc0e50e == "robot")
				{
					namespace_84970cc4::function_69554b3e(level.var_90fd62cb, var_6050ab17, 0);
				}
			}
		}
		else if(level.var_90fd62cb.size <= 0)
		{
			break;
		}
		var_a011d528 = 0;
		foreach(var_cd69a81f in level.var_90fd62cb)
		{
			if(!isdefined(var_cd69a81f))
			{
				continue;
			}
			if(function_cb3d1c9b(var_cd69a81f.var_722885f3, self.var_722885f3) < 90000)
			{
				if(isdefined(var_cd69a81f.var_67c7c241))
				{
					continue;
				}
				if(isdefined(var_cd69a81f.var_3a90f16b) && var_cd69a81f.var_3a90f16b <= 0)
				{
					continue;
				}
				if(isdefined(level.var_f25b564e) && level.var_f25b564e.size >= 1)
				{
					continue;
				}
				var_3b6e5f7e = self function_c43df297(var_cd69a81f.var_722885f3);
				var_4cb423cc = self.var_722885f3[2] - var_cd69a81f.var_722885f3[2];
				if(var_3b6e5f7e < -95 || var_3b6e5f7e > 95 && function_69c2f683(var_4cb423cc) < 200)
				{
					var_cd69a81f function_921a1574("chr_robot_behind");
					var_a011d528 = 1;
					break;
				}
			}
		}
		if(var_a011d528)
		{
			wait(5);
		}
	}
}

/*
	Name: function_c43df297
	Namespace: namespace_76d95162
	Checksum: 0xBAD40E49
	Offset: 0x29C8
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
	Namespace: namespace_76d95162
	Checksum: 0x6B19C29C
	Offset: 0x2A48
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
	Name: function_f3de557b
	Namespace: namespace_76d95162
	Checksum: 0x4BCD9115
	Offset: 0x2A98
	Size: 0x16B
	Parameters: 5
	Flags: None
*/
function function_f3de557b(var_d84e54db, var_4e418837, var_25c2125b, var_d9a1b059, var_9d50be70)
{
	if(!isdefined(var_d84e54db))
	{
		return;
	}
	var_d84e54db endon("hash_128f8789");
	var_d84e54db endon("hash_643a7daf");
	var_d62110b4 = undefined;
	if(isdefined(var_25c2125b))
	{
		var_d62110b4 = var_4e418837 + "_response";
	}
	if(!isdefined(var_d84e54db.var_e4b959c5) || !isdefined(var_d84e54db.var_273d3e89))
	{
		return;
	}
	if(isdefined(var_d84e54db.var_8fc0e50e) && var_d84e54db.var_8fc0e50e == "robot")
	{
		var_2017476 = var_d84e54db.var_e4b959c5 + var_d84e54db.var_273d3e89 + "_" + "chatter";
	}
	else
	{
		var_2017476 = var_d84e54db.var_e4b959c5 + var_d84e54db.var_273d3e89 + "_" + var_4e418837;
	}
	var_d84e54db thread function_81d8fcf2(var_2017476, var_9d50be70, var_d62110b4, var_d9a1b059);
}

/*
	Name: function_81d8fcf2
	Namespace: namespace_76d95162
	Checksum: 0x418DE78F
	Offset: 0x2C10
	Size: 0x21B
	Parameters: 4
	Flags: None
*/
function function_81d8fcf2(var_2017476, var_9d50be70, var_d62110b4, var_d9a1b059)
{
	if(!isdefined(var_2017476))
	{
		return;
	}
	if(!isdefined(var_9d50be70))
	{
		var_9d50be70 = 0;
	}
	if(self function_710804d(var_d9a1b059) && (!isdefined(self.var_91782c1f) && self.var_91782c1f || var_9d50be70))
	{
		if(!isdefined(self.var_6050ab17) && !var_9d50be70)
		{
			return;
		}
		function_20dcacc5();
		if(!isdefined(self))
		{
			return;
		}
		if(isdefined(self.var_2cc534dd) && self.var_2cc534dd)
		{
			return;
		}
		if(isdefined(self.var_91782c1f) && self.var_91782c1f)
		{
			self notify("hash_aa07164c");
		}
		if(function_5b49d38c(self))
		{
			self function_8b51b0e9(var_2017476, "J_neck");
		}
		else
		{
			self function_921a1574(var_2017476);
		}
		self thread function_54ecefee(var_2017476);
		var_3c61bfc2 = self namespace_82b91a51::function_45ce26d(var_2017476, "death", "disconnect", "bc_interrupt");
		if(var_3c61bfc2 == var_2017476)
		{
			if(isdefined(var_d62110b4))
			{
				var_d84e54db = function_c0d9abd6(self);
				if(isdefined(var_d84e54db))
				{
					level thread function_f3de557b(var_d84e54db, var_d62110b4);
				}
			}
		}
		else if(isdefined(self))
		{
			self function_356a1c2a(var_2017476);
		}
	}
}

/*
	Name: function_20dcacc5
	Namespace: namespace_76d95162
	Checksum: 0x8115231E
	Offset: 0x2E38
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_20dcacc5()
{
	if(!isdefined(level.var_769cc2b1))
	{
		level thread function_1af43712();
	}
	while(level.var_769cc2b1 != 0)
	{
		namespace_82b91a51::function_76f13293();
	}
	level.var_769cc2b1++;
}

/*
	Name: function_1af43712
	Namespace: namespace_76d95162
	Checksum: 0xFC78A1DC
	Offset: 0x2E90
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_1af43712()
{
	while(1)
	{
		level.var_769cc2b1 = 0;
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_710804d
	Namespace: namespace_76d95162
	Checksum: 0xA3BE1CC8
	Offset: 0x2EC8
	Size: 0x95
	Parameters: 1
	Flags: None
*/
function function_710804d(var_af05047d)
{
	if(!isdefined(var_af05047d))
	{
		var_af05047d = "bc";
	}
	if(isdefined(level.var_ca3202d) && (!isdefined(level.var_ca3202d[var_af05047d]) && level.var_ca3202d[var_af05047d]))
	{
		return 0;
	}
	if(isdefined(self.var_ca3202d) && (!isdefined(self.var_ca3202d[var_af05047d]) && self.var_ca3202d[var_af05047d]))
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_aebcf025
	Namespace: namespace_76d95162
	Checksum: 0x9705872B
	Offset: 0x2F68
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self endon("hash_643a7daf");
	self.var_bfaaac3e = "player";
	self.var_9fcbfcc0 = 0;
	self.var_54d33b1a = 1;
	self.var_91782c1f = 0;
	self thread function_ff55a1a3();
	self thread function_5980aba1();
	self thread function_66309b54();
	self thread function_a19a4a61();
	self thread function_a01d72bd();
}

/*
	Name: function_a19a4a61
	Namespace: namespace_76d95162
	Checksum: 0x3964D763
	Offset: 0x3030
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_a19a4a61()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	while(1)
	{
		self waittill("hash_b64936fe", var_92eb0f0e);
		switch(var_92eb0f0e)
		{
			case "firefly_deploy":
			{
				break;
			}
			case "firefly_end":
			{
				break;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_e6d1a282
	Namespace: namespace_76d95162
	Checksum: 0xEBB7A07C
	Offset: 0x30C0
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_e6d1a282(var_aeb57a2e)
{
	var_2017476 = "vox_plyr_" + var_aeb57a2e;
	if(self function_710804d() && (!isdefined(self.var_2cc534dd) && self.var_2cc534dd) && (!isdefined(self.var_91782c1f) && self.var_91782c1f))
	{
		self function_b8862210(var_2017476, self);
		self thread function_54ecefee(var_2017476);
	}
}

/*
	Name: function_ff55a1a3
	Namespace: namespace_76d95162
	Checksum: 0x25938FE3
	Offset: 0x3170
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_ff55a1a3()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	while(1)
	{
		self waittill("hash_b6c93e47", var_597cacac);
		if(function_dc99997a(0, 100) <= 100)
		{
			if(function_5b49d38c(self))
			{
				if(var_597cacac == "MOD_DROWN")
				{
					var_2017476 = "chr_swimming_drown";
					self.var_9fcbfcc0 = 1;
					if(self.var_54d33b1a)
					{
						self thread function_7c4151cc();
					}
				}
				var_2017476 = "vox_plyr_exert_pain";
				self thread function_81d8fcf2(var_2017476, 1);
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_7c4151cc
	Namespace: namespace_76d95162
	Checksum: 0xA6CCC3FA
	Offset: 0x3278
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_7c4151cc()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self endon("hash_d1d64fcc");
	level endon("hash_c8ab51de");
	self.var_54d33b1a = 0;
	while(1)
	{
		if(!self function_8213df59() && self.var_9fcbfcc0)
		{
			self.var_9fcbfcc0 = 0;
			self.var_54d33b1a = 1;
			self thread function_81d8fcf2("vox_pm1_gas_gasp", 1);
			self notify("hash_d1d64fcc");
		}
		wait(0.5);
	}
}

/*
	Name: function_a01d72bd
	Namespace: namespace_76d95162
	Checksum: 0xA05D64ED
	Offset: 0x3340
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_a01d72bd()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	while(1)
	{
		self waittill("hash_60028448");
		self thread function_7e9c7abd();
	}
}

/*
	Name: function_7e9c7abd
	Namespace: namespace_76d95162
	Checksum: 0x9E652FE
	Offset: 0x33A0
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_7e9c7abd()
{
	self endon("hash_60028448");
	wait(2);
	if(isdefined(self))
	{
		var_d84e54db = level function_5c9a0c2("axis", self, 700);
		if(isdefined(var_d84e54db))
		{
			var_d84e54db notify("hash_b64936fe", "rapidstrike");
		}
	}
}

/*
	Name: function_54ecefee
	Namespace: namespace_76d95162
	Checksum: 0x5F424B52
	Offset: 0x3410
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function function_54ecefee(var_2017476, var_4573206)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_e20459b1 = function_799102f2(var_2017476);
	self.var_91782c1f = 1;
	if(var_e20459b1 >= 0)
	{
		var_77a7fe7d = var_e20459b1 * 0.001;
		wait(var_77a7fe7d);
	}
	else
	{
		wait(1);
	}
	self notify(var_2017476);
	self.var_91782c1f = 0;
}

/*
	Name: function_c0d9abd6
	Namespace: namespace_76d95162
	Checksum: 0xDDF5BE60
	Offset: 0x34C0
	Size: 0x37D
	Parameters: 2
	Flags: None
*/
function function_c0d9abd6(var_77415466, var_e8e5cdb5)
{
	if(isdefined(var_77415466))
	{
		var_c89de9c6 = function_b8494651(var_77415466.var_3e94206a);
		var_c89de9c6 = function_f926d8e8(var_c89de9c6, var_77415466.var_722885f3);
		if(!isdefined(var_e8e5cdb5))
		{
			var_e8e5cdb5 = 1000;
		}
		foreach(var_643a4c5 in var_c89de9c6)
		{
			if(!isdefined(var_77415466))
			{
				return undefined;
			}
			if(!isdefined(var_643a4c5) || !function_5b49d38c(var_643a4c5) || !isdefined(var_643a4c5.var_273d3e89))
			{
				continue;
			}
			if(var_643a4c5 == var_77415466)
			{
				continue;
			}
			if(function_85e4c3b3(var_643a4c5))
			{
				continue;
			}
			if(isdefined(var_643a4c5.var_8fc0e50e) && var_643a4c5.var_8fc0e50e == "robot")
			{
				continue;
			}
			if(!isdefined(var_643a4c5.var_e4b959c5) && (var_643a4c5.var_e4b959c5 == "vox_hend" || var_643a4c5.var_e4b959c5 == "vox_khal" || var_643a4c5.var_e4b959c5 == "vox_kane" || var_643a4c5.var_e4b959c5 == "vox_hall" || var_643a4c5.var_e4b959c5 == "vox_mare" || var_643a4c5.var_e4b959c5 == "vox_diaz") && (!isdefined(var_77415466.var_e4b959c5) && (var_77415466.var_e4b959c5 == "vox_hend" || var_77415466.var_e4b959c5 == "vox_khal" || var_77415466.var_e4b959c5 == "vox_kane" || var_77415466.var_e4b959c5 == "vox_hall" || var_77415466.var_e4b959c5 == "vox_mare" || var_77415466.var_e4b959c5 == "vox_diaz")))
			{
				if(var_643a4c5.var_273d3e89 == var_77415466.var_273d3e89)
				{
					continue;
				}
			}
			if(function_7d15e2f8(var_77415466.var_722885f3, var_643a4c5.var_722885f3) > var_e8e5cdb5)
			{
				continue;
			}
			return var_643a4c5;
		}
	}
	return undefined;
}

/*
	Name: function_5c9a0c2
	Namespace: namespace_76d95162
	Checksum: 0xF3730A1A
	Offset: 0x3848
	Size: 0x215
	Parameters: 3
	Flags: None
*/
function function_5c9a0c2(var_3e94206a, var_9e455a4, var_e8e5cdb5)
{
	if(!isdefined(var_9e455a4))
	{
		return;
	}
	if(var_3e94206a == "both")
	{
		var_c89de9c6 = function_b8494651("axis", "allies");
	}
	else
	{
		var_c89de9c6 = function_b8494651(var_3e94206a);
	}
	var_c89de9c6 = function_f926d8e8(var_c89de9c6, var_9e455a4.var_722885f3);
	if(!isdefined(var_e8e5cdb5))
	{
		var_e8e5cdb5 = 1000;
	}
	foreach(var_643a4c5 in var_c89de9c6)
	{
		if(!isdefined(var_643a4c5) || !function_5b49d38c(var_643a4c5))
		{
			continue;
		}
		if(function_85e4c3b3(var_643a4c5))
		{
			continue;
		}
		if(isdefined(var_643a4c5.var_8fc0e50e) && var_643a4c5.var_8fc0e50e == "robot")
		{
			continue;
		}
		if(!isdefined(var_643a4c5.var_e4b959c5) || !isdefined(var_643a4c5.var_273d3e89))
		{
			continue;
		}
		if(function_7d15e2f8(var_643a4c5.var_722885f3, var_9e455a4.var_722885f3) > var_e8e5cdb5)
		{
			continue;
		}
		return var_643a4c5;
	}
	return undefined;
}

/*
	Name: function_d9f49fba
	Namespace: namespace_76d95162
	Checksum: 0xB9E6B090
	Offset: 0x3A68
	Size: 0x65
	Parameters: 2
	Flags: None
*/
function function_d9f49fba(var_df0f80c3, var_af05047d)
{
	if(!isdefined(var_af05047d))
	{
		var_af05047d = "bc";
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_df0f80c3), "Dev Block strings are not supported");
	#/
	level.var_ca3202d[var_af05047d] = var_df0f80c3;
}


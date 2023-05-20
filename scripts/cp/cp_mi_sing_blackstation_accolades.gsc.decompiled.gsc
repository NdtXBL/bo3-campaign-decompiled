#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\ai\systems\destructible_character;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_23567e72;

/*
	Name: function_4d39a2af
	Namespace: namespace_23567e72
	Checksum: 0x1F461BB
	Offset: 0x6B8
	Size: 0x2A7
	Parameters: 0
	Flags: None
*/
function function_4d39a2af()
{
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE3", "micromissile_kill_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE4", "technical_turret_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE5", "warlord_pistol_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE6", "speed_distance_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE7", "rpg_kill_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE8", "robot_human_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE9", "powerstation_roof_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE10", "headshot_breach_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE11", "robot_powerup_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE12", "warlord_turret_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE13", "warlord_barrel_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE14", "riotshield_melee_challenge");
	namespace_fe079222::function_50f16166("MISSION_BLACKSTATION_CHALLENGE15", "riotshield_headshot_challenge");
	namespace_dabbe128::function_356a4ee1(&function_3a6b5b3e);
	function_c6595cb5();
	function_86716d12();
	function_80f71baf();
	function_ed62e62f();
	function_be537152();
	function_fe5a0b6();
	level thread function_69b1ee49();
	level thread function_91fa5513();
	level thread function_29c337dd();
	level thread function_7d2dae0a();
	level.var_76663db9 = 1;
	level.var_8454c072 = 1;
	level.var_63855bec = 1;
}

/*
	Name: function_3a6b5b3e
	Namespace: namespace_23567e72
	Checksum: 0xBF5317FC
	Offset: 0x968
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_3a6b5b3e()
{
	self function_806ef44e();
	self function_ba5f78c4();
	self function_ca5e3a6();
	self function_81a32f61();
	self function_91f0e7d2();
	self function_78f93084();
	self function_c169f275();
}

/*
	Name: function_806ef44e
	Namespace: namespace_23567e72
	Checksum: 0x3B18DB87
	Offset: 0xA20
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_806ef44e()
{
	self.var_8477b47b = 0;
	self.var_3a4bbe6b = undefined;
}

/*
	Name: function_c6595cb5
	Namespace: namespace_23567e72
	Checksum: 0xC07E71B7
	Offset: 0xA48
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c6595cb5()
{
	namespace_dabbe128::function_de1a6d25(&function_e83f24);
}

/*
	Name: function_f673d34
	Namespace: namespace_23567e72
	Checksum: 0x4BAD4EA8
	Offset: 0xA78
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_f673d34(var_a8563e07)
{
	var_a8563e07.var_3a212fd7.var_3a4bbe6b = var_a8563e07.var_51e6a548.var_8344d65f;
	var_a8563e07.var_3a212fd7.var_8477b47b = 0;
}

/*
	Name: function_feac00a
	Namespace: namespace_23567e72
	Checksum: 0x8C9528F1
	Offset: 0xAD0
	Size: 0x45
	Parameters: 0
	Flags: None
*/
function function_feac00a()
{
	self notify("hash_dff0891a");
	self endon("hash_dff0891a");
	self endon("hash_128f8789");
	wait(3);
	self.var_8477b47b = 0;
	self.var_3a4bbe6b = undefined;
}

/*
	Name: function_e83f24
	Namespace: namespace_23567e72
	Checksum: 0xC3DCA349
	Offset: 0xB20
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_e83f24(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && var_a8563e07.var_dfcc01fd == function_c4d5ec1f("micromissile_launcher"))
	{
		var_a8563e07.var_3a212fd7 thread function_feac00a();
		if(!isdefined(var_a8563e07.var_3a212fd7.var_3a4bbe6b))
		{
			function_f673d34(var_a8563e07);
		}
		if(function_69c2f683(var_a8563e07.var_3a212fd7.var_3a4bbe6b - var_a8563e07.var_51e6a548.var_8344d65f) <= 400)
		{
			var_a8563e07.var_3a212fd7.var_8477b47b++;
			if(var_a8563e07.var_3a212fd7.var_8477b47b == 5)
			{
				var_a8563e07.var_3a212fd7 notify("hash_38460066");
			}
		}
	}
}

/*
	Name: function_86716d12
	Namespace: namespace_23567e72
	Checksum: 0x553B7C46
	Offset: 0xC68
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_86716d12()
{
	namespace_dabbe128::function_de1a6d25(&function_2f913423);
}

/*
	Name: function_2f913423
	Namespace: namespace_23567e72
	Checksum: 0x1CFBF7FA
	Offset: 0xC98
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_2f913423(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && var_a8563e07.var_dfcc01fd.var_4be20d44 == "turret_bo3_civ_truck_pickup_tech_54i")
	{
		var_a8563e07.var_3a212fd7 notify("hash_4a4fc79");
	}
}

/*
	Name: function_80f71baf
	Namespace: namespace_23567e72
	Checksum: 0xCDF6FE5B
	Offset: 0xD08
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_80f71baf()
{
	namespace_2f06d687::function_906bdb6d("warlord", &function_41954f8f);
}

/*
	Name: function_41954f8f
	Namespace: namespace_23567e72
	Checksum: 0x60DDBB58
	Offset: 0xD40
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_41954f8f()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("warlord_fight");
	wait(1);
	self.var_44a68a57 = &function_587c487b;
	self thread function_5d3711fa();
}

/*
	Name: function_587c487b
	Namespace: namespace_23567e72
	Checksum: 0x6D0895B6
	Offset: 0xDB0
	Size: 0xBF
	Parameters: 15
	Flags: None
*/
function function_587c487b(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_869fc26b, var_faf17161, var_ae725cb8, var_97570bbe, var_7419ba1f)
{
	if(function_65f192a6(var_3a212fd7) && var_dfcc01fd.var_f4ae8e42 != "pistol")
	{
		level.var_76663db9 = 0;
	}
	return var_f9a179ed;
}

/*
	Name: function_5d3711fa
	Namespace: namespace_23567e72
	Checksum: 0x492706A4
	Offset: 0xE78
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function function_5d3711fa()
{
	self waittill("hash_128f8789", var_3a212fd7, var_ad8afadc, var_dfcc01fd, var_dd89f865, var_bd00ff2a);
	if(level.var_76663db9 && function_65f192a6(var_3a212fd7))
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a notify("hash_c5775d94");
		}
	}
	else if(function_65f192a6(var_3a212fd7) && var_dfcc01fd.var_4be20d44 == "turret_bo3_civ_truck_pickup_tech_54i")
	{
		var_3a212fd7 notify("hash_3f3be7cb");
	}
}

/*
	Name: function_ba5f78c4
	Namespace: namespace_23567e72
	Checksum: 0x60A435C9
	Offset: 0xFB8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ba5f78c4()
{
	self.var_d7f34b97 = 0;
	self.var_a5360b2a = namespace_82b91a51::function_8c4f4e93(3);
}

/*
	Name: function_ed62e62f
	Namespace: namespace_23567e72
	Checksum: 0xE6243764
	Offset: 0xFF0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_ed62e62f()
{
	namespace_dabbe128::function_de1a6d25(&function_9cb470ce);
}

/*
	Name: function_9cb470ce
	Namespace: namespace_23567e72
	Checksum: 0x808E4921
	Offset: 0x1020
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_9cb470ce(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && function_cb3d1c9b(var_a8563e07.var_3a212fd7.var_722885f3, self.var_722885f3) >= 3240000)
	{
		if(var_a8563e07.var_3a212fd7.var_d7f34b97 == 0)
		{
			var_a8563e07.var_3a212fd7.var_a5360b2a = namespace_82b91a51::function_8c4f4e93(3);
			var_a8563e07.var_3a212fd7.var_d7f34b97++;
		}
		else
		{
			var_a8563e07.var_3a212fd7.var_d7f34b97++;
			if(var_a8563e07.var_3a212fd7.var_d7f34b97 >= 3 && var_a8563e07.var_3a212fd7.var_a5360b2a namespace_82b91a51::function_abc2cfcf() > 0)
			{
				var_a8563e07.var_3a212fd7 notify("hash_2a10a12a");
			}
			else if(var_a8563e07.var_3a212fd7.var_a5360b2a namespace_82b91a51::function_abc2cfcf() <= 0)
			{
				var_a8563e07.var_3a212fd7.var_d7f34b97 = 0;
			}
		}
	}
}

/*
	Name: function_ca5e3a6
	Namespace: namespace_23567e72
	Checksum: 0xD008C9EE
	Offset: 0x11C0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ca5e3a6()
{
	self.var_65338a8f = 0;
	self.var_a5360b2a = namespace_82b91a51::function_8c4f4e93(1);
}

/*
	Name: function_be537152
	Namespace: namespace_23567e72
	Checksum: 0x631548D9
	Offset: 0x11F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_be537152()
{
	namespace_dabbe128::function_de1a6d25(&function_55a74563);
}

/*
	Name: function_55a74563
	Namespace: namespace_23567e72
	Checksum: 0x2433DA37
	Offset: 0x1228
	Size: 0x1A7
	Parameters: 1
	Flags: None
*/
function function_55a74563(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && function_5dbf7eca(self.var_e6e9b8de, "rpg"))
	{
		if(var_a8563e07.var_3a212fd7.var_65338a8f == 0)
		{
			var_a8563e07.var_3a212fd7.var_a5360b2a = namespace_82b91a51::function_8c4f4e93(1);
			var_a8563e07.var_3a212fd7.var_65338a8f++;
		}
		else
		{
			var_a8563e07.var_3a212fd7.var_65338a8f++;
			if(var_a8563e07.var_3a212fd7.var_65338a8f >= 2 && var_a8563e07.var_3a212fd7.var_a5360b2a namespace_82b91a51::function_abc2cfcf() > 0)
			{
				var_a8563e07.var_3a212fd7 notify("hash_f70d22e7");
			}
			else if(var_a8563e07.var_3a212fd7.var_a5360b2a namespace_82b91a51::function_abc2cfcf() <= 0)
			{
				var_a8563e07.var_3a212fd7.var_65338a8f = 1;
				var_a8563e07.var_3a212fd7.var_a5360b2a = namespace_82b91a51::function_8c4f4e93(1);
			}
		}
	}
}

/*
	Name: function_81a32f61
	Namespace: namespace_23567e72
	Checksum: 0xB979A4FB
	Offset: 0x13D8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_81a32f61()
{
	self.var_27d2276e = 0;
	self.var_6fd54591 = 0;
	self thread function_35dfc997();
}

/*
	Name: function_35dfc997
	Namespace: namespace_23567e72
	Checksum: 0x4ECD3CB6
	Offset: 0x1418
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_35dfc997()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_f7be0a32");
		self.var_27d2276e = 0;
		self.var_6fd54591 = 0;
	}
}

/*
	Name: function_fe5a0b6
	Namespace: namespace_23567e72
	Checksum: 0x78D4CB
	Offset: 0x1460
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_fe5a0b6()
{
	namespace_dabbe128::function_de1a6d25(&function_635e0947);
}

/*
	Name: function_635e0947
	Namespace: namespace_23567e72
	Checksum: 0x704FE7FB
	Offset: 0x1490
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_635e0947(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(self.var_8fc0e50e == "human")
		{
			var_a8563e07.var_3a212fd7.var_6fd54591++;
		}
		else if(self.var_8fc0e50e == "robot")
		{
			var_a8563e07.var_3a212fd7.var_27d2276e++;
		}
		if(var_a8563e07.var_3a212fd7.var_6fd54591 > 0 && var_a8563e07.var_3a212fd7.var_27d2276e > 0)
		{
			var_a8563e07.var_3a212fd7 notify("hash_b92df4b");
		}
	}
}

/*
	Name: function_af8faf92
	Namespace: namespace_23567e72
	Checksum: 0x70642A50
	Offset: 0x1578
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_af8faf92()
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_roof_escape", "targetname", self);
	level.var_8454c072 = 0;
}

/*
	Name: function_69b1ee49
	Namespace: namespace_23567e72
	Checksum: 0x72276A97
	Offset: 0x15C0
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_69b1ee49()
{
	namespace_2f06d687::function_72214789("group_roof_workers");
	if(level.var_8454c072)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a notify("hash_74cdbe17");
		}
	}
}

/*
	Name: function_91f0e7d2
	Namespace: namespace_23567e72
	Checksum: 0x60777F2C
	Offset: 0x1670
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_91f0e7d2()
{
	self.var_a7590ae5 = 0;
}

/*
	Name: function_91fa5513
	Namespace: namespace_23567e72
	Checksum: 0xC3FF44F5
	Offset: 0x1688
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_91fa5513()
{
	level waittill("hash_e1526d21");
	namespace_dabbe128::function_de1a6d25(&function_92bc12da);
	level namespace_ad23e503::function_1ab5ebec("barge_breach_cleared");
	namespace_dabbe128::function_fad550c4(&function_92bc12da);
}

/*
	Name: function_92bc12da
	Namespace: namespace_23567e72
	Checksum: 0x6C1BCBB6
	Offset: 0x1708
	Size: 0xCF
	Parameters: 1
	Flags: None
*/
function function_92bc12da(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(var_a8563e07.var_a77ad8eb == "head" || var_a8563e07.var_a77ad8eb == "helmet" || var_a8563e07.var_a77ad8eb == "neck")
		{
			var_a8563e07.var_3a212fd7.var_a7590ae5++;
			if(var_a8563e07.var_3a212fd7.var_a7590ae5 >= 3)
			{
				var_a8563e07.var_3a212fd7 notify("hash_9fa2e64b");
			}
		}
	}
}

/*
	Name: function_78f93084
	Namespace: namespace_23567e72
	Checksum: 0x17AA572B
	Offset: 0x17E0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_78f93084()
{
	self.var_10276781 = 0;
}

/*
	Name: function_29c337dd
	Namespace: namespace_23567e72
	Checksum: 0x503D9C7E
	Offset: 0x17F8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_29c337dd()
{
	level namespace_ad23e503::function_1ab5ebec("comm_relay_engaged");
	namespace_dabbe128::function_de1a6d25(&function_8c9ce56);
	level namespace_ad23e503::function_1ab5ebec("relay_room_clear");
	namespace_dabbe128::function_fad550c4(&function_8c9ce56);
}

/*
	Name: function_8c9ce56
	Namespace: namespace_23567e72
	Checksum: 0xDD177919
	Offset: 0x1888
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_8c9ce56(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(function_5dbf7eca(self.var_170527fb, "comm_relay_awaken_robot") && !isdefined(self.var_b16fc475))
		{
			var_a8563e07.var_3a212fd7.var_10276781++;
			if(var_a8563e07.var_3a212fd7.var_10276781 >= 4)
			{
				var_a8563e07.var_3a212fd7 notify("hash_4e109d00");
			}
		}
	}
}

/*
	Name: function_f0b50148
	Namespace: namespace_23567e72
	Checksum: 0xDB0B55E7
	Offset: 0x1940
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_f0b50148()
{
	level namespace_ad23e503::function_1ab5ebec("warlord_fight");
	namespace_dabbe128::function_de1a6d25(&function_b82c8e7b);
	level namespace_ad23e503::function_1ab5ebec("drone_strike");
	namespace_dabbe128::function_fad550c4(&function_b82c8e7b);
}

/*
	Name: function_26aa602b
	Namespace: namespace_23567e72
	Checksum: 0xEB82C577
	Offset: 0x19D0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_26aa602b()
{
	level namespace_ad23e503::function_1ab5ebec("flag_enter_police_station");
	namespace_dabbe128::function_de1a6d25(&function_b82c8e7b);
	level namespace_ad23e503::function_1ab5ebec("flag_kane_intro_complete");
	namespace_dabbe128::function_fad550c4(&function_b82c8e7b);
}

/*
	Name: function_328b2c47
	Namespace: namespace_23567e72
	Checksum: 0x7B20594B
	Offset: 0x1A60
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_328b2c47()
{
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	namespace_dabbe128::function_de1a6d25(&function_b82c8e7b);
	level namespace_ad23e503::function_1ab5ebec("warlord_dead");
	namespace_dabbe128::function_fad550c4(&function_b82c8e7b);
}

/*
	Name: function_b82c8e7b
	Namespace: namespace_23567e72
	Checksum: 0x9FB8B094
	Offset: 0x1AF0
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_b82c8e7b(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_8fc0e50e == "warlord")
	{
		if(var_a8563e07.var_51e6a548.var_170527fb === "destructible")
		{
			var_a8563e07.var_3a212fd7 notify("hash_729650f9");
		}
	}
}

/*
	Name: function_92e8d6d8
	Namespace: namespace_23567e72
	Checksum: 0xBB855B1B
	Offset: 0x1B78
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_92e8d6d8(var_e3b635fb)
{
	foreach(var_d84e54db in var_e3b635fb)
	{
		var_d84e54db.var_44a68a57 = &function_aa2360ca;
	}
	foreach(var_3f7c5c5d in var_e3b635fb)
	{
		var_3f7c5c5d thread function_9ff8b6fb();
	}
	level thread function_ccfcd136(var_e3b635fb);
}

/*
	Name: function_aa2360ca
	Namespace: namespace_23567e72
	Checksum: 0x91BBACE9
	Offset: 0x1CB8
	Size: 0x147
	Parameters: 15
	Flags: None
*/
function function_aa2360ca(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_869fc26b, var_faf17161, var_ae725cb8, var_97570bbe, var_7419ba1f)
{
	if(!isdefined(var_dfcc01fd))
	{
		return var_f9a179ed;
	}
	var_3b6449c5 = var_dfcc01fd.var_8c02d299.var_4be20d44;
	if(function_65f192a6(var_3a212fd7))
	{
		if(var_ba36487d !== "MOD_MELEE" && var_ba36487d !== "MOD_MELEE_ASSASSINATE" && var_ba36487d !== "MOD_MELEE_WEAPON_BUTT" && var_3b6449c5 != "flash_grenade" && var_3b6449c5 != "gadget_es_strike" && var_3b6449c5 != "gadget_es_strike_upgraded" && var_3b6449c5 != "gadget_sensory_overload")
		{
			level.var_63855bec = 0;
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_ccfcd136
	Namespace: namespace_23567e72
	Checksum: 0xF94ED75F
	Offset: 0x1E08
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_ccfcd136(var_e3b635fb)
{
	namespace_84970cc4::function_1ab5ebec(var_e3b635fb, "death");
	wait(1);
	if(level.var_63855bec)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a notify("hash_22e4c723");
		}
	}
}

/*
	Name: function_9ff8b6fb
	Namespace: namespace_23567e72
	Checksum: 0x9D086747
	Offset: 0x1ED0
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_9ff8b6fb()
{
	self waittill("hash_128f8789", var_3a212fd7, var_ad8afadc, var_dfcc01fd, var_dd89f865, var_bd00ff2a);
	if(!function_65f192a6(var_3a212fd7))
	{
		level.var_63855bec = 0;
	}
}

/*
	Name: function_c169f275
	Namespace: namespace_23567e72
	Checksum: 0x1EC0B937
	Offset: 0x1F48
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c169f275()
{
	self.var_a7590ae5 = 0;
}

/*
	Name: function_7d2dae0a
	Namespace: namespace_23567e72
	Checksum: 0xEE41515D
	Offset: 0x1F60
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_7d2dae0a()
{
	level namespace_ad23e503::function_1ab5ebec("flag_enter_police_station");
	namespace_dabbe128::function_de1a6d25(&function_cdf3285b);
	level namespace_ad23e503::function_1ab5ebec("flag_kane_intro_complete");
	namespace_dabbe128::function_fad550c4(&function_cdf3285b);
}

/*
	Name: function_cdf3285b
	Namespace: namespace_23567e72
	Checksum: 0xC0BE881B
	Offset: 0x1FF0
	Size: 0xC7
	Parameters: 1
	Flags: None
*/
function function_cdf3285b(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_8fc0e50e == "human_riotshield")
	{
		if(var_a8563e07.var_a77ad8eb == "head" || var_a8563e07.var_a77ad8eb == "helmet" || var_a8563e07.var_a77ad8eb == "neck")
		{
			var_a8563e07.var_3a212fd7.var_a7590ae5++;
			var_a8563e07.var_3a212fd7 notify("hash_d34814eb");
		}
	}
}


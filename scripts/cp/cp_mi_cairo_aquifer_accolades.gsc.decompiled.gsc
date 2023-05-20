#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\util_shared;

#namespace namespace_b5b83650;

/*
	Name: function_4d39a2af
	Namespace: namespace_b5b83650
	Checksum: 0x345984B
	Offset: 0x5B0
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function function_4d39a2af()
{
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_UNTOUCHED");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_SCORE");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_COLLECTIBLE");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE3", "aq_thirty_kill_vtol");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE4", "aq_three_hunters_vtol");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE5", "aq_quads_only_guns");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE6", "aq_threefer_missile");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE7", "aq_six_under_two");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE9", "aq_zero_damage_defenses");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE10", "aq_tnt");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE11", "aq_defend_egyptians");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE12", "aq_vtol_drop_block");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE13", "aq_dogfight_kill_only_guns");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE14", "aq_boss_zero_damage");
	namespace_fe079222::function_50f16166("MISSION_AQUIFER_CHALLENGE15", "aq_boss_cybercore_only");
	level.var_bb70984c = [];
	level.var_bb70984c["aq_thirty_kill_vtol"] = 90;
	level.var_bb70984c["aq_three_hunters_vtol"] = 7;
	level.var_bb70984c["aq_dogfight_kill_only_guns"] = 8;
	level.var_bb70984c["aq_threefer_missile"] = 1;
	level.var_bb70984c["aq_vtol_drop_block"] = 5;
	level.var_bb70984c["aq_tnt"] = 15;
	level.var_bb70984c["aq_defend_egyptians"] = 45;
	thread function_89f596d9();
}

/*
	Name: function_c27610f9
	Namespace: namespace_b5b83650
	Checksum: 0x401B6C66
	Offset: 0x850
	Size: 0x1E9
	Parameters: 3
	Flags: None
*/
function function_c27610f9(var_8e087689, var_70b01bd3, var_513753b4)
{
	if(!isdefined(var_513753b4))
	{
		var_513753b4 = 1;
	}
	if(!isdefined(var_8e087689))
	{
		var_8e087689 = "dummy";
	}
	if(!isdefined(level.var_bb70984c[var_8e087689]))
	{
		level.var_bb70984c[var_8e087689] = 1;
	}
	var_5dc5e20a = self;
	var_2395e945 = [];
	if(self == level)
	{
		var_2395e945 = level.var_9b1393e7;
	}
	else
	{
		var_2395e945[var_2395e945.size] = self;
	}
	foreach(var_5dc5e20a in var_2395e945)
	{
		if(!isdefined(var_5dc5e20a.var_ec496e8b))
		{
			var_5dc5e20a.var_ec496e8b = [];
		}
		if(!isdefined(var_5dc5e20a.var_ec496e8b[var_8e087689]))
		{
			var_5dc5e20a.var_ec496e8b[var_8e087689] = 0;
		}
		var_5dc5e20a.var_ec496e8b[var_8e087689]++;
		var_5dc5e20a notify(var_8e087689);
		/#
			function_d52b076d("Dev Block strings are not supported" + var_8e087689 + "Dev Block strings are not supported" + var_5dc5e20a.var_ec496e8b[var_8e087689] + "Dev Block strings are not supported" + level.var_bb70984c[var_8e087689]);
		#/
	}
}

/*
	Name: function_89f596d9
	Namespace: namespace_b5b83650
	Checksum: 0xEFE3EEF1
	Offset: 0xA48
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_89f596d9()
{
	namespace_dabbe128::function_de1a6d25(&function_eab778af);
	thread function_a8831ac1();
	thread function_f208dfd8();
	namespace_dabbe128::function_de1a6d25(&function_e3e41d63);
	namespace_dabbe128::function_de1a6d25(&function_c7122e75);
	namespace_dabbe128::function_de1a6d25(&function_171499d7);
	namespace_dabbe128::function_de1a6d25(&function_6be65617);
	namespace_dabbe128::function_5cf145c9(&function_9cda9485);
	thread function_dcb19e2a();
	thread function_f42b5fa1();
}

/*
	Name: function_171499d7
	Namespace: namespace_b5b83650
	Checksum: 0x776CE5C8
	Offset: 0xB58
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_171499d7(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && !function_85e4c3b3(self))
	{
		if(var_a8563e07.var_51e6a548.var_170527fb === "destructible")
		{
			var_a8563e07.var_3a212fd7 namespace_fe079222::function_331efedc("MISSION_AQUIFER_CHALLENGE10");
		}
	}
}

/*
	Name: function_6be65617
	Namespace: namespace_b5b83650
	Checksum: 0x9BA0CAD6
	Offset: 0xBF8
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_6be65617(var_a8563e07)
{
	if(level namespace_ad23e503::function_7922262b("destroy_defenses2_completed"))
	{
		namespace_dabbe128::function_fad550c4(&function_6be65617);
		return;
	}
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && !function_85e4c3b3(self) && level namespace_ad23e503::function_7922262b("destroy_defenses2"))
	{
		if(isdefined(var_a8563e07.var_3a212fd7.var_8fedf36c) && var_a8563e07.var_3a212fd7 function_c7e339d1(var_a8563e07.var_3a212fd7.var_8fedf36c))
		{
			var_a8563e07.var_3a212fd7 namespace_fe079222::function_331efedc("MISSION_AQUIFER_CHALLENGE11");
		}
	}
}

/*
	Name: function_c7122e75
	Namespace: namespace_b5b83650
	Checksum: 0xB373EC4C
	Offset: 0xD20
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_c7122e75(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && !function_85e4c3b3(self) && self.var_3e94206a !== "allies")
	{
		if(isdefined(var_a8563e07.var_3a212fd7.var_8fedf36c) && var_a8563e07.var_3a212fd7 function_c7e339d1(var_a8563e07.var_3a212fd7.var_8fedf36c))
		{
			var_a8563e07.var_3a212fd7 function_c27610f9("aq_thirty_kill_vtol", &function_b49b24ca);
		}
	}
}

/*
	Name: function_b49b24ca
	Namespace: namespace_b5b83650
	Checksum: 0x925AE9DB
	Offset: 0xE08
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b49b24ca()
{
	namespace_dabbe128::function_fad550c4(&function_c7122e75);
}

/*
	Name: function_9cda9485
	Namespace: namespace_b5b83650
	Checksum: 0x48B513C7
	Offset: 0xE38
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_9cda9485(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "hunter")
	{
		if(isdefined(var_a8563e07.var_3a212fd7.var_8fedf36c) && var_a8563e07.var_3a212fd7 function_c7e339d1(var_a8563e07.var_3a212fd7.var_8fedf36c))
		{
			var_a8563e07.var_3a212fd7 function_c27610f9("aq_three_hunters_vtol", &function_ff25056a);
		}
	}
}

/*
	Name: function_ff25056a
	Namespace: namespace_b5b83650
	Checksum: 0x89A459A0
	Offset: 0xF10
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_ff25056a()
{
	namespace_dabbe128::function_9fcef20a(&function_9cda9485);
}

/*
	Name: function_a8831ac1
	Namespace: namespace_b5b83650
	Checksum: 0xD61D6B35
	Offset: 0xF40
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_a8831ac1()
{
	namespace_dabbe128::function_5cf145c9(&function_5ae2cb8a);
	level.var_67a0c1e2 = 0;
	namespace_ad23e503::function_1ab5ebec("destroy_defenses2_completed");
	if(level.var_67a0c1e2 == 0)
	{
		level function_c27610f9("aq_quads_only_guns");
	}
	namespace_dabbe128::function_9fcef20a(&function_5ae2cb8a);
}

/*
	Name: function_5ae2cb8a
	Namespace: namespace_b5b83650
	Checksum: 0xD347D509
	Offset: 0xFE0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_5ae2cb8a(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "quadtank")
	{
		if(isdefined(var_a8563e07.var_dfcc01fd) && var_a8563e07.var_dfcc01fd.var_4be20d44 != "vtol_fighter_player_turret")
		{
			level.var_67a0c1e2 = 1;
		}
	}
}

/*
	Name: function_282c46db
	Namespace: namespace_b5b83650
	Checksum: 0x18EE2AF6
	Offset: 0x1080
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_282c46db()
{
	namespace_dabbe128::function_9fcef20a(&function_9cda9485);
}

/*
	Name: function_eab778af
	Namespace: namespace_b5b83650
	Checksum: 0xC179F252
	Offset: 0x10B0
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_eab778af(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && !function_85e4c3b3(self))
	{
		if(isdefined(var_a8563e07.var_3a212fd7.var_8fedf36c) && var_a8563e07.var_3a212fd7 function_c7e339d1(var_a8563e07.var_3a212fd7.var_8fedf36c) && var_a8563e07.var_dfcc01fd.var_fe311e35 == "projectile")
		{
			if(!isdefined(var_a8563e07.var_3a212fd7.var_be2c6b19) || var_a8563e07.var_3a212fd7.var_be2c6b19 != GetTime())
			{
				var_a8563e07.var_3a212fd7.var_be2c6b19 = GetTime();
				var_a8563e07.var_3a212fd7.var_eb0c14e = 0;
			}
			var_a8563e07.var_3a212fd7.var_eb0c14e++;
			if(var_a8563e07.var_3a212fd7.var_eb0c14e >= 5)
			{
				var_a8563e07.var_3a212fd7 function_c27610f9("aq_threefer_missile", &function_a3f650bc);
			}
		}
	}
}

/*
	Name: function_a3f650bc
	Namespace: namespace_b5b83650
	Checksum: 0x5AE42C36
	Offset: 0x1248
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a3f650bc()
{
	namespace_dabbe128::function_fad550c4(&function_eab778af);
}

/*
	Name: function_e3e41d63
	Namespace: namespace_b5b83650
	Checksum: 0x10B8B370
	Offset: 0x1278
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_e3e41d63(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && !function_85e4c3b3(self))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(isdefined(var_5dc5e20a.var_2aec500b))
		{
			return;
		}
		if(!isdefined(var_5dc5e20a.var_c3919891))
		{
			var_5dc5e20a.var_c3919891 = [];
		}
		var_e78c0153 = GetTime();
		if(var_5dc5e20a.var_c3919891.size > 0)
		{
			var_aacc3def = 1;
			while(var_aacc3def)
			{
				var_aacc3def = 0;
				for(var_c957f6b6 = 0; var_c957f6b6 < var_5dc5e20a.var_c3919891.size; var_c957f6b6++)
				{
					if(var_5dc5e20a.var_c3919891[var_c957f6b6] < var_e78c0153)
					{
						var_5dc5e20a.var_c3919891 = namespace_84970cc4::function_8fdf50c0(var_5dc5e20a.var_c3919891, var_c957f6b6);
						var_aacc3def = 1;
						break;
					}
				}
			}
		}
		var_5dc5e20a.var_c3919891[var_5dc5e20a.var_c3919891.size] = var_e78c0153 + 2000;
		/#
			function_d52b076d("Dev Block strings are not supported" + var_5dc5e20a.var_c3919891.size);
		#/
		if(var_5dc5e20a.var_c3919891.size >= 10)
		{
			var_5dc5e20a.var_2aec500b = 1;
			var_5dc5e20a function_c27610f9("aq_six_under_two");
		}
	}
}

/*
	Name: function_8618bd31
	Namespace: namespace_b5b83650
	Checksum: 0x99EC1590
	Offset: 0x14A0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_8618bd31()
{
}

/*
	Name: function_3b8b405
	Namespace: namespace_b5b83650
	Checksum: 0xEBC84F05
	Offset: 0x14B0
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function function_3b8b405()
{
	namespace_ad23e503::function_1ab5ebec("player_active_in_level");
	namespace_ad23e503::function_1ab5ebec("intro_dogfight_completed");
	var_e4047762 = level.var_9b1393e7;
	foreach(var_5dc5e20a in var_e4047762)
	{
		var_5dc5e20a thread function_2edc96bc();
	}
	namespace_ad23e503::function_1ab5ebec("destroy_defenses_completed");
	foreach(var_5dc5e20a in var_e4047762)
	{
		if(namespace_84970cc4::function_307b88f2(level.var_9b1393e7, var_5dc5e20a))
		{
			var_5dc5e20a notify("hash_c843f11");
		}
	}
	wait(1);
	level notify("hash_ebe4266");
}

/*
	Name: function_2edc96bc
	Namespace: namespace_b5b83650
	Checksum: 0x676CDEB1
	Offset: 0x1648
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2edc96bc()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	level endon("hash_ebe4266");
	var_12fe08d7 = self namespace_82b91a51::function_45ce26d("player_took_accolade_damage", "destroy_defenses_completed");
	if(isdefined(var_12fe08d7) && var_12fe08d7 == "destroy_defenses_completed")
	{
		self function_c27610f9("aq_zero_damage_defenses");
	}
}

/*
	Name: function_f208dfd8
	Namespace: namespace_b5b83650
	Checksum: 0x45AD8FFA
	Offset: 0x16E8
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_f208dfd8()
{
	level namespace_ad23e503::function_1ab5ebec("player_active_in_level");
	level namespace_ad23e503::function_1ab5ebec("intro_dogfight_completed");
	if(!level namespace_ad23e503::function_7922262b("destroy_defenses_completed"))
	{
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_deee0b62);
	}
	level namespace_ad23e503::function_1ab5ebec("destroy_defenses_completed");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_80329ae2) && !var_5dc5e20a.var_80329ae2)
		{
			var_5dc5e20a function_c27610f9("aq_zero_damage_defenses");
		}
	}
}

/*
	Name: function_deee0b62
	Namespace: namespace_b5b83650
	Checksum: 0xF284C7F6
	Offset: 0x1858
	Size: 0xFF
	Parameters: 1
	Flags: None
*/
function function_deee0b62(var_a8563e07)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	level endon("hash_4af9ae51");
	self.var_80329ae2 = 0;
	while(1)
	{
		if(isdefined(self.var_8fedf36c))
		{
			self.var_8fedf36c waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_597cacac, var_cd9517d2, var_f10f645, var_f105c26b, var_dfcc01fd);
			if(var_dfcc01fd.var_fe311e35 != "bullet")
			{
				self.var_80329ae2 = 1;
			}
		}
		else
		{
			wait(0.05);
		}
	}
}

/*
	Name: function_dcb19e2a
	Namespace: namespace_b5b83650
	Checksum: 0xE638224
	Offset: 0x1960
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_dcb19e2a()
{
	namespace_ad23e503::function_1ab5ebec("player_active_in_level");
	namespace_ad23e503::function_1ab5ebec("destroy_defenses_completed");
	namespace_dabbe128::function_5cf145c9(&function_3718be07);
	namespace_ad23e503::function_1ab5ebec("hack_terminal_left_completed");
	namespace_ad23e503::function_1ab5ebec("hack_terminal_right_completed");
	namespace_ad23e503::function_1ab5ebec("hack_terminals3_completed");
	namespace_dabbe128::function_9fcef20a(&function_3718be07);
}

/*
	Name: function_3718be07
	Namespace: namespace_b5b83650
	Checksum: 0xC80DC45C
	Offset: 0x1A28
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_3718be07(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && (self.var_170527fb == "res_vtol1_vh" || self.var_170527fb == "res_vtol2_vh" || self.var_170527fb == "port_vtol1_vh" || self.var_170527fb == "port_vtol2_vh" || self.var_170527fb == "lcombat_dropoff_vtol_vh"))
	{
		level function_c27610f9("aq_vtol_drop_block");
	}
}

/*
	Name: function_f42b5fa1
	Namespace: namespace_b5b83650
	Checksum: 0x1FBD553A
	Offset: 0x1AE8
	Size: 0x1CD
	Parameters: 0
	Flags: None
*/
function function_f42b5fa1()
{
	namespace_ad23e503::function_1ab5ebec("player_active_in_level");
	level namespace_ad23e503::function_1ab5ebec("start_battle");
	level namespace_ad23e503::function_1ab5ebec("sniper_boss_spawned");
	var_e4047762 = level.var_9b1393e7;
	foreach(var_5dc5e20a in var_e4047762)
	{
		var_5dc5e20a thread function_a2aa8ca8();
		var_5dc5e20a thread function_b362fb44();
	}
	level namespace_ad23e503::function_1ab5ebec("end_battle");
	foreach(var_5dc5e20a in var_e4047762)
	{
		if(namespace_84970cc4::function_307b88f2(level.var_9b1393e7, var_5dc5e20a))
		{
			var_5dc5e20a notify("hash_8c7ead91");
		}
	}
	wait(1);
	level notify("hash_2899a2c7");
}

/*
	Name: function_a2aa8ca8
	Namespace: namespace_b5b83650
	Checksum: 0x37FAB50A
	Offset: 0x1CC0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_a2aa8ca8()
{
	self endon("hash_643a7daf");
	level endon("hash_2899a2c7");
	self thread function_c2ba8da();
	var_12fe08d7 = self namespace_82b91a51::function_45ce26d("sniper_boss_damage", "accolades_boss_done");
	if(isdefined(var_12fe08d7) && var_12fe08d7 == "accolades_boss_done")
	{
		self function_c27610f9("aq_boss_zero_damage");
	}
}

/*
	Name: function_c2ba8da
	Namespace: namespace_b5b83650
	Checksum: 0x67512523
	Offset: 0x1D68
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_c2ba8da()
{
	self endon("hash_643a7daf");
	level endon("hash_2899a2c7");
	var_a0ad4f34 = self;
	while(var_a0ad4f34 != level.var_2839b910)
	{
		self waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_bd00ff2a, var_c8a3ac29, var_fe311e35, var_6df9264, var_b31a6ddf, var_1b2a0d26, var_dfcc01fd, var_980d0a72);
	}
	self notify("hash_703e1e78");
}

/*
	Name: function_b362fb44
	Namespace: namespace_b5b83650
	Checksum: 0x771AD3F2
	Offset: 0x1E40
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b362fb44()
{
	self endon("hash_643a7daf");
	level endon("hash_2899a2c7");
	var_12fe08d7 = self namespace_82b91a51::function_45ce26d("weapon_fired", "accolades_boss_done");
	if(isdefined(var_12fe08d7) && var_12fe08d7 == "accolades_boss_done")
	{
		self function_c27610f9("aq_boss_cybercore_only");
	}
}


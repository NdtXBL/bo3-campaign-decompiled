#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_dev;
#using scripts\cp\gametypes\_save;
#using scripts\cp\teams\_teams;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\loadout_shared;
#using scripts\shared\player_shared;
#using scripts\shared\system_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;

#namespace namespace_a249d1db;

/*
	Name: function_2dc19561
	Namespace: namespace_a249d1db
	Checksum: 0x3F238F1C
	Offset: 0xA20
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("loadout", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_a249d1db
	Checksum: 0x55852F9B
	Offset: 0xA60
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_a2b79791 = "c_usa_cia_masonjr_viewbody";
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
	namespace_dabbe128::function_eb99da89(&function_eb99da89);
	namespace_dabbe128::function_95670def(&function_ef129246);
	level thread function_adca0ced();
}

/*
	Name: function_eb99da89
	Namespace: namespace_a249d1db
	Checksum: 0x99EC1590
	Offset: 0xAF8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_eb99da89()
{
}

/*
	Name: function_c35e6aab
	Namespace: namespace_a249d1db
	Checksum: 0xFAEBFA54
	Offset: 0xB08
	Size: 0x7F3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	level.var_d9148bb7["class_smg"] = "CLASS_SMG";
	level.var_d9148bb7["class_cqb"] = "CLASS_CQB";
	level.var_d9148bb7["class_assault"] = "CLASS_ASSAULT";
	level.var_d9148bb7["class_lmg"] = "CLASS_LMG";
	level.var_d9148bb7["class_sniper"] = "CLASS_SNIPER";
	level.var_d9148bb7["custom0"] = "CLASS_CUSTOM1";
	level.var_d9148bb7["custom1"] = "CLASS_CUSTOM2";
	level.var_d9148bb7["custom2"] = "CLASS_CUSTOM3";
	level.var_d9148bb7["custom3"] = "CLASS_CUSTOM4";
	level.var_d9148bb7["custom4"] = "CLASS_CUSTOM5";
	level.var_d9148bb7["custom5"] = "CLASS_CUSTOM6";
	level.var_d9148bb7["custom6"] = "CLASS_CUSTOM7";
	level.var_d9148bb7["custom7"] = "CLASS_CUSTOM8";
	level.var_d9148bb7["custom8"] = "CLASS_CUSTOM9";
	level.var_d9148bb7["custom9"] = "CLASS_CUSTOM10";
	level.var_76935a62 = 4;
	level.var_bc56ad43 = 6;
	level.var_ab2ebd2b = 3;
	level.var_97e6f46b = function_92a88da3("maxAllocation");
	level.var_1a47407b = function_92a88da3("loadoutKillstreaksEnabled");
	level.var_b49c26a1 = 5;
	level.var_a139c050 = "CLASS_CUSTOM1";
	if(namespace_15cb3ff6::function_9471660c("weapon", "allowfrag"))
	{
		level.var_f996a5bc["frag"] = function_c4d5ec1f("frag_grenade");
	}
	else
	{
		level.var_f996a5bc["frag"] = "";
	}
	if(namespace_15cb3ff6::function_9471660c("weapon", "allowsmoke"))
	{
		level.var_f996a5bc["smoke"] = function_c4d5ec1f("smoke_grenade");
	}
	else
	{
		level.var_f996a5bc["smoke"] = "";
	}
	if(namespace_15cb3ff6::function_9471660c("weapon", "allowflash"))
	{
		level.var_f996a5bc["flash"] = function_c4d5ec1f("flash_grenade");
	}
	else
	{
		level.var_f996a5bc["flash"] = "";
	}
	level.var_f996a5bc["concussion"] = function_c4d5ec1f("concussion_grenade");
	if(namespace_15cb3ff6::function_9471660c("weapon", "allowsatchel"))
	{
		level.var_f996a5bc["satchel_charge"] = function_c4d5ec1f("satchel_charge");
	}
	else
	{
		level.var_f996a5bc["satchel_charge"] = "";
	}
	if(namespace_15cb3ff6::function_9471660c("weapon", "allowbetty"))
	{
		level.var_f996a5bc["betty"] = function_c4d5ec1f("mine_bouncing_betty");
	}
	else
	{
		level.var_f996a5bc["betty"] = "";
	}
	if(namespace_15cb3ff6::function_9471660c("weapon", "allowrpgs"))
	{
		level.var_f996a5bc["rpg"] = function_c4d5ec1f("rpg");
	}
	else
	{
		level.var_f996a5bc["rpg"] = "";
	}
	function_344147a4();
	function_cd945d1d();
	function_450af4b6("CLASS_SMG", 10);
	function_450af4b6("CLASS_CQB", 11);
	function_450af4b6("CLASS_ASSAULT", 12);
	function_450af4b6("CLASS_LMG", 13);
	function_450af4b6("CLASS_SNIPER", 14);
	level.var_247d647e = [];
	level.var_58c80a91 = [];
	level.var_50aecf17 = [];
	level.var_34608831 = [];
	var_47c38c35 = 99;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_47c38c35; var_c957f6b6++)
	{
		if(!isdefined(level.var_328710ea[var_c957f6b6]) || level.var_328710ea[var_c957f6b6]["group"] == "")
		{
			break;
		}
		if(!isdefined(level.var_328710ea[var_c957f6b6]) || level.var_328710ea[var_c957f6b6]["reference"] == "")
		{
			break;
		}
		var_5eff1d88 = level.var_328710ea[var_c957f6b6]["group"];
		var_dfcc01fd = level.var_328710ea[var_c957f6b6]["reference"];
		var_b000b0be = level.var_328710ea[var_c957f6b6]["attachment"];
		function_20fe6790(var_dfcc01fd, var_5eff1d88);
		if(isdefined(var_b000b0be) && var_b000b0be != "")
		{
			var_f4eabd6f = function_d6df1f20(var_b000b0be, " ");
			if(isdefined(var_f4eabd6f))
			{
				if(var_f4eabd6f.size == 0)
				{
					function_20fe6790(var_dfcc01fd + "_" + var_b000b0be, var_5eff1d88);
					break;
				}
				for(var_7d5301e4 = 0; var_7d5301e4 < var_f4eabd6f.size; var_7d5301e4++)
				{
					function_20fe6790(var_dfcc01fd + "_" + var_f4eabd6f[var_7d5301e4], var_5eff1d88);
				}
			}
		}
	}
	level thread function_af2160d3();
}

/*
	Name: function_adca0ced
	Namespace: namespace_a249d1db
	Checksum: 0x123A8588
	Offset: 0x1308
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_adca0ced()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	namespace_9f824288::function_37ae30c6();
}

/*
	Name: function_ef129246
	Namespace: namespace_a249d1db
	Checksum: 0x439D2521
	Offset: 0x1348
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_ef129246()
{
	self namespace_9f824288::function_bee608f0("playerClass", undefined);
	self namespace_9f824288::function_bee608f0("altPlayerID", undefined);
	self namespace_9f824288::function_bee608f0("saved_weapon", undefined);
	self namespace_9f824288::function_bee608f0("saved_weapondata", undefined);
	self namespace_9f824288::function_bee608f0("lives", undefined);
	self namespace_9f824288::function_bee608f0("saved_rig1", undefined);
	self namespace_9f824288::function_bee608f0("saved_rig1_upgraded", undefined);
	self namespace_9f824288::function_bee608f0("saved_rig2", undefined);
	self namespace_9f824288::function_bee608f0("saved_rig2_upgraded", undefined);
}

/*
	Name: function_344147a4
	Namespace: namespace_a249d1db
	Checksum: 0x21DC74D3
	Offset: 0x1478
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_344147a4()
{
	var_ec9ba907 = 0;
	level.var_5d7694d7 = [];
	while(function_4bd0142f("item_exclusion_" + var_ec9ba907))
	{
		level.var_5d7694d7[var_ec9ba907] = function_4bd0142f("item_exclusion_" + var_ec9ba907);
		var_ec9ba907++;
	}
	level.var_e476b301 = [];
	for(var_ec9ba907 = 0; function_6f1ebe57("attachment_exclusion_" + var_ec9ba907) != ""; var_ec9ba907++)
	{
		level.var_e476b301[var_ec9ba907] = function_6f1ebe57("attachment_exclusion_" + var_ec9ba907);
	}
}

/*
	Name: function_c49c010
	Namespace: namespace_a249d1db
	Checksum: 0xA940AE62
	Offset: 0x1580
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_c49c010(var_b000b0be)
{
	var_158b5a10 = level.var_e476b301.size;
	for(var_fa037545 = 0; var_fa037545 < var_158b5a10; var_fa037545++)
	{
		if(var_b000b0be == level.var_e476b301[var_fa037545])
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_2358da67
	Namespace: namespace_a249d1db
	Checksum: 0x7FE68AEA
	Offset: 0x15F0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_2358da67()
{
	if(!isdefined(level.var_f543dad1))
	{
		level.var_f543dad1 = function_a6df0337(namespace_82b91a51::function_bc37a245());
	}
}

/*
	Name: function_5cd00b1b
	Namespace: namespace_a249d1db
	Checksum: 0xD9D32469
	Offset: 0x1638
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_5cd00b1b(var_cf9f6a1f)
{
	function_2358da67();
	var_f5653fc5 = function_b6b79a0(function_d4cc1345(level.var_f543dad1, 4, var_cf9f6a1f, 5));
	if(var_f5653fc5 < 1)
	{
		var_f5653fc5 = 1;
	}
	return var_f5653fc5;
}

/*
	Name: function_8428dec1
	Namespace: namespace_a249d1db
	Checksum: 0xFC8E1E19
	Offset: 0x16C0
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_8428dec1(var_e6e9b8de, var_987227b8)
{
	var_cf9f6a1f = function_b52547ea(var_e6e9b8de, var_987227b8);
	function_2358da67();
	var_1630584c = function_b6b79a0(function_d4cc1345(level.var_f543dad1, 4, var_cf9f6a1f, 0));
	if(function_f985c2b2(var_1630584c))
	{
		var_cf9f6a1f = function_d4cc1345(level.var_f543dad1, 0, 0, 4);
	}
	return var_cf9f6a1f;
}

/*
	Name: function_450af4b6
	Namespace: namespace_a249d1db
	Checksum: 0x607C0ABC
	Offset: 0x1798
	Size: 0x25
	Parameters: 2
	Flags: None
*/
function function_450af4b6(var_da2cd0a3, var_dfc6d98d)
{
	level.var_2f634d08[var_da2cd0a3] = var_dfc6d98d;
}

/*
	Name: function_20fe6790
	Namespace: namespace_a249d1db
	Checksum: 0x3388CAE8
	Offset: 0x17C8
	Size: 0x173
	Parameters: 2
	Flags: None
*/
function function_20fe6790(var_e3a45b44, var_5eff1d88)
{
	if(function_5dbf7eca("weapon_smg weapon_cqb weapon_assault weapon_lmg weapon_sniper weapon_shotgun weapon_launcher weapon_special", var_5eff1d88))
	{
		level.var_247d647e[function_c4d5ec1f(var_e3a45b44)] = 1;
	}
	else if(function_5dbf7eca("weapon_pistol", var_5eff1d88))
	{
		level.var_58c80a91[function_c4d5ec1f(var_e3a45b44)] = 1;
	}
	else if(var_5eff1d88 == "weapon_grenade")
	{
		level.var_50aecf17[function_c4d5ec1f(var_e3a45b44)] = 1;
	}
	else if(var_5eff1d88 == "weapon_explosive")
	{
		level.var_34608831[function_c4d5ec1f(var_e3a45b44)] = 1;
	}
	else if(var_5eff1d88 == "weapon_rifle")
	{
		level.var_34608831[function_c4d5ec1f(var_e3a45b44)] = 1;
	}
	else
	{
		namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported" + var_5eff1d88);
	}
	/#
	#/
}

/*
	Name: function_cd945d1d
	Namespace: namespace_a249d1db
	Checksum: 0x7CB62687
	Offset: 0x1948
	Size: 0x4CB
	Parameters: 0
	Flags: None
*/
function function_cd945d1d()
{
	level.var_328710ea = [];
	function_2358da67();
	for(var_c957f6b6 = 0; var_c957f6b6 < 256; var_c957f6b6++)
	{
		var_c04d8f24 = function_8f1ef9(level.var_f543dad1, 0, var_c957f6b6);
		if(var_c04d8f24 > -1)
		{
			var_e8754558 = function_5a31ce6c(level.var_f543dad1, var_c04d8f24, 2);
			if(function_5dbf7eca(var_e8754558, "weapon_") || var_e8754558 == "hero")
			{
				var_4d7e5c5a = function_5a31ce6c(level.var_f543dad1, var_c04d8f24, 4);
				if(var_4d7e5c5a != "")
				{
					var_dfcc01fd = function_c4d5ec1f(var_4d7e5c5a);
					level.var_328710ea[var_c957f6b6]["reference"] = var_4d7e5c5a;
					level.var_328710ea[var_c957f6b6]["group"] = var_e8754558;
					level.var_328710ea[var_c957f6b6]["count"] = function_b6b79a0(function_5a31ce6c(level.var_f543dad1, var_c04d8f24, 5));
					level.var_328710ea[var_c957f6b6]["attachment"] = function_5a31ce6c(level.var_f543dad1, var_c04d8f24, 8);
				}
			}
		}
	}
	level.var_75b59717 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 256; var_c957f6b6++)
	{
		var_c04d8f24 = function_8f1ef9(level.var_f543dad1, 0, var_c957f6b6);
		if(var_c04d8f24 > -1)
		{
			var_e8754558 = function_5a31ce6c(level.var_f543dad1, var_c04d8f24, 2);
			if(var_e8754558 == "specialty")
			{
				var_4d7e5c5a = function_5a31ce6c(level.var_f543dad1, var_c04d8f24, 4);
				if(var_4d7e5c5a != "")
				{
					var_8eca9c9a = function_5a31ce6c(level.var_f543dad1, var_c04d8f24, 6);
					var_e317e1e4 = function_5e4fe4f9(level.var_f543dad1, 0, var_c957f6b6, 3);
					level.var_75b59717[var_8eca9c9a] = var_e317e1e4;
				}
			}
		}
	}
	level.var_41e73a09 = [];
	level.var_8f75bc3f = [];
	level.var_8c9c8482 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 256; var_c957f6b6++)
	{
		var_c04d8f24 = function_8f1ef9(level.var_f543dad1, 0, var_c957f6b6);
		if(var_c04d8f24 > -1)
		{
			var_e8754558 = function_5a31ce6c(level.var_f543dad1, var_c04d8f24, 2);
			if(var_e8754558 == "killstreak")
			{
				var_4d7e5c5a = function_5a31ce6c(level.var_f543dad1, var_c04d8f24, 4);
				if(var_4d7e5c5a != "")
				{
					level.var_f22c2956[var_c957f6b6] = var_4d7e5c5a;
					level.var_8c9c8482[var_4d7e5c5a] = var_c957f6b6;
					var_e0c27bfa = function_5a31ce6c(level.var_f543dad1, var_c04d8f24, 6);
					var_4be20d44 = function_5e4fe4f9(level.var_f543dad1, 0, var_c957f6b6, 3);
					level.var_41e73a09[var_4d7e5c5a] = var_4be20d44;
					level.var_8f75bc3f[var_4d7e5c5a] = var_e0c27bfa;
					level.var_8c9c8482[var_4d7e5c5a] = var_c957f6b6;
				}
			}
		}
	}
}

/*
	Name: function_29da5080
	Namespace: namespace_a249d1db
	Checksum: 0x371BBA63
	Offset: 0x1E20
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_29da5080(var_d62110b4)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_d9148bb7[var_d62110b4]));
	#/
	return level.var_d9148bb7[var_d62110b4];
}

/*
	Name: function_bb59b4b7
	Namespace: namespace_a249d1db
	Checksum: 0xCFF28077
	Offset: 0x1E68
	Size: 0x87
	Parameters: 2
	Flags: None
*/
function function_bb59b4b7(var_7d65157, var_26e2fb26)
{
	var_8f4b8159 = function_dac874d(var_7d65157, var_26e2fb26);
	if(var_8f4b8159 != "none" && !function_c49c010(var_8f4b8159))
	{
		var_8f4b8159 = var_8f4b8159 + "_";
	}
	else
	{
		var_8f4b8159 = "";
	}
	return var_8f4b8159;
}

/*
	Name: function_5933877
	Namespace: namespace_a249d1db
	Checksum: 0x1B070991
	Offset: 0x1EF8
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_5933877()
{
	if(!isdefined(level.var_b65167f1))
	{
		return 0;
	}
	return level.var_b65167f1;
}

/*
	Name: function_14f4f303
	Namespace: namespace_a249d1db
	Checksum: 0x6CDAAFD1
	Offset: 0x1F20
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_14f4f303(var_da2cd0a3, var_29b40335)
{
	var_29b40335++;
	var_822fe8dc = "killstreak" + var_29b40335;
	if(function_4bd0142f("custom_killstreak_mode") == 2)
	{
		return function_4bd0142f("custom_" + var_822fe8dc);
	}
	else
	{
		return self function_4be09268(var_da2cd0a3, var_822fe8dc);
	}
}

/*
	Name: function_fc32096
	Namespace: namespace_a249d1db
	Checksum: 0xCC2134DA
	Offset: 0x1FC0
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function function_fc32096(var_e317e1e4)
{
	return isdefined(var_e317e1e4) && function_2477ac2(var_e317e1e4);
}

/*
	Name: function_5262aa0d
	Namespace: namespace_a249d1db
	Checksum: 0x64C94F7
	Offset: 0x1FF8
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_5262aa0d(var_b54d1a86)
{
	self.var_f72c4e1f = [];
}

/*
	Name: function_1088c9f
	Namespace: namespace_a249d1db
	Checksum: 0xB12D28C9
	Offset: 0x2018
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_1088c9f()
{
	self.var_e856611d = GetTime();
}

/*
	Name: function_1c374fc1
	Namespace: namespace_a249d1db
	Checksum: 0xEB3E3950
	Offset: 0x2030
	Size: 0x35
	Parameters: 1
	Flags: None
*/
function function_1c374fc1(var_7883fe23)
{
	if(var_7883fe23 == level.var_b47a6429.var_4be20d44 && level.var_3802ed0e)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_9afb7ce8
	Namespace: namespace_a249d1db
	Checksum: 0x5DD6CF09
	Offset: 0x2070
	Size: 0x2D
	Parameters: 1
	Flags: None
*/
function function_9afb7ce8(var_c5b0e858)
{
	if(level.var_bb9b39ad)
	{
		return function_7a159f2f(var_c5b0e858);
	}
	return 0;
}

/*
	Name: function_db96b564
	Namespace: namespace_a249d1db
	Checksum: 0x7CD601EC
	Offset: 0x20A8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_db96b564(var_dc236bc8)
{
	if(level.var_76c6e677 === "coop")
	{
		self thread namespace_175490fb::function_674d724c(0, !isdefined(var_dc236bc8) && var_dc236bc8);
	}
}

/*
	Name: function_5edb1868
	Namespace: namespace_a249d1db
	Checksum: 0xE0E214D9
	Offset: 0x20F8
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_5edb1868(var_3e94206a, var_da2cd0a3)
{
	function_c22bfa61("giveLoadoutLevelSpecific");
	if(isdefined(level.var_a0c0aeb))
	{
		self [[level.var_a0c0aeb]]();
	}
	if(isdefined(level.var_ed44e709))
	{
		self [[level.var_ed44e709]]();
	}
	function_7905cb51();
}

/*
	Name: function_a61641c6
	Namespace: namespace_a249d1db
	Checksum: 0x74E170FE
	Offset: 0x2178
	Size: 0x19C3
	Parameters: 4
	Flags: None
*/
function function_a61641c6(var_3e94206a, var_da2cd0a3, var_dc236bc8, var_5a13c491)
{
	function_c22bfa61("giveLoadout");
	self function_fe91f994();
	var_c8156f0f = 0;
	self.var_f72c4e1f = [];
	self.var_463e2ebb = [];
	self notify("hash_bc7028b9");
	var_4833ca26 = 0;
	var_33c03031 = 0;
	var_a5ee5eed = 0;
	var_6831cba4 = 0;
	var_fade74e2 = 0;
	var_e7b1aca8 = 0;
	if(function_5dbf7eca(var_da2cd0a3, "CLASS_CUSTOM"))
	{
		function_c22bfa61("custom class");
		var_b54d1a86 = function_b6b79a0(var_da2cd0a3[var_da2cd0a3.size - 1]) - 1;
		if(-1 == var_b54d1a86)
		{
			var_b54d1a86 = 9;
		}
		self.var_b54d1a86 = var_b54d1a86;
		if(isdefined(var_5a13c491))
		{
			self.var_6f9a6c8e = 1;
		}
		else
		{
			self.var_6f9a6c8e = undefined;
		}
		self function_5262aa0d(var_b54d1a86);
		var_6831cba4 = self function_3dd01129(var_b54d1a86);
		var_4833ca26 = var_b54d1a86;
		var_e7b1aca8 = 1;
		function_7905cb51();
	}
	else
	{
		function_c22bfa61("default class");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_44fb8955["Dev Block strings are not supported"]), "Dev Block strings are not supported");
		#/
		var_b54d1a86 = level.var_2f634d08[var_da2cd0a3];
		if(!isdefined(var_b54d1a86))
		{
			if(self namespace_82b91a51::function_de60610b())
			{
				var_b54d1a86 = namespace_84970cc4::function_47d18840(level.var_2f634d08);
			}
			else
			{
				namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported" + var_da2cd0a3 + "Dev Block strings are not supported");
			}
			/#
			#/
		}
		self.var_b54d1a86 = var_b54d1a86;
		function_7905cb51();
	}
	var_bb5ce82a = self function_7844b40(var_b54d1a86, 2);
	/#
		function_895b00("Dev Block strings are not supported" + self.var_4be20d44 + "Dev Block strings are not supported" + level.var_965f378e.var_4be20d44 + "Dev Block strings are not supported");
	#/
	self function_860a040a(level.var_965f378e, var_bb5ce82a);
	self.var_f72c4e1f = self function_ff83114c(var_b54d1a86);
	if(level.var_bb9b39ad)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_f72c4e1f.size; var_c957f6b6++)
		{
			if(function_9afb7ce8(self.var_f72c4e1f[var_c957f6b6]))
			{
				function_6c668988(self.var_f72c4e1f, var_c957f6b6);
				var_c957f6b6--;
			}
		}
	}
	self function_fb497f80(var_b54d1a86);
	self function_f03301a4();
	self function_23e013b9(3, "altMode");
	self function_23e013b9(4, "");
	var_e01389de = "";
	var_1ddab10 = 0;
	if(isdefined(self.var_44fb8955["weapon"]) && self.var_44fb8955["weapon"] != level.var_6c3e6703 && !self.var_44fb8955["weapon"].var_80b7978b)
	{
		var_3ae58dd = self.var_44fb8955["weapon"];
	}
	else
	{
		var_3ae58dd = self function_8af4d36d(var_b54d1a86, "primary");
		if(isdefined(var_5a13c491))
		{
			var_3ae58dd = var_5a13c491 function_8af4d36d(var_b54d1a86, "primary");
		}
	}
	if(var_3ae58dd.var_80b7978b)
	{
		var_3ae58dd = level.var_175f5666;
	}
	var_c11924ba = self function_8af4d36d(var_b54d1a86, "secondary");
	if(isdefined(var_5a13c491))
	{
		var_c11924ba = var_5a13c491 function_8af4d36d(var_b54d1a86, "secondary");
	}
	if(var_c11924ba.var_80b7978b)
	{
		var_c11924ba = level.var_175f5666;
	}
	self.var_bf3e36ed = 0;
	self.var_779cc3c1 = 0;
	if(var_c11924ba != level.var_175f5666)
	{
		var_a5ee5eed = self function_7844b40(var_b54d1a86, 1);
		if(isdefined(var_5a13c491))
		{
			var_a5ee5eed = var_5a13c491 function_7844b40(var_b54d1a86, 1);
		}
		/#
			function_895b00("Dev Block strings are not supported" + self.var_4be20d44 + "Dev Block strings are not supported" + var_c11924ba.var_4be20d44 + "Dev Block strings are not supported");
		#/
		var_65ce895e = self function_249d3729(var_b54d1a86, "secondary");
		if(isdefined(var_5a13c491))
		{
			var_65ce895e = var_5a13c491 function_249d3729(var_b54d1a86, "secondary");
		}
		self function_860a040a(var_c11924ba, var_a5ee5eed, var_65ce895e);
		self.var_24c0bfb = var_c11924ba;
		self.var_f8a642e8 = var_c11924ba.var_8ecfae36;
		self.var_97deb6d = self function_6282e51f(self.var_b54d1a86, 1);
		if(isdefined(var_5a13c491))
		{
			self.var_97deb6d = var_5a13c491 function_6282e51f(self.var_b54d1a86, 1);
		}
		self function_704b802a(var_c11924ba);
		var_e01389de = var_c11924ba;
		var_1ddab10++;
	}
	self.var_44fb8955["primaryWeapon"] = var_3ae58dd;
	if(var_3ae58dd != level.var_175f5666)
	{
		var_33c03031 = self function_7844b40(var_b54d1a86, 0);
		if(isdefined(var_5a13c491))
		{
			var_33c03031 = var_5a13c491 function_7844b40(var_b54d1a86, 0);
		}
		/#
			function_895b00("Dev Block strings are not supported" + self.var_4be20d44 + "Dev Block strings are not supported" + var_3ae58dd.var_4be20d44 + "Dev Block strings are not supported");
		#/
		var_65ce895e = self function_249d3729(var_b54d1a86, "primary");
		if(isdefined(var_5a13c491))
		{
			var_65ce895e = var_5a13c491 function_249d3729(var_b54d1a86, "primary");
		}
		self function_860a040a(var_3ae58dd, var_33c03031, var_65ce895e);
		self.var_3ec4eaaf = var_3ae58dd;
		self.var_367ea154 = var_3ae58dd.var_8ecfae36;
		self.var_5ab868c9 = self function_6282e51f(self.var_b54d1a86, 0);
		if(isdefined(var_5a13c491))
		{
			self.var_5ab868c9 = var_5a13c491 function_6282e51f(self.var_b54d1a86, 0);
		}
		self function_704b802a(var_3ae58dd);
		var_e01389de = var_3ae58dd;
		var_1ddab10++;
	}
	if(isdefined(self.var_82325a18))
	{
		var_82325a18 = function_d6df1f20(self.var_82325a18, ",");
		foreach(var_e3a45b44 in var_82325a18)
		{
			var_e60aa5b1 = function_c4d5ec1f(var_e3a45b44);
			self function_860a040a(var_e60aa5b1);
			self function_704b802a(var_e60aa5b1);
		}
	}
	else if(!self function_e3858cb2())
	{
		if(!function_c6fa3ae8())
		{
			/#
				function_895b00("Dev Block strings are not supported" + self.var_4be20d44 + "Dev Block strings are not supported" + level.var_fd3908d3.var_4be20d44 + "Dev Block strings are not supported");
			#/
			self function_860a040a(level.var_fd3908d3, var_bb5ce82a);
		}
		if(var_1ddab10 == 0)
		{
			var_e01389de = level.var_fd3908d3;
		}
	}
	if(!isdefined(self.var_e01389de) && isdefined(self.var_44fb8955["spawnWeapon"]))
	{
		self.var_e01389de = self.var_44fb8955["spawnWeapon"];
	}
	if(isdefined(self.var_e01389de) && function_2aa13ca3(self.var_e01389de, var_e01389de) && !self.var_44fb8955["changed_class"])
	{
		var_e01389de = self.var_e01389de;
	}
	var_6971bc15 = self.var_44fb8955["changed_class"];
	var_eef17944 = !namespace_82b91a51::function_5b94904d();
	var_a527c1f3 = namespace_82b91a51::function_d992ab0f();
	self.var_44fb8955["changed_class"] = 0;
	self.var_e01389de = var_e01389de;
	self.var_44fb8955["spawnWeapon"] = self.var_e01389de;
	self function_bdba7b94(var_e01389de);
	self.var_bd1a8795 = level.var_6c3e6703;
	self.var_22f7edca = 0;
	self.var_f5ffba49 = level.var_6c3e6703;
	self.var_c87cedb6 = 0;
	var_be3c63a7 = level.var_6c3e6703;
	var_4d474c14 = 0;
	var_19c7767b = level.var_6c3e6703;
	var_f9e435c0 = 0;
	var_f617d0f6 = level.var_6c3e6703;
	var_d4a6767b = 0;
	if(function_4bd0142f("gadgetEnabled") == 1 || function_4bd0142f("equipmentAsGadgets") == 1)
	{
		var_be3c63a7 = self function_8af4d36d(var_b54d1a86, "primaryGadget");
		if(isdefined(var_5a13c491))
		{
			var_be3c63a7 = var_5a13c491 function_8af4d36d(var_b54d1a86, "primaryGadget");
		}
		var_4d474c14 = var_be3c63a7.var_de5aa6fd;
	}
	else
	{
		var_eda0d83a = self function_cb7863ff(var_b54d1a86, "primarygrenade");
		if(isdefined(var_5a13c491))
		{
			var_eda0d83a = var_5a13c491 function_cb7863ff(var_b54d1a86, "primarygrenade");
		}
		if(var_eda0d83a != "" && var_eda0d83a != "weapon_null")
		{
			var_be3c63a7 = function_c4d5ec1f(var_be3c63a7);
			var_4d474c14 = self function_4be09268(var_b54d1a86, "primarygrenadecount");
			if(isdefined(var_5a13c491))
			{
				var_4d474c14 = var_5a13c491 function_4be09268(var_b54d1a86, "primarygrenadecount");
			}
		}
	}
	if(function_9afb7ce8(var_be3c63a7.var_4be20d44) || !function_1c374fc1(var_be3c63a7.var_4be20d44))
	{
		var_be3c63a7 = level.var_6c3e6703;
		var_4d474c14 = 0;
	}
	if(var_be3c63a7 == level.var_6c3e6703)
	{
		var_be3c63a7 = level.var_f996a5bc["frag"];
		var_4d474c14 = 0;
	}
	if(var_be3c63a7 != level.var_175f5666)
	{
		/#
			function_895b00("Dev Block strings are not supported" + self.var_4be20d44 + "Dev Block strings are not supported" + var_be3c63a7.var_4be20d44 + "Dev Block strings are not supported");
		#/
		self function_860a040a(var_be3c63a7);
		self function_67795b5f(var_be3c63a7, var_4d474c14);
		self function_3373d11a(var_be3c63a7);
		self.var_bd1a8795 = var_be3c63a7;
		self.var_22f7edca = var_4d474c14;
		self namespace_2bd142f8::function_526c4bd(var_be3c63a7, var_6971bc15, var_eef17944, var_a527c1f3);
	}
	if(function_4bd0142f("gadgetEnabled") == 1 || function_4bd0142f("equipmentAsGadgets") == 1)
	{
		var_19c7767b = self function_8af4d36d(var_b54d1a86, "secondaryGadget");
		if(isdefined(var_5a13c491))
		{
			var_19c7767b = var_5a13c491 function_8af4d36d(var_b54d1a86, "secondaryGadget");
		}
		var_f9e435c0 = var_19c7767b.var_de5aa6fd;
	}
	else
	{
		var_1ebf5956 = self function_cb7863ff(var_b54d1a86, "specialgrenade");
		if(isdefined(var_5a13c491))
		{
			var_1ebf5956 = var_5a13c491 function_cb7863ff(var_b54d1a86, "specialgrenade");
		}
		if(var_1ebf5956 != "" && var_1ebf5956 != "weapon_null")
		{
			var_19c7767b = function_c4d5ec1f(var_19c7767b);
			var_f9e435c0 = self function_4be09268(var_b54d1a86, "specialgrenadecount");
			if(isdefined(var_5a13c491))
			{
				var_f9e435c0 = var_5a13c491 function_4be09268(var_b54d1a86, "specialgrenadecount");
			}
		}
	}
	if(function_9afb7ce8(var_19c7767b.var_4be20d44) || !function_1c374fc1(var_19c7767b.var_4be20d44))
	{
		var_19c7767b = level.var_6c3e6703;
		var_f9e435c0 = 0;
	}
	if(var_19c7767b == level.var_6c3e6703)
	{
		var_19c7767b = level.var_f996a5bc["flash"];
		var_f9e435c0 = 0;
	}
	if(var_19c7767b != level.var_175f5666)
	{
		/#
			function_895b00("Dev Block strings are not supported" + self.var_4be20d44 + "Dev Block strings are not supported" + var_19c7767b.var_4be20d44 + "Dev Block strings are not supported");
		#/
		self function_860a040a(var_19c7767b);
		self function_67795b5f(var_19c7767b, var_f9e435c0);
		self function_3373d11a(var_19c7767b);
		self.var_f5ffba49 = var_19c7767b;
		self.var_c87cedb6 = var_f9e435c0;
		self namespace_2bd142f8::function_526c4bd(var_19c7767b, var_6971bc15, var_eef17944, var_a527c1f3);
	}
	if(function_4bd0142f("gadgetEnabled") == 1 || function_4bd0142f("equipmentAsGadgets") == 1)
	{
		var_f617d0f6 = self function_8af4d36d(var_b54d1a86, "specialGadget");
		if(isdefined(var_5a13c491))
		{
			var_f617d0f6 = var_5a13c491 function_8af4d36d(var_b54d1a86, "specialGadget");
		}
		var_d4a6767b = var_f617d0f6.var_de5aa6fd;
	}
	if(function_9afb7ce8(var_f617d0f6.var_4be20d44) || !function_1c374fc1(var_f617d0f6.var_4be20d44))
	{
		var_f617d0f6 = level.var_6c3e6703;
		var_d4a6767b = 0;
	}
	if(var_f617d0f6 == level.var_6c3e6703)
	{
		var_f617d0f6 = level.var_175f5666;
		var_d4a6767b = 0;
	}
	if(var_f617d0f6 != level.var_175f5666)
	{
		/#
			function_895b00("Dev Block strings are not supported" + self.var_4be20d44 + "Dev Block strings are not supported" + var_f617d0f6.var_4be20d44 + "Dev Block strings are not supported");
		#/
		self function_860a040a(var_f617d0f6);
		self function_67795b5f(var_f617d0f6, var_d4a6767b);
		self function_3373d11a(var_f617d0f6);
		self.var_66cb8722 = var_f617d0f6;
		self.var_877b90bf = var_d4a6767b;
		self namespace_2bd142f8::function_526c4bd(var_f617d0f6, var_6971bc15, var_eef17944, var_a527c1f3);
	}
	if(level.var_76c6e677 === "coop")
	{
		namespace_175490fb::function_4b8ac464(var_b54d1a86, var_4833ca26, !isdefined(var_dc236bc8) && var_dc236bc8, var_5a13c491);
	}
	self function_ebd715f6(var_b54d1a86, var_3ae58dd, var_c11924ba);
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		if(level.var_1a47407b && isdefined(self.var_463e2ebb[var_c957f6b6]) && isdefined(level.var_8c9c8482[self.var_463e2ebb[var_c957f6b6]]))
		{
			var_d50db15a[var_c957f6b6] = level.var_8c9c8482[self.var_463e2ebb[var_c957f6b6]];
			continue;
		}
		var_d50db15a[var_c957f6b6] = 0;
	}
	self function_cf0ced21(var_3ae58dd, var_c11924ba, self.var_bd1a8795, self.var_f5ffba49, var_d50db15a[0], var_d50db15a[1], var_d50db15a[2]);
	self namespace_e7a38025::function_37fd0a0f(var_3e94206a, var_3ae58dd);
	self function_1088c9f();
	self thread function_42d27f93(var_e01389de);
	self function_5726227a(var_6831cba4);
	if(isdefined(self.var_704997f4))
	{
		self function_5a7dd25d(self.var_704997f4 * self function_65c5701());
	}
	if(isdefined(level.var_ed44e709))
	{
		var_e01389de = self [[level.var_ed44e709]]();
		if(isdefined(var_e01389de))
		{
			self thread function_42d27f93(var_e01389de);
		}
	}
	self function_5d88bb60();
	if(!isdefined(self.var_ac3f0a6a))
	{
		if(isdefined(var_e01389de))
		{
			self function_701b6ed5(var_e01389de);
		}
		else
		{
			self function_701b6ed5(var_3ae58dd);
		}
	}
	else
	{
		self function_b99d72b(1);
	}
	var_f0b98892 = self namespace_9f824288::function_36adbb9c("saved_weapon", undefined);
	if(isdefined(var_f0b98892) && (!isdefined(level.var_3da0c335) && level.var_3da0c335))
	{
		self namespace_5dc5e20a::function_18cd2f76();
		self.var_88c6e52a = namespace_82b91a51::function_5d0eca1c(var_f0b98892);
		self.var_ae42e42f = self namespace_9f824288::function_36adbb9c("saved_weapondata", undefined);
		self.var_dc4a16f6 = self namespace_9f824288::function_36adbb9c("lives", 0);
		self namespace_5dc5e20a::function_75f710f6(0);
	}
	self.var_ac3f0a6a = 0;
	self.var_3224c440 = 0;
	if(namespace_bea63b8a::function_85aec44f("cybercom"))
	{
		self namespace_957e94ce::function_1ab5ebec("cybercom_init");
	}
	self.var_de6188ec = 1;
	self namespace_957e94ce::function_74d6b22f("loadout_given");
	namespace_dabbe128::function_dabbe128("hash_33bba039");
	function_7905cb51();
}

/*
	Name: function_8de272c8
	Namespace: namespace_a249d1db
	Checksum: 0x597D816B
	Offset: 0x3B48
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_8de272c8(var_dfcc01fd, var_1e2af8c1)
{
	if(var_dfcc01fd.var_64ce7385)
	{
		self function_67795b5f(var_dfcc01fd, var_1e2af8c1);
	}
	else
	{
		self function_67795b5f(var_dfcc01fd, var_1e2af8c1);
		var_4cb423cc = var_1e2af8c1 - self function_159a070b(var_dfcc01fd);
		/#
			namespace_33b293fd::function_a7ee953(var_4cb423cc >= 0);
		#/
		self function_cdf98bcd(var_dfcc01fd, var_4cb423cc);
	}
}

/*
	Name: function_af2160d3
	Namespace: namespace_a249d1db
	Checksum: 0x878C629
	Offset: 0x3C28
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_af2160d3()
{
	for(;;)
	{
		level waittill("hash_f0cd13ff", var_5dc5e20a);
		if(!level.var_52bf79c4)
		{
			if(!isdefined(var_5dc5e20a.var_44fb8955["class"]))
			{
				var_5dc5e20a.var_44fb8955["class"] = "";
			}
			var_5dc5e20a.var_808c68ef = var_5dc5e20a.var_44fb8955["class"];
			var_5dc5e20a.var_9c42d2c3 = "";
		}
		var_5dc5e20a.var_f5e4778c = 0;
		var_5dc5e20a.var_d1c344c9 = [];
		var_5dc5e20a.var_7d22ed55 = [];
		var_5dc5e20a.var_6964b90 = [];
		var_5dc5e20a.var_9f7edcf8 = [];
	}
}

/*
	Name: function_5ab95f3d
	Namespace: namespace_a249d1db
	Checksum: 0x31393425
	Offset: 0x3D20
	Size: 0x3F
	Parameters: 2
	Flags: None
*/
function function_5ab95f3d(var_997e1abb, var_42a91e4c)
{
	wait(var_997e1abb);
	self function_ba7f003e(var_42a91e4c);
	self.var_aabe9f43 = 0;
}

/*
	Name: function_93a49c9d
	Namespace: namespace_a249d1db
	Checksum: 0x5F10957A
	Offset: 0x3D68
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_93a49c9d(var_836aa7a3)
{
	self.var_808c68ef = var_836aa7a3;
}

/*
	Name: function_e4a4bdf7
	Namespace: namespace_a249d1db
	Checksum: 0x8D23C057
	Offset: 0x3D88
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_e4a4bdf7()
{
	level.var_25af2e70 = function_4bd0142f("perk_armorpiercing", 40) / 100;
	level.var_6ddc04bf = function_4bd0142f("perk_bulletDamage", 35);
	level.var_dd71dde6 = function_4bd0142f("perk_fireproof", 95);
	level.var_5a1f8245 = function_4bd0142f("perk_armorVest", 80);
	level.var_76314c4e = function_4bd0142f("perk_flakJacket", 35);
	level.var_8bfaaaaf = function_4bd0142f("perk_flakJacket_hardcore", 9);
}

/*
	Name: function_5d88bb60
	Namespace: namespace_a249d1db
	Checksum: 0x60BCFEF8
	Offset: 0x3E88
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_5d88bb60()
{
	var_133ce9dc = self.var_f72c4e1f;
	self.var_f5e4778c = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_133ce9dc.size; var_c957f6b6++)
	{
		var_750f5c9d = var_133ce9dc[var_c957f6b6];
		if(var_750f5c9d == "specialty_detectexplosive")
		{
			self.var_f5e4778c = 1;
		}
	}
}

/*
	Name: function_f03301a4
	Namespace: namespace_a249d1db
	Checksum: 0xA24FF510
	Offset: 0x3F18
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_f03301a4()
{
	var_133ce9dc = self.var_f72c4e1f;
	self function_f7a2618f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_133ce9dc.size; var_c957f6b6++)
	{
		var_750f5c9d = var_133ce9dc[var_c957f6b6];
		if(var_750f5c9d == "specialty_null" || function_5dbf7eca(var_750f5c9d, "specialty_weapon_") || var_750f5c9d == "weapon_null")
		{
			continue;
		}
		if(!level.var_cf1be84f)
		{
			continue;
		}
		/#
			function_895b00("Dev Block strings are not supported" + self.var_4be20d44 + "Dev Block strings are not supported" + var_750f5c9d + "Dev Block strings are not supported");
		#/
		self function_5d8fa337(var_750f5c9d);
	}
	/#
		namespace_eae8c9fa::function_91e82e7b();
	#/
}

/*
	Name: function_4c74de55
	Namespace: namespace_a249d1db
	Checksum: 0x1B85A4A2
	Offset: 0x4058
	Size: 0x1E9
	Parameters: 6
	Flags: None
*/
function function_4c74de55(var_8bcb913d, var_a0ad4f34, var_f9348fda, var_597cacac, var_dfcc01fd, var_178903fd)
{
	if(!isdefined(var_8bcb913d) || !isdefined(var_a0ad4f34) || !function_65f192a6(var_a0ad4f34))
	{
		return var_f9348fda;
	}
	if(!isdefined(var_f9348fda) || !isdefined(var_597cacac) || !isdefined(var_dfcc01fd))
	{
		return var_f9348fda;
	}
	var_61c1df88 = var_f9348fda;
	var_1bdcaa71 = var_f9348fda;
	if(var_a0ad4f34 function_88542fcf("specialty_bulletdamage") && function_dd0f4246(var_597cacac))
	{
		var_1bdcaa71 = var_f9348fda * 100 + level.var_6ddc04bf / 100;
		/#
			if(function_4bd0142f("Dev Block strings are not supported"))
			{
				function_895b00("Dev Block strings are not supported" + var_a0ad4f34.var_4be20d44 + "Dev Block strings are not supported");
			}
		#/
	}
	else
	{
		var_1bdcaa71 = var_61c1df88;
	}
	/#
		if(function_4bd0142f("Dev Block strings are not supported"))
		{
			function_895b00("Dev Block strings are not supported" + var_1bdcaa71 / var_61c1df88 + "Dev Block strings are not supported" + var_61c1df88 + "Dev Block strings are not supported" + var_1bdcaa71);
		}
	#/
	return function_b6b79a0(var_1bdcaa71);
}

/*
	Name: function_923da066
	Namespace: namespace_a249d1db
	Checksum: 0xA2D23203
	Offset: 0x4250
	Size: 0x6B3
	Parameters: 7
	Flags: None
*/
function function_923da066(var_8bcb913d, var_a0ad4f34, var_f9348fda, var_afec04e7, var_dfcc01fd, var_178903fd, var_508909f2)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_8bcb913d));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_a0ad4f34));
	#/
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(var_8bcb913d));
	#/
	if(var_f9348fda <= 0)
	{
		return var_f9348fda;
	}
	/#
		var_f96f74aa = 0;
		if(function_4bd0142f("Dev Block strings are not supported"))
		{
			var_f96f74aa = 1;
		}
	#/
	var_1bdcaa71 = var_f9348fda;
	if(function_65f192a6(var_a0ad4f34) && var_a0ad4f34 function_88542fcf("specialty_bulletdamage") && function_dd0f4246(var_afec04e7))
	{
		if(var_8bcb913d function_88542fcf("specialty_armorvest") && !function_1b2a8c(var_508909f2))
		{
			/#
				if(var_f96f74aa)
				{
					function_895b00("Dev Block strings are not supported" + var_8bcb913d.var_4be20d44 + "Dev Block strings are not supported" + var_a0ad4f34.var_4be20d44 + "Dev Block strings are not supported");
				}
			#/
		}
		else
		{
			var_1bdcaa71 = var_f9348fda * 100 + level.var_6ddc04bf / 100;
			/#
				if(var_f96f74aa)
				{
					function_895b00("Dev Block strings are not supported" + var_a0ad4f34.var_4be20d44 + "Dev Block strings are not supported" + var_8bcb913d.var_4be20d44);
				}
			#/
		}
	}
	else if(var_8bcb913d function_88542fcf("specialty_armorvest") && function_dd0f4246(var_afec04e7) && !function_1b2a8c(var_508909f2))
	{
		var_1bdcaa71 = var_f9348fda * level.var_5a1f8245 * 0.01;
		/#
			if(var_f96f74aa)
			{
				function_895b00("Dev Block strings are not supported" + var_a0ad4f34.var_4be20d44 + "Dev Block strings are not supported" + var_8bcb913d.var_4be20d44);
			}
		#/
	}
	else if(var_8bcb913d function_88542fcf("specialty_fireproof") && function_7b1ff84a(var_dfcc01fd, var_afec04e7))
	{
		var_1bdcaa71 = var_f9348fda * 100 - level.var_dd71dde6 / 100;
		/#
			if(var_f96f74aa)
			{
				function_895b00("Dev Block strings are not supported" + var_a0ad4f34.var_4be20d44 + "Dev Block strings are not supported" + var_8bcb913d.var_4be20d44);
			}
		#/
	}
	else if(var_8bcb913d function_88542fcf("specialty_flakjacket") && function_261a5dc5(var_afec04e7) && !var_dfcc01fd.var_fa4b89ee && !var_8bcb913d function_c44068e7(var_178903fd))
	{
		if(level.var_50527ffe)
		{
		}
		else
		{
		}
		var_fb51be93 = level.var_76314c4e;
		if(level.var_de12b72f && var_a0ad4f34.var_3e94206a != var_8bcb913d.var_3e94206a)
		{
			var_8bcb913d thread namespace_f74b04eb::function_11c64459(var_dfcc01fd, var_a0ad4f34);
		}
		else if(var_a0ad4f34 != var_8bcb913d)
		{
			var_8bcb913d thread namespace_f74b04eb::function_11c64459(var_dfcc01fd, var_a0ad4f34);
		}
		var_1bdcaa71 = function_b6b79a0(var_f9348fda * var_fb51be93 / 100);
		/#
			if(var_f96f74aa)
			{
				function_895b00("Dev Block strings are not supported" + var_8bcb913d.var_4be20d44 + "Dev Block strings are not supported" + var_a0ad4f34.var_4be20d44 + "Dev Block strings are not supported");
			}
		#/
	}
	/#
		var_8bcb913d.var_1e03bbdb = function_57b2be45(var_afec04e7);
		var_8bcb913d.var_d62f69de = var_f9348fda;
		var_8bcb913d.var_bc38e8e7 = var_1bdcaa71;
		var_8bcb913d.var_44c033a6 = function_57b2be45(var_508909f2);
		var_8bcb913d.var_c417fa6f = function_57b2be45(var_dfcc01fd.var_4be20d44);
		var_8bcb913d.var_a28c8832 = function_b6b79a0(function_7d15e2f8(var_a0ad4f34.var_722885f3, var_8bcb913d.var_722885f3));
		if(var_f96f74aa)
		{
			function_895b00("Dev Block strings are not supported" + var_1bdcaa71 / var_f9348fda + "Dev Block strings are not supported" + var_f9348fda + "Dev Block strings are not supported" + var_1bdcaa71);
		}
	#/
	var_1bdcaa71 = function_b6b79a0(var_1bdcaa71);
	if(var_1bdcaa71 < 1)
	{
		var_1bdcaa71 = 1;
	}
	return var_1bdcaa71;
}

/*
	Name: function_261a5dc5
	Namespace: namespace_a249d1db
	Checksum: 0xF7BAD875
	Offset: 0x4910
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_261a5dc5(var_597cacac)
{
	switch(var_597cacac)
	{
		case "MOD_EXPLOSIVE":
		case "MOD_GRENADE":
		case "MOD_GRENADE_SPLASH":
		case "MOD_PROJECTILE_SPLASH":
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_bb61b344
	Namespace: namespace_a249d1db
	Checksum: 0x608F1DC
	Offset: 0x4960
	Size: 0x69
	Parameters: 1
	Flags: None
*/
function function_bb61b344(var_5dc5e20a)
{
	return var_5dc5e20a function_88542fcf("specialty_stunprotection") || var_5dc5e20a function_88542fcf("specialty_flashprotection") || var_5dc5e20a function_88542fcf("specialty_proximityprotection");
}

/*
	Name: function_dd0f4246
	Namespace: namespace_a249d1db
	Checksum: 0xB68B04CB
	Offset: 0x49D8
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function function_dd0f4246(var_597cacac)
{
	return var_597cacac == "MOD_RIFLE_BULLET" || var_597cacac == "MOD_PISTOL_BULLET";
}

/*
	Name: function_7b1ff84a
	Namespace: namespace_a249d1db
	Checksum: 0x4340341D
	Offset: 0x4A08
	Size: 0x5F
	Parameters: 2
	Flags: None
*/
function function_7b1ff84a(var_dfcc01fd, var_597cacac)
{
	if(var_dfcc01fd.var_fa726cd1 && (var_597cacac == "MOD_BURNED" || var_597cacac == "MOD_GRENADE" || var_597cacac == "MOD_GRENADE_SPLASH"))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_1b2a8c
	Namespace: namespace_a249d1db
	Checksum: 0xDA8B9793
	Offset: 0x4A70
	Size: 0x37
	Parameters: 1
	Flags: None
*/
function function_1b2a8c(var_508909f2)
{
	return var_508909f2 == "helmet" || var_508909f2 == "head" || var_508909f2 == "neck";
}

/*
	Name: function_c44068e7
	Namespace: namespace_a249d1db
	Checksum: 0x4E4CD6FD
	Offset: 0x4AB0
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function function_c44068e7(var_178903fd)
{
	return isdefined(var_178903fd) && isdefined(var_178903fd.var_67b7913) && var_178903fd.var_67b7913 == self;
}


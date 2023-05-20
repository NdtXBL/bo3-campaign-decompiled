#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spectating;
#using scripts\cp\teams\_teams;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\string_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_88a69b2f;

/*
	Name: function_c35e6aab
	Namespace: namespace_88a69b2f
	Checksum: 0xBCCF1CF4
	Offset: 0x658
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_dabbe128::function_de460788("hash_bc12b61f", &function_72a45412);
	namespace_71e9cb84::function_50f16166("clientuimodel", "hudItems.cybercoreSelectMenuDisabled", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "hudItems.playerInCombat", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "playerAbilities.repulsorIndicatorDirection", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "playerAbilities.repulsorIndicatorIntensity", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "playerAbilities.proximityIndicatorDirection", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "playerAbilities.proximityIndicatorIntensity", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "serverDifficulty", 1, 3, "int");
}

/*
	Name: function_72a45412
	Namespace: namespace_88a69b2f
	Checksum: 0xA330C9A5
	Offset: 0x7E0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_72a45412()
{
	self thread function_79bc3ebf();
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_6c41e242));
	#/
	self namespace_71e9cb84::function_cc4d5165("serverDifficulty", level.var_6c41e242);
}

/*
	Name: function_77f47965
	Namespace: namespace_88a69b2f
	Checksum: 0x6C74607D
	Offset: 0x850
	Size: 0x19F
	Parameters: 1
	Flags: None
*/
function function_77f47965(var_58fe21e1)
{
	var_65184ffa = function_b8494651("axis");
	var_65184ffa = function_525ae497(var_65184ffa, function_b8494651("team3"), 0, 0);
	foreach(var_d84e54db in var_65184ffa)
	{
		if(function_5cfb84bb(var_d84e54db))
		{
			if(var_d84e54db function_fb010e4a(var_58fe21e1, 10))
			{
				return 1;
				continue;
			}
			if(var_d84e54db.var_6050ab17 === var_58fe21e1 && isdefined(var_d84e54db.var_dfcc01fd) && var_d84e54db.var_dfcc01fd.var_4be20d44 === "none" && function_cb3d1c9b(var_d84e54db.var_722885f3, var_58fe21e1.var_722885f3) < 240 * 240)
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_e172c2eb
	Namespace: namespace_88a69b2f
	Checksum: 0x1D89981B
	Offset: 0x9F8
	Size: 0x115
	Parameters: 1
	Flags: None
*/
function function_e172c2eb(var_58fe21e1)
{
	var_65184ffa = function_b8494651("axis");
	var_65184ffa = function_525ae497(var_65184ffa, function_b8494651("team3"), 0, 0);
	foreach(var_d84e54db in var_65184ffa)
	{
		if(function_5cfb84bb(var_d84e54db))
		{
			if(var_d84e54db function_5ae20c85(var_58fe21e1) + 4000 >= GetTime())
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_6afb24d5
	Namespace: namespace_88a69b2f
	Checksum: 0x58DB2E83
	Offset: 0xB18
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function function_6afb24d5(var_58fe21e1)
{
	return var_58fe21e1.var_3a90f16b < var_58fe21e1.var_47c252e3;
}

/*
	Name: function_79bc3ebf
	Namespace: namespace_88a69b2f
	Checksum: 0x35313C8A
	Offset: 0xB48
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_79bc3ebf()
{
	self endon("hash_50d14846");
	self endon("hash_643a7daf");
	while(1)
	{
		if(function_6afb24d5(self) || function_77f47965(self))
		{
			self namespace_71e9cb84::function_cc4d5165("hudItems.playerInCombat", 1);
		}
		else
		{
			self namespace_71e9cb84::function_cc4d5165("hudItems.playerInCombat", 0);
		}
		wait(0.5);
	}
}

/*
	Name: function_51f86b78
	Namespace: namespace_88a69b2f
	Checksum: 0x9D2CA19F
	Offset: 0xBE8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_51f86b78()
{
	level.var_d3d54a87 = &function_7ec49a;
	level.var_e1253a8 = &function_b62abd87;
	level.var_808c68ef = &function_6ede0f48;
	level.var_38a7c573 = &function_80ae63bb;
}

/*
	Name: function_ebdcf8b2
	Namespace: namespace_88a69b2f
	Checksum: 0xE5B262B4
	Offset: 0xC58
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function function_ebdcf8b2()
{
	if(isdefined(self.var_8eca9c9a))
	{
		for(var_1b6c203d = 0; var_1b6c203d < level.var_bc56ad43; var_1b6c203d++)
		{
			if(isdefined(self.var_8eca9c9a[var_1b6c203d]))
			{
				self.var_8eca9c9a[var_1b6c203d] namespace_724a4794::function_9c3abbf4();
				self.var_e317e1e4[var_1b6c203d] namespace_724a4794::function_9c3abbf4();
			}
		}
	}
	else if(isdefined(self.var_154c7505))
	{
		self.var_154c7505 namespace_724a4794::function_9c3abbf4();
	}
	if(isdefined(self.var_90ad337c))
	{
		if(isdefined(self.var_90ad337c[0]))
		{
			self.var_90ad337c[0] namespace_724a4794::function_9c3abbf4();
		}
		if(isdefined(self.var_90ad337c[1]))
		{
			self.var_90ad337c[1] namespace_724a4794::function_9c3abbf4();
		}
		if(isdefined(self.var_90ad337c[2]))
		{
			self.var_90ad337c[2] namespace_724a4794::function_9c3abbf4();
		}
		if(isdefined(self.var_90ad337c[3]))
		{
			self.var_90ad337c[3] namespace_724a4794::function_9c3abbf4();
		}
		if(isdefined(self.var_90ad337c[4]))
		{
			self.var_90ad337c[4] namespace_724a4794::function_9c3abbf4();
		}
	}
	if(isdefined(self.var_354a1679))
	{
		self.var_354a1679 namespace_724a4794::function_9c3abbf4();
	}
	if(isdefined(self.var_3594c84f))
	{
		self.var_3594c84f namespace_724a4794::function_9c3abbf4();
	}
	if(isdefined(self.var_37660f21))
	{
		self.var_37660f21 namespace_724a4794::function_9c3abbf4();
	}
	if(isdefined(self.var_bf383364))
	{
		self.var_bf383364 namespace_724a4794::function_9c3abbf4();
	}
	if(isdefined(self.var_4b1c056d))
	{
		self.var_4b1c056d namespace_724a4794::function_9c3abbf4();
	}
}

/*
	Name: function_57487b97
	Namespace: namespace_88a69b2f
	Checksum: 0x7FE78B3E
	Offset: 0xEE0
	Size: 0xC5
	Parameters: 1
	Flags: None
*/
function function_57487b97(var_1c5eebee)
{
	var_74952a22 = undefined;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(!isdefined(var_74952a22))
		{
			var_74952a22 = var_1c5eebee[var_3e94206a];
			continue;
		}
		if(var_74952a22 != var_1c5eebee[var_3e94206a])
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_f5aaca6c
	Namespace: namespace_88a69b2f
	Checksum: 0xD24F32C3
	Offset: 0xFB0
	Size: 0xD9
	Parameters: 2
	Flags: None
*/
function function_f5aaca6c(var_1c5eebee, var_fbb0df15)
{
	var_74952a22 = 9999;
	var_cdf80739 = undefined;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(var_74952a22 > var_1c5eebee[var_3e94206a])
		{
			var_74952a22 = var_1c5eebee[var_3e94206a];
			var_cdf80739 = var_3e94206a;
		}
	}
	return var_cdf80739;
}

/*
	Name: function_7ec49a
	Namespace: namespace_88a69b2f
	Checksum: 0xF699C3C7
	Offset: 0x1098
	Size: 0x36B
	Parameters: 1
	Flags: None
*/
function function_7ec49a(var_70f612b9)
{
	var_f8f52b16 = function_391512da(level.var_e7a38025);
	var_72f1fab2 = var_f8f52b16[function_26299103(var_f8f52b16.size)];
	self function_58a15001();
	var_72f1fab2 = "allies";
	if(level.var_de12b72f)
	{
		if(var_72f1fab2 == self.var_44fb8955["team"] && (self.var_e0beb6ee == "playing" || self.var_e0beb6ee == "dead"))
		{
			self function_1fb4fec9();
			return;
		}
	}
	else if(function_4bd0142f("party_autoteams") == 1)
	{
		if(level.var_e3c7e564 != "1" || (!self.var_b0c19313 && !var_70f612b9))
		{
			var_3e94206a = function_26278c20(self);
			if(isdefined(level.var_e7a38025[var_3e94206a]))
			{
				var_72f1fab2 = var_3e94206a;
			}
			else if(var_3e94206a == "spectator" && !level.var_3fe9ee34)
			{
				self function_d7812975(game["menu_start_menu"]);
				return;
			}
		}
	}
	if(var_72f1fab2 != self.var_44fb8955["team"] && (self.var_e0beb6ee == "playing" || self.var_e0beb6ee == "dead"))
	{
		self.var_320486a0 = 1;
		self.var_3224c440 = 1;
		self.var_4d315089 = var_72f1fab2;
		self.var_dc37327d = self.var_44fb8955["team"];
		self function_584b97b7();
	}
	self.var_44fb8955["team"] = var_72f1fab2;
	self.var_3e94206a = var_72f1fab2;
	self.var_44fb8955["class"] = undefined;
	self.var_808c68ef = undefined;
	self.var_44fb8955["weapon"] = undefined;
	self.var_44fb8955["savedmodel"] = undefined;
	self function_5c7708d6();
	self.var_b2e5a818 = var_72f1fab2;
	if(!function_5b49d38c(self))
	{
		self.var_8cf1797c = "hud_status_dead";
	}
	self notify("hash_48e2debe");
	level notify("hash_48e2debe");
	namespace_dabbe128::function_dabbe128("hash_95a6c4c0");
	self notify("hash_d9c9cb29");
	self function_1fb4fec9();
	self function_d7812975(game["menu_start_menu"]);
}

/*
	Name: function_28e38a05
	Namespace: namespace_88a69b2f
	Checksum: 0xCE8ABEE3
	Offset: 0x1410
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_28e38a05()
{
	var_f1242439 = undefined;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(!isdefined(var_f1242439))
		{
			var_f1242439 = function_a7dca17e(var_3e94206a);
			continue;
		}
		if(var_f1242439 != function_a7dca17e(var_3e94206a))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_7d0933b6
	Namespace: namespace_88a69b2f
	Checksum: 0x5A41CF0
	Offset: 0x14E8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_7d0933b6()
{
	var_f1242439 = 99999999;
	var_cdf80739 = undefined;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(var_f1242439 > function_a7dca17e(var_3e94206a))
		{
			var_cdf80739 = var_3e94206a;
		}
	}
	return var_cdf80739;
}

/*
	Name: function_c81d9a50
	Namespace: namespace_88a69b2f
	Checksum: 0x5808531B
	Offset: 0x15B8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_c81d9a50(var_e7a38025)
{
	var_72f1fab2 = "allies";
	if(function_28e38a05())
	{
		var_72f1fab2 = var_e7a38025[function_26299103(var_e7a38025.size)];
	}
	else
	{
		var_72f1fab2 = function_7d0933b6();
	}
	return var_72f1fab2;
}

/*
	Name: function_6a47a2ce
	Namespace: namespace_88a69b2f
	Checksum: 0x36A9D295
	Offset: 0x1638
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_6a47a2ce()
{
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		if(!isdefined(level.var_2395e945[var_5e76f0af]))
		{
			continue;
		}
		if(level.var_2395e945[var_5e76f0af] == self)
		{
			continue;
		}
		if(!self function_1155d72a(level.var_2395e945[var_5e76f0af]))
		{
			continue;
		}
		var_3e94206a = level.var_2395e945[var_5e76f0af].var_b2e5a818;
		if(var_3e94206a != "spectator")
		{
			return var_3e94206a;
		}
	}
	return "";
}

/*
	Name: function_5c7708d6
	Namespace: namespace_88a69b2f
	Checksum: 0x9C684EA2
	Offset: 0x1710
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_5c7708d6()
{
	if(function_75e46361() || self.var_44fb8955["team"] == "spectator")
	{
		self function_9102fec("");
		return;
	}
	if(level.var_e300e83a > 0)
	{
		self function_9102fec(namespace_82b91a51::function_523a314f(self.var_44fb8955["team"]));
	}
	else
	{
		self function_9102fec(namespace_82b91a51::function_d20e7521(self.var_44fb8955["team"]));
	}
}

/*
	Name: function_58a15001
	Namespace: namespace_88a69b2f
	Checksum: 0x2117FDCB
	Offset: 0x17F0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_58a15001()
{
	self function_eb306581();
}

/*
	Name: function_1fb4fec9
	Namespace: namespace_88a69b2f
	Checksum: 0x36E13DAD
	Offset: 0x1818
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_1fb4fec9()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_e7a38025[self.var_44fb8955["Dev Block strings are not supported"]]));
	#/
	var_3e94206a = self.var_44fb8955["team"];
	self function_49876a9e(game["menu_start_menu"]);
	if(!function_4bd0142f("art_review", 0))
	{
		self thread function_b381d26();
	}
	var_54fdb1d6 = function_4bd0142f("force_no_cac", 0);
	if(!function_4bd0142f("force_cac", 0) || var_54fdb1d6)
	{
		var_f6b7dfee = self namespace_9f824288::function_36adbb9c("playerClass", undefined);
		var_d47d35d1 = self namespace_9f824288::function_36adbb9c(namespace_9f824288::function_1bfdd60e() + "hero_weapon", undefined);
		if(isdefined(var_f6b7dfee) || var_54fdb1d6 || (isdefined(level.var_83a2ce8d) && level.var_83a2ce8d) || (isdefined(self.var_83a2ce8d) && self.var_83a2ce8d) || function_4bd0142f("migration_soak") == 1)
		{
			if(isdefined(var_f6b7dfee))
			{
			}
			else
			{
			}
			self.var_808c68ef = level.var_a139c050;
			self.var_44fb8955["class"] = self.var_808c68ef;
			wait(0.05);
			if(self.var_e0beb6ee != "playing" && game["state"] == "playing")
			{
				self thread [[level.var_f3db290b]]();
			}
			namespace_2282eece::function_cd14a993();
			self thread namespace_54e5555d::function_7275c170();
			return;
		}
	}
	self function_49876a9e(game["menu_changeclass"]);
	self function_4aa9caac(game["menu_changeclass_" + var_3e94206a]);
}

/*
	Name: function_b381d26
	Namespace: namespace_88a69b2f
	Checksum: 0x4D37E32B
	Offset: 0x1AD0
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function function_b381d26()
{
	self endon("hash_643a7daf");
	namespace_82b91a51::function_c72856fc(0);
	self function_49876a9e("InitialBlack");
	self function_4aa9caac("InitialBlack");
	var_e90e1424 = 0;
	if(level namespace_ad23e503::function_7922262b("all_players_spawned"))
	{
		var_e90e1424 = 1;
	}
	self.var_6c56bb = 1;
	self thread function_e185d3f4();
	self function_50ccee8d();
	wait(0.05);
	if(isdefined(level.var_d83bc14d) || isdefined(level.var_8f7c5cd0))
	{
		function_bf7a95e2();
		self thread function_52326035();
		if(isdefined(level.var_d83bc14d))
		{
			level namespace_ad23e503::function_1ab5ebec(level.var_d83bc14d);
		}
		if(isdefined(level.var_8f7c5cd0))
		{
			self namespace_ad23e503::function_1ab5ebec(level.var_8f7c5cd0);
		}
	}
	if(var_e90e1424 && (!isdefined(level.var_3da0c335) && level.var_3da0c335))
	{
		while(self.var_e0beb6ee !== "playing")
		{
			wait(0.05);
		}
		self thread function_52326035();
		while(self function_d555ecb8())
		{
			wait(0.05);
		}
		self namespace_ad23e503::function_1ab5ebec("loadout_given");
		waittillframeend;
		wait(2);
		self namespace_82b91a51::function_11a89b44(undefined, 5, 5);
		self thread namespace_ce7c3ed5::function_593c2af4(0.3, "black", "hot_join");
	}
	if(!namespace_957e94ce::function_7922262b("shared_igc"))
	{
		self function_48f26766();
	}
	self namespace_957e94ce::function_74d6b22f("kill_fullscreen_black");
	self namespace_71e9cb84::function_e9c3870b("sndLevelStartSnapOff", 1);
	self function_49876a9e("InitialBlack");
	self.var_6c56bb = undefined;
	namespace_82b91a51::function_c72856fc(1);
	/#
		function_d0eaf029("Dev Block strings are not supported" + GetTime() + "Dev Block strings are not supported" + self function_c7f3ce11(), (1, 1, 1));
		function_57805da3(function_fa0beb8());
	#/
}

/*
	Name: function_e185d3f4
	Namespace: namespace_88a69b2f
	Checksum: 0x18BEC12F
	Offset: 0x1E68
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_e185d3f4()
{
	self endon("hash_643a7daf");
	self endon("hash_73146bff");
	var_67fa9f87 = self.var_6c56bb;
	level waittill("hash_2693b45");
	if(isdefined(var_67fa9f87) && var_67fa9f87)
	{
		self function_49876a9e("InitialBlack");
		self function_4aa9caac("InitialBlack");
	}
}

/*
	Name: function_bf7a95e2
	Namespace: namespace_88a69b2f
	Checksum: 0x4705F18A
	Offset: 0x1F00
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_bf7a95e2()
{
	if(isdefined(level.var_8f7c5cd0) && !self namespace_ad23e503::function_dbca4c5d(level.var_8f7c5cd0))
	{
		self namespace_ad23e503::function_c35e6aab(level.var_8f7c5cd0);
	}
	if(isdefined(level.var_d83bc14d) && !level namespace_ad23e503::function_dbca4c5d(level.var_d83bc14d))
	{
		level namespace_ad23e503::function_c35e6aab(level.var_d83bc14d);
	}
}

/*
	Name: function_52326035
	Namespace: namespace_88a69b2f
	Checksum: 0x45100F1C
	Offset: 0x1FA0
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_52326035()
{
	self endon("hash_643a7daf");
	self.var_b41cccf7 = 1;
	self namespace_957e94ce::function_1ab5ebec("loadout_given");
	self function_1271a73e();
	self function_faf8f736(1);
	wait(0.1);
	waittillframeend;
	self function_faf8f736(1);
	self function_1271a73e();
	self namespace_957e94ce::function_1ab5ebec("kill_fullscreen_black");
	self function_901e0817();
	self function_faf8f736(0);
	self.var_b41cccf7 = undefined;
}

/*
	Name: function_845b492e
	Namespace: namespace_88a69b2f
	Checksum: 0x40F1396B
	Offset: 0x20A8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_845b492e()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_e7a38025[self.var_44fb8955["Dev Block strings are not supported"]]));
	#/
	var_3e94206a = self.var_44fb8955["team"];
	self function_4aa9caac(game["menu_changeclass_" + var_3e94206a]);
}

/*
	Name: function_80ae63bb
	Namespace: namespace_88a69b2f
	Checksum: 0x26219D3C
	Offset: 0x2128
	Size: 0x233
	Parameters: 1
	Flags: None
*/
function function_80ae63bb(var_3e94206a)
{
	self function_58a15001();
	if(!level.var_e89a8a5c && level.var_e3c7e564 == "0" && (isdefined(self.var_8061ea77) && self.var_8061ea77))
	{
		return;
	}
	if(self.var_44fb8955["team"] != var_3e94206a)
	{
		if(level.var_266be277 && (!isdefined(self.var_8061ea77) || !self.var_8061ea77))
		{
			self.var_b0c19313 = 0;
		}
		if(self.var_e0beb6ee == "playing")
		{
			self.var_320486a0 = 1;
			self.var_3224c440 = 1;
			self.var_4d315089 = var_3e94206a;
			self.var_dc37327d = self.var_44fb8955["team"];
			self function_584b97b7();
		}
		self.var_44fb8955["team"] = var_3e94206a;
		self.var_3e94206a = var_3e94206a;
		self.var_44fb8955["class"] = undefined;
		self.var_808c68ef = undefined;
		self.var_44fb8955["weapon"] = undefined;
		self.var_44fb8955["savedmodel"] = undefined;
		self function_5c7708d6();
		if(!level.var_5d406297 && !level.var_bb9b39ad)
		{
			self.var_e0beb6ee = "spectator";
		}
		self.var_b2e5a818 = var_3e94206a;
		self function_d7812975(game["menu_start_menu"]);
		self notify("hash_48e2debe");
		level notify("hash_48e2debe");
		namespace_dabbe128::function_dabbe128("hash_95a6c4c0");
		self notify("hash_d9c9cb29");
	}
	self function_1fb4fec9();
}

/*
	Name: function_b62abd87
	Namespace: namespace_88a69b2f
	Checksum: 0x804ED8A2
	Offset: 0x2368
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_b62abd87()
{
	self function_58a15001();
	if(self.var_44fb8955["team"] != "spectator")
	{
		if(function_5b49d38c(self))
		{
			self.var_320486a0 = 1;
			self.var_3224c440 = 1;
			self.var_4d315089 = "spectator";
			self.var_dc37327d = self.var_44fb8955["team"];
			self function_584b97b7();
		}
		self.var_44fb8955["team"] = "spectator";
		self.var_3e94206a = "spectator";
		self.var_44fb8955["class"] = undefined;
		self.var_808c68ef = undefined;
		self.var_44fb8955["weapon"] = undefined;
		self.var_44fb8955["savedmodel"] = undefined;
		self function_5c7708d6();
		self.var_b2e5a818 = "spectator";
		[[level.var_dedbb7c9]]();
		self thread namespace_b976075a::function_9933a9b1();
		self function_d7812975(game["menu_start_menu"]);
		self notify("hash_a948754f");
		namespace_dabbe128::function_dabbe128("hash_4c5ae192");
	}
}

/*
	Name: function_6ede0f48
	Namespace: namespace_88a69b2f
	Checksum: 0xA546881A
	Offset: 0x2518
	Size: 0x689
	Parameters: 1
	Flags: None
*/
function function_6ede0f48(var_d62110b4)
{
	self function_58a15001();
	if(!isdefined(self.var_44fb8955["team"]) || !isdefined(level.var_e7a38025[self.var_44fb8955["team"]]))
	{
		return;
	}
	if(namespace_957e94ce::function_7922262b("mobile_armory_in_use"))
	{
		return;
	}
	var_6b05d4a = "";
	if(var_d62110b4 == "cancel")
	{
		var_f6b7dfee = self namespace_9f824288::function_36adbb9c("playerClass", undefined);
		if(isdefined(var_f6b7dfee))
		{
			var_6b05d4a = var_f6b7dfee;
		}
		else
		{
			var_6b05d4a = level.var_a139c050;
		}
	}
	else
	{
		var_5dc22ce3 = function_d6df1f20(var_d62110b4, ",");
		if(var_5dc22ce3.size > 1)
		{
			var_bd5d3f48 = var_5dc22ce3[0];
			var_cf6fe380 = function_b6b79a0(var_5dc22ce3[1]);
			var_5a13c491 = namespace_82b91a51::function_292b6cbb(var_cf6fe380);
		}
		else
		{
			var_bd5d3f48 = var_d62110b4;
		}
		var_6b05d4a = self namespace_a249d1db::function_29da5080(var_bd5d3f48);
		if(isdefined(var_5a13c491))
		{
			var_eb07a0c7 = var_5a13c491 function_f49dd4fd();
			self namespace_9f824288::function_bee608f0("altPlayerID", var_eb07a0c7);
		}
		else
		{
			self namespace_9f824288::function_bee608f0("altPlayerID", undefined);
		}
		self namespace_9f824288::function_bee608f0("saved_weapon", undefined);
		self namespace_9f824288::function_bee608f0("saved_weapondata", undefined);
		self namespace_9f824288::function_bee608f0("lives", undefined);
		self namespace_9f824288::function_bee608f0("saved_rig1", undefined);
		self namespace_9f824288::function_bee608f0("saved_rig1_upgraded", undefined);
		self namespace_9f824288::function_bee608f0("saved_rig2", undefined);
		self namespace_9f824288::function_bee608f0("saved_rig2_upgraded", undefined);
	}
	if(isdefined(self.var_44fb8955["class"]) && self.var_44fb8955["class"] == var_6b05d4a)
	{
		return;
	}
	self.var_44fb8955["changed_class"] = 1;
	self notify("hash_9904e112");
	waittillframeend;
	if(isdefined(self.var_808c68ef) && self.var_808c68ef == var_6b05d4a)
	{
		self.var_44fb8955["changed_class"] = 0;
	}
	if(self.var_e0beb6ee == "playing")
	{
		self namespace_9f824288::function_bee608f0("playerClass", var_6b05d4a);
		self.var_44fb8955["class"] = var_6b05d4a;
		self.var_808c68ef = var_6b05d4a;
		self.var_44fb8955["weapon"] = undefined;
		if(game["state"] == "postgame")
		{
			return;
		}
		var_ea19fe38 = isdefined(self.var_516630c2) && self.var_516630c2;
		self.var_516630c2 = 0;
		if(level.var_266be277 && !self.var_8061ea77 || var_ea19fe38)
		{
			self namespace_a249d1db::function_93a49c9d(self.var_44fb8955["class"]);
			self.var_8129ead4 = undefined;
			self.var_6c3ed028 = undefined;
			self namespace_a249d1db::function_a61641c6(self.var_44fb8955["team"], self.var_44fb8955["class"]);
		}
		else if(!self function_33d0d4d7())
		{
			self function_2e4b8c78(game["strings"]["change_class"]);
		}
	}
	else
	{
		self namespace_9f824288::function_bee608f0("playerClass", var_6b05d4a);
		self.var_44fb8955["class"] = var_6b05d4a;
		self.var_808c68ef = var_6b05d4a;
		self.var_44fb8955["weapon"] = undefined;
		if(game["state"] == "postgame")
		{
			return;
		}
		if(self.var_e0beb6ee != "spectator")
		{
			if(self function_cb8df3d0())
			{
				return;
			}
			if(self function_445e3712())
			{
				return;
			}
			if(self function_818de253())
			{
				return 0;
			}
		}
		if(game["state"] == "playing")
		{
			var_aa61e82a = undefined;
			if(isdefined(self.var_fa504f21))
			{
				var_aa61e82a = GetTime() - self.var_fa504f21 / 1000;
			}
			self thread [[level.var_f3db290b]](var_aa61e82a);
			self.var_fa504f21 = undefined;
		}
	}
	namespace_2282eece::function_cd14a993();
	self thread namespace_54e5555d::function_7275c170();
	self notify("hash_92c7ed2a");
}

/*
	Name: function_89e70222
	Namespace: namespace_88a69b2f
	Checksum: 0xD160DE01
	Offset: 0x2BB0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_89e70222(var_67520c6a)
{
	self endon("hash_643a7daf");
	waittillframeend;
	self endon("hash_d9c9cb29");
	wait(var_67520c6a);
	self namespace_82b91a51::function_d848704c(2);
}

/*
	Name: function_c1f135ab
	Namespace: namespace_88a69b2f
	Checksum: 0x39576679
	Offset: 0x2C00
	Size: 0x107
	Parameters: 1
	Flags: None
*/
function function_c1f135ab(var_6f7b69cd)
{
	self endon("hash_128f8789");
	self endon("hash_94f19cd5");
	while(1)
	{
		self waittill("hash_902a6d9f", var_5d7e7ac2, var_279e4e97);
		if(var_5d7e7ac2 == var_6f7b69cd)
		{
			if(var_279e4e97 == "damage")
			{
				function_5b7e454a(&"weakpoint_update", 3, 2, self function_c7f3ce11(), var_6f7b69cd);
			}
			else if(var_279e4e97 == "repulse")
			{
				function_5b7e454a(&"weakpoint_update", 3, 3, self function_c7f3ce11(), var_6f7b69cd);
			}
			wait(0.5);
		}
	}
}

/*
	Name: function_d66e4079
	Namespace: namespace_88a69b2f
	Checksum: 0xC7A0998F
	Offset: 0x2D10
	Size: 0x49
	Parameters: 1
	Flags: None
*/
function function_d66e4079(var_6f7b69cd)
{
	function_5b7e454a(&"weakpoint_update", 3, 0, self function_c7f3ce11(), var_6f7b69cd);
	self notify("hash_94f19cd5");
}

/*
	Name: function_8ee5a301
	Namespace: namespace_88a69b2f
	Checksum: 0x148772B
	Offset: 0x2D68
	Size: 0xEB
	Parameters: 3
	Flags: None
*/
function function_8ee5a301(var_6f7b69cd, var_acf6b649, var_1e42c432)
{
	if(!isdefined(var_acf6b649))
	{
		var_acf6b649 = undefined;
	}
	if(!isdefined(var_1e42c432))
	{
		var_1e42c432 = undefined;
	}
	if(!isdefined(var_acf6b649))
	{
		var_acf6b649 = function_4bd0142f("ui_weakpointIndicatorNear", 1050);
	}
	if(!isdefined(var_1e42c432))
	{
		var_1e42c432 = function_4bd0142f("ui_weakpointIndicatorMedium", 1900);
	}
	function_5b7e454a(&"weakpoint_update", 5, 1, self function_c7f3ce11(), var_6f7b69cd, var_acf6b649, var_1e42c432);
	self thread function_c1f135ab(var_6f7b69cd);
}

/*
	Name: function_2d11c5e4
	Namespace: namespace_88a69b2f
	Checksum: 0xEC2A034D
	Offset: 0x2E60
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_2d11c5e4(var_6f7b69cd)
{
	self notify("hash_902a6d9f", var_6f7b69cd, "damage");
}

/*
	Name: function_8c6f9f69
	Namespace: namespace_88a69b2f
	Checksum: 0xA0E41BC5
	Offset: 0x2E90
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_8c6f9f69(var_6f7b69cd)
{
	self notify("hash_902a6d9f", var_6f7b69cd, "repulse");
}


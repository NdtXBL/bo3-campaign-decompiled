#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_a1cb6b52;

/*
	Name: function_2dc19561
	Namespace: namespace_a1cb6b52
	Checksum: 0x752DAFB8
	Offset: 0x6B8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("scoreevents", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_a1cb6b52
	Checksum: 0x64F7635D
	Offset: 0x6F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_d290ebfa);
}

/*
	Name: function_d290ebfa
	Namespace: namespace_a1cb6b52
	Checksum: 0x7E37DF8C
	Offset: 0x728
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level.var_17d2bc09 = [];
	level.var_b23efb09 = &function_f5c67b17;
	function_d48595d1("playerKilled", &function_24e4c464);
	function_d48595d1("actorKilled", &function_e1c28246);
}

/*
	Name: function_1a76033a
	Namespace: namespace_a1cb6b52
	Checksum: 0x406EA853
	Offset: 0x7A8
	Size: 0x51
	Parameters: 2
	Flags: None
*/
function function_1a76033a(var_5e76f0af, var_320d6fa1)
{
	return function_b6b79a0(function_d4cc1345(function_e711eb8a(), 0, var_5e76f0af, var_320d6fa1));
}

/*
	Name: function_a467985f
	Namespace: namespace_a1cb6b52
	Checksum: 0x45335BB8
	Offset: 0x808
	Size: 0x41
	Parameters: 2
	Flags: None
*/
function function_a467985f(var_5e76f0af, var_320d6fa1)
{
	return function_d4cc1345(function_e711eb8a(), 0, var_5e76f0af, var_320d6fa1);
}

/*
	Name: function_f8204815
	Namespace: namespace_a1cb6b52
	Checksum: 0xAE836BA6
	Offset: 0x858
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_f8204815(var_279e4e97)
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		function_ea11cfd6(var_279e4e97, var_6bfe1586);
	}
	if(isdefined(level.var_d9b0545b))
	{
		level thread [[level.var_d9b0545b]](var_279e4e97);
	}
}

/*
	Name: function_d48595d1
	Namespace: namespace_a1cb6b52
	Checksum: 0xDD83568
	Offset: 0x920
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_d48595d1(var_dabbe128, var_86365a77)
{
	if(!isdefined(level.var_17d2bc09[var_dabbe128]))
	{
		level.var_17d2bc09[var_dabbe128] = [];
	}
	level.var_17d2bc09[var_dabbe128][level.var_17d2bc09[var_dabbe128].size] = var_86365a77;
}

/*
	Name: function_e1c28246
	Namespace: namespace_a1cb6b52
	Checksum: 0x89F4E20E
	Offset: 0x988
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function function_e1c28246(var_72254e15, var_60db70fa)
{
	var_8bcb913d = var_72254e15.var_8bcb913d;
	var_a0ad4f34 = var_72254e15.var_a0ad4f34;
	var_60db70fa = var_72254e15.var_60db70fa;
	var_8bcb913d = var_72254e15.var_8bcb913d;
	var_597cacac = var_72254e15.var_ba36487d;
	var_dfcc01fd = level.var_6c3e6703;
	if(!level.var_76c6e677 === "raid")
	{
		return;
	}
	if(!isdefined(var_a0ad4f34))
	{
		return;
	}
	if(!function_65f192a6(var_a0ad4f34))
	{
		return;
	}
	if(isdefined(var_72254e15.var_dfcc01fd))
	{
		var_dfcc01fd = var_72254e15.var_dfcc01fd;
		var_da2cd0a3 = namespace_82b91a51::function_d7ddcf6d(var_72254e15.var_dfcc01fd);
	}
	var_a0ad4f34 thread function_3345a3e4(var_dfcc01fd, var_da2cd0a3);
}

/*
	Name: function_24e4c464
	Namespace: namespace_a1cb6b52
	Checksum: 0x9EFBBB5
	Offset: 0xAE0
	Size: 0x10D3
	Parameters: 2
	Flags: None
*/
function function_24e4c464(var_72254e15, var_60db70fa)
{
	var_8bcb913d = var_72254e15.var_8bcb913d;
	var_a0ad4f34 = var_72254e15.var_a0ad4f34;
	var_60db70fa = var_72254e15.var_60db70fa;
	level.var_b324de2++;
	var_8bcb913d = var_72254e15.var_8bcb913d;
	var_a0ad4f34.var_22645f65 = var_8bcb913d;
	var_e19536c3 = var_72254e15.var_e19536c3;
	var_929c1999 = var_72254e15.var_929c1999;
	var_70b90b86 = var_72254e15.var_8f9a61bf;
	var_597cacac = var_72254e15.var_ba36487d;
	var_dfcc01fd = level.var_6c3e6703;
	if(isdefined(var_72254e15.var_dfcc01fd))
	{
		var_dfcc01fd = var_72254e15.var_dfcc01fd;
		var_da2cd0a3 = namespace_82b91a51::function_d7ddcf6d(var_72254e15.var_dfcc01fd);
	}
	var_8bcb913d.var_b1a43dc8 = var_8bcb913d function_89c87c9c();
	if(var_597cacac == "MOD_GRENADE" || var_597cacac == "MOD_GRENADE_SPLASH" || var_597cacac == "MOD_EXPLOSIVE" || var_597cacac == "MOD_EXPLOSIVE_SPLASH" || var_597cacac == "MOD_PROJECTILE" || var_597cacac == "MOD_PROJECTILE_SPLASH")
	{
		if(var_dfcc01fd == level.var_6c3e6703 && isdefined(var_72254e15.var_8bcb913d.var_8a47b972["weapon"]))
		{
			var_dfcc01fd = var_72254e15.var_8bcb913d.var_8a47b972["weapon"];
		}
	}
	if(level.var_de12b72f)
	{
		var_a0ad4f34.var_61af974a = var_60db70fa;
		if(isdefined(var_8bcb913d.var_61af974a) && var_8bcb913d.var_61af974a > var_60db70fa - 3000)
		{
			if(isdefined(var_8bcb913d.var_22645f65) && var_8bcb913d.var_22645f65 namespace_82b91a51::function_b074c98c(var_a0ad4f34) == 0 && var_a0ad4f34 != var_8bcb913d.var_22645f65)
			{
				function_ea11cfd6("kill_enemy_who_killed_teammate", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
				var_8bcb913d function_2d465945("avenger");
			}
		}
		if(isdefined(var_8bcb913d.var_13fed2e4))
		{
			var_e22c8ccd = function_391512da(var_8bcb913d.var_13fed2e4);
			for(var_c957f6b6 = 0; var_c957f6b6 < var_e22c8ccd.size; var_c957f6b6++)
			{
				var_f54b9c82 = var_e22c8ccd[var_c957f6b6];
				if(var_f54b9c82 == var_a0ad4f34.var_9ee32e67)
				{
					continue;
				}
				if(!isdefined(var_8bcb913d.var_13fed2e4[var_f54b9c82].var_aa10fce8))
				{
					continue;
				}
				if(var_a0ad4f34 namespace_82b91a51::function_b074c98c(var_8bcb913d.var_13fed2e4[var_f54b9c82].var_aa10fce8))
				{
					continue;
				}
				if(var_60db70fa - var_8bcb913d.var_13fed2e4[var_f54b9c82].var_60db70fa < 1000)
				{
					function_ea11cfd6("kill_enemy_injuring_teammate", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
					if(isdefined(var_8bcb913d.var_13fed2e4[var_f54b9c82].var_aa10fce8))
					{
						var_8bcb913d.var_13fed2e4[var_f54b9c82].var_aa10fce8.var_ff0bd41 = var_a0ad4f34;
						var_8bcb913d.var_13fed2e4[var_f54b9c82].var_aa10fce8.var_81891059 = var_60db70fa;
					}
					var_8bcb913d function_2d465945("defender");
				}
			}
		}
	}
	switch(var_dfcc01fd.var_4be20d44)
	{
		case "hatchet":
		{
			var_a0ad4f34.var_44fb8955["tomahawks"]++;
			var_a0ad4f34.var_23de6272 = var_a0ad4f34.var_44fb8955["tomahawks"];
			function_ea11cfd6("hatchet_kill", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
			if(isdefined(var_72254e15.var_8bcb913d.var_8a47b972["projectile_bounced"]) && var_72254e15.var_8bcb913d.var_8a47b972["projectile_bounced"] == 1)
			{
				level.var_50931859++;
				function_ea11cfd6("bounce_hatchet_kill", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
			}
			break;
		}
		case "inventory_supplydrop":
		case "supplydrop":
		{
			if(var_597cacac == "MOD_HIT_BY_OBJECT" || var_597cacac == "MOD_CRUSH")
			{
				function_ea11cfd6("kill_enemy_with_care_package_crush", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
			}
			else
			{
				function_ea11cfd6("kill_enemy_with_hacked_care_package", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
			}
			break;
		}
	}
	if(isdefined(var_72254e15.var_baed683d))
	{
		if(var_72254e15.var_baed683d.var_4be20d44 == "minigun")
		{
			function_ea11cfd6("killed_death_machine_enemy", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
		}
		else if(var_72254e15.var_baed683d.var_4be20d44 == "m32")
		{
			function_ea11cfd6("killed_multiple_grenade_launcher_enemy", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
		}
	}
	var_a0ad4f34 thread function_3345a3e4(var_dfcc01fd, var_da2cd0a3);
	if(level.var_b324de2 == 1)
	{
		var_8bcb913d function_2d465945("firstblood");
		function_ea11cfd6("first_kill", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
	}
	else if(isdefined(var_a0ad4f34.var_fca544b5))
	{
		if(var_a0ad4f34.var_fca544b5 == var_8bcb913d)
		{
			level.var_3d9e455a++;
			function_ea11cfd6("revenge_kill", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
			var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "revenge_kill", 1);
			var_8bcb913d function_2d465945("revenge");
			var_a0ad4f34.var_fca544b5 = undefined;
		}
	}
	if(isdefined(var_8bcb913d.var_73012cb2) && var_8bcb913d.var_73012cb2 == 1)
	{
		function_ea11cfd6("final_kill_elimination", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
		if(isdefined(var_a0ad4f34.var_73012cb2) && var_a0ad4f34.var_73012cb2 == 1)
		{
			function_ea11cfd6("elimination_and_last_player_alive", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
		}
	}
	if(function_e5246e53(var_597cacac, var_dfcc01fd, var_da2cd0a3))
	{
		if(isdefined(var_8bcb913d.var_a2edc186))
		{
			var_ea783ed2 = var_8bcb913d.var_a2edc186;
		}
		else
		{
			var_ea783ed2 = var_a0ad4f34.var_722885f3;
		}
		var_1037638e = function_cb3d1c9b(var_8bcb913d.var_722885f3, var_ea783ed2);
		var_4106b374 = function_8b8e58de(var_dfcc01fd, var_da2cd0a3);
		if(var_1037638e > var_4106b374)
		{
			var_a0ad4f34 namespace_f74b04eb::function_cbfa9a8e();
			if(var_dfcc01fd.var_4be20d44 == "hatchet")
			{
				var_a0ad4f34 namespace_f74b04eb::function_2a3239b();
			}
			function_ea11cfd6("longshot_kill", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
			var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "longshot_kill", 1);
			var_a0ad4f34.var_44fb8955["longshots"]++;
			var_a0ad4f34.var_8ec8835a = var_a0ad4f34.var_44fb8955["longshots"];
			var_8bcb913d function_2d465945("longshot");
		}
	}
	if(function_5b49d38c(var_a0ad4f34))
	{
		if(var_a0ad4f34.var_3a90f16b < var_a0ad4f34.var_47c252e3 * 0.35)
		{
			var_a0ad4f34.var_1f225890 = var_60db70fa;
			function_ea11cfd6("kill_enemy_when_injured", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
			var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "kill_enemy_when_injured", 1);
			if(var_a0ad4f34 function_88542fcf("specialty_bulletflinch"))
			{
				var_a0ad4f34 function_aa67c13b("perk_bulletflinch_kills", 1);
			}
		}
	}
	else if(isdefined(var_a0ad4f34.var_9f66af5e) && var_a0ad4f34.var_9f66af5e + 800 < var_60db70fa && !var_a0ad4f34 function_cb8df3d0())
	{
		level.var_97f58ec7++;
		function_ea11cfd6("kill_enemy_after_death", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
		var_8bcb913d function_2d465945("posthumous");
	}
	if(var_a0ad4f34.var_974918af >= 3)
	{
		level.var_5f9ab94c++;
		function_ea11cfd6("comeback_from_deathstreak", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
		var_8bcb913d function_2d465945("comeback");
	}
	if(var_597cacac == "MOD_MELEE" || var_597cacac == "MOD_MELEE_ASSASSINATE" && !var_dfcc01fd.var_788e9bb0)
	{
		var_a0ad4f34.var_44fb8955["stabs"]++;
		var_a0ad4f34.var_a6bba610 = var_a0ad4f34.var_44fb8955["stabs"];
		var_41c86781 = var_8bcb913d.var_b1a43dc8[1];
		var_6c4b097b = var_a0ad4f34.var_3493843a[1];
		var_307cd23f = function_3dfa27b4(var_41c86781 - var_6c4b097b);
		if(var_307cd23f > -30 && var_307cd23f < 70)
		{
			level.var_3bb38240++;
			function_ea11cfd6("backstabber_kill", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
			var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "backstabber_kill", 1);
			var_a0ad4f34.var_44fb8955["backstabs"]++;
			var_a0ad4f34.var_32c33103 = var_a0ad4f34.var_44fb8955["backstabs"];
		}
	}
	else if(isdefined(var_8bcb913d.var_46fd7603) && var_8bcb913d.var_46fd7603 == var_60db70fa)
	{
		if(var_da2cd0a3 == "weapon_sniper")
		{
			var_a0ad4f34 thread function_4ad1234(var_8bcb913d, var_dfcc01fd, var_8bcb913d.var_46fd7603);
			var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "kill_enemy_one_bullet", 1);
		}
	}
	if(isdefined(var_a0ad4f34.var_135a6c70[var_dfcc01fd]) && isdefined(var_a0ad4f34.var_135a6c70[var_dfcc01fd].var_ef92af17))
	{
		var_f269ad42 = var_a0ad4f34.var_135a6c70[var_dfcc01fd];
		if(var_f269ad42.var_ef92af17 == var_8bcb913d)
		{
			function_ea11cfd6("kill_enemy_with_their_weapon", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
			var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "kill_enemy_with_their_weapon", 1);
			if(isdefined(var_f269ad42.var_dfcc01fd) && isdefined(var_f269ad42.var_ba36487d))
			{
				if(var_f269ad42.var_dfcc01fd == level.var_fd3908d3 && (var_f269ad42.var_ba36487d == "MOD_MELEE" || var_f269ad42.var_ba36487d == "MOD_MELEE_ASSASSINATE"))
				{
					var_a0ad4f34 function_1f4288c0(level.var_fd3908d3, "kill_enemy_with_their_weapon", 1);
				}
			}
		}
	}
	if(var_e19536c3)
	{
		function_ea11cfd6("killed_bomb_defuser", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
	}
	else if(var_929c1999)
	{
		function_ea11cfd6("killed_bomb_planter", var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
	}
	function_58bc5359(var_a0ad4f34, var_8bcb913d, var_dfcc01fd);
	var_a0ad4f34.var_974918af = 0;
	var_a0ad4f34 function_e9ba3885();
}

/*
	Name: function_58bc5359
	Namespace: namespace_a1cb6b52
	Checksum: 0x8C92906E
	Offset: 0x1BC0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_58bc5359(var_a0ad4f34, var_8bcb913d, var_dfcc01fd, var_463e2ebb)
{
}

/*
	Name: function_82eacc98
	Namespace: namespace_a1cb6b52
	Checksum: 0x4A78EB6E
	Offset: 0x1BF0
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_82eacc98(var_1901b952, var_dfcc01fd)
{
	/#
		namespace_33b293fd::function_a7ee953(var_1901b952 > 1);
	#/
	self namespace_f74b04eb::function_82eacc98(var_1901b952, var_dfcc01fd);
	if(var_1901b952 > 8)
	{
		function_ea11cfd6("multikill_more_than_8", self, undefined, var_dfcc01fd);
	}
	else
	{
		function_ea11cfd6("multikill_" + var_1901b952, self, undefined, var_dfcc01fd);
	}
	self function_3897bc6d(var_1901b952);
}

/*
	Name: function_e5246e53
	Namespace: namespace_a1cb6b52
	Checksum: 0x26E32E55
	Offset: 0x1CC8
	Size: 0xDD
	Parameters: 3
	Flags: None
*/
function function_e5246e53(var_597cacac, var_dfcc01fd, var_da2cd0a3)
{
	var_9bda01d0 = 0;
	if(function_8b8e58de(var_dfcc01fd, var_da2cd0a3) == 0)
	{
		var_9bda01d0 = 0;
	}
	else if(var_597cacac == "MOD_PISTOL_BULLET" || var_597cacac == "MOD_RIFLE_BULLET")
	{
		var_9bda01d0 = 1;
	}
	else if(var_597cacac == "MOD_HEAD_SHOT")
	{
		var_9bda01d0 = 1;
	}
	else if(var_dfcc01fd.var_4be20d44 == "hatchet" && var_597cacac == "MOD_IMPACT")
	{
		var_9bda01d0 = 1;
	}
	return var_9bda01d0;
}

/*
	Name: function_3345a3e4
	Namespace: namespace_a1cb6b52
	Checksum: 0x56C02A99
	Offset: 0x1DB0
	Size: 0x3C3
	Parameters: 3
	Flags: None
*/
function function_3345a3e4(var_dfcc01fd, var_da2cd0a3, var_463e2ebb)
{
	self endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	self notify("hash_b5ac11da");
	self endon("hash_b5ac11da");
	var_2fa067b6 = function_c4d5ec1f(function_17fdc725(function_54d2de57(var_dfcc01fd)));
	if(!isdefined(self.var_e1d6ea89))
	{
		self.var_e1d6ea89 = 0;
	}
	if(!isdefined(self.var_1b5e2919) || self.var_1b5e2919 != var_2fa067b6)
	{
		self.var_16eff98b = 0;
		self.var_1b5e2919 = var_2fa067b6;
	}
	if(!isdefined(var_463e2ebb))
	{
		self.var_16eff98b++;
		self.var_e1d6ea89++;
	}
	if(!isdefined(self.var_1a96273))
	{
		self.var_1a96273 = 0;
	}
	if(!isdefined(self.var_a2706073))
	{
		self.var_a2706073 = 0;
	}
	if(!isdefined(self.var_bec6a126))
	{
		self.var_bec6a126 = 0;
	}
	if(!isdefined(self.var_9f2f16dd))
	{
		self.var_9f2f16dd = 0;
	}
	if(isdefined(var_da2cd0a3))
	{
		if(var_da2cd0a3 == "weapon_lmg" || var_da2cd0a3 == "weapon_smg")
		{
			if(self function_7c08a28() < 1)
			{
				self.var_1a96273++;
			}
		}
	}
	if(isdefined(var_463e2ebb))
	{
		switch(var_463e2ebb)
		{
			case "remote_missile":
			{
				self.var_a2706073++;
				break;
			}
			case "rcbomb":
			{
				self.var_bec6a126++;
				break;
			}
			case "inventory_m32":
			case "m32":
			{
				self.var_9f2f16dd++;
				break;
			}
		}
	}
	if(self.var_16eff98b == 2)
	{
		self function_1f4288c0(var_dfcc01fd, "multikill_2", 1);
	}
	else if(self.var_16eff98b == 3)
	{
		self function_1f4288c0(var_dfcc01fd, "multikill_3", 1);
	}
	self function_aecb03bf(4);
	if(self.var_1a96273 >= 3)
	{
		self namespace_f74b04eb::function_9063887a();
	}
	if(self.var_bec6a126 >= 2)
	{
		self namespace_f74b04eb::function_2b4a7cc1();
	}
	if(self.var_9f2f16dd >= 3)
	{
		self namespace_f74b04eb::function_ee3684ec();
	}
	if(self.var_a2706073 >= 3)
	{
		self namespace_f74b04eb::function_9dc38b6();
	}
	if(self.var_e1d6ea89 > 1)
	{
		self function_82eacc98(self.var_e1d6ea89, var_dfcc01fd);
	}
	self.var_e1d6ea89 = 0;
	self.var_16eff98b = 0;
	self.var_1b5e2919 = undefined;
	self.var_1a96273 = 0;
	self.var_a2706073 = 0;
	self.var_bec6a126 = 0;
	self.var_9f2f16dd = 0;
}

/*
	Name: function_aecb03bf
	Namespace: namespace_a1cb6b52
	Checksum: 0xDBD0869E
	Offset: 0x2180
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function function_aecb03bf(var_4573206)
{
	self endon("hash_128f8789");
	wait(var_4573206);
}

/*
	Name: function_4ad1234
	Namespace: namespace_a1cb6b52
	Checksum: 0xEE81E220
	Offset: 0x21A8
	Size: 0xDF
	Parameters: 3
	Flags: None
*/
function function_4ad1234(var_8bcb913d, var_dfcc01fd, var_46fd7603)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self notify("updateoneshotmultikills" + var_46fd7603);
	self endon("updateoneshotmultikills" + var_46fd7603);
	if(!isdefined(self.var_8e97b405))
	{
		self.var_8e97b405 = 0;
	}
	self.var_8e97b405++;
	wait(1);
	if(self.var_8e97b405 > 1)
	{
		function_ea11cfd6("kill_enemies_one_bullet", self, var_8bcb913d, var_dfcc01fd);
	}
	else
	{
		function_ea11cfd6("kill_enemy_one_bullet", self, var_8bcb913d, var_dfcc01fd);
	}
	self.var_8e97b405 = 0;
}

/*
	Name: function_8b8e58de
	Namespace: namespace_a1cb6b52
	Checksum: 0x996C99CF
	Offset: 0x2290
	Size: 0x139
	Parameters: 2
	Flags: None
*/
function function_8b8e58de(var_dfcc01fd, var_da2cd0a3)
{
	var_7d15e2f8 = 0;
	switch(var_da2cd0a3)
	{
		case "weapon_smg":
		{
			var_7d15e2f8 = 1562500;
			break;
		}
		case "weapon_assault":
		{
			var_7d15e2f8 = 2250000;
			break;
		}
		case "weapon_lmg":
		{
			var_7d15e2f8 = 2250000;
			break;
		}
		case "weapon_sniper":
		{
			var_7d15e2f8 = 3062500;
			break;
		}
		case "weapon_pistol":
		{
			var_7d15e2f8 = 490000;
			break;
		}
		case "weapon_cqb":
		{
			var_7d15e2f8 = 422500;
			break;
		}
		case "weapon_special":
		{
			if(var_dfcc01fd == level.var_2febfe79)
			{
				var_7d15e2f8 = 2250000;
			}
			break;
		}
		case "weapon_grenade":
		{
			if(var_dfcc01fd.var_4be20d44 == "hatchet")
			{
				var_7d15e2f8 = 6250000;
			}
			break;
		}
		case default:
		{
			var_7d15e2f8 = 0;
			break;
		}
	}
	return var_7d15e2f8;
}

/*
	Name: function_f5c67b17
	Namespace: namespace_a1cb6b52
	Checksum: 0xCBD91BA5
	Offset: 0x23D8
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_f5c67b17(var_72254e15)
{
	var_5dc5e20a = var_72254e15.var_5dc5e20a;
	var_f49bab78 = var_72254e15.var_f49bab78;
	if(isdefined(var_f49bab78))
	{
		if(level.var_de12b72f)
		{
			if(var_f49bab78 != "tie" && var_5dc5e20a.var_3e94206a == var_f49bab78)
			{
				function_ea11cfd6("won_match", var_5dc5e20a);
				return;
			}
			break;
		}
		var_1d893cda = level.var_1d893cda["all"];
		var_e09fc4e4 = function_95d0212b(3, var_1d893cda.size);
		for(var_5e76f0af = 0; var_5e76f0af < var_e09fc4e4; var_5e76f0af++)
		{
			if(level.var_1d893cda["all"][var_5e76f0af] == var_5dc5e20a)
			{
				function_ea11cfd6("won_match", var_5dc5e20a);
				return;
			}
		}
	}
	function_ea11cfd6("completed_match", var_5dc5e20a);
}


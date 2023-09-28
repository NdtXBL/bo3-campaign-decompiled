#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\ai\systems\destructible_character;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_f25bd8c8;

/*
	Name: function_66df416f
	Namespace: namespace_f25bd8c8
	Checksum: 0xD48D13C3
	Offset: 0x528
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_66df416f()
{
	namespace_fe079222::register("MISSION_INFECTION_UNTOUCHED");
	namespace_fe079222::register("MISSION_INFECTION_SCORE");
	namespace_fe079222::register("MISSION_INFECTION_COLLECTIBLE");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE3", "ch03_quick_kills_complete");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE4", "ch04_theia_battle_no_damage_completed");
	namespace_fe079222::register("MISSION_INFECTION_HATTRICK", "ch05_helmet_shot");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE6", "ch06_mg42_kill");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE9", "ch09_wolf_midair_kills_granted");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE10", "ch10_wolf_melee_granted");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE11", "ch11_wolf_bite_granted");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE12", "ch12_tank_killer_granted");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE14", "ch14_cathedral_untouchable_grant");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE15", "ch15_zombies_untouchable_grant");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE16", "ch16_zombie_bonfire");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE17", "ch17_confirmed_hit");
	namespace_fe079222::register("MISSION_INFECTION_CHALLENGE18", "ch18_sarah_grenaded");
	callback::on_connect(&on_player_connect);
}

/*
	Name: on_player_connect
	Namespace: namespace_f25bd8c8
	Checksum: 0xA948F46D
	Offset: 0x740
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self function_804e65bb();
}

/*
	Name: function_5a97e5bd
	Namespace: namespace_f25bd8c8
	Checksum: 0x19DE1433
	Offset: 0x768
	Size: 0x3D
	Parameters: 3
	Flags: None
*/
function function_5a97e5bd(var_8e087689, e_player, var_70b01bd3)
{
	e_player notify(var_8e087689);
	if(isdefined(var_70b01bd3))
	{
		[[var_70b01bd3]]();
	}
}

/*
	Name: function_804e65bb
	Namespace: namespace_f25bd8c8
	Checksum: 0x65004659
	Offset: 0x7B0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_804e65bb()
{
	self.var_be5d3b1b = 0;
	self.var_9ac129fc = 0;
	callback::on_actor_killed(&function_ba00a6fc);
}

/*
	Name: function_346b87d1
	Namespace: namespace_f25bd8c8
	Checksum: 0x3DCA1D17
	Offset: 0x7F8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_346b87d1()
{
	n_count = 0;
	foreach(player in level.activePlayers)
	{
		if(player.var_be5d3b1b)
		{
			n_count++;
		}
	}
	if(n_count == level.activePlayers.size)
	{
		callback::remove_on_actor_killed(&function_ba00a6fc);
	}
}

/*
	Name: function_ba00a6fc
	Namespace: namespace_f25bd8c8
	Checksum: 0xB6DB6D9F
	Offset: 0x8D0
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_ba00a6fc(params)
{
	if(isPlayer(params.eAttacker))
	{
		var_e546abd0 = params.eAttacker;
		if(!var_e546abd0.var_be5d3b1b)
		{
			if(!isdefined(var_e546abd0.var_a952433c))
			{
				var_e546abd0.var_a952433c = [];
			}
			Array::push(var_e546abd0.var_a952433c, GetTime(), 0);
			if(var_e546abd0.var_a952433c.size > 5)
			{
				ArrayRemoveIndex(var_e546abd0.var_a952433c, 5, 0);
			}
			var_2e019997 = var_e546abd0.var_a952433c[0];
			var_c96d3593 = var_e546abd0.var_a952433c[4];
			if(isdefined(var_c96d3593))
			{
				n_time_delta = var_2e019997 - var_c96d3593;
				if(n_time_delta < 10000)
				{
					var_e546abd0.var_be5d3b1b = 1;
					function_5a97e5bd("ch03_quick_kills_complete", var_e546abd0, &function_346b87d1);
				}
			}
		}
	}
}

/*
	Name: function_ad15914d
	Namespace: namespace_f25bd8c8
	Checksum: 0x2EBFA442
	Offset: 0xA60
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_ad15914d()
{
	self.var_6385535e = 1;
	self thread function_9d23c86c();
	self thread function_6427aa57();
}

/*
	Name: function_6427aa57
	Namespace: namespace_f25bd8c8
	Checksum: 0xF28A2E0A
	Offset: 0xAA8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_6427aa57()
{
	self endon("death");
	level waittill("hash_1d7591db");
	if(self.var_6385535e)
	{
		function_5a97e5bd("ch04_theia_battle_no_damage_completed", self);
	}
}

/*
	Name: function_9d23c86c
	Namespace: namespace_f25bd8c8
	Checksum: 0x942C2785
	Offset: 0xAF8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_9d23c86c()
{
	level endon("hash_1d7591db");
	self endon("death");
	self waittill("damage", damage, attacker);
	if(isdefined(attacker))
	{
		self.var_6385535e = 0;
	}
}

/*
	Name: function_15b29a5a
	Namespace: namespace_f25bd8c8
	Checksum: 0x108098EB
	Offset: 0xB58
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_15b29a5a()
{
	callback::on_actor_killed(&function_918d0428);
}

/*
	Name: function_918d0428
	Namespace: namespace_f25bd8c8
	Checksum: 0xEEB0890
	Offset: 0xB88
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_918d0428(params)
{
	if(params.eAttacker.classname == "player")
	{
		if(DestructServerUtils::GetPieceCount(self) >= 1 && DestructServerUtils::IsDestructed(self, 1) && !function_3dc86a1(params))
		{
			params.eAttacker notify("hash_8cd8aeae");
		}
	}
}

/*
	Name: function_ecd2ed4
	Namespace: namespace_f25bd8c8
	Checksum: 0x9EA0AD5C
	Offset: 0xC28
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_ecd2ed4()
{
	callback::remove_on_actor_killed(&function_918d0428);
}

/*
	Name: function_c081e535
	Namespace: namespace_f25bd8c8
	Checksum: 0x877B765F
	Offset: 0xC58
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c081e535()
{
	callback::on_actor_killed(&function_e7e68fa2);
}

/*
	Name: function_e7e68fa2
	Namespace: namespace_f25bd8c8
	Checksum: 0xCE2F5B1A
	Offset: 0xC88
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_e7e68fa2(params)
{
	if(params.eAttacker.classname == "player" && params.eAttacker.team !== self.team)
	{
		if(params.weapon.name == "turret_bo3_germans")
		{
			params.eAttacker notify("hash_f8f73c2a");
		}
	}
}

/*
	Name: function_a0f567cb
	Namespace: namespace_f25bd8c8
	Checksum: 0x306FA157
	Offset: 0xD20
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a0f567cb()
{
	callback::remove_on_actor_killed(&function_e7e68fa2);
}

/*
	Name: function_341d8f7a
	Namespace: namespace_f25bd8c8
	Checksum: 0xC6C5DABB
	Offset: 0xD50
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_341d8f7a()
{
	callback::on_ai_killed(&function_423d8d8c);
	callback::on_ai_spawned(&function_21f98ad9);
}

/*
	Name: function_423d8d8c
	Namespace: namespace_f25bd8c8
	Checksum: 0x15027975
	Offset: 0xDA0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_423d8d8c(params)
{
	if(self.archetype == "direwolf")
	{
		if(isPlayer(params.eAttacker))
		{
			player = params.eAttacker;
			if(isdefined(self.var_e91cc22f) && self.var_e91cc22f)
			{
				player notify("hash_115383d3");
			}
		}
	}
}

/*
	Name: function_21f98ad9
	Namespace: namespace_f25bd8c8
	Checksum: 0xAE46FE89
	Offset: 0xE28
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_21f98ad9()
{
	if(self.archetype === "direwolf")
	{
		self thread function_a12f3181();
	}
}

/*
	Name: function_a12f3181
	Namespace: namespace_f25bd8c8
	Checksum: 0x7F7728B5
	Offset: 0xE60
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_a12f3181()
{
	self endon("death");
	level endon("hash_f07948a5");
	self.var_e91cc22f = 0;
	while(1)
	{
		self waittill("hash_e27de0db");
		self.var_e91cc22f = 1;
		self waittill("hash_8b0841b8");
		self.var_e91cc22f = 0;
	}
}

/*
	Name: function_a2179c84
	Namespace: namespace_f25bd8c8
	Checksum: 0xAC05E8D7
	Offset: 0xEC8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a2179c84()
{
	callback::remove_on_ai_killed(&function_423d8d8c);
	callback::remove_on_ai_spawned(&function_21f98ad9);
}

/*
	Name: function_8c0b0cd0
	Namespace: namespace_f25bd8c8
	Checksum: 0x9C6AD4C7
	Offset: 0xF18
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_8c0b0cd0()
{
	callback::on_ai_killed(&function_20c5379e);
	callback::on_spawned(&function_b59240f2);
	foreach(player in level.activePlayers)
	{
		player.var_63b33b24 = 0;
		player.var_a1930cfd = 1;
	}
}

/*
	Name: function_b59240f2
	Namespace: namespace_f25bd8c8
	Checksum: 0xFE80D334
	Offset: 0x1000
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_b59240f2()
{
	self.var_63b33b24 = 0;
	self.var_a1930cfd = 1;
}

/*
	Name: function_20c5379e
	Namespace: namespace_f25bd8c8
	Checksum: 0x96FAD03B
	Offset: 0x1028
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_20c5379e(params)
{
	if(self.archetype == "direwolf")
	{
		if(isPlayer(params.eAttacker))
		{
			params.eAttacker.var_63b33b24 = params.eAttacker.var_63b33b24 + 1;
			if(!function_3dc86a1(params))
			{
				params.eAttacker.var_a1930cfd = 0;
			}
		}
	}
}

/*
	Name: function_3dc86a1
	Namespace: namespace_f25bd8c8
	Checksum: 0xF39584D5
	Offset: 0x10D0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_3dc86a1(params)
{
	if(params.weapon.type == "melee")
	{
		return 1;
	}
	else if(params.sMeansOfDeath == "MOD_MELEE_WEAPON_BUTT")
	{
		return 1;
	}
	else if(params.weapon.name == "hero_gravity_spikes_cyebercom")
	{
		return 1;
	}
	else if(params.weapon.name == "hero_gravity_spikes_cyebercom_upgraded")
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_74b401d8
	Namespace: namespace_f25bd8c8
	Checksum: 0x16954417
	Offset: 0x1198
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function function_74b401d8()
{
	callback::remove_on_ai_killed(&function_20c5379e);
	callback::remove_on_spawned(&function_b59240f2);
	foreach(player in level.activePlayers)
	{
		if(player.var_a1930cfd && player.var_63b33b24 > 0)
		{
			player notify("hash_a4d9772b");
		}
	}
}

/*
	Name: function_aea367c1
	Namespace: namespace_f25bd8c8
	Checksum: 0x5B35D3CD
	Offset: 0x1288
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_aea367c1()
{
	callback::on_player_damage(&function_d9aaed7d);
	callback::on_spawned(&function_6bc56950);
	foreach(player in level.activePlayers)
	{
		player.var_1bece4df = 1;
	}
}

/*
	Name: function_6bc56950
	Namespace: namespace_f25bd8c8
	Checksum: 0xAA2B8351
	Offset: 0x1358
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_6bc56950()
{
	self.var_1bece4df = 1;
}

/*
	Name: function_d9aaed7d
	Namespace: namespace_f25bd8c8
	Checksum: 0x809535E2
	Offset: 0x1370
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d9aaed7d()
{
	self endon("death");
	self endon("hash_f07948a5");
	self endon("hash_c0e469ca");
	while(1)
	{
		self waittill("damage", damage, attacker, direction_vec, point, type, modelName, tagName, partName, weapon, iDFlags);
		if(attacker.archetype === "direwolf")
		{
			if(isPlayer(self))
			{
				self.var_1bece4df = 0;
			}
		}
	}
}

/*
	Name: function_b3cf52bf
	Namespace: namespace_f25bd8c8
	Checksum: 0x58EE0731
	Offset: 0x1470
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function function_b3cf52bf()
{
	callback::remove_on_player_damage(&function_d9aaed7d);
	callback::remove_on_spawned(&function_6bc56950);
	foreach(player in level.activePlayers)
	{
		if(player.var_1bece4df && player.var_63b33b24 > 0)
		{
			player notify("hash_c0e469ca");
		}
	}
}

/*
	Name: function_7356f9fd
	Namespace: namespace_f25bd8c8
	Checksum: 0x20D9252
	Offset: 0x1560
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_7356f9fd()
{
	self endon("death");
	self.var_b42f169e = 0;
	self thread function_2c3b4c78();
	self waittill("weapon_fired");
	self.var_b42f169e = 1;
}

/*
	Name: function_2c3b4c78
	Namespace: namespace_f25bd8c8
	Checksum: 0x6A9CA7AD
	Offset: 0x15B0
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_2c3b4c78()
{
	self waittill("death");
	if(isdefined(self))
	{
		if(self.var_b42f169e == 0)
		{
			foreach(player in level.activePlayers)
			{
				player notify("hash_6182e6ea");
			}
		}
	}
}

/*
	Name: function_211b07c5
	Namespace: namespace_f25bd8c8
	Checksum: 0x7309043C
	Offset: 0x1660
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_211b07c5()
{
	callback::on_player_damage(&function_9f9141fd);
	foreach(player in level.activePlayers)
	{
		player.var_a400c99f = 1;
	}
}

/*
	Name: function_9f9141fd
	Namespace: namespace_f25bd8c8
	Checksum: 0x6B91EBCB
	Offset: 0x1710
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_9f9141fd()
{
	self endon("death");
	self waittill("damage");
	self.var_a400c99f = 0;
}

/*
	Name: function_2c8ffdaf
	Namespace: namespace_f25bd8c8
	Checksum: 0x4EE85AE7
	Offset: 0x1740
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_2c8ffdaf()
{
	callback::remove_on_player_damage(&function_9f9141fd);
	foreach(player in level.activePlayers)
	{
		if(player.var_a400c99f)
		{
			player notify("hash_de1125ba");
		}
	}
}

/*
	Name: function_6c777c8d
	Namespace: namespace_f25bd8c8
	Checksum: 0x6EECBFD5
	Offset: 0x1800
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_6c777c8d()
{
	foreach(player in level.players)
	{
		player thread function_335ecd05();
	}
}

/*
	Name: function_335ecd05
	Namespace: namespace_f25bd8c8
	Checksum: 0xEF9454BB
	Offset: 0x1898
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_335ecd05()
{
	self endon("death");
	self endon("hash_f0f63627");
	self endon("hash_8a7a61e0");
	self waittill("damage");
	self.var_5f815670 = 1;
}

/*
	Name: function_e9c21474
	Namespace: namespace_f25bd8c8
	Checksum: 0x40B00D0D
	Offset: 0x18E0
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_e9c21474()
{
	foreach(player in level.activePlayers)
	{
		player notify("hash_8a7a61e0");
		if(player.var_5f815670 !== 1)
		{
			player notify("hash_c708c742");
		}
	}
}

/*
	Name: function_a0fb8ca9
	Namespace: namespace_f25bd8c8
	Checksum: 0x4F5370C6
	Offset: 0x1998
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_a0fb8ca9()
{
	callback::on_ai_killed(&function_98c5c5a1);
	callback::on_spawned(&function_7eac16b1);
	foreach(player in level.activePlayers)
	{
		player.var_abed6924 = 0;
	}
}

/*
	Name: function_7eac16b1
	Namespace: namespace_f25bd8c8
	Checksum: 0xBD8D1407
	Offset: 0x1A68
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_7eac16b1()
{
	self.var_abed6924 = 0;
}

/*
	Name: function_98c5c5a1
	Namespace: namespace_f25bd8c8
	Checksum: 0x4362D2C4
	Offset: 0x1A80
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_98c5c5a1(params)
{
	if(self.archetype === "zombie" && isPlayer(params.eAttacker) && self.on_fire === 1)
	{
		params.eAttacker.var_abed6924 = params.eAttacker.var_abed6924 + 1;
	}
}

/*
	Name: function_bbb224b7
	Namespace: namespace_f25bd8c8
	Checksum: 0x7FFBB52A
	Offset: 0x1B10
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_bbb224b7()
{
	callback::remove_on_ai_killed(&function_98c5c5a1);
	callback::remove_on_spawned(&function_7eac16b1);
	foreach(player in level.activePlayers)
	{
		if(player.var_abed6924 >= 4)
		{
			player notify("hash_a5e46a2e");
		}
	}
}

/*
	Name: function_70cafec1
	Namespace: namespace_f25bd8c8
	Checksum: 0x9D8A5408
	Offset: 0x1BF8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_70cafec1()
{
	foreach(player in level.activePlayers)
	{
		player function_f6215929();
	}
	callback::on_spawned(&function_f6215929);
	callback::on_ai_killed(&function_7dfda27d);
}

/*
	Name: function_f6215929
	Namespace: namespace_f25bd8c8
	Checksum: 0xA7593E76
	Offset: 0x1CD0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_f6215929()
{
	self.var_5bfcdcf4 = 0;
}

/*
	Name: function_7dfda27d
	Namespace: namespace_f25bd8c8
	Checksum: 0xCADD48BA
	Offset: 0x1CE8
	Size: 0xF7
	Parameters: 1
	Flags: None
*/
function function_7dfda27d(params)
{
	if(params.eAttacker.classname == "player")
	{
		if(params.sHitLoc == "head" || params.sHitLoc == "helmet" || params.sHitLoc == "neck")
		{
			params.eAttacker.var_5bfcdcf4++;
			if(params.eAttacker.var_5bfcdcf4 >= 10)
			{
				params.eAttacker notify("hash_f9d95f8c");
			}
		}
		else
		{
			params.eAttacker.var_5bfcdcf4 = 0;
		}
	}
}

/*
	Name: function_cce60169
	Namespace: namespace_f25bd8c8
	Checksum: 0x63920D20
	Offset: 0x1DE8
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_cce60169()
{
	foreach(player in level.activePlayers)
	{
		player notify("hash_98743ed4");
	}
}


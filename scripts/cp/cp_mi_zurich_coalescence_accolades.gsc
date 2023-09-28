#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_e9d9fb34;

/*
	Name: accolades_init
	Namespace: namespace_e9d9fb34
	Checksum: 0x646E98C
	Offset: 0x580
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function accolades_init()
{
	namespace_fe079222::register("MISSION_ZURICH_UNTOUCHED");
	namespace_fe079222::register("MISSION_ZURICH_SCORE");
	namespace_fe079222::register("MISSION_ZURICH_COLLECTIBLE");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE3", "got_m_all");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE4", "hand_cannon");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE5", "why_u_cry");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE6", "robo_slapper");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE7", "exp_entertainment");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE8", "raps_fan");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE9", "2_kills_1_shot");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE10", "quick_slap");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE11", "container_destroyed");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE12", "perfect_timing");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE13", "dodge_this");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE14", "bots_go_boom");
	namespace_fe079222::register("MISSION_ZURICH_CHALLENGE15", "clip_their_wings");
	callback::on_spawned(&function_b75a0f7);
	function_53d8882b();
	function_11f62094();
	function_d116d4ed();
	function_8c0cbe3e();
	function_e06c631f();
	function_5384b888();
	function_996c3f92();
	function_131f8d11();
	function_8dec7f28();
	function_605fefbf();
	function_6e040346();
	function_4b53d895();
}

/*
	Name: function_c27610f9
	Namespace: namespace_e9d9fb34
	Checksum: 0x2FB12F0D
	Offset: 0x858
	Size: 0xA5
	Parameters: 2
	Flags: None
*/
function function_c27610f9(var_8e087689, var_70b01bd3)
{
	foreach(player in level.activePlayers)
	{
		player notify(var_8e087689);
	}
	if(isdefined(var_70b01bd3))
	{
		[[var_70b01bd3]]();
	}
}

/*
	Name: function_b75a0f7
	Namespace: namespace_e9d9fb34
	Checksum: 0x52560EDF
	Offset: 0x908
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_b75a0f7()
{
	self.var_e2f09ac4 = 0;
	self.var_11b787d4 = util::new_timer(10);
	self.var_4d964e27 = undefined;
	self.var_5d4efbf2 = 0;
	self.var_dd160974 = undefined;
	self.var_f4415abf = 0;
	self.var_3e18c869 = util::new_timer(10);
	self.var_6d525c8b = 0;
	self.var_bbb7a4e5 = util::new_timer(5);
	self thread function_17c6bcd0();
	self function_ec61897e();
}

/*
	Name: function_3dc86a1
	Namespace: namespace_e9d9fb34
	Checksum: 0xD6E141B9
	Offset: 0x9E0
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
	Name: function_dd0b5d28
	Namespace: namespace_e9d9fb34
	Checksum: 0xBB8E808D
	Offset: 0xAA8
	Size: 0x105
	Parameters: 1
	Flags: None
*/
function function_dd0b5d28(params)
{
	if(params.weapon.type == "projectile")
	{
		return 1;
	}
	else if(params.sMeansOfDeath == "MOD_EXPLOSIVE" || params.sMeansOfDeath === "MOD_EXPLOSIVE_SPLASH" || params.sMeansOfDeath == "MOD_GRENADE" || params.sMeansOfDeath === "MOD_GRENADE_SPLASH")
	{
		return 1;
	}
	else if(params.weapon.name == "spike_charge" || params.weapon.name == "spike_launcher")
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_62b0213a
	Namespace: namespace_e9d9fb34
	Checksum: 0xD0A1CE3E
	Offset: 0xBB8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_62b0213a()
{
	trigger::wait_till("stop_depth_charges");
	if(!(isdefined(level.var_e83d53e9) && level.var_e83d53e9))
	{
		function_c27610f9("got_m_all");
	}
}

/*
	Name: function_53d8882b
	Namespace: namespace_e9d9fb34
	Checksum: 0xD5A536
	Offset: 0xC10
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_53d8882b()
{
	spawner::add_archetype_spawn_function("siegebot", &function_d7b4afc8);
}

/*
	Name: function_d7b4afc8
	Namespace: namespace_e9d9fb34
	Checksum: 0x96EFDCA8
	Offset: 0xC48
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d7b4afc8()
{
	self endon("death");
	callback::on_vehicle_damage(&function_ce871b4e);
	self thread function_793c2b3f();
}

/*
	Name: function_ce871b4e
	Namespace: namespace_e9d9fb34
	Checksum: 0x896C668E
	Offset: 0xC98
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function function_ce871b4e(params)
{
	if(isPlayer(params.eAttacker) && params.weapon.weapClass != "pistol")
	{
		self notify("hash_cf910502");
	}
}

/*
	Name: function_793c2b3f
	Namespace: namespace_e9d9fb34
	Checksum: 0xBB76D92B
	Offset: 0xD00
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_793c2b3f()
{
	self endon("hash_cf910502");
	self waittill("death", eAttacker, damageFromUnderneath, weapon, point, dir);
	if(isPlayer(eAttacker) && (isdefined(weapon) && weapon.weapClass === "pistol"))
	{
		function_c27610f9("hand_cannon");
	}
}

/*
	Name: function_11f62094
	Namespace: namespace_e9d9fb34
	Checksum: 0xEB612D4
	Offset: 0xDB8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_11f62094()
{
	callback::on_actor_killed(&function_90ece8b9);
}

/*
	Name: function_ee6a5a6a
	Namespace: namespace_e9d9fb34
	Checksum: 0xFE911FC8
	Offset: 0xDE8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_ee6a5a6a()
{
	callback::remove_on_actor_killed(&function_90ece8b9);
}

/*
	Name: function_90ece8b9
	Namespace: namespace_e9d9fb34
	Checksum: 0x8C5029DC
	Offset: 0xE18
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_90ece8b9(params)
{
	if(!self.archetype === "robot" || !isPlayer(params.eAttacker))
	{
		return;
	}
	if(params.weapon.weapClass === "turret")
	{
		level namespace_fe079222::increment("MISSION_ZURICH_CHALLENGE5");
	}
}

/*
	Name: function_d116d4ed
	Namespace: namespace_e9d9fb34
	Checksum: 0xFC782734
	Offset: 0xEB0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d116d4ed()
{
	callback::on_actor_killed(&function_b6ef6322);
	level thread function_cdb4b3f7();
}

/*
	Name: function_cdb4b3f7
	Namespace: namespace_e9d9fb34
	Checksum: 0xA6D2409B
	Offset: 0xEF8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_cdb4b3f7()
{
	level waittill("hash_52e251bc");
	callback::remove_on_actor_killed(&function_b6ef6322);
}

/*
	Name: function_b6ef6322
	Namespace: namespace_e9d9fb34
	Checksum: 0xBBC50E4C
	Offset: 0xF38
	Size: 0x1B3
	Parameters: 1
	Flags: None
*/
function function_b6ef6322(params)
{
	if(isPlayer(params.eAttacker))
	{
		if(self.archetype === "robot" && (isdefined(function_3dc86a1(params)) && function_3dc86a1(params)))
		{
			if(params.eAttacker.var_e2f09ac4 === 0)
			{
				params.eAttacker.var_11b787d4 = util::new_timer(10);
				params.eAttacker.var_e2f09ac4++;
			}
			else
			{
				params.eAttacker.var_e2f09ac4++;
				if(params.eAttacker.var_e2f09ac4 >= 5 && params.eAttacker.var_11b787d4 util::get_time_left() > 0)
				{
					params.eAttacker notify("hash_4ca3efeb");
				}
				else if(params.eAttacker.var_11b787d4 util::get_time_left() <= 0)
				{
					params.eAttacker.var_e2f09ac4 = 0;
				}
			}
		}
	}
}

/*
	Name: function_17c6bcd0
	Namespace: namespace_e9d9fb34
	Checksum: 0x8E2D90E3
	Offset: 0x10F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_17c6bcd0()
{
	self.var_1191fe8d = 0;
	self.var_87550951 = undefined;
	self.var_56a9030 = 0;
}

/*
	Name: function_8c0cbe3e
	Namespace: namespace_e9d9fb34
	Checksum: 0x186E8310
	Offset: 0x1128
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c0cbe3e()
{
	callback::on_actor_killed(&function_dcf1dd8b);
}

/*
	Name: function_dcf1dd8b
	Namespace: namespace_e9d9fb34
	Checksum: 0x40DD327C
	Offset: 0x1158
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_dcf1dd8b(params)
{
	if(self.team === "allies")
	{
		return;
	}
	if(isPlayer(params.eAttacker) && params.eAttacker.var_56a9030 === 0)
	{
		if(isdefined(params.weapon))
		{
			if(isdefined(function_dd0b5d28(params)) && function_dd0b5d28(params))
			{
				if(params.eInflictor !== params.eAttacker.var_87550951)
				{
					params.eAttacker.var_1191fe8d = 0;
					params.eAttacker.var_87550951 = params.eInflictor;
				}
				params.eAttacker.var_1191fe8d++;
				if(params.eAttacker.var_1191fe8d >= 3)
				{
					params.eAttacker notify("hash_fd0e8159");
					params.eAttacker.var_56a9030 = 1;
				}
			}
		}
	}
}

/*
	Name: function_e06c631f
	Namespace: namespace_e9d9fb34
	Checksum: 0x54F49006
	Offset: 0x12E0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e06c631f()
{
	spawner::add_archetype_spawn_function("raps", &function_2c0e41ab);
	level.n_raps_alive = 0;
	level thread function_748a64c5();
}

/*
	Name: function_748a64c5
	Namespace: namespace_e9d9fb34
	Checksum: 0xB726D164
	Offset: 0x1338
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_748a64c5()
{
	level util::waittill_any("accolade_8_raps_check", "friendly_raps_damaged");
	if(!(isdefined(level.var_aead8b98) && level.var_aead8b98))
	{
		function_c27610f9("raps_fan");
	}
}

/*
	Name: function_2c0e41ab
	Namespace: namespace_e9d9fb34
	Checksum: 0x10CFE4A7
	Offset: 0x13A0
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_2c0e41ab()
{
	if(isdefined(level.var_aead8b98) && level.var_aead8b98)
	{
		return;
	}
	self thread function_b6f90f();
	level.n_raps_alive++;
	if(!(isdefined(level.var_ebd2f83b) && level.var_ebd2f83b))
	{
		level thread function_6b2c4236();
		level.var_ebd2f83b = 1;
	}
}

/*
	Name: function_b6f90f
	Namespace: namespace_e9d9fb34
	Checksum: 0xFA8936EC
	Offset: 0x1418
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_b6f90f()
{
	self waittill("death", eAttacker, damageFromUnderneath, weapon, point, dir);
	level.n_raps_alive--;
	if(level.n_raps_alive <= 0)
	{
		level.var_ebd2f83b = undefined;
	}
}

/*
	Name: function_6b2c4236
	Namespace: namespace_e9d9fb34
	Checksum: 0xF82C28
	Offset: 0x1490
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_6b2c4236()
{
	var_b97ed523 = GetAITeamArray("allies");
	Array::thread_all(var_b97ed523, &function_99009628);
}

/*
	Name: function_99009628
	Namespace: namespace_e9d9fb34
	Checksum: 0x1448C4F3
	Offset: 0x14E8
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_99009628()
{
	self endon("death");
	self waittill("damage", n_damage, eAttacker, v_direction, v_point, var_4ae4f03b);
	if(eAttacker.archetype === "raps")
	{
		level.var_aead8b98 = 1;
		level notify("hash_1e4d3423");
	}
}

/*
	Name: function_5384b888
	Namespace: namespace_e9d9fb34
	Checksum: 0x5ECA35E8
	Offset: 0x1580
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_5384b888()
{
	callback::on_ai_killed(&function_590aa5a5);
}

/*
	Name: function_956d1e2e
	Namespace: namespace_e9d9fb34
	Checksum: 0x61870E41
	Offset: 0x15B0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_956d1e2e()
{
	callback::on_ai_killed(&function_590aa5a5);
}

/*
	Name: function_ec61897e
	Namespace: namespace_e9d9fb34
	Checksum: 0x80453875
	Offset: 0x15E0
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_ec61897e()
{
	self.var_c8397fe4 = undefined;
}

/*
	Name: function_590aa5a5
	Namespace: namespace_e9d9fb34
	Checksum: 0x11C023CA
	Offset: 0x15F8
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_590aa5a5(params)
{
	if(self.team === "allies")
	{
		return;
	}
	if(isPlayer(params.eAttacker) && params.eAttacker.var_5d4efbf2 === 0)
	{
		if(isdefined(params.weapon) && !IsSubStr(params.weapon.name, "turret") && (params.sMeansOfDeath == "MOD_PISTOL_BULLET" || params.sMeansOfDeath == "MOD_RIFLE_BULLET"))
		{
			if(isdefined(params.eAttacker.var_c8397fe4))
			{
				if(params.eAttacker.var_c8397fe4 == params.eAttacker._bbData["shots"])
				{
					params.eAttacker notify("hash_7a018db6");
					params.eAttacker.var_5d4efbf2 = 1;
				}
			}
			params.eAttacker.var_c8397fe4 = params.eAttacker._bbData["shots"];
		}
	}
}

/*
	Name: function_996c3f92
	Namespace: namespace_e9d9fb34
	Checksum: 0x4B22213C
	Offset: 0x17A0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_996c3f92()
{
	callback::on_actor_killed(&function_fa041c17);
	level thread function_1b5b3a2c();
}

/*
	Name: function_1b5b3a2c
	Namespace: namespace_e9d9fb34
	Checksum: 0x747919BC
	Offset: 0x17E8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_1b5b3a2c()
{
	level waittill("hash_73b00182");
	callback::remove_on_actor_killed(&function_fa041c17);
}

/*
	Name: function_fa041c17
	Namespace: namespace_e9d9fb34
	Checksum: 0x9FA0960F
	Offset: 0x1828
	Size: 0x213
	Parameters: 1
	Flags: None
*/
function function_fa041c17(params)
{
	if(self.team === "allies")
	{
		return;
	}
	if(isPlayer(params.eAttacker))
	{
		if(isdefined(self.archetype) && (self.archetype == "human" || self.archetype == "human_riotshield" || self.archetype == "human_rpg" || self.archetype == "civilian") && (isdefined(function_3dc86a1(params)) && function_3dc86a1(params)))
		{
			if(params.eAttacker.var_f4415abf === 0)
			{
				params.eAttacker.var_3e18c869 = util::new_timer(10);
				params.eAttacker.var_f4415abf++;
			}
			else
			{
				params.eAttacker.var_f4415abf++;
				if(params.eAttacker.var_f4415abf >= 5 && params.eAttacker.var_3e18c869 util::get_time_left() > 0)
				{
					params.eAttacker notify("hash_dc8b2e3b");
				}
				else if(params.eAttacker.var_3e18c869 util::get_time_left() <= 0)
				{
					params.eAttacker.var_f4415abf = 0;
				}
			}
		}
	}
}

/*
	Name: function_131f8d11
	Namespace: namespace_e9d9fb34
	Checksum: 0x8A3542E
	Offset: 0x1A48
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_131f8d11()
{
	var_1a69ce4d = GetEntArray("destructible", "targetname");
	foreach(var_6ee6e2fe in var_1a69ce4d)
	{
		if(IsSubStr(var_6ee6e2fe.destructibledef, "p7_dest_explosive_"))
		{
			var_6ee6e2fe thread function_2d6d9849();
		}
	}
}

/*
	Name: function_2d6d9849
	Namespace: namespace_e9d9fb34
	Checksum: 0x49794DFB
	Offset: 0x1B30
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_2d6d9849()
{
	level endon("hash_65fc298e");
	self waittill("damage", n_damage, eAttacker, v_direction, v_point, var_4ae4f03b);
	level namespace_fe079222::increment("MISSION_ZURICH_CHALLENGE11");
}

/*
	Name: function_8dec7f28
	Namespace: namespace_e9d9fb34
	Checksum: 0xDA339551
	Offset: 0x1BB0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8dec7f28()
{
	callback::on_actor_killed(&function_adff2745);
}

/*
	Name: function_adff2745
	Namespace: namespace_e9d9fb34
	Checksum: 0x4107F0AB
	Offset: 0x1BE0
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_adff2745(params)
{
	if(!isdefined(self.archetype) && (self.archetype == "human" || self.archetype == "human_riotshield" || self.archetype == "human_rpg" || self.archetype == "civilian") || !isPlayer(params.eAttacker) || self.team == "allies")
	{
		return;
	}
	if(params.weapon.type === "grenade" || (params.weapon.type === "projectile" && params.weapon.weapClass === "grenade"))
	{
		params.eAttacker namespace_fe079222::increment("MISSION_ZURICH_CHALLENGE12");
	}
}

/*
	Name: function_605fefbf
	Namespace: namespace_e9d9fb34
	Checksum: 0x95245015
	Offset: 0x1D20
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_605fefbf()
{
	spawner::add_archetype_spawn_function("siegebot", &function_13829246);
}

/*
	Name: function_13829246
	Namespace: namespace_e9d9fb34
	Checksum: 0x498F7420
	Offset: 0x1D58
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_13829246(params)
{
	foreach(player in level.activePlayers)
	{
		player thread function_baf56cfa(self);
		player thread function_b1f08628(self);
	}
}

/*
	Name: function_baf56cfa
	Namespace: namespace_e9d9fb34
	Checksum: 0x930EFD76
	Offset: 0x1E10
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_baf56cfa(var_f37c20b3)
{
	var_f37c20b3 endon("death");
	self endon("hash_35d17c89");
	while(1)
	{
		self waittill("damage", damage, eAttacker);
		if(eAttacker === var_f37c20b3)
		{
			var_f37c20b3 notify("hash_700a2ace");
		}
	}
}

/*
	Name: function_b1f08628
	Namespace: namespace_e9d9fb34
	Checksum: 0x92953C50
	Offset: 0x1E88
	Size: 0x89
	Parameters: 1
	Flags: None
*/
function function_b1f08628(var_f37c20b3)
{
	var_f37c20b3 endon("hash_700a2ace");
	var_f37c20b3 waittill("death", eAttacker, damageFromUnderneath, weapon, point, dir);
	if(isPlayer(eAttacker))
	{
		self notify("hash_35d17c89");
	}
}

/*
	Name: function_6e040346
	Namespace: namespace_e9d9fb34
	Checksum: 0x90962DE
	Offset: 0x1F20
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6e040346()
{
	callback::on_actor_killed(&function_61fa3273);
}

/*
	Name: function_61fa3273
	Namespace: namespace_e9d9fb34
	Checksum: 0x6056E480
	Offset: 0x1F50
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_61fa3273(params)
{
	if(!self.archetype === "robot" || !isPlayer(params.eAttacker))
	{
		return;
	}
	if(params.weapon.name === "hero_pineapplegun" && (params.sMeansOfDeath == "MOD_GRENADE" || params.sMeansOfDeath == "MOD_GRENADE_SPLASH"))
	{
		params.eAttacker namespace_fe079222::increment("MISSION_ZURICH_CHALLENGE14");
	}
}

/*
	Name: function_4b53d895
	Namespace: namespace_e9d9fb34
	Checksum: 0x3B41F8AE
	Offset: 0x2028
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4b53d895()
{
	callback::on_actor_killed(&function_3bf7b80a);
}

/*
	Name: function_3bf7b80a
	Namespace: namespace_e9d9fb34
	Checksum: 0xF284B164
	Offset: 0x2058
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_3bf7b80a(params)
{
	if(self.team === "allies")
	{
		return;
	}
	if(isPlayer(params.eAttacker))
	{
		if(isdefined(self.archetype) && (self.archetype == "human" || self.archetype == "human_riotshield" || self.archetype == "human_rpg" || self.archetype == "civilian"))
		{
			if(params.eAttacker.var_6d525c8b === 0)
			{
				params.eAttacker.var_bbb7a4e5 = util::new_timer(5);
				params.eAttacker.var_6d525c8b++;
			}
			else
			{
				params.eAttacker.var_6d525c8b++;
				if(params.eAttacker.var_6d525c8b >= 3 && params.eAttacker.var_bbb7a4e5 util::get_time_left() > 0)
				{
					params.eAttacker notify("hash_72346d97");
				}
				else if(params.eAttacker.var_bbb7a4e5 util::get_time_left() <= 0)
				{
					params.eAttacker.var_6d525c8b = 0;
				}
			}
		}
	}
}


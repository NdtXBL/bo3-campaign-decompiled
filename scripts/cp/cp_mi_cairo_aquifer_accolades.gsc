#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\util_shared;

#namespace namespace_b5b83650;

/*
	Name: accolades_init
	Namespace: namespace_b5b83650
	Checksum: 0x345984B
	Offset: 0x5B0
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function accolades_init()
{
	namespace_fe079222::register("MISSION_AQUIFER_UNTOUCHED");
	namespace_fe079222::register("MISSION_AQUIFER_SCORE");
	namespace_fe079222::register("MISSION_AQUIFER_COLLECTIBLE");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE3", "aq_thirty_kill_vtol");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE4", "aq_three_hunters_vtol");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE5", "aq_quads_only_guns");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE6", "aq_threefer_missile");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE7", "aq_six_under_two");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE9", "aq_zero_damage_defenses");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE10", "aq_tnt");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE11", "aq_defend_egyptians");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE12", "aq_vtol_drop_block");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE13", "aq_dogfight_kill_only_guns");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE14", "aq_boss_zero_damage");
	namespace_fe079222::register("MISSION_AQUIFER_CHALLENGE15", "aq_boss_cybercore_only");
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
	player = self;
	players = [];
	if(self == level)
	{
		players = level.activePlayers;
	}
	else
	{
		players[players.size] = self;
	}
	foreach(player in players)
	{
		if(!isdefined(player.var_ec496e8b))
		{
			player.var_ec496e8b = [];
		}
		if(!isdefined(player.var_ec496e8b[var_8e087689]))
		{
			player.var_ec496e8b[var_8e087689] = 0;
		}
		player.var_ec496e8b[var_8e087689]++;
		player notify(var_8e087689);
		/#
			iprintln("Dev Block strings are not supported" + var_8e087689 + "Dev Block strings are not supported" + player.var_ec496e8b[var_8e087689] + "Dev Block strings are not supported" + level.var_bb70984c[var_8e087689]);
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
	callback::on_ai_killed(&function_eab778af);
	thread function_a8831ac1();
	thread function_f208dfd8();
	callback::on_ai_killed(&function_e3e41d63);
	callback::on_ai_killed(&function_c7122e75);
	callback::on_ai_killed(&function_171499d7);
	callback::on_ai_killed(&function_6be65617);
	callback::on_vehicle_killed(&function_9cda9485);
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
function function_171499d7(params)
{
	if(isPlayer(params.eAttacker) && !isVehicle(self))
	{
		if(params.eInflictor.targetname === "destructible")
		{
			params.eAttacker namespace_fe079222::increment("MISSION_AQUIFER_CHALLENGE10");
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
function function_6be65617(params)
{
	if(level flag::get("destroy_defenses2_completed"))
	{
		callback::remove_on_ai_killed(&function_6be65617);
		return;
	}
	if(isPlayer(params.eAttacker) && !isVehicle(self) && level flag::get("destroy_defenses2"))
	{
		if(isdefined(params.eAttacker.var_8fedf36c) && params.eAttacker islinkedto(params.eAttacker.var_8fedf36c))
		{
			params.eAttacker namespace_fe079222::increment("MISSION_AQUIFER_CHALLENGE11");
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
function function_c7122e75(params)
{
	if(isPlayer(params.eAttacker) && !isVehicle(self) && self.team !== "allies")
	{
		if(isdefined(params.eAttacker.var_8fedf36c) && params.eAttacker islinkedto(params.eAttacker.var_8fedf36c))
		{
			params.eAttacker function_c27610f9("aq_thirty_kill_vtol", &function_b49b24ca);
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
	callback::remove_on_ai_killed(&function_c7122e75);
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
function function_9cda9485(params)
{
	if(isPlayer(params.eAttacker) && isdefined(self.archetype) && self.archetype == "hunter")
	{
		if(isdefined(params.eAttacker.var_8fedf36c) && params.eAttacker islinkedto(params.eAttacker.var_8fedf36c))
		{
			params.eAttacker function_c27610f9("aq_three_hunters_vtol", &function_ff25056a);
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
	callback::remove_on_vehicle_killed(&function_9cda9485);
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
	callback::on_vehicle_killed(&function_5ae2cb8a);
	level.var_67a0c1e2 = 0;
	flag::wait_till("destroy_defenses2_completed");
	if(level.var_67a0c1e2 == 0)
	{
		level function_c27610f9("aq_quads_only_guns");
	}
	callback::remove_on_vehicle_killed(&function_5ae2cb8a);
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
function function_5ae2cb8a(params)
{
	if(isPlayer(params.eAttacker) && isdefined(self.archetype) && self.archetype == "quadtank")
	{
		if(isdefined(params.weapon) && params.weapon.name != "vtol_fighter_player_turret")
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
	callback::remove_on_vehicle_killed(&function_9cda9485);
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
function function_eab778af(params)
{
	if(isPlayer(params.eAttacker) && !isVehicle(self))
	{
		if(isdefined(params.eAttacker.var_8fedf36c) && params.eAttacker islinkedto(params.eAttacker.var_8fedf36c) && params.weapon.type == "projectile")
		{
			if(!isdefined(params.eAttacker.var_be2c6b19) || params.eAttacker.var_be2c6b19 != GetTime())
			{
				params.eAttacker.var_be2c6b19 = GetTime();
				params.eAttacker.var_eb0c14e = 0;
			}
			params.eAttacker.var_eb0c14e++;
			if(params.eAttacker.var_eb0c14e >= 5)
			{
				params.eAttacker function_c27610f9("aq_threefer_missile", &function_a3f650bc);
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
	callback::remove_on_ai_killed(&function_eab778af);
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
function function_e3e41d63(params)
{
	if(isPlayer(params.eAttacker) && !isVehicle(self))
	{
		player = params.eAttacker;
		if(isdefined(player.var_2aec500b))
		{
			return;
		}
		if(!isdefined(player.var_c3919891))
		{
			player.var_c3919891 = [];
		}
		t = GetTime();
		if(player.var_c3919891.size > 0)
		{
			dirty = 1;
			while(dirty)
			{
				dirty = 0;
				for(i = 0; i < player.var_c3919891.size; i++)
				{
					if(player.var_c3919891[i] < t)
					{
						player.var_c3919891 = Array::remove_index(player.var_c3919891, i);
						dirty = 1;
						break;
					}
				}
			}
		}
		player.var_c3919891[player.var_c3919891.size] = t + 2000;
		/#
			iprintln("Dev Block strings are not supported" + player.var_c3919891.size);
		#/
		if(player.var_c3919891.size >= 10)
		{
			player.var_2aec500b = 1;
			player function_c27610f9("aq_six_under_two");
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
	flag::wait_till("player_active_in_level");
	flag::wait_till("intro_dogfight_completed");
	var_e4047762 = level.activePlayers;
	foreach(player in var_e4047762)
	{
		player thread function_2edc96bc();
	}
	flag::wait_till("destroy_defenses_completed");
	foreach(player in var_e4047762)
	{
		if(Array::contains(level.activePlayers, player))
		{
			player notify("hash_c843f11");
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
	self endon("disconnect");
	self endon("death");
	level endon("hash_ebe4266");
	retval = self util::waittill_any_return("player_took_accolade_damage", "destroy_defenses_completed");
	if(isdefined(retval) && retval == "destroy_defenses_completed")
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
	level flag::wait_till("player_active_in_level");
	level flag::wait_till("intro_dogfight_completed");
	if(!level flag::get("destroy_defenses_completed"))
	{
		Array::thread_all(level.activePlayers, &function_deee0b62);
	}
	level flag::wait_till("destroy_defenses_completed");
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.var_80329ae2) && !player.var_80329ae2)
		{
			player function_c27610f9("aq_zero_damage_defenses");
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
function function_deee0b62(params)
{
	self endon("disconnect");
	self endon("death");
	level endon("hash_4af9ae51");
	self.var_80329ae2 = 0;
	while(1)
	{
		if(isdefined(self.var_8fedf36c))
		{
			self.var_8fedf36c waittill("damage", damage, attacker, direction_vec, point, meansOfDeath, tagName, modelName, partName, weapon);
			if(weapon.type != "bullet")
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
	flag::wait_till("player_active_in_level");
	flag::wait_till("destroy_defenses_completed");
	callback::on_vehicle_killed(&function_3718be07);
	flag::wait_till("hack_terminal_left_completed");
	flag::wait_till("hack_terminal_right_completed");
	flag::wait_till("hack_terminals3_completed");
	callback::remove_on_vehicle_killed(&function_3718be07);
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
function function_3718be07(params)
{
	if(isPlayer(params.eAttacker) && (self.targetname == "res_vtol1_vh" || self.targetname == "res_vtol2_vh" || self.targetname == "port_vtol1_vh" || self.targetname == "port_vtol2_vh" || self.targetname == "lcombat_dropoff_vtol_vh"))
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
	flag::wait_till("player_active_in_level");
	level flag::wait_till("start_battle");
	level flag::wait_till("sniper_boss_spawned");
	var_e4047762 = level.activePlayers;
	foreach(player in var_e4047762)
	{
		player thread function_a2aa8ca8();
		player thread function_b362fb44();
	}
	level flag::wait_till("end_battle");
	foreach(player in var_e4047762)
	{
		if(Array::contains(level.activePlayers, player))
		{
			player notify("hash_8c7ead91");
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
	self endon("disconnect");
	level endon("hash_2899a2c7");
	self thread function_c2ba8da();
	retval = self util::waittill_any_return("sniper_boss_damage", "accolades_boss_done");
	if(isdefined(retval) && retval == "accolades_boss_done")
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
	self endon("disconnect");
	level endon("hash_2899a2c7");
	attacker = self;
	while(attacker != level.var_2839b910)
	{
		self waittill("damage", damage, attacker, dir, loc, type, model, tag, part, weapon, flags);
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
	self endon("disconnect");
	level endon("hash_2899a2c7");
	retval = self util::waittill_any_return("weapon_fired", "accolades_boss_done");
	if(isdefined(retval) && retval == "accolades_boss_done")
	{
		self function_c27610f9("aq_boss_cybercore_only");
	}
}


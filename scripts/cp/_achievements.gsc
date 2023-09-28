#using scripts\codescripts\struct;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace achievements;

/*
	Name: __init__sytem__
	Namespace: achievements
	Checksum: 0xD606CA34
	Offset: 0x548
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("achievements", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: achievements
	Checksum: 0xCB5B452B
	Offset: 0x588
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_connect(&on_player_connect);
	callback::on_ai_spawned(&on_ai_spawned);
	callback::on_ai_damage(&on_ai_damage);
	callback::on_ai_killed(&on_ai_killed);
	callback::on_player_killed(&on_player_death);
	spawner::add_archetype_spawn_function("wasp", &function_632712d7, 3);
	function_4462a8b7();
}

/*
	Name: function_4462a8b7
	Namespace: achievements
	Checksum: 0x895DB7E7
	Offset: 0x678
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_4462a8b7()
{
	level.var_a4d4c1e3["cp_mi_cairo_aquifer"] = "CP_COMPLETE_AQUIFER";
	level.var_a4d4c1e3["cp_mi_sing_biodomes"] = "CP_COMPLETE_BIODOMES";
	level.var_a4d4c1e3["cp_mi_sing_blackstation"] = "CP_COMPLETE_BLACKSTATION";
	level.var_a4d4c1e3["cp_mi_cairo_infection"] = "CP_COMPLETE_INFECTION";
	level.var_a4d4c1e3["cp_mi_cairo_lotus"] = "CP_COMPLETE_LOTUS";
	level.var_a4d4c1e3["cp_mi_zurich_newworld"] = "CP_COMPLETE_NEWWORLD";
	level.var_a4d4c1e3["cp_mi_eth_prologue"] = "CP_COMPLETE_PROLOGUE";
	level.var_a4d4c1e3["cp_mi_cairo_ramses"] = "CP_COMPLETE_RAMSES";
	level.var_a4d4c1e3["cp_mi_sing_sgen"] = "CP_COMPLETE_SGEN";
	level.var_a4d4c1e3["cp_mi_sing_vengeance"] = "CP_COMPLETE_VENGEANCE";
}

/*
	Name: give_achievement
	Namespace: achievements
	Checksum: 0x188EF673
	Offset: 0x7A0
	Size: 0xAB
	Parameters: 2
	Flags: None
*/
function give_achievement(str_id, var_56503a18)
{
	if(!isdefined(var_56503a18))
	{
		var_56503a18 = 0;
	}
	if(SessionModeIsCampaignZombiesGame() && !var_56503a18)
	{
		return;
	}
	/#
		PrintTopRightln("Dev Block strings are not supported" + str_id, (1, 1, 1));
		println("Dev Block strings are not supported" + str_id);
	#/
	self GiveAchievement(str_id);
}

/*
	Name: on_player_connect
	Namespace: achievements
	Checksum: 0xF3D0C2ED
	Offset: 0x858
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self endon("disconnect");
	self.var_75cf9e2e = spawnstruct();
	self.var_75cf9e2e.killIndex = 0;
	self.var_75cf9e2e.var_940a9f6e = 0;
	self.var_75cf9e2e.kills = [];
	self.var_75cf9e2e.var_43311285 = [];
	self thread function_34eaa01b();
	self thread function_e587e1f2();
	while(1)
	{
		self waittill("give_achievement", str_id);
		give_achievement(str_id);
	}
}

/*
	Name: function_5f2f7800
	Namespace: achievements
	Checksum: 0x94943805
	Offset: 0x948
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_5f2f7800(ePlayer, levelname, difficulty)
{
	if(!isdefined(levelname) || !isdefined(level.var_a4d4c1e3[levelname]))
	{
		return;
	}
	if(difficulty < 2)
	{
		return;
	}
	ePlayer give_achievement(level.var_a4d4c1e3[levelname]);
}

/*
	Name: function_c3e7ff05
	Namespace: achievements
	Checksum: 0x5DAB7B87
	Offset: 0x9C8
	Size: 0x243
	Parameters: 1
	Flags: None
*/
function function_c3e7ff05(ePlayer)
{
	var_44a14bc7 = [];
	for(index = 0; index <= 4; index++)
	{
		var_44a14bc7[index] = 0;
	}
	var_7941f5c8 = skipto::function_23eda99c();
	var_f0ecfb92 = 0;
	foreach(mission in var_7941f5c8)
	{
		if(!ePlayer GetDStat("PlayerStatsByMap", mission, "hasBeenCompleted"))
		{
			continue;
		}
		var_158cb770 = ePlayer GetDStat("PlayerStatsByMap", mission, "highestStats", "HIGHEST_DIFFICULTY");
		if(!isdefined(var_44a14bc7[var_158cb770]))
		{
			var_44a14bc7[var_158cb770] = 0;
		}
		var_44a14bc7[var_158cb770]++;
		var_f0ecfb92++;
	}
	var_98680dde = var_7941f5c8.size;
	if(var_f0ecfb92 == var_98680dde)
	{
		ePlayer give_achievement("CP_CAMPAIGN_COMPLETE");
	}
	if(var_44a14bc7[2] + var_44a14bc7[3] + var_44a14bc7[4] == var_98680dde)
	{
		ePlayer give_achievement("CP_HARD_COMPLETE");
	}
	if(var_44a14bc7[4] == var_98680dde)
	{
		ePlayer give_achievement("CP_REALISTIC_COMPLETE");
	}
}

/*
	Name: function_733a6065
	Namespace: achievements
	Checksum: 0x5DC98F99
	Offset: 0xC18
	Size: 0x63
	Parameters: 4
	Flags: None
*/
function function_733a6065(ePlayer, levelname, difficulty, var_10c5a3ef)
{
	if(!var_10c5a3ef)
	{
		function_5f2f7800(ePlayer, levelname, difficulty);
		function_c3e7ff05(ePlayer);
	}
}

/*
	Name: function_34eaa01b
	Namespace: achievements
	Checksum: 0x609CFD03
	Offset: 0xC88
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function function_34eaa01b()
{
	self endon("disconnect");
	while(1)
	{
		self waittill("wallrun_begin");
		v_start = self.origin;
		self waittill("wallrun_end");
		var_1d634a25 = Distance(v_start, self.origin);
		n_current_dist = self GetDStat("Achievements", "CP_COMPLETE_WALL_RUN");
		n_current_dist = n_current_dist + var_1d634a25;
		/#
			PrintTopRightln(n_current_dist, (1, 1, 1));
		#/
		if(n_current_dist >= 9843)
		{
			give_achievement("CP_COMPLETE_WALL_RUN");
			return;
		}
		else
		{
			self SetDStat("Achievements", "CP_COMPLETE_WALL_RUN", Int(n_current_dist));
		}
	}
}

/*
	Name: on_ai_spawned
	Namespace: achievements
	Checksum: 0x99EC1590
	Offset: 0xDC8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_ai_spawned()
{
}

/*
	Name: on_ai_damage
	Namespace: achievements
	Checksum: 0x94078186
	Offset: 0xDD8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function on_ai_damage(var_d4457625)
{
	self.var_74390712 = undefined;
	if(isPlayer(var_d4457625.eAttacker))
	{
		if(var_d4457625.iDFlags & 8)
		{
			self.var_74390712 = var_d4457625.eAttacker;
		}
	}
}

/*
	Name: on_player_death
	Namespace: achievements
	Checksum: 0xE1AEB598
	Offset: 0xE48
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function on_player_death(var_d4457625)
{
	self.var_75cf9e2e.killIndex = 0;
	self.var_75cf9e2e.var_940a9f6e = 0;
	self.var_75cf9e2e.kills = [];
	self.var_75cf9e2e.var_43311285 = [];
}

/*
	Name: function_1121f26a
	Namespace: achievements
	Checksum: 0x31717BFD
	Offset: 0xEB0
	Size: 0x16B
	Parameters: 2
	Flags: Private
*/
function private function_1121f26a(var_c856ad1d, eVictim)
{
	if(isdefined(var_c856ad1d.hijacked_vehicle_entity))
	{
		var_1efe785f = Distance(var_c856ad1d.hijacked_vehicle_entity.origin, eVictim.origin);
	}
	else
	{
		var_1efe785f = Distance(var_c856ad1d.origin, eVictim.origin);
	}
	if(var_1efe785f >= 3937)
	{
		var_46907f23 = var_c856ad1d GetDStat("Achievements", "CP_DISTANCE_KILL");
		var_46907f23++;
		/#
			PrintTopRightln("Dev Block strings are not supported" + var_1efe785f + "Dev Block strings are not supported" + var_46907f23, (1, 1, 1));
		#/
		if(var_46907f23 >= 5)
		{
			var_c856ad1d give_achievement("CP_DISTANCE_KILL");
		}
		else
		{
			var_c856ad1d SetDStat("Achievements", "CP_DISTANCE_KILL", var_46907f23);
		}
	}
}

/*
	Name: function_914b8688
	Namespace: achievements
	Checksum: 0x82E2B9B4
	Offset: 0x1028
	Size: 0x48B
	Parameters: 4
	Flags: Private
*/
function private function_914b8688(player, eVictim, weapon, eInflictor)
{
	if(!isdefined(weapon))
	{
		return;
	}
	if(!isdefined(player.var_58477d59))
	{
		player.var_58477d59 = [];
		player.var_58477d59["CP_FLYING_WASP_KILL"] = 0;
		player.var_58477d59["CP_COMBAT_ROBOT_KILL"] = 0;
	}
	var_9663b3f1 = 0;
	if(weapon.name == "gadget_firefly_swarm" || weapon.name == "gadget_firefly_swarm_upgraded")
	{
		function_9dab90e7(player);
		var_9663b3f1 = 1;
	}
	else if(isdefined(player.var_75cf9e2e.var_6ce188b0) && weapon.name == "gadget_unstoppable_force" || weapon.name == "gadget_unstoppable_force_upgraded")
	{
		player.var_75cf9e2e.var_6ce188b0++;
		if(player.var_75cf9e2e.var_6ce188b0 >= 5)
		{
			player give_achievement("CP_UNSTOPPABLE_KILL");
		}
	}
	else if(isdefined(player.hijacked_vehicle_entity))
	{
		if(isdefined(player.hijacked_vehicle_entity.killcount))
		{
			player.hijacked_vehicle_entity.killcount++;
		}
		else
		{
			player.hijacked_vehicle_entity.killcount = 1;
		}
		if(player.hijacked_vehicle_entity.scriptvehicletype == "wasp" && player.hijacked_vehicle_entity.killcount >= 20)
		{
			if(!player.var_58477d59["CP_FLYING_WASP_KILL"])
			{
				player give_achievement("CP_FLYING_WASP_KILL");
				player.var_58477d59["CP_FLYING_WASP_KILL"] = 1;
			}
		}
		if(player.hijacked_vehicle_entity.killcount >= 10)
		{
			if(!player.var_58477d59["CP_COMBAT_ROBOT_KILL"])
			{
				player give_achievement("CP_COMBAT_ROBOT_KILL");
				player.var_58477d59["CP_COMBAT_ROBOT_KILL"] = 1;
			}
		}
	}
	else if(isai(eInflictor) && isdefined(eInflictor.var_6319d77b) && eInflictor.var_6319d77b == player)
	{
		if(isdefined(eInflictor.killcount))
		{
			eInflictor.killcount++;
		}
		else
		{
			eInflictor.killcount = 1;
		}
		if(eInflictor.killcount >= 10)
		{
			if(!player.var_58477d59["CP_COMBAT_ROBOT_KILL"])
			{
				player give_achievement("CP_COMBAT_ROBOT_KILL");
				player.var_58477d59["CP_COMBAT_ROBOT_KILL"] = 1;
			}
		}
	}
	if(isdefined(eVictim.swarm) && !var_9663b3f1)
	{
		function_9dab90e7(player);
	}
	if(isdefined(player.var_75cf9e2e.var_a4fb0163) && player.var_75cf9e2e.var_a4fb0163 >= 6)
	{
		player give_achievement("CP_FIREFLIES_KILL");
	}
}

/*
	Name: function_2b2fb40b
	Namespace: achievements
	Checksum: 0x4F15C880
	Offset: 0x14C0
	Size: 0x17B
	Parameters: 3
	Flags: Private
*/
function private function_2b2fb40b(player, var_aae1ed0d, weapon)
{
	player.var_75cf9e2e.var_940a9f6e++;
	currentIndex = player.var_75cf9e2e.killIndex;
	player.var_75cf9e2e.kills[currentIndex] = GetTime();
	player.var_75cf9e2e.killIndex = currentIndex + 1 % 10;
	if(player.var_75cf9e2e.var_940a9f6e < 10)
	{
		return;
	}
	startIndex = currentIndex + 1 % 10;
	startTime = player.var_75cf9e2e.kills[startIndex];
	endTime = player.var_75cf9e2e.kills[currentIndex];
	if(player.var_75cf9e2e.var_940a9f6e >= 10 && endTime - startTime <= 3000)
	{
		player give_achievement("CP_TIMED_KILL");
	}
}

/*
	Name: function_b1d71bd3
	Namespace: achievements
	Checksum: 0x25E2B1F9
	Offset: 0x1648
	Size: 0x18B
	Parameters: 2
	Flags: Private
*/
function private function_b1d71bd3(player, weapon)
{
	var_4c26012 = GetBaseWeaponItemIndex(weapon);
	if(!isdefined(var_4c26012) || (var_4c26012 < 1 || var_4c26012 > 60))
	{
		return;
	}
	player.var_75cf9e2e.var_43311285[weapon.rootweapon.name] = GetTime();
	var_6c46ba29 = 0;
	var_376861f6 = GetTime() - 30000;
	if(var_376861f6 < 0)
	{
		var_376861f6 = 0;
	}
	foreach(lastKillTime in player.var_75cf9e2e.var_43311285)
	{
		if(lastKillTime > var_376861f6)
		{
			var_6c46ba29++;
		}
	}
	if(var_6c46ba29 >= 5)
	{
		player give_achievement("CP_DIFFERENT_GUN_KILL");
	}
}

/*
	Name: function_307b3ac3
	Namespace: achievements
	Checksum: 0x727CB614
	Offset: 0x17E0
	Size: 0x24B
	Parameters: 3
	Flags: Private
*/
function private function_307b3ac3(ePlayer, eVictim, var_433291aa)
{
	if(!eVictim util::function_d9c13489() || eVictim.team !== "axis")
	{
		return;
	}
	if(!isdefined(ePlayer.var_75cf9e2e.var_6a670270))
	{
		ePlayer.var_75cf9e2e.var_6a670270 = [];
	}
	if(!isdefined(ePlayer.var_75cf9e2e.var_6a670270))
	{
		ePlayer.var_75cf9e2e.var_6a670270 = [];
	}
	else if(!IsArray(ePlayer.var_75cf9e2e.var_6a670270))
	{
		ePlayer.var_75cf9e2e.var_6a670270 = Array(ePlayer.var_75cf9e2e.var_6a670270);
	}
	ePlayer.var_75cf9e2e.var_6a670270[ePlayer.var_75cf9e2e.var_6a670270.size] = GetTime();
	startIndex = ePlayer.var_75cf9e2e.var_6a670270.size - 1;
	maxTime = GetTime() - 3000;
	for(var_7b5c89e6 = startIndex; var_7b5c89e6 >= 0; var_7b5c89e6--)
	{
		if(ePlayer.var_75cf9e2e.var_6a670270[var_7b5c89e6] < maxTime)
		{
			ArrayRemoveIndex(ePlayer.var_75cf9e2e.var_6a670270, var_7b5c89e6);
		}
	}
	if(ePlayer.var_75cf9e2e.var_6a670270.size >= 5)
	{
		ePlayer give_achievement("CP_TIMED_STUNNED_KILL");
	}
}

/*
	Name: function_c4f2de38
	Namespace: achievements
	Checksum: 0xC41A2FC8
	Offset: 0x1A38
	Size: 0xEB
	Parameters: 3
	Flags: Private
*/
function private function_c4f2de38(player, victim, inflictor)
{
	if(!isdefined(inflictor.weapon) || !isdefined(self.scriptvehicletype) || self.scriptvehicletype != "wasp" || inflictor.weapon.type != "grenade")
	{
		return;
	}
	if(!isdefined(inflictor.var_9bbaef3))
	{
		inflictor.var_9bbaef3 = 1;
	}
	else
	{
		inflictor.var_9bbaef3++;
	}
	if(inflictor.var_9bbaef3 >= 3)
	{
		player give_achievement("CP_KILL_WASPS");
	}
}

/*
	Name: function_17ec453c
	Namespace: achievements
	Checksum: 0x3027EED4
	Offset: 0x1B30
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_17ec453c(eAttacker, eVictim, var_433291aa)
{
	if(isdefined(eAttacker.var_6fb3bfc3) && isPlayer(eAttacker.var_6fb3bfc3))
	{
		if(isdefined(eAttacker.killcount))
		{
			eAttacker.killcount++;
		}
		else
		{
			eAttacker.killcount = 1;
		}
		if(eAttacker.killcount >= 10)
		{
			eAttacker.var_6fb3bfc3 give_achievement("CP_COMBAT_ROBOT_KILL");
		}
	}
}

/*
	Name: function_99d6210d
	Namespace: achievements
	Checksum: 0x19CB686E
	Offset: 0x1C00
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_99d6210d(ePlayer, eVictim)
{
	if(isdefined(eVictim.var_74390712) && eVictim.var_74390712 == ePlayer && eVictim.team !== "allies")
	{
		ePlayer give_achievement("CP_OBSTRUCTED_KILL");
	}
}

/*
	Name: function_fbe029db
	Namespace: achievements
	Checksum: 0xFCE6693E
	Offset: 0x1C88
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_fbe029db(ePlayer)
{
	var_ba8faef8 = ePlayer function_916d0351();
	if(2 <= var_ba8faef8)
	{
		ePlayer give_achievement("CP_MELEE_COMBO_KILL");
	}
}

/*
	Name: on_ai_killed
	Namespace: achievements
	Checksum: 0x38B1BD89
	Offset: 0x1CF0
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function on_ai_killed(var_d4457625)
{
	if(isPlayer(var_d4457625.eAttacker))
	{
		player = var_d4457625.eAttacker;
		function_1121f26a(player, self);
		function_914b8688(player, self, var_d4457625.weapon, var_d4457625.eInflictor);
		function_fbe029db(player);
		function_2b2fb40b(player, self, var_d4457625.weapon);
		function_b1d71bd3(player, var_d4457625.weapon);
		function_c4f2de38(player, self, var_d4457625.eInflictor);
		function_307b3ac3(player, self, var_d4457625.weapon);
		function_99d6210d(player, self);
	}
	else if(isai(var_d4457625.eAttacker))
	{
		function_17ec453c(var_d4457625.eAttacker, self, var_d4457625.weapon);
	}
}

/*
	Name: function_632712d7
	Namespace: achievements
	Checksum: 0x6A438277
	Offset: 0x1EA8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_632712d7(n_count)
{
}

/*
	Name: function_9dab90e7
	Namespace: achievements
	Checksum: 0xF271B138
	Offset: 0x1EC0
	Size: 0x5F
	Parameters: 1
	Flags: Private
*/
function private function_9dab90e7(player)
{
	if(!isdefined(player.var_75cf9e2e.var_a4fb0163))
	{
		player.var_75cf9e2e.var_a4fb0163 = 1;
	}
	else
	{
		player.var_75cf9e2e.var_a4fb0163++;
	}
}

/*
	Name: function_e587e1f2
	Namespace: achievements
	Checksum: 0x3D213ABF
	Offset: 0x1F28
	Size: 0xAB
	Parameters: 0
	Flags: Private
*/
function private function_e587e1f2()
{
	self endon("disconnect");
	while(1)
	{
		self waittill("gun_level_complete", rewardXP, attachmentIndex, itemIndex, rankID, isLastRank);
		if(isLastRank && (itemIndex >= 1 && itemIndex <= 60))
		{
			self give_achievement("CP_ALL_WEAPON_ATTACHMENTS");
			break;
		}
	}
}

/*
	Name: checkWeaponChallengeComplete
	Namespace: achievements
	Checksum: 0xDB95929F
	Offset: 0x1FE0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function checkWeaponChallengeComplete(var_e9af7d73)
{
	if(var_e9af7d73 == 3)
	{
		self give_achievement("CP_ALL_WEAPON_CAMOS");
	}
}

/*
	Name: function_b2d1aafa
	Namespace: achievements
	Checksum: 0x31223000
	Offset: 0x2020
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_b2d1aafa()
{
	if(level.cybercom.var_12f85dec == 0)
	{
		foreach(player in level.players)
		{
			if(!isdefined(player.var_75cf9e2e.var_a4fb0163))
			{
				continue;
			}
			player.var_75cf9e2e.var_a4fb0163 = undefined;
		}
	}
}

/*
	Name: function_386309ce
	Namespace: achievements
	Checksum: 0xCE3AD276
	Offset: 0x20E8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_386309ce(player)
{
	player.var_75cf9e2e.var_6ce188b0 = 0;
}

/*
	Name: function_6903d776
	Namespace: achievements
	Checksum: 0x536761BA
	Offset: 0x2118
	Size: 0x2D
	Parameters: 1
	Flags: None
*/
function function_6903d776(var_44c1c544)
{
	if(isdefined(var_44c1c544.killcount))
	{
		var_44c1c544.killcount = undefined;
	}
}


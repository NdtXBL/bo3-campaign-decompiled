#using scripts\codescripts\struct;
#using scripts\cp\_achievements;
#using scripts\cp\_decorations;
#using scripts\cp\_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace challenges;

/*
	Name: __init__sytem__
	Namespace: challenges
	Checksum: 0xD8275CFE
	Offset: 0x5F0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("challenges", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: challenges
	Checksum: 0x74775EF2
	Offset: 0x630
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
	callback::on_start_gametype(&start_gametype);
}

/*
	Name: start_gametype
	Namespace: challenges
	Checksum: 0x38E32DDB
	Offset: 0x670
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function start_gametype()
{
	if(!isdefined(level.ChallengesCallbacks))
	{
		level.ChallengesCallbacks = [];
	}
	waittillframeend;
	if(canProcessChallenges())
	{
		registerChallengesCallback("actorKilled", &function_9323a046);
		registerChallengesCallback("actorDamaged", &function_e0360654);
		registerChallengesCallback("VehicleKilled", &function_2acd9b03);
		registerChallengesCallback("VehicleDamage", &function_9323a046);
	}
	callback::on_connect(&on_player_connect);
	callback::on_connect(&function_dadf37f9);
}

/*
	Name: function_2acd9b03
	Namespace: challenges
	Checksum: 0x993A9A3D
	Offset: 0x790
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_2acd9b03(data, time)
{
	function_9323a046(data, time);
}

/*
	Name: function_7d1957ed
	Namespace: challenges
	Checksum: 0xC5A0048
	Offset: 0x7C8
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_7d1957ed(data, time)
{
	function_e0360654(data, time);
}

/*
	Name: function_e0360654
	Namespace: challenges
	Checksum: 0x863CBAFF
	Offset: 0x800
	Size: 0x111
	Parameters: 2
	Flags: None
*/
function function_e0360654(data, time)
{
	if(isdefined(data))
	{
		switch(data.weapon.rootweapon.name)
		{
			case "emp_grenade":
			{
				break;
			}
			case "ravage_core_emp_grenade":
			case "ravage_core_emp_grenade_upg":
			{
				if(!isdefined(data.victim.var_fcad099b) && data.victim.archetype != "human")
				{
					data.attacker AddPlayerStat("cybercom_uses_esdamage", 1);
					data.attacker AddPlayerStat("cybercom_uses_ravagecore", 1);
					data.victim.var_fcad099b = 1;
				}
				break;
			}
		}
	}
}

/*
	Name: function_9323a046
	Namespace: challenges
	Checksum: 0xB272C501
	Offset: 0x920
	Size: 0x5AB
	Parameters: 2
	Flags: None
*/
function function_9323a046(data, time)
{
	if(isdefined(data))
	{
		if(isdefined(data.victim) && isdefined(data.victim.swarm))
		{
			data.attacker AddPlayerStat("cybercom_uses_fireflies", 1);
			data.attacker thread function_96ed590f("cybercom_uses_chaos");
		}
		if(isdefined(data.attacker.hijacked_vehicle_entity))
		{
			data.attacker AddPlayerStat("cybercom_uses_remotehijack", 1);
		}
		if(data.sMeansOfDeath == "MOD_GRENADE_SPLASH" || data.sMeansOfDeath == "MOD_ELECTROCUTED" || data.sMeansOfDeath == "MOD_GRENADE" || data.sMeansOfDeath == "MOD_EXPLOSIVE" || data.sMeansOfDeath == "MOD_BURNED" || data.sMeansOfDeath == "MOD_PROJECTILE_SPLASH")
		{
			if(data.weapon.rootweapon.name != "gadget_concussive_wave" && data.weapon.rootweapon.name != "hero_gravityspikes_cybercom_upgraded")
			{
				data.attacker AddPlayerStat("cybercom_uses_explosives", 1);
				if(isdefined(data.attacker.heroAbility))
				{
					if(data.attacker.heroAbility.name == "gadget_immolation_upgraded" || data.attacker.heroAbility.name == "gadget_immolation")
					{
						data.attacker notify("hash_a15c319", data.victim);
					}
				}
			}
		}
		switch(data.weapon.rootweapon.name)
		{
			case "gadget_rapid_strike":
			case "gadget_rapid_strike_upgraded":
			{
				data.attacker notify("hash_e11b0770");
				data.attacker thread function_4c17acc8();
				break;
			}
			case "gadget_immolation":
			case "gadget_immolation_upgraded":
			{
				if(isdefined(data.victim) && isdefined(data.attacker) && !isdefined(data.victim.var_e9560d5))
				{
					data.victim.var_e9560d5 = 1;
					data.attacker AddPlayerStat("cybercom_uses_immolation", 1);
					data.attacker thread function_8ef347b3(data.victim.origin);
				}
				break;
			}
			case "gadget_unstoppable_force":
			case "gadget_unstoppable_force_upgraded":
			{
				data.attacker AddPlayerStat("cybercom_uses_force", 1);
				data.attacker AddPlayerStat("cybercom_uses_martial", 1);
				break;
			}
			case "ravage_core_emp_grenade":
			case "ravage_core_emp_grenade_upg":
			{
				if(isdefined(data.victim) && !isdefined(data.victim.var_fcad099b))
				{
					data.attacker AddPlayerStat("cybercom_uses_ravagecore", 1);
					data.victim.var_fcad099b = 1;
				}
				break;
			}
			case "gadget_concussive_wave":
			case "hero_gravityspikes_cybercom_upgraded":
			{
				if(isVehicle(data.victim))
				{
					data.attacker AddPlayerStat("cybercom_uses_martial", 1);
					data.attacker AddPlayerStat("cybercom_uses_concussive", 1);
				}
				break;
			}
		}
		if(isdefined(data.attacker) && isPlayer(data.attacker))
		{
			data.attacker Decorations::function_2bc66a34();
		}
	}
}

/*
	Name: function_8ef347b3
	Namespace: challenges
	Checksum: 0xAC05F0D4
	Offset: 0xED8
	Size: 0x127
	Parameters: 1
	Flags: None
*/
function function_8ef347b3(v_location)
{
	self endon("death");
	self endon("hash_31573b44");
	if(!isdefined(v_location))
	{
		return;
	}
	self util::delay_notify(2, "stop_catching_immolation_secondaries");
	n_start_time = GetTime();
	while(GetTime() - n_start_time < 2)
	{
		self waittill("hash_a15c319", e_enemy);
		if(!isdefined(e_enemy))
		{
			break;
		}
		if(length(v_location - e_enemy.origin) < 200)
		{
			if(isdefined(e_enemy) && isdefined(self) && !isdefined(e_enemy.var_e9560d5))
			{
				e_enemy.var_e9560d5 = 1;
				self AddPlayerStat("cybercom_uses_immolation", 1);
			}
		}
	}
}

/*
	Name: function_4c17acc8
	Namespace: challenges
	Checksum: 0xC776FE1D
	Offset: 0x1008
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_4c17acc8()
{
	self endon("death");
	self endon("hash_534b9c4b");
	self util::delay_notify(2, "stop_catching_rapid_strike_attacks");
	n_start_time = GetTime();
	while(GetTime() - n_start_time < 2)
	{
		self waittill("hash_e11b0770");
		self AddPlayerStat("cybercom_uses_rapidstrike", 1);
	}
}

/*
	Name: function_e0ef8a87
	Namespace: challenges
	Checksum: 0xAD7FFF03
	Offset: 0x10A0
	Size: 0x163
	Parameters: 6
	Flags: None
*/
function function_e0ef8a87(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, sHitLoc)
{
	if(!isdefined(weapon))
	{
		weapon = level.weaponNone;
	}
	attacker endon("disconnect");
	data = spawnstruct();
	data.victim = self;
	data.eInflictor = eInflictor;
	data.attacker = attacker;
	data.iDamage = iDamage;
	data.sMeansOfDeath = sMeansOfDeath;
	data.weapon = weapon;
	data.sHitLoc = sHitLoc;
	data.time = GetTime();
	data.victimWeapon = data.victim.currentWeapon;
	function_8468b0b1(data);
	data.attacker notify("hash_31e22357");
}

/*
	Name: function_8468b0b1
	Namespace: challenges
	Checksum: 0xF2197840
	Offset: 0x1210
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_8468b0b1(data)
{
	if(isdefined(data.attacker))
	{
		data.attacker endon("disconnect");
	}
	wait(0.05);
	util::WaitTillSlowProcessAllowed();
	level thread doChallengeCallback("actorKilled", data);
	level thread doScoreEventCallback("actorKilled", data);
}

/*
	Name: function_40b8d4a1
	Namespace: challenges
	Checksum: 0x5DC5E347
	Offset: 0x12A8
	Size: 0x143
	Parameters: 5
	Flags: None
*/
function function_40b8d4a1(eInflictor, attacker, iDamage, weapon, sHitLoc)
{
	if(!isdefined(weapon))
	{
		weapon = level.weaponNone;
	}
	attacker endon("disconnect");
	data = spawnstruct();
	data.victim = self;
	data.eInflictor = eInflictor;
	data.attacker = attacker;
	data.iDamage = iDamage;
	data.weapon = weapon;
	data.sHitLoc = sHitLoc;
	data.time = GetTime();
	data.victimWeapon = data.victim.currentWeapon;
	function_2a703585(data);
	data.attacker notify("hash_3cf360d1");
}

/*
	Name: function_2a703585
	Namespace: challenges
	Checksum: 0x4B995B36
	Offset: 0x13F8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_2a703585(data)
{
	if(isdefined(data.attacker))
	{
		data.attacker endon("disconnect");
	}
	wait(0.05);
	util::WaitTillSlowProcessAllowed();
	level thread doChallengeCallback("actorDamaged", data);
}

/*
	Name: function_c4014ee0
	Namespace: challenges
	Checksum: 0xE3C968F5
	Offset: 0x1470
	Size: 0x163
	Parameters: 6
	Flags: None
*/
function function_c4014ee0(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, sHitLoc)
{
	if(!isdefined(weapon))
	{
		weapon = level.weaponNone;
	}
	attacker endon("disconnect");
	data = spawnstruct();
	data.victim = self;
	data.eInflictor = eInflictor;
	data.attacker = attacker;
	data.iDamage = iDamage;
	data.sMeansOfDeath = sMeansOfDeath;
	data.weapon = weapon;
	data.sHitLoc = sHitLoc;
	data.time = GetTime();
	data.victimWeapon = data.victim.currentWeapon;
	function_79c2e402(data);
	data.attacker notify("hash_962e5616");
}

/*
	Name: function_79c2e402
	Namespace: challenges
	Checksum: 0x117E1508
	Offset: 0x15E0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_79c2e402(data)
{
	if(isdefined(data.attacker))
	{
		data.attacker endon("disconnect");
	}
	wait(0.05);
	util::WaitTillSlowProcessAllowed();
	level thread doChallengeCallback("VehicleKilled", data);
}

/*
	Name: function_f7118174
	Namespace: challenges
	Checksum: 0x18D2845E
	Offset: 0x1658
	Size: 0x143
	Parameters: 5
	Flags: None
*/
function function_f7118174(eInflictor, attacker, iDamage, weapon, sHitLoc)
{
	if(!isdefined(weapon))
	{
		weapon = level.weaponNone;
	}
	attacker endon("disconnect");
	data = spawnstruct();
	data.victim = self;
	data.eInflictor = eInflictor;
	data.attacker = attacker;
	data.iDamage = iDamage;
	data.weapon = weapon;
	data.sHitLoc = sHitLoc;
	data.time = GetTime();
	data.victimWeapon = data.victim.currentWeapon;
	waitandprocessvehicledamagedcallback(data);
	data.attacker notify("hash_37eb53e2");
}

/*
	Name: waitandprocessvehicledamagedcallback
	Namespace: challenges
	Checksum: 0xA9095C
	Offset: 0x17A8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function waitandprocessvehicledamagedcallback(data)
{
	if(isdefined(data.attacker))
	{
		data.attacker endon("disconnect");
	}
	wait(0.05);
	util::WaitTillSlowProcessAllowed();
	level thread doChallengeCallback("VehicleDamaged", data);
}

/*
	Name: callback_decoration_awarded
	Namespace: challenges
	Checksum: 0xF525F3C3
	Offset: 0x1820
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function callback_decoration_awarded()
{
	self thread function_96ed590f("career_decorations");
}

/*
	Name: function_96ed590f
	Namespace: challenges
	Checksum: 0xD204CEAE
	Offset: 0x1850
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_96ed590f(statName, n_amount)
{
	if(!isdefined(n_amount))
	{
		n_amount = 1;
	}
	self endon("disconnect");
	if(!isPlayer(self))
	{
		return;
	}
	self AddPlayerStat(statName, n_amount);
}

/*
	Name: function_dadf37f9
	Namespace: challenges
	Checksum: 0xF86D77FB
	Offset: 0x18C0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_dadf37f9()
{
	self.challenge_callback_cp = &function_97666686;
	/#
		self thread function_4f96d6bd();
	#/
}

/*
	Name: function_7fd6c70d
	Namespace: challenges
	Checksum: 0x1AC98396
	Offset: 0x1900
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function function_7fd6c70d(challenge_index)
{
	return tableLookup("gamedata/stats/cp/statsmilestones3.csv", 0, challenge_index, 5);
}

/*
	Name: function_97666686
	Namespace: challenges
	Checksum: 0x396AB483
	Offset: 0x1938
	Size: 0x215
	Parameters: 7
	Flags: None
*/
function function_97666686(rewardXP, maxVal, row, tableNumber, challengeType, itemIndex, challengeIndex)
{
	self function_5bb05b72();
	if(challengeIndex == 565)
	{
		self GiveDecoration("cp_medal_all_accolades");
	}
	tier = Int(tableLookup("gamedata/stats/cp/statsmilestones3.csv", 0, challengeIndex, 1));
	switch(challengeType)
	{
		case 0:
		{
			challengeName = function_7fd6c70d(challengeIndex);
			switch(challengeName)
			{
				case "CP_CHALLENGES_CAREER_MASTERY":
				{
					break;
				}
				case "CP_CHALLENGES_ALL_COMPLETE":
				{
					self GiveDecoration("cp_medal_all_calling_cards");
					break;
				}
			}
			break;
		}
		case 1:
		{
			if(itemIndex != 0)
			{
				self SetDStat("ItemStats", itemIndex, "challengeCompleted", tier, 1);
				self achievements::checkWeaponChallengeComplete(tier);
			}
			break;
		}
		case 4:
		{
			var_2de0b3d4 = tableLookup("gamedata/stats/cp/statsmilestones3.csv", 0, challengeIndex, 13);
			self SetDStat("Attachments", var_2de0b3d4, "challengeCompleted", tier, 1);
			break;
		}
	}
}

/*
	Name: function_5bb05b72
	Namespace: challenges
	Checksum: 0x36B617A0
	Offset: 0x1B58
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_5bb05b72()
{
	if(SessionModeIsOnlineGame())
	{
		return;
	}
	var_671e7f8c = self GetDStat("PlayerStatsList", "cp_challenges", "statValue");
	if(var_671e7f8c > 0)
	{
		var_2b0fb6af = function_1556496c("gamedata/stats/cp/statsmilestones3.csv");
		var_e4d70f97 = [];
		for(i = 0; i < var_2b0fb6af - 1; i++)
		{
			var_e4d70f97 = TableLookupRow("gamedata/stats/cp/statsmilestones3.csv", i);
			var_ec486758 = var_e4d70f97[3];
			if(var_ec486758 == "global")
			{
				challenge_stat_name = var_e4d70f97[4];
				if(isdefined(challenge_stat_name) && challenge_stat_name != "")
				{
					var_db5490e3 = self GetDStat("PlayerStatsList", challenge_stat_name, "statValue");
					if(var_e4d70f97[10] != "")
					{
						var_60596ad1 = Int(var_e4d70f97[2]);
						if(var_db5490e3 >= var_60596ad1)
						{
							var_9050c19b = "";
							var_9050c19b = var_e4d70f97[16];
							switch(var_9050c19b)
							{
								case "missions":
								{
									self AddPlayerStat("conf_gamemode_mastery", 1);
									break;
								}
								case "tott":
								{
									self AddPlayerStat("hq_gamemode_mastery", 1);
									break;
								}
								case "career":
								{
									self AddPlayerStat("career_mastery", 1);
									break;
								}
							}
						}
					}
				}
			}
		}
		self SetDStat("PlayerStatsList", "cp_challenges", "StatValue", 0);
	}
}

/*
	Name: function_4f96d6bd
	Namespace: challenges
	Checksum: 0xF99A4F15
	Offset: 0x1E10
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_4f96d6bd()
{
	/#
		while(1)
		{
			if(GetDvarInt("Dev Block strings are not supported", 0) == 1)
			{
				self function_f2d8f1d0();
				SetDvar("Dev Block strings are not supported", 0);
			}
			wait(0.1);
		}
	#/
}

/*
	Name: function_f2d8f1d0
	Namespace: challenges
	Checksum: 0x52124038
	Offset: 0x1E88
	Size: 0x4C9
	Parameters: 0
	Flags: None
*/
function function_f2d8f1d0()
{
	/#
		var_2884746a = [];
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		Array::add(var_2884746a, "Dev Block strings are not supported");
		foreach(challenge in var_2884746a)
		{
			self AddPlayerStat(challenge, 1000);
			iprintln("Dev Block strings are not supported" + challenge);
			wait(1);
		}
	#/
}


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

#namespace scoreevents;

/*
	Name: __init__sytem__
	Namespace: scoreevents
	Checksum: 0x752DAFB8
	Offset: 0x6B8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("scoreevents", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: scoreevents
	Checksum: 0x64F7635D
	Offset: 0x6F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&main);
}

/*
	Name: main
	Namespace: scoreevents
	Checksum: 0x7E37DF8C
	Offset: 0x728
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function main()
{
	level.scoreEventCallbacks = [];
	level.scoreEventGameEndCallback = &onGameEnd;
	registerScoreEventCallback("playerKilled", &scoreEventPlayerKill);
	registerScoreEventCallback("actorKilled", &function_e1c28246);
}

/*
	Name: scoreEventTableLookupInt
	Namespace: scoreevents
	Checksum: 0x406EA853
	Offset: 0x7A8
	Size: 0x51
	Parameters: 2
	Flags: None
*/
function scoreEventTableLookupInt(index, scoreEventColumn)
{
	return Int(tableLookup(getScoreEventTableName(), 0, index, scoreEventColumn));
}

/*
	Name: scoreEventTableLookup
	Namespace: scoreevents
	Checksum: 0x45335BB8
	Offset: 0x808
	Size: 0x41
	Parameters: 2
	Flags: None
*/
function scoreEventTableLookup(index, scoreEventColumn)
{
	return tableLookup(getScoreEventTableName(), 0, index, scoreEventColumn);
}

/*
	Name: function_f8204815
	Namespace: scoreevents
	Checksum: 0xAE836BA6
	Offset: 0x858
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_f8204815(event)
{
	foreach(e_player in level.players)
	{
		processScoreEvent(event, e_player);
	}
	if(isdefined(level.teamScoreUICallback))
	{
		level thread [[level.teamScoreUICallback]](event);
	}
}

/*
	Name: registerScoreEventCallback
	Namespace: scoreevents
	Checksum: 0xDD83568
	Offset: 0x920
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function registerScoreEventCallback(callback, func)
{
	if(!isdefined(level.scoreEventCallbacks[callback]))
	{
		level.scoreEventCallbacks[callback] = [];
	}
	level.scoreEventCallbacks[callback][level.scoreEventCallbacks[callback].size] = func;
}

/*
	Name: function_e1c28246
	Namespace: scoreevents
	Checksum: 0x89F4E20E
	Offset: 0x988
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function function_e1c28246(data, time)
{
	victim = data.victim;
	attacker = data.attacker;
	time = data.time;
	victim = data.victim;
	meansOfDeath = data.sMeansOfDeath;
	weapon = level.weaponNone;
	if(!level.gametype === "raid")
	{
		return;
	}
	if(!isdefined(attacker))
	{
		return;
	}
	if(!isPlayer(attacker))
	{
		return;
	}
	if(isdefined(data.weapon))
	{
		weapon = data.weapon;
		weaponClass = util::getWeaponClass(data.weapon);
	}
	attacker thread updateMultiKills(weapon, weaponClass);
}

/*
	Name: scoreEventPlayerKill
	Namespace: scoreevents
	Checksum: 0x9EFBBB5
	Offset: 0xAE0
	Size: 0x10D3
	Parameters: 2
	Flags: None
*/
function scoreEventPlayerKill(data, time)
{
	victim = data.victim;
	attacker = data.attacker;
	time = data.time;
	level.numKills++;
	victim = data.victim;
	attacker.lastKilledPlayer = victim;
	wasDefusing = data.wasDefusing;
	wasPlanting = data.wasPlanting;
	wasOnGround = data.victimOnGround;
	meansOfDeath = data.sMeansOfDeath;
	weapon = level.weaponNone;
	if(isdefined(data.weapon))
	{
		weapon = data.weapon;
		weaponClass = util::getWeaponClass(data.weapon);
	}
	victim.anglesOnDeath = victim getPlayerAngles();
	if(meansOfDeath == "MOD_GRENADE" || meansOfDeath == "MOD_GRENADE_SPLASH" || meansOfDeath == "MOD_EXPLOSIVE" || meansOfDeath == "MOD_EXPLOSIVE_SPLASH" || meansOfDeath == "MOD_PROJECTILE" || meansOfDeath == "MOD_PROJECTILE_SPLASH")
	{
		if(weapon == level.weaponNone && isdefined(data.victim.explosiveInfo["weapon"]))
		{
			weapon = data.victim.explosiveInfo["weapon"];
		}
	}
	if(level.teambased)
	{
		attacker.lastKillTime = time;
		if(isdefined(victim.lastKillTime) && victim.lastKillTime > time - 3000)
		{
			if(isdefined(victim.lastKilledPlayer) && victim.lastKilledPlayer util::IsEnemyPlayer(attacker) == 0 && attacker != victim.lastKilledPlayer)
			{
				processScoreEvent("kill_enemy_who_killed_teammate", attacker, victim, weapon);
				victim RecordKillModifier("avenger");
			}
		}
		if(isdefined(victim.damagedPlayers))
		{
			keys = getArrayKeys(victim.damagedPlayers);
			for(i = 0; i < keys.size; i++)
			{
				key = keys[i];
				if(key == attacker.clientid)
				{
					continue;
				}
				if(!isdefined(victim.damagedPlayers[key].entity))
				{
					continue;
				}
				if(attacker util::IsEnemyPlayer(victim.damagedPlayers[key].entity))
				{
					continue;
				}
				if(time - victim.damagedPlayers[key].time < 1000)
				{
					processScoreEvent("kill_enemy_injuring_teammate", attacker, victim, weapon);
					if(isdefined(victim.damagedPlayers[key].entity))
					{
						victim.damagedPlayers[key].entity.lastRescuedBy = attacker;
						victim.damagedPlayers[key].entity.lastRescuedTime = time;
					}
					victim RecordKillModifier("defender");
				}
			}
		}
	}
	switch(weapon.name)
	{
		case "hatchet":
		{
			attacker.pers["tomahawks"]++;
			attacker.tomahawks = attacker.pers["tomahawks"];
			processScoreEvent("hatchet_kill", attacker, victim, weapon);
			if(isdefined(data.victim.explosiveInfo["projectile_bounced"]) && data.victim.explosiveInfo["projectile_bounced"] == 1)
			{
				level.globalBankshots++;
				processScoreEvent("bounce_hatchet_kill", attacker, victim, weapon);
			}
			break;
		}
		case "inventory_supplydrop":
		case "supplydrop":
		{
			if(meansOfDeath == "MOD_HIT_BY_OBJECT" || meansOfDeath == "MOD_CRUSH")
			{
				processScoreEvent("kill_enemy_with_care_package_crush", attacker, victim, weapon);
			}
			else
			{
				processScoreEvent("kill_enemy_with_hacked_care_package", attacker, victim, weapon);
			}
			break;
		}
	}
	if(isdefined(data.victimWeapon))
	{
		if(data.victimWeapon.name == "minigun")
		{
			processScoreEvent("killed_death_machine_enemy", attacker, victim, weapon);
		}
		else if(data.victimWeapon.name == "m32")
		{
			processScoreEvent("killed_multiple_grenade_launcher_enemy", attacker, victim, weapon);
		}
	}
	attacker thread updateMultiKills(weapon, weaponClass);
	if(level.numKills == 1)
	{
		victim RecordKillModifier("firstblood");
		processScoreEvent("first_kill", attacker, victim, weapon);
	}
	else if(isdefined(attacker.lastKilledBy))
	{
		if(attacker.lastKilledBy == victim)
		{
			level.globalPaybacks++;
			processScoreEvent("revenge_kill", attacker, victim, weapon);
			attacker addweaponstat(weapon, "revenge_kill", 1);
			victim RecordKillModifier("revenge");
			attacker.lastKilledBy = undefined;
		}
	}
	if(isdefined(victim.lastManSD) && victim.lastManSD == 1)
	{
		processScoreEvent("final_kill_elimination", attacker, victim, weapon);
		if(isdefined(attacker.lastManSD) && attacker.lastManSD == 1)
		{
			processScoreEvent("elimination_and_last_player_alive", attacker, victim, weapon);
		}
	}
	if(is_weapon_valid(meansOfDeath, weapon, weaponClass))
	{
		if(isdefined(victim.vAttackerOrigin))
		{
			attackerOrigin = victim.vAttackerOrigin;
		}
		else
		{
			attackerOrigin = attacker.origin;
		}
		distToVictim = DistanceSquared(victim.origin, attackerOrigin);
		weap_min_dmg_range = get_distance_for_weapon(weapon, weaponClass);
		if(distToVictim > weap_min_dmg_range)
		{
			attacker challenges::longDistanceKill();
			if(weapon.name == "hatchet")
			{
				attacker challenges::longDistanceHatchetKill();
			}
			processScoreEvent("longshot_kill", attacker, victim, weapon);
			attacker addweaponstat(weapon, "longshot_kill", 1);
			attacker.pers["longshots"]++;
			attacker.longshots = attacker.pers["longshots"];
			victim RecordKillModifier("longshot");
		}
	}
	if(isalive(attacker))
	{
		if(attacker.health < attacker.maxhealth * 0.35)
		{
			attacker.lastKillWhenInjured = time;
			processScoreEvent("kill_enemy_when_injured", attacker, victim, weapon);
			attacker addweaponstat(weapon, "kill_enemy_when_injured", 1);
			if(attacker hasPerk("specialty_bulletflinch"))
			{
				attacker AddPlayerStat("perk_bulletflinch_kills", 1);
			}
		}
	}
	else if(isdefined(attacker.deathtime) && attacker.deathtime + 800 < time && !attacker IsInVehicle())
	{
		level.globalAfterlifes++;
		processScoreEvent("kill_enemy_after_death", attacker, victim, weapon);
		victim RecordKillModifier("posthumous");
	}
	if(attacker.cur_death_streak >= 3)
	{
		level.globalComebacks++;
		processScoreEvent("comeback_from_deathstreak", attacker, victim, weapon);
		victim RecordKillModifier("comeback");
	}
	if(meansOfDeath == "MOD_MELEE" || meansOfDeath == "MOD_MELEE_ASSASSINATE" && !weapon.isRiotShield)
	{
		attacker.pers["stabs"]++;
		attacker.stabs = attacker.pers["stabs"];
		vAngles = victim.anglesOnDeath[1];
		pAngles = attacker.anglesOnKill[1];
		angleDiff = AngleClamp180(vAngles - pAngles);
		if(angleDiff > -30 && angleDiff < 70)
		{
			level.globalBackstabs++;
			processScoreEvent("backstabber_kill", attacker, victim, weapon);
			attacker addweaponstat(weapon, "backstabber_kill", 1);
			attacker.pers["backstabs"]++;
			attacker.backstabs = attacker.pers["backstabs"];
		}
	}
	else if(isdefined(victim.firstTimeDamaged) && victim.firstTimeDamaged == time)
	{
		if(weaponClass == "weapon_sniper")
		{
			attacker thread updateOneShotMultiKills(victim, weapon, victim.firstTimeDamaged);
			attacker addweaponstat(weapon, "kill_enemy_one_bullet", 1);
		}
	}
	if(isdefined(attacker.tookWeaponFrom[weapon]) && isdefined(attacker.tookWeaponFrom[weapon].previousOwner))
	{
		pickedUpWeapon = attacker.tookWeaponFrom[weapon];
		if(pickedUpWeapon.previousOwner == victim)
		{
			processScoreEvent("kill_enemy_with_their_weapon", attacker, victim, weapon);
			attacker addweaponstat(weapon, "kill_enemy_with_their_weapon", 1);
			if(isdefined(pickedUpWeapon.weapon) && isdefined(pickedUpWeapon.sMeansOfDeath))
			{
				if(pickedUpWeapon.weapon == level.weaponBaseMeleeHeld && (pickedUpWeapon.sMeansOfDeath == "MOD_MELEE" || pickedUpWeapon.sMeansOfDeath == "MOD_MELEE_ASSASSINATE"))
				{
					attacker addweaponstat(level.weaponBaseMeleeHeld, "kill_enemy_with_their_weapon", 1);
				}
			}
		}
	}
	if(wasDefusing)
	{
		processScoreEvent("killed_bomb_defuser", attacker, victim, weapon);
	}
	else if(wasPlanting)
	{
		processScoreEvent("killed_bomb_planter", attacker, victim, weapon);
	}
	specificWeaponKill(attacker, victim, weapon);
	attacker.cur_death_streak = 0;
	attacker disabledeathstreak();
}

/*
	Name: specificWeaponKill
	Namespace: scoreevents
	Checksum: 0x8C92906E
	Offset: 0x1BC0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function specificWeaponKill(attacker, victim, weapon, killstreak)
{
}

/*
	Name: multiKill
	Namespace: scoreevents
	Checksum: 0x4A78EB6E
	Offset: 0x1BF0
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function multiKill(killcount, weapon)
{
	/#
		Assert(killcount > 1);
	#/
	self challenges::multiKill(killcount, weapon);
	if(killcount > 8)
	{
		processScoreEvent("multikill_more_than_8", self, undefined, weapon);
	}
	else
	{
		processScoreEvent("multikill_" + killcount, self, undefined, weapon);
	}
	self RecordMultiKill(killcount);
}

/*
	Name: is_weapon_valid
	Namespace: scoreevents
	Checksum: 0x26E32E55
	Offset: 0x1CC8
	Size: 0xDD
	Parameters: 3
	Flags: None
*/
function is_weapon_valid(meansOfDeath, weapon, weaponClass)
{
	valid_weapon = 0;
	if(get_distance_for_weapon(weapon, weaponClass) == 0)
	{
		valid_weapon = 0;
	}
	else if(meansOfDeath == "MOD_PISTOL_BULLET" || meansOfDeath == "MOD_RIFLE_BULLET")
	{
		valid_weapon = 1;
	}
	else if(meansOfDeath == "MOD_HEAD_SHOT")
	{
		valid_weapon = 1;
	}
	else if(weapon.name == "hatchet" && meansOfDeath == "MOD_IMPACT")
	{
		valid_weapon = 1;
	}
	return valid_weapon;
}

/*
	Name: updateMultiKills
	Namespace: scoreevents
	Checksum: 0x56C02A99
	Offset: 0x1DB0
	Size: 0x3C3
	Parameters: 3
	Flags: None
*/
function updateMultiKills(weapon, weaponClass, killstreak)
{
	self endon("disconnect");
	level endon("game_ended");
	self notify("updateRecentKills");
	self endon("updateRecentKills");
	baseWeapon = GetWeapon(GetRefFromItemIndex(GetBaseWeaponItemIndex(weapon)));
	if(!isdefined(self.recentKillCount))
	{
		self.recentKillCount = 0;
	}
	if(!isdefined(self.recentKillCountWeapon) || self.recentKillCountWeapon != baseWeapon)
	{
		self.recentKillCountSameWeapon = 0;
		self.recentKillCountWeapon = baseWeapon;
	}
	if(!isdefined(killstreak))
	{
		self.recentKillCountSameWeapon++;
		self.recentKillCount++;
	}
	if(!isdefined(self.recent_LMG_SMG_KillCount))
	{
		self.recent_LMG_SMG_KillCount = 0;
	}
	if(!isdefined(self.recentRemoteMissileKillCount))
	{
		self.recentRemoteMissileKillCount = 0;
	}
	if(!isdefined(self.recentRCBombKillCount))
	{
		self.recentRCBombKillCount = 0;
	}
	if(!isdefined(self.recentMGLKillCount))
	{
		self.recentMGLKillCount = 0;
	}
	if(isdefined(weaponClass))
	{
		if(weaponClass == "weapon_lmg" || weaponClass == "weapon_smg")
		{
			if(self PlayerAds() < 1)
			{
				self.recent_LMG_SMG_KillCount++;
			}
		}
	}
	if(isdefined(killstreak))
	{
		switch(killstreak)
		{
			case "remote_missile":
			{
				self.recentRemoteMissileKillCount++;
				break;
			}
			case "rcbomb":
			{
				self.recentRCBombKillCount++;
				break;
			}
			case "inventory_m32":
			case "m32":
			{
				self.recentMGLKillCount++;
				break;
			}
		}
	}
	if(self.recentKillCountSameWeapon == 2)
	{
		self addweaponstat(weapon, "multikill_2", 1);
	}
	else if(self.recentKillCountSameWeapon == 3)
	{
		self addweaponstat(weapon, "multikill_3", 1);
	}
	self waitTillTimeoutOrDeath(4);
	if(self.recent_LMG_SMG_KillCount >= 3)
	{
		self challenges::multi_LMG_SMG_Kill();
	}
	if(self.recentRCBombKillCount >= 2)
	{
		self challenges::multi_RCBomb_Kill();
	}
	if(self.recentMGLKillCount >= 3)
	{
		self challenges::multi_MGL_Kill();
	}
	if(self.recentRemoteMissileKillCount >= 3)
	{
		self challenges::multi_RemoteMissile_Kill();
	}
	if(self.recentKillCount > 1)
	{
		self multiKill(self.recentKillCount, weapon);
	}
	self.recentKillCount = 0;
	self.recentKillCountSameWeapon = 0;
	self.recentKillCountWeapon = undefined;
	self.recent_LMG_SMG_KillCount = 0;
	self.recentRemoteMissileKillCount = 0;
	self.recentRCBombKillCount = 0;
	self.recentMGLKillCount = 0;
}

/*
	Name: waitTillTimeoutOrDeath
	Namespace: scoreevents
	Checksum: 0xDBD0869E
	Offset: 0x2180
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function waitTillTimeoutOrDeath(timeout)
{
	self endon("death");
	wait(timeout);
}

/*
	Name: updateOneShotMultiKills
	Namespace: scoreevents
	Checksum: 0xEE81E220
	Offset: 0x21A8
	Size: 0xDF
	Parameters: 3
	Flags: None
*/
function updateOneShotMultiKills(victim, weapon, firstTimeDamaged)
{
	self endon("death");
	self endon("disconnect");
	self notify("updateoneshotmultikills" + firstTimeDamaged);
	self endon("updateoneshotmultikills" + firstTimeDamaged);
	if(!isdefined(self.oneshotmultikills))
	{
		self.oneshotmultikills = 0;
	}
	self.oneshotmultikills++;
	wait(1);
	if(self.oneshotmultikills > 1)
	{
		processScoreEvent("kill_enemies_one_bullet", self, victim, weapon);
	}
	else
	{
		processScoreEvent("kill_enemy_one_bullet", self, victim, weapon);
	}
	self.oneshotmultikills = 0;
}

/*
	Name: get_distance_for_weapon
	Namespace: scoreevents
	Checksum: 0x996C99CF
	Offset: 0x2290
	Size: 0x139
	Parameters: 2
	Flags: None
*/
function get_distance_for_weapon(weapon, weaponClass)
{
	Distance = 0;
	switch(weaponClass)
	{
		case "weapon_smg":
		{
			Distance = 1562500;
			break;
		}
		case "weapon_assault":
		{
			Distance = 2250000;
			break;
		}
		case "weapon_lmg":
		{
			Distance = 2250000;
			break;
		}
		case "weapon_sniper":
		{
			Distance = 3062500;
			break;
		}
		case "weapon_pistol":
		{
			Distance = 490000;
			break;
		}
		case "weapon_cqb":
		{
			Distance = 422500;
			break;
		}
		case "weapon_special":
		{
			if(weapon == level.weaponBallisticKnife)
			{
				Distance = 2250000;
			}
			break;
		}
		case "weapon_grenade":
		{
			if(weapon.name == "hatchet")
			{
				Distance = 6250000;
			}
			break;
		}
		case default:
		{
			Distance = 0;
			break;
		}
	}
	return Distance;
}

/*
	Name: onGameEnd
	Namespace: scoreevents
	Checksum: 0xCBD91BA5
	Offset: 0x23D8
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function onGameEnd(data)
{
	player = data.player;
	winner = data.winner;
	if(isdefined(winner))
	{
		if(level.teambased)
		{
			if(winner != "tie" && player.team == winner)
			{
				processScoreEvent("won_match", player);
				return;
			}
			break;
		}
		placement = level.placement["all"];
		topThreePlayers = min(3, placement.size);
		for(index = 0; index < topThreePlayers; index++)
		{
			if(level.placement["all"][index] == player)
			{
				processScoreEvent("won_match", player);
				return;
			}
		}
	}
	processScoreEvent("completed_match", player);
}


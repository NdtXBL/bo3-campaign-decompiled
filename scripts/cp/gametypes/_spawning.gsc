#using scripts\cp\_callbacks;
#using scripts\cp\_laststand;
#using scripts\cp\_tacticalinsertion;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_tacticalinsertion;

#namespace Spawning;

/*
	Name: __init__sytem__
	Namespace: Spawning
	Checksum: 0x540FC76F
	Offset: 0x3D0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("spawning", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: Spawning
	Checksum: 0xB3039495
	Offset: 0x410
	Size: 0x1ED
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level init_spawn_system();
	level.recently_deceased = [];
	foreach(team in level.teams)
	{
		level.recently_deceased[team] = util::spawn_array_struct();
	}
	callback::on_connecting(&onPlayerConnect);
	level.spawnProtectionTime = GetGametypeSetting("spawnprotectiontime");
	if(isdefined(level.spawnProtectionTime))
	{
	}
	else
	{
	}
	level.spawnProtectionTimeMS = Int(0 * 1000);
	/#
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		level.test_spawn_point_index = 0;
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
	return;
}

/*
	Name: init_spawn_system
	Namespace: Spawning
	Checksum: 0x9A62A900
	Offset: 0x608
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function init_spawn_system()
{
	level.spawnsystem = spawnstruct();
	spawnsystem = level.spawnsystem;
	if(!isdefined(spawnsystem.unifiedSideSwitching))
	{
		spawnsystem.unifiedSideSwitching = 1;
	}
	spawnsystem.objective_facing_bonus = 0;
	spawnsystem.iSPAWN_TEAMMASK = [];
	spawnsystem.iSPAWN_TEAMMASK_FREE = 1;
	spawnsystem.iSPAWN_TEAMMASK["free"] = spawnsystem.iSPAWN_TEAMMASK_FREE;
	all = spawnsystem.iSPAWN_TEAMMASK_FREE;
	count = 1;
	foreach(team in level.teams)
	{
		spawnsystem.iSPAWN_TEAMMASK[team] = 1 << count;
		all = all | spawnsystem.iSPAWN_TEAMMASK[team];
		count++;
	}
	spawnsystem.iSPAWN_TEAMMASK["all"] = all;
}

/*
	Name: onPlayerConnect
	Namespace: Spawning
	Checksum: 0x8581FB98
	Offset: 0x7C8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function onPlayerConnect()
{
	level endon("game_ended");
	self setEnterTime(GetTime());
	self thread onPlayerSpawned();
	self thread onTeamChange();
	self thread onGrenadeThrow();
}

/*
	Name: onPlayerSpawned
	Namespace: Spawning
	Checksum: 0x74004CDA
	Offset: 0x840
	Size: 0x10F
	Parameters: 0
	Flags: None
*/
function onPlayerSpawned()
{
	self endon("disconnect");
	self endon("killSpawnMonitor");
	level endon("game_ended");
	self flag::init("player_has_red_flashing_overlay");
	self flag::init("player_is_invulnerable");
	for(;;)
	{
		self waittill("spawned_player");
		if(isdefined(self.pers["hasRadar"]) && self.pers["hasRadar"])
		{
			self.hasSpyplane = 1;
		}
		self enable_player_influencers(1);
		self thread gameskill::playerHealthRegen();
		self thread onDeath();
		self laststand::revive_hud_create();
	}
}

/*
	Name: onDeath
	Namespace: Spawning
	Checksum: 0xCB9A2035
	Offset: 0x958
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function onDeath()
{
	self endon("disconnect");
	self endon("killSpawnMonitor");
	level endon("game_ended");
	self waittill("death");
	self enable_player_influencers(0);
	level create_friendly_influencer("friend_dead", self.origin, self.team);
}

/*
	Name: onTeamChange
	Namespace: Spawning
	Checksum: 0x532D9359
	Offset: 0x9E0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function onTeamChange()
{
	self endon("disconnect");
	level endon("game_ended");
	self endon("hash_7b1c9d84");
	while(1)
	{
		self waittill("joined_team");
		self player_influencers_set_team();
		wait(0.05);
	}
}

/*
	Name: onGrenadeThrow
	Namespace: Spawning
	Checksum: 0xB030B128
	Offset: 0xA48
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function onGrenadeThrow()
{
	self endon("disconnect");
	self endon("hash_e9460c7d");
	level endon("game_ended");
	while(1)
	{
		self waittill("grenade_fire", grenade, weapon);
		level thread create_grenade_influencers(self.pers["team"], weapon, grenade);
		wait(0.05);
	}
}

/*
	Name: get_friendly_team_mask
	Namespace: Spawning
	Checksum: 0x440CA423
	Offset: 0xAE0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function get_friendly_team_mask(team)
{
	if(level.teambased)
	{
		team_mask = util::getTeamMask(team);
	}
	else
	{
		team_mask = level.spawnsystem.iSPAWN_TEAMMASK_FREE;
	}
	return team_mask;
}

/*
	Name: get_enemy_team_mask
	Namespace: Spawning
	Checksum: 0xA92E677C
	Offset: 0xB40
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function get_enemy_team_mask(team)
{
	if(level.teambased)
	{
		team_mask = util::getOtherTeamsMask(team);
	}
	else
	{
		team_mask = level.spawnsystem.iSPAWN_TEAMMASK_FREE;
	}
	return team_mask;
}

/*
	Name: create_influencer
	Namespace: Spawning
	Checksum: 0x859F2FAC
	Offset: 0xBA0
	Size: 0x67
	Parameters: 3
	Flags: None
*/
function create_influencer(name, origin, team_mask)
{
	self.influencers[name] = AddInfluencer(name, origin, team_mask);
	self thread watch_remove_influencer();
	return self.influencers[name];
}

/*
	Name: create_friendly_influencer
	Namespace: Spawning
	Checksum: 0x369DE698
	Offset: 0xC10
	Size: 0x77
	Parameters: 3
	Flags: None
*/
function create_friendly_influencer(name, origin, team)
{
	team_mask = self get_friendly_team_mask(team);
	self.influencersFriendly[name] = create_influencer(name, origin, team_mask);
	return self.influencersFriendly[name];
}

/*
	Name: create_enemy_influencer
	Namespace: Spawning
	Checksum: 0xCE625553
	Offset: 0xC90
	Size: 0x77
	Parameters: 3
	Flags: None
*/
function create_enemy_influencer(name, origin, team)
{
	team_mask = self get_enemy_team_mask(team);
	self.influencersEnemy[name] = create_influencer(name, origin, team_mask);
	return self.influencersEnemy[name];
}

/*
	Name: create_entity_influencer
	Namespace: Spawning
	Checksum: 0x4142A6B8
	Offset: 0xD10
	Size: 0x5F
	Parameters: 2
	Flags: None
*/
function create_entity_influencer(name, team_mask)
{
	self.influencers[name] = AddEntityInfluencer(name, self, team_mask);
	self thread watch_remove_influencer();
	return self.influencers[name];
}

/*
	Name: create_entity_friendly_influencer
	Namespace: Spawning
	Checksum: 0xACFB3DB
	Offset: 0xD78
	Size: 0x49
	Parameters: 1
	Flags: None
*/
function create_entity_friendly_influencer(name)
{
	team_mask = self get_friendly_team_mask();
	return self create_entity_masked_friendly_influencer(name, team_mask);
}

/*
	Name: create_entity_enemy_influencer
	Namespace: Spawning
	Checksum: 0x87F6F8FD
	Offset: 0xDD0
	Size: 0x51
	Parameters: 2
	Flags: None
*/
function create_entity_enemy_influencer(name, team)
{
	team_mask = self get_enemy_team_mask(team);
	return self create_entity_masked_enemy_influencer(name, team_mask);
}

/*
	Name: create_entity_masked_friendly_influencer
	Namespace: Spawning
	Checksum: 0xBD462A64
	Offset: 0xE30
	Size: 0x4F
	Parameters: 2
	Flags: None
*/
function create_entity_masked_friendly_influencer(name, team_mask)
{
	self.influencersFriendly[name] = self create_entity_influencer(name, team_mask);
	return self.influencersFriendly[name];
}

/*
	Name: create_entity_masked_enemy_influencer
	Namespace: Spawning
	Checksum: 0x5F67B743
	Offset: 0xE88
	Size: 0x4F
	Parameters: 2
	Flags: None
*/
function create_entity_masked_enemy_influencer(name, team_mask)
{
	self.influencersEnemy[name] = self create_entity_influencer(name, team_mask);
	return self.influencersEnemy[name];
}

/*
	Name: create_player_influencers
	Namespace: Spawning
	Checksum: 0x4B5B2F5C
	Offset: 0xEE0
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function create_player_influencers()
{
	/#
		Assert(!isdefined(self.influencers));
	#/
	/#
		Assert(!isdefined(self.influencers));
	#/
	if(!level.teambased)
	{
		team_mask = level.spawnsystem.iSPAWN_TEAMMASK_FREE;
		other_team_mask = level.spawnsystem.iSPAWN_TEAMMASK_FREE;
		weapon_team_mask = level.spawnsystem.iSPAWN_TEAMMASK_FREE;
	}
	else if(isdefined(self.pers["team"]))
	{
		team = self.pers["team"];
		team_mask = util::getTeamMask(team);
		enemy_teams_mask = util::getOtherTeamsMask(team);
	}
	else
	{
		team_mask = 0;
		enemy_teams_mask = 0;
	}
	angles = self.angles;
	origin = self.origin;
	up = (0, 0, 1);
	FORWARD = (1, 0, 0);
	self.influencers = [];
	self.friendlyInfluencers = [];
	self.enemyInfluencers = [];
	self create_entity_masked_enemy_influencer("enemy", enemy_teams_mask);
	if(level.teambased)
	{
		self create_entity_masked_friendly_influencer("friend", team_mask);
	}
	if(!isdefined(self.pers["team"]) || self.pers["team"] == "spectator")
	{
		self enable_influencers(0);
	}
}

/*
	Name: remove_influencers
	Namespace: Spawning
	Checksum: 0x7ABEF93A
	Offset: 0x1118
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function remove_influencers()
{
	foreach(influencer in self.influencers)
	{
		RemoveInfluencer(influencer);
	}
	self.influencers = [];
	if(isdefined(self.influencersFriendly))
	{
		self.influencersFriendly = [];
	}
	if(isdefined(self.influencersEnemy))
	{
		self.influencersEnemy = [];
	}
}

/*
	Name: watch_remove_influencer
	Namespace: Spawning
	Checksum: 0x20E411C5
	Offset: 0x11E8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function watch_remove_influencer()
{
	self endon("death");
	self notify("watch_remove_influencer");
	self endon("watch_remove_influencer");
	self waittill("influencer_removed", index);
	ArrayRemoveValue(self.influencers, index);
	if(isdefined(self.influencersFriendly))
	{
		ArrayRemoveValue(self.influencersFriendly, index);
	}
	if(isdefined(self.influencersEnemy))
	{
		ArrayRemoveValue(self.influencersEnemy, index);
	}
	self thread watch_remove_influencer();
}

/*
	Name: enable_influencers
	Namespace: Spawning
	Checksum: 0x569707BD
	Offset: 0x12B8
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function enable_influencers(enabled)
{
	foreach(influencer in self.influencers)
	{
		EnableInfluencer(influencer, enabled);
	}
}

/*
	Name: enable_player_influencers
	Namespace: Spawning
	Checksum: 0xE7718DE5
	Offset: 0x1360
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function enable_player_influencers(enabled)
{
	if(!isdefined(self.influencers))
	{
		self create_player_influencers();
	}
	self enable_influencers(enabled);
}

/*
	Name: player_influencers_set_team
	Namespace: Spawning
	Checksum: 0x2C59CBAF
	Offset: 0x13B0
	Size: 0x1C9
	Parameters: 0
	Flags: None
*/
function player_influencers_set_team()
{
	if(!level.teambased)
	{
		team_mask = level.spawnsystem.iSPAWN_TEAMMASK_FREE;
		enemy_teams_mask = level.spawnsystem.iSPAWN_TEAMMASK_FREE;
	}
	else
	{
		team = self.pers["team"];
		team_mask = util::getTeamMask(team);
		enemy_teams_mask = util::getOtherTeamsMask(team);
	}
	if(isdefined(self.influencersFriendly))
	{
		foreach(influencer in self.influencersFriendly)
		{
			SetInfluencerTeammask(influencer, team_mask);
		}
	}
	else if(isdefined(self.influencersEnemy))
	{
		foreach(influencer in self.influencersEnemy)
		{
			SetInfluencerTeammask(influencer, enemy_teams_mask);
		}
	}
}

/*
	Name: create_grenade_influencers
	Namespace: Spawning
	Checksum: 0xE7627E1E
	Offset: 0x1588
	Size: 0x113
	Parameters: 3
	Flags: None
*/
function create_grenade_influencers(parent_team, weapon, grenade)
{
	PixBeginEvent("create_grenade_influencers");
	spawn_influencer = weapon.spawnInfluencer;
	if(isdefined(grenade.origin) && spawn_influencer != "")
	{
		if(!level.teambased)
		{
			weapon_team_mask = level.spawnsystem.iSPAWN_TEAMMASK_FREE;
		}
		else
		{
			weapon_team_mask = util::getOtherTeamsMask(parent_team);
			if(level.friendlyfire)
			{
				weapon_team_mask = weapon_team_mask | util::getTeamMask(parent_team);
			}
		}
		grenade create_entity_masked_enemy_influencer(spawn_influencer, weapon_team_mask);
	}
	PixEndEvent();
}

/*
	Name: create_map_placed_influencers
	Namespace: Spawning
	Checksum: 0x977BE2DA
	Offset: 0x16A8
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function create_map_placed_influencers()
{
	staticInfluencerEnts = GetEntArray("mp_uspawn_influencer", "classname");
	for(i = 0; i < staticInfluencerEnts.size; i++)
	{
		staticInfluencerEnt = staticInfluencerEnts[i];
		create_map_placed_influencer(staticInfluencerEnt);
	}
}

/*
	Name: create_map_placed_influencer
	Namespace: Spawning
	Checksum: 0x26A664DC
	Offset: 0x1738
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function create_map_placed_influencer(influencer_entity)
{
	influencer_id = -1;
	if(isdefined(influencer_entity.script_noteworty))
	{
		team_mask = util::getTeamMask(influencer_entity.script_team);
		level create_enemy_influencer(influencer_entity.script_noteworty, influencer_entity.origin, team_mask);
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported");
	}
	/#
	#/
	return influencer_id;
}

/*
	Name: updateAllSpawnPoints
	Namespace: Spawning
	Checksum: 0xB6F71348
	Offset: 0x17F0
	Size: 0x2F9
	Parameters: 0
	Flags: None
*/
function updateAllSpawnPoints()
{
	foreach(team in level.teams)
	{
		function_db51ac16(team);
	}
	foreach(team in level.teams)
	{
		if(level.unified_spawn_points[team].a.size > 254)
		{
			level.unified_spawn_points[team].b = Array::clamp_size(Array::randomize(level.unified_spawn_points[team].a), 254);
			continue;
		}
		level.unified_spawn_points[team].b = level.unified_spawn_points[team].a;
	}
	clearSpawnPoints();
	if(level.teambased)
	{
		foreach(team in level.teams)
		{
			addSpawnPoints(team, level.unified_spawn_points[team].b);
		}
		break;
	}
	foreach(team in level.teams)
	{
		addSpawnPoints("free", level.unified_spawn_points[team].b);
	}
}

/*
	Name: onSpawnPlayer_Unified
	Namespace: Spawning
	Checksum: 0x3668EBCC
	Offset: 0x1AF8
	Size: 0x339
	Parameters: 1
	Flags: None
*/
function onSpawnPlayer_Unified(predictedSpawn)
{
	if(!isdefined(predictedSpawn))
	{
		predictedSpawn = 0;
	}
	/#
		if(GetDvarInt("Dev Block strings are not supported") != 0)
		{
			spawn_point = get_debug_spawnpoint(self);
			self spawn(spawn_point.origin, spawn_point.angles);
			return;
		}
	#/
	use_new_spawn_system = 1;
	initial_spawn = 1;
	if(isdefined(self.uspawn_already_spawned))
	{
		initial_spawn = !self.uspawn_already_spawned;
	}
	if(level.useStartSpawns)
	{
		use_new_spawn_system = 0;
	}
	if(level.gametype == "sd")
	{
		use_new_spawn_system = 0;
	}
	util::set_dvar_if_unset("scr_spawn_force_unified", "0");
	spawnOverride = self tacticalinsertion::overrideSpawn(predictedSpawn);
	if(use_new_spawn_system || GetDvarInt("scr_spawn_force_unified") != 0)
	{
		if(!spawnOverride)
		{
			spawn_point = getSpawnPoint(self, predictedSpawn);
			if(isdefined(spawn_point))
			{
				origin = spawn_point["origin"];
				angles = spawn_point["angles"];
				if(predictedSpawn)
				{
					self predictSpawnPoint(origin, angles);
				}
				else
				{
					level create_enemy_influencer("enemy_spawn", origin, self.pers["team"]);
					self spawn(origin, angles);
				}
			}
			else
			{
				println("Dev Block strings are not supported");
				callback::abort_level();
			}
			/#
			#/
		}
		else if(predictedSpawn && isdefined(self.tacticalinsertion))
		{
			self predictSpawnPoint(self.tacticalinsertion.origin, self.tacticalinsertion.angles);
		}
		if(!predictedSpawn)
		{
			self.lastspawntime = GetTime();
			self enable_player_influencers(1);
		}
	}
	else if(!spawnOverride)
	{
		[[level.onSpawnPlayer]](predictedSpawn);
	}
	if(!predictedSpawn)
	{
		self.uspawn_already_spawned = 1;
	}
	return;
}

/*
	Name: getSpawnPoint
	Namespace: Spawning
	Checksum: 0xD9DF1758
	Offset: 0x1E40
	Size: 0x147
	Parameters: 2
	Flags: None
*/
function getSpawnPoint(player_entity, predictedSpawn)
{
	if(!isdefined(predictedSpawn))
	{
		predictedSpawn = 0;
	}
	if(level.teambased)
	{
		point_team = player_entity.pers["team"];
		influencer_team = player_entity.pers["team"];
	}
	else
	{
		point_team = "free";
		influencer_team = "free";
	}
	if(level.teambased && isdefined(game["switchedsides"]) && game["switchedsides"] && level.spawnsystem.unifiedSideSwitching)
	{
		point_team = util::getOtherTeam(point_team);
	}
	best_spawn = get_best_spawnpoint(point_team, influencer_team, player_entity, predictedSpawn);
	if(!predictedSpawn)
	{
		player_entity.last_spawn_origin = best_spawn["origin"];
	}
	return best_spawn;
}

/*
	Name: get_debug_spawnpoint
	Namespace: Spawning
	Checksum: 0x3954692E
	Offset: 0x1F90
	Size: 0x279
	Parameters: 1
	Flags: None
*/
function get_debug_spawnpoint(player)
{
	if(level.teambased)
	{
		team = player.pers["team"];
	}
	else
	{
		team = "free";
	}
	index = level.test_spawn_point_index;
	level.test_spawn_point_index++;
	if(team == "free")
	{
		spawn_counts = 0;
		foreach(team in level.teams)
		{
			spawn_counts = spawn_counts + level.unified_spawn_points[team].a.size;
		}
		if(level.test_spawn_point_index >= spawn_counts)
		{
			level.test_spawn_point_index = 0;
		}
		count = 0;
		foreach(team in level.teams)
		{
			SIZE = level.unified_spawn_points[team].a.size;
			if(level.test_spawn_point_index < count + SIZE)
			{
				return level.unified_spawn_points[team].a[level.test_spawn_point_index - count];
			}
			count = count + SIZE;
		}
	}
	else if(level.test_spawn_point_index >= level.unified_spawn_points[team].a.size)
	{
		level.test_spawn_point_index = 0;
	}
	return level.unified_spawn_points[team].a[level.test_spawn_point_index];
}

/*
	Name: get_best_spawnpoint
	Namespace: Spawning
	Checksum: 0xC03231C1
	Offset: 0x2218
	Size: 0xE7
	Parameters: 4
	Flags: None
*/
function get_best_spawnpoint(point_team, influencer_team, player, predictedSpawn)
{
	if(level.teambased)
	{
		vis_team_mask = util::getOtherTeamsMask(player.pers["team"]);
	}
	else
	{
		vis_team_mask = level.spawnsystem.iSPAWN_TEAMMASK_FREE;
	}
	spawn_point = GetBestSpawnPoint(point_team, influencer_team, vis_team_mask, player, predictedSpawn);
	if(!predictedSpawn)
	{
		bbPrint("mpspawnpointsused", "reason %s x %d y %d z %d", "point used", spawn_point["origin"]);
	}
	return spawn_point;
}

/*
	Name: function_db51ac16
	Namespace: Spawning
	Checksum: 0x4A8E881A
	Offset: 0x2308
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_db51ac16(player_team)
{
	if(!isdefined(level.unified_spawn_points))
	{
		level.unified_spawn_points = [];
	}
	else if(isdefined(level.unified_spawn_points[player_team]))
	{
		return level.unified_spawn_points[player_team];
	}
	spawn_entities_s = util::spawn_array_struct();
	spawn_entities_s.a = spawnlogic::get_team_spawnpoints(player_team);
	if(!isdefined(spawn_entities_s.a))
	{
		spawn_entities_s.a = [];
	}
	level.unified_spawn_points[player_team] = spawn_entities_s;
	return spawn_entities_s;
}

/*
	Name: is_hardcore
	Namespace: Spawning
	Checksum: 0x2B1CA5F9
	Offset: 0x23D8
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function is_hardcore()
{
	return isdefined(level.hardcoreMode) && level.hardcoreMode;
}

/*
	Name: teams_have_enmity
	Namespace: Spawning
	Checksum: 0x3E96C146
	Offset: 0x23F8
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function teams_have_enmity(team1, team2)
{
	if(!isdefined(team1) || !isdefined(team2) || level.gametype == "dm")
	{
		return 1;
	}
	return team1 != "neutral" && team2 != "neutral" && team1 != team2;
}

/*
	Name: delete_all_spawns
	Namespace: Spawning
	Checksum: 0xFAC80733
	Offset: 0x2478
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function delete_all_spawns(Spawnpoints)
{
	for(i = 0; i < Spawnpoints.size; i++)
	{
		Spawnpoints[i] delete();
	}
}

/*
	Name: spawn_point_class_name_being_used
	Namespace: Spawning
	Checksum: 0x2D1FB159
	Offset: 0x24D8
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function spawn_point_class_name_being_used(name)
{
	if(!isdefined(level.spawn_point_class_names))
	{
		return 0;
	}
	for(i = 0; i < level.spawn_point_class_names.size; i++)
	{
		if(level.spawn_point_class_names[i] == name)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: CodeCallback_UpdateSpawnPoints
	Namespace: Spawning
	Checksum: 0xD0D50385
	Offset: 0x2548
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function CodeCallback_UpdateSpawnPoints()
{
	foreach(team in level.teams)
	{
		spawnlogic::rebuild_spawn_points(team);
	}
	level.unified_spawn_points = undefined;
	updateAllSpawnPoints();
}

/*
	Name: getTeamStartSpawnName
	Namespace: Spawning
	Checksum: 0xFFECC0DB
	Offset: 0x25F8
	Size: 0x157
	Parameters: 2
	Flags: None
*/
function getTeamStartSpawnName(team, spawnpointNameBase)
{
	spawn_point_team_name = team;
	if(!level.multiTeam && game["switchedsides"])
	{
		spawn_point_team_name = util::getOtherTeam(team);
	}
	if(level.multiTeam)
	{
		if(team == "axis")
		{
			spawn_point_team_name = "team1";
		}
		else if(team == "allies")
		{
			spawn_point_team_name = "team2";
		}
		if(!util::isOneRound())
		{
			Number = Int(GetSubStr(spawn_point_team_name, 4, 5)) - 1;
			Number = Number + game["roundsplayed"] % level.teams.size + 1;
			spawn_point_team_name = "team" + Number;
		}
	}
	return spawnpointNameBase + "_" + spawn_point_team_name + "_start";
}

/*
	Name: getTDMStartSpawnName
	Namespace: Spawning
	Checksum: 0x9DF47E96
	Offset: 0x2758
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function getTDMStartSpawnName(team)
{
	return getTeamStartSpawnName(team, "mp_tdm_spawn");
}


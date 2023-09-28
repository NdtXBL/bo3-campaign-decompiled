#using scripts\cp\_challenges;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace collectibles;

/*
	Name: __init__sytem__
	Namespace: collectibles
	Checksum: 0x12E3FC4C
	Offset: 0x338
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("collectibles", &__init__, &__main__, undefined);
}

/*
	Name: __init__
	Namespace: collectibles
	Checksum: 0x2EB0B64
	Offset: 0x380
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.mission_name = function_4794dda();
	level.map_name = function_9065d6ea();
	level.collectible_params = [];
}

/*
	Name: __main__
	Namespace: collectibles
	Checksum: 0x973F638E
	Offset: 0x3C8
	Size: 0x1D1
	Parameters: 0
	Flags: None
*/
function __main__()
{
	level.collectibles = [];
	mdl_collectibles = GetEntArray("collectible", "script_noteworthy");
	if(mdl_collectibles.size == 0)
	{
		return;
	}
	if(!collectiblesdisabled())
	{
		foreach(mdl_collectible in mdl_collectibles)
		{
			collectible = init_collectible(mdl_collectible);
			Array::add(level.collectibles, collectible, 0);
		}
		callback::on_spawned(&on_player_spawned);
		callback::on_connect(&on_player_connect);
		break;
	}
	foreach(mdl_collectible in mdl_collectibles)
	{
		mdl_collectible Hide();
	}
}

/*
	Name: function_37aecd21
	Namespace: collectibles
	Checksum: 0x5D3EEB48
	Offset: 0x5A8
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_37aecd21()
{
	if(!isdefined(level.collectibles))
	{
		return;
	}
	foreach(collectible in level.collectibles)
	{
		collectible_params = level.collectible_params[collectible.mdl_collectible.model];
		if(isdefined(collectible_params))
		{
			collectible.trigger.origin = collectible.trigger.origin + collectible_params.offset;
		}
	}
}

/*
	Name: add_collectible_params
	Namespace: collectibles
	Checksum: 0xEF876F8D
	Offset: 0x6A8
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function add_collectible_params(collectible_model, radius, offset)
{
	if(!isdefined(radius))
	{
		radius = 60;
	}
	if(!isdefined(offset))
	{
		offset = (0, 0, 0);
	}
	if(!isdefined(level.collectible_params[collectible_model]))
	{
		level.collectible_params[collectible_model] = spawnstruct();
	}
	level.collectible_params[collectible_model].radius = radius;
	level.collectible_params[collectible_model].offset = offset;
}

/*
	Name: collectiblesdisabled
	Namespace: collectibles
	Checksum: 0x5BACD759
	Offset: 0x768
	Size: 0x29
	Parameters: 0
	Flags: Private
*/
function private collectiblesdisabled()
{
	return isdefined(level.var_bca96223) && level.var_bca96223 || SessionModeIsCampaignZombiesGame();
}

/*
	Name: on_player_spawned
	Namespace: collectibles
	Checksum: 0x976820EC
	Offset: 0x7A0
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	if(!isdefined(self.collectibles_discovered))
	{
		self.collectibles_discovered = [];
	}
	foreach(collectible in level.collectibles)
	{
		if(self GetDStat("PlayerStatsByMap", level.map_name, "collectibles", collectible.index))
		{
			self.collectibles_discovered[collectible.mdl_collectible.model] = 1;
			collectible.mdl_collectible SetInvisibleToPlayer(self);
			Objective_SetInvisibleToPlayer(collectible.objectiveId, self);
			collectible.trigger SetInvisibleToPlayer(self);
			continue;
		}
		self.collectibles_discovered[collectible.mdl_collectible.model] = 0;
	}
	self function_3955ccef();
}

/*
	Name: on_player_connect
	Namespace: collectibles
	Checksum: 0x3B028329
	Offset: 0x970
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self thread function_332e2cfd();
}

/*
	Name: function_6ba0709f
	Namespace: collectibles
	Checksum: 0x724B6757
	Offset: 0x998
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_6ba0709f()
{
	self endon("disconnect");
	if(!function_7bb9f252(function_9065d6ea()))
	{
		return;
	}
	while(1)
	{
		level util::waittill_any("checkpoint_save", "_checkpoint_save_safe");
		self clearallcollectiblenoncheckpointdata();
	}
}

/*
	Name: function_332e2cfd
	Namespace: collectibles
	Checksum: 0x5EC59084
	Offset: 0xA20
	Size: 0x367
	Parameters: 0
	Flags: None
*/
function function_332e2cfd()
{
	self endon("disconnect");
	if(!function_7bb9f252(function_9065d6ea()))
	{
		return;
	}
	while(1)
	{
		level waittill("save_restore");
		if(!isdefined(self.collectibles_discovered))
		{
			self.collectibles_discovered = [];
		}
		foreach(collectible in level.collectibles)
		{
			var_6b074374 = self getcollectiblenoncheckpointvalue(collectible.index);
			has_collectible = self GetDStat("PlayerStatsByMap", level.map_name, "collectibles", collectible.index);
			if(isdefined(var_6b074374) && var_6b074374 && (!isdefined(has_collectible) && has_collectible))
			{
				self.collectibles_discovered[collectible.mdl_collectible.model] = 1;
				collectible.mdl_collectible SetInvisibleToPlayer(self);
				Objective_SetInvisibleToPlayer(collectible.objectiveId, self);
				collectible.trigger SetInvisibleToPlayer(self);
				self SetDStat("PlayerStatsByMap", level.map_name, "collectibles", collectible.index, 1);
				self AddRankXPValue("picked_up_collectible", 500);
				UploadStats(self);
				self update_player_collectible_completion_status();
				self challenges::function_96ed590f("career_collectibles");
				continue;
			}
			if(!(isdefined(self GetDStat("PlayerStatsByMap", level.map_name, "collectibles", collectible.index)) && self GetDStat("PlayerStatsByMap", level.map_name, "collectibles", collectible.index)))
			{
				self.collectibles_discovered[collectible.mdl_collectible.model] = 0;
			}
		}
		self update_player_collectible_completion_status();
	}
}

/*
	Name: function_b963f25
	Namespace: collectibles
	Checksum: 0x7B07F2F9
	Offset: 0xD90
	Size: 0xB7
	Parameters: 1
	Flags: Private
*/
function private function_b963f25(mdl_collectible)
{
	mdl_collectible.radius = 60;
	mdl_collectible.offset = VectorScale((0, 0, 1), 5);
	collectible_params = level.collectible_params[mdl_collectible.model];
	if(isdefined(collectible_params))
	{
		mdl_collectible.radius = collectible_params.radius;
		mdl_collectible.offset = mdl_collectible.offset + collectible_params.offset;
	}
	return mdl_collectible;
}

/*
	Name: init_collectible
	Namespace: collectibles
	Checksum: 0x50815F5B
	Offset: 0xE50
	Size: 0x33B
	Parameters: 1
	Flags: None
*/
function init_collectible(mdl_collectible)
{
	mdl_collectible = function_b963f25(mdl_collectible);
	trigger_use = spawn("trigger_radius_use", mdl_collectible.origin + mdl_collectible.offset, 0, mdl_collectible.radius, mdl_collectible.radius);
	trigger_use TriggerIgnoreTeam();
	trigger_use SetVisibleToAll();
	trigger_use UseTriggerRequireLookAt();
	trigger_use SetTeamForTrigger("none");
	trigger_use setcursorhint("HINT_INTERACTIVE_PROMPT");
	trigger_use setHintString(&"COLLECTIBLE_PICK_UP");
	istring = istring(mdl_collectible.model);
	var_837a6185 = gameobjects::create_use_object("any", trigger_use, Array(mdl_collectible), (0, 0, 0), istring);
	var_837a6185 gameobjects::allow_use("any");
	var_837a6185 gameobjects::set_use_time(0.35);
	var_837a6185 gameobjects::set_owner_team("allies");
	var_837a6185 gameobjects::set_visible_team("any");
	var_837a6185.mdl_collectible = mdl_collectible;
	var_837a6185.onUse = &onUse;
	var_837a6185.onBeginUse = &onBeginUse;
	var_837a6185.var_db0f901 = 1;
	var_837a6185.origin = mdl_collectible.origin;
	var_837a6185.angles = var_837a6185.angles;
	if(isdefined(mdl_collectible.script_int))
	{
		var_837a6185.index = mdl_collectible.script_int - 1;
	}
	else
	{
		var_837a6185.index = Int(GetSubStr(mdl_collectible.model, mdl_collectible.model.size - 2)) - 1;
	}
	return var_837a6185;
}

/*
	Name: onUse
	Namespace: collectibles
	Checksum: 0x3E3B4033
	Offset: 0x1198
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function onUse(e_player)
{
	e_player.collectibles_discovered[self.mdl_collectible.model] = 1;
	self.mdl_collectible SetInvisibleToPlayer(e_player);
	self gameobjects::hide_waypoint(e_player);
	self.trigger SetInvisibleToPlayer(e_player);
	if(function_7bb9f252(function_9065d6ea()))
	{
		e_player SetDStat("PlayerStatsByMap", level.map_name, "collectibles", self.index, 1);
		e_player AddRankXPValue("picked_up_collectible", 500);
		UploadStats(e_player);
		e_player setcollectiblenoncheckpointvalue(self.index, 1);
		e_player update_player_collectible_completion_status();
	}
	util::function_964b7eb7(e_player, istring("COLLECTIBLE_DISCOVERED"));
	e_player playsoundtoplayer("uin_collectible_pickup", e_player);
	e_player notify("picked_up_collectible");
	e_player challenges::function_96ed590f("career_collectibles");
}

/*
	Name: onBeginUse
	Namespace: collectibles
	Checksum: 0x7FCDCE93
	Offset: 0x1370
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function onBeginUse(e_player)
{
}

/*
	Name: function_ccb1e08d
	Namespace: collectibles
	Checksum: 0x52865663
	Offset: 0x1388
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_ccb1e08d(map_name)
{
	if(!isdefined(map_name))
	{
		map_name = function_9065d6ea();
	}
	if(!isdefined(map_name))
	{
		return;
	}
	numcollectiblescollected = 0;
	for(collectibleindex = 0; collectibleindex < 10; collectibleindex++)
	{
		if(self GetDStat("PlayerStatsByMap", map_name, "collectibles", collectibleindex))
		{
			numcollectiblescollected++;
		}
	}
	return numcollectiblescollected;
}

/*
	Name: function_3955ccef
	Namespace: collectibles
	Checksum: 0x55FC12C4
	Offset: 0x1440
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_3955ccef()
{
	numcollectiblescollected = self function_ccb1e08d(function_9065d6ea());
	collectiblecount = function_970da1e7(function_9065d6ea());
	if(numcollectiblescollected == collectiblecount)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_e1aad2b1
	Namespace: collectibles
	Checksum: 0xCFFD827F
	Offset: 0x14C8
	Size: 0xD1
	Parameters: 0
	Flags: Private
*/
function private function_e1aad2b1()
{
	self endon("disconnect");
	self notify("hash_e1aad2b1");
	self endon("hash_e1aad2b1");
	self util::waittill_notify_or_timeout("stats_changed", 2);
	if(isdefined(self) && self function_b2cbaf20())
	{
		self SetDStat("PlayerStatsList", "ALL_COLLECTIBLES_COLLECTED", "statValue", 1);
		self GiveDecoration("cp_medal_all_collectibles");
		self notify("give_achievement", "CP_ALL_COLLECTIBLES");
	}
}

/*
	Name: update_player_collectible_completion_status
	Namespace: collectibles
	Checksum: 0x6D58962F
	Offset: 0x15A8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function update_player_collectible_completion_status()
{
	/#
		Assert(isPlayer(self));
	#/
	if(self function_3955ccef())
	{
		self SetDStat("PlayerStatsByMap", function_9065d6ea(), "allCollectiblesCollected", 1);
		self notify("give_achievement", "CP_MISSION_COLLECTIBLES");
	}
	self thread function_e1aad2b1();
}

/*
	Name: setcollectiblenoncheckpointvalue
	Namespace: collectibles
	Checksum: 0xFB53950C
	Offset: 0x1658
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function setcollectiblenoncheckpointvalue(collectible_index, value)
{
	self function_b26abbde("collectibles" + collectible_index + "value", value);
}

/*
	Name: getcollectiblenoncheckpointvalue
	Namespace: collectibles
	Checksum: 0x4BF1DF55
	Offset: 0x16A8
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function getcollectiblenoncheckpointvalue(collectible_index)
{
	return self function_ebacf39a("collectibles" + collectible_index + "value");
}

/*
	Name: clearallcollectiblenoncheckpointdata
	Namespace: collectibles
	Checksum: 0xC9577C27
	Offset: 0x16E8
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function clearallcollectiblenoncheckpointdata()
{
	foreach(collectible in level.collectibles)
	{
		self function_b016cdb3("collectibles" + collectible.index + "value");
	}
}


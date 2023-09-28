#using scripts\cp\_challenges;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\music_shared;
#using scripts\shared\system_shared;

#namespace collectibles;

/*
	Name: __init__sytem__
	Namespace: collectibles
	Checksum: 0xF37EF3F8
	Offset: 0x5F8
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("bzm_collectibles", &__init__, &__main__, undefined);
}

/*
	Name: __init__
	Namespace: collectibles
	Checksum: 0x484EBC81
	Offset: 0x640
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	if(!SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	clientfield::register("world", "cpzm_song_suppression", 1, 1, "int");
	level.mission_name = function_4794dda();
	level.map_name = function_9065d6ea();
	level.collectible_params = [];
	level thread function_7c315d3a();
}

/*
	Name: __main__
	Namespace: collectibles
	Checksum: 0x63F57881
	Offset: 0x6E8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function __main__()
{
	if(!SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	thread function_ab60ef67();
}

/*
	Name: function_ab60ef67
	Namespace: collectibles
	Checksum: 0xAD974EDE
	Offset: 0x720
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_ab60ef67()
{
	wait(2);
	level.numcollectiblescollected = 0;
	level.var_7e93a355 = 0;
	level.collectibles = [];
	mdl_collectibles = GetEntArray("collectible", "script_noteworthy");
	if(mdl_collectibles.size <= 1)
	{
		return;
	}
	mapname = GetDvarString("mapname");
	if(IsSubStr(mapname, "blackstation"))
	{
		var_12d65c22 = 1;
	}
	else
	{
		var_12d65c22 = 0;
	}
	level.var_f5f95e45 = -1;
	foreach(mdl_collectible in mdl_collectibles)
	{
		if(var_12d65c22 && DistanceSquared((-1492, 1690, -640), mdl_collectible.origin) <= 200 * 200)
		{
			continue;
		}
		level.var_f5f95e45++;
		mdl_collectible.index = level.var_f5f95e45;
		collectible = init_collectible(mdl_collectible);
		Array::add(level.collectibles, collectible, 0);
	}
	callback::on_spawned(&on_player_spawned);
}

/*
	Name: function_b963f25
	Namespace: collectibles
	Checksum: 0xE2C8EC89
	Offset: 0x938
	Size: 0xE3
	Parameters: 1
	Flags: Private
*/
function private function_b963f25(mdl_collectible)
{
	mdl_collectible.radius = 60;
	mdl_collectible.offset = VectorScale((0, 0, 1), 5);
	mdl_collectible.origin = mdl_collectible.origin + VectorScale((0, 0, 1), 35);
	collectible_params = level.collectible_params[mdl_collectible.model];
	if(isdefined(collectible_params))
	{
		mdl_collectible.radius = collectible_params.radius;
		mdl_collectible.offset = mdl_collectible.offset + collectible_params.offset;
	}
	return mdl_collectible;
}

/*
	Name: on_player_spawned
	Namespace: collectibles
	Checksum: 0x99EC1590
	Offset: 0xA28
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

/*
	Name: init_collectible
	Namespace: collectibles
	Checksum: 0xEFD0FCB2
	Offset: 0xA38
	Size: 0x3A7
	Parameters: 1
	Flags: None
*/
function init_collectible(mdl_collectible)
{
	mdl_collectible show();
	mdl_collectible = function_b963f25(mdl_collectible);
	trigger_use = spawn("trigger_radius_use", mdl_collectible.origin + mdl_collectible.offset, 0, 100, mdl_collectible.radius);
	trigger_use TriggerIgnoreTeam();
	trigger_use SetVisibleToAll();
	trigger_use UseTriggerRequireLookAt();
	trigger_use SetTeamForTrigger("none");
	trigger_use setcursorhint("HINT_INTERACTIVE_PROMPT");
	trigger_use setHintString(&"COLLECTIBLE_PICK_UP");
	var_837a6185 = gameobjects::create_use_object("any", trigger_use, Array(mdl_collectible), (0, 0, 0), &"cp_magic_song");
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
	mdl_collectible SetModel("p7_zm_teddybear_sitting");
	mdl_collectible clientfield::set("powerup_on_fx", 2);
	mdl_collectible SetScale(0.7);
	/#
		level thread debug_draw_line(var_837a6185.origin);
	#/
	return var_837a6185;
}

/*
	Name: function_9b46b73e
	Namespace: collectibles
	Checksum: 0xC218DE9A
	Offset: 0xDE8
	Size: 0x19F
	Parameters: 0
	Flags: None
*/
function function_9b46b73e()
{
	mapname = function_9065d6ea();
	foreach(collectible in level.collectibles)
	{
		foreach(player in level.players)
		{
			if(player GetDStat("PlayerStatsByMap", mapname, "collectibles", collectible.index))
			{
				collectible.mdl_collectible SetInvisibleToPlayer(player);
				Objective_SetInvisibleToPlayer(collectible.objectiveId, player);
				collectible.trigger SetInvisibleToPlayer(player);
			}
		}
	}
}

/*
	Name: onUse
	Namespace: collectibles
	Checksum: 0xB72548EA
	Offset: 0xF90
	Size: 0x4E1
	Parameters: 1
	Flags: None
*/
function onUse(e_player)
{
	mapname = function_9065d6ea();
	foreach(player in level.players)
	{
		player playsoundtoplayer("uin_collectible_pickup", player);
		self.mdl_collectible SetInvisibleToPlayer(player);
		self gameobjects::hide_waypoint(player);
		self.trigger SetInvisibleToPlayer(player);
		player SetDStat("PlayerStatsByMap", mapname, "collectibles", self.index, 1);
		UploadStats(player);
		util::function_964b7eb7(player, istring("COLLECTIBLE_DISCOVERED"));
	}
	level.numcollectiblescollected++;
	var_27fba3a4 = level.collectibles.size;
	if(var_27fba3a4 > 3)
	{
		if(level.numcollectiblescollected < 3)
		{
			return;
		}
	}
	else if(var_27fba3a4 - level.numcollectiblescollected > 0)
	{
		return;
	}
	level thread function_9b46b73e();
	if(level.var_7e93a355 <= 1)
	{
		mapname = function_9065d6ea();
		level.var_7e93a355++;
		State = undefined;
		unlockName = undefined;
		switch(mapname)
		{
			case "cp_mi_cairo_aquifer_nightmares":
			{
				State = "zm_abra";
				unlockName = "mus_abra_cadavre_intro";
				break;
			}
			case "cp_mi_cairo_lotus_nightmares":
			{
				State = "zm_always_running";
				unlockName = "mus_always_running_intro";
				break;
			}
			case "cp_mi_cairo_ramses_nightmares":
			{
				State = "zm_wafd";
				unlockName = "mus_we_all_fall_down_intro";
				break;
			}
			case "cp_mi_eth_prologue_nightmares":
			{
				State = "zm_pareidolia";
				unlockName = "mus_pareidolia_intro";
				break;
			}
			case "cp_mi_sing_biodomes_nightmares":
			{
				State = "zm_boa";
				unlockName = "mus_beauty_of_annihilation_intro";
				break;
			}
			case "cp_mi_sing_blackstation_nightmares":
			{
				State = "zm_carrion";
				unlockName = "mus_carrion_intro";
				break;
			}
			case "cp_mi_sing_sgen_nightmares":
			{
				State = "zm_lullaby";
				unlockName = "mus_lullaby_for_a_dead_man_intro";
				break;
			}
			case "cp_mi_sing_vengeance_nightmares":
			{
				State = "zm_coming_home";
				unlockName = "mus_coming_home_intro";
				break;
			}
			case "cp_mi_zurich_coalescence_nightmares":
			{
				State = "zm_archangel";
				unlockName = "mus_archangel_intro";
				break;
			}
			case "cp_mi_zurich_newworld_nightmares":
			{
				State = "zm_the_one";
				unlockName = "mus_the_one_intro";
				break;
			}
			case "cp_mi_cairo_infection_nightmares":
			{
				State = "zm_wawg";
				unlockName = "mus_where_are_we_going_intro";
				break;
			}
		}
		if(isdefined(State))
		{
			/#
				iprintln("Dev Block strings are not supported" + unlockName);
			#/
			music::setmusicstate(State);
			level.bonuszm_musicoverride = 1;
			level thread function_d789d2e(State);
		}
		foreach(player in level.players)
		{
			if(isdefined(unlockName))
			{
				player UnlockSongByAlias(unlockName);
			}
		}
	}
}

/*
	Name: function_d789d2e
	Namespace: collectibles
	Checksum: 0x5B565DEB
	Offset: 0x1480
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_d789d2e(State)
{
	aliasname = "mus_" + State + "_intro";
	playbackTime = soundgetplaybacktime(aliasname);
	if(!isdefined(playbackTime) || playbackTime <= 0)
	{
		waitTime = 1;
	}
	else
	{
		waitTime = playbackTime * 0.001;
	}
	wait(waitTime);
	level.bonuszm_musicoverride = 0;
}

/*
	Name: onBeginUse
	Namespace: collectibles
	Checksum: 0x2BED3B14
	Offset: 0x1530
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function onBeginUse(e_player)
{
}

/*
	Name: debug_draw_line
	Namespace: collectibles
	Checksum: 0xDD46CDE6
	Offset: 0x1548
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function debug_draw_line(origin1)
{
	/#
		while(1)
		{
			recordLine(origin1, origin1 + VectorScale((0, 0, 1), 2000), (1, 1, 1), "Dev Block strings are not supported");
			wait(0.05);
		}
	#/
}

/*
	Name: function_7c315d3a
	Namespace: collectibles
	Checksum: 0xF6B94855
	Offset: 0x15A8
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_7c315d3a()
{
	while(1)
	{
		level waittill("scene_sequence_started");
		if(isdefined(level.bonuszm_musicoverride) && level.bonuszm_musicoverride)
		{
			level clientfield::set("cpzm_song_suppression", 1);
		}
		level waittill("scene_sequence_ended");
		level clientfield::set("cpzm_song_suppression", 0);
	}
}


#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_art;
#using scripts\cp\_ballistic_knife;
#using scripts\cp\_bouncingbetty;
#using scripts\cp\_cache;
#using scripts\cp\_challenges;
#using scripts\cp\_debug;
#using scripts\cp\_decoy;
#using scripts\cp\_destructible;
#using scripts\cp\_devgui;
#using scripts\cp\_explosive_bolt;
#using scripts\cp\_flashgrenades;
#using scripts\cp\_hacker_tool;
#using scripts\cp\_heatseekingmissile;
#using scripts\cp\_incendiary;
#using scripts\cp\_laststand;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_oed;
#using scripts\cp\_proximity_grenade;
#using scripts\cp\_riotshield;
#using scripts\cp\_satchel_charge;
#using scripts\cp\_sensor_grenade;
#using scripts\cp\_skipto;
#using scripts\cp\_smokegrenade;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_tabun;
#using scripts\cp\_tacticalinsertion;
#using scripts\cp\_trophy_system;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm;
#using scripts\cp\bots\_bot;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_weaponobjects;
#using scripts\shared\_oob;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\archetype_shared\archetype_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\clientids_shared;
#using scripts\shared\containers_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\medals_shared;
#using scripts\shared\music_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\serverfaceanim_shared;
#using scripts\shared\string_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons\antipersonnelguidance;
#using scripts\shared\weapons\multilockapguidance;

#namespace load;

/*
	Name: main
	Namespace: load
	Checksum: 0x6C5E9934
	Offset: 0xBD8
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function main()
{
	/#
		/#
			Assert(isdefined(level.first_frame), "Dev Block strings are not supported");
		#/
	#/
	if(isdefined(level._loadStarted) && level._loadStarted)
	{
		return;
	}
	function_13c5b077();
	level thread function_f063419c();
	level flag::init("bsp_swap_ready");
	level flag::init("initial_streamer_ready");
	level._loadStarted = 1;
	SetDvar("playerEnenergy_enabled", 0);
	SetDvar("r_waterFogTest", 0);
	SetDvar("tu6_player_shallowWaterHeight", "0.0");
	SetGametypeSetting("trm_maxHeight", 144);
	level.aiTriggerSpawnFlags = getaitriggerflags();
	level.vehicleTriggerSpawnFlags = getvehicletriggerflags();
	level flag::init("wait_and_revive");
	level flag::init("instant_revive");
	util::registerClientSys("lsm");
	level thread register_clientfields();
	setup_traversals();
	level thread onAllPlayersReady();
	footsteps();
	gameskill::setSkill(undefined, level.skill_override);
	system::wait_till("all");
	art_review();
	level flagsys::set("load_main_complete");
	level.var_732e9c7d = &function_13aa782f;
	if(isdefined(level.skipto_point) && isdefined(level.default_skipto))
	{
		if(level.skipto_point == level.default_skipto)
		{
			world.var_bf966ebd = undefined;
		}
	}
	level thread function_4dd1a4b();
}

/*
	Name: function_13c5b077
	Namespace: load
	Checksum: 0x27453EFE
	Offset: 0xEB8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_13c5b077()
{
	SetDvar("ui_allowDisplayContinue", 0);
}

/*
	Name: function_73adcefc
	Namespace: load
	Checksum: 0x6543B33B
	Offset: 0xEE0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_73adcefc()
{
	util::function_ab12ef82("level_is_go");
}

/*
	Name: function_c32ba481
	Namespace: load
	Checksum: 0x8419D32C
	Offset: 0xF08
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_c32ba481(var_87423d00, v_color)
{
	if(!isdefined(var_87423d00))
	{
		var_87423d00 = 0.5;
	}
	if(!isdefined(v_color))
	{
		v_color = (0, 0, 0);
	}
	level util::streamer_wait(undefined, undefined, undefined, 0);
	SetDvar("ui_allowDisplayContinue", 1);
	if(IsLoadingCinematicPlaying())
	{
		do
		{
			wait(0.05);
		}
		while(!IsLoadingCinematicPlaying());
	}
	else
	{
		wait(1);
	}
	foreach(player in level.players)
	{
		player thread function_84454eb5();
	}
	level flag::wait_till("all_players_spawned");
	level util::streamer_wait(undefined, 0, 10);
	level notify("hash_c79c2551");
	level thread function_dbd0026c(var_87423d00, v_color);
}

/*
	Name: function_a2995f22
	Namespace: load
	Checksum: 0xA29B4711
	Offset: 0x10B8
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_a2995f22(var_87423d00, v_color)
{
	if(!isdefined(var_87423d00))
	{
		var_87423d00 = 0.5;
	}
	if(!isdefined(v_color))
	{
		v_color = (0, 0, 0);
	}
	level clientfield::set("gameplay_started", 1);
	function_c32ba481(var_87423d00, v_color);
}

/*
	Name: function_84454eb5
	Namespace: load
	Checksum: 0x92C113A3
	Offset: 0x1140
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_84454eb5()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self endon("disconnect");
	if(self flag::exists("loadout_given") && self flag::get("loadout_given"))
	{
		self openMenu("SpinnerFullscreenBlack");
		level flag::wait_till("all_players_spawned");
		self CloseMenu("SpinnerFullscreenBlack");
	}
}

/*
	Name: function_dbd0026c
	Namespace: load
	Checksum: 0x32BC5D62
	Offset: 0x1208
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_dbd0026c(var_87423d00, v_color)
{
	level LUI::screen_fade_out(0, "black", "go_fade");
	waittillframeend;
	if(level flagsys::get("chyron_active"))
	{
		level flagsys::wait_till_clear("chyron_active");
	}
	else
	{
		wait(1);
	}
	if(isdefined(level.var_75ba074a))
	{
		wait(level.var_75ba074a);
	}
	level util::delay(0.3, undefined, &flag::set, level.var_d83bc14d);
	level util::delay(0.3, undefined, &LUI::screen_fade_in, var_87423d00, v_color, "go_fade");
}

/*
	Name: function_f063419c
	Namespace: load
	Checksum: 0x3928F756
	Offset: 0x1318
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_f063419c()
{
	if(IsLoadingCinematicPlaying())
	{
		while(IsLoadingCinematicPlaying())
		{
			wait(0.05);
		}
		level notify("loading_movie_done");
	}
}

/*
	Name: function_4dd1a4b
	Namespace: load
	Checksum: 0x14FD15A2
	Offset: 0x1370
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4dd1a4b()
{
	function_d2250e2f();
	function_297d2d7c();
	flag::wait_till("all_players_spawned");
	wait(0.5);
	function_d2250e2f();
	function_297d2d7c();
}

/*
	Name: function_13aa782f
	Namespace: load
	Checksum: 0xC4C82D0
	Offset: 0x13E0
	Size: 0x33
	Parameters: 3
	Flags: None
*/
function function_13aa782f(player, target, weapon)
{
	return !player oob::IsOutOfBounds();
}

/*
	Name: player_damage_override
	Namespace: load
	Checksum: 0x94ADE954
	Offset: 0x1420
	Size: 0x391
	Parameters: 10
	Flags: None
*/
function player_damage_override(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime)
{
	finalDamage = iDamage;
	if(isdefined(self.player_damage_override))
	{
		self thread [[self.player_damage_override]](eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime);
	}
	if(self laststand::player_is_in_laststand())
	{
		return 0;
	}
	if(level.teambased && isPlayer(eAttacker) && self != eAttacker && self.team == eAttacker.team)
	{
		if(level.friendlyfire == 0)
		{
			return 0;
		}
	}
	if(iDamage < self.health)
	{
		return finalDamage;
	}
	players = GetPlayers();
	count = 0;
	for(i = 0; i < players.size; i++)
	{
		if(players[i] == self || players[i] laststand::player_is_in_laststand() || players[i].sessionstate == "spectator")
		{
			count++;
		}
	}
	solo_death = players.size == 1 && self.lives == 0;
	non_solo_death = players.size > 1 && count == players.size;
	if(solo_death || non_solo_death)
	{
		level notify("stop_suicide_trigger");
		self thread laststand::PlayerLastStand(eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime);
		if(!isdefined(vDir))
		{
			vDir = (1, 0, 0);
		}
		level notify("last_player_died");
		self FakeDamageFrom(vDir);
		self thread player_fake_death();
	}
	if(count == players.size)
	{
		if(players.size == 1)
		{
			if(self.lives == 0)
			{
				self.lives = 0;
				level notify("pre_end_game");
				util::wait_network_frame();
				level notify("end_game");
			}
			else
			{
				return finalDamage;
			}
		}
		else
		{
			level notify("pre_end_game");
			util::wait_network_frame();
			level notify("end_game");
		}
		return 0;
	}
	return finalDamage;
}

/*
	Name: player_fake_death
	Namespace: load
	Checksum: 0xAC0ADEDE
	Offset: 0x17C0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function player_fake_death()
{
	level notify("fake_death");
	self notify("fake_death");
	self TakeAllWeapons();
	self AllowStand(0);
	self AllowCrouch(0);
	self AllowProne(1);
	self.ignoreme = 1;
	self EnableInvulnerability();
	wait(1);
	self FreezeControls(1);
}

/*
	Name: setFootstepEffect
	Namespace: load
	Checksum: 0xC26C13A0
	Offset: 0x1888
	Size: 0xB9
	Parameters: 2
	Flags: None
*/
function setFootstepEffect(name, FX)
{
	/#
		Assert(isdefined(name), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(FX), "Dev Block strings are not supported");
	#/
	if(!isdefined(anim.optionalStepEffects))
	{
		anim.optionalStepEffects = [];
	}
	anim.optionalStepEffects[anim.optionalStepEffects.size] = name;
	level._effect["step_" + name] = FX;
}

/*
	Name: footsteps
	Namespace: load
	Checksum: 0x5D264170
	Offset: 0x1950
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function footsteps()
{
	setFootstepEffect("asphalt", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("brick", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("carpet", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("cloth", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("concrete", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("dirt", "_t6/bio/player/fx_footstep_sand");
	setFootstepEffect("foliage", "_t6/bio/player/fx_footstep_sand");
	setFootstepEffect("gravel", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("grass", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("metal", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("mud", "_t6/bio/player/fx_footstep_mud");
	setFootstepEffect("paper", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("plaster", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("rock", "_t6/bio/player/fx_footstep_dust");
	setFootstepEffect("sand", "_t6/bio/player/fx_footstep_sand");
	setFootstepEffect("water", "_t6/bio/player/fx_footstep_water");
	setFootstepEffect("wood", "_t6/bio/player/fx_footstep_dust");
}

/*
	Name: init_traverse
	Namespace: load
	Checksum: 0x11CE9B8E
	Offset: 0x1B80
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function init_traverse()
{
	point = GetEnt(self.target, "targetname");
	if(isdefined(point))
	{
		self.traverse_height = point.origin[2];
		point delete();
	}
	else
	{
		point = struct::get(self.target, "targetname");
		if(isdefined(point))
		{
			self.traverse_height = point.origin[2];
		}
	}
}

/*
	Name: setup_traversals
	Namespace: load
	Checksum: 0xE6534E7F
	Offset: 0x1C48
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function setup_traversals()
{
	potential_traverse_nodes = GetAllNodes();
	for(i = 0; i < potential_traverse_nodes.size; i++)
	{
		node = potential_traverse_nodes[i];
		if(node.type == "Begin")
		{
			node init_traverse();
		}
	}
}

/*
	Name: function_19d17757
	Namespace: load
	Checksum: 0xC8D2BDED
	Offset: 0x1CE8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_19d17757()
{
	/#
		Assert(0, "Dev Block strings are not supported");
	#/
}

/*
	Name: function_9b37c2bc
	Namespace: load
	Checksum: 0x76675287
	Offset: 0x1D18
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9b37c2bc()
{
	level flag::wait_till("bsp_swap_ready");
	switchmap_switch();
}

/*
	Name: end_game
	Namespace: load
	Checksum: 0xD23B6388
	Offset: 0x1D58
	Size: 0x719
	Parameters: 0
	Flags: None
*/
function end_game()
{
	level waittill("end_game");
	check_end_game_intermission_delay();
	/#
		println("Dev Block strings are not supported");
	#/
	util::clientNotify("zesn");
	players = GetPlayers();
	for(i = 0; i < players.size; i++)
	{
		util::setClientSysState("lsm", "0", players[i]);
	}
	for(i = 0; i < players.size; i++)
	{
		if(isdefined(players[i].reviveTextHud))
		{
			players[i].reviveTextHud destroy();
		}
	}
	StopAllRumbles();
	level.intermission = 1;
	wait(0.1);
	game_over = [];
	survived = [];
	players = GetPlayers();
	SetMatchFlag("disableIngameMenu", 1);
	foreach(player in players)
	{
		player closeInGameMenu();
	}
	if(!isdefined(level.var_78a27045))
	{
		for(i = 0; i < players.size; i++)
		{
			game_over[i] = newClientHudElem(players[i]);
			game_over[i].alignX = "center";
			game_over[i].alignY = "middle";
			game_over[i].horzAlign = "center";
			game_over[i].vertAlign = "middle";
			game_over[i].y = game_over[i].y - 130;
			game_over[i].foreground = 1;
			game_over[i].fontscale = 3;
			game_over[i].alpha = 0;
			game_over[i].color = (1, 1, 1);
			game_over[i].hidewheninmenu = 1;
			game_over[i] setText(&"COOP_GAME_OVER");
			game_over[i] fadeOverTime(1);
			game_over[i].alpha = 1;
			if(players[i] IsSplitscreen())
			{
				game_over[i].fontscale = 2;
				game_over[i].y = game_over[i].y + 40;
			}
		}
	}
	else
	{
		level thread [[level.var_78a27045]]("");
	}
	for(i = 0; i < players.size; i++)
	{
		players[i] setClientUIVisibilityFlag("weapon_hud_visible", 0);
		players[i] SetClientMiniScoreboardHide(1);
	}
	UploadStats();
	wait(1);
	wait(3.95);
	foreach(icon in survived)
	{
		icon destroy();
	}
	foreach(icon in game_over)
	{
		icon destroy();
	}
	level notify("round_end_done");
	if(isdefined(level.var_4c3d1a55))
	{
		[[level.var_4c3d1a55]]();
		level.var_4c3d1a55 = undefined;
	}
	else
	{
		intermission();
		wait(15);
		level notify("stop_intermission");
	}
	Array::thread_all(GetPlayers(), &player_exit_level);
	wait(1.5);
	players = GetPlayers();
	for(i = 0; i < players.size; i++)
	{
		players[i] CameraActivate(0);
	}
	exitLevel(0);
	wait(666);
}

/*
	Name: intermission
	Namespace: load
	Checksum: 0x2C880E48
	Offset: 0x2480
	Size: 0x19D
	Parameters: 0
	Flags: None
*/
function intermission()
{
	level.intermission = 1;
	level notify("intermission");
	players = GetPlayers();
	for(i = 0; i < players.size; i++)
	{
		util::setClientSysState("levelNotify", "zi", players[i]);
		players[i] SetClientThirdPerson(0);
		players[i] resetFov();
		players[i].health = 100;
		players[i] thread player_intermission();
		players[i] stopsounds();
	}
	wait(0.25);
	players = GetPlayers();
	for(i = 0; i < players.size; i++)
	{
		util::setClientSysState("lsm", "0", players[i]);
	}
}

/*
	Name: player_intermission
	Namespace: load
	Checksum: 0x6A205449
	Offset: 0x2628
	Size: 0x5E1
	Parameters: 0
	Flags: None
*/
function player_intermission()
{
	self closeInGameMenu();
	level endon("stop_intermission");
	self endon("disconnect");
	self endon("death");
	self notify("_zombie_game_over");
	self.sessionstate = "intermission";
	self.spectatorclient = -1;
	self.archivetime = 0;
	self.psOffsetTime = 0;
	self.friendlydamage = undefined;
	points = struct::get_array("intermission", "targetname");
	if(!isdefined(points) || points.size == 0)
	{
		points = GetEntArray("info_intermission", "classname");
		if(points.size < 1)
		{
			/#
				println("Dev Block strings are not supported");
			#/
			return;
		}
	}
	self.game_over_bg = newClientHudElem(self);
	self.game_over_bg.horzAlign = "fullscreen";
	self.game_over_bg.vertAlign = "fullscreen";
	self.game_over_bg SetShader("black", 640, 480);
	self.game_over_bg.alpha = 1;
	org = undefined;
	while(1)
	{
		points = Array::randomize(points);
		for(i = 0; i < points.size; i++)
		{
			point = points[i];
			if(!isdefined(org))
			{
				self spawn(point.origin, point.angles);
			}
			if(isdefined(points[i].target))
			{
				if(!isdefined(org))
				{
					org = spawn("script_model", self.origin + VectorScale((0, 0, -1), 60));
					org SetModel("tag_origin");
				}
				org.origin = points[i].origin;
				org.angles = points[i].angles;
				for(j = 0; j < GetPlayers().size; j++)
				{
					player = GetPlayers()[j];
					player CameraSetPosition(org);
					player CameraSetLookAt();
					player CameraActivate(1);
				}
				speed = 20;
				if(isdefined(points[i].speed))
				{
					speed = points[i].speed;
				}
				target_point = struct::get(points[i].target, "targetname");
				dist = Distance(points[i].origin, target_point.origin);
				time = dist / speed;
				q_time = time * 0.25;
				if(q_time > 1)
				{
					q_time = 1;
				}
				self.game_over_bg fadeOverTime(q_time);
				self.game_over_bg.alpha = 0;
				org moveto(target_point.origin, time, q_time, q_time);
				org RotateTo(target_point.angles, time, q_time, q_time);
				wait(time - q_time);
				self.game_over_bg fadeOverTime(q_time);
				self.game_over_bg.alpha = 1;
				wait(q_time);
				continue;
			}
			self.game_over_bg fadeOverTime(1);
			self.game_over_bg.alpha = 0;
			wait(5);
			self.game_over_bg thread fade_up_over_time(1);
		}
	}
}

/*
	Name: fade_up_over_time
	Namespace: load
	Checksum: 0x1B94A42E
	Offset: 0x2C18
	Size: 0x2F
	Parameters: 1
	Flags: None
*/
function fade_up_over_time(t)
{
	self fadeOverTime(t);
	self.alpha = 1;
}

/*
	Name: player_exit_level
	Namespace: load
	Checksum: 0x9B173F37
	Offset: 0x2C50
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function player_exit_level()
{
	self AllowStand(1);
	self AllowCrouch(0);
	self AllowProne(0);
	if(isdefined(self.game_over_bg))
	{
		self.game_over_bg.foreground = 1;
		self.game_over_bg.sort = 100;
		self.game_over_bg fadeOverTime(1);
		self.game_over_bg.alpha = 1;
	}
}

/*
	Name: disable_end_game_intermission
	Namespace: load
	Checksum: 0xB4D8856F
	Offset: 0x2D08
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function disable_end_game_intermission(delay)
{
	level.disable_intermission = 1;
	wait(delay);
	level.disable_intermission = undefined;
}

/*
	Name: check_end_game_intermission_delay
	Namespace: load
	Checksum: 0x2648B2BB
	Offset: 0x2D38
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function check_end_game_intermission_delay()
{
	if(isdefined(level.disable_intermission))
	{
		while(1)
		{
			if(!isdefined(level.disable_intermission))
			{
				break;
			}
			wait(0.01);
		}
	}
}

/*
	Name: onAllPlayersReady
	Namespace: load
	Checksum: 0xAC310B54
	Offset: 0x2D78
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function onAllPlayersReady()
{
	level flag::init("start_coop_logic");
	level thread end_game();
	/#
		println("Dev Block strings are not supported" + getnumexpectedplayers());
	#/
	do
	{
		wait(0.05);
		n_connected = getnumconnectedplayers(0);
		n_expected = getnumexpectedplayers();
		player_count_actual = 0;
		for(i = 0; i < level.players.size; i++)
		{
			if(level.players[i].sessionstate == "playing" || level.players[i].sessionstate == "spectator")
			{
				player_count_actual++;
			}
		}
		/#
			println("Dev Block strings are not supported" + getnumconnectedplayers() + "Dev Block strings are not supported" + getnumexpectedplayers());
		#/
	}
	while(!(n_connected < n_expected || player_count_actual < n_expected));
	SetInitialPlayersConnected();
	SetDvar("all_players_are_connected", "1");
	/#
		PrintTopRightln("Dev Block strings are not supported", (1, 1, 1));
	#/
	DisableGrenadeSuicide();
	level flag::set("all_players_connected");
	level flag::set("initial_streamer_ready");
	level flag::set("start_coop_logic");
}

/*
	Name: register_clientfields
	Namespace: load
	Checksum: 0xA8492A77
	Offset: 0x2FF0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function register_clientfields()
{
	clientfield::register("toplayer", "sndHealth", 1, 2, "int");
}


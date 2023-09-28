#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_station_fight;
#using scripts\cp\cp_mi_cairo_ramses_station_walk;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_80a43443;

/*
	Name: init
	Namespace: namespace_80a43443
	Checksum: 0x8BDFF98D
	Offset: 0x1940
	Size: 0x16B
	Parameters: 2
	Flags: None
*/
function init(str_objective, var_74cd64bc)
{
	init_event_flags();
	Array::thread_all(GetEntArray("ammo_cache", "script_noteworthy"), &namespace_16f9ecd3::function_e228c18a, 1);
	level._effect["vtol_thruster"] = "vehicle/fx_vtol_thruster_vista";
	battlechatter::function_d9f49fba(0, "bc");
	spawner::add_spawn_function_group("staging_area_jumpdirect_guy01", "targetname", &function_163908b8);
	spawner::add_spawn_function_group("staging_area_allies", "script_string", &function_d61ac79f);
	vehicle::add_spawn_function_by_type("veh_bo3_mil_vtol", &function_b946efd6);
	function_9520a3b9(str_objective, var_74cd64bc);
	main();
	skipto::function_be8adfb8("vtol_ride");
}

/*
	Name: init_event_flags
	Namespace: namespace_80a43443
	Checksum: 0x996E0F23
	Offset: 0x1AB8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function init_event_flags()
{
	level flag::init("jumpdirect_loops_started");
	level flag::init("jumpdirect_scene_done");
	level flag::init("staging_area_enter_started");
	level flag::init("trucks_ready");
	level flag::init("heroes_start_truck_anims");
	level flag::init("player_enter_hero_truck_started");
	level flag::init("players_ready");
	level flag::init("vtol_ride_players_in_position");
	level flag::init("vtol_ride_temp_probe_linked");
}

/*
	Name: function_9520a3b9
	Namespace: namespace_80a43443
	Checksum: 0xA9A36198
	Offset: 0x1BE8
	Size: 0xEB
	Parameters: 2
	Flags: None
*/
function function_9520a3b9(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread namespace_7434c6b7::function_bbd12ed2(0);
		exploder::exploder("fx_exploder_vtol_crash");
		namespace_bedc6a60::function_6327cae3();
		level thread scene::Play("p7_fxanim_cp_ramses_lotus_towers_hunters_swarm_bundle");
	}
	level thread function_4492caaa();
	exploder::exploder("fx_exploder_staging_area_mortars");
	init_heroes(str_objective, var_74cd64bc);
	init_scenes(var_74cd64bc);
}

/*
	Name: done
	Namespace: namespace_80a43443
	Checksum: 0x6F0A2D59
	Offset: 0x1CE0
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function done(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level flag::set("vtol_ride_done");
}

/*
	Name: main
	Namespace: namespace_80a43443
	Checksum: 0x50093671
	Offset: 0x1D30
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function main()
{
	level flag::set("vtol_ride_event_started");
	level.var_e32d239b = 0;
	level.var_6b2d0ae6 = 0;
	level thread objectives();
	level thread scenes();
	level thread vo();
	function_e8e62f90();
	level notify("hash_f8453165");
	level.var_e32d239b = undefined;
	level.var_6b2d0ae6 = undefined;
}

/*
	Name: init_heroes
	Namespace: namespace_80a43443
	Checksum: 0x3BFDB7E2
	Offset: 0x1DF0
	Size: 0x173
	Parameters: 2
	Flags: None
*/
function init_heroes(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_9db406db = util::function_740f8516("khalil");
		skipto::teleport_ai(str_objective, level.heroes);
	}
	level.var_2fd26037 colors::disable();
	level.var_9db406db colors::disable();
	level.var_2fd26037.goalRadius = 64;
	level.var_9db406db.goalRadius = 64;
	level.var_2fd26037 ai::set_behavior_attribute("disablesprint", 1);
	level.var_2fd26037 ai::set_behavior_attribute("vignette_mode", "fast");
	level.var_9db406db ai::set_behavior_attribute("disablesprint", 1);
	level.var_9db406db ai::set_behavior_attribute("vignette_mode", "fast");
}

/*
	Name: init_scenes
	Namespace: namespace_80a43443
	Checksum: 0x58503A18
	Offset: 0x1F70
	Size: 0x3B3
	Parameters: 1
	Flags: None
*/
function init_scenes(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level scene::skipto_end("p7_fxanim_cp_ramses_station_ceiling_vtol_bundle");
		level scene::skipto_end("p7_fxanim_cp_ramses_station_ceiling_vtol_crashed_bundle");
		level scene::init("p_ramses_lift_wing_blockage");
		level thread scene::Play("cin_ram_04_02_easterncheck_vign_jumpdirect_hendricks");
		level thread scene::Play("cin_ram_04_02_easterncheck_vign_jumpdirect_khalil");
		level notify("hash_1ca7165");
		level notify("hash_77815dc");
		exploder::exploder("vtol_crash");
		exploder::exploder("fx_exploder_station_ambient_post_collapse");
		exploder::exploder("fx_exploder_dropship_hits_floor");
		exploder::exploder("fx_exploder_dropship_through_ceiling");
		exploder::exploder("fx_exploder_dropship_hits_column");
		exploder::exploder("fx_exploder_dropship_through_ceiling_02");
		exploder::exploder("fx_exploder_dropship_through_ceiling_03");
		level thread namespace_bedc6a60::function_e4e450c1();
		var_673a4bf = GetEntArray("station_ceiling_pristine", "targetname");
		foreach(piece in var_673a4bf)
		{
			piece delete();
		}
		var_2f5160f4 = GetEntArray("roof_hole_blocker", "targetname");
		foreach(var_4c225fa1 in var_2f5160f4)
		{
			var_4c225fa1 Hide();
		}
		level util::function_d8eaed3d(3, 1);
		load::function_a2995f22(1);
		namespace_bedc6a60::function_eede49df();
		namespace_bedc6a60::function_c5b9bd41("_combat");
		namespace_bedc6a60::function_14b2c542();
		namespace_391e4301::function_e950228a();
		level flag::set("ceiling_collapse_complete");
		level notify("hash_eae489c0");
		level notify("hash_d758e82");
		level thread namespace_bedc6a60::function_1d0e7c11();
	}
}

/*
	Name: function_b946efd6
	Namespace: namespace_80a43443
	Checksum: 0xCCFB315B
	Offset: 0x2330
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_b946efd6()
{
	util::wait_network_frame();
	PlayFXOnTag(level._effect["vtol_thruster"], self, "tag_fx_engine_left");
	PlayFXOnTag(level._effect["vtol_thruster"], self, "tag_fx_engine_right");
	self vehicle::toggle_sounds(0);
}

/*
	Name: function_d61ac79f
	Namespace: namespace_80a43443
	Checksum: 0x12F265B8
	Offset: 0x23C8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_d61ac79f()
{
	self.goalRadius = 64;
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self ai::set_behavior_attribute("disablearrivals", 1);
	self ai::set_behavior_attribute("disablesprint", 1);
	self ai::set_behavior_attribute("vignette_mode", "slow");
	if(self.script_noteworthy === "does_walk")
	{
		self ai::set_behavior_attribute("patrol", 1);
	}
}

/*
	Name: function_e8e62f90
	Namespace: namespace_80a43443
	Checksum: 0x15CF88E0
	Offset: 0x24B8
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_e8e62f90()
{
	level thread function_b7170f9e("staging_area_background_vtol", 3);
	function_4199310b();
	function_719a5145();
	objectives::complete("cp_level_ramses_protect_salim");
	objectives::set("cp_level_ramses_eastern_checkpoint");
	function_bb173a03();
	callback::on_spawned(&function_9778ae44);
	callback::on_spawned(&namespace_391e4301::function_c3080ff8);
	level.players function_9778ae44();
	level thread function_8ec9bf83();
	level thread function_4e3398e0();
	spawner::simple_spawn("staging_area_background_technical_01", &function_226410e6);
	level flag::wait_till("trucks_ready");
	objectives::set("cp_level_ramses_board");
	trigger::wait_till("staging_area_enter_trig");
	level thread function_b7170f9e("staging_area_overhead_vtol", 3);
	level flag::wait_till("players_ready");
	objectives::complete("cp_level_ramses_board");
	level notify("hash_e99a85b4");
	level util::clientNotify("sndLevelEnd");
	util::screen_fade_out(2);
}

/*
	Name: function_719a5145
	Namespace: namespace_80a43443
	Checksum: 0x99B9738D
	Offset: 0x26E0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_719a5145()
{
	level endon("hash_ddf95d21");
	level thread function_d3b86c9f(10);
	level thread function_637a00da();
	level thread function_5813f4ec();
	level flag::wait_till("jumpdirect_loops_started");
	level flag::wait_till("hendricks_jumpdirect_looping");
	level flag::wait_till("khalil_jumpdirect_looping");
}

/*
	Name: function_d3b86c9f
	Namespace: namespace_80a43443
	Checksum: 0x20C2E3B1
	Offset: 0x27A0
	Size: 0x1D
	Parameters: 1
	Flags: None
*/
function function_d3b86c9f(n_timer)
{
	wait(n_timer);
	level notify("hash_ddf95d21");
}

/*
	Name: function_637a00da
	Namespace: namespace_80a43443
	Checksum: 0xCAA31CEA
	Offset: 0x27C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_637a00da()
{
	level waittill("hash_1910f11d");
	level flag::set("hendricks_jumpdirect_looping");
}

/*
	Name: function_5813f4ec
	Namespace: namespace_80a43443
	Checksum: 0xEDF659BF
	Offset: 0x2800
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5813f4ec()
{
	level waittill("hash_2cca5b8f");
	level flag::set("khalil_jumpdirect_looping");
}

/*
	Name: function_4e3398e0
	Namespace: namespace_80a43443
	Checksum: 0x926CE03F
	Offset: 0x2838
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_4e3398e0()
{
	level waittill("hash_585a73e3");
	callback::remove_on_spawned(&function_9778ae44);
	callback::on_spawned(&function_a10d0d8a);
	level.players function_81f6093f();
	foreach(player in level.players)
	{
		player AllowJump(1);
		player function_7c34e9c7(0);
	}
}

/*
	Name: function_a10d0d8a
	Namespace: namespace_80a43443
	Checksum: 0xD286D22F
	Offset: 0x2958
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a10d0d8a()
{
	self AllowJump(1);
	self function_7c34e9c7(0);
}

/*
	Name: function_9778ae44
	Namespace: namespace_80a43443
	Checksum: 0x2E5851E5
	Offset: 0x2998
	Size: 0xF1
	Parameters: 1
	Flags: None
*/
function function_9778ae44(var_d9cd2a00)
{
	if(!isdefined(var_d9cd2a00))
	{
		var_d9cd2a00 = 0.4;
	}
	if(IsArray(self))
	{
		a_e_players = self;
	}
	else
	{
		a_e_players = Array(self);
	}
	foreach(e_player in a_e_players)
	{
		e_player thread function_bfaa9238(var_d9cd2a00);
	}
}

/*
	Name: function_bfaa9238
	Namespace: namespace_80a43443
	Checksum: 0x4C4469A0
	Offset: 0x2A98
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_bfaa9238(var_d9cd2a00)
{
	if(!isdefined(var_d9cd2a00))
	{
		var_d9cd2a00 = 0.4;
	}
	self endon("hash_fc969024");
	self endon("death");
	trigger::wait_till("trig_start_station_exit_tether", "targetname", self);
	self thread namespace_391e4301::player_walk_speed_adjustment(level.var_9db406db, "stop_tether", 72, 144, var_d9cd2a00, 1, 66);
	self thread namespace_391e4301::function_c3080ff8();
}

/*
	Name: function_81f6093f
	Namespace: namespace_80a43443
	Checksum: 0xBD94D847
	Offset: 0x2B50
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_81f6093f()
{
	if(IsArray(self))
	{
		a_e_players = self;
	}
	else
	{
		a_e_players = Array(self);
	}
	foreach(e_player in a_e_players)
	{
		e_player notify("hash_fc969024");
	}
	wait(0.05);
	foreach(e_player in a_e_players)
	{
		e_player setMoveSpeedScale(1);
	}
}

/*
	Name: function_20a0583c
	Namespace: namespace_80a43443
	Checksum: 0x46F65105
	Offset: 0x2CB0
	Size: 0x2AF
	Parameters: 4
	Flags: None
*/
function function_20a0583c(var_d0d78bd6, spawners, minWait, maxWait)
{
	if(!isdefined(minWait))
	{
		minWait = 2;
	}
	if(!isdefined(maxWait))
	{
		maxWait = 3;
	}
	var_b53abf06 = 0;
	var_89e465d0 = 64;
	var_c6eac35a = 96;
	while(var_b53abf06 < var_d0d78bd6)
	{
		ais = spawner::simple_spawn(Array::random(spawners));
		var_b53abf06++;
		foreach(ai in ais)
		{
			ai.goalRadius = randomIntRange(var_89e465d0, var_c6eac35a);
			if(RandomInt(100) < 30)
			{
				ai ai::set_behavior_attribute("sprint", 1);
			}
			if(RandomInt(100) < 25)
			{
				sndent = spawn("script_origin", ai.origin);
				sndent LinkTo(ai);
				sndent PlayLoopSound("amb_walla_battlechatter", 1);
				ai thread function_587c5a03(sndent);
			}
		}
		if(var_b53abf06 == 1)
		{
			var_7000f414 = Array::random(ais);
			if(isdefined(var_7000f414))
			{
				var_7000f414 thread function_b8a391f4();
			}
		}
		wait(randomIntRange(minWait, maxWait));
	}
}

/*
	Name: function_587c5a03
	Namespace: namespace_80a43443
	Checksum: 0x4410BE52
	Offset: 0x2F68
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_587c5a03(sndent)
{
	self waittill("death");
	sndent delete();
}

/*
	Name: function_28cbacfb
	Namespace: namespace_80a43443
	Checksum: 0x8853AA29
	Offset: 0x2FA0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_28cbacfb()
{
	var_300210d5 = GetEntArray("staging_area_sidewalk_guys_left", "targetname");
	var_abb4d038 = GetEntArray("staging_area_sidewalk_guys_right", "targetname");
	var_d0d78bd6 = 4;
	var_6e3117c = 6;
	level thread function_20a0583c(var_d0d78bd6, var_300210d5, 3, 6);
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038, 3, 6);
	wait(var_6e3117c);
	level flag::wait_till("trucks_ready");
	trigger::wait_or_timeout(var_6e3117c, "staging_area_enter_trig", "targetname");
	level thread function_20a0583c(var_d0d78bd6, var_300210d5);
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038);
}

/*
	Name: function_749a5dc9
	Namespace: namespace_80a43443
	Checksum: 0x72BB0DC5
	Offset: 0x3108
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_749a5dc9()
{
	var_300210d5 = GetEntArray("staging_area_background_runners_left", "targetname");
	var_abb4d038 = GetEntArray("staging_area_background_runners_right", "targetname");
	var_d0d78bd6 = 3;
	var_6e3117c = 10;
	level thread function_20a0583c(var_d0d78bd6, var_300210d5, 3, 6);
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038, 3, 6);
	wait(var_6e3117c);
	level thread function_20a0583c(var_d0d78bd6, var_300210d5, 3, 6);
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038, 3, 6);
}

/*
	Name: function_7bac890d
	Namespace: namespace_80a43443
	Checksum: 0xB4C7D244
	Offset: 0x3238
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_7bac890d()
{
	var_abb4d038 = GetEntArray("staging_area_background_runners2", "targetname");
	var_d0d78bd6 = 3;
	var_6e3117c = 10;
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038, 3, 6);
	wait(var_6e3117c);
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038, 3, 6);
}

/*
	Name: function_ae408b2c
	Namespace: namespace_80a43443
	Checksum: 0x5317EA4E
	Offset: 0x32E8
	Size: 0x177
	Parameters: 0
	Flags: None
*/
function function_ae408b2c()
{
	var_ddb0d40f = 36;
	while(1)
	{
		if(GetAIArray().size < var_ddb0d40f)
		{
			level thread function_28cbacfb();
		}
		level flag::wait_till("trucks_ready");
		minWaitTime = 7;
		maxWaitTime = 11;
		wait(randomIntRange(minWaitTime, maxWaitTime));
		if(GetAIArray().size < var_ddb0d40f)
		{
			level thread function_749a5dc9();
		}
		minWaitTime = 11;
		maxWaitTime = 13;
		wait(randomIntRange(minWaitTime, maxWaitTime));
		if(GetAIArray().size < var_ddb0d40f)
		{
			level thread function_7bac890d();
		}
		minWaitTime = 10;
		maxWaitTime = 14;
		wait(randomIntRange(minWaitTime, maxWaitTime));
	}
}

/*
	Name: function_bb173a03
	Namespace: namespace_80a43443
	Checksum: 0x58A43413
	Offset: 0x3468
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_bb173a03()
{
	s_exit = struct::get("ramses_station_exit_obj", "targetname");
	t_exit = spawn("trigger_radius_use", s_exit.origin, 0, 50, 64);
	t_exit TriggerIgnoreTeam();
	t_exit SetVisibleToAll();
	t_exit SetTeamForTrigger("none");
	var_2661661a = util::function_14518e76(t_exit, &"cp_level_ramses_exit_station", &"CP_MI_CAIRO_RAMSES_MOVE_ASIDE", &function_9b7c2788);
	var_2661661a waittill("hash_c2b847e5");
	if(isdefined(level.BZM_RAMSESDialogue3_2Callback))
	{
		level thread [[level.BZM_RAMSESDialogue3_2Callback]]();
	}
	level flag::set("station_exit_removed");
	var_4c225fa1 = GetEnt(s_exit.target, "targetname");
	var_4c225fa1 delete();
	var_2661661a gameobjects::disable_object();
	objectives::complete("cp_level_ramses_exit_station");
}

/*
	Name: function_8ec9bf83
	Namespace: namespace_80a43443
	Checksum: 0xA5562C17
	Offset: 0x3640
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_8ec9bf83()
{
	level endon("hash_e99a85b4");
	t_cleanup = GetEnt("staging_area_ai_cleanup_aitrig", "targetname");
	while(1)
	{
		t_cleanup waittill("trigger", var_74df00be);
		if(isai(var_74df00be))
		{
			var_74df00be delete();
		}
	}
}

/*
	Name: function_5cb0e184
	Namespace: namespace_80a43443
	Checksum: 0x3EA2B140
	Offset: 0x36D8
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_5cb0e184()
{
	var_3b0df191 = 0;
	str_name = "";
	foreach(var_8339cb0d in self)
	{
		if(str_name != var_8339cb0d.targetname)
		{
			var_3b0df191++;
		}
		str_name = var_8339cb0d.targetname;
	}
	return var_3b0df191;
}

/*
	Name: function_7f4396ab
	Namespace: namespace_80a43443
	Checksum: 0xAD321806
	Offset: 0x37A8
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_7f4396ab(var_4b5be224)
{
	var_186e2482 = [];
	for(i = 1; i < var_4b5be224 + 1; i++)
	{
		var_a1235c6c = GetSpawnerArray("staging_area_background_runners" + i, "targetname");
		if(!isdefined(var_186e2482))
		{
			var_186e2482 = [];
		}
		else if(!IsArray(var_186e2482))
		{
			var_186e2482 = Array(var_186e2482);
		}
		var_186e2482[var_186e2482.size] = var_a1235c6c;
	}
	return var_186e2482;
}

/*
	Name: function_49a7f92a
	Namespace: namespace_80a43443
	Checksum: 0x53B8F877
	Offset: 0x3890
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_49a7f92a(str_node)
{
	nd_goal = GetNode(str_node, "targetname");
	self SetGoal(nd_goal, 1);
	self waittill("goal");
	self ClearForcedGoal();
}

/*
	Name: function_4199310b
	Namespace: namespace_80a43443
	Checksum: 0xFEC243FD
	Offset: 0x3910
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_4199310b()
{
	var_dfac08c2 = struct::get_array("vtol_ride_staging_area_prop_spots", "script_noteworthy");
	foreach(s in var_dfac08c2)
	{
		m_prop = util::spawn_model(s.model, s.origin, s.angles);
		m_prop.targetname = s.targetname;
		m_prop.script_objective = "vtol_ride";
		util::wait_network_frame();
	}
}

/*
	Name: function_80a43443
	Namespace: namespace_80a43443
	Checksum: 0x1BB52F6E
	Offset: 0x3A40
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_80a43443()
{
	var_6e02a600 = GetEntArray("vtol_ride_trig", "script_noteworthy");
	level waittill("hash_3d44865d");
	var_6e02a600 init_flags("_ready");
	var_6e02a600 function_9b92c048("_ready");
	level flag::set("vtol_ride_started");
	level thread function_6c678d00();
	level flag::wait_till("mobile_wall_fxanim_start");
	level flag::set("dead_turret_stop_station_ambients");
}

/*
	Name: function_6c678d00
	Namespace: namespace_80a43443
	Checksum: 0x21B3317C
	Offset: 0x3B40
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_6c678d00()
{
	level thread function_8dfea4a5();
	level thread function_58382ac0();
	level thread function_aa774b42();
}

/*
	Name: function_8dfea4a5
	Namespace: namespace_80a43443
	Checksum: 0xBC6D5481
	Offset: 0x3B98
	Size: 0x46B
	Parameters: 0
	Flags: None
*/
function function_8dfea4a5()
{
	var_48964153 = [];
	foreach(e_turret in level.var_9657b09b)
	{
		if(isdefined(e_turret.script_int) && e_turret.script_int == 1)
		{
			var_48964153[var_48964153.size] = e_turret;
		}
	}
	var_bbfd71d6 = GetVehicleNode("spawn_amb_vtol_1", "script_noteworthy");
	var_bbfd71d6 waittill("trigger");
	var_299edd3a = GetEntArray("amb_vtol_quads", "targetname");
	var_ed1d84d = GetVehicleNode("vtol_1_crash_node", "script_noteworthy");
	var_6300e38d = util::spawn_model("script_origin", var_ed1d84d.origin, var_ed1d84d.angles);
	var_6300e38d SetInvisibleToAll();
	foreach(e_turret in var_48964153)
	{
		e_turret turret::set_target(var_6300e38d, undefined, 0);
	}
	var_ed1d84d waittill("trigger");
	foreach(e_turret in var_48964153)
	{
		e_turret thread turret::fire_for_time(4, 0);
	}
	var_34d452b6 = GetVehicleNode("vtol_2_crash_node", "script_noteworthy");
	var_6300e38d = util::spawn_model("script_origin", var_34d452b6.origin, var_34d452b6.angles);
	var_6300e38d SetInvisibleToAll();
	foreach(e_turret in var_48964153)
	{
		e_turret turret::set_target(var_6300e38d, undefined, 0);
	}
	var_34d452b6 waittill("trigger");
	foreach(e_turret in var_48964153)
	{
		e_turret thread turret::fire_for_time(4, 0);
	}
	var_6300e38d delete();
}

/*
	Name: function_58382ac0
	Namespace: namespace_80a43443
	Checksum: 0xB330E96A
	Offset: 0x4010
	Size: 0x3FB
	Parameters: 0
	Flags: None
*/
function function_58382ac0()
{
	var_48964153 = [];
	foreach(e_turret in level.var_9657b09b)
	{
		if(isdefined(e_turret.script_int) && e_turret.script_int == 0)
		{
			var_48964153[var_48964153.size] = e_turret;
		}
	}
	var_1969a71e = GetVehicleNode("vtol_3_crash_node", "script_noteworthy");
	var_6300e38d = util::spawn_model("script_origin", var_1969a71e.origin, var_1969a71e.angles);
	var_6300e38d SetInvisibleToAll();
	foreach(e_turret in var_48964153)
	{
		e_turret turret::set_target(var_6300e38d, undefined, 0);
	}
	var_1969a71e waittill("trigger");
	foreach(e_turret in var_48964153)
	{
		e_turret thread turret::fire_for_time(4, 0);
	}
	var_5b5d4311 = GetVehicleNode("vtol_4_crash_node", "script_noteworthy");
	var_6300e38d = util::spawn_model("script_origin", var_5b5d4311.origin, var_5b5d4311.angles);
	var_6300e38d SetInvisibleToAll();
	foreach(e_turret in var_48964153)
	{
		e_turret turret::set_target(var_6300e38d, undefined, 0);
	}
	var_5b5d4311 waittill("trigger");
	foreach(e_turret in var_48964153)
	{
		e_turret thread turret::fire_for_time(4, 0);
	}
	var_6300e38d delete();
}

/*
	Name: function_aa774b42
	Namespace: namespace_80a43443
	Checksum: 0x107293FA
	Offset: 0x4418
	Size: 0x2B1
	Parameters: 0
	Flags: None
*/
function function_aa774b42()
{
	var_e416d54a = GetVehicleNode("start_egypt_runners_1", "script_noteworthy");
	var_e416d54a waittill("trigger");
	var_f24c69d3 = GetEntArray("vtol_egyptian_runners_1", "targetname");
	foreach(var_8339cb0d in var_f24c69d3)
	{
		ai_runner = var_8339cb0d spawner::spawn();
		ai_runner thread run_and_delete();
	}
	var_be145ae1 = GetVehicleNode("start_egypt_runners_2", "script_noteworthy");
	var_be145ae1 waittill("trigger");
	var_f24c69d3 = GetEntArray("vtol_egyptian_runners_2", "targetname");
	foreach(var_8339cb0d in var_f24c69d3)
	{
		ai_runner = var_8339cb0d spawner::spawn();
		ai_runner thread run_and_delete();
	}
	var_f24c69d3 = GetEntArray("vtol_egyptian_runners_3", "targetname");
	foreach(var_8339cb0d in var_f24c69d3)
	{
		ai_runner = var_8339cb0d spawner::spawn();
		ai_runner thread run_and_delete();
	}
}

/*
	Name: run_and_delete
	Namespace: namespace_80a43443
	Checksum: 0x318228EE
	Offset: 0x46D8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function run_and_delete()
{
	self endon("death");
	nd_goal = GetNode(self.target, "targetname");
	self thread ai::force_goal(nd_goal, 32, 0);
	self waittill("goal");
	wait(5);
	self delete();
}

/*
	Name: objectives
	Namespace: namespace_80a43443
	Checksum: 0xB1A380D0
	Offset: 0x4760
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function objectives()
{
	level flag::wait_till("players_ready");
	objectives::complete("cp_level_ramses_eastern_checkpoint");
}

/*
	Name: scenes
	Namespace: namespace_80a43443
	Checksum: 0x2327CA72
	Offset: 0x47A8
	Size: 0x48B
	Parameters: 0
	Flags: None
*/
function scenes()
{
	level.var_9db406db flag::init("khalil_ready");
	level.var_9db406db flag::init("khalil_init");
	level clientfield::set("staging_area_intro", 1);
	scene::add_scene_func("p7_fxanim_cp_ramses_wall_carry_bundle", &function_ca7c574d, "init");
	scene::add_scene_func("cin_ram_04_01_staging_vign_finisher", &function_29d8f4e5, "done");
	level scene::init("p7_fxanim_cp_ramses_wall_carry_bundle");
	util::wait_network_frame();
	level scene::init("p7_fxanim_cp_ramses_wall_carry_02_bundle");
	util::wait_network_frame();
	level scene::init("p7_fxanim_cp_ramses_wall_carry_03_bundle");
	level scene::init("cin_ram_04_01_staging_vign_help");
	util::wait_network_frame();
	level scene::init("cin_ram_04_01_staging_vign_help_alt");
	util::wait_network_frame();
	level scene::init("cin_ram_04_01_staging_vign_logistics");
	util::wait_network_frame();
	level scene::init("cin_ram_04_01_staging_vign_trafficcop");
	level scene::init("cin_ram_04_02_easterncheck_vign_jumpdirect");
	level thread scene::Play("staging_area_ambient_egyptians", "targetname");
	level flag::set("jumpdirect_loops_started");
	function_55051636();
	level thread function_429ae99d();
	level waittill("hash_55490bd7");
	level thread function_b33ae280();
	level flag::wait_till("staging_area_enter_started");
	level thread function_ca24177d(20);
	level flag::wait_till_timeout(20, "staging_area_ambient_start");
	level thread scene::Play("p7_fxanim_cp_ramses_wall_carry_bundle");
	level clientfield::set("staging_area_intro", 0);
	level thread function_d8e0d27e();
	level waittill("hash_3d44865d");
	level thread scene::Play("cin_ram_04_01_staging_vign_help_alt");
	scene::add_scene_func("p7_fxanim_cp_ramses_vtol_ride_bundle", &function_b8babc3, "init");
	level scene::init("p7_fxanim_cp_ramses_vtol_ride_bundle");
	level waittill("hash_e8369b0d");
	level thread scene::Play("cin_ram_04_01_staging_vign_help");
	level thread scene::Play("cin_ram_04_01_staging_vign_logistics");
	level thread scene::Play("cin_ram_04_01_staging_vign_trafficcop");
	wait(RandomFloatRange(2, 4));
	level thread scene::Play("p7_fxanim_cp_ramses_wall_carry_03_bundle");
	wait(3);
	level thread function_ae408b2c();
}

/*
	Name: function_ca7c574d
	Namespace: namespace_80a43443
	Checksum: 0x8309C76F
	Offset: 0x4C40
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_ca7c574d()
{
	level.var_7902293a = Array(GetEnt("wall_carry_wall", "targetname"), GetEnt("wall_carry_doors", "targetname"), GetEnt("wall_carry_harness", "targetname"));
	foreach(part in level.var_7902293a)
	{
		part SetDedicatedShadow(1);
	}
}

/*
	Name: function_55051636
	Namespace: namespace_80a43443
	Checksum: 0x10C546BC
	Offset: 0x4D58
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_55051636()
{
	a_str_scenes = Array("cin_sgen_12_02_corvus_vign_deadpose_robot01_ontummy", "cin_sgen_12_02_corvus_vign_deadpose_robot02_onback01", "cin_sgen_12_02_corvus_vign_deadpose_robot03_onback02", "cin_sgen_12_02_corvus_vign_deadpose_robot04_onside", "cin_sgen_12_02_corvus_vign_deadpose_robot05_onwallsitting");
	foreach(str_scene in a_str_scenes)
	{
		var_1479fabb = function_4c890267();
		level thread scene::Play(str_scene, var_1479fabb);
		util::wait_network_frame();
	}
}

/*
	Name: function_4c890267
	Namespace: namespace_80a43443
	Checksum: 0x98BBAF52
	Offset: 0x4E68
	Size: 0x1BF
	Parameters: 0
	Flags: None
*/
function function_4c890267()
{
	var_58f06a18 = 80;
	var_7471f3fc = "c_nrc_robot_grunt_head";
	var_44bc45bf = Array("c_nrc_robot_grunt_g_upclean", "c_nrc_robot_grunt_g_rarmoff", "c_nrc_robot_grunt_g_larmoff");
	var_1fee561d = Array("c_nrc_robot_grunt_g_lowclean", "c_nrc_robot_grunt_g_blegsoff", "c_nrc_robot_grunt_g_rlegoff");
	var_1479fabb = util::spawn_model(Array::random(var_44bc45bf), (0, 0, 0), (0, 0, 0));
	var_1bc1366 = Array::random(var_1fee561d);
	var_1479fabb Attach(var_1bc1366);
	if(var_1bc1366 == "c_nrc_robot_grunt_g_blegsoff")
	{
		var_1479fabb HidePart("j_knee_ri_dam");
	}
	else
	{
		var_1479fabb Attach("c_nrc_robot_dam_1_g_llegspawn");
	}
	var_1479fabb Attach("c_nrc_robot_dam_1_g_rlegspawn");
	if(RandomInt(100) < var_58f06a18)
	{
		var_1479fabb Attach(var_7471f3fc);
	}
	return var_1479fabb;
}

/*
	Name: function_b33ae280
	Namespace: namespace_80a43443
	Checksum: 0x942B88A2
	Offset: 0x5030
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_b33ae280()
{
	if(scene::is_active("cin_ram_04_02_easterncheck_vign_jumpdirect_hendricks"))
	{
		scene::stop("cin_ram_04_02_easterncheck_vign_jumpdirect_hendricks");
	}
	if(scene::is_active("cin_ram_04_02_easterncheck_vign_jumpdirect_khalil"))
	{
		scene::stop("cin_ram_04_02_easterncheck_vign_jumpdirect_khalil");
	}
	if(!isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 = util::function_740f8516("hendricks");
	}
	scene::add_scene_func("cin_ram_04_02_easterncheck_vign_jumpdirect", &function_b1758ff5, "done");
	level thread scene::Play("cin_ram_04_02_easterncheck_vign_jumpdirect");
	Array::wait_till(Array(level.var_2fd26037, level.var_9db406db), "ready_to_move");
	level flag::set("jumpdirect_scene_done");
}

/*
	Name: function_b1758ff5
	Namespace: namespace_80a43443
	Checksum: 0x370E4550
	Offset: 0x5178
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_b1758ff5(a_ents)
{
	var_edc5d3d5 = a_ents["staging_area_jumpdirect_guy02"];
	wait(randomIntRange(11, 12));
	nd_path = GetNode("node_jumpdirect_guy02_path", "targetname");
	var_edc5d3d5 ai::patrol(nd_path);
}

/*
	Name: function_163908b8
	Namespace: namespace_80a43443
	Checksum: 0xC82126DF
	Offset: 0x5210
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_163908b8()
{
	nd_wait = GetNode("node_jumpdirect_guy01_wait", "targetname");
	self SetGoal(nd_wait, 1);
	level flag::wait_till("heroes_start_truck_anims");
	wait(randomIntRange(2, 3));
	nd_path = GetNode("node_jumpdirect_guy01_path", "targetname");
	self ai::patrol(nd_path);
}

/*
	Name: function_ca24177d
	Namespace: namespace_80a43443
	Checksum: 0x8AC116F5
	Offset: 0x52E8
	Size: 0x1EB
	Parameters: 1
	Flags: None
*/
function function_ca24177d(n_timeout)
{
	str_scene_name = "cin_ram_04_01_staging_vign_finisher";
	var_b4d3a3bd = Array("c_nrc_robot_grunt_g_blegsoff", "c_nrc_robot_grunt_head");
	var_5aac3d30 = Array("j_hip_le_dam", "j_knee_ri_dam");
	var_db276508 = Array("c_nrc_robot_grunt_g_rlegoff", "c_nrc_robot_grunt_head");
	var_b478c00a = util::spawn_model("c_nrc_robot_grunt_g_upclean", (0, 0, 0), (0, 0, 0));
	var_424a279d = util::spawn_model("c_nrc_robot_grunt_g_rarmoff", (0, 0, 0), (0, 0, 0));
	var_424a279d function_96449bd2(var_db276508);
	var_b478c00a function_96449bd2(var_b4d3a3bd, var_5aac3d30);
	var_fbbef3a["robot_crawler_01"] = var_424a279d;
	var_fbbef3a["robot_crawler_02"] = var_b478c00a;
	level scene::init(str_scene_name, var_fbbef3a);
	level flag::wait_till_any_timeout(n_timeout, Array("staging_area_kills_start", "staging_area_ambient_start"));
	level scene::Play(str_scene_name, var_fbbef3a);
}

/*
	Name: function_29d8f4e5
	Namespace: namespace_80a43443
	Checksum: 0x6C5CF40B
	Offset: 0x54E0
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_29d8f4e5(a_ents)
{
	ai_guy = a_ents["staging_area_vign_finisher_guy"];
	ai_guy SetGoal(self.origin);
	wait(randomIntRange(8, 10));
	nd_path = GetNode("node_vign_finisher_path", "targetname");
	ai_guy ai::patrol(nd_path);
}

/*
	Name: function_96449bd2
	Namespace: namespace_80a43443
	Checksum: 0xFCFB395C
	Offset: 0x5590
	Size: 0x131
	Parameters: 2
	Flags: None
*/
function function_96449bd2(var_c2aab2dd, var_3a2aaa4f)
{
	if(!isdefined(var_3a2aaa4f))
	{
		var_3a2aaa4f = [];
	}
	foreach(str_part in var_c2aab2dd)
	{
		self Attach(str_part);
	}
	foreach(str_tag in var_3a2aaa4f)
	{
		self HidePart(str_tag);
	}
}

/*
	Name: function_9b7c2788
	Namespace: namespace_80a43443
	Checksum: 0x478D84D8
	Offset: 0x56D0
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_9b7c2788(e_player)
{
	str_name = "p_ramses_lift_wing_blockage";
	scene::add_scene_func(str_name, &function_3031a196, "play");
	scene::add_scene_func(str_name, &function_75f74956, "done");
	level thread scene::Play(str_name, e_player);
	self notify("hash_c2b847e5");
}

/*
	Name: function_3031a196
	Namespace: namespace_80a43443
	Checksum: 0xEEAAA888
	Offset: 0x5780
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_3031a196(a_ents)
{
	level notify("hash_55490bd7");
	level waittill("hash_15aca665");
	level flag::set("staging_area_enter_started");
}

/*
	Name: function_75f74956
	Namespace: namespace_80a43443
	Checksum: 0x65AB9C5C
	Offset: 0x57D0
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function function_75f74956(a_ents)
{
	util::clear_streamer_hint();
}

/*
	Name: function_3e1010fa
	Namespace: namespace_80a43443
	Checksum: 0x5D05795E
	Offset: 0x57F8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_3e1010fa()
{
	level notify("hash_585a73e3");
	level thread function_9f0cc2c4();
	function_6a212876();
}

/*
	Name: function_6a212876
	Namespace: namespace_80a43443
	Checksum: 0xCBAA0768
	Offset: 0x5838
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_6a212876()
{
	level scene::Play("cin_ram_04_02_easterncheck_vign_jumpdirect_hendricks_end");
	level.var_2fd26037 ai::set_behavior_attribute("vignette_mode", "fast");
	level.var_2fd26037.goalRadius = 64;
	level.var_2fd26037 SetGoal(GetNode("vtol_ride_temp_hendricks_goal", "targetname"));
	level.var_2fd26037 ai::set_behavior_attribute("disablearrivals", 1);
	level.var_2fd26037 waittill("goal");
	level flag::set("heroes_start_truck_anims");
	level.var_2fd26037 SetHighDetail(1);
	level scene::Play("cin_ram_04_02_easterncheck_1st_entertruck_demo_hendricks");
}

/*
	Name: function_9f0cc2c4
	Namespace: namespace_80a43443
	Checksum: 0x5FB9B291
	Offset: 0x5978
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_9f0cc2c4()
{
	level scene::Play("cin_ram_04_02_easterncheck_vign_jumpdirect_khalil_end");
	level.var_9db406db ai::set_behavior_attribute("vignette_mode", "fast");
	level.var_9db406db.goalRadius = 64;
	level.var_9db406db SetGoal(GetNode("vtol_ride_temp_khalil_goal", "targetname"));
	level.var_9db406db ai::set_behavior_attribute("disablearrivals", 1);
	level.var_9db406db waittill("goal");
	level.var_9db406db SetHighDetail(1);
	level thread scene::init("cin_ram_04_02_easterncheck_1st_entertruck_demo_khalil");
	level.var_9db406db waittill("hash_9ef0805");
	level.var_9db406db flag::set("khalil_init");
	level.var_9db406db waittill("hash_fecf35c0");
	level.var_9db406db flag::set("khalil_ready");
	level thread namespace_e4c0c552::function_973b77f9();
}

/*
	Name: function_3ae58c71
	Namespace: namespace_80a43443
	Checksum: 0xFC2F8FBC
	Offset: 0x5B10
	Size: 0xB9
	Parameters: 3
	Flags: None
*/
function function_3ae58c71(e_player, str_tag, var_35a302af)
{
	if(str_tag == "tag_antenna1")
	{
		var_35a302af thread scene::Play("cin_ram_04_02_easterncheck_1st_entertruck_demo2", e_player);
	}
	else
	{
		var_35a302af thread scene::Play("cin_ram_04_02_easterncheck_1st_entertruck_demo", e_player);
	}
	level flag::set("player_enter_hero_truck_started");
	e_player thread function_77af1dc();
	e_player waittill("hash_15add06c");
}

/*
	Name: function_77af1dc
	Namespace: namespace_80a43443
	Checksum: 0xC314DB67
	Offset: 0x5BD8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_77af1dc()
{
	self endon("disconnect");
	var_376c2899 = 0.85;
	self waittill("hash_b5142ba0");
	self StartCameraTween(var_376c2899);
}

/*
	Name: function_b8babc3
	Namespace: namespace_80a43443
	Checksum: 0xA3EA9AD6
	Offset: 0x5C30
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_b8babc3(a_ents)
{
	var_2eb506d6 = Array(a_ents["technical_left"], a_ents["technical_right"]);
	var_e0da190b = Array("tag_antenna1", "tag_antenna2");
	foreach(var_35a302af in var_2eb506d6)
	{
		var_35a302af thread function_1d44997f(var_e0da190b);
	}
	Array::wait_till(var_2eb506d6, "ready_to_board");
	level flag::set("trucks_ready");
	Array::wait_till(var_2eb506d6, "seats_full");
	level flag::set("players_ready");
}

/*
	Name: function_1d44997f
	Namespace: namespace_80a43443
	Checksum: 0x9FFBABC6
	Offset: 0x5DB8
	Size: 0x3C1
	Parameters: 1
	Flags: None
*/
function function_1d44997f(var_e0da190b)
{
	self function_52f443ca();
	if(self.targetname == "technical_left")
	{
		level waittill("hash_3e1010fa");
		level thread function_3e1010fa();
	}
	self waittill("stopped");
	v_origin = self GetTagOrigin("tag_bumper_rear_d0");
	v_angles = self GetTagAngles("tag_bumper_rear_d0");
	e_collision = GetEnt(self.targetname + "_boarding_collision", "targetname");
	e_collision moveto(v_origin, 0.05);
	e_collision RotateTo(v_angles + VectorScale((0, 1, 0), 90), 0.5);
	wait(1);
	self notify("hash_7062b02b");
	if(self.targetname == "technical_left")
	{
		var_3ffc3e83 = spawn("trigger_radius", self.origin, 0, 666, 256);
		var_3ffc3e83 waittill("trigger");
		var_3ffc3e83 delete();
		level.var_9db406db flag::wait_till_timeout(10, "khalil_init");
		level thread scene::Play("p7_fxanim_cp_ramses_wall_carry_02_bundle");
		level thread scene::Play("cin_ram_04_02_easterncheck_1st_entertruck_demo_khalil");
	}
	level.var_9db406db flag::wait_till("khalil_ready");
	self.var_3c1d8edf = 0;
	self thread function_85aceb92(var_e0da190b);
	foreach(str_tag in var_e0da190b)
	{
		v_offset = v_origin + AnglesToForward(v_angles) * 20;
		t_enter = spawn("trigger_box_use", v_offset, 0, 36, 32, 48);
		t_enter.angles = v_angles;
		t_enter.targetname = str_tag;
		t_enter function_9de6dff0(self, var_e0da190b);
	}
}

/*
	Name: function_52f443ca
	Namespace: namespace_80a43443
	Checksum: 0x4CA12015
	Offset: 0x6188
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function function_52f443ca()
{
	a_ai_riders = [];
	var_2ffb0686 = Array("driver", "passenger1");
	var_3f100131 = Array("staging_area_rider_1", "staging_area_rider_2", "staging_area_rider_3");
	var_3f100131 = Array::randomize(var_3f100131);
	for(i = 0; i < var_2ffb0686.size; i++)
	{
		a_ai_riders[i] = spawner::simple_spawn_single(var_3f100131[i]);
		a_ai_riders[i] vehicle::get_in(self, var_2ffb0686[i], 1);
	}
}

/*
	Name: function_c37f7fc3
	Namespace: namespace_80a43443
	Checksum: 0x8A939E2D
	Offset: 0x62A0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c37f7fc3()
{
	var_133e9095 = GetEnt("lgt_test_probe", "targetname");
	level flag::set("vtol_ride_temp_probe_linked");
	var_133e9095 LinkTo(self);
}

/*
	Name: function_9de6dff0
	Namespace: namespace_80a43443
	Checksum: 0xD9220B0F
	Offset: 0x6310
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_9de6dff0(var_35a302af, a_str_tags)
{
	level notify("hash_c727333f");
	self setcursorhint("HINT_INTERACTIVE_PROMPT");
	self TriggerIgnoreTeam();
	self function_2bf40f1(var_35a302af, a_str_tags);
}

/*
	Name: function_2bf40f1
	Namespace: namespace_80a43443
	Checksum: 0x8E215E7A
	Offset: 0x6390
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_2bf40f1(var_35a302af, a_str_tags)
{
	e_player = self function_c61be98c(var_35a302af);
	if(isdefined(e_player) && !e_player flag::get("linked_to_truck"))
	{
		self function_f132ee31(var_35a302af, e_player);
		level.var_e32d239b++;
		var_35a302af.var_3c1d8edf++;
		var_35a302af notify("hash_19304798");
	}
	else
	{
		self function_2bf40f1(var_35a302af, a_str_tags);
	}
}

/*
	Name: function_c61be98c
	Namespace: namespace_80a43443
	Checksum: 0xE36203E4
	Offset: 0x6460
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_c61be98c(var_35a302af)
{
	var_2661661a = util::function_14518e76(self, &"cp_prompt_entervehicle_ramses_technical", &"CP_MI_CAIRO_RAMSES_BOARD_TRUCK", &function_8ebbac0d);
	if(var_35a302af.targetname === "technical_right")
	{
		var_2661661a thread function_543c8d72(var_35a302af);
	}
	e_player = var_2661661a function_3bc165a2(var_35a302af);
	var_2661661a gameobjects::disable_object();
	return e_player;
}

/*
	Name: function_543c8d72
	Namespace: namespace_80a43443
	Checksum: 0x9BA73839
	Offset: 0x6520
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_543c8d72(var_35a302af)
{
	level endon("hash_fed8530d");
	var_35a302af endon("hash_6815ed3f");
	self.is_enabled = 0;
	self gameobjects::disable_object();
	while(1)
	{
		if(level.players.size <= 2 && self.is_enabled)
		{
			self.is_enabled = 0;
			self gameobjects::disable_object();
		}
		else if(level.players.size > 2 && !self.is_enabled)
		{
			self.is_enabled = 1;
			self gameobjects::enable_object();
		}
		wait(0.5);
	}
}

/*
	Name: function_8ebbac0d
	Namespace: namespace_80a43443
	Checksum: 0xC323C8A6
	Offset: 0x6608
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_8ebbac0d(e_player)
{
	self notify("hash_9292e8f0", e_player);
	objectives::complete("cp_level_ramses_eastern_checkpoint", e_player);
}

/*
	Name: function_3bc165a2
	Namespace: namespace_80a43443
	Checksum: 0xBB5BBD61
	Offset: 0x6650
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_3bc165a2(var_35a302af)
{
	var_35a302af endon("hash_19304798");
	self waittill("hash_9292e8f0", e_player);
	return e_player;
}

/*
	Name: function_85aceb92
	Namespace: namespace_80a43443
	Checksum: 0xD67A6FA4
	Offset: 0x6690
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_85aceb92(a_str_tags)
{
	while(self.var_3c1d8edf < a_str_tags.size)
	{
		if(level.players.size == 1 && level.var_e32d239b >= level.players.size)
		{
			break;
		}
		else if(level.players.size > 1 && level.var_e32d239b >= 1 && level.var_e32d239b >= level.activePlayers.size)
		{
			break;
		}
		wait(0.25);
	}
	self notify("hash_6815ed3f");
}

/*
	Name: function_f132ee31
	Namespace: namespace_80a43443
	Checksum: 0xDC814D29
	Offset: 0x6748
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_f132ee31(var_35a302af, e_player)
{
	str_tag = self.targetname;
	e_player flag::set("linked_to_truck");
	if(var_35a302af.var_a8da2af9 === 1 && level scene::is_playing("cin_ram_04_02_easterncheck_1st_entertruck_demo"))
	{
		level waittill("hash_faa941cd");
	}
	var_35a302af.var_a8da2af9 = 1;
	var_35a302af function_3ae58c71(e_player, str_tag, var_35a302af);
	var_35a302af.var_a8da2af9 = 0;
}

/*
	Name: function_d8e0d27e
	Namespace: namespace_80a43443
	Checksum: 0xCDAFF842
	Offset: 0x6828
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_d8e0d27e()
{
	wait(15);
	trigger::use("trig_technical_01_go");
	wait(5);
	spawner::simple_spawn("staging_area_background_technical_02", &function_226410e6);
	wait(15);
	trigger::use("trig_technical_02_go");
}

/*
	Name: function_226410e6
	Namespace: namespace_80a43443
	Checksum: 0xDC622F16
	Offset: 0x68A8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_226410e6()
{
	nd_start = GetVehicleNode(self.target, "targetname");
	if(self.script_noteworthy === "staging_area_background_technical_01")
	{
		level waittill("hash_3d44865d");
	}
	self thread vehicle::get_on_and_go_path(nd_start);
	self waittill("reached_path_end");
	foreach(e_rider in self.riders)
	{
		e_rider delete();
	}
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
}

/*
	Name: function_b7170f9e
	Namespace: namespace_80a43443
	Checksum: 0xC62130DF
	Offset: 0x6A00
	Size: 0x237
	Parameters: 2
	Flags: None
*/
function function_b7170f9e(str_targetname, n_max)
{
	level endon("hash_e99a85b4");
	var_67a453fb = GetVehicleSpawnerArray(str_targetname, "targetname");
	while(1)
	{
		var_67a453fb = Array::randomize(var_67a453fb);
		foreach(var_1f3f1cb0 in var_67a453fb)
		{
			if(level.var_6b2d0ae6 < n_max)
			{
				if(isdefined(var_1f3f1cb0))
				{
					if(!(isdefined(var_1f3f1cb0.b_active) && var_1f3f1cb0.b_active))
					{
						var_1f3f1cb0.b_active = 1;
						vh_vtol = spawner::simple_spawn_single(var_1f3f1cb0);
						var_83fa3476 = GetVehicleNode(var_1f3f1cb0.target, "targetname");
						vh_vtol vehicle::toggle_sounds(0);
						var_1f3f1cb0.count++;
						level.var_6b2d0ae6++;
						vh_vtol PlayLoopSound("evt_vtol_ambient");
						vh_vtol thread function_bd103c67(var_1f3f1cb0);
						vh_vtol thread vehicle::get_on_and_go_path(var_83fa3476);
						wait(RandomFloatRange(0.4, 0.75));
					}
				}
				continue;
			}
			level waittill("hash_318f97c4");
		}
		wait(0.05);
	}
}

/*
	Name: function_bd103c67
	Namespace: namespace_80a43443
	Checksum: 0x371CD2B4
	Offset: 0x6C40
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_bd103c67(SP)
{
	level endon("hash_e99a85b4");
	self waittill("death");
	if(isdefined(SP))
	{
		SP.b_active = 0;
	}
	level.var_6b2d0ae6--;
	level notify("hash_318f97c4");
}

/*
	Name: function_76b0226a
	Namespace: namespace_80a43443
	Checksum: 0x3A60D171
	Offset: 0x6CA0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_76b0226a(var_4e88691)
{
	self waittill("death");
	if(isdefined(var_4e88691))
	{
		var_4e88691 delete();
	}
}

/*
	Name: function_429ae99d
	Namespace: namespace_80a43443
	Checksum: 0xBD19151A
	Offset: 0x6CE8
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_429ae99d()
{
	level endon("hash_e99a85b4");
	var_8498e7d1 = Array("helipad_liftoff_vtol_1", "helipad_liftoff_vtol_2", "helipad_liftoff_vtol_3", "helipad_liftoff_vtol_4", "helipad_liftoff_vtol_5", "helipad_liftoff_vtol_6", "helipad_liftoff_vtol_7", "helipad_liftoff_vtol_8", "helipad_liftoff_vtol_9", "helipad_liftoff_vtol_10");
	a_vh_vtols = function_85a37f7(var_8498e7d1);
	foreach(vtol in a_vh_vtols)
	{
		vtol vehicle::toggle_sounds(0);
	}
	a_vh_vtols function_501a0fde();
	level flag::wait_till("staging_area_ambient_start");
	a_vh_vtols function_42a5525a();
}

/*
	Name: function_f40e1b95
	Namespace: namespace_80a43443
	Checksum: 0x59A9ED45
	Offset: 0x6E68
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_f40e1b95(a_ents)
{
	vh_vtol = a_ents["crowd_vtol"];
	vh_vtol flag::init("loaded");
}

/*
	Name: function_f1ae04cf
	Namespace: namespace_80a43443
	Checksum: 0x1DC6A9F7
	Offset: 0x6EB8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_f1ae04cf(a_ents)
{
	vh_vtol = a_ents["crowd_vtol"];
	vh_vtol flag::set("loaded");
}

/*
	Name: function_85a37f7
	Namespace: namespace_80a43443
	Checksum: 0xEB260B29
	Offset: 0x6F08
	Size: 0x17D
	Parameters: 1
	Flags: None
*/
function function_85a37f7(a_str_names)
{
	a_vh_vtols = [];
	foreach(str_name in a_str_names)
	{
		vh_vtol = spawner::simple_spawn_single(str_name);
		if(!isdefined(a_vh_vtols))
		{
			a_vh_vtols = [];
		}
		else if(!IsArray(a_vh_vtols))
		{
			a_vh_vtols = Array(a_vh_vtols);
		}
		a_vh_vtols[a_vh_vtols.size] = vh_vtol;
		if(isdefined(vh_vtol.script_noteworthy))
		{
			vh_vtol flag::init("loaded");
			vh_vtol util::delay(randomIntRange(10, 20), undefined, &flag::set, "loaded");
		}
	}
	return a_vh_vtols;
}

/*
	Name: function_d2cc8ebf
	Namespace: namespace_80a43443
	Checksum: 0xC895AAB
	Offset: 0x7090
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d2cc8ebf()
{
	a_vh_vtols = [];
	foreach(vh_vtol in self)
	{
		if(isdefined(vh_vtol.script_noteworthy))
		{
			if(!isdefined(a_vh_vtols))
			{
				a_vh_vtols = [];
			}
			else if(!IsArray(a_vh_vtols))
			{
				a_vh_vtols = Array(a_vh_vtols);
			}
			a_vh_vtols[a_vh_vtols.size] = vh_vtol;
		}
	}
	return a_vh_vtols;
}

/*
	Name: function_501a0fde
	Namespace: namespace_80a43443
	Checksum: 0x647E7402
	Offset: 0x7190
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_501a0fde()
{
	foreach(vh_vtol in self)
	{
		level scene::init(vh_vtol.script_string, vh_vtol);
		util::wait_network_frame();
	}
}

/*
	Name: function_c9942484
	Namespace: namespace_80a43443
	Checksum: 0xB8F83C99
	Offset: 0x7248
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_c9942484()
{
	foreach(vh_vtol in self)
	{
		level scene::init(vh_vtol.script_noteworthy, "targetname", vh_vtol);
		util::wait_network_frame();
	}
}

/*
	Name: function_42a5525a
	Namespace: namespace_80a43443
	Checksum: 0xBBEA79B8
	Offset: 0x7300
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_42a5525a()
{
	level endon("hash_e99a85b4");
	s_goal = struct::get("helipads_vtol_goal", "targetname");
	wait(5);
	foreach(vh_vtol in self)
	{
		vh_vtol thread function_aac7c5be(s_goal.origin);
		vh_vtol PlayLoopSound("evt_vtol_ambient");
		wait(RandomFloatRange(4, 8));
	}
}

/*
	Name: function_c3d24d16
	Namespace: namespace_80a43443
	Checksum: 0x44C786A7
	Offset: 0x7420
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_c3d24d16()
{
	level endon("hash_e99a85b4");
	n_timeout = 60;
	trigger::wait_or_timeout(n_timeout, "staging_area_helipads_liftoff_trig");
	foreach(vh_vtol in self)
	{
		level thread scene::Play(vh_vtol.script_noteworthy, "targetname", vh_vtol);
		wait(RandomFloatRange(0.56, 1.25));
	}
}

/*
	Name: function_aac7c5be
	Namespace: namespace_80a43443
	Checksum: 0x4BB20DCD
	Offset: 0x7530
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_aac7c5be(v_goal)
{
	self endon("death");
	if(isdefined(self.script_noteworthy))
	{
		self flag::wait_till("loaded");
	}
	level scene::Play(self.script_string, self);
	self SetVehGoalPos(v_goal);
	self waittill("goal");
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
}

/*
	Name: function_4492caaa
	Namespace: namespace_80a43443
	Checksum: 0x5E73B876
	Offset: 0x7608
	Size: 0x331
	Parameters: 0
	Flags: None
*/
function function_4492caaa()
{
	level flag::wait_till("dead_turrets_initialized");
	level.var_e6786950 = [];
	level.var_4516597e = [];
	var_5b4c55a2 = struct::get_array("ramses_station_hunters", "targetname");
	var_da76440b = struct::get_array("ramses_station_vtols", "targetname");
	var_53a6979b = struct::get_array("ramses_station_hunters_turnaround", "targetname");
	var_c02e0aaa = ArrayCombine(var_5b4c55a2, var_da76440b, 0, 0);
	for(i = 1; i < 5; i++)
	{
		var_d9aaac41 = GetVehicleArray("station_battery_" + i, "script_noteworthy");
		/#
			Assert(var_d9aaac41.size == 3, "Dev Block strings are not supported" + "Dev Block strings are not supported" + i + "Dev Block strings are not supported" + var_d9aaac41.size + "Dev Block strings are not supported" + 3 + "Dev Block strings are not supported");
		#/
		level.var_e6786950[i] = var_d9aaac41;
	}
	level thread function_1a5d54fa();
	scene::add_scene_func("p7_fxanim_cp_ramses_lotus_towers_hunters_09_bundle_server", &function_73facefb, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_lotus_towers_hunters_10_bundle_server", &function_73facefb, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_lotus_towers_vtols_01_bundle_server", &function_73facefb, "play");
	var_53a6979b thread function_28437442();
	var_c02e0aaa function_62436a5a();
	foreach(s_fxanim in var_c02e0aaa)
	{
		s_fxanim scene::stop(1);
	}
	level.var_e6786950 = undefined;
	level.var_4516597e = undefined;
}

/*
	Name: function_d6617e36
	Namespace: namespace_80a43443
	Checksum: 0x24535ACC
	Offset: 0x7948
	Size: 0x189
	Parameters: 0
	Flags: None
*/
function function_d6617e36()
{
	level endon("hash_e99a85b4");
	while(self.var_3a03dd8d)
	{
		foreach(e_player in level.activePlayers)
		{
			if(Distance2D(e_player GetOrigin(), self.origin) <= 894)
			{
				e_player function_a2361ae7();
				continue;
			}
			e_player function_a2361ae7(0);
		}
		wait(0.05);
	}
	foreach(e_player in level.activePlayers)
	{
		e_player function_a2361ae7(0);
	}
}

/*
	Name: function_a2361ae7
	Namespace: namespace_80a43443
	Checksum: 0x27BF2127
	Offset: 0x7AE0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_a2361ae7(b_on)
{
	if(!isdefined(b_on))
	{
		b_on = 1;
	}
	self clientfield::set_to_player("filter_ev_interference_toggle", b_on);
}

/*
	Name: function_d7d89699
	Namespace: namespace_80a43443
	Checksum: 0x8D3DE1A5
	Offset: 0x7B30
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_d7d89699(n_distance)
{
	/#
		self endon("_stop_turret");
		while(1)
		{
			debug::debug_sphere(self.origin, n_distance, (1, 0, 0), 0.5, 1);
			wait(0.05);
		}
	#/
}

/*
	Name: function_1a852d62
	Namespace: namespace_80a43443
	Checksum: 0xB49588
	Offset: 0x7B90
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_1a852d62()
{
	level endon("hash_e99a85b4");
	var_b9fb5382 = GetEntArray("battery_fake_target", "targetname");
	foreach(vh_turret in self)
	{
		vh_turret SetTurretTargetEnt(Array::random(var_b9fb5382));
	}
}

/*
	Name: function_62436a5a
	Namespace: namespace_80a43443
	Checksum: 0xE127B622
	Offset: 0x7C68
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_62436a5a()
{
	level endon("hash_e99a85b4");
	level.var_4516597e = Array::random(level.var_e6786950);
	while(1)
	{
		function_66ded396();
		Array::wait_till(level.var_4516597e, "_stop_turret");
		function_9f7ba147();
	}
}

/*
	Name: function_28437442
	Namespace: namespace_80a43443
	Checksum: 0x2983F2C9
	Offset: 0x7CE8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_28437442()
{
	level endon("hash_e99a85b4");
	while(1)
	{
		s_fxanim = Array::random(self);
		if(!s_fxanim scene::is_playing())
		{
			s_fxanim thread scene::Play();
		}
		wait(RandomFloatRange(2, 4));
	}
}

/*
	Name: function_66ded396
	Namespace: namespace_80a43443
	Checksum: 0xE822926C
	Offset: 0x7D70
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_66ded396()
{
	level endon("hash_e99a85b4");
	for(i = 0; i < 3; i++)
	{
		s_fxanim = function_7e1bae82();
		s_fxanim thread scene::Play();
		wait(RandomFloatRange(0.59, 1.2));
	}
}

/*
	Name: function_7e1bae82
	Namespace: namespace_80a43443
	Checksum: 0xB06C264D
	Offset: 0x7E00
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_7e1bae82()
{
	level endon("hash_e99a85b4");
	s_fxanim = undefined;
	while(1)
	{
		s_fxanim = Array::random(self);
		if(!s_fxanim scene::is_playing())
		{
			break;
		}
		wait(0.05);
	}
	return s_fxanim;
}

/*
	Name: function_9f7ba147
	Namespace: namespace_80a43443
	Checksum: 0x9A45ABED
	Offset: 0x7E78
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_9f7ba147()
{
	level endon("hash_e99a85b4");
	var_542ecdff = level.var_4516597e[0];
	level.var_4516597e function_1a852d62();
	do
	{
		level.var_4516597e = Array::random(level.var_e6786950);
		wait(0.05);
	}
	while(!level.var_4516597e[0] == var_542ecdff);
}

/*
	Name: function_73facefb
	Namespace: namespace_80a43443
	Checksum: 0xDD41CCE8
	Offset: 0x7F00
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_73facefb(a_ents)
{
	level endon("hash_e99a85b4");
	foreach(var_3929e8a2 in a_ents)
	{
		var_3929e8a2 thread function_9d4c44e5();
	}
}

/*
	Name: function_9d4c44e5
	Namespace: namespace_80a43443
	Checksum: 0x582304CC
	Offset: 0x7FA8
	Size: 0xBD
	Parameters: 0
	Flags: None
*/
function function_9d4c44e5()
{
	level endon("hash_e99a85b4");
	foreach(vh_turret in level.var_4516597e)
	{
		if(!(isdefined(vh_turret.var_3a03dd8d) && vh_turret.var_3a03dd8d))
		{
			vh_turret function_70561437(self);
			break;
		}
	}
}

/*
	Name: function_70561437
	Namespace: namespace_80a43443
	Checksum: 0xE9CDDF3C
	Offset: 0x8070
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_70561437(var_3929e8a2)
{
	level endon("hash_e99a85b4");
	self.var_3a03dd8d = 1;
	self SetTurretTargetEnt(var_3929e8a2);
	self thread function_7f47b803(var_3929e8a2);
	var_3929e8a2 util::waittill_either("hunter_explodes", "vtol_01_explodes");
	wait(RandomFloatRange(0.15, 0.45));
	self notify("_stop_turret");
	self ClearTurretTarget();
	self LaserOff();
	self.var_3a03dd8d = 0;
}

/*
	Name: function_179e06df
	Namespace: namespace_80a43443
	Checksum: 0xEE68CA9A
	Offset: 0x8158
	Size: 0x49
	Parameters: 1
	Flags: None
*/
function function_179e06df(var_3929e8a2)
{
	return SightTracePassed(self GetTagOrigin("tag_flash"), var_3929e8a2.origin, 0, self);
}

/*
	Name: function_7f47b803
	Namespace: namespace_80a43443
	Checksum: 0x276E412E
	Offset: 0x81B0
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_7f47b803(var_3929e8a2)
{
	self endon("death");
	self endon("_stop_turret");
	var_3929e8a2 endon("death");
	self waittill("turret_on_target");
	wait(RandomFloatRange(2, 4));
	if(var_3929e8a2.targetname == "lotus_dropships")
	{
		wait(RandomFloatRange(0.05, 0.25));
		continue;
	}
	wait(RandomFloatRange(1, 2));
	while(!self function_179e06df(var_3929e8a2))
	{
		wait(0.05);
	}
	self LaserOn();
	if(self.script_string === "do_futz")
	{
		self thread function_d6617e36();
	}
	self turret::fire_for_time(100);
}

/*
	Name: function_1a5d54fa
	Namespace: namespace_80a43443
	Checksum: 0xD2E3FF6B
	Offset: 0x82F0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1a5d54fa()
{
	var_19ec42b2 = GetDvarInt("bulletrange");
	SetDvar("bulletrange", 65000);
	level flag::wait_till("dead_turret_stop_station_ambients");
	SetDvar("bulletrange", var_19ec42b2);
}

/*
	Name: vo
	Namespace: namespace_80a43443
	Checksum: 0x4A997ABC
	Offset: 0x8388
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function vo()
{
	level flag::wait_till("jumpdirect_scene_done");
	level.var_9db406db dialog::say("khal_we_have_to_hurry_0", RandomFloatRange(0.1, 0.25));
	level.var_9db406db flag::wait_till("khalil_ready");
	wait(1);
	level.var_9db406db thread function_afe40e69("khal_get_in_0", 6, 9, "players_ready", "cin_ram_04_02_easterncheck_1st_entertruck_demo", 1);
}

/*
	Name: function_afe40e69
	Namespace: namespace_80a43443
	Checksum: 0x5F8319A4
	Offset: 0x8458
	Size: 0xD7
	Parameters: 6
	Flags: None
*/
function function_afe40e69(var_385eca05, n_time_min, n_time_max, str_ender, str_scene, var_d53650fe)
{
	if(!isdefined(var_d53650fe))
	{
		var_d53650fe = 1;
	}
	level endon(str_ender);
	n_count = 0;
	while(var_d53650fe > n_count)
	{
		if(!isdefined(str_scene) || !level scene::is_playing(str_scene))
		{
			self dialog::say(var_385eca05);
			n_count++;
		}
		wait(RandomFloatRange(n_time_min, n_time_max));
	}
}

/*
	Name: function_b8a391f4
	Namespace: namespace_80a43443
	Checksum: 0x3A0B3F4B
	Offset: 0x8538
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b8a391f4()
{
	self dialog::say("esl1_let_s_move_let_s_mo_0", RandomFloatRange(4, 6));
}

/*
	Name: init_flags
	Namespace: namespace_80a43443
	Checksum: 0xD2A0D91D
	Offset: 0x8580
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function init_flags(STR)
{
	for(i = 0; i < self.size; i++)
	{
		level flag::init(self[i].targetname + STR);
	}
}

/*
	Name: function_9b92c048
	Namespace: namespace_80a43443
	Checksum: 0x7E2A6EA8
	Offset: 0x85E8
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function function_9b92c048(STR)
{
	for(i = 0; i < self.size; i++)
	{
		level flag::wait_till(self[i].targetname + STR);
	}
}

/*
	Name: egg
	Namespace: namespace_80a43443
	Checksum: 0x62C4D246
	Offset: 0x8650
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function egg()
{
	var_c4aa66fd = GetEntArray("temp_egg_trig", "targetname");
	var_7005b138 = GetEntArray("temp_egg_cancel_trig", "targetname");
	Array::thread_all(var_c4aa66fd, &function_2f762b15, var_7005b138);
}

/*
	Name: function_2f762b15
	Namespace: namespace_80a43443
	Checksum: 0x3D633DAF
	Offset: 0x86E0
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function function_2f762b15(var_c4aa66fd, var_7005b138)
{
	while(!level flag::get("players_ready"))
	{
	}
}


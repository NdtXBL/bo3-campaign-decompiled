#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_apc;
#using scripts\cp\cp_prologue_cyber_soldiers;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_30207c6f;

/*
	Name: function_910f2aa
	Namespace: namespace_30207c6f
	Checksum: 0x265A3DF
	Offset: 0x1490
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_910f2aa()
{
	function_54a719d1();
	function_9dad8dce();
	level thread function_a8a110f5();
}

/*
	Name: function_54a719d1
	Namespace: namespace_30207c6f
	Checksum: 0x3B82D5D3
	Offset: 0x14D8
	Size: 0x3D
	Parameters: 0
	Flags: None
*/
function function_54a719d1()
{
	level flag::init("sarah_wall_running");
	level._effect["fx_apc_fire"] = "fire/fx_fire_apc_bridge_prologue";
}

/*
	Name: function_9dad8dce
	Namespace: namespace_30207c6f
	Checksum: 0xAF8AC5B7
	Offset: 0x1520
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_9dad8dce()
{
	level.var_f58c9f31 ai::set_ignoreall(1);
	level.var_f58c9f31 ai::set_ignoreme(1);
	level.var_f58c9f31.goalRadius = 16;
	level.var_f58c9f31.allowPain = 0;
	level.var_f58c9f31 colors::set_force_color("c");
	level.var_9db406db ai::set_ignoreall(0);
	level.var_9db406db ai::set_ignoreme(0);
	level.var_9db406db.goalRadius = 16;
	level.var_4d5a4697 ai::set_ignoreall(1);
	level.var_4d5a4697 ai::set_ignoreme(1);
	level.var_4d5a4697.goalRadius = 16;
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 ai::set_ignoreme(0);
	level.var_2fd26037.goalRadius = 16;
	level.var_2fd26037.allowPain = 0;
}

/*
	Name: function_a8a110f5
	Namespace: namespace_30207c6f
	Checksum: 0x9E81A08E
	Offset: 0x16A8
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_a8a110f5()
{
	level scene::add_scene_func("cin_pro_11_01_jeepalley_vign_engage_fireloop", &function_cf946de6, "play");
	level thread scene::Play("cin_pro_11_01_jeepalley_vign_engage_fireloop");
	level thread function_9855f3c9();
	level.var_2fd26037 thread function_75853acc();
	level thread namespace_21b2c1f2::function_37906040();
	level.var_9db406db battlechatter::function_d9f49fba(1);
	level.var_2fd26037 battlechatter::function_d9f49fba(1);
	level.var_f58c9f31 SetHighDetail(1);
	level thread function_1e1e465e();
	if(isdefined(level.BZM_PROLOGUEDialogue5_1Callback))
	{
		level thread [[level.BZM_PROLOGUEDialogue5_1Callback]]();
	}
	level scene::add_scene_func("cin_pro_11_01_jeepalley_vign_engage_start", &function_fcc9ed10, "play");
	level scene::Play("cin_pro_11_01_jeepalley_vign_engage_start");
	level flag::wait_till("trig_player_exits_vtol");
	level thread function_b830a432();
	level flag::set("sarah_wall_running");
	level flag::init("theia_shoot_plane");
	level flag::init("plane_explodes");
	level scene::add_scene_func("cin_pro_11_01_jeepalley_vign_engage_attack", &function_54cdd83a, "play");
	level scene::add_scene_func("cin_pro_11_01_jeepalley_vign_engage_attack", &function_7af067f4, "done");
	level thread scene::Play("cin_pro_11_01_jeepalley_vign_engage_attack");
	level thread function_87513084();
	level thread function_87f18673();
	level flag::wait_till("player_moves_up_alley");
	objectives::Hide("cp_level_prologue_get_to_the_surface");
	skipto::function_be8adfb8("skipto_jeep_alley");
}

/*
	Name: function_54cdd83a
	Namespace: namespace_30207c6f
	Checksum: 0x38F038CC
	Offset: 0x19D0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_54cdd83a(a_ents)
{
	level waittill("hash_25af2e77");
	level flag::set("theia_shoot_plane");
	level waittill("hash_878a6dae");
	level flag::set("plane_explodes");
}

/*
	Name: function_fcc9ed10
	Namespace: namespace_30207c6f
	Checksum: 0x524F1E6E
	Offset: 0x1A38
	Size: 0x17F
	Parameters: 1
	Flags: None
*/
function function_fcc9ed10(a_ents)
{
	a_ents["sarah_victim"].var_69dd5d62 = 0;
	a_ents["sarah_victim"] cybercom::function_59965309("cybercom_fireflyswarm");
	var_58576bff = GetEnt("hall_door_slide_left", "targetname");
	var_58576bff connectpaths();
	wait(0.05);
	var_bbc00d9a = GetEnt("hall_door_slide_right", "targetname");
	var_bbc00d9a connectpaths();
	vec_right = AnglesToRight(var_58576bff.angles);
	var_58576bff moveto(var_58576bff.origin - vec_right * 48, 0.5);
	var_bbc00d9a moveto(var_bbc00d9a.origin + vec_right * 48, 0.5);
	level.var_c644a3e7 = 1;
}

/*
	Name: function_b830a432
	Namespace: namespace_30207c6f
	Checksum: 0x90A6F1B4
	Offset: 0x1BC0
	Size: 0x27F
	Parameters: 0
	Flags: None
*/
function function_b830a432()
{
	level endon("hash_800cbac6");
	if(level.var_c644a3e7 === 1)
	{
		var_7ed6188 = GetEnt("t_all_players_in_vtol_collapse_hangar", "targetname");
		while(level.var_2fd26037 istouching(var_7ed6188) || level.var_9db406db istouching(var_7ed6188) || level.var_4d5a4697 istouching(var_7ed6188))
		{
			wait(0.1);
		}
		level flag::wait_till("no_players_in_vtol_collapse_hangar");
		var_ac769486 = GetEnt("clip_player_hall_doors", "targetname");
		var_ac769486 MoveZ(100 * -1, 0.05);
		var_58576bff = GetEnt("hall_door_slide_left", "targetname");
		var_bbc00d9a = GetEnt("hall_door_slide_right", "targetname");
		vec_right = AnglesToRight(var_58576bff.angles);
		var_58576bff moveto(var_58576bff.origin + vec_right * 48, 0.5);
		var_bbc00d9a moveto(var_bbc00d9a.origin - vec_right * 48, 0.5);
		wait(0.05);
		var_ac769486 disconnectpaths(0, 0);
		if(isdefined(level.var_7f246cd7))
		{
			level.var_7f246cd7 delete();
		}
		level.var_c644a3e7 = 0;
	}
}

/*
	Name: function_cf946de6
	Namespace: namespace_30207c6f
	Checksum: 0x957E5B4D
	Offset: 0x1E48
	Size: 0x167
	Parameters: 1
	Flags: None
*/
function function_cf946de6(a_ents)
{
	level endon("hash_86483bce");
	vh_jeep = a_ents["jeep_alley"];
	vh_jeep HidePart("tag_weapon", "veh_t7_lmg_brm_world", 1);
	level flag::wait_till("trig_player_exits_vtol");
	var_786c2b27 = a_ents["machinegun"];
	var_6c3c4545 = GetWeapon("turret_bo3_civ_truck_pickup_tech_nrc");
	while(1)
	{
		var_786c2b27 waittill("fire");
		v_start_pos = var_786c2b27 GetTagOrigin("tag_flash");
		v_end_pos = v_start_pos + AnglesToForward(var_786c2b27 GetTagAngles("tag_flash")) * 120;
		MagicBullet(var_6c3c4545, v_start_pos, v_end_pos, var_786c2b27);
	}
}

/*
	Name: function_7af067f4
	Namespace: namespace_30207c6f
	Checksum: 0xC3A0D48A
	Offset: 0x1FB8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_7af067f4(a_ents)
{
	level notify("hash_86483bce");
	a_ents["theia"] thread function_467bdccf();
	a_ents["theia"] SetHighDetail(0);
}

/*
	Name: function_75853acc
	Namespace: namespace_30207c6f
	Checksum: 0xDBE61809
	Offset: 0x2020
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_75853acc()
{
	level flag::wait_till("sarah_wall_running");
	self colors::disable();
	self SetGoal(GetNode("hendricks_kill_jeep_alley", "targetname"), 1);
	self.perfectaim = 1;
	self ai::set_behavior_attribute("useGrenades", 0);
	level waittill("hash_ec12613");
	var_af97b78b = spawner::get_ai_group_ai("jeep_alley_enemy");
	for(i = 0; i < var_af97b78b.size; i++)
	{
		if(isalive(var_af97b78b[i]))
		{
			self ai::shoot_at_target("shoot_until_target_dead", var_af97b78b[i], "j_head");
		}
	}
	self.perfectaim = 0;
	self colors::enable();
	self ai::set_behavior_attribute("useGrenades", 1);
	trigger::use("jeep_alley_allies_move", "targetname");
}

/*
	Name: function_87513084
	Namespace: namespace_30207c6f
	Checksum: 0x735F7547
	Offset: 0x21D0
	Size: 0x32B
	Parameters: 0
	Flags: None
*/
function function_87513084()
{
	spawner::add_spawn_function_group("plane_burn_victims", "targetname", &ai::set_ignoreme, 1);
	var_5aed614f = spawner::simple_spawn("plane_burn_victims");
	level flag::wait_till("theia_shoot_plane");
	level.var_9db406db ai::set_ignoreall(0);
	level flag::wait_till("plane_explodes");
	level util::clientNotify("sndStartFakeBattle");
	foreach(burner in var_5aed614f)
	{
		if(isalive(burner))
		{
			burner thread function_d9205aac();
		}
	}
	level thread scene::Play("p7_fxanim_cp_prologue_plane_hanger_explode_bundle");
	while(!scene::is_ready("p7_fxanim_cp_prologue_plane_hanger_explode_bundle"))
	{
		wait(0.05);
	}
	level thread scene::stop("p7_fxanim_cp_prologue_plane_hanger_pristine_bundle", 1);
	var_aab7a6d1 = GetEnt("plane_hanger_explode", "targetname");
	var_aab7a6d1 SetModel("veh_t7_mil_jet_cargo_dest");
	foreach(e_player in level.players)
	{
		e_player PlayRumbleOnEntity("tank_damage_heavy_mp");
		Earthquake(1, 1.5, e_player.origin, 128);
	}
	level.var_35c12e63 = struct::get("bridge_obj", "targetname");
	objectives::set("cp_waypoint_breadcrumb", level.var_35c12e63);
}

/*
	Name: function_d9205aac
	Namespace: namespace_30207c6f
	Checksum: 0x39E3764
	Offset: 0x2508
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d9205aac()
{
	var_899774be = randomIntRange(1, 9);
	str_anim_name = "cin_gen_vign_plane_burning_0" + var_899774be;
	self thread scene::Play(str_anim_name, self);
}

/*
	Name: function_467bdccf
	Namespace: namespace_30207c6f
	Checksum: 0xA60BB869
	Offset: 0x2570
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_467bdccf()
{
	self SetGoal(self.origin, 1);
	var_e71bd5d8 = struct::get("theia_bridge_target", "targetname");
	var_a03ca40a = spawn("script_model", var_e71bd5d8.origin);
	var_a03ca40a SetModel("tag_origin");
	var_a03ca40a.health = 100000;
	self thread ai::shoot_at_target("shoot_until_target_dead", var_a03ca40a);
	level flag::wait_till("player_left_alley");
	var_a03ca40a kill();
	self ai::set_ignoreall(0);
}

/*
	Name: function_9855f3c9
	Namespace: namespace_30207c6f
	Checksum: 0x6CD97884
	Offset: 0x26A0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_9855f3c9()
{
	spawner::add_spawn_function_ai_group("jeep_alley_enemy", &function_46e24498);
	spawner::simple_spawn("sp_initial_jeep_enemies");
	level flag::wait_till("trig_player_exits_vtol");
	spawner::simple_spawn("sp_jeep_alley_cqb");
}

/*
	Name: function_46e24498
	Namespace: namespace_30207c6f
	Checksum: 0x763845F5
	Offset: 0x2728
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_46e24498()
{
	self endon("death");
	self.grenadeAmmo = 0;
	self ai::set_behavior_attribute("cqb", 1);
	self ai::set_behavior_attribute("disablesprint", 1);
	level flag::wait_till("sarah_wall_running");
	wait(RandomFloatRange(0.25, 2));
	self.health = 30;
	self ai::shoot_at_target("shoot_until_target_dead", level.var_f58c9f31);
}

/*
	Name: function_87f18673
	Namespace: namespace_30207c6f
	Checksum: 0xAB8341EC
	Offset: 0x2800
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_87f18673()
{
	level waittill("hash_1e79e193");
	level.var_f58c9f31 thread dialog::say("hall_get_to_the_bridge_i_0");
	level waittill("hash_8cc62724");
	level.var_f58c9f31 dialog::say("hall_exfil_ahead_push_fo_0");
	if(!level flag::get("player_left_alley"))
	{
		level dialog::remote("tayr_better_hustle_picku_0", 0.5);
	}
	if(!level flag::get("player_left_alley"))
	{
		if(!isdefined(level.var_5d4087a6))
		{
			level.var_5d4087a6 = util::function_740f8516("hyperion");
		}
		level.var_5d4087a6 dialog::say("mare_on_me_on_me_0", 0.2);
	}
}

/*
	Name: function_1e1e465e
	Namespace: namespace_30207c6f
	Checksum: 0x3EF17058
	Offset: 0x2930
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_1e1e465e()
{
	level waittill("hash_60a343a0");
	level.var_f58c9f31 dialog::say("hall_that_technical_s_min_0");
	level thread namespace_21b2c1f2::function_b83aa9c5();
}

#namespace namespace_dc79b4d3;

/*
	Name: function_b86981e6
	Namespace: namespace_dc79b4d3
	Checksum: 0x861A041F
	Offset: 0x2988
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_b86981e6()
{
	function_8e94cc65();
	function_4cabc89a();
	level thread function_57e7a8c9();
	level thread namespace_21b2c1f2::function_b83aa9c5();
}

/*
	Name: function_8e94cc65
	Namespace: namespace_dc79b4d3
	Checksum: 0xA3429DDB
	Offset: 0x29E8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_8e94cc65()
{
	level flag::init("play_bridge_nag");
	level flag::init("bridge_intro_chatter_done");
}

/*
	Name: function_4cabc89a
	Namespace: namespace_dc79b4d3
	Checksum: 0x556522EE
	Offset: 0x2A38
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_4cabc89a()
{
	level.var_5d4087a6 ai::set_ignoreall(1);
	level.var_5d4087a6 ai::set_ignoreme(1);
	level.var_5d4087a6.goalRadius = 16;
	level.var_5d4087a6.allowPain = 0;
	level.var_5d4087a6 colors::set_force_color("p");
	level.var_f58c9f31 ai::set_ignoreme(1);
	level.var_9db406db ai::set_ignoreall(1);
	level.var_9db406db ai::set_ignoreme(1);
	level.var_9db406db.goalRadius = 16;
	level.var_4d5a4697 ai::set_ignoreall(1);
	level.var_4d5a4697 ai::set_ignoreme(1);
	level.var_4d5a4697 ai::set_behavior_attribute("coverIdleOnly", 1);
	level.var_4d5a4697.goalRadius = 16;
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 ai::set_ignoreme(0);
	level.var_2fd26037.goalRadius = 16;
	level.var_2fd26037.allowPain = 0;
}

/*
	Name: function_57e7a8c9
	Namespace: namespace_dc79b4d3
	Checksum: 0xBA06CA30
	Offset: 0x2C18
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_57e7a8c9()
{
	objectives::set("cp_level_prologue_cross_bridge");
	callback::on_vehicle_killed(&namespace_61c634f2::function_3d89871d);
	level thread function_401aadf2();
	level thread function_cd931b6e();
	level thread function_86b76a0b();
	level thread function_462ad50a();
	level.var_5d4087a6 thread function_373c3957();
	exploder::exploder("light_exploder_bridge");
	level thread function_19d07c7a();
	function_45506c4a();
	wait(2);
	level thread function_3178e821();
	objectives::Hide("cp_level_prologue_cross_bridge");
	savegame::function_5d2cdd99();
	objectives::set("cp_level_prologue_escort_data_center");
	level thread function_86ce62c8();
	callback::remove_on_vehicle_killed(&namespace_61c634f2::function_3d89871d);
	function_d092ac71();
	skipto::function_be8adfb8("skipto_bridge_battle");
}

/*
	Name: function_cd931b6e
	Namespace: namespace_dc79b4d3
	Checksum: 0x6B6BD3C6
	Offset: 0x2DD0
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_cd931b6e()
{
	spawner::add_spawn_function_group("bridge_wave_1", "script_noteworthy", &function_39c16a4a);
	spawner::add_spawn_function_group("sp_bridge_initial", "targetname", &function_39c16a4a);
	spawner::add_spawn_function_group("sp_bridge_secondary", "targetname", &function_39c16a4a);
	spawner::add_spawn_function_group("bridge_enemies", "script_noteworthy", &namespace_2cb3876f::function_c47ce0e9);
	spawner::simple_spawn("sp_bridge_initial");
	level flag::wait_till("player_left_alley");
	spawner::simple_spawn("sp_bridge_front");
	spawn_manager::enable("CQB_spawner_right");
	spawn_manager::enable("CQB_spawner_left");
	level thread function_57ae876e();
	level thread function_58b194a5();
	level thread function_2fdac05f();
	level thread function_d32d88c();
	wait(10);
	spawner::simple_spawn("sp_bridge_secondary");
}

/*
	Name: function_39c16a4a
	Namespace: namespace_dc79b4d3
	Checksum: 0x374F1E2C
	Offset: 0x2FA0
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_39c16a4a()
{
	self endon("death");
	if(!isdefined(self.target))
	{
		var_257bbc01 = GetEnt("trig_bridge_goal_vol_1", "targetname");
		self SetGoal(var_257bbc01);
	}
	level flag::wait_till("bridge_enemies_fallback_1");
	var_257bbc01 = GetEnt("trig_bridge_goal_vol_2", "targetname");
	self SetGoal(var_257bbc01);
	level flag::wait_till("bridge_enemies_fallback_2");
	var_257bbc01 = GetEnt("trig_bridge_goal_vol_3", "targetname");
	self SetGoal(var_257bbc01);
	level flag::wait_till("bridge_enemies_fallback_3");
	var_257bbc01 = GetEnt("trig_bridge_goal_vol_4", "targetname");
	self SetGoal(var_257bbc01);
}

/*
	Name: function_57ae876e
	Namespace: namespace_dc79b4d3
	Checksum: 0xFA49F1C
	Offset: 0x3130
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_57ae876e()
{
	level endon("hash_babbfab3");
	level flag::wait_till("bring_in_jeeps");
	spawner::waittill_ai_group_ai_count("aig_bridge_defenders", 8);
	spawn_manager::enable("bridge_reinforcement_spawner", 1);
}

/*
	Name: function_d32d88c
	Namespace: namespace_dc79b4d3
	Checksum: 0x7C4D5415
	Offset: 0x31A8
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_d32d88c()
{
	level thread function_6e72a6d1();
	level flag::wait_till("bring_in_jeeps");
	level thread function_823e535e();
	var_4f41d1d9 = vehicle::simple_spawn_single("bridge_jeep_right");
	var_4f41d1d9 playsound("evt_jeeps_pre_bridge_drive");
	var_a2623c0a = vehicle::simple_spawn_single("bridge_jeep_left");
	var_a2623c0a.var_52c5472d = 1;
	var_4f41d1d9.var_52c5472d = 1;
	level thread function_c4e1973c(var_4f41d1d9);
	level thread function_c4e1973c(var_a2623c0a);
	var_4f41d1d9 thread function_9069a713();
	var_a2623c0a thread function_9069a713();
	objectives::complete("cp_waypoint_breadcrumb", level.var_35c12e63);
	var_a2623c0a thread function_7096928d("cp_level_prologue_destroy_jeep_left");
	var_4f41d1d9 thread function_7096928d("cp_level_prologue_destroy_jeep_left");
	level.var_8c902673 = Array(var_a2623c0a, var_4f41d1d9);
	level thread function_5d5b8625();
}

/*
	Name: function_6e72a6d1
	Namespace: namespace_dc79b4d3
	Checksum: 0x6C7FF11B
	Offset: 0x3390
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6e72a6d1()
{
	wait(30);
	level flag::set("bring_in_jeeps");
}

/*
	Name: function_7096928d
	Namespace: namespace_dc79b4d3
	Checksum: 0x9CEBC485
	Offset: 0x33C0
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_7096928d(var_376507c0)
{
	self thread turret::disable_ai_getoff(1, 1);
	self waittill("hash_449a82fd");
	ai_rider = self vehicle::get_rider("gunner1");
	ai_rider ai::set_ignoreme(1);
	ai_rider thread function_da187c1b(self);
	objectives::set(var_376507c0, self);
	self waittill("death");
	if(!isdefined(self.var_ceae8e35))
	{
		objectives::complete(var_376507c0, self);
	}
	level flag::set("bridge_destruction_sequence");
}

/*
	Name: function_da187c1b
	Namespace: namespace_dc79b4d3
	Checksum: 0x1E74EA1E
	Offset: 0x34C8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_da187c1b(vh_jeep)
{
	self waittill("death");
	wait(RandomFloatRange(2, 4));
	if(isalive(vh_jeep))
	{
		vh_jeep kill();
	}
}

/*
	Name: function_5d5b8625
	Namespace: namespace_dc79b4d3
	Checksum: 0xB0E9C6E9
	Offset: 0x3548
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5d5b8625()
{
	level flag::wait_till("bridge_intro_chatter_done");
	level.var_2fd26037 dialog::say("hend_only_way_across_the_0");
}

/*
	Name: function_823e535e
	Namespace: namespace_dc79b4d3
	Checksum: 0x1A5C7F16
	Offset: 0x3598
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_823e535e()
{
	wait(45);
	level flag::set("bridge_destruction_sequence");
}

/*
	Name: function_9069a713
	Namespace: namespace_dc79b4d3
	Checksum: 0xA66BA0A2
	Offset: 0x35C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_9069a713()
{
	self waittill("start_firing");
	self turret::enable(1, 1);
}

/*
	Name: function_58b194a5
	Namespace: namespace_dc79b4d3
	Checksum: 0xABFC8AE9
	Offset: 0x3600
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_58b194a5()
{
	level flag::wait_till("bring_in_sniper_2");
	spawner::simple_spawn("sp_bridge_sniper_right");
}

/*
	Name: function_2fdac05f
	Namespace: namespace_dc79b4d3
	Checksum: 0xA3744AA3
	Offset: 0x3648
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_2fdac05f()
{
	level flag::wait_till("bring_in_trucks");
	level thread function_ec50ea55("bridge_battle_flatbed_left_1");
	level thread function_ec50ea55("bridge_battle_flatbed_right_1");
	wait(2);
	level thread function_ec50ea55("bridge_battle_flatbed_left_2");
	level thread function_ec50ea55("bridge_battle_flatbed_right_2");
}

/*
	Name: function_58377d0
	Namespace: namespace_dc79b4d3
	Checksum: 0x57B36480
	Offset: 0x36F8
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_58377d0(vehiclename, name)
{
	ai_rider = vehiclename vehicle::get_rider(name);
	if(isdefined(ai_rider))
	{
		ai_rider thread vehicle::get_out();
		ai_rider thread function_39c16a4a();
	}
}

/*
	Name: function_ec50ea55
	Namespace: namespace_dc79b4d3
	Checksum: 0xC38DFC25
	Offset: 0x3778
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_ec50ea55(str_vehicle)
{
	vh_vehicle = vehicle::simple_spawn_single(str_vehicle);
	vh_vehicle thread vehicle::go_path();
	vh_vehicle waittill("reached_end_node");
	function_58377d0(vh_vehicle, "driver");
	function_58377d0(vh_vehicle, "passenger1");
}

/*
	Name: function_c4e1973c
	Namespace: namespace_dc79b4d3
	Checksum: 0x27567842
	Offset: 0x3810
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_c4e1973c(vh_vehicle)
{
	vh_vehicle thread vehicle::go_path();
	vh_vehicle waittill("reached_end_node");
	ai_rider = vh_vehicle vehicle::get_rider("passenger1");
	if(isalive(ai_rider))
	{
		ai_rider thread vehicle::get_out();
		ai_rider thread function_39c16a4a();
	}
	ai_gunner = vh_vehicle vehicle::get_rider("gunner1");
	if(isalive(ai_gunner))
	{
		ai_gunner waittill("death");
	}
	ai_driver = vh_vehicle vehicle::get_rider("driver");
	if(isalive(ai_driver))
	{
		ai_driver thread vehicle::get_out();
		ai_driver thread function_39c16a4a();
	}
}

/*
	Name: function_19d07c7a
	Namespace: namespace_dc79b4d3
	Checksum: 0xC00BAC87
	Offset: 0x3978
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_19d07c7a()
{
	var_82079741 = spawner::simple_spawn_single("floodlight_left");
	var_8386532c = spawner::simple_spawn_single("floodlight_right");
	var_82079741 vehicle::lights_on();
	var_8386532c vehicle::lights_on();
	level waittill("hash_69473677");
	if(isdefined(var_82079741))
	{
		var_82079741 vehicle::lights_off();
		var_8386532c vehicle::lights_off();
		var_82079741.delete_on_death = 1;
		var_82079741 notify("death");
		if(!isalive(var_82079741))
		{
			var_82079741 delete();
		}
		wait(0.05);
		var_8386532c.delete_on_death = 1;
		var_8386532c notify("death");
		if(!isalive(var_8386532c))
		{
			var_8386532c delete();
		}
	}
}

/*
	Name: function_45506c4a
	Namespace: namespace_dc79b4d3
	Checksum: 0xEED64F96
	Offset: 0x3AF0
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_45506c4a()
{
	level flag::wait_till("bridge_destruction_sequence");
	level notify("hash_91d75f4e");
	level thread function_61ebf180();
	battlechatter::function_d9f49fba(0);
	var_b729b603 = GetEnt("trig_bridge_vehicle_delete", "targetname");
	level thread trigger::trigger_delete_on_touch(var_b729b603);
	wait(2);
	level.var_3e3bb66f = [];
	level thread function_bb86e135("bridge_macv_convoy1", 3, 2);
	wait(1);
	level thread function_bb86e135("bridge_macv_convoy2", 3, 2);
	wait(1.5);
	level.var_2fd26037 dialog::say("hend_reinforcements_comin_0");
	wait(0.25);
	level.var_2fd26037 dialog::say("hend_we_re_not_getting_ac_0");
	wait(0.4);
	level.var_5d4087a6 dialog::say("mare_fuck_it_plan_b_0");
}

/*
	Name: function_61ebf180
	Namespace: namespace_dc79b4d3
	Checksum: 0x2DFF309D
	Offset: 0x3C78
	Size: 0x289
	Parameters: 0
	Flags: None
*/
function function_61ebf180()
{
	level waittill("hash_2cc5e83");
	level thread function_b61c8c58();
	level scene::add_scene_func("p7_fxanim_cp_prologue_bridge_bundle", &function_cefcd22a);
	level scene::add_scene_func("p7_fxanim_cp_prologue_bridge_bundle", &function_27bfa6a0, "done");
	level thread scene::Play("p7_fxanim_cp_prologue_bridge_bundle");
	exploder::stop_exploder("light_exploder_bridge");
	Array::run_all(level.var_3e3bb66f, &function_908069e9);
	level notify("hash_babbfab3");
	trigger::use("trig_kill_cqb_spawner_right", "targetname", undefined, 0);
	trigger::use("trig_kill_cqb_spawner_left", "targetname", undefined, 0);
	trigger::use("trig_kill_bridge_reinforcement_spawner", "targetname", undefined, 0);
	level thread function_a34a09b4();
	wait(0.5);
	level thread namespace_21b2c1f2::function_3c37ec50();
	foreach(vh_jeep in level.var_8c902673)
	{
		if(isalive(vh_jeep))
		{
			vh_jeep.var_ceae8e35 = 1;
			objectives::complete("cp_level_prologue_destroy_jeep_left", vh_jeep);
			RadiusDamage(vh_jeep.origin, 96, 1000, 500, level.var_2fd26037, "MOD_GRENADE");
			wait(0.75);
		}
	}
}

/*
	Name: function_a34a09b4
	Namespace: namespace_dc79b4d3
	Checksum: 0x6419687
	Offset: 0x3F10
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_a34a09b4()
{
	a_ai_axis = GetAITeamArray("axis");
	foreach(ai in a_ai_axis)
	{
		if(isalive(ai))
		{
			ai ai::bloody_death();
			wait(RandomFloatRange(0.1, 0.3));
		}
	}
}

/*
	Name: function_cefcd22a
	Namespace: namespace_dc79b4d3
	Checksum: 0x58000FE6
	Offset: 0x4000
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_cefcd22a(a_ents)
{
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.origin, 0.5, 1.5, 5000, 5, "damage_heavy");
}

/*
	Name: function_b61c8c58
	Namespace: namespace_dc79b4d3
	Checksum: 0x3CBBA9A
	Offset: 0x4060
	Size: 0x4C3
	Parameters: 0
	Flags: None
*/
function function_b61c8c58()
{
	var_a02e914a = GetEnt("bridge_section_top", "targetname");
	var_a02e914a delete();
	var_725be530 = GetEnt("bridge_section_bottom", "targetname");
	var_725be530 delete();
	level thread scene::Play("bridge_tent_01");
	var_59ff07ee = GetEnt("bridge_section_1", "targetname");
	var_59ff07ee delete();
	var_57376852 = GetEnt("bridge_damage_origin_1", "targetname");
	RadiusDamage(var_57376852.origin, 450, 2000, 2000, undefined, "MOD_EXPLOSIVE");
	level thread function_71e578b6();
	level waittill("hash_85385801");
	level thread scene::Play("bridge_tent_02");
	var_33fc8d85 = GetEnt("bridge_section_2", "targetname");
	var_33fc8d85 delete();
	var_3134ede9 = GetEnt("bridge_damage_origin_2", "targetname");
	RadiusDamage(var_3134ede9.origin, 450, 2000, 2000, undefined, "MOD_EXPLOSIVE");
	level thread function_71e578b6();
	level waittill("hash_5f35dd98");
	var_dfa131c = GetEnt("bridge_section_3", "targetname");
	var_dfa131c delete();
	var_b327380 = GetEnt("bridge_damage_origin_3", "targetname");
	RadiusDamage(var_b327380.origin, 450, 2000, 2000, undefined, "MOD_EXPLOSIVE");
	level thread function_71e578b6();
	level waittill("hash_69473677");
	level thread scene::Play("bridge_tent_03");
	var_e7f798b3 = GetEntArray("bridge_section_4", "targetname");
	Array::run_all(var_e7f798b3, &delete);
	var_1543cc5f = GetEnt("bridge_damage_origin_4", "targetname");
	RadiusDamage(var_1543cc5f.origin, 800, 3000, 3000, undefined, "MOD_EXPLOSIVE");
	level thread function_71e578b6();
	var_2bb8ffb8 = GetEntArray("bridge_macv_convoy1_vh", "targetname");
	var_bd827604 = struct::get("struct_macv_fx", "targetname");
	var_85d8db71 = ArrayGetClosest(var_bd827604.origin, var_2bb8ffb8);
	var_85d8db71 thread FX::Play("fx_apc_fire", var_85d8db71.origin, var_85d8db71.angles, undefined, 1, "tag_origin");
}

/*
	Name: function_27bfa6a0
	Namespace: namespace_dc79b4d3
	Checksum: 0xC7666154
	Offset: 0x4530
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_27bfa6a0(a_ents)
{
	function_6ddd4fa4("fxanim_bridge_static2");
	util::wait_network_frame();
	foreach(ent in a_ents)
	{
		ent delete();
	}
}

/*
	Name: function_908069e9
	Namespace: namespace_dc79b4d3
	Checksum: 0xC9BF417D
	Offset: 0x45F8
	Size: 0x45
	Parameters: 0
	Flags: None
*/
function function_908069e9()
{
	for(i = 1; i < 5; i++)
	{
		self turret::stop(i);
	}
}

/*
	Name: function_71e578b6
	Namespace: namespace_dc79b4d3
	Checksum: 0x49E2C997
	Offset: 0x4648
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_71e578b6()
{
	foreach(e_player in level.players)
	{
		e_player PlayRumbleOnEntity("tank_damage_heavy_mp");
		Earthquake(0.3, 1, e_player.origin, 128);
	}
}

/*
	Name: function_1aacc8e6
	Namespace: namespace_dc79b4d3
	Checksum: 0xBB919312
	Offset: 0x4718
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_1aacc8e6(TRUCK, spawner)
{
	vh_truck1 = vehicle::simple_spawn_single(TRUCK);
	vh_truck1 thread vehicle::go_path();
	vh_truck1 waittill("reached_end_node");
	vh_truck1 disconnectpaths();
	spawn_manager::enable(spawner);
}

/*
	Name: function_bb86e135
	Namespace: namespace_dc79b4d3
	Checksum: 0x1904FC8E
	Offset: 0x47B0
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_bb86e135(sp_vehicle, n_amount, n_delay)
{
	for(i = 0; i < n_amount; i++)
	{
		var_86cf1a8 = vehicle::simple_spawn_single_and_drive(sp_vehicle);
		level.var_3e3bb66f[level.var_3e3bb66f.size] = var_86cf1a8;
		if(i == 0)
		{
			var_86cf1a8 playsound("evt_apc_bridge_drive");
		}
		var_86cf1a8 thread function_9a998f4c();
		wait(n_delay);
	}
}

/*
	Name: function_9a998f4c
	Namespace: namespace_dc79b4d3
	Checksum: 0x442F490C
	Offset: 0x4880
	Size: 0x115
	Parameters: 0
	Flags: None
*/
function function_9a998f4c()
{
	self endon("death");
	self waittill("hash_a796f6fb");
	for(i = 1; i < 5; i++)
	{
		if(level.players.size > 1)
		{
			var_e248524d = Array::get_all_closest(self.origin, level.activePlayers, undefined, 3);
			n_index = randomIntRange(1, level.activePlayers.size);
			e_target = var_e248524d[n_index - 1];
		}
		else
		{
			e_target = level.players[0];
		}
		self thread turret::shoot_at_target(e_target, 20, (0, 0, 0), i, 0);
	}
}

/*
	Name: function_86b76a0b
	Namespace: namespace_dc79b4d3
	Checksum: 0xCE615071
	Offset: 0x49A0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_86b76a0b()
{
	var_415b1e24 = GetNode("node_hendricks_bridge", "targetname");
	level.var_2fd26037 SetGoal(var_415b1e24);
}

/*
	Name: function_373c3957
	Namespace: namespace_dc79b4d3
	Checksum: 0x477DB13E
	Offset: 0x49F8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_373c3957()
{
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	var_948fd036 = GetEnt("hyperion_teleport_point", "targetname");
	self ForceTeleport(var_948fd036.origin, var_948fd036.angles, 1);
	level flag::wait_till("hyperion_move_up");
	n_node = GetNode("hyperion_bridge_start", "targetname");
	self SetGoal(n_node, 1);
	self waittill("goal");
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
}

/*
	Name: function_462ad50a
	Namespace: namespace_dc79b4d3
	Checksum: 0xF9E159C2
	Offset: 0x4B38
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_462ad50a()
{
	var_49b32118 = GetEnt("pa_dialog_bridge", "targetname");
	var_49b32118 dialog::say("nrcp_satellite_stations_m_0", 0, 1);
	level flag::wait_till("player_left_alley");
	level.var_5d4087a6 dialog::say("mare_exfil_is_across_the_0");
	level.var_2fd26037 dialog::say("hend_they_ll_still_be_rig_0", 0.5);
	level.var_5d4087a6 dialog::say("mare_we_ve_set_charges_al_0", 0.3);
	wait(1);
	level flag::set("bridge_intro_chatter_done");
	level function_ce74e624();
}

/*
	Name: function_ce74e624
	Namespace: namespace_dc79b4d3
	Checksum: 0x13B11CC2
	Offset: 0x4C60
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_ce74e624()
{
	level endon("hash_91d75f4e");
	level thread function_ccb258c2();
	level thread function_ff7f8d6c();
	level flag::wait_till("play_bridge_nag");
	level.var_5d4087a6 dialog::say("mare_bridge_s_just_ahead_0");
	level flag::clear("play_bridge_nag");
	level thread function_ccb258c2();
	level flag::wait_till("play_bridge_nag");
	level.var_5d4087a6 dialog::say("mare_keep_on_mark_we_re_0");
	level flag::clear("play_bridge_nag");
	level thread function_ccb258c2();
	level flag::wait_till("play_bridge_nag");
	level.var_5d4087a6 dialog::say("mare_move_up_move_up_0");
}

/*
	Name: function_ccb258c2
	Namespace: namespace_dc79b4d3
	Checksum: 0xD59D03C2
	Offset: 0x4DD8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_ccb258c2()
{
	level endon("hash_91d75f4e");
	level.var_1d513eb4 = 0;
	n_starttime = GetTime();
	while(1)
	{
		wait(0.5);
		level.var_1d513eb4 = GetTime() - n_starttime / 1000;
		if(level.var_1d513eb4 >= 20)
		{
			level flag::set("play_bridge_nag");
			break;
		}
	}
}

/*
	Name: function_ff7f8d6c
	Namespace: namespace_dc79b4d3
	Checksum: 0x51F1886D
	Offset: 0x4E68
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_ff7f8d6c()
{
	level flag::wait_till("bridge_enemies_fallback_1");
	level.var_1d513eb4 = 0;
	level flag::wait_till("bridge_enemies_fallback_3");
	level.var_1d513eb4 = 0;
	level flag::wait_till("bring_in_jeeps");
	level.var_1d513eb4 = 0;
}

/*
	Name: function_d092ac71
	Namespace: namespace_dc79b4d3
	Checksum: 0x7C35CF46
	Offset: 0x4EF0
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_d092ac71()
{
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_5d4087a6 ai::set_ignoreall(1);
	level.var_9db406db ai::set_ignoreall(1);
	level.var_4d5a4697 ai::set_ignoreall(1);
	level.var_4d5a4697 ai::set_behavior_attribute("coverIdleOnly", 0);
	level thread function_43d4df76();
	trigger::use("move_friendlies_to_darkroom_door");
	var_e1017064 = level.scriptbundles["scene"]["cin_pro_12_01_darkbattle_vign_doorhack_theia_hack"].objects[0];
	var_e1017064.takedamage = 0;
	level.var_5d4087a6 thread function_74a0938a();
	level thread scene::Play("cin_pro_12_01_darkbattle_vign_doorhack_theia_hack");
	level thread function_d94fdf85();
	level thread objectives::breadcrumb("dark_battle_breadcrumb_start");
	level waittill("hash_3b176c27");
	function_40039059();
	trigger::use("move_friendlies_to_darkroom");
	level waittill("hash_2ea5aaf1");
	level flag::set("activate_db_bc_2");
	n_node = GetNode("pallas_stairs_goal", "targetname");
	level.var_5d4087a6 SetGoal(n_node);
	level thread function_8798d583();
	level.var_5d4087a6 waittill("goal");
	objectives::complete("cp_waypoint_breadcrumb");
}

/*
	Name: function_74a0938a
	Namespace: namespace_dc79b4d3
	Checksum: 0x26BC5A7B
	Offset: 0x5170
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_74a0938a()
{
	level endon("hash_1d62d2cc");
	s_align = struct::get("tag_align_darkbattle", "targetname");
	v_destination = GetStartOrigin(s_align.origin, s_align.angles, "ch_pro_12_01_darkbattle_vign_doorhack_theia_hack");
	n_cycles = 0;
	do
	{
		var_7a7ba497 = self.origin;
		n_cycles++;
		wait(6);
	}
	while(!(DistanceSquared(self.origin, v_destination) < DistanceSquared(var_7a7ba497, v_destination) && n_cycles < 5));
	self ForceTeleport(v_destination);
}

/*
	Name: function_40039059
	Namespace: namespace_dc79b4d3
	Checksum: 0xB23BD40
	Offset: 0x5288
	Size: 0x199
	Parameters: 0
	Flags: None
*/
function function_40039059()
{
	level.var_212db960 = GetEnt("intelligence_building_entrance_blocker", "targetname");
	level.var_212db960.moveDist = 300;
	level.var_212db960 MoveZ(-1 * level.var_212db960.moveDist, 0.05);
	door_l = GetEnt("intelstation_entry_door_l", "targetname");
	door_r = GetEnt("intelstation_entry_door_r", "targetname");
	playsoundatposition("evt_doorhack_dooropen", door_r.origin);
	v_move = VectorScale((1, 0, 0), 54);
	var_ebf82f1 = door_l.origin + v_move;
	door_l moveto(var_ebf82f1, 0.5);
	var_ebf82f1 = door_r.origin - v_move;
	door_r moveto(var_ebf82f1, 0.5);
	door_l waittill("movedone");
}

/*
	Name: function_43d4df76
	Namespace: namespace_dc79b4d3
	Checksum: 0x5BF0DFF9
	Offset: 0x5430
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_43d4df76()
{
	t_door = GetEnt("t_intelligence_entrance_doors", "targetname");
	a_friendly_ai = Array(level.var_4d5a4697, level.var_2fd26037, level.var_9db406db, level.var_5d4087a6);
	level thread namespace_2cb3876f::function_21f52196("intelligence_doors", t_door);
	level thread namespace_2cb3876f::function_2e61b3e8("intelligence_doors", t_door, a_friendly_ai);
	while(!namespace_2cb3876f::function_cdd726fb("intelligence_doors"))
	{
		wait(0.1);
	}
	level.var_212db960 MoveZ(level.var_212db960.moveDist, 0.05);
	door_l = GetEnt("intelstation_entry_door_l", "targetname");
	door_r = GetEnt("intelstation_entry_door_r", "targetname");
	door_r playsound("evt_doorhack_doorclose");
	v_move = VectorScale((1, 0, 0), 54);
	var_ebf82f1 = door_l.origin - v_move;
	door_l moveto(var_ebf82f1, 0.5);
	var_ebf82f1 = door_r.origin + v_move;
	door_r moveto(var_ebf82f1, 0.5);
}

/*
	Name: function_d94fdf85
	Namespace: namespace_dc79b4d3
	Checksum: 0x57A660CD
	Offset: 0x5660
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_d94fdf85()
{
	ent = spawn("script_origin", (13413, 2917, 442));
	ent PlayLoopSound("evt_darkbattle_walla_pre_loop", 5);
	level waittill("hash_400d768d");
	ent StopLoopSound(3);
	wait(0.5);
	ent playsound("evt_darkbattle_walla_surprise_oneshot");
}

/*
	Name: function_3178e821
	Namespace: namespace_dc79b4d3
	Checksum: 0x5BDC23D4
	Offset: 0x5718
	Size: 0x44B
	Parameters: 0
	Flags: None
*/
function function_3178e821()
{
	wait(18);
	vh_vtol = vehicle::simple_spawn_single("vtol_bridge_flyby");
	vh_vtol util::magic_bullet_shield();
	vh_vtol thread vehicle::go_path();
	vh_vtol thread namespace_2cb3876f::vehicle_rumble("buzz_high", "vtol_attack_end", 0.1, 0.1, 2000, 60);
	vh_vtol thread namespace_2cb3876f::function_c56034b7();
	vh_vtol vehicle::toggle_lights_group(4, 1);
	var_bd827604 = struct::get("vtol_spotlight_closest", "targetname");
	e_closest_player = ArrayGetClosest(var_bd827604.origin, level.players);
	vh_vtol setGunnerTargetEnt(e_closest_player, (0, 0, 0), 2);
	vh_vtol waittill("hash_808f9bca");
	var_c9a712ab = GetEnt("trig_all_players_in_int_builing", "targetname");
	vh_vtol vehicle::detach_path();
	a_flight_structs = struct::get_array("vtol_db_pos");
	var_3a018a9 = 0;
	while(!namespace_2cb3876f::function_cdd726fb("intelligence_doors"))
	{
		foreach(e_player in level.activePlayers)
		{
			vh_vtol SetLookAtEnt(e_player);
			vh_vtol setGunnerTargetEnt(e_player, (0, 0, 0), 2);
			while(isdefined(e_player) && !e_player istouching(var_c9a712ab))
			{
				e_player function_62f55bbc(vh_vtol, 0);
				var_3a018a9++;
				if(var_3a018a9 % 2 == 0)
				{
					vh_vtol SetVehGoalPos(Array::random(a_flight_structs).origin, 1);
				}
			}
		}
		wait(0.5);
	}
	vh_vtol ClearVehGoalPos();
	vh_vtol.DrivePath = 1;
	var_618ce087 = GetVehicleNode("vtol_bridge_leave_nd", "targetname");
	vh_vtol thread vehicle::get_on_and_go_path(var_618ce087);
	vh_vtol waittill("reached_end_node");
	vh_vtol util::stop_magic_bullet_shield();
	vh_vtol notify("hash_e9b8a433");
	vh_vtol.delete_on_death = 1;
	vh_vtol notify("death");
	if(!isalive(vh_vtol))
	{
		vh_vtol delete();
	}
}

/*
	Name: function_62f55bbc
	Namespace: namespace_dc79b4d3
	Checksum: 0x8F60C902
	Offset: 0x5B70
	Size: 0x16D
	Parameters: 2
	Flags: None
*/
function function_62f55bbc(veh_vtol, var_bb290d08)
{
	if(!isdefined(var_bb290d08))
	{
		var_bb290d08 = 0;
	}
	level endon("hash_7097d501");
	self endon("death");
	n_timer = RandomFloatRange(2, 3) * 20;
	for(i = 0; i < n_timer; i++)
	{
		if(!var_bb290d08)
		{
			var_30299a05 = (randomIntRange(-150, 150), randomIntRange(-150, 150), randomIntRange(-150, 150));
		}
		else
		{
			var_30299a05 = (0, 0, 0);
		}
		MagicBullet(GetWeapon("turret_bo3_mil_vtol_nrc"), veh_vtol GetTagOrigin("tag_gunner_barrel3") + VectorScale((0, -1, 0), 40), self.origin + var_30299a05);
		wait(0.05);
	}
}

/*
	Name: function_3d8309dc
	Namespace: namespace_dc79b4d3
	Checksum: 0x9D45B405
	Offset: 0x5CE8
	Size: 0x75
	Parameters: 13
	Flags: None
*/
function function_3d8309dc(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, modelIndex, psOffsetTime, vSurfaceNormal)
{
	return iDamage * 5;
}

/*
	Name: function_86ce62c8
	Namespace: namespace_dc79b4d3
	Checksum: 0xFA0E27E4
	Offset: 0x5D68
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_86ce62c8()
{
	level.var_5d4087a6 dialog::say("mare_taylor_primary_exfi_0");
	level dialog::remote("tayr_copy_that_rendezvou_0", undefined, "normal");
}

/*
	Name: function_8798d583
	Namespace: namespace_dc79b4d3
	Checksum: 0xFB61F6B7
	Offset: 0x5DC0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_8798d583()
{
	level endon("hash_18d7e7c0");
	level thread function_951308f0();
	wait(10);
	level.var_5d4087a6 dialog::say("mare_gotta_move_on_second_0");
	wait(5);
	level.var_5d4087a6 dialog::say("mare_move_your_ass_get_i_0");
	wait(5);
	level.var_5d4087a6 dialog::say("mare_that_drone_s_less_th_0");
}

/*
	Name: function_951308f0
	Namespace: namespace_dc79b4d3
	Checksum: 0xF292A36A
	Offset: 0x5E68
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_951308f0()
{
	level trigger::wait_till("trig_all_players_in_int_builing");
	level notify("hash_18d7e7c0");
}

/*
	Name: function_401aadf2
	Namespace: namespace_dc79b4d3
	Checksum: 0xCAB75AF4
	Offset: 0x5EA8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_401aadf2()
{
	var_950ed8c6 = GetNode("bridge_link_1", "targetname");
	LinkTraversal(var_950ed8c6);
	var_950ed8c6 = GetNode("bridge_link_2", "targetname");
	LinkTraversal(var_950ed8c6);
	var_950ed8c6 = GetNode("bridge_link_3", "targetname");
	LinkTraversal(var_950ed8c6);
	var_950ed8c6 = GetNode("bridge_link_4", "targetname");
	LinkTraversal(var_950ed8c6);
	var_950ed8c6 = GetNode("bridge_link_5", "targetname");
	LinkTraversal(var_950ed8c6);
}


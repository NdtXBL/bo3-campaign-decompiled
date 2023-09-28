#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_squad_control;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_cloudmountain;
#using scripts\cp\cp_mi_sing_biodomes_fighttothedome;
#using scripts\cp\cp_mi_sing_biodomes_fx;
#using scripts\cp\cp_mi_sing_biodomes_init_spawn;
#using scripts\cp\cp_mi_sing_biodomes_markets;
#using scripts\cp\cp_mi_sing_biodomes_patch;
#using scripts\cp\cp_mi_sing_biodomes_sound;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cp_mi_sing_biodomes_warehouse;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\teamgather_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_55d2f1be;

/*
	Name: setup_rex_starts
	Namespace: namespace_55d2f1be
	Checksum: 0x6B3D8D3E
	Offset: 0x12F0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function setup_rex_starts()
{
	util::add_gametype("coop");
	util::add_gametype("cpzm");
}

/*
	Name: main
	Namespace: namespace_55d2f1be
	Checksum: 0x57CAED2F
	Offset: 0x1330
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function main()
{
	if(SessionModeIsCampaignZombiesGame() && 0)
	{
		SetClearanceCeiling(34);
	}
	else
	{
		SetClearanceCeiling(106);
	}
	savegame::function_8c0c4b3a("biodomes");
	util::function_286a5010(2);
	namespace_769dc23f::accolades_init();
	Precache();
	function_b37230e4();
	flag_init();
	level_init();
	namespace_7042442b::main();
	namespace_a46315e2::main();
	namespace_73fc8448::main();
	namespace_f5edec75::main();
	namespace_6f13ba4a::main();
	setup_skiptos();
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	spawner::add_global_spawn_function("axis", &function_8b005d7f);
	if(SessionModeIsCampaignZombiesGame())
	{
		level scene::init("server_room_access_start", "targetname");
	}
	load::main();
	namespace_e82fdc69::function_7403e82b();
	skipto::function_f3e035ef();
}

/*
	Name: setup_skiptos
	Namespace: namespace_55d2f1be
	Checksum: 0xE6D18CC7
	Offset: 0x1538
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function setup_skiptos()
{
	skipto::add("objective_igc", &function_b0343c6c, undefined, &function_25dc0657);
	skipto::function_d68e678e("objective_markets_start", &namespace_73fc8448::function_768ccc86, undefined, &namespace_73fc8448::function_1bc4d710);
	skipto::function_d68e678e("objective_markets_rpg", &namespace_73fc8448::function_df0ba879, undefined, &namespace_73fc8448::function_c80a0733);
	skipto::function_d68e678e("objective_markets2_start", &namespace_73fc8448::function_bf0a0e50, undefined, &namespace_73fc8448::function_4fd7cfe6);
	skipto::function_d68e678e("objective_warehouse", &namespace_23646cee::function_98f8d85b, undefined, &namespace_23646cee::function_4d15fa71);
	skipto::function_d68e678e("objective_cloudmountain", &namespace_f5edec75::function_34f37fe, undefined, &namespace_f5edec75::function_ace9f6d8);
	skipto::function_d68e678e("objective_cloudmountain_level_2", &namespace_f5edec75::function_8ce887a2, undefined, &namespace_f5edec75::function_2013f39c);
	skipto::function_d68e678e("objective_turret_hallway", &namespace_f5edec75::function_df51ef25, undefined, &namespace_f5edec75::function_9cfbecff);
	skipto::function_d68e678e("objective_xiulan_vignette", &namespace_f5edec75::function_e696b86c, undefined, &namespace_f5edec75::function_6be20b72);
	skipto::add("objective_server_room_defend", &namespace_f5edec75::function_8dacf956, undefined, &namespace_f5edec75::function_9ed4c7c0);
	skipto::function_d68e678e("objective_fighttothedome", &namespace_6f13ba4a::function_af17c267, undefined, &namespace_6f13ba4a::function_451af01d);
	/#
		skipto::function_654c9dda("Dev Block strings are not supported", &function_1a9d89e5);
		skipto::function_654c9dda("Dev Block strings are not supported", &namespace_23646cee::function_5e699ca2);
		skipto::function_654c9dda("Dev Block strings are not supported", &namespace_23646cee::function_9989cb45);
	#/
}

/*
	Name: Precache
	Namespace: namespace_55d2f1be
	Checksum: 0x7ED9C1D6
	Offset: 0x1830
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function Precache()
{
	level._effect["ceiling_collapse"] = "destruct/fx_dest_ceiling_collapse_biodomes";
	level._effect["smoke_grenade"] = "explosions/fx_exp_grenade_smoke";
}

/*
	Name: function_b37230e4
	Namespace: namespace_55d2f1be
	Checksum: 0x4AB9D247
	Offset: 0x1878
	Size: 0x333
	Parameters: 0
	Flags: None
*/
function function_b37230e4()
{
	clientfield::register("toplayer", "player_dust_fx", 1, 1, "int");
	clientfield::register("toplayer", "player_waterfall_pstfx", 1, 1, "int");
	clientfield::register("toplayer", "bullet_disconnect_pstfx", 1, 1, "int");
	clientfield::register("toplayer", "zipline_speed_blur", 1, 1, "int");
	clientfield::register("toplayer", "umbra_tome_markets2", 1000, 1, "counter");
	clientfield::register("scriptmover", "waiter_blood_shader", 1, 1, "int");
	clientfield::register("world", "set_exposure_bank", 1, 1, "int");
	clientfield::register("world", "party_house_shutter", 1, 1, "int");
	clientfield::register("world", "party_house_destruction", 1, 1, "int");
	clientfield::register("world", "dome_glass_break", 1, 1, "int");
	clientfield::register("world", "warehouse_window_break", 1, 1, "int");
	clientfield::register("world", "control_room_window_break", 1, 1, "int");
	clientfield::register("toplayer", "server_extra_cam", 1, 5, "int");
	clientfield::register("toplayer", "server_interact_cam", 1, 3, "int");
	clientfield::register("world", "cloud_mountain_crows", 1, 2, "int");
	clientfield::register("world", "fighttothedome_exfil_rope", 1, 2, "int");
	clientfield::register("world", "fighttothedome_exfil_rope_sim_player", 1, 1, "int");
}

/*
	Name: flag_init
	Namespace: namespace_55d2f1be
	Checksum: 0x65026DF
	Offset: 0x1BB8
	Size: 0x643
	Parameters: 0
	Flags: None
*/
function flag_init()
{
	level flag::init("partyroom_igc_started");
	level flag::init("plan_b");
	level flag::init("dannyli_dead");
	level flag::init("gohbro_dead");
	level flag::init("bullet_start");
	level flag::init("bullet_over");
	level flag::init("party_scene_skipped");
	level flag::init("markets1_enemies_alert");
	level flag::init("hendricks_markets2_wallrun");
	level flag::init("hendricks_markets2_arch_throw");
	level flag::init("markets1_intro_dialogue_done");
	level flag::init("turret1");
	level flag::init("turret2");
	level flag::init("turret1_dead");
	level flag::init("turret2_dead");
	level flag::init("markets2_tower_destroyed");
	level flag::init("container_done");
	level flag::init("warehouse_intro_vo_started");
	level flag::init("warehouse_intro_vo_done");
	level flag::init("warehouse_warlord_friendly_goal");
	level flag::init("back_door_closed");
	level flag::init("warehouse_warlord");
	level flag::init("warehouse_warlord_dead");
	level flag::init("warehouse_warlord_retreated");
	level flag::init("back_door_opened");
	level flag::init("siegebot_damage_enabled");
	level flag::init("siegebot_alerted");
	level flag::init("warehouse_wasps");
	level flag::init("turret_hall_clear");
	level flag::init("hand_cut");
	level flag::init("elevator_light_on_server_room");
	level flag::init("elevator_light_on_cloudmountain");
	level flag::init("cloudmountain_flanker_disable");
	level flag::init("cloudmountain_left_cleared");
	level flag::init("cloudmountain_right_cleared");
	level flag::init("cloudmountain_siegebots_dead");
	level flag::init("cloudmountain_siegebots_skipped");
	level flag::init("cloudmountain_second_floor_vo");
	level flag::init("level_2_enemy_catwalk_spawned");
	level flag::init("cloudmountain_hunter_spawned");
	level flag::init("end_level_2_sniper_vo");
	level flag::init("cloudmountain_level_3_catwalk_vo");
	level flag::init("end_level_3_sniper_vo");
	level flag::init("window_broken");
	level flag::init("window_hooks");
	level flag::init("window_gone");
	level flag::init("server_room_failing");
	level flag::init("top_floor_breached");
	level flag::init("hendricks_on_dome");
	level flag::init("server_control_room_door_open");
}

/*
	Name: level_init
	Namespace: namespace_55d2f1be
	Checksum: 0x4030068
	Offset: 0x2208
	Size: 0x253
	Parameters: 0
	Flags: None
*/
function level_init()
{
	CreateThreatBiasGroup("warlords");
	CreateThreatBiasGroup("heroes");
	level.var_b06e31c0 = 1;
	GetEnt("back_door_look_trigger", "script_noteworthy") TriggerEnable(0);
	var_4698236 = GetEntArray("start_hidden", "script_noteworthy");
	foreach(ent in var_4698236)
	{
		ent Hide();
	}
	var_c7f1d195 = GetEntArray("partyroom_destroyed", "targetname");
	foreach(PROP in var_c7f1d195)
	{
		PROP Hide();
	}
	function_9e3608e3("partyroom_destroyed");
	var_b50d1047 = GetEntArray("waterfall_triggers", "script_noteworthy");
	Array::thread_all(var_b50d1047, &function_2ec137d9);
	level thread function_a673776d();
}

/*
	Name: function_8b005d7f
	Namespace: namespace_55d2f1be
	Checksum: 0x7E2D767
	Offset: 0x2468
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8b005d7f()
{
	self.var_2ddc2ef9 = 0;
	self.var_38c1e4c8 = 0;
}

/*
	Name: on_player_connect
	Namespace: namespace_55d2f1be
	Checksum: 0x20743967
	Offset: 0x2490
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self.var_346ba704 = 0;
	self thread function_f1059e87();
	self flag::init("player_bullet_over");
}

/*
	Name: on_player_spawned
	Namespace: namespace_55d2f1be
	Checksum: 0x48DF4ED7
	Offset: 0x24E0
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	if(!GetDvarInt("art_review", 0))
	{
		if(level.skipto_point == "objective_igc" || level.skipto_point == "dev_bullet_scene")
		{
			if(level flag::get("bullet_start"))
			{
				self flag::set("player_bullet_over");
			}
		}
		else if(level.skipto_point == "objective_markets2_start")
		{
			level flag::set("turret1_dead");
			clientfield::increment_to_player("umbra_tome_markets2", 1);
		}
		else if(level.skipto_point == "objective_warehouse" || level.skipto_point == "objective_cloudmountain")
		{
			level flag::set("turret1_dead");
			level flag::set("turret2_dead");
		}
	}
	namespace_27a45d31::function_d28654c9();
}

/*
	Name: function_f1059e87
	Namespace: namespace_55d2f1be
	Checksum: 0xC54052FE
	Offset: 0x2640
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_f1059e87()
{
	self endon("disconnect");
	self waittill("bled_out");
	self.var_346ba704 = 1;
}

/*
	Name: function_cef897cf
	Namespace: namespace_55d2f1be
	Checksum: 0x306CFB5B
	Offset: 0x2670
	Size: 0x12B
	Parameters: 2
	Flags: None
*/
function function_cef897cf(str_objective, var_23d9a41a)
{
	if(!isdefined(var_23d9a41a))
	{
		var_23d9a41a = 4;
	}
	var_85556b78 = [];
	for(i = 0; i < var_23d9a41a; i++)
	{
		var_85556b78[i] = spawner::simple_spawn_single("friendly_robot_control", undefined, undefined, undefined, undefined, undefined, undefined, 1);
		var_85556b78[i].health = Int(var_85556b78[i].health * 0.75);
		var_85556b78[i].start_health = var_85556b78[i].health;
	}
	skipto::teleport_ai(str_objective, var_85556b78);
	level thread namespace_36171bd3::function_e56e9d7d(var_85556b78);
}

/*
	Name: function_2ec137d9
	Namespace: namespace_55d2f1be
	Checksum: 0xA63134CA
	Offset: 0x27A8
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_2ec137d9()
{
	self endon("death");
	while(1)
	{
		self trigger::wait_till();
		self.who thread function_f952ddcc(self);
	}
}

/*
	Name: function_f952ddcc
	Namespace: namespace_55d2f1be
	Checksum: 0x208247DE
	Offset: 0x27F8
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_f952ddcc(var_b35e56d0)
{
	self endon("death");
	var_b35e56d0 SetInvisibleToPlayer(self);
	self clientfield::set_to_player("player_waterfall_pstfx", 1);
	while(self istouching(var_b35e56d0))
	{
		n_delay = RandomFloatRange(0, 1);
		wait(n_delay);
	}
	var_b35e56d0 SetVisibleToPlayer(self);
	self clientfield::set_to_player("player_waterfall_pstfx", 0);
}

/*
	Name: function_69468f09
	Namespace: namespace_55d2f1be
	Checksum: 0xEAADF4B9
	Offset: 0x28D0
	Size: 0x7A3
	Parameters: 1
	Flags: None
*/
function function_69468f09(var_f45807af)
{
	if(!isdefined(var_f45807af))
	{
		var_f45807af = 0;
	}
	load::function_73adcefc();
	level thread scene::add_scene_func("cin_bio_02_04_gunplay_vign_stab_both", &function_7b5ce9a8, "done");
	level thread scene::add_scene_func("cin_bio_01_01_party_1st_drinks", &function_df65aec6, "play");
	level thread scene::add_scene_func("cin_bio_01_01_party_1st_drinks", &function_b361ad8b, "skip_started");
	level thread scene::init("cin_bio_03_01_market_vign_engage");
	level thread scene::init("cin_bio_03_01_market_aie_weapons");
	level thread scene::init("cin_gen_aie_table_react");
	if(var_f45807af)
	{
		var_ac204282 = struct::get_script_bundle("scene", "cin_bio_02_04_gunplay_vign_stab_both");
		foreach(s_object in var_ac204282.objects)
		{
			if(s_object.type === "player")
			{
				s_object.RemoveWeapon = 0;
			}
		}
		level scene::init("cin_bio_02_04_gunplay_vign_stab_both");
		var_d66ecef1 = struct::get("skipto_intro_igc_table");
		util::spawn_model(var_d66ecef1.model, var_d66ecef1.origin, var_d66ecef1.angles);
		load::function_c32ba481();
	}
	else
	{
		level scene::init("cin_bio_01_01_party_1st_drinks");
		level scene::init("cin_bio_01_01_party_1st_drinks_part2");
		util::set_lighting_state(1);
		load::function_c32ba481();
		util::do_chyron_text(&"CP_MI_SING_BIODOMES_INTRO_LINE_1_FULL", &"CP_MI_SING_BIODOMES_INTRO_LINE_1_SHORT", &"CP_MI_SING_BIODOMES_INTRO_LINE_2_FULL", &"CP_MI_SING_BIODOMES_INTRO_LINE_2_SHORT", &"CP_MI_SING_BIODOMES_INTRO_LINE_3_FULL", &"CP_MI_SING_BIODOMES_INTRO_LINE_3_SHORT", &"CP_MI_SING_BIODOMES_INTRO_LINE_4_FULL", &"CP_MI_SING_BIODOMES_INTRO_LINE_4_SHORT", "", "", 9);
	}
	level thread namespace_f1b4cbbc::function_f936f64e();
	function_484bc3aa(1);
	if(var_f45807af)
	{
		level thread scene::skipto_end("cin_bio_02_04_gunplay_vign_stab_both", undefined, undefined, 0.59, 1);
	}
	else if(isdefined(level.BZM_BIODialogue1Callback))
	{
		level thread [[level.BZM_BIODialogue1Callback]]();
	}
	level thread function_8013ff12();
	level thread function_9cebd80e();
	level scene::Play("cin_bio_01_01_party_1st_drinks");
	foreach(player in level.players)
	{
		player.ignoreme = 1;
	}
	if(isdefined(level.BZM_BIODialogue2Callback))
	{
		level thread [[level.BZM_BIODialogue2Callback]]();
	}
	level flag::set("bullet_start");
	level flag::set("bullet_over");
	var_c7f1d195 = GetEntArray("partyroom_destroyed", "targetname");
	foreach(PROP in var_c7f1d195)
	{
		PROP show();
	}
	level clientfield::set("party_house_destruction", 1);
	function_6ddd4fa4("partyroom_destroyed");
	if(!var_f45807af)
	{
		level thread function_1fbdb441();
	}
	exploder::exploder("party_igc_bullets");
	level thread function_e4f0cf99();
	level clientfield::set("sndIGCsnapshot", 3);
	level util::clientNotify("no_party");
	foreach(player in level.players)
	{
		player AllowCrouch(1);
		player AllowProne(1);
	}
	while(!scene::is_active("cin_bio_02_04_gunplay_vign_stab_both"))
	{
		wait(0.05);
	}
	level notify("hash_7ee85209");
	if(!scene::is_skipping_in_progress())
	{
		namespace_73fc8448::function_8387168c();
	}
	level clientfield::set("gameplay_started", 1);
}

/*
	Name: function_8013ff12
	Namespace: namespace_55d2f1be
	Checksum: 0xDC8870BB
	Offset: 0x3080
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_8013ff12()
{
	level waittill("hash_15b19b21");
	if(!scene::is_skipping_in_progress())
	{
		level scene::init("cin_bio_02_04_gunplay_vign_stab_both");
	}
}

/*
	Name: function_b361ad8b
	Namespace: namespace_55d2f1be
	Checksum: 0x274E9373
	Offset: 0x30D0
	Size: 0x203
	Parameters: 1
	Flags: None
*/
function function_b361ad8b(a_ents)
{
	level flag::set("party_scene_skipped");
	level thread scene::add_scene_func("cin_gen_aie_table_react", &namespace_73fc8448::function_c7cb9a93, "done");
	level thread scene::Play("cin_gen_aie_table_react");
	level thread scene::Play("cin_bio_03_01_market_vign_engage");
	level thread scene::Play("cin_bio_03_01_market_aie_weapons");
	level thread scene::stop("p7_fxanim_cp_biodomes_party_house_drinks_bundle");
	level thread scene::stop("cin_bio_01_01_party_1st_drinks_part2");
	spawner::simple_spawn("sp_markets1_friendly_robot_start");
	spawn_manager::enable("sm_markets1_combat0");
	spawn_manager::enable("sm_markets1_combat1");
	level.var_1675f12a = spawner::simple_spawn_single("turret_markets1");
	level.var_1675f12a thread namespace_73fc8448::function_70da4f9b();
	level thread namespace_73fc8448::function_5d4c2323();
	level thread namespace_73fc8448::function_b1e84c2();
	trigger::use("trig_markets1_combat1");
	wait(2);
	level flag::set("markets1_enemies_alert");
	level clientfield::set("sndIGCsnapshot", 0);
}

/*
	Name: function_9cebd80e
	Namespace: namespace_55d2f1be
	Checksum: 0x1A5A529D
	Offset: 0x32E0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_9cebd80e()
{
	level waittill("hash_5a3ae48e");
	if(!scene::is_skipping_in_progress())
	{
		level thread function_5cb44f79("robot_graphic_kill", "robot_intro_robot", "robot_intro_guy");
		level thread function_5cb44f79("robot_overhead_throw_enemy");
	}
}

/*
	Name: function_5cb44f79
	Namespace: namespace_55d2f1be
	Checksum: 0xD56D88BB
	Offset: 0x3360
	Size: 0x1C3
	Parameters: 3
	Flags: None
*/
function function_5cb44f79(var_d83ebd04, var_42c1bd32, var_ae7d184a)
{
	var_56af50be = [];
	var_f6c5842 = spawner::simple_spawn_single("markets1_robot_vign");
	var_f6c5842 namespace_36171bd3::function_eb13b9c0();
	if(isdefined(var_42c1bd32))
	{
		var_56af50be[var_42c1bd32] = var_f6c5842;
	}
	else if(!isdefined(var_56af50be))
	{
		var_56af50be = [];
	}
	else if(!IsArray(var_56af50be))
	{
		var_56af50be = Array(var_56af50be);
	}
	var_56af50be[var_56af50be.size] = var_f6c5842;
	ai_enemy = spawner::simple_spawn_single("markets1_enemy_vign");
	if(isdefined(var_ae7d184a))
	{
		var_56af50be[var_ae7d184a] = ai_enemy;
	}
	else if(!isdefined(var_56af50be))
	{
		var_56af50be = [];
	}
	else if(!IsArray(var_56af50be))
	{
		var_56af50be = Array(var_56af50be);
	}
	var_56af50be[var_56af50be.size] = ai_enemy;
	s_align = struct::get(var_d83ebd04);
	s_align scene::Play(s_align.scriptbundlename, var_56af50be);
}

/*
	Name: function_e4f0cf99
	Namespace: namespace_55d2f1be
	Checksum: 0x98DF7CB7
	Offset: 0x3530
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e4f0cf99()
{
	level waittill("hash_480f0793");
	level clientfield::set("party_house_shutter", 1);
	util::set_lighting_state(0);
}

/*
	Name: function_484bc3aa
	Namespace: namespace_55d2f1be
	Checksum: 0xFD9B5D6
	Offset: 0x3588
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_484bc3aa(b_enable)
{
	foreach(player in level.players)
	{
		player clientfield::set_to_player("player_dust_fx", b_enable);
	}
}

/*
	Name: function_df65aec6
	Namespace: namespace_55d2f1be
	Checksum: 0x4C60050
	Offset: 0x3630
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_df65aec6(a_ents)
{
	level thread scene::Play("p7_fxanim_cp_biodomes_party_house_drinks_bundle");
	level thread scene::Play("cin_bio_01_01_party_1st_drinks_part2");
	var_ecc203c7 = a_ents["server"];
	var_ecc203c7 waittill("stab");
	var_ecc203c7 clientfield::set("waiter_blood_shader", 1);
}

/*
	Name: function_7b5ce9a8
	Namespace: namespace_55d2f1be
	Checksum: 0xBC9520EF
	Offset: 0x36D0
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_7b5ce9a8(scene)
{
	exploder::kill_exploder("party_igc_bullets");
	function_484bc3aa(0);
	foreach(player in level.players)
	{
		player.ignoreme = 0;
	}
	level util::function_93831e79("objective_markets_start");
	function_c506a743("objective_igc");
}

/*
	Name: function_c506a743
	Namespace: namespace_55d2f1be
	Checksum: 0xB7EB69B6
	Offset: 0x37D0
	Size: 0x22B
	Parameters: 2
	Flags: None
*/
function function_c506a743(str_objective, var_23d9a41a)
{
	if(!isdefined(var_23d9a41a))
	{
		var_23d9a41a = 4;
	}
	var_41b5ccc5 = struct::get_array("markets_combat_robot_squad_spawn");
	var_49ac7aba = [];
	var_64e85e6d = [];
	for(i = 0; i < 4; i++)
	{
		var_49ac7aba[i] = GetEnt("robot0" + i + 1, "animname");
	}
	if(var_23d9a41a > 4)
	{
		for(i = 0; i < var_23d9a41a; i++)
		{
			var_64e85e6d[i] = spawner::simple_spawn_single("friendly_robot_control");
		}
	}
	var_667ca71 = ArrayCombine(var_49ac7aba, var_64e85e6d, 0, 1);
	foreach(robot in var_667ca71)
	{
		robot.health = Int(robot.health * 0.75);
		robot.start_health = robot.health;
	}
	level namespace_36171bd3::function_e56e9d7d(var_667ca71);
}

/*
	Name: function_a673776d
	Namespace: namespace_55d2f1be
	Checksum: 0x3C4F9335
	Offset: 0x3A08
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_a673776d()
{
	level flag::wait_till("turret1");
	if(isalive(level.var_1675f12a))
	{
		level thread namespace_36171bd3::function_bb612155(level.var_1675f12a);
		level.var_1675f12a thread function_2a7e0c30();
	}
}

/*
	Name: function_2a7e0c30
	Namespace: namespace_55d2f1be
	Checksum: 0x920691AC
	Offset: 0x3A88
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_2a7e0c30()
{
	self waittill("death");
	if(isdefined(self))
	{
		if(IsInArray(level.var_38f7500, self))
		{
			ArrayRemoveValue(level.var_38f7500, self);
		}
	}
}

/*
	Name: function_b0343c6c
	Namespace: namespace_55d2f1be
	Checksum: 0x7563B3A2
	Offset: 0x3AE8
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_b0343c6c(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_igc");
	namespace_27a45d31::function_bff1a867(str_objective);
	level thread namespace_27a45d31::function_753a859(str_objective);
	level thread function_69468f09();
	level waittill("end_igc");
	level skipto::function_be8adfb8("objective_igc");
}

/*
	Name: function_25dc0657
	Namespace: namespace_55d2f1be
	Checksum: 0xD1115F68
	Offset: 0x3B90
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_25dc0657(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("objective_igc_done");
}

/*
	Name: function_1fbdb441
	Namespace: namespace_55d2f1be
	Checksum: 0x8AAE305F
	Offset: 0x3BE0
	Size: 0xED
	Parameters: 0
	Flags: None
*/
function function_1fbdb441()
{
	var_d7645744 = struct::get_array("igc_extra_bullets");
	for(i = 1; i <= 5; i++)
	{
		e_guard = GetEnt("guard0" + i, "animname", 1);
		if(isalive(e_guard))
		{
			v_source = Array::random(var_d7645744).origin;
			level thread function_ca12a0a4(e_guard, v_source);
		}
	}
}

/*
	Name: function_ca12a0a4
	Namespace: namespace_55d2f1be
	Checksum: 0xF0CD2AB5
	Offset: 0x3CD8
	Size: 0x159
	Parameters: 2
	Flags: None
*/
function function_ca12a0a4(e_guard, v_source)
{
	var_f78ad07e = GetWeapon("lmg_cqb");
	v_dest = e_guard.origin + VectorScale((0, 0, 1), 48);
	for(i = 0; i <= 3.5;  = 0)
	{
		var_de810370 = randomIntRange(-2, 2);
		var_4837dd9 = randomIntRange(-2, 2);
		var_2a85f842 = randomIntRange(-20, 20);
		MagicBullet(var_f78ad07e, v_source, v_dest + (var_de810370, var_4837dd9, var_2a85f842));
		wait(0.15);
	}
}

/*
	Name: function_1a9d89e5
	Namespace: namespace_55d2f1be
	Checksum: 0x515F51E2
	Offset: 0x3E40
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_1a9d89e5(str_objective, var_74cd64bc)
{
	level thread function_69468f09(1);
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets1"));
	objectives::Hide("cp_waypoint_breadcrumb");
}


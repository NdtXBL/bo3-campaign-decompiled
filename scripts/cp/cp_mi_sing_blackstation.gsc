#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation_accolades;
#using scripts\cp\cp_mi_sing_blackstation_comm_relay;
#using scripts\cp\cp_mi_sing_blackstation_cross_debris;
#using scripts\cp\cp_mi_sing_blackstation_fx;
#using scripts\cp\cp_mi_sing_blackstation_patch;
#using scripts\cp\cp_mi_sing_blackstation_police_station;
#using scripts\cp\cp_mi_sing_blackstation_port;
#using scripts\cp\cp_mi_sing_blackstation_qzone;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_station;
#using scripts\cp\cp_mi_sing_blackstation_subway;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\cp\gametypes\_save;
#using scripts\cp\voice\voice_blackstation;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_502339f3;

/*
	Name: setup_rex_starts
	Namespace: namespace_502339f3
	Checksum: 0x4F659A39
	Offset: 0x1398
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
	Namespace: namespace_502339f3
	Checksum: 0xA115DDC3
	Offset: 0x13D8
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function main()
{
	if(SessionModeIsCampaignZombiesGame() && -1)
	{
		SetClearanceCeiling(34);
	}
	else
	{
		SetClearanceCeiling(19);
	}
	Precache();
	register_clientfields();
	flag_init();
	level_init();
	function_6364bd7d();
	function_aca49f84();
	namespace_23567e72::accolades_init();
	namespace_56310eec::main();
	namespace_7a033503::main();
	namespace_d754dd61::main();
	namespace_8b9f718f::main();
	namespace_ec2cabcf::init_voice();
	setup_skiptos();
	util::function_286a5010(5);
	scene::add_wait_for_streamer_hint_scene("cin_bla_03_warlordintro_3rd_sh010");
	scene::add_wait_for_streamer_hint_scene("cin_bla_10_01_kaneintro_3rd_sh010");
	savegame::function_8c0c4b3a("blackstation");
	callback::on_spawned(&on_player_spawned);
	callback::on_loadout(&function_974050f);
	level.var_1895e0f9 = &namespace_79e1cd97::function_8f7c9f3c;
	load::main();
	namespace_814e90c0::function_7403e82b();
	SetDvar("ui_newHud", 1);
	level thread namespace_79e1cd97::function_33942907();
	level scene::add_scene_func("cin_bla_03_warlordintro_3rd_sh170", &namespace_79e1cd97::function_746a2da4, "done", "objective_warlord");
	level scene::add_scene_func("cin_bla_10_01_kaneintro_3rd_sh190", &namespace_79e1cd97::function_746a2da4, "done", "objective_comm_relay_traverse");
	level scene::add_scene_func("cin_bla_07_02_stormsurge_1st_leap_landing", &namespace_79e1cd97::function_746a2da4, "done", "objective_subway");
	level thread function_f92d2f1c();
	level thread function_2acd20f4();
	level thread function_b3f6e2cd();
}

/*
	Name: function_aca49f84
	Namespace: namespace_502339f3
	Checksum: 0x9B27784C
	Offset: 0x1700
	Size: 0x159
	Parameters: 0
	Flags: None
*/
function function_aca49f84()
{
	var_e260543c = [];
	var_e260543c[0] = util::spawn_model("collision_clip_64x64x64", (-1674, 10107, 65), VectorScale((0, 1, 0), 350));
	var_e260543c[1] = util::spawn_model("collision_clip_64x64x64", (-1702, 9950, 65), VectorScale((0, 1, 0), 350));
	var_e260543c[2] = util::spawn_model("collision_clip_64x64x64", (-1728, 9806, 65), VectorScale((0, 1, 0), 350));
	foreach(var_935a64f in var_e260543c)
	{
		var_935a64f ghost();
	}
}

/*
	Name: function_b3f6e2cd
	Namespace: namespace_502339f3
	Checksum: 0xA90A47A4
	Offset: 0x1868
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_b3f6e2cd()
{
	GetEnt("com_rugged_glitch_1", "targetname") Hide();
	GetEnt("com_rugged_glitch_2", "targetname") Hide();
	GetEnt("com_rugged_off", "targetname") Hide();
	GetEnt("com_curve_glitch_1", "targetname") Hide();
	GetEnt("com_curve_glitch_2", "targetname") Hide();
	GetEnt("com_curve_off", "targetname") Hide();
	GetEnt("barge_monitor_glitch_1", "targetname") Hide();
	GetEnt("barge_monitor_glitch_2", "targetname") Hide();
	GetEnt("barge_monitor_off", "targetname") Hide();
}

/*
	Name: function_2acd20f4
	Namespace: namespace_502339f3
	Checksum: 0xE71A1984
	Offset: 0x1A28
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2acd20f4()
{
	function_9e3608e3("lt_wharf_water");
	function_9e3608e3("vista_water");
	function_9e3608e3("collapse_frogger_water");
}

/*
	Name: function_f92d2f1c
	Namespace: namespace_502339f3
	Checksum: 0xBB016E46
	Offset: 0x1A80
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_f92d2f1c()
{
	a_e_triggers = GetEntArray("trigger_hurt", "classname");
	foreach(e_trigger in a_e_triggers)
	{
		if(e_trigger.var_75dbd7 === "o2")
		{
			e_trigger util::self_delete();
		}
	}
}

/*
	Name: Precache
	Namespace: namespace_502339f3
	Checksum: 0x248F3770
	Offset: 0x1B60
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function Precache()
{
	level._effect["blood_headpop"] = "blood/fx_blood_ai_head_explosion";
	level._effect["lightning_strike"] = "weather/fx_lightning_strike_bolt_single_blackstation";
	level._effect["disabled_robot"] = "destruct/fx_dest_robot_head_sparks";
	level._effect["worklight"] = "light/fx_spot_low_factory_zmb";
	level._effect["worklight_rays"] = "light/fx_light_ray_work_light";
	level._effect["wave_pier"] = "water/fx_water_splash_xlg";
	level._effect["bubbles"] = "player/fx_plyr_swim_bubbles_body_blkstn";
}

/*
	Name: flag_init
	Namespace: namespace_502339f3
	Checksum: 0x4F048411
	Offset: 0x1C30
	Size: 0xA43
	Parameters: 0
	Flags: None
*/
function flag_init()
{
	level flag::init("obj_goto_docks");
	level flag::init("allow_wind_gust");
	level flag::init("end_gust_warning");
	level flag::init("kill_weather");
	level flag::init("kill_surge");
	level flag::init("end_surge");
	level flag::init("kill_wave");
	level flag::init("surging_inward");
	level flag::init("vtol_jump");
	level flag::init("executed_bodies");
	level flag::init("warlord_approach");
	level flag::init("hendricks_debris_traversal_ready");
	level flag::init("warlord_intro_prep");
	level flag::init("warlord_fight");
	level flag::init("warlord_backup");
	level flag::init("warlord_reinforce");
	level flag::init("warlord_retreat");
	level flag::init("warlord_fight_done");
	level flag::init("qzone_done");
	level flag::init("warning_vo_played");
	level flag::init("wind_gust");
	level flag::init("drone_strike");
	level flag::init("surge_active");
	level flag::init("end_surge_start");
	level flag::init("end_surge_rest");
	level flag::init("wind_done");
	level flag::init("surge_done");
	level flag::init("wave_done");
	level flag::init("cover_switch");
	level flag::init("enter_port");
	level flag::init("start_objective_barge_assault");
	level flag::init("hendricks_on_barge");
	level flag::init("slow_mo_finished");
	level flag::init("breached");
	level flag::init("barge_breach_cleared");
	level flag::init("tanker_smash");
	level flag::init("tanker_go");
	level flag::init("tanker_face");
	level flag::init("tanker_hit");
	level flag::init("tanker_ride");
	level flag::init("tanker_ride_done");
	level flag::init("flag_lobby_engaged");
	level flag::init("flag_kane_intro_complete");
	level flag::init("flag_enter_police_station");
	level flag::init("flag_lobby_ready_to_engage");
	level flag::init("flag_intro_dialog_ended");
	level flag::init("table_flip");
	level flag::init("walkway_collapse");
	level flag::init("hendricks_crossed");
	level flag::init("police_station_engaged");
	level flag::init("approach_ps_entrance");
	level flag::init("comm_relay_pulse");
	level flag::init("comm_relay_engaged");
	level flag::init("comm_relay_started_hack");
	level flag::init("comm_relay_hacked");
	level flag::init("relay_room_clear");
	level flag::init("igc_robot_down");
	level flag::init("blackstation_exterior_engaged");
	level flag::init("exterior_ready_weapons");
	level flag::init("ziplines_ready");
	level flag::init("kane_landed");
	level flag::init("zipline_player_landed");
	level flag::init("lightning_strike");
	level flag::init("lightning_strike_done");
	level flag::init("breach_active");
	level flag::init("hendricks_at_window");
	level flag::init("bridge_start_blocked");
	level flag::init("bridge_collapsed");
	level flag::init("cancel_slow_mo");
	level flag::init("atrium_rubble_dropped");
	level flag::init("path_is_open");
	level flag::init("awakening_begun");
	level flag::init("awakening_end");
	level flag::init("no_awakened_robots");
	level flag::init("truck_in_position");
	level flag::init("give_dni_weapon");
	level flag::init("trig_zipline02");
	level flag::init("trig_zipline01");
	level flag::init("warlord_dead");
	level flag::init("comm_relay_hendricks_ready");
	level flag::init("zipline_done");
	level flag::init("exterior_clear");
}

/*
	Name: level_init
	Namespace: namespace_502339f3
	Checksum: 0x8410D0B3
	Offset: 0x2680
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function level_init()
{
	SetDvar("player_swimTime", 5000);
	SetDvar("player_swimSpeed", 120);
	CreateThreatBiasGroup("warlords");
	CreateThreatBiasGroup("heroes");
	function_9e3608e3("frogger_building_fallen");
	Array::run_all(GetEntArray("frogger_building_fallen", "targetname"), &Hide);
	level thread scene::add_scene_func("cin_gen_ground_anchor_player", &namespace_79e1cd97::function_12398a8b, "done");
	level.var_4eef455c = [];
}

/*
	Name: on_player_spawned
	Namespace: namespace_502339f3
	Checksum: 0xAA9DF145
	Offset: 0x2790
	Size: 0x505
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self thread function_73dee914();
	self thread namespace_79e1cd97::function_913d882();
	self.var_f44af1ef = 0;
	self.var_fca564e8 = 0;
	self.var_4cfe7265 = 0;
	self.var_1cd4d4e6 = 0;
	self.var_f82cc610 = 0;
	self.var_32939eb7 = 0;
	self.var_20aea9e5 = 0;
	self.var_eb7c5a24 = 0;
	self.var_ff9883fd = 0;
	self.var_3f081af5 = 0;
	self.var_116f2fb8 = 0;
	self.var_62269fcc = 0;
	if(!GetDvarInt("art_review", 0))
	{
		if(level.skipto_point == "objective_qzone")
		{
			self thread namespace_d754dd61::function_ec18f079();
		}
		else if(level.skipto_point == "objective_warlord_igc")
		{
			self util::function_16c71b8(1);
		}
	}
	switch(level.skipto_point)
	{
		case "objective_igc":
		case "objective_warlord_igc":
		{
			self thread function_cc28a20d("wind_effects_anchor", "anchor_intro_wind", "tanker_smash", 1);
			self thread function_cc28a20d("wind_effects", "trigger_pier_wind", "tanker_smash", 1);
			self.var_2d166751 = 0;
			break;
		}
		case "objective_qzone":
		case "objective_warlord":
		{
			self thread function_cc28a20d("wind_effects_anchor", "anchor_intro_wind", "tanker_smash", 1);
			self thread function_cc28a20d("wind_effects", "trigger_pier_wind", "tanker_smash", 1);
			wait(0.1);
			self.var_2d166751 = 0.1;
			self clientfield::set_to_player("toggle_rain_sprite", 1);
			break;
		}
		case "objective_anchor_intro":
		{
			self thread function_cc28a20d("wind_effects_anchor", "anchor_intro_wind", "tanker_smash", 1);
			self thread function_cc28a20d("wind_effects", "trigger_pier_wind", "tanker_smash", 1);
			self thread namespace_79e1cd97::function_2c33b48e();
			self thread namespace_79e1cd97::function_f2e7ba4b();
			self thread namespace_79e1cd97::function_55221935();
			self thread namespace_8b9f718f::function_b3d8d3f5();
			wait(0.1);
			self.var_2d166751 = 0.4;
			self clientfield::set_to_player("toggle_rain_sprite", 2);
			break;
		}
		case "objective_port_assault":
		{
			self thread function_cc28a20d("wind_effects_anchor", "anchor_intro_wind", "tanker_smash", 1);
			self thread function_cc28a20d("wind_effects", "trigger_pier_wind", "tanker_smash", 1);
			self thread namespace_79e1cd97::function_2c33b48e();
			self thread namespace_79e1cd97::function_f2e7ba4b();
			self thread namespace_79e1cd97::function_55221935();
			self thread namespace_8b9f718f::function_b3d8d3f5();
			break;
		}
		case "objective_barge_assault":
		case "objective_storm_surge":
		{
			self thread namespace_79e1cd97::function_2c33b48e();
			self thread namespace_79e1cd97::function_55221935();
			self thread namespace_8b9f718f::function_b3d8d3f5();
			break;
		}
		case "objective_cross_debris":
		case "objective_police_station":
		{
			wait(0.1);
			self.var_2d166751 = 0.1;
			self clientfield::set_to_player("toggle_rain_sprite", 1);
			break;
		}
	}
}

/*
	Name: function_cc28a20d
	Namespace: namespace_502339f3
	Checksum: 0x86AF4E46
	Offset: 0x2CA0
	Size: 0x14F
	Parameters: 4
	Flags: None
*/
function function_cc28a20d(str_fx, str_trigger, str_flag, var_df107013)
{
	if(!isdefined(var_df107013))
	{
		var_df107013 = 0;
	}
	level endon(str_flag);
	self endon("death");
	self thread function_f891013e(str_flag);
	while(1)
	{
		trigger::wait_till(str_trigger, "targetname", self);
		if(str_fx == "wind_effects")
		{
			self clientfield::set_to_player("wind_effects", 1);
		}
		else
		{
			self clientfield::set_to_player("wind_effects", 2);
		}
		var_cfabce58 = GetEnt(str_trigger, "targetname");
		util::wait_till_not_touching(var_cfabce58, self);
		self clientfield::set_to_player("wind_effects", 0);
	}
}

/*
	Name: function_f891013e
	Namespace: namespace_502339f3
	Checksum: 0x69899F4B
	Offset: 0x2DF8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_f891013e(str_flag)
{
	self endon("death");
	level flag::wait_till(str_flag);
	self clientfield::set_to_player("wind_blur", 0);
	self clientfield::set_to_player("wind_effects", 0);
}

/*
	Name: function_974050f
	Namespace: namespace_502339f3
	Checksum: 0x17AC26C3
	Offset: 0x2E70
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_974050f()
{
	var_91c59c31 = GetWeapon("micromissile_launcher");
	self GiveWeapon(var_91c59c31);
}

/*
	Name: register_clientfields
	Namespace: namespace_502339f3
	Checksum: 0x847AA8EF
	Offset: 0x2EC0
	Size: 0x573
	Parameters: 0
	Flags: None
*/
function register_clientfields()
{
	clientfield::register("actor", "kill_target_keyline", 1, 4, "int");
	clientfield::register("allplayers", "zipline_sound_loop", 1, 1, "int");
	clientfield::register("scriptmover", "water_disturbance", 1, 1, "int");
	clientfield::register("scriptmover", "water_splash_lrg", 1, 1, "counter");
	clientfield::register("toplayer", "player_rain", 1, 3, "int");
	clientfield::register("toplayer", "rumble_loop", 1, 1, "int");
	clientfield::register("toplayer", "sndWindSystem", 1, 2, "int");
	clientfield::register("toplayer", "zipline_rumble_loop", 1, 1, "int");
	clientfield::register("toplayer", "player_water_swept", 1, 1, "int");
	clientfield::register("toplayer", "toggle_ukko", 1, 2, "int");
	clientfield::register("toplayer", "toggle_rain_sprite", 1, 2, "int");
	clientfield::register("toplayer", "wind_blur", 1, 1, "int");
	clientfield::register("toplayer", "wind_effects", 1, 2, "int");
	clientfield::register("toplayer", "subway_water", 1, 1, "int");
	clientfield::register("toplayer", "play_bubbles", 1, 1, "int");
	clientfield::register("toplayer", "toggle_water_fx", 1, 1, "int");
	clientfield::register("toplayer", "wave_hit", 1, 1, "int");
	clientfield::register("world", "subway_entrance_crash", 1, 1, "int");
	clientfield::register("world", "water_level", 1, 3, "int");
	clientfield::register("world", "roof_panels_init", 1, 1, "int");
	clientfield::register("world", "roof_panels_play", 1, 1, "int");
	clientfield::register("world", "subway_tiles", 1, 1, "int");
	clientfield::register("world", "warlord_exposure", 1, 1, "int");
	clientfield::register("world", "outro_exposure", 1, 1, "int");
	clientfield::register("world", "sndDrillWalla", 1, 2, "int");
	clientfield::register("world", "sndBlackStationSounds", 1, 1, "int");
	clientfield::register("world", "flotsam", 1, 1, "int");
	clientfield::register("world", "sndStationWalla", 1, 1, "int");
	clientfield::register("world", "qzone_debris", 1, 1, "counter");
}

/*
	Name: setup_skiptos
	Namespace: namespace_502339f3
	Checksum: 0x39CE45A3
	Offset: 0x3440
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function setup_skiptos()
{
	skipto::add("objective_igc", &namespace_d754dd61::function_6ec9ed4d, undefined, &namespace_d754dd61::function_25dc0657);
	skipto::add("objective_qzone", &namespace_d754dd61::function_a19cdfad, undefined, &namespace_d754dd61::function_58aef8b7);
	skipto::function_d68e678e("objective_warlord_igc", &namespace_d754dd61::function_b457621f, undefined, &namespace_d754dd61::function_487563c5);
	skipto::add("objective_warlord", &namespace_d754dd61::function_f1376b81, undefined, &namespace_d754dd61::function_68cbd90b);
	skipto::function_d68e678e("objective_anchor_intro", &namespace_8b9f718f::function_bd209495, undefined, &namespace_8b9f718f::function_88ddfb38);
	skipto::function_d68e678e("objective_port_assault", &namespace_8b9f718f::function_7a0b2bc4, undefined, &namespace_8b9f718f::function_93433fef);
	skipto::function_d68e678e("objective_barge_assault", &namespace_8b9f718f::function_43296c4c, undefined, &namespace_8b9f718f::function_c57c7177);
	skipto::function_d68e678e("objective_storm_surge", &namespace_8b9f718f::function_f93ea5f3, undefined, &namespace_8b9f718f::function_7cde31a6);
	skipto::function_d68e678e("objective_subway", &function_e4a0bb, undefined, &function_b501c2d1);
	skipto::function_d68e678e("objective_police_station", &namespace_933eb669::function_23a0cc93, undefined, &namespace_933eb669::function_88d892b9);
	skipto::function_d68e678e("objective_kane_intro", &namespace_933eb669::function_1629236a, undefined, &namespace_933eb669::function_5d496554);
	skipto::function_d68e678e("objective_comm_relay_traverse", &namespace_641b22d4::function_c9040e7d, undefined, &namespace_641b22d4::function_311be427);
	skipto::function_d68e678e("objective_comm_relay", &namespace_641b22d4::function_a2073f94, undefined, &namespace_641b22d4::function_7e7b796a);
	skipto::function_d68e678e("objective_cross_debris", &namespace_e785bfa0::function_e9acb08, undefined, &namespace_e785bfa0::function_508330ae);
	skipto::function_d68e678e("objective_blackstation_exterior", &namespace_4040b6c2::function_3450aa78, undefined, &namespace_4040b6c2::function_b5e9c2fe);
	skipto::function_d68e678e("objective_blackstation_interior", &namespace_4040b6c2::function_a870c9be, undefined, &namespace_4040b6c2::function_2846e098);
	skipto::function_d68e678e("objective_end_igc", &namespace_4040b6c2::function_2783ca83, undefined, &namespace_4040b6c2::function_392085c9);
}

/*
	Name: function_e4a0bb
	Namespace: namespace_502339f3
	Checksum: 0x405F2BF7
	Offset: 0x3808
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_e4a0bb(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_subway");
		objectives::complete("cp_level_blackstation_intercept");
		load::function_a2995f22();
		Array::thread_all(level.activePlayers, &namespace_3dc5b645::function_99f304f0);
		level thread namespace_4297372::function_37f7c98d();
	}
	level thread namespace_79e1cd97::function_6778ea09("none");
	namespace_3dc5b645::function_822cae8a();
}

/*
	Name: function_b501c2d1
	Namespace: namespace_502339f3
	Checksum: 0x97B808E1
	Offset: 0x38F0
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function function_b501c2d1(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread scene::Play("p7_fxanim_cp_blackstation_streetlight01_4on_s4_bundle");
	level thread scene::Play("p7_fxanim_cp_blackstation_streetlight01_2on_s4_bundle");
	level thread scene::Play("p7_fxanim_cp_blackstation_streetlight01_4on_flicker_s4_bundle");
	level thread scene::Play("p7_fxanim_cp_blackstation_streetlight_01_s4_bundle");
	level thread scene::Play("p7_fxanim_cp_blackstation_streetlight01_1on_s4_bundle");
}

/*
	Name: giveCustomLoadout
	Namespace: namespace_502339f3
	Checksum: 0xBC2376A5
	Offset: 0x39C0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function giveCustomLoadout(TakeAllWeapons, alreadySpawned)
{
	self TakeWeapon(self.grenadeTypeSecondary);
}

/*
	Name: function_73dee914
	Namespace: namespace_502339f3
	Checksum: 0xE06B8251
	Offset: 0x3A00
	Size: 0x145
	Parameters: 0
	Flags: None
*/
function function_73dee914()
{
	self endon("death");
	switch(level.skipto_point)
	{
		case "objective_blackstation_exterior":
		case "objective_blackstation_interior":
		case "objective_end_igc":
		case "objective_kane_intro":
		case "objective_subway":
		{
			self thread namespace_79e1cd97::function_6778ea09("none");
			break;
		}
		case "objective_qzone":
		case "objective_warlord":
		case "objective_warlord_igc":
		{
			self thread namespace_79e1cd97::function_6778ea09("light_se");
			break;
		}
		case "objective_anchor_intro":
		case "objective_port_assault":
		{
			self thread namespace_79e1cd97::function_6778ea09("med_se");
			break;
		}
		case "objective_barge_assault":
		case "objective_storm_surge":
		{
			self thread namespace_79e1cd97::function_6778ea09("drench_se");
			break;
		}
		case "objective_comm_relay":
		case "objective_comm_relay_traverse":
		case "objective_cross_debris":
		case "objective_police_station":
		{
			self thread namespace_79e1cd97::function_6778ea09("light_ne");
			break;
		}
	}
}

/*
	Name: function_6364bd7d
	Namespace: namespace_502339f3
	Checksum: 0xDEEF934E
	Offset: 0x3B50
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_6364bd7d()
{
	var_917cd731 = GetEntArray("trig_rain_indoor", "targetname");
	foreach(e_trig in var_917cd731)
	{
		e_trig thread function_3187983c();
	}
}

/*
	Name: function_3187983c
	Namespace: namespace_502339f3
	Checksum: 0x13D6D8D8
	Offset: 0x3C10
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_3187983c()
{
	self endon("death");
	while(1)
	{
		self waittill("trigger", e_who);
		if(isPlayer(e_who) && (isdefined(e_who.var_1b3b1022) && e_who.var_1b3b1022))
		{
			e_who thread function_c0861aa3(self);
		}
		else if(isai(e_who) && (isdefined(e_who.var_1b3b1022) && e_who.var_1b3b1022))
		{
			if(e_who ai::has_behavior_attribute("useAnimationOverride") && e_who ai::get_behavior_attribute("useAnimationOverride"))
			{
				e_who thread function_8a1a53f(self);
			}
		}
	}
}

/*
	Name: function_c0861aa3
	Namespace: namespace_502339f3
	Checksum: 0xEFBEAAC4
	Offset: 0x3D30
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_c0861aa3(e_trig)
{
	self endon("disconnect");
	e_trig endon("death");
	self.var_1b3b1022 = 0;
	self clientfield::set_to_player("toggle_rain_sprite", 0);
	util::wait_till_not_touching(e_trig, self);
	self.var_1b3b1022 = 1;
	if(!self IsPlayingAnimScripted())
	{
		if(level.skipto_point != "objective_port_assault" && level.skipto_point != "objective_blackstation_exterior")
		{
			self clientfield::set_to_player("toggle_rain_sprite", 1);
		}
	}
}

/*
	Name: function_8a1a53f
	Namespace: namespace_502339f3
	Checksum: 0x294A11ED
	Offset: 0x3E10
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_8a1a53f(e_trig)
{
	self endon("death");
	e_trig endon("death");
	self.var_1b3b1022 = 0;
	self ai::set_behavior_attribute("useAnimationOverride", 0);
	util::wait_till_not_touching(e_trig, self);
	self.var_1b3b1022 = 1;
	self ai::set_behavior_attribute("useAnimationOverride", 1);
}


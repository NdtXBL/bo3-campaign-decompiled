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
	Name: function_243693d4
	Namespace: namespace_502339f3
	Checksum: 0x4F659A39
	Offset: 0x1398
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_243693d4()
{
	namespace_82b91a51::function_3bf39ed7("coop");
	namespace_82b91a51::function_3bf39ed7("cpzm");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_502339f3
	Checksum: 0xA115DDC3
	Offset: 0x13D8
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	if(function_27c72c1b() && -1)
	{
		function_863d6bb0(34);
	}
	else
	{
		function_863d6bb0(19);
	}
	function_f7046c76();
	function_4ece4a2f();
	function_487d2c0();
	function_83c7ff16();
	function_6364bd7d();
	function_aca49f84();
	namespace_23567e72::function_4d39a2af();
	namespace_56310eec::function_d290ebfa();
	namespace_7a033503::function_d290ebfa();
	namespace_d754dd61::function_d290ebfa();
	namespace_8b9f718f::function_d290ebfa();
	namespace_ec2cabcf::function_e230521c();
	function_673254cc();
	namespace_82b91a51::function_286a5010(5);
	namespace_cc27597::function_6676939("cin_bla_03_warlordintro_3rd_sh010");
	namespace_cc27597::function_6676939("cin_bla_10_01_kaneintro_3rd_sh010");
	namespace_9f824288::function_8c0c4b3a("blackstation");
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_dabbe128::function_aa179d1b(&function_974050f);
	level.var_1895e0f9 = &namespace_79e1cd97::function_8f7c9f3c;
	namespace_d7916d65::function_d290ebfa();
	namespace_814e90c0::function_7403e82b();
	function_6c1294b8("ui_newHud", 1);
	level thread namespace_79e1cd97::function_33942907();
	level namespace_cc27597::function_8f9f34e0("cin_bla_03_warlordintro_3rd_sh170", &namespace_79e1cd97::function_746a2da4, "done", "objective_warlord");
	level namespace_cc27597::function_8f9f34e0("cin_bla_10_01_kaneintro_3rd_sh190", &namespace_79e1cd97::function_746a2da4, "done", "objective_comm_relay_traverse");
	level namespace_cc27597::function_8f9f34e0("cin_bla_07_02_stormsurge_1st_leap_landing", &namespace_79e1cd97::function_746a2da4, "done", "objective_subway");
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
	var_e260543c[0] = namespace_82b91a51::function_b9fd52a4("collision_clip_64x64x64", (-1674, 10107, 65), VectorScale((0, 1, 0), 350));
	var_e260543c[1] = namespace_82b91a51::function_b9fd52a4("collision_clip_64x64x64", (-1702, 9950, 65), VectorScale((0, 1, 0), 350));
	var_e260543c[2] = namespace_82b91a51::function_b9fd52a4("collision_clip_64x64x64", (-1728, 9806, 65), VectorScale((0, 1, 0), 350));
	foreach(var_935a64f in var_e260543c)
	{
		var_935a64f function_8c8e79fe();
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
	function_6ada35ba("com_rugged_glitch_1", "targetname") function_50ccee8d();
	function_6ada35ba("com_rugged_glitch_2", "targetname") function_50ccee8d();
	function_6ada35ba("com_rugged_off", "targetname") function_50ccee8d();
	function_6ada35ba("com_curve_glitch_1", "targetname") function_50ccee8d();
	function_6ada35ba("com_curve_glitch_2", "targetname") function_50ccee8d();
	function_6ada35ba("com_curve_off", "targetname") function_50ccee8d();
	function_6ada35ba("barge_monitor_glitch_1", "targetname") function_50ccee8d();
	function_6ada35ba("barge_monitor_glitch_2", "targetname") function_50ccee8d();
	function_6ada35ba("barge_monitor_off", "targetname") function_50ccee8d();
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
	var_7b45393e = function_99201f25("trigger_hurt", "classname");
	foreach(var_f92a03e7 in var_7b45393e)
	{
		if(var_f92a03e7.var_75dbd7 === "o2")
		{
			var_f92a03e7 namespace_82b91a51::function_20ffc8ff();
		}
	}
}

/*
	Name: function_f7046c76
	Namespace: namespace_502339f3
	Checksum: 0x248F3770
	Offset: 0x1B60
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
	level.var_c1aa5253["blood_headpop"] = "blood/fx_blood_ai_head_explosion";
	level.var_c1aa5253["lightning_strike"] = "weather/fx_lightning_strike_bolt_single_blackstation";
	level.var_c1aa5253["disabled_robot"] = "destruct/fx_dest_robot_head_sparks";
	level.var_c1aa5253["worklight"] = "light/fx_spot_low_factory_zmb";
	level.var_c1aa5253["worklight_rays"] = "light/fx_light_ray_work_light";
	level.var_c1aa5253["wave_pier"] = "water/fx_water_splash_xlg";
	level.var_c1aa5253["bubbles"] = "player/fx_plyr_swim_bubbles_body_blkstn";
}

/*
	Name: function_487d2c0
	Namespace: namespace_502339f3
	Checksum: 0x4F048411
	Offset: 0x1C30
	Size: 0xA43
	Parameters: 0
	Flags: None
*/
function function_487d2c0()
{
	level namespace_ad23e503::function_c35e6aab("obj_goto_docks");
	level namespace_ad23e503::function_c35e6aab("allow_wind_gust");
	level namespace_ad23e503::function_c35e6aab("end_gust_warning");
	level namespace_ad23e503::function_c35e6aab("kill_weather");
	level namespace_ad23e503::function_c35e6aab("kill_surge");
	level namespace_ad23e503::function_c35e6aab("end_surge");
	level namespace_ad23e503::function_c35e6aab("kill_wave");
	level namespace_ad23e503::function_c35e6aab("surging_inward");
	level namespace_ad23e503::function_c35e6aab("vtol_jump");
	level namespace_ad23e503::function_c35e6aab("executed_bodies");
	level namespace_ad23e503::function_c35e6aab("warlord_approach");
	level namespace_ad23e503::function_c35e6aab("hendricks_debris_traversal_ready");
	level namespace_ad23e503::function_c35e6aab("warlord_intro_prep");
	level namespace_ad23e503::function_c35e6aab("warlord_fight");
	level namespace_ad23e503::function_c35e6aab("warlord_backup");
	level namespace_ad23e503::function_c35e6aab("warlord_reinforce");
	level namespace_ad23e503::function_c35e6aab("warlord_retreat");
	level namespace_ad23e503::function_c35e6aab("warlord_fight_done");
	level namespace_ad23e503::function_c35e6aab("qzone_done");
	level namespace_ad23e503::function_c35e6aab("warning_vo_played");
	level namespace_ad23e503::function_c35e6aab("wind_gust");
	level namespace_ad23e503::function_c35e6aab("drone_strike");
	level namespace_ad23e503::function_c35e6aab("surge_active");
	level namespace_ad23e503::function_c35e6aab("end_surge_start");
	level namespace_ad23e503::function_c35e6aab("end_surge_rest");
	level namespace_ad23e503::function_c35e6aab("wind_done");
	level namespace_ad23e503::function_c35e6aab("surge_done");
	level namespace_ad23e503::function_c35e6aab("wave_done");
	level namespace_ad23e503::function_c35e6aab("cover_switch");
	level namespace_ad23e503::function_c35e6aab("enter_port");
	level namespace_ad23e503::function_c35e6aab("start_objective_barge_assault");
	level namespace_ad23e503::function_c35e6aab("hendricks_on_barge");
	level namespace_ad23e503::function_c35e6aab("slow_mo_finished");
	level namespace_ad23e503::function_c35e6aab("breached");
	level namespace_ad23e503::function_c35e6aab("barge_breach_cleared");
	level namespace_ad23e503::function_c35e6aab("tanker_smash");
	level namespace_ad23e503::function_c35e6aab("tanker_go");
	level namespace_ad23e503::function_c35e6aab("tanker_face");
	level namespace_ad23e503::function_c35e6aab("tanker_hit");
	level namespace_ad23e503::function_c35e6aab("tanker_ride");
	level namespace_ad23e503::function_c35e6aab("tanker_ride_done");
	level namespace_ad23e503::function_c35e6aab("flag_lobby_engaged");
	level namespace_ad23e503::function_c35e6aab("flag_kane_intro_complete");
	level namespace_ad23e503::function_c35e6aab("flag_enter_police_station");
	level namespace_ad23e503::function_c35e6aab("flag_lobby_ready_to_engage");
	level namespace_ad23e503::function_c35e6aab("flag_intro_dialog_ended");
	level namespace_ad23e503::function_c35e6aab("table_flip");
	level namespace_ad23e503::function_c35e6aab("walkway_collapse");
	level namespace_ad23e503::function_c35e6aab("hendricks_crossed");
	level namespace_ad23e503::function_c35e6aab("police_station_engaged");
	level namespace_ad23e503::function_c35e6aab("approach_ps_entrance");
	level namespace_ad23e503::function_c35e6aab("comm_relay_pulse");
	level namespace_ad23e503::function_c35e6aab("comm_relay_engaged");
	level namespace_ad23e503::function_c35e6aab("comm_relay_started_hack");
	level namespace_ad23e503::function_c35e6aab("comm_relay_hacked");
	level namespace_ad23e503::function_c35e6aab("relay_room_clear");
	level namespace_ad23e503::function_c35e6aab("igc_robot_down");
	level namespace_ad23e503::function_c35e6aab("blackstation_exterior_engaged");
	level namespace_ad23e503::function_c35e6aab("exterior_ready_weapons");
	level namespace_ad23e503::function_c35e6aab("ziplines_ready");
	level namespace_ad23e503::function_c35e6aab("kane_landed");
	level namespace_ad23e503::function_c35e6aab("zipline_player_landed");
	level namespace_ad23e503::function_c35e6aab("lightning_strike");
	level namespace_ad23e503::function_c35e6aab("lightning_strike_done");
	level namespace_ad23e503::function_c35e6aab("breach_active");
	level namespace_ad23e503::function_c35e6aab("hendricks_at_window");
	level namespace_ad23e503::function_c35e6aab("bridge_start_blocked");
	level namespace_ad23e503::function_c35e6aab("bridge_collapsed");
	level namespace_ad23e503::function_c35e6aab("cancel_slow_mo");
	level namespace_ad23e503::function_c35e6aab("atrium_rubble_dropped");
	level namespace_ad23e503::function_c35e6aab("path_is_open");
	level namespace_ad23e503::function_c35e6aab("awakening_begun");
	level namespace_ad23e503::function_c35e6aab("awakening_end");
	level namespace_ad23e503::function_c35e6aab("no_awakened_robots");
	level namespace_ad23e503::function_c35e6aab("truck_in_position");
	level namespace_ad23e503::function_c35e6aab("give_dni_weapon");
	level namespace_ad23e503::function_c35e6aab("trig_zipline02");
	level namespace_ad23e503::function_c35e6aab("trig_zipline01");
	level namespace_ad23e503::function_c35e6aab("warlord_dead");
	level namespace_ad23e503::function_c35e6aab("comm_relay_hendricks_ready");
	level namespace_ad23e503::function_c35e6aab("zipline_done");
	level namespace_ad23e503::function_c35e6aab("exterior_clear");
}

/*
	Name: function_83c7ff16
	Namespace: namespace_502339f3
	Checksum: 0x8410D0B3
	Offset: 0x2680
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_83c7ff16()
{
	function_6c1294b8("player_swimTime", 5000);
	function_6c1294b8("player_swimSpeed", 120);
	function_43f446e3("warlords");
	function_43f446e3("heroes");
	function_9e3608e3("frogger_building_fallen");
	namespace_84970cc4::function_eaab05dc(function_99201f25("frogger_building_fallen", "targetname"), &function_50ccee8d);
	level thread namespace_cc27597::function_8f9f34e0("cin_gen_ground_anchor_player", &namespace_79e1cd97::function_12398a8b, "done");
	level.var_4eef455c = [];
}

/*
	Name: function_aebcf025
	Namespace: namespace_502339f3
	Checksum: 0xAA9DF145
	Offset: 0x2790
	Size: 0x505
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
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
	if(!function_4bd0142f("art_review", 0))
	{
		if(level.var_31aefea8 == "objective_qzone")
		{
			self thread namespace_d754dd61::function_ec18f079();
		}
		else if(level.var_31aefea8 == "objective_warlord_igc")
		{
			self namespace_82b91a51::function_16c71b8(1);
		}
	}
	switch(level.var_31aefea8)
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
			self namespace_71e9cb84::function_e9c3870b("toggle_rain_sprite", 1);
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
			self namespace_71e9cb84::function_e9c3870b("toggle_rain_sprite", 2);
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
			self namespace_71e9cb84::function_e9c3870b("toggle_rain_sprite", 1);
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
function function_cc28a20d(var_fc9f79e7, var_db803bcf, var_4ac85f5f, var_df107013)
{
	if(!isdefined(var_df107013))
	{
		var_df107013 = 0;
	}
	level endon(var_4ac85f5f);
	self endon("hash_128f8789");
	self thread function_f891013e(var_4ac85f5f);
	while(1)
	{
		namespace_4dbf3ae3::function_1ab5ebec(var_db803bcf, "targetname", self);
		if(var_fc9f79e7 == "wind_effects")
		{
			self namespace_71e9cb84::function_e9c3870b("wind_effects", 1);
		}
		else
		{
			self namespace_71e9cb84::function_e9c3870b("wind_effects", 2);
		}
		var_cfabce58 = function_6ada35ba(var_db803bcf, "targetname");
		namespace_82b91a51::function_c8575f2a(var_cfabce58, self);
		self namespace_71e9cb84::function_e9c3870b("wind_effects", 0);
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
function function_f891013e(var_4ac85f5f)
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	self namespace_71e9cb84::function_e9c3870b("wind_blur", 0);
	self namespace_71e9cb84::function_e9c3870b("wind_effects", 0);
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
	var_91c59c31 = function_c4d5ec1f("micromissile_launcher");
	self function_860a040a(var_91c59c31);
}

/*
	Name: function_4ece4a2f
	Namespace: namespace_502339f3
	Checksum: 0x847AA8EF
	Offset: 0x2EC0
	Size: 0x573
	Parameters: 0
	Flags: None
*/
function function_4ece4a2f()
{
	namespace_71e9cb84::function_50f16166("actor", "kill_target_keyline", 1, 4, "int");
	namespace_71e9cb84::function_50f16166("allplayers", "zipline_sound_loop", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "water_disturbance", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "water_splash_lrg", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "player_rain", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "rumble_loop", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "sndWindSystem", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "zipline_rumble_loop", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_water_swept", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "toggle_ukko", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "toggle_rain_sprite", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "wind_blur", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "wind_effects", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "subway_water", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "play_bubbles", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "toggle_water_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "wave_hit", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "subway_entrance_crash", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "water_level", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("world", "roof_panels_init", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "roof_panels_play", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "subway_tiles", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "warlord_exposure", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "outro_exposure", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "sndDrillWalla", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "sndBlackStationSounds", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "flotsam", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "sndStationWalla", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "qzone_debris", 1, 1, "counter");
}

/*
	Name: function_673254cc
	Namespace: namespace_502339f3
	Checksum: 0x39CE45A3
	Offset: 0x3440
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("objective_igc", &namespace_d754dd61::function_6ec9ed4d, undefined, &namespace_d754dd61::function_25dc0657);
	namespace_1d795d47::function_69554b3e("objective_qzone", &namespace_d754dd61::function_a19cdfad, undefined, &namespace_d754dd61::function_58aef8b7);
	namespace_1d795d47::function_d68e678e("objective_warlord_igc", &namespace_d754dd61::function_b457621f, undefined, &namespace_d754dd61::function_487563c5);
	namespace_1d795d47::function_69554b3e("objective_warlord", &namespace_d754dd61::function_f1376b81, undefined, &namespace_d754dd61::function_68cbd90b);
	namespace_1d795d47::function_d68e678e("objective_anchor_intro", &namespace_8b9f718f::function_bd209495, undefined, &namespace_8b9f718f::function_88ddfb38);
	namespace_1d795d47::function_d68e678e("objective_port_assault", &namespace_8b9f718f::function_7a0b2bc4, undefined, &namespace_8b9f718f::function_93433fef);
	namespace_1d795d47::function_d68e678e("objective_barge_assault", &namespace_8b9f718f::function_43296c4c, undefined, &namespace_8b9f718f::function_c57c7177);
	namespace_1d795d47::function_d68e678e("objective_storm_surge", &namespace_8b9f718f::function_f93ea5f3, undefined, &namespace_8b9f718f::function_7cde31a6);
	namespace_1d795d47::function_d68e678e("objective_subway", &function_e4a0bb, undefined, &function_b501c2d1);
	namespace_1d795d47::function_d68e678e("objective_police_station", &namespace_933eb669::function_23a0cc93, undefined, &namespace_933eb669::function_88d892b9);
	namespace_1d795d47::function_d68e678e("objective_kane_intro", &namespace_933eb669::function_1629236a, undefined, &namespace_933eb669::function_5d496554);
	namespace_1d795d47::function_d68e678e("objective_comm_relay_traverse", &namespace_641b22d4::function_c9040e7d, undefined, &namespace_641b22d4::function_311be427);
	namespace_1d795d47::function_d68e678e("objective_comm_relay", &namespace_641b22d4::function_a2073f94, undefined, &namespace_641b22d4::function_7e7b796a);
	namespace_1d795d47::function_d68e678e("objective_cross_debris", &namespace_e785bfa0::function_e9acb08, undefined, &namespace_e785bfa0::function_508330ae);
	namespace_1d795d47::function_d68e678e("objective_blackstation_exterior", &namespace_4040b6c2::function_3450aa78, undefined, &namespace_4040b6c2::function_b5e9c2fe);
	namespace_1d795d47::function_d68e678e("objective_blackstation_interior", &namespace_4040b6c2::function_a870c9be, undefined, &namespace_4040b6c2::function_2846e098);
	namespace_1d795d47::function_d68e678e("objective_end_igc", &namespace_4040b6c2::function_2783ca83, undefined, &namespace_4040b6c2::function_392085c9);
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
function function_e4a0bb(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_subway");
		namespace_d0ef8521::function_31cd1834("cp_level_blackstation_intercept");
		namespace_d7916d65::function_a2995f22();
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_3dc5b645::function_99f304f0);
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
function function_b501c2d1(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_streetlight01_4on_s4_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_streetlight01_2on_s4_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_streetlight01_4on_flicker_s4_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_streetlight_01_s4_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_streetlight01_1on_s4_bundle");
}

/*
	Name: function_ed44e709
	Namespace: namespace_502339f3
	Checksum: 0xBC2376A5
	Offset: 0x39C0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_ed44e709(var_fe91f994, var_b562da7f)
{
	self function_1f3745c0(self.var_f5ffba49);
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
	self endon("hash_128f8789");
	switch(level.var_31aefea8)
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
	var_917cd731 = function_99201f25("trig_rain_indoor", "targetname");
	foreach(var_f7ebb04b in var_917cd731)
	{
		var_f7ebb04b thread function_3187983c();
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
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_65669d7b);
		if(function_65f192a6(var_65669d7b) && (isdefined(var_65669d7b.var_1b3b1022) && var_65669d7b.var_1b3b1022))
		{
			var_65669d7b thread function_c0861aa3(self);
		}
		else if(function_e70ab977(var_65669d7b) && (isdefined(var_65669d7b.var_1b3b1022) && var_65669d7b.var_1b3b1022))
		{
			if(var_65669d7b namespace_d84e54db::function_18775385("useAnimationOverride") && var_65669d7b namespace_d84e54db::function_a0a4c1f1("useAnimationOverride"))
			{
				var_65669d7b thread function_8a1a53f(self);
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
function function_c0861aa3(var_f7ebb04b)
{
	self endon("hash_643a7daf");
	var_f7ebb04b endon("hash_128f8789");
	self.var_1b3b1022 = 0;
	self namespace_71e9cb84::function_e9c3870b("toggle_rain_sprite", 0);
	namespace_82b91a51::function_c8575f2a(var_f7ebb04b, self);
	self.var_1b3b1022 = 1;
	if(!self function_67f028cc())
	{
		if(level.var_31aefea8 != "objective_port_assault" && level.var_31aefea8 != "objective_blackstation_exterior")
		{
			self namespace_71e9cb84::function_e9c3870b("toggle_rain_sprite", 1);
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
function function_8a1a53f(var_f7ebb04b)
{
	self endon("hash_128f8789");
	var_f7ebb04b endon("hash_128f8789");
	self.var_1b3b1022 = 0;
	self namespace_d84e54db::function_ceb883cd("useAnimationOverride", 0);
	namespace_82b91a51::function_c8575f2a(var_f7ebb04b, self);
	self.var_1b3b1022 = 1;
	self namespace_d84e54db::function_ceb883cd("useAnimationOverride", 1);
}


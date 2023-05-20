#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_supertrees;
#using scripts\cp\cp_mi_sing_biodomes_swamp;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cp_mi_sing_biodomes2_fx;
#using scripts\cp\cp_mi_sing_biodomes2_patch;
#using scripts\cp\cp_mi_sing_biodomes2_sound;
#using scripts\cp\gametypes\_save;
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

#namespace namespace_ad848cf8;

/*
	Name: function_243693d4
	Namespace: namespace_ad848cf8
	Checksum: 0xAE859658
	Offset: 0xC88
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
	Namespace: namespace_ad848cf8
	Checksum: 0xBA83FD96
	Offset: 0xCC8
	Size: 0x1D3
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
		function_863d6bb0(30);
	}
	namespace_9f824288::function_8c0c4b3a("biodomes");
	namespace_769dc23f::function_4d39a2af();
	function_f7046c76();
	function_b37230e4();
	function_487d2c0();
	function_83c7ff16();
	namespace_dfee119::function_d290ebfa();
	namespace_e0a1d00c::function_d290ebfa();
	namespace_1b0f1865::function_d290ebfa();
	namespace_a660d427::function_d290ebfa();
	function_673254cc();
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_2f06d687::function_ef554cf7("axis", &function_8b005d7f);
	namespace_d7916d65::function_d290ebfa();
	namespace_915215db::function_7403e82b();
	function_43f446e3("heroes");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_mainobj_capture_data_drives");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_mainobj_upload_data");
}

/*
	Name: function_f7046c76
	Namespace: namespace_ad848cf8
	Checksum: 0x8EA86820
	Offset: 0xEA8
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
	level.var_c1aa5253["explosion_zipline_up"] = "explosions/fx_exp_elvsft_biodome";
	level.var_c1aa5253["boat_sparks"] = "electric/fx_elec_sparks_boat_scrape_biodomes";
	level.var_c1aa5253["depth_charge"] = "explosions/fx_exp_underwater_depth_charge";
	level.var_c1aa5253["boat_trail"] = "vehicle/fx_spray_fan_boat";
	level.var_c1aa5253["boat_land_splash"] = "vehicle/fx_splash_front_fan_boat";
	level.var_c1aa5253["boat_grass"] = "vehicle/fx_grass_front_fan_boat";
}

/*
	Name: function_b37230e4
	Namespace: namespace_ad848cf8
	Checksum: 0x7C25EA29
	Offset: 0xF60
	Size: 0x453
	Parameters: 0
	Flags: None
*/
function function_b37230e4()
{
	namespace_71e9cb84::function_50f16166("toplayer", "dive_wind_rumble_loop", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "set_underwater_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "sound_evt_boat_rattle", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "zipline_speed_blur", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "zipline_rumble_loop", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "supertree_jump_debris_play", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "boat_explosion_play", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "elevator_top_debris_play", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "elevator_bottom_debris_play", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "tall_grass_init", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "tall_grass_play", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "supertree_fall_init", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "supertree_fall_play", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "ferriswheel_fall_play", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("allplayers", "zipline_sound_loop", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "boat_disable_sfx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "sound_evt_boat_scrape_impact", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("vehicle", "sound_veh_airboat_jump", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("vehicle", "sound_veh_airboat_jump_air", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("vehicle", "sound_veh_airboat_land", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("vehicle", "sound_veh_airboat_ramp_hit", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("vehicle", "sound_veh_airboat_start", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "clone_control", 1, 1, "int");
}

/*
	Name: function_487d2c0
	Namespace: namespace_ad848cf8
	Checksum: 0x8231A28C
	Offset: 0x13C0
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function function_487d2c0()
{
	level namespace_ad23e503::function_c35e6aab("start_slide");
	level namespace_ad23e503::function_c35e6aab("supertrees_intro_done");
	level namespace_ad23e503::function_c35e6aab("supertrees_intro_vo_complete");
	level namespace_ad23e503::function_c35e6aab("supertrees_hunter_arrival");
	level namespace_ad23e503::function_c35e6aab("hunter_missiles_go");
	level namespace_ad23e503::function_c35e6aab("hendricks_dive");
	level namespace_ad23e503::function_c35e6aab("player_dive_done");
	level namespace_ad23e503::function_c35e6aab("hendricks_boat_waiting");
	level namespace_ad23e503::function_c35e6aab("hendricks_onboard");
	level namespace_ad23e503::function_c35e6aab("boats_init");
	level namespace_ad23e503::function_c35e6aab("all_players_on_boats");
	level namespace_ad23e503::function_c35e6aab("boats_ready_to_depart");
	level namespace_ad23e503::function_c35e6aab("boat_rail_begin");
	level namespace_ad23e503::function_c35e6aab("boats_go");
	level namespace_ad23e503::function_c35e6aab("swamp_tanker_exploded");
	level namespace_ad23e503::function_c35e6aab("supertrees_tree1_started");
	level namespace_ad23e503::function_c35e6aab("hendricks_played_supertree_takedown");
	level namespace_ad23e503::function_c35e6aab("hendricks_reached_finaltree");
	level namespace_ad23e503::function_c35e6aab("player_reached_final_zipline");
	level namespace_ad23e503::function_c35e6aab("any_player_reached_bottom_finaltree");
	level namespace_ad23e503::function_c35e6aab("player_reached_bottom_finaltree");
	level namespace_ad23e503::function_c35e6aab("start_hendricks_dive");
	level namespace_ad23e503::function_c35e6aab("player_reached_top_finaltree");
	level namespace_ad23e503::function_c35e6aab("supertree_fall_played");
	level namespace_ad23e503::function_c35e6aab("dock_enemies_take_cover");
}

/*
	Name: function_83c7ff16
	Namespace: namespace_ad848cf8
	Checksum: 0x676A5264
	Offset: 0x16F0
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_83c7ff16()
{
	level.var_b06e31c0 = 1;
	var_4698236 = function_99201f25("start_hidden", "script_noteworthy");
	foreach(var_a3d46ee4 in var_4698236)
	{
		var_a3d46ee4 function_50ccee8d();
	}
}

/*
	Name: function_8b005d7f
	Namespace: namespace_ad848cf8
	Checksum: 0xBF1E60B7
	Offset: 0x17C0
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_8b005d7f()
{
	if(isdefined(self.var_b2ff4d87))
	{
		self.var_fd3ee5eb = self.var_b2ff4d87;
	}
	else
	{
		self.var_fd3ee5eb = "tree1";
	}
	self.var_23304c9e = 0;
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_ad848cf8
	Checksum: 0x461E80F9
	Offset: 0x1808
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self namespace_ad23e503::function_c35e6aab("player_on_boat");
	self.var_346ba704 = 0;
	self thread function_f1059e87();
	self.var_23304c9e = 0;
	if(level namespace_ad23e503::function_7922262b("supertree_fall_played"))
	{
		namespace_80983c42::function_80983c42("fx_expl_supertree_collapse");
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_ad848cf8
	Checksum: 0x2CA6B4F6
	Offset: 0x1898
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self endon("hash_128f8789");
	if(level.var_31aefea8 === "objective_descend")
	{
		self thread function_68f49e09();
	}
	if(level.var_31aefea8 === "objective_descend" || level.var_31aefea8 === "objective_supertrees")
	{
		self.var_fd3ee5eb = "tree1";
	}
	self thread namespace_a660d427::function_9850e9ee();
	if(level.var_31aefea8 == "objective_swamps")
	{
		self thread namespace_a660d427::function_39af75ef("boats_go");
	}
	if(level.var_31aefea8 == "objective_swamps" || level.var_31aefea8 == "dev_swamp_rail" || level.var_31aefea8 == "dev_swamp_rail_final_scene")
	{
		if(level.var_9b1393e7.size > 2 && !level namespace_ad23e503::function_7922262b("boats_go"))
		{
			namespace_a660d427::function_c98db861(0);
		}
		else if(level.var_9b1393e7.size > 2 && level namespace_ad23e503::function_7922262b("boats_go"))
		{
			namespace_a660d427::function_e5108e73(0);
		}
		if(level namespace_ad23e503::function_7922262b("boats_ready_to_depart"))
		{
			self.var_32218fc7 = 1;
			self thread namespace_a660d427::function_1bd42852();
		}
	}
	namespace_27a45d31::function_d28654c9();
}

/*
	Name: function_68f49e09
	Namespace: namespace_ad848cf8
	Checksum: 0x58CC1ED4
	Offset: 0x1A80
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_68f49e09()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("start_slide");
	var_10729d99 = namespace_14b42b8a::function_7922262b("descend_player" + self function_c7f3ce11(), "targetname");
	if(!isdefined(var_10729d99))
	{
		return;
	}
	var_79785795 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_10729d99.var_722885f3, var_10729d99.var_6ab6f4fd);
	var_79785795 thread namespace_cc27597::function_43718187("cin_bio_12_05_descend_1st_planc_player_slideloop", self);
	while(isdefined(var_10729d99.var_b07228b6))
	{
		var_96eed922 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
		var_ccd4343c = function_7d15e2f8(var_10729d99.var_722885f3, var_96eed922.var_722885f3);
		var_78962fff = var_ccd4343c / 16 * 17.6;
		var_79785795 function_a96a2721(var_96eed922.var_722885f3, var_78962fff);
		wait(var_78962fff - 0.05);
		var_10729d99 = var_96eed922;
	}
	var_8cd5b0c5 = var_79785795 function_1439c75a();
	self function_f5df04e6(var_8cd5b0c5);
	var_79785795 namespace_cc27597::function_fcf56ab5("cin_bio_12_05_descend_1st_planc_player_slideloop");
	var_79785795 function_dc8c8404();
}

/*
	Name: function_f1059e87
	Namespace: namespace_ad848cf8
	Checksum: 0x7E0979AB
	Offset: 0x1CB8
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_f1059e87()
{
	self endon("hash_643a7daf");
	self waittill("hash_55838fcd");
	self.var_346ba704 = 1;
}

/*
	Name: function_673254cc
	Namespace: namespace_ad848cf8
	Checksum: 0xB8850ECB
	Offset: 0x1CE8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_d68e678e("objective_descend", &namespace_1b0f1865::function_765faa8e, undefined, &namespace_1b0f1865::function_9aee8548);
	namespace_1d795d47::function_69554b3e("objective_supertrees", &namespace_1b0f1865::function_6ab1d04e, undefined, &namespace_1b0f1865::function_657c0308);
	namespace_1d795d47::function_d68e678e("objective_dive", &namespace_1b0f1865::function_e83c544, undefined, &namespace_1b0f1865::function_975cf43a);
	namespace_1d795d47::function_d68e678e("objective_swamps", &namespace_a660d427::function_46a6d6ab, undefined, &namespace_a660d427::function_b898dce1);
	/#
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &namespace_1b0f1865::function_86a08a81);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &namespace_1b0f1865::function_6e6908bc);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &namespace_a660d427::function_7220010f);
	#/
}


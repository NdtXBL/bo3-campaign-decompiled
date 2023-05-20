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
	Name: function_243693d4
	Namespace: namespace_55d2f1be
	Checksum: 0x6B3D8D3E
	Offset: 0x12F0
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
	Namespace: namespace_55d2f1be
	Checksum: 0x57CAED2F
	Offset: 0x1330
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	if(function_27c72c1b() && 0)
	{
		function_863d6bb0(34);
	}
	else
	{
		function_863d6bb0(106);
	}
	namespace_9f824288::function_8c0c4b3a("biodomes");
	namespace_82b91a51::function_286a5010(2);
	namespace_769dc23f::function_4d39a2af();
	function_f7046c76();
	function_b37230e4();
	function_487d2c0();
	function_83c7ff16();
	namespace_7042442b::function_d290ebfa();
	namespace_a46315e2::function_d290ebfa();
	namespace_73fc8448::function_d290ebfa();
	namespace_f5edec75::function_d290ebfa();
	namespace_6f13ba4a::function_d290ebfa();
	function_673254cc();
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_2f06d687::function_ef554cf7("axis", &function_8b005d7f);
	if(function_27c72c1b())
	{
		level namespace_cc27597::function_c35e6aab("server_room_access_start", "targetname");
	}
	namespace_d7916d65::function_d290ebfa();
	namespace_e82fdc69::function_7403e82b();
	namespace_1d795d47::function_f3e035ef();
}

/*
	Name: function_673254cc
	Namespace: namespace_55d2f1be
	Checksum: 0xE6D18CC7
	Offset: 0x1538
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("objective_igc", &function_b0343c6c, undefined, &function_25dc0657);
	namespace_1d795d47::function_d68e678e("objective_markets_start", &namespace_73fc8448::function_768ccc86, undefined, &namespace_73fc8448::function_1bc4d710);
	namespace_1d795d47::function_d68e678e("objective_markets_rpg", &namespace_73fc8448::function_df0ba879, undefined, &namespace_73fc8448::function_c80a0733);
	namespace_1d795d47::function_d68e678e("objective_markets2_start", &namespace_73fc8448::function_bf0a0e50, undefined, &namespace_73fc8448::function_4fd7cfe6);
	namespace_1d795d47::function_d68e678e("objective_warehouse", &namespace_23646cee::function_98f8d85b, undefined, &namespace_23646cee::function_4d15fa71);
	namespace_1d795d47::function_d68e678e("objective_cloudmountain", &namespace_f5edec75::function_34f37fe, undefined, &namespace_f5edec75::function_ace9f6d8);
	namespace_1d795d47::function_d68e678e("objective_cloudmountain_level_2", &namespace_f5edec75::function_8ce887a2, undefined, &namespace_f5edec75::function_2013f39c);
	namespace_1d795d47::function_d68e678e("objective_turret_hallway", &namespace_f5edec75::function_df51ef25, undefined, &namespace_f5edec75::function_9cfbecff);
	namespace_1d795d47::function_d68e678e("objective_xiulan_vignette", &namespace_f5edec75::function_e696b86c, undefined, &namespace_f5edec75::function_6be20b72);
	namespace_1d795d47::function_69554b3e("objective_server_room_defend", &namespace_f5edec75::function_8dacf956, undefined, &namespace_f5edec75::function_9ed4c7c0);
	namespace_1d795d47::function_d68e678e("objective_fighttothedome", &namespace_6f13ba4a::function_af17c267, undefined, &namespace_6f13ba4a::function_451af01d);
	/#
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_1a9d89e5);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &namespace_23646cee::function_5e699ca2);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &namespace_23646cee::function_9989cb45);
	#/
}

/*
	Name: function_f7046c76
	Namespace: namespace_55d2f1be
	Checksum: 0x7ED9C1D6
	Offset: 0x1830
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
	level.var_c1aa5253["ceiling_collapse"] = "destruct/fx_dest_ceiling_collapse_biodomes";
	level.var_c1aa5253["smoke_grenade"] = "explosions/fx_exp_grenade_smoke";
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
	namespace_71e9cb84::function_50f16166("toplayer", "player_dust_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_waterfall_pstfx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "bullet_disconnect_pstfx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "zipline_speed_blur", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "umbra_tome_markets2", 1000, 1, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "waiter_blood_shader", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "set_exposure_bank", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "party_house_shutter", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "party_house_destruction", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "dome_glass_break", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "warehouse_window_break", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "control_room_window_break", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "server_extra_cam", 1, 5, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "server_interact_cam", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("world", "cloud_mountain_crows", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "fighttothedome_exfil_rope", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "fighttothedome_exfil_rope_sim_player", 1, 1, "int");
}

/*
	Name: function_487d2c0
	Namespace: namespace_55d2f1be
	Checksum: 0x65026DF
	Offset: 0x1BB8
	Size: 0x643
	Parameters: 0
	Flags: None
*/
function function_487d2c0()
{
	level namespace_ad23e503::function_c35e6aab("partyroom_igc_started");
	level namespace_ad23e503::function_c35e6aab("plan_b");
	level namespace_ad23e503::function_c35e6aab("dannyli_dead");
	level namespace_ad23e503::function_c35e6aab("gohbro_dead");
	level namespace_ad23e503::function_c35e6aab("bullet_start");
	level namespace_ad23e503::function_c35e6aab("bullet_over");
	level namespace_ad23e503::function_c35e6aab("party_scene_skipped");
	level namespace_ad23e503::function_c35e6aab("markets1_enemies_alert");
	level namespace_ad23e503::function_c35e6aab("hendricks_markets2_wallrun");
	level namespace_ad23e503::function_c35e6aab("hendricks_markets2_arch_throw");
	level namespace_ad23e503::function_c35e6aab("markets1_intro_dialogue_done");
	level namespace_ad23e503::function_c35e6aab("turret1");
	level namespace_ad23e503::function_c35e6aab("turret2");
	level namespace_ad23e503::function_c35e6aab("turret1_dead");
	level namespace_ad23e503::function_c35e6aab("turret2_dead");
	level namespace_ad23e503::function_c35e6aab("markets2_tower_destroyed");
	level namespace_ad23e503::function_c35e6aab("container_done");
	level namespace_ad23e503::function_c35e6aab("warehouse_intro_vo_started");
	level namespace_ad23e503::function_c35e6aab("warehouse_intro_vo_done");
	level namespace_ad23e503::function_c35e6aab("warehouse_warlord_friendly_goal");
	level namespace_ad23e503::function_c35e6aab("back_door_closed");
	level namespace_ad23e503::function_c35e6aab("warehouse_warlord");
	level namespace_ad23e503::function_c35e6aab("warehouse_warlord_dead");
	level namespace_ad23e503::function_c35e6aab("warehouse_warlord_retreated");
	level namespace_ad23e503::function_c35e6aab("back_door_opened");
	level namespace_ad23e503::function_c35e6aab("siegebot_damage_enabled");
	level namespace_ad23e503::function_c35e6aab("siegebot_alerted");
	level namespace_ad23e503::function_c35e6aab("warehouse_wasps");
	level namespace_ad23e503::function_c35e6aab("turret_hall_clear");
	level namespace_ad23e503::function_c35e6aab("hand_cut");
	level namespace_ad23e503::function_c35e6aab("elevator_light_on_server_room");
	level namespace_ad23e503::function_c35e6aab("elevator_light_on_cloudmountain");
	level namespace_ad23e503::function_c35e6aab("cloudmountain_flanker_disable");
	level namespace_ad23e503::function_c35e6aab("cloudmountain_left_cleared");
	level namespace_ad23e503::function_c35e6aab("cloudmountain_right_cleared");
	level namespace_ad23e503::function_c35e6aab("cloudmountain_siegebots_dead");
	level namespace_ad23e503::function_c35e6aab("cloudmountain_siegebots_skipped");
	level namespace_ad23e503::function_c35e6aab("cloudmountain_second_floor_vo");
	level namespace_ad23e503::function_c35e6aab("level_2_enemy_catwalk_spawned");
	level namespace_ad23e503::function_c35e6aab("cloudmountain_hunter_spawned");
	level namespace_ad23e503::function_c35e6aab("end_level_2_sniper_vo");
	level namespace_ad23e503::function_c35e6aab("cloudmountain_level_3_catwalk_vo");
	level namespace_ad23e503::function_c35e6aab("end_level_3_sniper_vo");
	level namespace_ad23e503::function_c35e6aab("window_broken");
	level namespace_ad23e503::function_c35e6aab("window_hooks");
	level namespace_ad23e503::function_c35e6aab("window_gone");
	level namespace_ad23e503::function_c35e6aab("server_room_failing");
	level namespace_ad23e503::function_c35e6aab("top_floor_breached");
	level namespace_ad23e503::function_c35e6aab("hendricks_on_dome");
	level namespace_ad23e503::function_c35e6aab("server_control_room_door_open");
}

/*
	Name: function_83c7ff16
	Namespace: namespace_55d2f1be
	Checksum: 0x4030068
	Offset: 0x2208
	Size: 0x253
	Parameters: 0
	Flags: None
*/
function function_83c7ff16()
{
	function_43f446e3("warlords");
	function_43f446e3("heroes");
	level.var_b06e31c0 = 1;
	function_6ada35ba("back_door_look_trigger", "script_noteworthy") function_175e6b8e(0);
	var_4698236 = function_99201f25("start_hidden", "script_noteworthy");
	foreach(var_a3d46ee4 in var_4698236)
	{
		var_a3d46ee4 function_50ccee8d();
	}
	var_c7f1d195 = function_99201f25("partyroom_destroyed", "targetname");
	foreach(var_a9dea446 in var_c7f1d195)
	{
		var_a9dea446 function_50ccee8d();
	}
	function_9e3608e3("partyroom_destroyed");
	var_b50d1047 = function_99201f25("waterfall_triggers", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_b50d1047, &function_2ec137d9);
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
	Name: function_fb4f96b5
	Namespace: namespace_55d2f1be
	Checksum: 0x20743967
	Offset: 0x2490
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self.var_346ba704 = 0;
	self thread function_f1059e87();
	self namespace_ad23e503::function_c35e6aab("player_bullet_over");
}

/*
	Name: function_aebcf025
	Namespace: namespace_55d2f1be
	Checksum: 0x48DF4ED7
	Offset: 0x24E0
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	if(!function_4bd0142f("art_review", 0))
	{
		if(level.var_31aefea8 == "objective_igc" || level.var_31aefea8 == "dev_bullet_scene")
		{
			if(level namespace_ad23e503::function_7922262b("bullet_start"))
			{
				self namespace_ad23e503::function_74d6b22f("player_bullet_over");
			}
		}
		else if(level.var_31aefea8 == "objective_markets2_start")
		{
			level namespace_ad23e503::function_74d6b22f("turret1_dead");
			namespace_71e9cb84::function_688ed188("umbra_tome_markets2", 1);
		}
		else if(level.var_31aefea8 == "objective_warehouse" || level.var_31aefea8 == "objective_cloudmountain")
		{
			level namespace_ad23e503::function_74d6b22f("turret1_dead");
			level namespace_ad23e503::function_74d6b22f("turret2_dead");
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
	self endon("hash_643a7daf");
	self waittill("hash_55838fcd");
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
function function_cef897cf(var_b04bc952, var_23d9a41a)
{
	if(!isdefined(var_23d9a41a))
	{
		var_23d9a41a = 4;
	}
	var_85556b78 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_23d9a41a; var_c957f6b6++)
	{
		var_85556b78[var_c957f6b6] = namespace_2f06d687::function_7387a40a("friendly_robot_control", undefined, undefined, undefined, undefined, undefined, undefined, 1);
		var_85556b78[var_c957f6b6].var_3a90f16b = function_b6b79a0(var_85556b78[var_c957f6b6].var_3a90f16b * 0.75);
		var_85556b78[var_c957f6b6].var_dc2b3ec4 = var_85556b78[var_c957f6b6].var_3a90f16b;
	}
	namespace_1d795d47::function_3096a6fd(var_b04bc952, var_85556b78);
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
	self endon("hash_128f8789");
	while(1)
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		self.var_aef176e7 thread function_f952ddcc(self);
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
	self endon("hash_128f8789");
	var_b35e56d0 function_64218ffc(self);
	self namespace_71e9cb84::function_e9c3870b("player_waterfall_pstfx", 1);
	while(self function_32fa5072(var_b35e56d0))
	{
		var_ee7dbbc9 = function_72a94f05(0, 1);
		wait(var_ee7dbbc9);
	}
	var_b35e56d0 function_858ac43f(self);
	self namespace_71e9cb84::function_e9c3870b("player_waterfall_pstfx", 0);
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
	namespace_d7916d65::function_73adcefc();
	level thread namespace_cc27597::function_8f9f34e0("cin_bio_02_04_gunplay_vign_stab_both", &function_7b5ce9a8, "done");
	level thread namespace_cc27597::function_8f9f34e0("cin_bio_01_01_party_1st_drinks", &function_df65aec6, "play");
	level thread namespace_cc27597::function_8f9f34e0("cin_bio_01_01_party_1st_drinks", &function_b361ad8b, "skip_started");
	level thread namespace_cc27597::function_c35e6aab("cin_bio_03_01_market_vign_engage");
	level thread namespace_cc27597::function_c35e6aab("cin_bio_03_01_market_aie_weapons");
	level thread namespace_cc27597::function_c35e6aab("cin_gen_aie_table_react");
	if(var_f45807af)
	{
		var_ac204282 = namespace_14b42b8a::function_b7af54ae("scene", "cin_bio_02_04_gunplay_vign_stab_both");
		foreach(var_6fdc1aa in var_ac204282.var_485299d7)
		{
			if(var_6fdc1aa.var_fe311e35 === "player")
			{
				var_6fdc1aa.var_8e1e3819 = 0;
			}
		}
		level namespace_cc27597::function_c35e6aab("cin_bio_02_04_gunplay_vign_stab_both");
		var_d66ecef1 = namespace_14b42b8a::function_7922262b("skipto_intro_igc_table");
		namespace_82b91a51::function_b9fd52a4(var_d66ecef1.var_6df9264, var_d66ecef1.var_722885f3, var_d66ecef1.var_6ab6f4fd);
		namespace_d7916d65::function_c32ba481();
	}
	else
	{
		level namespace_cc27597::function_c35e6aab("cin_bio_01_01_party_1st_drinks");
		level namespace_cc27597::function_c35e6aab("cin_bio_01_01_party_1st_drinks_part2");
		namespace_82b91a51::function_b85473ac(1);
		namespace_d7916d65::function_c32ba481();
		namespace_82b91a51::function_46d3a558(&"CP_MI_SING_BIODOMES_INTRO_LINE_1_FULL", &"CP_MI_SING_BIODOMES_INTRO_LINE_1_SHORT", &"CP_MI_SING_BIODOMES_INTRO_LINE_2_FULL", &"CP_MI_SING_BIODOMES_INTRO_LINE_2_SHORT", &"CP_MI_SING_BIODOMES_INTRO_LINE_3_FULL", &"CP_MI_SING_BIODOMES_INTRO_LINE_3_SHORT", &"CP_MI_SING_BIODOMES_INTRO_LINE_4_FULL", &"CP_MI_SING_BIODOMES_INTRO_LINE_4_SHORT", "", "", 9);
	}
	level thread namespace_f1b4cbbc::function_f936f64e();
	function_484bc3aa(1);
	if(var_f45807af)
	{
		level thread namespace_cc27597::function_5c143f59("cin_bio_02_04_gunplay_vign_stab_both", undefined, undefined, 0.59, 1);
	}
	else if(isdefined(level.var_6253d0f1))
	{
		level thread [[level.var_6253d0f1]]();
	}
	level thread function_8013ff12();
	level thread function_9cebd80e();
	level namespace_cc27597::function_43718187("cin_bio_01_01_party_1st_drinks");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_255b9315 = 1;
	}
	if(isdefined(level.var_e27ad46e))
	{
		level thread [[level.var_e27ad46e]]();
	}
	level namespace_ad23e503::function_74d6b22f("bullet_start");
	level namespace_ad23e503::function_74d6b22f("bullet_over");
	var_c7f1d195 = function_99201f25("partyroom_destroyed", "targetname");
	foreach(var_a9dea446 in var_c7f1d195)
	{
		var_a9dea446 function_48f26766();
	}
	level namespace_71e9cb84::function_74d6b22f("party_house_destruction", 1);
	function_6ddd4fa4("partyroom_destroyed");
	if(!var_f45807af)
	{
		level thread function_1fbdb441();
	}
	namespace_80983c42::function_80983c42("party_igc_bullets");
	level thread function_e4f0cf99();
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 3);
	level namespace_82b91a51::function_ef3f75eb("no_party");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_1c75a89a(1);
		var_5dc5e20a function_f5ba63f2(1);
	}
	while(!namespace_cc27597::function_444aea32("cin_bio_02_04_gunplay_vign_stab_both"))
	{
		wait(0.05);
	}
	level notify("hash_7ee85209");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_73fc8448::function_8387168c();
	}
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
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
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level namespace_cc27597::function_c35e6aab("cin_bio_02_04_gunplay_vign_stab_both");
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
function function_b361ad8b(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("party_scene_skipped");
	level thread namespace_cc27597::function_8f9f34e0("cin_gen_aie_table_react", &namespace_73fc8448::function_c7cb9a93, "done");
	level thread namespace_cc27597::function_43718187("cin_gen_aie_table_react");
	level thread namespace_cc27597::function_43718187("cin_bio_03_01_market_vign_engage");
	level thread namespace_cc27597::function_43718187("cin_bio_03_01_market_aie_weapons");
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_biodomes_party_house_drinks_bundle");
	level thread namespace_cc27597::function_fcf56ab5("cin_bio_01_01_party_1st_drinks_part2");
	namespace_2f06d687::function_22356ba7("sp_markets1_friendly_robot_start");
	namespace_d5067552::function_bae40a28("sm_markets1_combat0");
	namespace_d5067552::function_bae40a28("sm_markets1_combat1");
	level.var_1675f12a = namespace_2f06d687::function_7387a40a("turret_markets1");
	level.var_1675f12a thread namespace_73fc8448::function_70da4f9b();
	level thread namespace_73fc8448::function_5d4c2323();
	level thread namespace_73fc8448::function_b1e84c2();
	namespace_4dbf3ae3::function_42e87952("trig_markets1_combat1");
	wait(2);
	level namespace_ad23e503::function_74d6b22f("markets1_enemies_alert");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 0);
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
	if(!namespace_cc27597::function_b1f75ee9())
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
	var_f6c5842 = namespace_2f06d687::function_7387a40a("markets1_robot_vign");
	var_f6c5842 namespace_36171bd3::function_eb13b9c0();
	if(isdefined(var_42c1bd32))
	{
		var_56af50be[var_42c1bd32] = var_f6c5842;
	}
	else if(!isdefined(var_56af50be))
	{
		var_56af50be = [];
	}
	else if(!function_6e2770d8(var_56af50be))
	{
		var_56af50be = function_84970cc4(var_56af50be);
	}
	var_56af50be[var_56af50be.size] = var_f6c5842;
	var_2eecd77a = namespace_2f06d687::function_7387a40a("markets1_enemy_vign");
	if(isdefined(var_ae7d184a))
	{
		var_56af50be[var_ae7d184a] = var_2eecd77a;
	}
	else if(!isdefined(var_56af50be))
	{
		var_56af50be = [];
	}
	else if(!function_6e2770d8(var_56af50be))
	{
		var_56af50be = function_84970cc4(var_56af50be);
	}
	var_56af50be[var_56af50be.size] = var_2eecd77a;
	var_6df191e = namespace_14b42b8a::function_7922262b(var_d83ebd04);
	var_6df191e namespace_cc27597::function_43718187(var_6df191e.var_1157a889, var_56af50be);
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
	level namespace_71e9cb84::function_74d6b22f("party_house_shutter", 1);
	namespace_82b91a51::function_b85473ac(0);
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
function function_484bc3aa(var_864a3d55)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("player_dust_fx", var_864a3d55);
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
function function_df65aec6(var_c77d2837)
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_party_house_drinks_bundle");
	level thread namespace_cc27597::function_43718187("cin_bio_01_01_party_1st_drinks_part2");
	var_ecc203c7 = var_c77d2837["server"];
	var_ecc203c7 waittill("hash_a07a4e59");
	var_ecc203c7 namespace_71e9cb84::function_74d6b22f("waiter_blood_shader", 1);
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
function function_7b5ce9a8(var_cc27597)
{
	namespace_80983c42::function_dfc351df("party_igc_bullets");
	function_484bc3aa(0);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_255b9315 = 0;
	}
	level namespace_82b91a51::function_93831e79("objective_markets_start");
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
function function_c506a743(var_b04bc952, var_23d9a41a)
{
	if(!isdefined(var_23d9a41a))
	{
		var_23d9a41a = 4;
	}
	var_41b5ccc5 = namespace_14b42b8a::function_7faf4c39("markets_combat_robot_squad_spawn");
	var_49ac7aba = [];
	var_64e85e6d = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		var_49ac7aba[var_c957f6b6] = function_6ada35ba("robot0" + var_c957f6b6 + 1, "animname");
	}
	if(var_23d9a41a > 4)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_23d9a41a; var_c957f6b6++)
		{
			var_64e85e6d[var_c957f6b6] = namespace_2f06d687::function_7387a40a("friendly_robot_control");
		}
	}
	var_667ca71 = function_525ae497(var_49ac7aba, var_64e85e6d, 0, 1);
	foreach(var_cd69a81f in var_667ca71)
	{
		var_cd69a81f.var_3a90f16b = function_b6b79a0(var_cd69a81f.var_3a90f16b * 0.75);
		var_cd69a81f.var_dc2b3ec4 = var_cd69a81f.var_3a90f16b;
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
	level namespace_ad23e503::function_1ab5ebec("turret1");
	if(function_5b49d38c(level.var_1675f12a))
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
	self waittill("hash_128f8789");
	if(isdefined(self))
	{
		if(function_7f41c8e7(level.var_38f7500, self))
		{
			function_81403b2f(level.var_38f7500, self);
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
function function_b0343c6c(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_igc");
	namespace_27a45d31::function_bff1a867(var_b04bc952);
	level thread namespace_27a45d31::function_753a859(var_b04bc952);
	level thread function_69468f09();
	level waittill("hash_dde01e26");
	level namespace_1d795d47::function_be8adfb8("objective_igc");
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
function function_25dc0657(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
	var_d7645744 = namespace_14b42b8a::function_7faf4c39("igc_extra_bullets");
	for(var_c957f6b6 = 1; var_c957f6b6 <= 5; var_c957f6b6++)
	{
		var_b324ff00 = function_6ada35ba("guard0" + var_c957f6b6, "animname", 1);
		if(function_5b49d38c(var_b324ff00))
		{
			var_a4c1ab1b = namespace_84970cc4::function_47d18840(var_d7645744).var_722885f3;
			level thread function_ca12a0a4(var_b324ff00, var_a4c1ab1b);
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
function function_ca12a0a4(var_b324ff00, var_a4c1ab1b)
{
	var_f78ad07e = function_c4d5ec1f("lmg_cqb");
	var_20d952c8 = var_b324ff00.var_722885f3 + VectorScale((0, 0, 1), 48);
	for(var_c957f6b6 = 0; var_c957f6b6 <= 3.5;  = 0)
	{
		var_de810370 = function_dc99997a(-2, 2);
		var_4837dd9 = function_dc99997a(-2, 2);
		var_2a85f842 = function_dc99997a(-20, 20);
		function_87f3c622(var_f78ad07e, var_a4c1ab1b, var_20d952c8 + (var_de810370, var_4837dd9, var_2a85f842));
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
function function_1a9d89e5(var_b04bc952, var_74cd64bc)
{
	level thread function_69468f09(1);
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets1"));
	namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb");
}


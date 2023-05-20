#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_accolades;
#using scripts\cp\cp_mi_cairo_aquifer_aitest;
#using scripts\cp\cp_mi_cairo_aquifer_ambience;
#using scripts\cp\cp_mi_cairo_aquifer_boss;
#using scripts\cp\cp_mi_cairo_aquifer_fx;
#using scripts\cp\cp_mi_cairo_aquifer_interior;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\cp_mi_cairo_aquifer_patch;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_19487f32;

/*
	Name: function_243693d4
	Namespace: namespace_19487f32
	Checksum: 0x66B87904
	Offset: 0xFC8
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
	Namespace: namespace_19487f32
	Checksum: 0x397BD361
	Offset: 0x1008
	Size: 0x303
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
		function_863d6bb0(116);
	}
	function_f7046c76();
	function_a1a20c49();
	function_37af8a07();
	function_4b0a421();
	namespace_82b91a51::function_286a5010(11);
	namespace_9f824288::function_8c0c4b3a("aquifer");
	namespace_d6728217::function_d290ebfa();
	namespace_1d1d22be::function_d290ebfa();
	namespace_1254c007::function_d290ebfa();
	namespace_4a128b5f::function_c35e6aab();
	thread namespace_4a128b5f::function_82230f12();
	namespace_dabbe128::function_faeb731e(&function_faeb731e);
	namespace_dabbe128::function_eb99da89(&function_8feafce2);
	namespace_dabbe128::function_95670def(&function_178d800);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_dabbe128::function_aa179d1b(&function_974050f);
	namespace_dabbe128::function_1b292fa6(&function_4c579175);
	level.var_1554f271 = &function_6d9a8286;
	level.var_552d30ae = &function_48694c4a;
	namespace_2f06d687::function_ef554cf7("axis", &function_f141f41c);
	namespace_b11c18b7::function_a471e46d("compass_map_cp_mi_cairo_aquifer");
	namespace_d7916d65::function_d290ebfa();
	namespace_b5b83650::function_4d39a2af();
	namespace_a52a2a1d::function_7403e82b();
	namespace_786319bb::function_23f52199();
	thread function_c2c4ea75();
	function_6c1294b8("compassmaxrange", "2100");
	function_43f446e3("players_vtol");
	function_43f446e3("players_ground");
	function_43f446e3("defend_hunters");
	namespace_d7916d65::function_73adcefc();
}

/*
	Name: function_37af8a07
	Namespace: namespace_19487f32
	Checksum: 0xB6A296CA
	Offset: 0x1318
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("sniper_boss_spawned");
	level namespace_ad23e503::function_c35e6aab("end_battle");
	level namespace_ad23e503::function_c35e6aab("init_run");
	level namespace_ad23e503::function_c35e6aab("boss_taunt1");
	level namespace_ad23e503::function_c35e6aab("boss_taunt2");
	level namespace_ad23e503::function_c35e6aab("inside_water_room");
	level namespace_ad23e503::function_c35e6aab("inside_data_center");
	level namespace_ad23e503::function_c35e6aab("dogfighting");
	level namespace_ad23e503::function_c35e6aab("flag_khalil_water_igc_done");
	level namespace_ad23e503::function_c35e6aab("start_interior_breadcrumbs");
	level namespace_ad23e503::function_c35e6aab("lcombat_respawn_ground");
	level namespace_ad23e503::function_c35e6aab("show_defenses_mid_objectives");
	level namespace_ad23e503::function_c35e6aab("overload_in_progress");
	level namespace_ad23e503::function_c35e6aab("player_really_landed");
	level namespace_ad23e503::function_c35e6aab("boss_convo");
	level namespace_ad23e503::function_c35e6aab("breach_vo_complete");
	level namespace_ad23e503::function_c35e6aab("flight_to_water_vo_cleared");
	level namespace_ad23e503::function_c35e6aab("water_corvus_vo_cleared");
	level namespace_ad23e503::function_c35e6aab("intro_dogfight_global_active");
	level namespace_ad23e503::function_c35e6aab("enter_dogfight_global_active");
	level namespace_ad23e503::function_c35e6aab("intro_chryon_done");
	level namespace_ad23e503::function_c35e6aab("intro_finished");
	level namespace_ad23e503::function_c35e6aab("intro_dialog_finished");
	level namespace_ad23e503::function_c35e6aab("play_intro");
	level namespace_ad23e503::function_c35e6aab("flying_main_scene_done");
	level namespace_ad23e503::function_c35e6aab("play_breach");
	level namespace_ad23e503::function_c35e6aab("sniper_boss_skipped");
}

/*
	Name: function_4b0a421
	Namespace: namespace_19487f32
	Checksum: 0xC075C1C6
	Offset: 0x1688
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_4b0a421()
{
	namespace_71e9cb84::function_50f16166("world", "water_room_exit_scenes", 1, 1, "int");
}

/*
	Name: function_a1a20c49
	Namespace: namespace_19487f32
	Checksum: 0x4930CBC8
	Offset: 0x16C8
	Size: 0x5A7
	Parameters: 0
	Flags: None
*/
function function_a1a20c49()
{
	namespace_1d795d47::function_69554b3e("level_long_fly_in", &namespace_84eb777e::function_419ee614, "Intro spawnvtol", &namespace_84eb777e::function_1e131fea);
	namespace_1d795d47::function_d68e678e("intro_dogfight", &namespace_84eb777e::function_9239cf5c, "Destroy Bogey spawnvtol", &namespace_84eb777e::function_b3635282);
	namespace_1d795d47::function_d68e678e("destroy_defenses", &namespace_84eb777e::function_e57c5192, "Destroy AA defenses spawnvtol", &namespace_84eb777e::function_676b4c2c);
	namespace_1d795d47::function_d68e678e("hack_terminal_left", &namespace_84eb777e::function_116a8e4e, "Hack Left Defend checkkayneexist", &namespace_84eb777e::function_c34c108);
	namespace_1d795d47::function_d68e678e("destroy_defenses_mid", &namespace_84eb777e::function_fb03103d, "Destroy Remaining AA spawnvtol", &namespace_84eb777e::function_46151925);
	namespace_1d795d47::function_d68e678e("hack_terminal_right", &namespace_84eb777e::function_386c647b, "Hack Right Defend checkkayneexist", &namespace_84eb777e::function_ec898691);
	namespace_1d795d47::function_69554b3e("water_room", &namespace_84eb777e::function_ac5573a8, "Searching checkenteredwater", &namespace_84eb777e::function_1802814e);
	namespace_1d795d47::function_d68e678e("water_room_exit", &namespace_84eb777e::function_e2e38eb, "Exit Water", &namespace_84eb777e::function_829aa821);
	namespace_1d795d47::function_d68e678e("post_water_room_dogfight", &namespace_84eb777e::function_5b113d76, "Destroy Bogey", &namespace_84eb777e::function_427463e0);
	namespace_1d795d47::function_d68e678e("destroy_defenses2", &namespace_84eb777e::function_2887cd74, "Support Egyptian Forces spawnvtol", &namespace_84eb777e::function_e5c63786);
	namespace_1d795d47::function_d68e678e("hack_terminals3", &namespace_84eb777e::function_724496b1, "L Combat checkplayerlanded", &namespace_84eb777e::function_113af563);
	namespace_1d795d47::function_d68e678e("breach_hangar", &namespace_84eb777e::function_af4fc2de, "Hangar Breach", &namespace_84eb777e::function_48728eb8);
	namespace_1d795d47::function_69554b3e("post_breach", &namespace_84eb777e::function_d22b2659, "Post Breach", &namespace_84eb777e::function_b8af1c13);
	namespace_1d795d47::function_d68e678e("sniper_boss_intro", &namespace_84eb777e::function_53d54ffb, "Hyperion Battle Intro", &namespace_84eb777e::function_7f27211);
	namespace_1d795d47::function_69554b3e("sniper_boss", &namespace_84eb777e::function_8a28a59e, "Hyperion Battle", &namespace_84eb777e::function_33c36478);
	namespace_1d795d47::function_d68e678e("hideout", &namespace_84eb777e::function_d6b95c0b, "Hyperion's hideout", &namespace_84eb777e::function_48ab6241);
	namespace_1d795d47::function_69554b3e("run_out", &namespace_84eb777e::function_95463da0, "Flee From Aquifer", &namespace_84eb777e::function_fb8ad8d6);
	namespace_1d795d47::function_69554b3e("exfil", &namespace_84eb777e::function_df17401b, "Exfil", &namespace_84eb777e::function_647ae831);
	/#
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &namespace_84eb777e::function_3230f09a, "Dev Block strings are not supported", &namespace_84eb777e::function_a02afda4);
	#/
	level.var_6b6097c5 = [];
	var_73044d06 = function_99201f25("objective", "targetname");
	foreach(var_5948b3df in var_73044d06)
	{
		if(isdefined(var_5948b3df.var_ff1f6868))
		{
			level.var_6b6097c5[var_5948b3df.var_ff1f6868] = var_5948b3df;
		}
	}
}

/*
	Name: function_e4ca7f5e
	Namespace: namespace_19487f32
	Checksum: 0xF9D51229
	Offset: 0x1C78
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function function_e4ca7f5e()
{
	namespace_1d795d47::function_955393e("level_long_fly_in", "INTRO", "Pacing", "Small");
	namespace_1d795d47::function_955393e("intro_dogfight", "DOGFIGHT", "Aerial Combat", "Large");
	namespace_1d795d47::function_955393e("destroy_defenses", "DESTROY AA DEFENSES", "Aerial Combat", "Large");
	namespace_1d795d47::function_955393e("hack_terminal_left", "HACK_LEFT", "Combat", "Medium");
	namespace_1d795d47::function_955393e("destroy_defenses_mid", "DESTROY REMAINING AA DEFENSES", "Combat", "Large");
	namespace_1d795d47::function_955393e("hack_terminal_right", "HACK_RIGHT", "Combat", "Medium");
	namespace_1d795d47::function_955393e("water_room", "CONFRONT HYPERION", "Pacing", "Small");
	namespace_1d795d47::function_955393e("water_room_exit", "WATER ROOM EXIT", "Pacing", "Small");
	namespace_1d795d47::function_955393e("post_water_room_dogfight", "DOGFIGHT", "Aerial Combat", "Large");
	namespace_1d795d47::function_955393e("destroy_defenses2", "SUPPORT EGYPTIANS", "Combat", "Medium");
	namespace_1d795d47::function_955393e("hack_terminals3", "ON HYPERION'S TRAIL", "Pacing", "Large");
	namespace_1d795d47::function_955393e("breach_hangar", "BREACH", "Moment", "Small");
	namespace_1d795d47::function_955393e("post_breach", "CHASE", "Combat", "Size");
	namespace_1d795d47::function_955393e("sniper_boss", "BOSS", "Battle", "Medium");
	namespace_1d795d47::function_955393e("hideout", "HIDEOUT", "Story", "Medium");
	namespace_1d795d47::function_955393e("exfil", "EXFIL", "Run", "High");
}

/*
	Name: function_f7046c76
	Namespace: namespace_19487f32
	Checksum: 0x8E1550A0
	Offset: 0x1F88
	Size: 0x47B
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
	level namespace_ad23e503::function_c35e6aab("boss_finale_ready");
	level namespace_ad23e503::function_c35e6aab("minions_clear");
	level namespace_ad23e503::function_c35e6aab("start_aquifer_objectives");
	level namespace_ad23e503::function_c35e6aab("breach_hangar_active");
	level namespace_ad23e503::function_c35e6aab("hold_for_debug_splash");
	level namespace_ad23e503::function_c35e6aab("on_hangar_exterior");
	level namespace_ad23e503::function_c35e6aab("player_active_in_level");
	level namespace_ad23e503::function_c35e6aab("water_room_checkpoint");
	level namespace_ad23e503::function_c35e6aab("can_spawn_hunters");
	level namespace_ad23e503::function_c35e6aab("hack_terminals2_vtol_flyin");
	level namespace_ad23e503::function_c35e6aab("lcombat_missile_launch");
	level namespace_ad23e503::function_c35e6aab("lcombat_flyby_shake");
	level namespace_ad23e503::function_c35e6aab("lcombat_crash_event");
	level namespace_ad23e503::function_c35e6aab("amb_flyby_jet_crash");
	level namespace_ad23e503::function_c35e6aab("lcombat_quad_missile_launch");
	level namespace_ad23e503::function_c35e6aab("lcombat_flyby_shake_2");
	level namespace_ad23e503::function_c35e6aab("trans_attack_start");
	level namespace_ad23e503::function_c35e6aab("siegebot_overrun_trig");
	level namespace_ad23e503::function_c35e6aab("lcombat_player_landed");
	level namespace_ad23e503::function_c35e6aab("disable_player_exit_vtol");
	level namespace_ad23e503::function_c35e6aab("disable_player_enter_vtol");
	level namespace_ad23e503::function_c35e6aab("background_chatter_active");
	level namespace_ad23e503::function_c35e6aab("enable_vtol_landing_zones");
	level namespace_ad23e503::function_c35e6aab("finished_first_landing_vo");
	level namespace_ad23e503::function_c35e6aab("flag_egyptian_hacking_completed");
	if(!level namespace_ad23e503::function_dbca4c5d("destroy_defenses3_completed"))
	{
		level namespace_ad23e503::function_c35e6aab("destroy_defenses3_completed");
		level namespace_ad23e503::function_c35e6aab("destroy_defenses3_started");
		level namespace_ad23e503::function_c35e6aab("destroy_defenses3");
		level namespace_ad23e503::function_c35e6aab("hack_terminals3_started");
		level namespace_ad23e503::function_c35e6aab("hack_terminals3");
		level namespace_ad23e503::function_c35e6aab("hack_terminals3_completed");
	}
	level.var_79481939 = 0;
	level.var_3fe6078c = 4096;
	level.var_f00df7e8 = 1;
	thread namespace_786319bb::function_a643bffd();
	thread namespace_786319bb::function_a97555a0("enemy_vtol_riders", "zone3_vtol_dropoff");
	thread namespace_72ee5da4::function_3a68afcc(&function_8f9628e0);
}

/*
	Name: function_c2c4ea75
	Namespace: namespace_19487f32
	Checksum: 0x302122FB
	Offset: 0x2410
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_c2c4ea75()
{
	while(1)
	{
		level waittill("hash_2693b45");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_6c7b39af();
		}
	}
}

/*
	Name: function_faeb731e
	Namespace: namespace_19487f32
	Checksum: 0xA7BC405C
	Offset: 0x24C0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_faeb731e()
{
	namespace_786319bb::function_11a9191();
}

/*
	Name: function_8f9628e0
	Namespace: namespace_19487f32
	Checksum: 0x3AF90646
	Offset: 0x24E0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_8f9628e0()
{
	if(isdefined(self.var_a6216360) && self.var_a6216360 == "rocketpod")
	{
		self.var_c2fc9418 = 0;
		self namespace_72ee5da4::function_d4ad8dc0("combat").var_20a503bb = &namespace_786319bb::function_11b961b7;
	}
}

/*
	Name: function_8feafce2
	Namespace: namespace_19487f32
	Checksum: 0x2DF0040B
	Offset: 0x2548
	Size: 0x3D3
	Parameters: 0
	Flags: None
*/
function function_8feafce2()
{
	self endon("hash_643a7daf");
	self.var_1e9fba3 = self function_c7f3ce11() + 1;
	level namespace_ad23e503::function_1ab5ebec("start_coop_logic");
	self namespace_957e94ce::function_1ab5ebec("loadout_given");
	thread namespace_786319bb::function_c2768198();
	if(level namespace_ad23e503::function_dbca4c5d("level_long_fly_in") && level namespace_ad23e503::function_7922262b("level_long_fly_in") || (level namespace_ad23e503::function_dbca4c5d("intro_dogfight") && level namespace_ad23e503::function_7922262b("intro_dogfight")) && !level namespace_ad23e503::function_7922262b("intro_dogfight_completed"))
	{
		var_5d686f5c = 1;
		if(level namespace_ad23e503::function_dbca4c5d("intro_dogfight") && level namespace_ad23e503::function_7922262b("intro_dogfight"))
		{
			var_5d686f5c = 0;
		}
		self thread namespace_84eb777e::function_ef5a929e(var_5d686f5c);
	}
	else if(level namespace_ad23e503::function_dbca4c5d("post_water_room_dogfight") && level namespace_ad23e503::function_7922262b("post_water_room_dogfight") && !level namespace_ad23e503::function_7922262b("post_water_room_dogfight_completed"))
	{
		self thread namespace_84eb777e::function_1b47ae1f(1);
	}
	else if(level namespace_ad23e503::function_dbca4c5d("water_room_exit") && level namespace_ad23e503::function_7922262b("water_room_exit") && !level namespace_ad23e503::function_7922262b("water_room_exit_completed"))
	{
	}
	else
	{
	}
	if(level namespace_ad23e503::function_dbca4c5d("hack_terminals3") && !level namespace_ad23e503::function_7922262b("hack_terminals3_completed"))
	{
		if(level namespace_ad23e503::function_dbca4c5d("hack_terminal_right") && !level namespace_ad23e503::function_7922262b("hack_terminal_right_completed"))
		{
			self thread namespace_786319bb::function_3d7bb92e(1);
		}
		else if(level namespace_ad23e503::function_dbca4c5d("water_room") && !level namespace_ad23e503::function_7922262b("water_room_completed"))
		{
			self thread namespace_786319bb::function_a0567298(1);
		}
		else
		{
			self thread namespace_786319bb::function_91acd8c6(1);
		}
	}
}

/*
	Name: function_47c53384
	Namespace: namespace_19487f32
	Checksum: 0x3FFCD030
	Offset: 0x2928
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_47c53384()
{
	self namespace_71e9cb84::function_e9c3870b("player_dust_fx", 0);
	self namespace_71e9cb84::function_e9c3870b("player_snow_fx", 0);
	self namespace_71e9cb84::function_e9c3870b("water_motes", 0);
}

/*
	Name: function_178d800
	Namespace: namespace_19487f32
	Checksum: 0x3BD3A9F2
	Offset: 0x2998
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_178d800()
{
	if(isdefined(self.var_8fedf36c))
	{
		self.var_8fedf36c function_dc8c8404();
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_19487f32
	Checksum: 0xBF1DE6BD
	Offset: 0x29D0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self function_6c7b39af();
	if(self namespace_786319bb::function_c43fe5d3())
	{
		if(isdefined(level.var_4063f562) && (level.var_4063f562 == "scripted" || level.var_4063f562 == "piloted"))
		{
			self namespace_786319bb::function_22a0413d(level.var_4063f562);
		}
		else
		{
			self namespace_786319bb::function_22a0413d();
		}
	}
	self.var_b9a81bed = self function_2f6b6a4c("HackUploadHUD");
	self thread namespace_786319bb::function_913d882();
	self thread namespace_786319bb::function_a05f9e55();
	self thread namespace_786319bb::function_3de8b7b4();
}

/*
	Name: function_974050f
	Namespace: namespace_19487f32
	Checksum: 0x1A72048C
	Offset: 0x2AF0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_974050f()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_5bf5e8eb = "none";
	level namespace_ad23e503::function_74d6b22f("player_active_in_level");
	self notify("hash_a4d83d61");
	if(level.var_9b1393e7.size == level.var_2395e945.size)
	{
		level namespace_957e94ce::function_74d6b22f("all_players_active");
	}
}

/*
	Name: function_4c579175
	Namespace: namespace_19487f32
	Checksum: 0xCCE9D08B
	Offset: 0x2B88
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_4c579175()
{
	function_47c53384();
	self function_2fe6d6e1();
}

/*
	Name: function_48694c4a
	Namespace: namespace_19487f32
	Checksum: 0x99EC1590
	Offset: 0x2BC0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_48694c4a()
{
}

/*
	Name: function_f141f41c
	Namespace: namespace_19487f32
	Checksum: 0x49F5B632
	Offset: 0x2BD0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_f141f41c()
{
	if(isdefined(self.var_fe965cc2))
	{
		self.var_fe965cc2 = "";
	}
}

/*
	Name: function_6d9a8286
	Namespace: namespace_19487f32
	Checksum: 0x6ABF9F10
	Offset: 0x2BF8
	Size: 0x14B
	Parameters: 11
	Flags: None
*/
function function_6d9a8286(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_faf17161)
{
	if(isdefined(self.var_cb4b9447) && self.var_cb4b9447 > GetTime())
	{
		return;
	}
	if(var_dfcc01fd.var_4be20d44 == "vtol_fighter_player_missile_turret" || var_dfcc01fd.var_4be20d44 == "vtol_fighter_player_turret")
	{
		var_64dd447f = "frag_grenade_mp";
		var_76126537 = 2;
		if(var_f9a179ed > 200)
		{
			var_64dd447f = "proximity_grenade";
			var_76126537 = 3;
		}
		self.var_cb4b9447 = GetTime() + var_76126537 * 499;
		self function_f1aa5a21(var_64dd447f, var_76126537);
		self function_e2af603e("damage_heavy");
	}
}


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
	level namespace_ad23e503::function_c35e6aab("sarah_wall_running");
	level.var_c1aa5253["fx_apc_fire"] = "fire/fx_fire_apc_bridge_prologue";
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
	level.var_f58c9f31 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_f58c9f31 namespace_d84e54db::function_c9e45d52(1);
	level.var_f58c9f31.var_7dfaf62 = 16;
	level.var_f58c9f31.var_daf3a648 = 0;
	level.var_f58c9f31 namespace_6f7b2095::function_1b497663("c");
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(0);
	level.var_9db406db namespace_d84e54db::function_c9e45d52(0);
	level.var_9db406db.var_7dfaf62 = 16;
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_4d5a4697 namespace_d84e54db::function_c9e45d52(1);
	level.var_4d5a4697.var_7dfaf62 = 16;
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	level.var_2fd26037.var_7dfaf62 = 16;
	level.var_2fd26037.var_daf3a648 = 0;
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
	level namespace_cc27597::function_8f9f34e0("cin_pro_11_01_jeepalley_vign_engage_fireloop", &function_cf946de6, "play");
	level thread namespace_cc27597::function_43718187("cin_pro_11_01_jeepalley_vign_engage_fireloop");
	level thread function_9855f3c9();
	level.var_2fd26037 thread function_75853acc();
	level thread namespace_21b2c1f2::function_37906040();
	level.var_9db406db namespace_76d95162::function_d9f49fba(1);
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(1);
	level.var_f58c9f31 function_cea50a94(1);
	level thread function_1e1e465e();
	if(isdefined(level.var_8a46d9a0))
	{
		level thread [[level.var_8a46d9a0]]();
	}
	level namespace_cc27597::function_8f9f34e0("cin_pro_11_01_jeepalley_vign_engage_start", &function_fcc9ed10, "play");
	level namespace_cc27597::function_43718187("cin_pro_11_01_jeepalley_vign_engage_start");
	level namespace_ad23e503::function_1ab5ebec("trig_player_exits_vtol");
	level thread function_b830a432();
	level namespace_ad23e503::function_74d6b22f("sarah_wall_running");
	level namespace_ad23e503::function_c35e6aab("theia_shoot_plane");
	level namespace_ad23e503::function_c35e6aab("plane_explodes");
	level namespace_cc27597::function_8f9f34e0("cin_pro_11_01_jeepalley_vign_engage_attack", &function_54cdd83a, "play");
	level namespace_cc27597::function_8f9f34e0("cin_pro_11_01_jeepalley_vign_engage_attack", &function_7af067f4, "done");
	level thread namespace_cc27597::function_43718187("cin_pro_11_01_jeepalley_vign_engage_attack");
	level thread function_87513084();
	level thread function_87f18673();
	level namespace_ad23e503::function_1ab5ebec("player_moves_up_alley");
	namespace_d0ef8521::function_50ccee8d("cp_level_prologue_get_to_the_surface");
	namespace_1d795d47::function_be8adfb8("skipto_jeep_alley");
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
function function_54cdd83a(var_c77d2837)
{
	level waittill("hash_25af2e77");
	level namespace_ad23e503::function_74d6b22f("theia_shoot_plane");
	level waittill("hash_878a6dae");
	level namespace_ad23e503::function_74d6b22f("plane_explodes");
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
function function_fcc9ed10(var_c77d2837)
{
	var_c77d2837["sarah_victim"].var_69dd5d62 = 0;
	var_c77d2837["sarah_victim"] namespace_175490fb::function_59965309("cybercom_fireflyswarm");
	var_58576bff = function_6ada35ba("hall_door_slide_left", "targetname");
	var_58576bff function_de8377bf();
	wait(0.05);
	var_bbc00d9a = function_6ada35ba("hall_door_slide_right", "targetname");
	var_bbc00d9a function_de8377bf();
	var_cab7ecc2 = function_298b8148(var_58576bff.var_6ab6f4fd);
	var_58576bff function_a96a2721(var_58576bff.var_722885f3 - var_cab7ecc2 * 48, 0.5);
	var_bbc00d9a function_a96a2721(var_bbc00d9a.var_722885f3 + var_cab7ecc2 * 48, 0.5);
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
		var_7ed6188 = function_6ada35ba("t_all_players_in_vtol_collapse_hangar", "targetname");
		while(level.var_2fd26037 function_32fa5072(var_7ed6188) || level.var_9db406db function_32fa5072(var_7ed6188) || level.var_4d5a4697 function_32fa5072(var_7ed6188))
		{
			wait(0.1);
		}
		level namespace_ad23e503::function_1ab5ebec("no_players_in_vtol_collapse_hangar");
		var_ac769486 = function_6ada35ba("clip_player_hall_doors", "targetname");
		var_ac769486 function_8bdea13c(100 * -1, 0.05);
		var_58576bff = function_6ada35ba("hall_door_slide_left", "targetname");
		var_bbc00d9a = function_6ada35ba("hall_door_slide_right", "targetname");
		var_cab7ecc2 = function_298b8148(var_58576bff.var_6ab6f4fd);
		var_58576bff function_a96a2721(var_58576bff.var_722885f3 + var_cab7ecc2 * 48, 0.5);
		var_bbc00d9a function_a96a2721(var_bbc00d9a.var_722885f3 - var_cab7ecc2 * 48, 0.5);
		wait(0.05);
		var_ac769486 function_14c24d9d(0, 0);
		if(isdefined(level.var_7f246cd7))
		{
			level.var_7f246cd7 function_dc8c8404();
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
function function_cf946de6(var_c77d2837)
{
	level endon("hash_86483bce");
	var_edd777e6 = var_c77d2837["jeep_alley"];
	var_edd777e6 function_db20c8d6("tag_weapon", "veh_t7_lmg_brm_world", 1);
	level namespace_ad23e503::function_1ab5ebec("trig_player_exits_vtol");
	var_786c2b27 = var_c77d2837["machinegun"];
	var_6c3c4545 = function_c4d5ec1f("turret_bo3_civ_truck_pickup_tech_nrc");
	while(1)
	{
		var_786c2b27 waittill("hash_c7569801");
		var_a1f5a583 = var_786c2b27 function_d48f2ab3("tag_flash");
		var_992af830 = var_a1f5a583 + function_bc7ce905(var_786c2b27 function_cd1d99bd("tag_flash")) * 120;
		function_87f3c622(var_6c3c4545, var_a1f5a583, var_992af830, var_786c2b27);
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
function function_7af067f4(var_c77d2837)
{
	level notify("hash_86483bce");
	var_c77d2837["theia"] thread function_467bdccf();
	var_c77d2837["theia"] function_cea50a94(0);
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
	level namespace_ad23e503::function_1ab5ebec("sarah_wall_running");
	self namespace_6f7b2095::function_54bdb053();
	self function_169cc712(function_b4cb3503("hendricks_kill_jeep_alley", "targetname"), 1);
	self.var_5ed2f6d3 = 1;
	self namespace_d84e54db::function_ceb883cd("useGrenades", 0);
	level waittill("hash_ec12613");
	var_af97b78b = namespace_2f06d687::function_289e6fd1("jeep_alley_enemy");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_af97b78b.size; var_c957f6b6++)
	{
		if(function_5b49d38c(var_af97b78b[var_c957f6b6]))
		{
			self namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_af97b78b[var_c957f6b6], "j_head");
		}
	}
	self.var_5ed2f6d3 = 0;
	self namespace_6f7b2095::function_bae40a28();
	self namespace_d84e54db::function_ceb883cd("useGrenades", 1);
	namespace_4dbf3ae3::function_42e87952("jeep_alley_allies_move", "targetname");
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
	namespace_2f06d687::function_2b37a3c9("plane_burn_victims", "targetname", &namespace_d84e54db::function_c9e45d52, 1);
	var_5aed614f = namespace_2f06d687::function_22356ba7("plane_burn_victims");
	level namespace_ad23e503::function_1ab5ebec("theia_shoot_plane");
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(0);
	level namespace_ad23e503::function_1ab5ebec("plane_explodes");
	level namespace_82b91a51::function_ef3f75eb("sndStartFakeBattle");
	foreach(var_3c9a4ab3 in var_5aed614f)
	{
		if(function_5b49d38c(var_3c9a4ab3))
		{
			var_3c9a4ab3 thread function_d9205aac();
		}
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_plane_hanger_explode_bundle");
	while(!namespace_cc27597::function_92591589("p7_fxanim_cp_prologue_plane_hanger_explode_bundle"))
	{
		wait(0.05);
	}
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_prologue_plane_hanger_pristine_bundle", 1);
	var_aab7a6d1 = function_6ada35ba("plane_hanger_explode", "targetname");
	var_aab7a6d1 function_e48f905e("veh_t7_mil_jet_cargo_dest");
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 function_e2af603e("tank_damage_heavy_mp");
		function_9cf04c2e(1, 1.5, var_6bfe1586.var_722885f3, 128);
	}
	level.var_35c12e63 = namespace_14b42b8a::function_7922262b("bridge_obj", "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", level.var_35c12e63);
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
	var_899774be = function_dc99997a(1, 9);
	var_636cd52c = "cin_gen_vign_plane_burning_0" + var_899774be;
	self thread namespace_cc27597::function_43718187(var_636cd52c, self);
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
	self function_169cc712(self.var_722885f3, 1);
	var_e71bd5d8 = namespace_14b42b8a::function_7922262b("theia_bridge_target", "targetname");
	var_a03ca40a = function_9b7fda5e("script_model", var_e71bd5d8.var_722885f3);
	var_a03ca40a function_e48f905e("tag_origin");
	var_a03ca40a.var_3a90f16b = 100000;
	self thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_a03ca40a);
	level namespace_ad23e503::function_1ab5ebec("player_left_alley");
	var_a03ca40a function_2992720d();
	self namespace_d84e54db::function_b4f5e3b9(0);
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
	namespace_2f06d687::function_c6ffd13e("jeep_alley_enemy", &function_46e24498);
	namespace_2f06d687::function_22356ba7("sp_initial_jeep_enemies");
	level namespace_ad23e503::function_1ab5ebec("trig_player_exits_vtol");
	namespace_2f06d687::function_22356ba7("sp_jeep_alley_cqb");
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
	self endon("hash_128f8789");
	self.var_d937392f = 0;
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_d84e54db::function_ceb883cd("disablesprint", 1);
	level namespace_ad23e503::function_1ab5ebec("sarah_wall_running");
	wait(function_72a94f05(0.25, 2));
	self.var_3a90f16b = 30;
	self namespace_d84e54db::function_d104c596("shoot_until_target_dead", level.var_f58c9f31);
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
	level.var_f58c9f31 thread namespace_71b8dba1::function_81141386("hall_get_to_the_bridge_i_0");
	level waittill("hash_8cc62724");
	level.var_f58c9f31 namespace_71b8dba1::function_81141386("hall_exfil_ahead_push_fo_0");
	if(!level namespace_ad23e503::function_7922262b("player_left_alley"))
	{
		level namespace_71b8dba1::function_a463d127("tayr_better_hustle_picku_0", 0.5);
	}
	if(!level namespace_ad23e503::function_7922262b("player_left_alley"))
	{
		if(!isdefined(level.var_5d4087a6))
		{
			level.var_5d4087a6 = namespace_82b91a51::function_740f8516("hyperion");
		}
		level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_on_me_on_me_0", 0.2);
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
	level.var_f58c9f31 namespace_71b8dba1::function_81141386("hall_that_technical_s_min_0");
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
	level namespace_ad23e503::function_c35e6aab("play_bridge_nag");
	level namespace_ad23e503::function_c35e6aab("bridge_intro_chatter_done");
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
	level.var_5d4087a6 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_5d4087a6 namespace_d84e54db::function_c9e45d52(1);
	level.var_5d4087a6.var_7dfaf62 = 16;
	level.var_5d4087a6.var_daf3a648 = 0;
	level.var_5d4087a6 namespace_6f7b2095::function_1b497663("p");
	level.var_f58c9f31 namespace_d84e54db::function_c9e45d52(1);
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(1);
	level.var_9db406db namespace_d84e54db::function_c9e45d52(1);
	level.var_9db406db.var_7dfaf62 = 16;
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_4d5a4697 namespace_d84e54db::function_c9e45d52(1);
	level.var_4d5a4697 namespace_d84e54db::function_ceb883cd("coverIdleOnly", 1);
	level.var_4d5a4697.var_7dfaf62 = 16;
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	level.var_2fd26037.var_7dfaf62 = 16;
	level.var_2fd26037.var_daf3a648 = 0;
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
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_cross_bridge");
	namespace_dabbe128::function_5cf145c9(&namespace_61c634f2::function_3d89871d);
	level thread function_401aadf2();
	level thread function_cd931b6e();
	level thread function_86b76a0b();
	level thread function_462ad50a();
	level.var_5d4087a6 thread function_373c3957();
	namespace_80983c42::function_80983c42("light_exploder_bridge");
	level thread function_19d07c7a();
	function_45506c4a();
	wait(2);
	level thread function_3178e821();
	namespace_d0ef8521::function_50ccee8d("cp_level_prologue_cross_bridge");
	namespace_9f824288::function_5d2cdd99();
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_escort_data_center");
	level thread function_86ce62c8();
	namespace_dabbe128::function_9fcef20a(&namespace_61c634f2::function_3d89871d);
	function_d092ac71();
	namespace_1d795d47::function_be8adfb8("skipto_bridge_battle");
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
	namespace_2f06d687::function_2b37a3c9("bridge_wave_1", "script_noteworthy", &function_39c16a4a);
	namespace_2f06d687::function_2b37a3c9("sp_bridge_initial", "targetname", &function_39c16a4a);
	namespace_2f06d687::function_2b37a3c9("sp_bridge_secondary", "targetname", &function_39c16a4a);
	namespace_2f06d687::function_2b37a3c9("bridge_enemies", "script_noteworthy", &namespace_2cb3876f::function_c47ce0e9);
	namespace_2f06d687::function_22356ba7("sp_bridge_initial");
	level namespace_ad23e503::function_1ab5ebec("player_left_alley");
	namespace_2f06d687::function_22356ba7("sp_bridge_front");
	namespace_d5067552::function_bae40a28("CQB_spawner_right");
	namespace_d5067552::function_bae40a28("CQB_spawner_left");
	level thread function_57ae876e();
	level thread function_58b194a5();
	level thread function_2fdac05f();
	level thread function_d32d88c();
	wait(10);
	namespace_2f06d687::function_22356ba7("sp_bridge_secondary");
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
	self endon("hash_128f8789");
	if(!isdefined(self.var_b07228b6))
	{
		var_257bbc01 = function_6ada35ba("trig_bridge_goal_vol_1", "targetname");
		self function_169cc712(var_257bbc01);
	}
	level namespace_ad23e503::function_1ab5ebec("bridge_enemies_fallback_1");
	var_257bbc01 = function_6ada35ba("trig_bridge_goal_vol_2", "targetname");
	self function_169cc712(var_257bbc01);
	level namespace_ad23e503::function_1ab5ebec("bridge_enemies_fallback_2");
	var_257bbc01 = function_6ada35ba("trig_bridge_goal_vol_3", "targetname");
	self function_169cc712(var_257bbc01);
	level namespace_ad23e503::function_1ab5ebec("bridge_enemies_fallback_3");
	var_257bbc01 = function_6ada35ba("trig_bridge_goal_vol_4", "targetname");
	self function_169cc712(var_257bbc01);
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
	level namespace_ad23e503::function_1ab5ebec("bring_in_jeeps");
	namespace_2f06d687::function_45679edd("aig_bridge_defenders", 8);
	namespace_d5067552::function_bae40a28("bridge_reinforcement_spawner", 1);
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
	level namespace_ad23e503::function_1ab5ebec("bring_in_jeeps");
	level thread function_823e535e();
	var_4f41d1d9 = namespace_96fa87af::function_7387a40a("bridge_jeep_right");
	var_4f41d1d9 function_921a1574("evt_jeeps_pre_bridge_drive");
	var_a2623c0a = namespace_96fa87af::function_7387a40a("bridge_jeep_left");
	var_a2623c0a.var_52c5472d = 1;
	var_4f41d1d9.var_52c5472d = 1;
	level thread function_c4e1973c(var_4f41d1d9);
	level thread function_c4e1973c(var_a2623c0a);
	var_4f41d1d9 thread function_9069a713();
	var_a2623c0a thread function_9069a713();
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", level.var_35c12e63);
	var_a2623c0a thread function_7096928d("cp_level_prologue_destroy_jeep_left");
	var_4f41d1d9 thread function_7096928d("cp_level_prologue_destroy_jeep_left");
	level.var_8c902673 = function_84970cc4(var_a2623c0a, var_4f41d1d9);
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
	level namespace_ad23e503::function_74d6b22f("bring_in_jeeps");
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
	self thread namespace_37b990db::function_2aefd6ec(1, 1);
	self waittill("hash_449a82fd");
	var_402c598a = self namespace_96fa87af::function_ad4ec07a("gunner1");
	var_402c598a namespace_d84e54db::function_c9e45d52(1);
	var_402c598a thread function_da187c1b(self);
	namespace_d0ef8521::function_74d6b22f(var_376507c0, self);
	self waittill("hash_128f8789");
	if(!isdefined(self.var_ceae8e35))
	{
		namespace_d0ef8521::function_31cd1834(var_376507c0, self);
	}
	level namespace_ad23e503::function_74d6b22f("bridge_destruction_sequence");
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
function function_da187c1b(var_edd777e6)
{
	self waittill("hash_128f8789");
	wait(function_72a94f05(2, 4));
	if(function_5b49d38c(var_edd777e6))
	{
		var_edd777e6 function_2992720d();
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
	level namespace_ad23e503::function_1ab5ebec("bridge_intro_chatter_done");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_only_way_across_the_0");
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
	level namespace_ad23e503::function_74d6b22f("bridge_destruction_sequence");
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
	self waittill("hash_5308ce8f");
	self namespace_37b990db::function_bae40a28(1, 1);
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
	level namespace_ad23e503::function_1ab5ebec("bring_in_sniper_2");
	namespace_2f06d687::function_22356ba7("sp_bridge_sniper_right");
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
	level namespace_ad23e503::function_1ab5ebec("bring_in_trucks");
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
function function_58377d0(var_aa87ada2, var_4be20d44)
{
	var_402c598a = var_aa87ada2 namespace_96fa87af::function_ad4ec07a(var_4be20d44);
	if(isdefined(var_402c598a))
	{
		var_402c598a thread namespace_96fa87af::function_dca9dba2();
		var_402c598a thread function_39c16a4a();
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
function function_ec50ea55(var_1c74455b)
{
	var_554afa3a = namespace_96fa87af::function_7387a40a(var_1c74455b);
	var_554afa3a thread namespace_96fa87af::function_ff72658f();
	var_554afa3a waittill("hash_6cf6ac7e");
	function_58377d0(var_554afa3a, "driver");
	function_58377d0(var_554afa3a, "passenger1");
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
function function_c4e1973c(var_554afa3a)
{
	var_554afa3a thread namespace_96fa87af::function_ff72658f();
	var_554afa3a waittill("hash_6cf6ac7e");
	var_402c598a = var_554afa3a namespace_96fa87af::function_ad4ec07a("passenger1");
	if(function_5b49d38c(var_402c598a))
	{
		var_402c598a thread namespace_96fa87af::function_dca9dba2();
		var_402c598a thread function_39c16a4a();
	}
	var_dfb53de7 = var_554afa3a namespace_96fa87af::function_ad4ec07a("gunner1");
	if(function_5b49d38c(var_dfb53de7))
	{
		var_dfb53de7 waittill("hash_128f8789");
	}
	var_44762fa4 = var_554afa3a namespace_96fa87af::function_ad4ec07a("driver");
	if(function_5b49d38c(var_44762fa4))
	{
		var_44762fa4 thread namespace_96fa87af::function_dca9dba2();
		var_44762fa4 thread function_39c16a4a();
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
	var_82079741 = namespace_2f06d687::function_7387a40a("floodlight_left");
	var_8386532c = namespace_2f06d687::function_7387a40a("floodlight_right");
	var_82079741 namespace_96fa87af::function_e103651a();
	var_8386532c namespace_96fa87af::function_e103651a();
	level waittill("hash_69473677");
	if(isdefined(var_82079741))
	{
		var_82079741 namespace_96fa87af::function_3762fc40();
		var_8386532c namespace_96fa87af::function_3762fc40();
		var_82079741.var_3e3a41eb = 1;
		var_82079741 notify("hash_128f8789");
		if(!function_5b49d38c(var_82079741))
		{
			var_82079741 function_dc8c8404();
		}
		wait(0.05);
		var_8386532c.var_3e3a41eb = 1;
		var_8386532c notify("hash_128f8789");
		if(!function_5b49d38c(var_8386532c))
		{
			var_8386532c function_dc8c8404();
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
	level namespace_ad23e503::function_1ab5ebec("bridge_destruction_sequence");
	level notify("hash_91d75f4e");
	level thread function_61ebf180();
	namespace_76d95162::function_d9f49fba(0);
	var_b729b603 = function_6ada35ba("trig_bridge_vehicle_delete", "targetname");
	level thread namespace_4dbf3ae3::function_e15d2d5d(var_b729b603);
	wait(2);
	level.var_3e3bb66f = [];
	level thread function_bb86e135("bridge_macv_convoy1", 3, 2);
	wait(1);
	level thread function_bb86e135("bridge_macv_convoy2", 3, 2);
	wait(1.5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_reinforcements_comin_0");
	wait(0.25);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_re_not_getting_ac_0");
	wait(0.4);
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_fuck_it_plan_b_0");
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
	level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_prologue_bridge_bundle", &function_cefcd22a);
	level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_prologue_bridge_bundle", &function_27bfa6a0, "done");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_bridge_bundle");
	namespace_80983c42::function_67e7a937("light_exploder_bridge");
	namespace_84970cc4::function_eaab05dc(level.var_3e3bb66f, &function_908069e9);
	level notify("hash_babbfab3");
	namespace_4dbf3ae3::function_42e87952("trig_kill_cqb_spawner_right", "targetname", undefined, 0);
	namespace_4dbf3ae3::function_42e87952("trig_kill_cqb_spawner_left", "targetname", undefined, 0);
	namespace_4dbf3ae3::function_42e87952("trig_kill_bridge_reinforcement_spawner", "targetname", undefined, 0);
	level thread function_a34a09b4();
	wait(0.5);
	level thread namespace_21b2c1f2::function_3c37ec50();
	foreach(var_edd777e6 in level.var_8c902673)
	{
		if(function_5b49d38c(var_edd777e6))
		{
			var_edd777e6.var_ceae8e35 = 1;
			namespace_d0ef8521::function_31cd1834("cp_level_prologue_destroy_jeep_left", var_edd777e6);
			function_eac31668(var_edd777e6.var_722885f3, 96, 1000, 500, level.var_2fd26037, "MOD_GRENADE");
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
	var_c1470355 = function_b8494651("axis");
	foreach(var_d84e54db in var_c1470355)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db namespace_d84e54db::function_8c969347();
			wait(function_72a94f05(0.1, 0.3));
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
function function_cefcd22a(var_c77d2837)
{
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.var_722885f3, 0.5, 1.5, 5000, 5, "damage_heavy");
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
	var_a02e914a = function_6ada35ba("bridge_section_top", "targetname");
	var_a02e914a function_dc8c8404();
	var_725be530 = function_6ada35ba("bridge_section_bottom", "targetname");
	var_725be530 function_dc8c8404();
	level thread namespace_cc27597::function_43718187("bridge_tent_01");
	var_59ff07ee = function_6ada35ba("bridge_section_1", "targetname");
	var_59ff07ee function_dc8c8404();
	var_57376852 = function_6ada35ba("bridge_damage_origin_1", "targetname");
	function_eac31668(var_57376852.var_722885f3, 450, 2000, 2000, undefined, "MOD_EXPLOSIVE");
	level thread function_71e578b6();
	level waittill("hash_85385801");
	level thread namespace_cc27597::function_43718187("bridge_tent_02");
	var_33fc8d85 = function_6ada35ba("bridge_section_2", "targetname");
	var_33fc8d85 function_dc8c8404();
	var_3134ede9 = function_6ada35ba("bridge_damage_origin_2", "targetname");
	function_eac31668(var_3134ede9.var_722885f3, 450, 2000, 2000, undefined, "MOD_EXPLOSIVE");
	level thread function_71e578b6();
	level waittill("hash_5f35dd98");
	var_dfa131c = function_6ada35ba("bridge_section_3", "targetname");
	var_dfa131c function_dc8c8404();
	var_b327380 = function_6ada35ba("bridge_damage_origin_3", "targetname");
	function_eac31668(var_b327380.var_722885f3, 450, 2000, 2000, undefined, "MOD_EXPLOSIVE");
	level thread function_71e578b6();
	level waittill("hash_69473677");
	level thread namespace_cc27597::function_43718187("bridge_tent_03");
	var_e7f798b3 = function_99201f25("bridge_section_4", "targetname");
	namespace_84970cc4::function_eaab05dc(var_e7f798b3, &function_dc8c8404);
	var_1543cc5f = function_6ada35ba("bridge_damage_origin_4", "targetname");
	function_eac31668(var_1543cc5f.var_722885f3, 800, 3000, 3000, undefined, "MOD_EXPLOSIVE");
	level thread function_71e578b6();
	var_2bb8ffb8 = function_99201f25("bridge_macv_convoy1_vh", "targetname");
	var_bd827604 = namespace_14b42b8a::function_7922262b("struct_macv_fx", "targetname");
	var_85d8db71 = function_e7bdc1a1(var_bd827604.var_722885f3, var_2bb8ffb8);
	var_85d8db71 thread namespace_5753664b::function_43718187("fx_apc_fire", var_85d8db71.var_722885f3, var_85d8db71.var_6ab6f4fd, undefined, 1, "tag_origin");
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
function function_27bfa6a0(var_c77d2837)
{
	function_6ddd4fa4("fxanim_bridge_static2");
	namespace_82b91a51::function_76f13293();
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 function_dc8c8404();
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
	for(var_c957f6b6 = 1; var_c957f6b6 < 5; var_c957f6b6++)
	{
		self namespace_37b990db::function_fcf56ab5(var_c957f6b6);
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
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 function_e2af603e("tank_damage_heavy_mp");
		function_9cf04c2e(0.3, 1, var_6bfe1586.var_722885f3, 128);
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
function function_1aacc8e6(var_4c14db8e, var_2f06d687)
{
	var_b337b3dc = namespace_96fa87af::function_7387a40a(var_4c14db8e);
	var_b337b3dc thread namespace_96fa87af::function_ff72658f();
	var_b337b3dc waittill("hash_6cf6ac7e");
	var_b337b3dc function_14c24d9d();
	namespace_d5067552::function_bae40a28(var_2f06d687);
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
function function_bb86e135(var_2c566fb1, var_a8d029b8, var_ee7dbbc9)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a8d029b8; var_c957f6b6++)
	{
		var_86cf1a8 = namespace_96fa87af::function_2962e239(var_2c566fb1);
		level.var_3e3bb66f[level.var_3e3bb66f.size] = var_86cf1a8;
		if(var_c957f6b6 == 0)
		{
			var_86cf1a8 function_921a1574("evt_apc_bridge_drive");
		}
		var_86cf1a8 thread function_9a998f4c();
		wait(var_ee7dbbc9);
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
	self endon("hash_128f8789");
	self waittill("hash_a796f6fb");
	for(var_c957f6b6 = 1; var_c957f6b6 < 5; var_c957f6b6++)
	{
		if(level.var_2395e945.size > 1)
		{
			var_e248524d = namespace_84970cc4::function_4219028b(self.var_722885f3, level.var_9b1393e7, undefined, 3);
			var_4bc288a0 = function_dc99997a(1, level.var_9b1393e7.size);
			var_377a9c22 = var_e248524d[var_4bc288a0 - 1];
		}
		else
		{
			var_377a9c22 = level.var_2395e945[0];
		}
		self thread namespace_37b990db::function_d104c596(var_377a9c22, 20, (0, 0, 0), var_c957f6b6, 0);
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
	var_415b1e24 = function_b4cb3503("node_hendricks_bridge", "targetname");
	level.var_2fd26037 function_169cc712(var_415b1e24);
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
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	var_948fd036 = function_6ada35ba("hyperion_teleport_point", "targetname");
	self function_9869ab67(var_948fd036.var_722885f3, var_948fd036.var_6ab6f4fd, 1);
	level namespace_ad23e503::function_1ab5ebec("hyperion_move_up");
	var_277f35c0 = function_b4cb3503("hyperion_bridge_start", "targetname");
	self function_169cc712(var_277f35c0, 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
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
	var_49b32118 = function_6ada35ba("pa_dialog_bridge", "targetname");
	var_49b32118 namespace_71b8dba1::function_81141386("nrcp_satellite_stations_m_0", 0, 1);
	level namespace_ad23e503::function_1ab5ebec("player_left_alley");
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_exfil_is_across_the_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_they_ll_still_be_rig_0", 0.5);
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_we_ve_set_charges_al_0", 0.3);
	wait(1);
	level namespace_ad23e503::function_74d6b22f("bridge_intro_chatter_done");
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
	level namespace_ad23e503::function_1ab5ebec("play_bridge_nag");
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_bridge_s_just_ahead_0");
	level namespace_ad23e503::function_9d134160("play_bridge_nag");
	level thread function_ccb258c2();
	level namespace_ad23e503::function_1ab5ebec("play_bridge_nag");
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_keep_on_mark_we_re_0");
	level namespace_ad23e503::function_9d134160("play_bridge_nag");
	level thread function_ccb258c2();
	level namespace_ad23e503::function_1ab5ebec("play_bridge_nag");
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_move_up_move_up_0");
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
	var_638ec873 = GetTime();
	while(1)
	{
		wait(0.5);
		level.var_1d513eb4 = GetTime() - var_638ec873 / 1000;
		if(level.var_1d513eb4 >= 20)
		{
			level namespace_ad23e503::function_74d6b22f("play_bridge_nag");
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
	level namespace_ad23e503::function_1ab5ebec("bridge_enemies_fallback_1");
	level.var_1d513eb4 = 0;
	level namespace_ad23e503::function_1ab5ebec("bridge_enemies_fallback_3");
	level.var_1d513eb4 = 0;
	level namespace_ad23e503::function_1ab5ebec("bring_in_jeeps");
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
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_5d4087a6 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(1);
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_4d5a4697 namespace_d84e54db::function_ceb883cd("coverIdleOnly", 0);
	level thread function_43d4df76();
	namespace_4dbf3ae3::function_42e87952("move_friendlies_to_darkroom_door");
	var_e1017064 = level.var_3f831f3b["scene"]["cin_pro_12_01_darkbattle_vign_doorhack_theia_hack"].var_485299d7[0];
	var_e1017064.var_2dd707 = 0;
	level.var_5d4087a6 thread function_74a0938a();
	level thread namespace_cc27597::function_43718187("cin_pro_12_01_darkbattle_vign_doorhack_theia_hack");
	level thread function_d94fdf85();
	level thread namespace_d0ef8521::function_45d1556("dark_battle_breadcrumb_start");
	level waittill("hash_3b176c27");
	function_40039059();
	namespace_4dbf3ae3::function_42e87952("move_friendlies_to_darkroom");
	level waittill("hash_2ea5aaf1");
	level namespace_ad23e503::function_74d6b22f("activate_db_bc_2");
	var_277f35c0 = function_b4cb3503("pallas_stairs_goal", "targetname");
	level.var_5d4087a6 function_169cc712(var_277f35c0);
	level thread function_8798d583();
	level.var_5d4087a6 waittill("hash_41d1aaf0");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
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
	var_6df191e = namespace_14b42b8a::function_7922262b("tag_align_darkbattle", "targetname");
	var_7d86ca14 = function_b9b16acf(var_6df191e.var_722885f3, var_6df191e.var_6ab6f4fd, "ch_pro_12_01_darkbattle_vign_doorhack_theia_hack");
	var_18763f91 = 0;
	do
	{
		var_7a7ba497 = self.var_722885f3;
		var_18763f91++;
		wait(6);
	}
	while(!(function_cb3d1c9b(self.var_722885f3, var_7d86ca14) < function_cb3d1c9b(var_7a7ba497, var_7d86ca14) && var_18763f91 < 5));
	self function_9869ab67(var_7d86ca14);
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
	level.var_212db960 = function_6ada35ba("intelligence_building_entrance_blocker", "targetname");
	level.var_212db960.var_3c57100e = 300;
	level.var_212db960 function_8bdea13c(-1 * level.var_212db960.var_3c57100e, 0.05);
	var_181a23a4 = function_6ada35ba("intelstation_entry_door_l", "targetname");
	var_5c50a8aa = function_6ada35ba("intelstation_entry_door_r", "targetname");
	function_37cbcf1a("evt_doorhack_dooropen", var_5c50a8aa.var_722885f3);
	var_96ba651b = VectorScale((1, 0, 0), 54);
	var_ebf82f1 = var_181a23a4.var_722885f3 + var_96ba651b;
	var_181a23a4 function_a96a2721(var_ebf82f1, 0.5);
	var_ebf82f1 = var_5c50a8aa.var_722885f3 - var_96ba651b;
	var_5c50a8aa function_a96a2721(var_ebf82f1, 0.5);
	var_181a23a4 waittill("hash_a21db68a");
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
	var_e4f2f922 = function_6ada35ba("t_intelligence_entrance_doors", "targetname");
	var_634d0729 = function_84970cc4(level.var_4d5a4697, level.var_2fd26037, level.var_9db406db, level.var_5d4087a6);
	level thread namespace_2cb3876f::function_21f52196("intelligence_doors", var_e4f2f922);
	level thread namespace_2cb3876f::function_2e61b3e8("intelligence_doors", var_e4f2f922, var_634d0729);
	while(!namespace_2cb3876f::function_cdd726fb("intelligence_doors"))
	{
		wait(0.1);
	}
	level.var_212db960 function_8bdea13c(level.var_212db960.var_3c57100e, 0.05);
	var_181a23a4 = function_6ada35ba("intelstation_entry_door_l", "targetname");
	var_5c50a8aa = function_6ada35ba("intelstation_entry_door_r", "targetname");
	var_5c50a8aa function_921a1574("evt_doorhack_doorclose");
	var_96ba651b = VectorScale((1, 0, 0), 54);
	var_ebf82f1 = var_181a23a4.var_722885f3 - var_96ba651b;
	var_181a23a4 function_a96a2721(var_ebf82f1, 0.5);
	var_ebf82f1 = var_5c50a8aa.var_722885f3 + var_96ba651b;
	var_5c50a8aa function_a96a2721(var_ebf82f1, 0.5);
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
	var_a3d46ee4 = function_9b7fda5e("script_origin", (13413, 2917, 442));
	var_a3d46ee4 function_c2931a36("evt_darkbattle_walla_pre_loop", 5);
	level waittill("hash_400d768d");
	var_a3d46ee4 function_eaa69754(3);
	wait(0.5);
	var_a3d46ee4 function_921a1574("evt_darkbattle_walla_surprise_oneshot");
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
	var_edc6e0e1 = namespace_96fa87af::function_7387a40a("vtol_bridge_flyby");
	var_edc6e0e1 namespace_82b91a51::function_958c7633();
	var_edc6e0e1 thread namespace_96fa87af::function_ff72658f();
	var_edc6e0e1 thread namespace_2cb3876f::function_dacec601("buzz_high", "vtol_attack_end", 0.1, 0.1, 2000, 60);
	var_edc6e0e1 thread namespace_2cb3876f::function_c56034b7();
	var_edc6e0e1 namespace_96fa87af::function_492f8fe7(4, 1);
	var_bd827604 = namespace_14b42b8a::function_7922262b("vtol_spotlight_closest", "targetname");
	var_4eb49a16 = function_e7bdc1a1(var_bd827604.var_722885f3, level.var_2395e945);
	var_edc6e0e1 function_9af49228(var_4eb49a16, (0, 0, 0), 2);
	var_edc6e0e1 waittill("hash_808f9bca");
	var_c9a712ab = function_6ada35ba("trig_all_players_in_int_builing", "targetname");
	var_edc6e0e1 namespace_96fa87af::function_1f32f94a();
	var_11357cb8 = namespace_14b42b8a::function_7faf4c39("vtol_db_pos");
	var_3a018a9 = 0;
	while(!namespace_2cb3876f::function_cdd726fb("intelligence_doors"))
	{
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			var_edc6e0e1 function_df42c640(var_6bfe1586);
			var_edc6e0e1 function_9af49228(var_6bfe1586, (0, 0, 0), 2);
			while(isdefined(var_6bfe1586) && !var_6bfe1586 function_32fa5072(var_c9a712ab))
			{
				var_6bfe1586 function_62f55bbc(var_edc6e0e1, 0);
				var_3a018a9++;
				if(var_3a018a9 % 2 == 0)
				{
					var_edc6e0e1 function_c985552d(namespace_84970cc4::function_47d18840(var_11357cb8).var_722885f3, 1);
				}
			}
		}
		wait(0.5);
	}
	var_edc6e0e1 function_ada64136();
	var_edc6e0e1.var_c1535232 = 1;
	var_618ce087 = function_243bb261("vtol_bridge_leave_nd", "targetname");
	var_edc6e0e1 thread namespace_96fa87af::function_edb3a94e(var_618ce087);
	var_edc6e0e1 waittill("hash_6cf6ac7e");
	var_edc6e0e1 namespace_82b91a51::function_4b741fdc();
	var_edc6e0e1 notify("hash_e9b8a433");
	var_edc6e0e1.var_3e3a41eb = 1;
	var_edc6e0e1 notify("hash_128f8789");
	if(!function_5b49d38c(var_edc6e0e1))
	{
		var_edc6e0e1 function_dc8c8404();
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
function function_62f55bbc(var_6d8dbcae, var_bb290d08)
{
	if(!isdefined(var_bb290d08))
	{
		var_bb290d08 = 0;
	}
	level endon("hash_7097d501");
	self endon("hash_128f8789");
	var_3eac426f = function_72a94f05(2, 3) * 20;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_3eac426f; var_c957f6b6++)
	{
		if(!var_bb290d08)
		{
			var_30299a05 = (function_dc99997a(-150, 150), function_dc99997a(-150, 150), function_dc99997a(-150, 150));
		}
		else
		{
			var_30299a05 = (0, 0, 0);
		}
		function_87f3c622(function_c4d5ec1f("turret_bo3_mil_vtol_nrc"), var_6d8dbcae function_d48f2ab3("tag_gunner_barrel3") + VectorScale((0, -1, 0), 40), self.var_722885f3 + var_30299a05);
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
function function_3d8309dc(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_ae725cb8, var_a5cf2304, var_7419ba1f)
{
	return var_f9a179ed * 5;
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
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_taylor_primary_exfi_0");
	level namespace_71b8dba1::function_a463d127("tayr_copy_that_rendezvou_0", undefined, "normal");
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
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_gotta_move_on_second_0");
	wait(5);
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_move_your_ass_get_i_0");
	wait(5);
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_that_drone_s_less_th_0");
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
	level namespace_4dbf3ae3::function_1ab5ebec("trig_all_players_in_int_builing");
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
	var_950ed8c6 = function_b4cb3503("bridge_link_1", "targetname");
	function_47d28a09(var_950ed8c6);
	var_950ed8c6 = function_b4cb3503("bridge_link_2", "targetname");
	function_47d28a09(var_950ed8c6);
	var_950ed8c6 = function_b4cb3503("bridge_link_3", "targetname");
	function_47d28a09(var_950ed8c6);
	var_950ed8c6 = function_b4cb3503("bridge_link_4", "targetname");
	function_47d28a09(var_950ed8c6);
	var_950ed8c6 = function_b4cb3503("bridge_link_5", "targetname");
	function_47d28a09(var_950ed8c6);
}


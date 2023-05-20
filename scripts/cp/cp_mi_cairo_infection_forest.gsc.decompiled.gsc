#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_forest_surreal;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_e1dfe97e;

/*
	Name: function_2dc19561
	Namespace: namespace_e1dfe97e
	Checksum: 0x6F22F577
	Offset: 0x1328
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("infection_forest", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_e1dfe97e
	Checksum: 0xD52EEE9A
	Offset: 0x1368
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_990970fb = "cin_inf_06_02_bastogne_vign_intro";
	level.var_81285d39 = "cin_inf_06_02_bastogne_vign_sarahintro";
	level.var_d29b7e91 = "cin_inf_06_02_bastogne_vign_playerintro";
	function_49eb92b9();
}

/*
	Name: function_ff58a260
	Namespace: namespace_e1dfe97e
	Checksum: 0xF257A8A7
	Offset: 0x13B8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	namespace_71e9cb84::function_50f16166("world", "forest_mortar_index", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("world", "forest_surreal_exposure", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_frost_up", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_frost_down", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "wfa_steam_sound", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "cp_infection_world_falls_break_rumble", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "cp_infection_world_falls_away_rumble", 1, 1, "counter");
}

/*
	Name: function_e8608118
	Namespace: namespace_e1dfe97e
	Checksum: 0x1EAC346F
	Offset: 0x1518
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_e8608118()
{
	function_c4110989();
	level thread namespace_cc27597::function_c35e6aab(level.var_990970fb);
	level thread namespace_cc27597::function_c35e6aab(level.var_81285d39);
	level thread namespace_cc27597::function_c35e6aab(level.var_d29b7e91);
}

/*
	Name: function_5855575b
	Namespace: namespace_e1dfe97e
	Checksum: 0xC7E8251E
	Offset: 0x1598
	Size: 0x1B3
	Parameters: 2
	Flags: None
*/
function function_5855575b(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_c4110989();
		level thread namespace_cc27597::function_c35e6aab(level.var_990970fb);
		level thread namespace_cc27597::function_c35e6aab(level.var_81285d39);
		level thread namespace_cc27597::function_c35e6aab(level.var_d29b7e91);
		level namespace_82b91a51::function_d8eaed3d(12);
		namespace_d7916d65::function_a2995f22();
		namespace_80983c42::function_80983c42("sgen_server_room_fall");
	}
	level thread function_9346c4d4();
	namespace_36cbf523::function_1cdb9014();
	if(-1)
	{
		level thread function_5f026a1d();
	}
	level thread function_c064d28b();
	namespace_76d95162::function_d9f49fba(0);
	level thread function_8d291f3b();
	function_6527f47d();
	if(var_74cd64bc)
	{
		level thread namespace_82b91a51::function_a0938376();
	}
	level thread namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_dcdf9aa0
	Namespace: namespace_e1dfe97e
	Checksum: 0x3517C89E
	Offset: 0x1758
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_dcdf9aa0(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_a683b99a
	Namespace: namespace_e1dfe97e
	Checksum: 0xD3F7026D
	Offset: 0x1788
	Size: 0x503
	Parameters: 2
	Flags: None
*/
function function_a683b99a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_c4110989();
		level.var_990970fb = "cin_inf_06_02_bastogne_vign_intro";
		level namespace_cc27597::function_c35e6aab(level.var_990970fb);
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_sgen_floor_debris_bundle");
		namespace_d7916d65::function_a2995f22();
		if(-1)
		{
			level thread function_9901d769();
		}
		level thread function_6c690b17();
		namespace_36cbf523::function_1cdb9014();
		level thread namespace_cc27597::function_5c143f59(level.var_990970fb);
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_sgen_floor_debris_bundle");
		level thread namespace_bed101ee::function_245384ac();
	}
	namespace_d275cebc::function_93523442("p7_nc_cai_inf_02", 250, (-20, -15, 0));
	namespace_d275cebc::function_37aecd21();
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_follow_sarah");
	namespace_f25bd8c8::function_15b29a5a();
	namespace_f25bd8c8::function_c081e535();
	namespace_76d95162::function_d9f49fba(1);
	if(isdefined(0) && 0)
	{
		var_e5315a4c = function_3f10449f().size;
		if(var_e5315a4c == 1)
		{
			level.var_4aa3708c = 1;
		}
	}
	level thread namespace_36cbf523::function_3fe1f72("t_sarah_bastogne_objective_", 0, &namespace_47c46a7d::function_32a538b9);
	level thread function_80ec016e();
	level thread function_eba8cedd();
	level thread function_14c76b8f();
	level thread function_5656b048();
	level thread function_a5529de2();
	level thread function_c60eab85();
	level thread function_b19769e8();
	level thread function_42caf3d5();
	level thread function_d03371f7();
	level thread function_2c145384("t_2nd_hill_rienforcements", "sp_2nd_hill_reinforcements", "sm_2nd_hill_reinforcements");
	level thread function_2c145384("t_2nd_hill_rienforcements", "sp_2nd_hill_reinforcements_mg_side", "sm_2nd_hill_reinforcements_mg_side");
	level thread function_cc4e1226();
	level thread function_b3e5e4b5();
	level thread function_8d291f3b();
	level thread function_e44e0c61();
	level thread function_6f3844fd();
	level thread function_d165773d();
	level thread function_dfa07cd7("t_mg_turret_1", "bastogne_turret_1", 0, "s_turret_kill", "fx_expl_mg_bullet_impacts01");
	level thread function_dfa07cd7("t_mg_turret_1", "bastogne_turret_2", 0, "s_turret_kill_2", undefined);
	level thread function_247f1864();
	level thread function_afb42159();
	namespace_4dbf3ae3::function_1ab5ebec("bastogne_complete");
	level notify("hash_92cdd020");
	level.var_4aa3708c = undefined;
	function_82ddc1bc();
	namespace_36cbf523::function_aa0ddbc3(0);
	level thread namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_80ec016e
	Namespace: namespace_e1dfe97e
	Checksum: 0x2A055BBC
	Offset: 0x1C98
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_80ec016e()
{
	var_3c8b682 = function_6ada35ba("t_sarah_bastogne_objective_0", "targetname");
	wait(2);
	if(isdefined(var_3c8b682))
	{
		namespace_4dbf3ae3::function_42e87952("t_sarah_bastogne_objective_0", "targetname");
	}
}

/*
	Name: function_32e49d5b
	Namespace: namespace_e1dfe97e
	Checksum: 0x9170C349
	Offset: 0x1D08
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_32e49d5b(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_f25bd8c8::function_a0f567cb();
	function_9e3608e3("hide_me_from_wolves");
	var_3edb0ecc = function_99201f25("bastogne_world_falls_away", "script_noteworthy");
	level thread namespace_84970cc4::function_eaab05dc(var_3edb0ecc, &function_48f26766);
}

/*
	Name: function_82ddc1bc
	Namespace: namespace_e1dfe97e
	Checksum: 0x1F54AC44
	Offset: 0x1DB8
	Size: 0x1D9
	Parameters: 0
	Flags: None
*/
function function_82ddc1bc()
{
	var_de34b497 = [];
	var_e3b635fb = function_b8494651("axis");
	if(isdefined(var_e3b635fb))
	{
		var_1152223f = namespace_36cbf523::function_9e5ed1ac(var_e3b635fb);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_1152223f.size; var_c957f6b6++)
		{
			var_4c9c8550 = var_1152223f[var_c957f6b6];
			if(var_c957f6b6 + 7 >= var_1152223f.size)
			{
				var_de34b497[var_de34b497.size] = var_4c9c8550;
				continue;
			}
			var_4c9c8550 namespace_36cbf523::function_e66c8377();
		}
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_de34b497.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_de34b497[var_c957f6b6];
		var_4c9c8550 thread function_963f4e85();
	}
	namespace_6f7b2095::function_d3f001ef();
	var_e3b635fb = function_b8494651("allies");
	if(isdefined(var_e3b635fb))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			if(!var_e3b635fb[var_c957f6b6] namespace_82b91a51::function_d3426abc())
			{
				var_e3b635fb[var_c957f6b6] thread namespace_36cbf523::function_5e78ab8c();
			}
		}
	}
	level notify("hash_49c1fc58");
}

/*
	Name: function_963f4e85
	Namespace: namespace_e1dfe97e
	Checksum: 0x4C7D6821
	Offset: 0x1FA0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_963f4e85()
{
	self endon("hash_128f8789");
	wait(60);
	self namespace_36cbf523::function_e66c8377();
}

/*
	Name: function_20456e21
	Namespace: namespace_e1dfe97e
	Checksum: 0x9F76A03
	Offset: 0x1FD8
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_20456e21(var_db803bcf, var_7ae256a)
{
	self thread function_cfcac97e(var_db803bcf, var_7ae256a);
}

/*
	Name: function_cfcac97e
	Namespace: namespace_e1dfe97e
	Checksum: 0x1A14AEF7
	Offset: 0x2018
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_cfcac97e(var_db803bcf, var_7ae256a)
{
	namespace_4dbf3ae3::function_1ab5ebec(var_db803bcf);
	namespace_36cbf523::function_c8d7e76(var_7ae256a);
}

/*
	Name: function_49eb92b9
	Namespace: namespace_e1dfe97e
	Checksum: 0xA7674CE5
	Offset: 0x2068
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function function_49eb92b9()
{
	namespace_cc27597::function_8f9f34e0(level.var_990970fb, &namespace_36cbf523::function_9f64d290, "play", 0);
	namespace_cc27597::function_8f9f34e0(level.var_990970fb, &function_ae9a24ef, "play");
	namespace_cc27597::function_8f9f34e0(level.var_990970fb, &namespace_36cbf523::function_9f64d290, "done", 1);
	namespace_cc27597::function_8f9f34e0(level.var_81285d39, &namespace_36cbf523::function_9f64d290, "play", 0);
	namespace_cc27597::function_8f9f34e0(level.var_81285d39, &namespace_36cbf523::function_9f64d290, "done", 1);
	namespace_cc27597::function_8f9f34e0(level.var_81285d39, &function_a634a43, "play");
	namespace_cc27597::function_8f9f34e0(level.var_81285d39, &function_1527ec64, "done");
	namespace_cc27597::function_8f9f34e0(level.var_81285d39, &namespace_36cbf523::function_23e59afd, "play");
	namespace_cc27597::function_8f9f34e0(level.var_81285d39, &namespace_36cbf523::function_e2eba6da, "done");
	namespace_cc27597::function_8f9f34e0(level.var_81285d39, &function_e9f0e4b1, "play");
	namespace_cc27597::function_8f9f34e0(level.var_81285d39, &function_54e62fbb, "done");
	namespace_cc27597::function_8f9f34e0(level.var_d29b7e91, &function_7d84ce4b, "play");
	namespace_cc27597::function_8f9f34e0(level.var_d29b7e91, &function_44af09ad, "done");
}

/*
	Name: function_c4110989
	Namespace: namespace_e1dfe97e
	Checksum: 0x85A581C1
	Offset: 0x22F8
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function function_c4110989()
{
	namespace_36cbf523::function_aa0ddbc3(1);
	namespace_2f06d687::function_2b37a3c9("bastogne_friendly_guys", "script_noteworthy", &function_8b13f33c);
	namespace_2f06d687::function_2b37a3c9("bastogne_tiger_tank_1_guys", "script_noteworthy", &namespace_36cbf523::function_b86426b1);
	namespace_2f06d687::function_2b37a3c9("sm_bastogne_reinforcements", "script_noteworthy", &namespace_36cbf523::function_b86426b1);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_battle_start", "targetname", &function_d307bf85);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_reinforcements_left_guys", "targetname", &function_d307bf85);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_reinforcements_right_guys", "targetname", &function_d307bf85);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_reinforcements", "targetname", &function_d307bf85);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_reinforcements_2", "targetname", &function_d307bf85);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_final_guys", "targetname", &function_d307bf85);
	namespace_2f06d687::function_2b37a3c9("sp_wakamole_start", "targetname", &function_8e9f617f, 64, 0);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_ww2_mg_wakamole", "targetname", &function_8e9f617f, 64, 0);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_hill_running_group", "targetname", &function_8e9f617f, 512, 0);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_right_side_runners", "targetname", &function_8e9f617f, 512, 0);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_right_side_wave2", "targetname", &function_8e9f617f, 512, 0);
	namespace_2f06d687::function_2b37a3c9("sp_bastogne_high_ground_rpg", "targetname", &function_8e9f617f, 64, 1);
	namespace_2f06d687::function_2b37a3c9("sp_left_side_rocks_fallback", "targetname", &function_8e9f617f, 512, 0);
	namespace_36cbf523::function_c8d7e76("bastogne_reverse_anim");
	function_20456e21("init_bastogne_reverse_anims_2", "bastogne_reverse_anim_2");
}

/*
	Name: function_eba8cedd
	Namespace: namespace_e1dfe97e
	Checksum: 0xB41AE04A
	Offset: 0x2690
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_eba8cedd()
{
	var_f8447754 = "sm_bastogne_battle_start";
	namespace_d5067552::function_bae40a28(var_f8447754);
	var_f92a03e7 = function_6ada35ba("t_bastogne_battle_startup", "targetname");
	if(isdefined(var_f92a03e7))
	{
		var_f92a03e7 waittill("hash_4dbf3ae3");
	}
	if(namespace_d5067552::function_56a7483f(var_f8447754))
	{
		namespace_d5067552::function_54bdb053(var_f8447754);
	}
}

/*
	Name: function_6527f47d
	Namespace: namespace_e1dfe97e
	Checksum: 0xA6304C87
	Offset: 0x2740
	Size: 0x171
	Parameters: 0
	Flags: None
*/
function function_6527f47d()
{
	level notify("hash_1f663a67");
	level thread function_c7c2668();
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
	if(isdefined(level.var_584f2510))
	{
		level thread [[level.var_584f2510]]();
	}
	level thread namespace_cc27597::function_43718187(level.var_990970fb);
	level thread namespace_cc27597::function_43718187(level.var_d29b7e91);
	level waittill("hash_d885008c");
	level namespace_cc27597::function_43718187(level.var_81285d39);
	level thread function_88bd9811();
	namespace_4dbf3ae3::function_42e87952("bastogne_intro_reverse_anims_start", "targetname", undefined, 0);
	namespace_36cbf523::function_3ea445de();
	namespace_82b91a51::function_76f13293();
	namespace_36cbf523::function_1cdb9014();
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_e905c73c);
	level notify("hash_784610e5");
}

/*
	Name: function_88bd9811
	Namespace: namespace_e1dfe97e
	Checksum: 0xDD4B294D
	Offset: 0x28C0
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_88bd9811()
{
	var_f721d9a5 = GetTime();
	var_136cddb7 = 0;
	var_203e4c9c = 0;
	while(1)
	{
		var_60db70fa = GetTime();
		var_5ecb0b6d = var_60db70fa - var_f721d9a5 / 1000;
		if(var_5ecb0b6d > 0.5)
		{
			if(!var_136cddb7)
			{
				/#
					function_2e4b8c78("Dev Block strings are not supported");
				#/
				var_136cddb7 = 1;
				var_da1cc39e = function_99201f25("sp_sarah_intro_attacker", "targetname");
				for(var_c957f6b6 = 0; var_c957f6b6 < var_da1cc39e.size; var_c957f6b6++)
				{
					namespace_2f06d687::function_7387a40a(var_da1cc39e[var_c957f6b6]);
					namespace_82b91a51::function_76f13293();
				}
			}
		}
		else if(var_5ecb0b6d > 1)
		{
			if(!var_203e4c9c)
			{
				level thread namespace_cc27597::function_43718187("bastogne_reverse_anim_intro_1");
				var_203e4c9c = 1;
			}
		}
		if(var_5ecb0b6d >= 4)
		{
			return;
		}
		wait(0.05);
	}
}

/*
	Name: function_e9f0e4b1
	Namespace: namespace_e1dfe97e
	Checksum: 0x4A1CC7F4
	Offset: 0x2A58
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_e9f0e4b1(var_c77d2837)
{
	var_c77d2837["sarah"] thread namespace_36cbf523::function_9110a277(1);
	level thread namespace_82b91a51::function_593c2af4(1, "white");
	var_c77d2837["sarah"] waittill("hash_74fab6ea");
	var_c77d2837["sarah"] thread namespace_36cbf523::function_9110a277(0);
	var_c77d2837["sarah"] waittill("hash_57d5c381");
	var_c77d2837["sarah"] function_25b39be3(1);
	level notify("hash_8290505");
	var_c77d2837["sarah"] waittill("hash_21d2f3");
	level notify("hash_b5daeaaf");
}

/*
	Name: function_54e62fbb
	Namespace: namespace_e1dfe97e
	Checksum: 0xEB992041
	Offset: 0x2B68
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_54e62fbb(var_c77d2837)
{
}

/*
	Name: function_7d84ce4b
	Namespace: namespace_e1dfe97e
	Checksum: 0x97F21F97
	Offset: 0x2B80
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_7d84ce4b(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
	}
	level waittill("hash_b18bf2cb");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("cp_infection_floor_break");
		var_5dc5e20a function_f1aa5a21("default", 2.5);
	}
	namespace_80983c42::function_67e7a937("sgen_server_room_fall");
	level thread function_1e925d59();
}

/*
	Name: function_44af09ad
	Namespace: namespace_e1dfe97e
	Checksum: 0xB834D5C3
	Offset: 0x2CF0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_44af09ad(var_c77d2837)
{
	level thread namespace_36cbf523::function_efa09886();
}

/*
	Name: function_1e925d59
	Namespace: namespace_e1dfe97e
	Checksum: 0x54BA3DC6
	Offset: 0x2D20
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_1e925d59(var_c77d2837)
{
	wait(6.35);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_sgen_floor_debris_bundle");
}

/*
	Name: function_b3e5e4b5
	Namespace: namespace_e1dfe97e
	Checksum: 0xA3A9A318
	Offset: 0x2D60
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_b3e5e4b5()
{
	level thread function_61f7878c();
	function_f47ebfe9("info_bastogne_fallback_1");
	level notify("hash_8bede1bc");
	var_67825717 = function_6ada35ba("t_bastogne_fallback_1_volume", "targetname");
	var_e3b635fb = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_e3b635fb[var_c957f6b6] thread function_70228179(var_67825717);
	}
	var_5ddef2e5 = function_3f10449f();
	if(var_5ddef2e5.size > 1)
	{
		return;
	}
	function_f47ebfe9("info_bastogne_fallback_2");
	var_67825717 = function_6ada35ba("t_bastogne_fallback_2_volume", "targetname");
	var_e3b635fb = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_e3b635fb[var_c957f6b6] thread function_70228179(var_67825717);
	}
	if(namespace_d5067552::function_56a7483f("sm_bastogne_reinforcements_left"))
	{
		namespace_d5067552::function_54bdb053("sm_bastogne_reinforcements_left");
	}
	if(namespace_d5067552::function_56a7483f("sm_bastogne_reinforcements_right"))
	{
		namespace_d5067552::function_54bdb053("sm_bastogne_reinforcements_right");
	}
}

/*
	Name: function_f47ebfe9
	Namespace: namespace_e1dfe97e
	Checksum: 0xAFD9203A
	Offset: 0x2F88
	Size: 0x1B3
	Parameters: 1
	Flags: None
*/
function function_f47ebfe9(var_e0525846)
{
	if(isdefined(level.var_a88de977))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported");
		#/
	}
	level.var_a88de977 = 1;
	var_912ac17e = function_6ada35ba(var_e0525846, "targetname");
	while(1)
	{
		var_f04bd8f5 = 0;
		var_5ddef2e5 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
		{
			var_6bfe1586 = var_5ddef2e5[var_c957f6b6];
			if(var_6bfe1586 function_32fa5072(var_912ac17e))
			{
				var_6bfe1586.var_9a01b8b2 = 1;
			}
			if(isdefined(var_6bfe1586.var_9a01b8b2))
			{
				var_f04bd8f5++;
			}
		}
		if(var_f04bd8f5 >= var_5ddef2e5.size)
		{
			break;
		}
		wait(0.05);
	}
	var_5ddef2e5 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
	{
		var_5ddef2e5[var_c957f6b6].var_9a01b8b2 = undefined;
	}
	level.var_a88de977 = undefined;
	var_912ac17e function_dc8c8404();
}

/*
	Name: function_70228179
	Namespace: namespace_e1dfe97e
	Checksum: 0x745B21C8
	Offset: 0x3148
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_70228179(var_67825717)
{
	self endon("hash_128f8789");
	if(isdefined(self.var_db7bb468) && self.var_db7bb468 == "no_fallback")
	{
		return;
	}
	if(isdefined(self.var_a4652398) && self.var_a4652398)
	{
		return;
	}
	wait(function_72a94f05(0.1, 0.5));
	self.var_7dfaf62 = 128;
	self function_169cc712(var_67825717);
	self waittill("hash_41d1aaf0");
	self.var_7dfaf62 = 1024;
}

/*
	Name: function_61f7878c
	Namespace: namespace_e1dfe97e
	Checksum: 0xA6983074
	Offset: 0x3208
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_61f7878c()
{
	level thread function_4e907fea("s_fallback_wakamole_start", "vol_wakamole_start", "volume_wakamole_fallback");
	level thread function_4e907fea("s_fallback_wakamole_middle", "volume_wakamole_middle", "volume_wakamole_fallback");
	level thread function_4e907fea("s_fallback_wakamole_right_middle", "volume_wakamole_right_middle", "volume_wakamole_fallback");
	level thread function_4e907fea("s_fallback_wakamole_end", "volume_wakamole_end", "volume_wakamole_fallback");
}

/*
	Name: function_4e907fea
	Namespace: namespace_e1dfe97e
	Checksum: 0x6B034B30
	Offset: 0x32D8
	Size: 0x135
	Parameters: 3
	Flags: None
*/
function function_4e907fea(var_9301f47d, var_613278fd, var_f8ae0594)
{
	namespace_36cbf523::function_8420d8cd(var_9301f47d);
	var_e55e65d5 = function_6ada35ba(var_613278fd, "targetname");
	var_203d6b6c = function_6ada35ba(var_f8ae0594, "targetname");
	var_e3b635fb = function_b8494651("axis");
	if(isdefined(var_e3b635fb))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			var_4c9c8550 = var_e3b635fb[var_c957f6b6];
			if(var_4c9c8550 function_32fa5072(var_e55e65d5))
			{
				var_4c9c8550 thread function_70228179(var_203d6b6c);
			}
		}
	}
}

/*
	Name: function_e44e0c61
	Namespace: namespace_e1dfe97e
	Checksum: 0x79244E35
	Offset: 0x3418
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e44e0c61()
{
	namespace_d5067552::function_bae40a28("sm_friendly_guys_bastogne");
	if(0)
	{
		return;
	}
	namespace_4dbf3ae3::function_42e87952("forest_color_start");
	level waittill("hash_92cdd020");
	namespace_d5067552::function_2992720d("sm_friendly_guys_bastogne");
	namespace_d5067552::function_2992720d("sm_friendly_guys_bastogne_2");
}

/*
	Name: function_8b13f33c
	Namespace: namespace_e1dfe97e
	Checksum: 0x2612E9B2
	Offset: 0x34A0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_8b13f33c()
{
	self.var_7dfaf62 = 256;
	if(isdefined(1) && 1)
	{
		var_e5315a4c = function_3f10449f().size;
		if(var_e5315a4c > 1)
		{
			self.var_15dfd6c = 0.8;
		}
	}
	if(0)
	{
		self.var_c584775c = 1;
		return;
	}
	self.var_44a68a57 = &function_cf3cdda5;
	self thread function_59f8a32e();
}

/*
	Name: function_59f8a32e
	Namespace: namespace_e1dfe97e
	Checksum: 0x811589B8
	Offset: 0x3550
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_59f8a32e()
{
	self endon("hash_128f8789");
	var_f92a03e7 = function_6ada35ba("color_trigger_3", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	self.var_7dfaf62 = 2048;
}

/*
	Name: function_cf3cdda5
	Namespace: namespace_e1dfe97e
	Checksum: 0x5B35A4DC
	Offset: 0x35B0
	Size: 0xFB
	Parameters: 12
	Flags: None
*/
function function_cf3cdda5(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_ae725cb8, var_a5cf2304, var_5d7e7ac2)
{
	if(!isdefined(level.var_c7d84f4f))
	{
		level.var_c7d84f4f = 0;
	}
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7))
	{
		var_f9a179ed = 0;
	}
	if(self.var_3a90f16b > 0 && var_f9a179ed >= self.var_3a90f16b)
	{
		if(level.var_c7d84f4f > 3)
		{
			var_f9a179ed = self.var_3a90f16b - 1;
		}
		else
		{
			level.var_c7d84f4f++;
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_ae9a24ef
	Namespace: namespace_e1dfe97e
	Checksum: 0xF0696226
	Offset: 0x36B8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_ae9a24ef(var_c77d2837)
{
	level waittill("hash_b5daeaaf");
	var_c77d2837["friendly_guys_bastogne_01"] namespace_71b8dba1::function_81141386("hall_congratulations_priv_0", 5);
	level thread function_79ce4af7();
}

/*
	Name: function_79ce4af7
	Namespace: namespace_e1dfe97e
	Checksum: 0x4A4B76A8
	Offset: 0x3720
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_79ce4af7()
{
	level namespace_71b8dba1::function_13b3b16a("plyr_how_is_this_possible_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_this_has_to_be_an_il_0", 6);
}

/*
	Name: function_a634a43
	Namespace: namespace_e1dfe97e
	Checksum: 0x56F6997D
	Offset: 0x3770
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_a634a43(var_c77d2837)
{
	var_34c69af9 = var_c77d2837["sarah"];
	if(isdefined(var_34c69af9))
	{
		var_34c69af9 function_ca711294("allies");
	}
}

/*
	Name: function_1527ec64
	Namespace: namespace_e1dfe97e
	Checksum: 0x16B44868
	Offset: 0x37C8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_1527ec64(var_c77d2837)
{
	level thread namespace_bed101ee::function_245384ac();
	wait(1);
	var_e9020a33 = function_6ada35ba("sarah_ai", "targetname");
	if(isdefined(var_e9020a33))
	{
		namespace_36cbf523::function_637cd603();
		var_e9020a33 thread namespace_71b8dba1::function_81141386("hall_follow_me_i_ll_sh_0", 0);
	}
}

/*
	Name: function_c064d28b
	Namespace: namespace_e1dfe97e
	Checksum: 0x655A8993
	Offset: 0x3870
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_c064d28b()
{
	namespace_71e9cb84::function_74d6b22f("forest_mortar_index", 1);
	level waittill("hash_8290505");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_25b39be3(1);
	}
	var_e9020a33 = function_6ada35ba("sarah_ai", "targetname");
	level thread namespace_36cbf523::function_7b8c138f(var_e9020a33, 2000, 18);
	function_bea2b721(1);
	level waittill("hash_b5daeaaf");
	function_bea2b721(0);
	level waittill("hash_784610e5");
	level thread function_6c690b17();
}

/*
	Name: function_6c690b17
	Namespace: namespace_e1dfe97e
	Checksum: 0x4FC4371D
	Offset: 0x39E0
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_6c690b17()
{
	namespace_71e9cb84::function_74d6b22f("forest_mortar_index", 2);
	var_f92a03e7 = function_6ada35ba("t_background_mortar_3", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_71e9cb84::function_74d6b22f("forest_mortar_index", 3);
	var_f92a03e7 = function_6ada35ba("t_background_mortar_4", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_71e9cb84::function_74d6b22f("forest_mortar_index", 4);
	var_f92a03e7 = function_6ada35ba("t_background_mortar_5", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_71e9cb84::function_74d6b22f("forest_mortar_index", 5);
	var_f92a03e7 = function_6ada35ba("t_background_mortar_6", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_71e9cb84::function_74d6b22f("forest_mortar_index", 6);
}

/*
	Name: function_c7c2668
	Namespace: namespace_e1dfe97e
	Checksum: 0xC02DBA8B
	Offset: 0x3B58
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_c7c2668()
{
	var_c77d2837 = function_99201f25("sp_falling_intro_enemy", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_c77d2837.size; var_c957f6b6++)
	{
		var_4c9c8550 = namespace_2f06d687::function_7387a40a(var_c77d2837[var_c957f6b6], &function_f3343cbc);
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_bbaffb87
	Namespace: namespace_e1dfe97e
	Checksum: 0x308DF955
	Offset: 0x3C08
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_bbaffb87()
{
	var_c77d2837 = function_99201f25("sp_falling_intro_enemy_ai", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_c77d2837.size; var_c957f6b6++)
	{
		var_c77d2837[var_c957f6b6] function_dc8c8404();
	}
}

/*
	Name: function_f3343cbc
	Namespace: namespace_e1dfe97e
	Checksum: 0x3D7FC3AA
	Offset: 0x3C88
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_f3343cbc()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 64;
	self namespace_d84e54db::function_b4f5e3b9(1);
	level waittill("hash_8290505");
	self function_c3945cd5(self.var_3a90f16b + 100, self.var_722885f3);
}

/*
	Name: function_5f026a1d
	Namespace: namespace_e1dfe97e
	Checksum: 0x109806B3
	Offset: 0x3D00
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_5f026a1d()
{
	level waittill("hash_1f663a67");
	level thread function_3770504e("bastogne_large_falling_piece_6", 4);
	level thread function_3770504e("bastogne_large_falling_piece_2", 10);
	level waittill("hash_b5daeaaf");
	level thread function_9901d769();
}

/*
	Name: function_9901d769
	Namespace: namespace_e1dfe97e
	Checksum: 0xB00EE068
	Offset: 0x3D80
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_9901d769()
{
	var_efbd053b = 2;
	level thread function_3770504e("bastogne_large_falling_piece_2", var_efbd053b + 2);
	level thread function_3770504e("bastogne_large_falling_piece_4", var_efbd053b + 5);
	level thread function_3770504e("bastogne_large_falling_piece_3", var_efbd053b + 6);
	level thread function_3770504e("bastogne_large_falling_piece_6", var_efbd053b + 10);
	level thread function_3770504e("bastogne_large_falling_piece_1", var_efbd053b + 13);
	level thread function_3770504e("bastogne_large_falling_piece_5", var_efbd053b + 16);
}

/*
	Name: function_3770504e
	Namespace: namespace_e1dfe97e
	Checksum: 0xBF1E46A
	Offset: 0x3E90
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_3770504e(var_426bda58, var_d5107b6)
{
	var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_426bda58, "targetname");
	var_4b2f4450 = function_99201f25("bastogne_large_debris", "targetname");
	var_b8c2ad45 = 999999.9;
	var_4ec85d4a = var_4b2f4450[0];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_4b2f4450.size; var_c957f6b6++)
	{
		var_2a97d9fd = function_7d15e2f8(var_ebe66fdc.var_722885f3, var_4b2f4450[var_c957f6b6].var_722885f3);
		if(var_2a97d9fd < var_b8c2ad45)
		{
			var_b8c2ad45 = var_2a97d9fd;
			var_4ec85d4a = var_4b2f4450[var_c957f6b6];
		}
	}
	var_27c4935 = VectorScale((0, 0, 1), 2000);
	var_4ec85d4a function_a96a2721(var_4ec85d4a.var_722885f3 + var_27c4935, 0.05);
	var_4ec85d4a function_50ccee8d();
	wait(var_d5107b6);
	var_4ec85d4a function_48f26766();
	var_4ec85d4a function_921a1574("evt_metal_incoming");
	var_4ec85d4a function_a96a2721(var_4ec85d4a.var_722885f3 - var_27c4935, 1);
	wait(1);
	var_ab2048f4 = 0.5;
	var_f92960c = function_72a94f05(1, 1.2);
	var_dd43e5e9 = 3000;
	function_9cf04c2e(var_ab2048f4, var_f92960c, var_4ec85d4a.var_722885f3, var_dd43e5e9);
	var_4ec85d4a function_921a1574("evt_metal_impact");
}

/*
	Name: function_8e09156
	Namespace: namespace_e1dfe97e
	Checksum: 0x7FFEF045
	Offset: 0x4140
	Size: 0x41F
	Parameters: 0
	Flags: None
*/
function function_8e09156()
{
	/#
		while(1)
		{
			var_72254e15 = function_a8fb77bd();
			while(1)
			{
				var_cef024c7 = 200;
				var_5900d140 = 80;
				var_72254e15.var_296b0cf9 = [];
				var_72254e15.var_4fb6d85a = [];
				var_72254e15.var_724a4794 = [];
				var_6bfe1586 = function_3f10449f()[0];
				var_e3b635fb = function_b8494651("Dev Block strings are not supported");
				for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
				{
					var_eb568523 = 0;
					var_4c9c8550 = var_e3b635fb[var_c957f6b6];
					if(isdefined(var_4c9c8550.var_170527fb))
					{
						for(var_a3557c4d = 0; var_a3557c4d < var_72254e15.var_296b0cf9.size; var_a3557c4d++)
						{
							if(var_72254e15.var_296b0cf9[var_a3557c4d] == var_4c9c8550.var_170527fb)
							{
								var_72254e15.var_4fb6d85a[var_a3557c4d]++;
								var_eb568523 = 1;
								break;
							}
						}
					}
					else if(!var_eb568523 && isdefined(var_4c9c8550.var_170527fb))
					{
						var_72254e15.var_296b0cf9[var_72254e15.var_296b0cf9.size] = var_4c9c8550.var_170527fb;
						var_72254e15.var_4fb6d85a[var_72254e15.var_4fb6d85a.size] = 1;
						var_beaeb5aa = namespace_36cbf523::function_e02dee76(var_6bfe1586, "Dev Block strings are not supported", var_cef024c7, var_5900d140, 1);
						if(function_5dbf7eca(var_4c9c8550.var_170527fb, "Dev Block strings are not supported"))
						{
							var_beaeb5aa.var_d900369a = (0, 1, 0);
						}
						else if(function_5dbf7eca(var_4c9c8550.var_170527fb, "Dev Block strings are not supported"))
						{
							var_beaeb5aa.var_d900369a = (1, 0, 0);
						}
						var_72254e15.var_724a4794[var_72254e15.var_724a4794.size] = var_beaeb5aa;
						var_5900d140 = var_5900d140 + 12;
					}
				}
				for(var_c957f6b6 = 0; var_c957f6b6 < var_72254e15.var_296b0cf9.size; var_c957f6b6++)
				{
					var_beaeb5aa = var_72254e15.var_724a4794[var_c957f6b6];
					var_fdbe8054 = var_72254e15.var_296b0cf9[var_c957f6b6] + "Dev Block strings are not supported" + var_72254e15.var_4fb6d85a[var_c957f6b6];
					var_beaeb5aa function_f6181aca(var_fdbe8054);
				}
				wait(0.1);
				for(var_c957f6b6 = 0; var_c957f6b6 < var_72254e15.var_724a4794.size; var_c957f6b6++)
				{
					var_72254e15.var_724a4794[var_c957f6b6] function_89cd542d();
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_9346c4d4
	Namespace: namespace_e1dfe97e
	Checksum: 0xFA119FFF
	Offset: 0x4568
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_9346c4d4()
{
	level.var_6ef9dbc7 = [];
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break01";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break02";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break03";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break04";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break05";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break06";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break07";
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_6ef9dbc7.size; var_c957f6b6++)
	{
		level thread namespace_cc27597::function_c35e6aab(level.var_6ef9dbc7[var_c957f6b6], "targetname");
		namespace_82b91a51::function_76f13293();
	}
	level.var_d005d08 = 1;
}

/*
	Name: function_6f3844fd
	Namespace: namespace_e1dfe97e
	Checksum: 0x3E34CE34
	Offset: 0x46B8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_6f3844fd()
{
	if(!isdefined(level.var_d005d08))
	{
		function_9346c4d4();
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_6ef9dbc7.size; var_c957f6b6++)
	{
		level thread function_f3fafb74(level.var_6ef9dbc7[var_c957f6b6], 1000);
	}
	level waittill("hash_49c1fc58");
}

/*
	Name: function_f3fafb74
	Namespace: namespace_e1dfe97e
	Checksum: 0xEA029C0F
	Offset: 0x4748
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_f3fafb74(var_a0b86a77, var_8705b8d8)
{
	level endon("hash_49c1fc58");
	var_b1e02cab = namespace_14b42b8a::function_7922262b(var_a0b86a77, "targetname");
	while(1)
	{
		var_2a97d9fd = namespace_36cbf523::function_9f0ad974(var_b1e02cab.var_722885f3);
		if(var_2a97d9fd < var_8705b8d8)
		{
			break;
		}
		wait(0.1);
	}
	level thread namespace_cc27597::function_43718187(var_a0b86a77, "targetname");
}

/*
	Name: function_14c76b8f
	Namespace: namespace_e1dfe97e
	Checksum: 0x676EC823
	Offset: 0x4810
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_14c76b8f()
{
	namespace_d5067552::function_bae40a28("sm_wakamole_start");
	var_f92a03e7 = function_6ada35ba("bastogne_intro_mortar_group_2", "targetname");
	if(isdefined(var_f92a03e7))
	{
		var_f92a03e7 waittill("hash_4dbf3ae3");
	}
	namespace_d5067552::function_bae40a28("sm_bastogne_ww2_mg_wakamole");
}

/*
	Name: function_8e9f617f
	Namespace: namespace_e1dfe97e
	Checksum: 0xD16395F1
	Offset: 0x4898
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_8e9f617f(var_84fffedf, var_a4652398)
{
	self endon("hash_128f8789");
	self function_d307bf85();
	if(var_a4652398)
	{
		self.var_a4652398 = 1;
	}
	self.var_7dfaf62 = 64;
	self waittill("hash_41d1aaf0");
	self.var_7dfaf62 = var_84fffedf;
}

/*
	Name: function_5656b048
	Namespace: namespace_e1dfe97e
	Checksum: 0x66713B52
	Offset: 0x4910
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_5656b048()
{
	level endon("hash_92cdd020");
	var_f92a03e7 = function_6ada35ba("t_bastogne_hill_running_group", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	namespace_d5067552::function_bae40a28("sm_bastogne_hill_running_group");
	namespace_82b91a51::function_6729b6ba(3, "forest_sniper_spawn");
}

/*
	Name: function_42caf3d5
	Namespace: namespace_e1dfe97e
	Checksum: 0xBB024DD4
	Offset: 0x49B8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_42caf3d5()
{
	level endon("hash_92cdd020");
	var_f92a03e7 = function_6ada35ba("t_bastogne_right_side_runners", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	namespace_d5067552::function_bae40a28("sm_bastogne_right_side_runners");
}

/*
	Name: function_d03371f7
	Namespace: namespace_e1dfe97e
	Checksum: 0xA450642
	Offset: 0x4A40
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d03371f7()
{
	level endon("hash_92cdd020");
	var_f92a03e7 = function_6ada35ba("t_bastogne_right_side_wave2", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	namespace_d5067552::function_bae40a28("sm_bastogne_right_side_wave2");
}

/*
	Name: function_2c145384
	Namespace: namespace_e1dfe97e
	Checksum: 0xB2C52D21
	Offset: 0x4AC8
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_2c145384(var_db803bcf, var_a9ea049a, var_f3a8e7d6)
{
	level endon("hash_92cdd020");
	var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	namespace_2f06d687::function_2b37a3c9(var_a9ea049a, "targetname", &function_8e9f617f, 512, 0);
	namespace_d5067552::function_bae40a28(var_f3a8e7d6);
}

/*
	Name: function_cc4e1226
	Namespace: namespace_e1dfe97e
	Checksum: 0xDD8C7B10
	Offset: 0x4B98
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_cc4e1226()
{
	var_f92a03e7 = function_6ada35ba("t_2nd_hill_rienforcements", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_d5067552::function_bae40a28("sm_bastogne_final_guys");
	namespace_36cbf523::function_8420d8cd("s_turret_kill_2");
	if(namespace_d5067552::function_56a7483f("sm_bastogne_final_guys"))
	{
		namespace_d5067552::function_54bdb053("sm_bastogne_final_guys");
	}
	level thread namespace_bed101ee::function_bf117816();
}

/*
	Name: function_a5529de2
	Namespace: namespace_e1dfe97e
	Checksum: 0x8719BECD
	Offset: 0x4C58
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a5529de2()
{
	level waittill("hash_2c623354");
	namespace_d5067552::function_bae40a28("sm_bastogne_rocks_sniper");
	namespace_36cbf523::function_3c363cb3("sniper_infection");
}

/*
	Name: function_c60eab85
	Namespace: namespace_e1dfe97e
	Checksum: 0xAACBAFEB
	Offset: 0x4CA8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c60eab85()
{
	level waittill("hash_8bede1bc");
	namespace_d5067552::function_bae40a28("sm_bastogne_high_ground_rpg");
	namespace_36cbf523::function_3c363cb3("rpg_ridge");
}

/*
	Name: function_b19769e8
	Namespace: namespace_e1dfe97e
	Checksum: 0x1421A9E6
	Offset: 0x4CF8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b19769e8()
{
	var_f92a03e7 = function_6ada35ba("t_left_side_rocks_fallback", "targetname");
	if(isdefined(var_f92a03e7))
	{
		var_f92a03e7 waittill("hash_4dbf3ae3");
		namespace_d5067552::function_bae40a28("sm_left_side_rocks_fallback");
	}
}

/*
	Name: function_d307bf85
	Namespace: namespace_e1dfe97e
	Checksum: 0xB8C17F0E
	Offset: 0x4D68
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_d307bf85()
{
	if(isdefined(level.var_4aa3708c) && level.var_4aa3708c)
	{
		self.var_15dfd6c = 0.8;
	}
}

/*
	Name: function_d165773d
	Namespace: namespace_e1dfe97e
	Checksum: 0x1FB54058
	Offset: 0x4DA0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_d165773d()
{
	namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_reverse_rocks_01_bundle");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_reverse_rocks_02_bundle");
	var_f92a03e7 = function_6ada35ba("t_reverse_rocks_01_bundle", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_reverse_rocks_02_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_reverse_rocks_01_bundle");
}

/*
	Name: function_dfa07cd7
	Namespace: namespace_e1dfe97e
	Checksum: 0x9C2D8647
	Offset: 0x4E68
	Size: 0x1C3
	Parameters: 5
	Flags: None
*/
function function_dfa07cd7(var_db803bcf, var_eb446787, var_516487a, var_48e51237, var_2a33a821)
{
	var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	var_76bcdea7 = namespace_96fa87af::function_7387a40a(var_eb446787);
	var_76bcdea7.var_cf42b0b2 = 0;
	var_76bcdea7 namespace_37b990db::function_f4546867(0.75, 1.5, 0.25, 0.75, var_76bcdea7.var_cf42b0b2);
	var_76bcdea7 namespace_37b990db::function_bae40a28(0, 1);
	if(var_516487a)
	{
		var_76bcdea7 thread function_e10ca4e3();
	}
	else
	{
		var_76bcdea7 namespace_37b990db::function_9d695d9e(1);
		var_76bcdea7 thread function_41710e19();
	}
	var_76bcdea7 thread function_4f4119d3();
	if(isdefined(var_48e51237))
	{
		namespace_36cbf523::function_8420d8cd(var_48e51237);
		var_76bcdea7 namespace_37b990db::function_9d695d9e(0);
	}
}

/*
	Name: function_41710e19
	Namespace: namespace_e1dfe97e
	Checksum: 0xF7B681E6
	Offset: 0x5038
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_41710e19()
{
	self endon("hash_128f8789");
	var_e563808c = 100 * 100;
	while(isdefined(self.var_7e9a337e) && self.var_7e9a337e)
	{
		if(isdefined(self.var_d925663e) && isdefined(self.var_d925663e[0]) && self.var_d925663e[0] namespace_957e94ce::function_7922262b("in_vehicle"))
		{
			if(function_316422d1(self.var_722885f3, self.var_d925663e[0].var_722885f3) > var_e563808c)
			{
				var_fb960e47 = self.var_d925663e[0];
				var_fb960e47 namespace_96fa87af::function_dca9dba2();
				var_fb960e47 namespace_96fa87af::function_230eadd7(self, "driver", 1);
			}
		}
		wait(1);
	}
}

/*
	Name: function_4f4119d3
	Namespace: namespace_e1dfe97e
	Checksum: 0x9CFA3F84
	Offset: 0x5160
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_4f4119d3()
{
	var_67825717 = function_6ada35ba("volume_turret_introduction", "targetname");
	while(1)
	{
		var_27fea7de = namespace_37b990db::function_b6cb8787(self.var_cf42b0b2);
		if(var_27fea7de)
		{
			var_5ddef2e5 = function_3f10449f();
			for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
			{
				var_6bfe1586 = var_5ddef2e5[var_c957f6b6];
				if(var_6bfe1586 function_32fa5072(var_67825717))
				{
					var_a080d759 = function_f679a325(self.var_722885f3 - var_6bfe1586.var_722885f3);
					var_d230ad83 = function_bc7ce905(var_6bfe1586.var_6ab6f4fd);
					var_c6c121c9 = function_5f9a4869(var_a080d759, var_d230ad83);
					if(var_c6c121c9 > 0.95)
					{
						namespace_80983c42::function_80983c42("fx_expl_mg_bullet_impacts01");
						return;
					}
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_e10ca4e3
	Namespace: namespace_e1dfe97e
	Checksum: 0xFE076611
	Offset: 0x5310
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_e10ca4e3()
{
	level endon("hash_92cdd020");
	var_cf0db380 = undefined;
	var_a60d7a1b = "looking_for_gunner";
	while(1)
	{
		switch(var_a60d7a1b)
		{
			case "looking_for_gunner":
			{
				var_cf0db380 = function_a3606244();
				var_a60d7a1b = "gunner_running_to_turret";
				break;
			}
			case "gunner_running_to_turret":
			{
				var_de993f50 = self function_4ba17e6e(var_cf0db380);
				if(var_de993f50)
				{
					var_a60d7a1b = "gunner_manning_turret";
				}
				else
				{
					var_a60d7a1b = "looking_for_gunner";
				}
				break;
			}
			case "gunner_manning_turret":
			{
				self function_aa881573(var_cf0db380);
				var_a60d7a1b = "looking_for_gunner";
				break;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_a3606244
	Namespace: namespace_e1dfe97e
	Checksum: 0x48BAFA17
	Offset: 0x5430
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_a3606244()
{
	var_4ec85d4a = undefined;
	while(1)
	{
		var_e3b635fb = function_b8494651("axis");
		var_b8c2ad45 = 99999.9;
		if(isdefined(var_e3b635fb))
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
			{
				var_2a97d9fd = function_7d15e2f8(var_e3b635fb[var_c957f6b6].var_722885f3, self.var_722885f3);
				if(var_2a97d9fd < 2500 && var_2a97d9fd < var_b8c2ad45)
				{
					var_b8c2ad45 = var_2a97d9fd;
					var_4ec85d4a = var_e3b635fb[var_c957f6b6];
				}
			}
		}
		else if(isdefined(var_4ec85d4a))
		{
			break;
		}
		wait(0.5);
	}
	return var_4ec85d4a;
}

/*
	Name: function_4ba17e6e
	Namespace: namespace_e1dfe97e
	Checksum: 0x98EE24E6
	Offset: 0x5550
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_4ba17e6e(var_cf0db380)
{
	self.var_be0f3878 = undefined;
	var_cf0db380 thread function_ca1e4e64(self);
	while(1)
	{
		if(!function_5b49d38c(var_cf0db380))
		{
			return 0;
		}
		if(isdefined(self.var_be0f3878))
		{
			break;
		}
		wait(0.05);
	}
	self namespace_37b990db::function_bae40a28(0, 1);
	var_cf0db380 namespace_96fa87af::function_230eadd7(self, "driver", 1);
	return 1;
}

/*
	Name: function_ca1e4e64
	Namespace: namespace_e1dfe97e
	Checksum: 0xA5133728
	Offset: 0x5610
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_ca1e4e64(var_76bcdea7)
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 64;
	self function_169cc712(var_76bcdea7.var_722885f3);
	self waittill("hash_41d1aaf0");
	var_76bcdea7.var_be0f3878 = 1;
}

/*
	Name: function_aa881573
	Namespace: namespace_e1dfe97e
	Checksum: 0x6FBB9F8C
	Offset: 0x5680
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_aa881573(var_cf0db380)
{
	while(function_5b49d38c(var_cf0db380))
	{
		wait(0.01);
	}
	self namespace_37b990db::function_54bdb053(0);
	self.var_be0f3878 = undefined;
}

/*
	Name: function_247f1864
	Namespace: namespace_e1dfe97e
	Checksum: 0xCCEF1D8A
	Offset: 0x56E0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_247f1864()
{
	wait(1);
	namespace_36cbf523::function_3c363cb3("bastogne_intro");
	var_f92a03e7 = function_6ada35ba("t_vo_multiple_routes", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_36cbf523::function_3c363cb3("multiple_routes");
	var_f92a03e7 = function_6ada35ba("t_vo_regroup_halftracks", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_36cbf523::function_3c363cb3("regroup_halftracks");
}

/*
	Name: function_8d291f3b
	Namespace: namespace_e1dfe97e
	Checksum: 0x8982E99E
	Offset: 0x57A8
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_8d291f3b()
{
	if(isdefined(level.var_5b47055f))
	{
		return;
	}
	level.var_5b47055f = 1;
	var_1105cabf = namespace_14b42b8a::function_7faf4c39("bastogne_frozen_soldier", "targetname");
	foreach(var_f4a44050 in var_1105cabf)
	{
		if(namespace_d73b9283::function_d2c92ee7())
		{
			var_76c674e0 = namespace_82b91a51::function_b9fd52a4("c_ger_winter_soldier_1");
		}
		else
		{
			var_76c674e0 = namespace_82b91a51::function_b9fd52a4("c_ger_winter_soldier_2");
		}
		var_76c674e0.var_ff1f6868 = "forest";
		level thread namespace_cc27597::function_43718187(var_f4a44050.var_1157a889, var_76c674e0);
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_afb42159
	Namespace: namespace_e1dfe97e
	Checksum: 0x64C7D379
	Offset: 0x5918
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_afb42159()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_checkpoint_bastogne_mid", "targetname");
	namespace_9f824288::function_5d2cdd99();
	var_7d116593 = namespace_14b42b8a::function_7922262b("s_forest_surreal_lighting_hint", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.var_722885f3);
}


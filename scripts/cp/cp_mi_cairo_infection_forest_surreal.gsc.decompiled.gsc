#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_murders;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_47c46a7d;

/*
	Name: function_32e49d5b
	Namespace: namespace_47c46a7d
	Checksum: 0x52A4F485
	Offset: 0x15C8
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_32e49d5b(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_f25bd8c8::function_ecd2ed4();
	var_ce40c475 = function_99201f25("world_falls_away_chasm", "targetname");
	namespace_84970cc4::function_eaab05dc(var_ce40c475, &function_48f26766);
}

/*
	Name: function_d290ebfa
	Namespace: namespace_47c46a7d
	Checksum: 0xEE917A16
	Offset: 0x1658
	Size: 0x2D3
	Parameters: 2
	Flags: None
*/
function function_d290ebfa(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d0ef8521::function_74d6b22f("cp_level_infection_follow_sarah");
		namespace_36cbf523::function_cbc167();
		level.var_42189297 = namespace_82b91a51::function_740f8516("sarah");
		level.var_42189297 namespace_71e9cb84::function_74d6b22f("sarah_objective_light", 1);
	}
	function_e0d63cf4();
	if(-1)
	{
		namespace_36cbf523::function_c8d7e76("world_falls_away_reverse_anim");
	}
	function_4f978753();
	function_7f95f75e();
	level thread function_203e4c9c();
	level thread function_df55595f();
	level thread function_7c54e6ee();
	level thread function_59de9d07();
	level thread function_56b28f61();
	level thread function_e8d77ec8();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
		level thread namespace_36cbf523::function_3fe1f72("t_sarah_bastogne_objective_", 8, &function_32a538b9);
		namespace_36cbf523::function_1cdb9014();
	}
	level thread function_d9011c5f();
	level thread function_e80ccf78();
	level thread function_483493cf();
	if(-1)
	{
		level thread function_1120dd46();
	}
	if(0)
	{
		var_6bfe1586 = function_3f10449f()[0];
		var_6bfe1586.var_255b9315 = 1;
	}
	var_f92a03e7 = function_6ada35ba("forest_surreal_skipto_complete", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	level notify("hash_1b4a12e5");
	level thread namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_633271eb
	Namespace: namespace_47c46a7d
	Checksum: 0xBF33C9A7
	Offset: 0x1938
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_633271eb()
{
	level thread namespace_36cbf523::function_f6d49772("t_salm_from_the_trials_unde_1", "salm_from_the_trials_unde_1", "end_salm_forest_dialog");
	level thread namespace_36cbf523::function_f6d49772("t_salm_for_the_safety_of_my_1", "salm_for_the_safety_of_my_1", "end_salm_forest_dialog");
	level thread namespace_36cbf523::function_f6d49772("t_salm_my_presentation_to_t_1", "salm_my_presentation_to_t_1", "end_salm_forest_dialog");
	level thread namespace_36cbf523::function_f6d49772("t_salm_subject_e_38_crimi_1", "salm_subject_e_38_crimi_1", "end_salm_forest_dialog");
	level waittill("hash_1b6ae018");
	level thread namespace_36cbf523::function_f6d49772("t_salm_at_the_time_of_his_a_1", "salm_at_the_time_of_his_a_1", "end_salm_forest_dialog");
}

/*
	Name: function_e80ccf78
	Namespace: namespace_47c46a7d
	Checksum: 0xEF015C46
	Offset: 0x1A40
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e80ccf78()
{
	wait(0.2);
	namespace_36cbf523::function_3ea445de();
}

/*
	Name: function_95040800
	Namespace: namespace_47c46a7d
	Checksum: 0x70C953A
	Offset: 0x1A68
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_95040800(var_2a97d9fd)
{
	self endon("hash_128f8789");
	while(self namespace_36cbf523::function_6f990596(var_2a97d9fd))
	{
		wait(0.1);
	}
	if(isdefined(self))
	{
		self namespace_36cbf523::function_5e78ab8c();
	}
}

/*
	Name: function_1983bda0
	Namespace: namespace_47c46a7d
	Checksum: 0xE63A19E4
	Offset: 0x1AD0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_1983bda0(var_b04bc952, var_74cd64bc)
{
	function_f4ab002c();
	level thread namespace_47ecfa2f::function_fbe0ab05("black_station", 0);
}

/*
	Name: function_503c0a2
	Namespace: namespace_47c46a7d
	Checksum: 0xD22A0CFD
	Offset: 0x1B20
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_503c0a2(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_9f54e23d
	Namespace: namespace_47c46a7d
	Checksum: 0x4AD7FCE4
	Offset: 0x1B50
	Size: 0x29B
	Parameters: 2
	Flags: None
*/
function function_9f54e23d(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
	}
	function_7b244c18();
	level thread function_e15b5dc7();
	level thread function_e9f75cf5();
	wait(0.1);
	if(0)
	{
		var_6bfe1586 = function_3f10449f()[0];
		var_6bfe1586.var_255b9315 = 1;
	}
	if(!isdefined(level.var_bce99b53))
	{
		level thread function_4f978753();
	}
	if(-1)
	{
		level thread namespace_36cbf523::function_c8d7e76("world_falls_away_wolf_reverse_anim");
	}
	namespace_f25bd8c8::function_341d8f7a();
	namespace_f25bd8c8::function_8c0b0cd0();
	namespace_f25bd8c8::function_aea367c1();
	if(var_74cd64bc)
	{
		var_7d116593 = namespace_14b42b8a::function_7922262b("s_forest_wolves_lighting_hint", "targetname");
		namespace_36cbf523::function_7aca917c(var_7d116593.var_722885f3);
		namespace_d0ef8521::function_74d6b22f("cp_level_infection_follow_sarah");
		level.var_42189297 = namespace_82b91a51::function_740f8516("sarah");
		function_e0d63cf4();
		function_7f95f75e();
		level thread namespace_bed101ee::function_daeb8be9();
		namespace_d7916d65::function_a2995f22();
		level.var_42189297 namespace_71e9cb84::function_74d6b22f("sarah_objective_light", 1);
		level thread namespace_36cbf523::function_3fe1f72("t_sarah_bastogne_objective_", 13, &function_32a538b9);
	}
	level thread function_4e7bce99();
	function_7b0c81e4();
	function_80ea1787();
	level thread namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_71196f64
	Namespace: namespace_47c46a7d
	Checksum: 0x82280792
	Offset: 0x1DF8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_71196f64(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_e9f75cf5
	Namespace: namespace_47c46a7d
	Checksum: 0xB258D574
	Offset: 0x1E28
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e9f75cf5()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_plrf_sarah_who_was_tha_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_sarah_who_was_tha_0");
}

/*
	Name: function_48e4fcb4
	Namespace: namespace_47c46a7d
	Checksum: 0xF439C987
	Offset: 0x1E70
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_48e4fcb4(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d7916d65::function_a2995f22();
		function_7519eaff();
	}
	function_42297537();
	level notify("hash_5d80c772");
	level thread namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_dd270bfd
	Namespace: namespace_47c46a7d
	Checksum: 0xCBB62905
	Offset: 0x1F00
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_dd270bfd(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_42297537
	Namespace: namespace_47c46a7d
	Checksum: 0x90206A6D
	Offset: 0x1F30
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_42297537()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_cross_sky_bridge");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_cross_chasm");
}

/*
	Name: function_7519eaff
	Namespace: namespace_47c46a7d
	Checksum: 0x4717E3B6
	Offset: 0x1F70
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_7519eaff()
{
	level namespace_82b91a51::function_ef3f75eb("chasm_wind");
	level thread function_9a71c521();
	namespace_47ecfa2f::function_d7cb3668();
	function_37cbcf1a("evt_pullapart_world", (0, 0, 0));
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_follow_sarah");
	function_7f95f75e();
	level thread namespace_bed101ee::function_daeb8be9();
	var_d8d55e31 = function_99201f25("world_falls_away_chasm", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_d8d55e31.size; var_c957f6b6++)
	{
		var_cbb15570 = var_d8d55e31[var_c957f6b6].var_b07228b6;
		if(isdefined(var_cbb15570))
		{
			var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_cbb15570, "targetname");
			var_d8d55e31[var_c957f6b6].var_722885f3 = var_ebe66fdc.var_722885f3;
		}
	}
	level thread function_e6cc7e28(1);
	namespace_80983c42::function_80983c42("light_wfa_end");
	var_d8d55e31[0] function_c2931a36("evt_pullapart_world_looper", 3);
	level thread function_12c8020a();
}

/*
	Name: function_cfaebb13
	Namespace: namespace_47c46a7d
	Checksum: 0x405F0D
	Offset: 0x2160
	Size: 0xA3
	Parameters: 2
	Flags: None
*/
function function_cfaebb13(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_7519eaff();
		namespace_d0ef8521::function_31cd1834("cp_level_infection_cross_chasm");
		namespace_d7916d65::function_a2995f22();
	}
	else
	{
		level thread namespace_47ecfa2f::function_d7cb3668();
	}
	function_f4ab002c();
	level thread namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_de606506
	Namespace: namespace_47c46a7d
	Checksum: 0x9AADCB30
	Offset: 0x2210
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_de606506(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_80983c42::function_593e8a39("lgt_forest_tunnel_02");
	namespace_80983c42::function_593e8a39("lgt_forest_tunnel_03");
	namespace_80983c42::function_593e8a39("lgt_forest_tunnel_04");
	namespace_80983c42::function_593e8a39("lgt_forest_tunnel_05");
}

/*
	Name: function_d9011c5f
	Namespace: namespace_47c46a7d
	Checksum: 0xFB534EAF
	Offset: 0x22A0
	Size: 0x145
	Parameters: 0
	Flags: None
*/
function function_d9011c5f()
{
	level thread function_97f6881();
	level thread namespace_ce7c3ed5::function_724abc52(0.1, 1, 1, 0.3, "white");
	var_dc97c2d = namespace_14b42b8a::function_7922262b("world_falls_away_start_struct", "targetname");
	function_37cbcf1a("evt_night_transition", var_dc97c2d.var_722885f3);
	level thread namespace_bed101ee::function_daeb8be9();
	var_ebe66fdc = namespace_14b42b8a::function_7922262b("s_night_transition", "targetname");
	for(var_74952a22 = 0; var_74952a22 < 20; var_74952a22++)
	{
		function_5e09918e("cp_infection_world_falls_break_rumble", var_ebe66fdc.var_722885f3);
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_7b244c18
	Namespace: namespace_47c46a7d
	Checksum: 0x7B135C38
	Offset: 0x23F0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_7b244c18()
{
	namespace_cc27597::function_8f9f34e0("cin_inf_07_03_worldfallsaway_vign_pain", &function_5f558686, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_07_03_worldfallsaway_vign_pain", &namespace_36cbf523::function_c32dc5f6, "init");
	namespace_cc27597::function_8f9f34e0("cin_inf_07_03_worldfallsaway_vign_pain", &namespace_36cbf523::function_368baff9, "play");
	level.var_3f831f3b["scene"]["cin_inf_07_02_worldfallsaway_vign_direwolves_eating"].var_485299d7[0].var_7d581f10 = undefined;
	level.var_3f831f3b["scene"]["cin_inf_07_02_worldfallsaway_vign_direwolves_eating"].var_485299d7[1].var_7d581f10 = undefined;
	level.var_3f831f3b["scene"]["cin_inf_07_02_worldfallsaway_vign_direwolves_eating"].var_485299d7[2].var_7d581f10 = undefined;
	namespace_cc27597::function_8f9f34e0("cin_inf_07_02_worldfallsaway_vign_direwolves_eating", &function_6d6d7d71, "init");
}

/*
	Name: function_e0d63cf4
	Namespace: namespace_47c46a7d
	Checksum: 0xCA71DB05
	Offset: 0x2558
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e0d63cf4()
{
	namespace_36cbf523::function_aa0ddbc3(1);
	namespace_2f06d687::function_2b37a3c9("sm_bastogne_hill_guys_1", "targetname", &function_c6b52615);
	namespace_2f06d687::function_2b37a3c9("world_falls_away_intro_guys", "targetname", &function_c6b52615);
	namespace_2f06d687::function_2b37a3c9("wolf", "script_noteworthy", &function_21caff3e);
}

/*
	Name: function_7f95f75e
	Namespace: namespace_47c46a7d
	Checksum: 0x6401E6B4
	Offset: 0x2610
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_7f95f75e()
{
	var_e9ddc8f2 = function_99201f25("falling_death", "targetname");
	foreach(var_4dbf3ae3 in var_e9ddc8f2)
	{
		var_4dbf3ae3 thread function_c8049804();
	}
}

/*
	Name: function_c8049804
	Namespace: namespace_47c46a7d
	Checksum: 0x93A29EB
	Offset: 0x26D0
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_c8049804()
{
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_aef176e7);
		if(function_65f192a6(var_aef176e7) && (!isdefined(var_aef176e7.var_e7c2cbb4) && var_aef176e7.var_e7c2cbb4))
		{
			var_aef176e7 thread function_2f645114();
		}
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_2f645114
	Namespace: namespace_47c46a7d
	Checksum: 0xE58ED059
	Offset: 0x2768
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_2f645114()
{
	self endon("hash_128f8789");
	self.var_e7c2cbb4 = 1;
	wait(1);
	self function_173f6520();
	self.var_e7c2cbb4 = 0;
	self function_c3945cd5(self.var_3a90f16b / 10, self.var_722885f3);
	if(self.var_3a90f16b < 1)
	{
		self.var_3a90f16b = 1;
	}
}

/*
	Name: function_173f6520
	Namespace: namespace_47c46a7d
	Checksum: 0x470E6659
	Offset: 0x2800
	Size: 0x343
	Parameters: 0
	Flags: None
*/
function function_173f6520()
{
	self endon("hash_128f8789");
	var_6194780b = level.var_31aefea8;
	var_624a0b0b = namespace_4a43ba8::function_5880f755("cp_coop_respawn");
	var_24307637 = namespace_1d795d47::function_c13ce5f8(self, var_624a0b0b, var_6194780b);
	/#
		namespace_33b293fd::function_a7ee953(var_24307637.size, "Dev Block strings are not supported");
	#/
	var_4bd163fe = function_e7bdc1a1(self.var_722885f3, var_24307637);
	if(function_ba336b7(var_4bd163fe.var_722885f3))
	{
		foreach(var_4b51ab17 in var_24307637)
		{
			if(var_4b51ab17 !== var_4bd163fe)
			{
				var_4bd163fe = var_4b51ab17;
				break;
			}
		}
	}
	self.var_e7c2cbb4 = 1;
	self function_83fd42b5();
	self function_8c1f7070();
	self namespace_82b91a51::function_56cee95(1);
	self.var_255b9315 = 1;
	self namespace_71e9cb84::function_688ed188("postfx_igc");
	namespace_82b91a51::function_76f13293();
	self function_a30814d(var_4bd163fe.var_722885f3);
	self function_eda2be50(var_4bd163fe.var_6ab6f4fd);
	if(function_27c72c1b())
	{
		if(isdefined(level.var_203903e))
		{
			[[level.var_203903e]](self, 4);
		}
	}
	else
	{
		self namespace_82b91a51::function_11a89b44();
	}
	self function_bb863f19();
	self namespace_71e9cb84::function_74d6b22f("player_spawn_fx", 1);
	self namespace_82b91a51::function_67520c6a(0.5, "death", &namespace_71e9cb84::function_74d6b22f, "player_spawn_fx", 0);
	wait(1.5);
	self namespace_82b91a51::function_56cee95(0);
	wait(2);
	self function_4890e520();
	self.var_255b9315 = 0;
	self.var_e7c2cbb4 = 0;
}

/*
	Name: function_4f978753
	Namespace: namespace_47c46a7d
	Checksum: 0x171548FE
	Offset: 0x2B50
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_4f978753()
{
	level.var_bce99b53 = 1;
	var_3f47ee34 = function_99201f25("bastogne_world_falls_away", "script_noteworthy");
	level thread namespace_84970cc4::function_966ecb29(var_3f47ee34, &function_10eef3d1);
}

/*
	Name: function_10eef3d1
	Namespace: namespace_47c46a7d
	Checksum: 0xCBF4E6FF
	Offset: 0x2BC8
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function function_10eef3d1()
{
	if(self.var_e6e9b8de == "script_model")
	{
		var_8149fea6 = self.var_6df9264;
	}
	else
	{
		var_8149fea6 = self.var_722885f3;
	}
	if(!isdefined(self.var_b07228b6))
	{
		return;
	}
	var_ebe66fdc = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	if(!isdefined(var_ebe66fdc))
	{
		return;
	}
	var_ebe66fdc.var_1063f543 = self;
	self.var_efe20130 = 0;
	var_c55dcd82 = var_ebe66fdc.var_722885f3;
	var_f8456b37 = 1260;
	if(isdefined(var_ebe66fdc.var_f8456b37))
	{
		var_f8456b37 = var_ebe66fdc.var_f8456b37;
	}
	level thread function_7b6b3089(var_ebe66fdc, var_f8456b37);
	level waittill(var_ebe66fdc.var_db7bb468);
	if(isdefined(self.var_db7bb468) && self.var_db7bb468 == "moving_platform")
	{
		self.var_1912831c = 1;
		self function_b0b70abb(1);
	}
	else
	{
		self.var_1912831c = 0;
	}
	var_6e456024 = var_ebe66fdc.var_722885f3;
	self function_c7aa396d();
	var_60db70fa = function_72a94f05(0.5, 1);
	self thread function_7e730dc3("cp_infection_world_falls_break_rumble", var_60db70fa, 1);
	self function_921a1574("evt_small_flyaway_rumble");
	if(self.var_1912831c == 0)
	{
		wait(var_60db70fa);
	}
	self function_a44c8b8c(var_6e456024, self.var_1912831c, undefined);
	self function_38c395f4();
	wait(1);
	self function_7c90d18c(var_6e456024);
	self function_dc8c8404();
}

/*
	Name: function_38c395f4
	Namespace: namespace_47c46a7d
	Checksum: 0xBF4B466C
	Offset: 0x2E78
	Size: 0xDF
	Parameters: 0
	Flags: None
*/
function function_38c395f4()
{
	self.var_efe20130 = 1;
	self.var_db9ec4c4 = 80;
	self.var_385072d7 = 1.7;
	self.var_b6d84394 = 0.8;
	if(function_26299103(100) > 60)
	{
		self.var_db9ec4c4 = self.var_db9ec4c4 + function_dc99997a(20, 50);
	}
	self notify("hash_6db7529d");
	wait(0.05);
	self function_8bdea13c(self.var_db9ec4c4, self.var_385072d7, self.var_b6d84394, self.var_b6d84394);
	self waittill("hash_a21db68a");
}

/*
	Name: function_7c90d18c
	Namespace: namespace_47c46a7d
	Checksum: 0xFFBC17BF
	Offset: 0x2F60
	Size: 0x17F
	Parameters: 1
	Flags: None
*/
function function_7c90d18c(var_c55dcd82)
{
	self notify("hash_89c47e3d");
	var_85419cfe = function_72a94f05(1.2, 2.5);
	self thread function_7e730dc3("cp_infection_world_falls_away_rumble", var_85419cfe, 1);
	var_ab2048f4 = 0.28;
	var_f92960c = var_85419cfe;
	var_dd43e5e9 = 1850;
	function_9cf04c2e(var_ab2048f4, var_f92960c, var_c55dcd82, var_dd43e5e9);
	function_37cbcf1a("evt_small_flyaway_go", var_c55dcd82);
	function_1b8bf759(self.var_6df9264);
	if(self.var_1912831c)
	{
		self function_8bdea13c(-3000, 5.5, 2);
	}
	else
	{
		self function_8bdea13c(-3000, 5.5, 2);
	}
	self waittill("hash_a21db68a");
}

/*
	Name: function_a44c8b8c
	Namespace: namespace_47c46a7d
	Checksum: 0xC0C850C2
	Offset: 0x30E8
	Size: 0x15B
	Parameters: 3
	Flags: None
*/
function function_a44c8b8c(var_6e456024, var_1912831c, var_e2439cba)
{
	var_ab2048f4 = 0.28;
	var_f92960c = function_72a94f05(0.5, 1.5);
	var_dd43e5e9 = 1850;
	if(var_1912831c)
	{
		var_f92960c = 1;
	}
	if(isdefined(var_e2439cba))
	{
		if(self == level)
		{
			var_b2dab111 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_6e456024);
			var_b2dab111.var_ff1f6868 = "forest_wolves";
			namespace_82b91a51::function_76f13293();
			var_b2dab111 thread function_3d3371d5();
		}
		else
		{
			self thread function_3d3371d5();
		}
	}
	function_9cf04c2e(var_ab2048f4, var_f92960c, var_6e456024, var_dd43e5e9);
	wait(var_f92960c);
	function_37cbcf1a("evt_small_flyaway_start", var_6e456024);
}

/*
	Name: function_3d3371d5
	Namespace: namespace_47c46a7d
	Checksum: 0x5D8EF4E
	Offset: 0x3250
	Size: 0xBD
	Parameters: 0
	Flags: None
*/
function function_3d3371d5()
{
	self endon("hash_128f8789");
	for(var_74952a22 = 0; var_74952a22 < 10; var_74952a22++)
	{
		self namespace_71e9cb84::function_331efedc("cp_infection_world_falls_break_rumble", 1);
		namespace_82b91a51::function_76f13293();
	}
	wait(1);
	for(var_74952a22 = 0; var_74952a22 < 20; var_74952a22++)
	{
		self namespace_71e9cb84::function_331efedc("cp_infection_world_falls_break_rumble", 1);
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_67df7c1f
	Namespace: namespace_47c46a7d
	Checksum: 0x322866B1
	Offset: 0x3318
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_67df7c1f()
{
	var_cbb15570 = self.var_6df9264 + "_skirt";
	var_4176ece1 = function_99201f25(var_cbb15570, "targetname");
	if(isdefined(var_4176ece1))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_4176ece1.size; var_c957f6b6++)
		{
			var_4176ece1[var_c957f6b6] thread function_2b2b27eb(self);
		}
	}
}

/*
	Name: function_2b2b27eb
	Namespace: namespace_47c46a7d
	Checksum: 0x9D361C92
	Offset: 0x33C0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_2b2b27eb(var_cc46221b)
{
	self function_dc8c8404();
}

/*
	Name: function_1b8bf759
	Namespace: namespace_47c46a7d
	Checksum: 0xE779DE45
	Offset: 0x33F0
	Size: 0x273
	Parameters: 1
	Flags: None
*/
function function_1b8bf759(var_c3ffa042)
{
	var_982bfcf2 = var_c3ffa042.size;
	var_7c077f26 = var_c3ffa042[var_982bfcf2 - 3] + var_c3ffa042[var_982bfcf2 - 2] + var_c3ffa042[var_982bfcf2 - 1];
	var_cbb15570 = "light_wfa_" + var_7c077f26;
	var_a140185b = [];
	var_a140185b[var_a140185b.size] = "light_wfa_003";
	var_a140185b[var_a140185b.size] = "light_wfa_017";
	var_a140185b[var_a140185b.size] = "light_wfa_028";
	var_a140185b[var_a140185b.size] = "light_wfa_034";
	var_a140185b[var_a140185b.size] = "light_wfa_049";
	var_a140185b[var_a140185b.size] = "light_wfa_060";
	var_a140185b[var_a140185b.size] = "light_wfa_069";
	var_a140185b[var_a140185b.size] = "light_wfa_080";
	var_a140185b[var_a140185b.size] = "light_wfa_088";
	var_a140185b[var_a140185b.size] = "light_wfa_092";
	var_a140185b[var_a140185b.size] = "light_wfa_100";
	var_a140185b[var_a140185b.size] = "light_wfa_106";
	var_a140185b[var_a140185b.size] = "light_wfa_125";
	var_a140185b[var_a140185b.size] = "light_wfa_133";
	var_a140185b[var_a140185b.size] = "light_wfa_135";
	var_a140185b[var_a140185b.size] = "light_wfa_136";
	var_a140185b[var_a140185b.size] = "light_wfa_138";
	var_a140185b[var_a140185b.size] = "light_wfa_143";
	var_eb568523 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a140185b.size; var_c957f6b6++)
	{
		if(var_cbb15570 == var_a140185b[var_c957f6b6])
		{
			var_eb568523 = 1;
			break;
		}
	}
	if(var_eb568523)
	{
		namespace_80983c42::function_80983c42(var_cbb15570);
	}
}

/*
	Name: function_c7aa396d
	Namespace: namespace_47c46a7d
	Checksum: 0x219E3FE4
	Offset: 0x3670
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_c7aa396d()
{
	self thread function_67df7c1f();
	self namespace_71e9cb84::function_331efedc("wfa_steam_sound", 1);
	var_994a19a0 = function_f45850ec(self.var_6df9264, 20, self.var_6df9264.size);
	var_77996abe = "forest_surreal_groundfall_steam_" + var_994a19a0;
	namespace_80983c42::function_80983c42(var_77996abe);
}

/*
	Name: function_7e730dc3
	Namespace: namespace_47c46a7d
	Checksum: 0x8F888C8E
	Offset: 0x3720
	Size: 0x63
	Parameters: 3
	Flags: None
*/
function function_7e730dc3(var_cbb15570, var_524f5a91, var_506b336f)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_524f5a91; var_c957f6b6++)
	{
		self namespace_71e9cb84::function_331efedc(var_cbb15570, 1);
		wait(var_506b336f);
	}
}

/*
	Name: function_7b6b3089
	Namespace: namespace_47c46a7d
	Checksum: 0xABD73FF1
	Offset: 0x3790
	Size: 0x14F
	Parameters: 2
	Flags: None
*/
function function_7b6b3089(var_ebe66fdc, var_f8456b37)
{
	level endon("hash_62ab67ff");
	wait(0.1);
	if(isdefined(var_ebe66fdc.var_16d4a623))
	{
		return;
	}
	var_ebe66fdc.var_16d4a623 = 1;
	while(1)
	{
		if(isdefined(var_ebe66fdc.var_7a7e61d8))
		{
			return;
		}
		var_5ddef2e5 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
		{
			var_6bfe1586 = var_5ddef2e5[var_c957f6b6];
			var_2a97d9fd = function_87ea89a(var_ebe66fdc.var_722885f3, var_6bfe1586.var_722885f3);
			if(var_2a97d9fd < var_f8456b37)
			{
				level notify(var_ebe66fdc.var_db7bb468);
				var_ebe66fdc.var_7a7e61d8 = 1;
				return;
				continue;
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_b090c84d
	Namespace: namespace_47c46a7d
	Checksum: 0x1DBDAD8E
	Offset: 0x38E8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_b090c84d()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_lgt_forest_tunnel_02", "targetname");
	namespace_80983c42::function_80983c42("lgt_forest_tunnel_02");
	function_37cbcf1a("evt_tunnel_lights_on_01", (2813, -589, -605));
	namespace_4dbf3ae3::function_1ab5ebec("t_lgt_forest_tunnel_03", "targetname");
	namespace_80983c42::function_80983c42("lgt_forest_tunnel_03");
	function_37cbcf1a("evt_tunnel_lights_on_02", (3030, -493, -636));
	namespace_4dbf3ae3::function_1ab5ebec("t_lgt_forest_tunnel_04", "targetname");
	namespace_80983c42::function_80983c42("lgt_forest_tunnel_04");
	function_37cbcf1a("evt_tunnel_lights_on_03", (3651, -641, -620));
	namespace_4dbf3ae3::function_1ab5ebec("t_lgt_forest_tunnel_05", "targetname");
	namespace_80983c42::function_80983c42("lgt_forest_tunnel_05");
	function_37cbcf1a("evt_tunnel_lights_on_04", (3489, -1158, -657));
}

/*
	Name: function_12c8020a
	Namespace: namespace_47c46a7d
	Checksum: 0x2C76EC90
	Offset: 0x3A78
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_12c8020a()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_thick_01_bundle");
	namespace_80983c42::function_80983c42("lgt_forest_tunnel_01");
	level namespace_ad23e503::function_1ab5ebec("flag_player_enters_cave");
	function_37cbcf1a("evt_tunnel_lights_on_01", (2438, 63, -644));
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
	level thread function_b090c84d();
	level waittill("hash_5d80c772");
	namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wire_thick_01_bundle");
}

/*
	Name: function_9a71c521
	Namespace: namespace_47c46a7d
	Checksum: 0x99B514D1
	Offset: 0x3B60
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9a71c521()
{
	namespace_4dbf3ae3::function_1ab5ebec("cave_entrance");
	level namespace_ad23e503::function_74d6b22f("flag_player_enters_cave");
}

/*
	Name: function_97f6881
	Namespace: namespace_47c46a7d
	Checksum: 0x942D2865
	Offset: 0x3BA8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_97f6881()
{
	level namespace_71b8dba1::function_13b3b16a("plyr_why_are_we_here_sar_0", 1);
	namespace_36cbf523::function_637cd603();
	level namespace_71b8dba1::function_a463d127("hall_don_t_you_know_0", 1, "NO_DNI");
	namespace_36cbf523::function_637cd603();
	level namespace_71b8dba1::function_a463d127("hall_so_much_suffering_s_0", 1, "NO_DNI");
}

/*
	Name: function_caee3551
	Namespace: namespace_47c46a7d
	Checksum: 0x4F1DBE8F
	Offset: 0x3C60
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_caee3551()
{
	level waittill("hash_973240bd");
	level namespace_71b8dba1::function_13b3b16a("plyr_what_the_hell_2", 0.5);
	namespace_36cbf523::function_637cd603();
	level namespace_71b8dba1::function_a463d127("hall_the_dire_wolves_a_0", 0, "NO_DNI");
}

/*
	Name: function_4e7bce99
	Namespace: namespace_47c46a7d
	Checksum: 0x1474AB8A
	Offset: 0x3CE0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_4e7bce99()
{
	level endon("hash_fcccf4c9");
	namespace_4dbf3ae3::function_1ab5ebec("t_ending_dogs");
	level namespace_71b8dba1::function_81141386("corv_listen_only_to_the_s_0");
	level namespace_71b8dba1::function_81141386("corv_let_your_mind_relax_0");
	level namespace_71b8dba1::function_81141386("corv_imagine_yourself_in_0");
}

/*
	Name: function_5f558686
	Namespace: namespace_47c46a7d
	Checksum: 0x74272384
	Offset: 0x3D70
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_5f558686(var_c77d2837)
{
	var_dc5e890e = var_c77d2837["sarah"];
	var_dc5e890e function_ca711294("allies");
	var_6bfe1586 = namespace_36cbf523::function_586b8f7b(var_c77d2837["sarah"].var_722885f3);
	var_dc5e890e waittill("hash_b5d56b2c");
	level notify("hash_b5d56b2c");
}

/*
	Name: function_7c54e6ee
	Namespace: namespace_47c46a7d
	Checksum: 0xAB46A9D0
	Offset: 0x3E10
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_7c54e6ee()
{
	var_f92a03e7 = function_6ada35ba("t_runner_before_pit", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	var_215f11e1 = function_99201f25("sp_runner_before_pit", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_215f11e1.size; var_c957f6b6++)
	{
		namespace_2f06d687::function_7387a40a(var_215f11e1[var_c957f6b6], &function_e372c0cc, 0);
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_e372c0cc
	Namespace: namespace_47c46a7d
	Checksum: 0xA34CF6AC
	Offset: 0x3EE8
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_e372c0cc(var_fdd83dd8)
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 94;
	self waittill("hash_41d1aaf0");
	if(!(isdefined(var_fdd83dd8) && var_fdd83dd8))
	{
		self.var_7dfaf62 = 1024;
	}
}

/*
	Name: function_c6b52615
	Namespace: namespace_47c46a7d
	Checksum: 0x5F7155D8
	Offset: 0x3F40
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_c6b52615()
{
	if(isdefined(self.var_caae374e) && self.var_db7bb468 == "fall_to_death")
	{
		self.var_c584775c = 1;
		self.var_7dfaf62 = 64;
		function_a9c39c8b(self);
		return;
	}
	self thread namespace_36cbf523::function_b86426b1();
}

/*
	Name: function_7b0c81e4
	Namespace: namespace_47c46a7d
	Checksum: 0xA064CF07
	Offset: 0x3FB8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_7b0c81e4()
{
	level.var_9b646a7c = 400;
	level.var_59ce54fe = 1000;
	level thread function_1032e35f();
	var_f92a03e7 = function_6ada35ba("wolves_attack_in_trench", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	level notify("hash_bc20f93d");
	level thread function_caee3551();
	level thread function_b3ec6692();
	level thread function_74df0f52();
	level thread function_94a91f66();
	level thread function_bbfdb42e();
	level thread function_ded57b7b();
	level thread function_feeec702();
	level thread function_3f16df71();
}

/*
	Name: function_74df0f52
	Namespace: namespace_47c46a7d
	Checksum: 0xE114DD52
	Offset: 0x40F8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_74df0f52()
{
	level thread namespace_cc27597::function_43718187("cin_inf_07_02_worldfallsaway_vign_direwolf_entrance");
	level thread namespace_cc27597::function_43718187("cin_inf_07_02_worldfallsaway_vign_direwolf_entrance_bunker");
	level thread namespace_cc27597::function_c35e6aab("dude_getting_eaten_in_trench");
}

/*
	Name: function_6d6d7d71
	Namespace: namespace_47c46a7d
	Checksum: 0x363FE9AF
	Offset: 0x4168
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function function_6d6d7d71(var_c77d2837)
{
	var_75443889 = var_c77d2837["dude_getting_eaten"];
	var_75443889.var_255b9315 = 1;
	var_75443889 namespace_175490fb::function_59965309("cybercom_fireflyswarm");
	var_8ae5c6a1 = 1;
	while(var_8ae5c6a1)
	{
		var_5ddef2e5 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
		{
			var_2a97d9fd = function_7d15e2f8(self.var_722885f3, var_5ddef2e5[var_c957f6b6].var_722885f3);
			if(var_2a97d9fd < 600)
			{
				var_8ae5c6a1 = 0;
				break;
			}
		}
		var_2da301ea = var_c77d2837["intro_wolf_eating_1"];
		var_7a08781 = var_c77d2837["intro_wolf_eating_2"];
		if(!function_5b49d38c(var_2da301ea) || !function_5b49d38c(var_7a08781))
		{
			var_8ae5c6a1 = 0;
			break;
		}
		wait(0.05);
	}
	level thread namespace_cc27597::function_43718187(self.var_170527fb);
}

/*
	Name: function_94a91f66
	Namespace: namespace_47c46a7d
	Checksum: 0xD35BDCC4
	Offset: 0x4320
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_94a91f66()
{
	var_f02d4245 = namespace_14b42b8a::function_7faf4c39("wolf_intro_howl_struct", "targetname");
	level notify("hash_973240bd");
	foreach(var_14b42b8a in var_f02d4245)
	{
		function_37cbcf1a("aml_dire_wolf_howl", var_14b42b8a.var_722885f3);
		wait(0.25);
	}
}

/*
	Name: function_c1fecd2
	Namespace: namespace_47c46a7d
	Checksum: 0xD26E26E
	Offset: 0x4408
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_c1fecd2()
{
	var_da1cc39e = function_99201f25("trench_dogs_coop", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_da1cc39e.size; var_c957f6b6++)
	{
		namespace_2f06d687::function_7387a40a(var_da1cc39e[var_c957f6b6]);
		namespace_82b91a51::function_76f13293();
	}
	namespace_d5067552::function_bae40a28("sm_trench_dogs_wave2");
}

/*
	Name: function_bbfdb42e
	Namespace: namespace_47c46a7d
	Checksum: 0x2CDC9A67
	Offset: 0x44B0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_bbfdb42e()
{
	var_f92a03e7 = function_6ada35ba("t_jumping_dogs_after_trench", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_d5067552::function_bae40a28("sm_dogs_left_side");
}

/*
	Name: function_ded57b7b
	Namespace: namespace_47c46a7d
	Checksum: 0x32E6C1EB
	Offset: 0x4510
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_ded57b7b()
{
	var_f92a03e7 = function_6ada35ba("t_jumping_dogs_after_trench", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_d5067552::function_bae40a28("sm_dogs_right_side");
}

/*
	Name: function_feeec702
	Namespace: namespace_47c46a7d
	Checksum: 0x17817C67
	Offset: 0x4570
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_feeec702()
{
	level endon("hash_4797687e");
	level thread function_c0aa5a1d();
	level thread function_4014524e();
	while(1)
	{
		if(isdefined(level.var_f6c9b8d) && level.var_f6c9b8d && isdefined(level.var_efe7c3d0))
		{
			break;
		}
		wait(0.05);
	}
	while(1)
	{
		var_60db70fa = GetTime();
		var_5ecb0b6d = var_60db70fa - level.var_efe7c3d0 / 1000;
		if(var_5ecb0b6d > 5)
		{
			break;
		}
		wait(0.05);
	}
	level notify("hash_119eb2e2");
	level notify("hash_da1fa42e");
	level.var_9b646a7c = 250;
	level.var_59ce54fe = 600;
	namespace_d5067552::function_bae40a28("sm_ending_dogs_left");
}

/*
	Name: function_3f16df71
	Namespace: namespace_47c46a7d
	Checksum: 0x566FA1C4
	Offset: 0x4698
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_3f16df71()
{
	level endon("hash_4797687e");
	level waittill("hash_da1fa42e");
	namespace_d5067552::function_bae40a28("sm_ending_dogs_right");
}

/*
	Name: function_c0aa5a1d
	Namespace: namespace_47c46a7d
	Checksum: 0x7FCB9E68
	Offset: 0x46D8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c0aa5a1d()
{
	var_f92a03e7 = function_6ada35ba("t_ending_dogs", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	level.var_f6c9b8d = 1;
}

/*
	Name: function_4014524e
	Namespace: namespace_47c46a7d
	Checksum: 0xBD33CE7E
	Offset: 0x4730
	Size: 0x1C7
	Parameters: 0
	Flags: None
*/
function function_4014524e()
{
	var_ebe66fdc = namespace_14b42b8a::function_7922262b("s_turn_off_eyecandy_wolves", "targetname");
	var_d230ad83 = function_bc7ce905(var_ebe66fdc.var_6ab6f4fd);
	while(1)
	{
		if(namespace_d5067552::function_abea3011("sm_dogs_left_side") && namespace_d5067552::function_abea3011("sm_dogs_right_side"))
		{
			if(!isdefined(level.var_efe7c3d0))
			{
				level.var_efe7c3d0 = GetTime();
			}
			var_5ddef2e5 = function_3f10449f();
			var_a540aa3f = 0;
			for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
			{
				var_6bfe1586 = var_5ddef2e5[var_c957f6b6];
				var_a080d759 = var_6bfe1586.var_722885f3 - var_ebe66fdc.var_722885f3;
				var_a080d759 = function_f679a325(var_a080d759);
				var_c6c121c9 = function_5f9a4869(var_a080d759, var_d230ad83);
				if(var_c6c121c9 > 0.2)
				{
					var_a540aa3f++;
				}
			}
			if(var_a540aa3f == var_5ddef2e5.size)
			{
				break;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_21caff3e
	Namespace: namespace_47c46a7d
	Checksum: 0x10E186AC
	Offset: 0x4900
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_21caff3e()
{
	self endon("hash_128f8789");
	if(!isdefined(level.var_9b646a7c))
	{
		return;
	}
	self.var_44a68a57 = &function_8e74fa1d;
	if(!(isdefined(self.var_caae374e) && self.var_caae374e == "no_audio"))
	{
		function_37cbcf1a("aml_dire_wolf_howl", self.var_722885f3);
		self thread namespace_36cbf523::function_48da4758();
	}
	var_efbd053b = 0;
	if(isdefined(self.var_db7bb468) && self.var_db7bb468 == "sprinter")
	{
		self namespace_d84e54db::function_ceb883cd("sprint", 1);
	}
	else if(isdefined(self.var_db7bb468) && self.var_db7bb468 == "stalker")
	{
		var_efbd053b = function_dc99997a(6, 12);
	}
	var_2a97d9fd = function_dc99997a(level.var_9b646a7c, level.var_59ce54fe);
	if(isdefined(self.var_6604b19f))
	{
		var_2a97d9fd = self.var_6604b19f;
	}
	self thread function_64eb5e51(var_efbd053b, var_2a97d9fd);
}

/*
	Name: function_8e74fa1d
	Namespace: namespace_47c46a7d
	Checksum: 0x9240B7CB
	Offset: 0x4A90
	Size: 0x93
	Parameters: 12
	Flags: None
*/
function function_8e74fa1d(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_ae725cb8, var_a5cf2304, var_5d7e7ac2)
{
	if(isdefined(var_3a212fd7) && !function_65f192a6(var_3a212fd7))
	{
		var_f9a179ed = 0;
	}
	return var_f9a179ed;
}

/*
	Name: function_64eb5e51
	Namespace: namespace_47c46a7d
	Checksum: 0x5B3C29D6
	Offset: 0x4B30
	Size: 0xC9
	Parameters: 2
	Flags: None
*/
function function_64eb5e51(var_efbd053b, var_8b419c2c)
{
	self endon("hash_128f8789");
	self endon("hash_a25de9d9");
	if(isdefined(var_efbd053b))
	{
		wait(var_efbd053b);
	}
	while(1)
	{
		var_2a97d9fd = function_5eb85ef8(self.var_722885f3);
		if(var_2a97d9fd < var_8b419c2c)
		{
			self namespace_d84e54db::function_ceb883cd("sprint", 1);
			return;
		}
		var_67520c6a = function_72a94f05(0, 1);
		wait(var_67520c6a);
	}
}

/*
	Name: function_76ecbe6c
	Namespace: namespace_47c46a7d
	Checksum: 0x456E3FF2
	Offset: 0x4C08
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_76ecbe6c()
{
	level.var_b7fd3339 = 0;
	var_215f11e1 = function_99201f25("sp_enemy_trench", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_215f11e1.size; var_c957f6b6++)
	{
		var_4c9c8550 = namespace_2f06d687::function_7387a40a(var_215f11e1[var_c957f6b6]);
		var_4c9c8550.var_4be20d44 = "";
		var_4c9c8550 thread function_e372c0cc(1);
		var_4c9c8550 thread function_d0e3a59f();
		var_4c9c8550.var_7dfaf62 = 64;
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_d0e3a59f
	Namespace: namespace_47c46a7d
	Checksum: 0x34AF5845
	Offset: 0x4D10
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_d0e3a59f()
{
	self waittill("hash_128f8789");
	level.var_b7fd3339++;
}

/*
	Name: function_5eb85ef8
	Namespace: namespace_47c46a7d
	Checksum: 0x2678E713
	Offset: 0x4D30
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_5eb85ef8(var_a2d47c3d)
{
	var_b4d58996 = 999999;
	var_5ddef2e5 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
	{
		var_2a97d9fd = function_7d15e2f8(var_5ddef2e5[var_c957f6b6].var_722885f3, var_a2d47c3d);
		if(var_2a97d9fd < var_b4d58996)
		{
			var_b4d58996 = var_2a97d9fd;
		}
	}
	return var_b4d58996;
}

/*
	Name: function_13e4875f
	Namespace: namespace_47c46a7d
	Checksum: 0x2CBEB5E
	Offset: 0x4DF8
	Size: 0x18D
	Parameters: 1
	Flags: None
*/
function function_13e4875f(var_3d9a88e4)
{
	var_6c6c766a = 1000;
	var_c55dcd82 = self.var_722885f3;
	var_d230ad83 = function_f679a325(function_bc7ce905(self.var_6ab6f4fd));
	if(var_3d9a88e4)
	{
		var_c55dcd82 = (var_c55dcd82[0], var_c55dcd82[1], 0);
	}
	var_5ddef2e5 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
	{
		var_9a23ce57 = var_5ddef2e5[var_c957f6b6].var_722885f3;
		if(var_3d9a88e4)
		{
			var_9a23ce57 = (var_9a23ce57[0], var_9a23ce57[1], 0);
		}
		var_a080d759 = function_f679a325(var_9a23ce57 - var_c55dcd82);
		var_c6c121c9 = function_5f9a4869(var_d230ad83, var_a080d759);
		if(var_c6c121c9 < var_6c6c766a)
		{
			var_6c6c766a = var_c6c121c9;
		}
	}
	return var_6c6c766a;
}

/*
	Name: function_b3ec6692
	Namespace: namespace_47c46a7d
	Checksum: 0xAA0639E6
	Offset: 0x4F90
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b3ec6692()
{
	var_f08dfc9c = namespace_14b42b8a::function_7faf4c39("dog_eyecandy_startpath");
	namespace_84970cc4::function_966ecb29(var_f08dfc9c, &function_b51d137e);
}

/*
	Name: function_b51d137e
	Namespace: namespace_47c46a7d
	Checksum: 0xC66176E3
	Offset: 0x4FE8
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_b51d137e()
{
	level endon("hash_4797687e");
	level endon("hash_787c5631");
	level endon("hash_119eb2e2");
	while(1)
	{
		var_88278484 = function_6ada35ba("sp_eyecandy_wolf", "targetname");
		var_d5814055 = namespace_2f06d687::function_7387a40a(var_88278484);
		if(isdefined(var_d5814055))
		{
			var_d5814055 thread function_29f6ad78(self);
		}
		if(isdefined(self.var_bad30b66))
		{
			var_67520c6a = function_72a94f05(self.var_bad30b66[0], self.var_bad30b66[1]);
		}
		else
		{
			var_67520c6a = function_72a94f05(53, 55);
		}
		wait(var_67520c6a);
	}
}

/*
	Name: function_29f6ad78
	Namespace: namespace_47c46a7d
	Checksum: 0x42D1AC3B
	Offset: 0x5108
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_29f6ad78(var_cfda39e)
{
	self endon("hash_128f8789");
	if(!isdefined(level.var_663306c5))
	{
		level.var_663306c5 = 0;
	}
	self notify("hash_a25de9d9");
	self thread function_be227518(level.var_663306c5, 15);
	level.var_663306c5 = level.var_663306c5 + 1;
	if(level.var_663306c5 > 6)
	{
		level.var_663306c5 = 0;
	}
	self.var_7dfaf62 = 32;
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	while(1)
	{
		if(!var_cfda39e namespace_36cbf523::function_6f990596(50))
		{
			break;
		}
		wait(0.25);
	}
	self function_9869ab67(var_cfda39e.var_722885f3, var_cfda39e.var_6ab6f4fd);
	var_cfe13bc9 = var_cfda39e;
	while(1)
	{
		if(isdefined(var_cfe13bc9.var_b07228b6))
		{
			var_cfe13bc9 = namespace_14b42b8a::function_7922262b(var_cfe13bc9.var_b07228b6, "targetname");
		}
		else
		{
			break;
		}
		self function_e65887e4(var_cfe13bc9.var_722885f3, 1, 32);
		self waittill("hash_41d1aaf0");
	}
	self function_dc8c8404();
}

/*
	Name: function_be227518
	Namespace: namespace_47c46a7d
	Checksum: 0x9E65B9F4
	Offset: 0x52F0
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_be227518(var_67520c6a, var_741adebb)
{
	self endon("hash_128f8789");
	var_f721d9a5 = GetTime();
	wait(var_67520c6a);
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	while(1)
	{
		var_60db70fa = GetTime();
		var_5ecb0b6d = var_60db70fa - var_f721d9a5 / 1000;
		if(var_5ecb0b6d > var_741adebb)
		{
			break;
		}
		wait(0.1);
	}
	self function_dc8c8404();
}

/*
	Name: function_1032e35f
	Namespace: namespace_47c46a7d
	Checksum: 0xD9040D58
	Offset: 0x53C0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1032e35f()
{
	level.var_b0725253 = &function_b0e703cd;
}

/*
	Name: function_b0e703cd
	Namespace: namespace_47c46a7d
	Checksum: 0xCB59C89E
	Offset: 0x53E8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_b0e703cd(var_5dc5e20a)
{
	var_da1cc39e = function_99201f25("sp_enemy_trench", "targetname");
	return 1;
}

/*
	Name: function_32a538b9
	Namespace: namespace_47c46a7d
	Checksum: 0x2CD43E49
	Offset: 0x5430
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_32a538b9()
{
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_gather_ravine", self);
	self thread namespace_cc27597::function_c35e6aab("cin_inf_07_03_worldfallsaway_vign_pain", self);
	level notify("hash_32a538b9");
	namespace_4dbf3ae3::function_1ab5ebec("world_falls_away_ravine_start");
	level notify("hash_fcccf4c9");
	if(isdefined(level.var_c30ca873))
	{
		level thread [[level.var_c30ca873]]();
	}
	namespace_d0ef8521::function_31cd1834("cp_level_infection_gather_ravine", self);
	self thread namespace_cc27597::function_43718187("cin_inf_07_03_worldfallsaway_vign_pain", self);
	namespace_f25bd8c8::function_a2179c84();
	namespace_f25bd8c8::function_74b401d8();
	namespace_f25bd8c8::function_b3cf52bf();
	level waittill("hash_f9d3621d");
	self thread namespace_36cbf523::function_9110a277(1);
	self.var_5d21e1c9 = 0;
	self waittill("hash_accb9cfa");
	self function_dc8c8404();
	level.var_63a5e024 = 1;
}

/*
	Name: function_80ea1787
	Namespace: namespace_47c46a7d
	Checksum: 0x1B53115F
	Offset: 0x5598
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_80ea1787()
{
	level namespace_ad23e503::function_c35e6aab("chasm_open");
	level waittill("hash_32a538b9");
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	namespace_4dbf3ae3::function_1ab5ebec("world_falls_away_ravine_start");
	level notify("hash_4797687e");
	level thread function_6431cdb6();
	function_66e4f276();
}

/*
	Name: function_66e4f276
	Namespace: namespace_47c46a7d
	Checksum: 0xD5D7D5C3
	Offset: 0x5638
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_66e4f276()
{
	level thread function_9a71c521();
	level waittill("hash_b5d56b2c");
	level thread function_e6cc7e28();
	level namespace_82b91a51::function_ef3f75eb("chasm_wind");
	function_37cbcf1a("evt_pullapart_world", (0, 0, 0));
	level thread function_8c0b59c6();
	namespace_80983c42::function_80983c42("light_wfa_end");
	var_d8d55e31 = function_99201f25("world_falls_away_chasm", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_d8d55e31), "Dev Block strings are not supported");
	#/
	level thread function_d135cab9(12, 5, 5);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_d8d55e31.size; var_c957f6b6++)
	{
		var_cbb15570 = var_d8d55e31[var_c957f6b6].var_b07228b6;
		if(isdefined(var_cbb15570))
		{
			var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_cbb15570, "targetname");
			var_6188768c = var_ebe66fdc.var_722885f3;
			var_d8d55e31[var_c957f6b6] function_b0b70abb(1);
			var_d8d55e31[var_c957f6b6] function_a96a2721(var_6188768c, 12, 5, 5);
		}
	}
	var_d8d55e31[0] waittill("hash_a21db68a");
	var_d8d55e31[0] function_c2931a36("evt_pullapart_world_looper", 3);
	level thread function_12c8020a();
	level namespace_ad23e503::function_74d6b22f("chasm_open");
}

/*
	Name: function_8c0b59c6
	Namespace: namespace_47c46a7d
	Checksum: 0x92E62FF1
	Offset: 0x58D0
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_8c0b59c6()
{
	var_aba57974 = namespace_14b42b8a::function_7922262b("chasm_earthquake_start_struct", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_aba57974), "Dev Block strings are not supported");
	#/
	var_d8d55e31 = function_99201f25("world_falls_away_chasm", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_d8d55e31), "Dev Block strings are not supported");
	#/
	var_b35a0c4d = var_d8d55e31[0];
	var_be1f149f = function_9b7fda5e("script_origin", var_aba57974.var_722885f3);
	var_be1f149f function_37f7858a(var_b35a0c4d);
	while(!level namespace_ad23e503::function_7922262b("chasm_open"))
	{
		function_9cf04c2e(0.18, 0.05 * 4, var_be1f149f.var_722885f3, 3000);
		namespace_36cbf523::function_7b8c138f(var_be1f149f, 3000, 2);
		function_5e09918e("cp_infection_world_falls_break_rumble", var_be1f149f.var_722885f3);
		wait(0.05);
	}
	function_9cf04c2e(0.25, 2, var_be1f149f.var_722885f3, 3000);
	var_be1f149f function_dc8c8404();
}

/*
	Name: function_d135cab9
	Namespace: namespace_47c46a7d
	Checksum: 0x66B529BE
	Offset: 0x5AE0
	Size: 0xCB
	Parameters: 3
	Flags: None
*/
function function_d135cab9(var_a3adc876, var_7e1210f1, var_695d2e10)
{
	var_4c9c8550 = function_6ada35ba("world_falls_away_chasm_blocker", "targetname");
	var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_4c9c8550.var_b07228b6, "targetname");
	var_4c9c8550 function_a96a2721(var_ebe66fdc.var_722885f3, var_a3adc876, var_7e1210f1, var_695d2e10);
	var_4c9c8550 waittill("hash_a21db68a");
	var_4c9c8550 function_dc8c8404();
}

/*
	Name: function_e6cc7e28
	Namespace: namespace_47c46a7d
	Checksum: 0xF32308F4
	Offset: 0x5BB8
	Size: 0x553
	Parameters: 1
	Flags: None
*/
function function_e6cc7e28(var_522ce25d)
{
	if(!isdefined(var_522ce25d))
	{
		var_522ce25d = 0;
	}
	var_5aeb1fde = namespace_14b42b8a::function_7922262b("s_ravine_drop_marker_p3", "targetname");
	var_5aeb1fde.var_722885f3 = (2149.2, 91.9004, -689.75);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_rock_mountain_bundle", &function_2e0c5214, "play");
	if(var_522ce25d)
	{
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_rock_mountain_bundle");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_rock_bridge_floaters_bundle");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_rock_bridge_p1_bundle");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_rock_bridge_p2_bundle");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_rock_bridge_p3_bundle");
		namespace_80983c42::function_80983c42("worldfallsaway_cave_separating");
		var_be2ea7e9 = function_9b7fda5e("script_origin", (938, 133, -648));
		var_be2ea7e9 function_c2931a36("evt_rock_bridge_loop", 0.5);
	}
	else
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_rock_mountain_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_rock_bridge_floaters_bundle");
		namespace_80983c42::function_80983c42("worldfallsaway_cave_separating");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_rock_bridge_p1_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_rock_bridge_p2_bundle");
		namespace_cc27597::function_43718187("p7_fxanim_cp_infection_rock_bridge_p3_bundle");
		var_be2ea7e9 = function_9b7fda5e("script_origin", (938, 133, -648));
		var_be2ea7e9 function_c2931a36("evt_rock_bridge_loop", 0.5);
		wait(0.5);
	}
	if(!level namespace_ad23e503::function_7922262b("flag_player_enters_cave"))
	{
		level thread namespace_d0ef8521::function_45d1556("cave_entrance");
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_cross_chasm");
	var_c1b53c54 = function_99201f25("chasm_entrance_player_clip", "targetname");
	namespace_84970cc4::function_eaab05dc(var_c1b53c54, &function_dc8c8404);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_baefbe37();
	}
	namespace_36cbf523::function_9d611fab("s_ravine_drop_marker_p3");
	level notify("hash_7303e8be");
	level notify("hash_7e025071");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_rock_bridge_p3_end_bundle");
	level thread function_43a1f475("rock_bridge_p3");
	wait(0.5);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_rock_bridge_p2_end_bundle");
	level thread function_43a1f475("rock_bridge_p2");
	wait(0.5);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_rock_bridge_p1_end_bundle");
	level thread function_43a1f475("rock_bridge_p1");
	var_be2ea7e9 function_eaa69754(0.5);
	var_be2ea7e9 function_dc8c8404();
	level waittill("hash_5d80c772");
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_infection_rock_bridge_floaters_bundle");
}

/*
	Name: function_43a1f475
	Namespace: namespace_47c46a7d
	Checksum: 0x153D25E2
	Offset: 0x6118
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_43a1f475(var_8e9a8bf6)
{
	var_b44af04e = function_6ada35ba(var_8e9a8bf6, "targetname");
	var_9636be2f = function_99201f25(var_8e9a8bf6 + "_clip", "targetname");
	var_7b12f4c7 = function_d6df1f20(var_8e9a8bf6, "rock_bridge_p");
	var_8f915eab = "platform_" + var_7b12f4c7[0] + "_jnt";
	namespace_84970cc4::function_eaab05dc(var_9636be2f, &function_37f7858a, var_b44af04e, var_8f915eab);
	if(isdefined(var_b44af04e.var_53b3f102))
	{
		var_b44af04e.var_53b3f102.var_6dcd59d8 namespace_82b91a51::function_c9aa1ff("scene_done", 10);
	}
	namespace_84970cc4::function_eaab05dc(var_9636be2f, &function_dc8c8404);
}

/*
	Name: function_baefbe37
	Namespace: namespace_47c46a7d
	Checksum: 0xC1E7E2E3
	Offset: 0x6270
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_baefbe37()
{
	self endon("hash_128f8789");
	level endon("hash_7303e8be");
	var_baa5bcb1 = namespace_14b42b8a::function_7922262b("s_cave_entrance", "targetname");
	while(1)
	{
		wait(3);
		if(!self namespace_36cbf523::function_72268bc2(var_baa5bcb1, 0.1))
		{
			level thread namespace_d0ef8521::function_48f26766("cp_waypoint_breadcrumb", self);
		}
		else
		{
			level thread namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb", self);
		}
	}
}

/*
	Name: function_2e0c5214
	Namespace: namespace_47c46a7d
	Checksum: 0xDD65B16F
	Offset: 0x6330
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_2e0c5214(var_c77d2837)
{
	var_2db224a2 = var_c77d2837["rock_mountain"];
	var_b89c97ce = function_6ada35ba("final_position_3", "target");
	var_2db224a2 function_37f7858a(var_b89c97ce);
}

/*
	Name: function_6431cdb6
	Namespace: namespace_47c46a7d
	Checksum: 0x46A2E77B
	Offset: 0x63A8
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_6431cdb6()
{
	if(!namespace_d5067552::function_abea3011("sm_ending_dogs_left"))
	{
		namespace_d5067552::function_54bdb053("sm_ending_dogs_left");
	}
	if(!namespace_d5067552::function_abea3011("sm_ending_dogs_right"))
	{
		namespace_d5067552::function_54bdb053("sm_ending_dogs_right");
	}
	var_e3b635fb = function_b8494651("team3");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_e3b635fb[var_c957f6b6] function_2992720d();
	}
}

/*
	Name: function_f4ab002c
	Namespace: namespace_47c46a7d
	Checksum: 0xB9733DD0
	Offset: 0x6480
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_f4ab002c()
{
	var_4dbf3ae3 = function_6ada35ba("black_station_start_trigger", "targetname");
	var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aef176e7);
	namespace_82b91a51::function_7e61de2b(1, "black");
	level notify("hash_7e025071");
	level notify("hash_82ddc1bc");
	var_d8d55e31 = function_99201f25("world_falls_away_chasm", "targetname");
	var_d8d55e31[0] function_eaa69754(5);
}

/*
	Name: function_1120dd46
	Namespace: namespace_47c46a7d
	Checksum: 0x555C76A1
	Offset: 0x6550
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_1120dd46()
{
	level thread function_4db909ec("t_world_falls_away_intro", "world_falls_away_intro_falling_guys");
	level thread function_4db909ec("sm_world_falls_away_middle", "world_falls_away_middle_falling_guys");
	level thread function_4db909ec("t_left_side_fallers_1", "world_falls_away_left_1_falling_guys");
	level thread function_4db909ec("t_left_side_fallers_1", "wfa_middle_path_falling_guys");
}

/*
	Name: function_4db909ec
	Namespace: namespace_47c46a7d
	Checksum: 0x384B297B
	Offset: 0x6600
	Size: 0x19D
	Parameters: 2
	Flags: None
*/
function function_4db909ec(var_db803bcf, var_a9ea049a)
{
	var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
	if(isdefined(var_f92a03e7))
	{
		var_f92a03e7 waittill("hash_4dbf3ae3");
		var_da1cc39e = function_99201f25(var_a9ea049a, "targetname");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_da1cc39e.size; var_c957f6b6++)
		{
			var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_da1cc39e[var_c957f6b6].var_db7bb468, "script_noteworthy");
			var_ec70521 = var_ebe66fdc.var_1063f543;
			if(isdefined(var_ec70521) && !var_ec70521.var_efe20130)
			{
				var_4c9c8550 = namespace_2f06d687::function_7387a40a(var_da1cc39e[var_c957f6b6], &function_eaa02a0f);
				namespace_36cbf523::function_426fde37(var_4c9c8550, "FALLING_GUYS");
				namespace_82b91a51::function_76f13293();
				continue;
			}
			/#
				function_2e4b8c78("Dev Block strings are not supported");
			#/
		}
	}
}

/*
	Name: function_eaa02a0f
	Namespace: namespace_47c46a7d
	Checksum: 0x3A3DB6E7
	Offset: 0x67A8
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_eaa02a0f()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_f8456b37))
	{
		self.var_7dfaf62 = self.var_f8456b37;
	}
	if(isdefined(self.var_caae374e) && function_5dbf7eca(self.var_caae374e, "cin_"))
	{
		self.var_7dfaf62 = 64;
		var_bc98b3ec = self.var_caae374e;
	}
	if(isdefined(self.var_b07228b6))
	{
		self thread function_8d96a449();
	}
	var_ebe66fdc = namespace_14b42b8a::function_7922262b(self.var_db7bb468, "script_noteworthy");
	var_ec70521 = var_ebe66fdc.var_1063f543;
	if(isdefined(var_ec70521))
	{
		var_ec70521 waittill("hash_6db7529d");
		self.var_c584775c = 1;
		wait(var_ec70521.var_385072d7);
		if(-1)
		{
			if(isdefined(var_bc98b3ec))
			{
				wait(0.2);
				self thread namespace_cc27597::function_43718187(var_bc98b3ec, self);
				wait(1.2);
				self function_2992720d();
				return;
			}
		}
		var_f54739c6 = function_ca0fce6a();
		if(-1)
		{
			self thread namespace_cc27597::function_43718187(var_f54739c6, self);
		}
		var_ec70521 waittill("hash_89c47e3d");
		if(-1)
		{
			self namespace_cc27597::function_fcf56ab5(var_f54739c6);
		}
		if(-1)
		{
			if(!isdefined(level.var_fddc24b0))
			{
				function_bd957f29();
			}
			var_a60475e6 = function_3f85f0b6();
			namespace_cc27597::function_43718187(var_a60475e6, self);
		}
		else
		{
			wait(5);
		}
	}
	self function_dc8c8404();
}

/*
	Name: function_ca0fce6a
	Namespace: namespace_47c46a7d
	Checksum: 0x1C8C9DB4
	Offset: 0x6A28
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_ca0fce6a()
{
	if(!isdefined(level.var_981a94f3))
	{
		level.var_981a94f3 = 0;
	}
	switch(level.var_981a94f3)
	{
		case 0:
		{
			var_f501f9e9 = "cin_gen_vign_offbalance_a";
			break;
		}
		case 1:
		{
			var_f501f9e9 = "cin_gen_vign_offbalance_b";
			break;
		}
		case 2:
		{
			var_f501f9e9 = "cin_gen_vign_offbalance";
			break;
		}
		case 3:
		{
			var_f501f9e9 = "cin_gen_vign_offbalance_left";
			break;
		}
		case 4:
		{
			var_f501f9e9 = "cin_gen_vign_offbalance_right";
			break;
		}
		case 5:
		case default:
		{
			var_f501f9e9 = "cin_gen_vign_offbalance_center";
			break;
		}
	}
	level.var_981a94f3++;
	if(level.var_981a94f3 > 1)
	{
		level.var_981a94f3 = 0;
	}
	return var_f501f9e9;
}

/*
	Name: function_8d96a449
	Namespace: namespace_47c46a7d
	Checksum: 0xBEC32483
	Offset: 0x6B30
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_8d96a449()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 64;
	self waittill("hash_41d1aaf0");
}

/*
	Name: function_bd957f29
	Namespace: namespace_47c46a7d
	Checksum: 0xFB148F25
	Offset: 0x6B60
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_bd957f29()
{
	level.var_7506ce6e = 0;
	level.var_12d36490 = [];
	if(!isdefined(level.var_12d36490))
	{
		level.var_12d36490 = [];
	}
	else if(!function_6e2770d8(level.var_12d36490))
	{
		level.var_12d36490 = function_84970cc4(level.var_12d36490);
	}
	level.var_12d36490[level.var_12d36490.size] = "cin_gen_vign_fall_left";
	if(!isdefined(level.var_12d36490))
	{
		level.var_12d36490 = [];
	}
	else if(!function_6e2770d8(level.var_12d36490))
	{
		level.var_12d36490 = function_84970cc4(level.var_12d36490);
	}
	level.var_12d36490[level.var_12d36490.size] = "cin_gen_vign_fall_right";
}

/*
	Name: function_3f85f0b6
	Namespace: namespace_47c46a7d
	Checksum: 0xA0F313C7
	Offset: 0x6C68
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_3f85f0b6()
{
	var_a60475e6 = level.var_12d36490[level.var_7506ce6e];
	level.var_7506ce6e++;
	if(level.var_7506ce6e >= level.var_12d36490.size)
	{
		level.var_7506ce6e = 0;
	}
	return var_a60475e6;
}

/*
	Name: function_203e4c9c
	Namespace: namespace_47c46a7d
	Checksum: 0x2993BC6D
	Offset: 0x6CC0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_203e4c9c()
{
	var_f92a03e7 = function_6ada35ba("t_move_1st_falling_guys", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_d5067552::function_bae40a28("sm_world_falls_away_intro");
}

/*
	Name: function_ba7fed00
	Namespace: namespace_47c46a7d
	Checksum: 0x24BAD56D
	Offset: 0x6D20
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_ba7fed00()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_caae374e))
	{
		self.var_7dfaf62 = 48;
		var_277f35c0 = function_b4cb3503(self.var_caae374e, "targetname");
		self function_169cc712(var_277f35c0.var_722885f3);
	}
}

/*
	Name: function_df55595f
	Namespace: namespace_47c46a7d
	Checksum: 0x9B079183
	Offset: 0x6DA8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_df55595f()
{
	var_f92a03e7 = function_6ada35ba("t_wfa_middle_path", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_d5067552::function_bae40a28("sm_wfa_middle_path");
}

/*
	Name: function_483493cf
	Namespace: namespace_47c46a7d
	Checksum: 0x5F00B2DB
	Offset: 0x6E08
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_483493cf()
{
	var_d9e81f75 = "p7_fxanim_cp_infection_world_falling_116_bundle";
	var_ffea99de = "p7_fxanim_cp_infection_world_falling_117_bundle";
	var_25ed1447 = "p7_fxanim_cp_infection_world_falling_132_bundle";
	level thread namespace_cc27597::function_c35e6aab(var_d9e81f75);
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_c35e6aab(var_ffea99de);
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_c35e6aab(var_25ed1447);
	var_f92a03e7 = function_6ada35ba("t_fancy_falling_pieces_at_start", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	var_ebe66fdc = namespace_14b42b8a::function_7922262b("s_fancy_falling_pieces_at_start", "targetname");
	var_6e456024 = var_ebe66fdc.var_722885f3;
	level thread function_a44c8b8c(var_6e456024, 0, 1);
	if(isdefined(level.var_90ce01fb))
	{
		level thread [[level.var_90ce01fb]]();
	}
	level thread namespace_cc27597::function_43718187(var_d9e81f75);
	wait(0.75);
	level thread namespace_cc27597::function_43718187(var_ffea99de);
	wait(1.25);
	level thread namespace_cc27597::function_43718187(var_25ed1447);
}

/*
	Name: function_59de9d07
	Namespace: namespace_47c46a7d
	Checksum: 0x2B26B324
	Offset: 0x6FD8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_59de9d07()
{
	function_dbd2f56e();
	level waittill("hash_bc20f93d");
	namespace_36cbf523::function_b016b536("FALLING_GUYS", 1);
}

/*
	Name: function_e15b5dc7
	Namespace: namespace_47c46a7d
	Checksum: 0x270F6F24
	Offset: 0x7020
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e15b5dc7()
{
	level thread function_26a859a();
	level waittill("hash_82ddc1bc");
	level thread function_82ddc1bc();
}

/*
	Name: function_dbd2f56e
	Namespace: namespace_47c46a7d
	Checksum: 0xDB65E960
	Offset: 0x7068
	Size: 0x211
	Parameters: 0
	Flags: None
*/
function function_dbd2f56e()
{
	namespace_6f7b2095::function_d3f001ef();
	var_3ced446f = function_b8494651("allies");
	foreach(var_d84e54db in var_3ced446f)
	{
		if(isdefined(var_d84e54db.var_170527fb))
		{
			if(function_5dbf7eca(var_d84e54db.var_170527fb, "friendly_guys_bastogne_"))
			{
				var_d84e54db thread function_95040800(512);
			}
		}
	}
	var_addf374e = function_b8494651("axis");
	foreach(var_d84e54db in var_addf374e)
	{
		if(isdefined(var_d84e54db.var_170527fb))
		{
			if(function_5dbf7eca(var_d84e54db.var_170527fb, "reverse_anim_") || function_5dbf7eca(var_d84e54db.var_170527fb, "sm_bastogne_reinforcements_"))
			{
				var_d84e54db thread function_95040800(1024);
			}
		}
	}
}

/*
	Name: function_26a859a
	Namespace: namespace_47c46a7d
	Checksum: 0x65C934A1
	Offset: 0x7288
	Size: 0x275
	Parameters: 0
	Flags: None
*/
function function_26a859a()
{
	var_e3b635fb = function_b8494651("axis");
	if(isdefined(var_e3b635fb))
	{
		if(var_e3b635fb.size > 0)
		{
			var_1152223f = namespace_36cbf523::function_9e5ed1ac(var_e3b635fb);
			var_98e1d684 = var_1152223f.size - 0;
			for(var_c957f6b6 = 0; var_c957f6b6 < var_98e1d684; var_c957f6b6++)
			{
				var_4bc288a0 = var_1152223f.size - 1 - var_c957f6b6;
				var_1152223f[var_4bc288a0] namespace_82b91a51::function_4b741fdc();
				var_1152223f[var_4bc288a0] thread function_95040800(512);
			}
		}
	}
	var_912ac17e = function_6ada35ba("world_falls_apart_soldier_kill_volume", "targetname");
	var_e3b635fb = function_b8494651("axis");
	if(isdefined(var_e3b635fb))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			if(var_e3b635fb[var_c957f6b6] function_32fa5072(var_912ac17e))
			{
				var_e3b635fb[var_c957f6b6].var_255b9315 = 1;
			}
		}
	}
	var_f92a03e7 = function_6ada35ba("t_jumping_dogs_after_trench", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	var_e3b635fb = function_b8494651("axis");
	if(isdefined(var_e3b635fb))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			if(var_e3b635fb[var_c957f6b6] function_32fa5072(var_912ac17e))
			{
				var_e3b635fb[var_c957f6b6] thread function_95040800(512);
			}
		}
	}
}

/*
	Name: function_82ddc1bc
	Namespace: namespace_47c46a7d
	Checksum: 0x9D74230E
	Offset: 0x7508
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_82ddc1bc()
{
	namespace_36cbf523::function_aa0ddbc3(0);
	namespace_36cbf523::function_3ea445de();
	namespace_36cbf523::function_674ecd85();
	namespace_36cbf523::function_b32291d7("reverse_anim_trigger", "script_noteworthy");
}

/*
	Name: function_56b28f61
	Namespace: namespace_47c46a7d
	Checksum: 0x394B6783
	Offset: 0x7570
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_56b28f61()
{
	namespace_cc27597::function_8f9f34e0("cin_gen_vign_fall_fall", &function_a2c7b004, "play");
	var_c917e48d = namespace_14b42b8a::function_7faf4c39("hanging_on_ledge_dude", "targetname");
	level thread namespace_84970cc4::function_57dd1fd4(var_c917e48d, &function_a9e95fee);
}

/*
	Name: function_a9e95fee
	Namespace: namespace_47c46a7d
	Checksum: 0xE1347F0
	Offset: 0x7608
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a9e95fee()
{
	level endon("hash_bc20f93d");
	level waittill(self.var_db7bb468);
	var_d97fa3c5 = 2;
	wait(2.7 + var_d97fa3c5);
	if(isdefined(self.var_eb328a48))
	{
		wait(self.var_eb328a48);
	}
	self namespace_cc27597::function_43718187();
}

/*
	Name: function_e8d77ec8
	Namespace: namespace_47c46a7d
	Checksum: 0x585CAC08
	Offset: 0x7680
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_e8d77ec8()
{
	var_c917e48d = namespace_14b42b8a::function_7faf4c39("hanging_on_ledge_dude_background", "targetname");
	level thread namespace_84970cc4::function_57dd1fd4(var_c917e48d, &function_7daee669);
}

/*
	Name: function_7daee669
	Namespace: namespace_47c46a7d
	Checksum: 0xBCE7BD2E
	Offset: 0x76E8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_7daee669()
{
	level endon("hash_bc20f93d");
	var_fcf5da5e = function_6ada35ba(self.var_b07228b6, "targetname");
	var_fcf5da5e waittill("hash_4dbf3ae3", var_5dc5e20a);
	if(isdefined(self.var_eb328a48))
	{
		wait(self.var_eb328a48);
	}
	self namespace_cc27597::function_43718187();
}

/*
	Name: function_a2c7b004
	Namespace: namespace_47c46a7d
	Checksum: 0xACF6708C
	Offset: 0x7770
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_a2c7b004(var_c77d2837)
{
}

/*
	Name: function_a9c39c8b
	Namespace: namespace_47c46a7d
	Checksum: 0xD2D96EEB
	Offset: 0x7788
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_a9c39c8b(var_4c9c8550)
{
	var_4c9c8550 endon("hash_128f8789");
	while(1)
	{
		var_489b2980 = var_4c9c8550.var_722885f3;
		var_491bc153 = var_489b2980 + VectorScale((0, 0, 1), 1000);
		var_5a02fb8a = (1, 1, 1);
		/#
			function_4e418837(var_489b2980, var_491bc153, var_5a02fb8a);
		#/
		wait(0.1);
	}
}


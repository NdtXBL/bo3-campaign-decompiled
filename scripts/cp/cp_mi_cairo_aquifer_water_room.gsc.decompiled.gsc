#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_ambience;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_967f4af8;

/*
	Name: function_d290ebfa
	Namespace: namespace_967f4af8
	Checksum: 0xE5A01181
	Offset: 0xDB0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level.var_c1aa5253["emp_flash"] = "_t6/weapon/emp/fx_emp_explosion";
	thread function_37af8a07();
	thread function_60f7b1b6();
	thread function_1ecf48ef();
	thread function_4a90c357();
	thread function_ee430caa();
	thread function_a1b52577();
	thread function_18af354a();
	namespace_2f06d687::function_2b37a3c9("water_robots", "targetname", &function_a527e6f9);
	namespace_2f06d687::function_2b37a3c9("water_robots2", "targetname", &function_a527e6f9);
	namespace_2f06d687::function_2b37a3c9("water_robots3", "targetname", &function_a527e6f9);
}

/*
	Name: function_37af8a07
	Namespace: namespace_967f4af8
	Checksum: 0xEB475BAC
	Offset: 0xEE0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("flag_kayne_ready_trap");
	level namespace_ad23e503::function_c35e6aab("door_explodes");
	level namespace_ad23e503::function_c35e6aab("flag_door_explodes");
	level namespace_ad23e503::function_c35e6aab("flag_double_doors_open");
}

/*
	Name: function_60f7b1b6
	Namespace: namespace_967f4af8
	Checksum: 0xB708C701
	Offset: 0xF70
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_60f7b1b6()
{
	level endon("hash_ee3f7dc5");
	var_14b42b8a = function_6ada35ba("igc_kane_khalil_1", "targetname");
	level namespace_ad23e503::function_1ab5ebec("flag_kayne_pre_water");
	wait(6);
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_03_19_pre_water_room_kane", level.var_89ea8991);
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_03_19_pre_water_room_wait_kane", level.var_89ea8991);
}

/*
	Name: function_1ecf48ef
	Namespace: namespace_967f4af8
	Checksum: 0x4D807C32
	Offset: 0x1020
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_1ecf48ef()
{
	level endon("hash_47f08523");
	namespace_cc27597::function_8f9f34e0("cin_aqu_05_01_enter_1st_look", &function_3d8a313e, "play");
	namespace_cc27597::function_c35e6aab("cin_aqu_05_01_enter_1st_look");
	level waittill("hash_7e64f485");
	var_5b5cfed1 = namespace_4dbf3ae3::function_1ab5ebec("water_room_igc");
	var_14b42b8a = function_6ada35ba("igc_kane_khalil_1", "targetname");
	level notify("hash_ee3f7dc5");
	if(isdefined(level.var_e45bdc20))
	{
		level thread [[level.var_e45bdc20]]();
	}
	if(isdefined(level.var_89ea8991) && function_5b49d38c(level.var_89ea8991))
	{
		level.var_89ea8991 function_dc8c8404();
	}
	namespace_84eb777e::function_b3ed487d(1);
	namespace_80983c42::function_593e8a39("lighting_server_perf_lights");
	function_cd377710();
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_05_01_enter_1st_look", var_5b5cfed1.var_aef176e7);
	namespace_84eb777e::function_61034146(0);
	level namespace_ad23e503::function_74d6b22f("inside_water_room");
	namespace_82b91a51::function_93831e79("igc_enter_water_structs");
	level.var_89ea8991 namespace_84eb777e::function_30343b22("kayne_waterroom_swim");
	level.var_89ea8991 thread function_8fdcc95b(1);
	namespace_9f824288::function_5d2cdd99();
	function_6c1294b8("player_swimSpeed", 80);
	if(isdefined(level.var_dcefc59))
	{
		level thread [[level.var_dcefc59]]();
	}
	foreach(var_7f95eaf7 in level.var_2395e945)
	{
		var_7f95eaf7 thread function_913d882();
	}
	thread function_645f7873();
	thread function_408f0fb5();
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_03_20_water_room", level.var_89ea8991);
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_03_20_water_room_idle", level.var_89ea8991);
}

/*
	Name: function_cd377710
	Namespace: namespace_967f4af8
	Checksum: 0x7ACB3CBA
	Offset: 0x1390
	Size: 0x129
	Parameters: 0
	Flags: None
*/
function function_cd377710()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a function_52b8ab2b()))
		{
			var_5dc5e20a.var_8fedf36c notify("hash_c38e4003");
			var_5dc5e20a function_52fddbd0();
			var_5dc5e20a.var_8fedf36c.var_86c93e40 = undefined;
			var_5dc5e20a.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_canopy_state", 0);
			var_5dc5e20a.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_enable_wash_fx", 0);
			wait(0.05);
		}
	}
}

/*
	Name: function_3d8a313e
	Namespace: namespace_967f4af8
	Checksum: 0xD6E906B1
	Offset: 0x14C8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_3d8a313e(var_c77d2837)
{
	namespace_786319bb::function_c897523d("respawn_in_water_room");
}

/*
	Name: function_4a90c357
	Namespace: namespace_967f4af8
	Checksum: 0x288DB59C
	Offset: 0x14F8
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_4a90c357()
{
	level namespace_ad23e503::function_1ab5ebec("flag_kayne_water_moment");
	function_6c1294b8("player_swimSpeed", 30);
	level notify("hash_47f08523");
	level namespace_ad23e503::function_74d6b22f("inside_data_center");
	foreach(var_7f95eaf7 in level.var_9b1393e7)
	{
		var_7f95eaf7 namespace_71e9cb84::function_e9c3870b("player_bubbles_fx", 0);
	}
	level thread namespace_ce7c3ed5::function_7e61de2b(1);
	wait(1);
	level.var_89ea8991 function_470f7e4c();
	function_6c1294b8("player_swimSpeed", 150);
	level.var_89ea8991 namespace_71e9cb84::function_74d6b22f("kane_bubbles_fx", 0);
	thread function_3ed240f1();
	var_31b9fd4a = function_6ada35ba("doubledoor_sbm", "targetname");
	var_31b9fd4a function_50ccee8d();
	level thread namespace_71a63eac::function_8210b658();
	level thread namespace_cc27597::function_43718187("cin_aqu_02_01_floodroom_1st_dragged", level.var_89ea8991);
	level waittill("hash_b580186f");
	level notify("hash_8f79547f");
	level thread namespace_71a63eac::function_e18f629a();
	namespace_82b91a51::function_93831e79("igc_post_water_structs");
	function_6c1294b8("player_swimSpeed", 150);
	thread function_a079b7e3();
	namespace_9f824288::function_5d2cdd99();
	thread function_8aec0a4c();
}

/*
	Name: function_8aec0a4c
	Namespace: namespace_967f4af8
	Checksum: 0x9A3ABE90
	Offset: 0x17A0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_8aec0a4c()
{
	level endon("hash_66250ae7");
	var_5948b3df = function_6ada35ba("trig_trap_door", "targetname");
	var_5948b3df function_175e6b8e(0);
	var_14b42b8a = function_6ada35ba("igc_kane_water", "targetname");
	var_31b9fd4a = function_6ada35ba("doubledoor_sbm", "targetname");
	var_31b9fd4a function_48f26766();
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_03_21_server_room_enter", level.var_89ea8991);
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_03_21_server_room_idle", level.var_89ea8991);
	level namespace_ad23e503::function_74d6b22f("flag_kayne_ready_trap");
	thread function_cc9a0395();
	var_5948b3df function_175e6b8e(1);
	level namespace_ad23e503::function_1ab5ebec("flag_maretti_trap_door");
	level notify("hash_eb6a1c8b");
	level.var_89ea8991 namespace_cc27597::function_fcf56ab5(1);
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_03_21_server_room_explosion", level.var_89ea8991);
	if(isdefined(level.var_24d74b55))
	{
		level thread [[level.var_24d74b55]]();
	}
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_on_me_0");
}

/*
	Name: function_cc9a0395
	Namespace: namespace_967f4af8
	Checksum: 0x3C3E34A5
	Offset: 0x19B8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_cc9a0395()
{
	level endon("hash_eb6a1c8b");
	wait(2);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_come_on_get_in_pos_0");
	wait(6);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_hurry_it_up_0");
	wait(12);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_come_on_get_in_pos_0");
	wait(20);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_hurry_it_up_0");
	wait(25);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_come_on_get_in_pos_0");
	wait(30);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_hurry_it_up_0");
}

/*
	Name: function_c1808198
	Namespace: namespace_967f4af8
	Checksum: 0xF8E3184C
	Offset: 0x1AC0
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_c1808198()
{
	foreach(var_7f95eaf7 in level.var_9b1393e7)
	{
		var_7f95eaf7 thread namespace_786319bb::function_89eaa1b3(1.5);
		var_7f95eaf7 namespace_419e977d::function_d65827ea("o2", 85);
		var_7f95eaf7 thread function_498a7d66();
	}
}

/*
	Name: function_498a7d66
	Namespace: namespace_967f4af8
	Checksum: 0x45E1FEAB
	Offset: 0x1B98
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_498a7d66()
{
	self endon("hash_643a7daf");
	self namespace_71e9cb84::function_e9c3870b("player_bubbles_fx", 1);
	wait(2);
	self namespace_71e9cb84::function_e9c3870b("player_bubbles_fx", 0);
}

/*
	Name: function_ee430caa
	Namespace: namespace_967f4af8
	Checksum: 0x6C165947
	Offset: 0x1BF8
	Size: 0x44B
	Parameters: 0
	Flags: None
*/
function function_ee430caa()
{
	var_99b9d1f2 = namespace_4dbf3ae3::function_1ab5ebec("water_room_exit_igc");
	level thread namespace_71a63eac::function_973b77f9();
	level notify("hash_9f732141");
	level notify("hash_bf1c950c");
	namespace_786319bb::function_8bf8a765(1);
	level namespace_ad23e503::function_9d134160("inside_data_center");
	namespace_84eb777e::function_61034146(1);
	namespace_84eb777e::function_b3ed487d(0);
	namespace_80983c42::function_80983c42("lighting_server_perf_lights");
	var_ebc124a5 = namespace_2f06d687::function_289e6fd1("interior_robots");
	var_19e0145d = namespace_2f06d687::function_289e6fd1("interior_robots_stairs");
	var_f3dd99f4 = namespace_2f06d687::function_289e6fd1("interior_robots_water");
	var_a40e8c9b = function_525ae497(var_ebc124a5, var_19e0145d, 0, 0);
	var_8a13f363 = function_525ae497(var_a40e8c9b, var_f3dd99f4, 0, 0);
	foreach(var_c957f6b6 in var_8a13f363)
	{
		if(isdefined(var_c957f6b6))
		{
			var_c957f6b6 function_dc8c8404();
		}
	}
	if(isdefined(level.var_89ea8991) && function_5b49d38c(level.var_89ea8991))
	{
		level.var_89ea8991 function_dc8c8404();
	}
	if(isdefined(level.var_a8ebf9fc))
	{
		level thread [[level.var_a8ebf9fc]]();
	}
	thread function_ddc03444();
	var_14b42b8a = function_6ada35ba("igc_kane_khalil_1", "targetname");
	if(!isdefined(level.var_9b1393e7[0].var_8fedf36c))
	{
		level.var_9b1393e7[0] namespace_786319bb::function_d683f26a(0);
	}
	level.var_9b1393e7[0].var_8fedf36c function_48f26766();
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_03_01_platform_1st_secureplatform_vtol", level.var_9b1393e7[0].var_8fedf36c);
	namespace_71e9cb84::function_74d6b22f("water_room_exit_scenes", 0);
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_03_01_platform_1st_secureplatform", var_99b9d1f2.var_aef176e7);
	thread function_430fd872();
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_03_01_platform_1st_secureplatform_exit");
	level notify("hash_2ff2d753");
	var_14b42b8a namespace_cc27597::function_fcf56ab5("cin_aqu_03_20_water_room_body_loop", 1);
	namespace_9f824288::function_5d2cdd99();
	level namespace_ad23e503::function_74d6b22f("flag_khalil_water_igc_done");
	var_14b42b8a namespace_cc27597::function_fcf56ab5("cin_aqu_03_01_platform_1st_secureplatform");
}

/*
	Name: function_430fd872
	Namespace: namespace_967f4af8
	Checksum: 0x92039143
	Offset: 0x2050
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_430fd872()
{
	level namespace_71b8dba1::function_a463d127("hend_we_ve_got_additional_0");
	wait(1);
	level namespace_71b8dba1::function_13b3b16a("plyr_copy_that_we_re_on_0");
	wait(4);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_see_em_multiple_0");
	level thread namespace_71a63eac::function_b1ee6c2d();
	wait(1);
	level namespace_71b8dba1::function_13b3b16a("kane_copy_i_see_em_too_0");
}

/*
	Name: function_ddc03444
	Namespace: namespace_967f4af8
	Checksum: 0x47A11F9E
	Offset: 0x20F8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_ddc03444()
{
	var_c0155443 = namespace_14b42b8a::function_7922262b("water_room_flyby_1", "targetname");
	var_4e0de508 = namespace_14b42b8a::function_7922262b("water_room_flyby_2", "targetname");
	wait(3);
	var_c0155443 namespace_cc27597::function_43718187(var_c0155443.var_1157a889);
	var_c0155443 namespace_cc27597::function_fcf56ab5(1);
	wait(8);
	var_4e0de508 namespace_cc27597::function_43718187(var_4e0de508.var_1157a889);
	var_4e0de508 namespace_cc27597::function_fcf56ab5(1);
}

/*
	Name: function_a079b7e3
	Namespace: namespace_967f4af8
	Checksum: 0x153A874F
	Offset: 0x21E8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_a079b7e3()
{
	level namespace_71b8dba1::function_a463d127("khal_something_s_jamming_0", 2);
	level namespace_71b8dba1::function_13b3b16a("plyr_something_doesn_t_fe_0", 3);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_yeah_i_got_that_same_0");
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_up_here_ready_weapo_0", 2);
}

/*
	Name: function_26031755
	Namespace: namespace_967f4af8
	Checksum: 0xA83D5152
	Offset: 0x2280
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_26031755()
{
	function_da6acfd2(level.var_c1aa5253["emp_flash"], self, "tag_origin");
}

/*
	Name: function_7dadf7b8
	Namespace: namespace_967f4af8
	Checksum: 0x8AC5CA08
	Offset: 0x22C0
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_7dadf7b8(var_62240a71)
{
	self endon("hash_f91ebca8");
	self notify("hash_f91ebca8");
	var_baa607cb = GetTime() + var_62240a71 * 1000;
	while(GetTime() < var_baa607cb)
	{
		self function_e2af603e("damage_heavy");
		wait(0.05);
	}
}

/*
	Name: function_5357a1e2
	Namespace: namespace_967f4af8
	Checksum: 0x4BA2CB77
	Offset: 0x2338
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_5357a1e2()
{
	if(isdefined(self))
	{
		self.var_f1b43687 = 0;
		function_2498a3ca();
		self function_6185f4d9(0);
		self namespace_71e9cb84::function_e9c3870b("empd", 0);
	}
}

/*
	Name: function_2498a3ca
	Namespace: namespace_967f4af8
	Checksum: 0xC6ABB6A6
	Offset: 0x23A8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_2498a3ca()
{
	var_4914ab93 = self function_e9022fe("EmpRebootIndicator");
	if(isdefined(var_4914ab93))
	{
		self function_2b74b70a(var_4914ab93);
	}
}

/*
	Name: function_4f725f0b
	Namespace: namespace_967f4af8
	Checksum: 0xDB3EDF2
	Offset: 0x2408
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_4f725f0b()
{
	self endon("hash_643a7daf");
	self function_83fd42b5();
	self.var_c334c88d = 7;
	self.var_f1b43687 = 1;
	self function_f1aa5a21("emp_shock", 1);
	self namespace_71e9cb84::function_e9c3870b("empd", 1);
	self.var_527de770 = GetTime();
	self.var_3c2345f3 = self.var_527de770 + self.var_c334c88d * 1000;
	var_4914ab93 = self function_2f6b6a4c("EmpRebootIndicator");
	self function_3a9588ea(var_4914ab93, "endTime", function_b6b79a0(self.var_3c2345f3));
	self function_3a9588ea(var_4914ab93, "startTime", function_b6b79a0(self.var_527de770));
	self thread function_7dadf7b8(0.75);
	self function_6185f4d9(1);
	wait(7);
	if(isdefined(self))
	{
		self notify("hash_64019b72");
		self function_5357a1e2();
	}
	self function_4890e520();
}

/*
	Name: function_408f0fb5
	Namespace: namespace_967f4af8
	Checksum: 0x7806BD47
	Offset: 0x25D8
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_408f0fb5()
{
	level endon("hash_47f08523");
	level namespace_ad23e503::function_1ab5ebec("flag_player_start_drown sequence");
	level namespace_ad23e503::function_1ab5ebec("water_corvus_vo_cleared");
	foreach(var_7f95eaf7 in level.var_9b1393e7)
	{
		var_7f95eaf7 thread function_4f725f0b();
	}
	function_6c1294b8("player_swimSpeed", 95);
	level notify("hash_781a429d");
	level thread namespace_1d1d22be::function_69386a6b();
	function_846f1215(0.5);
	level thread namespace_1d1d22be::function_decbd389();
	wait(2);
	function_6c1294b8("player_swimSpeed", 80);
	function_846f1215(0.65);
	level thread namespace_1d1d22be::function_4ce4df2();
	wait(2);
	function_6c1294b8("player_swimSpeed", 50);
	function_846f1215(0.8);
	level thread namespace_1d1d22be::function_2ad0c85b();
	wait(2);
	level namespace_ad23e503::function_74d6b22f("flag_kayne_water_moment");
}

/*
	Name: function_846f1215
	Namespace: namespace_967f4af8
	Checksum: 0x43A32278
	Offset: 0x27E0
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_846f1215(var_25f54188)
{
	foreach(var_7f95eaf7 in level.var_9b1393e7)
	{
		var_7f95eaf7 thread function_45676b91(var_25f54188);
		var_7f95eaf7 namespace_419e977d::function_d65827ea("o2", 20);
		var_7f95eaf7 thread function_498a7d66();
	}
}

/*
	Name: function_45676b91
	Namespace: namespace_967f4af8
	Checksum: 0x76BC628F
	Offset: 0x28C0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_45676b91(var_25f54188)
{
	self endon("hash_643a7daf");
	self namespace_82b91a51::function_c04ace5b(var_25f54188, 1);
	self namespace_82b91a51::function_c04ace5b(0, 1);
}

/*
	Name: function_645f7873
	Namespace: namespace_967f4af8
	Checksum: 0xAB8698AC
	Offset: 0x2918
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_645f7873()
{
	level endon("hash_47f08523");
	function_6c1294b8("player_swimSpeed", 95);
	wait(0.5);
	level thread namespace_1d1d22be::function_fc716128();
	thread function_c1808198();
	level namespace_71b8dba1::function_a463d127("corv_listen_only_to_the_s_2", undefined, "corvus");
	wait(0.2);
	level thread namespace_1d1d22be::function_6e78d063();
	thread function_c1808198();
	level namespace_71b8dba1::function_a463d127("corv_imagine_yourself_0", undefined, "corvus");
	wait(0.2);
	level thread namespace_1d1d22be::function_487655fa();
	thread function_c1808198();
	level namespace_71b8dba1::function_a463d127("corv_in_a_frozen_fore_0", undefined, "corvus");
	level namespace_ad23e503::function_74d6b22f("water_corvus_vo_cleared");
}

/*
	Name: function_ba41df77
	Namespace: namespace_967f4af8
	Checksum: 0xBAEADA78
	Offset: 0x2A80
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_ba41df77()
{
	thread namespace_82b91a51::function_7e61de2b(0.55, "white");
	wait(0.55);
	namespace_82b91a51::function_7e61de2b(0, "white");
	namespace_82b91a51::function_593c2af4(0.55, "white");
}

/*
	Name: function_e367262c
	Namespace: namespace_967f4af8
	Checksum: 0x1855A16E
	Offset: 0x2AF8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e367262c()
{
	self namespace_419e977d::function_459e5eff("o2", 0);
	self namespace_419e977d::function_d65827ea("o2", 50);
}

/*
	Name: function_913d882
	Namespace: namespace_967f4af8
	Checksum: 0xF685B4FA
	Offset: 0x2B50
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_913d882()
{
	self endon("hash_643a7daf");
	self notify("hash_1fffa65c");
	self endon("hash_128f8789");
	self endon("hash_1fffa65c");
	while(1)
	{
		if(self.var_e0beb6ee == "playing" && function_5b49d38c(self) && self function_8213df59() && (!isdefined(self.var_5ea9c8b7) && self.var_5ea9c8b7))
		{
			self thread function_41018429();
		}
		wait(0.5);
	}
}

/*
	Name: function_41018429
	Namespace: namespace_967f4af8
	Checksum: 0xEAFC9E38
	Offset: 0x2C10
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_41018429()
{
	self notify("hash_8f1abd30");
	self endon("hash_8f1abd30");
	self endon("hash_128f8789");
	self.var_5ea9c8b7 = 1;
	self namespace_419e977d::function_459e5eff("o2", 0);
	var_dd075cd2 = 1;
	while(self function_8213df59())
	{
		wait(1);
		var_dd075cd2 = self namespace_419e977d::function_d65827ea("o2", 5);
	}
	self namespace_419e977d::function_459e5eff("o2", 1);
	self.var_5ea9c8b7 = 0;
}

/*
	Name: function_a1923020
	Namespace: namespace_967f4af8
	Checksum: 0x96F756AE
	Offset: 0x2D00
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a1923020()
{
	level waittill("hash_a57da79e");
	level namespace_ad23e503::function_74d6b22f("flag_door_explodes");
}

/*
	Name: function_a1b52577
	Namespace: namespace_967f4af8
	Checksum: 0x109B04E8
	Offset: 0x2D38
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_a1b52577()
{
	thread function_a1923020();
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("flag_maretti_trap_door", "flag_kayne_ready_trap", "flag_door_explodes"));
	namespace_80983c42::function_80983c42("server_room_boobytrap");
	level thread namespace_1d1d22be::function_ceaeaa5a();
	var_5b8892d8 = function_6ada35ba("mdl_trapdoor", "targetname");
	var_5b8892d8 function_dc8c8404();
	level thread function_cb3decf1();
	thread function_a05b1c8c();
	level notify("hash_66250ae7");
	wait(2);
	level namespace_71b8dba1::function_a463d127("khal_kane_do_you_read_me_0");
	level namespace_71b8dba1::function_a463d127("khal_there_s_multiple_con_0");
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_taylor_and_maretti_0");
	level thread namespace_71a63eac::function_a2d40521();
	level namespace_71b8dba1::function_a463d127("khal_kane_you_have_to_go_0");
	thread function_71af9864();
	level namespace_ad23e503::function_74d6b22f("water_room_checkpoint");
	level.var_89ea8991 namespace_6f7b2095::function_1b497663("r");
	namespace_4dbf3ae3::function_42e87952("breadcrumb_exit_water", "targetname");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_71af9864
	Namespace: namespace_967f4af8
	Checksum: 0x85D9812C
	Offset: 0x2F50
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_71af9864()
{
	namespace_d5067552::function_bae40a28("spawn_manager_flood_robots");
	namespace_d5067552::function_bae40a28("spawn_manager_water_robots");
	namespace_d5067552::function_bae40a28("spawn_manager_flood_robots2");
	wait(2);
	var_14b42b8a = function_6ada35ba("igc_kane_water", "targetname");
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_03_21_server_room_doors_open");
	level thread namespace_1d1d22be::function_ed6114d2();
	var_31b9fd4a = function_6ada35ba("doubledoor_sbm", "targetname");
	var_31b9fd4a function_dc8c8404();
}

/*
	Name: function_b563cc38
	Namespace: namespace_967f4af8
	Checksum: 0xFC1543F5
	Offset: 0x3050
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b563cc38()
{
	namespace_2f06d687::function_72214789("interior_robots_stairs");
	level namespace_ad23e503::function_74d6b22f("flag_kane_start_water_escape");
}

/*
	Name: function_18af354a
	Namespace: namespace_967f4af8
	Checksum: 0x222F3B2E
	Offset: 0x3098
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_18af354a()
{
	level namespace_ad23e503::function_1ab5ebec("flag_kane_start_water_escape");
	namespace_80983c42::function_80983c42("lighting_water_exit");
	foreach(var_7f95eaf7 in level.var_2395e945)
	{
		var_7f95eaf7 thread function_913d882();
	}
	level.var_89ea8991 namespace_d84e54db::function_c9e45d52(1);
	level.var_89ea8991 thread function_8fdcc95b(5);
	thread function_67c72b6();
}

/*
	Name: function_8fdcc95b
	Namespace: namespace_967f4af8
	Checksum: 0xF6DD97DD
	Offset: 0x31B0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_8fdcc95b(var_67520c6a)
{
	if(isdefined(var_67520c6a))
	{
		wait(var_67520c6a);
	}
	self namespace_5753664b::function_43718187("bubbles", self.var_722885f3, (0, 0, 0), "swim_done", 1, "j_spineupper", 1);
}

/*
	Name: function_67c72b6
	Namespace: namespace_967f4af8
	Checksum: 0x7DFC2CEF
	Offset: 0x3218
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_67c72b6()
{
	level endon("hash_bf1c950c");
	var_14b42b8a = function_6ada35ba("igc_kane_water", "targetname");
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_03_22_water_room_escape_start", level.var_89ea8991);
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_03_22_water_room_escape_fire_loop", level.var_89ea8991);
	namespace_2f06d687::function_72214789("interior_robots_water");
	level.var_89ea8991 function_470f7e4c();
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_03_22_water_room_escape_end", level.var_89ea8991);
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_03_22_water_room_escape_end_loop", level.var_89ea8991);
}

/*
	Name: function_cb3decf1
	Namespace: namespace_967f4af8
	Checksum: 0x53CED520
	Offset: 0x3328
	Size: 0x1A9
	Parameters: 0
	Flags: None
*/
function function_cb3decf1()
{
	var_e9dd177b = function_6ada35ba("trig_trap_door", "targetname");
	var_568fff7e = function_6ada35ba("inner_explosion_area", "targetname");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a function_32fa5072(var_e9dd177b))
		{
			if(var_5dc5e20a function_32fa5072(var_568fff7e))
			{
				var_5dc5e20a thread function_a476832a(0.5, 4);
				function_9cf04c2e(0.7, 1.2, var_5dc5e20a.var_722885f3, 1000);
			}
			else
			{
				function_9cf04c2e(0.6, 1, var_5dc5e20a.var_722885f3, 800);
			}
			var_5dc5e20a function_e2af603e("damage_heavy");
		}
	}
}

/*
	Name: function_a476832a
	Namespace: namespace_967f4af8
	Checksum: 0xC597B4AF
	Offset: 0x34E0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_a476832a(var_67520c6a, var_62240a71)
{
	wait(var_67520c6a);
	self function_f1aa5a21("proximity_grenade", var_62240a71);
}

/*
	Name: function_a05b1c8c
	Namespace: namespace_967f4af8
	Checksum: 0xB679127C
	Offset: 0x3528
	Size: 0x2C1
	Parameters: 0
	Flags: None
*/
function function_a05b1c8c()
{
	var_b4d58996 = level.var_9b1393e7[0];
	var_e34a3797 = [];
	var_52aa09ce = function_6ada35ba("look_at_kane_origin", "targetname");
	var_be38fd90 = function_6ada35ba("door_trap_origin", "targetname");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(function_7d15e2f8(var_5dc5e20a.var_722885f3, var_be38fd90.var_722885f3) < 175)
		{
			namespace_84970cc4::function_69554b3e(var_e34a3797, var_5dc5e20a);
		}
	}
	if(var_e34a3797.size < 1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(function_7d15e2f8(var_5dc5e20a.var_722885f3, var_be38fd90.var_722885f3) < function_7d15e2f8(var_b4d58996.var_722885f3, var_be38fd90.var_722885f3))
			{
				var_b4d58996 = var_5dc5e20a;
			}
		}
		namespace_84970cc4::function_69554b3e(var_e34a3797, var_b4d58996);
	}
	foreach(var_5dc5e20a in var_e34a3797)
	{
		thread function_a0faf694(var_5dc5e20a, var_52aa09ce, var_be38fd90);
	}
}

/*
	Name: function_a0faf694
	Namespace: namespace_967f4af8
	Checksum: 0xEB54C5DA
	Offset: 0x37F8
	Size: 0x25B
	Parameters: 3
	Flags: None
*/
function function_a0faf694(var_4b70f64, var_52aa09ce, var_be38fd90)
{
	var_e7459428 = function_9b7fda5e("script_origin", var_4b70f64.var_722885f3);
	var_e7459428.var_6ab6f4fd = var_4b70f64 function_89c87c9c();
	var_4b70f64 function_87b6cda1(var_e7459428, undefined, 1, 0, 0, 0, 0);
	var_74ae8134 = var_4b70f64 function_501eb072();
	if(function_7d15e2f8(var_4b70f64.var_722885f3, var_be38fd90.var_722885f3) < 175)
	{
		if(var_4b70f64.var_722885f3[1] < var_be38fd90.var_722885f3[1])
		{
			var_e7459428 function_a96a2721(var_e7459428.var_722885f3 + VectorScale((0, 1, 0), 40), 0.3, 0.15, 0.15);
		}
		var_e7459428 function_c0b6566f(function_bdcdc423(var_52aa09ce.var_722885f3 - var_4b70f64.var_722885f3), 0.7, 0.3, 0.3);
	}
	else
	{
		var_e7459428 function_c0b6566f(function_bdcdc423(var_52aa09ce.var_722885f3 - var_74ae8134), 0.7, 0.3, 0.3);
	}
	var_e7459428 waittill("hash_6654e4f4");
	var_4b70f64 function_52fddbd0();
	var_e7459428 function_dc8c8404();
}

/*
	Name: function_a527e6f9
	Namespace: namespace_967f4af8
	Checksum: 0xD0A3853D
	Offset: 0x3A60
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_a527e6f9()
{
	self.var_15dfd6c = 0.3;
	self.var_3a90f16b = 100;
	self.var_eddbd1e2 = 1;
	self function_22bedfa6(0.7);
	self namespace_71e9cb84::function_74d6b22f("robot_bubbles_fx", 1);
	self waittill("hash_128f8789");
	if(isdefined(self))
	{
		self function_d7a0a9d8();
	}
}

/*
	Name: function_3b4d25aa
	Namespace: namespace_967f4af8
	Checksum: 0x4C4B12B5
	Offset: 0x3B00
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3b4d25aa()
{
	self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
	self namespace_d84e54db::function_c9e45d52(1);
}

/*
	Name: function_3ed240f1
	Namespace: namespace_967f4af8
	Checksum: 0x8A9E5D29
	Offset: 0x3B78
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3ed240f1()
{
	level.var_75756ef4 = 0;
	thread function_8492aced();
}

/*
	Name: function_8492aced
	Namespace: namespace_967f4af8
	Checksum: 0x66287DAD
	Offset: 0x3BA8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_8492aced()
{
	level waittill("hash_43565802");
	namespace_ce7c3ed5::function_7e61de2b(0, "black");
	wait(0.25);
	level waittill("hash_f26c95d0");
	namespace_ce7c3ed5::function_593c2af4(1, "black");
	level waittill("hash_43565802");
	namespace_ce7c3ed5::function_7e61de2b(0.5, "black");
	level waittill("hash_f26c95d0");
	namespace_82b91a51::function_7e61de2b(0, "black");
	level thread namespace_82b91a51::function_593c2af4(1, "black");
	level waittill("hash_43565802");
	namespace_ce7c3ed5::function_7e61de2b(0.5, "black");
	level waittill("hash_f26c95d0");
	namespace_82b91a51::function_7e61de2b(0, "black");
	level thread namespace_82b91a51::function_593c2af4(1, "black");
}

/*
	Name: function_c67c64fe
	Namespace: namespace_967f4af8
	Checksum: 0xBBAD9B36
	Offset: 0x3D00
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_c67c64fe()
{
	level endon("hash_8f79547f");
	while(1)
	{
		level waittill("hash_f26c95d0");
		if(level.var_75756ef4 == 1)
		{
			level.var_75756ef4 = 0;
			thread namespace_ce7c3ed5::function_593c2af4(0.5);
		}
	}
}

/*
	Name: function_e787e359
	Namespace: namespace_967f4af8
	Checksum: 0x7A5EC2C1
	Offset: 0x3D68
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_e787e359()
{
	level endon("hash_8f79547f");
	while(1)
	{
		level waittill("hash_43565802");
		if(level.var_75756ef4 == 0)
		{
			level.var_75756ef4 = 1;
			thread namespace_ce7c3ed5::function_7e61de2b(0.5);
		}
	}
}


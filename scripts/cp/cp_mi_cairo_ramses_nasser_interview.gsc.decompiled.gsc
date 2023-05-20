#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_level_start;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_station_fight;
#using scripts\cp\cp_mi_cairo_ramses_station_walk;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\compass;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_e55eaf53;

/*
	Name: function_d290ebfa
	Namespace: namespace_e55eaf53
	Checksum: 0xFBBB10F8
	Offset: 0x898
	Size: 0x1F3
	Parameters: 1
	Flags: None
*/
function function_d290ebfa(var_74cd64bc)
{
	level namespace_ad23e503::function_c35e6aab("raps_door_used");
	function_f7046c76();
	if(var_74cd64bc)
	{
		function_e29f0dd6();
		level thread function_2ed0dd8e();
		level namespace_cc27597::function_5c143f59("cin_ram_02_04_walk_1st_introduce_04");
		level thread namespace_7434c6b7::function_bc43c2f8(0);
		namespace_d7916d65::function_a2995f22();
		function_b760b954();
		namespace_391e4301::function_e7ebe596();
	}
	function_c99967dc(1);
	namespace_cc27597::function_8f9f34e0("cin_ram_02_interview_3rd_sh010", &function_57bc36e6, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_interview_3rd_sh270", &namespace_391e4301::function_eabc6e2f, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_interview_3rd_sh270", &function_830dd1fa, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_interview_3rd_sh270", &function_57bc36e6, "done", 0);
	namespace_cc27597::function_8f9f34e0("cin_ram_02_04_interview_part04", &function_f568f95f, "players_done");
	function_bf7cc686(var_74cd64bc);
}

/*
	Name: function_f7046c76
	Namespace: namespace_e55eaf53
	Checksum: 0x99EC1590
	Offset: 0xA98
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
}

/*
	Name: function_e29f0dd6
	Namespace: namespace_e55eaf53
	Checksum: 0x4A3F1FC6
	Offset: 0xAA8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_e29f0dd6()
{
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_7a9855f3 = namespace_82b91a51::function_740f8516("rachel");
	level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
	namespace_1d795d47::function_3096a6fd("interview_dr_nasser", level.var_9db406db);
}

/*
	Name: function_2ed0dd8e
	Namespace: namespace_e55eaf53
	Checksum: 0xE3BBCAAB
	Offset: 0xB38
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_2ed0dd8e()
{
	level thread namespace_cc27597::function_c35e6aab("cin_ram_02_interview_3rd_sh010_static_props");
	namespace_cc27597::function_43718187("cin_ram_02_04_interview_salim_wait");
}

/*
	Name: function_1bcd464b
	Namespace: namespace_e55eaf53
	Checksum: 0xC2F902EA
	Offset: 0xB80
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1bcd464b()
{
	self notify("hash_638e4884");
	self namespace_82b91a51::function_16c71b8(1);
	self function_5a7dd25d(1);
}

/*
	Name: function_bf7cc686
	Namespace: namespace_e55eaf53
	Checksum: 0x21FCC2A8
	Offset: 0xBD0
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_bf7cc686(var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			var_6bfe1586 thread function_1bcd464b();
		}
	}
	function_6a80eecf();
	level namespace_ad23e503::function_1ab5ebec("dr_nasser_interview_started");
	namespace_391e4301::function_e7ebe596(0);
	level thread namespace_e4c0c552::function_53de5c02();
	level thread namespace_bedc6a60::function_e5ed2910();
	function_e9053432();
	if(isdefined(level.var_d34cc407))
	{
		level thread [[level.var_d34cc407]]();
	}
	level namespace_cc27597::function_43718187("cin_ram_02_interview_3rd_sh010", level.var_c8b5ad07);
	level namespace_ad23e503::function_1ab5ebec("raps_door_used");
	namespace_1d795d47::function_be8adfb8("interview_dr_nasser");
}

/*
	Name: function_830dd1fa
	Namespace: namespace_e55eaf53
	Checksum: 0x43DB97CB
	Offset: 0xD78
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_830dd1fa(var_c77d2837)
{
	level thread function_7995f971();
	function_c99967dc(2);
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_interrogate_salim");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_determine_what_salim_knows");
	namespace_391e4301::function_e7ebe596();
	level.var_9db406db thread function_370a5671();
	level namespace_82b91a51::function_ef3f75eb("alert_on");
	level thread function_66a8939();
	namespace_76d95162::function_d9f49fba(1, "bc");
	level thread namespace_7434c6b7::function_bbd12ed2(0);
	level thread function_7452fdb5();
}

/*
	Name: function_7995f971
	Namespace: namespace_e55eaf53
	Checksum: 0x7F8DAF25
	Offset: 0xEA0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_7995f971()
{
	level waittill("hash_362049d4");
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_protect_salim");
	namespace_84970cc4::function_966ecb29(function_99201f25("mobile_armory", "script_noteworthy"), &namespace_16f9ecd3::function_e228c18a, 1);
	level thread namespace_cc27597::function_c35e6aab("cin_ram_03_01_defend_1st_rapsintro");
	function_e4a01869();
	function_7648e769();
	level thread namespace_bedc6a60::function_91e74b85();
}

/*
	Name: function_f568f95f
	Namespace: namespace_e55eaf53
	Checksum: 0x4614D1C4
	Offset: 0xF78
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_f568f95f(var_c77d2837)
{
	namespace_82b91a51::function_93831e79("interview_igc_done");
}

/*
	Name: function_370a5671
	Namespace: namespace_e55eaf53
	Checksum: 0x5EF200
	Offset: 0xFA8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_370a5671()
{
	var_8279bcd1 = namespace_14b42b8a::function_7922262b("defend_ramses_station_khalil_start_spot", "targetname");
	self function_e11ce512();
	self.var_7dfaf62 = 32;
	self function_9869ab67(var_8279bcd1.var_722885f3, var_8279bcd1.var_6ab6f4fd);
}

/*
	Name: function_57bc36e6
	Namespace: namespace_e55eaf53
	Checksum: 0x32D9DE77
	Offset: 0x1030
	Size: 0x27
	Parameters: 2
	Flags: None
*/
function function_57bc36e6(var_c77d2837, var_c1e63f13)
{
	if(!isdefined(var_c1e63f13))
	{
		var_c1e63f13 = 1;
	}
}

/*
	Name: function_66a8939
	Namespace: namespace_e55eaf53
	Checksum: 0x8EDDA486
	Offset: 0x1060
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_66a8939()
{
	var_1c4260d1 = function_9b7fda5e("script_origin", (7763, -48, 53));
	var_1c4260d1 function_c2931a36("evt_postint_battle_walla", 0.25);
	namespace_ad23e503::function_1ab5ebec("raps_door_used");
	var_1c4260d1 function_eaa69754(2);
	wait(2);
	var_1c4260d1 function_dc8c8404();
}

/*
	Name: function_7452fdb5
	Namespace: namespace_e55eaf53
	Checksum: 0x8F3AC47
	Offset: 0x1118
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_7452fdb5(var_c77d2837)
{
	namespace_cc27597::function_c35e6aab("cin_ram_03_01_defend_1st_rapsintro_doors_only");
	var_94312345 = function_6ada35ba("raps_intro_door_clip", "targetname");
	var_da30185c = namespace_14b42b8a::function_7922262b(var_94312345.var_b07228b6, "targetname");
	var_94312345 function_a96a2721(var_da30185c.var_722885f3, 0.05);
}

/*
	Name: function_6a80eecf
	Namespace: namespace_e55eaf53
	Checksum: 0x9A8350D6
	Offset: 0x11D0
	Size: 0x209
	Parameters: 2
	Flags: None
*/
function function_6a80eecf(var_41b16c2b, var_a083aff5)
{
	if(!isdefined(var_a083aff5))
	{
		var_a083aff5 = 0;
	}
	if(isdefined(var_41b16c2b))
	{
		level waittill(var_41b16c2b);
	}
	if(var_a083aff5)
	{
		level namespace_ad23e503::function_1ab5ebec("rs_walkthrough_safehouse_enter");
	}
	var_80f9be56 = function_6ada35ba("armory_door_collision", "targetname");
	var_80f9be56 function_4083a98e();
	var_9224b839 = function_99201f25("interrogation_door", "targetname");
	var_169a71c6 = namespace_14b42b8a::function_7922262b("armory_door_down", "targetname");
	foreach(var_56ef6b49 in var_9224b839)
	{
		var_56ef6b49.var_b1482eb5 = var_56ef6b49.var_722885f3;
		var_5d789cd = (var_56ef6b49.var_722885f3[0], var_56ef6b49.var_722885f3[1], var_169a71c6.var_722885f3[2]);
		var_56ef6b49 function_a96a2721(var_5d789cd, 1.5);
		var_56ef6b49 function_921a1574("evt_postint_door_open");
	}
}

/*
	Name: function_e4a01869
	Namespace: namespace_e55eaf53
	Checksum: 0xE5C0C3D5
	Offset: 0x13E8
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_e4a01869(var_c77d2837)
{
	var_9224b839 = function_99201f25("interrogation_door", "targetname");
	var_169a71c6 = namespace_14b42b8a::function_7922262b("armory_door_down", "targetname");
	var_80f9be56 = function_6ada35ba("armory_door_collision", "targetname");
	var_80f9be56 function_422037f5();
	foreach(var_56ef6b49 in var_9224b839)
	{
		if(isdefined(var_56ef6b49.var_b1482eb5))
		{
			var_56ef6b49 function_a96a2721(var_56ef6b49.var_b1482eb5, 1.5);
			var_56ef6b49 function_921a1574("evt_postint_door_open");
		}
	}
}

/*
	Name: function_b760b954
	Namespace: namespace_e55eaf53
	Checksum: 0x306550A3
	Offset: 0x1570
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_b760b954()
{
	var_fc044dad = namespace_14b42b8a::function_7922262b("interview_start_obj", "targetname");
	var_d30cdb6 = function_9b7fda5e("trigger_radius_use", var_fc044dad.var_722885f3 + (-15, 0, 20), 0, 64, 64);
	var_d30cdb6 function_1d5013fa();
	var_d30cdb6 function_bb863f19();
	var_d30cdb6 function_1f80b3d5();
	var_d30cdb6 function_dc378587("none");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_determine_what_salim_knows");
	namespace_82b91a51::function_14518e76(var_d30cdb6, &"cp_level_ramses_start_interview", &"CP_MI_CAIRO_RAMSES_START_INTERVIEW", &function_4f753dd2);
}

/*
	Name: function_4f753dd2
	Namespace: namespace_e55eaf53
	Checksum: 0x2FCD504B
	Offset: 0x16B0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_4f753dd2(var_6bfe1586)
{
	level.var_c8b5ad07 = var_6bfe1586;
	level namespace_ad23e503::function_74d6b22f("dr_nasser_interview_started");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_start_interview");
	self namespace_a230c2b1::function_c5a39495(1);
}

/*
	Name: function_7648e769
	Namespace: namespace_e55eaf53
	Checksum: 0xBF0FC942
	Offset: 0x1720
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_7648e769()
{
	var_e59c9ae3 = namespace_14b42b8a::function_7922262b("interview_exit_obj", "targetname");
	var_aa79ca36 = function_9b7fda5e("trigger_radius_use", var_e59c9ae3.var_722885f3, 0, 100, 64);
	var_aa79ca36 function_1d5013fa();
	var_aa79ca36 function_bb863f19();
	var_aa79ca36 function_dc378587("none");
	namespace_82b91a51::function_14518e76(var_aa79ca36, &"cp_level_ramses_exit_interview", &"CP_MI_CAIRO_RAMSES_EXIT_INTERVIEW", &function_c4bcf67b);
}

/*
	Name: function_c4bcf67b
	Namespace: namespace_e55eaf53
	Checksum: 0x99045231
	Offset: 0x1828
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_c4bcf67b(var_6bfe1586)
{
	level.var_be0fc6c8 = var_6bfe1586;
	level namespace_ad23e503::function_74d6b22f("raps_door_used");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_exit_interview");
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_defend_station");
	self namespace_a230c2b1::function_c5a39495(1);
}

/*
	Name: function_c99967dc
	Namespace: namespace_e55eaf53
	Checksum: 0xDB9FA396
	Offset: 0x18B0
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_c99967dc(var_2f9491f0)
{
	if(!isdefined(var_2f9491f0))
	{
		var_2f9491f0 = 0;
	}
	var_f5b75111 = function_6ada35ba("nasser_interview_screen_before", "targetname");
	var_9f1f82be = function_6ada35ba("nasser_interview_screen_after", "targetname");
	if(var_2f9491f0 == 0)
	{
		var_f5b75111 function_50ccee8d();
		var_9f1f82be function_50ccee8d();
	}
	else if(var_2f9491f0 == 1)
	{
		var_f5b75111 function_48f26766();
		var_9f1f82be function_50ccee8d();
	}
	else if(var_2f9491f0 == 2)
	{
		var_f5b75111 function_50ccee8d();
		var_9f1f82be function_50ccee8d();
	}
}

/*
	Name: function_e9053432
	Namespace: namespace_e55eaf53
	Checksum: 0xF882D9B
	Offset: 0x19F0
	Size: 0x291
	Parameters: 0
	Flags: None
*/
function function_e9053432()
{
	var_89a5068f = [];
	if(!isdefined(var_89a5068f))
	{
		var_89a5068f = [];
	}
	else if(!function_6e2770d8(var_89a5068f))
	{
		var_89a5068f = function_84970cc4(var_89a5068f);
	}
	var_89a5068f[var_89a5068f.size] = "cin_ram_02_04_walk_1st_introduce_01";
	if(!isdefined(var_89a5068f))
	{
		var_89a5068f = [];
	}
	else if(!function_6e2770d8(var_89a5068f))
	{
		var_89a5068f = function_84970cc4(var_89a5068f);
	}
	var_89a5068f[var_89a5068f.size] = "cin_ram_02_04_walk_1st_introduce_02";
	if(!isdefined(var_89a5068f))
	{
		var_89a5068f = [];
	}
	else if(!function_6e2770d8(var_89a5068f))
	{
		var_89a5068f = function_84970cc4(var_89a5068f);
	}
	var_89a5068f[var_89a5068f.size] = "cin_ram_02_04_walk_1st_introduce_03";
	if(!isdefined(var_89a5068f))
	{
		var_89a5068f = [];
	}
	else if(!function_6e2770d8(var_89a5068f))
	{
		var_89a5068f = function_84970cc4(var_89a5068f);
	}
	var_89a5068f[var_89a5068f.size] = "cin_ram_02_04_walk_1st_introduce_04";
	if(!isdefined(var_89a5068f))
	{
		var_89a5068f = [];
	}
	else if(!function_6e2770d8(var_89a5068f))
	{
		var_89a5068f = function_84970cc4(var_89a5068f);
	}
	var_89a5068f[var_89a5068f.size] = "cin_ram_02_04_interview_part01_static_props";
	foreach(var_a60475e6 in var_89a5068f)
	{
		if(namespace_cc27597::function_444aea32(var_a60475e6))
		{
			namespace_cc27597::function_fcf56ab5(var_a60475e6);
		}
	}
}


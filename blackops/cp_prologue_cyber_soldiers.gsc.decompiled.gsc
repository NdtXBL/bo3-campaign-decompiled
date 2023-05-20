#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_dccf27b3;

/*
	Name: function_23ed1506
	Namespace: namespace_dccf27b3
	Checksum: 0x6465D4E8
	Offset: 0x6F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_23ed1506()
{
	function_936b4205();
	level thread function_68ad0269();
}

/*
	Name: function_936b4205
	Namespace: namespace_dccf27b3
	Checksum: 0x99EC1590
	Offset: 0x728
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_936b4205()
{
}

/*
	Name: function_68ad0269
	Namespace: namespace_dccf27b3
	Checksum: 0x951747C4
	Offset: 0x738
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_68ad0269()
{
	level thread namespace_2cb3876f::function_950d1c3b(0);
	level thread function_74df00be();
	level thread function_26f3c859();
	level thread function_55b2b7ce();
	level thread function_e3957b4();
	level.var_2fd26037 function_e11ce512();
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3, 1);
	level.var_5d4087a6 = namespace_82b91a51::function_740f8516("hyperion");
	level.var_7f246cd7 = namespace_82b91a51::function_740f8516("pallas");
	level.var_92d245e2 = namespace_82b91a51::function_740f8516("prometheus");
	level.var_f58c9f31 = namespace_82b91a51::function_740f8516("theia");
	level.var_92d245e2 function_cea50a94(1);
	level.var_2fd26037 function_cea50a94(1);
	function_9f230ee1();
	namespace_2cb3876f::function_47a62798(0);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 0);
	namespace_dabbe128::function_a0ac4434(&namespace_4dc8633b::function_4d4f1d4f);
	level notify("hash_e1626ff0");
	level.var_92d245e2 function_cea50a94(0);
	level.var_2fd26037 function_cea50a94(0);
	namespace_1d795d47::function_be8adfb8("skipto_intro_cyber_soldiers");
}

/*
	Name: function_55b2b7ce
	Namespace: namespace_dccf27b3
	Checksum: 0xC22968C3
	Offset: 0x990
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_55b2b7ce()
{
	level waittill("hash_999aab74");
	var_771bcc8f = function_6ada35ba("cyber_solider_intro_lift_clip", "targetname");
	var_771bcc8f function_dc8c8404();
}

/*
	Name: function_26f3c859
	Namespace: namespace_dccf27b3
	Checksum: 0x18771EF3
	Offset: 0x9F0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_26f3c859()
{
	wait(20);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_hangar_doors_02_bundle");
	var_6cebf8ac = function_6ada35ba("cyber_hangar_gate_r_pos", "targetname");
	var_6cebf8ac function_921a1574("evt_hangar_start_r");
	var_6cebf8ac function_c2931a36("evt_hangar_loop_r");
	var_5fb95ff2 = function_6ada35ba("cyber_hangar_gate_l_pos", "targetname");
	var_5fb95ff2 function_921a1574("evt_hangar_start_l");
	var_5fb95ff2 function_c2931a36("evt_hangar_loop_l");
	level waittill("hash_8e385112");
	var_6cebf8ac function_921a1574("evt_hangar_stop_r");
	var_5fb95ff2 function_921a1574("evt_hangar_stop_l");
	var_6cebf8ac function_eaa69754(0.1);
	var_5fb95ff2 function_eaa69754(0.1);
	level namespace_82b91a51::function_ef3f75eb("sndBW");
	function_bab1ff00("umbra_gate_hangar_02", 0);
}

/*
	Name: function_4ed5ddb9
	Namespace: namespace_dccf27b3
	Checksum: 0x2A4294DD
	Offset: 0xBB0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_4ed5ddb9(var_5b01a37b)
{
	var_277f35c0 = function_b4cb3503(var_5b01a37b, "targetname");
	self function_9869ab67(var_277f35c0.var_722885f3, var_277f35c0.var_6ab6f4fd, 1);
	self function_169cc712(var_277f35c0);
}

/*
	Name: function_b75b4d97
	Namespace: namespace_dccf27b3
	Checksum: 0xDFE56C48
	Offset: 0xC40
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_b75b4d97(var_6c5c89e1)
{
	if(isdefined(var_6c5c89e1))
	{
		var_9de10fe3 = function_b4cb3503(var_6c5c89e1, "targetname");
		self function_169cc712(var_9de10fe3, 1, 16);
		return;
	}
	self function_169cc712(self.var_722885f3, 1, 16);
}

/*
	Name: function_9f230ee1
	Namespace: namespace_dccf27b3
	Checksum: 0x8F12237C
	Offset: 0xCD8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_9f230ee1()
{
	level waittill("hash_af22422d");
	namespace_80983c42::function_593e8a39("light_exploder_igc_cybersoldier");
}

/*
	Name: function_679e7da9
	Namespace: namespace_dccf27b3
	Checksum: 0xB1A40500
	Offset: 0xD10
	Size: 0x269
	Parameters: 1
	Flags: None
*/
function function_679e7da9(var_c77d2837)
{
	level thread function_ac290386();
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack", &namespace_21b2c1f2::function_43ead72c, "play");
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack", &function_39b556d, "play");
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack", &function_e98e1240, "play");
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_sarah_attack", &function_4e5acf5e, "play");
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack", &function_a21df404, "play");
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_confrontation_hkm", &function_89f840a1, "play");
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_confrontation_hkm", &function_d71a5c1b, "play");
	namespace_cc27597::function_8f9f34e0("cin_pro_09_01_intro_1st_cybersoldiers_confrontation", &function_73293683, "play");
	if(isdefined(level.var_fba4a2cc))
	{
		level thread [[level.var_fba4a2cc]]();
	}
	level thread namespace_cc27597::function_43718187("cin_pro_09_01_intro_1st_cybersoldiers_diaz_attack");
	level thread namespace_cc27597::function_43718187("cin_pro_09_01_intro_1st_cybersoldiers_maretti_attack");
	level thread namespace_cc27597::function_43718187("cin_pro_09_01_intro_1st_cybersoldiers_sarah_attack");
	level thread namespace_cc27597::function_43718187("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack");
	level waittill("hash_afbcd4e8");
	namespace_82b91a51::function_a0938376();
	level notify("hash_af22422d");
}

/*
	Name: function_d71a5c1b
	Namespace: namespace_dccf27b3
	Checksum: 0xE1CED41B
	Offset: 0xF88
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_d71a5c1b(var_c77d2837)
{
	level waittill("hash_60921fc7");
	level.var_2fd26037 thread function_b75b4d97("node_cyber_hendricks");
	level.var_9db406db thread function_b75b4d97();
	level.var_4d5a4697 thread function_b75b4d97();
}

/*
	Name: function_73293683
	Namespace: namespace_dccf27b3
	Checksum: 0xDD4FE083
	Offset: 0x1000
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_73293683(var_c77d2837)
{
	level waittill("hash_afbcd4e8");
	level.var_92d245e2 thread function_b75b4d97();
	level.var_5d4087a6 thread function_b75b4d97();
	level.var_7f246cd7 thread function_b75b4d97("node_cyber_diaz");
	level.var_f58c9f31 thread function_b75b4d97();
}

/*
	Name: function_ac290386
	Namespace: namespace_dccf27b3
	Checksum: 0x7A4E34AD
	Offset: 0x1090
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_ac290386()
{
	level waittill("hash_b7587dcc");
	level waittill("hash_63ae24ea");
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 1);
	namespace_dabbe128::function_356a4ee1(&namespace_4dc8633b::function_4d4f1d4f);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_4dc8633b::function_7072c5d8);
	level waittill("hash_af43d596");
	function_37cbcf1a("evt_soldierintro_walla_panic_1", (6859, 886, 191));
	function_37cbcf1a("evt_soldierintro_walla_panic_2", (6870, 598, 197));
}

/*
	Name: function_89f840a1
	Namespace: namespace_dccf27b3
	Checksum: 0x34D69EB0
	Offset: 0x1188
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_89f840a1(var_c77d2837)
{
	var_9db406db = var_c77d2837["khalil"];
	var_4d5a4697 = var_c77d2837["minister"];
	var_9db406db.var_7dfaf62 = 32;
	var_4d5a4697.var_7dfaf62 = 32;
	level waittill("hash_fd263aff");
	var_4d5a4697 function_169cc712(var_4d5a4697.var_722885f3);
	var_4d5a4697 namespace_d84e54db::function_ceb883cd("vignette_mode", "fast");
	level waittill("hash_19175c89");
	var_9db406db function_169cc712(var_9db406db.var_722885f3);
	var_9db406db namespace_d84e54db::function_ceb883cd("vignette_mode", "fast");
}

/*
	Name: function_39b556d
	Namespace: namespace_dccf27b3
	Checksum: 0xEA673049
	Offset: 0x12A8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_39b556d(var_c77d2837)
{
	var_7b00e29e = var_c77d2837["pallas"];
	var_7b00e29e function_9110a277(1, 0);
	var_7b00e29e waittill("hash_c22232d8");
	var_7b00e29e function_9110a277(0);
}

/*
	Name: function_e98e1240
	Namespace: namespace_dccf27b3
	Checksum: 0x8BE6D694
	Offset: 0x1320
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_e98e1240(var_c77d2837)
{
	var_7b00e29e = var_c77d2837["prometheus"];
	var_7b00e29e function_9110a277(1, 0);
	var_7b00e29e waittill("hash_c22232d8");
	var_7b00e29e function_9110a277(0);
	var_7b00e29e waittill("hash_aa29fe4f");
	var_9de10fe3 = function_b4cb3503("nd_taylor_after_intro", "targetname");
	var_7b00e29e function_169cc712(var_9de10fe3);
	var_7b00e29e function_9110a277(1, 1);
	wait(2);
	var_7b00e29e function_8c8e79fe();
}

/*
	Name: function_4e5acf5e
	Namespace: namespace_dccf27b3
	Checksum: 0xB22A40F
	Offset: 0x1430
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_4e5acf5e(var_c77d2837)
{
	var_7b00e29e = var_c77d2837["theia"];
	var_7b00e29e function_9110a277(1, 0);
	var_7b00e29e waittill("hash_c22232d8");
	var_7b00e29e function_9110a277(0);
	var_7b00e29e waittill("hash_aa29fe4f");
	var_9de10fe3 = function_b4cb3503("nd_theia_after_intro", "targetname");
	var_7b00e29e function_169cc712(var_9de10fe3);
	var_7b00e29e function_9110a277(1, 1);
	wait(2);
	var_7b00e29e function_8c8e79fe();
}

/*
	Name: function_a21df404
	Namespace: namespace_dccf27b3
	Checksum: 0xF14BB23F
	Offset: 0x1540
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_a21df404(var_c77d2837)
{
	var_7b00e29e = var_c77d2837["hyperion"];
	var_7b00e29e waittill("hash_aa29fe4f");
	var_9de10fe3 = function_b4cb3503("nd_hyperion_after_intro", "targetname");
	var_7b00e29e function_169cc712(var_9de10fe3);
	var_7b00e29e function_9110a277(1, 1);
	wait(1.5);
	var_7b00e29e function_8c8e79fe();
}

/*
	Name: function_9110a277
	Namespace: namespace_dccf27b3
	Checksum: 0x3A21500F
	Offset: 0x1608
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function function_9110a277(var_e33a0786, var_fbf0fdce)
{
	if(!isdefined(var_fbf0fdce))
	{
		var_fbf0fdce = 1;
	}
	self endon("hash_128f8789");
	if(var_e33a0786 == 1)
	{
		self function_8b51b0e9("gdt_activecamo_on_npc", "tag_eye");
	}
	else
	{
		self function_8b51b0e9("gdt_activecamo_off_npc", "tag_eye");
	}
	if(isdefined(var_fbf0fdce) && var_fbf0fdce)
	{
		self namespace_71e9cb84::function_74d6b22f("cyber_soldier_camo", 2);
		wait(2);
	}
	self namespace_71e9cb84::function_74d6b22f("cyber_soldier_camo", var_e33a0786);
}

/*
	Name: function_8bf0b925
	Namespace: namespace_dccf27b3
	Checksum: 0xB6BE2F8E
	Offset: 0x16F8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_8bf0b925()
{
	var_950ed8c6 = function_b4cb3503("ms_lift_exit1_begin", "targetname");
	function_47d28a09(var_950ed8c6);
}

/*
	Name: function_e3957b4
	Namespace: namespace_dccf27b3
	Checksum: 0x30369C8C
	Offset: 0x1748
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_e3957b4()
{
	if(!isdefined(level.var_3dce3f88))
	{
		level.var_3dce3f88 = function_9b7fda5e("script_model", level.var_be31aa9a.var_722885f3);
		level.var_be31aa9a function_37f7858a(level.var_3dce3f88);
	}
	level.var_3dce3f88 function_8bdea13c(220, 12.3);
	level.var_3dce3f88 waittill("hash_a21db68a");
	level.var_2fd26037 function_e11ce512();
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3, 1);
	level thread function_8bf0b925();
	level.var_9db406db function_52fddbd0();
	level.var_7b90133a function_eaa69754(0.1);
	level.var_be31aa9a function_921a1574("evt_freight_lift_stop");
}

/*
	Name: function_f9753551
	Namespace: namespace_dccf27b3
	Checksum: 0x34ABDAC1
	Offset: 0x18A8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_f9753551()
{
	level.var_be31aa9a = function_6ada35ba("freight_lift", "targetname");
	level.var_be31aa9a function_921a1574("evt_freight_lift_start");
	level.var_7b90133a = function_9b7fda5e("script_origin", level.var_be31aa9a.var_722885f3);
	level.var_7b90133a function_37f7858a(level.var_be31aa9a);
	level.var_7b90133a function_c2931a36("evt_freight_lift_loop");
	level.var_1dd14818 = 1;
	level.var_3dce3f88 function_8bdea13c(-354, 0.05);
	level.var_3dce3f88 waittill("hash_a21db68a");
	level.var_7b90133a function_eaa69754(0.1);
}

/*
	Name: function_74df00be
	Namespace: namespace_dccf27b3
	Checksum: 0x5255A67F
	Offset: 0x19D0
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_74df00be()
{
	var_f7c3e69a = function_b8494651("axis");
	foreach(var_d84e54db in var_f7c3e69a)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db function_dc8c8404();
		}
	}
}


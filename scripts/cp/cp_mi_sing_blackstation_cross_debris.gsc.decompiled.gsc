#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation_comm_relay;
#using scripts\cp\cp_mi_sing_blackstation_station;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_e785bfa0;

/*
	Name: function_e9acb08
	Namespace: namespace_e785bfa0
	Checksum: 0x67738285
	Offset: 0x7B0
	Size: 0x1EB
	Parameters: 2
	Flags: None
*/
function function_e9acb08(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_cross_debris");
		namespace_79e1cd97::function_da579a5d("objective_blackstation_exterior");
		level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(1);
		level thread function_b0ed4f4f();
		namespace_4dbf3ae3::function_42e87952("triggercolor_walkway");
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_82b91a51::function_d8eaed3d(4);
	level thread namespace_cc27597::function_43718187("cin_bla_13_02_looting_vign_lightningstrike_ziplinetalk_kane_idle");
	level thread namespace_4040b6c2::function_5142ef8e();
	level thread namespace_79e1cd97::function_6778ea09("light_ne");
	level thread function_5fae6516();
	level thread function_6ffde259();
	level thread function_7e62fe5e();
	level thread function_52065393();
	level.var_2fd26037 thread namespace_4040b6c2::function_a561f620();
	level.var_2fd26037 thread namespace_79e1cd97::function_ba29155a();
	level.var_2fd26037 thread function_289b95f6();
	level.var_2fd26037 thread function_9ead7187();
}

/*
	Name: function_508330ae
	Namespace: namespace_e785bfa0
	Checksum: 0x81FA9CC7
	Offset: 0x9A8
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_508330ae(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(isdefined(level.var_3d556bcd))
	{
		level.var_3d556bcd namespace_1d795d47::function_d9b1ee00(namespace_14b42b8a::function_7922262b("kane_ziplines", "script_noteworthy"));
	}
	level thread namespace_82b91a51::function_a0938376();
}

/*
	Name: function_b0ed4f4f
	Namespace: namespace_e785bfa0
	Checksum: 0x3502254A
	Offset: 0xA38
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_b0ed4f4f()
{
	var_10d5eaaa = function_6ada35ba("linkto_door_left", "targetname");
	var_7bc07f9 = function_6ada35ba("linkto_door_right", "targetname");
	var_afbdfbfe = function_6ada35ba("com_relay_bridge_doors_left", "targetname");
	var_21829c35 = function_6ada35ba("com_relay_bridge_doors_right", "targetname");
	var_afbdfbfe function_37f7858a(var_10d5eaaa);
	var_21829c35 function_37f7858a(var_7bc07f9);
	var_10d5eaaa function_21d0da55(100, 0.3);
	var_7bc07f9 function_21d0da55(-100, 0.3);
	function_6ada35ba("comrelay_door_clip_right", "targetname") function_dc8c8404();
	function_6ada35ba("comrelay_door_clip_left", "targetname") function_dc8c8404();
}

/*
	Name: function_52065393
	Namespace: namespace_e785bfa0
	Checksum: 0xB6011FEB
	Offset: 0xBD8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_52065393()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_vo_warn");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_collapsed_bldg_debris_01_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_building_debris2");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_collapsed_bldg_debris_02_bundle");
}

/*
	Name: function_5fae6516
	Namespace: namespace_e785bfa0
	Checksum: 0x2DFE892E
	Offset: 0xC58
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_5fae6516()
{
	level thread namespace_d0ef8521::function_45d1556("cross_debris_breadcrumb");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_under_zipline");
	level thread namespace_d0ef8521::function_45d1556("trigger_zipline_breadcrumb", "cp_level_blackstation_climb");
	level namespace_ad23e503::function_1ab5ebec("goto_zipline");
	namespace_1d795d47::function_be8adfb8("objective_cross_debris");
}

/*
	Name: function_289b95f6
	Namespace: namespace_e785bfa0
	Checksum: 0x1DE3D93C
	Offset: 0xD00
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_289b95f6()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_sky_bridge");
	self namespace_71b8dba1::function_81141386("hend_structure_s_unstable_0");
	level namespace_ad23e503::function_1ab5ebec("in_atrium");
	level namespace_71b8dba1::function_13b3b16a("plyr_watch_out_hendricks_0", 1);
	namespace_4dbf3ae3::function_1ab5ebec("trigger_vo_warn");
	self namespace_71b8dba1::function_81141386("hend_watch_your_step_b_0", 0.5);
	level namespace_ad23e503::function_1ab5ebec("vo_falling_apart");
	level namespace_71b8dba1::function_13b3b16a("plyr_this_place_is_fallin_0", 1);
}

/*
	Name: function_9ead7187
	Namespace: namespace_e785bfa0
	Checksum: 0xC6919D44
	Offset: 0xE08
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_9ead7187()
{
	level endon("hash_62f8dc0c");
	self namespace_d84e54db::function_b4f5e3b9(1);
	level waittill("hash_5050a70c");
	self namespace_6f7b2095::function_54bdb053();
	level namespace_cc27597::function_8f9f34e0("cin_bla_12_01_cross_debris_vign_point", &function_8bcb3a1b);
	level namespace_cc27597::function_43718187("cin_bla_12_01_cross_debris_vign_point", self);
	level namespace_ad23e503::function_1ab5ebec("vo_falling_apart");
	self namespace_6f7b2095::function_bae40a28();
	level namespace_ad23e503::function_74d6b22f("hendricks_crossed");
	self namespace_d84e54db::function_b4f5e3b9(1);
}

/*
	Name: function_8bcb3a1b
	Namespace: namespace_e785bfa0
	Checksum: 0xA1111C3F
	Offset: 0xF10
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_8bcb3a1b(var_c77d2837)
{
	level.var_2fd26037 function_169cc712(function_b4cb3503("hendricks_crossdebris_landing", "targetname"));
}

/*
	Name: function_7e62fe5e
	Namespace: namespace_e785bfa0
	Checksum: 0x503E241
	Offset: 0xF60
	Size: 0x1D5
	Parameters: 0
	Flags: None
*/
function function_7e62fe5e()
{
	level namespace_ad23e503::function_1ab5ebec("atrium_rubble_dropped");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("cp_blackstation_building_lean_rumble");
	}
	var_895e60d2 = namespace_84970cc4::function_8332f7f6(namespace_14b42b8a::function_7faf4c39("crossdebris_window"));
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		function_be97adee(var_895e60d2[var_c957f6b6].var_722885f3, 100, 500, 500);
		wait(function_62e4226e(1));
	}
	level waittill("hash_b251293d");
	for(var_c957f6b6 = 4; var_c957f6b6 < var_895e60d2.size; var_c957f6b6++)
	{
		function_be97adee(var_895e60d2[var_c957f6b6].var_722885f3, 100, 500, 500);
		wait(function_62e4226e(0.3));
	}
}

/*
	Name: function_6ffde259
	Namespace: namespace_e785bfa0
	Checksum: 0x41D64E5F
	Offset: 0x1140
	Size: 0x253
	Parameters: 0
	Flags: None
*/
function function_6ffde259()
{
	level namespace_ad23e503::function_1ab5ebec("in_atrium");
	var_b5ebc943 = function_6ada35ba("crossdebris_rubble_drop", "targetname");
	var_b5ebc943 function_822f0cc5();
	level namespace_ad23e503::function_74d6b22f("atrium_rubble_dropped");
	var_b71ed4a2 = namespace_14b42b8a::function_7922262b("crossdebris_rubble_impact").var_722885f3;
	function_eac31668(var_b71ed4a2, 800, 5, 5);
	level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_blackstation_apartment_collapse_bundle", &function_beaf4ba6);
	level namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_apartment_collapse_bundle");
	function_9e3608e3("wooden_bridge");
	function_6ddd4fa4("frogger_building_fallen");
	namespace_84970cc4::function_eaab05dc(function_99201f25("wooden_bridge", "targetname"), &function_50ccee8d);
	namespace_84970cc4::function_eaab05dc(function_99201f25("frogger_building_fallen", "targetname"), &function_48f26766);
	level namespace_ad23e503::function_74d6b22f("bridge_collapsed");
	var_935a64f = function_6ada35ba("clip_building_collapse", "targetname");
	if(isdefined(var_935a64f))
	{
		var_935a64f function_dc8c8404();
	}
	level thread namespace_4040b6c2::function_b8052aae();
}

/*
	Name: function_beaf4ba6
	Namespace: namespace_e785bfa0
	Checksum: 0x96EA6ACD
	Offset: 0x13A0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_beaf4ba6(var_c77d2837)
{
	namespace_80983c42::function_80983c42("fx_expl_apartment_fall");
	level waittill("hash_b251293d");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("cp_blackstation_building_collapse_rumble");
	}
}


#using scripts\codescripts\struct;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_3d19ef22;

/*
	Name: function_d290ebfa
	Namespace: namespace_3d19ef22
	Checksum: 0xC7D10DC2
	Offset: 0x4D0
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	level.var_c1aa5253["green_light"] = "light/fx_light_depth_charge_inactive";
	level.var_c1aa5253["yellow_light"] = "light/fx_light_depth_charge_warning";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_3d19ef22
	Checksum: 0xF4B64E9F
	Offset: 0x528
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "sm_depth_charge_fx", 1, 1, "int", &function_21197c95, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "water_disturbance", 1, 1, "int", &function_f354307b, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "umbra_tome_singapore", 1, 2, "counter", &function_2b6fcfd1, 0, 0);
}

/*
	Name: function_5bcd68f2
	Namespace: namespace_3d19ef22
	Checksum: 0x4E685303
	Offset: 0x610
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_5bcd68f2(var_b04bc952, var_74cd64bc)
{
	level thread function_5f80268d();
	level thread function_b087f50();
	level thread function_69ec3f06();
	level thread function_320f5638();
	level thread function_a9bc976();
	function_69a58458("sing_water", 1);
	level thread namespace_cc27597::function_43718187("root_singapore_shutters", "targetname");
}

/*
	Name: function_95b88092
	Namespace: namespace_3d19ef22
	Checksum: 0x6855BFB5
	Offset: 0x6F0
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_95b88092(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_5f80268d();
		level thread function_b087f50();
		level thread function_69ec3f06();
	}
}

/*
	Name: function_5c143f59
	Namespace: namespace_3d19ef22
	Checksum: 0xFA958075
	Offset: 0x760
	Size: 0x17B
	Parameters: 2
	Flags: None
*/
function function_5c143f59(var_b04bc952, var_74cd64bc)
{
	level thread namespace_cc27597::function_fcf56ab5("root_singapore_shutters", "targetname");
	function_69a58458("sing_water", 0);
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_singapore_vign_bodies01");
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_singapore_vign_bodies02");
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_singapore_vign_bodies03");
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_singapore_vign_pulled01");
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_singapore_vign_pulled02");
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_singapore_vign_pulled03");
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_singapore_hanging_shortrope");
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_singapore_hanging_shortrope_2");
	level notify("hash_1c383277");
	level thread namespace_8e9083ff::function_3bf27f88(var_b04bc952);
}

/*
	Name: function_2b6fcfd1
	Namespace: namespace_3d19ef22
	Checksum: 0x74E4CCAA
	Offset: 0x8E8
	Size: 0x53
	Parameters: 7
	Flags: None
*/
function function_2b6fcfd1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_63ea531c(var_ec74b091);
}

/*
	Name: function_5f80268d
	Namespace: namespace_3d19ef22
	Checksum: 0xF0D2FF57
	Offset: 0x948
	Size: 0x313
	Parameters: 0
	Flags: None
*/
function function_5f80268d()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_roots_water01_bundle", &namespace_8e9083ff::function_4dd02a03, "done", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_roots_water02_bundle", &namespace_8e9083ff::function_4dd02a03, "done", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_shutter_lt_02_red_bundle", &namespace_8e9083ff::function_4dd02a03, "done", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_shutter_rt_02_red_bundle", &namespace_8e9083ff::function_4dd02a03, "done", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_shutter_lt_10_red_white_bundle", &namespace_8e9083ff::function_4dd02a03, "done", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_shutter_rt_10_red_white_bundle", &namespace_8e9083ff::function_4dd02a03, "done", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("cin_zur_16_02_singapore_vign_bodies01", &namespace_8e9083ff::function_4dd02a03, "play", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("cin_zur_16_02_singapore_vign_bodies02", &namespace_8e9083ff::function_4dd02a03, "play", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("cin_zur_16_02_singapore_vign_bodies03", &namespace_8e9083ff::function_4dd02a03, "play", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("cin_zur_16_02_singapore_vign_pulled01", &namespace_8e9083ff::function_4dd02a03, "play", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("cin_zur_16_02_singapore_vign_pulled02", &namespace_8e9083ff::function_4dd02a03, "play", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("cin_zur_16_02_singapore_vign_pulled03", &namespace_8e9083ff::function_4dd02a03, "play", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("cin_zur_16_02_singapore_hanging_shortrope", &namespace_8e9083ff::function_4dd02a03, "play", "root_singapore_cleanup");
	namespace_cc27597::function_8f9f34e0("cin_zur_16_02_singapore_hanging_shortrope_2", &namespace_8e9083ff::function_4dd02a03, "play", "root_singapore_cleanup");
}

/*
	Name: function_b087f50
	Namespace: namespace_3d19ef22
	Checksum: 0xA639A48D
	Offset: 0xC68
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_b087f50()
{
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_roots_water01_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_roots_water02_bundle");
	wait(2.5);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_roots_water01_bundle");
	wait(2);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_roots_water02_bundle");
}

/*
	Name: function_69ec3f06
	Namespace: namespace_3d19ef22
	Checksum: 0xE25E11E
	Offset: 0xD00
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_69ec3f06()
{
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_singapore_vign_bodies01");
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_singapore_vign_bodies02");
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_singapore_vign_bodies03");
}

/*
	Name: function_320f5638
	Namespace: namespace_3d19ef22
	Checksum: 0xCD73CB23
	Offset: 0xD70
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_320f5638()
{
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_singapore_vign_pulled01");
	wait(function_72a94f05(2, 5));
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_singapore_vign_pulled02");
	wait(function_72a94f05(2, 5));
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_singapore_vign_pulled03");
}

/*
	Name: function_a9bc976
	Namespace: namespace_3d19ef22
	Checksum: 0x9D050371
	Offset: 0xE10
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_a9bc976()
{
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_singapore_hanging_shortrope");
	wait(function_72a94f05(2, 5));
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_singapore_hanging_shortrope_2");
}

/*
	Name: function_f354307b
	Namespace: namespace_3d19ef22
	Checksum: 0x5B462AED
	Offset: 0xE78
	Size: 0x153
	Parameters: 7
	Flags: None
*/
function function_f354307b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(self.var_2e7c1306))
	{
		var_c6107c9b = "zur_wave_jnt";
		self.var_2e7c1306 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self function_d48f2ab3(var_c6107c9b), self function_cd1d99bd(var_c6107c9b));
		self.var_2e7c1306 function_37f7858a(self, var_c6107c9b);
		self.var_2e7c1306 function_d432d87a(0.4, 1000, 2500, 1, 0);
	}
	if(var_9193c732)
	{
		self.var_2e7c1306.var_5ad95f6a = 1;
	}
	else
	{
		self.var_2e7c1306.var_5ad95f6a = 0;
		wait(0.016);
		self.var_2e7c1306 function_dc8c8404();
	}
}

/*
	Name: function_21197c95
	Namespace: namespace_3d19ef22
	Checksum: 0x3CC807FE
	Offset: 0xFD8
	Size: 0x10D
	Parameters: 7
	Flags: None
*/
function function_21197c95(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(isdefined(self.var_46695cf4))
	{
		function_d555a113(var_ec74b091, self.var_46695cf4);
		self.var_46695cf4 = undefined;
	}
	switch(var_9193c732)
	{
		case 0:
		{
			self.var_46695cf4 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["yellow_light"], self, "tag_origin");
			break;
		}
		case 1:
		{
			self.var_46695cf4 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["green_light"], self, "tag_origin");
			break;
		}
	}
}


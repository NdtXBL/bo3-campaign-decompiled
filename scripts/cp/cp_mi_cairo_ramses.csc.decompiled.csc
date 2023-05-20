#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_patch_c;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\filter_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_ae122cd0;

/*
	Name: function_d290ebfa
	Namespace: namespace_ae122cd0
	Checksum: 0x12D92210
	Offset: 0x528
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 3);
	function_2ea898a8();
	namespace_b9254c21::function_d290ebfa();
	namespace_39972b4::function_d290ebfa();
	namespace_dabbe128::function_828aea2c(&function_aebcf025);
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	level.var_7ab81734 = function_de7504ea("station_shells");
	level thread function_9e41eeb7();
	namespace_98e946e1::function_7403e82b();
}

/*
	Name: function_aebcf025
	Namespace: namespace_ae122cd0
	Checksum: 0x4FC4135F
	Offset: 0x620
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	namespace_3d5de9eb::function_2faed441(var_5dc5e20a);
}

/*
	Name: function_2ea898a8
	Namespace: namespace_ae122cd0
	Checksum: 0x9C35B0C6
	Offset: 0x670
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "hide_station_miscmodels", 1, 1, "int", &function_21e48ac1, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "turn_on_rotating_fxanim_fans", 1, 1, "int", &function_c3bc3428, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "turn_on_rotating_fxanim_lights", 1, 1, "int", &function_27ea427d, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "delete_fxanim_fans", 1, 1, "int", &function_c6f41a3f, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "nasser_interview_extra_cam", 1, 1, "int", &function_6aab1d81, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "ramses_station_lamps", 1, 1, "int", &function_be990cdb, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "rap_blood_on_player", 1, 1, "counter", &function_4fc2bc7e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "staging_area_intro", 1, 1, "int", &function_143809eb, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "filter_ev_interference_toggle", 1, 1, "int", &function_c61525e1, 0, 0);
}

/*
	Name: function_71f88fc
	Namespace: namespace_ae122cd0
	Checksum: 0x3C23DFF
	Offset: 0x908
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_7d372786)
{
	switch(var_7d372786)
	{
		case 1:
		{
			break;
		}
		case 2:
		{
			function_2e76fa01("c_ega_soldier_3_pincushion_fb");
			break;
		}
		case 3:
		{
			function_71c4474e("p_ramses_lift_wing_blockage");
			function_834b41f9("p7_fxanim_cp_ramses_medical_tarp_cover_s3_sanim");
			function_834b41f9("p7_fxanim_gp_drone_hunter_swarm_large_sanim");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_c3bc3428
	Namespace: namespace_ae122cd0
	Checksum: 0xB562177E
	Offset: 0x9C8
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_c3bc3428(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!namespace_cc27597::function_367f8966("p7_fxanim_gp_fan_digital_small_bundle"))
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_fan_digital_small_bundle");
	}
}

/*
	Name: function_27ea427d
	Namespace: namespace_ae122cd0
	Checksum: 0x552BD05
	Offset: 0xA48
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_27ea427d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!namespace_cc27597::function_367f8966("p7_fxanim_gp_light_emergency_military_01_bundle"))
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_light_emergency_military_01_bundle");
	}
}

/*
	Name: function_c6f41a3f
	Namespace: namespace_ae122cd0
	Checksum: 0x35CE2382
	Offset: 0xAC8
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_c6f41a3f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(namespace_cc27597::function_444aea32("p7_fxanim_gp_fan_digital_small_bundle"))
	{
		level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_fan_digital_small_bundle", 1);
	}
}

/*
	Name: function_143809eb
	Namespace: namespace_ae122cd0
	Checksum: 0xD3E6FBE6
	Offset: 0xB48
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_143809eb(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_tarp_gust_01_bundle");
	}
	else
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_tarp_gust_01_bundle");
	}
}

/*
	Name: function_be990cdb
	Namespace: namespace_ae122cd0
	Checksum: 0xC9952F07
	Offset: 0xBD8
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_be990cdb(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self namespace_cc27597::function_43718187("ramses_station_lamps", "targetname");
	}
}

/*
	Name: function_f139780f
	Namespace: namespace_ae122cd0
	Checksum: 0xEEF1C964
	Offset: 0xC50
	Size: 0x11B
	Parameters: 7
	Flags: None
*/
function function_f139780f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_d6e89d77 = namespace_14b42b8a::function_7922262b("train_extra_cam", "targetname");
		self.var_78be5d02 = function_9b7fda5e(var_ec74b091, var_d6e89d77.var_722885f3, "script_origin");
		self.var_78be5d02.var_6ab6f4fd = var_d6e89d77.var_6ab6f4fd;
		self.var_78be5d02 function_37f7858a(self);
		level.var_5bcfe40a = self.var_78be5d02;
	}
	else if(isdefined(self.var_78be5d02))
	{
		self.var_78be5d02 function_dc8c8404();
	}
}

/*
	Name: function_25e7d865
	Namespace: namespace_ae122cd0
	Checksum: 0xC5578CAC
	Offset: 0xD78
	Size: 0xF3
	Parameters: 7
	Flags: None
*/
function function_25e7d865(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		/#
			namespace_33b293fd::function_a7ee953(isdefined(level.var_5bcfe40a), "Dev Block strings are not supported");
		#/
		level.var_5bcfe40a function_69b16290(0);
		function_6c1294b8("r_extracam_custom_aspectratio", 0.769);
	}
	else
	{
		function_6c1294b8("r_extracam_custom_aspectratio", -1);
		if(isdefined(level.var_5bcfe40a))
		{
			level.var_5bcfe40a function_dc8c8404();
		}
	}
}

/*
	Name: function_6aab1d81
	Namespace: namespace_ae122cd0
	Checksum: 0x24FAFC41
	Offset: 0xE78
	Size: 0xCB
	Parameters: 7
	Flags: None
*/
function function_6aab1d81(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_7b2c375d = function_6ada35ba(var_ec74b091, "interview_extra_cam", "targetname");
	if(var_9193c732 == 1)
	{
		if(isdefined(var_7b2c375d))
		{
			var_7b2c375d function_69b16290(0);
		}
	}
	else if(isdefined(var_7b2c375d))
	{
		var_7b2c375d function_9de0788f();
	}
}

/*
	Name: function_4fc2bc7e
	Namespace: namespace_ae122cd0
	Checksum: 0xD8044E97
	Offset: 0xF50
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_4fc2bc7e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_23e91425("foley", "normal");
	if(var_9193c732 == 1)
	{
		if(!namespace_82b91a51::function_179773ff())
		{
			self thread namespace_bdde9225::function_bca12b73("pstfx_blood_spatter");
		}
	}
}

/*
	Name: function_21e48ac1
	Namespace: namespace_ae122cd0
	Checksum: 0xB796AD87
	Offset: 0xFF8
	Size: 0x1B5
	Parameters: 7
	Flags: None
*/
function function_21e48ac1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_7ab81734), "Dev Block strings are not supported");
	#/
	if(var_9193c732 == 1)
	{
		foreach(var_6df9264 in level.var_7ab81734)
		{
			function_201670be(var_6df9264);
			if(var_c957f6b6 % 25 == 0)
			{
				wait(0.016);
			}
		}
		break;
	}
	foreach(var_6df9264 in level.var_7ab81734)
	{
		function_28aac069(var_6df9264);
		if(var_c957f6b6 % 10 == 0)
		{
			wait(0.016);
		}
	}
}

/*
	Name: function_c61525e1
	Namespace: namespace_ae122cd0
	Checksum: 0x971040E9
	Offset: 0x11B8
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_c61525e1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 0)
	{
		namespace_3d5de9eb::function_671d8b9(self, 0);
	}
	else
	{
		namespace_3d5de9eb::function_496935c(self, 0);
		namespace_3d5de9eb::function_6f3b715c(self, 0, 1);
	}
}

/*
	Name: function_9e41eeb7
	Namespace: namespace_ae122cd0
	Checksum: 0x99EC1590
	Offset: 0x1250
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9e41eeb7()
{
}


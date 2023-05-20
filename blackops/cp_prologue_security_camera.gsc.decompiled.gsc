#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_apc;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_hostage_rescue;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\doors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_e09822e3;

/*
	Name: function_d6a885d6
	Namespace: namespace_e09822e3
	Checksum: 0xA4A9142F
	Offset: 0xF18
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_d6a885d6(var_b04bc952)
{
	function_889067f5();
	level notify("hash_84f95272");
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 1);
	level namespace_82b91a51::function_ef3f75eb("sndStopFiretruck");
	level thread function_599b2699();
}

/*
	Name: function_889067f5
	Namespace: namespace_e09822e3
	Checksum: 0x3471BE9
	Offset: 0xFB0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_889067f5()
{
	level namespace_ad23e503::function_c35e6aab("everyone_in_camera_room");
}

/*
	Name: function_599b2699
	Namespace: namespace_e09822e3
	Checksum: 0x6F331A7E
	Offset: 0xFE0
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_599b2699()
{
	var_38907d67 = function_6ada35ba("t_regroup_security_camera", "targetname");
	var_38907d67 function_175e6b8e(0);
	namespace_80983c42::function_80983c42("light_exploder_torture_rooms");
	level thread namespace_2cb3876f::function_950d1c3b(1);
	level thread namespace_52f8de11::function_bfe70f02();
	level thread function_6475a61e();
	namespace_76d95162::function_d9f49fba(0);
	namespace_2cb3876f::function_47a62798(1);
	level thread function_61e4fa9();
	level.var_2fd26037 thread function_240f41ef();
	level thread function_edd36550();
	level waittill("hash_81d6c615");
	while(1)
	{
		var_d62d9e75 = function_e1a52cb4();
		if(!var_d62d9e75)
		{
			break;
		}
		wait(0.05);
	}
	level namespace_cc27597::function_fcf56ab5("injured_carried1", "targetname");
	level namespace_cc27597::function_fcf56ab5("injured_carried2", "targetname");
	level notify("hash_50dbb16b");
	namespace_80983c42::function_593e8a39("light_exploder_torture_rooms");
	namespace_1d795d47::function_be8adfb8("skipto_security_camera");
}

/*
	Name: function_6475a61e
	Namespace: namespace_e09822e3
	Checksum: 0xC02236B2
	Offset: 0x11E8
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_6475a61e()
{
	var_bfa0f33f = namespace_14b42b8a::function_7922262b("temp_security_door_obj", "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_security_door", var_bfa0f33f);
	namespace_2cb3876f::function_d1f1caad("t_start_security_cam_room_breach_v2");
	wait(2);
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_security_door");
	level namespace_ad23e503::function_1ab5ebec("everyone_in_camera_room");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_locate_the_security_room");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_locate_the_minister");
	level waittill("hash_1a6eba1f");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_security_camera");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_locate_the_minister");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_free_the_minister");
}

/*
	Name: function_e1a52cb4
	Namespace: namespace_e09822e3
	Checksum: 0xD89F83A6
	Offset: 0x1320
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_e1a52cb4()
{
	var_d62d9e75 = 0;
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		if(isdefined(var_6bfe1586.var_1f4942ae) && var_6bfe1586.var_1f4942ae)
		{
			var_d62d9e75++;
		}
	}
	return var_d62d9e75;
}

/*
	Name: function_edd36550
	Namespace: namespace_e09822e3
	Checksum: 0x76F1B09
	Offset: 0x13E0
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_edd36550()
{
	namespace_82b91a51::function_76f13293();
	level namespace_71e9cb84::function_74d6b22f("setup_security_cameras", 1);
	level thread function_d0260dae();
	level.var_1a6eba1f = 0;
	level.var_c01222d2 = [];
	function_d8d1298e("hallway", "cin_pro_05_02_securitycam_pip_ministerdrag", 1);
	function_d8d1298e("interrogation", "cin_pro_05_02_securitycam_pip_ministerdrag_interrogationroom", 1);
	function_d8d1298e("torture_prisoner_1", "cin_pro_05_02_securitycam_pip_solitary");
	function_d8d1298e("torture_prisoner_2", "cin_pro_05_02_securitycam_pip_pipe");
	function_d8d1298e("torture_prisoner_3", "cin_pro_05_02_securitycam_pip_funnel");
	function_d8d1298e("torture_khalil", "cin_pro_05_02_securitycam_pip_khalil");
	function_d8d1298e("torture_prisoner_4", "cin_pro_05_02_securitycam_pip_branding");
	function_d8d1298e("torture_minister", "cin_pro_05_02_securitycam_pip_waterboard");
	function_d8d1298e("torture_prisoner_5", "cin_pro_05_02_securitycam_pip_pressure");
	function_9f9f8c2a();
	level thread function_7f6e313c("t_security_camera_use_left", "s_security_cam_station_left", 1);
}

/*
	Name: function_9f9f8c2a
	Namespace: namespace_e09822e3
	Checksum: 0xAEC1B8C7
	Offset: 0x15B8
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function function_9f9f8c2a()
{
	if(!isdefined(level.var_690ce961))
	{
		level.var_690ce961 = level.var_c01222d2["torture_minister"].var_4bc288a0;
		break;
	}
	var_1d7e2b7c = function_6840a15e(level.var_690ce961);
	switch(var_1d7e2b7c.var_cbb15570)
	{
		case "torture_minister":
		{
			level.var_690ce961 = level.var_c01222d2["hallway"].var_4bc288a0;
			level.var_c01222d2["hallway"].var_b5991f0e = 0;
			level.var_c01222d2["hallway"].var_a1a1b35e = 3;
			break;
		}
		case "hallway":
		{
			level.var_690ce961 = level.var_c01222d2["interrogation"].var_4bc288a0;
			level.var_c01222d2["interrogation"].var_b5991f0e = 0;
			level.var_c01222d2["interrogation"].var_a1a1b35e = 3;
			break;
		}
		case "interrogation":
		{
			level.var_1a6eba1f = 1;
			level thread namespace_21b2c1f2::function_fa2e45b8();
			break;
		}
	}
}

/*
	Name: function_396ce97e
	Namespace: namespace_e09822e3
	Checksum: 0x50D8642
	Offset: 0x1750
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_396ce97e()
{
	function_6ddd4fa4("security_decal_prop");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 namespace_71e9cb84::function_e9c3870b("turn_on_multicam", 0);
	}
	foreach(var_865f8b0e in level.var_c01222d2)
	{
		if(isdefined(var_865f8b0e.var_294306eb) && level namespace_cc27597::function_367f8966(var_865f8b0e.var_294306eb))
		{
			level namespace_cc27597::function_fcf56ab5(var_865f8b0e.var_294306eb);
		}
	}
	level namespace_71e9cb84::function_74d6b22f("setup_security_cameras", 0);
	level namespace_71e9cb84::function_74d6b22f("toggle_security_camera_pbg_bank", 0);
}

/*
	Name: function_7f6e313c
	Namespace: namespace_e09822e3
	Checksum: 0x7B71691A
	Offset: 0x1918
	Size: 0x153
	Parameters: 3
	Flags: None
*/
function function_7f6e313c(var_3675dd99, var_8deb7bb6, var_ff018680)
{
	var_79831c10 = namespace_14b42b8a::function_7922262b(var_8deb7bb6, "targetname");
	var_2a0a99e4 = function_6ada35ba(var_3675dd99, "targetname");
	var_2a0a99e4 function_175e6b8e(0);
	level waittill("hash_af8926a2");
	level.var_ab82ba6d = 0;
	level namespace_ad23e503::function_1ab5ebec("everyone_in_camera_room");
	var_2a0a99e4 function_175e6b8e(1);
	var_cd765438 = namespace_82b91a51::function_14518e76(var_2a0a99e4, &"cp_prompt_dni_prologue_security_camera", &"CP_MI_ETH_PROLOGUE_USE_SECURITY_CAMERA", &function_b85fc83f);
	var_cd765438.var_79831c10 = var_79831c10;
	var_cd765438.var_ff018680 = var_ff018680;
	var_cd765438 thread function_83168a46();
}

/*
	Name: function_83168a46
	Namespace: namespace_e09822e3
	Checksum: 0xE8D621D3
	Offset: 0x1A78
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_83168a46()
{
	self endon("hash_128f8789");
	level waittill("hash_1a6eba1f");
	wait(1);
	self namespace_a230c2b1::function_e54c54c3();
}

/*
	Name: function_b85fc83f
	Namespace: namespace_e09822e3
	Checksum: 0x1D7F9CB7
	Offset: 0x1AB8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_b85fc83f(var_6bfe1586)
{
	var_6bfe1586 thread function_18df8595(self.var_79831c10, self.var_ff018680);
	self thread function_85343e08(var_6bfe1586);
	self namespace_a230c2b1::function_e54c54c3();
}

/*
	Name: function_85343e08
	Namespace: namespace_e09822e3
	Checksum: 0x3FF8A380
	Offset: 0x1B28
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_85343e08(var_6bfe1586)
{
	level endon("hash_1a6eba1f");
	var_6bfe1586 waittill("hash_643a7daf");
	self namespace_a230c2b1::function_ed0abeee();
}

/*
	Name: function_18df8595
	Namespace: namespace_e09822e3
	Checksum: 0x36E43093
	Offset: 0x1B70
	Size: 0x3DD
	Parameters: 2
	Flags: None
*/
function function_18df8595(var_79831c10, var_ff018680)
{
	self endon("hash_643a7daf");
	self.var_1f4942ae = 1;
	var_b7677f7e = function_9b7fda5e("script_origin", var_79831c10.var_722885f3);
	var_b7677f7e function_921a1574("evt_typing");
	var_ccaa2a98 = "p_security_cam_interface_point";
	var_f835fe4e = "p_security_cam_interface_exit";
	var_f05b3d6f = "p_security_cam_interface_idle";
	var_479668a = namespace_14b42b8a::function_7922262b("s_security_cam_station_left", "targetname");
	var_479668a namespace_cc27597::function_43718187("p_security_cam_interface_intro", self);
	if(!level.var_ab82ba6d)
	{
		level notify("hash_17ce64b4");
		self thread function_91e8303d(var_ff018680);
		level.var_ab82ba6d = 1;
		level thread namespace_21b2c1f2::function_e847067();
	}
	var_479668a thread namespace_cc27597::function_43718187(var_f05b3d6f, self);
	wait(2);
	while(!level.var_1a6eba1f)
	{
		self namespace_82b91a51::function_67cfce72(&"CP_MI_ETH_PROLOGUE_CAMERA_CHANGE", undefined, undefined, 170);
		if(self function_e2e4a173())
		{
			self namespace_82b91a51::function_79f9f98d();
			self function_8a20e55d("evt_camera_scan_switch");
			level.var_d658503a++;
			if(level.var_d658503a >= level.var_c01222d2.size)
			{
				level.var_d658503a = 0;
			}
			if(level.var_d658503a == 4)
			{
				level namespace_ad23e503::function_74d6b22f("security_cam_full_house");
			}
			self thread function_a4090f73(level.var_d658503a);
			self function_d77b3165(var_ff018680);
			self function_941f1867(var_f05b3d6f, var_ccaa2a98, var_479668a);
			level namespace_ad23e503::function_1ab5ebec("face_scanning_complete");
			level namespace_ad23e503::function_d3de6822("face_scanning_double_pause");
		}
		wait(0.05);
	}
	self thread function_a4090f73(level.var_d658503a);
	level thread namespace_21b2c1f2::function_973b77f9();
	level.var_1a6eba1f = 1;
	level notify("hash_1a6eba1f");
	var_38907d67 = function_6ada35ba("t_regroup_security_camera", "targetname");
	var_38907d67 function_175e6b8e(1);
	var_b7677f7e function_dc8c8404();
	var_479668a namespace_cc27597::function_43718187(var_f835fe4e, self);
	function_396ce97e();
	self.var_1f4942ae = undefined;
}

/*
	Name: function_d77b3165
	Namespace: namespace_e09822e3
	Checksum: 0xAD920FBE
	Offset: 0x1F58
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_d77b3165(var_ff018680)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("set_cam_lookat_object", level.var_d658503a);
	}
}

/*
	Name: function_d8d1298e
	Namespace: namespace_e09822e3
	Checksum: 0x176F0E8
	Offset: 0x2008
	Size: 0x1A5
	Parameters: 3
	Flags: None
*/
function function_d8d1298e(var_cbb15570, var_294306eb, var_b5991f0e)
{
	if(!isdefined(var_b5991f0e))
	{
		var_b5991f0e = 0;
	}
	var_1ca98eed = function_a8fb77bd();
	var_1ca98eed.var_cbb15570 = var_cbb15570;
	var_1ca98eed.var_4bc288a0 = level.var_c01222d2.size;
	var_1ca98eed.var_c65f4e49 = 0;
	var_1ca98eed.var_b5991f0e = var_b5991f0e;
	var_1ca98eed.var_294306eb = var_294306eb;
	var_1ca98eed.var_2cc1a0a1 = 1;
	var_1ca98eed.var_a1a1b35e = namespace_cc27597::function_1a0b1441(var_294306eb);
	level namespace_cc27597::function_8f9f34e0(var_294306eb, &function_c41806ee, "init", var_1ca98eed.var_4bc288a0);
	level namespace_cc27597::function_8f9f34e0(var_294306eb, &function_48f438fd, "init");
	level namespace_cc27597::function_c35e6aab(var_294306eb);
	if(var_b5991f0e)
	{
		var_1ca98eed.var_2cc1a0a1 = 0;
		var_1ca98eed.var_a1a1b35e = 0;
	}
	level.var_c01222d2[var_cbb15570] = var_1ca98eed;
}

/*
	Name: function_c41806ee
	Namespace: namespace_e09822e3
	Checksum: 0xAD926EF5
	Offset: 0x21B8
	Size: 0x143
	Parameters: 2
	Flags: None
*/
function function_c41806ee(var_c77d2837, var_4bc288a0)
{
	if(!isdefined(var_c77d2837["prisoner"]))
	{
		return;
	}
	var_a668bada = var_4bc288a0 - 1;
	while(!isdefined(level.var_d658503a) || level.var_d658503a < var_a668bada)
	{
		wait(0.05);
	}
	var_c77d2837["prisoner"] function_cea50a94(1);
	var_c77d2837["prisoner"].var_d3b49c28 = function_82aea45f(var_c77d2837["prisoner"].var_722885f3, 1);
	while(level.var_d658503a <= var_4bc288a0)
	{
		wait(0.05);
	}
	var_c77d2837["prisoner"] function_cea50a94(0);
	var_c77d2837["prisoner"].var_d3b49c28 function_dc8c8404();
}

/*
	Name: function_48f438fd
	Namespace: namespace_e09822e3
	Checksum: 0xFD16C625
	Offset: 0x2308
	Size: 0x109
	Parameters: 1
	Flags: None
*/
function function_48f438fd(var_c77d2837)
{
	namespace_82b91a51::function_76f13293();
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(var_a3d46ee4.var_6df9264 === "tag_origin")
		{
			var_4bc288a0 = function_5e3416f2(self.var_1157a889).var_4bc288a0;
			if(var_4bc288a0 == 0)
			{
				var_4bc288a0 = 9;
			}
			var_a3d46ee4 namespace_71e9cb84::function_74d6b22f("update_camera_position", var_4bc288a0);
		}
	}
}

/*
	Name: function_6840a15e
	Namespace: namespace_e09822e3
	Checksum: 0x8D32ED44
	Offset: 0x2420
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_6840a15e(var_4bc288a0)
{
	foreach(var_1ca98eed in level.var_c01222d2)
	{
		if(var_1ca98eed.var_4bc288a0 == var_4bc288a0)
		{
			return var_1ca98eed;
		}
	}
}

/*
	Name: function_5e3416f2
	Namespace: namespace_e09822e3
	Checksum: 0xB5D49E9B
	Offset: 0x24C0
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_5e3416f2(var_294306eb)
{
	foreach(var_1ca98eed in level.var_c01222d2)
	{
		if(var_1ca98eed.var_294306eb === var_294306eb)
		{
			return var_1ca98eed;
		}
	}
}

/*
	Name: function_91e8303d
	Namespace: namespace_e09822e3
	Checksum: 0x5685BA0A
	Offset: 0x2560
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_91e8303d(var_eb217593)
{
	function_9e3608e3("security_decal_prop");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 namespace_71e9cb84::function_e9c3870b("turn_on_multicam", var_eb217593);
	}
	level.var_d658503a = 0;
	self namespace_71e9cb84::function_e9c3870b("set_cam_lookat_object", level.var_d658503a);
	level namespace_71e9cb84::function_74d6b22f("toggle_security_camera_pbg_bank", 1);
}

/*
	Name: function_941f1867
	Namespace: namespace_e09822e3
	Checksum: 0x21DDF003
	Offset: 0x2670
	Size: 0x1B3
	Parameters: 3
	Flags: None
*/
function function_941f1867(var_f05b3d6f, var_ccaa2a98, var_479668a)
{
	self endon("hash_643a7daf");
	var_1ca98eed = function_6840a15e(level.var_d658503a);
	if(level.var_d658503a > 0)
	{
		var_5b1f7665 = function_6840a15e(level.var_d658503a - 1);
		if(isdefined(var_5b1f7665.var_294306eb) && !var_5b1f7665.var_b5991f0e)
		{
			namespace_cc27597::function_fcf56ab5(var_5b1f7665.var_294306eb, 1);
		}
	}
	if(isdefined(var_1ca98eed.var_294306eb) && !var_1ca98eed.var_b5991f0e)
	{
		level thread namespace_cc27597::function_43718187(var_1ca98eed.var_294306eb);
	}
	level thread function_2e16b263(var_1ca98eed.var_294306eb);
	var_378c281e = self function_95e6066a(level.var_d658503a);
	if(var_378c281e)
	{
		var_479668a namespace_cc27597::function_43718187(var_ccaa2a98, self);
		var_479668a thread namespace_cc27597::function_43718187(var_f05b3d6f, self);
		function_9f9f8c2a();
	}
}

/*
	Name: function_2e16b263
	Namespace: namespace_e09822e3
	Checksum: 0x871F2B23
	Offset: 0x2830
	Size: 0x305
	Parameters: 1
	Flags: None
*/
function function_2e16b263(var_68babb2a)
{
	level notify("hash_1b4c750");
	level endon("hash_1b4c750");
	if(!isdefined(level.var_cc008929))
	{
		level.var_cc008929 = function_9b7fda5e("script_origin", (0, 0, 0));
		level.var_b4c96fe2 = 1;
	}
	switch(var_68babb2a)
	{
		case "cin_pro_05_02_securitycam_pip_solitary":
		{
			level.var_cc008929 function_c2931a36("evt_securitycam_solitary", 0.1);
			break;
		}
		case "cin_pro_05_02_securitycam_pip_pipe":
		{
			level.var_cc008929 function_c2931a36("evt_securitycam_pipe", 0.1);
			break;
		}
		case "cin_pro_05_02_securitycam_pip_funnel":
		{
			level.var_cc008929 function_c2931a36("evt_securitycam_funnel", 0.1);
			break;
		}
		case "cin_pro_05_02_securitycam_pip_branding":
		{
			level.var_cc008929 function_c2931a36("evt_securitycam_branding", 0.1);
			break;
		}
		case "cin_pro_05_02_securitycam_pip_pressure":
		{
			level.var_cc008929 function_c2931a36("evt_securitycam_pressure", 0.1);
			break;
		}
		case "cin_pro_05_02_securitycam_pip_waterboard":
		{
			level.var_cc008929 function_eaa69754(0.1);
			level.var_cc008929 function_921a1574("evt_securitycam_minister_water");
			break;
		}
		case "cin_pro_05_02_securitycam_pip_ministerdrag":
		{
			level.var_cc008929 function_eaa69754(0.1);
			level.var_cc008929 function_921a1574("evt_securitycam_minister_walk");
			break;
		}
		case "cin_pro_05_02_securitycam_pip_ministerdrag_interrogationroom":
		{
			if(isdefined(level.var_b4c96fe2) && level.var_b4c96fe2)
			{
				level.var_cc008929 function_eaa69754(0.1);
				level.var_b4c96fe2 = 0;
			}
			else
			{
				level.var_cc008929 function_eaa69754(0.1);
				level.var_cc008929 function_921a1574("evt_securitycam_minister_sit");
			}
			break;
		}
		case default:
		{
			level.var_cc008929 function_eaa69754(0.1);
			level.var_cc008929 function_39419ae5();
			break;
		}
	}
}

/*
	Name: function_95e6066a
	Namespace: namespace_e09822e3
	Checksum: 0x838FDC8F
	Offset: 0x2B40
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_95e6066a(var_ff018680)
{
	self endon("hash_643a7daf");
	level namespace_ad23e503::function_9d134160("face_scanning_complete");
	var_1ca98eed = function_6840a15e(var_ff018680);
	if(var_1ca98eed.var_a1a1b35e == 0)
	{
		wait(2);
		return 0;
	}
	wait(0.5);
	level namespace_ad23e503::function_1ab5ebec("face_scanning_complete");
	if(level.var_d658503a == level.var_690ce961)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_a4090f73
	Namespace: namespace_e09822e3
	Checksum: 0xBC33A74C
	Offset: 0x2C08
	Size: 0x3B3
	Parameters: 1
	Flags: None
*/
function function_a4090f73(var_6347c9e0)
{
	if(!isdefined(level.var_965f8f82))
	{
		level.var_965f8f82 = 1;
	}
	switch(var_6347c9e0)
	{
		case 0:
		{
			wait(3);
			break;
		}
		case 1:
		{
			if(level.var_965f8f82)
			{
				level.var_965f8f82 = 0;
				wait(3);
			}
			else
			{
				level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_bingo_0", 5);
				level notify("hash_fd656b57");
			}
			break;
		}
		case 2:
		{
			level namespace_ad23e503::function_1ab5ebec("scanning_dialog_done");
			self namespace_71b8dba1::function_81141386("plyr_other_hostages_i_0", 0.5);
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_so_did_i_0", 0.1);
			break;
		}
		case 3:
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_poor_sons_of_bitches_0", 1);
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_the_nrc_are_known_fo_0", 0.5);
			break;
		}
		case 4:
		{
			level namespace_ad23e503::function_74d6b22f("face_scanning_double_pause");
			level waittill("hash_f35713c");
			level namespace_ad23e503::function_74d6b22f("face_scanning_complete");
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_check_the_next_feed_0", 0.5);
			level namespace_ad23e503::function_9d134160("face_scanning_double_pause");
			break;
		}
		case 5:
		{
			self namespace_71b8dba1::function_81141386("plyr_are_we_just_going_to_1", 0.25);
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_have_our_orders_0");
			break;
		}
		case 6:
		{
			wait(3);
			level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_no_match_0");
			break;
		}
		case 7:
		{
			level namespace_ad23e503::function_74d6b22f("face_scanning_double_pause");
			wait(3);
			level namespace_ad23e503::function_74d6b22f("face_scanning_complete");
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_s_him_the_min_0", 0.75);
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_he_s_being_moved_0", 9);
			level namespace_ad23e503::function_9d134160("face_scanning_double_pause");
			break;
		}
		case 8:
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_have_to_find_out_0", 0.5);
			break;
		}
		case default:
		{
			break;
		}
	}
	level namespace_ad23e503::function_74d6b22f("face_scanning_complete");
}

/*
	Name: function_d0260dae
	Namespace: namespace_e09822e3
	Checksum: 0xBB9A55B5
	Offset: 0x2FC8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_d0260dae()
{
	level waittill("hash_dbfb4368");
	level namespace_ad23e503::function_74d6b22f("scanning_dialog_done");
}

/*
	Name: function_240f41ef
	Namespace: namespace_e09822e3
	Checksum: 0x38E0E08B
	Offset: 0x3000
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_240f41ef()
{
	level namespace_ad23e503::function_74d6b22f("activate_bc_5");
	level namespace_ad23e503::function_1ab5ebec("stealth_kill_prepare_done");
	namespace_2cb3876f::function_d1f1caad("t_start_security_cam_room_breach_v2");
	level thread namespace_21b2c1f2::function_973b77f9();
	level notify("hash_fa5c41eb");
	namespace_80983c42::function_80983c42("light_exploder_cameraroom");
	level thread namespace_cc27597::function_8f9f34e0("cin_pro_05_01_securitycam_1st_stealth_kill", &function_2b60c70b);
	level thread namespace_21b2c1f2::function_fd00a4f2();
	level namespace_cc27597::function_43718187("cin_pro_05_01_securitycam_1st_stealth_kill");
	level notify("hash_af8926a2");
	if(isdefined(level.var_13ef3f5a))
	{
		level thread [[level.var_13ef3f5a]]();
	}
	level namespace_ad23e503::function_74d6b22f("everyone_in_camera_room");
	level notify("hash_8e1e9ee");
	level thread function_fef03d1c();
	namespace_80983c42::function_67e7a937("light_exploder_cameraroom");
	level waittill("hash_17ce64b4");
	level namespace_cc27597::function_43718187("cin_pro_05_01_securitycam_1st_stealth_kill_scanning");
	level namespace_ad23e503::function_1ab5ebec("security_cam_full_house");
	level namespace_cc27597::function_43718187("cin_pro_05_01_securitycam_1st_stealth_kill_notice");
	level waittill("hash_fd656b57");
	level thread function_2e16b263("none");
	level namespace_cc27597::function_8f9f34e0("cin_pro_05_01_securitycam_1st_stealth_kill_movetodoor", &function_8f6060f7, "play");
	level namespace_cc27597::function_43718187("cin_pro_05_01_securitycam_1st_stealth_kill_movetodoor");
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 0);
	level namespace_ad23e503::function_1ab5ebec("player_past_security_room");
	level notify("hash_81d6c615");
	level namespace_cc27597::function_43718187("cin_pro_05_01_securitycam_1st_stealth_kill_exit");
	level namespace_ad23e503::function_74d6b22f("hendricks_exit_cam_room");
}

/*
	Name: function_30b1de21
	Namespace: namespace_e09822e3
	Checksum: 0x90A640D6
	Offset: 0x32F8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_30b1de21(var_c77d2837)
{
	level waittill("hash_640b2018");
	level namespace_71b8dba1::function_13b3b16a("plyr_ready_when_you_are_0");
}

/*
	Name: function_8f6060f7
	Namespace: namespace_e09822e3
	Checksum: 0xF22FB52D
	Offset: 0x3338
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_8f6060f7(var_c77d2837)
{
	level waittill("hash_59303d35");
	level namespace_71b8dba1::function_13b3b16a("plyr_you_sound_like_the_v_0");
}

/*
	Name: function_9887d555
	Namespace: namespace_e09822e3
	Checksum: 0x710108B5
	Offset: 0x3378
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_9887d555(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("stealth_kill_prepare_done");
}

/*
	Name: function_d6557dc4
	Namespace: namespace_e09822e3
	Checksum: 0x9110D549
	Offset: 0x33B0
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_d6557dc4(var_c77d2837)
{
	var_c77d2837["stealth_kill_pistol"] function_50ccee8d();
	level waittill("hash_7b2fc2a1");
	var_c77d2837["stealth_kill_pistol"] function_48f26766();
	namespace_82b91a51::function_76f13293();
	namespace_82b91a51::function_76f13293();
	var_c77d2837["hendricks"] function_cb3bf380("c_hro_hendricks_prologue_cin_gunprop_fb");
	level waittill("hash_4b566398");
	var_c77d2837["hendricks"] function_8ff2374e("c_hro_hendricks_prologue_cin_gunprop_fb");
	var_c77d2837["stealth_kill_pistol"] function_50ccee8d();
}

/*
	Name: function_2b60c70b
	Namespace: namespace_e09822e3
	Checksum: 0x2743CF56
	Offset: 0x34B8
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_2b60c70b(var_c77d2837)
{
	level waittill("hash_55529da");
	var_fc54e080 = function_6ada35ba("security_control_room_blocker", "targetname");
	var_fc54e080 function_422037f5();
	var_3c301126 = function_6ada35ba("security_camera_door_r", "targetname");
	var_280d5f68 = function_6ada35ba("security_camera_door_l", "targetname");
	var_280d5f68 function_fde61077(52, 0.75, 0.25, 0);
	var_3c301126 function_fde61077(52 * -1, 0.75, 0.25, 0);
	function_37cbcf1a("evt_securityroom_door_open", (3464, -313, -263));
	level waittill("hash_cfa80fd0");
	namespace_4dbf3ae3::function_1ab5ebec("close_security_door_trig");
	var_fc54e080 function_4083a98e();
	var_280d5f68 function_fde61077(52 * -1, 0.75, 0.25, 0);
	var_3c301126 function_fde61077(52, 0.75, 0.25, 0);
	function_37cbcf1a("evt_securityroom_door_close", (3464, -313, -263));
}

/*
	Name: function_fef03d1c
	Namespace: namespace_e09822e3
	Checksum: 0x5C29F797
	Offset: 0x36E0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_fef03d1c()
{
	level endon("hash_17ce64b4");
	wait(15);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_wanna_hustle_ha_0");
	wait(20);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_our_cover_s_blown_an_0");
}

/*
	Name: function_61e4fa9
	Namespace: namespace_e09822e3
	Checksum: 0x1B68C0AD
	Offset: 0x3748
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_61e4fa9()
{
	level endon("hash_fa5c41eb");
	level waittill("hash_6edff9b0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_ve_got_breach_l_0");
	wait(20);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_minister_s_not_gonna_0");
}


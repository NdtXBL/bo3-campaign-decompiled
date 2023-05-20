#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_util;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_ef6666f9;

/*
	Name: function_e44d217a
	Namespace: namespace_ef6666f9
	Checksum: 0xB7EA2E05
	Offset: 0xE50
	Size: 0x383
	Parameters: 2
	Flags: None
*/
function function_e44d217a(var_b04bc952, var_74cd64bc)
{
	var_d6cea0d7 = function_6ada35ba("trig_kick_door", "targetname");
	var_d6cea0d7 function_175e6b8e(0);
	namespace_76d95162::function_d9f49fba(0);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_2fd26037.var_ca3202d["bc"] = 0;
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
		level.var_2fd26037 function_169cc712(function_b4cb3503("hendricks_stand_down_door_node", "targetname"), 0, 32);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("coverIdleOnly", 1);
		var_cfcc5424 = function_99201f25("aigroup_detention_center", "script_aigroup");
		namespace_84970cc4::function_7e64f710(var_cfcc5424);
		level namespace_82b91a51::function_d8eaed3d(2, 1);
		level namespace_cc27597::function_c35e6aab("cin_lot_08_01_standdown_sh010");
		namespace_d7916d65::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
	}
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3, 1);
	level namespace_71b8dba1::function_a463d127("kane_taylor_s_through_tha_0", 0.25);
	var_56dd1913 = function_b8494651("axis");
	namespace_84970cc4::function_eaab05dc(var_56dd1913, &function_dc8c8404);
	level thread namespace_a92ad484::function_a3388bcf();
	var_d6cea0d7 function_175e6b8e(1);
	namespace_82b91a51::function_14518e76(var_d6cea0d7, &"cp_level_lotus_stand_down_door", &"CP_MI_CAIRO_LOTUS_BREACH", &function_8019e0e5);
	level thread namespace_cc27597::function_43718187("pursuit_initial_bodies");
	level thread function_e3e58995();
}

/*
	Name: function_e3e58995
	Namespace: namespace_ef6666f9
	Checksum: 0x21627320
	Offset: 0x11E0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e3e58995()
{
	level endon("hash_e93df84");
	wait(5);
	var_a6225d0e = function_e7bdc1a1(level.var_2fd26037.var_722885f3, level.var_2395e945);
	if(function_cb3d1c9b(var_a6225d0e.var_722885f3, level.var_2fd26037.var_722885f3) > 122500)
	{
		level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_c_mon_post_on_me_l_0", 0.25);
	}
}

/*
	Name: function_8019e0e5
	Namespace: namespace_ef6666f9
	Checksum: 0x60F985D0
	Offset: 0x1298
	Size: 0x3E3
	Parameters: 1
	Flags: None
*/
function function_8019e0e5(var_6bfe1586)
{
	self namespace_a230c2b1::function_e54c54c3();
	level notify("hash_e93df84");
	namespace_431cac9::function_3b6587d6(1, "lotus2_standdown_igc_umbra_gate");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	level thread namespace_a92ad484::function_973b77f9();
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 1);
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_stand_down_door");
	namespace_2f06d687::function_c6ffd13e("standdown_robos", &function_623dfa9f);
	namespace_cc27597::function_8f9f34e0("cin_lot_08_01_standdown_sh010", &function_e8455070);
	namespace_cc27597::function_8f9f34e0("cin_lot_08_01_standdown_sh100", &function_50ac7315);
	namespace_cc27597::function_8f9f34e0("cin_lot_08_01_standdown_sh230", &function_1faa71ce);
	namespace_cc27597::function_8f9f34e0("cin_lot_08_01_standdown_sh270", &function_6a59f8cb);
	namespace_cc27597::function_8f9f34e0("cin_lot_08_01_standdown_sh280", &function_e26078a4, "done");
	namespace_cc27597::function_8f9f34e0("cin_gen_hendricksmoment_riphead_robot", &function_b58d1d50);
	if(isdefined(level.var_cba99bd9))
	{
		level thread [[level.var_cba99bd9]]();
	}
	level namespace_82b91a51::function_11a89b44(undefined, 1, 10);
	level namespace_cc27597::function_43718187("cin_lot_08_01_standdown_sh010", var_6bfe1586);
	var_378eee5b = namespace_cc27597::function_af9fe39b("interrogation_room_glass");
	level thread function_5c1f1535(var_378eee5b);
	var_713e715e = namespace_14b42b8a::function_7922262b("pursuit_ai");
	level.var_2fd26037 function_169cc712(var_713e715e.var_722885f3, 0, 64);
	level thread function_4869f17d();
	level waittill("hash_fa07455a");
	var_378eee5b function_48f26766();
	namespace_82b91a51::function_a0938376();
	function_7b1a7b5c();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_82b91a51::function_16c71b8(0);
	}
	namespace_1d795d47::function_be8adfb8("stand_down");
	self namespace_a230c2b1::function_c5a39495(1);
}

/*
	Name: function_5c1f1535
	Namespace: namespace_ef6666f9
	Checksum: 0xF7CFF501
	Offset: 0x1688
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_5c1f1535(var_378eee5b)
{
	level endon("hash_fa07455a");
	level waittill("hash_3678706d");
	var_378eee5b function_50ccee8d();
	level waittill("hash_da20ef20");
	var_378eee5b function_48f26766();
	level waittill("hash_de5f95bf");
	var_378eee5b function_50ccee8d();
	level waittill("hash_130e1922");
	var_378eee5b function_48f26766();
	level waittill("hash_906aafb6");
	var_378eee5b function_50ccee8d();
	level waittill("hash_90c52573");
	var_378eee5b function_48f26766();
}

/*
	Name: function_b58d1d50
	Namespace: namespace_ef6666f9
	Checksum: 0xC6FE47F3
	Offset: 0x1770
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_b58d1d50(var_c77d2837)
{
	level endon("hash_9c97dac4");
	var_f6c5842 = var_c77d2837["riphead_robot"];
	level namespace_82b91a51::function_c9aa1ff("robot_head_off", 3);
	if(isdefined(var_f6c5842))
	{
		var_f6c5842 namespace_82b91a51::function_4b741fdc();
		namespace_97d6aab7::function_65d0a3eb(var_f6c5842);
	}
	var_f49ffb15 = function_6ada35ba("continue_hendricks", "targetname");
	if(isdefined(var_f49ffb15))
	{
		level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
		namespace_4dbf3ae3::function_42e87952("continue_hendricks", "targetname");
	}
}

/*
	Name: function_f59268d5
	Namespace: namespace_ef6666f9
	Checksum: 0xD37C5616
	Offset: 0x1878
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_f59268d5()
{
	namespace_2f06d687::function_72214789("standdown_robos");
	level thread function_88486511();
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 0);
	level thread function_6678da67();
	level thread function_ae2d3f70();
	level thread function_c8e59dae();
}

/*
	Name: function_c8e59dae
	Namespace: namespace_ef6666f9
	Checksum: 0x19F0101C
	Offset: 0x1950
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_c8e59dae()
{
	namespace_d0ef8521::function_45d1556("pursuit_breadcrumb01");
}

/*
	Name: function_88486511
	Namespace: namespace_ef6666f9
	Checksum: 0x11BEEE3F
	Offset: 0x1978
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_88486511()
{
	level endon("hash_9c97dac4");
	namespace_9f824288::function_5d2cdd99();
	level thread function_fc2eabb1("nearside_enemies");
	level thread function_fc2eabb1("farside_enemies");
	namespace_ad23e503::function_1ab5ebec("lotus_snow_1");
	while(!namespace_ad23e503::function_7922262b("farside_enemies_dead") && !namespace_ad23e503::function_7922262b("farside_enemies_dead"))
	{
		wait(0.25);
	}
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_fc2eabb1
	Namespace: namespace_ef6666f9
	Checksum: 0x3690544A
	Offset: 0x1A58
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_fc2eabb1(var_69e64c43)
{
	level endon("hash_9c97dac4");
	var_df8970d = var_69e64c43 + "_dead";
	namespace_ad23e503::function_c35e6aab(var_df8970d);
	namespace_2f06d687::function_72214789(var_69e64c43);
	namespace_9f824288::function_5d2cdd99();
	namespace_ad23e503::function_74d6b22f(var_df8970d);
}

/*
	Name: function_e8455070
	Namespace: namespace_ef6666f9
	Checksum: 0xF6957416
	Offset: 0x1AF0
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_e8455070(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_82b91a51::function_16c71b8(1);
	}
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
}

/*
	Name: function_50ac7315
	Namespace: namespace_ef6666f9
	Checksum: 0x39F33C23
	Offset: 0x1BB0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_50ac7315(var_c77d2837)
{
	var_c77d2837["standdown_robot01"] thread function_8bff8df9();
	var_c77d2837["standdown_robot02"] thread function_8bff8df9();
	var_c77d2837["standdown_robot03"] thread function_8bff8df9();
}

/*
	Name: function_8bff8df9
	Namespace: namespace_ef6666f9
	Checksum: 0x6866C23B
	Offset: 0x1C28
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8bff8df9()
{
	self waittill("hash_e5b0f8fa");
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
}

/*
	Name: function_6a59f8cb
	Namespace: namespace_ef6666f9
	Checksum: 0x163F4E1D
	Offset: 0x1C68
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_6a59f8cb(var_c77d2837)
{
	var_51ffb7a3 = namespace_14b42b8a::function_7922262b("standdown_explode_here", "targetname");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_interrogation_room_glass_bundle");
}

/*
	Name: function_9ab22ea
	Namespace: namespace_ef6666f9
	Checksum: 0x5D1C038E
	Offset: 0x1CC8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_9ab22ea(var_3ad5e8e)
{
	var_f6c5842 = function_6ada35ba(var_3ad5e8e, "targetname");
	if(isdefined(var_f6c5842))
	{
		var_f6c5842 namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_3");
		var_f6c5842 namespace_d84e54db::function_ceb883cd("rogue_force_explosion", 1);
	}
}

/*
	Name: function_e26078a4
	Namespace: namespace_ef6666f9
	Checksum: 0x53F9D755
	Offset: 0x1D58
	Size: 0x4EB
	Parameters: 1
	Flags: None
*/
function function_e26078a4(var_c77d2837)
{
	var_182ef0f0 = namespace_cc27597::function_af9fe39b("prometheus");
	if(isdefined(var_182ef0f0))
	{
		var_182ef0f0 function_dc8c8404();
	}
	level namespace_82b91a51::function_93831e79("pursuit");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_82b91a51::function_16c71b8(0);
	}
	level thread namespace_a92ad484::function_c954e9a2();
	foreach(var_7e345932 in var_c77d2837)
	{
		if(isdefined(var_7e345932))
		{
			if(var_7e345932.var_8fc0e50e === "robot")
			{
				if(var_7e345932.var_b691b9cf === "standdown_robot01")
				{
					var_7e345932 namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
					var_7e345932 namespace_82b91a51::function_958c7633();
					continue;
				}
				var_7e345932 namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
			}
		}
	}
	var_3a462080 = var_c77d2837["standdown_robot02"];
	var_60489ae9 = var_c77d2837["standdown_robot03"];
	if(function_5b49d38c(var_3a462080))
	{
		var_3a462080.var_342d9e3a = 0;
	}
	if(function_5b49d38c(var_60489ae9))
	{
		var_60489ae9.var_342d9e3a = 0;
	}
	var_8060ff07 = function_84970cc4(level.var_2fd26037, var_c77d2837["standdown_robot01"]);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("cin_hendricks_beheads_robot_00");
	var_1cbcb46d.var_722885f3 = var_c77d2837["standdown_robot01"].var_722885f3;
	var_1cbcb46d.var_6ab6f4fd = var_c77d2837["standdown_robot01"].var_6ab6f4fd + VectorScale((0, -1, 0), 7);
	level thread namespace_cc27597::function_43718187("cin_hendricks_beheads_robot_00", "targetname", var_8060ff07);
	wait(2);
	foreach(var_7e345932 in var_c77d2837)
	{
		if(isdefined(var_7e345932))
		{
			var_7e345932 namespace_d84e54db::function_b4f5e3b9(0);
		}
	}
	if(function_5b49d38c(var_60489ae9))
	{
		level.var_2fd26037 function_76aa5b30(var_60489ae9, 1);
		var_60489ae9 function_76aa5b30(level.var_2fd26037, 1);
	}
	wait(3);
	if(function_5b49d38c(var_60489ae9))
	{
		var_60489ae9 namespace_d84e54db::function_c9e45d52(0);
		var_60489ae9 function_76aa5b30(level.var_2fd26037, 0);
	}
	function_f59268d5();
	function_d8fb6400();
}

/*
	Name: function_7b1a7b5c
	Namespace: namespace_ef6666f9
	Checksum: 0x82109159
	Offset: 0x2250
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7b1a7b5c()
{
	var_e4f9e680 = function_6ada35ba("prometheus_window", "targetname");
	if(isdefined(var_e4f9e680))
	{
		var_e4f9e680 function_dc8c8404();
	}
}

/*
	Name: function_470ca661
	Namespace: namespace_ef6666f9
	Checksum: 0xCDABF01B
	Offset: 0x22B0
	Size: 0xE3
	Parameters: 4
	Flags: None
*/
function function_470ca661(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_lotus_stand_down_door");
	}
	var_f223b5db = function_6ada35ba("trig_bb_pursuit_out_of_bounds", "targetname");
	if(isdefined(var_f223b5db))
	{
		var_f223b5db function_dc8c8404();
	}
	var_c330bf06 = function_6ada35ba("clip_bb_pursuit_out_of_bounds", "targetname");
	if(isdefined(var_c330bf06))
	{
		var_c330bf06 function_dc8c8404();
	}
}

/*
	Name: function_623dfa9f
	Namespace: namespace_ef6666f9
	Checksum: 0x1114777C
	Offset: 0x23A0
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_623dfa9f(var_38465df1)
{
	if(!isdefined(var_38465df1))
	{
		var_38465df1 = 0;
	}
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_342d9e3a = 1;
	self namespace_d84e54db::function_ceb883cd("rogue_allow_pregib", 0);
	if(var_38465df1)
	{
		self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
	}
}

/*
	Name: function_d290ebfa
	Namespace: namespace_ef6666f9
	Checksum: 0xB691037A
	Offset: 0x2438
	Size: 0x66B
	Parameters: 2
	Flags: None
*/
function function_d290ebfa(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_2fd26037.var_ca3202d["bc"] = 0;
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		level.var_2fd26037.var_7dfaf62 = 64;
		level thread namespace_cc27597::function_43718187("pursuit_initial_bodies");
		namespace_82b91a51::function_d8eaed3d(2, 1);
		var_331a6d52 = function_6ada35ba("standdown_door_far_lt", "targetname");
		var_fbdd5570 = function_6ada35ba("standdown_door_far_rt", "targetname");
		var_331a6d52 function_a96a2721(var_331a6d52.var_722885f3 - VectorScale((1, 0, 0), 300), 1, 0.1, 0.1);
		var_fbdd5570 function_a96a2721(var_fbdd5570.var_722885f3 + VectorScale((1, 0, 0), 300), 1, 0.1, 0.1);
		namespace_cc27597::function_8f9f34e0("cin_lot_08_01_standdown_sh230", &function_1faa71ce);
		namespace_cc27597::function_8f9f34e0("cin_lot_08_01_standdown_sh270", &function_6a59f8cb);
		namespace_cc27597::function_8f9f34e0("cin_lot_08_01_standdown_sh280", &function_e26078a4, "done");
		namespace_cc27597::function_8f9f34e0("cin_gen_hendricksmoment_riphead_robot", &function_b58d1d50);
		namespace_2f06d687::function_c6ffd13e("standdown_robos", &function_623dfa9f, 1);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		namespace_d7916d65::function_a2995f22();
		level thread function_4869f17d();
		level thread namespace_cc27597::function_43718187("cin_lot_08_01_standdown_sh230");
		function_7b1a7b5c();
		level thread namespace_431cac9::function_14be4cad(1);
		namespace_82b91a51::function_a0938376();
		level namespace_431cac9::function_484bc3aa(1);
		level thread namespace_a92ad484::function_c954e9a2();
	}
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("coverIdleOnly", 0);
	level thread namespace_431cac9::function_fda257c3();
	level thread function_3bb6dd7c();
	function_6ada35ba("pursuit_oob", "targetname") function_175e6b8e(1);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level thread function_742bcaff();
	if(!namespace_ad23e503::function_dbca4c5d("prometheus_spawned"))
	{
		namespace_ad23e503::function_c35e6aab("prometheus_spawned");
	}
	namespace_431cac9::function_69533bc9();
	namespace_2f06d687::function_2b37a3c9("pursuit_robot_level_2_a", "script_noteworthy", &function_89bac1be, 0);
	namespace_2f06d687::function_2b37a3c9("pursuit_robot_level_2_b", "script_noteworthy", &function_89bac1be, 1);
	namespace_2f06d687::function_2b37a3c9("pursuit_robot_level_2_b", "script_noteworthy", &function_1a26fc20);
	namespace_2f06d687::function_2b37a3c9("pursuit_robot_ambient", "script_noteworthy", &function_37716d71);
	namespace_2f06d687::function_2b37a3c9("pursuit_human_ambient", "script_noteworthy", &function_b6be1e52);
	namespace_2f06d687::function_2b37a3c9("pursuit_human_b", "script_noteworthy", &function_1a26fc20);
	var_935a64f = function_6ada35ba("pursuit_wall_clip", "targetname");
	var_935a64f function_a96a2721(var_935a64f.var_722885f3 + VectorScale((0, 0, -1), 192), 2);
	level namespace_ad23e503::function_1ab5ebec("flag_delete_pursuit_wall_clip");
	var_935a64f function_dc8c8404();
	level thread function_dfd4fce3();
	namespace_4dbf3ae3::function_1ab5ebec("pursuit_done");
	namespace_1d795d47::function_be8adfb8("pursuit");
}

/*
	Name: function_3bb6dd7c
	Namespace: namespace_ef6666f9
	Checksum: 0x2E36E936
	Offset: 0x2AB0
	Size: 0x2C9
	Parameters: 0
	Flags: None
*/
function function_3bb6dd7c()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_snow_fog_begin_pursuit");
	if(isdefined(level.var_cf7ca25e))
	{
		level thread [[level.var_cf7ca25e]]();
	}
	namespace_80983c42::function_80983c42("fx_interior_snow_1");
	level namespace_cc27597::function_a5195379("cin_gen_traversal_raven_fly_away", &namespace_431cac9::function_e547724d, "init");
	level namespace_cc27597::function_a5195379("cin_gen_traversal_raven_fly_away", &namespace_431cac9::function_86b1cd8a);
	level thread namespace_431cac9::function_cf37ec3();
	var_222d6912 = function_99201f25("lotus_snow_pile", "targetname");
	foreach(var_fee0659 in var_222d6912)
	{
		var_fee0659 function_8bdea13c(72, 15);
	}
	namespace_431cac9::function_78805698("pursuit");
	namespace_4dbf3ae3::function_1ab5ebec("trig_snow_fog_end_pursuit");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_688ed188("hide_pursuit_decals");
	}
	foreach(var_fee0659 in var_222d6912)
	{
		var_fee0659 function_dc8c8404();
	}
}

/*
	Name: function_dfd4fce3
	Namespace: namespace_ef6666f9
	Checksum: 0x1A6E34B0
	Offset: 0x2D88
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_dfd4fce3()
{
	level endon("hash_b2f27e0e");
	var_5606c964 = function_6ada35ba("ceiling_fan", "targetname");
	while(isdefined(var_5606c964))
	{
		var_5606c964 function_c0b6566f(var_5606c964.var_6ab6f4fd + VectorScale((0, -1, 0), 180), 3);
		var_5606c964 waittill("hash_6654e4f4");
	}
}

/*
	Name: function_742bcaff
	Namespace: namespace_ef6666f9
	Checksum: 0xBEE640FF
	Offset: 0x2E20
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_742bcaff()
{
	self endon("hash_9c97dac4");
	var_5606c964 = function_6ada35ba("wall_run_ventilation_fan", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5606c964), "Dev Block strings are not supported");
	#/
	var_5606c964 function_7d0838b3(var_5606c964.var_8202763a);
	while(1)
	{
		var_5606c964 function_c0b6566f(var_5606c964.var_6ab6f4fd + VectorScale((1, 0, 0), 180), 3);
		wait(3);
	}
}

/*
	Name: function_1faa71ce
	Namespace: namespace_ef6666f9
	Checksum: 0xFBDAD700
	Offset: 0x2EF0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_1faa71ce(var_c77d2837)
{
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_71b8dba1::function_a463d127("kane_robots_compromised_0", 0.5);
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_they_re_gonna_detona_0", 1);
	}
}

/*
	Name: function_b5ca2beb
	Namespace: namespace_ef6666f9
	Checksum: 0x88C1034B
	Offset: 0x2F60
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_b5ca2beb()
{
	var_222d6912 = function_99201f25("lotus_snow_pile", "targetname");
	foreach(var_fee0659 in var_222d6912)
	{
		var_fee0659 function_8bdea13c(72, 15);
	}
}

/*
	Name: function_6678da67
	Namespace: namespace_ef6666f9
	Checksum: 0x27A8BEB6
	Offset: 0x3038
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_6678da67()
{
	namespace_76d95162::function_d9f49fba(1);
	namespace_ad23e503::function_1ab5ebec("lotus_snow_stop");
	namespace_76d95162::function_d9f49fba(0);
}

/*
	Name: function_d8fb6400
	Namespace: namespace_ef6666f9
	Checksum: 0xB623800B
	Offset: 0x3090
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_d8fb6400()
{
	level namespace_71b8dba1::function_a463d127("kane_nrc_robotics_have_go_0", 0.25);
	level namespace_71b8dba1::function_13b3b16a("plyr_how_can_he_be_doing_0", 1);
	wait(0.25);
	level namespace_ad23e503::function_1ab5ebec("flag_player_crossing_bridge");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_where_the_hell_does_0");
	level namespace_71b8dba1::function_a463d127("tayr_you_know_what_you_sa_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_where_where_are_we_0", 0.5);
	wait(0.5);
	level namespace_ad23e503::function_1ff63c0f(5, function_84970cc4("in_a_frozen_forest"));
	level namespace_71b8dba1::function_a463d127("tayr_imagine_yourself_in_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_taylor_this_isn_t_0", 1);
	level namespace_ad23e503::function_1ab5ebec("lotus_snow_stop");
	level thread namespace_ce7c3ed5::function_2222cd4f("cp_lotus2_pip_skybridgedispatch");
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_where_is_he_0", 1);
	level thread namespace_ce7c3ed5::function_8f7bd062("cp_lotus2_pip_skybridgedispatch", "pip");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_go_to_skybridge");
	level namespace_71b8dba1::function_a463d127("kane_target_spotted_cro_0", 0.5);
}

/*
	Name: function_89bac1be
	Namespace: namespace_ef6666f9
	Checksum: 0xC861A5A2
	Offset: 0x32B8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_89bac1be(var_e0cd6234)
{
	if(!isdefined(var_e0cd6234))
	{
		var_e0cd6234 = 0;
	}
	self endon("hash_128f8789");
	self.var_44a68a57 = &function_5a616058;
	self.var_7dfaf62 = 512;
	if(var_e0cd6234)
	{
		self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
	}
	self namespace_d84e54db::function_ceb883cd("rogue_control", "level_2");
}

/*
	Name: function_b6be1e52
	Namespace: namespace_ef6666f9
	Checksum: 0xB04D9527
	Offset: 0x3368
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b6be1e52()
{
	self endon("hash_128f8789");
	self function_e17e9c98(0.5);
	self namespace_d84e54db::function_ceb883cd("can_initiateaivsaimelee", 0);
}

/*
	Name: function_37716d71
	Namespace: namespace_ef6666f9
	Checksum: 0xA39150A0
	Offset: 0x33C0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_37716d71()
{
	self endon("hash_128f8789");
	self.var_44a68a57 = &function_9e5ba8ea;
	self namespace_d84e54db::function_ceb883cd("can_initiateaivsaimelee", 1);
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
	namespace_2f06d687::function_72214789("pursuit_human_ambient");
	var_63058086 = function_b4cb3503(self.var_b07228b6, "targetname");
	self namespace_d84e54db::function_ceb883cd("rogue_control_force_goal", var_63058086.var_722885f3);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self waittill("hash_41d1aaf0");
	self function_dc8c8404();
}

/*
	Name: function_1a26fc20
	Namespace: namespace_ef6666f9
	Checksum: 0x33DC4D8D
	Offset: 0x34F8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_1a26fc20()
{
	self endon("hash_128f8789");
	if(self.var_8fc0e50e == "human")
	{
		self namespace_d84e54db::function_ceb883cd("can_initiateaivsaimelee", 0);
	}
	level namespace_ad23e503::function_1ab5ebec("end_set_b_fight");
	if(!isdefined(self.var_bb8d3f02))
	{
		self.var_fd5a8f70 = 1;
		self function_fb5720f7();
	}
}

/*
	Name: function_8166e270
	Namespace: namespace_ef6666f9
	Checksum: 0xF2DCE450
	Offset: 0x3598
	Size: 0xB9
	Parameters: 12
	Flags: None
*/
function function_8166e270(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_2ffd9881, var_10e30246, var_a080d759, var_ffd2636b, var_269779a, var_a5cf2304, var_fe8d5ebb)
{
	if(self.var_fd5a8f70 === 1 && self.var_8fc0e50e == "human")
	{
		var_74d0774f = self.var_3a90f16b;
	}
	else if(!function_65f192a6(var_677b3e78))
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_9e5ba8ea
	Namespace: namespace_ef6666f9
	Checksum: 0xB88B43F5
	Offset: 0x3660
	Size: 0x89
	Parameters: 12
	Flags: None
*/
function function_9e5ba8ea(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_2ffd9881, var_10e30246, var_a080d759, var_ffd2636b, var_269779a, var_a5cf2304, var_fe8d5ebb)
{
	if(!function_65f192a6(var_677b3e78))
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_5a616058
	Namespace: namespace_ef6666f9
	Checksum: 0x430B2A1D
	Offset: 0x36F8
	Size: 0x9B
	Parameters: 12
	Flags: None
*/
function function_5a616058(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_2ffd9881, var_10e30246, var_a080d759, var_ffd2636b, var_269779a, var_a5cf2304, var_fe8d5ebb)
{
	if(!function_65f192a6(var_677b3e78) && var_677b3e78 !== level.var_2fd26037)
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_4869f17d
	Namespace: namespace_ef6666f9
	Checksum: 0x6F51E0C8
	Offset: 0x37A0
	Size: 0x523
	Parameters: 0
	Flags: None
*/
function function_4869f17d()
{
	if(function_27c72c1b())
	{
		namespace_d5067552::function_bae40a28("pursuit_upstairs_robots_spawn_manager");
		return;
	}
	level waittill("hash_90c52573");
	level thread namespace_431cac9::function_df89b05b("pursuit_choke_throw_00", "forced_level_2", "do_pursuit_choke_throw_00", undefined, "pursuit_done");
	level thread function_80f43be0();
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_01", "forced_level_2", "nearside_rvh_go", function_72a94f05(1, 2), "pursuit_done");
	wait(0.25);
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_02", "forced_level_2", "nearside_rvh_go", function_72a94f05(2, 3), "pursuit_done");
	level thread namespace_431cac9::function_df89b05b("cin_rvh_smashface", "forced_level_2", "nearside_rvh_go", 2, "pursuit_done");
	if(level.var_2395e945.size > 2)
	{
		level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_03", "forced_level_1", "nearside_rvh_go", function_72a94f05(3, 4), "pursuit_done");
		wait(0.25);
	}
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_04", "forced_level_1", "nearside_rvh_go", function_72a94f05(4, 5), "pursuit_done");
	wait(0.25);
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_05", "forced_level_1", "nearside_rvh_go", function_72a94f05(5, 6), "pursuit_done");
	wait(0.25);
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_06", "forced_level_1", "farside_rvh_go", function_72a94f05(1, 2), "pursuit_done");
	wait(0.25);
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_07", "forced_level_2", "farside_rvh_go", function_72a94f05(2, 3), "pursuit_done");
	namespace_ad23e503::function_1ab5ebec("play_farside_overthrow");
	var_f6c5842 = namespace_2f06d687::function_7387a40a("pursuit_overthrow_1b_robot", &function_89bac1be, 1);
	level thread namespace_431cac9::function_c92cb5b("cin_death_by_robot_throw01", "pursuit_overthrow_1b_robot", "pursuit_human_b");
	level thread namespace_431cac9::function_df89b05b("lotus_snow_rvh_01", "forced_level_2", "do_lotus_snow_vignettes", 0, "pursuit_done");
	wait(0.25);
	if(level.var_2395e945.size > 2)
	{
		level thread namespace_431cac9::function_df89b05b("lotus_snow_rvh_02", "forced_level_2", "do_lotus_snow_vignettes", 4, "pursuit_done");
	}
	wait(0.25);
	level thread namespace_431cac9::function_df89b05b("cin_rvh_facesmash_02", "forced_level_3", "lotus_snow_rvh_go", 0.5, "pursuit_done");
	level thread namespace_431cac9::function_df89b05b("cin_rvh_uppercut", "forced_level_1", "cin_rvh_uppercut_go", 1, "pursuit_done");
	level namespace_ad23e503::function_1ab5ebec("do_lotus_snow_vignettes");
	wait(5);
	namespace_d5067552::function_bae40a28("pursuit_upstairs_robots_spawn_manager");
	level thread namespace_431cac9::function_df89b05b("pursuit_choke_throw_stairs", "forced_level_1", "lotus_snow_2", 1);
}

/*
	Name: function_ae2d3f70
	Namespace: namespace_ef6666f9
	Checksum: 0x88CD8EB
	Offset: 0x3CD0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ae2d3f70()
{
	namespace_ad23e503::function_1ab5ebec("do_first_vignette");
	namespace_d5067552::function_bae40a28("sm_pursuit_interference_robots");
}

/*
	Name: function_80f43be0
	Namespace: namespace_ef6666f9
	Checksum: 0x58FF6BD8
	Offset: 0x3D10
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_80f43be0()
{
	level namespace_ad23e503::function_1ab5ebec("do_first_vignette");
	var_3f3a4339 = namespace_2f06d687::function_7387a40a("pursuit_overthrow_01_human");
	var_3f3a4339 namespace_d84e54db::function_c9e45d52(1);
	var_3f3a4339 function_169cc712(var_3f3a4339.var_722885f3, 1);
	var_3f3a4339.var_3a90f16b = 250;
	var_f6c5842 = namespace_2f06d687::function_7387a40a("pursuit_overthrow_01_robot_sky", &function_89bac1be, 1);
	var_f6c5842 namespace_d84e54db::function_c9e45d52(1);
	var_f6c5842 namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_431cac9::function_c92cb5b("cin_death_by_robot_throw00", "pursuit_overthrow_01_robot_sky", "pursuit_overthrow_01_human");
	if(function_5b49d38c(var_f6c5842))
	{
		var_fc02d77b = function_e7bdc1a1(var_f6c5842.var_722885f3, level.var_2395e945);
		var_f6c5842 function_65453879(var_fc02d77b);
	}
}

/*
	Name: function_9c97dac4
	Namespace: namespace_ef6666f9
	Checksum: 0xB5AC2ED0
	Offset: 0x3EC0
	Size: 0x71
	Parameters: 4
	Flags: None
*/
function function_9c97dac4(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_go_to_skybridge");
	}
	namespace_431cac9::function_3b6587d6(0, "lotus1_industrial_zone_umbra_gate");
	level notify("hash_1206d494");
}


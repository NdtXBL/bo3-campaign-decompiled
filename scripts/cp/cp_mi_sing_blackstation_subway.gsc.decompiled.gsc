#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation_police_station;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_3dc5b645;

/*
	Name: function_822cae8a
	Namespace: namespace_3dc5b645
	Checksum: 0x550EC314
	Offset: 0x760
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function function_822cae8a()
{
	level namespace_71e9cb84::function_74d6b22f("flotsam", 1);
	level thread function_d721f6c3();
	level thread function_5c54db13();
	level thread function_9d32ab8e();
	level thread function_70ff0b50();
	level thread function_e3067a8b();
	level thread function_bd040022();
	level thread function_95e21012();
	level thread function_4ad8a5f1();
	level thread function_c7ea2242();
	level thread function_27e6ca54();
	level thread function_eb060258();
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_goto_comm_relay");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	foreach(var_d84e54db in function_b8494651("axis"))
	{
		var_d84e54db function_dc8c8404();
	}
	level namespace_71e9cb84::function_74d6b22f("subway_entrance_crash", 1);
	if(isdefined(level.var_e44c2f76))
	{
		level thread [[level.var_e44c2f76]]();
	}
	var_d9754f70 = namespace_14b42b8a::function_7faf4c39("player_subway_pos");
	namespace_80983c42::function_80983c42("fx_expl_tanker_splashes_mist");
}

/*
	Name: function_eb060258
	Namespace: namespace_3dc5b645
	Checksum: 0x97BDF95F
	Offset: 0x9F0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_eb060258()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_underwater_vo");
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_we_re_approac_0");
	level namespace_71b8dba1::function_a463d127("kane_better_make_it_fast_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_understood_1");
}

/*
	Name: function_27e6ca54
	Namespace: namespace_3dc5b645
	Checksum: 0xDAA60392
	Offset: 0xA78
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_27e6ca54()
{
	var_ec39b8a8 = function_99201f25("subway_corpse_floating", "targetname");
	foreach(var_5d5ef481 in var_ec39b8a8)
	{
		var_5d5ef481 thread function_62437267();
	}
	var_40eadcd7 = function_6ada35ba("subway_corpse_3", "targetname");
	var_40eadcd7 thread function_62437267();
}

/*
	Name: function_62437267
	Namespace: namespace_3dc5b645
	Checksum: 0x5F8773FB
	Offset: 0xB78
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_62437267()
{
	self thread namespace_cc27597::function_43718187(self.var_caae374e, self);
}

/*
	Name: function_c7ea2242
	Namespace: namespace_3dc5b645
	Checksum: 0x40491F38
	Offset: 0xBA8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_c7ea2242()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_subway_tiles");
	namespace_71e9cb84::function_74d6b22f("subway_tiles", 1);
}

/*
	Name: function_99f304f0
	Namespace: namespace_3dc5b645
	Checksum: 0x47F17581
	Offset: 0xBF0
	Size: 0x181
	Parameters: 0
	Flags: None
*/
function function_99f304f0()
{
	self endon("hash_128f8789");
	self.var_15caaa0c = 0;
	while(!level namespace_ad23e503::function_7922262b("flag_kane_intro_complete"))
	{
		while(!self function_8213df59())
		{
			wait(0.1);
		}
		if(!self.var_15caaa0c)
		{
			self.var_15caaa0c = 1;
			self thread namespace_82b91a51::function_32d40124(&"COOP_SWIM_INSTRUCTIONS");
		}
		self namespace_71e9cb84::function_e9c3870b("play_bubbles", 1);
		self namespace_5753664b::function_43718187("bubbles", self.var_722885f3, (0, 0, 0), "swim_done", 1, "j_spineupper");
		while(self function_8213df59())
		{
			wait(0.1);
		}
		self namespace_71e9cb84::function_e9c3870b("play_bubbles", 0);
		self notify("hash_5670f4e8");
		wait(0.1);
	}
	self namespace_71e9cb84::function_e9c3870b("play_bubbles", 0);
	self notify("hash_5670f4e8");
}

/*
	Name: function_d721f6c3
	Namespace: namespace_3dc5b645
	Checksum: 0xEFF535E7
	Offset: 0xD80
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_d721f6c3()
{
	level namespace_d0ef8521::function_45d1556("subway_breadcrumb");
	level namespace_d0ef8521::function_45d1556("trigger_breadcrumb_subway_exit");
	level namespace_d0ef8521::function_45d1556("trigger_breadcrumb_police_street", "cp_level_blackstation_climb");
}

/*
	Name: function_5c54db13
	Namespace: namespace_3dc5b645
	Checksum: 0x32E30D4
	Offset: 0xDF8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5c54db13()
{
	level namespace_ad23e503::function_1ab5ebec("flag_waypoint_subway01");
	wait(2);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_subway_stair_debris_bundle");
	namespace_1d795d47::function_be8adfb8("objective_subway");
}

/*
	Name: function_4ad8a5f1
	Namespace: namespace_3dc5b645
	Checksum: 0x85DE0B4D
	Offset: 0xE60
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4ad8a5f1()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_hendricks_swim");
	level thread namespace_4297372::function_37f7c98d();
	level thread namespace_933eb669::function_a7bb8a82();
}

/*
	Name: function_95e21012
	Namespace: namespace_3dc5b645
	Checksum: 0x5371479C
	Offset: 0xEB8
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_95e21012()
{
	level namespace_cc27597::function_c35e6aab("cin_bla_08_02_subway_vign_swim_first_section");
	namespace_4dbf3ae3::function_1ab5ebec("trig_hendricks_swim");
	level namespace_cc27597::function_8f9f34e0("cin_bla_08_02_subway_vign_swim_first_section", &function_561cae8a, "play");
	level namespace_cc27597::function_43718187("cin_bla_08_02_subway_vign_swim_first_section");
	level namespace_ad23e503::function_1ab5ebec("subway_second_section");
	level namespace_cc27597::function_43718187("cin_bla_08_02_subway_vign_swim_second_section");
	level namespace_ad23e503::function_1ab5ebec("subway_third_section");
	level namespace_cc27597::function_8f9f34e0("cin_bla_08_02_subway_vign_swim_third_section", &function_5f8ce82c, "done");
	level namespace_cc27597::function_43718187("cin_bla_08_02_subway_vign_swim_third_section");
	if(!level namespace_ad23e503::function_7922262b("flag_waypoint_subway01"))
	{
		namespace_4dbf3ae3::function_42e87952("trig_hendricks_color_b2", "targetname");
	}
	level.var_2fd26037 notify("hash_5f734031");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("forceTacticalWalk", 1);
	level namespace_ad23e503::function_1ab5ebec("subway_exit");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("forceTacticalWalk", 0);
}

/*
	Name: function_561cae8a
	Namespace: namespace_3dc5b645
	Checksum: 0xA520390D
	Offset: 0x10B8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_561cae8a(var_c77d2837)
{
	wait(2);
	level.var_2fd26037 namespace_5753664b::function_43718187("bubbles", level.var_2fd26037.var_722885f3, (0, 0, 0), "swim_done", 1, "j_spineupper");
}

/*
	Name: function_5f8ce82c
	Namespace: namespace_3dc5b645
	Checksum: 0x47DF79D8
	Offset: 0x1120
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_5f8ce82c(var_c77d2837)
{
	level.var_2fd26037 notify("hash_5670f4e8");
}

/*
	Name: function_9d32ab8e
	Namespace: namespace_3dc5b645
	Checksum: 0x33E2B795
	Offset: 0x1148
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_9d32ab8e()
{
	level endon("hash_4a4c8981");
	var_11d618f2 = function_99201f25("subway_corpse_floating", "targetname");
	namespace_84970cc4::function_966ecb29(var_11d618f2, &function_f9af1ae2);
}

/*
	Name: function_f9af1ae2
	Namespace: namespace_3dc5b645
	Checksum: 0xF4FFC240
	Offset: 0x11B0
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_f9af1ae2()
{
	level endon("hash_4a4c8981");
	self endon("hash_128f8789");
	var_fb1d7841 = self;
	var_ee28bfd = 60;
	while(1)
	{
		var_fb1d7841 function_788ec1d6(var_ee28bfd, 5);
		wait(4.5);
	}
}

/*
	Name: function_70ff0b50
	Namespace: namespace_3dc5b645
	Checksum: 0x2B438832
	Offset: 0x1228
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_70ff0b50()
{
	level endon("hash_4a4c8981");
	level endon("hash_8f3612a6");
	var_5d5ef481 = function_6ada35ba("subway_corpse", "targetname");
	var_ec0f65c6 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_5d5ef481.var_722885f3, var_5d5ef481.var_6ab6f4fd);
	var_5d5ef481 function_37f7858a(var_ec0f65c6);
	var_5d5ef481 thread namespace_cc27597::function_43718187("cin_bla_08_02_subway_vign_dead_body_scare", var_5d5ef481);
	var_58230dee = function_6ada35ba("trig_subway_scare", "targetname");
	var_58230dee waittill("hash_4dbf3ae3", var_5dc5e20a);
	function_37cbcf1a("mus_subway_scare", (0, 0, 0));
	level notify("hash_e5172ffd");
	level thread function_5ba79988(var_5dc5e20a);
	var_ec0f65c6 function_fde61077(-60, 0.5);
	var_ec0f65c6 function_5613042d(50, 2);
	var_ec0f65c6 function_21d0da55(90, 1);
	var_ec0f65c6 waittill("hash_a21db68a");
	var_ec0f65c6 function_a96a2721(var_5d5ef481.var_722885f3 - (0, 50, 25), 5);
}

/*
	Name: function_e3067a8b
	Namespace: namespace_3dc5b645
	Checksum: 0x83F5ABE5
	Offset: 0x1428
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_e3067a8b()
{
	level endon("hash_4a4c8981");
	var_58230dee = function_6ada35ba("trig_subway_scare_2", "targetname");
	var_5d5ef481 = function_6ada35ba("subway_corpse_2", "targetname");
	level waittill("hash_e5172ffd");
	var_5d5ef481 endon("hash_128f8789");
	var_58230dee waittill("hash_4dbf3ae3", var_5dc5e20a);
	var_5d5ef481 function_d7e3960e(-80, 2);
	var_5d5ef481 function_788ec1d6(60, 5);
	var_5d5ef481 waittill("hash_a21db68a");
	var_5d5ef481 function_a96a2721(var_5d5ef481.var_722885f3 - (0, -50, 50), 5);
}

/*
	Name: function_bd040022
	Namespace: namespace_3dc5b645
	Checksum: 0x46210B46
	Offset: 0x1558
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_bd040022()
{
	level endon("hash_4a4c8981");
	var_58230dee = function_6ada35ba("trig_subway_scare_3", "targetname");
	var_5d5ef481 = function_6ada35ba("subway_corpse_3", "targetname");
	var_5d5ef481 endon("hash_128f8789");
	var_58230dee waittill("hash_4dbf3ae3", var_5dc5e20a);
	var_5d5ef481 function_8bdea13c(-24, 0.75);
	var_5d5ef481 function_5613042d(60, 5);
	var_5d5ef481 waittill("hash_a21db68a");
	var_5d5ef481 function_a96a2721(var_5d5ef481.var_722885f3 - (25, 25, 75), 5);
}

/*
	Name: function_5ba79988
	Namespace: namespace_3dc5b645
	Checksum: 0x57B50964
	Offset: 0x1678
	Size: 0x15
	Parameters: 1
	Flags: None
*/
function function_5ba79988(var_5dc5e20a)
{
	level endon("hash_4a4c8981");
}


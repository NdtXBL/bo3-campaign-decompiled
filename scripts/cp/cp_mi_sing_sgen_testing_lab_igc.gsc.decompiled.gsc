#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_a5e80dc;

/*
	Name: function_74581061
	Namespace: namespace_a5e80dc
	Checksum: 0x30974D5C
	Offset: 0x958
	Size: 0x3D5
	Parameters: 2
	Flags: None
*/
function function_74581061(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_c35e6aab("lab_door_ready");
	level namespace_82b91a51::function_d8eaed3d(2);
	level thread function_652f4022();
	level thread namespace_cc27597::function_43718187("cin_sgen_14_01_humanlab_vign_deadbodies");
	level namespace_71e9cb84::function_74d6b22f("testing_lab_wires", 1);
	level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 0);
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_goto_signal_source");
		level thread namespace_d0ef8521::function_45d1556("fallen_soldiers_end_breadcrumb_trig");
		level namespace_cc27597::function_c35e6aab("cin_sgen_14_humanlab_3rd_sh005");
		level namespace_cc27597::function_c35e6aab("cin_sgen_14_humanlab_3rd_doors");
		namespace_d7916d65::function_a2995f22();
	}
	level thread function_e763362b();
	function_d9cab9d3();
	level waittill("hash_89d9c0f");
	level thread namespace_d40478f6::function_4a262c0b();
	if(isdefined(level.var_a448ad77))
	{
		level thread [[level.var_a448ad77]]();
	}
	level.var_280d5f68 = function_6ada35ba("human_lab_door_l", "targetname");
	level.var_280d5f68.var_a1f5a583 = level.var_280d5f68.var_722885f3;
	level.var_3c301126 = function_6ada35ba("human_lab_door_r", "targetname");
	level.var_3c301126.var_a1f5a583 = level.var_3c301126.var_722885f3;
	level namespace_cc27597::function_8f9f34e0("cin_sgen_14_humanlab_3rd_sh005", &function_b884ec52, "play");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_14_humanlab_3rd_sh200", &function_841ed050, "done");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_14_humanlab_3rd_sh200", &function_5841c784, "players_done");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_14_humanlab_3rd_sh040", &function_7a6f4571, "play");
	level thread namespace_cc27597::function_43718187("cin_sgen_14_humanlab_3rd_doors");
	level namespace_cc27597::function_43718187("cin_sgen_14_humanlab_3rd_sh005", level.var_2240f121);
	level.var_2240f121 = undefined;
}

/*
	Name: function_bfad6ceb
	Namespace: namespace_a5e80dc
	Checksum: 0xE3E095A0
	Offset: 0xD38
	Size: 0x2F3
	Parameters: 4
	Flags: None
*/
function function_bfad6ceb(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_doors");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh005");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh010");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh020");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh020");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh020_female");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh030");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh040");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh050");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh060");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh070");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh080");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh090");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh100");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh110");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh120");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh120_female");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh130");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh130_female");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh140");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh150");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh150_female");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh160");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh160_female");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh170");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh170_female");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh180");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh180_female");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh190");
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh200");
}

/*
	Name: function_652f4022
	Namespace: namespace_a5e80dc
	Checksum: 0xE032280E
	Offset: 0x1038
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_652f4022()
{
	function_1ce2843b("cp_sgen_env_dniroom");
	level waittill("hash_92687102");
	function_acdfe1fe("cp_sgen_env_dniroom", 1);
	level namespace_ad23e503::function_1ab5ebec("dark_battle_hendricks_above");
	function_4a0fb95e("cp_sgen_env_dniroom");
}

/*
	Name: function_b884ec52
	Namespace: namespace_a5e80dc
	Checksum: 0x69BD6FC5
	Offset: 0x10C0
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_b884ec52(var_c77d2837)
{
	foreach(var_9544d7c1 in var_c77d2837)
	{
		if(function_65f192a6(var_9544d7c1))
		{
			var_9544d7c1 namespace_175490fb::function_f8669cbf(1);
			var_9544d7c1 namespace_71e9cb84::function_e9c3870b("sndCCHacking", 2);
			var_9544d7c1 namespace_82b91a51::function_67520c6a(1, "death", &namespace_71e9cb84::function_688ed188, "hack_dni_fx");
			var_9544d7c1 namespace_82b91a51::function_67520c6a(2, "death", &namespace_71e9cb84::function_e9c3870b, "sndCCHacking", 0);
		}
	}
}

/*
	Name: function_7a6f4571
	Namespace: namespace_a5e80dc
	Checksum: 0x486D902C
	Offset: 0x1210
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_7a6f4571(var_c77d2837)
{
	level waittill("hash_92687102");
	level.var_2fd26037 namespace_175490fb::function_f8669cbf(1);
}

/*
	Name: function_841ed050
	Namespace: namespace_a5e80dc
	Checksum: 0x2E43E404
	Offset: 0x1250
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_841ed050(var_c77d2837)
{
	var_acb9c8b6 = function_b4cb3503("hendricks_post_dni_lab", "targetname");
	level.var_2fd26037 function_169cc712(var_acb9c8b6, 1, 16);
	namespace_82b91a51::function_a0938376();
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_goto_server_room");
	namespace_1d795d47::function_be8adfb8("testing_lab_igc");
	namespace_82b91a51::function_93831e79("dark_battle");
	level.var_280d5f68.var_722885f3 = level.var_280d5f68.var_a1f5a583;
	level.var_3c301126.var_722885f3 = level.var_3c301126.var_a1f5a583;
}

/*
	Name: function_5841c784
	Namespace: namespace_a5e80dc
	Checksum: 0x17B99D4F
	Offset: 0x1350
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_5841c784(var_c77d2837)
{
	namespace_82b91a51::function_93831e79("dark_battle");
}

/*
	Name: function_d9cab9d3
	Namespace: namespace_a5e80dc
	Checksum: 0xC3E0131D
	Offset: 0x1380
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_d9cab9d3()
{
	var_f0e94a11 = function_6ada35ba("trig_testing_lab_door", "targetname");
	var_f0e94a11 function_175e6b8e(0);
	level.var_2fd26037 function_169cc712(function_b4cb3503("fallen_soldiers_hendricks_hack_door_node", "targetname"), 1);
	level namespace_ad23e503::function_1ab5ebec("lab_door_ready");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
	var_f0e94a11 function_175e6b8e(1);
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_hack_door_signal_source");
	namespace_82b91a51::function_14518e76(var_f0e94a11, &"cp_prompt_dni_sgen_hack_door", &"CP_MI_SING_SGEN_HACK", &function_474ab5c2);
}

/*
	Name: function_474ab5c2
	Namespace: namespace_a5e80dc
	Checksum: 0xF323A5F4
	Offset: 0x14B0
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_474ab5c2(var_6bfe1586)
{
	level.var_2240f121 = var_6bfe1586;
	self namespace_a230c2b1::function_e54c54c3();
	level.var_2fd26037 function_e11ce512();
	level notify("hash_89d9c0f");
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_hack_door_signal_source");
	self namespace_a230c2b1::function_c5a39495(1);
}

/*
	Name: function_e763362b
	Namespace: namespace_a5e80dc
	Checksum: 0xAC887B3E
	Offset: 0x1558
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e763362b()
{
	namespace_4dbf3ae3::function_4ab4cb6(5, "testing_lab_vo_looktrig", "targetname");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hack_the_panel_i_go_0");
	level namespace_ad23e503::function_74d6b22f("lab_door_ready");
	function_afe40e69();
}

/*
	Name: function_afe40e69
	Namespace: namespace_a5e80dc
	Checksum: 0x69221CDF
	Offset: 0x15E0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_afe40e69()
{
	level endon("hash_89d9c0f");
	wait(5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_wanna_hurry_up_we_n_0");
}


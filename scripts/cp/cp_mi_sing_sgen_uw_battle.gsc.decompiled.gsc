#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_flood;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_b1c45cf3;

/*
	Name: function_297ca3c6
	Namespace: namespace_b1c45cf3
	Checksum: 0xF95C4D8A
	Offset: 0x570
	Size: 0x2C3
	Parameters: 2
	Flags: None
*/
function function_297ca3c6(var_b04bc952, var_74cd64bc)
{
	level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 1);
	function_6c1294b8("player_swimTime", 5000);
	var_1787c657 = function_6ada35ba("water_ride_explosion_damage", "targetname");
	var_1787c657 function_175e6b8e(0);
	level namespace_82b91a51::function_ef3f75eb("tuwc");
	level thread function_48cb67f6();
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_escape_sgen");
	}
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level namespace_cc27597::function_c35e6aab("cin_sgen_23_01_underwater_battle_vign_swim_hendricks_groundidl");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_door_hendricks_explosion_bundle");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	else
	{
		wait(0.05);
		namespace_1d795d47::function_f58fccb8("underwater_battle");
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("water_motes", 1);
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("water_teleport", 1);
		var_5dc5e20a thread namespace_419e977d::function_e9b126ef();
	}
	namespace_2f06d687::function_ef554cf7("axis", &namespace_cba4cc55::function_a527e6f9);
	function_dbfa8dae();
	namespace_1d795d47::function_be8adfb8("underwater_battle");
}

/*
	Name: function_ceb4ae50
	Namespace: namespace_b1c45cf3
	Checksum: 0xFB8219CE
	Offset: 0x840
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_ceb4ae50(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_dbfa8dae
	Namespace: namespace_b1c45cf3
	Checksum: 0x59B45A80
	Offset: 0x870
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_dbfa8dae()
{
	level namespace_82b91a51::function_ef3f75eb("underwater_fan");
	level namespace_82b91a51::function_ef3f75eb("tuwc");
	level thread function_77b723a3();
	level thread namespace_cc27597::function_43718187("cin_sgen_23_01_underwater_battle_vign_swim_hendricks_groundidl");
	while(!namespace_cc27597::function_92591589("cin_sgen_23_01_underwater_battle_vign_swim_hendricks_groundidl"))
	{
		wait(0.1);
	}
	level thread namespace_caee6f4a::function_82311a3e();
	namespace_d5067552::function_bae40a28("uw_battle_spawnmanager");
	level thread function_b980dc78();
	level namespace_ad23e503::function_1ab5ebec("hendricks_uwb_to_window");
	level namespace_cc27597::function_43718187("cin_sgen_23_01_underwater_battle_vign_swim_hendricks_traverse_room", level.var_2fd26037);
}

/*
	Name: function_b980dc78
	Namespace: namespace_b1c45cf3
	Checksum: 0x5408CE87
	Offset: 0x9B0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_b980dc78()
{
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_what_now_kane_0");
	level namespace_71b8dba1::function_a463d127("kane_above_you_marking_y_0", 1);
	level thread namespace_d0ef8521::function_45d1556("uw_rail_sequence_start");
	level waittill("hash_5d296f1e");
	level namespace_71b8dba1::function_a463d127("kane_blow_that_door_wate_0", 0.5);
	level namespace_ad23e503::function_1ab5ebec("hendricks_uwb_to_window");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_on_me_once_i_blow_t_0");
}

/*
	Name: function_48cb67f6
	Namespace: namespace_b1c45cf3
	Checksum: 0x889A9052
	Offset: 0xA90
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_48cb67f6()
{
	var_e3b635fb = function_b8494651("axis", "team3");
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(!(isdefined(var_d84e54db.var_8fc0e50e) && var_d84e54db.var_8fc0e50e == "robot"))
		{
			var_d84e54db namespace_82b91a51::function_67520c6a(function_72a94f05(0.05, 0.75), "death", &function_2992720d);
		}
	}
	var_4c92143d = namespace_14b42b8a::function_7922262b("underwater_battle_drowning_54i_lookat");
	var_dc83f241 = namespace_14b42b8a::function_7faf4c39("underwater_battle_drowning_54i");
	namespace_84970cc4::function_966ecb29(var_dc83f241, &namespace_cc27597::function_43718187);
}

/*
	Name: function_77b723a3
	Namespace: namespace_b1c45cf3
	Checksum: 0x3B6A0997
	Offset: 0xC28
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_77b723a3()
{
	wait(5);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_82b91a51::function_32d40124(&"COOP_SWIM_INSTRUCTIONS");
	}
}


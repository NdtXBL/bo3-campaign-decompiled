#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_cloudmountain;
#using scripts\cp\cp_mi_sing_biodomes_sound;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
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
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_hunter;

#namespace namespace_6f13ba4a;

/*
	Name: function_d290ebfa
	Namespace: namespace_6f13ba4a
	Checksum: 0x99EC1590
	Offset: 0x800
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
}

/*
	Name: function_af17c267
	Namespace: namespace_6f13ba4a
	Checksum: 0x5988E8B3
	Offset: 0x810
	Size: 0x46B
	Parameters: 2
	Flags: None
*/
function function_af17c267(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_fighttothedome_init");
	level notify("hash_a425069a");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_f5edec75::function_a36395f0();
		namespace_2f06d687::function_2b37a3c9("sp_server_room_background", "targetname", &function_76c56ee1);
		namespace_d5067552::function_bae40a28("sm_server_room_background");
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_biodomes_server_room_window_break_01_bundle");
		var_777355da = function_99201f25("hallway_turret", "script_noteworthy");
		var_b888d69a = namespace_2f06d687::function_22356ba7(var_777355da);
		namespace_84970cc4::function_eaab05dc(var_b888d69a, &function_2992720d);
		var_d874dcf = function_6ada35ba("turret_hallway_door_ai_clip", "targetname");
		var_d874dcf function_dc8c8404();
		level namespace_f5edec75::function_a78ec4a();
		var_a63c572e = function_6ada35ba("server_window", "targetname");
		if(isdefined(var_a63c572e))
		{
			var_a63c572e function_dc8c8404();
		}
		level thread namespace_27a45d31::function_753a859(var_b04bc952);
		namespace_80983c42::function_80983c42("vtol_svrrm_window_break1");
		namespace_80983c42::function_80983c42("vtol_svrrm_window_break2");
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		level thread namespace_f1b4cbbc::function_46333a8a();
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		namespace_d7916d65::function_a2995f22();
	}
	level.var_2fd26037.var_c584775c = 0;
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	level thread function_e6379a2(var_74cd64bc);
	var_d874dcf = function_6ada35ba("control_room_ai_clip", "targetname");
	var_d874dcf function_dc8c8404();
	level.var_2fd26037 thread function_a0204230();
	var_edc6e0e1 = namespace_96fa87af::function_2962e239("fight_dome_escape_vtol");
	var_edc6e0e1 namespace_82b91a51::function_958c7633();
	level thread function_868ce0d5(var_edc6e0e1);
	var_edc6e0e1 waittill("hash_6cf6ac7e");
	var_edc6e0e1 function_ada64136();
	level thread namespace_cc27597::function_c35e6aab("cin_bio_11_03_fightdome_1st_escape", var_edc6e0e1);
	level thread namespace_cc27597::function_8f9f34e0("cin_bio_11_03_fightdome_1st_escape", &function_c4de5eee, "play");
	level thread namespace_cc27597::function_8f9f34e0("cin_bio_11_03_fightdome_1st_escape", &function_203a65ec, "skip_started");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_rope_sim_hendricks_bundle");
	level thread function_646d5121();
	namespace_d5067552::function_bae40a28("sm_supertree_background_retreat");
}

/*
	Name: function_203a65ec
	Namespace: namespace_6f13ba4a
	Checksum: 0x9383BF7
	Offset: 0xC88
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_203a65ec(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_5e6740a8(1);
	}
	namespace_82b91a51::function_7e61de2b(0, "black");
}

/*
	Name: function_e6379a2
	Namespace: namespace_6f13ba4a
	Checksum: 0x5A1A6A1C
	Offset: 0xD48
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_e6379a2(var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		level namespace_cc27597::function_43718187("cin_bio_10_01_serverroom_vign_hack_loop");
	}
	level namespace_f5edec75::function_a91388d2(1);
	level thread function_3d342090();
	level namespace_cc27597::function_43718187("cin_bio_11_03_fightdome_1st_escape_approach");
}

/*
	Name: function_76c56ee1
	Namespace: namespace_6f13ba4a
	Checksum: 0xA2BE2F13
	Offset: 0xDD8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_76c56ee1()
{
	self endon("hash_128f8789");
	level waittill("hash_d38fe5be");
	wait(9);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self function_65453879(level.var_2fd26037);
}

/*
	Name: function_868ce0d5
	Namespace: namespace_6f13ba4a
	Checksum: 0x56CD45D1
	Offset: 0xE40
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_868ce0d5(var_edc6e0e1)
{
	level namespace_71b8dba1::function_a463d127("kane_i_m_gonna_some_need_0");
	var_edc6e0e1 namespace_71b8dba1::function_81141386("vtlp_bird_on_approach_for_0");
}

/*
	Name: function_646d5121
	Namespace: namespace_6f13ba4a
	Checksum: 0x442B1C21
	Offset: 0xE98
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_646d5121()
{
	level namespace_71e9cb84::function_74d6b22f("fighttothedome_exfil_rope", 1);
	wait(1);
	level notify("hash_d38fe5be");
	var_7724dd66 = function_6ada35ba("trig_rope_rescue", "targetname");
	var_7724dd66 function_48f26766();
	if(isdefined(level.var_4d395988))
	{
		level thread [[level.var_4d395988]]();
	}
	var_9bdb9113 = namespace_82b91a51::function_14518e76(var_7724dd66, &"cp_level_biodomes_exfil", &"CP_MI_SING_BIODOMES_ZIPLINE_USE", &function_2ed72358);
	level waittill("hash_a384e425");
	level namespace_71e9cb84::function_74d6b22f("fighttothedome_exfil_rope", 2);
	if(isdefined(level.var_21d18cf5))
	{
		level thread [[level.var_21d18cf5]]();
	}
	level thread function_f68b9e51();
	level thread function_df8adf84("hendricks");
	level thread function_df8adf84("player");
	level waittill("hash_ebe76425");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	namespace_1d795d47::function_be8adfb8("objective_fighttothedome");
}

/*
	Name: function_df8adf84
	Namespace: namespace_6f13ba4a
	Checksum: 0x8DE6D159
	Offset: 0x1060
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_df8adf84(var_9200d3f9)
{
	var_b08086a1 = function_6ada35ba("glass_crack_" + var_9200d3f9, "targetname");
	var_b08086a1 function_50ccee8d();
	level waittill(var_9200d3f9 + "_crack_glass");
	var_b08086a1 function_48f26766();
}

/*
	Name: function_f68b9e51
	Namespace: namespace_6f13ba4a
	Checksum: 0x2296047D
	Offset: 0x10E8
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_f68b9e51()
{
	for(var_18a9c806 = 0; var_18a9c806 < 2; var_18a9c806++)
	{
		level waittill("hash_36f8cd21");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("zipline_speed_blur", 1);
		}
		level waittill("hash_99beb75c");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("zipline_speed_blur", 0);
		}
	}
}

/*
	Name: function_2ed72358
	Namespace: namespace_6f13ba4a
	Checksum: 0x51F1866E
	Offset: 0x1260
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_2ed72358(var_8df23e0a)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("server_extra_cam", 0);
		var_5dc5e20a function_83fd42b5();
	}
	self namespace_a230c2b1::function_e54c54c3();
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_exfil");
	level notify("hash_a384e425");
	level thread namespace_cc27597::function_43718187("cin_bio_11_03_fightdome_1st_escape", var_8df23e0a);
}

/*
	Name: function_c4de5eee
	Namespace: namespace_6f13ba4a
	Checksum: 0xD192896B
	Offset: 0x1378
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_c4de5eee(var_c77d2837)
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_rope_sim_hendricks_bundle");
	var_7a94ab35 = function_6ada35ba("rope_sim_hendricks", "targetname");
	var_7a94ab35 waittill("hash_34bf0af6");
	level namespace_71e9cb84::function_74d6b22f("fighttothedome_exfil_rope_sim_player", 1);
}

/*
	Name: function_a0204230
	Namespace: namespace_6f13ba4a
	Checksum: 0x9B2FD60E
	Offset: 0x1408
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a0204230()
{
	level endon("hash_a384e425");
	namespace_82b91a51::function_c49ce021("hendricks");
	self.var_44a68a57 = &function_daf71f6;
	self waittill("hash_128f8789");
	namespace_82b91a51::function_207f8667(&"CP_MI_SING_BIODOMES_HENDRICKS_KILLED", &"CP_MI_SING_BIODOMES_HENDRICKS_KILLED_HINT");
}

/*
	Name: function_daf71f6
	Namespace: namespace_6f13ba4a
	Checksum: 0xA55AB8DC
	Offset: 0x1480
	Size: 0xB3
	Parameters: 12
	Flags: None
*/
function function_daf71f6(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_1d6db0a3, var_10e30246, var_a080d759, var_ffd2636b, var_269779a, var_a5cf2304, var_fe8d5ebb)
{
	var_6c3c4545 = function_c4d5ec1f("hunter_rocket_turret");
	if(var_1d6db0a3 === var_6c3c4545)
	{
		var_74d0774f = self.var_3a90f16b;
	}
	else
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_451af01d
	Namespace: namespace_6f13ba4a
	Checksum: 0xB61A45A0
	Offset: 0x1540
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_451af01d(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_769dc23f::function_ed573577();
	namespace_27a45d31::function_ddb0eeea("objective_fighttothedome_done");
}

/*
	Name: function_3d342090
	Namespace: namespace_6f13ba4a
	Checksum: 0x52B8668F
	Offset: 0x1598
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3d342090()
{
	wait(1);
	level thread namespace_f5edec75::function_a91388d2(0);
}


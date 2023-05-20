#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_newworld;
#using scripts\cp\cp_mi_zurich_newworld_sound;
#using scripts\cp\cp_mi_zurich_newworld_train;
#using scripts\cp\cp_mi_zurich_newworld_util;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_d2831417;

/*
	Name: function_8f94ea53
	Namespace: namespace_d2831417
	Checksum: 0xEBA860FA
	Offset: 0x3C0
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_8f94ea53(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	namespace_1d795d47::function_f58fccb8("waking_up_igc");
}

/*
	Name: function_6383d314
	Namespace: namespace_d2831417
	Checksum: 0xD4FAC417
	Offset: 0x418
	Size: 0x27B
	Parameters: 2
	Flags: None
*/
function function_6383d314(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_c7062b04::function_c63fb1d();
		namespace_d7916d65::function_c32ba481();
		level thread namespace_ce0e5f06::function_30ec5bf7(1);
	}
	namespace_ce0e5f06::function_3383b379();
	level namespace_cc27597::function_c35e6aab("cin_new_17_01_wakingup_1st_reveal");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_curtain_bundle");
	namespace_82b91a51::function_d8eaed3d(10);
	namespace_ce0e5f06::function_83a7d040();
	namespace_82b91a51::function_11a89b44();
	function_c3e8639();
	level thread namespace_e38c3c58::function_9c65cf9a();
	level thread namespace_4fe3eef1::function_9908d262("mus_new_world_chase_intro");
	level thread namespace_4fe3eef1::function_9908d262("mus_new_world_brave_intro");
	if(isdefined(level.var_aacb4541))
	{
		level thread [[level.var_aacb4541]]();
	}
	namespace_cc27597::function_8f9f34e0("cin_new_17_01_wakingup_1st_reveal", &function_4619fd7, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_17_01_wakingup_1st_reveal", &function_8247e7d3, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_17_01_wakingup_1st_reveal", &function_203a65ec, "skip_started");
	level thread namespace_cc27597::function_43718187("cin_new_17_01_wakingup_1st_reveal");
	level namespace_ad23e503::function_9d134160("infinite_white_transition");
	level waittill("hash_720ce609");
	namespace_82b91a51::function_a0938376();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_4619fd7
	Namespace: namespace_d2831417
	Checksum: 0x95F71037
	Offset: 0x6A0
	Size: 0x81
	Parameters: 1
	Flags: None
*/
function function_4619fd7(var_c77d2837)
{
	var_c77d2837["player 1"] waittill("hash_bb969e7d");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_82b91a51::function_7e61de2b(0.5, "white");
	}
	level notify("hash_720ce609");
}

/*
	Name: function_8247e7d3
	Namespace: namespace_d2831417
	Checksum: 0xE3DACAEA
	Offset: 0x730
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_8247e7d3(var_c77d2837)
{
	var_c77d2837["krueger"] waittill("hash_51e02617");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_curtain_bundle");
}

/*
	Name: function_203a65ec
	Namespace: namespace_d2831417
	Checksum: 0xF38BE140
	Offset: 0x780
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_203a65ec(var_c77d2837)
{
	namespace_82b91a51::function_7e61de2b(0, "black");
}

/*
	Name: function_c3e8639
	Namespace: namespace_d2831417
	Checksum: 0x4B60627D
	Offset: 0x7B8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_c3e8639()
{
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_there_was_no_way_to_0", 0.5, 1);
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_your_dni_may_show_yo_0", 0.5, 1);
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_sometimes_you_have_0", 1, 1);
	wait(0.5);
}

/*
	Name: function_3ff80cea
	Namespace: namespace_d2831417
	Checksum: 0x5709521D
	Offset: 0x860
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_3ff80cea(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}


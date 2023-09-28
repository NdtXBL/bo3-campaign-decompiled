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
function function_8f94ea53(str_objective, var_74cd64bc)
{
	level flag::wait_till("all_players_spawned");
	skipto::teleport("waking_up_igc");
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
function function_6383d314(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_c7062b04::function_c63fb1d();
		load::function_c32ba481();
		level thread namespace_ce0e5f06::function_30ec5bf7(1);
	}
	namespace_ce0e5f06::function_3383b379();
	level scene::init("cin_new_17_01_wakingup_1st_reveal");
	level scene::init("p7_fxanim_cp_newworld_curtain_bundle");
	util::function_d8eaed3d(10);
	namespace_ce0e5f06::function_83a7d040();
	util::streamer_wait();
	function_c3e8639();
	level thread namespace_e38c3c58::function_9c65cf9a();
	level thread audio::unlockFrontendMusic("mus_new_world_chase_intro");
	level thread audio::unlockFrontendMusic("mus_new_world_brave_intro");
	if(isdefined(level.BZM_NEWWORLDDialogue12Callback))
	{
		level thread [[level.BZM_NEWWORLDDialogue12Callback]]();
	}
	scene::add_scene_func("cin_new_17_01_wakingup_1st_reveal", &function_4619fd7, "play");
	scene::add_scene_func("cin_new_17_01_wakingup_1st_reveal", &function_8247e7d3, "play");
	scene::add_scene_func("cin_new_17_01_wakingup_1st_reveal", &end_fade_out, "skip_started");
	level thread scene::Play("cin_new_17_01_wakingup_1st_reveal");
	level flag::clear("infinite_white_transition");
	level waittill("hash_720ce609");
	util::clear_streamer_hint();
	skipto::function_be8adfb8(str_objective);
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
function function_4619fd7(a_ents)
{
	a_ents["player 1"] waittill("hash_bb969e7d");
	level clientfield::set("sndIGCsnapshot", 4);
	if(!scene::is_skipping_in_progress())
	{
		util::screen_fade_out(0.5, "white");
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
function function_8247e7d3(a_ents)
{
	a_ents["krueger"] waittill("hash_51e02617");
	level thread scene::Play("p7_fxanim_cp_newworld_curtain_bundle");
}

/*
	Name: end_fade_out
	Namespace: namespace_d2831417
	Checksum: 0xF38BE140
	Offset: 0x780
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function end_fade_out(a_ents)
{
	util::screen_fade_out(0, "black");
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
	level.var_fc1953ce dialog::say("tayr_there_was_no_way_to_0", 0.5, 1);
	level.var_fc1953ce dialog::say("tayr_your_dni_may_show_yo_0", 0.5, 1);
	level.var_fc1953ce dialog::say("tayr_sometimes_you_have_0", 1, 1);
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
function function_3ff80cea(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}


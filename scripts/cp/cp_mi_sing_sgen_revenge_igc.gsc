#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_pallas;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_19d629e;

/*
	Name: function_cc756659
	Namespace: namespace_19d629e
	Checksum: 0x90247713
	Offset: 0x3F8
	Size: 0x1FB
	Parameters: 2
	Flags: None
*/
function function_cc756659(str_objective, var_74cd64bc)
{
	function_6ddd4fa4("sgen_ocean_water");
	if(var_74cd64bc)
	{
		util::function_d8eaed3d(4);
		level scene::init("cin_sgen_20_twinrevenge_3rd_sh010");
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::complete("cp_level_sgen_descend_into_core");
		objectives::complete("cp_level_sgen_goto_signal_source");
		objectives::complete("cp_level_sgen_goto_server_room");
		objectives::complete("cp_level_sgen_confront_pallas");
		SGEN::function_bff1a867(str_objective);
		level thread namespace_646f304f::function_4ef8cf79();
		load::function_a2995f22();
		level scene::Play("cin_sgen_20_twinrevenge_3rd_sh010");
	}
	level waittill("hash_3f04e63f");
	util::clear_streamer_hint();
	util::wait_network_frame();
	level util::player_lock_control();
	streamerRequest("clear", "cin_sgen_19_ghost_3rd");
	streamerRequest("clear", "cin_sgen_20_twinrevenge_3rd");
}

/*
	Name: function_b2f95c13
	Namespace: namespace_19d629e
	Checksum: 0xE59384A6
	Offset: 0x600
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_b2f95c13(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	function_9e3608e3("sgen_ocean_water");
}

/*
	Name: function_a8e314e9
	Namespace: namespace_19d629e
	Checksum: 0x640E21CA
	Offset: 0x648
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_a8e314e9()
{
	level scene::add_scene_func("cin_sgen_20_twinrevenge_3rd_sh010", &set_exposure_bank, "play", 3);
	level scene::add_scene_func("cin_sgen_20_twinrevenge_3rd_sh010_nohint", &set_exposure_bank, "play", 3);
	level scene::add_scene_func("cin_sgen_20_twinrevenge_3rd_sh070", &set_exposure_bank, "play", 3);
	level scene::add_scene_func("cin_sgen_20_twinrevenge_3rd_sh070", &function_ac7d11ce, "play");
	level scene::add_scene_func("cin_sgen_20_twinrevenge_3rd_sh080", &function_867a9765, "play");
	level scene::add_scene_func("cin_sgen_20_twinrevenge_3rd_sh090", &function_a1234ba5, "play");
	level scene::add_scene_func("cin_sgen_20_twinrevenge_3rd_sh090", &function_46e34900, "done");
	if(SessionModeIsCampaignZombiesGame())
	{
		level scene::add_scene_func("cin_sgen_20_twinrevenge_3rd_sh010", &function_c52866de, "play");
		level scene::add_scene_func("cin_sgen_20_twinrevenge_3rd_sh010_nohint", &function_c52866de, "play");
	}
}

/*
	Name: function_c52866de
	Namespace: namespace_19d629e
	Checksum: 0x3A6000C3
	Offset: 0x830
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function function_c52866de(a_ents)
{
	if(isdefined(level.BZM_SGENDialogue8_1Callback))
	{
		level thread [[level.BZM_SGENDialogue8_1Callback]]();
	}
}

/*
	Name: function_a1234ba5
	Namespace: namespace_19d629e
	Checksum: 0x16BA821B
	Offset: 0x860
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a1234ba5(a_ents)
{
	level waittill("hash_a1234ba5");
	util::screen_fade_out(0, "black", "hide_trans_flood");
}

/*
	Name: function_46e34900
	Namespace: namespace_19d629e
	Checksum: 0x8F6BC434
	Offset: 0x8A8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_46e34900(a_ents)
{
	util::clear_streamer_hint();
	set_exposure_bank(a_ents, 0);
	skipto::teleport("flood_combat");
	skipto::function_be8adfb8("twin_revenge");
}

/*
	Name: function_ac7d11ce
	Namespace: namespace_19d629e
	Checksum: 0x226C020B
	Offset: 0x918
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_ac7d11ce(a_ents)
{
	wait(1);
	level clientfield::set("w_twin_igc_fxanim", 1);
	wait(1);
	level clientfield::set("w_twin_igc_fxanim", 2);
}

/*
	Name: function_867a9765
	Namespace: namespace_19d629e
	Checksum: 0x35D7F110
	Offset: 0x980
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_867a9765(a_ents)
{
	wait(1);
	level clientfield::set("w_twin_igc_fxanim", 3);
}

/*
	Name: set_exposure_bank
	Namespace: namespace_19d629e
	Checksum: 0x2E73E3BD
	Offset: 0x9C0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function set_exposure_bank(a_ents, b_set)
{
	level clientfield::set("set_exposure_bank", b_set);
}


#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_sound;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_9ac99a6e;

/*
	Name: main
	Namespace: namespace_9ac99a6e
	Checksum: 0xC6F15873
	Offset: 0x730
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function main()
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	init_client_field_callback_funcs();
	setup_scenes();
}

/*
	Name: init_client_field_callback_funcs
	Namespace: namespace_9ac99a6e
	Checksum: 0x8EFA7230
	Offset: 0x780
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function init_client_field_callback_funcs()
{
	clientfield::register("world", "sgen_test_chamber_pod_graphics", 1, 1, "int");
	clientfield::register("world", "sgen_test_chamber_time_lapse", 1, 1, "int");
	clientfield::register("scriptmover", "sgen_test_guys_decay", 1, 1, "int");
	clientfield::register("world", "fxanim_hive_cluster_break", 1, 1, "int");
	clientfield::register("world", "fxanim_time_lapse_objects", 1, 1, "int");
}

/*
	Name: setup_scenes
	Namespace: namespace_9ac99a6e
	Checksum: 0x88401077
	Offset: 0x880
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function setup_scenes()
{
	scene::add_scene_func("cin_inf_04_humanlabdeath_3rd_sh090", &function_fd16dd41, "play");
	scene::add_scene_func("cin_inf_04_humanlabdeath_3rd_sh140", &function_ee093b22, "done");
	scene::add_scene_func("cin_inf_05_taylorinfected_3rd_sh010", &function_6b291c0d, "play");
	scene::add_scene_func("cin_inf_05_taylorinfected_3rd_sh080", &function_6089d98, "done");
	scene::add_scene_func("cin_inf_04_02_sarah_vign_01", &function_11c1cade, "play");
	scene::add_scene_func("cin_inf_04_humanlabdeath_3rd_sh140", &function_eabb935c, "play");
	scene::add_scene_func("cin_inf_04_humanlabdeath_3rd_sh150", &function_c43d862, "play");
}

/*
	Name: function_c467cbf
	Namespace: namespace_9ac99a6e
	Checksum: 0x80A263A
	Offset: 0x9E0
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_c467cbf()
{
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("damage_heavy");
	}
}

/*
	Name: function_ee093b22
	Namespace: namespace_9ac99a6e
	Checksum: 0xC2DEFD5D
	Offset: 0xA80
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_ee093b22(a_ent)
{
	level notify("hash_b4468c2e");
}

/*
	Name: function_eabb935c
	Namespace: namespace_9ac99a6e
	Checksum: 0x6E8EA94C
	Offset: 0xAA8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_eabb935c(a_ent)
{
	level util::function_d8eaed3d(6);
}

/*
	Name: function_c43d862
	Namespace: namespace_9ac99a6e
	Checksum: 0xBD654854
	Offset: 0xAD8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_c43d862(a_ent)
{
	level waittill("hash_ee361e18");
	if(isdefined(a_ent["wire"]))
	{
		e_wire = a_ent["wire"];
		e_wire SetModel("p7_sgen_dni_testing_pod_wires_01_off");
	}
}

/*
	Name: function_fd16dd41
	Namespace: namespace_9ac99a6e
	Checksum: 0x62AC1071
	Offset: 0xB48
	Size: 0x151
	Parameters: 1
	Flags: None
*/
function function_fd16dd41(a_ent)
{
	var_a9aa9f1c = GetEntArray("inf_test_chamber_flashlight", "script_noteworthy");
	if(isdefined(a_ent["flashlight"]))
	{
		e_origin = a_ent["flashlight"] GetTagOrigin("tag_origin");
		foreach(var_e0a1e3dd in var_a9aa9f1c)
		{
			var_e0a1e3dd.origin = a_ent["flashlight"] GetTagOrigin("tag_light_position");
			var_e0a1e3dd LinkTo(a_ent["flashlight"], "tag_origin");
		}
	}
}

/*
	Name: function_a29f7cbd
	Namespace: namespace_9ac99a6e
	Checksum: 0x467BD71
	Offset: 0xCA8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_a29f7cbd()
{
	level scene::init("cin_inf_04_humanlabdeath_3rd_sh010");
	level util::function_d8eaed3d(9);
}

/*
	Name: function_c568c95b
	Namespace: namespace_9ac99a6e
	Checksum: 0x6C06B18F
	Offset: 0xCF0
	Size: 0x30B
	Parameters: 2
	Flags: None
*/
function function_c568c95b(str_objective, var_74cd64bc)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	level clientfield::set("sgen_test_chamber_pod_graphics", 1);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
		function_a29f7cbd();
		level util::streamer_wait();
		load::function_a2995f22();
	}
	level thread namespace_eccdd5d1::function_6ef2bfc6();
	level thread util::delay("start_fade", undefined, &util::screen_fade_in, 2, "white");
	level thread util::delay("fx_explosion", undefined, &function_c467cbf);
	level thread util::delay("fx_explosion", undefined, &clientfield::set, "fxanim_hive_cluster_break", 0);
	level clientfield::set("fxanim_hive_cluster_break", 1);
	Array::thread_all(level.players, &clientfield::increment_to_player, "stop_post_fx", 1);
	level thread function_7711faaf();
	if(isdefined(level.BZM_INFECTIONDialogue4Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue4Callback]]();
	}
	level scene::add_scene_func("cin_inf_04_humanlabdeath_3rd_sh010", &function_e3124fd9, "skip_completed");
	level scene::add_scene_func("cin_inf_04_humanlabdeath_3rd_sh020", &function_e3124fd9, "skip_completed");
	level scene::add_scene_func("cin_inf_04_humanlabdeath_3rd_sh030", &function_e3124fd9, "skip_completed");
	level scene::add_scene_func("cin_inf_04_humanlabdeath_3rd_sh040", &function_e3124fd9, "skip_completed");
	level thread scene::Play("cin_inf_04_humanlabdeath_3rd_sh010");
	level waittill("hash_b4468c2e");
	skipto::function_be8adfb8("sgen_test_chamber");
}

/*
	Name: function_e3124fd9
	Namespace: namespace_9ac99a6e
	Checksum: 0x33735771
	Offset: 0x1008
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_e3124fd9(a_ents)
{
	util::screen_fade_out(0);
	level util::player_lock_control();
	level util::streamer_wait();
	util::screen_fade_in(0);
	level util::player_unlock_control();
}

/*
	Name: function_7711faaf
	Namespace: namespace_9ac99a6e
	Checksum: 0x648BAC69
	Offset: 0x1098
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_7711faaf()
{
	function_acdfe1fe("cp_infection_env_dnimainmonitor", 1);
	level waittill("hash_ba03959f");
	function_4a0fb95e("cp_infection_env_dnimainmonitor");
	function_acdfe1fe("cp_infection_env_timelapse_fail", 1);
}

/*
	Name: function_7985eb71
	Namespace: namespace_9ac99a6e
	Checksum: 0xCEDEEC44
	Offset: 0x1110
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_7985eb71(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
}

/*
	Name: function_21e8c919
	Namespace: namespace_9ac99a6e
	Checksum: 0x40969D9F
	Offset: 0x1160
	Size: 0x143
	Parameters: 2
	Flags: None
*/
function function_21e8c919(str_objective, var_74cd64bc)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	if(!var_74cd64bc)
	{
		function_4a0fb95e("cp_infection_env_timelapse_fail");
	}
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level util::function_d8eaed3d(9);
		Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
		load::function_a2995f22();
	}
	function_acdfe1fe("cp_infection_env_raventimelapse_ravens", 1);
	level thread function_b99b8b97();
	level thread function_27249631();
	level waittill("hash_d469a3e9");
	level thread util::clear_streamer_hint();
	skipto::function_be8adfb8("time_lapse");
}

/*
	Name: function_b99b8b97
	Namespace: namespace_9ac99a6e
	Checksum: 0xC5D161F
	Offset: 0x12B0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_b99b8b97()
{
	scene::add_scene_func("cin_inf_04_humanlabdeath_3rd_sh150", &function_888bbd49, "play");
	scene::add_scene_func("cin_inf_04_humanlabdeath_3rd_sh150", &function_d469a3e9, "done");
	level thread scene::Play("cin_inf_04_humanlabdeath_3rd_sh150");
	level waittill("hash_c6e56c65");
	wait(1);
	clientfield::set("sgen_test_chamber_time_lapse", 1);
}

/*
	Name: function_888bbd49
	Namespace: namespace_9ac99a6e
	Checksum: 0x7F6003F4
	Offset: 0x1370
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_888bbd49(a_ents)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	level thread function_a2b1036();
	var_bc282e3d = a_ents["decayedman"];
	var_bc282e3d thread function_ccc1a59f();
	level waittill("hash_5e798509");
	util::screen_fade_out(0, "white");
}

/*
	Name: function_ccc1a59f
	Namespace: namespace_9ac99a6e
	Checksum: 0x60D6E322
	Offset: 0x1418
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_ccc1a59f()
{
	level endon("hash_d469a3e9");
	self waittill("hash_21b0eee7");
	level notify("hash_c6e56c65");
	wait(1);
	self SetModel("c_spc_decayman_stage1_tout_fb");
	self clientfield::set("sgen_test_guys_decay", 1);
	wait(1);
	self SetModel("c_spc_decayman_stage2_tin_fb");
	wait(1);
	self SetModel("c_spc_decayman_stage2_fb");
	wait(1);
	self SetModel("c_spc_decayman_stage2_tout_fb");
	wait(1);
	self SetModel("c_spc_decayman_stage3_tin_fb");
	wait(1);
	self SetModel("c_spc_decayman_stage3_fb");
	wait(1.5);
	self SetModel("c_spc_decayman_stage4_fb");
}

/*
	Name: function_d469a3e9
	Namespace: namespace_9ac99a6e
	Checksum: 0x524A45B8
	Offset: 0x1588
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_d469a3e9(a_ents)
{
	level notify("hash_d469a3e9");
	level thread util::clear_streamer_hint();
}

/*
	Name: function_27249631
	Namespace: namespace_9ac99a6e
	Checksum: 0x566AF97B
	Offset: 0x15C0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_27249631()
{
	level thread clientfield::set("fxanim_time_lapse_objects", 1);
}

/*
	Name: function_f7f4cbd3
	Namespace: namespace_9ac99a6e
	Checksum: 0xAC2137D9
	Offset: 0x15F0
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_f7f4cbd3(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	function_4a0fb95e("cp_infection_env_raventimelapse_ravens");
}

/*
	Name: function_a2b1036
	Namespace: namespace_9ac99a6e
	Checksum: 0xF82F6BB1
	Offset: 0x1658
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a2b1036()
{
	level scene::init("cin_inf_04_02_sarah_vign_01");
}

/*
	Name: function_621e0975
	Namespace: namespace_9ac99a6e
	Checksum: 0x6672DC28
	Offset: 0x1688
	Size: 0x22B
	Parameters: 2
	Flags: None
*/
function function_621e0975(str_objective, var_74cd64bc)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	level util::function_d8eaed3d(3);
	function_acdfe1fe("cp_infection_env_timelapse_fail", 1);
	if(var_74cd64bc)
	{
		util::screen_fade_out(0, "white");
		Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
	}
	level thread util::screen_fade_in(1.5, "white");
	if(isdefined(level.BZM_INFECTIONDialogue21Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue21Callback]]();
	}
	level scene::Play("cin_inf_04_02_sarah_vign_01");
	if(isdefined(level.BZM_INFECTIONDialogue5Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue5Callback]]();
	}
	level thread namespace_eccdd5d1::function_e0a3aca4();
	level thread scene::Play("cin_inf_05_taylorinfected_3rd_sh010");
	level waittill("hash_90395238");
	if(scene::is_skipping_in_progress())
	{
		util::screen_fade_out(0, "black", "end_level_fade");
	}
	else
	{
		util::screen_fade_out(1, "black", "end_level_fade");
		level clientfield::set("sndIGCsnapshot", 4);
	}
	level thread util::clear_streamer_hint();
	skipto::function_be8adfb8("cyber_soliders_invest");
}

/*
	Name: function_790aa7af
	Namespace: namespace_9ac99a6e
	Checksum: 0x129B07D4
	Offset: 0x18C0
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_790aa7af(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	function_4a0fb95e("cp_infection_env_timelapse_fail");
}

/*
	Name: function_11c1cade
	Namespace: namespace_9ac99a6e
	Checksum: 0x334B82C8
	Offset: 0x1928
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_11c1cade(a_ent)
{
	level scene::init("cin_inf_05_taylorinfected_3rd_sh010");
	level waittill("hash_849f7f99");
	if(!scene::is_skipping_in_progress())
	{
		util::screen_fade_out(1, "white");
	}
}

/*
	Name: function_6b291c0d
	Namespace: namespace_9ac99a6e
	Checksum: 0x30243166
	Offset: 0x19A0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_6b291c0d(a_ent)
{
	if(!scene::is_skipping_in_progress())
	{
		level clientfield::set("set_exposure_bank", 3);
		level waittill("hash_60ced02");
		level thread util::screen_fade_in(1.5, "white");
	}
}

/*
	Name: function_6089d98
	Namespace: namespace_9ac99a6e
	Checksum: 0xC5D7B982
	Offset: 0x1A18
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_6089d98(a_ent)
{
	if(!scene::is_skipping_in_progress())
	{
		level clientfield::set("set_exposure_bank", 1);
	}
}


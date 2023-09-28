#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection_village;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_47ecfa2f;

/*
	Name: CleanUp
	Namespace: namespace_47ecfa2f
	Checksum: 0xCB950BD1
	Offset: 0x868
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function CleanUp(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: main
	Namespace: namespace_47ecfa2f
	Checksum: 0xED352D8E
	Offset: 0x898
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function main()
{
	init_clientfields();
	setup_scenes();
}

/*
	Name: function_d7cb3668
	Namespace: namespace_47ecfa2f
	Checksum: 0x69764644
	Offset: 0x8C8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d7cb3668()
{
	level scene::init("cin_inf_07_04_sarah_vign_03");
	level scene::init("cin_inf_08_blackstation_3rd_sh010");
}

/*
	Name: function_fbe0ab05
	Namespace: namespace_47ecfa2f
	Checksum: 0xF728BEAA
	Offset: 0x918
	Size: 0x183
	Parameters: 2
	Flags: None
*/
function function_fbe0ab05(str_objective, var_74cd64bc)
{
	objectives::complete("cp_level_infection_cross_chasm");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread scene::init("cin_inf_07_04_sarah_vign_03");
		level thread scene::init("cin_inf_08_blackstation_3rd_sh010");
		load::function_a2995f22();
	}
	level clientfield::set("black_station_ceiling_fxanim", 1);
	function_95f80417();
	level thread namespace_bed101ee::function_973b77f9();
	Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
	function_a8cc5d8b();
	level thread function_7c2393b7();
	wait(4);
	Array::thread_all(level.players, &namespace_36cbf523::function_e905c73c);
	function_b269e5f1();
	level thread skipto::function_be8adfb8(str_objective);
}

/*
	Name: init_clientfields
	Namespace: namespace_47ecfa2f
	Checksum: 0xF1430B36
	Offset: 0xAA8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("world", "black_station_ceiling_fxanim", 1, 2, "int");
	clientfield::register("world", "igc_blackscreen_fade_in", 1, 1, "counter");
	clientfield::register("world", "igc_blackscreen_fade_in_immediate", 1, 1, "counter");
	clientfield::register("world", "igc_blackscreen_fade_out_immediate", 1, 1, "counter");
	clientfield::register("toplayer", "japanese_graphic_content_hide", 1, 1, "int");
}

/*
	Name: setup_scenes
	Namespace: namespace_47ecfa2f
	Checksum: 0x686A8DDA
	Offset: 0xBA8
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function setup_scenes()
{
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh010", &function_70177a8f, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh020", &function_4ab8e4b4, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh030", &function_5251f741, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh040", &function_96207ff6, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh050", &function_d3ac4bc3, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh060", &function_f3d43a48, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh070", &function_fc3ad105, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh080", &function_8b88528a, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh090", &function_af410d87, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh090", &function_a11ffce1, "done");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh100", &function_bfb1dfd1, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh100", &function_2aa72adb, "done");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh110", &function_96221944, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh110", &function_b1fccc96, "play");
	scene::add_scene_func("cin_inf_08_blackstation_3rd_sh110", &function_86c218d2, "done");
	scene::add_scene_func("cin_inf_08_03_blackstation_vign_aftermath", &function_46acf97b, "init");
	scene::add_scene_func("cin_inf_08_03_blackstation_vign_aftermath", &function_65ce0def, "play");
	scene::add_scene_func("cin_inf_08_03_blackstation_vign_aftermath", &function_faca1b91, "done");
}

/*
	Name: function_95f80417
	Namespace: namespace_47ecfa2f
	Checksum: 0x5B40A8A6
	Offset: 0xF18
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_95f80417(str_objective)
{
	if(isdefined(level.BZM_INFECTIONDialogue9Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue9Callback]]();
	}
	util::delay(0.5, undefined, &function_cd24b21);
	level thread namespace_bed101ee::function_973b77f9();
	scene::add_scene_func("cin_inf_07_04_sarah_vign_03", &function_e53568f3, "play");
	level thread scene::Play("cin_inf_07_04_sarah_vign_03");
	level waittill("hash_e4b0eeea");
	util::screen_fade_out(0, "black");
	level thread util::screen_fade_in(1, "black");
}

/*
	Name: function_e53568f3
	Namespace: namespace_47ecfa2f
	Checksum: 0xBB39FA84
	Offset: 0x1028
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_e53568f3(a_ents)
{
	level thread util::screen_fade_in(1, "black");
}

/*
	Name: function_cd24b21
	Namespace: namespace_47ecfa2f
	Checksum: 0x126DBF3E
	Offset: 0x1060
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_cd24b21()
{
	level thread util::clear_streamer_hint();
	var_7d116593 = struct::get("tag_align_infection_blackstation", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.origin);
}

/*
	Name: function_a8cc5d8b
	Namespace: namespace_47ecfa2f
	Checksum: 0x7900E722
	Offset: 0x10D0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_a8cc5d8b()
{
	if(isdefined(level.BZM_INFECTIONDialogue10Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue10Callback]]();
	}
	level thread namespace_bed101ee::function_c4d41b74();
	level thread function_ddffcdbe();
	level thread scene::Play("cin_inf_08_blackstation_3rd_sh010");
	level waittill("hash_90d6ffa3");
	skipto::teleport_players("black_station");
	level thread scene::Play("cin_inf_08_03_blackstation_vign_aftermath");
	Array::thread_all(level.players, &clientfield::set_to_player, "japanese_graphic_content_hide", 0);
	level thread scene::init("cin_inf_10_01_foy_aie_reversemortar");
	level thread scene::init("cin_inf_10_02_foy_aie_reversewallexplosion_suppressor");
	level waittill("hash_e6a81b1c");
	level thread namespace_bed101ee::function_973b77f9();
}

/*
	Name: function_ddffcdbe
	Namespace: namespace_47ecfa2f
	Checksum: 0xF67717CB
	Offset: 0x1220
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_ddffcdbe()
{
	level endon("hash_90d6ffa3");
	while(1)
	{
		level waittill("hash_b95052ad");
		Array::thread_all(level.players, &clientfield::set_to_player, "japanese_graphic_content_hide", 1);
		level waittill("hash_aefb6286");
		Array::thread_all(level.players, &clientfield::set_to_player, "japanese_graphic_content_hide", 0);
	}
}

/*
	Name: function_7c2393b7
	Namespace: namespace_47ecfa2f
	Checksum: 0xF413C780
	Offset: 0x12C8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_7c2393b7()
{
	level clientfield::set("black_station_ceiling_fxanim", 2);
	wait(0.8);
	exploder::exploder("lgt_bstation_probe_ceiling_change");
}

/*
	Name: function_8b29fc51
	Namespace: namespace_47ecfa2f
	Checksum: 0x6874A92E
	Offset: 0x1318
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_8b29fc51(a_ents)
{
	level scene::add_player_linked_scene("p7_fxanim_cp_infection_reverse_house_01_bundle");
}

/*
	Name: function_bc8265b7
	Namespace: namespace_47ecfa2f
	Checksum: 0x792D89E2
	Offset: 0x1350
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_bc8265b7(a_ents)
{
	level thread util::clear_streamer_hint();
	level thread village::function_1bf08d19();
	var_7d116593 = struct::get("s_foy_lighting_hint", "targetname");
	level thread namespace_36cbf523::function_7aca917c(var_7d116593.origin);
}

/*
	Name: function_b269e5f1
	Namespace: namespace_47ecfa2f
	Checksum: 0xE05216D7
	Offset: 0x13E8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b269e5f1()
{
	level scene::add_scene_func("cin_inf_09_01_flippingworld_1st_risefal", &function_bc8265b7, "play");
	level scene::add_scene_func("cin_inf_09_01_flippingworld_1st_risefal", &function_8b29fc51, "done");
	level scene::Play("cin_inf_09_01_flippingworld_1st_risefal");
}

/*
	Name: function_46acf97b
	Namespace: namespace_47ecfa2f
	Checksum: 0x86DC9FC5
	Offset: 0x1478
	Size: 0x139
	Parameters: 1
	Flags: None
*/
function function_46acf97b(a_ents)
{
	level.var_9db198cc = a_ents;
	foreach(ent in a_ents)
	{
		if(isdefined(ent.targetname))
		{
			if(ent.targetname != "sarah" && ent.targetname != "taylor" && ent.targetname != "diaz" && ent.targetname != "maretti")
			{
				ent ghost();
			}
			continue;
		}
		ent ghost();
	}
}

/*
	Name: function_b1fccc96
	Namespace: namespace_47ecfa2f
	Checksum: 0xF3404643
	Offset: 0x15C0
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_b1fccc96(a_ents)
{
	if(isdefined(level.var_9db198cc))
	{
		foreach(ent in level.var_9db198cc)
		{
			ent show();
		}
	}
}

/*
	Name: function_65ce0def
	Namespace: namespace_47ecfa2f
	Checksum: 0xE850AD8E
	Offset: 0x1670
	Size: 0x109
	Parameters: 1
	Flags: None
*/
function function_65ce0def(a_ents)
{
	a_ents["sarah"] ai::set_ignoreall(1);
	a_ents["taylor"] ai::set_ignoreall(1);
	a_ents["maretti"] ai::set_ignoreall(1);
	foreach(ent in a_ents)
	{
		ent show();
	}
}

/*
	Name: function_faca1b91
	Namespace: namespace_47ecfa2f
	Checksum: 0x8A0E7046
	Offset: 0x1788
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_faca1b91(a_ents)
{
	level flag::wait_till("black_station_completed");
	foreach(ent in a_ents)
	{
		if(isdefined(ent))
		{
			ent delete();
		}
	}
}

/*
	Name: function_23ab5175
	Namespace: namespace_47ecfa2f
	Checksum: 0x6FA165BA
	Offset: 0x1850
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_23ab5175(a_ents)
{
	level dialog::remote("hall_the_said_they_needed_0", 0);
	level dialog::remote("hall_we_were_marked_for_t_0", 0);
	level dialog::remote("hall_but_by_the_time_w_0", 0);
	level dialog::remote("hall_we_knew_they_d_send_0", 1);
	level dialog::function_13b3b16a("plyr_that_wasn_t_what_hap_0", 0);
	level dialog::function_13b3b16a("plyr_we_saw_the_footage_f_0", 0);
	level dialog::function_13b3b16a("plyr_you_denied_them_thei_0", 1);
	level dialog::remote("hall_oh_my_god_0", 0);
}

/*
	Name: function_70177a8f
	Namespace: namespace_47ecfa2f
	Checksum: 0x2DBCD549
	Offset: 0x19A8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_70177a8f(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot010");
		level clientfield::increment("igc_blackscreen_fade_in", 1);
		level waittill("hash_93a66687");
		level clientfield::increment("igc_blackscreen_fade_out_immediate", 1);
		exploder::exploder_stop("inf_bs_shot010");
	}
}

/*
	Name: function_4ab8e4b4
	Namespace: namespace_47ecfa2f
	Checksum: 0x417FCB25
	Offset: 0x1A50
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_4ab8e4b4(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot020");
		level clientfield::increment("igc_blackscreen_fade_in", 1);
		level waittill("hash_93a66687");
		level clientfield::increment("igc_blackscreen_fade_out_immediate", 1);
		exploder::exploder_stop("inf_bs_shot020");
	}
}

/*
	Name: function_5251f741
	Namespace: namespace_47ecfa2f
	Checksum: 0x75F2654A
	Offset: 0x1AF8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_5251f741(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot030");
		level clientfield::increment("igc_blackscreen_fade_in", 1);
		level waittill("hash_93a66687");
		level clientfield::increment("igc_blackscreen_fade_out_immediate", 1);
		exploder::exploder_stop("inf_bs_shot030");
	}
}

/*
	Name: function_96207ff6
	Namespace: namespace_47ecfa2f
	Checksum: 0x861AD500
	Offset: 0x1BA0
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_96207ff6(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot040");
		level clientfield::increment("igc_blackscreen_fade_in", 1);
		level waittill("hash_93a66687");
		level clientfield::increment("igc_blackscreen_fade_out_immediate", 1);
		exploder::exploder_stop("inf_bs_shot040");
	}
}

/*
	Name: function_d3ac4bc3
	Namespace: namespace_47ecfa2f
	Checksum: 0xC33A335D
	Offset: 0x1C48
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_d3ac4bc3(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot050");
		level clientfield::increment("igc_blackscreen_fade_in", 1);
		level waittill("hash_93a66687");
		level clientfield::increment("igc_blackscreen_fade_out_immediate", 1);
		exploder::exploder_stop("inf_bs_shot050");
	}
}

/*
	Name: function_f3d43a48
	Namespace: namespace_47ecfa2f
	Checksum: 0xAE9B74BA
	Offset: 0x1CF0
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_f3d43a48(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot060");
		level clientfield::increment("igc_blackscreen_fade_in", 1);
		level waittill("hash_93a66687");
		level clientfield::increment("igc_blackscreen_fade_out_immediate", 1);
		exploder::exploder_stop("inf_bs_shot060");
	}
}

/*
	Name: function_fc3ad105
	Namespace: namespace_47ecfa2f
	Checksum: 0x27D47C8F
	Offset: 0x1D98
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_fc3ad105(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot070");
		level clientfield::increment("igc_blackscreen_fade_in", 1);
		level waittill("hash_93a66687");
		level clientfield::increment("igc_blackscreen_fade_out_immediate", 1);
		exploder::exploder_stop("inf_bs_shot070");
	}
}

/*
	Name: function_8b88528a
	Namespace: namespace_47ecfa2f
	Checksum: 0xC9D76C4E
	Offset: 0x1E40
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_8b88528a(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot080");
		level clientfield::increment("igc_blackscreen_fade_in", 1);
		level waittill("hash_93a66687");
		level clientfield::increment("igc_blackscreen_fade_out_immediate", 1);
		exploder::exploder_stop("inf_bs_shot080");
	}
}

/*
	Name: function_af410d87
	Namespace: namespace_47ecfa2f
	Checksum: 0xDB40403D
	Offset: 0x1EE8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_af410d87(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot090");
		level clientfield::increment("igc_blackscreen_fade_in_immediate", 1);
	}
	level scene::init("cin_inf_08_03_blackstation_vign_aftermath");
}

/*
	Name: function_a11ffce1
	Namespace: namespace_47ecfa2f
	Checksum: 0x9CC895A2
	Offset: 0x1F68
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_a11ffce1(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder_stop("inf_bs_shot090");
	}
}

/*
	Name: function_bfb1dfd1
	Namespace: namespace_47ecfa2f
	Checksum: 0x392DEF38
	Offset: 0x1FA8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_bfb1dfd1(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot100");
	}
}

/*
	Name: function_2aa72adb
	Namespace: namespace_47ecfa2f
	Checksum: 0x5DFE785
	Offset: 0x1FE8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_2aa72adb(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder_stop("inf_bs_shot100");
	}
}

/*
	Name: function_96221944
	Namespace: namespace_47ecfa2f
	Checksum: 0xBAF48F41
	Offset: 0x2028
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_96221944(a_ents)
{
	level util::function_d8eaed3d(2);
	if(!scene::is_skipping_in_progress())
	{
		exploder::exploder("inf_bs_shot110");
		level clientfield::increment("igc_blackscreen_fade_in_immediate", 1);
		level waittill("hash_93a66687");
		level clientfield::increment("igc_blackscreen_fade_out_immediate", 1);
		exploder::exploder_stop("inf_bs_shot110");
	}
	exploder::exploder("lgt_bstation_probe_igc_to_gameplay");
}

/*
	Name: function_86c218d2
	Namespace: namespace_47ecfa2f
	Checksum: 0xD160EC68
	Offset: 0x2100
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_86c218d2(a_ents)
{
	level clientfield::increment("igc_blackscreen_fade_in_immediate", 1);
}


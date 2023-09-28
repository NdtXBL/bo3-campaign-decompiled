#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\_vehicle_platform;
#using scripts\cp\cp_mi_cairo_lotus3_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\lotus_accolades;
#using scripts\cp\lotus_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_45eca03;

/*
	Name: function_ccc2baba
	Namespace: namespace_45eca03
	Checksum: 0xE820367B
	Offset: 0x12E0
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_ccc2baba(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		var_4b8428ba = GetEnt("p_intro_glass_window", "targetname");
		var_4b8428ba delete();
		level scene::init("cin_lot_11_tower2ascent_3rd_sh060_halfway");
	}
	level function_fc9a646b("hide");
	level thread function_66b6b1c7();
	level.var_1df069b5 = 0;
	level.var_2e49e915 = 0;
	function_428ff2f();
	function_750a4f4c();
	level scene::add_scene_func("cin_lot_15_taylorintro_3rd_sh050", &function_1d2443e2, "done");
	level scene::add_scene_func("cin_lot_11_tower2ascent_3rd_sh120", &function_a7f02ddb, "done");
	if(var_74cd64bc)
	{
		load::function_a2995f22();
		if(isdefined(level.BZM_LOTUSDialogue7_1Callback))
		{
			level thread [[level.BZM_LOTUSDialogue7_1Callback]]();
		}
		level scene::Play("cin_lot_11_tower2ascent_3rd_sh060_halfway");
	}
	level waittill("hash_a7f02ddb");
	if(isdefined(level.BZM_LOTUSDialogue8Callback))
	{
		level thread [[level.BZM_LOTUSDialogue8Callback]]();
	}
	level waittill("hash_59f31b4d");
	level thread function_c40186f4();
	level waittill("hash_41bb6835");
	level util::function_93831e79("boss_battle");
	skipto::function_be8adfb8("prometheus_intro");
}

/*
	Name: function_750a4f4c
	Namespace: namespace_45eca03
	Checksum: 0x749F2FE2
	Offset: 0x1540
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_750a4f4c()
{
	var_7b183fd7 = GetEntArray("atrium01_mobile_shop", "targetname");
	foreach(var_4e29c01c in var_7b183fd7)
	{
		var_4e29c01c delete();
	}
}

/*
	Name: function_c40186f4
	Namespace: namespace_45eca03
	Checksum: 0xD1E5159E
	Offset: 0x1600
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_c40186f4()
{
	var_dc105c2b = namespace_431cac9::function_8108bdb8("shed_explosion_a", "hero_shed_piece", undefined);
	var_dc105c2b namespace_431cac9::function_aabc561a("mobile_shop_fall_explosion");
	level function_fc9a646b("show");
}

/*
	Name: function_fc9a646b
	Namespace: namespace_45eca03
	Checksum: 0x23C40955
	Offset: 0x1678
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_fc9a646b(var_158cd2ca)
{
	if(!isdefined(var_158cd2ca))
	{
		var_158cd2ca = "hide";
	}
	var_4b2f4450 = GetEntArray("area_shed_debris_1", "targetname");
	if(var_158cd2ca == "show")
	{
		foreach(piece in var_4b2f4450)
		{
			if(isdefined(piece))
			{
				piece show();
			}
		}
		break;
	}
	foreach(piece in var_4b2f4450)
	{
		if(isdefined(piece))
		{
			piece Hide();
		}
	}
}

/*
	Name: function_a7f02ddb
	Namespace: namespace_45eca03
	Checksum: 0xE888FE92
	Offset: 0x1800
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_a7f02ddb(a_ents)
{
	level notify("hash_a7f02ddb");
}

/*
	Name: function_1d2443e2
	Namespace: namespace_45eca03
	Checksum: 0xD16F10A4
	Offset: 0x1828
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_1d2443e2(a_ents)
{
	level notify("hash_41bb6835");
}

/*
	Name: function_ec70e2a1
	Namespace: namespace_45eca03
	Checksum: 0x80C56195
	Offset: 0x1850
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_ec70e2a1(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_babb1dd5
	Namespace: namespace_45eca03
	Checksum: 0x3A4B2DEB
	Offset: 0x1880
	Size: 0x783
	Parameters: 2
	Flags: None
*/
function function_babb1dd5(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		function_428ff2f();
	}
	level scene::add_scene_func("cin_lot_17_oldfriend_3rd_sh190", &function_eaf57a3, "done");
	level scene::add_scene_func("cin_lot_17_oldfriend_3rd_sh070", &function_90b04eba, "done");
	level scene::add_scene_func("cin_lot_17_oldfriend_3rd_sh080", &function_623303f2, "done");
	level scene::add_scene_func("cin_lot_17_oldfriend_3rd_sh090", &function_90b04eba, "done");
	level scene::add_scene_func("cin_lot_17_oldfriend_3rd_sh140", &function_623303f2, "done");
	level scene::add_scene_func("cin_lot_17_oldfriend_3rd_sh150", &function_90b04eba, "done");
	level scene::add_scene_func("cin_lot_17_oldfriend_3rd_sh160", &function_623303f2, "done");
	level scene::add_scene_func("cin_lot_17_oldfriend_3rd_sh220", &function_90b04eba, "done");
	scene::add_scene_func("cin_lot_17_01_oldfriend_1st_wakeup", &end_fade_out, "skip_started");
	scene::add_scene_func("cin_lot_17_01_oldfriend_1st_wakeup", &function_4d425f2a, "done");
	var_8e1ab582 = GetEntArray("of_igc_railing", "targetname");
	foreach(var_d1610bbf in var_8e1ab582)
	{
		var_d1610bbf Hide();
	}
	if(isdefined(level.var_38a4277e))
	{
		level.var_38a4277e delete();
	}
	s_scene = struct::get("gunship_down_fxanim", "targetname");
	if(var_74cd64bc)
	{
		s_scene scene::init();
		level scene::init("cin_lot_17_oldfriend_3rd_sh010");
		load::function_a2995f22();
	}
	foreach(player in level.players)
	{
		player player::switch_to_primary_weapon(1);
		player.script_ignoreme = 1;
	}
	level clientfield::set("gameplay_started", 0);
	level thread namespace_3bad5a01::function_dae48a54();
	level scene::Play("cin_lot_17_oldfriend_3rd_sh010");
	level waittill("hash_65ad50c6");
	if(isdefined(level.BZM_LOTUSDialogue9Callback))
	{
		level thread [[level.BZM_LOTUSDialogue9Callback]]();
	}
	s_scene thread scene::Play();
	var_9541c781 = GetEntArray("gunship_fall", "targetname");
	foreach(var_e9d5eee1 in var_9541c781)
	{
		var_e9d5eee1 Hide();
	}
	level waittill("hash_c2926439");
	var_182ef0f0 = GetEnt("taylor", "targetname");
	var_182ef0f0 SetModel("c_hro_taylor_base_bullet_wound");
	level waittill("hash_4868cda0");
	level thread function_5bb13a75();
	if(!scene::is_skipping_in_progress())
	{
		util::screen_fade_out(3, "black", "old_friend_hospital_transition");
	}
	level waittill("hash_e43285f9");
	if(!scene::is_skipping_in_progress())
	{
		util::screen_fade_in(3, "black", "old_friend_hospital_transition");
	}
	level thread audio::unlockFrontendMusic("mus_lotus_theme_intro");
	level thread namespace_3bad5a01::function_6be50b2c();
	if(isdefined(level.BZM_LOTUSDialogue10Callback))
	{
		level thread [[level.BZM_LOTUSDialogue10Callback]]();
	}
	level waittill("hash_4f90f275");
	var_4af4348c = GetEnt("rachel", "targetname");
	var_4af4348c Detach("c_hro_rachel_egypt_scarf");
	level waittill("hash_6adfba7a");
	if(!scene::is_skipping_in_progress())
	{
		level clientfield::set("sndIGCsnapshot", 4);
		level thread util::screen_fade_out(1, "white");
	}
	streamerRequest("clear");
	skipto::function_be8adfb8("old_friend");
}

/*
	Name: function_4d425f2a
	Namespace: namespace_45eca03
	Checksum: 0x50C94626
	Offset: 0x2010
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_4d425f2a(a_ents)
{
	skipto::function_be8adfb8("old_friend");
}

/*
	Name: end_fade_out
	Namespace: namespace_45eca03
	Checksum: 0x4ED2BDF2
	Offset: 0x2040
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function end_fade_out(a_ents)
{
	level clientfield::set("sndIGCsnapshot", 4);
	foreach(player in level.activePlayers)
	{
		player SetLowReady(1);
	}
	util::screen_fade_out(0, "black");
}

/*
	Name: function_eaf57a3
	Namespace: namespace_45eca03
	Checksum: 0x8582DEAA
	Offset: 0x2120
	Size: 0x3A3
	Parameters: 0
	Flags: None
*/
function function_eaf57a3()
{
	var_30944458 = GetEnt("cin_lot_debris_piece_01", "targetname");
	var_a29bb393 = GetEnt("cin_lot_debris_piece_02", "targetname");
	var_7c99392a = GetEnt("cin_lot_debris_piece_03", "targetname");
	var_eea0a865 = GetEnt("cin_lot_debris_piece_04", "targetname");
	var_c89e2dfc = GetEnt("cin_lot_debris_piece_05", "targetname");
	var_3aa59d37 = GetEnt("cin_lot_debris_piece_06", "targetname");
	var_14a322ce = GetEnt("cin_lot_debris_piece_07", "targetname");
	var_2682eb79 = GetEnt("cin_lot_debris_piece_08", "targetname");
	var_807110 = GetEnt("cin_lot_debris_piece_09", "targetname");
	var_d7ff5896 = GetEnt("cin_lot_debris_piece_10", "targetname");
	var_fe01d2ff = GetEnt("cin_lot_debris_piece_11", "targetname");
	var_8bfa63c4 = GetEnt("cin_lot_debris_piece_12", "targetname");
	var_b1fcde2d = GetEnt("cin_lot_debris_piece_13", "targetname");
	var_30944458 delete();
	var_a29bb393 delete();
	var_7c99392a delete();
	var_eea0a865 delete();
	var_c89e2dfc delete();
	var_3aa59d37 delete();
	var_14a322ce delete();
	var_2682eb79 delete();
	var_807110 delete();
	var_d7ff5896 delete();
	var_fe01d2ff delete();
	var_8bfa63c4 delete();
	var_b1fcde2d delete();
}

/*
	Name: function_d9f5f2cf
	Namespace: namespace_45eca03
	Checksum: 0x4113CA4
	Offset: 0x24D0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_d9f5f2cf()
{
	self vehicle::toggle_sounds(0);
	self vehicle::toggle_exhaust_fx(0);
	self turret::disable(0);
	self vehicle::toggle_lights_group(1, 0);
	self vehicle::toggle_lights_group(2, 0);
	self clientfield::set("gunship_rumble_off", 1);
}

/*
	Name: function_90b04eba
	Namespace: namespace_45eca03
	Checksum: 0x4628D6C7
	Offset: 0x2578
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_90b04eba(a_ents)
{
	a_ents["mothership"] ghost();
}

/*
	Name: function_623303f2
	Namespace: namespace_45eca03
	Checksum: 0x96C3DBC
	Offset: 0x25B0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_623303f2(a_ents)
{
	a_ents["mothership"] show();
}

/*
	Name: function_5b067572
	Namespace: namespace_45eca03
	Checksum: 0x9675EF99
	Offset: 0x25E8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_5b067572(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_5bb13a75
	Namespace: namespace_45eca03
	Checksum: 0x7C2C24FA
	Offset: 0x2618
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_5bb13a75()
{
	wait(3);
	var_f9749701 = spawn("script_origin", (0, 0, 0));
	var_f9749701 PlayLoopSound("amb_heart_monitor_2d", 1);
}

/*
	Name: function_faf62cf1
	Namespace: namespace_45eca03
	Checksum: 0x7170A6A
	Offset: 0x2678
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_faf62cf1(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		function_428ff2f();
		level thread function_c40186f4();
		level thread function_66b6b1c7();
	}
	else if(isalive(level.var_2fd26037))
	{
		level.var_2fd26037 delete();
	}
	skipto::teleport(str_objective);
	s_scene = struct::get("gunship_down_fxanim", "targetname");
	s_scene scene::init();
	objectives::complete("cp_level_lotus_capture_taylor");
	objectives::set("cp_level_lotus_leviathan");
	namespace_f4ff722a::function_a2c4c634();
	function_335a1753();
	function_f5bbb458();
	var_15025f5b = "ms_r4";
	level thread function_ad67b293(var_15025f5b);
	if(var_74cd64bc)
	{
		load::function_a2995f22();
	}
	level.var_38a4277e = spawner::simple_spawn_single("gunship");
	level.var_38a4277e thread function_82e92a08();
	level notify("hash_a450f864");
	exploder::exploder("fx_boss_battle_ambients");
	level thread start_vo();
	level waittill("hash_4c66c579");
	level thread namespace_3bad5a01::function_973b77f9();
	wait(2);
	skipto::function_be8adfb8("boss_battle");
}

/*
	Name: start_vo
	Namespace: namespace_45eca03
	Checksum: 0x285A7462
	Offset: 0x28E0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function start_vo()
{
	level thread namespace_3bad5a01::function_d6e5b30();
	wait(0.5);
	level flag::set("ready_to_move_first_armory_vo");
	level dialog::remote("kane_leviathans_are_heavy_0");
	level dialog::remote("kane_mobile_armories_on_t_0");
	objectives::set("cp_level_lotus_leviathan_destroy");
	level flag::set("story_vo_completed");
	wait(5);
	level thread function_eb80777c();
}

/*
	Name: function_309d7a5a
	Namespace: namespace_45eca03
	Checksum: 0x3C042FF5
	Offset: 0x29C0
	Size: 0xC9
	Parameters: 2
	Flags: None
*/
function function_309d7a5a(var_24d48af, wait_time)
{
	if(!isdefined(level.var_2e49e915))
	{
		level.var_2e49e915 = 0;
	}
	if(level flag::get("story_vo_completed") && !isdefined(level.var_1d581e7) && level.var_2e49e915 == 0)
	{
		level.var_1d581e7 = var_24d48af;
		level.var_1df069b5 = 1;
		dialog::remote(var_24d48af);
		level.var_1df069b5 = 0;
		if(!isdefined(wait_time))
		{
			wait_time = 5;
		}
		wait(wait_time);
		level.var_1d581e7 = undefined;
	}
}

/*
	Name: function_335a1753
	Namespace: namespace_45eca03
	Checksum: 0xF08D2854
	Offset: 0x2A98
	Size: 0x265
	Parameters: 0
	Flags: None
*/
function function_335a1753()
{
	level flag::init("call_next_mobile_shop");
	level flag::init("call_next_mobile_armory");
	level flag::init("gunship_in_transition");
	level flag::init("story_vo_completed");
	level flag::init("gunship_high_out_of_battle");
	level flag::set("flag_roof_battle_kill_trigger_enable");
	level.var_6c0436ff = 0;
	level flag::init("first_missile_fired_vo");
	level flag::init("first_mobile_armory_vo");
	level flag::init("ready_to_move_first_armory_vo");
	level flag::init("stop_dialog_remote");
	level.var_fadf752 = [];
	level.var_fadf752[0] = "plyr_kane_you_telling_me_0";
	level.var_fadf752[1] = "plyr_kane_you_telling_me_1";
	level.var_af475f02 = [];
	level.var_af475f02[0] = "kane_leviathan_deploying_1";
	level.var_af475f02[1] = "kane_grab_cover_incoming_0";
	level.var_af475f02[2] = "kane_missiles_incoming_0";
	level.var_ead3caed = [];
	level.var_ead3caed[0] = "kane_leviathan_deploying_0";
	level.var_ead3caed[1] = "kane_incoming_raps_0";
	level.var_ead3caed[2] = "kane_nrc_airship_deployin_0";
	level.var_4483235d = [];
	level.var_4483235d[0] = "kane_leviathan_deploying_2";
	level.var_4483235d[1] = "kane_heads_up_hounds_inc_0";
	level.var_4483235d[2] = "kane_nrc_airship_sending_0";
}

/*
	Name: function_eb80777c
	Namespace: namespace_45eca03
	Checksum: 0x8FAAF31A
	Offset: 0x2D08
	Size: 0x7B7
	Parameters: 0
	Flags: None
*/
function function_eb80777c()
{
	wait(8);
	level function_80fdeb82();
	level.var_2e49e915 = 1;
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::remote("tayr_welcome_back_2");
	}
	level.var_2e49e915 = 0;
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::function_13b3b16a("plyr_taylor_you_need_to_0");
	}
	level.var_2e49e915 = 0;
	rand_wait = 3 + RandomInt(5);
	wait(rand_wait);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::remote("tayr_do_you_know_what_s_h_1");
	}
	level.var_2e49e915 = 0;
	wait(1);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::function_13b3b16a("plyr_i_know_you_can_hear_0");
	}
	level.var_2e49e915 = 0;
	rand_wait = 3 + RandomInt(5);
	wait(rand_wait);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::remote("tayr_you_ve_got_a_long_wa_1");
	}
	level.var_2e49e915 = 0;
	wait(1);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::function_13b3b16a("plyr_what_s_happening_to_1");
	}
	level.var_2e49e915 = 0;
	rand_wait = 3 + RandomInt(5);
	wait(rand_wait);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::remote("tayr_your_dni_may_show_yo_1");
	}
	level.var_2e49e915 = 0;
	wait(1);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::function_13b3b16a("plyr_you_don_t_have_to_be_0");
	}
	level.var_2e49e915 = 0;
	rand_wait = 3 + RandomInt(5);
	wait(rand_wait);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::remote("tayr_you_were_with_sarah_0");
	}
	level.var_2e49e915 = 0;
	wait(0.5);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::function_13b3b16a("plyr_you_re_right_i_was_0");
	}
	level.var_2e49e915 = 0;
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::function_13b3b16a("plyr_i_also_know_it_wasn_0");
	}
	level.var_2e49e915 = 0;
	rand_wait = 3 + RandomInt(5);
	wait(rand_wait);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::remote("tayr_clock_s_ticking_new_1");
	}
	level.var_2e49e915 = 0;
	wait(1);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::function_13b3b16a("plyr_you_know_me_you_can_2");
	}
	level.var_2e49e915 = 0;
	rand_wait = 3 + RandomInt(5);
	wait(rand_wait);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::function_13b3b16a("plyr_it_s_not_too_late_to_2");
	}
	level.var_2e49e915 = 0;
	wait(1);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level flag::get("stop_dialog_remote"))
	{
		level dialog::remote("tayr_sometimes_you_have_1");
	}
	level.var_2e49e915 = 0;
}

/*
	Name: function_80fdeb82
	Namespace: namespace_45eca03
	Checksum: 0x560D9C6A
	Offset: 0x34C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_80fdeb82()
{
	level endon("hash_4c66c579");
	while(level.var_1df069b5 == 1)
	{
		wait(0.1);
	}
}

/*
	Name: function_66b6b1c7
	Namespace: namespace_45eca03
	Checksum: 0xD5976C58
	Offset: 0x3500
	Size: 0x229
	Parameters: 0
	Flags: None
*/
function function_66b6b1c7()
{
	var_912c35b = GetEntArray("hero_shed_piece", "targetname");
	foreach(var_f29b0bec in var_912c35b)
	{
		if(var_f29b0bec.script_fxid != "shed_explosion_a")
		{
			var_f29b0bec thread namespace_431cac9::function_cdf9cde7("mobile_shop_fall_explosion");
		}
	}
	var_912c35b = GetEntArray("roof_shed_piece_l", "targetname");
	foreach(var_f29b0bec in var_912c35b)
	{
		var_f29b0bec thread namespace_431cac9::function_cdf9cde7("mobile_shop_fall_explosion");
	}
	var_912c35b = GetEntArray("roof_shed_piece_r", "targetname");
	foreach(var_f29b0bec in var_912c35b)
	{
		var_f29b0bec thread namespace_431cac9::function_cdf9cde7("mobile_shop_fall_explosion");
	}
}

/*
	Name: function_849fa351
	Namespace: namespace_45eca03
	Checksum: 0x652DAA12
	Offset: 0x3738
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_849fa351()
{
	player_hunters = GetEntArray("boss_player_hunter", "targetname");
}

/*
	Name: function_f5bbb458
	Namespace: namespace_45eca03
	Checksum: 0x9548706C
	Offset: 0x3770
	Size: 0x291
	Parameters: 0
	Flags: None
*/
function function_f5bbb458()
{
	level.var_217caec4 = [];
	function_87c0d86f("ms_l1", 0);
	function_87c0d86f("ms_l2", 1);
	function_87c0d86f("ms_l3", 5);
	function_87c0d86f("ms_l4", 3);
	function_87c0d86f("ms_r1", 3);
	function_87c0d86f("ms_r2", 2);
	function_87c0d86f("ms_r3", 4);
	function_87c0d86f("ms_r4", 0);
	level.var_b774ab1 = [];
	level.var_7f35354d = [];
	function_a1307751("ms_l1");
	function_a1307751("ms_l2");
	function_a1307751("ms_l3");
	function_a1307751("ms_l4");
	function_a1307751("ms_r1");
	function_a1307751("ms_r2");
	function_a1307751("ms_r3");
	function_a1307751("ms_r4");
	var_c92cac0f = GetEntArray("raps_slow", "targetname");
	foreach(var_91fc4ce in var_c92cac0f)
	{
		var_91fc4ce TriggerEnable(0);
	}
}

/*
	Name: function_a1307751
	Namespace: namespace_45eca03
	Checksum: 0x9CD68E2C
	Offset: 0x3A10
	Size: 0x9D
	Parameters: 1
	Flags: None
*/
function function_a1307751(str_name)
{
	level.var_7f35354d[str_name] = namespace_431cac9::function_b26ca094(str_name + "_group", 1, 0, 1, undefined, 1);
	function_9b385ca5();
	var_ca404144 = var_fa0d90fd;
	init(var_ca404144, str_name);
	level.var_b774ab1[str_name] = var_ca404144;
}

/*
	Name: function_87c0d86f
	Namespace: namespace_45eca03
	Checksum: 0x92AE0BAC
	Offset: 0x3AB8
	Size: 0xE7
	Parameters: 3
	Flags: None
*/
function function_87c0d86f(str_name, var_a550bf45, str_location)
{
	level.var_217caec4[str_name] = spawnstruct();
	level.var_217caec4[str_name].var_c957ee7 = 0;
	level.var_217caec4[str_name].var_69a938b4 = 0;
	level.var_217caec4[str_name].var_a550bf45 = var_a550bf45;
	var_20eebd31 = struct::get(str_name + "_1", "targetname");
	level.var_217caec4[str_name].v_origin = var_20eebd31.origin;
}

/*
	Name: function_ad67b293
	Namespace: namespace_45eca03
	Checksum: 0x3808BDD2
	Offset: 0x3BA8
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_ad67b293(var_15025f5b)
{
	level.var_33df5678 = level.var_217caec4[var_15025f5b];
	level flag::wait_till("first_player_spawned");
	level flag::wait_till("ready_to_move_first_armory_vo");
	level thread function_396f2a6e("ms_r2", "other");
	level thread function_396f2a6e("ms_r3", "minigun");
	level thread function_396f2a6e("ms_l1", "other");
	level thread function_396f2a6e("ms_l4", "minigun");
}

/*
	Name: function_afb8707f
	Namespace: namespace_45eca03
	Checksum: 0xAF817921
	Offset: 0x3CB0
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_afb8707f()
{
	self.var_cfe2cc2c = GetEnt("gunship_first_missile_target", "targetname");
	var_1ad1e636 = GetEnt("bb_start_weapon_clip", "targetname");
	var_1ad1e636 SetCanDamage(1);
	var_1ad1e636.health = 10000;
	var_1ad1e636 endon("death");
	while(1)
	{
		var_1ad1e636 waittill("damage", n_damage, e_attacker, var_a3382de1, v_point, str_means_of_death, var_c4fe462, var_e64d69f9, var_c04aef90, w_weapon);
		if(e_attacker.vehicleType === "veh_bo3_mil_gunship_nrc" && (str_means_of_death == "MOD_PROJECTILE" || str_means_of_death == "MOD_PROJECTILE_SPLASH"))
		{
			self.var_cfe2cc2c delete();
			self.var_cfe2cc2c = undefined;
			var_1ad1e636 delete();
		}
		var_1ad1e636.health = 10000;
		wait(0.05);
	}
}

/*
	Name: function_b2b695fd
	Namespace: namespace_45eca03
	Checksum: 0xF6B7269A
	Offset: 0x3E68
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b2b695fd()
{
	level flag::wait_till("ready_to_move_first_armory_vo");
	level thread function_309d7a5a("kane_mobile_armories_on_t_0");
	level flag::set("first_mobile_armory_vo");
}

/*
	Name: function_396f2a6e
	Namespace: namespace_45eca03
	Checksum: 0x9F9145B2
	Offset: 0x3ED8
	Size: 0xB69
	Parameters: 2
	Flags: None
*/
function function_396f2a6e(str_name, var_4e8cfdc6)
{
	level.var_217caec4[str_name].str_state = "normal";
	level.var_217caec4[str_name].var_c957ee7 = 1;
	level.var_33df5678 = level.var_217caec4[str_name];
	var_959da48b = str_name + "_group";
	var_526507d5 = str_name + "_gate";
	var_7b6485f6 = GetEntArray(var_526507d5, "targetname");
	var_59dc7746 = 0;
	if(var_4e8cfdc6 == "minigun")
	{
		var_59dc7746 = 1;
	}
	var_f9a1ddd6 = level.var_7f35354d[str_name];
	if(var_4e8cfdc6 == "minigun")
	{
		foreach(var_83f53318 in var_f9a1ddd6.var_75cccf1)
		{
			var_409f4c83 = var_83f53318 namespace_431cac9::function_c7b0a169(1, 1);
			var_409f4c83 LinkTo(var_f9a1ddd6);
		}
		break;
	}
	foreach(e_weapon in var_f9a1ddd6.a_weapons)
	{
		var_1c023cce = e_weapon namespace_431cac9::function_bc5f7909(e_weapon.script_string);
		var_1c023cce LinkTo(var_f9a1ddd6);
	}
	var_158e4f91 = level.var_b774ab1[str_name];
	var_23abba9c = function_9bc3d62a();
	var_23abba9c function_5a5a8b2c();
	var_23abba9c ClearVehGoalPos();
	function_845aae7f(var_158e4f91);
	trigger::use("trig_" + str_name, "script_noteworthy");
	level waittill("vehicle_platform_" + str_name + "_stop");
	foreach(var_a43047cf in var_7b6485f6)
	{
		var_a43047cf thread function_d2dd0256(38, 0.5);
	}
	var_5f7e5fb4 = [];
	if(!isdefined(var_5f7e5fb4))
	{
		var_5f7e5fb4 = [];
	}
	else if(!IsArray(var_5f7e5fb4))
	{
		var_5f7e5fb4 = Array(var_5f7e5fb4);
	}
	var_5f7e5fb4[var_5f7e5fb4.size] = GetNode(str_name + "_in_begin", "targetname");
	if(!isdefined(var_5f7e5fb4))
	{
		var_5f7e5fb4 = [];
	}
	else if(!IsArray(var_5f7e5fb4))
	{
		var_5f7e5fb4 = Array(var_5f7e5fb4);
	}
	var_5f7e5fb4[var_5f7e5fb4.size] = GetNode(str_name + "_out_begin", "targetname");
	foreach(nd_traversal in var_5f7e5fb4)
	{
		if(isdefined(nd_traversal))
		{
			LinkTraversal(nd_traversal);
		}
	}
	var_91fc4ce = GetEnt("trig_slow_" + str_name, "script_noteworthy");
	var_91fc4ce TriggerEnable(1);
	level notify("hash_4ccf207", str_name + "_start_up", var_158e4f91);
	if(var_4e8cfdc6 == "minigun")
	{
		var_8b943ba8 = 1;
		foreach(player in level.activePlayers)
		{
			if(IsSubStr(player.currentWeapon.name, "minigun"))
			{
				var_8b943ba8 = 0;
			}
		}
		if(var_8b943ba8)
		{
			level thread function_309d7a5a("kane_get_that_minigun_fro_0");
		}
	}
	level waittill("hash_4c66c579");
	function_c4bfe365(str_name);
	foreach(var_a43047cf in var_7b6485f6)
	{
		var_a43047cf thread function_ee5df555(38, 0.5);
	}
	var_23abba9c ClearVehGoalPos();
	function_845aae7f(var_158e4f91);
	trigger::use("trig_" + str_name, "script_noteworthy");
	var_91fc4ce = GetEnt("trig_slow_" + str_name, "script_noteworthy");
	var_91fc4ce TriggerEnable(0);
	if(var_4e8cfdc6 == "minigun")
	{
		foreach(var_83f53318 in var_f9a1ddd6.var_75cccf1)
		{
			if(isdefined(var_83f53318))
			{
				if(isdefined(var_83f53318.var_409f4c83))
				{
					var_83f53318.var_409f4c83 delete();
				}
			}
		}
	}
	foreach(nd_traversal in var_5f7e5fb4)
	{
		if(isdefined(nd_traversal))
		{
			UnlinkTraversal(nd_traversal);
		}
	}
	level waittill("vehicle_platform_" + str_name + "_stop");
	if(var_4e8cfdc6 == "minigun")
	{
		foreach(var_83f53318 in var_f9a1ddd6.var_75cccf1)
		{
			if(isdefined(var_83f53318))
			{
				var_83f53318 notify("hash_28a4f84e", str_name + "_start_down");
			}
		}
	}
	foreach(var_33723053 in var_f9a1ddd6.a_destructibles)
	{
		var_33723053 show();
		var_33723053 solid();
	}
	foreach(e_weapon in var_f9a1ddd6.a_weapons)
	{
		e_weapon Hide();
	}
}

/*
	Name: function_ee5df555
	Namespace: namespace_45eca03
	Checksum: 0x90B8E5F0
	Offset: 0x4A50
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_ee5df555(Distance, move_time)
{
	self moveto(self.origin + (0, 0, Distance), move_time);
}

/*
	Name: function_d2dd0256
	Namespace: namespace_45eca03
	Checksum: 0xBBE7D296
	Offset: 0x4AA0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_d2dd0256(Distance, move_time)
{
	self moveto(self.origin - (0, 0, Distance), move_time);
}

/*
	Name: function_aa06c2d7
	Namespace: namespace_45eca03
	Checksum: 0xEDC967C0
	Offset: 0x4AF0
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_aa06c2d7()
{
	var_d264ae0a = Array("none", "none", "minigun");
	var_3c3fc8a8 = GetWeapon("minigun_lotus");
	var_7098dcba = 0;
	foreach(player in level.players)
	{
		if(player HasWeapon(var_3c3fc8a8))
		{
			var_7098dcba++;
		}
	}
	if(var_7098dcba != level.players.size)
	{
		if(!isdefined(var_d264ae0a))
		{
			var_d264ae0a = [];
		}
		else if(!IsArray(var_d264ae0a))
		{
			var_d264ae0a = Array(var_d264ae0a);
		}
		var_d264ae0a[var_d264ae0a.size] = "minigun";
	}
	var_4e8cfdc6 = Array::random(var_d264ae0a);
	if(var_4e8cfdc6 != "none")
	{
		level.var_6c0436ff = 0;
	}
	else
	{
		level.var_6c0436ff++;
		if(level.var_6c0436ff > 2)
		{
			ArrayRemoveValue(var_d264ae0a, "none");
			var_4e8cfdc6 = Array::random(var_d264ae0a);
		}
	}
	return var_4e8cfdc6;
}

/*
	Name: function_9981be4a
	Namespace: namespace_45eca03
	Checksum: 0x13E1DEE9
	Offset: 0x4D10
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_9981be4a(str_name)
{
	var_1d2985c7 = Distance2DSquared(level.players[0].origin, level.var_217caec4[str_name].v_origin);
	foreach(player in level.players)
	{
		n_dist_sq = Distance2DSquared(player.origin, level.var_217caec4[str_name].v_origin);
		if(n_dist_sq < var_1d2985c7)
		{
			var_1d2985c7 = n_dist_sq;
		}
	}
	var_4996fe37 = spawnstruct();
	var_4996fe37.str_name = str_name;
	var_4996fe37.n_dist_sq = var_1d2985c7;
	return var_4996fe37;
}

/*
	Name: function_c4bfe365
	Namespace: namespace_45eca03
	Checksum: 0x5CA4F16F
	Offset: 0x4E88
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_c4bfe365(str_name)
{
	e_volume = GetEnt("vol_" + str_name, "targetname");
	var_60be00cb = 1;
	while(isdefined(var_60be00cb) && var_60be00cb)
	{
		var_23541867 = 0;
		var_c7a9ddc2 = GetEntArray("gunship_raps_ai", "targetname");
		var_c7a9ddc2 = ArrayCombine(var_c7a9ddc2, level.players, 0, 0);
		foreach(e_check in var_c7a9ddc2)
		{
			if(e_check istouching(e_volume))
			{
				break;
			}
			var_23541867++;
		}
		if(var_23541867 == var_c7a9ddc2.size)
		{
			var_60be00cb = 0;
		}
		wait(0.05);
	}
}

/*
	Name: function_82e92a08
	Namespace: namespace_45eca03
	Checksum: 0x1EFBDF7B
	Offset: 0x5018
	Size: 0x3EB
	Parameters: 0
	Flags: None
*/
function function_82e92a08()
{
	self endon("death");
	level thread function_e0652cc();
	SetSavedDvar("vehicle_selfCollision", 1);
	self useanimtree(-1);
	self.n_health_min = self.health * 0.01;
	self.var_eb0aa568 = 0;
	self.var_c753fc26 = 0;
	self.var_9d040270 = 0;
	self.var_9db475fa = level.var_33df5678.var_a550bf45;
	self.overrideVehicleDamage = &function_a3869b68;
	self.var_af439c86 = 0;
	self.var_e7f801f1 = 0;
	self.goalRadius = 999999;
	self.goalHeight = 4000;
	self SetGoal(self.origin, 0, self.goalRadius, self.goalHeight);
	self SetNearGoalNotifyDist(self.radius * 0.5);
	self.noCybercom = 1;
	/#
		Assert(isdefined(self.scriptbundlesettings));
	#/
	self.settings = struct::get_script_bundle("vehiclecustomsettings", self.scriptbundlesettings);
	self vehicle::toggle_lights_group(1, 1);
	self vehicle::toggle_lights_group(2, 1);
	self.ignoreFireFly = 1;
	self.ignoreDecoy = 1;
	self vehicle_ai::InitThreatBias();
	self.var_7f956758 = [];
	self flag::init("gunship_can_shoot");
	self flag::init("missiles_not_firing");
	self flag::init("gunship_over_roof");
	self flag::set("gunship_can_shoot");
	self flag::set("missiles_not_firing");
	var_70518e6d = GetEnt("gunship_body", "targetname");
	var_70518e6d EnableLinkTo();
	var_70518e6d LinkTo(self);
	var_70518e6d thread function_69c5f9ce(self);
	self thread function_1e767c06();
	self thread function_fe22bc30();
	self thread function_59faab94();
	self.var_c3733510 = 0;
	self thread function_d41b2661();
	self.var_f7041287 = 0;
	self thread function_a113ef2c();
	self thread function_4c66c579();
	self function_a5223a12();
}

/*
	Name: function_e0652cc
	Namespace: namespace_45eca03
	Checksum: 0xDF7B09F
	Offset: 0x5410
	Size: 0x14F
	Parameters: 0
	Flags: None
*/
function function_e0652cc()
{
	while(1)
	{
		level waittill("save_restore");
		wait(1);
		if(isdefined(level.var_38a4277e))
		{
			if(level.var_38a4277e.var_e507c83f["tag_target_fan_right_outer"])
			{
				level.var_38a4277e globallogic_ui::createWeakpointWidget(&"tag_target_fan_right_outer", 4000, 7500);
			}
			if(level.var_38a4277e.var_e507c83f["tag_target_fan_right_inner"])
			{
				level.var_38a4277e globallogic_ui::createWeakpointWidget(&"tag_target_fan_right_inner", 4000, 7500);
			}
			if(level.var_38a4277e.var_e507c83f["tag_target_fan_left_inner"])
			{
				level.var_38a4277e globallogic_ui::createWeakpointWidget(&"tag_target_fan_left_inner", 4000, 7500);
			}
			if(level.var_38a4277e.var_e507c83f["tag_target_fan_left_outer"])
			{
				level.var_38a4277e globallogic_ui::createWeakpointWidget(&"tag_target_fan_left_outer", 4000, 7500);
			}
		}
	}
}

/*
	Name: function_d41b2661
	Namespace: namespace_45eca03
	Checksum: 0x41DA688F
	Offset: 0x5568
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_d41b2661()
{
	wait(10);
	self.var_c3733510 = 1;
}

/*
	Name: GetNextMovePosition_tactical
	Namespace: namespace_45eca03
	Checksum: 0xA2201D86
	Offset: 0x5588
	Size: 0x79F
	Parameters: 0
	Flags: None
*/
function GetNextMovePosition_tactical()
{
	selfDistToTarget = Distance2D(self.origin, self.e_target.origin);
	goodDist = 0.5 * self.settings.engagementDistMin + self.settings.engagementDistMax;
	closeDist = 1.2 * goodDist;
	farDist = 3 * goodDist;
	queryMultiplier = mapfloat(closeDist, farDist, 1, 3, selfDistToTarget);
	preferedHeightRange = 0.5 * self.settings.engagementHeightMax - self.settings.engagementHeightMin;
	randomness = 300;
	queryResult = PositionQuery_Source_Navigation(self.origin, self.radius + 500, 10000, 1000, self.radius * 0.4, self, self.radius * 0.4);
	if(!isdefined(queryResult.centerOnNav) && queryResult.centerOnNav && !level flag::get("gunship_high_out_of_battle"))
	{
		var_5740256e = self GetClosestPointOnNavVolume(self.origin, self.radius + 500);
		if(isdefined(var_5740256e))
		{
			self.var_ec9be5b1 = queryResult.centerOnNav;
			/#
				IPrintLnBold("Dev Block strings are not supported");
			#/
			return var_5740256e;
		}
	}
	PositionQuery_Filter_DistanceToGoal(queryResult, self);
	vehicle_ai::PositionQuery_Filter_OutOfGoalAnchor(queryResult);
	self vehicle_ai::PositionQuery_Filter_EngagementDist(queryResult, self.e_target, self.settings.engagementDistMin, self.settings.engagementDistMax);
	goalHeight = self.e_target.origin[2] + 0.5 * self.settings.engagementHeightMin + self.settings.engagementHeightMax;
	foreach(point in queryResult.data)
	{
		/#
			if(!isdefined(point._scoreDebug))
			{
				point._scoreDebug = [];
			}
			point._scoreDebug["Dev Block strings are not supported"] = RandomFloatRange(0, randomness);
		#/
		point.score = point.score + RandomFloatRange(0, randomness);
		/#
			if(!isdefined(point._scoreDebug))
			{
				point._scoreDebug = [];
			}
			point._scoreDebug["Dev Block strings are not supported"] = point.distAwayFromEngagementArea * -1;
		#/
		point.score = point.score + point.distAwayFromEngagementArea * -1;
		distFromPreferredHeight = Abs(point.origin[2] - goalHeight);
		if(distFromPreferredHeight > preferedHeightRange)
		{
			/#
				if(!isdefined(point._scoreDebug))
				{
					point._scoreDebug = [];
				}
				point._scoreDebug["Dev Block strings are not supported"] = distFromPreferredHeight * -1;
			#/
			point.score = point.score + distFromPreferredHeight * -1;
		}
	}
	vehicle_ai::PositionQuery_PostProcess_SortScore(queryResult);
	PositionQuery_Filter_Sight(queryResult, self.e_target.origin, self GetEye() - self.origin, self, 1, self.e_target);
	best_point = undefined;
	foreach(point in queryResult.data)
	{
		if(isdefined(point.visibility) && point.visibility)
		{
			best_point = point;
			break;
		}
	}
	if(!isdefined(best_point))
	{
		if(isdefined(queryResult.data[0]))
		{
			best_point = queryResult.data[0];
		}
	}
	self vehicle_ai::PositionQuery_DebugScores(queryResult);
	/#
		if(isdefined(GetDvarInt("Dev Block strings are not supported")) && GetDvarInt("Dev Block strings are not supported"))
		{
			if(isdefined(best_point))
			{
				recordLine(self.origin, best_point.origin, (0.3, 1, 0));
			}
			recordLine(self.origin, self.e_target.origin, (1, 0, 0.4));
		}
	#/
	var_3e63db = self.origin;
	self.var_ec9be5b1 = queryResult.centerOnNav;
	if(isdefined(best_point))
	{
		var_3e63db = best_point.origin;
	}
	return var_3e63db;
}

/*
	Name: Delay_Target_ToEnemy_Thread
	Namespace: namespace_45eca03
	Checksum: 0x3FC1301B
	Offset: 0x5D30
	Size: 0x1EB
	Parameters: 3
	Flags: None
*/
function Delay_Target_ToEnemy_Thread(point, enemy, timeToHit)
{
	self endon("death");
	enemy endon("death");
	enemy endon("disconnect");
	if(!isdefined(self.fakeTargetEnt))
	{
		self.fakeTargetEnt = spawn("script_origin", point);
	}
	self.fakeTargetEnt Unlink();
	self.fakeTargetEnt.origin = point;
	self SetTurretTargetEnt(self.fakeTargetEnt);
	self waittill("turret_on_target");
	timeStart = GetTime();
	offset = (0, 0, 0);
	if(IsSentient(enemy))
	{
		offset = enemy GetEye() - enemy.origin;
	}
	while(GetTime() < timeStart + timeToHit * 1000)
	{
		self.fakeTargetEnt.origin = LerpVector(point, enemy.origin + offset, GetTime() - timeStart / timeToHit * 1000);
		wait(0.05);
	}
	self.fakeTargetEnt.origin = enemy.origin + offset;
	wait(0.05);
	self.fakeTargetEnt LinkTo(enemy);
}

/*
	Name: Attack_Thread_MainTurret
	Namespace: namespace_45eca03
	Checksum: 0x601E65FF
	Offset: 0x5F28
	Size: 0x1A7
	Parameters: 0
	Flags: None
*/
function Attack_Thread_MainTurret()
{
	self endon("death");
	self endon("hash_2e91796b");
	while(1)
	{
		if(!level flag::get("gunship_high_out_of_battle"))
		{
			enemy = self.e_target;
			if(isdefined(enemy))
			{
				if(self VehCanSee(enemy))
				{
					vectorFromEnemy = VectorNormalize((self.origin - enemy.origin[0], self.origin - enemy.origin[1], 0));
					self thread Delay_Target_ToEnemy_Thread(enemy.origin + vectorFromEnemy * 200, enemy, 1);
					self waittill("turret_on_target");
					self vehicle_ai::fire_for_time(1.5 + RandomFloat(0.5));
					wait(2 + RandomFloat(0.4));
				}
				else
				{
					wait(0.1);
				}
			}
			else
			{
				self ClearTurretTarget();
				wait(0.2);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_a5223a12
	Namespace: namespace_45eca03
	Checksum: 0xB20B60A5
	Offset: 0x60D8
	Size: 0x467
	Parameters: 0
	Flags: None
*/
function function_a5223a12()
{
	self endon("death");
	self endon("prepare_to_die");
	self.var_16f2fd07 = 0;
	var_85191bfb = level.var_33df5678;
	var_29eaa707 = 0;
	var_64e13df2 = 0;
	self thread Attack_Thread_MainTurret();
	while(1)
	{
		if(self.var_16f2fd07)
		{
			wait(0.05);
			continue;
		}
		if(level flag::get("gunship_high_out_of_battle"))
		{
			var_ef088aca = struct::get_array("gunship_out_of_fight_point", "targetname");
			dist_sq = 1955032704;
			foreach(position in var_ef088aca)
			{
				if(DistanceSquared(position.origin, self.origin) < dist_sq)
				{
					var_1b28c94b = position;
					dist_sq = DistanceSquared(position.origin, self.origin);
				}
			}
			self SetVehGoalPos(var_1b28c94b.origin, 1, 0);
			self vehicle_ai::waittill_pathing_done();
			wait(0.05);
			continue;
		}
		if(isdefined(level.var_33df5678))
		{
			if(RandomInt(100) < 100 && (isdefined(self.var_d24de693) && self.var_d24de693) && (isdefined(self.var_b5b6b568) && self.var_b5b6b568))
			{
				self.var_1e900bbc = 1;
			}
			self SetSpeed(self.settings.defaultMoveSpeed);
			if(isdefined(self.inpain) && self.inpain)
			{
				wait(0.1);
			}
			else if(!isdefined(self.e_target))
			{
				wait(0.25);
			}
			else if(isdefined(self.var_f7041287) && self.var_f7041287)
			{
				self function_313b72be();
				self.var_f7041287 = 0;
			}
			if(isdefined(self.var_7c83c7b9) && self.var_7c83c7b9)
			{
				self function_aa03c076();
			}
			else
			{
				var_3e63db = GetNextMovePosition_tactical();
				self.current_pathto_pos = var_3e63db;
				if(isdefined(self.current_pathto_pos))
				{
					if(isdefined(self.var_ec9be5b1) && self.var_ec9be5b1)
					{
						self SetVehGoalPos(self.current_pathto_pos, 1, 1);
						self vehicle_ai::waittill_pathing_done();
					}
					else
					{
						self SetVehGoalPos(self.current_pathto_pos, 1, 0);
						self vehicle_ai::waittill_pathing_done();
					}
				}
				if(self.var_c3733510 && RandomInt(100) < 30)
				{
					self function_313b72be();
				}
			}
		}
	}
}

/*
	Name: function_52fd8e0c
	Namespace: namespace_45eca03
	Checksum: 0x6A21E9EB
	Offset: 0x6548
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_52fd8e0c()
{
	var_930421fd = GetEntArray("gunship_raps_ai", "targetname");
	level.var_36a074b0 = GetTime();
	while(var_930421fd.size > 2 && GetTime() - level.var_36a074b0 < 20000)
	{
		wait(0.05);
		var_930421fd = GetEntArray("gunship_raps_ai", "targetname");
	}
}

/*
	Name: function_7a689af4
	Namespace: namespace_45eca03
	Checksum: 0x10054056
	Offset: 0x65F0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_7a689af4()
{
	var_b9229bcd = GetEntArray("gunship_amws_ai", "targetname");
	level.var_5b028c20 = GetTime();
	while(var_b9229bcd.size > 2 && GetTime() - level.var_5b028c20 < 20000)
	{
		wait(0.05);
		var_b9229bcd = GetEntArray("gunship_amws_ai", "targetname");
	}
}

/*
	Name: function_fabd65a5
	Namespace: namespace_45eca03
	Checksum: 0xC2B9CAA
	Offset: 0x6698
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_fabd65a5()
{
	self.var_16f2fd07 = 1;
	self SetVehGoalPos(self.origin + VectorScale((0, 0, 1), 3000), 1, 1);
	self vehicle_ai::waittill_pathing_done();
	self.var_16f2fd07 = 0;
	level flag::set_val("gunship_high_out_of_battle", 0);
}

/*
	Name: function_59faab94
	Namespace: namespace_45eca03
	Checksum: 0x17A249F4
	Offset: 0x6728
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function function_59faab94()
{
	level flag::wait_till("all_players_spawned");
	wait(0.5);
	self globallogic_ui::createWeakpointWidget(&"tag_target_fan_right_outer", 4000, 7500);
	self globallogic_ui::createWeakpointWidget(&"tag_target_fan_right_inner", 4000, 7500);
	self globallogic_ui::createWeakpointWidget(&"tag_target_fan_left_inner", 4000, 7500);
	self globallogic_ui::createWeakpointWidget(&"tag_target_fan_left_outer", 4000, 7500);
	self.var_e507c83f = [];
	self.var_e507c83f["tag_target_fan_right_outer"] = 1;
	self.var_e507c83f["tag_target_fan_right_inner"] = 1;
	self.var_e507c83f["tag_target_fan_left_inner"] = 1;
	self.var_e507c83f["tag_target_fan_left_outer"] = 1;
	var_c9f0ffa0 = GetEntArray("gunship_weakpoint", "targetname");
	self.var_c9f0ffa0 = var_c9f0ffa0;
	self.var_fd056e61 = [];
	foreach(var_d23e13a5 in var_c9f0ffa0)
	{
		var_d23e13a5 LinkTo(self);
		Target_Set(var_d23e13a5);
		var_f4bd5505 = "fan_" + var_d23e13a5.script_noteworthy + "_hurt";
		level.destructible_callbacks[var_f4bd5505] = &function_9eab29c4;
		var_ce9e1adb = "fan_" + var_d23e13a5.script_noteworthy + "_destroyed";
		level.destructible_callbacks[var_ce9e1adb] = &function_6c18838;
		self.var_fd056e61[var_ce9e1adb] = var_d23e13a5;
	}
}

/*
	Name: function_6c18838
	Namespace: namespace_45eca03
	Checksum: 0x46E9B065
	Offset: 0x69F0
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_6c18838(var_ffec1daa, e_attacker)
{
	self function_118e623c(self.var_fd056e61[var_ffec1daa].script_int);
	self.var_af439c86 = self.var_af439c86 + 1;
	self.var_e7f801f1 = self.var_e7f801f1 + 1;
	self.var_fd056e61[var_ffec1daa] delete();
}

/*
	Name: function_9eab29c4
	Namespace: namespace_45eca03
	Checksum: 0xC4F0B425
	Offset: 0x6A88
	Size: 0x27
	Parameters: 2
	Flags: None
*/
function function_9eab29c4(var_ffec1daa, e_attacker)
{
	self.var_e7f801f1 = self.var_e7f801f1 + 1;
}

/*
	Name: function_118e623c
	Namespace: namespace_45eca03
	Checksum: 0x5015AB19
	Offset: 0x6AB8
	Size: 0x129
	Parameters: 1
	Flags: None
*/
function function_118e623c(n_id)
{
	switch(n_id)
	{
		case 1:
		{
			self globallogic_ui::destroyWeakpointWidget(&"tag_target_fan_right_outer");
			self.var_e507c83f["tag_target_fan_right_outer"] = 0;
			break;
		}
		case 2:
		{
			self globallogic_ui::destroyWeakpointWidget(&"tag_target_fan_right_inner");
			self.var_e507c83f["tag_target_fan_right_inner"] = 0;
			break;
		}
		case 3:
		{
			self globallogic_ui::destroyWeakpointWidget(&"tag_target_fan_left_inner");
			self.var_e507c83f["tag_target_fan_left_inner"] = 0;
			break;
		}
		case 4:
		{
			self globallogic_ui::destroyWeakpointWidget(&"tag_target_fan_left_outer");
			self.var_e507c83f["tag_target_fan_left_outer"] = 0;
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_4c66c579
	Namespace: namespace_45eca03
	Checksum: 0x1A620AEB
	Offset: 0x6BF0
	Size: 0x411
	Parameters: 0
	Flags: None
*/
function function_4c66c579()
{
	while(self.var_af439c86 < 4)
	{
		wait(0.05);
	}
	a_flags = [];
	if(!isdefined(a_flags))
	{
		a_flags = [];
	}
	else if(!IsArray(a_flags))
	{
		a_flags = Array(a_flags);
	}
	a_flags[a_flags.size] = "gunship_can_shoot";
	if(!isdefined(a_flags))
	{
		a_flags = [];
	}
	else if(!IsArray(a_flags))
	{
		a_flags = Array(a_flags);
	}
	a_flags[a_flags.size] = "missiles_not_firing";
	self flag::wait_till_all(a_flags);
	self notify("hash_478d205f");
	self notify("hash_9d463a5c");
	self notify("prepare_to_die");
	self turret::disable(0);
	var_c9f0ffa0 = GetEntArray("gunship_weakpoint", "targetname");
	foreach(var_d23e13a5 in var_c9f0ffa0)
	{
		self function_118e623c(var_d23e13a5.script_int);
	}
	self notify("hash_cd4fad51");
	self SetSpeed(50);
	s_position = struct::get("of_gunship_start_pos");
	self function_bcfeb18(s_position.origin, 1, 0);
	self waittill("near_goal");
	level notify("hash_4c66c579");
	level flag::set("stop_dialog_remote");
	var_930421fd = GetEntArray("gunship_raps_ai", "targetname");
	foreach(var_388753bb in var_930421fd)
	{
		var_388753bb delete();
	}
	var_b9229bcd = GetEntArray("gunship_amws_ai", "targetname");
	foreach(var_31e90922 in var_b9229bcd)
	{
		var_31e90922 delete();
	}
}

/*
	Name: function_69c5f9ce
	Namespace: namespace_45eca03
	Checksum: 0x30C20B47
	Offset: 0x7010
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_69c5f9ce(var_38a4277e)
{
	var_38a4277e endon("hash_6d2412ee");
	while(1)
	{
		self waittill("trigger", triggerer);
		if(isPlayer(triggerer))
		{
			triggerer util::show_hint_text(&"CP_MI_CAIRO_LOTUS_LEVIATHAN_HINT", 1);
		}
		wait(30);
	}
}

/*
	Name: function_fe22bc30
	Namespace: namespace_45eca03
	Checksum: 0xF2C2C67B
	Offset: 0x7090
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_fe22bc30()
{
	self endon("death");
	var_ddd24e04 = self.n_health_min;
	var_1082952f = self.health - var_ddd24e04;
	var_8feca2ee = self.health / 2;
	var_2f7d2047 = self.health * 0.75;
	self thread function_66246a8b();
	while(1)
	{
		if(self.health < var_1082952f)
		{
			self notify("hash_6105d0b5");
			var_1082952f = self.health - var_ddd24e04;
		}
		if(self.var_e7f801f1 >= 4)
		{
			self notify("hash_6d2412ee");
		}
		if(self.var_e7f801f1 >= 2)
		{
			self notify("hash_cf300440");
		}
		wait(0.05);
	}
}

/*
	Name: function_a113ef2c
	Namespace: namespace_45eca03
	Checksum: 0x6FA9FE8
	Offset: 0x71B0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_a113ef2c()
{
	self endon("death");
	self.n_acceleration = 30;
	self waittill("hash_6d2412ee");
	self.var_d24de693 = 1;
	self.n_acceleration = 54;
	self thread function_16ed7b4();
	level scene::init("cin_lot_17_oldfriend_3rd_sh010");
}

/*
	Name: function_16ed7b4
	Namespace: namespace_45eca03
	Checksum: 0x8235F29B
	Offset: 0x7230
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_16ed7b4()
{
	self endon("death");
	while(1)
	{
		self notify("hash_8d85c04a");
		wait(10);
	}
}

/*
	Name: function_66246a8b
	Namespace: namespace_45eca03
	Checksum: 0xF7970E05
	Offset: 0x7268
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_66246a8b()
{
	self endon("death");
	self waittill("hash_cf300440");
	while(1)
	{
		self.var_7c83c7b9 = 1;
		self waittill("hash_fe14afa0");
		function_52fd8e0c();
		function_7a689af4();
		self function_fabd65a5();
		wait(40);
	}
}

/*
	Name: function_aa03c076
	Namespace: namespace_45eca03
	Checksum: 0xF1BBCC70
	Offset: 0x72F0
	Size: 0x64F
	Parameters: 0
	Flags: None
*/
function function_aa03c076()
{
	self SetSpeed(3 * self.settings.defaultMoveSpeed);
	var_166cf772 = [];
	var_34168a41 = [];
	var_736e1fad = [];
	var_e612786e = GetEntArray("raps_ship_pos", "targetname");
	var_b78c14cc = GetEntArray("raps_aim_pos", "targetname");
	var_3df07ee9 = ArraySortClosest(var_e612786e, self.origin);
	var_3d2fc9e7 = ArraySortClosest(var_b78c14cc, self.origin);
	if(RandomInt(100) < 50)
	{
		str_side = "left";
	}
	else
	{
		str_side = "right";
	}
	var_e296d6b4 = function_8f336df2() * level.players.size;
	foreach(var_2b86b404 in var_3df07ee9)
	{
		if(var_2b86b404.script_string == str_side)
		{
			var_34168a41[var_34168a41.size] = var_e296d6b4 / 3 - var_166cf772.size;
			var_e296d6b4 = var_e296d6b4 - var_34168a41[var_34168a41.size - 1];
			var_736e1fad[var_736e1fad.size] = var_2b86b404;
		}
	}
	foreach(var_2b86b404 in var_3d2fc9e7)
	{
		if(var_2b86b404.script_string == str_side)
		{
			var_166cf772[var_166cf772.size] = var_2b86b404;
		}
	}
	if(self SetVehGoalPos(var_736e1fad[RandomInt(2)].origin, 1, 1))
	{
		self SetLookAtEnt(var_736e1fad[2]);
		self.var_77116e68 = 1;
		self vehicle_ai::waittill_pathing_done();
	}
	wait(2);
	level clientfield::set("city_sky", 1);
	var_7099d5e = function_8a8d7d66();
	if(isdefined(self.var_1e900bbc) && self.var_1e900bbc && (isdefined(self.var_b5b6b568) && self.var_b5b6b568))
	{
		for(j = 0; j < 3; j++)
		{
			var_b9229bcd = GetEntArray("gunship_amws_ai", "targetname");
			if(var_b9229bcd.size < var_7099d5e)
			{
				self.var_3e8f6c24 = var_166cf772[j].origin;
				self.var_6ded64ae = var_34168a41[j];
				self function_1f2b3ab5();
			}
		}
		wait(2);
	}
	for(j = 0; j < 3; j++)
	{
		var_930421fd = GetEntArray("gunship_raps_ai", "targetname");
		if(var_930421fd.size < var_7099d5e)
		{
			self.var_3e8f6c24 = var_166cf772[j].origin;
			self.var_6ded64ae = var_34168a41[j];
			self function_41d6059d();
		}
	}
	wait(2);
	for(j = 0; j < 3; j++)
	{
		var_930421fd = GetEntArray("gunship_raps_ai", "targetname");
		if(var_930421fd.size < var_7099d5e)
		{
			self.var_3e8f6c24 = var_166cf772[j].origin;
			self.var_6ded64ae = var_34168a41[j];
			self function_41d6059d();
		}
	}
	n_wait = 0.05;
	wait(n_wait);
	self notify("hash_fe14afa0");
	self.var_77116e68 = 0;
	self.var_b5b6b568 = 1;
	if(isdefined(self.var_894468a1) && self.var_894468a1)
	{
		self.var_1e900bbc = 0;
	}
	self.var_7c83c7b9 = 0;
}

/*
	Name: function_db5569bf
	Namespace: namespace_45eca03
	Checksum: 0x1C33B76D
	Offset: 0x7948
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_db5569bf()
{
	self endon("death");
	self flag::set("gunship_over_roof");
	Array::run_all(level.players, &PlayRumbleOnEntity, "damage_light");
	wait(0.25);
	while(self flag::get("gunship_over_roof"))
	{
		Array::run_all(level.players, &PlayRumbleOnEntity, "damage_heavy");
		foreach(player in level.players)
		{
			Earthquake(0.5, 0.15, player.origin, 64);
		}
		wait(0.15);
	}
	Array::run_all(level.players, &PlayRumbleOnEntity, "damage_light");
}

/*
	Name: function_37e6d832
	Namespace: namespace_45eca03
	Checksum: 0x17365FEB
	Offset: 0x7AF0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_37e6d832()
{
	self endon("death");
	wait(2);
	self flag::clear("gunship_over_roof");
}

/*
	Name: function_5f92c323
	Namespace: namespace_45eca03
	Checksum: 0x9A47AFFE
	Offset: 0x7B30
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_5f92c323()
{
	var_537a4b22 = self.var_9db475fa + 3 % 6;
	if(var_537a4b22 == 0)
	{
		var_eca3a58a = 1;
	}
	else
	{
		var_eca3a58a = 2;
	}
	return var_eca3a58a;
}

/*
	Name: function_68aeee69
	Namespace: namespace_45eca03
	Checksum: 0xF4A809E9
	Offset: 0x7BA0
	Size: 0x1D
	Parameters: 1
	Flags: None
*/
function function_68aeee69(n_wait)
{
	wait(n_wait);
	level notify("hash_79414051");
}

/*
	Name: function_e9e10dcf
	Namespace: namespace_45eca03
	Checksum: 0x7F153FC5
	Offset: 0x7BC8
	Size: 0x19F
	Parameters: 0
	Flags: None
*/
function function_e9e10dcf()
{
	self endon("death");
	while(1)
	{
		v_tag_origin = self GetTagOrigin("tag_rocket1");
		var_95a39498 = bullettrace(v_tag_origin, level.players[0].origin, 0, self);
		util::debug_line(v_tag_origin, level.players[0].origin, (1, 0, 0), 0.8, 0, 1);
		v_tag_origin = self GetTagOrigin("tag_rocket2");
		var_7ab03d3 = bullettrace(v_tag_origin, level.players[0].origin, 0, self);
		util::debug_line(v_tag_origin, level.players[0].origin, (1, 0, 0), 0.8, 0, 1);
		if(var_95a39498["fraction"] < 0.59 || var_7ab03d3["fraction"] < 0.59)
		{
			IPrintLnBold("don't shoot");
		}
		wait(0.05);
	}
}

/*
	Name: function_4ea99800
	Namespace: namespace_45eca03
	Checksum: 0x5ABA626C
	Offset: 0x7D70
	Size: 0x3F3
	Parameters: 0
	Flags: None
*/
function function_4ea99800()
{
	self endon("death");
	var_c6da11b8 = GetEntArray("boss_wasp", "targetname");
	var_dc416322 = [];
	while(1)
	{
		level waittill("hash_14f52a04");
		if(isdefined(self.e_target) && self.e_target.sessionstate == "playing")
		{
			var_dc416322 = Array::remove_undefined(var_dc416322);
			var_b8c96ec3 = 4 * level.players.size;
			var_df9ad083 = level.players;
			foreach(e_player in level.players)
			{
				if(e_player != self.e_target)
				{
					if(!isdefined(var_df9ad083))
					{
						var_df9ad083 = [];
					}
					else if(!IsArray(var_df9ad083))
					{
						var_df9ad083 = Array(var_df9ad083);
					}
					var_df9ad083[var_df9ad083.size] = e_player;
				}
			}
			var_5908c36e = 0;
			for(i = 0; i < var_b8c96ec3; i++)
			{
				var_69e69694 = ArraySortClosest(var_c6da11b8, var_df9ad083[var_5908c36e].origin);
				var_aaefedf3 = spawner::simple_spawn_single(var_69e69694[0]);
				var_aaefedf3.origin = self GetTagOrigin("tag_bomb");
				var_aaefedf3.angles = self GetTagAngles("tag_bomb");
				if(RandomInt(2))
				{
				}
				else
				{
				}
				var_119839ea = -256;
				if(RandomInt(2))
				{
				}
				else
				{
				}
				var_dcbf0361 = -256;
				v_goal_pos = var_df9ad083[var_5908c36e].origin + (var_119839ea, var_dcbf0361, 64);
				b_found_goal = var_aaefedf3 SetGoal(v_goal_pos, 1);
				var_aaefedf3 thread function_5d39689d();
				if(!isdefined(var_dc416322))
				{
					var_dc416322 = [];
				}
				else if(!IsArray(var_dc416322))
				{
					var_dc416322 = Array(var_dc416322);
				}
				var_dc416322[var_dc416322.size] = var_aaefedf3;
				var_5908c36e++;
				if(var_5908c36e == var_df9ad083.size)
				{
					var_5908c36e = 0;
				}
			}
			wait(15);
		}
		wait(0.05);
	}
}

/*
	Name: function_5d39689d
	Namespace: namespace_45eca03
	Checksum: 0x608CE4B9
	Offset: 0x8170
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_5d39689d()
{
	self endon("death");
	self waittill("goal");
	self ClearForcedGoal();
}

/*
	Name: function_a6b9e99b
	Namespace: namespace_45eca03
	Checksum: 0x17CB4B3
	Offset: 0x81B0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_a6b9e99b()
{
	if(isdefined(self.e_target))
	{
		var_9cb05100 = GetEntArray("boss_minion_hunter", "targetname");
		self.var_5a36be60 = function_f8f08291();
		for(i = 0; i < function_f8f08291(); i++)
		{
			var_782205f8 = spawner::simple_spawn_single(var_9cb05100[0]);
			var_782205f8 thread watch_for_death(self);
			var_782205f8 thread watch_for_team_change(self);
			var_782205f8 vehicle_ai::set_state("scripted");
			var_782205f8.origin = self GetTagOrigin("tag_bomb");
			var_782205f8.angles = self GetTagAngles("tag_bomb");
			var_63055781 = (var_782205f8.origin[0], var_782205f8.origin[1], var_782205f8.origin[2] - 600);
			var_782205f8 function_bcfeb18(var_63055781, 1, 1);
			var_782205f8 waittill("near_goal");
			var_782205f8 vehicle_ai::set_state("combat");
			wait(0.05);
		}
		self.var_382c873 = 1;
	}
}

/*
	Name: watch_for_death
	Namespace: namespace_45eca03
	Checksum: 0xC393BB98
	Offset: 0x83C8
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function watch_for_death(gunship)
{
	self waittill("death");
	gunship.var_5a36be60--;
}

/*
	Name: watch_for_team_change
	Namespace: namespace_45eca03
	Checksum: 0xCB339464
	Offset: 0x83F8
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function watch_for_team_change(gunship)
{
	self endon("death");
	oldTeam = self.team;
	while(1)
	{
		if(oldTeam != self.team)
		{
			break;
		}
		wait(5);
	}
	gunship.var_5a36be60--;
}

/*
	Name: function_41d6059d
	Namespace: namespace_45eca03
	Checksum: 0xF03A2CE1
	Offset: 0x8460
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_41d6059d()
{
	if(isdefined(self.e_target) && isPlayer(self.e_target) && self.e_target.sessionstate == "playing")
	{
		/#
			Assert(isdefined(self.var_3e8f6c24));
		#/
		/#
			Assert(isdefined(self.var_6ded64ae));
		#/
		var_6ee22718 = self.var_6ded64ae;
		self playsound("veh_raps_launch");
		for(i = 0; i < var_6ee22718; i++)
		{
			var_3e32f05a = spawner::simple_spawn_single("gunship_raps");
			if(var_3e32f05a.archetype == "raps")
			{
				var_3e32f05a.var_2f8cff2 = 1;
			}
			var_3e32f05a.origin = self GetTagOrigin("tag_origin") + VectorScale((0, 0, 1), 512);
			var_3e32f05a util::function_e218424d();
			var_3e32f05a clientfield::set("play_raps_trail_fx", 1);
			var_3e32f05a thread function_853d3b2b(self.var_3e8f6c24);
			wait(0.15);
		}
		level flag::set_val("gunship_high_out_of_battle", 1);
		level thread function_309d7a5a(Array::random(level.var_ead3caed));
	}
}

/*
	Name: function_1f2b3ab5
	Namespace: namespace_45eca03
	Checksum: 0xCA5EE236
	Offset: 0x8680
	Size: 0x1CF
	Parameters: 0
	Flags: None
*/
function function_1f2b3ab5()
{
	if(isdefined(self.e_target) && isPlayer(self.e_target) && self.e_target.sessionstate == "playing")
	{
		/#
			Assert(isdefined(self.var_3e8f6c24));
		#/
		/#
			Assert(isdefined(self.var_6ded64ae));
		#/
		var_483569a0 = self.var_6ded64ae;
		self playsound("veh_raps_launch");
		for(i = 0; i < var_483569a0; i++)
		{
			var_31e90922 = spawner::simple_spawn_single("gunship_amws");
			var_31e90922.origin = self GetTagOrigin("tag_origin") + VectorScale((0, 0, 1), 512);
			var_31e90922 util::function_e218424d();
			var_31e90922 thread function_853d3b2b(self.var_3e8f6c24);
			wait(0.15);
		}
		level flag::set_val("gunship_high_out_of_battle", 1);
		level thread function_309d7a5a(Array::random(level.var_4483235d));
	}
	self.var_894468a1 = 1;
}

/*
	Name: function_853d3b2b
	Namespace: namespace_45eca03
	Checksum: 0xCB57AFCA
	Offset: 0x8858
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_853d3b2b(var_ff72f147)
{
	self endon("death");
	self vehicle_ai::set_state("scripted");
	self LaunchVehicle(VectorScale((0, 0, 1), 200));
	wait(1);
	self function_10215c6f(var_ff72f147);
	self thread function_15e66414(var_ff72f147);
	wait(5.5);
	self vehicle_ai::set_state("combat");
}

/*
	Name: function_15e66414
	Namespace: namespace_45eca03
	Checksum: 0xD02B36C0
	Offset: 0x8918
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_15e66414(var_b748b5a5)
{
	self endon("death");
	self vehicle::toggle_sounds(0);
	if(GetDvarInt("tu1_lotusBossSkeetShoot", 1))
	{
		while(!isdefined(GetClosestPointOnNavMesh(self.origin, 200)))
		{
			wait(0.1);
		}
		break;
	}
	while(Distance(self.origin, var_b748b5a5) > 400)
	{
		wait(0.1);
	}
	if(isdefined(self.var_2f8cff2))
	{
		self.var_2f8cff2 = 0;
	}
	self playsound("veh_raps_first_land");
	self clientfield::set("play_raps_trail_fx", 0);
	self vehicle::toggle_sounds(1);
}

/*
	Name: function_8f336df2
	Namespace: namespace_45eca03
	Checksum: 0x7D76AD6F
	Offset: 0x8A40
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_8f336df2()
{
	switch(level.players.size)
	{
		case 1:
		{
			n_count = 3;
			break;
		}
		case 2:
		{
			n_count = 2;
			break;
		}
		case 3:
		{
			n_count = 2;
			break;
		}
		case 4:
		{
			n_count = 2;
			break;
		}
		case default:
		{
			break;
		}
	}
	return n_count;
}

/*
	Name: function_8a8d7d66
	Namespace: namespace_45eca03
	Checksum: 0x5BA1CA7C
	Offset: 0x8AF8
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_8a8d7d66()
{
	switch(level.players.size)
	{
		case 1:
		{
			n_count = 12;
			break;
		}
		case 2:
		{
			n_count = 20;
			break;
		}
		case 3:
		{
			n_count = 24;
			break;
		}
		case 4:
		{
			n_count = 32;
			break;
		}
		case default:
		{
			break;
		}
	}
	return n_count;
}

/*
	Name: function_f8f08291
	Namespace: namespace_45eca03
	Checksum: 0xC524F9A0
	Offset: 0x8B90
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_f8f08291()
{
	switch(level.players.size)
	{
		case 1:
		{
			n_count = 1;
			break;
		}
		case 2:
		{
			n_count = 2;
			break;
		}
		case 3:
		{
			n_count = 2;
			break;
		}
		case 4:
		{
			n_count = 3;
			break;
		}
		case default:
		{
			break;
		}
	}
	return n_count;
}

/*
	Name: function_313b72be
	Namespace: namespace_45eca03
	Checksum: 0xFA2E9C0A
	Offset: 0x8C48
	Size: 0x491
	Parameters: 0
	Flags: None
*/
function function_313b72be()
{
	self endon("death");
	self endon("hash_9d463a5c");
	var_6bffcc7a = level.activePlayers.size;
	if(isdefined(self.var_7f956758) && self.var_7f956758.size != 0)
	{
		var_6bffcc7a = self.var_7f956758.size;
	}
	self SetGunnerTurretOnTargetRange(0, 1);
	self SetGunnerTurretOnTargetRange(1, 1);
	var_7fd6892d = 0;
	self.var_c1d01bf8 = 0;
	if(isdefined(self.e_target) && !level flag::get("gunship_high_out_of_battle"))
	{
		playsoundatposition("evt_boss_rocket_prime", self.origin);
		self notify("hash_2e91796b");
		self PlaySoundWithNotify("evt_boss_rocket_charge", "sound_done");
		self waittill("sound_done");
		level thread function_309d7a5a(Array::random(level.var_af475f02));
		if(!level flag::get("first_missile_fired_vo"))
		{
			level flag::set("first_missile_fired_vo");
		}
		v_forward = AnglesToForward(self.angles);
		v_origin_1 = self GetTagOrigin("tag_gunner_turret1");
		var_68880690 = v_origin_1 + v_forward * 1024;
		self SetGunnerTargetVec(var_68880690, 0);
		var_5e078701 = self GetTagOrigin("tag_gunner_turret2");
		var_da8f75cb = var_5e078701 + v_forward * 1024;
		self SetGunnerTargetVec(var_da8f75cb, 1);
		self waittill("gunner_turret_on_target");
		for(i = 0; i < var_6bffcc7a; i++)
		{
			wait(0.1);
			self function_d7bfd7f(0);
			wait(0.1);
			self function_d7bfd7f(1);
		}
		wait(1);
		foreach(e_player in level.players)
		{
			if(isdefined(e_player.e_fake))
			{
				e_player.e_fake Unlink();
			}
		}
		self util::waittill_notify_or_timeout("all_missiles_destroyed", 6.45);
		self thread Attack_Thread_MainTurret();
		var_7fd6892d = 0;
		foreach(e_player in level.players)
		{
			if(isdefined(e_player.e_fake))
			{
				e_player.e_fake delete();
			}
		}
	}
}

/*
	Name: function_b5e3704e
	Namespace: namespace_45eca03
	Checksum: 0x477ED191
	Offset: 0x90E8
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_b5e3704e()
{
	v_tag_origin = self GetTagOrigin("tag_rocket1");
	var_95a39498 = bullettrace(v_tag_origin, self.e_target.origin, 0, self);
	v_tag_origin = self GetTagOrigin("tag_rocket2");
	for(var_7ab03d3 = bullettrace(v_tag_origin, self.e_target.origin, 0, self); var_95a39498["fraction"] < 0.59 || var_7ab03d3["fraction"] < 0.59;  = bullettrace(v_tag_origin, self.e_target.origin, 0, self))
	{
		wait(0.05);
		v_tag_origin = self GetTagOrigin("tag_rocket1");
		var_95a39498 = bullettrace(v_tag_origin, self.e_target.origin, 0, self);
		v_tag_origin = self GetTagOrigin("tag_rocket2");
	}
}

/*
	Name: function_d7bfd7f
	Namespace: namespace_45eca03
	Checksum: 0xE3566370
	Offset: 0x9298
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_d7bfd7f(n_gunner_index)
{
	e_target = self function_5b0cea0a();
	var_e6ad0ba4 = n_gunner_index + 1;
	str_tag = "tag_rocket" + var_e6ad0ba4;
	v_tag_origin = self GetTagOrigin(str_tag);
	var_429f87f7 = GetWeapon("gunship_cannon");
	e_missile = MagicBullet(var_429f87f7, v_tag_origin, v_tag_origin + VectorScale((0, 0, 1), 1024), self, e_target);
	e_missile thread function_7ec8c202(self);
}

/*
	Name: function_5b0cea0a
	Namespace: namespace_45eca03
	Checksum: 0x6A1CDCEB
	Offset: 0x93B0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_5b0cea0a()
{
	var_9dcd387d = undefined;
	if(isdefined(self.var_cfe2cc2c))
	{
		var_9dcd387d = self.var_cfe2cc2c;
	}
	else
	{
		a_targets = ArraySortClosest(self.var_7f956758, level.var_33df5678.v_origin);
		n_mod = Int(self.var_c1d01bf8 / 2);
		if(n_mod >= a_targets.size)
		{
			n_mod = a_targets.size - 1;
		}
		e_target = a_targets[n_mod];
		if(!isdefined(e_target.e_fake))
		{
			e_target.e_fake = spawn("script_model", e_target.origin, 0);
			e_target.e_fake LinkTo(e_target);
		}
		var_9dcd387d = e_target.e_fake;
	}
	self.var_c1d01bf8++;
	return var_9dcd387d;
}

/*
	Name: function_7ec8c202
	Namespace: namespace_45eca03
	Checksum: 0xA0806F05
	Offset: 0x9518
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_7ec8c202(var_38a4277e)
{
	self waittill("death");
	var_38a4277e.var_c1d01bf8--;
	if(var_38a4277e.var_c1d01bf8 == 0)
	{
		var_38a4277e notify("hash_8611c1b6");
	}
}

/*
	Name: function_bcfeb18
	Namespace: namespace_45eca03
	Checksum: 0xB9FC0A64
	Offset: 0x9570
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_bcfeb18(v_origin, b_stop, var_8c59a8de)
{
	var_d620769c = self SetVehGoalPos(v_origin, b_stop);
	/#
		if(!(isdefined(var_d620769c) && var_d620769c))
		{
			IPrintLnBold("Dev Block strings are not supported");
		}
	#/
}

/*
	Name: function_68e67780
	Namespace: namespace_45eca03
	Checksum: 0x9E56C304
	Offset: 0x95F0
	Size: 0x3BF
	Parameters: 1
	Flags: None
*/
function function_68e67780(var_9db475fa)
{
	self endon("death");
	self notify("hash_cd4fad51");
	self endon("hash_cd4fad51");
	self.var_9db475fa = var_9db475fa;
	var_91c497de = "gunship_pos_" + self.var_9db475fa;
	var_4e9a9978 = var_91c497de;
	var_5013796b = "clockwise";
	var_9c8616bd = struct::get("gunship_pos_" + self.var_c753fc26, "targetname");
	if(self.var_c753fc26 != self.var_9db475fa)
	{
		self flag::clear("gunship_can_shoot");
		var_5013796b = self function_cf3bbe02();
		if(var_5013796b == "counterclockwise")
		{
			var_4e9a9978 = self function_c38d5af4(var_9c8616bd, var_91c497de);
		}
		else
		{
			var_4e9a9978 = self function_cdb12f14(var_9c8616bd, var_91c497de);
		}
		self flag::set("gunship_can_shoot");
	}
	s_position = struct::get(var_4e9a9978, "targetname");
	var_697e3556 = struct::get(s_position.target, "targetname");
	var_216bf22d = struct::get(s_position.script_string, "targetname");
	while(1)
	{
		self notify("hash_8e5e255b");
		self.var_9d040270 = s_position.script_int;
		self function_bcfeb18(s_position.origin, 0, 1);
		self waittill("near_goal");
		self.var_eb0aa568 = self.var_c753fc26;
		self.var_c753fc26 = s_position.script_int;
		if(var_5013796b == "counterclockwise")
		{
			self.var_9d040270 = var_216bf22d.script_int;
			self function_bcfeb18(var_216bf22d.origin, 1, 1);
			self waittill("near_goal");
			self.var_eb0aa568 = self.var_c753fc26;
			self.var_c753fc26 = var_216bf22d.script_int;
			var_5013796b = "clockwise";
		}
		else
		{
			self.var_9d040270 = var_697e3556.script_int;
			self function_bcfeb18(var_697e3556.origin, 1, 1);
			self waittill("near_goal");
			self.var_eb0aa568 = self.var_c753fc26;
			self.var_c753fc26 = var_697e3556.script_int;
			var_5013796b = "counterclockwise";
		}
		wait(0.05);
	}
}

/*
	Name: function_cf3bbe02
	Namespace: namespace_45eca03
	Checksum: 0x4AB9FF7C
	Offset: 0x99B8
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_cf3bbe02()
{
	var_3c8b0726 = 5 - self.var_c753fc26;
	if(self.var_c753fc26 > self.var_9db475fa)
	{
		var_3c8b0726 = var_3c8b0726 + self.var_9db475fa + 1;
	}
	var_d0e7904a = self.var_c753fc26 - self.var_9db475fa;
	if(self.var_c753fc26 < self.var_9db475fa)
	{
		var_d0e7904a = var_d0e7904a + 6;
	}
	if(var_d0e7904a < var_3c8b0726)
	{
		var_5013796b = "counterclockwise";
	}
	else
	{
		var_5013796b = "clockwise";
	}
	return var_5013796b;
}

/*
	Name: function_cdb12f14
	Namespace: namespace_45eca03
	Checksum: 0x49FFAE14
	Offset: 0x9A98
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_cdb12f14(var_9c8616bd, var_91c497de)
{
	for(var_4e9a9978 = var_9c8616bd.target; var_4e9a9978 != var_91c497de;  = var_9c8616bd.target)
	{
		s_position = struct::get(var_4e9a9978, "targetname");
		self.var_9d040270 = s_position.script_int;
		self function_bcfeb18(s_position.origin, 0, 1);
		self waittill("near_goal");
		self.var_eb0aa568 = self.var_c753fc26;
		self.var_c753fc26 = s_position.script_int;
	}
	return var_4e9a9978;
}

/*
	Name: function_c38d5af4
	Namespace: namespace_45eca03
	Checksum: 0x4D3CB10B
	Offset: 0x9BA0
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_c38d5af4(var_9c8616bd, var_91c497de)
{
	for(var_4e9a9978 = var_9c8616bd.script_string; var_4e9a9978 != var_91c497de;  = var_9c8616bd.script_string)
	{
		s_position = struct::get(var_4e9a9978, "targetname");
		self.var_9d040270 = s_position.script_int;
		self function_bcfeb18(s_position.origin, 0, 1);
		self waittill("near_goal");
		self.var_eb0aa568 = self.var_c753fc26;
		self.var_c753fc26 = s_position.script_int;
	}
	return var_4e9a9978;
}

/*
	Name: function_c60bcf77
	Namespace: namespace_45eca03
	Checksum: 0x919C9332
	Offset: 0x9CA8
	Size: 0x12B
	Parameters: 1
	Flags: Private
*/
function private function_c60bcf77(target)
{
	if(!isdefined(target))
	{
		return 0;
	}
	if(!isalive(target))
	{
		return 0;
	}
	if(isPlayer(target) && target.sessionstate == "spectator")
	{
		return 0;
	}
	if(isPlayer(target) && target.sessionstate == "intermission")
	{
		return 0;
	}
	if(isdefined(self.intermission) && self.intermission)
	{
		return 0;
	}
	if(isdefined(target.ignoreme) && target.ignoreme)
	{
		return 0;
	}
	if(target IsNoTarget())
	{
		return 0;
	}
	if(self.team == target.team)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_965c000c
	Namespace: namespace_45eca03
	Checksum: 0x46392C7F
	Offset: 0x9DE0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_965c000c()
{
	self endon("death");
	var_df348736 = [];
	do
	{
		target_list = ArrayCombine(level.players, GetAITeamArray("allies"), 0, 0);
		if(target_list.size > 0)
		{
			foreach(var_738974f1 in target_list)
			{
				if(function_c60bcf77(var_738974f1))
				{
					var_df348736[var_df348736.size] = var_738974f1;
				}
			}
		}
		wait(0.05);
	}
	while(!var_df348736.size == 0);
	self.var_7f956758 = var_df348736;
}

/*
	Name: function_1e767c06
	Namespace: namespace_45eca03
	Checksum: 0x1BE9A7B8
	Offset: 0x9F18
	Size: 0x29F
	Parameters: 0
	Flags: None
*/
function function_1e767c06()
{
	self endon("death");
	self function_965c000c();
	self.e_target = self.var_7f956758[0];
	if(!isdefined(self.var_77116e68) && self.var_77116e68 && isdefined(self.e_target))
	{
		self SetLookAtEnt(self.e_target);
	}
	while(!isdefined(level.var_33df5678))
	{
		wait(0.05);
	}
	while(1)
	{
		self function_965c000c();
		var_e370f4cd = self.var_7f956758[0];
		if(isdefined(var_e370f4cd))
		{
			n_dist_sq_min = Distance2DSquared(var_e370f4cd.origin, level.var_33df5678.v_origin);
		}
		foreach(target in self.var_7f956758)
		{
			n_dist_sq = Distance2DSquared(target.origin, level.var_33df5678.v_origin);
			if(n_dist_sq < n_dist_sq_min)
			{
				var_e370f4cd = target;
				n_dist_sq_min = n_dist_sq;
			}
		}
		if(isdefined(self.e_target) && isdefined(var_e370f4cd) && var_e370f4cd != self.e_target)
		{
			self.e_target = var_e370f4cd;
		}
		else if(!function_c60bcf77(self.e_target))
		{
			self.e_target = undefined;
			if(isdefined(var_e370f4cd))
			{
				self.e_target = var_e370f4cd;
			}
		}
		if(!isdefined(self.var_77116e68) && self.var_77116e68 && isdefined(self.e_target))
		{
			self SetLookAtEnt(self.e_target);
		}
		wait(0.5);
	}
}

/*
	Name: function_a3869b68
	Namespace: namespace_45eca03
	Checksum: 0x16A5C068
	Offset: 0xA1C0
	Size: 0x23B
	Parameters: 15
	Flags: None
*/
function function_a3869b68(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, weapon, v_point, v_dir, str_hit_loc, v_damage_origin, psOffsetTime, b_damage_from_underneath, n_model_index, str_part_name, var_eca96ec1)
{
	switch(level.players.size)
	{
		case 1:
		{
			n_damage = Int(n_damage * 3);
			break;
		}
		case 2:
		{
			n_damage = Int(n_damage * 2.25);
			break;
		}
		case 3:
		{
			n_damage = Int(n_damage * 1.5);
			break;
		}
		case 4:
		{
			n_damage = Int(n_damage * 1);
			break;
		}
		case default:
		{
			break;
		}
	}
	n_health_after_damage = self.health - n_damage;
	if(self.health < self.n_health_min)
	{
		n_damage = 0;
	}
	else if(n_health_after_damage < self.n_health_min)
	{
		n_damage = self.health - self.n_health_min + 1;
	}
	if(isdefined(self.var_e507c83f[str_part_name]) && self.var_e507c83f[str_part_name])
	{
		if(n_damage > 0)
		{
			self thread function_1ccd0b11(str_part_name);
		}
	}
	else
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_1ccd0b11
	Namespace: namespace_45eca03
	Checksum: 0xB2BFF3CB
	Offset: 0xA408
	Size: 0x1E5
	Parameters: 1
	Flags: None
*/
function function_1ccd0b11(part_name)
{
	self endon("death");
	switch(part_name)
	{
		case "tag_target_fan_left_outer":
		{
			if(!self clientfield::get("boss_left_outer_fx"))
			{
				self clientfield::set("boss_left_outer_fx", 1);
				wait(0.2);
				self clientfield::set("boss_left_outer_fx", 0);
			}
			break;
		}
		case "tag_target_fan_left_inner":
		{
			if(!self clientfield::get("boss_left_inner_fx"))
			{
				self clientfield::set("boss_left_inner_fx", 1);
				wait(0.2);
				self clientfield::set("boss_left_inner_fx", 0);
			}
			break;
		}
		case "tag_target_fan_right_inner":
		{
			if(!self clientfield::get("boss_right_inner_fx"))
			{
				self clientfield::set("boss_right_inner_fx", 1);
				wait(0.2);
				self clientfield::set("boss_right_inner_fx", 0);
			}
			break;
		}
		case "tag_target_fan_right_outer":
		{
			if(!self clientfield::get("boss_right_outer_fx"))
			{
				self clientfield::set("boss_right_outer_fx", 1);
				wait(0.2);
				self clientfield::set("boss_right_outer_fx", 0);
			}
			break;
		}
	}
}

/*
	Name: function_b9eaf37e
	Namespace: namespace_45eca03
	Checksum: 0xE762999F
	Offset: 0xA5F8
	Size: 0x53
	Parameters: 4
	Flags: None
*/
function function_b9eaf37e(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_lotus_leviathan");
	objectives::complete("cp_level_lotus_leviathan_destroy");
}

/*
	Name: function_428ff2f
	Namespace: namespace_45eca03
	Checksum: 0xABAFCB4B
	Offset: 0xA658
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_428ff2f()
{
	var_f29f9112 = GetEntArray("roof_ammo_caches", "prefabname");
	foreach(cache in var_f29f9112)
	{
		cache show();
	}
}


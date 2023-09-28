#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_sgen_test_chamber;
#using scripts\cp\cp_mi_cairo_infection_sound;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_b2b18209;

/*
	Name: main
	Namespace: namespace_b2b18209
	Checksum: 0xEF60BD49
	Offset: 0x938
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function main()
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	init_flags();
	init_client_field_callback_funcs();
	setup_scenes();
}

/*
	Name: init_flags
	Namespace: namespace_b2b18209
	Checksum: 0x8C1FCBDC
	Offset: 0x998
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("baby_picked_up");
}

/*
	Name: init_client_field_callback_funcs
	Namespace: namespace_b2b18209
	Checksum: 0xF76B91A9
	Offset: 0x9C8
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function init_client_field_callback_funcs()
{
	clientfield::register("toplayer", "sim_out_of_bound", 1, 1, "counter");
	clientfield::register("world", "sim_lgt_tree_glow_01", 1, 1, "int");
	clientfield::register("world", "sim_lgt_tree_glow_02", 1, 1, "int");
	clientfield::register("world", "sim_lgt_tree_glow_03", 1, 1, "int");
	clientfield::register("world", "sim_lgt_tree_glow_04", 1, 1, "int");
	clientfield::register("world", "sim_lgt_tree_glow_05", 1, 1, "int");
	clientfield::register("world", "lgt_tree_glow_05_fade_out", 1, 1, "int");
	clientfield::register("world", "sim_lgt_tree_glow_all_off", 1, 1, "int");
	clientfield::register("toplayer", "pstfx_frost_up", 1, 1, "counter");
	clientfield::register("toplayer", "pstfx_frost_down", 1, 1, "counter");
	clientfield::register("toplayer", "pstfx_frost_up_baby", 1, 1, "counter");
	clientfield::register("toplayer", "pstfx_exit_all", 1, 1, "counter");
	clientfield::register("scriptmover", "infection_baby_shader", 1, 1, "int");
	clientfield::register("world", "toggle_sim_fog_banks", 1, 1, "int");
	clientfield::register("world", "break_baby", 1, 1, "int");
}

/*
	Name: setup_scenes
	Namespace: namespace_b2b18209
	Checksum: 0x99EC1590
	Offset: 0xCA8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function setup_scenes()
{
}

/*
	Name: function_d78d6232
	Namespace: namespace_b2b18209
	Checksum: 0x89C87A8E
	Offset: 0xCB8
	Size: 0x30B
	Parameters: 2
	Flags: None
*/
function function_d78d6232(str_objective, var_74cd64bc)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread scene::init("cin_inf_04_01_birthai_vign_deathpose");
	}
	namespace_36cbf523::function_1cdb9014();
	clientfield::set("toggle_sim_fog_banks", 1);
	level util::set_lighting_state(0);
	skipto::teleport_players(str_objective);
	if(var_74cd64bc)
	{
		load::function_a2995f22();
	}
	foreach(e_player in level.activePlayers)
	{
		e_player player::switch_to_primary_weapon(1);
	}
	clientfield::set("sim_lgt_tree_glow_01", 1);
	Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
	level thread function_43e9cbbf();
	if(isdefined(level.BZM_INFECTIONDialogue3Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue3Callback]]();
	}
	level thread scene::Play("cin_inf_04_01_birthai_1st_crying_init");
	level thread function_e2a1f622();
	level thread function_3c6bbd12();
	level thread function_12c0aa84();
	level thread function_f2e3184d();
	level thread function_2baf7f93();
	level thread function_e7b91ace();
	level thread function_30f163f9();
	level thread function_8742cfd3();
	level thread function_96fb6d2b();
	level thread function_bcfde794();
	level thread function_e30061fd();
}

/*
	Name: function_f6fce5f1
	Namespace: namespace_b2b18209
	Checksum: 0x2E351A1A
	Offset: 0xFD0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f6fce5f1()
{
	level scene::init("cin_inf_04_01_birthai_vign_deathpose");
}

/*
	Name: function_e7b91ace
	Namespace: namespace_b2b18209
	Checksum: 0x4312B987
	Offset: 0x1000
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e7b91ace()
{
	level scene::Play("cin_inf_04_01_birthai_vign_deathpose");
}

/*
	Name: function_c52039f4
	Namespace: namespace_b2b18209
	Checksum: 0xDAB2B0D9
	Offset: 0x1030
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_c52039f4()
{
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("damage_heavy");
	}
}

/*
	Name: function_30f163f9
	Namespace: namespace_b2b18209
	Checksum: 0x67FC26B2
	Offset: 0x10D0
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_30f163f9()
{
	level thread function_3b662fed();
	trigger::wait_till("t_vo_thea_where_am_i_what_s_0");
	clientfield::set("sim_lgt_tree_glow_02", 1);
	level thread namespace_eccdd5d1::function_8e8e5a12();
	function_c52039f4();
	playsoundatposition("evt_tree_light", (-24528, -25283, 3712));
	level thread namespace_eccdd5d1::function_14588839();
	trigger::wait_till("t_plyr_i_hear_a_baby_crying_0");
	level dialog::function_13b3b16a("plyr_i_hear_a_baby_crying_0", 1);
	level dialog::function_13b3b16a("plyr_hello_is_anyone_th_0");
	trigger::wait_till("t_lgt_tree_glow_03");
	trigger::wait_till("t_plyr_i_don_t_know_if_you_0");
	level dialog::function_13b3b16a("plyr_i_don_t_know_if_you_0");
	trigger::wait_till("t_plyr_hall_0");
	level dialog::function_13b3b16a("plyr_hall_0");
	level dialog::function_13b3b16a("hall_what_did_you_do_to_m_0", 0.6);
	level dialog::function_13b3b16a("plyr_i_tried_to_interface_0", 2.3);
}

/*
	Name: function_3b662fed
	Namespace: namespace_b2b18209
	Checksum: 0xCE63C721
	Offset: 0x12D0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_3b662fed()
{
	wait(3.5);
	level dialog::function_13b3b16a("plyr_kane_hendricks_0", 1);
	objectives::set("cp_level_infection_extract_intel");
}

/*
	Name: function_e2a1f622
	Namespace: namespace_b2b18209
	Checksum: 0xC4B72412
	Offset: 0x1328
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_e2a1f622()
{
	trigger::wait_till("t_salm_mr_krueger_beat_0");
	var_5f4c216b = GetEnt("t_salm_mr_krueger_beat_0", "targetname");
	var_5f4c216b dialog::say("salm_mr_krueger_beat_0", 0, 1);
}

/*
	Name: function_3c6bbd12
	Namespace: namespace_b2b18209
	Checksum: 0xFEB0A31D
	Offset: 0x13A0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3c6bbd12()
{
	trigger::wait_till("t_krue_oh_i_understand_do_0");
	var_5f4c216b = GetEnt("t_krue_oh_i_understand_do_0", "targetname");
	var_5f4c216b dialog::say("krue_oh_i_understand_do_0", 0, 1);
}

/*
	Name: function_12c0aa84
	Namespace: namespace_b2b18209
	Checksum: 0x2A8FE124
	Offset: 0x1418
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_12c0aa84()
{
	trigger::wait_till("t_salm_please_listen_to_wh_0");
	var_5f4c216b = GetEnt("t_salm_please_listen_to_wh_0", "targetname");
	var_5f4c216b dialog::say("salm_please_listen_to_wh_0", 0, 1);
}

/*
	Name: function_f2e3184d
	Namespace: namespace_b2b18209
	Checksum: 0xB7976A7D
	Offset: 0x1490
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_f2e3184d()
{
	trigger::wait_till("t_krue_we_re_standing_on_th_1");
	var_5f4c216b = GetEnt("t_krue_we_re_standing_on_th_1", "targetname");
	var_5f4c216b dialog::say("krue_we_re_standing_on_th_1", 0, 1);
}

/*
	Name: function_2baf7f93
	Namespace: namespace_b2b18209
	Checksum: 0x26A86301
	Offset: 0x1508
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_2baf7f93()
{
	trigger::wait_till("t_krue_zurich_is_where_the_1");
	var_5f4c216b = GetEnt("t_krue_zurich_is_where_the_1", "targetname");
	var_5f4c216b dialog::say("krue_zurich_is_where_the_1", 0, 1);
}

/*
	Name: function_96fb6d2b
	Namespace: namespace_b2b18209
	Checksum: 0x534E1516
	Offset: 0x1580
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_96fb6d2b()
{
	trigger::wait_till("t_lgt_tree_glow_03");
	level thread namespace_eccdd5d1::function_688bdfa9();
	clientfield::set("sim_lgt_tree_glow_03", 1);
	function_c52039f4();
	playsoundatposition("evt_tree_light", (-24934, -23881, 3803));
	playsoundatposition("evt_baby_cry", (0, 0, 0));
}

/*
	Name: function_bcfde794
	Namespace: namespace_b2b18209
	Checksum: 0x4C6F1DFB
	Offset: 0x1638
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_bcfde794()
{
	trigger::wait_till("t_lgt_tree_glow_04");
	level thread namespace_eccdd5d1::function_42896540();
	clientfield::set("sim_lgt_tree_glow_04", 1);
	function_c52039f4();
	playsoundatposition("evt_tree_light", (-24574, -22663, 4172));
	playsoundatposition("evt_baby_cry", (0, 0, 0));
}

/*
	Name: function_e30061fd
	Namespace: namespace_b2b18209
	Checksum: 0x4B6E387
	Offset: 0x16F0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e30061fd()
{
	trigger::wait_till("t_lgt_tree_glow_05");
	level thread namespace_eccdd5d1::function_4c9abe1f();
	clientfield::set("sim_lgt_tree_glow_05", 1);
	function_c52039f4();
	playsoundatposition("evt_tree_light", (-23716, -21731, 4429));
	playsoundatposition("evt_baby_cry", (0, 0, 0));
}

/*
	Name: function_2d3d4bcc
	Namespace: namespace_b2b18209
	Checksum: 0xF3447889
	Offset: 0x17A8
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_2d3d4bcc(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	clientfield::set("toggle_sim_fog_banks", 0);
	clientfield::set("sim_lgt_tree_glow_all_off", 1);
	namespace_36cbf523::function_3ea445de();
	objectives::complete("cp_level_infection_extract_intel");
}

/*
	Name: function_43e9cbbf
	Namespace: namespace_b2b18209
	Checksum: 0x1DB37ACB
	Offset: 0x1838
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_43e9cbbf()
{
	level.var_ff59b31e = 0;
	Array::thread_all(level.players, &function_ca04578e);
	callback::on_spawned(&function_ca04578e);
	Array::thread_all(GetEntArray("t_warm", "script_noteworthy"), &function_cdf731ff);
	level waittill("hash_744b1b8e");
	callback::remove_on_spawned(&function_ca04578e);
}

/*
	Name: function_cdf731ff
	Namespace: namespace_b2b18209
	Checksum: 0x696782AA
	Offset: 0x1910
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_cdf731ff()
{
	self waittill("trigger");
	self.b_activated = 1;
	level.var_ff59b31e++;
}

/*
	Name: function_ca04578e
	Namespace: namespace_b2b18209
	Checksum: 0x412149B2
	Offset: 0x1940
	Size: 0x289
	Parameters: 0
	Flags: None
*/
function function_ca04578e()
{
	level endon("hash_744b1b8e");
	self endon("death");
	var_803084e1 = GetEntArray("t_warm", "script_noteworthy");
	var_4902d28 = GetEntArray("t_cold", "script_noteworthy");
	while(1)
	{
		wait(1.5);
		var_d5845427 = "out_of_bounds";
		foreach(var_bfb72d25 in var_803084e1)
		{
			if(self istouching(var_bfb72d25) && var_bfb72d25.b_activated === 1)
			{
				var_d5845427 = "warm";
			}
		}
		if(var_d5845427 != "warm")
		{
			foreach(var_2c782ed4 in var_4902d28)
			{
				if(self istouching(var_2c782ed4))
				{
					var_d5845427 = "cold";
				}
			}
		}
		switch(var_d5845427)
		{
			case "warm":
			{
				self clientfield::increment_to_player("pstfx_frost_down", 1);
				break;
			}
			case "cold":
			{
				self clientfield::increment_to_player("pstfx_frost_up", 1);
				break;
			}
			case "out_of_bounds":
			{
				self function_ed57c386();
				break;
			}
		}
	}
}

/*
	Name: function_ed57c386
	Namespace: namespace_b2b18209
	Checksum: 0x37DC7360
	Offset: 0x1BD8
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_ed57c386()
{
	self FreezeControls(1);
	var_1b259f9b = struct::get_array("s_sim_out_of_bound_warp_" + level.var_ff59b31e);
	self thread hud::fade_to_black_for_x_sec(0, 1, 0.5, 1, "white");
	wait(0.5);
	self clientfield::increment_to_player("sim_out_of_bound");
	self clientfield::set("player_spawn_fx", 1);
	self SetOrigin(var_1b259f9b[self GetEntityNumber()].origin);
	self SetPlayerAngles(var_1b259f9b[self GetEntityNumber()].angles);
	wait(0.5);
	self clientfield::set("player_spawn_fx", 0);
	self FreezeControls(0);
}

/*
	Name: function_8742cfd3
	Namespace: namespace_b2b18209
	Checksum: 0x680E68AB
	Offset: 0x1D70
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_8742cfd3()
{
	trigger::wait_till("pod_open_anim_trig");
	level thread scene::Play("cin_inf_04_01_birthai_1st_crying_init_loop");
	var_be695670 = struct::get("pick_up_baby_objective_pos", "targetname");
	var_ab54d1e = GetEnt("t_baby_use", "targetname");
	var_ab54d1e.e_gameobject = util::function_14518e76(var_ab54d1e, &"cp_level_infection_gather_baby", &"CP_MI_CAIRO_INFECTION_T_BABY_USE", &function_b4750e7c);
	util::wait_network_frame();
	level thread namespace_9ac99a6e::function_a29f7cbd();
	var_ab54d1e waittill("hash_2d864e11", player);
	objectives::complete("cp_level_infection_gather_baby");
	level clientfield::set("lgt_tree_glow_05_fade_out", 1);
	level thread namespace_eccdd5d1::function_582799a6();
	if(isdefined(player))
	{
		/#
			IPrintLnBold("Dev Block strings are not supported");
		#/
		var_ab54d1e.e_gameobject gameobjects::disable_object();
		scene::add_scene_func("cin_inf_04_01_birthai_1st_crying", &function_3372b3a, "play");
		level flag::set("baby_picked_up");
		level scene::Play("cin_inf_04_01_birthai_1st_crying", player);
		level notify("hash_744b1b8e");
		skipto::function_be8adfb8("sim_reality_starts");
	}
}

/*
	Name: function_b4750e7c
	Namespace: namespace_b2b18209
	Checksum: 0xE143B707
	Offset: 0x1FC8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_b4750e7c(player)
{
	self.trigger notify("hash_2d864e11", player);
}

/*
	Name: function_3372b3a
	Namespace: namespace_b2b18209
	Checksum: 0x1CB35681
	Offset: 0x1FF8
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function function_3372b3a(a_ents)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	foreach(player in level.activePlayers)
	{
		player thread clientfield::increment_to_player("pstfx_exit_all");
	}
	var_c2cb9b70 = a_ents["baby"];
	level waittill("hash_d1cdd7c");
	var_c2cb9b70 clientfield::set("infection_baby_shader", 1);
	level waittill("hash_ad6cab7b");
	var_c2cb9b70 ghost();
	level clientfield::set("break_baby", 1);
	level waittill("hash_1fd5443a");
	foreach(player in level.activePlayers)
	{
		player thread clientfield::increment_to_player("pstfx_frost_up_baby", 1);
	}
	level waittill("hash_35e91f99");
	level thread util::screen_fade_out(1, "white");
}


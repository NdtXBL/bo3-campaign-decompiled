#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_quad_tank_plaza;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses2_fx;
#using scripts\cp\cp_mi_cairo_ramses2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\objpoints_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_raps;

#namespace namespace_d7ca6f18;

/*
	Name: function_f72dae68
	Namespace: namespace_d7ca6f18
	Checksum: 0x8FAFBC82
	Offset: 0xC58
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_f72dae68(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	Precache();
	level flag::init("vtol_igc_robots_alerted");
	level flag::init("vtol_igc_robots_dead");
	level flag::init("hendricks_at_vtol_igc");
	function_4e0519ce(var_74cd64bc);
}

/*
	Name: Precache
	Namespace: namespace_d7ca6f18
	Checksum: 0x99EC1590
	Offset: 0xD10
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function Precache()
{
}

/*
	Name: function_fc9630cb
	Namespace: namespace_d7ca6f18
	Checksum: 0xB3D043BC
	Offset: 0xD20
	Size: 0x221
	Parameters: 0
	Flags: None
*/
function function_fc9630cb()
{
	var_b0c95322 = GetEntArray("hide_me", "script_noteworthy");
	foreach(var_ee522bae in var_b0c95322)
	{
		if(isdefined(var_ee522bae))
		{
			var_ee522bae Hide();
		}
	}
	var_b0c95322 = GetEntArray("hide_vtol_robots", "script_noteworthy");
	foreach(var_ee522bae in var_b0c95322)
	{
		if(isdefined(var_ee522bae))
		{
			var_ee522bae Hide();
		}
	}
	var_2e9e64b6 = GetEntArray("alley_bridge_destroyed", "targetname");
	foreach(var_12061b40 in var_2e9e64b6)
	{
		var_12061b40 Hide();
	}
}

/*
	Name: function_4e0519ce
	Namespace: namespace_d7ca6f18
	Checksum: 0x287CB7D5
	Offset: 0xF50
	Size: 0x6F3
	Parameters: 1
	Flags: None
*/
function function_4e0519ce(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	level thread function_f3a727ef();
	level thread function_35210922();
	level notify("hash_57a23805");
	level thread function_31a2724a();
	level thread function_3659e172();
	var_e8fa0050 = spawn("script_origin", (8190, -16469, 418));
	var_9cf50b7e = spawn("script_origin", (7934, -15639, 351));
	var_e8fa0050 PlayLoopSound("evt_outside_battle_l", 0.25);
	var_9cf50b7e PlayLoopSound("evt_outside_battle_r", 0.25);
	Array::run_all(GetEntArray("lgt_vtol_block", "targetname"), &Hide);
	if(!var_74cd64bc)
	{
		level scene::init("cin_ram_06_05_safiya_1st_friendlydown_init");
	}
	util::wait_network_frame();
	level scene::init("cin_ram_06_05_safiya_aie_breakin_pilotshoots");
	scene::add_scene_func("cin_ram_06_05_safiya_1st_friendlydown", &function_e78f7ba0, "play");
	scene::add_scene_func("cin_ram_06_05_safiya_1st_friendlydown", &function_9585cf3, "done");
	var_99b57ecf = GetEnt("trig_use_vtol_igc", "targetname");
	var_99b57ecf SetInvisibleToAll();
	util::wait_network_frame();
	level thread function_db3c9568();
	trigger::wait_till("trig_spawn_vtol_igc");
	objectives::complete("cp_level_ramses_go_to_safiya");
	level thread function_6cbfd0c6();
	namespace_94c82dbc::function_ffea6b5();
	level thread function_a2be882d();
	level thread function_baa2531();
	spawner::waittill_ai_group_cleared("vtol_robots");
	level flag::set("vtol_igc_robots_dead");
	level.var_2fd26037 thread function_a64605e5();
	level thread util::function_d8eaed3d(3);
	level scene::init("cin_ram_06_05_safiya_1st_friendlydown");
	level flag::wait_till("hendricks_at_vtol_igc");
	var_99b57ecf SetVisibleToAll();
	var_12cc0227 = util::function_14518e76(var_99b57ecf, &"cp_level_ramses_vtol_use", &"CP_MI_CAIRO_RAMSES_VTOL_IGC_TRIG", &function_468dd319);
	level flag::wait_till("vtol_igc_trigger_used");
	if(isdefined(level.BZM_RAMSESDialogue7Callback))
	{
		level thread [[level.BZM_RAMSESDialogue7Callback]]();
	}
	objectives::complete("cp_level_ramses_vtol_use");
	var_e8fa0050 StopLoopSound(2);
	var_9cf50b7e StopLoopSound(2);
	level util::clientNotify("vtligc");
	level thread namespace_a6a248fc::function_bb3105cf();
	battlechatter::function_d9f49fba(0);
	var_12cc0227 gameobjects::destroy_object();
	level thread function_6ee65e7a();
	var_1cad09db = GetEntArray("alley_egypt_intro_guy_ai", "targetname");
	foreach(e_guy in var_1cad09db)
	{
		e_guy delete();
	}
	var_d63952d7 = GetEntArray("alley_egypt_mid_guy_ai", "targetname");
	foreach(e_guy in var_d63952d7)
	{
		e_guy delete();
	}
	level flag::wait_till("vtol_igc_done");
	var_e8fa0050 delete();
	var_9cf50b7e delete();
	level util::clientNotify("pst");
	skipto::function_be8adfb8("vtol_igc");
}

/*
	Name: function_6ee65e7a
	Namespace: namespace_d7ca6f18
	Checksum: 0x2526F047
	Offset: 0x1650
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_6ee65e7a(a_ents)
{
	level waittill("hash_8456258f");
	var_dfcbd82b = GetNode("qtp_hendricks_start_node", "targetname");
	level.var_2fd26037 SetGoal(var_dfcbd82b, 0, 32);
}

/*
	Name: function_2e3a3b68
	Namespace: namespace_d7ca6f18
	Checksum: 0x7922BA71
	Offset: 0x16C8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_2e3a3b68(a_ents)
{
	var_2aa82b86 = a_ents["cin_ram_06_05_safiya_1st_friendlydown_vtol01"];
	STR_MODEL = "veh_t7_mil_vtol_egypt_nose_glass_d1";
	var_2aa82b86 function_1e5c6903(1, "");
	var_2aa82b86 function_1e5c6903(0, "_d1");
	var_2aa82b86 function_1e5c6903(1, "_d2");
	var_2aa82b86 HidePart("tag_glass4_d3_animate", STR_MODEL, 1);
	level waittill("hash_495be65c");
	var_2aa82b86 function_1e5c6903(1, "_d1");
	var_2aa82b86 function_1e5c6903(0, "_d2");
	level waittill("hash_6f5e60c5");
	var_2aa82b86 HidePart("tag_glass4_d2_animate", STR_MODEL, 1);
	var_2aa82b86 ShowPart("tag_glass4_d3_animate", STR_MODEL, 1);
}

/*
	Name: function_1e5c6903
	Namespace: namespace_d7ca6f18
	Checksum: 0xBA89D409
	Offset: 0x1840
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_1e5c6903(b_hide, str_state)
{
	if(!isdefined(b_hide))
	{
		b_hide = 1;
	}
	if(!isdefined(str_state))
	{
		str_state = "";
	}
	STR_MODEL = "veh_t7_mil_vtol_egypt_nose_glass_d1";
	if(b_hide)
	{
		self HidePart("tag_glass" + str_state + "_animate", STR_MODEL, 1);
		self HidePart("tag_glass1" + str_state + "_animate", STR_MODEL, 1);
		self HidePart("tag_glass2" + str_state + "_animate", STR_MODEL, 1);
		self HidePart("tag_glass3" + str_state + "_animate", STR_MODEL, 1);
		self HidePart("tag_glass4" + str_state + "_animate", STR_MODEL, 1);
		self HidePart("tag_glass5" + str_state + "_animate", STR_MODEL, 1);
	}
	else
	{
		self ShowPart("tag_glass" + str_state + "_animate", STR_MODEL, 1);
		self ShowPart("tag_glass1" + str_state + "_animate", STR_MODEL, 1);
		self ShowPart("tag_glass2" + str_state + "_animate", STR_MODEL, 1);
		self ShowPart("tag_glass3" + str_state + "_animate", STR_MODEL, 1);
		self ShowPart("tag_glass4" + str_state + "_animate", STR_MODEL, 1);
		self ShowPart("tag_glass5" + str_state + "_animate", STR_MODEL, 1);
	}
}

/*
	Name: function_3659e172
	Namespace: namespace_d7ca6f18
	Checksum: 0x385609BA
	Offset: 0x1AF0
	Size: 0x27F
	Parameters: 0
	Flags: None
*/
function function_3659e172()
{
	s_vtol = struct::get("vtol_objective");
	objectives::set("cp_waypoint_breadcrumb", s_vtol);
	level waittill("hash_ca2d8f8");
	objectives::Hide("cp_waypoint_breadcrumb");
	while(!level flag::get("vtol_igc_robots_dead"))
	{
		wait(0.5);
		foreach(player in level.activePlayers)
		{
			if(!isdefined(player.var_fbf99626))
			{
				player.var_fbf99626 = 0;
			}
			if(Distance(s_vtol.origin, player.origin) > 1000)
			{
				if(player.var_fbf99626 == 0)
				{
					objectives::show("cp_waypoint_breadcrumb", player);
					player.var_fbf99626 = 1;
				}
				continue;
			}
			if(player.var_fbf99626 == 1)
			{
				objectives::Hide("cp_waypoint_breadcrumb", player);
				player.var_fbf99626 = 0;
			}
		}
	}
	objectives::complete("cp_waypoint_breadcrumb", s_vtol);
	foreach(player in level.players)
	{
		player.var_fbf99626 = undefined;
	}
}

/*
	Name: function_468dd319
	Namespace: namespace_d7ca6f18
	Checksum: 0xDD3BFED6
	Offset: 0x1D78
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_468dd319(e_player)
{
	level flag::set("vtol_igc_trigger_used");
	scene::add_scene_func("cin_ram_06_05_safiya_1st_friendlydown", &function_2e3a3b68, "play");
	level thread scene::Play("cin_ram_06_05_safiya_1st_friendlydown", e_player);
	self gameobjects::disable_object();
}

/*
	Name: function_f3a727ef
	Namespace: namespace_d7ca6f18
	Checksum: 0x8E4B8832
	Offset: 0x1E18
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_f3a727ef(var_bd047092)
{
	if(!isdefined(var_bd047092))
	{
		var_bd047092 = 0;
	}
	level flag::init("vtol_igc_started");
	namespace_391e4301::function_ac2b4535("cin_ram_06_05_safiya_1st_friendlydown", "vtol_igc_teleport");
	scene::add_scene_func("cin_ram_06_05_safiya_1st_friendlydown", &function_672d14aa, "play");
	level thread function_c6b9db();
	exploder::exploder("fx_expl_vtol_int");
	if(!var_bd047092)
	{
		level thread function_fc1660c3();
		exploder::exploder("fx_expl_igc_vtol_ext_smoke");
		level thread function_33108db5();
	}
	level thread function_c887803();
	level thread function_85f7b3f4();
}

/*
	Name: function_672d14aa
	Namespace: namespace_d7ca6f18
	Checksum: 0x6EB84DB5
	Offset: 0x1F60
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_672d14aa(a_ents)
{
	level flag::set("vtol_igc_started");
	Array::run_all(GetEntArray("lgt_vtol_block", "targetname"), &show);
}

/*
	Name: function_e78f7ba0
	Namespace: namespace_d7ca6f18
	Checksum: 0xD0394E3C
	Offset: 0x1FD8
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_e78f7ba0(a_ents)
{
	level waittill("hash_1560247e");
	function_6ddd4fa4("qtp_vtol_nose");
	var_2ef9d306 = a_ents["cin_ram_06_05_safiya_1st_friendlydown_vtol01"];
	var_2ef9d306 HidePart("tag_nose_animate", "veh_t7_mil_vtol_egypt_igc_nose", 1);
	var_2ef9d306 HidePart("tag_nose_animate", "veh_t7_mil_vtol_egypt_cockpit_d0", 1);
	var_2ef9d306 HidePart("tag_nose_animate", "veh_t7_mil_vtol_egypt_nose_d1", 1);
	var_2ef9d306 HidePart("tag_nose_animate", "veh_t7_mil_vtol_egypt_nose_glass_d1", 1);
	var_2ef9d306 HidePart("tag_nose_animate", "veh_t7_mil_vtol_egypt_nose_d0", 1);
	var_2ef9d306 HidePart("tag_nose_animate", "veh_t7_mil_vtol_egypt_screens_d1", 1);
}

/*
	Name: function_9585cf3
	Namespace: namespace_d7ca6f18
	Checksum: 0xF0239E60
	Offset: 0x2120
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_9585cf3(a_ents)
{
	level flag::set("vtol_igc_done");
	exploder::exploder_stop("fx_expl_qtplaza_hotel");
	Array::run_all(GetEntArray("lgt_vtol_block", "targetname"), &Hide);
	util::clear_streamer_hint();
}

/*
	Name: function_db3c9568
	Namespace: namespace_d7ca6f18
	Checksum: 0x4FF78203
	Offset: 0x21C0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_db3c9568()
{
	scene::add_scene_func("cin_ram_06_05_safiya_aie_breakin_02", &function_9cafdc73, "init");
	level thread scene::init("cin_ram_06_05_safiya_aie_breakin_02");
}

/*
	Name: function_baa2531
	Namespace: namespace_d7ca6f18
	Checksum: 0x970C0AE3
	Offset: 0x2220
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_baa2531()
{
	scene::add_scene_func("cin_ram_06_05_safiya_aie_breakin_pilotshoots", &function_c4dc56eb, "done");
	a_flags = [];
	a_flags[0] = "player_looking_at_vtol_igc";
	a_flags[1] = "vtol_igc_robots_alerted";
	level flag::wait_till_any(a_flags);
	level notify("hash_ca2d8f8");
	level scene::Play("cin_ram_06_05_safiya_aie_breakin_pilotshoots");
}

/*
	Name: function_c4dc56eb
	Namespace: namespace_d7ca6f18
	Checksum: 0x85E3DDA4
	Offset: 0x22D0
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_c4dc56eb(a_ents)
{
	a_keys = getArrayKeys(a_ents);
	foreach(str_key in a_keys)
	{
		if(IsSubStr(str_key, "robot"))
		{
			var_f6c5842 = a_ents[str_key];
			if(isalive(var_f6c5842))
			{
				var_f6c5842 kill();
			}
		}
	}
}

/*
	Name: function_a2be882d
	Namespace: namespace_d7ca6f18
	Checksum: 0xB9DDE961
	Offset: 0x23E0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_a2be882d()
{
	level.var_2fd26037 ai::set_ignoreall(1);
	nd_start = GetNode("vtol_igc_hendricks_start", "targetname");
	wait(1);
	level.var_2fd26037 ai::force_goal(nd_start);
	level flag::wait_till("vtol_igc_robots_alerted");
	level.var_2fd26037 ai::set_ignoreall(0);
}

/*
	Name: function_9cafdc73
	Namespace: namespace_d7ca6f18
	Checksum: 0xD1A4DD8C
	Offset: 0x2498
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_9cafdc73(a_ents)
{
	a_keys = getArrayKeys(a_ents);
	foreach(str_key in a_keys)
	{
		if(IsSubStr(str_key, "robot"))
		{
			a_ents[str_key] thread function_e9454b97();
		}
	}
}

/*
	Name: function_e9454b97
	Namespace: namespace_d7ca6f18
	Checksum: 0x8782EC9F
	Offset: 0x2580
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_e9454b97()
{
	self endon("death");
	level endon("hash_d1ac8f57");
	self thread function_bc906046();
	self util::waittill_any("damage", "bulletwhizby", "pain", "proximity", "player_near_vtol_igc");
	level flag::set("vtol_igc_robots_alerted");
	level thread scene::Play("cin_ram_06_05_safiya_aie_breakin_02");
	level.var_2fd26037 ai::set_ignoreall(0);
	trigger::use("trig_spawn_vtol_igc");
	level notify("hash_d1ac8f57");
}

/*
	Name: function_bc906046
	Namespace: namespace_d7ca6f18
	Checksum: 0xC1B0808D
	Offset: 0x2678
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_bc906046()
{
	self endon("death");
	trigger::wait_till("vtol_igc_near_robots", "targetname");
	self notify("hash_d51f3d07");
}

/*
	Name: function_a64605e5
	Namespace: namespace_d7ca6f18
	Checksum: 0x69D8F8C3
	Offset: 0x26C0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a64605e5()
{
	self waittill("hash_1de32fa2");
	level flag::set("hendricks_at_vtol_igc");
}

/*
	Name: function_c6b9db
	Namespace: namespace_d7ca6f18
	Checksum: 0x64C31482
	Offset: 0x26F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c6b9db()
{
	level waittill("hash_30c9a209");
	level thread namespace_94c82dbc::function_5a4025b4();
}

/*
	Name: function_85f7b3f4
	Namespace: namespace_d7ca6f18
	Checksum: 0xF40948DE
	Offset: 0x2728
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_85f7b3f4()
{
	level flag::wait_till("vtol_igc_started");
	s_scene = struct::get("truck_flip_vtol", "targetname");
	s_scene thread scene::init();
	level waittill("hash_c4f59e60");
	s_scene thread scene::Play();
	level waittill("hash_67926c8d");
	e_guy = GetEnt("cin_ram_06_05_safiya_1st_friendlydown_guy06", "targetname");
	e_guy delete();
}

/*
	Name: function_c887803
	Namespace: namespace_d7ca6f18
	Checksum: 0x5ABCA539
	Offset: 0x2808
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c887803()
{
	level waittill("hash_3eedd8a9");
	namespace_94c82dbc::function_899f8822();
}

/*
	Name: function_33108db5
	Namespace: namespace_d7ca6f18
	Checksum: 0xC0211A40
	Offset: 0x2838
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_33108db5()
{
	level waittill("hash_33108db5");
	exploder::exploder_stop("fx_expl_igc_vtol_ext_smoke");
}

/*
	Name: function_fc1660c3
	Namespace: namespace_d7ca6f18
	Checksum: 0x2A0A5A6D
	Offset: 0x2870
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_fc1660c3()
{
	level waittill("hash_fc1660c3");
	exploder::exploder_stop("fx_expl_vtol_int");
}

/*
	Name: function_35210922
	Namespace: namespace_d7ca6f18
	Checksum: 0x3544CDC2
	Offset: 0x28A8
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_35210922()
{
	var_2ef9d306 = undefined;
	while(!isdefined(var_2ef9d306))
	{
		var_2ef9d306 = GetEnt("cin_ram_06_05_safiya_1st_friendlydown_vtol01", "targetname");
		wait(1);
	}
	var_633b96c9 = Array("veh_t7_mil_vtol_egypt_igc_nose", "veh_t7_mil_vtol_egypt_int_slice");
	foreach(str_part in var_633b96c9)
	{
		var_2ef9d306 HidePart("tag_wing_left_animate", str_part, 1);
		var_2ef9d306 HidePart("tag_wing_right_animate", str_part, 1);
		var_2ef9d306 HidePart("tag_wing_l_midbreak_animate", str_part, 1);
		var_2ef9d306 HidePart("tag_wing_r_midbreak_animate", str_part, 1);
	}
	var_43807dc4 = GetEntArray("vtol_cockpit_probe", "script_noteworthy");
	foreach(var_133e9095 in var_43807dc4)
	{
		var_133e9095 LinkTo(var_2ef9d306, "tag_cockpit_lgt");
	}
	var_2ef9d306 HidePart("tag_console_center_screen_animate_d0", "veh_t7_mil_vtol_egypt_cockpit_d0");
	var_2ef9d306 HidePart("tag_console_left_screen_animate_d0", "veh_t7_mil_vtol_egypt_cockpit_d0");
	var_2ef9d306 HidePart("tag_console_right_screen_animate_d0", "veh_t7_mil_vtol_egypt_cockpit_d0");
	var_2ef9d306 Attach("veh_t7_mil_vtol_egypt_screens_d1", "tag_nose_animate");
	var_2ef9d306 Attach("veh_t7_mil_vtol_egypt_cabin_details_attch", "tag_body_animate");
	var_2ef9d306 notsolid();
}

/*
	Name: function_31a2724a
	Namespace: namespace_d7ca6f18
	Checksum: 0x96590079
	Offset: 0x2BD0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_31a2724a()
{
	level flag::wait_till("all_players_spawned");
	wait(1);
	level util::clientNotify("pres");
}

/*
	Name: function_6cbfd0c6
	Namespace: namespace_d7ca6f18
	Checksum: 0x996447C2
	Offset: 0x2C20
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_6cbfd0c6()
{
	var_a7d1013f = GetEnt("trig_hendricks_sees_vtol", "targetname");
	while(1)
	{
		var_a7d1013f trigger::wait_till();
		if(var_a7d1013f.who === level.var_2fd26037 || isPlayer(var_a7d1013f.who))
		{
			break;
		}
	}
	level.var_2fd26037 dialog::say("hend_kane_we_got_a_frie_0", 0.5);
	level dialog::remote("kane_scanning_for_lifesig_0");
	ai_pilot = GetEnt("cin_ram_06_05_safiya_1st_friendlydown_guy01", "targetname");
	ai_pilot dialog::say("plyr_screams_from_inside_0");
	level dialog::function_13b3b16a("plyr_that_s_lifesign_enou_0");
}


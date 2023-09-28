#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_fallen_soldiers;
#using scripts\cp\cp_mi_sing_sgen_pallas;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_testing_lab_igc;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_4c73eafb;

/*
	Name: function_32dc1c24
	Namespace: namespace_4c73eafb
	Checksum: 0x47F0AB80
	Offset: 0x1408
	Size: 0x40B
	Parameters: 2
	Flags: None
*/
function function_32dc1c24(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		SGEN::function_bff1a867(str_objective);
		level thread namespace_a5e80dc::function_652f4022();
		level notify("hash_92687102");
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::complete("cp_level_sgen_descend_into_core");
		objectives::complete("cp_level_sgen_goto_signal_source");
		objectives::set("cp_level_sgen_goto_server_room");
		level thread scene::skipto_end("cin_sgen_14_humanlab_3rd_sh200");
		load::function_a2995f22();
	}
	var_77725d68 = GetEntArray("interference_on_trig", "targetname");
	Array::thread_all(var_77725d68, &function_d791b0a9, 1);
	var_4edbd293 = GetEntArray("interference_off_trig", "targetname");
	Array::thread_all(var_4edbd293, &function_d791b0a9, 0);
	level thread scene::Play("cin_sgen_14_01_humanlab_vign_deadbodies");
	level clientfield::set("w_underwater_state", 1);
	spawner::add_spawn_function_group("dark_battle_jumpdown_bot", "script_noteworthy", &function_5e6c249b);
	Array::thread_all(GetEntArray("surgical_facility_interior_door_trigger", "targetname"), &function_69df7be3);
	level thread scene::init("cin_sgen_15_01_darkbattle_vign_new_flare_decayedmen");
	level thread namespace_cba4cc55::function_423cfae8("surgical_catwalk_top_door", "open");
	level thread namespace_cba4cc55::function_423cfae8("dark_battle_end_door", "close");
	level._effect["water_rise"] = "water/fx_water_rise_splash_md";
	level thread function_e5d88bbd();
	level thread function_3cc9e129();
	var_acb9c8b6 = GetNode("hendricks_post_dni_lab", "targetname");
	level.var_2fd26037 SetGoal(var_acb9c8b6, 1, 16);
	trigger::wait_till("dark_battle_end");
	level notify("hash_a254d667");
	var_64e85e6d = GetEntArray("surgical_facility_spawner_ai", "targetname");
	Array::wait_till(var_64e85e6d, "death");
	level thread namespace_cba4cc55::function_423cfae8("dark_battle_end_door", "open");
}

/*
	Name: function_3cc9e129
	Namespace: namespace_4c73eafb
	Checksum: 0x46BC6120
	Offset: 0x1820
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_3cc9e129()
{
	trigger::wait_till("pre_electromagnetic_room_trigger", undefined, undefined, 0);
	level dialog::remote("kane_power_s_out_ahead_s_0");
	level.var_2fd26037 dialog::say("hend_copy_that_1", 1);
	trigger::wait_till("electromagnetic_room_trigger", undefined, undefined, 0);
	level dialog::remote("kane_picking_up_radiation_0");
	level flag::wait_till("hendricks_door_open");
	level dialog::function_13b3b16a("plrf_good_job_hendricks_0");
	level.var_2fd26037 dialog::say("hend_uh_i_didn_t_do_th_0", 2);
	trigger::wait_till("plyr_shit_2", undefined, undefined, 0);
	level dialog::function_13b3b16a("plyr_more_test_subjects_0", 0.75);
	level flag::wait_till("water_robot_spawned");
	level thread namespace_d40478f6::function_34465ae6();
	level.var_2fd26037 dialog::say("hend_they_re_in_the_water_0", 4);
	level battlechatter::function_d9f49fba(1);
}

/*
	Name: function_d791b0a9
	Namespace: namespace_4c73eafb
	Checksum: 0xCCF7CCF8
	Offset: 0x1A00
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_d791b0a9(b_state)
{
	level endon("descent");
	while(isdefined(self))
	{
		self waittill("trigger", e_player);
		e_player clientfield::set_to_player("oed_interference", b_state);
	}
}

/*
	Name: function_5d8d8c7a
	Namespace: namespace_4c73eafb
	Checksum: 0x41F7BB4D
	Offset: 0x1A68
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_5d8d8c7a()
{
	level endon("hash_fe2135f");
	wait(8);
	level.var_2fd26037 dialog::say("hend_need_a_hand_i_ain_t_0");
	wait(randomIntRange(10, 15));
	level.var_2fd26037 dialog::say("hend_gimme_boost_we_need_0");
}

/*
	Name: function_5e6c249b
	Namespace: namespace_4c73eafb
	Checksum: 0xDC0965AF
	Offset: 0x1AE0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_5e6c249b()
{
	self ai::set_behavior_attribute("rogue_control", "forced_level_2");
	self ai::set_behavior_attribute("rogue_control_speed", "sprint");
}

/*
	Name: function_bbb54b1a
	Namespace: namespace_4c73eafb
	Checksum: 0x7F77C158
	Offset: 0x1B40
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_bbb54b1a(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_6b91309b
	Namespace: namespace_4c73eafb
	Checksum: 0x6F2411B4
	Offset: 0x1B70
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_6b91309b()
{
	var_7667766b = GetEnt("player_raise_hendricks_trigger", "targetname");
	var_7667766b TriggerEnable(0);
	level flag::wait_till("player_raise_hendricks_hendricks_ready");
	var_7667766b TriggerEnable(1);
	objectives::complete("cp_waypoint_breadcrumb");
	objectives::set("cp_level_sgen_lift_hendricks", level.var_2fd26037.origin);
	var_7667766b waittill("trigger", var_5243a970);
	objectives::complete("cp_level_sgen_lift_hendricks");
	level flag::set("player_raise_hendricks_hendricks");
	a_scene_ents = [];
	level scene::add_scene_func("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_climb", &function_f45def6e, "done", a_scene_ents);
	level thread scene::Play("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_climb", var_5243a970);
	level flag::set("player_raise_hendricks_player_ready");
}

/*
	Name: function_f45def6e
	Namespace: namespace_4c73eafb
	Checksum: 0x9EDB1EBE
	Offset: 0x1D18
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_f45def6e(a_scene_ents)
{
	foreach(ent in a_scene_ents)
	{
		if(isPlayer(ent))
		{
			wait(1);
			ent cybercom::function_6c141a2d();
		}
	}
}

/*
	Name: function_e5d88bbd
	Namespace: namespace_4c73eafb
	Checksum: 0x4ADBE80E
	Offset: 0x1DD8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_e5d88bbd()
{
	level thread function_731772d9();
	level thread function_c760c273();
	level thread function_3e856999();
	level thread function_26c8bae0();
}

/*
	Name: function_731772d9
	Namespace: namespace_4c73eafb
	Checksum: 0xE4E25E8B
	Offset: 0x1E48
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_731772d9()
{
	objectives::breadcrumb("dark_battle_breadcrumb");
}

/*
	Name: function_26c8bae0
	Namespace: namespace_4c73eafb
	Checksum: 0x29314443
	Offset: 0x1E70
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_26c8bae0()
{
	level thread scene::init("door_dark_battle", "targetname");
	e_door = GetEnt("hendricks_dark_battle_top_door", "targetname");
	level flag::wait_till("dark_battle_hendricks_above");
	wait(2);
	e_door RotateYaw(-90, 2);
	wait(2);
	level thread scene::Play("door_dark_battle", "targetname");
	e_door_clip = GetEnt("dark_room_entrance_door_clip", "targetname");
	e_door_clip playsound("evt_dark_door_open");
	wait(1.5);
	e_door_clip MoveZ(-144, 1);
	wait(1.5);
	e_door_clip delete();
	level flag::set("hendricks_door_open");
	savegame::function_5d2cdd99();
	level thread function_f229e2b5();
	level waittill("close_door");
	level thread namespace_cba4cc55::function_423cfae8("surgical_catwalk_top_door", "close");
}

/*
	Name: function_3e856999
	Namespace: namespace_4c73eafb
	Checksum: 0xD60714EB
	Offset: 0x2048
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_3e856999()
{
	trigger::wait_till("dark_battle_down_stairs", "script_noteworthy", undefined, 0);
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	level.var_2fd26037.goalRadius = 8;
	level thread function_6b91309b();
	level scene::Play("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_pre_arrive");
	level scene::Play("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_arrive");
	level flag::set("player_raise_hendricks_hendricks_ready");
	level thread function_5d8d8c7a();
	level flag::wait_till("player_raise_hendricks_player_ready");
	level scene::stop("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_arrive");
	level scene::add_scene_func("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_a", &function_86c3565d, "play");
	level scene::add_scene_func("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlea", &function_acc5d0c6, "play");
}

/*
	Name: function_86c3565d
	Namespace: namespace_4c73eafb
	Checksum: 0xAF9C0FF6
	Offset: 0x21E8
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_86c3565d(a_ents)
{
	level flag::set("dark_battle_hendricks_above");
	playsoundatposition("evt_hend_door_beep", (4141, -3845, -5073));
}

/*
	Name: function_acc5d0c6
	Namespace: namespace_4c73eafb
	Checksum: 0x2DA38BFD
	Offset: 0x2248
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_acc5d0c6(a_ents)
{
	trigger::wait_till("dark_battle_hendricks_flarecarry_b_trigger", undefined, undefined, 0);
	if(level flag::get("pallas_start"))
	{
	}
	else
	{
		level scene::add_scene_func("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idleb", &function_d2c84b2f, "play");
		level scene::stop("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlea");
		level scene::Play("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_b");
	}
}

/*
	Name: function_d2c84b2f
	Namespace: namespace_4c73eafb
	Checksum: 0x4741E1B
	Offset: 0x2318
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_d2c84b2f(a_ents)
{
	trigger::wait_till("dark_battle_hendricks_flarecarry_c_trigger", undefined, undefined, 0);
	if(level flag::get("pallas_start"))
	{
	}
	else
	{
		level scene::add_scene_func("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlec", &function_c8b6f250, "play");
		level scene::stop("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idleb");
		level scene::Play("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_c");
	}
}

/*
	Name: function_c8b6f250
	Namespace: namespace_4c73eafb
	Checksum: 0xF259C933
	Offset: 0x23E8
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_c8b6f250(a_ents)
{
	level flag::wait_till("dark_battle_hendricks_flarecarry_end");
	level thread function_9a64520();
	level battlechatter::function_d9f49fba(0);
	level flag::set("dark_battle_hendricks_ambush");
	level scene::stop("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlec");
	level thread scene::Play("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_d");
	level thread namespace_d40478f6::function_973b77f9();
	level util::delay(30, undefined, &exploder::stop_exploder, "dark_battle_flare2");
}

/*
	Name: function_9a64520
	Namespace: namespace_4c73eafb
	Checksum: 0x92F43E3
	Offset: 0x24F8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_9a64520()
{
	level waittill("hash_391cc978");
	str_hero = "hendricks_backpack";
	if(!isdefined(level.heroes["hendricks_backpack"]))
	{
		str_hero = "hendricks";
	}
	level.var_2fd26037 util::unmake_hero(str_hero);
	level.var_2fd26037 util::self_delete();
}

/*
	Name: function_a8cfe9ae
	Namespace: namespace_4c73eafb
	Checksum: 0x86027323
	Offset: 0x2580
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_a8cfe9ae()
{
	level scene::stop("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlea");
	level scene::stop("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_b");
	level scene::stop("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idleb");
	level scene::stop("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_c");
	level scene::stop("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlec");
	level scene::stop("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_d");
}

/*
	Name: function_40fa24f4
	Namespace: namespace_4c73eafb
	Checksum: 0x3183195C
	Offset: 0x2650
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_40fa24f4(a_ents)
{
	level.var_2fd26037 scene::stop();
}

/*
	Name: function_c760c273
	Namespace: namespace_4c73eafb
	Checksum: 0xEFADF028
	Offset: 0x2680
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_c760c273()
{
	var_bcabda32 = GetEntArray("surgical_facility_spawn_trigger", "targetname");
	Array::thread_all(var_bcabda32, &function_fed6294);
	var_62a3a7da = struct::get_array("hendricks_riser");
	Array::thread_all(var_62a3a7da, &function_80aab711);
}

/*
	Name: function_80aab711
	Namespace: namespace_4c73eafb
	Checksum: 0x18E0E2A3
	Offset: 0x2728
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_80aab711()
{
	var_dc854c29 = GetEnt("surgical_facility_spawner", "targetname");
	n_scene = randomIntRange(1, 3);
	var_f6c5842 = var_dc854c29 spawner::spawn(1);
	var_f6c5842 endon("death");
	self scene::init("cin_sgen_15_04_robot_ambush_aie_arise_robot0" + n_scene + "_water", var_f6c5842);
	var_f6c5842 namespace_ed09da6e::function_fbd51610();
	var_f6c5842.targetname = "hendricks_riser_ai";
	level flag::wait_till("dark_battle_hendricks_ambush");
	wait(RandomFloatRange(0.1, 1));
	var_f6c5842 thread namespace_ed09da6e::function_89ba9422();
	self scene::Play("cin_sgen_15_04_robot_ambush_aie_arise_robot0" + n_scene + "_water", var_f6c5842);
	s_goal = struct::get(self.target, "targetname");
	wait(10);
	var_f6c5842 kill();
}

/*
	Name: function_fed6294
	Namespace: namespace_4c73eafb
	Checksum: 0x91380E6B
	Offset: 0x28E8
	Size: 0x45B
	Parameters: 0
	Flags: None
*/
function function_fed6294()
{
	level endon("hash_a254d667");
	e_volume = undefined;
	var_b11bb32e = GetEntArray("surgical_facility_dark_battle_volume", "targetname");
	a_s_spawn_points = struct::get_array(self.target);
	v_origin = self.origin;
	n_radius = self.radius;
	e_temp = spawn("script_origin", self.origin + VectorScale((0, 0, 1), 10));
	foreach(var_95b9818c in var_b11bb32e)
	{
		if(e_temp istouching(var_95b9818c))
		{
			e_volume = var_95b9818c;
		}
	}
	e_temp util::self_delete();
	a_s_spawn_points = Array::randomize(a_s_spawn_points);
	self waittill("trigger");
	var_fa08d055 = 0;
	foreach(player in level.players)
	{
		if(player istouching(e_volume))
		{
			var_fa08d055++;
		}
	}
	switch(var_fa08d055)
	{
		case 1:
		{
			var_3548bc79 = 2;
			break;
		}
		case 2:
		{
			var_3548bc79 = 3;
			break;
		}
		case 3:
		{
			var_3548bc79 = 5;
			break;
		}
		case 4:
		{
			var_3548bc79 = 7;
			break;
		}
	}
	var_f66bfce8 = 0;
	var_64e85e6d = GetAISpeciesArray("all", "robot");
	foreach(var_f6c5842 in var_64e85e6d)
	{
		if(var_f6c5842 istouching(var_95b9818c))
		{
			var_f66bfce8++;
		}
	}
	foreach(s_spawn_point in a_s_spawn_points)
	{
		if(n_index < var_3548bc79 && var_f66bfce8 < 24)
		{
			level thread function_454f9298(s_spawn_point, n_index);
		}
	}
	level flag::set("water_robot_spawned");
}

/*
	Name: function_454f9298
	Namespace: namespace_4c73eafb
	Checksum: 0x278191CB
	Offset: 0x2D50
	Size: 0x173
	Parameters: 2
	Flags: None
*/
function function_454f9298(s_spawn_point, n_index)
{
	var_dc854c29 = GetEnt("surgical_facility_spawner", "targetname");
	if(n_index > 0)
	{
		wait(n_index + RandomFloatRange(0.5, 1.5));
	}
	playFX(level._effect["water_rise"], s_spawn_point.origin);
	var_f6c5842 = var_dc854c29 spawner::spawn(1);
	var_f6c5842 ai::set_behavior_attribute("rogue_control", "forced_level_2");
	s_spawn_point scene::Play("cin_sgen_15_04_robot_ambush_aie_arise_robot0" + randomIntRange(1, 3) + "_water", var_f6c5842);
	var_f6c5842 thread namespace_cba4cc55::function_c22db411(2);
	var_f6c5842 clientfield::set("sndStepSet", 1);
}

/*
	Name: function_69df7be3
	Namespace: namespace_4c73eafb
	Checksum: 0xF2D63946
	Offset: 0x2ED0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_69df7be3()
{
	str_targetname = self.target;
	level thread namespace_cba4cc55::function_423cfae8(str_targetname, "open");
	self waittill("trigger", ent);
	if(!isdefined(level.var_b5a36ce0))
	{
		level.var_b5a36ce0 = 1;
	}
	else
	{
		level.var_b5a36ce0++;
	}
	if(level.var_b5a36ce0 < 3)
	{
		level scene::stop("cin_sgen_14_01_humanlab_vign_deadbodies", 1);
		level thread namespace_cba4cc55::function_423cfae8(str_targetname, "close");
	}
}

/*
	Name: function_5f76850f
	Namespace: namespace_4c73eafb
	Checksum: 0x172EF5FB
	Offset: 0x2FA8
	Size: 0x393
	Parameters: 2
	Flags: None
*/
function function_5f76850f(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::complete("cp_level_sgen_descend_into_core");
		objectives::complete("cp_level_sgen_goto_signal_source");
		level thread function_f229e2b5();
		load::function_a2995f22();
	}
	level thread function_bed8321d();
	level.var_b0d148eb = 6 + level.players.size * 4;
	level clientfield::set("w_underwater_state", 1);
	level util::clientNotify("sndRHStart");
	level thread function_683fbc9();
	level thread function_cc91d61d();
	level thread function_6027d85b();
	namespace_646f304f::function_4ef8cf79();
	trigger::wait_till("weapons_research_vo");
	level flag::set("weapons_research_vo_start");
	level flag::wait_till("weapons_research_vo_done");
	a_ai = GetAITeamArray("team3");
	var_d11bed07 = [];
	foreach(ai in a_ai)
	{
		if(isdefined(ai.activated) && ai.activated)
		{
			if(!isdefined(var_d11bed07))
			{
				var_d11bed07 = [];
			}
			else if(!IsArray(var_d11bed07))
			{
				var_d11bed07 = Array(var_d11bed07);
			}
			var_d11bed07[var_d11bed07.size] = ai;
		}
	}
	if(var_d11bed07.size)
	{
		Array::run_all(var_d11bed07, &ai::set_behavior_attribute, "rogue_control_speed", "sprint");
		Array::wait_till(var_d11bed07, "death");
		wait(2);
	}
	skipto::function_be8adfb8("charging_station");
}

/*
	Name: function_9724b9d5
	Namespace: namespace_4c73eafb
	Checksum: 0x83768FF4
	Offset: 0x3348
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_9724b9d5(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_bed8321d
	Namespace: namespace_4c73eafb
	Checksum: 0x80718A3B
	Offset: 0x3378
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_bed8321d()
{
	var_3067ee68 = GetAITeamArray("axis", "team3");
	foreach(var_9b203de1 in var_3067ee68)
	{
		if(isalive(var_9b203de1))
		{
			var_9b203de1 kill();
			util::wait_network_frame();
		}
	}
}

/*
	Name: function_683fbc9
	Namespace: namespace_4c73eafb
	Checksum: 0xCAB63431
	Offset: 0x3460
	Size: 0x843
	Parameters: 0
	Flags: None
*/
function function_683fbc9()
{
	Array::run_all(GetEntArray("charging_station_flood_trigger", "script_noteworthy"), &SetInvisibleToAll);
	Array::thread_all(GetSpawnerArray("charging_station_corner_spawner", "script_noteworthy"), &spawner::add_spawn_function, &function_e55310df);
	var_7082999f = struct::get_array("charging_station_spawn_point");
	var_e95eb09f = GetEnt("charging_station_trigger", "targetname");
	foreach(s_spawn_point in var_7082999f)
	{
		s_spawn_point function_471a9c28();
		if(n_index % 2 == 0)
		{
			util::wait_network_frame();
		}
	}
	var_8b8ed7a5 = util::spawn_model("tag_origin");
	var_e95eb09f.var_7082999f = [];
	var_e95eb09f.var_7082999f["left"] = [];
	var_e95eb09f.var_7082999f["right"] = [];
	var_e95eb09f.var_57783f19 = [];
	var_e95eb09f.var_426817d3 = [];
	var_e95eb09f.var_426817d3["right"] = [];
	var_e95eb09f.var_426817d3["left"] = [];
	var_e95eb09f.a_volumes = GetEntArray(var_e95eb09f.target, "targetname");
	foreach(s_spawn_point in var_7082999f)
	{
		var_8b8ed7a5.origin = s_spawn_point.origin;
		foreach(e_volume in var_e95eb09f.a_volumes)
		{
			if(var_8b8ed7a5 istouching(e_volume) && s_spawn_point.script_noteworthy === "real")
			{
				if(e_volume.script_noteworthy == "left_volume")
				{
					if(!isdefined(var_e95eb09f.var_7082999f["left"]))
					{
						var_e95eb09f.var_7082999f["left"] = [];
					}
					else if(!IsArray(var_e95eb09f.var_7082999f["left"]))
					{
						var_e95eb09f.var_7082999f["left"] = Array(var_e95eb09f.var_7082999f["left"]);
					}
					var_e95eb09f.var_7082999f["left"][var_e95eb09f.var_7082999f["left"].size] = s_spawn_point;
				}
				else if(!isdefined(var_e95eb09f.var_7082999f["right"]))
				{
					var_e95eb09f.var_7082999f["right"] = [];
				}
				else if(!IsArray(var_e95eb09f.var_7082999f["right"]))
				{
					var_e95eb09f.var_7082999f["right"] = Array(var_e95eb09f.var_7082999f["right"]);
				}
				var_e95eb09f.var_7082999f["right"][var_e95eb09f.var_7082999f["right"].size] = s_spawn_point;
				if(s_spawn_point.script_string === "timed_start")
				{
					if(!isdefined(var_e95eb09f.var_57783f19))
					{
						var_e95eb09f.var_57783f19 = [];
					}
					else if(!IsArray(var_e95eb09f.var_57783f19))
					{
						var_e95eb09f.var_57783f19 = Array(var_e95eb09f.var_57783f19);
					}
					var_e95eb09f.var_57783f19[var_e95eb09f.var_57783f19.size] = s_spawn_point;
					continue;
				}
				if(s_spawn_point.script_string === "left_solo_start")
				{
					if(!isdefined(var_e95eb09f.var_426817d3["left"]))
					{
						var_e95eb09f.var_426817d3["left"] = [];
					}
					else if(!IsArray(var_e95eb09f.var_426817d3["left"]))
					{
						var_e95eb09f.var_426817d3["left"] = Array(var_e95eb09f.var_426817d3["left"]);
					}
					var_e95eb09f.var_426817d3["left"][var_e95eb09f.var_426817d3["left"].size] = s_spawn_point;
					continue;
				}
				if(s_spawn_point.script_string === "right_solo_start")
				{
					if(!isdefined(var_e95eb09f.var_426817d3["right"]))
					{
						var_e95eb09f.var_426817d3["right"] = [];
					}
					else if(!IsArray(var_e95eb09f.var_426817d3["right"]))
					{
						var_e95eb09f.var_426817d3["right"] = Array(var_e95eb09f.var_426817d3["right"]);
					}
					var_e95eb09f.var_426817d3["right"][var_e95eb09f.var_426817d3["right"].size] = s_spawn_point;
				}
			}
		}
	}
	var_8b8ed7a5 util::self_delete();
	var_e95eb09f thread function_14ae62b8();
}

/*
	Name: function_f229e2b5
	Namespace: namespace_4c73eafb
	Checksum: 0xC1420EB
	Offset: 0x3CB0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f229e2b5()
{
	objectives::breadcrumb("charging_station_breadcrumb");
	objectives::set("cp_level_sgen_goto_server_room_indicator", struct::get("pallas_elevator_descent_objective"));
}

/*
	Name: function_cc91d61d
	Namespace: namespace_4c73eafb
	Checksum: 0xFE5F8C8A
	Offset: 0x3D08
	Size: 0x429
	Parameters: 0
	Flags: None
*/
function function_cc91d61d()
{
	s_start_point = struct::get("charging_station_power_on");
	var_197d929 = struct::get(s_start_point.target);
	trigger::wait_till("enter_charging_station", undefined, undefined, 0);
	util::delay(1.5, undefined, &function_54efd092);
	util::delay(0.25, undefined, &function_fe4282f);
	var_64e85e6d = GetEntArray("charging_station_ai", "targetname");
	var_fbbef3a = GetEntArray("charging_station_mdl", "targetname");
	var_35590ba = ArrayCombine(var_64e85e6d, var_fbbef3a, 0, 0);
	var_bd95641e = [];
	foreach(e_robot in var_35590ba)
	{
		n_index = namespace_cba4cc55::round_up_to_ten(Int(e_robot.origin[0]));
		if(!isdefined(var_bd95641e[n_index]))
		{
			var_bd95641e[n_index] = [];
		}
		if(!isdefined(var_bd95641e[n_index]))
		{
			var_bd95641e[n_index] = [];
		}
		else if(!IsArray(var_bd95641e[n_index]))
		{
			var_bd95641e[n_index] = Array(var_bd95641e[n_index]);
		}
		var_bd95641e[n_index][var_bd95641e[n_index].size] = e_robot;
	}
	var_6572010 = getArrayKeys(var_bd95641e);
	var_d6c4ab70 = Array::sort_by_value(var_6572010);
	foreach(n_key in var_d6c4ab70)
	{
		foreach(e_robot in var_bd95641e[n_key])
		{
			if(isai(e_robot))
			{
				e_robot ai::set_behavior_attribute("rogue_control", "forced_level_1");
				continue;
			}
			e_robot clientfield::set("turn_fake_robot_eye", 1);
		}
		wait(0.2);
	}
}

/*
	Name: function_fe4282f
	Namespace: namespace_4c73eafb
	Checksum: 0xD627A063
	Offset: 0x4140
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_fe4282f()
{
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("damage_light");
	}
}

/*
	Name: function_e55310df
	Namespace: namespace_4c73eafb
	Checksum: 0x70D462E9
	Offset: 0x41E0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e55310df()
{
	self ai::set_behavior_attribute("rogue_control", "forced_level_2");
	self ai::set_behavior_attribute("rogue_control_speed", "sprint");
}

/*
	Name: function_5e9ba6b0
	Namespace: namespace_4c73eafb
	Checksum: 0xF1F8A564
	Offset: 0x4240
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_5e9ba6b0(str_flag)
{
	self endon("trigger");
	if(!level flag::exists(str_flag))
	{
		level flag::init(str_flag);
	}
	level flag::wait_till(str_flag);
}

/*
	Name: function_14ae62b8
	Namespace: namespace_4c73eafb
	Checksum: 0x66DD27D7
	Offset: 0x42A8
	Size: 0x515
	Parameters: 0
	Flags: None
*/
function function_14ae62b8()
{
	level endon("hash_8b1af0b6");
	if(!level flag::exists("charging_chamber_spawn_gate"))
	{
		level flag::init("charging_chamber_spawn_gate");
	}
	self thread function_16c18dca();
	self waittill("trigger", e_player);
	if(level.players.size == 1 && !e_player issprinting())
	{
		trigger::wait_till("trig_solo_walk_spawns");
	}
	level thread namespace_d40478f6::function_29597dc9();
	level util::clientNotify("sndRHStop");
	level.var_65e3a64d = 0;
	var_72c8d114 = 0;
	var_63f2fbaf = 0;
	while(level.var_b0d148eb > 0)
	{
		s_spawn_point = undefined;
		var_7082999f = [];
		if(self.var_ba18db07 == "right" && self.var_7082999f["right"].size > 0)
		{
			var_7082999f = ArrayCopy(self.var_7082999f["right"]);
		}
		else if(self.var_ba18db07 == "left" && self.var_7082999f["left"].size > 0)
		{
			var_7082999f = ArrayCopy(self.var_7082999f["left"]);
		}
		else
		{
			var_7082999f = ArrayCombine(self.var_7082999f["left"], self.var_7082999f["right"], 0, 0);
		}
		if(var_7082999f.size == 0)
		{
			break;
		}
		if(!var_72c8d114 && level.players.size == 1 && self.var_ba18db07 != "both" && self.var_426817d3[self.var_ba18db07].size > 0)
		{
			s_spawn_point = Array::random(self.var_426817d3[self.var_ba18db07]);
			ArrayRemoveValue(self.var_426817d3[self.var_ba18db07], s_spawn_point);
			if(self.var_426817d3[self.var_ba18db07].size == 0)
			{
				var_72c8d114 = 1;
			}
		}
		if(var_72c8d114 && !var_63f2fbaf)
		{
			foreach(var_3bfe0114 in self.var_57783f19)
			{
				ArrayRemoveValue(self.var_7082999f["right"], var_3bfe0114);
				ArrayRemoveValue(self.var_7082999f["left"], var_3bfe0114);
			}
			var_63f2fbaf = 1;
		}
		if(!isdefined(s_spawn_point))
		{
			s_spawn_point = Array::random(var_7082999f);
		}
		if(!(isdefined(s_spawn_point.activated) && s_spawn_point.activated))
		{
			s_spawn_point notify("hash_c6c70474");
			level.var_65e3a64d++;
			if(level.var_65e3a64d < 4)
			{
				wait(0.1 + 0.1 * level.var_65e3a64d);
			}
			else
			{
				wait(1.5 / level.players.size);
			}
		}
		ArrayRemoveValue(self.var_7082999f["right"], s_spawn_point);
		ArrayRemoveValue(self.var_7082999f["left"], s_spawn_point);
		wait(0.05);
	}
	self notify("hash_dd4c949f");
}

/*
	Name: function_16c18dca
	Namespace: namespace_4c73eafb
	Checksum: 0x52C97F92
	Offset: 0x47C8
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_16c18dca()
{
	self endon("death");
	self endon("hash_dd4c949f");
	self.var_ba18db07 = "";
	while(1)
	{
		self.var_ba18db07 = "";
		var_57da092c = 0;
		var_e738900b = 0;
		foreach(e_volume in self.a_volumes)
		{
			foreach(e_player in level.activePlayers)
			{
				if(e_player istouching(e_volume))
				{
					if(e_volume.script_noteworthy == "left_volume")
					{
						var_57da092c = 1;
					}
					else
					{
						var_e738900b = 1;
					}
					break;
				}
			}
		}
		if(var_e738900b && var_57da092c)
		{
			self.var_ba18db07 = "both";
		}
		else if(var_e738900b)
		{
			self.var_ba18db07 = "right";
		}
		else
		{
			self.var_ba18db07 = "left";
		}
		wait(0.25);
	}
}

/*
	Name: function_54efd092
	Namespace: namespace_4c73eafb
	Checksum: 0x36751B4A
	Offset: 0x49C8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_54efd092()
{
	exploder::exploder("charging_station_001");
	wait(0.5);
	exploder::exploder("charging_station_002");
	wait(0.5);
	exploder::exploder("charging_station_005");
	wait(0.5);
	exploder::exploder("charging_station_006");
	wait(0.5);
	exploder::exploder("charging_station_003");
	wait(0.5);
	exploder::exploder("charging_station_007");
	wait(0.5);
	exploder::exploder("charging_station_004");
	wait(0.5);
	exploder::exploder("charging_station_008");
}

/*
	Name: function_e95882dc
	Namespace: namespace_4c73eafb
	Checksum: 0xBF3FCC2F
	Offset: 0x4AD0
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_e95882dc(var_c910f140)
{
	if(!isdefined(var_c910f140))
	{
		var_c910f140 = 1;
	}
	var_dc854c29 = GetEnt("charging_station_spawner", "targetname");
	if(isdefined(var_c910f140) && var_c910f140)
	{
		self.var_f6c5842 = var_dc854c29 spawner::spawn(1);
		self.var_f6c5842.targetname = "charging_station_ai";
		self.var_f6c5842 ForceTeleport(self.origin, self.angles);
		self.var_f6c5842.script_objective = "descent";
		self thread function_ccf8a1e1();
	}
	else
	{
		self.var_1479fabb = util::spawn_model("c_cia_robot_grunt_1", self.origin, self.angles);
		self.var_1479fabb.targetname = "charging_station_mdl";
		self.var_1479fabb.script_objective = "descent";
		self thread function_ef879c87();
	}
}

/*
	Name: function_471a9c28
	Namespace: namespace_4c73eafb
	Checksum: 0xB44E0DD1
	Offset: 0x4C50
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_471a9c28()
{
	self.angles = self.angles * -1;
	self.origin = self.origin + VectorScale((0, 0, -1), 5.5);
	self.var_95fa96af = self.origin[2] > -5025;
	if(self.script_noteworthy === "fail")
	{
		self function_e95882dc(0);
	}
	else if(self.script_noteworthy === "real")
	{
		self function_e95882dc();
		if(!(isdefined(self.var_95fa96af) && self.var_95fa96af))
		{
			var_bfd88f7f = struct::get(self.target);
			self.var_1a2b55a5 = util::spawn_model("p7_fxanim_cp_sgen_charging_station_doors_mod", var_bfd88f7f.origin, var_bfd88f7f.angles);
			self.var_1a2b55a5.script_objective = "flood_combat";
			self.var_1a2b55a5.targetname = "pod_track_model";
		}
		self.var_f6c5842 thread scene::Play("cin_sgen_16_01_charging_station_aie_idle_robot01", self.var_f6c5842);
		self.var_f6c5842 thread namespace_cba4cc55::function_359855();
	}
	else if(self.script_noteworthy === "static")
	{
		self.var_256c1ec4 = util::spawn_model("tag_origin", self.origin, self.angles);
		self.var_256c1ec4.script_objective = "charging_station";
		self.var_256c1ec4.targetname = "charging_station_mdl";
	}
}

/*
	Name: function_ef879c87
	Namespace: namespace_4c73eafb
	Checksum: 0xBF34770B
	Offset: 0x4E68
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_ef879c87()
{
	var_119839ea = self.origin[0] + randomIntRange(64, 200);
	self.var_1479fabb useanimtree(-1);
	self.var_1479fabb AnimScripted("idle_robot01", self.origin, self.angles + VectorScale((0, 1, 0), 180), "ch_sgen_16_01_charging_station_aie_idle_robot01");
	var_602f3c61 = 0;
	while(!var_602f3c61)
	{
		foreach(player in level.activePlayers)
		{
			if(player.origin[0] < var_119839ea)
			{
				var_602f3c61 = 1;
				break;
			}
		}
		wait(0.2);
	}
	self.var_1479fabb AnimScripted("fail_robot01", self.origin, self.angles + VectorScale((0, 1, 0), 180), "ch_sgen_16_01_charging_station_aie_fail_robot01");
}

/*
	Name: function_ccf8a1e1
	Namespace: namespace_4c73eafb
	Checksum: 0x960E602D
	Offset: 0x5020
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_ccf8a1e1()
{
	level endon("hash_38764c78");
	str_event = self util::waittill_any_return("awaken", "post_pallas");
	self.activated = 1;
	self.var_f6c5842.activated = 1;
	if(str_event === "awaken")
	{
		/#
			if(isdefined(level.var_65e3a64d))
			{
				iprintln("Dev Block strings are not supported" + level.var_65e3a64d);
			}
		#/
		level.var_b0d148eb--;
		if(isdefined(self.var_1a2b55a5))
		{
			self.var_1a2b55a5 SetModel("p7_fxanim_cp_sgen_charging_station_doors_break_mod");
		}
		var_e2f27339 = "cin_sgen_16_01_charging_station_aie_awaken_robot0";
		if(isdefined(level.var_65e3a64d) && level.var_65e3a64d < 3)
		{
			if(self.angles[1] == -90)
			{
			}
			else
			{
			}
			var_e2f27339 = 3 + 6;
		}
		else if(self.angles[1] == -90)
		{
		}
		else
		{
		}
		var_e2f27339 = randomIntRange(1, 4) + randomIntRange(4, 7);
		if(isdefined(self.var_1a2b55a5))
		{
			if(math::cointoss())
			{
			}
			else
			{
			}
			var_e0dc8ecf = "p7_fxanim_cp_sgen_charging_station_break_03_bundle";
			if(isdefined(self.var_95fa96af) && self.var_95fa96af)
			{
			}
			else
			{
			}
			var_e0dc8ecf = var_e0dc8ecf;
			self thread function_b9349771(var_e0dc8ecf);
		}
		if(isdefined(self.var_95fa96af) && self.var_95fa96af)
		{
		}
		else
		{
		}
		var_e2f27339 = var_e2f27339;
		self.var_f6c5842 thread scene::Play(var_e2f27339, self.var_f6c5842);
		self.var_f6c5842 thread namespace_cba4cc55::function_c22db411(2);
		wait(3);
		level flag::set("pod_robot_spawned");
	}
}

/*
	Name: function_b9349771
	Namespace: namespace_4c73eafb
	Checksum: 0x4E87AAF3
	Offset: 0x52E0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_b9349771(var_e0dc8ecf)
{
	self.var_f6c5842 endon("death");
	self.var_f6c5842 waittill("breakGlass");
	self.var_1a2b55a5 thread scene::Play(var_e0dc8ecf, self.var_1a2b55a5);
}

/*
	Name: function_6027d85b
	Namespace: namespace_4c73eafb
	Checksum: 0x62CC186D
	Offset: 0x5340
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_6027d85b()
{
	thread function_a022fef1();
	level dialog::function_13b3b16a("plyr_kane_optics_back_on_0", 1);
	level dialog::remote("kane_copy_that_i_m_pic_0", 0.7);
	trigger::wait_till("enter_charging_station", undefined, undefined, 0);
	level dialog::function_13b3b16a("plyr_robot_charging_stora_0");
	level dialog::remote("kane_easy_take_your_ti_0");
	level dialog::remote("hend_kane_i_got_separate_0");
	level flag::wait_till("pod_robot_spawned");
	level dialog::remote("kane_get_outta_there_i_g_0", 2);
	wait(5);
	level flag::wait_till_timeout(15, "weapons_research_vo_start");
	level thread namespace_d40478f6::function_89871797();
	level dialog::function_13b3b16a("plyr_you_know_this_is_sta_0");
	level dialog::remote("kane_the_chemicals_releas_0", 1);
	level dialog::remote("hend_anyone_else_sense_a_0", 0.5);
	level flag::set("weapons_research_vo_done");
}

/*
	Name: function_a022fef1
	Namespace: namespace_4c73eafb
	Checksum: 0xF5225253
	Offset: 0x5530
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a022fef1()
{
	wait(0.5);
	playsoundatposition("gdt_oed_on", (0, 0, 0));
}


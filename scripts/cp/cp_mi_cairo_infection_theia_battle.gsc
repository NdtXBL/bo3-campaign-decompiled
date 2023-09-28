#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_siegebot_theia;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_sim_reality_starts;
#using scripts\cp\cp_mi_cairo_infection_sound;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_c3900363;

/*
	Name: main
	Namespace: namespace_c3900363
	Checksum: 0xB7F95371
	Offset: 0x1340
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function main()
{
	setup_scenes();
	level flag::init("player_exiting_downed_vtol");
	level flag::init("vtol_intro_complete");
	level flag::init("sarah_battle_friendly_spawned");
	level flag::init("sarah_defeated");
	level flag::init("sarah_interface_started");
	level flag::init("sarah_interface_done");
	level.var_b9a15c1e = GetEntArray("inf_wrecked_vtol", "targetname");
	level.var_377e3a8 = GetEnt("sarah_bash2_clip", "targetname");
	if(isdefined(level.var_377e3a8))
	{
		level.var_377e3a8 notsolid();
		level.var_377e3a8 connectpaths();
	}
	init_clientfields();
	level._effect["crashed_vtol_exp_fx"] = "explosions/fx_exp_quadtank_death_sm";
}

/*
	Name: init_clientfields
	Namespace: namespace_c3900363
	Checksum: 0xAC6C0BA8
	Offset: 0x14D8
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	n_clientbits = GetMinBitCountForNum(8);
	clientfield::register("world", "building_destruction_callback", 1, n_clientbits, "int");
	clientfield::register("world", "building_end_callback", 1, 1, "int");
	clientfield::register("world", "vtol_fog_bank", 1, 1, "int");
	clientfield::register("scriptmover", "sarah_tac_mode_disable", 1, 1, "int");
}

/*
	Name: setup_scenes
	Namespace: namespace_c3900363
	Checksum: 0x7F618689
	Offset: 0x15D0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function setup_scenes()
{
	scene::add_scene_func("cin_inf_03_01_interface_1st_dni_02", &function_3a66ee4d);
	scene::add_scene_func("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_c087a5cf);
	scene::add_scene_func("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_1bb0323c);
	scene::add_scene_func("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_45d8cfab);
	scene::add_scene_func("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_56c9a7f3);
	scene::add_scene_func("cin_inf_02_01_vign_interface_siegebot_bash", &function_68861104);
	scene::add_scene_func("cin_inf_02_01_vign_interface_siegebot_bash_2", &function_24b31974);
}

/*
	Name: function_b127971
	Namespace: namespace_c3900363
	Checksum: 0x55883963
	Offset: 0x16F8
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_b127971()
{
	var_2aa82b86 = GetEnt("vtol_intro", "targetname");
	var_2aa82b86 ShowPart("tag_console_center_screen_animate_d0");
	var_2aa82b86 ShowPart("tag_console_left_screen_animate_d0");
	var_2aa82b86 ShowPart("tag_console_right_screen_animate_d0");
	var_2aa82b86 Attach("veh_t7_mil_vtol_egypt_cabin_details_attch", "tag_body_animate");
	var_2aa82b86 Attach("veh_t7_mil_vtol_egypt_cabin_details_attch_screenglows", "tag_body_animate");
	var_b2c5be8 = GetEnt("vtol_nose", "targetname");
	var_b2c5be8 EnableLinkTo();
	var_b2c5be8 LinkTo(var_2aa82b86);
	var_b2c5be8 thread function_d147e0e1();
	var_5c4b60ce = GetEntArray("light_vtol_flyin", "targetname");
	foreach(light in var_5c4b60ce)
	{
		light LinkTo(var_2aa82b86);
		light thread function_5a717a52();
	}
	var_785aaccf = GetEnt("light_vtol_flyin_spotlight", "targetname");
	if(isdefined(var_785aaccf))
	{
		var_785aaccf LinkTo(var_2aa82b86, "tag_winch");
		var_785aaccf thread function_5a717a52();
	}
}

/*
	Name: function_5a717a52
	Namespace: namespace_c3900363
	Checksum: 0x597B6FC8
	Offset: 0x1990
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5a717a52()
{
	level flag::wait_till("player_exiting_downed_vtol");
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: function_d147e0e1
	Namespace: namespace_c3900363
	Checksum: 0x89CA2F8E
	Offset: 0x19E0
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_d147e0e1()
{
	var_edff213c = 5;
	self HidePart("tag_glass_d1_animate");
	for(i = 1; i <= var_edff213c; i++)
	{
		self HidePart("tag_glass" + i + "_d1_animate");
	}
	self HidePart("tag_glass_d2_animate");
	for(i = 1; i <= var_edff213c; i++)
	{
		self HidePart("tag_glass" + i + "_d2_animate");
	}
	self HidePart("tag_glass4_d3_animate");
	level waittill("hash_3692720b");
	self Attach("veh_t7_mil_vtol_egypt_screens_d1", "tag_nose_animate");
	self HidePart("tag_glass_animate");
	for(i = 1; i <= var_edff213c; i++)
	{
		self HidePart("tag_glass" + i + "_animate");
	}
	self ShowPart("tag_glass_d2_animate");
	for(i = 1; i <= var_edff213c; i++)
	{
		self ShowPart("tag_glass" + i + "_d2_animate");
	}
	level flag::wait_till("player_exiting_downed_vtol");
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: function_674469e5
	Namespace: namespace_c3900363
	Checksum: 0x8F23112E
	Offset: 0x1C38
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_674469e5()
{
	while(1)
	{
		level waittill("theia_preparing_javelin_attack");
		if(RandomInt(100) > 60)
		{
			level.var_2fd26037 dialog::say("hend_javelin_missiles_inc_0", 1);
		}
		else if(RandomInt(100) < 40)
		{
			level.var_2fd26037 dialog::say("hend_javelin_s_inbound_0", 1);
		}
	}
}

/*
	Name: function_65daad32
	Namespace: namespace_c3900363
	Checksum: 0xC5C7589D
	Offset: 0x1CE8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_65daad32()
{
	if(!level.var_a2488e6f)
	{
		level.var_2fd26037 dialog::say("hend_explosive_spikes_inc_0", 1);
	}
}

/*
	Name: function_dd8a78c6
	Namespace: namespace_c3900363
	Checksum: 0xC46DDC74
	Offset: 0x1D28
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_dd8a78c6()
{
	level.var_42189297 endon("death");
	level waittill("hash_9f92e1e");
	level.var_42189297 thread function_179a0141();
	level.var_42189297 thread function_d47c7e44();
	level thread function_674469e5();
}

/*
	Name: function_179a0141
	Namespace: namespace_c3900363
	Checksum: 0xCACE8CBF
	Offset: 0x1DA0
	Size: 0x1E9
	Parameters: 0
	Flags: None
*/
function function_179a0141()
{
	self endon("death");
	var_2c8bd13b = 0;
	while(1)
	{
		while(self vehicle_ai::get_current_state() == "groundCombat")
		{
			wait(2);
		}
		while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
		{
			wait(0.1);
		}
		level.var_a2488e6f = 1;
		str_state = self vehicle_ai::get_current_state();
		if(str_state == "combat" || str_state == "prepareDeath")
		{
			var_2c8bd13b++;
			if(var_2c8bd13b == 1)
			{
				level.var_2fd26037 dialog::say("hend_eyes_up_hall_s_take_0", 2);
				continue;
			}
			while(self vehicle_ai::get_current_state() == "combat" || self vehicle_ai::get_current_state() == "pain" || self vehicle_ai::get_current_state() == "prepareDeath")
			{
				wait(2);
			}
		}
		else if(str_state == "jumpUp" || str_state == "jumpDown")
		{
			level.var_2fd26037 dialog::say("hend_she_s_on_the_move_0", 1);
		}
		level.var_a2488e6f = 0;
		wait(1);
	}
}

/*
	Name: function_d47c7e44
	Namespace: namespace_c3900363
	Checksum: 0x8CE46970
	Offset: 0x1F98
	Size: 0x25F
	Parameters: 0
	Flags: None
*/
function function_d47c7e44()
{
	self endon("death");
	self thread function_7ef9b3ab();
	var_7884b12d = self.health;
	self thread function_3d8d9969();
	while(self.health > var_7884b12d * 0.7)
	{
		wait(0.1);
	}
	while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
	{
		wait(0.1);
	}
	level.var_a2488e6f = 1;
	level dialog::remote("kane_siege_bot_operating_0", 1);
	level.var_2fd26037 dialog::say("hend_we_gotta_get_through_0", 1);
	level.var_a2488e6f = 0;
	while(self.health > var_7884b12d * 0.4)
	{
		wait(0.1);
	}
	while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
	{
		wait(0.1);
	}
	level.var_a2488e6f = 1;
	level dialog::remote("kane_siege_bot_now_operat_0", 1);
	level.var_2fd26037 dialog::say("hend_her_shields_won_t_ho_0", 1);
	level.var_a2488e6f = 0;
	while(self.health > var_7884b12d * 0.1)
	{
		wait(0.1);
	}
	while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
	{
		wait(0.1);
	}
	level.var_a2488e6f = 1;
	level dialog::remote("kane_siege_bot_energy_dow_0", 1);
	level dialog::remote("kane_she_s_our_only_lead_0", 1);
	level.var_a2488e6f = 0;
}

/*
	Name: function_7ef9b3ab
	Namespace: namespace_c3900363
	Checksum: 0x3D4A0DF8
	Offset: 0x2200
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_7ef9b3ab()
{
	self waittill("death");
	wait(3);
	level.var_a2488e6f = 0;
}

/*
	Name: function_3d8d9969
	Namespace: namespace_c3900363
	Checksum: 0xC14D54BF
	Offset: 0x2228
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_3d8d9969()
{
	self waittill("death");
	while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
	{
		wait(0.1);
	}
	level.var_a2488e6f = 1;
	level dialog::remote("kane_she_s_down_she_s_do_0", 1);
	level.var_a2488e6f = 0;
}

/*
	Name: function_6e5389
	Namespace: namespace_c3900363
	Checksum: 0xA9BF52BD
	Offset: 0x22A0
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_6e5389(a_ents)
{
	level.var_42189297 endon("death");
	level flag::wait_till("sarah_battle_friendly_spawned");
	battlechatter::function_d9f49fba(0);
	level.var_9db406db dialog::say("khal_mech_suit_hostile_h_0");
	level dialog::remote("kane_looks_like_sarah_hal_0", 0.5);
	level dialog::function_13b3b16a("plyr_you_got_a_fix_on_tay_0", 2);
	level dialog::remote("kane_negative_0", 0.7);
	level dialog::function_13b3b16a("plyr_then_the_only_way_to_0", 1);
	level notify("hash_9f92e1e");
	level.var_9e921465 = 1;
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_2ffaa595
	Namespace: namespace_c3900363
	Checksum: 0x15330A3B
	Offset: 0x23F0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_2ffaa595()
{
	while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
	{
		wait(0.05);
	}
	level dialog::remote("kane_hurry_you_have_to_0", 0.5);
	function_b38700c3("kane_we_need_a_full_extra_0", 1);
	function_b38700c3("kane_i_know_this_isn_t_ea_0", 7);
	function_b38700c3("kane_no_sign_of_taylor_an_0", 8);
	function_b38700c3("kane_her_systems_are_fail_0", 5);
}

/*
	Name: function_b38700c3
	Namespace: namespace_c3900363
	Checksum: 0x148515C6
	Offset: 0x24C8
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_b38700c3(var_96896ff5, n_delay)
{
	if(!isdefined(n_delay))
	{
		n_delay = 0;
	}
	if(!level flag::get("sarah_interface_started"))
	{
		wait(n_delay);
		if(!level flag::get("sarah_interface_started"))
		{
			level dialog::remote(var_96896ff5);
		}
	}
}

/*
	Name: function_3a66ee4d
	Namespace: namespace_c3900363
	Checksum: 0xCD9D7D21
	Offset: 0x2558
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_3a66ee4d(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		level waittill("hash_4ad123af");
		foreach(player in level.activePlayers)
		{
			player cybercom::function_f8669cbf(1);
			player clientfield::increment_to_player("hack_dni_fx");
		}
		level.players[0] waittill("hash_814598ff");
		level thread namespace_36cbf523::function_eaf9c027("cp_infection_fs_interface");
	}
}

/*
	Name: function_45d8cfab
	Namespace: namespace_c3900363
	Checksum: 0x291CA292
	Offset: 0x2670
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_45d8cfab(a_ents)
{
	level waittill("hash_45d8cfab");
	level scene::init("cin_inf_02_01_vign_interface_siegebot_bash");
}

/*
	Name: function_56c9a7f3
	Namespace: namespace_c3900363
	Checksum: 0x51F52440
	Offset: 0x26B0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_56c9a7f3(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		level waittill("hash_9903f6a6");
		level util::delay(1, undefined, &function_f508734c);
	}
	else
	{
		level thread function_f508734c();
	}
}

/*
	Name: function_e25e4f9
	Namespace: namespace_c3900363
	Checksum: 0x8D1F352C
	Offset: 0x2728
	Size: 0x393
	Parameters: 2
	Flags: None
*/
function function_e25e4f9(str_objective, var_74cd64bc)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	load::function_73adcefc();
	objectives::set("cp_level_infection_find_dr");
	level function_b127971();
	function_516efb66();
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level scene::init("cin_inf_01_01_vtolarrival_1st_encounter_wires");
	level scene::init("cin_inf_01_01_vtolarrival_1st_encounter_v2");
	function_48e3f00e();
	level clientfield::set("vtol_fog_bank", 1);
	level thread function_69d9e05d();
	level thread function_4dd97558();
	level thread function_3513c0b9();
	level util::function_d8eaed3d(1);
	load::function_c32ba481();
	util::do_chyron_text(&"CP_MI_CAIRO_INFECTION_INTRO_LINE_1_FULL", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_1_SHORT", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_2_FULL", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_2_SHORT", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_3_FULL", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_3_SHORT", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_4_FULL", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_4_SHORT");
	if(isdefined(level.BZM_INFECTIONDialogue1Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue1Callback]]();
	}
	level thread namespace_eccdd5d1::function_2c69b4a0();
	level scene::add_scene_func("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_8b952c00);
	level scene::add_scene_func("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_3cb73539, "skip_completed");
	level thread scene::Play("cin_inf_01_01_vtolarrival_1st_encounter_wires");
	level thread scene::Play("cin_inf_01_01_vtolarrival_1st_encounter_sarah_cockpit_loop");
	level thread scene::Play("cin_inf_01_01_vtolarrival_1st_encounter_v2");
	level flag::wait_till("player_exiting_downed_vtol");
	level clientfield::set("gameplay_started", 1);
	function_99e62b85();
	level scene::stop("cin_inf_01_01_vtolarrival_1st_encounter_wires");
	objectives::complete("cp_level_infection_find_dr");
	scene::waittill_skip_sequence_completed();
	util::wait_network_frame();
	level thread util::clear_streamer_hint();
	skipto::function_be8adfb8("vtol_arrival");
}

/*
	Name: function_8b952c00
	Namespace: namespace_c3900363
	Checksum: 0xC214A475
	Offset: 0x2AC8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_8b952c00(a_ents)
{
	level waittill("teleport_players");
	level flag::set("player_exiting_downed_vtol");
	util::function_93831e79("vtol_arrival_coop_teleport");
}

/*
	Name: function_3cb73539
	Namespace: namespace_c3900363
	Checksum: 0xB2F02B5F
	Offset: 0x2B20
	Size: 0x469
	Parameters: 1
	Flags: None
*/
function function_3cb73539(a_ents)
{
	var_cca89d10 = Array("intro_friendly_vtol", "vtol_intro_veh1", "vtol_intro_veh3", "intro_friendly_vtol_vh");
	foreach(str_vehicle in var_cca89d10)
	{
		a_vehicles = GetEntArray(str_vehicle, "targetname");
		foreach(var_91e835c9 in a_vehicles)
		{
			if(isdefined(var_91e835c9))
			{
				var_91e835c9.delete_on_death = 1;
				var_91e835c9 notify("death");
				if(!isalive(var_91e835c9))
				{
					var_91e835c9 delete();
				}
			}
		}
	}
	var_8da4fac5 = GetEntArray("vtol_intro_veh1", "targetname");
	var_b3a7752e = GetEntArray("vtol_intro_veh2", "targetname");
	var_d9a9ef97 = GetEntArray("vtol_intro_veh3", "targetname");
	foreach(var_a66cc9c4 in var_8da4fac5)
	{
		var_a66cc9c4.delete_on_death = 1;
		var_a66cc9c4 notify("death");
		if(!isalive(var_a66cc9c4))
		{
			var_a66cc9c4 delete();
		}
	}
	foreach(var_a66cc9c4 in var_b3a7752e)
	{
		var_a66cc9c4.delete_on_death = 1;
		var_a66cc9c4 notify("death");
		if(!isalive(var_a66cc9c4))
		{
			var_a66cc9c4 delete();
		}
	}
	foreach(var_a66cc9c4 in var_d9a9ef97)
	{
		var_a66cc9c4.delete_on_death = 1;
		var_a66cc9c4 notify("death");
		if(!isalive(var_a66cc9c4))
		{
			var_a66cc9c4 delete();
		}
	}
}

/*
	Name: function_69d9e05d
	Namespace: namespace_c3900363
	Checksum: 0x70E4D20E
	Offset: 0x2F98
	Size: 0x381
	Parameters: 0
	Flags: None
*/
function function_69d9e05d()
{
	foreach(e_piece in level.var_b9a15c1e)
	{
		e_piece Hide();
	}
	var_5ff14e42 = GetEntArray("sarah_battle_launcher", "targetname");
	foreach(var_7e2968b3 in var_5ff14e42)
	{
		var_7e2968b3 ghost();
	}
	var_f0770462 = GetEntArray("sarah_battle_destructible", "script_noteworthy");
	foreach(e_destructible in var_f0770462)
	{
		e_destructible ghost();
	}
	var_da5600e3 = GetEntArray("sarah_battle_ammo", "targetname");
	foreach(var_4abed703 in var_da5600e3)
	{
		if(isdefined(var_4abed703.gameobject))
		{
			var_4abed703.gameobject gameobjects::set_model_visibility(0);
		}
	}
	level waittill("hash_9903f6a6");
	var_5865e335 = spawner::get_ai_group_ai("intro_friendly");
	foreach(var_bba6ddda in var_5865e335)
	{
		if(isdefined(var_bba6ddda))
		{
			var_bba6ddda delete();
		}
	}
}

/*
	Name: function_4dd97558
	Namespace: namespace_c3900363
	Checksum: 0x6652AD1B
	Offset: 0x3328
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function function_4dd97558()
{
	level waittill("hash_29e5a5dd");
	foreach(e_piece in level.var_b9a15c1e)
	{
		e_piece show();
	}
	function_a081beb1();
	var_5ff14e42 = GetEntArray("sarah_battle_launcher", "targetname");
	foreach(var_7e2968b3 in var_5ff14e42)
	{
		var_7e2968b3 show();
		util::wait_network_frame();
	}
	var_f0770462 = GetEntArray("sarah_battle_destructible", "script_noteworthy");
	foreach(e_destructible in var_f0770462)
	{
		e_destructible show();
		util::wait_network_frame();
	}
	var_da5600e3 = GetEntArray("sarah_battle_ammo", "targetname");
	foreach(var_4abed703 in var_da5600e3)
	{
		if(isdefined(var_4abed703.gameobject))
		{
			var_4abed703.gameobject gameobjects::set_model_visibility(1);
		}
		util::wait_network_frame();
	}
	exploder::exploder("sarah_battle_fire");
}

/*
	Name: function_1bb0323c
	Namespace: namespace_c3900363
	Checksum: 0x3F8FAB0E
	Offset: 0x3658
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_1bb0323c(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		if(level.var_c0e97bd == "vtol_arrival")
		{
			a_ents["sarah_siegebot"] vehicle::lights_off();
			a_ents["sarah_siegebot"] waittill("hash_c83ef708");
			a_ents["sarah_siegebot"] vehicle::lights_on();
		}
	}
}

/*
	Name: function_c087a5cf
	Namespace: namespace_c3900363
	Checksum: 0x39D1FA54
	Offset: 0x36F0
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_c087a5cf(a_ents)
{
	vh_vtol = a_ents["vtol_intro"];
	if(level.var_c0e97bd == "vtol_arrival")
	{
		level waittill("hash_9903f6a6");
	}
	vh_vtol HidePart("tag_wing_left_animate", vh_vtol.model, 1);
}

/*
	Name: function_99e62b85
	Namespace: namespace_c3900363
	Checksum: 0xAA2E82
	Offset: 0x3770
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_99e62b85()
{
	var_f2fdc837 = struct::get("s_sarah_battle_hendricks_start_pos");
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.var_2fd26037 ForceTeleport(var_f2fdc837.origin, var_f2fdc837.angles);
}

/*
	Name: function_8721a9e0
	Namespace: namespace_c3900363
	Checksum: 0x1A6CD674
	Offset: 0x37F8
	Size: 0x3FB
	Parameters: 2
	Flags: None
*/
function function_8721a9e0(str_objective, var_74cd64bc)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	if(!var_74cd64bc)
	{
		Array::thread_all(level.players, &namespace_36cbf523::function_e905c73c);
	}
	level.var_9e921465 = 0;
	level.var_a2488e6f = 0;
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.overridePlayerDamage = &function_6255dfdc;
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		exploder::exploder("sarah_battle_fire");
		function_48e3f00e();
		level thread function_8f97d54e(1);
		function_516efb66(var_74cd64bc);
		level thread scene::init("cin_inf_02_01_vign_interface_siegebot_bash");
		level thread scene::init("cin_inf_01_01_vtolarrival_1st_encounter_v2");
		level flag::set("vtol_intro_complete");
		level thread function_3513c0b9();
		load::function_a2995f22();
		level thread scene::skipto_end("cin_inf_01_01_vtolarrival_1st_encounter_v2", undefined, undefined, 0.85, 1);
		level waittill("hash_29e5a5dd");
		level thread function_f508734c();
		level flag::wait_till("player_exiting_downed_vtol");
		util::function_93831e79("vtol_arrival_coop_teleport");
		function_99e62b85();
	}
	level thread namespace_eccdd5d1::function_97020766();
	Array::thread_all(level.activePlayers, &coop::function_e9f7384d);
	exploder::exploder("sarah_battle_vtol_crash_fire");
	level.var_42189297 ai::set_ignoreme(0);
	level thread function_90de550e();
	level thread function_6e5389();
	level thread function_dd8a78c6();
	level thread function_a6425c73();
	function_96914e16();
	objectives::set("cp_level_infection_defeat_sarah", level.var_42189297);
	for(i = 0; i < level.players.size; i++)
	{
		level.players[i] DisableInvulnerability();
		level.players[i] namespace_f25bd8c8::function_ad15914d();
	}
	level flag::wait_till("sarah_battle_friendly_spawned");
	level.var_2fd26037 thread function_a2d6949a();
	level.var_9db406db thread function_a2d6949a();
}

/*
	Name: function_516efb66
	Namespace: namespace_c3900363
	Checksum: 0x3F5772AA
	Offset: 0x3C00
	Size: 0x30B
	Parameters: 1
	Flags: None
*/
function function_516efb66(var_6e2f783e)
{
	if(!isdefined(var_6e2f783e))
	{
		var_6e2f783e = 0;
	}
	level.var_42189297 = spawner::simple_spawn_single("sarah_boss");
	level.var_42189297 ai::set_ignoreall(1);
	level.var_42189297 ai::set_ignoreme(1);
	level.var_42189297.targetname = "sarah_siegebot";
	level.var_42189297 vehicle_ai::function_81b6f1ac();
	var_729f9335 = level.var_42189297 GetTagOrigin("tag_driver");
	var_febde835 = level.var_42189297 GetTagAngles("tag_driver");
	level.var_156d60f = util::spawn_model("c_hro_sarah_base", var_729f9335, var_febde835);
	level.var_156d60f SetHighDetail(0);
	level.var_156d60f.targetname = "sarah_driver";
	level.var_156d60f clientfield::set("sarah_tac_mode_disable", 1);
	if(var_6e2f783e)
	{
		level.var_156d60f function_76887c27();
	}
	CreateThreatBiasGroup("sarah_battle_seigebot");
	CreateThreatBiasGroup("players");
	setthreatbias("players", "sarah_battle_seigebot", 1000);
	level thread function_f5fcb226();
	callback::on_spawned(&on_player_spawn);
	level.var_42189297 SetThreatBiasGroup("sarah_battle_seigebot");
	foreach(player in level.players)
	{
		player SetThreatBiasGroup("players");
		player._spawn_time = GetTime();
	}
	function_70662d17();
}

/*
	Name: function_70662d17
	Namespace: namespace_c3900363
	Checksum: 0xBA1B36A0
	Offset: 0x3F18
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_70662d17()
{
	if(level.players.size <= 1)
	{
		threatbias = 900;
	}
	else
	{
		threatbias = 1000 + 300 * level.players.size - 1;
	}
	setthreatbias("players", "sarah_battle_seigebot", threatbias);
}

/*
	Name: on_player_spawn
	Namespace: namespace_c3900363
	Checksum: 0x9DFBC2B
	Offset: 0x3F98
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function on_player_spawn()
{
	self SetThreatBiasGroup("players");
	self._spawn_time = GetTime();
	function_70662d17();
}

/*
	Name: function_f5fcb226
	Namespace: namespace_c3900363
	Checksum: 0x5116A90F
	Offset: 0x3FE8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f5fcb226()
{
	level.var_42189297 endon("death");
	level waittill("ClonedEntity", clone);
	clone SetThreatBiasGroup("players");
}

/*
	Name: function_24cf26d5
	Namespace: namespace_c3900363
	Checksum: 0xB2CE1887
	Offset: 0x4040
	Size: 0x32F
	Parameters: 0
	Flags: None
*/
function function_24cf26d5()
{
	level.var_42189297 endon("death");
	var_cda8dd73 = [];
	Array::add(var_cda8dd73, level.var_2fd26037, 0);
	Array::add(var_cda8dd73, level.var_9db406db, 0);
	while(1)
	{
		level waittill("theia_preparing_spike_attack", target_origin);
		var_a4a6d439 = ArrayGetClosest(target_origin, var_cda8dd73);
		if(level.var_9e921465)
		{
			level thread function_65daad32();
		}
		nd_cover = function_9c1377d2(target_origin);
		if(var_a4a6d439 == level.var_2fd26037)
		{
			team = "team_hendricks";
		}
		else
		{
			team = "team_khalil";
		}
		a_allies = GetEntArray(team, "script_noteworthy");
		foreach(ai in a_allies)
		{
			ai.old_radius = ai.goalRadius;
			ai.goalRadius = 512;
		}
		var_a4a6d439 ai::set_ignoreall(1);
		var_a4a6d439 ai::force_goal(nd_cover, 32);
		var_a4a6d439 waittill("goal");
		var_a4a6d439 ClearForcedGoal();
		var_a4a6d439 ai::set_ignoreall(0);
		a_allies = GetEntArray(team, "script_noteworthy");
		foreach(ai in a_allies)
		{
			if(isdefined(ai.old_radius))
			{
				ai.goalRadius = ai.old_radius;
				ai.old_radius = undefined;
			}
		}
	}
}

/*
	Name: function_3513c0b9
	Namespace: namespace_c3900363
	Checksum: 0xBC4867B
	Offset: 0x4378
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_3513c0b9()
{
	var_10364988 = GetEntArray("building_trigs", "targetname");
	var_10364988 Array::thread_all(var_10364988, &function_19bda85d);
	if(level.var_c0e97bd == "vtol_arrival")
	{
		level thread function_ef7f1d9f();
	}
}

/*
	Name: function_19bda85d
	Namespace: namespace_c3900363
	Checksum: 0x64A5FC4E
	Offset: 0x4408
	Size: 0x17F
	Parameters: 0
	Flags: None
*/
function function_19bda85d()
{
	self.n_destroyed = 0;
	self.scene_num = 1;
	if(isdefined(self.script_int))
	{
		self.scene_num = self.script_int;
	}
	level.var_42189297 endon("death");
	level flag::wait_till("vtol_intro_complete");
	while(1)
	{
		self waittill("trigger", who);
		if(who == level.var_42189297)
		{
			if(self.script_noteworthy === "building_b" && self.n_destroyed == 0)
			{
				level notify("hash_f5d02307");
				level.var_42189297.dontchangestate = 1;
			}
			if(self.scene_num <= 2)
			{
				level thread function_3c458698(self.scene_num);
			}
			else
			{
				level clientfield::set("building_destruction_callback", self.scene_num);
			}
			self.n_destroyed++;
			self.scene_num++;
			if(self.n_destroyed == 2)
			{
				return;
			}
			while(who istouching(self))
			{
				wait(0.1);
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_ef7f1d9f
	Namespace: namespace_c3900363
	Checksum: 0xD2F8526C
	Offset: 0x4590
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_ef7f1d9f()
{
	var_db07a21e = GetEnt("building_a", "script_noteworthy");
	var_db07a21e.n_destroyed = 0;
	var_db07a21e.scene_num = 1;
	level waittill("hash_3692720b");
	if(!scene::is_skipping_in_progress())
	{
		level function_3c458698(var_db07a21e.scene_num);
	}
	else
	{
		level thread function_8f97d54e(1);
	}
	var_db07a21e.n_destroyed++;
	var_db07a21e.scene_num++;
	level waittill("hash_76c03f01");
	level flag::set("vtol_intro_complete");
}

/*
	Name: function_a081beb1
	Namespace: namespace_c3900363
	Checksum: 0xBB17F1C6
	Offset: 0x46A0
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_a081beb1()
{
	launchers = GetEntArray("sarah_battle_launcher", "targetname");
	for(i = 0; i < launchers.size; i++)
	{
		if(isdefined(launchers[i].script_int) && launchers[i].script_int > level.players.size)
		{
			launchers[i] delete();
		}
	}
}

/*
	Name: function_a5a3b915
	Namespace: namespace_c3900363
	Checksum: 0xF183C349
	Offset: 0x4758
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_a5a3b915()
{
	level.var_42189297 endon("death");
	var_8d2625e1 = struct::get_array("sarah_battle_magic_rpg", "targetname");
	weapon = GetWeapon("launcher_standard");
	while(1)
	{
		s_start_point = Array::random(var_8d2625e1);
		v_target = level.var_42189297.origin;
		v_end_point = (v_target[0] + RandomFloatRange(100 * -1, 100), v_target[1] + RandomFloatRange(100 * -1, 100), v_target[2] + RandomFloatRange(100 * -1, 100));
		MagicBullet(weapon, s_start_point.origin, v_end_point);
		wait(RandomFloatRange(2, 6));
	}
}

/*
	Name: function_a6425c73
	Namespace: namespace_c3900363
	Checksum: 0xE9ECDA7
	Offset: 0x48F8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_a6425c73()
{
	var_6748b62b = struct::get("crashed_vtol_explosion", "targetname");
	if(!isdefined(var_6748b62b))
	{
		return;
	}
	FORWARD = AnglesToForward(var_6748b62b.angles);
	player = Array::random(level.players);
	while(1)
	{
		if(player namespace_36cbf523::function_a84dcdf8(var_6748b62b))
		{
			playFX(level._effect["crashed_vtol_exp_fx"], var_6748b62b.origin, FORWARD);
			return;
		}
		wait(0.1);
		if(!isdefined(player))
		{
			player = Array::random(level.players);
		}
	}
}

/*
	Name: function_f508734c
	Namespace: namespace_c3900363
	Checksum: 0x7852668A
	Offset: 0x4A28
	Size: 0x227
	Parameters: 0
	Flags: None
*/
function function_f508734c()
{
	level.var_42189297 endon("death");
	level.var_9db406db = util::function_740f8516("khalil");
	level thread function_acea9315();
	level thread function_cc12870c();
	level thread function_5acf54bf();
	spawner::add_spawn_function_ai_group("initial_egypt_army", &function_278b6566);
	spawner::add_spawn_function_ai_group("reinforce_egypt_army", &function_ed2505ff);
	spawner::simple_spawn("sp_ally_egypt_army");
	level flag::set("sarah_battle_friendly_spawned");
	spawner::waittill_ai_group_amount_killed("initial_egypt_army", 4);
	var_e2f02570 = GetEntArray("t_reinforce", "targetname");
	var_e2f02570 = Array::randomize(var_e2f02570);
	foreach(var_b75ca74d in var_e2f02570)
	{
		var_b75ca74d trigger::use();
		wait(RandomFloatRange(7, 12));
		level notify("hash_d8096db5");
	}
}

/*
	Name: function_278b6566
	Namespace: namespace_c3900363
	Checksum: 0x8E262280
	Offset: 0x4C58
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_278b6566()
{
	self SetGoal(level.var_9db406db, 0, 1024);
	self.script_noteworthy = "team_khalil";
}

/*
	Name: function_ed2505ff
	Namespace: namespace_c3900363
	Checksum: 0x6A78B7EC
	Offset: 0x4C98
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_ed2505ff()
{
	self endon("death");
	self.overrideActorDamage = &function_1853d81a;
	self.accuracy = 0.2;
	self ai::set_ignoreme(1);
	self waittill("exited_vehicle");
	e_goal_volume = GetEnt("goal_volume_" + self.script_string, "targetname");
	self SetGoal(e_goal_volume);
	self waittill("goal");
	self ai::set_ignoreme(0);
	wait(10);
	if(math::cointoss())
	{
		self SetGoal(level.var_9db406db, 0, 1024);
		self.script_noteworthy = "team_khalil";
	}
	else
	{
		self SetGoal(level.var_2fd26037, 0, 1024);
		self.script_noteworthy = "team_hendricks";
	}
}

/*
	Name: function_1853d81a
	Namespace: namespace_c3900363
	Checksum: 0xFB768831
	Offset: 0x4DF8
	Size: 0xA5
	Parameters: 13
	Flags: None
*/
function function_1853d81a(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, damageFromUnderneath, modelIndex, partName)
{
	if(weapon == GetWeapon("spike_charge_siegebot_theia"))
	{
		iDamage = self.health + 100;
	}
	return iDamage;
}

/*
	Name: function_acea9315
	Namespace: namespace_c3900363
	Checksum: 0xD234A773
	Offset: 0x4EA8
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_acea9315()
{
	spawner::add_spawn_function_ai_group("friendly_wasp", &function_6c7a52c3);
	while(!level flag::get("sarah_defeated"))
	{
		if(spawner::get_ai_group_sentient_count("friendly_wasp") < 3)
		{
			spawner::simple_spawn_single("mg_wasp_ally");
		}
		wait(RandomFloatRange(3, 8));
	}
}

/*
	Name: function_6c7a52c3
	Namespace: namespace_c3900363
	Checksum: 0x4B9F7656
	Offset: 0x4F68
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_6c7a52c3()
{
	self endon("death");
	self.var_66ff806d = 1;
	self.var_32fb62ff = 0.2;
	self.no_group = 1;
	self SetTeam("allies");
	wait(RandomFloatRange(15, 25));
	if(!level flag::get("sarah_defeated"))
	{
		self kill();
	}
}

/*
	Name: function_b3d20adf
	Namespace: namespace_c3900363
	Checksum: 0x624881E2
	Offset: 0x5028
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_b3d20adf()
{
	level flag::wait_till("sarah_defeated");
	var_6e403395 = GetEntArray("amws_ally_intro_ai", "targetname");
	var_6e403395 = ArrayCombine(var_6e403395, GetEntArray("amws_ally_ai", "targetname"), 0, 0);
	foreach(var_69837b75 in var_6e403395)
	{
		var_69837b75 ai::set_ignoreall(1);
		var_69837b75.goalRadius = 16;
		var_69837b75 vehicle_ai::function_81b6f1ac();
	}
}

/*
	Name: function_cc12870c
	Namespace: namespace_c3900363
	Checksum: 0x1F1F1D5
	Offset: 0x5170
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_cc12870c()
{
	level thread function_b3d20adf();
	while(!level flag::get("sarah_defeated"))
	{
		if(spawner::get_ai_group_sentient_count("friendly_amws") < 2)
		{
			var_31e90922 = spawner::simple_spawn_single("amws_ally");
			var_31e90922.var_32fb62ff = 0.2;
			var_31e90922.health = 130;
			var_31e90922 SetTeam("allies");
		}
		wait(RandomFloatRange(10, 20));
	}
}

/*
	Name: function_a2d6949a
	Namespace: namespace_c3900363
	Checksum: 0x244F543D
	Offset: 0x5270
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_a2d6949a()
{
	self endon("death");
	level.var_42189297 endon("death");
	while(1)
	{
		n_dist = Distance(self.origin, level.var_42189297.origin);
		if(n_dist < 256 || n_dist > 1200)
		{
			self ai::set_ignoreall(1);
			nd_cover = function_9c1377d2(level.var_42189297.origin);
			self ai::force_goal(nd_cover, 32, 1);
			self waittill("goal");
			self ClearForcedGoal();
			self ai::set_ignoreall(0);
		}
		wait(1);
	}
}

/*
	Name: function_9c1377d2
	Namespace: namespace_c3900363
	Checksum: 0x50EC6321
	Offset: 0x53A0
	Size: 0x15D
	Parameters: 1
	Flags: None
*/
function function_9c1377d2(v_pos)
{
	var_9b71f11e = GetNodeArray("hero_cover", "targetname");
	var_8cc07584 = var_9b71f11e[0];
	n_dist = 0;
	foreach(node in var_9b71f11e)
	{
		var_c4e1f800 = Distance(v_pos, node.origin);
		if(var_c4e1f800 > n_dist && var_c4e1f800 > 256 && var_c4e1f800 < 1200 && !IsNodeOccupied(node))
		{
			var_8cc07584 = node;
			n_dist = var_c4e1f800;
		}
	}
	return var_8cc07584;
}

/*
	Name: function_5acf54bf
	Namespace: namespace_c3900363
	Checksum: 0x7CFD0313
	Offset: 0x5508
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_5acf54bf()
{
	level.var_42189297 endon("death");
	level waittill("hash_f5d02307");
	level thread function_e2f2e8a7("veh_spawn_technical_1", 1);
	spawner::waittill_ai_group_ai_count("initial_egypt_army", 4);
	level thread function_e2f2e8a7("veh_spawn_technical_2");
}

/*
	Name: function_e2f2e8a7
	Namespace: namespace_c3900363
	Checksum: 0x4829C9F6
	Offset: 0x5598
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_e2f2e8a7(var_7edf3031, b_scene)
{
	if(!isdefined(b_scene))
	{
		b_scene = 0;
	}
	if(!isdefined(var_7edf3031))
	{
		return;
	}
	e_spawner = GetEnt(var_7edf3031, "targetname");
	var_3ed4170d = spawner::simple_spawn_single(e_spawner);
	if(!isdefined(var_3ed4170d))
	{
		return;
	}
	ai_driver = spawner::simple_spawn_single("technical_driver");
	ai_driver thread vehicle::get_in(var_3ed4170d, "driver", 1);
	ai_gunner = spawner::simple_spawn_single("technical_gunner");
	ai_gunner thread vehicle::get_in(var_3ed4170d, "gunner1", 1);
	vehicle_start = GetVehicleNode(var_7edf3031 + "_start", "targetname");
	var_3ed4170d thread vehicle::get_on_and_go_path(vehicle_start);
	var_3ed4170d util::magic_bullet_shield();
	var_3ed4170d waittill("reached_end_node");
	if(isdefined(b_scene) && b_scene)
	{
		var_3ed4170d.driver = ai_driver;
		var_3ed4170d.gunner = ai_gunner;
		level.var_42189297 thread function_36b2a27b(var_3ed4170d);
		return;
	}
	var_3ed4170d util::stop_magic_bullet_shield();
	if(isalive(ai_driver))
	{
		ai_driver thread vehicle::get_out();
	}
	if(isalive(ai_gunner))
	{
		ai_gunner thread vehicle::get_out();
	}
}

/*
	Name: function_36b2a27b
	Namespace: namespace_c3900363
	Checksum: 0xAC61AACE
	Offset: 0x5800
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_36b2a27b(vehicle)
{
	vehicle.gunner.targetname = "truck_gunner";
	level util::waittill_either("theia_finished_platform_attack", "theia_preparing_javelin_attack");
	vehicle delete();
	vehicle.driver delete();
	self vehicle_ai::function_81b6f1ac();
	self scene::Play("cin_inf_02_01_vign_interface_siegebot_bash_2", self);
	self vehicle_ai::set_state("groundCombat");
	self.dontchangestate = 0;
	if(isdefined(level.var_377e3a8))
	{
		level.var_377e3a8 solid();
		level.var_377e3a8 disconnectpaths();
	}
}

/*
	Name: function_24b31974
	Namespace: namespace_c3900363
	Checksum: 0x57E61823
	Offset: 0x5930
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_24b31974(a_ents)
{
	a_ents["sarah_siegebot"] waittill("truck_crash");
	a_ents["truck_bash"] SetModel("veh_t7_civ_truck_pickup_tech_egypt_dead");
}

/*
	Name: function_6255dfdc
	Namespace: namespace_c3900363
	Checksum: 0x49515AD5
	Offset: 0x5988
	Size: 0xCB
	Parameters: 11
	Flags: None
*/
function function_6255dfdc(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, boneIndex)
{
	var_bdc821cf = 3;
	if(weapon == GetWeapon("spike_charge_siegebot_theia"))
	{
		if(isdefined(self.var_16bcd6ff) && self.var_16bcd6ff + var_bdc821cf * 1000 > GetTime())
		{
			return 0;
		}
		else
		{
			self.var_16bcd6ff = GetTime();
		}
	}
	return iDamage;
}

/*
	Name: function_6714d6be
	Namespace: namespace_c3900363
	Checksum: 0xFB77BFDB
	Offset: 0x5A60
	Size: 0x323
	Parameters: 2
	Flags: None
*/
function function_6714d6be(str_objective, var_74cd64bc)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		var_6de1bb68 = struct::get("hendricks_start_pos_sarah_battle_end", "targetname");
		level.var_2fd26037 ForceTeleport(var_6de1bb68.origin, var_6de1bb68.angles);
		level.var_9db406db = util::function_740f8516("khalil");
		var_28daa962 = struct::get("khalil_start_pos_sarah_battle_end", "targetname");
		level.var_9db406db ForceTeleport(var_28daa962.origin, var_28daa962.angles);
		function_516efb66(var_74cd64bc);
		level.var_42189297 vehicle_ai::set_state("groundCombat");
		level.var_42189297 util::stop_magic_bullet_shield();
		level.var_42189297 siegebot_theia::pain_toggle(0);
		level.var_42189297 vehicle::lights_off();
		level.var_42189297 DoDamage(level.var_42189297.health + 10000, level.var_42189297.origin, level.players[0]);
	}
	level thread function_d7904bda();
	if(var_74cd64bc)
	{
		function_48e3f00e();
		exploder::exploder("sarah_battle_vtol_crash_fire");
		exploder::exploder("sarah_battle_fire");
		level flag::set("vtol_intro_complete");
		level clientfield::set("building_end_callback", 1);
		level thread function_8f97d54e(1);
		level thread function_8f97d54e(2);
		level thread function_c05c7cfe();
		load::function_a2995f22();
	}
	battlechatter::function_d9f49fba(0);
}

/*
	Name: function_cbf00d30
	Namespace: namespace_c3900363
	Checksum: 0xC10D79CC
	Offset: 0x5D90
	Size: 0xA5
	Parameters: 1
	Flags: None
*/
function function_cbf00d30(str_menu)
{
	foreach(e_player in level.players)
	{
		e_player.var_3e317885 = e_player OpenLUIMenu(str_menu);
	}
}

/*
	Name: function_96914e16
	Namespace: namespace_c3900363
	Checksum: 0x2A3A51E7
	Offset: 0x5E40
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_96914e16()
{
	foreach(e_player in level.players)
	{
		if(isdefined(e_player.var_3e317885))
		{
			e_player CloseLUIMenu(e_player.var_3e317885);
			e_player.var_3e317885 = undefined;
		}
	}
}

/*
	Name: function_f72443b3
	Namespace: namespace_c3900363
	Checksum: 0x27A62C40
	Offset: 0x5F00
	Size: 0x93
	Parameters: 4
	Flags: None
*/
function function_f72443b3(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	level clientfield::set("vtol_fog_bank", 0);
	objectives::complete("cp_level_infection_find_dr");
	function_cf47c514(0);
}

/*
	Name: function_eaebdc16
	Namespace: namespace_c3900363
	Checksum: 0x9A6FFE0
	Offset: 0x5FA0
	Size: 0x73
	Parameters: 4
	Flags: None
*/
function function_eaebdc16(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	util::delay(0.1, undefined, &function_cf47c514, 1);
}

/*
	Name: function_e6eaed98
	Namespace: namespace_c3900363
	Checksum: 0x8F6092E8
	Offset: 0x6020
	Size: 0xAD
	Parameters: 4
	Flags: None
*/
function function_e6eaed98(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	allies = GetAITeamArray("allies");
	for(i = 0; i < allies.size; i++)
	{
		allies[i] delete();
	}
}

/*
	Name: clean_up
	Namespace: namespace_c3900363
	Checksum: 0xD1C14C54
	Offset: 0x60D8
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function clean_up()
{
	level.overridePlayerDamage = undefined;
	foreach(player in level.players)
	{
		self.var_16bcd6ff = undefined;
		self._spawn_time = undefined;
	}
}

/*
	Name: function_cf47c514
	Namespace: namespace_c3900363
	Checksum: 0xF7AD56D7
	Offset: 0x6170
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_cf47c514(b_enable)
{
	var_2a95256 = GetEnt("sarah_siegebot_death_clip", "targetname");
	if(isdefined(var_2a95256))
	{
		if(b_enable)
		{
			var_2a95256 show();
		}
		else
		{
			var_2a95256 Hide();
		}
	}
}

/*
	Name: function_d7904bda
	Namespace: namespace_c3900363
	Checksum: 0x7AF243D8
	Offset: 0x61F8
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_d7904bda()
{
	var_b1a4293e = util::spawn_model("tag_origin", level.var_42189297.origin, level.var_42189297.angles);
	var_b1a4293e.targetname = "tag_align_sarah";
	clean_up();
	scene::add_scene_func("cin_inf_03_01_interface_1st_dni_02", &function_ed02c344, "init");
	level scene::init("cin_inf_03_01_interface_1st_dni_02");
	level thread function_2ffaa595();
	level flag::wait_till("sarah_interface_done");
	level.var_2fd26037 util::unmake_hero("hendricks");
	level.var_2fd26037 util::self_delete();
	level.var_9db406db util::unmake_hero("khalil");
	level.var_9db406db util::self_delete();
	if(isdefined(level.var_156d60f))
	{
		level.var_156d60f delete();
	}
	var_b1a4293e delete();
	skipto::function_be8adfb8("sarah_battle_end");
}

/*
	Name: function_ed02c344
	Namespace: namespace_c3900363
	Checksum: 0x50111CB4
	Offset: 0x63C0
	Size: 0x301
	Parameters: 1
	Flags: None
*/
function function_ed02c344(a_ents)
{
	wait(1);
	var_7d116593 = struct::get("s_sim_reality_lighting_hint", "targetname");
	level thread namespace_36cbf523::function_7aca917c(var_7d116593.origin);
	var_b7f41419 = spawn("trigger_radius_use", a_ents["sarah_driver"].origin + VectorScale((0, 0, 1), 15), 0, 125, 144);
	var_b7f41419 TriggerIgnoreTeam();
	var_b7f41419 SetVisibleToAll();
	var_b7f41419 SetTeamForTrigger("none");
	var_b7f41419 UseTriggerRequireLookAt();
	/#
		debugstar(var_b7f41419.origin, 1000, (1, 0, 0));
	#/
	var_b7f41419.e_gameobject = util::function_14518e76(var_b7f41419, &"cp_level_infection_interface_sarah", &"CP_MI_CAIRO_INFECTION_T_DNI", &function_795efef);
	while(1)
	{
		var_b7f41419 waittill("hash_6453bafb", player);
		level thread namespace_eccdd5d1::function_a693b757();
		if(isPlayer(player))
		{
			var_b7f41419.e_gameobject gameobjects::disable_object();
			var_b7f41419 delete();
			objectives::complete("cp_level_infection_interface_sarah");
			level flag::set("sarah_interface_started");
			if(isdefined(level.BZM_INFECTIONDialogue2Callback))
			{
				level thread [[level.BZM_INFECTIONDialogue2Callback]]();
			}
			level.var_efa959f1 = 0;
			scene::add_scene_func("cin_inf_03_01_interface_1st_dni_02", &function_271fa79e, "skip_completed");
			level thread scene::Play("cin_inf_03_01_interface_1st_dni_02", player);
			level thread namespace_b2b18209::function_f6fce5f1();
			function_3b4ccd2e();
			level flag::set("sarah_interface_done");
			return;
		}
	}
}

/*
	Name: function_271fa79e
	Namespace: namespace_c3900363
	Checksum: 0x9A2C7470
	Offset: 0x66D0
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_271fa79e(a_ents)
{
	level.var_efa959f1 = 1;
}

/*
	Name: function_3b4ccd2e
	Namespace: namespace_c3900363
	Checksum: 0xB59CB62F
	Offset: 0x66F0
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_3b4ccd2e()
{
	for(var_85c195bd = 0; var_85c195bd < 24 && !level.var_efa959f1;  = 0)
	{
		wait(0.1);
	}
}

/*
	Name: function_795efef
	Namespace: namespace_c3900363
	Checksum: 0xEE762A10
	Offset: 0x6748
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_795efef(player)
{
	self.trigger notify("hash_6453bafb", player);
}

/*
	Name: function_90de550e
	Namespace: namespace_c3900363
	Checksum: 0x646223ED
	Offset: 0x6778
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_90de550e()
{
	level scene::Play("cin_inf_02_01_vign_interface_siegebot_bash");
	level scene::init("cin_inf_02_01_vign_interface_siegebot_death");
	level.var_156d60f thread function_76887c27();
	level.var_42189297 ai::set_ignoreall(0);
	level.var_42189297 vehicle_ai::function_efe9815e("groundCombat");
	level thread function_a5a3b915();
	level thread function_24cf26d5();
	level.var_42189297 waittill("death");
	level thread namespace_eccdd5d1::function_973b77f9();
	level flag::set("sarah_defeated");
	objectives::complete("cp_level_infection_defeat_sarah");
	level scene::Play("cin_inf_02_01_vign_interface_siegebot_death");
	skipto::function_be8adfb8("sarah_battle");
	level thread function_c05c7cfe();
}

/*
	Name: function_76887c27
	Namespace: namespace_c3900363
	Checksum: 0x921E6B1E
	Offset: 0x68F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_76887c27()
{
	level.var_42189297 thread scene::Play("cin_inf_01_01_vtolarrival_1st_encounter_sarah_cockpit_loop", self);
}

/*
	Name: function_68861104
	Namespace: namespace_c3900363
	Checksum: 0xF406617B
	Offset: 0x6928
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_68861104(a_ents)
{
	var_1e13503b = a_ents["sarah_truck_bash"];
	var_1e13503b.do_scripted_crash = 0;
	var_1e13503b.deathmodel_attached = 1;
	var_1e13503b waittill("explode");
	var_1e13503b notify("death");
	var_1e13503b SetModel(var_1e13503b.deathmodel);
	var_bead0234 = struct::get("s_siegebot_bash_explosion", "targetname");
	level.var_42189297 MagicGrenadeType(GetWeapon("frag_grenade"), var_bead0234.origin, (0, 0, 1), 0);
}

/*
	Name: function_c05c7cfe
	Namespace: namespace_c3900363
	Checksum: 0x305A1E52
	Offset: 0x6A30
	Size: 0x379
	Parameters: 0
	Flags: None
*/
function function_c05c7cfe()
{
	a_allies = GetAISpeciesArray("allies", "human");
	var_87840852 = GetNodeArray("nd_post_sarah", "script_noteworthy");
	var_51c45f53 = GetNodeArray("nd_post_sarah_hendricks", "script_noteworthy");
	var_a7b9f562 = var_87840852.size + 1;
	for(i = 0; i < a_allies.size; i++)
	{
		if(isalive(a_allies[i]) && !a_allies[i] util::is_hero())
		{
			b_can_delete = 1;
			foreach(e_player in level.activePlayers)
			{
				if(e_player util::is_player_looking_at(a_allies[i].origin + VectorScale((0, 0, 1), 40)))
				{
					b_can_delete = 0;
				}
			}
			if(b_can_delete)
			{
				a_allies[i] kill();
			}
		}
	}
	var_bc0bb597 = 0;
	foreach(var_3b8db917 in a_allies)
	{
		if(isalive(var_3b8db917))
		{
			var_3b8db917.goalRadius = 128;
			var_3b8db917 clearentitytarget();
			var_3b8db917 ClearGoalVolume();
			var_3b8db917 ClearForcedGoal();
			var_3b8db917 ai::set_ignoreall(1);
			if(var_3b8db917 == level.var_2fd26037)
			{
				var_3b8db917 SetGoal(var_51c45f53[0], 1);
				continue;
			}
			var_3b8db917 SetGoal(var_87840852[var_bc0bb597], 1, 128, 128);
			var_bc0bb597++;
			if(var_bc0bb597 == var_87840852.size)
			{
				return;
			}
		}
	}
}

/*
	Name: function_5ee3bff5
	Namespace: namespace_c3900363
	Checksum: 0xB97747CB
	Offset: 0x6DB8
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_5ee3bff5(end_pos)
{
	self endon("death");
	self endon("goal");
	level endon("hash_eeb362cc");
	var_7e5d2524 = randomIntRange(128, 256);
	var_e73aacd3 = VectorNormalize(self.origin - end_pos) * var_7e5d2524;
	v_goal = end_pos + var_e73aacd3;
	self setgoalpos(v_goal, 1);
}

/*
	Name: function_48e3f00e
	Namespace: namespace_c3900363
	Checksum: 0x1FE9E2A
	Offset: 0x6E88
	Size: 0xBD
	Parameters: 0
	Flags: None
*/
function function_48e3f00e()
{
	for(i = 1; i <= 2; i++)
	{
		str_name = "p7_fxanim_cp_infection_sarah_building_0" + i + "_bundle";
		var_666ebfcb = struct::get(str_name, "scriptbundlename");
		if(isdefined(var_666ebfcb))
		{
			level thread scene::init(str_name);
		}
		function_6712dcb2("m_sarah_building_0" + i, 0);
	}
}

/*
	Name: function_3c458698
	Namespace: namespace_c3900363
	Checksum: 0x33590271
	Offset: 0x6F50
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_3c458698(var_b6dcd715)
{
	str_name = "p7_fxanim_cp_infection_sarah_building_0" + var_b6dcd715 + "_bundle";
	var_666ebfcb = struct::get(str_name, "scriptbundlename");
	if(isdefined(var_666ebfcb))
	{
		level scene::Play(str_name);
		function_6712dcb2("m_sarah_building_0" + var_b6dcd715, 1);
	}
}

/*
	Name: function_8f97d54e
	Namespace: namespace_c3900363
	Checksum: 0xD91448BA
	Offset: 0x7000
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_8f97d54e(var_b6dcd715)
{
	str_name = "p7_fxanim_cp_infection_sarah_building_0" + var_b6dcd715 + "_bundle";
	var_666ebfcb = struct::get(str_name, "scriptbundlename");
	if(isdefined(var_666ebfcb))
	{
		level thread scene::skipto_end(str_name);
	}
}

/*
	Name: function_6712dcb2
	Namespace: namespace_c3900363
	Checksum: 0x6CB4BB41
	Offset: 0x7088
	Size: 0x159
	Parameters: 2
	Flags: None
*/
function function_6712dcb2(str_targetname, b_show)
{
	if(!isdefined(b_show))
	{
		b_show = 1;
	}
	var_5cee1345 = GetEntArray(str_targetname, "targetname");
	if(b_show)
	{
		foreach(model in var_5cee1345)
		{
			model show();
		}
		break;
	}
	foreach(model in var_5cee1345)
	{
		model ghost();
	}
}


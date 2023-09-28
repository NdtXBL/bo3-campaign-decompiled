#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_cloudmountain;
#using scripts\cp\cp_mi_sing_biodomes_sound;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_hunter;

#namespace namespace_6f13ba4a;

/*
	Name: main
	Namespace: namespace_6f13ba4a
	Checksum: 0x99EC1590
	Offset: 0x800
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function main()
{
}

/*
	Name: function_af17c267
	Namespace: namespace_6f13ba4a
	Checksum: 0x5988E8B3
	Offset: 0x810
	Size: 0x46B
	Parameters: 2
	Flags: None
*/
function function_af17c267(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_fighttothedome_init");
	level notify("hash_a425069a");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_f5edec75::function_a36395f0();
		spawner::add_spawn_function_group("sp_server_room_background", "targetname", &function_76c56ee1);
		spawn_manager::enable("sm_server_room_background");
		level thread scene::skipto_end("p7_fxanim_cp_biodomes_server_room_window_break_01_bundle");
		var_777355da = GetEntArray("hallway_turret", "script_noteworthy");
		a_turrets = spawner::simple_spawn(var_777355da);
		Array::run_all(a_turrets, &kill);
		e_clip = GetEnt("turret_hallway_door_ai_clip", "targetname");
		e_clip delete();
		level namespace_f5edec75::function_a78ec4a();
		var_a63c572e = GetEnt("server_window", "targetname");
		if(isdefined(var_a63c572e))
		{
			var_a63c572e delete();
		}
		level thread namespace_27a45d31::function_753a859(str_objective);
		exploder::exploder("vtol_svrrm_window_break1");
		exploder::exploder("vtol_svrrm_window_break2");
		level flag::wait_till("all_players_spawned");
		level thread namespace_f1b4cbbc::function_46333a8a();
		namespace_27a45d31::function_bff1a867(str_objective);
		load::function_a2995f22();
	}
	level.var_2fd26037.ignoreall = 0;
	level.var_2fd26037 ai::set_ignoreme(0);
	level thread function_e6379a2(var_74cd64bc);
	e_clip = GetEnt("control_room_ai_clip", "targetname");
	e_clip delete();
	level.var_2fd26037 thread check_for_death();
	vh_vtol = vehicle::simple_spawn_single_and_drive("fight_dome_escape_vtol");
	vh_vtol util::magic_bullet_shield();
	level thread function_868ce0d5(vh_vtol);
	vh_vtol waittill("reached_end_node");
	vh_vtol ClearVehGoalPos();
	level thread scene::init("cin_bio_11_03_fightdome_1st_escape", vh_vtol);
	level thread scene::add_scene_func("cin_bio_11_03_fightdome_1st_escape", &function_c4de5eee, "play");
	level thread scene::add_scene_func("cin_bio_11_03_fightdome_1st_escape", &end_fade_out, "skip_started");
	level thread scene::init("p7_fxanim_cp_biodomes_rope_sim_hendricks_bundle");
	level thread function_646d5121();
	spawn_manager::enable("sm_supertree_background_retreat");
}

/*
	Name: end_fade_out
	Namespace: namespace_6f13ba4a
	Checksum: 0x9383BF7
	Offset: 0xC88
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function end_fade_out(a_ents)
{
	foreach(player in level.activePlayers)
	{
		player SetLowReady(1);
	}
	util::screen_fade_out(0, "black");
}

/*
	Name: function_e6379a2
	Namespace: namespace_6f13ba4a
	Checksum: 0x5A1A6A1C
	Offset: 0xD48
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_e6379a2(var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		level scene::Play("cin_bio_10_01_serverroom_vign_hack_loop");
	}
	level namespace_f5edec75::function_a91388d2(1);
	level thread function_3d342090();
	level scene::Play("cin_bio_11_03_fightdome_1st_escape_approach");
}

/*
	Name: function_76c56ee1
	Namespace: namespace_6f13ba4a
	Checksum: 0xA2BE2F13
	Offset: 0xDD8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_76c56ee1()
{
	self endon("death");
	level waittill("hash_d38fe5be");
	wait(9);
	self ai::set_ignoreall(0);
	self SetTargetEntity(level.var_2fd26037);
}

/*
	Name: function_868ce0d5
	Namespace: namespace_6f13ba4a
	Checksum: 0x56CD45D1
	Offset: 0xE40
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_868ce0d5(vh_vtol)
{
	level dialog::remote("kane_i_m_gonna_some_need_0");
	vh_vtol dialog::say("vtlp_bird_on_approach_for_0");
}

/*
	Name: function_646d5121
	Namespace: namespace_6f13ba4a
	Checksum: 0x442B1C21
	Offset: 0xE98
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_646d5121()
{
	level clientfield::set("fighttothedome_exfil_rope", 1);
	wait(1);
	level notify("hash_d38fe5be");
	var_7724dd66 = GetEnt("trig_rope_rescue", "targetname");
	var_7724dd66 show();
	if(isdefined(level.BZM_BIODialogue4Callback))
	{
		level thread [[level.BZM_BIODialogue4Callback]]();
	}
	var_9bdb9113 = util::function_14518e76(var_7724dd66, &"cp_level_biodomes_exfil", &"CP_MI_SING_BIODOMES_ZIPLINE_USE", &function_2ed72358);
	level waittill("hash_a384e425");
	level clientfield::set("fighttothedome_exfil_rope", 2);
	if(isdefined(level.BZM_BIODialogue5Callback))
	{
		level thread [[level.BZM_BIODialogue5Callback]]();
	}
	level thread function_f68b9e51();
	level thread function_df8adf84("hendricks");
	level thread function_df8adf84("player");
	level waittill("hash_ebe76425");
	level clientfield::set("sndIGCsnapshot", 4);
	skipto::function_be8adfb8("objective_fighttothedome");
}

/*
	Name: function_df8adf84
	Namespace: namespace_6f13ba4a
	Checksum: 0x8DE6D159
	Offset: 0x1060
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_df8adf84(var_9200d3f9)
{
	var_b08086a1 = GetEnt("glass_crack_" + var_9200d3f9, "targetname");
	var_b08086a1 Hide();
	level waittill(var_9200d3f9 + "_crack_glass");
	var_b08086a1 show();
}

/*
	Name: function_f68b9e51
	Namespace: namespace_6f13ba4a
	Checksum: 0x2296047D
	Offset: 0x10E8
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_f68b9e51()
{
	for(var_18a9c806 = 0; var_18a9c806 < 2; var_18a9c806++)
	{
		level waittill("hash_36f8cd21");
		foreach(player in level.players)
		{
			player clientfield::set_to_player("zipline_speed_blur", 1);
		}
		level waittill("hash_99beb75c");
		foreach(player in level.players)
		{
			player clientfield::set_to_player("zipline_speed_blur", 0);
		}
	}
}

/*
	Name: function_2ed72358
	Namespace: namespace_6f13ba4a
	Checksum: 0x51F1866E
	Offset: 0x1260
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_2ed72358(var_8df23e0a)
{
	foreach(player in level.players)
	{
		player clientfield::set_to_player("server_extra_cam", 0);
		player EnableInvulnerability();
	}
	self gameobjects::disable_object();
	objectives::complete("cp_level_biodomes_exfil");
	level notify("hash_a384e425");
	level thread scene::Play("cin_bio_11_03_fightdome_1st_escape", var_8df23e0a);
}

/*
	Name: function_c4de5eee
	Namespace: namespace_6f13ba4a
	Checksum: 0xD192896B
	Offset: 0x1378
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_c4de5eee(a_ents)
{
	level thread scene::Play("p7_fxanim_cp_biodomes_rope_sim_hendricks_bundle");
	var_7a94ab35 = GetEnt("rope_sim_hendricks", "targetname");
	var_7a94ab35 waittill("hash_34bf0af6");
	level clientfield::set("fighttothedome_exfil_rope_sim_player", 1);
}

/*
	Name: check_for_death
	Namespace: namespace_6f13ba4a
	Checksum: 0x9B2FD60E
	Offset: 0x1408
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function check_for_death()
{
	level endon("hash_a384e425");
	util::unmake_hero("hendricks");
	self.overrideActorDamage = &function_daf71f6;
	self waittill("death");
	util::missionfailedwrapper_nodeath(&"CP_MI_SING_BIODOMES_HENDRICKS_KILLED", &"CP_MI_SING_BIODOMES_HENDRICKS_KILLED_HINT");
}

/*
	Name: function_daf71f6
	Namespace: namespace_6f13ba4a
	Checksum: 0xA55AB8DC
	Offset: 0x1480
	Size: 0xB3
	Parameters: 12
	Flags: None
*/
function function_daf71f6(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, w_weapon, v_point, v_dir, str_hit_loc, n_model_index, psOffsetTime, str_bone_name)
{
	var_6c3c4545 = GetWeapon("hunter_rocket_turret");
	if(w_weapon === var_6c3c4545)
	{
		n_damage = self.health;
	}
	else
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_451af01d
	Namespace: namespace_6f13ba4a
	Checksum: 0xB61A45A0
	Offset: 0x1540
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_451af01d(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_769dc23f::function_ed573577();
	namespace_27a45d31::function_ddb0eeea("objective_fighttothedome_done");
}

/*
	Name: function_3d342090
	Namespace: namespace_6f13ba4a
	Checksum: 0x52B8668F
	Offset: 0x1598
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3d342090()
{
	wait(1);
	level thread namespace_f5edec75::function_a91388d2(0);
}


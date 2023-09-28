#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_accolades;
#using scripts\cp\cp_mi_zurich_coalescence_root_cinematics;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_3d19ef22;

/*
	Name: main
	Namespace: namespace_3d19ef22
	Checksum: 0xAECDAC17
	Offset: 0xEA0
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function main()
{
	init_clientfields();
	level flag::init("sing_root_depthcharges");
	ai_spawners = GetEntArray("root_singapore_spawners", "script_noteworthy");
	level._effect["depth_charge_explosion"] = "explosions/fx_exp_underwater_depth_charge";
	level._effect["depth_charge_spawn"] = "player/fx_ai_raven_teleport";
	level._effect["vortex_explode"] = "player/fx_ai_dni_rez_in_hero_clean";
	level._effect["blood_impact_xsm"] = "blood/fx_blood_splash_furn_drop_xsm";
	level._effect["dirt_impact_xsm"] = "dirt/fx_dust_furn_drop_sm";
	level._effect["blood_impact_sm"] = "blood/fx_blood_splash_furn_drop_xsm";
	level._effect["dirt_impact_sm"] = "dirt/fx_dust_furn_drop_sm";
	level._effect["blood_impact_md"] = "blood/fx_blood_splash_furn_drop_md";
	level._effect["dirt_impact_md"] = "dirt/fx_dust_furn_drop_md";
	level._effect["blood_impact_lg"] = "blood/fx_blood_splash_furn_drop_lg";
	level._effect["dirt_impact_lg"] = "dirt/fx_dust_furn_drop_lg";
	scene::add_scene_func("p7_fxanim_cp_zurich_ferris_wheel_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "root_singapore_start_done");
	scene::add_scene_func("p7_fxanim_cp_zurich_container_collapse_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "root_singapore_start_done");
	scene::add_scene_func("p7_fxanim_cp_zurich_car_slide_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "root_singapore_start_done");
	scene::add_scene_func("p7_fxanim_cp_zurich_ferris_wheel_wave_bundle", &function_8fbe0681, "play");
	scene::add_scene_func("p7_fxanim_cp_zurich_ferris_wheel_wave_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "root_singapore_start_done");
}

/*
	Name: init_clientfields
	Namespace: namespace_3d19ef22
	Checksum: 0xBD1180DC
	Offset: 0x1150
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("scriptmover", "sm_depth_charge_fx", 1, 1, "int");
	clientfield::register("scriptmover", "water_disturbance", 1, 1, "int");
	clientfield::register("toplayer", "umbra_tome_singapore", 1, 2, "counter");
}

/*
	Name: function_9c1fc2fd
	Namespace: namespace_3d19ef22
	Checksum: 0x97DB506
	Offset: 0x11F0
	Size: 0x3C1
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(str_objective, var_74cd64bc)
{
	load::function_73adcefc();
	if(var_74cd64bc)
	{
		level util::screen_fade_out(0);
	}
	util::function_d8eaed3d(8);
	function_acdfe1fe("cp_zurich_env_corvusmonitor", 1);
	var_4ccf970 = namespace_8e9083ff::function_a00fa665(str_objective);
	namespace_8e9083ff::function_4d032f25(1, 0.5);
	Array::thread_all(level.players, &namespace_8e9083ff::function_39af75ef, "singapore_root_completed");
	spawner::add_spawn_function_group("raven_ambush_ai", "script_parameters", &namespace_8e9083ff::function_aceff870);
	level thread scene::init("p7_fxanim_cp_zurich_ferris_wheel_bundle");
	level thread function_29073d62();
	level thread function_eb271a4b(str_objective);
	load::function_a2995f22();
	skipto::teleport_players(str_objective, 0);
	level thread function_23a51944();
	level thread function_54fbadd1();
	Array::thread_all(level.activePlayers, &function_db4d091);
	callback::on_spawned(&function_db4d091);
	level.var_1895e0f9 = &function_1aeafdf8;
	level thread function_4402ab63();
	level thread function_95353712();
	level thread function_8842e57d();
	level thread function_a0e6701b();
	level thread function_3893ad5c(str_objective);
	level thread function_c9c3556c(str_objective);
	level thread namespace_8e9083ff::function_a03f30f2(str_objective, "root_singapore_vortex", "root_singapore_regroup");
	level thread namespace_8e9083ff::function_dd842585(str_objective, "root_singapore_vortex", "t_root_singapore_vortex");
	level waittill(str_objective + "enter_vortex");
	level thread function_95b88092("root_singapore_vortex", 0);
	foreach(player in level.players)
	{
		player util::show_hud(1);
	}
}

/*
	Name: function_db4d091
	Namespace: namespace_3d19ef22
	Checksum: 0xE22E16CF
	Offset: 0x15C0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_db4d091()
{
	level endon("hash_73b00182");
	self notify("hash_db4d091");
	self endon("hash_db4d091");
	self thread function_52ac3a61();
	self waittill("hash_a71a53c4");
	self clientfield::increment_to_player("umbra_tome_singapore");
	level thread function_252e350();
	level util::clientNotify("stSINmus");
}

/*
	Name: function_52ac3a61
	Namespace: namespace_3d19ef22
	Checksum: 0x8FA0440A
	Offset: 0x1668
	Size: 0x155
	Parameters: 0
	Flags: None
*/
function function_52ac3a61()
{
	level endon("hash_73b00182");
	self endon("disconnect");
	self endon("hash_a71a53c4");
	self notify("hash_52ac3a61");
	self endon("hash_52ac3a61");
	var_4d85762b = self GetEntityNumber();
	self waittill("death");
	wait(0.5);
	if(isdefined(self.currentspectatingclient) && self.currentspectatingclient >= 0 && var_4d85762b != self.currentspectatingclient)
	{
		foreach(player in level.players)
		{
			if(player GetEntityNumber() == self.currentspectatingclient)
			{
				player clientfield::increment_to_player("umbra_tome_singapore");
				break;
			}
		}
	}
}

/*
	Name: function_1aeafdf8
	Namespace: namespace_3d19ef22
	Checksum: 0xDAD2D249
	Offset: 0x17C8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_1aeafdf8()
{
	self clientfield::increment_to_player("umbra_tome_singapore");
}

/*
	Name: function_c38b8260
	Namespace: namespace_3d19ef22
	Checksum: 0xF2D0C906
	Offset: 0x17F8
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_c38b8260()
{
	level flag::wait_till("all_players_spawned");
	util::wait_network_frame();
	util::wait_network_frame();
	foreach(e_player in level.players)
	{
		e_player clientfield::increment_to_player("umbra_tome_singapore");
	}
}

/*
	Name: function_95b88092
	Namespace: namespace_3d19ef22
	Checksum: 0xBC99FB18
	Offset: 0x18D8
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_95b88092(str_objective, var_74cd64bc)
{
	if(isdefined(var_74cd64bc) && var_74cd64bc)
	{
		load::function_73adcefc();
		load::function_a2995f22();
		skipto::teleport_players(str_objective, 0);
		Array::thread_all(level.players, &namespace_8e9083ff::function_39af75ef, "singapore_root_completed");
		level thread function_252e350();
		namespace_8e9083ff::function_4d032f25(1, 0.5);
		level thread namespace_8e9083ff::function_c90e23b6(str_objective);
	}
	if(isdefined(level.BZM_ZURICHDialogue17Callback))
	{
		level thread [[level.BZM_ZURICHDialogue17Callback]]();
	}
	level thread scene::init("singapore_fxanim_heart_ceiling", "targetname");
	exploder::exploder("heartLightsSing");
	level thread namespace_67110270::function_973b77f9();
	self namespace_8e9083ff::function_b0f0dd1f(0);
	level thread function_4b2f6f7();
	if(level.players === 1)
	{
		savegame::function_5d2cdd99();
	}
	var_8fb0849a = namespace_8e9083ff::function_a1851f86(str_objective);
	var_8fb0849a waittill("brn");
	level thread namespace_bbb4ee72::play_scene(str_objective, var_8fb0849a.var_90971f20.e_player);
	if(isdefined(level.BZM_ForceAICleanup))
	{
		[[level.BZM_ForceAICleanup]]();
	}
	function_4a0fb95e("cp_zurich_env_corvusmonitor");
	util::clientNotify("stp_mus");
}

/*
	Name: function_c68a0705
	Namespace: namespace_3d19ef22
	Checksum: 0xC4EB2684
	Offset: 0x1B38
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_c68a0705(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread function_c38b8260();
	var_ef0ea28e = GetEntArray("singapore_cover", "targetname");
	Array::run_all(var_ef0ea28e, &delete);
}

/*
	Name: function_53a05865
	Namespace: namespace_3d19ef22
	Checksum: 0x493158DB
	Offset: 0x1BD0
	Size: 0x7B
	Parameters: 4
	Flags: None
*/
function function_53a05865(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level notify("hash_73b00182");
	callback::remove_on_spawned(&function_db4d091);
	level.var_1895e0f9 = undefined;
	level thread namespace_8e9083ff::function_4a00a473("root_singapore");
}

/*
	Name: function_efc52a3e
	Namespace: namespace_3d19ef22
	Checksum: 0xAE3F5CE2
	Offset: 0x1C58
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function function_efc52a3e()
{
	level endon("hash_8ba64bc4");
	level flag::wait_till("flag_singapore_root_monologue_01");
	level dialog::function_13b3b16a("plyr_listen_only_to_the_s_2", 3);
	level dialog::function_13b3b16a("plyr_let_your_mind_relax_2", 3);
	level dialog::function_13b3b16a("plyr_let_your_thoughts_dr_2", 3);
	level dialog::function_13b3b16a("plyr_let_the_bad_memories_2", 3);
	level dialog::function_13b3b16a("plyr_let_peace_be_upon_yo_2", 3);
	level flag::wait_till("flag_singapore_root_monologue_02");
	level dialog::function_13b3b16a("plyr_surrender_yourself_t_2", 3);
	level dialog::function_13b3b16a("plyr_let_them_wash_over_y_2", 3);
	level dialog::function_13b3b16a("plyr_imagine_somewhere_ca_2", 3);
	level dialog::function_13b3b16a("plyr_imagine_somewhere_sa_2", 3);
	level dialog::function_13b3b16a("plyr_imagine_yourself_2", 3);
	level flag::set("flag_singapore_root_monologue_02_done");
	level flag::wait_till_all(Array("flag_salim_cognititve_neural_vo_done", "flag_singapore_root_monologue_03"));
	level dialog::function_13b3b16a("plyr_you_are_standing_in_2", 3);
	level dialog::function_13b3b16a("plyr_the_trees_around_you_2", 3);
	level dialog::function_13b3b16a("plyr_pure_white_snowflake_2", 3);
	level dialog::function_13b3b16a("plyr_you_can_feel_them_me_2", 3);
	level dialog::function_13b3b16a("plyr_you_are_not_cold_2", 3);
	level dialog::function_13b3b16a("plyr_it_cannot_overcome_t_2", 3);
	level flag::wait_till("flag_singapore_root_monologue_04");
	level dialog::function_13b3b16a("plyr_can_you_hear_it_2", 3);
	level dialog::function_13b3b16a("plyr_you_only_have_to_lis_2", 3);
	level dialog::function_13b3b16a("plyr_do_you_hear_it_slowi_2", 3);
	level dialog::function_13b3b16a("plyr_you_are_slowing_it_2", 3);
	level dialog::function_13b3b16a("plyr_you_are_in_control_4", 3);
	level dialog::function_13b3b16a("plyr_calm_2", 3);
	level dialog::function_13b3b16a("plyr_at_peace_2", 3);
	level flag::set("flag_singapore_root_monologue_04_done");
}

/*
	Name: function_23a51944
	Namespace: namespace_3d19ef22
	Checksum: 0x302BDDF1
	Offset: 0x2020
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_23a51944()
{
	wait(2);
	level dialog::remote("hcor_rachel_kane_never_ha_0", 1, "NO_DNI");
	level thread namespace_67110270::function_65e1e4b4();
	level dialog::remote("hcor_but_you_can_still_ma_0", 1, "NO_DNI");
	level flag::set("flag_hall_sing_intro_vo_done");
}

/*
	Name: function_49b9e027
	Namespace: namespace_3d19ef22
	Checksum: 0x2DD7B72
	Offset: 0x20C8
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_49b9e027(str_objective)
{
	level endon(str_objective + "enter_vortex");
	level flag::wait_till("flag_hall_sing_intro_vo_done");
	wait(3);
	level notify("hash_d3c69346");
	level.var_1c26230b dialog::say("tayr_you_ve_just_got_to_h_0");
	level.var_1c26230b dialog::say("tayr_if_we_can_breach_the_0", 1);
	wait(5);
	level thread function_efc52a3e();
	level flag::wait_till("flag_taylor_vo_just_stay_with_me");
	if(flag::get("flag_singapore_root_monologue_02_done"))
	{
		level.var_1c26230b dialog::say("tayr_just_stay_with_me_1");
	}
}

/*
	Name: function_4b2f6f7
	Namespace: namespace_3d19ef22
	Checksum: 0xCBE6D28
	Offset: 0x21D8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_4b2f6f7()
{
	level endon("hash_8ba64bc4");
	level flag::wait_till("flag_singapore_root_monologue_04_done");
	level dialog::remote("salm_as_with_any_ground_b_0", 4, "NO_DNI");
	level dialog::remote("salm_should_the_internati_0", 1, "NO_DNI");
}

/*
	Name: function_54fbadd1
	Namespace: namespace_3d19ef22
	Checksum: 0xD2EC553E
	Offset: 0x2270
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_54fbadd1()
{
	trigger::wait_till("t_sing_swim_salim_vo");
	if(flag::get("flag_singapore_root_monologue_02_done"))
	{
		level dialog::remote("salm_cognitive_neural_int_0", 1, "NO_DNI");
	}
	level flag::set("flag_salim_cognititve_neural_vo_done");
}

/*
	Name: function_c9c3556c
	Namespace: namespace_3d19ef22
	Checksum: 0x70BA8342
	Offset: 0x2300
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_c9c3556c(str_objective)
{
	Array::run_all(level.players, &FreezeControls, 1);
	Array::run_all(level.players, &EnableInvulnerability);
	Array::run_all(level.players, &util::show_hud, 0);
	wait(2);
	level thread util::screen_fade_in(1);
	Array::thread_all(level.players, &clientfield::increment_to_player, "postfx_transition");
	playsoundatposition("evt_clearing_trans_in", (0, 0, 0));
	level namespace_8e9083ff::function_c90e23b6(str_objective, "breadcrumb_singroot_3");
	level.var_1c26230b ai::set_ignoreall(1);
	Array::run_all(level.players, &FreezeControls, 0);
	Array::run_all(level.players, &DisableInvulnerability);
	Array::run_all(level.players, &util::show_hud, 1);
	util::clear_streamer_hint();
	savegame::function_5d2cdd99();
}

/*
	Name: function_3893ad5c
	Namespace: namespace_3d19ef22
	Checksum: 0x34D56DC1
	Offset: 0x24E8
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_3893ad5c(str_objective)
{
	var_6a61d135 = 1;
	wait(1);
	if(isdefined(level.BZM_ZURICHDialogue19Callback))
	{
		level thread [[level.BZM_ZURICHDialogue19Callback]]();
	}
	while(var_6a61d135)
	{
		foreach(e_player in level.activePlayers)
		{
			if(!e_player IsPlayerUnderwater())
			{
				var_6a61d135 = 0;
			}
		}
		wait(0.05);
	}
	level.var_1c26230b ai::set_ignoreall(0);
	level thread function_49b9e027(str_objective);
}

/*
	Name: function_eb271a4b
	Namespace: namespace_3d19ef22
	Checksum: 0x31D8E255
	Offset: 0x2610
	Size: 0x155
	Parameters: 1
	Flags: None
*/
function function_eb271a4b(str_objective)
{
	level endon(str_objective + "_done");
	level endon("hash_73b00182");
	var_b1cdbf1d = 0;
	while(1)
	{
		var_f6e695c0 = struct::get("breadcrumb_singroot_" + var_b1cdbf1d, "targetname");
		var_b1fe230f = GetEnt("t_singroot_" + var_b1cdbf1d, "script_noteworthy");
		if(!isdefined(var_f6e695c0) || !isdefined(var_b1fe230f))
		{
			return;
		}
		objectives::set("cp_waypoint_breadcrumb", var_f6e695c0);
		var_b1fe230f waittill("trigger");
		level notify("hash_431e9a83");
		savegame::function_5d2cdd99();
		if(var_b1cdbf1d == 2)
		{
			level thread function_26f61e7c();
		}
		objectives::complete("cp_waypoint_breadcrumb", var_f6e695c0);
		var_b1cdbf1d++;
	}
}

/*
	Name: function_26f61e7c
	Namespace: namespace_3d19ef22
	Checksum: 0x22834404
	Offset: 0x2770
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_26f61e7c()
{
	level namespace_8e9083ff::function_b0f0dd1f(1, "red_rain");
}

/*
	Name: function_8842e57d
	Namespace: namespace_3d19ef22
	Checksum: 0xA012B0C0
	Offset: 0x27A0
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_8842e57d()
{
	var_d5aeed2b = GetEntArray("root_sing_cover", "targetname");
	var_d5aeed2b = Array::thread_all(var_d5aeed2b, &function_258afdfc);
}

/*
	Name: function_258afdfc
	Namespace: namespace_3d19ef22
	Checksum: 0x5078D27C
	Offset: 0x2800
	Size: 0x279
	Parameters: 0
	Flags: None
*/
function function_258afdfc()
{
	var_482d5204 = struct::get_array(self.target, "targetname");
	/#
		Assert(isdefined(var_482d5204), "Dev Block strings are not supported");
	#/
	foreach(var_19966f24 in var_482d5204)
	{
		/#
			Assert(isdefined(var_19966f24.model), "Dev Block strings are not supported");
		#/
		/#
			Assert(isdefined(var_19966f24.target), "Dev Block strings are not supported");
		#/
		if(isdefined(var_19966f24.script_string))
		{
			var_a8a64a67 = GetNodeArray(var_19966f24.script_string, "targetname");
			foreach(nd_cover in var_a8a64a67)
			{
				SetEnableNode(nd_cover, 0);
			}
		}
	}
	self waittill("trigger");
	foreach(var_19966f24 in var_482d5204)
	{
		var_19966f24 thread function_375f158a();
	}
}

/*
	Name: function_375f158a
	Namespace: namespace_3d19ef22
	Checksum: 0xB6848F2A
	Offset: 0x2A88
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_375f158a()
{
	wait(RandomFloat(2));
	var_4b1dfeae = util::spawn_model(self.model, self.origin, self.angles);
	var_4b1dfeae.var_1069f2d4 = struct::get(self.target, "targetname");
	var_4b1dfeae.targetname = "singapore_cover";
	if(isdefined(self.script_fxid))
	{
		var_4b1dfeae.script_fxid = self.script_fxid;
	}
	if(isdefined(self.script_string))
	{
		var_4b1dfeae.script_string = self.script_string;
		var_4b1dfeae thread function_e8047245();
	}
	var_4b1dfeae thread function_14bb726e();
	var_4b1dfeae thread function_1bf4af4f();
}

/*
	Name: function_14bb726e
	Namespace: namespace_3d19ef22
	Checksum: 0xCB72C4FA
	Offset: 0x2BB0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_14bb726e()
{
	n_move_time = RandomFloatRange(0.5, 1.25);
	self moveto(self.var_1069f2d4.origin, n_move_time);
	self RotateTo(self.var_1069f2d4.angles, n_move_time);
	self waittill("movedone");
	self solid();
	self PlayRumbleOnEntity("damage_heavy");
	playsoundatposition("evt_floor_debris_big", self.origin);
	if(isdefined(self.script_fxid))
	{
		PlayFXOnTag(level._effect[self.script_fxid], self, "tag_origin");
	}
	else
	{
		PlayFXOnTag(level._effect["dirt_impact_lg"], self, "tag_origin");
	}
}

/*
	Name: function_e8047245
	Namespace: namespace_3d19ef22
	Checksum: 0x11E1E97D
	Offset: 0x2D08
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_e8047245()
{
	var_a8a64a67 = GetNodeArray(self.script_string, "targetname");
	self waittill("movedone");
	foreach(nd_cover in var_a8a64a67)
	{
		SetEnableNode(nd_cover, 1);
	}
}

/*
	Name: function_1bf4af4f
	Namespace: namespace_3d19ef22
	Checksum: 0x44BFB5F2
	Offset: 0x2DD8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_1bf4af4f()
{
	self endon("delete");
	level waittill("hash_4bb2007e");
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: function_a0e6701b
	Namespace: namespace_3d19ef22
	Checksum: 0xFE6BCC06
	Offset: 0x2E20
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a0e6701b()
{
	var_95ff9697 = GetEntArray("sing_falling_destructible", "script_noteworthy");
	Array::thread_all(var_95ff9697, &function_514e0b2e);
}

/*
	Name: function_514e0b2e
	Namespace: namespace_3d19ef22
	Checksum: 0xF333BD19
	Offset: 0x2E80
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_514e0b2e()
{
	if(self.classname === "script_model")
	{
		n_move_time = RandomFloatRange(0.75, 1.5);
		self Hide();
		self.t_radius = spawn("trigger_radius", self.origin, 0, 1024, 128);
		self MoveZ(1024, 0.05);
		self.t_radius waittill("trigger");
		self.t_radius delete();
		self show();
		self MoveZ(-1024, n_move_time);
		self waittill("movedone");
		self PlayRumbleOnEntity("damage_heavy");
		playsoundatposition("evt_floor_debris_big", self.origin);
		PlayFXOnTag(level._effect["dirt_impact_md"], self, "tag_origin");
	}
}

/*
	Name: function_29073d62
	Namespace: namespace_3d19ef22
	Checksum: 0xA2697D14
	Offset: 0x3010
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_29073d62()
{
	level scene::init("p7_fxanim_cp_zurich_container_collapse_bundle");
	trigger::wait_till("container_fxanim", "script_noteworthy");
	level scene::Play("p7_fxanim_cp_zurich_container_collapse_bundle");
}

/*
	Name: function_4402ab63
	Namespace: namespace_3d19ef22
	Checksum: 0x7DE8D6A
	Offset: 0x3080
	Size: 0x181
	Parameters: 0
	Flags: None
*/
function function_4402ab63()
{
	trigger::wait_till("t_singroot_1", "script_noteworthy");
	level thread scene::Play("p7_fxanim_cp_zurich_ferris_wheel_bundle");
	level thread scene::Play("p7_fxanim_cp_zurich_ferris_wheel_wave_bundle");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("damage_heavy");
	}
	level waittill("hash_55a06ec6");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_zurich_ferris_wheel_fall");
	}
}

/*
	Name: function_8fbe0681
	Namespace: namespace_3d19ef22
	Checksum: 0xA060D1C3
	Offset: 0x3210
	Size: 0x22B
	Parameters: 1
	Flags: None
*/
function function_8fbe0681(a_ents)
{
	var_32cdba86 = a_ents["zurich_ferris_wheel_wave"];
	str_joint = "zur_wave_jnt";
	t_start = spawn("trigger_box", var_32cdba86 GetTagOrigin(str_joint), 0, 128, 1200, 128);
	t_start.angles = var_32cdba86 GetTagAngles(str_joint);
	t_start EnableLinkTo();
	t_start LinkTo(var_32cdba86, str_joint, (0, 0, 0), VectorScale((0, 1, 0), 30));
	foreach(player in level.players)
	{
		t_start thread function_32d3b286(player);
	}
	t_start thread function_9ea9bed();
	wait(0.05);
	var_32cdba86 clientfield::set("water_disturbance", 1);
	level waittill("hash_99c4740a");
	var_32cdba86 clientfield::set("water_disturbance", 0);
	level notify("wave_done");
	t_start delete();
}

/*
	Name: function_32d3b286
	Namespace: namespace_3d19ef22
	Checksum: 0x188F5A06
	Offset: 0x3448
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_32d3b286(player)
{
	self endon("death");
	self endon("hash_4735ec09");
	player endon("death");
	while(1)
	{
		self waittill("trigger", var_4a36ffac);
		if(var_4a36ffac == player && (!isdefined(player.var_1cd4d4e6) && player.var_1cd4d4e6))
		{
			player.var_1cd4d4e6 = 1;
			player thread function_b8c35195(self);
			if(isPlayer(player) && player istouching(self))
			{
				player thread function_c61ca0be(self);
				player thread function_adade905(self);
				player playsound("evt_surge_impact");
				break;
			}
		}
	}
}

/*
	Name: function_b8c35195
	Namespace: namespace_3d19ef22
	Checksum: 0x1C3029DA
	Offset: 0x3590
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_b8c35195(var_12377408)
{
	self endon("death");
	while(isdefined(var_12377408) && self istouching(var_12377408))
	{
		wait(0.05);
	}
	self.var_1cd4d4e6 = 0;
	if(isdefined(var_12377408))
	{
		var_12377408 notify("hash_4735ec09");
	}
}

/*
	Name: function_adade905
	Namespace: namespace_3d19ef22
	Checksum: 0x80AB015B
	Offset: 0x3608
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_adade905(t_wave)
{
	self endon("death");
	t_wave endon("hash_4735ec09");
	while(1)
	{
		self PlayRumbleOnEntity("damage_heavy");
		wait(0.1);
	}
}

/*
	Name: function_c61ca0be
	Namespace: namespace_3d19ef22
	Checksum: 0x3983BA0D
	Offset: 0x3668
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_c61ca0be(t_wave)
{
	self endon("death");
	t_wave endon("hash_4735ec09");
	while(1)
	{
		if(!(isdefined(self.laststand) && self.laststand))
		{
			self SetVelocity(AnglesToForward(VectorScale((0, 1, 0), 345)) * 200);
		}
		wait(0.05);
	}
}

/*
	Name: function_9ea9bed
	Namespace: namespace_3d19ef22
	Checksum: 0xBE8C53FF
	Offset: 0x3700
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_9ea9bed()
{
	self endon("death");
	self endon("hash_4735ec09");
	while(1)
	{
		self waittill("trigger", var_480743);
		if(isalive(var_480743) && var_480743.team == "axis" && (!isdefined(var_480743.var_284432c3) && var_480743.var_284432c3))
		{
			var_480743.var_284432c3 = 1;
			var_480743 thread function_3de3b792(self);
		}
	}
}

/*
	Name: function_3de3b792
	Namespace: namespace_3d19ef22
	Checksum: 0xCDBD8854
	Offset: 0x37D0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_3de3b792(var_12377408)
{
	self endon("death");
	v_dir = VectorNormalize(self.origin - var_12377408.origin);
	self StartRagdoll();
	self LaunchRagdoll(v_dir * 75);
	self kill();
}

/*
	Name: function_95353712
	Namespace: namespace_3d19ef22
	Checksum: 0x3C5D06B0
	Offset: 0x3870
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_95353712()
{
	var_c44abb6a = GetEnt("t_singroot_car1", "targetname");
	level thread scene::init("p7_fxanim_cp_zurich_car_slide_bundle");
	var_c44abb6a waittill("trigger");
	level thread scene::Play("p7_fxanim_cp_zurich_car_slide_bundle");
}

/*
	Name: function_252e350
	Namespace: namespace_3d19ef22
	Checksum: 0xB988EE19
	Offset: 0x38F0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_252e350()
{
	if(level flag::get("sing_root_depthcharges"))
	{
		return;
	}
	level flag::set("sing_root_depthcharges");
	level thread namespace_e9d9fb34::function_62b0213a();
	var_8edc0313 = struct::get_array("singapore_depth_charge", "targetname");
	Array::thread_all(var_8edc0313, &function_26a0a902);
	level thread function_1c297ab3();
}

/*
	Name: function_26a0a902
	Namespace: namespace_3d19ef22
	Checksum: 0x79AF2C93
	Offset: 0x39C0
	Size: 0x14D
	Parameters: 0
	Flags: None
*/
function function_26a0a902()
{
	level endon("hash_cc8de88d");
	self endon("hash_f9256645");
	self thread function_6a938164();
	n_spawned = 0;
	wait(1);
	while(3 > n_spawned)
	{
		var_2d4569cf = self function_dabb79d8();
		n_spawned++;
		if(isdefined(var_2d4569cf))
		{
			s_target = struct::get(self.target, "targetname");
			if(isdefined(s_target))
			{
				var_2d4569cf thread function_c51242e1(s_target);
			}
			var_2d4569cf.targetname = "depth_charger_dive";
			var_2d4569cf thread function_f788b8ae();
			var_2d4569cf thread function_c775e8da(200);
			var_2d4569cf waittill("exploded");
			wait(RandomFloatRange(1.5, 3));
		}
		else
		{
			return;
		}
	}
}

/*
	Name: function_1c297ab3
	Namespace: namespace_3d19ef22
	Checksum: 0x55EB819F
	Offset: 0x3B18
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1c297ab3()
{
	trigger::wait_till("stop_depth_charges");
	level notify("hash_cc8de88d");
	level flag::clear("sing_root_depthcharges");
}

/*
	Name: function_6a938164
	Namespace: namespace_3d19ef22
	Checksum: 0x8D27AD79
	Offset: 0x3B68
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_6a938164()
{
	self endon("hash_f9256645");
	level endon("hash_cc8de88d");
	while(1)
	{
		e_player = ArrayGetClosest(self.origin, level.activePlayers);
		if(isdefined(e_player) && Distance(e_player.origin, self.origin) < 256)
		{
			self notify("hash_f9256645");
		}
		wait(0.1);
	}
}

/*
	Name: function_dabb79d8
	Namespace: namespace_3d19ef22
	Checksum: 0x8FFE6D03
	Offset: 0x3C10
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_dabb79d8()
{
	playFX(level._effect["depth_charge_spawn"], self.origin);
	wait(0.2);
	var_2d4569cf = util::spawn_model("veh_t7_drone_depth_charge", self.origin, (RandomInt(360), RandomInt(360), RandomInt(360)));
	if(isdefined(var_2d4569cf))
	{
		var_2d4569cf.script_noteworthy = "depth_charge_model";
		var_2d4569cf SetCanDamage(1);
		var_2d4569cf.health = 999999;
		var_2d4569cf clientfield::set("sm_depth_charge_fx", 1);
		var_2d4569cf thread function_9e34c3b5();
	}
	return var_2d4569cf;
}

/*
	Name: function_c51242e1
	Namespace: namespace_3d19ef22
	Checksum: 0x8AF3B017
	Offset: 0x3D58
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_c51242e1(s_target, var_253d1f97)
{
	self endon("death");
	while(isdefined(s_target))
	{
		n_distance = Distance(self.origin, s_target.origin);
		n_time = n_distance / 100;
		self moveto(s_target.origin, n_time);
		self waittill("movedone");
		if(isdefined(s_target.target))
		{
			s_target = struct::get(s_target.target, "targetname");
		}
		else
		{
			s_target = undefined;
		}
	}
	level.var_e83d53e9 = 1;
	self function_6493f00e();
}

/*
	Name: function_9e34c3b5
	Namespace: namespace_3d19ef22
	Checksum: 0x28870AFB
	Offset: 0x3E78
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_9e34c3b5()
{
	self endon("death");
	self waittill("damage", damage, e_attacker);
	self function_6493f00e(isdefined(e_attacker) && isPlayer(e_attacker));
}

/*
	Name: function_f788b8ae
	Namespace: namespace_3d19ef22
	Checksum: 0x34B205DA
	Offset: 0x3EE8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_f788b8ae()
{
	self endon("death");
	var_b28ba731 = RandomFloatRange(12, 32);
	wait(var_b28ba731);
	level.var_e83d53e9 = 1;
	self function_6493f00e();
}

/*
	Name: function_6493f00e
	Namespace: namespace_3d19ef22
	Checksum: 0x522E707C
	Offset: 0x3F58
	Size: 0x1F9
	Parameters: 1
	Flags: None
*/
function function_6493f00e(var_e0c598de)
{
	if(!isdefined(var_e0c598de))
	{
		var_e0c598de = 0;
	}
	if(!isdefined(self))
	{
		return;
	}
	v_origin = self.origin;
	self RadiusDamage(v_origin, 200, 80, 40, self);
	PlayRumbleOnPosition("depth_charge_rumble", v_origin);
	self notify("exploded");
	if(self.classname === "script_model")
	{
		playFX(level._effect["depth_charge_explosion"], v_origin);
		playsoundatposition("exp_drone_underwater", v_origin);
		self util::self_delete();
	}
	wait(0.1);
	if(isdefined(var_e0c598de) && var_e0c598de)
	{
		var_f83c5536 = GetEntArray("depth_charge_model", "script_noteworthy");
		var_f83c5536 = ArraySortClosest(var_f83c5536, v_origin, undefined, 0, 120);
		foreach(var_2d4569cf in var_f83c5536)
		{
			var_2d4569cf function_6493f00e();
		}
	}
}

/*
	Name: function_c775e8da
	Namespace: namespace_3d19ef22
	Checksum: 0x8F994307
	Offset: 0x4160
	Size: 0x1F7
	Parameters: 1
	Flags: None
*/
function function_c775e8da(var_7a998a01)
{
	if(!isdefined(var_7a998a01))
	{
		var_7a998a01 = 200;
	}
	self endon("death");
	while(1)
	{
		foreach(e_player in level.activePlayers)
		{
			if(!e_player IsInMoveMode("ufo", "noclip"))
			{
				if(DistanceSquared(e_player.origin, self.origin) < var_7a998a01 * var_7a998a01 && !e_player laststand::player_is_in_laststand())
				{
					self.var_ab9199df = e_player;
					level.var_e83d53e9 = 1;
					self function_6493f00e();
				}
			}
			if(self.classname === "script_model")
			{
				if(DistanceSquared(self.origin, e_player.origin) < var_7a998a01 * 1.8 * var_7a998a01 * 1.8)
				{
					self clientfield::set("sm_depth_charge_fx", 0);
					continue;
				}
				self clientfield::set("sm_depth_charge_fx", 1);
			}
		}
		wait(0.1);
	}
}


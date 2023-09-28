#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_accolades;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_da397ec0;

/*
	Name: function_d64c7d65
	Namespace: namespace_da397ec0
	Checksum: 0x254C14B5
	Offset: 0xDD8
	Size: 0x283
	Parameters: 2
	Flags: None
*/
function function_d64c7d65(var_468a2e2f, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level clientfield::set("w_underwater_state", 1);
		spawner::add_global_spawn_function("axis", &namespace_cba4cc55::function_a527e6f9);
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::complete("cp_level_sgen_descend_into_core");
		objectives::complete("cp_level_sgen_goto_signal_source");
		objectives::complete("cp_level_sgen_goto_server_room");
		objectives::complete("cp_level_sgen_confront_pallas");
		objectives::set("cp_level_sgen_get_to_surface");
		load::function_a2995f22();
		foreach(player in level.players)
		{
			player clientfield::set_to_player("water_motes", 1);
			player thread hazard::function_e9b126ef(15, 0.25);
		}
	}
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.var_2fd26037 colors::set_force_color("r");
	SetDvar("player_swimTime", 5000);
	level thread main();
	namespace_99202726::function_f3915502();
	exploder::exploder("lights_sgen_swimup");
}

/*
	Name: function_9670e43f
	Namespace: namespace_da397ec0
	Checksum: 0xD097A419
	Offset: 0x1068
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_9670e43f(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_sgen_get_to_surface");
}

/*
	Name: main
	Namespace: namespace_da397ec0
	Checksum: 0x69C04BFE
	Offset: 0x10B0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function main()
{
	level thread function_454f17f5();
	level thread function_adfc879d();
	level thread function_5faf4875();
	level thread function_931453ff();
	level thread function_e5892d8b();
	level thread function_ed258e83();
	level thread function_141e6fb1();
	level thread function_4479a58d();
	level thread function_38a41822();
	level thread function_13a4841b();
	level thread function_732b54da();
	level thread function_78227c49();
	level flag::wait_till("player_in_fan_vent");
	level thread function_1b1cd649();
}

/*
	Name: function_141e6fb1
	Namespace: namespace_da397ec0
	Checksum: 0xDA1DF5FE
	Offset: 0x1218
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_141e6fb1()
{
	objectives::breadcrumb("silo_swim_breadcrumb");
}

/*
	Name: function_732b54da
	Namespace: namespace_da397ec0
	Checksum: 0x15E2343B
	Offset: 0x1240
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_732b54da()
{
	wait(3);
	foreach(player in level.activePlayers)
	{
		player util::show_hint_text(&"COOP_SWIM_INSTRUCTIONS", 0, undefined, 2);
	}
}

/*
	Name: function_adfc879d
	Namespace: namespace_da397ec0
	Checksum: 0x9A385379
	Offset: 0x12F0
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_adfc879d()
{
	v_push = VectorScale((0, 1, 0), 30);
	var_339ee53e = GetEnt("trig_water_flow", "targetname");
	while(1)
	{
		var_339ee53e waittill("trigger", e_player);
		v_velocity = e_player GetVelocity();
		v_velocity = v_velocity + v_push;
		e_player SetVelocity(v_velocity);
	}
}

/*
	Name: function_4479a58d
	Namespace: namespace_da397ec0
	Checksum: 0xC179F91
	Offset: 0x13B8
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_4479a58d()
{
	level endon("hash_df299fe4");
	level thread function_72e5fd1f();
	level flag::set("important_vo_playing");
	level.var_2fd26037 dialog::say("hend_alright_stay_on_my_0");
	level dialog::remote("kane_heads_up_spotted_a_0", 0.5);
	level.var_2fd26037 dialog::say("hend_take_out_those_charg_0", 0.7);
	level flag::clear("important_vo_playing");
	level flag::wait_till("silo_swim_bridge_collapse");
	level flag::set("important_vo_playing");
	level.var_2fd26037 dialog::say("hend_bridge_coming_down_0");
	level dialog::remote("kane_hang_on_something_s_0", 1);
	level dialog::remote("kane_futz_we_hav_0", 0.5);
	level flag::clear("important_vo_playing");
}

/*
	Name: function_72e5fd1f
	Namespace: namespace_da397ec0
	Checksum: 0x2CEA2FAA
	Offset: 0x1560
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function function_72e5fd1f()
{
	var_c2758464 = 0.2;
	n_lines_played = 0;
	while(!level flag::get("silo_complete"))
	{
		if(level.activePlayers.size == 0)
		{
			return;
		}
		n_fraction = level.activePlayers[0] hazard::function_b78a859e("o2");
		if(n_fraction > var_c2758464)
		{
			if(!level flag::get("important_vo_playing"))
			{
				switch(n_lines_played)
				{
					case 0:
					{
						level.var_2fd26037 dialog::say("hend_we_gotta_get_up_ther_0");
						break;
					}
					case 1:
					{
						level.var_2fd26037 dialog::say("hend_your_o2_levels_are_d_0");
						break;
					}
					case 2:
					{
						level.var_2fd26037 dialog::say("hend_your_o2_level_s_crit_0");
						break;
					}
					case 3:
					{
						level.var_2fd26037 dialog::say("hend_go_go_go_1");
						break;
					}
				}
			}
			n_lines_played++;
			var_c2758464 = var_c2758464 + 0.2;
		}
		wait(1);
	}
}

/*
	Name: function_e5892d8b
	Namespace: namespace_da397ec0
	Checksum: 0xC192C088
	Offset: 0x1718
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_e5892d8b()
{
	Array::thread_all(GetEntArray("drowning_trigger", "targetname"), &function_48cb67f6);
	level flag::wait_till_any(Array("ai_drowning", "hendricks_move_up_5"));
	util::delay(RandomFloatRange(0.5, 1), undefined, &scene::Play, "cin_sgen_25_02_siloswim_vign_windowbang_54i02_drowning");
	util::delay(RandomFloatRange(2, 3), undefined, &scene::Play, "cin_sgen_25_02_siloswim_vign_windowbang_54i03_drowning");
}

/*
	Name: function_5faf4875
	Namespace: namespace_da397ec0
	Checksum: 0xF56469BF
	Offset: 0x1820
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_5faf4875()
{
	level.e_safe_zone = GetEnt("silo_swim_safe_area", "targetname");
	var_94dd2adf = struct::get_array("static_depth_charge", "targetname");
	foreach(var_cb85ae7c in var_94dd2adf)
	{
		var_cb85ae7c thread function_da28fd56();
		util::wait_network_frame();
	}
	var_15c854f8 = vehicle::simple_spawn_single("depth_charge_carrier");
	var_15c854f8 util::magic_bullet_shield();
	var_15c854f8 SetHoverParams(10, 10, 10);
	var_15c854f8 thread function_267dcc4e();
	level flag::wait_till("silo_complete");
	wait(3);
	var_15c854f8 util::stop_magic_bullet_shield();
	var_15c854f8 util::self_delete();
}

/*
	Name: function_931453ff
	Namespace: namespace_da397ec0
	Checksum: 0x11CAA9B9
	Offset: 0x19E0
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_931453ff()
{
	level endon("hash_df299fe4");
	var_c568c095 = GetEnt("hendricks_kill_bot", "script_noteworthy");
	var_c568c095 spawner::add_spawn_function(&function_9d7c6fb3);
	spawn_manager::enable("sm_under_silo_swim_robots");
	trigger::wait_till("silo_hendricks_start_trigger", undefined, undefined, 0);
	level scene::Play("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_1st_point");
	var_64e85e6d = GetAISpeciesArray("axis", "robot");
	Array::wait_till(var_64e85e6d, "death");
	if(!flag::get("hendricks_move_to_under_fan"))
	{
		level thread scene::Play("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_1st_point_wait");
		level flag::wait_till("hendricks_move_to_under_fan");
	}
	level scene::Play("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_shaft");
	level flag::wait_till("player_in_fan_vent");
	level scene::Play("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_thru_shaft");
	level thread scene::Play("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_upper_tunnel");
	level flag::wait_till("hendricks_move_up_4");
	level scene::Play("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_balconies");
	level flag::wait_till("hendricks_move_up_5");
	level scene::Play("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_rocks");
	level scene::Play("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_surface");
}

/*
	Name: function_9d7c6fb3
	Namespace: namespace_da397ec0
	Checksum: 0xE16C225B
	Offset: 0x1C60
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_9d7c6fb3()
{
	self endon("death");
	self SetTargetEntity(level.var_2fd26037);
	level.var_2fd26037 waittill("hash_f4673288");
	self kill();
}

/*
	Name: function_267dcc4e
	Namespace: namespace_da397ec0
	Checksum: 0xCC030BD7
	Offset: 0x1CC0
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_267dcc4e()
{
	level endon("hash_df299fe4");
	var_fe6e315e = struct::get_array("moving_depth_charge", "targetname");
	var_fe6e315e = Array::get_all_closest(self.origin, var_fe6e315e);
	spawn_index = 0;
	n_delay = 1 - level.players.size - 1 * 0.17;
	while(1)
	{
		if(spawn_index < var_fe6e315e.size)
		{
		}
		else
		{
		}
		spawn_index = 0;
		if(isdefined(var_fe6e315e[spawn_index]))
		{
			self thread function_26a0a902("script_model", var_fe6e315e[spawn_index]);
		}
		wait(n_delay);
	}
}

/*
	Name: function_da28fd56
	Namespace: namespace_da397ec0
	Checksum: 0xA9206E91
	Offset: 0x1DD0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_da28fd56()
{
	var_2d4569cf = self function_26a0a902("script_model", undefined);
	return var_2d4569cf;
}

/*
	Name: function_26a0a902
	Namespace: namespace_da397ec0
	Checksum: 0x989FCC29
	Offset: 0x1E10
	Size: 0x21F
	Parameters: 3
	Flags: None
*/
function function_26a0a902(str_type, s_start, var_253d1f97)
{
	if(!isdefined(str_type))
	{
		str_type = "script_model";
	}
	if(!isdefined(var_253d1f97))
	{
		var_253d1f97 = 0;
	}
	self endon("death");
	if(level flag::get("silo_complete"))
	{
		return;
	}
	if(!isdefined(self))
	{
		return;
	}
	var_2d4569cf = undefined;
	if(str_type === "script_model")
	{
		var_2d4569cf = self function_dabb79d8();
		if(isdefined(s_start))
		{
			var_2d4569cf.targetname = "depth_charger_dive";
			var_2d4569cf thread function_c51242e1(s_start, var_253d1f97);
		}
		else
		{
			var_2d4569cf.targetname = "depth_charger_static";
			var_2d4569cf thread util::delay(RandomFloatRange(0.5, 5), undefined, &sway, 5, 8, 18);
		}
		if(!var_253d1f97)
		{
			var_2d4569cf thread function_c775e8da(400);
		}
	}
	else
	{
		var_2d4569cf = self function_f51a7ebb();
		var_2d4569cf.origin = self.origin;
		var_2d4569cf.angles = self.angles;
		var_2d4569cf thread function_66b2e4a2();
		var_2d4569cf thread function_c51242e1(s_start, var_253d1f97);
		if(self.classname === "script_model")
		{
			self util::self_delete();
		}
	}
	return var_2d4569cf;
}

/*
	Name: function_f51a7ebb
	Namespace: namespace_da397ec0
	Checksum: 0x8634C5B5
	Offset: 0x2038
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_f51a7ebb(v_origin)
{
	var_25e2c218 = undefined;
	while(!isdefined(var_25e2c218))
	{
		var_25e2c218 = vehicle::simple_spawn_single("depth_charge_spawner", 1);
		util::wait_network_frame();
	}
	var_25e2c218 thread function_d2d42898();
	var_25e2c218 SetNearGoalNotifyDist(105 / 2);
	var_25e2c218 namespace_16f9ecd3::function_b3ce91e0();
	var_25e2c218 clientfield::set("sm_depth_charge_fx", 2);
	return var_25e2c218;
}

/*
	Name: function_dabb79d8
	Namespace: namespace_da397ec0
	Checksum: 0x46872E14
	Offset: 0x2118
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function function_dabb79d8()
{
	var_5a16524f = util::spawn_model("veh_t7_drone_depth_charge", self.origin, (RandomInt(360), RandomInt(360), RandomInt(360)));
	if(isdefined(var_5a16524f))
	{
		var_5a16524f.script_noteworthy = "depth_charge_model";
		var_5a16524f SetCanDamage(1);
		var_5a16524f.health = 999999;
		var_5a16524f clientfield::set("sm_depth_charge_fx", 1);
		var_5a16524f EnableAimAssist();
		var_5a16524f thread function_9e34c3b5();
		var_5a16524f namespace_16f9ecd3::function_b3ce91e0();
	}
	return var_5a16524f;
}

/*
	Name: function_c51242e1
	Namespace: namespace_da397ec0
	Checksum: 0x2306A7C4
	Offset: 0x2258
	Size: 0x35B
	Parameters: 2
	Flags: None
*/
function function_c51242e1(s_target, var_253d1f97)
{
	self endon("death");
	self endon("hash_75409bb6");
	if(!isVehicle(self))
	{
		if(isdefined(var_253d1f97) && var_253d1f97)
		{
			self thread function_46012050();
		}
	}
	else if(!isdefined(s_target))
	{
		if(isdefined(self.var_ab9199df))
		{
		}
		else
		{
		}
		s_target = Array::random(level.players);
	}
	if(isVehicle(self))
	{
		var_b28ba731 = GetTime() + 3000;
	}
	while(isdefined(s_target))
	{
		n_distance = Distance(self.origin, s_target.origin);
		n_time = n_distance / 200;
		if(isVehicle(self))
		{
			if(self istouching(level.e_safe_zone) || GetTime() >= var_b28ba731)
			{
				break;
			}
			if(isPlayer(s_target))
			{
				self SetVehGoalPos(self GetClosestPointOnNavVolume(s_target GetEye(), 512), 1, 1);
			}
			else
			{
				self SetVehGoalPos(s_target.origin, 1, 1);
			}
			wait(0.5);
			if(DistanceSquared(self.origin, s_target.origin) <= 30625)
			{
				break;
			}
		}
		else if(n_time)
		{
			self moveto(s_target.origin, n_time);
			self waittill("movedone");
		}
		if(isVehicle(self))
		{
			if(!isdefined(s_target) || (!isPlayer(s_target) && (!isdefined(var_253d1f97) && var_253d1f97)))
			{
				if(isdefined(self.var_ab9199df))
				{
				}
				else
				{
				}
				s_target = Array::random(level.players);
			}
		}
		else if(isdefined(s_target.target))
		{
		}
		else
		{
		}
		s_target = undefined;
	}
	self thread function_6493f00e();
}

/*
	Name: function_9e34c3b5
	Namespace: namespace_da397ec0
	Checksum: 0x97CB6474
	Offset: 0x25C0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_9e34c3b5()
{
	self endon("death");
	self waittill("damage", damage, e_attacker);
	if(isPlayer(e_attacker))
	{
		namespace_99202726::function_e85e2afd(e_attacker);
	}
	self thread function_6493f00e(isdefined(e_attacker) && isPlayer(e_attacker));
}

/*
	Name: function_46012050
	Namespace: namespace_da397ec0
	Checksum: 0x2D6521C0
	Offset: 0x2660
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_46012050()
{
	self endon("death");
	self endon("hash_75409bb6");
	var_c4ebe9e7 = -10000;
	n_start_time = GetTime();
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			if(player.origin[2] > var_c4ebe9e7)
			{
				var_c4ebe9e7 = player.origin[2];
			}
		}
		if(self.origin[2] <= var_c4ebe9e7 + 512)
		{
			break;
		}
		wait(1);
	}
	var_90462d11 = var_c4ebe9e7;
	foreach(player in level.activePlayers)
	{
		if(player.origin[2] < var_90462d11)
		{
			var_90462d11 = player.origin[2];
		}
	}
	n_distance = self.origin[2] - var_90462d11 - 128;
	n_time = n_distance / 200;
	if(n_time > 0)
	{
		wait(RandomFloat(n_time));
	}
	self thread function_6493f00e();
}

/*
	Name: function_c775e8da
	Namespace: namespace_da397ec0
	Checksum: 0x613CE4C8
	Offset: 0x28B8
	Size: 0x16F
	Parameters: 1
	Flags: None
*/
function function_c775e8da(var_7a998a01)
{
	if(!isdefined(var_7a998a01))
	{
		var_7a998a01 = 400;
	}
	level endon("hash_df299fe4");
	self endon("hash_75409bb6");
	self endon("death");
	self thread function_207a5a6f();
	while(1)
	{
		foreach(player in level.players)
		{
			if(!player istouching(level.e_safe_zone) && !player IsInMoveMode("ufo", "noclip"))
			{
				if(DistanceSquared(player.origin, self.origin) < var_7a998a01 * var_7a998a01)
				{
					self.var_ab9199df = player;
					self notify("hash_75409bb6");
				}
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_207a5a6f
	Namespace: namespace_da397ec0
	Checksum: 0xD03F9294
	Offset: 0x2A30
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_207a5a6f()
{
	self endon("death");
	self waittill("hash_75409bb6");
	self playsound("veh_depth_charge_locked");
	self PlayLoopSound("veh_depth_charge_chase", 0.5);
	if(!level flag::get("silo_complete"))
	{
		self thread function_26a0a902("script_vehicle");
	}
	else
	{
		self thread function_6493f00e();
	}
}

/*
	Name: function_6493f00e
	Namespace: namespace_da397ec0
	Checksum: 0xA9BDEC3D
	Offset: 0x2AF8
	Size: 0x2B1
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
	RadiusDamage(v_origin, 175, 50, 15, self);
	PlayRumbleOnPosition("grenade_rumble", v_origin);
	Earthquake(0.5, 0.5, v_origin, 150);
	if(self.classname === "script_model")
	{
		playFX(level._effect["depth_charge_explosion"], v_origin);
		playsoundatposition("exp_drone_underwater", v_origin);
		self util::self_delete();
	}
	else
	{
		self DoDamage(self.health + 1000, self.origin, undefined, self, "none", "MOD_EXPLOSIVE");
	}
	wait(0.1);
	if(isdefined(var_e0c598de) && var_e0c598de)
	{
		var_f83c5536 = ArrayCombine(GetEntArray("depth_charge_model", "script_noteworthy"), GetEntArray("dept_charge_spawner_vh", "targetname"), 0, 0);
		var_f83c5536 = ArraySortClosest(var_f83c5536, v_origin, 5, 0, 105);
		foreach(var_2d4569cf in var_f83c5536)
		{
			if(isdefined(var_2d4569cf))
			{
				var_2d4569cf thread function_6493f00e();
				util::wait_network_frame();
			}
		}
	}
}

/*
	Name: function_78227c49
	Namespace: namespace_da397ec0
	Checksum: 0xA1AF1995
	Offset: 0x2DB8
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_78227c49()
{
	function_9e3608e3("silo_bridge_collapse_static");
	level scene::init("bridge_collapse", "targetname");
	level flag::wait_till("player_in_fan_vent");
	scene::add_scene_func("p7_fxanim_cp_sgen_bridge_silo_collapse_bundle", &function_38bb8243, "play");
	a_s_targets = struct::get_array("bridge_collapse_dp_target", "targetname");
	foreach(s_target in a_s_targets)
	{
		playFX(level._effect["depth_charge_explosion"], s_target.origin);
		playsoundatposition("exp_drone_underwater", s_target.origin);
		wait(0.1 + RandomInt(3) * 0.1);
	}
	level flag::wait_till("silo_swim_take_out");
	level flag::set("silo_swim_bridge_collapse");
	level scene::Play("bridge_collapse", "targetname");
	function_6ddd4fa4("silo_bridge_collapse_static");
}

/*
	Name: function_38bb8243
	Namespace: namespace_da397ec0
	Checksum: 0xEE4CB166
	Offset: 0x2FF8
	Size: 0x233
	Parameters: 1
	Flags: None
*/
function function_38bb8243(a_ents)
{
	var_edef565e = GetEnt("bridge_side1", "targetname");
	var_edef565e EnableLinkTo();
	var_edef565e LinkTo(a_ents["bridge_silo_collapse"], "bridge_main_fall_01_jnt");
	var_c7ecdbf5 = GetEnt("bridge_side2", "targetname");
	var_c7ecdbf5 EnableLinkTo();
	var_c7ecdbf5 LinkTo(a_ents["bridge_silo_collapse"], "bridge_main_fall_02_jnt");
	while(level scene::is_playing("p7_fxanim_cp_sgen_bridge_silo_collapse_bundle"))
	{
		var_5d11d4ef = GetEntArray("depth_charger_static", "targetname");
		foreach(var_2d4569cf in var_5d11d4ef)
		{
			if(var_2d4569cf istouching(var_edef565e) || var_2d4569cf istouching(var_c7ecdbf5))
			{
				var_2d4569cf thread function_6493f00e();
			}
		}
		wait(0.05);
	}
	var_edef565e delete();
	var_c7ecdbf5 delete();
}

/*
	Name: function_1b1cd649
	Namespace: namespace_da397ec0
	Checksum: 0x2110F413
	Offset: 0x3238
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_1b1cd649()
{
	s_start = struct::get("rock_suicide_drone");
	var_5a16524f = s_start function_da28fd56();
	level flag::wait_till("hendricks_move_up_4");
	t_damage = GetEnt("rock_slide_trigger", "targetname");
	t_damage TriggerEnable(0);
	var_3067ee68 = spawner::simple_spawn("rock_fall_bots");
	foreach(var_9b203de1 in var_3067ee68)
	{
		var_9b203de1.var_24eff8a4 = 562500;
		var_9b203de1.script_accuracy = 0.5;
	}
	trigger::wait_till("trig_rock_slide");
	if(isdefined(var_5a16524f))
	{
		var_5a16524f thread function_6493f00e();
		level thread scene::Play("p7_fxanim_cp_sgen_boulder_silo_depth_charge_bundle");
		level waittill("hash_fbf5202b");
		t_damage TriggerEnable(1);
		level waittill("hash_562dd11c");
		t_damage delete();
	}
}

/*
	Name: function_13a4841b
	Namespace: namespace_da397ec0
	Checksum: 0x97E1D16F
	Offset: 0x3448
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_13a4841b()
{
	level flag::set("silo_swim_take_out");
	level thread namespace_d40478f6::function_5d6d7c60();
	var_493378a9 = struct::get_array("under_silo_depth_charge", "targetname");
	var_8c2654e3 = [];
	for(i = 0; i < var_493378a9.size; i++)
	{
		var_456985ba = 0;
		if(var_493378a9[i].script_noteworthy === "ignore_player")
		{
			var_456985ba = 1;
		}
		var_8c2654e3[i] = var_493378a9[i] function_26a0a902("script_model", undefined, var_456985ba);
		if(isdefined(var_493378a9[i].target))
		{
			s_target = struct::get(var_493378a9[i].target, "targetname");
			var_8c2654e3[i] thread function_dd461d67(s_target);
		}
		wait(0.3);
	}
	Array::wait_till(var_8c2654e3, "death");
	level flag::set("hendricks_move_to_under_fan");
}

/*
	Name: function_dd461d67
	Namespace: namespace_da397ec0
	Checksum: 0x4E254A13
	Offset: 0x3620
	Size: 0x1D3
	Parameters: 1
	Flags: None
*/
function function_dd461d67(s_target)
{
	self endon("death");
	trigger::wait_till("depth_charge_swarm_trigger");
	n_distance = Distance(self.origin, s_target.origin);
	n_time = n_distance / 200;
	self notify("hash_34674350");
	self moveto(s_target.origin, n_time);
	self waittill("movedone");
	if(s_target.script_noteworthy === "detonate")
	{
		a_ai_axis = GetAITeamArray("axis");
		foreach(ai in a_ai_axis)
		{
			if(isalive(ai) && Distance(ai.origin, self.origin) < 400)
			{
				ai kill();
			}
		}
		self thread function_6493f00e();
	}
}

/*
	Name: function_7cf2db52
	Namespace: namespace_da397ec0
	Checksum: 0x79ACE14F
	Offset: 0x3800
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_7cf2db52(var_aa2d33b, n_alpha)
{
	if(!isdefined(var_aa2d33b))
	{
		var_aa2d33b = 0.6;
	}
	if(!isdefined(n_alpha))
	{
		n_alpha = 1;
	}
	level LUI::screen_fade(var_aa2d33b, n_alpha, 0, "black", 0);
	wait(var_aa2d33b);
}

/*
	Name: function_1e6ee4b9
	Namespace: namespace_da397ec0
	Checksum: 0x1078635E
	Offset: 0x3880
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_1e6ee4b9(var_4b1adf24, n_alpha)
{
	if(!isdefined(var_4b1adf24))
	{
		var_4b1adf24 = 0.4;
	}
	if(!isdefined(n_alpha))
	{
		n_alpha = 1;
	}
	level LUI::screen_fade(var_4b1adf24, 0, n_alpha, "black", 1);
	wait(var_4b1adf24);
}

/*
	Name: function_38a41822
	Namespace: namespace_da397ec0
	Checksum: 0x9D546AF9
	Offset: 0x3900
	Size: 0x2F1
	Parameters: 0
	Flags: None
*/
function function_38a41822()
{
	flag::wait_till("silo_complete");
	level clientfield::set("gameplay_started", 0);
	objectives::complete("cp_level_sgen_get_to_surface");
	namespace_99202726::function_fde8c3ce();
	Array::thread_all(level.players, &function_55b80798);
	level function_7cf2db52();
	Array::thread_all(GetAITeamArray("axis"), &util::self_delete);
	level util::function_d8eaed3d(5);
	level thread function_ff4696f8();
	level thread namespace_d40478f6::function_973b77f9();
	level util::clientNotify("tuwco");
	wait(2);
	if(isdefined(level.BZM_SGENDialogue9Callback))
	{
		level thread [[level.BZM_SGENDialogue9Callback]]();
	}
	level thread function_1e6ee4b9();
	level util::delay("fade_out_grab", undefined, &function_7cf2db52);
	scene::add_scene_func("cin_sgen_26_01_lobbyexit_1st_escape_grab", &function_bd2c7078, "done");
	level thread scene::Play("cin_sgen_26_01_lobbyexit_1st_escape_grab");
	level waittill("hash_2567a90b");
	if(!scene::is_skipping_in_progress())
	{
		util::screen_fade_out(0.6);
	}
	else
	{
		util::screen_fade_out(0);
	}
	level waittill("hash_bffd177e");
	foreach(player in level.activePlayers)
	{
		player disableUsability();
		player disableOffhandWeapons();
	}
}

/*
	Name: function_bd2c7078
	Namespace: namespace_da397ec0
	Checksum: 0x2D5B14F3
	Offset: 0x3C00
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_bd2c7078(a_ents)
{
	level thread function_1e6ee4b9();
	level util::delay("final_fade_out", undefined, &function_88c4a050);
	level thread namespace_d40478f6::function_e71fc67f();
	level thread audio::unlockFrontendMusic("mus_sgen_diaz_theme_intro");
	level thread scene::Play("p7_fxanim_cp_sgen_end_building_collapse_debris_bundle");
}

/*
	Name: function_55b80798
	Namespace: namespace_da397ec0
	Checksum: 0x32D5C529
	Offset: 0x3CB0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_55b80798()
{
	self EnableInvulnerability();
	self PlayRumbleOnEntity("damage_heavy");
	self clientfield::set_to_player("water_motes", 0);
	self hazard::function_60455f28("o2");
	self hazard::function_12231466("o2");
}

/*
	Name: function_ff4696f8
	Namespace: namespace_da397ec0
	Checksum: 0x1AE5585C
	Offset: 0x3D58
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ff4696f8()
{
	exploder::kill_exploder("lights_sgen_swimup");
	exploder::exploder("lights_sgen_afterswim");
}

/*
	Name: function_88c4a050
	Namespace: namespace_da397ec0
	Checksum: 0xE43B419
	Offset: 0x3D98
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_88c4a050(a_ents)
{
	level util::screen_fade_out(0.6);
	level clientfield::set("sndIGCsnapshot", 4);
	util::clear_streamer_hint();
	skipto::function_be8adfb8("silo_swim");
}

/*
	Name: function_d2d42898
	Namespace: namespace_da397ec0
	Checksum: 0x4AB370C1
	Offset: 0x3E18
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_d2d42898()
{
	level endon("hash_df299fe4");
	self waittill("death");
	if(!isdefined(self))
	{
		return;
	}
	self ghost();
	wait(1);
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: function_66b2e4a2
	Namespace: namespace_da397ec0
	Checksum: 0x83262783
	Offset: 0x3E88
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_66b2e4a2()
{
	self endon("death");
	level flag::wait_till("silo_complete");
	self delete();
}

/*
	Name: function_ed258e83
	Namespace: namespace_da397ec0
	Checksum: 0xDB0F1186
	Offset: 0x3ED8
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_ed258e83()
{
	level thread function_a025b41e();
	trigger::wait_till("start_silo_fx_debris");
	level clientfield::set("silo_debris", 1);
	util::wait_network_frame();
	trigger::wait_till("silo_debris");
	level clientfield::set("silo_debris", 2);
	util::wait_network_frame();
	level flag::wait_till("hendricks_move_up_4");
	level clientfield::set("silo_debris", 3);
	util::wait_network_frame();
	level flag::wait_till("hendricks_move_up_5");
	level clientfield::set("silo_debris", 4);
	util::wait_network_frame();
	level flag::wait_till("silo_complete");
	level clientfield::set("silo_debris", 6);
}

/*
	Name: function_a025b41e
	Namespace: namespace_da397ec0
	Checksum: 0xB3C0D357
	Offset: 0x4070
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a025b41e()
{
	level flag::wait_till("ai_drowning");
	level clientfield::set("silo_debris", 5);
	util::wait_network_frame();
}

/*
	Name: sway
	Namespace: namespace_da397ec0
	Checksum: 0xBDE6CEB9
	Offset: 0x40D0
	Size: 0x235
	Parameters: 3
	Flags: None
*/
function sway(n_time, n_min, n_max)
{
	if(!isdefined(n_time))
	{
		n_time = 10;
	}
	if(!isdefined(n_min))
	{
		n_min = 1;
	}
	if(!isdefined(n_max))
	{
		n_max = 3;
	}
	level endon("hash_df299fe4");
	self endon("death");
	self endon("hash_34674350");
	var_61cf9b22 = self.origin;
	var_175d1224 = self.angles;
	while(1)
	{
		v_movement = (randomIntRange(n_min, n_max), randomIntRange(n_min, n_max), randomIntRange(n_min, n_max)) * 0.75;
		var_7df56dbe = (randomIntRange(n_min, n_max), randomIntRange(n_min, n_max), randomIntRange(n_min, n_max));
		self moveto(var_61cf9b22 + v_movement, n_time, 0.5, 0.5);
		self RotateTo(var_175d1224 + var_7df56dbe, n_time, 0.5, 0.5);
		wait(n_time);
		self moveto(var_61cf9b22 - v_movement, n_time, 0.5, 0.5);
		self RotateTo(var_175d1224 - var_7df56dbe, n_time, 0.5, 0.5);
		wait(n_time);
	}
}

/*
	Name: function_48cb67f6
	Namespace: namespace_da397ec0
	Checksum: 0xDA058504
	Offset: 0x4310
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_48cb67f6()
{
	var_eb48c16a = struct::get_array(self.target);
	Array::thread_all(var_eb48c16a, &scene::init);
	self trigger::wait_till();
	foreach(s_bundle in var_eb48c16a)
	{
		s_bundle thread util::delay(n_index + 1 / 5, undefined, &scene::Play);
	}
}

/*
	Name: function_454f17f5
	Namespace: namespace_da397ec0
	Checksum: 0x3BF00B71
	Offset: 0x4428
	Size: 0x1F1
	Parameters: 0
	Flags: None
*/
function function_454f17f5()
{
	level flag::wait_till("player_in_fan_vent");
	foreach(player in level.activePlayers)
	{
		player thread hazard::function_e9b126ef(20, 0.6);
	}
	level flag::wait_till("hendricks_move_up_5");
	foreach(player in level.activePlayers)
	{
		player thread hazard::function_e9b126ef(25, 0.9);
	}
	level flag::wait_till("final_breath");
	foreach(player in level.activePlayers)
	{
		player thread hazard::function_e9b126ef(5, 1);
	}
}


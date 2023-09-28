#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation;
#using scripts\cp\cp_mi_sing_blackstation_accolades;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_4040b6c2;

/*
	Name: function_9f5e1dcd
	Namespace: namespace_4040b6c2
	Checksum: 0xC6574FBE
	Offset: 0x1838
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function function_9f5e1dcd()
{
	level.var_e121f644 = 0;
	level.var_6999c9ec = 0;
	level.var_eaf20b66 = GetNodeArray("black_station_warlord_preferred_node", "targetname");
	level.var_c5719229 = 0;
	level thread function_da25c72f();
	level thread function_86861a95();
	level thread function_d316aef3();
	level thread function_df797544();
	level thread function_7c8de67c();
	level thread function_1f5941f8();
	level thread function_41ad2775();
	level thread lightning_strike();
	level thread function_c31f21d6();
	level thread function_60578067();
	level thread function_d9afa854();
	level thread function_46ae7f32();
	level thread function_9694617b();
	level thread function_c9bd2230();
	level thread function_d83742ed();
	level thread function_5493cb1d();
	level thread function_5e698598();
	if(isdefined(level.BZM_BLACKSTATIONDialogue4_3Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue4_3Callback]]();
	}
	level thread namespace_23567e72::function_328b2c47();
	Array::thread_all(level.activePlayers, &namespace_79e1cd97::function_d870e0, "trig_exterior_color01");
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "toggle_rain_sprite", 0);
	level flag::wait_till("exterior_ready_weapons");
}

/*
	Name: function_5e698598
	Namespace: namespace_4040b6c2
	Checksum: 0xE9B8784B
	Offset: 0x1AD8
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_5e698598()
{
	level flag::wait_till("warlord_dead");
	var_a4f91ad6 = GetAITeamArray("axis");
	foreach(ai_guy in var_a4f91ad6)
	{
		if(ai_guy.origin[0] > -3100)
		{
			if(isalive(ai_guy))
			{
				ai_guy kill();
			}
		}
	}
}

/*
	Name: function_3450aa78
	Namespace: namespace_4040b6c2
	Checksum: 0xBEDAB5
	Offset: 0x1BE8
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_3450aa78(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_blackstation_exterior_hendricks");
		namespace_79e1cd97::function_da579a5d("objective_blackstation_exterior");
		level.var_3d556bcd ai::set_ignoreall(1);
		level thread scene::Play("cin_bla_13_02_looting_vign_lightningstrike_ziplinetalk_kane_idle");
		load::function_a2995f22();
		var_23419962 = GetEnt("trigger_talk_kane", "targetname");
		var_23419962 delete();
		level flag::set("hendricks_crossed");
		level flag::set("goto_zipline");
		level flag::set("talk_kane");
		level flag::set("hendricks_zipline");
		level function_5142ef8e();
		level function_b8052aae();
	}
	level thread namespace_79e1cd97::function_6778ea09("none");
	level scene::add_scene_func("p7_fxanim_gp_shutters_sm_02_blue_s4_bundle", &function_d6a0893b, "play");
	level thread scene::Play("blackstation_exterior_shutters");
	level thread function_ac6ad822();
	streamerRequest("set", "cp_mi_sing_blackstation_objective_end_igc");
	function_9f5e1dcd();
}

/*
	Name: function_b5e9c2fe
	Namespace: namespace_4040b6c2
	Checksum: 0x2318558B
	Offset: 0x1E48
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_b5e9c2fe(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_d6a0893b
	Namespace: namespace_4040b6c2
	Checksum: 0x20C7FDCB
	Offset: 0x1E78
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_d6a0893b(a_ents)
{
	foreach(var_e62a2544 in a_ents)
	{
		if(var_e62a2544.origin[2] < 200)
		{
			var_e62a2544 notsolid();
		}
	}
}

/*
	Name: function_ac6ad822
	Namespace: namespace_4040b6c2
	Checksum: 0xF2178C5E
	Offset: 0x1F38
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_ac6ad822()
{
	level endon("hash_d9d3bee3");
	while(1)
	{
		if(math::cointoss())
		{
			exploder::exploder("exp_lightning_blackstation_exterior_f_01");
		}
		else
		{
			exploder::exploder("exp_lightning_blackstation_exterior_f_02");
		}
		wait(RandomFloatRange(5, 8));
		if(math::cointoss())
		{
			exploder::exploder("exp_lightning_blackstation_exterior_f_01");
		}
		else
		{
			exploder::exploder("exp_lightning_blackstation_exterior_f_02");
		}
		wait(RandomFloatRange(5, 8));
	}
}

/*
	Name: function_5142ef8e
	Namespace: namespace_4040b6c2
	Checksum: 0xA23E8ACF
	Offset: 0x2030
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_5142ef8e()
{
	spawner::add_spawn_function_group("upper_group1", "targetname", &function_1492467b);
	spawner::add_spawn_function_group("exterior_robots", "targetname", &function_1492467b);
	spawner::add_spawn_function_group("lower_exterior_group01", "targetname", &function_1492467b);
	spawner::add_spawn_function_group("exterior_robots_guards", "script_aigroup", &function_337b5b09);
	spawner::add_spawn_function_group("exterior_robots_pathers", "script_aigroup", &function_6933f59e);
	spawner::add_spawn_function_group("lightning_struck_gib", "script_noteworthy", &function_dca80d71);
	spawner::add_spawn_function_group("lightning_struck_shock", "script_noteworthy", &function_dca80d71);
	spawner::add_spawn_function_group("lightning_launch_ai", "script_noteworthy", &function_63c0faf2);
	spawner::add_spawn_function_group("exterior_gunner_front", "script_noteworthy", &function_63c0faf2);
	spawner::add_spawn_function_group("blackstation_warlord_spawner", "script_noteworthy", &function_7ed3137d);
	spawner::add_spawn_function_group("exterior_patroller", "script_noteworthy", &function_6d08f715);
}

/*
	Name: function_86861a95
	Namespace: namespace_4040b6c2
	Checksum: 0xEAD854AE
	Offset: 0x2250
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_86861a95()
{
	var_b61d7410 = GetEnt("trig_zipline01", "targetname");
	level thread function_b099c73d(var_b61d7410);
	var_2824e34b = GetEnt("trig_zipline02", "targetname");
	level thread function_b099c73d(var_2824e34b);
	level thread function_b78bbba4();
}

/*
	Name: function_b8052aae
	Namespace: namespace_4040b6c2
	Checksum: 0x1BC9B6F2
	Offset: 0x2308
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_b8052aae()
{
	spawner::simple_spawn("perimeter_patrol", &function_50eaaa70);
	wait(0.5);
	spawner::simple_spawn("exterior_working_robots", &function_1492467b);
}

/*
	Name: function_d9afa854
	Namespace: namespace_4040b6c2
	Checksum: 0x9D7CBC6E
	Offset: 0x2370
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_d9afa854()
{
	level flag::wait_till("talk_kane");
	spawn_manager::enable("sm_upper_group1");
	level flag::wait_till("ziplines_ready");
	spawner::simple_spawn("lower_exterior_group01", &function_1492467b);
	wait(0.5);
	spawn_manager::enable("sm_exterior_robots");
	level.var_4666226e = GetAITeamArray("axis");
	level flag::wait_till("blackstation_exterior_engaged");
	spawner::simple_spawn("sniper_exterior_group01", &function_bfa694b0);
}

/*
	Name: function_b0c674cf
	Namespace: namespace_4040b6c2
	Checksum: 0x9E5CF818
	Offset: 0x2488
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_b0c674cf()
{
	if(level.activePlayers.size < 3)
	{
		if(level.var_d4bb1798 == "left")
		{
			spawner::simple_spawn_single("sniper_right", &function_2dafb2d1);
		}
		else
		{
			spawner::simple_spawn_single("sniper_left", &function_2dafb2d1);
		}
	}
	else
	{
		spawner::simple_spawn_single("sniper_right", &function_2dafb2d1);
		spawner::simple_spawn_single("sniper_left", &function_2dafb2d1);
	}
}

/*
	Name: function_41ad2775
	Namespace: namespace_4040b6c2
	Checksum: 0x2BB141C9
	Offset: 0x2570
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_41ad2775()
{
	level flag::wait_till("zipline_player_landed");
	level thread objectives::breadcrumb("blackstation_exterior_breadcrumb");
	trigger::wait_till("trig_waypoint_station01");
	skipto::function_be8adfb8("objective_blackstation_exterior");
}

/*
	Name: function_3d53956f
	Namespace: namespace_4040b6c2
	Checksum: 0xC6F48D03
	Offset: 0x25F0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3d53956f()
{
	level thread objectives::breadcrumb("blackstation_interior_breadcrumb");
}

/*
	Name: function_1e6e44af
	Namespace: namespace_4040b6c2
	Checksum: 0x804040F9
	Offset: 0x2620
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_1e6e44af()
{
	self endon("death");
	self endon("hash_b2d41628");
	trigger::wait_till("trig_waypoint_station00", "targetname", self);
	self util::function_16c71b8(1);
	do
	{
		wait(1);
	}
	while(!self istouching(GetEnt("trig_waypoint_station00", "targetname")));
	self util::function_16c71b8(0);
	if(!level flag::get("exterior_ready_weapons"))
	{
		self function_1e6e44af();
	}
}

/*
	Name: function_d83742ed
	Namespace: namespace_4040b6c2
	Checksum: 0x62EB4FD
	Offset: 0x2708
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_d83742ed()
{
	level flag::wait_till("approach_intersection");
	level flag::wait_till("warlord_dead");
	trigger::use("triggercolor_station_advance");
	level flag::wait_till("goto_entrance");
	level thread function_a05c3d53();
	trigger::use("triggercolor_station_entrance");
	wait(2);
	level thread function_4b241521();
}

/*
	Name: function_4b241521
	Namespace: namespace_4040b6c2
	Checksum: 0xCBA047CC
	Offset: 0x27D8
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_4b241521()
{
	level flag::wait_till("exterior_clear");
	level scene::init("cin_bla_14_02_blackstation_vign_takepoint");
	level thread scene::Play("p7_fxanim_gp_lantern_chinese_red_04_bs_bundle");
	level.var_2fd26037 thread function_8632f992();
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 ai::set_behavior_attribute("vignette_mode", "slow");
	level.var_2fd26037 SetGoal(GetNode("nd_door_kick", "targetname"), 1);
	level.var_2fd26037 util::waittill_any("goal", "kick_door");
	wait(1);
	level thread scene::Play("cin_gen_aie_door_kick");
	wait(1);
	level.var_2fd26037 colors::enable();
	trigger::use("triggercolor_station_interior");
	level notify("hash_b5d76c65");
	level.var_2fd26037 ai::set_behavior_attribute("vignette_mode", "off");
	GetEnt("clip_station_door", "targetname") delete();
}

/*
	Name: function_8632f992
	Namespace: namespace_4040b6c2
	Checksum: 0x4AD8A331
	Offset: 0x29C8
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_8632f992()
{
	level endon("hash_b5d76c65");
	wait(15);
	self notify("hash_c5d15c3e");
}

/*
	Name: function_da25c72f
	Namespace: namespace_4040b6c2
	Checksum: 0x10AE3952
	Offset: 0x29F8
	Size: 0x59B
	Parameters: 0
	Flags: None
*/
function function_da25c72f()
{
	if(!isdefined(level.var_3d556bcd))
	{
		namespace_79e1cd97::function_da579a5d("objective_blackstation_exterior");
	}
	level.var_2fd26037 notify("stop_dynamic_run_speed");
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_3d556bcd ai::set_ignoreall(1);
	level.var_3d556bcd ai::set_ignoreme(1);
	foreach(player in level.players)
	{
		player thread function_1e6e44af();
	}
	level flag::wait_till("hendricks_crossed");
	level flag::wait_till("hendricks_zipline");
	level.var_2fd26037 SetGoal(GetNode("node_zipline", "targetname"), 1);
	level.var_2fd26037 waittill("goal");
	level flag::wait_till("talk_kane");
	level.var_2fd26037 ai::set_behavior_attribute("vignette_mode", "slow");
	level thread namespace_4297372::function_973b77f9();
	level thread scene::add_scene_func("cin_bla_13_02_looting_vign_lightningstrike_ziplinetalk_hendricks", &function_20aa53b9);
	level thread scene::add_scene_func("cin_bla_13_02_looting_vign_looting_zipline", &function_29ec302d, "play");
	level thread scene::add_scene_func("cin_bla_13_02_looting_vign_looting_zipline", &function_b8aa66aa, "done");
	level scene::Play("cin_bla_13_02_looting_vign_lightningstrike_ziplinetalk_hendricks");
	level.var_2fd26037 ai::set_behavior_attribute("vignette_mode", "off");
	wait(4);
	savegame::function_5d2cdd99();
	level flag::set("ziplines_ready");
	objectives::set("cp_level_blackstation_goto_station");
	level.var_2fd26037 thread function_2d102c76();
	level flag::wait_till("zipline_player_landed");
	Array::thread_all(level.activePlayers, &function_5fc18bba);
	level thread function_7f259445();
	level flag::wait_till("blackstation_exterior_engaged");
	level.var_2fd26037 thread namespace_79e1cd97::function_dccf6ccc();
	level.var_2fd26037 thread function_dfb9eb36();
	level.var_2fd26037 ai::set_behavior_attribute("move_mode", "rambo");
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_3d556bcd ai::set_ignoreall(0);
	trigger::use("trig_exterior_color01");
	level.var_3d556bcd thread function_97b95534();
	level flag::wait_till("kane_move_up");
	level function_9d556a71(level.var_3d556bcd, "trig_zipline01");
	level.var_3d556bcd ai::set_ignoreme(0);
	level.var_3d556bcd thread function_2d102c76();
	level flag::wait_till("kane_landed");
	level.var_3d556bcd ai::set_ignoreall(0);
	level.var_3d556bcd ai::set_ignoreme(0);
	level.var_3d556bcd colors::set_force_color("y");
	trigger::use("trig_exterior_color01", "targetname");
	wait(2);
	level.var_3d556bcd.holdFire = 0;
}

/*
	Name: function_29ec302d
	Namespace: namespace_4040b6c2
	Checksum: 0x26868271
	Offset: 0x2FA0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_29ec302d(a_ents)
{
	var_3169a073 = GetEnt("trig_zipline01", "targetname");
	var_3169a073.var_1dcdd471 = 1;
	level waittill("hash_808b60ca");
	level.var_2fd26037 playsound("evt_zipline_attach");
	level.var_2fd26037 PlayLoopSound("evt_zipline_npc_move", 0.3);
	wait(0.5);
	var_3169a073.var_1dcdd471 = 0;
}

/*
	Name: function_b8aa66aa
	Namespace: namespace_4040b6c2
	Checksum: 0x48A67AE3
	Offset: 0x3068
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_b8aa66aa(a_ents)
{
	level.var_2fd26037 StopLoopSound(0.1);
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin);
	wait(0.5);
	trigger::use("triggercolor_zipline");
}

/*
	Name: function_20aa53b9
	Namespace: namespace_4040b6c2
	Checksum: 0xD9BECA75
	Offset: 0x30E8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_20aa53b9(a_ents)
{
	objectives::complete("cp_level_blackstation_rendezvous");
	level scene::Play("cin_bla_13_02_looting_vign_lightningstrike_ziplinetalk_kane");
}

/*
	Name: function_a561f620
	Namespace: namespace_4040b6c2
	Checksum: 0x6552F4FB
	Offset: 0x3138
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_a561f620()
{
	level endon("hash_ad279290");
	trigger::wait_till("trigger_at_zipline");
	if(level scene::is_playing("cin_bla_12_01_cross_debris_vign_point"))
	{
		level notify("hash_62f8dc0c");
		level scene::stop("cin_bla_12_01_cross_debris_vign_point");
		s_pos = struct::get("hendricks_post_frogger");
		self skipto::function_d9b1ee00(s_pos);
		self colors::enable();
		level flag::set("hendricks_crossed");
		self ai::set_ignoreall(1);
	}
}

/*
	Name: function_7f259445
	Namespace: namespace_4040b6c2
	Checksum: 0x432EE5A1
	Offset: 0x3240
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_7f259445()
{
	level util::waittill_notify_or_timeout("exterior_moved_forward", 30);
	level flag::set("exterior_ready_weapons");
	level flag::wait_till("lightning_strike_done");
	level flag::set("blackstation_exterior_engaged");
}

/*
	Name: function_97b95534
	Namespace: namespace_4040b6c2
	Checksum: 0xECAAEED6
	Offset: 0x32D0
	Size: 0x397
	Parameters: 0
	Flags: None
*/
function function_97b95534()
{
	level endon("hash_738cf8d9");
	self ai::set_ignoreme(1);
	self thread laser_on();
	self thread function_63a77d04();
	wait(5);
	vh_truck = GetEnt("exterior_technical01_vh", "targetname");
	if(isalive(vh_truck))
	{
		ai_gunner = vh_truck vehicle::get_rider("gunner1");
		if(isalive(ai_gunner))
		{
			self thread ai::shoot_at_target("normal", ai_gunner, "j_head", undefined, undefined, 1);
			level FX::Play("blood_headpop", ai_gunner GetTagOrigin("j_head"));
			ai_gunner kill();
		}
	}
	wait(2);
	while(1)
	{
		a_ai_enemies = GetAITeamArray("axis");
		for(i = a_ai_enemies.size - 1; i >= 0; i--)
		{
			if(a_ai_enemies[i].archetype === "warlord")
			{
				ArrayRemoveIndex(a_ai_enemies, i);
			}
		}
		if(level.activePlayers.size)
		{
			e_player = level.activePlayers[RandomInt(level.activePlayers.size)];
			if(isalive(e_player))
			{
				a_ai_targets = ArraySortClosest(a_ai_enemies, e_player.origin);
				for(i = 0; i < a_ai_targets.size; i++)
				{
					if(isalive(a_ai_targets[i]))
					{
						if(isalive(e_player))
						{
							if(e_player util::is_player_looking_at(a_ai_targets[i] GetTagOrigin("j_head"), 0.85, 1) && a_ai_targets[i].allowdeath === "true")
							{
								self function_3f00de07(a_ai_targets[i]);
								break;
							}
						}
					}
				}
				wait(RandomFloatRange(4, 5));
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_3f00de07
	Namespace: namespace_4040b6c2
	Checksum: 0x9A5DD807
	Offset: 0x3670
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_3f00de07(ai_enemy)
{
	ai_enemy endon("death");
	self thread ai::shoot_at_target("normal", ai_enemy, "j_head");
	wait(1);
	self.holdFire = 0;
	if(ai_enemy.archetype == "human")
	{
		level FX::Play("blood_headpop", ai_enemy GetTagOrigin("j_head"));
	}
	self.holdFire = 1;
	ai_enemy kill();
}

/*
	Name: laser_on
	Namespace: namespace_4040b6c2
	Checksum: 0x9C82B812
	Offset: 0x3740
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function laser_on()
{
	self endon("hash_63a77d04");
	while(1)
	{
		self LaserOn();
		wait(0.05);
	}
}

/*
	Name: function_63a77d04
	Namespace: namespace_4040b6c2
	Checksum: 0x2A9347E2
	Offset: 0x3780
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_63a77d04()
{
	trigger::wait_till("trigger_station_approach");
	self notify("hash_63a77d04");
	util::wait_network_frame();
	self LaserOff();
}

/*
	Name: lightning_strike
	Namespace: namespace_4040b6c2
	Checksum: 0x48CC1F46
	Offset: 0x37E0
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function lightning_strike()
{
	level flag::wait_till("lightning_hit");
	level flag::set("lightning_strike");
	var_c6644e81 = struct::get("station_strike01");
	level FX::Play("lightning_strike", var_c6644e81.origin, VectorScale((-1, 0, 0), 90));
	exploder::exploder("fx_expl_lightning_strike_blkstn_ext");
	playsoundatposition("amb_2d_thunder_hits", var_c6644e81.origin);
	wait(0.5);
	level flag::set("lightning_strike_done");
}

/*
	Name: function_c31f21d6
	Namespace: namespace_4040b6c2
	Checksum: 0x92A51E16
	Offset: 0x38F8
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_c31f21d6()
{
	level endon("hash_47af7983");
	level flag::wait_till("blackstation_exterior_engaged");
	wait(2);
	var_64e85e6d = GetEntArray("exterior_working_robots_ai", "targetname");
	foreach(var_f6c5842 in var_64e85e6d)
	{
		Array::thread_all(level.activePlayers, &function_5eb38a05, var_f6c5842);
	}
}

/*
	Name: function_5eb38a05
	Namespace: namespace_4040b6c2
	Checksum: 0x2B8BE1BE
	Offset: 0x3A00
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_5eb38a05(var_f6c5842)
{
	self endon("death");
	level endon("hash_47af7983");
	self util::waittill_player_looking_at(var_f6c5842 GetCentroid(), 30, 1);
	level flag::set("lightning_hit");
}

/*
	Name: function_7c8de67c
	Namespace: namespace_4040b6c2
	Checksum: 0xDD8C16FA
	Offset: 0x3A80
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_7c8de67c()
{
	level endon("hash_d9d3bee3");
	level flag::wait_till("talk_kane");
	var_3de152e1 = struct::get_array("ambient_strike");
	while(1)
	{
		var_c6644e81 = Array::random(var_3de152e1);
		level FX::Play("lightning_strike", var_c6644e81.origin, VectorScale((-1, 0, 0), 90));
		playsoundatposition("amb_2d_thunder_hits", var_c6644e81.origin);
		wait(RandomFloatRange(3.5, 5.5));
	}
}

/*
	Name: function_63c0faf2
	Namespace: namespace_4040b6c2
	Checksum: 0xD2D58AC8
	Offset: 0x3B88
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_63c0faf2()
{
	self endon("death");
	level flag::wait_till("lightning_strike");
	wait(0.2);
	if(self.script_noteworthy === "exterior_gunner_front")
	{
		self thread animation::Play(self.rider_info.RideDeathAnim);
		self StartRagdoll();
		self LaunchRagdoll((50, 0, 90));
		self flagsys::clear("in_vehicle");
		vehicle::unclaim_position(self.vehicle, self.rider_info.position);
		self.vehicle = undefined;
		self.rider_info = undefined;
		self animation::set_death_anim(undefined);
	}
	else
	{
		self StartRagdoll();
		self LaunchRagdoll((-50, -20, 50));
	}
	level flag::wait_till("blackstation_exterior_engaged");
	self kill();
}

/*
	Name: function_60578067
	Namespace: namespace_4040b6c2
	Checksum: 0x2B884974
	Offset: 0x3D18
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_60578067()
{
	level flag::wait_till("lightning_strike");
	wait(0.5);
	var_af4e297a = GetEnt("lightning_strike_sound", "targetname");
	var_af4e297a playsound("fly_bot_head_sparks_disable");
}

/*
	Name: function_bfa694b0
	Namespace: namespace_4040b6c2
	Checksum: 0x7F118B33
	Offset: 0x3D98
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_bfa694b0()
{
	var_92f29fd5 = GetWeapon("launcher_guided_blackstation_ai");
	self ai::gun_switchto(var_92f29fd5, "right");
	self thread function_4472fea7();
}

/*
	Name: function_4472fea7
	Namespace: namespace_4040b6c2
	Checksum: 0xC1DBA0EF
	Offset: 0x3E08
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_4472fea7()
{
	self endon("death");
	while(1)
	{
		self waittill("missile_fire", e_proj);
		if(isdefined(e_proj) && isdefined(self.enemy))
		{
			n_dist = Int(Distance(self.origin, self.enemy.origin) * 0.05);
			n_range = randomIntRange(n_dist * -1, n_dist);
			v_offset = (n_range, n_range, n_range);
			e_proj Missile_SetTarget(self.enemy, v_offset);
		}
	}
}

/*
	Name: function_2d102c76
	Namespace: namespace_4040b6c2
	Checksum: 0x9A91BB7
	Offset: 0x3F18
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2d102c76()
{
	trigger::wait_till("trigger_station_cqb", "targetname", self);
	self ai::set_behavior_attribute("cqb", 1);
}

/*
	Name: function_1f5941f8
	Namespace: namespace_4040b6c2
	Checksum: 0x49B2252F
	Offset: 0x3F68
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_1f5941f8()
{
	level flag::wait_till("blackstation_exterior_engaged");
	spawner::add_spawn_function_group("lower_exterior_group02", "targetname", &function_1492467b);
	spawner::add_spawn_function_group("exterior_group03", "targetname", &function_b690ea0e);
	foreach(ai in level.var_4666226e)
	{
		if(isdefined(ai))
		{
			ai notify("hash_bb2402d8");
		}
	}
	level.var_4666226e = [];
	wait(3);
	level flag::set("exterior_truck_event");
	level flag::wait_till("warlord_go");
	spawn_manager::enable("sm_lower_group");
	level thread function_31b6dec0();
	spawn_manager::enable("exterior_group03_sm");
	level flag::wait_till("warlord_dead");
	spawn_manager::kill("exterior_group03_sm");
}

/*
	Name: function_c9bd2230
	Namespace: namespace_4040b6c2
	Checksum: 0xF8199157
	Offset: 0x4150
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_c9bd2230()
{
	level flag::wait_till("warlord_go");
	spawn_manager::enable("sm_warlord_station");
}

/*
	Name: function_31b6dec0
	Namespace: namespace_4040b6c2
	Checksum: 0xC3DFCE1
	Offset: 0x4198
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_31b6dec0()
{
	level endon("hash_5bbdd349");
	while(GetAICount() > 12 + 2)
	{
		wait(1);
	}
	level flag::set("warlord_go");
}

/*
	Name: function_7ed3137d
	Namespace: namespace_4040b6c2
	Checksum: 0x69F15B6A
	Offset: 0x4208
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_7ed3137d()
{
	self endon("death");
	level.var_e121f644++;
	self SetThreatBiasGroup("warlords");
	setthreatbias("heroes", "warlords", -1000);
	self thread function_5d3711fa();
	foreach(node in level.var_eaf20b66)
	{
		self WarlordInterface::AddPreferedPoint(node.origin, 3000, 5000);
	}
	self SetGoal(GetNode(self.script_string, "targetname"), 1);
	self waittill("goal");
	self ClearForcedGoal();
	level flag::wait_till("goto_entrance");
	self SetGoal(GetEnt("vol_warlord_retreat", "targetname"));
}

/*
	Name: function_5d3711fa
	Namespace: namespace_4040b6c2
	Checksum: 0x125831D4
	Offset: 0x43D0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_5d3711fa()
{
	self waittill("death");
	level.var_6999c9ec++;
	if(level.var_e121f644 == level.var_6999c9ec)
	{
		level flag::set("warlord_dead");
	}
}

/*
	Name: function_a05c3d53
	Namespace: namespace_4040b6c2
	Checksum: 0x9A3102B9
	Offset: 0x4428
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function function_a05c3d53()
{
	level endon("hash_30c6d441");
	while(1)
	{
		a_ai_enemies = GetAITeamArray("axis");
		if(!a_ai_enemies.size)
		{
			level flag::set("exterior_clear");
		}
		wait(1);
	}
}

/*
	Name: function_46ae7f32
	Namespace: namespace_4040b6c2
	Checksum: 0xA7804E78
	Offset: 0x4498
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_46ae7f32()
{
	level flag::wait_till("ziplines_ready");
	var_35a302af = vehicle::simple_spawn_single("exterior_technical01");
	var_35a302af endon("death");
	var_35a302af vehicle::lights_off();
	var_35a302af util::magic_bullet_shield();
	var_35a302af thread function_d1825549();
	var_35a302af thread function_1ff678ce();
	var_35a302af thread vehicle::get_on_and_go_path(GetVehicleNode(var_35a302af.target, "targetname"));
	var_35a302af thread namespace_79e1cd97::function_c262adca();
	level waittill("Pause");
	var_35a302af SetSpeed(0, 15, 5);
	ai_gunner = var_35a302af vehicle::get_rider("gunner1");
	while(isalive(ai_gunner))
	{
		wait(0.5);
	}
	wait(1);
	var_35a302af ResumeSpeed(15);
	var_35a302af playsound("evt_tech_driveup_3");
	level flag::wait_till("lightning_strike");
	var_35a302af turret::enable_auto_use(0);
	var_35a302af waittill("reached_end_node");
	var_35a302af util::stop_magic_bullet_shield();
	var_35a302af thread namespace_79e1cd97::function_fae23684("driver");
	var_35a302af SetSeatOccupied(0);
	var_35a302af MakeVehicleUsable();
}

/*
	Name: function_d1825549
	Namespace: namespace_4040b6c2
	Checksum: 0xC873A4CC
	Offset: 0x4718
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d1825549()
{
	self endon("death");
	level flag::wait_till("blackstation_exterior_engaged");
	self turret::enable(1, 1);
}

/*
	Name: function_1ff678ce
	Namespace: namespace_4040b6c2
	Checksum: 0x2DFBB2CC
	Offset: 0x4770
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_1ff678ce()
{
	level waittill("hash_271be752");
	level flag::set("truck_in_position");
}

/*
	Name: function_d316aef3
	Namespace: namespace_4040b6c2
	Checksum: 0x26F09A27
	Offset: 0x47A8
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_d316aef3()
{
	var_35a302af = vehicle::simple_spawn_single("exterior_technical02");
	var_35a302af endon("death");
	var_35a302af vehicle::lights_off();
	var_35a302af util::magic_bullet_shield();
	level flag::wait_till("blackstation_exterior_engaged");
	wait(2);
	var_35a302af turret::enable(1, 1);
	var_35a302af thread vehicle::get_on_and_go_path(GetVehicleNode(var_35a302af.target, "targetname"));
	var_35a302af playsound("evt_tech_driveup_4");
	var_35a302af waittill("reached_end_node");
	var_35a302af util::stop_magic_bullet_shield();
	wait(1);
	ai_driver = var_35a302af vehicle::get_rider("driver");
	if(isalive(ai_driver))
	{
		ai_driver colors::set_force_color("r");
		ai_driver vehicle::get_out();
	}
	var_35a302af SetSeatOccupied(0);
	var_35a302af MakeVehicleUsable();
	var_35a302af thread namespace_79e1cd97::function_d01267bd(2, 2, "cross_street");
}

/*
	Name: function_df797544
	Namespace: namespace_4040b6c2
	Checksum: 0xF7A0E27
	Offset: 0x49B0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_df797544()
{
	var_35a302af = vehicle::simple_spawn_single("exterior_technical03");
	var_35a302af endon("death");
	var_35a302af vehicle::lights_off();
	var_35a302af util::magic_bullet_shield();
	level flag::wait_till("blackstation_exterior_engaged");
	var_35a302af thread vehicle::get_on_and_go_path(GetVehicleNode(var_35a302af.target, "targetname"));
	var_35a302af playsound("evt_tech_driveup_5");
	var_35a302af ResumeSpeed(35);
	var_35a302af turret::enable(1, 1);
	var_35a302af waittill("reached_end_node");
	var_35a302af util::stop_magic_bullet_shield();
	wait(1);
	ai_driver = var_35a302af vehicle::get_rider("driver");
	if(isalive(ai_driver))
	{
		ai_driver colors::set_force_color("r");
		ai_driver vehicle::get_out();
	}
	var_35a302af SetSeatOccupied(0);
	var_35a302af MakeVehicleUsable();
	var_35a302af thread namespace_79e1cd97::function_d01267bd(2, 2, "cross_street");
}

/*
	Name: function_3d8fcbfe
	Namespace: namespace_4040b6c2
	Checksum: 0x770747D3
	Offset: 0x4BC8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_3d8fcbfe(var_35a302af)
{
	self endon("death");
	self vehicle::get_in(var_35a302af, "gunner1");
	while(!self flagsys::get("in_vehicle"))
	{
		if(!var_35a302af flagsys::get("driveroccupied"))
		{
			self vehicle::get_in(var_35a302af, "driver");
		}
		else
		{
			wait(0.05);
		}
	}
}

/*
	Name: function_78b9affb
	Namespace: namespace_4040b6c2
	Checksum: 0x8D48FBA8
	Offset: 0x4C78
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_78b9affb()
{
	self endon("death");
	self ai::set_ignoreall(1);
	level flag::wait_till("blackstation_exterior_engaged");
	self notify("stop_patrolling");
	self ai::set_behavior_attribute("patrol", 0);
	self ai::set_ignoreall(0);
}

/*
	Name: function_8401b524
	Namespace: namespace_4040b6c2
	Checksum: 0xDDB05651
	Offset: 0x4D10
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_8401b524()
{
	self endon("death");
	level flag::wait_till("lightning_strike");
	self notify("stop_patrolling");
	self ai::set_behavior_attribute("patrol", 0);
	wait(RandomFloatRange(0.5, 1));
	nd_runto = GetNode(self.script_noteworthy, "script_noteworthy");
	if(isdefined(nd_runto))
	{
		self SetGoal(GetNode(self.script_noteworthy, "script_noteworthy"), 1);
		self waittill("goal");
		self ClearForcedGoal();
	}
}

/*
	Name: function_50eaaa70
	Namespace: namespace_4040b6c2
	Checksum: 0xB7BBE377
	Offset: 0x4E28
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_50eaaa70()
{
	self endon("death");
	self colors::set_force_color("r");
	self thread function_862c1664();
	self thread function_78b9affb();
	self thread function_8401b524();
	self thread function_1492467b();
	self ai::set_behavior_attribute("patrol", 1);
	self thread ai::patrol(GetNode(self.script_noteworthy, "targetname"));
	self util::waittill_any("damage", "bulletwhizby", "grenadedanger", "death", "projectile_impact", "under_attack");
	level flag::set("exterior_ready_weapons");
	level flag::set("blackstation_exterior_engaged");
}

/*
	Name: function_1492467b
	Namespace: namespace_4040b6c2
	Checksum: 0x3833308D
	Offset: 0x4F98
	Size: 0x1B7
	Parameters: 0
	Flags: None
*/
function function_1492467b()
{
	self endon("death");
	if(self.archetype == "human")
	{
		self colors::set_force_color("r");
	}
	self thread function_862c1664();
	self ai::set_ignoreall(1);
	self util::waittill_any("damage", "bulletwhizby", "grenadedanger", "death", "projectile_impact", "under_attack");
	level flag::set("exterior_ready_weapons");
	level flag::set("blackstation_exterior_engaged");
	self ai::set_ignoreall(0);
	self.maxsightdistsqrd = self.var_98207841;
	foreach(ai in level.var_4666226e)
	{
		if(isdefined(ai))
		{
			ai notify("hash_bb2402d8");
		}
	}
	level.var_4666226e = [];
}

/*
	Name: function_2dafb2d1
	Namespace: namespace_4040b6c2
	Checksum: 0x3F615388
	Offset: 0x5158
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_2dafb2d1()
{
	self endon("death");
	self ai::set_ignoreall(1);
	level flag::wait_till("blackstation_exterior_engaged");
	self ai::set_ignoreall(0);
}

/*
	Name: function_862c1664
	Namespace: namespace_4040b6c2
	Checksum: 0x4733A06D
	Offset: 0x51C0
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_862c1664()
{
	self endon("death");
	level endon("hash_db81c671");
	self.var_98207841 = self.maxsightdistsqrd;
	self.maxsightdistsqrd = 360000;
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			if(self cansee(player))
			{
				level flag::set("blackstation_exterior_engaged");
			}
		}
		wait(0.3);
	}
}

/*
	Name: function_dca80d71
	Namespace: namespace_4040b6c2
	Checksum: 0x4BCDFFBF
	Offset: 0x52C0
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_dca80d71()
{
	self endon("death");
	if(!level flag::get("lightning_strike"))
	{
		if(self.script_noteworthy == "lightning_struck_gib")
		{
			self SetGoal(self.origin, 1);
		}
		level flag::wait_till("lightning_strike");
		self ai::set_ignoreme(1);
		self DisableAimAssist();
		wait(RandomFloat(1));
		self FX::Play("disabled_robot", self.origin, undefined, 15, 1, "j_neck");
		switch(RandomInt(4))
		{
			case 0:
			{
				str_scene = "cin_bla_13_02_looting_vign_lightningstrike_robot01";
				break;
			}
			case 1:
			{
				str_scene = "cin_bla_13_02_looting_vign_lightningstrike_robot02";
				break;
			}
			case 2:
			{
				str_scene = "cin_bla_13_02_looting_vign_lightningstrike_robot03";
				break;
			}
			case 3:
			{
				str_scene = "cin_bla_13_02_looting_vign_lightningstrike_robot04";
				break;
			}
		}
		self thread function_84aabd4b(str_scene);
	}
}

/*
	Name: function_84aabd4b
	Namespace: namespace_4040b6c2
	Checksum: 0x84A9CA2D
	Offset: 0x5478
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_84aabd4b(str_scene)
{
	self endon("death");
	n_min_wait = 6;
	n_max_wait = 10;
	self scene::Play(str_scene + "_zapped", self);
	self thread scene::Play(str_scene + "_loop", self);
	wait(RandomFloatRange(n_min_wait, n_max_wait));
	if(self.script_noteworthy === "lightning_struck_gib")
	{
		self ai::set_behavior_attribute("force_crawler", "gib_legs");
		self kill();
	}
	else
	{
		self scene::Play(str_scene, self);
		self EnableAimAssist();
		self ai::set_ignoreall(0);
		self ai::set_ignoreme(0);
		self ai::set_behavior_attribute("move_mode", "rusher");
	}
}

/*
	Name: function_337b5b09
	Namespace: namespace_4040b6c2
	Checksum: 0xC71959C7
	Offset: 0x5600
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_337b5b09()
{
	self endon("death");
	if(self.script_noteworthy === "robot_patrol")
	{
		self ai::set_behavior_attribute("move_mode", "normal");
	}
	else
	{
		self SetGoal(self.origin, 0, 128);
		self ai::set_behavior_attribute("move_mode", "guard");
	}
	level flag::wait_till("blackstation_exterior_engaged");
	self.goalRadius = 1000;
	self ai::set_behavior_attribute("move_mode", "normal");
}

/*
	Name: function_6933f59e
	Namespace: namespace_4040b6c2
	Checksum: 0x2D70ED39
	Offset: 0x56F8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_6933f59e()
{
	self endon("death");
	level flag::wait_till("zipline_player_landed");
	nd_start = GetNearestNode(self.origin);
	self SetGoal(nd_start);
}

/*
	Name: function_6d08f715
	Namespace: namespace_4040b6c2
	Checksum: 0xDF84FE1F
	Offset: 0x5770
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6d08f715()
{
	self endon("death");
	self thread ai::patrol(GetNearestNode(self.origin));
}

/*
	Name: function_b690ea0e
	Namespace: namespace_4040b6c2
	Checksum: 0x9DC981D1
	Offset: 0x57B8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b690ea0e()
{
	self endon("death");
	self colors::set_force_color("r");
}

/*
	Name: function_dfb9eb36
	Namespace: namespace_4040b6c2
	Checksum: 0x8DF5EE6F
	Offset: 0x57F0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_dfb9eb36()
{
	level flag::wait_till("warlord_dead");
	self notify("hash_d60979de");
	wait(1);
	while(GetAITeamArray("axis").size > 2)
	{
		wait(0.5);
	}
	a_ai_enemies = GetAITeamArray("axis");
	if(a_ai_enemies.size)
	{
		self namespace_79e1cd97::function_4f96504c(a_ai_enemies[0]);
		if(isalive(a_ai_enemies[0]))
		{
			self cybercom::function_d240e350("cybercom_fireflyswarm", a_ai_enemies[0], 0, 1);
		}
	}
}

/*
	Name: function_5fc18bba
	Namespace: namespace_4040b6c2
	Checksum: 0x52C309FE
	Offset: 0x58F8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5fc18bba()
{
	self endon("death");
	level endon("hash_db81c671");
	self waittill("weapon_fired");
	level flag::set("blackstation_exterior_engaged");
}

/*
	Name: function_2a47a71c
	Namespace: namespace_4040b6c2
	Checksum: 0xC3792B2E
	Offset: 0x5948
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_2a47a71c(player_num)
{
	if(player_num == 0)
	{
		return (-4768, 10399, 329);
	}
	else if(player_num == 1)
	{
		return (-4768, 10355, 329);
	}
	else if(player_num == 2)
	{
		return (-5618, 9366, 329);
	}
	else
	{
		return (-5618, 9294, 329);
	}
}

/*
	Name: function_34a9c09e
	Namespace: namespace_4040b6c2
	Checksum: 0xF9C56FE3
	Offset: 0x59D0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_34a9c09e()
{
	self endon("death");
	self clientfield::increment_to_player("postfx_igc", 1);
	self FreezeControls(1);
	wait(0.5);
	var_be173713 = function_2a47a71c(self GetEntityNumber());
	self SetOrigin(var_be173713);
	self SetPlayerAngles((0, 0, 0));
	self FreezeControls(0);
}

/*
	Name: function_45f61c3c
	Namespace: namespace_4040b6c2
	Checksum: 0x7A4796E8
	Offset: 0x5AA8
	Size: 0x54B
	Parameters: 3
	Flags: None
*/
function function_45f61c3c(var_62e11f41, s_start, s_end)
{
	self endon("death");
	self thread namespace_79e1cd97::function_ed7faf05();
	var_ad470f8c = util::spawn_model("tag_origin", self.origin, self.angles);
	n_dist = Distance(s_start.origin, s_end.origin);
	n_time = n_dist / 750;
	self DisableWeaponCycling();
	self disableOffhandWeapons();
	self AllowCrouch(0);
	self AllowProne(0);
	var_ad470f8c playsoundtoplayer("evt_zipline_attach", self);
	self.var_23304c9e = 1;
	var_ad470f8c.origin = self.origin;
	var_ad470f8c.angles = self.angles;
	self util::function_16c71b8(0);
	self PlayRumbleOnEntity("cp_blackstation_zipline_attach_rumble");
	var_ad470f8c moveto(s_start.origin, 0.05);
	var_ad470f8c RotateTo(s_start.angles, 0.05);
	var_f32c41e7 = GetTime();
	var_ad470f8c scene::Play("cin_gen_traversal_zipline_player_attach", self);
	if(GetTime() - var_f32c41e7 < 0.5)
	{
		var_6ec94357 = 1;
	}
	if(!(isdefined(var_6ec94357) && var_6ec94357))
	{
		self clientfield::set_to_player("wind_blur", 1);
		var_ad470f8c thread scene::Play("cin_gen_traversal_zipline_player_idle", self);
		self clientfield::set_to_player("zipline_rumble_loop", 1);
		self clientfield::set("zipline_sound_loop", 1);
		self PlayLoopSound("evt_zipline_move", 0.3);
		var_ad470f8c moveto(s_end.origin, n_time, 0, 0);
		var_ad470f8c waittill("movedone");
		var_ad470f8c playsoundtoplayer("evt_zipline_attach", self);
		self clientfield::set_to_player("wind_blur", 0);
		self PlayRumbleOnEntity("cp_blackstation_zipline_dismount_rumble");
		self clientfield::set_to_player("zipline_rumble_loop", 0);
		self clientfield::set("zipline_sound_loop", 0);
		self StopLoopSound(0.5);
		var_ad470f8c scene::Play("cin_gen_traversal_zipline_player_dismount", self);
	}
	self PlayRumbleOnEntity("cp_blackstation_zipline_land_rumble");
	self.var_23304c9e = 0;
	self notify("hash_4d91a838");
	self EnableWeaponCycling();
	self EnableOffhandWeapons();
	self AllowCrouch(1);
	self AllowProne(1);
	self thread namespace_79e1cd97::function_2c33b48e();
	level flag::set("zipline_player_landed");
	wait(0.3);
	var_ad470f8c delete();
	self DisableInvulnerability();
	if(isdefined(var_6ec94357) && var_6ec94357)
	{
		function_34a9c09e();
	}
}

/*
	Name: function_b099c73d
	Namespace: namespace_4040b6c2
	Checksum: 0xD56CB600
	Offset: 0x6000
	Size: 0x1F7
	Parameters: 1
	Flags: None
*/
function function_b099c73d(var_62e11f41)
{
	var_62e11f41 TriggerEnable(0);
	var_62e11f41.var_1dcdd471 = 0;
	level flag::wait_till("ziplines_ready");
	var_744d4302 = util::function_14518e76(var_62e11f41, &"cp_level_blackstation_zipline", &"CP_MI_SING_BLACKSTATION_ZIPLINE_TEXT", &function_a7b2f59e);
	var_744d4302.dontLinkPlayerToTrigger = 1;
	var_744d4302.trigger = var_62e11f41;
	var_744d4302 thread function_76529a7a();
	while(var_62e11f41.var_1dcdd471)
	{
		wait(0.1);
	}
	var_62e11f41 TriggerEnable(1);
	objectives::set("cp_level_blackstation_zipline", var_62e11f41.origin);
	s_start = struct::get(var_62e11f41.target, "targetname");
	s_end = struct::get(s_start.target, "targetname");
	while(!level flag::get("zipline_done"))
	{
		while(var_62e11f41.var_1dcdd471 == 1)
		{
			wait(0.25);
		}
		var_744d4302 gameobjects::enable_object();
		util::wait_network_frame();
	}
}

/*
	Name: function_a7b2f59e
	Namespace: namespace_4040b6c2
	Checksum: 0x6003C256
	Offset: 0x6200
	Size: 0x22F
	Parameters: 1
	Flags: None
*/
function function_a7b2f59e(e_player)
{
	e_player EnableInvulnerability();
	trigger::use("trig_zipline_player_spawns", "targetname", e_player);
	level thread namespace_4297372::function_f152b1dc();
	level flag::set(self.trigger.targetname);
	self.trigger.var_1dcdd471 = 1;
	self gameobjects::disable_object();
	objectives::hide_for_target("cp_level_blackstation_zipline", self.trigger.origin);
	if(!level.var_c5719229)
	{
		level.var_c5719229 = 1;
		if(self.trigger.targetname == "trig_zipline01")
		{
			level.var_d4bb1798 = "left";
		}
		else
		{
			level.var_d4bb1798 = "right";
		}
		level thread function_b0c674cf();
	}
	s_start = struct::get(self.trigger.target, "targetname");
	s_end = struct::get(s_start.target, "targetname");
	e_player namespace_79e1cd97::function_ed7faf05();
	e_player notify("hash_b2d41628");
	e_player util::function_16c71b8(1);
	e_player thread function_45f61c3c(self.trigger, s_start, s_end);
	wait(1.5);
	self.trigger.var_1dcdd471 = 0;
}

/*
	Name: function_b78bbba4
	Namespace: namespace_4040b6c2
	Checksum: 0xE0D61B58
	Offset: 0x6438
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_b78bbba4()
{
	while(!level flag::get("zipline_done"))
	{
		var_d0f085 = trigger::wait_till("trig_zipline_player_spawns", "targetname");
		var_d0f085.who.var_af1dcf8b = 1;
		if(level.activePlayers.size)
		{
			var_4f204e66 = 1;
			foreach(player in level.activePlayers)
			{
				if(player.var_af1dcf8b !== 1)
				{
					var_4f204e66 = 0;
					break;
				}
			}
			if(var_4f204e66)
			{
				level flag::set("zipline_done");
			}
		}
	}
}

/*
	Name: function_76529a7a
	Namespace: namespace_4040b6c2
	Checksum: 0x24EC92A1
	Offset: 0x6588
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_76529a7a()
{
	level flag::wait_till("zipline_done");
	self gameobjects::destroy_object();
	function_9e3608e3("collapse_frogger_water");
	function_9e3608e3("lt_wharf_water");
	function_9e3608e3("vista_water");
}

/*
	Name: function_1357e282
	Namespace: namespace_4040b6c2
	Checksum: 0x5B51D567
	Offset: 0x6618
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_1357e282(var_eda6085e)
{
	self waittill("movedone");
	if(isPlayer(var_eda6085e))
	{
		var_eda6085e StopLoopSound(0.5);
	}
	v_on_navmesh = GetClosestPointOnNavMesh(self.origin, 100, 48);
	if(isdefined(v_on_navmesh))
	{
		self moveto(v_on_navmesh, 0.25);
	}
	if(!isPlayer(var_eda6085e))
	{
		self scene::Play("cin_gen_traversal_zipline_enemy02_dismount", var_eda6085e);
	}
	self Unlink();
	self delete();
	if(var_eda6085e == level.var_3d556bcd)
	{
		level flag::set("kane_landed");
	}
	else if(isPlayer(var_eda6085e))
	{
		var_eda6085e thread namespace_79e1cd97::function_2c33b48e();
		level flag::set("zipline_player_landed");
		var_eda6085e util::function_16c71b8(0);
	}
}

/*
	Name: function_9d556a71
	Namespace: namespace_4040b6c2
	Checksum: 0x82920E9
	Offset: 0x67C8
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_9d556a71(var_3b8db917, var_4faa1e49)
{
	var_3169a073 = GetEnt(var_4faa1e49, "targetname");
	var_3169a073.var_1dcdd471 = 1;
	s_start = struct::get(var_3169a073.target, "targetname");
	s_end = struct::get(s_start.target, "targetname");
	var_3b8db917 playsound("evt_zipline_attach");
	var_eeed805e = util::spawn_model("tag_origin", s_start.origin, s_start.angles);
	if(var_3b8db917 == level.var_3d556bcd)
	{
		var_eeed805e scene::Play("cin_gen_traversal_zipline_enemy02_attach", var_3b8db917);
	}
	var_3b8db917 PlayLoopSound("evt_zipline_npc_move", 0.3);
	var_eeed805e thread scene::Play("cin_gen_traversal_zipline_enemy02_idle", var_3b8db917);
	n_dist = Distance(s_start.origin, s_end.origin);
	n_time = n_dist / 750;
	var_eeed805e moveto(s_end.origin, n_time, n_time / 2, 0.1);
	var_eeed805e thread function_1357e282(var_3b8db917);
	var_3b8db917 StopLoopSound(0.5);
	var_3169a073.var_1dcdd471 = 0;
}

/*
	Name: function_9694617b
	Namespace: namespace_4040b6c2
	Checksum: 0xC6C5092D
	Offset: 0x6A30
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_9694617b()
{
	level flag::wait_till("blackstation_exterior_engaged");
	level dialog::remote("kane_you_got_hostiles_inb_0", 1);
	level flag::wait_till("lightning_strike");
	level.var_2fd26037 dialog::say("hend_their_grunts_will_ha_0", 1);
	level flag::wait_till("warlord_go");
	level dialog::remote("kane_enemy_warlord_0", 2);
	level.var_2fd26037 dialog::say("hend_reinforcements_comin_1", 2);
	level flag::wait_till("goto_entrance");
	level.var_2fd26037 dialog::say("hend_kane_we_got_eyes_o_0", 5);
}

/*
	Name: function_a870c9be
	Namespace: namespace_4040b6c2
	Checksum: 0x307C78E
	Offset: 0x6B78
	Size: 0x373
	Parameters: 2
	Flags: None
*/
function function_a870c9be(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_blackstation_interior");
		namespace_79e1cd97::function_da579a5d("objective_blackstation_interior");
		level.var_3d556bcd colors::set_force_color("y");
		trigger::use("trig_blackstation_interior");
		level thread function_5493cb1d();
		level flag::set("blackstation_entry");
		objectives::complete("cp_level_blackstation_rendezvous");
		objectives::set("cp_level_blackstation_goto_station");
		level scene::init("cin_bla_14_02_blackstation_vign_takepoint");
		while(!scene::is_ready("cin_bla_14_02_blackstation_vign_takepoint"))
		{
			wait(0.05);
		}
		load::function_a2995f22();
	}
	objectives::complete("cp_level_blackstation_goto_station");
	level scene::init("cin_bla_14_06_blackstation_1st_approachdoor");
	level thread function_3d53956f();
	level thread namespace_79e1cd97::function_6778ea09("none");
	spawner::add_spawn_function_group("group_driller", "script_aigroup", &function_872c1dfe);
	spawner::add_spawn_function_group("interior_looter1", "targetname", &function_fa27d153);
	level thread function_fb2359a2();
	level thread function_c51fef21();
	level thread function_fc21e39b();
	level thread function_7bba9576();
	level thread function_bd050a2d();
	level.var_2fd26037 notify("stop_dynamic_run_speed");
	level.var_3d556bcd notify("stop_dynamic_run_speed");
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	level.var_3d556bcd ai::set_behavior_attribute("cqb", 1);
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_3d556bcd ai::set_ignoreall(1);
	level clientfield::set("sndBlackStationSounds", 1);
}

/*
	Name: function_2846e098
	Namespace: namespace_4040b6c2
	Checksum: 0x780507AD
	Offset: 0x6EF8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_2846e098(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_blackstation_blackstation");
}

/*
	Name: function_fb2359a2
	Namespace: namespace_4040b6c2
	Checksum: 0x25F68114
	Offset: 0x6F40
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_fb2359a2()
{
	trigger::wait_till("trig_waypoint_station03");
	level thread scene::Play("cin_bla_14_05_blackstation_vign_drilling_idle");
	level thread scene::Play("cin_bla_14_04_blackstation_aie_looting_a_idle");
	level flag::wait_till("drill_engaged");
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_3d556bcd ai::set_ignoreall(0);
}

/*
	Name: function_bd050a2d
	Namespace: namespace_4040b6c2
	Checksum: 0x7C73B7BE
	Offset: 0x6FF8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_bd050a2d()
{
	level flag::wait_till("driller_patrol");
	level flag::wait_till_timeout(8, "drill_engaged");
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_3d556bcd ai::set_ignoreall(0);
}

/*
	Name: function_872c1dfe
	Namespace: namespace_4040b6c2
	Checksum: 0xA5015C12
	Offset: 0x7078
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_872c1dfe()
{
	self endon("death");
	self thread function_99610c91();
	self thread function_2a08d4df();
	level flag::wait_till("drill_engaged");
	level thread scene::Play(self.script_noteworthy);
}

/*
	Name: function_2a08d4df
	Namespace: namespace_4040b6c2
	Checksum: 0x96CD5EA2
	Offset: 0x7100
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_2a08d4df()
{
	self endon("death");
	level endon("hash_f666d28a");
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			if(self cansee(player) && self.targetname != "interior_looter1_ai")
			{
				level flag::set("drill_engaged");
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_99610c91
	Namespace: namespace_4040b6c2
	Checksum: 0x38D2B451
	Offset: 0x71F8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_99610c91()
{
	self endon("death");
	self util::waittill_any("damage", "bulletwhizby", "grenadedanger", "death", "projectile_impact", "driller_go");
	level flag::set("drill_engaged");
}

/*
	Name: function_fa27d153
	Namespace: namespace_4040b6c2
	Checksum: 0x6A9EA79B
	Offset: 0x7278
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_fa27d153()
{
	self endon("death");
	self thread function_99610c91();
	level flag::wait_till("drill_engaged");
	level thread scene::Play("cin_bla_14_04_blackstation_aie_looting_a_react");
}

/*
	Name: function_7bba9576
	Namespace: namespace_4040b6c2
	Checksum: 0x4A9E264F
	Offset: 0x72E8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_7bba9576()
{
	level flag::wait_till("drill_engaged");
	level thread scene::Play("cin_bla_14_05_blackstation_vign_drilling_react4");
	level clientfield::set("sndDrillWalla", 0);
	var_88fd08c3 = GetAITeamArray("axis");
	foreach(var_973053c8 in var_88fd08c3)
	{
		var_973053c8 notify("hash_af52fefa");
	}
	level.var_54dc3c4c = spawn("script_origin", (-712, 9546, 368));
	level.var_54dc3c4c PlayLoopSound("vox_black_15_02_004_salm");
}

/*
	Name: function_893b7d1f
	Namespace: namespace_4040b6c2
	Checksum: 0xC7222FE4
	Offset: 0x7448
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_893b7d1f()
{
	self endon("death");
	level endon("hash_f666d28a");
	self waittill("weapon_fired");
	level flag::set("driller_patrol");
	level flag::set("drill_engaged");
}

/*
	Name: function_c51fef21
	Namespace: namespace_4040b6c2
	Checksum: 0x559A5F6C
	Offset: 0x74B8
	Size: 0x353
	Parameters: 0
	Flags: None
*/
function function_c51fef21()
{
	t_door = GetEnt("trig_end_igc_door", "targetname");
	t_door TriggerEnable(0);
	spawner::waittill_ai_group_cleared("group_driller");
	trigger::use("triggercolor_station_door");
	level thread namespace_4297372::function_973b77f9();
	wait(1);
	objectives::set("cp_level_blackstation_door", struct::get("outro_igc"));
	t_door TriggerEnable(1);
	t_door trigger::wait_till();
	t_door delete();
	level.var_54dc3c4c StopLoopSound();
	foreach(player in level.activePlayers)
	{
		player thread namespace_79e1cd97::function_ed7faf05();
	}
	level.var_2fd26037 colors::disable();
	level.var_3d556bcd colors::disable();
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin);
	level.var_3d556bcd SetGoal(level.var_3d556bcd.origin);
	level clientfield::set("gameplay_started", 0);
	level thread namespace_4297372::function_6048af60();
	level scene::Play("cin_bla_14_06_blackstation_1st_approachdoor", t_door.who);
	var_935a64f = GetEnt("bs_station_clip", "targetname");
	var_935a64f notsolid();
	var_935a64f connectpaths();
	objectives::complete("cp_level_blackstation_door", struct::get("outro_igc"));
	skipto::function_be8adfb8("objective_blackstation_interior");
	wait(1);
	level.var_54dc3c4c delete();
}

/*
	Name: function_5493cb1d
	Namespace: namespace_4040b6c2
	Checksum: 0x86F452A9
	Offset: 0x7818
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_5493cb1d()
{
	level flag::wait_till("blackstation_entry");
	level thread namespace_4297372::function_674f7650();
	level.var_2fd26037 dialog::say("hend_okay_let_s_see_wh_0");
	level flag::wait_till("driller_sound");
	level clientfield::set("sndDrillWalla", 1);
	foreach(player in level.activePlayers)
	{
		player thread function_893b7d1f();
	}
	level.var_2fd26037 dialog::say("hend_something_up_ahead_0");
}

/*
	Name: function_fc21e39b
	Namespace: namespace_4040b6c2
	Checksum: 0xCB45286
	Offset: 0x7968
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_fc21e39b()
{
	trigger::wait_till("trig_blackstation_interior");
	level.var_2fd26037 thread function_7c4f357d("nd_hendricks_boiler", "hendricks_ready");
	level.var_3d556bcd thread function_7c4f357d("nd_kane_boiler", "kane_ready");
	util::waittill_multiple("hendricks_ready", "kane_ready");
	namespace_79e1cd97::cleanup_ai();
	level scene::add_scene_func("cin_bla_14_02_blackstation_vign_takepoint", &function_362c6fe1);
	level scene::Play("cin_bla_14_02_blackstation_vign_takepoint");
	objectives::set("cp_level_blackstation_goto_center");
	var_935a64f = GetEnt("clip_boiler_room", "targetname");
	if(isdefined(var_935a64f))
	{
		var_935a64f delete();
	}
	savegame::function_5d2cdd99();
	streamerRequest("set", "cp_mi_sing_blackstation_objective_end_igc");
}

/*
	Name: function_362c6fe1
	Namespace: namespace_4040b6c2
	Checksum: 0x866C675A
	Offset: 0x7AF0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_362c6fe1(a_ents)
{
	level.var_2fd26037 colors::enable();
	level.var_3d556bcd colors::enable();
	trigger::use("triggercolor_past_boiler");
}

/*
	Name: function_7c4f357d
	Namespace: namespace_4040b6c2
	Checksum: 0x863F5DCE
	Offset: 0x7B50
	Size: 0x77
	Parameters: 2
	Flags: None
*/
function function_7c4f357d(var_9e2ba1f1, str_notify)
{
	self colors::disable();
	self SetGoal(GetNode(var_9e2ba1f1, "targetname"), 1);
	self waittill("goal");
	wait(1);
	level notify(str_notify);
}

/*
	Name: function_2783ca83
	Namespace: namespace_4040b6c2
	Checksum: 0x2CF64020
	Offset: 0x7BD0
	Size: 0x1FB
	Parameters: 2
	Flags: None
*/
function function_2783ca83(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_end_igc");
		namespace_79e1cd97::function_da579a5d("objective_end_igc");
		level scene::init("cin_bla_15_outro_3rd_sh010");
		load::function_c32ba481();
	}
	level notify("end_igc");
	level thread namespace_4297372::function_6048af60();
	level thread audio::unlockFrontendMusic("mus_blackstation_theme_intro");
	level scene::add_scene_func("cin_bla_15_outro_3rd_sh010", &function_bffd5cf, "play");
	level scene::add_scene_func("cin_bla_15_outro_3rd_sh070", &function_f94ebed5, "play");
	level scene::add_scene_func("cin_bla_15_outro_3rd_sh210", &function_c10be1, "play");
	level scene::add_scene_func("cin_bla_15_outro_3rd_sh210", &function_92a23169, "done");
	if(isdefined(level.BZM_BLACKSTATIONDialogue5Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue5Callback]]();
	}
	Array::run_all(GetCorpseArray(), &delete);
	level scene::Play("cin_bla_15_outro_3rd_sh010");
}

/*
	Name: function_392085c9
	Namespace: namespace_4040b6c2
	Checksum: 0x80529951
	Offset: 0x7DD8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_392085c9(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_f94ebed5
	Namespace: namespace_4040b6c2
	Checksum: 0x6E0E383C
	Offset: 0x7E08
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_f94ebed5(a_ents)
{
	level thread scene::Play("cin_bla_15_outro_3rd_sh070_bodies");
}

/*
	Name: function_bffd5cf
	Namespace: namespace_4040b6c2
	Checksum: 0x369FB9DC
	Offset: 0x7E40
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_bffd5cf(a_ents)
{
	level clientfield::set("outro_exposure", 1);
	level waittill("hash_8823b64");
	level clientfield::set("sndIGCsnapshot", 4);
	level LUI::screen_fade(0.5);
}

/*
	Name: function_c10be1
	Namespace: namespace_4040b6c2
	Checksum: 0x59C2CD39
	Offset: 0x7EC8
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_c10be1(a_ents)
{
	foreach(player in level.activePlayers)
	{
		player util::function_16c71b8(1);
	}
}

/*
	Name: function_92a23169
	Namespace: namespace_4040b6c2
	Checksum: 0xC540C7B0
	Offset: 0x7F70
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_92a23169(a_ents)
{
	skipto::function_be8adfb8("objective_end_igc");
}


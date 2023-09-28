#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_newworld;
#using scripts\cp\cp_mi_zurich_newworld_sound;
#using scripts\cp\cp_mi_zurich_newworld_train;
#using scripts\cp\cp_mi_zurich_newworld_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_immolation;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\phalanx;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_2f45a7a1;

/*
	Name: function_8c89c9ea
	Namespace: namespace_2f45a7a1
	Checksum: 0xB34054AD
	Offset: 0x2310
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_8c89c9ea(str_objective)
{
	level thread function_9ff60068();
	level.var_4d745c5c = util::function_740f8516("maretti");
	level.var_4d745c5c thread namespace_ce0e5f06::function_921d7387();
	skipto::teleport_ai(str_objective);
	exploder::exploder("exp_pinneddown_light");
	objectives::set("cp_level_newworld_underground_locate_terrorist");
}

/*
	Name: function_9ff60068
	Namespace: namespace_2f45a7a1
	Checksum: 0xEB8DE49
	Offset: 0x23C0
	Size: 0x1E1
	Parameters: 0
	Flags: None
*/
function function_9ff60068()
{
	level scene::add_scene_func("p7_fxanim_cp_newworld_icicles_01_bundle", &function_54536d43, "init");
	level scene::add_scene_func("p7_fxanim_cp_newworld_icicles_01_h2_bundle", &function_54536d43, "init");
	level scene::add_scene_func("p7_fxanim_cp_newworld_icicles_01_h3_bundle", &function_54536d43, "init");
	level scene::add_scene_func("p7_fxanim_cp_newworld_icicles_01_h4_bundle", &function_54536d43, "init");
	level scene::add_scene_func("p7_fxanim_cp_newworld_icicles_01_h5_bundle", &function_54536d43, "init");
	level scene::add_scene_func("p7_fxanim_cp_newworld_icicles_01_h6_bundle", &function_54536d43, "init");
	var_11a2919d = struct::get_array("icicle", "targetname");
	foreach(var_6d540b32 in var_11a2919d)
	{
		var_6d540b32 scene::init();
		util::wait_network_frame();
	}
}

/*
	Name: function_54536d43
	Namespace: namespace_2f45a7a1
	Checksum: 0xE126FBF7
	Offset: 0x25B0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_54536d43(a_ents)
{
	level endon("hash_3cf7368e");
	var_f6493330 = a_ents["icicle"];
	do
	{
		var_f6493330 waittill("damage", n_damage, attacker);
	}
	while(!n_damage <= 1);
	self thread scene::Play();
	var_f6493330 thread function_1c32a954(attacker);
}

/*
	Name: function_1c32a954
	Namespace: namespace_2f45a7a1
	Checksum: 0x465F9B37
	Offset: 0x2650
	Size: 0x22B
	Parameters: 1
	Flags: None
*/
function function_1c32a954(attacker)
{
	ground_trace = bullettrace(self.origin, self.origin + VectorScale((0, 0, -1), 1000), 0, self);
	v_ground = ground_trace["position"];
	a_ai = util::get_array_of_closest(v_ground, GetAITeamArray("axis"), undefined, undefined, 64);
	foreach(ai in a_ai)
	{
		if(isalive(ai) && ai.archetype == "human")
		{
			ai thread scene::Play("cin_new_vign_icicle_death_male0" + randomIntRange(1, 4), ai);
		}
	}
	self waittill("hash_bc75666f");
	if(isdefined(attacker))
	{
		attacker.weap = "icicle";
		self RadiusDamage(v_ground, 64, 500, 400, attacker);
		attacker.weap = undefined;
	}
	else
	{
		self RadiusDamage(v_ground, 64, 500, 400);
	}
}

/*
	Name: function_3293dfe7
	Namespace: namespace_2f45a7a1
	Checksum: 0xA707B038
	Offset: 0x2888
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function function_3293dfe7(params)
{
	if(isPlayer(params.eAttacker) && params.eAttacker.weap === "icicle")
	{
		level notify("hash_5308cf63");
	}
}

/*
	Name: function_6bd39ac8
	Namespace: namespace_2f45a7a1
	Checksum: 0x82C744F0
	Offset: 0x28F0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_6bd39ac8()
{
	self thread function_f86fbc8c();
	self thread function_d2e40f97();
}

/*
	Name: function_f86fbc8c
	Namespace: namespace_2f45a7a1
	Checksum: 0x7E8BB50
	Offset: 0x2930
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_f86fbc8c()
{
	self notify("hash_dc00f162");
	self endon("hash_dc00f162");
	self endon("death");
	level endon("hash_3cf7368e");
	while(1)
	{
		self waittill("grenade_fire", e_grenade);
		level thread function_a3720132(e_grenade);
	}
}

/*
	Name: function_d2e40f97
	Namespace: namespace_2f45a7a1
	Checksum: 0xA7E4FBCD
	Offset: 0x29B0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_d2e40f97()
{
	self notify("hash_318f6bcd");
	self endon("hash_318f6bcd");
	self endon("death");
	level endon("hash_3cf7368e");
	while(1)
	{
		self waittill("missile_fire", e_projectile);
		level thread function_a3720132(e_projectile);
	}
}

/*
	Name: function_a3720132
	Namespace: namespace_2f45a7a1
	Checksum: 0xAF538ADF
	Offset: 0x2A30
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_a3720132(e_weapon)
{
	if(e_weapon.classname === "rocket")
	{
		e_weapon waittill("projectile_impact_explode", v_pos);
	}
	else
	{
		e_weapon waittill("explode", v_pos);
	}
	function_13a9f3bd(v_pos);
}

/*
	Name: function_13a9f3bd
	Namespace: namespace_2f45a7a1
	Checksum: 0xE5298562
	Offset: 0x2AB0
	Size: 0x13F
	Parameters: 1
	Flags: None
*/
function function_13a9f3bd(v_pos)
{
	var_9f868d70 = 0;
	var_21c585fb = GetEntArray("icicle", "targetname");
	foreach(var_f6493330 in var_21c585fb)
	{
		n_dist = Distance2D(var_f6493330.origin, v_pos);
		if(n_dist < 320)
		{
			var_f6493330 DoDamage(1000, var_f6493330.origin);
			var_9f868d70++;
		}
		if(var_9f868d70 >= 2)
		{
			return;
		}
	}
}

/*
	Name: function_78f1dce
	Namespace: namespace_2f45a7a1
	Checksum: 0xACEBCEE1
	Offset: 0x2BF8
	Size: 0x163
	Parameters: 2
	Flags: None
*/
function function_78f1dce(str_objective, var_74cd64bc)
{
	level thread function_8c89c9ea(str_objective);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		load::function_a2995f22();
		level thread namespace_ce0e5f06::function_30ec5bf7(1);
		break;
	}
	foreach(player in level.players)
	{
		player namespace_ce0e5f06::function_974050f();
	}
	namespace_ce0e5f06::function_3383b379();
	battlechatter::function_d9f49fba(0);
	skipto::teleport(str_objective);
	function_3f7c354c();
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_2595088
	Namespace: namespace_2f45a7a1
	Checksum: 0x41C4CF37
	Offset: 0x2D68
	Size: 0xAB
	Parameters: 4
	Flags: None
*/
function function_2595088(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level clientfield::set("underground_subway_wires", 1);
	Array::thread_all(level.activePlayers, &function_6bd39ac8);
	callback::on_spawned(&function_6bd39ac8);
	callback::on_ai_killed(&function_177b3b6e);
}

/*
	Name: function_3f7c354c
	Namespace: namespace_2f45a7a1
	Checksum: 0xE28709DD
	Offset: 0x2E20
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_3f7c354c()
{
	scene::init("cin_new_10_01_pinneddown_1st_explanation");
	util::function_d8eaed3d(6);
	namespace_ce0e5f06::function_83a7d040();
	util::streamer_wait();
	level thread namespace_e38c3c58::function_bb8ce831();
	function_ea309b82();
	level flag::clear("infinite_white_transition");
	Array::thread_all(level.activePlayers, &namespace_ce0e5f06::function_737d2864, &"CP_MI_ZURICH_NEWWORLD_LOCATION_UNDERGROUND", &"CP_MI_ZURICH_NEWWORLD_TIME_UNDERGROUND");
	scene::add_scene_func("cin_new_10_01_pinneddown_1st_explanation", &function_99c20ee2);
	scene::add_scene_func("cin_new_10_01_pinneddown_1st_explanation", &function_f46c463f);
	scene::add_scene_func("cin_new_10_01_pinneddown_1st_explanation", &function_bc96df5e);
	scene::add_scene_func("cin_new_10_01_pinneddown_1st_explanation", &function_8477e90e, "skip_completed");
	if(isdefined(level.BZM_NEWWORLDDialogue8Callback))
	{
		level thread [[level.BZM_NEWWORLDDialogue8Callback]]();
	}
	scene::Play("cin_new_10_01_pinneddown_1st_explanation");
	util::clear_streamer_hint();
}

/*
	Name: function_8477e90e
	Namespace: namespace_2f45a7a1
	Checksum: 0x9506D979
	Offset: 0x2FF0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_8477e90e(a_ents)
{
	SetPauseWorld(0);
}

/*
	Name: function_bc96df5e
	Namespace: namespace_2f45a7a1
	Checksum: 0xC81BEBA1
	Offset: 0x3020
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_bc96df5e(a_ents)
{
	a_ents["maretti"] SetIgnorePauseWorld(1);
	a_ents["taylor"] SetIgnorePauseWorld(1);
	foreach(player in level.activePlayers)
	{
		player SetIgnorePauseWorld(1);
	}
	level thread function_f08b5faf();
	a_ents["maretti"] thread function_6e150e39();
	a_ents["taylor"] thread function_70f9e358();
	a_ents["pinneddown_grenade"] thread function_f7e3d16f();
	level thread function_ac9a1d1c();
}

/*
	Name: function_f08b5faf
	Namespace: namespace_2f45a7a1
	Checksum: 0xBD8A67A8
	Offset: 0x31A0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_f08b5faf()
{
	s_source = struct::get("underground_intro_icicle_damage", "targetname");
	level waittill("hash_ffa6b7cf");
	RadiusDamage(s_source.origin, 100, 200, 100);
}

/*
	Name: function_6e150e39
	Namespace: namespace_2f45a7a1
	Checksum: 0x93682526
	Offset: 0x3210
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_6e150e39()
{
	self ghost();
	self waittill("hash_6a79d9e7");
	self util::delay(0.1, undefined, &namespace_ce0e5f06::function_c949a8ed, 1);
	self waittill("hash_e378b4dc");
	self cybercom::function_f8669cbf(1);
}

/*
	Name: function_70f9e358
	Namespace: namespace_2f45a7a1
	Checksum: 0x2410C9FC
	Offset: 0x3298
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_70f9e358()
{
	self ghost();
	self waittill("hash_7d592b62");
	self util::delay(0.1, undefined, &namespace_ce0e5f06::function_c949a8ed, 1);
	self waittill("hash_c07e4907");
	self thread namespace_ce0e5f06::function_4943984c();
}

/*
	Name: function_99c20ee2
	Namespace: namespace_2f45a7a1
	Checksum: 0x5E7135BD
	Offset: 0x3318
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_99c20ee2(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		a_ents["player 1"] waittill("hash_55cc574a");
		level.var_71a9a72e = spawn("script_origin", (0, 0, 0));
		level.var_71a9a72e PlayLoopSound("evt_time_freeze_loop", 0.5);
		level.var_71a9a72e thread function_9f210ea6();
		exploder::exploder_stop("exp_pinneddown_light");
		SetPauseWorld(1);
		namespace_ce0e5f06::function_85d8906c();
	}
}

/*
	Name: function_9f210ea6
	Namespace: namespace_2f45a7a1
	Checksum: 0xAF71A5FE
	Offset: 0x3400
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_9f210ea6()
{
	level endon("hash_7829f98b");
	while(1)
	{
		if(isdefined(level.var_71a9a72e) && scene::is_skipping_in_progress())
		{
			level.var_71a9a72e StopLoopSound(0.5);
			util::wait_network_frame();
			level.var_71a9a72e delete();
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_f46c463f
	Namespace: namespace_2f45a7a1
	Checksum: 0xB0FEF883
	Offset: 0x3498
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_f46c463f(a_ents)
{
	level waittill("hash_f0ac66c1");
	if(isdefined(level.var_71a9a72e))
	{
		level.var_71a9a72e StopLoopSound(0.5);
		util::wait_network_frame();
		level.var_71a9a72e delete();
	}
	exploder::exploder("exp_pinneddown_light");
	SetPauseWorld(0);
	namespace_ce0e5f06::function_3383b379();
}

/*
	Name: function_f7e3d16f
	Namespace: namespace_2f45a7a1
	Checksum: 0xD4A20E5F
	Offset: 0x3550
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f7e3d16f()
{
	self waittill("hash_410efa2b");
	self clientfield::set("frag_grenade_fx", 1);
	self ghost();
}

/*
	Name: function_ac9a1d1c
	Namespace: namespace_2f45a7a1
	Checksum: 0xD1F914F4
	Offset: 0x35A8
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_ac9a1d1c()
{
	foreach(player in level.players)
	{
		player EnableInvulnerability();
		player ai::set_ignoreme(1);
	}
	level waittill("hash_d1c4e9ec");
	level thread function_25aaf50e();
	util::function_93831e79("underground_pinned_down_igc");
}

/*
	Name: function_ec466e32
	Namespace: namespace_2f45a7a1
	Checksum: 0xFEA77483
	Offset: 0x3690
	Size: 0x4CB
	Parameters: 2
	Flags: None
*/
function function_ec466e32(str_objective, var_74cd64bc)
{
	spawner::add_spawn_function_group("subway_station_enemies2", "targetname", &function_b4990972);
	spawner::add_spawn_function_group("subway_station_coop", "targetname", &function_b4990972);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread function_8c89c9ea(str_objective);
		load::function_a2995f22();
		function_ea309b82();
		level thread function_25aaf50e();
		var_26784055 = spawner::simple_spawn("pinneddown_sec_soldier");
		foreach(ai in var_26784055)
		{
			ai thread function_ed77756f();
		}
		level notify("hash_d195be99");
	}
	battlechatter::function_d9f49fba(1);
	level thread objectives::breadcrumb("t_breadcrumb_subway_station");
	level thread function_35e55e25();
	level thread function_3642167c();
	level.var_4d745c5c thread function_7caa076d();
	level flag::wait_till("intro_underground_robot_backup");
	spawner::simple_spawn("intro_underground_robot_backup_ai");
	namespace_ce0e5f06::function_52c5e321("subway_station_wave2", "aig_subway_station1", 2 + level.players.size * 1.5);
	spawner::simple_spawn("subway_station_enemies2");
	spawn_manager::enable("subway_station_coop_sm");
	level flag::wait_till("trig_obj_subway");
	level flag::wait_till("trig_subway_tunnel_mid");
	level thread function_7e81ef36();
	spawner::simple_spawn("subway_tunnel_mid_enemies");
	var_f1589cc = GetEntArray("subway_tunnel_mid_enemies_ai", "targetname");
	var_f763d4a6 = GetEntArray("subway_tunnel_mid_enemies2_ai", "targetname");
	var_66e7995a = GetEnt("v_subway_mid_enemies_fight_area", "targetname");
	foreach(actor in var_f1589cc)
	{
		actor SetGoal(var_66e7995a);
	}
	foreach(actor in var_f763d4a6)
	{
		actor SetGoal(var_66e7995a);
	}
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_3642167c
	Namespace: namespace_2f45a7a1
	Checksum: 0x14529879
	Offset: 0x3B68
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_3642167c()
{
	var_26784055 = spawner::simple_spawn("pinneddown_sec_soldier_extra");
	foreach(ai in var_26784055)
	{
		ai thread function_ed77756f();
	}
}

/*
	Name: function_7e81ef36
	Namespace: namespace_2f45a7a1
	Checksum: 0x88402148
	Offset: 0x3C20
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_7e81ef36()
{
	level clientfield::set("underground_subway_debris", 1);
	trigger::wait_till("underground_debris_fxanim");
	level clientfield::set("underground_subway_debris", 2);
}

/*
	Name: function_25aaf50e
	Namespace: namespace_2f45a7a1
	Checksum: 0xF7054516
	Offset: 0x3C88
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_25aaf50e()
{
	foreach(player in level.players)
	{
		player EnableInvulnerability();
		player thread util::delay(3, "death", &function_64a5556e);
	}
	a_ai = GetAITeamArray("axis");
	foreach(ai in a_ai)
	{
		ai thread function_2b033744();
	}
}

/*
	Name: function_64a5556e
	Namespace: namespace_2f45a7a1
	Checksum: 0x4CC238EE
	Offset: 0x3DF8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_64a5556e()
{
	self DisableInvulnerability();
	self ai::set_ignoreme(0);
}

/*
	Name: function_2b033744
	Namespace: namespace_2f45a7a1
	Checksum: 0x1F7F47
	Offset: 0x3E38
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_2b033744()
{
	self endon("death");
	var_214a2814 = self.script_accuracy;
	self.script_accuracy = 0.25;
	wait(5);
	self.script_accuracy = var_214a2814;
}

/*
	Name: function_41f657cc
	Namespace: namespace_2f45a7a1
	Checksum: 0x4261CD10
	Offset: 0x3E88
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_41f657cc(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_ea309b82
	Namespace: namespace_2f45a7a1
	Checksum: 0x28DB698D
	Offset: 0x3EB8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_ea309b82()
{
	spawner::simple_spawn("subway_station_enemies");
	level thread function_67e63fd4(1, "s_phalanx_start_1", "s_phalanx_end_1");
	level thread function_67e63fd4(1, "s_phalanx_start_2", "s_phalanx_end_2");
	if(level.activePlayers.size > 1)
	{
		spawner::simple_spawn("subway_station_enemies_coop");
	}
}

/*
	Name: function_67e63fd4
	Namespace: namespace_2f45a7a1
	Checksum: 0x6D003BF2
	Offset: 0x3F58
	Size: 0x11F
	Parameters: 3
	Flags: None
*/
function function_67e63fd4(var_c65b1f4, var_b010a07d, var_53ca64e)
{
	startPosition = struct::get(var_b010a07d, "targetname").origin;
	endPosition = struct::get(var_53ca64e, "targetname").origin;
	function_9b385ca5();
	phalanx = RobotPhalanx;
	Initialize(phalanx, "phalanx_diagonal_left", startPosition, endPosition, 2);
	robots = ArrayCombine(ArrayCombine(phalanx.tier1Robots_, phalanx.tier2Robots_, 0, 0), phalanx.tier3Robots_, 0, 0);
}

/*
	Name: function_ed77756f
	Namespace: namespace_2f45a7a1
	Checksum: 0x2A1BA2D2
	Offset: 0x4080
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_ed77756f()
{
	self endon("death");
	wait(RandomFloatRange(1, 5));
	self.health = 1;
}

/*
	Name: function_7caa076d
	Namespace: namespace_2f45a7a1
	Checksum: 0xC54FF79
	Offset: 0x40C0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_7caa076d()
{
	self function_68697b01();
	trigger::use("color_maretti_underground_start");
}

/*
	Name: function_b4990972
	Namespace: namespace_2f45a7a1
	Checksum: 0x7A39A030
	Offset: 0x4100
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_b4990972()
{
	self endon("death");
	if(self.classname === "actor_spawner_enemy_sec_robot_cqb_shotgun")
	{
		if(isdefined(self.target))
		{
			self waittill("goal");
		}
		self ai::set_behavior_attribute("move_mode", "rusher");
		self ai::set_behavior_attribute("sprint", 1);
		self SetIgnoreEnt(level.var_4d745c5c, 1);
	}
}

/*
	Name: function_177b3b6e
	Namespace: namespace_2f45a7a1
	Checksum: 0x5A1FBC3
	Offset: 0x41B0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_177b3b6e(s_info)
{
	if(self.archetype === "robot" && s_info.sMeansOfDeath === "MOD_BURNED")
	{
		level thread function_13a9f3bd(self.origin);
	}
}

/*
	Name: function_35e55e25
	Namespace: namespace_2f45a7a1
	Checksum: 0x9644CC4C
	Offset: 0x4218
	Size: 0x381
	Parameters: 0
	Flags: None
*/
function function_35e55e25()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	wait(0.6);
	namespace_ce0e5f06::function_3e37f48b(0);
	wait(0.4);
	namespace_ce0e5f06::function_3e37f48b(1);
	level flag::init("immolation_tutorial_vo_complete");
	level.var_11d004e5 = 1;
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player namespace_d00ec32::function_c219b381();
		player namespace_d00ec32::giveAbility("cybercom_immolation", 0);
		player namespace_d00ec32::function_eb512967("cybercom_immolation", 1);
		player thread function_b3018185();
		player thread namespace_ce0e5f06::function_6062e90("cybercom_immolation", 0, "start_fireflyswarm_tutorial", 1, "CP_MI_ZURICH_NEWWORLD_IMMOLATION_TARGET", "CP_MI_ZURICH_NEWWORLD_IMMOLATION_RELEASE", "immolation_tutorial_vo_complete");
	}
	trigger::wait_till("trig_choose_abilities");
	savegame::function_5d2cdd99();
	level notify("hash_937be0e0");
	level flag::init("maretti_ww_tutorial_vo_complete");
	self dialog::say("mare_word_of_advice_be_0");
	level flag::set("maretti_ww_tutorial_vo_complete");
	level thread function_f05ec5c("cybercom_fireflyswarm", 1);
	level.var_e120c906 = 1;
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player namespace_d00ec32::giveAbility("cybercom_fireflyswarm", 1);
		player.cybercom.var_161c9be8 = 0;
		player thread namespace_ce0e5f06::function_948d4091("cybercom_fireflyswarm", 1, "begin_enhanced_vision_tutorial", 1, "CP_MI_ZURICH_NEWWORLD_FIREFLY_SWARM_TUTORIAL", 2);
	}
}

/*
	Name: function_95c9ad6c
	Namespace: namespace_2f45a7a1
	Checksum: 0x7A789DEB
	Offset: 0x45A8
	Size: 0x1FB
	Parameters: 2
	Flags: None
*/
function function_95c9ad6c(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_e120c906 = 1;
		level.var_11d004e5 = 1;
		level thread function_8c89c9ea(str_objective);
		load::function_a2995f22();
		level thread objectives::breadcrumb("t_breadcrumb_construction");
	}
	else
	{
		level thread namespace_ce0e5f06::function_c1c980d8("t_cull_stragglers_subway");
	}
	namespace_ce0e5f06::function_39c9b63e(0, "underground_maintenance");
	var_9e6de1a1 = GetEnt("ev_door_left", "targetname");
	var_5d7a940c = GetEnt("ev_door_right", "targetname");
	var_9e6de1a1 disconnectpaths();
	var_5d7a940c disconnectpaths();
	var_fea633ae = GetEnt("t_ev_begin_use_trigger", "targetname");
	var_fea633ae TriggerEnable(0);
	level thread function_299698e7();
	level thread function_132db1b1();
	trigger::wait_till("trig_smokescreen");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_299698e7
	Namespace: namespace_2f45a7a1
	Checksum: 0x14D36C09
	Offset: 0x47B0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_299698e7()
{
	self function_68697b01();
	trigger::use("t_colors_g4090", "targetname");
	trigger::wait_till("t_colors_g4120");
	e_volume = GetEnt("v_crossroads_end_fight_zone", "targetname");
	while(1)
	{
		var_4c8fa27e = namespace_ce0e5f06::function_68b8f4af(e_volume);
		if(var_4c8fa27e.size <= 2)
		{
			break;
		}
		wait(0.05);
	}
	trigger::use("t_colors_g4130", "targetname");
}

/*
	Name: function_132db1b1
	Namespace: namespace_2f45a7a1
	Checksum: 0x5DF170BD
	Offset: 0x48A8
	Size: 0x209
	Parameters: 0
	Flags: None
*/
function function_132db1b1()
{
	trigger::wait_till("t_subway_crossroads_startup");
	namespace_ce0e5f06::function_f29e6c6d("sp_subway_crossroads_startup");
	level thread function_9e127032();
	level thread namespace_ce0e5f06::function_8f7b1e06("t_enemy_crossroads_fallback_1", "v_enemy_crossroads_fallback_1", "v_crossroads_holding_pos_1");
	level thread namespace_ce0e5f06::function_8f7b1e06("t_crossroads_right_path_fallback", "v_crossroads_right_path_fallback_start", "v_crossroads_right_path_fallback_end");
	level thread namespace_ce0e5f06::function_e0fb6da9("s_construction_push_point_a", 600, 3, 5, 1, 2, 20, "v_enemy_crossroads_fallback_1", "v_crossroads_enemy_push_1");
	level thread function_a4e2b8e0();
	trigger::wait_till("trig_subway_crossroads");
	spawner::simple_spawn("subway_crossroads_enemies");
	spawn_manager::enable("subway_crossroads_coop_sm");
	trigger::wait_till("ability_switch_vo");
	foreach(player in level.activePlayers)
	{
		if(!player namespace_ce0e5f06::function_c633d8fe())
		{
			player thread function_adfddace();
		}
	}
}

/*
	Name: function_a4e2b8e0
	Namespace: namespace_2f45a7a1
	Checksum: 0xC94781EB
	Offset: 0x4AC0
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_a4e2b8e0()
{
	trigger::wait_till("ability_switch_vo");
	var_fd478c84 = GetEnt("v_crossroads_right_path_fallback_end", "targetname");
	var_7d22b48e = GetEnt("v_ev_door_fallback", "targetname");
	while(1)
	{
		a_ai = namespace_ce0e5f06::function_68b8f4af(var_fd478c84);
		if(a_ai.size <= 4)
		{
			break;
		}
		wait(0.05);
	}
	for(i = 0; i < a_ai.size; i++)
	{
		e_ent = a_ai[i];
		e_ent setgoalvolume(var_7d22b48e);
	}
}

/*
	Name: function_9e127032
	Namespace: namespace_2f45a7a1
	Checksum: 0x3A040D34
	Offset: 0x4BE8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9e127032()
{
	namespace_ce0e5f06::function_520255e3("t_crossroads_start_run_to_right", 10);
	namespace_ce0e5f06::function_f29e6c6d("sp_crossroads_start_run_to_right");
}

/*
	Name: function_1b150072
	Namespace: namespace_2f45a7a1
	Checksum: 0x1D5892F6
	Offset: 0x4C30
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_1b150072(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_c83c689a
	Namespace: namespace_2f45a7a1
	Checksum: 0x6349CB44
	Offset: 0x4C60
	Size: 0x56B
	Parameters: 2
	Flags: None
*/
function function_c83c689a(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_e120c906 = 1;
		level.var_11d004e5 = 1;
		level thread function_8c89c9ea(str_objective);
		load::function_a2995f22();
		namespace_ce0e5f06::function_39c9b63e(0, "underground_maintenance");
	}
	level thread namespace_e38c3c58::function_d942ea3b();
	objectives::set("cp_level_newworld_subway_subobj_hack_door1");
	namespace_ce0e5f06::function_16dd8c5f("t_ev_begin_use_trigger", &"cp_level_newworld_access_door", &"CP_MI_ZURICH_NEWWORLD_HACK", "subway_door1_panel", "subway_door1_hacked", 1);
	objectives::complete("cp_level_newworld_subway_subobj_hack_door1");
	namespace_ce0e5f06::function_39c9b63e(1, "underground_maintenance");
	level thread function_936687a();
	level function_4be15fdf();
	level thread objectives::breadcrumb("t_breadcrumb_maintenance");
	level thread namespace_e38c3c58::function_71fee4f3();
	util::delay(2, undefined, &trigger::use, "maretti_start_construction_site");
	level thread function_4c4117b3();
	scene::add_scene_func("p7_fxanim_cp_newworld_plaster_walls_01_bundle", &function_43ed83e5, "play");
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player thread namespace_ce0e5f06::function_2e7b4007();
	}
	var_a8a64a67 = GetNodeArray("underground_construction_cover", "script_noteworthy");
	foreach(nd_cover in var_a8a64a67)
	{
		SetEnableNode(nd_cover, 0);
	}
	spawner::add_spawn_function_group("wall_breaker_enemy", "targetname", &function_b4990972);
	spawner::add_spawn_function_group("construction_coop_enemies", "targetname", &function_b4990972);
	level.var_4d745c5c thread function_57942b39();
	level waittill("hash_cfbc88a0");
	savegame::function_5d2cdd99();
	spawner::simple_spawn("construction_enemies");
	level thread function_b76dbe38();
	var_bf44d1a6 = struct::get_array("wall_breaker_enemies_1", "targetname");
	for(i = 0; i < level.players.size + 2; i++)
	{
		var_bf44d1a6[i] thread function_40809e();
	}
	if(level.players.size > 1)
	{
		spawn_manager::enable("construction_coop_sm");
	}
	level thread function_119163c9();
	level thread function_9a5b95da();
	level thread function_1786c095();
	trigger::wait_till("trig_maintenance");
	level notify("hash_2ea05568");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_4c4117b3
	Namespace: namespace_2f45a7a1
	Checksum: 0x19533841
	Offset: 0x51D8
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_4c4117b3()
{
	var_1f40bc8e = struct::get_array("p7_fxanim_cp_newworld_plaster_walls_01_bundle", "scriptbundlename");
	foreach(struct in var_1f40bc8e)
	{
		struct scene::init();
		util::wait_network_frame();
	}
	var_31c4e01e = struct::get_array("p7_fxanim_cp_newworld_tiles_fall_01_bundle", "scriptbundlename");
	foreach(struct in var_31c4e01e)
	{
		struct scene::init();
		util::wait_network_frame();
	}
}

/*
	Name: function_363675a4
	Namespace: namespace_2f45a7a1
	Checksum: 0xC1041420
	Offset: 0x5360
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_363675a4(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc === 1)
	{
		objectives::complete("cp_level_newworld_subway_subobj_hack_door1");
	}
}

/*
	Name: function_4be15fdf
	Namespace: namespace_2f45a7a1
	Checksum: 0x55E999C1
	Offset: 0x53B8
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_4be15fdf()
{
	level notify("hash_48aac315");
	var_9e6de1a1 = GetEnt("ev_door_left", "targetname");
	var_5d7a940c = GetEnt("ev_door_right", "targetname");
	var_5d7a940c playsound("evt_watertower_door_open");
	var_5d7a940c MoveY(52, 1.5, 1);
	var_9e6de1a1 MoveY(52 * -1, 1.5, 1);
	var_9e6de1a1 waittill("movedone");
	var_5d7a940c delete();
	var_9e6de1a1 delete();
}

/*
	Name: function_936687a
	Namespace: namespace_2f45a7a1
	Checksum: 0x1F4B2B3E
	Offset: 0x5500
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_936687a()
{
	spawner::simple_spawn("smokescreen_enemies");
	level scene::init("cin_new_11_01_subway_rollgrenade_enemy01");
	level scene::init("cin_new_11_01_subway_rollgrenade_enemy02");
	level scene::init("cin_new_11_01_subway_rollgrenade_enemy03");
	level scene::init("cin_new_11_01_subway_rollgrenade_enemy04");
	scene::add_scene_func("cin_new_11_01_subway_rollgrenade_enemy01", &function_2bce8fc);
	trigger::wait_till("trigger_start_ev_hallway");
	level thread scene::Play("cin_new_11_01_subway_rollgrenade_enemy01");
	level thread function_59280311();
	level thread scene::Play("cin_new_11_01_subway_rollgrenade_enemy02");
	trigger::wait_or_timeout(5, "trig_smokescreen_retreat");
	level thread scene::Play("cin_new_11_01_subway_rollgrenade_enemy03");
	level thread scene::Play("cin_new_11_01_subway_rollgrenade_enemy04");
	spawner::simple_spawn("smokescreen_retreat_enemies");
	trigger::wait_till("t_construction_midway");
	namespace_ce0e5f06::function_f29e6c6d("sp_construction_midway");
	level thread namespace_ce0e5f06::function_8f7b1e06(undefined, "v_construction_right_flank_pos", "v_construction_right_flank_fallback_pos");
}

/*
	Name: function_57942b39
	Namespace: namespace_2f45a7a1
	Checksum: 0x3DEFC953
	Offset: 0x5710
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_57942b39()
{
	self function_68697b01();
	trigger::wait_till("start_maretti_vs_robot");
	function_80ea604b();
	level thread function_bbbbc058();
	level flag::wait_till("player_entering_maintenance_area");
	self thread dialog::say("mare_party_ain_t_over_yet_0");
	self ai::set_ignoreall(1);
	self waittill("goal");
	self ai::set_ignoreall(0);
}

/*
	Name: function_59280311
	Namespace: namespace_2f45a7a1
	Checksum: 0xF3B50B79
	Offset: 0x57F0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_59280311()
{
	var_4dc81c18 = GetEnt("t_hazard_smoke", "targetname");
	var_4dc81c18 endon("death");
	var_4dc81c18 TriggerEnable(1);
	wait(30);
	var_4dc81c18 TriggerEnable(0);
}

/*
	Name: function_2bce8fc
	Namespace: namespace_2f45a7a1
	Checksum: 0x52074966
	Offset: 0x5878
	Size: 0x199
	Parameters: 1
	Flags: None
*/
function function_2bce8fc(a_ents)
{
	e_grenade = a_ents["grenade01"];
	e_grenade waittill("hash_59f6a1e5");
	e_grenade clientfield::set("smoke_grenade_fx", 1);
	e_grenade util::delay(60, undefined, &delete);
	level dialog::function_13b3b16a("plyr_they_re_using_smoke_0", 0.5);
	level.var_4d745c5c thread dialog::say("mare_switching_to_your_ev_0", 0.8);
	wait(1.5);
	level.var_74f7a02e = 1;
	namespace_ce0e5f06::function_63c3869a(1);
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player thread function_abc3a7e7();
	}
}

/*
	Name: function_abc3a7e7
	Namespace: namespace_2f45a7a1
	Checksum: 0x4FCE57E1
	Offset: 0x5A20
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_abc3a7e7()
{
	self endon("death");
	self endon("hash_6851db33");
	level endon("hash_982eac9f");
	level notify("hash_8d8d80ed");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	self flag::init("enhanced_vision_tutorial");
	self thread function_869943d3();
	self thread function_ee08b005();
	while(!self flag::get("enhanced_vision_tutorial"))
	{
		self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_ENHANCED_VISION", 0, undefined, 4);
		self flag::wait_till_timeout(4, "enhanced_vision_tutorial");
		self thread util::hide_hint_text(1);
		if(!self flag::get("enhanced_vision_tutorial"))
		{
			self flag::wait_till_timeout(3, "enhanced_vision_tutorial");
		}
	}
	self thread function_890227b4();
}

/*
	Name: function_869943d3
	Namespace: namespace_2f45a7a1
	Checksum: 0xBCCF4F75
	Offset: 0x5BD8
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_869943d3()
{
	self endon("death");
	self endon("hash_6851db33");
	level endon("hash_982eac9f");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	self waittill("hash_2b839b92");
	self flag::set("enhanced_vision_tutorial");
	level notify("hash_18a96087");
}

/*
	Name: function_890227b4
	Namespace: namespace_2f45a7a1
	Checksum: 0xC60ADDAB
	Offset: 0x5C98
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_890227b4()
{
	self endon("death");
	wait(2);
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	var_59dfa144 = GetEnt("toggle_oed_off", "targetname");
	while(1)
	{
		if(self istouching(var_59dfa144))
		{
			if(isdefined(self.var_aa3f3ac2) && self.var_aa3f3ac2)
			{
				self thread function_ce349fbf();
				self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_ENHANCED_VISION_OFF", 0, undefined, 4);
				break;
			}
			else
			{
				break;
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_80ea604b
	Namespace: namespace_2f45a7a1
	Checksum: 0x534D4090
	Offset: 0x5DD0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_80ea604b()
{
	self notify("hash_79fc9c96");
	scene::add_scene_func("cin_new_11_01_subway_vign_bustout", &function_ffac3853, "play");
	scene::add_scene_func("cin_new_11_01_subway_vign_bustout", &function_64ef2868, "done");
	level.var_4d745c5c namespace_ce0e5f06::function_d0aa2f4f();
	level notify("hash_cfbc88a0");
	scene::Play("cin_new_11_01_subway_vign_bustout");
	trigger::use("post_maretti_vs_robot_color");
}

/*
	Name: function_ffac3853
	Namespace: namespace_2f45a7a1
	Checksum: 0xBEB92BD9
	Offset: 0x5EA8
	Size: 0x121
	Parameters: 1
	Flags: None
*/
function function_ffac3853(a_ents)
{
	level waittill("hash_5274e586");
	var_6fcf42e = struct::get("drywall_burst_02", "targetname");
	var_6fcf42e scene::Play();
	if(isdefined(self.target))
	{
		var_a8a64a67 = GetNodeArray(self.target, "targetname");
		foreach(nd_cover in var_a8a64a67)
		{
			SetEnableNode(nd_cover, 1);
		}
	}
}

/*
	Name: function_64ef2868
	Namespace: namespace_2f45a7a1
	Checksum: 0x3F9EEABD
	Offset: 0x5FD8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_64ef2868(a_ents)
{
	if(isdefined(a_ents["robot_wrestles_maretti"]))
	{
		e_robot = a_ents["robot_wrestles_maretti"];
		if(isalive(e_robot))
		{
			e_robot kill();
		}
	}
}

/*
	Name: function_40809e
	Namespace: namespace_2f45a7a1
	Checksum: 0x16F57697
	Offset: 0x6050
	Size: 0x211
	Parameters: 0
	Flags: None
*/
function function_40809e()
{
	str_spawner = "wall_breaker_enemy";
	if(self.script_string === "cqb")
	{
		str_spawner = "wall_breaker_enemy_cqb";
	}
	var_f6c5842 = spawner::simple_spawn_single(str_spawner);
	var_f6c5842 endon("death");
	str_scene = self.scriptbundlename;
	self scene::init(str_scene, var_f6c5842);
	var_1f6b52e = struct::get(self.script_noteworthy, "targetname");
	if(isdefined(self.script_float))
	{
		time = self.script_float;
		if(isdefined(self.script_string))
		{
			namespace_ce0e5f06::function_520255e3("t_construction_right_side_wallbreakers", time);
		}
		else
		{
			wait(time);
		}
	}
	self thread scene::Play(str_scene, var_f6c5842);
	var_1f6b52e scene::Play();
	if(isdefined(self.target))
	{
		var_a8a64a67 = GetNodeArray(self.target, "targetname");
		foreach(nd_cover in var_a8a64a67)
		{
			SetEnableNode(nd_cover, 1);
		}
	}
}

/*
	Name: function_43ed83e5
	Namespace: namespace_2f45a7a1
	Checksum: 0x866260F3
	Offset: 0x6270
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_43ed83e5(a_ents)
{
	wait(0.05);
	a_ents["plaster_walls_01"] notsolid();
}

/*
	Name: function_9a5b95da
	Namespace: namespace_2f45a7a1
	Checksum: 0xD79CA83F
	Offset: 0x62B0
	Size: 0x165
	Parameters: 0
	Flags: None
*/
function function_9a5b95da()
{
	trigger::wait_till("t_construction_final_attackers");
	var_d6bb42cf = GetEnt("vol_construction_rear", "targetname");
	var_d586acbf = GetEntArray("sp_construction_final_attacker", "targetname");
	for(i = 0; i < var_d586acbf.size; i++)
	{
		var_428d29b0 = var_d586acbf[i] spawner::spawn();
		if(isdefined(var_428d29b0.target))
		{
			var_428d29b0.goalRadius = 128;
			nd_node = GetNode(var_428d29b0.target, "targetname");
			var_428d29b0 SetGoal(nd_node.origin);
			continue;
		}
		var_428d29b0 SetGoal(var_d6bb42cf);
	}
}

/*
	Name: function_119163c9
	Namespace: namespace_2f45a7a1
	Checksum: 0x8CC9B518
	Offset: 0x6420
	Size: 0x16F
	Parameters: 0
	Flags: None
*/
function function_119163c9()
{
	level endon("hash_2ea05568");
	trigger::wait_till("t_construciton_fallback_behaviour", "targetname", undefined, 0);
	var_37124366 = GetEnt("v_construction_lower_area", "targetname");
	var_7d22b48e = GetEnt("v_construction_upper_area", "targetname");
	while(1)
	{
		a_ai = GetAITeamArray("axis");
		for(i = 0; i < a_ai.size; i++)
		{
			e_ent = a_ai[i];
			if(e_ent istouching(var_37124366) && !isdefined(e_ent.var_2c808ed0))
			{
				e_ent setgoalvolume(var_7d22b48e);
				e_ent.var_2c808ed0 = 1;
			}
		}
		wait(0.2);
	}
}

/*
	Name: function_bbbbc058
	Namespace: namespace_2f45a7a1
	Checksum: 0x342F7D24
	Offset: 0x6598
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_bbbbc058()
{
	e_volume = GetEnt("v_construction_main_corridor", "targetname");
	while(1)
	{
		a_ai = GetAITeamArray("axis");
		var_f04bd8f5 = 0;
		for(i = 0; i < a_ai.size; i++)
		{
			if(a_ai[i] istouching(e_volume))
			{
				var_f04bd8f5++;
			}
		}
		if(var_f04bd8f5 <= 1)
		{
			break;
		}
		wait(0.05);
	}
	str_trigger = "t_colors_g3070";
	e_trigger = GetEnt(str_trigger, "targetname");
	if(isdefined(e_trigger))
	{
		trigger::use(str_trigger);
	}
}

/*
	Name: function_984152f8
	Namespace: namespace_2f45a7a1
	Checksum: 0x8D736F7F
	Offset: 0x66E8
	Size: 0x143
	Parameters: 2
	Flags: None
*/
function function_984152f8(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_e120c906 = 1;
		level.var_11d004e5 = 1;
		level thread function_8c89c9ea(str_objective);
		function_1786c095(1);
		load::function_a2995f22();
	}
	else
	{
		level thread namespace_ce0e5f06::function_c1c980d8("t_cull_stragglers_construction");
	}
	level thread objectives::breadcrumb("t_breadcrumb_maintenance");
	trigger::wait_till("trig_maintenance");
	level flag::init("maintenance_subway_move_done");
	level.var_4d745c5c function_68697b01();
	level thread function_e614c4d7();
	level thread function_b3c596c5();
}

/*
	Name: function_19da6b7e
	Namespace: namespace_2f45a7a1
	Checksum: 0x7272F947
	Offset: 0x6838
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_19da6b7e(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_fabefe3d
	Namespace: namespace_2f45a7a1
	Checksum: 0x1E35217
	Offset: 0x6868
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_fabefe3d()
{
	trigger::wait_till("trig_stop_sm_maintenance");
	spawn_manager::disable("sm_maintenance");
	spawn_manager::disable("sm_maintenance_coop");
}

/*
	Name: function_b3c596c5
	Namespace: namespace_2f45a7a1
	Checksum: 0xF721D36A
	Offset: 0x68C0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_b3c596c5()
{
	spawner::add_spawn_function_group("underground_maintenance_shotgun", "script_noteworthy", &function_b4990972);
	level thread function_e14e1c70();
	level thread function_2d618ed1();
	namespace_ce0e5f06::function_f29e6c6d("sp_maintenance_startup_rightside");
	spawn_manager::enable("sm_maintenance_near");
	level thread function_595d8891();
	level thread function_cf7fe06c();
	spawn_manager::enable("sm_maintenance");
	spawn_manager::enable("sm_maintenance_coop");
	level thread function_fabefe3d();
	level flag::wait_till("maintenance_subway_move_done");
	spawner::simple_spawn("maintenance_enemies");
	level thread function_f7eb2ab7();
}

/*
	Name: function_e14e1c70
	Namespace: namespace_2f45a7a1
	Checksum: 0x6DD2417
	Offset: 0x6A28
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_e14e1c70()
{
	var_ffbdcfe8 = GetEnt("vol_maintenance_bay", "targetname");
	while(1)
	{
		if(level.var_4d745c5c istouching(var_ffbdcfe8))
		{
			break;
		}
		wait(0.05);
	}
	var_defbe74 = GetEnt("sp_maintenance_immolation_target", "targetname");
	e_target = var_defbe74 spawner::spawn();
	e_target ai::set_behavior_attribute("move_mode", "rusher");
	e_target ai::set_behavior_attribute("sprint", 1);
	wait(2);
	if(isalive(e_target))
	{
		e_target namespace_a56eec64::function_c7fa793a(level.var_4d745c5c, 1, 0);
	}
}

/*
	Name: function_595d8891
	Namespace: namespace_2f45a7a1
	Checksum: 0x8189D0A7
	Offset: 0x6B78
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_595d8891()
{
	a_players = GetPlayers();
	if(a_players.size == 1)
	{
		trigger::wait_till("t_maintenance_lower_enter");
		namespace_ce0e5f06::function_f29e6c6d("sp_maintenance_lower_enter");
	}
}

/*
	Name: function_1786c095
	Namespace: namespace_2f45a7a1
	Checksum: 0xF18B6A58
	Offset: 0x6BE8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_1786c095(var_6e2f783e)
{
	if(!isdefined(var_6e2f783e))
	{
		var_6e2f783e = 0;
	}
	if(!var_6e2f783e)
	{
		trigger::wait_till("pre_spawn_subwaypush");
	}
	level thread scene::init("cin_new_11_01_subway_vign_pushsubway");
}

/*
	Name: function_2d618ed1
	Namespace: namespace_2f45a7a1
	Checksum: 0xE68B7E68
	Offset: 0x6C50
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_2d618ed1()
{
	scene::add_scene_func("cin_new_11_01_subway_vign_pushsubway", &function_7e1df9, "done");
	level thread function_bf5fbfb6();
	level thread scene::Play("cin_new_11_01_subway_vign_pushsubway");
	level thread function_8e64a579();
}

/*
	Name: function_bf5fbfb6
	Namespace: namespace_2f45a7a1
	Checksum: 0x1C794819
	Offset: 0x6CE0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_bf5fbfb6()
{
	level waittill("hash_1e4302d4");
	spawner::simple_spawn("train_push_robots");
}

/*
	Name: function_7e1df9
	Namespace: namespace_2f45a7a1
	Checksum: 0x40D15D99
	Offset: 0x6D18
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_7e1df9(a_ents)
{
	level flag::set("maintenance_subway_move_done");
	var_d3108391 = GetEnt("subway_car_push", "targetname");
	var_d3108391 connectpaths();
	exploder::exploder("maint_subcar_interior");
}

/*
	Name: function_cf7fe06c
	Namespace: namespace_2f45a7a1
	Checksum: 0xD7CEBA54
	Offset: 0x6DA8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_cf7fe06c()
{
	a_players = GetPlayers();
	if(a_players.size == 1)
	{
		namespace_ce0e5f06::function_f5363f47("t_maintenance_fallback");
		namespace_ce0e5f06::function_8f7b1e06(undefined, "v_maintenance_fallback_start", "v_maintenance_fallback_end");
	}
}

/*
	Name: function_f7eb2ab7
	Namespace: namespace_2f45a7a1
	Checksum: 0x2B975EFB
	Offset: 0x6E28
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_f7eb2ab7()
{
	trigger::wait_till("trig_water_plant_drone_intro_start");
	a_guys = spawner::get_ai_group_ai("ai_maintenance");
	var_fd2d3cb1 = spawner::get_ai_group_ai("maintenance_snipers");
	var_ab79ab08 = ArrayCombine(a_guys, var_fd2d3cb1, 0, 0);
	for(i = 0; i < var_ab79ab08.size; i++)
	{
		var_ab79ab08[i] delete();
	}
}

/*
	Name: function_105344d6
	Namespace: namespace_2f45a7a1
	Checksum: 0x23EF0AB8
	Offset: 0x6F08
	Size: 0x41B
	Parameters: 2
	Flags: None
*/
function function_105344d6(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_e120c906 = 1;
		level.var_11d004e5 = 1;
		level thread function_8c89c9ea(str_objective);
		load::function_a2995f22();
	}
	else
	{
		level thread namespace_ce0e5f06::function_c1c980d8("t_cull_stragglers_maintenance");
		level thread function_9c101303();
	}
	level thread objectives::breadcrumb("t_breadcrumb_waterplant_door");
	level thread namespace_e38c3c58::function_68f4508b();
	clientfield::set("waterplant_rotate_fans", 1);
	var_d99900e5 = GetEnt("water_treatment_exit_use_trigger", "targetname");
	var_d99900e5 TriggerEnable(0);
	level.var_4d745c5c function_68697b01();
	level thread function_a3fbe7d3(var_74cd64bc);
	trigger::wait_till("start_wtp_enemies");
	level thread function_e29f5d0e();
	function_16cfd8ef();
	level notify("hash_982eac9f");
	savegame::function_5d2cdd99();
	battlechatter::function_d9f49fba(0);
	trigger::use("color_post_water_treatment_battle");
	level thread function_3ab2ad20();
	objectives::set("cp_level_newworld_subway_subobj_hack_door2");
	namespace_ce0e5f06::function_16dd8c5f("water_treatment_exit_use_trigger", &"cp_level_newworld_access_door", &"CP_MI_ZURICH_NEWWORLD_HACK", "subway_door2_panel", "subway_door2_hacked", 1);
	objectives::complete("cp_level_newworld_subway_subobj_hack_door2");
	function_2d63d3db(1);
	level.var_4d745c5c ai::set_behavior_attribute("cqb", 1);
	level.var_4d745c5c ai::set_behavior_attribute("sprint", 0);
	util::delay(1, undefined, &trigger::use, "water_treatment_exit_color_trigger");
	level thread objectives::breadcrumb("t_breadcrumb_staging_room");
	level thread function_9c45df54();
	trigger::wait_till("trig_staging_area");
	trigger::use("t_breadcrumb_staging_room");
	objectives::set("cp_level_newworld_subway_subobj_hack_computer");
	level.var_c62e683e = namespace_ce0e5f06::function_16dd8c5f("trig_use_staging_comp", &"cp_level_newworld_computer_system", &"CP_MI_ZURICH_NEWWORLD_HACK", undefined, "subway_computer_interacted");
	level thread namespace_e38c3c58::function_a693b757();
	objectives::complete("cp_level_newworld_subway_subobj_hack_computer");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_16cfd8ef
	Namespace: namespace_2f45a7a1
	Checksum: 0xDE857675
	Offset: 0x7330
	Size: 0x383
	Parameters: 0
	Flags: None
*/
function function_16cfd8ef()
{
	level.var_4fa721ef = [];
	level.var_4fa721ef[0] = spawner::simple_spawn_single("wtp_start_amws_1");
	if(level.activePlayers.size > 1)
	{
		vehicle::add_spawn_function("wtp_start_amws_2", &function_bcd9c1d4);
		level.var_4fa721ef[1] = spawner::simple_spawn_single("wtp_start_amws_2");
	}
	trigger::wait_till("start_wtp_enemies");
	level thread function_e1bce305();
	level thread function_df1780cd();
	level thread function_d3badebb();
	level thread function_30718875();
	spawn_manager::enable("sm_water_treatment_start");
	spawn_manager::enable("sm_water_treatment_coop");
	trigger::wait_till("trig_plant_wave2");
	if(level.activePlayers.size === 1)
	{
		var_4bdaf3e4 = function_97777f27();
		for(i = 1; i < 2; i++)
		{
			if(var_4bdaf3e4 < 2)
			{
				spawner::simple_spawn_single("wtp_wave2_amws_" + i);
				var_4bdaf3e4++;
			}
		}
	}
	spawn_manager::disable("sm_water_treatment_start");
	spawn_manager::disable("sm_water_treatment_coop");
	flag::wait_till("water_exit_fallback");
	var_64df68ed = GetEnt("vol_water_plant_fallback", "targetname");
	a_ai_enemies = GetAITeamArray("axis");
	level notify("hash_ee244532");
	foreach(ai_enemy in a_ai_enemies)
	{
		ai_enemy ClearForcedGoal();
		ai_enemy SetGoal(var_64df68ed, 1);
	}
	wait(5);
	level thread namespace_ce0e5f06::function_bccc2e65("aig_water_treatment", 3, "nd_wt_exit_door", 256);
	spawner::waittill_ai_group_ai_count("aig_water_treatment", 0);
}

/*
	Name: function_bcd9c1d4
	Namespace: namespace_2f45a7a1
	Checksum: 0x7CFF85C7
	Offset: 0x76C0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_bcd9c1d4()
{
	self endon("death");
	self ai::set_ignoreall(1);
	trigger::wait_till("wtp_amws_moves_down_from_catwalk", "targetname", self);
	self ai::set_ignoreall(0);
}

/*
	Name: function_97777f27
	Namespace: namespace_2f45a7a1
	Checksum: 0x9F8CD8F9
	Offset: 0x7728
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_97777f27()
{
	a_ai = GetAITeamArray("axis");
	n_count = 0;
	foreach(ai in a_ai)
	{
		if(ai.classname === "script_vehicle")
		{
			if(IsSubStr("amws", ai.classname))
			{
				n_count++;
			}
		}
	}
	return n_count;
}

/*
	Name: function_df1780cd
	Namespace: namespace_2f45a7a1
	Checksum: 0xAB7CB27E
	Offset: 0x7828
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_df1780cd()
{
	trigger::wait_till("t_water_plant_final_door");
	level thread function_2d63d3db(1);
	wait(0.1);
	a_spawners = GetEntArray("sp_water_plant_final_door", "targetname");
	var_826ee9b3 = 0;
	level.var_71835e59 = 0;
	for(i = 0; i < a_spawners.size; i++)
	{
		e_ent = a_spawners[i] spawner::spawn();
		e_ent thread function_91e85625(10, 1024);
		var_826ee9b3 = var_826ee9b3 + 1;
		e_ent thread function_9a66aca2();
	}
	while(level.var_71835e59 < var_826ee9b3)
	{
		wait(0.05);
	}
	level thread function_2d63d3db(0);
}

/*
	Name: function_91e85625
	Namespace: namespace_2f45a7a1
	Checksum: 0x8B74498A
	Offset: 0x7988
	Size: 0x2F
	Parameters: 2
	Flags: None
*/
function function_91e85625(delay, radius)
{
	self endon("death");
	wait(delay);
	self.goalRadius = radius;
}

/*
	Name: function_9a66aca2
	Namespace: namespace_2f45a7a1
	Checksum: 0x904AD961
	Offset: 0x79C0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_9a66aca2()
{
	var_eda64e51 = GetEnt("t_water_plant_final_door_guys_leave_room", "targetname");
	while(1)
	{
		if(!isalive(self) || self istouching(var_eda64e51))
		{
			level.var_71835e59 = level.var_71835e59 + 1;
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_d3badebb
	Namespace: namespace_2f45a7a1
	Checksum: 0x72B9FF65
	Offset: 0x7A60
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d3badebb()
{
	var_769b854f = GetEnt("v_water_plant_end_upper", "targetname");
	var_f2f65fc4 = GetEnt("v_water_plant_end_lower", "targetname");
	var_f04bd8f5 = 0;
	while(!var_f04bd8f5)
	{
		var_f04bd8f5 = namespace_ce0e5f06::num_players_touching_volume(var_f2f65fc4);
		wait(0.05);
	}
	num_guys = 4;
	namespace_ce0e5f06::function_c478189b(undefined, "v_water_plant_end_upper", "v_water_plant_end_lower", num_guys);
}

/*
	Name: function_30718875
	Namespace: namespace_2f45a7a1
	Checksum: 0x6369A3B0
	Offset: 0x7B40
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_30718875()
{
	level endon("hash_982eac9f");
	a_players = GetPlayers();
	if(a_players.size == 1)
	{
		trigger::wait_till("t_lower_to_middle_stairs");
		namespace_ce0e5f06::function_f29e6c6d("sp_lower_to_middle_stairs");
	}
}

/*
	Name: function_e1bce305
	Namespace: namespace_2f45a7a1
	Checksum: 0x9C69A7A4
	Offset: 0x7BC0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e1bce305()
{
	level endon("hash_982eac9f");
	trigger::wait_till("t_left_wallrun_attackers");
	namespace_ce0e5f06::function_f29e6c6d("sp_left_wallrun_attackers");
}

/*
	Name: function_217b1340
	Namespace: namespace_2f45a7a1
	Checksum: 0xA29FEE69
	Offset: 0x7C08
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_217b1340(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_newworld_subway_subobj_hack_door2");
	callback::remove_on_actor_killed(&function_3293dfe7);
}

/*
	Name: function_a3fbe7d3
	Namespace: namespace_2f45a7a1
	Checksum: 0x65FEFBA
	Offset: 0x7C70
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_a3fbe7d3(var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		trigger::wait_till("maretti_water_treatment_intro");
	}
	level.var_4d745c5c namespace_ce0e5f06::function_d0aa2f4f();
	scene::add_scene_func("cin_new_12_01_watertreatment_vign_point", &function_621c4f70, "play");
	scene::add_scene_func("cin_new_12_01_watertreatment_vign_point", &function_70d4e5f2, "done");
	level thread scene::Play("cin_new_12_01_watertreatment_vign_point");
	level flag::wait_till("b_water_plant_intro_go");
	vehicle::add_spawn_function("plant_intro_drone_a", &function_232cb556);
	vehicle::add_spawn_function("plant_intro_drone_b", &function_232cb556);
	if(level.activePlayers.size > 1)
	{
		level thread scene::Play("cin_new_12_01_watertreatment_vign_point2_coop");
	}
	scene::Play("cin_new_12_01_watertreatment_vign_point2");
}

/*
	Name: function_621c4f70
	Namespace: namespace_2f45a7a1
	Checksum: 0xEFE2B98D
	Offset: 0x7DF8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_621c4f70(a_ents)
{
	trigger::use("wtp_post_amws_intro_color_trigger");
}

/*
	Name: function_70d4e5f2
	Namespace: namespace_2f45a7a1
	Checksum: 0xC25AD86D
	Offset: 0x7E28
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_70d4e5f2(a_ents)
{
	level flag::set("b_water_plant_intro_go");
}

/*
	Name: function_232cb556
	Namespace: namespace_2f45a7a1
	Checksum: 0xB1785EA2
	Offset: 0x7E60
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_232cb556()
{
	self endon("death");
	self endon("hash_ee244532");
	self thread function_36ac5420();
	self.goalRadius = 32;
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self waittill("hash_a2fb9c86");
	s_goal = struct::get(self.target, "targetname");
	while(isdefined(s_goal))
	{
		self SetGoal(s_goal.origin, 1);
		self waittill("hash_a2b47172");
		if(isdefined(s_goal.target))
		{
			s_goal = struct::get(s_goal.target, "targetname");
		}
		else
		{
			s_goal = undefined;
		}
	}
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	e_goalvolume = GetEnt("wt_amws_forward_goalvolume", "targetname");
	self SetGoal(e_goalvolume, 1);
}

/*
	Name: function_36ac5420
	Namespace: namespace_2f45a7a1
	Checksum: 0x82FC4F81
	Offset: 0x8018
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_36ac5420()
{
	self endon("death");
	self util::waittill_any("damage", "bulletwhizby", "pain", "proximity");
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
}

/*
	Name: function_2d63d3db
	Namespace: namespace_2f45a7a1
	Checksum: 0x9E551533
	Offset: 0x8098
	Size: 0x14F
	Parameters: 1
	Flags: None
*/
function function_2d63d3db(open)
{
	if(!isdefined(level.var_f994bf4e))
	{
		level.var_f994bf4e = 0;
	}
	var_ffdb9494 = GetEnt("wt_gather_door", "targetname");
	move_amount = 96;
	move_speed = 0.75;
	if(open == 1 && level.var_f994bf4e == 0)
	{
		var_ffdb9494 playsound("evt_watertower_door_open");
		var_ffdb9494 MoveZ(move_amount, move_speed);
		level.var_f994bf4e = 1;
	}
	else if(open == 0 && level.var_f994bf4e == 1)
	{
		var_ffdb9494 playsound("evt_watertower_door_close");
		var_ffdb9494 MoveZ(move_amount * -1, move_speed);
		level.var_f994bf4e = 0;
	}
}

/*
	Name: function_9c45df54
	Namespace: namespace_2f45a7a1
	Checksum: 0xE26BDF4B
	Offset: 0x81F0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_9c45df54()
{
	level thread util::function_d8eaed3d(7);
	trigger::wait_till("staging_room_start_vo");
	level thread function_d4fee8bb();
}

/*
	Name: function_9f911334
	Namespace: namespace_2f45a7a1
	Checksum: 0x6BD5A6BA
	Offset: 0x8248
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_9f911334(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		util::function_d8eaed3d(7);
		load::function_a2995f22();
	}
	battlechatter::function_d9f49fba(0);
	level thread namespace_e38c3c58::function_a693b757();
	function_9bca73c0();
	if(isalive(level.var_4d745c5c))
	{
		util::unmake_hero("maretti");
		level.var_4d745c5c delete();
	}
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_5240a50a
	Namespace: namespace_2f45a7a1
	Checksum: 0x9E78F437
	Offset: 0x8348
	Size: 0x11B
	Parameters: 4
	Flags: None
*/
function function_5240a50a(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc === 1)
	{
		objectives::complete("cp_level_newworld_subway_subobj_hack_computer");
	}
	level scene::stop("p7_fxanim_cp_newworld_plaster_walls_01_bundle", 1);
	level scene::stop("p7_fxanim_cp_newworld_tiles_fall_01_bundle", 1);
	level clientfield::set("underground_subway_wires", 0);
	level clientfield::set("underground_subway_debris", 0);
	callback::remove_on_spawned(&function_6bd39ac8);
	callback::remove_on_ai_killed(&function_177b3b6e);
	function_41fc6a0f();
}

/*
	Name: function_41fc6a0f
	Namespace: namespace_2f45a7a1
	Checksum: 0x751758B9
	Offset: 0x8470
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_41fc6a0f()
{
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_icicles_01_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_icicles_01_h2_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_icicles_01_h3_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_icicles_01_h4_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_icicles_01_h5_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_icicles_01_h6_bundle");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_10_01_pinneddown_1st_explanation");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_11_01_subway_rollgrenade_enemy01");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_11_01_subway_rollgrenade_enemy02");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_11_01_subway_rollgrenade_enemy03");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_11_01_subway_rollgrenade_enemy04");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_11_01_subway_vign_bustout");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_plaster_walls_01_bundle");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_11_03_subway_aie_smash01");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_11_03_subway_aie_smash02");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_11_01_subway_vign_pushsubway");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_12_01_watertreatment_vign_point");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_12_01_watertreatment_vign_point2");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_12_01_watertreatment_vign_point2_coop");
	wait(3);
	namespace_ce0e5f06::function_bbd12ed2("cin_new_13_01_stagingroom_1st_guidance");
}

/*
	Name: function_9bca73c0
	Namespace: namespace_2f45a7a1
	Checksum: 0xE143C0F2
	Offset: 0x8668
	Size: 0x1C9
	Parameters: 0
	Flags: None
*/
function function_9bca73c0()
{
	level notify("hash_acb6d222");
	LUI::prime_movie("cp_newworld_fs_trainreveal");
	level thread namespace_ce0e5f06::function_30ec5bf7();
	level thread namespace_c7062b04::function_e61ead06("underground_staging_room_igc");
	level scene::add_scene_func("cin_new_13_01_stagingroom_1st_guidance", &function_dcdd58b7);
	level scene::add_scene_func("cin_new_13_01_stagingroom_1st_guidance", &function_99f47b6f);
	level scene::add_scene_func("cin_new_13_01_stagingroom_1st_guidance", &function_46b07e29);
	level scene::add_scene_func("cin_new_13_01_stagingroom_1st_guidance", &namespace_ce0e5f06::function_43dfaf16, "skip_started");
	if(isdefined(level.BZM_NEWWORLDDialogue9Callback))
	{
		level thread [[level.BZM_NEWWORLDDialogue9Callback]]();
	}
	if(isdefined(level.var_c62e683e) && isPlayer(level.var_c62e683e))
	{
		scene::Play("cin_new_13_01_stagingroom_1st_guidance", level.var_c62e683e);
		level.var_c62e683e = undefined;
	}
	else
	{
		scene::Play("cin_new_13_01_stagingroom_1st_guidance");
	}
	util::clear_streamer_hint();
	clientfield::set("waterplant_rotate_fans", 0);
	level notify("hash_3cf7368e");
}

/*
	Name: function_99f47b6f
	Namespace: namespace_2f45a7a1
	Checksum: 0x7B363634
	Offset: 0x8840
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_99f47b6f(a_ents)
{
	a_ents["player 1"] waittill("hash_347ba65d");
	util::delay(0.5, undefined, &namespace_ce0e5f06::function_eaf9c027, "cp_newworld_fs_trainreveal", "fullscreen_additive");
	namespace_ce0e5f06::function_2eded728(1);
}

/*
	Name: function_46b07e29
	Namespace: namespace_2f45a7a1
	Checksum: 0xE68C0A7E
	Offset: 0x88C0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_46b07e29(a_ents)
{
	a_ents["player 1"] waittill("hash_8e2037d4");
	namespace_ce0e5f06::function_2eded728(0);
}

/*
	Name: function_dcdd58b7
	Namespace: namespace_2f45a7a1
	Checksum: 0x5FA71DE
	Offset: 0x8908
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_dcdd58b7(a_ents)
{
	a_ents["player 1"] waittill("hash_d1ce1385");
	level flag::set("infinite_white_transition");
}

/*
	Name: function_b3018185
	Namespace: namespace_2f45a7a1
	Checksum: 0xFAB6D40B
	Offset: 0x8958
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_b3018185()
{
	self endon("death");
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level.var_4d745c5c dialog::say("mare_you_gotta_new_cyber_0", undefined, 0, self);
	self thread function_17baf10a();
	self thread function_36cfeb41();
	wait(2);
	level flag::set("immolation_tutorial_vo_complete");
}

/*
	Name: function_36cfeb41
	Namespace: namespace_2f45a7a1
	Checksum: 0xC0E4F92F
	Offset: 0x8A08
	Size: 0x12D
	Parameters: 0
	Flags: None
*/
function function_36cfeb41()
{
	level endon("hash_937be0e0");
	self endon("death");
	self waittill("hash_f90d73d4");
	wait(0.5);
	var_d16e6be2 = randomIntRange(0, 4);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_4d745c5c dialog::say("mare_the_most_fun_you_can_0", undefined, 0, self);
			break;
		}
		case 1:
		{
			level.var_4d745c5c dialog::say("mare_watch_em_burn_hell_0", undefined, 0, self);
			break;
		}
		case 2:
		{
			level.var_4d745c5c dialog::say("mare_you_immolated_the_sh_0", undefined, 0, self);
			break;
		}
		case 3:
		{
			level.var_4d745c5c dialog::say("mare_he_s_toast_0", undefined, 0, self);
			break;
		}
	}
}

/*
	Name: function_17baf10a
	Namespace: namespace_2f45a7a1
	Checksum: 0x7A3F2AA2
	Offset: 0x8B40
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_17baf10a()
{
	level endon("hash_937be0e0");
	self endon("hash_f90d73d4");
	self endon("death");
	wait(15);
	var_d16e6be2 = randomIntRange(0, 4);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_4d745c5c dialog::say("mare_c_mon_let_er_rip_0", undefined, 0, self);
			break;
		}
		case 1:
		{
			level.var_4d745c5c dialog::say("mare_let_s_see_you_light_0", undefined, 0, self);
			break;
		}
		case 2:
		{
			level.var_4d745c5c dialog::say("mare_you_gonna_burn_them_0", undefined, 0, self);
			break;
		}
		case 3:
		{
			level.var_4d745c5c dialog::say("mare_use_immolation_tru_0", undefined, 0, self);
			break;
		}
	}
}

/*
	Name: function_f05ec5c
	Namespace: namespace_2f45a7a1
	Checksum: 0xF5789039
	Offset: 0x8C70
	Size: 0xD9
	Parameters: 2
	Flags: None
*/
function function_f05ec5c(var_81a32895, var_2380d5c)
{
	foreach(player in level.activePlayers)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player thread function_74c8e0c5(var_81a32895, var_2380d5c);
		player thread function_ff51f3ef(var_81a32895);
	}
}

/*
	Name: function_ff51f3ef
	Namespace: namespace_2f45a7a1
	Checksum: 0xEDAC94E
	Offset: 0x8D58
	Size: 0x12D
	Parameters: 1
	Flags: None
*/
function function_ff51f3ef(var_81a32895)
{
	self endon("death");
	self endon(var_81a32895 + "_WW_tutorial");
	level endon("hash_8d8d80ed");
	wait(15);
	if(self flag::get(var_81a32895 + "_WW_tutorial"))
	{
		return;
	}
	var_d16e6be2 = randomIntRange(0, 3);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_4d745c5c dialog::say("mare_come_on_change_it_0", undefined, 0, self);
			break;
		}
		case 1:
		{
			level.var_4d745c5c dialog::say("mare_don_t_sit_there_with_0", undefined, 0, self);
			break;
		}
		case 2:
		{
			level.var_4d745c5c dialog::say("mare_try_changing_up_your_0", undefined, 0, self);
			break;
		}
	}
}

/*
	Name: function_74c8e0c5
	Namespace: namespace_2f45a7a1
	Checksum: 0x48AEA4ED
	Offset: 0x8E90
	Size: 0x221
	Parameters: 2
	Flags: None
*/
function function_74c8e0c5(var_81a32895, var_2380d5c)
{
	level endon("hash_8d8d80ed");
	self endon("death");
	level flag::wait_till("maretti_ww_tutorial_vo_complete");
	level.var_4d745c5c dialog::say("mare_okay_i_ve_loaded_a_0", 0.5, 0, self);
	level.var_4d745c5c dialog::say("mare_fireflies_a_swarm_0", 0.5, 0, self);
	self flag::wait_till(var_81a32895 + "_WW_tutorial");
	level.var_4d745c5c dialog::say("mare_let_em_loose_and_se_0", 0.5, 0, self);
	weapon = namespace_ce0e5f06::function_71840183(var_81a32895, var_2380d5c);
	var_12b288c7 = weapon.name + "_fired";
	var_a2cc98e = var_81a32895 + "_use_ability_tutorial";
	foreach(player in level.activePlayers)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player thread function_7762a525(var_a2cc98e);
		player thread function_5e34df4e(var_a2cc98e, var_12b288c7);
	}
}

/*
	Name: function_7762a525
	Namespace: namespace_2f45a7a1
	Checksum: 0x9D0B10C
	Offset: 0x90C0
	Size: 0x115
	Parameters: 1
	Flags: None
*/
function function_7762a525(var_a2cc98e)
{
	level endon("hash_8d8d80ed");
	self endon(var_a2cc98e);
	self endon("death");
	if(self flag::get(var_a2cc98e))
	{
		return;
	}
	wait(15);
	var_d16e6be2 = randomIntRange(0, 3);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_4d745c5c dialog::say("mare_test_out_your_firefl_0", undefined, 0, self);
			break;
		}
		case 1:
		{
			level.var_4d745c5c dialog::say("mare_you_got_fireflies_0", undefined, 0, self);
			break;
		}
		case 2:
		{
			level.var_4d745c5c dialog::say("mare_hello_is_this_thin_0", undefined, 0, self);
			break;
		}
	}
}

/*
	Name: function_5e34df4e
	Namespace: namespace_2f45a7a1
	Checksum: 0x300DEC4F
	Offset: 0x91E0
	Size: 0x11D
	Parameters: 2
	Flags: None
*/
function function_5e34df4e(var_a2cc98e, var_12b288c7)
{
	level endon("hash_8d8d80ed");
	self endon("death");
	self flag::wait_till(var_a2cc98e);
	self waittill("hash_304642e3");
	var_d16e6be2 = randomIntRange(0, 3);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_4d745c5c dialog::say("mare_hell_of_a_way_to_go_0", undefined, 0, self);
			break;
		}
		case 1:
		{
			level.var_4d745c5c dialog::say("mare_fucking_nanobots_l_0", undefined, 0, self);
			break;
		}
		case 2:
		{
			level.var_4d745c5c dialog::say("mare_firefly_swarm_made_s_0", undefined, 0, self);
			break;
		}
	}
}

/*
	Name: function_6f3f9715
	Namespace: namespace_2f45a7a1
	Checksum: 0xBB0CDCBE
	Offset: 0x9308
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6f3f9715()
{
	wait(3);
	level.var_4d745c5c dialog::say("mare_lmgs_are_fun_but_lon_0");
}

/*
	Name: function_adfddace
	Namespace: namespace_2f45a7a1
	Checksum: 0xA97B6437
	Offset: 0x9340
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_adfddace()
{
	self endon("death");
	level.var_4d745c5c dialog::say("mare_the_more_abilities_y_0", undefined, 0, self);
	self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_CYBERCORE_CYCLE", 0, undefined, 4);
}

/*
	Name: function_ee08b005
	Namespace: namespace_2f45a7a1
	Checksum: 0x820BBD56
	Offset: 0x93A8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ee08b005()
{
	self thread function_a6b23a78();
	self thread function_6894d6a1();
}

/*
	Name: function_a6b23a78
	Namespace: namespace_2f45a7a1
	Checksum: 0x20D2ACAD
	Offset: 0x93E8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_a6b23a78()
{
	level endon("hash_982eac9f");
	self endon("hash_abc3a7e7");
	self endon("death");
	wait(15);
	level.var_4d745c5c dialog::say("mare_adjust_your_optics_0", undefined, 0, self);
	wait(15);
	level.var_4d745c5c dialog::say("mare_unless_you_re_a_damn_0", undefined, 0, self);
}

/*
	Name: function_6894d6a1
	Namespace: namespace_2f45a7a1
	Checksum: 0x458EF1D1
	Offset: 0x9478
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_6894d6a1()
{
	level endon("hash_982eac9f");
	self endon("death");
	self flag::wait_till("enhanced_vision_tutorial");
	wait(2);
	level.var_4d745c5c dialog::say("mare_how_about_that_pl_0", undefined, 0, self);
}

/*
	Name: function_ce349fbf
	Namespace: namespace_2f45a7a1
	Checksum: 0x44FD9254
	Offset: 0x94E8
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_ce349fbf()
{
	self endon("death");
	var_d16e6be2 = randomIntRange(0, 3);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_4d745c5c dialog::say("mare_we_re_clear_deactiv_0", undefined, 0, self);
			break;
		}
		case 1:
		{
			level.var_4d745c5c dialog::say("mare_in_normal_light_ke_0", undefined, 0, self);
			break;
		}
		case 2:
		{
			level.var_4d745c5c dialog::say("mare_turn_off_your_ev_0", undefined, 0, self);
			break;
		}
	}
}

/*
	Name: function_b76dbe38
	Namespace: namespace_2f45a7a1
	Checksum: 0x7633F82D
	Offset: 0x95C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b76dbe38()
{
	level.var_4d745c5c dialog::say("mare_hostile_bots_comin_0", 0.5);
}

/*
	Name: function_8e64a579
	Namespace: namespace_2f45a7a1
	Checksum: 0x1025AA60
	Offset: 0x9600
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_8e64a579()
{
	level waittill("hash_b33bd1b8");
	level thread namespace_e38c3c58::function_d4def1a6();
	level.var_4d745c5c dialog::say("mare_i_got_bots_moving_th_0");
	level thread function_7a5a079e();
}

/*
	Name: function_7a5a079e
	Namespace: namespace_2f45a7a1
	Checksum: 0x799D370E
	Offset: 0x9668
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_7a5a079e()
{
	wait(3);
	n_count = spawner::get_ai_group_sentient_count("maintenance_snipers");
	if(n_count > 0)
	{
		level.var_4d745c5c dialog::say("mare_don_t_let_those_snip_0");
	}
}

/*
	Name: function_e614c4d7
	Namespace: namespace_2f45a7a1
	Checksum: 0x63C82951
	Offset: 0x96D0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e614c4d7()
{
	var_46100e43 = GetEnt("maintenance_underneath_vo", "targetname");
	while(1)
	{
		var_46100e43 waittill("trigger", ent);
		if(isPlayer(ent) && isalive(ent))
		{
			ent dialog::function_13b3b16a("plyr_taking_the_mechanic_0");
			break;
		}
	}
}

/*
	Name: function_40029d0a
	Namespace: namespace_2f45a7a1
	Checksum: 0xCBFBC0D4
	Offset: 0x9788
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_40029d0a()
{
	level.var_4d745c5c dialog::say("mare_more_hostiles_coming_0");
}

/*
	Name: function_9c101303
	Namespace: namespace_2f45a7a1
	Checksum: 0x32F7A715
	Offset: 0x97B8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_9c101303()
{
	level.var_4d745c5c dialog::say("mare_looks_like_they_got_0");
}

/*
	Name: function_e29f5d0e
	Namespace: namespace_2f45a7a1
	Checksum: 0x2A3C0829
	Offset: 0x97E8
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_e29f5d0e()
{
	trigger::wait_till("player_entered_wtp_vo");
	foreach(var_91457b51 in level.var_4fa721ef)
	{
		if(isalive(var_91457b51))
		{
			level.var_4d745c5c dialog::say("mare_amws_on_the_workfloo_0");
			break;
		}
	}
	level thread function_afc0d3a7();
}

/*
	Name: function_afc0d3a7
	Namespace: namespace_2f45a7a1
	Checksum: 0xC275E89A
	Offset: 0x98D0
	Size: 0x16F
	Parameters: 0
	Flags: None
*/
function function_afc0d3a7()
{
	level endon("hash_982eac9f");
	callback::on_actor_killed(&function_3293dfe7);
	while(1)
	{
		level waittill("hash_5308cf63");
		var_d16e6be2 = randomIntRange(0, 5);
		switch(var_d16e6be2)
		{
			case 0:
			{
				level.var_4d745c5c dialog::say("mare_assholes_didn_t_stan_0");
				break;
			}
			case 1:
			{
				level.var_4d745c5c dialog::say("mare_they_never_saw_it_co_0");
				break;
			}
			case 2:
			{
				level.var_4d745c5c dialog::say("mare_death_from_above_0");
				break;
			}
			case 3:
			{
				level.var_4d745c5c dialog::say("mare_hell_yeah_0");
				break;
			}
			case 4:
			{
				level.var_4d745c5c dialog::say("mare_that_s_some_unconven_0");
				break;
			}
		}
		wait(20);
	}
}

/*
	Name: function_5cd84de
	Namespace: namespace_2f45a7a1
	Checksum: 0x9B249E49
	Offset: 0x9A48
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_5cd84de()
{
	level.var_4d745c5c dialog::say("mare_nice_try_but_we_ain_0");
}

/*
	Name: function_3ab2ad20
	Namespace: namespace_2f45a7a1
	Checksum: 0x1C03A392
	Offset: 0x9A78
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_3ab2ad20()
{
	level endon("hash_cf1a17f0");
	level.var_4d745c5c dialog::say("mare_good_hunting_brothe_0", 1);
	level thread namespace_e38c3c58::function_d942ea3b();
	wait(30);
	level.var_4d745c5c dialog::say("mare_come_on_don_t_ruin_0");
}

/*
	Name: function_d4fee8bb
	Namespace: namespace_2f45a7a1
	Checksum: 0x98B46AAA
	Offset: 0x9AF8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d4fee8bb()
{
	level endon("hash_acb6d222");
	level dialog::function_13b3b16a("plyr_what_is_this_place_0");
	level.var_4d745c5c dialog::say("mare_this_this_is_wher_0", 0.5);
	level flag::wait_till("player_in_staging_room");
	level.var_4d745c5c dialog::say("mare_the_computer_over_th_0", 0.5);
	level.var_4d745c5c dialog::say("mare_go_interface_0", 0.5);
	wait(20);
	level.var_4d745c5c dialog::say("mare_hurry_it_up_interf_0", 0.5);
}

/*
	Name: function_68697b01
	Namespace: namespace_2f45a7a1
	Checksum: 0x91C7E9BE
	Offset: 0x9BF8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_68697b01()
{
	if(-1)
	{
		a_players = GetPlayers();
		if(a_players.size == 2)
		{
			self.script_accuracy = 0.8;
		}
		else if(a_players.size > 2)
		{
			self.script_accuracy = 0.6;
		}
	}
}


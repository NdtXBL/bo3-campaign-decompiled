#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_player_sacrifice;
#using scripts\cp\cp_prologue_robot_reveal;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace apc;

/*
	Name: function_61ebdfad
	Namespace: apc
	Checksum: 0x3A52B9CD
	Offset: 0x21F8
	Size: 0x243
	Parameters: 2
	Flags: None
*/
function function_61ebdfad(objective, restarting)
{
	namespace_4dc8633b::function_77d9dff("objective_apc_init");
	if(restarting)
	{
		load::function_73adcefc();
		level thread namespace_2cb3876f::function_cfabe921();
		var_935a64f = GetEnt("clip_ai_garage", "targetname");
		var_935a64f MoveZ(-200, 0.05);
		var_c8af31c9 = GetEnt("clip_player_garage", "targetname");
		var_c8af31c9 MoveZ(200 * -1, 0.05);
		level.var_92d245e2 = util::function_740f8516("prometheus");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai(objective, level.heroes);
		load::function_a2995f22();
		level namespace_2cb3876f::function_6a5f89cb("skipto_apc_ai");
		trigger::use("triggercolor_allies_garage");
		level function_50d6bf35("vehicle_apc_hijack_node", 0);
		level flag::set("players_in_garage");
	}
	level.var_1a71fabf = 0;
	function_a0321b9a();
	if(isdefined(level.BZM_PROLOGUEDialogue6Callback))
	{
		level thread [[level.BZM_PROLOGUEDialogue6Callback]]();
	}
	function_3ee236cf();
}

/*
	Name: function_a0321b9a
	Namespace: apc
	Checksum: 0xF3398B10
	Offset: 0x2448
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_a0321b9a()
{
	if(scene::is_playing("cin_pro_13_01_vtoltackle_vign_takedown"))
	{
		v_vtol = scene::get_existing_ent("vtol");
		if(isdefined(v_vtol))
		{
			v_vtol.delete_on_death = 1;
			v_vtol notify("death");
			if(!isalive(v_vtol))
			{
				v_vtol delete();
			}
		}
		scene::stop("cin_pro_13_01_vtoltackle_vign_takedown");
	}
}

/*
	Name: function_c92883a
	Namespace: apc
	Checksum: 0x9D70658F
	Offset: 0x2508
	Size: 0x6B
	Parameters: 4
	Flags: None
*/
function function_c92883a(name, var_74cd64bc, var_e4cd2b8b, player)
{
	level scene::init("p7_fxanim_cp_prologue_pump_station_crash_bundle");
	level.friendlyFireDisabled = 1;
	namespace_4dc8633b::function_77d9dff("apc_done");
}

/*
	Name: function_3ee236cf
	Namespace: apc
	Checksum: 0x941BE3CD
	Offset: 0x2580
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_3ee236cf()
{
	battlechatter::function_d9f49fba(0);
	level thread apc_cleanup();
	level thread function_651e7b34(1);
	level thread function_b31512cf();
	level thread function_599ebca1();
	level thread function_a4abb20e();
	level.var_92d245e2 SetGoal(GetNode("nd_taylor_garage", "targetname"), 1);
	level scene::Play("cin_pro_15_01_opendoor_vign_getinside_new_hendricks_and_prometheus");
	level flag::set("apc_ready");
	level thread function_5c746711();
	level flag::wait_till("players_are_in_apc");
	level flag::wait_till("ai_in_apc");
	if(!level flag::get("failed_apc_boarding"))
	{
		level.var_2fd26037 vehicle::get_in(level.apc, "driver", 1);
		level thread function_5c1321b9();
		skipto::function_be8adfb8("skipto_apc");
	}
}

/*
	Name: function_a4abb20e
	Namespace: apc
	Checksum: 0xEF2891A3
	Offset: 0x2778
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a4abb20e()
{
	level waittill("hash_ef5b1f55");
	level util::clientNotify("sndStartGarage");
}

/*
	Name: function_599ebca1
	Namespace: apc
	Checksum: 0xDE6BF581
	Offset: 0x27B0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_599ebca1()
{
	wait(45);
	if(!level flag::get("apc_unlocked"))
	{
		level.var_2fd26037 dialog::say("hend_i_got_the_wheel_gra_0");
	}
	level flag::set("apc_unlocked");
}

/*
	Name: function_5c746711
	Namespace: apc
	Checksum: 0x7B057059
	Offset: 0x2820
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_5c746711()
{
	level flag::wait_till("garage_dent");
	if(!level flag::get("players_are_in_apc"))
	{
		level thread function_1b4b1ac0();
		util::waittill_notify_or_timeout("players_are_in_apc", 5);
	}
	level flag::set("garage_breach");
}

/*
	Name: function_1b4b1ac0
	Namespace: apc
	Checksum: 0x1097E4FD
	Offset: 0x28C8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_1b4b1ac0()
{
	level endon("hash_8b0e5eab");
	if(!level flag::get("players_are_in_apc"))
	{
		level.var_2fd26037 dialog::say("hend_we_re_out_of_time_g_0");
		wait(5);
		level.var_2fd26037 dialog::say("hend_that_drone_won_t_wai_0");
	}
}

/*
	Name: function_b31512cf
	Namespace: apc
	Checksum: 0x1A076B01
	Offset: 0x2948
	Size: 0x189
	Parameters: 0
	Flags: None
*/
function function_b31512cf()
{
	level flag::wait_till("players_are_in_apc");
	level thread function_4792c4cc();
	level flag::wait_till("apc_thru_door");
	RadiusDamage(struct::get("apc_door_exp").origin, 200, 1000, 800, undefined, "MOD_EXPLOSIVE");
	exploder::exploder("fx_exploder_fog_part_01");
	level thread scene::Play("p7_fxanim_cp_prologue_apc_door_03_break_bundle");
	level flag::set("spawn_road_robots");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_prologue_rumble_apc_offroad");
	}
}

/*
	Name: function_833cbef4
	Namespace: apc
	Checksum: 0xB3AD0B7B
	Offset: 0x2AE0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_833cbef4()
{
	self waittill("picked_up_collectible");
	level thread util::delay(10, "player_picked_up_collectible", &flag::set, "garage_dent");
}

/*
	Name: function_651e7b34
	Namespace: apc
	Checksum: 0x71DB06FF
	Offset: 0x2B38
	Size: 0x69B
	Parameters: 1
	Flags: None
*/
function function_651e7b34(var_aa0f824f)
{
	if(var_aa0f824f)
	{
		level flag::wait_till("apc_unlocked");
	}
	level thread util::delay(15, "player_picked_up_collectible", &flag::set, "garage_dent");
	Array::thread_all(level.activePlayers, &function_833cbef4);
	callback::on_spawned(&function_833cbef4);
	level flag::wait_till("garage_dent");
	callback::remove_on_spawned(&function_833cbef4);
	spawner::simple_spawn("garage_robot_attackers", &setup_garage_breachers);
	level scene::Play("p7_fxanim_cp_prologue_apc_door_03_dent_bundle");
	if(level flag::get("players_are_in_apc"))
	{
		return;
	}
	level thread scene::Play("p7_fxanim_cp_prologue_apc_door_03_fail_bundle");
	var_935a64f = GetEnt("clip_garage_exit", "targetname");
	if(isdefined(var_935a64f))
	{
		var_935a64f delete();
	}
	var_be61cb01 = GetEnt("clip_garage_door", "targetname");
	if(isdefined(var_be61cb01))
	{
		var_be61cb01 delete();
	}
	level waittill("hash_93057b55");
	wait(2);
	if(level flag::get("players_are_in_apc") || level.var_1a71fabf >= level.activePlayers.size)
	{
		return;
	}
	level flag::set("failed_apc_boarding");
	var_6ca49220 = [];
	var_6ca49220[0] = GetEnt("trig_apc_gunner1", "script_noteworthy");
	var_6ca49220[1] = GetEnt("trig_apc_gunner2", "script_noteworthy");
	var_6ca49220[2] = GetEnt("trig_apc_gunner3", "script_noteworthy");
	var_6ca49220[3] = GetEnt("trig_apc_gunner4", "script_noteworthy");
	foreach(var_66b9fddf in var_6ca49220)
	{
		if(isdefined(var_66b9fddf.var_5356d2cc))
		{
			var_66b9fddf.var_5356d2cc gameobjects::disable_object();
		}
		var_66b9fddf delete();
	}
	var_1f75b80a = struct::get_array("garage_fail_rockets", "targetname");
	var_8af78429 = GetWeapon("launcher_standard_magic_bullet");
	foreach(s_start in var_1f75b80a)
	{
		MagicBullet(var_8af78429, s_start.origin, struct::get(s_start.target, "targetname").origin);
		wait(0.15);
	}
	util::unmake_hero("ally_01");
	util::unmake_hero("ally_02");
	util::unmake_hero("ally_03");
	util::unmake_hero("hendricks");
	foreach(player in level.activePlayers)
	{
		if(isdefined(player))
		{
			player thread namespace_835fda7e::function_c794d3c2(100, 100, 1, 0);
			wait(0.15);
		}
	}
	wait(0.25);
	level.apc.overrideVehicleDamage = undefined;
	level.apc SetCanDamage(1);
	level.apc DoDamage(level.apc.health + 1, level.apc.origin);
	wait(1);
	util::missionfailedwrapper_nodeath(&"CP_MI_ETH_PROLOGUE_GARAGE_FAIL");
}

/*
	Name: function_4792c4cc
	Namespace: apc
	Checksum: 0x65689892
	Offset: 0x31E0
	Size: 0x1BF
	Parameters: 0
	Flags: None
*/
function function_4792c4cc()
{
	level endon("hash_b21dcc36");
	level endon("hash_98a72693");
	var_be61cb01 = GetEnt("clip_garage_door", "targetname");
	if(!isdefined(var_be61cb01))
	{
		return;
	}
	var_be61cb01 SetCanDamage(1);
	while(1)
	{
		var_be61cb01 waittill("damage", damage, attacker, direction_vec, point, type, modelName, tagName, partName, weapon, iDFlags);
		if(isdefined(weapon) && isdefined(weapon.name))
		{
			if(weapon.name == "turret_bo3_mil_macv_gunner1" || weapon.name == "turret_bo3_mil_macv_gunner2" || weapon.name == "turret_bo3_mil_macv_gunner3" || weapon.name == "turret_bo3_mil_macv_gunner4")
			{
				var_be61cb01 delete();
				level flag::set("apc_thru_door");
			}
		}
	}
}

/*
	Name: function_50d6bf35
	Namespace: apc
	Checksum: 0xFE817D74
	Offset: 0x33A8
	Size: 0x22B
	Parameters: 2
	Flags: None
*/
function function_50d6bf35(str_node, var_cab8c90c)
{
	vehicle::add_spawn_function("apc", &function_c695b790, var_cab8c90c);
	var_503961a8 = 0;
	var_9c9766b2 = 0;
	if(str_node == "nd_stall_start")
	{
		level.apc = vehicle::simple_spawn_single("apc_stall");
		level.apc.animName = "apc";
		var_503961a8 = 1;
		var_9c9766b2 = 1;
	}
	else
	{
		level.apc = vehicle::simple_spawn_single("apc");
		level.apc SetCanDamage(0);
		level.apc SetSeatOccupied(1, 1);
		level.apc SetSeatOccupied(2, 1);
		level.apc SetSeatOccupied(3, 1);
		level.apc SetSeatOccupied(4, 1);
	}
	level flag::wait_till("all_players_spawned");
	level function_87f36425(str_node, var_cab8c90c);
	level function_faafa578();
	level thread function_38362d1e();
	level.apc thread function_8dc833e9(var_503961a8, var_9c9766b2);
	SetDvar("vehicle_selfCollision", 1);
}

/*
	Name: function_c695b790
	Namespace: apc
	Checksum: 0x800AF926
	Offset: 0x35E0
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_c695b790(var_cab8c90c)
{
	self vehicle::lights_off();
	level flag::wait_till("players_are_in_apc");
	playsoundatposition("veh_apc_startup", self.origin);
	self PlayLoopSound("veh_apc_idle", 3);
	level util::clientNotify("sndStopGarage");
	if(!var_cab8c90c)
	{
		foreach(player in level.activePlayers)
		{
			player PlayRumbleOnEntity("cp_prologue_rumble_apc_engine_start");
		}
	}
	wait(1);
	self vehicle::lights_on();
}

/*
	Name: function_8dc833e9
	Namespace: apc
	Checksum: 0xB9E2CDFA
	Offset: 0x3740
	Size: 0x119
	Parameters: 2
	Flags: None
*/
function function_8dc833e9(var_503961a8, var_d74d752a)
{
	if(!isdefined(var_503961a8))
	{
		var_503961a8 = 0;
	}
	if(!isdefined(var_d74d752a))
	{
		var_d74d752a = 0;
	}
	self endon("death");
	self endon("hash_ab8f1b97");
	var_adc2b62f = [];
	var_adc2b62f[0] = level._effect["apc_dmg_low"];
	var_adc2b62f[1] = level._effect["apc_dmg_high"];
	n_current = 0;
	while(1)
	{
		if(var_d74d752a == 0)
		{
			self waittill("hash_96522489");
		}
		PlayFXOnTag(var_adc2b62f[n_current], self, "tag_origin");
		n_current++;
		if(var_d74d752a > 0)
		{
			var_d74d752a--;
		}
		if(n_current >= var_adc2b62f.size)
		{
			return;
		}
	}
}

/*
	Name: function_514ce5dd
	Namespace: apc
	Checksum: 0x45FDFC2B
	Offset: 0x3868
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_514ce5dd()
{
	/#
		while(1)
		{
			while(!level.players[0] JumpButtonPressed() || !level.players[0] AttackButtonPressed())
			{
				wait(0.05);
			}
			level.apc notify("hash_96522489");
			while(level.players[0] JumpButtonPressed() || level.players[0] AttackButtonPressed())
			{
				wait(0.05);
			}
		}
	#/
}

/*
	Name: function_87f36425
	Namespace: apc
	Checksum: 0xC9579BA6
	Offset: 0x3930
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_87f36425(str_node, var_cab8c90c)
{
	level thread function_2309bb98(str_node, var_cab8c90c);
	if(level.skipto_point != "skipto_apc_rail_stall" && level.skipto_point != "skipto_apc_rail")
	{
		level thread function_ade89a8a();
	}
	level thread function_29c3397f();
	level.apc MakeVehicleUnusable();
	level.apc SetSeatOccupied(0);
}

/*
	Name: function_81a9e31c
	Namespace: apc
	Checksum: 0x466632B
	Offset: 0x39F8
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_81a9e31c()
{
	level.var_586b4bd0 = 0;
	level.var_4480630f = Array("gunner1", "gunner2", "gunner3", "gunner4");
	var_3f213c83 = GetEntArray("t_enter_apc", "targetname");
	Array::run_all(var_3f213c83, &TriggerEnable, 0);
	var_718396de = GetEnt("m_tunnel_vtol_death", "targetname");
	var_718396de Hide();
	level thread scene::init("p7_fxanim_cp_prologue_apc_door_01_open_bundle");
	level thread scene::init("p7_fxanim_cp_prologue_apc_door_02_open_bundle");
	level thread scene::init("p7_fxanim_cp_prologue_apc_door_03_dent_bundle");
}

/*
	Name: apc_cleanup
	Namespace: apc
	Checksum: 0x156D79A3
	Offset: 0x3B40
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function apc_cleanup()
{
	if(isdefined(level.var_f58c9f31))
	{
		level.var_f58c9f31 delete();
	}
	if(isdefined(level.var_7f246cd7))
	{
		level.var_7f246cd7 delete();
	}
	if(isdefined(level.var_5d4087a6))
	{
		level.var_5d4087a6 delete();
	}
	namespace_12501af4::function_c2619de1();
}

/*
	Name: function_7ef8f611
	Namespace: apc
	Checksum: 0xD626FDF3
	Offset: 0x3BD8
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_7ef8f611()
{
	a_ai = GetAITeamArray("axis");
	if(isdefined(a_ai))
	{
		for(i = 0; i < a_ai.size; i++)
		{
			a_ai[i] delete();
		}
	}
}

/*
	Name: function_c1b99214
	Namespace: apc
	Checksum: 0xDC792A01
	Offset: 0x3C58
	Size: 0x29B
	Parameters: 2
	Flags: None
*/
function function_c1b99214(objective, var_74cd64bc)
{
	namespace_4dc8633b::function_77d9dff("objective_apc_rail_init");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread namespace_2cb3876f::function_cfabe921();
		battlechatter::function_d9f49fba(0);
		level.var_92d245e2 = util::function_740f8516("prometheus");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level namespace_2cb3876f::function_6a5f89cb("skipto_apc_rail_ai");
		level function_50d6bf35("vehicle_apc_hijack_node", 1);
		load::function_a2995f22();
		level function_26fb0662();
		level.var_92d245e2 SetGoal(level.var_92d245e2.origin, 1);
		level.var_2fd26037 SetGoal(level.var_2fd26037.origin, 1);
		level.var_2fd26037 vehicle::get_in(level.apc, "driver", 1);
		level flag::set("apc_unlocked");
		level flag::set("apc_ready");
		level thread function_5c1321b9();
		level thread function_b31512cf();
		level thread function_651e7b34(0);
		level thread function_599ebca1();
		wait(0.1);
		level flag::set("garage_dent");
		level thread function_e928ca6f();
	}
	function_e41aeec0();
}

/*
	Name: function_961480e7
	Namespace: apc
	Checksum: 0x84A96012
	Offset: 0x3F00
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_961480e7(name, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_4dc8633b::function_77d9dff("apc_rail_done");
}

/*
	Name: function_e41aeec0
	Namespace: apc
	Checksum: 0xFB89D4BD
	Offset: 0x3F48
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function function_e41aeec0()
{
	level.apc SetModel("veh_t7_mil_macv_prologue_optimized");
	var_b7007b04 = vehicle::simple_spawn("truck_parked_one");
	foreach(var_a9993ca4 in var_b7007b04)
	{
		var_a9993ca4.overrideVehicleDamage = &function_2923c71;
		var_a9993ca4.overrideVehicleKilled = &function_afd7b227;
	}
	vh_truck = vehicle::simple_spawn_single("truck_challenge_1");
	vh_truck.overrideVehicleKilled = &function_afd7b227;
	vh_truck.overrideVehicleDamage = &function_2923c71;
	level thread function_2f99d976();
	level thread function_3a615091();
	level flag::wait_till("players_are_in_apc");
	level flag::wait_till("ai_in_apc");
	wait(1);
	var_935a64f = GetEnt("clip_garage_exit", "targetname");
	if(isdefined(var_935a64f))
	{
		var_935a64f delete();
	}
	level thread function_8ff9807e();
	level thread function_8d1d7010();
	level thread function_83f90899();
	level thread function_9e863a52();
	level thread function_4b0777ee();
	level thread function_809f2e11();
	level thread function_4eae0e09();
	exploder::exploder("light_exploder_rails_stall");
}

/*
	Name: function_2f99d976
	Namespace: apc
	Checksum: 0x2E023418
	Offset: 0x4210
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_2f99d976()
{
	level flag::wait_till("apc_rail_begin");
	level.var_2fd26037 dialog::say("hend_get_ready_we_gotta_0", 0.5);
	level flag::wait_till("apc_thru_door");
	level thread namespace_21b2c1f2::function_da98f0c7();
	var_49b32118 = GetEnt("pa_nrc_warning", "targetname");
	var_49b32118 dialog::say("nrcp_infiltrators_moving_1", 0.5, 1);
	trigger::wait_till("t_apc_sees_vtols");
	level.var_2fd26037 dialog::say("hend_focus_fire_on_that_b_0");
}

/*
	Name: function_3a615091
	Namespace: apc
	Checksum: 0x60CE8FF6
	Offset: 0x4330
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_3a615091()
{
	trigger::wait_till("trigger_reached_roadblock");
	level.var_2fd26037 dialog::say("hend_we_gotta_take_a_deto_0", 0.5);
	trigger::wait_till("trigger_roadblock_bypass");
	level.var_2fd26037 dialog::say("hend_apc_from_the_right_0");
	trigger::wait_till("ambush_vtol_takeoff");
	level.var_2fd26037 dialog::say("hend_inbound_vtol_redire_0", 1);
}

/*
	Name: function_4b0777ee
	Namespace: apc
	Checksum: 0x18477CBD
	Offset: 0x43F8
	Size: 0x1B7
	Parameters: 0
	Flags: None
*/
function function_4b0777ee()
{
	vehicle::add_spawn_function("garage_truck1", &namespace_2cb3876f::function_9af14b02, "reached_roadblock", 3);
	vehicle::add_spawn_function("garage_truck2", &namespace_2cb3876f::function_9af14b02, "reached_roadblock", 3);
	vehicle::add_spawn_function("garage_truck2", &function_67348f4b);
	spawner::add_spawn_function_group("group_garage_trucker", "script_aigroup", &namespace_2cb3876f::function_1db6047f, "trigger_spawn_roadblock");
	trigger::wait_till("trigger_door_smash");
	vh_truck1 = vehicle::simple_spawn_single("garage_truck1");
	vh_truck1.overrideVehicleDamage = &function_2923c71;
	vh_truck1.overrideVehicleKilled = &function_afd7b227;
	trigger::wait_till("trig_cleanup_intro_garage");
	wait(1.5);
	vh_truck2 = vehicle::simple_spawn_single("garage_truck2");
	vh_truck2.overrideVehicleDamage = &function_2923c71;
	vh_truck2.overrideVehicleKilled = &function_afd7b227;
}

/*
	Name: function_9e863a52
	Namespace: apc
	Checksum: 0x9E0DCAFB
	Offset: 0x45B8
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_9e863a52()
{
	level flag::wait_till("apc_thru_door");
	vehicle::add_spawn_function("vtol_right", &function_5cc1f320);
	vehicle::add_spawn_function("vtol_left", &function_282b068c);
	vehicle::add_spawn_function("truck_parked_1", &function_9b11b2b2);
	vehicle::simple_spawn_single("vtol_right");
	vehicle::simple_spawn_single("vtol_left");
	trigger::wait_till("t_helipad_guys");
	vh_truck = vehicle::simple_spawn_single("truck_parked_1");
	vh_truck.overrideVehicleKilled = &function_afd7b227;
}

/*
	Name: function_9b11b2b2
	Namespace: apc
	Checksum: 0x925CD978
	Offset: 0x46E0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_9b11b2b2()
{
	self endon("death");
	self.overrideVehicleDamage = &function_2923c71;
	self vehicle::lights_off();
	trigger::wait_till("t_rail_ambush_apc");
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
}

/*
	Name: function_5cc1f320
	Namespace: apc
	Checksum: 0x7A75E91D
	Offset: 0x4788
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_5cc1f320()
{
	self endon("death");
	self.overrideVehicleKilled = &function_a6ea2383;
	self vehicle::lights_off();
	self vehicle::toggle_sounds(0);
	self.do_scripted_crash = 0;
	trigger::wait_till("t_apc_sees_vtols");
	self vehicle::lights_on();
	self PlaySoundOnTag("evt_apcrail_vtol1_takeoff", "tag_barrel");
	self thread function_d20ef450();
	wait(0.25);
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	wait(0.5);
	self.do_scripted_crash = 1;
	for(i = 0; i < 3; i++)
	{
		self turret::enable(i, 0);
	}
	self waittill("reached_end_node");
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
}

/*
	Name: function_282b068c
	Namespace: apc
	Checksum: 0x6EE2FF5A
	Offset: 0x4950
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_282b068c()
{
	self endon("death");
	self.overrideVehicleKilled = &function_a6ea2383;
	self vehicle::toggle_sounds(0);
	self thread function_826bc065();
	spawn_manager::enable("sm_vtol_guard");
	level flag::wait_till("robot_swarm");
	spawn_manager::kill("sm_vtol_guard", 1);
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
}

/*
	Name: function_826bc065
	Namespace: apc
	Checksum: 0x2F21DC58
	Offset: 0x4A50
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_826bc065()
{
	position = self.origin;
	self waittill("death");
	playsoundatposition("evt_apcride_vtolpad_explo", position);
}

/*
	Name: function_3d6b0c2e
	Namespace: apc
	Checksum: 0xE7150F4E
	Offset: 0x4AA0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3d6b0c2e()
{
	self endon("death");
	self waittill("reached_end_node");
	wait(1);
	self thread function_a942e878(level.apc.origin, level.apc.origin);
}

/*
	Name: function_a942e878
	Namespace: apc
	Checksum: 0xB30D56FB
	Offset: 0x4B00
	Size: 0x139
	Parameters: 3
	Flags: None
*/
function function_a942e878(v_left_target, v_right_target, var_da05687c)
{
	self endon("death");
	v_left = self GetTagOrigin("tag_rocket_left");
	v_right = self GetTagOrigin("tag_rocket_right");
	if(isdefined(var_da05687c))
	{
		var_8af78429 = GetWeapon(var_da05687c);
	}
	else
	{
		var_8af78429 = GetWeapon("hunter_rocket_turret");
	}
	var_b76e95dc = [];
	var_b76e95dc[0] = MagicBullet(var_8af78429, v_left, v_left_target, self);
	wait(0.2);
	var_b76e95dc[1] = MagicBullet(var_8af78429, v_right, v_right_target, self);
	return var_b76e95dc;
}

/*
	Name: function_83f90899
	Namespace: apc
	Checksum: 0x7E928F06
	Offset: 0x4C48
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_83f90899()
{
	var_866451b = vehicle::simple_spawn_single("attack_ambush_vtol");
	var_866451b.overrideVehicleKilled = &function_a6ea2383;
	var_866451b util::magic_bullet_shield();
	var_866451b thread function_7d33cac1();
	spawner::add_spawn_function_group("apex_garage_humans", "targetname", &function_4dbae164);
	level thread function_e3e24f64("intro_road_humans", "trig_first_crawler", "trig_cleanup_apex_garage");
	level thread function_5b0849af();
	level thread function_e3e24f64("apex_garage_humans", "trig_cleanup_intro_garage", "trig_cleanup_apex_garage");
	level thread function_b6adac49();
	level thread function_3da7ede0();
	level thread function_ff99c927();
	level thread function_e3e24f64("helipad_human", "trigger_helipad_guards", "trigger_roadblock_bypass");
	level thread function_3c04ed4b();
	level flag::wait_till("spawn_road_robots");
	spawner::simple_spawn("intro_road_robots", &function_722f45c3);
}

/*
	Name: function_4dbae164
	Namespace: apc
	Checksum: 0xA0E1FAD1
	Offset: 0x4E40
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_4dbae164()
{
	s_goal = struct::get("garage_guy_pos");
	var_72237359 = util::PositionQuery_PointArray(s_goal.origin, 64, 200, 70, 40);
	self SetGoal(var_72237359[RandomInt(var_72237359.size)], 1);
}

/*
	Name: function_722f45c3
	Namespace: apc
	Checksum: 0x5F0451ED
	Offset: 0x4EE0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_722f45c3()
{
	self endon("death");
	trigger::wait_till("trig_cleanup_apex_garage");
	self delete();
}

/*
	Name: function_ff99c927
	Namespace: apc
	Checksum: 0xB73F3823
	Offset: 0x4F28
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_ff99c927()
{
	spawner::add_spawn_function_group("roadblock_guard", "targetname", &function_b3a3ec26);
	spawner::add_spawn_function_group("group_roadblock", "script_aigroup", &namespace_2cb3876f::function_1db6047f, "t_offroad_enemies");
	spawner::add_spawn_function_group("parking_guard", "script_aigroup", &namespace_2cb3876f::function_1db6047f, "t_offroad_enemies");
	trigger::wait_till("trigger_garage_cleanup");
	spawn_manager::enable("sm_roadblock_guard");
	trigger::wait_till("trigger_spawn_roadblock");
	wait(6);
	spawner::simple_spawn_single("parking_guard1", &function_a22f604f, "truck_parked_1", "driver");
	spawner::simple_spawn_single("parking_guard2", &function_a22f604f, "truck_parked_1", "gunner1");
}

/*
	Name: function_a22f604f
	Namespace: apc
	Checksum: 0x5560A2E9
	Offset: 0x5098
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_a22f604f(str_vehicle, str_pos)
{
	self endon("death");
	var_1d874f37 = GetEnt(str_vehicle + "_vh", "targetname");
	if(isalive(var_1d874f37))
	{
		self thread vehicle::get_in(var_1d874f37, str_pos, 0);
	}
}

/*
	Name: function_b3a3ec26
	Namespace: apc
	Checksum: 0xD6D12436
	Offset: 0x5128
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_b3a3ec26()
{
	self endon("death");
	level flag::wait_till("reached_roadblock");
	self ai::set_ignoreall(1);
	self SetGoal(struct::get(self.script_noteworthy).origin, 1);
	self waittill("goal");
	self delete();
}

/*
	Name: function_3da7ede0
	Namespace: apc
	Checksum: 0xCAFA2BC8
	Offset: 0x51D0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_3da7ede0()
{
	level flag::wait_till("spawn_roadblock");
	var_1e13503b = vehicle::simple_spawn_single("macv_roadblock");
	var_1e13503b.overrideVehicleDamage = &function_2923c71;
	var_1e13503b.overrideVehicleKilled = &function_afd7b227;
	var_1e13503b endon("death");
	var_1e13503b thread vehicle::get_on_and_go_path(GetVehicleNode(var_1e13503b.target, "targetname"));
	for(i = 1; i <= 2; i++)
	{
		var_1e13503b thread turret::disable_ai_getoff(i, 1);
		var_1e13503b thread turret::shoot_at_target(level.apc, 3, undefined, i, 0);
	}
	wait(3);
	for(i = 1; i <= 4; i++)
	{
		var_1e13503b turret::enable(i, 1);
	}
	level flag::wait_till("player_in_tunnel");
	var_1e13503b thread namespace_2cb3876f::function_3a642801();
}

/*
	Name: function_b6adac49
	Namespace: apc
	Checksum: 0x1AF5205F
	Offset: 0x5390
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_b6adac49()
{
	level flag::wait_till("spawn_roadblock");
	vehicle::add_spawn_function("helipad_roadbloack_trucks", &function_ea1ff9c4);
	a_vh_trucks = vehicle::simple_spawn("helipad_roadbloack_trucks");
}

/*
	Name: function_ea1ff9c4
	Namespace: apc
	Checksum: 0x4E1842DA
	Offset: 0x5408
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_ea1ff9c4()
{
	self endon("death");
	self.overrideVehicleDamage = &function_2923c71;
	self.overrideVehicleKilled = &function_afd7b227;
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	self thread function_178c0a7a();
	v_offset = (randomIntRange(-80, 80), randomIntRange(-80, 80), randomIntRange(80, 100));
	self thread turret::shoot_at_target(level.apc, 8, v_offset, 1, 0);
	level flag::wait_till("player_in_tunnel");
	self thread namespace_2cb3876f::function_3a642801();
}

/*
	Name: function_178c0a7a
	Namespace: apc
	Checksum: 0xF535AB61
	Offset: 0x5558
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_178c0a7a()
{
	self endon("death");
	self waittill("reached_end_node");
	foreach(ai_rider in self.riders)
	{
		if(isalive(ai_rider) && ai_rider.script_startingposition != "gunner1")
		{
			ai_rider thread namespace_2cb3876f::function_2f943869();
		}
	}
}

/*
	Name: function_3c04ed4b
	Namespace: apc
	Checksum: 0x36260102
	Offset: 0x5638
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_3c04ed4b()
{
	trigger::wait_till("trigger_chaser");
	vehicle::add_spawn_function("macv_chaser1", &function_61f3859c);
	vehicle::simple_spawn("macv_chaser1");
	if(level.activePlayers.size > 1)
	{
		vehicle::add_spawn_function("macv_chaser2", &function_61f3859c);
		vehicle::simple_spawn("macv_chaser2");
	}
}

/*
	Name: function_61f3859c
	Namespace: apc
	Checksum: 0xBE6C3A03
	Offset: 0x56F0
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_61f3859c()
{
	self endon("death");
	self util::magic_bullet_shield();
	self.overrideVehicleDamage = &function_2923c71;
	self.overrideVehicleKilled = &function_afd7b227;
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	self thread function_3ef12439();
	for(i = 1; i <= 4; i++)
	{
		self thread turret::shoot_at_target(level.apc, 8, undefined, i, 0);
	}
	self waittill("vulnerable");
	self util::stop_magic_bullet_shield();
	trigger::wait_till("ambush_vtol_takeoff");
	for(i = 1; i <= 4; i++)
	{
		self thread turret::stop(i);
	}
	self notify("hash_b6c30be8");
	self waittill("reached_end_node");
	self kill();
}

/*
	Name: function_3ef12439
	Namespace: apc
	Checksum: 0x1B5B24D1
	Offset: 0x5898
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3ef12439()
{
	self endon("hash_b6c30be8");
	self waittill("death");
	if(self.is_talking === 1)
	{
		self waittill("done speaking");
	}
	level.var_2fd26037 dialog::say("hend_nice_fucking_shootin_0");
}

/*
	Name: function_e3e24f64
	Namespace: apc
	Checksum: 0x93BE2C05
	Offset: 0x5900
	Size: 0x169
	Parameters: 3
	Flags: None
*/
function function_e3e24f64(str_spawner, var_421fd9c7, var_fe7e3b3a)
{
	var_6d6eaca4 = str_spawner + "_ai";
	if(isdefined(var_421fd9c7))
	{
		trigger::wait_till(var_421fd9c7);
	}
	spawner::simple_spawn(str_spawner, &function_322a61a9);
	e_trigger = GetEnt(var_fe7e3b3a, "targetname");
	e_trigger waittill("trigger");
	var_3f508c44 = GetEntArray(var_6d6eaca4, "targetname");
	foreach(e_guy in var_3f508c44)
	{
		if(isdefined(e_guy))
		{
			e_guy delete();
		}
	}
}

/*
	Name: function_322a61a9
	Namespace: apc
	Checksum: 0x29EFDE7D
	Offset: 0x5A78
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_322a61a9()
{
	self.overrideActorDamage = &function_d73ad05a;
}

/*
	Name: function_1d1df80f
	Namespace: apc
	Checksum: 0xD6901188
	Offset: 0x5AA0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_1d1df80f()
{
	self endon("death");
	var_d28b337 = GetVehicleNode("nd_humans_run_away", "script_noteworthy");
	var_d28b337 waittill("trigger");
	var_19c8d8db = GetNode("nd_humans_run_away", "targetname");
	self thread ai::force_goal(var_19c8d8db, 32, 1);
}

/*
	Name: setup_garage_breachers
	Namespace: apc
	Checksum: 0xEE4523CA
	Offset: 0x5B40
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function setup_garage_breachers()
{
	self endon("death");
	self.goalRadius = 4;
	self SetGoal(self.origin, 1);
	self thread function_eccbf04a();
	level flag::wait_till("apc_thru_door");
	self ai::set_ignoreall(0);
	var_20c0a07b = GetVehicleNode("nd_cleanup_garage_attackers", "script_noteworthy");
	var_20c0a07b waittill("trigger");
	self delete();
}

/*
	Name: function_eccbf04a
	Namespace: apc
	Checksum: 0xB2E2C4FA
	Offset: 0x5C28
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_eccbf04a()
{
	level endon("hash_b21dcc36");
	level waittill("hash_98a72693");
	self ai::set_ignoreall(0);
	self ai::set_behavior_attribute("move_mode", "rusher");
}

/*
	Name: function_5b0849af
	Namespace: apc
	Checksum: 0x60E07BCC
	Offset: 0x5C90
	Size: 0x3D
	Parameters: 0
	Flags: None
*/
function function_5b0849af()
{
	var_474ca92e = GetVehicleNode("nd_open_garage", "script_noteworthy");
	var_474ca92e waittill("trigger");
}

/*
	Name: function_8ff9807e
	Namespace: apc
	Checksum: 0x2AE5A36A
	Offset: 0x5CD8
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function function_8ff9807e()
{
	level flag::set("apc_rail_begin");
	level.apc playsound("evt_apc_railstart");
	level thread function_5e86daf4();
	level.apc.goalRadius = 130;
	level.apc thread vehicle::get_on_and_go_path(GetVehicleNode("vehicle_apc_hijack_node", "targetname"));
	level.apc thread function_b328d415();
	level.apc thread function_4d508278();
	level.apc thread function_9d87900e();
	level thread function_b86a90c3();
	level thread function_e928ca6f();
	level thread function_97fa5e1d();
	trigger::wait_till("t_rail_ambush_apc");
	level thread scene::Play("p7_fxanim_cp_prologue_pump_station_crash_bundle");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_prologue_rumble_apc_offroad");
	}
	level.apc waittill("reached_end_node");
	level.apc StopLoopSound(2);
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_prologue_rumble_apc_offroad");
	}
	namespace_2cb3876f::function_b50f5d52();
	exploder::stop_exploder("light_exploder_rails_stall");
	skipto::function_be8adfb8("skipto_apc_rail");
}

/*
	Name: function_e928ca6f
	Namespace: apc
	Checksum: 0xE9C0BF5D
	Offset: 0x5FE0
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_e928ca6f(var_1af3ff57)
{
	if(!isdefined(var_1af3ff57))
	{
		var_1af3ff57 = 0;
	}
	level notify("hash_d9c09629");
	level endon("hash_d9c09629");
	if(!isdefined(level.var_f9bd5790))
	{
		level.var_f9bd5790 = [];
		if(!var_1af3ff57)
		{
			level.var_f9bd5790["first_turnaround"] = &function_da78deb1;
			level.var_aaf3820c = Array("first_turnaround", "vtol_tunnel");
		}
		else
		{
			level.var_aaf3820c = Array("vtol_tunnel");
		}
		level.var_f9bd5790["vtol_tunnel"] = &function_9eeeaa5d;
	}
	level thread function_be3e569a();
	level flag::wait_till("apc_rail_fail");
	level [[level.var_f9bd5790[level.var_b5d119f0]]]();
	util::missionfailedwrapper_nodeath(&"CP_MI_ETH_PROLOGUE_GARAGE_FAIL");
}

/*
	Name: function_da78deb1
	Namespace: apc
	Checksum: 0x8825A244
	Offset: 0x6138
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_da78deb1()
{
	var_6e104714 = VectorScale((0, 0, 1), 48);
	var_1f75b80a = struct::get_array("apc_fail_rocket_structs", "targetname");
	var_8af78429 = GetWeapon("launcher_standard_magic_bullet");
	for(i = 0; i < 2; i++)
	{
		var_b76e95dc = [];
		var_b76e95dc[0] = MagicBullet(var_8af78429, var_1f75b80a[0].origin, level.apc.origin + var_6e104714, undefined, level.apc);
		wait(0.1);
		var_b76e95dc[1] = MagicBullet(var_8af78429, var_1f75b80a[1].origin, level.apc.origin + var_6e104714, undefined, level.apc);
	}
	var_b76e95dc[0] waittill("death");
}

/*
	Name: function_9eeeaa5d
	Namespace: apc
	Checksum: 0xCE878145
	Offset: 0x62A8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_9eeeaa5d()
{
	level notify("hash_8b1044c1");
	vh_vtol = GetEnt("fxanim_vtol_tunnel", "targetname", 1);
	var_b76e95dc = vh_vtol function_a942e878(level.apc.origin, level.apc.origin, "launcher_standard_magic_bullet");
	var_b76e95dc[var_b76e95dc.size - 1] waittill("death");
}

/*
	Name: function_be3e569a
	Namespace: apc
	Checksum: 0x6E1587F1
	Offset: 0x6358
	Size: 0x1C7
	Parameters: 0
	Flags: None
*/
function function_be3e569a()
{
	level endon("hash_d9c09629");
	for(i = 0; i < level.var_aaf3820c.size; i++)
	{
		level.var_b5d119f0 = level.var_aaf3820c[i];
		foreach(player in level.players)
		{
			player.var_52a8c6b = 0;
			player thread function_2de9c217();
		}
		level waittill("hash_9d265855");
		var_c25b6cc2 = 1;
		foreach(player in level.players)
		{
			if(isdefined(player.var_52a8c6b) && player.var_52a8c6b)
			{
				var_c25b6cc2 = 0;
			}
		}
		if(var_c25b6cc2)
		{
			flag::set("apc_rail_fail");
			return;
		}
	}
}

/*
	Name: function_2de9c217
	Namespace: apc
	Checksum: 0xE7D6788A
	Offset: 0x6528
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_2de9c217()
{
	self notify("hash_837aa23e");
	self endon("death");
	self endon("hash_837aa23e");
	level endon("hash_d9c09629");
	while(1)
	{
		if(self AttackButtonPressed())
		{
			self.var_52a8c6b = 1;
			return;
		}
		wait(0.05);
	}
}

/*
	Name: function_b86a90c3
	Namespace: apc
	Checksum: 0x8F16526B
	Offset: 0x65A8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b86a90c3()
{
	var_4253be48 = GetVehicleNode("nd_garage_attackers", "script_noteworthy");
	var_4253be48 waittill("trigger");
	level.apc thread function_219a1e60();
	function_6ac512e();
}

/*
	Name: function_97fa5e1d
	Namespace: apc
	Checksum: 0x9C0087E4
	Offset: 0x6618
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_97fa5e1d()
{
	level flag::wait_till("delete_garage_allies");
	if(isdefined(level.var_92d245e2))
	{
		level.var_92d245e2 delete();
	}
	if(isdefined(level.var_f58c9f31))
	{
		level.var_f58c9f31 delete();
	}
	if(isdefined(level.var_7f246cd7))
	{
		level.var_7f246cd7 delete();
	}
	if(isdefined(level.var_5d4087a6))
	{
		level.var_5d4087a6 delete();
	}
}

/*
	Name: function_2ac0c49
	Namespace: apc
	Checksum: 0xA778EAEE
	Offset: 0x66E8
	Size: 0x28B
	Parameters: 2
	Flags: None
*/
function function_2ac0c49(objective, var_74cd64bc)
{
	namespace_4dc8633b::function_77d9dff("objective_apc_rail_stall_init");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread scene::skipto_end("p7_fxanim_cp_prologue_pump_station_crash_bundle");
		level thread namespace_2cb3876f::function_cfabe921();
		battlechatter::function_d9f49fba(0);
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level namespace_2cb3876f::function_6a5f89cb("skipto_apc_rail_stall_ai");
		level function_50d6bf35("nd_stall_start", 0);
		load::function_a2995f22();
		exploder::exploder("fx_exploder_fog_part_01");
		level function_26fb0662();
		level.var_2fd26037 vehicle::get_in(level.apc, "driver", 1);
		var_8d053b4 = GetEnt("t_rail_ambush_apc", "targetname");
		PhysicsExplosionCylinder(var_8d053b4.origin, 150, 150, 2);
		level flag::wait_till("players_are_in_apc");
		level flag::set("apc_unlocked");
		level flag::set("apc_ready");
		level thread function_5c1321b9();
		level thread function_599ebca1();
		level thread function_809f2e11();
		level thread function_e928ca6f(1);
	}
	function_fa4b82f9();
}

/*
	Name: function_fbfbaee6
	Namespace: apc
	Checksum: 0x33CCF78E
	Offset: 0x6980
	Size: 0x19B
	Parameters: 4
	Flags: None
*/
function function_fbfbaee6(name, var_74cd64bc, var_e4cd2b8b, player)
{
	exploder::stop_exploder("light_exploder_cameraroom");
	exploder::stop_exploder("light_exploder_prison_door");
	exploder::stop_exploder("light_exploder_prison_exit");
	exploder::stop_exploder("light_exploder_torture_rooms");
	exploder::stop_exploder("light_lift_panel_red");
	exploder::stop_exploder("light_lift_panel_green");
	exploder::stop_exploder("light_exploder_lift_inside");
	exploder::stop_exploder("light_exploder_lift_rising");
	exploder::stop_exploder("light_exploder_igc_cybersoldier");
	exploder::stop_exploder("light_exploder_bridge");
	exploder::stop_exploder("light_exploder_darkbattle");
	exploder::stop_exploder("light_exploder_vtol_tackle_fire");
	level.friendlyFireDisabled = 0;
	namespace_4dc8633b::function_77d9dff("apc_rail_stall_done");
	if(isdefined(level.apc))
	{
		level.apc SetModel("veh_t7_mil_macv");
	}
}

/*
	Name: function_fa4b82f9
	Namespace: apc
	Checksum: 0xF753C50D
	Offset: 0x6B28
	Size: 0x603
	Parameters: 0
	Flags: None
*/
function function_fa4b82f9()
{
	namespace_2cb3876f::function_b50f5d52();
	var_b7007b04 = vehicle::simple_spawn("truck_parked_two");
	foreach(var_a9993ca4 in var_b7007b04)
	{
		var_a9993ca4.overrideVehicleDamage = &function_2923c71;
	}
	vh_truck = vehicle::simple_spawn_single("truck_challenge_2");
	vh_truck.overrideVehicleDamage = &function_2923c71;
	vh_truck.overrideVehicleKilled = &function_afd7b227;
	level.apc vehicle::lights_off();
	level thread function_4c84e244();
	level thread function_855b7b87();
	level thread function_7bfe936c();
	level thread function_2e621ac9();
	level thread function_643f155c();
	level thread function_80e4d901();
	level thread tower_collapse();
	level thread function_370bf66();
	if(isdefined(level.BZM_PROLOGUEDialogue6_1Callback))
	{
		level thread [[level.BZM_PROLOGUEDialogue6_1Callback]]();
	}
	level flag::wait_till("apc_resume");
	level.apc playsound("evt_apc_vtol_takeoff");
	level.apc PlayLoopSound("veh_railapc_move_lp", 3);
	nd_start = GetVehicleNode("nd_stall_start", "targetname");
	level.apc util::delay(1, undefined, &vehicle::get_on_and_go_path, nd_start);
	vehicle::add_spawn_function("tunnel_chase_apc", &namespace_2cb3876f::function_bd761fba, "tunnel_vtol_hit");
	vehicle::add_spawn_function("tunnel_truck", &namespace_2cb3876f::function_bd761fba, "tunnel_vtol_hit");
	var_418b69a6 = vehicle::simple_spawn_single_and_drive("tunnel_chase_apc");
	var_418b69a6.overrideVehicleDamage = &function_2923c71;
	var_418b69a6.overrideVehicleKilled = &function_afd7b227;
	var_e71aed84 = vehicle::simple_spawn_single("tunnel_truck");
	var_e71aed84.overrideVehicleDamage = &function_2923c71;
	var_e71aed84.overrideVehicleKilled = &function_afd7b227;
	level thread function_2ceecfc0();
	level thread function_870b1c2();
	level thread function_e3e24f64("tunnel_roadblock_guard", "trigger_tunnel_guards", "trig_cleanup_tunnel_roadblock");
	var_919a5632 = GetEnt("trig_player_in_tunnel", "targetname");
	var_919a5632 waittill("trigger");
	level flag::set("player_in_tunnel");
	level thread function_704f0351();
	level thread function_f0e1f99();
	level.apc waittill("reached_end_node");
	level.apc StopLoopSound(2);
	level.apc ClearVehGoalPos();
	level thread function_aac37081();
	foreach(e_player in level.players)
	{
		e_player notify("hash_ee92aeb6");
	}
	level flag::set("apc_crash");
	level thread namespace_21b2c1f2::function_27bc11a3();
	level flag::wait_till("apc_done");
	skipto::function_be8adfb8("skipto_apc_rail_stall");
}

/*
	Name: function_aac37081
	Namespace: apc
	Checksum: 0x2B5CCB21
	Offset: 0x7138
	Size: 0x473
	Parameters: 0
	Flags: None
*/
function function_aac37081()
{
	level thread namespace_2cb3876f::function_b50f5d52();
	level thread scene::add_scene_func("cin_pro_17_01_robotdefend_vign_apc_exit_frontleft", &function_a51eb84, "done");
	level thread scene::add_scene_func("cin_pro_17_01_robotdefend_vign_apc_exit_frontright", &function_a51eb84, "done");
	level thread scene::add_scene_func("cin_pro_17_01_robotdefend_vign_apc_exit_rearleft", &function_a51eb84, "done");
	level thread scene::add_scene_func("cin_pro_17_01_robotdefend_vign_apc_exit_rearright", &function_a51eb84, "done");
	level thread scene::add_scene_func("cin_pro_17_01_robotdefend_vign_apc_exit_frontleft", &namespace_835fda7e::function_a4e4e77d, "play");
	s_scene = struct::get("tag_align_robot_defend2");
	foreach(player in level.activePlayers)
	{
		if(player.vehicleposition == 1)
		{
			player.var_26e12b3 = "cin_pro_17_01_robotdefend_vign_apc_exit_frontleft";
			continue;
		}
		if(player.vehicleposition == 2)
		{
			player.var_26e12b3 = "cin_pro_17_01_robotdefend_vign_apc_exit_frontright";
			continue;
		}
		if(player.vehicleposition == 3)
		{
			player.var_26e12b3 = "cin_pro_17_01_robotdefend_vign_apc_exit_rearright";
			continue;
		}
		if(player.vehicleposition == 4)
		{
			player.var_26e12b3 = "cin_pro_17_01_robotdefend_vign_apc_exit_rearleft";
		}
	}
	level thread function_1aa160fc();
	level thread function_7fd9539();
	level namespace_2cb3876f::function_12ce22ee();
	level.var_2fd26037 thread vehicle::get_out();
	foreach(ai_ally in level.a_ai_allies)
	{
		if(isalive(ai_ally))
		{
			ai_ally thread vehicle::get_out();
		}
	}
	level thread scene::Play("cin_pro_17_01_robotdefend_vign_apc_exit_apc");
	level thread scene::Play("cin_pro_17_01_robotdefend_vign_apc_exit_ai");
	level thread scene::Play("cin_pro_17_01_robotdefend_vign_apc_exit_hendricks");
	foreach(player in level.activePlayers)
	{
		if(isalive(player))
		{
			level thread scene::Play(player.var_26e12b3, player);
		}
	}
	level waittill("hash_68000fca");
	level thread namespace_835fda7e::function_8e9f8d38();
}

/*
	Name: function_7fd9539
	Namespace: apc
	Checksum: 0xA8A77E58
	Offset: 0x75B8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7fd9539()
{
	level waittill("hash_bb097890");
	level util::clientNotify("sndAPC");
	level waittill("hash_3c7fea6f");
	level util::clientNotify("sndAPCend");
}

/*
	Name: function_a51eb84
	Namespace: apc
	Checksum: 0x12BBD5B9
	Offset: 0x7618
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_a51eb84(a_ents)
{
	level flag::set("apc_done");
}

/*
	Name: function_f0e1f99
	Namespace: apc
	Checksum: 0x331C948F
	Offset: 0x7650
	Size: 0x32B
	Parameters: 0
	Flags: None
*/
function function_f0e1f99()
{
	s_rpg = struct::get("rpg_shot");
	var_7693abd3 = struct::get("derail_1");
	var_48c3c98 = struct::get("derail_2");
	s_exp = struct::get("explosion_derail");
	var_8af78429 = GetWeapon("launcher_standard");
	level.apc waittill("hash_5c1321b9");
	MagicBullet(var_8af78429, s_rpg.origin, var_7693abd3.origin);
	wait(0.3);
	level thread FX::Play("gen_explosion", struct::get(var_7693abd3.target).origin);
	playsoundatposition("wpn_rocket_explode", struct::get(var_7693abd3.target).origin);
	level.apc waittill("hash_492aff01");
	MagicBullet(var_8af78429, s_rpg.origin, var_48c3c98.origin);
	wait(0.3);
	level thread FX::Play("gen_explosion", struct::get(var_48c3c98.target).origin);
	playsoundatposition("wpn_rocket_explode", struct::get(var_48c3c98.target).origin);
	level.apc waittill("hash_c98eccfe");
	wait(0.5);
	MagicBullet(var_8af78429, s_rpg.origin, s_exp.origin);
	wait(0.3);
	level thread FX::Play("gen_explosion", struct::get(s_exp.target).origin);
	playsoundatposition("wpn_rocket_explode", struct::get(s_exp.target).origin);
}

/*
	Name: function_4c84e244
	Namespace: apc
	Checksum: 0xB8A1BAB2
	Offset: 0x7988
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_4c84e244()
{
	level flag::set("robot_swarm");
	level thread namespace_21b2c1f2::function_27bc11a3();
	level.var_2fd26037 dialog::say("hend_fuck_damn_piece_of_0", 0.5);
	level thread function_abe568bf();
	wait(2);
	level.var_2fd26037 dialog::say("khal_jacob_start_the_dam_0", 1);
	level.var_2fd26037 dialog::say("hend_what_the_hell_do_you_0", 0.5);
	level.var_2fd26037 dialog::say("hend_hold_them_back_this_0", 0.3);
	wait(5);
	level flag::set("apc_restart");
}

/*
	Name: function_855b7b87
	Namespace: apc
	Checksum: 0xF471A3B0
	Offset: 0x7AA8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_855b7b87()
{
	level flag::wait_till("apc_engine_started");
	level flag::set("apc_resume");
	level thread namespace_21b2c1f2::function_8feece84();
	level.var_2fd26037 dialog::say("hend_we_re_good_let_s_fu_0");
	level.var_2fd26037 dialog::say("hend_take_out_that_afv_0", 1);
}

/*
	Name: function_7bfe936c
	Namespace: apc
	Checksum: 0xD2004075
	Offset: 0x7B58
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_7bfe936c()
{
	trigger::wait_till("trig_cleanup_tunnel_roadblock");
	level.var_2fd26037 dialog::say("hend_buzzard_dead_ahead_0");
	level.apc dialog::say("dops_drone_in_range_thir_0", 0.5, 1);
	level.apc dialog::say("dops_sending_drop_coordin_0", 1);
	level flag::wait_till("tunnel_vtol_hit");
	level.apc notify("hash_96522489");
	level.apc dialog::say("tayr_hendricks_additiona_0", 0.5, 1);
	level.var_2fd26037 dialog::say("hend_copy_that_2", 0.15);
	level flag::wait_till("obs_collapse");
	level.var_2fd26037 dialog::say("hend_going_offroad_exfil_0");
	level.var_2fd26037 dialog::say("hend_fuck_we_re_coming_i_0", 0.15);
}

/*
	Name: function_704f0351
	Namespace: apc
	Checksum: 0x93F7B1CA
	Offset: 0x7CE8
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_704f0351()
{
	vehicle::add_spawn_function("last_truck", &function_6cb71a05);
	vehicle::add_spawn_function("truck_divert1", &function_6cb71a05);
	trigger::wait_till("trigger_truck_divert");
	var_5bde7cd3 = vehicle::simple_spawn_single("truck_divert1");
	var_5bde7cd3.overrideVehicleKilled = &function_4ddf39a4;
	trigger::wait_till("trigger_last_roadblock");
	vehicle::simple_spawn("last_truck");
	spawner::simple_spawn("checkpoint_guard");
	wait(1);
	exploder::exploder("light_exploder_rails_roadblock");
}

/*
	Name: function_6cb71a05
	Namespace: apc
	Checksum: 0x5DAA5F08
	Offset: 0x7E08
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_6cb71a05()
{
	self endon("death");
	self.overrideVehicleDamage = &function_2923c71;
	self.overrideVehicleKilled = &function_afd7b227;
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	v_offset = (randomIntRange(-80, 80), randomIntRange(-80, 80), randomIntRange(80, 100));
	self thread turret::shoot_at_target(level.apc, 8, v_offset, 1, 0);
	level flag::wait_till("apc_crash");
	level thread namespace_21b2c1f2::function_27bc11a3();
	self thread namespace_2cb3876f::function_3a642801();
}

/*
	Name: function_fbbf6635
	Namespace: apc
	Checksum: 0x4E21898B
	Offset: 0x7F58
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_fbbf6635()
{
	self endon("death");
	self.overrideVehicleDamage = &function_2923c71;
	self.overrideVehicleKilled = &function_afd7b227;
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	v_offset = (randomIntRange(-80, 80), randomIntRange(-80, 80), randomIntRange(80, 100));
	self thread turret::shoot_at_target(level.apc, 8, v_offset, 1, 0);
	level flag::wait_till("apc_crash");
	level thread namespace_21b2c1f2::function_27bc11a3();
	self thread namespace_2cb3876f::function_3a642801();
}

/*
	Name: function_643f155c
	Namespace: apc
	Checksum: 0xFCC9D76C
	Offset: 0x80A8
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function function_643f155c()
{
	spawner::add_spawn_function_group("group_ambush_truck", "script_aigroup", &namespace_2cb3876f::function_1db6047f, "apc_hits_truck_in_tunnel");
	var_b23a66fe = vehicle::add_spawn_function("stall_truck", &function_b82df867);
	var_8c37ec95 = vehicle::add_spawn_function("stall_truck_rear", &function_b82df867);
	level flag::wait_till("robot_swarm");
	a_vh_trucks = vehicle::simple_spawn("stall_truck");
	foreach(vh_truck in a_vh_trucks)
	{
		if(level.activePlayers.size > 1)
		{
			var_f0049a8 = vehicle::simple_spawn("stall_truck_rear");
		}
	}
}

/*
	Name: function_b82df867
	Namespace: apc
	Checksum: 0x9DB2B781
	Offset: 0x8240
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_b82df867()
{
	self endon("death");
	self util::magic_bullet_shield();
	self vehicle::lights_off();
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	self waittill("vulnerable");
	wait(2);
	self util::stop_magic_bullet_shield();
	self turret::enable(1, 1);
	self.overrideVehicleDamage = &function_2923c71;
	self.overrideVehicleKilled = &function_afd7b227;
	self waittill("reached_end_node");
	self vehicle::lights_on();
	trigger::wait_till("trig_player_in_tunnel");
	self thread namespace_2cb3876f::function_3a642801();
}

/*
	Name: function_2e621ac9
	Namespace: apc
	Checksum: 0x8A470B1D
	Offset: 0x8380
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_2e621ac9()
{
	level flag::wait_till("robot_swarm");
	wait(2);
	level thread function_fc2d6bf3();
	spawner::add_spawn_function_group("ambush_robots_front", "targetname", &function_d8b959d6);
	spawn_manager::enable("sm_ambush_robots_front");
	if(level.activePlayers.size > 1)
	{
		spawner::add_spawn_function_group("ambush_robots_rear", "targetname", &function_d8b959d6);
		spawn_manager::enable("sm_ambush_robots_rear");
		level thread function_27ee29e6();
		level thread function_4446fa95();
	}
	level thread function_b4145fc1();
	level thread function_35eded54();
	trigger::wait_till("trigger_tunnel_entrance");
	spawn_manager::kill("sm_ambush_robots_front");
	if(level.activePlayers.size > 1)
	{
		spawn_manager::kill("sm_ambush_robots_rear");
	}
}

/*
	Name: function_d8b959d6
	Namespace: apc
	Checksum: 0xE3D98797
	Offset: 0x8520
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_d8b959d6()
{
	self endon("death");
	self ai::set_behavior_attribute("move_mode", "marching");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	wait(1);
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	trigger::wait_till("t_spawn_tunnel_roadblock");
	self delete();
}

/*
	Name: function_fc2d6bf3
	Namespace: apc
	Checksum: 0xB34DC8D5
	Offset: 0x85F8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_fc2d6bf3()
{
	level endon("hash_2a6578a1");
	var_87783e2a = 4000;
	while(1)
	{
		deleteCorpses = [];
		foreach(corpse in GetCorpseArray())
		{
			if(isdefined(corpse.birthtime) && isdefined(corpse.archetype) && corpse.archetype == "robot" && corpse.birthtime + var_87783e2a < GetTime())
			{
				deleteCorpses[deleteCorpses.size] = corpse;
			}
		}
		for(index = 0; index < deleteCorpses.size; index++)
		{
			deleteCorpses[index] delete();
		}
		wait(var_87783e2a / 1000 / 2);
	}
}

/*
	Name: function_abe568bf
	Namespace: apc
	Checksum: 0xB9B59FB9
	Offset: 0x8788
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_abe568bf()
{
	while(!level flag::get("apc_restart"))
	{
		level.apc playsound("evt_apc_start_fail");
		foreach(player in level.activePlayers)
		{
			player PlayRumbleOnEntity("cp_prologue_rumble_apc_engine_restart");
		}
		exploder::exploder("light_exploder_headlight_flicker_01");
		wait(1.5);
		exploder::stop_exploder("light_exploder_headlight_flicker_01");
		wait(RandomFloatRange(0.5, 1));
	}
	level.apc playsound("evt_apc_start_success");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_prologue_rumble_apc_engine_start");
	}
	wait(1.5);
	level.apc vehicle::lights_on();
	level flag::set("apc_engine_started");
}

/*
	Name: function_2ceecfc0
	Namespace: apc
	Checksum: 0x2604CD77
	Offset: 0x89B0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2ceecfc0()
{
	trigger::wait_till("t_spawn_tunnel_roadblock");
	spawner::simple_spawn("tunnel_guard", &function_97127072);
}

/*
	Name: function_97127072
	Namespace: apc
	Checksum: 0x8E541A5E
	Offset: 0x8A00
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_97127072()
{
	self endon("death");
	level flag::wait_till("player_in_tunnel");
	if(self.script_noteworthy === "runner_delay")
	{
		wait(1);
		self SetGoal(struct::get("struct_tunnel_safe").origin);
	}
	else if(self.script_noteworthy === "runner")
	{
		wait(RandomFloatRange(0.1, 0.6));
		self SetGoal(struct::get("struct_tunnel_safe").origin);
	}
	self ai::set_ignoreall(1);
	trigger::wait_till("trigger_tunnel_exit");
	self delete();
}

/*
	Name: function_870b1c2
	Namespace: apc
	Checksum: 0x39B27321
	Offset: 0x8B38
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_870b1c2()
{
	level flag::wait_till("player_in_tunnel");
	level thread scene::add_scene_func("p7_fxanim_cp_prologue_vtol_tunnel_rail_bundle", &function_a8eae8ac, "init");
	level thread scene::add_scene_func("p7_fxanim_cp_prologue_vtol_tunnel_rail_bundle", &function_3d3711ec, "done");
	var_2749762c = GetVehicleNode("nd_spawn_tunnel_vtol", "script_noteworthy");
	var_2749762c waittill("trigger");
	level thread scene::init("p7_fxanim_cp_prologue_vtol_tunnel_rail_bundle");
}

/*
	Name: function_a8eae8ac
	Namespace: apc
	Checksum: 0x5FC90731
	Offset: 0x8C20
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_a8eae8ac(a_ents)
{
	level endon("hash_8b1044c1");
	vh_vtol = a_ents["fxanim_vtol_tunnel"];
	vh_vtol endon("death");
	vh_vtol util::magic_bullet_shield();
	wait(1);
	vh_vtol thread function_f5dde0f6();
	vh_vtol thread function_95580b5();
	vh_vtol thread function_a59f4d1f();
	wait(2);
	vh_vtol util::stop_magic_bullet_shield();
	vh_vtol.overrideVehicleDamage = &function_70cc1e9c;
	level thread scene::Play("p7_fxanim_cp_prologue_vtol_tunnel_rail_bundle");
}

/*
	Name: function_95580b5
	Namespace: apc
	Checksum: 0xAAC94022
	Offset: 0x8D28
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_95580b5()
{
	level flag::wait_till("tunnel_vtol_hit");
	self thread FX::Play("gen_explosion", self.origin, self.angles);
	playsoundatposition("wpn_rocket_explode", self.origin);
	Earthquake(0.5, 0.5, level.apc.origin, 400);
	self vehicle::toggle_sounds(0);
	self playsound("evt_apcrail_tunnel_vtol_crash");
	exploder::stop_exploder("fx_exploder_fog_part_01");
	exploder::exploder("fx_exploder_fog_part_02");
	level waittill("hash_e63c708a");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_prologue_rumble_apc_offroad");
	}
	self vehicle::toggle_exhaust_fx(0);
	wait(1);
	self vehicle::lights_off();
}

/*
	Name: function_3d3711ec
	Namespace: apc
	Checksum: 0x8923F235
	Offset: 0x8F10
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_3d3711ec(a_ents)
{
	vh_vtol = a_ents["fxanim_vtol_tunnel"];
	vh_vtol thread FX::Play("gen_explosion", vh_vtol.origin);
	playsoundatposition("wpn_rocket_explode", vh_vtol.origin);
	Earthquake(0.5, 0.5, level.apc.origin, 400);
	exploder::exploder("light_exploder_defend_vtol_crash");
}

/*
	Name: function_a59f4d1f
	Namespace: apc
	Checksum: 0x66F6E0AE
	Offset: 0x8FE8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_a59f4d1f()
{
	self endon("death");
	wait(5);
	self thread FX::Play("gen_explosion", self.origin, self.angles);
	playsoundatposition("wpn_rocket_explode", self.origin);
	wait(2);
	self thread FX::Play("gen_explosion", self.origin, self.angles);
	playsoundatposition("wpn_rocket_explode", self.origin);
	self SetModel("veh_t7_mil_vtol_nrc_no_interior_d");
	wait(3);
	self thread FX::Play("gen_explosion", self.origin, self.angles);
	playsoundatposition("wpn_rocket_explode", self.origin);
}

/*
	Name: tower_collapse
	Namespace: apc
	Checksum: 0x68F99CF4
	Offset: 0x9118
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function tower_collapse()
{
	trigger::wait_till("trigger_tower_rpg");
	level thread function_97ca9c14();
	var_9a278800 = struct::get("tower_top");
	s_base = struct::get("tower_base");
	var_ac05cd45 = struct::get("tower_road");
	s_rpg = struct::get("rpg_checkpoint");
	var_8af78429 = GetWeapon("launcher_standard_magic_bullet");
	e_rpg = MagicBullet(var_8af78429, s_rpg.origin, var_9a278800.origin);
	e_rpg thread function_5a046dfa("fx_exploder_vtol_crash_rail", "top");
	wait(0.5);
	MagicBullet(var_8af78429, s_rpg.origin, var_ac05cd45.origin);
	wait(0.4);
	e_rpg = MagicBullet(var_8af78429, s_rpg.origin, s_base.origin);
	e_rpg thread function_5a046dfa("fx_exploder_rail_tower", "base");
}

/*
	Name: function_97ca9c14
	Namespace: apc
	Checksum: 0x18FCE7B8
	Offset: 0x9310
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_97ca9c14()
{
	s_rpg = struct::get("rpg_checkpoint");
	var_5a40a77b = struct::get("tower_apc");
	var_8af78429 = GetWeapon("launcher_standard");
	v_offset = (0, 0, 0);
	for(i = 0; i < 3; i++)
	{
		MagicBullet(var_8af78429, s_rpg.origin, var_5a40a77b.origin + v_offset);
		v_offset = VectorScale((-1, 0, 0), 80);
		wait(1);
	}
}

/*
	Name: function_5a046dfa
	Namespace: apc
	Checksum: 0xDD174C6A
	Offset: 0x9418
	Size: 0x201
	Parameters: 2
	Flags: None
*/
function function_5a046dfa(str_exploder, str_location)
{
	self util::waittill_any("death", "explode");
	exploder::exploder(str_exploder);
	if(str_location == "top")
	{
		level thread clientfield::set("apc_rail_tower_collapse", 1);
		util::wait_network_frame();
		util::wait_network_frame();
		var_553f6c78 = GetEntArray("guard_tower", "targetname");
		foreach(var_e8399118 in var_553f6c78)
		{
			var_e8399118 Hide();
		}
		level flag::set("obs_collapse");
		wait(4);
		foreach(player in level.activePlayers)
		{
			player PlayRumbleOnEntity("cp_prologue_rumble_pod_land");
		}
	}
}

/*
	Name: function_370bf66
	Namespace: apc
	Checksum: 0x90E97A7C
	Offset: 0x9628
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_370bf66()
{
	trigger::wait_till("trigger_gate_exit");
	exploder::exploder("light_exploder_defend_tower_crash");
	level namespace_2cb3876f::function_b50f5d52();
	spawner::simple_spawn_single("tower_guard", &function_a55e088c);
	level flag::wait_till("obs_collapse");
	exploder::stop_exploder("light_exploder_defend_tower_crash");
}

/*
	Name: function_a55e088c
	Namespace: apc
	Checksum: 0xD3BC09CF
	Offset: 0x96E0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_a55e088c()
{
	self endon("death");
	level flag::wait_till("obs_collapse");
	self StartRagdoll();
	self LaunchRagdoll((-100, 50, 80));
	self kill();
}

/*
	Name: function_70cc1e9c
	Namespace: apc
	Checksum: 0x7E5472A8
	Offset: 0x9768
	Size: 0x1B1
	Parameters: 15
	Flags: None
*/
function function_70cc1e9c(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal)
{
	if(isdefined(self.targetname) && self.targetname == "fxanim_vtol_tunnel")
	{
		level flag::set("tunnel_vtol_hit");
		if(isdefined(eAttacker) && isPlayer(eAttacker) && !isdefined(eAttacker.var_bbbdbd12) && self.var_88c09c1c !== 1)
		{
			eAttacker.var_bbbdbd12 = 1;
			self.var_88c09c1c = 1;
			level thread namespace_61c634f2::function_51213eb7();
		}
		iDamage = 0;
	}
	else if(isdefined(weapon) && isdefined(weapon.name))
	{
		if(weapon.name == "turret_bo3_mil_macv_gunner1" || weapon.name == "turret_bo3_mil_macv_gunner2")
		{
			iDamage = iDamage * 0.1;
		}
	}
	return iDamage;
}

/*
	Name: function_a6ea2383
	Namespace: apc
	Checksum: 0xFC02A940
	Offset: 0x9928
	Size: 0x11B
	Parameters: 8
	Flags: None
*/
function function_a6ea2383(eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime)
{
	if(isdefined(eAttacker) && isPlayer(eAttacker) && self.var_88c09c1c !== 1)
	{
		self.var_88c09c1c = 1;
		level thread namespace_61c634f2::function_51213eb7();
	}
	self SetModel("veh_t7_mil_vtol_nrc_no_interior_d");
	PlayFXOnTag(level._effect["vtol_death_explosion"], self, "tag_origin");
	PlayFXOnTag(level._effect["vtol_death_smoke"], self, "tag_origin");
}

/*
	Name: function_afd7b227
	Namespace: apc
	Checksum: 0x111CC89B
	Offset: 0x9A50
	Size: 0x8B
	Parameters: 8
	Flags: None
*/
function function_afd7b227(eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime)
{
	self.ignoreme = 1;
	if(isdefined(eAttacker) && isPlayer(eAttacker))
	{
		namespace_61c634f2::function_2b1ec44e();
	}
}

/*
	Name: function_4ddf39a4
	Namespace: apc
	Checksum: 0xA5542A67
	Offset: 0x9AE8
	Size: 0x123
	Parameters: 8
	Flags: None
*/
function function_4ddf39a4(eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime)
{
	self function_afd7b227(eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime);
	var_35ab7d45 = AnglesToForward(self.angles) * -1;
	self vehicle::detach_path();
	self LaunchVehicle(VectorScale((0, 0, 1), 180) + var_35ab7d45 * 5, (RandomFloatRange(5, 10), RandomFloatRange(-5, 5), 0), 1, 0, 1);
}

/*
	Name: function_a7743280
	Namespace: apc
	Checksum: 0x28CA6C3E
	Offset: 0x9C18
	Size: 0x1EB
	Parameters: 2
	Flags: None
*/
function function_a7743280(var_521a0327, var_6d6eaca4)
{
	if(isdefined(self.script_float))
	{
		wait(self.script_float);
	}
	e_ai = self spawner::spawn();
	e_ai endon("death");
	e_ai namespace_4dc8633b::function_b6ef2c4e(var_6d6eaca4);
	e_ai.overrideActorDamage = &function_d73ad05a;
	if(!isdefined(self.script_parameters))
	{
		if(!isdefined(level.var_44d40179))
		{
			level.var_44d40179 = 1;
		}
		if(level.var_44d40179 == 0)
		{
			e_ai.ignoreall = 1;
		}
		level.var_44d40179++;
		if(level.var_44d40179 > 1)
		{
			level.var_44d40179 = 0;
		}
	}
	if(isdefined(self.script_noteworthy) && self.script_noteworthy == "sprinter")
	{
		e_ai ai::set_behavior_attribute("sprint", 1);
		break;
	}
	switch(var_521a0327)
	{
		case 0:
		{
			e_ai ai::set_behavior_attribute("move_mode", "marching");
			break;
		}
		case 1:
		{
			break;
		}
		case 2:
		{
			e_ai ai::set_behavior_attribute("sprint", 1);
			break;
		}
	}
	if(isdefined(e_ai.script_string))
	{
		e_ai thread namespace_2cb3876f::function_8abaca05();
	}
	else
	{
		e_ai.goalRadius = 64;
	}
}

/*
	Name: function_d73ad05a
	Namespace: apc
	Checksum: 0x4714776E
	Offset: 0x9E10
	Size: 0x337
	Parameters: 14
	Flags: None
*/
function function_d73ad05a(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, modelIndex, psOffsetTime, bonename, vSurfaceNormal)
{
	if(isdefined(sMeansOfDeath) && sMeansOfDeath == "MOD_CRUSH")
	{
		if(!isdefined(self.alreadyLaunched))
		{
			self.alreadyLaunched = 1;
			self StartRagdoll(1);
			var_a8775778 = RandomFloatRange(-60, 60);
			v_launch = (var_a8775778, 0, RandomFloatRange(40, 140));
			v_launch = v_launch + AnglesToForward(eInflictor.angles) * 250;
			self LaunchRagdoll(v_launch, "J_SpineUpper");
		}
	}
	else if(isdefined(weapon) && isdefined(weapon.name))
	{
		if(!isdefined(self.alreadyLaunched))
		{
			if(weapon.name == "turret_bo3_mil_macv_gunner1" || weapon.name == "turret_bo3_mil_macv_gunner2")
			{
				self.alreadyLaunched = 1;
				self StartRagdoll(1);
				v_launch = VectorScale((0, 0, 1), 50);
				v_launch = v_launch + AnglesToForward(eInflictor.angles) * 120;
				self LaunchRagdoll(v_launch, "J_SpineUpper");
			}
			else if(weapon.name == "turret_bo3_mil_macv_gunner3" || weapon.name == "turret_bo3_mil_macv_gunner4")
			{
				self.alreadyLaunched = 1;
				self StartRagdoll(1);
				v_launch = (0, 0, RandomFloatRange(30, 90));
				v_launch = v_launch + AnglesToForward(eInflictor.angles) * 120;
				self LaunchRagdoll(v_launch, "J_SpineUpper");
			}
		}
	}
	return iDamage;
}

/*
	Name: function_b4145fc1
	Namespace: apc
	Checksum: 0xAECC0254
	Offset: 0xA150
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_b4145fc1()
{
	level endon("hash_2a6578a1");
	level endon("hash_f776796b");
	var_281358e1 = 0;
	wait(RandomFloatRange(4.5, 5.5));
	while(1)
	{
		var_f6c5842 = spawner::simple_spawn_single("robot_crawler");
		if(isalive(var_f6c5842))
		{
			level.apc scene::Play("cin_pro_16_02_apc_vign_stall_attack_left_front", var_f6c5842);
		}
		wait(RandomFloatRange(3, 5));
	}
}

/*
	Name: function_27ee29e6
	Namespace: apc
	Checksum: 0x8AD1A42E
	Offset: 0xA230
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_27ee29e6()
{
	level endon("hash_2a6578a1");
	level endon("hash_baebe028");
	var_281358e1 = 0;
	wait(RandomFloatRange(4, 5.5));
	while(1)
	{
		var_f6c5842 = spawner::simple_spawn_single("robot_crawler");
		if(isalive(var_f6c5842))
		{
			level.apc scene::Play("cin_pro_16_02_apc_vign_stall_attack_left_rear", var_f6c5842);
		}
		wait(RandomFloatRange(3, 5));
	}
}

/*
	Name: function_35eded54
	Namespace: apc
	Checksum: 0x678FF746
	Offset: 0xA310
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_35eded54()
{
	level endon("hash_2a6578a1");
	level endon("hash_916c56a6");
	wait(RandomFloatRange(4.5, 5.5));
	while(1)
	{
		var_f6c5842 = spawner::simple_spawn_single("robot_crawler");
		if(isalive(var_f6c5842))
		{
			level.apc scene::Play("cin_pro_16_02_apc_vign_stall_attack_right_front", var_f6c5842);
		}
		wait(RandomFloatRange(3, 5));
	}
}

/*
	Name: function_4446fa95
	Namespace: apc
	Checksum: 0x5E0CBD47
	Offset: 0xA3E0
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_4446fa95()
{
	level endon("hash_2a6578a1");
	level endon("hash_3437fba3");
	var_281358e1 = 0;
	wait(RandomFloatRange(4, 5.5));
	while(1)
	{
		var_f6c5842 = spawner::simple_spawn_single("robot_crawler");
		if(isalive(var_f6c5842))
		{
			level.apc scene::Play("cin_pro_16_02_apc_vign_stall_attack_right_rear", var_f6c5842);
		}
		wait(RandomFloatRange(3, 5));
	}
}

/*
	Name: function_98b546ae
	Namespace: apc
	Checksum: 0xEF04056E
	Offset: 0xA4C0
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_98b546ae(str_position)
{
	switch(str_position)
	{
		case "left_front":
		{
			str_scene = "cin_pro_16_02_apc_vign_flung_robot_left_front_01";
			break;
		}
		case "left_rear":
		{
			str_scene = "cin_pro_16_02_apc_vign_flung_robot_left_rear_01";
			break;
		}
		case "right_front":
		{
			str_scene = "cin_pro_16_02_apc_vign_flung_robot_right_front_01";
			break;
		}
	}
	var_f6c5842 = spawner::simple_spawn_single("robot_crawler", &function_d6c9484a);
	if(isalive(var_f6c5842))
	{
		level.apc scene::Play(str_scene, var_f6c5842);
	}
}

/*
	Name: function_d6c9484a
	Namespace: apc
	Checksum: 0x4CC20BC5
	Offset: 0xA5A0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d6c9484a()
{
	self endon("death");
	level waittill("flung");
	self kill();
}

/*
	Name: function_9d87900e
	Namespace: apc
	Checksum: 0xC1EF8FEA
	Offset: 0xA5E0
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_9d87900e()
{
	level endon("hash_5d671c7b");
	while(1)
	{
		level waittill("hash_4f0dddd");
		foreach(player in level.activePlayers)
		{
			player PlayRumbleOnEntity("cp_prologue_rumble_apc_robot_land");
		}
	}
}

/*
	Name: function_b328d415
	Namespace: apc
	Checksum: 0xB7BC1A4E
	Offset: 0xA6A0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_b328d415()
{
	while(!level flag::get("apc_crash"))
	{
		self waittill("hash_760fecd0");
		var_f6c5842 = spawner::simple_spawn_single("robot_crawler");
		var_f6c5842 thread function_61f0ff7a("left");
	}
}

/*
	Name: function_4d508278
	Namespace: apc
	Checksum: 0xD545BCDD
	Offset: 0xA720
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_4d508278()
{
	while(!level flag::get("apc_crash"))
	{
		self waittill("hash_2f6ab0ff");
		var_f6c5842 = spawner::simple_spawn_single("robot_crawler");
		var_f6c5842 thread function_61f0ff7a("right");
	}
}

/*
	Name: function_61f0ff7a
	Namespace: apc
	Checksum: 0xF9AF8187
	Offset: 0xA7A0
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_61f0ff7a(str_dir)
{
	self endon("death");
	if(str_dir == "left")
	{
		level.apc scene::Play("cin_pro_16_02_apc_vign_truck_jump", self);
		level.apc scene::Play("cin_pro_16_02_apc_vign_flung_robot_left_front_01", self);
	}
	else
	{
		level.apc scene::Play("cin_pro_16_02_apc_vign_truck_jump2", self);
		level.apc scene::Play("cin_pro_16_02_apc_vign_flung_robot_right_front_01", self);
	}
}

/*
	Name: function_7d33cac1
	Namespace: apc
	Checksum: 0x2412287D
	Offset: 0xA860
	Size: 0x3DB
	Parameters: 0
	Flags: None
*/
function function_7d33cac1()
{
	self endon("death");
	trigger::wait_till("ambush_vtol_takeoff");
	level.apc notify("hash_96522489");
	nd_start_node = GetVehicleNode("nd_tunnel_vtol_ambush_start", "targetname");
	self thread vehicle::get_on_and_go_path(nd_start_node);
	var_d47f85df = GetVehicleNode("nd_vtol_ambush_fire", "script_noteworthy");
	var_d47f85df waittill("trigger");
	for(i = 0; i < 3; i++)
	{
		self turret::enable(i, 0);
	}
	wait(3.75);
	level thread function_f907ad59();
	a_structs = struct::get_array("tunnel_vtol_target", "targetname");
	a_structs = ArraySortClosest(a_structs, level.apc.origin);
	for(i = 0; i < a_structs.size; i++)
	{
		v_target_pos = a_structs[i].origin;
		self thread function_dd092bdf(v_target_pos, "launcher_standard_dud", i > 3);
		wait(0.25);
		if(i == 3)
		{
			self util::stop_magic_bullet_shield();
		}
	}
	self util::stop_magic_bullet_shield();
	for(i = 0; i < 3; i++)
	{
		self turret::disable(i);
	}
	var_6abcce89 = GetVehicleNode("nd_vtol_fire_at_tunnel", "script_noteworthy");
	var_6abcce89 waittill("trigger");
	a_structs = struct::get_array("tunnel_vtol_target_2", "targetname");
	for(i = 0; i < 5; i++)
	{
		v_dir = AnglesToForward(self.angles);
		v_start_pos = self.origin + v_dir * 20;
		v_target_pos = a_structs[i].origin;
		self thread function_dd092bdf(v_target_pos, "launcher_standard_dud");
		wait(0.2);
	}
	level flag::wait_till("player_in_tunnel");
	self util::stop_magic_bullet_shield();
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
}

/*
	Name: function_dd092bdf
	Namespace: apc
	Checksum: 0x37BA8C01
	Offset: 0xAC48
	Size: 0x163
	Parameters: 3
	Flags: None
*/
function function_dd092bdf(v_target_pos, str_weapon, var_e18bd372)
{
	if(!isdefined(str_weapon))
	{
		str_weapon = "launcher_standard";
	}
	if(!isdefined(var_e18bd372))
	{
		var_e18bd372 = 1;
	}
	var_8af78429 = GetWeapon(str_weapon);
	v_left = self GetTagOrigin("tag_rocket_left");
	v_right = self GetTagOrigin("tag_rocket_right");
	var_b40fa37e = MagicBullet(var_8af78429, v_left, v_target_pos, self);
	if(var_e18bd372)
	{
		var_b40fa37e thread function_322383f6(v_target_pos);
	}
	wait(0.1);
	var_6e0d4ab5 = MagicBullet(var_8af78429, v_right, v_target_pos, self);
	if(var_e18bd372)
	{
		var_6e0d4ab5 thread function_322383f6(v_target_pos);
	}
}

/*
	Name: function_f907ad59
	Namespace: apc
	Checksum: 0xA06BB6E5
	Offset: 0xADB8
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_f907ad59()
{
	level waittill("hash_250db3b8");
	for(i = 0; i < 4; i++)
	{
		Earthquake(0.65, 0.65, level.apc.origin, 400);
		wait(0.25);
	}
}

/*
	Name: function_6034914b
	Namespace: apc
	Checksum: 0x77DFF30
	Offset: 0xAE38
	Size: 0xBF
	Parameters: 14
	Flags: None
*/
function function_6034914b(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, modelIndex, psOffsetTime, bonename, vSurfaceNormal)
{
	if(!isdefined(self.alreadyLaunched))
	{
		self.alreadyLaunched = 1;
		self thread function_6a19cf15(AnglesToForward(eInflictor.angles));
	}
	return iDamage;
}

/*
	Name: function_6a19cf15
	Namespace: apc
	Checksum: 0x12AF0B96
	Offset: 0xAF00
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_6a19cf15(v_forward)
{
	self endon("death");
	wait(0.1);
	if(scene::is_active(self.var_904f3930))
	{
		scene::stop(self.var_904f3930);
	}
	wait(0.1);
	self StartRagdoll(1);
	var_a8775778 = RandomFloatRange(-50, 50);
	v_launch = (var_a8775778, 0, RandomFloatRange(40, 140));
	v_launch = v_launch + v_forward * 600;
	self LaunchRagdoll(v_launch, "J_SpineUpper");
}

/*
	Name: function_b64436c8
	Namespace: apc
	Checksum: 0x52056555
	Offset: 0xB008
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_b64436c8()
{
	self.overrideVehicleDamage = &function_2923c71;
	self.var_a5f37229 = [];
	self.var_a5f37229[self.var_a5f37229.size] = 0;
	self.var_a5f37229[self.var_a5f37229.size] = 0;
	self.var_a5f37229[self.var_a5f37229.size] = 0;
	self.var_a5f37229[self.var_a5f37229.size] = 0;
	self.var_a5f37229[self.var_a5f37229.size] = 0;
	self.var_7b32e45e = [];
	self.var_7b32e45e[self.var_7b32e45e.size] = 0;
	self.var_7b32e45e[self.var_7b32e45e.size] = 0;
	self.var_7b32e45e[self.var_7b32e45e.size] = 0;
	self.var_7b32e45e[self.var_7b32e45e.size] = 0;
	self.var_7b32e45e[self.var_7b32e45e.size] = 0;
}

/*
	Name: function_2309bb98
	Namespace: apc
	Checksum: 0xF73C23F
	Offset: 0xB110
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_2309bb98(str_node_start, var_2843fc54)
{
	level.apc function_b64436c8();
	if(var_2843fc54)
	{
		nd_start = GetVehicleNode(str_node_start, "targetname");
		level.apc thread vehicle::get_on_path(nd_start);
	}
	level flag::wait_till("players_are_in_apc");
}

/*
	Name: function_29c3397f
	Namespace: apc
	Checksum: 0x90CAC5B9
	Offset: 0xB1B8
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_29c3397f()
{
	while(1)
	{
		var_9e5ad24f = 1;
		foreach(player in level.activePlayers)
		{
			if(var_9e5ad24f)
			{
				var_9e5ad24f = player.usingvehicle;
			}
		}
		if(var_9e5ad24f)
		{
			break;
		}
		wait(0.05);
	}
	level flag::wait_till_clear("failed_apc_boarding");
	level flag::set("players_are_in_apc");
}

/*
	Name: function_7713da2c
	Namespace: apc
	Checksum: 0xDED22D6
	Offset: 0xB2C8
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_7713da2c(turret_index)
{
	self endon("death");
	var_4a84d252 = 0;
	var_637fcbf0 = 0;
	while(isdefined(self))
	{
		if(isdefined(self.viewlockedentity))
		{
			var_1d8d45a5 = var_4a84d252;
			var_4a84d252 = self.viewlockedentity GetTurretHeatValue(turret_index);
			var_f0d797d6 = var_637fcbf0;
			var_637fcbf0 = self.viewlockedentity IsVehicleTurretOverheating(turret_index);
			if(var_1d8d45a5 != var_4a84d252 || var_f0d797d6 != var_637fcbf0)
			{
				if(isdefined(self.var_ccf0d8ef))
				{
					self SetLUIMenuData(self.var_ccf0d8ef, "frac", var_4a84d252 / 100);
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_a3024193
	Namespace: apc
	Checksum: 0x284566F9
	Offset: 0xB3E0
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_a3024193(var_cf0e873a)
{
	self endon("death");
	switch(var_cf0e873a)
	{
		case "trig_apc_gunner4":
		{
			turret_index = 4;
			function_beac5c93(turret_index);
			level.apc scene::Play("cin_pro_15_01_opendoor_1st_mount_player04", self);
			break;
		}
		case "trig_apc_gunner1":
		{
			turret_index = 1;
			function_beac5c93(turret_index);
			level.apc scene::Play("cin_pro_15_01_opendoor_1st_mount_player02", self);
			break;
		}
		case "trig_apc_gunner3":
		{
			turret_index = 3;
			function_beac5c93(turret_index);
			level.apc scene::Play("cin_pro_15_01_opendoor_1st_mount_player03", self);
			break;
		}
		case "trig_apc_gunner2":
		{
			turret_index = 2;
			function_beac5c93(turret_index);
			level.apc scene::Play("cin_pro_15_01_opendoor_1st_mount_player01", self);
			break;
		}
	}
	if(!level flag::get("failed_apc_boarding"))
	{
		self thread function_59329589(turret_index);
	}
}

/*
	Name: function_beac5c93
	Namespace: apc
	Checksum: 0x41EEDE0D
	Offset: 0xB590
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_beac5c93(n_index)
{
	foreach(ai_ally in level.var_681ad194)
	{
		if(ai_ally.n_turret_index === n_index)
		{
			ai_ally delete();
		}
	}
}

/*
	Name: function_59329589
	Namespace: apc
	Checksum: 0x78BB5A87
	Offset: 0xB648
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_59329589(turret_index)
{
	level.apc.var_a5f37229[turret_index] = 1;
	self.turret_index = turret_index;
	self.overridePlayerDamage = &function_b0d8e1ce;
	level.apc SetSeatOccupied(turret_index, 0);
	level.apc usevehicle(self, turret_index);
	if(turret_index <= 2)
	{
		self.var_ccf0d8ef = self OpenLUIMenu("APCTurretHUD");
		self SetLUIMenuData(self.var_ccf0d8ef, "frac", 0);
		self thread function_7713da2c(turret_index);
	}
	level.var_586b4bd0++;
	self.allowdeath = 0;
	self thread namespace_2cb3876f::function_4e9a52a6();
}

/*
	Name: function_fc1b1b72
	Namespace: apc
	Checksum: 0x7EB1AD61
	Offset: 0xB778
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_fc1b1b72()
{
	n_turret_index = 0;
	for(i = 1; i < 5; i++)
	{
		var_cf0db380 = level.apc GetSeatOccupant(i);
		if(!isdefined(var_cf0db380))
		{
			n_turret_index = i;
		}
	}
	self function_59329589(n_turret_index);
}

/*
	Name: function_1aa160fc
	Namespace: apc
	Checksum: 0x5DB40717
	Offset: 0xB818
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_1aa160fc()
{
	level flag::clear("players_are_in_apc");
	foreach(player in level.activePlayers)
	{
		player thread function_dcb847ab();
	}
	level.var_586b4bd0 = 0;
	level.var_7f13e303 = undefined;
	level notify("hash_7acfacb8");
}

/*
	Name: function_dcb847ab
	Namespace: apc
	Checksum: 0xB100287
	Offset: 0xB8F0
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_dcb847ab()
{
	level.apc UseBy(self);
	self.allowdeath = 1;
	self.overridePlayerDamage = undefined;
	self.player_using_turret = undefined;
	if(isdefined(self.var_ccf0d8ef))
	{
		self CloseLUIMenu(self.var_ccf0d8ef);
	}
	if(isdefined(self.turret_index))
	{
		level.apc.var_a5f37229[self.turret_index] = 0;
	}
}

/*
	Name: function_2923c71
	Namespace: apc
	Checksum: 0x320F7842
	Offset: 0xB988
	Size: 0x1DB
	Parameters: 15
	Flags: None
*/
function function_2923c71(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal)
{
	if(self.team == "allies")
	{
		iDamage = 0;
	}
	else if(isdefined(eAttacker) && IsActor(eAttacker))
	{
		iDamage = iDamage * 0.1;
	}
	else if(isdefined(weapon) && isdefined(weapon.name))
	{
		if(weapon.name == "turret_bo3_mil_macv_gunner1" || weapon.name == "turret_bo3_mil_macv_gunner2")
		{
			if(self.vehicleType == "veh_bo3_mil_macv_prologue_enemy")
			{
				iDamage = iDamage * 20;
			}
			else
			{
				iDamage = iDamage * 0.3;
			}
		}
		else if(weapon.name == "turret_bo3_mil_macv_gunner3" || weapon.name == "turret_bo3_mil_macv_gunner4")
		{
			if(self.vehicleType == "veh_bo3_mil_macv_prologue_enemy")
			{
				iDamage = iDamage * 8;
			}
			else
			{
				iDamage = iDamage * 1;
			}
		}
	}
	return iDamage;
}

/*
	Name: function_b0d8e1ce
	Namespace: apc
	Checksum: 0x440A19BA
	Offset: 0xBB70
	Size: 0x147
	Parameters: 13
	Flags: None
*/
function function_b0d8e1ce(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, modelIndex, psOffsetTime, vSurfaceNormal)
{
	self endon("hash_ee92aeb6");
	if(iDamage >= self.health)
	{
		iDamage = self.health - 10;
		if(iDamage <= 0)
		{
			iDamage = 0;
		}
	}
	if(isdefined(weapon) && isdefined(weapon.name))
	{
		if(weapon.name == "turret_bo3_mil_macv_gunner1" || weapon.name == "turret_bo3_mil_macv_gunner2" || weapon.name == "turret_bo3_mil_macv_gunner3" || weapon.name == "turret_bo3_mil_macv_gunner4")
		{
			iDamage = 0;
		}
	}
	return iDamage;
}

/*
	Name: function_ade89a8a
	Namespace: apc
	Checksum: 0x2CCDC0DC
	Offset: 0xBCC0
	Size: 0x231
	Parameters: 0
	Flags: None
*/
function function_ade89a8a()
{
	level flag::wait_till("apc_unlocked");
	level.var_6ca49220 = [];
	level.var_6ca49220[0] = GetEnt("trig_apc_gunner1", "script_noteworthy");
	level.var_6ca49220[1] = GetEnt("trig_apc_gunner2", "script_noteworthy");
	level.var_6ca49220[2] = GetEnt("trig_apc_gunner3", "script_noteworthy");
	level.var_6ca49220[3] = GetEnt("trig_apc_gunner4", "script_noteworthy");
	for(i = 0; i < level.activePlayers.size; i++)
	{
		level thread function_ae49644a(level.var_6ca49220[i]);
	}
	callback::on_spawned(&function_29852c1d);
	level flag::wait_till("players_are_in_apc");
	callback::remove_on_spawned(&function_29852c1d);
	foreach(var_b957e40 in level.var_6ca49220)
	{
		if(isdefined(var_b957e40.var_5356d2cc))
		{
			var_b957e40.var_5356d2cc gameobjects::disable_object();
		}
	}
}

/*
	Name: function_29852c1d
	Namespace: apc
	Checksum: 0xF27E4A9D
	Offset: 0xBF00
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_29852c1d()
{
	n_player = self GetEntityNumber();
	if(!level.var_6ca49220[n_player] IsTriggerEnabled())
	{
		level thread function_ae49644a(level.var_6ca49220[n_player]);
	}
}

/*
	Name: function_ae49644a
	Namespace: apc
	Checksum: 0x9C16066B
	Offset: 0xBF78
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_ae49644a(t_trigger)
{
	if(t_trigger.script_noteworthy == "trig_apc_gunner3" || t_trigger.script_noteworthy == "trig_apc_gunner4")
	{
		var_41d5b347 = &"CP_MI_ETH_PROLOGUE_MOUNT_APC_GR";
	}
	else
	{
		var_41d5b347 = &"CP_MI_ETH_PROLOGUE_MOUNT_APC_MG";
	}
	t_trigger TriggerEnable(1);
	t_trigger.var_5356d2cc = util::function_14518e76(t_trigger, &"cp_prompt_entervehicle_prologue_apc", var_41d5b347, &function_c8b0c865);
}

/*
	Name: function_c8b0c865
	Namespace: apc
	Checksum: 0x2A267F5C
	Offset: 0xC040
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_c8b0c865(e_player)
{
	e_player thread function_a3024193(self.trigger.script_noteworthy);
	self gameobjects::disable_object();
	level.var_1a71fabf++;
}

/*
	Name: function_38362d1e
	Namespace: apc
	Checksum: 0xC57582ED
	Offset: 0xC0A0
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_38362d1e()
{
	var_88aa978 = 1;
	if(level.skipto_point == "skipto_robot_horde")
	{
		level flag::wait_till("garage_open");
		var_88aa978 = 0;
	}
	if(isdefined(level.var_4480630f))
	{
		level.apc.ignore_seat_check = 1;
		for(i = level.players.size; i <= level.var_4480630f.size; i++)
		{
			if(isdefined(level.a_ai_allies[0]))
			{
				var_914cef26 = level.var_4480630f[i];
				level.a_ai_allies[0] thread vehicle::get_in(level.apc, var_914cef26, var_88aa978);
				level.a_ai_allies[0].n_turret_index = i + 1;
				level.apc thread turret::disable_ai_getoff(i, 1);
				if(level.skipto_point == "skipto_robot_horde")
				{
					level.a_ai_allies[0] ai::set_ignoreall(1);
					level.a_ai_allies[0] ai::set_behavior_attribute("vignette_mode", "fast");
					level.a_ai_allies[0] thread function_2839eeb9();
				}
				ArrayRemoveValue(level.a_ai_allies, level.a_ai_allies[0]);
			}
		}
	}
	level.var_4480630f = [];
	level.a_ai_allies = [];
	wait(5);
	level flag::set("ai_in_apc");
}

/*
	Name: function_2839eeb9
	Namespace: apc
	Checksum: 0x7154AE2A
	Offset: 0xC2C8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_2839eeb9()
{
	self endon("death");
	self flagsys::wait_till("in_vehicle");
	self ai::set_ignoreall(0);
	self ai::set_behavior_attribute("vignette_mode", "off");
}

/*
	Name: function_ba89f624
	Namespace: apc
	Checksum: 0x76ACE325
	Offset: 0xC340
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_ba89f624(v_start_pos, v_target_pos)
{
	var_8af78429 = GetWeapon("launcher_standard");
	var_19b02fe9 = MagicBullet(var_8af78429, v_start_pos, v_target_pos, self);
	var_19b02fe9 thread function_322383f6(v_target_pos);
}

/*
	Name: function_322383f6
	Namespace: apc
	Checksum: 0xD035A13A
	Offset: 0xC3D0
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_322383f6(v_target_pos)
{
	self endon("death");
	while(1)
	{
		dist = Distance(self.origin, v_target_pos);
		if(dist < 100)
		{
			break;
		}
		wait(0.05);
	}
	playFX("explosions/fx_exp_generic_lg", v_target_pos);
	playsoundatposition("wpn_rocket_explode", self.origin);
	level notify("hash_250db3b8");
}

/*
	Name: function_f5dde0f6
	Namespace: apc
	Checksum: 0xB736A465
	Offset: 0xC490
	Size: 0x14D
	Parameters: 0
	Flags: None
*/
function function_f5dde0f6()
{
	self endon("death");
	level endon("hash_5d671c7b");
	level endon("hash_8b1044c1");
	var_85dc60d5 = Array("vtol_tunnel_target_left_2", "vtol_tunnel_target_left_3");
	var_a65a9e36 = Array("vtol_tunnel_target_right_2", "vtol_tunnel_target_right_3");
	self thread function_9cf9688c();
	wait(0.3);
	for(i = 0; i < var_85dc60d5.size; i++)
	{
		v_left_target = struct::get(var_85dc60d5[i]).origin;
		v_right_target = struct::get(var_a65a9e36[i]).origin;
		self function_a942e878(v_left_target, v_right_target);
		wait(0.3);
	}
}

/*
	Name: function_9cf9688c
	Namespace: apc
	Checksum: 0x477C8FCB
	Offset: 0xC5E8
	Size: 0x157
	Parameters: 0
	Flags: None
*/
function function_9cf9688c()
{
	v_left_target = struct::get("vtol_tunnel_target_left_1").origin;
	v_right_target = struct::get("vtol_tunnel_target_right_1").origin;
	v_left = self GetTagOrigin("tag_rocket_left");
	v_right = self GetTagOrigin("tag_rocket_right");
	var_8af78429 = GetWeapon("hunter_rocket_turret");
	var_8c1f89f1 = MagicBullet(var_8af78429, v_left, v_left_target, self);
	var_8c1f89f1 thread function_b0cea2cc(v_left_target);
	wait(0.2);
	var_cb1d049c = MagicBullet(var_8af78429, v_right, v_right_target, self);
}

/*
	Name: function_b0cea2cc
	Namespace: apc
	Checksum: 0x834F48D3
	Offset: 0xC748
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_b0cea2cc(v_pos)
{
	self waittill("death");
	level clientfield::set("tunnel_wall_explode", 1);
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_prologue_rumble_apc_offroad");
	}
	RadiusDamage(v_pos, 200, 1000, 800, undefined, "MOD_EXPLOSIVE");
}

/*
	Name: function_219a1e60
	Namespace: apc
	Checksum: 0xC319951B
	Offset: 0xC848
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_219a1e60()
{
	for(i = 1; i < 5; i++)
	{
		if(self.var_a5f37229[i] == 0)
		{
			turret_index = i;
			self.var_7b32e45e[turret_index] = 1;
			self turret::enable(turret_index, 0);
		}
	}
}

/*
	Name: function_6ac512e
	Namespace: apc
	Checksum: 0x9740278F
	Offset: 0xC8D8
	Size: 0x21D
	Parameters: 0
	Flags: None
*/
function function_6ac512e()
{
	for(turret_index = 1; turret_index <= 4; turret_index++)
	{
		if(turret_index == 1 || turret_index == 2)
		{
			var_41d1cac6 = RandomFloatRange(0.9, 1.2);
			var_26dc9f18 = RandomFloatRange(1.6, 2.4);
			var_130ee436 = RandomFloatRange(1.6, 1.9);
			var_b86905a8 = RandomFloatRange(2.4, 2.9);
			level.apc turret::set_burst_parameters(var_41d1cac6, var_26dc9f18, var_130ee436, var_b86905a8, turret_index);
		}
		if(turret_index == 3 || turret_index == 4)
		{
			var_41d1cac6 = RandomFloatRange(0.9, 1.2);
			var_26dc9f18 = RandomFloatRange(1.6, 2.4);
			var_130ee436 = RandomFloatRange(5, 6);
			var_b86905a8 = RandomFloatRange(6.5, 7.5);
			level.apc turret::set_burst_parameters(var_41d1cac6, var_26dc9f18, var_130ee436, var_b86905a8, turret_index);
		}
	}
}

/*
	Name: function_745449bd
	Namespace: apc
	Checksum: 0x25D1E1E7
	Offset: 0xCB00
	Size: 0x21D
	Parameters: 0
	Flags: None
*/
function function_745449bd()
{
	for(turret_index = 1; turret_index < 5; turret_index++)
	{
		if(turret_index == 1 || turret_index == 2)
		{
			var_41d1cac6 = RandomFloatRange(0.9, 1.2);
			var_26dc9f18 = RandomFloatRange(1.3, 1.8);
			var_130ee436 = RandomFloatRange(3.5, 3.8);
			var_b86905a8 = RandomFloatRange(4.5, 4.9);
			level.apc turret::set_burst_parameters(var_41d1cac6, var_26dc9f18, var_130ee436, var_b86905a8, turret_index);
		}
		if(turret_index == 3 || turret_index == 4)
		{
			var_41d1cac6 = RandomFloatRange(0.9, 1.2);
			var_26dc9f18 = RandomFloatRange(1.3, 1.8);
			var_130ee436 = RandomFloatRange(3.5, 3.8);
			var_b86905a8 = RandomFloatRange(4.5, 4.9);
			level.apc turret::set_burst_parameters(var_41d1cac6, var_26dc9f18, var_130ee436, var_b86905a8, turret_index);
		}
	}
}

/*
	Name: function_52284865
	Namespace: apc
	Checksum: 0x592734F
	Offset: 0xCD28
	Size: 0x251
	Parameters: 6
	Flags: None
*/
function function_52284865(a_blockers, velocity, var_961f6182, var_fe65d31b, side_max, side_min)
{
	for(i = 0; i < a_blockers.size; i++)
	{
		e_ent = a_blockers[i];
		if(!isdefined(e_ent.var_b01758c4))
		{
			v_dir = VectorNormalize(e_ent.origin - level.apc.origin);
			v_velocity = v_dir * velocity;
			if(isdefined(side_min) && isdefined(side_max))
			{
				v_up = (0, 0, 1);
				v_side = VectorCross(v_dir, v_up);
				rval = RandomFloatRange(side_max, side_min);
				v_velocity = v_velocity + v_side * rval;
			}
			e_ent thread function_12bef3f6(v_velocity);
		}
	}
	for(i = 0; i < var_fe65d31b; i++)
	{
		Earthquake(var_961f6182, var_961f6182, level.apc.origin, 400);
		a_players = GetPlayers();
		for(j = 0; j < a_players.size; j++)
		{
			a_players[j] PlayRumbleOnEntity("damage_heavy");
		}
		wait(0.1);
	}
}

/*
	Name: function_12bef3f6
	Namespace: apc
	Checksum: 0x9D2710E2
	Offset: 0xCF88
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_12bef3f6(v_velocity)
{
	self endon("death");
	self PhysicsLaunch(self.origin, v_velocity);
	wait(0.1);
	self notsolid();
}

/*
	Name: function_f6778ee2
	Namespace: apc
	Checksum: 0xDE43F75C
	Offset: 0xCFE8
	Size: 0x8D
	Parameters: 1
	Flags: None
*/
function function_f6778ee2(a_triggers)
{
	for(i = 0; i < a_triggers.size; i++)
	{
		e_trigger = GetEnt(a_triggers[i], "targetname");
		level thread function_ae670a39("cleanup_apc", a_triggers[i]);
	}
}

/*
	Name: function_ae670a39
	Namespace: apc
	Checksum: 0x875CEA8F
	Offset: 0xD080
	Size: 0x167
	Parameters: 2
	Flags: None
*/
function function_ae670a39(str_level_endon, str_trigger_targetname)
{
	level endon(str_level_endon);
	e_trigger = GetEnt(str_trigger_targetname, "targetname");
	e_trigger waittill("trigger");
	level notify("hash_6e31b2e3");
	e_ent = GetEnt(str_trigger_targetname, "target");
	if(isdefined(e_ent) && (!isdefined(e_ent.var_b01758c4) && e_ent.var_b01758c4))
	{
		v_dir = VectorNormalize(e_ent.origin - level.apc.origin);
		v_velocity = v_dir * 250;
		e_ent notsolid();
		e_ent PhysicsLaunch(e_ent.origin, v_velocity);
		e_ent.var_b01758c4 = 1;
	}
}

/*
	Name: function_3bf8c3f4
	Namespace: apc
	Checksum: 0xD44674AA
	Offset: 0xD1F0
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_3bf8c3f4(var_5c70e0a7)
{
	var_2a04238a = namespace_2cb3876f::function_125042c0();
	Array::add(var_2a04238a, level.var_2fd26037);
	Array::run_all(var_2a04238a, &ai::set_ignoreall, var_5c70e0a7);
	Array::run_all(var_2a04238a, &ai::set_ignoreme, var_5c70e0a7);
	if(var_5c70e0a7)
	{
		level.apc turret::disable(1);
		level.apc turret::disable(2);
		level.apc turret::disable(3);
		level.apc turret::disable(4);
	}
	else
	{
		level.apc turret::disable(1);
		level.apc turret::disable(2);
		level.apc turret::disable(3);
		level.apc turret::disable(4);
	}
}

/*
	Name: function_faafa578
	Namespace: apc
	Checksum: 0x29AF5737
	Offset: 0xD398
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_faafa578()
{
	level.a_ai_allies = [];
	if(isdefined(level.var_681ad194[1]))
	{
		ArrayInsert(level.a_ai_allies, level.var_681ad194[1], 0);
	}
	if(isdefined(level.var_681ad194[2]))
	{
		ArrayInsert(level.a_ai_allies, level.var_681ad194[2], 0);
	}
	if(isdefined(level.var_681ad194[3]))
	{
		ArrayInsert(level.a_ai_allies, level.var_681ad194[3], 0);
	}
}

/*
	Name: function_4eae0e09
	Namespace: apc
	Checksum: 0x46CF87DB
	Offset: 0xD460
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_4eae0e09()
{
	var_4072b6ba = GetEnt("trigger_parkinglot_light", "targetname");
	var_4072b6ba waittill("trigger");
	s_pos = struct::get(var_4072b6ba.target);
	PhysicsExplosionCylinder(s_pos.origin, 60, 60, 0.5);
}

/*
	Name: function_80e4d901
	Namespace: apc
	Checksum: 0x8C433B5E
	Offset: 0xD500
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_80e4d901()
{
	var_4072b6ba = GetEnt("trigger_light_post", "targetname");
	var_4072b6ba waittill("trigger");
	var_4072b6ba playsound("evt_apc_impact_pole");
	s_pos = struct::get(var_4072b6ba.target);
	PhysicsExplosionCylinder(s_pos.origin, 60, 60, 0.5);
	var_ede59fe8 = GetEnt("trigger_entrance_gate", "targetname");
	var_ede59fe8 waittill("trigger");
	var_ede59fe8 playsound("evt_apc_impact_entrance");
	level thread function_98b546ae("right_front");
	s_pos = struct::get(var_ede59fe8.target);
	PhysicsExplosionCylinder(s_pos.origin, 300, 300, 25);
	var_fbe4f40c = GetEnt("trigger_scaffold", "targetname");
	var_fbe4f40c waittill("trigger");
	var_fbe4f40c playsound("evt_apc_impact_scaffolding");
	PhysicsExplosionCylinder(var_fbe4f40c.origin, 300, 300, 25);
	t_exit = GetEnt("trigger_gate_exit", "targetname");
	t_exit waittill("trigger");
	t_exit playsound("evt_apc_impact_entrance");
	s_pos = struct::get(t_exit.target);
	PhysicsExplosionCylinder(s_pos.origin, 300, 300, 25);
	var_48cab5aa = GetEnt("trigger_cones", "targetname");
	var_48cab5aa waittill("trigger");
	PhysicsExplosionCylinder(var_48cab5aa.origin, 300, 300, 25);
}

/*
	Name: function_26fb0662
	Namespace: apc
	Checksum: 0x5BB6BFFB
	Offset: 0xD818
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_26fb0662()
{
	var_751ebe80 = Array(1, 2, 3, 4);
	for(i = 0; i < level.players.size; i++)
	{
		level.players[i] thread function_59329589(var_751ebe80[i]);
	}
}

/*
	Name: function_5c1321b9
	Namespace: apc
	Checksum: 0x78CCA68A
	Offset: 0xD8A8
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_5c1321b9()
{
	var_1d80939f = GetEntArray("trigger_apc_bump", "targetname");
	foreach(var_4e0a32bf in var_1d80939f)
	{
		var_4e0a32bf thread function_efa6317e();
	}
}

/*
	Name: function_efa6317e
	Namespace: apc
	Checksum: 0xA8026054
	Offset: 0xD968
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_efa6317e()
{
	self waittill("trigger");
	n_time = 0;
	if(isdefined(self.script_int))
	{
		n_time = self.script_int;
	}
	do
	{
		foreach(player in level.activePlayers)
		{
			player PlayRumbleOnEntity("cp_prologue_rumble_apc_offroad");
		}
		n_random_wait = RandomFloatRange(0.25, 0.5);
		wait(n_random_wait);
		n_time = n_time - n_random_wait;
	}
	while(!n_time > 0);
}

/*
	Name: function_8d1d7010
	Namespace: apc
	Checksum: 0x605526A0
	Offset: 0xDA88
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_8d1d7010()
{
	a_barrels = GetEntArray("rail_barrel_1", "script_noteworthy");
	foreach(ent in a_barrels)
	{
		if(ent.classname == "script_model")
		{
			var_8a4f1b19 = ent;
			break;
		}
	}
	var_8a4f1b19 waittill("broken");
	level scene::Play("p7_fxanim_cp_prologue_apc_rail_building_explode01_bundle");
}

/*
	Name: function_67348f4b
	Namespace: apc
	Checksum: 0x1CF2C93A
	Offset: 0xDB90
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_67348f4b()
{
	self waittill("death");
	level scene::Play("p7_fxanim_cp_prologue_apc_rail_building_explode02_bundle");
}

/*
	Name: function_809f2e11
	Namespace: apc
	Checksum: 0xE4FBDD9
	Offset: 0xDBC8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_809f2e11()
{
	level thread function_7ed5512("trig_first_crawler", "evt_apc_first_turn");
	level thread function_7ed5512("trigger_reached_roadblock", "evt_apc_roadblock_oneshot", 0.25);
	level thread function_7ed5512("trig_cleanup_offroad", "evt_apc_vtol_crash", 0.15, 1);
	level thread function_7ed5512("apc_hits_truck_in_tunnel", "evt_apc_tunnel_turn", 0, 1);
	level thread function_7ed5512("trigger_last_roadblock", "evt_apc_final_skid", 3.5);
	level thread function_d77cc705();
}

/*
	Name: function_7ed5512
	Namespace: apc
	Checksum: 0x55BBBC15
	Offset: 0xDCD0
	Size: 0x10B
	Parameters: 4
	Flags: None
*/
function function_7ed5512(trigname, alias, delay, var_b131fff1)
{
	if(!isdefined(delay))
	{
		delay = 0;
	}
	if(!isdefined(var_b131fff1))
	{
		var_b131fff1 = 0;
	}
	if(isdefined(var_b131fff1) && var_b131fff1)
	{
		while(1)
		{
			trig = trigger::wait_till(trigname);
			if(isdefined(level.apc) && trig.who == level.apc)
			{
				break;
			}
		}
	}
	else
	{
		trig = trigger::wait_till(trigname);
	}
	wait(delay);
	if(isdefined(level.apc))
	{
		level.apc playsound(alias);
	}
}

/*
	Name: function_d77cc705
	Namespace: apc
	Checksum: 0x5894C5A2
	Offset: 0xDDE8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_d77cc705()
{
	trigger::wait_till("trigger_roadblock_bypass");
	if(isdefined(level.apc))
	{
		level.apc PlayLoopSound("veh_railapc_dirt_lp", 1.5);
	}
	trigger::wait_till("ambush_vtol_takeoff");
	wait(1.5);
	if(isdefined(level.apc))
	{
		level.apc PlayLoopSound("veh_railapc_move_lp", 1.5);
	}
}

/*
	Name: function_d20ef450
	Namespace: apc
	Checksum: 0x4150B2AF
	Offset: 0xDEA0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d20ef450()
{
	self waittill("death");
	self stopSound("evt_apcrail_vtol1_takeoff");
	self playsound("evt_apcrail_vtol1_crash");
}

/*
	Name: function_5e86daf4
	Namespace: apc
	Checksum: 0xF53D0748
	Offset: 0xDEF8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5e86daf4()
{
	wait(2);
	level.apc PlayLoopSound("veh_railapc_move_lp", 2);
}


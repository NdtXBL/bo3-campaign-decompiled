#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_laststand;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_squad_control;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_fighttothedome;
#using scripts\cp\cp_mi_sing_biodomes_sound;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cp_mi_sing_biodomes_warehouse;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_f5edec75;

/*
	Name: Precache
	Namespace: namespace_f5edec75
	Checksum: 0x99EC1590
	Offset: 0x2720
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function Precache()
{
}

/*
	Name: main
	Namespace: namespace_f5edec75
	Checksum: 0x9AF21219
	Offset: 0x2730
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function main()
{
	spawner::add_spawn_function_group("rambo", "script_noteworthy", &function_c81145c2);
	spawner::add_spawn_function_group("rusher", "script_noteworthy", &function_6a4cb712);
	spawner::add_spawn_function_group("hunter_flybys", "script_noteworthy", &function_45d0a02a);
	spawner::add_spawn_function_group("cloud_mountain_reinforcements", "script_noteworthy", &function_715d6f43);
	spawner::add_spawn_function_group("cloud_mountain_retreaters", "script_noteworthy", &function_ec47b2e6);
	spawner::add_spawn_function_group("level_3_surprised_enemies", "script_noteworthy", &function_2c36cacd);
	spawner::add_spawn_function_group("pod_spawners", "script_noteworthy", &function_e99db423);
	spawner::add_spawn_function_group("sp_cloudmountain_level_2_warlord", "targetname", &function_a288e474);
	level thread function_7c81648();
}

/*
	Name: function_710c7f6a
	Namespace: namespace_f5edec75
	Checksum: 0x584E77CE
	Offset: 0x28D8
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function function_710c7f6a()
{
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_warehouse"));
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain01"));
	objectives::Hide("cp_waypoint_breadcrumb");
	trigger::wait_till("trig_level_2_enemy_spawns_1");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain01"));
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain02"));
	trigger::wait_till("trig_breadcrumb_cloudmountain_03");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain02"));
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain03"));
	trigger::wait_till("trig_breadcrumb_cloudmountain_04");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain03"));
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain_04"));
	trigger::wait_till("trig_level_3_catwalk_reinforcements");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain04"));
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain_end"));
	trigger::wait_till("trig_breadcrumb_cloudmountain_end");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain_end"));
}

/*
	Name: function_34f37fe
	Namespace: namespace_f5edec75
	Checksum: 0x7DDAE0AC
	Offset: 0x2B88
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_34f37fe(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_cloudmountain_init");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_27a45d31::function_bff1a867(str_objective);
		namespace_55d2f1be::function_cef897cf(str_objective);
		level flag::set("back_door_opened");
		var_b06d4473 = GetEnt("back_door_player_clip", "targetname");
		var_b06d4473 delete();
		spawn_manager::enable("cloud_mountain_siegebot_manager");
		level thread namespace_27a45d31::function_753a859(str_objective);
		level thread namespace_23646cee::function_cb52a73();
		level thread namespace_23646cee::function_1b03da0e();
		level thread namespace_27a45d31::function_cc20e187("warehouse");
		level thread namespace_27a45d31::function_cc20e187("cloudmountain", 1);
		load::function_a2995f22();
	}
	function_9e3608e3("fxanim_markets2");
	level thread namespace_f1b4cbbc::function_2e34977e();
	level thread function_6da34baf();
}

/*
	Name: function_6da34baf
	Namespace: namespace_f5edec75
	Checksum: 0xBB177087
	Offset: 0x2D60
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_6da34baf()
{
	level thread function_710c7f6a();
	level thread function_a52ff7c1();
	level thread function_11f04863();
	level thread function_d532cc21();
	spawner::add_spawn_function_ai_group("cloud_mountain_entrance_bridge", &function_4df7264d);
	spawn_manager::enable("manager_phalanx_humans_bridge");
	level thread function_a234f527();
	level thread function_efae47c8();
	level thread function_9a10cb7d();
	level thread function_85070883();
	level thread function_333f5b5b();
	level thread namespace_23646cee::glass_break("trig_cloudmountain_glass1");
	level thread namespace_23646cee::glass_break("trig_cloudmountain_glass2");
	level thread namespace_23646cee::glass_break("trig_cloudmountain_glass3");
	trigger::wait_till("trig_cloud_mountain_level_2_start");
	level.var_2fd26037 colors::enable();
	level.var_2fd26037 ClearForcedGoal();
	skipto::function_be8adfb8("objective_cloudmountain");
}

/*
	Name: function_9a10cb7d
	Namespace: namespace_f5edec75
	Checksum: 0x7AB71133
	Offset: 0x2F48
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9a10cb7d()
{
	level endon("hash_19af2c9a");
	level waittill("hash_ce48e0c4");
	spawn_manager::enable("manager_phalanx_humans_overhead");
}

/*
	Name: function_efae47c8
	Namespace: namespace_f5edec75
	Checksum: 0xCEF0FAD2
	Offset: 0x2F88
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_efae47c8()
{
	spawn_manager::function_347e835a("cloud_mountain_siegebot_manager");
	var_c81e3075 = spawn_manager::get_ai("cloud_mountain_siegebot_manager");
	objectives::set("cp_level_biodomes_siegebot", var_c81e3075);
	foreach(var_51a7831a in var_c81e3075)
	{
		var_51a7831a thread function_7ec07da9();
	}
	var_60104d0b = level util::waittill_any_return("cloudmountain_siegebots_dead", "cloudmountain_siegebots_skipped");
	if(var_60104d0b == "cloudmountain_siegebots_skipped")
	{
		level thread function_f6a70610(var_c81e3075);
	}
	objectives::set("cp_level_biodomes_servers");
	objectives::complete("cp_level_biodomes_siegebot");
}

/*
	Name: function_7ec07da9
	Namespace: namespace_f5edec75
	Checksum: 0x2B2C401E
	Offset: 0x3100
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_7ec07da9()
{
	level endon("hash_1530fdbd");
	level endon("hash_b6c3b80a");
	self waittill("death", e_attacker);
	objectives::hide_for_target("cp_level_biodomes_siegebot", self);
	wait(1);
	battlechatter::function_d9f49fba(0);
	if(isPlayer(e_attacker))
	{
		level dialog::function_13b3b16a("plyr_siege_bot_is_s_o_l_0");
		var_7a45cb6d = "hendricks";
	}
	else
	{
		level.var_2fd26037 dialog::say("hend_that_fucker_s_done_0");
		var_7a45cb6d = "player";
	}
	battlechatter::function_d9f49fba(1);
	var_dcd92b65 = spawner::get_ai_group_ai("cloudmountain_siegebots");
	if(var_dcd92b65.size)
	{
		var_dcd92b65[0] thread function_1932917(var_7a45cb6d);
		level notify("hash_1530fdbd");
	}
	else
	{
		level function_a1fa89a2();
	}
}

/*
	Name: function_1932917
	Namespace: namespace_f5edec75
	Checksum: 0xADA5BE6B
	Offset: 0x3280
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_1932917(var_f7824075)
{
	self waittill("death");
	level endon("hash_b6c3b80a");
	objectives::hide_for_target("cp_level_biodomes_siegebot", self);
	wait(1);
	battlechatter::function_d9f49fba(0);
	if(var_f7824075 == "player")
	{
		level dialog::function_13b3b16a("plyr_siege_bot_is_s_o_l_0");
	}
	else if(var_f7824075 == "hendricks")
	{
		level.var_2fd26037 dialog::say("hend_that_fucker_s_done_0");
	}
	battlechatter::function_d9f49fba(1);
	level function_a1fa89a2();
}

/*
	Name: function_f6a70610
	Namespace: namespace_f5edec75
	Checksum: 0x337DFD69
	Offset: 0x3380
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_f6a70610(var_c81e3075)
{
	level waittill("hash_69d6458d");
	foreach(var_51a7831a in var_c81e3075)
	{
		if(isalive(var_51a7831a))
		{
			var_51a7831a kill();
		}
	}
}

/*
	Name: function_a1fa89a2
	Namespace: namespace_f5edec75
	Checksum: 0x9B22402F
	Offset: 0x3440
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a1fa89a2()
{
	level flag::set("cloudmountain_siegebots_dead");
	level thread namespace_f1b4cbbc::function_973b77f9();
	level thread namespace_27a45d31::function_a1669688("cloud_mountain_entrance_bridge", "cloudmountain_lobby_retreat_volume", 2, 4);
	trigger::use("trig_hendricks_lobby_entrance_colors", "targetname", undefined, 0);
	savegame::function_5d2cdd99();
}

/*
	Name: function_a234f527
	Namespace: namespace_f5edec75
	Checksum: 0x60334B1B
	Offset: 0x34F0
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_a234f527()
{
	battlechatter::function_d9f49fba(0);
	level.var_2fd26037 dialog::say("hend_they_gotta_siege_bot_0");
	level.var_2fd26037 dialog::say("hend_we_don_t_have_the_fi_0", 2);
	level dialog::remote("kane_it_s_heavily_armored_0");
	battlechatter::function_d9f49fba(1);
	level util::waittill_either("cloudmountain_siegebots_dead", "cloudmountain_siegebots_skipped");
	wait(2);
	level thread function_b2ae6383();
}

/*
	Name: function_b2ae6383
	Namespace: namespace_f5edec75
	Checksum: 0x2473D90A
	Offset: 0x35E0
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_b2ae6383(var_b146902)
{
	if(!isdefined(var_b146902))
	{
		var_b146902 = 0;
	}
	if(!var_b146902)
	{
		battlechatter::function_d9f49fba(0);
		level dialog::remote("kane_server_room_s_locate_0", 1);
		objectives::show("cp_waypoint_breadcrumb");
		level.var_2fd26037 dialog::say("hend_guess_we_re_going_up_0");
		battlechatter::function_d9f49fba(1);
	}
	level thread function_170b0353(var_b146902);
	level thread namespace_f1b4cbbc::function_6c35b4f3();
	trigger::wait_till("trig_cloud_mountain_level_2_start");
	wait(2);
	battlechatter::function_d9f49fba(0);
	level dialog::function_13b3b16a("plyr_third_floor_where_n_0");
	level dialog::remote("kane_server_room_directly_0");
	battlechatter::function_d9f49fba(1);
	level notify("hash_e36f3648");
}

/*
	Name: function_170b0353
	Namespace: namespace_f5edec75
	Checksum: 0xD92E7815
	Offset: 0x3768
	Size: 0x469
	Parameters: 1
	Flags: None
*/
function function_170b0353(var_b146902)
{
	if(!isdefined(var_b146902))
	{
		var_b146902 = 0;
	}
	level endon("hash_be472a4a");
	if(!var_b146902)
	{
		if(!level flag::get("cloudmountain_second_floor_vo"))
		{
			trigger::wait_till("trig_cloudmountain_second_floor_vo");
			battlechatter::function_d9f49fba(0);
			level.var_2fd26037 dialog::say("hend_take_the_second_floo_0");
			level dialog::remote("kane_ex_fil_on_marker_bi_0", 1);
			level.var_2fd26037 dialog::say("hend_copy_that_0");
			battlechatter::function_d9f49fba(1);
		}
	}
	level waittill("hash_e36f3648");
	wait(5);
	battlechatter::function_d9f49fba(0);
	level dialog::remote("kane_you_need_to_hustle_0");
	battlechatter::function_d9f49fba(1);
	level flag::wait_till("cloudmountain_hunter_spawned");
	battlechatter::function_d9f49fba(0);
	level.var_2fd26037 dialog::say("hend_kane_they_gotta_hun_0", 2);
	level dialog::remote("kane_do_not_engage_the_hu_1");
	level dialog::remote("kane_long_as_you_re_in_th_0");
	level.var_2fd26037 dialog::say("hend_fan_fucking_tastic_1");
	level.var_2fd26037 dialog::say("hend_more_reinforcements_0", 2);
	level dialog::remote("kane_leave_em_goh_xiula_0");
	battlechatter::function_d9f49fba(1);
	if(!level flag::get("end_level_2_sniper_vo"))
	{
		foreach(player in level.activePlayers)
		{
			player thread function_e2e19ed7("cm_level_2_snipers", "end_level_2_sniper_vo");
		}
	}
	level flag::wait_till("cloudmountain_level_3_catwalk_vo");
	level flag::set("end_level_2_sniper_vo");
	if(!level flag::get("end_level_3_sniper_vo"))
	{
		battlechatter::function_d9f49fba(0);
		level.var_2fd26037 dialog::say("hend_they_re_on_the_walkw_0", 1);
		battlechatter::function_d9f49fba(1);
		foreach(player in level.activePlayers)
		{
			player thread function_e2e19ed7("cm_level_3_snipers", "end_level_3_sniper_vo");
		}
	}
}

/*
	Name: function_e2e19ed7
	Namespace: namespace_f5edec75
	Checksum: 0x32CA960A
	Offset: 0x3BE0
	Size: 0x203
	Parameters: 2
	Flags: None
*/
function function_e2e19ed7(str_ai_group, str_endon_flag)
{
	level endon(str_endon_flag);
	self endon("death");
	var_4d8945 = 0;
	while(!var_4d8945)
	{
		self waittill("damage", n_damage, e_attacker);
		a_ai_snipers = spawner::get_ai_group_ai(str_ai_group);
		if(a_ai_snipers.size)
		{
			foreach(ai_sniper in a_ai_snipers)
			{
				if(ai_sniper == e_attacker)
				{
					var_2d3d7b7 = [];
					if(str_ai_group == "cm_level_2_snipers")
					{
						var_2d3d7b7[0] = "hend_sniper_spotted_on_th_0";
						var_2d3d7b7[1] = "hend_i_got_a_sniper_on_th_0";
					}
					else
					{
						var_2d3d7b7[0] = "hend_54i_sniper_on_the_ba_0";
						var_2d3d7b7[1] = "hend_sniper_on_the_walkwa_0";
					}
					battlechatter::function_d9f49fba(0);
					level.var_2fd26037 dialog::say(namespace_27a45d31::function_7ff50323(var_2d3d7b7));
					battlechatter::function_d9f49fba(1);
					var_4d8945 = 1;
					break;
				}
			}
		}
		else
		{
			break;
		}
	}
	level flag::set(str_endon_flag);
}

/*
	Name: function_333f5b5b
	Namespace: namespace_f5edec75
	Checksum: 0x89C571C8
	Offset: 0x3DF0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_333f5b5b()
{
	level endon("hash_a68d9993");
	trigger::wait_till("trig_cloudmountain_first_floor_backup");
	spawn_manager::enable("sm_cloudmountain_level_2_amws");
	spawn_manager::enable("sm_cloudmountain_level_2_warlord");
	savegame::function_5d2cdd99();
	spawn_manager::function_347e835a("sm_cloudmountain_level_2_amws");
	spawner::waittill_ai_group_ai_count("cloudmountain_first_floor_backup", 0);
	var_f62f0db4 = GetNode("hendricks_cloudmountain_stairs", "targetname");
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 SetGoal(var_f62f0db4, 1);
}

/*
	Name: function_a288e474
	Namespace: namespace_f5edec75
	Checksum: 0x2D78566F
	Offset: 0x3EF8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_a288e474()
{
	self endon("death");
	self.goalRadius = 1024;
	self.goalHeight = 320;
	self SetGoal(level.activePlayers[0]);
	self WarlordInterface::SetWarlordAggressiveMode(1);
	self namespace_27a45d31::function_f61c0df8("node_cloud_mountain_warlord_preferred", 1, 2);
}

/*
	Name: function_7dffd386
	Namespace: namespace_f5edec75
	Checksum: 0x87B3729
	Offset: 0x3F88
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7dffd386()
{
	trigger::wait_till("trig_cloudmountain_first_floor_backup");
	if(!level flag::get("stalagtites_dropped"))
	{
		trigger::use("cloudmountain_entrance_stalagmite_01");
	}
}

/*
	Name: function_ace9f6d8
	Namespace: namespace_f5edec75
	Checksum: 0x3294D3B0
	Offset: 0x3FE8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_ace9f6d8(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("objective_cloudmountain_done");
}

/*
	Name: function_8ce887a2
	Namespace: namespace_f5edec75
	Checksum: 0xD0046065
	Offset: 0x4030
	Size: 0x273
	Parameters: 4
	Flags: None
*/
function function_8ce887a2(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		objectives::set("cp_level_biodomes_servers");
		namespace_27a45d31::function_bff1a867(str_objective);
		level flag::set("back_door_opened");
		var_b06d4473 = GetEnt("back_door_player_clip", "targetname");
		var_b06d4473 delete();
		var_31861e2e = GetEnt("trig_level_2_robot_spawns", "targetname");
		if(isdefined(var_31861e2e))
		{
			var_31861e2e delete();
		}
		function_8232942d();
		function_56019233();
		level thread namespace_27a45d31::function_753a859(str_objective);
		level.var_2fd26037 colors::enable();
		level thread function_710c7f6a();
		level thread function_11f04863();
		level thread function_85070883();
		level thread namespace_27a45d31::function_cc20e187("cloudmountain");
		load::function_a2995f22();
		level thread function_b2ae6383(1);
		level thread function_170b0353(1);
	}
	spawn_manager::enable("sm_cloud_mountain_riot_shield");
	level.var_2fd26037.goalRadius = 256;
	trigger::wait_till("trig_turret_hallway_enemy_spawns");
	skipto::function_be8adfb8("objective_cloudmountain_level_2");
}

/*
	Name: function_2013f39c
	Namespace: namespace_f5edec75
	Checksum: 0xFBDC987E
	Offset: 0x42B0
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_2013f39c(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("objective_cloudmountain_level_2_done");
}

/*
	Name: function_8232942d
	Namespace: namespace_f5edec75
	Checksum: 0x7DF73B21
	Offset: 0x42F8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_8232942d()
{
	var_82ac908a = GetEnt("trig_cloudmountain_left_stairs_spawns", "targetname");
	var_82ac908a delete();
	var_7870fb88 = GetEnt("trig_sm_level_1_rushers", "targetname");
	var_7870fb88 delete();
}

/*
	Name: function_56019233
	Namespace: namespace_f5edec75
	Checksum: 0x252E926C
	Offset: 0x4388
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_56019233()
{
	var_b6a97ee5 = GetEntArray("cloudmountain_level_1_glass_triggers", "script_noteworthy");
	foreach(var_799e4c3a in var_b6a97ee5)
	{
		glassRadiusDamage(var_799e4c3a.origin, 100, 500, 500);
		var_799e4c3a delete();
	}
}

/*
	Name: function_9d75973
	Namespace: namespace_f5edec75
	Checksum: 0xC055C5D3
	Offset: 0x4478
	Size: 0x16F
	Parameters: 1
	Flags: None
*/
function function_9d75973(var_b49710a9)
{
	level endon("hash_478882aa");
	var_16de839d = GetEnt("trig_exhibit_" + var_b49710a9, "targetname");
	while(1)
	{
		var_16de839d trigger::wait_till();
		switch(var_b49710a9)
		{
			case "A":
			{
				var_16de839d dialog::say("Welcome to the Cloud Forest wildlife exhibit. Please take a moment to read the rules of conduct.", 0, 1);
				break;
			}
			case "B":
			{
				var_16de839d dialog::say("Hundreds of different animal species make their home among the flora of Cloud Forests across Southeast Asia.", 0, 1);
				break;
			}
			case "C":
			{
				var_16de839d dialog::say("Amphibians such as this Spotted Tree Frog are particularly well suited to the unique climate found here.", 0, 1);
				break;
			}
			case "D":
			{
				var_16de839d dialog::say("Tree Shrews are descended from one of the earliest known mammals on earth. They forage in the dense undergrowth at all hours of the day.", 0, 1);
				break;
			}
			case "E":
			{
				var_16de839d dialog::say("Up ahead is the overlook and elevator access to the Cloud Walk. Watch your step! Walkways are slippery when wet.", 0, 1);
				break;
			}
		}
		wait(15);
	}
}

/*
	Name: function_11f04863
	Namespace: namespace_f5edec75
	Checksum: 0xEAB3167D
	Offset: 0x45F0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_11f04863()
{
	trigger::wait_till("level_2_catwalk_spawns", "targetname");
	e_door = GetEnt("dome_side_door", "targetname");
	e_door connectpaths();
	e_door MoveZ(100, 2);
	e_door waittill("movedone");
	level flag::wait_till("supertree_door_close");
	e_door MoveZ(-100, 2);
}

/*
	Name: function_d532cc21
	Namespace: namespace_f5edec75
	Checksum: 0xB3CB33D
	Offset: 0x46C8
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_d532cc21()
{
	level flag::init("stalagtites_dropped");
	var_897e5d1 = struct::get("stalactite_kill_zone", "targetname");
	trigger::wait_till("cloudmountain_entrance_stalagmite_01");
	level thread scene::Play("p7_fxanim_cp_biodomes_stalagmite_01_bundle");
	level waittill("hash_422a3570");
	var_2ef43a6a = GetDamageableEntArray(var_897e5d1.origin, var_897e5d1.radius);
	var_2ef43a6a = Array::exclude(var_2ef43a6a, level.activePlayers);
	if(var_2ef43a6a.size > 0)
	{
		namespace_769dc23f::function_8ca89944();
		foreach(victim in var_2ef43a6a)
		{
			victim kill();
		}
	}
	level flag::set("stalagtites_dropped");
}

/*
	Name: function_45d0a02a
	Namespace: namespace_f5edec75
	Checksum: 0x63D8464C
	Offset: 0x4888
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_45d0a02a()
{
	self endon("death");
	level flag::set("cloudmountain_hunter_spawned");
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self.noCybercom = 1;
	nd_start = GetVehicleNode(self.target, "targetname");
	if(isdefined(nd_start))
	{
		self vehicle_ai::function_81b6f1ac();
		self vehicle::get_on_and_go_path(nd_start);
		self delete();
	}
}

/*
	Name: function_715d6f43
	Namespace: namespace_f5edec75
	Checksum: 0xB088644
	Offset: 0x4978
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_715d6f43()
{
	self endon("death");
	self ai::set_ignoreme(1);
}

/*
	Name: function_ec47b2e6
	Namespace: namespace_f5edec75
	Checksum: 0x6EEB560C
	Offset: 0x49A8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_ec47b2e6()
{
	self endon("death");
	self ai::set_ignoreme(1);
	nd_goal = GetNode(self.target, "targetname");
	if(isdefined(nd_goal))
	{
		self SetGoal(nd_goal, 1);
		self waittill("goal");
	}
	self delete();
}

/*
	Name: function_2c36cacd
	Namespace: namespace_f5edec75
	Checksum: 0x2F5D0A80
	Offset: 0x4A48
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_2c36cacd()
{
	self endon("death");
	self.goalRadius = 4;
	self ai::set_ignoreall(1);
	trigger::wait_till("trig_lookat_level_3_surprised");
	wait(RandomFloatRange(0.1, 0.5));
	self scene::Play("cin_gen_vign_confusion_02", self);
	var_284ca6ef = GetEnt("trig_level_3_catwalks_goal", "targetname");
	if(isdefined(var_284ca6ef))
	{
		self SetGoal(var_284ca6ef);
		self waittill("goal");
	}
	self ai::set_ignoreall(0);
	self.goalRadius = 1024;
}

/*
	Name: function_e99db423
	Namespace: namespace_f5edec75
	Checksum: 0xDCF32CD6
	Offset: 0x4B58
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function function_e99db423()
{
	self endon("death");
	self ai::set_ignoreme(1);
	self thread function_d7238641();
	var_f64bb476 = GetEnt(self.target, "targetname");
	var_f64bb476 thread scene::init("p7_fxanim_cp_sgen_charging_station_open_01_bundle", var_f64bb476);
	str_scene = "cin_bio_07_03_climb_aie_charging_station";
	s_align = struct::get(var_f64bb476.target, "targetname");
	s_align thread scene::init(str_scene, self);
	while(1)
	{
		var_a3ef017f = 0;
		foreach(player in level.players)
		{
			n_distance_sq = Distance2DSquared(self.origin, player.origin);
			if(player util::is_player_looking_at(self.origin) && n_distance_sq < 1000000 || n_distance_sq < 360000)
			{
				var_a3ef017f = 1;
				break;
			}
		}
		if(var_a3ef017f)
		{
			break;
		}
		wait(0.05);
	}
	s_align thread scene::Play(str_scene, self);
	self waittill("glass_break");
	var_f64bb476 thread scene::Play("p7_fxanim_cp_sgen_charging_station_open_01_bundle", var_f64bb476);
	self ai::set_ignoreme(0);
	nd_best = self FindBestCoverNode();
	if(isdefined(nd_best))
	{
		self SetGoal(nd_best);
	}
}

/*
	Name: function_d7238641
	Namespace: namespace_f5edec75
	Checksum: 0x2B76CF3C
	Offset: 0x4E20
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d7238641()
{
	self endon("death");
	level waittill("hash_d7238641");
	self delete();
}

/*
	Name: function_a52ff7c1
	Namespace: namespace_f5edec75
	Checksum: 0x70624C4
	Offset: 0x4E60
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_a52ff7c1()
{
	function_6f311542();
	trigger::wait_till("trig_cloudmountain_elevators");
	spawner::simple_spawn("cloudmountain_elevator_enemy", &function_f5170df1, "cloudmountain");
}

/*
	Name: function_7c81648
	Namespace: namespace_f5edec75
	Checksum: 0x5C0C8180
	Offset: 0x4EC8
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_7c81648()
{
	var_9396ef10 = GetSpawnerArray("catwalk", "script_noteworthy");
	for(i = 0; i < var_9396ef10.size; i++)
	{
		var_9396ef10[i] spawner::add_spawn_function(&function_84f859bf);
	}
}

/*
	Name: function_84f859bf
	Namespace: namespace_f5edec75
	Checksum: 0x6F0DA646
	Offset: 0x4F58
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_84f859bf()
{
	self.goalRadius = 400;
}

/*
	Name: function_a36395f0
	Namespace: namespace_f5edec75
	Checksum: 0x582FA1ED
	Offset: 0x4F70
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_a36395f0()
{
	a_spawn_triggers = GetEntArray("cloudmountain_spawn_trigger", "script_noteworthy");
	foreach(trigger in a_spawn_triggers)
	{
		trigger delete();
	}
	function_8232942d();
}

/*
	Name: function_85070883
	Namespace: namespace_f5edec75
	Checksum: 0xFB80474A
	Offset: 0x5040
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_85070883()
{
	trigger::wait_till("trig_cloud_mountain_reinforcements");
	spawner::add_spawn_function_group("sp_cloud_mountain_reinforcements_wasps", "targetname", &function_947a1ae8);
	spawn_manager::enable("sm_cloud_mountain_reinforcements");
	spawn_manager::enable("sm_cloud_mountain_reinforcements_wasps");
	spawn_manager::enable("sm_cloud_mountain_retreaters");
}

/*
	Name: function_df51ef25
	Namespace: namespace_f5edec75
	Checksum: 0xA12EBF8
	Offset: 0x50E0
	Size: 0x343
	Parameters: 2
	Flags: None
*/
function function_df51ef25(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("turret_hallway_init");
	if(!SessionModeIsCampaignZombiesGame())
	{
		level scene::init("server_room_access_start", "targetname");
	}
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_cloudmountain_end"));
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_27a45d31::function_bff1a867(str_objective);
		level.var_2fd26037 notify("stop_following");
		level.var_2fd26037 colors::enable();
		objectives::set("cp_level_biodomes_servers");
		level thread namespace_27a45d31::function_753a859(str_objective);
		level thread namespace_27a45d31::function_cc20e187("cloudmountain");
		function_a36395f0();
		load::function_a2995f22();
		level thread namespace_f1b4cbbc::function_6c35b4f3();
	}
	level flag::init("turret_hallway_phalanx_dead");
	level thread function_ee13f890();
	level thread function_3679c70a();
	level thread function_f52ce87b();
	level thread function_de8fde30();
	spawner::waittill_ai_group_cleared("turret_hallway_group");
	function_58b4a5d6();
	level flag::set("turret_hall_clear");
	foreach(player in level.players)
	{
		if(player laststand::player_is_in_laststand())
		{
			player laststand::auto_revive(player, 0);
		}
		if(isalive(player.hijacked_vehicle_entity))
		{
			player.hijacked_vehicle_entity namespace_7cb6cd95::function_664c9cd6();
		}
	}
	skipto::function_be8adfb8("objective_turret_hallway");
}

/*
	Name: function_3679c70a
	Namespace: namespace_f5edec75
	Checksum: 0xFB1755
	Offset: 0x5430
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_3679c70a()
{
	level flag::wait_till("hendricks_near_turrets");
	battlechatter::function_d9f49fba(0);
	var_9d979b27 = GetAIArray("hallway_turret", "script_noteworthy");
	if(var_9d979b27.size > 0)
	{
		level.var_2fd26037 dialog::say("hend_focus_on_the_turrets_0");
	}
	var_9d979b27 = GetAIArray("hallway_turret", "script_noteworthy");
	if(var_9d979b27.size > 0)
	{
		var_653d9a07 = 0;
		var_85ee3d97 = 0;
		foreach(player in level.activePlayers)
		{
			if(isdefined(player.grenadeTypeSecondary.isEmp) && player.grenadeTypeSecondary.isEmp && player.grenadeTypeSecondaryCount > 0)
			{
				var_653d9a07 = 1;
			}
			if(isdefined(player.grenadeTypePrimary) && player.grenadeTypePrimaryCount > 0)
			{
				var_85ee3d97 = 1;
			}
		}
		if(var_653d9a07)
		{
			level dialog::remote("kane_your_emp_grenade_sho_0");
		}
		else if(var_85ee3d97)
		{
			level dialog::remote("kane_toss_a_frag_in_there_0");
		}
	}
}

/*
	Name: function_f52ce87b
	Namespace: namespace_f5edec75
	Checksum: 0x5F9F1F4B
	Offset: 0x5668
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_f52ce87b()
{
	level flag::wait_till("turret_hallway_phalanx");
	level flag::set("end_level_3_sniper_vo");
	v_start = struct::get("turret_hallway_phalanx_start").origin;
	v_end = struct::get("turret_hallway_phalanx_end").origin;
	var_1b6ee6b2 = 2;
	if(level.var_641fcd9c.size > 0)
	{
		var_1b6ee6b2 = 3;
	}
	function_9b385ca5();
	phalanx = RobotPhalanx;
	Initialize(phalanx, "phalanx_diagonal_left", v_start, v_end, 1);
	while(phalanx.tier1Robots_.size + phalanx.tier2Robots_.size + phalanx.tier3Robots_.size > 0)
	{
		wait(0.25);
	}
	level flag::set("turret_hallway_phalanx_dead");
}

/*
	Name: function_de8fde30
	Namespace: namespace_f5edec75
	Checksum: 0xCA5D3758
	Offset: 0x57F0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_de8fde30()
{
	exploder::exploder("turret_light");
	trigger::wait_till("trig_turret_lights_damaged", "targetname");
	exploder::kill_exploder("turret_light");
	exploder::exploder("fx_turrethallway_turret_smk");
	scene::Play("p7_fxanim_gp_floodlight_01_bundle");
}

/*
	Name: function_2c72fa5a
	Namespace: namespace_f5edec75
	Checksum: 0x3DD8DDAC
	Offset: 0x5880
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_2c72fa5a()
{
	self turret::enable_laser(1, 0);
	switch(self.script_string)
	{
		case "turret_left":
		{
			objectives::set("cp_level_biodomes_cloud_mountain_turret_left", self);
			self waittill("death");
			objectives::complete("cp_level_biodomes_cloud_mountain_turret_left", self);
			break;
		}
		case "turret_right":
		{
			objectives::set("cp_level_biodomes_cloud_mountain_turret_right", self);
			self waittill("death");
			objectives::complete("cp_level_biodomes_cloud_mountain_turret_right", self);
			break;
		}
	}
}

/*
	Name: function_d8eaa27f
	Namespace: namespace_f5edec75
	Checksum: 0x88E03A5F
	Offset: 0x5958
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_d8eaa27f(var_9d979b27)
{
	level endon("hash_48527e55");
	function_c80e1213("turret_left");
	function_c80e1213("turret_right");
}

/*
	Name: function_c80e1213
	Namespace: namespace_f5edec75
	Checksum: 0x73AB42D5
	Offset: 0x59A8
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_c80e1213(str_turret)
{
	nd_cover = GetNode("hendricks_" + str_turret, "targetname");
	level.var_2fd26037 SetGoal(nd_cover, 1);
	a_turrets = GetAIArray(str_turret, "script_label");
	if(isalive(a_turrets[0]))
	{
		level.var_2fd26037 SetTargetEntity(a_turrets[0]);
		while(isalive(a_turrets[0]))
		{
			wait(0.05);
		}
	}
}

/*
	Name: function_ee13f890
	Namespace: namespace_f5edec75
	Checksum: 0xC7618814
	Offset: 0x5AA8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_ee13f890()
{
	level flag::wait_till("a_player_sees_hallway_turrets");
	objectives::complete("cp_level_biodomes_servers");
	objectives::set("cp_level_biodomes_destroy_hallway_turrets");
	var_9d979b27 = GetAIArray("hallway_turret", "script_noteworthy");
	foreach(var_c316ad54 in var_9d979b27)
	{
		var_c316ad54 thread function_2c72fa5a();
	}
	level flag::wait_till("turret_hallway_phalanx_dead");
	function_d8eaa27f(var_9d979b27);
}

/*
	Name: function_58b4a5d6
	Namespace: namespace_f5edec75
	Checksum: 0x52DC46E2
	Offset: 0x5BE8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_58b4a5d6()
{
	for(var_a4854031 = 1; var_a4854031;  = 1)
	{
		wait(1);
	}
}

/*
	Name: function_50c932d0
	Namespace: namespace_f5edec75
	Checksum: 0x5B36F128
	Offset: 0x5C38
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_50c932d0()
{
	var_53efc9b3 = GetEnt("turret_hallway_enemy_check_volume", "targetname");
	a_enemy_ai = GetAISpeciesArray("axis", "all");
	foreach(e_enemy in a_enemy_ai)
	{
		if(e_enemy istouching(var_53efc9b3))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_9cfbecff
	Namespace: namespace_f5edec75
	Checksum: 0xDDC3D540
	Offset: 0x5D38
	Size: 0xCB
	Parameters: 4
	Flags: None
*/
function function_9cfbecff(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_biodomes_destroy_hallway_turrets");
	objectives::set("cp_level_biodomes_awaiting_update");
	namespace_27a45d31::function_ddb0eeea("turret_hallway_done");
	GetEnt("trig_turret_hallway_enemy_spawns", "targetname") delete();
	GetEnt("trig_turret_hallway_defender_spawns", "targetname") delete();
}

/*
	Name: function_e696b86c
	Namespace: namespace_f5edec75
	Checksum: 0x916D5ABB
	Offset: 0x5E10
	Size: 0x32B
	Parameters: 2
	Flags: None
*/
function function_e696b86c(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("xiulan_vignette_init");
	namespace_27a45d31::function_a22e7052(0, "server_room_window_mantle", "script_noteworthy");
	level thread util::function_d8eaed3d(2);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_27a45d31::function_bff1a867(str_objective);
		level.var_2fd26037.goalRadius = 32;
		objectives::set("cp_level_biodomes_awaiting_update");
		function_a36395f0();
		level scene::init("server_room_access_start", "targetname");
		level thread namespace_27a45d31::function_753a859(str_objective);
		var_777355da = GetEntArray("hallway_turret", "script_noteworthy");
		a_turrets = spawner::simple_spawn(var_777355da);
		Array::run_all(a_turrets, &kill);
		level thread namespace_27a45d31::function_cc20e187("cloudmountain");
		load::function_a2995f22();
	}
	level.var_2fd26037 colors::disable();
	var_5cb57398 = GetNode("nd_turret_win_idle", "targetname");
	level.var_2fd26037 SetGoal(var_5cb57398);
	level thread function_9c35b4f7();
	e_clip = GetEnt("turret_hallway_door_ai_clip", "targetname");
	e_clip delete();
	var_e5214b43 = GetEnt("server_room_initial_bullet_brush_outer", "targetname");
	var_e5214b43 Hide();
	var_f3ad8f26 = GetEnt("server_room_initial_bullet_brush_inner", "targetname");
	var_f3ad8f26 Hide();
	level thread scene::init("p7_fxanim_cp_biodomes_server_room_window_break_01_bundle");
	level function_cd4c4257();
}

/*
	Name: function_cd4c4257
	Namespace: namespace_f5edec75
	Checksum: 0x9DBA1D96
	Offset: 0x6148
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_cd4c4257()
{
	level thread namespace_f1b4cbbc::function_973b77f9();
	battlechatter::function_d9f49fba(0);
	level dialog::remote("kane_shit_she_s_uploadi_0");
	level dialog::remote("kane_it_s_uploading_direc_0");
	level notify("hash_9b74c38e");
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_e638433c
	Namespace: namespace_f5edec75
	Checksum: 0x90CBA906
	Offset: 0x61F0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_e638433c()
{
	self endon("death");
	self waittill("goal");
	v_look = struct::get("hallway_look_target").origin;
	self OrientMode("face direction", self.origin - v_look);
	self waittill("enemy");
	self OrientMode("face enemy");
}

/*
	Name: function_a0e7b9b7
	Namespace: namespace_f5edec75
	Checksum: 0xD7ECFA10
	Offset: 0x6298
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_a0e7b9b7()
{
	self.ignoreme = 1;
}

/*
	Name: function_9c35b4f7
	Namespace: namespace_f5edec75
	Checksum: 0xDADBD131
	Offset: 0x62B0
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function function_9c35b4f7()
{
	level waittill("hash_9b74c38e");
	v_offset = (0, 0, 0);
	var_e1e45904 = GetEnt("trig_server_room_door_use_object", "targetname");
	var_e1e45904 show();
	var_ca0e9b65 = util::function_14518e76(var_e1e45904, &"cp_level_biodomes_server_door", &"CP_MI_SING_BIODOMES_CLOUDMOUNTAIN_ACCESS_TERMINAL", &function_9a82e132);
	level waittill("hash_69d6458d");
	a_enemies = GetAITeamArray("axis");
	Array::run_all(a_enemies, &delete);
	level clientfield::set("set_exposure_bank", 1);
	level thread function_d28364c1();
	level thread dialog::function_13b3b16a("plyr_we_have_to_take_her_0", 1);
	level thread namespace_f1b4cbbc::function_3919d226();
	level scene::add_scene_func("cin_bio_09_accessdrives_3rd_sh010", &function_2db7566e, "play");
	level scene::add_scene_func("cin_bio_09_accessdrives_3rd_sh020", &function_3de47a8b, "play");
	level scene::add_scene_func("cin_bio_09_accessdrives_3rd_sh090", &function_cbdd0b50, "play");
	level scene::add_scene_func("cin_bio_09_accessdrives_3rd_sh170", &function_7dedb1f0, "play");
	level scene::add_scene_func("cin_bio_09_accessdrives_3rd_sh190", &function_f1df85b9, "play");
	level scene::add_scene_func("cin_bio_09_accessdrives_3rd_sh260", &function_d065fdd0, "done");
	level.var_2fd26037.ignoreall = 1;
	if(isdefined(level.BZM_BIODialogue3Callback))
	{
		level thread [[level.BZM_BIODialogue3Callback]]();
	}
	level scene::Play("server_room_access_start", "targetname", level.var_f2be4c1f);
	skipto::function_be8adfb8("objective_xiulan_vignette");
}

/*
	Name: function_934481ae
	Namespace: namespace_f5edec75
	Checksum: 0xF9393AA0
	Offset: 0x65B8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_934481ae(e_door)
{
	objectives::set("cp_level_biodomes_server_door", e_door);
}

/*
	Name: function_9a82e132
	Namespace: namespace_f5edec75
	Checksum: 0xDBA04C5D
	Offset: 0x65F0
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_9a82e132(e_player)
{
	level.var_f2be4c1f = e_player;
	var_485a1dbf = struct::get("s_server_room_hack_pos");
	playsoundatposition("evt_hack_panel", var_485a1dbf.origin);
	self gameobjects::disable_object();
	objectives::complete("cp_level_biodomes_server_door");
	level notify("hash_69d6458d");
}

/*
	Name: function_2db7566e
	Namespace: namespace_f5edec75
	Checksum: 0xD13D7E03
	Offset: 0x66A0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_2db7566e(a_ents)
{
	foreach(player in level.players)
	{
		player cybercom::function_f8669cbf(1);
		player clientfield::increment_to_player("hack_dni_fx");
	}
}

/*
	Name: function_7dedb1f0
	Namespace: namespace_f5edec75
	Checksum: 0x92637095
	Offset: 0x6768
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_7dedb1f0(a_ents)
{
	level waittill("hash_f7774ee4");
	level thread function_a91388d2(1);
	level waittill("hash_127c12ee");
	level flag::wait_till("server_control_room_door_open");
	level thread function_a91388d2(0);
}

/*
	Name: function_d065fdd0
	Namespace: namespace_f5edec75
	Checksum: 0x9AF95C5C
	Offset: 0x67E8
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_d065fdd0(a_ents)
{
	level notify("hash_d065fdd0");
	level clientfield::set("set_exposure_bank", 0);
	level util::function_93831e79("s_server_room_scene_end_warps");
	level thread util::clear_streamer_hint();
	function_acdfe1fe("cp_biodomes_env_serverhackvid4looping", 1);
}

/*
	Name: function_4a1b1d4c
	Namespace: namespace_f5edec75
	Checksum: 0x90FBE0C4
	Offset: 0x6888
	Size: 0xCB
	Parameters: 3
	Flags: None
*/
function function_4a1b1d4c(team, player, success)
{
	if(isdefined(success) && success)
	{
		self gameobjects::disable_object();
		var_2fc559ed = GetEnt("server_room_door", "targetname");
		var_2fc559ed MoveZ(100, 2);
		var_2fc559ed connectpaths();
		var_2fc559ed waittill("movedone");
		var_2fc559ed delete();
	}
}

/*
	Name: function_3de47a8b
	Namespace: namespace_f5edec75
	Checksum: 0x165B998B
	Offset: 0x6960
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_3de47a8b(a_ents)
{
	function_acdfe1fe("cp_biodomes_env_serverhackvid1");
}

/*
	Name: function_cbdd0b50
	Namespace: namespace_f5edec75
	Checksum: 0x41B2DC60
	Offset: 0x6990
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_cbdd0b50(a_ents)
{
	function_acdfe1fe("cp_biodomes_env_serverhackvid2");
}

/*
	Name: function_f1df85b9
	Namespace: namespace_f5edec75
	Checksum: 0xA713E242
	Offset: 0x69C0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_f1df85b9(a_ents)
{
	function_acdfe1fe("cp_biodomes_env_serverhackvid3");
}

/*
	Name: function_a91388d2
	Namespace: namespace_f5edec75
	Checksum: 0x2A783964
	Offset: 0x69F0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_a91388d2(b_open)
{
	var_4fe84cbf = GetEnt("server_control_room_door", "targetname");
	if(b_open)
	{
		var_4fe84cbf MoveY(50, 0.5);
		var_4fe84cbf waittill("movedone");
		level flag::set("server_control_room_door_open");
	}
	else
	{
		var_4fe84cbf MoveY(-50, 0.5);
		var_4fe84cbf waittill("movedone");
		level flag::clear("server_control_room_door_open");
	}
}

/*
	Name: function_6be20b72
	Namespace: namespace_f5edec75
	Checksum: 0xCD355B71
	Offset: 0x6AD8
	Size: 0x153
	Parameters: 4
	Flags: None
*/
function function_6be20b72(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("xiulan_vignette_done");
	objectives::complete("cp_level_biodomes_mainobj_capture_data_drives");
	var_2fc559ed = GetEnt("server_room_door", "targetname");
	if(isdefined(var_2fc559ed))
	{
		var_2fc559ed connectpaths();
		var_2fc559ed delete();
	}
	var_d9a05e72 = GetEnt("server_room_door_clip", "targetname");
	if(isdefined(var_d9a05e72))
	{
		var_d9a05e72 connectpaths();
		var_d9a05e72 delete();
	}
	GetEnt("trig_server_room_door_use_object", "targetname") delete();
}

/*
	Name: function_d28364c1
	Namespace: namespace_f5edec75
	Checksum: 0xF854B37C
	Offset: 0x6C38
	Size: 0x27F
	Parameters: 0
	Flags: None
*/
function function_d28364c1()
{
	level waittill("hash_67213d76");
	var_e5214b43 = GetEnt("server_room_initial_bullet_brush_outer", "targetname");
	var_f3ad8f26 = GetEnt("server_room_initial_bullet_brush_inner", "targetname");
	var_1c634edb = spawner::simple_spawn_single("server_room_initial_bullet_shooter");
	var_1c634edb endon("death");
	var_6b372cba = GetNode("initial_shooter_node", "targetname");
	var_1c634edb SetGoal(var_6b372cba, 1);
	if(!scene::is_skipping_in_progress())
	{
		var_1c634edb ai::set_ignoreme(1);
		var_1c634edb ai::set_ignoreall(1);
		var_1c634edb.perfectaim = 1;
		level waittill("hash_ab045282");
		var_1c634edb ai::set_ignoreall(0);
		var_1c634edb ai::shoot_at_target("normal", var_e5214b43, "tag_origin");
		var_18ee9c37 = GetEnt("trig_initial_bullet_damage", "targetname");
		var_18ee9c37 util::waittill_notify_or_timeout("damage", 3);
		var_1c634edb.perfectaim = 0;
		var_1c634edb ai::set_ignoreme(0);
		var_1c634edb ClearForcedGoal();
	}
	var_1c634edb.script_accuracy = 0.05;
	var_e5214b43 show();
	var_f3ad8f26 show();
	wait(5);
	var_1c634edb.script_accuracy = 1;
}

/*
	Name: function_8dacf956
	Namespace: namespace_f5edec75
	Checksum: 0xAC877075
	Offset: 0x6EC0
	Size: 0x353
	Parameters: 2
	Flags: None
*/
function function_8dacf956(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("server_room_defend_init");
	objectives::complete("cp_level_biodomes_awaiting_update");
	GetEnt("server_koolaid", "targetname") disconnectpaths();
	level thread function_a78ec4a();
	if(var_74cd64bc)
	{
		namespace_27a45d31::function_bff1a867(str_objective);
		function_a36395f0();
		level function_a91388d2(0);
		level thread scene::init("p7_fxanim_cp_biodomes_server_room_window_break_01_bundle");
		namespace_27a45d31::function_a22e7052(0, "server_room_window_mantle", "script_noteworthy");
		var_777355da = GetEntArray("hallway_turret", "script_noteworthy");
		a_turrets = spawner::simple_spawn(var_777355da);
		Array::run_all(a_turrets, &kill);
		e_clip = GetEnt("turret_hallway_door_ai_clip", "targetname");
		e_clip delete();
		level thread namespace_27a45d31::function_753a859(str_objective);
		level flag::wait_till("all_players_spawned");
		level thread util::delay_notify(1, "server_room_intro_done");
	}
	function_9e3608e3("fxanim_cloud_mountain");
	level thread function_17d3780e();
	level thread function_d813e7f(var_74cd64bc);
	level thread function_564d6426();
	function_2d01c10e();
	foreach(player in level.players)
	{
		if(player laststand::player_is_in_laststand())
		{
			player laststand::auto_revive(player, 0);
		}
	}
	skipto::function_be8adfb8("objective_server_room_defend");
}

/*
	Name: function_17d3780e
	Namespace: namespace_f5edec75
	Checksum: 0x5E2A0D2D
	Offset: 0x7220
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_17d3780e()
{
	level waittill("hash_d065fdd0");
	level notify("hash_5891b40a");
	objectives::set("cp_level_biodomes_defend_server_room", level.var_2fd26037);
}

/*
	Name: function_a78ec4a
	Namespace: namespace_f5edec75
	Checksum: 0x15C918C1
	Offset: 0x7268
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_a78ec4a()
{
	level trigger::wait_till("server_room_all_players_in");
	var_2d1826b2 = GetEnt("turret_hallway_front_door", "targetname");
	var_f2087d4a = GetEnt("turret_hallway_door_clip", "targetname");
	var_f2087d4a LinkTo(var_2d1826b2);
	var_2d1826b2 connectpaths();
	var_2d1826b2 MoveZ(-100, 1);
	var_2d1826b2 waittill("movedone");
	var_2d1826b2 disconnectpaths();
}

/*
	Name: function_2d01c10e
	Namespace: namespace_f5edec75
	Checksum: 0x99424F13
	Offset: 0x7370
	Size: 0xC51
	Parameters: 0
	Flags: None
*/
function function_2d01c10e()
{
	level.var_2e1f1d9a = [];
	level.var_2e1f1d9a[0] = GetEnt("server_room_window_target0", "targetname");
	level.var_2e1f1d9a[1] = GetEnt("server_room_window_target1", "targetname");
	level.var_2e1f1d9a[2] = GetEnt("server_room_window_target2", "targetname");
	level.var_2e1f1d9a[3] = GetEnt("server_room_window_target3", "targetname");
	a_nodes = GetNodeArray("swat_node", "script_noteworthy");
	foreach(node in a_nodes)
	{
		SetEnableNode(node, 0);
	}
	spawner::add_spawn_function_group("server_room_enemy_window", "targetname", &function_229a8bc9);
	spawner::add_spawn_function_group("server_room_enemy_elevator1", "targetname", &function_f5170df1, "server_room");
	spawner::add_spawn_function_group("server_room_enemy_elevator2", "targetname", &function_40ff4c80, "server_room");
	spawner::add_spawn_function_group("server_room_enemy_swat1", "targetname", &function_7b66a225);
	level waittill("hash_d065fdd0");
	level thread dialog::remote("kane_he_s_fine_0");
	savegame::function_5d2cdd99();
	level thread namespace_f1b4cbbc::function_46333a8a();
	playsoundatposition("evt_server_def_walla_1st", (603, 12812, 1184));
	playsoundatposition("evt_server_def_walla_2nd", (900, 12750, 1140));
	level notify("hash_f3c45157");
	wait(2);
	spawner::simple_spawn("server_room_enemy_window");
	spawner::add_spawn_function_ai_group("top_floor", &function_13ed10e0);
	spawn_manager::enable("server_room_wave_2_1");
	level util::waittill_notify_or_timeout("top_floor_breached", 10);
	spawn_manager::enable("server_room_wave_2_2");
	if(level flag::get("top_floor_breached"))
	{
		level thread dialog::function_13b3b16a("plyr_breach_on_the_second_0");
	}
	if(level.players.size < 3)
	{
		function_dbcb1086(1, 15, "top_floor");
	}
	else
	{
		function_dbcb1086(2, 10, "top_floor");
	}
	savegame::function_5d2cdd99();
	level thread dialog::remote("kane_download_at_twenty_p_0");
	playsoundatposition("evt_server_def_walla_3rd", (900, 12750, 1140));
	spawner::add_spawn_function_group("sp_server_room_background", "targetname", &namespace_6f13ba4a::function_76c56ee1);
	spawn_manager::enable("sm_server_room_background");
	level thread function_963807b1();
	level waittill("hash_b4a4fe67");
	if(level.players.size > 2)
	{
		function_dbcb1086(3, 10, "window", "top_floor", "hallway");
	}
	else
	{
		function_dbcb1086(3, 45, "window", "top_floor");
	}
	savegame::function_5d2cdd99();
	level dialog::remote("kane_download_at_forty_pe_0");
	playsoundatposition("evt_server_def_walla_bots_a", (1117, 13871, 1116));
	level function_88e395d2();
	spawner::simple_spawn("server_room_enemy_elevator1");
	if(level.players.size > 2)
	{
		spawner::simple_spawn("server_room_enemy_elevator2");
	}
	level thread function_28931f52();
	if(level.players.size > 2)
	{
		function_dbcb1086(5, 45, "hallway", "top_floor");
	}
	else
	{
		function_dbcb1086(8, 30, "hallway");
	}
	savegame::function_5d2cdd99();
	level function_88e395d2();
	spawner::simple_spawn("server_room_enemy_elevator1");
	if(level.players.size > 2)
	{
		spawner::simple_spawn("server_room_enemy_elevator2");
		wait(2);
		spawn_manager::enable("server_room_topfloor_fodder_manager", &function_d2bb2597);
	}
	level dialog::function_13b3b16a("plyr_more_hostiles_from_t_0");
	level thread dialog::remote("kane_download_at_sixty_pe_0", 1);
	playsoundatposition("evt_server_def_walla_bots_b", (1117, 13871, 1116));
	function_dbcb1086(2, 5, "hallway");
	if(level.players.size > 1)
	{
		spawn_manager::enable("server_room_fodder_manager_stairs", &function_d2bb2597);
	}
	spawn_manager::kill("server_room_topfloor_fodder_manager");
	function_dbcb1086(0, 25, "top_floor", "hallway", "window");
	savegame::function_5d2cdd99();
	level dialog::function_13b3b16a("plyr_we_gotta_get_the_hel_0");
	level thread dialog::remote("kane_download_at_eighty_p_0");
	playsoundatposition("evt_server_def_walla_4th", (1278, 13578, 1276));
	wait(3);
	function_560d15cf();
	wait(3);
	spawn_manager::enable("server_room_final_wave_manager", &function_d2bb2597);
	function_dbcb1086(2, 2, "final_wave");
	spawn_manager::enable("server_room_fodder_manager_stairs", &function_d2bb2597);
	if(level.players.size > 2)
	{
		wait(0.25);
		spawner::simple_spawn("server_room_enemy_hallway_final");
		var_31a99ad4 = GetEntArray("server_room_enemy_hallway_final_ai", "targetname");
		level thread function_ca5f1131(var_31a99ad4, "smoke_grenade_final_hallway1_start");
		wait(2);
		var_31a99ad4 = GetEntArray("server_room_enemy_hallway_final_ai", "targetname");
	}
	function_dbcb1086(3, 30, "hallway", "top_floor", "final_wave");
	spawn_manager::kill("server_room_fodder_manager_stairs");
	if(isalive(level.var_c7a78bed))
	{
		level.var_c7a78bed waittill("death");
		level.var_c7a78bed WarlordInterface::ClearAllPreferedPoints();
	}
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	wait(2);
	savegame::function_5d2cdd99();
	level thread dialog::remote("kane_download_complete_e_0");
	spawn_manager::kill("server_room_final_wave_manager");
	function_7ed3a33e();
	function_dbcb1086(0, 60, "window", "top_floor", "hallway", "final_wave");
	do
	{
		var_70369b18 = 0;
		a_enemies = GetAITeamArray("axis");
		foreach(ai_enemy in a_enemies)
		{
			if(isalive(ai_enemy))
			{
				if(ai_enemy.archetype === "human" || ai_enemy.archetype === "robot")
				{
					var_70369b18 = 1;
				}
			}
		}
		wait(0.05);
	}
	while(!var_70369b18);
	level notify("hash_fd7af6ca");
}

/*
	Name: function_229a8bc9
	Namespace: namespace_f5edec75
	Checksum: 0x29A655D4
	Offset: 0x7FD0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_229a8bc9()
{
	self endon("death");
	self ai::set_behavior_attribute("sprint", 1);
	self util::waittill_any("goal", "near_goal");
	self ai::set_behavior_attribute("sprint", 0);
	str_scene_name = "cin_bio_10_01_serverroom_aie_breakin_enemy0" + self.script_int;
	self scene::init(str_scene_name, self);
	level waittill("hash_14bb5165");
	self scene::Play(str_scene_name, self);
	level flag::wait_till("window_broken");
	self SetGoal(GetEnt("server_room_entrance_goal_volume", "targetname"));
}

/*
	Name: function_ca5f1131
	Namespace: namespace_f5edec75
	Checksum: 0xD66F53CD
	Offset: 0x8100
	Size: 0x1CD
	Parameters: 2
	Flags: None
*/
function function_ca5f1131(a_enemies, var_7bcec858)
{
	var_92792721 = GetWeapon("willy_pete_nd");
	var_aaeb38b0 = struct::get(var_7bcec858, "targetname");
	var_c863acc3 = struct::get(var_aaeb38b0.target, "targetname");
	v_throw = VectorNormalize(var_c863acc3.origin - var_aaeb38b0.origin) * 200;
	foreach(ai in a_enemies)
	{
		if(isalive(ai) && IsWeapon(var_92792721))
		{
			var_c863acc3 FX::Play("smoke_grenade", var_c863acc3.origin);
			break;
			continue;
		}
		var_c863acc3 FX::Play("smoke_grenade", var_c863acc3.origin);
		break;
	}
}

/*
	Name: function_560d15cf
	Namespace: namespace_f5edec75
	Checksum: 0xEFB1610F
	Offset: 0x82D8
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_560d15cf()
{
	var_479db1f9 = struct::get("warlord_smash", "targetname");
	playsoundatposition("evt_breach_warning", var_479db1f9.origin);
	wait(2);
	level thread scene::Play("p7_fxanim_cp_biodomes_warlord_breach_01_bundle");
	PlayRumbleOnPosition("cp_biodomes_server_room_breach_rumble", var_479db1f9.origin);
	spawn_manager::enable("sm_server_room_riot_shield_breach");
	var_bfaffc0d = GetEnt("server_koolaid", "targetname");
	var_bfaffc0d connectpaths();
	var_bfaffc0d delete();
	level thread dialog::remote("kane_hostiles_breaching_t_0", 1);
}

/*
	Name: function_7ed3a33e
	Namespace: namespace_f5edec75
	Checksum: 0xF00783BB
	Offset: 0x8410
	Size: 0x1E1
	Parameters: 0
	Flags: None
*/
function function_7ed3a33e()
{
	var_e17601b = [];
	var_ca9eeae1 = spawner::get_ai_group_ai("window");
	var_4ba8bf11 = spawner::get_ai_group_ai("top_floor");
	var_ef02bf0d = spawner::get_ai_group_ai("hallway");
	var_be5f20b9 = spawner::get_ai_group_ai("final_wave");
	var_e17601b = ArrayCombine(var_ca9eeae1, var_4ba8bf11, 1, 0);
	var_e17601b = ArrayCombine(var_e17601b, var_ef02bf0d, 1, 0);
	var_e17601b = ArrayCombine(var_e17601b, var_be5f20b9, 1, 0);
	e_goal = GetEnt("server_room_window_goal_volume", "targetname");
	foreach(enemy in var_e17601b)
	{
		enemy SetGoal(e_goal, 1);
	}
}

/*
	Name: function_451e55d0
	Namespace: namespace_f5edec75
	Checksum: 0x3458B6AD
	Offset: 0x8600
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_451e55d0(ai_shooter)
{
	ai_shooter endon("death");
	ai_shooter.ignoreall = 1;
	var_7b6710fa = GetEnt("server_room_window_goal_volume", "targetname");
	while(ai_shooter istouching(var_7b6710fa) == 0)
	{
		wait(0.1);
		if(self GetVelocity() == 0)
		{
			ai_shooter SetGoal(GetNode("server_window_node", "targetname"));
		}
	}
	ai_shooter.ignoreall = 0;
}

/*
	Name: function_7f9c1afd
	Namespace: namespace_f5edec75
	Checksum: 0xF04D0E91
	Offset: 0x86F0
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_7f9c1afd()
{
	self endon("death");
	var_bfbe03c6 = GetEnt("server_room_entrance_goal_volume", "targetname");
	if(level flag::get("window_broken") == 0)
	{
		function_451e55d0(self);
		continue;
	}
	self SetGoal(var_bfbe03c6);
	continue;
	while(level flag::get("window_broken") == 0)
	{
		var_68b2835f = ArrayGetClosest(self.origin, level.var_2e1f1d9a);
		self ai::shoot_at_target("normal", var_68b2835f, undefined, 1);
		wait(1);
	}
	self SetGoal(GetNode("server_room_goal", "targetname"), 0, 256);
	self util::waittill_any("goal", "near_goal");
	self SetGoal(var_bfbe03c6);
}

/*
	Name: function_d813e7f
	Namespace: namespace_f5edec75
	Checksum: 0xA0D08424
	Offset: 0x8880
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_d813e7f(var_74cd64bc)
{
	if(level scene::is_active("cin_bio_09_02_accessdrives_1st_sever_end_loop"))
	{
		level scene::stop("cin_bio_09_02_accessdrives_1st_sever_end_loop");
	}
	level waittill("hash_d065fdd0");
	level.var_2fd26037 notify("stop_following");
	level.var_2fd26037 colors::disable();
	level.var_2fd26037.ignoreall = 1;
	level.var_2fd26037 ai::set_ignoreme(1);
	level.var_2fd26037.goalRadius = 1;
	var_f18b8368 = struct::get("hendricks_works_computer", "script_noteworthy");
	if(var_74cd64bc)
	{
		level thread function_a91388d2(1);
	}
	level.var_2fd26037 skipto::function_d9b1ee00(var_f18b8368);
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin);
	level thread scene::init("cin_bio_10_01_serverroom_vign_hack_loop");
}

/*
	Name: function_9ed4c7c0
	Namespace: namespace_f5edec75
	Checksum: 0x3231AA83
	Offset: 0x8A10
	Size: 0x13F
	Parameters: 4
	Flags: None
*/
function function_9ed4c7c0(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("server_room_defend_done");
	objectives::complete("cp_level_biodomes_defend_server_room", level.var_2fd26037);
	objectives::complete("cp_level_biodomes_mainobj_upload_data");
	var_603f4fb1 = GetEnt("server_window", "targetname");
	if(isdefined(var_603f4fb1))
	{
		var_603f4fb1 delete();
	}
	if(level scene::is_active("cin_bio_09_02_accessdrives_1st_sever_end_loop"))
	{
		level scene::stop("cin_bio_09_02_accessdrives_1st_sever_end_loop");
	}
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 ClearForcedGoal();
		level.var_2fd26037.goalRadius = 1024;
	}
}

/*
	Name: function_f5170df1
	Namespace: namespace_f5edec75
	Checksum: 0x3FFDE1EC
	Offset: 0x8B58
	Size: 0x39B
	Parameters: 1
	Flags: None
*/
function function_f5170df1(str_location)
{
	self endon("death");
	var_7da22691 = GetEnt(self.script_noteworthy + "_l", "targetname");
	var_91c4d84f = GetEnt(self.script_noteworthy + "_r", "targetname");
	self ai::set_ignoreall(1);
	self.goalRadius = 1;
	level thread function_8bf5e64e(str_location);
	playsoundatposition("evt_elevator_ding", var_7da22691.origin);
	var_7da22691.var_92bda14 = var_7da22691.origin;
	var_91c4d84f.var_92bda14 = var_91c4d84f.origin;
	var_aa55666b = struct::get(var_7da22691.target, "targetname");
	var_2bc53ed1 = struct::get(var_91c4d84f.target, "targetname");
	var_7da22691.var_ee4758e4 = var_aa55666b.origin;
	var_91c4d84f.var_ee4758e4 = var_2bc53ed1.origin;
	var_7da22691 moveto(var_7da22691.var_ee4758e4, 1);
	var_91c4d84f moveto(var_91c4d84f.var_ee4758e4, 1);
	var_7da22691 waittill("movedone");
	level thread function_c9d85cf6(self, var_7da22691, var_91c4d84f);
	nd_target = GetNode(self.target, "targetname");
	self SetGoal(nd_target);
	function_524e3ee1(self);
	self ai::set_ignoreall(0);
	if(str_location == "cloudmountain")
	{
		self ai::set_behavior_attribute("move_mode", "rusher");
	}
	else
	{
		self util::waittill_any("goal", "near_goal");
		self.goalRadius = 2048;
		self util::waittill_any_timeout(5, "damage", "pain");
		e_volume = GetEnt("server_room_entrance_goal_volume", "targetname");
		self SetGoal(e_volume);
	}
}

/*
	Name: function_40ff4c80
	Namespace: namespace_f5edec75
	Checksum: 0xD02579DB
	Offset: 0x8F00
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_40ff4c80()
{
	self endon("death");
	var_7da22691 = GetEnt(self.script_noteworthy + "_l", "targetname");
	var_91c4d84f = GetEnt(self.script_noteworthy + "_r", "targetname");
	self ai::set_ignoreall(1);
	self.goalRadius = 1;
	var_7da22691 waittill("movedone");
	wait(0.1);
	nd_target = GetNode(self.target, "targetname");
	self SetGoal(nd_target, 0, 200);
	function_524e3ee1(self);
	self ai::set_ignoreall(0);
	self ai::set_behavior_attribute("move_mode", "rusher");
}

/*
	Name: function_88e395d2
	Namespace: namespace_f5edec75
	Checksum: 0x737549F0
	Offset: 0x9070
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_88e395d2()
{
	var_5a7d265d = GetEntArray("turret_elevator_doors", "script_noteworthy");
	foreach(e_elevator_door in var_5a7d265d)
	{
		e_elevator_door connectpaths();
	}
	wait(0.5);
}

/*
	Name: function_8bf5e64e
	Namespace: namespace_f5edec75
	Checksum: 0x62BCCFDA
	Offset: 0x9138
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_8bf5e64e(str_location)
{
	if(level flag::get("elevator_light_on_" + str_location) == 0)
	{
		n_duration = 3;
		level flag::set("elevator_light_on_" + str_location);
		if(str_location == "server_room")
		{
			exploder::exploder_duration("objective_server_room_def_elevator_lights", n_duration);
		}
		else if(str_location == "cloudmountain")
		{
			exploder::exploder_duration("fx_cloudmt_elevator_1st_l", n_duration);
		}
		wait(n_duration);
		level flag::clear("elevator_light_on_" + str_location);
	}
}

/*
	Name: function_28931f52
	Namespace: namespace_f5edec75
	Checksum: 0x69A586BF
	Offset: 0x9230
	Size: 0x1ED
	Parameters: 0
	Flags: None
*/
function function_28931f52()
{
	spawner::simple_spawn("server_room_enemy_swat1");
	if(level.players.size > 2)
	{
		spawner::simple_spawn("server_room_enemy_swat2");
	}
	var_c47e641c = GetEnt("staging_area", "targetname");
	var_a7af994d = 0;
	while(var_a7af994d == 0)
	{
		wait(1);
		var_3635f2f4 = 0;
		var_13f4f150 = GetAIArray("server_room_enemy_swat1_ai", "targetname");
		var_aa5462d4 = var_13f4f150.size;
		foreach(ai in var_13f4f150)
		{
			if(ai istouching(var_c47e641c))
			{
				var_3635f2f4++;
			}
		}
		if(var_aa5462d4 < 4 || var_3635f2f4 >= var_aa5462d4 * 0.7)
		{
			var_a7af994d = 1;
		}
		if(var_3635f2f4 > 0 || var_a7af994d == 1)
		{
			level thread function_ca5f1131(var_13f4f150, "smoke_grenade_final_hallway2_start");
		}
	}
	level notify("hash_70f54e3");
}

/*
	Name: function_7b66a225
	Namespace: namespace_f5edec75
	Checksum: 0x1E91F3C
	Offset: 0x9428
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_7b66a225()
{
	self endon("death");
	self.goalRadius = 1;
	var_c4d6a8bf = GetNode(self.target, "targetname");
	SetEnableNode(var_c4d6a8bf);
	self SetGoal(var_c4d6a8bf, 0, 1);
	level waittill("hash_70f54e3");
	var_ccb21e50 = GetNodeArray("swat_node_" + self.script_noteworthy, "targetname");
	var_aafc13f3 = Array::random(var_ccb21e50);
	self SetGoal(var_aafc13f3, 0, 200);
	SetEnableNode(var_c4d6a8bf, 0);
	self util::waittill_any("goal", "pain", "near_goal", "damage");
	self SetGoal(self.origin, 0, 512);
}

/*
	Name: function_d2bb2597
	Namespace: namespace_f5edec75
	Checksum: 0xF9418C14
	Offset: 0x95A0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d2bb2597()
{
	e_goal = GetEnt("server_room_entrance_goal_volume", "targetname");
	self SetGoal(e_goal);
}

/*
	Name: function_13ed10e0
	Namespace: namespace_f5edec75
	Checksum: 0x877202BC
	Offset: 0x95F8
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_13ed10e0()
{
	self endon("death");
	s_door = struct::get("top_floor_door");
	self SetGoal(s_door.origin, 0, 100);
	self waittill("goal");
	if(level flag::get("top_floor_breached") == 0)
	{
		if(!level scene::is_playing("p7_fxanim_gp_door_broken_open_01_bundle"))
		{
			level thread scene::Play("p7_fxanim_gp_door_broken_open_01_bundle");
		}
		e_door = GetEnt("top_floor_door_clip", "targetname");
		if(isdefined(e_door))
		{
			PlayRumbleOnPosition("cp_biodomes_server_room_top_floor_door_rumble", e_door.origin);
			e_door delete();
		}
		level flag::wait_till("top_floor_breached");
	}
	self SetGoal(GetEnt("server_room_entrance_goal_volume", "targetname"));
}

/*
	Name: function_564d6426
	Namespace: namespace_f5edec75
	Checksum: 0xC42B9F39
	Offset: 0x9790
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_564d6426()
{
	level waittill("hash_1ca4dee3");
	level flag::set("top_floor_breached");
}

/*
	Name: function_963807b1
	Namespace: namespace_f5edec75
	Checksum: 0x4A72E460
	Offset: 0x97C8
	Size: 0x23B
	Parameters: 0
	Flags: None
*/
function function_963807b1()
{
	level endon("hash_6a76551d");
	level notify("hash_14bb5165");
	level thread scene::Play("p7_fxanim_cp_biodomes_server_room_window_break_01_bundle");
	level waittill("hash_53ff6d53");
	var_603f4fb1 = GetEnt("server_window", "targetname");
	foreach(player in level.activePlayers)
	{
		if(player util::is_looking_at(var_603f4fb1, 0.3))
		{
			player thread dialog::function_13b3b16a("plyr_shit_they_re_blowin_0", 0.25);
		}
	}
	level waittill("hash_578006af");
	level flag::set("window_broken");
	if(isdefined(var_603f4fb1))
	{
		Earthquake(1, 1, var_603f4fb1.origin, 1000);
		PlayRumbleOnPosition("cp_biodomes_server_room_window_rumble", var_603f4fb1.origin);
		var_603f4fb1 delete();
	}
	level thread namespace_27a45d31::function_a22e7052(1, "server_room_window_mantle", "script_noteworthy");
	level waittill("hash_99d5298d");
	wait(1);
	level thread function_72d7b33c();
	level thread dialog::remote("kane_hostiles_ziplining_i_0");
}

/*
	Name: function_72d7b33c
	Namespace: namespace_f5edec75
	Checksum: 0x2A08D178
	Offset: 0x9A10
	Size: 0x2FD
	Parameters: 0
	Flags: None
*/
function function_72d7b33c()
{
	level endon("hash_6a76551d");
	level.var_1a0f3432 = 0;
	spawner::simple_spawn("server_room_enemy_rope2_guy1", &function_dde40552);
	wait(RandomFloat(0.5));
	spawner::simple_spawn("server_room_enemy_rope1_guy1", &function_dde40552);
	wait(RandomFloatRange(1, 4));
	spawner::simple_spawn("server_room_enemy_rope2_guy2", &function_dde40552);
	wait(RandomFloat(0.5));
	spawner::simple_spawn("server_room_enemy_rope1_guy2", &function_dde40552);
	wait(RandomFloatRange(1, 4));
	spawner::simple_spawn("server_room_enemy_rope2_guy3", &function_dde40552);
	wait(RandomFloat(0.5));
	spawner::simple_spawn("server_room_enemy_rope1_guy3", &function_dde40552);
	if(level.players.size > 2)
	{
		wait(RandomFloatRange(1, 3));
		spawner::simple_spawn("server_room_enemy_rope2_guy1", &function_dde40552);
		wait(RandomFloat(0.5));
		spawner::simple_spawn("server_room_enemy_rope1_guy1", &function_dde40552);
		wait(RandomFloatRange(1, 3));
		spawner::simple_spawn("server_room_enemy_rope2_guy2", &function_dde40552);
		wait(RandomFloat(0.5));
		spawner::simple_spawn("server_room_enemy_rope1_guy2", &function_dde40552);
	}
	spawner::add_spawn_function_ai_group("top_floor", &function_d2bb2597);
	spawn_manager::enable("server_room_topfloor_fodder_manager");
	level notify("hash_b4a4fe67");
	wait(10);
	level notify("hash_4551b516");
}

/*
	Name: function_dde40552
	Namespace: namespace_f5edec75
	Checksum: 0x95B45CA1
	Offset: 0x9D18
	Size: 0x3AF
	Parameters: 0
	Flags: None
*/
function function_dde40552()
{
	self endon("death");
	s_vtol = struct::get("vtol_dropoff_" + self.script_noteworthy);
	s_landing = struct::get("vtol_landing_" + self.script_noteworthy);
	self ForceTeleport(s_vtol.origin, s_vtol.angles);
	var_c312dab9 = util::spawn_model("tag_origin", s_vtol.origin, s_vtol.angles);
	var_c312dab9 thread scene::Play("cin_gen_traversal_zipline_enemy02_idle", self);
	var_b39127dd = util::spawn_model("wpn_t7_zipline_trolley_prop", self GetTagOrigin("tag_weapon_left"), self GetTagAngles("tag_weapon_left"));
	var_b39127dd LinkTo(self, "tag_weapon_left");
	self thread function_e87de176(Array(var_c312dab9, var_b39127dd));
	n_dist = Distance(s_vtol.origin, s_landing.origin);
	n_time = n_dist / 500;
	var_c312dab9 moveto(s_landing.origin, n_time);
	var_c312dab9 PlayLoopSound("evt_vtol_npc_move");
	self thread function_f879ebc4(var_c312dab9);
	var_c312dab9 waittill("movedone");
	var_c312dab9 StopLoopSound(0.5);
	var_c312dab9 playsound("evt_vtol_npc_detach");
	v_on_navmesh = GetClosestPointOnNavMesh(var_c312dab9.origin, 100, 48);
	if(isdefined(v_on_navmesh))
	{
		var_c312dab9 moveto(v_on_navmesh, 0.25);
	}
	var_c312dab9 scene::Play("cin_gen_traversal_zipline_enemy02_dismount", self);
	self notify("hash_4d91a838");
	self Unlink();
	util::wait_network_frame();
	var_c312dab9 delete();
	var_b39127dd delete();
	self SetGoal(GetEnt("server_room_entrance_goal_volume", "targetname"));
	level waittill("hash_fd7af6ca");
}

/*
	Name: function_f879ebc4
	Namespace: namespace_f5edec75
	Checksum: 0x8AFA3A3A
	Offset: 0xA0D0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_f879ebc4(var_c312dab9)
{
	var_c312dab9 endon("movedone");
	self waittill("death");
	var_c312dab9 StopLoopSound(0.5);
}

/*
	Name: function_e87de176
	Namespace: namespace_f5edec75
	Checksum: 0xDC6E22DF
	Offset: 0xA120
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_e87de176(a_e_cleanup)
{
	self endon("hash_4d91a838");
	self waittill("death");
	namespace_769dc23f::function_72f8596b();
	self Unlink();
	self StartRagdoll(1);
	foreach(entity in a_e_cleanup)
	{
		entity delete();
	}
}

/*
	Name: function_c81145c2
	Namespace: namespace_f5edec75
	Checksum: 0xEEEDD195
	Offset: 0xA218
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_c81145c2()
{
	self ai::set_behavior_attribute("move_mode", "rambo");
}

/*
	Name: function_6a4cb712
	Namespace: namespace_f5edec75
	Checksum: 0xE6F13E08
	Offset: 0xA250
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6a4cb712()
{
	self ai::set_behavior_attribute("move_mode", "rusher");
}

/*
	Name: function_4df7264d
	Namespace: namespace_f5edec75
	Checksum: 0x8557EB50
	Offset: 0xA288
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4df7264d()
{
	self ai::set_behavior_attribute("sprint", 1);
	util::waittill_either("goal", "damage");
	self ai::set_behavior_attribute("sprint", 0);
}

/*
	Name: function_c9d85cf6
	Namespace: namespace_f5edec75
	Checksum: 0x16E41DC3
	Offset: 0xA2F8
	Size: 0xD3
	Parameters: 3
	Flags: None
*/
function function_c9d85cf6(var_9ae72db, var_7da22691, var_91c4d84f)
{
	level flag::wait_till(var_9ae72db.script_noteworthy + "_cleared");
	var_7da22691 moveto(var_7da22691.var_92bda14, 1);
	var_91c4d84f moveto(var_91c4d84f.var_92bda14, 1);
	var_7da22691 waittill("movedone");
	var_7da22691 disconnectpaths();
	var_91c4d84f disconnectpaths();
}

/*
	Name: function_524e3ee1
	Namespace: namespace_f5edec75
	Checksum: 0xDDC644C5
	Offset: 0xA3D8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_524e3ee1(var_9ae72db)
{
	var_9ae72db endon("death");
	t_elevator = GetEnt(var_9ae72db.script_noteworthy + "_elevator_trigger", "targetname");
	while(var_9ae72db istouching(t_elevator) || util::any_player_is_touching(t_elevator, "allies"))
	{
		wait(0.5);
	}
}

/*
	Name: function_6f311542
	Namespace: namespace_f5edec75
	Checksum: 0x72EB2F89
	Offset: 0xA488
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_6f311542()
{
	var_b05a0766 = GetEnt("lobby_elevator_door_01_l", "targetname");
	var_c3cad8fd = GetEnt("lobby_elevator_door_01_r", "targetname");
	var_b05a0766 disconnectpaths();
	var_c3cad8fd disconnectpaths();
}

/*
	Name: function_dbcb1086
	Namespace: namespace_f5edec75
	Checksum: 0xF844D9D3
	Offset: 0xA520
	Size: 0x213
	Parameters: 6
	Flags: None
*/
function function_dbcb1086(var_fc05da5a, n_timer, var_32af39a0, var_a4b6a8db, var_7eb42e72, var_f0bb9dad)
{
	wait(1);
	if(isdefined(var_f0bb9dad))
	{
		while(n_timer > 0 && spawner::get_ai_group_sentient_count(var_32af39a0) + spawner::get_ai_group_sentient_count(var_a4b6a8db) + spawner::get_ai_group_sentient_count(var_7eb42e72) + spawner::get_ai_group_sentient_count(var_f0bb9dad) > var_fc05da5a)
		{
			wait(1);
			n_timer = n_timer - 1;
		}
		break;
	}
	if(isdefined(var_7eb42e72))
	{
		while(n_timer > 0 && spawner::get_ai_group_sentient_count(var_32af39a0) + spawner::get_ai_group_sentient_count(var_a4b6a8db) + spawner::get_ai_group_sentient_count(var_7eb42e72) > var_fc05da5a)
		{
			wait(1);
			n_timer = n_timer - 1;
		}
		break;
	}
	if(isdefined(var_a4b6a8db))
	{
		while(n_timer > 0 && spawner::get_ai_group_sentient_count(var_32af39a0) + spawner::get_ai_group_sentient_count(var_a4b6a8db) > var_fc05da5a)
		{
			wait(1);
			n_timer = n_timer - 1;
		}
		break;
	}
	while(n_timer > 0 && spawner::get_ai_group_sentient_count(var_32af39a0) > var_fc05da5a)
	{
		wait(1);
		n_timer = n_timer - 1;
	}
	wait(3);
}

/*
	Name: function_947a1ae8
	Namespace: namespace_f5edec75
	Checksum: 0xA11DFA95
	Offset: 0xA740
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_947a1ae8()
{
	self endon("death");
	e_volume = GetEnt(self.target, "targetname");
	self SetGoal(e_volume, 1);
}


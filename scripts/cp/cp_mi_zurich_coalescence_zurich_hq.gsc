#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_plaza_battle;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_sacrifice;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_b73b0f52;

/*
	Name: function_9c1fc2fd
	Namespace: namespace_b73b0f52
	Checksum: 0x37C96F76
	Offset: 0xF08
	Size: 0x473
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(str_objective, var_74cd64bc)
{
	level flag::init("hq_decon_deactivated");
	level flag::init("hq_locker_room_open");
	level flag::init("hq_lmg_robots_destroyed");
	spawner::add_spawn_function_group("hq_turrets", "script_noteworthy", &function_5268b119);
	spawner::add_spawn_function_group("hq_stairs_robots_spawn_manager_guy", "targetname", &function_b87db3a3);
	spawner::add_spawn_function_group("hq_lmg_robots", "script_noteworthy", &function_b6d67e55);
	spawner::add_spawn_function_group("hq_defend_robots_spawn_manager_guy", "targetname", &function_56de520f);
	spawner::add_spawn_function_group("hq_stairs_siegebot", "targetname", &function_3b671c19);
	spawner::add_spawn_function_group("hq_elevator_siegebot", "targetname", &function_e877afeb);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_8e9083ff::function_da579a5d(str_objective, 0);
		level thread function_44ee5cb7();
		scene::add_scene_func("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle", &namespace_8e9083ff::function_162b9ea0, "init");
		level scene::init("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle");
		level clientfield::set("hq_amb", 1);
		load::function_a2995f22();
	}
	if(isdefined(level.BZM_ZURICHDialogue1_4Callback))
	{
		level thread [[level.BZM_ZURICHDialogue1_4Callback]]();
	}
	level thread namespace_67110270::function_ce97ecac();
	function_bab1ff00("hq_entrance_umbra_gate", 1);
	var_306008cd = namespace_8e9083ff::function_b0dd51f4("hq_iff_override_robots", "script_string");
	level.var_3d556bcd thread function_87324847();
	exploder::stop_exploder("streets_tower_wasp_swarm");
	level thread function_371b16ae();
	level thread function_f8e4b283();
	level thread function_c5e1700c();
	level thread namespace_8e9083ff::function_2361541e("hq");
	level thread namespace_8e9083ff::function_c049667c(1);
	level thread function_f05c4095();
	level thread function_4cf537aa();
	level thread function_9006ed1d();
	level thread function_68b74f29();
	level thread function_c198b862();
	savegame::function_5d2cdd99();
	level thread function_19d7c072();
	level thread function_51e389ee(var_74cd64bc);
	level function_457da6c2();
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_44ee5cb7
	Namespace: namespace_b73b0f52
	Checksum: 0x194AFD98
	Offset: 0x1388
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_44ee5cb7()
{
	level endon("game_ended");
	while(1)
	{
		wait(1);
		playsoundatposition("amb_troop_alarm", (-8326, 37739, 559));
	}
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_b73b0f52
	Checksum: 0xEBB41828
	Offset: 0x13D8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_8e9083ff::function_4d032f25(0);
}

/*
	Name: function_68b74f29
	Namespace: namespace_b73b0f52
	Checksum: 0x67CCF0F7
	Offset: 0x1420
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_68b74f29()
{
	level.var_3d556bcd thread function_2436a71e();
	level.var_3d556bcd dialog::say("kane_this_is_the_heart_of_0", 1);
	level dialog::function_13b3b16a("plyr_it_won_t_come_to_tha_0", 1);
	level flag::wait_till("flag_hq_security_room_clear");
	level.var_3d556bcd dialog::say("kane_how_could_hendricks_0", 1);
	level dialog::function_13b3b16a("plyr_i_don_t_think_there_0", 1);
}

/*
	Name: function_c198b862
	Namespace: namespace_b73b0f52
	Checksum: 0xD9F280B3
	Offset: 0x1508
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c198b862()
{
	namespace_8e9083ff::function_1b3dfa61("enter_facility_vo_struct_trig", undefined, 256);
	level dialog::function_13b3b16a("plyr_it_s_just_like_in_si_0");
}

/*
	Name: function_2436a71e
	Namespace: namespace_b73b0f52
	Checksum: 0x5C5AF85F
	Offset: 0x1558
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2436a71e()
{
	self lookAtPos(struct::get("hq_kane_lookat_pos").origin);
	wait(4);
	self lookAtPos();
}

/*
	Name: function_19d7c072
	Namespace: namespace_b73b0f52
	Checksum: 0xF1A96A55
	Offset: 0x15B0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_19d7c072()
{
	var_e26726e5 = GetEnt("hq_atrium_door_01", "targetname");
	var_e26726e5.v_start = var_e26726e5.origin;
	var_9a7f401d = GetEnt("hq_atrium_door_02", "targetname");
	var_9a7f401d.v_start = var_9a7f401d.origin;
	e_door_clip = GetEnt("hq_atrium_door_clip", "targetname");
	var_e26726e5 moveto(var_e26726e5.origin + VectorScale((0, 0, 1), 44), 0.5);
	var_9a7f401d moveto(var_9a7f401d.origin + VectorScale((0, 0, -1), 44), 0.5);
	var_9a7f401d waittill("movedone");
	e_door_clip notsolid();
	e_door_clip connectpaths();
	trigger::wait_till("hq_exit_zone_trig");
	var_e26726e5 moveto(var_e26726e5.v_start, 0.05);
	var_9a7f401d moveto(var_9a7f401d.v_start, 0.05);
	e_door_clip solid();
	e_door_clip disconnectpaths();
}

/*
	Name: function_f05c4095
	Namespace: namespace_b73b0f52
	Checksum: 0x2DED8329
	Offset: 0x17C8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_f05c4095()
{
	level thread function_6c64938e();
	trigger::wait_till("trig_hq_robots_start");
	level thread namespace_67110270::function_232f4de7();
	spawn_manager::enable("hq_defend_robots_spawn_manager");
	spawn_manager::function_347e835a("hq_stairs_robots_spawn_manager");
	level flag::wait_till("hq_lmg_robots_destroyed");
	spawn_manager::function_72e3dd35("hq_stairs_robots_spawn_manager");
	level flag::set("flag_hq_security_room_move_upstairs");
	spawn_manager::function_72e3dd35("hq_defend_robots_spawn_manager");
	level flag::set("flag_hq_security_room_clear");
	savegame::function_5d2cdd99();
}

/*
	Name: function_4cf537aa
	Namespace: namespace_b73b0f52
	Checksum: 0xCB2DFD0E
	Offset: 0x18F0
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_4cf537aa()
{
	level flag::wait_till("flag_hq_siege_bot_encounter_start");
	spawn_manager::enable("hq_stairs_siegebot_spawn_manager");
	spawn_manager::function_347e835a("hq_stairs_siegebot_spawn_manager");
	Array::thread_all(spawn_manager::get_ai("hq_stairs_siegebot_spawn_manager"), &function_47e79f7);
	level flag::wait_till("flag_start_elevator_siege_bot");
	spawn_manager::enable("hq_elevator_siegebot_spawn_manager");
	spawn_manager::function_347e835a("hq_elevator_siegebot_spawn_manager");
	level function_66b77465();
	Array::thread_all(spawn_manager::get_ai("hq_elevator_siegebot_spawn_manager"), &function_47e79f7);
	spawn_manager::function_72e3dd35("hq_elevator_siegebot_spawn_manager");
	spawn_manager::function_72e3dd35("hq_stairs_siegebot_spawn_manager");
	savegame::function_5d2cdd99();
	spawn_manager::enable("hq_robots_lab_reinforcement_spawn_manager");
	level flag::set("flag_hq_siege_bot_dead");
	spawn_manager::function_347e835a("hq_robots_lab_reinforcement_spawn_manager");
	level thread function_e6db4b20();
	spawn_manager::function_72e3dd35("hq_robots_lab_reinforcement_spawn_manager");
	level thread namespace_67110270::function_bb8ce831();
	level flag::set("flag_hq_move_to_airlock");
}

/*
	Name: function_457da6c2
	Namespace: namespace_b73b0f52
	Checksum: 0x57C0E88A
	Offset: 0x1B20
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_457da6c2()
{
	level flag::set("hq_locker_room_open");
	level thread function_2950b33d();
	trigger::wait_till("hq_exit_zone_trig");
	level waittill("hash_7871b80b");
}

/*
	Name: function_9006ed1d
	Namespace: namespace_b73b0f52
	Checksum: 0xB5644F1F
	Offset: 0x1B88
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_9006ed1d()
{
	Array::thread_all(GetEntArray("trig_hq_break_glass", "targetname"), &function_187d0cba);
}

/*
	Name: function_187d0cba
	Namespace: namespace_b73b0f52
	Checksum: 0xDF62ED95
	Offset: 0x1BD8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_187d0cba()
{
	level endon("hash_13a0547d");
	self waittill("trigger", e_who);
	e_who util::break_glass(200);
}

/*
	Name: function_6c64938e
	Namespace: namespace_b73b0f52
	Checksum: 0x33F31C48
	Offset: 0x1C28
	Size: 0x181
	Parameters: 0
	Flags: None
*/
function function_6c64938e()
{
	trigger::wait_till("trig_hq_robots_start");
	for(i = 1; i < 3; i++)
	{
		var_6a2c8ee9 = GetEntArray("security_checkpoint_door_0" + i, "targetname");
		foreach(var_530f952d in var_6a2c8ee9)
		{
			if(isdefined(var_530f952d.target))
			{
				var_73c9db2b = struct::get(var_530f952d.target, "targetname");
				var_530f952d moveto(var_73c9db2b.origin, 1.5);
				var_530f952d thread function_eaedd1eb();
			}
		}
		wait(3);
	}
}

/*
	Name: function_eaedd1eb
	Namespace: namespace_b73b0f52
	Checksum: 0xC06FAAE6
	Offset: 0x1DB8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_eaedd1eb()
{
	trigger::wait_till("hq_exit_zone_trig");
	self delete();
}

/*
	Name: function_66b77465
	Namespace: namespace_b73b0f52
	Checksum: 0x5C2C9C5A
	Offset: 0x1DF8
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_66b77465()
{
	e_door = GetEnt("siegebot_elevator_door", "targetname");
	e_door MoveZ(140, 3);
	e_door playsound("evt_siegebot_elevator_door");
	e_door thread function_a8bf6ebc();
	e_door waittill("movedone");
	level notify("hash_99b0e05f");
}

/*
	Name: function_a8bf6ebc
	Namespace: namespace_b73b0f52
	Checksum: 0x9028CE7F
	Offset: 0x1EA8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a8bf6ebc()
{
	trigger::wait_till("hq_exit_zone_trig");
	self delete();
}

/*
	Name: function_51e389ee
	Namespace: namespace_b73b0f52
	Checksum: 0xDA3AF1BF
	Offset: 0x1EE8
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_51e389ee(var_74cd64bc)
{
	objectives::set("cp_level_zurich_apprehend_obj");
	objectives::breadcrumb("hq_security_approach_breadcrumb_trigger");
	level function_196e4f52();
	level flag::wait_till("flag_hq_siege_bot_dead");
	objectives::breadcrumb("hq_lab_exit_breadcrumb_trig");
	objectives::breadcrumb("hq_locker_room_breadcrumb_trig");
	objectives::breadcrumb("hq_decon_breadcrumb_trig");
	level flag::wait_till_all(Array("flag_hq_set_sacrifice_obj", "sacrifice_kane_activation_ready"));
	objectives::Hide("cp_level_zurich_apprehend_obj");
	objectives::set("cp_level_zurich_use_terminal_obj");
}

/*
	Name: function_196e4f52
	Namespace: namespace_b73b0f52
	Checksum: 0x99F29EAC
	Offset: 0x2010
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_196e4f52()
{
	level endon("hash_ad88abee");
	level flag::wait_till("flag_hq_security_room_move_upstairs");
	objectives::breadcrumb("hq_lab_approach_breadcrumb_trig");
}

/*
	Name: function_47e79f7
	Namespace: namespace_b73b0f52
	Checksum: 0xB50330FF
	Offset: 0x2060
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_47e79f7()
{
	objectives::Hide("cp_level_zurich_apprehend_obj");
	objectives::set("cp_level_zurich_destroy_pawws_obj", self);
	objectives::set("cp_level_zurich_low_destroy", self);
	self waittill("death");
	objectives::hide_for_target("cp_level_zurich_destroy_pawws_obj", self);
	objectives::complete("cp_level_zurich_low_destroy", self);
	objectives::show("cp_level_zurich_apprehend_obj");
}

/*
	Name: function_c5e1700c
	Namespace: namespace_b73b0f52
	Checksum: 0x884BF8A6
	Offset: 0x2110
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_c5e1700c()
{
	GetEnt("trig_zurich_hq_door_hack", "targetname") setcursorhint("HINT_NOICON");
}

/*
	Name: function_e2ca7f8f
	Namespace: namespace_b73b0f52
	Checksum: 0x525ADF50
	Offset: 0x2158
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e2ca7f8f()
{
	var_5cca3f31 = GetEnt("trig_zurich_hq_door_hack", "targetname");
	var_5cca3f31 namespace_8e9083ff::function_d1996775();
	level function_e6db4b20();
	level flag::set("flag_hq_hack_door_open");
}

/*
	Name: function_e6db4b20
	Namespace: namespace_b73b0f52
	Checksum: 0x184D3819
	Offset: 0x21E0
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_e6db4b20()
{
	var_adad709 = GetEnt("hq_siegebot_exitdoor", "targetname");
	var_adad709.v_start = var_adad709.origin;
	var_adad709.v_end = var_adad709.origin + VectorScale((0, 0, 1), 128);
	n_open_time = 2;
	var_adad709 playsound("evt_decon_door_open");
	var_adad709 moveto(var_adad709.v_end, n_open_time);
	var_adad709 thread function_45d5a571();
	wait(n_open_time / 2);
}

/*
	Name: function_45d5a571
	Namespace: namespace_b73b0f52
	Checksum: 0x492AD9D1
	Offset: 0x22D8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_45d5a571()
{
	trigger::wait_till("hq_exit_zone_trig");
	self delete();
}

/*
	Name: function_2950b33d
	Namespace: namespace_b73b0f52
	Checksum: 0x96D88223
	Offset: 0x2318
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_2950b33d()
{
	level thread function_ae937789();
	level flag::wait_till("hq_decon_active");
	level clientfield::set("decon_spray", 1);
	wait(12);
	level function_3319c9ae();
	level flag::set("flag_decon_door_open");
	level clientfield::set("decon_spray", 0);
	level namespace_68404a06::function_d3eae9b7();
}

/*
	Name: function_ae937789
	Namespace: namespace_b73b0f52
	Checksum: 0x34360400
	Offset: 0x23F0
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_ae937789()
{
	var_adad709 = GetEnt("hq_decon_door_entrance", "targetname");
	e_clip = GetEnt("hq_decon_door_entrance_clip", "targetname");
	e_clip notsolid();
	level flag::wait_till("hq_decon_active");
	e_clip solid();
	var_adad709 MoveZ(-86, 2);
	var_adad709 playsound("evt_decon_door_close");
	wait(2);
	spawn_manager::kill("hq_stairs_robots_spawn_manager", 1);
	a_ai_enemies = GetAITeamArray();
	Array::thread_all(a_ai_enemies, &namespace_8e9083ff::function_48463818);
	level notify("hash_7871b80b");
}

/*
	Name: function_3319c9ae
	Namespace: namespace_b73b0f52
	Checksum: 0x7563F763
	Offset: 0x2568
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_3319c9ae()
{
	var_adad709 = GetEnt("hq_decon_door", "targetname");
	var_adad709.v_start = var_adad709.origin;
	var_adad709.v_end = var_adad709.origin + VectorScale((0, 0, 1), 128);
	n_open_time = 2;
	var_adad709 playsound("evt_decon_door_open");
	var_adad709 moveto(var_adad709.v_end, n_open_time);
}

/*
	Name: function_b52a0060
	Namespace: namespace_b73b0f52
	Checksum: 0x4B98673C
	Offset: 0x2640
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b52a0060()
{
	var_adad709 = GetEnt("hq_decon_door", "targetname");
	var_adad709 playsound("evt_decon_door_close");
	var_adad709 moveto(var_adad709.v_start, 0.5);
}

/*
	Name: function_8cb99e45
	Namespace: namespace_b73b0f52
	Checksum: 0xAE950EAF
	Offset: 0x26C0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_8cb99e45()
{
	var_107d713c = GetEnt("hq_decon_door", "targetname");
	var_2049505e = GetEnt("hq_decon_door_entrance", "targetname");
	e_clip = GetEnt("hq_decon_door_entrance_clip", "targetname");
	var_107d713c delete();
	var_2049505e delete();
	e_clip delete();
}

/*
	Name: function_b87db3a3
	Namespace: namespace_b73b0f52
	Checksum: 0x680ADA65
	Offset: 0x27A0
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_b87db3a3()
{
	self endon("death");
	self endon("hash_63f76929");
	self thread function_ee7e8dd7();
	if(isdefined(self.script_noteworthy))
	{
		for(i = 1; i < 3; i++)
		{
			if(self.script_noteworthy == "security_robot_0" + i)
			{
				self waittill("goal");
				self ai::set_goal("security_room_attack_node_0" + i, "targetname");
			}
		}
	}
}

/*
	Name: function_b6d67e55
	Namespace: namespace_b73b0f52
	Checksum: 0xE5B109B4
	Offset: 0x2860
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_b6d67e55()
{
	if(!isdefined(level.var_64f4feb8))
	{
		level.var_64f4feb8 = 0;
	}
	self waittill("death");
	level.var_64f4feb8++;
	if(level.var_64f4feb8 == 2)
	{
		level flag::set("hq_lmg_robots_destroyed");
	}
}

/*
	Name: function_56de520f
	Namespace: namespace_b73b0f52
	Checksum: 0xB2F39724
	Offset: 0x28C8
	Size: 0xBD
	Parameters: 0
	Flags: None
*/
function function_56de520f()
{
	self endon("death");
	self endon("hash_63f76929");
	self thread function_ee7e8dd7();
	if(isdefined(self.script_noteworthy))
	{
		for(i = 1; i < 3; i++)
		{
			if(self.script_noteworthy == "security_defend_robot_0" + i)
			{
				level flag::wait_till("flag_hq_security_room_move_upstairs");
				self ai::set_goal("security_room_defend_node_0" + i, "script_noteworthy");
			}
		}
	}
}

/*
	Name: function_ee7e8dd7
	Namespace: namespace_b73b0f52
	Checksum: 0xD6A788AB
	Offset: 0x2990
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_ee7e8dd7()
{
	self endon("death");
	trigger::wait_till("trig_move_to_lab");
	self notify("hash_63f76929");
	self ai::set_goal("hq_lab_defend_volume", "targetname");
}

/*
	Name: function_3b671c19
	Namespace: namespace_b73b0f52
	Checksum: 0x452DFFAC
	Offset: 0x29F0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_3b671c19()
{
	level endon("hash_ae9347d9");
	if(level.players.size < 3)
	{
		var_78a0d7c6 = self.health / 2;
		while(self.health > var_78a0d7c6)
		{
			wait(1);
		}
	}
	else
	{
		self waittill("death");
	}
	level flag::set("flag_start_elevator_siege_bot");
}

/*
	Name: function_e877afeb
	Namespace: namespace_b73b0f52
	Checksum: 0x494C013F
	Offset: 0x2A88
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e877afeb()
{
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self scene::init("cin_zur_02_001_siegebot_elevator_entrance", self);
	level waittill("hash_99b0e05f");
	self scene::Play("cin_zur_02_001_siegebot_elevator_entrance", self);
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
}

/*
	Name: function_5268b119
	Namespace: namespace_b73b0f52
	Checksum: 0xD6F45F5E
	Offset: 0x2B40
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_5268b119()
{
	self thread turret_deactivate();
}

/*
	Name: turret_deactivate
	Namespace: namespace_b73b0f52
	Checksum: 0x332C6C6B
	Offset: 0x2B68
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function turret_deactivate()
{
	self ai::set_ignoreall(1);
	self cybercom::function_59965309("cybercom_hijack");
}

/*
	Name: function_e9914039
	Namespace: namespace_b73b0f52
	Checksum: 0x8C4282CF
	Offset: 0x2BB0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e9914039()
{
	self ai::set_ignoreall(0);
	self cybercom::function_a1f70a02("cybercom_hijack");
}

/*
	Name: spawn_turrets
	Namespace: namespace_b73b0f52
	Checksum: 0x5C7D45AB
	Offset: 0x2BF8
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function spawn_turrets()
{
	var_f765f588 = self;
	if(!IsArray(self))
	{
		var_f765f588 = Array(self);
	}
	var_53acb497 = [];
	foreach(var_f074d981 in var_f765f588)
	{
		var_53acb497[n_index] = spawner::simple_spawn_single(var_f074d981);
		var_53acb497[n_index] thread turret_think();
		wait(0.05);
	}
	return var_53acb497;
}

/*
	Name: turret_think
	Namespace: namespace_b73b0f52
	Checksum: 0x2D2D980
	Offset: 0x2D10
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function turret_think()
{
	self endon("death");
	n_min = 0.3;
	n_max = 1.3;
	var_39178da3 = RandomFloatRange(n_min, n_max);
	n_move_time = 2;
	self.var_61ba68c8 = util::spawn_model("tag_origin", self.origin, self.angles);
	self.var_61ba68c8.script_objective = self.script_objective;
	var_265380bb = struct::get(self.target);
	self LinkTo(self.var_61ba68c8, "tag_origin");
	self.var_61ba68c8 moveto(var_265380bb.origin, n_move_time);
	self.var_61ba68c8 waittill("movedone");
	wait(var_39178da3);
	self function_e9914039();
}

/*
	Name: function_525e4268
	Namespace: namespace_b73b0f52
	Checksum: 0x92BD22AC
	Offset: 0x2E78
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_525e4268()
{
	var_53acb497 = self;
	if(!IsArray(self))
	{
		var_53acb497 = Array(self);
	}
	foreach(vh_turret in self)
	{
		if(isalive(vh_turret))
		{
			vh_turret.delete_on_death = 1;
			vh_turret notify("death");
			if(!isalive(vh_turret))
			{
				vh_turret delete();
			}
		}
	}
}

/*
	Name: function_87324847
	Namespace: namespace_b73b0f52
	Checksum: 0x5FFF067C
	Offset: 0x2FA0
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function function_87324847()
{
	self thread function_f3b250de();
	self ai::set_behavior_attribute("forceTacticalWalk", 1);
	self setgoalnode(GetNode("plaza_battle_kane_lobby_node", "targetname"));
	wait(3);
	self colors::set_force_color("r");
	trigger::use("trig_color_kane_hq_start");
	level flag::wait_till("flag_hq_kane_enter_security_room");
	self ai::set_behavior_attribute("forceTacticalWalk", 0);
	trigger::use("trig_color_kane_hq_lobby");
	level flag::wait_till("flag_hq_robots_start");
	trigger::use("trig_color_kane_hq_lobby_fight");
	level function_ee4479b3();
	level flag::wait_till_any(Array("flag_hq_security_room_clear", "flag_hq_passed_turrets"));
	trigger::use("trig_color_kane_hq_siege_bot_fight");
	level flag::wait_till("flag_hq_siege_bot_dead");
	trigger::use("trig_color_kane_hq_siege_bot_fight_done");
	level flag::wait_till_any(Array("flag_hq_move_to_airlock", "flag_hq_move_kane_to_locker_room"));
	trigger::use("trig_color_kane_hq_door_hack");
	self battlechatter::function_d9f49fba(0);
	if(level flag::get("flag_hq_move_kane_to_locker_room"))
	{
		wait(1);
	}
	else
	{
		level flag::wait_till("flag_hq_move_kane_to_locker_room");
	}
	trigger::use("trig_color_kane_hq_decon");
	level flag::wait_till("flag_hq_move_kane_into_decon");
	trigger::use("trig_color_kane_hq_in_decon");
	level flag::wait_till("flag_decon_door_open");
	trigger::use("trig_color_kane_lab_interior");
}

/*
	Name: function_ee4479b3
	Namespace: namespace_b73b0f52
	Checksum: 0x89A84EA5
	Offset: 0x32A8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ee4479b3()
{
	level endon("hash_ad88abee");
	level endon("hash_f95b7888");
	level flag::wait_till("flag_hq_security_room_move_upstairs");
	trigger::use("trig_color_kane_hq_security_room_upstairs");
}

/*
	Name: function_f3b250de
	Namespace: namespace_b73b0f52
	Checksum: 0x3A74B1CF
	Offset: 0x3300
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f3b250de()
{
	level flag::wait_till("flag_hq_set_kane_ignoreall");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
}

/*
	Name: function_371b16ae
	Namespace: namespace_b73b0f52
	Checksum: 0x4FCF3DB4
	Offset: 0x3360
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_371b16ae()
{
	namespace_8e9083ff::function_1b3dfa61("hq_start_ravens_struct_trig", undefined, 600, 512);
	playsoundatposition("mus_coalescence_theme_lobby", (-8698, 38395, 594));
}

/*
	Name: function_f8e4b283
	Namespace: namespace_b73b0f52
	Checksum: 0x5CC79A3A
	Offset: 0x33B8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_f8e4b283()
{
	level scene::add_scene_func("cin_gen_ambient_raven_idle_eating_raven", &namespace_8e9083ff::function_e547724d, "init");
	level scene::add_scene_func("cin_gen_ambient_raven_idle", &namespace_8e9083ff::function_e547724d, "init");
	level scene::add_scene_func("cin_gen_traversal_raven_fly_away", &namespace_8e9083ff::function_86b1cd8a);
	level thread function_762c95f0("hq_start_ravens", 600, 512);
	level thread function_762c95f0("hq_locker_room_ravens", 466, 128);
	level thread function_6e7da34e();
}

/*
	Name: function_762c95f0
	Namespace: namespace_b73b0f52
	Checksum: 0xA637EFA6
	Offset: 0x34B8
	Size: 0x289
	Parameters: 3
	Flags: None
*/
function function_762c95f0(var_af782668, var_4d9cdec3, var_9895c1a4)
{
	namespace_8e9083ff::function_1b3dfa61(var_af782668 + "_struct_trig", undefined, var_4d9cdec3, var_9895c1a4);
	a_scenes = struct::get_array(var_af782668);
	foreach(s_scene in a_scenes)
	{
		s_scene util::delay(RandomFloat(0.15), undefined, &scene::Play);
	}
	wait(0.5);
	Array::thread_all(level.players, &clientfield::increment_to_player, "postfx_hallucinations", 1);
	wait(0.5);
	foreach(player in level.players)
	{
		visionset_mgr::activate("visionset", "cp_zurich_hallucination", player);
	}
	wait(1.8);
	foreach(player in level.players)
	{
		visionset_mgr::deactivate("visionset", "cp_zurich_hallucination", player);
	}
}

/*
	Name: function_6e7da34e
	Namespace: namespace_b73b0f52
	Checksum: 0xEC60EBBA
	Offset: 0x3750
	Size: 0x313
	Parameters: 0
	Flags: None
*/
function function_6e7da34e()
{
	a_scenes = struct::get_array("hq_airlock_ravens");
	Array::thread_all(a_scenes, &scene::init);
	level flag::wait_till("hq_decon_active");
	wait(7);
	Array::thread_all(level.players, &clientfield::increment_to_player, "postfx_hallucinations", 1);
	wait(0.8);
	foreach(player in level.players)
	{
		visionset_mgr::activate("visionset", "cp_zurich_hallucination", player);
	}
	level notify("hash_755edaa4");
	foreach(s_scene in a_scenes)
	{
		s_scene util::delay(RandomFloat(1), undefined, &scene::Play);
	}
	level flag::wait_till("flag_decon_door_open");
	Array::thread_all(level.players, &clientfield::increment_to_player, "postfx_hallucinations", 1);
	wait(0.8);
	foreach(player in level.players)
	{
		visionset_mgr::deactivate("visionset", "cp_zurich_hallucination", player);
	}
	wait(0.5);
	Array::thread_all(a_scenes, &scene::stop);
}


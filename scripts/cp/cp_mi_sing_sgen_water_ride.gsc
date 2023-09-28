#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_bfe2abac;

/*
	Name: function_b2f17f19
	Namespace: namespace_bfe2abac
	Checksum: 0x690B9846
	Offset: 0x710
	Size: 0x483
	Parameters: 2
	Flags: None
*/
function function_b2f17f19(str_objective, var_74cd64bc)
{
	spawner::add_spawn_function_group("underwater_rail_bot", "script_noteworthy", &function_d1342558);
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.var_2fd26037 colors::set_force_color("r");
	var_1787c657 = GetEnt("water_ride_explosion_damage", "targetname");
	var_1787c657 TriggerEnable(0);
	if(var_74cd64bc)
	{
		level clientfield::set("w_underwater_state", 1);
		spawner::add_global_spawn_function("axis", &namespace_cba4cc55::function_a527e6f9);
		level scene::init("p7_fxanim_cp_sgen_door_hendricks_explosion_bundle");
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::complete("cp_level_sgen_descend_into_core");
		objectives::complete("cp_level_sgen_goto_signal_source");
		objectives::complete("cp_level_sgen_goto_server_room");
		objectives::complete("cp_level_sgen_confront_pallas");
		objectives::set("cp_level_sgen_get_to_surface");
		t_trigger = GetEnt("uw_rail_sequence_start", "targetname");
		level scene::skipto_end("cin_sgen_23_01_underwater_battle_vign_swim_hendricks_traverse_room", level.var_2fd26037);
		load::function_a2995f22();
		foreach(player in level.players)
		{
			player clientfield::set_to_player("water_motes", 1);
			player thread hazard::function_e9b126ef();
		}
	}
	SetDvar("player_swimTime", 5000);
	level thread vo();
	objective_trigger = GetEnt("uw_rail_sequence_start", "targetname");
	function_1cbc58b8();
	spawn_manager::kill("uw_battle_spawnmanager", 1);
	var_56cfb137 = GetEntArray("water_ride_debris_trigger", "targetname");
	Array::thread_all(var_56cfb137, &function_c1262746);
	var_15d31d8e = GetEntArray("uw_rail_split_trigger", "targetname");
	Array::thread_all(var_15d31d8e, &function_a6779dd4);
	var_b98e5eb8 = GetEntArray("water_ride_static_hurt_trigger", "targetname");
	Array::thread_all(var_b98e5eb8, &function_29a04809);
}

/*
	Name: function_88fd81d3
	Namespace: namespace_bfe2abac
	Checksum: 0xC14AD3D4
	Offset: 0xBA0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_88fd81d3(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_1cbc58b8
	Namespace: namespace_bfe2abac
	Checksum: 0xA483068B
	Offset: 0xBD0
	Size: 0x269
	Parameters: 0
	Flags: None
*/
function function_1cbc58b8()
{
	level flag::wait_till("all_players_spawned");
	t_trigger = GetEnt("uw_rail_sequence_start", "targetname");
	level thread objectives::breadcrumb("uw_rail_sequence_start");
	t_trigger namespace_cba4cc55::function_36a6e271();
	level notify("hash_e48dacea");
	level scene::Play("cin_sgen_23_02_blow_door_vign_start", level.var_2fd26037);
	level thread objectives::breadcrumb("uw_rail_sequence_start");
	t_trigger waittill("trigger");
	var_bd31ad19 = GetEnt("blow_wall_charge", "targetname");
	playFX(level._effect["depth_charge_explosion"], var_bd31ad19.origin);
	var_1787c657 = GetEnt("water_ride_explosion_damage", "targetname");
	var_1787c657 TriggerEnable(1);
	level thread scene::Play("p7_fxanim_cp_sgen_door_hendricks_explosion_bundle");
	level thread scene::Play("cin_sgen_23_02_blow_door_vign_end", level.var_2fd26037);
	wait(0.1);
	foreach(player in level.players)
	{
		player thread function_e5dfd798(n_index);
	}
}

/*
	Name: vo
	Namespace: namespace_bfe2abac
	Checksum: 0x69686709
	Offset: 0xE48
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function vo()
{
	level endon("hash_e48dacea");
	wait(RandomFloatRange(8, 13));
	level.var_2fd26037 dialog::say("hend_regroup_on_me_our_o_0");
	wait(RandomFloatRange(8, 13));
	level.var_2fd26037 dialog::say("hend_alright_stay_on_my_0");
}

/*
	Name: function_e5dfd798
	Namespace: namespace_bfe2abac
	Checksum: 0xCC02534E
	Offset: 0xED8
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_e5dfd798(n_index)
{
	self hazard::function_60455f28("o2");
	self.var_368a5fed = 0;
	self.var_71062982 = 1;
	self.var_d7515e0 = n_index;
	var_fdbc04e0 = GetEntArray("player_rail_vehicle", "targetname");
	var_64baf900 = var_fdbc04e0[n_index];
	nd_path_start = GetVehicleNode(var_64baf900.target, "targetname");
	self.var_36cc7e41 = spawner::simple_spawn_single(var_64baf900);
	self.var_36cc7e41 SetAcceleration(1000);
	self.var_36cc7e41.origin = self.origin;
	self SetPlayerAngles(self.var_36cc7e41.angles);
	self PlayerLinkToDelta(self.var_36cc7e41, undefined, 0.5, 30, 30, 30, 30);
	var_658763e6 = n_index * 0.5;
	n_time = 0;
	self PlayRumbleOnEntity("cp_sgen_c4_explode");
	while(n_time < var_658763e6)
	{
		n_time = n_time + 0.5;
		wait(0.5);
		self PlayRumbleOnEntity("cp_sgen_c4_explode");
	}
	self.var_36cc7e41 vehicle::get_on_path(nd_path_start);
	self thread function_6a35acee(n_index);
}

/*
	Name: function_6a35acee
	Namespace: namespace_bfe2abac
	Checksum: 0x30CD35B4
	Offset: 0x1130
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_6a35acee(n_index)
{
	sndent = spawn("script_origin", (0, 0, 0));
	sndent PlayLoopSound("evt_sgen_waterrail_loop", 1.5);
	self thread function_79c98cb(n_index);
	self util::magic_bullet_shield();
	self.var_36cc7e41 waittill("hash_a93c476");
	self util::stop_magic_bullet_shield();
	self clientfield::set_to_player("tp_water_sheeting", 0);
	self thread scene::stop("cin_sgen_24_01_ride_vign_body_player_flail_" + self.var_d7515e0);
	skipto::function_be8adfb8("underwater_rail");
	sndent delete();
}

/*
	Name: function_c1262746
	Namespace: namespace_bfe2abac
	Checksum: 0xCA4BE3CC
	Offset: 0x1268
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_c1262746()
{
	t_hurt_trigger = GetEnt(self.target, "targetname");
	var_5cbbdfca = GetEnt(t_hurt_trigger.target, "targetname");
	s_destination = struct::get(var_5cbbdfca.target, "targetname");
	t_hurt_trigger EnableLinkTo();
	t_hurt_trigger LinkTo(var_5cbbdfca);
	t_hurt_trigger thread function_136b871d();
	self waittill("trigger");
	var_5cbbdfca RotateTo(VectorScale((1, 1, 1), 180), 5);
	if(isdefined(s_destination.script_int))
	{
		var_5cbbdfca moveto(s_destination.origin, s_destination.script_int);
	}
	else
	{
		var_5cbbdfca moveto(s_destination.origin, 5);
	}
	var_5cbbdfca waittill("movedone");
	if(isdefined(s_destination.target))
	{
		var_522d7591 = struct::get(s_destination.target, "targetname");
		if(isdefined(var_522d7591.script_int))
		{
			var_5cbbdfca moveto(var_522d7591.origin, var_522d7591.script_int);
		}
		else
		{
			var_5cbbdfca moveto(var_522d7591.origin, 5);
		}
	}
	var_5cbbdfca waittill("movedone");
	t_hurt_trigger notify("stop");
	var_5cbbdfca delete();
}

/*
	Name: function_136b871d
	Namespace: namespace_bfe2abac
	Checksum: 0xD1FD6421
	Offset: 0x14D8
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_136b871d()
{
	self endon("stop");
	var_36665ed7 = [];
	while(1)
	{
		self waittill("trigger", e_player);
		if(!IsInArray(var_36665ed7, e_player) && isPlayer(e_player))
		{
			if(!isdefined(var_36665ed7))
			{
				var_36665ed7 = [];
			}
			else if(!IsArray(var_36665ed7))
			{
				var_36665ed7 = Array(var_36665ed7);
			}
			var_36665ed7[var_36665ed7.size] = e_player;
			e_player thread function_5f1793f0(0.5, 1);
		}
	}
}

/*
	Name: function_29a04809
	Namespace: namespace_bfe2abac
	Checksum: 0x588BB071
	Offset: 0x15D8
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_29a04809()
{
	level endon("hash_4a593615");
	while(1)
	{
		self waittill("trigger", e_player);
		if(isPlayer(e_player) && (!isdefined(e_player.var_9d9e6741) || GetTime() - e_player.var_9d9e6741 > 2000))
		{
			e_player.var_9d9e6741 = GetTime();
			e_player thread function_5f1793f0(1, 0.75);
		}
	}
}

/*
	Name: function_13629b3a
	Namespace: namespace_bfe2abac
	Checksum: 0x7DC2FF2F
	Offset: 0x1690
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_13629b3a()
{
	self endon("hash_a93c476");
	while(1)
	{
		PlayFXOnTag(level._effect["current_effect"], self, "tag_origin");
		wait(0.1);
	}
}

/*
	Name: function_a6779dd4
	Namespace: namespace_bfe2abac
	Checksum: 0xEB5788F6
	Offset: 0x16E8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_a6779dd4()
{
	path_start = GetVehicleNode(self.target, "targetname");
	while(1)
	{
		self waittill("trigger", player);
		if(!(isdefined(player.var_36cc7e41.var_7df4171f) && player.var_36cc7e41.var_7df4171f))
		{
			player notify("hash_f9ee8f48");
			player.var_36cc7e41 vehicle::get_on_and_go_path(path_start);
			player.var_36cc7e41 function_4f28280b(player);
			player.var_36cc7e41 notify("hash_a93c476");
			player thread scene::stop("cin_sgen_24_01_ride_vign_body_player_flail_" + player.var_d7515e0);
			player Unlink();
			skipto::function_be8adfb8("underwater_rail");
			break;
		}
	}
}

/*
	Name: function_79c98cb
	Namespace: namespace_bfe2abac
	Checksum: 0xDB28849
	Offset: 0x1848
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_79c98cb(n_index)
{
	self endon("disconnect");
	self endon("hash_f9ee8f48");
	self.var_36cc7e41 thread function_fcbee82b(self);
	self.var_36cc7e41 thread function_13629b3a();
	wait(0.8);
	self thread scene::Play("cin_sgen_24_01_ride_vign_body_player_flail_" + self.var_d7515e0, self);
	self.var_36cc7e41 vehicle::go_path();
	self.var_36cc7e41 function_4f28280b(self);
	self.var_36cc7e41 notify("hash_a93c476");
	self.var_368a5fed = 1;
	self.var_71062982 = 0;
	self Unlink();
	self namespace_cba4cc55::refill_ammo();
}

/*
	Name: function_4f28280b
	Namespace: namespace_bfe2abac
	Checksum: 0x4863097C
	Offset: 0x1960
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_4f28280b(player)
{
	var_ad88c72f = getvehiclenodearray("swim_rail_end", "targetname");
	foreach(var_d5c2535f in level.players)
	{
		if(player == var_d5c2535f)
		{
			self vehicle::get_on_and_go_path(var_ad88c72f[index]);
			break;
		}
	}
}

/*
	Name: function_fcbee82b
	Namespace: namespace_bfe2abac
	Checksum: 0x10D51D72
	Offset: 0x1A40
	Size: 0x25F
	Parameters: 1
	Flags: None
*/
function function_fcbee82b(player)
{
	player endon("disconnect");
	self endon("hash_a93c476");
	self.y_offset = 0;
	self.z_offset = 0;
	while(1)
	{
		var_a8166a44 = player GetNormalizedMovement();
		n_left = var_a8166a44[1];
		var_d74cdceb = var_a8166a44[0];
		if(!(isdefined(self.var_7df4171f) && self.var_7df4171f))
		{
			if(n_left < -0.5)
			{
				if(self.y_offset > -50)
				{
					self.y_offset = self.y_offset - 10;
				}
			}
			else if(n_left > 0.5)
			{
				if(self.y_offset < 50)
				{
					self.y_offset = self.y_offset + 10;
				}
			}
			else if(self.y_offset != 0)
			{
				if(self.y_offset > 0)
				{
				}
				else
				{
				}
				self.y_offset = -5 + 5;
			}
			if(var_d74cdceb < -0.5)
			{
				if(self.z_offset > -10)
				{
					self.z_offset = self.z_offset - 10;
				}
			}
			else if(var_d74cdceb > 0.5)
			{
				if(self.z_offset < 10)
				{
					self.z_offset = self.z_offset + 10;
				}
			}
			else if(self.z_offset != 0)
			{
				if(self.z_offset > 0)
				{
				}
				else
				{
				}
				self.z_offset = -5 + 5;
			}
		}
		/#
			println(self.y_offset);
		#/
		self PathFixedOffset((0, self.y_offset, self.z_offset));
		wait(0.05);
	}
}

/*
	Name: function_5f1793f0
	Namespace: namespace_bfe2abac
	Checksum: 0xE3D86440
	Offset: 0x1CA8
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_5f1793f0(n_intensity, n_time)
{
	self endon("disconnect");
	self.var_36cc7e41.var_7df4171f = 1;
	self.var_36cc7e41.y_offset = self.var_36cc7e41.y_offset * -1;
	self.var_36cc7e41.z_offset = self.var_36cc7e41.z_offset * -1;
	Earthquake(n_intensity, n_time, self.origin, 256);
	self PlayRumbleOnEntity("damage_heavy");
	self playlocalsound("evt_waterride_impact");
	wait(n_time * 0.25);
	self.var_36cc7e41.var_7df4171f = 0;
}

/*
	Name: function_d1342558
	Namespace: namespace_bfe2abac
	Checksum: 0x2D7343B4
	Offset: 0x1DB8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_d1342558()
{
	self.script_accuracy = 0.1;
}


#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_391e4301;

/*
	Name: __init__sytem__
	Namespace: namespace_391e4301
	Checksum: 0xCD9571C5
	Offset: 0xB70
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("ramses_util", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_391e4301
	Checksum: 0xDA130394
	Offset: 0xBB0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function __init__()
{
	clientfield::register("toplayer", "ramses_sun_color", 1, 1, "int");
	clientfield::register("toplayer", "dni_eye", 1, 1, "int");
	clientfield::register("scriptmover", "hide_graphic_content", 1, 1, "counter");
}

/*
	Name: function_cec9e261
	Namespace: namespace_391e4301
	Checksum: 0xB96D8481
	Offset: 0xC50
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_cec9e261()
{
	return GetDvarInt("is_demo_build", 0);
}

/*
	Name: function_22e1a261
	Namespace: namespace_391e4301
	Checksum: 0xA2968FA4
	Offset: 0xC78
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_22e1a261()
{
	exploder::exploder("transition");
	level function_c20af84a();
	GetEnt("lgt_shadow_block_trans", "targetname") show();
	level clientfield::set("alley_fog_banks", 1);
}

/*
	Name: function_8a9650aa
	Namespace: namespace_391e4301
	Checksum: 0x244C0FAD
	Offset: 0xD08
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_8a9650aa()
{
	foreach(player in level.players)
	{
		if(player IsInVehicle())
		{
			vh_occupied = player GetVehicleOccupied();
			n_seat = vh_occupied GetOccupantSeat(player);
			vh_occupied usevehicle(player, n_seat);
		}
	}
}

/*
	Name: function_c3080ff8
	Namespace: namespace_391e4301
	Checksum: 0xF33B573B
	Offset: 0xE08
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_c3080ff8(b_enable)
{
	if(!isdefined(b_enable))
	{
		b_enable = 1;
	}
	if(!IsArray(self))
	{
		a_e_players = Array(self);
	}
	else
	{
		a_e_players = self;
	}
	foreach(e_player in a_e_players)
	{
		e_player util::function_16c71b8(b_enable);
	}
}

/*
	Name: function_1903e7dc
	Namespace: namespace_391e4301
	Checksum: 0x118046F4
	Offset: 0xF00
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_1903e7dc()
{
	function_9e3608e3("arena_billboard_static2");
	function_9e3608e3("arena_billboard_02_static2");
	function_9e3608e3("cinema_collapse_static2");
	function_9e3608e3("quadtank_statue_static2");
	function_9e3608e3("rocket_static2");
	function_9e3608e3("glass_building_static2");
	function_9e3608e3("wall_collapse_static2");
	function_2f9e262a();
}

/*
	Name: function_2f9e262a
	Namespace: namespace_391e4301
	Checksum: 0x4ED88CF
	Offset: 0xFC8
	Size: 0x313
	Parameters: 0
	Flags: None
*/
function function_2f9e262a()
{
	scene::add_scene_func("p7_fxanim_cp_ramses_arena_billboard_bundle", &function_1c347e72, "init", "arena_billboard_static1");
	scene::add_scene_func("p7_fxanim_cp_ramses_arena_billboard_bundle", &function_a72c2dda, "done", "arena_billboard_static2");
	scene::add_scene_func("p7_fxanim_cp_ramses_arena_billboard_02_bundle", &function_1c347e72, "init", "arena_billboard_02_static1");
	scene::add_scene_func("p7_fxanim_cp_ramses_arena_billboard_02_bundle", &function_a72c2dda, "done", "arena_billboard_02_static2");
	scene::add_scene_func("p7_fxanim_cp_ramses_cinema_collapse_bundle", &function_1c347e72, "init", "cinema_collapse_static1");
	scene::add_scene_func("p7_fxanim_cp_ramses_cinema_collapse_bundle", &function_a72c2dda, "done", "cinema_collapse_static2");
	scene::add_scene_func("p7_fxanim_cp_ramses_quadtank_statue_bundle", &function_1c347e72, "init", "quadtank_statue_static1");
	scene::add_scene_func("p7_fxanim_cp_ramses_quadtank_statue_bundle", &function_a72c2dda, "done", "quadtank_statue_static2");
	scene::add_scene_func("p7_fxanim_cp_ramses_quadtank_plaza_building_rocket_bundle", &function_1c347e72, "init", "rocket_static1");
	scene::add_scene_func("p7_fxanim_cp_ramses_quadtank_plaza_building_rocket_bundle", &function_a72c2dda, "done", "rocket_static2");
	scene::add_scene_func("p7_fxanim_cp_ramses_quadtank_plaza_glass_building_bundle", &function_1c347e72, "init", "glass_building_static1");
	scene::add_scene_func("p7_fxanim_cp_ramses_quadtank_plaza_glass_building_bundle", &function_a72c2dda, "done", "glass_building_static2");
	scene::add_scene_func("p7_fxanim_cp_ramses_qt_plaza_palace_wall_collapse_bundle", &function_1c347e72, "init", "wall_collapse_static1");
	scene::add_scene_func("p7_fxanim_cp_ramses_qt_plaza_palace_wall_collapse_bundle", &function_a72c2dda, "done", "wall_collapse_static2");
}

/*
	Name: function_1c347e72
	Namespace: namespace_391e4301
	Checksum: 0x907126A7
	Offset: 0x12E8
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_1c347e72(a_ents, str_targetname)
{
	function_9e3608e3(str_targetname);
}

/*
	Name: function_a72c2dda
	Namespace: namespace_391e4301
	Checksum: 0x31AE3DAE
	Offset: 0x1320
	Size: 0xD1
	Parameters: 2
	Flags: None
*/
function function_a72c2dda(a_ents, str_targetname)
{
	function_6ddd4fa4(str_targetname);
	foreach(ent in a_ents)
	{
		if(isdefined(ent) && !IsSentient(ent))
		{
			ent delete();
		}
	}
}

/*
	Name: function_a0a9f927
	Namespace: namespace_391e4301
	Checksum: 0x8651B958
	Offset: 0x1400
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_a0a9f927()
{
	var_3ecc15f7 = GetEntArray("recovery_fan", "targetname");
	foreach(var_76185ee4 in var_3ecc15f7)
	{
		var_76185ee4 thread function_a4998afa(2);
		var_76185ee4 thread function_f81a38c8();
		wait(RandomFloatRange(0.5, 1.5));
	}
}

/*
	Name: function_a4998afa
	Namespace: namespace_391e4301
	Checksum: 0x422E2DA4
	Offset: 0x1508
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_a4998afa(var_5dbde88f)
{
	self endon("hash_fb28e86c");
	while(1)
	{
		self RotateYaw(180, var_5dbde88f / 2);
		wait(var_5dbde88f / 2);
	}
}

/*
	Name: function_f81a38c8
	Namespace: namespace_391e4301
	Checksum: 0x217D00ED
	Offset: 0x1568
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_f81a38c8()
{
	t_damage = GetEnt(self.target, "targetname");
	t_damage waittill("trigger");
	self notify("hash_fb28e86c");
	self waittill("rotatedone");
	self RotateTo(self.angles + VectorScale((0, 1, 0), 15), 1.25, 0.05, 0.75);
}

/*
	Name: function_e7ebe596
	Namespace: namespace_391e4301
	Checksum: 0xA1133A02
	Offset: 0x1610
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_e7ebe596(b_on)
{
	if(!isdefined(b_on))
	{
		b_on = 1;
	}
}

/*
	Name: delete_ent_array
	Namespace: namespace_391e4301
	Checksum: 0x9FC4B3A8
	Offset: 0x1638
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function delete_ent_array(str_value, str_key)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	level thread function_db4d0261(str_value, str_key);
}

/*
	Name: function_db4d0261
	Namespace: namespace_391e4301
	Checksum: 0xB9AB5BFE
	Offset: 0x1690
	Size: 0xE9
	Parameters: 2
	Flags: None
*/
function function_db4d0261(str_value, str_key)
{
	a_ents = GetEntArray(str_value, str_key);
	foreach(ent in a_ents)
	{
		if(i % 3)
		{
			wait(0.05);
		}
		if(isdefined(ent))
		{
			ent delete();
		}
	}
}

/*
	Name: function_d4a0bb54
	Namespace: namespace_391e4301
	Checksum: 0xB66D8833
	Offset: 0x1788
	Size: 0x38B
	Parameters: 1
	Flags: None
*/
function function_d4a0bb54(var_5d2441df)
{
	if(!isdefined(var_5d2441df))
	{
		var_5d2441df = 0;
	}
	level.var_5e3ce707 = [];
	var_6ff300d5 = GetEntArray("dead_turrets_non_controllable", "targetname");
	if(var_5d2441df)
	{
		foreach(var_f074d981 in var_6ff300d5)
		{
			m_turret = spawn("script_model", var_f074d981.origin);
			m_turret.angles = var_f074d981.angles;
			m_turret SetModel("veh_t7_turret_dead_system_ramses");
		}
		break;
	}
	foreach(var_f074d981 in var_6ff300d5)
	{
		var_880708d8 = spawner::simple_spawn_single(var_f074d981);
		level.var_5e3ce707[level.var_5e3ce707.size] = var_880708d8;
		var_880708d8.takedamage = 0;
	}
	level.var_48964153 = [];
	var_99d3b4e1 = GetEntArray("dead_turrets", "script_noteworthy");
	foreach(var_f074d981 in var_99d3b4e1)
	{
		var_880708d8 = spawner::simple_spawn_single(var_f074d981);
		level.var_48964153[level.var_48964153.size] = var_880708d8;
		var_880708d8.var_21ca2076 = 0;
		var_880708d8.takedamage = 0;
		if(isdefined(var_f074d981.script_int))
		{
			/#
				Assert(isdefined(var_880708d8.script_int), "Dev Block strings are not supported");
			#/
			var_880708d8.script_int = var_f074d981.script_int;
		}
	}
	level.var_9657b09b = ArrayCombine(level.var_48964153, level.var_5e3ce707, 1, 0);
	level flag::set("dead_turrets_initialized");
}

/*
	Name: function_37357151
	Namespace: namespace_391e4301
	Checksum: 0x8180C4EA
	Offset: 0x1B20
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_37357151()
{
	level notify("hash_24a38c8f");
	if(isdefined(level.var_9657b09b))
	{
		foreach(e_turret in level.var_9657b09b)
		{
			e_turret delete();
		}
	}
	level.var_5e3ce707 = undefined;
	level.var_48964153 = undefined;
	level.var_9657b09b = undefined;
}

/*
	Name: function_6b4b5556
	Namespace: namespace_391e4301
	Checksum: 0x4A1A4E0
	Offset: 0x1BF0
	Size: 0x129
	Parameters: 1
	Flags: None
*/
function function_6b4b5556(var_46b6a64a)
{
	if(!isdefined(var_46b6a64a))
	{
		var_46b6a64a = 0;
	}
	foreach(e in self)
	{
		e Hide();
	}
	if(var_46b6a64a)
	{
		foreach(e in self)
		{
			e connectpaths();
			wait(0.05);
		}
	}
}

/*
	Name: function_64a470cf
	Namespace: namespace_391e4301
	Checksum: 0x6D4573B6
	Offset: 0x1D28
	Size: 0x221
	Parameters: 1
	Flags: None
*/
function function_64a470cf(var_29cfceb6)
{
	if(!isdefined(var_29cfceb6))
	{
		var_29cfceb6 = 0;
	}
	foreach(e in self)
	{
		e show();
	}
	if(var_29cfceb6)
	{
		foreach(e in self)
		{
			if(e.targetname !== "path_neutral")
			{
				if(isdefined(e.script_noteworthy) && e.script_noteworthy == "connect_paths")
				{
					e connectpaths();
				}
				else if(e.classname === "script_brushmodel" && e.script_noteworthy !== "do_not_disconnect" || (e.classname === "script_model" && (e.model == "p7_cai_stacking_cargo_crate" || e.model == "veh_t7_mil_vtol_dropship_troopcarrier")))
				{
					e disconnectpaths();
				}
			}
			wait(0.05);
		}
	}
}

/*
	Name: spawn_from_structs
	Namespace: namespace_391e4301
	Checksum: 0xD065E781
	Offset: 0x1F58
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function spawn_from_structs()
{
	n_count = 0;
	foreach(struct in self)
	{
		if(isdefined(struct.model))
		{
			new_ent = spawn("script_model", struct.origin);
			new_ent.angles = struct.angles;
			new_ent SetModel(struct.model);
			n_count++;
			if(n_count % 10 == 0)
			{
				util::wait_network_frame();
			}
		}
	}
}

/*
	Name: function_41f6f501
	Namespace: namespace_391e4301
	Checksum: 0xBF90A51F
	Offset: 0x2098
	Size: 0x159
	Parameters: 1
	Flags: None
*/
function function_41f6f501(var_9c0d91a)
{
	if(IsArray(self))
	{
		var_709349fa = self;
	}
	else
	{
		var_709349fa = Array(self);
	}
	foreach(e in var_709349fa)
	{
		e notsolid();
	}
	if(isdefined(var_9c0d91a))
	{
		foreach(e in var_709349fa)
		{
			e SetMovingPlatformEnabled(var_9c0d91a);
		}
	}
}

/*
	Name: make_solid
	Namespace: namespace_391e4301
	Checksum: 0xB8B61B65
	Offset: 0x2200
	Size: 0x159
	Parameters: 1
	Flags: None
*/
function make_solid(var_9c0d91a)
{
	if(IsArray(self))
	{
		var_709349fa = self;
	}
	else
	{
		var_709349fa = Array(self);
	}
	foreach(e in var_709349fa)
	{
		e solid();
	}
	if(isdefined(var_9c0d91a))
	{
		foreach(e in var_709349fa)
		{
			e SetMovingPlatformEnabled(var_9c0d91a);
		}
	}
}

/*
	Name: function_4615ba30
	Namespace: namespace_391e4301
	Checksum: 0x9D884367
	Offset: 0x2368
	Size: 0x277
	Parameters: 2
	Flags: None
*/
function function_4615ba30(str_ent, b_visible)
{
	if(!isdefined(b_visible))
	{
		b_visible = 1;
	}
	var_f7480a72 = GetEntArray(str_ent, "targetname");
	a_e_players = self;
	if(!IsArray(self))
	{
		a_e_players = Array(self);
	}
	if(b_visible)
	{
		foreach(e_player in a_e_players)
		{
			foreach(var_f89a5212 in var_f7480a72)
			{
				var_f89a5212 SetVisibleToPlayer(e_player);
			}
		}
		break;
	}
	foreach(e_player in a_e_players)
	{
		foreach(var_f89a5212 in var_f7480a72)
		{
			var_f89a5212 SetInvisibleToPlayer(e_player);
		}
	}
}

/*
	Name: function_ad67ec60
	Namespace: namespace_391e4301
	Checksum: 0x3DDB4E90
	Offset: 0x25E8
	Size: 0x1C9
	Parameters: 2
	Flags: None
*/
function function_ad67ec60(var_e59ce4f8, var_c487ec13)
{
	if(!isdefined(var_e59ce4f8))
	{
		var_e59ce4f8 = 1;
	}
	if(!isdefined(var_c487ec13))
	{
		var_c487ec13 = 1;
	}
	if(flagsys::get("mobile_armory_in_use"))
	{
		return;
	}
	a_e_players = self;
	if(!IsArray(a_e_players))
	{
		a_e_players = Array(a_e_players);
	}
	var_1b7b3a6 = GetWeapon("spike_launcher");
	foreach(e_player in a_e_players)
	{
		e_player GiveWeapon(var_1b7b3a6);
		e_player SetWeaponAmmoClip(var_1b7b3a6, var_1b7b3a6.clipSize);
		e_player giveMaxAmmo(var_1b7b3a6);
		if(var_e59ce4f8)
		{
			e_player SwitchToWeapon(var_1b7b3a6);
		}
		if(var_c487ec13)
		{
			e_player thread function_fc0b27df(var_1b7b3a6);
		}
	}
}

/*
	Name: function_fc0b27df
	Namespace: namespace_391e4301
	Checksum: 0x3498FCA2
	Offset: 0x27C0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_fc0b27df(var_1b7b3a6)
{
	self endon("death");
	w_current = self GetCurrentWeapon();
	while(!self flag::get("spike_launcher_tutorial_complete"))
	{
		if(w_current == var_1b7b3a6)
		{
			self function_bd4d52fa(var_1b7b3a6);
		}
		else
		{
			self waittill("weapon_change_complete", w_current);
		}
	}
}

/*
	Name: function_bd4d52fa
	Namespace: namespace_391e4301
	Checksum: 0x4492A840
	Offset: 0x2860
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_bd4d52fa(var_1b7b3a6)
{
	self endon("death");
	self endon("detonate");
	self endon("hash_f4dfb01b");
	self waittill("weapon_fired", w_current);
	if(w_current == var_1b7b3a6)
	{
		wait(2);
		self thread function_c2712461();
		self util::waittill_any("detonate", "last_stand_detonate");
	}
}

/*
	Name: function_c2712461
	Namespace: namespace_391e4301
	Checksum: 0x58716DFA
	Offset: 0x2908
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_c2712461()
{
	self endon("death");
	self notify("hash_c2712461");
	self endon("hash_c2712461");
	if(isdefined(self.var_f30613a1))
	{
		self util::hide_hint_text();
		wait(0.05);
	}
	var_1b7b3a6 = GetWeapon("spike_launcher");
	self util::show_hint_text(&"CP_MI_CAIRO_RAMSES_SPIKE_LAUNCHER_DETONATE", 1, "spike_launcher_tutorial_complete", 20);
	self.var_99c7680e = 1;
	self util::waittill_any_timeout(20, "detonate", "last_stand_detonate");
	self flag::set("spike_launcher_tutorial_complete");
	self.var_f30613a1 = undefined;
}

/*
	Name: function_780e57a1
	Namespace: namespace_391e4301
	Checksum: 0x385116C
	Offset: 0x2A18
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_780e57a1()
{
	level endon("hash_adc3dca5");
	self endon("detonate");
	self endon("hash_f4dfb01b");
	self endon("death");
	w_current = self GetCurrentWeapon();
	var_1b7b3a6 = GetWeapon("spike_launcher");
	while(!self flag::get("spike_launcher_tutorial_complete"))
	{
		self waittill("weapon_change_complete", w_current);
		if(w_current != var_1b7b3a6)
		{
			self util::hide_hint_text();
		}
		else
		{
			self util::show_hint_text(&"CP_MI_CAIRO_RAMSES_SPIKE_LAUNCHER_DETONATE", 1, "spike_launcher_tutorial_complete", 20);
		}
	}
}

/*
	Name: function_25439df2
	Namespace: namespace_391e4301
	Checksum: 0x2F3EB0FE
	Offset: 0x2B20
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_25439df2()
{
	a_e_players = self;
	if(!IsArray(a_e_players))
	{
		a_e_players = Array(a_e_players);
	}
	var_1b7b3a6 = GetWeapon("spike_launcher");
	foreach(e_player in a_e_players)
	{
		if(e_player HasWeapon(var_1b7b3a6))
		{
			e_player TakeWeapon(var_1b7b3a6);
		}
	}
}

/*
	Name: function_486f25d
	Namespace: namespace_391e4301
	Checksum: 0x1E873B77
	Offset: 0x2C48
	Size: 0x11B
	Parameters: 3
	Flags: None
*/
function function_486f25d(var_86b557eb, var_745f5923, var_637003f5)
{
	var_a0117743 = isdefined(var_86b557eb) || isdefined(var_745f5923) || isdefined(var_637003f5);
	/#
		Assert(isdefined(var_a0117743) && var_a0117743, "Dev Block strings are not supported" + self.targetname + "Dev Block strings are not supported" + self.origin);
	#/
	if(isdefined(var_86b557eb))
	{
		self.count = function_411dc61b(self.count, var_86b557eb);
	}
	if(isdefined(var_745f5923))
	{
		self.sm_active_count_max = function_411dc61b(self.sm_active_count_max, var_745f5923);
	}
	if(isdefined(var_637003f5))
	{
		self.sm_active_count_min = function_411dc61b(self.sm_active_count_min, var_637003f5);
	}
}

/*
	Name: function_411dc61b
	Namespace: namespace_391e4301
	Checksum: 0x2BE5573
	Offset: 0x2D70
	Size: 0xAF
	Parameters: 2
	Flags: None
*/
function function_411dc61b(var_a8a66403, var_df47d27)
{
	n_num = var_a8a66403 - var_df47d27;
	foreach(e_player in level.players)
	{
		n_num = n_num + var_df47d27;
	}
	return n_num;
}

/*
	Name: get_random_player
	Namespace: namespace_391e4301
	Checksum: 0xCF32C090
	Offset: 0x2E28
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function get_random_player()
{
	e_player = self[0];
	if(self.size > 1)
	{
		e_player = self[RandomInt(self.size)];
	}
	return e_player;
}

/*
	Name: function_44514fc0
	Namespace: namespace_391e4301
	Checksum: 0x7015757A
	Offset: 0x2E78
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_44514fc0()
{
	var_a84756db = [];
	for(i = 0; i < level.players.size; i++)
	{
		if(!level.players[i] laststand::player_is_in_laststand())
		{
			if(!isdefined(var_a84756db))
			{
				var_a84756db = [];
			}
			else if(!IsArray(var_a84756db))
			{
				var_a84756db = Array(var_a84756db);
			}
			var_a84756db[var_a84756db.size] = level.players[i];
		}
	}
	return var_a84756db;
}

/*
	Name: function_beaafab6
	Namespace: namespace_391e4301
	Checksum: 0xD1D2EE19
	Offset: 0x2F48
	Size: 0xCF
	Parameters: 1
	Flags: None
*/
function function_beaafab6(str_notify)
{
	level endon(str_notify);
	while(1)
	{
		self waittill("trigger", var_efb53e77);
		for(i = 0; i < level.players.size; i++)
		{
			if(var_efb53e77 == level.players[i] && !var_efb53e77 laststand::player_is_in_laststand())
			{
				var_efb53e77 DoDamage(var_efb53e77.health + 100, var_efb53e77.origin);
			}
		}
		wait(1);
	}
}

/*
	Name: function_16ccc3fd
	Namespace: namespace_391e4301
	Checksum: 0x3A49178A
	Offset: 0x3020
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_16ccc3fd()
{
	while(1)
	{
		var_cb8bd87d = 0;
		for(i = 0; i < level.players.size; i++)
		{
			if(level.players[i] util::is_looking_at(self))
			{
				var_cb8bd87d++;
			}
		}
		if(var_cb8bd87d == 0)
		{
			return;
		}
		wait(0.25);
	}
}

/*
	Name: track_player
	Namespace: namespace_391e4301
	Checksum: 0x78426DB6
	Offset: 0x30B8
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function track_player(str_endon, n_radius)
{
	if(!isdefined(n_radius))
	{
		n_radius = 256;
	}
	self endon("death");
	if(isdefined(str_endon))
	{
		level endon(str_endon);
	}
	self.goalRadius = n_radius;
	while(1)
	{
		var_a84756db = function_44514fc0();
		var_821b0ced = var_a84756db get_random_player();
		while(isdefined(var_821b0ced) && !var_821b0ced laststand::player_is_in_laststand())
		{
			self SetGoal(var_821b0ced GetOrigin());
			wait(RandomFloatRange(2, 4));
		}
		wait(0.15);
	}
}

/*
	Name: function_a700a8ea
	Namespace: namespace_391e4301
	Checksum: 0x3AA3D008
	Offset: 0x31D8
	Size: 0x27F
	Parameters: 6
	Flags: None
*/
function function_a700a8ea(var_a9ea049a, str_key, var_c3e600e3, t_cleanup, str_endon, var_53af6159)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	level endon(str_endon);
	var_f2475306 = [];
	a_spawners = GetEntArray(var_a9ea049a, str_key);
	if(!isdefined(var_c3e600e3))
	{
		var_c3e600e3 = a_spawners.size;
	}
	t_cleanup thread function_1321e32f(str_endon);
	while(1)
	{
		a_spawners = Array::randomize(a_spawners);
		for(i = 0; i < var_c3e600e3; i++)
		{
			var_e578579f = a_spawners[i] spawner::spawn();
			wait(0.05);
			if(isalive(var_e578579f))
			{
				if(isai(var_e578579f))
				{
					if(!isdefined(var_f2475306))
					{
						var_f2475306 = [];
					}
					else if(!IsArray(var_f2475306))
					{
						var_f2475306 = Array(var_f2475306);
					}
					var_f2475306[var_f2475306.size] = var_e578579f;
					var_e578579f ai::set_ignoreall(1);
					var_e578579f.goalRadius = 8;
					continue;
				}
				if(isVehicle(var_e578579f))
				{
					var_fe0af0a5 = GetVehicleNode(var_e578579f.target, "targetname");
					var_e578579f thread vehicle::get_on_and_go_path(var_fe0af0a5);
				}
			}
		}
		Array::wait_till(var_f2475306, "death", var_53af6159);
	}
}

/*
	Name: function_1321e32f
	Namespace: namespace_391e4301
	Checksum: 0x7375BC4D
	Offset: 0x3460
	Size: 0xC7
	Parameters: 1
	Flags: None
*/
function function_1321e32f(str_endon)
{
	level endon(str_endon);
	while(1)
	{
		self waittill("trigger", var_e578579f);
		if(isdefined(var_e578579f))
		{
			if(isai(var_e578579f))
			{
				var_e578579f delete();
			}
			else
			{
				var_e578579f.delete_on_death = 1;
				var_e578579f notify("death");
				if(!isalive(var_e578579f))
				{
					var_e578579f delete();
				}
			}
		}
	}
}

/*
	Name: function_e7fdcb95
	Namespace: namespace_391e4301
	Checksum: 0x64B712F2
	Offset: 0x3530
	Size: 0x1F3
	Parameters: 10
	Flags: None
*/
function function_e7fdcb95(var_2c34daa1, var_6fc1c7c6, var_f67c8a8e, var_bf7b0d42, var_7b2612a, var_a20f0ddd, var_71637749, var_4cfaa23a, var_381b2f34, var_42e6f5b4)
{
	if(!isdefined(var_bf7b0d42))
	{
		var_bf7b0d42 = 0;
	}
	if(!isdefined(var_7b2612a))
	{
		var_7b2612a = 0;
	}
	if(!isdefined(var_71637749))
	{
		var_71637749 = 0;
	}
	v_start = struct::get(var_2c34daa1 + "_start").origin;
	v_end = struct::get(var_2c34daa1 + "_end").origin;
	function_9b385ca5();
	var_a3decff = RobotPhalanx;
	Initialize(var_a3decff, var_6fc1c7c6, v_start, v_end, var_f67c8a8e);
	if(isdefined(var_a20f0ddd))
	{
		level waittill(var_a20f0ddd);
	}
	wait(var_7b2612a);
	if(var_bf7b0d42 && var_a3decff.scattered_ == 0)
	{
		var_a3decff RobotPhalanx::ScatterPhalanx();
	}
	if(var_71637749)
	{
		while(isdefined(var_a3decff) && var_a3decff.scattered_ == 0)
		{
			wait(0.25);
		}
		function_e0927f44(var_4cfaa23a, var_381b2f34, function_411dc61b(3, 1));
	}
}

/*
	Name: function_e0927f44
	Namespace: namespace_391e4301
	Checksum: 0x4C43E296
	Offset: 0x3730
	Size: 0x145
	Parameters: 4
	Flags: None
*/
function function_e0927f44(str_key, str_value, n_max, n_min)
{
	if(!isdefined(str_value))
	{
		str_value = "targetname";
	}
	var_64e85e6d = GetEntArray(str_key, str_value);
	var_64e85e6d = Array::randomize(var_64e85e6d);
	var_a3784f7a = var_64e85e6d.size;
	if(isdefined(n_max))
	{
		var_a3784f7a = n_max;
	}
	if(isdefined(n_min))
	{
		var_a3784f7a = randomIntRange(n_min, var_a3784f7a + 1);
	}
	for(i = 0; i < var_a3784f7a; i++)
	{
		if(isalive(var_64e85e6d[i]))
		{
			var_64e85e6d[i] ai::set_behavior_attribute("move_mode", "rusher");
		}
	}
}

/*
	Name: function_cf956358
	Namespace: namespace_391e4301
	Checksum: 0xDFF7C6EA
	Offset: 0x3880
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function function_cf956358(str_flag, func)
{
	self flag::wait_till(str_flag);
	self thread [[func]]();
}

/*
	Name: function_5ad47384
	Namespace: namespace_391e4301
	Checksum: 0x11ED109A
	Offset: 0x38C8
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_5ad47384()
{
	a_friendly = GetAITeamArray("allies");
	foreach(ai in a_friendly)
	{
		if(!IsInArray(level.heroes, ai))
		{
			ai delete();
		}
	}
	a_enemy = GetAITeamArray("axis");
	foreach(ai in a_enemy)
	{
		ai delete();
	}
}

/*
	Name: function_b0369bfa
	Namespace: namespace_391e4301
	Checksum: 0xA857947C
	Offset: 0x3A40
	Size: 0x10B
	Parameters: 6
	Flags: None
*/
function function_b0369bfa(str_flag, str_scene, n_delay, n_wait, var_e21d36a, str_endon)
{
	if(!isdefined(n_delay))
	{
		n_delay = 0;
	}
	if(!isdefined(n_wait))
	{
		n_wait = 0;
	}
	if(isdefined(str_endon))
	{
		level endon(str_endon);
	}
	level flag::wait_till(str_flag);
	wait(n_delay);
	level thread scene::Play(str_scene, "targetname");
	if(n_wait > 0 || isdefined(var_e21d36a))
	{
		if(isdefined(var_e21d36a))
		{
			level flag::wait_till(var_e21d36a);
		}
		wait(n_wait);
		level scene::stop(str_scene, "targetname", 1);
	}
}

/*
	Name: function_d0d2f172
	Namespace: namespace_391e4301
	Checksum: 0xD929F707
	Offset: 0x3B58
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_d0d2f172(str_scene, str_notify)
{
	/#
		Assert(isdefined(str_scene), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(str_notify), "Dev Block strings are not supported");
	#/
	self waittill(str_notify);
	self scene::Play(str_scene);
}

/*
	Name: function_4a1e5496
	Namespace: namespace_391e4301
	Checksum: 0x1EF69985
	Offset: 0x3BE8
	Size: 0xBB
	Parameters: 3
	Flags: None
*/
function function_4a1e5496(anim_name, str_scene, str_notetrack)
{
	var_c8722225 = getnotetracktimes(anim_name, str_notetrack);
	/#
		Assert(var_c8722225.size, "Dev Block strings are not supported" + str_scene + "Dev Block strings are not supported" + str_notetrack + "Dev Block strings are not supported");
	#/
	n_time = var_c8722225[0];
	self thread scene::skipto_end(str_scene, undefined, undefined, n_time);
}

/*
	Name: function_3bc57aa8
	Namespace: namespace_391e4301
	Checksum: 0xFADADABA
	Offset: 0x3CB0
	Size: 0xA3
	Parameters: 2
	Flags: None
*/
function function_3bc57aa8(a_ents, b_enable)
{
	if(!isdefined(b_enable))
	{
		b_enable = 1;
	}
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db SetHighDetail(b_enable);
	}
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 SetHighDetail(b_enable);
	}
	if(isdefined(level.var_7a9855f3))
	{
		level.var_7a9855f3 SetHighDetail(b_enable);
	}
}

/*
	Name: enable_nodes
	Namespace: namespace_391e4301
	Checksum: 0xCB4861A8
	Offset: 0x3D60
	Size: 0xF9
	Parameters: 3
	Flags: None
*/
function enable_nodes(str_key, str_val, b_enable)
{
	if(!isdefined(str_val))
	{
		str_val = "targetname";
	}
	if(!isdefined(b_enable))
	{
		b_enable = 1;
	}
	a_nodes = GetNodeArray(str_key, str_val);
	foreach(nd_node in a_nodes)
	{
		SetEnableNode(nd_node, b_enable);
	}
}

/*
	Name: link_traversals
	Namespace: namespace_391e4301
	Checksum: 0xB8804DDC
	Offset: 0x3E68
	Size: 0x161
	Parameters: 3
	Flags: None
*/
function link_traversals(str_key, str_val, b_link)
{
	if(!isdefined(b_link))
	{
		b_link = 1;
	}
	var_541a5daf = GetNodeArray(str_key, str_val);
	if(b_link)
	{
		foreach(nd in var_541a5daf)
		{
			LinkTraversal(nd);
		}
		break;
	}
	foreach(nd in var_541a5daf)
	{
		UnlinkTraversal(nd);
	}
}

/*
	Name: function_508a129e
	Namespace: namespace_391e4301
	Checksum: 0x9829A616
	Offset: 0x3FD8
	Size: 0x17B
	Parameters: 3
	Flags: None
*/
function function_508a129e(str_notify, n_time, var_45778f27)
{
	if(!isdefined(var_45778f27))
	{
		var_45778f27 = 1;
	}
	self notify("hash_5a334c0f");
	self endon("death");
	self endon("hash_5a334c0f");
	level flag::wait_till("intro_igc_done");
	var_1b7b3a6 = GetWeapon("spike_launcher");
	while(self GetCurrentWeapon() == var_1b7b3a6)
	{
		wait(0.2);
	}
	self util::show_hint_text(&"COOP_EQUIP_SPIKE_LAUNCHER", 0, str_notify, n_time);
	while(var_45778f27 == 0)
	{
		self util::waittill_any("wp_01_destroyed", "weapon_change_complete");
		if(self GetCurrentWeapon() == var_1b7b3a6 || level flag::get("wp_01_destroyed"))
		{
			self notify(str_notify);
			var_45778f27 = 1;
		}
		else
		{
			wait(0.1);
		}
	}
}

/*
	Name: has_weapon
	Namespace: namespace_391e4301
	Checksum: 0x325D7E3E
	Offset: 0x4160
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function has_weapon(var_205ff529)
{
	var_8ea4a872 = self GetWeaponsList();
	foreach(w in var_8ea4a872)
	{
		if(w == var_205ff529)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_8806ea73
	Namespace: namespace_391e4301
	Checksum: 0x3244601F
	Offset: 0x4220
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_8806ea73(str_weapon)
{
	return self GetCurrentWeapon() == GetWeapon(str_weapon);
}

/*
	Name: function_2de69092
	Namespace: namespace_391e4301
	Checksum: 0x9BEBB87E
	Offset: 0x4268
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_2de69092(e)
{
	/#
		self endon("death");
		e endon("death");
		while(1)
		{
			line(e.origin, self.origin, (1, 0, 0), 0.1);
			debug::drawArrow(self.origin, self.angles);
			wait(0.05);
		}
	#/
}

/*
	Name: function_fd1e50c8
	Namespace: namespace_391e4301
	Checksum: 0x14276ED6
	Offset: 0x4300
	Size: 0xEF
	Parameters: 3
	Flags: None
*/
function function_fd1e50c8(target, n_timer, var_5b3dd4e)
{
	/#
		self endon("death");
		target endon("death");
		n_timer = GetTime() + n_timer * 1000;
		while(GetTime() < n_timer)
		{
			v_start_point = self.origin;
			if(isdefined(var_5b3dd4e))
			{
				v_start_point = self GetTagOrigin(var_5b3dd4e);
			}
			line(v_start_point, target.origin, (1, 0, 0), 0.1);
			debug::drawArrow(target.origin, target.angles);
			wait(0.05);
		}
	#/
}

/*
	Name: function_8a8944d6
	Namespace: namespace_391e4301
	Checksum: 0x7DE39CA
	Offset: 0x43F8
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_8a8944d6(var_133e9095)
{
	/#
		while(isdefined(var_133e9095) && isdefined(self))
		{
			line(var_133e9095.origin, self.origin, (1, 0, 0), 0.1);
			debug::debug_sphere(var_133e9095.origin, 16, (1, 0, 0), 0.5, 1);
			debug::drawArrow(self.origin, self.angles);
			debug::drawArrow(var_133e9095.origin, var_133e9095.angles);
			wait(0.05);
		}
	#/
}

/*
	Name: function_a0731cf9
	Namespace: namespace_391e4301
	Checksum: 0xE5947315
	Offset: 0x44D8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a0731cf9()
{
	exploder::exploder("exploder_flak_arena_defend");
	level flag::wait_till("flak_arena_defend_stop");
	exploder::exploder_stop("exploder_flak_arena_defend");
}

/*
	Name: function_1b048d07
	Namespace: namespace_391e4301
	Checksum: 0xA57F4A11
	Offset: 0x4538
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_1b048d07()
{
	exploder::exploder("exploder_flak_alley");
	level flag::wait_till("flak_alley_stop");
	exploder::exploder_stop("exploder_flak_alley");
}

/*
	Name: function_e950228a
	Namespace: namespace_391e4301
	Checksum: 0xB7F94867
	Offset: 0x4598
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_e950228a(b_on)
{
	if(!isdefined(b_on))
	{
		b_on = 1;
	}
	if(b_on)
	{
		exploder::exploder("fx_exploder_station_ambient_pre_collapse");
	}
	else
	{
		exploder::exploder_stop("fx_exploder_station_ambient_pre_collapse");
	}
}

/*
	Name: function_39044e10
	Namespace: namespace_391e4301
	Checksum: 0x2F889AD
	Offset: 0x4608
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_39044e10()
{
	exploder::exploder("fx_exploder_turn_off_collapse");
	level flag::wait_till("sinkhole_charges_detonated");
	wait(1.5);
	exploder::exploder_stop("fx_exploder_turn_off_collapse");
}

/*
	Name: function_ff06e7ac
	Namespace: namespace_391e4301
	Checksum: 0xD4D92408
	Offset: 0x4670
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_ff06e7ac()
{
	util::wait_network_frame();
	if(isdefined(level.var_dd326dcd))
	{
		switch(level.var_dd326dcd)
		{
			case 1:
			{
				self function_9c087de1();
				break;
			}
			case 2:
			{
				self function_c20af84a();
				break;
			}
			case 3:
			{
				self function_75734d29();
				break;
			}
		}
	}
}

/*
	Name: function_9c087de1
	Namespace: namespace_391e4301
	Checksum: 0x2FD4BDD9
	Offset: 0x4710
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9c087de1()
{
	level.var_dd326dcd = 1;
	self util::set_lighting_state(0);
	self function_8264a5e8(1);
}

/*
	Name: function_c20af84a
	Namespace: namespace_391e4301
	Checksum: 0x3A6A3939
	Offset: 0x4758
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c20af84a()
{
	level.var_dd326dcd = 2;
	self util::set_lighting_state(2);
	self function_8264a5e8(0);
}

/*
	Name: function_75734d29
	Namespace: namespace_391e4301
	Checksum: 0x1402E39F
	Offset: 0x47A8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_75734d29()
{
	level.var_dd326dcd = 3;
	self util::set_lighting_state(3);
	self function_8264a5e8(0);
}

/*
	Name: function_8264a5e8
	Namespace: namespace_391e4301
	Checksum: 0x5A9DBB57
	Offset: 0x47F8
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_8264a5e8(n_value)
{
	if(self == level)
	{
		foreach(player in level.players)
		{
			player function_8264a5e8(n_value);
		}
	}
	else if(isPlayer(self))
	{
		self clientfield::set_to_player("ramses_sun_color", n_value);
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_7df1bd5b
	Namespace: namespace_391e4301
	Checksum: 0x3B4C6E9B
	Offset: 0x4900
	Size: 0x151
	Parameters: 3
	Flags: None
*/
function function_7df1bd5b(str_trigger_targetname, str_level_endon, func_on_trigger)
{
	/#
		Assert(isdefined(str_trigger_targetname), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(str_level_endon), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(func_on_trigger), "Dev Block strings are not supported");
	#/
	level endon(str_level_endon);
	var_c8d90fa3 = GetEnt(str_trigger_targetname, "targetname");
	/#
		Assert(isdefined(var_c8d90fa3), "Dev Block strings are not supported" + str_trigger_targetname + "Dev Block strings are not supported");
	#/
	while(1)
	{
		var_c8d90fa3 waittill("trigger", e_player);
		if(isdefined(e_player) && isPlayer(e_player))
		{
			e_player [[func_on_trigger]]();
		}
	}
}

/*
	Name: function_eabc6e2f
	Namespace: namespace_391e4301
	Checksum: 0x6C210439
	Offset: 0x4A60
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_eabc6e2f()
{
	level clientfield::set("turn_on_rotating_fxanim_lights", 1);
	exploder::exploder("lgt_emergency");
	var_239ba8ce = GetEntArray("lgt_tent_probe", "script_noteworthy");
	foreach(ent in var_239ba8ce)
	{
		if(ent.classname == "reflection_probe")
		{
			ent.origin = ent.origin - VectorScale((0, 0, 1), 5000);
			continue;
		}
		ent delete();
	}
}

/*
	Name: function_b0ef4ae7
	Namespace: namespace_391e4301
	Checksum: 0x9E6ADAD0
	Offset: 0x4BA8
	Size: 0x263
	Parameters: 1
	Flags: None
*/
function function_b0ef4ae7(s_obj)
{
	self endon("death");
	waittillframeend;
	w_hero = GetWeapon("lmg_light");
	t_pickup = spawn("trigger_radius", self.origin + VectorScale((0, 0, 1), 24), 0, s_obj.radius, 128);
	t_pickup.targetname = "turret_pickup_trig";
	t_pickup.script_objective = "vtol_ride";
	t_pickup TriggerIgnoreTeam();
	self thread function_a68414be(t_pickup, w_hero);
	while(1)
	{
		t_pickup waittill("trigger", e_player);
		if(isalive(e_player))
		{
			if(e_player function_60a57ce() && !e_player has_weapon(w_hero))
			{
				var_73a38d53 = self GetSeatOccupant(0);
				if(isdefined(var_73a38d53))
				{
					if(var_73a38d53 == e_player)
					{
						self usevehicle(e_player, 0);
					}
					else
					{
						continue;
					}
				}
				e_player GiveWeapon(w_hero);
				e_player SwitchToWeapon(w_hero);
				level notify("hash_7f9d4af6");
				break;
			}
		}
	}
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
	t_pickup delete();
}

/*
	Name: function_a68414be
	Namespace: namespace_391e4301
	Checksum: 0x701BA8DD
	Offset: 0x4E18
	Size: 0x177
	Parameters: 2
	Flags: None
*/
function function_a68414be(t_pickup, w_hero)
{
	t_pickup endon("death");
	while(1)
	{
		t_pickup waittill("trigger", e_player);
		if(!isalive(self))
		{
			return;
		}
		var_73a38d53 = self GetSeatOccupant(0);
		if(isdefined(var_73a38d53) && var_73a38d53 != e_player)
		{
			continue;
		}
		if(isalive(e_player) && !e_player has_weapon(w_hero))
		{
			hint = e_player OpenLUIMenu("TurretTakeTutorial");
			while(isdefined(self) && !e_player laststand::player_is_in_laststand() && !e_player function_60a57ce() && e_player istouching(t_pickup))
			{
				wait(0.05);
			}
			e_player CloseLUIMenu(hint);
		}
	}
}

/*
	Name: function_60a57ce
	Namespace: namespace_391e4301
	Checksum: 0xFBCE6245
	Offset: 0x4F98
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_60a57ce()
{
	return self meleeButtonPressed();
}

/*
	Name: function_4e430da2
	Namespace: namespace_391e4301
	Checksum: 0xEA77D4E0
	Offset: 0x4FC0
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_4e430da2()
{
	return self useButtonPressed();
}

/*
	Name: function_10c41a9d
	Namespace: namespace_391e4301
	Checksum: 0x78F560E1
	Offset: 0x4FE8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_10c41a9d()
{
	w_hero = GetWeapon("lmg_light");
	if(self HasWeapon(w_hero))
	{
		self TakeWeapon(w_hero);
	}
}

/*
	Name: function_258b9bad
	Namespace: namespace_391e4301
	Checksum: 0x384737B3
	Offset: 0x5050
	Size: 0xCD
	Parameters: 3
	Flags: None
*/
function function_258b9bad(var_fcc15a0, var_1086d941, var_ed2ece1e)
{
	self endon("death");
	self.var_69dd5d62 = 1;
	util::magic_bullet_shield(self);
	if(var_1086d941)
	{
		self thread function_968476a4(var_fcc15a0, var_ed2ece1e);
	}
	util::waittill_any_ents(level, var_fcc15a0, self, var_fcc15a0, self, "ram_kill_mb", self, "ccom_locked_on", self, "cybercom_action");
	util::stop_magic_bullet_shield(self);
	self.var_69dd5d62 = undefined;
}

/*
	Name: function_968476a4
	Namespace: namespace_391e4301
	Checksum: 0x3AEDFF5D
	Offset: 0x5128
	Size: 0xAB
	Parameters: 2
	Flags: None
*/
function function_968476a4(var_fcc15a0, var_ed2ece1e)
{
	self endon("hash_9b484394");
	self endon(var_fcc15a0);
	level endon(var_fcc15a0);
	while(1)
	{
		self waittill("damage", amount, attacker);
		if(isPlayer(attacker))
		{
			if(isdefined(var_ed2ece1e))
			{
				level notify(var_ed2ece1e);
				wait(0.05);
				level notify(var_fcc15a0);
			}
			self notify(var_fcc15a0);
		}
	}
}

/*
	Name: function_f08afb37
	Namespace: namespace_391e4301
	Checksum: 0xF5E3D373
	Offset: 0x51E0
	Size: 0xD9
	Parameters: 2
	Flags: None
*/
function function_f08afb37(b_on, var_eebad467)
{
	if(!isdefined(b_on))
	{
		b_on = 1;
	}
	if(!isdefined(var_eebad467))
	{
		var_eebad467 = 0.1;
	}
	self endon("death");
	if(isalive(self) && IsSentient(self))
	{
		if(b_on)
		{
			self.attackerAccuracy = var_eebad467;
			self.overrideActorDamage = &function_74e97bfe;
			self notify("hash_4ef4ba2d");
		}
		else
		{
			self.attackerAccuracy = var_eebad467;
			self.overrideActorDamage = undefined;
			self notify("hash_cb188399");
		}
	}
}

/*
	Name: function_74e97bfe
	Namespace: namespace_391e4301
	Checksum: 0xAF661B4F
	Offset: 0x52C8
	Size: 0x10D
	Parameters: 12
	Flags: None
*/
function function_74e97bfe(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, str_weapon, v_point, v_dir, str_hit_loc, n_model_index, psOffsetTime, str_bone_name)
{
	if(isPlayer(e_attacker))
	{
		function_f08afb37(0);
		return n_damage;
	}
	else if(str_means_of_death == "MOD_EXPLOSIVE" || str_means_of_death == "MOD_GRENADE" || str_means_of_death == "MOD_MELEE" || str_means_of_death == "MOD_MELEE_WEAPON_BUTT")
	{
		return n_damage;
	}
	else
	{
		n_damage = 1;
		self.health = self.health + 1;
		return n_damage;
	}
}

/*
	Name: function_8afb19cc
	Namespace: namespace_391e4301
	Checksum: 0xF374424B
	Offset: 0x53E0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_8afb19cc(var_786e88b6, var_f10f51ff)
{
	level thread function_19e59ba2(var_786e88b6, var_f10f51ff);
	level thread function_fa89cc92(var_786e88b6, var_f10f51ff);
}

/*
	Name: function_19e59ba2
	Namespace: namespace_391e4301
	Checksum: 0xA8CA1AD3
	Offset: 0x5440
	Size: 0x131
	Parameters: 2
	Flags: None
*/
function function_19e59ba2(var_786e88b6, var_f10f51ff)
{
	do
	{
		wait(0.5);
		var_46c58ac8 = spawn_manager::get_ai(var_f10f51ff);
	}
	while(!(var_46c58ac8.size > 0 || spawn_manager::is_enabled(var_f10f51ff)));
	var_18c1d967 = spawn_manager::get_ai(var_786e88b6);
	foreach(e_robot in var_18c1d967)
	{
		e_robot ClearGoalVolume();
		e_robot ai::set_behavior_attribute("move_mode", "rusher");
	}
}

/*
	Name: function_fa89cc92
	Namespace: namespace_391e4301
	Checksum: 0xAC0B7E50
	Offset: 0x5580
	Size: 0x109
	Parameters: 2
	Flags: None
*/
function function_fa89cc92(var_786e88b6, var_f10f51ff)
{
	do
	{
		wait(0.5);
		var_18c1d967 = spawn_manager::get_ai(var_786e88b6);
	}
	while(!(var_18c1d967.size > 0 || spawn_manager::is_enabled(var_786e88b6)));
	var_46c58ac8 = spawn_manager::get_ai(var_f10f51ff);
	foreach(var_fbc8888 in var_46c58ac8)
	{
		var_fbc8888.goalRadius = 1024;
	}
}

/*
	Name: player_walk_speed_adjustment
	Namespace: namespace_391e4301
	Checksum: 0xE072E5CA
	Offset: 0x5698
	Size: 0x9DB
	Parameters: 7
	Flags: None
*/
function player_walk_speed_adjustment(e_rubber_band_to, str_endon, n_dist_min, N_DIST_MAX, n_speed_scale_min, n_speed_scale_max, var_d04843e1)
{
	if(!isdefined(n_speed_scale_min))
	{
		n_speed_scale_min = 0;
	}
	if(!isdefined(n_speed_scale_max))
	{
		n_speed_scale_max = 1;
	}
	if(!isdefined(var_d04843e1))
	{
		var_d04843e1 = 20;
	}
	/#
		Assert(isPlayer(self), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(e_rubber_band_to), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(n_dist_min), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(N_DIST_MAX), "Dev Block strings are not supported");
	#/
	self endon(str_endon);
	self endon("death");
	self endon("disconnect");
	self thread _player_walk_speed_reset(str_endon);
	if(!IsArray(e_rubber_band_to))
	{
		var_2328c0bb = Array(e_rubber_band_to);
	}
	else
	{
		var_2328c0bb = e_rubber_band_to;
	}
	var_6987b601 = function_36bdd3e9(var_2328c0bb);
	n_prev_speed = 1;
	n_speed_new = 1;
	n_height_diff = 0;
	var_6996430b = math::linear_map(var_d04843e1, 0, 190, 0, 1);
	var_c0a77ece = Distance2D(self.origin, function_36bdd3e9(var_2328c0bb));
	b_first_frame = 1;
	var_d1c1929b = 0;
	var_3e7026da = 0;
	var_b054adb3 = 0;
	var_857f3b54 = 0;
	var_36d81334 = 0;
	if(isdefined(self.var_1e462286))
	{
		b_first_frame = 0;
		n_prev_speed = self.var_1e462286;
		self setMoveSpeedScale(self.var_1e462286);
	}
	if(isdefined(self.var_622d06be))
	{
		n_height_diff = self.var_622d06be;
	}
	while(1)
	{
		var_856fe6c6 = function_36bdd3e9(var_2328c0bb);
		var_e730dd94 = Distance(var_6987b601, var_856fe6c6);
		var_6987b601 = var_856fe6c6;
		var_8b261109 = var_e730dd94 * 20;
		if(var_2328c0bb.size > 1)
		{
			var_8aab3fca = ArrayCopy(var_2328c0bb);
			ArrayRemoveIndex(var_8aab3fca, 0, 0);
			var_5db32273 = var_2328c0bb[0].origin - function_36bdd3e9(var_8aab3fca);
		}
		else
		{
			var_5db32273 = AnglesToForward((0, var_2328c0bb[0].angles[1], 0));
		}
		v_player_forward = AnglesToForward(self.angles);
		var_b054adb3 = var_3e7026da;
		var_3e7026da = 0;
		foreach(entity in var_2328c0bb)
		{
			var_e71cd44d = Distance2D(self.origin, entity.origin);
			var_671d9784 = VectorDot(VectorNormalize(var_5db32273), VectorNormalize(self.origin - entity.origin));
			if(var_e71cd44d <= 24 && var_671d9784 <= -0.25)
			{
				var_3e7026da = 1;
				continue;
			}
			if(var_e71cd44d <= 32 && var_671d9784 <= -0.5)
			{
				var_3e7026da = 1;
				continue;
			}
			if(var_e71cd44d <= 40 && var_671d9784 <= -0.75)
			{
				var_3e7026da = 1;
			}
		}
		if(n_prev_speed <= var_6996430b && !var_3e7026da)
		{
			var_857f3b54++;
			if(var_857f3b54 > 10)
			{
				var_36d81334 = 1;
			}
		}
		else
		{
			var_857f3b54 = 0;
		}
		var_8c034a31 = Distance2D(self.origin, var_856fe6c6);
		if(!var_36d81334 && Abs(var_8c034a31 - var_c0a77ece) < 12 && (!var_3e7026da || var_b054adb3))
		{
			wait(0.05);
			continue;
		}
		var_c0a77ece = var_8c034a31;
		var_16d9beb6 = VectorDot(VectorNormalize(var_5db32273), self.origin - var_2328c0bb[0].origin);
		if(var_16d9beb6 <= 0)
		{
			var_d3fe8f49 = math::linear_map(var_8b261109, var_d04843e1, 190, 0, 1);
			n_height_diff = Abs(var_856fe6c6[2] - self.origin[2]);
			self.var_622d06be = n_height_diff;
			if(var_8c034a31 > N_DIST_MAX || n_height_diff > 160)
			{
				n_speed_new = 1;
			}
			else if(var_8c034a31 <= n_dist_min)
			{
				n_speed_new = var_d3fe8f49;
			}
			else
			{
				n_dist_frac = math::linear_map(var_8c034a31, n_dist_min, N_DIST_MAX, 0.5, 1);
				n_speed_new = n_dist_frac;
			}
			if(n_speed_new < var_6996430b)
			{
				n_speed_new = var_6996430b;
			}
			if(var_3e7026da)
			{
				var_d1c1929b++;
				n_speed_new = var_6996430b - 0.05 * var_d1c1929b;
				if(n_speed_new < 0.05)
				{
					n_speed_new = 0.05;
				}
			}
			else if(var_d1c1929b > 0)
			{
				var_d1c1929b = 0;
			}
		}
		else if(n_height_diff <= 160)
		{
			n_speed_new = var_6996430b;
		}
		if(!b_first_frame)
		{
			if(Abs(n_speed_new - n_prev_speed) < 0.1)
			{
				n_speed_new = n_prev_speed;
			}
			else if(n_prev_speed > n_speed_new + 0.1)
			{
				n_speed_new = n_prev_speed - 0.1;
			}
			else if(n_prev_speed < n_speed_new - 0.1 && n_height_diff <= 100)
			{
				n_speed_new = n_prev_speed + 0.1;
			}
		}
		var_36d81334 = 0;
		b_first_frame = 0;
		n_prev_speed = n_speed_new;
		self setMoveSpeedScale(n_speed_new);
		self.var_1e462286 = n_speed_new;
		wait(0.05);
	}
}

/*
	Name: function_36bdd3e9
	Namespace: namespace_391e4301
	Checksum: 0x8A8857E6
	Offset: 0x6080
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_36bdd3e9(a_ents)
{
	var_4ce0e4b7 = (0, 0, 0);
	foreach(ent in a_ents)
	{
		var_4ce0e4b7 = var_4ce0e4b7 + ent.origin;
	}
	return var_4ce0e4b7 / a_ents.size;
}

/*
	Name: _player_walk_speed_reset
	Namespace: namespace_391e4301
	Checksum: 0x4021196F
	Offset: 0x6138
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function _player_walk_speed_reset(str_endon)
{
	level waittill(str_endon, var_8cf5cf65);
	if(!isdefined(var_8cf5cf65))
	{
		var_8cf5cf65 = 1;
	}
	if(isdefined(var_8cf5cf65) && var_8cf5cf65)
	{
		self setMoveSpeedScale(1);
		self.var_1e462286 = 1;
	}
}

/*
	Name: function_47e62fcf
	Namespace: namespace_391e4301
	Checksum: 0xF2C277C4
	Offset: 0x61B8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_47e62fcf(a_ents)
{
	var_db11938d = 5;
	foreach(ent in a_ents)
	{
		if(isdefined(ent.model))
		{
			StreamerModelHint(ent.model, var_db11938d);
		}
	}
	if(isdefined(self.scenes[0]._s.nextscenebundle))
	{
		scene::add_scene_func(self.scenes[0]._s.nextscenebundle, &function_47e62fcf, "play");
	}
}

/*
	Name: function_a9b807cc
	Namespace: namespace_391e4301
	Checksum: 0x13526F6A
	Offset: 0x62E8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a9b807cc(var_db11938d)
{
	if(!isdefined(var_db11938d))
	{
		var_db11938d = 5;
	}
	StreamerModelHint("c_hro_player_male_egypt_viewbody", var_db11938d);
}

/*
	Name: function_ac2b4535
	Namespace: namespace_391e4301
	Checksum: 0xE78D9B52
	Offset: 0x6330
	Size: 0xAB
	Parameters: 2
	Flags: None
*/
function function_ac2b4535(str_scene, var_54f8120e)
{
	/#
		Assert(isdefined(str_scene), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(var_54f8120e), "Dev Block strings are not supported");
	#/
	scene::add_scene_func(str_scene, &function_96861272, "players_done");
	level thread function_cb1e4146(str_scene, var_54f8120e);
}

/*
	Name: function_96861272
	Namespace: namespace_391e4301
	Checksum: 0x7D25CA9B
	Offset: 0x63E8
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_96861272(a_ents)
{
	if(isdefined(self.scenes[0]) && isdefined(self.scenes[0]._str_notify_name))
	{
		level notify(self.scenes[0]._str_notify_name + "_level_done");
	}
	else
	{
		level notify(self.scriptbundlename + "_level_done");
	}
}

/*
	Name: function_cb1e4146
	Namespace: namespace_391e4301
	Checksum: 0x979032B4
	Offset: 0x6468
	Size: 0x151
	Parameters: 2
	Flags: None
*/
function function_cb1e4146(str_scene, var_54f8120e)
{
	level waittill(str_scene + "_level_done");
	foreach(player in level.players)
	{
		player ghost();
	}
	util::function_93831e79(var_54f8120e);
	wait(0.5);
	foreach(player in level.players)
	{
		player show();
	}
}

/*
	Name: function_7255e66
	Namespace: namespace_391e4301
	Checksum: 0x24E1A1DA
	Offset: 0x65C8
	Size: 0x1A1
	Parameters: 2
	Flags: None
*/
function function_7255e66(b_enable, str_script_string)
{
	if(!isdefined(b_enable))
	{
		b_enable = 1;
	}
	var_335c4513 = GetEntArray("mobile_armory", "script_noteworthy");
	foreach(var_a9960583 in var_335c4513)
	{
		if(isdefined(var_a9960583.gameobject) && (var_a9960583.script_string === str_script_string || !isdefined(str_script_string)))
		{
			if(!b_enable)
			{
				var_a9960583 namespace_16f9ecd3::disable_thermal();
				var_a9960583 namespace_16f9ecd3::function_14ec2d71();
				var_a9960583.gameobject gameobjects::disable_object();
				continue;
			}
			var_a9960583.gameobject gameobjects::enable_object();
			var_a9960583 namespace_16f9ecd3::function_b3ce91e0();
			var_a9960583 namespace_16f9ecd3::function_e228c18a();
		}
	}
}

/*
	Name: function_f2f98cfc
	Namespace: namespace_391e4301
	Checksum: 0x7C418D3A
	Offset: 0x6778
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_f2f98cfc()
{
	var_3354e659 = GetEnt("hotel_gate", "targetname");
	var_3354e659 ghost();
	var_3354e659 notsolid();
	function_bab1ff00("hotel", 1);
}

/*
	Name: function_1aeb2873
	Namespace: namespace_391e4301
	Checksum: 0x5080134
	Offset: 0x6800
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_1aeb2873()
{
	GetEnt("defend_street_gate", "targetname") delete();
	function_bab1ff00("defend_street", 1);
}

/*
	Name: function_fb967724
	Namespace: namespace_391e4301
	Checksum: 0x427852B
	Offset: 0x6860
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_fb967724()
{
	GetEnt("hotel_gate", "targetname") show();
	function_bab1ff00("hotel", 0);
}


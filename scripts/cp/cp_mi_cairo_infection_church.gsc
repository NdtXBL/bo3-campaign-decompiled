#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_objectives;
#using scripts\cp\_quadtank_util;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection_village_surreal;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace church;

/*
	Name: init_client_field_callback_funcs
	Namespace: church
	Checksum: 0xBC0802DE
	Offset: 0xAA0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function init_client_field_callback_funcs()
{
	clientfield::register("world", "light_church_int_cath_all", 1, 1, "int");
	clientfield::register("world", "toggle_cathedral_fog_banks", 1, 1, "int");
}

/*
	Name: function_7c4081cb
	Namespace: church
	Checksum: 0x1A022DF5
	Offset: 0xB10
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_7c4081cb(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	Array::thread_all(level.players, &namespace_36cbf523::function_e905c73c);
}

/*
	Name: function_9fdc48d2
	Namespace: church
	Checksum: 0x1BDA99A2
	Offset: 0xB68
	Size: 0x7B
	Parameters: 4
	Flags: None
*/
function function_9fdc48d2(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_36cbf523::function_aa0ddbc3(0);
	Array::thread_all(level.players, &namespace_36cbf523::function_e905c73c);
	level thread function_bcf5c753();
}

/*
	Name: function_56c1b3cc
	Namespace: church
	Checksum: 0x166BC975
	Offset: 0xBF0
	Size: 0x2EB
	Parameters: 2
	Flags: None
*/
function function_56c1b3cc(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
	}
	level thread function_85611d5b();
	scene::add_scene_func("p7_fxanim_cp_infection_church_explode_01_bundle", &function_9ad74a02, "play");
	scene::add_scene_func("p7_fxanim_cp_infection_church_explode_02_bundle", &function_e3cbb3ec, "play");
	scene::add_scene_func("p7_fxanim_cp_infection_church_tank_02_bundle", &function_99a9f593, "done");
	scene::add_scene_func("cin_inf_11_04_fold_vign_walk_end_unreveal", &function_8c83aff9, "play");
	var_e9020a33 = util::function_740f8516("sarah");
	if(var_74cd64bc)
	{
		function_1319db1b();
		load::function_a2995f22();
	}
	Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
	if(var_74cd64bc)
	{
		var_e9020a33 thread scene::Play("cin_inf_11_04_fold_vign_walk_end", var_e9020a33);
	}
	if(isdefined(level.BZM_INFECTIONDialogue22Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue22Callback]]();
	}
	level clientfield::set("kill_light_church_ext_window", 1);
	wait(2);
	var_e9020a33 thread scene::Play("cin_inf_11_04_fold_vign_walk_end_unreveal", var_e9020a33);
	wait(3);
	level thread scene::Play("p7_fxanim_cp_infection_church_tank_01_bundle");
	level thread scene::Play("p7_fxanim_cp_infection_church_explode_01_bundle");
	level waittill("hash_29e5a19f");
	level thread scene::Play("p7_fxanim_cp_infection_church_tank_02_bundle");
	level thread scene::Play("p7_fxanim_cp_infection_church_explode_02_bundle");
	function_8aabc20e();
	level waittill("hash_ad9dbc82");
	level clientfield::set("light_church_int_all", 0);
	level clientfield::set("light_church_int_cath_all", 0);
}

/*
	Name: function_8c83aff9
	Namespace: church
	Checksum: 0xBD3E7D26
	Offset: 0xEE8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_8c83aff9(a_ents)
{
	a_ents["sarah"] clientfield::set("sarah_body_light", 0);
	a_ents["sarah"] thread namespace_36cbf523::function_9110a277(1);
}

/*
	Name: function_cbb5d383
	Namespace: church
	Checksum: 0x88C5E286
	Offset: 0xF50
	Size: 0x1DB
	Parameters: 2
	Flags: None
*/
function function_cbb5d383(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
	}
	setup_spawners();
	function_f46b47c();
	trig = GetEnt("cathedral_sarah_at_altar", "targetname");
	trig TriggerEnable(0);
	exploder::exploder("fx_light_cathedral_lightning");
	exploder::exploder("cathedral_alter_candle_lights");
	if(var_74cd64bc)
	{
		load::function_a2995f22();
		function_e32e0193();
	}
	namespace_f25bd8c8::function_211b07c5();
	if(level.players.size > 0)
	{
		function_c63f5a62();
	}
	level flag::wait_till("cathedral_quad_tank_destroyed");
	objectives::complete("cp_level_infection_destroy_quadtank");
	util::delay(2, undefined, &namespace_f25bd8c8::function_2c8ffdaf);
	function_e5a6d1b6();
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	function_611a9795();
	function_6d3642e();
	function_4043ed0a();
}

/*
	Name: function_bb28f49a
	Namespace: church
	Checksum: 0xB0D61209
	Offset: 0x1138
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_bb28f49a()
{
	level dialog::function_13b3b16a("plyr_what_the_fuck_0", 1);
	level thread dialog::remote("hall_brute_force_somet_0", 0, "NO_DNI");
}

/*
	Name: function_b6b71003
	Namespace: church
	Checksum: 0x10B5CEB6
	Offset: 0x11A0
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_b6b71003(str_objective, var_74cd64bc)
{
	level flag::init("sarah_distance_objective");
	level thread function_f46b47c();
	function_611a9795();
	function_6d3642e();
	function_4043ed0a();
	level thread skipto::function_be8adfb8("dev_cathedral_outro");
}

/*
	Name: function_956d2096
	Namespace: church
	Checksum: 0xAD6BD776
	Offset: 0x1248
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_956d2096(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: setup_spawners
	Namespace: church
	Checksum: 0x6C2CCA6
	Offset: 0x1278
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function setup_spawners()
{
	spawner::add_spawn_function_group("sm_cathedral_guys", "script_noteworthy", &namespace_36cbf523::function_b86426b1);
	spawner::add_spawn_function_group("sm_cathedral_guys", "script_noteworthy", &function_64a8118d);
	namespace_36cbf523::function_aa0ddbc3(1);
	level flag::init("cathedral_quad_tank_destroyed");
	level flag::init("sarah_distance_objective");
}

/*
	Name: function_1319db1b
	Namespace: church
	Checksum: 0x97CD6035
	Offset: 0x1340
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_1319db1b()
{
	scene::add_scene_func("p7_fxanim_cp_infection_church_explode_01_bundle", &function_452b629a, "init");
	scene::init("p7_fxanim_cp_infection_church_explode_01_bundle");
	level clientfield::set("light_church_int_cath_all", 1);
}

/*
	Name: function_452b629a
	Namespace: church
	Checksum: 0xF9FE026F
	Offset: 0x13B8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_452b629a(a_ents)
{
	a_ents[0] SetForceNoCull();
}

/*
	Name: function_e32e0193
	Namespace: church
	Checksum: 0x7235B36C
	Offset: 0x13E8
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_e32e0193(var_5152e048)
{
	Array::thread_all(level.activePlayers, &coop::function_e9f7384d);
	var_6ba9931 = GetEnt("quad_tank_cathedral", "script_noteworthy");
	var_1b1b9e26 = spawner::simple_spawn_single(var_6ba9931, &function_526e9212);
	if(isdefined(var_5152e048))
	{
		var_1b1b9e26.origin = var_5152e048.origin;
		var_1b1b9e26.angles = var_5152e048.angles;
	}
	scene::add_scene_func("cin_inf_11_05_fold_vign_qtbirth", &function_50768ebe, "done");
	level thread scene::Play("cin_inf_11_05_fold_vign_qtbirth", var_1b1b9e26);
	level thread scene::Play("cin_inf_11_05_fold_vign_tigertank");
	level thread function_bb28f49a();
	e_goal_volume = GetEnt("quadtank_goal_volume", "targetname");
	var_1b1b9e26 SetGoal(e_goal_volume);
}

/*
	Name: function_50768ebe
	Namespace: church
	Checksum: 0xC0CF87B2
	Offset: 0x1598
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_50768ebe(a_ent)
{
	level notify("hash_50768ebe");
}

/*
	Name: function_526e9212
	Namespace: church
	Checksum: 0x249ACBE3
	Offset: 0x15C0
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_526e9212()
{
	self util::function_e218424d();
	self quadtank::quadtank_weakpoint_display(0);
	self waittill("turn_on");
	self quadtank::quadtank_on();
	level waittill("hash_50768ebe");
	self quadtank::quadtank_weakpoint_display(1);
	self thread function_74e24b66();
	self thread function_1828efd2();
	self thread function_3546987d();
	self thread namespace_855113f3::function_35209d64();
	self waittill("death");
	level flag::set("cathedral_quad_tank_destroyed");
}

/*
	Name: function_74e24b66
	Namespace: church
	Checksum: 0xDC81C567
	Offset: 0x16D0
	Size: 0x159
	Parameters: 0
	Flags: None
*/
function function_74e24b66()
{
	self endon("death");
	while(1)
	{
		self util::waittill_either("trophy_system_disabled", "trophy_system_destroyed");
		ai_enemy = spawn_manager::get_ai("sm_cathedral_lower");
		for(i = 0; i < ai_enemy.size; i++)
		{
			if(i < 5 && Distance2DSquared(self.origin, ai_enemy[i].origin) > 40000)
			{
				self thread function_b26e24ab(ai_enemy[i]);
			}
		}
		self waittill("trophy_system_enabled");
		ai_enemy = spawn_manager::get_ai("sm_cathedral_lower");
		for(i = 0; i < ai_enemy.size; i++)
		{
			ai_enemy[i] ClearForcedGoal();
		}
	}
}

/*
	Name: function_1828efd2
	Namespace: church
	Checksum: 0xD16841F4
	Offset: 0x1838
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_1828efd2()
{
	self endon("death");
	self thread function_6a01df15("church_pillars_explode_01", "p7_fxanim_cp_infection_church_pillars_explode_01_bundle");
	self thread function_6a01df15("church_pillars_explode_02", "p7_fxanim_cp_infection_church_pillars_explode_02_bundle");
	self thread function_6a01df15("church_pillars_explode_03", "p7_fxanim_cp_infection_church_pillars_explode_03_bundle");
	self thread function_6a01df15("church_pillars_explode_04", "p7_fxanim_cp_infection_church_pillars_explode_04_bundle");
}

/*
	Name: function_6a01df15
	Namespace: church
	Checksum: 0xD1408385
	Offset: 0x18F0
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_6a01df15(e_trig, var_65f65be)
{
	self endon("death");
	trigger::wait_till(e_trig);
	trig = GetEnt(e_trig, "targetname");
	e_target = spawn("script_origin", trig.origin);
	self SetTurretTargetEnt(e_target);
	self waittill("turret_on_target");
	self FireWeapon(0, e_target);
	level scene::Play(var_65f65be, "scriptbundlename");
}

/*
	Name: function_b26e24ab
	Namespace: church
	Checksum: 0x12091CC6
	Offset: 0x19F0
	Size: 0x107
	Parameters: 1
	Flags: None
*/
function function_b26e24ab(ai)
{
	self endon("trophy_system_enabled");
	self endon("death");
	ai endon("death");
	n_min_dist = 150;
	n_max_dist = 350;
	var_ec020d8 = 48;
	while(1)
	{
		var_72237359 = [];
		var_72237359 = util::PositionQuery_PointArray(self.origin, n_min_dist, n_max_dist, var_ec020d8, 70, ai);
		if(var_72237359.size)
		{
			ai SetGoal(Array::random(var_72237359), 1);
		}
		wait(RandomFloatRange(0.5, 1));
	}
}

/*
	Name: function_3546987d
	Namespace: church
	Checksum: 0x26115F2F
	Offset: 0x1B00
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_3546987d()
{
	objectives::complete("cp_level_infection_follow_sarah");
	objectives::set("cp_level_infection_destroy_quadtank", self);
}

/*
	Name: function_f46b47c
	Namespace: church
	Checksum: 0x7A5AD1F3
	Offset: 0x1B40
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_f46b47c()
{
	level scene::init("p7_fxanim_cp_infection_church_pillars_explode_01_bundle", "scriptbundlename");
	level scene::init("p7_fxanim_cp_infection_church_pillars_explode_02_bundle", "scriptbundlename");
	level scene::init("p7_fxanim_cp_infection_church_pillars_explode_03_bundle", "scriptbundlename");
	level scene::init("p7_fxanim_cp_infection_church_pillars_explode_04_bundle", "scriptbundlename");
	scene::add_scene_func("cin_inf_11_06_fold_vign_hell", &function_517e0167, "init");
	scene::add_scene_func("cin_inf_11_06_fold_vign_hell", &function_a4194ec3, "play");
	scene::add_scene_func("p7_fxanim_cp_infection_cathedral_floor_bundle", &function_d0dfc621, "play");
	scene::add_scene_func("cin_inf_12_01_underwater_1st_fall_01", &function_5661e491, "play");
}

/*
	Name: function_e5a6d1b6
	Namespace: church
	Checksum: 0x352B149E
	Offset: 0x1CB0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_e5a6d1b6()
{
	var_357e383d = 0;
	a_ai = GetAITeamArray("axis");
	for(a_ai = Array::remove_dead(a_ai, 0); a_ai.size > 0 && var_357e383d < 3;  = Array::remove_dead(a_ai, 0))
	{
		wait(0.1);
		var_357e383d = var_357e383d + 0.1;
		a_ai = GetAITeamArray("axis");
	}
}

/*
	Name: function_96d3596c
	Namespace: church
	Checksum: 0xC1E03CB3
	Offset: 0x1D90
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_96d3596c()
{
	spawn_manager::enable("sm_cathedral_upper");
	spawn_manager::enable("sm_cathedral_lower");
	trigger::wait_or_timeout(20, "cathedral_intro_reverse");
	if(level.players.size <= 2)
	{
		spawn_manager::function_41cd3a68(21);
	}
	if(level.players.size >= 3)
	{
		spawn_manager::function_41cd3a68(31);
	}
}

/*
	Name: function_c63f5a62
	Namespace: church
	Checksum: 0x8ED0D0E1
	Offset: 0x1E40
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_c63f5a62()
{
	namespace_36cbf523::function_c8d7e76("cathedral_reverse_anim");
	level thread function_96d3596c();
	level thread namespace_bed101ee::function_b716312();
	level flag::wait_till("cathedral_quad_tank_destroyed");
	spawn_manager::kill("sm_cathedral_upper");
	spawn_manager::kill("sm_cathedral_lower");
	util::wait_network_frame();
	level thread function_bcf5c753();
}

/*
	Name: function_bcf5c753
	Namespace: church
	Checksum: 0x62D9C5DA
	Offset: 0x1F10
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_bcf5c753()
{
	a_ai = GetAITeamArray("axis");
	for(i = 0; i < a_ai.size; i++)
	{
		if(isalive(a_ai[i]))
		{
			a_ai[i] kill();
			wait(0.1);
		}
	}
}

/*
	Name: function_611a9795
	Namespace: church
	Checksum: 0x74A104C8
	Offset: 0x1FB0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_611a9795()
{
	level scene::init("cin_inf_11_06_fold_vign_hell");
}

/*
	Name: function_6d3642e
	Namespace: church
	Checksum: 0x89F2AE71
	Offset: 0x1FE0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_6d3642e()
{
	trig = GetEnt("cathedral_sarah_at_altar", "targetname");
	trig TriggerEnable(1);
	trig waittill("trigger", who);
	level.var_26e8728a = who;
	level flag::set("sarah_distance_objective");
	objectives::complete("cp_level_infection_confront_sarah");
	level thread namespace_bed101ee::function_af130cfc();
	Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
}

/*
	Name: function_4043ed0a
	Namespace: church
	Checksum: 0xF28808EE
	Offset: 0x20D8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_4043ed0a()
{
	level scene::Play("cin_inf_11_06_fold_vign_hell", level.var_26e8728a);
	level waittill("hash_319c8cf7");
	level thread skipto::function_be8adfb8("cathedral");
}

/*
	Name: function_5661e491
	Namespace: church
	Checksum: 0x4D72EB81
	Offset: 0x2138
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_5661e491(a_ents)
{
	level thread namespace_bed101ee::function_973b77f9();
}

/*
	Name: function_d0dfc621
	Namespace: church
	Checksum: 0xE008DE10
	Offset: 0x2168
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_d0dfc621(a_ents)
{
	level clientfield::set("cathedral_water_state", 1);
	foreach(player in level.players)
	{
		player thread function_50bfe0b5(6, 1);
		Earthquake(0.22, 7, player.origin, 150);
	}
}

/*
	Name: function_517e0167
	Namespace: church
	Checksum: 0xEAB39875
	Offset: 0x2260
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_517e0167(a_ents)
{
	if(!level flag::get("sarah_distance_objective"))
	{
		objectives::set("cp_level_infection_confront_sarah", a_ents["sarah"]);
	}
	a_ents["sarah"] thread namespace_36cbf523::function_9110a277(0);
}

/*
	Name: function_a4194ec3
	Namespace: church
	Checksum: 0x89AFEFD
	Offset: 0x22E0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_a4194ec3(a_ents)
{
	level clientfield::set("toggle_cathedral_fog_banks", 1);
	level thread scene::init("cin_inf_12_01_underwater_1st_fall_underwater02");
	level waittill("hash_bd8dec38");
	a_ents["sarah"] thread namespace_36cbf523::function_9110a277(1);
	level thread scene::init("p7_fxanim_cp_infection_cathedral_floor_bundle");
	level thread function_ee14f7e6();
	level waittill("hash_88307bc9");
	level thread scene::Play("p7_fxanim_cp_infection_cathedral_floor_bundle");
}

/*
	Name: function_ee14f7e6
	Namespace: church
	Checksum: 0x12AA72D4
	Offset: 0x23C8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_ee14f7e6()
{
	while(!scene::is_ready("p7_fxanim_cp_infection_cathedral_floor_bundle"))
	{
		wait(0.05);
	}
	function_9e3608e3("inf_cathedral_floor_fxanim");
}

/*
	Name: function_50bfe0b5
	Namespace: church
	Checksum: 0x663BF823
	Offset: 0x2418
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_50bfe0b5(n_loops, n_wait)
{
	self endon("death");
	for(i = 0; i < n_loops; i++)
	{
		self PlayRumbleOnEntity("cp_infection_floor_break");
		wait(n_wait);
	}
}

/*
	Name: function_85611d5b
	Namespace: church
	Checksum: 0x59320106
	Offset: 0x2490
	Size: 0x3D9
	Parameters: 0
	Flags: None
*/
function function_85611d5b()
{
	level thread namespace_bed101ee::function_973b77f9();
	a_doors = GetEntArray("church_door", "targetname");
	/#
		Assert(a_doors.size, "Dev Block strings are not supported");
	#/
	var_5c953c1c = [];
	foreach(m_door in a_doors)
	{
		/#
			Assert(isdefined(m_door.script_int), "Dev Block strings are not supported" + m_door.origin + "Dev Block strings are not supported");
		#/
		/#
			Assert(isdefined(m_door.target), "Dev Block strings are not supported" + m_door.origin + "Dev Block strings are not supported");
		#/
		var_2aa12782 = struct::get(m_door.target, "targetname");
		e_temp = spawn("script_origin", var_2aa12782.origin);
		m_door LinkTo(e_temp);
		e_temp RotateYaw(m_door.script_int, 1.5, 0.25, 0.25);
		e_temp playsound("evt_church_doors_close");
		if(!isdefined(var_5c953c1c))
		{
			var_5c953c1c = [];
		}
		else if(!IsArray(var_5c953c1c))
		{
			var_5c953c1c = Array(var_5c953c1c);
		}
		var_5c953c1c[var_5c953c1c.size] = e_temp;
	}
	wait(1.5);
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("damage_heavy");
	}
	foreach(e_temp in var_5c953c1c)
	{
		e_temp delete();
	}
}

/*
	Name: function_8aabc20e
	Namespace: church
	Checksum: 0x5895E89A
	Offset: 0x2878
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_8aabc20e()
{
	s_start = struct::get("church_in_foy", "targetname");
	/#
		Assert(isdefined(s_start), "Dev Block strings are not supported");
	#/
	s_end = struct::get("church_inside_cathedral", "targetname");
	/#
		Assert(isdefined(s_end), "Dev Block strings are not supported");
	#/
	var_4e7ce67b = util::spawn_model("tag_origin", s_start.origin, s_start.angles);
	var_fc400d58 = util::spawn_model("tag_origin", s_end.origin, s_end.angles);
	foreach(player in level.players)
	{
		v_local = var_4e7ce67b WorldToLocalCoords(player.origin);
		var_baf9d36 = var_fc400d58 LocalToWorldCoords(v_local);
		v_angles = combineangles(var_fc400d58.angles - var_4e7ce67b.angles, player getPlayerAngles());
		player SetOrigin(var_baf9d36);
		player SetPlayerAngles(v_angles);
	}
	var_4e7ce67b delete();
	var_fc400d58 delete();
	skipto::function_be8adfb8("church");
}

/*
	Name: function_9ad74a02
	Namespace: church
	Checksum: 0xCEC979F5
	Offset: 0x2B38
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_9ad74a02(a_ents)
{
	level waittill("hash_252cf940");
	level clientfield::set("light_church_int_all", 1);
	Array::spread_all(level.players, &function_252cf940, a_ents[0]);
}

/*
	Name: function_252cf940
	Namespace: church
	Checksum: 0x977D5D03
	Offset: 0x2BB0
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_252cf940(var_4aa3a795)
{
	var_89c338ec = var_4aa3a795.origin - self.origin;
	var_89c338ec = VectorNormalize(var_89c338ec);
	v_forward = AnglesToForward(self.angles);
	var_ab382970 = VectorDot(var_89c338ec, v_forward);
	if(var_ab382970 >= 0)
	{
		var_a6cdd544 = -1;
	}
	else
	{
		var_a6cdd544 = 1;
	}
	v_dir = AnglesToForward(self.angles);
	var_e03fdb7 = var_a6cdd544 * 1200;
	self SetVelocity(v_dir * var_e03fdb7);
}

/*
	Name: function_e3cbb3ec
	Namespace: church
	Checksum: 0xC39D247B
	Offset: 0x2CE8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_e3cbb3ec(a_ents)
{
	a_ents[0] SetForceNoCull();
	level waittill("hash_99bc006e");
	a_ents[0] notsolid();
}

/*
	Name: function_99a9f593
	Namespace: church
	Checksum: 0xFFF6D7DE
	Offset: 0x2D40
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_99a9f593(a_ents)
{
	vh_tank = a_ents["tiger_tank_cinematic"];
	function_e32e0193(vh_tank);
}

/*
	Name: function_64a8118d
	Namespace: church
	Checksum: 0x5DBCC4AB
	Offset: 0x2D88
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_64a8118d()
{
	self.script_accuracy = 0.7;
}


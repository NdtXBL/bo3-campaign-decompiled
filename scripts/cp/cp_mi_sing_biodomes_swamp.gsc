#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_supertrees;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cp_mi_sing_biodomes2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\teamgather_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_a660d427;

/*
	Name: main
	Namespace: namespace_a660d427
	Checksum: 0x34E365EC
	Offset: 0x1F98
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function main()
{
	function_80f24610();
	spawner::add_spawn_function_group("attacking_wasp", "script_noteworthy", &function_2297c05c);
	setup_scenes();
}

/*
	Name: setup_scenes
	Namespace: namespace_a660d427
	Checksum: 0xD46E7321
	Offset: 0x1FF8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function setup_scenes()
{
	scene::add_scene_func("cin_bio_15_02_player_vign_ontoboat_portnear", &function_4a242f62, "play");
	scene::add_scene_func("cin_bio_15_02_player_vign_ontoboat_starboardnear", &function_4a242f62, "play");
}

/*
	Name: function_80f24610
	Namespace: namespace_a660d427
	Checksum: 0xADEBB4F9
	Offset: 0x2068
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_80f24610()
{
	level.var_c141dfcb = [];
	level.var_de54cf10 = 0;
	level.var_242afa66 = 0;
	level.var_197b567a = 0;
	level.var_1205b0f3 = [];
	level.var_1205b0f3["boat1_seat1"] = GetEnt("trigger_boat_1_seat1", "targetname");
	level.var_1205b0f3["boat1_seat2"] = GetEnt("trigger_boat_1_seat2", "targetname");
	level.var_1205b0f3["boat2_seat1"] = GetEnt("trigger_boat_2_seat1", "targetname");
	level.var_1205b0f3["boat2_seat2"] = GetEnt("trigger_boat_2_seat2", "targetname");
	namespace_769dc23f::function_b5aa3655();
	namespace_769dc23f::function_10fc44d8();
}

/*
	Name: function_46a6d6ab
	Namespace: namespace_a660d427
	Checksum: 0xD166B023
	Offset: 0x21A0
	Size: 0x503
	Parameters: 2
	Flags: None
*/
function function_46a6d6ab(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_swamps_init");
	exploder::exploder("fx_expl_swamp_swim");
	exploder::exploder("fx_expl_swamp_rail");
	exploder::stop_exploder("fx_expl_supertree_collapse");
	exploder::stop_exploder("fx_expl_lowerplatform_supertree");
	exploder::stop_exploder("fx_expl_fire_boat_explode");
	level thread function_2ebccf5();
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		namespace_27a45d31::function_bff1a867(str_objective);
		level.var_2fd26037 thread function_dd9ded92();
		level flag::set("player_dive_done");
		level flag::set("hendricks_dive");
		level flag::set("player_reached_bottom_finaltree");
		level flag::set("player_reached_top_finaltree");
		level flag::set("any_player_reached_bottom_finaltree");
		level flag::set("hendricks_played_supertree_takedown");
		level thread function_b52b6eac();
		Array::thread_all(level.players, &function_39af75ef, "boats_go");
		var_57a51f3c = GetEnt("vista_water", "targetname");
		var_57a51f3c delete();
		load::function_a2995f22();
	}
	if(level.var_adcba170 !== 1)
	{
		objectives::set("cp_level_biodomes_jump_from_supertree");
		objectives::complete("cp_level_biodomes_jump_from_supertree");
		level.var_adcba170 = 1;
	}
	level thread function_59212f01();
	objectives::set("cp_level_biodomes_dock_hendricks", struct::get("dock_waypoint"));
	foreach(player in level.activePlayers)
	{
		player util::show_hint_text(&"COOP_SWIM_INSTRUCTIONS");
	}
	trigger::wait_till("t_player_dock");
	objectives::complete("cp_level_biodomes_dock_hendricks");
	objectives::set("cp_level_biodomes_secure_the_dock");
	level waittill("hash_691476e5");
	objectives::complete("cp_level_biodomes_secure_the_dock");
	if(level.players.size == 1)
	{
		objectives::set("cp_level_biodomes_escape", struct::get("airboat_waypoint_solo"));
		function_310b4b12(0, 0, level.players.size);
		level thread function_1f65dbfc();
	}
	else
	{
		objectives::set("cp_level_biodomes_escape", struct::get("airboat_waypoint"));
		function_310b4b12(0, 0);
	}
	if(level.players.size > 2)
	{
		function_310b4b12(1, 0);
	}
}

/*
	Name: function_1f65dbfc
	Namespace: namespace_a660d427
	Checksum: 0x6AB4FD9A
	Offset: 0x26B0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_1f65dbfc()
{
	while(level.players.size == 1)
	{
		wait(0.05);
	}
	objectives::set("cp_level_biodomes_escape", struct::get("airboat_waypoint"));
	objectives::complete("cp_level_biodomes_escape", struct::get("airboat_waypoint_solo"));
	function_310b4b12(0, 0);
}

/*
	Name: function_7220010f
	Namespace: namespace_a660d427
	Checksum: 0x35D9891F
	Offset: 0x2758
	Size: 0x1BB
	Parameters: 2
	Flags: None
*/
function function_7220010f(str_objective, var_74cd64bc)
{
	level.var_3599083d = 1;
	SetDvar("phys_buoyancy", 1);
	SetDvar("cg_viewVehicleInfluenceGunner_mode", 1);
	namespace_27a45d31::function_ddb0eeea("objective_swamps_init");
	objectives::set("cp_level_biodomes_escape", struct::get("airboat_waypoint"));
	namespace_27a45d31::function_bff1a867(str_objective);
	level flag::set("hendricks_dive");
	function_d343057f(1);
	level thread function_2ebccf5();
	level.var_2fd26037 thread function_b7409d73();
	function_310b4b12(0, 0);
	function_310b4b12(1, 0);
	var_57a51f3c = GetEnt("vista_water", "targetname");
	var_57a51f3c delete();
	trigger::wait_till("dev_trig_checkpoint");
	savegame::function_5d2cdd99();
}

/*
	Name: function_b52b6eac
	Namespace: namespace_a660d427
	Checksum: 0x736A5301
	Offset: 0x2920
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_b52b6eac()
{
	SetDvar("phys_buoyancy", 1);
	SetDvar("cg_viewVehicleInfluenceGunner_mode", 1);
	level thread function_5c8dbd1b();
	level thread function_d343057f();
	level thread function_1d4f0199();
	function_9e3608e3("fxanim_supertree");
}

/*
	Name: function_2ebccf5
	Namespace: namespace_a660d427
	Checksum: 0x907D7425
	Offset: 0x29D0
	Size: 0x563
	Parameters: 0
	Flags: None
*/
function function_2ebccf5()
{
	level.vehicle_main_callback["hunter"] = &function_32bc987b;
	exploder::exploder("grd_twr_01");
	exploder::exploder("grd_twr_02");
	exploder::exploder("grd_twr_03");
	exploder::exploder("grd_twr_04");
	function_36e4a4e3("tall_grass_boat");
	function_35a6217a("guard_tower_1", &function_963be5f4);
	function_35a6217a("guard_tower_2", &function_a59a792b);
	function_35a6217a("guard_tower_3", &function_2f957a8e);
	function_35a6217a("guard_tower_4", &function_a101398d);
	function_3f50cfab(1);
	level scene::init("p7_fxanim_cp_biodomes_sky_bridge_bundle");
	level thread function_71c5569c();
	level thread function_f06f5bf7();
	level thread function_24ae79ca();
	level thread function_fc1824d4();
	level thread function_4195b656();
	level thread function_d0b5b3de();
	level thread function_22ebbed();
	level thread function_12ca763f();
	level thread function_beedc0e7();
	level thread function_b3f809ee();
	level thread function_28313656();
	level thread function_2eee0c9c();
	level thread function_a903f6c1();
	level thread function_eff4afac();
	level thread function_9dd4818b();
	level thread function_95d3fd43();
	level thread function_c4fa2d2a();
	level thread function_72c5c9fd();
	level thread function_d8a75b5f();
	level thread function_dffe67b3();
	level thread function_d54492e();
	level thread function_2b6be7f7();
	level thread function_7f6a680f();
	level thread function_6111ddb4();
	level thread function_cfcdf5f4();
	level thread function_97247f7c();
	level thread function_81aca4ee();
	level thread function_452c817b();
	level thread function_9051a477();
	level thread function_c211eb0f();
	level thread function_5d6e5b81();
	level thread function_e2a7176();
	level thread function_70d3e476();
	level thread function_bfeb301d();
	level thread function_dacdabc9();
	level thread function_e5f905bd();
	level thread function_400cc8f4();
	level thread function_7fea5e8b();
	level thread function_daab7239();
	level thread function_ca115f5b();
	level thread function_2b558db7();
	level thread function_d665973f();
}

/*
	Name: function_df945144
	Namespace: namespace_a660d427
	Checksum: 0x54971ECF
	Offset: 0x2F40
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_df945144()
{
	var_60b2e0dc = GetEntArray("t_hendricks_boat_anim", "targetname");
	foreach(var_83a975fc in var_60b2e0dc)
	{
		var_83a975fc thread function_e46e9d15();
	}
}

/*
	Name: function_e46e9d15
	Namespace: namespace_a660d427
	Checksum: 0x61DC88CC
	Offset: 0x3000
	Size: 0x1A5
	Parameters: 0
	Flags: None
*/
function function_e46e9d15()
{
	while(1)
	{
		self trigger::wait_till();
		if(self.who == level.var_2fd26037)
		{
			switch(self.script_noteworthy)
			{
				case "left":
				{
					level thread scene::init("cin_bio_15_03_waterpark_vign_lean_left");
					break;
				}
				case "left_exit":
				{
					level scene::Play("cin_bio_15_03_waterpark_vign_lean_left");
					level thread scene::Play("cin_bio_15_03_waterpark_vign_lean_center");
					break;
				}
				case "right":
				{
					level thread scene::init("cin_bio_15_03_waterpark_vign_lean_right");
					break;
				}
				case "right_exit":
				{
					level scene::Play("cin_bio_15_03_waterpark_vign_lean_right");
					level thread scene::Play("cin_bio_15_03_waterpark_vign_lean_center");
					break;
				}
				case "shoot":
				{
					level thread scene::init("cin_bio_15_03_waterpark_vign_shoot");
					break;
				}
				case "shoot_exit":
				{
					level scene::Play("cin_bio_15_03_waterpark_vign_shoot");
					level thread scene::Play("cin_bio_15_03_waterpark_vign_lean_center");
					break;
				}
			}
			break;
		}
	}
}

/*
	Name: function_5c8dbd1b
	Namespace: namespace_a660d427
	Checksum: 0xBFB56B9
	Offset: 0x31B0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_5c8dbd1b()
{
	level endon("hash_7dbaf7af");
	var_28159fea = GetEnt("t_murky_water", "targetname");
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			if(player istouching(var_28159fea) || (isdefined(player.active_camo) && player.active_camo))
			{
				player.ignoreme = 1;
				continue;
			}
			player.ignoreme = 0;
		}
		wait(0.3);
	}
}

/*
	Name: function_e5f905bd
	Namespace: namespace_a660d427
	Checksum: 0x2566878A
	Offset: 0x32E0
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_e5f905bd()
{
	var_9ffce615 = GetEnt("trigger_store_crash", "targetname");
	foreach(player in level.activePlayers)
	{
		player thread function_53ae4df(var_9ffce615);
	}
}

/*
	Name: function_7f6a680f
	Namespace: namespace_a660d427
	Checksum: 0xB00D4CD1
	Offset: 0x33A8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_7f6a680f()
{
	trigger::wait_till("t_stop_swamp_fire");
	exploder::stop_exploder("fx_expl_swamp_fire_tanker");
	exploder::stop_exploder("fx_expl_fire_prehunter_supertree");
	exploder::stop_exploder("fx_expl_fire_posthunter_supertree");
	exploder::stop_exploder("fx_expl_fire_arrivetop_supertree");
	exploder::stop_exploder("fx_expl_fire_deathtop_supertree");
	exploder::stop_exploder("fx_expl_fire_descendlast_supertree");
}

/*
	Name: function_3f50cfab
	Namespace: namespace_a660d427
	Checksum: 0x64A5BEA
	Offset: 0x3460
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function function_3f50cfab(b_hide)
{
	if(!isdefined(b_hide))
	{
		b_hide = 1;
	}
	var_8cc31d7a = GetEntArray("ferris_wheel_debris", "targetname");
	foreach(mdl in var_8cc31d7a)
	{
		if(b_hide == 1)
		{
			mdl Hide();
			continue;
		}
		mdl show();
	}
}

/*
	Name: function_d2e5a108
	Namespace: namespace_a660d427
	Checksum: 0x77012315
	Offset: 0x3568
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_d2e5a108(a_ents)
{
	function_3f50cfab(0);
}

/*
	Name: function_cfcdf5f4
	Namespace: namespace_a660d427
	Checksum: 0xC671BF7F
	Offset: 0x3598
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_cfcdf5f4()
{
	trigger::wait_till("trigger_ferriswheel_collapse");
	scene::add_scene_func("p7_fxanim_cp_biodomes_ferris_wheel_bundle", &function_d2e5a108, "done");
	level thread scene::Play("p7_fxanim_cp_biodomes_ferris_wheel_bundle");
	level waittill("hash_55a06ec6");
	var_65d8b9a4 = struct::get("s_ferris_wheel_rumble", "targetname");
	PlayRumbleOnPosition("cp_biodomes_ferris_wheel_rumble", var_65d8b9a4.origin);
	foreach(player in level.activePlayers)
	{
		player DoDamage(71, var_65d8b9a4.origin);
	}
}

/*
	Name: function_b898dce1
	Namespace: namespace_a660d427
	Checksum: 0x7BF2E56C
	Offset: 0x3708
	Size: 0x63
	Parameters: 4
	Flags: None
*/
function function_b898dce1(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("objective_swamps_done");
	namespace_769dc23f::function_a057c38f();
	objectives::complete("cp_level_biodomes_extract");
}

/*
	Name: function_ff8ed5e2
	Namespace: namespace_a660d427
	Checksum: 0x3E9061BE
	Offset: 0x3778
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_ff8ed5e2(s_target)
{
	self waittill("death");
	FX::Play("depth_charge", s_target.origin);
}

/*
	Name: function_d343057f
	Namespace: namespace_a660d427
	Checksum: 0xF9E9C569
	Offset: 0x37C0
	Size: 0x283
	Parameters: 1
	Flags: None
*/
function function_d343057f(var_3599083d)
{
	if(!isdefined(var_3599083d))
	{
		var_3599083d = 0;
	}
	level.var_c141dfcb[0] = function_90baa7b5("airboat_1");
	level.var_c141dfcb[1] = function_90baa7b5("airboat_2");
	level thread function_bba989c4(var_3599083d);
	level thread function_247e9ab0();
	level thread function_3bb88e47();
	level thread function_381c90d7();
	function_312d4b85();
	level.var_c141dfcb[0] thread function_3d026c12();
	if(level.players.size <= 2 && var_3599083d == 0)
	{
		function_c98db861(1);
	}
	level.var_78a73398 = [];
	for(i = 0; i < 2; i++)
	{
		level.var_78a73398[i] = util::spawn_model("tag_origin", level.var_c141dfcb[i].origin, level.var_c141dfcb[i].angles);
		level.var_78a73398[i] LinkTo(level.var_c141dfcb[i], "tag_origin", (350, 0, 30));
		level.var_78a73398[i].team = "allies";
		level.var_78a73398[i].health = 10000;
		level.var_78a73398[i].takedamage = 0;
	}
	level flag::set("boats_init");
	/#
		level thread function_73defa42();
	#/
}

/*
	Name: function_73defa42
	Namespace: namespace_a660d427
	Checksum: 0x6A98EA5D
	Offset: 0x3A50
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_73defa42()
{
	/#
		while(1)
		{
			foreach(var_3929e8a2 in level.var_78a73398)
			{
				debug::drawArrow(var_3929e8a2.origin, var_3929e8a2.angles);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_c98db861
	Namespace: namespace_a660d427
	Checksum: 0x821FDA70
	Offset: 0x3B10
	Size: 0x1F7
	Parameters: 1
	Flags: None
*/
function function_c98db861(b_hide)
{
	var_ec8cfe95 = GetEnt("boat_bottom_clip_02", "targetname");
	if(b_hide == 1)
	{
		if(level.var_de54cf10 == 0)
		{
			var_ec8cfe95 notsolid();
			level.var_c141dfcb[1] notsolid();
			level.var_c141dfcb[1] ghost();
			level.var_c141dfcb[1] MakeVehicleUnusable();
			level.var_c141dfcb[1] clientfield::set("boat_disable_sfx", 1);
			function_310b4b12(1, 1);
			level.var_de54cf10 = 1;
		}
	}
	else if(level.var_de54cf10 == 1)
	{
		var_ec8cfe95 solid();
		level.var_c141dfcb[1] solid();
		level.var_c141dfcb[1] show();
		level.var_c141dfcb[1] MakeVehicleUsable();
		level.var_c141dfcb[1] clientfield::set("boat_disable_sfx", 0);
		function_310b4b12(1, 0);
		level.var_de54cf10 = 0;
	}
}

/*
	Name: function_e5108e73
	Namespace: namespace_a660d427
	Checksum: 0x84EB7BA5
	Offset: 0x3D10
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_e5108e73(b_hide)
{
	if(b_hide == 1)
	{
		if(level.var_de54cf10 == 0)
		{
			level.var_c141dfcb[1] ghost();
			level.var_c141dfcb[1] clientfield::set("boat_disable_sfx", 1);
			level.var_de54cf10 = 1;
		}
	}
	else if(level.var_de54cf10 == 1)
	{
		level.var_c141dfcb[1] show();
		level.var_c141dfcb[1] clientfield::set("boat_disable_sfx", 0);
		level.var_de54cf10 = 0;
	}
}

/*
	Name: function_90baa7b5
	Namespace: namespace_a660d427
	Checksum: 0xA3A01296
	Offset: 0x3E28
	Size: 0xBF
	Parameters: 2
	Flags: None
*/
function function_90baa7b5(var_be93bd02, e_boat)
{
	e_boat = vehicle::simple_spawn_single(var_be93bd02);
	e_boat SetCanDamage(0);
	e_boat MakeVehicleUsable();
	e_boat thread function_5175e36a();
	e_boat SetSeatOccupied(1, 1);
	e_boat SetSeatOccupied(2, 1);
	return e_boat;
}

/*
	Name: function_3bb88e47
	Namespace: namespace_a660d427
	Checksum: 0x48AD48F6
	Offset: 0x3EF0
	Size: 0x129
	Parameters: 0
	Flags: None
*/
function function_3bb88e47()
{
	v_offset = (0, 0, 0);
	foreach(var_f2684ab8 in level.var_1205b0f3)
	{
		var_f2684ab8 show();
		var_f2684ab8.var_5356d2cc = util::function_14518e76(var_f2684ab8, &"cp_prompt_entervehicle_biodomes_boat", &"CP_MI_SING_BIODOMES_AIRBOAT", &function_5e1bcb15);
		var_f2684ab8.var_5356d2cc thread gameobjects::hide_icon_distance_and_los((1, 1, 1), 600, 0);
		var_f2684ab8.var_5356d2cc gameobjects::disable_object();
	}
}

/*
	Name: function_5e1bcb15
	Namespace: namespace_a660d427
	Checksum: 0x5BF13247
	Offset: 0x4028
	Size: 0x361
	Parameters: 1
	Flags: None
*/
function function_5e1bcb15(e_player)
{
	switch(self.trigger.targetname)
	{
		case "trigger_boat_1_seat1":
		{
			level.var_c141dfcb[0] SetSeatOccupied(1, 0);
			self gameobjects::disable_object();
			e_player.var_462738ee = level.var_c141dfcb[0].script_int;
			e_player.n_seat = 1;
			e_player thread function_d53a8683(level.var_c141dfcb[0]);
			e_player thread function_b7a3f7a0(1, self, level.var_c141dfcb[0]);
			break;
		}
		case "trigger_boat_1_seat2":
		{
			level.var_c141dfcb[0] SetSeatOccupied(2, 0);
			e_player.var_462738ee = level.var_c141dfcb[0].script_int;
			e_player.n_seat = 2;
			e_player thread function_d53a8683(level.var_c141dfcb[0]);
			self gameobjects::disable_object();
			e_player thread function_b7a3f7a0(2, self, level.var_c141dfcb[0]);
			break;
		}
		case "trigger_boat_2_seat1":
		{
			level.var_c141dfcb[1] SetSeatOccupied(1, 0);
			e_player.var_462738ee = level.var_c141dfcb[1].script_int;
			e_player.n_seat = 1;
			e_player thread function_d53a8683(level.var_c141dfcb[1]);
			self gameobjects::disable_object();
			e_player thread function_b7a3f7a0(1, self, level.var_c141dfcb[1]);
			break;
		}
		case "trigger_boat_2_seat2":
		{
			level.var_c141dfcb[1] SetSeatOccupied(2, 0);
			e_player.var_462738ee = level.var_c141dfcb[1].script_int;
			e_player.n_seat = 2;
			e_player thread function_d53a8683(level.var_c141dfcb[1]);
			self gameobjects::disable_object();
			e_player thread function_b7a3f7a0(2, self, level.var_c141dfcb[1]);
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_b7a3f7a0
	Namespace: namespace_a660d427
	Checksum: 0xDFA0BFC9
	Offset: 0x4398
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_b7a3f7a0(n_seat, e_gameobject, vh_boat)
{
	level endon("hash_1f82cbf");
	util::wait_network_frame();
	self function_218bb1a9();
	vh_boat SetSeatOccupied(n_seat, 1);
	e_gameobject gameobjects::enable_object();
	level flag::clear("all_players_on_boats");
}

/*
	Name: function_218bb1a9
	Namespace: namespace_a660d427
	Checksum: 0xE8B2CA0C
	Offset: 0x4450
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function function_218bb1a9()
{
	self endon("death");
	self waittill("exit_vehicle");
	self.overridePlayerDamage = undefined;
}

/*
	Name: function_381c90d7
	Namespace: namespace_a660d427
	Checksum: 0xE5D90A75
	Offset: 0x4480
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_381c90d7()
{
	level flag::wait_till("boats_go");
	foreach(var_f2684ab8 in level.var_1205b0f3)
	{
		var_f2684ab8.var_5356d2cc gameobjects::destroy_object();
		var_f2684ab8 delete();
	}
}

/*
	Name: function_310b4b12
	Namespace: namespace_a660d427
	Checksum: 0x9E8E7949
	Offset: 0x4558
	Size: 0x105
	Parameters: 3
	Flags: None
*/
function function_310b4b12(var_62f1cf67, b_hide, var_52c8d3d6)
{
	if(!isdefined(var_52c8d3d6))
	{
		var_52c8d3d6 = 2;
	}
	var_462738ee = var_62f1cf67 + 1;
	for(i = 1; i <= var_52c8d3d6; i++)
	{
		if(b_hide)
		{
			level.var_1205b0f3["boat" + var_462738ee + "_seat" + i].var_5356d2cc gameobjects::disable_object();
			continue;
		}
		level.var_1205b0f3["boat" + var_462738ee + "_seat" + i].var_5356d2cc gameobjects::enable_object();
	}
}

/*
	Name: function_f06f5bf7
	Namespace: namespace_a660d427
	Checksum: 0xCE9A6E6D
	Offset: 0x4668
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_f06f5bf7()
{
	var_20f79745 = GetEntArray("trigger_boat_rumble", "targetname");
	foreach(var_4e47ece5 in var_20f79745)
	{
		var_4e47ece5 thread function_b2aec1cf();
	}
}

/*
	Name: function_b2aec1cf
	Namespace: namespace_a660d427
	Checksum: 0xC2A6C192
	Offset: 0x4728
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_b2aec1cf()
{
	level endon("hash_9c7f20b4");
	while(1)
	{
		self waittill("trigger", player);
		if(isPlayer(player))
		{
			player PlayRumbleOnEntity("cp_biodomes_airboat_start_rumble");
			player clientfield::increment_to_player("sound_evt_boat_rattle");
			wait(0.3);
			while(player istouching(self))
			{
				player PlayRumbleOnEntity("cp_biodomes_airboat_rumble");
				wait(0.1);
			}
			player PlayRumbleOnEntity("cp_biodomes_airboat_stop_rumble");
		}
	}
}

/*
	Name: function_b3f809ee
	Namespace: namespace_a660d427
	Checksum: 0x12992C54
	Offset: 0x4820
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_b3f809ee()
{
	var_f2684ab8 = GetEnt("trigger_boat_scrape", "targetname");
	var_f2684ab8 waittill("trigger");
	level.var_c141dfcb[1] clientfield::increment("sound_evt_boat_scrape_impact");
	while(level.var_c141dfcb[1] istouching(var_f2684ab8))
	{
		v_forward = level.var_c141dfcb[1].origin + AnglesToForward(level.var_c141dfcb[1].angles) * 150;
		v_pos = level.var_c141dfcb[1].origin + v_forward;
		if(level.var_de54cf10 == 0)
		{
			FX::Play("boat_sparks", v_forward);
		}
		wait(0.1);
	}
}

/*
	Name: function_1bd42852
	Namespace: namespace_a660d427
	Checksum: 0xCBACC870
	Offset: 0x4968
	Size: 0x3CB
	Parameters: 0
	Flags: None
*/
function function_1bd42852()
{
	var_233fafd3 = [];
	var_233fafd3 = level.var_c141dfcb[0] GetVehOccupants();
	var_b1384098 = [];
	var_b1384098 = level.var_c141dfcb[1] GetVehOccupants();
	if(!var_233fafd3.size)
	{
		self.var_462738ee = level.var_c141dfcb[0].script_int;
		self.n_seat = 1;
		level.var_c141dfcb[0] SetSeatOccupied(1, 0);
		level.var_c141dfcb[0] usevehicle(self, 1);
	}
	else if(var_233fafd3.size < 2)
	{
		self.var_462738ee = level.var_c141dfcb[0].script_int;
		n_seat = level.var_c141dfcb[0] GetOccupantSeat(var_233fafd3[0]);
		if(n_seat == 1)
		{
			self.n_seat = 2;
			level.var_c141dfcb[0] SetSeatOccupied(2, 0);
			level.var_c141dfcb[0] usevehicle(self, 2);
		}
		else
		{
			self.n_seat = 1;
			level.var_c141dfcb[0] SetSeatOccupied(1, 0);
			level.var_c141dfcb[0] usevehicle(self, 1);
		}
	}
	else if(!var_b1384098.size)
	{
		self.var_462738ee = level.var_c141dfcb[1].script_int;
		self.n_seat = 1;
		level.var_c141dfcb[1] SetSeatOccupied(1, 0);
		level.var_c141dfcb[1] usevehicle(self, 1);
	}
	else
	{
		self.var_462738ee = level.var_c141dfcb[1].script_int;
		n_seat = level.var_c141dfcb[1] GetOccupantSeat(var_b1384098[0]);
		if(n_seat == 1)
		{
			self.n_seat = 2;
			level.var_c141dfcb[1] SetSeatOccupied(2, 0);
			level.var_c141dfcb[1] usevehicle(self, 2);
		}
		else
		{
			self.n_seat = 1;
			level.var_c141dfcb[1] SetSeatOccupied(1, 0);
			level.var_c141dfcb[1] usevehicle(self, 1);
		}
	}
}

/*
	Name: function_ef3ef43d
	Namespace: namespace_a660d427
	Checksum: 0xFA81D17D
	Offset: 0x4D40
	Size: 0x103
	Parameters: 5
	Flags: None
*/
function function_ef3ef43d(var_ce657c90, str_end_flag, str_anim, str_trigger, n_delay)
{
	if(!isdefined(n_delay))
	{
		n_delay = 0;
	}
	level flag::wait_till(var_ce657c90);
	level thread scene::init(str_anim);
	trigger::wait_till(str_trigger);
	if(n_delay > 0)
	{
		wait(n_delay);
	}
	level scene::Play(str_anim);
	level flag::set(str_end_flag);
	t_cleanup = GetEnt(str_trigger, "targetname");
	t_cleanup delete();
}

/*
	Name: function_dd9ded92
	Namespace: namespace_a660d427
	Checksum: 0x68454987
	Offset: 0x4E50
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_dd9ded92()
{
	self notify("stop_following");
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	level scene::init("cin_bio_15_01_waterpark_swim");
	level flag::wait_till("player_dive_done");
	level scene::Play("cin_bio_15_01_waterpark_swim");
	self function_eb8032ff();
	self function_b7409d73();
}

/*
	Name: function_b7409d73
	Namespace: namespace_a660d427
	Checksum: 0x10573584
	Offset: 0x4F30
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b7409d73()
{
	level endon("hash_389c5c5a");
	level notify("hash_691476e5");
	var_d83dec8d = struct::get("hendricks_board");
	self function_12803ed9(var_d83dec8d, 3);
	self thread function_ee9bef99();
}

/*
	Name: function_eb8032ff
	Namespace: namespace_a660d427
	Checksum: 0x2237BF23
	Offset: 0x4FB0
	Size: 0x1DF
	Parameters: 0
	Flags: None
*/
function function_eb8032ff()
{
	self ClearForcedGoal();
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	level notify("hash_f0f605b4");
	level flag::set("dock_enemies_take_cover");
	if(level flag::get("all_players_on_boats"))
	{
		return;
	}
	level endon("hash_c10dcc73");
	var_1ba0b1df = GetNode("nd_dock_hendricks", "targetname");
	self.goalRadius = 16;
	self SetGoal(var_1ba0b1df);
	level flag::wait_till("dock_enemies_retreat");
	var_1ba0b1df = GetNode("nd_dock_hendricks_2", "targetname");
	self SetGoal(var_1ba0b1df);
	while(1)
	{
		var_d61030ed = GetAIArray("dock_guard_ai", "targetname");
		var_291a362b = GetAIArray("water_guard_ai", "targetname");
		if(var_d61030ed.size + var_291a362b.size == 0)
		{
			break;
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_12803ed9
	Namespace: namespace_a660d427
	Checksum: 0x56E3AFE0
	Offset: 0x5198
	Size: 0x283
	Parameters: 2
	Flags: None
*/
function function_12803ed9(s_goal, n_timeout)
{
	self ai::set_ignoreall(1);
	self.goalRadius = 4;
	self SetGoal(s_goal.origin, 1);
	self endon("goal");
	wait(n_timeout);
	level flag::wait_till("all_players_on_boats");
	var_8c9eabdb = 1;
	while(var_8c9eabdb)
	{
		var_8c9eabdb = 0;
		foreach(player in level.players)
		{
			e_linked = player GetLinkedEnt();
			if(isdefined(e_linked))
			{
				n_seat = e_linked GetOccupantSeat(player);
				var_38340604 = e_linked GetSeatFiringAngles(n_seat);
				var_28ec750e = VectorNormalize(var_38340604);
				var_f2311802 = player GetEye();
				var_d35bd1db = VectorNormalize(self.origin - var_f2311802);
				if(VectorDot(var_28ec750e, var_d35bd1db) < 0.7)
				{
					var_8c9eabdb = 1;
				}
			}
		}
		wait(0.1);
	}
	wait(1);
	self ForceTeleport(s_goal.origin, s_goal.angles);
}

/*
	Name: function_ee9bef99
	Namespace: namespace_a660d427
	Checksum: 0x2DD8898D
	Offset: 0x5428
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_ee9bef99()
{
	self ai::set_ignoreme(1);
	self.takedamage = 0;
	self ClearForcedGoal();
	level scene::init("cin_bio_15_02_hendricks_vign_ontoboat");
	level flag::set("hendricks_boat_waiting");
	level thread function_23901dfa();
	level flag::wait_till("boats_ready_to_depart");
	if(isdefined(level.BZM_BIODialogue5_4Callback))
	{
		level thread [[level.BZM_BIODialogue5_4Callback]]();
	}
	level scene::Play("cin_bio_15_02_hendricks_vign_ontoboat");
	self LinkTo(level.var_c141dfcb[0]);
	level flag::set("hendricks_onboard");
	level scene::Play("cin_bio_15_03_waterpark_vign_lean_center");
}

/*
	Name: function_85800b08
	Namespace: namespace_a660d427
	Checksum: 0xACEA7FA
	Offset: 0x5580
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_85800b08()
{
	if(level flag::get("boats_init"))
	{
		var_b0fe27c9 = level.var_c141dfcb[0] GetVehOccupants();
		var_1cc0c750 = level.var_c141dfcb[1] GetVehOccupants();
		if(level.activePlayers.size == 1 && var_b0fe27c9.size == 1 || (level.activePlayers.size == 2 && var_b0fe27c9.size == 2) || (level.activePlayers.size == 3 && var_b0fe27c9.size + var_1cc0c750.size == 3) || (level.activePlayers.size == 4 && var_b0fe27c9.size + var_1cc0c750.size == 4) || (level.skipto_point == "dev_swamp_rail" && level.activePlayers.size == 1 && (var_b0fe27c9.size == 1 || var_1cc0c750.size == 1)))
		{
			level flag::set("all_players_on_boats");
		}
	}
}

/*
	Name: function_7c14c2de
	Namespace: namespace_a660d427
	Checksum: 0xCDCAE35D
	Offset: 0x5710
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_7c14c2de()
{
	var_afe3ada7 = 0;
	foreach(player in level.activePlayers)
	{
		if(player flag::exists("player_on_boat"))
		{
			if(player flag::get("player_on_boat"))
			{
				var_afe3ada7++;
			}
		}
	}
	return var_afe3ada7;
}

/*
	Name: function_9850e9ee
	Namespace: namespace_a660d427
	Checksum: 0x35BCB2F5
	Offset: 0x57E8
	Size: 0x23F
	Parameters: 0
	Flags: None
*/
function function_9850e9ee()
{
	self endon("death");
	level endon("hash_dae0a828");
	while(1)
	{
		if(self flag::get("player_on_boat"))
		{
			e_vehicle = self GetVehicleOccupied();
			if(e_vehicle === level.var_c141dfcb[0] || e_vehicle === level.var_c141dfcb[1])
			{
				if(level flag::get("all_players_on_boats"))
				{
					level.var_c141dfcb[0] MakeVehicleUnusable();
					level.var_c141dfcb[1] MakeVehicleUnusable();
				}
			}
		}
		else if(!self IsInVehicle() && self flag::get("player_on_boat"))
		{
			self flag::clear("player_on_boat");
		}
		if(e_vehicle === level.var_c141dfcb[0] || e_vehicle === level.var_c141dfcb[1])
		{
			if(level flag::get("all_players_on_boats") && level flag::get("hendricks_boat_waiting"))
			{
				level.var_c141dfcb[0] MakeVehicleUnusable();
				level.var_c141dfcb[1] MakeVehicleUnusable();
				while(level.activePlayers.size != function_7c14c2de())
				{
					wait(0.05);
				}
				level flag::set("boats_ready_to_depart");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d53a8683
	Namespace: namespace_a660d427
	Checksum: 0x3079334C
	Offset: 0x5A30
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_d53a8683(vh_boat)
{
	self endon("death");
	n_seat = self.n_seat;
	self thread function_8f2be4cc(vh_boat, n_seat);
	if(n_seat == 1)
	{
		vh_boat scene::Play("cin_bio_15_02_player_vign_ontoboat_portnear", self);
	}
	else
	{
		vh_boat scene::Play("cin_bio_15_02_player_vign_ontoboat_starboardnear", self);
	}
	self.overridePlayerDamage = &function_654111e3;
	vh_boat SetSeatOccupied(n_seat, 0);
	vh_boat usevehicle(self, n_seat);
	self flag::set("player_on_boat");
	function_85800b08();
}

/*
	Name: function_654111e3
	Namespace: namespace_a660d427
	Checksum: 0xAA99D34E
	Offset: 0x5B60
	Size: 0x9B
	Parameters: 13
	Flags: None
*/
function function_654111e3(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, var_4b40c1d0, vSurfaceNormal)
{
	if(weapon == GetWeapon("turret_mil_boat_mg"))
	{
		iDamage = 0;
	}
	return iDamage;
}

/*
	Name: function_4a242f62
	Namespace: namespace_a660d427
	Checksum: 0x7FD8EDE9
	Offset: 0x5C08
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_4a242f62(a_ents)
{
	a_ents["player 1"] notify("hash_b0451c8f");
}

/*
	Name: function_8f2be4cc
	Namespace: namespace_a660d427
	Checksum: 0xE6DCCCD5
	Offset: 0x5C38
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_8f2be4cc(e_boat, n_seat)
{
	self waittill("hash_b0451c8f");
	e_boat SetSeatOccupied(n_seat, 1);
}

/*
	Name: function_bba989c4
	Namespace: namespace_a660d427
	Checksum: 0x6487AB5F
	Offset: 0x5C80
	Size: 0x167
	Parameters: 1
	Flags: None
*/
function function_bba989c4(var_3599083d)
{
	while(1)
	{
		var_afe3ada7 = function_7c14c2de();
		if(level.activePlayers.size > 0)
		{
			if(var_afe3ada7 == level.activePlayers.size || (var_3599083d == 1 && var_afe3ada7 == 1) && level flag::get("hendricks_onboard"))
			{
				level flag::set("boats_go");
				function_df945144();
				var_765f8a2f = GetEnt("t_swamp_oob", "targetname");
				var_765f8a2f delete();
				objectives::set("cp_level_biodomes_extract");
				break;
			}
			else if(level flag::get("boats_go"))
			{
				level flag::clear("boats_go");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_5175e36a
	Namespace: namespace_a660d427
	Checksum: 0x738404D3
	Offset: 0x5DF0
	Size: 0x2B1
	Parameters: 0
	Flags: None
*/
function function_5175e36a()
{
	level flag::wait_till("hendricks_onboard");
	level flag::wait_till("boats_go");
	battlechatter::function_d9f49fba(0);
	self clientfield::increment("sound_veh_airboat_start");
	level thread namespace_76133733::function_11139d81();
	self.nd_start = GetVehicleNode(self.target, "targetname");
	function_9e3608e3("fxanim_fish");
	level scene::stop("cin_bio_15_03_waterpark_vign_lean_center");
	level thread scene::Play("cin_bio_15_03_waterpark_vign_lean_center");
	self thread vehicle::get_on_and_go_path(self.nd_start);
	function_c5f21db5();
	wait(3);
	level.var_c141dfcb[0] SetModel("veh_t7_mil_boat_fan_54i_wet");
	level.var_c141dfcb[1] SetModel("veh_t7_mil_boat_fan_54i_wet");
	self trigger::wait_till("t_grass_fx_on");
	if(self.targetname == "airboat_2_vh")
	{
		level.var_197b567a = 1;
	}
	if(self.targetname == "airboat_2_vh")
	{
		if(level.var_de54cf10 == 0)
		{
			self FX::Play("boat_grass", undefined, undefined, "remove_boat_grass", 1, "tag_origin_animate");
		}
	}
	else
	{
		self FX::Play("boat_grass", undefined, undefined, "remove_boat_grass", 1, "tag_origin_animate");
	}
	self trigger::wait_till("t_grass_fx_off");
	if(self.targetname == "airboat_2_vh")
	{
		level.var_197b567a = 0;
	}
	self notify("hash_76925259");
}

/*
	Name: function_71c5569c
	Namespace: namespace_a660d427
	Checksum: 0x7AFC29D1
	Offset: 0x60B0
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_71c5569c()
{
	level flag::wait_till("boats_go");
	foreach(player in level.players)
	{
		player.overridePlayerDamage = &function_a4e31a4a;
	}
}

/*
	Name: function_a4e31a4a
	Namespace: namespace_a660d427
	Checksum: 0xF55118A7
	Offset: 0x6168
	Size: 0x79
	Parameters: 13
	Flags: None
*/
function function_a4e31a4a(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, var_4b40c1d0, vSurfaceNormal)
{
	iDamage = 1;
	return iDamage;
}

/*
	Name: function_247e9ab0
	Namespace: namespace_a660d427
	Checksum: 0xEC3BFD2A
	Offset: 0x61F0
	Size: 0x2B9
	Parameters: 0
	Flags: None
*/
function function_247e9ab0()
{
	var_5ee9a746 = GetEntArray("trigger_ramp_start", "targetname");
	var_24944fc2 = GetEntArray("trigger_ramp_end", "targetname");
	var_1c2fed59 = GetEntArray("trigger_ramp_land", "targetname");
	foreach(t_start in var_5ee9a746)
	{
		t_start thread function_27b8574f(level.var_c141dfcb[0]);
		t_start thread function_27b8574f(level.var_c141dfcb[1]);
	}
	foreach(var_7ee296e2 in var_24944fc2)
	{
		var_7ee296e2 thread function_3b6e15a3(level.var_c141dfcb[0]);
		var_7ee296e2 thread function_3b6e15a3(level.var_c141dfcb[1]);
	}
	foreach(var_c358c3f9 in var_1c2fed59)
	{
		var_c358c3f9 thread function_7ae7a0f6(level.var_c141dfcb[0]);
		var_c358c3f9 thread function_7ae7a0f6(level.var_c141dfcb[1]);
	}
}

/*
	Name: function_27b8574f
	Namespace: namespace_a660d427
	Checksum: 0xA42297E2
	Offset: 0x64B8
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_27b8574f(vh_boat)
{
	level endon("hash_9c7f20b4");
	while(1)
	{
		self waittill("trigger", e_trigger);
		if(e_trigger == vh_boat)
		{
			vh_boat clientfield::increment("sound_veh_airboat_ramp_hit");
			vh_boat clientfield::increment("sound_veh_airboat_jump");
			vh_boat notify("hash_22e59eef");
			if(vh_boat.targetname == "airboat_2_vh")
			{
				level.var_242afa66 = 1;
			}
			break;
		}
	}
}

/*
	Name: function_3b6e15a3
	Namespace: namespace_a660d427
	Checksum: 0xBC57D6EA
	Offset: 0x6588
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_3b6e15a3(vh_boat)
{
	level endon("hash_9c7f20b4");
	while(1)
	{
		self waittill("trigger", e_trigger);
		if(e_trigger == vh_boat)
		{
			vh_boat clientfield::increment("sound_veh_airboat_jump_air");
			break;
		}
	}
}

/*
	Name: function_7ae7a0f6
	Namespace: namespace_a660d427
	Checksum: 0xC21820E9
	Offset: 0x6600
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_7ae7a0f6(vh_boat)
{
	level endon("hash_9c7f20b4");
	while(1)
	{
		self waittill("trigger", e_trigger);
		if(e_trigger == vh_boat)
		{
			vh_boat clientfield::increment("sound_veh_airboat_land");
			if(vh_boat.targetname == "airboat_2_vh")
			{
				if(level.var_de54cf10 == 0)
				{
					vh_boat FX::Play("boat_land_splash", undefined, undefined, 4, 1, "tag_origin_animate");
				}
			}
			else
			{
				vh_boat FX::Play("boat_land_splash", undefined, undefined, 4, 1, "tag_origin_animate");
			}
			if(vh_boat.targetname == "airboat_2_vh")
			{
				level.var_242afa66 = 0;
			}
			break;
		}
	}
}

/*
	Name: function_af6241e9
	Namespace: namespace_a660d427
	Checksum: 0xB21F11E0
	Offset: 0x6730
	Size: 0x2CD
	Parameters: 6
	Flags: None
*/
function function_af6241e9(var_9eb6bd2f, var_4b32b0cc, var_be93bd02, str_notify, n_wave, var_f1faa031)
{
	if(!isdefined(str_notify))
	{
		str_notify = undefined;
	}
	if(!isdefined(n_wave))
	{
		n_wave = 1;
	}
	if(!isdefined(var_f1faa031))
	{
		var_f1faa031 = 0;
	}
	trigger::wait_till(var_9eb6bd2f);
	if(isdefined(str_notify))
	{
		level notify(str_notify);
	}
	a_nd_starts = getvehiclenodearray(var_4b32b0cc, "targetname");
	n_path = a_nd_starts.size;
	var_c8d85832 = [];
	for(j = 0; j < n_wave; j++)
	{
		for(i = 0; i < n_path; i++)
		{
			var_b94e7fe0 = j * n_path + i;
			if(!isdefined(var_c8d85832))
			{
				var_c8d85832 = [];
			}
			else if(!IsArray(var_c8d85832))
			{
				var_c8d85832 = Array(var_c8d85832);
			}
			var_c8d85832[var_c8d85832.size] = spawner::simple_spawn_single(var_be93bd02);
			var_c8d85832[var_b94e7fe0] SetForceNoCull();
			if(var_4b32b0cc == "nd_wheel_wasp_start" && var_b94e7fe0 == 1)
			{
				var_c8d85832[1] playsound("evt_wasp_group_wheel_flyby");
			}
			if(var_4b32b0cc == "nd_bridge_wasp_start" && var_b94e7fe0 == 1)
			{
				var_c8d85832[1] playsound("evt_wasp_group_bridge_flyby");
			}
			wait(0.05);
			var_c8d85832[var_b94e7fe0] vehicle_ai::function_81b6f1ac();
			var_c8d85832[var_b94e7fe0] thread function_38257688();
			var_c8d85832[var_b94e7fe0] thread vehicle::get_on_and_go_path(a_nd_starts[i]);
		}
		wait(var_f1faa031);
	}
}

/*
	Name: function_38257688
	Namespace: namespace_a660d427
	Checksum: 0x2808ECE6
	Offset: 0x6A08
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_38257688()
{
	self endon("death");
	self waittill("reached_end_node");
	self vehicle_ai::function_efe9815e("combat");
	wait(RandomFloatRange(0, 0.25));
	self delete();
}

/*
	Name: function_12ca763f
	Namespace: namespace_a660d427
	Checksum: 0x7CAF0ED9
	Offset: 0x6A88
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_12ca763f()
{
	function_af6241e9("t_bridge_wasps", "nd_bridge_wasp_start", "sp_bridge_wasp", undefined, 2, 1);
}

/*
	Name: function_2eee0c9c
	Namespace: namespace_a660d427
	Checksum: 0x18243857
	Offset: 0x6AC8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_2eee0c9c()
{
	function_af6241e9("t_bridge_wasps_2", "nd_bridge_wasp_2_start", "sp_bridge_wasp_2", undefined, 1, 0);
}

/*
	Name: function_beedc0e7
	Namespace: namespace_a660d427
	Checksum: 0x136B8830
	Offset: 0x6B08
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_beedc0e7()
{
	function_af6241e9("t_wheel_wasps", "nd_wheel_wasp_start", "sp_wheel_wasp", "wheel_attack");
}

/*
	Name: function_6111ddb4
	Namespace: namespace_a660d427
	Checksum: 0xDE435CFB
	Offset: 0x6B48
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6111ddb4()
{
	function_af6241e9("t_wheel_wasps_2", "nd_wheel_wasp_2_start", "sp_wheel_wasp_2", undefined, 2, 1.5);
}

/*
	Name: function_97247f7c
	Namespace: namespace_a660d427
	Checksum: 0x93E4E3AB
	Offset: 0x6B90
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_97247f7c()
{
	function_af6241e9("t_plane_wasps", "nd_plane_wasp_start", "sp_plane_wasp", undefined, 3, 1.25);
}

/*
	Name: function_81aca4ee
	Namespace: namespace_a660d427
	Checksum: 0x7D53E37E
	Offset: 0x6BD8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_81aca4ee()
{
	function_af6241e9("t_fuselage_wasps", "nd_fuselage_wasp_start", "sp_fuselage_wasp", undefined, 1, 0);
}

/*
	Name: function_1d4f0199
	Namespace: namespace_a660d427
	Checksum: 0x9671DBB2
	Offset: 0x6C18
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_1d4f0199()
{
	spawner::simple_spawn("water_guard", &function_248ab21b);
	level util::waittill_either("hendricks_on_dock", "dock_enemies_take_cover");
	spawner::simple_spawn("dock_guard", &function_7e16f75d);
}

/*
	Name: function_7e16f75d
	Namespace: namespace_a660d427
	Checksum: 0xA4BE75CE
	Offset: 0x6CA0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7e16f75d()
{
	self endon("death");
	e_goal_volume = GetEnt("dock_retreat", "targetname");
	self SetGoal(e_goal_volume, 1);
}

/*
	Name: function_248ab21b
	Namespace: namespace_a660d427
	Checksum: 0x65A2AF4F
	Offset: 0x6D00
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_248ab21b()
{
	self endon("death");
	self.var_c5e3e899 = self.goalRadius;
	self.goalRadius = 16;
	self thread function_2c27934b();
	self thread function_9a7ec3e7();
	level flag::wait_till("dock_enemies_take_cover");
	wait(RandomFloatRange(0.15, 0.95));
	self.goalRadius = self.var_c5e3e899;
	e_goal_volume = GetEnt("dock_goal_volume", "targetname");
	self SetGoal(e_goal_volume, 1);
	level flag::wait_till("dock_enemies_retreat");
	e_goal_volume = GetEnt("dock_retreat", "targetname");
	self SetGoal(e_goal_volume, 1);
	wait(5);
	trigger::use("trig_dock_playerspawns", "targetname");
}

/*
	Name: function_9a7ec3e7
	Namespace: namespace_a660d427
	Checksum: 0xF6FC6778
	Offset: 0x6E88
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_9a7ec3e7()
{
	self endon("death");
	level endon("hash_f1832a99");
	var_3b7123fc = GetEnt("t_player_dock", "targetname");
	while(1)
	{
		self waittill("damage", n_damage, e_attacker);
		if(e_attacker istouching(var_3b7123fc))
		{
			level flag::set("dock_enemies_take_cover");
		}
	}
}

/*
	Name: function_bad78721
	Namespace: namespace_a660d427
	Checksum: 0xEAE82D1E
	Offset: 0x6F40
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_bad78721(var_9eb6bd2f)
{
	self endon("death");
	self.goalRadius = 16;
	if(self.script_string === "rocket_guard_boat_1")
	{
		self thread ai::shoot_at_target("shoot_until_target_dead", level.var_78a73398[0]);
	}
	else if(self.script_string === "rocket_guard_boat_2")
	{
		self thread ai::shoot_at_target("shoot_until_target_dead", level.var_78a73398[1]);
	}
	trigger::wait_till(var_9eb6bd2f);
	wait(RandomFloatRange(0.1, 0.15));
	self delete();
}

/*
	Name: function_59212f01
	Namespace: namespace_a660d427
	Checksum: 0xEF69E033
	Offset: 0x7038
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_59212f01()
{
	level dialog::remote("kane_stay_with_it_beat_0", 3);
	level waittill("hash_691476e5");
	battlechatter::function_d9f49fba(0);
	level.var_2fd26037 dialog::say("hend_kane_we_re_commande_0");
	level dialog::remote("kane_copy_that_overwatch_0", 1.2);
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_5441f2aa
	Namespace: namespace_a660d427
	Checksum: 0x46FBBA15
	Offset: 0x70E8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5441f2aa()
{
	level dialog::function_13b3b16a("plyr_you_better_drive_fas_0", 0.3);
}

/*
	Name: function_7fea5e8b
	Namespace: namespace_a660d427
	Checksum: 0xED0CD7DA
	Offset: 0x7120
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_7fea5e8b()
{
	trigger::wait_till("t_vo_hend_kane_that_ferris_wh_0");
	level.var_2fd26037 dialog::say("hend_kane_that_ferris_wh_0");
	level dialog::remote("kane_on_it_hang_on_0", 0.6);
}

/*
	Name: function_ca115f5b
	Namespace: namespace_a660d427
	Checksum: 0x698A4933
	Offset: 0x7190
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_ca115f5b()
{
	trigger::wait_till("t_vo_hend_go_right_0");
	level.var_2fd26037 dialog::say("hend_go_right_0");
}

/*
	Name: function_daab7239
	Namespace: namespace_a660d427
	Checksum: 0xC14D575
	Offset: 0x71D8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_daab7239()
{
	trigger::wait_till("t_vo_hend_go_left_go_left_0");
	level.var_2fd26037 dialog::say("hend_go_left_go_left_0");
}

/*
	Name: function_2b558db7
	Namespace: namespace_a660d427
	Checksum: 0x7CC748AC
	Offset: 0x7220
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_2b558db7()
{
	trigger::wait_till("t_vo_hend_left_left_left_le_0");
	level.var_2fd26037 dialog::say("hend_left_left_left_le_0");
}

/*
	Name: function_d665973f
	Namespace: namespace_a660d427
	Checksum: 0xD1C10FE2
	Offset: 0x7268
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d665973f()
{
	trigger::wait_till("t_vo_kane_hey_do_you_wanna_dr_0");
	level dialog::remote("kane_hey_do_you_wanna_dr_0");
}

/*
	Name: function_23901dfa
	Namespace: namespace_a660d427
	Checksum: 0x8BA0331E
	Offset: 0x72B0
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_23901dfa()
{
	level endon("hash_7dbaf7af");
	level flag::wait_till("hendricks_boat_waiting");
	wait(10);
	a_vo = Array("hend_let_s_go_get_on_a_t_0", "hend_what_are_you_waiting_5", "hend_get_on_the_turret_w_0");
	for(i = 0; i < a_vo.size; i++)
	{
		level.var_2fd26037 dialog::say(a_vo[i]);
		wait(RandomFloatRange(10, 15));
	}
}

/*
	Name: function_fc2f856
	Namespace: namespace_a660d427
	Checksum: 0x96951A6B
	Offset: 0x7388
	Size: 0xD3
	Parameters: 3
	Flags: None
*/
function function_fc2f856(var_d48a5688, str_vehicle, str_cleanup)
{
	vehicle::add_spawn_function(str_vehicle, &function_c37f005a, str_cleanup);
	var_77f2b279 = vehicle::simple_spawn_single(str_vehicle);
	var_77f2b279 vehicle::lights_off();
	var_cf0db380 = spawner::simple_spawn_single(var_d48a5688, &function_c59c5367, str_cleanup);
	var_cf0db380 vehicle::get_in(var_77f2b279, "gunner1", 1);
}

/*
	Name: function_c59c5367
	Namespace: namespace_a660d427
	Checksum: 0xEF349324
	Offset: 0x7468
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_c59c5367(var_9eb6bd2f)
{
	self endon("death");
	trigger::wait_till(var_9eb6bd2f);
	self delete();
}

/*
	Name: function_c37f005a
	Namespace: namespace_a660d427
	Checksum: 0x99665537
	Offset: 0x74B8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_c37f005a(var_9eb6bd2f)
{
	self endon("death");
	if(isdefined(self.target))
	{
		self.nd_start = GetVehicleNode(self.target, "targetname");
		self thread vehicle::get_on_and_go_path(self.nd_start);
	}
	trigger::wait_till(var_9eb6bd2f);
	self delete();
}

/*
	Name: function_12771210
	Namespace: namespace_a660d427
	Checksum: 0xEE093E3
	Offset: 0x7560
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_12771210()
{
	level thread function_fc2f856("sp_tech_gunner", "sp_tech_outpost_1_1", "t_cleanup_tech_outpost_1");
	level thread function_fc2f856("sp_tech_gunner", "sp_tech_outpost_1_2", "t_cleanup_tech_outpost_1");
	level thread function_fc2f856("sp_tech_gunner", "sp_tech_outpost_1_3", "t_cleanup_tech_outpost_1");
}

/*
	Name: function_22ebbed
	Namespace: namespace_a660d427
	Checksum: 0xC9F7AD38
	Offset: 0x7600
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_22ebbed()
{
	trigger::wait_till("t_tech_bridge_1");
	level thread function_fc2f856("sp_tech_gunner", "sp_tech_bridge_1", "t_cleanup_tech_bridge_1");
}

/*
	Name: function_28313656
	Namespace: namespace_a660d427
	Checksum: 0x2B1F9F7D
	Offset: 0x7658
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_28313656()
{
	trigger::wait_till("t_tech_bridge_2");
	level thread function_fc2f856("sp_tech_gunner", "sp_tech_bridge_2", "t_cleanup_tech_bridge_2");
}

/*
	Name: function_a903f6c1
	Namespace: namespace_a660d427
	Checksum: 0xA24FF7F9
	Offset: 0x76B0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_a903f6c1()
{
	trigger::wait_till("t_guard_tower_1_tech");
	level thread function_fc2f856("sp_tech_gunner", "sp_guard_tower_1_tech", "t_cleanup_guard_tower_1_tech");
}

/*
	Name: function_eff4afac
	Namespace: namespace_a660d427
	Checksum: 0x1B071B3
	Offset: 0x7708
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_eff4afac()
{
	trigger::wait_till("t_guard_tower_2_tech");
	level thread function_fc2f856("sp_tech_gunner", "sp_guard_tower_2_tech", "t_cleanup_guard_tower_2_tech");
}

/*
	Name: function_9dd4818b
	Namespace: namespace_a660d427
	Checksum: 0x129B07D3
	Offset: 0x7760
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_9dd4818b()
{
	trigger::wait_till("t_guard_tower_3_tech");
	level thread function_fc2f856("sp_tech_gunner", "sp_guard_tower_3_tech", "t_cleanup_guard_tower_3_tech");
}

/*
	Name: function_95d3fd43
	Namespace: namespace_a660d427
	Checksum: 0xEE4510E5
	Offset: 0x77B8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_95d3fd43()
{
	trigger::wait_till("t_guard_tower_1_spawn");
	spawner::simple_spawn("sp_guard_tower_1", &function_bad78721, "t_cleanup_guard_tower_1");
}

/*
	Name: function_c4fa2d2a
	Namespace: namespace_a660d427
	Checksum: 0x326FF9E4
	Offset: 0x7810
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c4fa2d2a()
{
	trigger::wait_till("t_guard_tower_2_spawn");
	spawner::simple_spawn("sp_guard_tower_2", &function_bad78721, "t_cleanup_guard_tower_2");
}

/*
	Name: function_72c5c9fd
	Namespace: namespace_a660d427
	Checksum: 0x5F22193A
	Offset: 0x7868
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_72c5c9fd()
{
	trigger::wait_till("t_guard_tower_3_spawn");
	spawner::simple_spawn("sp_guard_tower_3", &function_bad78721, "t_cleanup_guard_tower_3");
}

/*
	Name: function_4195b656
	Namespace: namespace_a660d427
	Checksum: 0xA9776BE4
	Offset: 0x78C0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4195b656()
{
	trigger::wait_till("t_outpost_1_guards");
	level thread function_12771210();
	spawner::simple_spawn("outpost_1_guard", &function_bad78721, "t_cleanup_outpost_1_guard");
}

/*
	Name: function_c211eb0f
	Namespace: namespace_a660d427
	Checksum: 0x7B56F2FA
	Offset: 0x7930
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c211eb0f()
{
	trigger::wait_till("t_outpost_2_guards");
	spawner::simple_spawn("outpost_2_guard", &function_bad78721, "t_cleanup_outpost_2_guard");
}

/*
	Name: function_d8a75b5f
	Namespace: namespace_a660d427
	Checksum: 0x9A71EFD5
	Offset: 0x7988
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d8a75b5f()
{
	trigger::wait_till("t_building_roof_guards");
	spawner::simple_spawn("building_roof_guard", &function_bad78721, "t_cleanup_building_roof_guards");
}

/*
	Name: function_dffe67b3
	Namespace: namespace_a660d427
	Checksum: 0xA882FFC7
	Offset: 0x79E0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_dffe67b3()
{
	trigger::wait_till("t_building_roof_guards_ragdoll");
	start_ragdoll("building_roof_guard", (randomIntRange(-10, 10), randomIntRange(-10, 10), randomIntRange(0, 10)));
}

/*
	Name: function_452c817b
	Namespace: namespace_a660d427
	Checksum: 0x86B21A23
	Offset: 0x7A68
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_452c817b()
{
	trigger::wait_till("t_guard_plane");
	spawner::simple_spawn("sp_guard_plane", &function_bad78721, "t_cleanup_guard_plane");
}

/*
	Name: function_5d6e5b81
	Namespace: namespace_a660d427
	Checksum: 0x34EF4B7E
	Offset: 0x7AC0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_5d6e5b81()
{
	trigger::wait_till("t_outpost_2_guard_lower_a_ragdoll");
	start_ragdoll("outpost_2_guard_lower_a", (randomIntRange(-10, 10), randomIntRange(-10, 10), randomIntRange(0, 10)));
}

/*
	Name: function_e2a7176
	Namespace: namespace_a660d427
	Checksum: 0x2342179C
	Offset: 0x7B48
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e2a7176()
{
	trigger::wait_till("t_outpost_2_guard_lower_b_ragdoll");
	start_ragdoll("outpost_2_guard_lower_b", (randomIntRange(-10, 10), randomIntRange(-10, 10), randomIntRange(0, 10)));
}

/*
	Name: function_70d3e476
	Namespace: namespace_a660d427
	Checksum: 0x9FD4C094
	Offset: 0x7BD0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_70d3e476()
{
	trigger::wait_till("t_outpost_2_guard_upper_ragdoll");
	start_ragdoll("outpost_2_guard_upper", (randomIntRange(-10, 10), randomIntRange(-10, 10), randomIntRange(0, 10)));
}

/*
	Name: function_fc1824d4
	Namespace: namespace_a660d427
	Checksum: 0x2046D421
	Offset: 0x7C58
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_fc1824d4()
{
	level thread function_f0265b78("t_outpost_01_s01", "p7_fxanim_cp_biodomes_outpost_01_s01_bundle", &function_ba87a724);
	level thread function_f0265b78("t_outpost_01_s02", "p7_fxanim_cp_biodomes_outpost_01_s02_bundle", &function_14648c5b);
	level thread function_f0265b78("t_outpost_01_s03", "p7_fxanim_cp_biodomes_outpost_01_s03_bundle", &function_1632053e);
}

/*
	Name: function_9051a477
	Namespace: namespace_a660d427
	Checksum: 0x55183BBE
	Offset: 0x7CF8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9051a477()
{
	level thread function_f0265b78("t_outpost_02", "p7_fxanim_cp_biodomes_outpost_01_s04_bundle", &function_444a6a70);
}

/*
	Name: function_f0265b78
	Namespace: namespace_a660d427
	Checksum: 0x4B657420
	Offset: 0x7D38
	Size: 0x143
	Parameters: 3
	Flags: None
*/
function function_f0265b78(str_damage_trigger, var_88676d, var_65f020d3)
{
	if(!isdefined(var_65f020d3))
	{
		var_65f020d3 = undefined;
	}
	t_damage = GetEnt(str_damage_trigger, "targetname");
	if(isdefined(var_65f020d3))
	{
		scene::add_scene_func(var_88676d, var_65f020d3, "play");
	}
	while(1)
	{
		t_damage waittill("damage", damage, attacker, direction, point, type, tagName, modelName, partName, weapon);
		if(isPlayer(attacker))
		{
			level thread scene::Play(var_88676d);
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_963be5f4
	Namespace: namespace_a660d427
	Checksum: 0x7FC27333
	Offset: 0x7E88
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_963be5f4(a_ents)
{
	function_5bd584eb("tower_guard_1");
}

/*
	Name: function_a59a792b
	Namespace: namespace_a660d427
	Checksum: 0xBFEE7F41
	Offset: 0x7EB8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a59a792b(a_ents)
{
	function_5bd584eb("tower_guard_2");
	exploder::stop_exploder("grd_twr_02");
}

/*
	Name: function_2f957a8e
	Namespace: namespace_a660d427
	Checksum: 0x48B3D4B0
	Offset: 0x7F00
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_2f957a8e(a_ents)
{
	function_5bd584eb("tower_guard_3");
	exploder::stop_exploder("grd_twr_03");
}

/*
	Name: function_a101398d
	Namespace: namespace_a660d427
	Checksum: 0x4F754E07
	Offset: 0x7F48
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a101398d(a_ents)
{
	function_5bd584eb("tower_guard_4");
	exploder::stop_exploder("grd_twr_01");
}

/*
	Name: function_ba87a724
	Namespace: namespace_a660d427
	Checksum: 0x2DC216AD
	Offset: 0x7F90
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_ba87a724(a_ents)
{
	function_5bd584eb("outpost_guard_s1");
}

/*
	Name: function_14648c5b
	Namespace: namespace_a660d427
	Checksum: 0xD71D654D
	Offset: 0x7FC0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_14648c5b(a_ents)
{
	function_5bd584eb("outpost_guard_s2");
}

/*
	Name: function_1632053e
	Namespace: namespace_a660d427
	Checksum: 0x77DD61FF
	Offset: 0x7FF0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_1632053e(a_ents)
{
	function_5bd584eb("outpost_guard_s3");
}

/*
	Name: function_444a6a70
	Namespace: namespace_a660d427
	Checksum: 0xF9348149
	Offset: 0x8020
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_444a6a70(a_ents)
{
	function_5bd584eb("tower_2_guard");
	exploder::stop_exploder("grd_twr_04");
	namespace_769dc23f::function_b5cf7b68();
}

/*
	Name: start_ragdoll
	Namespace: namespace_a660d427
	Checksum: 0x38E6ED96
	Offset: 0x8078
	Size: 0xF1
	Parameters: 2
	Flags: None
*/
function start_ragdoll(var_525ec887, v_force)
{
	a_ai = GetEntArray(var_525ec887, "script_noteworthy", 1);
	foreach(ai in a_ai)
	{
		if(isalive(ai))
		{
			ai StartRagdoll();
			ai LaunchRagdoll(v_force);
		}
	}
}

/*
	Name: function_5bd584eb
	Namespace: namespace_a660d427
	Checksum: 0x80F0667A
	Offset: 0x8178
	Size: 0x18F
	Parameters: 1
	Flags: None
*/
function function_5bd584eb(var_525ec887)
{
	a_ai = GetEntArray(var_525ec887, "script_noteworthy", 1);
	foreach(ai in a_ai)
	{
		if(isalive(ai))
		{
			var_d7f9ac76 = randomIntRange(1, 4);
			switch(var_d7f9ac76)
			{
				case 1:
				{
					ai thread scene::Play("cin_gen_xplode_death_1", ai);
					break;
				}
				case 2:
				{
					ai thread scene::Play("cin_gen_xplode_death_2", ai);
					break;
				}
				case 3:
				{
					ai thread scene::Play("cin_gen_xplode_death_3", ai);
					break;
				}
				case default:
				{
					break;
				}
			}
		}
	}
}

/*
	Name: function_2c27934b
	Namespace: namespace_a660d427
	Checksum: 0x9B656FA9
	Offset: 0x8310
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_2c27934b()
{
	self endon("death");
	level endon("hash_f0f605b4");
	a_s_targets = struct::get_array("s_murky_water_target", "targetname");
	e_target = spawn("script_model", (0, 0, 0));
	e_target SetModel("tag_origin");
	e_target.health = 1000;
	e_target.takedamage = 0;
	while(1)
	{
		if(!isdefined(self.enemy))
		{
			var_5908c36e = RandomInt(a_s_targets.size);
			n_duration = RandomFloatRange(0.5, 1.5);
			e_target.origin = a_s_targets[var_5908c36e].origin;
			self thread ai::shoot_at_target("normal", e_target, "tag_origin", n_duration);
			wait(n_duration);
			wait(RandomFloatRange(0.2, 0.8));
		}
		else
		{
			wait(0.1);
		}
	}
}

/*
	Name: function_d0b5b3de
	Namespace: namespace_a660d427
	Checksum: 0x1CDC09E
	Offset: 0x84B8
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_d0b5b3de()
{
	trigger::wait_till("trig_swamp_rail_rpg_warning");
	weapon = GetWeapon("smaw");
	var_11fd5f3f = struct::get("swamp_rail_rpg_warning_launch", "targetname");
	var_6beedec9 = struct::get("swamp_rail_rpg_warning_target", "targetname");
	e_rocket = MagicBullet(weapon, var_11fd5f3f.origin, var_6beedec9.origin);
}

/*
	Name: function_32bc987b
	Namespace: namespace_a660d427
	Checksum: 0x1BCB35C9
	Offset: 0x8598
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_32bc987b()
{
	self endon("death");
	Target_Set(self, (0, 0, 0));
	self useanimtree(-1);
	self.health = self.healthdefault;
	self vehicle::friendly_fire_shield();
	self.takedamage = 0;
	self EnableAimAssist();
	self SetNearGoalNotifyDist(50);
	self SetHoverParams(15, 100, 40);
	self.flyHeight = GetDvarFloat("g_quadrotorFlyHeight");
	self.fovcosine = 0;
	self.fovcosinebusy = 0.574;
	self.vehAirCraftCollisionEnabled = 1;
	self.original_vehicle_type = self.vehicleType;
	self.settings = struct::get_script_bundle("vehiclecustomsettings", self.scriptbundlesettings);
	self.goalRadius = 300;
	self.goalHeight = 512;
	self hunter_initTagArrays();
	self.overrideVehicleDamage = &HunterCallback_VehicleDamage;
	self thread vehicle_ai::nudge_collision();
	self turret::_init_turret(1);
	self turret::_init_turret(2);
	self turret::set_burst_parameters(1, 2, 1, 2, 1);
	self turret::set_burst_parameters(1, 2, 1, 2, 2);
	self turret::set_target_flags(3, 1);
	self turret::set_target_flags(3, 2);
}

/*
	Name: HunterCallback_VehicleDamage
	Namespace: namespace_a660d427
	Checksum: 0xB05B822F
	Offset: 0x8808
	Size: 0xB3
	Parameters: 15
	Flags: None
*/
function HunterCallback_VehicleDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal)
{
	damageLevelChanged = vehicle::update_damage_fx_level(self.health, iDamage, self.healthdefault);
	return iDamage;
}

/*
	Name: hunter_initTagArrays
	Namespace: namespace_a660d427
	Checksum: 0xFD0D9E96
	Offset: 0x88C8
	Size: 0xED
	Parameters: 0
	Flags: None
*/
function hunter_initTagArrays()
{
	self.missileTags = [];
	if(!isdefined(self.missileTags))
	{
		self.missileTags = [];
	}
	else if(!IsArray(self.missileTags))
	{
		self.missileTags = Array(self.missileTags);
	}
	self.missileTags[self.missileTags.size] = "tag_rocket1";
	if(!isdefined(self.missileTags))
	{
		self.missileTags = [];
	}
	else if(!IsArray(self.missileTags))
	{
		self.missileTags = Array(self.missileTags);
	}
	self.missileTags[self.missileTags.size] = "tag_rocket2";
}

/*
	Name: function_24ae79ca
	Namespace: namespace_a660d427
	Checksum: 0x9519681F
	Offset: 0x89C0
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_24ae79ca()
{
	level flag::wait_till("boats_ready_to_depart");
	level flag::set("boat_rail_begin");
	objectives::complete("cp_level_biodomes_escape");
	var_a03a2e28 = spawner::simple_spawn_single("sp_hunter_fuel_truck", &function_fb738343);
	foreach(player in level.players)
	{
		player.var_32218fc7 = 1;
	}
}

/*
	Name: function_d54492e
	Namespace: namespace_a660d427
	Checksum: 0xF72119C1
	Offset: 0x8AE0
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_d54492e()
{
	level waittill("hash_b9e8dab9");
	var_a03a2e28 = spawner::simple_spawn_single("sp_hunter_wheel_attack", &function_243196a7);
}

/*
	Name: function_2b6be7f7
	Namespace: namespace_a660d427
	Checksum: 0xAEB55B41
	Offset: 0x8B30
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_2b6be7f7()
{
	trigger::wait_till("t_hunter_water_explosion");
	var_a03a2e28 = spawner::simple_spawn_single("sp_hunter_water_explosion", &function_ce0e4988);
}

/*
	Name: function_dacdabc9
	Namespace: namespace_a660d427
	Checksum: 0x329EB1EA
	Offset: 0x8B88
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_dacdabc9()
{
	trigger::wait_till("t_hunter_final_pursuit");
	var_a03a2e28 = spawner::simple_spawn_single("sp_hunter_final_pursuit", &function_e0476b5e);
}

/*
	Name: function_fb738343
	Namespace: namespace_a660d427
	Checksum: 0xCA50A10C
	Offset: 0x8BE0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_fb738343()
{
	self endon("death");
	self SetForceNoCull();
	nd_start = GetVehicleNode(self.target, "targetname");
	self thread vehicle::get_on_and_go_path(nd_start);
	self waittill("hash_730b35d8");
	level thread function_5441f2aa();
	self function_bb5ef028("fuel_truck_missile", &function_1393a04d);
	self waittill("hash_df3c116a");
	self SetSpeedImmediate(0);
	self delete();
}

/*
	Name: function_243196a7
	Namespace: namespace_a660d427
	Checksum: 0x59B7309
	Offset: 0x8CD8
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_243196a7()
{
	self endon("death");
	self SetForceNoCull();
	nd_start = GetVehicleNode(self.target, "targetname");
	self thread vehicle::get_on_and_go_path(nd_start);
	self waittill("hash_36d05dc6");
	wait(0.1);
	self function_bb5ef028("so_ferris_wheel_missiles_1", &function_3cbc42d6);
	wait(0.15);
	self function_bb5ef028("so_ferris_wheel_missiles_1", &function_3cbc42d6);
	wait(0.15);
	self function_bb5ef028("so_ferris_wheel_missiles_2", &function_3cbc42d6);
	wait(0.15);
	self function_bb5ef028("so_ferris_wheel_missiles_3", &function_3cbc42d6);
	wait(0.15);
	self waittill("hash_df3c116a");
	self SetSpeedImmediate(0);
	self delete();
}

/*
	Name: function_ce0e4988
	Namespace: namespace_a660d427
	Checksum: 0x19DD8516
	Offset: 0x8E60
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_ce0e4988()
{
	self endon("death");
	self SetForceNoCull();
	nd_start = GetVehicleNode(self.target, "targetname");
	self thread vehicle::get_on_and_go_path(nd_start);
	self waittill("hash_48964163");
	self function_bb5ef028("so_swamp_water_explosion_1", &function_8bc51e36);
	self waittill("hash_d68ed228");
	self function_bb5ef028("so_swamp_water_explosion_2", &function_8bc51e36);
	self waittill("hash_fc914c91");
	self function_bb5ef028("so_swamp_water_explosion_3", &function_8bc51e36);
	self waittill("hash_df3c116a");
	self SetSpeedImmediate(0);
	self delete();
}

/*
	Name: function_bb5ef028
	Namespace: namespace_a660d427
	Checksum: 0x729103C
	Offset: 0x8FB8
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_bb5ef028(var_4e9a9978, var_5d4391a4)
{
	e_target = GetEntArray(var_4e9a9978, "targetname");
	self SetTurretTargetEnt(e_target[0]);
	self thread function_fd8ffa73(0, e_target[0], undefined, 0, 0);
	e_missile = self thread function_fd8ffa73(1, e_target[1], undefined, 0, 0);
	e_missile thread [[var_5d4391a4]](e_target[0], var_4e9a9978);
}

/*
	Name: function_e0476b5e
	Namespace: namespace_a660d427
	Checksum: 0x316F76F3
	Offset: 0x9098
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_e0476b5e()
{
	self endon("death");
	self SetForceNoCull();
	nd_start = GetVehicleNode(self.target, "targetname");
	self thread vehicle::get_on_and_go_path(nd_start);
	self waittill("hash_5e08d59e");
	self function_bb5ef028("so_swamp_final_water_explosion_1", &function_8bc51e36);
	self function_bb5ef028("so_swamp_final_water_explosion_1_b", &function_8bc51e36);
	self waittill("hash_38065b35");
	self function_bb5ef028("so_swamp_final_water_explosion_2", &function_8bc51e36);
	self waittill("hash_1203e0cc");
	self function_bb5ef028("so_swamp_final_water_explosion_3", &function_8bc51e36);
	self waittill("hash_df3c116a");
	self SetSpeedImmediate(0);
	self delete();
}

/*
	Name: function_fd8ffa73
	Namespace: namespace_a660d427
	Checksum: 0x33236FF2
	Offset: 0x9218
	Size: 0x16D
	Parameters: 5
	Flags: None
*/
function function_fd8ffa73(launcher_index, target, offset, blinkLights, waittimeAfterBlinkLights)
{
	self endon("death");
	if(!isdefined(offset))
	{
		offset = VectorScale((0, 0, -1), 10);
	}
	spawnTag = self.missileTags[launcher_index];
	origin = self GetTagOrigin(spawnTag);
	angles = self GetTagAngles(spawnTag);
	FORWARD = AnglesToForward(angles);
	up = anglesToUp(angles);
	if(isdefined(spawnTag))
	{
		weapon = GetWeapon("hunter_rocket_turret_biodomes_cinematic");
		missile = MagicBullet(weapon, origin, target.origin, self, target, offset);
		return missile;
	}
}

/*
	Name: function_1393a04d
	Namespace: namespace_a660d427
	Checksum: 0xE8B72ED6
	Offset: 0x9390
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_1393a04d(e_target, var_deb1fb4d)
{
	self waittill("death");
	level thread scene::Play("p7_fxanim_cp_biodomes_swamp_tanker_bundle");
	PlayRumbleOnPosition("cp_biodomes_fuel_truck_rumble", e_target.origin);
	level flag::set("swamp_tanker_exploded");
}

/*
	Name: function_8bc51e36
	Namespace: namespace_a660d427
	Checksum: 0x328DCD6D
	Offset: 0x9420
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_8bc51e36(e_target, var_deb1fb4d)
{
	self waittill("death");
	function_74d7b8e4(var_deb1fb4d, "explosions/fx_exp_rocket_water_lg");
}

/*
	Name: function_3cbc42d6
	Namespace: namespace_a660d427
	Checksum: 0xB65C61D5
	Offset: 0x9468
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_3cbc42d6(e_target, var_deb1fb4d)
{
	self waittill("death");
	function_74d7b8e4(var_deb1fb4d, "explosions/fx_vexp_hunter_death");
}

/*
	Name: function_36910f4
	Namespace: namespace_a660d427
	Checksum: 0x12C9521B
	Offset: 0x94B0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_36910f4(e_target, var_deb1fb4d)
{
	self waittill("death");
	function_74d7b8e4(var_deb1fb4d, "explosions/fx_exp_impact_ferriswheel_biodomes");
}

/*
	Name: function_74d7b8e4
	Namespace: namespace_a660d427
	Checksum: 0x24138277
	Offset: 0x94F8
	Size: 0xBD
	Parameters: 2
	Flags: None
*/
function function_74d7b8e4(var_deb1fb4d, str_fx_name)
{
	a_ent = GetEntArray(var_deb1fb4d, "targetname");
	for(i = 0; i < a_ent.size; i++)
	{
		playFX(str_fx_name, a_ent[i].origin, AnglesToForward(a_ent[i].angles), (0, 0, 1));
	}
}

/*
	Name: function_2297c05c
	Namespace: namespace_a660d427
	Checksum: 0x8EA9FCF3
	Offset: 0x95C0
	Size: 0x157
	Parameters: 0
	Flags: None
*/
function function_2297c05c()
{
	self endon("death");
	while(1)
	{
		if(isdefined(self.enemy) && self VehCanSee(self.enemy))
		{
			if(RandomFloatRange(0, 1) < 0.45)
			{
				if(DistanceSquared(self.enemy.origin, self.origin) < 0.5 * self.settings.engagementDistMin + self.settings.engagementDistMax * 3 * 0.5 * self.settings.engagementDistMin + self.settings.engagementDistMax * 3)
				{
					self SetTurretTargetEnt(self.enemy);
					self vehicle_ai::fire_for_time(RandomFloatRange(0.2, 0.4));
				}
			}
		}
		wait(0.45);
	}
}

/*
	Name: function_bfeb301d
	Namespace: namespace_a660d427
	Checksum: 0x71FB3860
	Offset: 0x9720
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_bfeb301d()
{
	trigger::wait_till("trigger_outpost");
	var_41063076 = GetEntArray("outpost_clips", "script_noteworthy");
	foreach(clip in var_41063076)
	{
		clip delete();
	}
	var_a8ebd745 = GetEnt("outpost_crash", "targetname");
	if(isdefined(var_a8ebd745))
	{
		var_a8ebd745 delete();
	}
	level thread scene::Play("p7_fxanim_cp_biodomes_outpost_boat_crash_bundle");
}

/*
	Name: function_53ae4df
	Namespace: namespace_a660d427
	Checksum: 0x366D259F
	Offset: 0x9868
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_53ae4df(var_c358c3f9)
{
	self endon("disconnect");
	var_c358c3f9 waittill("trigger");
	self PlayRumbleOnEntity("cp_biodomes_jump_land_rumble");
	self clientfield::increment_to_player("sound_evt_boat_rattle");
}

/*
	Name: function_aa88dfc2
	Namespace: namespace_a660d427
	Checksum: 0x7D8C0A10
	Offset: 0x98D8
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_aa88dfc2(a_ents)
{
	if(level.activePlayers.size < 3 && (!isdefined(level.var_3599083d) && level.var_3599083d))
	{
		a_ents["boat2"] Hide();
	}
	foreach(player in level.players)
	{
		var_a44e19db = "boat" + player.var_462738ee;
		str_scene = function_6150ee85(var_a44e19db, player.n_seat);
		if(isdefined(str_scene))
		{
			level thread scene::Play(str_scene, player);
		}
	}
}

/*
	Name: function_6150ee85
	Namespace: namespace_a660d427
	Checksum: 0x345DF16C
	Offset: 0x9A28
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_6150ee85(var_a44e19db, n_seat)
{
	str_scene = undefined;
	if(var_a44e19db == "boat1" && n_seat == 1)
	{
		str_scene = "cin_bio_16_01_slide_1st_slammed_p1";
	}
	else if(var_a44e19db == "boat1" && n_seat == 2)
	{
		str_scene = "cin_bio_16_01_slide_1st_slammed_p3";
	}
	else if(var_a44e19db == "boat2" && n_seat == 1)
	{
		str_scene = "cin_bio_16_01_slide_1st_slammed_p2";
	}
	else if(var_a44e19db == "boat2" && n_seat == 2)
	{
		str_scene = "cin_bio_16_01_slide_1st_slammed_p4";
	}
	return str_scene;
}

/*
	Name: function_3d026c12
	Namespace: namespace_a660d427
	Checksum: 0x80EBBF1D
	Offset: 0x9B28
	Size: 0x39B
	Parameters: 0
	Flags: None
*/
function function_3d026c12()
{
	a_boat_models = [];
	for(i = 0; i < 2; i++)
	{
		var_841b0143 = util::spawn_model("veh_t7_mil_boat_fan_54i_wet");
		var_841b0143 Hide();
		if(!isdefined(a_boat_models))
		{
			a_boat_models = [];
		}
		else if(!IsArray(a_boat_models))
		{
			a_boat_models = Array(a_boat_models);
		}
		a_boat_models[a_boat_models.size] = var_841b0143;
		wait(0.05);
	}
	self waittill("hash_81b0321b");
	level clientfield::set("gameplay_started", 0);
	level thread audio::unlockFrontendMusic("mus_biodomes_battle_intro");
	level thread function_245722ce();
	level.var_2fd26037 delete();
	level.var_2fd26037 = undefined;
	a_scene_ents = [];
	a_scene_ents["boat1"] = a_boat_models[0];
	a_scene_ents["boat1"] show();
	if(level.var_c141dfcb.size > 1)
	{
		a_scene_ents["boat2"] = a_boat_models[1];
		a_scene_ents["boat2"] show();
	}
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.usingvehicle) && player.usingvehicle && isdefined(player.viewlockedentity))
		{
			player.viewlockedentity usevehicle(player, 0);
		}
	}
	thread function_7e40793c();
	level scene::stop("cin_bio_15_03_waterpark_vign_lean_center");
	if(isdefined(level.BZM_BIODialogue6Callback))
	{
		level thread [[level.BZM_BIODialogue6Callback]]();
	}
	level thread namespace_76133733::function_a6bf2d53();
	level scene::add_scene_func("cin_bio_16_01_slide_1st_slammed", &function_aa88dfc2, "play");
	level thread scene::Play("cin_bio_16_01_slide_1st_slammed", a_scene_ents);
	level thread scene::Play("p7_fxanim_cp_biodomes_sky_bridge_bundle");
}

/*
	Name: function_7e40793c
	Namespace: namespace_a660d427
	Checksum: 0x9B916054
	Offset: 0x9ED0
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_7e40793c()
{
	foreach(vh_boat in level.var_c141dfcb)
	{
		if(isdefined(vh_boat))
		{
			vh_boat ghost();
			vh_boat notsolid();
		}
	}
	wait(1);
	foreach(vh_boat in level.var_c141dfcb)
	{
		if(isdefined(vh_boat))
		{
			vh_boat delete();
		}
	}
}

/*
	Name: function_863f4586
	Namespace: namespace_a660d427
	Checksum: 0x9C2FD8E5
	Offset: 0xA018
	Size: 0x8D
	Parameters: 1
	Flags: None
*/
function function_863f4586(a_ents)
{
	if(isdefined(a_ents["sp_hunter_sky_bridge"]))
	{
		wait(0.5);
		for(i = 0; i < 3; i++)
		{
			a_ents["sp_hunter_sky_bridge"] function_bb5ef028("so_sky_bridge_missiles_1", &function_36910f4);
			wait(0.5);
		}
	}
}

/*
	Name: function_245722ce
	Namespace: namespace_a660d427
	Checksum: 0xF50346B3
	Offset: 0xA0B0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_245722ce()
{
	namespace_769dc23f::function_ed573577();
	level waittill("hash_8fd3985");
	SetDvar("phys_buoyancy", 0);
	SetDvar("cg_viewVehicleInfluenceGunner_mode", 0);
	util::screen_fade_out(1);
	wait(0.5);
	skipto::function_be8adfb8("objective_swamps");
}

/*
	Name: function_36e4a4e3
	Namespace: namespace_a660d427
	Checksum: 0xE3E2B02D
	Offset: 0xA148
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_36e4a4e3(str_group)
{
	var_c917e48d = struct::get_array(str_group, "targetname");
	level thread Array::spread_all(var_c917e48d, &function_ea7f9b48);
}

/*
	Name: function_ea7f9b48
	Namespace: namespace_a660d427
	Checksum: 0x60CBC522
	Offset: 0xA1B8
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_ea7f9b48()
{
	scene::init(self.scriptbundlename);
	if(!isdefined(self.radius))
	{
		self.radius = 448;
	}
	if(!isdefined(self.height))
	{
		self.height = 400;
	}
	t_start = function_5ec7eb7d(self.origin, self.radius, self.height);
	while(1)
	{
		t_start waittill("trigger", e_boat);
		if(e_boat.targetname == "airboat_2_vh" && level.var_de54cf10)
		{
			continue;
		}
		scene::Play(self.scriptbundlename);
		t_start delete();
		break;
	}
}

/*
	Name: function_35a6217a
	Namespace: namespace_a660d427
	Checksum: 0x70F80B96
	Offset: 0xA2C8
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_35a6217a(str_name, var_65f020d3)
{
	if(!isdefined(var_65f020d3))
	{
		var_65f020d3 = undefined;
	}
	var_461bd72d = struct::get(str_name, "targetname");
	var_461bd72d thread function_81e1861d(var_65f020d3);
}

/*
	Name: function_81e1861d
	Namespace: namespace_a660d427
	Checksum: 0x6191CE1F
	Offset: 0xA340
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_81e1861d(var_65f020d3)
{
	scene::init(self.scriptbundlename);
	t_damage = GetEnt("t_" + self.targetname + "_damage", "targetname");
	while(1)
	{
		t_damage waittill("damage", damage, attacker, direction, point, type, tagName, modelName, partName, weapon);
		if(isPlayer(attacker))
		{
			if(isdefined(var_65f020d3))
			{
				level thread [[var_65f020d3]]();
			}
			scene::Play(self.scriptbundlename);
			namespace_769dc23f::function_b5cf7b68();
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_5ec7eb7d
	Namespace: namespace_a660d427
	Checksum: 0xDF8CDA40
	Offset: 0xA4A0
	Size: 0x1A7
	Parameters: 5
	Flags: None
*/
function function_5ec7eb7d(v_position, n_radius, n_height, var_9a868e4d, var_694b7da)
{
	if(!isdefined(var_9a868e4d))
	{
		var_9a868e4d = 0;
	}
	if(!isdefined(var_694b7da))
	{
		var_694b7da = "trigger_radius";
	}
	/#
		Assert(isdefined(v_position), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(n_radius), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(n_height), "Dev Block strings are not supported");
	#/
	t_use = spawn(var_694b7da, v_position, getvehicletriggerflags(), n_radius, n_height);
	t_use TriggerIgnoreTeam();
	t_use SetVisibleToAll();
	t_use SetTeamForTrigger("none");
	t_use UseTriggerRequireLookAt();
	if(var_694b7da == "trigger_radius_use")
	{
		t_use setcursorhint("HINT_NOICON");
	}
	return t_use;
}

/*
	Name: function_1f3c3c34
	Namespace: namespace_a660d427
	Checksum: 0xDDDC7C52
	Offset: 0xA650
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_1f3c3c34(str_group)
{
	scene::init(self.scriptbundlename);
	level waittill(str_group);
	scene::Play(self.scriptbundlename);
}

/*
	Name: function_39af75ef
	Namespace: namespace_a660d427
	Checksum: 0x3D7AA528
	Offset: 0xA6A0
	Size: 0x18F
	Parameters: 1
	Flags: None
*/
function function_39af75ef(str_endon)
{
	self endon("disconnect");
	while(1)
	{
		if(isdefined(self.laststand) && self.laststand || !isalive(self))
		{
			while(isdefined(self.laststand) && self.laststand || !isalive(self))
			{
				wait(0.05);
			}
			self.is_underwater = undefined;
		}
		if(self IsPlayerUnderwater() && (!isdefined(self.is_underwater) && self.is_underwater))
		{
			self.is_underwater = 1;
			self thread clientfield::set_to_player("set_underwater_fx", 1);
			self thread hazard::function_e9b126ef();
		}
		else if(!self IsPlayerUnderwater() && (isdefined(self.is_underwater) && self.is_underwater))
		{
			self.is_underwater = undefined;
			self thread clientfield::set_to_player("set_underwater_fx", 0);
			self thread hazard::function_60455f28("o2");
		}
		wait(0.05);
	}
}

/*
	Name: function_400cc8f4
	Namespace: namespace_a660d427
	Checksum: 0xF08EE328
	Offset: 0xA838
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_400cc8f4()
{
	trigger::wait_till("trig_hide_dock_fxanims", "targetname");
	function_9e3608e3("fxanim_swamp01");
}

/*
	Name: function_312d4b85
	Namespace: namespace_a660d427
	Checksum: 0x772EE117
	Offset: 0xA880
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_312d4b85()
{
	level.var_c141dfcb[0] vehicle::toggle_ambient_anim_group(1, 1);
	level.var_c141dfcb[1] vehicle::toggle_ambient_anim_group(1, 1);
	level.var_c141dfcb[0] vehicle::toggle_ambient_anim_group(2, 0);
	level.var_c141dfcb[1] vehicle::toggle_ambient_anim_group(2, 0);
}

/*
	Name: function_c5f21db5
	Namespace: namespace_a660d427
	Checksum: 0xAFE0F617
	Offset: 0xA930
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_c5f21db5()
{
	level.var_c141dfcb[0] vehicle::toggle_ambient_anim_group(1, 0);
	level.var_c141dfcb[1] vehicle::toggle_ambient_anim_group(1, 0);
	level.var_c141dfcb[0] vehicle::toggle_ambient_anim_group(2, 1);
	level.var_c141dfcb[1] vehicle::toggle_ambient_anim_group(2, 1);
}


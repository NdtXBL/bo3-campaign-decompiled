#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_murders;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_47c46a7d;

/*
	Name: CleanUp
	Namespace: namespace_47c46a7d
	Checksum: 0x52A4F485
	Offset: 0x15C8
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function CleanUp(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_f25bd8c8::function_ecd2ed4();
	var_ce40c475 = GetEntArray("world_falls_away_chasm", "targetname");
	Array::run_all(var_ce40c475, &show);
}

/*
	Name: main
	Namespace: namespace_47c46a7d
	Checksum: 0xEE917A16
	Offset: 0x1658
	Size: 0x2D3
	Parameters: 2
	Flags: None
*/
function main(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		objectives::set("cp_level_infection_follow_sarah");
		namespace_36cbf523::function_cbc167();
		level.var_42189297 = util::function_740f8516("sarah");
		level.var_42189297 clientfield::set("sarah_objective_light", 1);
	}
	setup_spawners();
	if(-1)
	{
		namespace_36cbf523::function_c8d7e76("world_falls_away_reverse_anim");
	}
	function_4f978753();
	function_7f95f75e();
	level thread intro_guys();
	level thread function_df55595f();
	level thread function_7c54e6ee();
	level thread function_59de9d07();
	level thread function_56b28f61();
	level thread function_e8d77ec8();
	if(var_74cd64bc)
	{
		load::function_a2995f22();
		level thread namespace_36cbf523::function_3fe1f72("t_sarah_bastogne_objective_", 8, &function_32a538b9);
		namespace_36cbf523::function_1cdb9014();
	}
	level thread function_d9011c5f();
	level thread function_e80ccf78();
	level thread function_483493cf();
	if(-1)
	{
		level thread function_1120dd46();
	}
	if(0)
	{
		e_player = GetPlayers()[0];
		e_player.ignoreme = 1;
	}
	e_trigger = GetEnt("forest_surreal_skipto_complete", "targetname");
	e_trigger waittill("trigger");
	level notify("hash_1b4a12e5");
	level thread skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_633271eb
	Namespace: namespace_47c46a7d
	Checksum: 0xBF33C9A7
	Offset: 0x1938
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_633271eb()
{
	level thread namespace_36cbf523::function_f6d49772("t_salm_from_the_trials_unde_1", "salm_from_the_trials_unde_1", "end_salm_forest_dialog");
	level thread namespace_36cbf523::function_f6d49772("t_salm_for_the_safety_of_my_1", "salm_for_the_safety_of_my_1", "end_salm_forest_dialog");
	level thread namespace_36cbf523::function_f6d49772("t_salm_my_presentation_to_t_1", "salm_my_presentation_to_t_1", "end_salm_forest_dialog");
	level thread namespace_36cbf523::function_f6d49772("t_salm_subject_e_38_crimi_1", "salm_subject_e_38_crimi_1", "end_salm_forest_dialog");
	level waittill("hash_1b6ae018");
	level thread namespace_36cbf523::function_f6d49772("t_salm_at_the_time_of_his_a_1", "salm_at_the_time_of_his_a_1", "end_salm_forest_dialog");
}

/*
	Name: function_e80ccf78
	Namespace: namespace_47c46a7d
	Checksum: 0xEF015C46
	Offset: 0x1A40
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e80ccf78()
{
	wait(0.2);
	namespace_36cbf523::function_3ea445de();
}

/*
	Name: function_95040800
	Namespace: namespace_47c46a7d
	Checksum: 0x70C953A
	Offset: 0x1A68
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_95040800(dist)
{
	self endon("death");
	while(self namespace_36cbf523::player_can_see_me(dist))
	{
		wait(0.1);
	}
	if(isdefined(self))
	{
		self namespace_36cbf523::function_5e78ab8c();
	}
}

/*
	Name: function_1983bda0
	Namespace: namespace_47c46a7d
	Checksum: 0xE63A19E4
	Offset: 0x1AD0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_1983bda0(str_objective, var_74cd64bc)
{
	function_f4ab002c();
	level thread namespace_47ecfa2f::function_fbe0ab05("black_station", 0);
}

/*
	Name: function_503c0a2
	Namespace: namespace_47c46a7d
	Checksum: 0xD22A0CFD
	Offset: 0x1B20
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_503c0a2(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_9f54e23d
	Namespace: namespace_47c46a7d
	Checksum: 0x4AD7FCE4
	Offset: 0x1B50
	Size: 0x29B
	Parameters: 2
	Flags: None
*/
function function_9f54e23d(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
	}
	setup_scenes();
	level thread function_e15b5dc7();
	level thread function_e9f75cf5();
	wait(0.1);
	if(0)
	{
		e_player = GetPlayers()[0];
		e_player.ignoreme = 1;
	}
	if(!isdefined(level.var_bce99b53))
	{
		level thread function_4f978753();
	}
	if(-1)
	{
		level thread namespace_36cbf523::function_c8d7e76("world_falls_away_wolf_reverse_anim");
	}
	namespace_f25bd8c8::function_341d8f7a();
	namespace_f25bd8c8::function_8c0b0cd0();
	namespace_f25bd8c8::function_aea367c1();
	if(var_74cd64bc)
	{
		var_7d116593 = struct::get("s_forest_wolves_lighting_hint", "targetname");
		namespace_36cbf523::function_7aca917c(var_7d116593.origin);
		objectives::set("cp_level_infection_follow_sarah");
		level.var_42189297 = util::function_740f8516("sarah");
		setup_spawners();
		function_7f95f75e();
		level thread namespace_bed101ee::function_daeb8be9();
		load::function_a2995f22();
		level.var_42189297 clientfield::set("sarah_objective_light", 1);
		level thread namespace_36cbf523::function_3fe1f72("t_sarah_bastogne_objective_", 13, &function_32a538b9);
	}
	level thread function_4e7bce99();
	function_7b0c81e4();
	function_80ea1787();
	level thread skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_71196f64
	Namespace: namespace_47c46a7d
	Checksum: 0x82280792
	Offset: 0x1DF8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_71196f64(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_e9f75cf5
	Namespace: namespace_47c46a7d
	Checksum: 0xB258D574
	Offset: 0x1E28
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e9f75cf5()
{
	trigger::wait_till("t_plrf_sarah_who_was_tha_0");
	level dialog::function_13b3b16a("plyr_sarah_who_was_tha_0");
}

/*
	Name: function_48e4fcb4
	Namespace: namespace_47c46a7d
	Checksum: 0xF439C987
	Offset: 0x1E70
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_48e4fcb4(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		load::function_a2995f22();
		function_7519eaff();
	}
	function_42297537();
	level notify("hash_5d80c772");
	level thread skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_dd270bfd
	Namespace: namespace_47c46a7d
	Checksum: 0xCBB62905
	Offset: 0x1F00
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_dd270bfd(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_42297537
	Namespace: namespace_47c46a7d
	Checksum: 0x90206A6D
	Offset: 0x1F30
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_42297537()
{
	trigger::wait_till("t_cross_sky_bridge");
	objectives::complete("cp_level_infection_cross_chasm");
}

/*
	Name: function_7519eaff
	Namespace: namespace_47c46a7d
	Checksum: 0x4717E3B6
	Offset: 0x1F70
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_7519eaff()
{
	level util::clientNotify("chasm_wind");
	level thread function_9a71c521();
	namespace_47ecfa2f::function_d7cb3668();
	playsoundatposition("evt_pullapart_world", (0, 0, 0));
	objectives::set("cp_level_infection_follow_sarah");
	function_7f95f75e();
	level thread namespace_bed101ee::function_daeb8be9();
	var_d8d55e31 = GetEntArray("world_falls_away_chasm", "targetname");
	for(i = 0; i < var_d8d55e31.size; i++)
	{
		str_name = var_d8d55e31[i].target;
		if(isdefined(str_name))
		{
			s_struct = struct::get(str_name, "targetname");
			var_d8d55e31[i].origin = s_struct.origin;
		}
	}
	level thread function_e6cc7e28(1);
	exploder::exploder("light_wfa_end");
	var_d8d55e31[0] PlayLoopSound("evt_pullapart_world_looper", 3);
	level thread function_12c8020a();
}

/*
	Name: function_cfaebb13
	Namespace: namespace_47c46a7d
	Checksum: 0x405F0D
	Offset: 0x2160
	Size: 0xA3
	Parameters: 2
	Flags: None
*/
function function_cfaebb13(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		function_7519eaff();
		objectives::complete("cp_level_infection_cross_chasm");
		load::function_a2995f22();
	}
	else
	{
		level thread namespace_47ecfa2f::function_d7cb3668();
	}
	function_f4ab002c();
	level thread skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_de606506
	Namespace: namespace_47c46a7d
	Checksum: 0x9AADCB30
	Offset: 0x2210
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_de606506(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	exploder::exploder_stop("lgt_forest_tunnel_02");
	exploder::exploder_stop("lgt_forest_tunnel_03");
	exploder::exploder_stop("lgt_forest_tunnel_04");
	exploder::exploder_stop("lgt_forest_tunnel_05");
}

/*
	Name: function_d9011c5f
	Namespace: namespace_47c46a7d
	Checksum: 0xFB534EAF
	Offset: 0x22A0
	Size: 0x145
	Parameters: 0
	Flags: None
*/
function function_d9011c5f()
{
	level thread function_97f6881();
	level thread LUI::screen_flash(0.1, 1, 1, 0.3, "white");
	var_dc97c2d = struct::get("world_falls_away_start_struct", "targetname");
	playsoundatposition("evt_night_transition", var_dc97c2d.origin);
	level thread namespace_bed101ee::function_daeb8be9();
	s_struct = struct::get("s_night_transition", "targetname");
	for(count = 0; count < 20; count++)
	{
		PlayRumbleOnPosition("cp_infection_world_falls_break_rumble", s_struct.origin);
		util::wait_network_frame();
	}
}

/*
	Name: setup_scenes
	Namespace: namespace_47c46a7d
	Checksum: 0x7B135C38
	Offset: 0x23F0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function setup_scenes()
{
	scene::add_scene_func("cin_inf_07_03_worldfallsaway_vign_pain", &function_5f558686, "play");
	scene::add_scene_func("cin_inf_07_03_worldfallsaway_vign_pain", &namespace_36cbf523::function_c32dc5f6, "init");
	scene::add_scene_func("cin_inf_07_03_worldfallsaway_vign_pain", &namespace_36cbf523::function_368baff9, "play");
	level.scriptbundles["scene"]["cin_inf_07_02_worldfallsaway_vign_direwolves_eating"].objects[0].firstframe = undefined;
	level.scriptbundles["scene"]["cin_inf_07_02_worldfallsaway_vign_direwolves_eating"].objects[1].firstframe = undefined;
	level.scriptbundles["scene"]["cin_inf_07_02_worldfallsaway_vign_direwolves_eating"].objects[2].firstframe = undefined;
	scene::add_scene_func("cin_inf_07_02_worldfallsaway_vign_direwolves_eating", &function_6d6d7d71, "init");
}

/*
	Name: setup_spawners
	Namespace: namespace_47c46a7d
	Checksum: 0xCA71DB05
	Offset: 0x2558
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function setup_spawners()
{
	namespace_36cbf523::function_aa0ddbc3(1);
	spawner::add_spawn_function_group("sm_bastogne_hill_guys_1", "targetname", &function_c6b52615);
	spawner::add_spawn_function_group("world_falls_away_intro_guys", "targetname", &function_c6b52615);
	spawner::add_spawn_function_group("wolf", "script_noteworthy", &function_21caff3e);
}

/*
	Name: function_7f95f75e
	Namespace: namespace_47c46a7d
	Checksum: 0x6401E6B4
	Offset: 0x2610
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_7f95f75e()
{
	a_triggers = GetEntArray("falling_death", "targetname");
	foreach(trigger in a_triggers)
	{
		trigger thread function_c8049804();
	}
}

/*
	Name: function_c8049804
	Namespace: namespace_47c46a7d
	Checksum: 0x93A29EB
	Offset: 0x26D0
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_c8049804()
{
	while(1)
	{
		self waittill("trigger", who);
		if(isPlayer(who) && (!isdefined(who.var_e7c2cbb4) && who.var_e7c2cbb4))
		{
			who thread function_2f645114();
		}
		util::wait_network_frame();
	}
}

/*
	Name: function_2f645114
	Namespace: namespace_47c46a7d
	Checksum: 0xE58ED059
	Offset: 0x2768
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_2f645114()
{
	self endon("death");
	self.var_e7c2cbb4 = 1;
	wait(1);
	self function_173f6520();
	self.var_e7c2cbb4 = 0;
	self DoDamage(self.health / 10, self.origin);
	if(self.health < 1)
	{
		self.health = 1;
	}
}

/*
	Name: function_173f6520
	Namespace: namespace_47c46a7d
	Checksum: 0x470E6659
	Offset: 0x2800
	Size: 0x343
	Parameters: 0
	Flags: None
*/
function function_173f6520()
{
	self endon("death");
	str_skipto = level.skipto_point;
	var_624a0b0b = spawnlogic::get_spawnpoint_array("cp_coop_respawn");
	var_24307637 = skipto::function_c13ce5f8(self, var_624a0b0b, str_skipto);
	/#
		Assert(var_24307637.size, "Dev Block strings are not supported");
	#/
	var_4bd163fe = ArrayGetClosest(self.origin, var_24307637);
	if(positionWouldTelefrag(var_4bd163fe.origin))
	{
		foreach(s_point in var_24307637)
		{
			if(s_point !== var_4bd163fe)
			{
				var_4bd163fe = s_point;
				break;
			}
		}
	}
	self.var_e7c2cbb4 = 1;
	self EnableInvulnerability();
	self SetInvisibleToAll();
	self util::freeze_player_controls(1);
	self.ignoreme = 1;
	self clientfield::increment_to_player("postfx_igc");
	util::wait_network_frame();
	self SetOrigin(var_4bd163fe.origin);
	self SetPlayerAngles(var_4bd163fe.angles);
	if(SessionModeIsCampaignZombiesGame())
	{
		if(isdefined(level.BZM_WaitForStreamerOrTimeOut))
		{
			[[level.BZM_WaitForStreamerOrTimeOut]](self, 4);
		}
	}
	else
	{
		self util::streamer_wait();
	}
	self SetVisibleToAll();
	self clientfield::set("player_spawn_fx", 1);
	self util::delay(0.5, "death", &clientfield::set, "player_spawn_fx", 0);
	wait(1.5);
	self util::freeze_player_controls(0);
	wait(2);
	self DisableInvulnerability();
	self.ignoreme = 0;
	self.var_e7c2cbb4 = 0;
}

/*
	Name: function_4f978753
	Namespace: namespace_47c46a7d
	Checksum: 0x171548FE
	Offset: 0x2B50
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_4f978753()
{
	level.var_bce99b53 = 1;
	a_pieces = GetEntArray("bastogne_world_falls_away", "script_noteworthy");
	level thread Array::thread_all(a_pieces, &function_10eef3d1);
}

/*
	Name: function_10eef3d1
	Namespace: namespace_47c46a7d
	Checksum: 0xCBF4E6FF
	Offset: 0x2BC8
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function function_10eef3d1()
{
	if(self.classname == "script_model")
	{
		str_debug = self.model;
	}
	else
	{
		str_debug = self.origin;
	}
	if(!isdefined(self.target))
	{
		return;
	}
	s_struct = struct::get(self.target, "targetname");
	if(!isdefined(s_struct))
	{
		return;
	}
	s_struct.var_1063f543 = self;
	self.var_efe20130 = 0;
	v_pos = s_struct.origin;
	radius = 1260;
	if(isdefined(s_struct.radius))
	{
		radius = s_struct.radius;
	}
	level thread function_7b6b3089(s_struct, radius);
	level waittill(s_struct.script_string);
	if(isdefined(self.script_string) && self.script_string == "moving_platform")
	{
		self.var_1912831c = 1;
		self SetMovingPlatformEnabled(1);
	}
	else
	{
		self.var_1912831c = 0;
	}
	var_6e456024 = s_struct.origin;
	self function_c7aa396d();
	time = RandomFloatRange(0.5, 1);
	self thread function_7e730dc3("cp_infection_world_falls_break_rumble", time, 1);
	self playsound("evt_small_flyaway_rumble");
	if(self.var_1912831c == 0)
	{
		wait(time);
	}
	self function_a44c8b8c(var_6e456024, self.var_1912831c, undefined);
	self function_38c395f4();
	wait(1);
	self function_7c90d18c(var_6e456024);
	self delete();
}

/*
	Name: function_38c395f4
	Namespace: namespace_47c46a7d
	Checksum: 0xBF4B466C
	Offset: 0x2E78
	Size: 0xDF
	Parameters: 0
	Flags: None
*/
function function_38c395f4()
{
	self.var_efe20130 = 1;
	self.var_db9ec4c4 = 80;
	self.var_385072d7 = 1.7;
	self.var_b6d84394 = 0.8;
	if(RandomInt(100) > 60)
	{
		self.var_db9ec4c4 = self.var_db9ec4c4 + randomIntRange(20, 50);
	}
	self notify("hash_6db7529d");
	wait(0.05);
	self MoveZ(self.var_db9ec4c4, self.var_385072d7, self.var_b6d84394, self.var_b6d84394);
	self waittill("movedone");
}

/*
	Name: function_7c90d18c
	Namespace: namespace_47c46a7d
	Checksum: 0xFFBC17BF
	Offset: 0x2F60
	Size: 0x17F
	Parameters: 1
	Flags: None
*/
function function_7c90d18c(v_pos)
{
	self notify("hash_89c47e3d");
	RUMBLE_TIME = RandomFloatRange(1.2, 2.5);
	self thread function_7e730dc3("cp_infection_world_falls_away_rumble", RUMBLE_TIME, 1);
	var_ab2048f4 = 0.28;
	quake_time = RUMBLE_TIME;
	quake_radius = 1850;
	Earthquake(var_ab2048f4, quake_time, v_pos, quake_radius);
	playsoundatposition("evt_small_flyaway_go", v_pos);
	function_1b8bf759(self.model);
	if(self.var_1912831c)
	{
		self MoveZ(-3000, 5.5, 2);
	}
	else
	{
		self MoveZ(-3000, 5.5, 2);
	}
	self waittill("movedone");
}

/*
	Name: function_a44c8b8c
	Namespace: namespace_47c46a7d
	Checksum: 0xC0C850C2
	Offset: 0x30E8
	Size: 0x15B
	Parameters: 3
	Flags: None
*/
function function_a44c8b8c(var_6e456024, var_1912831c, rumble)
{
	var_ab2048f4 = 0.28;
	quake_time = RandomFloatRange(0.5, 1.5);
	quake_radius = 1850;
	if(var_1912831c)
	{
		quake_time = 1;
	}
	if(isdefined(rumble))
	{
		if(self == level)
		{
			var_b2dab111 = util::spawn_model("tag_origin", var_6e456024);
			var_b2dab111.script_objective = "forest_wolves";
			util::wait_network_frame();
			var_b2dab111 thread function_3d3371d5();
		}
		else
		{
			self thread function_3d3371d5();
		}
	}
	Earthquake(var_ab2048f4, quake_time, var_6e456024, quake_radius);
	wait(quake_time);
	playsoundatposition("evt_small_flyaway_start", var_6e456024);
}

/*
	Name: function_3d3371d5
	Namespace: namespace_47c46a7d
	Checksum: 0x5D8EF4E
	Offset: 0x3250
	Size: 0xBD
	Parameters: 0
	Flags: None
*/
function function_3d3371d5()
{
	self endon("death");
	for(count = 0; count < 10; count++)
	{
		self clientfield::increment("cp_infection_world_falls_break_rumble", 1);
		util::wait_network_frame();
	}
	wait(1);
	for(count = 0; count < 20; count++)
	{
		self clientfield::increment("cp_infection_world_falls_break_rumble", 1);
		util::wait_network_frame();
	}
}

/*
	Name: function_67df7c1f
	Namespace: namespace_47c46a7d
	Checksum: 0x322866B1
	Offset: 0x3318
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_67df7c1f()
{
	str_name = self.model + "_skirt";
	var_4176ece1 = GetEntArray(str_name, "targetname");
	if(isdefined(var_4176ece1))
	{
		for(i = 0; i < var_4176ece1.size; i++)
		{
			var_4176ece1[i] thread function_2b2b27eb(self);
		}
	}
}

/*
	Name: function_2b2b27eb
	Namespace: namespace_47c46a7d
	Checksum: 0x9D361C92
	Offset: 0x33C0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_2b2b27eb(var_cc46221b)
{
	self delete();
}

/*
	Name: function_1b8bf759
	Namespace: namespace_47c46a7d
	Checksum: 0xE779DE45
	Offset: 0x33F0
	Size: 0x273
	Parameters: 1
	Flags: None
*/
function function_1b8bf759(str_model_name)
{
	SIZE = str_model_name.size;
	var_7c077f26 = str_model_name[SIZE - 3] + str_model_name[SIZE - 2] + str_model_name[SIZE - 1];
	str_name = "light_wfa_" + var_7c077f26;
	var_a140185b = [];
	var_a140185b[var_a140185b.size] = "light_wfa_003";
	var_a140185b[var_a140185b.size] = "light_wfa_017";
	var_a140185b[var_a140185b.size] = "light_wfa_028";
	var_a140185b[var_a140185b.size] = "light_wfa_034";
	var_a140185b[var_a140185b.size] = "light_wfa_049";
	var_a140185b[var_a140185b.size] = "light_wfa_060";
	var_a140185b[var_a140185b.size] = "light_wfa_069";
	var_a140185b[var_a140185b.size] = "light_wfa_080";
	var_a140185b[var_a140185b.size] = "light_wfa_088";
	var_a140185b[var_a140185b.size] = "light_wfa_092";
	var_a140185b[var_a140185b.size] = "light_wfa_100";
	var_a140185b[var_a140185b.size] = "light_wfa_106";
	var_a140185b[var_a140185b.size] = "light_wfa_125";
	var_a140185b[var_a140185b.size] = "light_wfa_133";
	var_a140185b[var_a140185b.size] = "light_wfa_135";
	var_a140185b[var_a140185b.size] = "light_wfa_136";
	var_a140185b[var_a140185b.size] = "light_wfa_138";
	var_a140185b[var_a140185b.size] = "light_wfa_143";
	found = 0;
	for(i = 0; i < var_a140185b.size; i++)
	{
		if(str_name == var_a140185b[i])
		{
			found = 1;
			break;
		}
	}
	if(found)
	{
		exploder::exploder(str_name);
	}
}

/*
	Name: function_c7aa396d
	Namespace: namespace_47c46a7d
	Checksum: 0x219E3FE4
	Offset: 0x3670
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_c7aa396d()
{
	self thread function_67df7c1f();
	self clientfield::increment("wfa_steam_sound", 1);
	str_identifier = GetSubStr(self.model, 20, self.model.size);
	str_exploder = "forest_surreal_groundfall_steam_" + str_identifier;
	exploder::exploder(str_exploder);
}

/*
	Name: function_7e730dc3
	Namespace: namespace_47c46a7d
	Checksum: 0x8F888C8E
	Offset: 0x3720
	Size: 0x63
	Parameters: 3
	Flags: None
*/
function function_7e730dc3(str_name, n_loops, n_wait)
{
	for(i = 0; i < n_loops; i++)
	{
		self clientfield::increment(str_name, 1);
		wait(n_wait);
	}
}

/*
	Name: function_7b6b3089
	Namespace: namespace_47c46a7d
	Checksum: 0xABD73FF1
	Offset: 0x3790
	Size: 0x14F
	Parameters: 2
	Flags: None
*/
function function_7b6b3089(s_struct, radius)
{
	level endon("hash_62ab67ff");
	wait(0.1);
	if(isdefined(s_struct.active))
	{
		return;
	}
	s_struct.active = 1;
	while(1)
	{
		if(isdefined(s_struct.triggered))
		{
			return;
		}
		a_players = GetPlayers();
		for(i = 0; i < a_players.size; i++)
		{
			e_player = a_players[i];
			dist = Distance2D(s_struct.origin, e_player.origin);
			if(dist < radius)
			{
				level notify(s_struct.script_string);
				s_struct.triggered = 1;
				return;
				continue;
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_b090c84d
	Namespace: namespace_47c46a7d
	Checksum: 0x1DBDAD8E
	Offset: 0x38E8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_b090c84d()
{
	trigger::wait_till("t_lgt_forest_tunnel_02", "targetname");
	exploder::exploder("lgt_forest_tunnel_02");
	playsoundatposition("evt_tunnel_lights_on_01", (2813, -589, -605));
	trigger::wait_till("t_lgt_forest_tunnel_03", "targetname");
	exploder::exploder("lgt_forest_tunnel_03");
	playsoundatposition("evt_tunnel_lights_on_02", (3030, -493, -636));
	trigger::wait_till("t_lgt_forest_tunnel_04", "targetname");
	exploder::exploder("lgt_forest_tunnel_04");
	playsoundatposition("evt_tunnel_lights_on_03", (3651, -641, -620));
	trigger::wait_till("t_lgt_forest_tunnel_05", "targetname");
	exploder::exploder("lgt_forest_tunnel_05");
	playsoundatposition("evt_tunnel_lights_on_04", (3489, -1158, -657));
}

/*
	Name: function_12c8020a
	Namespace: namespace_47c46a7d
	Checksum: 0x2C76EC90
	Offset: 0x3A78
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_12c8020a()
{
	level thread scene::Play("p7_fxanim_gp_wire_thick_01_bundle");
	exploder::exploder("lgt_forest_tunnel_01");
	level flag::wait_till("flag_player_enters_cave");
	playsoundatposition("evt_tunnel_lights_on_01", (2438, 63, -644));
	objectives::complete("cp_waypoint_breadcrumb");
	level thread function_b090c84d();
	level waittill("hash_5d80c772");
	scene::stop("p7_fxanim_gp_wire_thick_01_bundle");
}

/*
	Name: function_9a71c521
	Namespace: namespace_47c46a7d
	Checksum: 0x99B514D1
	Offset: 0x3B60
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9a71c521()
{
	trigger::wait_till("cave_entrance");
	level flag::set("flag_player_enters_cave");
}

/*
	Name: function_97f6881
	Namespace: namespace_47c46a7d
	Checksum: 0x942D2865
	Offset: 0x3BA8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_97f6881()
{
	level dialog::function_13b3b16a("plyr_why_are_we_here_sar_0", 1);
	namespace_36cbf523::function_637cd603();
	level dialog::remote("hall_don_t_you_know_0", 1, "NO_DNI");
	namespace_36cbf523::function_637cd603();
	level dialog::remote("hall_so_much_suffering_s_0", 1, "NO_DNI");
}

/*
	Name: function_caee3551
	Namespace: namespace_47c46a7d
	Checksum: 0x4F1DBE8F
	Offset: 0x3C60
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_caee3551()
{
	level waittill("hash_973240bd");
	level dialog::function_13b3b16a("plyr_what_the_hell_2", 0.5);
	namespace_36cbf523::function_637cd603();
	level dialog::remote("hall_the_dire_wolves_a_0", 0, "NO_DNI");
}

/*
	Name: function_4e7bce99
	Namespace: namespace_47c46a7d
	Checksum: 0x1474AB8A
	Offset: 0x3CE0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_4e7bce99()
{
	level endon("hash_fcccf4c9");
	trigger::wait_till("t_ending_dogs");
	level dialog::say("corv_listen_only_to_the_s_0");
	level dialog::say("corv_let_your_mind_relax_0");
	level dialog::say("corv_imagine_yourself_in_0");
}

/*
	Name: function_5f558686
	Namespace: namespace_47c46a7d
	Checksum: 0x74272384
	Offset: 0x3D70
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_5f558686(a_ents)
{
	var_dc5e890e = a_ents["sarah"];
	var_dc5e890e SetTeam("allies");
	e_player = namespace_36cbf523::function_586b8f7b(a_ents["sarah"].origin);
	var_dc5e890e waittill("hash_b5d56b2c");
	level notify("hash_b5d56b2c");
}

/*
	Name: function_7c54e6ee
	Namespace: namespace_47c46a7d
	Checksum: 0xAB46A9D0
	Offset: 0x3E10
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_7c54e6ee()
{
	e_trigger = GetEnt("t_runner_before_pit", "targetname");
	e_trigger waittill("trigger");
	a_guys = GetEntArray("sp_runner_before_pit", "targetname");
	for(i = 0; i < a_guys.size; i++)
	{
		spawner::simple_spawn_single(a_guys[i], &function_e372c0cc, 0);
		util::wait_network_frame();
	}
}

/*
	Name: function_e372c0cc
	Namespace: namespace_47c46a7d
	Checksum: 0xA34CF6AC
	Offset: 0x3EE8
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_e372c0cc(hold_position)
{
	self endon("death");
	self.goalRadius = 94;
	self waittill("goal");
	if(!(isdefined(hold_position) && hold_position))
	{
		self.goalRadius = 1024;
	}
}

/*
	Name: function_c6b52615
	Namespace: namespace_47c46a7d
	Checksum: 0x5F7155D8
	Offset: 0x3F40
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_c6b52615()
{
	if(isdefined(self.script_noteworthy) && self.script_string == "fall_to_death")
	{
		self.ignoreall = 1;
		self.goalRadius = 64;
		debug_line(self);
		return;
	}
	self thread namespace_36cbf523::function_b86426b1();
}

/*
	Name: function_7b0c81e4
	Namespace: namespace_47c46a7d
	Checksum: 0xA064CF07
	Offset: 0x3FB8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_7b0c81e4()
{
	level.var_9b646a7c = 400;
	level.var_59ce54fe = 1000;
	level thread function_1032e35f();
	e_trigger = GetEnt("wolves_attack_in_trench", "targetname");
	e_trigger waittill("trigger");
	level notify("hash_bc20f93d");
	level thread function_caee3551();
	level thread function_b3ec6692();
	level thread function_74df0f52();
	level thread function_94a91f66();
	level thread function_bbfdb42e();
	level thread function_ded57b7b();
	level thread function_feeec702();
	level thread function_3f16df71();
}

/*
	Name: function_74df0f52
	Namespace: namespace_47c46a7d
	Checksum: 0xE114DD52
	Offset: 0x40F8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_74df0f52()
{
	level thread scene::Play("cin_inf_07_02_worldfallsaway_vign_direwolf_entrance");
	level thread scene::Play("cin_inf_07_02_worldfallsaway_vign_direwolf_entrance_bunker");
	level thread scene::init("dude_getting_eaten_in_trench");
}

/*
	Name: function_6d6d7d71
	Namespace: namespace_47c46a7d
	Checksum: 0x363FE9AF
	Offset: 0x4168
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function function_6d6d7d71(a_ents)
{
	e_soldier = a_ents["dude_getting_eaten"];
	e_soldier.ignoreme = 1;
	e_soldier cybercom::function_59965309("cybercom_fireflyswarm");
	looping = 1;
	while(looping)
	{
		a_players = GetPlayers();
		for(i = 0; i < a_players.size; i++)
		{
			dist = Distance(self.origin, a_players[i].origin);
			if(dist < 600)
			{
				looping = 0;
				break;
			}
		}
		var_2da301ea = a_ents["intro_wolf_eating_1"];
		var_7a08781 = a_ents["intro_wolf_eating_2"];
		if(!isalive(var_2da301ea) || !isalive(var_7a08781))
		{
			looping = 0;
			break;
		}
		wait(0.05);
	}
	level thread scene::Play(self.targetname);
}

/*
	Name: function_94a91f66
	Namespace: namespace_47c46a7d
	Checksum: 0xD35BDCC4
	Offset: 0x4320
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_94a91f66()
{
	var_f02d4245 = struct::get_array("wolf_intro_howl_struct", "targetname");
	level notify("hash_973240bd");
	foreach(struct in var_f02d4245)
	{
		playsoundatposition("aml_dire_wolf_howl", struct.origin);
		wait(0.25);
	}
}

/*
	Name: function_c1fecd2
	Namespace: namespace_47c46a7d
	Checksum: 0xD26E26E
	Offset: 0x4408
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_c1fecd2()
{
	a_spawners = GetEntArray("trench_dogs_coop", "targetname");
	for(i = 0; i < a_spawners.size; i++)
	{
		spawner::simple_spawn_single(a_spawners[i]);
		util::wait_network_frame();
	}
	spawn_manager::enable("sm_trench_dogs_wave2");
}

/*
	Name: function_bbfdb42e
	Namespace: namespace_47c46a7d
	Checksum: 0x2CDC9A67
	Offset: 0x44B0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_bbfdb42e()
{
	e_trigger = GetEnt("t_jumping_dogs_after_trench", "targetname");
	e_trigger waittill("trigger");
	spawn_manager::enable("sm_dogs_left_side");
}

/*
	Name: function_ded57b7b
	Namespace: namespace_47c46a7d
	Checksum: 0x32E6C1EB
	Offset: 0x4510
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_ded57b7b()
{
	e_trigger = GetEnt("t_jumping_dogs_after_trench", "targetname");
	e_trigger waittill("trigger");
	spawn_manager::enable("sm_dogs_right_side");
}

/*
	Name: function_feeec702
	Namespace: namespace_47c46a7d
	Checksum: 0x17817C67
	Offset: 0x4570
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_feeec702()
{
	level endon("hash_4797687e");
	level thread function_c0aa5a1d();
	level thread function_4014524e();
	while(1)
	{
		if(isdefined(level.var_f6c9b8d) && level.var_f6c9b8d && isdefined(level.var_efe7c3d0))
		{
			break;
		}
		wait(0.05);
	}
	while(1)
	{
		time = GetTime();
		DT = time - level.var_efe7c3d0 / 1000;
		if(DT > 5)
		{
			break;
		}
		wait(0.05);
	}
	level notify("hash_119eb2e2");
	level notify("hash_da1fa42e");
	level.var_9b646a7c = 250;
	level.var_59ce54fe = 600;
	spawn_manager::enable("sm_ending_dogs_left");
}

/*
	Name: function_3f16df71
	Namespace: namespace_47c46a7d
	Checksum: 0x566FA1C4
	Offset: 0x4698
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_3f16df71()
{
	level endon("hash_4797687e");
	level waittill("hash_da1fa42e");
	spawn_manager::enable("sm_ending_dogs_right");
}

/*
	Name: function_c0aa5a1d
	Namespace: namespace_47c46a7d
	Checksum: 0x7FCB9E68
	Offset: 0x46D8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c0aa5a1d()
{
	e_trigger = GetEnt("t_ending_dogs", "targetname");
	e_trigger waittill("trigger");
	level.var_f6c9b8d = 1;
}

/*
	Name: function_4014524e
	Namespace: namespace_47c46a7d
	Checksum: 0xBD33CE7E
	Offset: 0x4730
	Size: 0x1C7
	Parameters: 0
	Flags: None
*/
function function_4014524e()
{
	s_struct = struct::get("s_turn_off_eyecandy_wolves", "targetname");
	v_forward = AnglesToForward(s_struct.angles);
	while(1)
	{
		if(spawn_manager::is_complete("sm_dogs_left_side") && spawn_manager::is_complete("sm_dogs_right_side"))
		{
			if(!isdefined(level.var_efe7c3d0))
			{
				level.var_efe7c3d0 = GetTime();
			}
			a_players = GetPlayers();
			var_a540aa3f = 0;
			for(i = 0; i < a_players.size; i++)
			{
				e_player = a_players[i];
				v_dir = e_player.origin - s_struct.origin;
				v_dir = VectorNormalize(v_dir);
				dp = VectorDot(v_dir, v_forward);
				if(dp > 0.2)
				{
					var_a540aa3f++;
				}
			}
			if(var_a540aa3f == a_players.size)
			{
				break;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_21caff3e
	Namespace: namespace_47c46a7d
	Checksum: 0x10E186AC
	Offset: 0x4900
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_21caff3e()
{
	self endon("death");
	if(!isdefined(level.var_9b646a7c))
	{
		return;
	}
	self.overrideActorDamage = &function_8e74fa1d;
	if(!(isdefined(self.script_noteworthy) && self.script_noteworthy == "no_audio"))
	{
		playsoundatposition("aml_dire_wolf_howl", self.origin);
		self thread namespace_36cbf523::zmbAIVox_NotifyConvert();
	}
	initial_delay = 0;
	if(isdefined(self.script_string) && self.script_string == "sprinter")
	{
		self ai::set_behavior_attribute("sprint", 1);
	}
	else if(isdefined(self.script_string) && self.script_string == "stalker")
	{
		initial_delay = randomIntRange(6, 12);
	}
	dist = randomIntRange(level.var_9b646a7c, level.var_59ce54fe);
	if(isdefined(self.script_float))
	{
		dist = self.script_float;
	}
	self thread function_64eb5e51(initial_delay, dist);
}

/*
	Name: function_8e74fa1d
	Namespace: namespace_47c46a7d
	Checksum: 0x9240B7CB
	Offset: 0x4A90
	Size: 0x93
	Parameters: 12
	Flags: None
*/
function function_8e74fa1d(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, modelIndex, psOffsetTime, bonename)
{
	if(isdefined(eAttacker) && !isPlayer(eAttacker))
	{
		iDamage = 0;
	}
	return iDamage;
}

/*
	Name: function_64eb5e51
	Namespace: namespace_47c46a7d
	Checksum: 0x5B3C29D6
	Offset: 0x4B30
	Size: 0xC9
	Parameters: 2
	Flags: None
*/
function function_64eb5e51(initial_delay, var_8b419c2c)
{
	self endon("death");
	self endon("hash_a25de9d9");
	if(isdefined(initial_delay))
	{
		wait(initial_delay);
	}
	while(1)
	{
		dist = function_5eb85ef8(self.origin);
		if(dist < var_8b419c2c)
		{
			self ai::set_behavior_attribute("sprint", 1);
			return;
		}
		delay = RandomFloatRange(0, 1);
		wait(delay);
	}
}

/*
	Name: function_76ecbe6c
	Namespace: namespace_47c46a7d
	Checksum: 0x456E3FF2
	Offset: 0x4C08
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_76ecbe6c()
{
	level.var_b7fd3339 = 0;
	a_guys = GetEntArray("sp_enemy_trench", "targetname");
	for(i = 0; i < a_guys.size; i++)
	{
		e_ent = spawner::simple_spawn_single(a_guys[i]);
		e_ent.name = "";
		e_ent thread function_e372c0cc(1);
		e_ent thread function_d0e3a59f();
		e_ent.goalRadius = 64;
		util::wait_network_frame();
	}
}

/*
	Name: function_d0e3a59f
	Namespace: namespace_47c46a7d
	Checksum: 0x34AF5845
	Offset: 0x4D10
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_d0e3a59f()
{
	self waittill("death");
	level.var_b7fd3339++;
}

/*
	Name: function_5eb85ef8
	Namespace: namespace_47c46a7d
	Checksum: 0x2678E713
	Offset: 0x4D30
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_5eb85ef8(pos)
{
	closest = 999999;
	a_players = GetPlayers();
	for(i = 0; i < a_players.size; i++)
	{
		dist = Distance(a_players[i].origin, pos);
		if(dist < closest)
		{
			closest = dist;
		}
	}
	return closest;
}

/*
	Name: function_13e4875f
	Namespace: namespace_47c46a7d
	Checksum: 0x2CBEB5E
	Offset: 0x4DF8
	Size: 0x18D
	Parameters: 1
	Flags: None
*/
function function_13e4875f(var_3d9a88e4)
{
	var_6c6c766a = 1000;
	v_pos = self.origin;
	v_forward = VectorNormalize(AnglesToForward(self.angles));
	if(var_3d9a88e4)
	{
		v_pos = (v_pos[0], v_pos[1], 0);
	}
	a_players = GetPlayers();
	for(i = 0; i < a_players.size; i++)
	{
		player_origin = a_players[i].origin;
		if(var_3d9a88e4)
		{
			player_origin = (player_origin[0], player_origin[1], 0);
		}
		v_dir = VectorNormalize(player_origin - v_pos);
		dp = VectorDot(v_forward, v_dir);
		if(dp < var_6c6c766a)
		{
			var_6c6c766a = dp;
		}
	}
	return var_6c6c766a;
}

/*
	Name: function_b3ec6692
	Namespace: namespace_47c46a7d
	Checksum: 0xAA0639E6
	Offset: 0x4F90
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b3ec6692()
{
	start_pos = struct::get_array("dog_eyecandy_startpath");
	Array::thread_all(start_pos, &function_b51d137e);
}

/*
	Name: function_b51d137e
	Namespace: namespace_47c46a7d
	Checksum: 0xC66176E3
	Offset: 0x4FE8
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_b51d137e()
{
	level endon("hash_4797687e");
	level endon("hash_787c5631");
	level endon("hash_119eb2e2");
	while(1)
	{
		dog_spawner = GetEnt("sp_eyecandy_wolf", "targetname");
		wolf = spawner::simple_spawn_single(dog_spawner);
		if(isdefined(wolf))
		{
			wolf thread function_29f6ad78(self);
		}
		if(isdefined(self.script_vector))
		{
			delay = RandomFloatRange(self.script_vector[0], self.script_vector[1]);
		}
		else
		{
			delay = RandomFloatRange(53, 55);
		}
		wait(delay);
	}
}

/*
	Name: function_29f6ad78
	Namespace: namespace_47c46a7d
	Checksum: 0x42D1AC3B
	Offset: 0x5108
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_29f6ad78(s_path)
{
	self endon("death");
	if(!isdefined(level.var_663306c5))
	{
		level.var_663306c5 = 0;
	}
	self notify("hash_a25de9d9");
	self thread function_be227518(level.var_663306c5, 15);
	level.var_663306c5 = level.var_663306c5 + 1;
	if(level.var_663306c5 > 6)
	{
		level.var_663306c5 = 0;
	}
	self.goalRadius = 32;
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	while(1)
	{
		if(!s_path namespace_36cbf523::player_can_see_me(50))
		{
			break;
		}
		wait(0.25);
	}
	self ForceTeleport(s_path.origin, s_path.angles);
	next_pos = s_path;
	while(1)
	{
		if(isdefined(next_pos.target))
		{
			next_pos = struct::get(next_pos.target, "targetname");
		}
		else
		{
			break;
		}
		self setgoalpos(next_pos.origin, 1, 32);
		self waittill("goal");
	}
	self delete();
}

/*
	Name: function_be227518
	Namespace: namespace_47c46a7d
	Checksum: 0x9E65B9F4
	Offset: 0x52F0
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_be227518(delay, kill_time)
{
	self endon("death");
	start_time = GetTime();
	wait(delay);
	self ai::set_behavior_attribute("sprint", 1);
	while(1)
	{
		time = GetTime();
		DT = time - start_time / 1000;
		if(DT > kill_time)
		{
			break;
		}
		wait(0.1);
	}
	self delete();
}

/*
	Name: function_1032e35f
	Namespace: namespace_47c46a7d
	Checksum: 0xD9040D58
	Offset: 0x53C0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1032e35f()
{
	level.is_player_valid_override = &function_b0e703cd;
}

/*
	Name: function_b0e703cd
	Namespace: namespace_47c46a7d
	Checksum: 0xCB59C89E
	Offset: 0x53E8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_b0e703cd(player)
{
	a_spawners = GetEntArray("sp_enemy_trench", "targetname");
	return 1;
}

/*
	Name: function_32a538b9
	Namespace: namespace_47c46a7d
	Checksum: 0x2CD43E49
	Offset: 0x5430
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_32a538b9()
{
	objectives::set("cp_level_infection_gather_ravine", self);
	self thread scene::init("cin_inf_07_03_worldfallsaway_vign_pain", self);
	level notify("hash_32a538b9");
	trigger::wait_till("world_falls_away_ravine_start");
	level notify("hash_fcccf4c9");
	if(isdefined(level.BZM_INFECTIONDialogue8_1Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue8_1Callback]]();
	}
	objectives::complete("cp_level_infection_gather_ravine", self);
	self thread scene::Play("cin_inf_07_03_worldfallsaway_vign_pain", self);
	namespace_f25bd8c8::function_a2179c84();
	namespace_f25bd8c8::function_74b401d8();
	namespace_f25bd8c8::function_b3cf52bf();
	level waittill("hash_f9d3621d");
	self thread namespace_36cbf523::function_9110a277(1);
	self.var_5d21e1c9 = 0;
	self waittill("scene_done");
	self delete();
	level.var_63a5e024 = 1;
}

/*
	Name: function_80ea1787
	Namespace: namespace_47c46a7d
	Checksum: 0x1B53115F
	Offset: 0x5598
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_80ea1787()
{
	level flag::init("chasm_open");
	level waittill("hash_32a538b9");
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	trigger::wait_till("world_falls_away_ravine_start");
	level notify("hash_4797687e");
	level thread function_6431cdb6();
	function_66e4f276();
}

/*
	Name: function_66e4f276
	Namespace: namespace_47c46a7d
	Checksum: 0xD5D7D5C3
	Offset: 0x5638
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_66e4f276()
{
	level thread function_9a71c521();
	level waittill("hash_b5d56b2c");
	level thread function_e6cc7e28();
	level util::clientNotify("chasm_wind");
	playsoundatposition("evt_pullapart_world", (0, 0, 0));
	level thread function_8c0b59c6();
	exploder::exploder("light_wfa_end");
	var_d8d55e31 = GetEntArray("world_falls_away_chasm", "targetname");
	/#
		Assert(isdefined(var_d8d55e31), "Dev Block strings are not supported");
	#/
	level thread function_d135cab9(12, 5, 5);
	for(i = 0; i < var_d8d55e31.size; i++)
	{
		str_name = var_d8d55e31[i].target;
		if(isdefined(str_name))
		{
			s_struct = struct::get(str_name, "targetname");
			target_position = s_struct.origin;
			var_d8d55e31[i] SetMovingPlatformEnabled(1);
			var_d8d55e31[i] moveto(target_position, 12, 5, 5);
		}
	}
	var_d8d55e31[0] waittill("movedone");
	var_d8d55e31[0] PlayLoopSound("evt_pullapart_world_looper", 3);
	level thread function_12c8020a();
	level flag::set("chasm_open");
}

/*
	Name: function_8c0b59c6
	Namespace: namespace_47c46a7d
	Checksum: 0x92E62FF1
	Offset: 0x58D0
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_8c0b59c6()
{
	var_aba57974 = struct::get("chasm_earthquake_start_struct", "targetname");
	/#
		Assert(isdefined(var_aba57974), "Dev Block strings are not supported");
	#/
	var_d8d55e31 = GetEntArray("world_falls_away_chasm", "targetname");
	/#
		Assert(isdefined(var_d8d55e31), "Dev Block strings are not supported");
	#/
	var_b35a0c4d = var_d8d55e31[0];
	e_temp = spawn("script_origin", var_aba57974.origin);
	e_temp LinkTo(var_b35a0c4d);
	while(!level flag::get("chasm_open"))
	{
		Earthquake(0.18, 0.05 * 4, e_temp.origin, 3000);
		namespace_36cbf523::function_7b8c138f(e_temp, 3000, 2);
		PlayRumbleOnPosition("cp_infection_world_falls_break_rumble", e_temp.origin);
		wait(0.05);
	}
	Earthquake(0.25, 2, e_temp.origin, 3000);
	e_temp delete();
}

/*
	Name: function_d135cab9
	Namespace: namespace_47c46a7d
	Checksum: 0x66B529BE
	Offset: 0x5AE0
	Size: 0xCB
	Parameters: 3
	Flags: None
*/
function function_d135cab9(move_time, accel_time, decel_time)
{
	e_ent = GetEnt("world_falls_away_chasm_blocker", "targetname");
	s_struct = struct::get(e_ent.target, "targetname");
	e_ent moveto(s_struct.origin, move_time, accel_time, decel_time);
	e_ent waittill("movedone");
	e_ent delete();
}

/*
	Name: function_e6cc7e28
	Namespace: namespace_47c46a7d
	Checksum: 0xF32308F4
	Offset: 0x5BB8
	Size: 0x553
	Parameters: 1
	Flags: None
*/
function function_e6cc7e28(b_skip)
{
	if(!isdefined(b_skip))
	{
		b_skip = 0;
	}
	var_5aeb1fde = struct::get("s_ravine_drop_marker_p3", "targetname");
	var_5aeb1fde.origin = (2149.2, 91.9004, -689.75);
	scene::add_scene_func("p7_fxanim_cp_infection_rock_mountain_bundle", &function_2e0c5214, "play");
	if(b_skip)
	{
		level scene::skipto_end("p7_fxanim_cp_infection_rock_mountain_bundle");
		level scene::skipto_end("p7_fxanim_cp_infection_rock_bridge_floaters_bundle");
		level scene::skipto_end("p7_fxanim_cp_infection_rock_bridge_p1_bundle");
		level scene::skipto_end("p7_fxanim_cp_infection_rock_bridge_p2_bundle");
		level scene::skipto_end("p7_fxanim_cp_infection_rock_bridge_p3_bundle");
		exploder::exploder("worldfallsaway_cave_separating");
		var_be2ea7e9 = spawn("script_origin", (938, 133, -648));
		var_be2ea7e9 PlayLoopSound("evt_rock_bridge_loop", 0.5);
	}
	else
	{
		level thread scene::Play("p7_fxanim_cp_infection_rock_mountain_bundle");
		level thread scene::Play("p7_fxanim_cp_infection_rock_bridge_floaters_bundle");
		exploder::exploder("worldfallsaway_cave_separating");
		level thread scene::Play("p7_fxanim_cp_infection_rock_bridge_p1_bundle");
		level thread scene::Play("p7_fxanim_cp_infection_rock_bridge_p2_bundle");
		scene::Play("p7_fxanim_cp_infection_rock_bridge_p3_bundle");
		var_be2ea7e9 = spawn("script_origin", (938, 133, -648));
		var_be2ea7e9 PlayLoopSound("evt_rock_bridge_loop", 0.5);
		wait(0.5);
	}
	if(!level flag::get("flag_player_enters_cave"))
	{
		level thread objectives::breadcrumb("cave_entrance");
	}
	objectives::set("cp_level_infection_cross_chasm");
	var_c1b53c54 = GetEntArray("chasm_entrance_player_clip", "targetname");
	Array::run_all(var_c1b53c54, &delete);
	foreach(player in level.players)
	{
		player thread function_baefbe37();
	}
	namespace_36cbf523::function_9d611fab("s_ravine_drop_marker_p3");
	level notify("hash_7303e8be");
	level notify("hash_7e025071");
	level thread scene::Play("p7_fxanim_cp_infection_rock_bridge_p3_end_bundle");
	level thread function_43a1f475("rock_bridge_p3");
	wait(0.5);
	level thread scene::Play("p7_fxanim_cp_infection_rock_bridge_p2_end_bundle");
	level thread function_43a1f475("rock_bridge_p2");
	wait(0.5);
	level thread scene::Play("p7_fxanim_cp_infection_rock_bridge_p1_end_bundle");
	level thread function_43a1f475("rock_bridge_p1");
	var_be2ea7e9 StopLoopSound(0.5);
	var_be2ea7e9 delete();
	level waittill("hash_5d80c772");
	level thread scene::stop("p7_fxanim_cp_infection_rock_bridge_floaters_bundle");
}

/*
	Name: function_43a1f475
	Namespace: namespace_47c46a7d
	Checksum: 0x153D25E2
	Offset: 0x6118
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_43a1f475(var_8e9a8bf6)
{
	var_b44af04e = GetEnt(var_8e9a8bf6, "targetname");
	var_9636be2f = GetEntArray(var_8e9a8bf6 + "_clip", "targetname");
	var_7b12f4c7 = StrTok(var_8e9a8bf6, "rock_bridge_p");
	var_8f915eab = "platform_" + var_7b12f4c7[0] + "_jnt";
	Array::run_all(var_9636be2f, &LinkTo, var_b44af04e, var_8f915eab);
	if(isdefined(var_b44af04e._o_scene))
	{
		var_b44af04e._o_scene._e_root util::waittill_notify_or_timeout("scene_done", 10);
	}
	Array::run_all(var_9636be2f, &delete);
}

/*
	Name: function_baefbe37
	Namespace: namespace_47c46a7d
	Checksum: 0xC1E7E2E3
	Offset: 0x6270
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_baefbe37()
{
	self endon("death");
	level endon("hash_7303e8be");
	s_destination = struct::get("s_cave_entrance", "targetname");
	while(1)
	{
		wait(3);
		if(!self namespace_36cbf523::function_72268bc2(s_destination, 0.1))
		{
			level thread objectives::show("cp_waypoint_breadcrumb", self);
		}
		else
		{
			level thread objectives::Hide("cp_waypoint_breadcrumb", self);
		}
	}
}

/*
	Name: function_2e0c5214
	Namespace: namespace_47c46a7d
	Checksum: 0xDD65B16F
	Offset: 0x6330
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_2e0c5214(a_ents)
{
	var_2db224a2 = a_ents["rock_mountain"];
	var_b89c97ce = GetEnt("final_position_3", "target");
	var_2db224a2 LinkTo(var_b89c97ce);
}

/*
	Name: function_6431cdb6
	Namespace: namespace_47c46a7d
	Checksum: 0x46A2E77B
	Offset: 0x63A8
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_6431cdb6()
{
	if(!spawn_manager::is_complete("sm_ending_dogs_left"))
	{
		spawn_manager::disable("sm_ending_dogs_left");
	}
	if(!spawn_manager::is_complete("sm_ending_dogs_right"))
	{
		spawn_manager::disable("sm_ending_dogs_right");
	}
	a_ai = GetAITeamArray("team3");
	for(i = 0; i < a_ai.size; i++)
	{
		a_ai[i] kill();
	}
}

/*
	Name: function_f4ab002c
	Namespace: namespace_47c46a7d
	Checksum: 0xB9733DD0
	Offset: 0x6480
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_f4ab002c()
{
	trigger = GetEnt("black_station_start_trigger", "targetname");
	trigger waittill("trigger", who);
	util::screen_fade_out(1, "black");
	level notify("hash_7e025071");
	level notify("hash_82ddc1bc");
	var_d8d55e31 = GetEntArray("world_falls_away_chasm", "targetname");
	var_d8d55e31[0] StopLoopSound(5);
}

/*
	Name: function_1120dd46
	Namespace: namespace_47c46a7d
	Checksum: 0x555C76A1
	Offset: 0x6550
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_1120dd46()
{
	level thread function_4db909ec("t_world_falls_away_intro", "world_falls_away_intro_falling_guys");
	level thread function_4db909ec("sm_world_falls_away_middle", "world_falls_away_middle_falling_guys");
	level thread function_4db909ec("t_left_side_fallers_1", "world_falls_away_left_1_falling_guys");
	level thread function_4db909ec("t_left_side_fallers_1", "wfa_middle_path_falling_guys");
}

/*
	Name: function_4db909ec
	Namespace: namespace_47c46a7d
	Checksum: 0x384B297B
	Offset: 0x6600
	Size: 0x19D
	Parameters: 2
	Flags: None
*/
function function_4db909ec(str_trigger, var_a9ea049a)
{
	e_trigger = GetEnt(str_trigger, "targetname");
	if(isdefined(e_trigger))
	{
		e_trigger waittill("trigger");
		a_spawners = GetEntArray(var_a9ea049a, "targetname");
		for(i = 0; i < a_spawners.size; i++)
		{
			s_struct = struct::get(a_spawners[i].script_string, "script_noteworthy");
			var_ec70521 = s_struct.var_1063f543;
			if(isdefined(var_ec70521) && !var_ec70521.var_efe20130)
			{
				e_ent = spawner::simple_spawn_single(a_spawners[i], &function_eaa02a0f);
				namespace_36cbf523::function_426fde37(e_ent, "FALLING_GUYS");
				util::wait_network_frame();
				continue;
			}
			/#
				IPrintLnBold("Dev Block strings are not supported");
			#/
		}
	}
}

/*
	Name: function_eaa02a0f
	Namespace: namespace_47c46a7d
	Checksum: 0x3A3DB6E7
	Offset: 0x67A8
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_eaa02a0f()
{
	self endon("death");
	if(isdefined(self.radius))
	{
		self.goalRadius = self.radius;
	}
	if(isdefined(self.script_noteworthy) && IsSubStr(self.script_noteworthy, "cin_"))
	{
		self.goalRadius = 64;
		var_bc98b3ec = self.script_noteworthy;
	}
	if(isdefined(self.target))
	{
		self thread function_8d96a449();
	}
	s_struct = struct::get(self.script_string, "script_noteworthy");
	var_ec70521 = s_struct.var_1063f543;
	if(isdefined(var_ec70521))
	{
		var_ec70521 waittill("hash_6db7529d");
		self.ignoreall = 1;
		wait(var_ec70521.var_385072d7);
		if(-1)
		{
			if(isdefined(var_bc98b3ec))
			{
				wait(0.2);
				self thread scene::Play(var_bc98b3ec, self);
				wait(1.2);
				self kill();
				return;
			}
		}
		var_f54739c6 = function_ca0fce6a();
		if(-1)
		{
			self thread scene::Play(var_f54739c6, self);
		}
		var_ec70521 waittill("hash_89c47e3d");
		if(-1)
		{
			self scene::stop(var_f54739c6);
		}
		if(-1)
		{
			if(!isdefined(level.var_fddc24b0))
			{
				function_bd957f29();
			}
			str_anim = function_3f85f0b6();
			scene::Play(str_anim, self);
		}
		else
		{
			wait(5);
		}
	}
	self delete();
}

/*
	Name: function_ca0fce6a
	Namespace: namespace_47c46a7d
	Checksum: 0x1C8C9DB4
	Offset: 0x6A28
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_ca0fce6a()
{
	if(!isdefined(level.var_981a94f3))
	{
		level.var_981a94f3 = 0;
	}
	switch(level.var_981a94f3)
	{
		case 0:
		{
			str_animation = "cin_gen_vign_offbalance_a";
			break;
		}
		case 1:
		{
			str_animation = "cin_gen_vign_offbalance_b";
			break;
		}
		case 2:
		{
			str_animation = "cin_gen_vign_offbalance";
			break;
		}
		case 3:
		{
			str_animation = "cin_gen_vign_offbalance_left";
			break;
		}
		case 4:
		{
			str_animation = "cin_gen_vign_offbalance_right";
			break;
		}
		case 5:
		case default:
		{
			str_animation = "cin_gen_vign_offbalance_center";
			break;
		}
	}
	level.var_981a94f3++;
	if(level.var_981a94f3 > 1)
	{
		level.var_981a94f3 = 0;
	}
	return str_animation;
}

/*
	Name: function_8d96a449
	Namespace: namespace_47c46a7d
	Checksum: 0xBEC32483
	Offset: 0x6B30
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_8d96a449()
{
	self endon("death");
	self.goalRadius = 64;
	self waittill("goal");
}

/*
	Name: function_bd957f29
	Namespace: namespace_47c46a7d
	Checksum: 0xFB148F25
	Offset: 0x6B60
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_bd957f29()
{
	level.var_7506ce6e = 0;
	level.var_12d36490 = [];
	if(!isdefined(level.var_12d36490))
	{
		level.var_12d36490 = [];
	}
	else if(!IsArray(level.var_12d36490))
	{
		level.var_12d36490 = Array(level.var_12d36490);
	}
	level.var_12d36490[level.var_12d36490.size] = "cin_gen_vign_fall_left";
	if(!isdefined(level.var_12d36490))
	{
		level.var_12d36490 = [];
	}
	else if(!IsArray(level.var_12d36490))
	{
		level.var_12d36490 = Array(level.var_12d36490);
	}
	level.var_12d36490[level.var_12d36490.size] = "cin_gen_vign_fall_right";
}

/*
	Name: function_3f85f0b6
	Namespace: namespace_47c46a7d
	Checksum: 0xA0F313C7
	Offset: 0x6C68
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_3f85f0b6()
{
	str_anim = level.var_12d36490[level.var_7506ce6e];
	level.var_7506ce6e++;
	if(level.var_7506ce6e >= level.var_12d36490.size)
	{
		level.var_7506ce6e = 0;
	}
	return str_anim;
}

/*
	Name: intro_guys
	Namespace: namespace_47c46a7d
	Checksum: 0x2993BC6D
	Offset: 0x6CC0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function intro_guys()
{
	e_trigger = GetEnt("t_move_1st_falling_guys", "targetname");
	e_trigger waittill("trigger");
	spawn_manager::enable("sm_world_falls_away_intro");
}

/*
	Name: function_ba7fed00
	Namespace: namespace_47c46a7d
	Checksum: 0x24BAD56D
	Offset: 0x6D20
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_ba7fed00()
{
	self endon("death");
	if(isdefined(self.script_noteworthy))
	{
		self.goalRadius = 48;
		n_node = GetNode(self.script_noteworthy, "targetname");
		self SetGoal(n_node.origin);
	}
}

/*
	Name: function_df55595f
	Namespace: namespace_47c46a7d
	Checksum: 0x9B079183
	Offset: 0x6DA8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_df55595f()
{
	e_trigger = GetEnt("t_wfa_middle_path", "targetname");
	e_trigger waittill("trigger");
	spawn_manager::enable("sm_wfa_middle_path");
}

/*
	Name: function_483493cf
	Namespace: namespace_47c46a7d
	Checksum: 0x5F00B2DB
	Offset: 0x6E08
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_483493cf()
{
	var_d9e81f75 = "p7_fxanim_cp_infection_world_falling_116_bundle";
	var_ffea99de = "p7_fxanim_cp_infection_world_falling_117_bundle";
	var_25ed1447 = "p7_fxanim_cp_infection_world_falling_132_bundle";
	level thread scene::init(var_d9e81f75);
	util::wait_network_frame();
	level thread scene::init(var_ffea99de);
	util::wait_network_frame();
	level thread scene::init(var_25ed1447);
	e_trigger = GetEnt("t_fancy_falling_pieces_at_start", "targetname");
	e_trigger waittill("trigger");
	s_struct = struct::get("s_fancy_falling_pieces_at_start", "targetname");
	var_6e456024 = s_struct.origin;
	level thread function_a44c8b8c(var_6e456024, 0, 1);
	if(isdefined(level.BZM_INFECTIONDialogue8Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue8Callback]]();
	}
	level thread scene::Play(var_d9e81f75);
	wait(0.75);
	level thread scene::Play(var_ffea99de);
	wait(1.25);
	level thread scene::Play(var_25ed1447);
}

/*
	Name: function_59de9d07
	Namespace: namespace_47c46a7d
	Checksum: 0x2B26B324
	Offset: 0x6FD8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_59de9d07()
{
	function_dbd2f56e();
	level waittill("hash_bc20f93d");
	namespace_36cbf523::function_b016b536("FALLING_GUYS", 1);
}

/*
	Name: function_e15b5dc7
	Namespace: namespace_47c46a7d
	Checksum: 0x270F6F24
	Offset: 0x7020
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e15b5dc7()
{
	level thread function_26a859a();
	level waittill("hash_82ddc1bc");
	level thread function_82ddc1bc();
}

/*
	Name: function_dbd2f56e
	Namespace: namespace_47c46a7d
	Checksum: 0xDB65E960
	Offset: 0x7068
	Size: 0x211
	Parameters: 0
	Flags: None
*/
function function_dbd2f56e()
{
	colors::kill_color_replacements();
	a_allies = GetAITeamArray("allies");
	foreach(ai in a_allies)
	{
		if(isdefined(ai.targetname))
		{
			if(IsSubStr(ai.targetname, "friendly_guys_bastogne_"))
			{
				ai thread function_95040800(512);
			}
		}
	}
	a_axis = GetAITeamArray("axis");
	foreach(ai in a_axis)
	{
		if(isdefined(ai.targetname))
		{
			if(IsSubStr(ai.targetname, "reverse_anim_") || IsSubStr(ai.targetname, "sm_bastogne_reinforcements_"))
			{
				ai thread function_95040800(1024);
			}
		}
	}
}

/*
	Name: function_26a859a
	Namespace: namespace_47c46a7d
	Checksum: 0x65C934A1
	Offset: 0x7288
	Size: 0x275
	Parameters: 0
	Flags: None
*/
function function_26a859a()
{
	a_ai = GetAITeamArray("axis");
	if(isdefined(a_ai))
	{
		if(a_ai.size > 0)
		{
			var_1152223f = namespace_36cbf523::function_9e5ed1ac(a_ai);
			num_to_kill = var_1152223f.size - 0;
			for(i = 0; i < num_to_kill; i++)
			{
				n_index = var_1152223f.size - 1 - i;
				var_1152223f[n_index] util::stop_magic_bullet_shield();
				var_1152223f[n_index] thread function_95040800(512);
			}
		}
	}
	e_info_volume = GetEnt("world_falls_apart_soldier_kill_volume", "targetname");
	a_ai = GetAITeamArray("axis");
	if(isdefined(a_ai))
	{
		for(i = 0; i < a_ai.size; i++)
		{
			if(a_ai[i] istouching(e_info_volume))
			{
				a_ai[i].ignoreme = 1;
			}
		}
	}
	e_trigger = GetEnt("t_jumping_dogs_after_trench", "targetname");
	e_trigger waittill("trigger");
	a_ai = GetAITeamArray("axis");
	if(isdefined(a_ai))
	{
		for(i = 0; i < a_ai.size; i++)
		{
			if(a_ai[i] istouching(e_info_volume))
			{
				a_ai[i] thread function_95040800(512);
			}
		}
	}
}

/*
	Name: function_82ddc1bc
	Namespace: namespace_47c46a7d
	Checksum: 0x9D74230E
	Offset: 0x7508
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_82ddc1bc()
{
	namespace_36cbf523::function_aa0ddbc3(0);
	namespace_36cbf523::function_3ea445de();
	namespace_36cbf523::function_674ecd85();
	namespace_36cbf523::function_b32291d7("reverse_anim_trigger", "script_noteworthy");
}

/*
	Name: function_56b28f61
	Namespace: namespace_47c46a7d
	Checksum: 0x394B6783
	Offset: 0x7570
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_56b28f61()
{
	scene::add_scene_func("cin_gen_vign_fall_fall", &function_a2c7b004, "play");
	var_c917e48d = struct::get_array("hanging_on_ledge_dude", "targetname");
	level thread Array::spread_all(var_c917e48d, &function_a9e95fee);
}

/*
	Name: function_a9e95fee
	Namespace: namespace_47c46a7d
	Checksum: 0xE1347F0
	Offset: 0x7608
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a9e95fee()
{
	level endon("hash_bc20f93d");
	level waittill(self.script_string);
	buffer_time = 2;
	wait(2.7 + buffer_time);
	if(isdefined(self.script_delay))
	{
		wait(self.script_delay);
	}
	self scene::Play();
}

/*
	Name: function_e8d77ec8
	Namespace: namespace_47c46a7d
	Checksum: 0x585CAC08
	Offset: 0x7680
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_e8d77ec8()
{
	var_c917e48d = struct::get_array("hanging_on_ledge_dude_background", "targetname");
	level thread Array::spread_all(var_c917e48d, &function_7daee669);
}

/*
	Name: function_7daee669
	Namespace: namespace_47c46a7d
	Checksum: 0xBCE7BD2E
	Offset: 0x76E8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_7daee669()
{
	level endon("hash_bc20f93d");
	var_fcf5da5e = GetEnt(self.target, "targetname");
	var_fcf5da5e waittill("trigger", player);
	if(isdefined(self.script_delay))
	{
		wait(self.script_delay);
	}
	self scene::Play();
}

/*
	Name: function_a2c7b004
	Namespace: namespace_47c46a7d
	Checksum: 0xACF6708C
	Offset: 0x7770
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_a2c7b004(a_ents)
{
}

/*
	Name: debug_line
	Namespace: namespace_47c46a7d
	Checksum: 0xD2D96EEB
	Offset: 0x7788
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function debug_line(e_ent)
{
	e_ent endon("death");
	while(1)
	{
		v_start = e_ent.origin;
		v_end = v_start + VectorScale((0, 0, 1), 1000);
		v_col = (1, 1, 1);
		/#
			line(v_start, v_end, v_col);
		#/
		wait(0.1);
	}
}


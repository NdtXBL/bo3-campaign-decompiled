#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_supertrees;
#using scripts\cp\cp_mi_sing_biodomes_swamp;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cp_mi_sing_biodomes2_fx;
#using scripts\cp\cp_mi_sing_biodomes2_patch;
#using scripts\cp\cp_mi_sing_biodomes2_sound;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\teamgather_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_ad848cf8;

/*
	Name: setup_rex_starts
	Namespace: namespace_ad848cf8
	Checksum: 0xAE859658
	Offset: 0xC88
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function setup_rex_starts()
{
	util::add_gametype("coop");
	util::add_gametype("cpzm");
}

/*
	Name: main
	Namespace: namespace_ad848cf8
	Checksum: 0xBA83FD96
	Offset: 0xCC8
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function main()
{
	if(SessionModeIsCampaignZombiesGame() && -1)
	{
		SetClearanceCeiling(34);
	}
	else
	{
		SetClearanceCeiling(30);
	}
	savegame::function_8c0c4b3a("biodomes");
	namespace_769dc23f::accolades_init();
	Precache();
	function_b37230e4();
	flag_init();
	level_init();
	namespace_dfee119::main();
	namespace_e0a1d00c::main();
	namespace_1b0f1865::main();
	namespace_a660d427::main();
	setup_skiptos();
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	spawner::add_global_spawn_function("axis", &function_8b005d7f);
	load::main();
	namespace_915215db::function_7403e82b();
	CreateThreatBiasGroup("heroes");
	objectives::complete("cp_level_biodomes_mainobj_capture_data_drives");
	objectives::complete("cp_level_biodomes_mainobj_upload_data");
}

/*
	Name: Precache
	Namespace: namespace_ad848cf8
	Checksum: 0x8EA86820
	Offset: 0xEA8
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function Precache()
{
	level._effect["explosion_zipline_up"] = "explosions/fx_exp_elvsft_biodome";
	level._effect["boat_sparks"] = "electric/fx_elec_sparks_boat_scrape_biodomes";
	level._effect["depth_charge"] = "explosions/fx_exp_underwater_depth_charge";
	level._effect["boat_trail"] = "vehicle/fx_spray_fan_boat";
	level._effect["boat_land_splash"] = "vehicle/fx_splash_front_fan_boat";
	level._effect["boat_grass"] = "vehicle/fx_grass_front_fan_boat";
}

/*
	Name: function_b37230e4
	Namespace: namespace_ad848cf8
	Checksum: 0x7C25EA29
	Offset: 0xF60
	Size: 0x453
	Parameters: 0
	Flags: None
*/
function function_b37230e4()
{
	clientfield::register("toplayer", "dive_wind_rumble_loop", 1, 1, "int");
	clientfield::register("toplayer", "set_underwater_fx", 1, 1, "int");
	clientfield::register("toplayer", "sound_evt_boat_rattle", 1, 1, "counter");
	clientfield::register("toplayer", "zipline_speed_blur", 1, 1, "int");
	clientfield::register("toplayer", "zipline_rumble_loop", 1, 1, "int");
	clientfield::register("toplayer", "supertree_jump_debris_play", 1, 1, "int");
	clientfield::register("world", "boat_explosion_play", 1, 1, "int");
	clientfield::register("world", "elevator_top_debris_play", 1, 1, "int");
	clientfield::register("world", "elevator_bottom_debris_play", 1, 1, "int");
	clientfield::register("world", "tall_grass_init", 1, 1, "int");
	clientfield::register("world", "tall_grass_play", 1, 1, "int");
	clientfield::register("world", "supertree_fall_init", 1, 1, "counter");
	clientfield::register("world", "supertree_fall_play", 1, 1, "counter");
	clientfield::register("world", "ferriswheel_fall_play", 1, 1, "int");
	clientfield::register("allplayers", "zipline_sound_loop", 1, 1, "int");
	clientfield::register("vehicle", "boat_disable_sfx", 1, 1, "int");
	clientfield::register("vehicle", "sound_evt_boat_scrape_impact", 1, 1, "counter");
	clientfield::register("vehicle", "sound_veh_airboat_jump", 1, 1, "counter");
	clientfield::register("vehicle", "sound_veh_airboat_jump_air", 1, 1, "counter");
	clientfield::register("vehicle", "sound_veh_airboat_land", 1, 1, "counter");
	clientfield::register("vehicle", "sound_veh_airboat_ramp_hit", 1, 1, "counter");
	clientfield::register("vehicle", "sound_veh_airboat_start", 1, 1, "counter");
	clientfield::register("scriptmover", "clone_control", 1, 1, "int");
}

/*
	Name: flag_init
	Namespace: namespace_ad848cf8
	Checksum: 0x8231A28C
	Offset: 0x13C0
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function flag_init()
{
	level flag::init("start_slide");
	level flag::init("supertrees_intro_done");
	level flag::init("supertrees_intro_vo_complete");
	level flag::init("supertrees_hunter_arrival");
	level flag::init("hunter_missiles_go");
	level flag::init("hendricks_dive");
	level flag::init("player_dive_done");
	level flag::init("hendricks_boat_waiting");
	level flag::init("hendricks_onboard");
	level flag::init("boats_init");
	level flag::init("all_players_on_boats");
	level flag::init("boats_ready_to_depart");
	level flag::init("boat_rail_begin");
	level flag::init("boats_go");
	level flag::init("swamp_tanker_exploded");
	level flag::init("supertrees_tree1_started");
	level flag::init("hendricks_played_supertree_takedown");
	level flag::init("hendricks_reached_finaltree");
	level flag::init("player_reached_final_zipline");
	level flag::init("any_player_reached_bottom_finaltree");
	level flag::init("player_reached_bottom_finaltree");
	level flag::init("start_hendricks_dive");
	level flag::init("player_reached_top_finaltree");
	level flag::init("supertree_fall_played");
	level flag::init("dock_enemies_take_cover");
}

/*
	Name: level_init
	Namespace: namespace_ad848cf8
	Checksum: 0x676A5264
	Offset: 0x16F0
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function level_init()
{
	level.var_b06e31c0 = 1;
	var_4698236 = GetEntArray("start_hidden", "script_noteworthy");
	foreach(ent in var_4698236)
	{
		ent Hide();
	}
}

/*
	Name: function_8b005d7f
	Namespace: namespace_ad848cf8
	Checksum: 0xBF1E60B7
	Offset: 0x17C0
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_8b005d7f()
{
	if(isdefined(self.script_label))
	{
		self.var_fd3ee5eb = self.script_label;
	}
	else
	{
		self.var_fd3ee5eb = "tree1";
	}
	self.var_23304c9e = 0;
}

/*
	Name: on_player_connect
	Namespace: namespace_ad848cf8
	Checksum: 0x461E80F9
	Offset: 0x1808
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self flag::init("player_on_boat");
	self.var_346ba704 = 0;
	self thread function_f1059e87();
	self.var_23304c9e = 0;
	if(level flag::get("supertree_fall_played"))
	{
		exploder::exploder("fx_expl_supertree_collapse");
	}
}

/*
	Name: on_player_spawned
	Namespace: namespace_ad848cf8
	Checksum: 0x2CA6B4F6
	Offset: 0x1898
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self endon("death");
	if(level.skipto_point === "objective_descend")
	{
		self thread function_68f49e09();
	}
	if(level.skipto_point === "objective_descend" || level.skipto_point === "objective_supertrees")
	{
		self.var_fd3ee5eb = "tree1";
	}
	self thread namespace_a660d427::function_9850e9ee();
	if(level.skipto_point == "objective_swamps")
	{
		self thread namespace_a660d427::function_39af75ef("boats_go");
	}
	if(level.skipto_point == "objective_swamps" || level.skipto_point == "dev_swamp_rail" || level.skipto_point == "dev_swamp_rail_final_scene")
	{
		if(level.activePlayers.size > 2 && !level flag::get("boats_go"))
		{
			namespace_a660d427::function_c98db861(0);
		}
		else if(level.activePlayers.size > 2 && level flag::get("boats_go"))
		{
			namespace_a660d427::function_e5108e73(0);
		}
		if(level flag::get("boats_ready_to_depart"))
		{
			self.var_32218fc7 = 1;
			self thread namespace_a660d427::function_1bd42852();
		}
	}
	namespace_27a45d31::function_d28654c9();
}

/*
	Name: function_68f49e09
	Namespace: namespace_ad848cf8
	Checksum: 0x58CC1ED4
	Offset: 0x1A80
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_68f49e09()
{
	self endon("death");
	level flag::wait_till("start_slide");
	s_start = struct::get("descend_player" + self GetEntityNumber(), "targetname");
	if(!isdefined(s_start))
	{
		return;
	}
	var_79785795 = util::spawn_model("tag_origin", s_start.origin, s_start.angles);
	var_79785795 thread scene::Play("cin_bio_12_05_descend_1st_planc_player_slideloop", self);
	while(isdefined(s_start.target))
	{
		s_end = struct::get(s_start.target, "targetname");
		n_dist = Distance(s_start.origin, s_end.origin);
		n_time = n_dist / 16 * 17.6;
		var_79785795 moveto(s_end.origin, n_time);
		wait(n_time - 0.05);
		s_start = s_end;
	}
	v_velocity = var_79785795 GetVelocity();
	self SetVelocity(v_velocity);
	var_79785795 scene::stop("cin_bio_12_05_descend_1st_planc_player_slideloop");
	var_79785795 delete();
}

/*
	Name: function_f1059e87
	Namespace: namespace_ad848cf8
	Checksum: 0x7E0979AB
	Offset: 0x1CB8
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_f1059e87()
{
	self endon("disconnect");
	self waittill("bled_out");
	self.var_346ba704 = 1;
}

/*
	Name: setup_skiptos
	Namespace: namespace_ad848cf8
	Checksum: 0xB8850ECB
	Offset: 0x1CE8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function setup_skiptos()
{
	skipto::function_d68e678e("objective_descend", &namespace_1b0f1865::function_765faa8e, undefined, &namespace_1b0f1865::function_9aee8548);
	skipto::add("objective_supertrees", &namespace_1b0f1865::function_6ab1d04e, undefined, &namespace_1b0f1865::function_657c0308);
	skipto::function_d68e678e("objective_dive", &namespace_1b0f1865::function_e83c544, undefined, &namespace_1b0f1865::function_975cf43a);
	skipto::function_d68e678e("objective_swamps", &namespace_a660d427::function_46a6d6ab, undefined, &namespace_a660d427::function_b898dce1);
	/#
		skipto::function_654c9dda("Dev Block strings are not supported", &namespace_1b0f1865::function_86a08a81);
		skipto::function_654c9dda("Dev Block strings are not supported", &namespace_1b0f1865::function_6e6908bc);
		skipto::function_654c9dda("Dev Block strings are not supported", &namespace_a660d427::function_7220010f);
	#/
}


#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection_zombies;
#using scripts\cp\cp_mi_cairo_infection3_sound;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_6473bd03;

/*
	Name: main
	Namespace: namespace_6473bd03
	Checksum: 0xFA291FDA
	Offset: 0xBB0
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function main()
{
	init_clientfields();
	level thread scene::init("p7_fxanim_cp_infection_house_ceiling_02_bundle");
	level flag::init("underwater_done");
	level._effect["nuke_fx"] = "explosions/fx_exp_nuke_full_inf";
}

/*
	Name: init_clientfields
	Namespace: namespace_6473bd03
	Checksum: 0xB9DF4AFD
	Offset: 0xC28
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	n_clientbits = GetMinBitCountForNum(4);
	clientfield::register("world", "infection_hideout_fx", 1, 1, "int");
	clientfield::register("world", "hideout_stretch", 1, 1, "int");
	clientfield::register("world", "stalingrad_rise_nuke", 1, 2, "int");
	clientfield::register("world", "stalingrand_nuke_fog_banks", 1, 1, "int");
	clientfield::register("world", "city_tree_passed", 1, 1, "int");
	clientfield::register("world", "stalingrad_tree_init", 1, 2, "int");
	clientfield::register("world", "stalingrad_city_ceilings", 1, n_clientbits, "int");
	clientfield::register("world", "infection_nuke_lights", 1, 1, "int");
	clientfield::register("toplayer", "ukko_toggling", 1, 1, "counter");
	clientfield::register("toplayer", "nuke_earth_quake", 1, GetMinBitCountForNum(8), "int");
}

/*
	Name: function_206da579
	Namespace: namespace_6473bd03
	Checksum: 0xD5D78118
	Offset: 0xE50
	Size: 0x363
	Parameters: 2
	Flags: None
*/
function function_206da579(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
	}
	scene::add_scene_func("cin_inf_13_01_hideout_vign_briefing", &function_a8f91bd1, "play");
	scene::add_scene_func("p7_fxanim_cp_infection_hideout_stretch_bundle", &function_392bb391, "play");
	scene::add_scene_func("cin_inf_12_01_underwater_1st_fall_hideout03", &namespace_36cbf523::function_efa09886, "done");
	level scene::init("cin_inf_13_01_hideout_vign_briefing");
	playsoundatposition("evt_dream_vox", (-6893, 2203, 5962));
	if(var_74cd64bc)
	{
		load::function_a2995f22();
	}
	level notify("update_billboard");
	level thread scene::Play("cin_inf_12_01_underwater_1st_fall_hideout03");
	Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
	level clientfield::set("infection_hideout_fx", 1);
	level thread namespace_99d8554b::function_63b34b78();
	if(isdefined(level.BZM_INFECTIONDialogue15Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue15Callback]]();
	}
	level thread scene::Play("cin_inf_13_01_hideout_vign_briefing");
	level waittill("hash_69a80734");
	level thread scene::Play("p7_fxanim_cp_infection_hideout_stretch_bundle");
	level thread util::function_d8eaed3d(10);
	level waittill("hash_748dfeb3");
	level thread util::clear_streamer_hint();
	var_7d116593 = struct::get("s_interrogation_loc", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.origin);
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("cp_infection_hideout_stretch");
	}
	level util::screen_fade_out(5, "black");
	level thread util::clear_streamer_hint();
	level thread function_a35499d1();
}

/*
	Name: function_a35499d1
	Namespace: namespace_6473bd03
	Checksum: 0x8F21CEDD
	Offset: 0x11C0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_a35499d1(a_ents)
{
	Array::thread_all(level.players, &namespace_36cbf523::function_e905c73c);
	level notify("hash_9c2ad976");
	level thread skipto::function_be8adfb8("hideout");
}

/*
	Name: function_392bb391
	Namespace: namespace_6473bd03
	Checksum: 0x2ACBA6A6
	Offset: 0x1228
	Size: 0x19F
	Parameters: 1
	Flags: None
*/
function function_392bb391(a_ents)
{
	var_b1c83f96 = Array("light_fx_01", "light_fx_02", "light_fx_03", "light_fx_04", "fx_light_1", "fx_light_2", "fx_light_3", "fx_light_5", "fx_light_6", "fx_light_7", "fx_light_9");
	foreach(string in var_b1c83f96)
	{
		a_e_lights = GetEntArray(string, "targetname");
		foreach(e_light in a_e_lights)
		{
			e_light thread function_f29981bc(a_ents);
		}
	}
}

/*
	Name: function_f29981bc
	Namespace: namespace_6473bd03
	Checksum: 0xCB7DBD9C
	Offset: 0x13D0
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_f29981bc(a_ents)
{
	self LinkTo(a_ents["hideout_stretch"], self.targetname + "_jnt");
	level waittill("hash_9c2ad976");
	self Unlink();
	self delete();
}

/*
	Name: function_a8f91bd1
	Namespace: namespace_6473bd03
	Checksum: 0xC9EF32F6
	Offset: 0x1450
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_a8f91bd1(a_ents)
{
	wait(1);
	level dialog::function_13b3b16a("plyr_where_did_you_go_sa_0", 1);
	level dialog::say("hall_we_held_up_in_the_ol_0", 1, 1);
	level dialog::say("hall_and_made_our_pla_0", 0, 1);
	level dialog::function_13b3b16a("plyr_the_aquifers_you_0", 0);
	level dialog::function_13b3b16a("plyr_it_must_be_kane_sho_0", 3);
}

/*
	Name: function_299b5716
	Namespace: namespace_6473bd03
	Checksum: 0x9C377239
	Offset: 0x1528
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_299b5716(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_d039c886
	Namespace: namespace_6473bd03
	Checksum: 0x654B2AD2
	Offset: 0x1558
	Size: 0x24B
	Parameters: 2
	Flags: None
*/
function function_d039c886(str_objective, var_74cd64bc)
{
	level notify("update_billboard");
	scene::add_scene_func("cin_inf_14_01_nasser_vign_interrogate", &function_70e2b47c, "init");
	scene::add_scene_func("cin_inf_14_01_nasser_vign_interrogate", &function_12d4e076, "done");
	skipto::teleport_players(str_objective, 0);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level scene::init("cin_inf_14_01_nasser_vign_interrogate");
		load::function_a2995f22();
	}
	util::screen_fade_out(0, "black");
	level util::delay(0.25, undefined, &util::screen_fade_in, 2, "black");
	Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
	level thread function_423ccbef();
	if(isdefined(level.BZM_INFECTIONDialogue16Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue16Callback]]();
	}
	level thread scene::Play("cin_inf_14_01_nasser_vign_interrogate");
	level thread util::function_d8eaed3d(4);
	level waittill("hash_3b77e704");
	exploder::exploder("exploder_interrogation_transition");
	level thread util::screen_fade_out(3, "white");
	wait(3);
	level thread util::clear_streamer_hint();
	level thread skipto::function_be8adfb8("interrogation");
}

/*
	Name: function_70e2b47c
	Namespace: namespace_6473bd03
	Checksum: 0x7E9D0213
	Offset: 0x17B0
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_70e2b47c(a_ents)
{
}

/*
	Name: function_12d4e076
	Namespace: namespace_6473bd03
	Checksum: 0xA43DDC45
	Offset: 0x17C8
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function function_12d4e076(a_ents)
{
	Array::thread_all(level.players, &namespace_36cbf523::function_e905c73c);
	level notify("interrogation_done");
}

/*
	Name: function_423ccbef
	Namespace: namespace_6473bd03
	Checksum: 0xE0BB1FC1
	Offset: 0x1818
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_423ccbef()
{
	level waittill("hash_c71d58c6");
	playsoundatposition("evt_interrogation_vtol", (-7159, 17021, 5990));
	level waittill("hash_79fdda3d");
	playsoundatposition("evt_interrogation_vtol_fade", (0, 0, 0));
}

/*
	Name: function_3aef563f
	Namespace: namespace_6473bd03
	Checksum: 0xAF1F39EF
	Offset: 0x1880
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_3aef563f(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	exploder::exploder("city_lightning");
	if(var_74cd64bc)
	{
		exploder::exploder("exploder_interrogation_transition");
	}
	if(isdefined(level.var_a73e9330))
	{
		level.var_a73e9330 delete();
	}
}

/*
	Name: function_607100ba
	Namespace: namespace_6473bd03
	Checksum: 0x993BD33E
	Offset: 0x1910
	Size: 0x3B3
	Parameters: 2
	Flags: None
*/
function function_607100ba(str_objective, var_74cd64bc)
{
	level notify("update_billboard");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		util::function_d8eaed3d(4);
	}
	else
	{
		util::screen_fade_out(0, "white");
	}
	scene::add_scene_func("cin_inf_16_01_zombies_vign_treemoment_intro", &function_a5128547, "play");
	scene::add_scene_func("cin_inf_16_01_zombies_vign_treemoment_intro", &function_801f28a1, "done");
	scene::add_scene_func("cin_inf_14_04_sarah_vign_05", &function_c5b11e32, "play");
	if(var_74cd64bc)
	{
		load::function_a2995f22();
		util::screen_fade_out(0);
		util::delay(1, undefined, &util::screen_fade_in, 1);
	}
	else
	{
		util::delay(1, undefined, &util::screen_fade_in, 1, "white");
	}
	skipto::teleport_players(str_objective, 1);
	if(isdefined(level.BZM_INFECTIONDialogue17Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue17Callback]]();
	}
	level scene::Play("cin_inf_14_04_sarah_vign_05");
	if(var_74cd64bc)
	{
		level thread util::clear_streamer_hint();
	}
	var_7d116593 = struct::get("s_city_loc", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.origin);
	util::delay(1, undefined, &util::screen_fade_in, 2.5, "white");
	level thread scene::Play("cin_inf_16_01_zombies_vign_treemoment_intro");
	level thread function_579b7304();
	wait(5);
	if(isdefined(level.BZM_INFECTIONDialogue18Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue18Callback]]();
	}
	level thread function_136fcf00();
	wait(5);
	level thread function_8877c63f();
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("cp_infection_hideout_stretch");
	}
	level thread util::clear_streamer_hint();
}

/*
	Name: function_579b7304
	Namespace: namespace_6473bd03
	Checksum: 0x57BCB5F7
	Offset: 0x1CD0
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_579b7304()
{
	level.var_e6467acd = GetEnt("sarah", "animname");
	if(!isdefined(level.var_e6467acd))
	{
		level.var_e6467acd = spawner::simple_spawn_single("sarah");
	}
	level.var_e6467acd.goalRadius = 32;
	level.var_e6467acd SetTeam("allies");
	level.var_e6467acd ai::set_ignoreall(1);
	level.var_e6467acd ai::set_ignoreme(1);
	level.var_e6467acd util::magic_bullet_shield();
	level.var_e6467acd ai::gun_remove();
	level.var_e6467acd.allowPain = 0;
	level thread scene::Play("cin_inf_16_01_zombies_vign_treemoment_gameplay_loop");
}

/*
	Name: function_c5b11e32
	Namespace: namespace_6473bd03
	Checksum: 0xB95020BE
	Offset: 0x1E10
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_c5b11e32(a_ents)
{
	level waittill("start_fade");
	level thread util::screen_fade_out(1, "white");
}

/*
	Name: function_a5128547
	Namespace: namespace_6473bd03
	Checksum: 0x48D16B3
	Offset: 0x1E58
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_a5128547(a_ents)
{
	a_ents["player 1"] waittill("hash_b18eeabf");
	level thread scene::Play("p7_fxanim_cp_infection_reverse_stalingrad_house_bundle");
}

/*
	Name: function_801f28a1
	Namespace: namespace_6473bd03
	Checksum: 0x54BAD533
	Offset: 0x1EA8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_801f28a1(a_ents)
{
	level thread skipto::function_be8adfb8("city_barren");
}

/*
	Name: function_8877c63f
	Namespace: namespace_6473bd03
	Checksum: 0x2C19DAE7
	Offset: 0x1EE0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8877c63f()
{
	level.players[0] playsound("evt_city_rise");
	level clientfield::set("stalingrad_rise_nuke", 1);
}

/*
	Name: function_eebf61b
	Namespace: namespace_6473bd03
	Checksum: 0x39D25DE4
	Offset: 0x1F38
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_eebf61b(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_136fcf00
	Namespace: namespace_6473bd03
	Checksum: 0x583DE760
	Offset: 0x1F68
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_136fcf00()
{
	level clientfield::set("stalingrad_tree_init", 1);
	level.players[0] playsound("evt_tree_grow");
}

/*
	Name: function_67c4a95f
	Namespace: namespace_6473bd03
	Checksum: 0x983BB50A
	Offset: 0x1FC0
	Size: 0x2BB
	Parameters: 2
	Flags: None
*/
function function_67c4a95f(str_objective, var_74cd64bc)
{
	level notify("update_billboard");
	spawner::add_global_spawn_function("axis", &function_40dc724e);
	namespace_f25bd8c8::function_6c777c8d();
	namespace_f25bd8c8::function_a0fb8ca9();
	namespace_f25bd8c8::function_70cafec1();
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level clientfield::set("stalingrad_rise_nuke", 1);
		level thread function_579b7304();
		load::function_a2995f22();
		level clientfield::set("stalingrad_tree_init", 1);
		level thread util::screen_fade_in(2, "black");
		skipto::teleport_players(str_objective, 1);
	}
	else
	{
		util::screen_fade_out(0.3, "white");
		skipto::teleport_players(str_objective, 1);
		level thread util::screen_fade_in(0.2, "white");
	}
	namespace_36cbf523::function_aa0ddbc3(1);
	level thread function_bf049e87();
	level thread function_e595eb57();
	level flag::clear("spawn_zombies");
	level notify("hash_ee152b14");
	level thread function_33c4ce19();
	objectives::set("cp_level_infection_zombies");
	playsoundatposition("evt_inf_spawn", (27444, 554, -3252));
	level thread function_c4fe5f45();
	level flag::wait_till("sarah_tree");
	level thread skipto::function_be8adfb8("city");
}

/*
	Name: function_33c4ce19
	Namespace: namespace_6473bd03
	Checksum: 0x29450691
	Offset: 0x2288
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_33c4ce19()
{
	ent1 = spawn("script_origin", (27559, -255, -3078));
	ent2 = spawn("script_origin", (27421, 1613, -2992));
	ent1 PlayLoopSound("evt_zombies_walla", 2);
	wait(12);
	ent2 PlayLoopSound("evt_zombies_walla", 2);
	level flag::wait_till("zombies_completed");
	ent1 delete();
	ent2 delete();
}

/*
	Name: function_40dc724e
	Namespace: namespace_6473bd03
	Checksum: 0x68CDD152
	Offset: 0x2398
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_40dc724e()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self clientfield::set("zombie_tac_mode_disable", 1);
}

/*
	Name: function_c4fe5f45
	Namespace: namespace_6473bd03
	Checksum: 0xEFDE8AC3
	Offset: 0x23E0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c4fe5f45()
{
	level dialog::function_13b3b16a("plyr_what_the_hell_is_tha_0", 3);
	level dialog::function_13b3b16a("plyr_sarah_these_monste_0", 8);
}

/*
	Name: function_e595eb57
	Namespace: namespace_6473bd03
	Checksum: 0x32712787
	Offset: 0x2430
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e595eb57()
{
	var_ef5c86ba = GetEntArray("t_house_ceiling", "targetname");
	Array::thread_all(var_ef5c86ba, &function_b951f4cb);
}

/*
	Name: function_545f4b96
	Namespace: namespace_6473bd03
	Checksum: 0x21F52C4C
	Offset: 0x2490
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_545f4b96()
{
	wait(2.5);
	var_115ce1e8 = GetEnt("pavlovs_house_second_floor_railing_clip", "targetname");
	var_115ce1e8 delete();
}

/*
	Name: function_b951f4cb
	Namespace: namespace_6473bd03
	Checksum: 0x95FF8A09
	Offset: 0x24E8
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_b951f4cb()
{
	self endon("death");
	if(isdefined(self.target))
	{
		s_target = struct::get(self.target, "targetname");
	}
	wait(3);
	while(1)
	{
		self trigger::wait_till();
		if(isPlayer(self.who))
		{
			player = self.who;
			if(isdefined(s_target))
			{
				self thread function_216c9445(player, s_target);
				self waittill("hash_e8c77093");
				self notify("hash_77e1a075");
			}
			if(self.script_int == 2)
			{
				level thread scene::Play("p7_fxanim_cp_infection_house_ceiling_02_bundle");
			}
			else
			{
				level clientfield::set("stalingrad_city_ceilings", self.script_int);
				if(self.script_int == 3)
				{
					level thread function_545f4b96();
				}
			}
			self delete();
			return;
		}
	}
}

/*
	Name: function_216c9445
	Namespace: namespace_6473bd03
	Checksum: 0x98F767A8
	Offset: 0x2670
	Size: 0x79
	Parameters: 2
	Flags: None
*/
function function_216c9445(player, s_target)
{
	self endon("hash_77e1a075");
	self endon("death");
	player endon("death");
	while(!player namespace_36cbf523::function_72268bc2(s_target, 0.5, 400))
	{
		wait(0.1);
	}
	self notify("hash_e8c77093");
}

/*
	Name: function_36ff1cdc
	Namespace: namespace_6473bd03
	Checksum: 0x9026EDB8
	Offset: 0x26F8
	Size: 0x109
	Parameters: 4
	Flags: None
*/
function function_36ff1cdc(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_f25bd8c8::function_bbb224b7();
	spawner::remove_global_spawn_function("axis", &function_40dc724e);
	var_ef5c86ba = GetEntArray("t_house_ceiling", "targetname");
	foreach(trig in var_ef5c86ba)
	{
		trig delete();
	}
}

/*
	Name: function_7bb61977
	Namespace: namespace_6473bd03
	Checksum: 0xDF229FB
	Offset: 0x2810
	Size: 0x273
	Parameters: 2
	Flags: None
*/
function function_7bb61977(str_objective, var_74cd64bc)
{
	level thread clientfield::set("city_tree_passed", 1);
	level.var_8ebdde9d = 1;
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread scene::skipto_end("p7_fxanim_cp_infection_house_ceiling_02_bundle");
		var_19a2b88 = 4;
		for(i = 0; i < var_19a2b88; i++)
		{
			level clientfield::set("stalingrad_city_ceilings", i);
		}
		level thread function_545f4b96();
		wait(3);
		namespace_36cbf523::function_aa0ddbc3(1);
		level thread function_bf049e87();
		level flag::clear("spawn_zombies");
		level.round_number = 4;
		level notify("hash_ee152b14");
		level thread function_33c4ce19();
		objectives::set("cp_level_infection_zombies");
		level flag::set("zombies_final_round");
		level flag::set("spawn_zombies");
		load::function_a2995f22();
		level clientfield::set("stalingrad_rise_nuke", 1);
		level clientfield::set("stalingrad_tree_init", 1);
	}
	level flag::wait_till("zombies_completed");
	level thread skipto::function_be8adfb8("city_tree");
	namespace_36cbf523::function_aa0ddbc3(0);
}

/*
	Name: function_7e8dc9e7
	Namespace: namespace_6473bd03
	Checksum: 0xADB7A4DF
	Offset: 0x2A90
	Size: 0x269
	Parameters: 4
	Flags: None
*/
function function_7e8dc9e7(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level notify("hash_25601ed0");
	level flag::set("zombies_completed");
	zombies = GetAISpeciesArray(level.zombie_team, "all");
	if(isdefined(zombies))
	{
		for(i = 0; i < zombies.size; i++)
		{
			zombies[i] delete();
		}
	}
	else if(isdefined(level.var_e6467acd))
	{
		level.var_e6467acd delete();
	}
	var_9b40c1cb = GetEnt("pavlov_house_fire", "targetname");
	if(isdefined(var_9b40c1cb))
	{
		var_9b40c1cb delete();
	}
	var_acc45090 = GetEnt("pavlov_house_fire_warning", "targetname");
	if(isdefined(var_acc45090))
	{
		var_acc45090 delete();
	}
	var_c9c77dfb = GetEntArray("firewall_firepos", "targetname");
	foreach(ent in var_c9c77dfb)
	{
		ent clientfield::set("zombie_fire_wall_fx", 0);
		util::wait_network_frame();
		ent delete();
	}
}

/*
	Name: function_5be37ad8
	Namespace: namespace_6473bd03
	Checksum: 0x819B0485
	Offset: 0x2D08
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_5be37ad8()
{
	level endon("hash_25601ed0");
	self endon("death");
	if(!(isdefined(level.var_8ebdde9d) && level.var_8ebdde9d))
	{
		level flag::set("spawn_zombies");
		self thread function_afd36cff();
		level thread function_8c3b0a86();
	}
}

/*
	Name: function_afd36cff
	Namespace: namespace_6473bd03
	Checksum: 0x640778F8
	Offset: 0x2D90
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_afd36cff()
{
	level endon("hash_25601ed0");
	self endon("death");
	self endon("hash_9ce403cf");
	level waittill("hash_c7d17793");
	wait(2);
	level thread namespace_b0a87e94::function_f83fb174(0);
	self scene::Play("cin_inf_16_01_zombies_vign_treemoment_talk01", self);
	self thread scene::Play("cin_inf_16_01_zombies_vign_treemoment_gameplay_loop", self);
	level flag::set("zombies_final_round");
	level flag::set("spawn_zombies");
}

/*
	Name: function_8c3b0a86
	Namespace: namespace_6473bd03
	Checksum: 0x5719C3F7
	Offset: 0x2E70
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_8c3b0a86()
{
	while(level.round_number < 3)
	{
		level waittill("end_of_round");
	}
	level dialog::function_13b3b16a("plyr_hall_we_can_t_stay_0", 0);
	wait(2);
	level dialog::say("corv_let_her_go_0", 0);
	level dialog::function_13b3b16a("plyr_sarah_whoever_that_0", 1);
	level dialog::function_13b3b16a("plyr_who_are_you_what_0", 1);
}

/*
	Name: function_bf049e87
	Namespace: namespace_6473bd03
	Checksum: 0x3EBAE53F
	Offset: 0x2F30
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_bf049e87()
{
	while(!level flag::get("zombies_completed"))
	{
		level thread LUI::screen_fade(0.2, 0.7, 1, "white");
		playsoundatposition("evt_infection_thunder_special", (0, 0, 0));
		wait(0.5);
		level thread LUI::screen_fade(1, 0, 0.7, "white");
		wait(RandomFloatRange(0.3, 1.2));
		playsoundatposition("evt_infection_thunder_special", (0, 0, 0));
		wait(RandomFloatRange(6, 36));
	}
}

/*
	Name: function_5b6766b2
	Namespace: namespace_6473bd03
	Checksum: 0x9E485F5A
	Offset: 0x3038
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_5b6766b2()
{
	foreach(player in GetPlayers())
	{
		player thread clientfield::increment_to_player("ukko_toggling");
	}
}

/*
	Name: function_71d39006
	Namespace: namespace_6473bd03
	Checksum: 0x1CA66798
	Offset: 0x30E0
	Size: 0x213
	Parameters: 2
	Flags: None
*/
function function_71d39006(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		skipto::teleport_players(str_objective, 0);
		level flag::wait_till("all_players_spawned");
		level clientfield::set("stalingrad_rise_nuke", 1);
		level clientfield::set("stalingrad_tree_init", 1);
		level thread scene::skipto_end("p7_fxanim_cp_infection_house_ceiling_02_bundle");
		var_19a2b88 = 4;
		for(i = 0; i < var_19a2b88; i++)
		{
			level clientfield::set("stalingrad_city_ceilings", i);
		}
		wait(7);
		load::function_a2995f22();
	}
	scene::add_scene_func("cin_inf_18_outro_3rd_sh140", &function_9221432, "init");
	level scene::init("cin_inf_18_outro_3rd_sh010");
	level notify("update_billboard");
	Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
	level thread function_7f848c70();
	level thread function_788d360f();
	level waittill("hash_68898176");
	level thread skipto::function_be8adfb8("city_nuked");
}

/*
	Name: function_788d360f
	Namespace: namespace_6473bd03
	Checksum: 0x3817D5A8
	Offset: 0x3300
	Size: 0x255
	Parameters: 0
	Flags: None
*/
function function_788d360f()
{
	var_71d5cd4d = struct::get("nuke_fx_pos", "targetname");
	FORWARD = AnglesToForward(var_71d5cd4d.angles);
	up = (0, 0, 1);
	var_4b24de52 = 4;
	var_649f4b27 = 4;
	playsoundatposition("evt_tree_shrink", (0, 0, 0));
	Array::thread_all(level.players, &clientfield::set_to_player, "nuke_earth_quake", 2);
	level clientfield::set("zombie_root_grow", 0);
	level clientfield::set("stalingrad_tree_init", 2);
	if(isdefined(level.BZM_INFECTIONDialogue19Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue19Callback]]();
	}
	wait(4);
	level clientfield::set("infection_nuke_lights", 1);
	level clientfield::set("stalingrand_nuke_fog_banks", 1);
	wait(1);
	playFX(level._effect["nuke_fx"], var_71d5cd4d.origin, FORWARD, up);
	Array::thread_all(level.players, &clientfield::set_to_player, "nuke_earth_quake", var_4b24de52 + var_649f4b27);
	level clientfield::set("stalingrad_rise_nuke", 2);
	wait(var_4b24de52);
	wait(var_649f4b27);
	level thread util::screen_fade_out(0, "black");
	wait(2);
	level notify("hash_68898176");
}

/*
	Name: function_ee75e7c1
	Namespace: namespace_6473bd03
	Checksum: 0x478CF0FC
	Offset: 0x3560
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_ee75e7c1(time)
{
	start_time = GetTime();
	time_passed = 0;
	scale = 0.1;
	self PlayRumbleOnEntity("tank_damage_heavy_mp");
	Earthquake(0.3, 0.5, self.origin, 100);
	while(time_passed < time)
	{
		self PlayRumbleOnEntity("damage_heavy");
		Earthquake(scale, 1, self.origin, 100);
		wait(0.25);
		scale = scale + 0.015;
		time_passed = GetTime() - start_time / 1000;
	}
}

/*
	Name: function_7f848c70
	Namespace: namespace_6473bd03
	Checksum: 0xB2E7AF0D
	Offset: 0x3680
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_7f848c70()
{
	level dialog::say("corv_listen_only_to_the_s_1", 1, 1);
	level dialog::say("corv_let_your_mind_relax_1", 1, 1);
	level dialog::say("corv_imagine_yourself_in_1", 0, 1);
}

/*
	Name: function_567b48bf
	Namespace: namespace_6473bd03
	Checksum: 0x3E210C02
	Offset: 0x3708
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_567b48bf(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level clientfield::set("stalingrand_nuke_fog_banks", 0);
}

/*
	Name: function_3e44f402
	Namespace: namespace_6473bd03
	Checksum: 0xB657750C
	Offset: 0x3758
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function function_3e44f402(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		scene::add_scene_func("cin_inf_18_outro_3rd_sh140", &function_9221432, "init");
		level scene::init("cin_inf_18_outro_3rd_sh010");
		load::function_a2995f22();
	}
	else
	{
		util::streamer_wait();
	}
	level thread util::screen_fade_in(2);
	if(isdefined(level.BZM_INFECTIONDialogue20Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue20Callback]]();
	}
	level thread namespace_99d8554b::function_a0a44ed9();
	level thread audio::unlockFrontendMusic("mus_infection_church_intro");
	level clientfield::set("gameplay_started", 0);
	level scene::Play("cin_inf_18_outro_3rd_sh010");
}

/*
	Name: function_9221432
	Namespace: namespace_6473bd03
	Checksum: 0x15D1118E
	Offset: 0x38B0
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_9221432(a_ents)
{
	level waittill("hash_6a87e7bc");
	level clientfield::set("sndIGCsnapshot", 4);
	if(scene::is_skipping_in_progress())
	{
		level util::screen_fade_out(0, "black", "end_level_fade");
	}
	else
	{
		level util::screen_fade_out(0.5, "black", "end_level_fade");
	}
	foreach(player in level.players)
	{
		player DisableWeapons();
	}
	level thread skipto::function_be8adfb8("outro");
}

/*
	Name: function_245d1883
	Namespace: namespace_6473bd03
	Checksum: 0xC2613E58
	Offset: 0x3A00
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_245d1883(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}


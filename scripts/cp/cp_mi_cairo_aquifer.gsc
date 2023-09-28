#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_accolades;
#using scripts\cp\cp_mi_cairo_aquifer_aitest;
#using scripts\cp\cp_mi_cairo_aquifer_ambience;
#using scripts\cp\cp_mi_cairo_aquifer_boss;
#using scripts\cp\cp_mi_cairo_aquifer_fx;
#using scripts\cp\cp_mi_cairo_aquifer_interior;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\cp_mi_cairo_aquifer_patch;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_19487f32;

/*
	Name: setup_rex_starts
	Namespace: namespace_19487f32
	Checksum: 0x66B87904
	Offset: 0xFC8
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
	Namespace: namespace_19487f32
	Checksum: 0x397BD361
	Offset: 0x1008
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function main()
{
	if(SessionModeIsCampaignZombiesGame() && 0)
	{
		SetClearanceCeiling(34);
	}
	else
	{
		SetClearanceCeiling(116);
	}
	Precache();
	skipto_setup();
	init_flags();
	function_4b0a421();
	util::function_286a5010(11);
	savegame::function_8c0c4b3a("aquifer");
	namespace_d6728217::main();
	namespace_1d1d22be::main();
	namespace_1254c007::main();
	namespace_4a128b5f::init();
	thread namespace_4a128b5f::function_82230f12();
	callback::on_finalize_initialization(&on_finalize_initialization);
	callback::on_connect(&function_8feafce2);
	callback::on_disconnect(&on_player_disconnected);
	callback::on_spawned(&on_player_spawned);
	callback::on_loadout(&function_974050f);
	callback::on_player_killed(&on_player_death);
	level.overridePlayerDamage = &function_6d9a8286;
	level.custombadplacethread = &function_48694c4a;
	spawner::add_global_spawn_function("axis", &function_f141f41c);
	compass::setupMiniMap("compass_map_cp_mi_cairo_aquifer");
	load::main();
	namespace_b5b83650::accolades_init();
	namespace_a52a2a1d::function_7403e82b();
	namespace_786319bb::LoadEffects();
	thread function_c2c4ea75();
	SetDvar("compassmaxrange", "2100");
	CreateThreatBiasGroup("players_vtol");
	CreateThreatBiasGroup("players_ground");
	CreateThreatBiasGroup("defend_hunters");
	load::function_73adcefc();
}

/*
	Name: init_flags
	Namespace: namespace_19487f32
	Checksum: 0xB6A296CA
	Offset: 0x1318
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("sniper_boss_spawned");
	level flag::init("end_battle");
	level flag::init("init_run");
	level flag::init("boss_taunt1");
	level flag::init("boss_taunt2");
	level flag::init("inside_water_room");
	level flag::init("inside_data_center");
	level flag::init("dogfighting");
	level flag::init("flag_khalil_water_igc_done");
	level flag::init("start_interior_breadcrumbs");
	level flag::init("lcombat_respawn_ground");
	level flag::init("show_defenses_mid_objectives");
	level flag::init("overload_in_progress");
	level flag::init("player_really_landed");
	level flag::init("boss_convo");
	level flag::init("breach_vo_complete");
	level flag::init("flight_to_water_vo_cleared");
	level flag::init("water_corvus_vo_cleared");
	level flag::init("intro_dogfight_global_active");
	level flag::init("enter_dogfight_global_active");
	level flag::init("intro_chryon_done");
	level flag::init("intro_finished");
	level flag::init("intro_dialog_finished");
	level flag::init("play_intro");
	level flag::init("flying_main_scene_done");
	level flag::init("play_breach");
	level flag::init("sniper_boss_skipped");
}

/*
	Name: function_4b0a421
	Namespace: namespace_19487f32
	Checksum: 0xC075C1C6
	Offset: 0x1688
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_4b0a421()
{
	clientfield::register("world", "water_room_exit_scenes", 1, 1, "int");
}

/*
	Name: skipto_setup
	Namespace: namespace_19487f32
	Checksum: 0x4930CBC8
	Offset: 0x16C8
	Size: 0x5A7
	Parameters: 0
	Flags: None
*/
function skipto_setup()
{
	skipto::add("level_long_fly_in", &namespace_84eb777e::function_419ee614, "Intro spawnvtol", &namespace_84eb777e::function_1e131fea);
	skipto::function_d68e678e("intro_dogfight", &namespace_84eb777e::function_9239cf5c, "Destroy Bogey spawnvtol", &namespace_84eb777e::function_b3635282);
	skipto::function_d68e678e("destroy_defenses", &namespace_84eb777e::function_e57c5192, "Destroy AA defenses spawnvtol", &namespace_84eb777e::function_676b4c2c);
	skipto::function_d68e678e("hack_terminal_left", &namespace_84eb777e::function_116a8e4e, "Hack Left Defend checkkayneexist", &namespace_84eb777e::function_c34c108);
	skipto::function_d68e678e("destroy_defenses_mid", &namespace_84eb777e::function_fb03103d, "Destroy Remaining AA spawnvtol", &namespace_84eb777e::function_46151925);
	skipto::function_d68e678e("hack_terminal_right", &namespace_84eb777e::function_386c647b, "Hack Right Defend checkkayneexist", &namespace_84eb777e::function_ec898691);
	skipto::add("water_room", &namespace_84eb777e::function_ac5573a8, "Searching checkenteredwater", &namespace_84eb777e::function_1802814e);
	skipto::function_d68e678e("water_room_exit", &namespace_84eb777e::function_e2e38eb, "Exit Water", &namespace_84eb777e::function_829aa821);
	skipto::function_d68e678e("post_water_room_dogfight", &namespace_84eb777e::function_5b113d76, "Destroy Bogey", &namespace_84eb777e::function_427463e0);
	skipto::function_d68e678e("destroy_defenses2", &namespace_84eb777e::function_2887cd74, "Support Egyptian Forces spawnvtol", &namespace_84eb777e::function_e5c63786);
	skipto::function_d68e678e("hack_terminals3", &namespace_84eb777e::function_724496b1, "L Combat checkplayerlanded", &namespace_84eb777e::function_113af563);
	skipto::function_d68e678e("breach_hangar", &namespace_84eb777e::function_af4fc2de, "Hangar Breach", &namespace_84eb777e::function_48728eb8);
	skipto::add("post_breach", &namespace_84eb777e::function_d22b2659, "Post Breach", &namespace_84eb777e::function_b8af1c13);
	skipto::function_d68e678e("sniper_boss_intro", &namespace_84eb777e::function_53d54ffb, "Hyperion Battle Intro", &namespace_84eb777e::function_7f27211);
	skipto::add("sniper_boss", &namespace_84eb777e::function_8a28a59e, "Hyperion Battle", &namespace_84eb777e::function_33c36478);
	skipto::function_d68e678e("hideout", &namespace_84eb777e::function_d6b95c0b, "Hyperion's hideout", &namespace_84eb777e::function_48ab6241);
	skipto::add("run_out", &namespace_84eb777e::function_95463da0, "Flee From Aquifer", &namespace_84eb777e::function_fb8ad8d6);
	skipto::add("exfil", &namespace_84eb777e::function_df17401b, "Exfil", &namespace_84eb777e::function_647ae831);
	/#
		skipto::function_654c9dda("Dev Block strings are not supported", &namespace_84eb777e::function_3230f09a, "Dev Block strings are not supported", &namespace_84eb777e::function_a02afda4);
	#/
	level.var_6b6097c5 = [];
	a_trigs = GetEntArray("objective", "targetname");
	foreach(trig in a_trigs)
	{
		if(isdefined(trig.script_objective))
		{
			level.var_6b6097c5[trig.script_objective] = trig;
		}
	}
}

/*
	Name: billboard
	Namespace: namespace_19487f32
	Checksum: 0xF9D51229
	Offset: 0x1C78
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function billboard()
{
	skipto::function_955393e("level_long_fly_in", "INTRO", "Pacing", "Small");
	skipto::function_955393e("intro_dogfight", "DOGFIGHT", "Aerial Combat", "Large");
	skipto::function_955393e("destroy_defenses", "DESTROY AA DEFENSES", "Aerial Combat", "Large");
	skipto::function_955393e("hack_terminal_left", "HACK_LEFT", "Combat", "Medium");
	skipto::function_955393e("destroy_defenses_mid", "DESTROY REMAINING AA DEFENSES", "Combat", "Large");
	skipto::function_955393e("hack_terminal_right", "HACK_RIGHT", "Combat", "Medium");
	skipto::function_955393e("water_room", "CONFRONT HYPERION", "Pacing", "Small");
	skipto::function_955393e("water_room_exit", "WATER ROOM EXIT", "Pacing", "Small");
	skipto::function_955393e("post_water_room_dogfight", "DOGFIGHT", "Aerial Combat", "Large");
	skipto::function_955393e("destroy_defenses2", "SUPPORT EGYPTIANS", "Combat", "Medium");
	skipto::function_955393e("hack_terminals3", "ON HYPERION'S TRAIL", "Pacing", "Large");
	skipto::function_955393e("breach_hangar", "BREACH", "Moment", "Small");
	skipto::function_955393e("post_breach", "CHASE", "Combat", "Size");
	skipto::function_955393e("sniper_boss", "BOSS", "Battle", "Medium");
	skipto::function_955393e("hideout", "HIDEOUT", "Story", "Medium");
	skipto::function_955393e("exfil", "EXFIL", "Run", "High");
}

/*
	Name: Precache
	Namespace: namespace_19487f32
	Checksum: 0x8E1550A0
	Offset: 0x1F88
	Size: 0x47B
	Parameters: 0
	Flags: None
*/
function Precache()
{
	level flag::init("boss_finale_ready");
	level flag::init("minions_clear");
	level flag::init("start_aquifer_objectives");
	level flag::init("breach_hangar_active");
	level flag::init("hold_for_debug_splash");
	level flag::init("on_hangar_exterior");
	level flag::init("player_active_in_level");
	level flag::init("water_room_checkpoint");
	level flag::init("can_spawn_hunters");
	level flag::init("hack_terminals2_vtol_flyin");
	level flag::init("lcombat_missile_launch");
	level flag::init("lcombat_flyby_shake");
	level flag::init("lcombat_crash_event");
	level flag::init("amb_flyby_jet_crash");
	level flag::init("lcombat_quad_missile_launch");
	level flag::init("lcombat_flyby_shake_2");
	level flag::init("trans_attack_start");
	level flag::init("siegebot_overrun_trig");
	level flag::init("lcombat_player_landed");
	level flag::init("disable_player_exit_vtol");
	level flag::init("disable_player_enter_vtol");
	level flag::init("background_chatter_active");
	level flag::init("enable_vtol_landing_zones");
	level flag::init("finished_first_landing_vo");
	level flag::init("flag_egyptian_hacking_completed");
	if(!level flag::exists("destroy_defenses3_completed"))
	{
		level flag::init("destroy_defenses3_completed");
		level flag::init("destroy_defenses3_started");
		level flag::init("destroy_defenses3");
		level flag::init("hack_terminals3_started");
		level flag::init("hack_terminals3");
		level flag::init("hack_terminals3_completed");
	}
	level.var_79481939 = 0;
	level.var_3fe6078c = 4096;
	level.var_f00df7e8 = 1;
	thread namespace_786319bb::function_a643bffd();
	thread namespace_786319bb::function_a97555a0("enemy_vtol_riders", "zone3_vtol_dropoff");
	thread vehicle_ai::register_custom_add_state_callback(&function_8f9628e0);
}

/*
	Name: function_c2c4ea75
	Namespace: namespace_19487f32
	Checksum: 0x302122FB
	Offset: 0x2410
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_c2c4ea75()
{
	while(1)
	{
		level waittill("save_restore");
		foreach(player in level.players)
		{
			player clearplayergravity();
		}
	}
}

/*
	Name: on_finalize_initialization
	Namespace: namespace_19487f32
	Checksum: 0xA7BC405C
	Offset: 0x24C0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function on_finalize_initialization()
{
	namespace_786319bb::function_11a9191();
}

/*
	Name: function_8f9628e0
	Namespace: namespace_19487f32
	Checksum: 0x3AF90646
	Offset: 0x24E0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_8f9628e0()
{
	if(isdefined(self.variant) && self.variant == "rocketpod")
	{
		self.allow_movement = 0;
		self vehicle_ai::get_state_callbacks("combat").update_func = &namespace_786319bb::function_11b961b7;
	}
}

/*
	Name: function_8feafce2
	Namespace: namespace_19487f32
	Checksum: 0x2DF0040B
	Offset: 0x2548
	Size: 0x3D3
	Parameters: 0
	Flags: None
*/
function function_8feafce2()
{
	self endon("disconnect");
	self.player_num = self GetEntityNumber() + 1;
	level flag::wait_till("start_coop_logic");
	self flagsys::wait_till("loadout_given");
	thread namespace_786319bb::function_c2768198();
	if(level flag::exists("level_long_fly_in") && level flag::get("level_long_fly_in") || (level flag::exists("intro_dogfight") && level flag::get("intro_dogfight")) && !level flag::get("intro_dogfight_completed"))
	{
		var_5d686f5c = 1;
		if(level flag::exists("intro_dogfight") && level flag::get("intro_dogfight"))
		{
			var_5d686f5c = 0;
		}
		self thread namespace_84eb777e::function_ef5a929e(var_5d686f5c);
	}
	else if(level flag::exists("post_water_room_dogfight") && level flag::get("post_water_room_dogfight") && !level flag::get("post_water_room_dogfight_completed"))
	{
		self thread namespace_84eb777e::function_1b47ae1f(1);
	}
	else if(level flag::exists("water_room_exit") && level flag::get("water_room_exit") && !level flag::get("water_room_exit_completed"))
	{
	}
	else
	{
	}
	if(level flag::exists("hack_terminals3") && !level flag::get("hack_terminals3_completed"))
	{
		if(level flag::exists("hack_terminal_right") && !level flag::get("hack_terminal_right_completed"))
		{
			self thread namespace_786319bb::function_3d7bb92e(1);
		}
		else if(level flag::exists("water_room") && !level flag::get("water_room_completed"))
		{
			self thread namespace_786319bb::function_a0567298(1);
		}
		else
		{
			self thread namespace_786319bb::function_91acd8c6(1);
		}
	}
}

/*
	Name: function_47c53384
	Namespace: namespace_19487f32
	Checksum: 0x3FFCD030
	Offset: 0x2928
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_47c53384()
{
	self clientfield::set_to_player("player_dust_fx", 0);
	self clientfield::set_to_player("player_snow_fx", 0);
	self clientfield::set_to_player("water_motes", 0);
}

/*
	Name: on_player_disconnected
	Namespace: namespace_19487f32
	Checksum: 0x3BD3A9F2
	Offset: 0x2998
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function on_player_disconnected()
{
	if(isdefined(self.var_8fedf36c))
	{
		self.var_8fedf36c delete();
	}
}

/*
	Name: on_player_spawned
	Namespace: namespace_19487f32
	Checksum: 0xBF1DE6BD
	Offset: 0x29D0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self clearplayergravity();
	if(self namespace_786319bb::function_c43fe5d3())
	{
		if(isdefined(level.var_4063f562) && (level.var_4063f562 == "scripted" || level.var_4063f562 == "piloted"))
		{
			self namespace_786319bb::function_22a0413d(level.var_4063f562);
		}
		else
		{
			self namespace_786319bb::function_22a0413d();
		}
	}
	self.var_b9a81bed = self OpenLUIMenu("HackUploadHUD");
	self thread namespace_786319bb::function_913d882();
	self thread namespace_786319bb::function_a05f9e55();
	self thread namespace_786319bb::function_3de8b7b4();
}

/*
	Name: function_974050f
	Namespace: namespace_19487f32
	Checksum: 0x1A72048C
	Offset: 0x2AF0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_974050f()
{
	self endon("disconnect");
	self endon("death");
	self.var_5bf5e8eb = "none";
	level flag::set("player_active_in_level");
	self notify("hash_a4d83d61");
	if(level.activePlayers.size == level.players.size)
	{
		level flagsys::set("all_players_active");
	}
}

/*
	Name: on_player_death
	Namespace: namespace_19487f32
	Checksum: 0xCCE9D08B
	Offset: 0x2B88
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function on_player_death()
{
	function_47c53384();
	self UndoLastStand();
}

/*
	Name: function_48694c4a
	Namespace: namespace_19487f32
	Checksum: 0x99EC1590
	Offset: 0x2BC0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_48694c4a()
{
}

/*
	Name: function_f141f41c
	Namespace: namespace_19487f32
	Checksum: 0x49F5B632
	Offset: 0x2BD0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_f141f41c()
{
	if(isdefined(self.properName))
	{
		self.properName = "";
	}
}

/*
	Name: function_6d9a8286
	Namespace: namespace_19487f32
	Checksum: 0x6ABF9F10
	Offset: 0x2BF8
	Size: 0x14B
	Parameters: 11
	Flags: None
*/
function function_6d9a8286(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, boneIndex)
{
	if(isdefined(self.var_cb4b9447) && self.var_cb4b9447 > GetTime())
	{
		return;
	}
	if(weapon.name == "vtol_fighter_player_missile_turret" || weapon.name == "vtol_fighter_player_turret")
	{
		ss = "frag_grenade_mp";
		var_76126537 = 2;
		if(iDamage > 200)
		{
			ss = "proximity_grenade";
			var_76126537 = 3;
		}
		self.var_cb4b9447 = GetTime() + var_76126537 * 499;
		self shellshock(ss, var_76126537);
		self PlayRumbleOnEntity("damage_heavy");
	}
}


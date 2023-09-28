#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_root_cinematics;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_hq;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\music_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_34c3982c;

/*
	Name: function_8c381165
	Namespace: namespace_34c3982c
	Checksum: 0xF0DCF114
	Offset: 0xDE0
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_8c381165(str_objective, var_74cd64bc)
{
	load::function_73adcefc();
	load::function_a2995f22();
	skipto::teleport_players(str_objective, 0);
	if(!(isdefined(level.var_a2c60984) && level.var_a2c60984))
	{
		level function_4fa5eed();
	}
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_7c294f88
	Namespace: namespace_34c3982c
	Checksum: 0x3135CC99
	Offset: 0xE78
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_7c294f88(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_4fa5eed
	Namespace: namespace_34c3982c
	Checksum: 0xF7C02A42
	Offset: 0xEA8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_4fa5eed()
{
	util::screen_fade_out(0);
	Array::thread_all(level.players, &function_73b35f7b, 1);
	wait(1);
	level thread function_4163ce88();
	if(isdefined(level.BZM_ZURICHDialogue21Callback))
	{
		level thread [[level.BZM_ZURICHDialogue21Callback]]();
	}
	namespace_bbb4ee72::function_c7ab7e12("cp_zurich_fs_flyaway");
	level util::screen_fade_out(0, "white");
	Array::thread_all(level.players, &function_ba91aecf);
}

/*
	Name: function_4163ce88
	Namespace: namespace_34c3982c
	Checksum: 0xA32C9E52
	Offset: 0xF98
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_4163ce88()
{
	level endon("movie_done");
	wait(0.2);
	level dialog::remote("tcor_it_s_all_wrong_0", 1, "NO_DNI");
	level dialog::remote("tcor_it_was_supposed_to_m_0", 1, "NO_DNI");
	level dialog::remote("tcor_there_s_so_much_nois_0", 1, "NO_DNI");
	level dialog::remote("tcor_i_don_t_even_know_yo_0", 1, "NO_DNI");
	level dialog::remote("tcor_who_are_you_0", 1, "NO_DNI");
}

/*
	Name: function_618d5a98
	Namespace: namespace_34c3982c
	Checksum: 0xECE0228
	Offset: 0x10A8
	Size: 0x1DB
	Parameters: 2
	Flags: None
*/
function function_618d5a98(str_objective, var_74cd64bc)
{
	level flag::wait_till("all_players_spawned");
	util::function_d8eaed3d(9);
	util::screen_fade_out(0, "white");
	scene::add_scene_func("cin_zur_20_01_plaza_1st_fight_it_player_end", &function_c5c8c18b, "play");
	scene::add_scene_func("cin_zur_20_01_plaza_1st_fight_it", &function_feb59ad0, "init");
	level scene::init("cin_zur_20_01_plaza_1st_fight_it");
	level scene::init("cin_zur_20_01_plaza_1st_fight_it_player_end");
	level scene::init("cin_zur_20_01_plaza_1st_fight_it_player_start");
	level thread namespace_8e9083ff::function_b0f0dd1f(0);
	level thread namespace_8e9083ff::function_4d032f25(0);
	Array::thread_all(level.players, &function_354b619b, 1);
	level clientfield::set("gameplay_started", 1);
	level function_2e5f51e9();
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_d9ccb9e3
	Namespace: namespace_34c3982c
	Checksum: 0xE408C32E
	Offset: 0x1290
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_d9ccb9e3(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_313f113
	Namespace: namespace_34c3982c
	Checksum: 0x92AF599C
	Offset: 0x12C0
	Size: 0x2DB
	Parameters: 2
	Flags: None
*/
function function_313f113(str_objective, var_74cd64bc)
{
	level flag::wait_till("all_players_spawned");
	level flag::init("atrium_hack_objective_start");
	if(var_74cd64bc)
	{
		util::screen_fade_out(0, "black");
		Array::thread_all(level.players, &function_354b619b, 0);
		level thread namespace_8e9083ff::function_4d032f25(0);
		skipto::teleport_players(str_objective, 0);
		wait(2);
		level thread util::screen_fade_in(2, "black");
		level thread function_81b8760e();
	}
	SetDvar("r_skyRotation", 244);
	if(isdefined(level.BZM_ZURICHDialogue23Callback))
	{
		level thread [[level.BZM_ZURICHDialogue23Callback]]();
	}
	level scene::init("p7_fxanim_cp_zurich_coalescence_tower_door_exit_bundle");
	level thread function_51e389ee();
	function_bab1ff00("hq_exit_umbra_gate", 1);
	function_bab1ff00("hq_atrium_umbra_gate", 1);
	level thread namespace_8e9083ff::function_11b424e5(1);
	Array::thread_all(level.players, &larry_the_limper);
	level flag::set("flag_enable_zurich_ending");
	level thread function_5cd9d899();
	level thread function_b56fbb21();
	if(SessionModeIsCampaignZombiesGame())
	{
		level thread function_3ec4c691();
	}
	else
	{
		level thread function_1cc6775d();
	}
	level thread function_4590fc90();
	level thread function_2381bb7();
	level thread namespace_8e9083ff::function_df1fc23b(0);
}

/*
	Name: function_f2f0f1ec
	Namespace: namespace_34c3982c
	Checksum: 0xF5C3EE31
	Offset: 0x15A8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_f2f0f1ec(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_51e389ee
	Namespace: namespace_34c3982c
	Checksum: 0xB46CE9D7
	Offset: 0x15D8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_51e389ee()
{
	s_start = struct::get("outro_stairs_door_breadcrumb");
	objectives::set("cp_waypoint_breadcrumb", s_start);
	level flag::wait_till("flag_open_atrium_exit_door");
	objectives::complete("cp_waypoint_breadcrumb");
	s_end = struct::get("outro_lobby_door_struct_trig");
	objectives::set("cp_waypoint_breadcrumb", s_end);
	namespace_8e9083ff::function_1b3dfa61("outro_lobby_door_struct_trig", undefined, 256);
	objectives::complete("cp_waypoint_breadcrumb");
	wait(0.05);
	level flag::set("atrium_hack_objective_start");
}

/*
	Name: function_5cd9d899
	Namespace: namespace_34c3982c
	Checksum: 0xA1A1BA08
	Offset: 0x1700
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_5cd9d899()
{
	level endon("hash_72be7304");
	level thread function_c0ced31c();
	level flag::wait_till("flag_taylor_outro_vo_01");
	level dialog::remote("tayr_listen_only_to_the_s_0", 1, "NO_DNI");
	level dialog::remote("tayr_let_your_mind_relax_0", 1, "NO_DNI");
	level flag::wait_till("flag_taylor_outro_vo_02");
	level dialog::remote("tayr_let_your_thoughts_dr_0", 1, "NO_DNI");
	level dialog::remote("tayr_let_the_bad_memories_0", 1, "NO_DNI");
	level flag::wait_till("flag_taylor_outro_vo_03");
	level dialog::remote("tayr_let_peace_be_upon_yo_0", 1, "NO_DNI");
	level dialog::remote("tayr_you_are_in_control_0", 1, "NO_DNI");
}

/*
	Name: function_c0ced31c
	Namespace: namespace_34c3982c
	Checksum: 0xA5D5588D
	Offset: 0x18B0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c0ced31c()
{
	level endon("hash_72be7304");
	namespace_8e9083ff::function_1b3dfa61("hq_outro_vo_03_struct_trig", undefined, 256);
	level flag::set("flag_taylor_outro_vo_03");
}

/*
	Name: function_354b619b
	Namespace: namespace_34c3982c
	Checksum: 0x9EAD3384
	Offset: 0x1908
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_354b619b(var_495fe8ae)
{
	self endon("disconnect");
	var_a651b292 = GetWeapon("pistol_standard");
	self TakeAllWeapons();
	self GiveWeapon(var_a651b292);
	self SwitchToWeaponImmediate(var_a651b292);
	if(var_495fe8ae)
	{
		level waittill("hash_d0254e87");
	}
	self SetWeaponAmmoClip(var_a651b292, 5);
	self SetWeaponAmmoStock(var_a651b292, 0);
}

/*
	Name: function_2e5f51e9
	Namespace: namespace_34c3982c
	Checksum: 0x739AA0DC
	Offset: 0x19D8
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_2e5f51e9()
{
	scene::add_scene_func("cin_zur_20_01_plaza_1st_fight_it", &namespace_8e9083ff::function_f3e247d6, "play");
	scene::add_scene_func("cin_zur_20_01_plaza_1st_fight_it_player_start", &function_8cd36a50, "play");
	level thread function_6b79134a();
	level thread function_e2a2e56e();
	level thread function_cbc763a7();
	level thread function_f0e5d1d();
	level thread util::screen_fade_in(2, "white");
	if(!SessionModeIsCampaignZombiesGame())
	{
		Array::thread_all(level.players, &clientfield::increment_to_player, "postfx_futz");
	}
	level thread scene::Play("cin_zur_20_01_plaza_1st_fight_it");
	if(isdefined(level.BZM_HideAllMagicBoxesCallback))
	{
		level thread [[level.BZM_HideAllMagicBoxesCallback]]();
	}
	if(isdefined(level.BZM_ZURICHDialogue22Callback))
	{
		level thread [[level.BZM_ZURICHDialogue22Callback]]();
	}
	level thread namespace_67110270::function_b01ef29c();
	level scene::Play("cin_zur_20_01_plaza_1st_fight_it_player_start");
	var_a3612ddd = 0;
	foreach(player in level.players)
	{
		var_a3612ddd++;
		player thread function_4f4dfd03(var_a3612ddd);
	}
	level waittill("hash_ce40edcd");
	level scene::Play("cin_zur_20_01_plaza_1st_fight_it_player_end");
	level util::function_93831e79("server_interior");
	util::clear_streamer_hint();
}

/*
	Name: function_6b79134a
	Namespace: namespace_34c3982c
	Checksum: 0xE56ED5E2
	Offset: 0x1C90
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6b79134a()
{
	level waittill("hash_e160de52");
	exploder::exploder("serverrm_corvuscorelight");
	level waittill("hash_3d45f38a");
	exploder::stop_exploder("serverrm_corvuscorelight");
}

/*
	Name: function_feb59ad0
	Namespace: namespace_34c3982c
	Checksum: 0x704E90A2
	Offset: 0x1CF0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_feb59ad0(a_ents)
{
	e_light = GetEnt("corvusGut", "targetname");
	var_f4a14f07 = a_ents["corvus"];
	v_angles = var_f4a14f07 GetTagAngles("j_spine4");
	v_angles = v_angles + VectorScale((1, 0, 0), 90);
	v_origin = VectorScale((0, -1, 0), 10);
	if(isdefined(var_f4a14f07))
	{
		e_light LinkTo(var_f4a14f07, "j_spine4", v_origin, v_angles);
	}
}

/*
	Name: function_8cd36a50
	Namespace: namespace_34c3982c
	Checksum: 0x89A40350
	Offset: 0x1DD8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_8cd36a50(a_ents)
{
	e_player = a_ents["player 1"];
	wait(1);
	if(isdefined(e_player))
	{
		e_player cybercom::function_f8669cbf(1);
		e_player PlayRumbleOnEntity("damage_heavy");
	}
}

/*
	Name: function_c5c8c18b
	Namespace: namespace_34c3982c
	Checksum: 0x7D8AFFC6
	Offset: 0x1E58
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_c5c8c18b(a_ents)
{
	e_player = a_ents["player 1"];
	level waittill("hash_e3f86dc");
	if(isdefined(e_player))
	{
		e_player cybercom::function_f8669cbf(1);
		e_player PlayRumbleOnEntity("cp_infection_hideout_stretch");
	}
}

/*
	Name: function_a3652dec
	Namespace: namespace_34c3982c
	Checksum: 0xD0266281
	Offset: 0x1EE0
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_a3652dec()
{
	level notify("hash_e69e5818");
}

/*
	Name: function_e2a2e56e
	Namespace: namespace_34c3982c
	Checksum: 0x1B743F28
	Offset: 0x1F00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e2a2e56e()
{
	level scene::init("p7_fxanim_cp_zurich_server_room_debris_bundle");
	level waittill("hash_2a9df746");
	level scene::Play("p7_fxanim_cp_zurich_server_room_debris_bundle");
}

/*
	Name: function_f0e5d1d
	Namespace: namespace_34c3982c
	Checksum: 0xB05657DB
	Offset: 0x1F58
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f0e5d1d()
{
	function_9e3608e3("server_interior_dead_bodies");
	level waittill("dead_bodies");
	function_6ddd4fa4("server_interior_dead_bodies");
}

/*
	Name: function_cbc763a7
	Namespace: namespace_34c3982c
	Checksum: 0xF2C66AF3
	Offset: 0x1FA8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_cbc763a7()
{
	var_ddc9cb80 = GetEnt("server_interior_igc_wiping_screen", "targetname");
	var_cb8cc4ef = GetEnt("server_interior_igc_wiped_screen", "targetname");
	var_cb8cc4ef Hide();
	level waittill("hash_fefb8213");
	var_cb8cc4ef show();
	var_ddc9cb80 Hide();
	level thread function_81b8760e();
}

/*
	Name: function_4f4dfd03
	Namespace: namespace_34c3982c
	Checksum: 0xC31BC267
	Offset: 0x2078
	Size: 0x1B9
	Parameters: 1
	Flags: None
*/
function function_4f4dfd03(var_a3612ddd)
{
	self SetInvisibleToAll();
	level notify("hash_2a9df746");
	level notify("hash_d0254e87");
	self FreezeControls(1);
	wait(0.15);
	str_origin = struct::get("outro_server_scene_struct_0" + var_a3612ddd);
	var_ad470f8c = util::spawn_model("tag_origin", str_origin.origin, str_origin.angles);
	self PlayerLinkToDelta(var_ad470f8c, "tag_origin", 1, 20, 20, 15, 60);
	self util::magic_bullet_shield();
	self FreezeControls(0);
	self thread function_e611368a();
	level waittill("hash_e0529ad4");
	self util::stop_magic_bullet_shield();
	self Unlink();
	var_ad470f8c delete();
	self SetVisibleToAll();
	level notify("hash_ce40edcd");
}

/*
	Name: function_b56fbb21
	Namespace: namespace_34c3982c
	Checksum: 0xB7EA1415
	Offset: 0x2240
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_b56fbb21()
{
	level flag::wait_till("flag_open_atrium_exit_door");
	var_38f39d05 = GetEntArray("hq_lobby_exit_clip", "targetname");
	Array::run_all(var_38f39d05, &MoveZ, 100, 1.5);
	Array::run_all(var_38f39d05, &playsound, "evt_outro_atrium_door");
	level thread function_36745581();
}

/*
	Name: function_36745581
	Namespace: namespace_34c3982c
	Checksum: 0x1CACA02A
	Offset: 0x2308
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_36745581()
{
	var_2c578566 = spawn("script_origin", (-7389, 36096, 138));
	if(SessionModeIsCampaignZombiesGame())
	{
		var_2c578566 PlayLoopSound("evt_bonuszm_zombies_dist", 1);
	}
	else
	{
		var_2c578566 PlayLoopSound("evt_outro_vtol_dist", 1);
	}
	level waittill("hash_8271ee50");
	var_2c578566 StopLoopSound(7);
}

/*
	Name: function_81b8760e
	Namespace: namespace_34c3982c
	Checksum: 0xA487A530
	Offset: 0x23D0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_81b8760e()
{
	Array::run_all(level.players, &setClientUIVisibilityFlag, "weapon_hud_visible", 0);
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level util::clientNotify("sndPA");
	Array::thread_all(level.players, &function_51e85b80);
	level thread function_546b8cde(1);
}

/*
	Name: function_e611368a
	Namespace: namespace_34c3982c
	Checksum: 0xC9E5D8F5
	Offset: 0x2480
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_e611368a()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self endon("disconnect");
	level endon("hash_e0529ad4");
	while(1)
	{
		self PlayRumbleOnEntity("damage_light");
		Earthquake(0.3, 0.5, self.origin, 128);
		wait(0.25);
	}
}

/*
	Name: function_51e85b80
	Namespace: namespace_34c3982c
	Checksum: 0x1478D488
	Offset: 0x2518
	Size: 0x423
	Parameters: 0
	Flags: None
*/
function function_51e85b80()
{
	self endon("disconnect");
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self thread function_d06b32b2();
	self.var_322cc58c = self OpenLUIMenu("DniWipe");
	self SetLUIMenuData(self.var_322cc58c, "frac", 0);
	self SetLUIMenuData(self.var_322cc58c, "Die", 0);
	self SetLUIMenuData(self.var_322cc58c, "percentage", 0);
	self SetLUIMenuData(self.var_322cc58c, "percentageVisible", 0);
	wait(1);
	self SetLUIMenuData(self.var_322cc58c, "duration", 10000);
	self SetLUIMenuData(self.var_322cc58c, "frac", 0);
	self SetLUIMenuData(self.var_322cc58c, "percentageVisible", 1);
	wait(1);
	self SetLUIMenuData(self.var_322cc58c, "frac", 0.2);
	self thread function_865309a9(20);
	wait(10);
	level flag::wait_till("flag_fill_purging_bar_40");
	self SetLUIMenuData(self.var_322cc58c, "frac", 0.4);
	self thread function_865309a9(40);
	wait(10);
	level flag::wait_till("flag_fill_purging_bar_60");
	self SetLUIMenuData(self.var_322cc58c, "frac", 0.6);
	self thread function_865309a9(60);
	wait(10);
	level flag::wait_till("flag_fill_purging_bar_80");
	self SetLUIMenuData(self.var_322cc58c, "frac", 0.8);
	self thread function_865309a9(80);
	wait(10);
	level waittill("hash_2e3e5b0a");
	self SetLUIMenuData(self.var_322cc58c, "frac", 1);
	self thread function_865309a9(100);
	wait(10);
	self SetLUIMenuData(self.var_322cc58c, "frac", 1);
	self SetLUIMenuData(self.var_322cc58c, "percentageVisible", 0);
	wait(0.1);
	self SetLUIMenuData(self.var_322cc58c, "Die", 1);
	wait(3);
	self CloseLUIMenu(self.var_322cc58c);
}

/*
	Name: function_865309a9
	Namespace: namespace_34c3982c
	Checksum: 0xA78E2AB4
	Offset: 0x2948
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_865309a9(var_ea6d6bd2)
{
	for(i = var_ea6d6bd2 - 20; i < var_ea6d6bd2 + 1; i++)
	{
		self SetLUIMenuData(self.var_322cc58c, "percentage", i / 100);
		wait(0.5);
	}
}

/*
	Name: function_d06b32b2
	Namespace: namespace_34c3982c
	Checksum: 0x5D877B92
	Offset: 0x29C8
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_d06b32b2()
{
	trigger::wait_till("trig_hud_update_01", "targetname", self);
	level flag::set("flag_taylor_outro_vo_01");
	level flag::set("flag_fill_purging_bar_40");
	trigger::wait_till("trig_hud_update_02", "targetname", self);
	level flag::set("flag_taylor_outro_vo_02");
	level flag::set("flag_fill_purging_bar_60");
	trigger::wait_till("trig_hud_update_03", "targetname", self);
	level flag::set("flag_fill_purging_bar_80");
}

/*
	Name: function_546b8cde
	Namespace: namespace_34c3982c
	Checksum: 0x8316291
	Offset: 0x2AD8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_546b8cde(is_on)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	if(isdefined(is_on) && is_on)
	{
		level thread namespace_8e9083ff::function_5f63b2f1(1);
	}
	else
	{
		level thread namespace_8e9083ff::function_5f63b2f1(0);
	}
}

/*
	Name: function_1cc6775d
	Namespace: namespace_34c3982c
	Checksum: 0x9CE0372A
	Offset: 0x2B48
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_1cc6775d()
{
	scene::add_scene_func("cin_zur_20_01_plaza_1st_commander", &function_95ed5d29, "play");
	scene::add_scene_func("cin_zur_20_01_plaza_1st_commander", &function_a947c3b3, "done");
	level flag::wait_till("atrium_hack_objective_start");
	level thread function_80c5347c();
	level thread function_f568befc();
	spawner::add_global_spawn_function("allies", &util::function_65ba133d);
	var_5cca3f31 = GetEnt("trig_enable_zuirch_ending", "targetname");
	e_who = var_5cca3f31 namespace_8e9083ff::function_d1996775();
	level thread namespace_8e9083ff::function_df1fc23b(1);
	level notify("hash_21ddc441");
	level namespace_8e9083ff::function_b0f0dd1f(1, "reverse_snow");
	level flag::set("flag_start_zurich_outro");
	level notify("hash_8271ee50");
	music::setmusicstate("none");
	level util::clientNotify("sndPA");
	level thread audio::unlockFrontendMusic("mus_coalescence_theme_intro");
	level thread audio::unlockFrontendMusic("mus_through_the_trees_intro");
	level thread audio::unlockFrontendMusic("mus_i_live_orchestral_intro");
	level thread audio::unlockFrontendMusic("mus_unstoppable_intro");
	level clientfield::set("gameplay_started", 0);
	level thread scene::Play("cin_zur_20_01_plaza_1st_commander", e_who);
}

/*
	Name: function_95ed5d29
	Namespace: namespace_34c3982c
	Checksum: 0x11B5D634
	Offset: 0x2DF0
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_95ed5d29(a_ents)
{
	level endon("hash_d71a6b5a");
	level notify("hash_2e3e5b0a");
	level thread function_546b8cde(0);
	level thread namespace_8e9083ff::function_d0e3bb4(1);
	var_ccbdc630 = GetEnt("coalescence_gate", "targetname");
	level scene::Play("p7_fxanim_cp_zurich_coalescence_tower_door_exit_bundle");
	var_ccbdc630 notsolid();
	function_bab1ff00("hq_atrium_umbra_gate", 1);
}

/*
	Name: function_a947c3b3
	Namespace: namespace_34c3982c
	Checksum: 0x9D11DA39
	Offset: 0x2ED0
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_a947c3b3(a_ents)
{
	scene::waittill_skip_sequence_completed();
	level util::screen_message_delete();
	util::screen_fade_out(0);
	level clientfield::set("sndIGCsnapshot", 5);
	music::setmusicstate("i_live_credits");
	playsoundatposition("evt_bonuszm_ending_toblack", (0, 0, 0));
	level thread namespace_8e9083ff::function_d0e3bb4(0);
	if(isdefined(self.var_322cc58c))
	{
		self CloseLUIMenu(self.var_322cc58c);
	}
	wait(2);
	objectives::complete("cp_level_zurich_end_obj");
	trigger::use("trig_zurich_end", "targetname");
	skipto::function_be8adfb8("zurich_outro");
}

/*
	Name: function_2381bb7
	Namespace: namespace_34c3982c
	Checksum: 0x5F1D7B49
	Offset: 0x3018
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_2381bb7()
{
	level clientfield::set("set_post_color_grade_bank", 1);
	Array::thread_all(level.players, &namespace_8e9083ff::function_3e4d643b, 1);
	exploder::exploder("plaza_lights");
}

/*
	Name: function_4590fc90
	Namespace: namespace_34c3982c
	Checksum: 0x793E4F94
	Offset: 0x3090
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_4590fc90()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level namespace_8e9083ff::function_33ec653f("zurich_outro_dead_robot_node_spawn_manager", undefined, 0.25, &function_710df260);
	level namespace_8e9083ff::function_33ec653f("zurich_outro_solider_idle_struct_spawn_manager", undefined, 0.25, &function_29d8cf02);
	spawner::simple_spawn_single("plaza_battle_boss", &function_536749f9);
	level waittill("hash_21ddc441");
	level thread scene::Play("outro_ambient_execution", "targetname");
	for(i = 1; i < 5; i++)
	{
		level thread namespace_8e9083ff::function_33ec653f("zurich_outro_solider_patrol_struct_spawn_manager_0" + i, undefined, 0.15, &function_83b161ee, "zurich_outro_solider_patrol_struct_spawner_0" + i);
	}
	level thread namespace_8e9083ff::function_33ec653f("zurich_outro_solider_patrol", undefined, undefined, &function_9f8eef7b);
}

/*
	Name: function_536749f9
	Namespace: namespace_34c3982c
	Checksum: 0xC3DD1E84
	Offset: 0x3210
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_536749f9()
{
	var_dbb2d033 = GetNode("zurich_outro_quadtank_death", "targetname");
	self.origin = var_dbb2d033.origin;
	self.angles = var_dbb2d033.angles;
	self DoDamage(self.health, self.origin);
}

/*
	Name: function_710df260
	Namespace: namespace_34c3982c
	Checksum: 0x3A359F93
	Offset: 0x32A0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_710df260()
{
	self DoDamage(self.health, self.origin);
}

/*
	Name: function_29d8cf02
	Namespace: namespace_34c3982c
	Checksum: 0x6ACDCC28
	Offset: 0x32D8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_29d8cf02()
{
	util::wait_network_frame();
	self scene::Play("sb_t7_c_nrc_assault_idle", self);
}

/*
	Name: function_83b161ee
	Namespace: namespace_34c3982c
	Checksum: 0xF768FC38
	Offset: 0x3318
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_83b161ee(nd_goal)
{
	self ai::set_ignoreall(1);
	wait(RandomFloatRange(0.15, 0.5));
	self ClearForcedGoal();
	self ai::patrol(GetNode(nd_goal, "targetname"));
	self waittill("goal");
	self scene::Play("sb_t7_c_nrc_assault_idle", self);
}

/*
	Name: function_9f8eef7b
	Namespace: namespace_34c3982c
	Checksum: 0x4D6F5B86
	Offset: 0x33D8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_9f8eef7b()
{
	self ai::set_behavior_attribute("patrol", 1);
}

/*
	Name: function_80c5347c
	Namespace: namespace_34c3982c
	Checksum: 0xB12AEB21
	Offset: 0x3408
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_80c5347c()
{
	var_f201bfb1 = struct::get_array("outro_ambients", "targetname");
	if(!var_f201bfb1.size)
	{
		return;
	}
	level thread scene::Play("outro_ambients", "targetname");
}

/*
	Name: function_f568befc
	Namespace: namespace_34c3982c
	Checksum: 0x19EB8DBD
	Offset: 0x3478
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_f568befc()
{
	level scene::init("p7_fxanim_cp_zurich_vtol_landing_end_bundle");
	var_c5ac3179 = struct::get_array("s_outro_air_vtol", "targetname");
	Array::thread_all(var_c5ac3179, &function_e26a2c57);
	level flag::wait_till("flag_start_zurich_outro");
	level scene::Play("p7_fxanim_cp_zurich_vtol_landing_end_bundle");
}

/*
	Name: function_e26a2c57
	Namespace: namespace_34c3982c
	Checksum: 0x15645FA9
	Offset: 0x3538
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_e26a2c57()
{
	level._effect["vtol_exhaust"] = "vehicle/fx_vtol_mil_egypt_thruster_side";
	var_2ec6deda = util::spawn_model("veh_t7_mil_vtol_egypt", self.origin, self.angles);
	var_2ec6deda.var_60c8714b = [];
	var_2ec6deda.var_fdcf75a9 = self;
	var_2ec6deda.n_speed = 900;
	PlayFXOnTag(level._effect["vtol_exhaust"], var_2ec6deda, "tag_fx_engine_left");
	PlayFXOnTag(level._effect["vtol_exhaust"], var_2ec6deda, "tag_fx_engine_right");
	var_2ec6deda thread function_ffeb5fe9();
}

/*
	Name: function_ffeb5fe9
	Namespace: namespace_34c3982c
	Checksum: 0x2243EDA3
	Offset: 0x3640
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_ffeb5fe9()
{
	s_start = self.var_fdcf75a9;
	s_next = struct::get(s_start.target, "targetname");
	level flag::wait_till("flag_start_zurich_outro");
	n_distance = Distance(s_start.origin, s_next.origin);
	n_time = n_distance / self.n_speed;
	self moveto(s_next.origin, n_time);
	self RotateTo(s_next.angles, n_time);
	self waittill("movedone");
	if(self.model === "veh_t7_mil_vtol_egypt")
	{
		self thread function_61438a39();
		level waittill("hash_d71a6b5a");
	}
	self delete();
}

/*
	Name: function_61438a39
	Namespace: namespace_34c3982c
	Checksum: 0xAA75216B
	Offset: 0x37A8
	Size: 0x145
	Parameters: 0
	Flags: None
*/
function function_61438a39()
{
	level endon("hash_d71a6b5a");
	var_8d7eab33 = self.angles;
	n_start_pos = self.origin;
	while(1)
	{
		var_200a7636 = RandomFloatRange(-10, 10);
		var_cebf203c = RandomFloatRange(-8, 8);
		n_time = RandomFloatRange(0.2, 0.5);
		self MoveZ(var_200a7636, n_time);
		self RotateRoll(var_cebf203c, n_time);
		wait(n_time);
		self moveto(n_start_pos, n_time);
		self RotateTo(var_8d7eab33, n_time);
		wait(n_time);
	}
}

/*
	Name: function_73b35f7b
	Namespace: namespace_34c3982c
	Checksum: 0x3DBA23F1
	Offset: 0x38F8
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_73b35f7b(var_5319224a)
{
	self util::freeze_player_controls(1);
	self DisableWeapons();
	self EnableInvulnerability();
	self util::show_hud(0);
	self setClientUIVisibilityFlag("weapon_hud_visible", 0);
	if(isdefined(var_5319224a) && var_5319224a)
	{
		self.var_b35375be = util::spawn_model("tag_origin", self.origin, self.angles);
		self playerLinkTo(self.var_b35375be);
	}
}

/*
	Name: function_ba91aecf
	Namespace: namespace_34c3982c
	Checksum: 0xF5667C9B
	Offset: 0x39F0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_ba91aecf()
{
	self util::freeze_player_controls(0);
	self enableWeapons();
	self DisableInvulnerability();
	self util::show_hud(1);
	self setClientUIVisibilityFlag("weapon_hud_visible", 1);
	if(isdefined(self.var_b35375be))
	{
		self Unlink();
		self.var_b35375be delete();
	}
}

/*
	Name: larry_the_limper
	Namespace: namespace_34c3982c
	Checksum: 0x1C9FB087
	Offset: 0x3AB8
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function larry_the_limper()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self endon("disconnect");
	self endon("death");
	self.var_ea4a62a = util::spawn_model("tag_origin");
	self playerSetGroundReferenceEnt(self.var_ea4a62a);
	self setMoveSpeedScale(0.85);
	var_d0f99889 = [];
	if(!isdefined(var_d0f99889))
	{
		var_d0f99889 = [];
	}
	else if(!IsArray(var_d0f99889))
	{
		var_d0f99889 = Array(var_d0f99889);
	}
	var_d0f99889[var_d0f99889.size] = &decent_leftlimp;
	if(!isdefined(var_d0f99889))
	{
		var_d0f99889 = [];
	}
	else if(!IsArray(var_d0f99889))
	{
		var_d0f99889 = Array(var_d0f99889);
	}
	var_d0f99889[var_d0f99889.size] = &decent_rightlimp;
	if(!isdefined(var_d0f99889))
	{
		var_d0f99889 = [];
	}
	else if(!IsArray(var_d0f99889))
	{
		var_d0f99889 = Array(var_d0f99889);
	}
	var_d0f99889[var_d0f99889.size] = &decent_straight_limp;
	if(!isdefined(var_d0f99889))
	{
		var_d0f99889 = [];
	}
	else if(!IsArray(var_d0f99889))
	{
		var_d0f99889 = Array(var_d0f99889);
	}
	var_d0f99889[var_d0f99889.size] = &decent_leftlimp;
	decent_straight_limp();
	self thread player_velocity_tracker();
	wait(0.05);
	while(1)
	{
		if(self.player_speed > 1)
		{
			var_e3e6bb68 = var_d0f99889[RandomInt(var_d0f99889.size)];
			[[var_e3e6bb68]]();
			larry_the_limper_tweaktech();
			self playerSetGroundReferenceEnt(self.var_ea4a62a);
			self limp_loop();
		}
		else
		{
			wait(0.05);
		}
	}
}

/*
	Name: limp_loop
	Namespace: namespace_34c3982c
	Checksum: 0x646D4621
	Offset: 0x3DC0
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function limp_loop()
{
	self endon("disconnect");
	self endon("death");
	self endon("player_not_moving");
	self setblur(0.5, 0.5);
	var_f7fdecc8 = (level.var_a8cde67a, level.var_ced060e3, level.var_5cc8f1a8);
	v_angles = self adjust_angles_to_player(var_f7fdecc8);
	self thread player_speed_set(level.var_b353f4c4, level.var_cd2a14bf);
	self.var_ea4a62a RotateTo(v_angles, level.var_f2f6bb73, level.var_98baefb2, level.var_cca7fbf6);
	wait(level.var_71452859);
	self setblur(0, 0.5);
	var_5b669c4e = (level.var_3786492b, level.var_1183cec2, level.var_eb815459);
	v_angles = self adjust_angles_to_player(var_5b669c4e);
	self thread player_speed_set(level.var_9ab04381, level.var_1fe3ba00);
	self.var_ea4a62a RotateTo(v_angles, level.var_f82f9c0e, level.var_d0d9c3d3, level.var_f929cce9);
	wait(level.var_3830f2ec);
	self thread player_speed_set(level.var_29ea0d2, level.var_2bd8595);
	var_9fb101a3 = (level.var_6cd24960, level.var_92d4c3c9, level.var_b8d73e32);
	v_angles = self adjust_angles_to_player(var_9fb101a3);
	self.var_ea4a62a RotateTo(v_angles, level.var_1756af11, level.var_9de91a84, level.var_b5195d4);
	wait(level.var_ca92fecf);
}

/*
	Name: player_velocity_tracker
	Namespace: namespace_34c3982c
	Checksum: 0x6D6EDF56
	Offset: 0x4038
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function player_velocity_tracker()
{
	self endon("disconnect");
	self endon("death");
	var_7ba6849c = 0;
	while(1)
	{
		v_player_velocity = self GetVelocity();
		self.player_speed = Abs(v_player_velocity[0]) + Abs(v_player_velocity[1]);
		if(self.player_speed < 1 && var_7ba6849c > 1)
		{
			self notify("player_not_moving");
			self.var_ea4a62a RotateTo((0, 0, 0), 1);
			wait(0.5);
		}
		if(self.player_speed > 1 && self.player_speed < 40)
		{
			larry_the_limper_tweaktech_halved();
		}
		wait(0.05);
		var_7ba6849c = self.player_speed;
	}
}

/*
	Name: larry_the_limper_tweaktech
	Namespace: namespace_34c3982c
	Checksum: 0x15FEE990
	Offset: 0x4168
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function larry_the_limper_tweaktech()
{
	level.var_a8cde67a = level.var_8f8774d5;
	level.var_ced060e3 = level.var_6984fa6c;
	level.var_5cc8f1a8 = level.var_db8c69a7;
	level.var_f2f6bb73 = level.var_8d8840b7;
	level.var_98baefb2 = level.var_40f1057e;
	level.var_cca7fbf6 = level.var_cd24949a;
	level.var_71452859 = level.var_66ae20ea;
	level.var_b353f4c4 = level.var_c396df85;
	level.var_cd2a14bf = level.var_ae4f1734;
	level.var_3786492b = level.var_3781f860;
	level.var_1183cec2 = level.var_5d8472c9;
	level.var_eb815459 = level.var_8386ed32;
	level.var_f82f9c0e = level.var_6210de6e;
	level.var_d0d9c3d3 = level.var_dd3790f3;
	level.var_f929cce9 = level.var_2abf0589;
	level.var_3830f2ec = level.var_eac13797;
	level.var_9ab04381 = level.var_3f9e1bba;
	level.var_1fe3ba00 = level.var_80d43aed;
	level.var_6cd24960 = level.var_4d68f84b;
	level.var_92d4c3c9 = level.var_27667de2;
	level.var_b8d73e32 = level.var_1640379;
	level.var_1756af11 = level.var_49b7a58d;
	level.var_9de91a84 = level.var_373e9d48;
	level.var_b5195d4 = level.var_a109eca0;
	level.var_ca92fecf = level.var_f8205536;
	level.var_29ea0d2 = level.var_235b23b;
	level.var_2bd8595 = level.var_6dcb06fa;
}

/*
	Name: larry_the_limper_tweaktech_fast
	Namespace: namespace_34c3982c
	Checksum: 0x84339780
	Offset: 0x4328
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function larry_the_limper_tweaktech_fast()
{
	level.var_a8cde67a = level.var_8f8774d5;
	level.var_ced060e3 = level.var_6984fa6c;
	level.var_5cc8f1a8 = level.var_db8c69a7;
	level.var_f2f6bb73 = level.var_8d8840b7;
	level.var_98baefb2 = level.var_40f1057e;
	level.var_cca7fbf6 = level.var_cd24949a;
	level.var_71452859 = level.var_66ae20ea;
	level.var_b353f4c4 = level.var_c396df85;
	level.var_cd2a14bf = level.var_ae4f1734;
	level.var_3786492b = level.var_3781f860;
	level.var_1183cec2 = level.var_5d8472c9;
	level.var_eb815459 = level.var_8386ed32;
	level.var_f82f9c0e = level.var_6210de6e;
	level.var_d0d9c3d3 = level.var_dd3790f3;
	level.var_f929cce9 = level.var_2abf0589;
	level.var_3830f2ec = level.var_eac13797;
	level.var_9ab04381 = level.var_3f9e1bba;
	level.var_1fe3ba00 = level.var_80d43aed;
	level.var_6cd24960 = level.var_4d68f84b;
	level.var_92d4c3c9 = level.var_27667de2;
	level.var_b8d73e32 = level.var_1640379;
	level.var_1756af11 = level.var_49b7a58d;
	level.var_9de91a84 = level.var_373e9d48;
	level.var_b5195d4 = level.var_a109eca0;
	level.var_ca92fecf = level.var_f8205536;
	level.var_29ea0d2 = level.var_235b23b;
	level.var_2bd8595 = level.var_6dcb06fa;
}

/*
	Name: larry_the_limper_tweaktech_halved
	Namespace: namespace_34c3982c
	Checksum: 0xA56751F9
	Offset: 0x44E8
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function larry_the_limper_tweaktech_halved()
{
	level.var_a8cde67a = 0.8 * level.var_8f8774d5;
	level.var_ced060e3 = 0.8 * level.var_6984fa6c;
	level.var_5cc8f1a8 = 0.8 * level.var_db8c69a7;
	level.var_f2f6bb73 = 0.8 * level.var_8d8840b7;
	level.var_98baefb2 = 0.8 * level.var_40f1057e;
	level.var_cca7fbf6 = 0.8 * level.var_cd24949a;
	level.var_71452859 = 0.8 * level.var_66ae20ea;
	level.var_b353f4c4 = 0.8 * level.var_c396df85;
	level.var_cd2a14bf = 0.8 * level.var_ae4f1734;
	level.var_3786492b = 0.8 * level.var_3781f860;
	level.var_1183cec2 = 0.8 * level.var_5d8472c9;
	level.var_eb815459 = 0.8 * level.var_8386ed32;
	level.var_f82f9c0e = 0.8 * level.var_6210de6e;
	level.var_d0d9c3d3 = 0.8 * level.var_dd3790f3;
	level.var_f929cce9 = 0.8 * level.var_2abf0589;
	level.var_3830f2ec = 0.8 * level.var_eac13797;
	level.var_9ab04381 = 0.8 * level.var_3f9e1bba;
	level.var_1fe3ba00 = 0.8 * level.var_80d43aed;
	level.var_6cd24960 = 0.8 * level.var_4d68f84b;
	level.var_92d4c3c9 = 0.8 * level.var_27667de2;
	level.var_b8d73e32 = 0.8 * level.var_1640379;
	level.var_1756af11 = 0.8 * level.var_49b7a58d;
	level.var_9de91a84 = 0.8 * level.var_373e9d48;
	level.var_b5195d4 = 0.8 * level.var_a109eca0;
	level.var_ca92fecf = 0.8 * level.var_f8205536;
	level.var_29ea0d2 = 0.8 * level.var_235b23b;
	level.var_2bd8595 = 0.8 * level.var_6dcb06fa;
}

/*
	Name: decent_straight_limp
	Namespace: namespace_34c3982c
	Checksum: 0xDB641C9D
	Offset: 0x4780
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function decent_straight_limp()
{
	level.var_8f8774d5 = 0;
	level.var_6984fa6c = 0;
	level.var_db8c69a7 = 1;
	level.var_8d8840b7 = 0.6;
	level.var_40f1057e = 0.55;
	level.var_cd24949a = 0.05;
	level.var_66ae20ea = 0.6;
	level.var_c396df85 = 120;
	level.var_ae4f1734 = 0.2;
	level.var_3781f860 = 0;
	level.var_5d8472c9 = 0;
	level.var_8386ed32 = 4;
	level.var_6210de6e = 0.4;
	level.var_dd3790f3 = 0.35;
	level.var_2abf0589 = 0.05;
	level.var_eac13797 = 0.4;
	level.var_3f9e1bba = 130;
	level.var_80d43aed = 0.2;
	level.var_4d68f84b = 0;
	level.var_27667de2 = 0;
	level.var_1640379 = 0;
	level.var_49b7a58d = 0.5;
	level.var_373e9d48 = 0.45;
	level.var_a109eca0 = 0.05;
	level.var_f8205536 = 0.5;
	level.var_235b23b = 40;
	level.var_6dcb06fa = 0.5;
}

/*
	Name: decent_leftlimp
	Namespace: namespace_34c3982c
	Checksum: 0x91ECB5B6
	Offset: 0x4910
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function decent_leftlimp()
{
	level.var_8f8774d5 = 0;
	level.var_6984fa6c = 5;
	level.var_db8c69a7 = -1;
	level.var_8d8840b7 = 0.6;
	level.var_40f1057e = 0.55;
	level.var_cd24949a = 0.05;
	level.var_66ae20ea = 0.6;
	level.var_c396df85 = 120;
	level.var_ae4f1734 = 0.2;
	level.var_3781f860 = 0;
	level.var_5d8472c9 = 1;
	level.var_8386ed32 = 3;
	level.var_6210de6e = 0.4;
	level.var_dd3790f3 = 0.35;
	level.var_2abf0589 = 0.05;
	level.var_eac13797 = 0.4;
	level.var_3f9e1bba = 130;
	level.var_80d43aed = 0.2;
	level.var_4d68f84b = 0;
	level.var_27667de2 = 0;
	level.var_1640379 = 0;
	level.var_49b7a58d = 0.5;
	level.var_373e9d48 = 0.45;
	level.var_a109eca0 = 0.05;
	level.var_f8205536 = 0.5;
	level.var_235b23b = 40;
	level.var_6dcb06fa = 0.5;
}

/*
	Name: decent_rightlimp
	Namespace: namespace_34c3982c
	Checksum: 0x21D2A417
	Offset: 0x4AA0
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function decent_rightlimp()
{
	level.var_8f8774d5 = -2;
	level.var_6984fa6c = -5;
	level.var_db8c69a7 = 3.5;
	level.var_8d8840b7 = 0.35;
	level.var_40f1057e = 0.3;
	level.var_cd24949a = 0.05;
	level.var_66ae20ea = 0.5;
	level.var_c396df85 = 105;
	level.var_ae4f1734 = 0.35;
	level.var_3781f860 = 1;
	level.var_5d8472c9 = -1;
	level.var_8386ed32 = 2;
	level.var_6210de6e = 0.5;
	level.var_dd3790f3 = 0.35;
	level.var_2abf0589 = 0.05;
	level.var_eac13797 = 0.4;
	level.var_3f9e1bba = 130;
	level.var_80d43aed = 0.2;
	level.var_4d68f84b = 0;
	level.var_27667de2 = 0;
	level.var_1640379 = 0;
	level.var_49b7a58d = 0.5;
	level.var_373e9d48 = 0.25;
	level.var_a109eca0 = 0.05;
	level.var_f8205536 = 0.5;
	level.var_235b23b = 90;
	level.var_6dcb06fa = 0.2;
}

/*
	Name: adjust_angles_to_player
	Namespace: namespace_34c3982c
	Checksum: 0x6DD167A3
	Offset: 0x4C30
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function adjust_angles_to_player(var_cb29ad00)
{
	self endon("disconnect");
	self endon("death");
	var_ba8b2edd = var_cb29ad00[0];
	var_b7b9fb33 = var_cb29ad00[2];
	var_7d94cf0c = AnglesToRight(self.angles);
	var_637af9e8 = AnglesToForward(self.angles);
	var_22f51d2d = (var_7d94cf0c[0], 0, var_7d94cf0c[1] * -1);
	var_67abfb41 = (var_637af9e8[0], 0, var_637af9e8[1] * -1);
	v_angles = var_22f51d2d * var_ba8b2edd;
	v_angles = v_angles + var_67abfb41 * var_b7b9fb33;
	return v_angles + (0, var_cb29ad00[1], 0);
}

/*
	Name: player_speed_set
	Namespace: namespace_34c3982c
	Checksum: 0xEA8FCBB1
	Offset: 0x4D70
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function player_speed_set(n_speed, n_time)
{
	self endon("disconnect");
	self endon("death");
	var_6d63a9b5 = GetDvarInt("g_speed");
	var_f44c8c7e = n_speed;
	if(isdefined(self._player_speed_modifier))
	{
		var_f44c8c7e = n_speed * self._player_speed_modifier;
	}
	if(!isdefined(self.g_speed))
	{
		self.g_speed = var_6d63a9b5;
	}
	n_range = var_f44c8c7e - var_6d63a9b5;
	n_interval = 0.05;
	n_cycles = n_time / n_interval;
	n_fraction = n_range / n_cycles;
	while(Abs(var_f44c8c7e - var_6d63a9b5) > Abs(n_fraction * 1.1))
	{
		var_6d63a9b5 = var_6d63a9b5 + n_fraction;
		SetDvar("g_speed", Int(var_6d63a9b5));
		wait(n_interval);
	}
	SetDvar("g_speed", var_f44c8c7e);
}

/*
	Name: function_3ec4c691
	Namespace: namespace_34c3982c
	Checksum: 0x677DE91A
	Offset: 0x4F20
	Size: 0x4AB
	Parameters: 0
	Flags: None
*/
function function_3ec4c691()
{
	var_5cca3f31 = GetEnt("trig_enable_zuirch_ending", "targetname");
	var_5cca3f31.origin = var_5cca3f31.origin + VectorScale((0, 0, 1), 1000);
	var_5cca3f31 TriggerEnable(0);
	level.var_64b9a8b0 = 1;
	level scene::init("cin_zmcp_20_01_plaza_1st_outro");
	scene::add_scene_func("cin_zmcp_20_01_plaza_1st_outro", &function_95ed5d29, "play");
	scene::add_scene_func("cin_zmcp_20_01_plaza_1st_outro", &function_72f4ee18, "play");
	scene::add_scene_func("cin_zmcp_20_01_plaza_1st_player", &function_93ffcbdf, "play");
	scene::add_scene_func("cin_zmcp_20_01_plaza_1st_player", &function_7e39583d, "done");
	level flag::wait_till("atrium_hack_objective_start");
	level flag::wait_till("BZM_ZURICHDialogue23");
	var_5cca3f31 = GetEnt("trig_enable_zuirch_ending", "targetname");
	var_5cca3f31.origin = var_5cca3f31.origin + VectorScale((0, 0, -1), 1000);
	wait(0.2);
	var_5cca3f31 namespace_8e9083ff::function_d1996775();
	level notify("hash_21ddc441");
	level clientfield::set("set_post_color_grade_bank", 1);
	Array::thread_all(level.players, &namespace_8e9083ff::function_3e4d643b, 1);
	exploder::exploder("plaza_lights");
	level namespace_8e9083ff::function_b0f0dd1f(1, "reverse_snow");
	level flag::set("flag_start_zurich_outro");
	if(isdefined(level.BZM_ZURICHDialogue24Callback))
	{
		level thread [[level.BZM_ZURICHDialogue24Callback]]();
	}
	foreach(player in level.activePlayers)
	{
		var_4044e31f = player GetWeaponsListPrimaries();
		foreach(weapon in var_4044e31f)
		{
			if(weapon.isHeroWeapon)
			{
				player TakeWeapon(weapon);
			}
		}
	}
	music::setmusicstate("none");
	playsoundatposition("evt_bonuszm_ending_zombies", (0, 0, 0));
	level clientfield::set("gameplay_started", 0);
	level thread scene::Play("cin_zmcp_20_01_plaza_1st_player");
	level thread scene::Play("cin_zmcp_20_01_plaza_1st_outro");
}

/*
	Name: function_7e39583d
	Namespace: namespace_34c3982c
	Checksum: 0x4F39D3F8
	Offset: 0x53D8
	Size: 0x2A1
	Parameters: 1
	Flags: None
*/
function function_7e39583d(players)
{
	self endon("death");
	foreach(player in level.players)
	{
		foreach(var_e6ef2725 in level.players)
		{
			player SetInvisibleToPlayer(var_e6ef2725, 1);
		}
		player FreezeControls(0);
		player setClientUIVisibilityFlag("hud_visible", 0);
		player setClientUIVisibilityFlag("weapon_hud_visible", 0);
		var_4044e31f = player GetWeaponsListPrimaries();
		foreach(weapon in var_4044e31f)
		{
			player TakeWeapon(weapon);
		}
		shotgun = GetWeapon("shotgun_pump");
		player GiveWeapon(shotgun);
		player SetWeaponAmmoClip(shotgun, shotgun.clipSize);
		player SwitchToWeapon(shotgun);
	}
}

/*
	Name: function_93ffcbdf
	Namespace: namespace_34c3982c
	Checksum: 0xCAC08B1D
	Offset: 0x5688
	Size: 0x30B
	Parameters: 1
	Flags: None
*/
function function_93ffcbdf(a_ents)
{
	if(isdefined(level.BZM_ZURICHDialogue25Callback))
	{
		[[level.BZM_ZURICHDialogue25Callback]]();
	}
	playsoundatposition("evt_bonuszm_ending_toblack", (0, 0, 0));
	level clientfield::set("sndIGCsnapshot", 5);
	level util::screen_message_delete();
	util::screen_fade_out(0);
	music::setmusicstate("i_live_credits");
	wait(1);
	foreach(player in level.players)
	{
		foreach(var_e6ef2725 in level.players)
		{
			player SetInvisibleToPlayer(var_e6ef2725, 0);
		}
		var_4044e31f = player GetWeaponsListPrimaries();
		foreach(weapon in var_4044e31f)
		{
			player TakeWeapon(weapon);
			player FreezeControls(1);
			player util::function_16c71b8(1);
		}
	}
	if(isdefined(self.var_322cc58c))
	{
		self CloseLUIMenu(self.var_322cc58c);
	}
	objectives::complete("cp_level_zurich_end_obj");
	trigger::use("trig_zurich_end", "targetname");
	skipto::function_be8adfb8("zurich_outro");
}

/*
	Name: function_72f4ee18
	Namespace: namespace_34c3982c
	Checksum: 0x6487CC74
	Offset: 0x59A0
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_72f4ee18(a_ents)
{
	foreach(ent in a_ents)
	{
		ent SetHighDetail(1);
	}
}


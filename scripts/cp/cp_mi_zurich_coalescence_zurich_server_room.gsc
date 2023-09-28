#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_hq;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_plaza_battle;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_sacrifice;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_e0fbc9fc;

/*
	Name: function_9c1fc2fd
	Namespace: namespace_e0fbc9fc
	Checksum: 0xBC1B28FC
	Offset: 0x660
	Size: 0x38B
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread namespace_8e9083ff::function_11b424e5(1);
		level function_f62d8d36();
		level flag::set("sacrifice_kane_activation_ready");
		level scene::skipto_end("cin_zur_06_sacrifice_3rd_sh150");
		level thread function_ef7b97bd();
		objectives::set("cp_level_zurich_apprehend_hack_obj");
		load::function_a2995f22();
	}
	e_who = level function_4d2c0fc8();
	Array::thread_all(level.players, &function_7a462130, e_who);
	Array::wait_till(level.players, "pistol_ready");
	Array::thread_all(level.players, &namespace_8e9083ff::function_3e4d643b, 1);
	if(isdefined(level.BZM_ZURICHDialogue3Callback))
	{
		level thread [[level.BZM_ZURICHDialogue3Callback]]();
	}
	level thread namespace_67110270::function_40b3f4d();
	level thread util::function_d8eaed3d(3);
	foreach(player in level.players)
	{
		if(player IsHost())
		{
			var_91f5b1a9 = player;
			break;
		}
	}
	if(!isdefined(var_91f5b1a9))
	{
		var_91f5b1a9 = e_who;
	}
	scene::add_scene_func("cin_zur_09_01_standoff_1st_hostage", &function_46f876ee, "play");
	scene::add_scene_func("cin_zur_09_01_standoff_1st_hostage", &function_adc1f7a2, "done");
	level thread scene::Play("cin_zur_09_01_standoff_1st_hostage", e_who);
	objectives::Hide("cp_level_zurich_apprehend_hack_obj");
	objectives::set("cp_level_zurich_apprehend_awaiting_obj");
	level waittill("hash_265469bd");
	level thread util::screen_fade_out(0.1, "white");
	level waittill("hash_a4928ac9");
	level thread namespace_8e9083ff::function_11b424e5(0);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_7a462130
	Namespace: namespace_e0fbc9fc
	Checksum: 0x2939225D
	Offset: 0x9F8
	Size: 0x22B
	Parameters: 1
	Flags: None
*/
function function_7a462130(e_who)
{
	e_player = self;
	var_b6abbe7a = GetWeapon("pistol_standard_zur");
	e_player enableWeapons();
	if(e_player == e_who)
	{
		level.e_triggerer = e_player;
		level.e_triggerer HideViewModel();
	}
	if(e_player HasWeapon(var_b6abbe7a, 1))
	{
		e_player.var_9299077 = 1;
	}
	else
	{
		e_player GiveWeapon(var_b6abbe7a);
	}
	w_current = e_player GetCurrentWeapon();
	a_weapon_list = e_player GetWeaponsList();
	foreach(weapon in a_weapon_list)
	{
		if(weapon.rootweapon.name == var_b6abbe7a.rootweapon.name && w_current.rootweapon.name != var_b6abbe7a.rootweapon.name)
		{
			e_player SwitchToWeapon(weapon);
			e_player waittill("weapon_change_complete");
			break;
		}
	}
	waittillframeend;
	e_player notify("hash_fa153544");
}

/*
	Name: function_4d2c0fc8
	Namespace: namespace_e0fbc9fc
	Checksum: 0xAF53EE7E
	Offset: 0xC30
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_4d2c0fc8()
{
	e_who = GetEnt("server_room_door_usetrig", "targetname") namespace_8e9083ff::function_d1996775();
	e_who playsound("evt_standoff_door");
	GetEnt("sacrifice_server_door", "targetname") MoveZ(128, 2);
	return e_who;
}

/*
	Name: function_46f876ee
	Namespace: namespace_e0fbc9fc
	Checksum: 0x22A6C481
	Offset: 0xCD0
	Size: 0x1E9
	Parameters: 1
	Flags: None
*/
function function_46f876ee(a_ents)
{
	level._effect["muzzle_flash"] = "weapon/fx_muz_pistol_igc";
	var_6262a4fe = a_ents["hendricks"];
	level waittill("hash_814598ff");
	var_6262a4fe cybercom::function_f8669cbf(1);
	level waittill("fire");
	foreach(e_player in level.activePlayers)
	{
		PlayFXOnTag(level._effect["muzzle_flash"], e_player, "tag_flash");
		e_player PlayRumbleOnEntity("pistol_fire");
	}
	wait(0.1);
	level waittill("fire");
	foreach(e_player in level.players)
	{
		PlayFXOnTag(level._effect["muzzle_flash"], e_player, "tag_flash");
	}
}

/*
	Name: function_adc1f7a2
	Namespace: namespace_e0fbc9fc
	Checksum: 0xE502AE3B
	Offset: 0xEC8
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_adc1f7a2(a_ents)
{
	foreach(e_player in level.players)
	{
		if(!(isdefined(e_player.var_9299077) && e_player.var_9299077))
		{
			e_player TakeWeapon(GetWeapon("pistol_standard_zur"));
		}
	}
	level.e_triggerer ShowViewModel();
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_e0fbc9fc
	Checksum: 0x693E434B
	Offset: 0xFB8
	Size: 0x231
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	spawner::add_global_spawn_function("axis", &namespace_8e9083ff::function_b1d28dc8);
	spawner::add_global_spawn_function("axis", &namespace_8e9083ff::function_90de3a76);
	level.var_6b5304af = GetNodeArray("ai_taylor_cover", "script_noteworthy");
	foreach(nd_cover in level.var_6b5304af)
	{
		SetEnableNode(nd_cover, 0);
	}
	objectives::set("cp_level_zurich_apprehend_awaiting_obj");
	objectives::Hide("cp_level_zurich_apprehend_awaiting_obj");
	objectives::set("cp_level_zurich_unavailable_obj");
	namespace_8e9083ff::function_4d032f25(0);
	namespace_b73b0f52::function_8cb99e45();
	namespace_68404a06::function_2d235e66();
	namespace_68404a06::function_1dc45e88();
	namespace_68404a06::function_3f3aadf9();
	level thread namespace_8e9083ff::function_4a00a473("server_room");
	level.activePlayers function_69ee2ece();
	Array::thread_all(level.players, &namespace_8e9083ff::function_3e4d643b, 0);
	level notify("hash_52e251bc");
}

/*
	Name: function_f62d8d36
	Namespace: namespace_e0fbc9fc
	Checksum: 0x8BF7B791
	Offset: 0x11F8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_f62d8d36()
{
	var_2fd26037 = spawner::simple_spawn_single("hendricks_server_igc_spawner");
	var_2fd26037 ai::gun_switchto(var_2fd26037.sidearm, "right");
	var_2fd26037 SetTeam("neutral");
	level scene::init("cin_zur_09_01_standoff_1st_hostage", var_2fd26037);
}

/*
	Name: function_69ee2ece
	Namespace: namespace_e0fbc9fc
	Checksum: 0x81DAE11A
	Offset: 0x1298
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_69ee2ece()
{
	foreach(e_player in self)
	{
		var_3d29e443 = e_player GetWeaponsList();
		foreach(var_cdee635d in var_3d29e443)
		{
			if(isdefined(var_cdee635d.isHeroWeapon) && var_cdee635d.isHeroWeapon)
			{
				e_player TakeWeapon(var_cdee635d);
			}
		}
	}
}

/*
	Name: function_ef7b97bd
	Namespace: namespace_e0fbc9fc
	Checksum: 0x9B42C5F8
	Offset: 0x13E8
	Size: 0x3A9
	Parameters: 0
	Flags: None
*/
function function_ef7b97bd()
{
	level scene::add_scene_func("cin_gen_ambient_raven_idle_eating_raven", &namespace_8e9083ff::function_e547724d, "init");
	level scene::add_scene_func("cin_gen_ambient_raven_idle", &namespace_8e9083ff::function_e547724d, "init");
	level scene::add_scene_func("cin_gen_traversal_raven_fly_away", &namespace_8e9083ff::function_86b1cd8a, "init");
	a_scenes = struct::get_array("server_hallway_ravens");
	Array::thread_all(a_scenes, &scene::init);
	namespace_8e9083ff::function_1b3dfa61("server_hallway_hallucination_struct_trig", undefined, 96, 512);
	Array::thread_all(level.players, &clientfield::set_to_player, "raven_hallucinations", 1);
	foreach(player in level.players)
	{
		visionset_mgr::activate("visionset", "cp_zurich_hallucination", player);
	}
	playsoundatposition("evt_server_ravens_f", (0, 0, 0));
	level notify("hash_755edaa4");
	foreach(s_scene in a_scenes)
	{
		s_scene util::delay(RandomFloat(1), undefined, &scene::Play);
	}
	wait(1);
	Array::thread_all(level.players, &clientfield::set_to_player, "raven_hallucinations", 0);
	wait(0.5);
	Array::thread_all(a_scenes, &scene::stop);
	wait(2);
	foreach(player in level.players)
	{
		visionset_mgr::deactivate("visionset", "cp_zurich_hallucination", player);
	}
}


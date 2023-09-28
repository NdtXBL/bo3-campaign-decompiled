#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_bbb4ee72;

/*
	Name: main
	Namespace: namespace_bbb4ee72
	Checksum: 0x63AE019F
	Offset: 0x768
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function main()
{
	init_clientfields();
}

/*
	Name: init_clientfields
	Namespace: namespace_bbb4ee72
	Checksum: 0x3C436333
	Offset: 0x788
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("scriptmover", "exploding_tree", 1, 1, "counter");
}

/*
	Name: play_scene
	Namespace: namespace_bbb4ee72
	Checksum: 0x2C0A4683
	Offset: 0x7C8
	Size: 0x1DB
	Parameters: 2
	Flags: None
*/
function play_scene(str_objective, e_player)
{
	a_ai = GetAITeamArray("axis");
	Array::thread_all(a_ai, &namespace_8e9083ff::function_48463818);
	if(isdefined(level.var_65070634))
	{
		level.var_65070634 notify("hash_11a8c313");
	}
	function_32b529d8(str_objective, e_player);
	switch(str_objective)
	{
		case "root_zurich_vortex":
		{
			if(isdefined(level.BZM_ZURICHDialogue12Callback))
			{
				level thread [[level.BZM_ZURICHDialogue12Callback]]();
			}
			str_movie = "cp_zurich_fs_SgenTestChamber";
			level thread function_550866c2();
			break;
		}
		case "root_cairo_vortex":
		{
			if(isdefined(level.BZM_ZURICHDialogue16Callback))
			{
				level thread [[level.BZM_ZURICHDialogue16Callback]]();
			}
			str_movie = "cp_zurich_fs_SgenServerRoom";
			level thread function_7fdd0557();
			break;
		}
		case "root_singapore_vortex":
		{
			if(isdefined(level.BZM_ZURICHDialogue20Callback))
			{
				level thread [[level.BZM_ZURICHDialogue20Callback]]();
			}
			str_movie = "cp_zurich_fs_interrogation";
			level thread function_6cc3b883();
			break;
		}
	}
	level thread function_33367f39();
	function_c7ab7e12(str_movie);
	level notify("hash_b1f1a592");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_c7ab7e12
	Namespace: namespace_bbb4ee72
	Checksum: 0xD0A3EDB8
	Offset: 0x9B0
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_c7ab7e12(str_movie)
{
	foreach(player in level.players)
	{
		player.dont_show_hud = 1;
	}
	level thread LUI::play_movie(str_movie, "fullscreen");
	wait(0.05);
	foreach(player in level.players)
	{
		if(player IsHost())
		{
			player thread function_4b299142(str_movie);
		}
	}
	level waittill("movie_done");
	Array::thread_all(level.players, &scene::clear_scene_skipping_ui);
}

/*
	Name: function_4b299142
	Namespace: namespace_bbb4ee72
	Checksum: 0x1EE30D0E
	Offset: 0xB48
	Size: 0x575
	Parameters: 1
	Flags: None
*/
function function_4b299142(str_movie)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self endon("disconnect");
	level endon("movie_done");
	b_skip_scene = 0;
	foreach(player in level.players)
	{
		if(isdefined(player.skip_scene_menu_handle))
		{
			player CloseLUIMenu(player.skip_scene_menu_handle);
		}
		player.skip_scene_menu_handle = player OpenLUIMenu("CPSkipSceneMenu");
		player SetLUIMenuData(player.skip_scene_menu_handle, "showSkipButton", 0);
		player SetLUIMenuData(player.skip_scene_menu_handle, "hostIsSkipping", 0);
		player SetLUIMenuData(player.skip_scene_menu_handle, "sceneSkipEndTime", 0);
	}
	while(!b_skip_scene)
	{
		if(self scene::any_button_pressed())
		{
			if(!isdefined(self.scene_skip_timer))
			{
				self SetLUIMenuData(self.skip_scene_menu_handle, "showSkipButton", 1);
			}
			self.scene_skip_timer = GetTime();
		}
		else if(isdefined(self.scene_skip_timer))
		{
			if(GetTime() - self.scene_skip_timer > 3000)
			{
				self SetLUIMenuData(self.skip_scene_menu_handle, "showSkipButton", 2);
				self.scene_skip_timer = undefined;
			}
		}
		if(self PrimaryButtonPressedLocal())
		{
			if(!isdefined(self.scene_skip_start_time))
			{
				foreach(player in level.players)
				{
					if(player IsHost())
					{
						player SetLUIMenuData(player.skip_scene_menu_handle, "sceneSkipEndTime", GetTime() + 2500);
						continue;
					}
					if(isdefined(player.skip_scene_menu_handle))
					{
						player SetLUIMenuData(player.skip_scene_menu_handle, "hostIsSkipping", 1);
					}
				}
				self.scene_skip_start_time = GetTime();
			}
			else if(GetTime() - self.scene_skip_start_time > 2500)
			{
				b_skip_scene = 1;
				break;
			}
		}
		else if(isdefined(self.scene_skip_start_time))
		{
			foreach(player in level.players)
			{
				if(player IsHost())
				{
					player SetLUIMenuData(player.skip_scene_menu_handle, "sceneSkipEndTime", 0);
					continue;
				}
				if(isdefined(player.skip_scene_menu_handle))
				{
					player SetLUIMenuData(player.skip_scene_menu_handle, "hostIsSkipping", 2);
				}
			}
			self.scene_skip_start_time = undefined;
		}
		wait(0.05);
	}
	if(b_skip_scene)
	{
		self playsound("uin_igc_skip");
		if(str_movie === "cp_zurich_fs_interrogation")
		{
			level.var_a2c60984 = 1;
		}
		foreach(player in level.players)
		{
			player notify("menuresponse", "FullscreenMovie", "finished_movie_playback");
		}
	}
}

/*
	Name: function_550866c2
	Namespace: namespace_bbb4ee72
	Checksum: 0x1EB8F19C
	Offset: 0x10C8
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_550866c2()
{
	level endon("hash_b1f1a592");
	level endon("movie_done");
	wait(0.2);
	level thread namespace_67110270::function_38a68128();
	level dialog::remote("corv_i_was_born_in_the_0", 1, "NO_DNI");
	level dialog::remote("corv_i_knew_only_the_thou_0", 1, "NO_DNI");
	level dialog::remote("corv_i_felt_everything_0", 1, "NO_DNI");
	level dialog::remote("corv_it_was_overwhelming_0", 1, "NO_DNI");
	level dialog::remote("corv_i_screamed_out_in_pa_0", 1, "NO_DNI");
	level dialog::remote("corv_a_brief_moment_of_ag_1", 1, "NO_DNI");
	level dialog::remote("corv_then_darkness_1", 1, "NO_DNI");
}

/*
	Name: function_7fdd0557
	Namespace: namespace_bbb4ee72
	Checksum: 0xC3DA610B
	Offset: 0x1260
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_7fdd0557()
{
	level endon("hash_b1f1a592");
	level endon("movie_done");
	level thread namespace_67110270::function_67c7b7bc();
	level dialog::remote("corv_the_darkness_and_iso_0", 0, "NO_DNI");
	level dialog::remote("corv_suddenly_i_had_new_0", 0, "NO_DNI");
	level dialog::remote("corv_i_saw_conflict_i_sa_0", 0, "NO_DNI");
	level dialog::remote("corv_a_mission_0", 0, "NO_DNI");
	level dialog::remote("corv_we_needed_answers_0", 0, "NO_DNI");
}

/*
	Name: function_6cc3b883
	Namespace: namespace_bbb4ee72
	Checksum: 0xEDABFBDC
	Offset: 0x1388
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_6cc3b883()
{
	level endon("hash_b1f1a592");
	level endon("movie_done");
	level thread namespace_67110270::function_668ff14b();
	level dialog::remote("corv_the_harder_we_looked_0", 1, "NO_DNI");
	level dialog::remote("corv_in_our_search_for_an_0", 0, "NO_DNI");
	level dialog::remote("corv_i_wanted_to_find_a_p_0", 0, "NO_DNI");
	level dialog::remote("corv_but_i_couldn_t_escap_0", 0, "NO_DNI");
	level dialog::remote("corv_i_don_t_know_if_i_ma_0", 0, "NO_DNI");
	level dialog::remote("corv_do_you_know_0", 0, "NO_DNI");
}

/*
	Name: function_33367f39
	Namespace: namespace_bbb4ee72
	Checksum: 0x4E250363
	Offset: 0x14E0
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_33367f39()
{
	level.overridePlayerDamage = &function_6255dfdc;
	level thread namespace_8e9083ff::function_674ecd85();
	foreach(player in level.players)
	{
		player.var_b1a4293e = util::spawn_model("tag_origin", player.origin, player.angles);
		player PlayerLinkToDelta(player.var_b1a4293e, "tag_origin", 1, 15, 15, 0, 15);
		player FreezeControls(1);
	}
	level waittill("hash_b1f1a592");
	level.overridePlayerDamage = undefined;
	foreach(player in level.players)
	{
		player FreezeControls(0);
		if(isdefined(player.var_b1a4293e))
		{
			player.var_b1a4293e delete();
		}
	}
}

/*
	Name: function_32b529d8
	Namespace: namespace_bbb4ee72
	Checksum: 0x9D88A47A
	Offset: 0x16F0
	Size: 0x211
	Parameters: 2
	Flags: None
*/
function function_32b529d8(str_objective, e_player)
{
	switch(str_objective)
	{
		case "root_zurich_vortex":
		{
			var_470af250 = "p7_fxanim_cp_zurich_dni_tree_break01_bundle";
			str_player_scene = "cin_zur_12_01_root_1st_crumble";
			var_f9202c4e = "zurich_fxanim_heart_ceiling";
			str_exploder = "heartLightsZurich";
			break;
		}
		case "root_cairo_vortex":
		{
			var_470af250 = "p7_fxanim_cp_zurich_dni_tree_break02_bundle";
			str_player_scene = "cin_zur_12_01_root_1st_crumble3";
			var_f9202c4e = "cairo_fxanim_heart_ceiling";
			str_exploder = "heartLightsCairo";
			break;
		}
		case "root_singapore_vortex":
		{
			var_470af250 = "p7_fxanim_cp_zurich_dni_tree_break03_bundle";
			str_player_scene = "cin_zur_12_01_root_1st_crumble2";
			var_f9202c4e = "singapore_fxanim_heart_ceiling";
			str_exploder = "heartLightsSing";
			break;
		}
	}
	scene::add_scene_func(var_470af250, &function_2fbd0bea, "play");
	scene::add_scene_func(var_470af250, &namespace_8e9083ff::function_9f90bc0f, "done", "root_scene_completed");
	level scene::init(var_470af250);
	level thread function_98192f84(var_f9202c4e, var_470af250, str_exploder);
	level thread scene::Play(str_player_scene, e_player);
	level waittill("fade_out");
	level thread util::screen_fade_out(1);
	level waittill(str_player_scene + "_done");
	level util::function_93831e79(str_objective + "_igc_end");
	level notify("hash_87560491");
}

/*
	Name: function_98192f84
	Namespace: namespace_bbb4ee72
	Checksum: 0xA7B0FF5
	Offset: 0x1910
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_98192f84(var_f9202c4e, var_470af250, str_exploder)
{
	wait(4);
	exploder::stop_exploder(str_exploder);
	level thread scene::Play(var_f9202c4e, "targetname");
	level thread scene::Play(var_470af250);
}

/*
	Name: function_2fbd0bea
	Namespace: namespace_bbb4ee72
	Checksum: 0xD49EEEDD
	Offset: 0x1990
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_2fbd0bea(a_ents)
{
	a_ents["dni_tree_break"] clientfield::set("corvus_tree_shader", 1);
}

/*
	Name: function_6255dfdc
	Namespace: namespace_bbb4ee72
	Checksum: 0xC4A8F918
	Offset: 0x19D8
	Size: 0x5D
	Parameters: 11
	Flags: None
*/
function function_6255dfdc(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, boneIndex)
{
	return 0;
}


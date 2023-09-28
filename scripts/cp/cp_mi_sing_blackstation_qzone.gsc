#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation;
#using scripts\cp\cp_mi_sing_blackstation_accolades;
#using scripts\cp\cp_mi_sing_blackstation_port;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_d754dd61;

/*
	Name: main
	Namespace: namespace_d754dd61
	Checksum: 0x4F9717A6
	Offset: 0x1298
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function main()
{
	level thread function_d3f417df();
}

/*
	Name: function_fec14fdd
	Namespace: namespace_d754dd61
	Checksum: 0x6B12C054
	Offset: 0x12C0
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_fec14fdd()
{
	level scene::add_scene_func("cin_bla_01_01_intro_1st", &intro_scene, "play");
	level scene::add_scene_func("cin_bla_01_01_intro_1st", &function_b1896f5, "players_done");
	level scene::add_scene_func("cin_bla_01_01_intro_1st", &function_72332b44, "skip_completed");
	load::function_c32ba481();
	util::do_chyron_text(&"CP_MI_SING_BLACKSTATION_INTRO_LINE_1_FULL", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_1_SHORT", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_2_FULL", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_2_SHORT", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_3_FULL", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_3_SHORT", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_4_FULL", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_4_SHORT", "", "", 12);
	if(isdefined(level.BZM_BLACKSTATIONDialogue1Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue1Callback]]();
	}
	level thread scene::Play("cin_bla_01_01_intro_1st");
	level LUI::screen_fade_out(0);
}

/*
	Name: function_5c4b60ce
	Namespace: namespace_d754dd61
	Checksum: 0x66EAD30F
	Offset: 0x1430
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_5c4b60ce()
{
	a_e_lights = GetEntArray("vtol_lights", "targetname");
	foreach(light in a_e_lights)
	{
		light LinkTo(self);
		light thread function_5a717a52();
	}
	self Attach("veh_t7_mil_vtol_egypt_cabin_details_attch", "tag_body_animate");
}

/*
	Name: function_5a717a52
	Namespace: namespace_d754dd61
	Checksum: 0xAEADE46C
	Offset: 0x1530
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5a717a52()
{
	level waittill("hash_4425647e");
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: intro_scene
	Namespace: namespace_d754dd61
	Checksum: 0x23D96239
	Offset: 0x1568
	Size: 0x249
	Parameters: 1
	Flags: None
*/
function intro_scene(a_ents)
{
	level scene::add_scene_ordered_notetrack("intro_qzone", "notetrack_catch");
	level scene::add_scene_ordered_notetrack("intro_qzone", "notetrack_start_rain");
	level scene::add_scene_ordered_notetrack("intro_qzone", "notetrack_fall");
	level scene::add_scene_ordered_notetrack("intro_qzone", "notetrack_land");
	level scene::add_scene_ordered_notetrack("intro_qzone", "intro_done");
	level thread function_d9d7be12();
	level thread function_bc49a6ce();
	level thread function_202f6b4c();
	level thread function_211d4422();
	level thread function_2365861b();
	level thread function_cc9e7b72();
	level thread function_13820fbf();
	if(!isdefined(level.var_25647ecb))
	{
		level.var_25647ecb = spawn("script_origin", (0, 0, 0));
	}
	foreach(player in level.activePlayers)
	{
		player SwitchToWeapon(GetWeapon("micromissile_launcher"));
	}
}

/*
	Name: function_b1896f5
	Namespace: namespace_d754dd61
	Checksum: 0xD7C675E7
	Offset: 0x17C0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_b1896f5(a_ents)
{
	level util::function_93831e79("qzone_teleport_pos");
}

/*
	Name: function_72332b44
	Namespace: namespace_d754dd61
	Checksum: 0xC1CEAF08
	Offset: 0x17F8
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_72332b44(a_ents)
{
	util::screen_fade_out(0, "black", "hide_qzone_stream");
	level util::player_lock_control();
	level thread function_6c7970a2();
	level util::waittill_notify_or_timeout("qzone_streamer_read", 5);
	level notify("hash_7769e801");
	util::screen_fade_in(0.5, "black", "hide_qzone_stream");
	level util::player_unlock_control();
}

/*
	Name: function_6c7970a2
	Namespace: namespace_d754dd61
	Checksum: 0x20B35D63
	Offset: 0x18D8
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_6c7970a2()
{
	level endon("hash_7769e801");
	level util::streamer_wait();
	level notify("hash_7769e801");
}

/*
	Name: function_d9d7be12
	Namespace: namespace_d754dd61
	Checksum: 0x19708466
	Offset: 0x1918
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_d9d7be12()
{
	level waittill("hash_e99b0752");
	level LUI::screen_fade_in(3);
}

/*
	Name: function_bc49a6ce
	Namespace: namespace_d754dd61
	Checksum: 0xF55A4D5D
	Offset: 0x1950
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_bc49a6ce()
{
	level waittill("hash_a525e1f7");
	playsoundatposition("evt_player_catch_weapon", (0, 0, 0));
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_blackstation_intro_weapon_catch");
	}
}

/*
	Name: function_202f6b4c
	Namespace: namespace_d754dd61
	Checksum: 0xAFDA8E4B
	Offset: 0x1A18
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_202f6b4c()
{
	level waittill("hash_8eb6a1cf");
	foreach(player in level.activePlayers)
	{
		player thread namespace_79e1cd97::function_6778ea09("light_se");
		player clientfield::set_to_player("toggle_rain_sprite", 1);
	}
}

/*
	Name: function_211d4422
	Namespace: namespace_d754dd61
	Checksum: 0x9676383D
	Offset: 0x1AE0
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_211d4422()
{
	level waittill("hash_fb0df4bd");
	level.var_25647ecb StopLoopSound(1);
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("wind_blur", 1);
		player clientfield::set_to_player("wind_effects", 1);
	}
}

/*
	Name: function_2365861b
	Namespace: namespace_d754dd61
	Checksum: 0xD70FD456
	Offset: 0x1BC8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_2365861b()
{
	level waittill("hash_773822d9");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_blackstation_vtol_land_rumble");
		player clientfield::set_to_player("wind_blur", 0);
		player clientfield::set_to_player("wind_effects", 0);
	}
	wait(1);
	level thread namespace_79e1cd97::function_6778ea09("med_se");
	wait(2);
	clientfield::increment("qzone_debris");
}

/*
	Name: function_cc9e7b72
	Namespace: namespace_d754dd61
	Checksum: 0xEB499ED6
	Offset: 0x1CF0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_cc9e7b72()
{
	level waittill("hash_a5a4d60b");
	util::function_93831e79("objective_qzone");
	level flag::set("vtol_jump");
	foreach(player in level.activePlayers)
	{
		player thread namespace_79e1cd97::function_6778ea09("light_se");
	}
	streamerRequest("set", "cp_mi_sing_blackstation_objective_warlord_igc");
}

/*
	Name: function_f197a118
	Namespace: namespace_d754dd61
	Checksum: 0xC07D2098
	Offset: 0x1DF8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f197a118()
{
	level flag::wait_till("vtol_jump");
	trigger::use("trigger_hendricks_start");
	level function_8c1c268a();
}

/*
	Name: function_8c1c268a
	Namespace: namespace_d754dd61
	Checksum: 0x1533F3DA
	Offset: 0x1E58
	Size: 0x127
	Parameters: 0
	Flags: None
*/
function function_8c1c268a()
{
	level.var_2fd26037 thread namespace_79e1cd97::dynamic_run_speed();
	level flag::wait_till("flag_hendricks_bodies");
	level.var_2fd26037 notify("stop_dynamic_run_speed");
	level scene::add_scene_func("cin_bla_02_03_qzone_vign_executed_hendricks", &function_a2790c98);
	level scene::Play("cin_bla_02_03_qzone_vign_executed_hendricks");
	if(!level flag::get("past_school"))
	{
		trigger::use("trigger_hendricks_street");
	}
	wait(1);
	level.var_2fd26037 thread namespace_79e1cd97::dynamic_run_speed();
	level flag::wait_till("warlord_intro_prep");
	level.var_2fd26037 notify("stop_dynamic_run_speed");
}

/*
	Name: function_a2790c98
	Namespace: namespace_d754dd61
	Checksum: 0x267945C2
	Offset: 0x1F88
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_a2790c98(a_ents)
{
	level dialog::function_13b3b16a("plyr_why_would_the_immort_0", 5);
	level flag::set("executed_bodies");
}

/*
	Name: function_d3f417df
	Namespace: namespace_d754dd61
	Checksum: 0xCA416A37
	Offset: 0x1FE0
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_d3f417df()
{
	level flag::wait_till("warlord_move_to_volume");
	trigger::use("triggercolor_b6_warlord_fallback");
	level flag::wait_till("hendricks_moveup");
	trigger::use("triggercolor_mid_qzone");
	level flag::wait_till("warlord_backup");
	trigger::use("triggercolor_hendricks_advance");
	level flag::wait_till("warlord_retreat");
	trigger::use("triggercolor_b7_debriswall_approach");
	level flag::wait_till("qzone_done");
	level thread namespace_4297372::function_973b77f9();
	level.var_2fd26037 thread dialog::say("hend_the_superstorm_s_win_0");
	level thread namespace_79e1cd97::function_d1dc735f();
}

/*
	Name: function_4a444ed5
	Namespace: namespace_d754dd61
	Checksum: 0xA6D864E8
	Offset: 0x2140
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_4a444ed5()
{
	trigger::wait_till("trigger_hendricks_warlord");
	level flag::set("warlord_approach");
	if(isdefined(level.e_speaker))
	{
		level.e_speaker stopsounds();
		wait(0.5);
		if(isdefined(level.e_speaker))
		{
			level.e_speaker delete();
		}
		foreach(player in level.activePlayers)
		{
			player LUINotifyEvent(&"offsite_comms_complete");
		}
	}
	level.var_2fd26037 dialog::say("hend_activity_ahead_sta_0", 0.5);
}

/*
	Name: function_58ded41f
	Namespace: namespace_d754dd61
	Checksum: 0x6682C4DF
	Offset: 0x2298
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_58ded41f()
{
	level waittill("hash_998c624d");
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	nd_cover = GetNode("cover_warlord_engage", "targetname");
	level.var_2fd26037 SetGoal(nd_cover, 1);
	level.var_2fd26037 waittill("goal");
	level.var_2fd26037 ClearForcedGoal();
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
}

/*
	Name: function_c37c7032
	Namespace: namespace_d754dd61
	Checksum: 0xEC81A810
	Offset: 0x2370
	Size: 0x34B
	Parameters: 1
	Flags: None
*/
function function_c37c7032(var_74cd64bc)
{
	level.var_d8ffea14 = GetNodeArray("china_town_warlord_preferred_goal", "targetname");
	spawner::add_spawn_function_group("warlordintro_warlord", "targetname", &function_b287e148);
	if(!var_74cd64bc)
	{
		trigger::wait_till("trigger_warlord_igc");
	}
	foreach(player in level.activePlayers)
	{
		player.w_current = player GetCurrentWeapon();
		player player::switch_to_primary_weapon(1);
	}
	level flag::set("warlord_intro_prep");
	level.var_2fd26037 notify("stop_dynamic_run_speed");
	level.var_2fd26037 ai::set_ignoreall(1);
	level thread namespace_4297372::function_4f531ae2();
	level scene::add_scene_func("cin_bla_03_warlordintro_3rd_sh010", &function_a80d0dfb, "play");
	level scene::add_scene_func("cin_bla_03_warlordintro_3rd_sh150", &function_bf6f9b2f, "play");
	level scene::add_scene_func("cin_bla_03_warlordintro_3rd_sh160", &function_d916bcc0, "done");
	level scene::add_scene_func("cin_bla_03_warlordintro_3rd_sh170", &function_26c954d8, "done");
	level scene::add_scene_func("cin_bla_03_warlordintro_3rd_sh170_hendricks", &function_ec2528a6, "play");
	if(isdefined(level.BZM_BLACKSTATIONDialogue3Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue3Callback]]();
	}
	level scene::Play("cin_bla_03_warlordintro_3rd_sh010");
	level thread objectives::breadcrumb("anchor_intro_breadcrumb", "cp_level_blackstation_climb");
	level thread namespace_8b9f718f::function_109329ae();
	level flag::wait_till("warlord_fight");
	level thread namespace_4297372::function_fa2e45b8();
	level thread function_1db3da90();
}

/*
	Name: function_a80d0dfb
	Namespace: namespace_d754dd61
	Checksum: 0xCA1BF078
	Offset: 0x26C8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_a80d0dfb(a_ents)
{
	level clientfield::set("warlord_exposure", 1);
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("toggle_rain_sprite", 0);
		player thread function_d4e7d4e4();
		player thread namespace_79e1cd97::function_6778ea09("none");
	}
	level flag::wait_till("warlord_fight");
	wait(8);
	savegame::function_5d2cdd99();
}

/*
	Name: function_d916bcc0
	Namespace: namespace_d754dd61
	Checksum: 0xF1169C86
	Offset: 0x27F8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_d916bcc0(a_ents)
{
	level thread scene::Play("cin_bla_03_warlordintro_3rd_sh170_hendricks");
	level thread scene::Play("cin_bla_03_warlordintro_3rd_sh170_civs");
}

/*
	Name: function_26c954d8
	Namespace: namespace_d754dd61
	Checksum: 0x968367B2
	Offset: 0x2850
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function function_26c954d8(a_ents)
{
	level clientfield::set("warlord_exposure", 0);
	level flag::set("warlord_fight");
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("toggle_rain_sprite", 1);
		player thread namespace_79e1cd97::function_6778ea09("light_se");
	}
}

/*
	Name: function_ec2528a6
	Namespace: namespace_d754dd61
	Checksum: 0xDF0C5B75
	Offset: 0x2958
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_ec2528a6(a_ents)
{
	level.var_2fd26037 ai::set_ignoreall(0);
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("toggle_rain_sprite", 1);
		player SwitchToWeapon(player.w_current);
	}
}

/*
	Name: function_bf6f9b2f
	Namespace: namespace_d754dd61
	Checksum: 0xCDDCC07A
	Offset: 0x2A38
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_bf6f9b2f(a_ents)
{
	level waittill("hash_7f71b7e6");
	var_837033c1 = a_ents["warlordintro_civilian_female"];
	var_16095f82 = a_ents["warlordintro_civilian"];
	if(isdefined(var_837033c1))
	{
		var_837033c1 Attach("c_civ_sing_female_wife_behead");
		var_837033c1 Detach("c_civ_sing_female_wife_head");
	}
	if(isdefined(var_16095f82))
	{
		var_16095f82 Attach("c_civ_sing_male_husband_behead");
		var_16095f82 Detach("c_civ_sing_male_husband_head");
	}
}

/*
	Name: function_b5eea60c
	Namespace: namespace_d754dd61
	Checksum: 0xCCC84D2D
	Offset: 0x2B20
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_b5eea60c(a_ents)
{
	var_837033c1 = a_ents["warlordintro_civilian_female"];
	var_16095f82 = a_ents["warlordintro_civilian"];
	if(isdefined(var_837033c1))
	{
		var_837033c1 Attach("c_civ_sing_female_wife_behead");
		var_837033c1 Detach("c_civ_sing_female_wife_head");
	}
	if(isdefined(var_16095f82))
	{
		var_16095f82 Attach("c_civ_sing_male_husband_behead");
		var_16095f82 Detach("c_civ_sing_male_husband_head");
	}
}

/*
	Name: function_1dc7c14c
	Namespace: namespace_d754dd61
	Checksum: 0x4882AA99
	Offset: 0x2C00
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_1dc7c14c(a_ents)
{
	var_837033c1 = a_ents["warlordintro_civilian_female"];
	var_16095f82 = a_ents["warlordintro_civilian"];
	if(isdefined(var_837033c1))
	{
		var_837033c1 Attach("c_civ_sing_female_wife_behead");
		var_837033c1 Detach("c_civ_sing_female_wife_head");
	}
	if(isdefined(var_16095f82))
	{
		var_16095f82 Attach("c_civ_sing_male_husband_behead");
		var_16095f82 Detach("c_civ_sing_male_husband_head");
	}
}

/*
	Name: function_d4e7d4e4
	Namespace: namespace_d754dd61
	Checksum: 0x72218E25
	Offset: 0x2CE0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d4e7d4e4()
{
	self endon("death");
	self EnableInvulnerability();
	level flag::wait_till("warlord_fight");
	wait(6);
	self DisableInvulnerability();
}

/*
	Name: function_5d3711fa
	Namespace: namespace_d754dd61
	Checksum: 0xC0A7CC20
	Offset: 0x2D48
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_5d3711fa()
{
	self waittill("death");
	wait(1);
	level flag::set("warlord_backup");
	level flag::set("warlord_retreat");
	self WarlordInterface::ClearAllPreferedPoints();
}

/*
	Name: function_55e47c3e
	Namespace: namespace_d754dd61
	Checksum: 0x23CD9664
	Offset: 0x2DC0
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_55e47c3e()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self.goalRadius = 1;
}

/*
	Name: function_62364f6c
	Namespace: namespace_d754dd61
	Checksum: 0xE8FE93DE
	Offset: 0x2E10
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_62364f6c(var_66d4a87c)
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self util::magic_bullet_shield();
	if(isdefined(var_66d4a87c))
	{
		nd_start = GetNode(self.script_noteworthy, "targetname");
		self.e_org = spawn("script_origin", self.origin);
		self LinkTo(self.e_org);
		self.e_org moveto(nd_start.origin, 3);
		self.e_org waittill("movedone");
	}
	level flag::wait_till("warlord_fight");
	self Unlink();
	if(isdefined(self.e_org))
	{
		self.e_org delete();
	}
}

/*
	Name: function_284a57a6
	Namespace: namespace_d754dd61
	Checksum: 0xD3B28D21
	Offset: 0x2F98
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_284a57a6()
{
	self endon("death");
	self waittill("goal");
	wait(RandomFloatRange(0.5, 1.5));
	self ClearForcedGoal();
}

/*
	Name: function_b287e148
	Namespace: namespace_d754dd61
	Checksum: 0x7B8F805E
	Offset: 0x2FF8
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_b287e148()
{
	self endon("death");
	self SetThreatBiasGroup("warlords");
	setthreatbias("heroes", "warlords", -1000);
	self thread function_b48ee8e();
	self.goalHeight = 512;
	foreach(node in level.var_d8ffea14)
	{
		self WarlordInterface::AddPreferedPoint(node.origin, 4000, 8000);
	}
	e_volume = GetEnt("vol_qzone_warlord", "targetname");
	self SetGoal(e_volume);
	level flag::wait_till("warlord_retreat");
	e_vol = GetEnt("vol_fallback_warlord", "targetname");
	self SetGoal(e_vol);
}

/*
	Name: function_b48ee8e
	Namespace: namespace_d754dd61
	Checksum: 0x9FF9DA0C
	Offset: 0x31C8
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_b48ee8e()
{
	self endon("death");
	self thread function_5e294934();
	n_counter = 0;
	var_cbd11028 = [];
	var_cbd11028[0] = "hend_grenades_ain_t_gonna_0";
	var_cbd11028[1] = "hend_explosives_ain_t_doi_0";
	var_77987920 = [];
	var_77987920[0] = "plyr_i_hear_you_1";
	var_b3d77f58 = 0;
	while(!var_b3d77f58)
	{
		self util::waittill_any("projectile_applyattractor", "play_meleefx");
		level.var_2fd26037 dialog::say(var_cbd11028[n_counter], 0.5);
		if(!n_counter)
		{
			level dialog::function_13b3b16a(var_77987920[n_counter], 0.5);
		}
		n_counter++;
		if(n_counter == var_cbd11028.size)
		{
			var_b3d77f58 = 1;
		}
	}
}

/*
	Name: function_5e294934
	Namespace: namespace_d754dd61
	Checksum: 0x1D05B9D4
	Offset: 0x3310
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5e294934()
{
	self endon("death");
	wait(40);
	level.var_2fd26037 dialog::say("hend_come_on_take_that_0");
	level dialog::function_13b3b16a("plyr_i_m_on_it_1", 0.5);
}

/*
	Name: function_d6aa8860
	Namespace: namespace_d754dd61
	Checksum: 0xCF559C9F
	Offset: 0x3378
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_d6aa8860()
{
	level flag::wait_till("warlord_fight");
	vh_truck = vehicle::simple_spawn_single("truck_warlord");
	vh_truck vehicle::lights_off();
	vh_truck util::magic_bullet_shield();
	vh_truck thread namespace_79e1cd97::function_c262adca();
	vh_truck playsound("evt_tech_driveup_1");
	vh_truck turret::disable_ai_getoff(1, 1);
	vh_truck turret::enable(1, 1);
	vh_truck turret::disable_ai_getoff(1, 0);
	level scene::init("p7_fxanim_blackstation_warlord_intro_truck_bundle", vh_truck);
	level thread function_e20bd5ba(3, "warlord_backup");
	wait(5);
	vh_truck namespace_79e1cd97::function_fae23684("passenger1");
	vh_truck playsound("evt_tech_driveup_2");
	level scene::Play("p7_fxanim_blackstation_warlord_intro_truck_bundle", vh_truck);
	wait(1);
	vh_truck thread namespace_79e1cd97::function_fae23684("driver");
	vh_truck thread namespace_79e1cd97::function_d01267bd(level.players.size - 1, 2, "warlord_fight_done");
	vh_truck util::stop_magic_bullet_shield();
	vh_truck MakeVehicleUsable();
	vh_truck SetSeatOccupied(0);
}

/*
	Name: function_6e4c2eec
	Namespace: namespace_d754dd61
	Checksum: 0xC5CCE4A3
	Offset: 0x35C8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_6e4c2eec()
{
	trigger::wait_till("trigger_warlord_backup");
	level flag::set("warlord_backup");
	level thread function_9986fb74();
	level thread function_8a27424();
	trigger::wait_till("trigger_warlord_reinforce");
	level flag::set("warlord_reinforce");
}

/*
	Name: function_ed2f4785
	Namespace: namespace_d754dd61
	Checksum: 0xDE164A25
	Offset: 0x3678
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_ed2f4785()
{
	level flag::wait_till("warlord_backup");
	spawn_manager::enable("sm_warlord_launchers");
	util::wait_network_frame();
	spawner::simple_spawn("warlord_backup_point");
	wait(2);
	spawner::simple_spawn("warlord_backup");
	util::wait_network_frame();
	spawn_manager::enable("sm_warlord_support");
	if(level.players.size == 4)
	{
		util::wait_network_frame();
		spawner::simple_spawn_single("warlord_partner", &function_b287e148);
	}
	level thread function_5cbefffa();
	level flag::wait_till("warlord_reinforce");
	spawner::add_spawn_function_group("warlord_reinforce", "targetname", &function_2551879c);
	spawn_manager::enable("sm_warlord_reinforce");
	spawn_manager::function_347e835a("sm_warlord_reinforce");
	level thread function_e20bd5ba(3, "warlord_retreat");
	level thread function_5b06f894();
	level thread function_43439f74();
}

/*
	Name: function_2551879c
	Namespace: namespace_d754dd61
	Checksum: 0x599C57F7
	Offset: 0x3868
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_2551879c()
{
	self ai::set_behavior_attribute("sprint", 1);
	self ai::set_ignoreall(1);
	self.goalRadius = 4;
	self waittill("goal");
	self ai::set_behavior_attribute("sprint", 0);
	self ai::set_ignoreall(0);
	self.goalRadius = 2048;
}

/*
	Name: function_5cbefffa
	Namespace: namespace_d754dd61
	Checksum: 0x7E3A534C
	Offset: 0x3908
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5cbefffa()
{
	spawner::waittill_ai_group_count("group_warlord_backup", 3);
	level flag::set("warlord_reinforce");
}

/*
	Name: function_43439f74
	Namespace: namespace_d754dd61
	Checksum: 0x886B7408
	Offset: 0x3958
	Size: 0x181
	Parameters: 0
	Flags: None
*/
function function_43439f74()
{
	while(1)
	{
		a_ai_enemies = GetAITeamArray("axis");
		if(a_ai_enemies.size < 4)
		{
			break;
		}
		wait(1);
	}
	a_ai_enemies = GetAITeamArray("axis");
	foreach(ai_enemy in a_ai_enemies)
	{
		if(isalive(ai_enemy))
		{
			if(ai_enemy.archetype != "warlord" && ai_enemy.targetname !== "warlord_launcher_ai" && level.activePlayers.size)
			{
				e_player = level.activePlayers[RandomInt(level.activePlayers.size)];
				ai_enemy SetGoal(e_player, 1);
			}
		}
	}
}

/*
	Name: function_5b06f894
	Namespace: namespace_d754dd61
	Checksum: 0x778F84B6
	Offset: 0x3AE8
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_5b06f894()
{
	level endon("hash_e2a9cc43");
	while(GetAITeamArray("axis").size)
	{
		wait(0.5);
	}
	level thread namespace_4297372::function_973b77f9();
	wait(1);
	level.var_2fd26037 dialog::say("hend_all_clear_2");
	level dialog::function_13b3b16a("plyr_that_was_one_tough_s_0", 1);
	level.var_2fd26037 dialog::say("hend_i_wouldn_t_doubt_it_0", 0.5);
	level flag::set("qzone_done");
}

/*
	Name: function_e20bd5ba
	Namespace: namespace_d754dd61
	Checksum: 0xA296A39
	Offset: 0x3BD0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_e20bd5ba(var_9605ac0b, str_flag)
{
	while(GetAICount() > var_9605ac0b + 1)
	{
		wait(1);
	}
	level flag::set(str_flag);
}

/*
	Name: function_8a27424
	Namespace: namespace_d754dd61
	Checksum: 0xE34F37E6
	Offset: 0x3C30
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_8a27424()
{
	level flag::wait_till("warlord_retreat");
	trigger::use("triggercolor_warlord_fallback");
}

/*
	Name: function_9986fb74
	Namespace: namespace_d754dd61
	Checksum: 0xEB91E986
	Offset: 0x3C78
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_9986fb74()
{
	level endon("hash_4df70616");
	while(1)
	{
		level namespace_79e1cd97::function_59c54810();
		wait(RandomFloatRange(3.5, 5.5));
	}
}

/*
	Name: function_1db3da90
	Namespace: namespace_d754dd61
	Checksum: 0x21B40C65
	Offset: 0x3CD0
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_1db3da90()
{
	level thread scene::Play("p7_fxanim_cp_blackstation_shelter_wind_gust_bundle");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_blackstation_shelter_rumble");
	}
}

/*
	Name: function_ec18f079
	Namespace: namespace_d754dd61
	Checksum: 0x72BEF0E6
	Offset: 0x3D90
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_ec18f079()
{
	self endon("death");
	while(!level flag::get("warlord_intro_prep"))
	{
		trigger::wait_till("trigger_qzone_lowready", "targetname", self);
		self util::function_16c71b8(0);
		while(self istouching(GetEnt("trigger_qzone_lowready", "targetname")))
		{
			wait(1);
		}
		self util::function_16c71b8(1);
		self thread function_7072c5d8();
	}
	self util::function_16c71b8(0);
}

/*
	Name: function_7072c5d8
	Namespace: namespace_d754dd61
	Checksum: 0x1D134397
	Offset: 0x3E90
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_7072c5d8()
{
	self notify("hash_ca4d6265");
	self endon("hash_ca4d6265");
	self endon("death");
	level endon("hash_37a7f1b3");
	while(1)
	{
		self waittill("player_revived");
		if(level flag::get("warlord_intro_prep"))
		{
			break;
		}
		if(!self istouching(GetEnt("trigger_qzone_lowready", "targetname")))
		{
			self util::function_16c71b8(1);
		}
	}
}

/*
	Name: function_69df1ce
	Namespace: namespace_d754dd61
	Checksum: 0x9FBB5A8A
	Offset: 0x3F58
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_69df1ce()
{
	level flag::wait_till("warlord_fight");
	level.var_2fd26037 dialog::say("hend_gotta_get_to_cover_0", 1);
	level.var_2fd26037 dialog::say("hend_heads_up_we_got_a_t_0", 1);
	level flag::wait_till("warlord_backup");
	if(level.players.size > 2)
	{
		level.var_2fd26037 dialog::say("hend_rpg_up_high_0", 4);
	}
	else
	{
		level.var_2fd26037 dialog::say("hend_hostiles_in_the_buil_0", 4);
	}
	level.var_2fd26037 dialog::say("hend_clear_em_out_doub_0", 4);
	level.var_2fd26037 dialog::say("hend_hit_him_with_the_mic_0", 1);
}

/*
	Name: function_e41dbcaa
	Namespace: namespace_d754dd61
	Checksum: 0xAFC58E31
	Offset: 0x40B0
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_e41dbcaa()
{
	level flag::wait_till("vtol_jump");
	level thread namespace_4297372::function_240ac8fa();
	level.var_2fd26037 dialog::say("hend_kane_we_re_on_grou_0");
	level dialog::remote("kane_copy_that_hendricks_0", 0.5);
	wait(1);
	level flag::set("obj_goto_docks");
	trigger::wait_till("trigger_hendricks_interact");
	playsoundatposition("evt_qzone_warlord_walla", (8795, 3873, -10));
}

/*
	Name: function_251d954
	Namespace: namespace_d754dd61
	Checksum: 0xE302A0FA
	Offset: 0x41A0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_251d954()
{
	level endon("hash_f2e469a3");
	level flag::wait_till("executed_bodies");
	wait(2.5);
	if(!level flag::get("warlord_approach"))
	{
		level dialog::remote("kane_if_sensitive_materia_0", 0, "dni", undefined, 1);
		wait(0.5);
		level.var_2fd26037 dialog::say("hend_understood_we_re_o_0");
	}
}

/*
	Name: function_6ec9ed4d
	Namespace: namespace_d754dd61
	Checksum: 0x7E29F993
	Offset: 0x4258
	Size: 0x17B
	Parameters: 2
	Flags: None
*/
function function_6ec9ed4d(str_objective, var_74cd64bc)
{
	load::function_73adcefc();
	namespace_79e1cd97::function_bff1a867("objective_igc");
	vehicle::add_spawn_function("vtol_intro", &function_5c4b60ce);
	vh_vtol = vehicle::simple_spawn_single("vtol_intro");
	level scene::init("cin_bla_01_01_intro_1st");
	level thread function_fec14fdd();
	level thread function_f197a118();
	level thread function_58ded41f();
	level thread namespace_79e1cd97::function_5d4fc658();
	level thread function_4a444ed5();
	level flag::wait_till("vtol_jump");
	level clientfield::set("gameplay_started", 1);
	level skipto::function_be8adfb8("objective_igc");
}

/*
	Name: function_25dc0657
	Namespace: namespace_d754dd61
	Checksum: 0xF660A93
	Offset: 0x43E0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_25dc0657(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_a19cdfad
	Namespace: namespace_d754dd61
	Checksum: 0x2F345ED0
	Offset: 0x4410
	Size: 0x31B
	Parameters: 2
	Flags: None
*/
function function_a19cdfad(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread function_13820fbf();
		namespace_79e1cd97::function_bff1a867("objective_qzone");
		level scene::init("cin_bla_03_warlordintro_3rd_sh010");
		load::function_a2995f22();
		level thread function_8c1c268a();
		level thread function_58ded41f();
		level thread namespace_79e1cd97::function_5d4fc658();
		level thread function_4a444ed5();
		level flag::set("vtol_jump");
		trigger::use("trigger_hendricks_start");
		foreach(player in level.players)
		{
			player SwitchToWeapon(GetWeapon("micromissile_launcher"));
		}
		level thread namespace_79e1cd97::function_6778ea09("light_se");
	}
	foreach(player in level.activePlayers)
	{
		player thread function_ec18f079();
	}
	level thread function_f9c8936b();
	level thread function_2f7b86f3();
	level thread function_e41dbcaa();
	level thread function_251d954();
	if(isdefined(level.BZM_BLACKSTATIONDialogue2Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue2Callback]]();
	}
	level thread function_c37c7032(0);
	trigger::wait_till("trigger_warlord_igc");
	level skipto::function_be8adfb8("objective_qzone");
}

/*
	Name: function_58aef8b7
	Namespace: namespace_d754dd61
	Checksum: 0x79551348
	Offset: 0x4738
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_58aef8b7(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_2f7b86f3
	Namespace: namespace_d754dd61
	Checksum: 0x144E0329
	Offset: 0x4768
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_2f7b86f3()
{
	objectives::breadcrumb("qzone_breadcrumb");
	objectives::breadcrumb("warlord_intro_breadcrumb", "cp_level_blackstation_climb");
}

/*
	Name: function_b457621f
	Namespace: namespace_d754dd61
	Checksum: 0xD0DB405D
	Offset: 0x47B0
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function function_b457621f(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread function_13820fbf();
		namespace_79e1cd97::function_bff1a867("objective_warlord_igc");
		level thread namespace_79e1cd97::function_5d4fc658();
		level scene::init("cin_bla_03_warlordintro_3rd_sh010");
		level flag::set("obj_goto_docks");
		load::function_a2995f22();
		level thread function_c37c7032(1);
		level thread function_58ded41f();
		level thread function_da48c515();
	}
	level flag::wait_till("warlord_fight");
	level skipto::function_be8adfb8("objective_warlord_igc");
}

/*
	Name: function_487563c5
	Namespace: namespace_d754dd61
	Checksum: 0x7A3F696
	Offset: 0x4908
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_487563c5(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_da48c515
	Namespace: namespace_d754dd61
	Checksum: 0x4A89495F
	Offset: 0x4938
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_da48c515()
{
	objectives::breadcrumb("warlord_intro_breadcrumb", "cp_level_blackstation_climb");
}

/*
	Name: function_f1376b81
	Namespace: namespace_d754dd61
	Checksum: 0xE6CF67CF
	Offset: 0x4968
	Size: 0x4F3
	Parameters: 2
	Flags: None
*/
function function_f1376b81(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_warlord");
		level.var_2fd26037 ai::set_ignoreme(1);
		level.var_2fd26037 ai::set_ignoreall(1);
		level thread namespace_79e1cd97::function_5d4fc658();
		level thread function_13820fbf();
		level thread objectives::breadcrumb("anchor_intro_breadcrumb", "cp_level_blackstation_climb");
		level thread namespace_8b9f718f::function_109329ae();
		level thread scene::skipto_end("p7_fxanim_cp_blackstation_shelter_wind_gust_bundle");
		var_c7a78bed = spawner::simple_spawn_single("warlordintro_warlord", &function_5a4025b4);
		for(x = 0; x < 3; x++)
		{
			spawner::simple_spawn("warlord_igc_" + x, &function_5a4025b4);
		}
		level.var_d8ffea14 = GetNodeArray("china_town_warlord_preferred_goal", "targetname");
		var_c7a78bed thread function_5d3711fa();
		var_c7a78bed thread function_b287e148();
		level flag::set("obj_goto_docks");
		level flag::set("warlord_fight");
		level thread namespace_4297372::function_fa2e45b8();
		level thread function_58ded41f();
		level notify("hash_998c624d");
		load::function_a2995f22();
		wait(0.1);
		foreach(player in level.activePlayers)
		{
			player SwitchToWeapon(GetWeapon("micromissile_launcher"));
		}
		level.var_2fd26037 ai::set_ignoreme(0);
		level.var_2fd26037 ai::set_ignoreall(0);
	}
	level thread namespace_23567e72::function_f0b50148();
	level thread namespace_79e1cd97::function_46dd77b0();
	level thread function_d6aa8860();
	level thread function_ed2f4785();
	level thread function_6e4c2eec();
	level thread function_69df1ce();
	level thread namespace_8b9f718f::function_21f63154();
	foreach(player in level.activePlayers)
	{
		player util::function_16c71b8(0);
		player thread coop::function_e9f7384d();
	}
	trigger::wait_till("trigger_hendricks_hotel_approach");
	level flag::set("warlord_fight_done");
	level skipto::function_be8adfb8("objective_warlord");
}

/*
	Name: function_68cbd90b
	Namespace: namespace_d754dd61
	Checksum: 0x53F0AE7B
	Offset: 0x4E68
	Size: 0x6B
	Parameters: 4
	Flags: None
*/
function function_68cbd90b(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread namespace_79e1cd97::function_d70754a2();
	function_6ddd4fa4("lt_wharf_water");
	function_6ddd4fa4("vista_water");
}

/*
	Name: function_5a4025b4
	Namespace: namespace_d754dd61
	Checksum: 0x4AAEF245
	Offset: 0x4EE0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5a4025b4()
{
	self endon("death");
	self ai::set_ignoreall(1);
	wait(3);
	self ai::set_ignoreall(0);
}

/*
	Name: function_f9c8936b
	Namespace: namespace_d754dd61
	Checksum: 0x77412D02
	Offset: 0x4F30
	Size: 0x159
	Parameters: 0
	Flags: None
*/
function function_f9c8936b()
{
	clientfield::set("roof_panels_init", 1);
	level thread function_f55bf5a1();
	level flag::wait_till("roof_panels");
	clientfield::set("roof_panels_play", 1);
	wait(2);
	var_b8a6ac3 = GetEnt("trigger_roof_panels", "targetname");
	foreach(player in level.activePlayers)
	{
		if(player istouching(var_b8a6ac3))
		{
			player PlayRumbleOnEntity("bs_wind_rumble_low");
		}
	}
}

/*
	Name: function_f55bf5a1
	Namespace: namespace_d754dd61
	Checksum: 0x6D27A03
	Offset: 0x5098
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f55bf5a1()
{
	var_7c2cfb61 = GetEnt("roof_panel", "targetname");
	Array::thread_all(level.activePlayers, &function_855a3b1c, var_7c2cfb61);
}

/*
	Name: function_855a3b1c
	Namespace: namespace_d754dd61
	Checksum: 0x31629277
	Offset: 0x5100
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_855a3b1c(var_7c2cfb61)
{
	self endon("death");
	level endon("hash_ce8b314b");
	self util::waittill_player_looking_at(var_7c2cfb61.origin, 45, 1);
	level flag::set("roof_panels");
}

/*
	Name: function_13820fbf
	Namespace: namespace_d754dd61
	Checksum: 0xAECC5068
	Offset: 0x5178
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_13820fbf()
{
	objectives::set("cp_level_blackstation_qzone");
	objectives::set("cp_level_blackstation_intercept");
	level flag::wait_till("obj_goto_docks");
	objectives::set("cp_level_blackstation_intercept");
	objectives::set("cp_level_blackstation_goto_docks");
	level flag::wait_till("warlord_fight");
	objectives::set("cp_level_blackstation_neutralize");
	level flag::wait_till("qzone_done");
	objectives::complete("cp_level_blackstation_neutralize");
}


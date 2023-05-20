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
	Name: function_d290ebfa
	Namespace: namespace_d754dd61
	Checksum: 0x4F9717A6
	Offset: 0x1298
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
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
	level namespace_cc27597::function_8f9f34e0("cin_bla_01_01_intro_1st", &function_1ab4414c, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bla_01_01_intro_1st", &function_b1896f5, "players_done");
	level namespace_cc27597::function_8f9f34e0("cin_bla_01_01_intro_1st", &function_72332b44, "skip_completed");
	namespace_d7916d65::function_c32ba481();
	namespace_82b91a51::function_46d3a558(&"CP_MI_SING_BLACKSTATION_INTRO_LINE_1_FULL", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_1_SHORT", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_2_FULL", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_2_SHORT", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_3_FULL", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_3_SHORT", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_4_FULL", &"CP_MI_SING_BLACKSTATION_INTRO_LINE_4_SHORT", "", "", 12);
	if(isdefined(level.var_fce615e8))
	{
		level thread [[level.var_fce615e8]]();
	}
	level thread namespace_cc27597::function_43718187("cin_bla_01_01_intro_1st");
	level namespace_ce7c3ed5::function_7e61de2b(0);
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
	var_e498e5fe = function_99201f25("vtol_lights", "targetname");
	foreach(var_7c14d90b in var_e498e5fe)
	{
		var_7c14d90b function_37f7858a(self);
		var_7c14d90b thread function_5a717a52();
	}
	self function_8ff2374e("veh_t7_mil_vtol_egypt_cabin_details_attch", "tag_body_animate");
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
		self function_dc8c8404();
	}
}

/*
	Name: function_1ab4414c
	Namespace: namespace_d754dd61
	Checksum: 0x23D96239
	Offset: 0x1568
	Size: 0x249
	Parameters: 1
	Flags: None
*/
function function_1ab4414c(var_c77d2837)
{
	level namespace_cc27597::function_2b43c3f9("intro_qzone", "notetrack_catch");
	level namespace_cc27597::function_2b43c3f9("intro_qzone", "notetrack_start_rain");
	level namespace_cc27597::function_2b43c3f9("intro_qzone", "notetrack_fall");
	level namespace_cc27597::function_2b43c3f9("intro_qzone", "notetrack_land");
	level namespace_cc27597::function_2b43c3f9("intro_qzone", "intro_done");
	level thread function_d9d7be12();
	level thread function_bc49a6ce();
	level thread function_202f6b4c();
	level thread function_211d4422();
	level thread function_2365861b();
	level thread function_cc9e7b72();
	level thread function_13820fbf();
	if(!isdefined(level.var_25647ecb))
	{
		level.var_25647ecb = function_9b7fda5e("script_origin", (0, 0, 0));
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_cb53a41e(function_c4d5ec1f("micromissile_launcher"));
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
function function_b1896f5(var_c77d2837)
{
	level namespace_82b91a51::function_93831e79("qzone_teleport_pos");
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
function function_72332b44(var_c77d2837)
{
	namespace_82b91a51::function_7e61de2b(0, "black", "hide_qzone_stream");
	level namespace_82b91a51::function_7d553ac6();
	level thread function_6c7970a2();
	level namespace_82b91a51::function_c9aa1ff("qzone_streamer_read", 5);
	level notify("hash_7769e801");
	namespace_82b91a51::function_593c2af4(0.5, "black", "hide_qzone_stream");
	level namespace_82b91a51::function_f7beb173();
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
	level namespace_82b91a51::function_11a89b44();
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
	level namespace_ce7c3ed5::function_593c2af4(3);
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
	function_37cbcf1a("evt_player_catch_weapon", (0, 0, 0));
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_blackstation_intro_weapon_catch");
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
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_79e1cd97::function_6778ea09("light_se");
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("toggle_rain_sprite", 1);
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
	level.var_25647ecb function_eaa69754(1);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("wind_blur", 1);
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("wind_effects", 1);
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
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_blackstation_vtol_land_rumble");
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("wind_blur", 0);
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("wind_effects", 0);
	}
	wait(1);
	level thread namespace_79e1cd97::function_6778ea09("med_se");
	wait(2);
	namespace_71e9cb84::function_331efedc("qzone_debris");
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
	namespace_82b91a51::function_93831e79("objective_qzone");
	level namespace_ad23e503::function_74d6b22f("vtol_jump");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_79e1cd97::function_6778ea09("light_se");
	}
	function_d4f82627("set", "cp_mi_sing_blackstation_objective_warlord_igc");
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
	level namespace_ad23e503::function_1ab5ebec("vtol_jump");
	namespace_4dbf3ae3::function_42e87952("trigger_hendricks_start");
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
	level.var_2fd26037 thread namespace_79e1cd97::function_ba29155a();
	level namespace_ad23e503::function_1ab5ebec("flag_hendricks_bodies");
	level.var_2fd26037 notify("hash_a2ba32d");
	level namespace_cc27597::function_8f9f34e0("cin_bla_02_03_qzone_vign_executed_hendricks", &function_a2790c98);
	level namespace_cc27597::function_43718187("cin_bla_02_03_qzone_vign_executed_hendricks");
	if(!level namespace_ad23e503::function_7922262b("past_school"))
	{
		namespace_4dbf3ae3::function_42e87952("trigger_hendricks_street");
	}
	wait(1);
	level.var_2fd26037 thread namespace_79e1cd97::function_ba29155a();
	level namespace_ad23e503::function_1ab5ebec("warlord_intro_prep");
	level.var_2fd26037 notify("hash_a2ba32d");
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
function function_a2790c98(var_c77d2837)
{
	level namespace_71b8dba1::function_13b3b16a("plyr_why_would_the_immort_0", 5);
	level namespace_ad23e503::function_74d6b22f("executed_bodies");
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
	level namespace_ad23e503::function_1ab5ebec("warlord_move_to_volume");
	namespace_4dbf3ae3::function_42e87952("triggercolor_b6_warlord_fallback");
	level namespace_ad23e503::function_1ab5ebec("hendricks_moveup");
	namespace_4dbf3ae3::function_42e87952("triggercolor_mid_qzone");
	level namespace_ad23e503::function_1ab5ebec("warlord_backup");
	namespace_4dbf3ae3::function_42e87952("triggercolor_hendricks_advance");
	level namespace_ad23e503::function_1ab5ebec("warlord_retreat");
	namespace_4dbf3ae3::function_42e87952("triggercolor_b7_debriswall_approach");
	level namespace_ad23e503::function_1ab5ebec("qzone_done");
	level thread namespace_4297372::function_973b77f9();
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_the_superstorm_s_win_0");
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
	namespace_4dbf3ae3::function_1ab5ebec("trigger_hendricks_warlord");
	level namespace_ad23e503::function_74d6b22f("warlord_approach");
	if(isdefined(level.var_b87b8f90))
	{
		level.var_b87b8f90 function_39419ae5();
		wait(0.5);
		if(isdefined(level.var_b87b8f90))
		{
			level.var_b87b8f90 function_dc8c8404();
		}
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_5b7e454a(&"offsite_comms_complete");
		}
	}
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_activity_ahead_sta_0", 0.5);
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
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	var_974cc07 = function_b4cb3503("cover_warlord_engage", "targetname");
	level.var_2fd26037 function_169cc712(var_974cc07, 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level.var_2fd26037 function_e11ce512();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
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
	level.var_d8ffea14 = function_fe0cfd2e("china_town_warlord_preferred_goal", "targetname");
	namespace_2f06d687::function_2b37a3c9("warlordintro_warlord", "targetname", &function_b287e148);
	if(!var_74cd64bc)
	{
		namespace_4dbf3ae3::function_1ab5ebec("trigger_warlord_igc");
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a.var_d13f855e = var_5dc5e20a function_48c6a3a2();
		var_5dc5e20a namespace_5dc5e20a::function_51bdb647(1);
	}
	level namespace_ad23e503::function_74d6b22f("warlord_intro_prep");
	level.var_2fd26037 notify("hash_a2ba32d");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level thread namespace_4297372::function_4f531ae2();
	level namespace_cc27597::function_8f9f34e0("cin_bla_03_warlordintro_3rd_sh010", &function_a80d0dfb, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bla_03_warlordintro_3rd_sh150", &function_bf6f9b2f, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bla_03_warlordintro_3rd_sh160", &function_d916bcc0, "done");
	level namespace_cc27597::function_8f9f34e0("cin_bla_03_warlordintro_3rd_sh170", &function_26c954d8, "done");
	level namespace_cc27597::function_8f9f34e0("cin_bla_03_warlordintro_3rd_sh170_hendricks", &function_ec2528a6, "play");
	if(isdefined(level.var_90895ee2))
	{
		level thread [[level.var_90895ee2]]();
	}
	level namespace_cc27597::function_43718187("cin_bla_03_warlordintro_3rd_sh010");
	level thread namespace_d0ef8521::function_45d1556("anchor_intro_breadcrumb", "cp_level_blackstation_climb");
	level thread namespace_8b9f718f::function_109329ae();
	level namespace_ad23e503::function_1ab5ebec("warlord_fight");
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
function function_a80d0dfb(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("warlord_exposure", 1);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("toggle_rain_sprite", 0);
		var_5dc5e20a thread function_d4e7d4e4();
		var_5dc5e20a thread namespace_79e1cd97::function_6778ea09("none");
	}
	level namespace_ad23e503::function_1ab5ebec("warlord_fight");
	wait(8);
	namespace_9f824288::function_5d2cdd99();
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
function function_d916bcc0(var_c77d2837)
{
	level thread namespace_cc27597::function_43718187("cin_bla_03_warlordintro_3rd_sh170_hendricks");
	level thread namespace_cc27597::function_43718187("cin_bla_03_warlordintro_3rd_sh170_civs");
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
function function_26c954d8(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("warlord_exposure", 0);
	level namespace_ad23e503::function_74d6b22f("warlord_fight");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("toggle_rain_sprite", 1);
		var_5dc5e20a thread namespace_79e1cd97::function_6778ea09("light_se");
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
function function_ec2528a6(var_c77d2837)
{
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("toggle_rain_sprite", 1);
		var_5dc5e20a function_cb53a41e(var_5dc5e20a.var_d13f855e);
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
function function_bf6f9b2f(var_c77d2837)
{
	level waittill("hash_7f71b7e6");
	var_837033c1 = var_c77d2837["warlordintro_civilian_female"];
	var_16095f82 = var_c77d2837["warlordintro_civilian"];
	if(isdefined(var_837033c1))
	{
		var_837033c1 function_8ff2374e("c_civ_sing_female_wife_behead");
		var_837033c1 function_cb3bf380("c_civ_sing_female_wife_head");
	}
	if(isdefined(var_16095f82))
	{
		var_16095f82 function_8ff2374e("c_civ_sing_male_husband_behead");
		var_16095f82 function_cb3bf380("c_civ_sing_male_husband_head");
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
function function_b5eea60c(var_c77d2837)
{
	var_837033c1 = var_c77d2837["warlordintro_civilian_female"];
	var_16095f82 = var_c77d2837["warlordintro_civilian"];
	if(isdefined(var_837033c1))
	{
		var_837033c1 function_8ff2374e("c_civ_sing_female_wife_behead");
		var_837033c1 function_cb3bf380("c_civ_sing_female_wife_head");
	}
	if(isdefined(var_16095f82))
	{
		var_16095f82 function_8ff2374e("c_civ_sing_male_husband_behead");
		var_16095f82 function_cb3bf380("c_civ_sing_male_husband_head");
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
function function_1dc7c14c(var_c77d2837)
{
	var_837033c1 = var_c77d2837["warlordintro_civilian_female"];
	var_16095f82 = var_c77d2837["warlordintro_civilian"];
	if(isdefined(var_837033c1))
	{
		var_837033c1 function_8ff2374e("c_civ_sing_female_wife_behead");
		var_837033c1 function_cb3bf380("c_civ_sing_female_wife_head");
	}
	if(isdefined(var_16095f82))
	{
		var_16095f82 function_8ff2374e("c_civ_sing_male_husband_behead");
		var_16095f82 function_cb3bf380("c_civ_sing_male_husband_head");
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
	self endon("hash_128f8789");
	self function_83fd42b5();
	level namespace_ad23e503::function_1ab5ebec("warlord_fight");
	wait(6);
	self function_4890e520();
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
	self waittill("hash_128f8789");
	wait(1);
	level namespace_ad23e503::function_74d6b22f("warlord_backup");
	level namespace_ad23e503::function_74d6b22f("warlord_retreat");
	self namespace_69ee7109::function_94b1213d();
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
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_7dfaf62 = 1;
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
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_82b91a51::function_958c7633();
	if(isdefined(var_66d4a87c))
	{
		var_3c54858a = function_b4cb3503(self.var_caae374e, "targetname");
		self.var_2c3a4ffd = function_9b7fda5e("script_origin", self.var_722885f3);
		self function_37f7858a(self.var_2c3a4ffd);
		self.var_2c3a4ffd function_a96a2721(var_3c54858a.var_722885f3, 3);
		self.var_2c3a4ffd waittill("hash_a21db68a");
	}
	level namespace_ad23e503::function_1ab5ebec("warlord_fight");
	self function_52fddbd0();
	if(isdefined(self.var_2c3a4ffd))
	{
		self.var_2c3a4ffd function_dc8c8404();
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
	self endon("hash_128f8789");
	self waittill("hash_41d1aaf0");
	wait(function_72a94f05(0.5, 1.5));
	self function_e11ce512();
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
	self endon("hash_128f8789");
	self function_c7708f99("warlords");
	function_49e95dc0("heroes", "warlords", -1000);
	self thread function_b48ee8e();
	self.var_a1ed1ed1 = 512;
	foreach(var_90ca1fdd in level.var_d8ffea14)
	{
		self namespace_69ee7109::function_da308a83(var_90ca1fdd.var_722885f3, 4000, 8000);
	}
	var_67825717 = function_6ada35ba("vol_qzone_warlord", "targetname");
	self function_169cc712(var_67825717);
	level namespace_ad23e503::function_1ab5ebec("warlord_retreat");
	var_9c169a5c = function_6ada35ba("vol_fallback_warlord", "targetname");
	self function_169cc712(var_9c169a5c);
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
	self endon("hash_128f8789");
	self thread function_5e294934();
	var_6f40e488 = 0;
	var_cbd11028 = [];
	var_cbd11028[0] = "hend_grenades_ain_t_gonna_0";
	var_cbd11028[1] = "hend_explosives_ain_t_doi_0";
	var_77987920 = [];
	var_77987920[0] = "plyr_i_hear_you_1";
	var_b3d77f58 = 0;
	while(!var_b3d77f58)
	{
		self namespace_82b91a51::function_5b7e3888("projectile_applyattractor", "play_meleefx");
		level.var_2fd26037 namespace_71b8dba1::function_81141386(var_cbd11028[var_6f40e488], 0.5);
		if(!var_6f40e488)
		{
			level namespace_71b8dba1::function_13b3b16a(var_77987920[var_6f40e488], 0.5);
		}
		var_6f40e488++;
		if(var_6f40e488 == var_cbd11028.size)
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
	self endon("hash_128f8789");
	wait(40);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_come_on_take_that_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_m_on_it_1", 0.5);
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
	level namespace_ad23e503::function_1ab5ebec("warlord_fight");
	var_45900c37 = namespace_96fa87af::function_7387a40a("truck_warlord");
	var_45900c37 namespace_96fa87af::function_3762fc40();
	var_45900c37 namespace_82b91a51::function_958c7633();
	var_45900c37 thread namespace_79e1cd97::function_c262adca();
	var_45900c37 function_921a1574("evt_tech_driveup_1");
	var_45900c37 namespace_37b990db::function_2aefd6ec(1, 1);
	var_45900c37 namespace_37b990db::function_bae40a28(1, 1);
	var_45900c37 namespace_37b990db::function_2aefd6ec(1, 0);
	level namespace_cc27597::function_c35e6aab("p7_fxanim_blackstation_warlord_intro_truck_bundle", var_45900c37);
	level thread function_e20bd5ba(3, "warlord_backup");
	wait(5);
	var_45900c37 namespace_79e1cd97::function_fae23684("passenger1");
	var_45900c37 function_921a1574("evt_tech_driveup_2");
	level namespace_cc27597::function_43718187("p7_fxanim_blackstation_warlord_intro_truck_bundle", var_45900c37);
	wait(1);
	var_45900c37 thread namespace_79e1cd97::function_fae23684("driver");
	var_45900c37 thread namespace_79e1cd97::function_d01267bd(level.var_2395e945.size - 1, 2, "warlord_fight_done");
	var_45900c37 namespace_82b91a51::function_4b741fdc();
	var_45900c37 function_991ad231();
	var_45900c37 function_917f75ac(0);
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
	namespace_4dbf3ae3::function_1ab5ebec("trigger_warlord_backup");
	level namespace_ad23e503::function_74d6b22f("warlord_backup");
	level thread function_9986fb74();
	level thread function_8a27424();
	namespace_4dbf3ae3::function_1ab5ebec("trigger_warlord_reinforce");
	level namespace_ad23e503::function_74d6b22f("warlord_reinforce");
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
	level namespace_ad23e503::function_1ab5ebec("warlord_backup");
	namespace_d5067552::function_bae40a28("sm_warlord_launchers");
	namespace_82b91a51::function_76f13293();
	namespace_2f06d687::function_22356ba7("warlord_backup_point");
	wait(2);
	namespace_2f06d687::function_22356ba7("warlord_backup");
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("sm_warlord_support");
	if(level.var_2395e945.size == 4)
	{
		namespace_82b91a51::function_76f13293();
		namespace_2f06d687::function_7387a40a("warlord_partner", &function_b287e148);
	}
	level thread function_5cbefffa();
	level namespace_ad23e503::function_1ab5ebec("warlord_reinforce");
	namespace_2f06d687::function_2b37a3c9("warlord_reinforce", "targetname", &function_2551879c);
	namespace_d5067552::function_bae40a28("sm_warlord_reinforce");
	namespace_d5067552::function_347e835a("sm_warlord_reinforce");
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
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_7dfaf62 = 4;
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self.var_7dfaf62 = 2048;
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
	namespace_2f06d687::function_371d219c("group_warlord_backup", 3);
	level namespace_ad23e503::function_74d6b22f("warlord_reinforce");
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
		var_24bbf032 = function_b8494651("axis");
		if(var_24bbf032.size < 4)
		{
			break;
		}
		wait(1);
	}
	var_24bbf032 = function_b8494651("axis");
	foreach(var_2eecd77a in var_24bbf032)
	{
		if(function_5b49d38c(var_2eecd77a))
		{
			if(var_2eecd77a.var_8fc0e50e != "warlord" && var_2eecd77a.var_170527fb !== "warlord_launcher_ai" && level.var_9b1393e7.size)
			{
				var_6bfe1586 = level.var_9b1393e7[function_26299103(level.var_9b1393e7.size)];
				var_2eecd77a function_169cc712(var_6bfe1586, 1);
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
	while(function_b8494651("axis").size)
	{
		wait(0.5);
	}
	level thread namespace_4297372::function_973b77f9();
	wait(1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_all_clear_2");
	level namespace_71b8dba1::function_13b3b16a("plyr_that_was_one_tough_s_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_i_wouldn_t_doubt_it_0", 0.5);
	level namespace_ad23e503::function_74d6b22f("qzone_done");
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
function function_e20bd5ba(var_9605ac0b, var_4ac85f5f)
{
	while(function_e4eab046() > var_9605ac0b + 1)
	{
		wait(1);
	}
	level namespace_ad23e503::function_74d6b22f(var_4ac85f5f);
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
	level namespace_ad23e503::function_1ab5ebec("warlord_retreat");
	namespace_4dbf3ae3::function_42e87952("triggercolor_warlord_fallback");
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
		wait(function_72a94f05(3.5, 5.5));
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
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_shelter_wind_gust_bundle");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_blackstation_shelter_rumble");
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
	self endon("hash_128f8789");
	while(!level namespace_ad23e503::function_7922262b("warlord_intro_prep"))
	{
		namespace_4dbf3ae3::function_1ab5ebec("trigger_qzone_lowready", "targetname", self);
		self namespace_82b91a51::function_16c71b8(0);
		while(self function_32fa5072(function_6ada35ba("trigger_qzone_lowready", "targetname")))
		{
			wait(1);
		}
		self namespace_82b91a51::function_16c71b8(1);
		self thread function_7072c5d8();
	}
	self namespace_82b91a51::function_16c71b8(0);
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
	self endon("hash_128f8789");
	level endon("hash_37a7f1b3");
	while(1)
	{
		self waittill("hash_90831b9e");
		if(level namespace_ad23e503::function_7922262b("warlord_intro_prep"))
		{
			break;
		}
		if(!self function_32fa5072(function_6ada35ba("trigger_qzone_lowready", "targetname")))
		{
			self namespace_82b91a51::function_16c71b8(1);
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
	level namespace_ad23e503::function_1ab5ebec("warlord_fight");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_gotta_get_to_cover_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_heads_up_we_got_a_t_0", 1);
	level namespace_ad23e503::function_1ab5ebec("warlord_backup");
	if(level.var_2395e945.size > 2)
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_rpg_up_high_0", 4);
	}
	else
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hostiles_in_the_buil_0", 4);
	}
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_clear_em_out_doub_0", 4);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hit_him_with_the_mic_0", 1);
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
	level namespace_ad23e503::function_1ab5ebec("vtol_jump");
	level thread namespace_4297372::function_240ac8fa();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_we_re_on_grou_0");
	level namespace_71b8dba1::function_a463d127("kane_copy_that_hendricks_0", 0.5);
	wait(1);
	level namespace_ad23e503::function_74d6b22f("obj_goto_docks");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_hendricks_interact");
	function_37cbcf1a("evt_qzone_warlord_walla", (8795, 3873, -10));
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
	level namespace_ad23e503::function_1ab5ebec("executed_bodies");
	wait(2.5);
	if(!level namespace_ad23e503::function_7922262b("warlord_approach"))
	{
		level namespace_71b8dba1::function_a463d127("kane_if_sensitive_materia_0", 0, "dni", undefined, 1);
		wait(0.5);
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_understood_we_re_o_0");
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
function function_6ec9ed4d(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	namespace_79e1cd97::function_bff1a867("objective_igc");
	namespace_96fa87af::function_994832bd("vtol_intro", &function_5c4b60ce);
	var_edc6e0e1 = namespace_96fa87af::function_7387a40a("vtol_intro");
	level namespace_cc27597::function_c35e6aab("cin_bla_01_01_intro_1st");
	level thread function_fec14fdd();
	level thread function_f197a118();
	level thread function_58ded41f();
	level thread namespace_79e1cd97::function_5d4fc658();
	level thread function_4a444ed5();
	level namespace_ad23e503::function_1ab5ebec("vtol_jump");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
	level namespace_1d795d47::function_be8adfb8("objective_igc");
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
function function_25dc0657(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
function function_a19cdfad(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread function_13820fbf();
		namespace_79e1cd97::function_bff1a867("objective_qzone");
		level namespace_cc27597::function_c35e6aab("cin_bla_03_warlordintro_3rd_sh010");
		namespace_d7916d65::function_a2995f22();
		level thread function_8c1c268a();
		level thread function_58ded41f();
		level thread namespace_79e1cd97::function_5d4fc658();
		level thread function_4a444ed5();
		level namespace_ad23e503::function_74d6b22f("vtol_jump");
		namespace_4dbf3ae3::function_42e87952("trigger_hendricks_start");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_cb53a41e(function_c4d5ec1f("micromissile_launcher"));
		}
		level thread namespace_79e1cd97::function_6778ea09("light_se");
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_ec18f079();
	}
	level thread function_f9c8936b();
	level thread function_2f7b86f3();
	level thread function_e41dbcaa();
	level thread function_251d954();
	if(isdefined(level.var_43858faf))
	{
		level thread [[level.var_43858faf]]();
	}
	level thread function_c37c7032(0);
	namespace_4dbf3ae3::function_1ab5ebec("trigger_warlord_igc");
	level namespace_1d795d47::function_be8adfb8("objective_qzone");
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
function function_58aef8b7(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
	namespace_d0ef8521::function_45d1556("qzone_breadcrumb");
	namespace_d0ef8521::function_45d1556("warlord_intro_breadcrumb", "cp_level_blackstation_climb");
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
function function_b457621f(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread function_13820fbf();
		namespace_79e1cd97::function_bff1a867("objective_warlord_igc");
		level thread namespace_79e1cd97::function_5d4fc658();
		level namespace_cc27597::function_c35e6aab("cin_bla_03_warlordintro_3rd_sh010");
		level namespace_ad23e503::function_74d6b22f("obj_goto_docks");
		namespace_d7916d65::function_a2995f22();
		level thread function_c37c7032(1);
		level thread function_58ded41f();
		level thread function_da48c515();
	}
	level namespace_ad23e503::function_1ab5ebec("warlord_fight");
	level namespace_1d795d47::function_be8adfb8("objective_warlord_igc");
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
function function_487563c5(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
	namespace_d0ef8521::function_45d1556("warlord_intro_breadcrumb", "cp_level_blackstation_climb");
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
function function_f1376b81(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_warlord");
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level thread namespace_79e1cd97::function_5d4fc658();
		level thread function_13820fbf();
		level thread namespace_d0ef8521::function_45d1556("anchor_intro_breadcrumb", "cp_level_blackstation_climb");
		level thread namespace_8b9f718f::function_109329ae();
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_blackstation_shelter_wind_gust_bundle");
		var_c7a78bed = namespace_2f06d687::function_7387a40a("warlordintro_warlord", &function_5a4025b4);
		for(var_4f8217af = 0; var_4f8217af < 3; var_4f8217af++)
		{
			namespace_2f06d687::function_22356ba7("warlord_igc_" + var_4f8217af, &function_5a4025b4);
		}
		level.var_d8ffea14 = function_fe0cfd2e("china_town_warlord_preferred_goal", "targetname");
		var_c7a78bed thread function_5d3711fa();
		var_c7a78bed thread function_b287e148();
		level namespace_ad23e503::function_74d6b22f("obj_goto_docks");
		level namespace_ad23e503::function_74d6b22f("warlord_fight");
		level thread namespace_4297372::function_fa2e45b8();
		level thread function_58ded41f();
		level notify("hash_998c624d");
		namespace_d7916d65::function_a2995f22();
		wait(0.1);
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_cb53a41e(function_c4d5ec1f("micromissile_launcher"));
		}
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	}
	level thread namespace_23567e72::function_f0b50148();
	level thread namespace_79e1cd97::function_46dd77b0();
	level thread function_d6aa8860();
	level thread function_ed2f4785();
	level thread function_6e4c2eec();
	level thread function_69df1ce();
	level thread namespace_8b9f718f::function_21f63154();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_82b91a51::function_16c71b8(0);
		var_5dc5e20a thread namespace_c03736ba::function_e9f7384d();
	}
	namespace_4dbf3ae3::function_1ab5ebec("trigger_hendricks_hotel_approach");
	level namespace_ad23e503::function_74d6b22f("warlord_fight_done");
	level namespace_1d795d47::function_be8adfb8("objective_warlord");
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
function function_68cbd90b(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	wait(3);
	self namespace_d84e54db::function_b4f5e3b9(0);
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
	namespace_71e9cb84::function_74d6b22f("roof_panels_init", 1);
	level thread function_f55bf5a1();
	level namespace_ad23e503::function_1ab5ebec("roof_panels");
	namespace_71e9cb84::function_74d6b22f("roof_panels_play", 1);
	wait(2);
	var_b8a6ac3 = function_6ada35ba("trigger_roof_panels", "targetname");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a function_32fa5072(var_b8a6ac3))
		{
			var_5dc5e20a function_e2af603e("bs_wind_rumble_low");
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
	var_7c2cfb61 = function_6ada35ba("roof_panel", "targetname");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_855a3b1c, var_7c2cfb61);
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
	self endon("hash_128f8789");
	level endon("hash_ce8b314b");
	self namespace_82b91a51::function_3546be91(var_7c2cfb61.var_722885f3, 45, 1);
	level namespace_ad23e503::function_74d6b22f("roof_panels");
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
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_qzone");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_intercept");
	level namespace_ad23e503::function_1ab5ebec("obj_goto_docks");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_intercept");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_goto_docks");
	level namespace_ad23e503::function_1ab5ebec("warlord_fight");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_neutralize");
	level namespace_ad23e503::function_1ab5ebec("qzone_done");
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_neutralize");
}


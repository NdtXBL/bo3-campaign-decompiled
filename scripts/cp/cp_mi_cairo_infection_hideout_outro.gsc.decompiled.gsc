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
	Name: function_d290ebfa
	Namespace: namespace_6473bd03
	Checksum: 0xFA291FDA
	Offset: 0xBB0
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_ceiling_02_bundle");
	level namespace_ad23e503::function_c35e6aab("underwater_done");
	level.var_c1aa5253["nuke_fx"] = "explosions/fx_exp_nuke_full_inf";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_6473bd03
	Checksum: 0xB9DF4AFD
	Offset: 0xC28
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	var_80bea535 = function_eaa48678(4);
	namespace_71e9cb84::function_50f16166("world", "infection_hideout_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "hideout_stretch", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "stalingrad_rise_nuke", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "stalingrand_nuke_fog_banks", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "city_tree_passed", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "stalingrad_tree_init", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "stalingrad_city_ceilings", 1, var_80bea535, "int");
	namespace_71e9cb84::function_50f16166("world", "infection_nuke_lights", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "ukko_toggling", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "nuke_earth_quake", 1, function_eaa48678(8), "int");
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
function function_206da579(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
	}
	namespace_cc27597::function_8f9f34e0("cin_inf_13_01_hideout_vign_briefing", &function_a8f91bd1, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_hideout_stretch_bundle", &function_392bb391, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_12_01_underwater_1st_fall_hideout03", &namespace_36cbf523::function_efa09886, "done");
	level namespace_cc27597::function_c35e6aab("cin_inf_13_01_hideout_vign_briefing");
	function_37cbcf1a("evt_dream_vox", (-6893, 2203, 5962));
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	level notify("hash_7b06f432");
	level thread namespace_cc27597::function_43718187("cin_inf_12_01_underwater_1st_fall_hideout03");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
	level namespace_71e9cb84::function_74d6b22f("infection_hideout_fx", 1);
	level thread namespace_99d8554b::function_63b34b78();
	if(isdefined(level.var_7635d765))
	{
		level thread [[level.var_7635d765]]();
	}
	level thread namespace_cc27597::function_43718187("cin_inf_13_01_hideout_vign_briefing");
	level waittill("hash_69a80734");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_hideout_stretch_bundle");
	level thread namespace_82b91a51::function_d8eaed3d(10);
	level waittill("hash_748dfeb3");
	level thread namespace_82b91a51::function_a0938376();
	var_7d116593 = namespace_14b42b8a::function_7922262b("s_interrogation_loc", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.var_722885f3);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("cp_infection_hideout_stretch");
	}
	level namespace_82b91a51::function_7e61de2b(5, "black");
	level thread namespace_82b91a51::function_a0938376();
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
function function_a35499d1(var_c77d2837)
{
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_e905c73c);
	level notify("hash_9c2ad976");
	level thread namespace_1d795d47::function_be8adfb8("hideout");
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
function function_392bb391(var_c77d2837)
{
	var_b1c83f96 = function_84970cc4("light_fx_01", "light_fx_02", "light_fx_03", "light_fx_04", "fx_light_1", "fx_light_2", "fx_light_3", "fx_light_5", "fx_light_6", "fx_light_7", "fx_light_9");
	foreach(var_e00762ce in var_b1c83f96)
	{
		var_e498e5fe = function_99201f25(var_e00762ce, "targetname");
		foreach(var_57923fa7 in var_e498e5fe)
		{
			var_57923fa7 thread function_f29981bc(var_c77d2837);
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
function function_f29981bc(var_c77d2837)
{
	self function_37f7858a(var_c77d2837["hideout_stretch"], self.var_170527fb + "_jnt");
	level waittill("hash_9c2ad976");
	self function_52fddbd0();
	self function_dc8c8404();
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
function function_a8f91bd1(var_c77d2837)
{
	wait(1);
	level namespace_71b8dba1::function_13b3b16a("plyr_where_did_you_go_sa_0", 1);
	level namespace_71b8dba1::function_81141386("hall_we_held_up_in_the_ol_0", 1, 1);
	level namespace_71b8dba1::function_81141386("hall_and_made_our_pla_0", 0, 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_the_aquifers_you_0", 0);
	level namespace_71b8dba1::function_13b3b16a("plyr_it_must_be_kane_sho_0", 3);
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
function function_299b5716(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
function function_d039c886(var_b04bc952, var_74cd64bc)
{
	level notify("hash_7b06f432");
	namespace_cc27597::function_8f9f34e0("cin_inf_14_01_nasser_vign_interrogate", &function_70e2b47c, "init");
	namespace_cc27597::function_8f9f34e0("cin_inf_14_01_nasser_vign_interrogate", &function_12d4e076, "done");
	namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_cc27597::function_c35e6aab("cin_inf_14_01_nasser_vign_interrogate");
		namespace_d7916d65::function_a2995f22();
	}
	namespace_82b91a51::function_7e61de2b(0, "black");
	level namespace_82b91a51::function_67520c6a(0.25, undefined, &namespace_82b91a51::function_593c2af4, 2, "black");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
	level thread function_423ccbef();
	if(isdefined(level.var_adc064f2))
	{
		level thread [[level.var_adc064f2]]();
	}
	level thread namespace_cc27597::function_43718187("cin_inf_14_01_nasser_vign_interrogate");
	level thread namespace_82b91a51::function_d8eaed3d(4);
	level waittill("hash_3b77e704");
	namespace_80983c42::function_80983c42("exploder_interrogation_transition");
	level thread namespace_82b91a51::function_7e61de2b(3, "white");
	wait(3);
	level thread namespace_82b91a51::function_a0938376();
	level thread namespace_1d795d47::function_be8adfb8("interrogation");
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
function function_70e2b47c(var_c77d2837)
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
function function_12d4e076(var_c77d2837)
{
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_e905c73c);
	level notify("hash_3dc7df2d");
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
	function_37cbcf1a("evt_interrogation_vtol", (-7159, 17021, 5990));
	level waittill("hash_79fdda3d");
	function_37cbcf1a("evt_interrogation_vtol_fade", (0, 0, 0));
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
function function_3aef563f(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_80983c42::function_80983c42("city_lightning");
	if(var_74cd64bc)
	{
		namespace_80983c42::function_80983c42("exploder_interrogation_transition");
	}
	if(isdefined(level.var_a73e9330))
	{
		level.var_a73e9330 function_dc8c8404();
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
function function_607100ba(var_b04bc952, var_74cd64bc)
{
	level notify("hash_7b06f432");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_82b91a51::function_d8eaed3d(4);
	}
	else
	{
		namespace_82b91a51::function_7e61de2b(0, "white");
	}
	namespace_cc27597::function_8f9f34e0("cin_inf_16_01_zombies_vign_treemoment_intro", &function_a5128547, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_16_01_zombies_vign_treemoment_intro", &function_801f28a1, "done");
	namespace_cc27597::function_8f9f34e0("cin_inf_14_04_sarah_vign_05", &function_c5b11e32, "play");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
		namespace_82b91a51::function_7e61de2b(0);
		namespace_82b91a51::function_67520c6a(1, undefined, &namespace_82b91a51::function_593c2af4, 1);
	}
	else
	{
		namespace_82b91a51::function_67520c6a(1, undefined, &namespace_82b91a51::function_593c2af4, 1, "white");
	}
	namespace_1d795d47::function_552e05fb(var_b04bc952, 1);
	if(isdefined(level.var_b15c12bf))
	{
		level thread [[level.var_b15c12bf]]();
	}
	level namespace_cc27597::function_43718187("cin_inf_14_04_sarah_vign_05");
	if(var_74cd64bc)
	{
		level thread namespace_82b91a51::function_a0938376();
	}
	var_7d116593 = namespace_14b42b8a::function_7922262b("s_city_loc", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.var_722885f3);
	namespace_82b91a51::function_67520c6a(1, undefined, &namespace_82b91a51::function_593c2af4, 2.5, "white");
	level thread namespace_cc27597::function_43718187("cin_inf_16_01_zombies_vign_treemoment_intro");
	level thread function_579b7304();
	wait(5);
	if(isdefined(level.var_e8717a7c))
	{
		level thread [[level.var_e8717a7c]]();
	}
	level thread function_136fcf00();
	wait(5);
	level thread function_8877c63f();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("cp_infection_hideout_stretch");
	}
	level thread namespace_82b91a51::function_a0938376();
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
	level.var_e6467acd = function_6ada35ba("sarah", "animname");
	if(!isdefined(level.var_e6467acd))
	{
		level.var_e6467acd = namespace_2f06d687::function_7387a40a("sarah");
	}
	level.var_e6467acd.var_7dfaf62 = 32;
	level.var_e6467acd function_ca711294("allies");
	level.var_e6467acd namespace_d84e54db::function_b4f5e3b9(1);
	level.var_e6467acd namespace_d84e54db::function_c9e45d52(1);
	level.var_e6467acd namespace_82b91a51::function_958c7633();
	level.var_e6467acd namespace_d84e54db::function_fd6c4374();
	level.var_e6467acd.var_daf3a648 = 0;
	level thread namespace_cc27597::function_43718187("cin_inf_16_01_zombies_vign_treemoment_gameplay_loop");
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
function function_c5b11e32(var_c77d2837)
{
	level waittill("hash_b718ebe8");
	level thread namespace_82b91a51::function_7e61de2b(1, "white");
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
function function_a5128547(var_c77d2837)
{
	var_c77d2837["player 1"] waittill("hash_b18eeabf");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_reverse_stalingrad_house_bundle");
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
function function_801f28a1(var_c77d2837)
{
	level thread namespace_1d795d47::function_be8adfb8("city_barren");
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
	level.var_2395e945[0] function_921a1574("evt_city_rise");
	level namespace_71e9cb84::function_74d6b22f("stalingrad_rise_nuke", 1);
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
function function_eebf61b(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
	level namespace_71e9cb84::function_74d6b22f("stalingrad_tree_init", 1);
	level.var_2395e945[0] function_921a1574("evt_tree_grow");
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
function function_67c4a95f(var_b04bc952, var_74cd64bc)
{
	level notify("hash_7b06f432");
	namespace_2f06d687::function_ef554cf7("axis", &function_40dc724e);
	namespace_f25bd8c8::function_6c777c8d();
	namespace_f25bd8c8::function_a0fb8ca9();
	namespace_f25bd8c8::function_70cafec1();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_71e9cb84::function_74d6b22f("stalingrad_rise_nuke", 1);
		level thread function_579b7304();
		namespace_d7916d65::function_a2995f22();
		level namespace_71e9cb84::function_74d6b22f("stalingrad_tree_init", 1);
		level thread namespace_82b91a51::function_593c2af4(2, "black");
		namespace_1d795d47::function_552e05fb(var_b04bc952, 1);
	}
	else
	{
		namespace_82b91a51::function_7e61de2b(0.3, "white");
		namespace_1d795d47::function_552e05fb(var_b04bc952, 1);
		level thread namespace_82b91a51::function_593c2af4(0.2, "white");
	}
	namespace_36cbf523::function_aa0ddbc3(1);
	level thread function_bf049e87();
	level thread function_e595eb57();
	level namespace_ad23e503::function_9d134160("spawn_zombies");
	level notify("hash_ee152b14");
	level thread function_33c4ce19();
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_zombies");
	function_37cbcf1a("evt_inf_spawn", (27444, 554, -3252));
	level thread function_c4fe5f45();
	level namespace_ad23e503::function_1ab5ebec("sarah_tree");
	level thread namespace_1d795d47::function_be8adfb8("city");
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
	var_11e3ff05 = function_9b7fda5e("script_origin", (27559, -255, -3078));
	var_37e6796e = function_9b7fda5e("script_origin", (27421, 1613, -2992));
	var_11e3ff05 function_c2931a36("evt_zombies_walla", 2);
	wait(12);
	var_37e6796e function_c2931a36("evt_zombies_walla", 2);
	level namespace_ad23e503::function_1ab5ebec("zombies_completed");
	var_11e3ff05 function_dc8c8404();
	var_37e6796e function_dc8c8404();
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
	if(function_27c72c1b())
	{
		return;
	}
	self namespace_71e9cb84::function_74d6b22f("zombie_tac_mode_disable", 1);
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
	level namespace_71b8dba1::function_13b3b16a("plyr_what_the_hell_is_tha_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_sarah_these_monste_0", 8);
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
	var_ef5c86ba = function_99201f25("t_house_ceiling", "targetname");
	namespace_84970cc4::function_966ecb29(var_ef5c86ba, &function_b951f4cb);
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
	var_115ce1e8 = function_6ada35ba("pavlovs_house_second_floor_railing_clip", "targetname");
	var_115ce1e8 function_dc8c8404();
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
	self endon("hash_128f8789");
	if(isdefined(self.var_b07228b6))
	{
		var_26aaa5cc = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	}
	wait(3);
	while(1)
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		if(function_65f192a6(self.var_aef176e7))
		{
			var_5dc5e20a = self.var_aef176e7;
			if(isdefined(var_26aaa5cc))
			{
				self thread function_216c9445(var_5dc5e20a, var_26aaa5cc);
				self waittill("hash_e8c77093");
				self notify("hash_77e1a075");
			}
			if(self.var_8202763a == 2)
			{
				level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_house_ceiling_02_bundle");
			}
			else
			{
				level namespace_71e9cb84::function_74d6b22f("stalingrad_city_ceilings", self.var_8202763a);
				if(self.var_8202763a == 3)
				{
					level thread function_545f4b96();
				}
			}
			self function_dc8c8404();
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
function function_216c9445(var_5dc5e20a, var_26aaa5cc)
{
	self endon("hash_77e1a075");
	self endon("hash_128f8789");
	var_5dc5e20a endon("hash_128f8789");
	while(!var_5dc5e20a namespace_36cbf523::function_72268bc2(var_26aaa5cc, 0.5, 400))
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
function function_36ff1cdc(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_f25bd8c8::function_bbb224b7();
	namespace_2f06d687::function_d5e942a4("axis", &function_40dc724e);
	var_ef5c86ba = function_99201f25("t_house_ceiling", "targetname");
	foreach(var_5948b3df in var_ef5c86ba)
	{
		var_5948b3df function_dc8c8404();
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
function function_7bb61977(var_b04bc952, var_74cd64bc)
{
	level thread namespace_71e9cb84::function_74d6b22f("city_tree_passed", 1);
	level.var_8ebdde9d = 1;
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_house_ceiling_02_bundle");
		var_19a2b88 = 4;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_19a2b88; var_c957f6b6++)
		{
			level namespace_71e9cb84::function_74d6b22f("stalingrad_city_ceilings", var_c957f6b6);
		}
		level thread function_545f4b96();
		wait(3);
		namespace_36cbf523::function_aa0ddbc3(1);
		level thread function_bf049e87();
		level namespace_ad23e503::function_9d134160("spawn_zombies");
		level.var_f21dc6b9 = 4;
		level notify("hash_ee152b14");
		level thread function_33c4ce19();
		namespace_d0ef8521::function_74d6b22f("cp_level_infection_zombies");
		level namespace_ad23e503::function_74d6b22f("zombies_final_round");
		level namespace_ad23e503::function_74d6b22f("spawn_zombies");
		namespace_d7916d65::function_a2995f22();
		level namespace_71e9cb84::function_74d6b22f("stalingrad_rise_nuke", 1);
		level namespace_71e9cb84::function_74d6b22f("stalingrad_tree_init", 1);
	}
	level namespace_ad23e503::function_1ab5ebec("zombies_completed");
	level thread namespace_1d795d47::function_be8adfb8("city_tree");
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
function function_7e8dc9e7(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level notify("hash_25601ed0");
	level namespace_ad23e503::function_74d6b22f("zombies_completed");
	var_debfe596 = function_24e95264(level.var_15661095, "all");
	if(isdefined(var_debfe596))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_debfe596.size; var_c957f6b6++)
		{
			var_debfe596[var_c957f6b6] function_dc8c8404();
		}
	}
	else if(isdefined(level.var_e6467acd))
	{
		level.var_e6467acd function_dc8c8404();
	}
	var_9b40c1cb = function_6ada35ba("pavlov_house_fire", "targetname");
	if(isdefined(var_9b40c1cb))
	{
		var_9b40c1cb function_dc8c8404();
	}
	var_acc45090 = function_6ada35ba("pavlov_house_fire_warning", "targetname");
	if(isdefined(var_acc45090))
	{
		var_acc45090 function_dc8c8404();
	}
	var_c9c77dfb = function_99201f25("firewall_firepos", "targetname");
	foreach(var_a3d46ee4 in var_c9c77dfb)
	{
		var_a3d46ee4 namespace_71e9cb84::function_74d6b22f("zombie_fire_wall_fx", 0);
		namespace_82b91a51::function_76f13293();
		var_a3d46ee4 function_dc8c8404();
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
	self endon("hash_128f8789");
	if(!(isdefined(level.var_8ebdde9d) && level.var_8ebdde9d))
	{
		level namespace_ad23e503::function_74d6b22f("spawn_zombies");
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
	self endon("hash_128f8789");
	self endon("hash_9ce403cf");
	level waittill("hash_c7d17793");
	wait(2);
	level thread namespace_b0a87e94::function_f83fb174(0);
	self namespace_cc27597::function_43718187("cin_inf_16_01_zombies_vign_treemoment_talk01", self);
	self thread namespace_cc27597::function_43718187("cin_inf_16_01_zombies_vign_treemoment_gameplay_loop", self);
	level namespace_ad23e503::function_74d6b22f("zombies_final_round");
	level namespace_ad23e503::function_74d6b22f("spawn_zombies");
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
	while(level.var_f21dc6b9 < 3)
	{
		level waittill("hash_191bb225");
	}
	level namespace_71b8dba1::function_13b3b16a("plyr_hall_we_can_t_stay_0", 0);
	wait(2);
	level namespace_71b8dba1::function_81141386("corv_let_her_go_0", 0);
	level namespace_71b8dba1::function_13b3b16a("plyr_sarah_whoever_that_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_who_are_you_what_0", 1);
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
	while(!level namespace_ad23e503::function_7922262b("zombies_completed"))
	{
		level thread namespace_ce7c3ed5::function_3f0b2996(0.2, 0.7, 1, "white");
		function_37cbcf1a("evt_infection_thunder_special", (0, 0, 0));
		wait(0.5);
		level thread namespace_ce7c3ed5::function_3f0b2996(1, 0, 0.7, "white");
		wait(function_72a94f05(0.3, 1.2));
		function_37cbcf1a("evt_infection_thunder_special", (0, 0, 0));
		wait(function_72a94f05(6, 36));
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
	foreach(var_5dc5e20a in function_3f10449f())
	{
		var_5dc5e20a thread namespace_71e9cb84::function_688ed188("ukko_toggling");
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
function function_71d39006(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		level namespace_71e9cb84::function_74d6b22f("stalingrad_rise_nuke", 1);
		level namespace_71e9cb84::function_74d6b22f("stalingrad_tree_init", 1);
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_house_ceiling_02_bundle");
		var_19a2b88 = 4;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_19a2b88; var_c957f6b6++)
		{
			level namespace_71e9cb84::function_74d6b22f("stalingrad_city_ceilings", var_c957f6b6);
		}
		wait(7);
		namespace_d7916d65::function_a2995f22();
	}
	namespace_cc27597::function_8f9f34e0("cin_inf_18_outro_3rd_sh140", &function_9221432, "init");
	level namespace_cc27597::function_c35e6aab("cin_inf_18_outro_3rd_sh010");
	level notify("hash_7b06f432");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
	level thread function_7f848c70();
	level thread function_788d360f();
	level waittill("hash_68898176");
	level thread namespace_1d795d47::function_be8adfb8("city_nuked");
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
	var_71d5cd4d = namespace_14b42b8a::function_7922262b("nuke_fx_pos", "targetname");
	var_1a859714 = function_bc7ce905(var_71d5cd4d.var_6ab6f4fd);
	var_b5f6560e = (0, 0, 1);
	var_4b24de52 = 4;
	var_649f4b27 = 4;
	function_37cbcf1a("evt_tree_shrink", (0, 0, 0));
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "nuke_earth_quake", 2);
	level namespace_71e9cb84::function_74d6b22f("zombie_root_grow", 0);
	level namespace_71e9cb84::function_74d6b22f("stalingrad_tree_init", 2);
	if(isdefined(level.var_4d547cd9))
	{
		level thread [[level.var_4d547cd9]]();
	}
	wait(4);
	level namespace_71e9cb84::function_74d6b22f("infection_nuke_lights", 1);
	level namespace_71e9cb84::function_74d6b22f("stalingrand_nuke_fog_banks", 1);
	wait(1);
	function_fd4ba5e1(level.var_c1aa5253["nuke_fx"], var_71d5cd4d.var_722885f3, var_1a859714, var_b5f6560e);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "nuke_earth_quake", var_4b24de52 + var_649f4b27);
	level namespace_71e9cb84::function_74d6b22f("stalingrad_rise_nuke", 2);
	wait(var_4b24de52);
	wait(var_649f4b27);
	level thread namespace_82b91a51::function_7e61de2b(0, "black");
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
function function_ee75e7c1(var_60db70fa)
{
	var_f721d9a5 = GetTime();
	var_df334595 = 0;
	var_5c21ad3d = 0.1;
	self function_e2af603e("tank_damage_heavy_mp");
	function_9cf04c2e(0.3, 0.5, self.var_722885f3, 100);
	while(var_df334595 < var_60db70fa)
	{
		self function_e2af603e("damage_heavy");
		function_9cf04c2e(var_5c21ad3d, 1, self.var_722885f3, 100);
		wait(0.25);
		var_5c21ad3d = var_5c21ad3d + 0.015;
		var_df334595 = GetTime() - var_f721d9a5 / 1000;
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
	level namespace_71b8dba1::function_81141386("corv_listen_only_to_the_s_1", 1, 1);
	level namespace_71b8dba1::function_81141386("corv_let_your_mind_relax_1", 1, 1);
	level namespace_71b8dba1::function_81141386("corv_imagine_yourself_in_1", 0, 1);
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
function function_567b48bf(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_71e9cb84::function_74d6b22f("stalingrand_nuke_fog_banks", 0);
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
function function_3e44f402(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_cc27597::function_8f9f34e0("cin_inf_18_outro_3rd_sh140", &function_9221432, "init");
		level namespace_cc27597::function_c35e6aab("cin_inf_18_outro_3rd_sh010");
		namespace_d7916d65::function_a2995f22();
	}
	else
	{
		namespace_82b91a51::function_11a89b44();
	}
	level thread namespace_82b91a51::function_593c2af4(2);
	if(isdefined(level.var_354a0919))
	{
		level thread [[level.var_354a0919]]();
	}
	level thread namespace_99d8554b::function_a0a44ed9();
	level thread namespace_4fe3eef1::function_9908d262("mus_infection_church_intro");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	level namespace_cc27597::function_43718187("cin_inf_18_outro_3rd_sh010");
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
function function_9221432(var_c77d2837)
{
	level waittill("hash_6a87e7bc");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	if(namespace_cc27597::function_b1f75ee9())
	{
		level namespace_82b91a51::function_7e61de2b(0, "black", "end_level_fade");
	}
	else
	{
		level namespace_82b91a51::function_7e61de2b(0.5, "black", "end_level_fade");
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_1271a73e();
	}
	level thread namespace_1d795d47::function_be8adfb8("outro");
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
function function_245d1883(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}


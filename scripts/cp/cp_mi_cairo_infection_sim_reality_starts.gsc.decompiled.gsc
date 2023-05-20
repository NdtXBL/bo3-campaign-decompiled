#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_sgen_test_chamber;
#using scripts\cp\cp_mi_cairo_infection_sound;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_b2b18209;

/*
	Name: function_d290ebfa
	Namespace: namespace_b2b18209
	Checksum: 0xEF60BD49
	Offset: 0x938
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	function_37af8a07();
	function_ff58a260();
	function_7b244c18();
}

/*
	Name: function_37af8a07
	Namespace: namespace_b2b18209
	Checksum: 0x8C1FCBDC
	Offset: 0x998
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("baby_picked_up");
}

/*
	Name: function_ff58a260
	Namespace: namespace_b2b18209
	Checksum: 0xF76B91A9
	Offset: 0x9C8
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	namespace_71e9cb84::function_50f16166("toplayer", "sim_out_of_bound", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_01", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_02", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_03", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_04", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_05", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "lgt_tree_glow_05_fade_out", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_all_off", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_frost_up", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_frost_down", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_frost_up_baby", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_exit_all", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "infection_baby_shader", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "toggle_sim_fog_banks", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "break_baby", 1, 1, "int");
}

/*
	Name: function_7b244c18
	Namespace: namespace_b2b18209
	Checksum: 0x99EC1590
	Offset: 0xCA8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_7b244c18()
{
}

/*
	Name: function_d78d6232
	Namespace: namespace_b2b18209
	Checksum: 0x89C87A8E
	Offset: 0xCB8
	Size: 0x30B
	Parameters: 2
	Flags: None
*/
function function_d78d6232(var_b04bc952, var_74cd64bc)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_cc27597::function_c35e6aab("cin_inf_04_01_birthai_vign_deathpose");
	}
	namespace_36cbf523::function_1cdb9014();
	namespace_71e9cb84::function_74d6b22f("toggle_sim_fog_banks", 1);
	level namespace_82b91a51::function_b85473ac(0);
	namespace_1d795d47::function_552e05fb(var_b04bc952);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 namespace_5dc5e20a::function_51bdb647(1);
	}
	namespace_71e9cb84::function_74d6b22f("sim_lgt_tree_glow_01", 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
	level thread function_43e9cbbf();
	if(isdefined(level.var_46584a9c))
	{
		level thread [[level.var_46584a9c]]();
	}
	level thread namespace_cc27597::function_43718187("cin_inf_04_01_birthai_1st_crying_init");
	level thread function_e2a1f622();
	level thread function_3c6bbd12();
	level thread function_12c0aa84();
	level thread function_f2e3184d();
	level thread function_2baf7f93();
	level thread function_e7b91ace();
	level thread function_30f163f9();
	level thread function_8742cfd3();
	level thread function_96fb6d2b();
	level thread function_bcfde794();
	level thread function_e30061fd();
}

/*
	Name: function_f6fce5f1
	Namespace: namespace_b2b18209
	Checksum: 0x2E351A1A
	Offset: 0xFD0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f6fce5f1()
{
	level namespace_cc27597::function_c35e6aab("cin_inf_04_01_birthai_vign_deathpose");
}

/*
	Name: function_e7b91ace
	Namespace: namespace_b2b18209
	Checksum: 0x4312B987
	Offset: 0x1000
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e7b91ace()
{
	level namespace_cc27597::function_43718187("cin_inf_04_01_birthai_vign_deathpose");
}

/*
	Name: function_c52039f4
	Namespace: namespace_b2b18209
	Checksum: 0xDAB2B0D9
	Offset: 0x1030
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_c52039f4()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("damage_heavy");
	}
}

/*
	Name: function_30f163f9
	Namespace: namespace_b2b18209
	Checksum: 0x67FC26B2
	Offset: 0x10D0
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_30f163f9()
{
	level thread function_3b662fed();
	namespace_4dbf3ae3::function_1ab5ebec("t_vo_thea_where_am_i_what_s_0");
	namespace_71e9cb84::function_74d6b22f("sim_lgt_tree_glow_02", 1);
	level thread namespace_eccdd5d1::function_8e8e5a12();
	function_c52039f4();
	function_37cbcf1a("evt_tree_light", (-24528, -25283, 3712));
	level thread namespace_eccdd5d1::function_14588839();
	namespace_4dbf3ae3::function_1ab5ebec("t_plyr_i_hear_a_baby_crying_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_hear_a_baby_crying_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_hello_is_anyone_th_0");
	namespace_4dbf3ae3::function_1ab5ebec("t_lgt_tree_glow_03");
	namespace_4dbf3ae3::function_1ab5ebec("t_plyr_i_don_t_know_if_you_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_don_t_know_if_you_0");
	namespace_4dbf3ae3::function_1ab5ebec("t_plyr_hall_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_hall_0");
	level namespace_71b8dba1::function_13b3b16a("hall_what_did_you_do_to_m_0", 0.6);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_tried_to_interface_0", 2.3);
}

/*
	Name: function_3b662fed
	Namespace: namespace_b2b18209
	Checksum: 0xCE63C721
	Offset: 0x12D0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_3b662fed()
{
	wait(3.5);
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_hendricks_0", 1);
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_extract_intel");
}

/*
	Name: function_e2a1f622
	Namespace: namespace_b2b18209
	Checksum: 0xC4B72412
	Offset: 0x1328
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_e2a1f622()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_salm_mr_krueger_beat_0");
	var_5f4c216b = function_6ada35ba("t_salm_mr_krueger_beat_0", "targetname");
	var_5f4c216b namespace_71b8dba1::function_81141386("salm_mr_krueger_beat_0", 0, 1);
}

/*
	Name: function_3c6bbd12
	Namespace: namespace_b2b18209
	Checksum: 0xFEB0A31D
	Offset: 0x13A0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3c6bbd12()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_krue_oh_i_understand_do_0");
	var_5f4c216b = function_6ada35ba("t_krue_oh_i_understand_do_0", "targetname");
	var_5f4c216b namespace_71b8dba1::function_81141386("krue_oh_i_understand_do_0", 0, 1);
}

/*
	Name: function_12c0aa84
	Namespace: namespace_b2b18209
	Checksum: 0x2A8FE124
	Offset: 0x1418
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_12c0aa84()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_salm_please_listen_to_wh_0");
	var_5f4c216b = function_6ada35ba("t_salm_please_listen_to_wh_0", "targetname");
	var_5f4c216b namespace_71b8dba1::function_81141386("salm_please_listen_to_wh_0", 0, 1);
}

/*
	Name: function_f2e3184d
	Namespace: namespace_b2b18209
	Checksum: 0xB7976A7D
	Offset: 0x1490
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_f2e3184d()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_krue_we_re_standing_on_th_1");
	var_5f4c216b = function_6ada35ba("t_krue_we_re_standing_on_th_1", "targetname");
	var_5f4c216b namespace_71b8dba1::function_81141386("krue_we_re_standing_on_th_1", 0, 1);
}

/*
	Name: function_2baf7f93
	Namespace: namespace_b2b18209
	Checksum: 0x26A86301
	Offset: 0x1508
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_2baf7f93()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_krue_zurich_is_where_the_1");
	var_5f4c216b = function_6ada35ba("t_krue_zurich_is_where_the_1", "targetname");
	var_5f4c216b namespace_71b8dba1::function_81141386("krue_zurich_is_where_the_1", 0, 1);
}

/*
	Name: function_96fb6d2b
	Namespace: namespace_b2b18209
	Checksum: 0x534E1516
	Offset: 0x1580
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_96fb6d2b()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_lgt_tree_glow_03");
	level thread namespace_eccdd5d1::function_688bdfa9();
	namespace_71e9cb84::function_74d6b22f("sim_lgt_tree_glow_03", 1);
	function_c52039f4();
	function_37cbcf1a("evt_tree_light", (-24934, -23881, 3803));
	function_37cbcf1a("evt_baby_cry", (0, 0, 0));
}

/*
	Name: function_bcfde794
	Namespace: namespace_b2b18209
	Checksum: 0x4C6F1DFB
	Offset: 0x1638
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_bcfde794()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_lgt_tree_glow_04");
	level thread namespace_eccdd5d1::function_42896540();
	namespace_71e9cb84::function_74d6b22f("sim_lgt_tree_glow_04", 1);
	function_c52039f4();
	function_37cbcf1a("evt_tree_light", (-24574, -22663, 4172));
	function_37cbcf1a("evt_baby_cry", (0, 0, 0));
}

/*
	Name: function_e30061fd
	Namespace: namespace_b2b18209
	Checksum: 0x4B6E387
	Offset: 0x16F0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e30061fd()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_lgt_tree_glow_05");
	level thread namespace_eccdd5d1::function_4c9abe1f();
	namespace_71e9cb84::function_74d6b22f("sim_lgt_tree_glow_05", 1);
	function_c52039f4();
	function_37cbcf1a("evt_tree_light", (-23716, -21731, 4429));
	function_37cbcf1a("evt_baby_cry", (0, 0, 0));
}

/*
	Name: function_2d3d4bcc
	Namespace: namespace_b2b18209
	Checksum: 0xF3447889
	Offset: 0x17A8
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_2d3d4bcc(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_71e9cb84::function_74d6b22f("toggle_sim_fog_banks", 0);
	namespace_71e9cb84::function_74d6b22f("sim_lgt_tree_glow_all_off", 1);
	namespace_36cbf523::function_3ea445de();
	namespace_d0ef8521::function_31cd1834("cp_level_infection_extract_intel");
}

/*
	Name: function_43e9cbbf
	Namespace: namespace_b2b18209
	Checksum: 0x1DB37ACB
	Offset: 0x1838
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_43e9cbbf()
{
	level.var_ff59b31e = 0;
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_ca04578e);
	namespace_dabbe128::function_356a4ee1(&function_ca04578e);
	namespace_84970cc4::function_966ecb29(function_99201f25("t_warm", "script_noteworthy"), &function_cdf731ff);
	level waittill("hash_744b1b8e");
	namespace_dabbe128::function_a0ac4434(&function_ca04578e);
}

/*
	Name: function_cdf731ff
	Namespace: namespace_b2b18209
	Checksum: 0x696782AA
	Offset: 0x1910
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_cdf731ff()
{
	self waittill("hash_4dbf3ae3");
	self.var_b16fc475 = 1;
	level.var_ff59b31e++;
}

/*
	Name: function_ca04578e
	Namespace: namespace_b2b18209
	Checksum: 0x412149B2
	Offset: 0x1940
	Size: 0x289
	Parameters: 0
	Flags: None
*/
function function_ca04578e()
{
	level endon("hash_744b1b8e");
	self endon("hash_128f8789");
	var_803084e1 = function_99201f25("t_warm", "script_noteworthy");
	var_4902d28 = function_99201f25("t_cold", "script_noteworthy");
	while(1)
	{
		wait(1.5);
		var_d5845427 = "out_of_bounds";
		foreach(var_bfb72d25 in var_803084e1)
		{
			if(self function_32fa5072(var_bfb72d25) && var_bfb72d25.var_b16fc475 === 1)
			{
				var_d5845427 = "warm";
			}
		}
		if(var_d5845427 != "warm")
		{
			foreach(var_2c782ed4 in var_4902d28)
			{
				if(self function_32fa5072(var_2c782ed4))
				{
					var_d5845427 = "cold";
				}
			}
		}
		switch(var_d5845427)
		{
			case "warm":
			{
				self namespace_71e9cb84::function_688ed188("pstfx_frost_down", 1);
				break;
			}
			case "cold":
			{
				self namespace_71e9cb84::function_688ed188("pstfx_frost_up", 1);
				break;
			}
			case "out_of_bounds":
			{
				self function_ed57c386();
				break;
			}
		}
	}
}

/*
	Name: function_ed57c386
	Namespace: namespace_b2b18209
	Checksum: 0x37DC7360
	Offset: 0x1BD8
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_ed57c386()
{
	self function_faf8f736(1);
	var_1b259f9b = namespace_14b42b8a::function_7faf4c39("s_sim_out_of_bound_warp_" + level.var_ff59b31e);
	self thread namespace_724a4794::function_d53889e2(0, 1, 0.5, 1, "white");
	wait(0.5);
	self namespace_71e9cb84::function_688ed188("sim_out_of_bound");
	self namespace_71e9cb84::function_74d6b22f("player_spawn_fx", 1);
	self function_a30814d(var_1b259f9b[self function_c7f3ce11()].var_722885f3);
	self function_eda2be50(var_1b259f9b[self function_c7f3ce11()].var_6ab6f4fd);
	wait(0.5);
	self namespace_71e9cb84::function_74d6b22f("player_spawn_fx", 0);
	self function_faf8f736(0);
}

/*
	Name: function_8742cfd3
	Namespace: namespace_b2b18209
	Checksum: 0x680E68AB
	Offset: 0x1D70
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_8742cfd3()
{
	namespace_4dbf3ae3::function_1ab5ebec("pod_open_anim_trig");
	level thread namespace_cc27597::function_43718187("cin_inf_04_01_birthai_1st_crying_init_loop");
	var_be695670 = namespace_14b42b8a::function_7922262b("pick_up_baby_objective_pos", "targetname");
	var_ab54d1e = function_6ada35ba("t_baby_use", "targetname");
	var_ab54d1e.var_bfe9d19a = namespace_82b91a51::function_14518e76(var_ab54d1e, &"cp_level_infection_gather_baby", &"CP_MI_CAIRO_INFECTION_T_BABY_USE", &function_b4750e7c);
	namespace_82b91a51::function_76f13293();
	level thread namespace_9ac99a6e::function_a29f7cbd();
	var_ab54d1e waittill("hash_2d864e11", var_5dc5e20a);
	namespace_d0ef8521::function_31cd1834("cp_level_infection_gather_baby");
	level namespace_71e9cb84::function_74d6b22f("lgt_tree_glow_05_fade_out", 1);
	level thread namespace_eccdd5d1::function_582799a6();
	if(isdefined(var_5dc5e20a))
	{
		/#
			function_2e4b8c78("Dev Block strings are not supported");
		#/
		var_ab54d1e.var_bfe9d19a namespace_a230c2b1::function_e54c54c3();
		namespace_cc27597::function_8f9f34e0("cin_inf_04_01_birthai_1st_crying", &function_3372b3a, "play");
		level namespace_ad23e503::function_74d6b22f("baby_picked_up");
		level namespace_cc27597::function_43718187("cin_inf_04_01_birthai_1st_crying", var_5dc5e20a);
		level notify("hash_744b1b8e");
		namespace_1d795d47::function_be8adfb8("sim_reality_starts");
	}
}

/*
	Name: function_b4750e7c
	Namespace: namespace_b2b18209
	Checksum: 0xE143B707
	Offset: 0x1FC8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_b4750e7c(var_5dc5e20a)
{
	self.var_4dbf3ae3 notify("hash_2d864e11", var_5dc5e20a);
}

/*
	Name: function_3372b3a
	Namespace: namespace_b2b18209
	Checksum: 0x1CB35681
	Offset: 0x1FF8
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function function_3372b3a(var_c77d2837)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_71e9cb84::function_688ed188("pstfx_exit_all");
	}
	var_c2cb9b70 = var_c77d2837["baby"];
	level waittill("hash_d1cdd7c");
	var_c2cb9b70 namespace_71e9cb84::function_74d6b22f("infection_baby_shader", 1);
	level waittill("hash_ad6cab7b");
	var_c2cb9b70 function_8c8e79fe();
	level namespace_71e9cb84::function_74d6b22f("break_baby", 1);
	level waittill("hash_1fd5443a");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_71e9cb84::function_688ed188("pstfx_frost_up_baby", 1);
	}
	level waittill("hash_35e91f99");
	level thread namespace_82b91a51::function_7e61de2b(1, "white");
}


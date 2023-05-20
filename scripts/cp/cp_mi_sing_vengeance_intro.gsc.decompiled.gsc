#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_accolades;
#using scripts\cp\cp_mi_sing_vengeance_killing_streets;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_8776ed6e;

/*
	Name: function_62616b71
	Namespace: namespace_8776ed6e
	Checksum: 0xAAF5D82D
	Offset: 0x1ED8
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_62616b71(var_b04bc952, var_74cd64bc)
{
	namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
	namespace_d7916d65::function_73adcefc();
	namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level.var_2fd26037.var_7dfaf62 = 32;
	namespace_63b4601c::function_4e8207e9("intro");
	function_fe17c18(var_b04bc952);
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
	function_5855575b(var_b04bc952);
}

/*
	Name: function_5855575b
	Namespace: namespace_8776ed6e
	Checksum: 0xF21CCF63
	Offset: 0x1FF8
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_5855575b(var_b04bc952)
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 thread function_773ef6a0();
	}
	level thread function_21e6e30e();
	level namespace_ad23e503::function_74d6b22f("intro_wall_done");
	level thread function_6c1c9aad();
	level thread function_858195d5();
	level thread namespace_9fd035::function_d4c52995();
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
	namespace_9f824288::function_5d2cdd99();
	thread namespace_7c587e3e::function_eb9cdcd9();
	level thread function_5fed4787();
	level namespace_ad23e503::function_1ab5ebec("player_near_apartment_stairs");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_773ef6a0
	Namespace: namespace_8776ed6e
	Checksum: 0x60F3BC07
	Offset: 0x2198
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function function_773ef6a0()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_ec8fe31d");
	var_4dbf3ae3 = function_6ada35ba("apartment_light_fire_trigger", "targetname");
	while(1)
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aca0d97d);
		if(var_aca0d97d == self && function_65f192a6(self))
		{
			while(isdefined(self) && self function_32fa5072(var_4dbf3ae3))
			{
				if(!isdefined(self.var_a6b29bdf))
				{
					self.var_a6b29bdf = 1;
					self namespace_71e9cb84::function_e9c3870b("apartment_light_fire_fx", 1);
				}
				wait(0.05);
			}
			self.var_a6b29bdf = undefined;
			self namespace_71e9cb84::function_e9c3870b("apartment_light_fire_fx", 0);
		}
	}
}

/*
	Name: function_38736bb4
	Namespace: namespace_8776ed6e
	Checksum: 0x802F7883
	Offset: 0x22D0
	Size: 0x333
	Parameters: 0
	Flags: None
*/
function function_38736bb4()
{
	level thread namespace_63b4601c::function_e3420328("intro_ambient_anims", "start_takedown_igc");
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "dead_civ1";
	var_6a07eb6c[1] = "dead_civ2";
	var_6a07eb6c[2] = "dead_civ3";
	var_6a07eb6c[3] = "dead_civ4";
	namespace_cc27597::function_8f9f34e0("cin_ven_01_20_introstreet_bodies_vign", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	var_4254e946 = [];
	var_4254e946[0] = "outside_dead_body_01";
	var_4254e946[1] = "outside_dead_body_02";
	var_4254e946[2] = "outside_dead_body_03";
	var_4254e946[3] = "outside_dead_body_04";
	var_4254e946[4] = "outside_dead_body_05";
	var_4254e946[5] = "outside_dead_body_06";
	var_4254e946[6] = "outside_dead_body_07";
	var_4254e946[7] = "outside_dead_body_08";
	var_4254e946[8] = "outside_dead_body_09";
	var_4254e946[9] = "outside_dead_body_10";
	namespace_cc27597::function_8f9f34e0("cin_ven_01_25_outside_apt_bodies_vign", &namespace_63b4601c::function_65a61b78, "play", var_4254e946);
	var_685763af = [];
	var_685763af[0] = "inside_dead_body_01";
	var_685763af[1] = "inside_dead_body_02";
	var_685763af[2] = "inside_dead_body_03";
	namespace_cc27597::function_8f9f34e0("cin_ven_02_05_inside_apt_bodies_vign", &namespace_63b4601c::function_65a61b78, "play", var_685763af);
	level thread namespace_cc27597::function_43718187("cin_ven_01_20_introstreet_bodies_vign");
	level thread namespace_cc27597::function_43718187("cin_ven_01_25_outside_apt_bodies_vign");
	level thread namespace_cc27597::function_43718187("cin_ven_02_05_inside_apt_bodies_vign");
	level namespace_ad23e503::function_1ab5ebec("start_takedown_igc");
	level thread namespace_cc27597::function_fcf56ab5("cin_ven_01_20_introstreet_bodies_vign");
	level thread namespace_cc27597::function_fcf56ab5("cin_ven_01_25_outside_apt_bodies_vign");
	level thread namespace_cc27597::function_fcf56ab5("cin_ven_02_05_inside_apt_bodies_vign");
	namespace_63b4601c::function_4e8207e9("intro", 0);
}

/*
	Name: function_fe17c18
	Namespace: namespace_8776ed6e
	Checksum: 0x34300EED
	Offset: 0x2610
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_fe17c18(var_b04bc952)
{
	var_d3b2290d = namespace_14b42b8a::function_7922262b("tag_align_intro", "targetname");
	namespace_63b4601c::function_ac2b4535("cin_ven_01_intro_3rd_sh070", "intro_igc_teleport");
	var_d3b2290d namespace_cc27597::function_c35e6aab("cin_ven_01_intro_3rd_sh010");
	namespace_82b91a51::function_d8eaed3d(1);
	level thread function_38736bb4();
	level thread function_1c58a370();
	namespace_d7916d65::function_c32ba481();
	namespace_82b91a51::function_46d3a558(&"CP_MI_SING_VENGEANCE_INTRO_LINE_1_FULL", &"CP_MI_SING_VENGEANCE_INTRO_LINE_1_SHORT", &"CP_MI_SING_VENGEANCE_INTRO_LINE_2_FULL", &"CP_MI_SING_VENGEANCE_INTRO_LINE_2_SHORT", &"CP_MI_SING_VENGEANCE_INTRO_LINE_3_FULL", &"CP_MI_SING_VENGEANCE_INTRO_LINE_3_SHORT", &"CP_MI_SING_VENGEANCE_INTRO_LINE_4_FULL", &"CP_MI_SING_VENGEANCE_INTRO_LINE_4_SHORT");
	thread namespace_7c587e3e::function_4368969a();
	if(isdefined(level.var_42ed4e79))
	{
		level thread [[level.var_42ed4e79]]();
	}
	level thread namespace_9fd035::function_7dc66faa();
	var_d3b2290d namespace_cc27597::function_43718187("cin_ven_01_intro_3rd_sh010");
	level waittill("hash_f6604936");
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_21e6e30e
	Namespace: namespace_8776ed6e
	Checksum: 0xCEBFE949
	Offset: 0x27C0
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_21e6e30e()
{
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_safehouse");
	level namespace_ad23e503::function_1ab5ebec("send_hendricks_to_apartment_entrance");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("waypoint_intro1"));
	level namespace_ad23e503::function_1ab5ebec("apartment_entrance_door_open");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("waypoint_intro1"));
	level thread function_a1d4e729("breadcrumb_apartment1_triggered", "set_breadcrumb_apartment1", "breadcrumb_apartment1");
	level namespace_ad23e503::function_1ab5ebec("breadcrumb_apartment1_triggered");
	if(!level namespace_ad23e503::function_7922262b("breadcrumb_apartment1"))
	{
		level notify("hash_9f640c4a");
	}
	level thread function_a1d4e729("breadcrumb_apartment2_triggered", "set_breadcrumb_apartment2", "breadcrumb_apartment2");
	level namespace_ad23e503::function_1ab5ebec("breadcrumb_apartment2_triggered");
	if(!level namespace_ad23e503::function_7922262b("breadcrumb_apartment2"))
	{
		level notify("hash_9f640c4a");
	}
	level thread function_a1d4e729("breadcrumb_apartment3_triggered", "set_breadcrumb_apartment3", "breadcrumb_apartment3");
}

/*
	Name: function_a1d4e729
	Namespace: namespace_8776ed6e
	Checksum: 0x73A80B5D
	Offset: 0x29C0
	Size: 0x6B
	Parameters: 3
	Flags: None
*/
function function_a1d4e729(var_6fbdf20, var_868a1dff, var_45d1556)
{
	level endon(var_6fbdf20);
	level namespace_ad23e503::function_1ab5ebec(var_868a1dff);
	level namespace_d0ef8521::function_45d1556(var_45d1556);
	level namespace_ad23e503::function_74d6b22f(var_45d1556);
}

/*
	Name: function_1c58a370
	Namespace: namespace_8776ed6e
	Checksum: 0xF07227A4
	Offset: 0x2A38
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_1c58a370()
{
	level endon("hash_4ed4a34a");
	namespace_96fa87af::function_994832bd("intro_street_technical", &function_52f443ca);
	namespace_96fa87af::function_994832bd("intro_street_technical2", &function_52f443ca);
	level namespace_ad23e503::function_1ab5ebec("send_hendricks_to_apartment_entrance");
	level thread namespace_7c587e3e::function_6dcacaf4();
	wait(1);
	var_a92ed095 = namespace_96fa87af::function_2962e239("intro_street_technical");
	var_7d36720d = namespace_96fa87af::function_2962e239("intro_street_technical2");
	wait(0.25);
	var_a92ed095 thread function_b36ddcbc();
	var_7d36720d thread function_b36ddcbc();
}

/*
	Name: function_3b2e29a
	Namespace: namespace_8776ed6e
	Checksum: 0xA61F03E5
	Offset: 0x2B60
	Size: 0x157
	Parameters: 0
	Flags: None
*/
function function_3b2e29a()
{
	level endon("hash_4ed4a34a");
	var_74952a22 = 0;
	namespace_96fa87af::function_994832bd("intro_street_technical", &function_52f443ca);
	namespace_96fa87af::function_994832bd("intro_street_technical2", &function_52f443ca);
	while(var_74952a22 <= 75)
	{
		if(namespace_d73b9283::function_d2c92ee7())
		{
			var_a92ed095 = namespace_96fa87af::function_2962e239("intro_street_technical");
		}
		else
		{
			var_a92ed095 = namespace_96fa87af::function_2962e239("intro_street_technical");
			var_7d36720d = namespace_96fa87af::function_2962e239("intro_street_technical2");
		}
		var_74952a22++;
		wait(0.25);
		var_a92ed095 thread function_b36ddcbc();
		if(isdefined(var_7d36720d))
		{
			var_7d36720d thread function_b36ddcbc();
		}
		wait(function_72a94f05(15, 20));
	}
}

/*
	Name: function_52f443ca
	Namespace: namespace_8776ed6e
	Checksum: 0x34D3A75D
	Offset: 0x2CC0
	Size: 0xED
	Parameters: 0
	Flags: None
*/
function function_52f443ca()
{
	var_ae407c5 = [];
	var_5ee71f72 = function_84970cc4("driver", "gunner1");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ee71f72.size; var_c957f6b6++)
	{
		var_ae407c5[var_c957f6b6] = namespace_2f06d687::function_7387a40a("intro_street_technical_enemy1");
		if(isdefined(var_ae407c5[var_c957f6b6]))
		{
			var_ae407c5[var_c957f6b6] namespace_d84e54db::function_b4f5e3b9(1);
			var_ae407c5[var_c957f6b6] namespace_96fa87af::function_230eadd7(self, var_5ee71f72[var_c957f6b6], 1);
		}
	}
}

/*
	Name: function_b36ddcbc
	Namespace: namespace_8776ed6e
	Checksum: 0xCA8A7F88
	Offset: 0x2DB8
	Size: 0x1F5
	Parameters: 0
	Flags: None
*/
function function_b36ddcbc()
{
	self endon("hash_128f8789");
	level endon("hash_4ed4a34a");
	self namespace_37b990db::function_f4546867(1, 2, 0.25, 0.75, 1);
	var_dfb53de7 = self namespace_96fa87af::function_ad4ec07a("gunner1");
	if(isdefined(var_dfb53de7))
	{
		var_153dcea0 = namespace_14b42b8a::function_7faf4c39("intro_street_technical_fake_target", "targetname");
		var_282b57c2 = namespace_84970cc4::function_47d18840(var_153dcea0);
		if(!isdefined(var_282b57c2.var_a3d46ee4))
		{
			var_282b57c2.var_a3d46ee4 = function_9b7fda5e("script_model", var_282b57c2.var_722885f3);
			var_282b57c2.var_a3d46ee4 function_e48f905e("tag_origin");
			var_282b57c2.var_a3d46ee4.var_3a90f16b = 1;
			var_282b57c2.var_a3d46ee4 thread function_352b4f2e();
		}
		self thread namespace_37b990db::function_d104c596(var_282b57c2.var_a3d46ee4, -1, undefined, 1, 0);
		var_dfb53de7 waittill("hash_128f8789");
		self notify("hash_c7d626");
	}
}

/*
	Name: function_352b4f2e
	Namespace: namespace_8776ed6e
	Checksum: 0x85972CD4
	Offset: 0x2FB8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_352b4f2e()
{
	level namespace_ad23e503::function_1ab5ebec("takedown_begin");
	wait(1);
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_6c1c9aad
	Namespace: namespace_8776ed6e
	Checksum: 0xD6446FB8
	Offset: 0x3008
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function function_6c1c9aad()
{
	var_cb5f6358 = function_6ada35ba("apt_door_l", "targetname");
	var_7af28d51 = function_6ada35ba("apt_door_l_clip", "targetname");
	var_7af28d51 function_37f7858a(var_cb5f6358);
	var_1f32c7f6 = function_6ada35ba("apt_door_r", "targetname");
	var_46820983 = function_6ada35ba("apt_door_r_clip", "targetname");
	var_46820983 function_37f7858a(var_1f32c7f6);
	level.var_469a8d0d = namespace_14b42b8a::function_7922262b("hendricks_apartment_anim_struct", "targetname");
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "dead_door_civilian";
	namespace_cc27597::function_8f9f34e0("cin_ven_02_10_apthorror_enterbldg_vign", &namespace_63b4601c::function_65a61b78, "init", var_6a07eb6c);
	level.var_469a8d0d namespace_cc27597::function_c35e6aab("cin_ven_02_10_apthorror_enterbldg_vign");
	level.var_af857373 = namespace_14b42b8a::function_7922262b("hendricks_street_anim_struct", "targetname");
	level.var_469a8d0d namespace_cc27597::function_43718187("cin_ven_01_15_introstreet_walk_vign");
	if(!level namespace_ad23e503::function_7922262b("hendricks_move_to_apartment_building"))
	{
		level namespace_ad23e503::function_1ab5ebec("hendricks_move_to_apartment_building");
	}
	level thread function_8fc34056();
	wait(3.5);
	level thread namespace_7c587e3e::function_677a24e2();
	wait(1.5);
	level namespace_ad23e503::function_74d6b22f("apartment_entrance_door_open");
}

/*
	Name: function_8fc34056
	Namespace: namespace_8776ed6e
	Checksum: 0xF45167C4
	Offset: 0x3290
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_8fc34056()
{
	level endon("hash_1d07a130");
	level endon("hash_2d132925");
	level endon("hash_fca941a1");
	level thread function_d5df9cca("breadcrumb_apartment1_triggered", "set_breadcrumb_apartment1");
	level thread function_d5df9cca("breadcrumb_apartment2_triggered", "set_breadcrumb_apartment2");
	level thread function_d5df9cca("breadcrumb_apartment3_triggered", "set_breadcrumb_apartment3");
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "dead_door_civilian";
	namespace_cc27597::function_8f9f34e0("cin_ven_02_10_apthorror_enterbldg_vign", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	level.var_469a8d0d namespace_cc27597::function_43718187("cin_ven_02_10_apthorror_enterbldg_vign");
	if(!level namespace_ad23e503::function_7922262b("breadcrumb_apartment1_triggered"))
	{
		level namespace_ad23e503::function_1ab5ebec("breadcrumb_apartment1_triggered");
	}
	level.var_469a8d0d namespace_cc27597::function_43718187("cin_ven_02_10_apthorror_firstfloorapt_vign");
	if(isdefined(level.var_46bdf616))
	{
		level thread [[level.var_46bdf616]]();
	}
	if(!level namespace_ad23e503::function_7922262b("player_near_apartment_stairs"))
	{
		level namespace_ad23e503::function_1ab5ebec("player_near_apartment_stairs");
	}
	level.var_469a8d0d namespace_cc27597::function_43718187("cin_ven_02_10_apthorror_secondfloorapt_vign");
}

/*
	Name: function_d5df9cca
	Namespace: namespace_8776ed6e
	Checksum: 0x37A8B740
	Offset: 0x3488
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_d5df9cca(var_6fbdf20, var_1e583720)
{
	level endon(var_6fbdf20);
	level.var_2fd26037 waittill(var_1e583720);
	level namespace_ad23e503::function_74d6b22f(var_1e583720);
}

/*
	Name: function_858195d5
	Namespace: namespace_8776ed6e
	Checksum: 0x5427F7C6
	Offset: 0x34D8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_858195d5()
{
	wait(2);
	level thread function_d259704f();
	level namespace_ad23e503::function_1ab5ebec("send_hendricks_to_apartment_entrance");
	wait(3);
	level thread namespace_71b8dba1::function_13b3b16a("plyr_let_s_get_out_of_the_0");
	level namespace_ad23e503::function_74d6b22f("hendricks_move_to_apartment_building");
	wait(4.5);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_agreed_we_ll_cut_th_1");
	level namespace_ad23e503::function_1ab5ebec("hendricks_apartment_vo");
	level thread function_c55b72a5();
	level endon("hash_1d07a130");
	level.var_2fd26037 namespace_82b91a51::function_564f2d81("noise_upstairs", "player_near_apartment_stairs");
	thread namespace_7c587e3e::function_afc6fda4();
	wait(1);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_contact_upstairs_ta_1");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_hear_it_0");
}

/*
	Name: function_d259704f
	Namespace: namespace_8776ed6e
	Checksum: 0xD959B048
	Offset: 0x3648
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_d259704f()
{
	level endon("hash_996095e7");
	wait(1);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_it_s_a_god_damn_warz_0");
	wait(1);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_they_slaughtered_em_0");
	wait(0.5);
}

/*
	Name: function_19a68bdb
	Namespace: namespace_8776ed6e
	Checksum: 0xF2121BF8
	Offset: 0x36B8
	Size: 0x163
	Parameters: 4
	Flags: None
*/
function function_19a68bdb(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_intro_3rd_sh010");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_intro_3rd_sh020");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_intro_3rd_sh030");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_intro_3rd_sh040");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_intro_3rd_sh050");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_intro_3rd_sh060");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_intro_3rd_sh070");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_15_introstreet_walk_vign");
}

/*
	Name: function_5cb54255
	Namespace: namespace_8776ed6e
	Checksum: 0xE4ADEA73
	Offset: 0x3828
	Size: 0x2BB
	Parameters: 2
	Flags: None
*/
function function_5cb54255(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_82b91a51::function_ab12ef82("start_level");
		namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		level.var_2fd26037.var_7dfaf62 = 32;
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
		level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
		level thread function_38736bb4();
		level.var_469a8d0d = namespace_14b42b8a::function_7922262b("hendricks_apartment_anim_struct", "targetname");
		level.var_469a8d0d thread namespace_cc27597::function_43718187("cin_ven_02_10_apthorror_secondfloorapt_vign");
		level thread function_d5df9cca("breadcrumb_apartment3_triggered", "set_breadcrumb_apartment3");
		level thread function_a1d4e729("breadcrumb_apartment3_triggered", "set_breadcrumb_apartment3", "breadcrumb_apartment3");
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		level namespace_ad23e503::function_74d6b22f("start_level");
		foreach(var_6bfe1586 in level.var_2395e945)
		{
			var_6bfe1586 thread function_773ef6a0();
		}
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_safehouse");
	}
	function_5fed4787();
}

/*
	Name: function_5fed4787
	Namespace: namespace_8776ed6e
	Checksum: 0xE04058E5
	Offset: 0x3AF0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_5fed4787()
{
	level.var_5bc00cbb = namespace_14b42b8a::function_7922262b("bedroom_anim_struct", "targetname");
	level thread function_5ef7fdc2();
	level namespace_ad23e503::function_1ab5ebec("player_near_apartment_stairs");
	thread namespace_7c587e3e::function_7fe43b36();
	level namespace_ad23e503::function_74d6b22f("apartment_begin");
	level thread function_99eb6152();
	level thread function_5274de79();
	level thread function_b3c6efd1();
	level thread function_7acb5fc4();
	level namespace_ad23e503::function_1ab5ebec("apartment_complete");
	namespace_1d795d47::function_be8adfb8("intro");
}

/*
	Name: function_99eb6152
	Namespace: namespace_8776ed6e
	Checksum: 0x27944162
	Offset: 0x3C28
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_99eb6152()
{
	level namespace_ad23e503::function_1ab5ebec("breadcrumb_apartment3_triggered");
	if(!level namespace_ad23e503::function_7922262b("breadcrumb_apartment3"))
	{
		level notify("hash_9f640c4a");
	}
	level waittill("hash_cf441b58");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("waypoint_intro5"));
}

/*
	Name: function_5274de79
	Namespace: namespace_8776ed6e
	Checksum: 0x71E55A5
	Offset: 0x3CC8
	Size: 0x693
	Parameters: 0
	Flags: None
*/
function function_5274de79()
{
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level namespace_ad23e503::function_43ac000b(function_84970cc4("apartment_enemies_alerted", "synckill_scene_complete", "apartment_enemies_dead"));
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	wait(0.05);
	if(level.var_469a8d0d namespace_cc27597::function_367f8966("cin_ven_02_10_apthorror_enterbldg_vign"))
	{
		level.var_469a8d0d namespace_cc27597::function_fcf56ab5("cin_ven_02_10_apthorror_enterbldg_vign");
	}
	if(level.var_469a8d0d namespace_cc27597::function_367f8966("cin_ven_02_10_apthorror_firstfloorapt_vign"))
	{
		level.var_469a8d0d namespace_cc27597::function_fcf56ab5("cin_ven_02_10_apthorror_firstfloorapt_vign");
	}
	if(level.var_469a8d0d namespace_cc27597::function_367f8966("cin_ven_02_10_apthorror_secondfloorapt_vign"))
	{
		level.var_469a8d0d namespace_cc27597::function_fcf56ab5("cin_ven_02_10_apthorror_secondfloorapt_vign");
	}
	level.var_469a8d0d namespace_cc27597::function_fcf56ab5();
	level.var_2fd26037 function_470f7e4c();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	if(!level namespace_ad23e503::function_7922262b("apartment_enemies_dead"))
	{
		level.var_2fd26037.var_7dfaf62 = 16;
		var_90ca1fdd = function_b4cb3503("hendricks_syncshot_node", "targetname");
		level.var_2fd26037 function_156339b6(var_90ca1fdd);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
		level.var_2fd26037.var_df53bc6 = level.var_2fd26037.var_15dfd6c;
		level.var_2fd26037.var_15dfd6c = 0.1;
		level namespace_ad23e503::function_d266a8b4(8, "apartment_enemies_dead");
		if(!level namespace_ad23e503::function_7922262b("apartment_enemies_dead"))
		{
			if(isdefined(level.var_2fd26037.var_df53bc6))
			{
				level.var_2fd26037.var_15dfd6c = level.var_2fd26037.var_df53bc6;
			}
			level namespace_ad23e503::function_1ab5ebec("apartment_enemies_dead");
		}
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		if(isdefined(level.var_2fd26037.var_df53bc6))
		{
			level.var_2fd26037.var_15dfd6c = level.var_2fd26037.var_df53bc6;
		}
	}
	level thread function_dcf3d41b();
	var_90ca1fdd = function_b4cb3503("hendricks_bedroom_door_node", "targetname");
	level.var_2fd26037 function_169cc712(var_90ca1fdd);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level thread namespace_82b91a51::function_d8eaed3d(2);
	level thread function_ee2ef2f3();
	level.var_5bc00cbb thread namespace_cc27597::function_43718187("cin_ven_02_30_masterbedroom_vign");
	wait(11);
	function_4a0fb95e("cp_vengeance_env_sign_dancer01");
	wait(0.05);
	level thread namespace_63b4601c::function_ab876b5a("cp_vengeance_env_sign_dancer01", "strip_video_start", "strip_video_end");
	wait(0.05);
	level notify("hash_96cd3d20");
	var_90ca1fdd = function_b4cb3503("hendricks_takedown_rooftop_node", "targetname");
	level.var_2fd26037 function_169cc712(var_90ca1fdd);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	var_b340b98b = function_6ada35ba("chair_a_clip_top", "targetname");
	if(isdefined(var_b340b98b))
	{
		var_b340b98b function_dc8c8404();
	}
	wait(2);
	level thread function_caf96976();
	level.var_5bc00cbb waittill("hash_accb9cfa");
	level notify("hash_cf441b58");
	level namespace_ad23e503::function_74d6b22f("bedroom_scene_complete");
	level namespace_ad23e503::function_1ab5ebec("player_on_takedown_rooftop");
	var_9c1589f3 = function_99201f25("gunfire_behind_window", "targetname");
	foreach(var_a98f7ab in var_9c1589f3)
	{
		var_a98f7ab function_50ccee8d();
	}
	level namespace_ad23e503::function_74d6b22f("apartment_complete");
}

/*
	Name: function_dcf3d41b
	Namespace: namespace_8776ed6e
	Checksum: 0x5015D38D
	Offset: 0x4368
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_dcf3d41b()
{
	if(!level namespace_ad23e503::function_7922262b("hendricks_on_second_floor_apartment"))
	{
		level namespace_ad23e503::function_1ab5ebec("hendricks_on_second_floor_apartment");
	}
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
}

/*
	Name: function_5ef7fdc2
	Namespace: namespace_8776ed6e
	Checksum: 0xB7C13CEB
	Offset: 0x43E0
	Size: 0x413
	Parameters: 0
	Flags: None
*/
function function_5ef7fdc2()
{
	namespace_4dbf3ae3::function_1ab5ebec("apartment_light_fire_trigger");
	level.var_1dca7888 = [];
	var_71e5f989 = function_99201f25("apartment_enemy", "script_noteworthy");
	var_6a00e3c4 = namespace_2f06d687::function_22356ba7(var_71e5f989, &function_1f707d1e);
	var_12d51ad2 = function_99201f25("apartment_civilian", "script_noteworthy");
	var_c5b87ef7 = namespace_2f06d687::function_22356ba7(var_12d51ad2, &function_a645cfd9);
	var_1cef4611 = function_6ada35ba("bedroom_door_right", "targetname");
	var_59f550ce = function_6ada35ba("bedroom_door_right_clip", "targetname");
	var_59f550ce function_37f7858a(var_1cef4611);
	var_517e2322 = function_6ada35ba("bedroom_door_left", "targetname");
	var_702c9f7 = function_6ada35ba("bedroom_door_left_clip", "targetname");
	var_702c9f7 function_37f7858a(var_517e2322);
	level.var_5bc00cbb thread namespace_cc27597::function_c35e6aab("cin_ven_02_20_synckill_vign");
	level.var_7819b21b = level.var_1dca7888.size;
	namespace_523da15d::function_dab879d0();
	var_4dbf3ae3 = function_6ada35ba("syncshot_lookat_trigger", "targetname");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_4e050c10(var_4dbf3ae3, "syncshot_lookat_failsafe");
	}
	var_4dbf3ae3 = function_6ada35ba("syncshot_stair_lookat_trigger", "targetname");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_4e050c10(var_4dbf3ae3, "syncshot_lookat_failsafe");
	}
	level namespace_ad23e503::function_43ac000b(function_84970cc4("player_looking", "syncshot_lookat_failsafe"));
	level notify("hash_5262905a");
	level thread function_7f6de599();
	level namespace_ad23e503::function_43ac000b(function_84970cc4("apartment_enemies_alerted", "synckill_scene_complete", "apartment_enemies_dead"));
}

/*
	Name: function_4e050c10
	Namespace: namespace_8776ed6e
	Checksum: 0xC2C09636
	Offset: 0x4800
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_4e050c10(var_4dbf3ae3, var_6fbdf20)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_eb101888");
	if(isdefined(var_6fbdf20))
	{
		level endon(var_6fbdf20);
	}
	var_c532cf91 = namespace_14b42b8a::function_7922262b(var_4dbf3ae3.var_b07228b6, "targetname");
	while(1)
	{
		if(self function_32fa5072(var_4dbf3ae3))
		{
			if(namespace_82b91a51::function_d61b846f(var_c532cf91.var_722885f3, 0.6, 1))
			{
				level namespace_ad23e503::function_74d6b22f("player_looking");
				break;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_7f6de599
	Namespace: namespace_8776ed6e
	Checksum: 0x345A3E69
	Offset: 0x4900
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_7f6de599()
{
	level endon("hash_1d07a130");
	level.var_5bc00cbb thread namespace_cc27597::function_43718187("cin_ven_02_20_synckill_vign");
	thread namespace_7c587e3e::function_57ec1ad7();
	wait(0.25);
	level.var_5bc00cbb waittill("hash_accb9cfa");
	level namespace_ad23e503::function_74d6b22f("synckill_scene_complete");
}

/*
	Name: function_1f707d1e
	Namespace: namespace_8776ed6e
	Checksum: 0xBABA3730
	Offset: 0x4980
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_1f707d1e()
{
	self endon("hash_128f8789");
	namespace_84970cc4::function_69554b3e(level.var_1dca7888, self);
	self.var_7dfaf62 = 32;
	if(isdefined(self.var_170527fb))
	{
		if(self.var_170527fb == "synckill_enemy1_ai")
		{
			level.var_657f947a = self;
		}
		if(self.var_170527fb == "synckill_enemy2_ai")
		{
			level.var_3f7d1a11 = self;
		}
		if(self.var_170527fb == "synckill_enemy3_ai")
		{
			level.var_197a9fa8 = self;
		}
	}
	level namespace_ad23e503::function_43ac000b(function_84970cc4("player_looking", "syncshot_lookat_failsafe"));
	self thread function_fb5e09cf();
	if(self.var_170527fb == "synckill_enemy2_ai")
	{
		self thread function_3a005b50();
		self waittill("hash_940c80ec");
		self.var_bab9655e = 1;
	}
	self thread function_1d07a130();
	self thread function_5a4b0113();
}

/*
	Name: function_3a005b50
	Namespace: namespace_8776ed6e
	Checksum: 0x19E1892
	Offset: 0x4AE8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3a005b50()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_82b91a51::function_5b7e3888("damage", "alert", "killable_now");
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_a645cfd9
	Namespace: namespace_8776ed6e
	Checksum: 0xD4A82F5
	Offset: 0x4B60
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a645cfd9()
{
	self.var_255b9315 = 1;
	self.var_3e94206a = "allies";
	self function_80765127();
}

/*
	Name: function_fb5e09cf
	Namespace: namespace_8776ed6e
	Checksum: 0xE5FDDFB6
	Offset: 0x4BA0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_fb5e09cf()
{
	self waittill("hash_128f8789");
	if(!level namespace_ad23e503::function_7922262b("apartment_enemy_dead"))
	{
		level namespace_ad23e503::function_74d6b22f("apartment_enemy_dead");
	}
	level.var_1dca7888 = namespace_84970cc4::function_b87262e(level.var_1dca7888);
	if(level.var_1dca7888.size == 0)
	{
		level namespace_ad23e503::function_74d6b22f("apartment_enemies_dead");
	}
}

/*
	Name: function_5a4b0113
	Namespace: namespace_8776ed6e
	Checksum: 0xE68B44A1
	Offset: 0x4C48
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_5a4b0113()
{
	self endon("hash_128f8789");
	level endon("hash_fca941a1");
	self waittill("hash_78a7a5b9", var_86c93e40);
	if(!level namespace_ad23e503::function_7922262b("apartment_enemies_alerted"))
	{
		level namespace_ad23e503::function_74d6b22f("apartment_enemies_alerted");
	}
}

/*
	Name: function_1d07a130
	Namespace: namespace_8776ed6e
	Checksum: 0x7DD73E86
	Offset: 0x4CC8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_1d07a130()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_43ac000b(function_84970cc4("apartment_enemies_alerted", "synckill_scene_complete", "syncshot_lookat_failsafe"));
	if(level namespace_ad23e503::function_7922262b("syncshot_lookat_failsafe"))
	{
		wait(0.25);
	}
	self notify("hash_78a7a5b9");
	if(level namespace_ad23e503::function_7922262b("apartment_enemies_alerted") || level namespace_ad23e503::function_7922262b("syncshot_lookat_failsafe"))
	{
		self function_470f7e4c();
		wait(0.05);
	}
	var_90ca1fdd = function_b4cb3503(self.var_b07228b6, "targetname");
	self function_169cc712(var_90ca1fdd, 1, 8);
}

/*
	Name: function_b3c6efd1
	Namespace: namespace_8776ed6e
	Checksum: 0xCC38F619
	Offset: 0x4E08
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b3c6efd1()
{
	level namespace_ad23e503::function_1ab5ebec("player_near_apartment_stairs");
	wait(0.5);
	level.var_2fd26037 notify("hash_7d304e15");
	level thread function_cce1e811();
	level.var_2fd26037 waittill("hash_d05bd175");
	level namespace_71b8dba1::function_13b3b16a("plyr_once_we_find_her_n_0");
}

/*
	Name: function_cce1e811
	Namespace: namespace_8776ed6e
	Checksum: 0xE7D888D4
	Offset: 0x4E98
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_cce1e811()
{
	level endon("hash_1d07a130");
	level endon("hash_2d132925");
	if(!level namespace_ad23e503::function_7922262b("hendricks_on_second_floor_apartment"))
	{
		level namespace_ad23e503::function_1ab5ebec("hendricks_on_second_floor_apartment");
	}
	if(!level namespace_ad23e503::function_7922262b("player_is_upstairs"))
	{
		level namespace_ad23e503::function_1ab5ebec("player_is_upstairs");
	}
	wait(2);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_take_them_out_1");
}

/*
	Name: function_c55b72a5
	Namespace: namespace_8776ed6e
	Checksum: 0x1A0EA4F0
	Offset: 0x4F60
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_c55b72a5()
{
	level endon("hash_a2cf5f81");
	var_ba1e1975 = function_6ada35ba("bedroom_audio_origin", "targetname");
	level thread function_a5bf9c17(var_ba1e1975);
	level namespace_ad23e503::function_43ac000b(function_84970cc4("apartment_enemies_alerted", "syncshot_lookat_failsafe"));
	level notify("hash_3962ec94");
	var_ba1e1975 notify("hash_3962ec94");
}

/*
	Name: function_a5bf9c17
	Namespace: namespace_8776ed6e
	Checksum: 0x9785F1B2
	Offset: 0x5008
	Size: 0x243
	Parameters: 1
	Flags: None
*/
function function_a5bf9c17(var_ba1e1975)
{
	level endon("hash_1d07a130");
	level endon("hash_1047ee39");
	var_ba1e1975 = function_6ada35ba("bedroom_audio_origin", "targetname");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim1_what_are_you_going_t_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("mciv_leave_us_alone_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim2_no_no_he_s_mine_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim2_death_will_be_quick_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("mciv_what_s_wrong_with_yo_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim1_you_did_plenty_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim1_all_of_you_have_liv_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim2_tell_her_goodbye_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("mciv_no_0");
	wait(2);
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim3_now_it_s_your_turn_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim1_no_one_s_left_to_sav_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim3_i_want_a_piece_of_he_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim3_you_ll_get_them_one_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim2_the_last_one_died_to_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim1_is_that_your_daughte_0");
	var_ba1e1975 namespace_63b4601c::function_5fbec645("ffim2_i_bet_she_s_soft_0");
}

/*
	Name: function_4bd6211
	Namespace: namespace_8776ed6e
	Checksum: 0x918C1E5
	Offset: 0x5258
	Size: 0x107
	Parameters: 1
	Flags: None
*/
function function_4bd6211(var_ba1e1975)
{
	level endon("hash_5262905a");
	var_2ab10bee = [];
	var_2ab10bee[0] = "fciv_crying_hysterically_0";
	var_2ab10bee[1] = "fciv_crying_hysterically_1";
	var_2ab10bee[2] = "fciv_crying_hysterically_2";
	var_2ab10bee[3] = "fciv_crying_hysterically_3";
	var_2ab10bee[4] = "fciv_crying_hysterically_4";
	var_2ab10bee[5] = "fciv_crying_hysterically_5";
	while(1)
	{
		var_616d3e3e = namespace_84970cc4::function_47d18840(var_2ab10bee);
		var_ba1e1975 namespace_63b4601c::function_5fbec645(var_616d3e3e);
		wait(function_72a94f05(0.5, 2));
	}
}

/*
	Name: function_7acb5fc4
	Namespace: namespace_8776ed6e
	Checksum: 0xA046B335
	Offset: 0x5368
	Size: 0x3E9
	Parameters: 0
	Flags: None
*/
function function_7acb5fc4()
{
	level.var_5bc00cbb namespace_cc27597::function_c35e6aab("cin_ven_02_30_masterbedroom_vign");
	wait(0.5);
	var_dad63b6d = [];
	var_a0eb961c = function_6ada35ba("chair_a", "targetname");
	namespace_84970cc4::function_69554b3e(var_dad63b6d, var_a0eb961c);
	var_f55990dd = function_6ada35ba("chair_a_clip", "targetname");
	namespace_84970cc4::function_69554b3e(var_dad63b6d, var_f55990dd);
	var_f55990dd function_37f7858a(var_a0eb961c);
	var_a6f749a8 = function_6ada35ba("door_exit", "targetname");
	namespace_84970cc4::function_69554b3e(var_dad63b6d, var_a6f749a8);
	var_c7bdecc1 = function_6ada35ba("door_exit_clip", "targetname");
	namespace_84970cc4::function_69554b3e(var_dad63b6d, var_c7bdecc1);
	var_c7bdecc1 function_37f7858a(var_a6f749a8);
	var_7f0731c6 = var_a6f749a8.var_722885f3;
	var_c815eaa0 = var_a6f749a8.var_6ab6f4fd;
	var_8ac07505 = [];
	var_8ac07505[var_8ac07505.size] = function_6ada35ba("synckill_dead_civilian_ai", "targetname");
	var_8ac07505[var_8ac07505.size] = function_6ada35ba("synckill_husband_ai", "targetname");
	var_8ac07505[var_8ac07505.size] = function_6ada35ba("synckill_wife_ai", "targetname");
	foreach(var_e227e629 in var_8ac07505)
	{
		var_e227e629.var_255b9315 = 1;
	}
	level namespace_ad23e503::function_1ab5ebec("start_takedown_igc");
	var_a6f749a8 function_470f7e4c();
	var_a6f749a8.var_722885f3 = var_7f0731c6;
	var_a6f749a8.var_6ab6f4fd = var_c815eaa0;
	level namespace_ad23e503::function_1ab5ebec("start_dogleg_1_intro");
	foreach(var_a9dea446 in var_dad63b6d)
	{
		if(isdefined(var_a9dea446))
		{
			var_a9dea446 function_dc8c8404();
		}
	}
}

/*
	Name: function_4762cf8f
	Namespace: namespace_8776ed6e
	Checksum: 0x568DB185
	Offset: 0x5760
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_4762cf8f(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_20681e14
	Namespace: namespace_8776ed6e
	Checksum: 0x5573830A
	Offset: 0x5790
	Size: 0x373
	Parameters: 2
	Flags: None
*/
function function_20681e14(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		level.var_2fd26037.var_7dfaf62 = 32;
		level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
		function_ee2ef2f3();
		while(!level namespace_cc27597::function_92591589("cin_ven_03_10_takedown_intro_1st"))
		{
			wait(0.05);
		}
		while(!level namespace_cc27597::function_92591589("cin_ven_03_10_takedown_intro_1st_props"))
		{
			wait(0.05);
		}
		while(!level namespace_cc27597::function_92591589("cin_ven_01_02_rooftop_1st_overlook"))
		{
			wait(0.05);
		}
		function_4a0fb95e("cp_vengeance_env_sign_dancer01");
		wait(0.05);
		level thread namespace_63b4601c::function_ab876b5a("cp_vengeance_env_sign_dancer01", "strip_video_start", "strip_video_end");
		wait(0.05);
		level notify("hash_96cd3d20");
		namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("waypoint_intro5"));
		level thread function_caf96976();
		var_9c1589f3 = function_99201f25("gunfire_behind_window", "targetname");
		foreach(var_a98f7ab in var_9c1589f3)
		{
			var_a98f7ab function_50ccee8d();
		}
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_safehouse");
		level namespace_82b91a51::function_d8eaed3d(2);
		namespace_d7916d65::function_a2995f22();
	}
	thread namespace_7c587e3e::function_7be69db9();
	level namespace_ad23e503::function_74d6b22f("takedown_begin");
	function_3fc7f1e8(var_74cd64bc);
}

/*
	Name: function_3fc7f1e8
	Namespace: namespace_8776ed6e
	Checksum: 0x651C62F8
	Offset: 0x5B10
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_3fc7f1e8(var_74cd64bc)
{
	level thread function_e522974a(var_74cd64bc);
	level thread function_e670b187();
	level thread function_f3b5323a();
	level thread function_4ac99079();
	level thread function_627987c5();
	level namespace_ad23e503::function_1ab5ebec("takedown_complete");
	namespace_1d795d47::function_be8adfb8("takedown");
}

/*
	Name: function_e522974a
	Namespace: namespace_8776ed6e
	Checksum: 0xE439A75E
	Offset: 0x5BD8
	Size: 0x151
	Parameters: 1
	Flags: None
*/
function function_e522974a(var_74cd64bc)
{
	var_9c1589f3 = function_99201f25("gunfire_behind_window", "targetname");
	foreach(var_a98f7ab in var_9c1589f3)
	{
		var_a98f7ab function_50ccee8d();
	}
	function_fb3f26d6(var_74cd64bc);
	foreach(var_a98f7ab in var_9c1589f3)
	{
		var_a98f7ab function_50ccee8d();
	}
}

/*
	Name: function_fb3f26d6
	Namespace: namespace_8776ed6e
	Checksum: 0x8DEE110F
	Offset: 0x5D38
	Size: 0x601
	Parameters: 1
	Flags: None
*/
function function_fb3f26d6(var_74cd64bc)
{
	level endon("hash_ec8fe31d");
	if(isdefined(var_74cd64bc) && var_74cd64bc)
	{
		wait(1);
	}
	level namespace_ad23e503::function_9d134160("player_looking");
	var_4dbf3ae3 = function_6ada35ba("takedown_window_gunfire_trigger", "targetname");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_4e050c10(var_4dbf3ae3, "start_takedown_igc");
	}
	level namespace_ad23e503::function_1ab5ebec("player_looking");
	var_9c1589f3 = function_99201f25("gunfire_behind_window", "targetname");
	var_34fb19f = namespace_14b42b8a::function_7922262b("takedown_window_gunfire_magicbullet_start", "targetname");
	var_3fc1574 = namespace_14b42b8a::function_7922262b("takedown_window_gunfire_magicbullet_end", "targetname");
	wait(1);
	foreach(var_a98f7ab in var_9c1589f3)
	{
		var_a98f7ab function_48f26766();
	}
	function_87f3c622(level.var_2fd26037.var_dfcc01fd, var_34fb19f.var_722885f3, var_3fc1574.var_722885f3);
	function_37cbcf1a("evt_apt_win_gunfire_1", (20497, -4382, 492));
	wait(0.15);
	foreach(var_a98f7ab in var_9c1589f3)
	{
		var_a98f7ab function_50ccee8d();
	}
	wait(0.1);
	foreach(var_a98f7ab in var_9c1589f3)
	{
		var_a98f7ab function_48f26766();
	}
	function_87f3c622(level.var_2fd26037.var_dfcc01fd, var_34fb19f.var_722885f3, var_3fc1574.var_722885f3);
	function_37cbcf1a("evt_apt_win_gunfire_2", (20497, -4382, 492));
	wait(0.15);
	foreach(var_a98f7ab in var_9c1589f3)
	{
		var_a98f7ab function_50ccee8d();
	}
	wait(0.5);
	foreach(var_a98f7ab in var_9c1589f3)
	{
		var_a98f7ab function_48f26766();
	}
	function_87f3c622(level.var_2fd26037.var_dfcc01fd, var_34fb19f.var_722885f3, var_3fc1574.var_722885f3);
	function_37cbcf1a("evt_apt_win_gunfire_3", (20497, -4382, 492));
	wait(0.15);
	foreach(var_a98f7ab in var_9c1589f3)
	{
		var_a98f7ab function_50ccee8d();
	}
}

/*
	Name: function_627987c5
	Namespace: namespace_8776ed6e
	Checksum: 0x4AC4740A
	Offset: 0x6348
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_627987c5()
{
	level namespace_ad23e503::function_1ab5ebec("start_killing_streets_ambient_anims");
	level thread namespace_63b4601c::function_e3420328("killing_streets_ambient_anims", "dogleg_1_begin");
}

/*
	Name: function_e670b187
	Namespace: namespace_8776ed6e
	Checksum: 0x17950EBF
	Offset: 0x63A0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_e670b187()
{
	level namespace_ad23e503::function_1ab5ebec("start_takedown_igc");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("waypoint_intro5"));
	level waittill("hash_3d3af5a5");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("waypoint_intro6"));
	level waittill("hash_bfaac156");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("waypoint_intro6"));
}

/*
	Name: function_f3b5323a
	Namespace: namespace_8776ed6e
	Checksum: 0x416780AF
	Offset: 0x6480
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_f3b5323a()
{
	level namespace_ad23e503::function_1ab5ebec("start_takedown_igc");
	wait(1.5);
	level thread function_d07dfdc1();
	level waittill("hash_d1668ed6");
	level thread namespace_9fd035::function_e18f629a();
	level.var_2fd26037 waittill("hash_6ed80778");
	level namespace_71b8dba1::function_13b3b16a("plyr_this_is_what_happens_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_we_get_kane_then_w_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_we_don_t_leave_one_o_0");
	level notify("hash_c791440b");
}

/*
	Name: function_d07dfdc1
	Namespace: namespace_8776ed6e
	Checksum: 0xE2611967
	Offset: 0x6570
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_d07dfdc1()
{
	level endon("hash_3d3af5a5");
	level waittill("hash_9c3eb25d");
	wait(2);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_more_enemies_inboun_0");
	level waittill("hash_c1a33016");
}

/*
	Name: function_caf96976
	Namespace: namespace_8776ed6e
	Checksum: 0xCC5AB5BA
	Offset: 0x65C8
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_caf96976()
{
	level endon("hash_ec8fe31d");
	var_abd40945 = function_6ada35ba("takedown_enemy_leader_audio_origin", "targetname");
	var_abd40945 namespace_63b4601c::function_5fbec645("ffim1_today_we_rise_agains_0");
	var_abd40945 namespace_63b4601c::function_5fbec645("ffim1_these_things_do_not_0");
	var_abd40945 namespace_63b4601c::function_5fbec645("ffim1_do_not_make_it_quick_0");
	var_abd40945 namespace_63b4601c::function_5fbec645("ffim1_they_are_the_oppress_0");
	var_abd40945 namespace_63b4601c::function_5fbec645("ffim1_every_drop_of_their_0");
	var_abd40945 namespace_63b4601c::function_5fbec645("ffim1_today_the_immortals_0");
	var_abd40945 thread namespace_63b4601c::function_5fbec645("ffim2_yeaaaaahhh_an_0");
	var_abd40945 thread namespace_63b4601c::function_5fbec645("ffim3_death_to_the_oppress_0");
	var_abd40945 thread namespace_63b4601c::function_5fbec645("ffif0_aaaahhhhhh_0");
	var_abd40945 thread namespace_63b4601c::function_5fbec645("ffim2_immorrrtaalllls_0");
}

/*
	Name: function_c6be5e1d
	Namespace: namespace_8776ed6e
	Checksum: 0xAC809B95
	Offset: 0x6748
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_c6be5e1d()
{
	var_e022aef3 = function_6ada35ba("takedown_igc_trigger", "targetname");
	var_e022aef3 endon("hash_128f8789");
	var_e022aef3 namespace_4dbf3ae3::function_1ab5ebec();
	return var_e022aef3.var_aef176e7;
}

/*
	Name: function_4ac99079
	Namespace: namespace_8776ed6e
	Checksum: 0xA9066735
	Offset: 0x67B8
	Size: 0x9C3
	Parameters: 0
	Flags: None
*/
function function_4ac99079()
{
	level.var_3d63f698 thread namespace_cc27597::function_c35e6aab("cin_ven_03_11_gate_convo_vign");
	var_642e55f9 = function_6ada35ba("takedown_gate_right", "targetname");
	var_642e55f9 thread function_9caaccb9();
	var_f8d3fbd6 = function_6ada35ba("takedown_gate_right_clip", "targetname");
	var_f8d3fbd6 thread function_9caaccb9();
	var_f8d3fbd6 function_37f7858a(var_642e55f9, "tag_animate");
	var_eec324aa = function_6ada35ba("takedown_gate_left", "targetname");
	var_eec324aa thread function_9caaccb9();
	var_3a87217f = function_6ada35ba("takedown_gate_left_clip", "targetname");
	var_3a87217f thread function_9caaccb9();
	var_3a87217f function_37f7858a(var_eec324aa, "tag_animate");
	var_fde961b5 = function_c6be5e1d();
	level namespace_ad23e503::function_1ab5ebec("start_takedown_igc");
	level function_a2b65bd2(var_fde961b5);
	level thread namespace_7c587e3e::function_4ac99079();
	if(isdefined(level.var_48158b2b))
	{
		level thread function_497db06c();
	}
	else if(isdefined(level.var_72ec1fc6))
	{
		level thread [[level.var_72ec1fc6]]();
	}
	level.var_3d63f698 thread namespace_cc27597::function_43718187("cin_ven_03_10_takedown_intro_1st");
	level.var_3d63f698 thread namespace_cc27597::function_43718187("cin_ven_03_10_takedown_intro_1st_props");
	level.var_3d63f698 thread namespace_cc27597::function_43718187("cin_ven_01_02_rooftop_1st_overlook");
	level thread function_ca15fd13();
	level.var_2fd26037 waittill("hash_bfcece7d");
	level.var_2fd26037 namespace_175490fb::function_f8669cbf(1);
	namespace_82b91a51::function_a0938376();
	level thread function_94b3c083();
	level thread function_64be6dbe();
	foreach(var_6050ab17 in level.var_138e6961)
	{
		if(function_5b49d38c(var_6050ab17))
		{
			var_6050ab17.var_7dfaf62 = 32;
			var_6050ab17 function_e65887e4(var_6050ab17.var_722885f3, 1);
			var_6050ab17.var_3a90f16b = 40;
			var_6050ab17 namespace_d84e54db::function_b4f5e3b9(0);
			var_6050ab17 namespace_d84e54db::function_c9e45d52(0);
		}
	}
	level.var_2fd26037 waittill("hash_955d6809");
	level.var_6e0b32d8 = level.var_d9f6d6.size;
	namespace_523da15d::function_b510823b();
	function_b8d9ad6e(1, 0.3, 0.3);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_5a7dd25d(0.3);
	}
	level.var_2fd26037 waittill("hash_1fc68837");
	thread namespace_7c587e3e::function_69fc18eb();
	function_b8d9ad6e(0.3, 1);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_5a7dd25d(1);
	}
	level.var_2fd26037 function_e65887e4(level.var_2fd26037.var_722885f3, 1);
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(1);
	level thread function_9c3eb25d();
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	level.var_138e6961 = namespace_84970cc4::function_b87262e(level.var_138e6961);
	if(level.var_138e6961.size > 0)
	{
		foreach(var_6050ab17 in level.var_138e6961)
		{
			if(function_5b49d38c(var_6050ab17))
			{
				function_87f3c622(level.var_2fd26037.var_dfcc01fd, level.var_2fd26037 function_d48f2ab3("tag_flash"), var_6050ab17 function_d48f2ab3("j_head"), level.var_2fd26037, var_6050ab17);
				level.var_2fd26037 thread namespace_d84e54db::function_d104c596("kill_within_time", var_6050ab17, "j_head", 0.1);
				var_6050ab17 waittill("hash_128f8789");
			}
		}
	}
	else if(isdefined(level.var_e7c1ffa) && level.var_e7c1ffa.size > 0)
	{
		var_90ca1fdd = function_b4cb3503("hendricks_takedown_backup_node", "targetname");
		level.var_2fd26037 function_156339b6(var_90ca1fdd);
		level.var_2fd26037 namespace_d84e54db::function_3c155012();
		level.var_2fd26037 thread function_44b7b533();
		while(level.var_e7c1ffa.size > 0)
		{
			level.var_e7c1ffa = namespace_84970cc4::function_b87262e(level.var_e7c1ffa);
			wait(1);
		}
		level.var_2fd26037 namespace_d84e54db::function_8d86e3af();
		level notify("hash_3d3af5a5");
	}
	level thread namespace_62b73aed::function_9736d8c9();
	level thread namespace_62b73aed::function_8704e5f();
	level.var_3d63f698 thread namespace_cc27597::function_43718187("cin_ven_03_11_gate_convo_vign");
	level notify("hash_d1668ed6");
	if(isdefined(level.var_df45f1f3))
	{
		level thread [[level.var_df45f1f3]]();
	}
	level.var_2fd26037 function_e65887e4(level.var_2fd26037.var_722885f3, 1);
	var_90ca1fdd = function_b4cb3503("killing_streets_hendricks_node_03", "targetname");
	level.var_2fd26037 function_169cc712(var_90ca1fdd, 1, 16);
	wait(15);
	level notify("hash_bfaac156");
	level.var_3d63f698 waittill("hash_accb9cfa");
	level namespace_ad23e503::function_74d6b22f("takedown_complete");
}

/*
	Name: function_a2b65bd2
	Namespace: namespace_8776ed6e
	Checksum: 0x24C76B74
	Offset: 0x7188
	Size: 0x119
	Parameters: 1
	Flags: None
*/
function function_a2b65bd2(var_fde961b5)
{
	var_687222b4 = 2;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a === var_fde961b5)
		{
			var_5dc5e20a.var_efe0572d = "cin_ven_03_10_takedown_intro_1st_p1";
			var_5dc5e20a.var_ac3f2f23 = "cin_ven_03_10_takedown_1st_p1";
			continue;
		}
		var_5dc5e20a.var_efe0572d = "cin_ven_03_10_takedown_intro_1st_p" + var_687222b4;
		var_5dc5e20a.var_ac3f2f23 = "cin_ven_03_10_takedown_1st_p" + var_687222b4;
		var_687222b4++;
		var_5dc5e20a.var_1aefe698 = 1;
	}
}

/*
	Name: function_ca15fd13
	Namespace: namespace_8776ed6e
	Checksum: 0x525DBC0E
	Offset: 0x72B0
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_ca15fd13()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_b5ab443b();
	}
}

/*
	Name: function_b5ab443b
	Namespace: namespace_8776ed6e
	Checksum: 0x78FCC2EC
	Offset: 0x7348
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_b5ab443b()
{
	self endon("hash_128f8789");
	level.var_3d63f698 namespace_cc27597::function_43718187(self.var_efe0572d, self);
	level.var_3d63f698 namespace_cc27597::function_43718187(self.var_ac3f2f23, self);
}

/*
	Name: function_497db06c
	Namespace: namespace_8776ed6e
	Checksum: 0x90028EAA
	Offset: 0x73A8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_497db06c()
{
	level.var_3d63f698 thread namespace_cc27597::function_43718187("cin_ven_01_02_rooftop_1st_overlook", level.var_48158b2b);
	level.var_3d63f698 thread namespace_cc27597::function_43718187("cin_ven_03_10_takedown_intro_1st_props");
	level.var_3d63f698 namespace_cc27597::function_43718187("cin_ven_03_10_takedown_intro_1st_test", level.var_d60e1bf0);
	level.var_3d63f698 thread namespace_cc27597::function_43718187("cin_ven_03_10_takedown_1st_hendricks", level.var_2fd26037);
	level.var_3d63f698 thread namespace_cc27597::function_43718187("cin_ven_03_10_takedown_1st", level.var_fc109659);
}

/*
	Name: function_94b3c083
	Namespace: namespace_8776ed6e
	Checksum: 0x1ED2B540
	Offset: 0x7478
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_94b3c083()
{
	level.var_2fd26037 waittill("hash_1fc68837");
	level namespace_63b4601c::function_a084a58f();
}

/*
	Name: function_44b7b533
	Namespace: namespace_8776ed6e
	Checksum: 0xE8B2FE42
	Offset: 0x74B0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_44b7b533()
{
	self.var_df53bc6 = self.var_15dfd6c;
	self.var_15dfd6c = 0.2;
	level namespace_82b91a51::function_c9aa1ff("takedown_backup_enemies_dead", 8);
	self.var_15dfd6c = self.var_df53bc6;
}

/*
	Name: function_9c3eb25d
	Namespace: namespace_8776ed6e
	Checksum: 0x8AA7BD4A
	Offset: 0x7510
	Size: 0x4D9
	Parameters: 0
	Flags: None
*/
function function_9c3eb25d()
{
	namespace_96fa87af::function_994832bd("takedown_backup_truck", &function_296cfddf);
	var_235588b9 = namespace_96fa87af::function_2962e239("takedown_backup_truck");
	var_235588b9 namespace_96fa87af::function_3762fc40();
	level.var_e7c1ffa = [];
	var_6d37ea3 = 5;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_6d37ea3; var_c957f6b6++)
	{
		var_2f06d687 = namespace_2f06d687::function_7387a40a("takedown_backup_right_ai");
		var_2f06d687.var_caae374e = "takedown_backup_right_" + var_c957f6b6;
		var_2f06d687 thread function_4d5e399c();
	}
	level notify("hash_9c3eb25d");
	wait(0.25);
	level.var_e7c1ffa = namespace_84970cc4::function_b87262e(level.var_e7c1ffa);
	namespace_d84e54db::function_21fe06cc(level.var_e7c1ffa, 3);
	var_45db3dab = function_6ada35ba("takedown_backup_volume", "targetname");
	foreach(var_d84e54db in level.var_e7c1ffa)
	{
		if(isdefined(var_d84e54db) && function_5b49d38c(var_d84e54db))
		{
			var_d84e54db function_86408aa8(var_45db3dab);
			wait(function_72a94f05(0.3, 0.75));
		}
	}
	if(level.var_9b1393e7.size == 1)
	{
		var_67bf54e = 2;
	}
	if(level.var_9b1393e7.size == 2)
	{
		var_67bf54e = 2;
	}
	if(level.var_9b1393e7.size == 3)
	{
		var_67bf54e = 3;
	}
	if(level.var_9b1393e7.size == 4)
	{
		var_67bf54e = 3;
	}
	if(isdefined(var_67bf54e))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_67bf54e; var_c957f6b6++)
		{
			var_2f06d687 = namespace_2f06d687::function_7387a40a("takedown_backup_right_ai");
			var_2f06d687.var_caae374e = "takedown_backup_right_extra_" + var_c957f6b6;
			var_2f06d687 thread function_4d5e399c();
		}
	}
	wait(0.25);
	level.var_e7c1ffa = namespace_84970cc4::function_b87262e(level.var_e7c1ffa);
	namespace_d84e54db::function_21fe06cc(level.var_e7c1ffa, 3);
	level notify("hash_c1a33016");
	while(level.var_e7c1ffa.size > 3)
	{
		level.var_e7c1ffa = namespace_84970cc4::function_b87262e(level.var_e7c1ffa);
		wait(0.05);
	}
	var_45db3dab = function_6ada35ba("takedown_backup_front_volume", "targetname");
	foreach(var_d84e54db in level.var_e7c1ffa)
	{
		if(isdefined(var_d84e54db) && function_5b49d38c(var_d84e54db))
		{
			var_d84e54db function_86408aa8(var_45db3dab);
			wait(function_72a94f05(0.3, 0.75));
		}
	}
}

/*
	Name: function_52c5929b
	Namespace: namespace_8776ed6e
	Checksum: 0xAD4B7105
	Offset: 0x79F8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_52c5929b()
{
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_296cfddf
	Namespace: namespace_8776ed6e
	Checksum: 0xDFA57CE1
	Offset: 0x7A40
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_296cfddf()
{
	self endon("hash_128f8789");
	self thread function_9caaccb9();
	var_ae407c5 = [];
	var_5ee71f72 = function_84970cc4("driver", "passenger1", "gunner1");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ee71f72.size; var_c957f6b6++)
	{
		var_ae407c5[var_c957f6b6] = namespace_2f06d687::function_7387a40a("takedown_backup_truck_ai");
		var_ae407c5[var_c957f6b6] thread function_4d5e399c();
		if(isdefined(var_ae407c5[var_c957f6b6]))
		{
			var_ae407c5[var_c957f6b6].var_caae374e = var_5ee71f72[var_c957f6b6];
			var_ae407c5[var_c957f6b6] namespace_96fa87af::function_230eadd7(self, var_5ee71f72[var_c957f6b6], 1);
		}
	}
	self thread function_8fb2d768();
	level waittill("hash_ea1f086f");
	level namespace_ad23e503::function_74d6b22f("takedown_backup_truck_stopped_flag");
	self function_14c24d9d();
}

/*
	Name: function_8fb2d768
	Namespace: namespace_8776ed6e
	Checksum: 0x2060CA76
	Offset: 0x7BD8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_8fb2d768()
{
	self endon("hash_128f8789");
	self namespace_ad23e503::function_c35e6aab("gunner_position_occupied");
	self namespace_37b990db::function_f4546867(1, 2, 0.25, 0.75, 1);
	var_dfb53de7 = self namespace_96fa87af::function_ad4ec07a("gunner1");
	if(isdefined(var_dfb53de7))
	{
		self namespace_37b990db::function_bae40a28(1, 1);
		self namespace_ad23e503::function_74d6b22f("gunner_position_occupied");
		var_dfb53de7 waittill("hash_128f8789");
	}
	self namespace_37b990db::function_54bdb053(1);
	self namespace_ad23e503::function_9d134160("gunner_position_occupied");
}

/*
	Name: function_4d5e399c
	Namespace: namespace_8776ed6e
	Checksum: 0xEE174947
	Offset: 0x7D30
	Size: 0x573
	Parameters: 0
	Flags: None
*/
function function_4d5e399c()
{
	self endon("hash_128f8789");
	namespace_84970cc4::function_69554b3e(level.var_e7c1ffa, self);
	if(isdefined(self.var_170527fb) && self.var_170527fb == "takedown_backup_right_ai_ai")
	{
		self function_e65887e4(self.var_722885f3, 1);
		self namespace_d84e54db::function_b4f5e3b9(1);
		self namespace_d84e54db::function_c9e45d52(1);
		if(!level namespace_ad23e503::function_7922262b("takedown_backup_truck_stopped_flag"))
		{
			level namespace_ad23e503::function_1ab5ebec("takedown_backup_truck_stopped_flag");
		}
		if(isdefined(self.var_caae374e) && self.var_caae374e == "takedown_backup_right_3" || self.var_caae374e == "takedown_backup_right_4" || self.var_caae374e == "takedown_backup_right_extra_2")
		{
			var_45db3dab = function_6ada35ba("takedown_backup_middle_volume", "targetname");
			wait(function_72a94f05(1, 3));
		}
		else
		{
			var_45db3dab = function_6ada35ba("takedown_backup_left_volume", "targetname");
			wait(function_72a94f05(0.3, 0.75));
		}
		self function_86408aa8(var_45db3dab);
		self waittill("hash_41d1aaf0");
		self namespace_d84e54db::function_b4f5e3b9(0);
		self namespace_d84e54db::function_c9e45d52(0);
	}
	if(isdefined(self.var_170527fb) && self.var_170527fb == "takedown_backup_left_ai_ai")
	{
		self function_e65887e4(self.var_722885f3, 1);
		self namespace_d84e54db::function_b4f5e3b9(1);
		self namespace_d84e54db::function_c9e45d52(1);
		if(isdefined(self.var_caae374e) && self.var_caae374e == "takedown_backup_left_extra_2")
		{
			var_45db3dab = function_6ada35ba("takedown_backup_middle_volume", "targetname");
			wait(function_72a94f05(0.3, 0.5));
		}
		else
		{
			var_45db3dab = function_6ada35ba("takedown_backup_right_volume", "targetname");
			wait(function_72a94f05(0.3, 0.5));
		}
		self function_86408aa8(var_45db3dab);
		self waittill("hash_41d1aaf0");
		self namespace_d84e54db::function_b4f5e3b9(0);
		self namespace_d84e54db::function_c9e45d52(0);
		if(level.var_e7c1ffa.size > 3)
		{
			var_45db3dab = function_6ada35ba("takedown_backup_volume", "targetname");
			self function_86408aa8(var_45db3dab);
		}
	}
	if(isdefined(self.var_170527fb) && self.var_170527fb == "takedown_backup_truck_ai_ai")
	{
		if(isdefined(self.var_caae374e) && self.var_caae374e == "gunner1")
		{
			self.var_df53bc6 = self.var_15dfd6c;
			self.var_15dfd6c = 0.2;
		}
		level namespace_ad23e503::function_1ab5ebec("takedown_backup_truck_stopped_flag");
		if(isdefined(self.var_caae374e))
		{
			if(self.var_caae374e == "gunner1")
			{
				self.var_df53bc6 = self.var_15dfd6c;
				self.var_15dfd6c = 0.2;
				wait(5);
				self.var_15dfd6c = self.var_df53bc6;
			}
			if(self.var_caae374e == "driver" || self.var_caae374e == "passenger1")
			{
				self namespace_96fa87af::function_dca9dba2();
			}
		}
		var_45db3dab = function_6ada35ba("takedown_backup_right_volume", "targetname");
		if(isdefined(self.var_caae374e) && self.var_caae374e != "gunner1")
		{
			self namespace_d84e54db::function_b4f5e3b9(0);
			self namespace_d84e54db::function_c9e45d52(0);
			self function_86408aa8(var_45db3dab);
		}
	}
}

/*
	Name: function_64be6dbe
	Namespace: namespace_8776ed6e
	Checksum: 0x8175B606
	Offset: 0x82B0
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_64be6dbe()
{
	level.var_2fd26037 waittill("hash_ca6b3f19");
	function_da6acfd2(level.var_c1aa5253["fx_exp_emp_siegebot_veng"], level.var_a8117e53, "tag_eye");
	wait(0.5);
	if(function_5b49d38c(level.var_63be7c27))
	{
		function_da6acfd2(level.var_c1aa5253["fx_elec_enemy_juiced_shotgun"], level.var_63be7c27, "tag_eye");
	}
	if(function_5b49d38c(level.var_f1b70cec))
	{
		function_da6acfd2(level.var_c1aa5253["fx_elec_enemy_juiced_shotgun"], level.var_f1b70cec, "tag_eye");
	}
	wait(0.5);
	if(function_5b49d38c(level.var_63be7c27))
	{
		function_da6acfd2(level.var_c1aa5253["fx_elec_enemy_juiced_shotgun"], level.var_63be7c27, "tag_eye");
	}
	if(function_5b49d38c(level.var_f1b70cec))
	{
		function_da6acfd2(level.var_c1aa5253["fx_elec_enemy_juiced_shotgun"], level.var_f1b70cec, "tag_eye");
	}
}

/*
	Name: function_a339da70
	Namespace: namespace_8776ed6e
	Checksum: 0xD67DAB05
	Offset: 0x8458
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_a339da70()
{
	function_b8d9ad6e(1, 0.3, 0.3);
	level thread function_8b1bdf0e();
	level.var_2fd26037 namespace_82b91a51::function_564f2d81("stop_slowmo", "takedown_enemies_dead");
	thread namespace_7c587e3e::function_69fc18eb();
	function_b8d9ad6e(0.3, 1);
}

/*
	Name: function_8b1bdf0e
	Namespace: namespace_8776ed6e
	Checksum: 0x20F5B5A9
	Offset: 0x8500
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_8b1bdf0e()
{
	while(level.var_138e6961.size > 0)
	{
		level.var_138e6961 = namespace_84970cc4::function_b87262e(level.var_138e6961);
		wait(0.05);
	}
	level.var_2fd26037 notify("hash_d6da3c26");
}

/*
	Name: function_ee2ef2f3
	Namespace: namespace_8776ed6e
	Checksum: 0x6F91F986
	Offset: 0x8560
	Size: 0x5CB
	Parameters: 0
	Flags: None
*/
function function_ee2ef2f3()
{
	level.var_3d63f698 = namespace_14b42b8a::function_7922262b("tag_align_takedown", "targetname");
	level.var_82f6e6ad = namespace_2f06d687::function_7387a40a("truck_54i");
	level.var_82f6e6ad.var_b691b9cf = "truck_54i";
	level.var_82f6e6ad function_14c24d9d();
	level.var_82f6e6ad thread function_9caaccb9();
	level.var_82f6e6ad namespace_96fa87af::function_3762fc40();
	level.var_a8117e53 = namespace_2f06d687::function_7387a40a("takedown_siegebot");
	level.var_a8117e53.var_b691b9cf = "takedown_siegebot";
	level.var_a8117e53 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_a8117e53 namespace_d84e54db::function_c9e45d52(1);
	level.var_a8117e53 function_80765127();
	level.var_a8117e53.var_342d9e3a = 1;
	level.var_a8117e53 namespace_72ee5da4::function_81b6f1ac(1);
	level.var_a8117e53 thread function_9caaccb9();
	level.var_a8117e53 thread function_9d478f6a();
	level.var_1c88a835 = function_6ada35ba("outer_door", "targetname");
	level.var_1c88a835 thread function_9caaccb9();
	level.var_cad75d7e = function_6ada35ba("sign", "targetname");
	level.var_cad75d7e.var_b691b9cf = "sign";
	level.var_cad75d7e thread function_9caaccb9();
	var_320a972b = function_6ada35ba("sign_clip", "targetname");
	var_320a972b function_37f7858a(level.var_cad75d7e);
	var_320a972b thread function_9caaccb9();
	level.var_338fd2fb = function_6ada35ba("p1wire", "targetname");
	level.var_338fd2fb.var_b691b9cf = "p1wire";
	level.var_338fd2fb thread function_9caaccb9();
	if(level.var_2395e945.size == 4)
	{
		level.var_639480c0 = function_6ada35ba("takedown_p4door_l", "targetname");
		level.var_639480c0.var_b691b9cf = "p4door_l";
		level.var_639480c0 thread function_9caaccb9();
		level.var_d7ded90e = function_6ada35ba("takedown_p4door_r", "targetname");
		level.var_d7ded90e.var_b691b9cf = "p4door_r";
		level.var_d7ded90e thread function_9caaccb9();
	}
	level.var_febf89ad = function_6ada35ba("takedown_trashcan", "targetname");
	level.var_febf89ad thread function_9caaccb9();
	level.var_efe271b8 = function_6ada35ba("takedown_trashcan_clip", "targetname");
	level.var_efe271b8 function_37f7858a(level.var_febf89ad);
	level.var_efe271b8 thread function_9caaccb9();
	level.var_138e6961 = [];
	level.var_d9f6d6 = [];
	level.var_460ada5f = function_99201f25("takedown_ai", "script_noteworthy");
	foreach(var_2f06d687 in level.var_460ada5f)
	{
		var_2f06d687 namespace_2f06d687::function_994832bd(&function_f1ace717);
		var_2f06d687 namespace_2f06d687::function_9b7fda5e();
	}
	level notify("hash_ee2ef2f3");
	if(isdefined(level.var_b7e68311))
	{
		level waittill("hash_63d9e6f4");
	}
	if(isdefined(level.var_48158b2b))
	{
	}
	else
	{
		level.var_3d63f698 thread namespace_cc27597::function_c35e6aab("cin_ven_03_10_takedown_intro_1st");
		level.var_3d63f698 thread namespace_cc27597::function_c35e6aab("cin_ven_03_10_takedown_intro_1st_props");
		level.var_3d63f698 namespace_cc27597::function_c35e6aab("cin_ven_01_02_rooftop_1st_overlook");
	}
}

/*
	Name: function_9d478f6a
	Namespace: namespace_8776ed6e
	Checksum: 0xFDCA913D
	Offset: 0x8B38
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_9d478f6a()
{
	self endon("hash_128f8789");
	thread namespace_7c587e3e::function_a8117e53(self);
	self waittill("hash_77e3a76");
	var_26993771 = function_6ada35ba("takedown_siegebot_death_clip", "targetname");
	var_26993771 function_dc8c8404();
	self.var_bab9655e = 1;
	self function_2992720d();
}

/*
	Name: function_b584dbf0
	Namespace: namespace_8776ed6e
	Checksum: 0xF1BEAD21
	Offset: 0x8BD8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_b584dbf0(var_a8563e07)
{
}

/*
	Name: function_f1ace717
	Namespace: namespace_8776ed6e
	Checksum: 0xB67D64A3
	Offset: 0x8BF0
	Size: 0x74B
	Parameters: 0
	Flags: None
*/
function function_f1ace717()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_175490fb::function_59965309("cybercom_fireflyswarm");
	if(isdefined(self.var_170527fb))
	{
		if(self.var_170527fb == "enemy_leader_ai")
		{
			level.var_56f5377 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
		}
		if(self.var_170527fb == "takedown_enemy1_ai")
		{
			level.var_fe8d50fa = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
		}
		if(self.var_170527fb == "takedown_enemy2_ai")
		{
			level.var_d88ad691 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			level.var_780cbd26 = namespace_82b91a51::function_b9fd52a4("p7_54i_gear_knife");
			level.var_780cbd26.var_b691b9cf = "en2_machete";
			level.var_780cbd26 thread function_9caaccb9();
		}
		if(self.var_170527fb == "takedown_enemy3_ai")
		{
			level.var_b2885c28 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			level.var_38cff819 = namespace_82b91a51::function_b9fd52a4("wpn_t7_knife_combat_world");
			level.var_38cff819.var_b691b9cf = "p3knife";
			level.var_38cff819 thread function_9caaccb9();
		}
		if(self.var_170527fb == "takedown_enemy4_ai")
		{
			level.var_bc99b507 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			level.var_a2e245f8 = namespace_82b91a51::function_b9fd52a4("wpn_t7_knife_combat_world");
			level.var_a2e245f8.var_b691b9cf = "p4knife";
			level.var_a2e245f8 thread function_9caaccb9();
		}
		if(self.var_170527fb == "takedown_enemy5_ai")
		{
			level.var_96973a9e = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
			level.var_febf89ad.var_b691b9cf = "trashcan";
		}
		if(self.var_170527fb == "takedown_enemy6_ai")
		{
			level.var_7094c035 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
		}
		if(self.var_170527fb == "takedown_enemy7_ai")
		{
			level.var_4a9245cc = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
		}
		if(self.var_170527fb == "takedown_enemy8_ai")
		{
			level.var_f47bf81b = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
		}
		if(self.var_170527fb == "takedown_enemy9_ai")
		{
			level.var_ce797db2 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
		}
		if(self.var_170527fb == "takedown_enemy10_ai")
		{
			level.var_129e201e = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
		}
		if(self.var_170527fb == "takedown_enemy11_ai")
		{
			level.var_38a09a87 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
		}
		if(self.var_170527fb == "takedown_enemy12_ai")
		{
			level.var_c6992b4c = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
		}
		if(self.var_170527fb == "takedown_enemy13_ai")
		{
			level.var_ec9ba5b5 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
		}
		if(self.var_170527fb == "takedown_enemy14_ai")
		{
			level.var_7a94367a = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
		}
		if(self.var_170527fb == "takedown_enemy15_ai")
		{
			level.var_a096b0e3 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
		}
		if(self.var_170527fb == "takedown_enemy16_ai")
		{
			level.var_2e8f41a8 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
			level.var_639480c0.var_b691b9cf = "p4door_l";
			level.var_d7ded90e.var_b691b9cf = "p4door_r";
		}
		if(self.var_170527fb == "takedown_rbot1_ai")
		{
			level.var_63be7c27 = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			namespace_84970cc4::function_69554b3e(level.var_d9f6d6, self);
			self.var_342d9e3a = 1;
			self namespace_175490fb::function_59965309("cybercom_ravagecore");
		}
		if(self.var_170527fb == "takedown_rbot2_ai")
		{
			level.var_f1b70cec = self;
			namespace_84970cc4::function_69554b3e(level.var_138e6961, self);
			self.var_342d9e3a = 1;
			self namespace_175490fb::function_59965309("cybercom_ravagecore");
		}
	}
}

/*
	Name: function_9caaccb9
	Namespace: namespace_8776ed6e
	Checksum: 0x55A00065
	Offset: 0x9348
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_9caaccb9()
{
	level namespace_ad23e503::function_1ab5ebec("start_dogleg_1_intro");
	wait(1);
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_fcdc57ea
	Namespace: namespace_8776ed6e
	Checksum: 0xDA6F81DE
	Offset: 0x9398
	Size: 0x1B3
	Parameters: 4
	Flags: None
*/
function function_fcdc57ea(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_hanging_body_loop_vign_civ02");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_hanging_body_loop_vign_civ05");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_hanging_body_loop_vign_civ07");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_hanging_body_loop_vign_civ09");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_20_introstreet_bodies_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_25_outside_apt_bodies_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_02_05_inside_apt_bodies_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_02_10_apthorror_enterbldg_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_02_10_apthorror_firstfloorapt_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_02_10_apthorror_secondfloorapt_vign");
}

/*
	Name: function_81f84c9c
	Namespace: namespace_8776ed6e
	Checksum: 0x579BB98E
	Offset: 0x9558
	Size: 0x181
	Parameters: 2
	Flags: None
*/
function function_81f84c9c(var_b04bc952, var_74cd64bc)
{
	/#
		level.var_b7e68311 = 1;
		namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
		namespace_63b4601c::function_66773296("Dev Block strings are not supported", var_b04bc952);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		level.var_2fd26037.var_7dfaf62 = 32;
		level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
		level namespace_ad23e503::function_1ab5ebec("Dev Block strings are not supported");
		namespace_d0ef8521::function_74d6b22f("Dev Block strings are not supported", namespace_14b42b8a::function_7922262b("Dev Block strings are not supported"));
		level namespace_ad23e503::function_74d6b22f("Dev Block strings are not supported");
		level thread function_3fc7f1e8();
		level waittill("hash_ee2ef2f3");
		level function_6fa5f384();
		level notify("hash_63d9e6f4");
	#/
}

/*
	Name: function_616e9ab6
	Namespace: namespace_8776ed6e
	Checksum: 0x4304DF1F
	Offset: 0x96E8
	Size: 0x1E9
	Parameters: 2
	Flags: None
*/
function function_616e9ab6(var_b04bc952, var_74cd64bc)
{
	/#
		level.var_b7e68311 = 1;
		namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
		namespace_63b4601c::function_66773296("Dev Block strings are not supported", var_b04bc952);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		level.var_2fd26037.var_7dfaf62 = 32;
		level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
		level namespace_ad23e503::function_1ab5ebec("Dev Block strings are not supported");
		namespace_d0ef8521::function_74d6b22f("Dev Block strings are not supported", namespace_14b42b8a::function_7922262b("Dev Block strings are not supported"));
		level namespace_ad23e503::function_74d6b22f("Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		wait(1);
		if(level.var_9b1393e7.size == 1)
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		wait(1);
		level thread function_3fc7f1e8();
		level waittill("hash_ee2ef2f3");
		if(level.var_9b1393e7.size == 2)
		{
			level function_6fa5f384();
		}
		level notify("hash_63d9e6f4");
	#/
}

/*
	Name: function_8771151f
	Namespace: namespace_8776ed6e
	Checksum: 0xFCCA8C4
	Offset: 0x98E0
	Size: 0x1F1
	Parameters: 2
	Flags: None
*/
function function_8771151f(var_b04bc952, var_74cd64bc)
{
	/#
		level.var_b7e68311 = 1;
		namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
		namespace_63b4601c::function_66773296("Dev Block strings are not supported", var_b04bc952);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		level.var_2fd26037.var_7dfaf62 = 32;
		level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
		level namespace_ad23e503::function_1ab5ebec("Dev Block strings are not supported");
		namespace_d0ef8521::function_74d6b22f("Dev Block strings are not supported", namespace_14b42b8a::function_7922262b("Dev Block strings are not supported"));
		level namespace_ad23e503::function_74d6b22f("Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		wait(1);
		while(level.var_9b1393e7.size != 3)
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			wait(1);
		}
		level thread function_3fc7f1e8();
		level waittill("hash_ee2ef2f3");
		if(level.var_9b1393e7.size == 3)
		{
			level function_6fa5f384();
		}
		level notify("hash_63d9e6f4");
	#/
}

/*
	Name: function_7d5fbc40
	Namespace: namespace_8776ed6e
	Checksum: 0x6D86FA83
	Offset: 0x9AE0
	Size: 0x1F1
	Parameters: 2
	Flags: None
*/
function function_7d5fbc40(var_b04bc952, var_74cd64bc)
{
	/#
		level.var_b7e68311 = 1;
		namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
		namespace_63b4601c::function_66773296("Dev Block strings are not supported", var_b04bc952);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		level.var_2fd26037.var_7dfaf62 = 32;
		level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
		level namespace_ad23e503::function_1ab5ebec("Dev Block strings are not supported");
		namespace_d0ef8521::function_74d6b22f("Dev Block strings are not supported", namespace_14b42b8a::function_7922262b("Dev Block strings are not supported"));
		level namespace_ad23e503::function_74d6b22f("Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		wait(1);
		while(level.var_9b1393e7.size != 4)
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			wait(1);
		}
		level thread function_3fc7f1e8();
		level waittill("hash_ee2ef2f3");
		if(level.var_9b1393e7.size == 4)
		{
			level function_6fa5f384();
		}
		level notify("hash_63d9e6f4");
	#/
}

/*
	Name: function_6fa5f384
	Namespace: namespace_8776ed6e
	Checksum: 0xCE4E2CAA
	Offset: 0x9CE0
	Size: 0x1355
	Parameters: 0
	Flags: None
*/
function function_6fa5f384()
{
	/#
		level.var_48158b2b = [];
		level.var_7cd6979b = [];
		level.var_7cd6979b = function_525ae497(level.var_7cd6979b, level.var_9b1393e7, 0, 0);
		foreach(var_5dc5e20a in level.var_7cd6979b)
		{
			if(isdefined(var_5dc5e20a.var_44fb8955) && isdefined(var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"]) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == 1)
			{
				level.var_48158b2b[0] = var_5dc5e20a;
				function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
				break;
			}
		}
		level.var_48158b2b[1] = level.var_2fd26037;
		level.var_d60e1bf0 = [];
		level.var_d60e1bf0[0] = level.var_a8117e53;
		level.var_d60e1bf0[1] = level.var_82f6e6ad;
		level.var_d60e1bf0[2] = level.var_63be7c27;
		level.var_d60e1bf0[3] = level.var_f1b70cec;
		level.var_d60e1bf0[4] = level.var_338fd2fb;
		level.var_d60e1bf0[5] = level.var_fe8d50fa;
		level.var_d60e1bf0[6] = level.var_56f5377;
		level.var_d60e1bf0[7] = level.var_f47bf81b;
		level.var_d60e1bf0[8] = level.var_129e201e;
		if(level.var_9b1393e7.size >= 2)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") === "Dev Block strings are not supported")
			{
				foreach(var_5dc5e20a in level.var_7cd6979b)
				{
					if(!isdefined(var_5dc5e20a.var_44fb8955) || (isdefined(var_5dc5e20a.var_44fb8955) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == undefined))
					{
						level.var_d60e1bf0[9] = var_5dc5e20a;
						function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
						break;
					}
				}
				break;
			}
			foreach(var_5dc5e20a in level.var_7cd6979b)
			{
				if(isdefined(var_5dc5e20a.var_44fb8955) && isdefined(var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"]) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == 1)
				{
					level.var_d60e1bf0[9] = var_5dc5e20a;
					function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
					break;
				}
			}
			level.var_d60e1bf0[10] = level.var_d88ad691;
			level.var_d60e1bf0[11] = level.var_780cbd26;
			level.var_d60e1bf0[12] = level.var_ec9ba5b5;
			level.var_d60e1bf0[13] = level.var_4a9245cc;
			level.var_d60e1bf0[14] = level.var_38a09a87;
			level.var_d60e1bf0[15] = level.var_c6992b4c;
		}
		if(level.var_9b1393e7.size >= 3)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") === "Dev Block strings are not supported")
			{
				foreach(var_5dc5e20a in level.var_7cd6979b)
				{
					if(!isdefined(var_5dc5e20a.var_44fb8955) || (isdefined(var_5dc5e20a.var_44fb8955) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == undefined))
					{
						level.var_d60e1bf0[16] = var_5dc5e20a;
						function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
						break;
					}
				}
				break;
			}
			foreach(var_5dc5e20a in level.var_7cd6979b)
			{
				if(isdefined(var_5dc5e20a.var_44fb8955) && isdefined(var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"]) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == 1)
				{
					level.var_d60e1bf0[16] = var_5dc5e20a;
					function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
					break;
				}
			}
			level.var_d60e1bf0[17] = level.var_38cff819;
			level.var_d60e1bf0[18] = level.var_b2885c28;
			level.var_d60e1bf0[19] = level.var_96973a9e;
			level.var_d60e1bf0[20] = level.var_7094c035;
			level.var_d60e1bf0[21] = level.var_7a94367a;
		}
		if(level.var_9b1393e7.size == 4)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") === "Dev Block strings are not supported")
			{
				foreach(var_5dc5e20a in level.var_7cd6979b)
				{
					if(!isdefined(var_5dc5e20a.var_44fb8955) || (isdefined(var_5dc5e20a.var_44fb8955) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == undefined))
					{
						level.var_d60e1bf0[22] = var_5dc5e20a;
						function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
						break;
					}
				}
				break;
			}
			foreach(var_5dc5e20a in level.var_7cd6979b)
			{
				if(isdefined(var_5dc5e20a.var_44fb8955) && isdefined(var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"]) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == 1)
				{
					level.var_d60e1bf0[22] = var_5dc5e20a;
					function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
					break;
				}
			}
			level.var_d60e1bf0[23] = level.var_a2e245f8;
			level.var_d60e1bf0[24] = level.var_bc99b507;
			level.var_d60e1bf0[25] = level.var_ce797db2;
			level.var_d60e1bf0[26] = level.var_a096b0e3;
			level.var_d60e1bf0[27] = level.var_2e8f41a8;
		}
		level.var_fc109659 = [];
		level.var_fc109659[0] = level.var_a8117e53;
		level.var_fc109659[1] = level.var_82f6e6ad;
		level.var_fc109659[2] = level.var_63be7c27;
		level.var_fc109659[3] = level.var_f1b70cec;
		level.var_7cd6979b = [];
		level.var_7cd6979b = function_525ae497(level.var_7cd6979b, level.var_9b1393e7, 0, 0);
		foreach(var_5dc5e20a in level.var_7cd6979b)
		{
			if(isdefined(var_5dc5e20a.var_44fb8955) && isdefined(var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"]) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == 1)
			{
				level.var_fc109659[4] = var_5dc5e20a;
				function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
				break;
			}
		}
		level.var_fc109659[5] = level.var_338fd2fb;
		level.var_fc109659[6] = level.var_fe8d50fa;
		level.var_fc109659[7] = level.var_56f5377;
		level.var_fc109659[8] = level.var_f47bf81b;
		level.var_fc109659[9] = level.var_129e201e;
		if(level.var_9b1393e7.size >= 2)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") === "Dev Block strings are not supported")
			{
				foreach(var_5dc5e20a in level.var_7cd6979b)
				{
					if(!isdefined(var_5dc5e20a.var_44fb8955) || (isdefined(var_5dc5e20a.var_44fb8955) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == undefined))
					{
						level.var_fc109659[10] = var_5dc5e20a;
						function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
						break;
					}
				}
				break;
			}
			foreach(var_5dc5e20a in level.var_7cd6979b)
			{
				if(isdefined(var_5dc5e20a.var_44fb8955) && isdefined(var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"]) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == 1)
				{
					level.var_fc109659[10] = var_5dc5e20a;
					function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
					break;
				}
			}
			level.var_fc109659[11] = level.var_d88ad691;
			level.var_fc109659[12] = level.var_780cbd26;
			level.var_fc109659[13] = level.var_ec9ba5b5;
			level.var_fc109659[14] = level.var_4a9245cc;
			level.var_fc109659[15] = level.var_38a09a87;
			level.var_fc109659[16] = level.var_c6992b4c;
		}
		if(level.var_9b1393e7.size >= 3)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") === "Dev Block strings are not supported")
			{
				foreach(var_5dc5e20a in level.var_7cd6979b)
				{
					if(!isdefined(var_5dc5e20a.var_44fb8955) || (isdefined(var_5dc5e20a.var_44fb8955) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == undefined))
					{
						level.var_fc109659[17] = var_5dc5e20a;
						function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
						break;
					}
				}
				break;
			}
			foreach(var_5dc5e20a in level.var_7cd6979b)
			{
				if(isdefined(var_5dc5e20a.var_44fb8955) && isdefined(var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"]) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == 1)
				{
					level.var_fc109659[17] = var_5dc5e20a;
					function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
					break;
				}
			}
			level.var_fc109659[18] = level.var_38cff819;
			level.var_fc109659[19] = level.var_b2885c28;
			level.var_fc109659[20] = level.var_96973a9e;
			level.var_fc109659[21] = level.var_7094c035;
			level.var_fc109659[22] = level.var_7a94367a;
		}
		if(level.var_9b1393e7.size == 4)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") === "Dev Block strings are not supported")
			{
				foreach(var_5dc5e20a in level.var_7cd6979b)
				{
					if(!isdefined(var_5dc5e20a.var_44fb8955) || (isdefined(var_5dc5e20a.var_44fb8955) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == undefined))
					{
						level.var_fc109659[23] = var_5dc5e20a;
						function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
						break;
					}
				}
				break;
			}
			foreach(var_5dc5e20a in level.var_7cd6979b)
			{
				if(isdefined(var_5dc5e20a.var_44fb8955) && isdefined(var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"]) && var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] == 1)
				{
					level.var_fc109659[23] = var_5dc5e20a;
					function_81403b2f(level.var_7cd6979b, var_5dc5e20a);
					break;
				}
			}
			level.var_fc109659[24] = level.var_d88ad691;
			level.var_fc109659[25] = level.var_bc99b507;
			level.var_fc109659[26] = level.var_ce797db2;
			level.var_fc109659[27] = level.var_a096b0e3;
			level.var_fc109659[28] = level.var_2e8f41a8;
		}
	#/
}


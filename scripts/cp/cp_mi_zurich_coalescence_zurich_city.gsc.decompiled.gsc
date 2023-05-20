#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_root_singapore;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_plaza_battle;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_street;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_f815059a;

/*
	Name: function_9c1fc2fd
	Namespace: namespace_f815059a
	Checksum: 0x15ACC795
	Offset: 0xD60
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	level namespace_ad23e503::function_c35e6aab("intro_igc_ready");
	level namespace_ad23e503::function_c35e6aab("intro_squad_ready_move");
	function_a1dcdc1();
	level namespace_cc27597::function_c35e6aab("cin_zur_01_01_intro_1st_lost_contact");
	namespace_d7916d65::function_c32ba481();
	level thread namespace_82b91a51::function_46d3a558(&"CP_MI_ZURICH_COALESCENCE_INTRO_LINE_1_FULL", "", &"CP_MI_ZURICH_COALESCENCE_INTRO_LINE_2_FULL", &"CP_MI_ZURICH_COALESCENCE_INTRO_LINE_2_SHORT", &"CP_MI_ZURICH_COALESCENCE_INTRO_LINE_3_FULL", &"CP_MI_ZURICH_COALESCENCE_INTRO_LINE_3_SHORT", &"CP_MI_ZURICH_COALESCENCE_INTRO_LINE_4_FULL", &"CP_MI_ZURICH_COALESCENCE_INTRO_LINE_4_FULL");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_f815059a
	Checksum: 0xD890427D
	Offset: 0xE80
	Size: 0x12B
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_8e9083ff::function_4d032f25(0);
	level thread namespace_3d19ef22::function_c38b8260();
	function_bab1ff00("hq_atrium_umbra_gate", 0);
	function_bab1ff00("hq_entrance_umbra_gate", 0);
	function_bab1ff00("hq_exit_umbra_gate", 0);
	function_bab1ff00("garage_umbra_gate", 0);
	var_fb9735b9 = [];
	var_fb9735b9[0] = function_6ada35ba("plaza_battle_blast_door_left", "targetname");
	var_fb9735b9[1] = function_6ada35ba("plaza_battle_blast_door_right", "targetname");
	namespace_84970cc4::function_7e64f710(var_fb9735b9);
}

/*
	Name: function_9940e82f
	Namespace: namespace_f815059a
	Checksum: 0x27BA7267
	Offset: 0xFB8
	Size: 0x363
	Parameters: 2
	Flags: None
*/
function function_9940e82f(var_b04bc952, var_74cd64bc)
{
	namespace_2f06d687::function_2b37a3c9("intro_ai", "script_noteworthy", &function_56e5aa4d);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_ad23e503::function_c35e6aab("intro_igc_ready");
		level namespace_ad23e503::function_c35e6aab("intro_squad_ready_move");
		namespace_cc27597::function_8f9f34e0("cin_zur_01_01_intro_1st_lost_contact", &function_a1dcdc1, "init");
		level namespace_cc27597::function_c35e6aab("cin_zur_01_01_intro_1st_lost_contact");
	}
	level namespace_8e9083ff::function_da579a5d(var_b04bc952, 1);
	level.var_ebb30c1a = [];
	level thread namespace_1beb9396::function_48166ad7();
	level thread namespace_8e9083ff::function_2361541e("street");
	level thread function_e3750802();
	level namespace_71e9cb84::function_74d6b22f("intro_ambience", 1);
	namespace_80983c42::function_80983c42("streets_tower_wasp_swarm");
	level namespace_71e9cb84::function_74d6b22f("zurich_city_ambience", 1);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	else
	{
		level waittill("hash_6d97ab7");
		level thread namespace_82b91a51::function_593c2af4(2);
	}
	level thread function_37ee22ee();
	level namespace_ad23e503::function_1ab5ebec("intro_igc_ready");
	namespace_cc27597::function_8f9f34e0("cin_zur_01_01_intro_1st_lost_contact", &function_b8f105c6, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_01_01_intro_1st_lost_contact", &function_5e558eb, "done");
	level thread namespace_cc27597::function_43718187("cin_zur_01_01_intro_1st_lost_contact");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_8e9083ff::function_41753e77, "dni_futz");
	if(isdefined(level.var_741defc2))
	{
		level thread [[level.var_741defc2]]();
	}
	level waittill("hash_1b75d876");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
	level thread namespace_1beb9396::function_1be1a835();
	if(isdefined(var_b04bc952))
	{
		namespace_1d795d47::function_be8adfb8(var_b04bc952);
	}
}

/*
	Name: function_40b9b738
	Namespace: namespace_f815059a
	Checksum: 0x35C8E591
	Offset: 0x1328
	Size: 0x53
	Parameters: 4
	Flags: None
*/
function function_40b9b738(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_assault_hq_obj");
	namespace_8e9083ff::function_4d032f25(0);
}

/*
	Name: function_ab4451a1
	Namespace: namespace_f815059a
	Checksum: 0x9EAD3F04
	Offset: 0x1388
	Size: 0x3C1
	Parameters: 0
	Flags: None
*/
function function_ab4451a1()
{
	level endon("hash_e0d14dc8");
	var_3e671a1 = 0;
	var_7be3ca60 = [];
	var_ae75b4be = namespace_14b42b8a::function_7faf4c39("skybar_rollup_door");
	foreach(var_77b2d567 in var_ae75b4be)
	{
		wait(0.05);
		var_7be3ca60[var_c957f6b6] = namespace_82b91a51::function_b9fd52a4("p7_loading_dock_rollup_door", var_77b2d567.var_722885f3, var_77b2d567.var_6ab6f4fd);
		var_7be3ca60[var_c957f6b6].var_ff1f6868 = "garage";
	}
	namespace_84970cc4::function_966ecb29(var_7be3ca60, &function_52073baf);
	while(1)
	{
		level waittill("hash_443f3c33");
		var_7be3ca60 = namespace_84970cc4::function_8332f7f6(var_7be3ca60);
		foreach(var_f79d1dda in var_7be3ca60)
		{
			wait(0.15);
			var_f79d1dda function_8bdea13c(85, function_72a94f05(0.9, 1.2));
		}
		var_f79d1dda waittill("hash_a21db68a");
		if(!var_3e671a1)
		{
			var_c522d6c9 = namespace_8e9083ff::function_33ec653f("skybar_raven_enemy_spawn_manager", undefined, undefined, &namespace_8e9083ff::function_d065a580);
			var_3e671a1++;
		}
		else
		{
			var_c522d6c9 = namespace_8e9083ff::function_33ec653f("skybar_raven_enemy_spawn_manager2", undefined, undefined, &namespace_8e9083ff::function_d065a580);
			var_3e671a1--;
		}
		wait(function_72a94f05(3, 3.6));
		var_7be3ca60 = namespace_84970cc4::function_8332f7f6(var_7be3ca60);
		foreach(var_f79d1dda in var_7be3ca60)
		{
			wait(0.15);
			var_f79d1dda function_8bdea13c(85 * -1, function_72a94f05(0.9, 1.2));
		}
		var_f79d1dda waittill("hash_a21db68a");
		level notify("hash_2fa6d91");
	}
}

/*
	Name: function_52073baf
	Namespace: namespace_f815059a
	Checksum: 0x2E9BE68B
	Offset: 0x1758
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_52073baf()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_8fb45492
	Namespace: namespace_f815059a
	Checksum: 0xC616AF35
	Offset: 0x1820
	Size: 0x383
	Parameters: 2
	Flags: None
*/
function function_8fb45492(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2f06d687::function_2b37a3c9("intro_ai", "script_noteworthy", &function_56e5aa4d);
		level namespace_ad23e503::function_74d6b22f("intro_squad_ready_move");
		level namespace_8e9083ff::function_da579a5d(var_b04bc952, 1);
		level.var_ebb30c1a = [];
		level thread function_e3750802();
		level namespace_71e9cb84::function_74d6b22f("intro_ambience", 1);
		namespace_80983c42::function_80983c42("streets_tower_wasp_swarm");
		level namespace_71e9cb84::function_74d6b22f("zurich_city_ambience", 1);
		namespace_1beb9396::function_48166ad7();
		namespace_cc27597::function_8f9f34e0("cin_zur_01_01_intro_1st_lost_contact", &function_4ef4b654, "play");
		namespace_cc27597::function_8f9f34e0("cin_zur_01_01_intro_1st_lost_contact", &function_5e558eb, "done");
		level namespace_cc27597::function_5c143f59("cin_zur_01_01_intro_1st_lost_contact");
		level thread function_37ee22ee();
		level thread namespace_1beb9396::function_1be1a835();
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_67110270::function_db37681();
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 namespace_82b91a51::function_df6eb506(1);
		var_6bfe1586 thread namespace_1beb9396::function_2e5e657b();
	}
	namespace_9f824288::function_5d2cdd99();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_hunter_start_01_bundle");
	level thread function_51e389ee();
	level thread function_3eb0da5f();
	level thread function_ddcc04ff();
	level thread function_ab4451a1();
	level thread function_da30164f();
	namespace_4dbf3ae3::function_1ab5ebec("zurich_intro_exit_zone_trig");
	if(isdefined(var_b04bc952))
	{
		namespace_1d795d47::function_be8adfb8(var_b04bc952);
	}
}

/*
	Name: function_37ee22ee
	Namespace: namespace_f815059a
	Checksum: 0xD544784C
	Offset: 0x1BB0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_37ee22ee()
{
	namespace_4dbf3ae3::function_42e87952("intro_kane_colors_start_colortrig");
	level namespace_ad23e503::function_1ab5ebec("intro_squad_ready_move");
	namespace_4dbf3ae3::function_42e87952("intro_allies_colors_start_colortrig");
	namespace_4dbf3ae3::function_1ab5ebec("intro_breadcrumb_trig", undefined, undefined, 0);
	namespace_4dbf3ae3::function_42e87952("zurich_street_start_colortrig");
	namespace_4dbf3ae3::function_1ab5ebec("zurich_intro_exit_zone_trig");
}

/*
	Name: function_cf4ddc29
	Namespace: namespace_f815059a
	Checksum: 0x97C9D82C
	Offset: 0x1C60
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_cf4ddc29(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_8e9083ff::function_4d032f25(0);
}

/*
	Name: function_3eb0da5f
	Namespace: namespace_f815059a
	Checksum: 0xD6399BB0
	Offset: 0x1CA8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_3eb0da5f()
{
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_car_crash_stuck_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("intro_breadcrumb_trig2", undefined, undefined, 0);
	level namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_zurich_car_crash_stuck_bundle");
}

/*
	Name: function_d9b234c1
	Namespace: namespace_f815059a
	Checksum: 0x545FD07D
	Offset: 0x1D18
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_d9b234c1(var_3c54858a)
{
	if(!isdefined(var_3c54858a))
	{
		var_3c54858a = function_b4cb3503(self.var_b07228b6, "targetname");
	}
	self.var_ff1f6868 = "street";
	self.var_3e94206a = "allies";
	self function_84f0b3d2(var_3c54858a);
}

/*
	Name: function_84f0b3d2
	Namespace: namespace_f815059a
	Checksum: 0x4CDE0EE7
	Offset: 0x1D98
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_84f0b3d2(var_3c54858a)
{
	self endon("hash_128f8789");
	self notify("hash_4db6b0c5");
	self endon("hash_4db6b0c5");
	self function_9869ab67(var_3c54858a.var_722885f3);
	wait(0.05);
	while(isdefined(var_3c54858a.var_b07228b6))
	{
		var_ff0d12d2 = function_b4cb3503(var_3c54858a.var_b07228b6, "targetname");
		self namespace_d84e54db::function_19e98020(var_ff0d12d2, 32, 0, "stop_running");
		var_3c54858a = var_ff0d12d2;
	}
	self namespace_d84e54db::function_ceb883cd("panic", 1);
	self function_74df00be();
}

/*
	Name: function_51e389ee
	Namespace: namespace_f815059a
	Checksum: 0x2130E493
	Offset: 0x1EB0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_51e389ee()
{
	namespace_d0ef8521::function_45d1556("intro_breadcrumb_trig", "cp_waypoint_breadcrumb");
}

/*
	Name: function_e3750802
	Namespace: namespace_f815059a
	Checksum: 0x68E73808
	Offset: 0x1EE0
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_e3750802()
{
	var_295a1e1f = namespace_8e9083ff::function_f9afa212("zurich_intro_camera");
}

/*
	Name: function_9b46fb9
	Namespace: namespace_f815059a
	Checksum: 0x229824B7
	Offset: 0x1F10
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_9b46fb9()
{
	var_295a1e1f = function_99201f25("zurich_intro_camera_ai", "targetname");
	namespace_84970cc4::function_7e64f710(var_295a1e1f);
}

/*
	Name: function_a1dcdc1
	Namespace: namespace_f815059a
	Checksum: 0xEB91E116
	Offset: 0x1F60
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_a1dcdc1()
{
	level.var_4fc7570c = namespace_2f06d687::function_7387a40a("zurich_intro_redshirts_right_1", &function_56e5aa4d);
	level.var_c1cec647 = namespace_2f06d687::function_7387a40a("zurich_intro_redshirts_right_2", &function_56e5aa4d);
	level.var_726eb89c = function_b4cb3503("intro_ally_hunter_vignette_rpg", "targetname") namespace_8e9083ff::function_a569867c(undefined, &function_56e5aa4d);
	level.var_e47627d7 = function_b4cb3503("intro_ally_hunter_vignette_support", "targetname") namespace_8e9083ff::function_a569867c(undefined, &function_56e5aa4d);
	level namespace_ad23e503::function_74d6b22f("intro_igc_ready");
}

/*
	Name: function_b8f105c6
	Namespace: namespace_f815059a
	Checksum: 0xB06D4EB
	Offset: 0x2080
	Size: 0x7B3
	Parameters: 1
	Flags: None
*/
function function_b8f105c6(var_c77d2837)
{
	var_d587a688 = function_b4cb3503("zurich_intro_redshirt_run_by_node", "targetname");
	var_ae4ab21f = function_b4cb3503("zurich_intro_sitrep_node", "targetname");
	var_c77d2837["zurich_intro_sitrep_guy"].var_ca3202d["bc"] = 0;
	var_c77d2837["zurich_intro_sitrep_guy"] namespace_d84e54db::function_c9e45d52(1);
	var_c77d2837["zurich_intro_sitrep_guy"] thread function_56e5aa4d();
	var_c77d2837["kane"].var_ca3202d["bc"] = 0;
	var_c77d2837["kane"] namespace_d84e54db::function_c9e45d52(1);
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586.var_255b9315 = 1;
	}
	level thread function_6e68a9b();
	level thread function_a294dd02();
	level thread function_5f96c3e7();
	level thread function_e7f6d0c8();
	level thread function_73361364(var_c77d2837);
	wait(0.05);
	var_7244fa9b = function_b4cb3503("intro_robot_balcony_sniper", "targetname") namespace_8e9083ff::function_a569867c(undefined, &function_b82ef7f0);
	var_c77d2837["zurich_intro_sitrep_guy"] function_169cc712(var_ae4ab21f);
	var_c77d2837["zurich_intro_sitrep_guy"] waittill("hash_2b365e46");
	var_782205f8 = function_243bb261("intro_hunter_kill_node", "targetname") namespace_8e9083ff::function_a569867c(undefined, &function_5568741b);
	level.var_726eb89c thread function_663b5805(var_782205f8);
	var_9bcc4bde = namespace_2f06d687::function_7387a40a("zurich_intro_redshirts_right_3", &function_56e5aa4d);
	var_9faa0c88 = function_c4d5ec1f("launcher_standard");
	var_7b5de48c = namespace_14b42b8a::function_7922262b("intro_magic_bullet_scene_spot2");
	var_26aaa5cc = namespace_14b42b8a::function_7922262b(var_7b5de48c.var_b07228b6);
	var_3c91fda1 = function_87f3c622(var_9faa0c88, var_7b5de48c.var_722885f3, var_26aaa5cc.var_722885f3);
	var_3c91fda1.var_3e94206a = "allies";
	var_c77d2837["zurich_intro_sitrep_guy"] thread function_d8d72142();
	wait(0.05);
	var_b7bd6d68 = namespace_2f06d687::function_7387a40a("zurich_intro_redshirts_right_5", &function_56e5aa4d);
	var_c77d2837["kane"] waittill("hash_c8804d8f");
	level.var_726eb89c function_dc8c8404();
	level.var_e47627d7 function_dc8c8404();
	var_b7bd6d68 function_dc8c8404();
	if(var_7244fa9b.var_dfcc01fd !== level.var_6c3e6703)
	{
		function_87f3c622(var_7244fa9b.var_dfcc01fd, var_7244fa9b function_d48f2ab3("tag_flash"), var_c77d2837["zurich_intro_sitrep_guy"] function_501eb072() + (0, 16, 32));
	}
	var_c77d2837["kane"] waittill("hash_5752b84e");
	var_c77d2837["zurich_intro_sitrep_guy"] thread function_d8d72142();
	var_9de10fe3 = function_b4cb3503(level.var_c1cec647.var_caae374e, "targetname");
	level.var_c1cec647 function_169cc712(var_9de10fe3);
	var_c77d2837["kane"] waittill("hash_300ae2a3");
	var_c77d2837["zurich_intro_sitrep_guy"] thread function_d8d72142();
	var_edc6e0e1 = function_243bb261("street_intro_vtol", "targetname") namespace_8e9083ff::function_a569867c(undefined, &namespace_1beb9396::function_b8380f70);
	var_ddbfe7d1 = namespace_2f06d687::function_7387a40a("zurich_intro_redshirts_right_4", &function_56e5aa4d);
	var_9de10fe3 = function_b4cb3503(level.var_4fc7570c.var_caae374e, "targetname");
	level.var_4fc7570c function_169cc712(var_9de10fe3);
	var_c77d2837["kane"] waittill("hash_602a6061");
	var_61a68fbf = namespace_2f06d687::function_7387a40a("zurich_intro_support", &function_56e5aa4d);
	var_61a68fbf function_169cc712(var_d587a688);
	var_c77d2837["kane"] waittill("hash_54d3aa25");
	var_22ec8e08 = namespace_2f06d687::function_7387a40a("intro_street_front_siegebot", &function_19017cb9);
	if(function_5b49d38c(var_782205f8))
	{
		var_782205f8 function_2992720d();
	}
}

/*
	Name: function_663b5805
	Namespace: namespace_f815059a
	Checksum: 0xA1E58EF9
	Offset: 0x2840
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_663b5805(var_782205f8)
{
	self endon("hash_128f8789");
	var_782205f8 endon("hash_128f8789");
	var_782205f8 waittill("hash_77b2a1ab");
	self function_21f41d11(var_782205f8);
	function_87f3c622(self.var_dfcc01fd, self function_d48f2ab3("tag_flash"), var_782205f8.var_722885f3);
	var_782205f8 namespace_96fa87af::function_54055cfb();
	wait(1);
	var_782205f8 function_2992720d();
}

/*
	Name: function_73361364
	Namespace: namespace_f815059a
	Checksum: 0xF950F6EC
	Offset: 0x2910
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_73361364(var_c77d2837)
{
	var_c77d2837["kane"] waittill("hash_300ae2a3");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_hunter_start_02_bundle");
}

/*
	Name: function_b82ef7f0
	Namespace: namespace_f815059a
	Checksum: 0x6F1EAAC4
	Offset: 0x2960
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_b82ef7f0()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	level waittill("hash_1b75d876");
	self namespace_82b91a51::function_4b741fdc();
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self.var_44a68a57 = &namespace_8e9083ff::function_8ac3f026;
	level.var_3d556bcd namespace_d84e54db::function_d104c596("shoot_until_target_dead", self);
}

/*
	Name: function_5568741b
	Namespace: namespace_f815059a
	Checksum: 0x3FAD1A3F
	Offset: 0x2A48
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_5568741b()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self function_c3945cd5(function_b6b79a0(self.var_3a90f16b / 2), self.var_722885f3);
	self namespace_96fa87af::function_fdf99c07();
	self waittill("hash_6cf6ac7e");
	self function_c985552d(self.var_722885f3, 1);
}

/*
	Name: function_d8d72142
	Namespace: namespace_f815059a
	Checksum: 0x3F635E91
	Offset: 0x2B10
	Size: 0x315
	Parameters: 0
	Flags: None
*/
function function_d8d72142()
{
	self endon("hash_128f8789");
	level endon("hash_1b75d876");
	var_af38510d = 32;
	var_3f44bbce = namespace_14b42b8a::function_7faf4c39("intro_magic_bullet_scene_spot");
	var_1d6db0a3 = self.var_dfcc01fd;
	for(var_c957f6b6 = 0; var_c957f6b6 < 36; var_c957f6b6++)
	{
		var_24593fb7 = namespace_84970cc4::function_47d18840(var_3f44bbce);
		var_e32e572f = namespace_14b42b8a::function_7faf4c39(var_24593fb7.var_b07228b6);
		var_26aaa5cc = namespace_84970cc4::function_47d18840(var_e32e572f);
		var_8d661004 = (function_dc99997a(var_af38510d * -1, var_af38510d), function_dc99997a(var_af38510d * -1, var_af38510d), function_dc99997a(var_af38510d * -1, var_af38510d));
		function_87f3c622(var_1d6db0a3, var_24593fb7.var_722885f3 + var_8d661004, var_26aaa5cc.var_722885f3 + var_8d661004);
		wait(function_72a94f05(0.25, 0.32));
	}
	wait(1.2);
	for(var_c957f6b6 = 0; var_c957f6b6 < 19; var_c957f6b6++)
	{
		var_24593fb7 = namespace_84970cc4::function_47d18840(var_3f44bbce);
		var_e32e572f = namespace_14b42b8a::function_7faf4c39(var_24593fb7.var_b07228b6);
		var_26aaa5cc = namespace_84970cc4::function_47d18840(var_e32e572f);
		var_8d661004 = (function_dc99997a(var_af38510d * -1, var_af38510d), function_dc99997a(var_af38510d * -1, var_af38510d), function_dc99997a(var_af38510d * -1, var_af38510d));
		function_87f3c622(var_1d6db0a3, var_24593fb7.var_722885f3 + var_8d661004, var_26aaa5cc.var_722885f3 + var_8d661004);
		wait(function_72a94f05(0.25, 0.32));
	}
}

/*
	Name: function_6e68a9b
	Namespace: namespace_f815059a
	Checksum: 0xFAF1926D
	Offset: 0x2E30
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_6e68a9b()
{
	level endon("hash_1b75d876");
	wait(0.05);
	while(1)
	{
		for(var_e3b635fb = namespace_8e9083ff::function_33ec653f("intro_street_robots_spawn_manager", undefined, undefined, &function_56e5aa4d); var_e3b635fb.size > 1;  = namespace_8e9083ff::function_33ec653f("intro_street_robots_spawn_manager", undefined, undefined, &function_56e5aa4d))
		{
			namespace_84970cc4::function_1d74ca91(var_e3b635fb, "death");
		}
	}
}

/*
	Name: function_56e5aa4d
	Namespace: namespace_f815059a
	Checksum: 0x5124D284
	Offset: 0x2EE0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_56e5aa4d()
{
	self endon("hash_128f8789");
	self.var_15dfd6c = 0.1;
	if(self.var_3e94206a == "allies")
	{
		namespace_82b91a51::function_958c7633(self);
		if(self.var_3d2183f2 === "intro_hero_redshirts")
		{
			return;
		}
		level namespace_ad23e503::function_1ab5ebec("intro_squad_ready_move");
		self namespace_82b91a51::function_4b741fdc();
		self namespace_d84e54db::function_c9e45d52(0);
		return;
	}
	self.var_44a68a57 = &namespace_8e9083ff::function_8ac3f026;
}

/*
	Name: function_5e558eb
	Namespace: namespace_f815059a
	Checksum: 0x2EA40A34
	Offset: 0x2FB0
	Size: 0x315
	Parameters: 1
	Flags: None
*/
function function_5e558eb(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 0);
	var_35a3121c = namespace_2f06d687::function_289e6fd1("intro_squad_right");
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		if(!function_5b49d38c(var_35a3121c[var_c957f6b6]))
		{
			continue;
		}
		var_35a3121c[var_c957f6b6] namespace_82b91a51::function_4b741fdc();
		var_35a3121c[var_c957f6b6] function_2992720d();
	}
	level namespace_ad23e503::function_74d6b22f("intro_squad_ready_move");
	namespace_82b91a51::function_93831e79("intro_igc_player");
	var_933bbc2c = function_b8494651("allies");
	foreach(var_d84e54db in var_933bbc2c)
	{
		if(var_d84e54db namespace_82b91a51::function_d3426abc())
		{
			continue;
		}
		var_d84e54db.var_15dfd6c = 0.1;
	}
	var_c77d2837["zurich_intro_sitrep_guy"].var_ca3202d["bc"] = 1;
	var_c77d2837["kane"].var_ca3202d["bc"] = 1;
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586.var_255b9315 = 0;
	}
	var_51a7831a = namespace_2f06d687::function_289e6fd1("intro_street_front_siegebot");
	if(function_5b49d38c(var_51a7831a))
	{
		var_51a7831a function_2992720d();
	}
	level.var_4fc7570c = undefined;
	level.var_c1cec647 = undefined;
	level.var_726eb89c = undefined;
	level.var_e47627d7 = undefined;
}

/*
	Name: function_19017cb9
	Namespace: namespace_f815059a
	Checksum: 0x51D7EA56
	Offset: 0x32D0
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_19017cb9()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	var_3c54858a = function_b4cb3503("intro_street_front_siegebot_start_node", "targetname");
	var_a8015c01 = function_b4cb3503(var_3c54858a.var_b07228b6, "targetname");
	var_7b5de48c = namespace_14b42b8a::function_7922262b("intro_magic_rpg_spot");
	var_2d4ab0e6 = namespace_14b42b8a::function_7922262b("intro_magic_rpg_spot2");
	var_9faa0c88 = function_c4d5ec1f("launcher_standard");
	self function_c985552d(var_3c54858a.var_722885f3, 1, 1);
	wait(3.5);
	self function_c985552d(var_a8015c01.var_722885f3, 1, 1);
	wait(1.3);
	function_87f3c622(var_9faa0c88, var_7b5de48c.var_722885f3, self function_501eb072());
	wait(1.5);
	function_87f3c622(var_9faa0c88, var_7b5de48c.var_722885f3, self function_501eb072());
	wait(0.98);
	self function_2992720d();
}

/*
	Name: function_a294dd02
	Namespace: namespace_f815059a
	Checksum: 0x79D59A66
	Offset: 0x34D0
	Size: 0x1D7
	Parameters: 0
	Flags: None
*/
function function_a294dd02()
{
	level endon("hash_1b75d876");
	var_af38510d = 128;
	var_fccc406f = namespace_14b42b8a::function_7faf4c39("intro_magic_rpg_spot_enemy");
	var_9faa0c88 = function_c4d5ec1f("launcher_standard");
	while(1)
	{
		var_7b5de48c = namespace_84970cc4::function_47d18840(var_fccc406f);
		var_e32e572f = namespace_14b42b8a::function_7faf4c39(var_7b5de48c.var_b07228b6);
		var_26aaa5cc = namespace_84970cc4::function_47d18840(var_e32e572f);
		var_8d661004 = (function_dc99997a(var_af38510d * -1, var_af38510d), function_dc99997a(var_af38510d * -1, var_af38510d), function_dc99997a(var_af38510d * -1, var_af38510d));
		var_3c91fda1 = function_87f3c622(var_9faa0c88, var_7b5de48c.var_722885f3 + var_8d661004, var_26aaa5cc.var_722885f3 + var_8d661004);
		var_3c91fda1.var_3e94206a = "allies";
		wait(function_72a94f05(1.1, 3.1));
	}
}

/*
	Name: function_4ef4b654
	Namespace: namespace_f815059a
	Checksum: 0x6DC1DB42
	Offset: 0x36B0
	Size: 0x43F
	Parameters: 1
	Flags: None
*/
function function_4ef4b654(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 1);
	var_4fc7570c = namespace_2f06d687::function_7387a40a("zurich_intro_redshirts_right_1");
	var_c1cec647 = namespace_2f06d687::function_7387a40a("zurich_intro_redshirts_right_2");
	var_61a68fbf = namespace_2f06d687::function_7387a40a("zurich_intro_support");
	var_b982e5d0 = namespace_2f06d687::function_289e6fd1("intro_squad_right");
	var_d587a688 = function_b4cb3503("zurich_intro_redshirt_run_by_node", "targetname");
	var_ae4ab21f = function_b4cb3503("zurich_intro_sitrep_node", "targetname");
	var_35a3121c = [];
	var_35a3121c = function_525ae497(var_b982e5d0, var_35a3121c, 0, 0);
	if(!isdefined(var_35a3121c))
	{
		var_35a3121c = [];
	}
	else if(!function_6e2770d8(var_35a3121c))
	{
		var_35a3121c = function_84970cc4(var_35a3121c);
	}
	var_35a3121c[var_35a3121c.size] = var_61a68fbf;
	if(!isdefined(var_35a3121c))
	{
		var_35a3121c = [];
	}
	else if(!function_6e2770d8(var_35a3121c))
	{
		var_35a3121c = function_84970cc4(var_35a3121c);
	}
	var_35a3121c[var_35a3121c.size] = var_c77d2837["zurich_intro_sitrep_guy"];
	foreach(var_d84e54db in var_35a3121c)
	{
		var_d84e54db.var_15dfd6c = 0.1;
	}
	level thread function_e7f6d0c8();
	var_61a68fbf function_9869ab67(var_d587a688.var_722885f3, var_d587a688.var_6ab6f4fd);
	var_c77d2837["zurich_intro_sitrep_guy"] function_9869ab67(var_ae4ab21f.var_722885f3, var_ae4ab21f.var_6ab6f4fd);
	foreach(var_d84e54db in var_b982e5d0)
	{
		var_9de10fe3 = function_b4cb3503(var_d84e54db.var_caae374e, "targetname");
		var_d84e54db function_9869ab67(var_9de10fe3.var_722885f3, var_9de10fe3.var_6ab6f4fd);
		var_d84e54db function_169cc712(var_9de10fe3);
	}
	var_9bcc4bde = namespace_2f06d687::function_7387a40a("zurich_intro_redshirts_right_3");
	var_ddbfe7d1 = namespace_2f06d687::function_7387a40a("zurich_intro_redshirts_right_4");
}

/*
	Name: function_da30164f
	Namespace: namespace_f815059a
	Checksum: 0x9452C32D
	Offset: 0x3AF8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_da30164f()
{
	level endon("hash_e0d14dc8");
	var_6a6344b5 = namespace_14b42b8a::function_7922262b("street_choke_throw_look_point");
	var_1a20be33 = function_6ada35ba("street_balcony_choke_throw_trig", "targetname");
	var_1a20be33 endon("hash_128f8789");
	if(!isdefined(var_1a20be33))
	{
		return;
	}
	level namespace_ad23e503::function_d266a8b4(6, "intro_player_ready");
	do
	{
		wait(0.5);
	}
	while(!!namespace_8e9083ff::function_f8645b6(-1, var_6a6344b5.var_722885f3, 0.99));
	var_1a20be33 namespace_4dbf3ae3::function_42e87952();
}

/*
	Name: function_5f96c3e7
	Namespace: namespace_f815059a
	Checksum: 0xA07693EC
	Offset: 0x3BE8
	Size: 0x1FD
	Parameters: 0
	Flags: None
*/
function function_5f96c3e7()
{
	var_e4f90b1a = function_99201f25("zurich_ambient_outdoor_civ", "targetname");
	var_7b2d1a16 = function_fe0cfd2e("intro_street_civ_path", "targetname");
	var_ceb52e2a = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		foreach(var_48b27c8f in var_7b2d1a16)
		{
			var_a023ad9b = namespace_84970cc4::function_47d18840(var_e4f90b1a);
			var_ceb52e2a[var_c957f6b6] = namespace_2f06d687::function_7387a40a(var_a023ad9b, &function_d9b234c1, var_48b27c8f);
			var_ceb52e2a[var_c957f6b6] function_c2931a36("evt_intro_civilian_loop");
			wait(function_72a94f05(0.9, 1.8));
		}
		if(level namespace_ad23e503::function_7922262b("intro_second_wave_civs_start"))
		{
			break;
		}
		wait(function_72a94f05(1.34, 3));
	}
}

/*
	Name: function_e7f6d0c8
	Namespace: namespace_f815059a
	Checksum: 0xF4FBEF0B
	Offset: 0x3DF0
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_e7f6d0c8()
{
	var_e4f90b1a = function_99201f25("zurich_ambient_outdoor_civ", "targetname");
	level namespace_ad23e503::function_1ab5ebec("intro_second_wave_civs_start");
	var_7b2d1a16 = function_fe0cfd2e("intro_garage_civ_path", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < 1; var_c957f6b6++)
	{
		foreach(var_48b27c8f in var_7b2d1a16)
		{
			var_a023ad9b = namespace_84970cc4::function_47d18840(var_e4f90b1a);
			var_ceb52e2a[var_c957f6b6] = namespace_2f06d687::function_7387a40a(var_a023ad9b, &function_d9b234c1, var_48b27c8f);
			wait(function_72a94f05(0.7, 1.4));
		}
		wait(function_72a94f05(0.5, 1.1));
	}
	level namespace_ad23e503::function_1ab5ebec("street_civs_start");
	function_9b9c35d7();
}

/*
	Name: function_9b9c35d7
	Namespace: namespace_f815059a
	Checksum: 0xC3E97030
	Offset: 0x3FF8
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_9b9c35d7()
{
	var_e4f90b1a = function_99201f25("zurich_ambient_outdoor_civ", "targetname");
	var_7b2d1a16 = function_fe0cfd2e("intro_garage2_civ_path", "targetname");
	foreach(var_48b27c8f in var_7b2d1a16)
	{
		var_a023ad9b = namespace_84970cc4::function_47d18840(var_e4f90b1a);
		var_ceb52e2a[var_c957f6b6] = namespace_2f06d687::function_7387a40a(var_a023ad9b, &function_d9b234c1, var_48b27c8f);
		wait(function_72a94f05(0.5, 1.1));
	}
}

/*
	Name: function_ddcc04ff
	Namespace: namespace_f815059a
	Checksum: 0xACB2E43F
	Offset: 0x4158
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_ddcc04ff()
{
	var_b2bb8a85 = function_243bb261("intro_quadtank_spot_right", "targetname");
	var_f3200b3f = namespace_2f06d687::function_7387a40a("zurich_ambient_quadtank");
	var_f3200b3f namespace_d84e54db::function_c9e45d52(1);
	var_f3200b3f namespace_72ee5da4::function_81b6f1ac();
	var_f3200b3f thread namespace_96fa87af::function_edb3a94e(var_b2bb8a85);
	while(!level namespace_ad23e503::function_7922262b("street_civs_start"))
	{
		var_f3200b3f namespace_96fa87af::function_edb3a94e(var_b2bb8a85);
		wait(function_72a94f05(2, 4));
	}
	var_f3200b3f thread function_74df00be();
}

/*
	Name: function_74df00be
	Namespace: namespace_f815059a
	Checksum: 0x59CE266D
	Offset: 0x4278
	Size: 0xA5
	Parameters: 1
	Flags: None
*/
function function_74df00be(var_ccd4343c)
{
	if(!isdefined(var_ccd4343c))
	{
		var_ccd4343c = 512;
	}
	self endon("hash_128f8789");
	while(1)
	{
		if(!(isdefined(self namespace_8e9083ff::function_6f990596(var_ccd4343c)) && self namespace_8e9083ff::function_6f990596(var_ccd4343c)))
		{
			if(function_5b49d38c(self))
			{
				self function_dc8c8404();
			}
		}
		wait(2);
	}
}


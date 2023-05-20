#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_bfe2abac;

/*
	Name: function_b2f17f19
	Namespace: namespace_bfe2abac
	Checksum: 0x690B9846
	Offset: 0x710
	Size: 0x483
	Parameters: 2
	Flags: None
*/
function function_b2f17f19(var_b04bc952, var_74cd64bc)
{
	namespace_2f06d687::function_2b37a3c9("underwater_rail_bot", "script_noteworthy", &function_d1342558);
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_2fd26037 namespace_6f7b2095::function_1b497663("r");
	var_1787c657 = function_6ada35ba("water_ride_explosion_damage", "targetname");
	var_1787c657 function_175e6b8e(0);
	if(var_74cd64bc)
	{
		level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 1);
		namespace_2f06d687::function_ef554cf7("axis", &namespace_cba4cc55::function_a527e6f9);
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_door_hendricks_explosion_bundle");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_server_room");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_confront_pallas");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_get_to_surface");
		var_58230dee = function_6ada35ba("uw_rail_sequence_start", "targetname");
		level namespace_cc27597::function_5c143f59("cin_sgen_23_01_underwater_battle_vign_swim_hendricks_traverse_room", level.var_2fd26037);
		namespace_d7916d65::function_a2995f22();
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("water_motes", 1);
			var_5dc5e20a thread namespace_419e977d::function_e9b126ef();
		}
	}
	function_6c1294b8("player_swimTime", 5000);
	level thread function_8d753d94();
	var_46cf12c3 = function_6ada35ba("uw_rail_sequence_start", "targetname");
	function_1cbc58b8();
	namespace_d5067552::function_2992720d("uw_battle_spawnmanager", 1);
	var_56cfb137 = function_99201f25("water_ride_debris_trigger", "targetname");
	namespace_84970cc4::function_966ecb29(var_56cfb137, &function_c1262746);
	var_15d31d8e = function_99201f25("uw_rail_split_trigger", "targetname");
	namespace_84970cc4::function_966ecb29(var_15d31d8e, &function_a6779dd4);
	var_b98e5eb8 = function_99201f25("water_ride_static_hurt_trigger", "targetname");
	namespace_84970cc4::function_966ecb29(var_b98e5eb8, &function_29a04809);
}

/*
	Name: function_88fd81d3
	Namespace: namespace_bfe2abac
	Checksum: 0xC14AD3D4
	Offset: 0xBA0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_88fd81d3(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_1cbc58b8
	Namespace: namespace_bfe2abac
	Checksum: 0xA483068B
	Offset: 0xBD0
	Size: 0x269
	Parameters: 0
	Flags: None
*/
function function_1cbc58b8()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	var_58230dee = function_6ada35ba("uw_rail_sequence_start", "targetname");
	level thread namespace_d0ef8521::function_45d1556("uw_rail_sequence_start");
	var_58230dee namespace_cba4cc55::function_36a6e271();
	level notify("hash_e48dacea");
	level namespace_cc27597::function_43718187("cin_sgen_23_02_blow_door_vign_start", level.var_2fd26037);
	level thread namespace_d0ef8521::function_45d1556("uw_rail_sequence_start");
	var_58230dee waittill("hash_4dbf3ae3");
	var_bd31ad19 = function_6ada35ba("blow_wall_charge", "targetname");
	function_fd4ba5e1(level.var_c1aa5253["depth_charge_explosion"], var_bd31ad19.var_722885f3);
	var_1787c657 = function_6ada35ba("water_ride_explosion_damage", "targetname");
	var_1787c657 function_175e6b8e(1);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_door_hendricks_explosion_bundle");
	level thread namespace_cc27597::function_43718187("cin_sgen_23_02_blow_door_vign_end", level.var_2fd26037);
	wait(0.1);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_e5dfd798(var_4bc288a0);
	}
}

/*
	Name: function_8d753d94
	Namespace: namespace_bfe2abac
	Checksum: 0x69686709
	Offset: 0xE48
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_8d753d94()
{
	level endon("hash_e48dacea");
	wait(function_72a94f05(8, 13));
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_regroup_on_me_our_o_0");
	wait(function_72a94f05(8, 13));
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_alright_stay_on_my_0");
}

/*
	Name: function_e5dfd798
	Namespace: namespace_bfe2abac
	Checksum: 0xCC02534E
	Offset: 0xED8
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_e5dfd798(var_4bc288a0)
{
	self namespace_419e977d::function_60455f28("o2");
	self.var_368a5fed = 0;
	self.var_71062982 = 1;
	self.var_d7515e0 = var_4bc288a0;
	var_fdbc04e0 = function_99201f25("player_rail_vehicle", "targetname");
	var_64baf900 = var_fdbc04e0[var_4bc288a0];
	var_ac0ca58a = function_243bb261(var_64baf900.var_b07228b6, "targetname");
	self.var_36cc7e41 = namespace_2f06d687::function_7387a40a(var_64baf900);
	self.var_36cc7e41 function_7f79df7(1000);
	self.var_36cc7e41.var_722885f3 = self.var_722885f3;
	self function_eda2be50(self.var_36cc7e41.var_6ab6f4fd);
	self function_ed594d21(self.var_36cc7e41, undefined, 0.5, 30, 30, 30, 30);
	var_658763e6 = var_4bc288a0 * 0.5;
	var_78962fff = 0;
	self function_e2af603e("cp_sgen_c4_explode");
	while(var_78962fff < var_658763e6)
	{
		var_78962fff = var_78962fff + 0.5;
		wait(0.5);
		self function_e2af603e("cp_sgen_c4_explode");
	}
	self.var_36cc7e41 namespace_96fa87af::function_b6b0ca71(var_ac0ca58a);
	self thread function_6a35acee(var_4bc288a0);
}

/*
	Name: function_6a35acee
	Namespace: namespace_bfe2abac
	Checksum: 0x30CD35B4
	Offset: 0x1130
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_6a35acee(var_4bc288a0)
{
	var_1c4260d1 = function_9b7fda5e("script_origin", (0, 0, 0));
	var_1c4260d1 function_c2931a36("evt_sgen_waterrail_loop", 1.5);
	self thread function_79c98cb(var_4bc288a0);
	self namespace_82b91a51::function_958c7633();
	self.var_36cc7e41 waittill("hash_a93c476");
	self namespace_82b91a51::function_4b741fdc();
	self namespace_71e9cb84::function_e9c3870b("tp_water_sheeting", 0);
	self thread namespace_cc27597::function_fcf56ab5("cin_sgen_24_01_ride_vign_body_player_flail_" + self.var_d7515e0);
	namespace_1d795d47::function_be8adfb8("underwater_rail");
	var_1c4260d1 function_dc8c8404();
}

/*
	Name: function_c1262746
	Namespace: namespace_bfe2abac
	Checksum: 0xCA4BE3CC
	Offset: 0x1268
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_c1262746()
{
	var_a62d40b4 = function_6ada35ba(self.var_b07228b6, "targetname");
	var_5cbbdfca = function_6ada35ba(var_a62d40b4.var_b07228b6, "targetname");
	var_baa5bcb1 = namespace_14b42b8a::function_7922262b(var_5cbbdfca.var_b07228b6, "targetname");
	var_a62d40b4 function_8f279593();
	var_a62d40b4 function_37f7858a(var_5cbbdfca);
	var_a62d40b4 thread function_136b871d();
	self waittill("hash_4dbf3ae3");
	var_5cbbdfca function_c0b6566f(VectorScale((1, 1, 1), 180), 5);
	if(isdefined(var_baa5bcb1.var_8202763a))
	{
		var_5cbbdfca function_a96a2721(var_baa5bcb1.var_722885f3, var_baa5bcb1.var_8202763a);
	}
	else
	{
		var_5cbbdfca function_a96a2721(var_baa5bcb1.var_722885f3, 5);
	}
	var_5cbbdfca waittill("hash_a21db68a");
	if(isdefined(var_baa5bcb1.var_b07228b6))
	{
		var_522d7591 = namespace_14b42b8a::function_7922262b(var_baa5bcb1.var_b07228b6, "targetname");
		if(isdefined(var_522d7591.var_8202763a))
		{
			var_5cbbdfca function_a96a2721(var_522d7591.var_722885f3, var_522d7591.var_8202763a);
		}
		else
		{
			var_5cbbdfca function_a96a2721(var_522d7591.var_722885f3, 5);
		}
	}
	var_5cbbdfca waittill("hash_a21db68a");
	var_a62d40b4 notify("hash_fcf56ab5");
	var_5cbbdfca function_dc8c8404();
}

/*
	Name: function_136b871d
	Namespace: namespace_bfe2abac
	Checksum: 0xD1FD6421
	Offset: 0x14D8
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_136b871d()
{
	self endon("hash_fcf56ab5");
	var_36665ed7 = [];
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_6bfe1586);
		if(!function_7f41c8e7(var_36665ed7, var_6bfe1586) && function_65f192a6(var_6bfe1586))
		{
			if(!isdefined(var_36665ed7))
			{
				var_36665ed7 = [];
			}
			else if(!function_6e2770d8(var_36665ed7))
			{
				var_36665ed7 = function_84970cc4(var_36665ed7);
			}
			var_36665ed7[var_36665ed7.size] = var_6bfe1586;
			var_6bfe1586 thread function_5f1793f0(0.5, 1);
		}
	}
}

/*
	Name: function_29a04809
	Namespace: namespace_bfe2abac
	Checksum: 0x588BB071
	Offset: 0x15D8
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_29a04809()
{
	level endon("hash_4a593615");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_6bfe1586);
		if(function_65f192a6(var_6bfe1586) && (!isdefined(var_6bfe1586.var_9d9e6741) || GetTime() - var_6bfe1586.var_9d9e6741 > 2000))
		{
			var_6bfe1586.var_9d9e6741 = GetTime();
			var_6bfe1586 thread function_5f1793f0(1, 0.75);
		}
	}
}

/*
	Name: function_13629b3a
	Namespace: namespace_bfe2abac
	Checksum: 0x7DC2FF2F
	Offset: 0x1690
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_13629b3a()
{
	self endon("hash_a93c476");
	while(1)
	{
		function_da6acfd2(level.var_c1aa5253["current_effect"], self, "tag_origin");
		wait(0.1);
	}
}

/*
	Name: function_a6779dd4
	Namespace: namespace_bfe2abac
	Checksum: 0xEB5788F6
	Offset: 0x16E8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_a6779dd4()
{
	var_db08859d = function_243bb261(self.var_b07228b6, "targetname");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_5dc5e20a);
		if(!(isdefined(var_5dc5e20a.var_36cc7e41.var_7df4171f) && var_5dc5e20a.var_36cc7e41.var_7df4171f))
		{
			var_5dc5e20a notify("hash_f9ee8f48");
			var_5dc5e20a.var_36cc7e41 namespace_96fa87af::function_edb3a94e(var_db08859d);
			var_5dc5e20a.var_36cc7e41 function_4f28280b(var_5dc5e20a);
			var_5dc5e20a.var_36cc7e41 notify("hash_a93c476");
			var_5dc5e20a thread namespace_cc27597::function_fcf56ab5("cin_sgen_24_01_ride_vign_body_player_flail_" + var_5dc5e20a.var_d7515e0);
			var_5dc5e20a function_52fddbd0();
			namespace_1d795d47::function_be8adfb8("underwater_rail");
			break;
		}
	}
}

/*
	Name: function_79c98cb
	Namespace: namespace_bfe2abac
	Checksum: 0xDB28849
	Offset: 0x1848
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_79c98cb(var_4bc288a0)
{
	self endon("hash_643a7daf");
	self endon("hash_f9ee8f48");
	self.var_36cc7e41 thread function_fcbee82b(self);
	self.var_36cc7e41 thread function_13629b3a();
	wait(0.8);
	self thread namespace_cc27597::function_43718187("cin_sgen_24_01_ride_vign_body_player_flail_" + self.var_d7515e0, self);
	self.var_36cc7e41 namespace_96fa87af::function_ff72658f();
	self.var_36cc7e41 function_4f28280b(self);
	self.var_36cc7e41 notify("hash_a93c476");
	self.var_368a5fed = 1;
	self.var_71062982 = 0;
	self function_52fddbd0();
	self namespace_cba4cc55::function_1581b116();
}

/*
	Name: function_4f28280b
	Namespace: namespace_bfe2abac
	Checksum: 0x4863097C
	Offset: 0x1960
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_4f28280b(var_5dc5e20a)
{
	var_ad88c72f = function_8f8fb3b0("swim_rail_end", "targetname");
	foreach(var_d5c2535f in level.var_2395e945)
	{
		if(var_5dc5e20a == var_d5c2535f)
		{
			self namespace_96fa87af::function_edb3a94e(var_ad88c72f[var_5e76f0af]);
			break;
		}
	}
}

/*
	Name: function_fcbee82b
	Namespace: namespace_bfe2abac
	Checksum: 0x10D51D72
	Offset: 0x1A40
	Size: 0x25F
	Parameters: 1
	Flags: None
*/
function function_fcbee82b(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_643a7daf");
	self endon("hash_a93c476");
	self.var_ae0dead4 = 0;
	self.var_7e39b8e9 = 0;
	while(1)
	{
		var_a8166a44 = var_5dc5e20a function_a4d94983();
		var_54b1a5df = var_a8166a44[1];
		var_d74cdceb = var_a8166a44[0];
		if(!(isdefined(self.var_7df4171f) && self.var_7df4171f))
		{
			if(var_54b1a5df < -0.5)
			{
				if(self.var_ae0dead4 > -50)
				{
					self.var_ae0dead4 = self.var_ae0dead4 - 10;
				}
			}
			else if(var_54b1a5df > 0.5)
			{
				if(self.var_ae0dead4 < 50)
				{
					self.var_ae0dead4 = self.var_ae0dead4 + 10;
				}
			}
			else if(self.var_ae0dead4 != 0)
			{
				if(self.var_ae0dead4 > 0)
				{
				}
				else
				{
				}
				self.var_ae0dead4 = -5 + 5;
			}
			if(var_d74cdceb < -0.5)
			{
				if(self.var_7e39b8e9 > -10)
				{
					self.var_7e39b8e9 = self.var_7e39b8e9 - 10;
				}
			}
			else if(var_d74cdceb > 0.5)
			{
				if(self.var_7e39b8e9 < 10)
				{
					self.var_7e39b8e9 = self.var_7e39b8e9 + 10;
				}
			}
			else if(self.var_7e39b8e9 != 0)
			{
				if(self.var_7e39b8e9 > 0)
				{
				}
				else
				{
				}
				self.var_7e39b8e9 = -5 + 5;
			}
		}
		/#
			function_895b00(self.var_ae0dead4);
		#/
		self function_f374d9ef((0, self.var_ae0dead4, self.var_7e39b8e9));
		wait(0.05);
	}
}

/*
	Name: function_5f1793f0
	Namespace: namespace_bfe2abac
	Checksum: 0xE3D86440
	Offset: 0x1CA8
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_5f1793f0(var_1db83aef, var_78962fff)
{
	self endon("hash_643a7daf");
	self.var_36cc7e41.var_7df4171f = 1;
	self.var_36cc7e41.var_ae0dead4 = self.var_36cc7e41.var_ae0dead4 * -1;
	self.var_36cc7e41.var_7e39b8e9 = self.var_36cc7e41.var_7e39b8e9 * -1;
	function_9cf04c2e(var_1db83aef, var_78962fff, self.var_722885f3, 256);
	self function_e2af603e("damage_heavy");
	self function_8a20e55d("evt_waterride_impact");
	wait(var_78962fff * 0.25);
	self.var_36cc7e41.var_7df4171f = 0;
}

/*
	Name: function_d1342558
	Namespace: namespace_bfe2abac
	Checksum: 0x2D7343B4
	Offset: 0x1DB8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_d1342558()
{
	self.var_15dfd6c = 0.1;
}


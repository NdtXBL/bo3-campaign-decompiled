#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_oed;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm_data;
#using scripts\cp\bonuszm\_bonuszm_dev;
#using scripts\cp\bonuszm\_bonuszm_magicbox;
#using scripts\cp\bonuszm\_bonuszm_spawner_shared;
#using scripts\cp\bonuszm\_bonuszm_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\_oob;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai\systems\shared;
#using scripts\shared\ai\zombie_shared;
#using scripts\shared\ai\zombie_utility;
#using scripts\shared\ammo_shared;
#using scripts\shared\archetype_shared\archetype_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\clientids_shared;
#using scripts\shared\containers_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\math_shared;
#using scripts\shared\music_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\serverfaceanim_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_37cacec1;

/*
	Name: function_5e408c24
	Namespace: namespace_37cacec1
	Checksum: 0x872C3364
	Offset: 0xAA0
	Size: 0x17B
	Parameters: 4
	Flags: None
*/
function function_5e408c24(var_722885f3, var_69d7b165, var_fc4796f5, var_277de3ef)
{
	var_f901131c = function_c0545f55(var_722885f3, var_277de3ef, var_fc4796f5);
	var_54f3a637 = [];
	foreach(var_90ca1fdd in var_f901131c)
	{
		if(isdefined(var_69d7b165))
		{
			var_dd83e145 = function_7d9668cb(var_90ca1fdd);
			if(isdefined(var_dd83e145) && var_69d7b165 == var_dd83e145)
			{
				namespace_84970cc4::function_69554b3e(var_54f3a637, var_90ca1fdd);
			}
			continue;
		}
		namespace_84970cc4::function_69554b3e(var_54f3a637, var_90ca1fdd);
	}
	var_370cf6d0 = namespace_84970cc4::function_47d18840(var_54f3a637);
	return var_370cf6d0;
}

/*
	Name: function_165bd27a
	Namespace: namespace_37cacec1
	Checksum: 0x381DC3F
	Offset: 0xC28
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_165bd27a(var_3a90f16b)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3a90f16b));
	#/
	var_1edae8b9 = 1;
	if(isdefined(level.var_aa9bd2f3))
	{
		switch(level.var_aa9bd2f3)
		{
			case "easy":
			{
				var_1edae8b9 = level.var_a9e78bf7["zombiehealthscale1"];
				break;
			}
			case "normal":
			{
				var_1edae8b9 = level.var_a9e78bf7["zombiehealthscale2"];
				break;
			}
			case "hardened":
			{
				var_1edae8b9 = level.var_a9e78bf7["zombiehealthscale3"];
				break;
			}
			case "veteran":
			{
				var_1edae8b9 = level.var_a9e78bf7["zombiehealthscale4"];
				break;
			}
			case "realistic":
			{
				var_1edae8b9 = level.var_a9e78bf7["zombiehealthscale5"];
				break;
			}
		}
	}
	return function_b6b79a0(var_3a90f16b * var_1edae8b9);
}

/*
	Name: function_5f2c4513
	Namespace: namespace_37cacec1
	Checksum: 0x856E1F27
	Offset: 0xD68
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_5f2c4513()
{
	var_1edae8b9 = 1;
	if(isdefined(level.var_9b1393e7))
	{
		switch(level.var_9b1393e7.size)
		{
			case 1:
			{
				var_1edae8b9 = level.var_a9e78bf7["extrazombiescale1"];
				break;
			}
			case 2:
			{
				var_1edae8b9 = level.var_a9e78bf7["extrazombiescale2"];
				break;
			}
			case 3:
			{
				var_1edae8b9 = level.var_a9e78bf7["extrazombiescale3"];
				break;
			}
			case 4:
			{
				var_1edae8b9 = level.var_a9e78bf7["extrazombiescale4"];
				break;
			}
		}
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_a9e78bf7["Dev Block strings are not supported"]));
	#/
	return function_b6b79a0(level.var_a9e78bf7["extraspawns"] * var_1edae8b9);
}

/*
	Name: function_9cb5d4c9
	Namespace: namespace_37cacec1
	Checksum: 0x39A40085
	Offset: 0xE90
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_9cb5d4c9()
{
	level.var_3a7fa0a9 = [];
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy01_attach");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy01_death");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy01_dismount");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy01_idle");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy02_attach");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy02_death");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy02_dismount");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "cin_gen_traversal_zipline_enemy02_idle");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "ch_sgen_11_01_silofloor_aie_dropdown_robot02_2ndfloor");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "ch_sgen_11_01_silofloor_aie_dropdown_robot01_3rdfloor");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "ch_sgen_12_02_corvus_aie_192jump");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "ch_gen_aie_robot_jumpdown_444");
	namespace_84970cc4::function_69554b3e(level.var_3a7fa0a9, "ch_sgen_18_01_pallasfight_aie_jumpdown_robot01");
}

/*
	Name: function_51828ce6
	Namespace: namespace_37cacec1
	Checksum: 0x644B23EF
	Offset: 0x1050
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_51828ce6()
{
	if(!self function_b7f9b625())
	{
		return 0;
	}
	if(isdefined(self.var_67c7c241) && function_2477ac2(self.var_67c7c241))
	{
		if(function_7f41c8e7(level.var_3a7fa0a9, self.var_67c7c241))
		{
			return 1;
		}
	}
	if(level.var_cd724008 === "cp_mi_sing_sgen")
	{
		if(isdefined(self.var_59959945) && isdefined(self.var_59959945.var_909e866f) && function_2477ac2(self.var_59959945.var_909e866f))
		{
			if(function_7f41c8e7(level.var_3a7fa0a9, self.var_59959945.var_909e866f))
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_ce6a97e6
	Namespace: namespace_37cacec1
	Checksum: 0xC9CE7BEB
	Offset: 0x1158
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_ce6a97e6()
{
	var_b78f06c4 = function_6f1ebe57("mapname");
	return self function_84368297("PlayerStatsByMap", var_b78f06c4 + "_nightmares", "hasBeenCompleted");
}

/*
	Name: function_d68296ac
	Namespace: namespace_37cacec1
	Checksum: 0xD5F288A6
	Offset: 0x11C0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_d68296ac()
{
	var_b78f06c4 = function_6f1ebe57("mapname");
	if(var_b78f06c4 == "cp_mi_eth_prologue")
	{
		if(isdefined(level.var_c0e97bd) && level.var_c0e97bd == "skipto_hangar")
		{
			level namespace_ad23e503::function_8870cfa8(function_84970cc4("plane_hangar_hendricks_ready_flag", "plane_hangar_khalil_ready_flag", "plane_hangar_minister_ready_flag"));
			wait(4);
		}
	}
	if(var_b78f06c4 == "cp_mi_cairo_ramses")
	{
		if(isdefined(level.var_c0e97bd) && level.var_c0e97bd == "defend_ramses_station")
		{
			level namespace_ad23e503::function_1ab5ebec("raps_intro_done");
		}
	}
}

/*
	Name: function_ec036ed3
	Namespace: namespace_37cacec1
	Checksum: 0xB4902CEF
	Offset: 0x12B8
	Size: 0x67F
	Parameters: 3
	Flags: None
*/
function function_ec036ed3(var_28b84d73, var_14e6a7e9, var_df4e4d0f)
{
	if(!isdefined(level.var_5e64ddb4))
	{
		level.var_5e64ddb4 = [];
		level.var_3494f35e = 0;
	}
	var_61338191 = function_e7bdc1a1(var_14e6a7e9, level.var_9b1393e7);
	if(!isdefined(var_61338191))
	{
		return var_14e6a7e9;
	}
	var_49e0ea09 = function_bc7ce905(var_61338191.var_6ab6f4fd);
	var_2d1236a = var_61338191.var_722885f3;
	var_2d1236a = function_eed6dab7(var_2d1236a, function_dc99997a(100, 300));
	if(isdefined(var_2d1236a))
	{
		var_d5b210fc = function_54f69de9(var_2d1236a, 450, function_dc99997a(800, 1200), 70, function_dc99997a(80, 150), self);
	}
	if(!isdefined(var_d5b210fc))
	{
		var_2d1236a = var_61338191.var_722885f3;
		if(isdefined(var_2d1236a))
		{
			var_d5b210fc = function_54f69de9(var_2d1236a, 150, function_dc99997a(800, 1200), 70, function_dc99997a(80, 150), self);
		}
	}
	var_59b020a9 = undefined;
	if(isdefined(var_d5b210fc) && var_d5b210fc.var_72254e15.size > 0)
	{
		foreach(var_72254e15 in var_d5b210fc.var_72254e15)
		{
			var_72254e15.var_f1242439 = 0;
			var_dcf3b4e8 = function_1f637867(var_28b84d73, var_61338191, var_72254e15);
			var_72254e15.var_f1242439 = var_72254e15.var_f1242439 + var_dcf3b4e8;
			var_8fb5ce54 = function_ae0beba6(var_28b84d73, var_61338191, var_72254e15);
			var_72254e15.var_f1242439 = var_72254e15.var_f1242439 + var_8fb5ce54;
			var_6a9c89c0 = function_d789e857(var_28b84d73, var_61338191, var_72254e15);
			var_72254e15.var_f1242439 = var_72254e15.var_f1242439 + var_6a9c89c0;
			var_77f56330 = function_fb8e7615(var_28b84d73, var_61338191, var_72254e15);
			var_72254e15.var_f1242439 = var_72254e15.var_f1242439 - var_77f56330;
			if(!isdefined(var_59b020a9))
			{
				var_59b020a9 = var_72254e15;
			}
			if(var_72254e15.var_f1242439 > var_59b020a9.var_f1242439)
			{
				/#
					function_4c9624c6("Dev Block strings are not supported" + var_72254e15.var_f1242439 + "Dev Block strings are not supported" + var_dcf3b4e8 + "Dev Block strings are not supported" + var_8fb5ce54 + "Dev Block strings are not supported" + var_6a9c89c0 + "Dev Block strings are not supported" + var_77f56330 + "Dev Block strings are not supported", var_72254e15.var_722885f3, (0, 0, 1), "Dev Block strings are not supported");
				#/
				var_59b020a9 = var_72254e15;
				continue;
			}
			/#
				function_4c9624c6("Dev Block strings are not supported" + var_72254e15.var_f1242439 + "Dev Block strings are not supported" + var_dcf3b4e8 + "Dev Block strings are not supported" + var_8fb5ce54 + "Dev Block strings are not supported" + var_6a9c89c0 + "Dev Block strings are not supported" + var_77f56330 + "Dev Block strings are not supported", var_72254e15.var_722885f3, (1, 0, 0), "Dev Block strings are not supported");
			#/
		}
	}
	/#
		function_4d084a77();
	#/
	if(isdefined(var_59b020a9))
	{
		/#
			function_4c9624c6("Dev Block strings are not supported" + var_59b020a9.var_f1242439, var_59b020a9.var_722885f3 + VectorScale((0, 0, 1), 20), (0, 1, 0), "Dev Block strings are not supported");
		#/
		var_42322402 = var_59b020a9.var_722885f3;
	}
	if(!isdefined(var_42322402))
	{
		var_370cf6d0 = function_5e408c24(var_14e6a7e9, var_df4e4d0f, 100, function_dc99997a(600, 1000));
		if(isdefined(var_370cf6d0))
		{
			var_42322402 = var_370cf6d0.var_722885f3;
		}
	}
	if(!isdefined(var_42322402))
	{
		var_42322402 = var_14e6a7e9;
	}
	if(level.var_3494f35e > 10)
	{
		level.var_3494f35e = 0;
	}
	level.var_5e64ddb4[level.var_3494f35e] = var_42322402;
	level.var_3494f35e++;
	return var_42322402;
}

/*
	Name: function_1f637867
	Namespace: namespace_37cacec1
	Checksum: 0xD678897
	Offset: 0x1940
	Size: 0x163
	Parameters: 3
	Flags: None
*/
function function_1f637867(var_28b84d73, var_61338191, var_72254e15)
{
	var_f1242439 = 0;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5734b0ef = function_cb3d1c9b(var_72254e15.var_722885f3, var_5dc5e20a.var_722885f3);
		var_d322d6e7 = namespace_d73b9283::function_31931862(var_5734b0ef, 0, 1200 * 1200);
		var_f1242439 = var_f1242439 + var_d322d6e7 / 1200 * 1200;
		if(var_5734b0ef > 1200 * 1200)
		{
			var_f1242439 = var_f1242439 + function_72a94f05(-0.1, 0.1);
		}
	}
	return var_f1242439;
}

/*
	Name: function_ae0beba6
	Namespace: namespace_37cacec1
	Checksum: 0xC5CEDEFE
	Offset: 0x1AB0
	Size: 0x1B3
	Parameters: 3
	Flags: None
*/
function function_ae0beba6(var_28b84d73, var_61338191, var_72254e15)
{
	var_f1242439 = 0;
	var_4d45bcdc = 0;
	if(isdefined(var_61338191) && isdefined(var_61338191.var_924bb3b8))
	{
		var_c54cd263 = function_f679a325((var_61338191.var_924bb3b8[0], var_61338191.var_924bb3b8[1], 0) - (var_61338191.var_722885f3[0], var_61338191.var_722885f3[1], 0));
		var_6798eb4a = function_ef0a72b2(70);
		var_a9f2c7c7 = function_f679a325((var_72254e15.var_722885f3[0], var_72254e15.var_722885f3[1], 0) - (var_61338191.var_722885f3[0], var_61338191.var_722885f3[1], 0));
		var_42bd74de = function_5f9a4869(var_c54cd263, var_a9f2c7c7);
		if(var_42bd74de >= var_6798eb4a)
		{
			var_f1242439 = function_72a94f05(1, 2);
		}
	}
	return var_f1242439;
}

/*
	Name: function_d789e857
	Namespace: namespace_37cacec1
	Checksum: 0x3ADBC828
	Offset: 0x1C70
	Size: 0x81
	Parameters: 3
	Flags: None
*/
function function_d789e857(var_28b84d73, var_61338191, var_72254e15)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_28b84d73));
	#/
	var_f1242439 = 1;
	if(var_28b84d73 function_e56c90a(var_72254e15.var_722885f3))
	{
		var_f1242439 = 0;
	}
	return var_f1242439;
}

/*
	Name: function_fb8e7615
	Namespace: namespace_37cacec1
	Checksum: 0x33A2CD6
	Offset: 0x1D00
	Size: 0x111
	Parameters: 3
	Flags: None
*/
function function_fb8e7615(var_28b84d73, var_61338191, var_72254e15)
{
	var_f1242439 = 0;
	foreach(var_35940ed8 in level.var_5e64ddb4)
	{
		var_b0035858 = function_cb3d1c9b(var_35940ed8, var_72254e15.var_722885f3);
		if(var_b0035858 <= 120 * 120)
		{
			var_f1242439 = var_f1242439 + 1 - var_b0035858 / 120 * 120 * 0.2;
		}
	}
	return var_f1242439;
}

/*
	Name: function_4d084a77
	Namespace: namespace_37cacec1
	Checksum: 0x14E4B0C7
	Offset: 0x1E20
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_4d084a77()
{
	/#
		foreach(var_35940ed8 in level.var_5e64ddb4)
		{
			function_a1fd4e99(var_35940ed8, 4, (1, 1, 0), "Dev Block strings are not supported");
		}
	#/
}


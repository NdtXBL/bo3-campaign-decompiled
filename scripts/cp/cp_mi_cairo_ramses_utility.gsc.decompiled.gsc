#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_391e4301;

/*
	Name: function_2dc19561
	Namespace: namespace_391e4301
	Checksum: 0xCD9571C5
	Offset: 0xB70
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("ramses_util", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_391e4301
	Checksum: 0xDA130394
	Offset: 0xBB0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("toplayer", "ramses_sun_color", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "dni_eye", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "hide_graphic_content", 1, 1, "counter");
}

/*
	Name: function_cec9e261
	Namespace: namespace_391e4301
	Checksum: 0xB96D8481
	Offset: 0xC50
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_cec9e261()
{
	return function_4bd0142f("is_demo_build", 0);
}

/*
	Name: function_22e1a261
	Namespace: namespace_391e4301
	Checksum: 0xA2968FA4
	Offset: 0xC78
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_22e1a261()
{
	namespace_80983c42::function_80983c42("transition");
	level function_c20af84a();
	function_6ada35ba("lgt_shadow_block_trans", "targetname") function_48f26766();
	level namespace_71e9cb84::function_74d6b22f("alley_fog_banks", 1);
}

/*
	Name: function_8a9650aa
	Namespace: namespace_391e4301
	Checksum: 0x244C0FAD
	Offset: 0xD08
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_8a9650aa()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_cb8df3d0())
		{
			var_83c1bef6 = var_5dc5e20a function_dd4657f1();
			var_8b449b0f = var_83c1bef6 function_6f256229(var_5dc5e20a);
			var_83c1bef6 function_16337f9e(var_5dc5e20a, var_8b449b0f);
		}
	}
}

/*
	Name: function_c3080ff8
	Namespace: namespace_391e4301
	Checksum: 0xF33B573B
	Offset: 0xE08
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_c3080ff8(var_864a3d55)
{
	if(!isdefined(var_864a3d55))
	{
		var_864a3d55 = 1;
	}
	if(!function_6e2770d8(self))
	{
		var_9be07199 = function_84970cc4(self);
	}
	else
	{
		var_9be07199 = self;
	}
	foreach(var_6bfe1586 in var_9be07199)
	{
		var_6bfe1586 namespace_82b91a51::function_16c71b8(var_864a3d55);
	}
}

/*
	Name: function_1903e7dc
	Namespace: namespace_391e4301
	Checksum: 0x118046F4
	Offset: 0xF00
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_1903e7dc()
{
	function_9e3608e3("arena_billboard_static2");
	function_9e3608e3("arena_billboard_02_static2");
	function_9e3608e3("cinema_collapse_static2");
	function_9e3608e3("quadtank_statue_static2");
	function_9e3608e3("rocket_static2");
	function_9e3608e3("glass_building_static2");
	function_9e3608e3("wall_collapse_static2");
	function_2f9e262a();
}

/*
	Name: function_2f9e262a
	Namespace: namespace_391e4301
	Checksum: 0x4ED88CF
	Offset: 0xFC8
	Size: 0x313
	Parameters: 0
	Flags: None
*/
function function_2f9e262a()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_arena_billboard_bundle", &function_1c347e72, "init", "arena_billboard_static1");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_arena_billboard_bundle", &function_a72c2dda, "done", "arena_billboard_static2");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_arena_billboard_02_bundle", &function_1c347e72, "init", "arena_billboard_02_static1");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_arena_billboard_02_bundle", &function_a72c2dda, "done", "arena_billboard_02_static2");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_cinema_collapse_bundle", &function_1c347e72, "init", "cinema_collapse_static1");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_cinema_collapse_bundle", &function_a72c2dda, "done", "cinema_collapse_static2");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_quadtank_statue_bundle", &function_1c347e72, "init", "quadtank_statue_static1");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_quadtank_statue_bundle", &function_a72c2dda, "done", "quadtank_statue_static2");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_quadtank_plaza_building_rocket_bundle", &function_1c347e72, "init", "rocket_static1");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_quadtank_plaza_building_rocket_bundle", &function_a72c2dda, "done", "rocket_static2");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_quadtank_plaza_glass_building_bundle", &function_1c347e72, "init", "glass_building_static1");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_quadtank_plaza_glass_building_bundle", &function_a72c2dda, "done", "glass_building_static2");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_qt_plaza_palace_wall_collapse_bundle", &function_1c347e72, "init", "wall_collapse_static1");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_qt_plaza_palace_wall_collapse_bundle", &function_a72c2dda, "done", "wall_collapse_static2");
}

/*
	Name: function_1c347e72
	Namespace: namespace_391e4301
	Checksum: 0x907126A7
	Offset: 0x12E8
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_1c347e72(var_c77d2837, var_a0b86a77)
{
	function_9e3608e3(var_a0b86a77);
}

/*
	Name: function_a72c2dda
	Namespace: namespace_391e4301
	Checksum: 0x31AE3DAE
	Offset: 0x1320
	Size: 0xD1
	Parameters: 2
	Flags: None
*/
function function_a72c2dda(var_c77d2837, var_a0b86a77)
{
	function_6ddd4fa4(var_a0b86a77);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(isdefined(var_a3d46ee4) && !function_5cfb84bb(var_a3d46ee4))
		{
			var_a3d46ee4 function_dc8c8404();
		}
	}
}

/*
	Name: function_a0a9f927
	Namespace: namespace_391e4301
	Checksum: 0x8651B958
	Offset: 0x1400
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_a0a9f927()
{
	var_3ecc15f7 = function_99201f25("recovery_fan", "targetname");
	foreach(var_76185ee4 in var_3ecc15f7)
	{
		var_76185ee4 thread function_a4998afa(2);
		var_76185ee4 thread function_f81a38c8();
		wait(function_72a94f05(0.5, 1.5));
	}
}

/*
	Name: function_a4998afa
	Namespace: namespace_391e4301
	Checksum: 0x422E2DA4
	Offset: 0x1508
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_a4998afa(var_5dbde88f)
{
	self endon("hash_fb28e86c");
	while(1)
	{
		self function_21d0da55(180, var_5dbde88f / 2);
		wait(var_5dbde88f / 2);
	}
}

/*
	Name: function_f81a38c8
	Namespace: namespace_391e4301
	Checksum: 0x217D00ED
	Offset: 0x1568
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_f81a38c8()
{
	var_2eb20475 = function_6ada35ba(self.var_b07228b6, "targetname");
	var_2eb20475 waittill("hash_4dbf3ae3");
	self notify("hash_fb28e86c");
	self waittill("hash_6654e4f4");
	self function_c0b6566f(self.var_6ab6f4fd + VectorScale((0, 1, 0), 15), 1.25, 0.05, 0.75);
}

/*
	Name: function_e7ebe596
	Namespace: namespace_391e4301
	Checksum: 0xA1133A02
	Offset: 0x1610
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_e7ebe596(var_c1e63f13)
{
	if(!isdefined(var_c1e63f13))
	{
		var_c1e63f13 = 1;
	}
}

/*
	Name: function_9f4f118
	Namespace: namespace_391e4301
	Checksum: 0x9FC4B3A8
	Offset: 0x1638
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_9f4f118(var_b8da2278, var_5e953b6)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	level thread function_db4d0261(var_b8da2278, var_5e953b6);
}

/*
	Name: function_db4d0261
	Namespace: namespace_391e4301
	Checksum: 0xB9AB5BFE
	Offset: 0x1690
	Size: 0xE9
	Parameters: 2
	Flags: None
*/
function function_db4d0261(var_b8da2278, var_5e953b6)
{
	var_c77d2837 = function_99201f25(var_b8da2278, var_5e953b6);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(var_c957f6b6 % 3)
		{
			wait(0.05);
		}
		if(isdefined(var_a3d46ee4))
		{
			var_a3d46ee4 function_dc8c8404();
		}
	}
}

/*
	Name: function_d4a0bb54
	Namespace: namespace_391e4301
	Checksum: 0xB66D8833
	Offset: 0x1788
	Size: 0x38B
	Parameters: 1
	Flags: None
*/
function function_d4a0bb54(var_5d2441df)
{
	if(!isdefined(var_5d2441df))
	{
		var_5d2441df = 0;
	}
	level.var_5e3ce707 = [];
	var_6ff300d5 = function_99201f25("dead_turrets_non_controllable", "targetname");
	if(var_5d2441df)
	{
		foreach(var_f074d981 in var_6ff300d5)
		{
			var_70345f7f = function_9b7fda5e("script_model", var_f074d981.var_722885f3);
			var_70345f7f.var_6ab6f4fd = var_f074d981.var_6ab6f4fd;
			var_70345f7f function_e48f905e("veh_t7_turret_dead_system_ramses");
		}
		break;
	}
	foreach(var_f074d981 in var_6ff300d5)
	{
		var_880708d8 = namespace_2f06d687::function_7387a40a(var_f074d981);
		level.var_5e3ce707[level.var_5e3ce707.size] = var_880708d8;
		var_880708d8.var_2dd707 = 0;
	}
	level.var_48964153 = [];
	var_99d3b4e1 = function_99201f25("dead_turrets", "script_noteworthy");
	foreach(var_f074d981 in var_99d3b4e1)
	{
		var_880708d8 = namespace_2f06d687::function_7387a40a(var_f074d981);
		level.var_48964153[level.var_48964153.size] = var_880708d8;
		var_880708d8.var_21ca2076 = 0;
		var_880708d8.var_2dd707 = 0;
		if(isdefined(var_f074d981.var_8202763a))
		{
			/#
				namespace_33b293fd::function_a7ee953(isdefined(var_880708d8.var_8202763a), "Dev Block strings are not supported");
			#/
			var_880708d8.var_8202763a = var_f074d981.var_8202763a;
		}
	}
	level.var_9657b09b = function_525ae497(level.var_48964153, level.var_5e3ce707, 1, 0);
	level namespace_ad23e503::function_74d6b22f("dead_turrets_initialized");
}

/*
	Name: function_37357151
	Namespace: namespace_391e4301
	Checksum: 0x8180C4EA
	Offset: 0x1B20
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_37357151()
{
	level notify("hash_24a38c8f");
	if(isdefined(level.var_9657b09b))
	{
		foreach(var_76bcdea7 in level.var_9657b09b)
		{
			var_76bcdea7 function_dc8c8404();
		}
	}
	level.var_5e3ce707 = undefined;
	level.var_48964153 = undefined;
	level.var_9657b09b = undefined;
}

/*
	Name: function_6b4b5556
	Namespace: namespace_391e4301
	Checksum: 0x4A1A4E0
	Offset: 0x1BF0
	Size: 0x129
	Parameters: 1
	Flags: None
*/
function function_6b4b5556(var_46b6a64a)
{
	if(!isdefined(var_46b6a64a))
	{
		var_46b6a64a = 0;
	}
	foreach(var_6161e05a in self)
	{
		var_6161e05a function_50ccee8d();
	}
	if(var_46b6a64a)
	{
		foreach(var_6161e05a in self)
		{
			var_6161e05a function_de8377bf();
			wait(0.05);
		}
	}
}

/*
	Name: function_64a470cf
	Namespace: namespace_391e4301
	Checksum: 0x6D4573B6
	Offset: 0x1D28
	Size: 0x221
	Parameters: 1
	Flags: None
*/
function function_64a470cf(var_29cfceb6)
{
	if(!isdefined(var_29cfceb6))
	{
		var_29cfceb6 = 0;
	}
	foreach(var_6161e05a in self)
	{
		var_6161e05a function_48f26766();
	}
	if(var_29cfceb6)
	{
		foreach(var_6161e05a in self)
		{
			if(var_6161e05a.var_170527fb !== "path_neutral")
			{
				if(isdefined(var_6161e05a.var_caae374e) && var_6161e05a.var_caae374e == "connect_paths")
				{
					var_6161e05a function_de8377bf();
				}
				else if(var_6161e05a.var_e6e9b8de === "script_brushmodel" && var_6161e05a.var_caae374e !== "do_not_disconnect" || (var_6161e05a.var_e6e9b8de === "script_model" && (var_6161e05a.var_6df9264 == "p7_cai_stacking_cargo_crate" || var_6161e05a.var_6df9264 == "veh_t7_mil_vtol_dropship_troopcarrier")))
				{
					var_6161e05a function_14c24d9d();
				}
			}
			wait(0.05);
		}
	}
}

/*
	Name: function_c3458a6
	Namespace: namespace_391e4301
	Checksum: 0xD065E781
	Offset: 0x1F58
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function function_c3458a6()
{
	var_3e671a1 = 0;
	foreach(var_14b42b8a in self)
	{
		if(isdefined(var_14b42b8a.var_6df9264))
		{
			var_4f9043bf = function_9b7fda5e("script_model", var_14b42b8a.var_722885f3);
			var_4f9043bf.var_6ab6f4fd = var_14b42b8a.var_6ab6f4fd;
			var_4f9043bf function_e48f905e(var_14b42b8a.var_6df9264);
			var_3e671a1++;
			if(var_3e671a1 % 10 == 0)
			{
				namespace_82b91a51::function_76f13293();
			}
		}
	}
}

/*
	Name: function_41f6f501
	Namespace: namespace_391e4301
	Checksum: 0xBF90A51F
	Offset: 0x2098
	Size: 0x159
	Parameters: 1
	Flags: None
*/
function function_41f6f501(var_9c0d91a)
{
	if(function_6e2770d8(self))
	{
		var_709349fa = self;
	}
	else
	{
		var_709349fa = function_84970cc4(self);
	}
	foreach(var_6161e05a in var_709349fa)
	{
		var_6161e05a function_422037f5();
	}
	if(isdefined(var_9c0d91a))
	{
		foreach(var_6161e05a in var_709349fa)
		{
			var_6161e05a function_b0b70abb(var_9c0d91a);
		}
	}
}

/*
	Name: function_da54f24b
	Namespace: namespace_391e4301
	Checksum: 0xB8B61B65
	Offset: 0x2200
	Size: 0x159
	Parameters: 1
	Flags: None
*/
function function_da54f24b(var_9c0d91a)
{
	if(function_6e2770d8(self))
	{
		var_709349fa = self;
	}
	else
	{
		var_709349fa = function_84970cc4(self);
	}
	foreach(var_6161e05a in var_709349fa)
	{
		var_6161e05a function_4083a98e();
	}
	if(isdefined(var_9c0d91a))
	{
		foreach(var_6161e05a in var_709349fa)
		{
			var_6161e05a function_b0b70abb(var_9c0d91a);
		}
	}
}

/*
	Name: function_4615ba30
	Namespace: namespace_391e4301
	Checksum: 0x9D884367
	Offset: 0x2368
	Size: 0x277
	Parameters: 2
	Flags: None
*/
function function_4615ba30(var_32c6c398, var_1f9d4a0e)
{
	if(!isdefined(var_1f9d4a0e))
	{
		var_1f9d4a0e = 1;
	}
	var_f7480a72 = function_99201f25(var_32c6c398, "targetname");
	var_9be07199 = self;
	if(!function_6e2770d8(self))
	{
		var_9be07199 = function_84970cc4(self);
	}
	if(var_1f9d4a0e)
	{
		foreach(var_6bfe1586 in var_9be07199)
		{
			foreach(var_f89a5212 in var_f7480a72)
			{
				var_f89a5212 function_858ac43f(var_6bfe1586);
			}
		}
		break;
	}
	foreach(var_6bfe1586 in var_9be07199)
	{
		foreach(var_f89a5212 in var_f7480a72)
		{
			var_f89a5212 function_64218ffc(var_6bfe1586);
		}
	}
}

/*
	Name: function_ad67ec60
	Namespace: namespace_391e4301
	Checksum: 0x3DDB4E90
	Offset: 0x25E8
	Size: 0x1C9
	Parameters: 2
	Flags: None
*/
function function_ad67ec60(var_e59ce4f8, var_c487ec13)
{
	if(!isdefined(var_e59ce4f8))
	{
		var_e59ce4f8 = 1;
	}
	if(!isdefined(var_c487ec13))
	{
		var_c487ec13 = 1;
	}
	if(namespace_957e94ce::function_7922262b("mobile_armory_in_use"))
	{
		return;
	}
	var_9be07199 = self;
	if(!function_6e2770d8(var_9be07199))
	{
		var_9be07199 = function_84970cc4(var_9be07199);
	}
	var_1b7b3a6 = function_c4d5ec1f("spike_launcher");
	foreach(var_6bfe1586 in var_9be07199)
	{
		var_6bfe1586 function_860a040a(var_1b7b3a6);
		var_6bfe1586 function_67795b5f(var_1b7b3a6, var_1b7b3a6.var_c0b2188);
		var_6bfe1586 function_704b802a(var_1b7b3a6);
		if(var_e59ce4f8)
		{
			var_6bfe1586 function_cb53a41e(var_1b7b3a6);
		}
		if(var_c487ec13)
		{
			var_6bfe1586 thread function_fc0b27df(var_1b7b3a6);
		}
	}
}

/*
	Name: function_fc0b27df
	Namespace: namespace_391e4301
	Checksum: 0x3498FCA2
	Offset: 0x27C0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_fc0b27df(var_1b7b3a6)
{
	self endon("hash_128f8789");
	var_d13f855e = self function_48c6a3a2();
	while(!self namespace_ad23e503::function_7922262b("spike_launcher_tutorial_complete"))
	{
		if(var_d13f855e == var_1b7b3a6)
		{
			self function_bd4d52fa(var_1b7b3a6);
		}
		else
		{
			self waittill("hash_9206d256", var_d13f855e);
		}
	}
}

/*
	Name: function_bd4d52fa
	Namespace: namespace_391e4301
	Checksum: 0x4492A840
	Offset: 0x2860
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_bd4d52fa(var_1b7b3a6)
{
	self endon("hash_128f8789");
	self endon("hash_c1eaf281");
	self endon("hash_f4dfb01b");
	self waittill("hash_aa1618b0", var_d13f855e);
	if(var_d13f855e == var_1b7b3a6)
	{
		wait(2);
		self thread function_c2712461();
		self namespace_82b91a51::function_5b7e3888("detonate", "last_stand_detonate");
	}
}

/*
	Name: function_c2712461
	Namespace: namespace_391e4301
	Checksum: 0x58716DFA
	Offset: 0x2908
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_c2712461()
{
	self endon("hash_128f8789");
	self notify("hash_c2712461");
	self endon("hash_c2712461");
	if(isdefined(self.var_f30613a1))
	{
		self namespace_82b91a51::function_f9e5537b();
		wait(0.05);
	}
	var_1b7b3a6 = function_c4d5ec1f("spike_launcher");
	self namespace_82b91a51::function_32d40124(&"CP_MI_CAIRO_RAMSES_SPIKE_LAUNCHER_DETONATE", 1, "spike_launcher_tutorial_complete", 20);
	self.var_99c7680e = 1;
	self namespace_82b91a51::function_9fcf3cd8(20, "detonate", "last_stand_detonate");
	self namespace_ad23e503::function_74d6b22f("spike_launcher_tutorial_complete");
	self.var_f30613a1 = undefined;
}

/*
	Name: function_780e57a1
	Namespace: namespace_391e4301
	Checksum: 0x385116C
	Offset: 0x2A18
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_780e57a1()
{
	level endon("hash_adc3dca5");
	self endon("hash_c1eaf281");
	self endon("hash_f4dfb01b");
	self endon("hash_128f8789");
	var_d13f855e = self function_48c6a3a2();
	var_1b7b3a6 = function_c4d5ec1f("spike_launcher");
	while(!self namespace_ad23e503::function_7922262b("spike_launcher_tutorial_complete"))
	{
		self waittill("hash_9206d256", var_d13f855e);
		if(var_d13f855e != var_1b7b3a6)
		{
			self namespace_82b91a51::function_f9e5537b();
		}
		else
		{
			self namespace_82b91a51::function_32d40124(&"CP_MI_CAIRO_RAMSES_SPIKE_LAUNCHER_DETONATE", 1, "spike_launcher_tutorial_complete", 20);
		}
	}
}

/*
	Name: function_25439df2
	Namespace: namespace_391e4301
	Checksum: 0x2F3EB0FE
	Offset: 0x2B20
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_25439df2()
{
	var_9be07199 = self;
	if(!function_6e2770d8(var_9be07199))
	{
		var_9be07199 = function_84970cc4(var_9be07199);
	}
	var_1b7b3a6 = function_c4d5ec1f("spike_launcher");
	foreach(var_6bfe1586 in var_9be07199)
	{
		if(var_6bfe1586 function_2103ff4b(var_1b7b3a6))
		{
			var_6bfe1586 function_1f3745c0(var_1b7b3a6);
		}
	}
}

/*
	Name: function_486f25d
	Namespace: namespace_391e4301
	Checksum: 0x1E873B77
	Offset: 0x2C48
	Size: 0x11B
	Parameters: 3
	Flags: None
*/
function function_486f25d(var_86b557eb, var_745f5923, var_637003f5)
{
	var_a0117743 = isdefined(var_86b557eb) || isdefined(var_745f5923) || isdefined(var_637003f5);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_a0117743) && var_a0117743, "Dev Block strings are not supported" + self.var_170527fb + "Dev Block strings are not supported" + self.var_722885f3);
	#/
	if(isdefined(var_86b557eb))
	{
		self.var_74952a22 = function_411dc61b(self.var_74952a22, var_86b557eb);
	}
	if(isdefined(var_745f5923))
	{
		self.var_e290d32d = function_411dc61b(self.var_e290d32d, var_745f5923);
	}
	if(isdefined(var_637003f5))
	{
		self.var_5fa59123 = function_411dc61b(self.var_5fa59123, var_637003f5);
	}
}

/*
	Name: function_411dc61b
	Namespace: namespace_391e4301
	Checksum: 0x2BE5573
	Offset: 0x2D70
	Size: 0xAF
	Parameters: 2
	Flags: None
*/
function function_411dc61b(var_a8a66403, var_df47d27)
{
	var_aaf585dc = var_a8a66403 - var_df47d27;
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_aaf585dc = var_aaf585dc + var_df47d27;
	}
	return var_aaf585dc;
}

/*
	Name: function_d4b64a0d
	Namespace: namespace_391e4301
	Checksum: 0xCF32C090
	Offset: 0x2E28
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_d4b64a0d()
{
	var_6bfe1586 = self[0];
	if(self.size > 1)
	{
		var_6bfe1586 = self[function_26299103(self.size)];
	}
	return var_6bfe1586;
}

/*
	Name: function_44514fc0
	Namespace: namespace_391e4301
	Checksum: 0x7015757A
	Offset: 0x2E78
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_44514fc0()
{
	var_a84756db = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		if(!level.var_2395e945[var_c957f6b6] namespace_564407fb::function_38a9aff8())
		{
			if(!isdefined(var_a84756db))
			{
				var_a84756db = [];
			}
			else if(!function_6e2770d8(var_a84756db))
			{
				var_a84756db = function_84970cc4(var_a84756db);
			}
			var_a84756db[var_a84756db.size] = level.var_2395e945[var_c957f6b6];
		}
	}
	return var_a84756db;
}

/*
	Name: function_beaafab6
	Namespace: namespace_391e4301
	Checksum: 0xD1D2EE19
	Offset: 0x2F48
	Size: 0xCF
	Parameters: 1
	Flags: None
*/
function function_beaafab6(var_8b453fd2)
{
	level endon(var_8b453fd2);
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_efb53e77);
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
		{
			if(var_efb53e77 == level.var_2395e945[var_c957f6b6] && !var_efb53e77 namespace_564407fb::function_38a9aff8())
			{
				var_efb53e77 function_c3945cd5(var_efb53e77.var_3a90f16b + 100, var_efb53e77.var_722885f3);
			}
		}
		wait(1);
	}
}

/*
	Name: function_16ccc3fd
	Namespace: namespace_391e4301
	Checksum: 0x3A49178A
	Offset: 0x3020
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_16ccc3fd()
{
	while(1)
	{
		var_cb8bd87d = 0;
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
		{
			if(level.var_2395e945[var_c957f6b6] namespace_82b91a51::function_4ccc8ec5(self))
			{
				var_cb8bd87d++;
			}
		}
		if(var_cb8bd87d == 0)
		{
			return;
		}
		wait(0.25);
	}
}

/*
	Name: function_7129cde6
	Namespace: namespace_391e4301
	Checksum: 0x78426DB6
	Offset: 0x30B8
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_7129cde6(var_aa686173, var_562b538e)
{
	if(!isdefined(var_562b538e))
	{
		var_562b538e = 256;
	}
	self endon("hash_128f8789");
	if(isdefined(var_aa686173))
	{
		level endon(var_aa686173);
	}
	self.var_7dfaf62 = var_562b538e;
	while(1)
	{
		var_a84756db = function_44514fc0();
		var_821b0ced = var_a84756db function_d4b64a0d();
		while(isdefined(var_821b0ced) && !var_821b0ced namespace_564407fb::function_38a9aff8())
		{
			self function_169cc712(var_821b0ced function_e59527c1());
			wait(function_72a94f05(2, 4));
		}
		wait(0.15);
	}
}

/*
	Name: function_a700a8ea
	Namespace: namespace_391e4301
	Checksum: 0x3AA3D008
	Offset: 0x31D8
	Size: 0x27F
	Parameters: 6
	Flags: None
*/
function function_a700a8ea(var_a9ea049a, var_5e953b6, var_c3e600e3, var_c4a1b346, var_aa686173, var_53af6159)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	level endon(var_aa686173);
	var_f2475306 = [];
	var_da1cc39e = function_99201f25(var_a9ea049a, var_5e953b6);
	if(!isdefined(var_c3e600e3))
	{
		var_c3e600e3 = var_da1cc39e.size;
	}
	var_c4a1b346 thread function_1321e32f(var_aa686173);
	while(1)
	{
		var_da1cc39e = namespace_84970cc4::function_8332f7f6(var_da1cc39e);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_c3e600e3; var_c957f6b6++)
		{
			var_e578579f = var_da1cc39e[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
			wait(0.05);
			if(function_5b49d38c(var_e578579f))
			{
				if(function_e70ab977(var_e578579f))
				{
					if(!isdefined(var_f2475306))
					{
						var_f2475306 = [];
					}
					else if(!function_6e2770d8(var_f2475306))
					{
						var_f2475306 = function_84970cc4(var_f2475306);
					}
					var_f2475306[var_f2475306.size] = var_e578579f;
					var_e578579f namespace_d84e54db::function_b4f5e3b9(1);
					var_e578579f.var_7dfaf62 = 8;
					continue;
				}
				if(function_85e4c3b3(var_e578579f))
				{
					var_fe0af0a5 = function_243bb261(var_e578579f.var_b07228b6, "targetname");
					var_e578579f thread namespace_96fa87af::function_edb3a94e(var_fe0af0a5);
				}
			}
		}
		namespace_84970cc4::function_1ab5ebec(var_f2475306, "death", var_53af6159);
	}
}

/*
	Name: function_1321e32f
	Namespace: namespace_391e4301
	Checksum: 0x7375BC4D
	Offset: 0x3460
	Size: 0xC7
	Parameters: 1
	Flags: None
*/
function function_1321e32f(var_aa686173)
{
	level endon(var_aa686173);
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_e578579f);
		if(isdefined(var_e578579f))
		{
			if(function_e70ab977(var_e578579f))
			{
				var_e578579f function_dc8c8404();
			}
			else
			{
				var_e578579f.var_3e3a41eb = 1;
				var_e578579f notify("hash_128f8789");
				if(!function_5b49d38c(var_e578579f))
				{
					var_e578579f function_dc8c8404();
				}
			}
		}
	}
}

/*
	Name: function_e7fdcb95
	Namespace: namespace_391e4301
	Checksum: 0x64B712F2
	Offset: 0x3530
	Size: 0x1F3
	Parameters: 10
	Flags: None
*/
function function_e7fdcb95(var_2c34daa1, var_6fc1c7c6, var_f67c8a8e, var_bf7b0d42, var_7b2612a, var_a20f0ddd, var_71637749, var_4cfaa23a, var_381b2f34, var_42e6f5b4)
{
	if(!isdefined(var_bf7b0d42))
	{
		var_bf7b0d42 = 0;
	}
	if(!isdefined(var_7b2612a))
	{
		var_7b2612a = 0;
	}
	if(!isdefined(var_71637749))
	{
		var_71637749 = 0;
	}
	var_489b2980 = namespace_14b42b8a::function_7922262b(var_2c34daa1 + "_start").var_722885f3;
	var_491bc153 = namespace_14b42b8a::function_7922262b(var_2c34daa1 + "_end").var_722885f3;
	function_9b385ca5();
	var_a3decff = var_3bc9e3b7;
	function_e6cab0ff(var_a3decff, var_6fc1c7c6, var_489b2980, var_491bc153, var_f67c8a8e);
	if(isdefined(var_a20f0ddd))
	{
		level waittill(var_a20f0ddd);
	}
	wait(var_7b2612a);
	if(var_bf7b0d42 && var_a3decff.var_2a209035 == 0)
	{
		var_a3decff namespace_3bc9e3b7::function_da4b4a9();
	}
	if(var_71637749)
	{
		while(isdefined(var_a3decff) && var_a3decff.var_2a209035 == 0)
		{
			wait(0.25);
		}
		function_e0927f44(var_4cfaa23a, var_381b2f34, function_411dc61b(3, 1));
	}
}

/*
	Name: function_e0927f44
	Namespace: namespace_391e4301
	Checksum: 0x4C43E296
	Offset: 0x3730
	Size: 0x145
	Parameters: 4
	Flags: None
*/
function function_e0927f44(var_5e953b6, var_b8da2278, var_12cf56f6, var_f7da2b48)
{
	if(!isdefined(var_b8da2278))
	{
		var_b8da2278 = "targetname";
	}
	var_64e85e6d = function_99201f25(var_5e953b6, var_b8da2278);
	var_64e85e6d = namespace_84970cc4::function_8332f7f6(var_64e85e6d);
	var_a3784f7a = var_64e85e6d.size;
	if(isdefined(var_12cf56f6))
	{
		var_a3784f7a = var_12cf56f6;
	}
	if(isdefined(var_f7da2b48))
	{
		var_a3784f7a = function_dc99997a(var_f7da2b48, var_a3784f7a + 1);
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a3784f7a; var_c957f6b6++)
	{
		if(function_5b49d38c(var_64e85e6d[var_c957f6b6]))
		{
			var_64e85e6d[var_c957f6b6] namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
		}
	}
}

/*
	Name: function_cf956358
	Namespace: namespace_391e4301
	Checksum: 0xDFF7C6EA
	Offset: 0x3880
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function function_cf956358(var_4ac85f5f, var_86365a77)
{
	self namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	self thread [[var_86365a77]]();
}

/*
	Name: function_5ad47384
	Namespace: namespace_391e4301
	Checksum: 0x11ED109A
	Offset: 0x38C8
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_5ad47384()
{
	var_ea644274 = function_b8494651("allies");
	foreach(var_d84e54db in var_ea644274)
	{
		if(!function_7f41c8e7(level.var_6a876531, var_d84e54db))
		{
			var_d84e54db function_dc8c8404();
		}
	}
	var_9fc9c7b7 = function_b8494651("axis");
	foreach(var_d84e54db in var_9fc9c7b7)
	{
		var_d84e54db function_dc8c8404();
	}
}

/*
	Name: function_b0369bfa
	Namespace: namespace_391e4301
	Checksum: 0xA857947C
	Offset: 0x3A40
	Size: 0x10B
	Parameters: 6
	Flags: None
*/
function function_b0369bfa(var_4ac85f5f, var_294306eb, var_ee7dbbc9, var_506b336f, var_e21d36a, var_aa686173)
{
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0;
	}
	if(!isdefined(var_506b336f))
	{
		var_506b336f = 0;
	}
	if(isdefined(var_aa686173))
	{
		level endon(var_aa686173);
	}
	level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	wait(var_ee7dbbc9);
	level thread namespace_cc27597::function_43718187(var_294306eb, "targetname");
	if(var_506b336f > 0 || isdefined(var_e21d36a))
	{
		if(isdefined(var_e21d36a))
		{
			level namespace_ad23e503::function_1ab5ebec(var_e21d36a);
		}
		wait(var_506b336f);
		level namespace_cc27597::function_fcf56ab5(var_294306eb, "targetname", 1);
	}
}

/*
	Name: function_d0d2f172
	Namespace: namespace_391e4301
	Checksum: 0xD929F707
	Offset: 0x3B58
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_d0d2f172(var_294306eb, var_8b453fd2)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_294306eb), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_8b453fd2), "Dev Block strings are not supported");
	#/
	self waittill(var_8b453fd2);
	self namespace_cc27597::function_43718187(var_294306eb);
}

/*
	Name: function_4a1e5496
	Namespace: namespace_391e4301
	Checksum: 0x1EF69985
	Offset: 0x3BE8
	Size: 0xBB
	Parameters: 3
	Flags: None
*/
function function_4a1e5496(var_ccd2da90, var_294306eb, var_9c4565e)
{
	var_c8722225 = function_d8959c32(var_ccd2da90, var_9c4565e);
	/#
		namespace_33b293fd::function_a7ee953(var_c8722225.size, "Dev Block strings are not supported" + var_294306eb + "Dev Block strings are not supported" + var_9c4565e + "Dev Block strings are not supported");
	#/
	var_78962fff = var_c8722225[0];
	self thread namespace_cc27597::function_5c143f59(var_294306eb, undefined, undefined, var_78962fff);
}

/*
	Name: function_3bc57aa8
	Namespace: namespace_391e4301
	Checksum: 0xFADADABA
	Offset: 0x3CB0
	Size: 0xA3
	Parameters: 2
	Flags: None
*/
function function_3bc57aa8(var_c77d2837, var_864a3d55)
{
	if(!isdefined(var_864a3d55))
	{
		var_864a3d55 = 1;
	}
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db function_cea50a94(var_864a3d55);
	}
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 function_cea50a94(var_864a3d55);
	}
	if(isdefined(level.var_7a9855f3))
	{
		level.var_7a9855f3 function_cea50a94(var_864a3d55);
	}
}

/*
	Name: function_3f4f84e
	Namespace: namespace_391e4301
	Checksum: 0xCB4861A8
	Offset: 0x3D60
	Size: 0xF9
	Parameters: 3
	Flags: None
*/
function function_3f4f84e(var_5e953b6, var_64f5eece, var_864a3d55)
{
	if(!isdefined(var_64f5eece))
	{
		var_64f5eece = "targetname";
	}
	if(!isdefined(var_864a3d55))
	{
		var_864a3d55 = 1;
	}
	var_3af498bc = function_fe0cfd2e(var_5e953b6, var_64f5eece);
	foreach(var_22752fde in var_3af498bc)
	{
		function_d224409e(var_22752fde, var_864a3d55);
	}
}

/*
	Name: function_8bf0b925
	Namespace: namespace_391e4301
	Checksum: 0xB8804DDC
	Offset: 0x3E68
	Size: 0x161
	Parameters: 3
	Flags: None
*/
function function_8bf0b925(var_5e953b6, var_64f5eece, var_f139af58)
{
	if(!isdefined(var_f139af58))
	{
		var_f139af58 = 1;
	}
	var_541a5daf = function_fe0cfd2e(var_5e953b6, var_64f5eece);
	if(var_f139af58)
	{
		foreach(var_48b27c8f in var_541a5daf)
		{
			function_47d28a09(var_48b27c8f);
		}
		break;
	}
	foreach(var_48b27c8f in var_541a5daf)
	{
		function_9ab58e36(var_48b27c8f);
	}
}

/*
	Name: function_508a129e
	Namespace: namespace_391e4301
	Checksum: 0x9829A616
	Offset: 0x3FD8
	Size: 0x17B
	Parameters: 3
	Flags: None
*/
function function_508a129e(var_8b453fd2, var_78962fff, var_45778f27)
{
	if(!isdefined(var_45778f27))
	{
		var_45778f27 = 1;
	}
	self notify("hash_5a334c0f");
	self endon("hash_128f8789");
	self endon("hash_5a334c0f");
	level namespace_ad23e503::function_1ab5ebec("intro_igc_done");
	var_1b7b3a6 = function_c4d5ec1f("spike_launcher");
	while(self function_48c6a3a2() == var_1b7b3a6)
	{
		wait(0.2);
	}
	self namespace_82b91a51::function_32d40124(&"COOP_EQUIP_SPIKE_LAUNCHER", 0, var_8b453fd2, var_78962fff);
	while(var_45778f27 == 0)
	{
		self namespace_82b91a51::function_5b7e3888("wp_01_destroyed", "weapon_change_complete");
		if(self function_48c6a3a2() == var_1b7b3a6 || level namespace_ad23e503::function_7922262b("wp_01_destroyed"))
		{
			self notify(var_8b453fd2);
			var_45778f27 = 1;
		}
		else
		{
			wait(0.1);
		}
	}
}

/*
	Name: function_4edf60f2
	Namespace: namespace_391e4301
	Checksum: 0x325D7E3E
	Offset: 0x4160
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_4edf60f2(var_205ff529)
{
	var_8ea4a872 = self function_21995b5a();
	foreach(var_75849218 in var_8ea4a872)
	{
		if(var_75849218 == var_205ff529)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_8806ea73
	Namespace: namespace_391e4301
	Checksum: 0x3244601F
	Offset: 0x4220
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_8806ea73(var_2ffd9881)
{
	return self function_48c6a3a2() == function_c4d5ec1f(var_2ffd9881);
}

/*
	Name: function_2de69092
	Namespace: namespace_391e4301
	Checksum: 0x9BEBB87E
	Offset: 0x4268
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_2de69092(var_6161e05a)
{
	/#
		self endon("hash_128f8789");
		var_6161e05a endon("hash_128f8789");
		while(1)
		{
			function_4e418837(var_6161e05a.var_722885f3, self.var_722885f3, (1, 0, 0), 0.1);
			namespace_f96f74aa::function_351b2d2a(self.var_722885f3, self.var_6ab6f4fd);
			wait(0.05);
		}
	#/
}

/*
	Name: function_fd1e50c8
	Namespace: namespace_391e4301
	Checksum: 0x14276ED6
	Offset: 0x4300
	Size: 0xEF
	Parameters: 3
	Flags: None
*/
function function_fd1e50c8(var_b07228b6, var_3eac426f, var_5b3dd4e)
{
	/#
		self endon("hash_128f8789");
		var_b07228b6 endon("hash_128f8789");
		var_3eac426f = GetTime() + var_3eac426f * 1000;
		while(GetTime() < var_3eac426f)
		{
			var_fc5c855b = self.var_722885f3;
			if(isdefined(var_5b3dd4e))
			{
				var_fc5c855b = self function_d48f2ab3(var_5b3dd4e);
			}
			function_4e418837(var_fc5c855b, var_b07228b6.var_722885f3, (1, 0, 0), 0.1);
			namespace_f96f74aa::function_351b2d2a(var_b07228b6.var_722885f3, var_b07228b6.var_6ab6f4fd);
			wait(0.05);
		}
	#/
}

/*
	Name: function_8a8944d6
	Namespace: namespace_391e4301
	Checksum: 0x7DE39CA
	Offset: 0x43F8
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_8a8944d6(var_133e9095)
{
	/#
		while(isdefined(var_133e9095) && isdefined(self))
		{
			function_4e418837(var_133e9095.var_722885f3, self.var_722885f3, (1, 0, 0), 0.1);
			namespace_f96f74aa::function_172e04fa(var_133e9095.var_722885f3, 16, (1, 0, 0), 0.5, 1);
			namespace_f96f74aa::function_351b2d2a(self.var_722885f3, self.var_6ab6f4fd);
			namespace_f96f74aa::function_351b2d2a(var_133e9095.var_722885f3, var_133e9095.var_6ab6f4fd);
			wait(0.05);
		}
	#/
}

/*
	Name: function_a0731cf9
	Namespace: namespace_391e4301
	Checksum: 0xE5947315
	Offset: 0x44D8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a0731cf9()
{
	namespace_80983c42::function_80983c42("exploder_flak_arena_defend");
	level namespace_ad23e503::function_1ab5ebec("flak_arena_defend_stop");
	namespace_80983c42::function_593e8a39("exploder_flak_arena_defend");
}

/*
	Name: function_1b048d07
	Namespace: namespace_391e4301
	Checksum: 0xA57F4A11
	Offset: 0x4538
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_1b048d07()
{
	namespace_80983c42::function_80983c42("exploder_flak_alley");
	level namespace_ad23e503::function_1ab5ebec("flak_alley_stop");
	namespace_80983c42::function_593e8a39("exploder_flak_alley");
}

/*
	Name: function_e950228a
	Namespace: namespace_391e4301
	Checksum: 0xB7F94867
	Offset: 0x4598
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_e950228a(var_c1e63f13)
{
	if(!isdefined(var_c1e63f13))
	{
		var_c1e63f13 = 1;
	}
	if(var_c1e63f13)
	{
		namespace_80983c42::function_80983c42("fx_exploder_station_ambient_pre_collapse");
	}
	else
	{
		namespace_80983c42::function_593e8a39("fx_exploder_station_ambient_pre_collapse");
	}
}

/*
	Name: function_39044e10
	Namespace: namespace_391e4301
	Checksum: 0x2F889AD
	Offset: 0x4608
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_39044e10()
{
	namespace_80983c42::function_80983c42("fx_exploder_turn_off_collapse");
	level namespace_ad23e503::function_1ab5ebec("sinkhole_charges_detonated");
	wait(1.5);
	namespace_80983c42::function_593e8a39("fx_exploder_turn_off_collapse");
}

/*
	Name: function_ff06e7ac
	Namespace: namespace_391e4301
	Checksum: 0xD4D92408
	Offset: 0x4670
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_ff06e7ac()
{
	namespace_82b91a51::function_76f13293();
	if(isdefined(level.var_dd326dcd))
	{
		switch(level.var_dd326dcd)
		{
			case 1:
			{
				self function_9c087de1();
				break;
			}
			case 2:
			{
				self function_c20af84a();
				break;
			}
			case 3:
			{
				self function_75734d29();
				break;
			}
		}
	}
}

/*
	Name: function_9c087de1
	Namespace: namespace_391e4301
	Checksum: 0x2FD4BDD9
	Offset: 0x4710
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9c087de1()
{
	level.var_dd326dcd = 1;
	self namespace_82b91a51::function_b85473ac(0);
	self function_8264a5e8(1);
}

/*
	Name: function_c20af84a
	Namespace: namespace_391e4301
	Checksum: 0x3A6A3939
	Offset: 0x4758
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c20af84a()
{
	level.var_dd326dcd = 2;
	self namespace_82b91a51::function_b85473ac(2);
	self function_8264a5e8(0);
}

/*
	Name: function_75734d29
	Namespace: namespace_391e4301
	Checksum: 0x1402E39F
	Offset: 0x47A8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_75734d29()
{
	level.var_dd326dcd = 3;
	self namespace_82b91a51::function_b85473ac(3);
	self function_8264a5e8(0);
}

/*
	Name: function_8264a5e8
	Namespace: namespace_391e4301
	Checksum: 0x5A9DBB57
	Offset: 0x47F8
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_8264a5e8(var_97b06487)
{
	if(self == level)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_8264a5e8(var_97b06487);
		}
	}
	else if(function_65f192a6(self))
	{
		self namespace_71e9cb84::function_e9c3870b("ramses_sun_color", var_97b06487);
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_7df1bd5b
	Namespace: namespace_391e4301
	Checksum: 0x3B4C6E9B
	Offset: 0x4900
	Size: 0x151
	Parameters: 3
	Flags: None
*/
function function_7df1bd5b(var_b22a2ac4, var_cc890dd4, var_db395c04)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b22a2ac4), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_cc890dd4), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_db395c04), "Dev Block strings are not supported");
	#/
	level endon(var_cc890dd4);
	var_c8d90fa3 = function_6ada35ba(var_b22a2ac4, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_c8d90fa3), "Dev Block strings are not supported" + var_b22a2ac4 + "Dev Block strings are not supported");
	#/
	while(1)
	{
		var_c8d90fa3 waittill("hash_4dbf3ae3", var_6bfe1586);
		if(isdefined(var_6bfe1586) && function_65f192a6(var_6bfe1586))
		{
			var_6bfe1586 [[var_db395c04]]();
		}
	}
}

/*
	Name: function_eabc6e2f
	Namespace: namespace_391e4301
	Checksum: 0x6C210439
	Offset: 0x4A60
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_eabc6e2f()
{
	level namespace_71e9cb84::function_74d6b22f("turn_on_rotating_fxanim_lights", 1);
	namespace_80983c42::function_80983c42("lgt_emergency");
	var_239ba8ce = function_99201f25("lgt_tent_probe", "script_noteworthy");
	foreach(var_a3d46ee4 in var_239ba8ce)
	{
		if(var_a3d46ee4.var_e6e9b8de == "reflection_probe")
		{
			var_a3d46ee4.var_722885f3 = var_a3d46ee4.var_722885f3 - VectorScale((0, 0, 1), 5000);
			continue;
		}
		var_a3d46ee4 function_dc8c8404();
	}
}

/*
	Name: function_b0ef4ae7
	Namespace: namespace_391e4301
	Checksum: 0x9E6ADAD0
	Offset: 0x4BA8
	Size: 0x263
	Parameters: 1
	Flags: None
*/
function function_b0ef4ae7(var_d5f66652)
{
	self endon("hash_128f8789");
	waittillframeend;
	var_72efcecb = function_c4d5ec1f("lmg_light");
	var_c0cba69a = function_9b7fda5e("trigger_radius", self.var_722885f3 + VectorScale((0, 0, 1), 24), 0, var_d5f66652.var_f8456b37, 128);
	var_c0cba69a.var_170527fb = "turret_pickup_trig";
	var_c0cba69a.var_ff1f6868 = "vtol_ride";
	var_c0cba69a function_1d5013fa();
	self thread function_a68414be(var_c0cba69a, var_72efcecb);
	while(1)
	{
		var_c0cba69a waittill("hash_4dbf3ae3", var_6bfe1586);
		if(function_5b49d38c(var_6bfe1586))
		{
			if(var_6bfe1586 function_60a57ce() && !var_6bfe1586 function_4edf60f2(var_72efcecb))
			{
				var_73a38d53 = self function_b4980289(0);
				if(isdefined(var_73a38d53))
				{
					if(var_73a38d53 == var_6bfe1586)
					{
						self function_16337f9e(var_6bfe1586, 0);
					}
					else
					{
						continue;
					}
				}
				var_6bfe1586 function_860a040a(var_72efcecb);
				var_6bfe1586 function_cb53a41e(var_72efcecb);
				level notify("hash_7f9d4af6");
				break;
			}
		}
	}
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
	var_c0cba69a function_dc8c8404();
}

/*
	Name: function_a68414be
	Namespace: namespace_391e4301
	Checksum: 0x701BA8DD
	Offset: 0x4E18
	Size: 0x177
	Parameters: 2
	Flags: None
*/
function function_a68414be(var_c0cba69a, var_72efcecb)
{
	var_c0cba69a endon("hash_128f8789");
	while(1)
	{
		var_c0cba69a waittill("hash_4dbf3ae3", var_6bfe1586);
		if(!function_5b49d38c(self))
		{
			return;
		}
		var_73a38d53 = self function_b4980289(0);
		if(isdefined(var_73a38d53) && var_73a38d53 != var_6bfe1586)
		{
			continue;
		}
		if(function_5b49d38c(var_6bfe1586) && !var_6bfe1586 function_4edf60f2(var_72efcecb))
		{
			var_916dc9fa = var_6bfe1586 function_2f6b6a4c("TurretTakeTutorial");
			while(isdefined(self) && !var_6bfe1586 namespace_564407fb::function_38a9aff8() && !var_6bfe1586 function_60a57ce() && var_6bfe1586 function_32fa5072(var_c0cba69a))
			{
				wait(0.05);
			}
			var_6bfe1586 function_2b74b70a(var_916dc9fa);
		}
	}
}

/*
	Name: function_60a57ce
	Namespace: namespace_391e4301
	Checksum: 0xFBCE6245
	Offset: 0x4F98
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_60a57ce()
{
	return self function_f645af0f();
}

/*
	Name: function_4e430da2
	Namespace: namespace_391e4301
	Checksum: 0xEA77D4E0
	Offset: 0x4FC0
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_4e430da2()
{
	return self function_d5ef124();
}

/*
	Name: function_10c41a9d
	Namespace: namespace_391e4301
	Checksum: 0x78F560E1
	Offset: 0x4FE8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_10c41a9d()
{
	var_72efcecb = function_c4d5ec1f("lmg_light");
	if(self function_2103ff4b(var_72efcecb))
	{
		self function_1f3745c0(var_72efcecb);
	}
}

/*
	Name: function_258b9bad
	Namespace: namespace_391e4301
	Checksum: 0x384737B3
	Offset: 0x5050
	Size: 0xCD
	Parameters: 3
	Flags: None
*/
function function_258b9bad(var_fcc15a0, var_1086d941, var_ed2ece1e)
{
	self endon("hash_128f8789");
	self.var_69dd5d62 = 1;
	namespace_82b91a51::function_958c7633(self);
	if(var_1086d941)
	{
		self thread function_968476a4(var_fcc15a0, var_ed2ece1e);
	}
	namespace_82b91a51::function_39b48811(level, var_fcc15a0, self, var_fcc15a0, self, "ram_kill_mb", self, "ccom_locked_on", self, "cybercom_action");
	namespace_82b91a51::function_4b741fdc(self);
	self.var_69dd5d62 = undefined;
}

/*
	Name: function_968476a4
	Namespace: namespace_391e4301
	Checksum: 0x3AEDFF5D
	Offset: 0x5128
	Size: 0xAB
	Parameters: 2
	Flags: None
*/
function function_968476a4(var_fcc15a0, var_ed2ece1e)
{
	self endon("hash_9b484394");
	self endon(var_fcc15a0);
	level endon(var_fcc15a0);
	while(1)
	{
		self waittill("hash_f9348fda", var_1e2af8c1, var_a0ad4f34);
		if(function_65f192a6(var_a0ad4f34))
		{
			if(isdefined(var_ed2ece1e))
			{
				level notify(var_ed2ece1e);
				wait(0.05);
				level notify(var_fcc15a0);
			}
			self notify(var_fcc15a0);
		}
	}
}

/*
	Name: function_f08afb37
	Namespace: namespace_391e4301
	Checksum: 0xF5E3D373
	Offset: 0x51E0
	Size: 0xD9
	Parameters: 2
	Flags: None
*/
function function_f08afb37(var_c1e63f13, var_eebad467)
{
	if(!isdefined(var_c1e63f13))
	{
		var_c1e63f13 = 1;
	}
	if(!isdefined(var_eebad467))
	{
		var_eebad467 = 0.1;
	}
	self endon("hash_128f8789");
	if(function_5b49d38c(self) && function_5cfb84bb(self))
	{
		if(var_c1e63f13)
		{
			self.var_2a48f7ab = var_eebad467;
			self.var_44a68a57 = &function_74e97bfe;
			self notify("hash_4ef4ba2d");
		}
		else
		{
			self.var_2a48f7ab = var_eebad467;
			self.var_44a68a57 = undefined;
			self notify("hash_cb188399");
		}
	}
}

/*
	Name: function_74e97bfe
	Namespace: namespace_391e4301
	Checksum: 0xAF661B4F
	Offset: 0x52C8
	Size: 0x10D
	Parameters: 12
	Flags: None
*/
function function_74e97bfe(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_2ffd9881, var_10e30246, var_a080d759, var_ffd2636b, var_269779a, var_a5cf2304, var_fe8d5ebb)
{
	if(function_65f192a6(var_677b3e78))
	{
		function_f08afb37(0);
		return var_74d0774f;
	}
	else if(var_394451d8 == "MOD_EXPLOSIVE" || var_394451d8 == "MOD_GRENADE" || var_394451d8 == "MOD_MELEE" || var_394451d8 == "MOD_MELEE_WEAPON_BUTT")
	{
		return var_74d0774f;
	}
	else
	{
		var_74d0774f = 1;
		self.var_3a90f16b = self.var_3a90f16b + 1;
		return var_74d0774f;
	}
}

/*
	Name: function_8afb19cc
	Namespace: namespace_391e4301
	Checksum: 0xF374424B
	Offset: 0x53E0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_8afb19cc(var_786e88b6, var_f10f51ff)
{
	level thread function_19e59ba2(var_786e88b6, var_f10f51ff);
	level thread function_fa89cc92(var_786e88b6, var_f10f51ff);
}

/*
	Name: function_19e59ba2
	Namespace: namespace_391e4301
	Checksum: 0xA8CA1AD3
	Offset: 0x5440
	Size: 0x131
	Parameters: 2
	Flags: None
*/
function function_19e59ba2(var_786e88b6, var_f10f51ff)
{
	do
	{
		wait(0.5);
		var_46c58ac8 = namespace_d5067552::function_423eae50(var_f10f51ff);
	}
	while(!(var_46c58ac8.size > 0 || namespace_d5067552::function_56a7483f(var_f10f51ff)));
	var_18c1d967 = namespace_d5067552::function_423eae50(var_786e88b6);
	foreach(var_6104a93b in var_18c1d967)
	{
		var_6104a93b function_fb5720f7();
		var_6104a93b namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	}
}

/*
	Name: function_fa89cc92
	Namespace: namespace_391e4301
	Checksum: 0xAC0B7E50
	Offset: 0x5580
	Size: 0x109
	Parameters: 2
	Flags: None
*/
function function_fa89cc92(var_786e88b6, var_f10f51ff)
{
	do
	{
		wait(0.5);
		var_18c1d967 = namespace_d5067552::function_423eae50(var_786e88b6);
	}
	while(!(var_18c1d967.size > 0 || namespace_d5067552::function_56a7483f(var_786e88b6)));
	var_46c58ac8 = namespace_d5067552::function_423eae50(var_f10f51ff);
	foreach(var_fbc8888 in var_46c58ac8)
	{
		var_fbc8888.var_7dfaf62 = 1024;
	}
}

/*
	Name: function_24b86d60
	Namespace: namespace_391e4301
	Checksum: 0xE072E5CA
	Offset: 0x5698
	Size: 0x9DB
	Parameters: 7
	Flags: None
*/
function function_24b86d60(var_74b98fad, var_aa686173, var_7fdaec71, var_ed52cacf, var_cf8b7bc3, var_5276bdcd, var_d04843e1)
{
	if(!isdefined(var_cf8b7bc3))
	{
		var_cf8b7bc3 = 0;
	}
	if(!isdefined(var_5276bdcd))
	{
		var_5276bdcd = 1;
	}
	if(!isdefined(var_d04843e1))
	{
		var_d04843e1 = 20;
	}
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_74b98fad), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_7fdaec71), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_ed52cacf), "Dev Block strings are not supported");
	#/
	self endon(var_aa686173);
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self thread function_1fc93399(var_aa686173);
	if(!function_6e2770d8(var_74b98fad))
	{
		var_2328c0bb = function_84970cc4(var_74b98fad);
	}
	else
	{
		var_2328c0bb = var_74b98fad;
	}
	var_6987b601 = function_36bdd3e9(var_2328c0bb);
	var_1d4e9637 = 1;
	var_187c2c0a = 1;
	var_ce2a583d = 0;
	var_6996430b = namespace_d73b9283::function_e4ef4645(var_d04843e1, 0, 190, 0, 1);
	var_c0a77ece = function_87ea89a(self.var_722885f3, function_36bdd3e9(var_2328c0bb));
	var_42d1f660 = 1;
	var_d1c1929b = 0;
	var_3e7026da = 0;
	var_b054adb3 = 0;
	var_857f3b54 = 0;
	var_36d81334 = 0;
	if(isdefined(self.var_1e462286))
	{
		var_42d1f660 = 0;
		var_1d4e9637 = self.var_1e462286;
		self function_5a7dd25d(self.var_1e462286);
	}
	if(isdefined(self.var_622d06be))
	{
		var_ce2a583d = self.var_622d06be;
	}
	while(1)
	{
		var_856fe6c6 = function_36bdd3e9(var_2328c0bb);
		var_e730dd94 = function_7d15e2f8(var_6987b601, var_856fe6c6);
		var_6987b601 = var_856fe6c6;
		var_8b261109 = var_e730dd94 * 20;
		if(var_2328c0bb.size > 1)
		{
			var_8aab3fca = function_41f575c3(var_2328c0bb);
			function_6c668988(var_8aab3fca, 0, 0);
			var_5db32273 = var_2328c0bb[0].var_722885f3 - function_36bdd3e9(var_8aab3fca);
		}
		else
		{
			var_5db32273 = function_bc7ce905((0, var_2328c0bb[0].var_6ab6f4fd[1], 0));
		}
		var_72457775 = function_bc7ce905(self.var_6ab6f4fd);
		var_b054adb3 = var_3e7026da;
		var_3e7026da = 0;
		foreach(var_aa10fce8 in var_2328c0bb)
		{
			var_e71cd44d = function_87ea89a(self.var_722885f3, var_aa10fce8.var_722885f3);
			var_671d9784 = function_5f9a4869(function_f679a325(var_5db32273), function_f679a325(self.var_722885f3 - var_aa10fce8.var_722885f3));
			if(var_e71cd44d <= 24 && var_671d9784 <= -0.25)
			{
				var_3e7026da = 1;
				continue;
			}
			if(var_e71cd44d <= 32 && var_671d9784 <= -0.5)
			{
				var_3e7026da = 1;
				continue;
			}
			if(var_e71cd44d <= 40 && var_671d9784 <= -0.75)
			{
				var_3e7026da = 1;
			}
		}
		if(var_1d4e9637 <= var_6996430b && !var_3e7026da)
		{
			var_857f3b54++;
			if(var_857f3b54 > 10)
			{
				var_36d81334 = 1;
			}
		}
		else
		{
			var_857f3b54 = 0;
		}
		var_8c034a31 = function_87ea89a(self.var_722885f3, var_856fe6c6);
		if(!var_36d81334 && function_69c2f683(var_8c034a31 - var_c0a77ece) < 12 && (!var_3e7026da || var_b054adb3))
		{
			wait(0.05);
			continue;
		}
		var_c0a77ece = var_8c034a31;
		var_16d9beb6 = function_5f9a4869(function_f679a325(var_5db32273), self.var_722885f3 - var_2328c0bb[0].var_722885f3);
		if(var_16d9beb6 <= 0)
		{
			var_d3fe8f49 = namespace_d73b9283::function_e4ef4645(var_8b261109, var_d04843e1, 190, 0, 1);
			var_ce2a583d = function_69c2f683(var_856fe6c6[2] - self.var_722885f3[2]);
			self.var_622d06be = var_ce2a583d;
			if(var_8c034a31 > var_ed52cacf || var_ce2a583d > 160)
			{
				var_187c2c0a = 1;
			}
			else if(var_8c034a31 <= var_7fdaec71)
			{
				var_187c2c0a = var_d3fe8f49;
			}
			else
			{
				var_38d4ae07 = namespace_d73b9283::function_e4ef4645(var_8c034a31, var_7fdaec71, var_ed52cacf, 0.5, 1);
				var_187c2c0a = var_38d4ae07;
			}
			if(var_187c2c0a < var_6996430b)
			{
				var_187c2c0a = var_6996430b;
			}
			if(var_3e7026da)
			{
				var_d1c1929b++;
				var_187c2c0a = var_6996430b - 0.05 * var_d1c1929b;
				if(var_187c2c0a < 0.05)
				{
					var_187c2c0a = 0.05;
				}
			}
			else if(var_d1c1929b > 0)
			{
				var_d1c1929b = 0;
			}
		}
		else if(var_ce2a583d <= 160)
		{
			var_187c2c0a = var_6996430b;
		}
		if(!var_42d1f660)
		{
			if(function_69c2f683(var_187c2c0a - var_1d4e9637) < 0.1)
			{
				var_187c2c0a = var_1d4e9637;
			}
			else if(var_1d4e9637 > var_187c2c0a + 0.1)
			{
				var_187c2c0a = var_1d4e9637 - 0.1;
			}
			else if(var_1d4e9637 < var_187c2c0a - 0.1 && var_ce2a583d <= 100)
			{
				var_187c2c0a = var_1d4e9637 + 0.1;
			}
		}
		var_36d81334 = 0;
		var_42d1f660 = 0;
		var_1d4e9637 = var_187c2c0a;
		self function_5a7dd25d(var_187c2c0a);
		self.var_1e462286 = var_187c2c0a;
		wait(0.05);
	}
}

/*
	Name: function_36bdd3e9
	Namespace: namespace_391e4301
	Checksum: 0x8A8857E6
	Offset: 0x6080
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_36bdd3e9(var_c77d2837)
{
	var_4ce0e4b7 = (0, 0, 0);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_4ce0e4b7 = var_4ce0e4b7 + var_a3d46ee4.var_722885f3;
	}
	return var_4ce0e4b7 / var_c77d2837.size;
}

/*
	Name: function_1fc93399
	Namespace: namespace_391e4301
	Checksum: 0x4021196F
	Offset: 0x6138
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_1fc93399(var_aa686173)
{
	level waittill(var_aa686173, var_8cf5cf65);
	if(!isdefined(var_8cf5cf65))
	{
		var_8cf5cf65 = 1;
	}
	if(isdefined(var_8cf5cf65) && var_8cf5cf65)
	{
		self function_5a7dd25d(1);
		self.var_1e462286 = 1;
	}
}

/*
	Name: function_47e62fcf
	Namespace: namespace_391e4301
	Checksum: 0xF2C277C4
	Offset: 0x61B8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_47e62fcf(var_c77d2837)
{
	var_db11938d = 5;
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(isdefined(var_a3d46ee4.var_6df9264))
		{
			function_acb4609c(var_a3d46ee4.var_6df9264, var_db11938d);
		}
	}
	if(isdefined(self.var_f25b564e[0].var_4ee3465b.var_3ed29a0a))
	{
		namespace_cc27597::function_8f9f34e0(self.var_f25b564e[0].var_4ee3465b.var_3ed29a0a, &function_47e62fcf, "play");
	}
}

/*
	Name: function_a9b807cc
	Namespace: namespace_391e4301
	Checksum: 0x13526F6A
	Offset: 0x62E8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a9b807cc(var_db11938d)
{
	if(!isdefined(var_db11938d))
	{
		var_db11938d = 5;
	}
	function_acb4609c("c_hro_player_male_egypt_viewbody", var_db11938d);
}

/*
	Name: function_ac2b4535
	Namespace: namespace_391e4301
	Checksum: 0xE78D9B52
	Offset: 0x6330
	Size: 0xAB
	Parameters: 2
	Flags: None
*/
function function_ac2b4535(var_294306eb, var_54f8120e)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_294306eb), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_54f8120e), "Dev Block strings are not supported");
	#/
	namespace_cc27597::function_8f9f34e0(var_294306eb, &function_96861272, "players_done");
	level thread function_cb1e4146(var_294306eb, var_54f8120e);
}

/*
	Name: function_96861272
	Namespace: namespace_391e4301
	Checksum: 0x7D25CA9B
	Offset: 0x63E8
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_96861272(var_c77d2837)
{
	if(isdefined(self.var_f25b564e[0]) && isdefined(self.var_f25b564e[0].var_dbe9704b))
	{
		level notify(self.var_f25b564e[0].var_dbe9704b + "_level_done");
	}
	else
	{
		level notify(self.var_1157a889 + "_level_done");
	}
}

/*
	Name: function_cb1e4146
	Namespace: namespace_391e4301
	Checksum: 0x979032B4
	Offset: 0x6468
	Size: 0x151
	Parameters: 2
	Flags: None
*/
function function_cb1e4146(var_294306eb, var_54f8120e)
{
	level waittill(var_294306eb + "_level_done");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_8c8e79fe();
	}
	namespace_82b91a51::function_93831e79(var_54f8120e);
	wait(0.5);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_48f26766();
	}
}

/*
	Name: function_7255e66
	Namespace: namespace_391e4301
	Checksum: 0x24E1A1DA
	Offset: 0x65C8
	Size: 0x1A1
	Parameters: 2
	Flags: None
*/
function function_7255e66(var_864a3d55, var_ca894d1c)
{
	if(!isdefined(var_864a3d55))
	{
		var_864a3d55 = 1;
	}
	var_335c4513 = function_99201f25("mobile_armory", "script_noteworthy");
	foreach(var_a9960583 in var_335c4513)
	{
		if(isdefined(var_a9960583.var_e119970e) && (var_a9960583.var_db7bb468 === var_ca894d1c || !isdefined(var_ca894d1c)))
		{
			if(!var_864a3d55)
			{
				var_a9960583 namespace_16f9ecd3::function_a2477bbb();
				var_a9960583 namespace_16f9ecd3::function_14ec2d71();
				var_a9960583.var_e119970e namespace_a230c2b1::function_e54c54c3();
				continue;
			}
			var_a9960583.var_e119970e namespace_a230c2b1::function_ed0abeee();
			var_a9960583 namespace_16f9ecd3::function_b3ce91e0();
			var_a9960583 namespace_16f9ecd3::function_e228c18a();
		}
	}
}

/*
	Name: function_f2f98cfc
	Namespace: namespace_391e4301
	Checksum: 0x7C418D3A
	Offset: 0x6778
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_f2f98cfc()
{
	var_3354e659 = function_6ada35ba("hotel_gate", "targetname");
	var_3354e659 function_8c8e79fe();
	var_3354e659 function_422037f5();
	function_bab1ff00("hotel", 1);
}

/*
	Name: function_1aeb2873
	Namespace: namespace_391e4301
	Checksum: 0x5080134
	Offset: 0x6800
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_1aeb2873()
{
	function_6ada35ba("defend_street_gate", "targetname") function_dc8c8404();
	function_bab1ff00("defend_street", 1);
}

/*
	Name: function_fb967724
	Namespace: namespace_391e4301
	Checksum: 0x427852B
	Offset: 0x6860
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_fb967724()
{
	function_6ada35ba("hotel_gate", "targetname") function_48f26766();
	function_bab1ff00("hotel", 0);
}


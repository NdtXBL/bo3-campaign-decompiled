#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\callbacks_shared;
#using scripts\shared\util_shared;

#namespace namespace_38256252;

/*
	Name: function_4d39a2af
	Namespace: namespace_38256252
	Checksum: 0xD57AA127
	Offset: 0x508
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_4d39a2af()
{
	namespace_fe079222::function_50f16166("MISSION_RAMSES_UNTOUCHED");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_SCORE");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_COLLECTIBLE");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE3", "wasp_melee_kill");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE4", "raps_hijack_kill");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE5", "jumping_kill");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE6", "robot_quick_kills");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE7", "raps_midair_kill");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE8", "spike_launcher_impale");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE9", "spike_launcher_explosion");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE10", "billboard_kill");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE11", "spike_launcher_impale_long_range");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE12", "wasp_hijack_kill");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE13", "alley_enemies_killed");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE14", "alley_wallrun_kills");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE15", "alley_wallrun_melee_kill");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE16", "quad_tank_slide");
	namespace_fe079222::function_50f16166("MISSION_RAMSES_CHALLENGE17", "remote_hijack_variety_kills");
}

/*
	Name: function_c27610f9
	Namespace: namespace_38256252
	Checksum: 0x7F0EDEA
	Offset: 0x740
	Size: 0xD5
	Parameters: 2
	Flags: None
*/
function function_c27610f9(var_8e087689, var_70b01bd3)
{
	if(self == level)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a notify(var_8e087689);
		}
	}
	else if(function_65f192a6(self))
	{
		self notify(var_8e087689);
	}
	if(isdefined(var_70b01bd3))
	{
		[[var_70b01bd3]]();
	}
}

/*
	Name: function_43898266
	Namespace: namespace_38256252
	Checksum: 0xF1976003
	Offset: 0x820
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_43898266()
{
	namespace_dabbe128::function_5cf145c9(&function_4e9ab343);
}

/*
	Name: function_15009df0
	Namespace: namespace_38256252
	Checksum: 0x7D5B87F9
	Offset: 0x850
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_15009df0()
{
	namespace_dabbe128::function_9fcef20a(&function_4e9ab343);
}

/*
	Name: function_4e9ab343
	Namespace: namespace_38256252
	Checksum: 0xB2C87C2F
	Offset: 0x880
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_4e9ab343(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && (var_a8563e07.var_ba36487d === "MOD_MELEE" || var_a8563e07.var_ba36487d === "MOD_MELEE_ASSASSINATE" || var_a8563e07.var_ba36487d === "MOD_MELEE_WEAPON_BUTT"))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(self.var_8fc0e50e === "wasp")
		{
			var_5dc5e20a function_c27610f9("wasp_melee_kill");
		}
	}
}

/*
	Name: function_e1862c87
	Namespace: namespace_38256252
	Checksum: 0xC3AF146A
	Offset: 0x958
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e1862c87()
{
	namespace_dabbe128::function_de1a6d25(&function_53a23004);
}

/*
	Name: function_a3c86b3d
	Namespace: namespace_38256252
	Checksum: 0xA1E80BAF
	Offset: 0x988
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a3c86b3d()
{
	namespace_dabbe128::function_fad550c4(&function_53a23004);
}

/*
	Name: function_53a23004
	Namespace: namespace_38256252
	Checksum: 0x6C264579
	Offset: 0x9B8
	Size: 0x341
	Parameters: 1
	Flags: None
*/
function function_53a23004(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(!isdefined(var_5dc5e20a.var_23c05f0a))
		{
			var_5dc5e20a.var_23c05f0a = 0;
		}
		if(isdefined(var_5dc5e20a.var_a03af093) && isdefined(var_5dc5e20a.var_a03af093.var_8fc0e50e))
		{
			if(var_5dc5e20a.var_a03af093.var_8fc0e50e === "raps")
			{
				if(var_5dc5e20a.var_23c05f0a == 0)
				{
					var_5dc5e20a thread function_aac5b080();
				}
				var_5dc5e20a.var_23c05f0a++;
				if(var_5dc5e20a.var_23c05f0a >= 2)
				{
					if(self.var_8fc0e50e === "raps" && self !== var_5dc5e20a.var_a03af093)
					{
						var_5dc5e20a function_c27610f9("raps_hijack_kill");
					}
				}
			}
		}
		break;
	}
	if(self.var_8fc0e50e === "raps" && var_a8563e07.var_3a212fd7 === self)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(!isdefined(var_5dc5e20a.var_23c05f0a))
			{
				var_5dc5e20a.var_23c05f0a = 0;
			}
			if(isdefined(var_5dc5e20a.var_a03af093))
			{
				if(var_5dc5e20a.var_a03af093.var_8fc0e50e === "raps")
				{
					if(self !== var_5dc5e20a.var_a03af093)
					{
						if(var_5dc5e20a.var_23c05f0a >= 2)
						{
							var_a6b1619d = function_73b84f4d(var_5dc5e20a.var_a03af093 function_1439c75a());
							if(var_a6b1619d >= 50)
							{
								var_6e4dffe8 = function_cb3d1c9b(self.var_722885f3, var_5dc5e20a.var_a03af093.var_722885f3);
								if(var_6e4dffe8 < 14400)
								{
									var_5dc5e20a function_c27610f9("raps_hijack_kill");
								}
							}
						}
					}
				}
			}
		}
	}
}

/*
	Name: function_aac5b080
	Namespace: namespace_38256252
	Checksum: 0x59C06630
	Offset: 0xD08
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_aac5b080()
{
	self namespace_82b91a51::function_5b7e3888("return_to_body", "death");
	self.var_23c05f0a = 0;
}

/*
	Name: function_6f52c808
	Namespace: namespace_38256252
	Checksum: 0xA31BA1AB
	Offset: 0xD48
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6f52c808()
{
	namespace_dabbe128::function_de1a6d25(&function_91236111);
}

/*
	Name: function_b13b2dae
	Namespace: namespace_38256252
	Checksum: 0xE90C999E
	Offset: 0xD78
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b13b2dae()
{
	namespace_dabbe128::function_fad550c4(&function_91236111);
}

/*
	Name: function_91236111
	Namespace: namespace_38256252
	Checksum: 0x8F9BC035
	Offset: 0xDA8
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_91236111(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(!var_5dc5e20a function_8029a253())
		{
			var_5dc5e20a function_c27610f9("jumping_kill");
		}
	}
}

/*
	Name: function_7f657f7a
	Namespace: namespace_38256252
	Checksum: 0xF65123A
	Offset: 0xE30
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_7f657f7a()
{
	namespace_dabbe128::function_6aceae7c(&function_2026df43);
}

/*
	Name: function_ed5f8c84
	Namespace: namespace_38256252
	Checksum: 0x83BCB8FA
	Offset: 0xE60
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_ed5f8c84()
{
	namespace_dabbe128::function_a09757b3(&function_2026df43);
}

/*
	Name: function_2026df43
	Namespace: namespace_38256252
	Checksum: 0x614D202C
	Offset: 0xE90
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_2026df43(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(!isdefined(var_5dc5e20a.var_b6086ab2))
		{
			var_5dc5e20a.var_b6086ab2 = 0;
		}
		if(self.var_8fc0e50e === "robot")
		{
			if(var_5dc5e20a.var_b6086ab2 == 0)
			{
				var_5dc5e20a.var_e0006b82 = namespace_82b91a51::function_8c4f4e93(1);
				var_5dc5e20a.var_b6086ab2++;
			}
			else
			{
				var_5dc5e20a.var_b6086ab2++;
				if(var_5dc5e20a.var_b6086ab2 >= 5 && var_5dc5e20a.var_e0006b82 namespace_82b91a51::function_abc2cfcf() > 0)
				{
					var_5dc5e20a function_c27610f9("robot_quick_kills");
				}
				else if(var_5dc5e20a.var_e0006b82 namespace_82b91a51::function_abc2cfcf() <= 0)
				{
					var_5dc5e20a.var_b6086ab2 = 0;
				}
			}
		}
	}
}

/*
	Name: function_fec73937
	Namespace: namespace_38256252
	Checksum: 0xDAEF6AA3
	Offset: 0x1010
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_fec73937()
{
	namespace_dabbe128::function_5cf145c9(&function_19efc118);
}

/*
	Name: function_6d6e6d0d
	Namespace: namespace_38256252
	Checksum: 0x9D45EA21
	Offset: 0x1040
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6d6e6d0d()
{
	namespace_dabbe128::function_9fcef20a(&function_19efc118);
}

/*
	Name: function_19efc118
	Namespace: namespace_38256252
	Checksum: 0x9B57E2F4
	Offset: 0x1070
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_19efc118(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		var_9efe0ed = 0;
		var_a52faa04 = function_fafcd7f7(self.var_722885f3 + (0, 0, self.var_f8456b37 * 2), self.var_722885f3 - VectorScale((0, 0, 1), 500), VectorScale((-1, -1, -1), 10), VectorScale((1, 1, 1), 10), self, 2);
		if(self.var_722885f3[2] - var_a52faa04["position"][2] > 8)
		{
			var_9efe0ed = 1;
		}
		if(self.var_8fc0e50e === "raps" && (isdefined(self.var_4f749468) && self.var_4f749468 || var_9efe0ed))
		{
			var_5dc5e20a function_c27610f9("raps_midair_kill");
		}
	}
}

/*
	Name: function_bb0dee49
	Namespace: namespace_38256252
	Checksum: 0x88CC29CE
	Offset: 0x11C8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_bb0dee49()
{
	namespace_dabbe128::function_6aceae7c(&function_b9641d15);
}

/*
	Name: function_4df6d923
	Namespace: namespace_38256252
	Checksum: 0x6EE2940A
	Offset: 0x11F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4df6d923()
{
	namespace_dabbe128::function_a09757b3(&function_b9641d15);
}

/*
	Name: function_b9641d15
	Namespace: namespace_38256252
	Checksum: 0x193A92DE
	Offset: 0x1228
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_b9641d15(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(!isdefined(var_5dc5e20a.var_433bafc6))
		{
			var_5dc5e20a.var_433bafc6 = 0;
		}
		if(isdefined(var_a8563e07.var_dfcc01fd))
		{
			if(var_a8563e07.var_dfcc01fd.var_4be20d44 === "spike_launcher" && var_a8563e07.var_ba36487d === "MOD_IMPACT")
			{
				level notify("hash_2de65b48");
				if(var_5dc5e20a.var_433bafc6 === 0)
				{
					var_a8563e07.var_51e6a548 thread function_940b7b45(var_5dc5e20a);
				}
				var_5dc5e20a.var_433bafc6++;
			}
			if(var_5dc5e20a.var_433bafc6 == 2)
			{
				var_5dc5e20a function_c27610f9("spike_launcher_impale");
			}
		}
	}
}

/*
	Name: function_940b7b45
	Namespace: namespace_38256252
	Checksum: 0x18C6C7B7
	Offset: 0x1380
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_940b7b45(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_128f8789");
	self waittill("hash_128f8789");
	var_5dc5e20a.var_433bafc6 = 0;
}

/*
	Name: function_69c025f8
	Namespace: namespace_38256252
	Checksum: 0x539B37DF
	Offset: 0x13C0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_69c025f8()
{
	namespace_dabbe128::function_de1a6d25(&function_d44c2ef0);
}

/*
	Name: function_eb593e7e
	Namespace: namespace_38256252
	Checksum: 0x3726959
	Offset: 0x13F0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_eb593e7e()
{
	namespace_dabbe128::function_fad550c4(&function_d44c2ef0);
}

/*
	Name: function_d44c2ef0
	Namespace: namespace_38256252
	Checksum: 0x93A34561
	Offset: 0x1420
	Size: 0x1C3
	Parameters: 1
	Flags: None
*/
function function_d44c2ef0(var_a8563e07)
{
	if(isdefined(var_a8563e07.var_dfcc01fd) && function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(!isdefined(var_5dc5e20a.var_310e9a7d))
		{
			var_5dc5e20a.var_310e9a7d = 0;
		}
		if(var_a8563e07.var_dfcc01fd.var_4be20d44 === "spike_charge" && (var_a8563e07.var_ba36487d === "MOD_EXPLOSIVE" || var_a8563e07.var_ba36487d === "MOD_EXPLOSIVE_SPLASH" || var_a8563e07.var_ba36487d === "MOD_GRENADE" || var_a8563e07.var_ba36487d === "MOD_GRENADE_SPLASH"))
		{
			if(var_5dc5e20a.var_310e9a7d === 0)
			{
				var_5dc5e20a thread function_d91eb48d();
			}
			var_5dc5e20a.var_310e9a7d++;
		}
		if(var_5dc5e20a.var_310e9a7d >= 7)
		{
			if(!(isdefined(var_5dc5e20a.var_20e5f2) && var_5dc5e20a.var_20e5f2))
			{
				var_5dc5e20a.var_20e5f2 = 1;
				var_5dc5e20a function_c27610f9("spike_launcher_explosion");
			}
		}
	}
}

/*
	Name: function_d91eb48d
	Namespace: namespace_38256252
	Checksum: 0x5E8AC71B
	Offset: 0x15F0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_d91eb48d()
{
	self endon("hash_128f8789");
	wait(1);
	self.var_310e9a7d = 0;
}

/*
	Name: function_5553172f
	Namespace: namespace_38256252
	Checksum: 0xA0C3EEE4
	Offset: 0x1618
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_5553172f()
{
	namespace_dabbe128::function_de1a6d25(&function_95b934b0);
}

/*
	Name: function_a64e00f5
	Namespace: namespace_38256252
	Checksum: 0x4447E780
	Offset: 0x1648
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a64e00f5()
{
	namespace_dabbe128::function_fad550c4(&function_95b934b0);
}

/*
	Name: function_95b934b0
	Namespace: namespace_38256252
	Checksum: 0xB7B179A8
	Offset: 0x1678
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_95b934b0(var_a8563e07)
{
	if(isdefined(var_a8563e07.var_51e6a548) && isdefined(var_a8563e07.var_51e6a548.var_170527fb))
	{
		if(var_a8563e07.var_51e6a548.var_170527fb === "arena_billboard" || var_a8563e07.var_51e6a548.var_170527fb === "arena_billboard_02")
		{
			level function_c27610f9("billboard_kill", &function_a64e00f5);
		}
	}
}

/*
	Name: function_cef37178
	Namespace: namespace_38256252
	Checksum: 0x1194ABC7
	Offset: 0x1730
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_cef37178()
{
	namespace_dabbe128::function_de1a6d25(&function_ab3dab38);
}

/*
	Name: function_508c89fe
	Namespace: namespace_38256252
	Checksum: 0xB73AC363
	Offset: 0x1760
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_508c89fe()
{
	namespace_dabbe128::function_fad550c4(&function_ab3dab38);
}

/*
	Name: function_ab3dab38
	Namespace: namespace_38256252
	Checksum: 0x53601C35
	Offset: 0x1790
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_ab3dab38(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(isdefined(var_a8563e07.var_dfcc01fd))
		{
			if(var_a8563e07.var_dfcc01fd.var_4be20d44 === "spike_launcher" && var_a8563e07.var_ba36487d === "MOD_IMPACT")
			{
				var_d3d59692 = function_cb3d1c9b(var_5dc5e20a.var_722885f3, self.var_722885f3);
				if(var_d3d59692 >= 1440000)
				{
					var_5dc5e20a function_c27610f9("spike_launcher_impale_long_range");
				}
			}
		}
	}
}

/*
	Name: function_8e872dc8
	Namespace: namespace_38256252
	Checksum: 0x4139819B
	Offset: 0x18A0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8e872dc8()
{
	namespace_dabbe128::function_de1a6d25(&function_86e525b5);
}

/*
	Name: function_d06f936e
	Namespace: namespace_38256252
	Checksum: 0xACBADB7D
	Offset: 0x18D0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d06f936e()
{
	namespace_dabbe128::function_fad550c4(&function_86e525b5);
}

/*
	Name: function_86e525b5
	Namespace: namespace_38256252
	Checksum: 0xC0437DDA
	Offset: 0x1900
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_86e525b5(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(isdefined(var_5dc5e20a.var_a03af093) && isdefined(var_5dc5e20a.var_a03af093.var_8fc0e50e))
		{
			if(var_5dc5e20a.var_a03af093.var_8fc0e50e === "wasp")
			{
				var_5dc5e20a function_c27610f9("wasp_hijack_kill");
			}
		}
	}
}

/*
	Name: function_17a34ad1
	Namespace: namespace_38256252
	Checksum: 0x61CA583A
	Offset: 0x19D0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_17a34ad1()
{
	level.var_c4bb3386 = 0;
	level.var_4c41e902 = 0;
	namespace_dabbe128::function_87f30e90(&function_3fa09dec);
	namespace_dabbe128::function_de1a6d25(&function_b5b577c9);
	level thread function_c0e39bcc();
}

/*
	Name: function_cee86b3b
	Namespace: namespace_38256252
	Checksum: 0xA13B0C2B
	Offset: 0x1A50
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_cee86b3b()
{
	namespace_dabbe128::function_3f5e6667(&function_3fa09dec);
	namespace_dabbe128::function_fad550c4(&function_b5b577c9);
}

/*
	Name: function_c0e39bcc
	Namespace: namespace_38256252
	Checksum: 0x5E77F425
	Offset: 0x1AA0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c0e39bcc()
{
	level waittill("hash_6f120ac6");
	if(level.var_c4bb3386 === level.var_4c41e902)
	{
		level function_c27610f9("alley_enemies_killed", &function_cee86b3b);
	}
}

/*
	Name: function_3fa09dec
	Namespace: namespace_38256252
	Checksum: 0xB68B009C
	Offset: 0x1AF8
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_3fa09dec()
{
	if(self function_e7353088() === "axis")
	{
		level.var_c4bb3386++;
	}
}

/*
	Name: function_b5b577c9
	Namespace: namespace_38256252
	Checksum: 0x852C14DD
	Offset: 0x1B30
	Size: 0x37
	Parameters: 1
	Flags: None
*/
function function_b5b577c9(var_a8563e07)
{
	if(self function_e7353088() === "axis")
	{
		level.var_4c41e902++;
	}
}

/*
	Name: function_3484502e
	Namespace: namespace_38256252
	Checksum: 0x4908952
	Offset: 0x1B70
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3484502e()
{
	namespace_dabbe128::function_de1a6d25(&function_507d47d2);
}

/*
	Name: function_59132ae8
	Namespace: namespace_38256252
	Checksum: 0x2332F9DC
	Offset: 0x1BA0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_59132ae8()
{
	namespace_dabbe128::function_fad550c4(&function_507d47d2);
}

/*
	Name: function_507d47d2
	Namespace: namespace_38256252
	Checksum: 0x42ECC842
	Offset: 0x1BD0
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_507d47d2(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(!isdefined(var_5dc5e20a.var_6f2cedd3))
		{
			var_5dc5e20a.var_6f2cedd3 = 0;
		}
		if(var_5dc5e20a function_ad7e8c32() && var_5dc5e20a.var_6f2cedd3 === 0)
		{
			var_5dc5e20a thread function_aad12c7();
			var_5dc5e20a.var_6f2cedd3++;
		}
		else if(var_5dc5e20a.var_6f2cedd3 > 0 && (var_5dc5e20a function_ad7e8c32() || !var_5dc5e20a function_8029a253()))
		{
			var_5dc5e20a.var_6f2cedd3++;
		}
		if(var_5dc5e20a.var_6f2cedd3 >= 3)
		{
			var_5dc5e20a function_c27610f9("alley_wallrun_kills");
		}
	}
}

/*
	Name: function_aad12c7
	Namespace: namespace_38256252
	Checksum: 0xCA5988FE
	Offset: 0x1D38
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_aad12c7()
{
	self endon("hash_128f8789");
	while(self function_ad7e8c32() || !self function_8029a253())
	{
		wait(0.05);
	}
	self.var_6f2cedd3 = 0;
}

/*
	Name: function_a17fa88e
	Namespace: namespace_38256252
	Checksum: 0x980F4767
	Offset: 0x1D98
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_a17fa88e()
{
	namespace_dabbe128::function_6aceae7c(&function_61c57bec);
	if(isdefined(level.var_2395e945))
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a thread function_caaf5ba9();
		}
	}
	namespace_dabbe128::function_356a4ee1(&function_fbc946b1);
}

/*
	Name: function_c60e8348
	Namespace: namespace_38256252
	Checksum: 0x68589692
	Offset: 0x1E80
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_c60e8348()
{
	namespace_dabbe128::function_a09757b3(&function_61c57bec);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a notify("hash_ca0391ab");
	}
	namespace_dabbe128::function_a0ac4434(&function_fbc946b1);
}

/*
	Name: function_61c57bec
	Namespace: namespace_38256252
	Checksum: 0x49C854E5
	Offset: 0x1F50
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_61c57bec(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(isdefined(var_5dc5e20a.var_56ffc45b))
		{
			if(var_5dc5e20a.var_56ffc45b && (var_a8563e07.var_ba36487d === "MOD_MELEE" || var_a8563e07.var_ba36487d === "MOD_MELEE_ASSASSINATE" || var_a8563e07.var_ba36487d === "MOD_MELEE_WEAPON_BUTT"))
			{
				var_5dc5e20a function_c27610f9("alley_wallrun_melee_kill");
			}
		}
	}
}

/*
	Name: function_fbc946b1
	Namespace: namespace_38256252
	Checksum: 0x4870DA34
	Offset: 0x2038
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fbc946b1()
{
	self thread function_caaf5ba9();
}

/*
	Name: function_caaf5ba9
	Namespace: namespace_38256252
	Checksum: 0x4ADE6CE2
	Offset: 0x2060
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_caaf5ba9()
{
	self endon("hash_128f8789");
	self endon("hash_ca0391ab");
	self.var_56ffc45b = 0;
	while(1)
	{
		while(!self function_ad7e8c32())
		{
			wait(0.05);
		}
		self.var_56ffc45b = 1;
		while(self function_ad7e8c32())
		{
			wait(0.05);
		}
		while(!self function_8029a253())
		{
			wait(0.05);
		}
		self.var_56ffc45b = 0;
	}
}

/*
	Name: function_f77ccfb1
	Namespace: namespace_38256252
	Checksum: 0xF7D90B4D
	Offset: 0x2128
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f77ccfb1()
{
	namespace_dabbe128::function_87f30e90(&function_1411fbaf);
}

/*
	Name: function_84fd481b
	Namespace: namespace_38256252
	Checksum: 0xEDEAB6BB
	Offset: 0x2158
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_84fd481b()
{
	namespace_dabbe128::function_3f5e6667(&function_1411fbaf);
}

/*
	Name: function_1411fbaf
	Namespace: namespace_38256252
	Checksum: 0xEC6373F
	Offset: 0x2188
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_1411fbaf()
{
	if(self.var_8fc0e50e === "quadtank")
	{
		self thread function_1dc324f4();
	}
}

/*
	Name: function_1dc324f4
	Namespace: namespace_38256252
	Checksum: 0x148A309F
	Offset: 0x21C0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_1dc324f4()
{
	self endon("hash_128f8789");
	self endon("hash_f71b1ef0");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_d3d59692 = function_316422d1(var_5dc5e20a.var_722885f3, self.var_722885f3);
			if(var_5dc5e20a function_5b77ca95() && var_d3d59692 <= 1600)
			{
				var_5dc5e20a function_c27610f9("quad_tank_slide");
				self notify("hash_f71b1ef0");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_359e6bb1
	Namespace: namespace_38256252
	Checksum: 0xE388F076
	Offset: 0x22F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_359e6bb1()
{
	namespace_dabbe128::function_de1a6d25(&function_fd243f30);
}

/*
	Name: function_c31ee41b
	Namespace: namespace_38256252
	Checksum: 0xCEECE741
	Offset: 0x2328
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c31ee41b()
{
	namespace_dabbe128::function_fad550c4(&function_fd243f30);
}

/*
	Name: function_fd243f30
	Namespace: namespace_38256252
	Checksum: 0x9C205855
	Offset: 0x2358
	Size: 0x213
	Parameters: 1
	Flags: None
*/
function function_fd243f30(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(!isdefined(var_5dc5e20a.var_4c1b77b6))
		{
			var_5dc5e20a.var_4c1b77b6 = 0;
		}
		if(!isdefined(var_5dc5e20a.var_a43dc1f))
		{
			var_5dc5e20a.var_a43dc1f = 0;
		}
		if(!isdefined(var_5dc5e20a.var_204359de))
		{
			var_5dc5e20a.var_204359de = 0;
		}
		if(!isdefined(var_5dc5e20a.var_218b552))
		{
			var_5dc5e20a.var_218b552 = 0;
		}
		if(isdefined(var_5dc5e20a.var_a03af093) && isdefined(var_5dc5e20a.var_a03af093.var_8fc0e50e))
		{
			switch(var_5dc5e20a.var_a03af093.var_8fc0e50e)
			{
				case "raps":
				{
					var_5dc5e20a.var_4c1b77b6 = 1;
					break;
				}
				case "wasp":
				{
					var_5dc5e20a.var_a43dc1f = 1;
					break;
				}
				case "amws":
				{
					var_5dc5e20a.var_204359de = 1;
					break;
				}
				case "quadtank":
				{
					var_5dc5e20a.var_218b552 = 1;
					break;
				}
				case default:
				{
					break;
				}
			}
			if(var_5dc5e20a.var_4c1b77b6 && var_5dc5e20a.var_a43dc1f && var_5dc5e20a.var_204359de && var_5dc5e20a.var_218b552)
			{
				var_5dc5e20a function_c27610f9("remote_hijack_variety_kills");
			}
		}
	}
}


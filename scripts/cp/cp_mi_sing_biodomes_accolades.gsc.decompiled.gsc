#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\callbacks_shared;
#using scripts\shared\spawner_shared;

#namespace namespace_769dc23f;

/*
	Name: function_4d39a2af
	Namespace: namespace_769dc23f
	Checksum: 0xF6925371
	Offset: 0x4B0
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_4d39a2af()
{
	level.var_57f2d2db = 0;
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE3", "grant_turret_kill_accolade");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE5", "grant_wasp_accolade");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE7", "accolade_nomiss_wasp_kills");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE8", "grenade_robot_groupkill");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE9", "siege_bot_smash");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE10", "stalactite_kill");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE11", "accolade_kill_all_server_zippers");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE12", "zipline_kill");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE13", "hunter_kill");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE14", "accolade_supertrees_cleared");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE15", "underwater_kill");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE16", "accolade_destroy_x_guard_towers");
	namespace_fe079222::function_50f16166("MISSION_BIODOMES_CHALLENGE17", "accolade_destroy_x_enemy_trucks");
	function_f7dd9b2c();
	function_e3f60acf();
	function_9ccc0413();
	function_968d885a();
	function_44126609();
	function_3f59ea45();
	function_e77dc7c0();
	function_bccd89ad();
}

/*
	Name: function_ed573577
	Namespace: namespace_769dc23f
	Checksum: 0x3AA7E9EB
	Offset: 0x6F0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_ed573577()
{
	function_c2b4b432();
	function_8b1e395();
	function_203ca39();
	function_befbcf64();
	function_d975b9e3();
	function_16509d1f();
	function_4b47f9f6();
	function_92955d5e();
}

/*
	Name: function_f7dd9b2c
	Namespace: namespace_769dc23f
	Checksum: 0x129015AC
	Offset: 0x780
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f7dd9b2c()
{
	namespace_dabbe128::function_356a4ee1(&function_1d06a38e);
	namespace_dabbe128::function_de1a6d25(&function_deda4654);
}

/*
	Name: function_1d06a38e
	Namespace: namespace_769dc23f
	Checksum: 0x43D01906
	Offset: 0x7D0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_1d06a38e()
{
	self.var_50ef9076 = 0;
}

/*
	Name: function_deda4654
	Namespace: namespace_769dc23f
	Checksum: 0xD1CFE865
	Offset: 0x7E8
	Size: 0xF7
	Parameters: 1
	Flags: None
*/
function function_deda4654(var_a8563e07)
{
	if(isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7) && isdefined(var_a8563e07.var_3a212fd7.var_a03af093) && var_a8563e07.var_3a212fd7.var_a03af093.var_8fc0e50e === "turret")
	{
		if(var_a8563e07.var_3a212fd7.var_a03af093 !== self && var_a8563e07.var_3a212fd7.var_50ef9076 < 8)
		{
			var_a8563e07.var_3a212fd7.var_50ef9076++;
			var_a8563e07.var_3a212fd7 notify("hash_e3795b02");
		}
	}
}

/*
	Name: function_c2b4b432
	Namespace: namespace_769dc23f
	Checksum: 0x5789A3CC
	Offset: 0x8E8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c2b4b432()
{
	namespace_dabbe128::function_fad550c4(&function_deda4654);
	namespace_dabbe128::function_a0ac4434(&function_1d06a38e);
}

/*
	Name: function_e3f60acf
	Namespace: namespace_769dc23f
	Checksum: 0xAA97B91B
	Offset: 0x938
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_e3f60acf()
{
	namespace_dabbe128::function_356a4ee1(&function_80cc63b);
	namespace_dabbe128::function_5cf145c9(&function_674f33f);
}

/*
	Name: function_80cc63b
	Namespace: namespace_769dc23f
	Checksum: 0x3C4F0F78
	Offset: 0x988
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_80cc63b()
{
	self.var_d7f97874 = 0;
	self.var_fd2e786f = 0;
}

/*
	Name: function_8b1e395
	Namespace: namespace_769dc23f
	Checksum: 0xFBACD403
	Offset: 0x9B0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_8b1e395()
{
	if(level.var_62b29d5a !== 1)
	{
		namespace_dabbe128::function_a0ac4434(&function_80cc63b);
		namespace_dabbe128::function_9fcef20a(&function_674f33f);
		level.var_62b29d5a = 1;
	}
}

/*
	Name: function_674f33f
	Namespace: namespace_769dc23f
	Checksum: 0x2EB20406
	Offset: 0xA18
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_674f33f(var_a8563e07)
{
	if(self.var_8fc0e50e === "wasp" && isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(var_a8563e07.var_3a212fd7.var_d7f97874 < 6)
		{
			if(var_a8563e07.var_3a212fd7.var_fd2e786f !== 1)
			{
				var_a8563e07.var_3a212fd7 thread function_3c326d55();
			}
			else
			{
				var_a8563e07.var_3a212fd7.var_d7f97874++;
				if(var_a8563e07.var_3a212fd7.var_d7f97874 === 6)
				{
					var_a8563e07.var_3a212fd7 notify("hash_bff7939a");
				}
			}
		}
	}
}

/*
	Name: function_3c326d55
	Namespace: namespace_769dc23f
	Checksum: 0x3E08F4D7
	Offset: 0xB30
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_3c326d55()
{
	if(self.var_fd2e786f != 1)
	{
		self.var_fd2e786f = 1;
		self.var_d7f97874 = 1;
		wait(2);
		self.var_fd2e786f = 0;
		self.var_d7f97874 = 0;
	}
}

/*
	Name: function_9ccc0413
	Namespace: namespace_769dc23f
	Checksum: 0xF34E6444
	Offset: 0xB88
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_9ccc0413()
{
	namespace_dabbe128::function_356a4ee1(&function_215224ef);
	namespace_dabbe128::function_7bb100ad(&function_d5374ce7);
	namespace_dabbe128::function_5cf145c9(&function_2506f279);
}

/*
	Name: function_203ca39
	Namespace: namespace_769dc23f
	Checksum: 0x73DEA869
	Offset: 0xBF8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_203ca39()
{
	namespace_dabbe128::function_a0ac4434(&function_215224ef);
	namespace_dabbe128::function_840ed4d4(&function_d5374ce7);
	namespace_dabbe128::function_9fcef20a(&function_2506f279);
}

/*
	Name: function_215224ef
	Namespace: namespace_769dc23f
	Checksum: 0x897D91F9
	Offset: 0xC68
	Size: 0x3D
	Parameters: 0
	Flags: None
*/
function function_215224ef()
{
	self.var_dd1a6664 = 0;
	self.var_399b086d = 0;
	self.var_6917783e = 0;
	self.var_be5f3952 = 0;
	self.var_f497e6fe = undefined;
}

/*
	Name: function_d5374ce7
	Namespace: namespace_769dc23f
	Checksum: 0x921D9902
	Offset: 0xCB0
	Size: 0x147
	Parameters: 1
	Flags: None
*/
function function_d5374ce7(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(var_a8563e07.var_3a212fd7.var_399b086d === 1 && function_7d503e87(var_a8563e07.var_ba36487d))
		{
			var_a8563e07.var_3a212fd7 function_afa04665(var_a8563e07.var_a5cf2304);
		}
		else if(self.var_8fc0e50e === "wasp")
		{
			var_a8563e07.var_3a212fd7.var_399b086d = 1;
			var_a8563e07.var_3a212fd7.var_6917783e = 1;
			var_a8563e07.var_3a212fd7.var_be5f3952 = 1;
			var_a8563e07.var_3a212fd7 thread function_62deee75();
		}
		var_a8563e07.var_3a212fd7.var_f497e6fe = var_a8563e07.var_a5cf2304;
	}
}

/*
	Name: function_62deee75
	Namespace: namespace_769dc23f
	Checksum: 0x83F07977
	Offset: 0xE00
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_62deee75()
{
	self endon("hash_32230ba9");
	while(isdefined(self.var_399b086d) && self.var_399b086d)
	{
		self waittill("hash_aa1618b0");
		self thread function_a1bcadc9();
	}
}

/*
	Name: function_a1bcadc9
	Namespace: namespace_769dc23f
	Checksum: 0xEED0BC5A
	Offset: 0xE58
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_a1bcadc9()
{
	wait(0.2);
	self.var_be5f3952++;
	if(self.var_be5f3952 > self.var_6917783e)
	{
		self.var_399b086d = 0;
		self.var_be5f3952 = 0;
		self.var_6917783e = 0;
		self.var_dd1a6664 = 0;
	}
}

/*
	Name: function_2506f279
	Namespace: namespace_769dc23f
	Checksum: 0x4CA66750
	Offset: 0xEB8
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_2506f279(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && (isdefined(var_a8563e07.var_3a212fd7.var_399b086d) && var_a8563e07.var_3a212fd7.var_399b086d) && self.var_8fc0e50e === "wasp")
	{
		var_a8563e07.var_3a212fd7.var_dd1a6664++;
		var_a8563e07.var_3a212fd7 function_afa04665(var_a8563e07.var_a5cf2304);
		if(var_a8563e07.var_3a212fd7.var_dd1a6664 === 3)
		{
			var_a8563e07.var_3a212fd7 function_fea6ae9f("accolade_nomiss_wasp_kills");
		}
	}
}

/*
	Name: function_afa04665
	Namespace: namespace_769dc23f
	Checksum: 0xAFB9E3CE
	Offset: 0xFD0
	Size: 0x2F
	Parameters: 1
	Flags: None
*/
function function_afa04665(var_d42b9169)
{
	if(self.var_f497e6fe !== var_d42b9169)
	{
		self.var_6917783e++;
		self.var_f497e6fe = var_d42b9169;
	}
}

/*
	Name: function_7d503e87
	Namespace: namespace_769dc23f
	Checksum: 0xAFBD3669
	Offset: 0x1008
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function function_7d503e87(var_ba4c7ff0)
{
	return var_ba4c7ff0 === "MOD_RIFLE_BULLET" || var_ba4c7ff0 === "MOD_PISTOL_BULLET";
}

/*
	Name: function_968d885a
	Namespace: namespace_769dc23f
	Checksum: 0x1F171DA3
	Offset: 0x1038
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_968d885a()
{
	namespace_dabbe128::function_356a4ee1(&function_f57769d0);
	namespace_dabbe128::function_6aceae7c(&function_4989deb7);
}

/*
	Name: function_f57769d0
	Namespace: namespace_769dc23f
	Checksum: 0x1B9CC846
	Offset: 0x1088
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f57769d0()
{
	self.var_545e4fb7 = 0;
	self.var_c152ffb6 = undefined;
	self.var_ce5a7d30 = 0;
}

/*
	Name: function_befbcf64
	Namespace: namespace_769dc23f
	Checksum: 0x3F86A17D
	Offset: 0x10B8
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_befbcf64()
{
	if(level.var_2b239a23 !== 1)
	{
		namespace_dabbe128::function_a0ac4434(&function_f57769d0);
		namespace_dabbe128::function_a09757b3(&function_4989deb7);
		level.var_2b239a23 = 1;
	}
}

/*
	Name: function_4989deb7
	Namespace: namespace_769dc23f
	Checksum: 0x4FBD5E3C
	Offset: 0x1120
	Size: 0x21F
	Parameters: 1
	Flags: None
*/
function function_4989deb7(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_8fc0e50e === "robot" && var_a8563e07.var_3a212fd7.var_ce5a7d30 === 0)
	{
		if(isdefined(var_a8563e07.var_dfcc01fd))
		{
			var_3b6449c5 = "";
			var_3b6449c5 = var_a8563e07.var_dfcc01fd.var_8c02d299.var_4be20d44;
			if(var_a8563e07.var_ba36487d === "MOD_GRENADE" || var_a8563e07.var_ba36487d === "MOD_GRENADE_SPLASH" || (var_3b6449c5 == "incendiary_grenade" && var_a8563e07.var_ba36487d == "MOD_BURNED") || (var_3b6449c5 == "bouncingbetty" && var_a8563e07.var_ba36487d == "MOD_EXPLOSIVE"))
			{
				if(var_a8563e07.var_51e6a548 !== var_a8563e07.var_3a212fd7.var_c152ffb6)
				{
					var_a8563e07.var_3a212fd7.var_545e4fb7 = 0;
					var_a8563e07.var_3a212fd7.var_c152ffb6 = var_a8563e07.var_51e6a548;
				}
				var_a8563e07.var_3a212fd7.var_545e4fb7++;
				if(var_a8563e07.var_3a212fd7.var_545e4fb7 == 3)
				{
					var_a8563e07.var_3a212fd7 function_fea6ae9f("grenade_robot_groupkill");
					var_a8563e07.var_3a212fd7.var_ce5a7d30 = 1;
				}
			}
		}
	}
}

/*
	Name: function_44126609
	Namespace: namespace_769dc23f
	Checksum: 0x13A5A421
	Offset: 0x1348
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_44126609()
{
	namespace_dabbe128::function_356a4ee1(&function_8a4f2851);
	namespace_dabbe128::function_6aceae7c(&function_9c292522);
}

/*
	Name: function_8a4f2851
	Namespace: namespace_769dc23f
	Checksum: 0xC9F7B53D
	Offset: 0x1398
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_8a4f2851()
{
	self.var_f62f9f5d = 0;
}

/*
	Name: function_d975b9e3
	Namespace: namespace_769dc23f
	Checksum: 0xEAC35DF6
	Offset: 0x13B0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_d975b9e3()
{
	if(level.var_43dd4669 !== 1)
	{
		namespace_dabbe128::function_a0ac4434(&function_8a4f2851);
		namespace_dabbe128::function_a09757b3(&function_9c292522);
		level.var_43dd4669 = 1;
	}
}

/*
	Name: function_9c292522
	Namespace: namespace_769dc23f
	Checksum: 0x91E8CEC
	Offset: 0x1418
	Size: 0xF7
	Parameters: 1
	Flags: None
*/
function function_9c292522(var_a8563e07)
{
	if(isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7) && isdefined(var_a8563e07.var_3a212fd7.var_a03af093) && var_a8563e07.var_3a212fd7.var_a03af093.var_8fc0e50e === "siegebot")
	{
		if(var_a8563e07.var_3a212fd7.var_a03af093 !== self && var_a8563e07.var_3a212fd7.var_f62f9f5d < 8)
		{
			var_a8563e07.var_3a212fd7.var_f62f9f5d++;
			var_a8563e07.var_3a212fd7 notify("hash_9c3e76f1");
		}
	}
}

/*
	Name: function_8ca89944
	Namespace: namespace_769dc23f
	Checksum: 0x7E898B63
	Offset: 0x1518
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8ca89944()
{
	function_17fe87c5("stalactite_kill");
}

/*
	Name: function_72f8596b
	Namespace: namespace_769dc23f
	Checksum: 0x8691D752
	Offset: 0x1540
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_72f8596b()
{
	if(level.var_2395e945.size > 2)
	{
		var_1e94bf2c = 10;
	}
	else
	{
		var_1e94bf2c = 6;
	}
	level.var_57f2d2db++;
	if(level.var_57f2d2db == var_1e94bf2c)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a notify("hash_c7302d58");
		}
	}
}

/*
	Name: function_3f59ea45
	Namespace: namespace_769dc23f
	Checksum: 0x4800FDDF
	Offset: 0x1618
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3f59ea45()
{
	namespace_dabbe128::function_de1a6d25(&function_eaf6eb1a);
}

/*
	Name: function_16509d1f
	Namespace: namespace_769dc23f
	Checksum: 0x81B957FA
	Offset: 0x1648
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_16509d1f()
{
	namespace_dabbe128::function_fad550c4(&function_eaf6eb1a);
}

/*
	Name: function_eaf6eb1a
	Namespace: namespace_769dc23f
	Checksum: 0x31418285
	Offset: 0x1678
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_eaf6eb1a(var_a8563e07)
{
	if(isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7) && var_a8563e07.var_3a212fd7.var_23304c9e === 1)
	{
		var_a8563e07.var_3a212fd7 namespace_fe079222::function_331efedc("MISSION_BIODOMES_CHALLENGE12");
	}
}

/*
	Name: function_e77dc7c0
	Namespace: namespace_769dc23f
	Checksum: 0xC345211
	Offset: 0x1708
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e77dc7c0()
{
	namespace_dabbe128::function_5cf145c9(&function_9cda9485);
}

/*
	Name: function_4b47f9f6
	Namespace: namespace_769dc23f
	Checksum: 0xF43FFC6B
	Offset: 0x1738
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4b47f9f6()
{
	namespace_dabbe128::function_9fcef20a(&function_9cda9485);
}

/*
	Name: function_9cda9485
	Namespace: namespace_769dc23f
	Checksum: 0x55CDDCEF
	Offset: 0x1768
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_9cda9485(var_a8563e07)
{
	if(self.var_9d34dca7 == "spawner_enemy_54i_vehicle_hunter_rocket")
	{
		if(isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7))
		{
			function_17fe87c5("hunter_kill");
		}
	}
}

/*
	Name: function_765fa7e9
	Namespace: namespace_769dc23f
	Checksum: 0x5F0CE10F
	Offset: 0x17E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_765fa7e9()
{
	level thread function_fcc8b758();
}

/*
	Name: function_fcc8b758
	Namespace: namespace_769dc23f
	Checksum: 0xDA1785A4
	Offset: 0x1808
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_fcc8b758()
{
	self endon("hash_3a2c1be8");
	level waittill("hash_b0ab1d93");
	if(level.var_7cd387e["supertrees_enemies"].var_cb80d4a0 === 0)
	{
		function_17fe87c5("accolade_supertrees_cleared");
	}
}

/*
	Name: function_b5aa3655
	Namespace: namespace_769dc23f
	Checksum: 0x8AF75FA
	Offset: 0x1868
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_b5aa3655()
{
	level.var_3234f804 = function_6ada35ba("t_underwater_kill", "targetname");
	namespace_dabbe128::function_356a4ee1(&function_9dcab1fd);
	namespace_dabbe128::function_6aceae7c(&function_4d4eb70e);
}

/*
	Name: function_9dcab1fd
	Namespace: namespace_769dc23f
	Checksum: 0x5E7266B5
	Offset: 0x18E0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_9dcab1fd()
{
	self.var_58aa080e = 0;
}

/*
	Name: function_a057c38f
	Namespace: namespace_769dc23f
	Checksum: 0xBB1F86F6
	Offset: 0x18F8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a057c38f()
{
	namespace_dabbe128::function_a0ac4434(&function_9dcab1fd);
	namespace_dabbe128::function_a09757b3(&function_4d4eb70e);
}

/*
	Name: function_4d4eb70e
	Namespace: namespace_769dc23f
	Checksum: 0xDEE89398
	Offset: 0x1948
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_4d4eb70e(var_a8563e07)
{
	if(isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7) && var_a8563e07.var_3a212fd7 function_32fa5072(level.var_3234f804) && var_a8563e07.var_3a212fd7.var_58aa080e < 4)
	{
		var_a8563e07.var_3a212fd7.var_58aa080e++;
		var_a8563e07.var_3a212fd7 notify("hash_e859318d");
	}
}

/*
	Name: function_bccd89ad
	Namespace: namespace_769dc23f
	Checksum: 0xD78C66C1
	Offset: 0x1A10
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_bccd89ad()
{
	level.var_eaa1b961 = 0;
}

/*
	Name: function_b5cf7b68
	Namespace: namespace_769dc23f
	Checksum: 0x506D81A6
	Offset: 0x1A28
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b5cf7b68()
{
	if(level.var_eaa1b961 < 5)
	{
		level.var_eaa1b961++;
		function_17fe87c5("accolade_destroy_x_guard_towers");
	}
}

/*
	Name: function_10fc44d8
	Namespace: namespace_769dc23f
	Checksum: 0x4967FDCF
	Offset: 0x1A70
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_10fc44d8()
{
	level.var_7ff8e5dc = 0;
	namespace_dabbe128::function_5cf145c9(&function_5fde05cb);
}

/*
	Name: function_92955d5e
	Namespace: namespace_769dc23f
	Checksum: 0x9BF3ECF3
	Offset: 0x1AB0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_92955d5e()
{
	if(level.var_2b53c89b !== 1)
	{
		level.var_2b53c89b = 1;
		namespace_dabbe128::function_9fcef20a(&function_5fde05cb);
	}
}

/*
	Name: function_5fde05cb
	Namespace: namespace_769dc23f
	Checksum: 0xE43E1561
	Offset: 0x1B00
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_5fde05cb(var_a8563e07)
{
	if(isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_9d34dca7 === "veh_bo3_civ_truck_pickup_tech_54i" && level.var_7ff8e5dc < 6)
	{
		level.var_7ff8e5dc++;
		function_17fe87c5("accolade_destroy_x_enemy_trucks");
	}
	if(level.var_7ff8e5dc >= 6)
	{
		function_92955d5e();
	}
}

/*
	Name: function_17fe87c5
	Namespace: namespace_769dc23f
	Checksum: 0x330556A0
	Offset: 0x1BB8
	Size: 0x87
	Parameters: 1
	Flags: None
*/
function function_17fe87c5(var_5ba0c4e7)
{
	foreach(var_fe3a9ba9 in level.var_9b1393e7)
	{
		var_fe3a9ba9 notify(var_5ba0c4e7);
	}
}

/*
	Name: function_fea6ae9f
	Namespace: namespace_769dc23f
	Checksum: 0x8FA1313F
	Offset: 0x1C48
	Size: 0x15
	Parameters: 1
	Flags: None
*/
function function_fea6ae9f(var_5ba0c4e7)
{
	self notify(var_5ba0c4e7);
}


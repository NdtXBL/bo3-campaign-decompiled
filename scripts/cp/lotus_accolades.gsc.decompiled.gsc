#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_f4ff722a;

/*
	Name: function_66df416f
	Namespace: namespace_f4ff722a
	Checksum: 0x321170F1
	Offset: 0x7F0
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_66df416f()
{
	namespace_fe079222::function_50f16166("MISSION_LOTUS_UNTOUCHED");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_SCORE");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_COLLECTIBLE");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE3", "accolade_3_increment");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE4", "accolade_4_increment");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE5", "accolade_5_complete");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE6", "accolade_6_increment");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE7", "accolade_7_complete");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE9", "accolade_9_complete");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE8", "accolade_8_increment");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE10", "accolade_10_increment");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE11", "accolade_11_complete");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE12", "accolade_12_increment");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE13", "accolade_13_increment");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE14", "accolade_14_complete");
	namespace_fe079222::function_50f16166("MISSION_LOTUS_CHALLENGE15", "accolade_15_complete");
	level thread function_d657f93a();
	level thread function_b68ffa5d();
	level thread function_c6ba5108();
	function_f2c7746a();
}

/*
	Name: function_f2c7746a
	Namespace: namespace_f4ff722a
	Checksum: 0x1AF8FF7E
	Offset: 0xA40
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_f2c7746a()
{
	switch(level.var_cd724008)
	{
		case "cp_mi_cairo_lotus":
		{
			level thread function_367835e3();
			function_8c0cbe3e();
			function_4815496();
			level thread function_75102c92();
			break;
		}
		case "cp_mi_cairo_lotus2":
		{
			level thread function_367835e3();
			function_4815496();
			level thread function_7c30e9e0();
			level thread function_8593adf4();
			break;
		}
		case "cp_mi_cairo_lotus3":
		{
			level thread function_9e965239();
			level thread function_8593adf4();
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_a2c4c634
	Namespace: namespace_f4ff722a
	Checksum: 0x615D4BFB
	Offset: 0xB60
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_a2c4c634()
{
	switch(level.var_c0e97bd)
	{
		case "detention_center":
		{
			level thread function_12b1c299();
			break;
		}
		case "boss_battle":
		{
			level thread function_c20741bf();
			level thread function_fc480d54();
			level thread function_f53b652e();
			level thread function_aff09c5b();
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_d657f93a
	Namespace: namespace_f4ff722a
	Checksum: 0x6DC8DCF1
	Offset: 0xC18
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d657f93a()
{
	namespace_dabbe128::function_6aceae7c(&function_8b3820b0);
}

/*
	Name: function_8b3820b0
	Namespace: namespace_f4ff722a
	Checksum: 0x88C2C9F7
	Offset: 0xC48
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_8b3820b0(var_a8563e07)
{
	if(self namespace_d84e54db::function_18775385("rogue_control") && function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_9bed3c76 = self namespace_d84e54db::function_a0a4c1f1("rogue_control");
		if(var_9bed3c76 == "level_3" || var_9bed3c76 == "forced_level_3")
		{
			var_a8563e07.var_3a212fd7 notify("hash_275edb93");
		}
	}
}

/*
	Name: function_b68ffa5d
	Namespace: namespace_f4ff722a
	Checksum: 0x9605CA3A
	Offset: 0xD00
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b68ffa5d()
{
	namespace_dabbe128::function_de1a6d25(&function_6e45ce5d);
}

/*
	Name: function_6e45ce5d
	Namespace: namespace_f4ff722a
	Checksum: 0x6D870994
	Offset: 0xD30
	Size: 0x321
	Parameters: 1
	Flags: None
*/
function function_6e45ce5d(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(isdefined(var_5dc5e20a.var_a03af093) && var_5dc5e20a.var_a03af093.var_8fc0e50e === "raps" && var_5dc5e20a.var_a03af093 != self)
		{
			var_5dc5e20a notify("hash_5cd1f75c");
		}
		else if(isdefined(var_a8563e07.var_51e6a548) && var_a8563e07.var_51e6a548.var_8fc0e50e === "raps" && var_a8563e07.var_51e6a548 != self)
		{
			var_5dc5e20a notify("hash_5cd1f75c");
		}
		break;
	}
	if(isdefined(var_a8563e07.var_3a212fd7.var_6fb3bfc3) && var_a8563e07.var_3a212fd7.var_8fc0e50e === "raps" && function_65f192a6(var_a8563e07.var_3a212fd7.var_6fb3bfc3))
	{
		var_a8563e07.var_3a212fd7.var_6fb3bfc3 notify("hash_5cd1f75c");
		break;
	}
	if(self.var_8fc0e50e === "raps" && var_a8563e07.var_3a212fd7 === self)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(isdefined(var_5dc5e20a.var_a03af093))
			{
				if(var_5dc5e20a.var_a03af093.var_8fc0e50e === "raps")
				{
					if(self !== var_5dc5e20a.var_a03af093)
					{
						var_a6b1619d = function_73b84f4d(var_5dc5e20a.var_a03af093 function_1439c75a());
						if(var_a6b1619d >= 50)
						{
							var_6e4dffe8 = function_cb3d1c9b(self.var_722885f3, var_5dc5e20a.var_a03af093.var_722885f3);
							if(var_6e4dffe8 < 14400)
							{
								var_5dc5e20a notify("hash_5cd1f75c");
							}
						}
					}
				}
			}
		}
	}
}

/*
	Name: function_c6ba5108
	Namespace: namespace_f4ff722a
	Checksum: 0xC638AF7A
	Offset: 0x1060
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c6ba5108()
{
	namespace_dabbe128::function_6aceae7c(&function_8eb61d56);
}

/*
	Name: function_8eb61d56
	Namespace: namespace_f4ff722a
	Checksum: 0x729E9F2A
	Offset: 0x1090
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_8eb61d56(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_8fc0e50e == "robot" && (isdefined(self.var_67c7c241) && function_5dbf7eca(self.var_67c7c241, "cin_lot_10_01_skybridge_vign_jump_robot") || (isdefined(self.var_59959945) && isdefined(self.var_59959945.var_909e866f) && function_5dbf7eca(function_57b2be45(self.var_59959945.var_909e866f), "jump"))))
	{
		var_a8563e07.var_3a212fd7 notify("hash_4f2b7767");
	}
}

/*
	Name: function_367835e3
	Namespace: namespace_f4ff722a
	Checksum: 0x3D0CF93B
	Offset: 0x1188
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_367835e3()
{
	namespace_dabbe128::function_87f30e90(&function_109e560b);
}

/*
	Name: function_109e560b
	Namespace: namespace_f4ff722a
	Checksum: 0xB161B99C
	Offset: 0x11B8
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_109e560b()
{
	self endon("hash_128f8789");
	if(self.var_8fc0e50e === "human_riotshield")
	{
		self thread function_d48890bb();
		while(!isdefined(self.var_66202c1f))
		{
			self waittill("hash_f9348fda", var_74d0774f, var_677b3e78, var_c4fe4fc7, var_10e30246, var_4ae4f03b);
			if(function_65f192a6(var_677b3e78) && (var_4ae4f03b === "MOD_RIFLE_BULLET" || var_4ae4f03b === "MOD_PISTOL_BULLET" || var_4ae4f03b === "MOD_HEAD_SHOT"))
			{
				self.var_66202c1f = 1;
			}
		}
	}
}

/*
	Name: function_d48890bb
	Namespace: namespace_f4ff722a
	Checksum: 0x4522D825
	Offset: 0x12A8
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_d48890bb()
{
	self waittill("hash_128f8789", var_a0ad4f34);
	if(function_65f192a6(var_a0ad4f34) && self.var_66202c1f !== 1)
	{
		var_a0ad4f34 notify("hash_c4928636");
	}
}

/*
	Name: function_7c30e9e0
	Namespace: namespace_f4ff722a
	Checksum: 0x3BF24BB5
	Offset: 0x1308
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_7c30e9e0()
{
	level waittill("hash_c243f1de");
	if(isdefined(world.var_aaf25bba) && world.var_aaf25bba)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a notify("hash_d1ec3fad");
		}
	}
}

/*
	Name: function_8c0cbe3e
	Namespace: namespace_f4ff722a
	Checksum: 0x571915BD
	Offset: 0x13C0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_8c0cbe3e()
{
	world.var_aaf25bba = 1;
}

/*
	Name: function_4815496
	Namespace: namespace_f4ff722a
	Checksum: 0x792965C3
	Offset: 0x13E0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4815496()
{
	namespace_dabbe128::function_6aceae7c(&function_b9a9c8d8);
}

/*
	Name: function_b9a9c8d8
	Namespace: namespace_f4ff722a
	Checksum: 0xD9D785FC
	Offset: 0x1410
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_b9a9c8d8(var_a8563e07)
{
	if(self.var_8fc0e50e == "civilian" || self.var_8fc0e50e == "allies" && function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		world.var_aaf25bba = 0;
	}
}

/*
	Name: function_9e965239
	Namespace: namespace_f4ff722a
	Checksum: 0xA119E65B
	Offset: 0x1480
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_9e965239()
{
	namespace_dabbe128::function_6aceae7c(&function_3bbd5251);
}

/*
	Name: function_3bbd5251
	Namespace: namespace_f4ff722a
	Checksum: 0x6D8457B1
	Offset: 0x14B0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_3bbd5251(var_a8563e07)
{
	if(self.var_8fc0e50e == "robot" && function_65f192a6(var_a8563e07.var_3a212fd7) && isdefined(self.var_67c7c241) && function_5dbf7eca(self.var_67c7c241, "cin_lotus_charging_station_awaken_robot"))
	{
		var_a8563e07.var_3a212fd7 notify("hash_f0d8a6c8");
	}
}

/*
	Name: function_8593adf4
	Namespace: namespace_f4ff722a
	Checksum: 0xE0EEE3A3
	Offset: 0x1540
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8593adf4()
{
	namespace_dabbe128::function_de1a6d25(&function_e36c85d8);
}

/*
	Name: function_e36c85d8
	Namespace: namespace_f4ff722a
	Checksum: 0xF47737AE
	Offset: 0x1570
	Size: 0x14F
	Parameters: 1
	Flags: None
*/
function function_e36c85d8(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_8fc0e50e == "robot")
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(self namespace_71e9cb84::function_7922262b("robot_EMP") || self namespace_71e9cb84::function_7922262b("cybercom_sysoverload"))
		{
			if(!isdefined(var_5dc5e20a.var_cacfc33c))
			{
				var_5dc5e20a thread function_8dc27487(5);
			}
			else if(var_5dc5e20a.var_cacfc33c < 5)
			{
				var_5dc5e20a.var_29d01adc++;
				if(var_5dc5e20a.var_29d01adc >= 5)
				{
					var_5dc5e20a notify("hash_8a5f1db");
				}
			}
			else
			{
				var_5dc5e20a.var_cacfc33c = undefined;
				var_5dc5e20a notify("hash_ada946c0");
			}
		}
	}
}

/*
	Name: function_8dc27487
	Namespace: namespace_f4ff722a
	Checksum: 0x7147ABAE
	Offset: 0x16C8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_8dc27487(var_8d2cb132)
{
	self endon("hash_128f8789");
	self endon("hash_ada946c0");
	self.var_cacfc33c = 0;
	self.var_29d01adc = 1;
	while(var_8d2cb132 > self.var_cacfc33c)
	{
		wait(1);
		self.var_cacfc33c++;
	}
}

/*
	Name: function_75102c92
	Namespace: namespace_f4ff722a
	Checksum: 0x89D75942
	Offset: 0x1730
	Size: 0x48B
	Parameters: 0
	Flags: None
*/
function function_75102c92()
{
	level.var_d97ef4e5 = [];
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!function_6e2770d8(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = function_84970cc4(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm_siege2nd";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!function_6e2770d8(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = function_84970cc4(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm_siege1st";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!function_6e2770d8(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = function_84970cc4(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_04_05_security_vign_melee_variation2";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!function_6e2770d8(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = function_84970cc4(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!function_6e2770d8(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = function_84970cc4(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm_alt";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!function_6e2770d8(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = function_84970cc4(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm_alt2";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!function_6e2770d8(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = function_84970cc4(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm_end";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!function_6e2770d8(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = function_84970cc4(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_takeout_civkills";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!function_6e2770d8(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = function_84970cc4(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_04_01_security_vign_holddown";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!function_6e2770d8(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = function_84970cc4(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_04_01_security_vign_beaten_breakout_loop";
	namespace_dabbe128::function_6aceae7c(&function_f5ef0d83);
}

/*
	Name: function_f5ef0d83
	Namespace: namespace_f4ff722a
	Checksum: 0xB61F27EA
	Offset: 0x1BC8
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_f5ef0d83(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_3e94206a === "axis" && isdefined(self.var_67c7c241) && namespace_84970cc4::function_307b88f2(level.var_d97ef4e5, self.var_67c7c241))
	{
		var_a8563e07.var_3a212fd7 notify("hash_c335c11b");
	}
}

/*
	Name: function_c20741bf
	Namespace: namespace_f4ff722a
	Checksum: 0xF240AC23
	Offset: 0x1C60
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_c20741bf()
{
	level waittill("hash_a450f864");
	var_f721d9a5 = GetTime();
	level waittill("hash_4c66c579");
	var_7d1d3d30 = GetTime();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_7d1d3d30 - var_f721d9a5 < 120000)
		{
			/#
				function_d52b076d("Dev Block strings are not supported");
			#/
			var_5dc5e20a notify("hash_65fc298e");
		}
	}
}

/*
	Name: function_fc480d54
	Namespace: namespace_f4ff722a
	Checksum: 0x95700B56
	Offset: 0x1D60
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_fc480d54()
{
	level waittill("hash_a450f864");
	namespace_dabbe128::function_de1a6d25(&function_e8cf8caa);
	level waittill("hash_65ad50c6");
	namespace_dabbe128::function_fad550c4(&function_e8cf8caa);
}

/*
	Name: function_e8cf8caa
	Namespace: namespace_f4ff722a
	Checksum: 0xD0158253
	Offset: 0x1DD0
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_e8cf8caa(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_2f8cff2 === 1)
	{
		var_a8563e07.var_3a212fd7 notify("hash_3dbcf4f1");
	}
}

/*
	Name: function_12b1c299
	Namespace: namespace_f4ff722a
	Checksum: 0xEDA4C273
	Offset: 0x1E30
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_12b1c299()
{
	namespace_dabbe128::function_de1a6d25(&function_436940b1);
	level namespace_ad23e503::function_1ab5ebec("players_made_it_to_stand_down");
	namespace_dabbe128::function_fad550c4(&function_436940b1);
}

/*
	Name: function_436940b1
	Namespace: namespace_f4ff722a
	Checksum: 0x2129AE13
	Offset: 0x1EA0
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_436940b1(var_a8563e07)
{
	if(self.var_8fc0e50e === "robot")
	{
		if(function_65f192a6(var_a8563e07.var_3a212fd7))
		{
			var_5dc5e20a = var_a8563e07.var_3a212fd7;
			if(isdefined(var_5dc5e20a.var_a03af093) && var_5dc5e20a.var_a03af093.var_8fc0e50e === "amws" && var_5dc5e20a.var_a03af093 != self)
			{
				var_5dc5e20a notify("hash_746844e8");
			}
			else if(isdefined(var_a8563e07.var_51e6a548) && var_a8563e07.var_51e6a548.var_8fc0e50e === "amws" && var_a8563e07.var_51e6a548 != self)
			{
				var_5dc5e20a notify("hash_746844e8");
			}
		}
		else if(isdefined(var_a8563e07.var_3a212fd7.var_6fb3bfc3) && var_a8563e07.var_3a212fd7.var_8fc0e50e === "amws" && function_65f192a6(var_a8563e07.var_3a212fd7.var_6fb3bfc3))
		{
			var_a8563e07.var_3a212fd7.var_6fb3bfc3 notify("hash_746844e8");
		}
	}
}

/*
	Name: function_f53b652e
	Namespace: namespace_f4ff722a
	Checksum: 0x8880AEC
	Offset: 0x2048
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f53b652e()
{
	level waittill("hash_a450f864");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_d57bb90f);
	namespace_dabbe128::function_356a4ee1(&function_d57bb90f);
}

/*
	Name: function_d57bb90f
	Namespace: namespace_f4ff722a
	Checksum: 0x9875BD9
	Offset: 0x20B0
	Size: 0x221
	Parameters: 0
	Flags: None
*/
function function_d57bb90f()
{
	self notify("hash_94e247a8");
	self endon("hash_128f8789");
	self endon("hash_f02d45f5");
	self endon("hash_94e247a8");
	level endon("hash_4c66c579");
	var_cc018542 = function_c4d5ec1f("launcher_standard");
	var_3c3fc8a8 = function_c4d5ec1f("minigun_lotus");
	while(isdefined(level.var_38a4277e))
	{
		level.var_38a4277e waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_a0ad4f34 === self && var_f9348fda > 0)
		{
			if(var_dfcc01fd === var_cc018542 && !isdefined(self.var_e1f9f377))
			{
				self.var_e1f9f377 = 1;
			}
			else if(var_dfcc01fd === var_3c3fc8a8 && !isdefined(self.var_fff43762))
			{
				self.var_fff43762 = 1;
			}
			else if(isdefined(var_dfcc01fd) && !isdefined(self.var_9b4dd55d) && var_dfcc01fd != var_cc018542 && var_dfcc01fd != var_3c3fc8a8)
			{
				self.var_9b4dd55d = 1;
			}
		}
		if(self.var_e1f9f377 === 1 && self.var_fff43762 === 1 && self.var_9b4dd55d === 1)
		{
			self notify("hash_f02d45f5");
		}
	}
}

/*
	Name: function_aff09c5b
	Namespace: namespace_f4ff722a
	Checksum: 0x6871BE30
	Offset: 0x22E0
	Size: 0x1A1
	Parameters: 0
	Flags: None
*/
function function_aff09c5b()
{
	level waittill("hash_a450f864");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_ad23e503::function_c35e6aab("accolade_15_failed");
	}
	namespace_dabbe128::function_356a4ee1(&function_428a25c7);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_3d0c6b79);
	level waittill("hash_4c66c579");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(!var_5dc5e20a namespace_ad23e503::function_7922262b("accolade_15_failed"))
		{
			/#
				function_d52b076d("Dev Block strings are not supported");
			#/
			var_5dc5e20a notify("hash_779aa062");
		}
	}
}

/*
	Name: function_428a25c7
	Namespace: namespace_f4ff722a
	Checksum: 0x11AC5BAF
	Offset: 0x2490
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_428a25c7()
{
	if(!self namespace_ad23e503::function_dbca4c5d("accolade_15_failed"))
	{
		self namespace_ad23e503::function_c35e6aab("accolade_15_failed");
	}
	self function_3d0c6b79();
}

/*
	Name: function_3d0c6b79
	Namespace: namespace_f4ff722a
	Checksum: 0xAC97FFF2
	Offset: 0x24F8
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_3d0c6b79()
{
	self endon("hash_128f8789");
	self endon("hash_779aa062");
	var_429f87f7 = function_c4d5ec1f("gunship_cannon");
	while(1)
	{
		self waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_dfcc01fd === var_429f87f7)
		{
			/#
				function_d52b076d("Dev Block strings are not supported");
			#/
			self namespace_ad23e503::function_74d6b22f("accolade_15_failed");
			return;
		}
	}
}


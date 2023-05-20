#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_e9d9fb34;

/*
	Name: function_4d39a2af
	Namespace: namespace_e9d9fb34
	Checksum: 0x646E98C
	Offset: 0x580
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_4d39a2af()
{
	namespace_fe079222::function_50f16166("MISSION_ZURICH_UNTOUCHED");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_SCORE");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_COLLECTIBLE");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE3", "got_m_all");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE4", "hand_cannon");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE5", "why_u_cry");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE6", "robo_slapper");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE7", "exp_entertainment");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE8", "raps_fan");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE9", "2_kills_1_shot");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE10", "quick_slap");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE11", "container_destroyed");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE12", "perfect_timing");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE13", "dodge_this");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE14", "bots_go_boom");
	namespace_fe079222::function_50f16166("MISSION_ZURICH_CHALLENGE15", "clip_their_wings");
	namespace_dabbe128::function_356a4ee1(&function_b75a0f7);
	function_53d8882b();
	function_11f62094();
	function_d116d4ed();
	function_8c0cbe3e();
	function_e06c631f();
	function_5384b888();
	function_996c3f92();
	function_131f8d11();
	function_8dec7f28();
	function_605fefbf();
	function_6e040346();
	function_4b53d895();
}

/*
	Name: function_c27610f9
	Namespace: namespace_e9d9fb34
	Checksum: 0x2FB12F0D
	Offset: 0x858
	Size: 0xA5
	Parameters: 2
	Flags: None
*/
function function_c27610f9(var_8e087689, var_70b01bd3)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a notify(var_8e087689);
	}
	if(isdefined(var_70b01bd3))
	{
		[[var_70b01bd3]]();
	}
}

/*
	Name: function_b75a0f7
	Namespace: namespace_e9d9fb34
	Checksum: 0x52560EDF
	Offset: 0x908
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_b75a0f7()
{
	self.var_e2f09ac4 = 0;
	self.var_11b787d4 = namespace_82b91a51::function_8c4f4e93(10);
	self.var_4d964e27 = undefined;
	self.var_5d4efbf2 = 0;
	self.var_dd160974 = undefined;
	self.var_f4415abf = 0;
	self.var_3e18c869 = namespace_82b91a51::function_8c4f4e93(10);
	self.var_6d525c8b = 0;
	self.var_bbb7a4e5 = namespace_82b91a51::function_8c4f4e93(5);
	self thread function_17c6bcd0();
	self function_ec61897e();
}

/*
	Name: function_3dc86a1
	Namespace: namespace_e9d9fb34
	Checksum: 0xD6E141B9
	Offset: 0x9E0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_3dc86a1(var_a8563e07)
{
	if(var_a8563e07.var_dfcc01fd.var_fe311e35 == "melee")
	{
		return 1;
	}
	else if(var_a8563e07.var_ba36487d == "MOD_MELEE_WEAPON_BUTT")
	{
		return 1;
	}
	else if(var_a8563e07.var_dfcc01fd.var_4be20d44 == "hero_gravity_spikes_cyebercom")
	{
		return 1;
	}
	else if(var_a8563e07.var_dfcc01fd.var_4be20d44 == "hero_gravity_spikes_cyebercom_upgraded")
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_dd0b5d28
	Namespace: namespace_e9d9fb34
	Checksum: 0xBB8E808D
	Offset: 0xAA8
	Size: 0x105
	Parameters: 1
	Flags: None
*/
function function_dd0b5d28(var_a8563e07)
{
	if(var_a8563e07.var_dfcc01fd.var_fe311e35 == "projectile")
	{
		return 1;
	}
	else if(var_a8563e07.var_ba36487d == "MOD_EXPLOSIVE" || var_a8563e07.var_ba36487d === "MOD_EXPLOSIVE_SPLASH" || var_a8563e07.var_ba36487d == "MOD_GRENADE" || var_a8563e07.var_ba36487d === "MOD_GRENADE_SPLASH")
	{
		return 1;
	}
	else if(var_a8563e07.var_dfcc01fd.var_4be20d44 == "spike_charge" || var_a8563e07.var_dfcc01fd.var_4be20d44 == "spike_launcher")
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_62b0213a
	Namespace: namespace_e9d9fb34
	Checksum: 0xD0A1CE3E
	Offset: 0xBB8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_62b0213a()
{
	namespace_4dbf3ae3::function_1ab5ebec("stop_depth_charges");
	if(!(isdefined(level.var_e83d53e9) && level.var_e83d53e9))
	{
		function_c27610f9("got_m_all");
	}
}

/*
	Name: function_53d8882b
	Namespace: namespace_e9d9fb34
	Checksum: 0xD5A536
	Offset: 0xC10
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_53d8882b()
{
	namespace_2f06d687::function_906bdb6d("siegebot", &function_d7b4afc8);
}

/*
	Name: function_d7b4afc8
	Namespace: namespace_e9d9fb34
	Checksum: 0x96EFDCA8
	Offset: 0xC48
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d7b4afc8()
{
	self endon("hash_128f8789");
	namespace_dabbe128::function_d38f54b1(&function_ce871b4e);
	self thread function_793c2b3f();
}

/*
	Name: function_ce871b4e
	Namespace: namespace_e9d9fb34
	Checksum: 0x896C668E
	Offset: 0xC98
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function function_ce871b4e(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && var_a8563e07.var_dfcc01fd.var_f4ae8e42 != "pistol")
	{
		self notify("hash_cf910502");
	}
}

/*
	Name: function_793c2b3f
	Namespace: namespace_e9d9fb34
	Checksum: 0xBB76D92B
	Offset: 0xD00
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_793c2b3f()
{
	self endon("hash_cf910502");
	self waittill("hash_128f8789", var_3a212fd7, var_ad8afadc, var_dfcc01fd, var_dd89f865, var_bd00ff2a);
	if(function_65f192a6(var_3a212fd7) && (isdefined(var_dfcc01fd) && var_dfcc01fd.var_f4ae8e42 === "pistol"))
	{
		function_c27610f9("hand_cannon");
	}
}

/*
	Name: function_11f62094
	Namespace: namespace_e9d9fb34
	Checksum: 0xEB612D4
	Offset: 0xDB8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_11f62094()
{
	namespace_dabbe128::function_6aceae7c(&function_90ece8b9);
}

/*
	Name: function_ee6a5a6a
	Namespace: namespace_e9d9fb34
	Checksum: 0xFE911FC8
	Offset: 0xDE8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_ee6a5a6a()
{
	namespace_dabbe128::function_a09757b3(&function_90ece8b9);
}

/*
	Name: function_90ece8b9
	Namespace: namespace_e9d9fb34
	Checksum: 0x8C5029DC
	Offset: 0xE18
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_90ece8b9(var_a8563e07)
{
	if(!self.var_8fc0e50e === "robot" || !function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		return;
	}
	if(var_a8563e07.var_dfcc01fd.var_f4ae8e42 === "turret")
	{
		level namespace_fe079222::function_331efedc("MISSION_ZURICH_CHALLENGE5");
	}
}

/*
	Name: function_d116d4ed
	Namespace: namespace_e9d9fb34
	Checksum: 0xFC782734
	Offset: 0xEB0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d116d4ed()
{
	namespace_dabbe128::function_6aceae7c(&function_b6ef6322);
	level thread function_cdb4b3f7();
}

/*
	Name: function_cdb4b3f7
	Namespace: namespace_e9d9fb34
	Checksum: 0xA6D2409B
	Offset: 0xEF8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_cdb4b3f7()
{
	level waittill("hash_52e251bc");
	namespace_dabbe128::function_a09757b3(&function_b6ef6322);
}

/*
	Name: function_b6ef6322
	Namespace: namespace_e9d9fb34
	Checksum: 0xBBC50E4C
	Offset: 0xF38
	Size: 0x1B3
	Parameters: 1
	Flags: None
*/
function function_b6ef6322(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(self.var_8fc0e50e === "robot" && (isdefined(function_3dc86a1(var_a8563e07)) && function_3dc86a1(var_a8563e07)))
		{
			if(var_a8563e07.var_3a212fd7.var_e2f09ac4 === 0)
			{
				var_a8563e07.var_3a212fd7.var_11b787d4 = namespace_82b91a51::function_8c4f4e93(10);
				var_a8563e07.var_3a212fd7.var_e2f09ac4++;
			}
			else
			{
				var_a8563e07.var_3a212fd7.var_e2f09ac4++;
				if(var_a8563e07.var_3a212fd7.var_e2f09ac4 >= 5 && var_a8563e07.var_3a212fd7.var_11b787d4 namespace_82b91a51::function_abc2cfcf() > 0)
				{
					var_a8563e07.var_3a212fd7 notify("hash_4ca3efeb");
				}
				else if(var_a8563e07.var_3a212fd7.var_11b787d4 namespace_82b91a51::function_abc2cfcf() <= 0)
				{
					var_a8563e07.var_3a212fd7.var_e2f09ac4 = 0;
				}
			}
		}
	}
}

/*
	Name: function_17c6bcd0
	Namespace: namespace_e9d9fb34
	Checksum: 0x8E2D90E3
	Offset: 0x10F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_17c6bcd0()
{
	self.var_1191fe8d = 0;
	self.var_87550951 = undefined;
	self.var_56a9030 = 0;
}

/*
	Name: function_8c0cbe3e
	Namespace: namespace_e9d9fb34
	Checksum: 0x186E8310
	Offset: 0x1128
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c0cbe3e()
{
	namespace_dabbe128::function_6aceae7c(&function_dcf1dd8b);
}

/*
	Name: function_dcf1dd8b
	Namespace: namespace_e9d9fb34
	Checksum: 0x40DD327C
	Offset: 0x1158
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_dcf1dd8b(var_a8563e07)
{
	if(self.var_3e94206a === "allies")
	{
		return;
	}
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && var_a8563e07.var_3a212fd7.var_56a9030 === 0)
	{
		if(isdefined(var_a8563e07.var_dfcc01fd))
		{
			if(isdefined(function_dd0b5d28(var_a8563e07)) && function_dd0b5d28(var_a8563e07))
			{
				if(var_a8563e07.var_51e6a548 !== var_a8563e07.var_3a212fd7.var_87550951)
				{
					var_a8563e07.var_3a212fd7.var_1191fe8d = 0;
					var_a8563e07.var_3a212fd7.var_87550951 = var_a8563e07.var_51e6a548;
				}
				var_a8563e07.var_3a212fd7.var_1191fe8d++;
				if(var_a8563e07.var_3a212fd7.var_1191fe8d >= 3)
				{
					var_a8563e07.var_3a212fd7 notify("hash_fd0e8159");
					var_a8563e07.var_3a212fd7.var_56a9030 = 1;
				}
			}
		}
	}
}

/*
	Name: function_e06c631f
	Namespace: namespace_e9d9fb34
	Checksum: 0x54F49006
	Offset: 0x12E0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e06c631f()
{
	namespace_2f06d687::function_906bdb6d("raps", &function_2c0e41ab);
	level.var_e3b7af42 = 0;
	level thread function_748a64c5();
}

/*
	Name: function_748a64c5
	Namespace: namespace_e9d9fb34
	Checksum: 0xB726D164
	Offset: 0x1338
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_748a64c5()
{
	level namespace_82b91a51::function_5b7e3888("accolade_8_raps_check", "friendly_raps_damaged");
	if(!(isdefined(level.var_aead8b98) && level.var_aead8b98))
	{
		function_c27610f9("raps_fan");
	}
}

/*
	Name: function_2c0e41ab
	Namespace: namespace_e9d9fb34
	Checksum: 0x10CFE4A7
	Offset: 0x13A0
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_2c0e41ab()
{
	if(isdefined(level.var_aead8b98) && level.var_aead8b98)
	{
		return;
	}
	self thread function_b6f90f();
	level.var_e3b7af42++;
	if(!(isdefined(level.var_ebd2f83b) && level.var_ebd2f83b))
	{
		level thread function_6b2c4236();
		level.var_ebd2f83b = 1;
	}
}

/*
	Name: function_b6f90f
	Namespace: namespace_e9d9fb34
	Checksum: 0xFA8936EC
	Offset: 0x1418
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_b6f90f()
{
	self waittill("hash_128f8789", var_3a212fd7, var_ad8afadc, var_dfcc01fd, var_dd89f865, var_bd00ff2a);
	level.var_e3b7af42--;
	if(level.var_e3b7af42 <= 0)
	{
		level.var_ebd2f83b = undefined;
	}
}

/*
	Name: function_6b2c4236
	Namespace: namespace_e9d9fb34
	Checksum: 0xF82C28
	Offset: 0x1490
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_6b2c4236()
{
	var_b97ed523 = function_b8494651("allies");
	namespace_84970cc4::function_966ecb29(var_b97ed523, &function_99009628);
}

/*
	Name: function_99009628
	Namespace: namespace_e9d9fb34
	Checksum: 0x1448C4F3
	Offset: 0x14E8
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_99009628()
{
	self endon("hash_128f8789");
	self waittill("hash_f9348fda", var_74d0774f, var_3a212fd7, var_c4fe4fc7, var_10e30246, var_4ae4f03b);
	if(var_3a212fd7.var_8fc0e50e === "raps")
	{
		level.var_aead8b98 = 1;
		level notify("hash_1e4d3423");
	}
}

/*
	Name: function_5384b888
	Namespace: namespace_e9d9fb34
	Checksum: 0x5ECA35E8
	Offset: 0x1580
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_5384b888()
{
	namespace_dabbe128::function_de1a6d25(&function_590aa5a5);
}

/*
	Name: function_956d1e2e
	Namespace: namespace_e9d9fb34
	Checksum: 0x61870E41
	Offset: 0x15B0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_956d1e2e()
{
	namespace_dabbe128::function_de1a6d25(&function_590aa5a5);
}

/*
	Name: function_ec61897e
	Namespace: namespace_e9d9fb34
	Checksum: 0x80453875
	Offset: 0x15E0
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_ec61897e()
{
	self.var_c8397fe4 = undefined;
}

/*
	Name: function_590aa5a5
	Namespace: namespace_e9d9fb34
	Checksum: 0x11C023CA
	Offset: 0x15F8
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_590aa5a5(var_a8563e07)
{
	if(self.var_3e94206a === "allies")
	{
		return;
	}
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && var_a8563e07.var_3a212fd7.var_5d4efbf2 === 0)
	{
		if(isdefined(var_a8563e07.var_dfcc01fd) && !function_5dbf7eca(var_a8563e07.var_dfcc01fd.var_4be20d44, "turret") && (var_a8563e07.var_ba36487d == "MOD_PISTOL_BULLET" || var_a8563e07.var_ba36487d == "MOD_RIFLE_BULLET"))
		{
			if(isdefined(var_a8563e07.var_3a212fd7.var_c8397fe4))
			{
				if(var_a8563e07.var_3a212fd7.var_c8397fe4 == var_a8563e07.var_3a212fd7.var_4c9e802c["shots"])
				{
					var_a8563e07.var_3a212fd7 notify("hash_7a018db6");
					var_a8563e07.var_3a212fd7.var_5d4efbf2 = 1;
				}
			}
			var_a8563e07.var_3a212fd7.var_c8397fe4 = var_a8563e07.var_3a212fd7.var_4c9e802c["shots"];
		}
	}
}

/*
	Name: function_996c3f92
	Namespace: namespace_e9d9fb34
	Checksum: 0x4B22213C
	Offset: 0x17A0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_996c3f92()
{
	namespace_dabbe128::function_6aceae7c(&function_fa041c17);
	level thread function_1b5b3a2c();
}

/*
	Name: function_1b5b3a2c
	Namespace: namespace_e9d9fb34
	Checksum: 0x747919BC
	Offset: 0x17E8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_1b5b3a2c()
{
	level waittill("hash_73b00182");
	namespace_dabbe128::function_a09757b3(&function_fa041c17);
}

/*
	Name: function_fa041c17
	Namespace: namespace_e9d9fb34
	Checksum: 0x9FA0960F
	Offset: 0x1828
	Size: 0x213
	Parameters: 1
	Flags: None
*/
function function_fa041c17(var_a8563e07)
{
	if(self.var_3e94206a === "allies")
	{
		return;
	}
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(isdefined(self.var_8fc0e50e) && (self.var_8fc0e50e == "human" || self.var_8fc0e50e == "human_riotshield" || self.var_8fc0e50e == "human_rpg" || self.var_8fc0e50e == "civilian") && (isdefined(function_3dc86a1(var_a8563e07)) && function_3dc86a1(var_a8563e07)))
		{
			if(var_a8563e07.var_3a212fd7.var_f4415abf === 0)
			{
				var_a8563e07.var_3a212fd7.var_3e18c869 = namespace_82b91a51::function_8c4f4e93(10);
				var_a8563e07.var_3a212fd7.var_f4415abf++;
			}
			else
			{
				var_a8563e07.var_3a212fd7.var_f4415abf++;
				if(var_a8563e07.var_3a212fd7.var_f4415abf >= 5 && var_a8563e07.var_3a212fd7.var_3e18c869 namespace_82b91a51::function_abc2cfcf() > 0)
				{
					var_a8563e07.var_3a212fd7 notify("hash_dc8b2e3b");
				}
				else if(var_a8563e07.var_3a212fd7.var_3e18c869 namespace_82b91a51::function_abc2cfcf() <= 0)
				{
					var_a8563e07.var_3a212fd7.var_f4415abf = 0;
				}
			}
		}
	}
}

/*
	Name: function_131f8d11
	Namespace: namespace_e9d9fb34
	Checksum: 0x8A3542E
	Offset: 0x1A48
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_131f8d11()
{
	var_1a69ce4d = function_99201f25("destructible", "targetname");
	foreach(var_6ee6e2fe in var_1a69ce4d)
	{
		if(function_5dbf7eca(var_6ee6e2fe.var_7b6755f4, "p7_dest_explosive_"))
		{
			var_6ee6e2fe thread function_2d6d9849();
		}
	}
}

/*
	Name: function_2d6d9849
	Namespace: namespace_e9d9fb34
	Checksum: 0x49794DFB
	Offset: 0x1B30
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_2d6d9849()
{
	level endon("hash_65fc298e");
	self waittill("hash_f9348fda", var_74d0774f, var_3a212fd7, var_c4fe4fc7, var_10e30246, var_4ae4f03b);
	level namespace_fe079222::function_331efedc("MISSION_ZURICH_CHALLENGE11");
}

/*
	Name: function_8dec7f28
	Namespace: namespace_e9d9fb34
	Checksum: 0xDA339551
	Offset: 0x1BB0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8dec7f28()
{
	namespace_dabbe128::function_6aceae7c(&function_adff2745);
}

/*
	Name: function_adff2745
	Namespace: namespace_e9d9fb34
	Checksum: 0x4107F0AB
	Offset: 0x1BE0
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_adff2745(var_a8563e07)
{
	if(!isdefined(self.var_8fc0e50e) && (self.var_8fc0e50e == "human" || self.var_8fc0e50e == "human_riotshield" || self.var_8fc0e50e == "human_rpg" || self.var_8fc0e50e == "civilian") || !function_65f192a6(var_a8563e07.var_3a212fd7) || self.var_3e94206a == "allies")
	{
		return;
	}
	if(var_a8563e07.var_dfcc01fd.var_fe311e35 === "grenade" || (var_a8563e07.var_dfcc01fd.var_fe311e35 === "projectile" && var_a8563e07.var_dfcc01fd.var_f4ae8e42 === "grenade"))
	{
		var_a8563e07.var_3a212fd7 namespace_fe079222::function_331efedc("MISSION_ZURICH_CHALLENGE12");
	}
}

/*
	Name: function_605fefbf
	Namespace: namespace_e9d9fb34
	Checksum: 0x95245015
	Offset: 0x1D20
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_605fefbf()
{
	namespace_2f06d687::function_906bdb6d("siegebot", &function_13829246);
}

/*
	Name: function_13829246
	Namespace: namespace_e9d9fb34
	Checksum: 0x498F7420
	Offset: 0x1D58
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_13829246(var_a8563e07)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_baf56cfa(self);
		var_5dc5e20a thread function_b1f08628(self);
	}
}

/*
	Name: function_baf56cfa
	Namespace: namespace_e9d9fb34
	Checksum: 0x930EFD76
	Offset: 0x1E10
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_baf56cfa(var_f37c20b3)
{
	var_f37c20b3 endon("hash_128f8789");
	self endon("hash_35d17c89");
	while(1)
	{
		self waittill("hash_f9348fda", var_f9348fda, var_3a212fd7);
		if(var_3a212fd7 === var_f37c20b3)
		{
			var_f37c20b3 notify("hash_700a2ace");
		}
	}
}

/*
	Name: function_b1f08628
	Namespace: namespace_e9d9fb34
	Checksum: 0x92953C50
	Offset: 0x1E88
	Size: 0x89
	Parameters: 1
	Flags: None
*/
function function_b1f08628(var_f37c20b3)
{
	var_f37c20b3 endon("hash_700a2ace");
	var_f37c20b3 waittill("hash_128f8789", var_3a212fd7, var_ad8afadc, var_dfcc01fd, var_dd89f865, var_bd00ff2a);
	if(function_65f192a6(var_3a212fd7))
	{
		self notify("hash_35d17c89");
	}
}

/*
	Name: function_6e040346
	Namespace: namespace_e9d9fb34
	Checksum: 0x90962DE
	Offset: 0x1F20
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6e040346()
{
	namespace_dabbe128::function_6aceae7c(&function_61fa3273);
}

/*
	Name: function_61fa3273
	Namespace: namespace_e9d9fb34
	Checksum: 0x6056E480
	Offset: 0x1F50
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_61fa3273(var_a8563e07)
{
	if(!self.var_8fc0e50e === "robot" || !function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		return;
	}
	if(var_a8563e07.var_dfcc01fd.var_4be20d44 === "hero_pineapplegun" && (var_a8563e07.var_ba36487d == "MOD_GRENADE" || var_a8563e07.var_ba36487d == "MOD_GRENADE_SPLASH"))
	{
		var_a8563e07.var_3a212fd7 namespace_fe079222::function_331efedc("MISSION_ZURICH_CHALLENGE14");
	}
}

/*
	Name: function_4b53d895
	Namespace: namespace_e9d9fb34
	Checksum: 0x3B41F8AE
	Offset: 0x2028
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4b53d895()
{
	namespace_dabbe128::function_6aceae7c(&function_3bf7b80a);
}

/*
	Name: function_3bf7b80a
	Namespace: namespace_e9d9fb34
	Checksum: 0xF284B164
	Offset: 0x2058
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_3bf7b80a(var_a8563e07)
{
	if(self.var_3e94206a === "allies")
	{
		return;
	}
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(isdefined(self.var_8fc0e50e) && (self.var_8fc0e50e == "human" || self.var_8fc0e50e == "human_riotshield" || self.var_8fc0e50e == "human_rpg" || self.var_8fc0e50e == "civilian"))
		{
			if(var_a8563e07.var_3a212fd7.var_6d525c8b === 0)
			{
				var_a8563e07.var_3a212fd7.var_bbb7a4e5 = namespace_82b91a51::function_8c4f4e93(5);
				var_a8563e07.var_3a212fd7.var_6d525c8b++;
			}
			else
			{
				var_a8563e07.var_3a212fd7.var_6d525c8b++;
				if(var_a8563e07.var_3a212fd7.var_6d525c8b >= 3 && var_a8563e07.var_3a212fd7.var_bbb7a4e5 namespace_82b91a51::function_abc2cfcf() > 0)
				{
					var_a8563e07.var_3a212fd7 notify("hash_72346d97");
				}
				else if(var_a8563e07.var_3a212fd7.var_bbb7a4e5 namespace_82b91a51::function_abc2cfcf() <= 0)
				{
					var_a8563e07.var_3a212fd7.var_6d525c8b = 0;
				}
			}
		}
	}
}


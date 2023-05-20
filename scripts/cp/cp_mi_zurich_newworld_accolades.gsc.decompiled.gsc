#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\util_shared;

#namespace namespace_37a1dc33;

/*
	Name: function_4d39a2af
	Namespace: namespace_37a1dc33
	Checksum: 0x39B206BC
	Offset: 0x5D0
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_4d39a2af()
{
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_UNTOUCHED");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_SCORE");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_COLLECTIBLE");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE3", "ch03_light_enemies_on_fire");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE4", "ch04_wall_run_kills");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE5", "ch05_penetrate_bullet_kills");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE6", "ch06_cybercom_robot_kills");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE7", "ch07_explosion_triple_kill");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE8", "ch08_grenade_throwback_kill");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE9", "ch09_icicle_kill");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE10", "ch10_disabled_robot_kill");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE11", "ch11_chase_no_reload");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE12", "ch12_chase_no_civilians");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE13", "ch13_turret_kill");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE14", "ch14_shotgun_kills");
	namespace_fe079222::function_50f16166("MISSION_NEWWORLD_CHALLENGE15", "ch15_wall_run_train");
	namespace_dabbe128::function_356a4ee1(&function_3a6b5b3e);
	function_89a4c66f();
	function_314eff4a();
	function_2b972244();
	function_e346bcd4();
	function_5a3da660();
	function_a87e96e();
	function_353e449e();
	function_6972c343();
	function_80820e19();
}

/*
	Name: function_3a6b5b3e
	Namespace: namespace_37a1dc33
	Checksum: 0xD029393
	Offset: 0x878
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_3a6b5b3e()
{
	self function_9f8d841b();
	self function_b4b1da62();
	self function_9c7144b6();
	self thread function_7e35ccbc();
}

/*
	Name: function_c27610f9
	Namespace: namespace_37a1dc33
	Checksum: 0xCF9AD48F
	Offset: 0x8E8
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
	Name: function_9f8d841b
	Namespace: namespace_37a1dc33
	Checksum: 0x9AFAD62E
	Offset: 0x9C8
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_9f8d841b()
{
	self.var_57582aca = 0;
	self.var_6659e536 = undefined;
}

/*
	Name: function_89a4c66f
	Namespace: namespace_37a1dc33
	Checksum: 0xE8E41C32
	Offset: 0x9F0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_89a4c66f()
{
	namespace_dabbe128::function_6aceae7c(&function_595dc718);
}

/*
	Name: function_595dc718
	Namespace: namespace_37a1dc33
	Checksum: 0xAB731FC9
	Offset: 0xA20
	Size: 0x213
	Parameters: 1
	Flags: None
*/
function function_595dc718(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && var_a8563e07.var_ba36487d == "MOD_BURNED")
	{
		if(!isdefined(var_a8563e07.var_3a212fd7.var_6659e536) || var_a8563e07.var_3a212fd7.var_6659e536 != var_a8563e07.var_51e6a548)
		{
			var_a8563e07.var_3a212fd7.var_6659e536 = var_a8563e07.var_51e6a548;
			var_a8563e07.var_3a212fd7.var_57582aca = 1;
			var_a8563e07.var_3a212fd7 notify("hash_6daef24a");
			wait(0.05);
			if(var_a8563e07.var_3a212fd7.var_6659e536 == var_a8563e07.var_3a212fd7)
			{
				var_a8563e07.var_3a212fd7 thread function_840d3bcc();
			}
		}
		else if(var_a8563e07.var_3a212fd7.var_6659e536 === var_a8563e07.var_51e6a548 && !isdefined(self.var_93eeceb))
		{
			var_a8563e07.var_3a212fd7.var_57582aca++;
			self.var_93eeceb = 1;
			if(var_a8563e07.var_3a212fd7.var_57582aca == 3)
			{
				var_a8563e07.var_3a212fd7 notify("hash_38998bd8");
			}
		}
		else
		{
			var_a8563e07.var_3a212fd7.var_6659e536 = var_a8563e07.var_51e6a548;
			var_a8563e07.var_3a212fd7.var_57582aca = 1;
		}
	}
}

/*
	Name: function_840d3bcc
	Namespace: namespace_37a1dc33
	Checksum: 0x42CBAA63
	Offset: 0xC40
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_840d3bcc()
{
	self endon("hash_128f8789");
	self endon("hash_6daef24a");
	self endon("hash_38998bd8");
	wait(0.5);
	self.var_6659e536 = undefined;
	self.var_57582aca = 0;
}

/*
	Name: function_314eff4a
	Namespace: namespace_37a1dc33
	Checksum: 0x79546174
	Offset: 0xC98
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_314eff4a()
{
	namespace_dabbe128::function_de1a6d25(&function_9257e223);
}

/*
	Name: function_9257e223
	Namespace: namespace_37a1dc33
	Checksum: 0xB2B3A567
	Offset: 0xCC8
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_9257e223(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(var_5dc5e20a function_ad7e8c32())
		{
			var_5dc5e20a function_c27610f9("ch04_wall_run_kills");
		}
	}
}

/*
	Name: function_2b972244
	Namespace: namespace_37a1dc33
	Checksum: 0xABEAF6AA
	Offset: 0xD50
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_2b972244()
{
	namespace_dabbe128::function_de1a6d25(&function_9d5a87b1);
}

/*
	Name: function_9d5a87b1
	Namespace: namespace_37a1dc33
	Checksum: 0x74218BB8
	Offset: 0xD80
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_9d5a87b1(var_a8563e07)
{
	if(self.var_3e94206a !== "axis")
	{
		return;
	}
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		var_3d9e461f = !function_7178c13c(var_5dc5e20a function_501eb072(), self function_501eb072(), 0, self);
		if(namespace_82b91a51::function_9b876dc5(var_a8563e07.var_ba36487d) && var_3d9e461f)
		{
			var_5dc5e20a function_c27610f9("ch05_penetrate_bullet_kills");
		}
	}
}

/*
	Name: function_b4b1da62
	Namespace: namespace_37a1dc33
	Checksum: 0x6040BBBE
	Offset: 0xE88
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b4b1da62()
{
	self.var_c81126e8 = 0;
	self.var_a5360b2a = namespace_82b91a51::function_8c4f4e93(2);
}

/*
	Name: function_5a3da660
	Namespace: namespace_37a1dc33
	Checksum: 0x83CFE33C
	Offset: 0xEC0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5a3da660()
{
	namespace_2f06d687::function_906bdb6d("robot", &function_f9a5c6a1);
}

/*
	Name: function_f9a5c6a1
	Namespace: namespace_37a1dc33
	Checksum: 0x1243F60C
	Offset: 0xEF8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_f9a5c6a1()
{
	self waittill("hash_f8c5dd60", var_dfcc01fd, var_3a212fd7);
	if(function_65f192a6(var_3a212fd7))
	{
		if(var_3a212fd7.var_c81126e8 == 0)
		{
			var_3a212fd7.var_a5360b2a = namespace_82b91a51::function_8c4f4e93(2);
			var_3a212fd7.var_c81126e8++;
		}
		else
		{
			var_3a212fd7.var_c81126e8++;
			if(var_3a212fd7.var_c81126e8 >= 5 && var_3a212fd7.var_a5360b2a namespace_82b91a51::function_abc2cfcf() > 0)
			{
				var_3a212fd7 notify("hash_d28bfcb4");
			}
			else if(var_3a212fd7.var_a5360b2a namespace_82b91a51::function_abc2cfcf() <= 0)
			{
				var_3a212fd7.var_a5360b2a = namespace_82b91a51::function_8c4f4e93(2);
				var_3a212fd7.var_c81126e8 = 1;
			}
		}
	}
}

/*
	Name: function_9c7144b6
	Namespace: namespace_37a1dc33
	Checksum: 0xF948F2E1
	Offset: 0x1050
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_9c7144b6()
{
	self.var_b2c73b97 = 0;
	self.var_b5385d9d = undefined;
}

/*
	Name: function_e346bcd4
	Namespace: namespace_37a1dc33
	Checksum: 0xFFF9A42F
	Offset: 0x1078
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e346bcd4()
{
	namespace_dabbe128::function_de1a6d25(&function_1b6f43c5);
}

/*
	Name: function_1b6f43c5
	Namespace: namespace_37a1dc33
	Checksum: 0x7847D504
	Offset: 0x10A8
	Size: 0x20F
	Parameters: 1
	Flags: None
*/
function function_1b6f43c5(var_a8563e07)
{
	if(self.var_3e94206a !== "axis")
	{
		return;
	}
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && (var_a8563e07.var_ba36487d == "MOD_GRENADE" || var_a8563e07.var_ba36487d == "MOD_GRENADE_SPLASH" || var_a8563e07.var_ba36487d == "MOD_EXPLOSIVE" || var_a8563e07.var_ba36487d == "MOD_EXPLOSIVE_SPLASH" || var_a8563e07.var_ba36487d == "MOD_PROJECTILE" || var_a8563e07.var_ba36487d == "MOD_PROJECTILE_SPLASH"))
	{
		if(!isdefined(var_a8563e07.var_3a212fd7.var_b5385d9d))
		{
			var_a8563e07.var_3a212fd7.var_b5385d9d = var_a8563e07.var_51e6a548;
			var_a8563e07.var_3a212fd7.var_b2c73b97 = 1;
		}
		else if(var_a8563e07.var_3a212fd7.var_b5385d9d === var_a8563e07.var_51e6a548)
		{
			var_a8563e07.var_3a212fd7.var_b2c73b97++;
			if(var_a8563e07.var_3a212fd7.var_b2c73b97 >= 3)
			{
				var_a8563e07.var_3a212fd7 notify("hash_f60a0b85");
			}
		}
		else
		{
			var_a8563e07.var_3a212fd7.var_b5385d9d = var_a8563e07.var_51e6a548;
			var_a8563e07.var_3a212fd7.var_b2c73b97 = 1;
		}
	}
}

/*
	Name: function_7e35ccbc
	Namespace: namespace_37a1dc33
	Checksum: 0x172DB8B4
	Offset: 0x12C0
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_7e35ccbc()
{
	self endon("hash_128f8789");
	self.var_c6c262e8 = 0;
	while(1)
	{
		self waittill("hash_3652869", var_2d789ddd, var_f461b5d);
		if(var_2d789ddd.var_3e94206a == "axis")
		{
			self.var_fc30fc22 = var_f461b5d;
			self thread function_23ad043b();
		}
	}
}

/*
	Name: function_23ad043b
	Namespace: namespace_37a1dc33
	Checksum: 0x66E2613
	Offset: 0x1350
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_23ad043b()
{
	self endon("hash_128f8789");
	self.var_fc30fc22 waittill("hash_3c655080");
	self.var_fc30fc22 = undefined;
	wait(0.5);
	self.var_c6c262e8 = 0;
}

/*
	Name: function_a87e96e
	Namespace: namespace_37a1dc33
	Checksum: 0xC6610F5
	Offset: 0x1398
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a87e96e()
{
	namespace_dabbe128::function_de1a6d25(&function_ee3272c2);
}

/*
	Name: function_ee3272c2
	Namespace: namespace_37a1dc33
	Checksum: 0xE61E089A
	Offset: 0x13C8
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_ee3272c2(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(isdefined(var_a8563e07.var_3a212fd7.var_fc30fc22))
		{
			if(var_a8563e07.var_51e6a548 == var_a8563e07.var_3a212fd7.var_fc30fc22)
			{
				var_a8563e07.var_3a212fd7.var_c6c262e8++;
				if(var_a8563e07.var_3a212fd7.var_c6c262e8 == 3)
				{
					var_a8563e07.var_3a212fd7 notify("hash_8fa9da82");
				}
			}
		}
	}
}

/*
	Name: function_353e449e
	Namespace: namespace_37a1dc33
	Checksum: 0x842FCE29
	Offset: 0x1490
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_353e449e()
{
	namespace_dabbe128::function_de1a6d25(&function_3867e45c);
}

/*
	Name: function_3867e45c
	Namespace: namespace_37a1dc33
	Checksum: 0x7097BE11
	Offset: 0x14C0
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_3867e45c(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && var_a8563e07.var_3a212fd7.var_ca775902 === "icicle")
	{
		var_a8563e07.var_3a212fd7 notify("hash_c347271c");
	}
}

/*
	Name: function_6972c343
	Namespace: namespace_37a1dc33
	Checksum: 0x7A38CFFB
	Offset: 0x1530
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_6972c343()
{
	namespace_2f06d687::function_906bdb6d("robot", &function_deb99e6);
	namespace_dabbe128::function_de1a6d25(&function_c008ffe2);
}

/*
	Name: function_deb99e6
	Namespace: namespace_37a1dc33
	Checksum: 0xDB4B6E99
	Offset: 0x1588
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_deb99e6()
{
	self endon("hash_128f8789");
	while(1)
	{
		self.var_3fe3140 = 0;
		self waittill("hash_3d83d307");
		self.var_3fe3140 = 1;
		self waittill("hash_f0941238");
		self.var_3fe3140 = 0;
	}
}

/*
	Name: function_c008ffe2
	Namespace: namespace_37a1dc33
	Checksum: 0x734EA42E
	Offset: 0x15E8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_c008ffe2(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_8fc0e50e == "robot")
	{
		if(self.var_3fe3140)
		{
			var_a8563e07.var_3a212fd7 notify("hash_4c313fa2");
		}
	}
}

/*
	Name: function_cd261d0b
	Namespace: namespace_37a1dc33
	Checksum: 0xD12FA721
	Offset: 0x1658
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_cd261d0b()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_af529683();
	}
	level namespace_ad23e503::function_1ab5ebec("chase_done");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_2d344335();
	}
}

/*
	Name: function_af529683
	Namespace: namespace_37a1dc33
	Checksum: 0x7C53D562
	Offset: 0x17A8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_af529683()
{
	self endon("hash_128f8789");
	level endon("hash_3d00ae0c");
	self waittill("hash_f7be0a32");
	self namespace_9f824288::function_bee608f0("b_nw_accolade_11_failed", 1);
}

/*
	Name: function_2d344335
	Namespace: namespace_37a1dc33
	Checksum: 0x8D1DB050
	Offset: 0x1800
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_2d344335()
{
	if(self namespace_9f824288::function_36adbb9c("b_nw_accolade_11_failed") !== 1 && self namespace_9f824288::function_36adbb9c("b_has_done_chase") !== 0 && self namespace_9f824288::function_36adbb9c("b_nw_accolade_11_completed") !== 1)
	{
		self notify("hash_b83db00b");
		self namespace_9f824288::function_bee608f0("b_nw_accolade_11_completed", 1);
	}
}

/*
	Name: function_323baa37
	Namespace: namespace_37a1dc33
	Checksum: 0xA450F35A
	Offset: 0x18B0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_323baa37()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	namespace_dabbe128::function_6aceae7c(&function_bc7f04af);
	namespace_dabbe128::function_87f30e90(&function_829b12c4);
	level namespace_ad23e503::function_1ab5ebec("chase_done");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_8af9d448();
	}
	namespace_dabbe128::function_a09757b3(&function_bc7f04af);
	namespace_dabbe128::function_3f5e6667(&function_829b12c4);
}

/*
	Name: function_bc7f04af
	Namespace: namespace_37a1dc33
	Checksum: 0x46CC825D
	Offset: 0x1A08
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_bc7f04af(var_a8563e07)
{
	if(self.var_8fc0e50e == "civilian" || self.var_8fc0e50e == "allies" && function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_a8563e07.var_3a212fd7 namespace_9f824288::function_bee608f0("b_nw_accolade_12_failed", 1);
	}
}

/*
	Name: function_829b12c4
	Namespace: namespace_37a1dc33
	Checksum: 0x5029A397
	Offset: 0x1A90
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_829b12c4(var_a8563e07)
{
	self endon("hash_128f8789");
	if(isdefined(self.var_8fc0e50e) && (self.var_8fc0e50e == "civilian" || self.var_8fc0e50e == "allies"))
	{
		self waittill("hash_34914552", var_efb53e77);
		if(function_65f192a6(var_efb53e77))
		{
			var_efb53e77 namespace_9f824288::function_bee608f0("b_nw_accolade_12_failed", 1);
		}
	}
}

/*
	Name: function_8af9d448
	Namespace: namespace_37a1dc33
	Checksum: 0x4C2A8BBD
	Offset: 0x1B38
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_8af9d448()
{
	if(self namespace_9f824288::function_36adbb9c("b_nw_accolade_12_failed") !== 1 && self namespace_9f824288::function_36adbb9c("b_has_done_chase") !== 0 && self namespace_9f824288::function_36adbb9c("b_nw_accolade_12_completed") !== 1)
	{
		self notify("hash_690d946b");
		self namespace_9f824288::function_bee608f0("b_nw_accolade_12_completed", 1);
	}
}

/*
	Name: function_f7dd9b2c
	Namespace: namespace_37a1dc33
	Checksum: 0x178D951E
	Offset: 0x1BE8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f7dd9b2c()
{
	namespace_dabbe128::function_de1a6d25(&function_e50c8d4a);
	level waittill("hash_c37d20e3");
	namespace_dabbe128::function_fad550c4(&function_e50c8d4a);
}

/*
	Name: function_e50c8d4a
	Namespace: namespace_37a1dc33
	Checksum: 0x41F26345
	Offset: 0x1C48
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_e50c8d4a(var_a8563e07)
{
	if(isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7) && isdefined(var_a8563e07.var_3a212fd7.var_a03af093) && var_a8563e07.var_3a212fd7.var_a03af093.var_8fc0e50e === "turret")
	{
		if(var_a8563e07.var_3a212fd7.var_a03af093 !== self)
		{
			var_a8563e07.var_3a212fd7 notify("hash_802ebfac");
		}
	}
}

/*
	Name: function_8bb97e0
	Namespace: namespace_37a1dc33
	Checksum: 0x4B4A0419
	Offset: 0x1D08
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_8bb97e0()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_ee166ee8();
	}
	namespace_dabbe128::function_356a4ee1(&function_ee166ee8);
	namespace_dabbe128::function_de1a6d25(&function_85ed003e);
}

/*
	Name: function_85ed003e
	Namespace: namespace_37a1dc33
	Checksum: 0x83940A47
	Offset: 0x1DE0
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_85ed003e(var_a8563e07)
{
	var_8c90e32b = namespace_82b91a51::function_d7ddcf6d(var_a8563e07.var_dfcc01fd);
	if(self.var_8fc0e50e === "robot" && var_8c90e32b === "weapon_cqb")
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		var_5dc5e20a.var_89be6da0++;
		if(var_5dc5e20a.var_89be6da0 >= 8)
		{
			var_5dc5e20a notify("hash_c113aa12");
		}
	}
}

/*
	Name: function_ee166ee8
	Namespace: namespace_37a1dc33
	Checksum: 0xFA6E1C5D
	Offset: 0x1E98
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_ee166ee8()
{
	self endon("hash_128f8789");
	self.var_89be6da0 = 0;
	self waittill("hash_f7be0a32");
	wait(0.05);
	self thread function_ee166ee8();
}

/*
	Name: function_80820e19
	Namespace: namespace_37a1dc33
	Checksum: 0xF1321C52
	Offset: 0x1EE8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_80820e19()
{
	var_4fa896d4 = function_6ada35ba("newworld_accolade_15", "targetname");
	var_4fa896d4 thread function_14316bd1();
}

/*
	Name: function_14316bd1
	Namespace: namespace_37a1dc33
	Checksum: 0x8BDB8ABC
	Offset: 0x1F38
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_14316bd1()
{
	level endon("hash_f7bb45b");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_a3d46ee4);
		if(function_65f192a6(var_a3d46ee4) && var_a3d46ee4 function_ad7e8c32())
		{
			var_e4a8c6a4 = function_e1dc201c(var_a3d46ee4.var_722885f3, var_a3d46ee4.var_722885f3 - VectorScale((0, 0, 1), 1000), 0, var_a3d46ee4);
			if(isdefined(var_e4a8c6a4["entity"]) && var_e4a8c6a4["entity"].var_caae374e === "chase_train")
			{
				var_a3d46ee4 notify("hash_fda475d4");
			}
		}
	}
}


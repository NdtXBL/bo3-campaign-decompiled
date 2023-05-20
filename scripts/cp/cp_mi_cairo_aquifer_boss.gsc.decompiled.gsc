#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer;
#using scripts\cp\cp_mi_cairo_aquifer_interior;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai\systems\debug;
#using scripts\shared\ai_shared;
#using scripts\shared\ai_sniper_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_cac6a05e;

/*
	Name: function_998c817d
	Namespace: namespace_cac6a05e
	Checksum: 0x35061E4E
	Offset: 0xD28
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_998c817d()
{
	thread function_510d0407();
	level namespace_ad23e503::function_1ab5ebec("start_battle");
	thread function_5358c20("hendricks");
	thread function_a54075c1();
}

/*
	Name: function_5f8efef1
	Namespace: namespace_cac6a05e
	Checksum: 0xDDD00107
	Offset: 0xD90
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_5f8efef1(var_a3d46ee4)
{
	var_a3d46ee4 endon("hash_128f8789");
	while(!level namespace_ad23e503::function_7922262b("end_battle"))
	{
		var_a4e8111c = VectorScale((0, 0, 1), 60);
		var_a0cd0871 = "defend";
		if(isdefined(var_a3d46ee4.var_8f9cc7d0) && var_a3d46ee4.var_8f9cc7d0)
		{
			var_a4e8111c = VectorScale((0, 0, 1), 30);
			var_a0cd0871 = "return";
		}
		level.var_5aa7773 = namespace_d0ef8521::function_fe46cd6(var_a0cd0871, "ally_defend", var_a3d46ee4.var_722885f3 + var_a4e8111c);
		wait(0.05);
	}
	level.var_5aa7773 namespace_d0ef8521::function_ac28ba8e();
}

/*
	Name: function_5358c20
	Namespace: namespace_cac6a05e
	Checksum: 0xDD93B2F0
	Offset: 0xEA8
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_5358c20(var_4be20d44)
{
	var_6b45b25e = level.var_24223342;
	level.var_a6529009 = var_6b45b25e;
	level.var_8781baf = 0;
	var_6b45b25e.var_be1d7b0d = 0;
	var_6b45b25e namespace_82b91a51::function_958c7633();
	namespace_d84e54db::function_85668ce6(var_6b45b25e);
	var_6b45b25e namespace_d84e54db::function_ceb883cd("sprint", 1);
	level.var_24223342 namespace_76d95162::function_d9f49fba(1);
	thread function_567a5fa();
	thread function_7a57d63a();
}

/*
	Name: function_5dd0c951
	Namespace: namespace_cac6a05e
	Checksum: 0xA5EFC958
	Offset: 0xF88
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_5dd0c951(var_f3b8326a)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_f3b8326a.size; var_c957f6b6++)
	{
		level.var_a6529009 function_519d76bc(var_f3b8326a, var_c957f6b6);
	}
}

/*
	Name: function_519d76bc
	Namespace: namespace_cac6a05e
	Checksum: 0xE1526964
	Offset: 0xFE8
	Size: 0x55
	Parameters: 2
	Flags: None
*/
function function_519d76bc(var_84970cc4, var_791757)
{
	self namespace_71b8dba1::function_81141386(var_84970cc4[var_791757]);
	var_791757++;
	if(var_791757 >= var_84970cc4.size)
	{
		var_791757 = 0;
	}
	return var_791757;
}

/*
	Name: function_f9d87307
	Namespace: namespace_cac6a05e
	Checksum: 0xC4556447
	Offset: 0x1048
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_f9d87307(var_4be20d44)
{
	var_52aea43b = namespace_14b42b8a::function_7922262b(var_4be20d44, "targetname");
	var_d3a18b74 = [];
	var_34fb19f = var_52aea43b;
	while(isdefined(var_52aea43b))
	{
		var_d3a18b74[var_d3a18b74.size] = var_52aea43b.var_722885f3;
		if(!isdefined(var_52aea43b.var_b07228b6))
		{
			break;
		}
		var_52aea43b = namespace_14b42b8a::function_7922262b(var_52aea43b.var_b07228b6, "targetname");
		if(isdefined(var_52aea43b) && var_52aea43b == var_34fb19f)
		{
			break;
		}
	}
	level.var_a86d0056 = var_d3a18b74;
}

/*
	Name: function_7c54d87d
	Namespace: namespace_cac6a05e
	Checksum: 0x14D9780E
	Offset: 0x1140
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7c54d87d()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self thread namespace_7244fa9b::function_6840179(level.var_a86d0056);
}

/*
	Name: function_a54075c1
	Namespace: namespace_cac6a05e
	Checksum: 0x2BA7F72E
	Offset: 0x11A0
	Size: 0x82F
	Parameters: 0
	Flags: None
*/
function function_a54075c1()
{
	level endon("hash_9b660c7");
	var_9024513d = [];
	var_9024513d[0] = "hend_we_ve_got_company_0";
	var_9024513d[1] = "hend_tangoes_on_the_floor_0";
	var_9024513d[2] = "hend_more_enemies_inbound_0";
	var_9024513d[3] = "hend_heads_up_more_tango_0";
	var_9024513d[4] = "hend_watch_those_doors_0";
	var_2a935cb6 = 0;
	level.var_37b990db = function_6ada35ba("veh_turret", "targetname");
	level.var_37b990db function_e7117eb1(9999);
	level.var_37b990db namespace_96fa87af::function_fdf99c07();
	level.var_2839b910 = namespace_2f06d687::function_7387a40a("hyperion");
	level.var_2839b910 namespace_82b91a51::function_958c7633();
	level.var_2839b910 namespace_175490fb::function_58c312f2();
	level.var_2839b910 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_2839b910 function_80765127();
	level.var_2839b910 function_422037f5();
	level.var_2839b910.var_dfa3c2cb = 2;
	level.var_2839b910.var_d8cc1a6d = 9999;
	level.var_2839b910.var_2b04bf92 = 1;
	level.var_2839b910 namespace_d84e54db::function_3c155012();
	level.var_6447d0d2 = 0;
	level.var_c987bca = 0;
	level.var_2839b910.var_dfa3c2cb = 0;
	level.var_2839b910.var_815502c4 = 1;
	level.var_2839b910.var_26c21ea3 = 10;
	level.var_2839b910.var_65de9253 = 0;
	level.var_7d7334f = [];
	level namespace_ad23e503::function_74d6b22f("sniper_boss_spawned");
	thread function_6800ac1d();
	thread function_80b6b7eb();
	level.var_ed93c81c = [];
	level.var_ed93c81c[0] = function_84970cc4("sniper_spot_1_1");
	level.var_b8219f59 = function_84970cc4("wave_a", "wave_b", "wave_c");
	level.var_f1ee7b0e = 0;
	level.var_d56cb109 = -1;
	var_a4d5f340 = 7;
	level.var_8f1f476d = "wave_a";
	var_d7c34d98 = 0;
	level.var_2839b910 function_48f26766();
	level.var_37b990db namespace_37b990db::function_c8f12004(1, 0);
	level.var_c987bca = 1;
	level.var_2839b910 function_479d0795(level.var_2839b910.var_722885f3);
	wait(2);
	var_66ab2260 = function_99201f25("1st_barrel", "script_noteworthy");
	foreach(var_1109dfe1 in var_66ab2260)
	{
		if(var_1109dfe1.var_170527fb == "destructible")
		{
			var_39c2c150 = var_1109dfe1;
			continue;
		}
	}
	if(isdefined(var_39c2c150))
	{
		level.var_2839b910.var_9eb700da notify("hash_5ee81302");
		level.var_2839b910.var_9eb700da thread namespace_7244fa9b::function_e57ea743(level.var_2839b910 function_501eb072(), var_39c2c150, 1, level.var_2839b910, 1, 0);
		thread function_60e39f29(var_39c2c150);
		var_39c2c150 waittill("hash_6445d1f2");
		level.var_2839b910.var_9eb700da notify("hash_e57ea743");
		level.var_2839b910.var_9eb700da.var_8722cfb = undefined;
		namespace_80983c42::function_80983c42("bossceiling_smk_level1");
		namespace_80983c42::function_80983c42("lighting_turbine_boss_03");
		level.var_2839b910 namespace_7244fa9b::function_782962c5();
		wait(0.05);
	}
	function_e9aa8887();
	thread function_6ea369f7();
	var_11424fa = 1;
	while(!level namespace_ad23e503::function_7922262b("end_battle"))
	{
		if(var_d7c34d98)
		{
			switch(level.var_f1ee7b0e)
			{
				case 1:
				{
					break;
				}
				case 2:
				{
					break;
				}
				case 3:
				{
					var_35ef0ec1 = function_b8494651("axis");
					var_bc601a70 = function_6ada35ba("boss_end_vol", "targetname");
					foreach(var_6b45b25e in var_35ef0ec1)
					{
						var_6b45b25e function_86408aa8(var_bc601a70);
					}
					break;
				}
			}
			var_d7c34d98 = 0;
		}
		var_279e4e97 = level.var_2839b910 namespace_82b91a51::function_9fcf3cd8(var_a4d5f340, "sniper_suppressed", "sniper_disabled", "fire");
		if(var_279e4e97 == "fire")
		{
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				var_5dc5e20a function_b8862210("prj_crack", var_5dc5e20a);
			}
			var_11424fa = function_329f82a0();
		}
		else
		{
			var_11424fa = 0;
		}
	}
}

/*
	Name: function_60e39f29
	Namespace: namespace_cac6a05e
	Checksum: 0xE0C6E4C0
	Offset: 0x19D8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_60e39f29(var_39c2c150)
{
	level.var_2839b910 waittill("hash_c7569801");
	var_39c2c150 function_2992720d(level.var_2839b910.var_722885f3, level.var_2839b910);
}

/*
	Name: function_479d0795
	Namespace: namespace_cac6a05e
	Checksum: 0x76660800
	Offset: 0x1A30
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_479d0795(var_81c506ec)
{
	if(!isdefined(self.var_9eb700da))
	{
		self.var_9eb700da = function_9b7fda5e("script_model", var_81c506ec);
		self.var_9eb700da function_e48f905e("tag_origin");
		self.var_9eb700da.var_9d097bf8 = VectorScale((1, 0, 0), 100);
		self thread namespace_82b91a51::function_3e3a41eb(self.var_9eb700da);
	}
	if(self.var_9eb700da.var_3a90f16b <= 0)
	{
		self.var_9eb700da.var_3a90f16b = 1;
	}
	self thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", self.var_9eb700da);
	self.var_5fb3c5fe = 0;
	self.var_578b3075 = 1;
}

/*
	Name: function_e9aa8887
	Namespace: namespace_cac6a05e
	Checksum: 0x6879D669
	Offset: 0x1B38
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_e9aa8887()
{
	level.var_d56cb109++;
	var_536510a4 = function_f1889e69();
	if(level.var_d56cb109 >= var_536510a4.size)
	{
		level.var_d56cb109 = 0;
	}
	var_c8a3ac29 = function_b4cb3503(var_536510a4[level.var_d56cb109], "targetname");
	level.var_1d4f0308 = var_c8a3ac29;
	level.var_2839b910 function_9869ab67(var_c8a3ac29.var_722885f3, var_c8a3ac29.var_6ab6f4fd);
	if(isdefined(var_c8a3ac29.var_b07228b6))
	{
		function_f9d87307(var_c8a3ac29.var_b07228b6);
	}
	level.var_2839b910 thread function_7c54d87d();
}

/*
	Name: function_f1889e69
	Namespace: namespace_cac6a05e
	Checksum: 0xE0006FDF
	Offset: 0x1C40
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_f1889e69()
{
	return level.var_ed93c81c[level.var_f1ee7b0e];
}

/*
	Name: function_c0010c33
	Namespace: namespace_cac6a05e
	Checksum: 0x2297AD1B
	Offset: 0x1C60
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_c0010c33()
{
	var_b3db42a9 = function_b8494651("axis");
	var_3cd8bc5a = [];
	foreach(var_b07228b6 in var_b3db42a9)
	{
		if(function_e70ab977(var_b07228b6) && !function_85e4c3b3(var_b07228b6))
		{
			var_3cd8bc5a[var_3cd8bc5a.size] = var_b07228b6;
		}
	}
	return var_3cd8bc5a;
}

/*
	Name: function_2e7e3fc7
	Namespace: namespace_cac6a05e
	Checksum: 0x8A22405C
	Offset: 0x1D58
	Size: 0x145
	Parameters: 1
	Flags: None
*/
function function_2e7e3fc7(var_722885f3)
{
	var_b3db42a9 = namespace_82b91a51::function_1edbd8();
	var_b3db42a9 = var_b3db42a9.var_f96bc9fe;
	var_edaf6251 = [];
	foreach(var_5dc5e20a in var_b3db42a9)
	{
		if(function_e7865c4b(var_722885f3, var_5dc5e20a function_d48f2ab3("tag_eye"), 1, level.var_37b990db))
		{
			var_edaf6251[var_edaf6251.size] = var_5dc5e20a;
		}
	}
	if(var_edaf6251.size > 0)
	{
		var_af0b4dbf = function_dc99997a(0, var_edaf6251.size);
		return var_edaf6251[var_af0b4dbf];
	}
	return undefined;
}

/*
	Name: function_5e9e2b2e
	Namespace: namespace_cac6a05e
	Checksum: 0x41C56035
	Offset: 0x1EA8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_5e9e2b2e()
{
	var_c8a3ac29 = function_26299103(level.var_a40b1280.size);
	var_7b1be7eb = level.var_a40b1280[var_c8a3ac29];
	if(!isdefined(level.var_5f912d03) || var_7b1be7eb == level.var_5f912d03)
	{
		var_c8a3ac29 = var_c8a3ac29 + 1;
		if(var_c8a3ac29 >= level.var_a40b1280.size)
		{
			var_c8a3ac29 = 0;
		}
	}
	function_eea4755(var_c8a3ac29);
}

/*
	Name: function_eea4755
	Namespace: namespace_cac6a05e
	Checksum: 0x1A5F6F03
	Offset: 0x1F60
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_eea4755(var_5e76f0af)
{
	level notify("hash_7bb65964");
	level.var_cc1cd7bc = level.var_a6529009;
	level.var_b9c6c6b1 = undefined;
	if(var_5e76f0af >= 0 && var_5e76f0af < level.var_a40b1280.size)
	{
		level.var_5f912d03 = level.var_a40b1280[var_5e76f0af];
		level.var_19a4e0ef = function_6ada35ba(level.var_5f912d03.var_b07228b6, "targetname");
		level.var_37b990db.var_722885f3 = level.var_5f912d03.var_722885f3 - VectorScale((0, 0, 1), 32);
		if(!isdefined(level.var_19a4e0ef))
		{
			/#
				namespace_33b293fd::function_94739542("Dev Block strings are not supported");
			#/
		}
	}
}

/*
	Name: function_e4623bda
	Namespace: namespace_cac6a05e
	Checksum: 0x82DF51DE
	Offset: 0x2060
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function function_e4623bda(var_62240a71)
{
	level endon("hash_2b459237");
	wait(var_62240a71);
	level notify("hash_602b2f5b");
}

/*
	Name: function_38600307
	Namespace: namespace_cac6a05e
	Checksum: 0xC25F76A
	Offset: 0x2098
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_38600307()
{
	level endon("hash_2b459237");
	level endon("hash_7bb65964");
	level.var_19a4e0ef waittill("hash_f9348fda");
	level notify("hash_2b459237");
}

/*
	Name: function_6485b136
	Namespace: namespace_cac6a05e
	Checksum: 0x3EFFBB83
	Offset: 0x20E0
	Size: 0x10D
	Parameters: 2
	Flags: None
*/
function function_6485b136(var_5dc5e20a, var_67520c6a)
{
	if(!isdefined(var_67520c6a))
	{
		var_67520c6a = 0;
	}
	if(!level.var_2839b910.var_65de9253 && (!isdefined(level.var_2839b910.var_67ffdff2) || level.var_2839b910.var_67ffdff2 != var_5dc5e20a))
	{
		var_833c5770 = level.var_2839b910.var_dfa3c2cb;
		level.var_2839b910.var_dfa3c2cb = var_67520c6a;
		level.var_2839b910.var_9eb700da namespace_7244fa9b::function_e57ea743(level.var_2839b910 function_501eb072(), var_5dc5e20a, 1, level.var_2839b910, 1, 0);
		level.var_2839b910.var_dfa3c2cb = var_833c5770;
		level.var_2839b910.var_67ffdff2 = undefined;
	}
}

/*
	Name: function_fe242426
	Namespace: namespace_cac6a05e
	Checksum: 0x3C3B2C59
	Offset: 0x21F8
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_fe242426()
{
	while(1)
	{
		namespace_f96f74aa::function_172e04fa(level.var_2839b910.var_9eb700da.var_722885f3, 20, VectorScale((1, 0, 1), 255), 10, 10);
		wait(0.1);
	}
}

/*
	Name: function_c6b25cd0
	Namespace: namespace_cac6a05e
	Checksum: 0x1BA74D10
	Offset: 0x2258
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_c6b25cd0(var_4dbf3ae3)
{
	var_31214672 = [];
	var_2395e945 = function_3f10449f();
	foreach(var_5dc5e20a in var_2395e945)
	{
		if(var_5dc5e20a function_32fa5072(var_4dbf3ae3))
		{
			var_31214672[var_31214672.size] = var_5dc5e20a;
		}
	}
	return var_31214672;
}

/*
	Name: function_2dcd0b86
	Namespace: namespace_cac6a05e
	Checksum: 0x329ED654
	Offset: 0x2340
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_2dcd0b86(var_10c74fb1, var_beca1774, var_d900369a, var_98fe0d1b)
{
	namespace_7e4a6241::function_accdf135(var_10c74fb1, var_beca1774, var_d900369a, var_98fe0d1b);
}

/*
	Name: function_c5ba7a9b
	Namespace: namespace_cac6a05e
	Checksum: 0x12F6FCC4
	Offset: 0x2390
	Size: 0x45
	Parameters: 2
	Flags: None
*/
function function_c5ba7a9b(var_ac9fb467, var_3a98452c)
{
	var_f96bc9fe = [];
	var_f96bc9fe[0] = var_ac9fb467;
	var_f96bc9fe[1] = var_3a98452c;
	return var_f96bc9fe;
}

/*
	Name: function_ab171381
	Namespace: namespace_cac6a05e
	Checksum: 0xDC5C8742
	Offset: 0x23E0
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_ab171381()
{
	namespace_80983c42::function_80983c42("lighting_turbine_boss_emergency");
	level.var_24223342 namespace_71b8dba1::function_81141386("hend_that_should_do_it_0");
	thread function_c3af0181();
	level namespace_ad23e503::function_74d6b22f("boss_finale_ready");
	var_5948b3df = function_6ada35ba("boss_finale_trigger", "targetname");
	var_5948b3df function_175e6b8e(1);
	var_5948b3df.var_611ccff1 = namespace_82b91a51::function_14518e76(var_5948b3df, &"cp_level_aquifer_capture_door", &"CP_MI_CAIRO_AQUIFER_BREACH", &function_479374a3);
	var_5948b3df.var_611ccff1 namespace_a230c2b1::function_df0e9e69(0.35);
	level waittill("hash_9b660c7");
	var_5948b3df.var_611ccff1 namespace_a230c2b1::function_e54c54c3();
	var_5948b3df function_175e6b8e(0);
}

/*
	Name: function_479374a3
	Namespace: namespace_cac6a05e
	Checksum: 0xE2732C65
	Offset: 0x2540
	Size: 0x533
	Parameters: 0
	Flags: None
*/
function function_479374a3()
{
	namespace_82b91a51::function_d8eaed3d(10);
	namespace_84eb777e::function_5ec99c19("cp_level_aquifer_boss");
	level notify("hash_9b660c7");
	level.var_2839b910 function_48f26766();
	level.var_2839b910 namespace_82b91a51::function_4b741fdc();
	var_35ef0ec1 = function_b8494651("axis");
	var_35ef0ec1 = namespace_84970cc4::function_d010fbb9(var_35ef0ec1, function_84970cc4(level.var_2839b910));
	if(isdefined(level.var_3e0291d0))
	{
		[[level.var_3e0291d0]]();
	}
	namespace_84970cc4::function_966ecb29(var_35ef0ec1, &namespace_786319bb::function_ce276271);
	var_14b42b8a = function_6ada35ba("hyperion_death_origin", "targetname");
	if(isdefined(level.var_1ff0137d))
	{
		level thread [[level.var_1ff0137d]]();
	}
	var_a3d46ee4 = function_6ada35ba("control_window_shatter_01", "targetname");
	if(isdefined(var_a3d46ee4))
	{
		var_a3d46ee4 function_50ccee8d();
	}
	var_79c2aae5 = function_6ada35ba("boss_hideaway_door", "targetname");
	level thread namespace_71a63eac::function_e0e00797();
	var_c77d2837 = [];
	if(!isdefined(var_c77d2837))
	{
		var_c77d2837 = [];
	}
	else if(!function_6e2770d8(var_c77d2837))
	{
		var_c77d2837 = function_84970cc4(var_c77d2837);
	}
	var_c77d2837[var_c77d2837.size] = self.var_4dbf3ae3.var_aef176e7;
	var_c77d2837["hyperion"] = level.var_2839b910;
	namespace_cc27597::function_8f9f34e0("cin_aqu_07_01_maretti_1st_dropit", &function_f3ee81ce, "skip_started");
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_07_01_maretti_1st_dropit", var_c77d2837);
	namespace_786319bb::function_2085bf94("boss_death_models", 1);
	thread function_2a39915e();
	level namespace_82b91a51::function_ef3f75eb("start_boss_tree");
	namespace_80983c42::function_80983c42("lgt_tree_glow_01");
	if(!level namespace_ad23e503::function_7922262b("sniper_boss_skipped"))
	{
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_786319bb::function_89eaa1b3, 0.5);
	}
	if(isdefined(level.var_3e0291d0))
	{
		[[level.var_3e0291d0]]();
	}
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_05_20_boss_3rd_death_sh010", level.var_2839b910);
	if(isdefined(level.var_3e0291d0))
	{
		[[level.var_3e0291d0]]();
	}
	level waittill("hash_94cdf46c");
	if(isdefined(level.var_3e0291d0))
	{
		[[level.var_3e0291d0]]();
	}
	thread namespace_82b91a51::function_7e61de2b(0.75);
	namespace_80983c42::function_67e7a937("lgt_tree_glow_01");
	level waittill("hash_595107d2");
	if(isdefined(level.var_3e0291d0))
	{
		[[level.var_3e0291d0]]();
	}
	namespace_80983c42::function_67e7a937("lighting_turbine_boss_emergency");
	level namespace_71e9cb84::function_74d6b22f("toggle_fog_banks", 0);
	thread namespace_e2cb8359::function_1d5b05a();
	level.var_24223342 namespace_d84e54db::function_ceb883cd("cqb", 0);
	thread namespace_82b91a51::function_593c2af4(0.5);
	level namespace_ad23e503::function_74d6b22f("hyperion_start_tree_scene");
	namespace_786319bb::function_75ab4ede(1);
	namespace_82b91a51::function_a0938376();
	level.var_2839b910 function_2992720d();
}

/*
	Name: function_f3ee81ce
	Namespace: namespace_cac6a05e
	Checksum: 0x51F8085E
	Offset: 0x2A80
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_f3ee81ce(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("sniper_boss_skipped");
}

/*
	Name: function_2a39915e
	Namespace: namespace_cac6a05e
	Checksum: 0xAA422202
	Offset: 0x2AB8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_2a39915e()
{
	level waittill("hash_6f76bd0d");
	if(!level namespace_ad23e503::function_7922262b("sniper_boss_skipped"))
	{
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_786319bb::function_89eaa1b3, 1);
	}
}

/*
	Name: function_510d0407
	Namespace: namespace_cac6a05e
	Checksum: 0xDAE8E5B1
	Offset: 0x2B20
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_510d0407()
{
	var_de878e17 = function_99201f25("fire_maker", "script_noteworthy");
	level.var_510d0407 = var_de878e17;
	foreach(var_a3d46ee4 in var_de878e17)
	{
		var_a3d46ee4 thread function_d1b143ce();
	}
}

/*
	Name: function_d1b143ce
	Namespace: namespace_cac6a05e
	Checksum: 0x8E0965F0
	Offset: 0x2BF0
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_d1b143ce()
{
	var_e42db353 = undefined;
	if(isdefined(self.var_b07228b6))
	{
		var_e42db353 = function_6ada35ba(self.var_b07228b6, "targetname");
		var_e42db353 function_175e6b8e(0);
		self.var_b07228b6 = undefined;
	}
	var_a3d46ee4 = function_a8fb77bd();
	var_a3d46ee4.var_722885f3 = self.var_722885f3;
	var_a3d46ee4.var_6ab6f4fd = self.var_6ab6f4fd;
	var_5753664b = "boss_fire";
	if(isdefined(self.var_a33b36db))
	{
		var_5753664b = self.var_a33b36db;
	}
	self waittill("hash_6445d1f2");
	function_81403b2f(level.var_510d0407, self);
	if(isdefined(var_e42db353))
	{
		var_e42db353 function_175e6b8e(1);
		function_48a41df0(var_e42db353.var_170527fb, -1, var_a3d46ee4.var_722885f3, 110, 64, "all");
	}
	if(var_5753664b == "boss_fire")
	{
		function_fd4ba5e1(level.var_c1aa5253[var_5753664b], var_a3d46ee4.var_722885f3, function_bc7ce905(var_a3d46ee4.var_6ab6f4fd), function_aba60185(var_a3d46ee4.var_6ab6f4fd));
	}
	else
	{
		namespace_80983c42::function_80983c42(var_5753664b);
	}
}

/*
	Name: function_e146f6ef
	Namespace: namespace_cac6a05e
	Checksum: 0x58F76717
	Offset: 0x2E00
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_e146f6ef()
{
	var_1fdb6a5a = 0;
	var_39c2c150 = undefined;
	var_225046e = level.var_2839b910 function_501eb072();
	foreach(var_a3d46ee4 in level.var_510d0407)
	{
		if(isdefined(var_a3d46ee4) && function_5b49d38c(var_a3d46ee4))
		{
			var_2a97d9fd = function_ca9c8f2b(var_a3d46ee4.var_722885f3);
			if(level.var_c987bca && (var_1fdb6a5a == 0 || var_2a97d9fd < var_1fdb6a5a) && function_e7865c4b(var_225046e, var_a3d46ee4.var_722885f3, 0, undefined))
			{
				var_1fdb6a5a = var_2a97d9fd;
				var_39c2c150 = var_a3d46ee4;
			}
		}
	}
	if(isdefined(var_39c2c150))
	{
		level.var_2839b910.var_9eb700da notify("hash_565daac6");
		level.var_2839b910.var_9eb700da notify("hash_e57ea743");
		level.var_2839b910.var_9eb700da notify("hash_5ee81302");
		wait(0.1);
		if(isdefined(var_39c2c150))
		{
			level.var_2839b910.var_9eb700da namespace_7244fa9b::function_e57ea743(level.var_2839b910 function_501eb072(), var_39c2c150, 1, level.var_2839b910, 1, 0);
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_ca9c8f2b
	Namespace: namespace_cac6a05e
	Checksum: 0x3675E211
	Offset: 0x3038
	Size: 0xE5
	Parameters: 1
	Flags: None
*/
function function_ca9c8f2b(var_22ae8d39)
{
	var_6bed3e53 = 0;
	foreach(var_6b45b25e in level.var_9b1393e7)
	{
		var_2a97d9fd = function_cb3d1c9b(var_6b45b25e.var_722885f3, var_22ae8d39);
		if(var_6bed3e53 == 0 || var_2a97d9fd < var_6bed3e53)
		{
			var_6bed3e53 = var_2a97d9fd;
		}
	}
	return var_6bed3e53;
}

/*
	Name: function_329f82a0
	Namespace: namespace_cac6a05e
	Checksum: 0xC06D7518
	Offset: 0x3128
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_329f82a0()
{
	if(isdefined(level.var_2839b910.var_9eb700da.var_8722cfb))
	{
		var_b07228b6 = level.var_2839b910.var_9eb700da.var_8722cfb;
		var_a24a5370 = function_bc7ce905(level.var_2839b910.var_6ab6f4fd);
		var_2eee0131 = var_b07228b6.var_722885f3 + VectorScale((0, 0, 1), 10);
		if(function_65f192a6(var_b07228b6))
		{
			var_f769885c = (0, 0, 0);
			var_2b04bf92 = var_b07228b6 function_3375c23();
			var_2b04bf92 = var_2b04bf92 * 100;
			if(var_2b04bf92 < function_62e4226e(100))
			{
				var_f769885c = (function_62e4226e(100) - 50, 0, 16);
			}
			var_2eee0131 = var_b07228b6 function_501eb072() + VectorScale((0, 0, -1), 6) + var_f769885c;
		}
		function_87f3c622(function_c4d5ec1f("sniper_hyperion"), level.var_2839b910 function_501eb072() + var_a24a5370 * 20, var_2eee0131, level.var_2839b910);
		return 1;
	}
	return 0;
}

/*
	Name: function_6ea369f7
	Namespace: namespace_cac6a05e
	Checksum: 0x9F2AD4A
	Offset: 0x3300
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_6ea369f7()
{
	var_5948b3df = function_6ada35ba("sniper_alley", "targetname");
	while(!level namespace_ad23e503::function_7922262b("end_battle"))
	{
		var_5948b3df waittill("hash_4dbf3ae3", var_aef176e7);
		if(function_65f192a6(var_aef176e7) && function_5b49d38c(var_aef176e7))
		{
			if(!isdefined(level.var_2839b910.var_67ffdff2))
			{
				function_6485b136(var_aef176e7, 2);
			}
		}
	}
}

/*
	Name: function_6800ac1d
	Namespace: namespace_cac6a05e
	Checksum: 0x7E3AEE9
	Offset: 0x33E0
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_6800ac1d()
{
	var_5948b3df = function_6ada35ba("boss_hack1", "targetname");
	var_d8ef108f = function_6ada35ba("boss_hack2", "targetname");
	var_5948b3df function_175e6b8e(1);
	var_d8ef108f function_175e6b8e(0);
	namespace_84eb777e::function_4d816f2c("cp_level_aquifer_boss");
	var_5948b3df.var_611ccff1 = var_5948b3df namespace_ac959fba::function_68df65d8(5, &"cp_level_aquifer_boss_gen1", &"CP_MI_CAIRO_AQUIFER_HOLD_OVERLOAD", &function_e9c4785f);
	thread function_a354fb63(1);
	level.var_fc9a3509 = 1;
	level waittill("hash_e9c4785f");
	thread namespace_9f824288::function_5d2cdd99();
	var_5948b3df.var_611ccff1 namespace_a230c2b1::function_e54c54c3();
	var_d8ef108f.var_611ccff1 = var_d8ef108f namespace_ac959fba::function_68df65d8(5, &"cp_level_aquifer_boss_gen2", &"CP_MI_CAIRO_AQUIFER_HOLD_OVERLOAD", &function_e9c4785f);
	thread function_a354fb63(2);
	namespace_cc27597::function_c35e6aab("cin_aqu_07_01_maretti_1st_dropit");
	level waittill("hash_e9c4785f");
	thread namespace_9f824288::function_5d2cdd99();
	var_d8ef108f.var_611ccff1 namespace_a230c2b1::function_e54c54c3();
	wait(1.5);
	var_14b42b8a = function_6ada35ba("hyperion_death_origin", "targetname");
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_05_20_boss_3rd_death_debris");
	wait(2.5);
	var_e42db353 = function_6ada35ba("boss_debris_hurter", "targetname");
	var_e42db353 function_175e6b8e(1);
	namespace_786319bb::function_2085bf94("debris_clip", 0);
	wait(0.25);
	var_e42db353 function_175e6b8e(0);
	function_ab171381();
}

/*
	Name: function_e9c4785f
	Namespace: namespace_cac6a05e
	Checksum: 0x668C82C7
	Offset: 0x36D8
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_e9c4785f(var_2e09a44e)
{
	level notify("hash_e9c4785f");
}

/*
	Name: function_dae6fcbf
	Namespace: namespace_cac6a05e
	Checksum: 0x5065867
	Offset: 0x3700
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_dae6fcbf(var_4be20d44)
{
	level endon("hash_221e0b70");
	var_b22ea724 = function_99201f25(var_4be20d44, "targetname");
	var_67520c6a = 3;
	while(1)
	{
		wait(var_67520c6a);
		var_51863d1e = function_26299103(5) + 2;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_51863d1e; var_c957f6b6++)
		{
			namespace_84970cc4::function_eaab05dc(var_b22ea724, &function_50ccee8d);
			wait(function_72a94f05(0.05, 0.2));
			namespace_84970cc4::function_eaab05dc(var_b22ea724, &function_48f26766);
			wait(function_72a94f05(0.05, 0.2));
		}
		var_67520c6a = var_67520c6a / 2;
	}
}

/*
	Name: function_a354fb63
	Namespace: namespace_cac6a05e
	Checksum: 0x24F15820
	Offset: 0x3850
	Size: 0x47F
	Parameters: 1
	Flags: None
*/
function function_a354fb63()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_339776e2
	Namespace: namespace_cac6a05e
	Checksum: 0xEFBD91A2
	Offset: 0x3CD8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_339776e2(var_4be20d44)
{
	var_a3d46ee4 = function_6ada35ba(var_4be20d44, "script_parameters");
	if(isdefined(var_a3d46ee4))
	{
		var_a3d46ee4 function_2992720d();
	}
}

/*
	Name: function_41ca61ef
	Namespace: namespace_cac6a05e
	Checksum: 0xF4BC9FB2
	Offset: 0x3D40
	Size: 0x14D
	Parameters: 1
	Flags: None
*/
function function_41ca61ef(var_791757)
{
	level endon("hash_90029dea");
	if(isdefined(var_791757))
	{
	}
	else
	{
	}
	thread function_dae6fcbf("" + var_791757 + "");
	level thread namespace_1d1d22be::function_ad15f6f5();
	if(isdefined(var_791757))
	{
	}
	else
	{
	}
	var_d88281a1 = "" + var_791757 + "";
	namespace_80983c42::function_80983c42(var_d88281a1 + "_stage01");
	wait(1);
	namespace_80983c42::function_80983c42(var_d88281a1 + "_stage02");
	wait(1);
	namespace_80983c42::function_80983c42(var_d88281a1 + "_stage03");
	wait(2);
	namespace_80983c42::function_80983c42(var_d88281a1 + "_stage04");
	wait(3);
	level notify("hash_2891cea2");
}

/*
	Name: function_567a5fa
	Namespace: namespace_cac6a05e
	Checksum: 0x4E15C84C
	Offset: 0x3E98
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_567a5fa()
{
	level waittill("hash_cd553ae9");
	wait(0.25);
	level.var_24223342 namespace_71b8dba1::function_81141386("hend_maretti_s_locked_him_0");
	wait(3);
	thread function_269260a3();
}

/*
	Name: function_7bde3a88
	Namespace: namespace_cac6a05e
	Checksum: 0x84B478EF
	Offset: 0x3EF8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_7bde3a88()
{
	level endon("hash_9b660c7");
	level namespace_ad23e503::function_1ab5ebec("boss_taunt1");
	wait(3);
	level namespace_ad23e503::function_74d6b22f("boss_convo");
	level.var_24223342 namespace_71b8dba1::function_81141386("hend_maretti_0");
	level.var_24223342 namespace_71b8dba1::function_81141386("hend_maretti_listen_to_0", 1);
	level namespace_71b8dba1::function_a463d127("mare_you_haven_t_learned_0", 0.2);
	level.var_24223342 namespace_71b8dba1::function_81141386("hend_diaz_and_hall_are_de_0", 0.2);
	function_5e1c1c41();
}

/*
	Name: function_ede5a9c3
	Namespace: namespace_cac6a05e
	Checksum: 0x4F9666B
	Offset: 0x3FF8
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_ede5a9c3()
{
	level endon("hash_9b660c7");
	level namespace_ad23e503::function_1ab5ebec("boss_taunt2");
	level namespace_ad23e503::function_74d6b22f("boss_convo");
	level namespace_71b8dba1::function_a463d127("mare_aren_t_you_worried_a_0");
	level.var_24223342 namespace_71b8dba1::function_81141386("hend_maretti_you_know_me_0", 0.5);
	level namespace_71b8dba1::function_a463d127("mare_you_d_better_get_you_1", 1);
	level.var_24223342 namespace_71b8dba1::function_81141386("hend_please_i_give_you_0", 0.2);
	function_5e1c1c41();
	wait(5);
	level namespace_ad23e503::function_74d6b22f("boss_convo");
	level namespace_71b8dba1::function_a463d127("mare_bullet_to_the_head_l_1", 2);
	function_5e1c1c41();
}

/*
	Name: function_80b6b7eb
	Namespace: namespace_cac6a05e
	Checksum: 0x85064DA4
	Offset: 0x4140
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_80b6b7eb()
{
	thread function_7bde3a88();
	thread function_ede5a9c3();
	level namespace_ad23e503::function_d266a8b4(10, "boss_wave1");
	wait(5);
	level namespace_ad23e503::function_74d6b22f("boss_taunt1");
	level namespace_ad23e503::function_1ab5ebec("boss_wave1");
	level namespace_ad23e503::function_d266a8b4(40, "boss_wave2");
	wait(5);
	level namespace_ad23e503::function_74d6b22f("boss_taunt2");
}

/*
	Name: function_5e1c1c41
	Namespace: namespace_cac6a05e
	Checksum: 0xEB0D0FCB
	Offset: 0x4210
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_5e1c1c41()
{
	wait(1);
	level namespace_ad23e503::function_9d134160("boss_convo");
}

/*
	Name: function_aa2bff88
	Namespace: namespace_cac6a05e
	Checksum: 0xB26722A1
	Offset: 0x4240
	Size: 0xC7
	Parameters: 2
	Flags: None
*/
function function_aa2bff88(var_46639773, var_637636ed)
{
	if(!isdefined(var_637636ed))
	{
		var_637636ed = -1;
	}
	if(var_637636ed < 0)
	{
		level namespace_ad23e503::function_d3de6822("boss_convo");
	}
	else if(var_637636ed > 0)
	{
		level namespace_ad23e503::function_d819e202(var_637636ed, "boss_convo");
	}
	if(level namespace_ad23e503::function_7922262b("boss_convo"))
	{
		return 0;
	}
	self namespace_71b8dba1::function_81141386(var_46639773);
	return 1;
}

/*
	Name: function_4463326b
	Namespace: namespace_cac6a05e
	Checksum: 0xB064FA55
	Offset: 0x4310
	Size: 0xB5
	Parameters: 4
	Flags: None
*/
function function_4463326b(var_d44c15f4, var_aa750b18, var_637636ed, var_cfa1fea5)
{
	if(!isdefined(var_aa750b18))
	{
		var_aa750b18 = 10;
	}
	level endon(var_cfa1fea5);
	var_dd9528dc = var_aa750b18;
	var_d16e6be2 = 0;
	while(var_d16e6be2 < var_d44c15f4.size)
	{
		wait(var_dd9528dc);
		level.var_24223342 function_aa2bff88(var_d44c15f4[var_d16e6be2], var_637636ed);
		var_d16e6be2++;
		var_dd9528dc = var_dd9528dc + 5;
	}
}

/*
	Name: function_269260a3
	Namespace: namespace_cac6a05e
	Checksum: 0xCAD9A3BD
	Offset: 0x43D0
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_269260a3()
{
	var_3d2aa310 = [];
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!function_6e2770d8(var_3d2aa310))
	{
		var_3d2aa310 = function_84970cc4(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_overload_that_genera_0";
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!function_6e2770d8(var_3d2aa310))
	{
		var_3d2aa310 = function_84970cc4(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_we_need_that_generat_0";
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!function_6e2770d8(var_3d2aa310))
	{
		var_3d2aa310 = function_84970cc4(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_i_ll_cover_you_over_0";
	thread function_4463326b(var_3d2aa310, undefined, -1, "gen1_done");
	level waittill("hash_6ca7aa5d");
	function_86fc21bb();
}

/*
	Name: function_86fc21bb
	Namespace: namespace_cac6a05e
	Checksum: 0xAD13C5BD
	Offset: 0x4558
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_86fc21bb()
{
	var_3d2aa310 = [];
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!function_6e2770d8(var_3d2aa310))
	{
		var_3d2aa310 = function_84970cc4(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_one_down_2";
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!function_6e2770d8(var_3d2aa310))
	{
		var_3d2aa310 = function_84970cc4(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_move_to_the_next_gen_0";
	thread function_4463326b(var_3d2aa310, undefined, -1, "gen1_done");
}

/*
	Name: function_c3af0181
	Namespace: namespace_cac6a05e
	Checksum: 0x62D99B0D
	Offset: 0x4660
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_c3af0181()
{
	var_3d2aa310 = [];
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!function_6e2770d8(var_3d2aa310))
	{
		var_3d2aa310 = function_84970cc4(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_get_up_there_and_sec_0";
	if(!isdefined(var_3d2aa310))
	{
		var_3d2aa310 = [];
	}
	else if(!function_6e2770d8(var_3d2aa310))
	{
		var_3d2aa310 = function_84970cc4(var_3d2aa310);
	}
	var_3d2aa310[var_3d2aa310.size] = "hend_there_s_a_path_to_ma_0";
	thread function_4463326b(var_3d2aa310, undefined, -1, "start_finale");
}

/*
	Name: function_ae438739
	Namespace: namespace_cac6a05e
	Checksum: 0xD437B39D
	Offset: 0x4768
	Size: 0x147
	Parameters: 1
	Flags: None
*/
function function_ae438739(var_ecd4dcd7)
{
	level endon("hash_9b660c7");
	level endon("hash_128f8789");
	var_543508f0 = [];
	var_543508f0[0] = "hend_keep_your_head_down_1";
	var_543508f0[1] = "hend_watch_it_1";
	var_543508f0[2] = "hend_watch_that_laser_1";
	while(level.var_6343f89f < var_543508f0.size)
	{
		self waittill("hash_f9348fda", var_1e2af8c1, var_a0ad4f34, var_bd00ff2a, var_dd89f865, var_afec04e7);
		if(var_a0ad4f34 == level.var_2839b910 && GetTime() > level.var_9ef3831c + var_ecd4dcd7 * 1000)
		{
			var_f0c8f3cf = level.var_24223342 function_aa2bff88(var_543508f0[level.var_6343f89f], 2);
			if(var_f0c8f3cf)
			{
				level.var_9ef3831c = GetTime();
				level.var_6343f89f++;
			}
		}
	}
}

/*
	Name: function_7a57d63a
	Namespace: namespace_cac6a05e
	Checksum: 0x802E4ABC
	Offset: 0x48B8
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_7a57d63a()
{
	level.var_9ef3831c = 0;
	level.var_6343f89f = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_ae438739(5);
	}
}

/*
	Name: function_3375c23
	Namespace: namespace_cac6a05e
	Checksum: 0xB34A7035
	Offset: 0x4970
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_3375c23()
{
	var_2b04bf92 = 1;
	if(self function_f3b38c23())
	{
		var_2b04bf92 = var_2b04bf92 - 0.1;
	}
	if(self function_5b77ca95())
	{
		var_2b04bf92 = var_2b04bf92 - 0.1;
	}
	var_535cdd65 = self function_1439c75a();
	var_d007da9e = function_73b84f4d(var_535cdd65);
	if(var_d007da9e > 100)
	{
		var_535cdd65 = self function_a4d94983();
		var_8aeaad8d = function_bc7ce905(level.var_2839b910.var_6ab6f4fd);
		var_42bd74de = function_69c2f683(function_5f9a4869(var_535cdd65, var_8aeaad8d));
		var_2b04bf92 = var_2b04bf92 - 1 - var_42bd74de * 0.1;
	}
	return var_2b04bf92;
}


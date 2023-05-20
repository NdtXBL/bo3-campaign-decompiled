#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_objectives;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\voice\voice_prologue;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_2cb3876f;

/*
	Name: function_4e9a52a6
	Namespace: namespace_2cb3876f
	Checksum: 0x78E1AAAB
	Offset: 0x638
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_4e9a52a6()
{
	var_8ea4a872 = self function_21995b5a();
	foreach(var_1d6db0a3 in var_8ea4a872)
	{
		self function_704b802a(var_1d6db0a3);
		self function_67795b5f(var_1d6db0a3, var_1d6db0a3.var_c0b2188);
	}
}

/*
	Name: function_b50f5d52
	Namespace: namespace_2cb3876f
	Checksum: 0xC2501119
	Offset: 0x720
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_b50f5d52(var_76cb0c72)
{
	if(!isdefined(var_76cb0c72))
	{
		var_76cb0c72 = 0;
	}
	var_24bbf032 = function_b8494651("axis");
	foreach(var_2eecd77a in var_24bbf032)
	{
		if(function_5b49d38c(var_2eecd77a))
		{
			if(var_76cb0c72)
			{
				var_2eecd77a namespace_d84e54db::function_8c969347(function_62e4226e(0.25));
				continue;
			}
			var_2eecd77a function_dc8c8404();
		}
	}
}

/*
	Name: function_2f943869
	Namespace: namespace_2cb3876f
	Checksum: 0xB46E4171
	Offset: 0x840
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_2f943869()
{
	self endon("hash_128f8789");
	wait(function_72a94f05(0.1, 0.6));
	self namespace_96fa87af::function_dca9dba2();
	if(isdefined(self.var_caae374e))
	{
		self function_169cc712(function_b4cb3503(self.var_caae374e, "targetname"), 1);
	}
}

/*
	Name: function_77308ba7
	Namespace: namespace_2cb3876f
	Checksum: 0x7FEEC538
	Offset: 0x8D0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_77308ba7()
{
	level.var_5d5055db = 1;
	level namespace_ad23e503::function_2698b54f("is_base_alerted", 1);
	/#
		function_895b00("Dev Block strings are not supported");
	#/
	level namespace_82b91a51::function_ef3f75eb("alarm_on");
	function_37cbcf1a("evt_base_alarm", (-1546, 287, 461));
	wait(2);
	function_37cbcf1a("evt_base_alarm", (-1546, 287, 461));
	wait(2);
	function_37cbcf1a("evt_base_alarm", (-1546, 287, 461));
}

/*
	Name: function_6a5f89cb
	Namespace: namespace_2cb3876f
	Checksum: 0xFAA7B9E0
	Offset: 0x9D8
	Size: 0x4D7
	Parameters: 2
	Flags: None
*/
function function_6a5f89cb(var_1d795d47, var_de2f1b3)
{
	if(!isdefined(var_de2f1b3))
	{
		var_de2f1b3 = 1;
	}
	namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	var_ecd5af4c = function_c4d5ec1f("ar_standard_hero");
	var_5178c24b = function_4bd0142f("scene_debug_player", 0);
	if(!isdefined(level.var_681ad194))
	{
		level.var_681ad194 = [];
	}
	if(var_de2f1b3)
	{
		if(level.var_2395e945.size <= 3 && !isdefined(level.var_681ad194[1]) && var_5178c24b != 2)
		{
			level.var_681ad194[1] = namespace_82b91a51::function_740f8516("ally_03");
			var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_1d795d47 + "_ally_03", "targetname");
			level.var_681ad194[1] function_9869ab67(var_ebe66fdc.var_722885f3, var_ebe66fdc.var_6ab6f4fd);
			level.var_681ad194[1] namespace_d84e54db::function_7901ac63(var_ecd5af4c, "right");
			level.var_681ad194[1].var_a89679b6 = 3;
		}
		if(level.var_2395e945.size <= 2 && !isdefined(level.var_681ad194[2]) && var_5178c24b != 3)
		{
			level.var_681ad194[2] = namespace_82b91a51::function_740f8516("ally_02");
			var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_1d795d47 + "_ally_02", "targetname");
			level.var_681ad194[2] function_9869ab67(var_ebe66fdc.var_722885f3, var_ebe66fdc.var_6ab6f4fd);
			level.var_681ad194[2] namespace_d84e54db::function_7901ac63(var_ecd5af4c, "right");
			level.var_681ad194[2].var_a89679b6 = 2;
		}
		if(level.var_2395e945.size == 1 && !isdefined(level.var_681ad194[3]) && var_5178c24b != 4)
		{
			level.var_681ad194[3] = namespace_82b91a51::function_740f8516("ally_01");
			var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_1d795d47 + "_ally_01", "targetname");
			level.var_681ad194[3] function_9869ab67(var_ebe66fdc.var_722885f3, var_ebe66fdc.var_6ab6f4fd);
			level.var_681ad194[3] namespace_d84e54db::function_7901ac63(var_ecd5af4c, "right");
			level.var_681ad194[3].var_a89679b6 = 1;
		}
	}
	if(level.var_2395e945.size >= 2 && isdefined(level.var_681ad194[3]))
	{
		level.var_681ad194[3] function_dc8c8404();
		level.var_681ad194[3] = undefined;
	}
	if(level.var_2395e945.size >= 3 && isdefined(level.var_681ad194[2]))
	{
		level.var_681ad194[2] function_dc8c8404();
		level.var_681ad194[2] = undefined;
	}
	if(level.var_2395e945.size >= 4 && isdefined(level.var_681ad194[1]))
	{
		level.var_681ad194[1] function_dc8c8404();
		level.var_681ad194[1] = undefined;
	}
}

/*
	Name: function_4e6a4d54
	Namespace: namespace_2cb3876f
	Checksum: 0xE9D943FC
	Offset: 0xEB8
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_4e6a4d54()
{
	self namespace_ad23e503::function_9d134160("custom_loadout");
	self function_fe91f994();
	self.var_3ec4eaaf = function_c4d5ec1f("smg_standard", "grip", "fastreload", "reflex");
	self.var_24c0bfb = function_c4d5ec1f("pistol_standard", "fastreload");
	self function_860a040a(self.var_3ec4eaaf);
	self function_860a040a(self.var_24c0bfb);
	self.var_bd1a8795 = function_c4d5ec1f("frag_grenade");
	self.var_f5ffba49 = function_c4d5ec1f("concussion_grenade");
	self function_860a040a(self.var_bd1a8795);
	self function_860a040a(self.var_f5ffba49);
	var_8ea4a872 = self function_21995b5a();
	foreach(var_1d6db0a3 in var_8ea4a872)
	{
		self function_704b802a(var_1d6db0a3);
		self function_67795b5f(var_1d6db0a3, var_1d6db0a3.var_c0b2188);
	}
	self function_cb53a41e(self.var_3ec4eaaf);
	self namespace_ad23e503::function_74d6b22f("custom_loadout");
}

/*
	Name: function_bee23a9e
	Namespace: namespace_2cb3876f
	Checksum: 0x2C3EF8B9
	Offset: 0x1130
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_bee23a9e(var_96fa87af, var_f3a8e7d6)
{
	var_96fa87af waittill("hash_6cf6ac7e");
	var_96fa87af function_14c24d9d();
	namespace_d5067552::function_bae40a28(var_f3a8e7d6);
}

/*
	Name: function_35be2939
	Namespace: namespace_2cb3876f
	Checksum: 0x68F83483
	Offset: 0x1190
	Size: 0x177
	Parameters: 2
	Flags: None
*/
function function_35be2939(var_5d370658, var_4afdd260)
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 8;
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self function_169cc712(self.var_722885f3);
	level namespace_ad23e503::function_1ab5ebec(var_5d370658);
	self.var_7dfaf62 = 32;
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	if(isdefined(self.var_b07228b6))
	{
		var_90ca1fdd = function_fe0cfd2e(self.var_b07228b6, "targetname");
		var_5e76f0af = function_dc99997a(0, var_90ca1fdd.size);
		self function_169cc712(var_90ca1fdd[var_5e76f0af], 1);
	}
	if(isdefined(var_4afdd260))
	{
		self waittill("hash_41d1aaf0");
		self.var_7dfaf62 = var_4afdd260;
	}
}

/*
	Name: function_6ee0e1a5
	Namespace: namespace_2cb3876f
	Checksum: 0x55DB82BC
	Offset: 0x1310
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_6ee0e1a5()
{
	if(!isdefined(level.var_681ad194))
	{
		return [];
	}
	for(var_c957f6b6 = 1; var_c957f6b6 < 4; var_c957f6b6++)
	{
		if(!isdefined(level.var_681ad194[var_c957f6b6]) || !function_5b49d38c(level.var_681ad194[var_c957f6b6]))
		{
			level.var_681ad194[var_c957f6b6] = undefined;
		}
	}
	return function_41f575c3(level.var_681ad194);
}

/*
	Name: function_125042c0
	Namespace: namespace_2cb3876f
	Checksum: 0x41F55383
	Offset: 0x13B8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_125042c0()
{
	var_2a04238a = function_525ae497(function_3f10449f(), level.var_681ad194, 0, 0);
	return var_2a04238a;
}

/*
	Name: function_8abaca05
	Namespace: namespace_2cb3876f
	Checksum: 0xFB51D0FD
	Offset: 0x1408
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_8abaca05()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 64;
	self.var_c584775c = 1;
	var_22752fde = function_b4cb3503(self.var_db7bb468, "targetname");
	while(1)
	{
		self function_169cc712(var_22752fde.var_722885f3);
		self waittill("hash_41d1aaf0");
		if(!isdefined(var_22752fde.var_db7bb468))
		{
			break;
		}
		var_22752fde = function_b4cb3503(var_22752fde.var_db7bb468, "targetname");
	}
}

/*
	Name: function_67877d47
	Namespace: namespace_2cb3876f
	Checksum: 0x65C8BA8F
	Offset: 0x14E8
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_67877d47(var_41d1aaf0)
{
	var_22752fde = function_b4cb3503(var_41d1aaf0, "targetname");
	self function_169cc712(var_22752fde, 1);
	self waittill("hash_41d1aaf0");
}

/*
	Name: function_94d4d33b
	Namespace: namespace_2cb3876f
	Checksum: 0xFFDF55CE
	Offset: 0x1550
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_94d4d33b()
{
	self.var_7dfaf62 = 512;
}

/*
	Name: function_45a98c2a
	Namespace: namespace_2cb3876f
	Checksum: 0xC656DAB5
	Offset: 0x1568
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_45a98c2a()
{
	self.var_7dfaf62 = 16;
}

/*
	Name: function_117ca7f4
	Namespace: namespace_2cb3876f
	Checksum: 0xDDF05E53
	Offset: 0x1580
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_117ca7f4(var_ab891f49)
{
	self function_86408aa8(var_ab891f49);
}

/*
	Name: function_29c76f59
	Namespace: namespace_2cb3876f
	Checksum: 0x5D0F7F48
	Offset: 0x15B0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_29c76f59()
{
	var_ffdd18ce = self function_e7353088();
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
	self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "run");
	self function_ca711294(var_ffdd18ce);
	if(level.var_2395e945.size > 1)
	{
		self.var_3a90f16b = function_b6b79a0(self.var_3a90f16b * 1.4);
	}
}

/*
	Name: function_bd761fba
	Namespace: namespace_2cb3876f
	Checksum: 0x1399FCEA
	Offset: 0x1688
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_bd761fba(var_4ac85f5f)
{
	self endon("hash_128f8789");
	self namespace_37b990db::function_bae40a28(1, 0);
	level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	self thread function_3a642801();
}

/*
	Name: function_9af14b02
	Namespace: namespace_2cb3876f
	Checksum: 0xEC12A697
	Offset: 0x16F8
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_9af14b02(var_4ac85f5f, var_78962fff)
{
	self endon("hash_128f8789");
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	self waittill("hash_12513ad8");
	self namespace_37b990db::function_d104c596(level.var_1eb7e8f5, var_78962fff, undefined, 1, 0);
	self namespace_37b990db::function_bae40a28(1, 1);
	level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	self thread function_3a642801();
}

/*
	Name: function_1db6047f
	Namespace: namespace_2cb3876f
	Checksum: 0x44911C51
	Offset: 0x17E0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_1db6047f(var_5dfe8937)
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec(var_5dfe8937);
	self function_dc8c8404();
}

/*
	Name: function_3a642801
	Namespace: namespace_2cb3876f
	Checksum: 0x7545FA71
	Offset: 0x1830
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_3a642801()
{
	foreach(var_402c598a in self.var_d925663e)
	{
		if(isdefined(var_402c598a))
		{
			var_402c598a function_dc8c8404();
		}
	}
	level namespace_ad23e503::function_d3de6822("deleting_havok_object");
	level namespace_ad23e503::function_74d6b22f("deleting_havok_object");
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
	wait(0.05);
	level namespace_ad23e503::function_9d134160("deleting_havok_object");
}

/*
	Name: function_73acb160
	Namespace: namespace_2cb3876f
	Checksum: 0x7C0D79ED
	Offset: 0x1978
	Size: 0x8D
	Parameters: 2
	Flags: None
*/
function function_73acb160(var_a9ea049a, var_6fa56358)
{
	var_da1cc39e = function_99201f25(var_a9ea049a, "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_da1cc39e.size; var_c957f6b6++)
	{
		level thread function_1f89893f(var_da1cc39e[var_c957f6b6], var_6fa56358);
	}
}

/*
	Name: function_1f89893f
	Namespace: namespace_2cb3876f
	Checksum: 0x4E7812AE
	Offset: 0x1A10
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_1f89893f(var_1178f0f3, var_6fa56358)
{
	if(isdefined(var_1178f0f3.var_eb328a48))
	{
		wait(var_1178f0f3.var_eb328a48);
	}
	var_4c9c8550 = var_1178f0f3 namespace_2f06d687::function_9b7fda5e();
	if(isdefined(var_6fa56358))
	{
		var_4c9c8550 thread [[var_6fa56358]]();
	}
}

/*
	Name: function_c47ce0e9
	Namespace: namespace_2cb3876f
	Checksum: 0xE4AD8B64
	Offset: 0x1A90
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c47ce0e9()
{
	self.var_d937392f = 0;
}

/*
	Name: function_40e4b0cf
	Namespace: namespace_2cb3876f
	Checksum: 0x3ED4D89F
	Offset: 0x1AA8
	Size: 0x11B
	Parameters: 3
	Flags: None
*/
function function_40e4b0cf(var_f3a8e7d6, var_a9ea049a, var_c5690501)
{
	var_da1cc39e = function_99201f25(var_a9ea049a, "targetname");
	var_67825717 = function_6ada35ba(var_c5690501, "targetname");
	foreach(var_1c779b09 in var_da1cc39e)
	{
		var_1c779b09 namespace_2f06d687::function_994832bd(&function_117ca7f4, var_67825717);
	}
	namespace_d5067552::function_bae40a28(var_f3a8e7d6);
}

/*
	Name: function_a7eac508
	Namespace: namespace_2cb3876f
	Checksum: 0xFA4A8E40
	Offset: 0x1BD0
	Size: 0xDD
	Parameters: 4
	Flags: None
*/
function function_a7eac508(var_28c25ffb, var_4ac59d48, var_84fffedf, var_a4652398)
{
	var_c77d2837 = function_99201f25(var_28c25ffb, "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_c77d2837.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_c77d2837[var_c957f6b6] namespace_2f06d687::function_9b7fda5e();
		if(isdefined(var_4ac59d48))
		{
			var_4c9c8550.var_7dfaf62 = 64;
		}
		var_4c9c8550 thread function_8e9f617f(var_84fffedf, var_a4652398);
	}
}

/*
	Name: function_8e9f617f
	Namespace: namespace_2cb3876f
	Checksum: 0x168577CE
	Offset: 0x1CB8
	Size: 0x5F
	Parameters: 2
	Flags: None
*/
function function_8e9f617f(var_84fffedf, var_a4652398)
{
	self endon("hash_128f8789");
	if(isdefined(var_a4652398) && var_a4652398)
	{
		self.var_a4652398 = 1;
	}
	self waittill("hash_41d1aaf0");
	if(isdefined(var_84fffedf))
	{
		self.var_7dfaf62 = var_84fffedf;
	}
}

/*
	Name: function_8f7b1e06
	Namespace: namespace_2cb3876f
	Checksum: 0x82A25A05
	Offset: 0x1D20
	Size: 0x16D
	Parameters: 3
	Flags: None
*/
function function_8f7b1e06(var_db803bcf, var_390543cc, var_9d774f5d)
{
	if(isdefined(var_db803bcf))
	{
		var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
		var_f92a03e7 waittill("hash_4dbf3ae3");
	}
	var_441bd962 = function_6ada35ba(var_390543cc, "targetname");
	var_ee2fd889 = function_6ada35ba(var_9d774f5d, "targetname");
	var_e3b635fb = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6];
		if(var_4c9c8550 function_32fa5072(var_441bd962))
		{
			var_4c9c8550 function_169cc712(var_ee2fd889);
			var_4c9c8550 thread function_8e9f617f(undefined, 0);
		}
	}
}

/*
	Name: function_9d611fab
	Namespace: namespace_2cb3876f
	Checksum: 0x9F4BF0C8
	Offset: 0x1E98
	Size: 0x197
	Parameters: 2
	Flags: None
*/
function function_9d611fab(var_7ce28596, var_e209da48)
{
	var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_7ce28596, "targetname");
	var_d91de807 = function_bc7ce905(var_ebe66fdc.var_6ab6f4fd);
	while(1)
	{
		var_226231f3 = 0;
		var_5ddef2e5 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
		{
			var_6bfe1586 = var_5ddef2e5[var_c957f6b6];
			var_a080d759 = function_f679a325(var_6bfe1586.var_722885f3 - var_ebe66fdc.var_722885f3);
			var_c6c121c9 = function_5f9a4869(var_a080d759, var_d91de807);
			if(var_c6c121c9 > 0.3)
			{
				var_226231f3++;
			}
		}
		if(isdefined(var_e209da48) && var_226231f3 >= var_5ddef2e5.size)
		{
			break;
		}
		if(var_226231f3 == var_5ddef2e5.size)
		{
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_12ce22ee
	Namespace: namespace_2cb3876f
	Checksum: 0x9F2B3A9
	Offset: 0x2038
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_12ce22ee()
{
	level.var_933bbc2c = [];
	if(isdefined(level.var_681ad194[1]))
	{
		function_1c2beb2b(level.var_933bbc2c, level.var_681ad194[1], 0);
	}
	if(isdefined(level.var_681ad194[2]))
	{
		function_1c2beb2b(level.var_933bbc2c, level.var_681ad194[2], 0);
	}
	if(isdefined(level.var_681ad194[3]))
	{
		function_1c2beb2b(level.var_933bbc2c, level.var_681ad194[3], 0);
	}
}

/*
	Name: function_520255e3
	Namespace: namespace_2cb3876f
	Checksum: 0x9A4B819A
	Offset: 0x2100
	Size: 0x75
	Parameters: 2
	Flags: None
*/
function function_520255e3(var_db803bcf, var_60db70fa)
{
	var_8b453fd2 = "mufc_" + var_db803bcf;
	level thread function_901793d(var_db803bcf, var_8b453fd2);
	level thread function_2ffbaa00(var_60db70fa, var_8b453fd2);
	level waittill(var_8b453fd2);
}

/*
	Name: function_901793d
	Namespace: namespace_2cb3876f
	Checksum: 0x2F242981
	Offset: 0x2180
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_901793d(var_db803bcf, var_8b453fd2)
{
	level endon(var_8b453fd2);
	var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
	if(isdefined(var_f92a03e7))
	{
		var_f92a03e7 waittill("hash_4dbf3ae3");
	}
	level notify(var_8b453fd2);
}

/*
	Name: function_2ffbaa00
	Namespace: namespace_2cb3876f
	Checksum: 0x25B5A3A8
	Offset: 0x21F8
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_2ffbaa00(var_60db70fa, var_8b453fd2)
{
	level endon(var_8b453fd2);
	wait(var_60db70fa);
	level notify(var_8b453fd2);
}

/*
	Name: function_c66bcbfb
	Namespace: namespace_2cb3876f
	Checksum: 0x422FADE6
	Offset: 0x2230
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_c66bcbfb(var_722885f3)
{
	return function_cbc4f0b(var_722885f3, var_722885f3 + VectorScale((0, 0, -1), 100000), 0, undefined, 1)["position"];
}

/*
	Name: function_609c412a
	Namespace: namespace_2cb3876f
	Checksum: 0x8D9FD110
	Offset: 0x2280
	Size: 0x14D
	Parameters: 2
	Flags: None
*/
function function_609c412a(var_8a7c6b8f, var_3dd53e00)
{
	var_67825717 = function_6ada35ba(var_8a7c6b8f, "targetname");
	var_f04bd8f5 = 0;
	var_e3b635fb = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		if(var_e3b635fb[var_c957f6b6] function_32fa5072(var_67825717))
		{
			var_f04bd8f5++;
		}
	}
	if(var_3dd53e00)
	{
		var_5ddef2e5 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
		{
			if(var_5ddef2e5[var_c957f6b6] function_32fa5072(var_67825717))
			{
				var_f04bd8f5++;
				break;
			}
		}
	}
	return var_f04bd8f5;
}

/*
	Name: function_15823dab
	Namespace: namespace_2cb3876f
	Checksum: 0x9645485A
	Offset: 0x23D8
	Size: 0xA5
	Parameters: 6
	Flags: None
*/
function function_15823dab(var_c55dcd82, var_e59cf42f, var_6ccc6b67, var_e64e30a6, var_46a3ff93, var_6bfe1586)
{
	if(var_e59cf42f)
	{
		function_9cf04c2e(var_e59cf42f, var_6ccc6b67, var_c55dcd82, var_e64e30a6);
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_46a3ff93; var_c957f6b6++)
	{
		var_6bfe1586 function_e2af603e("damage_heavy");
		wait(0.1);
	}
}

/*
	Name: function_2747b8e1
	Namespace: namespace_2cb3876f
	Checksum: 0x8EF2B3E2
	Offset: 0x2488
	Size: 0x6B
	Parameters: 4
	Flags: None
*/
function function_2747b8e1(var_7b81749, var_5d22719a, var_7b4a2690, var_4c9c8550)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_7b4a2690; var_c957f6b6++)
	{
		var_4c9c8550 function_e2af603e(var_7b81749);
		wait(var_5d22719a);
	}
}

/*
	Name: function_2a0bc326
	Namespace: namespace_2cb3876f
	Checksum: 0x56A27373
	Offset: 0x2500
	Size: 0x151
	Parameters: 7
	Flags: None
*/
function function_2a0bc326(var_c55dcd82, var_48f82942, var_51fbdea, var_644bf6a7, var_8f4ca4be, var_11fed455, var_183c13ad)
{
	if(!isdefined(var_11fed455))
	{
		var_11fed455 = "damage_heavy";
	}
	if(var_48f82942)
	{
		function_9cf04c2e(var_48f82942, var_51fbdea, var_c55dcd82, var_644bf6a7);
	}
	var_5ca58060 = var_644bf6a7 * var_644bf6a7;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_183c13ad))
		{
			var_5dc5e20a function_f1aa5a21(var_183c13ad, var_51fbdea);
		}
		var_5dc5e20a thread function_e42cebb6(var_c55dcd82, var_5ca58060, var_8f4ca4be, var_11fed455);
	}
}

/*
	Name: function_e42cebb6
	Namespace: namespace_2cb3876f
	Checksum: 0x8B6F6E0
	Offset: 0x2660
	Size: 0x9D
	Parameters: 4
	Flags: None
*/
function function_e42cebb6(var_c55dcd82, var_5ca58060, var_8f4ca4be, var_11fed455)
{
	self endon("hash_128f8789");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8f4ca4be; var_c957f6b6++)
	{
		if(function_cb3d1c9b(var_c55dcd82, self.var_722885f3) <= var_5ca58060)
		{
			self function_e2af603e(var_11fed455);
		}
		wait(0.1);
	}
}

/*
	Name: function_dacec601
	Namespace: namespace_2cb3876f
	Checksum: 0xAEEBDA79
	Offset: 0x2708
	Size: 0x153
	Parameters: 6
	Flags: None
*/
function function_dacec601(var_11fed455, var_74584a64, var_48f82942, var_97301e07, var_562b538e, var_637636ed)
{
	if(!isdefined(var_11fed455))
	{
		var_11fed455 = "damage_light";
	}
	if(!isdefined(var_48f82942))
	{
		var_48f82942 = 0.1;
	}
	if(!isdefined(var_97301e07))
	{
		var_97301e07 = 0.1;
	}
	if(!isdefined(var_562b538e))
	{
		var_562b538e = 2000;
	}
	if(isdefined(var_74584a64))
	{
		self endon(var_74584a64);
	}
	self endon("hash_128f8789");
	var_c3adecbb = 0;
	var_ab216c38 = 0;
	while(!var_ab216c38)
	{
		self function_e2af603e(var_11fed455);
		function_9cf04c2e(var_48f82942, var_97301e07, self.var_722885f3, var_562b538e);
		wait(var_97301e07);
		if(isdefined(var_637636ed) && var_637636ed > 0)
		{
			var_c3adecbb = var_c3adecbb + var_97301e07;
			var_ab216c38 = var_c3adecbb >= var_637636ed;
		}
	}
}

/*
	Name: function_47a62798
	Namespace: namespace_2cb3876f
	Checksum: 0x34F94EE5
	Offset: 0x2868
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_47a62798(var_de243c2)
{
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", var_de243c2);
	var_3ced446f = function_6ee0e1a5();
	foreach(var_3b8db917 in var_3ced446f)
	{
		var_3b8db917 namespace_d84e54db::function_ceb883cd("cqb", var_de243c2);
	}
}

/*
	Name: function_a5398264
	Namespace: namespace_2cb3876f
	Checksum: 0x63CE418D
	Offset: 0x2958
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_a5398264(var_803d80bc)
{
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("move_mode", var_803d80bc);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("move_mode", var_803d80bc);
	level.var_4d5a4697 namespace_d84e54db::function_ceb883cd("move_mode", var_803d80bc);
	var_3ced446f = function_6ee0e1a5();
	foreach(var_3b8db917 in var_3ced446f)
	{
		var_3b8db917 namespace_d84e54db::function_ceb883cd("move_mode", var_803d80bc);
	}
}

/*
	Name: function_db027040
	Namespace: namespace_2cb3876f
	Checksum: 0x8122F065
	Offset: 0x2A98
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_db027040(var_eb6e3c93)
{
	level.var_2fd26037.var_5ed2f6d3 = var_eb6e3c93;
	level.var_9db406db.var_5ed2f6d3 = var_eb6e3c93;
	level.var_4d5a4697.var_5ed2f6d3 = var_eb6e3c93;
	var_3ced446f = function_6ee0e1a5();
	foreach(var_3b8db917 in var_3ced446f)
	{
		var_3b8db917.var_5ed2f6d3 = var_eb6e3c93;
	}
}

/*
	Name: function_fcb42941
	Namespace: namespace_2cb3876f
	Checksum: 0x9B8C579E
	Offset: 0x2B90
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_fcb42941(var_67825717)
{
	var_5ddef2e5 = function_3f10449f();
	var_f04bd8f5 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
	{
		if(var_5ddef2e5[var_c957f6b6] function_32fa5072(var_67825717))
		{
			var_f04bd8f5++;
		}
	}
	return var_f04bd8f5;
}

/*
	Name: function_68b8f4af
	Namespace: namespace_2cb3876f
	Checksum: 0xC5B61D73
	Offset: 0x2C30
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_68b8f4af(var_67825717)
{
	var_e3b635fb = function_b8494651("axis");
	var_4c8fa27e = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		if(var_e3b635fb[var_c957f6b6] function_32fa5072(var_67825717))
		{
			var_4c8fa27e[var_4c8fa27e.size] = var_e3b635fb[var_c957f6b6];
		}
	}
	return var_4c8fa27e;
}

/*
	Name: function_d1f1caad
	Namespace: namespace_2cb3876f
	Checksum: 0x9BB4FE63
	Offset: 0x2CE8
	Size: 0x51
	Parameters: 1
	Flags: None
*/
function function_d1f1caad(var_db803bcf)
{
	var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
	if(isdefined(var_f92a03e7))
	{
		var_f92a03e7 waittill("hash_4dbf3ae3");
	}
}

/*
	Name: function_e0fb6da9
	Namespace: namespace_2cb3876f
	Checksum: 0x603F00D9
	Offset: 0x2D48
	Size: 0x413
	Parameters: 8
	Flags: None
*/
function function_e0fb6da9(var_7ce28596, var_de195f66, var_3865186, var_d1b83750, var_b61ce032, var_a70db4af, var_1813646e, var_98e9bc46)
{
	var_5ddef2e5 = function_3f10449f();
	if(var_5ddef2e5.size > 1)
	{
		return;
	}
	var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_7ce28596, "targetname");
	var_37124366 = function_6ada35ba(var_1813646e, "targetname");
	var_7d22b48e = function_6ada35ba(var_98e9bc46, "targetname");
	var_d230ad83 = function_bc7ce905(var_ebe66fdc.var_6ab6f4fd);
	var_ebe66fdc.var_f721d9a5 = undefined;
	var_cc06a93d = 0;
	while(1)
	{
		var_6bfe1586 = function_3f10449f()[0];
		var_a080d759 = var_ebe66fdc.var_722885f3 - var_6bfe1586.var_722885f3;
		var_989d1f7c = function_5f9a4869(var_a080d759, var_d230ad83);
		if(var_989d1f7c < -100)
		{
			return;
		}
		var_2a97d9fd = function_7d15e2f8(var_ebe66fdc.var_722885f3, var_6bfe1586.var_722885f3);
		if(var_2a97d9fd < var_de195f66)
		{
			if(!isdefined(var_ebe66fdc.var_f721d9a5))
			{
				var_ebe66fdc.var_f721d9a5 = GetTime();
			}
		}
		else
		{
			var_ebe66fdc.var_f721d9a5 = undefined;
		}
		if(isdefined(var_ebe66fdc.var_f721d9a5))
		{
			var_60db70fa = GetTime();
			var_5ecb0b6d = var_60db70fa - var_ebe66fdc.var_f721d9a5 / 1000;
			if(var_5ecb0b6d > var_3865186)
			{
				var_e3b635fb = function_b8494651("axis");
				var_4c8fa27e = [];
				for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
				{
					var_4c9c8550 = var_e3b635fb[var_c957f6b6];
					if(!isdefined(var_4c9c8550.var_db552f4))
					{
						if(var_4c9c8550 function_32fa5072(var_37124366))
						{
							var_4c8fa27e[var_4c8fa27e.size] = var_4c9c8550;
						}
					}
				}
				var_d6f9eed8 = function_dc99997a(var_d1b83750, var_b61ce032 + 1);
				if(var_d6f9eed8 > var_4c8fa27e.size)
				{
					var_d6f9eed8 = var_4c8fa27e.size;
				}
				for(var_c957f6b6 = 0; var_c957f6b6 < var_d6f9eed8; var_c957f6b6++)
				{
					var_4c8fa27e[var_c957f6b6] function_169cc712(var_7d22b48e);
					var_4c8fa27e[var_c957f6b6].var_db552f4 = 1;
				}
				var_ebe66fdc.var_f721d9a5 = undefined;
				var_cc06a93d++;
				if(var_cc06a93d >= var_a70db4af)
				{
					return;
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_f5363f47
	Namespace: namespace_2cb3876f
	Checksum: 0xC814AFD3
	Offset: 0x3168
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function function_f5363f47(var_db803bcf)
{
	var_e9ddc8f2 = function_99201f25(var_db803bcf, "targetname");
	var_8b453fd2 = var_db803bcf + "_waiting";
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e9ddc8f2.size; var_c957f6b6++)
	{
		level thread function_7eb8a7ab(var_e9ddc8f2[var_c957f6b6], var_8b453fd2);
	}
	level waittill(var_8b453fd2);
}

/*
	Name: function_7eb8a7ab
	Namespace: namespace_2cb3876f
	Checksum: 0x20F40BD9
	Offset: 0x3218
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_7eb8a7ab(var_f92a03e7, var_8b453fd2)
{
	level endon(var_8b453fd2);
	var_f92a03e7 waittill("hash_4dbf3ae3");
	level notify(var_8b453fd2);
}

/*
	Name: function_25e841ea
	Namespace: namespace_2cb3876f
	Checksum: 0xAF85B09
	Offset: 0x3258
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_25e841ea()
{
	if(!isdefined(level.var_c6c69fca))
	{
		level.var_c6c69fca = 1;
	}
}

/*
	Name: function_92d5b013
	Namespace: namespace_2cb3876f
	Checksum: 0x89790420
	Offset: 0x3280
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_92d5b013(var_dea13075)
{
	var_5ddef2e5 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
	{
		var_5ddef2e5[var_c957f6b6] function_5a7dd25d(var_dea13075);
	}
}

/*
	Name: function_a9c39c8b
	Namespace: namespace_2cb3876f
	Checksum: 0x8F74D4BE
	Offset: 0x3300
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_a9c39c8b(var_4c9c8550)
{
	var_4c9c8550 endon("hash_128f8789");
	while(1)
	{
		var_489b2980 = var_4c9c8550.var_722885f3;
		var_491bc153 = var_489b2980 + VectorScale((0, 0, 1), 1000);
		var_5a02fb8a = (1, 1, 1);
		/#
			function_4e418837(var_489b2980, var_491bc153, var_5a02fb8a);
		#/
		wait(0.1);
	}
}

/*
	Name: function_42da021e
	Namespace: namespace_2cb3876f
	Checksum: 0x9A1F4332
	Offset: 0x33A8
	Size: 0x1FB
	Parameters: 4
	Flags: None
*/
function function_42da021e(var_c335265b, var_4c026543, var_61e0b19a, var_e3f49331)
{
	if(!isdefined(var_e3f49331))
	{
		var_e3f49331 = 0;
	}
	var_28290004 = var_c335265b + "_end";
	var_2ef9d306 = namespace_96fa87af::function_7387a40a(var_c335265b);
	var_2ef9d306 endon("hash_128f8789");
	var_2ef9d306 thread function_dacec601("buzz_high", var_28290004, 0.05, 0.1, 5000);
	var_3c54858a = function_243bb261(var_2ef9d306.var_b07228b6, "targetname");
	var_2ef9d306 function_5c586b0b(var_3c54858a);
	if(isdefined(var_4c026543))
	{
		if(!isdefined(var_61e0b19a))
		{
			var_2ef9d306 function_333fd8f0(var_4c026543);
		}
		else
		{
			var_2ef9d306 function_333fd8f0(var_4c026543, var_61e0b19a);
		}
	}
	if(var_e3f49331)
	{
		var_2ef9d306 thread function_c56034b7();
	}
	var_2ef9d306 function_d142a882();
	var_2ef9d306 waittill("hash_6cf6ac7e");
	var_2ef9d306 notify(var_28290004);
	var_2ef9d306.var_3e3a41eb = 1;
	var_2ef9d306 notify("hash_128f8789");
	if(!function_5b49d38c(var_2ef9d306))
	{
		var_2ef9d306 function_dc8c8404();
	}
}

/*
	Name: function_c56034b7
	Namespace: namespace_2cb3876f
	Checksum: 0x51593EA8
	Offset: 0x35B0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c56034b7()
{
	function_da6acfd2(level.var_c1aa5253["vtol_rotorwash"], self, "tag_engine_left");
	function_da6acfd2(level.var_c1aa5253["vtol_rotorwash"], self, "tag_engine_right");
}

/*
	Name: function_950d1c3b
	Namespace: namespace_2cb3876f
	Checksum: 0x17055E82
	Offset: 0x3620
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_950d1c3b(var_864a3d55)
{
	if(!isdefined(var_864a3d55))
	{
		var_864a3d55 = 1;
	}
	if(var_864a3d55)
	{
	}
	else
	{
	}
	var_9dff5377 = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("player_tunnel_dust_fx", var_9dff5377);
	}
}

/*
	Name: function_34acbf2
	Namespace: namespace_2cb3876f
	Checksum: 0x618401CA
	Offset: 0x3700
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_34acbf2()
{
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_locate_the_security_room");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_security_camera");
}

/*
	Name: function_df278013
	Namespace: namespace_2cb3876f
	Checksum: 0xF592198C
	Offset: 0x3740
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_df278013()
{
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_free_the_minister");
}

/*
	Name: function_9d35b20d
	Namespace: namespace_2cb3876f
	Checksum: 0x8C2A8F46
	Offset: 0x3768
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9d35b20d()
{
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_free_khalil");
}

/*
	Name: function_cfabe921
	Namespace: namespace_2cb3876f
	Checksum: 0xD5B75E0A
	Offset: 0x3790
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_cfabe921()
{
	function_34acbf2();
	function_df278013();
	function_9d35b20d();
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_find_vehicle");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_defend_theia");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_goto_exfil");
}

/*
	Name: function_21f52196
	Namespace: namespace_2cb3876f
	Checksum: 0x7957A931
	Offset: 0x3818
	Size: 0x213
	Parameters: 3
	Flags: None
*/
function function_21f52196(var_ba740f55, var_b3268be4, var_13aabd08)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b3268be4), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b3268be4.var_b07228b6), "Dev Block strings are not supported");
	#/
	level endon("stop_door_" + var_ba740f55);
	var_aa79ca36 = function_6ada35ba(var_b3268be4.var_b07228b6, "targetname");
	var_b3268be4 thread function_e0f9fe98(var_ba740f55, 0);
	var_aa79ca36 thread function_e0f9fe98(var_ba740f55, 1);
	if(isdefined(var_13aabd08))
	{
		var_dee3d10a = function_6ada35ba(var_13aabd08, "targetname");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_dee3d10a), "Dev Block strings are not supported");
		#/
		var_dee3d10a endon("hash_128f8789");
		var_dee3d10a waittill("hash_c0b9931e");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(!isdefined(var_5dc5e20a.var_db8e4d94))
			{
				var_5dc5e20a.var_db8e4d94 = [];
			}
			var_5dc5e20a.var_db8e4d94[var_ba740f55] = 1;
		}
	}
}

/*
	Name: function_2e61b3e8
	Namespace: namespace_2cb3876f
	Checksum: 0x8E318DD5
	Offset: 0x3A38
	Size: 0x171
	Parameters: 3
	Flags: None
*/
function function_2e61b3e8(var_ba740f55, var_b3268be4, var_e3b635fb)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b3268be4), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b3268be4.var_b07228b6), "Dev Block strings are not supported");
	#/
	level endon("stop_door_" + var_ba740f55);
	var_aa79ca36 = function_6ada35ba(var_b3268be4.var_b07228b6, "targetname");
	if(!isdefined(level.var_40c4c9da))
	{
		level.var_40c4c9da = [];
	}
	level.var_40c4c9da[var_ba740f55] = var_e3b635fb;
	foreach(var_5abbae22 in var_e3b635fb)
	{
		var_aa79ca36 thread function_e010251d(var_ba740f55, 1, var_5abbae22);
	}
}

/*
	Name: function_e0f9fe98
	Namespace: namespace_2cb3876f
	Checksum: 0x7D7ABC3B
	Offset: 0x3BB8
	Size: 0xA5
	Parameters: 2
	Flags: None
*/
function function_e0f9fe98(var_ba740f55, var_ca4b1dc7)
{
	level endon("stop_door_" + var_ba740f55);
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_65669d7b);
		if(function_65f192a6(var_65669d7b))
		{
			if(!isdefined(var_65669d7b.var_db8e4d94))
			{
				var_65669d7b.var_db8e4d94 = [];
			}
			var_65669d7b.var_db8e4d94[var_ba740f55] = var_ca4b1dc7;
		}
	}
}

/*
	Name: function_e010251d
	Namespace: namespace_2cb3876f
	Checksum: 0xE1160CC3
	Offset: 0x3C68
	Size: 0xF5
	Parameters: 3
	Flags: None
*/
function function_e010251d(var_ba740f55, var_ca4b1dc7, var_5abbae22)
{
	level endon("stop_door_" + var_ba740f55);
	self endon("hash_128f8789");
	if(!isdefined(var_5abbae22.var_db8e4d94))
	{
		var_5abbae22.var_db8e4d94 = [];
	}
	var_5abbae22.var_db8e4d94[var_ba740f55] = 0;
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_65669d7b);
		if(function_e70ab977(var_65669d7b) && var_65669d7b == var_5abbae22)
		{
			if(!isdefined(var_65669d7b.var_db8e4d94))
			{
				var_65669d7b.var_db8e4d94 = [];
			}
			var_65669d7b.var_db8e4d94[var_ba740f55] = var_ca4b1dc7;
		}
	}
}

/*
	Name: function_cdd726fb
	Namespace: namespace_2cb3876f
	Checksum: 0xC46A2E05
	Offset: 0x3D68
	Size: 0x1DF
	Parameters: 1
	Flags: None
*/
function function_cdd726fb(var_ba740f55)
{
	var_83b77796 = 1;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(!isdefined(var_5dc5e20a.var_db8e4d94) || !isdefined(var_5dc5e20a.var_db8e4d94[var_ba740f55]) || !var_5dc5e20a.var_db8e4d94[var_ba740f55])
		{
			var_83b77796 = 0;
		}
	}
	if(isdefined(level.var_40c4c9da) && isdefined(level.var_40c4c9da[var_ba740f55]))
	{
		foreach(var_5abbae22 in level.var_40c4c9da[var_ba740f55])
		{
			if(function_5b49d38c(var_5abbae22) && (!isdefined(var_5abbae22.var_db8e4d94) || !isdefined(var_5abbae22.var_db8e4d94[var_ba740f55]) || !var_5abbae22.var_db8e4d94[var_ba740f55]))
			{
				var_83b77796 = 0;
			}
		}
	}
	return var_83b77796;
}

/*
	Name: function_d990de5a
	Namespace: namespace_2cb3876f
	Checksum: 0x53789E04
	Offset: 0x3F50
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_d990de5a(var_b3268be4)
{
	var_aa79ca36 = function_6ada35ba(var_b3268be4.var_b07228b6, "targetname");
	var_b3268be4 function_dc8c8404();
	var_aa79ca36 function_dc8c8404();
}

/*
	Name: function_d723979e
	Namespace: namespace_2cb3876f
	Checksum: 0x7A6832D0
	Offset: 0x3FC8
	Size: 0x5B
	Parameters: 3
	Flags: None
*/
function function_d723979e(var_8b453fd2, var_748c4478, var_aa686173)
{
	self endon("hash_128f8789");
	if(isdefined(var_aa686173))
	{
		level endon(var_aa686173);
	}
	self waittill(var_8b453fd2);
	self function_e48f905e(var_748c4478);
}

/*
	Name: function_72e9bdb8
	Namespace: namespace_2cb3876f
	Checksum: 0x628F057D
	Offset: 0x4030
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_72e9bdb8()
{
	if(self function_e025daa7())
	{
		return self function_84368297("highestMapReached") > 0;
	}
	else
	{
		return self function_84368297("PlayerStatsByMap", "cp_mi_eth_prologue", "hasBeenCompleted");
	}
}


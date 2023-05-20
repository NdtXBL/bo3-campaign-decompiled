#using scripts\cp\_callbacks;
#using scripts\cp\_laststand;
#using scripts\cp\_tacticalinsertion;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_tacticalinsertion;

#namespace namespace_52deffe2;

/*
	Name: function_2dc19561
	Namespace: namespace_52deffe2
	Checksum: 0x540FC76F
	Offset: 0x3D0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("spawning", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_52deffe2
	Checksum: 0xB3039495
	Offset: 0x410
	Size: 0x1ED
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level function_620c7d91();
	level.var_1368baf2 = [];
	foreach(var_3e94206a in level.var_e7a38025)
	{
		level.var_1368baf2[var_3e94206a] = namespace_82b91a51::function_fea19444();
	}
	namespace_dabbe128::function_83731a3f(&function_603848d5);
	level.var_cf312ce0 = function_92a88da3("spawnprotectiontime");
	if(isdefined(level.var_cf312ce0))
	{
	}
	else
	{
	}
	level.var_fbe364 = function_b6b79a0(0 * 1000);
	/#
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		level.var_cac7cd0f = 0;
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
	return;
}

/*
	Name: function_620c7d91
	Namespace: namespace_52deffe2
	Checksum: 0x9A62A900
	Offset: 0x608
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_620c7d91()
{
	level.var_4e502529 = function_a8fb77bd();
	var_4e502529 = level.var_4e502529;
	if(!isdefined(var_4e502529.var_65810d4))
	{
		var_4e502529.var_65810d4 = 1;
	}
	var_4e502529.var_452f5127 = 0;
	var_4e502529.var_2aed6335 = [];
	var_4e502529.var_643946d2 = 1;
	var_4e502529.var_2aed6335["free"] = var_4e502529.var_643946d2;
	var_22d21e6e = var_4e502529.var_643946d2;
	var_74952a22 = 1;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		var_4e502529.var_2aed6335[var_3e94206a] = 1 << var_74952a22;
		var_22d21e6e = var_22d21e6e | var_4e502529.var_2aed6335[var_3e94206a];
		var_74952a22++;
	}
	var_4e502529.var_2aed6335["all"] = var_22d21e6e;
}

/*
	Name: function_603848d5
	Namespace: namespace_52deffe2
	Checksum: 0x8581FB98
	Offset: 0x7C8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_603848d5()
{
	level endon("hash_c8ab51de");
	self function_9ae08d74(GetTime());
	self thread function_be02cc45();
	self thread function_4383d23d();
	self thread function_dab1f598();
}

/*
	Name: function_be02cc45
	Namespace: namespace_52deffe2
	Checksum: 0x74004CDA
	Offset: 0x840
	Size: 0x10F
	Parameters: 0
	Flags: None
*/
function function_be02cc45()
{
	self endon("hash_643a7daf");
	self endon("hash_80c60f54");
	level endon("hash_c8ab51de");
	self namespace_ad23e503::function_c35e6aab("player_has_red_flashing_overlay");
	self namespace_ad23e503::function_c35e6aab("player_is_invulnerable");
	for(;;)
	{
		self waittill("hash_8d7b7db3");
		if(isdefined(self.var_44fb8955["hasRadar"]) && self.var_44fb8955["hasRadar"])
		{
			self.var_dcba9cef = 1;
		}
		self function_8dcfabdd(1);
		self thread namespace_6c41e242::function_d1591847();
		self thread function_f87d22c8();
		self namespace_564407fb::function_6ff364df();
	}
}

/*
	Name: function_f87d22c8
	Namespace: namespace_52deffe2
	Checksum: 0xCB9A2035
	Offset: 0x958
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_f87d22c8()
{
	self endon("hash_643a7daf");
	self endon("hash_80c60f54");
	level endon("hash_c8ab51de");
	self waittill("hash_128f8789");
	self function_8dcfabdd(0);
	level function_b943e01d("friend_dead", self.var_722885f3, self.var_3e94206a);
}

/*
	Name: function_4383d23d
	Namespace: namespace_52deffe2
	Checksum: 0x532D9359
	Offset: 0x9E0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_4383d23d()
{
	self endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	self endon("hash_7b1c9d84");
	while(1)
	{
		self waittill("hash_48e2debe");
		self function_8b8b26c2();
		wait(0.05);
	}
}

/*
	Name: function_dab1f598
	Namespace: namespace_52deffe2
	Checksum: 0xB030B128
	Offset: 0xA48
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_dab1f598()
{
	self endon("hash_643a7daf");
	self endon("hash_e9460c7d");
	level endon("hash_c8ab51de");
	while(1)
	{
		self waittill("hash_e5ccf3dc", var_f461b5d, var_dfcc01fd);
		level thread function_4ef230d3(self.var_44fb8955["team"], var_dfcc01fd, var_f461b5d);
		wait(0.05);
	}
}

/*
	Name: function_3e135528
	Namespace: namespace_52deffe2
	Checksum: 0x440CA423
	Offset: 0xAE0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_3e135528(var_3e94206a)
{
	if(level.var_de12b72f)
	{
		var_5b09f715 = namespace_82b91a51::function_a2358f90(var_3e94206a);
	}
	else
	{
		var_5b09f715 = level.var_4e502529.var_643946d2;
	}
	return var_5b09f715;
}

/*
	Name: function_ca533271
	Namespace: namespace_52deffe2
	Checksum: 0xA92E677C
	Offset: 0xB40
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_ca533271(var_3e94206a)
{
	if(level.var_de12b72f)
	{
		var_5b09f715 = namespace_82b91a51::function_1ca58d67(var_3e94206a);
	}
	else
	{
		var_5b09f715 = level.var_4e502529.var_643946d2;
	}
	return var_5b09f715;
}

/*
	Name: function_fa67201d
	Namespace: namespace_52deffe2
	Checksum: 0x859F2FAC
	Offset: 0xBA0
	Size: 0x67
	Parameters: 3
	Flags: None
*/
function function_fa67201d(var_4be20d44, var_722885f3, var_5b09f715)
{
	self.var_ad2b0cdf[var_4be20d44] = function_da5e9997(var_4be20d44, var_722885f3, var_5b09f715);
	self thread function_69a99c0d();
	return self.var_ad2b0cdf[var_4be20d44];
}

/*
	Name: function_b943e01d
	Namespace: namespace_52deffe2
	Checksum: 0x369DE698
	Offset: 0xC10
	Size: 0x77
	Parameters: 3
	Flags: None
*/
function function_b943e01d(var_4be20d44, var_722885f3, var_3e94206a)
{
	var_5b09f715 = self function_3e135528(var_3e94206a);
	self.var_fd6df31a[var_4be20d44] = function_fa67201d(var_4be20d44, var_722885f3, var_5b09f715);
	return self.var_fd6df31a[var_4be20d44];
}

/*
	Name: function_eddb7236
	Namespace: namespace_52deffe2
	Checksum: 0xCE625553
	Offset: 0xC90
	Size: 0x77
	Parameters: 3
	Flags: None
*/
function function_eddb7236(var_4be20d44, var_722885f3, var_3e94206a)
{
	var_5b09f715 = self function_ca533271(var_3e94206a);
	self.var_15cca7f1[var_4be20d44] = function_fa67201d(var_4be20d44, var_722885f3, var_5b09f715);
	return self.var_15cca7f1[var_4be20d44];
}

/*
	Name: function_4e9efa49
	Namespace: namespace_52deffe2
	Checksum: 0x4142A6B8
	Offset: 0xD10
	Size: 0x5F
	Parameters: 2
	Flags: None
*/
function function_4e9efa49(var_4be20d44, var_5b09f715)
{
	self.var_ad2b0cdf[var_4be20d44] = function_d372200e(var_4be20d44, self, var_5b09f715);
	self thread function_69a99c0d();
	return self.var_ad2b0cdf[var_4be20d44];
}

/*
	Name: function_febc81f1
	Namespace: namespace_52deffe2
	Checksum: 0xACFB3DB
	Offset: 0xD78
	Size: 0x49
	Parameters: 1
	Flags: None
*/
function function_febc81f1(var_4be20d44)
{
	var_5b09f715 = self function_3e135528();
	return self function_f6de1bb7(var_4be20d44, var_5b09f715);
}

/*
	Name: function_f93165aa
	Namespace: namespace_52deffe2
	Checksum: 0x87F6F8FD
	Offset: 0xDD0
	Size: 0x51
	Parameters: 2
	Flags: None
*/
function function_f93165aa(var_4be20d44, var_3e94206a)
{
	var_5b09f715 = self function_ca533271(var_3e94206a);
	return self function_63c74f54(var_4be20d44, var_5b09f715);
}

/*
	Name: function_f6de1bb7
	Namespace: namespace_52deffe2
	Checksum: 0xBD462A64
	Offset: 0xE30
	Size: 0x4F
	Parameters: 2
	Flags: None
*/
function function_f6de1bb7(var_4be20d44, var_5b09f715)
{
	self.var_fd6df31a[var_4be20d44] = self function_4e9efa49(var_4be20d44, var_5b09f715);
	return self.var_fd6df31a[var_4be20d44];
}

/*
	Name: function_63c74f54
	Namespace: namespace_52deffe2
	Checksum: 0x5F67B743
	Offset: 0xE88
	Size: 0x4F
	Parameters: 2
	Flags: None
*/
function function_63c74f54(var_4be20d44, var_5b09f715)
{
	self.var_15cca7f1[var_4be20d44] = self function_4e9efa49(var_4be20d44, var_5b09f715);
	return self.var_15cca7f1[var_4be20d44];
}

/*
	Name: function_918f66b2
	Namespace: namespace_52deffe2
	Checksum: 0x4B5B2F5C
	Offset: 0xEE0
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_918f66b2()
{
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(self.var_ad2b0cdf));
	#/
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(self.var_ad2b0cdf));
	#/
	if(!level.var_de12b72f)
	{
		var_5b09f715 = level.var_4e502529.var_643946d2;
		var_60af072 = level.var_4e502529.var_643946d2;
		var_fde2fcfe = level.var_4e502529.var_643946d2;
	}
	else if(isdefined(self.var_44fb8955["team"]))
	{
		var_3e94206a = self.var_44fb8955["team"];
		var_5b09f715 = namespace_82b91a51::function_a2358f90(var_3e94206a);
		var_8f232c47 = namespace_82b91a51::function_1ca58d67(var_3e94206a);
	}
	else
	{
		var_5b09f715 = 0;
		var_8f232c47 = 0;
	}
	var_6ab6f4fd = self.var_6ab6f4fd;
	var_722885f3 = self.var_722885f3;
	var_b5f6560e = (0, 0, 1);
	var_1a859714 = (1, 0, 0);
	self.var_ad2b0cdf = [];
	self.var_c26174e8 = [];
	self.var_5aee941d = [];
	self function_63c74f54("enemy", var_8f232c47);
	if(level.var_de12b72f)
	{
		self function_f6de1bb7("friend", var_5b09f715);
	}
	if(!isdefined(self.var_44fb8955["team"]) || self.var_44fb8955["team"] == "spectator")
	{
		self function_c47d28b5(0);
	}
}

/*
	Name: function_614b1f50
	Namespace: namespace_52deffe2
	Checksum: 0x7ABEF93A
	Offset: 0x1118
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_614b1f50()
{
	foreach(var_b860b29c in self.var_ad2b0cdf)
	{
		function_a27f6840(var_b860b29c);
	}
	self.var_ad2b0cdf = [];
	if(isdefined(self.var_fd6df31a))
	{
		self.var_fd6df31a = [];
	}
	if(isdefined(self.var_15cca7f1))
	{
		self.var_15cca7f1 = [];
	}
}

/*
	Name: function_69a99c0d
	Namespace: namespace_52deffe2
	Checksum: 0x20E411C5
	Offset: 0x11E8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_69a99c0d()
{
	self endon("hash_128f8789");
	self notify("hash_69a99c0d");
	self endon("hash_69a99c0d");
	self waittill("hash_74b79a2d", var_5e76f0af);
	function_81403b2f(self.var_ad2b0cdf, var_5e76f0af);
	if(isdefined(self.var_fd6df31a))
	{
		function_81403b2f(self.var_fd6df31a, var_5e76f0af);
	}
	if(isdefined(self.var_15cca7f1))
	{
		function_81403b2f(self.var_15cca7f1, var_5e76f0af);
	}
	self thread function_69a99c0d();
}

/*
	Name: function_c47d28b5
	Namespace: namespace_52deffe2
	Checksum: 0x569707BD
	Offset: 0x12B8
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_c47d28b5(var_b55533bc)
{
	foreach(var_b860b29c in self.var_ad2b0cdf)
	{
		function_4189cc7d(var_b860b29c, var_b55533bc);
	}
}

/*
	Name: function_8dcfabdd
	Namespace: namespace_52deffe2
	Checksum: 0xE7718DE5
	Offset: 0x1360
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_8dcfabdd(var_b55533bc)
{
	if(!isdefined(self.var_ad2b0cdf))
	{
		self function_918f66b2();
	}
	self function_c47d28b5(var_b55533bc);
}

/*
	Name: function_8b8b26c2
	Namespace: namespace_52deffe2
	Checksum: 0x2C59CBAF
	Offset: 0x13B0
	Size: 0x1C9
	Parameters: 0
	Flags: None
*/
function function_8b8b26c2()
{
	if(!level.var_de12b72f)
	{
		var_5b09f715 = level.var_4e502529.var_643946d2;
		var_8f232c47 = level.var_4e502529.var_643946d2;
	}
	else
	{
		var_3e94206a = self.var_44fb8955["team"];
		var_5b09f715 = namespace_82b91a51::function_a2358f90(var_3e94206a);
		var_8f232c47 = namespace_82b91a51::function_1ca58d67(var_3e94206a);
	}
	if(isdefined(self.var_fd6df31a))
	{
		foreach(var_b860b29c in self.var_fd6df31a)
		{
			function_f9395eb9(var_b860b29c, var_5b09f715);
		}
	}
	else if(isdefined(self.var_15cca7f1))
	{
		foreach(var_b860b29c in self.var_15cca7f1)
		{
			function_f9395eb9(var_b860b29c, var_8f232c47);
		}
	}
}

/*
	Name: function_4ef230d3
	Namespace: namespace_52deffe2
	Checksum: 0xE7627E1E
	Offset: 0x1588
	Size: 0x113
	Parameters: 3
	Flags: None
*/
function function_4ef230d3(var_fae9ae9b, var_dfcc01fd, var_f461b5d)
{
	function_c22bfa61("create_grenade_influencers");
	var_13cda9dc = var_dfcc01fd.var_f8693ab7;
	if(isdefined(var_f461b5d.var_722885f3) && var_13cda9dc != "")
	{
		if(!level.var_de12b72f)
		{
			var_fde2fcfe = level.var_4e502529.var_643946d2;
		}
		else
		{
			var_fde2fcfe = namespace_82b91a51::function_1ca58d67(var_fae9ae9b);
			if(level.var_98df9150)
			{
				var_fde2fcfe = var_fde2fcfe | namespace_82b91a51::function_a2358f90(var_fae9ae9b);
			}
		}
		var_f461b5d function_63c74f54(var_13cda9dc, var_fde2fcfe);
	}
	function_7905cb51();
}

/*
	Name: function_1fd0742f
	Namespace: namespace_52deffe2
	Checksum: 0x977BE2DA
	Offset: 0x16A8
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_1fd0742f()
{
	var_f0d50698 = function_99201f25("mp_uspawn_influencer", "classname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_f0d50698.size; var_c957f6b6++)
	{
		var_b65b1731 = var_f0d50698[var_c957f6b6];
		function_f6b6842c(var_b65b1731);
	}
}

/*
	Name: function_f6b6842c
	Namespace: namespace_52deffe2
	Checksum: 0x26A664DC
	Offset: 0x1738
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_f6b6842c(var_ca9d1fa2)
{
	var_72de8d4c = -1;
	if(isdefined(var_ca9d1fa2.var_9a8a862c))
	{
		var_5b09f715 = namespace_82b91a51::function_a2358f90(var_ca9d1fa2.var_a3b61124);
		level function_eddb7236(var_ca9d1fa2.var_9a8a862c, var_ca9d1fa2.var_722885f3, var_5b09f715);
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported");
	}
	/#
	#/
	return var_72de8d4c;
}

/*
	Name: function_ca8dbdcd
	Namespace: namespace_52deffe2
	Checksum: 0xB6F71348
	Offset: 0x17F0
	Size: 0x2F9
	Parameters: 0
	Flags: None
*/
function function_ca8dbdcd()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		function_db51ac16(var_3e94206a);
	}
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(level.var_d0602b51[var_3e94206a].var_f96bc9fe.size > 254)
		{
			level.var_d0602b51[var_3e94206a].var_d3694f95 = namespace_84970cc4::function_4097a53e(namespace_84970cc4::function_8332f7f6(level.var_d0602b51[var_3e94206a].var_f96bc9fe), 254);
			continue;
		}
		level.var_d0602b51[var_3e94206a].var_d3694f95 = level.var_d0602b51[var_3e94206a].var_f96bc9fe;
	}
	function_6bc0d94();
	if(level.var_de12b72f)
	{
		foreach(var_3e94206a in level.var_e7a38025)
		{
			function_159b2a8e(var_3e94206a, level.var_d0602b51[var_3e94206a].var_d3694f95);
		}
		break;
	}
	foreach(var_3e94206a in level.var_e7a38025)
	{
		function_159b2a8e("free", level.var_d0602b51[var_3e94206a].var_d3694f95);
	}
}

/*
	Name: function_a326dcf3
	Namespace: namespace_52deffe2
	Checksum: 0x3668EBCC
	Offset: 0x1AF8
	Size: 0x339
	Parameters: 1
	Flags: None
*/
function function_a326dcf3(var_b530240c)
{
	if(!isdefined(var_b530240c))
	{
		var_b530240c = 0;
	}
	/#
		if(function_4bd0142f("Dev Block strings are not supported") != 0)
		{
			var_18196fa5 = function_a13eb9b(self);
			self function_9b7fda5e(var_18196fa5.var_722885f3, var_18196fa5.var_6ab6f4fd);
			return;
		}
	#/
	var_f4354fc7 = 1;
	var_d86a048f = 1;
	if(isdefined(self.var_4bf187e9))
	{
		var_d86a048f = !self.var_4bf187e9;
	}
	if(level.var_a93e40a6)
	{
		var_f4354fc7 = 0;
	}
	if(level.var_76c6e677 == "sd")
	{
		var_f4354fc7 = 0;
	}
	namespace_82b91a51::function_c25dc80f("scr_spawn_force_unified", "0");
	var_a2cfb26 = self namespace_b313ba29::function_962eb8ae(var_b530240c);
	if(var_f4354fc7 || function_4bd0142f("scr_spawn_force_unified") != 0)
	{
		if(!var_a2cfb26)
		{
			var_18196fa5 = function_fe9b0dce(self, var_b530240c);
			if(isdefined(var_18196fa5))
			{
				var_722885f3 = var_18196fa5["origin"];
				var_6ab6f4fd = var_18196fa5["angles"];
				if(var_b530240c)
				{
					self function_c2ea5e7d(var_722885f3, var_6ab6f4fd);
				}
				else
				{
					level function_eddb7236("enemy_spawn", var_722885f3, self.var_44fb8955["team"]);
					self function_9b7fda5e(var_722885f3, var_6ab6f4fd);
				}
			}
			else
			{
				function_895b00("Dev Block strings are not supported");
				namespace_dabbe128::function_7668abe();
			}
			/#
			#/
		}
		else if(var_b530240c && isdefined(self.var_b313ba29))
		{
			self function_c2ea5e7d(self.var_b313ba29.var_722885f3, self.var_b313ba29.var_6ab6f4fd);
		}
		if(!var_b530240c)
		{
			self.var_f5190531 = GetTime();
			self function_8dcfabdd(1);
		}
	}
	else if(!var_a2cfb26)
	{
		[[level.var_19bc9234]](var_b530240c);
	}
	if(!var_b530240c)
	{
		self.var_4bf187e9 = 1;
	}
	return;
}

/*
	Name: function_fe9b0dce
	Namespace: namespace_52deffe2
	Checksum: 0xD9DF1758
	Offset: 0x1E40
	Size: 0x147
	Parameters: 2
	Flags: None
*/
function function_fe9b0dce(var_b23421b4, var_b530240c)
{
	if(!isdefined(var_b530240c))
	{
		var_b530240c = 0;
	}
	if(level.var_de12b72f)
	{
		var_526e0ac3 = var_b23421b4.var_44fb8955["team"];
		var_26d6a650 = var_b23421b4.var_44fb8955["team"];
	}
	else
	{
		var_526e0ac3 = "free";
		var_26d6a650 = "free";
	}
	if(level.var_de12b72f && isdefined(game["switchedsides"]) && game["switchedsides"] && level.var_4e502529.var_65810d4)
	{
		var_526e0ac3 = namespace_82b91a51::function_fad13578(var_526e0ac3);
	}
	var_80495c3 = function_73abee32(var_526e0ac3, var_26d6a650, var_b23421b4, var_b530240c);
	if(!var_b530240c)
	{
		var_b23421b4.var_5793da66 = var_80495c3["origin"];
	}
	return var_80495c3;
}

/*
	Name: function_a13eb9b
	Namespace: namespace_52deffe2
	Checksum: 0x3954692E
	Offset: 0x1F90
	Size: 0x279
	Parameters: 1
	Flags: None
*/
function function_a13eb9b(var_5dc5e20a)
{
	if(level.var_de12b72f)
	{
		var_3e94206a = var_5dc5e20a.var_44fb8955["team"];
	}
	else
	{
		var_3e94206a = "free";
	}
	var_5e76f0af = level.var_cac7cd0f;
	level.var_cac7cd0f++;
	if(var_3e94206a == "free")
	{
		var_4435912d = 0;
		foreach(var_3e94206a in level.var_e7a38025)
		{
			var_4435912d = var_4435912d + level.var_d0602b51[var_3e94206a].var_f96bc9fe.size;
		}
		if(level.var_cac7cd0f >= var_4435912d)
		{
			level.var_cac7cd0f = 0;
		}
		var_74952a22 = 0;
		foreach(var_3e94206a in level.var_e7a38025)
		{
			var_982bfcf2 = level.var_d0602b51[var_3e94206a].var_f96bc9fe.size;
			if(level.var_cac7cd0f < var_74952a22 + var_982bfcf2)
			{
				return level.var_d0602b51[var_3e94206a].var_f96bc9fe[level.var_cac7cd0f - var_74952a22];
			}
			var_74952a22 = var_74952a22 + var_982bfcf2;
		}
	}
	else if(level.var_cac7cd0f >= level.var_d0602b51[var_3e94206a].var_f96bc9fe.size)
	{
		level.var_cac7cd0f = 0;
	}
	return level.var_d0602b51[var_3e94206a].var_f96bc9fe[level.var_cac7cd0f];
}

/*
	Name: function_73abee32
	Namespace: namespace_52deffe2
	Checksum: 0xC03231C1
	Offset: 0x2218
	Size: 0xE7
	Parameters: 4
	Flags: None
*/
function function_73abee32(var_526e0ac3, var_26d6a650, var_5dc5e20a, var_b530240c)
{
	if(level.var_de12b72f)
	{
		var_ed297a0e = namespace_82b91a51::function_1ca58d67(var_5dc5e20a.var_44fb8955["team"]);
	}
	else
	{
		var_ed297a0e = level.var_4e502529.var_643946d2;
	}
	var_18196fa5 = function_4bc3d80(var_526e0ac3, var_26d6a650, var_ed297a0e, var_5dc5e20a, var_b530240c);
	if(!var_b530240c)
	{
		function_3aedd0a2("mpspawnpointsused", "reason %s x %d y %d z %d", "point used", var_18196fa5["origin"]);
	}
	return var_18196fa5;
}

/*
	Name: function_db51ac16
	Namespace: namespace_52deffe2
	Checksum: 0x4A8E881A
	Offset: 0x2308
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_db51ac16(var_2e708b3e)
{
	if(!isdefined(level.var_d0602b51))
	{
		level.var_d0602b51 = [];
	}
	else if(isdefined(level.var_d0602b51[var_2e708b3e]))
	{
		return level.var_d0602b51[var_2e708b3e];
	}
	var_11d9e12a = namespace_82b91a51::function_fea19444();
	var_11d9e12a.var_f96bc9fe = namespace_4a43ba8::function_7f4a71b0(var_2e708b3e);
	if(!isdefined(var_11d9e12a.var_f96bc9fe))
	{
		var_11d9e12a.var_f96bc9fe = [];
	}
	level.var_d0602b51[var_2e708b3e] = var_11d9e12a;
	return var_11d9e12a;
}

/*
	Name: function_d8e23996
	Namespace: namespace_52deffe2
	Checksum: 0x2B1CA5F9
	Offset: 0x23D8
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_d8e23996()
{
	return isdefined(level.var_50527ffe) && level.var_50527ffe;
}

/*
	Name: function_f705b237
	Namespace: namespace_52deffe2
	Checksum: 0x3E96C146
	Offset: 0x23F8
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_f705b237(var_b309dab7, var_41026b7c)
{
	if(!isdefined(var_b309dab7) || !isdefined(var_41026b7c) || level.var_76c6e677 == "dm")
	{
		return 1;
	}
	return var_b309dab7 != "neutral" && var_41026b7c != "neutral" && var_b309dab7 != var_41026b7c;
}

/*
	Name: function_d8628a3b
	Namespace: namespace_52deffe2
	Checksum: 0xFAC80733
	Offset: 0x2478
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_d8628a3b(var_8d8007e7)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
	{
		var_8d8007e7[var_c957f6b6] function_dc8c8404();
	}
}

/*
	Name: function_79666696
	Namespace: namespace_52deffe2
	Checksum: 0x2D1FB159
	Offset: 0x24D8
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_79666696(var_4be20d44)
{
	if(!isdefined(level.var_32ef48c5))
	{
		return 0;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_32ef48c5.size; var_c957f6b6++)
	{
		if(level.var_32ef48c5[var_c957f6b6] == var_4be20d44)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_75cd83b3
	Namespace: namespace_52deffe2
	Checksum: 0xD0D50385
	Offset: 0x2548
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_75cd83b3()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		namespace_4a43ba8::function_e50ff400(var_3e94206a);
	}
	level.var_d0602b51 = undefined;
	function_ca8dbdcd();
}

/*
	Name: function_1cb9860
	Namespace: namespace_52deffe2
	Checksum: 0xFFECC0DB
	Offset: 0x25F8
	Size: 0x157
	Parameters: 2
	Flags: None
*/
function function_1cb9860(var_3e94206a, var_58320f6e)
{
	var_a6321583 = var_3e94206a;
	if(!level.var_c906d2a3 && game["switchedsides"])
	{
		var_a6321583 = namespace_82b91a51::function_fad13578(var_3e94206a);
	}
	if(level.var_c906d2a3)
	{
		if(var_3e94206a == "axis")
		{
			var_a6321583 = "team1";
		}
		else if(var_3e94206a == "allies")
		{
			var_a6321583 = "team2";
		}
		if(!namespace_82b91a51::function_5b94904d())
		{
			var_d3fa0a6a = function_b6b79a0(function_f45850ec(var_a6321583, 4, 5)) - 1;
			var_d3fa0a6a = var_d3fa0a6a + game["roundsplayed"] % level.var_e7a38025.size + 1;
			var_a6321583 = "team" + var_d3fa0a6a;
		}
	}
	return var_58320f6e + "_" + var_a6321583 + "_start";
}

/*
	Name: function_7c010ed4
	Namespace: namespace_52deffe2
	Checksum: 0x9DF47E96
	Offset: 0x2758
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function function_7c010ed4(var_3e94206a)
{
	return function_1cb9860(var_3e94206a, "mp_tdm_spawn");
}


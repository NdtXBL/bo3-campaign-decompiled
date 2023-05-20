#using scripts\codescripts\struct;
#using scripts\cp\_bb;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_weapons;

#namespace namespace_c034d2a8;

/*
	Name: function_2dc19561
	Namespace: namespace_c034d2a8
	Checksum: 0x6A74FB30
	Offset: 0x5A0
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("cp_mobile_armory", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_c034d2a8
	Checksum: 0x811C6AA6
	Offset: 0x5E8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("toplayer", "mobile_armory_cac", 1, 4, "int");
}

/*
	Name: function_5b6b9132
	Namespace: namespace_c034d2a8
	Checksum: 0x97DB59A0
	Offset: 0x628
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	if(function_27c72c1b())
	{
		return;
	}
	else if(isdefined(level.var_40b3237f))
	{
		[[level.var_40b3237f]]();
	}
	wait(0.05);
	var_9f34c934 = function_99201f25("mobile_armory", "script_noteworthy");
	foreach(var_96eb5b14 in var_9f34c934)
	{
		function_9b385ca5();
		var_c034d2a8 = var_b4b9e1e4;
		function_c3b04569(var_c034d2a8);
	}
}

#namespace namespace_b4b9e1e4;

/*
	Name: function_9b385ca5
	Namespace: namespace_b4b9e1e4
	Checksum: 0x99EC1590
	Offset: 0x748
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_5fba2032
	Namespace: namespace_b4b9e1e4
	Checksum: 0x99EC1590
	Offset: 0x758
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_c3b04569
	Namespace: namespace_b4b9e1e4
	Checksum: 0x50923CCC
	Offset: 0x768
	Size: 0x503
	Parameters: 1
	Flags: None
*/
function function_c3b04569(var_96eb5b14)
{
	var_da697227 = function_9b7fda5e("trigger_radius_use", var_96eb5b14.var_722885f3 + VectorScale((0, 0, 1), 24), 0, 94, 64);
	var_da697227 function_1d5013fa();
	var_da697227 function_bb863f19();
	var_da697227 function_1f80b3d5();
	var_da697227 function_dc378587("none");
	var_da697227 function_e68ee88a("HINT_INTERACTIVE_PROMPT");
	var_da697227 function_d5eb00e3(&"COOP_SELECT_LOADOUT");
	if(isdefined(var_96eb5b14.var_9194748))
	{
		var_1063f543 = function_6ada35ba(var_96eb5b14.var_9194748, "targetname");
		var_96eb5b14 function_37f7858a(var_1063f543);
		var_da697227 function_8f279593();
		var_da697227 function_37f7858a(var_1063f543);
	}
	var_96eb5b14 namespace_16f9ecd3::function_e228c18a(1);
	var_96eb5b14 function_db20c8d6("tag_weapons_01_jnt");
	var_96eb5b14 function_db20c8d6("tag_weapons_02_jnt");
	var_96eb5b14 function_db20c8d6("tag_weapons_03_jnt");
	var_96eb5b14 function_db20c8d6("tag_weapons_04_jnt");
	var_96e62168 = namespace_a230c2b1::function_be21f511("any", var_da697227, function_84970cc4(var_96eb5b14), VectorScale((0, 0, 1), 68), &"cp_mobile_armory");
	var_96e62168 namespace_a230c2b1::function_1e5cb2cc("any");
	var_96e62168 namespace_a230c2b1::function_df0e9e69(0.35);
	var_96e62168 namespace_a230c2b1::function_1bf6799b(&"COOP_SELECT_LOADOUT");
	var_96e62168 namespace_a230c2b1::function_a09b1ac1("allies");
	var_96e62168 namespace_a230c2b1::function_bd903f5c("any");
	var_96e62168.var_3c8ea097 = &function_3c8ea097;
	var_96e62168.var_cfce9b82 = &function_cfce9b82;
	var_96e62168.var_a454a59a = &function_a454a59a;
	var_96e62168.var_2fc89bb6 = 1;
	var_96e62168.var_8de097e2 = undefined;
	var_96e62168.var_db0f901 = 0;
	var_96e62168.var_3f743272 = self;
	var_96e62168.var_722885f3 = var_96eb5b14.var_722885f3;
	var_96e62168.var_6ab6f4fd = var_96e62168.var_6ab6f4fd;
	if(!isdefined(var_96eb5b14.var_9194748))
	{
		var_96e62168 function_8f279593();
		var_96e62168 function_37f7858a(var_da697227);
	}
	var_96eb5b14.var_e119970e = var_96e62168;
	self.var_ab455203 = var_96eb5b14;
	self.var_ab455203.var_ce22f999 = 0;
	var_bd13c94b = function_9b7fda5e("trigger_radius", var_da697227.var_722885f3, 0, 94, 64);
	var_bd13c94b function_bb863f19();
	var_bd13c94b function_dc378587("allies");
	var_bd13c94b thread function_e76edd0b(self.var_ab455203);
	self.var_ab455203 thread function_71f6269a(var_bd13c94b);
}

/*
	Name: function_cfce9b82
	Namespace: namespace_b4b9e1e4
	Checksum: 0x7389B2E6
	Offset: 0xC78
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_cfce9b82(var_6bfe1586)
{
	var_6bfe1586 function_921a1574("fly_ammo_crate_refill");
	var_6bfe1586 namespace_82b91a51::function_f9e9f0f0();
	var_6bfe1586 namespace_957e94ce::function_74d6b22f("mobile_armory_begin_use");
}

/*
	Name: function_a454a59a
	Namespace: namespace_b4b9e1e4
	Checksum: 0x5C5F10D9
	Offset: 0xCE8
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function function_a454a59a(var_3e94206a, var_6bfe1586, var_deb8d133)
{
	if(!var_deb8d133)
	{
		var_6bfe1586 namespace_82b91a51::function_ee182f5d();
	}
}

/*
	Name: function_3c8ea097
	Namespace: namespace_b4b9e1e4
	Checksum: 0xD34DBD72
	Offset: 0xD30
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_3c8ea097(var_6bfe1586)
{
	self thread function_ecdbdfeb(var_6bfe1586);
}

/*
	Name: function_ecdbdfeb
	Namespace: namespace_b4b9e1e4
	Checksum: 0x2B3EAF8D
	Offset: 0xD60
	Size: 0x993
	Parameters: 1
	Flags: None
*/
function function_ecdbdfeb(var_6bfe1586)
{
	var_6bfe1586 endon("hash_128f8789");
	var_6bfe1586 endon("hash_68cc29b");
	var_6bfe1586 namespace_957e94ce::function_9d134160("mobile_armory_begin_use");
	var_9cba4a73 = 1;
	if(isdefined(self.var_ab455203.var_8202763a))
	{
		var_9cba4a73 = 3;
		var_9cba4a73 = var_9cba4a73 + self.var_ab455203.var_8202763a - 6 << 2;
	}
	var_6bfe1586 namespace_71e9cb84::function_e9c3870b("mobile_armory_cac", var_9cba4a73);
	var_6bfe1586 namespace_957e94ce::function_74d6b22f("mobile_armory_in_use");
	var_eb5bcea7 = var_6bfe1586 function_cb7863ff(0, "cybercore");
	var_6bfe1586 waittill("hash_d2c577ed", var_f4fd4814, var_d62110b4);
	var_4da6a075 = var_6bfe1586 function_21995b5a();
	var_5b2a650 = var_6bfe1586 function_8af4d36d(var_6bfe1586.var_b54d1a86, "primary");
	var_95cf88cc = var_6bfe1586 function_8af4d36d(var_6bfe1586.var_b54d1a86, "secondary");
	var_961f11b8 = [];
	foreach(var_dfcc01fd in var_4da6a075)
	{
		if(isdefined(var_dfcc01fd.var_84690dfd) && var_dfcc01fd.var_84690dfd)
		{
			if(!isdefined(var_961f11b8))
			{
				var_961f11b8 = [];
			}
			else if(!function_6e2770d8(var_961f11b8))
			{
				var_961f11b8 = function_84970cc4(var_961f11b8);
			}
			var_961f11b8[var_961f11b8.size] = var_dfcc01fd;
			continue;
		}
		if(var_6bfe1586 function_76f34311("cybercom_copycat") && (var_dfcc01fd.var_ec5ca05b == "primary" || var_dfcc01fd.var_ec5ca05b == "secondary") && (var_dfcc01fd != var_5b2a650 && var_dfcc01fd != var_95cf88cc))
		{
			/#
				function_d52b076d("Dev Block strings are not supported");
			#/
			if(var_d62110b4 != "cancel")
			{
				var_6bfe1586 function_6b1fa4df(var_dfcc01fd);
			}
		}
	}
	if(var_f4fd4814 == "ChooseClass_InGame")
	{
		var_d3a640a8 = var_6bfe1586 function_cb7863ff(0, "cybercore");
		var_63a103f4 = var_d3a640a8 == var_eb5bcea7 || var_6bfe1586 namespace_175490fb::function_6e0bf068();
		var_6bfe1586 namespace_9f824288::function_bee608f0("lives", undefined);
		if(var_d62110b4 == "cancel")
		{
			var_6bfe1586 namespace_a249d1db::function_db96b564(!isdefined(var_63a103f4) && var_63a103f4);
		}
		else
		{
			var_5dc22ce3 = function_d6df1f20(var_d62110b4, ",");
			if(var_5dc22ce3.size > 1)
			{
				var_bd5d3f48 = var_5dc22ce3[0];
				var_cf6fe380 = function_b6b79a0(var_5dc22ce3[1]);
				var_5a13c491 = namespace_82b91a51::function_292b6cbb(var_cf6fe380);
			}
			else
			{
				var_bd5d3f48 = var_d62110b4;
			}
			var_6b05d4a = var_6bfe1586 namespace_a249d1db::function_29da5080(var_bd5d3f48);
			var_6bfe1586 namespace_9f824288::function_bee608f0("playerClass", var_6b05d4a);
			if(isdefined(var_5a13c491))
			{
				var_eb07a0c7 = var_5a13c491 function_f49dd4fd();
				var_6bfe1586 namespace_9f824288::function_bee608f0("altPlayerID", var_eb07a0c7);
			}
			else
			{
				var_6bfe1586 namespace_9f824288::function_bee608f0("altPlayerID", undefined);
			}
			var_6bfe1586 namespace_9f824288::function_bee608f0("saved_weapon", undefined);
			var_6bfe1586 namespace_9f824288::function_bee608f0("saved_weapondata", undefined);
			var_6bfe1586 namespace_9f824288::function_bee608f0("saved_rig1", undefined);
			var_6bfe1586 namespace_9f824288::function_bee608f0("saved_rig1_upgraded", undefined);
			var_6bfe1586 namespace_9f824288::function_bee608f0("saved_rig2", undefined);
			var_6bfe1586 namespace_9f824288::function_bee608f0("saved_rig2_upgraded", undefined);
			var_6bfe1586 namespace_a249d1db::function_93a49c9d(var_6b05d4a);
			var_6bfe1586.var_8129ead4 = undefined;
			var_6bfe1586.var_6c3ed028 = undefined;
			var_6bfe1586 namespace_a249d1db::function_a61641c6(var_6bfe1586.var_44fb8955["team"], var_6b05d4a, !isdefined(var_63a103f4) && var_63a103f4, var_5a13c491);
		}
	}
	foreach(var_dfcc01fd in var_961f11b8)
	{
		var_6bfe1586 function_860a040a(var_dfcc01fd);
	}
	var_87a9e25c = var_6bfe1586 function_21995b5a();
	foreach(var_dfcc01fd in var_87a9e25c)
	{
		var_6bfe1586 function_704b802a(var_dfcc01fd);
		var_6bfe1586 function_67795b5f(var_dfcc01fd, var_dfcc01fd.var_c0b2188);
	}
	if(var_6bfe1586 namespace_957e94ce::function_7922262b("cancel_mobile_armory"))
	{
		var_6bfe1586 namespace_957e94ce::function_9d134160("cancel_mobile_armory");
		var_6bfe1586 namespace_82b91a51::function_ee182f5d();
	}
	else
	{
		self thread function_afd39ac7(var_6bfe1586);
		var_6bfe1586 function_3c3596e5();
		var_6bfe1586 function_1271a73e(1);
		wait(0.5);
		var_6bfe1586 function_859d37b8();
		var_6bfe1586 namespace_82b91a51::function_ee182f5d();
	}
	var_6bfe1586 namespace_71e9cb84::function_e9c3870b("mobile_armory_cac", 0);
	namespace_d8129fdd::function_945c54c5("mobile_armory_used", var_6bfe1586);
	var_6bfe1586 function_8a492eee(namespace_1d795d47::function_52c50cb8(), "mobileArmoryUsedCount");
	waittillframeend;
	var_6bfe1586 namespace_957e94ce::function_9d134160("mobile_armory_in_use");
}

/*
	Name: function_66708329
	Namespace: namespace_b4b9e1e4
	Checksum: 0x9ADEB507
	Offset: 0x1700
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_66708329(var_6bfe1586)
{
	if(self.var_3df2554f === var_6bfe1586)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_afd39ac7
	Namespace: namespace_b4b9e1e4
	Checksum: 0x90B7FA8A
	Offset: 0x1730
	Size: 0x6D
	Parameters: 1
	Flags: None
*/
function function_afd39ac7(var_6bfe1586)
{
	self.var_ab455203.var_e119970e.var_6f180198 = &function_66708329;
	self.var_ab455203.var_e119970e.var_3df2554f = var_6bfe1586;
	wait(0.25);
	self.var_ab455203.var_e119970e.var_6f180198 = undefined;
}

/*
	Name: function_6b1fa4df
	Namespace: namespace_b4b9e1e4
	Checksum: 0xA5AC5582
	Offset: 0x17A8
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_6b1fa4df(var_dfcc01fd)
{
	var_2b2afdf1 = self function_159a070b(var_dfcc01fd);
	var_983ff293 = self function_54d84899(var_dfcc01fd);
	var_f34ff5f1 = var_dfcc01fd.var_453c0f47;
	if(var_983ff293 > var_f34ff5f1)
	{
		var_983ff293 = var_f34ff5f1;
	}
	var_c5b0e858 = self function_562a2c6f(var_dfcc01fd, "tag_origin");
	if(!isdefined(var_c5b0e858))
	{
		/#
			function_2e4b8c78("Dev Block strings are not supported" + var_dfcc01fd.var_4be20d44 + "Dev Block strings are not supported");
		#/
		return;
	}
	level namespace_f996a5bc::function_843a5c4(var_dfcc01fd, self, var_c5b0e858);
	var_c5b0e858 function_4445660e(var_2b2afdf1, var_983ff293);
	var_c5b0e858.var_5e36fd2e = self;
	var_c5b0e858 thread namespace_f996a5bc::function_47874d19();
	var_c5b0e858 thread namespace_f996a5bc::function_3d63464b();
}

/*
	Name: function_e76edd0b
	Namespace: namespace_b4b9e1e4
	Checksum: 0x958274B8
	Offset: 0x1928
	Size: 0x87
	Parameters: 1
	Flags: None
*/
function function_e76edd0b(var_ab455203)
{
	self endon("hash_128f8789");
	var_ab455203 endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_aa10fce8);
		if(!isdefined(var_ab455203))
		{
			break;
		}
		if(function_65f192a6(var_aa10fce8))
		{
			function_69cca2a0(var_ab455203);
		}
	}
}

/*
	Name: function_69cca2a0
	Namespace: namespace_b4b9e1e4
	Checksum: 0x6F2CD033
	Offset: 0x19B8
	Size: 0x283
	Parameters: 1
	Flags: None
*/
function function_69cca2a0(var_ab455203)
{
	if(var_ab455203.var_ce22f999)
	{
		return;
	}
	var_ab455203.var_ce22f999 = 1;
	var_ab455203 function_123d36d9("tag_weapons_01_jnt");
	var_ab455203 function_123d36d9("tag_weapons_02_jnt");
	var_ab455203 function_123d36d9("tag_weapons_03_jnt");
	var_ab455203 function_123d36d9("tag_weapons_04_jnt");
	var_ab455203 namespace_cc27597::function_43718187("p7_fxanim_gp_mobile_armory_open_bundle", var_ab455203);
	wait(1);
	var_d3571721 = 1;
	while(var_d3571721 > 0)
	{
		var_d3571721 = 0;
		foreach(var_6bfe1586 in level.var_2395e945)
		{
			var_cea909a8 = function_cb3d1c9b(var_6bfe1586.var_722885f3, var_ab455203.var_722885f3);
			if(var_cea909a8 <= 15400)
			{
				var_d3571721++;
			}
		}
		wait(0.5);
	}
	var_ab455203 namespace_cc27597::function_43718187("p7_fxanim_gp_mobile_armory_close_bundle", var_ab455203);
	var_ab455203 function_db20c8d6("tag_weapons_01_jnt");
	var_ab455203 function_db20c8d6("tag_weapons_02_jnt");
	var_ab455203 function_db20c8d6("tag_weapons_03_jnt");
	var_ab455203 function_db20c8d6("tag_weapons_04_jnt");
	var_ab455203.var_ce22f999 = 0;
}

/*
	Name: function_71f6269a
	Namespace: namespace_b4b9e1e4
	Checksum: 0x41601D6A
	Offset: 0x1C48
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_71f6269a(var_bd13c94b)
{
	self waittill("hash_128f8789");
	self.var_e119970e namespace_a230c2b1::function_c5a39495(1);
	self.var_e119970e function_dc8c8404();
	if(isdefined(self.var_b07228b6))
	{
		var_5ba2ceb4 = function_6ada35ba(self.var_b07228b6, "targetname");
		if(isdefined(var_5ba2ceb4))
		{
			var_5ba2ceb4 function_dc8c8404();
		}
	}
	if(isdefined(var_bd13c94b))
	{
		var_bd13c94b function_dc8c8404();
	}
}

#namespace namespace_c034d2a8;

/*
	Name: function_b4b9e1e4
	Namespace: namespace_c034d2a8
	Checksum: 0xABCB4023
	Offset: 0x1D20
	Size: 0x295
	Parameters: 0
	Flags: 6
*/
function private autoexec function_b4b9e1e4()
{
	classes.var_b4b9e1e4[0] = function_a8fb77bd();
	classes.var_b4b9e1e4[0].var_b684a6d1[1911957146] = &namespace_b4b9e1e4::function_71f6269a;
	classes.var_b4b9e1e4[0].var_b684a6d1[1775018656] = &namespace_b4b9e1e4::function_69cca2a0;
	classes.var_b4b9e1e4[0].var_b684a6d1[-412164853] = &namespace_b4b9e1e4::function_e76edd0b;
	classes.var_b4b9e1e4[0].var_b684a6d1[1797235935] = &namespace_b4b9e1e4::function_6b1fa4df;
	classes.var_b4b9e1e4[0].var_b684a6d1[-1345086777] = &namespace_b4b9e1e4::function_afd39ac7;
	classes.var_b4b9e1e4[0].var_b684a6d1[1718649641] = &namespace_b4b9e1e4::function_66708329;
	classes.var_b4b9e1e4[0].var_b684a6d1[-321134613] = &namespace_b4b9e1e4::function_ecdbdfeb;
	classes.var_b4b9e1e4[0].var_b684a6d1[1015980183] = &namespace_b4b9e1e4::function_3c8ea097;
	classes.var_b4b9e1e4[0].var_b684a6d1[-1537956454] = &namespace_b4b9e1e4::function_a454a59a;
	classes.var_b4b9e1e4[0].var_b684a6d1[-808543358] = &namespace_b4b9e1e4::function_cfce9b82;
	classes.var_b4b9e1e4[0].var_b684a6d1[-1011858071] = &namespace_b4b9e1e4::function_c3b04569;
	classes.var_b4b9e1e4[0].var_b684a6d1[1606033458] = &namespace_b4b9e1e4::function_5fba2032;
	classes.var_b4b9e1e4[0].var_b684a6d1[-1690805083] = &namespace_b4b9e1e4::function_9b385ca5;
}


#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_36cbf523;

/*
	Name: function_2dc19561
	Namespace: namespace_36cbf523
	Checksum: 0x2A442598
	Offset: 0xD48
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("infection_util", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_36cbf523
	Checksum: 0x50F092A6
	Offset: 0xD88
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	var_63dbb8fc = function_6ada35ba("sarah", "targetname");
	if(isdefined(var_63dbb8fc))
	{
		var_63dbb8fc namespace_2f06d687::function_994832bd(&function_e7ce686c);
	}
	level.var_aef287 = 0;
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_dabbe128::function_95670def(&function_7d27aacb);
	namespace_dabbe128::function_356a4ee1(&function_72e40406);
	namespace_dabbe128::function_6aceae7c(&function_c3e494e3);
	namespace_dabbe128::function_6aceae7c(&function_1cbdd501);
	namespace_dabbe128::function_87f30e90(&function_796d4d97);
	function_ff58a260();
	function_37af8a07();
	level thread function_5f6e4092();
}

/*
	Name: function_37af8a07
	Namespace: namespace_36cbf523
	Checksum: 0xBE712015
	Offset: 0xEF8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("sarah_anchor_prep_scene_done");
	level namespace_ad23e503::function_c35e6aab("sarah_anchor_post_scene_done");
}

/*
	Name: function_ff58a260
	Namespace: namespace_36cbf523
	Checksum: 0xE8976BD4
	Offset: 0xF48
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	namespace_71e9cb84::function_50f16166("toplayer", "snow_fx", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("actor", "sarah_objective_light", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "sarah_body_light", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "reverse_arrival_snow_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "reverse_arrival_dmg_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "exploding_ai_deaths", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "reverse_arrival_explosion_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("allplayers", "player_spawn_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "stop_post_fx", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("actor", "ai_dni_rez_in", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "ai_dni_rez_out", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_dni_interrupt", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("actor", "sarah_camo_shader", 1, 3, "int");
}

/*
	Name: function_aebcf025
	Namespace: namespace_36cbf523
	Checksum: 0x99EC1590
	Offset: 0x11F8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_7d27aacb
	Namespace: namespace_36cbf523
	Checksum: 0x99EC1590
	Offset: 0x1208
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_7d27aacb()
{
}

/*
	Name: function_2c4ff2b1
	Namespace: namespace_36cbf523
	Checksum: 0xF48F4C5D
	Offset: 0x1218
	Size: 0x13F
	Parameters: 1
	Flags: None
*/
function function_2c4ff2b1(var_862f45fa)
{
	var_a7625465 = namespace_14b42b8a::function_7faf4c39("cp_coop_spawn", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(var_a7625465.size, "Dev Block strings are not supported");
	#/
	var_2d4a0ac3 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a7625465.size; var_c957f6b6++)
	{
		if(var_a7625465[var_c957f6b6].var_ff1f6868 === var_862f45fa)
		{
			if(!isdefined(var_2d4a0ac3))
			{
				var_2d4a0ac3 = [];
			}
			else if(!function_6e2770d8(var_2d4a0ac3))
			{
				var_2d4a0ac3 = function_84970cc4(var_2d4a0ac3);
			}
			var_2d4a0ac3[var_2d4a0ac3.size] = var_a7625465[var_c957f6b6];
		}
	}
	/#
		namespace_33b293fd::function_a7ee953(var_2d4a0ac3.size, "Dev Block strings are not supported" + var_862f45fa);
	#/
	return var_2d4a0ac3;
}

/*
	Name: function_1b6646d6
	Namespace: namespace_36cbf523
	Checksum: 0x7192ACBD
	Offset: 0x1360
	Size: 0xDF
	Parameters: 0
	Flags: None
*/
function function_1b6646d6()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	do
	{
		wait(0.05);
		var_801b9e15 = 0;
		foreach(var_5dc5e20a in function_3f10449f())
		{
			if(var_5dc5e20a.var_e0beb6ee == "playing")
			{
				var_801b9e15++;
			}
		}
	}
	while(!var_801b9e15 == 0);
}

/*
	Name: function_54142bd3
	Namespace: namespace_36cbf523
	Checksum: 0x618D2EBC
	Offset: 0x1448
	Size: 0x251
	Parameters: 2
	Flags: None
*/
function function_54142bd3(var_434bda67, var_5e953b6)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_434bda67), "Dev Block strings are not supported");
	#/
	var_67825717 = function_6ada35ba(var_434bda67, var_5e953b6);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_67825717), "Dev Block strings are not supported" + var_5e953b6 + "Dev Block strings are not supported" + var_434bda67 + "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_67825717.var_b07228b6), "Dev Block strings are not supported" + var_434bda67 + "Dev Block strings are not supported");
	#/
	var_af84f8f = namespace_14b42b8a::function_7faf4c39(var_67825717.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(var_af84f8f.size >= 4, "Dev Block strings are not supported" + var_434bda67 + "Dev Block strings are not supported" + var_af84f8f.size);
	#/
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(!var_5dc5e20a function_32fa5072(var_67825717))
		{
			var_5dc5e20a function_a30814d(var_af84f8f[var_c957f6b6].var_722885f3);
			var_5dc5e20a function_eda2be50(var_af84f8f[var_c957f6b6].var_6ab6f4fd);
		}
	}
}

/*
	Name: function_e7ce686c
	Namespace: namespace_36cbf523
	Checksum: 0x6F414E74
	Offset: 0x16A8
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_e7ce686c()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_31cb28ed");
		self function_db9a227f(1);
		self waittill("hash_f20d0edf");
		self function_db9a227f(0);
	}
}

/*
	Name: function_db9a227f
	Namespace: namespace_36cbf523
	Checksum: 0x31F4C8D
	Offset: 0x1710
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_db9a227f(var_ed6b2f03)
{
	if(!isdefined(var_ed6b2f03))
	{
		var_ed6b2f03 = 1;
	}
	self namespace_71e9cb84::function_74d6b22f("sarah_objective_light", var_ed6b2f03);
}

/*
	Name: function_dafed344
	Namespace: namespace_36cbf523
	Checksum: 0xE93EC650
	Offset: 0x1760
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_dafed344()
{
	self function_dbe72c95("village");
}

/*
	Name: function_2f6bf570
	Namespace: namespace_36cbf523
	Checksum: 0x352D5B
	Offset: 0x1790
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_2f6bf570()
{
	self function_dbe72c95("village_inception");
}

/*
	Name: function_dbe72c95
	Namespace: namespace_36cbf523
	Checksum: 0x4CA062BB
	Offset: 0x17C0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_dbe72c95(var_b04bc952)
{
	self endon("hash_128f8789");
	self.var_ff1f6868 = var_b04bc952;
	if(isdefined(self.var_b691b9cf))
	{
		return;
	}
	self.var_44a68a57 = &function_cf59d5a0;
	self function_c54bce75();
}

/*
	Name: function_cf59d5a0
	Namespace: namespace_36cbf523
	Checksum: 0xC7C12399
	Offset: 0x1830
	Size: 0xBB
	Parameters: 12
	Flags: None
*/
function function_cf59d5a0(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_ae725cb8, var_a5cf2304, var_5d7e7ac2)
{
	if(!function_65f192a6(var_3a212fd7))
	{
		var_f9a179ed = function_b6b79a0(function_69c2f683(var_f9a179ed * 0.75));
	}
	return var_f9a179ed;
}

/*
	Name: function_c54bce75
	Namespace: namespace_36cbf523
	Checksum: 0xEDDEA273
	Offset: 0x18F8
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_c54bce75(var_5f6003ea, var_a466e982)
{
	if(!isdefined(var_5f6003ea))
	{
		var_5f6003ea = undefined;
	}
	if(!isdefined(var_a466e982))
	{
		var_a466e982 = undefined;
	}
	self endon("hash_128f8789");
	while(1)
	{
		if(!isdefined(self.var_67c7c241))
		{
			break;
		}
		wait(0.05);
	}
	if(!isdefined(var_5f6003ea))
	{
		if(isdefined(self.var_b07228b6))
		{
			var_5f6003ea = self.var_b07228b6;
		}
	}
	if(!isdefined(var_a466e982))
	{
		if(isdefined(self.var_caae374e))
		{
			var_a466e982 = self.var_caae374e;
		}
	}
	if(isdefined(var_5f6003ea))
	{
		var_377a9c22 = function_b4cb3503(var_5f6003ea, "targetname");
		self function_169cc712(var_377a9c22);
		self waittill("hash_41d1aaf0");
		self.var_7dfaf62 = 64;
	}
}

/*
	Name: function_b86426b1
	Namespace: namespace_36cbf523
	Checksum: 0xE48F887F
	Offset: 0x1A18
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_b86426b1(var_b4268a02)
{
	self endon("hash_128f8789");
	if(isdefined(self.var_b07228b6))
	{
		var_377a9c22 = function_6ada35ba(self.var_b07228b6, "targetname");
		if(!isdefined(var_377a9c22))
		{
			var_377a9c22 = function_b4cb3503(self.var_b07228b6, "targetname");
		}
		if(isdefined(var_377a9c22))
		{
			self function_169cc712(var_377a9c22);
		}
		if(isdefined(var_b4268a02))
		{
			var_6933f6c4 = self.var_7dfaf62;
			self.var_7dfaf62 = var_b4268a02;
			self waittill("hash_41d1aaf0");
			self.var_7dfaf62 = var_6933f6c4;
		}
	}
}

/*
	Name: function_5ec7eb7d
	Namespace: namespace_36cbf523
	Checksum: 0xC462663F
	Offset: 0x1B08
	Size: 0x197
	Parameters: 5
	Flags: None
*/
function function_5ec7eb7d(var_88fd65d, var_562b538e, var_5b1ebb35, var_9a868e4d, var_694b7da)
{
	if(!isdefined(var_9a868e4d))
	{
		var_9a868e4d = 0;
	}
	if(!isdefined(var_694b7da))
	{
		var_694b7da = "trigger_radius";
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_88fd65d), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_562b538e), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5b1ebb35), "Dev Block strings are not supported");
	#/
	var_da697227 = function_9b7fda5e(var_694b7da, var_88fd65d, var_9a868e4d, var_562b538e, var_5b1ebb35);
	var_da697227 function_1d5013fa();
	var_da697227 function_bb863f19();
	var_da697227 function_dc378587("none");
	var_da697227 function_1f80b3d5();
	if(var_694b7da == "trigger_radius_use")
	{
		var_da697227 function_e68ee88a("HINT_NOICON");
	}
	return var_da697227;
}

/*
	Name: function_7ad4dc15
	Namespace: namespace_36cbf523
	Checksum: 0xCBC675F6
	Offset: 0x1CA8
	Size: 0xC5
	Parameters: 5
	Flags: None
*/
function function_7ad4dc15(var_5152e048, var_a72c5e19, var_f05509e4, var_e6639a6a, var_637636ed)
{
	if(!isdefined(var_f05509e4))
	{
		var_f05509e4 = 2;
	}
	if(!isdefined(var_e6639a6a))
	{
		var_e6639a6a = 0.25;
	}
	if(!isdefined(var_637636ed))
	{
		var_637636ed = 2;
	}
	for(var_78962fff = 0; var_78962fff < var_f05509e4;  = 0)
	{
		function_7b8c138f(var_5152e048, var_a72c5e19, var_637636ed);
		wait(var_e6639a6a);
	}
}

/*
	Name: function_7b8c138f
	Namespace: namespace_36cbf523
	Checksum: 0xA9D05E82
	Offset: 0x1D78
	Size: 0xB1
	Parameters: 3
	Flags: None
*/
function function_7b8c138f(var_5152e048, var_a72c5e19, var_637636ed)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_f0b927ee(var_5152e048, var_a72c5e19, var_637636ed);
	}
}

/*
	Name: function_f0b927ee
	Namespace: namespace_36cbf523
	Checksum: 0x789E4C44
	Offset: 0x1E38
	Size: 0x1BF
	Parameters: 3
	Flags: None
*/
function function_f0b927ee(var_5152e048, var_a72c5e19, var_637636ed)
{
	if(!isdefined(var_637636ed))
	{
		var_637636ed = 1;
	}
	self endon("hash_128f8789");
	var_433ff793 = function_7d15e2f8(self.var_722885f3, var_5152e048.var_722885f3);
	self.var_c4423f55 = function_34bf0601(0, var_a72c5e19, 0.1, 1, var_433ff793);
	self function_5a7dd25d(self.var_c4423f55);
	if(!isdefined(self.var_2099a327))
	{
		self.var_2099a327 = 0;
	}
	self.var_8046f8b5 = GetTime() + var_637636ed - 1 * 1000;
	if(!self.var_2099a327)
	{
		self.var_2099a327 = 1;
		while(GetTime() < self.var_8046f8b5)
		{
			wait(0.1);
		}
		while(self.var_c4423f55 < 1)
		{
			self.var_c4423f55 = namespace_d73b9283::function_31931862(self.var_c4423f55 + 0.1, 0, 1);
			self function_5a7dd25d(self.var_c4423f55);
			wait(0.1);
		}
		self function_5a7dd25d(1);
		self.var_2099a327 = 0;
	}
}

/*
	Name: function_15ca1b68
	Namespace: namespace_36cbf523
	Checksum: 0xCB5B05CC
	Offset: 0x2000
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_15ca1b68(var_62e1e54b)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_62e1e54b), "Dev Block strings are not supported");
	#/
	level.var_28791de7 = var_62e1e54b;
}

/*
	Name: function_ae5eefe4
	Namespace: namespace_36cbf523
	Checksum: 0xCD229B73
	Offset: 0x2048
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_ae5eefe4()
{
	if(!isdefined(level.var_28791de7))
	{
		level.var_28791de7 = 0;
	}
	return level.var_28791de7;
}

/*
	Name: function_1cdb9014
	Namespace: namespace_36cbf523
	Checksum: 0x5024B7DD
	Offset: 0x2078
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_1cdb9014(var_62e1e54b)
{
	if(!isdefined(var_62e1e54b))
	{
		var_62e1e54b = 2;
	}
	function_15ca1b68(var_62e1e54b);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_72e40406(var_62e1e54b);
	}
}

/*
	Name: function_3ea445de
	Namespace: namespace_36cbf523
	Checksum: 0xE8896566
	Offset: 0x2148
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_3ea445de()
{
	function_15ca1b68(0);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_822eb8e8();
	}
}

/*
	Name: function_72e40406
	Namespace: namespace_36cbf523
	Checksum: 0x71425555
	Offset: 0x21F8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_72e40406(var_62e1e54b)
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self), "Dev Block strings are not supported");
	#/
	if(!isdefined(var_62e1e54b))
	{
		var_62e1e54b = function_ae5eefe4();
	}
	self namespace_71e9cb84::function_e9c3870b("snow_fx", var_62e1e54b);
}

/*
	Name: function_822eb8e8
	Namespace: namespace_36cbf523
	Checksum: 0x1974BFE7
	Offset: 0x2288
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_822eb8e8(var_8972488e)
{
	if(!isdefined(var_8972488e))
	{
		var_8972488e = 0;
	}
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self), "Dev Block strings are not supported");
	#/
	self namespace_71e9cb84::function_e9c3870b("snow_fx", 0);
	if(!var_8972488e)
	{
		self notify("hash_a7385d98");
		self.var_afac15ca = 0;
	}
}

/*
	Name: function_8bf0b925
	Namespace: namespace_36cbf523
	Checksum: 0x8C0B2DEE
	Offset: 0x2320
	Size: 0xF9
	Parameters: 3
	Flags: None
*/
function function_8bf0b925(var_b8da2278, var_5e953b6, var_864a3d55)
{
	var_3af498bc = function_fe0cfd2e(var_b8da2278, var_5e953b6);
	foreach(var_90ca1fdd in var_3af498bc)
	{
		if(var_90ca1fdd function_e24ece7b())
		{
			if(var_864a3d55)
			{
				function_47d28a09(var_90ca1fdd);
				continue;
			}
			function_9ab58e36(var_90ca1fdd);
		}
	}
}

/*
	Name: function_e24ece7b
	Namespace: namespace_36cbf523
	Checksum: 0x5AA037E8
	Offset: 0x2428
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_e24ece7b()
{
	return self.var_fe311e35 === "Begin";
}

/*
	Name: function_574d968f
	Namespace: namespace_36cbf523
	Checksum: 0x60EA7763
	Offset: 0x2448
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_574d968f()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_5dc5e20a);
		self thread function_827b9378(var_5dc5e20a);
	}
}

/*
	Name: function_827b9378
	Namespace: namespace_36cbf523
	Checksum: 0x8F24710C
	Offset: 0x24A0
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_827b9378(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a endon("hash_a7385d98");
	if(!isdefined(var_5dc5e20a.var_afac15ca))
	{
		var_5dc5e20a.var_afac15ca = 0;
	}
	if(!var_5dc5e20a.var_afac15ca)
	{
		var_5dc5e20a.var_afac15ca = 1;
		var_eb8c03f1 = var_5dc5e20a namespace_71e9cb84::function_efc4a577("snow_fx");
		var_5dc5e20a function_822eb8e8(1);
		while(var_5dc5e20a function_32fa5072(self))
		{
			wait(0.25);
		}
		var_5dc5e20a.var_afac15ca = 0;
		var_5dc5e20a function_72e40406(var_eb8c03f1);
	}
}

/*
	Name: function_3001a972
	Namespace: namespace_36cbf523
	Checksum: 0x55B5CB7F
	Offset: 0x25B0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_3001a972(var_46639773)
{
	/#
		function_2e4b8c78(var_46639773);
	#/
}

/*
	Name: function_efa09886
	Namespace: namespace_36cbf523
	Checksum: 0xE8ECCE19
	Offset: 0x25E0
	Size: 0x119
	Parameters: 1
	Flags: None
*/
function function_efa09886(var_c77d2837)
{
	if(level.var_2395e945.size > 1)
	{
		level thread namespace_82b91a51::function_593c2af4(1, "white");
		function_9cf04c2e(0.5, 0.5, level.var_2395e945[0].var_722885f3, 500);
		namespace_82b91a51::function_93831e79(level.var_31aefea8);
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_e2af603e("damage_heavy");
		}
	}
}

/*
	Name: function_1d387f5d
	Namespace: namespace_36cbf523
	Checksum: 0x4742FFE4
	Offset: 0x2708
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_1d387f5d()
{
	namespace_cc27597::function_8f9f34e0("cin_inf_00_00_sarah_vign_move_idle", &function_c32dc5f6, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_06_03_bastogne_aie_reversemg42", &function_3a407187, "init");
	namespace_cc27597::function_8f9f34e0("cin_inf_06_03_bastogne_aie_reversemg42", &function_8f4d515b, "play");
}

/*
	Name: function_c8d7e76
	Namespace: namespace_36cbf523
	Checksum: 0xED062C5B
	Offset: 0x27A8
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_c8d7e76(var_ef7c9f46)
{
	var_c917e48d = namespace_14b42b8a::function_7faf4c39(var_ef7c9f46, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(var_c917e48d.size, "Dev Block strings are not supported" + var_ef7c9f46 + "Dev Block strings are not supported");
	#/
	level thread namespace_84970cc4::function_57dd1fd4(var_c917e48d, &function_12a71229);
}

/*
	Name: function_12a71229
	Namespace: namespace_36cbf523
	Checksum: 0x2481560C
	Offset: 0x2848
	Size: 0x8B5
	Parameters: 0
	Flags: None
*/
function function_12a71229()
{
	if(!isdefined(self.var_160bf4ad) || self.var_160bf4ad <= level.var_2395e945.size)
	{
		namespace_cc27597::function_8f9f34e0(self.var_1157a889, &function_4a8094c1, "init");
		namespace_cc27597::function_8f9f34e0(self.var_1157a889, &function_c215024b, "done");
		namespace_cc27597::function_c35e6aab(self.var_1157a889);
		if(!isdefined(self.var_f8456b37))
		{
			self.var_f8456b37 = 1300;
		}
		if(!isdefined(self.var_e363b850))
		{
			self.var_e363b850 = 512;
		}
		if(!isdefined(self.var_8202763a))
		{
			self.var_8202763a = 0;
		}
		var_bdf8bc58 = (0, 0, self.var_8202763a);
		if(isdefined(self.var_b07228b6))
		{
			var_8b856a66 = function_6ada35ba(self.var_b07228b6, "targetname");
			if(!isdefined(var_8b856a66))
			{
				var_8b856a66 = function_5ec7eb7d(self.var_722885f3 + var_bdf8bc58, self.var_f8456b37, self.var_e363b850);
			}
		}
		else
		{
			var_8b856a66 = function_5ec7eb7d(self.var_722885f3 + var_bdf8bc58, self.var_f8456b37, self.var_e363b850);
		}
		var_8b856a66.var_caae374e = "reverse_anim_trigger";
		if(!isdefined(var_8b856a66.var_a40180b5))
		{
			var_8b856a66.var_a40180b5 = 0;
		}
		var_8b856a66.var_a40180b5++;
		switch(self.var_1157a889)
		{
			case "cin_inf_06_03_bastogne_aie_reversemortar":
			{
				self thread function_2f9ccb03(var_8b856a66, "target", 1, 2.2, 1, 2);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reversehalftrack":
			{
				self thread function_2f9ccb03(var_8b856a66, "target", 0, 0, 1, 1.5);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reverseforwardroll":
			{
				self thread function_2f9ccb03(var_8b856a66, "target", 1, 0.7, 1, 2);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reverseforwardroll02":
			{
				self thread function_2f9ccb03(var_8b856a66, "target", 1, 2.8, 1, 2.5);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reversebackroll":
			{
				self thread function_2f9ccb03(var_8b856a66, "target", 1, 0.65, 1, 2.5);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reversebackroll02":
			{
				self thread function_2f9ccb03(var_8b856a66, "target", 1, 2.1, 1, 2);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reversebackroll03":
			{
				self thread function_2f9ccb03(var_8b856a66, "target", 1, 1.8, 1, 1);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverselandmine":
			{
				self thread function_2f9ccb03(var_8b856a66, "target", 1, 1.3, 1, 1.5);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reversemg42":
			{
				self thread function_2f9ccb03(var_8b856a66, "script_label", 1, 1.95, 1, 2);
				break;
			}
			case "cin_inf_10_02_foy_aie_reversetankshell_soldier01_suppressor":
			{
				self thread function_2f9ccb03(var_8b856a66, "script_label", 1, 3.5, 0, 0);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reversedance":
			{
				self thread function_2f9ccb03(var_8b856a66, "script_label", 1, 1.9, 1, 2);
				break;
			}
			case "cin_inf_10_02_bastogne_vign_reversemortar2floor_sniper":
			{
				self thread function_2f9ccb03(var_8b856a66, "script_label", 1, 2.8, 0, 0);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverse_soldier01hipshot":
			{
				self thread function_23bbf7f6(var_8b856a66, 1.15);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverse_soldier01hipshot_suppressor":
			{
				self thread function_23bbf7f6(var_8b856a66, 1.15);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverse_soldier02headshot":
			{
				self thread function_23bbf7f6(var_8b856a66, 1.25);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverse_soldier02headshot_sniper":
			{
				self thread function_23bbf7f6(var_8b856a66, 1.25);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverse_soldier02headshot_suppressor":
			{
				self thread function_23bbf7f6(var_8b856a66, 1.25);
				break;
			}
			case "cin_inf_11_02_fold_aie_reverse_1":
			{
				self thread function_23bbf7f6(var_8b856a66, 4.25);
				break;
			}
			case "cin_inf_11_02_fold_aie_reverse_2":
			{
				self thread function_23bbf7f6(var_8b856a66, 4.25);
				break;
			}
			case "cin_inf_11_02_fold_aie_reverse_3":
			{
				self thread function_23bbf7f6(var_8b856a66, 4.25);
				break;
			}
			case "cin_inf_11_03_fold_vign_reverse_sniper":
			{
				self thread function_23bbf7f6(var_8b856a66, 1.55);
				break;
			}
			case "cin_inf_10_02_foy_aie_reverseshot_1_suppressor":
			{
				self thread function_23bbf7f6(var_8b856a66, 5.45);
				break;
			}
			case "cin_inf_10_02_foy_aie_reverseshot_5_sniper":
			{
				self thread function_23bbf7f6(var_8b856a66, 5.45);
				break;
			}
			case "cin_inf_10_02_bastogne_vign_reversefall2floor_suppressor":
			{
				self thread function_23bbf7f6(var_8b856a66, 0.85);
				break;
			}
			case "cin_inf_07_02_worldfallsaway_vign_direwolf_reverse_dth_1":
			{
				self thread function_23bbf7f6(var_8b856a66, 2.45);
				break;
			}
			case "cin_inf_07_02_worldfallsaway_vign_direwolf_reverse_dth_2":
			{
				self thread function_23bbf7f6(var_8b856a66, 1.95);
				break;
			}
			case "cin_inf_07_02_worldfallsaway_vign_direwolf_reverse_dth_3":
			{
				self thread function_23bbf7f6(var_8b856a66, 1.95);
				break;
			}
			case "cin_inf_07_02_worldfallsaway_vign_direwolf_reverse_dth_4":
			{
				self thread function_23bbf7f6(var_8b856a66, 1.95);
				break;
			}
			case default:
			{
				var_8b856a66 waittill("hash_4dbf3ae3");
				var_8b856a66.var_a40180b5--;
				if(var_8b856a66.var_a40180b5 == 0)
				{
					var_8b856a66 function_dc8c8404();
				}
				if(isdefined(self.var_eb328a48))
				{
					wait(self.var_eb328a48);
				}
				namespace_cc27597::function_43718187(self.var_1157a889);
				break;
			}
		}
	}
}

/*
	Name: function_2f9ccb03
	Namespace: namespace_36cbf523
	Checksum: 0x798A5A02
	Offset: 0x3108
	Size: 0x303
	Parameters: 6
	Flags: None
*/
function function_2f9ccb03(var_8b856a66, var_151e15ca, var_c69a4c6, var_68d91705, var_8593df01, var_a35c8512)
{
	if(!isdefined(var_151e15ca))
	{
		var_151e15ca = "target";
	}
	if(!isdefined(var_c69a4c6))
	{
		var_c69a4c6 = 1;
	}
	if(!isdefined(var_68d91705))
	{
		var_68d91705 = 2;
	}
	if(!isdefined(var_8593df01))
	{
		var_8593df01 = 1;
	}
	if(!isdefined(var_a35c8512))
	{
		var_a35c8512 = 2;
	}
	var_8b856a66 waittill("hash_4dbf3ae3");
	var_8b856a66.var_a40180b5--;
	if(var_8b856a66.var_a40180b5 == 0)
	{
		var_8b856a66 function_dc8c8404();
	}
	if(isdefined(self.var_eb328a48))
	{
		wait(self.var_eb328a48);
	}
	if(var_c69a4c6)
	{
		if(var_151e15ca == "target")
		{
			if(isdefined(self.var_b07228b6))
			{
				var_99d1c353 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
				function_fd4ba5e1(level.var_c1aa5253["reverse_mortar"], var_99d1c353.var_722885f3);
				wait(var_68d91705);
			}
		}
		else if(var_151e15ca == "script_label")
		{
			if(isdefined(self.var_b2ff4d87))
			{
				var_99d1c353 = namespace_14b42b8a::function_7922262b(self.var_b2ff4d87, "targetname");
				function_fd4ba5e1(level.var_c1aa5253["reverse_mortar"], var_99d1c353.var_722885f3);
				wait(var_68d91705);
			}
		}
	}
	if(var_8593df01)
	{
		if(isdefined(self.var_f25b564e))
		{
			var_8060ff07 = function_3da2d8c();
			foreach(var_f1074df4 in var_8060ff07)
			{
				if(function_8d0347b8(var_f1074df4))
				{
					var_f1074df4 namespace_71e9cb84::function_74d6b22f("reverse_arrival_snow_fx", 1);
				}
			}
		}
		wait(var_a35c8512);
	}
	namespace_cc27597::function_43718187(self.var_1157a889);
}

/*
	Name: function_23bbf7f6
	Namespace: namespace_36cbf523
	Checksum: 0x2B050664
	Offset: 0x3418
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_23bbf7f6(var_8b856a66, var_ecd15ef7)
{
	if(!isdefined(var_ecd15ef7))
	{
		var_ecd15ef7 = 2;
	}
	var_8b856a66 waittill("hash_4dbf3ae3");
	var_8b856a66.var_a40180b5--;
	if(var_8b856a66.var_a40180b5 == 0)
	{
		var_8b856a66 function_dc8c8404();
	}
	if(isdefined(self.var_eb328a48))
	{
		wait(self.var_eb328a48);
	}
	if(isdefined(self.var_b2ff4d87))
	{
		var_99d1c353 = namespace_14b42b8a::function_7922262b(self.var_b2ff4d87, "targetname");
		var_cf340ccb = var_99d1c353.var_722885f3;
	}
	self thread namespace_cc27597::function_43718187(self.var_1157a889);
	wait(var_ecd15ef7);
	if(isdefined(var_cf340ccb))
	{
		function_fd4ba5e1(level.var_c1aa5253["bullet_impact"], var_cf340ccb);
	}
}

/*
	Name: function_4a8094c1
	Namespace: namespace_36cbf523
	Checksum: 0x9AAE7CCA
	Offset: 0x3558
	Size: 0xF1
	Parameters: 1
	Flags: None
*/
function function_4a8094c1(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_8d0347b8(var_a3d46ee4))
		{
			if(isdefined(level.var_4aa3708c) && level.var_4aa3708c)
			{
				var_a3d46ee4.var_15dfd6c = level.var_52b1f753;
			}
			var_a3d46ee4 function_dc649ed7(1);
			var_a3d46ee4 thread function_79c868c4(self);
		}
	}
}

/*
	Name: function_c215024b
	Namespace: namespace_36cbf523
	Checksum: 0x63285949
	Offset: 0x3658
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_c215024b(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_8d0347b8(var_a3d46ee4))
		{
			var_a3d46ee4 function_dc649ed7(0);
		}
	}
}

/*
	Name: function_2a5e3b2a
	Namespace: namespace_36cbf523
	Checksum: 0x2C1F47EF
	Offset: 0x3710
	Size: 0x119
	Parameters: 1
	Flags: None
*/
function function_2a5e3b2a(var_c77d2837)
{
	var_5f6003ea = undefined;
	var_a466e982 = undefined;
	if(isdefined(self.var_b07228b6))
	{
		var_5f6003ea = self.var_b07228b6;
	}
	if(isdefined(self.var_caae374e))
	{
		var_a466e982 = self.var_caae374e;
	}
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_8d0347b8(var_a3d46ee4))
		{
			var_a3d46ee4 function_dc649ed7(0);
			var_a3d46ee4 thread function_c54bce75(var_5f6003ea, var_a466e982);
		}
	}
}

/*
	Name: function_dc649ed7
	Namespace: namespace_36cbf523
	Checksum: 0x17A29319
	Offset: 0x3838
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_dc649ed7(var_47710ba8)
{
	self namespace_d84e54db::function_b4f5e3b9(var_47710ba8);
	self namespace_d84e54db::function_c9e45d52(var_47710ba8);
	if(var_47710ba8)
	{
		self function_80765127();
	}
	else
	{
		self function_8dafb866();
	}
}

/*
	Name: function_586b8f7b
	Namespace: namespace_36cbf523
	Checksum: 0x9DB2AA3C
	Offset: 0x38B8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_586b8f7b(var_88fd65d)
{
	return function_f926d8e8(level.var_2395e945, var_88fd65d, 1)[0];
}

/*
	Name: function_79c868c4
	Namespace: namespace_36cbf523
	Checksum: 0x5F2D226C
	Offset: 0x38F0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_79c868c4(var_c248e0ab)
{
	if(isdefined(var_c248e0ab.var_db7bb468))
	{
		var_f8456b37 = 1024;
		if(isdefined(var_c248e0ab.var_6604b19f))
		{
			var_f8456b37 = var_c248e0ab.var_6604b19f;
		}
		var_a4652398 = 0;
		if(isdefined(var_c248e0ab.var_caae374e) && var_c248e0ab.var_caae374e == "no_fallback")
		{
			var_a4652398 = 1;
		}
		self thread function_73dd6d57(var_c248e0ab.var_db7bb468, var_c248e0ab.var_1157a889, var_f8456b37, var_a4652398);
	}
}

/*
	Name: function_73dd6d57
	Namespace: namespace_36cbf523
	Checksum: 0xED6152C4
	Offset: 0x39D8
	Size: 0x203
	Parameters: 4
	Flags: None
*/
function function_73dd6d57(var_5f6003ea, var_a14dc535, var_84fffedf, var_a4652398)
{
	self endon("hash_128f8789");
	wait(1);
	while(1)
	{
		if(!isdefined(self.var_67c7c241))
		{
			break;
		}
		wait(0.05);
	}
	self.var_7dfaf62 = 64;
	if(isdefined(var_a4652398) && var_a4652398)
	{
		self.var_a4652398 = 1;
	}
	if(function_5dbf7eca(var_5f6003ea, "volume"))
	{
		var_377a9c22 = function_6ada35ba(var_5f6003ea, "targetname");
		self function_169cc712(var_377a9c22);
	}
	else if(function_5dbf7eca(var_5f6003ea, "nd_array"))
	{
		var_d4ce3e5c = function_fe0cfd2e(var_5f6003ea, "targetname");
		var_8f736b07 = function_e7bdc1a1(self.var_722885f3, var_d4ce3e5c);
		if(!function_4eb15419(var_8f736b07))
		{
			self function_169cc712(var_8f736b07);
		}
		else
		{
			self.var_7dfaf62 = var_84fffedf;
			return;
		}
	}
	else
	{
		var_c6342f3d = function_b4cb3503(var_5f6003ea, "targetname");
		self function_169cc712(var_c6342f3d.var_722885f3);
	}
	self waittill("hash_41d1aaf0");
	self.var_7dfaf62 = var_84fffedf;
}

/*
	Name: function_3a407187
	Namespace: namespace_36cbf523
	Checksum: 0x704A23EE
	Offset: 0x3BE8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_3a407187(var_c77d2837)
{
}

/*
	Name: function_8f4d515b
	Namespace: namespace_36cbf523
	Checksum: 0xB2B9B30D
	Offset: 0x3C00
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_8f4d515b(var_c77d2837)
{
}

/*
	Name: function_23e59afd
	Namespace: namespace_36cbf523
	Checksum: 0xDDECA631
	Offset: 0x3C18
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_23e59afd(var_c77d2837)
{
	if(!isdefined(level.var_340fac2e))
	{
		level.var_340fac2e = namespace_96fa87af::function_7387a40a("veh_sarah_mover");
		level.var_340fac2e.var_c1535232 = 1;
	}
	level namespace_ad23e503::function_74d6b22f("sarah_anchor_prep_scene_done");
}

/*
	Name: function_e2eba6da
	Namespace: namespace_36cbf523
	Checksum: 0x5F5AC6F6
	Offset: 0x3C90
	Size: 0x1B3
	Parameters: 1
	Flags: None
*/
function function_e2eba6da(var_c77d2837)
{
	level namespace_ad23e503::function_1ab5ebec("sarah_anchor_prep_scene_done");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_340fac2e), "Dev Block strings are not supported");
	#/
	var_e9020a33 = var_c77d2837["sarah"];
	var_e9020a33 namespace_d84e54db::function_b4f5e3b9(1);
	var_e9020a33 namespace_d84e54db::function_c9e45d52(1);
	level.var_340fac2e.var_722885f3 = var_e9020a33.var_722885f3;
	level.var_340fac2e.var_6ab6f4fd = var_e9020a33.var_6ab6f4fd;
	var_e9020a33.var_6f1739c2 = level.var_340fac2e;
	var_e9020a33.var_6f1739c2.var_170527fb = "sarah_objective_align";
	var_e9020a33 function_37f7858a(var_e9020a33.var_6f1739c2);
	var_e9020a33 thread function_6987653b();
	var_e9020a33 thread function_12efefe3();
	var_e9020a33 thread function_8739c05f();
	var_e9020a33 thread function_1b0b83dc();
	level namespace_ad23e503::function_74d6b22f("sarah_anchor_post_scene_done");
}

/*
	Name: function_cbc167
	Namespace: namespace_36cbf523
	Checksum: 0xE9BEB84D
	Offset: 0x3E50
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_cbc167()
{
	level.var_340fac2e = namespace_96fa87af::function_7387a40a("veh_sarah_mover");
	level.var_340fac2e.var_c1535232 = 1;
	var_e9020a33 = namespace_82b91a51::function_740f8516("sarah");
}

/*
	Name: function_3fe1f72
	Namespace: namespace_36cbf523
	Checksum: 0xE33E9203
	Offset: 0x3EB8
	Size: 0x503
	Parameters: 3
	Flags: None
*/
function function_3fe1f72(var_49e77886, var_ff640438, var_4477da45)
{
	level endon("hash_afb79ff0");
	if(!isdefined(level.var_340fac2e))
	{
		level.var_340fac2e = namespace_96fa87af::function_7387a40a("veh_sarah_mover");
	}
	if(isdefined(var_ff640438))
	{
		var_addcf1f5 = function_6ada35ba(var_49e77886 + var_ff640438, "targetname");
		level.var_7f8b5d18 = function_1ed270eb(var_49e77886, var_ff640438);
		namespace_84970cc4::function_966ecb29(level.var_7f8b5d18, &function_81b715e, level.var_7f8b5d18);
		if(var_ff640438 > 0)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_ff640438 - 1; var_c957f6b6++)
			{
				var_e264aa0a = function_6ada35ba(var_49e77886 + var_c957f6b6, "targetname");
				var_e264aa0a function_dc8c8404();
			}
		}
	}
	var_c66ffe01 = function_243bb261(var_addcf1f5.var_b07228b6, "targetname");
	var_e9020a33 = namespace_82b91a51::function_740f8516("sarah");
	if(!var_e9020a33 function_c7e339d1(level.var_340fac2e))
	{
		var_e9020a33 function_9869ab67(var_c66ffe01.var_722885f3, var_c66ffe01.var_6ab6f4fd);
		var_e9020a33 namespace_d84e54db::function_b4f5e3b9(1);
		var_e9020a33 namespace_d84e54db::function_c9e45d52(1);
		var_e9020a33.var_6f1739c2 = level.var_340fac2e;
		var_e9020a33.var_6f1739c2.var_170527fb = "sarah_objective_align";
		var_e9020a33 function_37f7858a(var_e9020a33.var_6f1739c2);
		var_e9020a33.var_6f1739c2 thread namespace_cc27597::function_43718187("cin_inf_00_00_sarah_vign_move_idle", var_e9020a33);
		level.var_340fac2e.var_722885f3 = var_c66ffe01.var_722885f3;
		level.var_340fac2e.var_6ab6f4fd = var_c66ffe01.var_6ab6f4fd;
		level.var_340fac2e.var_c1535232 = 1;
		var_e9020a33 thread function_6987653b();
		var_e9020a33 thread function_12efefe3();
		var_e9020a33 thread function_8739c05f();
		var_e9020a33 thread function_1b0b83dc();
	}
	var_782c4804 = 0;
	var_255c21d = undefined;
	level thread function_1a5bb539(var_e9020a33, var_4477da45);
	while(isdefined(var_addcf1f5))
	{
		var_255c21d = var_addcf1f5;
		var_addcf1f5 waittill("hash_4dbf3ae3");
		function_81403b2f(level.var_7f8b5d18, var_addcf1f5);
		var_ff640438++;
		var_addcf1f5 = function_6ada35ba(var_49e77886 + var_ff640438, "targetname");
		if(!isdefined(var_addcf1f5))
		{
			continue;
		}
		if(!var_782c4804)
		{
			var_e9020a33.var_6f1739c2 namespace_96fa87af::function_b6b0ca71(var_c66ffe01);
			var_e9020a33.var_6f1739c2 thread namespace_96fa87af::function_ff72658f();
			var_782c4804 = 1;
		}
		if(isdefined(var_255c21d.var_62978788) && !namespace_ad23e503::function_7922262b(var_255c21d.var_62978788))
		{
			var_e9020a33.var_6f1739c2 namespace_ad23e503::function_d3de6822("waiting_for_flag");
		}
	}
	var_e9020a33.var_6f1739c2 waittill("hash_6cf6ac7e");
	function_73c28a85(var_e9020a33, var_4477da45);
}

/*
	Name: function_73c28a85
	Namespace: namespace_36cbf523
	Checksum: 0x9ED6986C
	Offset: 0x43C8
	Size: 0x17D
	Parameters: 2
	Flags: None
*/
function function_73c28a85(var_e9020a33, var_4477da45)
{
	if(var_e9020a33.var_6f1739c2 namespace_cc27597::function_367f8966("cin_inf_00_00_sarah_vign_move_idle") || var_e9020a33.var_6f1739c2 namespace_cc27597::function_367f8966("cin_inf_00_00_sarah_vign_move_enter") || var_e9020a33.var_6f1739c2 namespace_cc27597::function_367f8966("cin_inf_00_00_sarah_vign_move_leave") || var_e9020a33.var_6f1739c2 namespace_cc27597::function_367f8966("cin_inf_00_00_sarah_vign_move_idle_talk"))
	{
		var_e9020a33.var_6f1739c2 namespace_cc27597::function_fcf56ab5();
	}
	var_e9020a33 namespace_71e9cb84::function_74d6b22f("sarah_objective_light", 0);
	var_e9020a33 function_52fddbd0();
	var_e9020a33.var_6f1739c2 function_dc8c8404();
	if(isdefined(var_e9020a33.var_5d21e1c9))
	{
		var_e9020a33.var_5d21e1c9 = 0;
	}
	namespace_82b91a51::function_76f13293();
	if(isdefined(var_4477da45))
	{
		var_e9020a33 thread [[var_4477da45]]();
	}
}

/*
	Name: function_6987653b
	Namespace: namespace_36cbf523
	Checksum: 0x3B22057
	Offset: 0x4550
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_6987653b()
{
	self endon("hash_128f8789");
	self.var_6f1739c2 endon("hash_128f8789");
	while(1)
	{
		self.var_f11a8dcd = 1;
		self function_84a3b11a();
		self.var_6f1739c2 namespace_ad23e503::function_1ab5ebec("waiting_for_flag");
		self.var_f11a8dcd = 0;
		self function_42cc1832();
		self.var_6f1739c2 namespace_ad23e503::function_d3de6822("waiting_for_flag");
	}
}

/*
	Name: function_1b0b83dc
	Namespace: namespace_36cbf523
	Checksum: 0x8A061767
	Offset: 0x4608
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1b0b83dc()
{
	self endon("hash_128f8789");
	self.var_6f1739c2 endon("hash_128f8789");
	level waittill("hash_8b5ed1cb");
	self.var_6f1739c2 function_6ae7eead();
}

/*
	Name: function_1a5bb539
	Namespace: namespace_36cbf523
	Checksum: 0x24B6D53
	Offset: 0x4658
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_1a5bb539(var_e9020a33, var_4477da45)
{
	var_e9020a33.var_6f1739c2 endon("hash_6cf6ac7e");
	var_e9020a33 endon("hash_128f8789");
	level waittill("hash_afb79ff0");
	if(isdefined(var_e9020a33.var_6f1739c2))
	{
		var_e9020a33.var_6f1739c2 function_333fd8f0(0, 99999, 99999);
		var_e9020a33.var_6f1739c2 namespace_96fa87af::function_a03a4445();
	}
	function_73c28a85(var_e9020a33, var_4477da45);
}

/*
	Name: function_8739c05f
	Namespace: namespace_36cbf523
	Checksum: 0xD915B7C7
	Offset: 0x4720
	Size: 0x20F
	Parameters: 0
	Flags: None
*/
function function_8739c05f()
{
	level endon("hash_8b5ed1cb");
	self endon("hash_128f8789");
	self.var_6f1739c2 endon("hash_128f8789");
	wait(3);
	while(1)
	{
		var_e243bf54 = [];
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(!isdefined(var_e243bf54))
			{
				var_e243bf54 = [];
			}
			else if(!function_6e2770d8(var_e243bf54))
			{
				var_e243bf54 = function_84970cc4(var_e243bf54);
			}
			var_e243bf54[var_e243bf54.size] = var_5dc5e20a.var_722885f3;
		}
		var_e243bf54 = function_57efbe1(var_e243bf54, self.var_6f1739c2.var_722885f3);
		if(isdefined(var_e243bf54[0]) && self.var_f11a8dcd)
		{
			if(function_87ea89a(self.var_6f1739c2.var_722885f3, var_e243bf54[0]) < 550)
			{
				self.var_6f1739c2 function_333fd8f0(300, 30, 600);
			}
			else
			{
				self.var_6f1739c2 function_6ae7eead();
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_84a3b11a
	Namespace: namespace_36cbf523
	Checksum: 0x7A34493F
	Offset: 0x4938
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_84a3b11a()
{
	self endon("hash_128f8789");
	self.var_6f1739c2 endon("hash_128f8789");
	self.var_6f1739c2 namespace_cc27597::function_43718187("cin_inf_00_00_sarah_vign_move_leave", self);
}

/*
	Name: function_42cc1832
	Namespace: namespace_36cbf523
	Checksum: 0xB6CBBFA5
	Offset: 0x4988
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_42cc1832(var_aa7f584c)
{
	self endon("hash_128f8789");
	self.var_6f1739c2 endon("hash_128f8789");
	if(isdefined(var_aa7f584c))
	{
		while(function_7d15e2f8(self.var_722885f3, var_aa7f584c.var_722885f3) > 512)
		{
			wait(0.1);
		}
	}
	self.var_6f1739c2 namespace_cc27597::function_43718187("cin_inf_00_00_sarah_vign_move_enter", self);
}

/*
	Name: function_637cd603
	Namespace: namespace_36cbf523
	Checksum: 0xCC19E352
	Offset: 0x4A28
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_637cd603()
{
	var_42189297 = namespace_82b91a51::function_740f8516("sarah");
	if(isdefined(var_42189297.var_6f1739c2))
	{
		var_42189297.var_6f1739c2 thread namespace_cc27597::function_43718187("cin_inf_00_00_sarah_vign_move_idle_talk", var_42189297);
	}
}

/*
	Name: function_12efefe3
	Namespace: namespace_36cbf523
	Checksum: 0x108190DC
	Offset: 0x4A98
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_12efefe3()
{
	self endon("hash_128f8789");
	self.var_5d21e1c9 = 1;
	while(isdefined(self))
	{
		if(self.var_5d21e1c9)
		{
			if(self function_6fcf2df7() > 3000 || !self.var_f11a8dcd)
			{
				namespace_d0ef8521::function_74d6b22f("cp_level_infection_sarah_goto", self);
				while(function_7d15e2f8(level.var_2395e945[0].var_722885f3, self.var_722885f3) > 3000 || !self.var_f11a8dcd && self.var_5d21e1c9)
				{
					wait(0.1);
				}
				namespace_d0ef8521::function_31cd1834("cp_level_infection_sarah_goto", self);
			}
		}
		wait(1);
	}
}

/*
	Name: function_6fcf2df7
	Namespace: namespace_36cbf523
	Checksum: 0xA0AFAF83
	Offset: 0x4B98
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_6fcf2df7()
{
	var_ccd4343c = 10000;
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		var_cacbf7e2 = function_7d15e2f8(level.var_2395e945[var_c957f6b6].var_722885f3, self.var_722885f3);
		if(var_cacbf7e2 < var_ccd4343c)
		{
			var_ccd4343c = var_cacbf7e2;
		}
	}
	return var_ccd4343c;
}

/*
	Name: function_1ed270eb
	Namespace: namespace_36cbf523
	Checksum: 0xE709E4E9
	Offset: 0x4C40
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function function_1ed270eb(var_49e77886, var_ff640438)
{
	var_d7faa155 = [];
	while(1)
	{
		var_addcf1f5 = function_6ada35ba(var_49e77886 + var_ff640438, "targetname");
		if(isdefined(var_addcf1f5))
		{
			var_addcf1f5.var_ad3feaf6 = var_ff640438;
			namespace_84970cc4::function_69554b3e(var_d7faa155, var_addcf1f5);
			var_ff640438++;
		}
		else
		{
			return var_d7faa155;
		}
	}
}

/*
	Name: function_81b715e
	Namespace: namespace_36cbf523
	Checksum: 0x7471A1BE
	Offset: 0x4CF0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_81b715e(var_73044d06)
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_aef176e7);
		if(function_65f192a6(var_aef176e7))
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_73044d06.size; var_c957f6b6++)
			{
				if(isdefined(var_73044d06[var_c957f6b6]) && var_73044d06[var_c957f6b6].var_ad3feaf6 < self.var_ad3feaf6)
				{
					var_73044d06[var_c957f6b6] notify("hash_4dbf3ae3");
					namespace_82b91a51::function_76f13293();
				}
			}
			return;
		}
	}
}

/*
	Name: function_aa0ddbc3
	Namespace: namespace_36cbf523
	Checksum: 0xBFC4B435
	Offset: 0x4DD8
	Size: 0x57
	Parameters: 2
	Flags: None
*/
function function_aa0ddbc3(var_e2e6bbcb, var_e82a00df)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	if(!isdefined(var_e82a00df))
	{
		var_e82a00df = 0.1;
	}
	level.var_a5596f65 = var_e2e6bbcb;
	level.var_56f93473 = var_e82a00df;
}

/*
	Name: function_a45331fb
	Namespace: namespace_36cbf523
	Checksum: 0x7B144468
	Offset: 0x4E38
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_a45331fb()
{
	if(!isdefined(level.var_a5596f65))
	{
		level.var_a5596f65 = 0;
	}
	return level.var_a5596f65;
}

/*
	Name: function_cd11e6ad
	Namespace: namespace_36cbf523
	Checksum: 0x9CF6B3A9
	Offset: 0x4E68
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_cd11e6ad()
{
	self endon("hash_b1975c04");
	if(isdefined(self.var_4227b8a9) && self.var_4227b8a9)
	{
		return;
	}
	function_151fb8bf();
	if(isdefined(self))
	{
		self namespace_71e9cb84::function_331efedc("ai_dni_rez_out");
	}
	wait(0.5);
	if(isdefined(self))
	{
		self function_dc8c8404();
		self notify("hash_b1975c04");
	}
}

/*
	Name: function_1f77a211
	Namespace: namespace_36cbf523
	Checksum: 0x655A7E62
	Offset: 0x4F10
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_1f77a211()
{
	self endon("hash_b1975c04");
	if(isdefined(self.var_4227b8a9) && self.var_4227b8a9)
	{
		return;
	}
	self waittill("hash_c67510f3", var_5d5ef481);
	function_151fb8bf();
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 namespace_71e9cb84::function_331efedc("ai_dni_rez_out");
	}
	wait(0.5);
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 function_dc8c8404();
	}
	if(isdefined(self))
	{
		self notify("hash_b1975c04");
	}
}

/*
	Name: function_796d4d97
	Namespace: namespace_36cbf523
	Checksum: 0xA915A025
	Offset: 0x4FD8
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_796d4d97()
{
	if(!self function_b0896729() || function_85e4c3b3(self))
	{
		return;
	}
	var_fdb28cb6 = function_c4d5ec1f("gadget_exo_breakdown");
	var_1391f610 = function_c4d5ec1f("gadget_mrpukey");
	var_e0871753 = function_c4d5ec1f("gadget_mrpukey_upgraded");
	self waittill("hash_f8c5dd60", var_dfcc01fd, var_3a212fd7);
	if(var_dfcc01fd === var_fdb28cb6 || var_dfcc01fd === var_1391f610 || var_dfcc01fd === var_e0871753)
	{
		if(isdefined(self))
		{
			self.var_4227b8a9 = 1;
			self notify("hash_b1975c04");
		}
		self waittill("hash_c67510f3", var_5d5ef481);
		if(isdefined(var_5d5ef481))
		{
			var_5d5ef481 namespace_71e9cb84::function_74d6b22f("exploding_ai_deaths", 1);
		}
		namespace_82b91a51::function_76f13293();
		if(isdefined(var_5d5ef481))
		{
			var_5d5ef481 function_dc8c8404();
		}
	}
}

/*
	Name: function_151fb8bf
	Namespace: namespace_36cbf523
	Checksum: 0x81929789
	Offset: 0x5178
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_151fb8bf(var_f7da2b48, var_12cf56f6)
{
	if(!isdefined(var_f7da2b48))
	{
		var_f7da2b48 = 0.1;
	}
	if(!isdefined(var_12cf56f6))
	{
		var_12cf56f6 = 0.3;
	}
	if(isdefined(level.var_56f93473))
	{
		wait(level.var_56f93473);
	}
	else
	{
		wait(function_72a94f05(var_f7da2b48, var_12cf56f6));
	}
}

/*
	Name: function_dd8ade86
	Namespace: namespace_36cbf523
	Checksum: 0x14D6796D
	Offset: 0x51F8
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_dd8ade86()
{
	self endon("hash_b1975c04");
	if(isdefined(self.var_4227b8a9) && self.var_4227b8a9)
	{
		return;
	}
	self waittill("hash_c67510f3", var_5d5ef481);
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 namespace_71e9cb84::function_331efedc("ai_dni_rez_out");
	}
	wait(0.5);
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 function_dc8c8404();
	}
	if(isdefined(self))
	{
		self notify("hash_b1975c04");
	}
}

/*
	Name: function_c3e494e3
	Namespace: namespace_36cbf523
	Checksum: 0xDC3C6C79
	Offset: 0x52A8
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_c3e494e3(var_a8563e07)
{
	var_4b570327 = 0;
	if(isdefined(self.var_170527fb))
	{
		if(self.var_170527fb == "sp_tank_gunner_ai")
		{
			var_4b570327 = 1;
			self thread function_dd8ade86();
		}
	}
	if(!var_4b570327)
	{
		if(self function_b0896729())
		{
			self thread function_1f77a211();
			self thread function_cd11e6ad();
		}
	}
}

/*
	Name: function_1cbdd501
	Namespace: namespace_36cbf523
	Checksum: 0xB9754C0D
	Offset: 0x5360
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_1cbdd501(var_a8563e07)
{
	self endon("hash_b1975c04");
	if(isdefined(level.var_74bd7d24) && level.var_74bd7d24)
	{
		if(function_dc99997a(0, 101) < 60)
		{
			wait(0.75);
			if(isdefined(self))
			{
				self function_921a1574("vox_ai_falldeath_scream_male");
			}
		}
	}
}

/*
	Name: function_b0896729
	Namespace: namespace_36cbf523
	Checksum: 0x48C0BE73
	Offset: 0x53E8
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_b0896729()
{
	return !function_85e4c3b3(self) && function_a45331fb() && self.var_3e94206a != "allies";
}

/*
	Name: function_674ecd85
	Namespace: namespace_36cbf523
	Checksum: 0xA21E4699
	Offset: 0x5438
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_674ecd85()
{
	var_e3b635fb = function_b8494651("axis", "allies");
	namespace_84970cc4::function_57dd1fd4(var_e3b635fb, &function_52b9aea3);
}

/*
	Name: function_52b9aea3
	Namespace: namespace_36cbf523
	Checksum: 0xB2ED559D
	Offset: 0x5498
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_52b9aea3()
{
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_b32291d7
	Namespace: namespace_36cbf523
	Checksum: 0xF3618505
	Offset: 0x54C8
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_b32291d7(var_a0b86a77, var_5e953b6)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	var_c77d2837 = function_99201f25(var_a0b86a77, var_5e953b6);
	namespace_84970cc4::function_57dd1fd4(var_c77d2837, &function_52b9aea3);
}

/*
	Name: function_e66c8377
	Namespace: namespace_36cbf523
	Checksum: 0x75588203
	Offset: 0x5548
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_e66c8377()
{
	self namespace_82b91a51::function_4b741fdc();
	self function_2992720d();
}

/*
	Name: function_5e78ab8c
	Namespace: namespace_36cbf523
	Checksum: 0x3B1C7C95
	Offset: 0x5588
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_5e78ab8c()
{
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_331efedc("ai_dni_rez_out");
	wait(0.5);
	self function_dc8c8404();
}

/*
	Name: function_c32dc5f6
	Namespace: namespace_36cbf523
	Checksum: 0x3D5711E5
	Offset: 0x55E0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_c32dc5f6(var_c77d2837)
{
	function_3bca22f1(var_c77d2837, 1);
}

/*
	Name: function_368baff9
	Namespace: namespace_36cbf523
	Checksum: 0xD659FAF8
	Offset: 0x5610
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_368baff9(var_c77d2837)
{
	function_3bca22f1(var_c77d2837, 0);
}

/*
	Name: function_b38b2335
	Namespace: namespace_36cbf523
	Checksum: 0x104ABFF8
	Offset: 0x5640
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_b38b2335(var_c77d2837)
{
	function_3bca22f1(var_c77d2837, 0);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_5dbf7eca(var_a3d46ee4.var_170527fb, "sarah"))
		{
			var_e9020a33 = var_a3d46ee4;
		}
	}
	if(isdefined(var_e9020a33))
	{
		var_e9020a33 thread function_cd950c1a();
	}
}

/*
	Name: function_cd950c1a
	Namespace: namespace_36cbf523
	Checksum: 0x219F0092
	Offset: 0x5738
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_cd950c1a()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	namespace_82b91a51::function_76f13293();
	self namespace_82b91a51::function_20ffc8ff();
}

/*
	Name: function_3bca22f1
	Namespace: namespace_36cbf523
	Checksum: 0x4BB379C5
	Offset: 0x5788
	Size: 0x15B
	Parameters: 2
	Flags: None
*/
function function_3bca22f1(var_c77d2837, var_ed6b2f03)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(isdefined(var_a3d46ee4.var_170527fb))
		{
			if(function_5dbf7eca(var_a3d46ee4.var_170527fb, "sarah"))
			{
				var_e9020a33 = var_a3d46ee4;
			}
		}
	}
	if(isdefined(var_e9020a33))
	{
		if(function_e70ab977(var_e9020a33))
		{
			var_e9020a33 namespace_d84e54db::function_c9e45d52(1);
		}
		if(isdefined(var_ed6b2f03) && var_ed6b2f03)
		{
			var_e9020a33 namespace_71e9cb84::function_74d6b22f("sarah_objective_light", 1);
		}
		else
		{
			var_e9020a33 namespace_71e9cb84::function_74d6b22f("sarah_objective_light", 0);
		}
	}
}

/*
	Name: function_5f6e4092
	Namespace: namespace_36cbf523
	Checksum: 0x9E9FF9A6
	Offset: 0x58F0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5f6e4092()
{
	namespace_84970cc4::function_57dd1fd4(function_99201f25("snow_disable", "script_noteworthy"), &function_574d968f);
}

/*
	Name: function_a3f21cef
	Namespace: namespace_36cbf523
	Checksum: 0xEB7DFADB
	Offset: 0x5940
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function function_a3f21cef(var_294306eb, var_d5a2e6ed, var_5a248c3f, var_ed131f0f)
{
	if(!isdefined(var_5a248c3f))
	{
		var_5a248c3f = "targetname";
	}
	if(!isdefined(var_ed131f0f))
	{
		var_ed131f0f = 1;
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_294306eb), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_d5a2e6ed), "Dev Block strings are not supported");
	#/
	self thread function_62c5971c(var_294306eb, var_d5a2e6ed, var_5a248c3f, var_ed131f0f);
}

/*
	Name: function_62c5971c
	Namespace: namespace_36cbf523
	Checksum: 0xDAA761E6
	Offset: 0x5A10
	Size: 0x7B
	Parameters: 4
	Flags: None
*/
function function_62c5971c(var_294306eb, var_d5a2e6ed, var_5a248c3f, var_ed131f0f)
{
	if(var_ed131f0f)
	{
		self namespace_cc27597::function_c35e6aab(var_294306eb);
	}
	namespace_4dbf3ae3::function_1ab5ebec(var_d5a2e6ed, var_5a248c3f, undefined, 1);
	self namespace_cc27597::function_43718187(var_294306eb);
}

/*
	Name: function_1926d38d
	Namespace: namespace_36cbf523
	Checksum: 0x450A7301
	Offset: 0x5A98
	Size: 0x8B
	Parameters: 5
	Flags: None
*/
function function_1926d38d(var_294306eb, var_df0a8127, var_5430298a, var_e280766f, var_ed131f0f)
{
	if(!isdefined(var_ed131f0f))
	{
		var_ed131f0f = 1;
	}
	if(var_ed131f0f)
	{
		self namespace_cc27597::function_c35e6aab(var_294306eb);
	}
	self thread function_14c6806e(var_294306eb, var_df0a8127, var_5430298a, var_e280766f, var_ed131f0f);
}

/*
	Name: function_14c6806e
	Namespace: namespace_36cbf523
	Checksum: 0x20EDA803
	Offset: 0x5B30
	Size: 0x1E7
	Parameters: 5
	Flags: None
*/
function function_14c6806e(var_294306eb, var_df0a8127, var_5430298a, var_e280766f, var_ed131f0f)
{
	var_568fff7e = function_6ada35ba(var_5430298a, "targetname");
	var_fb0d257b = function_6ada35ba(var_e280766f, "targetname");
	var_4c92143d = namespace_14b42b8a::function_7922262b(var_df0a8127, "targetname");
	while(1)
	{
		namespace_4dbf3ae3::function_1ab5ebec(var_e280766f, "targetname");
		if(level.var_2395e945.size == 1)
		{
			if(level.var_2395e945[0] function_f9baa5f4(var_4c92143d, var_568fff7e, var_fb0d257b, 1) || level.var_2395e945[0] function_32fa5072(var_568fff7e))
			{
				self thread namespace_cc27597::function_43718187(var_294306eb);
				var_568fff7e function_dc8c8404();
				var_fb0d257b function_dc8c8404();
				break;
			}
		}
		else
		{
			self thread namespace_cc27597::function_43718187(var_294306eb);
			var_568fff7e function_dc8c8404();
			var_fb0d257b function_dc8c8404();
			break;
		}
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_951577ac
	Namespace: namespace_36cbf523
	Checksum: 0xE15F3FE2
	Offset: 0x5D20
	Size: 0x55
	Parameters: 2
	Flags: None
*/
function function_951577ac(var_568fff7e, var_fb0d257b)
{
	if(self function_32fa5072(var_fb0d257b) && !self function_32fa5072(var_568fff7e))
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_a84dcdf8
	Namespace: namespace_36cbf523
	Checksum: 0x94251D61
	Offset: 0x5D80
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function function_a84dcdf8(var_4c92143d, var_cc9ff513, var_8703edc3)
{
	if(!isdefined(var_cc9ff513))
	{
		var_cc9ff513 = 0.9;
	}
	if(!isdefined(var_8703edc3))
	{
		var_8703edc3 = 0;
	}
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	if(!isdefined(self) || !isdefined(var_4c92143d))
	{
		return 0;
	}
	if(self namespace_82b91a51::function_4ccc8ec5(var_4c92143d.var_722885f3, var_cc9ff513, var_8703edc3))
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_f9baa5f4
	Namespace: namespace_36cbf523
	Checksum: 0x9778C623
	Offset: 0x5E40
	Size: 0x131
	Parameters: 4
	Flags: None
*/
function function_f9baa5f4(var_4c92143d, var_568fff7e, var_fb0d257b, var_f05509e4)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_78962fff = 0;
	var_fc1c9f = function_951577ac(var_568fff7e, var_fb0d257b);
	var_59797e5f = function_a84dcdf8(var_4c92143d);
	while(var_fc1c9f && var_59797e5f && var_78962fff < var_f05509e4)
	{
		var_fc1c9f = function_951577ac(var_568fff7e, var_fb0d257b);
		var_59797e5f = function_a84dcdf8(var_4c92143d);
		wait(0.1);
		var_78962fff = var_78962fff + 0.1;
	}
	if(var_fc1c9f && var_59797e5f && var_78962fff >= var_f05509e4)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_c6e0527c
	Namespace: namespace_36cbf523
	Checksum: 0x31DFF56B
	Offset: 0x5F80
	Size: 0xC7
	Parameters: 4
	Flags: None
*/
function function_c6e0527c(var_df0a8127, var_f05509e4, var_119a2aac, var_78def9f0)
{
	if(!isdefined(var_78def9f0))
	{
		var_78def9f0 = undefined;
	}
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_4c92143d = namespace_14b42b8a::function_7922262b(var_df0a8127, "targetname");
	while(1)
	{
		if(self function_72268bc2(var_4c92143d, var_f05509e4, var_78def9f0))
		{
			level notify(var_119a2aac);
			break;
		}
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_17062d77
	Namespace: namespace_36cbf523
	Checksum: 0x736C46F3
	Offset: 0x6050
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_17062d77(var_4c92143d, var_78def9f0)
{
	if(isdefined(var_78def9f0))
	{
		if(function_87ea89a(self.var_722885f3, var_4c92143d.var_722885f3) < var_78def9f0)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
	else
	{
		return 1;
	}
}

/*
	Name: function_72268bc2
	Namespace: namespace_36cbf523
	Checksum: 0x7CBCF45
	Offset: 0x60C0
	Size: 0x151
	Parameters: 3
	Flags: None
*/
function function_72268bc2(var_4c92143d, var_f05509e4, var_78def9f0)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_78962fff = 0;
	if(isdefined(var_4c92143d.var_f8456b37))
	{
		var_78def9f0 = var_4c92143d.var_f8456b37;
	}
	var_59797e5f = function_a84dcdf8(var_4c92143d);
	var_1cc80e84 = function_17062d77(var_4c92143d, var_78def9f0);
	while(var_59797e5f && var_59797e5f && var_78962fff < var_f05509e4)
	{
		var_59797e5f = function_a84dcdf8(var_4c92143d);
		var_1cc80e84 = function_17062d77(var_4c92143d, var_78def9f0);
		wait(0.1);
		var_78962fff = var_78962fff + 0.1;
	}
	if(var_59797e5f && var_1cc80e84 && var_78962fff >= var_f05509e4)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_7a4e1da3
	Namespace: namespace_36cbf523
	Checksum: 0x831ACA77
	Offset: 0x6220
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_7a4e1da3()
{
	if(isdefined(self.var_c26d3b77) && self.var_c26d3b77 != level.var_6c3e6703 && self function_2103ff4b(self.var_c26d3b77))
	{
		self function_cb53a41e(self.var_c26d3b77);
	}
	else
	{
		var_d646ce1c = self function_da26566c();
		if(isdefined(var_d646ce1c) && var_d646ce1c.size > 0)
		{
			self function_cb53a41e(var_d646ce1c[0]);
		}
	}
}

/*
	Name: function_9f10c537
	Namespace: namespace_36cbf523
	Checksum: 0xC1B97616
	Offset: 0x62E8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9f10c537()
{
	self namespace_82b91a51::function_16c71b8(1);
	self function_83fd42b5();
}

/*
	Name: function_e905c73c
	Namespace: namespace_36cbf523
	Checksum: 0x744F2F38
	Offset: 0x6328
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_e905c73c()
{
	self namespace_82b91a51::function_16c71b8(0);
	self function_4890e520();
}

/*
	Name: function_e14494e9
	Namespace: namespace_36cbf523
	Checksum: 0x564D59FE
	Offset: 0x6368
	Size: 0x8F
	Parameters: 5
	Flags: None
*/
function function_e14494e9(var_a775367d, var_88c789f5, var_8a7c6b8f, var_506b336f, var_3e671a1)
{
	while(1)
	{
		if(namespace_d5067552::function_56a7483f(var_a775367d))
		{
			wait(var_506b336f);
			function_903e442f(var_88c789f5, var_8a7c6b8f, var_3e671a1);
			break;
		}
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_903e442f
	Namespace: namespace_36cbf523
	Checksum: 0x49030BF1
	Offset: 0x6400
	Size: 0x177
	Parameters: 3
	Flags: None
*/
function function_903e442f(var_28c25ffb, var_8a7c6b8f, var_3e671a1)
{
	while(1)
	{
		var_e3b635fb = function_b8494651("axis");
		var_67825717 = function_6ada35ba(var_8a7c6b8f, "targetname");
		var_60db32a8 = [];
		if(isdefined(var_67825717))
		{
			if(var_e3b635fb.size > 0)
			{
				foreach(var_d84e54db in var_e3b635fb)
				{
					if(var_d84e54db function_32fa5072(var_67825717))
					{
						var_60db32a8[var_60db32a8.size] = var_d84e54db;
					}
				}
			}
		}
		else if(var_60db32a8.size <= var_3e671a1)
		{
			namespace_d5067552::function_bae40a28(var_28c25ffb);
			break;
		}
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_e62729fb
	Namespace: namespace_36cbf523
	Checksum: 0xC5AFF9A4
	Offset: 0x6580
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_e62729fb(var_67825717)
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 128;
	self function_169cc712(var_67825717);
	self waittill("hash_41d1aaf0");
	self.var_7dfaf62 = 1024;
}

/*
	Name: function_642da963
	Namespace: namespace_36cbf523
	Checksum: 0x33965893
	Offset: 0x65E0
	Size: 0x119
	Parameters: 2
	Flags: None
*/
function function_642da963(var_525ec887, var_9ecf6f45)
{
	var_62666705 = function_6ada35ba(var_9ecf6f45, "targetname");
	var_56dd1913 = function_c20c2e8(var_525ec887, "targetname");
	foreach(var_e98b4e9b in var_56dd1913)
	{
		if(function_5b49d38c(var_e98b4e9b))
		{
			var_e98b4e9b thread function_e62729fb(var_62666705);
		}
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_810ccf7
	Namespace: namespace_36cbf523
	Checksum: 0x67091167
	Offset: 0x6708
	Size: 0x171
	Parameters: 2
	Flags: None
*/
function function_810ccf7(var_ff2595a1, var_ca15af83)
{
	var_56dd1913 = function_b8494651("axis");
	var_1e28a049 = function_6ada35ba(var_ff2595a1, "targetname");
	var_901a3e4b = function_6ada35ba(var_ca15af83, "targetname");
	if(isdefined(var_1e28a049) && isdefined(var_901a3e4b))
	{
		foreach(var_e98b4e9b in var_56dd1913)
		{
			if(function_5b49d38c(var_e98b4e9b))
			{
				if(var_e98b4e9b function_32fa5072(var_1e28a049))
				{
					var_e98b4e9b thread function_e62729fb(var_901a3e4b);
				}
			}
			namespace_82b91a51::function_76f13293();
		}
	}
}

/*
	Name: function_e02dee76
	Namespace: namespace_36cbf523
	Checksum: 0x25B3BD67
	Offset: 0x6888
	Size: 0x9D
	Parameters: 5
	Flags: None
*/
function function_e02dee76(var_6bfe1586, var_7aa7a596, var_9bce0ee1, var_9d21dc7c, var_7f6140b9)
{
	/#
		var_37a329de = (1, 1, 1);
		var_beaeb5aa = var_6bfe1586 function_4e1991e7("Dev Block strings are not supported", "Dev Block strings are not supported", "Dev Block strings are not supported", "Dev Block strings are not supported", var_9bce0ee1, var_9d21dc7c, var_7f6140b9, var_37a329de, var_7aa7a596);
		return var_beaeb5aa;
	#/
}

/*
	Name: function_4e1991e7
	Namespace: namespace_36cbf523
	Checksum: 0xFDC8EC80
	Offset: 0x6930
	Size: 0x1B1
	Parameters: 9
	Flags: None
*/
function function_4e1991e7(var_b5536acc, var_db55e535, var_740218b1, var_f9134763, var_b0cbc08e, var_15dde6ff, var_2363da9c, var_d900369a, var_fdbe8054)
{
	/#
		var_beaeb5aa = function_ad13099a(self);
		var_beaeb5aa.var_f83454ec = "Dev Block strings are not supported";
		var_beaeb5aa.var_83253ac2 = "Dev Block strings are not supported";
		var_beaeb5aa.var_b5536acc = var_b5536acc;
		var_beaeb5aa.var_db55e535 = var_db55e535;
		var_beaeb5aa.var_740218b1 = var_740218b1;
		var_beaeb5aa.var_f9134763 = var_f9134763;
		var_beaeb5aa.var_4f8217af = var_beaeb5aa.var_4f8217af + var_b0cbc08e;
		var_beaeb5aa.var_297f9d46 = var_beaeb5aa.var_297f9d46 + var_15dde6ff;
		var_beaeb5aa.var_79e0f792 = 1;
		var_beaeb5aa.var_2363da9c = var_2363da9c;
		var_beaeb5aa.var_aabe9f43 = 1;
		var_beaeb5aa.var_d900369a = var_d900369a;
		var_beaeb5aa.var_5773c805 = 1;
		var_beaeb5aa function_f6181aca(var_fdbe8054);
		return var_beaeb5aa;
	#/
}

/*
	Name: function_6f990596
	Namespace: namespace_36cbf523
	Checksum: 0x743C6BBB
	Offset: 0x6AF0
	Size: 0x2B5
	Parameters: 1
	Flags: None
*/
function function_6f990596(var_2a97d9fd)
{
	if(!isdefined(var_2a97d9fd))
	{
		var_2a97d9fd = 512;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		if(!isdefined(self))
		{
			return 0;
		}
		if(!isdefined(level.var_2395e945[var_c957f6b6]))
		{
			continue;
		}
		var_e0065f56 = level.var_2395e945[var_c957f6b6] function_89c87c9c();
		var_e9f210f5 = function_bc7ce905(var_e0065f56);
		var_46d6659f = function_f679a325(var_e9f210f5);
		var_e1ddf616 = self.var_722885f3;
		var_38347c = level.var_2395e945[var_c957f6b6] function_e59527c1();
		var_7b39f5a = var_e1ddf616 - var_38347c;
		var_43bf7b60 = function_f679a325(var_7b39f5a);
		var_b3e91d7c = function_5f9a4869(var_46d6659f, var_43bf7b60);
		if(var_b3e91d7c >= 1)
		{
			var_72af2465 = 0;
		}
		else if(var_b3e91d7c <= -1)
		{
			var_72af2465 = 180;
		}
		else
		{
			var_72af2465 = function_88c629b7(var_b3e91d7c);
		}
		var_3765963b = function_f3087faa("cg_fov");
		var_71a4a8e1 = function_f3087faa("g_banzai_player_fov_buffer");
		if(var_71a4a8e1 <= 0)
		{
			var_71a4a8e1 = 0.2;
		}
		var_ad758dfb = var_72af2465 <= var_3765963b * 0.5 * 1 - var_71a4a8e1;
		if(isdefined(var_ad758dfb) && var_ad758dfb || function_7d15e2f8(level.var_2395e945[var_c957f6b6].var_722885f3, self.var_722885f3) < var_2a97d9fd)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_9d8bcc37
	Namespace: namespace_36cbf523
	Checksum: 0xE641FE3A
	Offset: 0x6DB0
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_9d8bcc37(var_398ffcb7)
{
	foreach(var_6df9264 in var_398ffcb7)
	{
		var_6df9264 function_8c8e79fe();
	}
}

/*
	Name: function_bdea6c61
	Namespace: namespace_36cbf523
	Checksum: 0x9D82DC86
	Offset: 0x6E50
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_bdea6c61(var_398ffcb7)
{
	foreach(var_6df9264 in var_398ffcb7)
	{
		var_6df9264 function_48f26766();
	}
}

/*
	Name: function_b8670a1c
	Namespace: namespace_36cbf523
	Checksum: 0x6CCF645
	Offset: 0x6EF0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b8670a1c()
{
	level.var_ac69c49c = level.var_2435cc61;
	level namespace_82b91a51::function_5d60e278(5000);
}

/*
	Name: function_ed468ba2
	Namespace: namespace_36cbf523
	Checksum: 0xBDB1DB8F
	Offset: 0x6F28
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ed468ba2()
{
	if(isdefined(level.var_ac69c49c))
	{
		level namespace_82b91a51::function_5d60e278(level.var_ac69c49c);
	}
}

/*
	Name: function_48da4758
	Namespace: namespace_36cbf523
	Checksum: 0xA65C5030
	Offset: 0x6F60
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_48da4758()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	self thread function_9fc02a8();
	self thread function_21372ebc();
	while(1)
	{
		self waittill("hash_b64936fe", var_92eb0f0e);
		switch(var_92eb0f0e)
		{
			case "attack_melee":
			case "behind":
			case "close":
			case "death":
			case "electrocute":
			{
				level thread function_2a44943d(self, var_92eb0f0e, 1);
				break;
			}
			case "ambient":
			case "crawler":
			case "sprint":
			case "taunt":
			case "teardown":
			{
				level thread function_2a44943d(self, var_92eb0f0e, 0);
				break;
			}
			case default:
			{
				if(isdefined(level.var_6bda12f0))
				{
					if(isdefined(level.var_6bda12f0[var_92eb0f0e]))
					{
						level thread function_2a44943d(self, var_92eb0f0e, 0);
					}
				}
				break;
			}
		}
	}
}

/*
	Name: function_2a44943d
	Namespace: namespace_36cbf523
	Checksum: 0x93FBB8D6
	Offset: 0x70D0
	Size: 0x17B
	Parameters: 3
	Flags: None
*/
function function_2a44943d(var_fb9423cf, var_fe311e35, var_687cd74d)
{
	var_fb9423cf endon("hash_128f8789");
	if(!isdefined(var_fb9423cf))
	{
		return;
	}
	if(!isdefined(var_fb9423cf.var_e4b959c5))
	{
		return;
	}
	var_48b937ab = "zmb_vocals_" + var_fb9423cf.var_e4b959c5 + "_" + var_fe311e35;
	if(function_bde86827())
	{
		if(isdefined(var_687cd74d) && var_687cd74d)
		{
			if(var_fe311e35 == "death")
			{
				var_fb9423cf function_921a1574(var_48b937ab);
			}
			else
			{
				var_fb9423cf function_8b51b0e9(var_48b937ab, "j_head");
			}
		}
		else if(!(isdefined(var_fb9423cf.var_d1d18f79) && var_fb9423cf.var_d1d18f79))
		{
			var_fb9423cf.var_d1d18f79 = 1;
			var_fb9423cf function_ca265377(var_48b937ab, "sounddone", "j_head");
			var_fb9423cf waittill("hash_7e0f33fa");
			var_fb9423cf.var_d1d18f79 = 0;
		}
	}
}

/*
	Name: function_9fc02a8
	Namespace: namespace_36cbf523
	Checksum: 0x68A5DA59
	Offset: 0x7258
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_9fc02a8()
{
	self endon("hash_128f8789");
	wait(function_72a94f05(1, 3));
	while(1)
	{
		var_fe311e35 = "ambient";
		if(!isdefined(self.var_402a69d5))
		{
			wait(0.5);
			continue;
		}
		switch(self.var_402a69d5)
		{
			case "walk":
			{
				var_fe311e35 = "ambient";
				break;
			}
			case "run":
			{
				var_fe311e35 = "sprint";
				break;
			}
			case "sprint":
			{
				var_fe311e35 = "sprint";
				break;
			}
		}
		if(isdefined(self.var_a7f77d7c) && self.var_a7f77d7c)
		{
			var_fe311e35 = "crawler";
		}
		self notify("hash_b64936fe", var_fe311e35);
		wait(function_72a94f05(1, 4));
	}
}

/*
	Name: function_21372ebc
	Namespace: namespace_36cbf523
	Checksum: 0x2604174A
	Offset: 0x7378
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_21372ebc()
{
	self endon("hash_643a7daf");
	self waittill("hash_128f8789", var_a0ad4f34, var_597cacac);
	if(isdefined(self))
	{
		level thread function_2a44943d(self, "death", 1);
	}
}

/*
	Name: function_a69f0aaf
	Namespace: namespace_36cbf523
	Checksum: 0xCDCAA301
	Offset: 0x73E0
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_a69f0aaf()
{
	while(1)
	{
		level.var_96898770 = 0;
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_bde86827
	Namespace: namespace_36cbf523
	Checksum: 0x695FC1D4
	Offset: 0x7418
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_bde86827()
{
	if(!isdefined(level.var_96898770))
	{
		level thread function_a69f0aaf();
	}
	if(level.var_96898770 >= 2)
	{
		return 0;
	}
	level.var_96898770++;
	return 1;
}

/*
	Name: function_b9217cbc
	Namespace: namespace_36cbf523
	Checksum: 0x8676D68C
	Offset: 0x7468
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_b9217cbc()
{
	level endon("hash_25601ed0");
	self endon("hash_3f7b661c");
	level waittill("hash_ee152b14");
	if(!isdefined(level.var_b2d1749f))
	{
		level.var_b2d1749f = 0;
		level.var_9e400e00 = function_b8494651("axis");
	}
	while(1)
	{
		wait(1);
		var_e78c0153 = GetTime();
		if(var_e78c0153 > level.var_b2d1749f + 1000)
		{
			level.var_b2d1749f = var_e78c0153;
			level.var_9e400e00 = function_b8494651("axis");
		}
		var_388e905c = level.var_9e400e00;
		var_a011d528 = 0;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_388e905c.size; var_c957f6b6++)
		{
			if(!isdefined(var_388e905c[var_c957f6b6]))
			{
				continue;
			}
			if(function_cb3d1c9b(var_388e905c[var_c957f6b6].var_722885f3, self.var_722885f3) < 62500)
			{
				var_3b6e5f7e = self function_c43df297(var_388e905c[var_c957f6b6].var_722885f3);
				var_6a8c5235 = self.var_722885f3[2] - var_388e905c[var_c957f6b6].var_722885f3[2];
				if(var_3b6e5f7e < -95 || var_3b6e5f7e > 95 && function_69c2f683(var_6a8c5235) < 50)
				{
					var_388e905c[var_c957f6b6] notify("hash_b64936fe", "behind");
					var_a011d528 = 1;
					break;
				}
			}
		}
		if(var_a011d528)
		{
			wait(5);
		}
	}
}

/*
	Name: function_c43df297
	Namespace: namespace_36cbf523
	Checksum: 0x182B1638
	Offset: 0x76C0
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_c43df297(var_e18d5855)
{
	var_a2d47c3d = var_e18d5855;
	var_3b6e5f7e = self.var_6ab6f4fd[1] - function_fcaa5774(var_a2d47c3d);
	var_3b6e5f7e = function_3dfa27b4(var_3b6e5f7e);
	return var_3b6e5f7e;
}

/*
	Name: function_fcaa5774
	Namespace: namespace_36cbf523
	Checksum: 0x70DBC80E
	Offset: 0x7740
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function function_fcaa5774(var_22ae8d39)
{
	var_6ab6f4fd = function_bdcdc423(var_22ae8d39 - self.var_722885f3);
	return var_6ab6f4fd[1];
}

/*
	Name: function_9f0ad974
	Namespace: namespace_36cbf523
	Checksum: 0x136B03EB
	Offset: 0x7790
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_9f0ad974(var_a2d47c3d)
{
	var_b8c2ad45 = 99999.9;
	var_5ddef2e5 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
	{
		var_2a97d9fd = function_7d15e2f8(var_5ddef2e5[var_c957f6b6].var_722885f3, var_a2d47c3d);
		if(var_2a97d9fd < var_b8c2ad45)
		{
			var_b8c2ad45 = var_2a97d9fd;
		}
	}
	return var_b8c2ad45;
}

/*
	Name: function_eaf9c027
	Namespace: namespace_36cbf523
	Checksum: 0xA6C68EC2
	Offset: 0x7858
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_eaf9c027(var_6d8a08b3, var_e0017db3)
{
	if(!isdefined(var_e0017db3))
	{
		var_e0017db3 = "fullscreen_additive";
	}
	level function_dd048f8d("dni_futz", var_6d8a08b3, var_e0017db3);
}

/*
	Name: function_dd048f8d
	Namespace: namespace_36cbf523
	Checksum: 0x32F63BB3
	Offset: 0x78B8
	Size: 0x221
	Parameters: 5
	Flags: None
*/
function function_dd048f8d(var_8907c2b8, var_6d8a08b3, var_e0017db3, var_28856194, var_ecc70d4b)
{
	if(!isdefined(var_28856194))
	{
		var_28856194 = 0;
	}
	if(!isdefined(var_ecc70d4b))
	{
		var_ecc70d4b = 0;
	}
	var_b14c1a2c = [];
	var_b14c1a2c["dni_interrupt"] = "postfx_dni_interrupt";
	var_b14c1a2c["dni_futz"] = "postfx_futz";
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b14c1a2c[var_8907c2b8]), "Dev Block strings are not supported" + var_8907c2b8);
	#/
	if(var_28856194)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a namespace_71e9cb84::function_688ed188(var_b14c1a2c[var_8907c2b8], 1);
		}
		wait(1);
	}
	if(isdefined(var_6d8a08b3))
	{
		namespace_ce7c3ed5::function_8f7bd062(var_6d8a08b3, var_e0017db3);
		if(var_ecc70d4b)
		{
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				var_5dc5e20a namespace_71e9cb84::function_688ed188(var_b14c1a2c[var_8907c2b8], 1);
			}
		}
	}
}

/*
	Name: function_6ff4aa0e
	Namespace: namespace_36cbf523
	Checksum: 0x654574B7
	Offset: 0x7AE8
	Size: 0xF9
	Parameters: 2
	Flags: None
*/
function function_6ff4aa0e(var_e33a0786, var_fbf0fdce)
{
	if(!isdefined(var_fbf0fdce))
	{
		var_fbf0fdce = 1;
	}
	self endon("hash_128f8789");
	if(isdefined(var_fbf0fdce) && var_fbf0fdce)
	{
		self namespace_71e9cb84::function_74d6b22f("sarah_camo_shader", 2);
		self namespace_71e9cb84::function_74d6b22f("ai_dni_rez_in", 1);
		wait(1);
	}
	self namespace_71e9cb84::function_74d6b22f("sarah_camo_shader", var_e33a0786);
	if(var_e33a0786 == 1)
	{
		self namespace_d84e54db::function_c9e45d52(1);
	}
	else
	{
		self namespace_d84e54db::function_c9e45d52(0);
		self notify("hash_a6476729");
	}
}

/*
	Name: function_9110a277
	Namespace: namespace_36cbf523
	Checksum: 0x6FF6B2EE
	Offset: 0x7BF0
	Size: 0x16B
	Parameters: 2
	Flags: None
*/
function function_9110a277(var_e33a0786, var_fbf0fdce)
{
	if(!isdefined(var_fbf0fdce))
	{
		var_fbf0fdce = 1;
	}
	self endon("hash_128f8789");
	if(isdefined(var_fbf0fdce) && var_fbf0fdce)
	{
		self namespace_71e9cb84::function_74d6b22f("sarah_camo_shader", 2);
		if(var_e33a0786 == 1)
		{
			self namespace_71e9cb84::function_331efedc("ai_dni_rez_out", 1);
		}
		else
		{
			self namespace_82b91a51::function_67520c6a(0.5, undefined, &namespace_71e9cb84::function_74d6b22f, "ai_dni_rez_in", 1);
		}
		wait(1);
	}
	self namespace_71e9cb84::function_74d6b22f("sarah_camo_shader", var_e33a0786);
	if(var_e33a0786 == 1)
	{
		self namespace_d84e54db::function_c9e45d52(1);
		self function_8c8e79fe();
	}
	else
	{
		self namespace_d84e54db::function_c9e45d52(0);
		self notify("hash_a6476729");
		self function_48f26766();
	}
}

/*
	Name: function_8420d8cd
	Namespace: namespace_36cbf523
	Checksum: 0x2FB6E4CE
	Offset: 0x7D68
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_8420d8cd(var_7ce28596)
{
	var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_7ce28596, "targetname");
	var_d91de807 = function_bc7ce905(var_ebe66fdc.var_6ab6f4fd);
	var_759adc5b = 0;
	while(!var_759adc5b)
	{
		var_5ddef2e5 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
		{
			var_6bfe1586 = var_5ddef2e5[var_c957f6b6];
			var_a080d759 = function_f679a325(var_6bfe1586.var_722885f3 - var_ebe66fdc.var_722885f3);
			var_c6c121c9 = function_5f9a4869(var_a080d759, var_d91de807);
			if(var_c6c121c9 > 0)
			{
				var_759adc5b = 1;
				break;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_9d611fab
	Namespace: namespace_36cbf523
	Checksum: 0xB351EF3
	Offset: 0x7ED8
	Size: 0x16F
	Parameters: 1
	Flags: None
*/
function function_9d611fab(var_7ce28596)
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
			if(var_c6c121c9 > 0)
			{
				var_226231f3++;
			}
		}
		if(var_226231f3 == var_5ddef2e5.size)
		{
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_426fde37
	Namespace: namespace_36cbf523
	Checksum: 0xE5B36462
	Offset: 0x8050
	Size: 0x27
	Parameters: 2
	Flags: None
*/
function function_426fde37(var_4c9c8550, var_686b9aeb)
{
	var_4c9c8550.var_8c3e4f1f = var_686b9aeb;
}

/*
	Name: function_b016b536
	Namespace: namespace_36cbf523
	Checksum: 0x85B6E638
	Offset: 0x8080
	Size: 0xDD
	Parameters: 2
	Flags: None
*/
function function_b016b536(var_686b9aeb, var_5ea5c7d9)
{
	var_e3b635fb = function_c20c2e8();
	if(isdefined(var_e3b635fb))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			var_4c9c8550 = var_e3b635fb[var_c957f6b6];
			if(isdefined(var_4c9c8550.var_8c3e4f1f) && var_4c9c8550.var_8c3e4f1f == var_686b9aeb)
			{
				if(var_5ea5c7d9)
				{
					var_4c9c8550 function_2992720d();
					continue;
				}
				var_4c9c8550 function_dc8c8404();
			}
		}
	}
}

/*
	Name: function_9e5ed1ac
	Namespace: namespace_36cbf523
	Checksum: 0x5AE45697
	Offset: 0x8168
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_9e5ed1ac(var_c77d2837)
{
	var_3c3f5d83 = [];
	var_5ddef2e5 = function_3f10449f();
	while(var_c77d2837.size > 0)
	{
		var_4ec85d4a = undefined;
		var_6e3476d = 999999.9;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_c77d2837.size; var_c957f6b6++)
		{
			var_cacbf7e2 = 999999.9;
			for(var_5080ec5b = 0; var_5080ec5b < var_5ddef2e5.size; var_5080ec5b++)
			{
				var_2a97d9fd = function_7d15e2f8(var_5ddef2e5[var_5080ec5b].var_722885f3, var_c77d2837[var_c957f6b6].var_722885f3);
				if(var_2a97d9fd < var_cacbf7e2)
				{
					var_cacbf7e2 = var_2a97d9fd;
				}
			}
			if(var_cacbf7e2 < var_6e3476d)
			{
				var_6e3476d = var_cacbf7e2;
				var_4ec85d4a = var_c77d2837[var_c957f6b6];
			}
		}
		var_3c3f5d83[var_3c3f5d83.size] = var_4ec85d4a;
		function_81403b2f(var_c77d2837, var_4ec85d4a);
	}
	return var_3c3f5d83;
}

/*
	Name: function_3c363cb3
	Namespace: namespace_36cbf523
	Checksum: 0x502A262B
	Offset: 0x8308
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_3c363cb3(var_7edf627d)
{
	var_7b3a5649 = function_b8494651("allies");
	var_7b3a5649 = namespace_84970cc4::function_d010fbb9(var_7b3a5649, level.var_6a876531);
	var_58c5eb41 = function_e7bdc1a1(level.var_2395e945[0].var_722885f3, var_7b3a5649);
	if(isdefined(var_58c5eb41))
	{
		var_58c5eb41 notify("hash_2605e152", var_7edf627d);
	}
}

/*
	Name: function_67137b13
	Namespace: namespace_36cbf523
	Checksum: 0x51D24480
	Offset: 0x83B8
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_67137b13()
{
	var_8db36247 = function_99201f25("fold_plane", "targetname");
	foreach(var_e1427d74 in var_8db36247)
	{
		var_e1427d74 function_48f26766();
	}
}

/*
	Name: function_4f66eed6
	Namespace: namespace_36cbf523
	Checksum: 0xD99A818F
	Offset: 0x8478
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_4f66eed6()
{
	var_8db36247 = function_99201f25("fold_plane", "targetname");
	foreach(var_e1427d74 in var_8db36247)
	{
		var_e1427d74 function_8c8e79fe();
	}
}

/*
	Name: function_9f64d290
	Namespace: namespace_36cbf523
	Checksum: 0x77CFFCF2
	Offset: 0x8538
	Size: 0x12D
	Parameters: 2
	Flags: None
*/
function function_9f64d290(var_c77d2837, var_864a3d55)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(var_864a3d55)
		{
			if(function_8d0347b8(var_a3d46ee4) && isdefined(var_a3d46ee4.var_68dd6b84))
			{
				var_a3d46ee4.var_fe965cc2 = var_a3d46ee4.var_68dd6b84;
			}
			continue;
		}
		if(function_8d0347b8(var_a3d46ee4) && isdefined(var_a3d46ee4.var_fe965cc2))
		{
			var_a3d46ee4.var_68dd6b84 = var_a3d46ee4.var_fe965cc2;
			var_a3d46ee4.var_fe965cc2 = "";
		}
	}
}

/*
	Name: function_7aca917c
	Namespace: namespace_36cbf523
	Checksum: 0x7DBDDE93
	Offset: 0x8670
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_7aca917c(var_920aba92, var_8182276a)
{
	if(!isdefined(var_8182276a))
	{
		var_8182276a = 0;
	}
	level.var_1b3f87f7 = function_82aea45f(var_920aba92, 1, var_8182276a);
	level.var_1b3f87f7 function_da46a629(1);
}

/*
	Name: function_f6d49772
	Namespace: namespace_36cbf523
	Checksum: 0xA0EF85DC
	Offset: 0x86E8
	Size: 0x1D7
	Parameters: 3
	Flags: None
*/
function function_f6d49772(var_1767d763, var_10b34225, var_3642df18)
{
	level endon(var_3642df18);
	while(1)
	{
		var_5948b3df = function_6ada35ba(var_1767d763, "targetname");
		var_5948b3df waittill("hash_4dbf3ae3", var_aef176e7);
		if(!isdefined(var_aef176e7.var_a2496e3e))
		{
			var_aef176e7.var_a2496e3e = [];
			var_aef176e7.var_a2496e3e[var_10b34225] = 1;
			while(isdefined(var_aef176e7.var_5441261b) && var_aef176e7.var_5441261b)
			{
				wait(0.5);
			}
			var_aef176e7.var_5441261b = 1;
			level namespace_71b8dba1::function_81141386(var_10b34225, 0, 1, var_aef176e7);
			var_aef176e7.var_5441261b = 0;
		}
		else if(!isdefined(var_aef176e7.var_a2496e3e[var_10b34225]))
		{
			var_aef176e7.var_a2496e3e[var_10b34225] = 1;
			while(isdefined(var_aef176e7.var_5441261b) && var_aef176e7.var_5441261b)
			{
				wait(0.5);
			}
			var_aef176e7.var_5441261b = 1;
			level namespace_71b8dba1::function_81141386(var_10b34225, 0, 1, var_aef176e7);
			var_aef176e7.var_5441261b = 0;
		}
	}
}


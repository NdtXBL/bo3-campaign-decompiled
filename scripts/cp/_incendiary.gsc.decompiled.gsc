#using scripts\codescripts\struct;
#using scripts\shared\_burnplayer;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\entityheadicons_shared;
#using scripts\shared\killcam_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_tacticalinsertion;
#using scripts\shared\weapons\_weaponobjects;

#namespace namespace_fcb56d9f;

/*
	Name: function_2dc19561
	Namespace: namespace_fcb56d9f
	Checksum: 0x9616BEF5
	Offset: 0x498
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("incendiary_grenade", &function_1463e4e5, undefined, undefined);
}

/*
	Name: function_1463e4e5
	Namespace: namespace_fcb56d9f
	Checksum: 0xA3BDC9FA
	Offset: 0x4D8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_1463e4e5()
{
	level.var_bb2e86bc = function_4bd0142f("scr_incendiaryfireDamage", 75);
	level.var_deee66a6 = function_4bd0142f("scr_incendiaryfireDamageHardcore", 15);
	level.var_8b6a49fb = function_4bd0142f("scr_incendiaryfireDuration", 5);
	level.var_f0f3c565 = function_f3087faa("scr_incendiaryfxDuration", 0.4);
	level.var_e20975d2 = function_4bd0142f("scr_incendiaryDamageRadius", 125);
	level.var_4857ef20 = function_f3087faa("scr_incendiaryfireDamageTickTime", 1);
	level.var_c19e19ab = [];
	namespace_dabbe128::function_356a4ee1(&function_aad39157);
}

/*
	Name: function_f981c352
	Namespace: namespace_fcb56d9f
	Checksum: 0x92C4FE82
	Offset: 0x608
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_f981c352()
{
	/#
		level.var_bb2e86bc = function_4bd0142f("Dev Block strings are not supported", level.var_bb2e86bc);
		level.var_deee66a6 = function_4bd0142f("Dev Block strings are not supported", level.var_deee66a6);
		level.var_8b6a49fb = function_4bd0142f("Dev Block strings are not supported", level.var_8b6a49fb);
		level.var_e20975d2 = function_4bd0142f("Dev Block strings are not supported", level.var_e20975d2);
		level.var_4857ef20 = function_f3087faa("Dev Block strings are not supported", level.var_4857ef20);
		level.var_f0f3c565 = function_f3087faa("Dev Block strings are not supported", level.var_f0f3c565);
	#/
}

/*
	Name: function_aad39157
	Namespace: namespace_fcb56d9f
	Checksum: 0xD8712BA9
	Offset: 0x710
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_aad39157()
{
	var_f33365a3 = self namespace_aec973d7::function_b8a70805("incendiary_grenade", self.var_3e94206a);
	var_f33365a3.var_e0e5c163 = &function_8772b94d;
}

/*
	Name: function_8772b94d
	Namespace: namespace_fcb56d9f
	Checksum: 0x43C46383
	Offset: 0x768
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_8772b94d(var_f33365a3, var_5dc5e20a)
{
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	var_5dc5e20a function_1f4288c0(self.var_dfcc01fd, "used", 1);
	thread function_ab966fda(var_5dc5e20a);
}

/*
	Name: function_ab966fda
	Namespace: namespace_fcb56d9f
	Checksum: 0xD06908AC
	Offset: 0x7E8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_ab966fda(var_5e36fd2e)
{
	self endon("hash_90d320a9");
	self endon("hash_dc8c8404");
	var_ec9e5b09 = function_9b7fda5e("script_model", self.var_722885f3);
	var_ec9e5b09 namespace_82b91a51::function_2496930d(15);
	var_ec9e5b09.var_a4ad846c = GetTime();
	var_ec9e5b09 function_37f7858a(self);
	var_ec9e5b09 function_454720a3(self.var_dfcc01fd);
	var_ec9e5b09 namespace_367908b2::function_d3473f90(self);
	self waittill("hash_39699ecb", var_722885f3, var_288785e8, var_5bb8209e);
	var_ec9e5b09 function_52fddbd0();
	/#
		function_f981c352();
	#/
	function_37cbcf1a("wpn_incendiary_core_start", self.var_722885f3);
	function_c3c997c(var_722885f3, var_5e36fd2e, var_288785e8, var_ec9e5b09);
}

/*
	Name: function_5377f3a6
	Namespace: namespace_fcb56d9f
	Checksum: 0x6347E36C
	Offset: 0x960
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_5377f3a6(var_288785e8)
{
	if(var_288785e8[2] < 0.5)
	{
		var_29eabd30 = var_288785e8 * function_4bd0142f("scr_incendiary_stepout_wall", 50);
	}
	else
	{
		var_29eabd30 = var_288785e8 * function_4bd0142f("scr_incendiary_stepout_ground", 12);
	}
	return var_29eabd30;
}

/*
	Name: function_c3c997c
	Namespace: namespace_fcb56d9f
	Checksum: 0xC1DABFE9
	Offset: 0x9E8
	Size: 0x2AB
	Parameters: 4
	Flags: None
*/
function function_c3c997c(var_c7b6e8e4, var_5e36fd2e, var_288785e8, var_ec9e5b09)
{
	var_92b6852b = var_c7b6e8e4 + function_5377f3a6(var_288785e8);
	var_50224406 = var_92b6852b + VectorScale((0, 0, 1), 60);
	var_eb5cede8 = function_fafcd7f7(var_92b6852b, var_50224406, VectorScale((-1, -1, -1), 4), VectorScale((1, 1, 1), 4), self, 1);
	if(var_eb5cede8["fraction"] < 1)
	{
	}
	else
	{
	}
	var_ae11119e = var_50224406;
	var_ec9e5b09 function_a96a2721(var_ae11119e, 0.5);
	var_f0e36723 = function_26299103(360);
	if(var_288785e8[2] < 0.1)
	{
		var_a870bc22 = VectorScale((1, 1, 1), 0.1);
		var_a52faa04 = function_22c017de(var_92b6852b, var_92b6852b + var_288785e8 * -1 * 70 + (0, 0, -1) * 70, var_a870bc22);
		var_7a3ac87d = var_a52faa04["position"];
		var_7e9ec3c7 = function_c4d5ec1f("incendiary_fire");
		if(var_a52faa04["fraction"] < 0.9)
		{
			var_41a68b3c = var_a52faa04["normal"];
			function_a550caa1(var_7e9ec3c7, var_a52faa04["position"], var_41a68b3c, level.var_8b6a49fb, self.var_3e94206a);
		}
	}
	var_21316230 = function_4bd0142f("scr_incendiary_fx_count", 6);
	function_21bcade2(var_5e36fd2e, var_92b6852b, var_288785e8, 1, var_f0e36723, var_ec9e5b09, var_21316230);
}

/*
	Name: function_8be43ae5
	Namespace: namespace_fcb56d9f
	Checksum: 0x9800964A
	Offset: 0xCA0
	Size: 0xB5
	Parameters: 5
	Flags: None
*/
function function_8be43ae5(var_92b6852b, var_922b6d0d, var_21316230, var_706a5469, var_f0e36723)
{
	var_7502a5c9 = 360 / var_21316230 * var_922b6d0d;
	var_d99655cd = function_ef0a72b2(var_7502a5c9 + var_f0e36723);
	var_bc000cdc = function_3c191891(var_7502a5c9 + var_f0e36723);
	return var_92b6852b + (var_706a5469 * var_d99655cd, var_706a5469 * var_bc000cdc, 0);
}

/*
	Name: function_21bcade2
	Namespace: namespace_fcb56d9f
	Checksum: 0x210A9029
	Offset: 0xD60
	Size: 0x525
	Parameters: 7
	Flags: None
*/
function function_21bcade2(var_5e36fd2e, var_92b6852b, var_288785e8, var_af0d5b3c, var_f0e36723, var_ec9e5b09, var_21316230)
{
	var_706a5469 = function_4bd0142f("scr_incendiary_trace_distance", 220) * var_af0d5b3c;
	var_8d11436 = function_4bd0142f("scr_incendiary_trace_down_distance", 90);
	var_7f0d8c85 = [];
	var_7f0d8c85[var_7f0d8c85.size] = (0.9, 0.2, 0.2);
	var_7f0d8c85[var_7f0d8c85.size] = (0.2, 0.9, 0.2);
	var_7f0d8c85[var_7f0d8c85.size] = (0.2, 0.2, 0.9);
	var_7f0d8c85[var_7f0d8c85.size] = VectorScale((1, 1, 1), 0.9);
	var_41f326b3 = [];
	var_41f326b3["color"] = [];
	var_41f326b3["loc"] = [];
	var_41f326b3["tracePos"] = [];
	var_41f326b3["distSqrd"] = [];
	var_41f326b3["fxtoplay"] = [];
	var_41f326b3["radius"] = [];
	for(var_922b6d0d = 0; var_922b6d0d < var_21316230; var_922b6d0d++)
	{
		var_41f326b3["point"][var_922b6d0d] = function_8be43ae5(var_92b6852b, var_922b6d0d, var_21316230, var_706a5469, var_f0e36723);
		var_41f326b3["color"][var_922b6d0d] = var_7f0d8c85[var_922b6d0d % var_7f0d8c85.size];
	}
	for(var_74952a22 = 0; var_74952a22 < var_21316230; var_74952a22++)
	{
		var_a52faa04 = function_22c017de(var_92b6852b, var_41f326b3["point"][var_74952a22], var_41f326b3["color"][var_74952a22]);
		var_7a3ac87d = var_a52faa04["position"];
		var_41f326b3["tracePos"][var_74952a22] = var_7a3ac87d;
		if(var_a52faa04["fraction"] < 0.7)
		{
			var_41f326b3["loc"][var_74952a22] = var_7a3ac87d;
			var_41f326b3["normal"][var_74952a22] = var_a52faa04["normal"];
			continue;
		}
		var_e0b0c066 = var_92b6852b / 2 + var_7a3ac87d / 2;
		var_a52faa04 = function_22c017de(var_e0b0c066, var_e0b0c066 - (0, 0, var_8d11436), var_41f326b3["color"][var_74952a22]);
		if(var_a52faa04["fraction"] != 1)
		{
			var_41f326b3["loc"][var_74952a22] = var_a52faa04["position"];
			var_41f326b3["normal"][var_74952a22] = var_a52faa04["normal"];
		}
	}
	var_7e9ec3c7 = function_c4d5ec1f("incendiary_fire");
	function_a550caa1(var_7e9ec3c7, var_92b6852b, var_288785e8, level.var_8b6a49fb, self.var_3e94206a);
	level.var_e20975d2 = function_4bd0142f("scr_incendiaryDamageRadius", level.var_e20975d2);
	thread function_7c624c9a(var_5e36fd2e, var_92b6852b, level.var_e20975d2, level.var_e20975d2, var_ec9e5b09);
	for(var_74952a22 = 0; var_74952a22 < var_41f326b3["point"].size; var_74952a22++)
	{
		if(isdefined(var_41f326b3["loc"][var_74952a22]))
		{
			var_288785e8 = var_41f326b3["normal"][var_74952a22];
			function_a550caa1(var_7e9ec3c7, var_41f326b3["loc"][var_74952a22], var_288785e8, level.var_8b6a49fb, self.var_3e94206a);
		}
	}
}

/*
	Name: function_b45383a0
	Namespace: namespace_fcb56d9f
	Checksum: 0xEA38398A
	Offset: 0x1290
	Size: 0xBB
	Parameters: 5
	Flags: None
*/
function function_b45383a0(var_68044d19, var_236ffde, var_d900369a, var_cf753724, var_60db70fa)
{
	/#
		var_dc87a50 = function_4bd0142f("Dev Block strings are not supported", 0);
		if(var_dc87a50 == 1)
		{
			if(!isdefined(var_60db70fa))
			{
				var_60db70fa = 100;
			}
			if(!isdefined(var_cf753724))
			{
				var_cf753724 = 1;
			}
			function_4e418837(var_68044d19, var_236ffde, var_d900369a, 1, var_cf753724, var_60db70fa);
		}
	#/
}

/*
	Name: function_7c624c9a
	Namespace: namespace_fcb56d9f
	Checksum: 0xC4D4B028
	Offset: 0x1358
	Size: 0x281
	Parameters: 5
	Flags: None
*/
function function_7c624c9a(var_5e36fd2e, var_c7b6e8e4, var_f8456b37, var_e363b850, var_ec9e5b09)
{
	var_70ca056e = var_c7b6e8e4 - (0, 0, var_e363b850);
	var_6ecf2996 = var_e363b850 * 2;
	var_b6efd881 = function_9b7fda5e("trigger_radius", var_70ca056e, 0, var_f8456b37, var_6ecf2996);
	/#
		if(function_4bd0142f("Dev Block strings are not supported"))
		{
			level thread namespace_82b91a51::function_77810775(var_70ca056e, var_f8456b37, var_6ecf2996, undefined, "Dev Block strings are not supported");
		}
	#/
	if(isdefined(level.var_bf238099))
	{
		var_5e36fd2e thread [[level.var_bf238099]](var_b6efd881);
	}
	var_796f539b = level.var_4857ef20;
	var_70ce2f94 = level.var_8b6a49fb;
	while(var_70ce2f94 > 0)
	{
		var_70ce2f94 = var_70ce2f94 - var_796f539b;
		var_eb368735 = 0;
		var_77f41b6e = self function_dd24519f(var_5e36fd2e);
		foreach(var_b07228b6 in var_77f41b6e)
		{
			self function_aed3aace(var_b07228b6, var_5e36fd2e, var_c7b6e8e4, var_b6efd881, var_796f539b, var_ec9e5b09);
		}
		wait(var_796f539b);
	}
	if(isdefined(var_ec9e5b09))
	{
		var_ec9e5b09 namespace_d5fb9674::function_6a501184();
	}
	var_b6efd881 function_dc8c8404();
	/#
		if(function_4bd0142f("Dev Block strings are not supported"))
		{
			level notify("hash_7e5be7f8");
		}
	#/
}

/*
	Name: function_dd24519f
	Namespace: namespace_fcb56d9f
	Checksum: 0x187E2900
	Offset: 0x15E8
	Size: 0x2F3
	Parameters: 1
	Flags: None
*/
function function_dd24519f(var_5e36fd2e)
{
	if(isdefined(var_5e36fd2e))
	{
	}
	else
	{
	}
	var_e179f69a = undefined;
	if(level.var_de12b72f && isdefined(var_e179f69a) && level.var_98df9150 == 0)
	{
		if(var_e179f69a == "axis")
		{
		}
		else
		{
		}
		var_36a7b4ed = "axis";
		var_77f41b6e = [];
		var_77f41b6e = function_525ae497(var_77f41b6e, function_3f10449f(var_36a7b4ed), 0, 0);
		var_77f41b6e = function_525ae497(var_77f41b6e, function_b8494651(var_36a7b4ed), 0, 0);
		var_77f41b6e = function_525ae497(var_77f41b6e, function_2d2ddfd9(var_36a7b4ed), 0, 0);
		var_77f41b6e[var_77f41b6e.size] = var_5e36fd2e;
		return var_77f41b6e;
	}
	var_d74258d9 = [];
	var_d74258d9 = function_525ae497(var_d74258d9, level.var_2395e945, 0, 0);
	var_d74258d9 = function_525ae497(var_d74258d9, function_c20c2e8(), 0, 0);
	var_d74258d9 = function_525ae497(var_d74258d9, function_9cb37000(), 0, 0);
	if(level.var_98df9150 > 0)
	{
		return var_d74258d9;
	}
	var_77f41b6e = [];
	foreach(var_b07228b6 in var_d74258d9)
	{
		if(isdefined(var_5e36fd2e))
		{
			if(var_b07228b6 != var_5e36fd2e)
			{
				if(!isdefined(var_e179f69a))
				{
					continue;
				}
				if(var_b07228b6.var_3e94206a == var_e179f69a)
				{
					continue;
				}
			}
		}
		else if(!isdefined(self.var_3e94206a))
		{
			continue;
		}
		if(var_b07228b6.var_3e94206a == self.var_3e94206a)
		{
			continue;
		}
		var_77f41b6e[var_77f41b6e.size] = var_b07228b6;
	}
	return var_77f41b6e;
}

/*
	Name: function_aed3aace
	Namespace: namespace_fcb56d9f
	Checksum: 0xED3616E7
	Offset: 0x18E8
	Size: 0x13B
	Parameters: 6
	Flags: None
*/
function function_aed3aace(var_b07228b6, var_5e36fd2e, var_c7b6e8e4, var_b6efd881, var_fae90af9, var_ec9e5b09)
{
	if(!isdefined(var_b07228b6.var_d0efeba3) || var_b07228b6.var_d0efeba3 == 0)
	{
		if(var_b07228b6 function_32fa5072(var_b6efd881) && (!isdefined(var_b07228b6.var_e0beb6ee) || var_b07228b6.var_e0beb6ee == "playing"))
		{
			var_a52faa04 = function_e1dc201c(var_c7b6e8e4, var_b07228b6 function_cc086df(), 0, var_b07228b6, 1);
			if(var_a52faa04["fraction"] == 1)
			{
				var_b07228b6.var_117f7ea6 = var_5e36fd2e;
				var_b07228b6 thread function_77bd398c(var_b6efd881, var_ec9e5b09, var_a52faa04, var_c7b6e8e4, var_fae90af9);
			}
		}
	}
}

/*
	Name: function_77bd398c
	Namespace: namespace_fcb56d9f
	Checksum: 0xDE4D35B7
	Offset: 0x1A30
	Size: 0x1A3
	Parameters: 5
	Flags: None
*/
function function_77bd398c(var_b6efd881, var_ec9e5b09, var_a52faa04, var_c7b6e8e4, var_fae90af9)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_6f6f10c = 0;
	var_f9348fda = level.var_bb2e86bc;
	if(level.var_50527ffe)
	{
		var_f9348fda = level.var_deee66a6;
	}
	if(function_cc229fbd(var_ec9e5b09, self, var_fae90af9))
	{
		/#
			level.var_8296d89b = function_4bd0142f("Dev Block strings are not supported", 0);
			if(level.var_8296d89b)
			{
				if(!isdefined(level.var_254c377b))
				{
					level.var_254c377b = GetTime();
				}
				function_2e4b8c78(level.var_254c377b - GetTime());
				level.var_254c377b = GetTime();
			}
		#/
		self function_c3945cd5(var_f9348fda, var_b6efd881.var_722885f3, self.var_117f7ea6, var_ec9e5b09, "none", "MOD_BURNED", 0, function_c4d5ec1f("incendiary_fire"));
		var_270018c4 = self function_c7f3ce11();
		self thread function_fb57e37d();
	}
}

/*
	Name: function_fb57e37d
	Namespace: namespace_fcb56d9f
	Checksum: 0xF358B7D9
	Offset: 0x1BE0
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_fb57e37d()
{
	self notify("hash_f345a546");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self endon("hash_f345a546");
	if(!isdefined(self.var_f000be0d))
	{
		self.var_f000be0d = function_9b7fda5e("script_origin", self.var_722885f3);
		self.var_f000be0d function_37f7858a(self, "tag_origin");
		self.var_f000be0d function_921a1574("chr_burn_start");
		self thread function_d841acf8(self.var_f000be0d);
	}
	self.var_f000be0d function_c2931a36("chr_burn_start_loop", 0.5);
	wait(3);
	self.var_f000be0d function_dc8c8404();
	self.var_f000be0d = undefined;
}

/*
	Name: function_d841acf8
	Namespace: namespace_fcb56d9f
	Checksum: 0x5543A25E
	Offset: 0x1D08
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_d841acf8(var_a3d46ee4)
{
	self endon("hash_643a7daf");
	self waittill("hash_128f8789");
	if(isdefined(var_a3d46ee4))
	{
		var_a3d46ee4 function_dc8c8404();
	}
}

/*
	Name: function_22c017de
	Namespace: namespace_fcb56d9f
	Checksum: 0x6B3693ED
	Offset: 0x1D58
	Size: 0xCF
	Parameters: 3
	Flags: None
*/
function function_22c017de(var_34fb19f, var_3fc1574, var_d900369a)
{
	var_a52faa04 = function_e1dc201c(var_34fb19f, var_3fc1574, 0, undefined);
	/#
		level.var_8296d89b = function_4bd0142f("Dev Block strings are not supported", 0);
		if(level.var_8296d89b)
		{
			function_617f6eba(var_a52faa04["Dev Block strings are not supported"], 2000, var_d900369a);
		}
		thread function_b45383a0(var_34fb19f, var_a52faa04["Dev Block strings are not supported"], var_d900369a, 1, 80);
	#/
	return var_a52faa04;
}

/*
	Name: function_cc229fbd
	Namespace: namespace_fcb56d9f
	Checksum: 0x46EEFBDF
	Offset: 0x1E30
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function function_cc229fbd(var_ec9e5b09, var_8bcb913d, var_fae90af9)
{
	var_270018c4 = var_8bcb913d function_c7f3ce11();
	if(!isdefined(level.var_c19e19ab[var_270018c4]))
	{
		level.var_c19e19ab[var_270018c4] = 0;
		level thread function_84e7c0bd(var_270018c4, var_fae90af9);
		return 1;
	}
	return 0;
}

/*
	Name: function_84e7c0bd
	Namespace: namespace_fcb56d9f
	Checksum: 0x8A1547A9
	Offset: 0x1EC0
	Size: 0x3F
	Parameters: 2
	Flags: None
*/
function function_84e7c0bd(var_270018c4, var_60db70fa)
{
	if(var_60db70fa > 0.05)
	{
		wait(var_60db70fa - 0.05);
	}
	level.var_c19e19ab[var_270018c4] = undefined;
}


#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\ai\blackboard_vehicle;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_siegebot;
#using scripts\shared\weapons\_spike_charge_siegebot;

#namespace namespace_a28cc5ab;

/*
	Name: function_2dc19561
	Namespace: namespace_a28cc5ab
	Checksum: 0x9F1BB475
	Offset: 0x660
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("siegebot_theia", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_a28cc5ab
	Checksum: 0xF97591E7
	Offset: 0x6A0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_96fa87af::function_cb767064("siegebot_theia", &function_fcf49d56);
	namespace_71e9cb84::function_50f16166("vehicle", "sarah_rumble_on_landing", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("vehicle", "sarah_minigun_spin", 1, 1, "int");
}

/*
	Name: function_fcf49d56
	Namespace: namespace_a28cc5ab
	Checksum: 0xAD9B74F2
	Offset: 0x738
	Size: 0x32B
	Parameters: 0
	Flags: None
*/
function function_fcf49d56()
{
	self function_4f87e1b9(-1);
	namespace_96515e2a::function_568b3366(self);
	self namespace_96515e2a::function_4a9398ae();
	self.var_3a90f16b = self.var_38a62b0e;
	self namespace_96fa87af::function_da276961();
	self function_8dafb866();
	self function_500dc2f7(self.var_f8456b37 * 1.2);
	function_7a078777(self, VectorScale((0, 0, 1), 150));
	self.var_a1f56f1f = 0;
	self.var_bea11b80 = 0;
	self.var_2a373326 = 10000 * 10000;
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_279dd9e7));
	#/
	self.var_c1239d26 = namespace_14b42b8a::function_b7af54ae("vehiclecustomsettings", self.var_279dd9e7);
	self.var_7dfaf62 = 9999999;
	self.var_a1ed1ed1 = 5000;
	self function_169cc712(self.var_722885f3, 0, self.var_7dfaf62, self.var_a1ed1ed1);
	self.var_dc29a320 = &function_93219dbe;
	self function_d56305c8(1);
	namespace_82b91a51::function_958c7633(self);
	self function_5a6e3cac();
	self function_6e075bdf(0, self.var_c1239d26.var_25137287);
	self function_59d0ca33();
	self thread function_2ea898a8();
	self.var_e542d7d4 = 0;
	self.var_156470d4 = self.var_e542d7d4;
	self function_a849d3e8();
	self function_fac6ca3e();
	if(isdefined(self.var_e35f8efa))
	{
		self function_169cc712(self.var_e35f8efa);
	}
	if(!isdefined(self.var_e363b850))
	{
		self.var_e363b850 = self.var_f8456b37;
	}
	self.var_342d9e3a = 1;
	self.var_375cf54a = 1;
	self.var_3a087745 = 1;
	self namespace_72ee5da4::function_a767f9b4();
	function_b272dd98();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_a28cc5ab
	Checksum: 0x1151CB38
	Offset: 0xA70
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	self namespace_96fa87af::function_e103651a();
	self namespace_96fa87af::function_492f8fe7(1, 1);
	self namespace_96fa87af::function_492f8fe7(2, 1);
	self namespace_96fa87af::function_492f8fe7(3, 1);
	self namespace_71e9cb84::function_74d6b22f("sarah_minigun_spin", 0);
}

/*
	Name: function_b272dd98
	Namespace: namespace_a28cc5ab
	Checksum: 0x37245D89
	Offset: 0xB18
	Size: 0x4B3
	Parameters: 0
	Flags: None
*/
function function_b272dd98()
{
	self namespace_72ee5da4::function_9174840a();
	self namespace_72ee5da4::function_d4ad8dc0("combat").var_b565be3e = &function_dbe3c90a;
	self namespace_72ee5da4::function_d4ad8dc0("combat").var_20a503bb = &function_5151f00b;
	self namespace_72ee5da4::function_d4ad8dc0("combat").var_ff2b89d2 = &function_3344e4e8;
	self namespace_72ee5da4::function_d4ad8dc0("pain").var_b565be3e = &function_5b4ac0fe;
	self namespace_72ee5da4::function_d4ad8dc0("pain").var_20a503bb = &function_f71fc8b7;
	self namespace_72ee5da4::function_d4ad8dc0("pain").var_ff2b89d2 = &function_a3bf4514;
	self namespace_72ee5da4::function_d4ad8dc0("scripted").var_ff2b89d2 = &function_7901b73e;
	self namespace_72ee5da4::function_d4ad8dc0("death").var_20a503bb = &function_c18559a5;
	self namespace_72ee5da4::function_26678920("jumpUp", &function_54c6085f, &function_911f1aa5, &function_309fca92);
	self namespace_72ee5da4::function_26678920("jumpDown", &function_b76c2c48, &function_911f1aa5, &function_21ee6e62);
	self namespace_72ee5da4::function_26678920("jumpGroundToGround", &function_b76c2c48, &function_911f1aa5, &function_309fca92);
	self namespace_72ee5da4::function_26678920("groundCombat", undefined, &function_c05314da, &function_3b3e7a3d);
	self namespace_72ee5da4::function_26678920("prepareDeath", undefined, &function_975d9d5f, undefined);
	namespace_72ee5da4::function_2605b15("groundCombat", "pain", "pain");
	namespace_72ee5da4::function_bca567c6("emped", "groundCombat");
	namespace_72ee5da4::function_bca567c6("pain", "groundCombat");
	namespace_72ee5da4::function_bca567c6("combat", "jumpDown", &function_a4f97767);
	namespace_72ee5da4::function_bca567c6("jumpDown", "groundCombat");
	namespace_72ee5da4::function_bca567c6("groundCombat", "jumpGroundToGround", &function_d257637c);
	namespace_72ee5da4::function_bca567c6("jumpGroundToGround", "groundCombat");
	namespace_72ee5da4::function_bca567c6("groundCombat", "jumpUp", &function_d1c640f8);
	namespace_72ee5da4::function_bca567c6("jumpUp", "combat");
	namespace_72ee5da4::function_bca567c6("groundCombat", "prepareDeath", &function_3a70e7d7);
	namespace_72ee5da4::function_804ee9ae("jump", 22);
	namespace_72ee5da4::function_804ee9ae("jumpUp", 33);
	namespace_72ee5da4::function_7155ba9c("groundCombat");
}

/*
	Name: function_c18559a5
	Namespace: namespace_a28cc5ab
	Checksum: 0x514E2BD3
	Offset: 0xFD8
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_c18559a5(var_a8563e07)
{
	self endon("hash_128f8789");
	self endon("hash_d1935899");
	self function_2bf2cccb(0);
	self function_84e7c9e7();
	self function_144b90e8();
	self function_d013f7fa((0, 0, 0));
	self namespace_8276f484::function_f92793ae();
	self namespace_8276f484::function_b6527b9a(self.var_c8e6ad50, self.var_eb5d4f32);
	self namespace_96fa87af::function_99199795(0);
	self function_921a1574("veh_quadtank_sparks");
}

/*
	Name: function_84e7c9e7
	Namespace: namespace_a28cc5ab
	Checksum: 0x58A9172C
	Offset: 0x10E0
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_84e7c9e7()
{
	if(isdefined(self.var_7f31f761))
	{
		self.var_7f31f761.var_dfbf6b80 function_dc8c8404();
	}
	if(isdefined(self.var_fa144784))
	{
		self.var_fa144784 function_dc8c8404();
	}
	if(isdefined(self.var_b66afa28))
	{
		foreach(var_b07228b6 in self.var_b66afa28)
		{
			var_b07228b6 function_dc8c8404();
		}
	}
}

/*
	Name: function_d56305c8
	Namespace: namespace_a28cc5ab
	Checksum: 0xCC00731F
	Offset: 0x11E0
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_d56305c8(var_b55533bc)
{
	self.var_72861401 = var_b55533bc;
}

/*
	Name: function_c423e168
	Namespace: namespace_a28cc5ab
	Checksum: 0xB6C5086D
	Offset: 0x1200
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_c423e168()
{
	var_86c93e40 = namespace_72ee5da4::function_4b5a00cb();
	return isdefined(var_86c93e40) && var_86c93e40 != "pain" && self.var_72861401;
}

/*
	Name: function_5b4ac0fe
	Namespace: namespace_a28cc5ab
	Checksum: 0xBD26EAE9
	Offset: 0x1250
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_5b4ac0fe(var_a8563e07)
{
	self function_144b90e8();
}

/*
	Name: function_a3bf4514
	Namespace: namespace_a28cc5ab
	Checksum: 0x9FCFEEDB
	Offset: 0x1280
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_a3bf4514(var_a8563e07)
{
	self function_c014d7a0(0);
}

/*
	Name: function_f71fc8b7
	Namespace: namespace_a28cc5ab
	Checksum: 0xA1D8ECA6
	Offset: 0x12B0
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_f71fc8b7(var_a8563e07)
{
	self endon("hash_128f8789");
	if(1 <= self.var_e542d7d4 && self.var_e542d7d4 <= 4)
	{
		var_85f5125 = "damage_" + self.var_e542d7d4 + "@pain";
	}
	else
	{
		var_85f5125 = "normal@pain";
	}
	self function_72a98d9c(var_85f5125);
	self namespace_72ee5da4::function_3e039667(var_85f5125, 5);
	namespace_72ee5da4::function_695a9fd6("jump", -4.4);
	namespace_72ee5da4::function_695a9fd6("jumpUp", -11);
	var_6ec51788 = namespace_72ee5da4::function_ffa85d87();
	self namespace_72ee5da4::function_fa59cc99(var_6ec51788);
	self namespace_72ee5da4::function_562e2e62();
}

/*
	Name: function_3a70e7d7
	Namespace: namespace_a28cc5ab
	Checksum: 0xCD8F247B
	Offset: 0x13F8
	Size: 0x55
	Parameters: 3
	Flags: None
*/
function function_3a70e7d7(var_ce2e4deb, var_9044be00, var_a1bb3685)
{
	var_2a5d4f75 = self.var_38a62b0e * 0.1;
	if(self.var_3a90f16b < var_2a5d4f75)
	{
		return 99999999;
	}
	return 0;
}

/*
	Name: function_975d9d5f
	Namespace: namespace_a28cc5ab
	Checksum: 0xFE363F26
	Offset: 0x1458
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function function_975d9d5f(var_a8563e07)
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	namespace_72ee5da4::function_804ee9ae("spike_on_ground", 2);
	self thread function_57c5370f();
	self thread function_76333d5f();
	function_59d0ca33();
	var_a4ad846c = GetTime();
	while(function_316422d1(self.var_722885f3, self.var_d66ee1d2) > 1200 && namespace_72ee5da4::function_3932248(var_a4ad846c) < 8)
	{
		self function_c985552d(self.var_d66ee1d2, 0, 1);
		self function_c014d7a0(0);
		wait(1);
	}
	self function_8642a7fe();
	self function_ada64136();
	self function_c014d7a0(1);
	self notify("hash_44fd873a");
	self notify("hash_3d519007");
	self.var_7f31f761.var_79dc9b21 = self.var_7f31f761.var_6829bbf7[0];
	self function_54c6085f(var_a8563e07);
	self function_911f1aa5(var_a8563e07);
	namespace_82b91a51::function_4b741fdc(self);
	self.var_12c7e390 = 1;
	self function_5151f00b(var_a8563e07);
}

/*
	Name: function_7901b73e
	Namespace: namespace_a28cc5ab
	Checksum: 0x500C5F3B
	Offset: 0x1670
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_7901b73e(var_a8563e07)
{
	namespace_72ee5da4::function_804ee9ae("jump", 22);
	namespace_72ee5da4::function_804ee9ae("jumpUp", 33);
}

/*
	Name: function_5a6e3cac
	Namespace: namespace_a28cc5ab
	Checksum: 0x3D134B68
	Offset: 0x16C8
	Size: 0x353
	Parameters: 0
	Flags: None
*/
function function_5a6e3cac()
{
	if(isdefined(self.var_7f31f761))
	{
		self function_52fddbd0();
		self.var_7f31f761.var_dfbf6b80 function_dc8c8404();
		self.var_7f31f761 function_dc8c8404();
	}
	self.var_7f31f761 = function_a8fb77bd();
	self.var_7f31f761.var_dfbf6b80 = function_9b7fda5e("script_origin", self.var_722885f3);
	self.var_7f31f761.var_425f84b1 = 0;
	self.var_7f31f761.var_6829bbf7 = namespace_14b42b8a::function_7faf4c39("balcony_point");
	self.var_7f31f761.var_747dd68d = namespace_14b42b8a::function_7faf4c39("ground_point");
	self.var_c8241452 = namespace_14b42b8a::function_7922262b("arena_center").var_722885f3;
	self.var_d66ee1d2 = namespace_14b42b8a::function_7922262b("death_goal_point").var_722885f3;
	self.var_e35f8efa = function_6ada35ba("theia_combat_region", "targetname");
	foreach(var_dd89f865 in self.var_7f31f761.var_6829bbf7)
	{
		if(function_cb3d1c9b(var_dd89f865.var_722885f3, (-24566.2, 23972.5, -20000)) < 100 * 100)
		{
			var_dd89f865.var_722885f3 = var_dd89f865.var_722885f3 + (20, -20, -100);
			continue;
		}
		if(function_cb3d1c9b(var_dd89f865.var_722885f3, (-27291.2, 25825.6, -20072)) < 100 * 100)
		{
			var_dd89f865.var_722885f3 = var_dd89f865.var_722885f3 + VectorScale((0, 1, 0), 35);
		}
	}
	/#
		namespace_33b293fd::function_a7ee953(self.var_7f31f761.var_6829bbf7.size > 0);
	#/
	/#
		namespace_33b293fd::function_a7ee953(self.var_7f31f761.var_747dd68d.size > 0);
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_c8241452));
	#/
}

/*
	Name: function_d1c640f8
	Namespace: namespace_a28cc5ab
	Checksum: 0x6CCAE8D1
	Offset: 0x1A28
	Size: 0xBF
	Parameters: 3
	Flags: None
*/
function function_d1c640f8(var_ce2e4deb, var_9044be00, var_a1bb3685)
{
	if(!namespace_72ee5da4::function_e5257a7f("jump") || !namespace_72ee5da4::function_e5257a7f("jumpUp"))
	{
		return 0;
	}
	var_b07228b6 = function_44598626(800, 2000, self.var_7f31f761.var_6829bbf7, 1200);
	if(isdefined(var_b07228b6))
	{
		self.var_7f31f761.var_79dc9b21 = var_b07228b6;
		return 500;
	}
	return 0;
}

/*
	Name: function_54c6085f
	Namespace: namespace_a28cc5ab
	Checksum: 0x2F1573B
	Offset: 0x1AF0
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function function_54c6085f(var_a8563e07)
{
	var_41d1aaf0 = self.var_7f31f761.var_79dc9b21.var_722885f3;
	var_a52faa04 = function_fafcd7f7(var_41d1aaf0 + VectorScale((0, 0, 1), 200), var_41d1aaf0 - VectorScale((0, 0, 1), 10000), VectorScale((-1, -1, -1), 10), VectorScale((1, 1, 1), 10), self, 2);
	if(0)
	{
		/#
			function_617f6eba(var_41d1aaf0, 60000, (0, 1, 0));
		#/
		/#
			function_617f6eba(var_a52faa04["Dev Block strings are not supported"], 60000, (0, 1, 0));
		#/
		/#
			function_4e418837(var_41d1aaf0, var_a52faa04["Dev Block strings are not supported"], (0, 1, 0), 1, 0, 60000);
		#/
	}
	if(var_a52faa04["fraction"] < 1)
	{
		var_41d1aaf0 = var_a52faa04["position"];
	}
	self.var_7f31f761.var_79dc9b21 = var_41d1aaf0;
	self.var_7f31f761.var_41d1aaf0 = var_41d1aaf0;
	var_a8563e07.var_bc1a4954 = 70;
	var_a8563e07.var_a1e09ed6 = VectorScale((0, 0, -1), 5);
	var_a8563e07.var_3a388f84 = 10;
	var_a8563e07.var_fb532e19 = "land_turn@jump";
	self function_d56305c8(0);
	self function_144b90e8();
}

/*
	Name: function_a4f97767
	Namespace: namespace_a28cc5ab
	Checksum: 0x61558F6A
	Offset: 0x1CF8
	Size: 0x9F
	Parameters: 3
	Flags: None
*/
function function_a4f97767(var_ce2e4deb, var_9044be00, var_a1bb3685)
{
	if(!namespace_72ee5da4::function_e5257a7f("jump") || self.var_a92e753f === 1)
	{
		return 0;
	}
	var_b07228b6 = function_c323eed7(800, 2000, 1300);
	if(isdefined(var_b07228b6))
	{
		self.var_7f31f761.var_44d87db5 = var_b07228b6;
		return 500;
	}
	return 0;
}

/*
	Name: function_b76c2c48
	Namespace: namespace_a28cc5ab
	Checksum: 0xBD221AFD
	Offset: 0x1DA0
	Size: 0x1F3
	Parameters: 1
	Flags: None
*/
function function_b76c2c48(var_a8563e07)
{
	var_41d1aaf0 = self.var_7f31f761.var_44d87db5;
	var_a52faa04 = function_fafcd7f7(var_41d1aaf0 + VectorScale((0, 0, 1), 500), var_41d1aaf0 - VectorScale((0, 0, 1), 10000), VectorScale((-1, -1, -1), 10), VectorScale((1, 1, 1), 10), self, 2);
	if(0)
	{
		/#
			function_617f6eba(var_41d1aaf0, 60000, (0, 1, 0));
		#/
		/#
			function_617f6eba(var_a52faa04["Dev Block strings are not supported"], 60000, (0, 1, 0));
		#/
		/#
			function_4e418837(var_41d1aaf0, var_a52faa04["Dev Block strings are not supported"], (0, 1, 0), 1, 0, 60000);
		#/
	}
	if(var_a52faa04["fraction"] < 1)
	{
		var_41d1aaf0 = var_a52faa04["position"];
	}
	self.var_7f31f761.var_44d87db5 = var_41d1aaf0;
	self.var_7f31f761.var_41d1aaf0 = var_41d1aaf0;
	var_a8563e07.var_bc1a4954 = 70;
	var_a8563e07.var_a1e09ed6 = VectorScale((0, 0, -1), 5);
	var_a8563e07.var_3a388f84 = -5;
	var_a8563e07.var_fb532e19 = "land@jump";
	self function_d56305c8(0);
	self function_144b90e8();
}

/*
	Name: function_d257637c
	Namespace: namespace_a28cc5ab
	Checksum: 0xC30CD156
	Offset: 0x1FA0
	Size: 0x8F
	Parameters: 3
	Flags: None
*/
function function_d257637c(var_ce2e4deb, var_9044be00, var_a1bb3685)
{
	if(!namespace_72ee5da4::function_e5257a7f("jump"))
	{
		return 0;
	}
	var_b07228b6 = function_c323eed7(800, 1800, 1300, 0, 0, 0);
	if(isdefined(var_b07228b6))
	{
		self.var_7f31f761.var_44d87db5 = var_b07228b6;
		return 400;
	}
	return 0;
}

/*
	Name: function_309fca92
	Namespace: namespace_a28cc5ab
	Checksum: 0x5910805B
	Offset: 0x2038
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_309fca92(var_a8563e07)
{
	self function_d56305c8(1);
}

/*
	Name: function_21ee6e62
	Namespace: namespace_a28cc5ab
	Checksum: 0xD52BE5F6
	Offset: 0x2068
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_21ee6e62(var_a8563e07)
{
	self function_d56305c8(1);
	self namespace_72ee5da4::function_804ee9ae("jumpUp", 11 + function_72a94f05(-1, 3));
}

/*
	Name: function_911f1aa5
	Namespace: namespace_a28cc5ab
	Checksum: 0x57BA0AB4
	Offset: 0x20D0
	Size: 0xD13
	Parameters: 1
	Flags: None
*/
function function_911f1aa5(var_a8563e07)
{
	self endon("hash_d5beb6f3");
	self endon("hash_128f8789");
	var_41d1aaf0 = self.var_7f31f761.var_41d1aaf0;
	self function_5127887a(var_41d1aaf0);
	self.var_7f31f761.var_dfbf6b80.var_722885f3 = self.var_722885f3;
	self.var_7f31f761.var_dfbf6b80.var_6ab6f4fd = self.var_6ab6f4fd;
	wait(0.05);
	self function_37f7858a(self.var_7f31f761.var_dfbf6b80);
	self.var_7f31f761.var_425f84b1 = 1;
	if(0)
	{
		/#
			function_617f6eba(var_41d1aaf0, 60000, (0, 1, 0));
		#/
		/#
			function_617f6eba(var_41d1aaf0 + VectorScale((0, 0, 1), 100), 60000, (0, 1, 0));
		#/
		/#
			function_4e418837(var_41d1aaf0, var_41d1aaf0 + VectorScale((0, 0, 1), 100), (0, 1, 0), 1, 0, 60000);
		#/
	}
	var_70fd2670 = function_87ea89a(var_41d1aaf0, self.var_7f31f761.var_dfbf6b80.var_722885f3);
	var_1a859714 = (var_41d1aaf0 - self.var_7f31f761.var_dfbf6b80.var_722885f3 / var_70fd2670[0], var_41d1aaf0 - self.var_7f31f761.var_dfbf6b80.var_722885f3 / var_70fd2670[1], 0);
	var_a2961d4 = function_34bf0601(500, 2000, 46, 52, var_70fd2670);
	var_920c55a7 = function_34bf0601(500, 2000, 0, 0.5, var_70fd2670);
	var_f1e5d209 = (0, 0, 1) * var_a2961d4 + var_a8563e07.var_3a388f84;
	var_e6651399 = var_1a859714 * var_a8563e07.var_bc1a4954 * function_34bf0601(500, 2000, 0.8, 1, var_70fd2670);
	var_9d097bf8 = var_f1e5d209 + var_e6651399;
	self function_72a98d9c("inair@jump");
	self waittill("hash_34a180dd");
	self namespace_96fa87af::function_896cfb10(self.var_c1239d26.var_2ba72ce7);
	self waittill("hash_f1a0ad10");
	self namespace_96fa87af::function_896cfb10(self.var_c1239d26.var_f209c6c6);
	var_d3ef7ffb = GetTime();
	while(1)
	{
		var_abc6040e = function_87ea89a(self.var_7f31f761.var_dfbf6b80.var_722885f3, var_41d1aaf0);
		var_570dcf42 = function_34bf0601(0, 0.5, 0.6, 0, function_69c2f683(0.5 - var_abc6040e / var_70fd2670));
		var_7e526cf9 = function_34bf0601(self.var_f8456b37 * 1, self.var_f8456b37 * 3, 0, 1, var_abc6040e);
		var_8ef0e611 = var_7e526cf9 * var_570dcf42 * var_a8563e07.var_a1e09ed6 * -1 + (0, 0, var_920c55a7);
		if(0)
		{
			/#
				function_4e418837(self.var_7f31f761.var_dfbf6b80.var_722885f3, self.var_7f31f761.var_dfbf6b80.var_722885f3 + var_8ef0e611, (0, 1, 0), 1, 0, 60000);
			#/
		}
		var_8a7223d3 = function_34bf0601(self.var_f8456b37 * 1, self.var_f8456b37 * 4, 0.2, 1, var_abc6040e);
		var_9fc4c6cf = var_e6651399 * var_8a7223d3;
		if(0)
		{
			/#
				function_4e418837(self.var_7f31f761.var_dfbf6b80.var_722885f3, self.var_7f31f761.var_dfbf6b80.var_722885f3 + var_9fc4c6cf, (0, 1, 0), 1, 0, 60000);
			#/
		}
		var_588fc985 = var_9d097bf8[2];
		var_9d097bf8 = (0, 0, var_9d097bf8[2]);
		var_9d097bf8 = var_9d097bf8 + var_9fc4c6cf + var_a8563e07.var_a1e09ed6 + var_8ef0e611;
		if(var_588fc985 > 0 && var_9d097bf8[2] <= 0)
		{
			self function_72a98d9c("fall@jump");
		}
		if(var_9d097bf8[2] <= 0 && self.var_7f31f761.var_dfbf6b80.var_722885f3[2] + var_9d097bf8[2] <= var_41d1aaf0[2] || namespace_72ee5da4::function_3932248(var_d3ef7ffb) > 10)
		{
			break;
		}
		var_f44f4d9 = var_41d1aaf0[2] + 110;
		var_55f62e61 = self.var_7f31f761.var_dfbf6b80.var_722885f3[2];
		self.var_7f31f761.var_dfbf6b80.var_722885f3 = self.var_7f31f761.var_dfbf6b80.var_722885f3 + var_9d097bf8;
		if(self.var_7f31f761.var_dfbf6b80.var_722885f3[2] < var_f44f4d9 && (var_55f62e61 > var_f44f4d9 || (var_588fc985 > 0 && var_9d097bf8[2] < 0)))
		{
			self notify("hash_7c145c4b");
			self function_72a98d9c(var_a8563e07.var_fb532e19);
		}
		if(0)
		{
			/#
				function_617f6eba(self.var_7f31f761.var_dfbf6b80.var_722885f3, 60000, (1, 0, 0));
			#/
		}
		wait(0.05);
	}
	self.var_7f31f761.var_dfbf6b80.var_722885f3 = (self.var_7f31f761.var_dfbf6b80.var_722885f3[0], self.var_7f31f761.var_dfbf6b80.var_722885f3[1], 0) + (0, 0, var_41d1aaf0[2]);
	self notify("hash_12789372");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_31d70948 = var_5dc5e20a.var_2dd707;
		var_5dc5e20a.var_2dd707 = 0;
	}
	self function_eac31668(self.var_722885f3 + VectorScale((0, 0, 1), 15), self.var_89a8360a, self.var_c8258e22, self.var_9d9382dc, self, "MOD_EXPLOSIVE");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_2dd707 = var_5dc5e20a.var_31d70948;
		var_5dc5e20a.var_31d70948 = undefined;
		if(function_316422d1(self.var_722885f3, var_5dc5e20a.var_722885f3) < 200 * 200)
		{
			var_102e3d58 = (var_5dc5e20a.var_722885f3 - self.var_722885f3[0], var_5dc5e20a.var_722885f3 - self.var_722885f3[1], 0);
			if(function_69c2f683(var_102e3d58[0]) < 0.01 && function_69c2f683(var_102e3d58[1]) < 0.01)
			{
				var_102e3d58 = (function_72a94f05(1, 2), function_72a94f05(1, 2), 0);
			}
			var_102e3d58 = function_f679a325(var_102e3d58);
			var_3860f32e = 700;
			var_5dc5e20a function_f5df04e6(var_5dc5e20a function_1439c75a() + var_102e3d58 * var_3860f32e);
			if(var_5dc5e20a.var_3a90f16b > 80)
			{
				var_5dc5e20a function_c3945cd5(var_5dc5e20a.var_3a90f16b - 70, self.var_722885f3, self);
				continue;
			}
			var_5dc5e20a function_c3945cd5(20, self.var_722885f3, self);
		}
	}
	self namespace_96fa87af::function_896cfb10(self.var_c1239d26.var_9f4c9669);
	self function_144b90e8();
	self namespace_71e9cb84::function_331efedc("sarah_rumble_on_landing");
	wait(0.3);
	self function_52fddbd0();
	wait(0.05);
	self.var_7f31f761.var_425f84b1 = 0;
	self notify("hash_48269e0e");
	namespace_72ee5da4::function_804ee9ae("jump", 11);
	namespace_72ee5da4::function_804ee9ae("ignore_player", 12);
	self namespace_72ee5da4::function_3e039667(var_a8563e07.var_fb532e19, 3);
	self namespace_72ee5da4::function_562e2e62();
}

/*
	Name: function_dbe3c90a
	Namespace: namespace_a28cc5ab
	Checksum: 0x75B6813
	Offset: 0x2DF0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_dbe3c90a(var_a8563e07)
{
	self namespace_72ee5da4::function_a5df6c0c();
	self function_d013f7fa((0, 0, 0), 0);
	self function_d013f7fa((0, 0, 0), 1);
	self function_d013f7fa((0, 0, 0), 2);
	self function_d013f7fa((0, 0, 0), 3);
	self function_d013f7fa((0, 0, 0), 4);
}

/*
	Name: function_5151f00b
	Namespace: namespace_a28cc5ab
	Checksum: 0x57209D78
	Offset: 0x2EB8
	Size: 0x2E7
	Parameters: 1
	Flags: None
*/
function function_5151f00b(var_a8563e07)
{
	self endon("hash_d5beb6f3");
	self endon("hash_128f8789");
	var_1181b4ed = undefined;
	foreach(var_a1b61a44 in self.var_7f31f761.var_6829bbf7)
	{
		if(function_316422d1(var_a1b61a44.var_722885f3, self.var_722885f3) < self.var_f8456b37 * 6 * self.var_f8456b37 * 6)
		{
			var_1181b4ed = var_a1b61a44;
			break;
		}
	}
	if(!isdefined(var_1181b4ed))
	{
		self namespace_72ee5da4::function_b1d7b4e3("jump");
		self namespace_72ee5da4::function_562e2e62();
	}
	var_1a859714 = function_bc7ce905(var_1181b4ed.var_6ab6f4fd);
	while(1)
	{
		while(!isdefined(self.var_6050ab17))
		{
			wait(1);
		}
		self function_5127887a(self.var_722885f3 + var_1a859714 * 10000);
		var_35e1c37a = self.var_e542d7d4 * 0.15;
		if(function_62e4226e(1) < var_35e1c37a)
		{
			function_5e2157f5();
			level notify("hash_38559d8c");
			self namespace_72ee5da4::function_562e2e62();
			wait(0.8);
		}
		function_6909a1a4();
		level notify("hash_38559d8c");
		self namespace_72ee5da4::function_562e2e62();
		if(function_62e4226e(1) > 0.4 && self.var_12c7e390 !== 1)
		{
			wait(0.2);
			self function_e5af3b61();
		}
		wait(0.8);
		function_42fa8354();
		level notify("hash_38559d8c");
		self namespace_72ee5da4::function_562e2e62();
		wait(0.8);
	}
}

/*
	Name: function_e5af3b61
	Namespace: namespace_a28cc5ab
	Checksum: 0xBCE5E551
	Offset: 0x31A8
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_e5af3b61()
{
	var_92a26805 = 180;
	var_e2d09319 = function_298b8148(self.var_6ab6f4fd);
	var_34fb19f = self.var_722885f3 + VectorScale((0, 0, 1), 10);
	var_d09017f9 = var_e2d09319;
	var_11b475f9 = "juke_r@movement";
	var_b274fc28 = "juke_l@movement";
	if(namespace_d73b9283::function_d2c92ee7())
	{
		var_d09017f9 = var_d09017f9 * -1;
		var_11b475f9 = "juke_l@movement";
		var_b274fc28 = "juke_r@movement";
	}
	var_a52faa04 = function_fafcd7f7(var_34fb19f, var_34fb19f + var_d09017f9 * var_92a26805, 0.8 * (self.var_f8456b37 * -1, self.var_f8456b37 * -1, 0), 0.8 * (self.var_f8456b37, self.var_f8456b37, self.var_e363b850), self, 2);
	if(0)
	{
		/#
			function_4e418837(var_34fb19f, var_34fb19f + var_d09017f9 * var_92a26805, (1, 0, 0), 1, 0, 100);
		#/
	}
	if(var_a52faa04["fraction"] < 1)
	{
		var_d09017f9 = var_d09017f9 * -1;
		var_a52faa04 = function_fafcd7f7(var_34fb19f, var_34fb19f + var_d09017f9 * var_92a26805, 0.8 * (self.var_f8456b37 * -1, self.var_f8456b37 * -1, 0), 0.8 * (self.var_f8456b37, self.var_f8456b37, self.var_e363b850), self, 2);
		var_11b475f9 = var_b274fc28;
		if(0)
		{
			/#
				function_4e418837(var_34fb19f, var_34fb19f + var_d09017f9 * var_92a26805, (1, 0, 0), 1, 0, 100);
			#/
		}
	}
	if(var_a52faa04["fraction"] >= 1)
	{
		self function_72a98d9c(var_11b475f9);
		self namespace_72ee5da4::function_3e039667(var_11b475f9, 3);
		self function_59d0ca33();
		return 1;
	}
	return 0;
}

/*
	Name: function_3344e4e8
	Namespace: namespace_a28cc5ab
	Checksum: 0x83648EA9
	Offset: 0x34A8
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_3344e4e8(var_a8563e07)
{
	self namespace_72ee5da4::function_a5df6c0c();
	self function_d013f7fa((0, 0, 0), 0);
	self function_d013f7fa((0, 0, 0), 1);
	self function_d013f7fa((0, 0, 0), 2);
	self function_d013f7fa((0, 0, 0), 3);
	self function_d013f7fa((0, 0, 0), 4);
}

/*
	Name: function_c05314da
	Namespace: namespace_a28cc5ab
	Checksum: 0x490199F1
	Offset: 0x3570
	Size: 0xFD
	Parameters: 1
	Flags: None
*/
function function_c05314da(var_a8563e07)
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	if(namespace_72ee5da4::function_ffa85d87() === "jump")
	{
		namespace_72ee5da4::function_804ee9ae("spike_on_ground", 2);
	}
	self thread function_57c5370f();
	self thread function_76333d5f();
	self thread function_53492b89();
	self thread function_6f90eaa6();
	self thread function_7080094f();
	while(1)
	{
		self namespace_72ee5da4::function_562e2e62();
		wait(1);
	}
}

/*
	Name: function_a812ea81
	Namespace: namespace_a28cc5ab
	Checksum: 0x310B2BB1
	Offset: 0x3678
	Size: 0x1F9
	Parameters: 1
	Flags: None
*/
function function_a812ea81(var_ec87177)
{
	var_722885f3 = self function_d48f2ab3(var_ec87177);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_31d70948 = var_5dc5e20a.var_2dd707;
		var_5dc5e20a.var_2dd707 = 0;
	}
	self function_eac31668(var_722885f3 + VectorScale((0, 0, 1), 10), self.var_f8456b37, 200, 200, self, "MOD_EXPLOSIVE");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_2dd707 = var_5dc5e20a.var_31d70948;
		var_5dc5e20a.var_31d70948 = undefined;
		if(function_316422d1(var_722885f3, var_5dc5e20a.var_722885f3) < self.var_f8456b37 * self.var_f8456b37)
		{
			var_5dc5e20a function_c3945cd5(15, var_722885f3, self);
		}
	}
}

/*
	Name: function_6f90eaa6
	Namespace: namespace_a28cc5ab
	Checksum: 0x8A853D72
	Offset: 0x3880
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_6f90eaa6()
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	self notify("hash_9a439848");
	self endon("hash_9a439848");
	while(1)
	{
		self waittill("hash_e7f1803b");
		function_a812ea81("tag_leg_left_foot_animate");
	}
}

/*
	Name: function_7080094f
	Namespace: namespace_a28cc5ab
	Checksum: 0x84D98401
	Offset: 0x38F0
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_7080094f()
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	self notify("hash_ca245721");
	self endon("hash_ca245721");
	while(1)
	{
		self waittill("hash_24087996");
		function_a812ea81("tag_leg_right_foot_animate");
	}
}

/*
	Name: function_44598626
	Namespace: namespace_a28cc5ab
	Checksum: 0xC7BA5392
	Offset: 0x3960
	Size: 0x345
	Parameters: 4
	Flags: None
*/
function function_44598626(var_4ff43c77, var_34ff10c9, var_24cbb6a3, var_7d44ed30)
{
	/#
		function_4c9624c6("Dev Block strings are not supported" + var_4ff43c77 + "Dev Block strings are not supported" + var_34ff10c9 + "Dev Block strings are not supported", self.var_722885f3, (1, 0.5, 0), "Dev Block strings are not supported", self);
	#/
	var_14fa273b = 1000000;
	var_3c61bfc2 = undefined;
	foreach(var_dd89f865 in var_24cbb6a3)
	{
		var_e529415c = function_87ea89a(var_dd89f865.var_722885f3, self.var_722885f3);
		if(var_e529415c < var_4ff43c77 || var_34ff10c9 < var_e529415c)
		{
			/#
				function_5cb41422(var_dd89f865.var_722885f3, (1, 0.5, 0));
			#/
			/#
				function_4c9624c6("Dev Block strings are not supported" + var_e529415c, var_dd89f865.var_722885f3, (1, 0.5, 0), "Dev Block strings are not supported", self);
			#/
			continue;
		}
		var_f1242439 = function_69c2f683(var_e529415c - var_7d44ed30);
		if(var_f1242439 < 200)
		{
			var_f1242439 = function_62e4226e(200);
		}
		if(isdefined(self.var_7f31f761.var_79dc9b21) && function_316422d1(var_dd89f865.var_722885f3, self.var_7f31f761.var_79dc9b21) < 50 * 50)
		{
			var_f1242439 = var_f1242439 + 1000;
		}
		/#
			function_5cb41422(var_dd89f865.var_722885f3, (1, 0.5, 0));
		#/
		/#
			function_4c9624c6("Dev Block strings are not supported" + var_e529415c + "Dev Block strings are not supported" + var_f1242439, var_dd89f865.var_722885f3, (1, 0.5, 0), "Dev Block strings are not supported", self);
		#/
		if(var_f1242439 < var_14fa273b)
		{
			var_14fa273b = var_f1242439;
			var_3c61bfc2 = var_dd89f865;
		}
	}
	if(isdefined(var_3c61bfc2))
	{
		return var_3c61bfc2;
	}
	return undefined;
}

/*
	Name: function_3b3e7a3d
	Namespace: namespace_a28cc5ab
	Checksum: 0xCB5ED7B8
	Offset: 0x3CB0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_3b3e7a3d(var_a8563e07)
{
	self notify("hash_44fd873a");
	self notify("hash_3d519007");
	self function_62b52961();
	self function_2bf2cccb(0);
}

/*
	Name: function_ea8eac3c
	Namespace: namespace_a28cc5ab
	Checksum: 0x854D717E
	Offset: 0x3D10
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_ea8eac3c(var_5dc5e20a)
{
	if(function_65f192a6(var_5dc5e20a))
	{
		if(var_5dc5e20a.var_91c8e9a9 && isdefined(var_5dc5e20a.var_ef4daaa5) && function_85e4c3b3(var_5dc5e20a.var_ef4daaa5))
		{
			return var_5dc5e20a.var_ef4daaa5;
		}
	}
	return undefined;
}

/*
	Name: function_a9cc4c74
	Namespace: namespace_a28cc5ab
	Checksum: 0x5AA0EB9C
	Offset: 0x3D90
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_a9cc4c74()
{
	var_b3db42a9 = level.var_2395e945;
	var_e05084f6 = [];
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_96fa87af = function_ea8eac3c(var_5dc5e20a);
		if(isdefined(var_96fa87af))
		{
			if(!isdefined(var_e05084f6))
			{
				var_e05084f6 = [];
			}
			else if(!function_6e2770d8(var_e05084f6))
			{
				var_e05084f6 = function_84970cc4(var_e05084f6);
			}
			var_e05084f6[var_e05084f6.size] = var_96fa87af;
		}
	}
	var_b3db42a9 = function_525ae497(var_b3db42a9, var_e05084f6, 0, 0);
	return var_b3db42a9;
}

/*
	Name: function_9ce79c2c
	Namespace: namespace_a28cc5ab
	Checksum: 0x14890761
	Offset: 0x3EE0
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_9ce79c2c(var_5dc5e20a)
{
	var_5e76f0af = var_5dc5e20a function_c7f3ce11();
	if(!isdefined(self.var_236a6361))
	{
		self.var_236a6361 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
		{
			self.var_236a6361[self.var_236a6361.size] = function_a8fb77bd();
		}
	}
	else if(!isdefined(self.var_236a6361[var_5e76f0af].var_f9348fda) || !isdefined(self.var_236a6361[var_5e76f0af].var_b0ca0dd0) || !isdefined(self.var_236a6361[var_5e76f0af].var_5b4cf339))
	{
		function_cdc7d6d5(var_5dc5e20a);
	}
}

/*
	Name: function_a849d3e8
	Namespace: namespace_a28cc5ab
	Checksum: 0x3C633135
	Offset: 0x3FF8
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_a849d3e8()
{
	namespace_dabbe128::function_356a4ee1(&function_9ce79c2c, self);
	namespace_dabbe128::function_1b292fa6(&function_9ce79c2c, self);
	namespace_dabbe128::function_df3cb43b(&function_9ce79c2c, self);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		self function_9ce79c2c(var_5dc5e20a);
	}
}

/*
	Name: function_cdc7d6d5
	Namespace: namespace_a28cc5ab
	Checksum: 0xA7E1BB6E
	Offset: 0x40F0
	Size: 0x187
	Parameters: 1
	Flags: None
*/
function function_cdc7d6d5(var_5dc5e20a)
{
	var_5e76f0af = var_5dc5e20a function_c7f3ce11();
	var_5f5abdcc = self.var_236a6361[var_5e76f0af].var_f9348fda;
	if(!isdefined(var_5f5abdcc))
	{
		var_5f5abdcc = 1000000;
	}
	if(self.var_236a6361.size > 0)
	{
		foreach(var_aa86143d in self.var_236a6361)
		{
			if(isdefined(var_aa86143d.var_f9348fda))
			{
				var_5f5abdcc = function_95d0212b(var_5f5abdcc, var_aa86143d.var_f9348fda);
			}
		}
	}
	else
	{
		var_5f5abdcc = 0;
	}
	self.var_236a6361[var_5e76f0af].var_f9348fda = var_5f5abdcc;
	self.var_236a6361[var_5e76f0af].var_b0ca0dd0 = 0;
	self.var_236a6361[var_5e76f0af].var_5b4cf339 = 0;
}

/*
	Name: function_ffea59d7
	Namespace: namespace_a28cc5ab
	Checksum: 0x1B8707AA
	Offset: 0x4280
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_ffea59d7(var_5dc5e20a, var_f9348fda)
{
	var_5e76f0af = var_5dc5e20a function_c7f3ce11();
	self.var_236a6361[var_5e76f0af].var_f9348fda = self.var_236a6361[var_5e76f0af].var_f9348fda + var_f9348fda;
}

/*
	Name: function_b95b6735
	Namespace: namespace_a28cc5ab
	Checksum: 0x1C198E42
	Offset: 0x42F8
	Size: 0xD3
	Parameters: 3
	Flags: None
*/
function function_b95b6735(var_5dc5e20a, var_cf979586, var_22e32101)
{
	var_5e76f0af = var_5dc5e20a function_c7f3ce11();
	if(self.var_236a6361[var_5e76f0af].var_5b4cf339 <= GetTime())
	{
		self.var_236a6361[var_5e76f0af].var_b0ca0dd0 = 0;
	}
	self.var_236a6361[var_5e76f0af].var_b0ca0dd0 = self.var_236a6361[var_5e76f0af].var_b0ca0dd0 + var_cf979586;
	self.var_236a6361[var_5e76f0af].var_5b4cf339 = GetTime() + var_22e32101 * 1000;
}

/*
	Name: function_765debac
	Namespace: namespace_a28cc5ab
	Checksum: 0x594F2EC
	Offset: 0x43D8
	Size: 0x22F
	Parameters: 1
	Flags: None
*/
function function_765debac(var_5dc5e20a)
{
	if(!function_139e3a4a(var_5dc5e20a))
	{
		return;
	}
	var_644f139c = 7;
	var_79990bb = GetTime();
	if(isdefined(var_5dc5e20a.var_47b86c9b) && var_5dc5e20a.var_47b86c9b + var_644f139c * 1000 > var_79990bb)
	{
		return;
	}
	var_5e76f0af = var_5dc5e20a function_c7f3ce11();
	if(!isdefined(self.var_236a6361) || !isdefined(self.var_236a6361[var_5e76f0af]))
	{
		return;
	}
	var_aa86143d = self.var_236a6361[var_5e76f0af].var_f9348fda;
	if(self.var_236a6361[var_5e76f0af].var_5b4cf339 > GetTime())
	{
		var_aa86143d = var_aa86143d + self.var_236a6361[var_5e76f0af].var_b0ca0dd0;
	}
	if(self.var_3e3e2c02 === var_5dc5e20a)
	{
		var_aa86143d = var_aa86143d + 1000;
	}
	if(self function_6d424c6f(var_5dc5e20a, 3))
	{
		var_aa86143d = var_aa86143d + 1000;
	}
	if(var_5dc5e20a.var_3a90f16b < 50)
	{
		var_aa86143d = var_aa86143d - 800;
	}
	var_e636c4b2 = function_316422d1(self.var_722885f3, var_5dc5e20a.var_722885f3);
	if(var_e636c4b2 < 800 * 800)
	{
		var_aa86143d = var_aa86143d + 800;
	}
	else if(var_e636c4b2 < 1500 * 1500)
	{
		var_aa86143d = var_aa86143d + 400;
	}
	return var_aa86143d;
}

/*
	Name: function_8ddb2a2e
	Namespace: namespace_a28cc5ab
	Checksum: 0xAB1F00C9
	Offset: 0x4610
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function function_8ddb2a2e()
{
	var_1090957a = -1000000;
	self.var_3e3e2c02 = undefined;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_aa86143d = function_765debac(var_5dc5e20a);
		if(isdefined(var_aa86143d) && var_aa86143d > var_1090957a)
		{
			var_1090957a = var_aa86143d;
			self.var_3e3e2c02 = var_5dc5e20a;
		}
	}
}

/*
	Name: function_50256641
	Namespace: namespace_a28cc5ab
	Checksum: 0x1A377B67
	Offset: 0x4700
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_50256641(var_b07228b6)
{
	if(!isdefined(var_b07228b6))
	{
		self function_d013f7fa((0, 0, 0), 3);
		self function_d013f7fa((0, 0, 0), 4);
	}
	else
	{
		self namespace_72ee5da4::function_5cbfc55e(var_b07228b6, 3);
		self namespace_72ee5da4::function_5cbfc55e(var_b07228b6, 4);
	}
}

/*
	Name: function_347f88f3
	Namespace: namespace_a28cc5ab
	Checksum: 0xCAC958AA
	Offset: 0x47A0
	Size: 0xBF
	Parameters: 3
	Flags: None
*/
function function_347f88f3(var_b07228b6, var_60db70fa, var_d900369a)
{
	self endon("hash_128f8789");
	var_9f07e606 = self.var_722885f3;
	var_79056b9d = var_b07228b6.var_722885f3;
	if(0)
	{
		var_851c7af2 = GetTime() + var_60db70fa * 1000;
		while(GetTime() <= var_851c7af2)
		{
			/#
				function_4e418837(var_9f07e606, var_79056b9d, var_d900369a, 1, 0, 3);
			#/
			wait(0.05);
		}
	}
}

/*
	Name: function_30ecb08
	Namespace: namespace_a28cc5ab
	Checksum: 0xA36D6E0
	Offset: 0x4868
	Size: 0x95
	Parameters: 1
	Flags: None
*/
function function_30ecb08(var_67520c6a)
{
	self endon("hash_128f8789");
	wait(var_67520c6a);
	for(var_c957f6b6 = 0; var_c957f6b6 < 3 && var_c957f6b6 < self.var_b66afa28.size; var_c957f6b6++)
	{
		var_41ae2fa1 = self.var_b66afa28[var_c957f6b6];
		var_41ae2fa1 function_d9cdf83c();
		wait(0.15);
	}
}

/*
	Name: function_57c5370f
	Namespace: namespace_a28cc5ab
	Checksum: 0x6989034D
	Offset: 0x4908
	Size: 0x3BF
	Parameters: 0
	Flags: None
*/
function function_57c5370f()
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	self endon("hash_44fd873a");
	self notify("hash_1f81be6d");
	self endon("hash_1f81be6d");
	while(1)
	{
		var_6050ab17 = self.var_6050ab17;
		if(!isdefined(var_6050ab17))
		{
			self function_d013f7fa((0, 0, 0));
			wait(0.4);
			continue;
		}
		if(!var_6050ab17.var_bab9655e && !function_65f192a6(var_6050ab17))
		{
			self function_40452018(var_6050ab17, -2000, 8);
			wait(0.4);
			continue;
		}
		var_2c3e05ad = function_cb3d1c9b(var_6050ab17.var_722885f3, self.var_722885f3);
		if(self function_4246bc05(var_6050ab17) && (function_65f192a6(var_6050ab17) || (200 * 200 < var_2c3e05ad && var_2c3e05ad < 2000 * 2000)))
		{
			self function_40452018(var_6050ab17, 1000, 1);
		}
		else
		{
			self function_40452018(var_6050ab17, -1000, 1);
		}
		self namespace_72ee5da4::function_5cbfc55e(var_6050ab17, 0);
		self namespace_72ee5da4::function_5cbfc55e(var_6050ab17, 1);
		self function_50256641(var_6050ab17);
		var_cc58fc9d = GetTime();
		self function_2bf2cccb(1);
		while(isdefined(var_6050ab17) && !self.var_bef31f51 && namespace_72ee5da4::function_3932248(var_cc58fc9d) < 2)
		{
			wait(0.4);
		}
		if(!isdefined(var_6050ab17))
		{
			self function_2bf2cccb(0);
			continue;
		}
		var_2c0fecbc = GetTime();
		while(isdefined(var_6050ab17) && var_6050ab17 === self.var_6050ab17 && self function_6d424c6f(var_6050ab17, 1) && namespace_72ee5da4::function_3932248(var_2c0fecbc) < 5)
		{
			self namespace_72ee5da4::function_afb82faf(1 + function_62e4226e(0.4), 1);
			if(isdefined(var_6050ab17) && function_65f192a6(var_6050ab17))
			{
				wait(0.6 + function_62e4226e(0.2));
			}
			wait(0.1);
		}
		self function_2bf2cccb(0);
		wait(0.1);
	}
}

/*
	Name: function_76333d5f
	Namespace: namespace_a28cc5ab
	Checksum: 0xE40AEC0C
	Offset: 0x4CD0
	Size: 0x7FB
	Parameters: 0
	Flags: None
*/
function function_76333d5f()
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	self endon("hash_44fd873a");
	self notify("hash_b0c6a8c1");
	self endon("hash_b0c6a8c1");
	while(1)
	{
		var_6050ab17 = self.var_6050ab17;
		if(!isdefined(var_6050ab17))
		{
			wait(0.4);
			continue;
		}
		if(namespace_72ee5da4::function_e5257a7f("spike_on_ground", 2) && self.var_5c05fe94 !== 1)
		{
			self function_7e56865f(1);
		}
		if(!namespace_72ee5da4::function_e5257a7f("spike_on_ground"))
		{
			wait(0.4);
			continue;
		}
		var_7136ec77 = var_6050ab17;
		var_b3db42a9 = function_b8494651("allies");
		var_b3db42a9 = function_525ae497(var_b3db42a9, level.var_2395e945, 0, 0);
		var_bee1759b = function_f679a325((var_7136ec77.var_722885f3 - self.var_722885f3[0], var_7136ec77.var_722885f3 - self.var_722885f3[1], 0));
		var_702668a9 = 0;
		var_8e0bb7cc = undefined;
		foreach(var_b07228b6 in var_b3db42a9)
		{
			if(var_b07228b6 function_8f454113() || var_b07228b6 == var_7136ec77)
			{
				continue;
			}
			var_7e1d2e82 = function_f679a325((var_b07228b6.var_722885f3 - self.var_722885f3[0], var_b07228b6.var_722885f3 - self.var_722885f3[1], 0));
			var_93798797 = function_5f9a4869(var_7e1d2e82, var_bee1759b);
			if(var_93798797 < 0.2)
			{
				continue;
			}
			var_de3e8c8c = function_316422d1(var_b07228b6.var_722885f3, self.var_722885f3);
			if(var_de3e8c8c < 400 * 400 || var_de3e8c8c > 1200 * 1200)
			{
				continue;
			}
			var_1e946c1e = function_a22c73c2(var_b07228b6);
			var_1e946c1e = var_1e946c1e + 1 - var_93798797;
			if(function_65f192a6(var_b07228b6))
			{
				var_1e946c1e = var_1e946c1e + 0.5;
			}
			var_b091d6b4 = function_316422d1(var_b07228b6.var_722885f3, var_7136ec77.var_722885f3);
			if(var_b091d6b4 < 200 * 200)
			{
				var_1e946c1e = var_1e946c1e - 0.3;
			}
			if(var_702668a9 <= var_1e946c1e)
			{
				var_702668a9 = var_1e946c1e;
				var_8e0bb7cc = var_b07228b6;
			}
		}
		var_6050ab17 = var_8e0bb7cc;
		if(function_5b49d38c(var_6050ab17))
		{
			if(0)
			{
				self thread function_347f88f3(var_6050ab17, 5, (1, 0, 0));
			}
			var_c275c2d1 = self function_d48f2ab3("tag_gunner_flash2");
			var_6a273c02 = function_87ea89a(self.var_722885f3, var_6050ab17.var_722885f3);
			var_810d699b = namespace_d73b9283::function_31931862(var_6a273c02 * 0.35, 100, 350);
			var_d3a18b74 = function_a972a8d5(var_6050ab17.var_722885f3 + (0, 0, var_810d699b), 300, 80, 50);
			var_3e2886cb = function_34bf0601(300, 700, 0.1, 1, var_6a273c02);
			var_41ae2fa1 = self.var_b66afa28[0];
			var_41ae2fa1.var_722885f3 = var_d3a18b74[0];
			self function_9af49228(var_41ae2fa1, (0, 0, 0), 1);
			var_7aa511a9 = GetTime();
			while(!self.var_49bcda7a && namespace_72ee5da4::function_3932248(var_7aa511a9) < 2)
			{
				wait(0.4);
			}
			self thread function_30ecb08(var_3e2886cb);
			for(var_c957f6b6 = 0; var_c957f6b6 < 3 && var_c957f6b6 < self.var_b66afa28.size && var_c957f6b6 < var_d3a18b74.size; var_c957f6b6++)
			{
				var_41ae2fa1 = self.var_b66afa28[var_c957f6b6];
				var_41ae2fa1.var_722885f3 = var_d3a18b74[var_c957f6b6];
				self function_9af49228(var_41ae2fa1, (0, 0, 0), 1);
				self function_90ad4ed1(2, var_6050ab17);
				namespace_72ee5da4::function_804ee9ae("spike_on_ground", function_72a94f05(6, 10));
				if(0)
				{
					/#
						function_617f6eba(var_41ae2fa1.var_722885f3, 200, (1, 0, 0));
					#/
					/#
						function_f090a335(var_41ae2fa1.var_722885f3, 150, (1, 0, 0), 0, 1, 200);
					#/
				}
				wait(0.1);
			}
			wait(0.5);
			self function_d013f7fa((0, 0, 0), 2);
			self function_7e56865f(0);
		}
		else
		{
			wait(0.4);
		}
	}
}

/*
	Name: function_7e56865f
	Namespace: namespace_a28cc5ab
	Checksum: 0x29249D31
	Offset: 0x54D8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_7e56865f(var_9d922fd9)
{
	self.var_5c05fe94 = var_9d922fd9;
	self function_59d0ca33();
}

/*
	Name: function_59d0ca33
	Namespace: namespace_a28cc5ab
	Checksum: 0x717DD8D5
	Offset: 0x5510
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_59d0ca33()
{
	if(self.var_5c05fe94 === 1)
	{
		var_7a02aa3a = "locomotion@movement";
	}
	else
	{
		var_7a02aa3a = "locomotion_rocketup@movement";
	}
	self function_72a98d9c(var_7a02aa3a);
}

/*
	Name: function_13a5941d
	Namespace: namespace_a28cc5ab
	Checksum: 0x329D5B5C
	Offset: 0x5570
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function function_13a5941d()
{
	var_587c5717 = 400;
	var_1639b2e9 = function_b8494651("allies");
	var_1639b2e9 = namespace_84970cc4::function_8332f7f6(var_1639b2e9);
	foreach(var_d84e54db in var_1639b2e9)
	{
		var_8fb7a6dc = 1;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(function_139e3a4a(var_5dc5e20a) && function_316422d1(var_d84e54db.var_722885f3, var_5dc5e20a.var_722885f3) < var_587c5717 * var_587c5717)
			{
				var_8fb7a6dc = 0;
				break;
			}
		}
		if(!var_8fb7a6dc)
		{
			continue;
		}
	}
	return undefined;
}

/*
	Name: function_53492b89
	Namespace: namespace_a28cc5ab
	Checksum: 0xED4534C7
	Offset: 0x5728
	Size: 0x2E7
	Parameters: 0
	Flags: None
*/
function function_53492b89()
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	self notify("hash_3d519007");
	self endon("hash_3d519007");
	while(1)
	{
		self function_8ddb2a2e();
		var_6050ab17 = self.var_3e3e2c02;
		if(level.var_2395e945.size <= 1 && namespace_72ee5da4::function_e5257a7f("ignore_player"))
		{
			namespace_72ee5da4::function_804ee9ae("ignore_player", 12);
			var_6050ab17 = function_13a5941d();
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				self function_40452018(var_5dc5e20a, -1000, 2);
			}
		}
		else if(!isdefined(var_6050ab17))
		{
			var_6050ab17 = self.var_6050ab17;
		}
		if(!isdefined(var_6050ab17))
		{
			wait(0.05);
			continue;
		}
		self.var_1cf0dd4a = self function_cbe64bb2(var_6050ab17);
		self.var_bd3ce0aa = var_6050ab17.var_722885f3;
		self function_333fd8f0(self.var_c1239d26.var_c0fdf540);
		var_b43d22be = self function_c985552d(self.var_1cf0dd4a, 0, 1);
		if(var_b43d22be)
		{
			self function_df42c640(var_6050ab17);
			self function_c014d7a0(0);
			function_59d0ca33();
			self thread function_4891e8b4();
			self namespace_72ee5da4::function_3a863dac();
			self notify("hash_d19d4706");
			self function_8642a7fe();
			self function_ada64136();
			self function_c014d7a0(1);
		}
		wait(0.05);
	}
}

/*
	Name: function_4891e8b4
	Namespace: namespace_a28cc5ab
	Checksum: 0xDD32780B
	Offset: 0x5A18
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_4891e8b4()
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	self endon("hash_3d519007");
	self notify("hash_d19d4706");
	self endon("hash_d19d4706");
	while(1)
	{
		if(isdefined(self.var_bd3ce0aa) && isdefined(self.var_3e3e2c02))
		{
			if(function_316422d1(self.var_bd3ce0aa, self.var_3e3e2c02.var_722885f3) > 200 * 200)
			{
				self notify("hash_48a3d97f");
			}
		}
		wait(0.8);
	}
}

/*
	Name: function_cbe64bb2
	Namespace: namespace_a28cc5ab
	Checksum: 0xA5FC8146
	Offset: 0x5AD8
	Size: 0x6C5
	Parameters: 1
	Flags: None
*/
function function_cbe64bb2(var_6050ab17)
{
	if(self.var_3096a55f)
	{
		return self.var_ae11119e;
	}
	var_16ab6933 = 400;
	var_f25deb34 = 80;
	var_1075a48d = self.var_722885f3;
	if(isdefined(var_6050ab17) && self function_2a8372cc(self.var_722885f3, var_6050ab17.var_722885f3))
	{
		var_1075a48d = var_6050ab17.var_722885f3;
	}
	var_d5b210fc = function_54f69de9(var_1075a48d, 0, self.var_c1239d26.var_ca67b2ea + 200, var_16ab6933, var_f25deb34, self);
	if(isdefined(var_6050ab17))
	{
		function_88b06e3(var_d5b210fc, var_6050ab17.var_722885f3, self function_501eb072() - self.var_722885f3, self, 0, var_6050ab17);
		namespace_72ee5da4::function_d6e12a11(var_d5b210fc, var_6050ab17, self.var_c1239d26.var_4d52f4f4, self.var_c1239d26.var_ca67b2ea);
	}
	function_9d329e33(var_d5b210fc, self);
	namespace_72ee5da4::function_dc90001d(var_d5b210fc);
	var_1a859714 = function_bc7ce905(self.var_6ab6f4fd);
	if(isdefined(var_6050ab17))
	{
		var_10937834 = function_f679a325(var_6050ab17.var_722885f3 - self.var_722885f3);
		var_1a859714 = function_f679a325(var_1a859714 + 5 * var_10937834);
	}
	foreach(var_dd89f865 in var_d5b210fc.var_72254e15)
	{
		if(function_316422d1(self.var_722885f3, var_dd89f865.var_722885f3) < 300 * 300)
		{
			/#
				if(!isdefined(var_dd89f865.var_a3216a9f))
				{
					var_dd89f865.var_a3216a9f = [];
				}
				var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = -700;
			#/
			var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + -700;
		}
		if(isdefined(var_6050ab17))
		{
			/#
				if(!isdefined(var_dd89f865.var_a3216a9f))
				{
					var_dd89f865.var_a3216a9f = [];
				}
				var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = var_dd89f865.var_2c18542d * -1;
			#/
			var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + var_dd89f865.var_2c18542d * -1;
			if(!var_dd89f865.var_88cb27d1)
			{
				/#
					if(!isdefined(var_dd89f865.var_a3216a9f))
					{
						var_dd89f865.var_a3216a9f = [];
					}
					var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = -600;
				#/
				var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + -600;
			}
		}
		var_c1fb870 = function_f679a325(var_dd89f865.var_722885f3 - self.var_722885f3);
		var_77ffae80 = function_5f9a4869(var_c1fb870, var_1a859714);
		if(var_77ffae80 > 0.7)
		{
			/#
				if(!isdefined(var_dd89f865.var_a3216a9f))
				{
					var_dd89f865.var_a3216a9f = [];
				}
				var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = 600;
			#/
			var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + 600;
			continue;
		}
		if(var_77ffae80 > 0)
		{
			/#
				if(!isdefined(var_dd89f865.var_a3216a9f))
				{
					var_dd89f865.var_a3216a9f = [];
				}
				var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = 0;
			#/
			var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + 0;
			continue;
		}
		if(var_77ffae80 > -0.5)
		{
			/#
				if(!isdefined(var_dd89f865.var_a3216a9f))
				{
					var_dd89f865.var_a3216a9f = [];
				}
				var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = -600;
			#/
			var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + -600;
			continue;
		}
		/#
			if(!isdefined(var_dd89f865.var_a3216a9f))
			{
				var_dd89f865.var_a3216a9f = [];
			}
			var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = -1200;
		#/
		var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + -1200;
	}
	namespace_72ee5da4::function_272864e7(var_d5b210fc);
	self namespace_72ee5da4::function_629ab2b1(var_d5b210fc);
	if(var_d5b210fc.var_72254e15.size == 0)
	{
		return self.var_722885f3;
	}
	return var_d5b210fc.var_72254e15[0].var_722885f3;
}

/*
	Name: function_9dfac374
	Namespace: namespace_a28cc5ab
	Checksum: 0xBB000DE5
	Offset: 0x61A8
	Size: 0x81
	Parameters: 3
	Flags: None
*/
function function_9dfac374(var_255826d2, var_7d6c9041, var_dd89f865)
{
	var_c8c31226 = function_316422d1(var_255826d2.var_722885f3, var_dd89f865);
	var_d69cdbbd = function_316422d1(var_7d6c9041.var_722885f3, var_dd89f865);
	return var_c8c31226 > var_d69cdbbd;
}

/*
	Name: function_feedbcc3
	Namespace: namespace_a28cc5ab
	Checksum: 0x9730D741
	Offset: 0x6238
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_feedbcc3(var_dd89f865, var_4ba97f52)
{
	foreach(var_a1b61a44 in self.var_7f31f761.var_6829bbf7)
	{
		if(function_316422d1(var_dd89f865, var_a1b61a44.var_722885f3) < var_4ba97f52 * var_4ba97f52)
		{
			return 1;
			break;
		}
	}
	return 0;
}

/*
	Name: function_c323eed7
	Namespace: namespace_a28cc5ab
	Checksum: 0x6F1F4EE2
	Offset: 0x6310
	Size: 0x8E5
	Parameters: 6
	Flags: None
*/
function function_c323eed7(var_4ff43c77, var_34ff10c9, var_7d44ed30, var_a83a9c, var_37cbd25e, var_b716a4e2)
{
	var_b3db42a9 = level.var_2395e945;
	if(var_a83a9c === 1)
	{
		var_b3db42a9 = function_525ae497(var_b3db42a9, function_b8494651("allies"), 0, 0);
		var_b3db42a9 = namespace_84970cc4::function_434d221a(var_b3db42a9, &function_9dfac374, self.var_722885f3);
	}
	var_6ab6f4fd = (0, self.var_6ab6f4fd[1], 0);
	var_1a859714 = function_bc7ce905(var_6ab6f4fd);
	var_8e0bb7cc = undefined;
	var_14fa273b = 1000000;
	var_1e5d41a4 = 300;
	var_50e99cbf = 1800;
	/#
		function_5cb41422(self.var_722885f3, (1, 0.5, 0));
	#/
	/#
		function_4c9624c6("Dev Block strings are not supported", self.var_722885f3, (1, 0.5, 0), "Dev Block strings are not supported", self);
	#/
	foreach(var_b07228b6 in var_b3db42a9)
	{
		if(!function_139e3a4a(var_b07228b6) || !var_b07228b6.var_bab9655e || function_b0395c1b(var_b07228b6))
		{
			continue;
		}
		if(function_316422d1(self.var_c8241452, var_b07228b6.var_722885f3) > var_50e99cbf * var_50e99cbf)
		{
			/#
				function_5cb41422(var_b07228b6.var_722885f3, (0, 0.5, 1));
			#/
			/#
				function_4c9624c6("Dev Block strings are not supported" + function_87ea89a(self.var_c8241452, var_b07228b6.var_722885f3), var_b07228b6.var_722885f3, (0, 0.5, 1), "Dev Block strings are not supported", self);
			#/
			continue;
		}
		if(function_feedbcc3(var_b07228b6.var_722885f3, var_1e5d41a4))
		{
			/#
				function_5cb41422(var_b07228b6.var_722885f3, (0, 0.5, 1));
			#/
			/#
				function_4c9624c6("Dev Block strings are not supported", var_b07228b6.var_722885f3, (0, 0.5, 1), "Dev Block strings are not supported", self);
			#/
			continue;
		}
		var_e529415c = function_87ea89a(var_b07228b6.var_722885f3, self.var_722885f3);
		if(var_e529415c < var_4ff43c77 || var_34ff10c9 < var_e529415c)
		{
			/#
				function_5cb41422(var_b07228b6.var_722885f3, (1, 0.5, 0));
			#/
			/#
				function_4c9624c6("Dev Block strings are not supported" + var_e529415c, var_b07228b6.var_722885f3, (1, 0.5, 0), "Dev Block strings are not supported", self);
			#/
			continue;
		}
		var_f0c96e98 = (var_b07228b6.var_722885f3 - self.var_722885f3[0], var_b07228b6.var_722885f3 - self.var_722885f3[1], 0);
		var_f0c96e98 = var_f0c96e98 / var_e529415c;
		if(isdefined(var_37cbd25e) && function_5f9a4869(var_1a859714, var_f0c96e98) < var_37cbd25e)
		{
			continue;
		}
		var_f1242439 = function_69c2f683(var_e529415c - var_7d44ed30);
		if(var_f1242439 < 200)
		{
			var_f1242439 = function_62e4226e(200);
		}
		/#
			function_5cb41422(var_b07228b6.var_722885f3, (1, 0.5, 0));
		#/
		/#
			function_4c9624c6("Dev Block strings are not supported" + var_e529415c + "Dev Block strings are not supported" + var_f1242439, var_b07228b6.var_722885f3, (1, 0.5, 0), "Dev Block strings are not supported", self);
		#/
		if(function_65f192a6(var_b07228b6) && !function_85e4c3b3(var_b07228b6))
		{
			var_fc4796f5 = 0;
			var_277de3ef = 300;
		}
		else
		{
			var_fc4796f5 = 200;
			var_277de3ef = 400;
		}
		var_d5b210fc = function_54f69de9(var_b07228b6.var_722885f3, var_fc4796f5, var_277de3ef, 500, self.var_f8456b37 * 0.5, self.var_f8456b37 * 1.1);
		if(var_d5b210fc.var_72254e15.size > 0)
		{
			var_c0316523 = var_d5b210fc.var_72254e15[0];
			if(var_f1242439 < var_14fa273b)
			{
				var_14fa273b = var_f1242439;
				var_8e0bb7cc = var_c0316523;
			}
		}
	}
	if(isdefined(var_8e0bb7cc))
	{
		return var_8e0bb7cc.var_722885f3;
	}
	if(var_b716a4e2 === 0)
	{
		return undefined;
	}
	var_d5b210fc = function_54f69de9(self.var_c8241452, 100, 1300, 500, self.var_f8456b37, self.var_f8456b37 * 1.1);
	/#
		namespace_33b293fd::function_a7ee953(var_d5b210fc.var_72254e15.size > 0);
	#/
	var_6ab55afd = namespace_84970cc4::function_8332f7f6(var_d5b210fc.var_72254e15);
	foreach(var_dd89f865 in var_6ab55afd)
	{
		var_edf6415e = function_316422d1(var_dd89f865.var_722885f3, self.var_722885f3);
		if(var_4ff43c77 * var_4ff43c77 < var_edf6415e && var_edf6415e < var_34ff10c9 * var_34ff10c9 && !function_feedbcc3(var_dd89f865.var_722885f3, var_1e5d41a4))
		{
			return var_dd89f865.var_722885f3;
		}
	}
	return self.var_c8241452;
}

/*
	Name: function_144b90e8
	Namespace: namespace_a28cc5ab
	Checksum: 0x974CF2F1
	Offset: 0x6C00
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_144b90e8()
{
	self notify("hash_3d519007");
	self notify("hash_48a3d97f");
	self function_8642a7fe();
	self function_ada64136();
	self function_62b52961();
	self function_8d87b0f9();
	self function_c014d7a0(1);
}

/*
	Name: function_5127887a
	Namespace: namespace_a28cc5ab
	Checksum: 0x909541DB
	Offset: 0x6CA0
	Size: 0x243
	Parameters: 2
	Flags: None
*/
function function_5127887a(var_c7b6e8e4, var_cd8c9d1a)
{
	if(!isdefined(var_cd8c9d1a))
	{
		var_cd8c9d1a = 30;
	}
	var_3b143046 = (var_c7b6e8e4 - self.var_722885f3[0], var_c7b6e8e4 - self.var_722885f3[1], 0);
	var_3b143046 = function_f679a325(var_3b143046);
	var_81240290 = function_bdcdc423(var_3b143046);
	var_307cd23f = function_89a42b0a(self.var_6ab6f4fd[1] - var_81240290[1]);
	if(var_307cd23f <= var_cd8c9d1a)
	{
		return;
	}
	self function_b4518657(var_c7b6e8e4);
	self function_13022100(var_c7b6e8e4);
	self function_59d0ca33();
	var_278525e3 = GetTime();
	while(var_307cd23f > var_cd8c9d1a && namespace_72ee5da4::function_3932248(var_278525e3) < 4)
	{
		if(0)
		{
			/#
				function_4e418837(self.var_722885f3, var_c7b6e8e4, (1, 0, 1), 1, 0, 5);
			#/
		}
		var_307cd23f = function_89a42b0a(self.var_6ab6f4fd[1] - var_81240290[1]);
		wait(0.05);
	}
	self function_ada64136();
	self function_8d87b0f9();
	self function_62b52961();
	self function_8642a7fe();
}

/*
	Name: function_93219dbe
	Namespace: namespace_a28cc5ab
	Checksum: 0x1E60FC95
	Offset: 0x6EF0
	Size: 0x26F
	Parameters: 13
	Flags: None
*/
function function_93219dbe(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b)
{
	if(!function_65f192a6(var_3a212fd7))
	{
		var_f9a179ed = 0;
		return var_f9a179ed;
	}
	var_e5315a4c = function_3f10449f().size;
	var_64d030a4 = 1 / var_e5315a4c;
	var_f9a179ed = var_f9a179ed * var_64d030a4;
	if(var_ba36487d !== "MOD_UNKNOWN" && var_f9a179ed > self.var_38a62b0e * 8 * 0.01)
	{
		var_f9a179ed = self.var_38a62b0e * 8 * 0.01;
	}
	var_156470d4 = namespace_96fa87af::function_b07a55e6(self.var_3a90f16b, var_f9a179ed, self.var_38a62b0e);
	if(var_156470d4 > self.var_e542d7d4)
	{
		self.var_156470d4 = var_156470d4;
	}
	if(self.var_156470d4 > self.var_e542d7d4 && function_c423e168())
	{
		self.var_e542d7d4 = self.var_156470d4;
		self notify("hash_3a1e58a1");
		namespace_96fa87af::function_99199795(self.var_e542d7d4);
		if(self.var_e542d7d4 >= 2)
		{
			self namespace_96fa87af::function_492f8fe7(1, 0);
		}
	}
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7))
	{
		function_ffea59d7(var_3a212fd7, var_f9a179ed);
		if(var_f9a179ed > 500)
		{
			function_b95b6735(var_3a212fd7, 1000, 4);
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_5e2157f5
	Namespace: namespace_a28cc5ab
	Checksum: 0x7D35CDAA
	Offset: 0x7168
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_5e2157f5()
{
	if(level.var_2395e945.size < 1)
	{
		return;
	}
	var_6050ab17 = namespace_84970cc4::function_47d18840(level.var_2395e945);
	if(!isdefined(var_6050ab17))
	{
		return;
	}
	var_1a859714 = function_bc7ce905(self.var_6ab6f4fd);
	var_632fa170 = self.var_722885f3 + var_1a859714 * 200 + VectorScale((0, 0, 1), 500);
	self function_72a98d9c("javelin@stationary");
	self waittill("hash_91162229");
	level notify("hash_380ae1f4", var_6050ab17);
	var_f07434cb = self function_6bf94056(0);
	var_dfcc01fd = function_c4d5ec1f("siegebot_javelin_turret");
	self thread function_c73f719e(var_dfcc01fd);
	self function_3f3534a8(var_dfcc01fd);
	self thread namespace_72ee5da4::function_e8b93d1b(var_6050ab17);
	self function_90ad4ed1(0, var_6050ab17);
	self namespace_72ee5da4::function_3e039667("javelin@stationary", 3);
	self function_3f3534a8(var_f07434cb);
	var_632fa170 = self.var_722885f3 + var_1a859714 * 500;
	self function_13022100(var_632fa170);
	self namespace_82b91a51::function_9fcf3cd8(2, "turret_on_target");
	self function_62b52961();
	if(isdefined(var_6050ab17) && !self function_4246bc05(var_6050ab17))
	{
		var_1a859714 = function_bc7ce905(self.var_6ab6f4fd);
		var_a8c2ced2 = self.var_722885f3 + var_1a859714 * 1000;
		self function_13022100(var_a8c2ced2);
		var_813fc428 = self namespace_82b91a51::function_9fcf3cd8(3, "turret_on_target");
		self function_62b52961();
	}
	self function_59d0ca33();
}

/*
	Name: function_c73f719e
	Namespace: namespace_a28cc5ab
	Checksum: 0x151A4ECC
	Offset: 0x7480
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_c73f719e(var_148fb98c)
{
	self endon("hash_d5da096");
	self endon("hash_128f8789");
	self waittill("hash_aa1618b0", var_148fb98c);
	var_7d15e2f8 = 1400;
	var_48b937ab = "prj_javelin_incoming";
	wait(3);
	if(!isdefined(var_148fb98c))
	{
		return;
	}
	while(isdefined(var_148fb98c) && isdefined(var_148fb98c.var_722885f3))
	{
		if(isdefined(self.var_6050ab17) && isdefined(self.var_6050ab17.var_722885f3))
		{
			var_24d263dd = function_cb3d1c9b(var_148fb98c.var_722885f3, self.var_6050ab17.var_722885f3);
			if(var_24d263dd <= var_7d15e2f8 * var_7d15e2f8)
			{
				var_148fb98c function_921a1574(var_48b937ab);
				return;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_fac6ca3e
	Namespace: namespace_a28cc5ab
	Checksum: 0x9BD1F696
	Offset: 0x75B0
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_fac6ca3e()
{
	var_74952a22 = 6;
	if(!isdefined(self.var_b66afa28) || self.var_b66afa28.size < 1)
	{
		self.var_b66afa28 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < var_74952a22; var_c957f6b6++)
		{
			var_ea34311d = function_9b7fda5e("script_origin", self.var_722885f3);
			if(!isdefined(self.var_b66afa28))
			{
				self.var_b66afa28 = [];
			}
			else if(!function_6e2770d8(self.var_b66afa28))
			{
				self.var_b66afa28 = function_84970cc4(self.var_b66afa28);
			}
			self.var_b66afa28[self.var_b66afa28.size] = var_ea34311d;
		}
	}
	else if(!isdefined(self.var_fa144784))
	{
		self.var_fa144784 = function_9b7fda5e("script_origin", self.var_722885f3);
	}
}

/*
	Name: function_d9cdf83c
	Namespace: namespace_a28cc5ab
	Checksum: 0xAF870C4
	Offset: 0x76F8
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_d9cdf83c()
{
	var_a52faa04 = function_e1dc201c(self.var_722885f3, self.var_722885f3 + VectorScale((0, 0, -1), 800), 0, self);
	if(var_a52faa04["fraction"] < 1)
	{
		self.var_722885f3 = var_a52faa04["position"] + VectorScale((0, 0, -1), 20);
	}
	else
	{
		self.var_722885f3 = self.var_722885f3 + VectorScale((0, 0, -1), 500);
	}
}

/*
	Name: function_ab984a0f
	Namespace: namespace_a28cc5ab
	Checksum: 0x5527B0EF
	Offset: 0x77A8
	Size: 0x1B9
	Parameters: 0
	Flags: None
*/
function function_ab984a0f()
{
	self endon("hash_128f8789");
	wait(0.1);
	var_c07ddbf5 = namespace_84970cc4::function_8332f7f6(self.var_b66afa28);
	foreach(var_b07228b6 in var_c07ddbf5)
	{
		var_b07228b6 function_d9cdf83c();
		wait(function_72a94f05(0.05, 0.1));
	}
	if(0)
	{
		foreach(var_41ae2fa1 in var_c07ddbf5)
		{
			/#
				function_617f6eba(var_41ae2fa1.var_722885f3, 200, (1, 0, 0));
			#/
			/#
				function_f090a335(var_41ae2fa1.var_722885f3, 150, (1, 0, 0), 0, 1, 200);
			#/
		}
	}
}

/*
	Name: function_a22c73c2
	Namespace: namespace_a28cc5ab
	Checksum: 0x5B6F7FC6
	Offset: 0x7970
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_a22c73c2(var_b07228b6)
{
	var_f1242439 = 1;
	if(var_b07228b6 function_8f454113())
	{
		var_f1242439 = 0.2;
	}
	else if(!var_b07228b6.var_bab9655e)
	{
		var_f1242439 = 0.4;
	}
	else if(function_b0395c1b(var_b07228b6))
	{
		var_f1242439 = 0.2;
	}
	return var_f1242439;
}

/*
	Name: function_ad4f5bb6
	Namespace: namespace_a28cc5ab
	Checksum: 0x4C0CA284
	Offset: 0x7A10
	Size: 0x11B
	Parameters: 3
	Flags: None
*/
function function_ad4f5bb6(var_b07228b6, var_afd2f52a, var_f8456b37)
{
	var_1e946c1e = function_a22c73c2(var_b07228b6);
	foreach(var_707231aa in var_afd2f52a)
	{
		var_d63747fb = function_316422d1(var_b07228b6.var_722885f3, var_707231aa.var_722885f3) < var_f8456b37 * var_f8456b37;
		if(var_d63747fb)
		{
			var_1e946c1e = var_1e946c1e + function_a22c73c2(var_707231aa);
		}
	}
	return var_1e946c1e;
}

/*
	Name: function_6909a1a4
	Namespace: namespace_a28cc5ab
	Checksum: 0xCA67099F
	Offset: 0x7B38
	Size: 0x5CB
	Parameters: 0
	Flags: None
*/
function function_6909a1a4()
{
	var_bef46db0 = 600;
	var_5eead8e6 = 40;
	function_fac6ca3e();
	var_1a859714 = function_bc7ce905(self.var_6ab6f4fd);
	self function_13022100(self.var_722885f3 + var_1a859714 * 1000);
	self namespace_82b91a51::function_9fcf3cd8(2, "turret_on_target");
	var_1a859714 = function_bc7ce905(self.var_6ab6f4fd);
	var_b3db42a9 = function_b8494651("allies");
	var_b3db42a9 = function_525ae497(var_b3db42a9, level.var_2395e945, 0, 0);
	var_702668a9 = 0;
	var_8e0bb7cc = undefined;
	foreach(var_b07228b6 in var_b3db42a9)
	{
		if(var_b07228b6 function_8f454113() || function_b0395c1b(var_b07228b6))
		{
			continue;
		}
		var_de3e8c8c = function_316422d1(var_b07228b6.var_722885f3, self.var_722885f3);
		if(var_de3e8c8c < 500 * 500 || var_de3e8c8c > 2100 * 2100)
		{
			continue;
		}
		var_7e1d2e82 = (var_b07228b6.var_722885f3 - self.var_722885f3[0], var_b07228b6.var_722885f3 - self.var_722885f3[1], 0);
		if(function_5f9a4869(var_7e1d2e82, var_1a859714) < 0.1)
		{
			continue;
		}
		var_1e946c1e = function_ad4f5bb6(var_b07228b6, var_b3db42a9, var_bef46db0);
		if(var_702668a9 <= var_1e946c1e)
		{
			var_702668a9 = var_1e946c1e;
			var_8e0bb7cc = var_b07228b6;
		}
	}
	if(!isdefined(var_8e0bb7cc))
	{
		var_8e0bb7cc = namespace_84970cc4::function_47d18840(function_a972a8d5(self.var_c8241452, 2000, 200));
	}
	else
	{
		var_8e0bb7cc = var_8e0bb7cc.var_722885f3;
	}
	if(0)
	{
		/#
			function_617f6eba(var_8e0bb7cc, 200, (1, 0, 0));
		#/
		/#
			function_f090a335(var_8e0bb7cc, var_bef46db0, (1, 0, 0), 0, 1, 200);
		#/
	}
	level notify("hash_879719b9", var_8e0bb7cc);
	var_4ea45b3c = (var_8e0bb7cc[0], var_8e0bb7cc[1], 0) + (0, 0, self.var_722885f3[2]);
	var_aa72094f = function_a972a8d5(var_4ea45b3c, 1200, 120);
	var_e4ca448a = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_b66afa28.size && var_c957f6b6 < var_aa72094f.size; var_c957f6b6++)
	{
		var_41ae2fa1 = self.var_b66afa28[var_c957f6b6];
		var_41ae2fa1.var_722885f3 = var_aa72094f[var_c957f6b6];
		var_e4ca448a++;
	}
	self function_72a98d9c("arm_rocket@stationary");
	self waittill("hash_e5fb1439");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e4ca448a; var_c957f6b6++)
	{
		var_41ae2fa1 = self.var_b66afa28[var_c957f6b6];
		self function_9af49228(var_41ae2fa1, (0, 0, 0), 1);
		self function_90ad4ed1(2);
		wait(0.05);
	}
	self thread function_ab984a0f();
	self function_bb5f9faa(1);
	self function_62b52961();
	self namespace_72ee5da4::function_3e039667("arm_rocket@stationary", 3);
	self function_59d0ca33();
}

/*
	Name: function_ea4bbd0d
	Namespace: namespace_a28cc5ab
	Checksum: 0x2207F9D7
	Offset: 0x8110
	Size: 0x1E3
	Parameters: 3
	Flags: None
*/
function function_ea4bbd0d(var_dd89f865, var_6050ab17, var_5e1bf73c)
{
	var_a4e8111c = VectorScale((0, 0, 1), 10);
	self.var_fa144784 function_52fddbd0();
	if(function_cb3d1c9b(self.var_fa144784.var_722885f3, var_6050ab17.var_722885f3) > 20 * 20)
	{
		self.var_fa144784.var_722885f3 = var_dd89f865;
		self namespace_72ee5da4::function_5cbfc55e(self.var_fa144784, 1);
		self namespace_82b91a51::function_9fcf3cd8(2, "turret_on_target");
		var_2973f62a = GetTime();
		while(GetTime() < var_2973f62a + var_5e1bf73c * 1000)
		{
			self.var_fa144784.var_722885f3 = function_c7118d57(var_dd89f865, var_6050ab17.var_722885f3 + var_a4e8111c, GetTime() - var_2973f62a / var_5e1bf73c * 1000);
			if(0)
			{
				/#
					function_617f6eba(self.var_fa144784.var_722885f3, 100, (0, 1, 0));
				#/
			}
			wait(0.05);
		}
	}
	self.var_fa144784.var_722885f3 = var_6050ab17.var_722885f3 + var_a4e8111c;
	wait(0.05);
	self.var_fa144784 function_37f7858a(var_6050ab17);
}

/*
	Name: function_139e3a4a
	Namespace: namespace_a28cc5ab
	Checksum: 0x8D4CFEE3
	Offset: 0x8300
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_139e3a4a(var_b07228b6)
{
	if(isdefined(var_b07228b6.var_255b9315) && var_b07228b6.var_255b9315 || var_b07228b6.var_3a90f16b <= 0)
	{
		return 0;
	}
	else if(function_65f192a6(var_b07228b6) && var_b07228b6 namespace_564407fb::function_38a9aff8())
	{
		return 0;
	}
	else if(function_5cfb84bb(var_b07228b6) && (var_b07228b6 function_8f454113() || !function_5b49d38c(var_b07228b6)))
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_367fdf4a
	Namespace: namespace_a28cc5ab
	Checksum: 0x57D63CBB
	Offset: 0x83E0
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function function_367fdf4a()
{
	if(isdefined(self.var_6050ab17) && function_139e3a4a(self.var_6050ab17))
	{
		return self.var_6050ab17;
	}
	var_b3db42a9 = function_b8494651("allies");
	var_b3db42a9 = function_525ae497(var_b3db42a9, level.var_2395e945, 0, 0);
	var_36a66a95 = [];
	foreach(var_b07228b6 in var_b3db42a9)
	{
		if(function_139e3a4a(var_b07228b6))
		{
			if(!isdefined(var_36a66a95))
			{
				var_36a66a95 = [];
			}
			else if(!function_6e2770d8(var_36a66a95))
			{
				var_36a66a95 = function_84970cc4(var_36a66a95);
			}
			var_36a66a95[var_36a66a95.size] = var_b07228b6;
		}
	}
	var_b3db42a9 = namespace_84970cc4::function_434d221a(var_36a66a95, &function_9dfac374, self.var_722885f3);
	return var_b3db42a9[0];
}

/*
	Name: function_42fa8354
	Namespace: namespace_a28cc5ab
	Checksum: 0x5CC4774D
	Offset: 0x8598
	Size: 0x4CB
	Parameters: 0
	Flags: None
*/
function function_42fa8354()
{
	var_62240a71 = 4;
	var_32b93aca = 1;
	self.var_bfa53800 = 0.4;
	self function_62b52961();
	self function_bb5f9faa(1);
	self function_d013f7fa((0, 0, 0), 0);
	self function_d013f7fa((0, 0, 0), 1);
	self function_72a98d9c("sweep@gun");
	self waittill("hash_36724a8");
	self namespace_71e9cb84::function_74d6b22f("sarah_minigun_spin", 1);
	self function_2bf2cccb(1);
	self waittill("hash_1a94e1e");
	var_6050ab17 = function_367fdf4a();
	var_ecb12b18 = function_f679a325((self.var_722885f3 - var_6050ab17.var_722885f3[0], self.var_722885f3 - var_6050ab17.var_722885f3[1], 0));
	var_c7b6e8e4 = var_6050ab17.var_722885f3 + var_ecb12b18 * 500;
	var_851c7af2 = GetTime() + var_62240a71 * 1000;
	self thread namespace_72ee5da4::function_afb82faf(var_62240a71 * 2, 1);
	while(GetTime() < var_851c7af2)
	{
		var_6050ab17 = function_367fdf4a();
		var_26ff9f6d = self function_d48f2ab3("tag_gunner_flash1");
		var_3771204c = var_6050ab17.var_722885f3 + VectorScale((0, 0, 1), 30);
		var_a52faa04 = function_e1dc201c(var_26ff9f6d, var_3771204c, 1, var_6050ab17);
		if(var_a52faa04["fraction"] == 1)
		{
			self function_b7cc66c6(var_6050ab17, 1);
		}
		else if(!function_65f192a6(var_6050ab17))
		{
			self function_40452018(var_6050ab17, -2000, 3);
		}
		if(!var_6050ab17.var_bab9655e && !function_65f192a6(var_6050ab17))
		{
			self function_40452018(var_6050ab17, -900, 8);
		}
		self namespace_72ee5da4::function_5cbfc55e(var_6050ab17, 0);
		if(function_65f192a6(var_6050ab17))
		{
			var_ecb12b18 = function_f679a325((self.var_722885f3 - var_6050ab17.var_722885f3[0], self.var_722885f3 - var_6050ab17.var_722885f3[1], 0));
			self function_ea4bbd0d(var_6050ab17.var_722885f3 + var_ecb12b18 * 500, var_6050ab17, 0.7);
		}
		else
		{
			self namespace_72ee5da4::function_5cbfc55e(var_6050ab17, 1);
		}
		self namespace_82b91a51::function_9fcf3cd8(var_32b93aca, "enemy");
	}
	self function_2bf2cccb(0);
	self notify("hash_6c8e0d8c");
	self function_59d0ca33();
	self waittill("hash_27c60d8b");
	self namespace_71e9cb84::function_74d6b22f("sarah_minigun_spin", 0);
	self.var_bfa53800 = 1;
	wait(0.2);
}


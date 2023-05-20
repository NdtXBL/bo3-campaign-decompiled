#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_scoreevents;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_weapons;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_deaef99f;

/*
	Name: function_ae5e80c1
	Namespace: namespace_deaef99f
	Checksum: 0x85850157
	Offset: 0x428
	Size: 0x2F3
	Parameters: 1
	Flags: None
*/
function function_ae5e80c1(var_2f06d687)
{
	self.var_3a90f16b = self.var_38a62b0e;
	if(isdefined(level.var_6a118559))
	{
		if(isdefined(level.var_6a118559[self.var_9d34dca7]))
		{
			self thread [[level.var_6a118559[self.var_9d34dca7]]]();
		}
		else if(isdefined(self.var_fd67e920) && isdefined(level.var_6a118559[self.var_fd67e920]))
		{
			self thread [[level.var_6a118559[self.var_fd67e920]]]();
		}
	}
	if(isdefined(level.var_28554355))
	{
		if(isdefined(level.var_28554355[self.var_9d34dca7]))
		{
			foreach(var_86365a77 in level.var_28554355[self.var_9d34dca7])
			{
				namespace_82b91a51::function_8828b758(self, var_86365a77["function"], var_86365a77["param1"], var_86365a77["param2"], var_86365a77["param3"], var_86365a77["param4"]);
			}
		}
	}
	else if(isdefined(level.var_53b498f7))
	{
		if(isdefined(var_2f06d687))
		{
			var_a0b86a77 = var_2f06d687.var_170527fb;
		}
		else
		{
			var_a0b86a77 = self.var_170527fb;
		}
		if(isdefined(var_a0b86a77) && isdefined(level.var_53b498f7[var_a0b86a77]))
		{
			foreach(var_86365a77 in level.var_53b498f7[var_a0b86a77])
			{
				namespace_82b91a51::function_8828b758(self, var_86365a77["function"], var_86365a77["param1"], var_86365a77["param2"], var_86365a77["param3"], var_86365a77["param4"]);
			}
		}
	}
	else if(function_5cfb84bb(self))
	{
		self namespace_2f06d687::function_f5d3130b(var_2f06d687);
	}
	else
	{
		namespace_96fa87af::function_c35e6aab(self);
	}
}

/*
	Name: function_4aaf3176
	Namespace: namespace_deaef99f
	Checksum: 0x3C102CB4
	Offset: 0x728
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_4aaf3176()
{
	self endon("hash_128f8789");
	wait(0.05);
	self namespace_71e9cb84::function_e9c3870b("toggle_dnidamagefx", 0);
}

/*
	Name: function_66eed27a
	Namespace: namespace_deaef99f
	Checksum: 0x64499D27
	Offset: 0x768
	Size: 0xFAB
	Parameters: 15
	Flags: None
*/
function function_66eed27a(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f)
{
	var_a8563e07 = function_a8fb77bd();
	var_a8563e07.var_51e6a548 = var_51e6a548;
	var_a8563e07.var_3a212fd7 = var_3a212fd7;
	var_a8563e07.var_f9a179ed = var_f9a179ed;
	var_a8563e07.var_bf827987 = var_bf827987;
	var_a8563e07.var_ba36487d = var_ba36487d;
	var_a8563e07.var_dfcc01fd = var_dfcc01fd;
	var_a8563e07.var_88482219 = var_88482219;
	var_a8563e07.var_e8bb43ee = var_e8bb43ee;
	var_a8563e07.var_a77ad8eb = var_a77ad8eb;
	var_a8563e07.var_6eb5fc54 = var_6eb5fc54;
	var_a8563e07.var_a5cf2304 = var_a5cf2304;
	var_a8563e07.var_ad8afadc = var_ad8afadc;
	var_a8563e07.var_ae725cb8 = var_ae725cb8;
	var_a8563e07.var_f105c26b = var_f105c26b;
	var_a8563e07.var_7419ba1f = var_7419ba1f;
	if(game["state"] == "postgame")
	{
		return;
	}
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7) && isdefined(var_3a212fd7.var_f80930e6) && !var_3a212fd7.var_f80930e6)
	{
		return;
	}
	if(!1 & var_bf827987)
	{
		var_f9a179ed = namespace_a249d1db::function_4c74de55(self, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_51e6a548);
	}
	self.var_bf827987 = var_bf827987;
	self.var_1ec50a94 = GetTime();
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_f9a179ed), "Dev Block strings are not supported");
	#/
	if(var_f9a179ed == 0)
	{
		return;
	}
	if(!isdefined(var_e8bb43ee))
	{
		var_bf827987 = var_bf827987 | 4;
	}
	if(isdefined(self.var_47c252e3) && self.var_3a90f16b == self.var_47c252e3 || !isdefined(self.var_f5c59027))
	{
		self.var_f5c59027 = [];
		self.var_f9d53f6c = [];
		self.var_ca1ab1e7 = [];
	}
	if(var_dfcc01fd == level.var_6c3e6703 && isdefined(var_51e6a548))
	{
		if(isdefined(var_51e6a548.var_170527fb) && var_51e6a548.var_170527fb == "explodable_barrel")
		{
			var_dfcc01fd = function_c4d5ec1f("explodable_barrel");
		}
		else if(isdefined(var_51e6a548.var_92dff85a) && function_5dbf7eca(var_51e6a548.var_92dff85a, "vehicle_"))
		{
			var_dfcc01fd = function_c4d5ec1f("destructible_car");
		}
	}
	if(function_5cfb84bb(self))
	{
		self namespace_dabbe128::function_dabbe128("hash_eb4a4369", var_a8563e07);
		self thread namespace_b976075a::function_127ea28(var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd);
	}
	self namespace_dabbe128::function_dabbe128("hash_9bd1e27f", var_a8563e07);
	if(!var_bf827987 & 2048)
	{
		if(var_ba36487d == "MOD_PROJECTILE" || var_ba36487d == "MOD_GRENADE")
		{
			var_f9a179ed = var_f9a179ed * var_dfcc01fd.var_f1f25c71;
			var_f9a179ed = function_b6b79a0(var_f9a179ed);
		}
		else if(var_ba36487d == "MOD_GRENADE_SPLASH")
		{
			var_f9a179ed = var_f9a179ed * function_d389b572(var_dfcc01fd);
			var_f9a179ed = function_b6b79a0(var_f9a179ed);
		}
		var_f9a179ed = var_f9a179ed * level.var_2fcfb4f4;
		var_f9a179ed = var_f9a179ed * self function_8639c416(var_ba36487d);
		var_f9a179ed = function_b6b79a0(var_f9a179ed);
		if(!isdefined(self.var_47c252e3))
		{
			self.var_47c252e3 = self.var_38a62b0e;
		}
		if(isdefined(self.var_dc29a320))
		{
			var_f9a179ed = self [[self.var_dc29a320]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f);
		}
		else if(isdefined(level.var_dc29a320))
		{
			var_f9a179ed = self [[level.var_dc29a320]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f);
		}
		if(isdefined(level.var_175490fb) && isdefined(isdefined(level.var_175490fb.var_44a68a57)))
		{
			var_f9a179ed = self [[level.var_175490fb.var_dc29a320]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f);
		}
		if(var_f9a179ed == 0)
		{
			return;
		}
		var_f9a179ed = function_b6b79a0(var_f9a179ed);
		if(self function_6bce5b2c(var_bf827987, var_ba36487d, var_dfcc01fd))
		{
			return;
		}
		if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7))
		{
			var_3a212fd7.var_44fb8955["participation"]++;
		}
		var_644dc4a9 = self.var_3a90f16b / self.var_47c252e3;
		var_ec01147f = self function_b4980289(0);
		if(function_65f192a6(var_ec01147f) && var_ec01147f function_445e3712())
		{
			var_48fac757 = var_f9a179ed / self.var_47c252e3;
			var_48fac757 = function_b6b79a0(function_aaeec8c5(var_48fac757, 3));
			var_ec01147f function_4ede0101(var_48fac757, var_e8bb43ee);
		}
		var_4363f9c0 = self namespace_96fa87af::function_a68971a0();
		if(level.var_de12b72f && isdefined(var_3a212fd7) && var_4363f9c0 == var_3a212fd7.var_3e94206a && var_4363f9c0 != "free")
		{
			var_f1822041 = 1;
			if(level.var_98df9150 == 0)
			{
				if(!function_f28c5916(var_51e6a548, var_3a212fd7, var_ba36487d, var_dfcc01fd))
				{
					return;
				}
			}
			else if(level.var_98df9150 == 1)
			{
				var_f1822041 = 0;
			}
			else if(level.var_98df9150 == 2)
			{
				if(!function_f28c5916(var_51e6a548, var_3a212fd7, var_ba36487d, var_dfcc01fd))
				{
					return;
				}
			}
			else if(level.var_98df9150 == 3)
			{
				var_f9a179ed = function_b6b79a0(var_f9a179ed * 0.5);
				var_f1822041 = 0;
			}
			if(var_f9a179ed < 1)
			{
				var_f9a179ed = 1;
			}
			self.var_f5649d63 = 0;
			self namespace_b976075a::function_85b1d74(var_3a212fd7, var_51e6a548, var_f9a179ed, var_ba36487d, var_dfcc01fd);
			self function_f41bce9b(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_f1822041);
		}
		else if(!level.var_50527ffe && isdefined(self.var_5e36fd2e) && isdefined(var_3a212fd7) && isdefined(var_3a212fd7.var_5e36fd2e) && self.var_5e36fd2e == var_3a212fd7.var_5e36fd2e)
		{
			return;
		}
		else if(!level.var_de12b72f && isdefined(self.var_170527fb) && self.var_170527fb == "rcbomb")
		{
		}
		else if(isdefined(self.var_5e36fd2e) && isdefined(var_3a212fd7) && self.var_5e36fd2e == var_3a212fd7)
		{
			return;
		}
		if(var_f9a179ed < 1)
		{
			var_f9a179ed = 1;
		}
		if(function_5dbf7eca(var_ba36487d, "MOD_GRENADE") && isdefined(var_51e6a548) && isdefined(var_51e6a548.var_9cb131c2))
		{
			self.var_38c4a787 = GetTime();
		}
		else
		{
			self.var_38c4a787 = undefined;
		}
		var_669a2894 = undefined;
		if(isdefined(var_3a212fd7))
		{
			var_669a2894 = self function_6f256229(var_3a212fd7);
		}
		self.var_f5649d63 = isdefined(var_3a212fd7) && !isdefined(var_669a2894);
		self namespace_b976075a::function_85b1d74(var_3a212fd7, var_51e6a548, var_f9a179ed, var_ba36487d, var_dfcc01fd);
		self function_f41bce9b(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, 0);
		if(level.var_76c6e677 == "hack" && !var_dfcc01fd.var_83023915)
		{
			var_f9a179ed = 0;
		}
		if(isdefined(var_3a212fd7) && var_3a212fd7 != self)
		{
			if(namespace_fc79db9f::function_a2f24e04(var_dfcc01fd, var_51e6a548))
			{
				if(var_f9a179ed > 0)
				{
					var_3a212fd7 thread namespace_fc79db9f::function_debccd1a(var_ba36487d, var_51e6a548);
					if(function_5cfb84bb(self) && function_65f192a6(var_3a212fd7) && isdefined(var_51e6a548) && (var_3a212fd7 === var_51e6a548 || !function_85e4c3b3(var_51e6a548)) && (!isdefined(var_ba36487d) || var_ba36487d != "MOD_MELEE_WEAPON_BUTT"))
					{
						var_3a212fd7.var_14e7569b++;
					}
				}
			}
		}
	}
	/#
		if(function_4bd0142f("Dev Block strings are not supported"))
		{
			function_895b00("Dev Block strings are not supported" + self function_c7f3ce11() + "Dev Block strings are not supported" + self.var_3a90f16b + "Dev Block strings are not supported" + var_3a212fd7.var_9ee32e67 + "Dev Block strings are not supported" + function_65f192a6(var_51e6a548) + "Dev Block strings are not supported" + var_f9a179ed + "Dev Block strings are not supported" + var_a77ad8eb);
		}
	#/
	if(1)
	{
		var_dc172949 = self function_c7f3ce11();
		var_a78c1b64 = "";
		var_7be9724b = "";
		if(function_65f192a6(var_3a212fd7))
		{
			var_e2304bd3 = var_3a212fd7 function_c7f3ce11();
			var_98af58b2 = var_3a212fd7 function_72a499c8();
			var_62c01908 = var_3a212fd7.var_4be20d44;
			var_7be9724b = var_3a212fd7.var_44fb8955["team"];
			self thread namespace_f74b04eb::function_f7118174(var_3a212fd7, var_3a212fd7, var_f9a179ed, var_dfcc01fd, var_a77ad8eb);
		}
		else
		{
			var_e2304bd3 = -1;
			var_98af58b2 = "";
			var_62c01908 = "";
			var_7be9724b = "world";
		}
		function_14eb892("VD;" + var_dc172949 + ";" + var_a78c1b64 + ";" + var_98af58b2 + ";" + var_e2304bd3 + ";" + var_7be9724b + ";" + var_62c01908 + ";" + var_dfcc01fd.var_4be20d44 + ";" + var_f9a179ed + ";" + var_ba36487d + ";" + var_a77ad8eb + "
");
	}
}

/*
	Name: function_d28f6408
	Namespace: namespace_deaef99f
	Checksum: 0xA11B5469
	Offset: 0x1720
	Size: 0x4A3
	Parameters: 13
	Flags: None
*/
function function_d28f6408(var_51e6a548, var_3a212fd7, var_f9a179ed, var_abf19a10, var_bcc602a1, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_1117d44b, var_7e49756a, var_84b737e9, var_a5cf2304)
{
	var_f9a179ed = namespace_a249d1db::function_4c74de55(self, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_51e6a548);
	var_abf19a10 = namespace_a249d1db::function_4c74de55(self, var_3a212fd7, var_abf19a10, var_ba36487d, var_dfcc01fd, var_51e6a548);
	var_bcc602a1 = namespace_a249d1db::function_4c74de55(self, var_3a212fd7, var_bcc602a1, var_ba36487d, var_dfcc01fd, var_51e6a548);
	self.var_bf827987 = var_bf827987;
	self.var_1ec50a94 = GetTime();
	if(game["state"] == "postgame")
	{
		return;
	}
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7) && isdefined(var_3a212fd7.var_f80930e6) && !var_3a212fd7.var_f80930e6)
	{
		return;
	}
	var_3e820b54 = 0;
	if(!var_bf827987 & 2048)
	{
		if(self function_6bce5b2c(var_bf827987, var_ba36487d, var_dfcc01fd))
		{
			return;
		}
		if(var_ba36487d == "MOD_PROJECTILE_SPLASH" || var_ba36487d == "MOD_GRENADE_SPLASH" || var_ba36487d == "MOD_EXPLOSIVE")
		{
			var_1edae8b9 = var_dfcc01fd.var_811b4f80;
			var_f9a179ed = function_b6b79a0(var_f9a179ed * var_1edae8b9);
			var_abf19a10 = var_abf19a10 * var_1edae8b9;
			var_bcc602a1 = var_bcc602a1 * var_1edae8b9;
			if(var_abf19a10 == 0)
			{
				return;
			}
			if(var_f9a179ed < 1)
			{
				var_f9a179ed = 1;
			}
		}
		var_4363f9c0 = self namespace_96fa87af::function_a68971a0();
		if(level.var_de12b72f && isdefined(var_3a212fd7) && var_4363f9c0 == var_3a212fd7.var_3e94206a && var_4363f9c0 != "free")
		{
			if(level.var_98df9150 == 0)
			{
				if(!function_f28c5916(var_51e6a548, var_3a212fd7, var_ba36487d, var_dfcc01fd))
				{
					return;
				}
			}
			else if(level.var_98df9150 == 1)
			{
			}
			else if(level.var_98df9150 == 2)
			{
				if(!function_f28c5916(var_51e6a548, var_3a212fd7, var_ba36487d, var_dfcc01fd))
				{
					return;
				}
			}
			else if(level.var_98df9150 == 3)
			{
				var_f9a179ed = function_b6b79a0(var_f9a179ed * 0.5);
			}
			if(var_f9a179ed < 1)
			{
				var_f9a179ed = 1;
			}
			self.var_f5649d63 = 0;
			self function_c8fba501(var_51e6a548, var_3a212fd7, var_f9a179ed, var_abf19a10, var_bcc602a1, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_1117d44b, var_7e49756a, var_84b737e9, var_a5cf2304);
		}
		else if(!level.var_50527ffe && isdefined(self.var_5e36fd2e) && isdefined(var_3a212fd7.var_5e36fd2e) && self.var_5e36fd2e == var_3a212fd7.var_5e36fd2e)
		{
			return;
		}
		else if(var_f9a179ed < 1)
		{
			var_f9a179ed = 1;
		}
		self function_c8fba501(var_51e6a548, var_3a212fd7, var_f9a179ed, var_abf19a10, var_bcc602a1, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_1117d44b, var_7e49756a, var_84b737e9, var_a5cf2304);
	}
}

/*
	Name: function_ba80775a
	Namespace: namespace_deaef99f
	Checksum: 0xAD045EF
	Offset: 0x1BD0
	Size: 0x47B
	Parameters: 8
	Flags: None
*/
function function_ba80775a(var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304)
{
	var_a8563e07 = function_a8fb77bd();
	var_a8563e07.var_51e6a548 = var_51e6a548;
	var_a8563e07.var_3a212fd7 = var_3a212fd7;
	var_a8563e07.var_f9a179ed = var_f9a179ed;
	var_a8563e07.var_ba36487d = var_ba36487d;
	var_a8563e07.var_dfcc01fd = var_dfcc01fd;
	var_a8563e07.var_e8bb43ee = var_e8bb43ee;
	var_a8563e07.var_a77ad8eb = var_a77ad8eb;
	var_a8563e07.var_a5cf2304 = var_a5cf2304;
	if(game["state"] == "postgame")
	{
		return;
	}
	var_3a212fd7 = namespace_b976075a::function_15231ac6(var_3a212fd7);
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7))
	{
		namespace_e32b5089::function_7bf7d322(var_3a212fd7.var_3e94206a);
		var_3a212fd7 thread namespace_e32b5089::function_f4f11e83(var_ba36487d, var_dfcc01fd, self);
	}
	if(function_e70ab977(var_3a212fd7) && isdefined(var_3a212fd7.var_c294c7fc))
	{
		if(var_3a212fd7.var_c294c7fc.var_3e94206a != self.var_3e94206a)
		{
			var_3a212fd7 = var_3a212fd7.var_c294c7fc;
		}
	}
	if(isdefined(var_3a212fd7) && isdefined(var_3a212fd7.var_42ba2b3a))
	{
		var_3a212fd7 [[var_3a212fd7.var_42ba2b3a]](self);
	}
	if(isdefined(var_51e6a548))
	{
		self.var_4e833bc8 = var_51e6a548;
	}
	if(function_5cfb84bb(self))
	{
		self namespace_dabbe128::function_dabbe128("hash_fc2ec5ff", var_a8563e07);
	}
	self namespace_dabbe128::function_dabbe128("hash_acb66515", var_a8563e07);
	if(isdefined(self.var_5fbda1b0))
	{
		self [[self.var_5fbda1b0]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304);
	}
	var_5dc5e20a = var_3a212fd7;
	if(var_3a212fd7.var_e6e9b8de == "script_vehicle" && isdefined(var_3a212fd7.var_5e36fd2e))
	{
		var_5dc5e20a = var_3a212fd7.var_5e36fd2e;
	}
	if(isdefined(var_5dc5e20a) && function_65f192a6(var_5dc5e20a) && (!isdefined(self.var_38188e74) && self.var_38188e74))
	{
		if(!level.var_de12b72f || self.var_3e94206a != var_5dc5e20a.var_44fb8955["team"])
		{
			if(var_ba36487d == "MOD_MELEE" || var_ba36487d == "MOD_MELEE_ASSASSINATE")
			{
				namespace_a1cb6b52::function_ea11cfd6("melee_kill" + self.var_fe10e861, var_5dc5e20a, self, var_dfcc01fd);
			}
			else
			{
				namespace_a1cb6b52::function_ea11cfd6("kill" + self.var_fe10e861, var_5dc5e20a, self, var_dfcc01fd);
			}
			self thread namespace_f74b04eb::function_c4014ee0(var_51e6a548, var_5dc5e20a, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_a77ad8eb);
			self function_bbcfaeb2(var_51e6a548, var_3a212fd7, var_dfcc01fd, var_3a212fd7.var_3e94206a);
		}
	}
}

/*
	Name: function_4d18350c
	Namespace: namespace_deaef99f
	Checksum: 0xF0523CD7
	Offset: 0x2058
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_4d18350c()
{
	self endon("hash_643a7daf");
	if(isdefined(level.var_c1aa5253) && isdefined(level.var_c1aa5253["tanksquish"]))
	{
		function_fd4ba5e1(level.var_c1aa5253["tanksquish"], self.var_722885f3 + VectorScale((0, 0, 1), 30));
	}
	self function_921a1574("chr_crunch");
}

/*
	Name: function_d389b572
	Namespace: namespace_deaef99f
	Checksum: 0xA247001F
	Offset: 0x20F0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_d389b572(var_dfcc01fd)
{
	if(var_dfcc01fd.var_4be20d44 == "satchel_charge")
	{
		var_5c21ad3d = 10;
		var_5c21ad3d = var_5c21ad3d * 3;
	}
	else
	{
		var_5c21ad3d = 1;
	}
	return var_5c21ad3d;
}

/*
	Name: function_f28c5916
	Namespace: namespace_deaef99f
	Checksum: 0x10F08E10
	Offset: 0x2160
	Size: 0x6D
	Parameters: 4
	Flags: None
*/
function function_f28c5916(var_51e6a548, var_3a212fd7, var_ba36487d, var_dfcc01fd)
{
	if(isdefined(self.var_ffe1e6db) && self.var_ffe1e6db)
	{
		return 1;
	}
	if(isdefined(self.var_b883a79e))
	{
		return [[self.var_b883a79e]](var_51e6a548, var_3a212fd7, var_ba36487d, var_dfcc01fd);
	}
	return 0;
}

/*
	Name: function_bbcfaeb2
	Namespace: namespace_deaef99f
	Checksum: 0x850DE047
	Offset: 0x21D8
	Size: 0x163
	Parameters: 4
	Flags: None
*/
function function_bbcfaeb2(var_51e6a548, var_3a212fd7, var_dfcc01fd, var_86d8c0ce)
{
	function_c22bfa61("VehicleKilled assists");
	if(isdefined(self.var_f5c59027))
	{
		for(var_a3557c4d = 0; var_a3557c4d < self.var_f5c59027.size; var_a3557c4d++)
		{
			var_5dc5e20a = self.var_f5c59027[var_a3557c4d];
			if(!isdefined(var_5dc5e20a))
			{
				continue;
			}
			if(var_5dc5e20a == var_3a212fd7)
			{
				continue;
			}
			if(var_5dc5e20a.var_3e94206a != var_86d8c0ce)
			{
				continue;
			}
			var_cb26f92d = self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_f9348fda;
			var_5dc5e20a thread namespace_e32b5089::function_43256951(self, var_cb26f92d, self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_dfcc01fd, "assist" + self.var_fe10e861);
		}
	}
	function_7905cb51();
}


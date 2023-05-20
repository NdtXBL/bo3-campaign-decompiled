#using scripts\codescripts\struct;
#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_friendlyfire;
#using scripts\cp\_scoreevents;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_weapons;
#using scripts\shared\_burnplayer;
#using scripts\shared\ai\systems\destructible_character;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai\systems\shared;
#using scripts\shared\ammo_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\weapons\_weapon_utils;
#using scripts\shared\weapons_shared;

#namespace namespace_c0611484;

/*
	Name: function_57d44fe8
	Namespace: namespace_c0611484
	Checksum: 0x438FFA1B
	Offset: 0x4C0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_57d44fe8(var_2f06d687)
{
	self thread namespace_2f06d687::function_f5d3130b(var_2f06d687);
	self namespace_b976075a::function_2b8bc4cb();
	namespace_d8129fdd::function_a96d8fec(self, var_2f06d687);
}

/*
	Name: function_58830695
	Namespace: namespace_c0611484
	Checksum: 0xD82BB613
	Offset: 0x520
	Size: 0xB23
	Parameters: 15
	Flags: None
*/
function function_58830695(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_ae725cb8, var_97570bbe, var_6a4d3b3b)
{
	self endon("hash_128f8789");
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
	self.var_bf827987 = var_bf827987;
	self.var_1ec50a94 = GetTime();
	var_3a212fd7 = namespace_b976075a::function_15231ac6(var_3a212fd7);
	if(self.var_3a90f16b == self.var_47c252e3 || !isdefined(self.var_f5c59027))
	{
		self.var_f5c59027 = [];
		self.var_f9d53f6c = [];
		self.var_ca1ab1e7 = [];
	}
	if(isdefined(level.var_b8f294e8) && !level.var_b8f294e8)
	{
		if(isdefined(level.var_8300d543))
		{
			if(function_65f192a6(var_3a212fd7) && self.var_3e94206a == var_3a212fd7.var_3e94206a)
			{
				var_f9a179ed = function_b6b79a0(var_f9a179ed * level.var_8300d543);
				if(var_f9a179ed < 1)
				{
					var_f9a179ed = 1;
				}
			}
		}
	}
	if(isdefined(self.var_44a68a57))
	{
		var_f9a179ed = self [[self.var_44a68a57]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_faf17161, var_ae725cb8);
	}
	else if(isdefined(level.var_44a68a57))
	{
		var_f9a179ed = self [[level.var_44a68a57]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_faf17161, var_ae725cb8);
	}
	if(isdefined(level.var_175490fb) && isdefined(isdefined(level.var_175490fb.var_44a68a57)))
	{
		var_f9a179ed = self [[level.var_175490fb.var_44a68a57]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_faf17161, var_ae725cb8);
	}
	if(isdefined(self.var_f25f0dcc))
	{
		for(var_5e76f0af = 0; var_5e76f0af < self.var_f25f0dcc.size; var_5e76f0af++)
		{
			var_1584f753 = self.var_f25f0dcc[var_5e76f0af];
			var_f9a179ed = self [[var_1584f753]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_faf17161, var_ae725cb8);
		}
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_f9a179ed), "Dev Block strings are not supported");
	#/
	if(!isdefined(var_e8bb43ee))
	{
		var_bf827987 = var_bf827987 | 4;
	}
	if(isdefined(var_3a212fd7))
	{
		if(function_65f192a6(var_3a212fd7))
		{
			level thread namespace_98df9150::function_36510feb(self, var_f9a179ed, var_3a212fd7, var_ba36487d);
			if(isdefined(self.var_769ad13b))
			{
				self thread [[self.var_769ad13b]]();
			}
			self thread namespace_f74b04eb::function_40b8d4a1(var_3a212fd7, var_3a212fd7, var_f9a179ed, var_dfcc01fd, var_a77ad8eb);
			if(isdefined(var_51e6a548) && (var_3a212fd7 === var_51e6a548 || !function_85e4c3b3(var_51e6a548)) && (!isdefined(var_ba36487d) || var_ba36487d != "MOD_MELEE_WEAPON_BUTT"))
			{
				var_3a212fd7.var_14e7569b++;
			}
		}
		else if(function_e70ab977(var_3a212fd7))
		{
			if(self.var_3e94206a == var_3a212fd7.var_3e94206a && var_ba36487d == "MOD_MELEE")
			{
				return;
			}
		}
	}
	self namespace_dabbe128::function_dabbe128("hash_eb4a4369", var_a8563e07);
	self namespace_dabbe128::function_dabbe128("hash_7b543e98", var_a8563e07);
	var_e0ef8a87 = 0;
	self thread namespace_b976075a::function_127ea28(var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd);
	if(self.var_3a90f16b > 0 && self.var_3a90f16b - var_f9a179ed <= 0)
	{
		if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7.var_ec01147f))
		{
			var_3a212fd7 = var_3a212fd7.var_ec01147f;
		}
		if(function_65f192a6(var_3a212fd7))
		{
			/#
				function_895b00("Dev Block strings are not supported" + var_dfcc01fd.var_4be20d44 + "Dev Block strings are not supported" + var_ba36487d);
			#/
			if(self.var_3e94206a != var_3a212fd7.var_3e94206a)
			{
				if(var_ba36487d == "MOD_MELEE")
				{
					var_3a212fd7 notify("hash_20ef86ca");
				}
			}
		}
		var_e0ef8a87 = 1;
	}
	if(namespace_30fc7b57::function_4cf0410d(var_dfcc01fd, var_ba36487d))
	{
		if(isdefined(self.var_fe311e35))
		{
			if(var_dfcc01fd.var_5fc2fc71 && self.var_fe311e35 == "human")
			{
				self.var_b3b49b95 = self.var_1ec50a94;
			}
			else if(var_dfcc01fd.var_fb58cd4d && self.var_fe311e35 == "human")
			{
				self.var_63fb6c7d = self.var_1ec50a94;
			}
		}
		self.var_e2e6a75d = var_3a212fd7;
		self.var_d964b64d = self.var_1ec50a94;
	}
	if(var_dfcc01fd.var_83023915 && isdefined(self.var_fe311e35) && self.var_fe311e35 == "robot")
	{
		if(var_dfcc01fd.var_4be20d44 == "emp_grenade")
		{
			self.var_4d6fef21 = self.var_1ec50a94;
		}
		else if(var_dfcc01fd.var_4be20d44 == "ravage_core_emp_grenade" || var_dfcc01fd.var_4be20d44 == "ravage_core_emp_grenade_upg")
		{
			self.var_7097b5af = self.var_1ec50a94;
		}
	}
	if(!var_bf827987 & 2048)
	{
		if(level.var_de12b72f && isdefined(var_3a212fd7) && var_3a212fd7 != self && self.var_3e94206a == var_3a212fd7.var_3e94206a && !function_65f192a6(var_3a212fd7))
		{
			if(level.var_98df9150 == 0)
			{
				return;
			}
			else if(level.var_98df9150 == 1)
			{
				if(var_f9a179ed < 1)
				{
					var_f9a179ed = 1;
				}
				self.var_f5649d63 = 0;
			}
			else if(level.var_98df9150 == 2)
			{
				return;
			}
			else if(level.var_98df9150 == 3)
			{
				var_f9a179ed = function_b6b79a0(var_f9a179ed * 0.5);
				if(var_f9a179ed < 1)
				{
					var_f9a179ed = 1;
				}
				self.var_f5649d63 = 0;
			}
		}
		if(isdefined(var_3a212fd7) && var_3a212fd7 != self)
		{
			if(!isdefined(var_51e6a548) || !function_e70ab977(var_51e6a548) || (function_85e4c3b3(var_51e6a548) && var_51e6a548 function_b4980289(0) === var_3a212fd7))
			{
				if(var_f9a179ed > 0 && self.var_3e94206a != var_3a212fd7.var_3e94206a && self.var_3e94206a != "neutral" && var_a77ad8eb !== "riotshield")
				{
					var_3a212fd7 thread namespace_fc79db9f::function_debccd1a(var_ba36487d, var_51e6a548, undefined, var_dfcc01fd);
				}
			}
		}
	}
	namespace_d8129fdd::function_2aa586aa(var_3a212fd7, self, var_dfcc01fd, var_f9a179ed, var_ba36487d, var_a77ad8eb, var_e0ef8a87, var_e0ef8a87);
	self namespace_b976075a::function_85b1d74(var_3a212fd7, var_51e6a548, var_f9a179ed, var_ba36487d, var_dfcc01fd);
	self function_2c68393c(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_97570bbe, var_6a4d3b3b);
}

/*
	Name: function_d8b85c1d
	Namespace: namespace_c0611484
	Checksum: 0x6E40B69D
	Offset: 0x1050
	Size: 0x5DB
	Parameters: 8
	Flags: None
*/
function function_d8b85c1d(var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304)
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
	if(namespace_c46f5728::function_7874f1ab(var_dfcc01fd, var_a77ad8eb, var_ba36487d, var_51e6a548))
	{
		var_ba36487d = "MOD_HEAD_SHOT";
	}
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7))
	{
		var_3a212fd7 notify("hash_c56ba9f7", self, var_ba36487d, var_dfcc01fd);
		namespace_e32b5089::function_7bf7d322(var_3a212fd7.var_3e94206a);
		var_3a212fd7 thread namespace_e32b5089::function_f4f11e83(var_ba36487d, var_dfcc01fd, self);
		if(var_ba36487d == "MOD_MELEE" || var_ba36487d == "MOD_MELEE_ASSASSINATE" || var_ba36487d == "MOD_MELEE_WEAPON_BUTT")
		{
			var_3a212fd7.var_247e0696++;
		}
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
	self namespace_dabbe128::function_dabbe128("hash_fc2ec5ff", var_a8563e07);
	self namespace_dabbe128::function_dabbe128("hash_8c38c12e", var_a8563e07);
	if(isdefined(self.var_ec5ec80c))
	{
		for(var_5e76f0af = 0; var_5e76f0af < self.var_ec5ec80c.size; var_5e76f0af++)
		{
			var_43da4f33 = self.var_ec5ec80c[var_5e76f0af];
			self [[var_43da4f33]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304);
		}
	}
	else if(function_65f192a6(var_3a212fd7) && (isdefined(level.var_b36f7a2e) && level.var_b36f7a2e && self.var_3e94206a == "allies" || (isdefined(level.var_173c585e) && level.var_173c585e && self.var_3e94206a == "team3") || self.var_3e94206a == "axis"))
	{
		self thread namespace_ba1472cf::function_b6076fae();
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
			self thread namespace_f74b04eb::function_e0ef8a87(var_51e6a548, var_5dc5e20a, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_a77ad8eb);
			self function_64fed33(var_51e6a548, var_5dc5e20a, var_dfcc01fd, var_5dc5e20a.var_3e94206a);
		}
	}
}

/*
	Name: function_fba682d3
	Namespace: namespace_c0611484
	Checksum: 0x3000D06E
	Offset: 0x1638
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_fba682d3(var_e618e48c)
{
	namespace_1db74d15::function_142d7ceb(var_e618e48c, self);
	namespace_97d6aab7::function_33125cf3(var_e618e48c, self);
}

/*
	Name: function_64fed33
	Namespace: namespace_c0611484
	Checksum: 0xAFC071F5
	Offset: 0x1680
	Size: 0x163
	Parameters: 4
	Flags: None
*/
function function_64fed33(var_51e6a548, var_3a212fd7, var_dfcc01fd, var_86d8c0ce)
{
	function_c22bfa61("ActorKilled assists");
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


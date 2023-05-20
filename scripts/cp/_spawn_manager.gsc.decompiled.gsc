#using scripts\cp\_spawn_manager_debug;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\name_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_d5067552;

/*
	Name: function_2dc19561
	Namespace: namespace_d5067552
	Checksum: 0x27FC78A0
	Offset: 0x298
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("spawn_manager", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_d5067552
	Checksum: 0xA1862027
	Offset: 0x2D8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_9eb6e779 = 0;
	level.var_b5b6bce6 = 50;
	level.var_ad131964 = 0;
	level.var_44883b1c = 0;
	level.var_a59f295d = [];
	level.var_a59f295d = function_99201f25("spawn_manager", "classname");
	namespace_84970cc4::function_966ecb29(level.var_a59f295d, &function_4f3c7857);
	function_a307afed();
	/#
		namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
		level thread function_573de556();
	#/
}

/*
	Name: function_8180b524
	Namespace: namespace_d5067552
	Checksum: 0x5B25470F
	Offset: 0x3C8
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_8180b524()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_b07228b6));
	#/
	/#
		namespace_33b293fd::function_a7ee953(self.var_20149b34 >= self.var_4d210f7a, "Dev Block strings are not supported" + self.var_b77fa9b3);
	#/
	if(!isdefined(self.var_8f471bf9) || self.var_8f471bf9 > self.var_d8202611.size)
	{
		self.var_8f471bf9 = self.var_d8202611.size;
	}
	if(!isdefined(self.var_ec676387) || self.var_ec676387 > self.var_d8202611.size)
	{
		self.var_ec676387 = self.var_d8202611.size;
	}
	/#
		namespace_33b293fd::function_a7ee953(self.var_ec676387 >= self.var_8f471bf9, "Dev Block strings are not supported" + self.var_b77fa9b3);
	#/
	self.var_bc2f37e4 = function_dc99997a(self.var_8f471bf9, self.var_ec676387 + 1);
	self.var_14edd77e = self function_826b96e5();
	function_b72dc5ae();
	/#
		namespace_33b293fd::function_a7ee953(self.var_4d210f7a <= self.var_e290d32d, "Dev Block strings are not supported");
	#/
	if(!isdefined(self.var_103a9781))
	{
		self.var_103a9781 = 0;
	}
}

/*
	Name: function_2ce178dd
	Namespace: namespace_d5067552
	Checksum: 0xBEAF2174
	Offset: 0x598
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_2ce178dd(var_43f783bc)
{
	if(self.var_74952a22 >= 0)
	{
	}
	else
	{
	}
	var_8948554f = level.var_b5b6bce6;
	var_3b349fcd = self.var_e290d32d - self.var_e5c2eec1.size;
	var_7f9a0c9b = var_3b349fcd >= var_43f783bc && var_8948554f >= var_43f783bc && var_43f783bc > 0;
	var_e636b61e = level.var_b5b6bce6 - level.var_ad131964;
	/#
		namespace_33b293fd::function_a7ee953(self.var_bae40a28 == level namespace_ad23e503::function_7922262b("Dev Block strings are not supported" + self.var_b77fa9b3 + "Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	if(self.var_103a9781 == 0)
	{
		return var_8948554f > 0 && var_3b349fcd > 0 && var_e636b61e > 0 && var_7f9a0c9b && self.var_bae40a28;
	}
	else
	{
		return var_8948554f > 0 && var_3b349fcd > 0 && self.var_bae40a28;
	}
}

/*
	Name: function_2db909fa
	Namespace: namespace_d5067552
	Checksum: 0xBB9533CA
	Offset: 0x708
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_2db909fa(var_80134c02)
{
	self endon("hash_128f8789");
	var_34fb19f = GetTime();
	while(1)
	{
		var_d84e54db = self namespace_2f06d687::function_9b7fda5e();
		if(isdefined(var_d84e54db) || GetTime() - var_34fb19f > 1000 * var_80134c02)
		{
			return var_d84e54db;
		}
		wait(0.5);
	}
}

/*
	Name: function_668c4ede
	Namespace: namespace_d5067552
	Checksum: 0x618CC10
	Offset: 0x798
	Size: 0x135
	Parameters: 2
	Flags: None
*/
function function_668c4ede(var_2f06d687, var_43f783bc)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_43f783bc; var_c957f6b6++)
	{
		var_d84e54db = undefined;
		if(isdefined(var_2f06d687) && isdefined(var_2f06d687.var_170527fb))
		{
			var_d84e54db = var_2f06d687 function_2db909fa(2);
			if(isdefined(var_d84e54db))
			{
				var_d84e54db.var_b77fa9b3 = self.var_b77fa9b3;
			}
		}
		else
		{
			continue;
		}
		if(!namespace_2f06d687::function_65251cee(var_d84e54db))
		{
			if(isdefined(self.var_2b941e09))
			{
				var_d84e54db.var_2b941e09 = self.var_2b941e09;
			}
			if(isdefined(var_2f06d687.var_2b941e09))
			{
				var_d84e54db.var_2b941e09 = var_2f06d687.var_2b941e09;
			}
			var_d84e54db thread function_efd8772(var_2f06d687, self);
		}
	}
}

/*
	Name: function_efd8772
	Namespace: namespace_d5067552
	Checksum: 0xF4AAB3FB
	Offset: 0x8D8
	Size: 0x15B
	Parameters: 2
	Flags: None
*/
function function_efd8772(var_2f06d687, var_bd97aa12)
{
	var_170527fb = var_bd97aa12.var_170527fb;
	var_e6e9b8de = var_2f06d687.var_e6e9b8de;
	level.var_9eb6e779++;
	var_bd97aa12.var_74ff82f3++;
	if(var_bd97aa12.var_74952a22 > 0)
	{
		var_bd97aa12.var_74952a22--;
	}
	level.var_ad131964++;
	var_722885f3 = var_2f06d687.var_722885f3;
	var_bd97aa12.var_e5c2eec1[var_bd97aa12.var_e5c2eec1.size] = self;
	var_2f06d687.var_e5c2eec1[var_2f06d687.var_e5c2eec1.size] = self;
	self waittill("hash_128f8789");
	if(isdefined(var_2f06d687))
	{
		function_81403b2f(var_2f06d687.var_e5c2eec1, self);
	}
	if(isdefined(var_bd97aa12))
	{
		function_81403b2f(var_bd97aa12.var_e5c2eec1, self);
	}
	level.var_ad131964--;
}

/*
	Name: function_b088c390
	Namespace: namespace_d5067552
	Checksum: 0xB2E51FDD
	Offset: 0xA40
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_b088c390()
{
	if(isdefined(self.var_4be20d44))
	{
		/#
			function_a89a3a33(self.var_4be20d44);
		#/
		self.var_b77fa9b3 = self.var_4be20d44;
	}
	else if(isdefined(self.var_170527fb) && !function_39c15145(self.var_170527fb, "pf"))
	{
		/#
			function_a89a3a33(self.var_170527fb);
		#/
		self.var_b77fa9b3 = self.var_170527fb;
	}
	else
	{
		function_24cc6574();
	}
	if(!isdefined(self.var_bd948b2a))
	{
		self.var_bd948b2a = self.var_74952a22;
	}
	if(!isdefined(self.var_4cb76884))
	{
		if(isdefined(self.var_5fa59123))
		{
		}
		else
		{
		}
		self.var_4cb76884 = level.var_b5b6bce6;
	}
	if(!isdefined(self.var_6f1e6d96))
	{
		if(isdefined(self.var_e290d32d))
		{
		}
		else
		{
		}
		self.var_6f1e6d96 = level.var_b5b6bce6;
	}
	if(!isdefined(self.var_5e6995dd))
	{
		if(isdefined(self.var_4d210f7a))
		{
		}
		else
		{
		}
		self.var_5e6995dd = 1;
	}
	if(!isdefined(self.var_5b01a5b7))
	{
		if(isdefined(self.var_20149b34))
		{
		}
		else
		{
		}
		self.var_5b01a5b7 = 1;
	}
}

/*
	Name: function_a89a3a33
	Namespace: namespace_d5067552
	Checksum: 0x617D5545
	Offset: 0xBE0
	Size: 0x139
	Parameters: 1
	Flags: None
*/
function function_a89a3a33(var_cbb15570)
{
	/#
		var_2b309d3d = function_99201f25("Dev Block strings are not supported", "Dev Block strings are not supported");
		foreach(var_1109dfe1 in var_2b309d3d)
		{
			if(var_1109dfe1 != self)
			{
				if(var_1109dfe1.var_170527fb === var_cbb15570 || var_1109dfe1.var_4be20d44 === var_cbb15570)
				{
					/#
						namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_cbb15570 + "Dev Block strings are not supported" + self.var_722885f3 + "Dev Block strings are not supported" + var_1109dfe1.var_722885f3);
					#/
				}
			}
		}
	#/
}

/*
	Name: function_24cc6574
	Namespace: namespace_d5067552
	Checksum: 0x36173650
	Offset: 0xD28
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_24cc6574()
{
	if(!isdefined(level.var_6ff5e673))
	{
		level.var_6ff5e673 = 0;
	}
	self.var_b77fa9b3 = "sm_auto" + level.var_6ff5e673;
	level.var_6ff5e673++;
}

/*
	Name: function_c791ea22
	Namespace: namespace_d5067552
	Checksum: 0x4F2B672
	Offset: 0xD70
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_c791ea22()
{
	if(level.var_2395e945.size >= 4 && isdefined(self.var_afecb75f))
	{
		var_3e671a1 = self.var_afecb75f;
	}
	else if(level.var_2395e945.size >= 3 && isdefined(self.var_99d7d770))
	{
		var_3e671a1 = self.var_99d7d770;
	}
	else if(level.var_2395e945.size >= 2 && isdefined(self.var_722be5e1))
	{
		var_3e671a1 = self.var_722be5e1;
	}
	else
	{
		var_3e671a1 = self.var_bd948b2a;
	}
	if(var_3e671a1 > 0)
	{
		self.var_74952a22 = var_3e671a1;
	}
	else
	{
		self.var_74952a22 = -1;
	}
}

/*
	Name: function_f6bee20a
	Namespace: namespace_d5067552
	Checksum: 0x91F6D51C
	Offset: 0xE48
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_f6bee20a()
{
	if(level.var_2395e945.size >= 4 && isdefined(self.var_7806fba9))
	{
		self.var_5fa59123 = self.var_7806fba9;
	}
	else if(level.var_2395e945.size >= 3 && isdefined(self.var_c856abde))
	{
		self.var_5fa59123 = self.var_c856abde;
	}
	else if(level.var_2395e945.size >= 2 && isdefined(self.var_7356d647))
	{
		self.var_5fa59123 = self.var_7356d647;
	}
	else
	{
		self.var_5fa59123 = self.var_4cb76884;
	}
}

/*
	Name: function_497c788
	Namespace: namespace_d5067552
	Checksum: 0x6462833A
	Offset: 0xF00
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_497c788()
{
	if(level.var_2395e945.size >= 4 && isdefined(self.var_5132a283))
	{
		self.var_e290d32d = self.var_5132a283;
	}
	else if(level.var_2395e945.size >= 3 && isdefined(self.var_1ca2b3fc))
	{
		self.var_e290d32d = self.var_1ca2b3fc;
	}
	else if(level.var_2395e945.size >= 2 && isdefined(self.var_5d148eed))
	{
		self.var_e290d32d = self.var_5d148eed;
	}
	else
	{
		self.var_e290d32d = self.var_6f1e6d96;
	}
}

/*
	Name: function_12d13f75
	Namespace: namespace_d5067552
	Checksum: 0x945F929C
	Offset: 0xFB8
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_12d13f75()
{
	if(level.var_2395e945.size >= 4 && isdefined(self.var_ae6f65e0))
	{
		self.var_4d210f7a = self.var_ae6f65e0;
	}
	else if(level.var_2395e945.size >= 3 && isdefined(self.var_a56a2c0f))
	{
		self.var_4d210f7a = self.var_a56a2c0f;
	}
	else if(level.var_2395e945.size >= 2 && isdefined(self.var_5404b486))
	{
		self.var_4d210f7a = self.var_5404b486;
	}
	else
	{
		self.var_4d210f7a = self.var_5e6995dd;
	}
}

/*
	Name: function_b4162883
	Namespace: namespace_d5067552
	Checksum: 0x91B5F4FA
	Offset: 0x1070
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_b4162883()
{
	if(level.var_2395e945.size >= 4 && isdefined(self.var_c78c1f22))
	{
		self.var_20149b34 = self.var_c78c1f22;
	}
	else if(level.var_2395e945.size >= 3 && isdefined(self.var_5b917145))
	{
		self.var_20149b34 = self.var_5b917145;
	}
	else if(level.var_2395e945.size >= 2 && isdefined(self.var_73a95774))
	{
		self.var_20149b34 = self.var_73a95774;
	}
	else
	{
		self.var_20149b34 = self.var_5b01a5b7;
	}
}

/*
	Name: function_b72dc5ae
	Namespace: namespace_d5067552
	Checksum: 0xDC1046D0
	Offset: 0x1128
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_b72dc5ae()
{
	function_c791ea22();
	function_f6bee20a();
	function_497c788();
	function_12d13f75();
	function_b4162883();
	foreach(var_f2d5d544 in self.var_14edd77e)
	{
		var_f2d5d544 function_c791ea22();
		var_f2d5d544 function_f6bee20a();
		var_f2d5d544 function_497c788();
	}
}

/*
	Name: function_798a2c2
	Namespace: namespace_d5067552
	Checksum: 0x2D2A4116
	Offset: 0x1240
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_798a2c2()
{
	if(!isdefined(self.var_29534eb8))
	{
		self.var_29534eb8 = 0;
	}
	if(!isdefined(self.var_83f92d46))
	{
		self.var_83f92d46 = 0;
	}
	if(self.var_83f92d46 > 0 && self.var_83f92d46 > self.var_29534eb8)
	{
		wait(function_72a94f05(self.var_29534eb8, self.var_83f92d46));
	}
	else if(self.var_29534eb8 > 0)
	{
		wait(self.var_29534eb8);
	}
}

/*
	Name: function_4f3c7857
	Namespace: namespace_d5067552
	Checksum: 0x75A9EA4A
	Offset: 0x12E0
	Size: 0x7C3
	Parameters: 0
	Flags: None
*/
function function_4f3c7857()
{
	self endon("hash_128f8789");
	self function_b088c390();
	self function_180dd5b8();
	self thread function_59c8d9fd();
	self thread function_1a7d1c94();
	self.var_bae40a28 = 0;
	self.var_e5c2eec1 = [];
	self.var_74ff82f3 = 0;
	var_b4c96fe2 = 1;
	self.var_d8202611 = function_99201f25(self.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(self.var_d8202611.size, "Dev Block strings are not supported" + self.var_b77fa9b3 + "Dev Block strings are not supported");
	#/
	level namespace_ad23e503::function_1ab5ebec("sm_" + self.var_b77fa9b3 + "_enabled");
	namespace_82b91a51::function_eb328a48();
	self function_8180b524();
	var_2032c6ef = 1;
	self function_96547d01();
	while(self.var_74952a22 != 0 && self.var_14edd77e.size > 0)
	{
		function_49adc3a9();
		var_6117cc32 = self.var_e5c2eec1.size;
		var_ad5a25f2 = self.var_e290d32d - var_6117cc32;
		if(!var_2032c6ef && self.var_e5c2eec1.size <= self.var_5fa59123)
		{
			var_2032c6ef = 1;
			function_798a2c2();
		}
		else if(var_2032c6ef && var_ad5a25f2 < self.var_bf8006e3)
		{
			var_2032c6ef = 0;
		}
		if(!var_2032c6ef)
		{
			wait(0.05);
			continue;
		}
		self function_96547d01();
		if(self.var_74952a22 > 0)
		{
			if(self.var_bf8006e3 > self.var_74952a22)
			{
				self.var_bf8006e3 = self.var_74952a22;
			}
		}
		var_ab1f9ea1 = 0;
		while(!var_ab1f9ea1)
		{
			function_49adc3a9();
			if(self.var_14edd77e.size <= 0)
			{
				break;
			}
			if(self function_2ce178dd(self.var_bf8006e3))
			{
				/#
					namespace_33b293fd::function_a7ee953(self.var_bf8006e3 > 0);
				#/
				var_97820103 = [];
				var_34017727 = [];
				for(var_c957f6b6 = 0; var_c957f6b6 < self.var_14edd77e.size; var_c957f6b6++)
				{
					var_aa4319d5 = self.var_14edd77e[var_c957f6b6];
					if(isdefined(var_aa4319d5))
					{
						if(var_aa4319d5.var_e5c2eec1.size > var_aa4319d5.var_5fa59123)
						{
							continue;
						}
						var_70296209 = var_aa4319d5.var_e290d32d - var_aa4319d5.var_e5c2eec1.size;
						if(var_70296209 >= self.var_bf8006e3)
						{
							if(isdefined(var_aa4319d5.var_5f8b9cbf) && var_aa4319d5.var_5f8b9cbf & 32 == 32)
							{
								var_34017727[var_34017727.size] = var_aa4319d5;
								continue;
							}
							var_97820103[var_97820103.size] = var_aa4319d5;
						}
					}
				}
				if(var_97820103.size > 0 || var_34017727.size > 0)
				{
					if(var_34017727.size > 0)
					{
						var_2f06d687 = namespace_84970cc4::function_47d18840(var_34017727);
					}
					else
					{
						var_2f06d687 = namespace_84970cc4::function_47d18840(var_97820103);
					}
					if(!isdefined(var_2f06d687.var_5f8b9cbf) && var_2f06d687.var_5f8b9cbf & 64 == 64 && var_2f06d687.var_74952a22 < self.var_bf8006e3)
					{
						self.var_bf8006e3 = var_2f06d687.var_74952a22;
					}
					if(!var_b4c96fe2)
					{
						function_960bbce6();
					}
					else
					{
						var_b4c96fe2 = 0;
					}
					if(!self.var_bae40a28)
					{
						continue;
					}
					self function_668c4ede(var_2f06d687, self.var_bf8006e3);
					var_ab1f9ea1 = 1;
				}
				else
				{
					var_e5d9a7ad = 0;
					for(var_c957f6b6 = 0; var_c957f6b6 < self.var_14edd77e.size; var_c957f6b6++)
					{
						var_aa4319d5 = self.var_14edd77e[var_c957f6b6];
						if(isdefined(var_aa4319d5))
						{
							if(var_aa4319d5.var_e290d32d > var_e5d9a7ad)
							{
								var_e5d9a7ad = var_aa4319d5.var_e290d32d;
							}
						}
					}
					if(var_e5d9a7ad < self.var_20149b34)
					{
						self.var_20149b34 = var_e5d9a7ad;
						self function_96547d01();
					}
				}
			}
			wait(0.05);
		}
		wait(0.05);
		/#
			namespace_33b293fd::function_a7ee953(!level namespace_ad23e503::function_7922262b("Dev Block strings are not supported" + self.var_b77fa9b3 + "Dev Block strings are not supported"), "Dev Block strings are not supported");
		#/
		/#
			namespace_33b293fd::function_a7ee953(!level namespace_ad23e503::function_7922262b("Dev Block strings are not supported" + self.var_b77fa9b3 + "Dev Block strings are not supported"), "Dev Block strings are not supported");
		#/
		if(!(isdefined(self.var_103a9781) && self.var_103a9781))
		{
			var_fa9ec3b3 = function_aaeec8c5(function_3f10449f().size, 1);
			wait(namespace_564407fb::function_f8b09d72() / var_fa9ec3b3 * 8);
		}
	}
	self function_a192045f();
	if(isdefined(self.var_e5c2eec1) && self.var_e5c2eec1.size != 0)
	{
		namespace_84970cc4::function_1ab5ebec(self.var_e5c2eec1, "death");
	}
	self function_dc8c8404();
}

/*
	Name: function_59c8d9fd
	Namespace: namespace_d5067552
	Checksum: 0x2BAB9B2A
	Offset: 0x1AB0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_59c8d9fd()
{
	while(isdefined(self))
	{
		self waittill("hash_bae40a28");
		self.var_bae40a28 = 1;
		self function_a4c90661();
		self waittill("hash_54bdb053");
		self function_4f80fcc2();
	}
	self function_4f80fcc2();
}

/*
	Name: function_95ee6040
	Namespace: namespace_d5067552
	Checksum: 0x3B531811
	Offset: 0x1B30
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_95ee6040(var_d5067552)
{
	var_d5067552 endon("hash_128f8789");
	var_d5067552 endon("hash_bae40a28");
	self endon("hash_128f8789");
	self waittill("hash_4dbf3ae3");
	var_d5067552 notify("hash_bae40a28");
}

/*
	Name: function_1a7d1c94
	Namespace: namespace_d5067552
	Checksum: 0xC2687FC9
	Offset: 0x1B88
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_1a7d1c94()
{
	self waittill("hash_128f8789");
	var_b77fa9b3 = self.var_b77fa9b3;
	var_da1cc39e = self.var_d8202611;
	var_f3e62b98 = self.var_e5c2eec1;
	level namespace_ad23e503::function_9d134160("sm_" + var_b77fa9b3 + "_enabled");
	level namespace_ad23e503::function_74d6b22f("sm_" + var_b77fa9b3 + "_killed");
	level namespace_ad23e503::function_74d6b22f("sm_" + var_b77fa9b3 + "_complete");
	namespace_84970cc4::function_7e64f710(var_da1cc39e);
	if(var_f3e62b98.size)
	{
		namespace_84970cc4::function_1ab5ebec(var_f3e62b98, "death");
	}
	level namespace_ad23e503::function_74d6b22f("sm_" + var_b77fa9b3 + "_cleared");
	level.var_a59f295d = namespace_84970cc4::function_5c13fae0(level.var_a59f295d);
}

/*
	Name: function_a307afed
	Namespace: namespace_d5067552
	Checksum: 0x1266C6DE
	Offset: 0x1CE0
	Size: 0x197
	Parameters: 1
	Flags: None
*/
function function_a307afed(var_38e11efe)
{
	var_cbf69fd2 = namespace_4dbf3ae3::function_4ac0de5b("trigger_multiple", "trigger_once", "trigger_use", "trigger_radius", "trigger_lookat", "trigger_damage", "trigger_box");
	foreach(var_5948b3df in var_cbf69fd2)
	{
		if(isdefined(var_5948b3df.var_b07228b6))
		{
			var_b3db42a9 = function_1d528fc9(var_5948b3df.var_b07228b6);
			foreach(var_b07228b6 in var_b3db42a9)
			{
				var_5948b3df thread function_95ee6040(var_b07228b6);
			}
		}
	}
}

/*
	Name: function_1d528fc9
	Namespace: namespace_d5067552
	Checksum: 0x12118E47
	Offset: 0x1E80
	Size: 0x11F
	Parameters: 1
	Flags: None
*/
function function_1d528fc9(var_170527fb)
{
	if(isdefined(var_170527fb))
	{
		var_a2ced170 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_a59f295d.size; var_c957f6b6++)
		{
			if(isdefined(level.var_a59f295d[var_c957f6b6]))
			{
				if(level.var_a59f295d[var_c957f6b6].var_170527fb === var_170527fb || level.var_a59f295d[var_c957f6b6].var_4be20d44 === var_170527fb)
				{
					if(!isdefined(var_a2ced170))
					{
						var_a2ced170 = [];
					}
					else if(!function_6e2770d8(var_a2ced170))
					{
						var_a2ced170 = function_84970cc4(var_a2ced170);
					}
					var_a2ced170[var_a2ced170.size] = level.var_a59f295d[var_c957f6b6];
				}
			}
		}
		return var_a2ced170;
	}
	else
	{
		return level.var_a59f295d;
	}
}

/*
	Name: function_826b96e5
	Namespace: namespace_d5067552
	Checksum: 0x751CBD0F
	Offset: 0x1FA8
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function function_826b96e5()
{
	function_81403b2f(self.var_d8202611, undefined);
	var_d010fbb9 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_d8202611.size; var_c957f6b6++)
	{
		if(isdefined(level.var_8abbc4a7) && self.var_d8202611[var_c957f6b6].var_e6e9b8de == "actor_enemy_dog_sp")
		{
			if(!isdefined(var_d010fbb9))
			{
				var_d010fbb9 = [];
			}
			else if(!function_6e2770d8(var_d010fbb9))
			{
				var_d010fbb9 = function_84970cc4(var_d010fbb9);
			}
			var_d010fbb9[var_d010fbb9.size] = self.var_d8202611[var_c957f6b6];
		}
	}
	self.var_d8202611 = namespace_84970cc4::function_d010fbb9(self.var_d8202611, var_d010fbb9);
	var_ac004116 = 0;
	foreach(var_f2d5d544 in self.var_d8202611)
	{
		if(!isdefined(var_f2d5d544.var_bd948b2a))
		{
			var_f2d5d544.var_bd948b2a = var_f2d5d544.var_74952a22;
		}
		if(!isdefined(var_f2d5d544.var_6f1e6d96))
		{
			if(isdefined(var_f2d5d544.var_e290d32d))
			{
			}
			else
			{
			}
			var_f2d5d544.var_6f1e6d96 = level.var_b5b6bce6;
		}
		if(!isdefined(var_f2d5d544.var_4cb76884))
		{
			if(isdefined(var_f2d5d544.var_5fa59123))
			{
			}
			else
			{
			}
			var_f2d5d544.var_4cb76884 = var_f2d5d544.var_6f1e6d96;
		}
		var_f2d5d544.var_e5c2eec1 = [];
	}
	var_86c9545d = function_41f575c3(self.var_d8202611);
	var_1861712f = self.var_bc2f37e4;
	if(var_1861712f > self.var_d8202611.size)
	{
		var_1861712f = self.var_d8202611.size;
	}
	var_14edd77e = [];
	while(var_14edd77e.size < var_1861712f)
	{
		var_2f06d687 = namespace_84970cc4::function_47d18840(var_86c9545d);
		if(!isdefined(var_14edd77e))
		{
			var_14edd77e = [];
		}
		else if(!function_6e2770d8(var_14edd77e))
		{
			var_14edd77e = function_84970cc4(var_14edd77e);
		}
		var_14edd77e[var_14edd77e.size] = var_2f06d687;
		function_81403b2f(var_86c9545d, var_2f06d687);
	}
	return var_14edd77e;
}

/*
	Name: function_96547d01
	Namespace: namespace_d5067552
	Checksum: 0xE70357D4
	Offset: 0x2340
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_96547d01()
{
	if(self.var_4d210f7a < self.var_20149b34)
	{
		self.var_bf8006e3 = function_dc99997a(self.var_4d210f7a, self.var_20149b34 + 1);
	}
	else
	{
		self.var_bf8006e3 = self.var_4d210f7a;
	}
	return self.var_bf8006e3;
}

/*
	Name: function_49adc3a9
	Namespace: namespace_d5067552
	Checksum: 0x77A52018
	Offset: 0x23A8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_49adc3a9()
{
	var_14edd77e = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_14edd77e.size; var_c957f6b6++)
	{
		if(isdefined(self.var_14edd77e[var_c957f6b6]))
		{
			if(self.var_14edd77e[var_c957f6b6].var_74952a22 != 0)
			{
				var_14edd77e[var_14edd77e.size] = self.var_14edd77e[var_c957f6b6];
				continue;
			}
			self.var_14edd77e[var_c957f6b6] function_dc8c8404();
		}
	}
	self.var_14edd77e = var_14edd77e;
}

/*
	Name: function_960bbce6
	Namespace: namespace_d5067552
	Checksum: 0x4EDB3063
	Offset: 0x2478
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_960bbce6()
{
	if(isdefined(self.var_7d402220))
	{
		wait(self.var_7d402220);
		if(isdefined(self.var_49e9bfc4))
		{
			self.var_7d402220 = self.var_7d402220 + self.var_49e9bfc4;
		}
	}
	else if(isdefined(self.var_85057f6d) && isdefined(self.var_bfef2183))
	{
		var_714358d = 1;
		var_2395e945 = function_3f10449f();
		if(var_2395e945.size == 2)
		{
			var_714358d = 0.7;
		}
		else if(var_2395e945.size == 3)
		{
			var_714358d = 0.5;
		}
		else if(var_2395e945.size == 4)
		{
			var_714358d = 0.3;
		}
		var_4cb423cc = self.var_bfef2183 - self.var_85057f6d;
		if(function_69c2f683(var_4cb423cc) > 0)
		{
			wait(function_72a94f05(self.var_85057f6d, self.var_85057f6d + var_4cb423cc * var_714358d));
		}
		else
		{
			wait(self.var_85057f6d);
		}
		if(isdefined(self.var_49e9bfc4))
		{
			self.var_85057f6d = self.var_85057f6d + self.var_49e9bfc4;
			self.var_bfef2183 = self.var_bfef2183 + self.var_49e9bfc4;
		}
	}
}

/*
	Name: function_180dd5b8
	Namespace: namespace_d5067552
	Checksum: 0x47CE8276
	Offset: 0x2618
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_180dd5b8()
{
	level namespace_ad23e503::function_c35e6aab("sm_" + self.var_b77fa9b3 + "_enabled");
	level namespace_ad23e503::function_c35e6aab("sm_" + self.var_b77fa9b3 + "_complete");
	level namespace_ad23e503::function_c35e6aab("sm_" + self.var_b77fa9b3 + "_killed");
	level namespace_ad23e503::function_c35e6aab("sm_" + self.var_b77fa9b3 + "_cleared");
}

/*
	Name: function_a4c90661
	Namespace: namespace_d5067552
	Checksum: 0xD66492A6
	Offset: 0x26E8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_a4c90661()
{
	/#
		namespace_33b293fd::function_a7ee953(!level namespace_ad23e503::function_7922262b("Dev Block strings are not supported" + self.var_b77fa9b3 + "Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	level namespace_ad23e503::function_74d6b22f("sm_" + self.var_b77fa9b3 + "_enabled");
}

/*
	Name: function_4f80fcc2
	Namespace: namespace_d5067552
	Checksum: 0xBCCC0114
	Offset: 0x2770
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_4f80fcc2()
{
	self.var_bae40a28 = 0;
	level namespace_ad23e503::function_9d134160("sm_" + self.var_b77fa9b3 + "_enabled");
}

/*
	Name: function_b2ad4aa9
	Namespace: namespace_d5067552
	Checksum: 0x15DAA95C
	Offset: 0x27B8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_b2ad4aa9()
{
	/#
		namespace_33b293fd::function_a7ee953(!level namespace_ad23e503::function_7922262b("Dev Block strings are not supported" + self.var_b77fa9b3 + "Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	level namespace_ad23e503::function_74d6b22f("sm_" + self.var_b77fa9b3 + "_killed");
}

/*
	Name: function_a192045f
	Namespace: namespace_d5067552
	Checksum: 0xCD78F4A9
	Offset: 0x2840
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_a192045f()
{
	/#
		namespace_33b293fd::function_a7ee953(!level namespace_ad23e503::function_7922262b("Dev Block strings are not supported" + self.var_b77fa9b3 + "Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	level namespace_ad23e503::function_74d6b22f("sm_" + self.var_b77fa9b3 + "_complete");
}

/*
	Name: function_752c456a
	Namespace: namespace_d5067552
	Checksum: 0xA0247FC5
	Offset: 0x28C8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_752c456a()
{
	/#
		namespace_33b293fd::function_a7ee953(!level namespace_ad23e503::function_7922262b("Dev Block strings are not supported" + self.var_b77fa9b3 + "Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	level namespace_ad23e503::function_74d6b22f("sm_" + self.var_b77fa9b3 + "_cleared");
}

/*
	Name: function_41cd3a68
	Namespace: namespace_d5067552
	Checksum: 0x646173E4
	Offset: 0x2950
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_41cd3a68(var_703b8c9a)
{
	/#
		namespace_33b293fd::function_a7ee953(var_703b8c9a <= 32, "Dev Block strings are not supported");
	#/
	level.var_b5b6bce6 = var_703b8c9a;
}

/*
	Name: function_a226cc
	Namespace: namespace_d5067552
	Checksum: 0x53620539
	Offset: 0x2998
	Size: 0x14B
	Parameters: 4
	Flags: None
*/
function function_a226cc(var_12173487, var_2371c377, var_8f641cf, var_6f97d0a3)
{
	if(isdefined(var_6f97d0a3) && var_6f97d0a3)
	{
		var_4dbf3ae3 = function_6ada35ba(var_2371c377, var_8f641cf);
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_4dbf3ae3), "Dev Block strings are not supported" + var_8f641cf + "Dev Block strings are not supported" + var_2371c377 + "Dev Block strings are not supported");
		#/
		var_4dbf3ae3 endon("hash_4dbf3ae3");
	}
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		level namespace_ad23e503::function_1ab5ebec("sm_" + var_12173487 + "_complete");
		namespace_4dbf3ae3::function_42e87952(var_2371c377, var_8f641cf);
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_d1d8e99b
	Namespace: namespace_d5067552
	Checksum: 0x8240C588
	Offset: 0x2AF0
	Size: 0x14B
	Parameters: 4
	Flags: None
*/
function function_d1d8e99b(var_12173487, var_2371c377, var_8f641cf, var_6f97d0a3)
{
	if(isdefined(var_6f97d0a3) && var_6f97d0a3)
	{
		var_4dbf3ae3 = function_6ada35ba(var_2371c377, var_8f641cf);
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_4dbf3ae3), "Dev Block strings are not supported" + var_8f641cf + "Dev Block strings are not supported" + var_2371c377 + "Dev Block strings are not supported");
		#/
		var_4dbf3ae3 endon("hash_4dbf3ae3");
	}
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		level namespace_ad23e503::function_1ab5ebec("sm_" + var_12173487 + "_cleared");
		namespace_4dbf3ae3::function_42e87952(var_2371c377, var_8f641cf);
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_1da22674
	Namespace: namespace_d5067552
	Checksum: 0x1E036BE0
	Offset: 0x2C48
	Size: 0x14B
	Parameters: 4
	Flags: None
*/
function function_1da22674(var_12173487, var_2371c377, var_8f641cf, var_6f97d0a3)
{
	if(isdefined(var_6f97d0a3) && var_6f97d0a3)
	{
		var_4dbf3ae3 = function_6ada35ba(var_2371c377, var_8f641cf);
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_4dbf3ae3), "Dev Block strings are not supported" + var_8f641cf + "Dev Block strings are not supported" + var_2371c377 + "Dev Block strings are not supported");
		#/
		var_4dbf3ae3 endon("hash_4dbf3ae3");
	}
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		level namespace_ad23e503::function_1ab5ebec("sm_" + var_12173487 + "_enabled");
		namespace_4dbf3ae3::function_42e87952(var_2371c377, var_8f641cf);
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_5000af1e
	Namespace: namespace_d5067552
	Checksum: 0x292CA172
	Offset: 0x2DA0
	Size: 0x10B
	Parameters: 8
	Flags: None
*/
function function_5000af1e(var_12173487, var_3e726154, var_a3d46ee4, var_454cd50d, var_6b4f4f76, var_9151c9df, var_87407100, var_ad42eb69)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3e726154), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(level namespace_ad23e503::function_dbca4c5d("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported"), "Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	#/
	function_347e835a(var_12173487);
	namespace_82b91a51::function_b1e5bfea(var_a3d46ee4, var_3e726154, var_454cd50d, var_6b4f4f76, var_9151c9df, var_87407100, var_ad42eb69);
}

/*
	Name: function_16c424d1
	Namespace: namespace_d5067552
	Checksum: 0xED260135
	Offset: 0x2EB8
	Size: 0x10B
	Parameters: 8
	Flags: None
*/
function function_16c424d1(var_12173487, var_3e726154, var_a3d46ee4, var_454cd50d, var_6b4f4f76, var_9151c9df, var_87407100, var_ad42eb69)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3e726154), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(level namespace_ad23e503::function_dbca4c5d("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported"), "Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	#/
	function_72e3dd35(var_12173487);
	namespace_82b91a51::function_b1e5bfea(var_a3d46ee4, var_3e726154, var_454cd50d, var_6b4f4f76, var_9151c9df, var_87407100, var_ad42eb69);
}

/*
	Name: function_617b3ed2
	Namespace: namespace_d5067552
	Checksum: 0xA8013596
	Offset: 0x2FD0
	Size: 0x10B
	Parameters: 8
	Flags: None
*/
function function_617b3ed2(var_12173487, var_3e726154, var_a3d46ee4, var_454cd50d, var_6b4f4f76, var_9151c9df, var_87407100, var_ad42eb69)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3e726154), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(level namespace_ad23e503::function_dbca4c5d("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported"), "Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	#/
	function_22e86a7e(var_12173487);
	namespace_82b91a51::function_b1e5bfea(var_a3d46ee4, var_3e726154, var_454cd50d, var_6b4f4f76, var_9151c9df, var_87407100, var_ad42eb69);
}

/*
	Name: function_bae40a28
	Namespace: namespace_d5067552
	Checksum: 0x9C323A2D
	Offset: 0x30E8
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_bae40a28(var_12173487, var_aa7c8545)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		foreach(var_1109dfe1 in level.var_a59f295d)
		{
			if(isdefined(var_1109dfe1) && var_1109dfe1.var_b77fa9b3 == var_12173487)
			{
				var_1109dfe1 notify("hash_bae40a28");
				return;
			}
		}
	}
	else if(!(isdefined(var_aa7c8545) && var_aa7c8545))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
		#/
	}
}

/*
	Name: function_54bdb053
	Namespace: namespace_d5067552
	Checksum: 0x5145BF25
	Offset: 0x3218
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_54bdb053(var_12173487, var_aa7c8545)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		foreach(var_1109dfe1 in level.var_a59f295d)
		{
			if(isdefined(var_1109dfe1) && var_1109dfe1.var_b77fa9b3 == var_12173487)
			{
				var_1109dfe1 notify("hash_54bdb053");
				return;
			}
		}
	}
	else if(!(isdefined(var_aa7c8545) && var_aa7c8545))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
		#/
	}
}

/*
	Name: function_2992720d
	Namespace: namespace_d5067552
	Checksum: 0x73FAB842
	Offset: 0x3348
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function function_2992720d(var_12173487, var_aa7c8545)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		foreach(var_1109dfe1 in level.var_a59f295d)
		{
			if(isdefined(var_1109dfe1) && var_1109dfe1.var_b77fa9b3 == var_12173487)
			{
				var_1109dfe1 function_dc8c8404();
				level.var_a59f295d = namespace_84970cc4::function_5c13fae0(level.var_a59f295d);
				return;
			}
		}
	}
	else if(!(isdefined(var_aa7c8545) && var_aa7c8545))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
		#/
	}
}

/*
	Name: function_56a7483f
	Namespace: namespace_d5067552
	Checksum: 0xE35129A3
	Offset: 0x34A0
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_56a7483f(var_12173487)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		if(level namespace_ad23e503::function_7922262b("sm_" + var_12173487 + "_enabled"))
		{
			return 1;
		}
		return 0;
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_abea3011
	Namespace: namespace_d5067552
	Checksum: 0x53B0AC1F
	Offset: 0x3548
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_abea3011(var_12173487)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		if(level namespace_ad23e503::function_7922262b("sm_" + var_12173487 + "_complete"))
		{
			return 1;
		}
		return 0;
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_b02fc450
	Namespace: namespace_d5067552
	Checksum: 0x139C59AA
	Offset: 0x35F0
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_b02fc450(var_12173487)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		if(level namespace_ad23e503::function_7922262b("sm_" + var_12173487 + "_cleared"))
		{
			return 1;
		}
		return 0;
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_fed8eff
	Namespace: namespace_d5067552
	Checksum: 0x417F75C4
	Offset: 0x3698
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_fed8eff(var_12173487)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		if(level namespace_ad23e503::function_7922262b("sm_" + var_12173487 + "_killed"))
		{
			return 1;
		}
		return 0;
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_72e3dd35
	Namespace: namespace_d5067552
	Checksum: 0x1E8A7DAB
	Offset: 0x3740
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_72e3dd35(var_12173487)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		level namespace_ad23e503::function_1ab5ebec("sm_" + var_12173487 + "_cleared");
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_27bf2e8
	Namespace: namespace_d5067552
	Checksum: 0x42954BA5
	Offset: 0x37D8
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_27bf2e8(var_12173487, var_41cac60e)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_41cac60e), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(var_41cac60e, "Dev Block strings are not supported");
	#/
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		level namespace_ad23e503::function_1ab5ebec("sm_" + var_12173487 + "_complete");
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
	if(level namespace_ad23e503::function_7922262b("sm_" + var_12173487 + "_cleared"))
	{
		return;
	}
	while(function_423eae50(var_12173487).size > var_41cac60e)
	{
		wait(0.1);
	}
}

/*
	Name: function_347e835a
	Namespace: namespace_d5067552
	Checksum: 0xE9DDF758
	Offset: 0x3918
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_347e835a(var_12173487)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		level namespace_ad23e503::function_1ab5ebec("sm_" + var_12173487 + "_complete");
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_22e86a7e
	Namespace: namespace_d5067552
	Checksum: 0xB3D03906
	Offset: 0x39B0
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_22e86a7e(var_12173487)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		level namespace_ad23e503::function_1ab5ebec("sm_" + var_12173487 + "_enabled");
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_740ea7ff
	Namespace: namespace_d5067552
	Checksum: 0x6F9CFC62
	Offset: 0x3A48
	Size: 0x16D
	Parameters: 2
	Flags: None
*/
function function_740ea7ff(var_12173487, var_74952a22)
{
	if(level namespace_ad23e503::function_dbca4c5d("sm_" + var_12173487 + "_enabled"))
	{
		level namespace_ad23e503::function_1ab5ebec("sm_" + var_12173487 + "_enabled");
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_12173487 + "Dev Block strings are not supported");
	}
	/#
	#/
	var_d5067552 = function_1d528fc9(var_12173487);
	/#
		namespace_33b293fd::function_a7ee953(var_d5067552.size, "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(var_d5067552.size == 1, "Dev Block strings are not supported");
	#/
	while(1)
	{
		if(isdefined(var_d5067552[0].var_74ff82f3) && var_d5067552[0].var_74ff82f3 < var_74952a22 && !function_fed8eff(var_12173487))
		{
			wait(0.5);
		}
		else
		{
			break;
		}
	}
	return;
}

/*
	Name: function_423eae50
	Namespace: namespace_d5067552
	Checksum: 0x964E17D3
	Offset: 0x3BC0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_423eae50(var_12173487)
{
	var_e3b635fb = function_c20c2e8(var_12173487, "sm_id");
	return var_e3b635fb;
}


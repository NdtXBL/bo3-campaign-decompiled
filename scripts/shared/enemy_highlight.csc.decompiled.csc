#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\clientfield_shared;
#using scripts\shared\util_shared;

#namespace namespace_68dfcbbe;

/*
	Name: function_a2489af5
	Namespace: namespace_68dfcbbe
	Checksum: 0xE54AD02A
	Offset: 0x160
	Size: 0xAB
	Parameters: 7
	Flags: None
*/
function function_a2489af5(var_ec74b091, var_75fb4b4f, var_982bfcf2, var_e9190fc5, var_125eba4d, var_63949c1d, var_fe79589d)
{
	self notify("hash_a2489af5");
	self.var_a2489af5 = 1;
	self thread function_eab5058b(var_ec74b091, var_63949c1d, var_fe79589d);
	self thread function_43ee2d3f(var_ec74b091, var_75fb4b4f, var_982bfcf2, var_e9190fc5, var_125eba4d, var_fe79589d);
}

/*
	Name: function_eab5058b
	Namespace: namespace_68dfcbbe
	Checksum: 0xD6CD382C
	Offset: 0x218
	Size: 0x303
	Parameters: 3
	Flags: None
*/
function function_eab5058b(var_ec74b091, var_63949c1d, var_fe79589d)
{
	self endon("hash_a2489af5");
	if(!isdefined(var_63949c1d))
	{
		var_63949c1d = 0;
	}
	if(!isdefined(self.var_e88f18d7))
	{
		self.var_e88f18d7 = [];
	}
	while(isdefined(self))
	{
		if(!isdefined(function_e9022fe(var_ec74b091, "HudElementImage")))
		{
			self.var_e88f18d7 = [];
		}
		var_99ccb8b4 = function_99201f25(var_ec74b091);
		self.var_f8f1eff7 = [];
		foreach(var_aa10fce8 in var_99ccb8b4)
		{
			if(var_aa10fce8.var_fe311e35 == "zbarrier")
			{
				continue;
			}
			if(var_63949c1d && var_aa10fce8.var_fe311e35 != "actor" && var_aa10fce8.var_fe311e35 != "player")
			{
				continue;
			}
			var_270018c4 = var_aa10fce8 function_c7f3ce11();
			var_8a39c33b = isdefined(var_aa10fce8.var_3e94206a) && var_aa10fce8.var_3e94206a == "axis";
			var_cb2f9b37 = !var_8a39c33b && isdefined(var_fe79589d);
			var_b4f6794d = function_5b49d38c(var_aa10fce8) && (var_8a39c33b || var_cb2f9b37) && (!isdefined(var_aa10fce8.var_dad0e5c1) && var_aa10fce8.var_dad0e5c1);
			if(var_b4f6794d && !isdefined(self.var_f8f1eff7[var_270018c4]))
			{
				self.var_f8f1eff7[var_270018c4] = var_aa10fce8;
				continue;
			}
			if(!var_b4f6794d && isdefined(self.var_f8f1eff7[var_270018c4]))
			{
				self.var_f8f1eff7[var_270018c4] = undefined;
				if(isdefined(self.var_e88f18d7[var_270018c4]))
				{
					function_2b74b70a(var_ec74b091, self.var_e88f18d7[var_270018c4]);
					self.var_e88f18d7[var_270018c4] = undefined;
				}
			}
		}
		wait(1);
	}
}

/*
	Name: function_43ee2d3f
	Namespace: namespace_68dfcbbe
	Checksum: 0x83EE28F8
	Offset: 0x528
	Size: 0x963
	Parameters: 6
	Flags: None
*/
function function_43ee2d3f(var_ec74b091, var_75fb4b4f, var_982bfcf2, var_e9190fc5, var_125eba4d, var_fe79589d)
{
	self endon("hash_a2489af5");
	if(!isdefined(self.var_e88f18d7))
	{
		self.var_e88f18d7 = [];
	}
	if(!isdefined(var_125eba4d))
	{
		var_125eba4d = 1;
	}
	var_865e83e = function_b6b79a0(var_125eba4d * 500);
	while(isdefined(self))
	{
		if(!isdefined(function_e9022fe(var_ec74b091, "HudElementImage")))
		{
			self.var_e88f18d7 = [];
		}
		var_f8681460 = function_bc8fd75a(var_ec74b091);
		var_6ab6f4fd = function_d7759321(var_ec74b091);
		if(isdefined(self.var_fbad6cb4))
		{
			var_f8681460 = self.var_fbad6cb4;
			var_6ab6f4fd = self.var_f28a7256;
		}
		var_55f7939b = function_ef0a72b2(function_a848fade(var_ec74b091) * var_e9190fc5);
		var_99a7bd93 = function_bc7ce905(var_6ab6f4fd);
		var_4e91aa5b = [];
		foreach(var_aa10fce8 in self.var_f8f1eff7)
		{
			if(!isdefined(var_aa10fce8) || !isdefined(var_aa10fce8.var_722885f3))
			{
				continue;
			}
			var_cff9a482 = undefined;
			var_3565acf = 0;
			var_8a39c33b = isdefined(var_aa10fce8.var_3e94206a) && var_aa10fce8.var_3e94206a == "axis";
			var_cb2f9b37 = !var_8a39c33b && isdefined(var_fe79589d);
			var_b4f6794d = function_5b49d38c(var_aa10fce8) && (var_8a39c33b || var_cb2f9b37) && (!isdefined(var_aa10fce8.var_dad0e5c1) && var_aa10fce8.var_dad0e5c1) && var_aa10fce8 != self;
			if(var_b4f6794d && self.var_e88f18d7.size >= 32 && !isdefined(self.var_e88f18d7[var_270018c4]))
			{
				var_b4f6794d = 0;
			}
			if(var_b4f6794d)
			{
				if(var_aa10fce8.var_fe311e35 == "actor" || var_aa10fce8.var_fe311e35 == "player")
				{
					var_cff9a482 = var_aa10fce8 function_d48f2ab3("J_Spine4");
				}
				if(!isdefined(var_cff9a482))
				{
					var_cff9a482 = var_aa10fce8.var_722885f3 + VectorScale((0, 0, 1), 40);
				}
				/#
					namespace_33b293fd::function_a7ee953(isdefined(var_cff9a482));
				#/
				/#
					namespace_33b293fd::function_a7ee953(isdefined(var_f8681460));
				#/
				var_eba44e82 = function_f679a325(var_cff9a482 - var_f8681460);
				var_42bd74de = function_5f9a4869(var_eba44e82, var_99a7bd93);
				if(var_42bd74de < var_55f7939b)
				{
					var_b4f6794d = 0;
				}
				else
				{
					var_3565acf = function_aaeec8c5(1 - var_42bd74de / 1 - var_55f7939b - 0.5, 0);
				}
				if(var_b4f6794d && (!isdefined(var_aa10fce8.var_459e92cf) || var_aa10fce8.var_459e92cf <= function_d9502965(var_ec74b091)))
				{
					var_68044d19 = var_f8681460 + var_eba44e82 * 100;
					var_236ffde = var_cff9a482 + var_eba44e82 * -100;
					var_381555f = function_b3bb41e6(var_68044d19, var_236ffde);
					var_aa10fce8.var_17c88a1f = var_381555f["fraction"] >= 1;
					var_aa10fce8.var_459e92cf = function_d9502965(var_ec74b091) + var_865e83e + function_dc99997a(0, var_865e83e);
				}
			}
			if(var_b4f6794d && var_aa10fce8.var_17c88a1f)
			{
				var_e7323f20 = function_95186518(var_ec74b091, var_cff9a482);
				if(!isdefined(self.var_e88f18d7[var_270018c4]))
				{
					if(var_8a39c33b)
					{
						self.var_e88f18d7[var_270018c4] = self function_dd6e51ad(var_ec74b091, var_aa10fce8, var_75fb4b4f, var_982bfcf2);
					}
					else
					{
						self.var_e88f18d7[var_270018c4] = self function_dd6e51ad(var_ec74b091, var_aa10fce8, var_fe79589d, var_982bfcf2);
					}
				}
				var_69d6d8c4 = self.var_e88f18d7[var_270018c4];
				if(isdefined(var_69d6d8c4))
				{
					var_4e91aa5b[var_270018c4] = var_69d6d8c4;
					function_3a9588ea(var_ec74b091, var_69d6d8c4, "x", var_e7323f20[0] - var_982bfcf2 * 0.5);
					function_3a9588ea(var_ec74b091, var_69d6d8c4, "y", var_e7323f20[1] - var_982bfcf2 * 0.5);
					function_3a9588ea(var_ec74b091, var_69d6d8c4, "alpha", 1 - var_3565acf);
					if(var_8a39c33b)
					{
						function_3a9588ea(var_ec74b091, var_69d6d8c4, "red", 1);
						function_3a9588ea(var_ec74b091, var_69d6d8c4, "green", 0);
						continue;
					}
					function_3a9588ea(var_ec74b091, var_69d6d8c4, "red", 0);
					function_3a9588ea(var_ec74b091, var_69d6d8c4, "green", 1);
				}
			}
		}
		var_8506fa3b = [];
		foreach(var_35c84e32 in self.var_e88f18d7)
		{
			if(!isdefined(var_4e91aa5b[var_270018c4]))
			{
				var_8506fa3b[var_270018c4] = var_270018c4;
			}
		}
		foreach(var_35c84e32 in var_8506fa3b)
		{
			function_2b74b70a(var_ec74b091, self.var_e88f18d7[var_270018c4]);
			self.var_e88f18d7[var_270018c4] = undefined;
		}
		wait(0.016);
	}
}

/*
	Name: function_5f9074e0
	Namespace: namespace_68dfcbbe
	Checksum: 0x3318D1FD
	Offset: 0xE98
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_5f9074e0(var_ec74b091)
{
	self notify("hash_a2489af5");
	self endon("hash_a2489af5");
	wait(0.016);
	if(isdefined(self.var_e88f18d7))
	{
		foreach(var_14ffd4e5 in self.var_e88f18d7)
		{
			function_2b74b70a(var_ec74b091, var_14ffd4e5);
		}
		self.var_e88f18d7 = undefined;
	}
	self.var_a2489af5 = undefined;
}

/*
	Name: function_dd6e51ad
	Namespace: namespace_68dfcbbe
	Checksum: 0x861E3EB6
	Offset: 0xF80
	Size: 0x1F7
	Parameters: 4
	Flags: None
*/
function function_dd6e51ad(var_ec74b091, var_aa10fce8, var_75fb4b4f, var_982bfcf2)
{
	var_14ffd4e5 = function_5307ab20(var_ec74b091, "HudElementImage");
	if(isdefined(var_14ffd4e5))
	{
		function_3a9588ea(var_ec74b091, var_14ffd4e5, "x", 0);
		function_3a9588ea(var_ec74b091, var_14ffd4e5, "y", 0);
		function_3a9588ea(var_ec74b091, var_14ffd4e5, "width", var_982bfcf2);
		function_3a9588ea(var_ec74b091, var_14ffd4e5, "height", var_982bfcf2);
		function_3a9588ea(var_ec74b091, var_14ffd4e5, "alpha", 1);
		function_3a9588ea(var_ec74b091, var_14ffd4e5, "material", var_75fb4b4f);
		function_3a9588ea(var_ec74b091, var_14ffd4e5, "red", 1);
		function_3a9588ea(var_ec74b091, var_14ffd4e5, "green", 0);
		function_3a9588ea(var_ec74b091, var_14ffd4e5, "blue", 0);
		function_3a9588ea(var_ec74b091, var_14ffd4e5, "zRot", 0);
		function_2f6b6a4c(var_ec74b091, var_14ffd4e5);
	}
	return var_14ffd4e5;
}


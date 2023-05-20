#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_player;
#using scripts\shared\stealth_tagging;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_8312dbf;

/*
	Name: function_c35e6aab
	Namespace: namespace_8312dbf
	Checksum: 0xF7AA6BCC
	Offset: 0x1E8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_ad06727a));
	#/
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(self.var_ad06727a.var_2e2a14bb));
	#/
	if(!isdefined(self.var_ad06727a.var_2e2a14bb))
	{
		self.var_ad06727a.var_2e2a14bb = function_a8fb77bd();
	}
	self.var_ad06727a.var_2e2a14bb.var_85afbc75 = [];
	self.var_ad06727a.var_2e2a14bb.var_2eb71ab0 = undefined;
	self thread function_f9fc005b();
	self thread function_6789ff4f();
}

/*
	Name: function_b55533bc
	Namespace: namespace_8312dbf
	Checksum: 0x9045B9BE
	Offset: 0x2D8
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_b55533bc()
{
	return isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_2e2a14bb);
}

/*
	Name: function_71d2217b
	Namespace: namespace_8312dbf
	Checksum: 0xF1ACBFDA
	Offset: 0x300
	Size: 0x16F
	Parameters: 4
	Flags: None
*/
function function_71d2217b(var_5cbd0572, var_b71ed4a2, var_7e39b8e9, var_32b38549)
{
	var_88ac910a = undefined;
	if(!isdefined(var_32b38549))
	{
		var_88ac910a = function_c49dde5();
	}
	else
	{
		var_88ac910a = function_ad13099a(var_32b38549);
	}
	var_88ac910a.var_740218b1 = "right";
	var_88ac910a.var_f9134763 = "middle";
	var_88ac910a.var_4d19365 = 2;
	var_88ac910a function_9befb288(var_5cbd0572, 5, 5);
	var_88ac910a function_26b3bd1e(1, var_5cbd0572, 0, 0);
	var_88ac910a.var_5773c805 = 1;
	var_88ac910a.var_593a32e2 = 1;
	var_88ac910a.var_4f8217af = var_b71ed4a2[0];
	var_88ac910a.var_297f9d46 = var_b71ed4a2[1];
	var_88ac910a.var_37d22dd = var_b71ed4a2[2] + var_7e39b8e9;
	return var_88ac910a;
}

/*
	Name: function_cf9dd532
	Namespace: namespace_8312dbf
	Checksum: 0xBD5D5E0B
	Offset: 0x478
	Size: 0x1BD
	Parameters: 2
	Flags: None
*/
function function_cf9dd532(var_32b38549, var_f69107b4)
{
	if(!isdefined(var_f69107b4))
	{
		var_f69107b4 = 0;
	}
	var_5e76f0af = -1;
	if(isdefined(var_32b38549))
	{
		var_5e76f0af = var_32b38549 function_c7f3ce11() + var_f69107b4;
	}
	if(!isdefined(self.var_ad06727a.var_2e2a14bb.var_2eb71ab0))
	{
		var_a3d46ee4 = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3 + VectorScale((0, 0, 1), 92), (0, 0, 0));
		var_a3d46ee4 function_37f7858a(self);
		self.var_ad06727a.var_2e2a14bb.var_2eb71ab0 = var_a3d46ee4;
	}
	if(!isdefined(self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af]))
	{
		var_e0c27bfa = function_71d2217b("white_stealth_arrow_01", self.var_ad06727a.var_2e2a14bb.var_2eb71ab0.var_722885f3, 16, var_32b38549);
		var_e0c27bfa function_a8e6d0d7(self.var_ad06727a.var_2e2a14bb.var_2eb71ab0);
		self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af] = var_e0c27bfa;
	}
}

/*
	Name: function_180adb28
	Namespace: namespace_8312dbf
	Checksum: 0xEA88E74B
	Offset: 0x640
	Size: 0x229
	Parameters: 2
	Flags: None
*/
function function_180adb28(var_5e76f0af, var_f69107b4)
{
	if(!isdefined(self) || !isdefined(self.var_ad06727a) || !isdefined(self.var_ad06727a.var_2e2a14bb) || !isdefined(self.var_ad06727a.var_2e2a14bb.var_85afbc75))
	{
		return;
	}
	if(!isdefined(var_f69107b4))
	{
		var_f69107b4 = 0;
	}
	if(isdefined(var_5e76f0af))
	{
		if(isdefined(self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af]))
		{
			self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af] function_89cd542d();
			self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af] = undefined;
		}
	}
	else
	{
		foreach(var_e0c27bfa in self.var_ad06727a.var_2e2a14bb.var_85afbc75)
		{
			if(isdefined(var_e0c27bfa))
			{
				var_e0c27bfa function_89cd542d();
			}
		}
		self.var_ad06727a.var_2e2a14bb.var_85afbc75 = [];
	}
	if(isdefined(self.var_ad06727a.var_2e2a14bb.var_2eb71ab0) && self.var_ad06727a.var_2e2a14bb.var_85afbc75.size == 0)
	{
		self.var_ad06727a.var_2e2a14bb.var_2eb71ab0 function_dc8c8404();
		self.var_ad06727a.var_2e2a14bb.var_2eb71ab0 = undefined;
	}
}

/*
	Name: function_6789ff4f
	Namespace: namespace_8312dbf
	Checksum: 0x2CCD684
	Offset: 0x878
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_6789ff4f()
{
	self endon("hash_94ff6d85");
	self endon("hash_128f8789");
	while(1)
	{
		namespace_82b91a51::function_5b7e3888("stealth_sight_start", "alert");
		while(function_5b49d38c(self))
		{
			if(!self function_debccd1a())
			{
				break;
			}
			wait(0.05);
		}
	}
}

/*
	Name: function_16c0c92e
	Namespace: namespace_8312dbf
	Checksum: 0x520D4F55
	Offset: 0x910
	Size: 0x6D
	Parameters: 1
	Flags: None
*/
function function_16c0c92e(var_4a8372a9)
{
	if(var_4a8372a9 < 0)
	{
		var_4a8372a9 = 0;
	}
	if(var_4a8372a9 > 1)
	{
		var_4a8372a9 = 1;
	}
	return "white_stealth_arrow_0" + 1 + function_b6b79a0(7 * var_4a8372a9);
}

/*
	Name: function_debccd1a
	Namespace: namespace_8312dbf
	Checksum: 0xD267121C
	Offset: 0x988
	Size: 0x5BD
	Parameters: 0
	Flags: None
*/
function function_debccd1a()
{
	var_4bf6d951 = 0;
	var_d47e142e = function_3f10449f();
	foreach(var_5dc5e20a in var_d47e142e)
	{
		var_5e76f0af = var_5dc5e20a function_c7f3ce11();
		var_1f013b13 = self function_99ada8a(var_5dc5e20a);
		var_8363b8e0 = self namespace_80045451::function_739525d();
		var_dc5d33fe = var_8363b8e0 == "combat" || var_8363b8e0 == "high_alert";
		var_98e4a612 = var_dc5d33fe && isdefined(self.var_ad06727a.var_c49c37ed[var_5e76f0af]);
		var_a0982047 = isdefined(self.var_ad06727a.var_d1b49f30[var_5e76f0af]);
		var_416f4d35 = var_1f013b13 > 0;
		var_44b1a6c2 = self namespace_ad06727a::function_7ee3d9cd(var_5dc5e20a) && !self.var_c584775c;
		if(!isdefined(self.var_e73d60ea) && self.var_e73d60ea && var_5dc5e20a namespace_10443be6::function_b55533bc())
		{
			if(var_98e4a612)
			{
				var_5dc5e20a namespace_10443be6::function_f5f81ff0(self, var_1f013b13);
			}
			if(isdefined(self.var_ad06727a.var_7a604d90[var_5e76f0af]) || var_416f4d35)
			{
				var_5dc5e20a thread namespace_10443be6::function_3cd0dcd(self, var_44b1a6c2, var_8363b8e0);
				if(var_98e4a612 || var_a0982047)
				{
					var_5dc5e20a namespace_10443be6::function_cd81f5b8(self, 1);
				}
				else
				{
					var_5dc5e20a namespace_10443be6::function_cd81f5b8(self, var_1f013b13);
				}
				var_4bf6d951 = var_4bf6d951 || var_98e4a612 || var_a0982047 || var_416f4d35;
			}
		}
		var_c1cdaaeb = 0;
		/#
			var_c1cdaaeb = namespace_e449108e::function_b55533bc();
		#/
		if(function_4bd0142f("stealth_display", 1) == 2 || var_c1cdaaeb && (var_416f4d35 || var_dc5d33fe))
		{
			self function_cf9dd532(var_5dc5e20a);
			var_4bf6d951 = 1;
			var_5cbd0572 = "white_stealth_arrow_01";
			var_d900369a = namespace_ad06727a::function_b7ff7c00("unaware");
			if(!var_98e4a612 && var_dc5d33fe)
			{
				var_d900369a = namespace_ad06727a::function_b7ff7c00(var_8363b8e0);
			}
			else if(self namespace_80045451::function_739525d() == "unaware")
			{
				var_5cbd0572 = function_16c0c92e(var_1f013b13);
				var_d900369a = namespace_ad06727a::function_b7ff7c00(var_8363b8e0);
			}
			else
			{
				var_5cbd0572 = function_16c0c92e(var_1f013b13);
				var_d900369a = namespace_ad06727a::function_b7ff7c00(var_8363b8e0);
			}
			if(isdefined(self.var_ad06727a.var_2e2a14bb.var_2eb71ab0) && isdefined(self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af]))
			{
				self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af] function_a8e6d0d7(self.var_ad06727a.var_2e2a14bb.var_2eb71ab0);
				self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af] function_9befb288(var_5cbd0572, 5, 5);
				self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af] function_26b3bd1e(0, var_5cbd0572, 0, 0);
				self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af].var_d900369a = var_d900369a;
			}
			continue;
		}
		if(isdefined(self.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af]))
		{
			self function_180adb28(var_5e76f0af);
		}
	}
	return var_4bf6d951;
}

/*
	Name: function_f9fc005b
	Namespace: namespace_8312dbf
	Checksum: 0x682B69F9
	Offset: 0xF50
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f9fc005b()
{
	self notify("hash_f51e1ce9");
	self endon("hash_f51e1ce9");
	self namespace_82b91a51::function_5b7e3888("death");
	self function_180adb28();
}


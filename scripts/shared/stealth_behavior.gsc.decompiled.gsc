#using scripts\shared\ai_shared;
#using scripts\shared\stealth_actor;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_player;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_7829c86f;

/*
	Name: function_de77b9e6
	Namespace: namespace_7829c86f
	Checksum: 0x8787611
	Offset: 0x1A8
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_de77b9e6(var_904f1fb9)
{
	if(!function_8d0347b8(self) || !function_5b49d38c(self))
	{
		return;
	}
	var_b71ed4a2 = var_904f1fb9.var_b5d0b83e[0];
	var_eefd8747 = var_904f1fb9.var_b5d0b83e[1];
	var_7b81749 = var_904f1fb9.var_b5d0b83e[2];
	if(isdefined(var_b71ed4a2))
	{
		self thread function_b78807a5(var_b71ed4a2, var_eefd8747, var_7b81749);
	}
}

/*
	Name: function_a1dec77
	Namespace: namespace_7829c86f
	Checksum: 0x32DA9A7D
	Offset: 0x280
	Size: 0x257
	Parameters: 3
	Flags: None
*/
function function_a1dec77(var_b71ed4a2, var_3c58247b, var_9b351631)
{
	var_b8cbb409 = undefined;
	var_e80bc3d2 = undefined;
	var_7f5fb107 = var_3c58247b * 0.5;
	var_7b342bc5 = 0;
	while(!isdefined(var_b8cbb409) && var_7b342bc5 < 4)
	{
		var_7b342bc5++;
		var_7f5fb107 = var_7f5fb107 * 2;
		var_b8cbb409 = function_eed6dab7(var_b71ed4a2, var_7f5fb107, 30);
	}
	if(isdefined(var_b8cbb409))
	{
		var_6ab55afd = namespace_82b91a51::function_ee78923e(var_b71ed4a2, 0, var_7f5fb107 + 50, 70, 64);
		var_d1df9c1 = 0;
		var_2b89b3df = function_cb3d1c9b(self.var_722885f3, var_b71ed4a2);
		foreach(var_dd89f865 in var_6ab55afd)
		{
			var_2c3e05ad = function_cb3d1c9b(var_dd89f865, var_b71ed4a2);
			if(var_2b89b3df > 256 && var_2c3e05ad > var_2b89b3df)
			{
				continue;
			}
			var_d1df9c1 = var_d1df9c1 + 1;
			var_9515bc6d = 1 / var_d1df9c1;
			if(function_72a94f05(0, 1) <= var_9515bc6d)
			{
				var_e80bc3d2 = var_dd89f865;
			}
		}
	}
	return var_e80bc3d2;
}

/*
	Name: function_2481442d
	Namespace: namespace_7829c86f
	Checksum: 0x399BFF44
	Offset: 0x4E0
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_2481442d()
{
	self.var_ad06727a.var_36b1815f = undefined;
	self notify("hash_2481442d");
}

/*
	Name: function_b78807a5
	Namespace: namespace_7829c86f
	Checksum: 0x81284246
	Offset: 0x508
	Size: 0x3BB
	Parameters: 3
	Flags: None
*/
function function_b78807a5(var_b71ed4a2, var_eefd8747, var_7b81749)
{
	self notify("hash_b78807a5");
	self endon("hash_b78807a5");
	self endon("hash_128f8789");
	self endon("hash_94ff6d85");
	self endon("hash_2481442d");
	/#
		namespace_33b293fd::function_a7ee953(self namespace_aec89ff8::function_b55533bc());
	#/
	if(!isdefined(var_7b81749))
	{
		var_7b81749 = "default";
	}
	self function_470f7e4c();
	self.var_ad06727a.var_36b1815f = var_7b81749;
	self notify("hash_565daac6");
	self function_e01ff155();
	if(function_65f192a6(var_eefd8747) && var_eefd8747 namespace_10443be6::function_b55533bc())
	{
		var_eefd8747 namespace_234a4910::function_e3ae87b3("investigating", self, 1);
	}
	var_9f439081 = undefined;
	var_7dfaf62 = 128;
	var_d0808a0e = GetTime() + function_72a94f05(25, 30) * 1000;
	if(var_7b81749 == "infinite")
	{
		var_d0808a0e = -1;
	}
	else if(var_7b81749 == "quick")
	{
		var_d0808a0e = GetTime() + function_72a94f05(10, 15) * 1000;
	}
	if(var_d0808a0e > 0)
	{
		self thread function_628d42af(var_d0808a0e - GetTime() / 1000);
	}
	self notify("hash_234a4910", "alert");
	if(isdefined(self.var_f2090578) && self.var_f2090578)
	{
		self namespace_d84e54db::function_6a90f059();
	}
	var_3c61bfc2 = "";
	while(var_d0808a0e < 0 || GetTime() < var_d0808a0e && isdefined(var_b71ed4a2))
	{
		var_ee99fa5c = function_a1dec77(var_b71ed4a2, 256, var_3c61bfc2);
		if(isdefined(var_ee99fa5c))
		{
			/#
				self.var_ad06727a.var_85e6f33c = undefined;
			#/
			var_3c61bfc2 = self function_edba2e78(var_ee99fa5c);
			if(var_3c61bfc2 == "bad_path")
			{
				/#
					self.var_ad06727a.var_85e6f33c = "Dev Block strings are not supported";
				#/
				var_b71ed4a2 = self.var_722885f3;
				wait(1);
			}
			else
			{
				self waittill("hash_a5e5ed45");
			}
		}
		else
		{
			self.var_ad06727a.var_85e6f33c = "Dev Block strings are not supported";
			var_b71ed4a2 = self.var_722885f3;
			wait(1);
		}
		/#
		#/
	}
	self namespace_80045451::function_a2429809("unaware");
	self function_2481442d();
}

/*
	Name: function_628d42af
	Namespace: namespace_7829c86f
	Checksum: 0xD9DB9F01
	Offset: 0x8D0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_628d42af(var_822bf3d1)
{
	self endon("hash_b78807a5");
	self endon("hash_128f8789");
	self endon("hash_94ff6d85");
	self endon("hash_2481442d");
	wait(var_822bf3d1);
	self.var_f706c2c = 1;
	self notify("hash_234a4910", "resume");
	self namespace_80045451::function_a2429809("unaware");
	self function_2481442d();
}

/*
	Name: function_edba2e78
	Namespace: namespace_7829c86f
	Checksum: 0xF727AAC1
	Offset: 0x970
	Size: 0xFD
	Parameters: 1
	Flags: None
*/
function function_edba2e78(var_b71ed4a2)
{
	self notify("hash_edba2e78");
	self endon("hash_edba2e78");
	self endon("hash_b78807a5");
	self endon("hash_128f8789");
	self endon("hash_94ff6d85");
	/#
		namespace_33b293fd::function_a7ee953(self namespace_aec89ff8::function_b55533bc());
	#/
	self function_e65887e4(var_b71ed4a2, 1, 8);
	/#
		self.var_ad06727a.var_edba2e78 = var_b71ed4a2;
	#/
	var_3c61bfc2 = self namespace_82b91a51::function_9fcf3cd8(30, "goal", "near_goal", "bad_path");
	/#
		self.var_ad06727a.var_edba2e78 = undefined;
	#/
	return var_3c61bfc2;
}


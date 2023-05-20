#using scripts\shared\stealth;
#using scripts\shared\stealth_actor;
#using scripts\shared\stealth_aware;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_e449108e;

/*
	Name: function_c35e6aab
	Namespace: namespace_e449108e
	Checksum: 0x8E310234
	Offset: 0x110
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		if(isdefined(self.var_ad06727a))
		{
			self.var_ad06727a.var_6926a825 = "Dev Block strings are not supported";
		}
		var_c39a9f3e = function_4bd0142f("Dev Block strings are not supported", -1);
		if(var_c39a9f3e == -1)
		{
			function_6c1294b8("Dev Block strings are not supported", 0);
		}
	#/
}

/*
	Name: function_b55533bc
	Namespace: namespace_e449108e
	Checksum: 0xA5846DAA
	Offset: 0x1A0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b55533bc()
{
	/#
		return function_4bd0142f("Dev Block strings are not supported", 0);
	#/
}

/*
	Name: function_148c43f
	Namespace: namespace_e449108e
	Checksum: 0x234AE209
	Offset: 0x1D0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_148c43f()
{
	/#
		if(self == level)
		{
			self thread function_70b08fc4();
		}
		if(function_8d0347b8(self) && function_b55533bc())
		{
			self thread function_53d6792c();
			self thread function_2dd1012();
		}
	#/
}

/*
	Name: function_70b08fc4
	Namespace: namespace_e449108e
	Checksum: 0xE66D7C4F
	Offset: 0x260
	Size: 0x239
	Parameters: 0
	Flags: None
*/
function function_70b08fc4()
{
	/#
		self notify("hash_70b08fc4");
		self endon("hash_70b08fc4");
		var_4809e2a9 = function_b55533bc();
		while(1)
		{
			if(function_b55533bc() != var_4809e2a9)
			{
				var_4b8a5d64 = function_99201f25();
				if(function_b55533bc())
				{
					foreach(var_aa10fce8 in var_4b8a5d64)
					{
						if(function_8d0347b8(var_aa10fce8) && var_aa10fce8 namespace_aec89ff8::function_b55533bc())
						{
							var_aa10fce8 thread function_53d6792c();
							var_aa10fce8 thread function_2dd1012();
						}
					}
					break;
				}
				foreach(var_aa10fce8 in var_4b8a5d64)
				{
					if(function_8d0347b8(var_aa10fce8) && var_aa10fce8 namespace_aec89ff8::function_b55533bc())
					{
						var_aa10fce8 notify("hash_53d6792c");
						var_aa10fce8 notify("hash_2dd1012");
					}
				}
				var_4809e2a9 = function_b55533bc();
			}
			wait(1);
		}
	#/
}

/*
	Name: function_53d6792c
	Namespace: namespace_e449108e
	Checksum: 0xEE996C91
	Offset: 0x4A8
	Size: 0x397
	Parameters: 0
	Flags: None
*/
function function_53d6792c()
{
	/#
		self notify("hash_53d6792c");
		self endon("hash_53d6792c");
		self endon("hash_128f8789");
		self endon("hash_94ff6d85");
		while(1)
		{
			if(function_b55533bc())
			{
				var_722885f3 = self.var_722885f3;
				function_8f3e0f73(var_722885f3, "Dev Block strings are not supported" + self.var_730c572d, namespace_ad06727a::function_b7ff7c00(self.var_730c572d), 1, 0.5, 1);
				var_722885f3 = (var_722885f3[0], var_722885f3[1], var_722885f3[2] + 15);
				if(isdefined(self.var_ad06727a.var_6926a825) && self.var_ad06727a.var_6926a825 != "Dev Block strings are not supported" && self.var_730c572d != "Dev Block strings are not supported")
				{
					function_8f3e0f73(var_722885f3, self.var_ad06727a.var_6926a825, namespace_ad06727a::function_b7ff7c00(self.var_730c572d), 1, 0.5, 1);
					var_722885f3 = (var_722885f3[0], var_722885f3[1], var_722885f3[2] + 15);
				}
				if(isdefined(self.var_6050ab17))
				{
					function_8f3e0f73(var_722885f3, "Dev Block strings are not supported" + self.var_6050ab17 function_c7f3ce11() + "Dev Block strings are not supported", namespace_ad06727a::function_b7ff7c00(self.var_730c572d), 1, 0.5, 1);
					var_722885f3 = (var_722885f3[0], var_722885f3[1], var_722885f3[2] + 15);
				}
				if(isdefined(self.var_ad06727a.var_85e6f33c) && self.var_ad06727a.var_85e6f33c != "Dev Block strings are not supported")
				{
					function_8f3e0f73(var_722885f3, self.var_ad06727a.var_85e6f33c, namespace_ad06727a::function_b7ff7c00(self.var_730c572d), 1, 0.5, 1);
					var_722885f3 = (var_722885f3[0], var_722885f3[1], var_722885f3[2] + 15);
				}
				if(isdefined(self.var_ad06727a.var_edba2e78))
				{
					function_30077d70(self.var_ad06727a.var_edba2e78, VectorScale((-1, -1, 0), 16), (16, 16, 60), 0, (1, 0, 1));
					function_4e418837(self.var_722885f3 + VectorScale((0, 0, 1), 80), self.var_ad06727a.var_edba2e78 + VectorScale((0, 0, 1), 60), (1, 0, 1));
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_2dd1012
	Namespace: namespace_e449108e
	Checksum: 0xC94171C7
	Offset: 0x848
	Size: 0x2F7
	Parameters: 0
	Flags: None
*/
function function_2dd1012()
{
	/#
		self notify("hash_2dd1012");
		self endon("hash_2dd1012");
		self endon("hash_128f8789");
		self endon("hash_94ff6d85");
		if(!function_8d0347b8(self))
		{
			return;
		}
		wait(0.05);
		while(1)
		{
			wait(0.05);
			if(function_b55533bc())
			{
				var_8363b8e0 = self namespace_80045451::function_739525d();
				var_1118b447 = level.var_ad06727a.var_1118b447.var_8363b8e0[var_8363b8e0];
				if(function_b55533bc() > 1)
				{
					var_80364fb2 = (0, self function_cd1d99bd("Dev Block strings are not supported")[1], 0);
					var_d900369a = VectorScale((1, 1, 1), 0.5);
					foreach(var_6050ab17 in level.var_ad06727a.var_657b1773[self.var_3e94206a])
					{
						if(self function_75754e3a(var_6050ab17))
						{
							var_d900369a = (1, 0.5, 0);
							break;
						}
					}
					if(var_8363b8e0 != "Dev Block strings are not supported")
					{
						self function_2188901b(self.var_722885f3 + VectorScale((0, 0, 1), 16), var_80364fb2, self.var_a1f56f1f, self.var_304f0f57, function_ccc6aafb(self.var_2a373326), var_d900369a);
					}
				}
				var_eb3d20f0 = self function_d03e7614();
				if(isdefined(var_eb3d20f0))
				{
					var_d900369a = namespace_ad06727a::function_b7ff7c00(var_8363b8e0);
					function_4e418837(self.var_722885f3, var_eb3d20f0, var_d900369a, 0, 1);
					function_617f6eba(var_eb3d20f0, 1, var_d900369a);
				}
			}
		}
	#/
}

/*
	Name: function_2188901b
	Namespace: namespace_e449108e
	Checksum: 0x65559CE3
	Offset: 0xB48
	Size: 0x3F7
	Parameters: 6
	Flags: None
*/
function function_2188901b(var_722885f3, var_6ab6f4fd, var_a1f56f1f, var_304f0f57, var_be5890aa, var_d900369a)
{
	/#
		var_b5f739f1 = function_88c629b7(var_a1f56f1f);
		var_d69e0db2 = function_88c629b7(var_304f0f57);
		var_e363b850 = function_bd2bc6be(var_d69e0db2) * var_be5890aa;
		var_a24a5370 = function_bc7ce905((0, var_6ab6f4fd[1], 0));
		var_cb5028c4 = function_bc7ce905((0, var_6ab6f4fd[1] + var_b5f739f1, 0));
		var_4e576457 = function_bc7ce905((0, var_6ab6f4fd[1] - var_b5f739f1, 0));
		var_55697279 = var_722885f3 + var_cb5028c4 * var_be5890aa;
		var_2d8001c8 = var_722885f3 + var_4e576457 * var_be5890aa;
		namespace_82b91a51::function_a9c39c8b(var_722885f3, var_55697279, var_d900369a, 1, 1, 1);
		namespace_82b91a51::function_a9c39c8b(var_722885f3, var_2d8001c8, var_d900369a, 1, 1, 1);
		var_3a111617 = var_722885f3 + var_a24a5370 * var_be5890aa;
		var_140e9bae = var_722885f3 + var_a24a5370 * var_be5890aa + (0, 0, var_e363b850);
		namespace_82b91a51::function_a9c39c8b(var_3a111617, var_140e9bae, var_d900369a, 1, 1, 1);
		namespace_82b91a51::function_a9c39c8b(var_140e9bae, var_722885f3, var_d900369a, 1, 1, 1);
		var_876d8fae = [];
		var_27175f0d = var_b5f739f1 * 2 / 10;
		for(var_a3557c4d = 1; var_a3557c4d < 10 - 1; var_a3557c4d++)
		{
			var_933fa84d = var_6ab6f4fd[1] - var_b5f739f1 + var_27175f0d * var_a3557c4d;
			var_a080d759 = function_bc7ce905((0, var_933fa84d, 0));
			var_876d8fae[var_876d8fae.size] = var_a080d759 * var_be5890aa + var_722885f3;
		}
		var_876d8fae[var_876d8fae.size] = var_55697279;
		var_be3a488f = var_2d8001c8;
		var_2233fb24 = undefined;
		for(var_a3557c4d = 0; var_a3557c4d < var_876d8fae.size; var_a3557c4d++)
		{
			var_2233fb24 = var_876d8fae[var_a3557c4d];
			namespace_82b91a51::function_a9c39c8b(var_be3a488f, var_2233fb24, var_d900369a, 1, 1, 1);
			var_be3a488f = var_2233fb24;
		}
	#/
}

/*
	Name: function_1c1f41ef
	Namespace: namespace_e449108e
	Checksum: 0xC53DE8F7
	Offset: 0xF48
	Size: 0x477
	Parameters: 6
	Flags: None
*/
function function_1c1f41ef(var_8caa0808, var_d900369a, var_aabe9f43, var_5c21ad3d, var_722885f3, var_570beddf)
{
	/#
		var_f25deb34 = 10;
		var_8426578 = 3;
		if(!isdefined(var_722885f3) || !isdefined(var_8caa0808))
		{
			return;
		}
		var_34fb19f = GetTime();
		if(!isdefined(self.var_ad06727a.var_6e0fda73))
		{
			self.var_ad06727a.var_6e0fda73 = [];
			self.var_ad06727a.var_53fc8847 = -1;
		}
		self.var_ad06727a.var_53fc8847++;
		var_f83a9908 = self.var_ad06727a.var_53fc8847;
		self.var_ad06727a.var_6e0fda73[var_f83a9908] = var_722885f3;
		for(var_7d474c65 = var_f83a9908 - 1; isdefined(self.var_ad06727a.var_6e0fda73[var_7d474c65]);  = var_f83a9908 - 1)
		{
			var_f1646c95 = self.var_ad06727a.var_6e0fda73[var_7d474c65][2] - self.var_ad06727a.var_6e0fda73[var_7d474c65 + 1][2];
			if(var_f1646c95 >= var_f25deb34)
			{
				break;
			}
			self.var_ad06727a.var_6e0fda73[var_7d474c65] = (self.var_ad06727a.var_6e0fda73[var_7d474c65][0], self.var_ad06727a.var_6e0fda73[var_7d474c65][1], self.var_ad06727a.var_6e0fda73[var_7d474c65 + 1][2] + var_f25deb34 + var_f1646c95);
		}
		var_499456d5 = self.var_ad06727a.var_6e0fda73[var_f83a9908];
		while(GetTime() - var_34fb19f < var_570beddf * 1000)
		{
			wait(0.05);
			if(isdefined(self) && function_5b49d38c(self) && isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_6e0fda73) && isdefined(self.var_ad06727a.var_6e0fda73[var_f83a9908]))
			{
				var_499456d5 = self.var_ad06727a.var_6e0fda73[var_f83a9908];
			}
			function_8f3e0f73(var_499456d5, var_8caa0808, var_d900369a, var_aabe9f43, var_5c21ad3d, 1);
			var_499456d5 = (var_499456d5[0], var_499456d5[1], var_499456d5[2] + var_8426578);
			if(isdefined(self) && function_5b49d38c(self) && isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_6e0fda73) && isdefined(self.var_ad06727a.var_6e0fda73[var_f83a9908]))
			{
				self.var_ad06727a.var_6e0fda73[var_f83a9908] = (self.var_ad06727a.var_6e0fda73[var_f83a9908][0], self.var_ad06727a.var_6e0fda73[var_f83a9908][1], self.var_ad06727a.var_6e0fda73[var_f83a9908][2] + var_8426578);
			}
		}
		if(isdefined(self) && function_5b49d38c(self) && isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_6e0fda73) && isdefined(self.var_ad06727a.var_6e0fda73[var_f83a9908]))
		{
			self.var_ad06727a.var_6e0fda73[var_f83a9908] = undefined;
		}
	#/
}

/*
	Name: function_7564640c
	Namespace: namespace_e449108e
	Checksum: 0x2DB4FEDC
	Offset: 0x13C8
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_7564640c(var_37b8a117)
{
	/#
		if(!isdefined(var_37b8a117))
		{
			return "Dev Block strings are not supported";
		}
		if(function_2d525639(var_37b8a117))
		{
			return "Dev Block strings are not supported" + var_37b8a117.var_4be20d44 + "Dev Block strings are not supported";
		}
		if(function_fd096044(var_37b8a117))
		{
			return "Dev Block strings are not supported" + var_37b8a117 function_c7f3ce11() + "Dev Block strings are not supported";
		}
		return "Dev Block strings are not supported" + var_37b8a117;
	#/
}


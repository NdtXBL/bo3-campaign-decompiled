#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_behavior;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_event;
#using scripts\shared\stealth_status;
#using scripts\shared\stealth_tagging;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_aec89ff8;

/*
	Name: function_c35e6aab
	Namespace: namespace_aec89ff8
	Checksum: 0xA1840353
	Offset: 0x2F0
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		namespace_33b293fd::function_a7ee953(function_8d0347b8(self));
	#/
	if(!isdefined(self.var_a43ea74) && self.var_a43ea74 && (!isdefined(self.var_64f4c3f) && self.var_64f4c3f) && (!isdefined(self.var_66a618ee) && self.var_66a618ee))
	{
		return;
	}
	if(isdefined(self.var_ad06727a))
	{
		return;
	}
	if(!isdefined(self.var_ad06727a))
	{
		self.var_ad06727a = function_a8fb77bd();
	}
	self.var_ad06727a.var_1286401a = 1;
	self function_a860a2eb();
	self namespace_8312dbf::function_c35e6aab();
	self namespace_80045451::function_c35e6aab();
	self namespace_c8814633::function_c35e6aab();
	self namespace_f917b91a::function_c35e6aab();
	self namespace_234a4910::function_c35e6aab();
	self.var_44a68a57 = &function_ebcb7adc;
	/#
		self namespace_e449108e::function_148c43f();
	#/
	if(isdefined(self.var_64f4c3f) && self.var_64f4c3f || (isdefined(self.var_66a618ee) && self.var_66a618ee))
	{
		self thread function_39fb9593();
	}
}

/*
	Name: function_fcf56ab5
	Namespace: namespace_aec89ff8
	Checksum: 0xB8AD0EF9
	Offset: 0x4B8
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_fcf56ab5()
{
	if(self namespace_80045451::function_b55533bc())
	{
		self namespace_80045451::function_a2429809("combat");
		self.var_ad06727a.var_36b1815f = undefined;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			self function_76aa5b30(var_5dc5e20a, 0);
		}
		self namespace_8312dbf::function_180adb28();
	}
}

/*
	Name: function_11424fa
	Namespace: namespace_aec89ff8
	Checksum: 0xF8BBF25
	Offset: 0x5B0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_11424fa()
{
	if(self namespace_80045451::function_b55533bc())
	{
		self namespace_80045451::function_a2429809("unaware");
	}
}

/*
	Name: function_b55533bc
	Namespace: namespace_aec89ff8
	Checksum: 0x7E18699C
	Offset: 0x5F8
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_b55533bc()
{
	return isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_1286401a);
}

/*
	Name: function_a860a2eb
	Namespace: namespace_aec89ff8
	Checksum: 0xE1BFA2FC
	Offset: 0x620
	Size: 0x17D
	Parameters: 0
	Flags: None
*/
function function_a860a2eb()
{
	var_270018c4 = self function_c7f3ce11();
	if(isdefined(self.var_ad06727a) && !isdefined(self.var_ad06727a.var_fd87ae1c) && (!isdefined(self.var_98e4910) || self.var_98e4910 != &function_a880fdea))
	{
		self.var_ad06727a.var_fd87ae1c = self.var_98e4910;
	}
	self.var_98e4910 = &function_a880fdea;
	switch(var_270018c4 % 4)
	{
		case 1:
		{
			namespace_96515e2a::function_fbe55294(self, "_context2", "v2");
			break;
		}
		case 2:
		{
			namespace_96515e2a::function_fbe55294(self, "_context2", "v3");
			break;
		}
		case 3:
		{
			namespace_96515e2a::function_fbe55294(self, "_context2", "v4");
			break;
		}
		case default:
		{
			namespace_96515e2a::function_fbe55294(self, "_context2", "v1");
			break;
		}
	}
}

/*
	Name: function_a880fdea
	Namespace: namespace_aec89ff8
	Checksum: 0x7598875C
	Offset: 0x7A8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_a880fdea(var_aa10fce8)
{
	if(isdefined(var_aa10fce8.var_ad06727a) && isdefined(var_aa10fce8.var_ad06727a.var_fd87ae1c))
	{
		[[var_aa10fce8.var_ad06727a.var_fd87ae1c]](var_aa10fce8);
	}
	var_aa10fce8 function_a860a2eb();
}

/*
	Name: function_ebcb7adc
	Namespace: namespace_aec89ff8
	Checksum: 0xD014DB9C
	Offset: 0x828
	Size: 0x105
	Parameters: 13
	Flags: None
*/
function function_ebcb7adc(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b)
{
	if(self.var_730c572d != "combat" && var_f9a179ed > 10)
	{
		var_a16c4666 = self function_501eb072();
		if(function_65f192a6(var_51e6a548) && isdefined(var_88482219) && function_cb3d1c9b(var_88482219, var_a16c4666) < 100)
		{
			return self.var_3a90f16b + 1;
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_39fb9593
	Namespace: namespace_aec89ff8
	Checksum: 0x7C26EE53
	Offset: 0x938
	Size: 0x2DF
	Parameters: 0
	Flags: None
*/
function function_39fb9593()
{
	self notify("hash_39fb9593");
	self endon("hash_39fb9593");
	self endon("hash_128f8789");
	self.var_75a707ea = 1;
	if(!(isdefined(self.var_66a618ee) && self.var_66a618ee))
	{
		self function_77ae41ed(1);
		if(self namespace_d84e54db::function_18775385("sprint"))
		{
			self namespace_d84e54db::function_ceb883cd("sprint", 1);
		}
		if(self namespace_d84e54db::function_18775385("traversals"))
		{
			self namespace_d84e54db::function_ceb883cd("traversals", "procedural");
		}
	}
	self thread function_8be8b843();
	if(level namespace_ad23e503::function_7922262b("stealth_discovered") && function_4bd0142f("stealth_no_return"))
	{
		wait(0.05);
		self namespace_ad06727a::function_fcf56ab5();
		return;
	}
	wait(1);
	self thread function_517ba9d2();
	self thread function_56e538df();
	while(1)
	{
		self waittill("hash_3dce0f1d", var_12131b3c);
		if(!self function_b55533bc() || !isdefined(level.var_ad06727a) || !isdefined(level.var_ad06727a.var_ba093e01))
		{
			return;
		}
		if(var_12131b3c != "combat")
		{
			self notify("hash_db5b33a6", self.var_722885f3, undefined, "infinite");
		}
		else if(var_12131b3c == "combat")
		{
			foreach(var_4e5d2310 in level.var_ad06727a.var_ba093e01)
			{
				namespace_80045451::function_bc0ce0bf(var_4e5d2310);
			}
			self namespace_7829c86f::function_2481442d();
		}
	}
}

/*
	Name: function_8be8b843
	Namespace: namespace_aec89ff8
	Checksum: 0xDAB89D53
	Offset: 0xC20
	Size: 0x115
	Parameters: 0
	Flags: None
*/
function function_8be8b843()
{
	self endon("hash_39fb9593");
	self endon("hash_128f8789");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			self function_b7cc66c6(var_5dc5e20a, 1);
			if(self namespace_80045451::function_b55533bc())
			{
				self namespace_80045451::function_bc0ce0bf(var_5dc5e20a);
			}
		}
		self function_e11ce512();
		self function_fb5720f7();
		wait(1);
	}
}

/*
	Name: function_517ba9d2
	Namespace: namespace_aec89ff8
	Checksum: 0x21A91E59
	Offset: 0xD40
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_517ba9d2()
{
	self endon("hash_39fb9593");
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_8363b8e0", var_12131b3c);
		self notify("hash_3dce0f1d", var_12131b3c);
	}
}

/*
	Name: function_56e538df
	Namespace: namespace_aec89ff8
	Checksum: 0x49E35DF1
	Offset: 0xDA0
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_56e538df()
{
	self endon("hash_39fb9593");
	self endon("hash_128f8789");
	while(1)
	{
		level namespace_ad23e503::function_1ab5ebec("stealth_combat");
		self notify("hash_3dce0f1d", "combat");
		level namespace_ad23e503::function_d3de6822("stealth_combat");
	}
}

/*
	Name: function_1064f733
	Namespace: namespace_aec89ff8
	Checksum: 0x93FC16D4
	Offset: 0xE18
	Size: 0x2DD
	Parameters: 0
	Flags: None
*/
function function_1064f733()
{
	self notify("hash_1064f733");
	self endon("hash_1064f733");
	self endon("hash_128f8789");
	if(isdefined(self.var_75a707ea) && self.var_75a707ea)
	{
		return;
	}
	if(isdefined(self.var_1064f733) && self.var_1064f733)
	{
		return;
	}
	self.var_1064f733 = 1;
	var_17925f9c = 0;
	wait(function_72a94f05(0.1, 3));
	while(1)
	{
		var_a21c667 = 0;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(self function_75754e3a(var_5dc5e20a))
			{
				var_17925f9c = 0;
				var_a21c667 = 1;
				break;
			}
		}
		if(!var_a21c667)
		{
			var_17925f9c = var_17925f9c + 1;
		}
		if(var_17925f9c >= 8)
		{
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				self function_b7cc66c6(var_5dc5e20a, 1);
			}
			self function_e11ce512();
			self function_fb5720f7();
			self function_77ae41ed(1);
			if(self namespace_d84e54db::function_18775385("sprint"))
			{
				self namespace_d84e54db::function_ceb883cd("sprint", 1);
			}
		}
		else
		{
			self function_77ae41ed(0);
			if(self namespace_d84e54db::function_18775385("sprint"))
			{
				self namespace_d84e54db::function_ceb883cd("sprint", 0);
			}
		}
		wait(1);
	}
}

/*
	Name: function_77ae41ed
	Namespace: namespace_aec89ff8
	Checksum: 0xB2C0817
	Offset: 0x1100
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_77ae41ed(var_e0824a47)
{
	if(var_e0824a47)
	{
		if(self namespace_d84e54db::function_18775385("move_mode"))
		{
			if(self namespace_d84e54db::function_18775385("can_become_rusher") && self namespace_d84e54db::function_a0a4c1f1("can_become_rusher"))
			{
				self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
			}
			else
			{
				self namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
			}
		}
	}
	else if(self namespace_d84e54db::function_18775385("move_mode"))
	{
		self namespace_d84e54db::function_ceb883cd("move_mode", "normal");
	}
}


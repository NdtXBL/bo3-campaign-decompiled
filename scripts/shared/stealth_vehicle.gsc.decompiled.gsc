#using scripts\shared\ai_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_event;
#using scripts\shared\stealth_status;
#using scripts\shared\stealth_tagging;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_594759f3;

/*
	Name: function_c35e6aab
	Namespace: namespace_594759f3
	Checksum: 0xABCF8C95
	Offset: 0x1E8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		namespace_33b293fd::function_a7ee953(function_85e4c3b3(self));
	#/
	if(!(isdefined(self.var_a43ea74) && self.var_a43ea74))
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
	self.var_ad06727a.var_164876a9 = 1;
	self namespace_8312dbf::function_c35e6aab();
	self namespace_80045451::function_c35e6aab();
	self namespace_c8814633::function_c35e6aab();
	self.var_730c572d = "unaware";
	self.var_b50edc61 = "unaware";
	self thread function_1664d989();
	/#
		self namespace_e449108e::function_148c43f();
	#/
}

/*
	Name: function_fcf56ab5
	Namespace: namespace_594759f3
	Checksum: 0x11F14A1B
	Offset: 0x318
	Size: 0x103
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
		self namespace_d84e54db::function_b4f5e3b9(0);
	}
}

/*
	Name: function_11424fa
	Namespace: namespace_594759f3
	Checksum: 0xBB275EF2
	Offset: 0x428
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
	Namespace: namespace_594759f3
	Checksum: 0x65E7237F
	Offset: 0x470
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_b55533bc()
{
	return isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_164876a9);
}

/*
	Name: function_1664d989
	Namespace: namespace_594759f3
	Checksum: 0xB1EA3CDB
	Offset: 0x498
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1664d989()
{
	self endon("hash_128f8789");
	self endon("hash_94ff6d85");
	self thread function_6fceb02e(250);
	self thread function_c5738439();
	self namespace_82b91a51::function_5b7e3888("damage", "wake_all");
	self function_cccbd0f7();
}

/*
	Name: function_c5738439
	Namespace: namespace_594759f3
	Checksum: 0x5C3E04A7
	Offset: 0x530
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_c5738439()
{
	self endon("hash_128f8789");
	self endon("hash_94ff6d85");
	self namespace_d84e54db::function_b4f5e3b9(1);
	while(1)
	{
		var_dfcc01fd = undefined;
		self waittill("hash_f8c5dd60", var_dfcc01fd, var_a0ad4f34);
		if(isdefined(var_dfcc01fd))
		{
			switch(var_dfcc01fd.var_4be20d44)
			{
				case "gadget_iff_override":
				case "gadget_iff_override_upgraded":
				{
					self function_cccbd0f7();
					break;
				}
				case default:
				{
					break;
				}
			}
		}
	}
}

/*
	Name: function_6fceb02e
	Namespace: namespace_594759f3
	Checksum: 0x4AD2A667
	Offset: 0x600
	Size: 0x157
	Parameters: 1
	Flags: None
*/
function function_6fceb02e(var_f8456b37)
{
	self notify("hash_6fceb02e");
	self endon("hash_6fceb02e");
	self endon("hash_128f8789");
	self endon("hash_94ff6d85");
	var_41436963 = var_f8456b37 * var_f8456b37;
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(!function_5b49d38c(var_5dc5e20a))
			{
				continue;
			}
			if(function_cb3d1c9b(var_5dc5e20a.var_722885f3, self.var_722885f3) <= var_41436963)
			{
				self function_cccbd0f7();
			}
		}
		wait(function_72a94f05(0.5, 1));
	}
}

/*
	Name: function_cccbd0f7
	Namespace: namespace_594759f3
	Checksum: 0xC80DC4A9
	Offset: 0x760
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_cccbd0f7()
{
	self namespace_d84e54db::function_b4f5e3b9(0);
	self notify("hash_78a7a5b9", "combat");
}


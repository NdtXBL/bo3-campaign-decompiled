#using scripts\cp\_challenges;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_d275cebc;

/*
	Name: function_2dc19561
	Namespace: namespace_d275cebc
	Checksum: 0x12E3FC4C
	Offset: 0x338
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("collectibles", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_d275cebc
	Checksum: 0x2EB0B64
	Offset: 0x380
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_827b82e9 = function_4794dda();
	level.var_fb4674a9 = function_9065d6ea();
	level.var_3efe1e22 = [];
}

/*
	Name: function_5b6b9132
	Namespace: namespace_d275cebc
	Checksum: 0x973F638E
	Offset: 0x3C8
	Size: 0x1D1
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	level.var_d275cebc = [];
	var_a87c5e50 = function_99201f25("collectible", "script_noteworthy");
	if(var_a87c5e50.size == 0)
	{
		return;
	}
	if(!function_148c7e54())
	{
		foreach(var_e81a1399 in var_a87c5e50)
		{
			var_71cdd4fd = function_8765a33c(var_e81a1399);
			namespace_84970cc4::function_69554b3e(level.var_d275cebc, var_71cdd4fd, 0);
		}
		namespace_dabbe128::function_356a4ee1(&function_aebcf025);
		namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
		break;
	}
	foreach(var_e81a1399 in var_a87c5e50)
	{
		var_e81a1399 function_50ccee8d();
	}
}

/*
	Name: function_37aecd21
	Namespace: namespace_d275cebc
	Checksum: 0x5D3EEB48
	Offset: 0x5A8
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_37aecd21()
{
	if(!isdefined(level.var_d275cebc))
	{
		return;
	}
	foreach(var_71cdd4fd in level.var_d275cebc)
	{
		var_3efe1e22 = level.var_3efe1e22[var_71cdd4fd.var_e81a1399.var_6df9264];
		if(isdefined(var_3efe1e22))
		{
			var_71cdd4fd.var_4dbf3ae3.var_722885f3 = var_71cdd4fd.var_4dbf3ae3.var_722885f3 + var_3efe1e22.var_a4e8111c;
		}
	}
}

/*
	Name: function_93523442
	Namespace: namespace_d275cebc
	Checksum: 0xEF876F8D
	Offset: 0x6A8
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function function_93523442(var_977e0f67, var_f8456b37, var_a4e8111c)
{
	if(!isdefined(var_f8456b37))
	{
		var_f8456b37 = 60;
	}
	if(!isdefined(var_a4e8111c))
	{
		var_a4e8111c = (0, 0, 0);
	}
	if(!isdefined(level.var_3efe1e22[var_977e0f67]))
	{
		level.var_3efe1e22[var_977e0f67] = function_a8fb77bd();
	}
	level.var_3efe1e22[var_977e0f67].var_f8456b37 = var_f8456b37;
	level.var_3efe1e22[var_977e0f67].var_a4e8111c = var_a4e8111c;
}

/*
	Name: function_148c7e54
	Namespace: namespace_d275cebc
	Checksum: 0x5BACD759
	Offset: 0x768
	Size: 0x29
	Parameters: 0
	Flags: Private
*/
function private function_148c7e54()
{
	return isdefined(level.var_bca96223) && level.var_bca96223 || function_27c72c1b();
}

/*
	Name: function_aebcf025
	Namespace: namespace_d275cebc
	Checksum: 0x976820EC
	Offset: 0x7A0
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	if(!isdefined(self.var_b3dc8451))
	{
		self.var_b3dc8451 = [];
	}
	foreach(var_71cdd4fd in level.var_d275cebc)
	{
		if(self function_84368297("PlayerStatsByMap", level.var_fb4674a9, "collectibles", var_71cdd4fd.var_5e76f0af))
		{
			self.var_b3dc8451[var_71cdd4fd.var_e81a1399.var_6df9264] = 1;
			var_71cdd4fd.var_e81a1399 function_64218ffc(self);
			function_e09b765c(var_71cdd4fd.var_79f5c705, self);
			var_71cdd4fd.var_4dbf3ae3 function_64218ffc(self);
			continue;
		}
		self.var_b3dc8451[var_71cdd4fd.var_e81a1399.var_6df9264] = 0;
	}
	self function_3955ccef();
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_d275cebc
	Checksum: 0x3B028329
	Offset: 0x970
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self thread function_332e2cfd();
}

/*
	Name: function_6ba0709f
	Namespace: namespace_d275cebc
	Checksum: 0x724B6757
	Offset: 0x998
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_6ba0709f()
{
	self endon("hash_643a7daf");
	if(!function_7bb9f252(function_9065d6ea()))
	{
		return;
	}
	while(1)
	{
		level namespace_82b91a51::function_5b7e3888("checkpoint_save", "_checkpoint_save_safe");
		self function_d100c544();
	}
}

/*
	Name: function_332e2cfd
	Namespace: namespace_d275cebc
	Checksum: 0x5EC59084
	Offset: 0xA20
	Size: 0x367
	Parameters: 0
	Flags: None
*/
function function_332e2cfd()
{
	self endon("hash_643a7daf");
	if(!function_7bb9f252(function_9065d6ea()))
	{
		return;
	}
	while(1)
	{
		level waittill("hash_2693b45");
		if(!isdefined(self.var_b3dc8451))
		{
			self.var_b3dc8451 = [];
		}
		foreach(var_71cdd4fd in level.var_d275cebc)
		{
			var_6b074374 = self function_70b41d41(var_71cdd4fd.var_5e76f0af);
			var_32553838 = self function_84368297("PlayerStatsByMap", level.var_fb4674a9, "collectibles", var_71cdd4fd.var_5e76f0af);
			if(isdefined(var_6b074374) && var_6b074374 && (!isdefined(var_32553838) && var_32553838))
			{
				self.var_b3dc8451[var_71cdd4fd.var_e81a1399.var_6df9264] = 1;
				var_71cdd4fd.var_e81a1399 function_64218ffc(self);
				function_e09b765c(var_71cdd4fd.var_79f5c705, self);
				var_71cdd4fd.var_4dbf3ae3 function_64218ffc(self);
				self function_8f67433b("PlayerStatsByMap", level.var_fb4674a9, "collectibles", var_71cdd4fd.var_5e76f0af, 1);
				self function_dde1ac37("picked_up_collectible", 500);
				function_9a7ed193(self);
				self function_a8d8b9c7();
				self namespace_f74b04eb::function_96ed590f("career_collectibles");
				continue;
			}
			if(!(isdefined(self function_84368297("PlayerStatsByMap", level.var_fb4674a9, "collectibles", var_71cdd4fd.var_5e76f0af)) && self function_84368297("PlayerStatsByMap", level.var_fb4674a9, "collectibles", var_71cdd4fd.var_5e76f0af)))
			{
				self.var_b3dc8451[var_71cdd4fd.var_e81a1399.var_6df9264] = 0;
			}
		}
		self function_a8d8b9c7();
	}
}

/*
	Name: function_b963f25
	Namespace: namespace_d275cebc
	Checksum: 0x7B07F2F9
	Offset: 0xD90
	Size: 0xB7
	Parameters: 1
	Flags: Private
*/
function private function_b963f25(var_e81a1399)
{
	var_e81a1399.var_f8456b37 = 60;
	var_e81a1399.var_a4e8111c = VectorScale((0, 0, 1), 5);
	var_3efe1e22 = level.var_3efe1e22[var_e81a1399.var_6df9264];
	if(isdefined(var_3efe1e22))
	{
		var_e81a1399.var_f8456b37 = var_3efe1e22.var_f8456b37;
		var_e81a1399.var_a4e8111c = var_e81a1399.var_a4e8111c + var_3efe1e22.var_a4e8111c;
	}
	return var_e81a1399;
}

/*
	Name: function_8765a33c
	Namespace: namespace_d275cebc
	Checksum: 0x50815F5B
	Offset: 0xE50
	Size: 0x33B
	Parameters: 1
	Flags: None
*/
function function_8765a33c(var_e81a1399)
{
	var_e81a1399 = function_b963f25(var_e81a1399);
	var_9cec4e17 = function_9b7fda5e("trigger_radius_use", var_e81a1399.var_722885f3 + var_e81a1399.var_a4e8111c, 0, var_e81a1399.var_f8456b37, var_e81a1399.var_f8456b37);
	var_9cec4e17 function_1d5013fa();
	var_9cec4e17 function_bb863f19();
	var_9cec4e17 function_1f80b3d5();
	var_9cec4e17 function_dc378587("none");
	var_9cec4e17 function_e68ee88a("HINT_INTERACTIVE_PROMPT");
	var_9cec4e17 function_d5eb00e3(&"COLLECTIBLE_PICK_UP");
	var_483c3c51 = function_483c3c51(var_e81a1399.var_6df9264);
	var_837a6185 = namespace_a230c2b1::function_be21f511("any", var_9cec4e17, function_84970cc4(var_e81a1399), (0, 0, 0), var_483c3c51);
	var_837a6185 namespace_a230c2b1::function_1e5cb2cc("any");
	var_837a6185 namespace_a230c2b1::function_df0e9e69(0.35);
	var_837a6185 namespace_a230c2b1::function_a09b1ac1("allies");
	var_837a6185 namespace_a230c2b1::function_bd903f5c("any");
	var_837a6185.var_e81a1399 = var_e81a1399;
	var_837a6185.var_3c8ea097 = &function_3c8ea097;
	var_837a6185.var_cfce9b82 = &function_cfce9b82;
	var_837a6185.var_db0f901 = 1;
	var_837a6185.var_722885f3 = var_e81a1399.var_722885f3;
	var_837a6185.var_6ab6f4fd = var_837a6185.var_6ab6f4fd;
	if(isdefined(var_e81a1399.var_8202763a))
	{
		var_837a6185.var_5e76f0af = var_e81a1399.var_8202763a - 1;
	}
	else
	{
		var_837a6185.var_5e76f0af = function_b6b79a0(function_f45850ec(var_e81a1399.var_6df9264, var_e81a1399.var_6df9264.size - 2)) - 1;
	}
	return var_837a6185;
}

/*
	Name: function_3c8ea097
	Namespace: namespace_d275cebc
	Checksum: 0x3E3B4033
	Offset: 0x1198
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_3c8ea097(var_6bfe1586)
{
	var_6bfe1586.var_b3dc8451[self.var_e81a1399.var_6df9264] = 1;
	self.var_e81a1399 function_64218ffc(var_6bfe1586);
	self namespace_a230c2b1::function_5815ab75(var_6bfe1586);
	self.var_4dbf3ae3 function_64218ffc(var_6bfe1586);
	if(function_7bb9f252(function_9065d6ea()))
	{
		var_6bfe1586 function_8f67433b("PlayerStatsByMap", level.var_fb4674a9, "collectibles", self.var_5e76f0af, 1);
		var_6bfe1586 function_dde1ac37("picked_up_collectible", 500);
		function_9a7ed193(var_6bfe1586);
		var_6bfe1586 function_8acd43fd(self.var_5e76f0af, 1);
		var_6bfe1586 function_a8d8b9c7();
	}
	namespace_82b91a51::function_964b7eb7(var_6bfe1586, function_483c3c51("COLLECTIBLE_DISCOVERED"));
	var_6bfe1586 function_b8862210("uin_collectible_pickup", var_6bfe1586);
	var_6bfe1586 notify("hash_eb5cc7bc");
	var_6bfe1586 namespace_f74b04eb::function_96ed590f("career_collectibles");
}

/*
	Name: function_cfce9b82
	Namespace: namespace_d275cebc
	Checksum: 0x7FCDCE93
	Offset: 0x1370
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_cfce9b82(var_6bfe1586)
{
}

/*
	Name: function_ccb1e08d
	Namespace: namespace_d275cebc
	Checksum: 0x52865663
	Offset: 0x1388
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_ccb1e08d(var_fb4674a9)
{
	if(!isdefined(var_fb4674a9))
	{
		var_fb4674a9 = function_9065d6ea();
	}
	if(!isdefined(var_fb4674a9))
	{
		return;
	}
	var_8a9d11b = 0;
	for(var_a34073af = 0; var_a34073af < 10; var_a34073af++)
	{
		if(self function_84368297("PlayerStatsByMap", var_fb4674a9, "collectibles", var_a34073af))
		{
			var_8a9d11b++;
		}
	}
	return var_8a9d11b;
}

/*
	Name: function_3955ccef
	Namespace: namespace_d275cebc
	Checksum: 0x55FC12C4
	Offset: 0x1440
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_3955ccef()
{
	var_8a9d11b = self function_ccb1e08d(function_9065d6ea());
	var_b95ead22 = function_970da1e7(function_9065d6ea());
	if(var_8a9d11b == var_b95ead22)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_e1aad2b1
	Namespace: namespace_d275cebc
	Checksum: 0xCFFD827F
	Offset: 0x14C8
	Size: 0xD1
	Parameters: 0
	Flags: Private
*/
function private function_e1aad2b1()
{
	self endon("hash_643a7daf");
	self notify("hash_e1aad2b1");
	self endon("hash_e1aad2b1");
	self namespace_82b91a51::function_c9aa1ff("stats_changed", 2);
	if(isdefined(self) && self function_b2cbaf20())
	{
		self function_8f67433b("PlayerStatsList", "ALL_COLLECTIBLES_COLLECTED", "statValue", 1);
		self function_f07412c0("cp_medal_all_collectibles");
		self notify("hash_52c9c74a", "CP_ALL_COLLECTIBLES");
	}
}

/*
	Name: function_a8d8b9c7
	Namespace: namespace_d275cebc
	Checksum: 0x6D58962F
	Offset: 0x15A8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a8d8b9c7()
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	if(self function_3955ccef())
	{
		self function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "allCollectiblesCollected", 1);
		self notify("hash_52c9c74a", "CP_MISSION_COLLECTIBLES");
	}
	self thread function_e1aad2b1();
}

/*
	Name: function_8acd43fd
	Namespace: namespace_d275cebc
	Checksum: 0xFB53950C
	Offset: 0x1658
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_8acd43fd(var_5c0b5b64, var_9368ba0c)
{
	self function_b26abbde("collectibles" + var_5c0b5b64 + "value", var_9368ba0c);
}

/*
	Name: function_70b41d41
	Namespace: namespace_d275cebc
	Checksum: 0x4BF1DF55
	Offset: 0x16A8
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function function_70b41d41(var_5c0b5b64)
{
	return self function_ebacf39a("collectibles" + var_5c0b5b64 + "value");
}

/*
	Name: function_d100c544
	Namespace: namespace_d275cebc
	Checksum: 0xC9577C27
	Offset: 0x16E8
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_d100c544()
{
	foreach(var_71cdd4fd in level.var_d275cebc)
	{
		self function_b016cdb3("collectibles" + var_71cdd4fd.var_5e76f0af + "value");
	}
}


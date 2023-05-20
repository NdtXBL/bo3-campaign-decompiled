#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_431cac9;

/*
	Name: function_3b6587d6
	Namespace: namespace_431cac9
	Checksum: 0xFCD93818
	Offset: 0xBF0
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_3b6587d6(var_c1e63f13, var_cbb15570)
{
	var_cecf22e2 = function_6ada35ba(var_cbb15570 + "_switch", "targetname");
	if(var_c1e63f13)
	{
		var_cecf22e2 function_48f26766();
		var_cecf22e2 function_4083a98e();
	}
	else
	{
		var_cecf22e2 function_8c8e79fe();
		var_cecf22e2 function_422037f5();
	}
	function_bab1ff00(var_cbb15570, !var_c1e63f13);
}

/*
	Name: function_b26ca094
	Namespace: namespace_431cac9
	Checksum: 0xD3D6D725
	Offset: 0xCC8
	Size: 0x917
	Parameters: 6
	Flags: None
*/
function function_b26ca094(var_959da48b, var_59dc7746, var_f70ba7ec, var_e4075f18, var_b77c8968, var_1e2eebb8)
{
	if(!isdefined(var_59dc7746))
	{
		var_59dc7746 = 0;
	}
	if(!isdefined(var_f70ba7ec))
	{
		var_f70ba7ec = 0;
	}
	if(!isdefined(var_e4075f18))
	{
		var_e4075f18 = 0;
	}
	if(!isdefined(var_1e2eebb8))
	{
		var_1e2eebb8 = 0;
	}
	var_aa7aca48 = function_99201f25(var_959da48b, "groupname");
	if(function_6e2770d8(var_aa7aca48) && var_aa7aca48.size >= 3)
	{
		/#
			function_895b00("Dev Block strings are not supported");
		#/
	}
	var_bcf73ab6 = [];
	var_398ffcb7 = [];
	var_87a9e25c = [];
	foreach(var_6f05825 in var_aa7aca48)
	{
		if(var_6f05825.var_e6e9b8de == "script_brushmodel")
		{
			if(var_6f05825.var_170527fb === "mobile_destructible")
			{
				if(isdefined(var_6f05825.var_bcf73ab6) && var_6f05825.var_bcf73ab6.size > 0)
				{
					var_6f05825.var_bcf73ab6 = namespace_84970cc4::function_5c13fae0(var_6f05825.var_bcf73ab6);
				}
				var_6f05825 thread function_cdf9cde7();
				if(!isdefined(var_bcf73ab6))
				{
					var_bcf73ab6 = [];
				}
				else if(!function_6e2770d8(var_bcf73ab6))
				{
					var_bcf73ab6 = function_84970cc4(var_bcf73ab6);
				}
				var_bcf73ab6[var_bcf73ab6.size] = var_6f05825;
			}
			else if(isdefined(var_6f05825.var_75cccf1) && var_6f05825.var_75cccf1.size > 0)
			{
				var_6f05825.var_75cccf1 = namespace_84970cc4::function_5c13fae0(var_6f05825.var_75cccf1);
			}
			var_f9a1ddd6 = var_6f05825;
			continue;
		}
		if(var_6f05825.var_e6e9b8de == "script_model")
		{
			if(var_6f05825.var_170527fb === "mobile_weapon")
			{
				if(isdefined(var_6f05825.var_87a9e25c) && var_6f05825.var_87a9e25c.size > 0)
				{
					var_6f05825.var_87a9e25c = namespace_84970cc4::function_5c13fae0(var_6f05825.var_87a9e25c);
				}
				var_6f05825 function_50ccee8d();
				if(!isdefined(var_87a9e25c))
				{
					var_87a9e25c = [];
				}
				else if(!function_6e2770d8(var_87a9e25c))
				{
					var_87a9e25c = function_84970cc4(var_87a9e25c);
				}
				var_87a9e25c[var_87a9e25c.size] = var_6f05825;
				continue;
			}
			if(isdefined(var_6f05825.var_398ffcb7) && var_6f05825.var_398ffcb7.size > 0 && var_6f05825.var_170527fb != "minigun_auto")
			{
				var_6f05825.var_398ffcb7 = namespace_84970cc4::function_5c13fae0(var_6f05825.var_398ffcb7);
			}
			if(!isdefined(var_398ffcb7))
			{
				var_398ffcb7 = [];
			}
			else if(!function_6e2770d8(var_398ffcb7))
			{
				var_398ffcb7 = function_84970cc4(var_398ffcb7);
			}
			var_398ffcb7[var_398ffcb7.size] = var_6f05825;
		}
	}
	function_81403b2f(var_aa7aca48, var_f9a1ddd6);
	var_aa7aca48 = namespace_84970cc4::function_d010fbb9(var_aa7aca48, var_bcf73ab6);
	var_aa7aca48 = namespace_84970cc4::function_d010fbb9(var_aa7aca48, var_398ffcb7);
	var_aa7aca48 = namespace_84970cc4::function_d010fbb9(var_aa7aca48, var_87a9e25c);
	var_f9a1ddd6.var_bcf73ab6 = var_bcf73ab6;
	var_f9a1ddd6.var_398ffcb7 = var_398ffcb7;
	var_f9a1ddd6.var_87a9e25c = var_87a9e25c;
	var_d199cd64 = function_525ae497(var_bcf73ab6, var_398ffcb7, 0, 0);
	var_d199cd64 = function_525ae497(var_d199cd64, var_87a9e25c, 0, 0);
	foreach(var_f00752c0 in var_d199cd64)
	{
		var_f00752c0 function_37f7858a(var_f9a1ddd6);
	}
	if(isdefined(var_59dc7746) && var_59dc7746)
	{
		foreach(var_e28769a6 in var_aa7aca48)
		{
			if(isdefined(var_e4075f18) && var_e4075f18)
			{
				if(var_e28769a6.var_6df9264 != "wpn_t7_mingun_world")
				{
					if(!isdefined(var_b77c8968))
					{
						var_83f53318 = namespace_82b91a51::function_b9fd52a4("wpn_t7_mingun_world", var_e28769a6.var_722885f3, var_e28769a6.var_6ab6f4fd);
					}
					else
					{
						var_83f53318 = namespace_82b91a51::function_b9fd52a4(var_b77c8968, var_e28769a6.var_722885f3, var_e28769a6.var_6ab6f4fd);
					}
				}
				else
				{
					var_83f53318 = var_e28769a6;
				}
			}
			else
			{
				var_83f53318 = namespace_2f06d687::function_7387a40a(var_e28769a6);
				if(isdefined(var_f70ba7ec) && var_f70ba7ec)
				{
					var_83f53318 namespace_72ee5da4::function_f676f983();
				}
			}
			var_83f53318 function_37f7858a(var_f9a1ddd6);
			if(isdefined(var_1e2eebb8) && var_1e2eebb8)
			{
				var_83f53318 function_50ccee8d();
			}
			else
			{
				var_409f4c83 = var_83f53318 function_c7b0a169(var_e4075f18, var_1e2eebb8);
				var_409f4c83 function_37f7858a(var_f9a1ddd6);
			}
			if(!isdefined(var_f9a1ddd6.var_75cccf1))
			{
				var_f9a1ddd6.var_75cccf1 = [];
			}
			if(!isdefined(var_f9a1ddd6.var_75cccf1))
			{
				var_f9a1ddd6.var_75cccf1 = [];
			}
			else if(!function_6e2770d8(var_f9a1ddd6.var_75cccf1))
			{
				var_f9a1ddd6.var_75cccf1 = function_84970cc4(var_f9a1ddd6.var_75cccf1);
			}
			var_f9a1ddd6.var_75cccf1[var_f9a1ddd6.var_75cccf1.size] = var_83f53318;
		}
	}
	return var_f9a1ddd6;
}

/*
	Name: function_bc5f7909
	Namespace: namespace_431cac9
	Checksum: 0x13B4FA5E
	Offset: 0x15E8
	Size: 0x117
	Parameters: 1
	Flags: None
*/
function function_bc5f7909(var_2ffd9881)
{
	self function_48f26766();
	self namespace_16f9ecd3::function_e228c18a(1);
	var_1c023cce = function_9b7fda5e("trigger_radius_use", self.var_722885f3);
	var_1c023cce function_1d5013fa();
	var_1c023cce function_d5eb00e3(&"CP_MI_CAIRO_LOTUS_GRAB_SMAW");
	var_1c023cce function_e68ee88a("HINT_NOICON");
	var_1c023cce function_8f279593();
	var_1c023cce.var_170527fb = "trig_weapon";
	self.var_1c023cce = var_1c023cce;
	self thread function_d2eba93d(var_1c023cce, var_2ffd9881);
	return var_1c023cce;
}

/*
	Name: function_d2eba93d
	Namespace: namespace_431cac9
	Checksum: 0xA37EE54E
	Offset: 0x1708
	Size: 0x149
	Parameters: 2
	Flags: None
*/
function function_d2eba93d(var_1c023cce, var_2ffd9881)
{
	self endon("hash_128f8789");
	self thread function_951a5eb();
	var_1c023cce waittill("hash_4dbf3ae3", var_5dc5e20a);
	var_1d6db0a3 = function_c4d5ec1f(var_2ffd9881);
	var_d25074b5 = var_1d6db0a3.var_c0b2188 + var_1d6db0a3.var_453c0f47;
	var_6bf2ec5e = var_5dc5e20a function_c973f2ce(var_1d6db0a3);
	if(var_5dc5e20a function_2103ff4b(var_1d6db0a3) && var_6bf2ec5e >= var_d25074b5)
	{
		self thread function_d2eba93d(var_1c023cce, var_2ffd9881);
		return;
	}
	var_1c023cce function_dc8c8404();
	var_5dc5e20a thread function_73647b0a(var_2ffd9881);
	self notify("hash_951a5eb");
}

/*
	Name: function_951a5eb
	Namespace: namespace_431cac9
	Checksum: 0x36B4DC1
	Offset: 0x1860
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_951a5eb()
{
	self endon("hash_128f8789");
	self waittill("hash_951a5eb");
	self function_50ccee8d();
	if(isdefined(self.var_1c023cce))
	{
		self.var_1c023cce function_dc8c8404();
	}
}

/*
	Name: function_73647b0a
	Namespace: namespace_431cac9
	Checksum: 0xCC277EF9
	Offset: 0x18C8
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_73647b0a(var_2ffd9881)
{
	self endon("hash_128f8789");
	var_1d6db0a3 = function_c4d5ec1f(var_2ffd9881);
	if(self function_2103ff4b(var_1d6db0a3))
	{
		self function_704b802a(var_1d6db0a3);
		self function_67795b5f(var_1d6db0a3, var_1d6db0a3.var_c0b2188);
	}
	else
	{
		self function_860a040a(var_1d6db0a3);
		self function_cb53a41e(var_1d6db0a3);
		self notify("hash_ce6dc32f");
		self thread function_d3cb8a55();
	}
}

/*
	Name: function_d3cb8a55
	Namespace: namespace_431cac9
	Checksum: 0x4DA66FE7
	Offset: 0x19C0
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_d3cb8a55()
{
	self notify("hash_b729e030");
	self endon("hash_b729e030");
	self endon("hash_128f8789");
	var_67aa166f = 0;
	var_90911853 = function_c4d5ec1f("launcher_standard");
	var_3c3fc8a8 = function_c4d5ec1f("minigun_lotus");
	self.var_271f03e = 0;
	while(self function_2103ff4b(var_90911853, 1))
	{
		self waittill("hash_aa1618b0");
		if(!level namespace_ad23e503::function_7922262b("gunship_high_out_of_battle"))
		{
			if(self function_48c6a3a2() == var_90911853 && self function_c973f2ce(var_90911853) > 0)
			{
				self.var_271f03e = 0;
			}
			if(self function_48c6a3a2() != var_90911853 && self function_48c6a3a2() != var_3c3fc8a8 && self function_c973f2ce(var_90911853) > 0)
			{
				self.var_271f03e = self.var_271f03e + 1;
			}
			if(self.var_271f03e >= 10)
			{
				self namespace_82b91a51::function_32d40124(&"COOP_EQUIP_XM53", 0);
				var_67aa166f = var_67aa166f + 1;
				self.var_271f03e = 0;
				wait(10);
				if(var_67aa166f >= 3)
				{
					return;
				}
			}
		}
	}
}

/*
	Name: function_6fc3995f
	Namespace: namespace_431cac9
	Checksum: 0xF8A02C9A
	Offset: 0x1BD0
	Size: 0x20F
	Parameters: 0
	Flags: None
*/
function function_6fc3995f()
{
	var_9fa93f20 = function_84970cc4("casino", "medical", "merchant", "restaurant", "tattoo");
	foreach(var_7b81749 in var_9fa93f20)
	{
		switch(var_7b81749)
		{
			case "casino":
			{
				var_2e3ccdfd = 5;
				break;
			}
			case "medical":
			{
				var_2e3ccdfd = 1;
				break;
			}
			case "merchant":
			{
				var_2e3ccdfd = 2;
				break;
			}
			case "restaurant":
			{
				var_2e3ccdfd = 4;
				break;
			}
			case "tattoo":
			{
				var_2e3ccdfd = 3;
				break;
			}
		}
		var_989cfb0 = function_99201f25(var_7b81749 + "_shop", "script_noteworthy");
		foreach(var_6ff04f8d in var_989cfb0)
		{
			var_6ff04f8d namespace_71e9cb84::function_74d6b22f("mobile_shop_fxanims", var_2e3ccdfd);
			namespace_82b91a51::function_76f13293();
		}
	}
}

/*
	Name: function_c7b0a169
	Namespace: namespace_431cac9
	Checksum: 0xC680D3FA
	Offset: 0x1DE8
	Size: 0x1FD
	Parameters: 2
	Flags: None
*/
function function_c7b0a169(var_e4075f18, var_1e2eebb8)
{
	if(isdefined(var_1e2eebb8) && var_1e2eebb8)
	{
		self function_48f26766();
	}
	self namespace_16f9ecd3::function_e228c18a(1);
	var_409f4c83 = function_9b7fda5e("trigger_radius_use", self.var_722885f3);
	var_409f4c83 function_1d5013fa();
	var_409f4c83 function_d5eb00e3(&"CP_MI_CAIRO_LOTUS_GRAB_MINIGUN");
	var_409f4c83 function_e68ee88a("HINT_NOICON");
	var_409f4c83 function_8f279593();
	var_409f4c83.var_170527fb = "trig_minigun";
	self.var_409f4c83 = var_409f4c83;
	self thread function_e0fd159d(var_409f4c83, var_e4075f18, var_1e2eebb8);
	var_3c3fc8a8 = function_c4d5ec1f("minigun_lotus");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_2103ff4b(var_3c3fc8a8))
		{
			var_409f4c83 function_64218ffc(var_5dc5e20a);
		}
	}
	return var_409f4c83;
}

/*
	Name: function_e0fd159d
	Namespace: namespace_431cac9
	Checksum: 0x35AD140E
	Offset: 0x1FF0
	Size: 0x1C5
	Parameters: 3
	Flags: None
*/
function function_e0fd159d(var_409f4c83, var_e4075f18, var_1e2eebb8)
{
	self endon("hash_128f8789");
	self thread function_28a4f84e(var_e4075f18, var_1e2eebb8);
	var_409f4c83 waittill("hash_4dbf3ae3", var_5dc5e20a);
	var_3c3fc8a8 = function_c4d5ec1f("minigun_lotus");
	if(var_5dc5e20a function_2103ff4b(var_3c3fc8a8))
	{
		self thread function_e0fd159d(var_409f4c83, var_e4075f18, var_1e2eebb8);
		return;
	}
	var_409f4c83 function_dc8c8404();
	var_5dc5e20a thread function_25899d6a();
	self notify("hash_f779ed1b");
	level notify("hash_3987ce06");
	var_d4caa2c2 = function_99201f25("trig_minigun", "targetname");
	foreach(var_8811f25f in var_d4caa2c2)
	{
		var_8811f25f function_64218ffc(var_5dc5e20a);
	}
	self notify("hash_28a4f84e");
}

/*
	Name: function_28a4f84e
	Namespace: namespace_431cac9
	Checksum: 0x1A724DDA
	Offset: 0x21C0
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_28a4f84e(var_e4075f18, var_1e2eebb8)
{
	self endon("hash_128f8789");
	self waittill("hash_28a4f84e");
	if(isdefined(var_e4075f18) && var_e4075f18)
	{
		if(isdefined(var_1e2eebb8) && var_1e2eebb8)
		{
			self function_50ccee8d();
		}
		else
		{
			self function_dc8c8404();
		}
	}
	else
	{
		self.var_3e3a41eb = 1;
		self notify("hash_128f8789");
		if(!function_5b49d38c(self))
		{
			self function_dc8c8404();
		}
	}
}

/*
	Name: function_25899d6a
	Namespace: namespace_431cac9
	Checksum: 0x6F1433C3
	Offset: 0x2290
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_25899d6a(var_cb36173a)
{
	self endon("hash_128f8789");
	var_3c3fc8a8 = function_c4d5ec1f("minigun_lotus");
	self function_860a040a(var_3c3fc8a8);
	self function_cb53a41e(var_3c3fc8a8);
	self notify("hash_2dcf6940");
	self thread function_a6145523();
}

/*
	Name: function_a5f8943a
	Namespace: namespace_431cac9
	Checksum: 0xFD3FB71C
	Offset: 0x2328
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_a5f8943a(var_1d6db0a3)
{
	self endon("hash_128f8789");
	self endon("hash_23ffb162");
	var_6bf2ec5e = self function_c973f2ce(var_1d6db0a3);
	while(var_6bf2ec5e > 0)
	{
		self.var_cb36173a = var_6bf2ec5e;
		var_6bf2ec5e = self function_c973f2ce(var_1d6db0a3);
		wait(0.05);
	}
	self.var_cb36173a = var_6bf2ec5e;
}

/*
	Name: function_f45c9a02
	Namespace: namespace_431cac9
	Checksum: 0x35A60FE5
	Offset: 0x23C8
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_f45c9a02()
{
	self endon("hash_128f8789");
	self endon("hash_23ffb162");
	self waittill("hash_1194c978");
	self waittill("hash_1194c978");
	self notify("hash_23ffb162");
}

/*
	Name: function_e967f52
	Namespace: namespace_431cac9
	Checksum: 0x8AC69D34
	Offset: 0x2418
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_e967f52(var_cb36173a)
{
	self endon("hash_128f8789");
	var_1d6db0a3 = function_c4d5ec1f("minigun_lotus");
	self function_1f3745c0(var_1d6db0a3);
	self notify("hash_35d77d15");
	var_5cf8dff2 = namespace_82b91a51::function_b9fd52a4("wpn_t7_mingun_world", self.var_722885f3 + VectorScale((0, 0, 1), 12), self.var_6ab6f4fd);
	var_5cf8dff2 function_822f0cc5(var_5cf8dff2.var_722885f3, (0, 0, 0));
	var_5cf8dff2.var_cb36173a = self.var_cb36173a;
	self.var_cb36173a = undefined;
	var_8811f25f = function_9b7fda5e("trigger_radius_use", var_5cf8dff2.var_722885f3);
	var_8811f25f function_1d5013fa();
	var_8811f25f function_e68ee88a("HINT_NOICON");
	var_8811f25f function_8f279593();
	var_8811f25f function_37f7858a(var_5cf8dff2);
}

/*
	Name: function_a6145523
	Namespace: namespace_431cac9
	Checksum: 0xB22580B6
	Offset: 0x25A8
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_a6145523()
{
	self notify("hash_763a826a");
	self endon("hash_763a826a");
	self endon("hash_128f8789");
	var_1b2c2712 = 0;
	var_3c3fc8a8 = function_c4d5ec1f("minigun_lotus");
	var_90911853 = function_c4d5ec1f("launcher_standard");
	self.var_3bb3fc6d = 0;
	while(self function_2103ff4b(var_3c3fc8a8, 1))
	{
		self waittill("hash_aa1618b0");
		if(!level namespace_ad23e503::function_7922262b("gunship_high_out_of_battle"))
		{
			if(self function_48c6a3a2() == var_3c3fc8a8 && self function_c973f2ce(var_3c3fc8a8) > 0)
			{
				self.var_3bb3fc6d = 0;
			}
			if(self function_48c6a3a2() != var_3c3fc8a8 && self function_48c6a3a2() != var_90911853 && self function_c973f2ce(var_3c3fc8a8) > 0)
			{
				self.var_3bb3fc6d = self.var_3bb3fc6d + 1;
			}
			if(self.var_3bb3fc6d >= 10)
			{
				self namespace_82b91a51::function_32d40124(&"CP_MI_CAIRO_LOTUS_MINIGUN_REMINDER", 0);
				var_1b2c2712 = var_1b2c2712 + 1;
				self.var_3bb3fc6d = 0;
				wait(10);
				if(var_1b2c2712 >= 3)
				{
					return;
				}
			}
		}
	}
}

/*
	Name: function_5408b0dd
	Namespace: namespace_431cac9
	Checksum: 0xC8B50409
	Offset: 0x27B8
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_5408b0dd()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_ac865287();
	}
}

/*
	Name: function_ac865287
	Namespace: namespace_431cac9
	Checksum: 0x89CA954D
	Offset: 0x2850
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_ac865287()
{
	self notify("hash_68eb28e6");
	self endon("hash_68eb28e6");
	self endon("hash_128f8789");
	var_d13f855e = self function_48c6a3a2();
	var_b17e7b20 = function_c4d5ec1f("shotgun_pump_taser");
	while(self function_2103ff4b(var_b17e7b20, 1))
	{
		if(var_d13f855e == var_b17e7b20)
		{
			wait(20);
		}
		else
		{
			wait(2);
			self namespace_82b91a51::function_32d40124(&"CP_MI_CAIRO_LOTUS_SHOTGUN_REMINDER", 0);
			return;
		}
	}
}

/*
	Name: function_285a93c9
	Namespace: namespace_431cac9
	Checksum: 0x13AE6499
	Offset: 0x2930
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_285a93c9()
{
	var_e9ddc8f2 = function_99201f25("trig_juiced_shotgun", "targetname");
	foreach(var_e16f479 in var_e9ddc8f2)
	{
		var_e16f479 function_175e6b8e(1);
		var_e16f479 function_d5eb00e3(&"CP_MI_CAIRO_LOTUS_GRAB_SHOTGUN");
		var_e16f479 thread function_5f5b1e5f();
	}
}

/*
	Name: function_5f5b1e5f
	Namespace: namespace_431cac9
	Checksum: 0x467E860C
	Offset: 0x2A30
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_5f5b1e5f()
{
	self endon("hash_128f8789");
	var_b17e7b20 = function_c4d5ec1f("shotgun_pump_taser");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_6bfe1586);
		if(!var_6bfe1586 function_2103ff4b(var_b17e7b20))
		{
			var_6bfe1586 function_860a040a(var_b17e7b20);
		}
		var_6bfe1586 function_cb53a41e(var_b17e7b20);
	}
}

/*
	Name: function_69533bc9
	Namespace: namespace_431cac9
	Checksum: 0x81448551
	Offset: 0x2AE0
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_69533bc9()
{
	namespace_2f06d687::function_2b37a3c9("robot_level_1", "script_noteworthy", &namespace_d84e54db::function_ceb883cd, "rogue_control", "level_1");
	namespace_2f06d687::function_2b37a3c9("robot_level_2", "script_noteworthy", &namespace_d84e54db::function_ceb883cd, "rogue_control", "level_2");
	namespace_2f06d687::function_2b37a3c9("robot_level_3", "script_noteworthy", &namespace_d84e54db::function_ceb883cd, "rogue_control", "level_3");
	namespace_2f06d687::function_2b37a3c9("robot_forced_level_1", "script_noteworthy", &namespace_d84e54db::function_ceb883cd, "rogue_control", "forced_level_1");
	namespace_2f06d687::function_2b37a3c9("robot_forced_level_2", "script_noteworthy", &namespace_d84e54db::function_ceb883cd, "rogue_control", "forced_level_2");
	namespace_2f06d687::function_2b37a3c9("robot_forced_level_3", "script_noteworthy", &namespace_d84e54db::function_ceb883cd, "rogue_control", "forced_level_3");
	namespace_2f06d687::function_2b37a3c9("climber_robot_forced_level_1", "script_noteworthy", &function_b4c5517f, "forced_level_1");
	namespace_2f06d687::function_2b37a3c9("climber_robot_forced_level_2", "script_noteworthy", &function_b4c5517f, "forced_level_2");
	namespace_2f06d687::function_2b37a3c9("climber_robot_forced_level_3", "script_noteworthy", &function_b4c5517f, "forced_level_3");
}

/*
	Name: function_b4c5517f
	Namespace: namespace_431cac9
	Checksum: 0x49CE2596
	Offset: 0x2D18
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_b4c5517f(var_66674d1)
{
	self waittill("hash_9ad21f0c");
	self namespace_d84e54db::function_ceb883cd("rogue_control", var_66674d1);
}

/*
	Name: function_cdf9cde7
	Namespace: namespace_431cac9
	Checksum: 0xE48DF079
	Offset: 0x2D60
	Size: 0x227
	Parameters: 1
	Flags: None
*/
function function_cdf9cde7(var_e6795c86)
{
	if(!isdefined(var_e6795c86))
	{
		var_e6795c86 = undefined;
	}
	self endon("hash_128f8789");
	self function_8d63f8d0(1);
	self.var_3a90f16b = 10000;
	if(isdefined(self.var_fc5ff01a))
	{
		if(isdefined(self.var_caae374e))
		{
			var_a178d2fe = function_8108bdb8(self.var_fc5ff01a, self.var_caae374e, self);
			if(isdefined(var_a178d2fe))
			{
				var_a178d2fe function_50ccee8d();
			}
		}
		if(isdefined(self.var_b2ff4d87))
		{
			var_3e1ea936 = function_8108bdb8(self.var_fc5ff01a, self.var_b2ff4d87, self);
			if(isdefined(var_3e1ea936))
			{
				var_3e1ea936 function_50ccee8d();
			}
		}
	}
	var_b47f27c9 = 0;
	while(!var_b47f27c9)
	{
		self waittill("hash_f9348fda", var_74d0774f, var_677b3e78, var_a3382de1, var_10e30246, var_394451d8, var_c4fe462, var_e64d69f9, var_c04aef90, var_1d6db0a3);
		if(var_677b3e78.var_9d34dca7 === "veh_bo3_mil_gunship_nrc" && (var_394451d8 == "MOD_PROJECTILE" || var_394451d8 == "MOD_PROJECTILE_SPLASH"))
		{
			self function_aabc561a(var_e6795c86);
			var_b47f27c9 = 1;
		}
		self.var_3a90f16b = 10000;
		wait(0.05);
	}
}

/*
	Name: function_aabc561a
	Namespace: namespace_431cac9
	Checksum: 0x70B88D1C
	Offset: 0x2F90
	Size: 0x2FB
	Parameters: 1
	Flags: None
*/
function function_aabc561a(var_e6795c86)
{
	if(!isdefined(var_e6795c86))
	{
		var_e6795c86 = undefined;
	}
	if(self.var_9a6e8567 === 0)
	{
		self function_422037f5();
		self function_50ccee8d();
		if(isdefined(self.var_fc5ff01a))
		{
			var_6bcf377a = self.var_fc5ff01a + "_" + self.var_170527fb;
			var_1cf896b5 = namespace_14b42b8a::function_7922262b(var_6bcf377a, "targetname");
			if(isdefined(var_1cf896b5))
			{
				var_1cf896b5 thread namespace_cc27597::function_43718187();
				if(isdefined(var_e6795c86))
				{
					var_1cf896b5 thread namespace_5753664b::function_43718187(var_e6795c86);
				}
			}
			if(isdefined(self.var_a33b36db))
			{
				var_54a0ec88 = function_8108bdb8(self.var_fc5ff01a, self.var_a33b36db, self);
				if(isdefined(var_54a0ec88))
				{
					var_54a0ec88 function_422037f5();
					var_54a0ec88 function_50ccee8d();
					var_54a0ec88 function_dc8c8404();
				}
			}
			if(isdefined(self.var_b07228b6))
			{
				var_dc0bfd76 = function_8108bdb8(self.var_fc5ff01a, self.var_b07228b6, self);
				if(isdefined(var_dc0bfd76))
				{
					var_dc0bfd76 function_8effc214();
				}
			}
		}
		if(isdefined(self.var_caae374e))
		{
			var_a178d2fe = function_8108bdb8(self.var_fc5ff01a, self.var_caae374e, self);
			if(isdefined(var_a178d2fe))
			{
				var_a178d2fe function_48f26766();
			}
		}
		if(isdefined(self.var_b2ff4d87))
		{
			var_3e1ea936 = function_8108bdb8(self.var_fc5ff01a, self.var_b2ff4d87, self);
			if(isdefined(var_3e1ea936))
			{
				var_3e1ea936 function_422037f5();
				var_3e1ea936 function_50ccee8d();
			}
		}
		if(isdefined(self.var_9a6e8567))
		{
			self.var_9a6e8567 = 1;
		}
		self function_dc8c8404();
	}
}

/*
	Name: function_8108bdb8
	Namespace: namespace_431cac9
	Checksum: 0xCCD3AAEF
	Offset: 0x3298
	Size: 0xFB
	Parameters: 3
	Flags: None
*/
function function_8108bdb8(var_700327f8, var_a0b86a77, var_bae1047f)
{
	if(!isdefined(var_bae1047f))
	{
		var_bae1047f = undefined;
	}
	var_442c186f = undefined;
	var_caadf8f5 = function_99201f25(var_a0b86a77, "targetname");
	foreach(var_f582979c in var_caadf8f5)
	{
		if(var_f582979c.var_fc5ff01a === var_700327f8)
		{
			var_442c186f = var_f582979c;
		}
	}
	return var_442c186f;
}

/*
	Name: function_8effc214
	Namespace: namespace_431cac9
	Checksum: 0xD741A0D4
	Offset: 0x33A0
	Size: 0xEB
	Parameters: 2
	Flags: None
*/
function function_8effc214(var_449c8315, var_217954db)
{
	if(!isdefined(var_449c8315))
	{
		var_449c8315 = 0;
	}
	if(!isdefined(var_217954db))
	{
		var_217954db = 0;
	}
	if(isdefined(self.var_9a6e8567) && self.var_9a6e8567 == 0 && isdefined(self.var_b2ff4d87) && isdefined(self.var_fc5ff01a))
	{
		var_a788dff4 = function_8108bdb8(self.var_fc5ff01a, self.var_b2ff4d87, self);
		var_a788dff4 function_48f26766();
		if(var_217954db)
		{
			var_a788dff4 thread function_cdf9cde7();
		}
		if(var_449c8315)
		{
			self function_50ccee8d();
		}
	}
}

/*
	Name: function_f95b0d3c
	Namespace: namespace_431cac9
	Checksum: 0xAF051C8B
	Offset: 0x3498
	Size: 0x26B
	Parameters: 1
	Flags: None
*/
function function_f95b0d3c(var_2e2d440f)
{
	if(var_2e2d440f)
	{
		var_fe311e35 = "robot";
	}
	else
	{
		var_fe311e35 = "human";
	}
	function_da6acfd2(level.var_c1aa5253["burn_loop_" + var_fe311e35 + "_left_arm"], self, "j_shoulder_le_rot");
	function_da6acfd2(level.var_c1aa5253["burn_loop_" + var_fe311e35 + "_left_arm"], self, "j_elbow_le_rot");
	function_da6acfd2(level.var_c1aa5253["burn_loop_" + var_fe311e35 + "_right_arm"], self, "j_shoulder_ri_rot");
	function_da6acfd2(level.var_c1aa5253["burn_loop_" + var_fe311e35 + "_right_arm"], self, "j_elbow_ri_rot");
	function_da6acfd2(level.var_c1aa5253["burn_loop_" + var_fe311e35 + "_left_leg"], self, "j_hip_le");
	function_da6acfd2(level.var_c1aa5253["burn_loop_" + var_fe311e35 + "_left_leg"], self, "j_knee_le");
	function_da6acfd2(level.var_c1aa5253["burn_loop_" + var_fe311e35 + "_right_leg"], self, "j_hip_ri");
	function_da6acfd2(level.var_c1aa5253["burn_loop_" + var_fe311e35 + "_right_leg"], self, "j_knee_ri");
	function_da6acfd2(level.var_c1aa5253["burn_loop_" + var_fe311e35 + "_head"], self, "j_head");
	function_da6acfd2(level.var_c1aa5253["burn_loop_" + var_fe311e35 + "_torso"], self, "j_mainroot");
}

/*
	Name: function_2838f054
	Namespace: namespace_431cac9
	Checksum: 0x2E186AAB
	Offset: 0x3710
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_2838f054(var_dd528041, var_bb4455a6)
{
	function_c9fa49c2(var_dd528041, var_bb4455a6);
	namespace_d0ef8521::function_45d1556(var_bb4455a6);
}

/*
	Name: function_c9fa49c2
	Namespace: namespace_431cac9
	Checksum: 0x630CE366
	Offset: 0x3760
	Size: 0x6F
	Parameters: 2
	Flags: None
*/
function function_c9fa49c2(var_dd528041, var_ffa6bda7)
{
	var_bfa7ba25 = function_6ada35ba(var_ffa6bda7, "targetname");
	if(isdefined(var_bfa7ba25))
	{
		namespace_d0ef8521::function_74d6b22f(var_dd528041, var_bfa7ba25.var_722885f3);
	}
}

/*
	Name: function_50ae49cd
	Namespace: namespace_431cac9
	Checksum: 0x8EF007C3
	Offset: 0x37D8
	Size: 0x7F
	Parameters: 3
	Flags: None
*/
function function_50ae49cd(var_46c42db4, var_3599083d, var_fc275254)
{
	if(!isdefined(var_3599083d))
	{
		var_3599083d = 1;
	}
	for(var_17688fb5 = var_46c42db4; isdefined(var_17688fb5);  = var_46c42db4)
	{
	}
	if(isdefined(var_fc275254))
	{
		level notify(var_fc275254, function_20fc45fd(var_17688fb5, var_3599083d));
	}
}

/*
	Name: function_20fc45fd
	Namespace: namespace_431cac9
	Checksum: 0xF1B03C64
	Offset: 0x3860
	Size: 0x15F
	Parameters: 2
	Flags: None
*/
function function_20fc45fd(var_17688fb5, var_3599083d)
{
	var_fe6eb061 = function_6ada35ba(var_17688fb5, "targetname");
	if(isdefined(var_fe6eb061))
	{
		var_88fd65d = var_fe6eb061.var_722885f3;
		if(isdefined(var_fe6eb061.var_b07228b6))
		{
			var_6a197e6a = namespace_14b42b8a::function_7922262b(var_fe6eb061.var_b07228b6, "targetname");
			if(isdefined(var_6a197e6a))
			{
				var_88fd65d = var_6a197e6a.var_722885f3;
			}
		}
		namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_88fd65d);
		namespace_4dbf3ae3::function_1ab5ebec(var_17688fb5);
		namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
		var_c15deb89 = var_fe6eb061.var_b07228b6;
	}
	/#
		if(isdefined(var_c15deb89) && var_3599083d)
		{
			function_2e4b8c78(var_c15deb89);
		}
	#/
	return var_c15deb89;
}

/*
	Name: function_393c81a5
	Namespace: namespace_431cac9
	Checksum: 0x7CA100E7
	Offset: 0x39C8
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_393c81a5(var_c77d2837)
{
	self endon("hash_accb9cfa");
	namespace_84970cc4::function_966ecb29(var_c77d2837, &function_5a92c897, self);
	namespace_84970cc4::function_966ecb29(var_c77d2837, &function_27e365e2, "killed_by_nrc", "axis");
	namespace_84970cc4::function_1d74ca91(var_c77d2837, "damage");
	namespace_82b91a51::function_76f13293();
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 notify("hash_9ac59272");
	}
	self namespace_cc27597::function_fcf56ab5();
}

/*
	Name: function_f2596cbe
	Namespace: namespace_431cac9
	Checksum: 0xDFEA5F29
	Offset: 0x3B00
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_f2596cbe(var_c77d2837)
{
	self endon("hash_accb9cfa");
	namespace_84970cc4::function_966ecb29(var_c77d2837, &function_5a92c897, self);
	namespace_84970cc4::function_1d74ca91(var_c77d2837, "death");
	namespace_82b91a51::function_76f13293();
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(0);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
		}
	}
	self namespace_cc27597::function_fcf56ab5();
}

/*
	Name: function_5a92c897
	Namespace: namespace_431cac9
	Checksum: 0x389D2F73
	Offset: 0x3C40
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_5a92c897(var_d6f141bd)
{
	self endon("hash_128f8789");
	if(!function_e70ab977(self))
	{
		return;
	}
	if(self.var_3e94206a === "allies")
	{
		self thread function_6c396cfa(1);
	}
	else
	{
		self thread function_6c396cfa(1);
		self thread namespace_d84e54db::function_ceb883cd("can_be_meleed", 0);
	}
	var_d6f141bd waittill("hash_accb9cfa");
	if(self.var_3e94206a === "allies")
	{
		self thread function_6c396cfa(0);
	}
	else
	{
		self thread function_6c396cfa(0);
		self thread namespace_d84e54db::function_ceb883cd("can_be_meleed", 1);
	}
}

/*
	Name: function_6c396cfa
	Namespace: namespace_431cac9
	Checksum: 0xB5993F8D
	Offset: 0x3D58
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_6c396cfa(var_c5d9e0f5)
{
	if(function_e70ab977(self))
	{
		self.var_255b9315 = var_c5d9e0f5;
	}
}

/*
	Name: function_5da90c71
	Namespace: namespace_431cac9
	Checksum: 0x93481FFF
	Offset: 0x3D98
	Size: 0x1F1
	Parameters: 1
	Flags: None
*/
function function_5da90c71(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_82b91a51::function_958c7633();
		}
	}
	while(namespace_cc27597::function_444aea32(self.var_1157a889))
	{
		wait(0.05);
	}
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(isdefined(var_a3d46ee4) && function_e70ab977(var_a3d46ee4) && function_5b49d38c(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(0);
			var_a3d46ee4 namespace_82b91a51::function_4b741fdc();
		}
	}
}

/*
	Name: function_36a6e271
	Namespace: namespace_431cac9
	Checksum: 0x156E3FE8
	Offset: 0x3F98
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_36a6e271(var_a9fa335a, var_e3b635fb)
{
	if(!isdefined(var_e3b635fb))
	{
		var_e3b635fb = [];
	}
	while(1)
	{
		var_790129b = 0;
		var_6c4dd462 = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_32fa5072(self))
			{
				var_790129b++;
			}
		}
		foreach(var_d84e54db in var_e3b635fb)
		{
			if(var_d84e54db function_32fa5072(self))
			{
				var_6c4dd462++;
			}
		}
		if(var_790129b == level.var_2395e945.size && var_6c4dd462 == var_e3b635fb.size)
		{
			if(isdefined(var_a9fa335a) && var_a9fa335a)
			{
				self namespace_82b91a51::function_20ffc8ff();
			}
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_d720c23e
	Namespace: namespace_431cac9
	Checksum: 0xC265F92F
	Offset: 0x4170
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_d720c23e(var_cbb15570)
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	var_f92a03e7 = function_6ada35ba("ambient_mobile_" + var_cbb15570 + "_trigger", "script_noteworthy");
	if(!isdefined(var_f92a03e7))
	{
		var_f92a03e7 = function_6ada35ba("ambient_mobile_" + var_cbb15570 + "_0_trigger", "script_noteworthy");
	}
	if(isdefined(var_f92a03e7))
	{
		var_2e308a20 = function_99201f25(var_f92a03e7.var_b07228b6, "targetname");
		foreach(var_56ef6b49 in var_2e308a20)
		{
			var_56ef6b49.var_2d29332f = var_cbb15570;
		}
		function_b26ca094(var_cbb15570);
		var_f92a03e7 namespace_4dbf3ae3::function_42e87952();
	}
}

/*
	Name: function_14be4cad
	Namespace: namespace_431cac9
	Checksum: 0x479936E4
	Offset: 0x4310
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_14be4cad(var_1d3f7e09)
{
	if(!isdefined(var_1d3f7e09))
	{
		var_1d3f7e09 = 0;
	}
	level thread function_d720c23e("bb_n_mshop_a");
	level thread function_d720c23e("bb_s_mshop_a");
	level thread function_d720c23e("bb_s_mshop_b");
	level thread function_d720c23e("bb_s_mshop_c");
	level thread function_d720c23e("center_mshop");
	wait(7);
	function_fe64b86b("rainman", namespace_14b42b8a::function_7922262b("bridge_battle_corpse_drop"), 0);
	wait(25);
	function_fe64b86b("rainman", namespace_14b42b8a::function_7922262b("bridge_battle_corpse_drop2"), 0);
}

/*
	Name: function_ba1b651d
	Namespace: namespace_431cac9
	Checksum: 0x631C430B
	Offset: 0x4448
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_ba1b651d()
{
	var_633462a1 = "bridge_battle_mobile_shop";
	var_5bed9cb6 = "mshop_n_entrance_a_01";
	var_bef0b623 = function_c7bebe99(var_633462a1, var_5bed9cb6, 15, undefined, 10, 0, 0);
	var_27d8849a = function_9bc3d62a();
	var_a175a10b = namespace_82b91a51::function_b9fd52a4("tag_origin", var_27d8849a.var_722885f3, var_27d8849a.var_6ab6f4fd);
	while(1)
	{
		/#
			function_2e4b8c78("Dev Block strings are not supported");
		#/
		level function_de4512ae(var_bef0b623, "mshop_n_entrance_a_01");
		namespace_4dbf3ae3::function_42e87952(var_633462a1, "target");
		level waittill("vehicle_platform_" + var_633462a1 + "_stop");
	}
}

/*
	Name: function_c7bebe99
	Namespace: namespace_431cac9
	Checksum: 0x9A577A60
	Offset: 0x4590
	Size: 0xC7
	Parameters: 7
	Flags: None
*/
function function_c7bebe99(var_633462a1, var_9a2454dd, var_5a861da0, var_c02e5073, var_b3e9aaa6, var_b14a36c3, var_149d7b19)
{
	if(!isdefined(var_b14a36c3))
	{
		var_b14a36c3 = 0;
	}
	if(!isdefined(var_149d7b19))
	{
		var_149d7b19 = 0;
	}
	function_9b385ca5();
	var_bef0b623 = var_fa0d90fd;
	function_c35e6aab(var_bef0b623, var_633462a1);
	var_27d8849a = function_9bc3d62a();
	var_27d8849a.var_2dd707 = 0;
	return var_bef0b623;
}

/*
	Name: function_de4512ae
	Namespace: namespace_431cac9
	Checksum: 0x844347F3
	Offset: 0x4660
	Size: 0x57
	Parameters: 2
	Flags: None
*/
function function_de4512ae(var_ca404144, var_5bed9cb6)
{
	var_23abba9c = function_9bc3d62a();
	var_23abba9c function_ada64136();
	function_845aae7f(var_ca404144);
}

/*
	Name: function_99514074
	Namespace: namespace_431cac9
	Checksum: 0xA03C3D2
	Offset: 0x46C0
	Size: 0x1AB
	Parameters: 4
	Flags: None
*/
function function_99514074(var_3c3195e7, var_28c25ffb, var_2a151a84, var_ee7dbbc9)
{
	if(!isdefined(var_2a151a84))
	{
		var_2a151a84 = undefined;
	}
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = undefined;
	}
	var_253fcf81 = namespace_14b42b8a::function_7922262b(var_3c3195e7, "targetname");
	var_d3c173bf = function_6ada35ba(var_28c25ffb, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_253fcf81) && isdefined(var_d3c173bf), "Dev Block strings are not supported");
	#/
	if(!function_8d0347b8(var_d3c173bf))
	{
		var_4c5a6632 = namespace_2f06d687::function_7387a40a(var_28c25ffb);
	}
	else
	{
		var_4c5a6632 = var_d3c173bf;
	}
	if(isdefined(var_ee7dbbc9) || isdefined(var_2a151a84))
	{
		var_253fcf81 namespace_cc27597::function_c35e6aab(var_4c5a6632);
		if(isdefined(var_2a151a84))
		{
			level namespace_ad23e503::function_1ab5ebec(var_2a151a84);
		}
		if(isdefined(var_ee7dbbc9) && var_ee7dbbc9 > 0)
		{
			wait(var_ee7dbbc9);
		}
	}
	if(function_5b49d38c(var_4c5a6632))
	{
		var_253fcf81 namespace_cc27597::function_43718187(var_4c5a6632);
	}
}

/*
	Name: function_c7cc24f8
	Namespace: namespace_431cac9
	Checksum: 0xE833798F
	Offset: 0x4878
	Size: 0x30B
	Parameters: 4
	Flags: None
*/
function function_c7cc24f8(var_3c3195e7, var_18dfedfa, var_8556dacc, var_ee7dbbc9)
{
	if(!isdefined(var_8556dacc))
	{
		var_8556dacc = undefined;
	}
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = undefined;
	}
	var_253fcf81 = namespace_14b42b8a::function_7922262b(var_3c3195e7, "targetname");
	var_33edae4e = 1;
	var_629f93f0 = [];
	var_8060ff07 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_18dfedfa.size; var_c957f6b6++)
	{
		var_629f93f0[var_c957f6b6] = function_6ada35ba(var_18dfedfa[var_c957f6b6], "targetname");
		if(!isdefined(var_629f93f0[var_c957f6b6]))
		{
			var_33edae4e = 0;
			continue;
		}
		var_8060ff07[var_c957f6b6] = namespace_2f06d687::function_7387a40a(var_18dfedfa[var_c957f6b6]);
	}
	if(isdefined(var_253fcf81) && var_33edae4e)
	{
		var_2c4dc501 = var_253fcf81.var_1157a889;
		var_253fcf81 thread function_e3b58585(var_8060ff07);
		if(isdefined(var_ee7dbbc9) || isdefined(var_8556dacc))
		{
			var_253fcf81 namespace_cc27597::function_c35e6aab(var_8060ff07);
			if(isdefined(var_8556dacc) && namespace_ad23e503::function_dbca4c5d(var_8556dacc))
			{
				level namespace_ad23e503::function_1ab5ebec(var_8556dacc);
			}
			else if(!namespace_ad23e503::function_dbca4c5d(var_8556dacc))
			{
				/#
					function_2e4b8c78("Dev Block strings are not supported");
				#/
			}
			if(isdefined(var_ee7dbbc9))
			{
				wait(var_ee7dbbc9);
			}
		}
		var_7d90afcb = 1;
		foreach(var_3a90b959 in var_8060ff07)
		{
			if(!function_5b49d38c(var_3a90b959))
			{
				var_7d90afcb = 0;
			}
		}
		if(var_7d90afcb)
		{
			var_253fcf81 namespace_cc27597::function_43718187(var_8060ff07);
		}
	}
	else
	{
		function_2e4b8c78("Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_c92cb5b
	Namespace: namespace_431cac9
	Checksum: 0x44D454E1
	Offset: 0x4B90
	Size: 0x4A3
	Parameters: 5
	Flags: None
*/
function function_c92cb5b(var_3c3195e7, var_b79165e6, var_fddd6a7f, var_5e953b6, var_2a151a84)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "script_noteworthy";
	}
	if(!isdefined(var_2a151a84))
	{
		var_2a151a84 = undefined;
	}
	var_1cbcb46d = namespace_14b42b8a::function_7922262b(var_3c3195e7, "targetname");
	var_2c4dc501 = var_1cbcb46d.var_1157a889;
	/#
		var_c6befe75 = var_2c4dc501 + "Dev Block strings are not supported" + var_b79165e6 + "Dev Block strings are not supported" + var_fddd6a7f;
		function_2e4b8c78(var_c6befe75);
	#/
	var_20d642a = var_1cbcb46d.var_722885f3;
	var_56dd1913 = function_c20c2e8(var_fddd6a7f, var_5e953b6);
	var_3f3a4339 = function_e7bdc1a1(var_20d642a, var_56dd1913);
	if(function_5b49d38c(var_3f3a4339))
	{
		var_3f3a4339 namespace_d84e54db::function_c9e45d52(1);
		var_3f3a4339 function_169cc712(var_20d642a, 1);
		var_3f3a4339.var_bb8d3f02 = 1;
		var_3f3a4339.var_7dfaf62 = 48;
		var_3f3a4339 waittill("hash_41d1aaf0");
		if(isdefined(var_2a151a84))
		{
			level namespace_ad23e503::function_1ab5ebec(var_2a151a84);
		}
		var_56dd1913 = function_c20c2e8(var_b79165e6, var_5e953b6);
		var_f6c5842 = function_e7bdc1a1(var_20d642a, var_56dd1913);
		if(function_5b49d38c(var_f6c5842) && function_5b49d38c(var_3f3a4339))
		{
			var_f6c5842 namespace_d84e54db::function_b4f5e3b9(1);
			var_f6c5842 namespace_d84e54db::function_c9e45d52(1);
			var_3f3a4339 function_76aa5b30(var_f6c5842, 1);
			var_f6c5842 function_76aa5b30(var_3f3a4339, 1);
			var_f6c5842 namespace_d84e54db::function_ceb883cd("rogue_control_speed", "run");
			var_f6c5842.var_bb8d3f02 = 1;
			var_56dd1913 = function_84970cc4(var_f6c5842, var_3f3a4339);
			var_1cbcb46d thread namespace_cc27597::function_43718187(var_56dd1913);
			while(function_5b49d38c(var_f6c5842) && function_5b49d38c(var_3f3a4339) && var_1cbcb46d namespace_cc27597::function_367f8966())
			{
				wait(0.1);
			}
		}
	}
	if(var_1cbcb46d namespace_cc27597::function_367f8966())
	{
		var_1cbcb46d namespace_cc27597::function_fcf56ab5();
	}
	if(function_5b49d38c(var_f6c5842))
	{
		var_f6c5842.var_fd5a8f70 = 1;
		var_f6c5842 namespace_d84e54db::function_b4f5e3b9(0);
		var_f6c5842 namespace_d84e54db::function_c9e45d52(0);
		var_f6c5842 function_fb5720f7();
	}
	if(function_5b49d38c(var_3f3a4339))
	{
		var_3f3a4339 namespace_d84e54db::function_b4f5e3b9(0);
		var_3f3a4339 namespace_d84e54db::function_c9e45d52(0);
	}
}

/*
	Name: function_283fcbc5
	Namespace: namespace_431cac9
	Checksum: 0x2DCC117E
	Offset: 0x5040
	Size: 0x28B
	Parameters: 6
	Flags: None
*/
function function_283fcbc5(var_3c3195e7, var_27f9c50e, var_2a151a84, var_ee7dbbc9, var_af5ecc04, var_aa686173)
{
	if(!isdefined(var_2a151a84))
	{
		var_2a151a84 = undefined;
	}
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = undefined;
	}
	if(!isdefined(var_af5ecc04))
	{
		var_af5ecc04 = 0;
	}
	if(!isdefined(var_aa686173))
	{
		var_aa686173 = undefined;
	}
	var_f6c5842 = namespace_2f06d687::function_7387a40a(var_27f9c50e, &function_986d0100, "forced_level_2", 1);
	var_f7f2381b = namespace_14b42b8a::function_7922262b(var_3c3195e7, "targetname");
	var_f6c5842 namespace_d84e54db::function_b4f5e3b9(1);
	var_f6c5842 namespace_d84e54db::function_c9e45d52(1);
	level.var_2fd26037 function_76aa5b30(var_f6c5842, 1);
	if(!var_af5ecc04)
	{
		var_f6c5842 function_169cc712(var_f7f2381b.var_722885f3, 1);
		var_f6c5842 waittill("hash_41d1aaf0");
	}
	else
	{
		var_f6c5842 function_f58fccb8(var_f7f2381b.var_722885f3);
	}
	var_8060ff07 = function_84970cc4(level.var_2fd26037, var_f6c5842);
	var_8060ff07 = function_84970cc4(level.var_2fd26037, var_f6c5842);
	var_f7f2381b thread function_e3b58585(var_8060ff07);
	if(isdefined(var_2a151a84) || isdefined(var_ee7dbbc9))
	{
		var_f7f2381b namespace_cc27597::function_c35e6aab(var_8060ff07);
		if(isdefined(var_2a151a84))
		{
			namespace_ad23e503::function_1ab5ebec(var_2a151a84);
		}
		if(isdefined(var_ee7dbbc9) && var_ee7dbbc9 > 0)
		{
			wait(var_ee7dbbc9);
		}
	}
	var_f7f2381b namespace_cc27597::function_43718187(var_8060ff07);
}

/*
	Name: function_90b3f11f
	Namespace: namespace_431cac9
	Checksum: 0xF5BBC33A
	Offset: 0x52D8
	Size: 0x1CB
	Parameters: 4
	Flags: None
*/
function function_90b3f11f(var_a31fd6f4, var_5f6003ea, var_e8ea412b, var_aa686173)
{
	if(!isdefined(var_e8ea412b))
	{
		var_e8ea412b = 300;
	}
	if(!isdefined(var_aa686173))
	{
		var_aa686173 = undefined;
	}
	var_ea49a5c9 = function_6ada35ba(var_5f6003ea, "targetname");
	if(isdefined(var_ea49a5c9))
	{
		if(function_eddad593(var_ea49a5c9))
		{
			var_ea49a5c9 = namespace_2f06d687::function_7387a40a(var_5f6003ea, &function_986d0100);
		}
		if(function_8d0347b8(var_ea49a5c9))
		{
			level.var_2fd26037 function_76aa5b30(var_ea49a5c9, 1);
			var_ea49a5c9 namespace_d84e54db::function_19e98020(level.var_2fd26037);
			var_1cbcb46d = namespace_14b42b8a::function_7922262b(var_a31fd6f4, "targetname");
			level thread function_bc628f1d(var_1cbcb46d, level.var_2fd26037, var_ea49a5c9, var_e8ea412b, var_aa686173);
		}
		else
		{
			function_2e4b8c78("Dev Block strings are not supported" + var_ea49a5c9.var_170527fb + "Dev Block strings are not supported");
		}
		/#
		#/
	}
	else
	{
		function_2e4b8c78("Dev Block strings are not supported" + var_5f6003ea + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_bc628f1d
	Namespace: namespace_431cac9
	Checksum: 0x16B21E51
	Offset: 0x54B0
	Size: 0x23B
	Parameters: 5
	Flags: None
*/
function function_bc628f1d(var_1cbcb46d, var_f7b00b2b, var_ea49a5c9, var_e8ea412b, var_aa686173)
{
	if(!isdefined(var_e8ea412b))
	{
		var_e8ea412b = 300;
	}
	if(!isdefined(var_aa686173))
	{
		var_aa686173 = undefined;
	}
	if(isdefined(var_aa686173))
	{
		self endon(var_aa686173);
	}
	while(function_5b49d38c(var_f7b00b2b) && function_5b49d38c(var_ea49a5c9) && function_87ea89a(var_ea49a5c9.var_722885f3, var_f7b00b2b.var_722885f3) > var_e8ea412b)
	{
		wait(0.1);
	}
	if(function_5b49d38c(var_f7b00b2b) && function_5b49d38c(var_ea49a5c9))
	{
		var_ea49a5c9 namespace_d84e54db::function_19e98020(var_ea49a5c9.var_722885f3, 100, 1);
		var_1cbcb46d.var_722885f3 = var_ea49a5c9.var_722885f3;
		var_1cbcb46d.var_6ab6f4fd = var_ea49a5c9.var_6ab6f4fd;
		var_8060ff07 = function_84970cc4(var_f7b00b2b, var_ea49a5c9);
		var_1cbcb46d namespace_cc27597::function_c35e6aab(var_1cbcb46d.var_1157a889, var_8060ff07);
		var_1cbcb46d thread namespace_cc27597::function_43718187(var_8060ff07);
		while(function_5b49d38c(var_f7b00b2b) && function_5b49d38c(var_ea49a5c9))
		{
			wait(0.1);
		}
		if(var_1cbcb46d namespace_cc27597::function_367f8966())
		{
			var_1cbcb46d namespace_cc27597::function_fcf56ab5();
		}
	}
}

/*
	Name: function_986d0100
	Namespace: namespace_431cac9
	Checksum: 0x82AC4D8F
	Offset: 0x56F8
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_986d0100(var_9bed3c76, var_e0cd6234)
{
	if(!isdefined(var_9bed3c76))
	{
		var_9bed3c76 = "forced_level_2";
	}
	if(!isdefined(var_e0cd6234))
	{
		var_e0cd6234 = 0;
	}
	self endon("hash_128f8789");
	self.var_7dfaf62 = 512;
	if(var_e0cd6234)
	{
		self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
	}
	self namespace_d84e54db::function_ceb883cd("rogue_allow_pregib", 0);
	self namespace_d84e54db::function_ceb883cd("rogue_control", var_9bed3c76);
}

/*
	Name: function_df89b05b
	Namespace: namespace_431cac9
	Checksum: 0x1095FADE
	Offset: 0x57C8
	Size: 0x31B
	Parameters: 5
	Flags: None
*/
function function_df89b05b(var_e5a5bdaf, var_177a81e1, var_4ac85f5f, var_ee7dbbc9, var_aa686173)
{
	if(!isdefined(var_177a81e1))
	{
		var_177a81e1 = undefined;
	}
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0;
	}
	if(!isdefined(var_aa686173))
	{
		var_aa686173 = undefined;
	}
	if(isdefined(var_aa686173))
	{
		self endon(var_aa686173);
	}
	var_f6c5842 = namespace_2f06d687::function_7387a40a(var_e5a5bdaf + "_robot", &function_986d0100, var_177a81e1);
	var_3f3a4339 = namespace_2f06d687::function_7387a40a(var_e5a5bdaf + "_human");
	var_3f3a4339 namespace_d84e54db::function_c9e45d52(1);
	var_f6c5842 namespace_d84e54db::function_c9e45d52(1);
	var_8060ff07 = function_84970cc4(var_f6c5842, var_3f3a4339);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b(var_e5a5bdaf, "targetname");
	var_1cbcb46d thread function_c37d1015(var_f6c5842, var_3f3a4339);
	if(function_91986f4b(var_8060ff07))
	{
		var_1cbcb46d namespace_cc27597::function_c35e6aab(var_8060ff07);
	}
	else if(function_5b49d38c(var_3f3a4339))
	{
		var_3f3a4339 namespace_d84e54db::function_c9e45d52(0);
	}
	if(function_5b49d38c(var_f6c5842))
	{
		var_f6c5842 namespace_d84e54db::function_c9e45d52(0);
	}
	return;
	if(isdefined(var_4ac85f5f) && namespace_ad23e503::function_dbca4c5d(var_4ac85f5f))
	{
		level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	}
	if(var_ee7dbbc9 !== 0)
	{
		wait(var_ee7dbbc9);
	}
	if(function_91986f4b(var_8060ff07))
	{
		var_1cbcb46d namespace_cc27597::function_43718187(var_8060ff07);
	}
	if(function_5b49d38c(var_3f3a4339))
	{
		/#
			function_d52b076d("Dev Block strings are not supported" + var_1cbcb46d.var_170527fb + "Dev Block strings are not supported");
		#/
		var_3f3a4339 function_d7a0a9d8();
		var_3f3a4339 function_2992720d();
	}
}

/*
	Name: function_91986f4b
	Namespace: namespace_431cac9
	Checksum: 0xBA6110FF
	Offset: 0x5AF0
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_91986f4b(var_8060ff07)
{
	var_7d90afcb = 1;
	foreach(var_3a90b959 in var_8060ff07)
	{
		if(!isdefined(var_3a90b959) || !function_5b49d38c(var_3a90b959))
		{
			var_7d90afcb = 0;
		}
	}
	return var_7d90afcb;
}

/*
	Name: function_c37d1015
	Namespace: namespace_431cac9
	Checksum: 0x402AE87
	Offset: 0x5BC0
	Size: 0x12B
	Parameters: 2
	Flags: None
*/
function function_c37d1015(var_f6c5842, var_3f3a4339)
{
	self endon("hash_355070e1");
	while(function_5b49d38c(var_f6c5842) && function_5b49d38c(var_3f3a4339))
	{
		wait(0.05);
	}
	self namespace_cc27597::function_fcf56ab5();
	if(function_5b49d38c(var_3f3a4339))
	{
		/#
			function_2e4b8c78("Dev Block strings are not supported");
		#/
		var_3f3a4339 function_d7a0a9d8();
		var_3f3a4339 function_2992720d();
	}
	if(function_5b49d38c(var_f6c5842))
	{
		/#
			function_2e4b8c78("Dev Block strings are not supported");
		#/
		var_f6c5842 namespace_d84e54db::function_c9e45d52(0);
	}
}

/*
	Name: function_e3b58585
	Namespace: namespace_431cac9
	Checksum: 0x26B36F07
	Offset: 0x5CF8
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_e3b58585(var_8060ff07)
{
	self endon("hash_355070e1");
	var_cde0e1c7 = 1;
	while(var_cde0e1c7)
	{
		foreach(var_3a90b959 in var_8060ff07)
		{
			if(!function_5b49d38c(var_3a90b959))
			{
				var_cde0e1c7 = 0;
			}
		}
		wait(0.1);
	}
	self namespace_cc27597::function_fcf56ab5();
	/#
		function_d52b076d("Dev Block strings are not supported");
		function_d52b076d("Dev Block strings are not supported");
	#/
}

/*
	Name: function_e58f5689
	Namespace: namespace_431cac9
	Checksum: 0x620C5846
	Offset: 0x5E18
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e58f5689()
{
	namespace_80983c42::function_80983c42("fx_vista_read_int_haboob");
}

/*
	Name: function_176c92fd
	Namespace: namespace_431cac9
	Checksum: 0x3BED33B4
	Offset: 0x5E40
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_176c92fd()
{
	namespace_80983c42::function_80983c42("fx_vista_read_haboob1");
}

/*
	Name: function_f80cafbd
	Namespace: namespace_431cac9
	Checksum: 0xE90BC6E0
	Offset: 0x5E68
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_f80cafbd(var_ed6b2f03)
{
	var_cb5f3fd1 = function_6ada35ba("skybridge_cloud_coverage", "targetname");
	if(var_ed6b2f03)
	{
		var_cb5f3fd1 function_48f26766();
	}
	else
	{
		var_cb5f3fd1 function_50ccee8d();
	}
}

/*
	Name: function_c8849158
	Namespace: namespace_431cac9
	Checksum: 0x203FC415
	Offset: 0x5EE0
	Size: 0x21B
	Parameters: 2
	Flags: None
*/
function function_c8849158(var_ccd4343c, var_ee7dbbc9)
{
	self endon("hash_128f8789");
	var_2540d664 = 0;
	if(self namespace_957e94ce::function_7922262b("scriptedanim"))
	{
		self namespace_957e94ce::function_d3de6822("scriptedanim");
	}
	if(isdefined(var_ee7dbbc9))
	{
		wait(var_ee7dbbc9);
	}
	while(var_2540d664 == 0)
	{
		wait(1);
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(function_85e4c3b3(self))
			{
				var_911c6902 = self function_4246bc05(var_5dc5e20a);
			}
			else if(function_8d0347b8(self))
			{
				var_911c6902 = self function_75754e3a(var_5dc5e20a);
			}
			else
			{
				namespace_33b293fd::function_94739542("Dev Block strings are not supported");
				return;
			}
			/#
			#/
			if(var_911c6902 == 0 && function_7d15e2f8(self.var_722885f3, var_5dc5e20a.var_722885f3) > var_ccd4343c && var_5dc5e20a namespace_82b91a51::function_d61b846f(self.var_722885f3, undefined, 0) == 0)
			{
				var_2540d664 = 1;
			}
		}
	}
	self function_dc8c8404();
}

/*
	Name: function_27e365e2
	Namespace: namespace_431cac9
	Checksum: 0x934BF34A
	Offset: 0x6108
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_27e365e2(var_8b453fd2, var_46368a9d)
{
	if(self.var_3e94206a !== var_46368a9d)
	{
		self endon("hash_128f8789");
		self endon("hash_9ac59272");
		self waittill(var_8b453fd2);
		self function_3e9f1592();
	}
}

/*
	Name: function_510331a4
	Namespace: namespace_431cac9
	Checksum: 0xEC3A136F
	Offset: 0x6170
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_510331a4(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(var_a3d46ee4.var_3e94206a == "axis")
		{
			var_a3d46ee4 thread function_3e9f1592();
		}
	}
}

/*
	Name: function_3e9f1592
	Namespace: namespace_431cac9
	Checksum: 0xCDD0D5B8
	Offset: 0x6228
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_3e9f1592()
{
	self endon("hash_128f8789");
	while(isdefined(self.var_67c7c241))
	{
		wait(0.05);
	}
	if(isdefined(self))
	{
		self namespace_82b91a51::function_4b741fdc();
		self function_422037f5();
		self function_d7a0a9d8(1);
		self function_2992720d();
	}
}

/*
	Name: function_5b57004a
	Namespace: namespace_431cac9
	Checksum: 0xFB25BA1B
	Offset: 0x62C0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_5b57004a()
{
	self endon("hash_128f8789");
	var_74d0774f = 0;
	while(var_74d0774f < 2 && self.var_3a90f16b > 2)
	{
		self waittill("hash_f9348fda", var_74d0774f, var_677b3e78);
	}
	wait(0.05);
	self namespace_82b91a51::function_4b741fdc();
	self function_422037f5();
	self function_d7a0a9d8(1);
	self function_2992720d(self.var_722885f3, var_677b3e78);
}

/*
	Name: function_a7dc2319
	Namespace: namespace_431cac9
	Checksum: 0x235F9E49
	Offset: 0x6398
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_a7dc2319()
{
	while(!isdefined(self.var_a56d5376))
	{
		wait(0.05);
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self thread function_c8849158(500);
}

/*
	Name: function_484bc3aa
	Namespace: namespace_431cac9
	Checksum: 0x62AB96D1
	Offset: 0x6408
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_484bc3aa(var_864a3d55)
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	if(var_864a3d55)
	{
	}
	else
	{
	}
	var_9dff5377 = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("player_dust_fx", var_9dff5377);
	}
}

/*
	Name: function_8738e00c
	Namespace: namespace_431cac9
	Checksum: 0xF72E43EB
	Offset: 0x64F0
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_8738e00c()
{
	var_b18bb272 = [];
	foreach(var_5d5ef481 in function_bd90138e())
	{
		if(isdefined(var_5d5ef481.var_8344d65f) && var_5d5ef481.var_8344d65f + 200000 < GetTime())
		{
			var_b18bb272[var_b18bb272.size] = var_5d5ef481;
		}
	}
	for(var_5e76f0af = 0; var_5e76f0af < var_b18bb272.size; var_5e76f0af++)
	{
		var_b18bb272[var_5e76f0af] function_dc8c8404();
	}
}

/*
	Name: function_fda257c3
	Namespace: namespace_431cac9
	Checksum: 0x5CFD82B
	Offset: 0x6618
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_fda257c3()
{
	level notify("hash_1206d494");
	level endon("hash_1206d494");
	if(level.var_31aefea8 == "mobile_shop_ride2" || level.var_31aefea8 == "bridge_battle" || level.var_31aefea8 == "up_to_detention_center" || level.var_31aefea8 == "stand_down" || level.var_31aefea8 == "pursuit")
	{
		level thread function_a76d24ab();
	}
	while(1)
	{
		var_56db412d = namespace_14b42b8a::function_7faf4c39("corpse_drop");
		var_95c7ca68 = var_56db412d[function_26299103(var_56db412d.size)];
		function_fe64b86b("rainman", var_95c7ca68);
		wait(function_72a94f05(8, 17));
	}
}

/*
	Name: function_fe64b86b
	Namespace: namespace_431cac9
	Checksum: 0x64FF88E4
	Offset: 0x6760
	Size: 0x12B
	Parameters: 3
	Flags: None
*/
function function_fe64b86b(var_a0b86a77, var_ebe66fdc, var_a0938425)
{
	if(!isdefined(var_a0938425))
	{
		var_a0938425 = 1;
	}
	var_c9d99f8a = namespace_2f06d687::function_7387a40a(var_a0b86a77);
	if(!isdefined(var_c9d99f8a))
	{
		return;
	}
	if(var_a0938425)
	{
		var_c9d99f8a function_9869ab67(var_ebe66fdc.var_722885f3 + (function_dc99997a(-200, 200), function_dc99997a(-200, 200), 0), var_ebe66fdc.var_6ab6f4fd);
	}
	else
	{
		var_c9d99f8a function_9869ab67(var_ebe66fdc.var_722885f3, var_ebe66fdc.var_6ab6f4fd);
	}
	var_c9d99f8a function_d7a0a9d8();
	var_c9d99f8a function_2992720d();
}

/*
	Name: function_a76d24ab
	Namespace: namespace_431cac9
	Checksum: 0x544E311F
	Offset: 0x6898
	Size: 0x127
	Parameters: 0
	Flags: None
*/
function function_a76d24ab()
{
	level endon("hash_1206d494");
	while(1)
	{
		var_d7188244 = function_bd90138e();
		var_cc296c01 = GetTime();
		foreach(var_5d5ef481 in var_d7188244)
		{
			if(var_5d5ef481.var_722885f3[2] > 18500)
			{
				if(var_cc296c01 - var_5d5ef481.var_8344d65f > 5500)
				{
					var_5d5ef481 function_dc8c8404();
				}
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_a516f0de
	Namespace: namespace_431cac9
	Checksum: 0x747D209A
	Offset: 0x69C8
	Size: 0x241
	Parameters: 3
	Flags: None
*/
function function_a516f0de(var_a0b86a77, var_f2ce48d2, var_9fd93917)
{
	if(!isdefined(var_f2ce48d2))
	{
		var_f2ce48d2 = 7;
	}
	if(!isdefined(var_9fd93917))
	{
		var_9fd93917 = 3;
	}
	level endon("hash_fb8a92fd");
	level notify("hash_c087d549", 1);
	function_b9976e82();
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	var_522ce6c6 = 0;
	wait(1);
	while(1)
	{
		var_50042eb8 = function_99201f25(var_a0b86a77, "targetname");
		if(var_50042eb8.size == 0)
		{
			return;
		}
		if(var_50042eb8[0].var_a33b36db === "vertical")
		{
			var_1c660783 = function_84970cc4(2, 4, 5);
		}
		else
		{
			var_1c660783 = function_84970cc4(1, 3, 6);
		}
		var_983e0b02 = "cp_lotus_projection_ravengrafitti" + var_1c660783[function_26299103(var_1c660783.size)];
		level thread function_545a568f(var_f2ce48d2, var_983e0b02);
		function_acdfe1fe(var_983e0b02);
		function_67212ab4(var_50042eb8, 1);
		var_522ce6c6++;
		level waittill("hash_c087d549", var_90bf3c0b);
		if(var_90bf3c0b === 1 || var_522ce6c6 >= var_9fd93917)
		{
			function_4a0fb95e(var_983e0b02);
			function_67212ab4(var_50042eb8, 1);
			return;
		}
	}
}

/*
	Name: function_545a568f
	Namespace: namespace_431cac9
	Checksum: 0x57B45E8E
	Offset: 0x6C18
	Size: 0x95
	Parameters: 2
	Flags: None
*/
function function_545a568f(var_f2ce48d2, var_983e0b02)
{
	level endon("hash_c087d549");
	if(var_f2ce48d2 < 3)
	{
		var_f2ce48d2 = 3 + 1;
	}
	wait(5);
	wait(function_dc99997a(3, var_f2ce48d2 + 1));
	function_4a0fb95e(var_983e0b02);
	wait(1);
	level notify("hash_c087d549");
}

/*
	Name: function_b9976e82
	Namespace: namespace_431cac9
	Checksum: 0xACC4F356
	Offset: 0x6CB8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b9976e82()
{
	var_50042eb8 = function_99201f25("raven_video_loc", "script_noteworthy");
	function_67212ab4(var_50042eb8, 0);
}

/*
	Name: function_511cba45
	Namespace: namespace_431cac9
	Checksum: 0xBAC84FD3
	Offset: 0x6D10
	Size: 0x1FB
	Parameters: 3
	Flags: None
*/
function function_511cba45(var_994a19a0, var_ee7dbbc9, var_983e0b02)
{
	level endon("hash_fb8a92fd");
	level notify("hash_c18cb916");
	function_b9976e82();
	if(isdefined(var_ee7dbbc9))
	{
		wait(var_ee7dbbc9);
	}
	var_cb3e8a32 = function_99201f25("raven_video_loc", "script_noteworthy");
	var_50042eb8 = [];
	foreach(var_ce0f97ed in var_cb3e8a32)
	{
		if(function_2477ac2(var_ce0f97ed.var_170527fb) && function_5dbf7eca(var_ce0f97ed.var_170527fb, var_994a19a0))
		{
			namespace_84970cc4::function_69554b3e(var_50042eb8, var_ce0f97ed);
		}
	}
	if(!isdefined(var_983e0b02))
	{
		var_983e0b02 = "cp_lotus_projection_ravengrafitti" + function_dc99997a(1, 6);
	}
	function_acdfe1fe(var_983e0b02);
	function_67212ab4(var_50042eb8, 1);
	wait(7);
	function_4a0fb95e(var_983e0b02);
	function_67212ab4(var_50042eb8, 0);
}

/*
	Name: function_67212ab4
	Namespace: namespace_431cac9
	Checksum: 0x3945127E
	Offset: 0x6F18
	Size: 0x201
	Parameters: 3
	Flags: None
*/
function function_67212ab4(var_50042eb8, var_ed6b2f03, var_acc1160)
{
	if(!isdefined(var_acc1160))
	{
		var_acc1160 = 0;
	}
	if(var_ed6b2f03)
	{
		foreach(var_ce0f97ed in var_50042eb8)
		{
			if(isdefined(var_ce0f97ed))
			{
				if(var_ce0f97ed.var_db7bb468 === "decal")
				{
					var_ce0f97ed namespace_71e9cb84::function_74d6b22f("raven_decal", 1);
					continue;
				}
				var_ce0f97ed function_48f26766();
			}
		}
		break;
	}
	foreach(var_ce0f97ed in var_50042eb8)
	{
		if(isdefined(var_ce0f97ed))
		{
			if(var_ce0f97ed.var_db7bb468 === "decal")
			{
				if(var_acc1160)
				{
					var_ce0f97ed.var_caae374e = undefined;
				}
				var_ce0f97ed namespace_71e9cb84::function_74d6b22f("raven_decal", 0);
				continue;
			}
			if(var_acc1160)
			{
				var_ce0f97ed function_dc8c8404();
				continue;
			}
			var_ce0f97ed function_50ccee8d();
		}
	}
}

/*
	Name: function_e577c596
	Namespace: namespace_431cac9
	Checksum: 0x809FE660
	Offset: 0x7128
	Size: 0x383
	Parameters: 4
	Flags: None
*/
function function_e577c596(var_a55eb7ca, var_4dbf3ae3, var_c1afab5f, var_983e0b02)
{
	if(isdefined(var_4dbf3ae3))
	{
		var_4dbf3ae3 namespace_4dbf3ae3::function_1ab5ebec();
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_c90abe1a();
		namespace_e216c11c::function_25294cfe("visionset", "cp_raven_hallucination", var_5dc5e20a);
		var_5dc5e20a function_b8862210("vox_dying_infected_after", var_5dc5e20a);
		var_5dc5e20a function_b8862210("evt_dni_interrupt", var_5dc5e20a);
	}
	var_575a3d6e = namespace_14b42b8a::function_7faf4c39(var_a55eb7ca);
	foreach(var_1cbcb46d in var_575a3d6e)
	{
		if(var_1cbcb46d.var_1157a889 === "cin_gen_traversal_raven_fly_away")
		{
			var_1cbcb46d namespace_82b91a51::function_67520c6a(function_62e4226e(5), undefined, &namespace_cc27597::function_43718187);
			continue;
		}
		var_1cbcb46d thread namespace_cc27597::function_43718187();
	}
	if(isdefined(var_c1afab5f))
	{
		level thread function_511cba45(var_c1afab5f, undefined, var_983e0b02);
	}
	wait(7);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_c90abe1a();
		var_5dc5e20a function_b8862210("evt_dni_interrupt", var_5dc5e20a);
		namespace_82b91a51::function_67520c6a(0.75, undefined, &namespace_e216c11c::function_a5218027, "visionset", "cp_raven_hallucination", var_5dc5e20a);
	}
	level thread namespace_cc27597::function_fcf56ab5(var_a55eb7ca, "targetname");
	if(isdefined(var_983e0b02))
	{
		function_4a0fb95e(var_983e0b02);
	}
}

/*
	Name: function_c90abe1a
	Namespace: namespace_431cac9
	Checksum: 0x43445DEB
	Offset: 0x74B8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_c90abe1a()
{
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_688ed188("postfx_ravens", 1);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 1);
	wait(0.5);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
}

/*
	Name: function_77bfc3b2
	Namespace: namespace_431cac9
	Checksum: 0xC90350A8
	Offset: 0x7540
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_77bfc3b2()
{
	level namespace_cc27597::function_8f9f34e0("cin_gen_ambient_raven_idle", &function_e547724d, "init");
	level namespace_cc27597::function_8f9f34e0("cin_gen_ambient_raven_idle_eating_raven", &function_e547724d, "init");
	level namespace_cc27597::function_8f9f34e0("cin_gen_traversal_raven_fly_away", &function_e547724d, "init");
	level namespace_cc27597::function_8f9f34e0("cin_gen_ambient_raven_idle", &function_3f6f483d);
	level namespace_cc27597::function_8f9f34e0("cin_gen_ambient_raven_idle_eating_raven", &function_3f6f483d);
	level namespace_cc27597::function_8f9f34e0("cin_gen_traversal_raven_fly_away", &function_86b1cd8a);
}

/*
	Name: function_e547724d
	Namespace: namespace_431cac9
	Checksum: 0xB952011D
	Offset: 0x7658
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_e547724d(var_c77d2837)
{
	var_c77d2837["raven"] function_50ccee8d();
}

/*
	Name: function_3f6f483d
	Namespace: namespace_431cac9
	Checksum: 0xC54FC7DC
	Offset: 0x7690
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_3f6f483d(var_c77d2837)
{
	var_c77d2837["raven"] function_48f26766();
}

/*
	Name: function_86b1cd8a
	Namespace: namespace_431cac9
	Checksum: 0x4AD475A6
	Offset: 0x76C8
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_86b1cd8a(var_c77d2837)
{
	if(self.var_170527fb === "hakim_door_raven_fly_away")
	{
		return;
	}
	var_c77d2837["raven"] function_8c8e79fe();
	var_c77d2837["raven"] waittill("hash_db8335ba");
	var_c77d2837["raven"] function_48f26766();
}

/*
	Name: function_78805698
	Namespace: namespace_431cac9
	Checksum: 0x7563DCEC
	Offset: 0x7750
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_78805698(var_95456b04)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_82b91a51::function_67520c6a(1.5, undefined, &namespace_71e9cb84::function_74d6b22f, "player_frost_breath", 1);
		var_5dc5e20a thread function_5157e72f(var_95456b04);
	}
	namespace_dabbe128::function_356a4ee1(&function_6edd9874);
	namespace_dabbe128::function_356a4ee1(&function_5157e72f);
	level.var_2fd26037 namespace_71e9cb84::function_74d6b22f("hendricks_frost_breath", 1);
}

/*
	Name: function_6edd9874
	Namespace: namespace_431cac9
	Checksum: 0x29CBC53F
	Offset: 0x7890
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6edd9874()
{
	self namespace_71e9cb84::function_74d6b22f("player_frost_breath", 1);
	if(self.var_6e127f9d === 1)
	{
		self namespace_71e9cb84::function_e9c3870b("frost_post_fx", 1);
	}
}

/*
	Name: function_5157e72f
	Namespace: namespace_431cac9
	Checksum: 0x8E537F02
	Offset: 0x78F0
	Size: 0x2C9
	Parameters: 1
	Flags: None
*/
function function_5157e72f(var_95456b04)
{
	if(!isdefined(var_95456b04))
	{
		var_95456b04 = "";
	}
	self endon("hash_128f8789");
	var_4dbf3ae3 = function_6ada35ba("trig_snow_fog_begin_" + var_95456b04, "targetname");
	if(isdefined(var_4dbf3ae3))
	{
		var_4dbf3ae3 namespace_4dbf3ae3::function_1ab5ebec(undefined, undefined, self);
	}
	if(self.var_6e127f9d !== 0)
	{
		self namespace_82b91a51::function_67520c6a(1.5, undefined, &namespace_71e9cb84::function_e9c3870b, "frost_post_fx", 1);
	}
	level notify("hash_23be1ef");
	self namespace_71e9cb84::function_e9c3870b("snow_fog", 1);
	self namespace_71e9cb84::function_e9c3870b("player_dust_fx", 0);
	self namespace_71e9cb84::function_688ed188("postfx_frozen_forest", 1);
	self.var_4cf41af4 = 1;
	if(self namespace_ad23e503::function_dbca4c5d("end_snow_fx"))
	{
		self namespace_ad23e503::function_9d134160("end_snow_fx");
	}
	else
	{
		self namespace_ad23e503::function_c35e6aab("end_snow_fx");
	}
	self function_921a1574("evt_dni_glitch");
	self function_c2931a36("evt_snowverlay");
	if(self.var_5b9f1ca7 !== 1)
	{
		self thread function_c7402e23();
	}
	var_4dbf3ae3 = function_6ada35ba("trig_snow_fog_end_" + var_95456b04, "targetname");
	if(isdefined(var_4dbf3ae3))
	{
		var_4dbf3ae3 namespace_4dbf3ae3::function_1ab5ebec(undefined, undefined, self);
		self thread function_3684f44b();
		self function_f21ea22f();
		self function_eaa69754(1);
		self function_921a1574("evt_dni_delusion_outro");
		level notify("hash_d77cf6d0");
	}
}

/*
	Name: function_f21ea22f
	Namespace: namespace_431cac9
	Checksum: 0xECF4EC32
	Offset: 0x7BC8
	Size: 0x14D
	Parameters: 0
	Flags: None
*/
function function_f21ea22f()
{
	self namespace_71e9cb84::function_74d6b22f("player_frost_breath", 0);
	if(!self namespace_ad23e503::function_dbca4c5d("end_snow_fx"))
	{
		self namespace_ad23e503::function_c35e6aab("end_snow_fx");
	}
	if(!level namespace_ad23e503::function_dbca4c5d("end_snow_videos"))
	{
		level namespace_ad23e503::function_c35e6aab("end_snow_videos");
	}
	self namespace_ad23e503::function_74d6b22f("end_snow_fx");
	level namespace_ad23e503::function_74d6b22f("end_snow_videos");
	self namespace_71e9cb84::function_e9c3870b("snow_fog", 0);
	self namespace_71e9cb84::function_e9c3870b("frost_post_fx", 0);
	self namespace_71e9cb84::function_e9c3870b("player_dust_fx", 1);
	self.var_4cf41af4 = undefined;
}

/*
	Name: function_c7402e23
	Namespace: namespace_431cac9
	Checksum: 0x685D249C
	Offset: 0x7D20
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_c7402e23()
{
	self notify("hash_7507ad85");
	self endon("hash_7507ad85");
	self endon("hash_d3d93f76");
	self endon("hash_128f8789");
	self thread function_f15e5e64();
	self.var_5b9f1ca7 = 1;
	do
	{
		function_2e9c26ef(level.var_c1aa5253["fx_snow_lotus"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
		wait(0.05);
	}
	while(!!self namespace_ad23e503::function_7922262b("end_snow_fx"));
}

/*
	Name: function_f15e5e64
	Namespace: namespace_431cac9
	Checksum: 0xC3178542
	Offset: 0x7DE0
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_f15e5e64()
{
	self endon("hash_7507ad85");
	self endon("hash_40fb90ff");
	self endon("hash_128f8789");
	while(1)
	{
		namespace_4dbf3ae3::function_1ab5ebec("trig_pause_snow_camera_fx", undefined, undefined, 0);
		self notify("hash_d3d93f76");
		namespace_4dbf3ae3::function_1ab5ebec("trig_snow_fog_begin_pursuit", undefined, undefined, 0);
		self thread function_c7402e23();
	}
}

/*
	Name: function_cf37ec3
	Namespace: namespace_431cac9
	Checksum: 0x818180E6
	Offset: 0x7E80
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_cf37ec3()
{
	if(!level namespace_ad23e503::function_dbca4c5d("end_snow_videos"))
	{
		level namespace_ad23e503::function_c35e6aab("end_snow_videos");
	}
	while(!level namespace_ad23e503::function_7922262b("end_snow_videos"))
	{
		for(var_c957f6b6 = 1; var_c957f6b6 < 5; var_c957f6b6++)
		{
			var_983e0b02 = "cp_lotus_projection_salem" + var_c957f6b6;
			function_acdfe1fe(var_983e0b02);
			wait(function_dc99997a(3, 5) + 5);
			function_4a0fb95e(var_983e0b02);
			wait(1.5);
		}
	}
}

/*
	Name: function_3684f44b
	Namespace: namespace_431cac9
	Checksum: 0x72BB4B01
	Offset: 0x7F98
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3684f44b()
{
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 1);
	wait(1.2);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
}


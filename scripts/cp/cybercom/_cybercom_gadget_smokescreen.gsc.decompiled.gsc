#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_sensory_overload;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_11fb1f28;

/*
	Name: function_c35e6aab
	Namespace: namespace_11fb1f28
	Checksum: 0x99EC1590
	Offset: 0x440
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_11fb1f28
	Checksum: 0xEEDC48A8
	Offset: 0x450
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(1, 1);
	level.var_175490fb.var_fb5c3bfc = function_a8fb77bd();
	level.var_175490fb.var_fb5c3bfc.var_875da84b = &function_875da84b;
	level.var_175490fb.var_fb5c3bfc.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_fb5c3bfc.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_fb5c3bfc.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_fb5c3bfc.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_fb5c3bfc.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_fb5c3bfc.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_fb5c3bfc.var_4135a1c4 = &function_4135a1c4;
}

/*
	Name: function_875da84b
	Namespace: namespace_11fb1f28
	Checksum: 0xD230F060
	Offset: 0x5D8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_11fb1f28
	Checksum: 0x78B18FC8
	Offset: 0x5F0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_11fb1f28
	Checksum: 0x1D5424
	Offset: 0x610
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_9d8e0758 = undefined;
	self.var_175490fb.var_c40accd3 = undefined;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_11fb1f28
	Checksum: 0x19113CA5
	Offset: 0x668
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_5d2fec30
	Namespace: namespace_11fb1f28
	Checksum: 0x99EC1590
	Offset: 0x688
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_11fb1f28
	Checksum: 0xB8CCD566
	Offset: 0x698
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	namespace_175490fb::function_adc40f11(var_dfcc01fd, 1);
	level thread function_8810da3c(self, self function_1a9006bd("cybercom_smokescreen") == 2);
	if(function_65f192a6(self))
	{
		var_1630584c = function_e967a021("cybercom_smokescreen");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_251e7cf
	Namespace: namespace_11fb1f28
	Checksum: 0x63E3CFD5
	Offset: 0x788
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_4135a1c4
	Namespace: namespace_11fb1f28
	Checksum: 0xAFACF266
	Offset: 0x7A8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_4135a1c4(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_269cc172
	Namespace: namespace_11fb1f28
	Checksum: 0x172CB9C9
	Offset: 0x7C8
	Size: 0xE1
	Parameters: 2
	Flags: None
*/
function function_269cc172(var_d7d4ed9f, var_c34fe8d9)
{
	var_4f8217af = var_d7d4ed9f[0] * function_ef0a72b2(var_c34fe8d9) + var_d7d4ed9f[1] * function_3c191891(var_c34fe8d9);
	var_297f9d46 = -1 * var_d7d4ed9f[0] * function_3c191891(var_c34fe8d9) + var_d7d4ed9f[1] * function_ef0a72b2(var_c34fe8d9);
	var_37d22dd = var_d7d4ed9f[2];
	return (var_4f8217af, var_297f9d46, var_37d22dd);
}

/*
	Name: function_8810da3c
	Namespace: namespace_11fb1f28
	Checksum: 0xBB3A8301
	Offset: 0x8B8
	Size: 0x3D3
	Parameters: 2
	Flags: None
*/
function function_8810da3c(var_5e36fd2e, var_668a3301)
{
	if(!isdefined(var_668a3301))
	{
		var_668a3301 = 0;
	}
	if(var_668a3301)
	{
	}
	else
	{
	}
	var_dfcc01fd = function_c4d5ec1f("smoke_cybercom");
	var_1a859714 = function_bc7ce905(var_5e36fd2e.var_6ab6f4fd);
	var_4880f4e6 = 40 * var_1a859714 + var_5e36fd2e.var_722885f3;
	var_8cc2a222 = 140 * var_1a859714 + var_4880f4e6;
	var_5e36fd2e thread function_eb018a63(var_8cc2a222, var_dfcc01fd, var_668a3301);
	function_37cbcf1a("gdt_cybercore_smokescreen", var_8cc2a222);
	var_85281078 = function_269cc172(var_1a859714, 23);
	var_ae0aa92 = var_85281078 * 140 + var_4880f4e6;
	var_85281078 = function_269cc172(var_1a859714, 46);
	var_e4de3029 = var_85281078 * 140 + var_4880f4e6;
	var_85281078 = function_269cc172(var_1a859714, 69);
	var_bedbb5c0 = var_85281078 * 140 + var_4880f4e6;
	var_5e36fd2e thread function_eb018a63(var_ae0aa92, var_dfcc01fd, var_668a3301);
	namespace_82b91a51::function_76f13293();
	var_5e36fd2e thread function_eb018a63(var_e4de3029, var_dfcc01fd, var_668a3301);
	namespace_82b91a51::function_76f13293();
	var_5e36fd2e thread function_eb018a63(var_bedbb5c0, var_dfcc01fd, var_668a3301);
	namespace_82b91a51::function_76f13293();
	var_85281078 = function_269cc172(var_1a859714, -23);
	var_354533f = var_85281078 * 140 + var_4880f4e6;
	var_85281078 = function_269cc172(var_1a859714, -46);
	var_914ce404 = var_85281078 * 140 + var_4880f4e6;
	var_85281078 = function_269cc172(var_1a859714, -69);
	var_b74f5e6d = var_85281078 * 140 + var_4880f4e6;
	var_5e36fd2e thread function_eb018a63(var_354533f, var_dfcc01fd, var_668a3301);
	namespace_82b91a51::function_76f13293();
	var_5e36fd2e thread function_eb018a63(var_914ce404, var_dfcc01fd, var_668a3301);
	namespace_82b91a51::function_76f13293();
	var_5e36fd2e thread function_eb018a63(var_b74f5e6d, var_dfcc01fd, var_668a3301);
	namespace_82b91a51::function_76f13293();
	var_5e36fd2e thread function_e52895b(var_4880f4e6);
}

/*
	Name: function_eb018a63
	Namespace: namespace_11fb1f28
	Checksum: 0xA466CABF
	Offset: 0xC98
	Size: 0x28F
	Parameters: 3
	Flags: Private
*/
function private function_eb018a63(var_722885f3, var_dfcc01fd, var_50ae8517)
{
	var_deb57764 = 2;
	var_959bafe4 = function_2fb41213(var_722885f3, function_4bd0142f("scr_smokescreen_duration", 7), var_dfcc01fd);
	var_959bafe4 thread function_7125df2e(function_4bd0142f("scr_smokescreen_duration", 7));
	var_959bafe4 thread function_2346317b(function_4bd0142f("scr_smokescreen_duration", 7), 1, 2);
	var_959bafe4 function_ca711294(self.var_3e94206a);
	if(function_65f192a6(self))
	{
		var_959bafe4 function_d610622c(self);
	}
	var_959bafe4.var_b33510b6 = function_4bd0142f("scr_smokescreen_duration", 7);
	if(var_50ae8517)
	{
		var_959bafe4 thread function_76df0d04(self, var_deb57764);
	}
	if(function_4bd0142f("scr_smokescreen_debug", 0))
	{
		var_959bafe4 thread function_2f3c403b(function_4bd0142f("scr_smokescreen_duration", 7));
		level thread namespace_afd2f70b::function_a0e51d80(var_959bafe4.var_722885f3, function_4bd0142f("scr_smokescreen_duration", 7), 16, (1, 0, 0));
	}
	var_959bafe4 endon("hash_128f8789");
	while(1)
	{
		function_f5655f71(var_959bafe4, var_959bafe4.var_26f63812);
		wait(var_deb57764);
		var_959bafe4.var_b33510b6 = var_959bafe4.var_b33510b6 - var_deb57764;
		if(var_959bafe4.var_b33510b6 < 0)
		{
			var_959bafe4.var_b33510b6 = 0;
		}
	}
}

/*
	Name: function_76df0d04
	Namespace: namespace_11fb1f28
	Checksum: 0x6C6A6796
	Offset: 0xF30
	Size: 0xB5
	Parameters: 2
	Flags: Private
*/
function private function_76df0d04(var_5dc5e20a, var_deb57764)
{
	self endon("hash_128f8789");
	while(1)
	{
		if(isdefined(self.var_4dbf3ae3))
		{
			self.var_4dbf3ae3 function_dc8c8404();
		}
		self.var_4dbf3ae3 = function_9b7fda5e("trigger_radius", self.var_722885f3, 25, self.var_26f63812, self.var_26f63812);
		self.var_4dbf3ae3 thread function_eafddd94(var_5dc5e20a, self);
		wait(var_deb57764);
	}
}

/*
	Name: function_eafddd94
	Namespace: namespace_11fb1f28
	Checksum: 0x6751A475
	Offset: 0xFF0
	Size: 0x319
	Parameters: 2
	Flags: Private
*/
function private function_eafddd94(var_5dc5e20a, var_959bafe4)
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_6b45b25e);
		if(!isdefined(var_959bafe4))
		{
			return;
		}
		if(!isdefined(var_6b45b25e))
		{
			continue;
		}
		if(!function_5b49d38c(var_6b45b25e))
		{
			continue;
		}
		if(isdefined(var_6b45b25e.var_93b5a824) && var_6b45b25e.var_93b5a824)
		{
			return 0;
		}
		if(!(isdefined(var_6b45b25e.var_2dd707) && var_6b45b25e.var_2dd707))
		{
			return 0;
		}
		if(isdefined(var_6b45b25e.var_49d31d69))
		{
			return 0;
		}
		if(isdefined(var_6b45b25e.var_93b5a824) && var_6b45b25e.var_93b5a824)
		{
			continue;
		}
		if(var_6b45b25e namespace_175490fb::function_8fd8f5b1("cybercom_smokescreen"))
		{
			continue;
		}
		if(isdefined(var_6b45b25e.var_958c7633) && var_6b45b25e.var_958c7633)
		{
			continue;
		}
		if(function_8d0347b8(var_6b45b25e) && var_6b45b25e function_b7f9b625())
		{
			continue;
		}
		if(isdefined(var_6b45b25e.var_bab9655e) && !var_6b45b25e.var_bab9655e)
		{
			continue;
		}
		if(function_85e4c3b3(var_6b45b25e))
		{
			if(!isdefined(var_6b45b25e.var_5895314d))
			{
				var_5dc5e20a thread namespace_f74b04eb::function_96ed590f("cybercom_uses_martial");
				var_6b45b25e.var_5895314d = 1;
			}
			var_6b45b25e thread namespace_528b4613::function_30553c67(var_5dc5e20a, var_959bafe4.var_b33510b6 * 1000);
		}
		if(isdefined(var_6b45b25e.var_8fc0e50e))
		{
			switch(var_6b45b25e.var_8fc0e50e)
			{
				case "robot":
				{
					var_5dc5e20a thread namespace_f74b04eb::function_96ed590f("cybercom_uses_martial");
					var_6b45b25e thread namespace_528b4613::function_30553c67(var_5dc5e20a, var_959bafe4.var_b33510b6 * 1000);
					break;
				}
				case "human":
				case "human_riotshield":
				{
					var_5dc5e20a thread namespace_f74b04eb::function_96ed590f("cybercom_uses_martial");
					var_6b45b25e thread namespace_64276cf9::function_135c9345(var_5dc5e20a, "cybercom_smokescreen");
					break;
				}
			}
		}
	}
}

/*
	Name: function_fc04e511
	Namespace: namespace_11fb1f28
	Checksum: 0xC0551218
	Offset: 0x1318
	Size: 0x8F
	Parameters: 3
	Flags: Private
*/
function private function_fc04e511(var_bd00ff2a, var_99f49fe2, var_ab02d1a4)
{
	self endon("hash_128f8789");
	var_7ea0b3f5 = var_ab02d1a4 * 20;
	var_ccde618b = var_99f49fe2 / var_7ea0b3f5 * function_f679a325(var_bd00ff2a);
	while(var_7ea0b3f5)
	{
		var_7ea0b3f5--;
		self.var_722885f3 = self.var_722885f3 + var_ccde618b;
	}
}

/*
	Name: function_2fb41213
	Namespace: namespace_11fb1f28
	Checksum: 0xD20BE4A2
	Offset: 0x13B0
	Size: 0x87
	Parameters: 3
	Flags: Private
*/
function private function_2fb41213(var_722885f3, var_62240a71, var_dfcc01fd)
{
	var_fb5c3bfc = function_a550caa1(var_dfcc01fd, var_722885f3, (0, 0, 1), var_62240a71);
	var_fb5c3bfc.var_26f63812 = function_4bd0142f("scr_smokescreen_radius", 60);
	var_fb5c3bfc.var_30f44526 = 1;
	return var_fb5c3bfc;
}

/*
	Name: function_7125df2e
	Namespace: namespace_11fb1f28
	Checksum: 0x251EC98A
	Offset: 0x1440
	Size: 0x5B
	Parameters: 1
	Flags: Private
*/
function private function_7125df2e(var_60db70fa)
{
	self endon("hash_128f8789");
	wait(var_60db70fa);
	if(isdefined(self.var_4dbf3ae3))
	{
		self.var_4dbf3ae3 function_dc8c8404();
	}
	self function_dc8c8404();
}

/*
	Name: function_2346317b
	Namespace: namespace_11fb1f28
	Checksum: 0x9C661A40
	Offset: 0x14A8
	Size: 0x175
	Parameters: 3
	Flags: Private
*/
function private function_2346317b(var_60db70fa, var_7e1aa363, var_1449f905)
{
	self endon("hash_128f8789");
	if(var_1449f905 < 1)
	{
		var_1449f905 = 1;
	}
	self.var_30f44526 = var_7e1aa363;
	var_f6e1ecda = var_60db70fa * 20;
	var_b5f6560e = var_1449f905 > var_7e1aa363;
	if(var_b5f6560e)
	{
		var_c2591895 = var_1449f905 - var_7e1aa363;
		var_6411d75f = var_c2591895 / var_f6e1ecda;
		continue;
	}
	var_c2591895 = var_7e1aa363 - var_1449f905;
	var_6411d75f = var_c2591895 / var_f6e1ecda * -1;
	while(var_f6e1ecda)
	{
		self.var_30f44526 = self.var_30f44526 + var_6411d75f;
		if(self.var_30f44526 > var_1449f905)
		{
			self.var_30f44526 = var_1449f905;
		}
		if(self.var_30f44526 < 1)
		{
			self.var_30f44526 = 1;
		}
		self.var_26f63812 = function_4bd0142f("scr_smokescreen_radius", 60) * self.var_30f44526;
		wait(0.05);
		var_f6e1ecda--;
	}
}

/*
	Name: function_2f3c403b
	Namespace: namespace_11fb1f28
	Checksum: 0x32B6A896
	Offset: 0x1628
	Size: 0x6F
	Parameters: 1
	Flags: Private
*/
function private function_2f3c403b(var_60db70fa)
{
	self endon("hash_128f8789");
	var_f6e1ecda = var_60db70fa * 20;
	while(var_f6e1ecda)
	{
		var_f6e1ecda--;
		level thread namespace_175490fb::function_172e04fa(self.var_722885f3, self.var_26f63812);
		wait(0.05);
	}
}

/*
	Name: function_d25acb0
	Namespace: namespace_11fb1f28
	Checksum: 0xAD1BBA24
	Offset: 0x16A0
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_d25acb0(var_9bc2efcb, var_668a3301)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(var_668a3301))
	{
		var_668a3301 = 0;
	}
	if(isdefined(var_9bc2efcb) && var_9bc2efcb)
	{
		var_fe311e35 = self namespace_175490fb::function_5e3d3aa();
		self function_13ffb22b("face default");
		self function_5d64f4b4("ai_cybercom_anim", self.var_722885f3, self.var_6ab6f4fd, "ai_base_rifle_" + var_fe311e35 + "_exposed_cybercom_activate");
		self waittillmatch("hash_39fa7e38");
	}
	level thread function_8810da3c(self, var_668a3301);
}

/*
	Name: function_e52895b
	Namespace: namespace_11fb1f28
	Checksum: 0xA78C071E
	Offset: 0x17A8
	Size: 0x8D
	Parameters: 1
	Flags: Private
*/
function private function_e52895b(var_722885f3)
{
	self endon("hash_128f8789");
	var_9f9fc36f = 1;
	for(var_885895d1 = function_4bd0142f("scr_smokescreen_duration", 7); var_885895d1 > 0;  = function_4bd0142f("scr_smokescreen_duration", 7))
	{
		function_1043951b(var_722885f3, 1000);
		wait(var_9f9fc36f);
	}
}


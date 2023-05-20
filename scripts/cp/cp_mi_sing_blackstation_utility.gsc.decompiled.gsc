#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_79e1cd97;

/*
	Name: function_bff1a867
	Namespace: namespace_79e1cd97
	Checksum: 0x4616A35F
	Offset: 0xFA0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_bff1a867(var_b04bc952)
{
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_2fd26037 namespace_6f7b2095::function_1b497663("b");
	level.var_2fd26037 function_c7708f99("heroes");
	namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_2fd26037);
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3, 1);
}

/*
	Name: function_da579a5d
	Namespace: namespace_79e1cd97
	Checksum: 0x728C8AB0
	Offset: 0x1068
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_da579a5d(var_b04bc952)
{
	level.var_3d556bcd = namespace_82b91a51::function_740f8516("kane");
	level.var_3d556bcd function_c7708f99("heroes");
	namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_3d556bcd);
}

/*
	Name: function_913d882
	Namespace: namespace_79e1cd97
	Checksum: 0xB73C51A6
	Offset: 0x10E0
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_913d882()
{
	self notify("hash_1fffa65c");
	self endon("hash_128f8789");
	self endon("hash_1fffa65c");
	while(1)
	{
		if(self function_8213df59() && (!isdefined(self.var_5ea9c8b7) && self.var_5ea9c8b7))
		{
			self thread function_41018429();
		}
		wait(0.5);
	}
}

/*
	Name: function_41018429
	Namespace: namespace_79e1cd97
	Checksum: 0x16B4EA7E
	Offset: 0x1168
	Size: 0x14F
	Parameters: 0
	Flags: None
*/
function function_41018429()
{
	self notify("hash_8f1abd30");
	self endon("hash_8f1abd30");
	self endon("hash_128f8789");
	self.var_5ea9c8b7 = 1;
	self namespace_419e977d::function_459e5eff("o2", 0);
	var_dd075cd2 = 1;
	var_67825717 = function_6ada35ba("subway_water", "targetname");
	if(isdefined(var_67825717) && self function_32fa5072(var_67825717))
	{
		self thread function_c6b38f1e();
	}
	while(self function_8213df59())
	{
		wait(1);
		var_dd075cd2 = self namespace_419e977d::function_d65827ea("o2", 5);
	}
	self namespace_419e977d::function_459e5eff("o2", 1);
	self.var_5ea9c8b7 = 0;
}

/*
	Name: function_c6b38f1e
	Namespace: namespace_79e1cd97
	Checksum: 0xC58013BF
	Offset: 0x12C0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_c6b38f1e()
{
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_e9c3870b("subway_water", 1);
	while(self function_8213df59())
	{
		wait(0.05);
	}
	self namespace_71e9cb84::function_e9c3870b("subway_water", 0);
}

/*
	Name: function_8f7c9f3c
	Namespace: namespace_79e1cd97
	Checksum: 0x1D47E33C
	Offset: 0x1340
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8f7c9f3c()
{
	self function_151e32b9(0);
}

/*
	Name: function_2c33b48e
	Namespace: namespace_79e1cd97
	Checksum: 0xB0124863
	Offset: 0x1368
	Size: 0x16F
	Parameters: 0
	Flags: None
*/
function function_2c33b48e()
{
	self notify("hash_bdc2988");
	self endon("hash_128f8789");
	self endon("hash_bdc2988");
	self.var_eb7c5a24 = 0;
	self.var_f82cc610 = 0;
	while(1)
	{
		level namespace_ad23e503::function_1ab5ebec("objective_igc_completed");
		if(self namespace_82b91a51::function_9ba72e41() && (self.var_ff9883fd || self.var_3f081af5) && !self.var_eb7c5a24)
		{
			self function_151e32b9(1);
			while(namespace_82b91a51::function_9ba72e41())
			{
				wait(0.05);
			}
			while(!self function_d5ef124() && !self function_ecd44e51() && !self function_a8b1fbb9() && self.var_eb7c5a24)
			{
				wait(0.05);
			}
			if(self.var_eb7c5a24)
			{
				self function_151e32b9(0);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_ed7faf05
	Namespace: namespace_79e1cd97
	Checksum: 0x57EE40DD
	Offset: 0x14E0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ed7faf05()
{
	self notify("hash_bdc2988");
	self function_151e32b9(0);
}

/*
	Name: function_151e32b9
	Namespace: namespace_79e1cd97
	Checksum: 0xE6B6BF3F
	Offset: 0x1518
	Size: 0x40B
	Parameters: 1
	Flags: None
*/
function function_151e32b9(var_6ffe741b)
{
	if(isdefined(self.var_eb7c5a24) && self.var_eb7c5a24 && !var_6ffe741b)
	{
		if(isdefined(self.var_b1a4293e))
		{
			self.var_b1a4293e function_dc8c8404();
		}
		self function_a3624368(1);
		self function_f5ba63f2(1);
		self function_6fa6b424(1);
		self function_fe722fcf("stand");
		if(isdefined(self function_e9022fe("AnchorDeployed")))
		{
			self function_2b74b70a(self function_e9022fe("AnchorDeployed"));
		}
		self.var_eb7c5a24 = 0;
		level notify("hash_786c76a1", self, 1);
		self namespace_82b91a51::function_f9e5537b();
		self notify("hash_af6705ff");
	}
	else if(var_6ffe741b)
	{
		if(!self function_ad7e8c32() && (!isdefined(self.var_564407fb) && self.var_564407fb) && !self function_8213df59() && !self function_df991e41())
		{
			level notify("hash_2c534be8", self, 1);
			if(!self function_8029a253())
			{
				self.var_b1a4293e = function_9b7fda5e("script_origin", self.var_722885f3);
				self function_87b6cda1(self.var_b1a4293e);
				var_607afad = function_c66bcbfb(self.var_722885f3);
				var_a6b1619d = function_7d15e2f8(var_607afad, self.var_722885f3) * 0.002;
				self.var_b1a4293e function_a96a2721(var_607afad, var_a6b1619d);
				self.var_b1a4293e waittill("hash_a21db68a");
				self function_52fddbd0();
				self.var_b1a4293e function_dc8c8404();
			}
			if(!(isdefined(self.var_eae9bf9) && self.var_eae9bf9))
			{
				self thread namespace_cc27597::function_43718187("cin_gen_ground_anchor_player", self);
				self waittill("hash_97a4dd11");
			}
			self.var_eb7c5a24 = 1;
			self function_a3624368(0);
			self function_f5ba63f2(0);
			self function_6fa6b424(0);
			self.var_b1a4293e = function_9b7fda5e("script_origin", self.var_722885f3);
			if(!isdefined(self function_e9022fe("AnchorDeployed")))
			{
				self function_2f6b6a4c("AnchorDeployed");
			}
			self thread function_a81e2f8f();
			self thread function_c87bc7e2();
		}
	}
}

/*
	Name: function_c87bc7e2
	Namespace: namespace_79e1cd97
	Checksum: 0xE4AE1060
	Offset: 0x1930
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c87bc7e2()
{
	self endon("hash_128f8789");
	self endon("hash_af6705ff");
	wait(20);
	if(self.var_eb7c5a24)
	{
		self function_151e32b9(0);
	}
}

/*
	Name: function_a81e2f8f
	Namespace: namespace_79e1cd97
	Checksum: 0x8E808815
	Offset: 0x1980
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_a81e2f8f()
{
	self endon("hash_128f8789");
	while(isdefined(self.var_b1a4293e) && (self.var_ff9883fd || self.var_3f081af5))
	{
		var_3b8c7376 = function_316422d1(self.var_722885f3, self.var_b1a4293e.var_722885f3);
		if(var_3b8c7376 > 3600 && var_3b8c7376 < 10000)
		{
			if(!self.var_62269fcc)
			{
				self.var_62269fcc = 1;
				self namespace_82b91a51::function_32d40124(&"CP_MI_SING_BLACKSTATION_ANCHOR_WARNRANGE", 1);
			}
		}
		else if(var_3b8c7376 > 10000 && var_3b8c7376 <= 22500)
		{
			if(!self.var_62269fcc)
			{
				self.var_62269fcc = 1;
				self namespace_82b91a51::function_32d40124(&"CP_MI_SING_BLACKSTATION_ANCHOR_OUTRANGE", 1);
			}
		}
		else if(var_3b8c7376 > 22500)
		{
			if(self.var_eb7c5a24)
			{
				self.var_62269fcc = 0;
				self function_151e32b9(0);
			}
		}
		else
		{
			self.var_62269fcc = 0;
			self namespace_82b91a51::function_f9e5537b();
		}
		if(!isdefined(self.var_d34aee9d))
		{
			self.var_62269fcc = 0;
		}
		namespace_82b91a51::function_76f13293();
	}
	if(isdefined(self function_e9022fe("AnchorDeployed")))
	{
		self function_2b74b70a(self function_e9022fe("AnchorDeployed"));
	}
	self namespace_82b91a51::function_f9e5537b();
}

/*
	Name: function_12398a8b
	Namespace: namespace_79e1cd97
	Checksum: 0xE168E6BB
	Offset: 0x1B98
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_12398a8b(var_c77d2837)
{
	self endon("hash_128f8789");
	var_b1a4293e = var_c77d2837["spike"];
	self waittill("hash_97a4dd11");
	if(isdefined(var_b1a4293e))
	{
		wait(0.1);
		while(isdefined(self.var_eb7c5a24) && self.var_eb7c5a24)
		{
			wait(0.1);
		}
		var_b1a4293e function_dc8c8404();
	}
}

/*
	Name: function_3ceb3ad7
	Namespace: namespace_79e1cd97
	Checksum: 0xA0954E5F
	Offset: 0x1C30
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_3ceb3ad7()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_82b91a51::function_32d40124(&"CP_MI_SING_BLACKSTATION_USE_ANCHOR_FULL");
	}
	wait(4);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_82b91a51::function_32d40124(&"CP_MI_SING_BLACKSTATION_ANCHOR_AREA");
	}
}

/*
	Name: function_72b35612
	Namespace: namespace_79e1cd97
	Checksum: 0x99FB12D2
	Offset: 0x1D58
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_72b35612()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(!isdefined(var_5dc5e20a.var_22246212))
		{
			var_5dc5e20a.var_22246212 = 0;
		}
		if(isdefined(var_5dc5e20a.var_f3d107c2) && var_5dc5e20a.var_f3d107c2)
		{
			if(var_5dc5e20a.var_22246212 < 2)
			{
				var_5dc5e20a.var_22246212++;
				var_5dc5e20a.var_f3d107c2 = 0;
				var_5dc5e20a namespace_82b91a51::function_32d40124(&"CP_MI_SING_BLACKSTATION_USE_ANCHOR");
			}
		}
	}
}

/*
	Name: function_f2e7ba4b
	Namespace: namespace_79e1cd97
	Checksum: 0xF4DAE49F
	Offset: 0x1E80
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f2e7ba4b()
{
	var_3be169e6 = function_6ada35ba("anchor_intro_wind", "targetname");
	var_3be169e6 namespace_4dbf3ae3::function_1ab5ebec();
	self thread function_61a28877(var_3be169e6);
	self thread function_3b881872(var_3be169e6);
}

/*
	Name: function_61a28877
	Namespace: namespace_79e1cd97
	Checksum: 0x14185E51
	Offset: 0x1F00
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function function_61a28877(var_473cf959)
{
	self notify("hash_afb0e5d8");
	self endon("hash_afb0e5d8");
	self endon("hash_643a7daf");
	var_473cf959 endon("hash_128f8789");
	self.var_ff9883fd = 0;
	while(!level namespace_ad23e503::function_7922262b("breached"))
	{
		while(self function_32fa5072(var_473cf959))
		{
			self.var_ff9883fd = 1;
			self function_6fa6b424(0);
			if(!(isdefined(var_473cf959.var_d956869f) && var_473cf959.var_d956869f))
			{
				self function_5a7dd25d(0.7);
				if(self.var_eb7c5a24)
				{
					self function_e2af603e("bs_wind_rumble_low");
				}
				else
				{
					self function_e2af603e("bs_wind_rumble");
				}
			}
			else
			{
				self function_5a7dd25d(0.5);
			}
			wait(0.05);
		}
		self function_6fa6b424(1);
		self function_5a7dd25d(1);
		self.var_ff9883fd = 0;
		wait(0.05);
	}
}

/*
	Name: function_3b881872
	Namespace: namespace_79e1cd97
	Checksum: 0x11D843D5
	Offset: 0x20B8
	Size: 0x177
	Parameters: 1
	Flags: None
*/
function function_3b881872(var_473cf959)
{
	self notify("hash_27db3d49");
	self endon("hash_27db3d49");
	self endon("hash_643a7daf");
	var_473cf959 endon("hash_128f8789");
	self.var_1ecf7ddf = 0;
	while(!level namespace_ad23e503::function_7922262b("breached"))
	{
		while(self function_32fa5072(var_473cf959))
		{
			if(!(isdefined(var_473cf959.var_f6362118) && var_473cf959.var_f6362118))
			{
				if(self.var_1ecf7ddf != 1)
				{
					self.var_1ecf7ddf = 1;
					self namespace_71e9cb84::function_e9c3870b("sndWindSystem", 1);
				}
			}
			else if(self.var_1ecf7ddf != 2)
			{
				self.var_1ecf7ddf = 2;
				self namespace_71e9cb84::function_e9c3870b("sndWindSystem", 2);
			}
			wait(0.05);
		}
		if(self.var_1ecf7ddf != 0)
		{
			self.var_1ecf7ddf = 0;
			self namespace_71e9cb84::function_e9c3870b("sndWindSystem", 0);
		}
		wait(0.05);
	}
}

/*
	Name: function_3c6fc4cb
	Namespace: namespace_79e1cd97
	Checksum: 0x2E3F40B5
	Offset: 0x2238
	Size: 0x347
	Parameters: 0
	Flags: None
*/
function function_3c6fc4cb()
{
	self endon("hash_128f8789");
	while(1)
	{
		level namespace_ad23e503::function_1ab5ebec("allow_wind_gust");
		level namespace_80983c42::function_80983c42("fx_expl_debris_high_winds");
		level thread function_e56ec11d(self);
		var_78962fff = function_72a94f05(3, 4);
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(isdefined(var_5dc5e20a.var_ff9883fd) && var_5dc5e20a.var_ff9883fd)
			{
				if(!isdefined(var_5dc5e20a.var_ce01d699))
				{
					var_5dc5e20a.var_ce01d699 = 0;
				}
				if(!var_5dc5e20a.var_ce01d699)
				{
					var_5dc5e20a.var_ce01d699 = 1;
					var_5dc5e20a namespace_82b91a51::function_32d40124(&"CP_MI_SING_BLACKSTATION_USE_ANCHOR");
				}
				var_5dc5e20a thread function_4d386bf("WeatherWarning", "kill_weather");
				var_5dc5e20a thread function_c86ecb59(var_78962fff);
			}
		}
		wait(var_78962fff);
		level namespace_80983c42::function_67e7a937("fx_expl_debris_high_winds");
		level namespace_ad23e503::function_74d6b22f("kill_weather");
		self.var_d956869f = 0;
		self.var_f6362118 = 0;
		level thread function_72b35612();
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a.var_eb7c5a24 && (isdefined(var_5dc5e20a.var_ff9883fd) && var_5dc5e20a.var_ff9883fd))
			{
				var_5dc5e20a function_151e32b9(0);
			}
		}
		var_637636ed = function_72a94f05(5.5, 8.5);
		level namespace_ad23e503::function_d819e202(var_637636ed, "allow_wind_gust");
	}
}

/*
	Name: function_c86ecb59
	Namespace: namespace_79e1cd97
	Checksum: 0x44DE1C7C
	Offset: 0x2588
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_c86ecb59(var_78962fff)
{
	self endon("hash_128f8789");
	wait(1);
	self namespace_71e9cb84::function_e9c3870b("wind_blur", 1);
	wait(var_78962fff);
	self namespace_71e9cb84::function_e9c3870b("wind_blur", 0);
}

/*
	Name: function_e56ec11d
	Namespace: namespace_79e1cd97
	Checksum: 0x4DBF65A9
	Offset: 0x25F8
	Size: 0x387
	Parameters: 1
	Flags: None
*/
function function_e56ec11d(var_473cf959)
{
	level namespace_ad23e503::function_9d134160("kill_weather");
	level endon("hash_4f4e78f4");
	var_473cf959 endon("hash_128f8789");
	var_73e585a1 = namespace_14b42b8a::function_7922262b(var_473cf959.var_b07228b6);
	level notify("hash_5dd3aa3a");
	var_473cf959.var_f6362118 = 1;
	namespace_82b91a51::function_c9aa1ff("end_gust_warning", 1);
	while(1)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_32fa5072(var_473cf959))
			{
				if(!isdefined(var_5dc5e20a function_e9022fe("WeatherWarning")))
				{
					var_5dc5e20a thread function_4d386bf("WeatherWarning", "kill_weather");
				}
				var_a080d759 = function_bc7ce905((0, var_73e585a1.var_6ab6f4fd[1], 0));
				var_b9492de8 = 250;
				var_473cf959.var_d956869f = 1;
				if(!var_5dc5e20a.var_4cfe7265 && (!isdefined(var_5dc5e20a.var_564407fb) && var_5dc5e20a.var_564407fb))
				{
					if(!var_5dc5e20a.var_eb7c5a24)
					{
						var_5dc5e20a function_f5df04e6(var_a080d759 * var_b9492de8);
						var_5dc5e20a.var_f3d107c2 = 1;
					}
					else if(isdefined(var_5dc5e20a.var_b1a4293e))
					{
						var_3b8c7376 = function_316422d1(var_5dc5e20a.var_722885f3, var_5dc5e20a.var_b1a4293e.var_722885f3);
						if(function_316422d1(var_5dc5e20a.var_722885f3, var_5dc5e20a.var_b1a4293e.var_722885f3) > 10000)
						{
							var_5dc5e20a function_f5df04e6(var_a080d759 * var_b9492de8);
						}
					}
				}
				if(var_5dc5e20a.var_eb7c5a24)
				{
					var_5dc5e20a function_e2af603e("bs_gust_rumble_low");
					continue;
				}
				var_5dc5e20a function_e2af603e("bs_gust_rumble");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_3a563d3
	Namespace: namespace_79e1cd97
	Checksum: 0x27CB4021
	Offset: 0x2988
	Size: 0x185
	Parameters: 0
	Flags: None
*/
function function_3a563d3()
{
	level endon("hash_88ddfb38");
	var_5abaf1e2 = namespace_14b42b8a::function_7922262b("debris_junk_fling");
	var_d7d9d1b0 = namespace_14b42b8a::function_7922262b("debris_junk_move");
	level thread function_f9ecd375();
	while(1)
	{
		level waittill("hash_5dd3aa3a");
		wait(1.5);
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_48b3274c = function_9b7fda5e("script_model", var_5abaf1e2.var_722885f3);
			var_48b3274c function_e82b5091();
			var_48b3274c function_9ce09198(0);
			if(isdefined(var_5dc5e20a))
			{
				var_5dc5e20a function_ec10a9e7(var_48b3274c);
			}
		}
	}
}

/*
	Name: function_f9ecd375
	Namespace: namespace_79e1cd97
	Checksum: 0x54A49335
	Offset: 0x2B18
	Size: 0x129
	Parameters: 0
	Flags: None
*/
function function_f9ecd375()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_hendricks_anchor_done");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_boatroom_bundle");
	wait(2.5);
	var_c6dce143 = namespace_14b42b8a::function_7922262b("objective_port_assault_ai");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(function_316422d1(var_5dc5e20a.var_722885f3, var_c6dce143.var_722885f3) <= 640000)
		{
			var_5dc5e20a function_e2af603e("cp_blackstation_shelter_rumble");
		}
	}
}

/*
	Name: function_e7bf1516
	Namespace: namespace_79e1cd97
	Checksum: 0x45331E04
	Offset: 0x2C50
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_e7bf1516()
{
	level endon("hash_88ddfb38");
	while(1)
	{
		level waittill("hash_5dd3aa3a");
		level thread function_59c54810();
	}
}

/*
	Name: function_59c54810
	Namespace: namespace_79e1cd97
	Checksum: 0xC0CDF85E
	Offset: 0x2C98
	Size: 0x1D5
	Parameters: 0
	Flags: None
*/
function function_59c54810()
{
	var_a35aa0b0 = namespace_14b42b8a::function_7faf4c39("debris_random_start");
	var_64dd962c = function_84970cc4("p7_debris_junkyard_scrap_pile_01", "p7_debris_junkyard_scrap_pile_02", "p7_debris_junkyard_scrap_pile_03", "p7_debris_concrete_rubble_lg_03", "p7_debris_metal_scrap_01", "p7_debris_ibeam_dmg", "p7_sin_wall_metal_slats", "p7_toilet_bathroom_open");
	for(var_c957f6b6 = 0; var_c957f6b6 < function_dc99997a(10, 16); var_c957f6b6++)
	{
		var_48b3274c = function_9b7fda5e("script_model", var_a35aa0b0[function_26299103(var_a35aa0b0.size)].var_722885f3);
		var_48b3274c function_e48f905e(var_64dd962c[function_26299103(var_64dd962c.size)]);
		if(function_26299103(2) == 0)
		{
			var_48b3274c function_c2931a36("evt_debris_rando_looper");
		}
		else
		{
			var_48b3274c function_c2931a36("evt_debris_metal_looper");
		}
		wait(function_72a94f05(0.1, 0.5));
		var_48b3274c thread function_95e08db9();
	}
}

/*
	Name: function_cb28102c
	Namespace: namespace_79e1cd97
	Checksum: 0x915D73AA
	Offset: 0x2E78
	Size: 0x403
	Parameters: 0
	Flags: None
*/
function function_cb28102c()
{
	var_baae3b1d = function_99201f25("debris_stage_1", "targetname");
	foreach(var_4804abd in var_baae3b1d)
	{
		var_4804abd thread function_8efe7a7();
	}
	namespace_4dbf3ae3::function_1ab5ebec("trigger_stage_1");
	foreach(var_4804abd in var_baae3b1d)
	{
		var_4804abd thread function_88a9ee8a();
		var_4804abd thread function_f5cdc056();
		var_4804abd thread function_2d329cdb();
	}
	var_d68e5742 = function_6ada35ba("debris_fridge", "targetname");
	var_e0b0b586 = function_99201f25("debris_stage_2", "targetname");
	function_1c2beb2b(var_e0b0b586, var_d68e5742, 0);
	foreach(var_2a82c526 in var_e0b0b586)
	{
		var_2a82c526 thread function_8efe7a7();
	}
	namespace_4dbf3ae3::function_1ab5ebec("trigger_stage_2");
	level waittill("hash_5dd3aa3a");
	wait(1.7);
	foreach(var_2a82c526 in var_e0b0b586)
	{
		var_2a82c526 thread function_88a9ee8a();
		var_2a82c526 thread function_f5cdc056();
		var_2a82c526 thread function_2d329cdb();
	}
	var_6b05f5fd = function_6ada35ba("debris_tree", "targetname");
	var_6b05f5fd thread function_8efe7a7();
	namespace_4dbf3ae3::function_1ab5ebec("trigger_stage_3");
	level waittill("hash_5dd3aa3a");
	wait(1.7);
	var_6b05f5fd thread function_88a9ee8a();
	var_6b05f5fd thread function_f5cdc056();
	var_6b05f5fd thread function_2d329cdb();
}

/*
	Name: function_8efe7a7
	Namespace: namespace_79e1cd97
	Checksum: 0x5A3C07F2
	Offset: 0x3288
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_8efe7a7()
{
	self endon("hash_128f8789");
	self endon("hash_dbc82b90");
	while(1)
	{
		self function_fde61077(1, 0.05);
		self function_788ec1d6(1, 0.05);
		self waittill("hash_a21db68a");
		self function_fde61077(-1, 0.05);
		self function_788ec1d6(-1, 0.05);
		self waittill("hash_a21db68a");
	}
}

/*
	Name: function_88a9ee8a
	Namespace: namespace_79e1cd97
	Checksum: 0x89438986
	Offset: 0x3358
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_88a9ee8a()
{
	self notify("hash_dbc82b90");
	self function_a96a2721(self.var_722885f3 + VectorScale((0, 1, 0), 200), 0.5);
	self waittill("hash_a21db68a");
	self function_a96a2721(self.var_722885f3 + (0, 6000, 1200), 8);
	self waittill("hash_a21db68a");
	self function_dc8c8404();
}

/*
	Name: function_95e08db9
	Namespace: namespace_79e1cd97
	Checksum: 0x2B206069
	Offset: 0x3400
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_95e08db9()
{
	self function_8bdea13c(240, 0.1);
	self waittill("hash_a21db68a");
	self thread function_f5cdc056();
	self thread function_2d329cdb();
	self function_a96a2721(self.var_722885f3 + (0, 6000, function_dc99997a(20, 60)), 4);
	self waittill("hash_a21db68a");
	self function_dc8c8404();
}

/*
	Name: function_ec10a9e7
	Namespace: namespace_79e1cd97
	Checksum: 0x31F65012
	Offset: 0x34C8
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_ec10a9e7(var_48b3274c)
{
	self endon("hash_643a7daf");
	var_48b3274c thread function_f5cdc056();
	var_48b3274c thread function_2d329cdb();
	var_48b3274c function_8bdea13c(240, 0.1);
	var_48b3274c waittill("hash_a21db68a");
	var_48b3274c function_a96a2721(self.var_722885f3 + (function_26299103(100), 1000, function_dc99997a(80, 100)), 3);
	var_48b3274c waittill("hash_a21db68a");
	var_48b3274c function_dc8c8404();
}

/*
	Name: function_f5cdc056
	Namespace: namespace_79e1cd97
	Checksum: 0x798681D3
	Offset: 0x35C8
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_f5cdc056()
{
	self endon("hash_128f8789");
	while(1)
	{
		self function_5613042d(-90, 0.3);
		wait(0.25);
	}
}

/*
	Name: function_e82b5091
	Namespace: namespace_79e1cd97
	Checksum: 0x48F1AE58
	Offset: 0x3610
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_e82b5091()
{
	var_5955d439 = function_26299103(7);
	switch(var_5955d439)
	{
		case 0:
		{
			var_ac791ba4 = "p7_bucket_plastic_5_gal_blue";
			self function_c2931a36("evt_debris_rando_looper");
			break;
		}
		case 1:
		{
			var_ac791ba4 = "p7_sin_wall_metal_slats";
			self function_c2931a36("evt_debris_metal_looper");
			break;
		}
		case 2:
		{
			var_ac791ba4 = "p7_debris_metal_scrap_01";
			self function_c2931a36("evt_debris_metal_looper");
			break;
		}
		case 3:
		{
			var_ac791ba4 = "p7_water_container_plastic_large_distressed";
			self function_c2931a36("evt_debris_metal_special_looper");
			break;
		}
		case 4:
		{
			var_ac791ba4 = "p7_light_spotlight_generator_02";
			self function_c2931a36("evt_debris_metal_special_looper");
			break;
		}
		case 5:
		{
			var_ac791ba4 = "p7_foliage_treetrunk_fallen_01";
			self function_c2931a36("evt_debris_tree_looper");
			break;
		}
		case 6:
		{
			var_ac791ba4 = "p7_debris_drywall_chunks_corner_01";
			self function_c2931a36("evt_debris_rando_looper");
			break;
		}
	}
	self function_e48f905e(var_ac791ba4);
}

/*
	Name: function_378fdd41
	Namespace: namespace_79e1cd97
	Checksum: 0xF4F55334
	Offset: 0x37F8
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_378fdd41()
{
	self endon("hash_128f8789");
	while(1)
	{
		self function_8bdea13c(3, 0.1);
		wait(0.05);
		self function_8bdea13c(-3, 0.1);
		wait(0.05);
	}
}

/*
	Name: function_2d329cdb
	Namespace: namespace_79e1cd97
	Checksum: 0x339296D4
	Offset: 0x3868
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_2d329cdb()
{
	self endon("hash_128f8789");
	self endon("hash_313ebe7a");
	var_21ba9ea1 = 1600;
	while(1)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(function_cb3d1c9b(self.var_722885f3, var_5dc5e20a function_6083923()) < var_21ba9ea1)
			{
				var_5dc5e20a function_c3945cd5(var_5dc5e20a.var_3a90f16b / 8, self.var_722885f3, undefined, undefined, undefined, "MOD_FALLING");
				var_5dc5e20a function_f1aa5a21("default", 1.5);
				var_5dc5e20a function_e2af603e("artillery_rumble");
				break;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_c66bcbfb
	Namespace: namespace_79e1cd97
	Checksum: 0xB0A85948
	Offset: 0x39E8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_c66bcbfb(var_722885f3)
{
	return function_cbc4f0b(var_722885f3, var_722885f3 + VectorScale((0, 0, -1), 100000), 0, undefined, 1)["position"];
}

/*
	Name: function_4d386bf
	Namespace: namespace_79e1cd97
	Checksum: 0x455E228A
	Offset: 0x3A38
	Size: 0xF9
	Parameters: 3
	Flags: None
*/
function function_4d386bf(var_f4fd4814, var_4ac85f5f, var_8b453fd2)
{
	self endon("hash_128f8789");
	if(!isdefined(self function_e9022fe(var_f4fd4814)))
	{
		var_f64f72cb = self function_2f6b6a4c(var_f4fd4814);
		self thread function_c4626d1d();
	}
	if(isdefined(var_8b453fd2))
	{
		self namespace_82b91a51::function_9fcf3cd8(3, var_8b453fd2);
	}
	else
	{
		namespace_82b91a51::function_39b48811(level, var_4ac85f5f, self, "player_bleedout");
	}
	if(isdefined(var_f64f72cb))
	{
		self function_2b74b70a(var_f64f72cb);
		self notify("hash_72181299");
	}
}

/*
	Name: function_c4626d1d
	Namespace: namespace_79e1cd97
	Checksum: 0xDC3530C3
	Offset: 0x3B40
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_c4626d1d()
{
	self endon("hash_128f8789");
	self endon("hash_72181299");
	while(1)
	{
		self function_8a20e55d("uin_weather_warning");
		wait(0.25);
	}
}

/*
	Name: function_43367596
	Namespace: namespace_79e1cd97
	Checksum: 0xC700D002
	Offset: 0x3B90
	Size: 0x135
	Parameters: 3
	Flags: None
*/
function function_43367596(var_e3459cd7, var_4ac85f5f, var_aa686173)
{
	self thread function_cdf3d127();
	while(1)
	{
		level waittill(var_e3459cd7);
		if(level.var_2fd26037 function_32fa5072(self) && !level.var_2fd26037.var_f005c227)
		{
			level.var_2fd26037 namespace_cc27597::function_43718187("cin_gen_ground_anchor_start", level.var_2fd26037);
			level.var_2fd26037 thread namespace_cc27597::function_43718187("cin_gen_ground_anchor_idle", level.var_2fd26037);
			wait(0.5);
			level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
			level.var_2fd26037 namespace_cc27597::function_43718187("cin_gen_ground_anchor_end", level.var_2fd26037);
		}
		if(level namespace_ad23e503::function_7922262b(var_aa686173))
		{
			break;
		}
	}
}

/*
	Name: function_cdf3d127
	Namespace: namespace_79e1cd97
	Checksum: 0xBB24D594
	Offset: 0x3CD0
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_cdf3d127()
{
	level endon("hash_4561e3f");
	var_e63023e3 = function_6ada35ba(self.var_170527fb + "_hero_safety", "script_noteworthy");
	if(!isdefined(var_e63023e3))
	{
		return;
	}
	while(1)
	{
		while(level.var_2fd26037 function_32fa5072(var_e63023e3))
		{
			level.var_2fd26037.var_f005c227 = 1;
			wait(0.05);
		}
		level.var_2fd26037.var_f005c227 = 0;
		wait(0.05);
	}
}

/*
	Name: function_d3e22b53
	Namespace: namespace_79e1cd97
	Checksum: 0x16104E96
	Offset: 0x3D98
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_d3e22b53(var_473cf959)
{
	var_473cf959 thread function_98fd2a69();
	var_473cf959 thread function_43367596("surge_warning", "kill_surge", "surge_done");
	var_473cf959 thread function_e7121462();
}

/*
	Name: function_4a8c1765
	Namespace: namespace_79e1cd97
	Checksum: 0x1A6C16F8
	Offset: 0x3E10
	Size: 0xB5
	Parameters: 1
	Flags: None
*/
function function_4a8c1765(var_e9ddc8f2)
{
	var_bec72e2a = 0;
	foreach(var_4dbf3ae3 in var_e9ddc8f2)
	{
		if(self function_32fa5072(var_4dbf3ae3))
		{
			var_bec72e2a = 1;
			continue;
		}
	}
	return var_bec72e2a;
}

/*
	Name: function_98fd2a69
	Namespace: namespace_79e1cd97
	Checksum: 0xB8B3EE86
	Offset: 0x3ED0
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_98fd2a69()
{
	self endon("hash_128f8789");
	while(1)
	{
		level namespace_ad23e503::function_74d6b22f("surging_inward");
		level thread function_252086f2(self);
		wait(1.5);
		level namespace_ad23e503::function_d3de6822("surging_inward");
		self.var_f52921cf = 0;
		wait(function_72a94f05(5.5, 6.5));
	}
}

/*
	Name: function_b0c5c886
	Namespace: namespace_79e1cd97
	Checksum: 0xD5BD8611
	Offset: 0x3F80
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b0c5c886()
{
	level endon("hash_7a88d2cd");
	level namespace_71e9cb84::function_74d6b22f("water_level", 1);
}

/*
	Name: function_3c57957
	Namespace: namespace_79e1cd97
	Checksum: 0x5F67FA4D
	Offset: 0x3FB8
	Size: 0x147
	Parameters: 3
	Flags: None
*/
function function_3c57957(var_8b856a66, var_64dd962c, var_aa686173)
{
	var_e7610d59 = "p7_fxanim_cp_blackstation_" + var_8b856a66.var_db7bb468 + "_bundle";
	level namespace_cc27597::function_8f9f34e0(var_e7610d59, &function_8fbe0681, "play", var_aa686173, var_64dd962c, var_8b856a66);
	if(isdefined(var_64dd962c))
	{
		namespace_84970cc4::function_966ecb29(var_64dd962c, &function_c1eab89b, var_8b856a66);
	}
	level namespace_ad23e503::function_1ab5ebec("surging_inward");
	while(!level namespace_ad23e503::function_7922262b(var_aa686173))
	{
		level namespace_cc27597::function_43718187(var_8b856a66.var_170527fb);
		var_8b856a66 notify("hash_856e667");
		level namespace_ad23e503::function_d3de6822("surging_inward");
	}
}

/*
	Name: function_8fbe0681
	Namespace: namespace_79e1cd97
	Checksum: 0xF3D4F7C5
	Offset: 0x4108
	Size: 0x34B
	Parameters: 4
	Flags: None
*/
function function_8fbe0681(var_c77d2837, var_aa686173, var_64dd962c, var_8b856a66)
{
	var_e7610d59 = var_8b856a66.var_db7bb468;
	var_32cdba86 = var_c77d2837[var_e7610d59];
	var_48b3274c = var_c77d2837[var_e7610d59 + "_debris"];
	var_48b3274c thread function_1168d325(var_8b856a66);
	var_29f7937 = "wave_trigger_jnt";
	var_8b856a66 function_8f279593();
	var_8b856a66.var_722885f3 = var_32cdba86 function_d48f2ab3(var_29f7937);
	var_8b856a66 function_37f7858a(var_32cdba86, var_29f7937, (0, 120, -35), VectorScale((0, -1, 0), 90));
	level namespace_ad23e503::function_74d6b22f("surge_active");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_8b856a66 thread function_32d3b286(var_5dc5e20a);
		var_8b856a66 thread function_81a3b4e0(var_5dc5e20a);
	}
	var_8b856a66 thread function_c1972ac();
	var_8b856a66 thread function_9ea9bed();
	wait(0.05);
	var_32cdba86 namespace_71e9cb84::function_74d6b22f("water_disturbance", 1);
	var_8b856a66 waittill("hash_856e667");
	var_32cdba86 notify(self.var_1157a889);
	level notify(var_8b856a66.var_caae374e);
	level namespace_ad23e503::function_74d6b22f("end_surge");
	if(self.var_1157a889 == "p7_fxanim_cp_blackstation_wave_01_bundle")
	{
		level namespace_ad23e503::function_74d6b22f("cover_switch");
	}
	level namespace_ad23e503::function_9d134160("surging_inward");
	level namespace_ad23e503::function_9d134160("surge_active");
	level namespace_ad23e503::function_9d134160("end_surge");
	var_32cdba86 function_470f7e4c();
	var_32cdba86 namespace_71e9cb84::function_74d6b22f("water_disturbance", 0);
}

/*
	Name: function_1168d325
	Namespace: namespace_79e1cd97
	Checksum: 0x10C75D10
	Offset: 0x4460
	Size: 0x10D
	Parameters: 1
	Flags: None
*/
function function_1168d325(var_8b856a66)
{
	var_b7926b3a = var_8b856a66.var_6604b19f;
	for(var_4f8217af = 1; var_4f8217af <= var_b7926b3a; var_4f8217af++)
	{
		if(var_4f8217af < 10)
		{
			var_fe8d5ebb = "debris_0" + var_4f8217af + "_jnt";
		}
		else
		{
			var_fe8d5ebb = "debris_" + var_4f8217af + "_jnt";
		}
		var_10fcb680 = function_dc99997a(0, 100);
		if(var_10fcb680 > 33)
		{
			self function_db20c8d6(var_fe8d5ebb);
			continue;
		}
		self function_123d36d9(var_fe8d5ebb);
	}
}

/*
	Name: function_81a3b4e0
	Namespace: namespace_79e1cd97
	Checksum: 0x89214913
	Offset: 0x4578
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_81a3b4e0(var_5dc5e20a)
{
	self endon("hash_128f8789");
	self endon("hash_4735ec09");
	level endon("hash_6f645037");
	var_5dc5e20a endon("hash_128f8789");
	while(function_316422d1(self.var_722885f3, var_5dc5e20a.var_722885f3) > 490000)
	{
		wait(0.1);
	}
	if(var_5dc5e20a.var_f82cc610 && !isdefined(var_5dc5e20a function_e9022fe("SurgeWarning")))
	{
		var_5dc5e20a thread function_8b5bccf1("SurgeWarning");
	}
	else
	{
		wait(0.05);
		if(!isdefined(var_5dc5e20a function_e9022fe("SurgeWarning")))
		{
			var_5dc5e20a thread function_8b5bccf1("SurgeWarning");
		}
	}
	while(!var_5dc5e20a.var_f82cc610)
	{
	}
}

/*
	Name: function_8b5bccf1
	Namespace: namespace_79e1cd97
	Checksum: 0x92834C95
	Offset: 0x46B8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_8b5bccf1(var_f4fd4814)
{
	if(!isdefined(self.var_25f6f033))
	{
		self.var_25f6f033 = 0;
	}
	if(!self.var_25f6f033)
	{
		self.var_25f6f033 = 1;
		self namespace_82b91a51::function_32d40124(&"CP_MI_SING_BLACKSTATION_USE_ANCHOR");
	}
	self thread function_4d386bf(var_f4fd4814, "end_surge", "stop_surge");
}

/*
	Name: function_9ea9bed
	Namespace: namespace_79e1cd97
	Checksum: 0x86A8083C
	Offset: 0x4748
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_9ea9bed()
{
	self endon("hash_128f8789");
	level endon(self.var_caae374e);
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_480743);
		if(function_5b49d38c(var_480743) && var_480743.var_3e94206a == "axis" && (isdefined(var_480743.var_284432c3) && !var_480743.var_284432c3))
		{
			var_480743.var_284432c3 = 1;
			var_480743 thread function_3de3b792(self);
		}
	}
}

/*
	Name: function_3de3b792
	Namespace: namespace_79e1cd97
	Checksum: 0xBC5F4EFE
	Offset: 0x4818
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_3de3b792(var_12377408)
{
	self endon("hash_128f8789");
	var_a080d759 = function_f679a325(self.var_722885f3 - var_12377408.var_722885f3);
	self function_d7a0a9d8();
	self function_8461d2b1(var_a080d759 * 75);
	self function_2992720d();
}

/*
	Name: function_c1eab89b
	Namespace: namespace_79e1cd97
	Checksum: 0xB63AEB28
	Offset: 0x48B8
	Size: 0x31B
	Parameters: 1
	Flags: None
*/
function function_c1eab89b(var_12377408)
{
	self endon("hash_128f8789");
	var_12377408 endon("hash_128f8789");
	var_b097e0fd = 0.012;
	var_af38510d = 180;
	if(isdefined(self.var_b07228b6))
	{
		while(!self function_32fa5072(var_12377408))
		{
			wait(0.1);
		}
		var_713e715e = namespace_14b42b8a::function_7922262b(self.var_b07228b6);
		var_a6b1619d = function_7d15e2f8(var_713e715e.var_722885f3, self.var_722885f3) * var_b097e0fd;
		self namespace_71e9cb84::function_331efedc("water_splash_lrg");
		self function_921a1574("evt_surge_impact_debris");
		self function_a96a2721(var_713e715e.var_722885f3, var_a6b1619d);
		self function_c0b6566f(var_713e715e.var_6ab6f4fd, var_a6b1619d);
		self waittill("hash_a21db68a");
		level namespace_ad23e503::function_d3de6822("surging_inward");
		while(isdefined(var_713e715e.var_b07228b6))
		{
			var_713e715e = namespace_14b42b8a::function_7922262b(var_713e715e.var_b07228b6);
			level namespace_ad23e503::function_1ab5ebec("surging_inward");
			while(!self function_32fa5072(var_12377408))
			{
				wait(0.1);
			}
			var_a6b1619d = function_7d15e2f8(var_713e715e.var_722885f3, self.var_722885f3) * var_b097e0fd;
			self namespace_71e9cb84::function_331efedc("water_splash_lrg");
			self function_a96a2721(var_713e715e.var_722885f3, var_a6b1619d);
			self function_c0b6566f(var_713e715e.var_6ab6f4fd, var_a6b1619d);
			self waittill("hash_a21db68a");
			if(isdefined(var_713e715e.var_b07228b6))
			{
				level namespace_ad23e503::function_d3de6822("surging_inward");
			}
		}
	}
	self thread function_d1bc8584();
	self thread function_43990014(var_12377408);
}

/*
	Name: function_43990014
	Namespace: namespace_79e1cd97
	Checksum: 0x18CC671F
	Offset: 0x4BE0
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_43990014(var_12377408)
{
	self endon("hash_128f8789");
	var_12377408 endon("hash_128f8789");
	while(1)
	{
		level namespace_ad23e503::function_1ab5ebec("surging_inward");
		while(!self function_32fa5072(var_12377408))
		{
			wait(0.1);
		}
		self namespace_71e9cb84::function_331efedc("water_splash_lrg");
		level namespace_ad23e503::function_d3de6822("surging_inward");
	}
}

/*
	Name: function_d1bc8584
	Namespace: namespace_79e1cd97
	Checksum: 0x78DD5729
	Offset: 0x4CA0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d1bc8584()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_8202763a))
	{
		var_294306eb = "p7_fxanim_cp_blackstation_cars_rocking_0" + self.var_8202763a + "_bundle";
		level thread namespace_cc27597::function_43718187(var_294306eb);
	}
}

/*
	Name: function_98c7a42
	Namespace: namespace_79e1cd97
	Checksum: 0x2BA9FE1C
	Offset: 0x4D08
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_98c7a42()
{
	if(isdefined(self.var_f700fb92))
	{
		self function_7d0838b3(self.var_f700fb92);
	}
}

/*
	Name: function_c1972ac
	Namespace: namespace_79e1cd97
	Checksum: 0xCD9ACE91
	Offset: 0x4D40
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_c1972ac()
{
	self endon("hash_128f8789");
	level endon(self.var_caae374e);
	level endon("hash_407abab8");
	while(1)
	{
		while(function_316422d1(self.var_722885f3, level.var_2fd26037.var_722885f3) > 722500)
		{
			wait(0.05);
		}
		self thread function_2403047c();
		break;
	}
}

/*
	Name: function_2403047c
	Namespace: namespace_79e1cd97
	Checksum: 0x87CB8A7C
	Offset: 0x4DD8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_2403047c()
{
	level endon("hash_407abab8");
	level namespace_ad23e503::function_9d134160("kill_surge");
	level notify("hash_81a3b4e0");
	while(isdefined(self) && level.var_2fd26037 function_32fa5072(self))
	{
		wait(0.05);
	}
	level namespace_ad23e503::function_74d6b22f("kill_surge");
}

/*
	Name: function_32d3b286
	Namespace: namespace_79e1cd97
	Checksum: 0xB51D6C1A
	Offset: 0x4E70
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_32d3b286(var_5dc5e20a)
{
	self endon("hash_128f8789");
	self endon("hash_4735ec09");
	level endon(self.var_caae374e);
	var_5dc5e20a endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_4a36ffac);
		if(var_4a36ffac == var_5dc5e20a && !var_5dc5e20a.var_1cd4d4e6)
		{
			var_5dc5e20a.var_1cd4d4e6 = 1;
			var_5dc5e20a thread function_b8c35195(self);
			var_5dc5e20a thread function_c61ca0be(self);
			var_5dc5e20a thread function_adade905(self);
			var_5dc5e20a thread function_6b6e7b58(self);
			var_5dc5e20a function_921a1574("evt_surge_impact");
			break;
		}
	}
}

/*
	Name: function_6b6e7b58
	Namespace: namespace_79e1cd97
	Checksum: 0xF4AD21E9
	Offset: 0x4F98
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_6b6e7b58(var_12377408)
{
	self endon("hash_128f8789");
	while(self function_32fa5072(var_12377408))
	{
		namespace_82b91a51::function_76f13293();
	}
	wait(0.5);
	if(self.var_eb7c5a24)
	{
		self function_151e32b9(0);
	}
}

/*
	Name: function_b8c35195
	Namespace: namespace_79e1cd97
	Checksum: 0x651B15E1
	Offset: 0x5018
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_b8c35195(var_12377408)
{
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_e9c3870b("wave_hit", 1);
	self namespace_71e9cb84::function_e9c3870b("wind_blur", 1);
	while(isdefined(var_12377408) && self function_32fa5072(var_12377408))
	{
		wait(0.05);
	}
	self.var_1cd4d4e6 = 0;
	if(isdefined(var_12377408))
	{
		var_12377408 notify("hash_4735ec09");
	}
	self namespace_71e9cb84::function_e9c3870b("wave_hit", 0);
	self namespace_71e9cb84::function_e9c3870b("wind_blur", 0);
}

/*
	Name: function_adade905
	Namespace: namespace_79e1cd97
	Checksum: 0x2E8D057D
	Offset: 0x5108
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_adade905(var_59ed1f41)
{
	level endon("hash_6f645037");
	self endon("hash_128f8789");
	self endon("hash_6cda3f32");
	var_59ed1f41 endon("hash_4735ec09");
	function_9cf04c2e(0.5, 2, self.var_722885f3, 100);
	while(1)
	{
		self function_e2af603e("damage_heavy");
		wait(0.1);
	}
}

/*
	Name: function_c61ca0be
	Namespace: namespace_79e1cd97
	Checksum: 0x20E33826
	Offset: 0x51A8
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_c61ca0be(var_59ed1f41)
{
	level endon("hash_6f645037");
	self endon("hash_128f8789");
	self endon("hash_6cda3f32");
	var_59ed1f41 endon("hash_4735ec09");
	var_b9492de8 = 200;
	var_a080d759 = function_bc7ce905(VectorScale((0, 1, 0), 90));
	while(1)
	{
		if(!self.var_4cfe7265 && !self.var_eb7c5a24 && (!isdefined(self.var_564407fb) && self.var_564407fb))
		{
			self function_f5df04e6(var_a080d759 * var_b9492de8);
		}
		else if(isdefined(self.var_b1a4293e))
		{
			var_3b8c7376 = function_316422d1(self.var_722885f3, self.var_b1a4293e.var_722885f3);
			if(function_316422d1(self.var_722885f3, self.var_b1a4293e.var_722885f3) > 10000)
			{
				self function_f5df04e6(var_a080d759 * var_b9492de8);
			}
		}
		if(!self.var_f82cc610)
		{
			self notify("hash_6cda3f32");
			self namespace_82b91a51::function_f9e5537b();
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_252086f2
	Namespace: namespace_79e1cd97
	Checksum: 0x3110F39C
	Offset: 0x5350
	Size: 0xF7
	Parameters: 1
	Flags: None
*/
function function_252086f2(var_473cf959)
{
	level endon("hash_6f645037");
	var_473cf959 endon("hash_128f8789");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_32fa5072(var_473cf959))
			{
				var_5dc5e20a.var_f82cc610 = 1;
				var_473cf959.var_f52921cf = 1;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_55221935
	Namespace: namespace_79e1cd97
	Checksum: 0x1641F503
	Offset: 0x5450
	Size: 0x337
	Parameters: 0
	Flags: None
*/
function function_55221935()
{
	self notify("hash_8af17fe2");
	self endon("hash_8af17fe2");
	self endon("hash_128f8789");
	var_473cf959 = function_6ada35ba("port_assault_low_surge", "targetname");
	var_473cf959 endon("hash_128f8789");
	self.var_3f081af5 = 0;
	while(1)
	{
		while(self function_32fa5072(var_473cf959))
		{
			self.var_3f081af5 = 1;
			self.var_f82cc610 = 1;
			self function_f5ba63f2(0);
			self function_6fa6b424(0);
			if(!(isdefined(var_473cf959.var_f52921cf) && var_473cf959.var_f52921cf))
			{
				switch(var_473cf959.var_db7bb468)
				{
					case "high":
					{
						self function_5a7dd25d(0.7);
						break;
					}
					case default:
					{
						self function_5a7dd25d(0.9);
						break;
					}
				}
				break;
			}
			switch(var_473cf959.var_db7bb468)
			{
				case "high":
				{
					self function_5a7dd25d(0.5);
					break;
				}
				case default:
				{
					self function_5a7dd25d(0.7);
					break;
				}
			}
			wait(0.05);
		}
		var_e59bb0e8 = function_99201f25(var_473cf959.var_caae374e, "script_noteworthy");
		var_77bf815f = 0;
		foreach(var_4dbf3ae3 in var_e59bb0e8)
		{
			if(self function_32fa5072(var_4dbf3ae3))
			{
				var_77bf815f = 1;
			}
		}
		if(!var_77bf815f)
		{
			self function_5a7dd25d(1);
			self function_f5ba63f2(1);
			self function_6fa6b424(1);
			self.var_3f081af5 = 0;
			self.var_f82cc610 = 0;
		}
		wait(0.05);
	}
}

/*
	Name: function_e7121462
	Namespace: namespace_79e1cd97
	Checksum: 0x3F3F8F35
	Offset: 0x5790
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_e7121462()
{
	self endon("hash_128f8789");
	while(1)
	{
		while(level.var_2fd26037 function_32fa5072(self))
		{
			level.var_2fd26037 function_22bedfa6(0.9);
			wait(0.1);
		}
		level.var_2fd26037 function_22bedfa6(1);
		wait(0.1);
	}
}

/*
	Name: function_2a18b01f
	Namespace: namespace_79e1cd97
	Checksum: 0xB90D3E42
	Offset: 0x5820
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_2a18b01f()
{
	var_1c4b4b63 = function_99201f25("pier_wave_left", "script_noteworthy");
	var_d8a504d6 = function_99201f25("pier_wave_right", "script_noteworthy");
	var_f6a86bdd = function_525ae497(var_1c4b4b63, var_d8a504d6, 0, 0);
	foreach(var_a4952fb2 in var_f6a86bdd)
	{
		var_a4952fb2 function_8c8e79fe();
		var_59ed1f41 = function_6ada35ba(var_a4952fb2.var_b07228b6, "targetname");
		var_59ed1f41 function_8f279593();
		var_59ed1f41 function_37f7858a(var_a4952fb2);
	}
}

/*
	Name: function_9ad97cf7
	Namespace: namespace_79e1cd97
	Checksum: 0x6247E897
	Offset: 0x5998
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_9ad97cf7()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_f99affa5();
	}
}

/*
	Name: function_f99affa5
	Namespace: namespace_79e1cd97
	Checksum: 0x15560A37
	Offset: 0x5A50
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function function_f99affa5()
{
	var_8ad4cf96 = function_99201f25("trigger_pier_safe", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8ad4cf96.size; var_c957f6b6++)
	{
		self thread function_fab6808c();
	}
}

/*
	Name: function_fab6808c
	Namespace: namespace_79e1cd97
	Checksum: 0xA890E404
	Offset: 0x5AC8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_fab6808c()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_5dc5e20a);
		if(function_65f192a6(var_5dc5e20a))
		{
			self.var_4cfe7265 = 1;
			var_5dc5e20a notify("hash_db60e15");
			self thread function_34e20912(var_5dc5e20a);
		}
	}
}

/*
	Name: function_34e20912
	Namespace: namespace_79e1cd97
	Checksum: 0x71F16EDA
	Offset: 0x5B50
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_34e20912(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a endon("hash_db60e15");
	while(1)
	{
		if(!var_5dc5e20a function_32fa5072(self))
		{
			self.var_4cfe7265 = 0;
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_c794e42e
	Namespace: namespace_79e1cd97
	Checksum: 0x2889CC0B
	Offset: 0x5BB8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_c794e42e()
{
	self endon("hash_128f8789");
	while(1)
	{
		wait(function_72a94f05(3.5, 4.5));
		level thread function_cf51be1b(self);
		self.var_5963798b = 0;
	}
}

/*
	Name: function_cf51be1b
	Namespace: namespace_79e1cd97
	Checksum: 0xC4D7A7BE
	Offset: 0x5C20
	Size: 0x497
	Parameters: 1
	Flags: None
*/
function function_cf51be1b(var_473cf959)
{
	level namespace_ad23e503::function_9d134160("kill_wave");
	level endon("hash_a0a82373");
	var_473cf959 endon("hash_128f8789");
	level notify("hash_9a604c47");
	wait(1);
	var_1c4b4b63 = function_99201f25("pier_wave_left", "script_noteworthy");
	var_d8a504d6 = function_99201f25("pier_wave_right", "script_noteworthy");
	var_f6a86bdd = function_525ae497(var_1c4b4b63, var_d8a504d6, 0, 0);
	var_32cdba86 = var_f6a86bdd[function_dc99997a(0, var_f6a86bdd.size)];
	var_fcc4e588 = namespace_14b42b8a::function_7922262b(var_32cdba86.var_b07228b6, "targetname");
	var_59ed1f41 = function_6ada35ba(var_32cdba86.var_b07228b6, "targetname");
	var_32cdba86 function_921a1574("evt_wave_dist");
	var_59ed1f41 function_921a1574("evt_wave_splash");
	namespace_84970cc4::function_966ecb29(function_99201f25("wave_fodder", "script_noteworthy"), &function_d2607594, var_59ed1f41, var_fcc4e588);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_486381ce(var_59ed1f41);
	}
	var_59ed1f41 thread function_e5633001();
	level thread function_2adb901e(var_32cdba86);
	while(1)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_32fa5072(var_59ed1f41))
			{
				if(!isdefined(var_5dc5e20a function_e9022fe("WaveWarning")))
				{
					var_5dc5e20a thread function_4d386bf("WaveWarning", "kill_wave");
				}
				var_a080d759 = function_bc7ce905((0, var_fcc4e588.var_6ab6f4fd[1], 0));
				var_b9492de8 = 250;
				var_59ed1f41.var_5963798b = 1;
				if(!var_5dc5e20a.var_4cfe7265 && !var_5dc5e20a.var_eb7c5a24)
				{
					var_5dc5e20a function_f5df04e6(var_a080d759 * var_b9492de8);
				}
				if(var_5dc5e20a.var_eb7c5a24)
				{
					var_5dc5e20a function_e2af603e("bs_wave_anchored");
					continue;
				}
				var_5dc5e20a function_e2af603e("bs_wave");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d2607594
	Namespace: namespace_79e1cd97
	Checksum: 0xF4AF62AF
	Offset: 0x60C0
	Size: 0x107
	Parameters: 2
	Flags: None
*/
function function_d2607594(var_59ed1f41, var_fcc4e588)
{
	self endon("hash_128f8789");
	var_59ed1f41 endon("hash_128f8789");
	level endon("hash_a0a82373");
	while(1)
	{
		if(self function_32fa5072(var_59ed1f41))
		{
			var_a080d759 = function_f679a325(self.var_722885f3 - (var_fcc4e588.var_722885f3[0], self.var_722885f3[1], var_fcc4e588.var_722885f3[2]));
			self function_d7a0a9d8();
			self function_8461d2b1(var_a080d759 * 100);
			self function_2992720d();
		}
		wait(0.05);
	}
}

/*
	Name: function_2adb901e
	Namespace: namespace_79e1cd97
	Checksum: 0xCAFA6539
	Offset: 0x61D0
	Size: 0x28B
	Parameters: 1
	Flags: None
*/
function function_2adb901e(var_32cdba86)
{
	var_fcc4e588 = namespace_14b42b8a::function_7922262b(var_32cdba86.var_b07228b6, "targetname");
	var_32cdba86.var_59ed1f41 = function_6ada35ba(var_32cdba86.var_b07228b6, "targetname");
	var_32cdba86.var_722885f3 = var_fcc4e588.var_722885f3;
	var_32cdba86.var_6ab6f4fd = var_fcc4e588.var_6ab6f4fd;
	if(var_32cdba86.var_caae374e == "pier_wave_left")
	{
		var_ccd4343c = -450;
	}
	else
	{
		var_ccd4343c = 450;
	}
	var_32cdba86 function_a96a2721(var_32cdba86.var_722885f3 + VectorScale((0, 0, 1), 150), 0.1);
	var_32cdba86 waittill("hash_a21db68a");
	var_32cdba86 function_a96a2721(var_32cdba86.var_722885f3 + (var_ccd4343c, 0, 150), 2.5);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_32cdba86 thread function_bccf1e12(var_5dc5e20a);
	}
	var_32cdba86 thread function_4083c129();
	var_32cdba86 waittill("hash_a21db68a");
	var_32cdba86 function_a96a2721(var_32cdba86.var_722885f3 + (var_ccd4343c, 0, -150), 0.5);
	var_32cdba86 waittill("hash_a21db68a");
	var_32cdba86 notify("hash_1144b7ed");
	level namespace_ad23e503::function_74d6b22f("kill_wave");
}

/*
	Name: function_bccf1e12
	Namespace: namespace_79e1cd97
	Checksum: 0x736AF07F
	Offset: 0x6468
	Size: 0xEF
	Parameters: 1
	Flags: None
*/
function function_bccf1e12(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_128f8789");
	self endon("hash_1144b7ed");
	var_5dc5e20a.var_b7677aee = 0;
	while(1)
	{
		self.var_59ed1f41 waittill("hash_4dbf3ae3", var_4a36ffac);
		if(var_4a36ffac == var_5dc5e20a && !var_5dc5e20a.var_b7677aee)
		{
			var_cbf4698a = var_5dc5e20a.var_2a48f7ab;
			var_5dc5e20a.var_2a48f7ab = 0;
			var_5dc5e20a.var_b7677aee = 1;
			self waittill("hash_a21db68a");
			var_5dc5e20a.var_2a48f7ab = var_cbf4698a;
			var_5dc5e20a.var_b7677aee = 0;
		}
	}
}

/*
	Name: function_486381ce
	Namespace: namespace_79e1cd97
	Checksum: 0xA755B7CA
	Offset: 0x6560
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_486381ce(var_473cf959)
{
	self endon("hash_128f8789");
	var_473cf959 endon("hash_128f8789");
	level endon("hash_4f4e78f4");
	self.var_5963798b = 0;
	while(1)
	{
		while(self function_32fa5072(var_473cf959))
		{
			self.var_5963798b = 1;
			wait(0.05);
		}
		self.var_5963798b = 0;
		wait(0.05);
	}
}

/*
	Name: function_e5633001
	Namespace: namespace_79e1cd97
	Checksum: 0xFADF8B6C
	Offset: 0x65F8
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_e5633001()
{
	self endon("hash_128f8789");
	level endon("hash_4f4e78f4");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_480743);
		if(function_5b49d38c(var_480743) && var_480743.var_3e94206a == "axis" && !isdefined(var_480743.var_284432c3))
		{
			self function_9cf489b(var_480743);
		}
	}
}

/*
	Name: function_9cf489b
	Namespace: namespace_79e1cd97
	Checksum: 0x45FD0E5C
	Offset: 0x66A0
	Size: 0x1BB
	Parameters: 1
	Flags: None
*/
function function_9cf489b(var_480743)
{
	self endon("hash_128f8789");
	var_480743 endon("hash_128f8789");
	var_480743.var_284432c3 = 1;
	var_201cd90f = var_480743.var_6ab6f4fd[1];
	if(var_201cd90f >= 0 && var_201cd90f <= 180)
	{
		if(self.var_caae374e == "pier_wave_left_trigger")
		{
			var_94edb8e1 = -100;
			var_480743 thread namespace_cc27597::function_43718187("cin_bla_06_02_vign_wave_swept_left", var_480743);
		}
		else
		{
			var_94edb8e1 = 100;
			var_480743 thread namespace_cc27597::function_43718187("cin_bla_06_02_vign_wave_swept_right", var_480743);
		}
	}
	else if(self.var_caae374e == "pier_wave_left_trigger")
	{
		var_94edb8e1 = -100;
		var_480743 thread namespace_cc27597::function_43718187("cin_bla_06_02_vign_wave_swept_right", var_480743);
	}
	else
	{
		var_94edb8e1 = 100;
		var_480743 thread namespace_cc27597::function_43718187("cin_bla_06_02_vign_wave_swept_left", var_480743);
	}
	var_480743 waittill("hash_25476af1");
	var_480743 function_d7a0a9d8();
	var_480743 function_8461d2b1((0, 100, 40));
	var_480743 function_2992720d();
}

/*
	Name: function_d01267bd
	Namespace: namespace_79e1cd97
	Checksum: 0x84209868
	Offset: 0x6868
	Size: 0x133
	Parameters: 3
	Flags: None
*/
function function_d01267bd(var_2e939094, var_ee7dbbc9, var_aa686173)
{
	if(!isdefined(var_2e939094))
	{
		var_2e939094 = 1;
	}
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 1;
	}
	self endon("hash_128f8789");
	if(isdefined(var_aa686173))
	{
		level endon(var_aa686173);
	}
	var_531b88b4 = 0;
	while(var_531b88b4 < var_2e939094)
	{
		var_dfb53de7 = self namespace_96fa87af::function_ad4ec07a("gunner1");
		if(function_5b49d38c(var_dfb53de7))
		{
			var_dfb53de7 waittill("hash_128f8789");
		}
		else
		{
			var_dfb53de7 = function_392ca6eb(self);
			if(function_5b49d38c(var_dfb53de7))
			{
				var_dfb53de7 namespace_96fa87af::function_230eadd7(self, "gunner1", 0);
				var_531b88b4++;
			}
		}
		wait(var_ee7dbbc9);
	}
}

/*
	Name: function_392ca6eb
	Namespace: namespace_79e1cd97
	Checksum: 0xB7B7D45E
	Offset: 0x69A8
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_392ca6eb(var_45900c37)
{
	var_24bbf032 = function_33222815("human", "axis");
	var_997800be = function_57efbe1(var_24bbf032, var_45900c37.var_722885f3);
	return var_997800be[0];
}

/*
	Name: function_fae23684
	Namespace: namespace_79e1cd97
	Checksum: 0x49CBBA78
	Offset: 0x6A20
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_fae23684(var_60ef80c1)
{
	var_402c598a = self namespace_96fa87af::function_ad4ec07a(var_60ef80c1);
	if(isdefined(var_402c598a))
	{
		var_402c598a namespace_96fa87af::function_dca9dba2();
		var_402c598a namespace_82b91a51::function_4b741fdc();
		var_402c598a.var_342d9e3a = 0;
	}
}

/*
	Name: function_c262adca
	Namespace: namespace_79e1cd97
	Checksum: 0xD1D4E3D0
	Offset: 0x6AA8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_c262adca()
{
	self endon("hash_128f8789");
	while(!isdefined(self namespace_96fa87af::function_ad4ec07a("driver")))
	{
		wait(0.1);
	}
	var_44762fa4 = self namespace_96fa87af::function_ad4ec07a("driver");
	if(function_5b49d38c(var_44762fa4))
	{
		var_44762fa4.var_342d9e3a = 1;
		var_44762fa4 namespace_82b91a51::function_958c7633();
	}
}

/*
	Name: function_4083c129
	Namespace: namespace_79e1cd97
	Checksum: 0x8872340F
	Offset: 0x6B58
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_4083c129()
{
	self.var_8ca0a44f = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3);
	self.var_8ca0a44f function_37f7858a(self);
	self.var_8ca0a44f namespace_5753664b::function_43718187("wave_pier", self.var_8ca0a44f.var_722885f3 + VectorScale((0, 0, -1), 32), undefined, 2, 1);
	self waittill("hash_a21db68a");
	if(isdefined(self.var_8ca0a44f))
	{
		self.var_8ca0a44f function_dc8c8404();
	}
}

/*
	Name: function_90db9f9c
	Namespace: namespace_79e1cd97
	Checksum: 0x42051A9B
	Offset: 0x6C20
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_90db9f9c()
{
	var_d7188244 = function_99201f25("immortal_police_station_corpse", "targetname");
	foreach(var_fe80b161 in var_d7188244)
	{
		var_fe80b161 thread namespace_cc27597::function_43718187(var_fe80b161.var_caae374e, var_fe80b161);
	}
}

/*
	Name: function_6778ea09
	Namespace: namespace_79e1cd97
	Checksum: 0x79D5128C
	Offset: 0x6CF0
	Size: 0x1B3
	Parameters: 1
	Flags: None
*/
function function_6778ea09(var_d7636298)
{
	switch(var_d7636298)
	{
		case "none":
		{
			var_4d33888e = 0;
			break;
		}
		case "light_se":
		{
			var_4d33888e = 1;
			break;
		}
		case "med_se":
		{
			var_4d33888e = 2;
			break;
		}
		case "drench_se":
		{
			var_4d33888e = 3;
			break;
		}
		case "light_ne":
		{
			var_4d33888e = 4;
			break;
		}
		case "med_ne":
		{
			var_4d33888e = 5;
			break;
		}
		case "drench_ne":
		{
			var_4d33888e = 6;
			break;
		}
	}
	if(self == level)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a.var_1b3b1022 = 1;
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("player_rain", var_4d33888e);
		}
	}
	else if(function_65f192a6(self))
	{
		self.var_1b3b1022 = 1;
		self namespace_71e9cb84::function_e9c3870b("player_rain", var_4d33888e);
	}
}

/*
	Name: function_c2d8b452
	Namespace: namespace_79e1cd97
	Checksum: 0x3BFFF747
	Offset: 0x6EB0
	Size: 0xEF
	Parameters: 2
	Flags: None
*/
function function_c2d8b452(var_77996abe, var_aa686173)
{
	level endon(var_aa686173);
	while(1)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < 5; var_c957f6b6++)
		{
			level namespace_80983c42::function_80983c42(var_77996abe);
			wait(0.05);
			level namespace_80983c42::function_67e7a937(var_77996abe);
			wait(0.05);
		}
		function_37cbcf1a("amb_2d_thunder_hits", (0, 0, 0));
		level namespace_80983c42::function_3ab4ff7d(var_77996abe, 1);
		wait(function_72a94f05(8, 11.5));
	}
}

/*
	Name: function_bd1bfce2
	Namespace: namespace_79e1cd97
	Checksum: 0xA61E9893
	Offset: 0x6FA8
	Size: 0x13F
	Parameters: 5
	Flags: None
*/
function function_bd1bfce2(var_4afc7733, var_d8f507f8, var_fef78261, var_6908bd27, var_aa686173)
{
	level endon(var_aa686173);
	while(1)
	{
		namespace_80983c42::function_80983c42(var_4afc7733);
		level thread function_5bf870a4(var_6908bd27);
		wait(function_72a94f05(0.05, 0.11));
		namespace_80983c42::function_80983c42(var_d8f507f8);
		level thread function_5bf870a4(var_6908bd27);
		wait(function_72a94f05(0.11, 0.25));
		if(namespace_d73b9283::function_d2c92ee7())
		{
			namespace_80983c42::function_80983c42(var_fef78261);
			level thread function_5bf870a4(var_6908bd27);
		}
		wait(function_72a94f05(0.7, 3));
	}
}

/*
	Name: function_5bf870a4
	Namespace: namespace_79e1cd97
	Checksum: 0xB6779369
	Offset: 0x70F0
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_5bf870a4(var_6908bd27)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("toggle_ukko", var_6908bd27);
	}
}

/*
	Name: function_d1dc735f
	Namespace: namespace_79e1cd97
	Checksum: 0x23A0262A
	Offset: 0x7198
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_d1dc735f()
{
	level thread function_3ceb3ad7();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_2c33b48e();
	}
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("can_melee", 0);
	level thread namespace_cc27597::function_43718187("cin_bla_05_01_debristraversal_vign_useanchor_start");
	level waittill("hash_153898ed");
	level namespace_ad23e503::function_74d6b22f("hendricks_debris_traversal_ready");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("move_mode", "normal");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("can_melee", 1);
}

/*
	Name: function_ef275fb3
	Namespace: namespace_79e1cd97
	Checksum: 0x45D1E0C6
	Offset: 0x7340
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_ef275fb3()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_7eb7322a", var_e40110b0);
		if(isdefined(var_e40110b0))
		{
			var_e40110b0 thread function_eef51bcb(var_e40110b0, self);
		}
		wait(0.05);
	}
}

/*
	Name: function_eef51bcb
	Namespace: namespace_79e1cd97
	Checksum: 0x3E5E116E
	Offset: 0x73A8
	Size: 0x11B
	Parameters: 2
	Flags: None
*/
function function_eef51bcb(var_e40110b0, var_c73fc1db)
{
	self endon("hash_128f8789");
	var_377a9c22 = var_c73fc1db.var_6050ab17;
	var_ccd4343c = function_cb3d1c9b(var_c73fc1db.var_722885f3, var_377a9c22.var_722885f3);
	var_c003c84d = function_6ada35ba("wind_target", "targetname");
	while(isdefined(var_e40110b0))
	{
		if(isdefined(var_377a9c22) && function_cb3d1c9b(var_e40110b0.var_722885f3, var_377a9c22.var_722885f3) < 0.5 * var_ccd4343c)
		{
			var_e40110b0 function_7847c931(var_c003c84d);
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_33942907
	Namespace: namespace_79e1cd97
	Checksum: 0x4537294D
	Offset: 0x74D0
	Size: 0x21D
	Parameters: 0
	Flags: None
*/
function function_33942907()
{
	level notify("hash_affb79f4");
	level endon("hash_affb79f4");
	while(1)
	{
		if(isdefined(level.var_6a876531) && level.var_6a876531.size > 0)
		{
			foreach(var_2dd5c5dd in level.var_6a876531)
			{
				if(var_2dd5c5dd function_30dbc9bf())
				{
					var_2dd5c5dd.var_ca3202d["bc"] = 1;
					continue;
				}
				var_2dd5c5dd.var_ca3202d["bc"] = 0;
			}
		}
		var_e3b635fb = function_b8494651("axis");
		var_39e0fee4 = 0;
		if(isdefined(var_e3b635fb) && var_e3b635fb.size > 0)
		{
			foreach(var_d84e54db in var_e3b635fb)
			{
				if(var_d84e54db function_30dbc9bf())
				{
					var_39e0fee4 = 1;
				}
			}
		}
		else if(var_39e0fee4)
		{
			namespace_76d95162::function_d9f49fba(1);
		}
		else
		{
			namespace_76d95162::function_d9f49fba(0);
		}
		wait(1);
	}
}

/*
	Name: function_704add6a
	Namespace: namespace_79e1cd97
	Checksum: 0x1343BB83
	Offset: 0x76F8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_704add6a()
{
	level notify("hash_affb79f4");
	if(isdefined(level.var_6a876531) && level.var_6a876531.size > 0)
	{
		foreach(var_2dd5c5dd in level.var_6a876531)
		{
			var_2dd5c5dd.var_ca3202d["bc"] = 1;
		}
	}
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_30dbc9bf
	Namespace: namespace_79e1cd97
	Checksum: 0xF03FB272
	Offset: 0x77D8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_30dbc9bf()
{
	return isdefined(self) && function_5b49d38c(self) && (!isdefined(self.var_67c7c241) && !isdefined(self.var_53b3f102)) && (!isdefined(self.var_255b9315) && self.var_255b9315 && (!isdefined(self.var_c584775c) && self.var_c584775c));
}

/*
	Name: function_ba29155a
	Namespace: namespace_79e1cd97
	Checksum: 0x1A1108F2
	Offset: 0x7858
	Size: 0x293
	Parameters: 2
	Flags: None
*/
function function_ba29155a(var_c047ec73, var_3b15866b)
{
	if(!isdefined(var_c047ec73))
	{
		var_c047ec73 = 250;
	}
	if(!isdefined(var_3b15866b))
	{
		var_3b15866b = var_c047ec73 * 0.5;
	}
	self notify("hash_2f5b059f");
	self endon("hash_128f8789");
	self endon("hash_2f5b059f");
	self endon("hash_a2ba32d");
	self thread function_a2ba32d();
	while(1)
	{
		wait(0.05);
		if(!isdefined(self.var_ae11119e))
		{
			continue;
		}
		var_2188bf75 = self.var_ae11119e;
		var_6bfe1586 = function_e7bdc1a1(var_2188bf75, level.var_2395e945);
		var_4ec85d4a = function_e7bdc1a1(var_2188bf75, function_84970cc4(var_6bfe1586, self));
		var_ccd4343c = function_316422d1(self.var_722885f3, var_6bfe1586.var_722885f3);
		var_c4197ac8 = function_65f192a6(var_4ec85d4a);
		if(var_ccd4343c < var_3b15866b * var_3b15866b || var_c4197ac8)
		{
			self namespace_d84e54db::function_ceb883cd("cqb", 0);
			self namespace_d84e54db::function_ceb883cd("sprint", 1);
			continue;
		}
		else if(var_ccd4343c < var_c047ec73 * var_c047ec73)
		{
			self namespace_d84e54db::function_ceb883cd("cqb", 0);
			self namespace_d84e54db::function_ceb883cd("sprint", 0);
			continue;
		}
		else if(var_ccd4343c > var_c047ec73 * var_c047ec73 * 1.25)
		{
			self namespace_d84e54db::function_ceb883cd("cqb", 1);
			self namespace_d84e54db::function_ceb883cd("sprint", 0);
			continue;
		}
	}
}

/*
	Name: function_a2ba32d
	Namespace: namespace_79e1cd97
	Checksum: 0xF552E86
	Offset: 0x7AF8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_a2ba32d()
{
	self endon("hash_2f5b059f");
	self endon("hash_128f8789");
	self waittill("hash_a2ba32d");
	self namespace_d84e54db::function_ceb883cd("cqb", 0);
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
}

/*
	Name: function_746a2da4
	Namespace: namespace_79e1cd97
	Checksum: 0x57BE1AB7
	Offset: 0x7B68
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_746a2da4(var_c77d2837, var_54f8120e)
{
	namespace_82b91a51::function_93831e79(var_54f8120e);
}

/*
	Name: function_da77906f
	Namespace: namespace_79e1cd97
	Checksum: 0xA47C13A1
	Offset: 0x7BA0
	Size: 0x139
	Parameters: 2
	Flags: None
*/
function function_da77906f(var_c77d2837, var_d51654a4)
{
	if(!isdefined(var_c77d2837))
	{
		var_c77d2837 = [];
	}
	else if(!function_6e2770d8(var_c77d2837))
	{
		var_c77d2837 = function_84970cc4(var_c77d2837);
	}
	foreach(var_4c9c8550 in var_c77d2837)
	{
		if(var_4c9c8550.var_5f8b9cbf & 1)
		{
			if(var_d51654a4 === "connect")
			{
				var_4c9c8550 function_de8377bf();
				continue;
			}
			if(var_d51654a4 === "disconnect")
			{
				var_4c9c8550 function_14c24d9d(2, 0);
			}
		}
	}
}

/*
	Name: function_ca7fecc0
	Namespace: namespace_79e1cd97
	Checksum: 0x27986C94
	Offset: 0x7CE8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_ca7fecc0()
{
	namespace_84970cc4::function_eaab05dc(function_b8494651("axis"), &function_dc8c8404);
}

/*
	Name: function_7aa1381
	Namespace: namespace_79e1cd97
	Checksum: 0x4BD619C1
	Offset: 0x7D30
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_7aa1381()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_32d40124(&"COOP_EQUIP_MICROMISSILE");
	var_637636ed = 0;
	while(self function_48c6a3a2() != function_c4d5ec1f("micromissile_launcher") && var_637636ed <= 10)
	{
		var_637636ed = var_637636ed + 0.1;
		wait(0.1);
	}
	if(self function_48c6a3a2() == function_c4d5ec1f("micromissile_launcher"))
	{
		self.var_f44af1ef = 1;
	}
	self namespace_82b91a51::function_f9e5537b();
}

/*
	Name: function_2292647e
	Namespace: namespace_79e1cd97
	Checksum: 0x79EFC614
	Offset: 0x7E30
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_2292647e()
{
	self endon("hash_128f8789");
	self endon("hash_1194c978");
	var_637636ed = 0;
	while(!self function_b9a85331() && var_637636ed >= 10)
	{
		var_637636ed = var_637636ed + 0.05;
		wait(0.05);
	}
	wait(2);
	if(isdefined(self function_e9022fe("MissileLauncherHint")))
	{
		self function_2b74b70a(self function_e9022fe("MissileLauncherHint"));
		self.var_fca564e8 = 1;
		self notify("hash_242a99a3");
	}
}

/*
	Name: function_dd4b4942
	Namespace: namespace_79e1cd97
	Checksum: 0x362D22BD
	Offset: 0x7F18
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_dd4b4942()
{
	self endon("hash_128f8789");
	self endon("hash_242a99a3");
	self waittill("hash_1194c978");
	if(isdefined(self function_e9022fe("MissileLauncherHint")))
	{
		self function_2b74b70a(self function_e9022fe("MissileLauncherHint"));
	}
}

/*
	Name: function_76b75dc7
	Namespace: namespace_79e1cd97
	Checksum: 0xDFEF7507
	Offset: 0x7F98
	Size: 0xD7
	Parameters: 3
	Flags: None
*/
function function_76b75dc7(var_aa686173, var_cca258db, var_ab7d99d)
{
	if(!isdefined(var_cca258db))
	{
		var_cca258db = 12;
	}
	if(!isdefined(var_ab7d99d))
	{
		var_ab7d99d = 200;
	}
	level endon(var_aa686173);
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_5dc5e20a);
		var_5dc5e20a thread function_ed7faf05();
		if(!var_5dc5e20a.var_32939eb7)
		{
			var_5dc5e20a.var_32939eb7 = 1;
			var_5dc5e20a thread function_7b145e0b(self, var_aa686173, var_cca258db, var_ab7d99d);
		}
	}
}

/*
	Name: function_7b145e0b
	Namespace: namespace_79e1cd97
	Checksum: 0xF3851C77
	Offset: 0x8078
	Size: 0x37B
	Parameters: 4
	Flags: None
*/
function function_7b145e0b(var_c80d3f8f, var_aa686173, var_cca258db, var_ab7d99d)
{
	self endon("hash_128f8789");
	level endon(var_aa686173);
	var_c80d3f8f endon("hash_128f8789");
	if(self namespace_564407fb::function_38a9aff8())
	{
		self.var_116f2fb8 = 1;
	}
	var_ec0f65c6 = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, self.var_6ab6f4fd);
	self function_ed594d21(var_ec0f65c6, "tag_origin", 1, 45, 45, 45, 45);
	self namespace_71e9cb84::function_e9c3870b("player_water_swept", 1);
	var_ec0f65c6 thread namespace_cc27597::function_43718187("cin_blackstation_24_01_ride_vign_body_player_flail", self);
	var_ec0f65c6 function_a96a2721((var_ec0f65c6.var_722885f3[0], var_ec0f65c6.var_722885f3[1], var_cca258db), 0.3);
	var_ec0f65c6 waittill("hash_a21db68a");
	var_bfa0f33f = namespace_14b42b8a::function_7922262b(var_c80d3f8f.var_b07228b6);
	var_ccd4343c = function_7d15e2f8(var_ec0f65c6.var_722885f3, var_bfa0f33f.var_722885f3);
	var_78962fff = var_ccd4343c / var_ab7d99d;
	var_ec0f65c6 thread function_49510c4b(3);
	var_ec0f65c6 function_a96a2721((var_bfa0f33f.var_722885f3[0], var_bfa0f33f.var_722885f3[1], var_cca258db), var_78962fff);
	var_ec0f65c6 waittill("hash_a21db68a");
	var_ec0f65c6 function_a96a2721(var_bfa0f33f.var_722885f3, 1);
	var_ec0f65c6 waittill("hash_a21db68a");
	var_ec0f65c6 namespace_cc27597::function_fcf56ab5("cin_blackstation_24_01_ride_vign_body_player_flail");
	self function_52fddbd0();
	self.var_32939eb7 = 0;
	self namespace_71e9cb84::function_e9c3870b("player_water_swept", 0);
	namespace_82b91a51::function_76f13293();
	self function_eda2be50(var_bfa0f33f.var_6ab6f4fd);
	var_ec0f65c6 function_dc8c8404();
	self thread function_2c33b48e();
	if(self.var_116f2fb8)
	{
		self.var_116f2fb8 = 0;
		self function_c3945cd5(self.var_3a90f16b, self.var_722885f3);
	}
}

/*
	Name: function_49510c4b
	Namespace: namespace_79e1cd97
	Checksum: 0x93513290
	Offset: 0x8400
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_49510c4b(var_bd132462)
{
	self endon("hash_128f8789");
	while(1)
	{
		self function_21d0da55(-180, var_bd132462);
		wait(0.9);
	}
}

/*
	Name: function_d70754a2
	Namespace: namespace_79e1cd97
	Checksum: 0x641DAA87
	Offset: 0x8450
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d70754a2()
{
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_qzone");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_intercept");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_goto_docks");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_neutralize");
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_neutralize");
}

/*
	Name: function_5d4fc658
	Namespace: namespace_79e1cd97
	Checksum: 0x7B8C0CEE
	Offset: 0x84D8
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_5d4fc658()
{
	var_5db4d3e4 = function_99201f25("qzone_civilian_body", "targetname");
	foreach(var_5d5ef481 in var_5db4d3e4)
	{
		var_5d5ef481 thread namespace_cc27597::function_43718187(var_5d5ef481.var_caae374e, var_5d5ef481);
	}
	level namespace_ad23e503::function_1ab5ebec("tanker_go");
	foreach(var_5d5ef481 in var_5db4d3e4)
	{
		if(isdefined(var_5d5ef481))
		{
			var_5d5ef481 function_dc8c8404();
		}
	}
}

/*
	Name: function_4f96504c
	Namespace: namespace_79e1cd97
	Checksum: 0x9D8AF911
	Offset: 0x8648
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_4f96504c(var_ea49a5c9)
{
	var_fe311e35 = self namespace_175490fb::function_5e3d3aa();
	var_1eba5cf1 = function_bdcdc423(var_ea49a5c9.var_722885f3 - self.var_722885f3);
	var_1eba5cf1 = (0, var_1eba5cf1[1], 0);
	self function_5d64f4b4("ai_cybercom_anim", self.var_722885f3, var_1eba5cf1, "ai_base_rifle_" + var_fe311e35 + "_exposed_cybercom_activate", "normal", undefined, undefined, 0.3, 0.3);
	self namespace_175490fb::function_f8669cbf(0);
	self waittillmatch("hash_39fa7e38");
}

/*
	Name: function_dccf6ccc
	Namespace: namespace_79e1cd97
	Checksum: 0x305EE62
	Offset: 0x8758
	Size: 0x1CF
	Parameters: 0
	Flags: None
*/
function function_dccf6ccc()
{
	self endon("hash_d60979de");
	while(1)
	{
		wait(function_72a94f05(5, 7));
		if(isdefined(self.var_6050ab17) && !isdefined(self.var_6050ab17.var_67c7c241) && !isdefined(self.var_6050ab17.var_53b3f102) && self.var_6050ab17.var_8fc0e50e != "warlord")
		{
			var_ea49a5c9 = self.var_6050ab17;
			if(function_5b49d38c(var_ea49a5c9) && !self function_67f028cc())
			{
				if(var_ea49a5c9.var_8fc0e50e == "human")
				{
					var_3e2155a7 = "cybercom_immolation";
				}
				else if(namespace_d73b9283::function_d2c92ee7())
				{
					var_3e2155a7 = "cybercom_servoshortout";
				}
				else
				{
					var_3e2155a7 = "cybercom_immolation";
				}
				self namespace_d84e54db::function_b4f5e3b9(1);
				self function_4f96504c(var_ea49a5c9);
				if(function_5b49d38c(var_ea49a5c9))
				{
					self thread namespace_175490fb::function_d240e350(var_3e2155a7, var_ea49a5c9, 0, 1);
				}
				self namespace_d84e54db::function_b4f5e3b9(0);
			}
		}
	}
}

/*
	Name: function_d870e0
	Namespace: namespace_79e1cd97
	Checksum: 0xAF75F464
	Offset: 0x8930
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_d870e0(var_db803bcf)
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec(var_db803bcf, "targetname", self);
	self thread namespace_c03736ba::function_e9f7384d();
}

/*
	Name: function_46dd77b0
	Namespace: namespace_79e1cd97
	Checksum: 0xAE1A498A
	Offset: 0x8988
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_46dd77b0()
{
	level endon("hash_e2a9cc43");
	level namespace_ad23e503::function_1ab5ebec("hendricks_debris_traversal_ready");
	wait(5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hurry_it_up_we_need_0");
	wait(6);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_what_are_you_waiting_6");
	wait(7);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_d_better_get_movi_0");
}

/*
	Name: function_70aaf37b
	Namespace: namespace_79e1cd97
	Checksum: 0xE0FA11A
	Offset: 0x8A38
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_70aaf37b(var_ce32be36)
{
	var_4c225fa1 = function_6ada35ba("hotel_blocker", "targetname");
	if(var_ce32be36)
	{
		var_4c225fa1 function_4083a98e();
	}
	else
	{
		var_4c225fa1 function_422037f5();
	}
}


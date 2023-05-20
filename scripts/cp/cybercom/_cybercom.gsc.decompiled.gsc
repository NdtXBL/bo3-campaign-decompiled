#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_concussive_wave;
#using scripts\cp\cybercom\_cybercom_gadget_electrostatic_strike;
#using scripts\cp\cybercom\_cybercom_gadget_exosuitbreakdown;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_gadget_forced_malfunction;
#using scripts\cp\cybercom\_cybercom_gadget_iff_override;
#using scripts\cp\cybercom\_cybercom_gadget_immolation;
#using scripts\cp\cybercom\_cybercom_gadget_mrpukey;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\cybercom\_cybercom_gadget_sensory_overload;
#using scripts\cp\cybercom\_cybercom_gadget_servo_shortout;
#using scripts\cp\cybercom\_cybercom_gadget_smokescreen;
#using scripts\cp\cybercom\_cybercom_gadget_surge;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_tactical_rig_emergencyreserve;
#using scripts\cp\cybercom\_cybercom_tactical_rig_proximitydeterrent;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\ai_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_175490fb;

/*
	Name: function_2dc19561
	Namespace: namespace_175490fb
	Checksum: 0x87D74700
	Offset: 0x978
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("cybercom", &function_c35e6aab, &function_d290ebfa, undefined);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_175490fb
	Checksum: 0x614A0B0D
	Offset: 0x9C0
	Size: 0x3C3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_71e9cb84::function_50f16166("world", "cybercom_disabled", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "cybercom_disabled", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "cybercom_setiffname", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("actor", "cybercom_setiffname", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("actor", "cybercom_immolate", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "cybercom_immolate", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "cybercom_sysoverload", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "cybercom_sysoverload", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "cybercom_surge", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "cybercom_surge", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "cybercom_surge", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "cybercom_shortout", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "cybercom_shortout", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("allplayers", "cyber_arm_pulse", 1, 2, "counter");
	namespace_71e9cb84::function_50f16166("actor", "cyber_arm_pulse", 1, 2, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "cyber_arm_pulse", 1, 2, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "hacking_progress", 1, 12, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "playerAbilities.inRange", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "resetAbilityWheel", 1, 1, "int");
	namespace_d00ec32::function_c35e6aab();
	namespace_726a1ef0::function_c35e6aab();
	function_beff8cf9();
}

/*
	Name: function_4ee56464
	Namespace: namespace_175490fb
	Checksum: 0x1FB06128
	Offset: 0xD90
	Size: 0x77
	Parameters: 3
	Flags: None
*/
function function_4ee56464(var_23810282, var_442fb6cd, var_6ee14d17)
{
	var_6a9f2d8 = function_a8fb77bd();
	var_6a9f2d8.var_974cd16f = var_23810282;
	var_6a9f2d8.var_e909f6f0 = var_442fb6cd;
	var_6a9f2d8.var_3d1b9c0c = var_6ee14d17;
	return var_6a9f2d8;
}

/*
	Name: function_beff8cf9
	Namespace: namespace_175490fb
	Checksum: 0xA3844A23
	Offset: 0xE10
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_beff8cf9()
{
	level.var_e4e6dd84 = [];
	level.var_e4e6dd84["default"] = function_4ee56464(0.5, 0.5, 0.5);
}

/*
	Name: function_7f3ccb7
	Namespace: namespace_175490fb
	Checksum: 0x85BC197
	Offset: 0xE68
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function function_7f3ccb7(var_2d11f419, var_dfcc01fd)
{
	self function_c6a94c5b(var_2d11f419, GetTime());
	if(!isdefined(self.var_fe46de11) || GetTime() - self.var_fe46de11 > 200)
	{
		if(function_4bd0142f("ai_awarenessEnabled") && isdefined(var_dfcc01fd) && function_5dbf7eca(var_dfcc01fd.var_4be20d44, "hijack"))
		{
			return;
		}
		self function_a8d4019b();
	}
	if(function_65f192a6(self))
	{
		if(!isdefined(self.var_1c0132c[var_dfcc01fd.var_4be20d44]))
		{
			self.var_1c0132c[var_dfcc01fd.var_4be20d44] = 0;
		}
		self.var_1c0132c[var_dfcc01fd.var_4be20d44]++;
		self function_7eac7939(var_dfcc01fd, self.var_722885f3, GetTime(), 0);
	}
}

/*
	Name: function_b8e0020b
	Namespace: namespace_175490fb
	Checksum: 0x9290920F
	Offset: 0xFB0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_b8e0020b(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_e6cab0ff
	Namespace: namespace_175490fb
	Checksum: 0xD6367E7B
	Offset: 0xFD0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_e6cab0ff()
{
	level.var_175490fb = function_a8fb77bd();
	level.var_175490fb.var_9d01aa69 = [];
	level.var_175490fb.var_f9269224 = 0;
	level.var_175490fb.var_12f85dec = 0;
	level.var_175490fb.var_867392e8 = &function_7f3ccb7;
	level.var_175490fb.var_3bdb9ff6 = &function_b8e0020b;
	level.var_fa51f80e = &function_80fe1bad;
	level.var_baa25f4f = &function_79bafe1d;
	level.var_3be61296 = &function_fabadf47;
	level.var_175490fb.var_44a68a57 = &function_25889576;
	level.var_175490fb.var_dc29a320 = &function_17136681;
}

/*
	Name: function_25889576
	Namespace: namespace_175490fb
	Checksum: 0xFA02853D
	Offset: 0x10F8
	Size: 0x329
	Parameters: 15
	Flags: None
*/
function function_25889576(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_ae725cb8, var_97570bbe, var_6a4d3b3b)
{
	if(function_5dbf7eca(var_ba36487d, "MELEE"))
	{
		self notify("hash_95cdc515");
		if(var_dfcc01fd == function_c4d5ec1f("gadget_es_strike") || var_dfcc01fd == function_c4d5ec1f("gadget_es_strike_upgraded"))
		{
			var_f9a179ed = 0;
			if(!isdefined(var_a77ad8eb) || var_a77ad8eb == "none")
			{
				return var_f9a179ed;
			}
			level notify("hash_63acb616", self, var_3a212fd7, var_f9a179ed, var_dfcc01fd, var_88482219);
			var_2d399bc8 = 1;
		}
		if(var_dfcc01fd == function_c4d5ec1f("gadget_ravage_core") || (var_dfcc01fd == function_c4d5ec1f("gadget_ravage_core_upgraded") && isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot"))
		{
			self namespace_d84e54db::function_ceb883cd("can_gib", 0);
			level notify("hash_f453408d", self, var_3a212fd7, var_f9a179ed, var_dfcc01fd, var_88482219);
			var_2d399bc8 = 1;
		}
		if(var_dfcc01fd == function_c4d5ec1f("gadget_rapid_strike") || var_dfcc01fd == function_c4d5ec1f("gadget_rapid_strike_upgraded"))
		{
			level notify("hash_dd7b91a2", self, var_3a212fd7, var_f9a179ed, var_dfcc01fd, var_88482219);
			var_2d399bc8 = 1;
		}
	}
	else if(var_ba36487d == "MOD_GRENADE_SPLASH")
	{
		if(var_dfcc01fd.var_4be20d44 == "ravage_core_emp_grenade")
		{
			if(isdefined(self.var_8fc0e50e) && (self.var_8fc0e50e == "human" || self.var_8fc0e50e == "zombie"))
			{
				var_f9a179ed = 60;
			}
		}
	}
	if(isdefined(self.var_175e6df4) && self.var_175e6df4 && isdefined(var_3a212fd7) && !function_65f192a6(var_3a212fd7))
	{
		var_f9a179ed = 1;
	}
	if(var_f9a179ed > 30)
	{
		self notify("hash_15b29ba5");
	}
	return var_f9a179ed;
}

/*
	Name: function_17136681
	Namespace: namespace_175490fb
	Checksum: 0x5CDB7D2B
	Offset: 0x1430
	Size: 0x113
	Parameters: 15
	Flags: None
*/
function function_17136681(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f)
{
	if(var_ba36487d == "MOD_MELEE")
	{
		self notify("hash_95cdc515");
		if(var_dfcc01fd == function_c4d5ec1f("gadget_es_strike") || var_dfcc01fd == function_c4d5ec1f("gadget_es_strike_upgraded"))
		{
			var_f9a179ed = 0;
			level notify("hash_63acb616", self, var_3a212fd7, var_f9a179ed, var_dfcc01fd, var_88482219);
			var_2d399bc8 = 1;
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_d290ebfa
	Namespace: namespace_175490fb
	Checksum: 0x713DEF83
	Offset: 0x1550
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	if(!isdefined(level.var_175490fb))
	{
		function_e6cab0ff();
	}
	namespace_d00ec32::function_d290ebfa();
	namespace_726a1ef0::function_d290ebfa();
	level thread function_da99f3e1();
	level thread function_285f5fb1();
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_175490fb
	Checksum: 0xCD5B6723
	Offset: 0x1610
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self.var_175490fb = function_a8fb77bd();
	self.var_175490fb.var_980d0a72 = function_a8fb77bd();
	self.var_175490fb.var_b766574c = 0;
	self.var_1c0132c = [];
	self function_facd1caa();
	self.var_44fb8955["cybercom_flags"] = self.var_175490fb.var_980d0a72;
	self thread function_f44a9d12();
}

/*
	Name: function_aebcf025
	Namespace: namespace_175490fb
	Checksum: 0x21B6106A
	Offset: 0x16C8
	Size: 0x1ED
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self.var_175490fb.var_d1460543 = [];
	self.var_175490fb.var_4eb8cd67 = [];
	self function_ddcda2fd(self.var_44fb8955["cybercom_flags"]);
	self namespace_957e94ce::function_74d6b22f("cybercom_init");
	self.var_175490fb.var_161c9be8 = 0;
	self.var_175490fb.var_8967863e = 1;
	self.var_175490fb.var_18714ef0 = self function_5c93d934(0);
	self.var_175490fb.var_3e73c959 = self function_5c93d934(1);
	self.var_175490fb.var_647643c2 = self function_5c93d934(2);
	var_8e1e095b = self function_2eef1193();
	switch(var_8e1e095b)
	{
		case 0:
		{
			self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_ravagecore"));
			break;
		}
		case 1:
		{
			self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_rapidstrike"));
			break;
		}
		case 2:
		{
			self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_es_strike"));
			break;
		}
	}
}

/*
	Name: function_b1497851
	Namespace: namespace_175490fb
	Checksum: 0x7775F832
	Offset: 0x18C0
	Size: 0x1F
	Parameters: 1
	Flags: Private
*/
function private function_b1497851(var_1df81780)
{
	self.var_175490fb.var_5e76d31b = 1;
}

/*
	Name: function_4d11675a
	Namespace: namespace_175490fb
	Checksum: 0x27DE017B
	Offset: 0x18E8
	Size: 0x27
	Parameters: 2
	Flags: Private
*/
function private function_4d11675a(var_1df81780, var_d62110b4)
{
	self.var_175490fb.var_5e76d31b = 0;
}

/*
	Name: function_f44a9d12
	Namespace: namespace_175490fb
	Checksum: 0xCF6E9F6A
	Offset: 0x1918
	Size: 0x29F
	Parameters: 0
	Flags: None
*/
function function_f44a9d12()
{
	self endon("hash_643a7daf");
	self notify("hash_ccef31c0");
	self endon("hash_ccef31c0");
	for(;;)
	{
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
		if(isdefined(self.var_175490fb.var_1df81780) && var_1df81780 == self.var_175490fb.var_1df81780)
		{
			if(isdefined(self.var_175490fb.var_301030f7) && self.var_175490fb.var_301030f7)
			{
				continue;
			}
			if(isdefined(self.var_175490fb.var_dd2f3b84) && self.var_175490fb.var_dd2f3b84)
			{
				continue;
			}
			var_5dc22ce3 = function_d6df1f20(var_d62110b4, ",");
			if(var_d62110b4 == "opened")
			{
				self function_b1497851(var_1df81780);
				continue;
			}
			if(var_5dc22ce3.size > 1)
			{
				self.var_768ee804 = function_b6b79a0(var_5dc22ce3[1]);
				var_28189c49 = self namespace_d00ec32::function_eb512967(var_5dc22ce3[0]);
				self namespace_71e9cb84::function_e9c3870b("resetAbilityWheel", 0);
				self notify("hash_9a680733");
				if(isdefined(var_28189c49))
				{
					switch(var_28189c49.var_fe311e35)
					{
						case 0:
						{
							self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_ravagecore"));
							break;
						}
						case 1:
						{
							self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_rapidstrike"));
							break;
						}
						case 2:
						{
							self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_es_strike"));
							break;
						}
					}
				}
				self function_4d11675a(var_1df81780, var_d62110b4);
			}
		}
	}
}

/*
	Name: function_6c141a2d
	Namespace: namespace_175490fb
	Checksum: 0xE39F5D58
	Offset: 0x1BC0
	Size: 0x1FF
	Parameters: 1
	Flags: None
*/
function function_6c141a2d(var_1e41d598)
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	self.var_175490fb.var_18714ef0 = self function_5c93d934(0);
	self.var_175490fb.var_3e73c959 = self function_5c93d934(1);
	self.var_175490fb.var_647643c2 = self function_5c93d934(1);
	self.var_175490fb.var_384c5e6e = var_1e41d598;
	self notify("hash_d867b4de");
	if(isdefined(self.var_175490fb.var_90eb6ca7) && self function_2103ff4b(self.var_175490fb.var_90eb6ca7))
	{
		self.var_175490fb.var_7116dac7 = self.var_175490fb.var_90eb6ca7;
		self function_1f3745c0(self.var_175490fb.var_90eb6ca7);
		self.var_175490fb.var_90eb6ca7 = undefined;
	}
	if(isdefined(self.var_175490fb.var_2e20c9bd))
	{
		self function_1f3745c0(self.var_175490fb.var_2e20c9bd);
		self notify("hash_7812f695", self.var_175490fb.var_2e20c9bd);
		self.var_175490fb.var_2e20c9bd = undefined;
	}
	self namespace_71e9cb84::function_e9c3870b("cybercom_disabled", 1);
	self.var_175490fb.var_8967863e = 0;
}

/*
	Name: function_e60e89fe
	Namespace: namespace_175490fb
	Checksum: 0x18556843
	Offset: 0x1DC8
	Size: 0x227
	Parameters: 0
	Flags: None
*/
function function_e60e89fe()
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	self namespace_71e9cb84::function_e9c3870b("cybercom_disabled", 0);
	if(isdefined(self.var_175490fb.var_b6fd26ae))
	{
		self namespace_d00ec32::function_eb512967(self.var_175490fb.var_b6fd26ae.var_4be20d44);
	}
	if(isdefined(self.var_175490fb.var_7116dac7))
	{
		self function_860a040a(self.var_175490fb.var_7116dac7);
		self.var_175490fb.var_90eb6ca7 = self.var_175490fb.var_7116dac7;
		self.var_175490fb.var_7116dac7 = undefined;
	}
	if(isdefined(self.var_175490fb.var_384c5e6e) && self.var_175490fb.var_384c5e6e)
	{
		if(isdefined(self.var_175490fb.var_18714ef0))
		{
			self function_a0b29c50(0, self.var_175490fb.var_18714ef0);
		}
		if(isdefined(self.var_175490fb.var_3e73c959))
		{
			self function_a0b29c50(1, self.var_175490fb.var_3e73c959);
		}
		if(isdefined(self.var_175490fb.var_647643c2))
		{
			self function_a0b29c50(2, self.var_175490fb.var_647643c2);
		}
		self.var_175490fb.var_18714ef0 = undefined;
		self.var_175490fb.var_3e73c959 = undefined;
		self.var_175490fb.var_647643c2 = undefined;
		self.var_175490fb.var_384c5e6e = undefined;
	}
	self.var_175490fb.var_8967863e = 1;
}

/*
	Name: function_285f5fb1
	Namespace: namespace_175490fb
	Checksum: 0x6C132135
	Offset: 0x1FF8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_285f5fb1()
{
	level thread function_8ccda8bf();
	level thread function_d2409753();
}

/*
	Name: function_8ccda8bf
	Namespace: namespace_175490fb
	Checksum: 0x8D41C7D3
	Offset: 0x2038
	Size: 0x12D
	Parameters: 0
	Flags: None
*/
function function_8ccda8bf()
{
	level notify("hash_8ccda8bf");
	level endon("hash_8ccda8bf");
	while(1)
	{
		level waittill("hash_786c76a1", var_5dc5e20a);
		if(isdefined(var_5dc5e20a))
		{
			var_5dc5e20a function_e60e89fe();
			break;
		}
		level namespace_71e9cb84::function_74d6b22f("cybercom_disabled", 0);
		function_6c1294b8("cybercom_enabled", 1);
		foreach(var_5dc5e20a in function_3f10449f())
		{
			var_5dc5e20a function_e60e89fe();
		}
	}
}

/*
	Name: function_d2409753
	Namespace: namespace_175490fb
	Checksum: 0x5B6BF20F
	Offset: 0x2170
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_d2409753()
{
	level notify("hash_d2409753");
	level endon("hash_d2409753");
	while(1)
	{
		level waittill("hash_2c534be8", var_5dc5e20a, var_1e41d598);
		if(isdefined(var_5dc5e20a))
		{
			var_5dc5e20a function_6c141a2d(var_1e41d598);
			break;
		}
		level namespace_71e9cb84::function_74d6b22f("cybercom_disabled", 1);
		function_6c1294b8("cybercom_enabled", 0);
		foreach(var_5dc5e20a in function_3f10449f())
		{
			var_5dc5e20a function_6c141a2d();
		}
	}
}

/*
	Name: function_2b5f1af7
	Namespace: namespace_175490fb
	Checksum: 0xECDCD778
	Offset: 0x22B8
	Size: 0xCB
	Parameters: 7
	Flags: None
*/
function function_2b5f1af7(var_5dc5e20a, var_3a212fd7, var_51e6a548, var_f9a179ed, var_dfcc01fd, var_a77ad8eb, var_785f4b6e)
{
	if(var_5dc5e20a function_76f34311("cybercom_proximitydeterrent") != 0)
	{
		if(isdefined(var_3a212fd7) && var_3a212fd7.var_e6e9b8de != "trigger_hurt" && var_3a212fd7.var_e6e9b8de != "worldspawn")
		{
			var_f9a179ed = var_5dc5e20a namespace_d1c4e441::function_327bda1e(var_f9a179ed, var_785f4b6e);
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_d240e350
	Namespace: namespace_175490fb
	Checksum: 0x6FD4FAF
	Offset: 0x2390
	Size: 0x2E3
	Parameters: 4
	Flags: None
*/
function function_d240e350(var_7872e02, var_b07228b6, var_9bc2efcb, var_668a3301)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(var_668a3301))
	{
		var_668a3301 = 0;
	}
	self endon("hash_128f8789");
	while(var_9bc2efcb && self function_67f028cc())
	{
		wait(0.1);
	}
	switch(var_7872e02)
	{
		case "cybercom_iffoverride":
		{
			namespace_ea01175::function_c26a7c6(var_b07228b6, var_9bc2efcb);
			break;
		}
		case "cybercom_systemoverload":
		{
			namespace_528b4613::function_5839c4ac(var_b07228b6, var_9bc2efcb);
			break;
		}
		case "cybercom_servoshortout":
		{
			namespace_4bc37cb1::function_b1101fa6(var_b07228b6, var_9bc2efcb);
			break;
		}
		case "cybercom_exosuitbreakdown":
		{
			namespace_491e7803::function_2e537afb(var_b07228b6, var_9bc2efcb);
			break;
		}
		case "cybercom_surge":
		{
			namespace_63d98895::function_9eb4d79d(var_b07228b6, var_9bc2efcb, var_668a3301);
			break;
		}
		case "cybercom_sensoryoverload":
		{
			namespace_64276cf9::function_58f5574a(var_b07228b6, var_9bc2efcb);
			break;
		}
		case "cybercom_forcedmalfunction":
		{
			namespace_9c3956fd::function_638ad739(var_b07228b6, var_9bc2efcb);
			break;
		}
		case "cybercom_fireflyswarm":
		{
			namespace_3ed98204::function_2cba8648(var_b07228b6, var_9bc2efcb, var_668a3301);
			break;
		}
		case "cybercom_immolation":
		{
			namespace_a56eec64::function_9eebfb7(var_b07228b6, var_9bc2efcb, var_668a3301);
			break;
		}
		case "cybercom_mrpukey":
		{
			namespace_e44205a2::function_da7ef8ba(var_b07228b6, var_9bc2efcb, var_668a3301);
			break;
		}
		case "cybercom_concussive":
		{
			namespace_687c8387::function_73688d2e(var_b07228b6, var_9bc2efcb);
			break;
		}
		case "cybercom_smokescreen":
		{
			namespace_11fb1f28::function_d25acb0(var_9bc2efcb, var_668a3301);
			break;
		}
		case "cybercom_es_strike":
		{
			namespace_690a49a::function_aae59b93(var_668a3301);
			break;
		}
		case default:
		{
			/#
				namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
			#/
			break;
		}
	}
	self function_921a1574("gdt_cybercore_activate_ai");
}


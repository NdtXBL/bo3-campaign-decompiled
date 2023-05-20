#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_tactical_rig_copycat;
#using scripts\cp\cybercom\_cybercom_tactical_rig_emergencyreserve;
#using scripts\cp\cybercom\_cybercom_tactical_rig_multicore;
#using scripts\cp\cybercom\_cybercom_tactical_rig_playermovement;
#using scripts\cp\cybercom\_cybercom_tactical_rig_proximitydeterrent;
#using scripts\cp\cybercom\_cybercom_tactical_rig_repulsorarmor;
#using scripts\cp\cybercom\_cybercom_tactical_rig_sensorybuffer;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_726a1ef0;

/*
	Name: function_c35e6aab
	Namespace: namespace_726a1ef0
	Checksum: 0xC26C7EC8
	Offset: 0x3B8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_fc601b38::function_c35e6aab();
	namespace_e3074452::function_c35e6aab();
	namespace_d1c4e441::function_c35e6aab();
	namespace_a7b77773::function_c35e6aab();
	namespace_941cddd7::function_c35e6aab();
	namespace_b854c5d0::function_c35e6aab();
	namespace_52c052b7::function_c35e6aab();
}

/*
	Name: function_d290ebfa
	Namespace: namespace_726a1ef0
	Checksum: 0xF4C1D185
	Offset: 0x438
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_fc601b38::function_d290ebfa();
	namespace_e3074452::function_d290ebfa();
	namespace_d1c4e441::function_d290ebfa();
	namespace_a7b77773::function_d290ebfa();
	namespace_941cddd7::function_d290ebfa();
	namespace_b854c5d0::function_d290ebfa();
	namespace_52c052b7::function_d290ebfa();
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_726a1ef0
	Checksum: 0x99EC1590
	Offset: 0x4F8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
}

/*
	Name: function_aebcf025
	Namespace: namespace_726a1ef0
	Checksum: 0x99EC1590
	Offset: 0x508
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_8cb15f87
	Namespace: namespace_726a1ef0
	Checksum: 0xE35B2A5C
	Offset: 0x518
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_8cb15f87(var_4be20d44, var_fe311e35)
{
	if(!isdefined(level.var_ab0cd3b2))
	{
		level.var_ab0cd3b2 = [];
	}
	if(!isdefined(level.var_ab0cd3b2[var_4be20d44]))
	{
		level.var_ab0cd3b2[var_4be20d44] = function_a8fb77bd();
		level.var_ab0cd3b2[var_4be20d44].var_4be20d44 = var_4be20d44;
		level.var_ab0cd3b2[var_4be20d44].var_fe311e35 = var_fe311e35;
	}
}

/*
	Name: function_8b4ef058
	Namespace: namespace_726a1ef0
	Checksum: 0x442EDE7
	Offset: 0x5C0
	Size: 0x281
	Parameters: 3
	Flags: None
*/
function function_8b4ef058(var_4be20d44, var_769c65fa, var_812ec594)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_ab0cd3b2[var_4be20d44]));
	#/
	if(!isdefined(level.var_ab0cd3b2[var_4be20d44].var_769c65fa))
	{
		level.var_ab0cd3b2[var_4be20d44].var_769c65fa = [];
	}
	if(!isdefined(level.var_ab0cd3b2[var_4be20d44].var_812ec594))
	{
		level.var_ab0cd3b2[var_4be20d44].var_812ec594 = [];
	}
	if(isdefined(var_769c65fa))
	{
		if(!isdefined(level.var_ab0cd3b2[var_4be20d44].var_769c65fa))
		{
			level.var_ab0cd3b2[var_4be20d44].var_769c65fa = [];
		}
		else if(!function_6e2770d8(level.var_ab0cd3b2[var_4be20d44].var_769c65fa))
		{
			level.var_ab0cd3b2[var_4be20d44].var_769c65fa = function_84970cc4(level.var_ab0cd3b2[var_4be20d44].var_769c65fa);
		}
		level.var_ab0cd3b2[var_4be20d44].var_769c65fa[level.var_ab0cd3b2[var_4be20d44].var_769c65fa.size] = var_769c65fa;
	}
	if(isdefined(var_812ec594))
	{
		if(!isdefined(level.var_ab0cd3b2[var_4be20d44].var_812ec594))
		{
			level.var_ab0cd3b2[var_4be20d44].var_812ec594 = [];
		}
		else if(!function_6e2770d8(level.var_ab0cd3b2[var_4be20d44].var_812ec594))
		{
			level.var_ab0cd3b2[var_4be20d44].var_812ec594 = function_84970cc4(level.var_ab0cd3b2[var_4be20d44].var_812ec594);
		}
		level.var_ab0cd3b2[var_4be20d44].var_812ec594[level.var_ab0cd3b2[var_4be20d44].var_812ec594.size] = var_812ec594;
	}
}

/*
	Name: function_37a33686
	Namespace: namespace_726a1ef0
	Checksum: 0xFD823F8C
	Offset: 0x850
	Size: 0x281
	Parameters: 3
	Flags: None
*/
function function_37a33686(var_4be20d44, var_58adff7c, var_91c0b9aa)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_ab0cd3b2[var_4be20d44]));
	#/
	if(!isdefined(level.var_ab0cd3b2[var_4be20d44].var_58adff7c))
	{
		level.var_ab0cd3b2[var_4be20d44].var_58adff7c = [];
	}
	if(!isdefined(level.var_ab0cd3b2[var_4be20d44].var_91c0b9aa))
	{
		level.var_ab0cd3b2[var_4be20d44].var_91c0b9aa = [];
	}
	if(isdefined(var_58adff7c))
	{
		if(!isdefined(level.var_ab0cd3b2[var_4be20d44].var_58adff7c))
		{
			level.var_ab0cd3b2[var_4be20d44].var_58adff7c = [];
		}
		else if(!function_6e2770d8(level.var_ab0cd3b2[var_4be20d44].var_58adff7c))
		{
			level.var_ab0cd3b2[var_4be20d44].var_58adff7c = function_84970cc4(level.var_ab0cd3b2[var_4be20d44].var_58adff7c);
		}
		level.var_ab0cd3b2[var_4be20d44].var_58adff7c[level.var_ab0cd3b2[var_4be20d44].var_58adff7c.size] = var_58adff7c;
	}
	if(isdefined(var_91c0b9aa))
	{
		if(!isdefined(level.var_ab0cd3b2[var_4be20d44].var_91c0b9aa))
		{
			level.var_ab0cd3b2[var_4be20d44].var_91c0b9aa = [];
		}
		else if(!function_6e2770d8(level.var_ab0cd3b2[var_4be20d44].var_91c0b9aa))
		{
			level.var_ab0cd3b2[var_4be20d44].var_91c0b9aa = function_84970cc4(level.var_ab0cd3b2[var_4be20d44].var_91c0b9aa);
		}
		level.var_ab0cd3b2[var_4be20d44].var_91c0b9aa[level.var_ab0cd3b2[var_4be20d44].var_91c0b9aa.size] = var_91c0b9aa;
	}
}

/*
	Name: function_fea5c2ac
	Namespace: namespace_726a1ef0
	Checksum: 0x75067220
	Offset: 0xAE0
	Size: 0xD5
	Parameters: 2
	Flags: None
*/
function function_fea5c2ac(var_fe311e35, var_668a3301)
{
	if(!isdefined(level.var_ab0cd3b2[var_fe311e35]))
	{
		return;
	}
	if(isdefined(level.var_ab0cd3b2[var_fe311e35].var_769c65fa))
	{
		foreach(var_769c65fa in level.var_ab0cd3b2[var_fe311e35].var_769c65fa)
		{
			self [[var_769c65fa]](var_fe311e35);
		}
	}
}

/*
	Name: function_8ffa26e2
	Namespace: namespace_726a1ef0
	Checksum: 0x642F9668
	Offset: 0xBC0
	Size: 0xEF
	Parameters: 4
	Flags: None
*/
function function_8ffa26e2(var_fe311e35, var_668a3301, var_2d11f419, var_9ab0ec54)
{
	if(!isdefined(var_668a3301))
	{
		var_668a3301 = 0;
	}
	if(!isdefined(var_9ab0ec54))
	{
		var_9ab0ec54 = 1;
	}
	if(!isdefined(level.var_ab0cd3b2[var_fe311e35]))
	{
		return 0;
	}
	if(!isdefined(var_2d11f419))
	{
		self function_be9e2d9(var_fe311e35, var_668a3301);
	}
	else
	{
		self function_be9e2d9(var_fe311e35, var_668a3301, var_2d11f419);
	}
	if(var_9ab0ec54)
	{
		self namespace_175490fb::function_b6b97f75();
	}
	self function_fea5c2ac(var_fe311e35);
	return 1;
}

/*
	Name: function_ccca7010
	Namespace: namespace_726a1ef0
	Checksum: 0x2BE67616
	Offset: 0xCB8
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_ccca7010(var_fe311e35)
{
	if(!isdefined(level.var_ab0cd3b2[var_fe311e35]))
	{
		return 0;
	}
	self function_45ce30b1(var_fe311e35);
	return 1;
}

/*
	Name: function_45ce30b1
	Namespace: namespace_726a1ef0
	Checksum: 0xD9625089
	Offset: 0xD00
	Size: 0x12F
	Parameters: 1
	Flags: Private
*/
function private function_45ce30b1(var_fe311e35)
{
	if(!isdefined(level.var_ab0cd3b2[var_fe311e35]))
	{
		return 0;
	}
	if(isdefined(level.var_ab0cd3b2[var_fe311e35]) && isdefined(level.var_ab0cd3b2[var_fe311e35].var_812ec594))
	{
		foreach(var_812ec594 in level.var_ab0cd3b2[var_fe311e35].var_812ec594)
		{
			self [[var_812ec594]](var_fe311e35);
		}
	}
	self notify("take_ability_" + var_fe311e35);
	self function_9f1f0e5c(var_fe311e35);
	self namespace_175490fb::function_b6b97f75();
	return 1;
}

/*
	Name: function_78908229
	Namespace: namespace_726a1ef0
	Checksum: 0x9FB48B37
	Offset: 0xE38
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_78908229()
{
	foreach(var_28189c49 in level.var_ab0cd3b2)
	{
		if(self function_76f34311(var_28189c49.var_4be20d44) != 0)
		{
			function_45ce30b1(var_28189c49.var_4be20d44);
		}
	}
	self namespace_175490fb::function_b6b97f75();
}

/*
	Name: function_a07bf2cb
	Namespace: namespace_726a1ef0
	Checksum: 0x70F2CF9A
	Offset: 0xF18
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_a07bf2cb()
{
	foreach(var_28189c49 in level.var_ab0cd3b2)
	{
		var_2e2a14bb = self function_76f34311(var_28189c49.var_4be20d44);
		if(var_2e2a14bb != 0)
		{
			self function_8ffa26e2(var_28189c49.var_4be20d44, var_2e2a14bb == 2);
		}
	}
	self namespace_175490fb::function_b6b97f75();
}

/*
	Name: function_de82b8b4
	Namespace: namespace_726a1ef0
	Checksum: 0xDF2D2562
	Offset: 0x1018
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_de82b8b4(var_fe311e35)
{
	var_2f4d1887 = self function_76f34311(var_fe311e35);
	if(var_2f4d1887 == 0)
	{
		return;
	}
	if(isdefined(level.var_ab0cd3b2[var_fe311e35]) && isdefined(level.var_ab0cd3b2[var_fe311e35].var_58adff7c))
	{
		foreach(var_58adff7c in level.var_ab0cd3b2[var_fe311e35].var_58adff7c)
		{
			self [[var_58adff7c]](var_fe311e35);
		}
	}
}

/*
	Name: function_e7e75042
	Namespace: namespace_726a1ef0
	Checksum: 0x80A4C4FF
	Offset: 0x1128
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_e7e75042(var_fe311e35)
{
	var_2f4d1887 = self function_76f34311(var_fe311e35);
	if(var_2f4d1887 == 0)
	{
		return;
	}
	if(isdefined(level.var_ab0cd3b2[var_fe311e35]) && isdefined(level.var_ab0cd3b2[var_fe311e35].var_91c0b9aa))
	{
		foreach(var_91c0b9aa in level.var_ab0cd3b2[var_fe311e35].var_91c0b9aa)
		{
			self [[var_91c0b9aa]](var_fe311e35);
		}
	}
}


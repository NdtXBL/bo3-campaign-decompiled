#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_f1aa5a21;

/*
	Name: function_2dc19561
	Namespace: namespace_f1aa5a21
	Checksum: 0x31DAAB32
	Offset: 0x190
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("shellshock", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_f1aa5a21
	Checksum: 0x44806851
	Offset: 0x1D0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
	level.var_a6760c4a = &function_1a61261a;
}

/*
	Name: function_c35e6aab
	Namespace: namespace_f1aa5a21
	Checksum: 0x99EC1590
	Offset: 0x218
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_1a61261a
	Namespace: namespace_f1aa5a21
	Checksum: 0x7758CC1A
	Offset: 0x228
	Size: 0x14B
	Parameters: 3
	Flags: None
*/
function function_1a61261a(var_45dcb382, var_f9348fda, var_dfcc01fd)
{
	if(self namespace_82b91a51::function_3baa3ff4())
	{
		return;
	}
	if(var_45dcb382 == "MOD_EXPLOSIVE" || var_45dcb382 == "MOD_GRENADE" || var_45dcb382 == "MOD_GRENADE_SPLASH" || var_45dcb382 == "MOD_PROJECTILE" || var_45dcb382 == "MOD_PROJECTILE_SPLASH")
	{
		var_60db70fa = 0;
		if(var_f9348fda >= 90)
		{
			var_60db70fa = 4;
		}
		else if(var_f9348fda >= 50)
		{
			var_60db70fa = 3;
		}
		else if(var_f9348fda >= 25)
		{
			var_60db70fa = 2;
		}
		else if(var_f9348fda > 10)
		{
			var_60db70fa = 2;
		}
		if(var_60db70fa)
		{
			if(self namespace_82b91a51::function_e00e968f())
			{
				self function_f1aa5a21("frag_grenade_mp", 0.5);
			}
		}
	}
}

/*
	Name: function_b1fe3c1b
	Namespace: namespace_f1aa5a21
	Checksum: 0xAB408DF5
	Offset: 0x380
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_b1fe3c1b()
{
	self waittill("hash_128f8789");
	waittillframeend;
	self notify("hash_eb19095e");
}

/*
	Name: function_fea9fb9a
	Namespace: namespace_f1aa5a21
	Checksum: 0xE8A7543
	Offset: 0x3A8
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function function_fea9fb9a(var_6f6f10c)
{
	self endon("hash_643a7daf");
	wait(var_6f6f10c);
	self notify("hash_fea9fb9a");
}

/*
	Name: function_d06cf10c
	Namespace: namespace_f1aa5a21
	Checksum: 0xF19021
	Offset: 0x3E0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_d06cf10c(var_c7b6e8e4)
{
	function_5e09918e("grenade_rumble", var_c7b6e8e4);
	function_9cf04c2e(0.5, 0.5, self.var_722885f3, 512);
}


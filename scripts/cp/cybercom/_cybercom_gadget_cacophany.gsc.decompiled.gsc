#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_6dcc04c7;

/*
	Name: function_c35e6aab
	Namespace: namespace_6dcc04c7
	Checksum: 0x99EC1590
	Offset: 0x350
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_6dcc04c7
	Checksum: 0x92F8397B
	Offset: 0x360
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(2, 16);
	level.var_175490fb.var_e475d21b = function_a8fb77bd();
	level.var_175490fb.var_e475d21b.var_875da84b = &function_875da84b;
	level.var_175490fb.var_e475d21b.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_e475d21b.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_e475d21b.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_e475d21b.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_e475d21b.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_e475d21b.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_e475d21b.var_4135a1c4 = &function_4135a1c4;
}

/*
	Name: function_875da84b
	Namespace: namespace_6dcc04c7
	Checksum: 0x245BFE36
	Offset: 0x4E8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_6dcc04c7
	Checksum: 0x57427223
	Offset: 0x500
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_6dcc04c7
	Checksum: 0x220D8889
	Offset: 0x520
	Size: 0x1B3
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_110c156a = function_4bd0142f("scr_cacophany_count", 4);
	self.var_175490fb.var_f72b478f = function_f3087faa("scr_cacophany_fov", 0.95);
	self.var_175490fb.var_23d4a73a = function_f3087faa("scr_cacophany_lock_radius", 330);
	if(self function_1a9006bd("cybercom_cacophany") == 2)
	{
		self.var_175490fb.var_110c156a = function_4bd0142f("scr_cacophany_upgraded_count", 5);
		self.var_175490fb.var_f72b478f = function_f3087faa("scr_cacophany_upgraded_fov", 0.5);
		self.var_175490fb.var_23d4a73a = function_f3087faa("scr_cacophany_lock_radius", 330);
	}
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_6dcc04c7
	Checksum: 0x806E6AA3
	Offset: 0x6E0
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
	self.var_175490fb.var_9d8e0758 = undefined;
	self.var_175490fb.var_c40accd3 = undefined;
	self.var_175490fb.var_f72b478f = undefined;
	self.var_175490fb.var_23d4a73a = undefined;
}

/*
	Name: function_5d2fec30
	Namespace: namespace_6dcc04c7
	Checksum: 0x99EC1590
	Offset: 0x760
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_6dcc04c7
	Checksum: 0xA276F931
	Offset: 0x770
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self thread function_7f3f3bde(var_2d11f419, var_dfcc01fd);
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_251e7cf
	Namespace: namespace_6dcc04c7
	Checksum: 0xE8D05293
	Offset: 0x7D0
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
	self thread namespace_175490fb::function_d51412df(var_dfcc01fd);
	self.var_175490fb.var_301030f7 = undefined;
}

/*
	Name: function_4135a1c4
	Namespace: namespace_6dcc04c7
	Checksum: 0x264E9FC6
	Offset: 0x818
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function function_4135a1c4(var_2d11f419, var_dfcc01fd)
{
	if(!(isdefined(self.var_175490fb.var_301030f7) && self.var_175490fb.var_301030f7))
	{
		/#
			namespace_33b293fd::function_a7ee953(self.var_175490fb.var_2e20c9bd == var_dfcc01fd);
		#/
		self thread namespace_175490fb::function_2006f7d0(var_2d11f419, var_dfcc01fd, self.var_175490fb.var_110c156a);
		self.var_175490fb.var_301030f7 = 1;
	}
}

/*
	Name: function_602b28e9
	Namespace: namespace_6dcc04c7
	Checksum: 0x6C8227D3
	Offset: 0x8C8
	Size: 0xDB
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(var_b07228b6)
{
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_cacophany"))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(isdefined(var_b07228b6.var_4898b42f))
	{
		return 0;
	}
	if(isdefined(var_b07228b6.var_37915be0) && var_b07228b6.var_37915be0)
	{
		return 0;
	}
	if(isdefined(var_b07228b6.var_93b5a824) && var_b07228b6.var_93b5a824)
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 6);
		return 0;
	}
	return 1;
}

/*
	Name: function_8aac802c
	Namespace: namespace_6dcc04c7
	Checksum: 0x56CAD3C9
	Offset: 0x9B0
	Size: 0x29
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	return function_99201f25("destructible", "targetname");
}

/*
	Name: function_7f3f3bde
	Namespace: namespace_6dcc04c7
	Checksum: 0xC25AC954
	Offset: 0x9E8
	Size: 0x28B
	Parameters: 2
	Flags: Private
*/
function private function_7f3f3bde(var_2d11f419, var_dfcc01fd)
{
	var_c95a13c6 = 0;
	var_a7491a97 = 0;
	foreach(var_c5b0e858 in self.var_175490fb.var_d1460543)
	{
		if(isdefined(var_c5b0e858.var_b07228b6) && (isdefined(var_c5b0e858.var_cd83ba7b) && var_c5b0e858.var_cd83ba7b))
		{
			if(var_c5b0e858.var_cd83ba7b == 1)
			{
				if(!namespace_175490fb::function_7a7d1608(var_c5b0e858.var_b07228b6, var_dfcc01fd))
				{
					continue;
				}
				var_c5b0e858.var_b07228b6 thread function_41e98fcc(self, var_a7491a97);
				var_a7491a97++;
				continue;
			}
			if(var_c5b0e858.var_cd83ba7b == 2)
			{
				var_c95a13c6++;
			}
		}
	}
	if(var_c95a13c6 && !var_a7491a97)
	{
		self.var_175490fb.var_d1460543 = [];
		self namespace_175490fb::function_29bf9dee(undefined, 1, 0);
	}
	namespace_175490fb::function_adc40f11(var_dfcc01fd, var_a7491a97);
	if(var_a7491a97 && function_65f192a6(self))
	{
		var_1630584c = function_e967a021("cybercom_cacophany");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "assists", "statValue", var_a7491a97);
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_41e98fcc
	Namespace: namespace_6dcc04c7
	Checksum: 0x3E1FABF9
	Offset: 0xC80
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function function_41e98fcc(var_a0ad4f34, var_a4e8111c)
{
	if(var_a4e8111c == 0)
	{
		wait(0.1);
	}
	else
	{
		var_f5aa368a = 0.15 + function_72a94f05(0.1, 0.25) * var_a4e8111c;
		wait(var_f5aa368a);
	}
	self function_c3945cd5(self.var_3a90f16b + 100, self.var_722885f3, var_a0ad4f34, var_a0ad4f34);
	self.var_37915be0 = 1;
}


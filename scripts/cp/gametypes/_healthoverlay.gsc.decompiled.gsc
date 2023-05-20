#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\system_shared;

#namespace namespace_18001e6d;

/*
	Name: function_2dc19561
	Namespace: namespace_18001e6d
	Checksum: 0x7F994D6D
	Offset: 0x1B8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("healthoverlay", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_18001e6d
	Checksum: 0xD8780D78
	Offset: 0x1F8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
	namespace_dabbe128::function_f6076bfe(&function_f9283c47);
	namespace_dabbe128::function_f10e0be0(&function_f9283c47);
	namespace_dabbe128::function_356a4ee1(&function_28c29e3d);
	namespace_dabbe128::function_95670def(&function_f9283c47);
	namespace_dabbe128::function_1b292fa6(&function_f9283c47);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_18001e6d
	Checksum: 0x60477E63
	Offset: 0x2C8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	level.var_552557be = 0.55;
	var_2596845f = level.var_b5fba254;
	level.var_b9cfecfd = var_2596845f * 1000;
	level.var_a168494a = level.var_b9cfecfd <= 0;
}

/*
	Name: function_f9283c47
	Namespace: namespace_18001e6d
	Checksum: 0xB216045F
	Offset: 0x320
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_f9283c47()
{
	self.var_78f63664 = 1;
	self function_f2e7970f("hudItems.regenDelayProgress", 1);
	self notify("hash_3cb5f638");
}

/*
	Name: function_ec5615ca
	Namespace: namespace_18001e6d
	Checksum: 0x7F8CE855
	Offset: 0x378
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_ec5615ca(var_62240a71)
{
	var_ca82b54b = var_62240a71;
	self.var_78f63664 = 0;
	self function_f2e7970f("hudItems.regenDelayProgress", self.var_78f63664);
	while(var_ca82b54b > 0)
	{
		wait(var_62240a71 / 5);
		var_ca82b54b = var_ca82b54b - var_62240a71 / 5;
		self.var_78f63664 = 1 - var_ca82b54b / var_62240a71 + 0.05;
		if(self.var_78f63664 > 1)
		{
			self.var_78f63664 = 1;
		}
		self function_f2e7970f("hudItems.regenDelayProgress", self.var_78f63664);
	}
}

/*
	Name: function_28c29e3d
	Namespace: namespace_18001e6d
	Checksum: 0x4060880E
	Offset: 0x468
	Size: 0x68B
	Parameters: 0
	Flags: None
*/
function function_28c29e3d()
{
	self endon("hash_3cb5f638");
	self endon("hash_905a46e");
	if(self.var_3a90f16b <= 0)
	{
		/#
			namespace_33b293fd::function_a7ee953(!function_5b49d38c(self));
		#/
		return;
	}
	var_47c252e3 = self.var_3a90f16b;
	var_c8c76c92 = var_47c252e3;
	var_5dc5e20a = self;
	var_4d2b26fb = 0;
	var_53412cc2 = 0.1;
	var_88082f9 = 0;
	var_49a2906e = 0;
	var_5dc5e20a.var_d866d5ca = -10000;
	thread function_1373098a(var_47c252e3 * 0.2);
	var_38bcdabc = 0;
	var_e099cf3d = 0;
	var_1ac8646b = 0;
	for(;;)
	{
		wait(0.05);
		if(isdefined(var_5dc5e20a.var_53412cc2))
		{
			var_53412cc2 = var_5dc5e20a.var_53412cc2;
			var_88082f9 = 1;
		}
		if(var_5dc5e20a.var_3a90f16b == var_47c252e3)
		{
			var_49a2906e = 0;
			self.var_baa5489 = 0;
			continue;
		}
		if(var_5dc5e20a.var_3a90f16b <= 0)
		{
			return;
		}
		if(isdefined(var_5dc5e20a.var_564407fb) && var_5dc5e20a.var_564407fb)
		{
			if(!isdefined(self.var_686f6b12) || !self.var_686f6b12)
			{
				self.var_78f63664 = 0;
				self function_f2e7970f("hudItems.regenDelayProgress", 0);
			}
			continue;
		}
		var_d5c57647 = var_49a2906e;
		var_2e29d79e = var_5dc5e20a.var_3a90f16b / var_47c252e3;
		if(var_2e29d79e <= level.var_552557be)
		{
			var_49a2906e = 1;
			self.var_baa5489 = 1;
			if(!var_d5c57647)
			{
				var_e099cf3d = GetTime();
			}
		}
		if(var_5dc5e20a.var_3a90f16b >= var_c8c76c92)
		{
			if(level.var_a168494a)
			{
				continue;
			}
			var_2596845f = level.var_b9cfecfd;
			if(var_5dc5e20a function_88542fcf("specialty_healthregen"))
			{
				var_2596845f = function_b6b79a0(var_2596845f / function_f3087faa("perk_healthRegenMultiplier"));
			}
			var_b536e3c4 = GetTime() - var_e099cf3d / var_2596845f;
			if(var_b536e3c4 < 1)
			{
				if(!isdefined(self.var_78f63664) || function_b6b79a0(self.var_78f63664 * 5) != function_b6b79a0(var_b536e3c4 * 5))
				{
					self.var_78f63664 = var_b536e3c4;
					var_5dc5e20a function_f2e7970f("hudItems.regenDelayProgress", var_b536e3c4);
				}
				continue;
			}
			if(GetTime() - var_38bcdabc > var_2596845f)
			{
				var_38bcdabc = GetTime();
				self notify("hash_7a966c52");
			}
			if(var_49a2906e)
			{
				var_1ac8646b = var_2e29d79e;
				var_977a4ac1 = 3000;
				if(var_5dc5e20a function_88542fcf("specialty_healthregen"))
				{
					var_977a4ac1 = function_b6b79a0(var_977a4ac1 / function_f3087faa("perk_healthRegenMultiplier"));
				}
				var_b536e3c4 = GetTime() - var_e099cf3d / var_977a4ac1;
				if(var_b536e3c4 >= 1)
				{
					var_1ac8646b = var_1ac8646b + var_53412cc2;
				}
				else if(!isdefined(self.var_78f63664) || function_b6b79a0(self.var_78f63664 * 5) != function_b6b79a0(var_b536e3c4 * 5))
				{
					self.var_78f63664 = var_b536e3c4;
					var_5dc5e20a function_f2e7970f("hudItems.regenDelayProgress", var_b536e3c4);
				}
			}
			else if(var_88082f9)
			{
				var_1ac8646b = var_2e29d79e + var_53412cc2;
			}
			else
			{
				var_1ac8646b = 1;
			}
			if(var_1ac8646b != var_c8c76c92)
			{
				self.var_78f63664 = 1;
				var_5dc5e20a function_f2e7970f("hudItems.regenDelayProgress", 1);
			}
			if(var_1ac8646b >= 1)
			{
				self namespace_b976075a::function_2b8bc4cb();
				var_1ac8646b = 1;
			}
			if(var_1ac8646b <= 0)
			{
				return;
			}
			var_5dc5e20a function_e17e9c98(var_1ac8646b);
			var_5f5f81d1 = var_5dc5e20a.var_3a90f16b - var_c8c76c92;
			if(var_5f5f81d1 > 0)
			{
				var_5dc5e20a function_675b27b0(var_5f5f81d1);
			}
			var_c8c76c92 = var_5dc5e20a.var_3a90f16b;
			continue;
		}
		var_c8c76c92 = var_5dc5e20a.var_3a90f16b;
		var_4d2b26fb = 0;
		var_e099cf3d = GetTime();
		var_5dc5e20a.var_d866d5ca = var_e099cf3d + 6000;
	}
}

/*
	Name: function_675b27b0
	Namespace: namespace_18001e6d
	Checksum: 0x1D7EA81F
	Offset: 0xB00
	Size: 0xED
	Parameters: 1
	Flags: None
*/
function function_675b27b0(var_2d374565)
{
	if(!isdefined(self.var_ca1ab1e7))
	{
		return;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_ca1ab1e7.size; var_c957f6b6++)
	{
		if(!isdefined(self.var_ca1ab1e7[var_c957f6b6]) || !isdefined(self.var_ca1ab1e7[var_c957f6b6].var_f9348fda))
		{
			continue;
		}
		self.var_ca1ab1e7[var_c957f6b6].var_f9348fda = self.var_ca1ab1e7[var_c957f6b6].var_f9348fda - var_2d374565;
		if(self.var_ca1ab1e7[var_c957f6b6].var_f9348fda < 0)
		{
			self.var_ca1ab1e7[var_c957f6b6].var_f9348fda = 0;
		}
	}
}

/*
	Name: function_92ef43e1
	Namespace: namespace_18001e6d
	Checksum: 0xFA51ED2
	Offset: 0xBF8
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_92ef43e1(var_90ae96e5)
{
	self endon("hash_3cb5f638");
	wait(2);
	var_5dc5e20a = self;
	for(;;)
	{
		wait(0.2);
		if(var_5dc5e20a.var_3a90f16b <= 0)
		{
			return;
		}
		if(var_5dc5e20a.var_3a90f16b >= var_90ae96e5)
		{
			continue;
		}
		if(level.var_a168494a && GetTime() > var_5dc5e20a.var_d866d5ca)
		{
			continue;
		}
		var_5dc5e20a notify("hash_a71e313f");
		wait(0.784);
		wait(0.1 + function_62e4226e(0.8));
	}
}

/*
	Name: function_1373098a
	Namespace: namespace_18001e6d
	Checksum: 0x52CE349E
	Offset: 0xCD0
	Size: 0x12F
	Parameters: 1
	Flags: None
*/
function function_1373098a(var_90ae96e5)
{
	self endon("hash_3cb5f638");
	self endon("hash_905a46e");
	self.var_1373098a = 0;
	while(1)
	{
		if(self.var_3a90f16b <= var_90ae96e5 && (!isdefined(self namespace_564407fb::function_38a9aff8()) && self namespace_564407fb::function_38a9aff8()))
		{
			self.var_1373098a = 1;
			self namespace_71e9cb84::function_e9c3870b("sndHealth", 1);
			while(self.var_3a90f16b <= var_90ae96e5)
			{
				wait(0.1);
			}
		}
		if(self.var_1373098a)
		{
			self.var_1373098a = 0;
			if(!(isdefined(self namespace_564407fb::function_38a9aff8()) && self namespace_564407fb::function_38a9aff8()))
			{
				self namespace_71e9cb84::function_e9c3870b("sndHealth", 0);
			}
		}
		wait(0.1);
	}
}


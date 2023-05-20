#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\util_shared;

#namespace namespace_e746afb4;

/*
	Name: function_d290ebfa
	Namespace: namespace_e746afb4
	Checksum: 0x19FAE8B3
	Offset: 0x1F8
	Size: 0x5B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_d290ebfa()
{
	if(!isdefined(level.var_993879a7))
	{
		level.var_993879a7 = [];
	}
	level thread function_8c807b6a();
	wait(0.05);
	namespace_dabbe128::function_6aceae7c(&function_fe6d2452);
}

/*
	Name: function_5b4e1da2
	Namespace: namespace_e746afb4
	Checksum: 0x1E0C7D51
	Offset: 0x260
	Size: 0xBF
	Parameters: 3
	Flags: None
*/
function function_5b4e1da2(var_4be20d44, var_6df9264, var_dabbe128)
{
	if(!isdefined(level.var_993879a7))
	{
		level.var_993879a7 = [];
	}
	if(!isdefined(level.var_993879a7[var_4be20d44]))
	{
		level.var_993879a7[var_4be20d44] = function_a8fb77bd();
	}
	level.var_993879a7[var_4be20d44].var_4be20d44 = var_4be20d44;
	level.var_993879a7[var_4be20d44].var_6df9264 = var_6df9264;
	level.var_993879a7[var_4be20d44].var_dabbe128 = var_dabbe128;
}

/*
	Name: function_1df4103f
	Namespace: namespace_e746afb4
	Checksum: 0xB3428DA2
	Offset: 0x328
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_1df4103f(var_4be20d44, var_68285b6a)
{
	if(!isdefined(level.var_993879a7))
	{
		level.var_993879a7 = [];
	}
	if(!isdefined(level.var_993879a7[var_4be20d44]))
	{
		level.var_993879a7[var_4be20d44] = function_a8fb77bd();
	}
	level.var_993879a7[var_4be20d44].var_4be20d44 = var_4be20d44;
	level.var_993879a7[var_4be20d44].var_7bc9910b = var_68285b6a;
}

/*
	Name: function_744c208b
	Namespace: namespace_e746afb4
	Checksum: 0x9CAB6C7A
	Offset: 0x3D0
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_744c208b(var_4be20d44, var_8d8007e7)
{
	if(!isdefined(level.var_993879a7))
	{
		level.var_993879a7 = [];
	}
	if(!isdefined(level.var_993879a7[var_4be20d44]))
	{
		level.var_993879a7[var_4be20d44] = function_a8fb77bd();
	}
	level.var_993879a7[var_4be20d44].var_4be20d44 = var_4be20d44;
	level.var_993879a7[var_4be20d44].var_8d8007e7 = var_8d8007e7;
}

/*
	Name: function_fe6d2452
	Namespace: namespace_e746afb4
	Checksum: 0xF325CFDD
	Offset: 0x478
	Size: 0x25B
	Parameters: 1
	Flags: None
*/
function function_fe6d2452(var_a8563e07)
{
	if(level.var_cd724008 != "sp_proto_characters" && level.var_cd724008 != "challenge_bloodbath")
	{
		return;
	}
	if(isdefined(self.var_e5641f85) && self.var_e5641f85)
	{
		return;
	}
	self.var_e5641f85 = 1;
	var_50c62e42 = namespace_84970cc4::function_47d18840(level.var_993879a7);
	/#
		if(isdefined(var_50c62e42.var_7bc9910b))
		{
			var_50c62e42.var_7bc9910b = function_f3087faa("Dev Block strings are not supported" + var_50c62e42.var_4be20d44);
		}
	#/
	if(function_4bd0142f("scr_drop_autorecover"))
	{
		var_e600741c = self.var_b85025c5;
		if(isdefined(var_e600741c))
		{
			if(isdefined(var_50c62e42.var_dabbe128))
			{
				var_af0d5b3c = self function_9b96760a();
				if(!var_e600741c [[var_50c62e42.var_dabbe128]](var_af0d5b3c))
				{
					return;
				}
			}
			function_37cbcf1a("fly_supply_bag_pick_up", var_e600741c.var_722885f3);
		}
	}
	else if(isdefined(var_50c62e42.var_7bc9910b) && function_62e4226e(1) < var_50c62e42.var_7bc9910b)
	{
		var_722885f3 = self.var_722885f3 + VectorScale((0, 0, 1), 30);
		var_d215a942 = function_49d52f82(var_50c62e42, var_722885f3);
		var_d215a942.var_af0d5b3c = self function_9b96760a();
		level.var_4f2308ad[level.var_4f2308ad.size] = var_d215a942;
		var_d215a942 thread function_64a1deed();
	}
}

/*
	Name: function_9b96760a
	Namespace: namespace_e746afb4
	Checksum: 0x66A5E242
	Offset: 0x6E0
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_9b96760a()
{
	var_5fb85588 = function_f3087faa("scr_drop_default_min");
	if(isdefined(self.var_56af7b9b))
	{
		var_5fb85588 = self.var_56af7b9b;
	}
	var_777f6f72 = function_f3087faa("scr_drop_default_max");
	if(isdefined(self.var_241b86b1))
	{
		var_777f6f72 = self.var_241b86b1;
	}
	if(var_5fb85588 < var_777f6f72)
	{
		return function_72a94f05(var_5fb85588, var_777f6f72);
	}
	return var_5fb85588;
}

/*
	Name: function_8c807b6a
	Namespace: namespace_e746afb4
	Checksum: 0xDAAB1E00
	Offset: 0x798
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_8c807b6a()
{
	level.var_4f2308ad = [];
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	while(1)
	{
		wait(15);
		if(level.var_4f2308ad.size < 1 && level.var_993879a7.size > 0)
		{
			var_50c62e42 = namespace_84970cc4::function_47d18840(level.var_993879a7);
			if(isdefined(var_50c62e42.var_8d8007e7))
			{
				var_722885f3 = namespace_84970cc4::function_47d18840(var_50c62e42.var_8d8007e7);
				var_d215a942 = function_49d52f82(var_50c62e42, var_722885f3);
				level.var_4f2308ad[level.var_4f2308ad.size] = var_d215a942;
				var_d215a942 thread function_64a1deed();
			}
		}
	}
}

/*
	Name: function_49d52f82
	Namespace: namespace_e746afb4
	Checksum: 0xC54FFAEF
	Offset: 0x8C0
	Size: 0xF7
	Parameters: 2
	Flags: None
*/
function function_49d52f82(var_50c62e42, var_722885f3)
{
	var_48b27c8f = function_a8fb77bd();
	var_48b27c8f.var_50c62e42 = var_50c62e42;
	var_48b27c8f.var_722885f3 = var_722885f3;
	var_48b27c8f.var_6df9264 = function_9b7fda5e("script_model", var_48b27c8f.var_722885f3);
	var_48b27c8f.var_6df9264 function_e48f905e(var_50c62e42.var_6df9264);
	var_48b27c8f.var_6df9264 thread function_35a6028b();
	function_37cbcf1a("fly_supply_bag_drop", var_722885f3);
	return var_48b27c8f;
}

/*
	Name: function_35a6028b
	Namespace: namespace_e746afb4
	Checksum: 0xD60423AA
	Offset: 0x9C0
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_35a6028b()
{
	var_7204da72 = 0;
	var_60db70fa = 0;
	self endon("hash_128f8789");
	while(isdefined(self))
	{
		var_7204da72 = var_60db70fa * 90;
		self.var_6ab6f4fd = (0, var_7204da72, 0);
		wait(0.05);
		var_60db70fa = var_60db70fa + 0.05;
	}
}

/*
	Name: function_64a1deed
	Namespace: namespace_e746afb4
	Checksum: 0x30B7D420
	Offset: 0xA40
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_64a1deed()
{
	var_4dbf3ae3 = function_9b7fda5e("trigger_radius", self.var_722885f3, 0, 60, 60);
	self.var_1c7f8993 = var_4dbf3ae3;
	while(isdefined(self))
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_5dc5e20a);
		if(var_5dc5e20a thread function_b72e286d(self))
		{
			break;
		}
	}
	var_4dbf3ae3 function_dc8c8404();
}

/*
	Name: function_b72e286d
	Namespace: namespace_e746afb4
	Checksum: 0x28155834
	Offset: 0xAE8
	Size: 0xEF
	Parameters: 1
	Flags: None
*/
function function_b72e286d(var_50c62e42)
{
	if(isdefined(var_50c62e42.var_50c62e42.var_dabbe128))
	{
		var_af0d5b3c = 1;
		if(isdefined(var_50c62e42.var_af0d5b3c))
		{
			var_af0d5b3c = var_50c62e42.var_af0d5b3c;
		}
		if(!self [[var_50c62e42.var_50c62e42.var_dabbe128]](var_af0d5b3c))
		{
			return 0;
		}
	}
	function_37cbcf1a("fly_supply_bag_pick_up", self.var_722885f3);
	var_50c62e42.var_6df9264 function_dc8c8404();
	function_81403b2f(level.var_4f2308ad, var_50c62e42);
	return 1;
}


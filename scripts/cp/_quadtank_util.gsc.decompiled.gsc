#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_855113f3;

/*
	Name: function_35209d64
	Namespace: namespace_855113f3
	Checksum: 0xEE5B8ADF
	Offset: 0x1C8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_35209d64()
{
	self thread function_ea61aedc();
	namespace_dabbe128::function_d38f54b1(&function_610493ff, self);
}

/*
	Name: function_ea61aedc
	Namespace: namespace_855113f3
	Checksum: 0xE8AB1E2A
	Offset: 0x210
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_ea61aedc()
{
	self endon("hash_128f8789");
	self endon("hash_f1e417ec");
	var_fae93870 = 0;
	var_c1df3693 = 2;
	var_9a15ea97 = function_c4d5ec1f("launcher_standard");
	while(1)
	{
		self notify("hash_82f5563d");
		self waittill("hash_d9877503", var_4a93c703);
		if(var_4a93c703.var_dfcc01fd === var_9a15ea97)
		{
			var_fae93870++;
			if(var_fae93870 >= var_c1df3693)
			{
				var_fae93870 = 0;
				foreach(var_5dc5e20a in level.var_9b1393e7)
				{
					var_5dc5e20a thread namespace_82b91a51::function_32d40124(&"OBJECTIVES_QUAD_TANK_HINT_TROPHY", 0, "quad_tank_trophy_hint_disable");
					var_5dc5e20a thread function_82f5563d(self);
				}
				var_c1df3693 = var_c1df3693 * 2;
			}
			wait(2);
		}
	}
}

/*
	Name: function_82f5563d
	Namespace: namespace_855113f3
	Checksum: 0x88565738
	Offset: 0x3A8
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_82f5563d(var_ac4390f)
{
	var_ac4390f endon("hash_82f5563d");
	var_ac4390f endon("hash_128f8789");
	self endon("hash_128f8789");
	var_ac4390f namespace_82b91a51::function_5b7e3888("trophy_system_disabled", "trophy_system_destroyed");
	self notify("hash_82f5563d");
	var_ac4390f notify("hash_82f5563d");
}

/*
	Name: function_610493ff
	Namespace: namespace_855113f3
	Checksum: 0xDD17963
	Offset: 0x420
	Size: 0x163
	Parameters: 2
	Flags: None
*/
function function_610493ff(var_56fd354c, var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && self namespace_3fc75f50::function_fcd2c4ce() && function_5dbf7eca(var_a8563e07.var_ba36487d, "BULLET"))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(isdefined(var_5dc5e20a.var_d4b7c617))
		{
			var_5dc5e20a.var_d4b7c617 = var_5dc5e20a.var_d4b7c617 + var_a8563e07.var_f9a179ed;
		}
		else
		{
			var_5dc5e20a.var_d4b7c617 = var_a8563e07.var_f9a179ed;
		}
		if(var_5dc5e20a.var_d4b7c617 >= 999)
		{
			var_5dc5e20a.var_d4b7c617 = 0;
			var_5dc5e20a notify("hash_d9337df");
			var_5dc5e20a thread namespace_82b91a51::function_32d40124(&"OBJECTIVES_QUAD_TANK_HINT_ROCKET", 0, "quad_tank_rocket_hint_disable");
			var_5dc5e20a thread function_d9337df(self);
		}
	}
}

/*
	Name: function_d9337df
	Namespace: namespace_855113f3
	Checksum: 0xCDB4A8FD
	Offset: 0x590
	Size: 0x10D
	Parameters: 1
	Flags: None
*/
function function_d9337df(var_ac4390f)
{
	var_ac4390f endon("hash_128f8789");
	self endon("hash_128f8789");
	self endon("hash_d9337df");
	while(1)
	{
		var_ac4390f waittill("hash_f9348fda", var_74d0774f, var_677b3e78, var_34d7a5cf, var_2f950561, var_35b8669a, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_dfcc01fd.var_f4ae8e42 === "rocketlauncher" && function_65f192a6(var_677b3e78))
		{
			var_ac4390f notify("hash_d9337df");
			self notify("hash_d9337df");
		}
	}
}


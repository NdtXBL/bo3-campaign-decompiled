#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_perplayer;
#using scripts\shared\util_shared;

#namespace namespace_5bd7fc09;

/*
	Name: function_d290ebfa
	Namespace: namespace_5bd7fc09
	Checksum: 0x5499B84F
	Offset: 0x138
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level.var_c8c0c927 = 170;
	level.var_5081b9c0 = 128;
	level.var_4b16ff7b = 7;
	level.var_c3da1428 = 23;
	level.var_51c0f2d0 = 3;
	level.var_969b009c = 4;
	var_f59a892e = namespace_3e6d1b65::function_c35e6aab("tear_grenade_monitor", &function_b8add1a2, &function_2641b450);
	namespace_3e6d1b65::function_bae40a28(var_f59a892e);
}

/*
	Name: function_b8add1a2
	Namespace: namespace_5bd7fc09
	Checksum: 0x503985BF
	Offset: 0x1E8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_b8add1a2()
{
	self thread function_ba1b8fa();
}

/*
	Name: function_2641b450
	Namespace: namespace_5bd7fc09
	Checksum: 0xAEE3C42C
	Offset: 0x210
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_2641b450(var_78956cf4)
{
	self notify("hash_235a6bdd");
}

/*
	Name: function_ba1b8fa
	Namespace: namespace_5bd7fc09
	Checksum: 0xD2559B5E
	Offset: 0x238
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_ba1b8fa()
{
	self endon("hash_235a6bdd");
	wait(0.05);
	var_dfcc01fd = function_c4d5ec1f("tear_grenade");
	if(!self function_2103ff4b(var_dfcc01fd))
	{
		return;
	}
	var_c9443414 = self function_c973f2ce(var_dfcc01fd);
	while(1)
	{
		var_ba1472cf = self function_c973f2ce(var_dfcc01fd);
		if(var_ba1472cf < var_c9443414)
		{
			var_791757 = var_c9443414 - var_ba1472cf;
			/#
			#/
			for(var_c957f6b6 = 0; var_c957f6b6 < var_791757; var_c957f6b6++)
			{
				var_962dfd9c = function_99201f25("grenade", "classname");
				var_92853f3f = undefined;
				var_e0afd4a6 = undefined;
				for(var_155ceb88 = 0; var_155ceb88 < var_962dfd9c.size; var_155ceb88++)
				{
					if(!isdefined(var_962dfd9c[var_155ceb88].var_b3462f2d))
					{
						var_2a97d9fd = function_7d15e2f8(var_962dfd9c[var_155ceb88].var_722885f3, self.var_722885f3 + VectorScale((0, 0, 1), 48));
						if(!isdefined(var_92853f3f) || var_2a97d9fd < var_92853f3f)
						{
							var_92853f3f = var_2a97d9fd;
							var_e0afd4a6 = var_155ceb88;
						}
					}
				}
				if(isdefined(var_92853f3f))
				{
					var_962dfd9c[var_e0afd4a6].var_b3462f2d = 1;
					var_962dfd9c[var_e0afd4a6] thread function_b0dbd0d8(self.var_3e94206a);
				}
			}
		}
		var_c9443414 = var_ba1472cf;
		wait(0.05);
	}
}

/*
	Name: function_b0dbd0d8
	Namespace: namespace_5bd7fc09
	Checksum: 0xABA8AB64
	Offset: 0x4B8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_b0dbd0d8(var_3e94206a)
{
	wait(level.var_969b009c);
	var_a3d46ee4 = function_a8fb77bd();
	var_a3d46ee4 thread function_206015cd(self.var_722885f3);
}

/*
	Name: function_206015cd
	Namespace: namespace_5bd7fc09
	Checksum: 0x160B98FA
	Offset: 0x510
	Size: 0x227
	Parameters: 1
	Flags: None
*/
function function_206015cd(var_a2d47c3d)
{
	var_5948b3df = function_9b7fda5e("trigger_radius", var_a2d47c3d, 0, level.var_c8c0c927, level.var_5081b9c0);
	var_a4ad846c = GetTime();
	self thread function_700f69bc();
	self endon("hash_dcd5f169");
	while(1)
	{
		var_5948b3df waittill("hash_4dbf3ae3", var_5dc5e20a);
		if(var_5dc5e20a.var_e0beb6ee != "playing")
		{
			continue;
		}
		var_60db70fa = GetTime() - var_a4ad846c / 1000;
		var_481faeb2 = level.var_c8c0c927;
		var_bd2bd544 = level.var_5081b9c0;
		if(var_60db70fa < level.var_4b16ff7b)
		{
			var_481faeb2 = var_481faeb2 * var_60db70fa / level.var_4b16ff7b;
			var_bd2bd544 = var_bd2bd544 * var_60db70fa / level.var_4b16ff7b;
		}
		var_a4e8111c = var_5dc5e20a.var_722885f3 + VectorScale((0, 0, 1), 32) - var_a2d47c3d;
		var_90735bc6 = (var_a4e8111c[0], var_a4e8111c[1], 0);
		if(function_f781860c(var_90735bc6) > var_481faeb2 * var_481faeb2)
		{
			continue;
		}
		if(var_5dc5e20a.var_722885f3[2] - var_a2d47c3d[2] > var_bd2bd544)
		{
			continue;
		}
		var_5dc5e20a.var_fcc4fa8f = GetTime();
		if(!isdefined(var_5dc5e20a.var_580ff16b))
		{
			var_5dc5e20a thread function_580ff16b();
		}
	}
}

/*
	Name: function_700f69bc
	Namespace: namespace_5bd7fc09
	Checksum: 0x419F689A
	Offset: 0x740
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_700f69bc()
{
	wait(level.var_c3da1428);
	self notify("hash_dcd5f169");
}

/*
	Name: function_580ff16b
	Namespace: namespace_5bd7fc09
	Checksum: 0x60985C87
	Offset: 0x768
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_580ff16b()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self.var_580ff16b = 1;
	if(self namespace_82b91a51::function_e00e968f())
	{
		self function_f1aa5a21("teargas", 60);
	}
	while(1)
	{
		if(GetTime() - self.var_fcc4fa8f > level.var_51c0f2d0 * 1000)
		{
			break;
		}
		wait(1);
	}
	self function_f1aa5a21("teargas", 1);
	if(self namespace_82b91a51::function_e00e968f())
	{
		self.var_580ff16b = undefined;
	}
}

/*
	Name: function_77810775
	Namespace: namespace_5bd7fc09
	Checksum: 0xEC7D4004
	Offset: 0x848
	Size: 0x2EB
	Parameters: 3
	Flags: None
*/
function function_77810775(var_a2d47c3d, var_27beaa06, var_e363b850)
{
	/#
		var_60db70fa = 0;
		while(1)
		{
			var_481faeb2 = var_27beaa06;
			var_bd2bd544 = var_e363b850;
			if(var_60db70fa < level.var_4b16ff7b)
			{
				var_481faeb2 = var_481faeb2 * var_60db70fa / level.var_4b16ff7b;
				var_bd2bd544 = var_bd2bd544 * var_60db70fa / level.var_4b16ff7b;
			}
			for(var_3390f625 = 0; var_3390f625 < 20; var_3390f625++)
			{
				var_c422b13 = var_3390f625 / 20 * 360;
				var_cba5b76b = var_3390f625 + 1 / 20 * 360;
				function_4e418837(var_a2d47c3d + (function_ef0a72b2(var_c422b13) * var_481faeb2, function_3c191891(var_c422b13) * var_481faeb2, 0), var_a2d47c3d + (function_ef0a72b2(var_cba5b76b) * var_481faeb2, function_3c191891(var_cba5b76b) * var_481faeb2, 0));
				function_4e418837(var_a2d47c3d + (function_ef0a72b2(var_c422b13) * var_481faeb2, function_3c191891(var_c422b13) * var_481faeb2, var_bd2bd544), var_a2d47c3d + (function_ef0a72b2(var_cba5b76b) * var_481faeb2, function_3c191891(var_cba5b76b) * var_481faeb2, var_bd2bd544));
				function_4e418837(var_a2d47c3d + (function_ef0a72b2(var_c422b13) * var_481faeb2, function_3c191891(var_c422b13) * var_481faeb2, 0), var_a2d47c3d + (function_ef0a72b2(var_c422b13) * var_481faeb2, function_3c191891(var_c422b13) * var_481faeb2, var_bd2bd544));
			}
			var_60db70fa = var_60db70fa + 0.05;
			if(var_60db70fa > level.var_c3da1428)
			{
				break;
			}
			wait(0.05);
		}
	#/
}


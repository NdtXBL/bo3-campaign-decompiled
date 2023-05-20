#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_dev;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\shared\util_shared;

#namespace namespace_f048f2fa;

/*
	Name: function_c35e6aab
	Namespace: namespace_f048f2fa
	Checksum: 0x10CD248E
	Offset: 0x178
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		level.var_24fed85b = 1;
		thread function_4312d56e();
	#/
	thread function_162d0956();
}

/*
	Name: function_3c7e2a60
	Namespace: namespace_f048f2fa
	Checksum: 0xD437BC47
	Offset: 0x1B8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_3c7e2a60(var_7eb013a5)
{
	/#
		level.var_24fed85b = var_7eb013a5;
	#/
	function_168dc4e(var_7eb013a5);
}

/*
	Name: function_162d0956
	Namespace: namespace_f048f2fa
	Checksum: 0x511B9B37
	Offset: 0x1F8
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_162d0956()
{
	if(function_16f43f1b())
	{
		return;
	}
	if(function_75e46361())
	{
		function_3c7e2a60(0);
		return;
	}
	var_561487cd = function_4dc43066();
	if(!isdefined(var_561487cd))
	{
		return;
	}
	level endon("hash_67462431");
	level waittill("hash_5f6f3990");
	while(1)
	{
		var_b634f8c4 = function_4bd0142f("sessionAdvertCheckwait", 1);
		wait(var_b634f8c4);
		var_2cab2ea0 = [[var_561487cd]]();
		function_3c7e2a60(var_2cab2ea0);
	}
}

/*
	Name: function_4dc43066
	Namespace: namespace_f048f2fa
	Checksum: 0x1253BD6B
	Offset: 0x2F8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_4dc43066()
{
	var_76c6e677 = level.var_76c6e677;
	switch(var_76c6e677)
	{
		case "dm":
		{
			return &function_7937a894;
		}
		case "tdm":
		{
			return &function_c6322b36;
		}
		case "dom":
		{
			return &function_e0b8e3b3;
		}
		case "hq":
		{
			return &function_35ff40ec;
		}
		case "sd":
		{
			return &function_7899d6c8;
		}
		case "dem":
		{
			return &function_9792641;
		}
		case "ctf":
		{
			return &function_6274f19a;
		}
		case "koth":
		{
			return &function_426057b;
		}
		case "conf":
		{
			return &function_575cf307;
		}
		case "oic":
		{
			return &function_421ec2c0;
		}
		case "sas":
		{
			return &function_b3332f74;
		}
		case "gun":
		{
			return &function_b19057a9;
		}
		case "shrp":
		{
			return &function_87f82f26;
		}
	}
	return;
}

/*
	Name: function_b61b8423
	Namespace: namespace_f048f2fa
	Checksum: 0x6D798000
	Offset: 0x468
	Size: 0x167
	Parameters: 1
	Flags: None
*/
function function_b61b8423(var_7ab1b832)
{
	if(level.var_e300e83a)
	{
		var_772ea244 = 100;
		foreach(var_3e94206a in level.var_e7a38025)
		{
			var_4874af36 = 100 - game["teamScores"][var_3e94206a] / level.var_e300e83a * 100;
			if(var_772ea244 > var_4874af36)
			{
				var_772ea244 = var_4874af36;
			}
			if(var_7ab1b832 >= var_4874af36)
			{
				/#
					function_662aa726(3, "Dev Block strings are not supported", function_b6b79a0(var_4874af36));
				#/
				return 0;
			}
		}
		/#
			function_662aa726(3, "Dev Block strings are not supported", function_b6b79a0(var_772ea244));
		#/
	}
	return 1;
}

/*
	Name: function_d84e658d
	Namespace: namespace_f048f2fa
	Checksum: 0xE2CE745E
	Offset: 0x5D8
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function function_d84e658d(var_869fefbb)
{
	var_6f31ae62 = level.var_6d251637;
	if(var_6f31ae62 != 0)
	{
		var_885895d1 = namespace_c46f5728::function_a5369db4();
		if(var_869fefbb >= var_885895d1)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_7937a894
	Namespace: namespace_f048f2fa
	Checksum: 0x31ED4833
	Offset: 0x640
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_7937a894()
{
	var_7ab1b832 = 35;
	var_869fefbb = 60000 * 1.5;
	/#
		function_662aa726(1, "Dev Block strings are not supported", var_7ab1b832);
		function_662aa726(2, "Dev Block strings are not supported", var_869fefbb / 60000);
	#/
	if(level.var_e300e83a)
	{
		var_dec0feaf = 0;
		var_2395e945 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			if(var_2395e945[var_c957f6b6].var_246bf1cb > var_dec0feaf)
			{
				var_dec0feaf = var_2395e945[var_c957f6b6].var_246bf1cb;
			}
		}
		var_4874af36 = 100 - var_dec0feaf / level.var_e300e83a * 100;
		/#
			function_662aa726(3, "Dev Block strings are not supported", function_b6b79a0(var_4874af36));
		#/
		if(var_7ab1b832 >= var_4874af36)
		{
			return 0;
		}
	}
	if(function_d84e658d(var_869fefbb) == 0)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_c6322b36
	Namespace: namespace_f048f2fa
	Checksum: 0x1F5B7BC1
	Offset: 0x800
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_c6322b36()
{
	var_7ab1b832 = 15;
	var_869fefbb = 60000 * 1.5;
	/#
		function_662aa726(1, "Dev Block strings are not supported", var_7ab1b832);
		function_662aa726(2, "Dev Block strings are not supported", var_869fefbb / 60000);
	#/
	if(function_b61b8423(var_7ab1b832) == 0)
	{
		return 0;
	}
	if(function_d84e658d(var_869fefbb) == 0)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_e0b8e3b3
	Namespace: namespace_f048f2fa
	Checksum: 0x57D0E197
	Offset: 0x8D8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_e0b8e3b3()
{
	var_7ab1b832 = 15;
	var_869fefbb = 60000 * 1.5;
	var_7af2cd6d = 3;
	var_5e08cce8 = game["roundsplayed"] + 1;
	/#
		function_662aa726(1, "Dev Block strings are not supported", var_7ab1b832);
		function_662aa726(2, "Dev Block strings are not supported", var_7af2cd6d);
		function_662aa726(4, "Dev Block strings are not supported", var_5e08cce8);
	#/
	if(var_5e08cce8 >= 2)
	{
		if(function_b61b8423(var_7ab1b832) == 0)
		{
			return 0;
		}
	}
	if(function_d84e658d(var_869fefbb) == 0)
	{
		return 0;
	}
	if(var_7af2cd6d <= var_5e08cce8)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_35ff40ec
	Namespace: namespace_f048f2fa
	Checksum: 0x3F7E9865
	Offset: 0xA18
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_35ff40ec()
{
	return function_426057b();
}

/*
	Name: function_7899d6c8
	Namespace: namespace_f048f2fa
	Checksum: 0xE66FCC81
	Offset: 0xA38
	Size: 0x157
	Parameters: 0
	Flags: None
*/
function function_7899d6c8()
{
	var_7af2cd6d = 3;
	/#
		function_662aa726(1, "Dev Block strings are not supported", var_7af2cd6d);
	#/
	var_3557910e = 0;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		var_4a2c3d76 = game["teamScores"][var_3e94206a];
		if(var_3557910e < var_4a2c3d76)
		{
			var_3557910e = var_4a2c3d76;
		}
		if(var_7af2cd6d <= var_4a2c3d76)
		{
			/#
				function_662aa726(3, "Dev Block strings are not supported", var_3557910e);
			#/
			return 0;
		}
	}
	/#
		function_662aa726(3, "Dev Block strings are not supported", var_3557910e);
	#/
	return 1;
}

/*
	Name: function_9792641
	Namespace: namespace_f048f2fa
	Checksum: 0xD5EDEBA1
	Offset: 0xB98
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_9792641()
{
	return function_6274f19a();
}

/*
	Name: function_6274f19a
	Namespace: namespace_f048f2fa
	Checksum: 0x9C0DFB6C
	Offset: 0xBB8
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_6274f19a()
{
	var_7af2cd6d = 3;
	var_a8ce2e4f = game["roundsplayed"];
	/#
		function_662aa726(1, "Dev Block strings are not supported", var_7af2cd6d);
		function_662aa726(3, "Dev Block strings are not supported", var_a8ce2e4f);
	#/
	if(var_7af2cd6d <= var_a8ce2e4f)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_426057b
	Namespace: namespace_f048f2fa
	Checksum: 0x9BE80234
	Offset: 0xC50
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_426057b()
{
	var_7ab1b832 = 20;
	var_869fefbb = 60000 * 1.5;
	/#
		function_662aa726(1, "Dev Block strings are not supported", var_7ab1b832);
		function_662aa726(2, "Dev Block strings are not supported", var_869fefbb / 60000);
	#/
	if(function_b61b8423(var_7ab1b832) == 0)
	{
		return 0;
	}
	if(function_d84e658d(var_869fefbb) == 0)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_575cf307
	Namespace: namespace_f048f2fa
	Checksum: 0x4F1C1DE3
	Offset: 0xD28
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_575cf307()
{
	return function_c6322b36();
}

/*
	Name: function_421ec2c0
	Namespace: namespace_f048f2fa
	Checksum: 0xD5D19330
	Offset: 0xD48
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function function_421ec2c0()
{
	/#
		function_662aa726(1, "Dev Block strings are not supported", 0);
	#/
	return 0;
}

/*
	Name: function_b3332f74
	Namespace: namespace_f048f2fa
	Checksum: 0x80A22622
	Offset: 0xD78
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_b3332f74()
{
	var_7ab1b832 = 35;
	var_869fefbb = 60000 * 1.5;
	/#
		function_662aa726(1, "Dev Block strings are not supported", var_7ab1b832);
		function_662aa726(2, "Dev Block strings are not supported", var_869fefbb / 60000);
	#/
	if(function_b61b8423(var_7ab1b832) == 0)
	{
		return 0;
	}
	if(function_d84e658d(var_869fefbb) == 0)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_b19057a9
	Namespace: namespace_f048f2fa
	Checksum: 0x5EBF94E
	Offset: 0xE50
	Size: 0x167
	Parameters: 0
	Flags: None
*/
function function_b19057a9()
{
	var_713495b5 = 3;
	/#
		function_662aa726(1, "Dev Block strings are not supported", var_713495b5);
	#/
	var_3fb7d29d = level.var_8fbfabd6.size;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5ac136cf = level.var_8fbfabd6.size - var_5dc5e20a.var_71f4d62c;
		if(var_3fb7d29d > var_5ac136cf)
		{
			var_3fb7d29d = var_5ac136cf;
		}
		if(var_713495b5 >= var_3fb7d29d)
		{
			/#
				function_662aa726(3, "Dev Block strings are not supported", var_3fb7d29d);
			#/
			return 0;
		}
	}
	/#
		function_662aa726(3, "Dev Block strings are not supported", var_3fb7d29d);
	#/
	return 1;
}

/*
	Name: function_87f82f26
	Namespace: namespace_f048f2fa
	Checksum: 0x92F00178
	Offset: 0xFC0
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_87f82f26()
{
	var_7ab1b832 = 35;
	var_869fefbb = 60000 * 1.5;
	/#
		function_662aa726(1, "Dev Block strings are not supported", var_7ab1b832);
		function_662aa726(2, "Dev Block strings are not supported", var_869fefbb / 60000);
	#/
	if(function_b61b8423(var_7ab1b832) == 0)
	{
		return 0;
	}
	if(function_d84e658d(var_869fefbb) == 0)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_64eda039
	Namespace: namespace_f048f2fa
	Checksum: 0xD019C707
	Offset: 0x1098
	Size: 0x171
	Parameters: 2
	Flags: None
*/
function function_64eda039(var_af5f7111, var_b5536acc)
{
	/#
		var_6836a6c8 = namespace_eae8c9fa::function_fb312e3b("Dev Block strings are not supported", "Dev Block strings are not supported", 0, 0, 1);
		var_6836a6c8.var_5773c805 = 1;
		var_6836a6c8.var_740218b1 = "Dev Block strings are not supported";
		var_6836a6c8.var_f9134763 = "Dev Block strings are not supported";
		var_6836a6c8.var_b5536acc = "Dev Block strings are not supported";
		var_6836a6c8.var_db55e535 = "Dev Block strings are not supported";
		var_6836a6c8.var_4f8217af = var_b5536acc;
		var_6836a6c8.var_297f9d46 = -50 + var_af5f7111 * 15;
		var_6836a6c8.var_79e0f792 = 1;
		var_6836a6c8.var_83253ac2 = "Dev Block strings are not supported";
		var_6836a6c8.var_2363da9c = 1.5;
		var_6836a6c8.var_d900369a = (1, 1, 1);
		var_6836a6c8.var_aabe9f43 = 1;
		var_6836a6c8 function_f6181aca("Dev Block strings are not supported");
		return var_6836a6c8;
	#/
}

/*
	Name: function_662aa726
	Namespace: namespace_f048f2fa
	Checksum: 0x97EFE6BE
	Offset: 0x1218
	Size: 0xC1
	Parameters: 3
	Flags: None
*/
function function_662aa726(var_2a688868, var_8caa0808, var_9368ba0c)
{
	/#
		switch(var_2a688868)
		{
			case 1:
			{
				level.var_8c04dad1 = var_8caa0808;
				level.var_385b6a0c = var_9368ba0c;
				break;
			}
			case 2:
			{
				level.var_abd9a012 = var_8caa0808;
				level.var_710cccb = var_9368ba0c;
				break;
			}
			case 3:
			{
				level.var_9f448a7f = var_8caa0808;
				level.var_91909b66 = var_9368ba0c;
				break;
			}
			case 4:
			{
				level.var_89cea760 = var_8caa0808;
				level.var_fb32b325 = var_9368ba0c;
				break;
			}
		}
	#/
}

/*
	Name: function_4312d56e
	Namespace: namespace_f048f2fa
	Checksum: 0xAE708AE0
	Offset: 0x12E8
	Size: 0x64F
	Parameters: 0
	Flags: None
*/
function function_4312d56e()
{
	/#
		level endon("hash_67462431");
		var_dc208f51 = undefined;
		var_7e6f7c41 = undefined;
		var_a471f6aa = undefined;
		var_f05bd5d0 = undefined;
		var_6263450b = undefined;
		var_7e18b197 = undefined;
		var_c11425c = undefined;
		var_ed8aa226 = undefined;
		var_c78827bd = undefined;
		level.var_2b67eec1 = "Dev Block strings are not supported";
		level.var_8c04dad1 = "Dev Block strings are not supported";
		level.var_385b6a0c = "Dev Block strings are not supported";
		level.var_abd9a012 = "Dev Block strings are not supported";
		level.var_710cccb = "Dev Block strings are not supported";
		level.var_9f448a7f = "Dev Block strings are not supported";
		level.var_91909b66 = "Dev Block strings are not supported";
		level.var_89cea760 = "Dev Block strings are not supported";
		level.var_fb32b325 = "Dev Block strings are not supported";
		while(1)
		{
			wait(1);
			var_fbfa48f2 = function_4bd0142f("Dev Block strings are not supported", 0);
			level.var_2b67eec1 = "Dev Block strings are not supported";
			if(level.var_24fed85b == 0)
			{
				level.var_2b67eec1 = "Dev Block strings are not supported";
			}
			if(!isdefined(var_dc208f51) && var_fbfa48f2 != 0)
			{
				var_bdb4d59b = namespace_82b91a51::function_5e770196();
				if(!isdefined(var_bdb4d59b))
				{
					continue;
				}
				var_dc208f51 = var_bdb4d59b function_64eda039(0, 0);
				var_7e6f7c41 = var_bdb4d59b function_64eda039(1, -20);
				var_a471f6aa = var_bdb4d59b function_64eda039(1, 0);
				var_f05bd5d0 = var_bdb4d59b function_64eda039(2, -20);
				var_6263450b = var_bdb4d59b function_64eda039(2, 0);
				var_7e18b197 = var_bdb4d59b function_64eda039(3, -20);
				var_c11425c = var_bdb4d59b function_64eda039(3, 0);
				var_ed8aa226 = var_bdb4d59b function_64eda039(4, -20);
				var_c78827bd = var_bdb4d59b function_64eda039(4, 0);
				var_7e6f7c41.var_d900369a = VectorScale((0, 1, 0), 0.5);
				var_a471f6aa.var_d900369a = VectorScale((0, 1, 0), 0.5);
				var_f05bd5d0.var_d900369a = VectorScale((0, 1, 0), 0.5);
				var_6263450b.var_d900369a = VectorScale((0, 1, 0), 0.5);
			}
			if(isdefined(var_dc208f51))
			{
				if(var_fbfa48f2 == 0)
				{
					var_dc208f51 function_89cd542d();
					var_7e6f7c41 function_89cd542d();
					var_a471f6aa function_89cd542d();
					var_f05bd5d0 function_89cd542d();
					var_6263450b function_89cd542d();
					var_7e18b197 function_89cd542d();
					var_c11425c function_89cd542d();
					var_ed8aa226 function_89cd542d();
					var_c78827bd function_89cd542d();
					var_dc208f51 = undefined;
					var_7e6f7c41 = undefined;
					var_a471f6aa = undefined;
					var_f05bd5d0 = undefined;
					var_6263450b = undefined;
					var_7e18b197 = undefined;
					var_c11425c = undefined;
					var_ed8aa226 = undefined;
					var_c78827bd = undefined;
				}
				else if(level.var_24fed85b == 1)
				{
					var_dc208f51.var_d900369a = (1, 1, 1);
				}
				else
				{
					var_dc208f51.var_d900369a = VectorScale((1, 0, 0), 0.9);
				}
				var_dc208f51 function_f6181aca(level.var_2b67eec1);
				if(level.var_8c04dad1 != "Dev Block strings are not supported")
				{
					var_7e6f7c41 function_f6181aca(level.var_8c04dad1);
					var_a471f6aa function_ee69b16e(level.var_385b6a0c);
				}
				if(level.var_abd9a012 != "Dev Block strings are not supported")
				{
					var_f05bd5d0 function_f6181aca(level.var_abd9a012);
					var_6263450b function_ee69b16e(level.var_710cccb);
				}
				if(level.var_9f448a7f != "Dev Block strings are not supported")
				{
					var_7e18b197 function_f6181aca(level.var_9f448a7f);
					var_c11425c function_ee69b16e(level.var_91909b66);
				}
				if(level.var_89cea760 != "Dev Block strings are not supported")
				{
					var_ed8aa226 function_f6181aca(level.var_89cea760);
					var_c78827bd function_ee69b16e(level.var_fb32b325);
				}
			}
		}
	#/
}


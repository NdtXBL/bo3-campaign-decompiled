#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\shared\hostmigration_shared;
#using scripts\shared\hud_message_shared;

#namespace namespace_c46f5728;

/*
	Name: function_15b32a64
	Namespace: namespace_c46f5728
	Checksum: 0xBFFAEEF0
	Offset: 0x2E0
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_15b32a64()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	for(;;)
	{
		wait(10);
		var_b444826e = function_a8fb77bd();
		var_b444826e.var_c4a19800 = &"MP_CHALLENGE_COMPLETED";
		var_b444826e.var_da258253 = "wheee";
		var_b444826e.var_93b50d82 = "mp_challenge_complete";
		self thread namespace_4d476a30::function_a73c3a23(var_b444826e);
	}
}

/*
	Name: function_ff71e289
	Namespace: namespace_c46f5728
	Checksum: 0xF6CB316B
	Offset: 0x380
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_ff71e289()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	for(;;)
	{
		wait(3);
		var_68849b5e = function_26299103(6);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_68849b5e; var_c957f6b6++)
		{
			function_2e4b8c78(var_68849b5e);
			self function_f1aa5a21("frag_grenade_mp", 0.2);
			wait(0.1);
		}
	}
}

/*
	Name: function_ca9fc669
	Namespace: namespace_c46f5728
	Checksum: 0x80EE2051
	Offset: 0x448
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_ca9fc669()
{
	if(level.var_6b0d921)
	{
		var_aa61e82a = GetTime() - level.var_37b8dc91 / 1000;
		var_e661a91a = level.var_fd96027a - var_aa61e82a;
		if(var_e661a91a < 0)
		{
			return 0;
		}
		return var_e661a91a;
	}
	if(level.var_8e73036d)
	{
		return undefined;
	}
	if(level.var_6d251637 <= 0)
	{
		return undefined;
	}
	if(!isdefined(level.var_a4ad846c))
	{
		return undefined;
	}
	var_aa61e82a = function_3c9bd810() - level.var_a4ad846c / 1000;
	var_e661a91a = level.var_6d251637 * 60 - var_aa61e82a;
	return var_e661a91a + level.var_fd96027a;
}

/*
	Name: function_a5369db4
	Namespace: namespace_c46f5728
	Checksum: 0x2BA9A328
	Offset: 0x530
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_a5369db4()
{
	if(level.var_6d251637 == 0)
	{
		return undefined;
	}
	return level.var_6d251637 * 60 * 1000 - function_3c9bd810();
}

/*
	Name: function_10704124
	Namespace: namespace_c46f5728
	Checksum: 0xE3563218
	Offset: 0x578
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function function_10704124(var_25e0d90d)
{
	if(!isdefined(level.var_8f4e9ece))
	{
		level.var_8f4e9ece = [];
	}
	level.var_8f4e9ece[level.var_8f4e9ece.size] = var_25e0d90d;
}

/*
	Name: function_ea1bb317
	Namespace: namespace_c46f5728
	Checksum: 0xD24CAE61
	Offset: 0x5C0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_ea1bb317()
{
	if(!isdefined(level.var_8f4e9ece))
	{
		return;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_8f4e9ece.size; var_c957f6b6++)
	{
		[[level.var_8f4e9ece[var_c957f6b6]]]();
	}
}

/*
	Name: function_4ad7cd92
	Namespace: namespace_c46f5728
	Checksum: 0xCA094853
	Offset: 0x620
	Size: 0x51
	Parameters: 3
	Flags: None
*/
function function_4ad7cd92(var_9368ba0c, var_5b9badc2, var_37b8b994)
{
	if(var_9368ba0c > var_37b8b994)
	{
		return var_37b8b994;
	}
	else if(var_9368ba0c < var_5b9badc2)
	{
		return var_5b9badc2;
	}
	else
	{
		return var_9368ba0c;
	}
}

/*
	Name: function_36f2a476
	Namespace: namespace_c46f5728
	Checksum: 0xA739726B
	Offset: 0x680
	Size: 0x2C1
	Parameters: 0
	Flags: None
*/
function function_36f2a476()
{
	/#
		var_fa9ec3b3 = level.var_1d893cda["Dev Block strings are not supported"].size;
		if(level.var_de12b72f)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_fa9ec3b3 - 1; var_c957f6b6++)
			{
				if(level.var_1d893cda["Dev Block strings are not supported"][var_c957f6b6].var_f1242439 < level.var_1d893cda["Dev Block strings are not supported"][var_c957f6b6 + 1].var_f1242439)
				{
					function_895b00("Dev Block strings are not supported");
					for(var_c957f6b6 = 0; var_c957f6b6 < var_fa9ec3b3; var_c957f6b6++)
					{
						var_5dc5e20a = level.var_1d893cda["Dev Block strings are not supported"][var_c957f6b6];
						function_895b00("Dev Block strings are not supported" + var_c957f6b6 + "Dev Block strings are not supported" + var_5dc5e20a.var_4be20d44 + "Dev Block strings are not supported" + var_5dc5e20a.var_f1242439);
					}
					/#
						namespace_33b293fd::function_94739542("Dev Block strings are not supported");
					#/
					break;
				}
			}
			break;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_fa9ec3b3 - 1; var_c957f6b6++)
		{
			if(level.var_1d893cda["Dev Block strings are not supported"][var_c957f6b6].var_246bf1cb < level.var_1d893cda["Dev Block strings are not supported"][var_c957f6b6 + 1].var_246bf1cb)
			{
				function_895b00("Dev Block strings are not supported");
				for(var_c957f6b6 = 0; var_c957f6b6 < var_fa9ec3b3; var_c957f6b6++)
				{
					var_5dc5e20a = level.var_1d893cda["Dev Block strings are not supported"][var_c957f6b6];
					function_895b00("Dev Block strings are not supported" + var_c957f6b6 + "Dev Block strings are not supported" + var_5dc5e20a.var_4be20d44 + "Dev Block strings are not supported" + var_5dc5e20a.var_246bf1cb);
				}
				/#
					namespace_33b293fd::function_94739542("Dev Block strings are not supported");
				#/
				break;
			}
		}
	#/
}

/*
	Name: function_d0b6aba3
	Namespace: namespace_c46f5728
	Checksum: 0xBC8ADE09
	Offset: 0x950
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_d0b6aba3(var_ad66d52c)
{
	if(level.var_52bf79c4 || function_75e46361())
	{
		/#
			namespace_33b293fd::function_a7ee953(!isdefined(var_ad66d52c));
		#/
		return 1;
	}
	return isdefined(var_ad66d52c) && var_ad66d52c != "";
}

/*
	Name: function_8267b719
	Namespace: namespace_c46f5728
	Checksum: 0x2F5AFE56
	Offset: 0x9C0
	Size: 0x11F
	Parameters: 1
	Flags: None
*/
function function_8267b719(var_82146f31)
{
	self endon("hash_128f8789");
	self endon("hash_60b6c671");
	level endon("hash_c8ab51de");
	var_60db70fa = level.var_8cf38e64;
	while(1)
	{
		self function_921a1574(var_82146f31);
		if(var_60db70fa > 10)
		{
			var_60db70fa = var_60db70fa - 1;
			wait(1);
		}
		else if(var_60db70fa > 4)
		{
			var_60db70fa = var_60db70fa - 0.5;
			wait(0.5);
		}
		else if(var_60db70fa > 1)
		{
			var_60db70fa = var_60db70fa - 0.4;
			wait(0.4);
		}
		else
		{
			var_60db70fa = var_60db70fa - 0.3;
			wait(0.3);
		}
		namespace_6c1d04bd::function_8ef8da7f();
	}
}

/*
	Name: function_8c1bbb73
	Namespace: namespace_c46f5728
	Checksum: 0xF50CAE25
	Offset: 0xAE8
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_8c1bbb73()
{
	self notify("hash_60b6c671");
}

/*
	Name: function_97cbb4c6
	Namespace: namespace_c46f5728
	Checksum: 0xB7EC2CA0
	Offset: 0xB08
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_97cbb4c6()
{
	level endon("hash_c8ab51de");
	level waittill("hash_5f6f3990");
	level.var_a4ad846c = GetTime();
	level.var_7f9f5cee = 0;
	if(isdefined(game["roundMillisecondsAlreadyPassed"]))
	{
		level.var_a4ad846c = level.var_a4ad846c - game["roundMillisecondsAlreadyPassed"];
		game["roundMillisecondsAlreadyPassed"] = undefined;
	}
	var_f1d2da51 = GetTime();
	while(game["state"] == "playing")
	{
		if(!level.var_c8a2359f)
		{
			game["timepassed"] = game["timepassed"] + GetTime() - var_f1d2da51;
		}
		var_f1d2da51 = GetTime();
		wait(1);
	}
}

/*
	Name: function_3c9bd810
	Namespace: namespace_c46f5728
	Checksum: 0xA6A05CAB
	Offset: 0xBE8
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_3c9bd810()
{
	if(!isdefined(level.var_a4ad846c))
	{
		return 0;
	}
	if(level.var_c8a2359f)
	{
		return level.var_77385bc5 - level.var_a4ad846c - level.var_7f9f5cee;
	}
	else
	{
		return GetTime() - level.var_a4ad846c - level.var_7f9f5cee;
	}
}

/*
	Name: function_568bba6c
	Namespace: namespace_c46f5728
	Checksum: 0xA6D0CED4
	Offset: 0xC48
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_568bba6c()
{
	if(level.var_c8a2359f)
	{
		return;
	}
	level.var_c8a2359f = 1;
	level.var_77385bc5 = GetTime();
}

/*
	Name: function_bbe04eff
	Namespace: namespace_c46f5728
	Checksum: 0xEC9776EF
	Offset: 0xC78
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_bbe04eff()
{
	if(!level.var_c8a2359f)
	{
		return;
	}
	level.var_c8a2359f = 0;
	level.var_7f9f5cee = level.var_7f9f5cee + GetTime() - level.var_77385bc5;
}

/*
	Name: function_843ad29d
	Namespace: namespace_c46f5728
	Checksum: 0x457E681B
	Offset: 0xCB8
	Size: 0x9D
	Parameters: 1
	Flags: None
*/
function function_843ad29d(var_3e94206a)
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self) || isdefined(var_3e94206a));
	#/
	var_e300e83a = level.var_e300e83a;
	if(function_65f192a6(self))
	{
		return var_e300e83a - namespace_e32b5089::function_acc5da4b(self);
	}
	else
	{
		return var_e300e83a - function_a7dca17e(var_3e94206a);
	}
}

/*
	Name: function_d696e595
	Namespace: namespace_c46f5728
	Checksum: 0xEBE4D54D
	Offset: 0xD60
	Size: 0x69
	Parameters: 1
	Flags: None
*/
function function_d696e595(var_3e94206a)
{
	if(level.var_f2ba2abd && isdefined(game["lastroundscore"][var_3e94206a]))
	{
		return function_a7dca17e(var_3e94206a) - game["lastroundscore"][var_3e94206a];
	}
	return function_a7dca17e(var_3e94206a);
}

/*
	Name: function_de5f2318
	Namespace: namespace_c46f5728
	Checksum: 0x7BC6649B
	Offset: 0xDD8
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_de5f2318(var_3e94206a)
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self) || isdefined(var_3e94206a));
	#/
	var_e300e83a = level.var_e300e83a;
	var_6d251637 = level.var_6d251637;
	var_ececa8ec = function_3c9bd810() / 60000 + 0.0001;
	if(function_65f192a6(self))
	{
		return namespace_e32b5089::function_acc5da4b(self) / var_ececa8ec;
	}
	else
	{
		return function_d696e595(var_3e94206a) / var_ececa8ec;
	}
}

/*
	Name: function_f5639177
	Namespace: namespace_c46f5728
	Checksum: 0x9013EC7
	Offset: 0xEC8
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_f5639177(var_3e94206a)
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self) || isdefined(var_3e94206a));
	#/
	var_444aedc2 = self function_de5f2318(var_3e94206a);
	var_94ee2327 = self function_843ad29d(var_3e94206a);
	if(!var_444aedc2)
	{
		return 999999;
	}
	return var_94ee2327 / var_444aedc2;
}

/*
	Name: function_7f3104cc
	Namespace: namespace_c46f5728
	Checksum: 0x84ECB8A4
	Offset: 0xF78
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_7f3104cc()
{
	self endon("hash_643a7daf");
	while(1)
	{
		wait(0.1);
		self function_e2af603e("damage_heavy");
	}
}

/*
	Name: function_16a37f28
	Namespace: namespace_c46f5728
	Checksum: 0x7CC6DD55
	Offset: 0xFC0
	Size: 0x21
	Parameters: 2
	Flags: None
*/
function function_16a37f28(var_60db70fa, var_f8c88ba3)
{
	self endon(var_f8c88ba3);
	wait(var_60db70fa);
}

/*
	Name: function_56ca4f95
	Namespace: namespace_c46f5728
	Checksum: 0x7012A40F
	Offset: 0xFF0
	Size: 0x57
	Parameters: 2
	Flags: None
*/
function function_56ca4f95(var_60db70fa, var_f8c88ba3)
{
	self endon(var_f8c88ba3);
	wait(var_60db70fa);
	while(isdefined(level.var_88e7b1fd))
	{
		/#
			namespace_33b293fd::function_a7ee953(level.var_88e7b1fd);
		#/
		wait(0.25);
	}
}

/*
	Name: function_7874f1ab
	Namespace: namespace_c46f5728
	Checksum: 0xB2365B75
	Offset: 0x1050
	Size: 0x95
	Parameters: 4
	Flags: None
*/
function function_7874f1ab(var_dfcc01fd, var_a77ad8eb, var_ba36487d, var_51e6a548)
{
	if(var_a77ad8eb != "head" && var_a77ad8eb != "helmet")
	{
		return 0;
	}
	switch(var_ba36487d)
	{
		case "MOD_MELEE":
		case "MOD_MELEE_ASSASSINATE":
		case "MOD_MELEE_WEAPON_BUTT":
		{
			return 0;
		}
		case "MOD_IMPACT":
		{
			if(var_dfcc01fd != level.var_2febfe79)
			{
				return 0;
			}
		}
	}
	return 1;
}

/*
	Name: function_aa585f9
	Namespace: namespace_c46f5728
	Checksum: 0x7C895ED6
	Offset: 0x10F0
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_aa585f9(var_a77ad8eb)
{
	switch(var_a77ad8eb)
	{
		case "head":
		case "helmet":
		case "neck":
		{
			return 60;
		}
		case "gun":
		case "left_arm_lower":
		case "left_arm_upper":
		case "left_hand":
		case "right_arm_lower":
		case "right_arm_upper":
		case "right_hand":
		case "torso_upper":
		{
			return 48;
		}
		case "torso_lower":
		{
			return 40;
		}
		case "left_leg_upper":
		case "right_leg_upper":
		{
			return 32;
		}
		case "left_leg_lower":
		case "right_leg_lower":
		{
			return 10;
		}
		case "left_foot":
		case "right_foot":
		{
			return 5;
		}
	}
	return 48;
}

/*
	Name: function_93b7208c
	Namespace: namespace_c46f5728
	Checksum: 0x8DEAE826
	Offset: 0x11D0
	Size: 0x65
	Parameters: 2
	Flags: None
*/
function function_93b7208c(var_34fb19f, var_3fc1574)
{
	/#
		for(var_c957f6b6 = 0; var_c957f6b6 < 50; var_c957f6b6++)
		{
			function_4e418837(var_34fb19f, var_3fc1574);
			wait(0.05);
		}
	#/
}

/*
	Name: function_7067df2b
	Namespace: namespace_c46f5728
	Checksum: 0x68AB2C73
	Offset: 0x1240
	Size: 0x59
	Parameters: 2
	Flags: None
*/
function function_7067df2b(var_aa10fce8, var_26708f40)
{
	for(var_5e76f0af = 0; var_5e76f0af < var_26708f40.size; var_5e76f0af++)
	{
		if(var_aa10fce8 == var_26708f40[var_5e76f0af])
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_b59d6fa4
	Namespace: namespace_c46f5728
	Checksum: 0x32D3919
	Offset: 0x12A8
	Size: 0x61
	Parameters: 1
	Flags: None
*/
function function_b59d6fa4(var_be260a2e)
{
	var_9a8af909 = GetTime();
	var_a6c0f512 = GetTime() - var_9a8af909 / 1000;
	if(var_a6c0f512 < var_be260a2e)
	{
		wait(var_be260a2e - var_a6c0f512);
		return var_be260a2e;
	}
	else
	{
		return var_a6c0f512;
	}
}

/*
	Name: function_ca399f3
	Namespace: namespace_c46f5728
	Checksum: 0x4B2E0EC1
	Offset: 0x1318
	Size: 0x10B
	Parameters: 2
	Flags: None
*/
function function_ca399f3(var_ce8a162d, var_f49bab78)
{
	var_15aa99eb = var_ce8a162d;
	if(isdefined(var_f49bab78))
	{
		var_15aa99eb = var_15aa99eb + ", win: " + var_f49bab78;
	}
	foreach(var_3e94206a in level.var_e7a38025)
	{
		var_15aa99eb = var_15aa99eb + ", " + var_3e94206a + ": " + game["teamScores"][var_3e94206a];
	}
	/#
		function_3bc5b442(var_15aa99eb);
	#/
}

